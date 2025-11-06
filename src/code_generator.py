from scanner import KleinError
import sys

class Generator():
    def __init__(self,tree,table):
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Register convention:
            # Register 0 : Value 0
            # Register 1 : Value for outputs/returns
            # Register 2 : Temporary values
            # Register 3 : Temporary values
            # Register 4 : Memory offset
            # Register 5 : Memory location
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
                            
        self.IMEM = [
            "LDA  6, 5(7)", # Start runtime system. Load return address into register 6
            "LD   5, 0(0)", # Load DMEM[0] (contains the value 1023) into register 5.
            "ST   6, 4(5)", # Store runtime return address at DMEM[1023 + 0].
            "LDC  3, 1(0)", # Store value 1 in temporary register 3
            "SUB  4, 4, 3", # Decrement memory offset
            "LDA  7, 3(7)", # Load return address of main into register 7.
            "OUT  1, 0, 0", # Output value from register 1.
            "HALT 0, 0, 0", # Terminate runtime system.
            "OUT  1, 0, 0", # Hardcoded print function
            "LD   6, 0(5)", # Load return addess from previous function call/stack frame.
            "LDA  7, 0(6)"  # Load address of previous function call into register 7.
        ]

    def generate(self):
        functions = self.load_functions()
        self.generate_imem(functions)
        return self.IMEM

    def load_functions(self):
        f_list = {}

        # Create a mapping of function names to function body. All other information is stored in symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
        return f_list
    
    def generate_imem(self,functions):
        # Create runtime stack frame
        main_body = functions['main']
        for exp in main_body:
            self.instruction_rules(exp)
        self.IMEM.append("LD   6, 0(5)")
        self.IMEM.append("LDA  7, 0(6)")

    def instruction_rules(self,body):
        exp_type = body.type
        exp_children = body.children
        match exp_type:
            case "FUNCTION-CALL":
                if exp_children[0].value == "print":
                    value = exp_children[1].value
                    self.IMEM.append("LDA  6, 3(7)") # Load return address into R6
                    self.IMEM.append("ST   6, 4(5)") # Store current return address in memory location 1022
                    self.IMEM.append(f"LDC  1, {value}(0)") # Load print's value into register 1
                    self.IMEM.append("LDA  7, 8(0)") # Load address of print IMEM block
                    self.IMEM.append("LDC  3, 1(0)") # Store value 1 in temporary register 3
                    self.IMEM.append("SUB  4, 4, 3") # Decrement memory offset
                else:
                    pass
            case "INTEGER-LITERAL":
                value = body.value
                self.IMEM.append(f"LDC  1, {value}(0)")