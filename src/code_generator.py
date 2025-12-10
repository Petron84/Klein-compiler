# code_generator.py
import sys

# ---------------- Stack Frame Model ----------------
class StackFrame:
    def __init__(self, name, top, num_params, temp_slots=0):
        self.name = name           # function name
        self.top = top             # Base of frame in DMEM (return address slot)
        self.num_params = num_params
        self.temp_slots = temp_slots
        # memory location of return value: [top + 1 .. top + num_params] are params,
        # so return slot is top + 1 + num_params
        self.return_slot = self.top + 1 + self.num_params

    def frame_size(self):
        # layout: [0] return addr, [1..P] params, [P+1] return value, [P+2 .. P+1+T] temps
        return self.num_params + 2 + self.temp_slots

# ---------------- Code Generator ----------------
class Generator:
    def __init__(self, tree, table):
        # AST: list of function nodes; main is assumed present
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Labels & placeholders
        self.label_id = 0
        self.placeholders = {}
        self.line_counter = 0

        # Instruction memory (IMEM)
        self.IMEM = []

        # DMEM bookkeeping (compile-time next-free index)
        # We'll start compile-time DMEM at 0 and allocate per-frame as we see functions.
        self.DMEM = 0

        # Stack frames (for compile-time notes)
        self.stack_frames = []

        # Temp management
        self.temp_slots = {}
        self._cur_spill = 0

        # Register convention commentary is unchanged

    # -------------- Public API ----------------
    def generate(self):
        # 1) Precompute temp slots (spill-depth) per function and create frame placeholders
        functions = self.load_functions_and_compute_temps()
        # 2) Runtime initialization (creates main frame)
        self.initialize()
        # 3) Emit function bodies (main then others)
        self.generate_imem(functions)
        # 4) Fill label placeholders
        self.fill_placeholders()
        return self.IMEM

    # -------------- Runtime Initialization ----------------
    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)

        # Main parameters / temps
        num_params = self.symbol_table['main'].parameters[0]
        T_main = self.temp_slots.get('main', 0)

        # Allocate main frame at current DMEM (usually 0)
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        # Runtime: point R5 to main frame base
        self.write(f"LDC 5, {main_frame.top}(0)", "Set DMEM pointer (R5) to main stack frame base")
        self.write("ADD 4, 5, 0", "Set R4 := R5 (caller base)")

        # Load CLI args into main frame parameters 1..P
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f"Load CLI arg {i} into R2")
            self.write(f"ST 2, {i}(5)", f"Store arg {i} into main frame parameter slot")

        # Install a return address for main (so return goes to printed HALT sequence)
        self.write("LDA 6, 2(7)", "Calculate return address (PC + 2)")
        self.write("ST 6, 0(5)", "Store return address in main frame")

        # Advance compile-time free pointer after main
        self.DMEM = main_frame.top + main_frame.frame_size()

        # Jump to main body
        self.write("LDA 7, @main(0)", "Branch to main function")

        # When main returns: print/return and halt
        self.write("OUT 1, 0, 0", "Return/print result from main in R1")
        self.write("HALT 0, 0, 0", "Terminate program")

        # Built-in PRINT function
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        # print: expects value in R1
        self.write("OUT 1, 0, 0", "Hardcoded print: output R1")
        self.write("LD 6, 0(5)", "Load return address from current frame")
        self.write("LDA 7, 0(6)", "Jump back to caller")

    # -------------- Helpers ----------------
    def create_frame(self, f_name):
        num_params = self.symbol_table[f_name].parameters[0]
        temp_slots = self.temp_slots.get(f_name, 0)
        top = self.DMEM
        self.stack_frames.append(StackFrame(f_name, top, num_params, temp_slots))
        # Reserve compile-time DMEM for this frame
        self.DMEM += num_params + 2 + temp_slots

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
            return max(self.compute_spill_depth(left), 1 + self.compute_spill_depth(right))

        elif ntype in ("INTEGER-LITERAL", "BOOLEAN-LITERAL", "IDENTIFIER"):
            return 0

        elif ntype == "UNARY-EXPRESSION":
            return self.compute_spill_depth(kids[0])

        elif ntype == "FUNCTION-CALL":
            args = kids[1].children if len(kids) > 1 and kids[1] is not None else []
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
        # ensure built-in 'print' has zero temp slots
        self.temp_slots['print'] = 0

        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body

            # Compute max spill depth T over all top-level expressions in this function
            T = 0
            for exp in f_body:
                T = max(T, self.compute_spill_depth(exp))
            self.temp_slots[f_name] = T

            # Placeholder label for function entry
            self.placeholders["@" + f_name] = -1

        return f_list

    # -------------- Code Emission ----------------
    def generate_imem(self, functions):
        # ----- MAIN -----
        main_body = functions['main']
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        # Reset spill counter for this function
        self._cur_spill = 0

        # main frame should already be created in initialize; ensure top matches
        # (pop and push not needed; just use current frame metadata)
        for exp in main_body:
            self.instruction_rules(exp, "main")

        # Epilogue for main: move return value from frame into R1 and return
        main_frame = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        offset = main_params + 1
        self.write(f"LD 1, {offset}(5)", "Load main return value into R1")
        self.write("LD 6, 0(5)", "Load main return address")
        self.write("LDA 7, 0(6)", "Return from main")

        # Other functions
        del functions['main']
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f'@{f}'] = self.line_counter

            # Reset spill counter per function
            self._cur_spill = 0

            # Create frame for this function (compile-time allocation)
            self.create_frame(f)
            num_params = self.symbol_table[f].parameters[0]
            offset = num_params + 1

            for exp in body:
                # callee=True because this is the function body (we are generating for the callee)
                self.instruction_rules(exp, f, callee=True)

            # Function epilogue: store result and return
            self.write(f"ST 1, {offset}(5)", "Store function result into frame return slot")
            self.write("LD 6, 0(5)", "Load return address")
            self.write("LDA 7, 0(6)", "Return to caller")
            self.stack_frames.pop()

    def fill_placeholders(self):
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

                # Parameter counts (print handled as built-in)
                callee_params = self.symbol_table[f_name].parameters[0] if f_name in self.symbol_table else (1 if f_name == "print" else 0)
                caller_params = self.symbol_table[curr_function].parameters[0]

                # Sizes include temp slots for frames
                caller_size = caller_params + 2 + self.temp_slots.get(curr_function, 0)
                callee_size = callee_params + 2 + self.temp_slots.get(f_name, 0)

                if f_name == "print":
                    # Evaluate single argument -> R1 (calculated in caller frame)
                    self.instruction_rules(exp_children[1], curr_function, callee=True)

                    # Compute callee base relative to caller using caller_size (future callee base)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base (caller_size)")
                    self.write(f"LDA 6, {temp_label}(0)", "Return address")
                    self.write("ST 6, 0(4)", "Store return address in callee frame")
                    self.write("ADD 5, 4, 0", "Push callee frame (R5 := callee base)")
                    self.write("LDA 7, @print(0)", "Call built-in print")

                    # Return label and pop
                    self.placeholders[temp_label] = self.line_counter
                    self.write(f"LDC 2, {caller_size}(0)", "Caller frame size")
                    self.write("SUB 5, 5, 2", "Pop back to caller")

                else:
                    # 1) Evaluate arguments and store into future callee frame (still in caller)
                    args = exp_children[1].children
                    for i, arg in enumerate(args):
                        # Evaluate argument i -> R1 (nested calls may clobber R4)
                        self.instruction_rules(arg, f_name, callee=True)

                        # Use caller_size to compute where the callee frame will be placed
                        self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base using caller_size")
                        self.write(f"ST 1, {i+1}(4)", f"Store argument {i} into callee's param slot (future frame)")

                    # 2) Install return address — recompute base using caller_size (future callee base)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base (caller_size)")
                    self.write(f"LDA 6, {temp_label}(0)", "Return address")
                    self.write("ST 6, 0(4)", "Store return in callee frame")

                    # 3) Push callee frame (now R5 := future callee base) and jump to callee
                    self.write("ADD 5, 4, 0", "Push callee frame (FP := callee base)")
                    self.write(f"LDA 7, @{f_name}(0)", f"Call {f_name}")

                    # 4) Upon return: load callee return value into R1 and pop callee frame
                    self.placeholders[temp_label] = self.line_counter
                    return_slot = callee_params + 1
                    self.write(f"LD 1, {return_slot}(5)", "Load callee result into R1")

                    # Use callee_size to pop FP
                    self.write(f"LDC 2, {callee_size}(0)", "Callee frame size")
                    self.write("SUB 5, 5, 2", "Pop callee frame")

                    # 5) If producing the caller’s own value, store it into caller return slot
                    if not callee:
                        caller_return = caller_params + 1
                        self.write(f"ST 1, {caller_return}(5)", "Store result into caller’s frame")

            # ---------- LITERALS ----------
            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", "Load integer-literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store result into current frame's return slot")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", "Load boolean-literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store result into current frame's return slot")

            # ---------- IDENTIFIER ----------
            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD 1, {offset}(5)", f"Load parameter '{exp_value}' into R1")
                        break
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store result into current frame's return slot")

            # ---------- UNARY ----------
            case "UNARY-EXPRESSION":
                inner = exp_children[0]
                self.instruction_rules(inner, curr_function, callee=True)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", "Negate value in R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", "Load 1 into R2")
                    self.write("SUB 1, 2, 1", "Logical NOT: 1 - R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store result into current frame's return slot")

            # ---------- BINARY ----------
            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                curr_params = self.symbol_table[curr_function].parameters[0]

                # Evaluate left → R1
                self.instruction_rules(left_exp, curr_function, callee=True)

                # Spill left into current frame's temp slot at current depth
                spill_slot = curr_params + 2 + self._cur_spill  # P+2 .. P+1+T
                self.write(f"ST 1, {spill_slot}(5)", f"Spill left operand at depth {self._cur_spill}")

                # Increase depth while computing right
                self._cur_spill += 1
                # Evaluate right → R1
                self.instruction_rules(right_exp, curr_function, callee=True)
                # Decrease depth and restore left → R2
                self._cur_spill -= 1
                spill_slot = curr_params + 2 + self._cur_spill
                self.write(f"LD 2, {spill_slot}(5)", f"Restore left operand from depth {self._cur_spill}")

                # Apply operator: result stays in R1 (using R2 as left)
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
                        self.write("SUB 1, 2, 1", "left - right for equality check")
                        self.write("JEQ 1, 2(7)", "If R1 == 0, jump to true")
                        self.write("LDC 1, 0(0)", "false")
                        self.write("LDA 7, 1(7)", "skip setting true")
                        self.write("LDC 1, 1(0)", "true")
                    case "<":
                        self.write("SUB 1, 2, 1", "left - right for less-than check")
                        self.write("JLT 1, 2(7)", "If R1 < 0, jump to true")
                        self.write("LDC 1, 0(0)", "false")
                        self.write("LDA 7, 1(7)", "skip setting true")
                        self.write("LDC 1, 1(0)", "true")

                # Store final result if producing the caller’s value
                if not callee:
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", "Store result into current frame's return slot")

            # ---------- IF ----------
            case "IF-EXPRESSION":
                self.write("----IF-BLOCK----", header=True)
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True)

                temp_label_else = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", "If condition is false, jump to ELSE")

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

