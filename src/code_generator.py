
from scanner import KleinError
import sys

class StackFrame():
    def __init__(self, address=0, num_parm=0, return_add=0):
        self.address = address
        self.num_parm = num_parm
        self.return_add = return_add

class Generator():
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
        self.DMEM = 1023
        self.stack_frames = {}

        # Register convention:
        # R0 : 0
        # R1 : output/return value
        # R2 : temporary
        # R3 : target memory address
        # R4 : memory offsets
        # R5 : current memory pointer (SP) - points at topmost *used* cell
        # R6 : current return address
        # R7 : program counter

        # Stack frame (Convention A, top-down):
        # [RA][Arg1]...[ArgN][ReturnValue]
        # Frames expand downward from DMEM[1023] to DMEM[0].
        # DMEM[0] contains 1023.

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", '#', header=True)
        # Start runtime: load address of runtime HALT into R6 and save at DMEM[1023]
        self.write(" LDA 6, 5(7)", '# Start runtime system. Load return address into register 6')
        self.write(" LD 5, 0(0)", '# Load DMEM[0] (contains 1023) into R5.')
        self.write(" ST 6, 0(5)", '# Store runtime return address at DMEM[1023].')
        # Establish 'main' frame metadata (addresses computed relative to 1023)
        self.create_frame(self.DMEM, 'main')

        # (No pre-decrement here; main’s frame is allocated in load_cli())

        # Branch to LOAD-ARGS, then HALT after program returns from main
        self.write(" LDA 7, 4(7)", '# Load address of load-arguments into R7.')
        self.write(" HALT 0, 0, 0", '# Terminate runtime system.')

        # ---- PRINT primitive ----
        self.write("------PRINT------", '#', header=True)
        self.placeholders["@print"] = self.line_counter
        self.write(" OUT 1, 0, 0", '# Hardcoded print function')
        self.write(" LD 6, 0(5)", '# Load return address from caller’s frame (top cell).')
        self.write(" LDA 7, 0(6)", '# Return to caller.')

    def write(self, instruction, note, header=False):
        if header:
            self.IMEM.append(f"{instruction} | {note}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} | {note}")
        self.line_counter += 1

    def create_frame(self, address, fname):
        num_params = self.symbol_table[fname].parameters[0]
        # Return slot lives at: address - num_params - 1 (Convention A)
        return_address = address - num_params - 1
        address = return_address
        self.stack_frames[fname] = StackFrame(address=address,
                                              num_parm=num_params,
                                              return_add=return_address)

    def load_functions(self):
        f_list = {}
        # Map function names to bodies; other info is in the symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            placeholder_name = "@" + f_name
            self.placeholders[placeholder_name] = -1
        return f_list

    def generate_imem(self, functions):
        # ---- LOAD ARGS ----
        self.write("----LOAD-ARGS----", "#", header=True)
        self.load_cli()

        # ---- MAIN ----
        main_body = functions['main']
        self.write("------MAIN------", '#', header=True)
        self.placeholders['@main'] = self.line_counter

        for exp in main_body:
            self.instruction_rules(exp, "main")

        # Store main's return into its reserved slot, then print & exit to runtime
        mem_loc = self.stack_frames['main'].return_add
        self.write(f"LDC 5, {mem_loc}(0)", "# R5 = address of main's return slot")
        self.write("ST 1, 0(5)", "# Store main's return value")

        # Main epilogue: print, reset SP, return to runtime HALT via root RA
        self.write("LD 1, 0(5)", "# Load main's return value into R1")
        self.write("OUT 1, 0, 0", "# Output value from R1.")
        self.write("LD 5, 0(0)", "# Reset SP to DMEM[0] (1023)")
        self.write("LD 6, 0(5)", "# Load root return address (DMEM[1023]) into R6")
        self.write("LDA 7, 0(6)", "# Return to runtime HALT")

        # Generate other functions
        del functions['main']
        for f in functions:
            self.write(f"-----{f.upper()}-----", '#', header=True)
            self.placeholders[f"@{f}"] = self.line_counter
            body = functions[f]
            # Compute static frame addresses for identifiers
            self.create_frame(self.DMEM, f)

            for exp in body:
                self.instruction_rules(exp, f)

            # Function epilogue: store return, load caller RA, return to caller
            mem_loc = self.stack_frames[f].return_add
            self.write(f"LDC 5, {mem_loc}(0)", f"# R5 = {f} return value slot")
            self.write("ST 1, 0(5)", f"# Store function return into DMEM")
            ret_add = mem_loc + self.stack_frames[f].num_parm + 1  # caller's saved RA
            self.write(f"LDC 3, {ret_add}(0)", f"# Address of caller's saved RA")
            self.write("LD 6, 0(3)", "# Load caller return address into R6")
            self.write("LDA 7, 0(6)", "# Return to caller")

    def load_cli(self):
        cli_params = self.symbol_table['main'].parameters
        if cli_params[0] != 0:
            cli_params = cli_params[1]
            num_params = len(cli_params)
            for i, p in enumerate(cli_params):
                index = i + 1
                # Load arg i from DMEM[index], clear DMEM[index], push into main frame
                self.write(f"LDC 3, {index}(0)", f"# Target location for CLI arg {index}")
                self.write(f"LD 1, 0(3)", f"# Load CLI arg {index} into R1")
                self.write(f"ST 0, 0(3)", f"# Clear DMEM[{index}]")
                self.write(f"ST 1, 0(5)", "# Store arg in MAIN frame")
                if i + 1 == num_params:
                    # Reserve main's return slot: decrement by 2 on last arg
                    self.write('LDC 4, 2(0)', '# R4 = 2')
                    self.DMEM -= 2
                else:
                    self.write('LDC 4, 1(0)', '# R4 = 1')
                    self.DMEM -= 1
                self.write('SUB 5, 5, 4', '# SP -= R4')

    def fill_placeholders(self):
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    def instruction_rules(self, body, curr_function):
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # Store temp label for call-site return
                temp_label = "!temp_" + str(self.label_id)
                self.label_id += 1

                # Save return address at the top of caller's frame (Convention A)
                self.write(f"LDA 6, {temp_label}(0)", '# Load return address into R6')
                self.write("ST 6, 0(5)", '# Save current return address into DMEM at top cell')

                if f_name == "print":
                    # Evaluate expression, print uses R1 and returns to caller
                    self.instruction_rules(exp_children[1], curr_function)
                    self.write("LDA 7, @print(0)", '# Branch to PRINT primitive')
                    self.placeholders[temp_label] = self.line_counter
                else:
                    # Prepare callee frame metadata (static addresses for identifiers)
                    num_params = self.symbol_table[f_name].parameters[0]
                    self.create_frame(self.DMEM, f_name)

                    # Push arguments: one decrement per argument, then store
                    args = exp_children[1].children
                    for a in args:
                        self.write("LDC 4, 1(0)", "# R4 = 1")
                        self.write("SUB 5, 5, 4", "# SP-- (reserve arg cell)")
                        self.DMEM -= 1
                        self.instruction_rules(a, curr_function)
                        self.write("ST 1, 0(5)", "# Store argument value")

                    # Reserve return value slot
                    self.write("LDC 4, 1(0)", "# R4 = 1")
                    self.write("SUB 5, 5, 4", "# SP-- (reserve return slot)")
                    self.DMEM -= 1

                    # Jump to callee
                    self.write(f"LDA 7, @{f_name}(0)", f'# Branch to {f_name}')
                    self.placeholders[temp_label] = self.line_counter

                    # After return: load result and pop (N args + 1 return slot)
                    self.write("LD 1, 0(5)", '# Load return value from DMEM into R1')
                    offset = num_params + 1
                    self.write(f"LDC 4, {offset}(0)", '# Pop args + return slot')
                    self.write("ADD 5, 5, 4", '# SP += offset')
                    self.DMEM += offset

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", "# Load integer-literal into R1")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", "# Load boolean-literal into R1")

            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                num_params = params[0]
                # Find parameter index and compute absolute address
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        # Param i is at: return_slot + (num_params - i)
                        offset = num_params - i
                        mem_loc = self.stack_frames[curr_function].address + offset
                        self.write(f"LDC 3, {mem_loc}(0)", f"# Address for param {exp_value}")
                        self.write("LD 1, 0(3)", f"# Load param {exp_value} into R1")
                        break

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", "# Negate value")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", "# R2 = 1")
                    self.write("SUB 1, 2, 1", "# Logical NOT")

            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]

                # Evaluate left; spill to stack
                self.instruction_rules(left_exp, curr_function)
                self.write("LDC 4, 1(0)", "# R4 = 1")
                self.write("SUB 5, 5, 4", "# SP-- (reserve temp cell)")
                self.DMEM -= 1
                self.write("ST 1, 0(5)", "# Save left value")

                # Evaluate right; restore left to R2; release temp cell
                self.instruction_rules(right_exp, curr_function)
                self.write("LD 2, 0(5)", "# Load left value into R2")
                self.write("ADD 5, 5, 4", "# SP++ (free temp cell)")
                self.DMEM += 1

                match exp_value:
                    case "+":
                        self.write("ADD 1, 2, 1", "# Add")
                    case "-":
                        self.write("SUB 1, 2, 1", "# Subtract (right from left)")
                    case "*":
                        self.write("MUL 1, 2, 1", "# Multiply")
                    case "/":
                        self.write("DIV 1, 2, 1", "# Divide")
                    case "and":
                        self.write("MUL 1, 2, 1", "# Logical AND")
                    case "or":
                        self.write("ADD 1, 2, 1", "# Logical OR")
                    case "=":
                        self.write("SUB 1, 2, 1", "# Equality: left - right")
                        self.write("JEQ 1, 2(7)", "# If zero, jump to true")
                        self.write("LDC 1, 0(0)", "# false")
                        self.write("LDA 7, 1(7)", "# skip true")
                        self.write("LDC 1, 1(0)", "# true")
                    case "<":
                        self.write("SUB 1, 2, 1", "# Less-than: left - right")
                        self.write("JLT 1, 2(7)", "# If negative, jump to true")
                        self.write("LDC 1, 0(0)", "# false")
                        self.write("LDA 7, 1(7)", "# skip true")
                        self.write("LDC 1, 1(0)", "# true")

            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----", '#', header=True)
                condition_exp = exp_children[0]
                # Evaluate condition; result in R1
                self.instruction_rules(condition_exp, curr_function)

                temp_label_else = "!temp_" + str(self.label_id)
                self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", "# If false → ELSE")

                # THEN
                self.write("-----THEN-BLOCK-----", '#', header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function)

                temp_label_endif = "!temp_" + str(self.label_id)
                self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", "# Skip ELSE")

                # ELSE
                self.write("-----ELSE-BLOCK-----", '#', header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function)
                self.placeholders[temp_label_endif] = self.line_counter
