
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

        # reference to determine tops of stack frames in DMEM
        self.DMEM = 1
        self.stack_frames = []

        # Register convention:
        # R0 : constant 0
        # R1 : expression/return value
        # R2 : left operand / general temp
        # R3 : right operand scratch / general temp
        # R4 : temporary address computations (do NOT rely across nested eval)
        # R5 : DMEM pointer (stack pointer)
        # R6 : return address
        # R7 : program counter

        # Stack frame layout (per function):
        # [0]    : return address
        # [1..N] : parameters
        # [N+1]  : return value
        #
        # Frames grow upward from DMEM[1]. DMEM[0] holds the max address (e.g., 1023).

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)
        num_params = self.symbol_table['main'].parameters[0]
        self.DMEM = num_params + 1  # Set DMEM to top of main stack frame
        self.create_frame('main')   # Create stack frame for initial main function call
        main_frame = self.stack_frames[-1]

        self.write(f"LDC 5, {main_frame.top}(0)", " Set DMEM pointer to main stack frame")
        self.write("ADD 4, 5, 0", " Mirror caller frame top (optional)")

        # Load CLI args into the main frame
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f" Load CLI arg {i} into R2")
            self.write(f"ST 2, {i}(5)", f" Store arg {i} into main frame")

        # Set main's return address and call it
        self.write("LDA 6, 2(7)", " Calculate return address")
        self.write("ST 6, 0(5)", " Store return address in main frame")

        self.DMEM = main_frame.top + num_params + 2  # pointer to free space above main frame

        self.write("LDA 7, @main(0)", " Branch to main")
        self.write("OUT 1, 0, 0", " Print main's result")
        self.write("HALT 0, 0, 0", " Terminate program")

        # Built-in print
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", " print(R1)")
        self.write("LD 6, 0(5)", " Load return address")
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
        # Map function names to bodies; addresses patched later via placeholders
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            self.placeholders["@" + f_name] = -1
        return f_list

    def generate_imem(self, functions):
        # Generate main first
        main_body = functions['main']
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        for exp in main_body:
            self.instruction_rules(exp, "main")

        # Epilogue for main
        _ = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        offset = main_params + 1
        self.write(f"LD 1, {offset}(5)", " Load main return value")
        self.write("LD 6, 0(5)", " Load return address")
        self.write("LDA 7, 0(6)", " Return from main")

        # Generate the rest
        del functions['main']
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f"@{f}"] = self.line_counter

            num_params = self.symbol_table[f].parameters[0]
            self.create_frame(f)

            for exp in body:
                self.instruction_rules(exp, f, callee=True)

            # Function epilogue: store R1 into return slot, then return
            ret_off = num_params + 1
            self.write(f"ST 1, {ret_off}(5)", " Store function result")
            self.write("LD 6, 0(5)", " Load return address")
            self.write("LDA 7, 0(6)", " Return to caller")
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

                # ---------- Push callee frame FIRST ----------
                # Reserve the callee frame so nested calls cannot overlap it.
                self.write(f"LDA 4, {callee_size}(5)", " Compute callee frame base")
                self.write("ADD 5, 4, 0", " Push callee frame")

                if f_name == "print":
                    # Evaluate its single argument → R1
                    self.instruction_rules(exp_children[1], curr_function, callee=True)
                    # Store arg into callee frame (now at 5)
                    self.write("ST 1, 1(5)", " Store print arg in callee frame")
                    # Install RA and call
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Return address")
                    self.write("ST 6, 0(5)", " Store RA in callee frame")
                    self.write("LDA 7, @print(0)", " Call print")
                    # Return & pop callee frame
                    self.placeholders[temp_label] = self.line_counter
                    self.write(f"LDC 2, {callee_size}(0)", " Caller frame size")
                    self.write("SUB 5, 5, 2", " Pop callee frame")

                else:
                    # Evaluate each argument and store immediately INTO the pushed callee frame.
                    args = exp_children[1].children

                    for i, arg in enumerate(args):
                        # Evaluate argument (may perform nested calls)
                        self.instruction_rules(arg, curr_function, callee=True)  # → R1
                        # When nested calls return, R5 again points to CALLEE frame.
                        self.write(f"ST 1, {i+1}(5)", f" Store argument {i} in callee frame")

                    # Install RA and call
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Return address")
                    self.write("ST 6, 0(5)", " Store RA in callee frame")
                    self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")

                    # Upon return: read result, then pop callee frame
                    self.placeholders[temp_label] = self.line_counter
                    return_slot = callee_params + 1
                    self.write(f"LD 1, {return_slot}(5)", " Load callee result")
                    self.write(f"LDC 2, {callee_size}(0)", " Caller frame size")
                    self.write("SUB 5, 5, 2", " Pop callee frame")

                    # If this call is the value of the current function, store it
                    if not callee:
                        caller_return = caller_params + 1
                        self.write(f"ST 1, {caller_return}(5)", " Store result into caller frame")

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", " Load integer literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store into current frame's return slot")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", " Load boolean literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store into current frame's return slot")

            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD 1, {offset}(5)", f" Load parameter '{exp_value}'")
                        break
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store into current frame's return slot")

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function, callee=True)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", " Negate R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", " Load 1 into R2")
                    self.write("SUB 1, 2, 1", " R1 = 1 - R1 (logical NOT)")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store into current frame's return slot")

            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                curr_params = self.symbol_table[curr_function].parameters[0]
                single_values = ["INTEGER-LITERAL", "BOOLEAN-LITERAL", "IDENTIFIER"]

                if left_exp.type in single_values and (right_exp.type not in single_values):
                    # Evaluate right → R1, stash to R3; then left → R1 → R2; restore right to R1
                    self.instruction_rules(right_exp, curr_function, callee=True)
                    self.write("ADD 3, 1, 0", " Stash right in R3")
                    self.instruction_rules(left_exp, curr_function, callee=True)
                    self.write("ADD 2, 1, 0", " Move left to R2")
                    self.write("ADD 1, 3, 0", " Restore right to R1")

                elif left_exp.type in single_values and right_exp.type in single_values:
                    self.instruction_rules(right_exp, curr_function, callee=True)
                    self.write("ADD 3, 1, 0", " Stash right in R3")
                    self.instruction_rules(left_exp, curr_function, callee=True)
                    self.write("ADD 2, 1, 0", " Move left to R2")
                    self.write("ADD 1, 3, 0", " Restore right to R1")

                else:
                    self.instruction_rules(left_exp, curr_function, callee=True)
                    self.write("ADD 2, 1, 0", " Move left to R2")
                    self.instruction_rules(right_exp, curr_function, callee=True)

                match exp_value:
                    case "+":
                        self.write("ADD 1, 2, 1", " R1 = left + right")
                    case "-":
                        self.write("SUB 1, 2, 1", " R1 = left - right")
                    case "*":
                        self.write("MUL 1, 2, 1", " R1 = left * right")
                    case "/":
                        self.write("DIV 1, 2, 1", " R1 = left / right")
                    case "and":
                        self.write("MUL 1, 2, 1", " R1 = left AND right")
                    case "or":
                        self.write("ADD 1, 2, 1", " R1 = left OR right")
                    case "=":
                        self.write("SUB 1, 2, 1", " left - right")
                        self.write("JEQ 1, 2(7)", " if 0 then true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip setting true")
                        self.write("LDC 1, 1(0)", " true")
                    case "<":
                        self.write("SUB 1, 2, 1", " left - right")
                        self.write("JLT 1, 2(7)", " if < 0 then true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip setting true")
                        self.write("LDC 1, 1(0)", " true")

                if not callee:
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store into current frame's return slot")

            case "IF-EXPRESSION":
                self.write("----IF-BLOCK----", header=True)
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True)

                temp_label_else = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", " If false, jump to ELSE")

                self.write("----THEN-BLOCK----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)

                temp_label_endif = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", " Skip ELSE")

                self.write("----ELSE-BLOCK----", header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)
                self.placeholders[temp_label_endif] = self.line_counter
