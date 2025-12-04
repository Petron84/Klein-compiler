from scanner import KleinError
import sys

class StackFrame:
    def __init__(self,name,top,num_params):
        self.name = name # function name
        self.top = top
        self.num_params = num_params
        self.val_loc = self.top + self.num_params # memory location of return value
        self.mem_loc = self.val_loc + 1 # memory location of return address

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
            # Parameters 1 - N (expressions)
            # Return address R6

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
            self.create_frame('main') # Create stack frame for initial main function call
            num_params = self.symbol_table['main'].parameters[0]
            self.write(f"LDA  6, 3(7)", ' Calculate return address for main function')
            self.write(f"LDC  5, {num_params + 1}(0)", ' Update DMEM pointer')
            self.write(f"ST   6, 0(5)", ' Store return address for main function in DMEM')
            self.DMEM = num_params + 3 # Set DMEM pointer to top of first empty stack frame
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
        mem_loc = frame.mem_loc
        val_loc = frame.val_loc

        self.write(f"LD   1, 0({val_loc})"," Load return value into register 1")
        self.write(f"LD  6, {mem_loc}(0)", f" Load return address for main function into register 6")
        self.write("LDA  7, 0(6)", f" Jump to return address of main function")

        del functions['main']

    def fill_placeholders(self):
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    def instruction_rules(self,body,curr_function):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            case "FUNCTION-CALL":
                f_name = exp_children[0].value
                # Store location of temporary label that needs to be replaced
                temp_label = "!temp_" + str(self.label_id)
                self.label_id += 1
            
                if f_name== "print":
                    pass
                else:
                    pass

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC  1, {value}(0)", " Load integer-literal value into register 1")
            
            case "BOOLEAN-LITERAL":
                value = body.value
                if value == "true":
                    value = 1
                else:
                    value = 0

                self.write(f"LDC  1, {value}(0)", " Load boolean-literal value into register 1")
                val_loc = self.stack_frames[-1].val_loc
                self.write(f"ST   1, 0({val_loc})"," Store value into return value in stack frame")

            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                num_params=  params[0]
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = num_params - i
                        mem_loc = self.stack_frames[curr_function].address + offset
                        self.write(f"LDC   3, {mem_loc}(0)", f" Load offset for parameter {exp_value} into register 3")
                        self.write("LD  1, 0(3)", f" Load parameter {exp_value} value into register 1")
                        break

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp,curr_function)
                
                if exp_value == "-":
                    self.write("SUB  1, 0, 1"," Switch sign of value")

                elif exp_value == "not":
                    self.write("LDC  2, 1(0)", " Load value 1 into register 2")
                    self.write("SUB  1, 2, 1", " Flip boolean value")
            
            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                self.instruction_rules(left_exp,curr_function)
                self.write("LDC  4, 1(0)", " Load value 1 into temporary register 4")
                self.DMEM -= 1
                self.write("SUB  5, 5, 4", " Decrement memory offset")
                self.write("ST   1, 0(5)", " Store left expression value into memory")
                self.instruction_rules(right_exp,curr_function)
                self.write("LD   2, 0(5)", " Load left expression value from memory into register 2")
                self.write("ADD  5, 5, 4", " Increment memory offset")
                self.DMEM += 1 

                match exp_value:
                    case "+":
                        self.write("ADD  1, 2, 1", " Add left and right expression values")
                    case "-":
                        self.write("SUB  1, 2, 1", " Subtract left expression from right expression value")
                    case "*":
                        self.write("MUL  1, 2, 1", " Multiply left and right expression values")
                    case "/":
                        self.write("DIV  1, 2, 1", " Divide left expression by right expression value")
                    case "and":
                        self.write("MUL  1, 2, 1", " Compute logical AND for left and right expression values")
                    case "or":
                        self.write("ADD  1, 2, 1", " Compute logical OR for left and right expression values")
                    case "=":
                        self.write("SUB  1, 2, 1", " Subtract right expression from left expression value for equality check")
                        self.write("JEQ  1, 2(7)", " If Register 1 is 0, then jump to true handling")
                        self.write("LDC  1, 0(0)", " Load false (0) into register 1")
                        self.write("LDA  7, 1(7)", " Jump to end of equality handling")
                        self.write("LDC  1, 1(0)", " Load true (1) into register 1")
                    case "<":
                        self.write("SUB  1, 2, 1", " Subtract right expression from left expression value for less-than check")
                        self.write("JLT  1, 2(7)", " If Register 1 is negative, then jump to true handling")
                        self.write("LDC  1, 0(0)", " Load false (0) into register 1")
                        self.write("LDA  7, 1(7)", " Jump to end of less-than handling")
                        self.write("LDC  1, 1(0)", " Load true (1) into register 1")

            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----",header=True)
                condition_exp = exp_children[0]

                # Recursively evaluate the condition expression.
                # The resulting binary result will be stored in DMEM
                self.instruction_rules(condition_exp,curr_function)

                temp_label_else = "!temp_" + str(self.label_id)
                self.label_id += 1
                self.write(f"JEQ  1, {temp_label_else}(0)", " If condition is false, skip to ELSE block")

                # Recursively evaluate the THEN expression
                self.write(f"-----THEN-BLOCK-----",header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp,curr_function)
                temp_label_endif = "!temp_" + str(self.label_id)
                self.label_id += 1
                self.write(f"LDA  7, {temp_label_endif}(0)", " Skip the ELSE block")

                # Recursively evaluate the ELSE expression
                self.write(f"-----ELSE-BLOCK-----",header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp,curr_function)
                self.placeholders[temp_label_endif] = self.line_counter