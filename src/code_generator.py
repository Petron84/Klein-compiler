from scanner import KleinError
import sys

class StackFrame():
    def __init__(self, address=0, num_parm=0, return_add=0):
        self.address = address
        self.num_parm = num_parm
        self.return_add = return_add

class Generator():
    def __init__(self,tree,table):
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table
        # placeholders for function jumps
        self.placeholders = {}
        self.line_counter = 0
        self.IMEM = []
        # reference to determine tops of stack frames in DMEM
        self.DMEM = 1023
        self.stack_frames = {}

        # Register convention:
            # Register 0 : Value 0
            # Register 1 : Value for outputs/returns
            # Register 2 : Temporary values
            # Register 3 : Target Memory Location
            # Register 4 : Memory offsets
            # Register 5 : Current Memory Location
            # Register 6 : Current return address
            # Register 7 : program counter

        # Stack frame structure:
            # Return address R6
            # Parameters 1 - N (expressions)
            # Return Value R1

        # DMEM structure:
            # Three components:
                # Return address
                # Array of "parameters", i.e., every function "jump" to IMEM blocks
                # Store return value
            # Stack frames expand downward from DMEM[1023] to DMEM[1023 - N].
            # DMEM[0] is the integer 1023
            # Command line arguments stored in DMEM from DMEM[1] to DMEM[N]
                            
    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM
    
    def initialize(self):
            self.write("-----INITIALIZE RUNTIME SYSTEM-----", '#',header=True)
            # Space added in front of instructions here to help with aligning all instructions in output.
            self.write(" LDA  6, 5(7)", '# Start runtime system. Load return address into register 6')
            self.write(" LD   5, 0(0)", '# Load DMEM[0] (contains the value 1023) into register 5.')
            self.write(" ST   6, 0(5)", '# Store runtime return address at DMEMself.write(1023 + 0].')
            self.create_frame(self.DMEM,'main')
            self.write(" LDC  4, 1(0)", '# Store value 1 in temporary register 4')
            self.write(" SUB  5, 5, 4", '# Decrement memory offset')
            self.DMEM -= 1
            self.write(" LDA  7, 4(7)", '# Load address of load-arguments into register 7.')
            self.write(" HALT 0, 0, 0", '# Terminate runtime system.')
            self.write("-----PRINT-----",'#',header=True)
            self.placeholders["@print"] = self.line_counter
            self.write(" OUT  1, 0, 0", '# Hardcoded print function')
            self.write(" LD   6, 0(5)", '# Load return addess from previous function call/stack frame.')
            self.write(" LDA  7, 0(6)",  '# Load address of previous function call into register 7.')
            
    def write(self, instruction, note, header=False):
        if header:
            self.IMEM.append(f"{instruction} | {note}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} | {note}")
            self.line_counter += 1
    
    def create_frame(self,address,fname):
        num_params = self.symbol_table[fname].parameters[0]
        return_address = address - num_params - 1
        self.stack_frames[fname] = StackFrame(address=address, num_parm=num_params, return_add=return_address)

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
        self.write("-----LOAD ARGUMENTS-----","#",header=True)
        self.load_cli()

        main_body = functions['main']
        self.write("-----MAIN-----",'#',header=True)
        self.placeholders['@main'] = self.line_counter

        for exp in main_body:
            self.instruction_rules(exp,"main")
        del functions['main']

        for f in functions:
            self.write(f"-----{f.upper()}-----",'#')
            body = functions[f]
            for exp in body:
                self.instruction_rules(exp)
        mem_loc = self.stack_frames['main'].return_add # Retrieve memory address of return value
        self.write(f"LDC  5, {mem_loc}(0)", f"# Store the memory location of main return value")
        self.write(f"LD   1, 0(5)","# Load Return Value from DMEM")
        self.write("OUT  1, 0, 0", '# Output value from register 1.')
        self.write('LD   5, 0(0)', '# Reset memory pointer')
        self.write("LD   6, 0(5)", "# Load root return address into register 6")
        self.write("LDA  7, 0(6)", "# Load return address back into register 7")

    def load_cli(self):
        cli_params = self.symbol_table['main'].parameters
        if cli_params[0] != 0:
            cli_params = cli_params[1]
            num_params = len(cli_params)
            for i,p in enumerate(cli_params):
                self.write('IN   1, 0, 0',f'# Load Command Line Argument {i+1} into register 1')
                self.write('ST   1, 0(5)', "# Store argument in DMEM")
                if i+1 == num_params:
                    # Skip a memory location - save this location for stack frame return value
                    self.write('LDC  4, 2(0)','# Load value 2 in temp register 4')
                    self.DMEM -= 2
                else:
                    self.write('LDC  4, 1(0)','# Load value 1 in temp register 4')
                    self.DMEM -= 1
                self.write('SUB  5, 5, 4','# Decrement memory offset')
    
    def fill_placeholders(self):
        for i in range(len(self.IMEM)):
            for p, v in self.placeholders.items():
                self.IMEM[i] = self.IMEM[i].replace(str(p),str(v))

    def instruction_rules(self,body,curr_function):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children
        match exp_type:
            case "FUNCTION-CALL":
                if exp_children[0].value == "print":
                    value = exp_children[1].value
                    value_type = exp_children[1].type

                    if value_type == "IDENTIFIER":
                        params = self.symbol_table[curr_function].parameters
                        # Determine which parameter is used. Necessary for offset calculations
                        # If param 1, then offset = 1. If param 2, then offset = 2
                        for i, p in enumerate(params[1]):
                            if p[0] == value:
                                offset = i+1
                            else:
                                pass # Error
                        mem_loc = self.stack_frames[curr_function].address - offset
                        self.write("LDA  6, 7(7)", '# Load return address into R6')
                        self.write("ST   6, 0(5)", '# Store current return address into DMEM')
                        self.write(f"LDC  3, {mem_loc}(0)", f"# Store the target memory location for the parameter {value}")
                        self.write(f"SUB  4, 3, 5", "# Calculate memory offset. I.E. Target = 1023 and Current = 1020, R4 = 3")
                        self.write(f"ADD  5, 5, 4", "# Add offset to current memory location.")
                        self.write(f"LD   1, 0(5)", "# Load the value of parameter from memory into register 1")
                        self.write(f"SUB  5, 5, 4","# Subtract the offset off of the memory pointer")
                        
                    else:
                        self.write("LDA  6, 3(7)", '# Load return address into R6')
                        self.write("ST   6, 0(5)", '# Store current return address into DMEM')

                        if value_type == "BOOLEAN-LITERAL":
                            if value == "true":
                                value = 1
                            else:
                                value = 0

                        self.write(f"LDC  1, {value}(0)", "# Load print's value into register 1")

                    self.write("LDA  7, @print(0)", '# Load address of print IMEM block - branch to print')
                    self.write("LDC  4, 1(0)", '# Store value 1 in temporary register 4')
                    self.DMEM -= 1
                    self.write("SUB  5, 5, 4", '# Decrement memory offset')
                else:
                    # FINISH LATER. Calls to user-defined functions
                    pass

            case "INTEGER-LITERAL": # Integer returns
                value = body.value
                self.write(f"LDC  1, {value}(0)", "# Load integer-literal value into register 1")
                mem_loc = self.stack_frames[curr_function].return_add # Retrieve return address of return value
                self.write(f"LDC  3, {mem_loc}(0)", f"# Store the target memory location for the parameter {value}")
                self.write(f"SUB  4, 3, 5", "# Calculate memory offset. I.E. Target = 1023 and Current = 1020, R4 = 3")
                self.write(f"ADD  5, 5, 4", "# Add offset to current memory location.")
                self.write(f"ST   1, 0(5)", "# Store the return value into memory")
                self.write(f"SUB  5, 5, 4","# Subtract the offset off of the memory pointer")
            
            case "BOOLEAN-LITERAL": # Boolean returns
                value = body.value
                if value == "true":
                    value = 1
                else:
                    value = 0

                self.write(f"LDC  1, {value}(0)", "# Load boolean-literal value into register 1")
                mem_loc = self.stack_frames[curr_function].return_add # Retrieve return address of return value
                self.write(f"LDC  3, {mem_loc}(0)", f"# Store the target memory location for the parameter {value}")
                self.write(f"SUB  4, 3, 5", "# Calculate memory offset. I.E. Target = 1023 and Current = 1020, R4 = 3")
                self.write(f"ADD  5, 5, 4", "# Add offset to current memory location.")
                self.write(f"ST   1, 0(5)", "# Store the return value into memory")
                self.write(f"SUB  5, 5, 4","# Subtract the offset off of the memory pointer")

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp,curr_function)

                if exp_value == "-":
                    self.write("SUB  1, 0, 1","# Switch sign of value")

                elif exp_value == "not":
                    self.write("LDC  2, 1(0)", "# Load value 1 into register 2")
                    self.write("SUB  1, 2, 1", "# Flip boolean value")
                    self.write("ST   2, 0(5)", "# Store the return value into memory")

                mem_loc = self.stack_frames[curr_function].return_add # Retrieve return address of return value
                self.write(f"LDC  3, {mem_loc}(0)", f"# Store the target memory location")
                self.write(f"SUB  4, 3, 5", "# Calculate memory offset. I.E. Target = 1023 and Current = 1020, R4 = 3")
                self.write(f"ADD  5, 5, 4", "# Add offset to current memory location.")
                self.write(f"ST   1, 0(5)", "# Store the return value into memory")
                self.write(f"SUB  5, 5, 4","# Subtract the offset off of the memory pointer")