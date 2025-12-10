
import sys

class StackFrame:
    def __init__(self, name, top, num_params):
        self.name = name          # function name
        self.top = top            # Top of frame - return address
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1  # memory location of return value

class Generator:
    def __init__(self, tree, table):
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Unique temporary label counter
        self.label_id = 0

        # placeholders for unknown addresses
        self.placeholders = {}

        self.line_counter = 0

        # Instruction Memory
        self.IMEM = []

        # DMEM model
        self.DMEM = 1
        self.stack_frames = []

        # Register convention:
        # R0 : constant 0
        # R1 : expression/return value
        # R2 : saved arg #1 / left operand
        # R3 : saved arg #2 / right operand
        # R4 : FP (current function's frame base)  <-- stable per function
        # R5 : SP / DMEM pointer
        # R6 : return address
        # R7 : program counter

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)
        num_params = self.symbol_table['main'].parameters[0]
        self.DMEM = num_params + 1
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        self.write(f"LDC 5, {main_frame.top}(0)", " SP = main frame base")
        self.write("ADD 4, 5, 0", " FP = SP (enter main)")

        # load CLI args into main frame
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f" Load CLI arg {i} -> R2")
            self.write(f"ST 2, {i}(5)", f" Store arg {i} at main frame")

        # set RA and branch to @main
        self.write("LDA 6, 2(7)", " RA = next after branch")
        self.write("ST 6, 0(5)", " Store RA in main frame")
        self.DMEM = main_frame.top + num_params + 2

        self.write("LDA 7, @main(0)", " Jump to main")
        self.write("OUT 1, 0, 0", " Print R1")
        self.write("HALT 0, 0, 0", " Halt")

        # builtin print
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", " print(R1)")
        self.write("LD 6, 0(4)", " Load RA via FP")
        self.write("LDA 7, 0(6)", " Return")

    def create_frame(self, f_name):
        num_params = self.symbol_table[f_name].parameters[0]
        self.stack_frames.append(StackFrame(f_name, self.DMEM, num_params))

    def write(self, instruction, note=None, header=False):
        if header:
            self.IMEM.append(f"{instruction}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} ; {note}")
            self.line_counter += 1

    def load_functions(self):
        f_list = {}
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            self.placeholders["@" + f_name] = -1
        return f_list

    def generate_imem(self, functions):
        # MAIN
        main_body = functions['main']
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        # function entry: FP = SP
        self.write("ADD 4, 5, 0", " FP = SP at @main entry")

        for exp in main_body:
            self.instruction_rules(exp, "main")

        # epilogue (via FP)
        self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        ret_off = main_params + 1
        self.write(f"LD 1, {ret_off}(4)", " R1 = return value (via FP)")
        self.write("LD 6, 0(4)", " RA from FP")
        self.write("LDA 7, 0(6)", " return")

        # Others
        del functions['main']
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f"@{f}"] = self.line_counter
            num_params = self.symbol_table[f].parameters[0]
            self.create_frame(f)

            # function entry: FP = SP
            self.write("ADD 4, 5, 0", f" FP = SP at @{f} entry")

            for exp in body:
                self.instruction_rules(exp, f, callee=True)

            # epilogue (via FP)
            ret_off = num_params + 1
            self.write(f"ST 1, {ret_off}(4)", " store result in return slot (via FP)")
            self.write("LD 6, 0(4)", " load RA (via FP)")
            self.write("LDA 7, 0(6)", " return to caller")
            self.stack_frames.pop()

    def fill_placeholders(self):
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    def instruction_rules(self, body, curr_function, callee=False):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:

            case "FUNCTION-CALL":
                f_name = exp_children[0].value
                callee_params = self.symbol_table[f_name].parameters[0]
                caller_params = self.symbol_table[curr_function].parameters[0]
                callee_size = callee_params + 2   # RA + params + return

                # ---- 1) Evaluate arguments FIRST (save in registers) ----
                args = exp_children[1].children if len(exp_children) > 1 else []
                if len(args) == 0:
                    # no-arg call: nothing to evaluate
                    pass
                elif len(args) == 1:
                    # arg0 -> R2
                    self.instruction_rules(args[0], curr_function, callee=True)  # R1
                    self.write("ADD 2, 1, 0", " Save arg0 in R2")
                elif len(args) == 2:
                    # left -> R2, right -> R3
                    self.instruction_rules(args[0], curr_function, callee=True)  # R1
                    self.write("ADD 2, 1, 0", " Save arg0 in R2")
                    self.instruction_rules(args[1], curr_function, callee=True)  # R1
                    self.write("ADD 3, 1, 0", " Save arg1 in R3")

                # ---- 2) Push callee frame, store params from registers ----
                self.write(f"LDA 6, {f'!return_{self.label_id}'}(0)", " Prepare RA label")
                ret_label = f"!return_{self.label_id}"; self.label_id += 1

                self.write(f"LDA 2, {callee_size}(5)", " callee base size -> R2")
                self.write("ADD 5, 2, 0", " push callee frame (SP = callee)")

                # Store RA at [0](SP)
                self.write("ST 6, 0(5)", " store RA in callee frame")

                # Store parameters (if any)
                if len(args) >= 1:
                    self.write("ST 2, 1(5)", " TEMP overwrite: fix below")

                # Correct param writes using saved registers
                if len(args) == 1:
                    self.write("ST 2, 0(0)", " noop slot")  # harmless filler to keep line numbers stable
                    self.write("ST 2, 0(0)", " noop slot")
                    self.write("ST 2, 0(0)", " noop slot")
                    # actually store arg from R2
                    self.write("ST 2, 0(0)", " noop")
                    self.IMEM[-4] = f"{self.line_counter-4} : ST 2, 1(5) ; store arg0 from R2"
                elif len(args) == 2:
                    # store arg0 from R2 and arg1 from R3
                    self.write("ST 2, 1(5)", " store arg0 from R2")
                    self.write("ST 3, 2(5)", " store arg1 from R3")

                # ---- 3) Call ----
                self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")

                # ---- 4) After return: load result, pop callee frame ----
                self.placeholders[ret_label] = self.line_counter
                return_slot = callee_params + 1
                self.write(f"LD 1, {return_slot}(5)", " load callee result")
                self.write(f"LDC 2, {callee_size}(0)", " size to pop")
                self.write("SUB 5, 5, 2", " pop callee frame")

                # ---- 5) If this call yields the current function's value, write to FP return slot
                if not callee:
                    caller_return = caller_params + 1
                    self.write(f"ST 1, {caller_return}(4)", " store result into caller frame (via FP)")

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", " literal -> R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    self.write(f"ST 1, {curr_params + 1}(4)", " store into return slot (via FP)")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", " bool -> R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    self.write(f"ST 1, {curr_params + 1}(4)", " store into return slot (via FP)")

            case "IDENTIFIER":
                # Always load params via FP (R4), not SP
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        self.write(f"LD 1, {i + 1}(4)", f" load '{exp_value}' via FP")
                        break
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    self.write(f"ST 1, {curr_params + 1}(4)", " store into return slot (via FP)")

            case "UNARY-EXPRESSION":
                inner = exp_children[0]
                self.instruction_rules(inner, curr_function, callee=True)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", " negate")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", " load 1")
                    self.write("SUB 1, 2, 1", " 1 - R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    self.write(f"ST 1, {curr_params + 1}(4)", " store into return slot (via FP)")

            case "BINARY-EXPRESSION":
                left = exp_children[0]; right = exp_children[1]
                curr_params = self.symbol_table[curr_function].parameters[0]
                singles = {"INTEGER-LITERAL","BOOLEAN-LITERAL","IDENTIFIER"}

                # Evaluate right, stash R3; evaluate left, stash R2; restore right to R1
                self.instruction_rules(right, curr_function, callee=True)
                self.write("ADD 3, 1, 0", " stash right in R3")
                self.instruction_rules(left, curr_function, callee=True)
                self.write("ADD 2, 1, 0", " stash left in R2")
                self.write("ADD 1, 3, 0", " restore right to R1")

                match exp_value:
                    case "+": self.write("ADD 1, 2, 1", " left + right")
                    case "-": self.write("SUB 1, 2, 1", " left - right")
                    case "*": self.write("MUL 1, 2, 1", " left * right")
                    case "/": self.write("DIV 1, 2, 1", " left / right")
                    case "and": self.write("MUL 1, 2, 1", " left AND right")
                    case "or": self.write("ADD 1, 2, 1", " left OR right")
                    case "=":
                        self.write("SUB 1, 2, 1", " left - right")
                        self.write("JEQ 1, 2(7)", " if 0 then true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip")
                        self.write("LDC 1, 1(0)", " true")
                    case "<":
                        self.write("SUB 1, 2, 1", " left - right")
                        self.write("JLT 1, 2(7)", " if < 0 then true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip")
                        self.write("LDC 1, 1(0)", " true")

                if not callee:
                    self.write(f"ST 1, {curr_params + 1}(4)", " store into return slot (via FP)")

            case "IF-EXPRESSION":
                self.write("----IF-BLOCK----", header=True)
                cond = exp_children[0]
                self.instruction_rules(cond, curr_function, callee=True)

                else_lbl = f"!temp_{self.label_id}"; self.label_id += 1
                end_lbl  = f"!temp_{self.label_id}"; self.label_id += 1
                self.write(f"JEQ 1, {else_lbl}(0)", " if false -> ELSE")

                self.write("----THEN-BLOCK----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)
                self.write(f"LDA 7, {end_lbl}(0)", " skip ELSE")

                self.write("----ELSE-BLOCK----", header=True)
                self.placeholders[else_lbl] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)
                self.placeholders[end_lbl] = self.line_counter
