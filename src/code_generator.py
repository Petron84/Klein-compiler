import sys

class StackFrame:
    def __init__(self,name,top,num_params):
        self.name = name # function name
        self.top = top # Top of frame - return address
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1 # memory location of return value

class Generator:
    def __init__(self,tree,table):
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
            # Register 0 : Value 0
            # Register 1 : Return value
            # Register 2 : Temporary value for calculations
            # Register 3 : Target Memory Location
            # Register 4 : Memory offset
            # Register 5 : DMEM pointer
            # Register 6 : Temporary return address
            # Register 7 : program counter

        # Stack frame structure:
            # Return address
            # Parameters 1 - N (expressions)
            # Return value

        # DMEM structure:
            # Three components:
                # Return address
                # Array of "parameters", i.e., every function "jump" to IMEM blocks
                # Store return value
            # Stack frames expand upward from DMEM[1] to DMEM[1023].
            # DMEM[0] is the integer 1023
            # DMEM [1:N] stores main command-line arguments
            # DMEM [N+1] stores return address at bottom of main stack frame
            # DMEM [N+2] stores parameters for second stack frame
                      
    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM
    
    def initialize(self):
            self.write("-----INITIALIZE RUNTIME SYSTEM-----",header=True)
            num_params = self.symbol_table['main'].parameters[0]
            self.DMEM = num_params + 1 # Set DMEM to top of main stack frame

            self.create_frame('main') # Create stack frame for initial main function call
            main_frame = self.stack_frames[-1]

            self.write(f"LDC  5, {main_frame.top}(0)", " Set DMEM pointer to main stack frame")

            for i in range(1, num_params + 1):
                self.write(f"LD   2, {i}(0)", f" Load CLI arg {i} into register")
                self.write(f"ST   2, {i}(5)", f" Store the argument into stack frame")

            self.write("LDA  6, 2(7)", " Calculate return address")
            self.write("ST   6, 0(5)", " Store return address in main stack frame")
            
            self.DMEM = main_frame.top + num_params + 2 # Set pointer to free stack frame

            self.write(f"LDA  7, @main(0)", ' Load address of main IMEM block - branch to function')
            self.write(f"OUT  1, 0, 0", " Return result")
            self.write("HALT 0, 0, 0", ' Terminate program execution if no main function found.')
            self.write("------PRINT------",header=True)
            self.placeholders["@print"] = self.line_counter
            self.write("OUT  1, 0, 0", ' Hardcoded print function')
            self.write("LD   6, 0(5)", ' Load return addess from stack frame.')
            self.write("LDA  7, 0(6)",  ' Jump to return address.')
    
    def create_frame(self,f_name):
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

        # Create a mapping of function names to function body. All other information is stored in symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            f_name = "@" + f_name
            self.placeholders[f_name] = -1
        return f_list
    
    def generate_imem(self,functions):

        main_body = functions['main']
        self.write("------MAIN-------",header=True)
        self.placeholders['@main'] = self.line_counter

        for exp in main_body:
            self.instruction_rules(exp,"main")

        frame = self.stack_frames.pop()
        mem_loc = frame.top
        val_loc = frame.val_loc

        self.write(f"LD   1, {val_loc}(0)"," Load return value into register 1")
        self.write(f"LD  6, {mem_loc}(0)", f" Load return address for main function into register 6")
        self.write("LDA  7, 0(6)", f" Jump to return address of main function")

        del functions['main']

        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f'@{f}'] = self.line_counter
            num_params = self.symbol_table[f].parameters[0]
            offset = num_params + 1

            self.create_frame(f)
            for exp in body:
                self.instruction_rules(exp, f, callee=True)       
                self.write(f"ST   1, {offset}(5)", " Store function result into stack frame")
            self.write("LD   6, 0(5)", " Load return address")
            self.write("LDA  7, 0(6)", " Return to caller")
            self.stack_frames.pop()

    def fill_placeholders(self):
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    def instruction_rules(self,body,curr_function,callee=False):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            case "FUNCTION-CALL":
                f_name = exp_children[0].value
            
                if f_name== "print":
                    self.instruction_rules(exp_children[1], curr_function,callee=True)
                    call_size = 3 # print always has 1 parameter, so allocate 1 + 2 frame slots

                    self.write(f"LDA  3, {call_size}(5)", " Update DMEM pointer")

                    temp_label = f"!return_{self.label_id}"
                    self.label_id += 1

                    self.write(f"LDA 6, {temp_label}(0)", " Compute return address")

                    self.write("ST   6, 0(3)", " Store return address")
                    self.write("ADD  5, 3, 0", " Updated Pointer")
                    self.write("LDA  7, @print(0)", "Call print")
                    self.placeholders[temp_label] = self.line_counter
                    self.write(f"LDC  4, {call_size}(0)", " Load frame size")
                    self.write("SUB  5, 5, 4", " Restore pointer")
                    
                else:
                    
                    args = exp_children[1].children
                    call_params = self.symbol_table[f_name].parameters[0]
                    call_size = call_params + 2

                    self.write(f"LDA 3, {call_size}(5)", f" Advance DMEM pointer to callee frame '{f_name}'")

                    for i, arg in enumerate(args):
                        self.instruction_rules(arg, curr_function, callee=True)
                        self.write(f"ST 1, {i+1}(3)", f" Store argument {i} into callee frame")

                    temp_label = f"!return_{self.label_id}"
                    self.label_id += 1

                    self.write(f"LDA 6, {temp_label}(0))", " Compute return address")
                    self.write("ST 6, 0(3)", " Store return address in callee frame")

                    self.write("ADD  5, 3, 0", " Update pointer")

                    self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")

                    self.placeholders[temp_label] = self.line_counter

                    call_offset = call_params + 1

                    self.write(f"LD 1, {call_offset}(5)", " Load callee return value into R1")

                    self.write(f"LDC  4, {call_size}(0)", " Load frame size")
                    self.write("SUB  5, 5, 4", " Restore pointer")

                    if not callee:
                        caller_val_loc = self.stack_frames[-1].val_loc
                        self.write(f"ST 1, {caller_val_loc}(0)", " Store function-call result into caller's return slot")

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC  1, {value}(0)", " Load boolean-literal value into register 1")

                if not callee: # Only store as return value if it is a function return
                    val_loc = self.stack_frames[-1].val_loc
                    self.write(f"ST   1, {val_loc}(0)"," Store value into return value in stack frame")
            
            case "BOOLEAN-LITERAL":
                value = body.value
                if value == "true":
                    value = 1
                else:
                    value = 0
                self.write(f"LDC  1, {value}(0)", " Load boolean-literal value into register 1")

                if not callee: # Only store as return value if it is a function return
                    val_loc = self.stack_frames[-1].val_loc
                    self.write(f"ST   1, {val_loc}(0)"," Store value into return value in stack frame")

            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD   1, {offset}(5)", f" Load parameter '{exp_value}' into R1")
                        break

                if not callee:
                    val_loc = self.stack_frames[-1].val_loc
                    self.write(f"ST   1, {val_loc}(0)", " Store identifier value into current frame's return slot")

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function, callee=True)

                if exp_value == "-":
                    self.write("SUB  1, 0, 1", " Negate value in R1")

                elif exp_value == "not":
                    self.write("LDC  2, 1(0)", " Load 1 into R2")
                    self.write("SUB  1, 2, 1", " Logical NOT: 1 - R1")

                if not callee:
                    val_loc = self.stack_frames[-1].val_loc
                    self.write(f"ST   1, {val_loc}(0)", " Store unary result into return slot")

            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]

                self.instruction_rules(left_exp, curr_function, callee=True)
                self.write("ADD  2, 1, 0", " Move left operand from R1 to R2")

                self.instruction_rules(right_exp, curr_function, callee=True)

                match exp_value:
                    case "+":
                        self.write("ADD  1, 2, 1", " R1 = left + right")
                    case "-":
                        self.write("SUB  1, 2, 1", " R1 = left - right")
                    case "*":
                        self.write("MUL  1, 2, 1", " R1 = left * right")
                    case "/":
                        self.write("DIV  1, 2, 1", " R1 = left / right")
                    case "and":
                        self.write("MUL  1, 2, 1", " R1 = left AND right")
                    case "or":
                        self.write("ADD  1, 2, 1", " R1 = left OR right")
                    case "=":
                        self.write("SUB  1, 2, 1", " left - right for equality check")
                        self.write("JEQ  1, 2(7)", " If R1 == 0, jump to true")
                        self.write("LDC  1, 0(0)", " false")
                        self.write("LDA  7, 1(7)", " skip setting true")
                        self.write("LDC  1, 1(0)", " true")
                    case "<":
                        self.write("SUB  1, 2, 1", " left - right for less-than check")
                        self.write("JLT  1, 2(7)", " If R1 < 0, jump to true")
                        self.write("LDC  1, 0(0)", " false")
                        self.write("LDA  7, 1(7)", " skip setting true")
                        self.write("LDC  1, 1(0)", " true")

                if not callee:
                    val_loc = self.stack_frames[-1].val_loc
                    self.write(f"ST   1, {val_loc}(0)", " Store binary result into return slot")

            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----", header=True)
                condition_exp = exp_children[0]

                self.instruction_rules(condition_exp, curr_function, callee=True)

                temp_label_else = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ  1, {temp_label_else}(0)", " If condition is false, jump to ELSE")

                self.write("-----THEN-BLOCK-----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)

                temp_label_endif = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"LDA  7, {temp_label_endif}(0)", " Skip ELSE block")

                self.write("-----ELSE-BLOCK-----", header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)

                self.placeholders[temp_label_endif] = self.line_counter
