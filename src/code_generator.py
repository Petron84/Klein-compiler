
import sys

class StackFrame:
    def __init__(self, name, top, num_params):
        self.name = name        # function name
        self.top = top          # Top of frame - return address
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1  # memory location of return value

class Generator:
    def __init__(self, tree, table):
        # Program AST & symbol table
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Unique temporary label counter
        self.label_id = 0

        # placeholders for unknown addresses
        self.placeholders = {}

        # Instruction numbering
        self.line_counter = 0

        # Instruction Memory
        self.IMEM = []

        # reference to determine tops of stack frames in DMEM
        self.DMEM = 1
        self.stack_frames = []

        # Register convention (new):
        # R0 : 0
        # R1 : Return value
        # R2 : Temporary value (left operand in binary expressions)
        # R3 : Temporary value (compute results here)
        # R4 : Target Location (frame base for memory addressing)
        # R5 : DMEM pointer
        # R6 : Temporary return address
        # R7 : Program counter

        # Stack frame structure:
        # [ Return address | Parameters 1..N | Return value ]
        # DMEM structure:
        # Return address
        # Array of "parameters" for each function call
        # Store return value
        # Stack frames expand upward from DMEM[1] to DMEM[1023].
        # DMEM[0] is the integer 1023
        # DMEM[1:N] stores main command-line arguments
        # DMEM[N+1] stores return address at bottom of main stack frame
        # DMEM[N+2...] stores parameters for second stack frame

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)

        num_params = self.symbol_table['main'].parameters[0]
        self.DMEM = num_params + 1                   # Set DMEM to top of main stack frame
        self.create_frame('main')                    # Create stack frame for initial main function call
        main_frame = self.stack_frames[-1]

        # Set R5 to main frame base
        self.write(f"LDC 5, {main_frame.top}(0)", " Set DMEM pointer to main stack frame")

        # Load CLI args into the main frame
        for i in range(1, num_params + 1):
            self.write(f"LD  2, {i}(0)", f" Load CLI arg {i} into R2")
            self.write(f"ST  2, {i}(5)", f" Store the argument {i} into main frame")

        # Store return address
        self.write("LDA 6, 2(7)", " Calculate return address")
        self.write("ST  6, 0(5)", " Store return address in main stack frame")

        # Set pointer to free space above main frame
        self.DMEM = main_frame.top + num_params + 2

        # Branch to main
        self.write("LDA 7, @main(0)", " Load address of main IMEM block - branch to function")

        # After main returns, print and halt
        self.write("OUT 1, 0, 0", " Return result")
        self.write("HALT 0, 0, 0", " Terminate program execution if no main function found.")

        # Hardcoded print function
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", " Hardcoded print function")
        self.write("LD  6, 0(5)", " Load return addess from stack frame.")
        self.write("LDA 7, 0(6)", " Jump to return address.")

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
        # Map function names to function body; other info lives in symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            self.placeholders["@" + f_name] = -1
        return f_list

    def generate_imem(self, functions):
        # MAIN
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        for exp in functions['main']:
            self.instruction_rules(exp, "main")

        # Return from main
        frame = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        offset = main_params + 1
        self.write(f"LD  1, {offset}(5)", " Load return value into R1")
        self.write("LD  6, 0(5)", " Load return address for main function into R6")
        self.write("LDA 7, 0(6)", " Jump to return address of main function")

        # Other functions
        del functions['main']
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f'@{f}'] = self.line_counter

            num_params = self.symbol_table[f].parameters[0]
            offset = num_params + 1
            self.create_frame(f)

            for exp in body:
                self.instruction_rules(exp, f, callee=True)

            # Store result in callee return slot and return
            self.write(f"ST  1, {offset}(5)", " Store function result into stack frame")
            self.write("LD  6, 0(5)", " Load return address")
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
            # ----------------------- FUNCTION CALL -----------------------
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # Size of the callee frame (params + RA + RET = params + 2)
                callee_params = self.symbol_table[f_name].parameters[0]
                callee_size   = callee_params + 2

                if f_name == "print":
                    # Evaluate the single print argument into R1
                    self.instruction_rules(exp_children[1], curr_function, callee=True)

                    # Base of callee frame into R4
                    self.write(f"LDA 4, {callee_size}(5)", " Base of callee frame (print)")

                    # RA -> callee frame
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Compute return address")
                    self.write("ST  6, 0(4)", " Store RA in callee frame")

                    # Enter callee
                    self.write("ADD 5, 4, 0", " Update pointer (enter callee)")
                    self.write("LDA 7, @print(0)", " Call print")
                    self.placeholders[temp_label] = self.line_counter

                    # Restore R5 by callee size (use R3 as offset register)
                    self.write(f"LDC 3, {callee_size}(0)", " Load callee frame size")
                    self.write("SUB 5, 5, 3", " Restore pointer")

                else:
                    # Evaluate & store each arg into the callee frame
                    args = exp_children[1].children
                    for i, arg in enumerate(args):
                        self.instruction_rules(arg, curr_function, callee=True)
                        self.write(f"LDA 4, {callee_size}(5)", " Base of callee frame")
                        self.write(f"ST  1, {i+1}(4)", f" Store argument {i} into callee frame")

                    # Set RA in callee frame & enter it
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 4, {callee_size}(5)", " Base of callee frame")
                    self.write(f"LDA 6, {temp_label}(0)", " Compute return address")
                    self.write("ST  6, 0(4)", " Store RA in callee frame")
                    self.write("ADD 5, 4, 0", " Update pointer (enter callee)")
                    self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")
                    self.placeholders[temp_label] = self.line_counter

                    # Read callee return value while still in callee
                    call_offset = callee_params + 1
                    self.write(f"LD  1, {call_offset}(5)", " Load callee return value into R1")

                    # Restore R5 by callee size (use R3)
                    self.write(f"LDC 3, {callee_size}(0)", " Load callee frame size")
                    self.write("SUB 5, 5, 3", " Restore pointer")

                    # If this call is the function's result, store it in caller's return slot
                    if not callee:
                        curr_params = self.symbol_table[curr_function].parameters[0]
                        offset = curr_params + 1
                        self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------- LITERALS -----------------------
            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", " Load integer-literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", " Load boolean-literal into R1")
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------- IDENTIFIER (parameter load) -----------------------
            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD  1, {offset}(5)", f" Load parameter '{exp_value}' into R1")
                        break
                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------- UNARY -----------------------
            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function, callee=True)

                if exp_value == "-":
                    self.write("SUB 1, 0, 1", " Negate value in R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", " Load 1 into R2")
                    self.write("SUB 1, 2, 1", " Logical NOT: 1 - R1")

                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------- BINARY -----------------------
            case "BINARY-EXPRESSION":
                left_exp  = exp_children[0]
                right_exp = exp_children[1]

                # Evaluate left into R1, copy to R2 (left operand temp)
                self.instruction_rules(left_exp, curr_function, callee=True)
                self.write("ADD 2, 1, 0", " R2 = left operand")

                # Evaluate right into R1; R2 still holds left
                self.instruction_rules(right_exp, curr_function, callee=True)

                # Compute result into R3, then move to R1
                match exp_value:
                    case "+":
                        self.write("ADD 3, 2, 1", " R3 = left + right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "-":
                        self.write("SUB 3, 2, 1", " R3 = left - right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "*":
                        self.write("MUL 3, 2, 1", " R3 = left * right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "/":
                        self.write("DIV 3, 2, 1", " R3 = left / right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "and":
                        self.write("MUL 3, 2, 1", " R3 = left AND right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "or":
                        self.write("ADD 3, 2, 1", " R3 = left OR right")
                        self.write("ADD 1, 3, 0", " R1 = R3")
                    case "=":
                        # Equality: true iff (left - right) == 0
                        self.write("SUB 3, 2, 1", " delta = left - right")
                        self.write("JEQ 3, 2(7)", " If delta == 0 jump to TRUE")
                        self.write("LDC 1, 0(0)", " FALSE")
                        self.write("LDA 7, 1(7)", " Skip TRUE")
                        self.write("LDC 1, 1(0)", " TRUE")
                    case "<":
                        # Less-than: true iff (left - right) < 0
                        self.write("SUB 3, 2, 1", " delta = left - right")
                        self.write("JLT 3, 2(7)", " If delta < 0 jump to TRUE")
                        self.write("LDC 1, 0(0)", " FALSE")
                        self.write("LDA 7, 1(7)", " Skip TRUE")
                        self.write("LDC 1, 1(0)", " TRUE")

                if not callee:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST  1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------- IF -----------------------
            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----", header=True)

                # condition
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True)

                # Jump target placeholders
                temp_label_else  = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", " If condition is false, jump to ELSE")

                # then
                self.write("-----THEN-BLOCK-----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)

                temp_label_endif = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", " Skip ELSE block")

                # else
                self.write("-----ELSE-BLOCK-----", header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)

                # endif
                self.placeholders[temp_label_endif] = self.line_counter
