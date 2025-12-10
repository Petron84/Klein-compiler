# code_generator.py
import sys

# ---------------- Stack Frame Model ----------------
class StackFrame:
    def __init__(self, name, top, num_params, temp_slots=0):
        self.name = name           # function name
        self.top = top             # Base of frame in DMEM (return address slot index)
        self.num_params = num_params
        self.temp_slots = temp_slots
        # Return value slot index (absolute DMEM index at compile time)
        self.return_slot = self.top + 1 + self.num_params

    def frame_size(self):
        # layout size = [0] return addr + [1..P] params + [P+1] return slot + [P+2..P+1+T] temps
        return self.num_params + 2 + self.temp_slots

# ---------------- Code Generator ----------------
class Generator:
    def __init__(self, tree, table):
        # AST: last node children contain function definitions (same structure you used before)
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Labels & placeholders
        self.label_id = 0
        self.placeholders = {}
        self.line_counter = 0

        # Instruction memory (IMEM)
        self.IMEM = []

        # DMEM bookkeeping (compile-time next-free index)
        # We'll allocate frames sequentially as we compute temp_slots
        self.DMEM = 0

        # Stack frames (compile-time records)
        self.stack_frames = []

        # Temp analysis and runtime spill tracking
        self.temp_slots = {}
        self._cur_spill = 0

        # Register convention (for reference):
        # R0: constant zero register (value 0)
        # R1: expression/result register (also return value)
        # R2, R3: temporaries
        # R4: transient "target base" used when computing a future frame base (caller or callee)
        # R5: runtime DMEM frame base pointer (current frame base)
        # R6: temporary return address register
        # R7: program counter (for LDA jumps)

    # -------------- Public API ----------------
    def generate(self):
        # 1) Precompute temp slots and placeholders for all functions
        functions = self.load_functions_and_compute_temps()

        # 2) Runtime initialization & allocate main frame region
        self.initialize()

        # 3) Emit IMEM for functions (main then others)
        self.generate_imem(functions)

        # 4) Resolve placeholders (labels)
        self.fill_placeholders()

        return self.IMEM

    # -------------- Runtime Initialization ----------------
    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)

        # Main function parameter count & temp slots
        num_params = self.symbol_table['main'].parameters[0]
        T_main = self.temp_slots.get('main', 0)

        # Allocate main frame at current DMEM (usually 0)
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        # Runtime: set R5 to main frame base
        self.write(f"LDC 5, {main_frame.top}(0)", "Set DMEM pointer (R5) to main stack frame base")
        self.write("ADD 4, 5, 0", "Set R4 := R5 (alias)")

        # Load CLI args into main frame parameters 1..P (LD 2, i(0) reads from input)
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f"Load CLI arg {i} into R2")
            self.write(f"ST 2, {i}(5)", f"Store arg {i} into main frame parameter slot")

        # Install a return address for main (so return goes to the OUT/HALT sequence)
        self.write("LDA 6, 2(7)", "Calculate return address (PC + 2)")
        self.write("ST 6, 0(5)", "Store return address in main frame")

        # Advance compile-time DMEM pointer after main allocation
        self.DMEM = main_frame.top + main_frame.frame_size()

        # Jump to main body
        self.write("LDA 7, @main(0)", "Branch to main function")

        # When main returns: print/return and halt
        self.write("OUT 1, 0, 0", "Return/print result from main in R1")
        self.write("HALT 0, 0, 0", "Terminate program")

        # Built-in PRINT function (address placeholder)
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", "Built-in print: output R1")
        self.write("LD 6, 0(5)", "Load return address from current frame")
        self.write("LDA 7, 0(6)", "Return to caller")

    # -------------- Helpers ----------------
    def create_frame(self, f_name):
        num_params = self.symbol_table[f_name].parameters[0]
        temps = self.temp_slots.get(f_name, 0)
        top = self.DMEM
        self.stack_frames.append(StackFrame(f_name, top, num_params, temps))
        # Reserve compile-time DMEM for this frame
        self.DMEM += num_params + 2 + temps

    def write(self, instruction, note=None, header=False):
        if header:
            self.IMEM.append(f"{instruction}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} ; {note}")
            self.line_counter += 1

    # -------------- Temp Slots / Spill Depth Analysis ----------------
    def compute_spill_depth(self, node):
        if node is None:
            return 0
        ntype = node.type
        kids = getattr(node, "children", []) or []

        if ntype == "BINARY-EXPRESSION":
            left = kids[0]
            right = kids[1]
            # left evaluated then right overlaps with left spill
            return max(self.compute_spill_depth(left), 1 + self.compute_spill_depth(right))

        elif ntype in ("INTEGER-LITERAL", "BOOLEAN-LITERAL", "IDENTIFIER"):
            return 0

        elif ntype == "UNARY-EXPRESSION":
            return self.compute_spill_depth(kids[0])

        elif ntype == "FUNCTION-CALL":
            args = kids[1].children if len(kids) > 1 and kids[1] is not None else []
            # evaluate args sequentially; max of their spills
            return max((self.compute_spill_depth(a) for a in args), default=0)

        elif ntype == "IF-EXPRESSION":
            cond, then_exp, else_exp = kids
            return max(self.compute_spill_depth(cond),
                       self.compute_spill_depth(then_exp),
                       self.compute_spill_depth(else_exp))

        else:
            return max((self.compute_spill_depth(c) for c in kids), default=0)

    def load_functions_and_compute_temps(self):
        f_list = {}
        # built-in print uses no temps
        self.temp_slots['print'] = 0

        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body

            # compute max spill-depth required in function f
            T = 0
            for exp in f_body:
                T = max(T, self.compute_spill_depth(exp))
            self.temp_slots[f_name] = T

            # placeholder for function entry label
            self.placeholders["@" + f_name] = -1

        return f_list

    # -------------- Code Emission ----------------
    def generate_imem(self, functions):
        # ----- MAIN -----
        main_body = functions['main']
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        # reset spill counter
        self._cur_spill = 0

        # generate main body with curr_function = 'main'
        for exp in main_body:
            self.instruction_rules(exp, "main")

        # main epilogue: load return value into R1 and return (to OUT/HALT)
        main_frame = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        offset = main_params + 1
        self.write(f"LD 1, {offset}(5)", "Load main return value into R1")
        self.write("LD 6, 0(5)", "Load main return address")
        self.write("LDA 7, 0(6)", "Return from main")

        # Emit other functions: ensure curr_function passed is the function name
        del functions['main']
        for f_name, body in functions.items():
            # create frame for this function compile-time before emitting its body
            self.create_frame(f_name)

            self.write(f"------{f_name.upper()}------", header=True)
            self.placeholders[f'@{f_name}'] = self.line_counter

            # reset spill counter per function
            self._cur_spill = 0

            # generate each expression in the function body,
            # passing curr_function = f_name so recursion detection works
            for exp in body:
                self.instruction_rules(exp, f_name, callee=True)

            # function epilogue: store result and return to caller
            num_params = self.symbol_table[f_name].parameters[0]
            offset = num_params + 1
            self.write(f"ST 1, {offset}(5)", "Store function result into frame return slot")
            self.write("LD 6, 0(5)", "Load return address")
            self.write("LDA 7, 0(6)", "Return to caller")

            # pop compile-time frame record
            self.stack_frames.pop()

    def fill_placeholders(self):
        # Replace any placeholder tokens like @name or !labels with numeric addresses
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    # -------------- Instruction Rules ----------------
    def instruction_rules(self, body, curr_function, callee=False):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            # ---------- FUNCTION CALL ----------
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # parameter counts
                callee_params = self.symbol_table[f_name].parameters[0] if f_name in self.symbol_table else (1 if f_name == "print" else 0)
                caller_params = self.symbol_table[curr_function].parameters[0]

                # frame sizes (including temps)
                caller_size = caller_params + 2 + self.temp_slots.get(curr_function, 0)
                callee_size = callee_params + 2 + self.temp_slots.get(f_name, 0)

                # detect whether this call occurs inside the body of the same function (recursive)
                is_recursive_call = (f_name == curr_function)

                if f_name == "print":
                    # evaluate the single arg -> R1 (we are still in caller frame)
                    self.instruction_rules(exp_children[1], curr_function, callee=True)

                    # Use caller_size (we're still in caller) to compute future callee base
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base (caller_size)")
                    self.write(f"LDA 6, {temp_label}(0)", "Return address")
                    self.write("ST 6, 0(4)", "Store return address in callee frame")
                    self.write("ADD 5, 4, 0", "Push callee frame (R5 := callee base)")
                    self.write("LDA 7, @print(0)", "Call built-in print")

                    # return label: pop back
                    self.placeholders[temp_label] = self.line_counter
                    self.write(f"LDC 2, {caller_size}(0)", "Caller frame size")
                    self.write("SUB 5, 5, 2", "Pop back to caller")

                else:
                    # Evaluate arguments sequentially and store into future callee frame slots.
                    # IMPORTANT: during argument evaluation we are in the caller frame (R5 points to caller).
                    args = exp_children[1].children
                    for i, arg in enumerate(args):
                        # compute argument value into R1
                        self.instruction_rules(arg, curr_function, callee=True)

                        # compute the *future* callee base relative to current frame;
                        # if we are inside the callee body (recursive call), the current R5 is the callee's base,
                        # so future base should be computed with callee_size; otherwise use caller_size.
                        # Because curr_function is set properly to the function being emitted, we can decide:
                        if is_recursive_call:
                            # we are inside f and calling f -> future callee base = R5 + callee_size
                            self.write(f"LDA 4, {callee_size}(5)", "Compute future callee base (callee_size) for recursive call")
                        else:
                            # normal call from caller frame -> future callee base = R5 + caller_size
                            self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base (caller_size)")

                        # store the evaluated argument into the callee's parameter slot (future frame)
                        self.write(f"ST 1, {i+1}(4)", f"Store argument {i} into callee's param slot (future frame)")

                    # Install return address into future callee frame (same base decision)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    if is_recursive_call:
                        self.write(f"LDA 4, {callee_size}(5)", "Compute future callee base (callee_size) for recursive call")
                    else:
                        self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base (caller_size)")
                    self.write(f"LDA 6, {temp_label}(0)", "Return address")
                    self.write("ST 6, 0(4)", "Store return address in callee frame")

                    # Push callee frame: R5 := future base
                    self.write("ADD 5, 4, 0", "Push callee frame (FP := callee base)")

                    # Jump to callee
                    self.write(f"LDA 7, @{f_name}(0)", f"Call {f_name}")

                    # On return: placeholder for return address; load callee return value into R1
                    self.placeholders[temp_label] = self.line_counter
                    return_slot = callee_params + 1
                    self.write(f"LD 1, {return_slot}(5)", "Load callee result into R1")

                    # Now pop callee frame: use callee_size because we are currently in callee frame after return
                    self.write(f"LDC 2, {callee_size}(0)", "Callee frame size")
                    self.write("SUB 5, 5, 2", "Pop callee frame (back to caller)")

                    # Store result into caller's return slot if needed
                    if not callee:
                        caller_return = caller_params + 1
                        self.write(f"ST 1, {caller_return}(5)", "Store result into caller's frame return slot")

            # ---------- LITERALS ----------
            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", "Load integer literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store literal result into current frame return slot")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", "Load boolean literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store boolean into return slot")

            # ---------- IDENTIFIER ----------
            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                # params is (count, [ (name,type), ... ])
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD 1, {offset}(5)", f"Load parameter '{exp_value}' into R1")
                        break
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store identifier result into return slot")

            # ---------- UNARY ----------
            case "UNARY-EXPRESSION":
                inner = exp_children[0]
                self.instruction_rules(inner, curr_function, callee=True)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", "Negate R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", "Load 1 into R2")
                    self.write("SUB 1, 2, 1", "Logical NOT: 1 - R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store unary result into return slot")

            # ---------- BINARY ----------
            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                curr_params = self.symbol_table[curr_function].parameters[0]

                # Evaluate left -> R1
                self.instruction_rules(left_exp, curr_function, callee=True)

                # Spill left into current frame's temp slot at current depth
                spill_slot = curr_params + 2 + self._cur_spill
                self.write(f"ST 1, {spill_slot}(5)", f"Spill left operand at depth {self._cur_spill}")

                # Increase depth for evaluating right
                self._cur_spill += 1
                # Evaluate right -> R1
                self.instruction_rules(right_exp, curr_function, callee=True)
                # Restore left into R2
                self._cur_spill -= 1
                spill_slot = curr_params + 2 + self._cur_spill
                self.write(f"LD 2, {spill_slot}(5)", f"Restore left operand from depth {self._cur_spill}")

                # Apply operator (left in R2, right in R1); result in R1
                match exp_value:
                    case "+":
                        self.write("ADD 1, 2, 1", "R1 = left + right")
                    case "-":
                        self.write("SUB 1, 2, 1", "R1 = left - right")
                    case "*":
                        self.write("MUL 1, 2, 1", "R1 = left * right")
                    case "/":
                        self.write("DIV 1, 2, 1", "R1 = left / right")
                    case "and":
                        self.write("MUL 1, 2, 1", "R1 = left AND right")
                    case "or":
                        self.write("ADD 1, 2, 1", "R1 = left OR right")
                    case "=":
                        self.write("SUB 1, 2, 1", "Compute left - right for equality")
                        self.write("JEQ 1, 2(7)", "If zero, jump to true")
                        self.write("LDC 1, 0(0)", "false")
                        self.write("LDA 7, 1(7)", "skip true assignment")
                        self.write("LDC 1, 1(0)", "true")
                    case "<":
                        self.write("SUB 1, 2, 1", "Compute left - right for less-than")
                        self.write("JLT 1, 2(7)", "If < 0, jump to true")
                        self.write("LDC 1, 0(0)", "false")
                        self.write("LDA 7, 1(7)", "skip true assignment")
                        self.write("LDC 1, 1(0)", "true")

                # Store result into caller return slot if needed
                if not callee:
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store binary result into return slot")

            # ---------- IF ----------
            case "IF-EXPRESSION":
                self.write("----IF-BLOCK----", header=True)
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True)

                temp_label_else = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", "If condition false jump to ELSE")

                self.write("----THEN-BLOCK----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)

                temp_label_endif = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", "Skip ELSE block")

                self.write("----ELSE-BLOCK----", header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)
                self.placeholders[temp_label_endif] = self.line_counter

# End of file
