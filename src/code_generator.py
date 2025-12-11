
import sys

# -------------------- Stack Frame Model --------------------
class StackFrame:
    def __init__(self, name, top, num_params):
        self.name = name  # function name
        self.top = top    # Base of frame in DMEM (return address slot)
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1  # memory location of return value (P+1)

# -------------------- Code Generator --------------------
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

        # DMEM bookkeeping (compile-time reference; R5 is runtime pointer)
        self.DMEM = 1

        # Stack frames (for compile-time notes)
        self.stack_frames = []

        # Temp management:
        # self.temp_slots[fname] = T (max simultaneous spills of left operands in this function)
        self.temp_slots = {}

        # Outgoing-argument staging area per function:
        # self.outgoing_args[fname] = A (max number of args of any call inside this function)
        self.outgoing_args = {}

        # Current spill depth while emitting code of a function
        self._cur_spill = 0

        # Register convention:
        # R0: 0
        # R1: expression/result register (also function return value)
        # R2: temp
        # R3: temp
        # R4: transient "target location" (used ONLY to compute callee base)
        # R5: DMEM frame base pointer (current frame base)
        # R6: temporary return address register
        # R7: program counter

        # Frame layout per function f:
        # [0] Return address
        # [1..P] Parameters
        # [P+1] Return value
        # [P+2..P+1+T] Expression temp slots (reserved; T = self.temp_slots[f])
        # [P+2+T .. P+2+T+(A-1)] Outgoing-arg staging area (A = self.outgoing_args[f])

    # -------------------- Public API --------------------
    def generate(self):
        # 1) Precompute temp slots (spill-depth) and outgoing arg area per function
        functions = self.load_functions_and_compute_sizes()

        # 2) Runtime initialization
        self.initialize()

        # 3) Emit function bodies
        self.generate_imem(functions)

        # 4) Fill labels
        self.fill_placeholders()

        return self.IMEM

    # -------------------- Runtime Initialization --------------------
    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)

        # Main function parameters, sizes
        num_params = self.symbol_table['main'].parameters[0]
        T_main = self.temp_slots.get('main', 0)
        A_main = self.outgoing_args.get('main', 0)

        # Compile-time DMEM bookkeeping: set main frame base
        # Base of main frame is current free pointer (self.DMEM).
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        # Runtime: point R5 to main frame base
        self.write(f"LDC 5, {main_frame.top}(0)", "Set DMEM pointer (R5) to main stack frame base")
        self.write("ADD 4, 5, 0", "Set top of caller frame (R4 := R5)")

        # Load CLI args into main frame parameters 1..P
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f"Load CLI arg {i} into R2")
            self.write(f"ST 2, {i}(5)", f"Store arg {i} into main frame parameter slot")

        # Install a return address for main and branch
        self.write("LDA 6, 2(7)", "Calculate return address (PC + 2)")
        self.write("ST 6, 0(5)", "Store return address in main frame")

        # Free space pointer (compile-time record): advance by full main caller size (incl. outgoing area)
        caller_size_main = num_params + 2 + T_main + A_main
        self.DMEM = main_frame.top + caller_size_main

        # Jump to main body
        self.write("LDA 7, @main(0)", "Branch to main function")

        # When main returns: print/return and halt
        self.write("OUT 1, 0, 0", "Return/print result from main in R1")
        self.write("HALT 0, 0, 0", "Terminate program")

        # Built-in PRINT function
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", "Hardcoded print: output R1")
        self.write("LD 6, 0(5)", "Load return address from current frame")
        self.write("LDA 7, 0(6)", "Jump back to caller")

    # -------------------- Helpers --------------------
    def create_frame(self, f_name):
        num_params = self.symbol_table[f_name].parameters[0]
        self.stack_frames.append(StackFrame(f_name, self.DMEM, num_params))

    def write(self, instruction, note=None, header=False):
        if header:
            self.IMEM.append(f"{instruction}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} ; {note}")
            self.line_counter += 1

    # -------------------- Analysis: Spill Depth & Outgoing Args --------------------
    def compute_spill_depth(self, node):
        """Compute simultaneous spill depth required below this node."""
        if node is None:
            return 0
        ntype = node.type
        kids = getattr(node, "children", []) or []

        if ntype == "BINARY-EXPRESSION":
            left = kids[0]
            right = kids[1]
            # Spills inside left do not overlap; current spill + spills inside right do overlap
            return max(self.compute_spill_depth(left), 1 + self.compute_spill_depth(right))
        elif ntype in ("INTEGER-LITERAL", "BOOLEAN-LITERAL", "IDENTIFIER"):
            return 0
        elif ntype == "UNARY-EXPRESSION":
            return self.compute_spill_depth(kids[0])
        elif ntype == "FUNCTION-CALL":
            # Arguments are evaluated sequentially; no overlap among args for spill purposes
            args = kids[1].children if len(kids) > 1 and kids[1] is not None else []
            return max((self.compute_spill_depth(a) for a in args), default=0)
        elif ntype == "IF-EXPRESSION":
            cond, then_exp, else_exp = kids
            return max(self.compute_spill_depth(cond),
                       self.compute_spill_depth(then_exp),
                       self.compute_spill_depth(else_exp))
        else:
            # Generic: maximum of children
            return max((self.compute_spill_depth(c) for c in kids), default=0)

    def compute_outgoing_args(self, node):
        """Compute the maximum number of arguments across all function calls under this node."""
        if node is None:
            return 0
        ntype = node.type
        kids = getattr(node, "children", []) or []

        max_args = 0
        if ntype == "FUNCTION-CALL":
            args = kids[1].children if len(kids) > 1 and kids[1] is not None else []
            max_args = max(max_args, len(args))

        # Recurse into children to capture nested calls
        for c in kids:
            max_args = max(max_args, self.compute_outgoing_args(c))

        return max_args

    def load_functions_and_compute_sizes(self):
        """Collect function bodies and compute per-function spill depth (T) and outgoing-arg area (A)."""
        f_list = {}

        # ensure built-in 'print' has zero temp slots and no outgoing area
        self.temp_slots['print'] = 0
        self.outgoing_args['print'] = 0

        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body

            # Compute max spill depth T over all top-level expressions in this function
            T = 0
            A = 0
            for exp in f_body:
                T = max(T, self.compute_spill_depth(exp))
                A = max(A, self.compute_outgoing_args(exp))
            self.temp_slots[f_name] = T
            self.outgoing_args[f_name] = A

            # Placeholder label for function entry
            self.placeholders["@" + f_name] = -1

        return f_list

    # -------------------- Code Emission --------------------
    def generate_imem(self, functions):
        # ------ MAIN ------
        main_body = functions['main']
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        # Reset spill counter for this function
        self._cur_spill = 0

        for exp in main_body:
            self.instruction_rules(exp, "main")

        # Epilogue for main: move return value from frame into R1 and return
        frame = self.stack_frames.pop()
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

            num_params = self.symbol_table[f].parameters[0]
            offset = num_params + 1

            self.create_frame(f)

            for exp in body:
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

    # -------------------- Instruction Rules --------------------
    def instruction_rules(self, body, curr_function, callee=False):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            # ---------- FUNCTION CALL ----------
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # Parameter counts
                if f_name in self.symbol_table:
                    callee_params = self.symbol_table[f_name].parameters[0]
                elif f_name == "print":
                    callee_params = 1
                else:
                    callee_params = 0

                caller_params = self.symbol_table[curr_function].parameters[0]

                # Sizes
                caller_T = self.temp_slots.get(curr_function, 0)
                caller_A = self.outgoing_args.get(curr_function, 0)
                caller_size = caller_params + 2 + caller_T + caller_A

                callee_T = self.temp_slots.get(f_name, 0)
                callee_size = callee_params + 2 + callee_T

                # Base of outgoing-arg area inside caller frame
                # First outgoing arg slot = P + 2 + T
                out_base = caller_params + 2 + caller_T

                # 1) Evaluate arguments and stage into caller's outgoing-arg area
                args = exp_children[1].children if len(exp_children) > 1 and exp_children[1] is not None else []
                for i, arg in enumerate(args):
                    # Evaluate argument i -> R1 (nested calls may clobber R4; safe)
                    self.instruction_rules(arg, curr_function, callee=True)
                    # Stage arg i at caller's outgoing area
                    self.write(f"ST 1, {out_base + i}(5)", f"Stage arg {i} in caller frame outgoing area")

                # 2) Compute future callee base from caller size and copy staged args
                temp_label = f"!return_{self.label_id}"; self.label_id += 1

                self.write(f"LDA 4, {caller_size}(5)", "Compute future callee base from caller size")

                # Copy staged args to callee parameter slots
                for i in range(callee_params):
                    self.write(f"LD 2, {out_base + i}(5)", f"Load staged arg {i} from caller frame")
                    self.write(f"ST 2, {i+1}(4)",          f"Store arg {i} into callee frame")

                # 3) Install return address, push callee frame, and jump
                self.write(f"LDA 6, {temp_label}(0)", "Return address")
                self.write("ST 6, 0(4)", "Store return in callee frame")

                self.write("ADD 5, 4, 0", "Push callee frame (FP := callee base)")
                if f_name == "print":
                    self.write("LDA 7, @print(0)", "Call built-in print")
                else:
                    self.write(f"LDA 7, @{f_name}(0)", f"Call {f_name}")

                # 4) Upon return: optional load result, then pop callee frame
                self.placeholders[temp_label] = self.line_counter

                if f_name != "print":
                    return_slot = callee_params + 1
                    self.write(f"LD 1, {return_slot}(5)", "Load callee result into R1")

                # Pop by callee_size (NOT caller_size)
                self.write(f"LDC 2, {callee_size}(0)", "Callee frame size")
                self.write("SUB 5, 5, 2", "Pop callee frame")

                # 5) If producing the caller’s own value, store it (non-statement context)
                if f_name != "print" and not callee:
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

                # T is already accounted in frame sizing; we use _cur_spill for the current depth
                # Evaluate left → R1
                self.instruction_rules(left_exp, curr_function, callee=True)

                # Spill left into current frame's temp slot at current depth
                spill_slot = curr_params + 2 + self._cur_spill  # P+2 .. P+1+T
                self.write(f"ST 1, {spill_slot}(5)", f"Spill left operand at depth {self._cur_spill}")

                # Increase depth while computing right
                self._cur_spill += 1

                # Evaluate right → R1 (nested evaluations may use R2/R3; safe)
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
