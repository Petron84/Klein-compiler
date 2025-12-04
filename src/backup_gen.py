
from dataclasses import dataclass

# Keep KleinError import style consistent with your draft
from scanner import KleinError

# ---------- Stack frame model ----------
@dataclass
class StackFrame:
    address: int = 0       # base address for frame bookkeeping
    num_parm: int = 0      # number of parameters
    return_add: int = 0    # DMEM address where return address is stored

# ---------- Code Generator ----------
class Generator:
    """
    Rewrite of your 'backup.py' generator in the same style:
      - IMEM lines with numbered addresses and inline notes
      - DMEM grows downward from 1023
      - Placeholders for labels resolved at the end
      - Registers:
          R0 : constant 0
          R1 : value/return register
          R2 : temp value
          R3 : target memory address
          R4 : memory offsets / small immediates
          R5 : current memory address (stack top)
          R6 : current return address
          R7 : program counter
    """
    # Register aliases (match your comments)
    R0, R1, R2, R3, R4, R5, R6, R7 = 0, 1, 2, 3, 4, 5, 6, 7

    def __init__(self, tree, table):
        # From your draft: reach the list of function definitions
        # PROGRAM -> DEFINITION-LIST -> [DEFINITION...]
        self.AST = tree[-1].children[-1].children   # list of DEFINITION nodes
        self.symbol_table = table

        # IMEM, line numbering, and placeholders
        self.IMEM = []
        self.line_counter = 0
        self.placeholders = {}   # token -> absolute IMEM line
        self.label_id = 0

        # DMEM top pointer (stack grows downward)
        self.DMEM = 1023
        self.stack_frames = {}

    # ---------- top-level API ----------
    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    # ---------- emitter ----------
    def write(self, instruction, note, header=False):
        """
        Exactly match your output style: numbered lines except headers.
        """
        if header:
            self.IMEM.append(f"{instruction} | {note}")
        else:
            self.IMEM.append(f"{self.line_counter} : {instruction} | {note}")
            self.line_counter += 1

    def new_label(self, prefix="!temp_"):
        tok = f"{prefix}{self.label_id}"
        self.label_id += 1
        return tok

    # ---------- runtime bootstrap ----------
    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", "#", header=True)

        # Start runtime system: capture a 'return address' into R6
        self.write(" LDA 6, 5(7)", "# Start runtime system. Load return address into register 6")
        # DMEM[0] holds 1023; read it into R5
        self.write(" LD 5, 0(0)", "# Load DMEM[0] (contains the value 1023) into register 5.")
        # Save runtime return address at DMEM[1023]
        self.write(" ST 6, 0(5)", "# Store runtime return address at DMEM[1023].")

        # Pre-create the MAIN frame bookkeeping and reserve its return value slot
        self.create_frame(self.DMEM, "main")
        self.write(" LDC 4, 1(0)", "# Store value 1 in temporary register 4")
        self.write(" SUB 5, 5, 4", "# Decrement memory offset")
        self.DMEM -= 1

        # Jump into LOAD-ARGS section (filled later)
        self.write(" LDA 7, 4(7)", "# Load address of load-arguments into register 7.")
        # End of runtime section; HALT is reachable via the return path
        self.write(" HALT 0, 0, 0", "# Terminate runtime system.")

        # Built-in print (kept identical to your draft)
        self.write("------PRINT------", "#", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write(" OUT 1, 0, 0", "# Hardcoded print function")
        self.write(" LD 6, 0(5)", "# Load return addess from previous function call/stack frame.")
        self.write(" LDA 7, 0(6)", "# Load address of previous function call into register 7.")

    # ---------- function table and frames ----------
    def create_frame(self, address, fname):
        """
        Compute bookkeeping addresses for a function's frame.
        Return address is at:
            DMEM[address - num_params - 1]
        """
        num_params = self.symbol_table[fname].parameters[0]
        return_address = address - num_params - 1
        self.stack_frames[fname] = StackFrame(address=return_address,
                                              num_parm=num_params,
                                              return_add=return_address)

    def load_functions(self):
        """
        Map function name -> expression-list (body),
        and seed placeholders for labels '@fname'.
        """
        f_list = {}
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children  # EXPRESSION-LIST
            f_list[f_name] = f_body

            # Allocate a placeholder for '@f_name' label
            self.placeholders["@" + f_name] = -1

        return f_list

    # ---------- IMEM generation ----------
    def generate_imem(self, functions):
        # 1) LOAD ARGS
        self.write("----LOAD-ARGS----", "#", header=True)
        self.load_cli()

        # 2) MAIN first
        self.write("------MAIN------", "#", header=True)
        self.placeholders["@main"] = self.line_counter
        for exp in functions["main"]:
            self.instruction_rules(exp, "main")

        # Save MAIN’s return value to its reserved DMEM slot
        mem_loc = self.stack_frames["main"].return_add
        self.write(f" LDC 5, {mem_loc}(0)", "# Store the memory location of main return value")
        self.write(" ST 1, 0(5)", "# Store return value of into DMEM")

        # Print the final result and return to runtime
        self.write(" LD 1, 0(5)", "# Load Return Value from DMEM")
        self.write(" OUT 1, 0, 0", "# Output value from register 1.")
        self.write(" LD 5, 0(0)", "# Reset memory pointer")
        self.write(" LD 6, 0(5)", "# Load root return address into register 6")
        self.write(" LDA 7, 0(6)", "# Load return address back into register 7")

        # Remove main from function set
        del functions["main"]

        # 3) Other function bodies
        for f in functions:
            self.write(f"-----{f.upper()}-----", "#", header=True)
            self.placeholders[f"@{f}"] = self.line_counter

            body = functions[f]
            self.create_frame(self.DMEM, f)

            for exp in body:
                self.instruction_rules(exp, f)

            # Store function's final result in its reserved slot
            mem_loc = self.stack_frames[f].return_add
            self.write(f" LDC 5, {mem_loc}(0)", f"# Store the memory location of {f} return value")
            self.write(" ST 1, 0(5)", f"# Store return value of into DMEM")

            # Epilogue: compute and load return address (same as your draft)
            ret_add = mem_loc + self.stack_frames[f].num_parm + 1
            self.write(f" LDC 3, {ret_add}(0)", f"# Load return address for function {f} into register 3")
            self.write(" LD 6, 0(3)", f"# Load return address into register 6")
            self.write(" LDA 7, 0(6)", f"# Load return address back into register 7")

    # ---------- CLI args loader ----------
    def load_cli(self):
        """
        Load 'main' parameters from DMEM[1..N] into MAIN frame,
        reserve one extra slot for MAIN's return value.
        """
        cli_params = self.symbol_table['main'].parameters
        if cli_params[0] != 0:
            cli_params = cli_params[1]
        num_params = len(cli_params)

        for i, p in enumerate(cli_params):
            index = i + 1
            self.write(f" LDC 3, {index}(0)", f"# Load target memory location for command line argument {index}")
            self.write(f" LD 1, 0(3)", f"# Load command line argument {index} into register 1")
            self.write(f" ST 0, 0(3)", f"# Replace DMEM[{index}] with 0")

            # Push into MAIN frame
            self.write(" ST 1, 0(5)", "# Store command line argument into MAIN stack frame")

            # Move stack down; skip one extra cell for return value after last arg
            if i + 1 == num_params:
                self.write(" LDC 4, 2(0)", "# Load value 2 in temp register 4")
                self.DMEM -= 2
            else:
                self.write(" LDC 4, 1(0)", "# Load value 1 in temp register 4")
                self.DMEM -= 1

            self.write(" SUB 5, 5, 4", "# Decrement memory offset")

    # ---------- placeholder resolution ----------
    def fill_placeholders(self):
        """
        Replace all tokens like '@fname' or '!temp_#' with their final IMEM line indices.
        """
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    # ---------- expression compiler ----------
    def instruction_rules(self, node, curr_function):
        exp_type = node.type
        exp_value = node.value
        exp_children = node.children

        match exp_type:
            # -------- function call --------
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # Save a return point (placeholder label in R6, store to memory)
                ret_lbl = self.new_label()
                self.write(f" LDA 6, {ret_lbl}(0)", "# Load return address into R6")
                self.write(" ST 6, 0(5)", "# Store current return address into DMEM")

                if f_name == "print":
                    # Arg is child[1]
                    self.instruction_rules(exp_children[1], curr_function)
                    self.write(" LDA 7, @print(0)", "# Branch to builtin print")
                    self.placeholders[ret_lbl] = self.line_counter
                else:
                    # User-defined: push args, reserve return slot, branch
                    num_params = self.symbol_table[f_name].parameters[0]
                    self.create_frame(self.DMEM, f_name)

                    # Reserve one cell for callee bookkeeping (like in your draft)
                    self.write(" LDC 4, 1(0)", "# Load value 1 in temporary register 4")
                    self.DMEM -= 1
                    self.write(" SUB 5, 5, 4", "# Decrement memory offset")

                    args = exp_children[1].children if len(exp_children) > 1 else []

                    # Push all arguments (left-to-right)
                    for a in args:
                        self.instruction_rules(a, curr_function)
                        self.write(" ST 1, 0(5)", "# Store parameter into memory")
                        self.write(" LDC 4, 1(0)", "# Load value 1 into temporary register 4")
                        self.DMEM -= 1
                        self.write(" SUB 5, 5, 4", "# Decrement memory offset")

                    # Reserve 1 cell for the callee's return value
                    self.write(" LDC 4, 1(0)", "# Reserve return value cell")
                    self.write(" SUB 5, 5, 4", "# Decrement memory offset")
                    self.DMEM -= 1

                    # Jump to function body
                    self.write(f" LDA 7, @{f_name}(0)", f"# Branch to {f_name}")
                    self.placeholders[ret_lbl] = self.line_counter

                    # On return: load the return value from top (callee left it)
                    self.write(" LD 1, 0(5)", "# Load return value from DMEM into R1")

                    # Pop args + return + extra bookkeeping (num_params + 2)
                    offset = num_params + 2
                    self.write(f" LDC 4, {offset}(0)", "# Pop args+ret bookkeeping")
                    self.write(" ADD 5, 5, 4", "# Increment memory offset")
                    self.DMEM += offset

            # -------- literals --------
            case "INTEGER-LITERAL":
                value = int(node.value)
                self.write(f" LDC 1, {value}(0)", "# Load integer-literal value into R1")

            case "BOOLEAN-LITERAL":
                value = 1 if str(node.value).lower() == "true" else 0
                self.write(f" LDC 1, {value}(0)", "# Load boolean-literal value into R1")

            # -------- identifiers (parameters) --------
            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                num_params = params[0]
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        # Parameter at (frame.address + (num_params - i))
                        offset = num_params - i
                        mem_loc = self.stack_frames[curr_function].address + offset
                        self.write(f" LDC 3, {mem_loc}(0)", f"# Param {exp_value} location -> R3")
                        self.write(" LD 1, 0(3)", f"# Load param {exp_value} into R1")
                        break

            # -------- unary --------
            case "UNARY-EXPRESSION":
                inner = exp_children[0]
                self.instruction_rules(inner, curr_function)
                if exp_value == "-":
                    self.write(" SUB 1, 0, 1", "# Negate (0 - R1)")
                elif exp_value == "not":
                    self.write(" LDC 2, 1(0)", "# Load 1 into R2")
                    self.write(" SUB 1, 2, 1", "# Flip boolean (1 - R1)")
                else:
                    raise KleinError(f"Unknown unary operator: {exp_value}")

            # -------- binary --------
            case "BINARY-EXPRESSION":
                left = exp_children[0]
                right = exp_children[1]

                # Evaluate left -> store -> eval right -> load left back
                self.instruction_rules(left, curr_function)
                self.write(" LDC 4, 1(0)", "# temp 4 = 1")
                self.DMEM -= 1
                self.write(" SUB 5, 5, 4", "# stack down")
                self.write(" ST 1, 0(5)", "# save left in DMEM")

                self.instruction_rules(right, curr_function)
                self.write(" LD 2, 0(5)", "# R2 = left")
                self.write(" ADD 5, 5, 4", "# stack up")
                self.DMEM += 1

                # Arithmetic / boolean (non-short-circuit) operators
                match exp_value:
                    case "+":
                        self.write(" ADD 1, 2, 1", "# R1 = left + right")
                    case "-":
                        self.write(" SUB 1, 2, 1", "# R1 = left - right")
                    case "*":
                        self.write(" MUL 1, 2, 1", "# R1 = left * right")
                    case "/":
                        self.write(" DIV 1, 2, 1", "# R1 = left / right")
                    case "and":
                        self.write(" MUL 1, 2, 1", "# boolean AND via multiply")
                    case "or":
                        self.write(" ADD 1, 2, 1", "# boolean OR via add (0/1 inputs)")

                    # Relational ops: set R1 to 0/1 using labels (consistent pattern)
                    case "=":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JEQ 1, {t_lbl}(0)", "# if == 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case "<":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JLT 1, {t_lbl}(0)", "# if < 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case "<=":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JLE 1, {t_lbl}(0)", "# if <= 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case ">":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JGT 1, {t_lbl}(0)", "# if > 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case ">=":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JGE 1, {t_lbl}(0)", "# if >= 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case "!=":
                        t_lbl = self.new_label()
                        e_lbl = self.new_label()
                        self.write(" SUB 1, 2, 1", "# temp = left - right")
                        self.write(f" JNE 1, {t_lbl}(0)", "# if != 0 -> true")
                        self.write(" LDC 1, 0(0)", "# false")
                        self.write(f" LDA 7, {e_lbl}(0)", "# jump end")
                        self.placeholders[t_lbl] = self.line_counter
                        self.write(" LDC 1, 1(0)", "# true")
                        self.placeholders[e_lbl] = self.line_counter

                    case _:
                        raise KleinError(f"Unknown binary operator: {exp_value}")

            # -------- if-expression --------
            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----", "#", header=True)

                cond = exp_children[0]
                self.instruction_rules(cond, curr_function)

                l_else = self.new_label()
                self.write(f" JEQ 1, {l_else}(0)", "# if condition false -> ELSE")

                # THEN
                self.write("-----THEN-BLOCK-----", "#", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function)

                l_end = self.new_label()
                self.write(f" LDA 7, {l_end}(0)", "# skip ELSE")
                # ELSE
                self.write("-----ELSE-BLOCK-----", "#", header=True)
                self.placeholders[l_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function)
                self.placeholders[l_end] = self.line_counter

            case _:
                raise KleinError(f"Unhandled node type: {exp_type}")
