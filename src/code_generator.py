
import sys

class StackFrame:
    def __init__(self, name, top, num_params):
        self.name = name          # function name
        self.top = top            # Top of frame - base address in DMEM (return address at offset 0)
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1  # memory location of return value


class Generator:
    def __init__(self, tree, table):
        # Program AST: list of function declarations; last module → last child → function list
        self.AST = tree[-1].children[-1].children
        self.symbol_table = table

        # Unique temporary label counter
        self.label_id = 0

        # placeholders for unknown addresses
        self.placeholders = {}

        # Instruction line counter
        self.line_counter = 0

        # Instruction Memory
        self.IMEM = []

        # reference to determine tops of stack frames in DMEM
        self.DMEM = 1

        self.stack_frames = []

        # Register convention:
        # R0 : constant 0
        # R1 : current value / return value
        # R2 : temporary / left operand
        # R3 : temporary / right operand
        # R4 : base of next callee frame (scratch)
        # R5 : DMEM pointer (current frame base)
        # R6 : temporary return address
        # R7 : program counter

        # Stack frame structure (at base R5):
        #   [0] Return address
        #   [1..N] Parameters
        #   [N+1] Return value

        # DMEM structure:
        #   DMEM[0] = 1023 (max address)
        #   DMEM[1..K] = CLI args for main
        #   Then stack frames grow upward

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)

        num_params = self.symbol_table['main'].parameters[0]

        # Set DMEM to top of main stack frame
        self.DMEM = num_params + 1

        # Create stack frame for initial main function call
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        # Set DMEM pointer to main stack frame
        self.write(f"LDC 5, {main_frame.top}(0)", " Set DMEM pointer to main stack frame")
        self.write("ADD 4, 5, 0", " Set top of caller frame (scratch)")

        # Load CLI args into main frame
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f" Load CLI arg {i} into register")
            self.write(f"ST 2, {i}(5)", f" Store the argument into stack frame")

        # Store runtime return address in main frame (return after main finishes)
        self.write("LDA 6, 2(7)", " Calculate return address (two lines ahead)")
        self.write("ST 6, 0(5)", " Store return address in main stack frame")

        # Set pointer to free stack frame (after main's frame)
        self.DMEM = main_frame.top + num_params + 2

        # Jump to main
        self.write("LDA 7, @main(0)", " Load address of main IMEM block - branch to function")

        # Runtime end: print the returned value from main and halt
        self.write("OUT 1, 0, 0", " Return result")
        self.write("HALT 0, 0, 0", " Terminate program execution")

        # Built-in print primitive
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        self.write("OUT 1, 0, 0", " Hardcoded print function")
        self.write("LD 6, 0(5)", " Load return address from stack frame")
        self.write("LDA 7, 0(6)", " Jump to return address")

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
        # Create a mapping of function names to function body. All other information is stored in symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            f_tag = "@" + f_name
            self.placeholders[f_tag] = -1
        return f_list

    def generate_imem(self, functions):
        # MAIN
        self.write("------MAIN------", header=True)
        self.placeholders['@main'] = self.line_counter

        main_body = functions['main']
        # Emit body; only the LAST expression writes the function's return slot
        for i, exp in enumerate(main_body):
            is_last = (i == len(main_body) - 1)
            self.instruction_rules(exp, "main", callee=False, return_context=is_last)

        # Epilogue: load main return and jump to runtime continuation
        frame = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        offset = main_params + 1
        self.write(f"LD 1, {offset}(5)", " Load return value into register 1")
        self.write("LD 6, 0(5)", " Load return address for main function into register 6")
        self.write("LDA 7, 0(6)", " Jump to runtime continuation")

        # Other functions
        del functions['main']
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f'@{f}'] = self.line_counter

            num_params = self.symbol_table[f].parameters[0]
            offset = num_params + 1

            # Create callee frame context (for book-keeping only)
            self.create_frame(f)

            # Emit body; only the LAST expression writes the function's return slot
            for i, exp in enumerate(body):
                is_last = (i == len(body) - 1)
                self.instruction_rules(exp, f, callee=True, return_context=is_last)

            # Store function result (R1) into its own frame and return
            self.write(f"ST 1, {offset}(5)", " Store function result into stack frame")
            self.write("LD 6, 0(5)", " Load return address")
            self.write("LDA 7, 0(6)", " Return to caller")

            self.stack_frames.pop()

    def fill_placeholders(self):
        # Replace placeholders with actual addresses
        for i in range(len(self.IMEM)):
            for p in sorted(self.placeholders.keys(), key=len, reverse=True):
                self.IMEM[i] = self.IMEM[i].replace(p, str(self.placeholders[p]))

    def instruction_rules(self, body, curr_function, callee=False, return_context=False):
        """
        Generate code for a single AST expression 'body' within function 'curr_function'.
        - callee=True  : evaluating in a nested/callee context; never write to caller's return slot.
        - return_context=True : this expression is the function's *final* value; write to return slot.
        """
        exp_type = body.type
        exp_value = body.value
        exp_children = body.children

        match exp_type:
            # ----------------------------------------------------------------------
            # FUNCTION CALL (ordinary + built-in print)
            # ----------------------------------------------------------------------
            case "FUNCTION-CALL":
                f_name = exp_children[0].value

                # Parameter counts from the symbol table
                callee_params = self.symbol_table[f_name].parameters[0]
                caller_params = self.symbol_table[curr_function].parameters[0]

                # Frame sizes: return address + parameters + return slot
                callee_size = callee_params + 2

                # Special built-in "print": one argument, no return value
                if f_name == "print":
                    # Evaluate its single argument → result in R1
                    self.instruction_rules(exp_children[1], curr_function, callee=True, return_context=False)

                    # Calculate callee base (once)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 4, {callee_size}(5)", " Base of callee frame")

                    # Install return address and jump
                    self.write(f"LDA 6, {temp_label}(0)", " Return address")
                    self.write("ST 6, 0(4)", " Store return addr in callee frame")
                    self.write("ADD 5, 4, 0", " Push new frame")
                    self.write("LDA 7, @print(0)", " Call print")

                    # Place return label and pop back to caller
                    self.placeholders[temp_label] = self.line_counter
                    self.write(f"LDC 2, {callee_size}(0)", " Caller frame size")
                    self.write("SUB 5, 5, 2", " Pop frame")
                    # No return value produced by print
                    # If this print is the final expression, do NOT clobber return slot

                else:
                    # Ordinary call:
                    # 1) Evaluate arguments and store into future frame
                    args = exp_children[1].children

                    # Compute callee frame base ONCE
                    self.write(f"LDA 4, {callee_size}(5)", " Base of callee frame")

                    # Store parameters at offsets 1..N in callee frame
                    for i, arg in enumerate(args):
                        self.instruction_rules(arg, curr_function, callee=True, return_context=False)  # result → R1
                        self.write(f"ST 1, {i+1}(4)", f" Store argument {i} in callee")

                    # 2) Install return address and jump
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Return address")
                    self.write("ST 6, 0(4)", " Store return in callee frame")
                    self.write("ADD 5, 4, 0", " Push callee frame")
                    self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")

                    # 3) Upon return: load return value + restore caller frame
                    self.placeholders[temp_label] = self.line_counter
                    return_slot = callee_params + 1  # location of callee return
                    self.write(f"LD 1, {return_slot}(5)", " Load function result")
                    self.write(f"LDC 2, {callee_size}(0)", " Caller frame size")
                    self.write("SUB 5, 5, 2", " Pop back to caller")
                    # DO NOT adjust R4 here; it's scratch and will be recomputed as needed.

                    # 4) If we are producing the caller’s final value, store it
                    if return_context:
                        caller_return = caller_params + 1
                        self.write(f"ST 1, {caller_return}(5)", " Store result into caller’s frame")

            # ----------------------------------------------------------------------
            # LITERALS
            # ----------------------------------------------------------------------
            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", " Load integer-literal value into R1")
                if return_context:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store result into current frame's return slot")

            case "BOOLEAN-LITERAL":
                value = 1 if body.value == "true" else 0
                self.write(f"LDC 1, {value}(0)", " Load boolean-literal value into R1")
                if return_context:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------------------------------------------------------
            # IDENTIFIER (parameter load)
            # ----------------------------------------------------------------------
            case "IDENTIFIER":
                params = self.symbol_table[curr_function].parameters
                for i, p in enumerate(params[1]):
                    if p[0] == exp_value:
                        offset = i + 1
                        self.write(f"LD 1, {offset}(5)", f" Load parameter '{exp_value}' into R1")
                        break
                if return_context:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------------------------------------------------------
            # UNARY
            # ----------------------------------------------------------------------
            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function, callee=True, return_context=False)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", " Negate value in R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", " Load 1 into R2")
                    self.write("SUB 1, 2, 1", " Logical NOT: 1 - R1")
                if return_context:
                    curr_params = self.symbol_table[curr_function].parameters[0]
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------------------------------------------------------
            # BINARY
            # ----------------------------------------------------------------------
            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                curr_params = self.symbol_table[curr_function].parameters[0]

                single_values = ["INTEGER-LITERAL", "BOOLEAN-LITERAL", "IDENTIFIER"]

                if left_exp.type in single_values and right_exp.type not in single_values:
                    # Evaluate right → R1, stash in R3
                    self.instruction_rules(right_exp, curr_function, callee=True, return_context=False)
                    self.write("ADD 3, 1, 0", " Move right operand to R3 (scratch)")
                    # Evaluate left → R1, move to R2; restore right to R1
                    self.instruction_rules(left_exp, curr_function, callee=True, return_context=False)
                    self.write("ADD 2, 1, 0", " Move left operand to R2")
                    self.write("ADD 1, 3, 0", " Restore right operand into R1")

                elif left_exp.type in single_values and right_exp.type in single_values:
                    # Pure register path (no DMEM scratch)
                    self.instruction_rules(right_exp, curr_function, callee=True, return_context=False)  # → R1
                    self.write("ADD 3, 1, 0", " Move right operand to R3")
                    self.instruction_rules(left_exp, curr_function, callee=True, return_context=False)   # → R1
                    self.write("ADD 2, 1, 0", " Move left operand to R2")
                    self.write("ADD 1, 3, 0", " Restore right operand into R1")

                    # Fall-through to operator cases below

                else:
                    # General path: evaluate left then right using registers
                    self.instruction_rules(left_exp, curr_function, callee=True, return_context=False)
                    self.write("ADD 2, 1, 0", " Move left operand to R2")
                    self.instruction_rules(right_exp, curr_function, callee=True, return_context=False)
                    # At this point: R2 = left, R1 = right

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
                        self.write("SUB 1, 2, 1", " left - right for equality check")
                        self.write("JEQ 1, 2(7)", " If R1 == 0, jump to true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip setting true")
                        self.write("LDC 1, 1(0)", " true")
                    case "<":
                        self.write("SUB 1, 2, 1", " left - right for less-than check")
                        self.write("JLT 1, 2(7)", " If R1 < 0, jump to true")
                        self.write("LDC 1, 0(0)", " false")
                        self.write("LDA 7, 1(7)", " skip setting true")
                        self.write("LDC 1, 1(0)", " true")

                if return_context:
                    offset = curr_params + 1
                    self.write(f"ST 1, {offset}(5)", " Store result into current frame's return slot")

            # ----------------------------------------------------------------------
            # IF-EXPRESSION
            # ----------------------------------------------------------------------
            case "IF-EXPRESSION":
                self.write("-----IF-BLOCK-----", header=True)

                # 1) Evaluate condition (no return slot write)
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True, return_context=False)

                # 2) Branch setup
                temp_label_else = f"!temp_{self.label_id}"; self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", " If condition is false, jump to ELSE")

                # 3) THEN block
                self.write("-----THEN-BLOCK-----", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=False, return_context=return_context)

                temp_label_endif = f"!temp_{self.label_id}"; self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", " Skip ELSE block")

                # 4) ELSE block label
                self.write("-----ELSE-BLOCK-----", header=True)
                self.placeholders[temp_label_else] = self.line_counter

                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=False, return_context=return_context)

                # 5) Endif label
                self.placeholders[temp_label_endif] = self.line_counter

            # ----------------------------------------------------------------------
            # Default / unknown
            # ----------------------------------------------------------------------
            case _:
                # In case new expression types appear, raise for visibility
                raise NotImplementedError(f"Unhandled expression type: {exp_type}")
