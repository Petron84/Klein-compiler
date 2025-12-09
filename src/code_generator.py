import sys

class StackFrame:
    def __init__(self, name, top, num_params):
        self.name = name  # function name
        self.top = top    # Top of frame - return address slot (base)
        self.num_params = num_params
        self.val_loc = self.top + self.num_params + 1  # memory location of return value

class Generator:
    def __init__(self, tree, table):
        # AST root assumptions unchanged
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
        # R1 : value/return value
        # R2 : temp
        # R3 : temp
        # R4 : frame base (computed as R5 - frame_size when needed)
        # R5 : FREE POINTER (first free cell above the top frame)
        # R6 : return address
        # R7 : program counter
        #
        # Stack frame structure at BASE (R4):
        # 0(R4) : Return address
        # 1..N(R4): Parameters
        # (N+1)(R4): Return value
        # frame_size = N + 2
        #
        # Invariant while executing any function f:
        #   R5 points to the FREE POINTER (BASE + frame_size).
        #   When f needs BASE it computes: R4 = R5 - (params(f) + 2).

    def generate(self):
        self.initialize()
        functions = self.load_functions()
        self.generate_imem(functions)
        self.fill_placeholders()
        return self.IMEM

    def initialize(self):
        self.write("-----INITIALIZE RUNTIME SYSTEM-----", header=True)
        num_params = self.symbol_table['main'].parameters[0]
        # Set DMEM to base of main frame (where we'll write RA and params)
        self.DMEM = num_params + 1
        self.create_frame('main')
        main_frame = self.stack_frames[-1]

        # R5 holds BASE during init only; after laying out main we'll advance to FREE POINTER
        self.write(f"LDC 5, {main_frame.top}(0)", " Set DMEM pointer to main frame BASE")
        # copy CLI args into main frame
        for i in range(1, num_params + 1):
            self.write(f"LD 2, {i}(0)", f" Load CLI arg {i} into register")
            self.write(f"ST 2, {i}(5)", f" Store the argument into main frame")
        # store return address at 0(BASE)
        self.write("LDA 6, 2(7)", " Calculate return address")
        self.write("ST 6, 0(5)", " Store return address in main frame")
        # advance R5 to FREE POINTER above main frame: BASE + (params + 2)
        main_size = num_params + 2
        self.write(f"LDC 4, {main_size}(0)", " Size of main frame (RA + params + ret)")
        self.write("ADD 5, 5, 4", " Advance R5 to FREE POINTER above main")
        # branch to main
        self.write(f"LDA 7, @main(0)", ' Load address of main IMEM block - branch to function')
        # after main returns, print result and halt
        self.write(f"OUT 1, 0, 0", " Return result")
        self.write("HALT 0, 0, 0", ' Terminate program execution if no main function found.')

        # Built-in PRINT routine: treat like a normal callee with 1 param (size = 3)
        self.write("------PRINT------", header=True)
        self.placeholders["@print"] = self.line_counter
        # Side-effect: OUT R1
        self.write("OUT 1, 0, 0", ' Hardcoded print function')
        # Compute BASE = R5 - 3 (size of print frame)
        self.write("LDC 4, 3(0)", " print frame size")
        self.write("SUB 4, 5, 4", " BASE of print frame")
        # Return to caller
        self.write("LD 6, 0(4)", ' Load return address from print frame base')
        self.write("LDA 7, 0(6)", ' Jump to return address.')

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
        # Create a mapping of function names to function body. All other info stays in symbol table.
        for f in self.AST:
            f_name = f.children[0].value
            f_body = f.children[3].children
            f_list[f_name] = f_body
            f_name = "@" + f_name
            self.placeholders[f_name] = -1
        return f_list

    def generate_imem(self, functions):
        # MAIN block
        main_body = functions['main']
        self.write("------MAIN-------", header=True)
        self.placeholders['@main'] = self.line_counter
        for exp in main_body:
            self.instruction_rules(exp, "main")
        # Epilogue for main: BASE = R5 - main_size; load ret; return via RA at BASE
        frame = self.stack_frames.pop()
        main_params = self.symbol_table['main'].parameters[0]
        main_size = main_params + 2
        self.write(f"LDC 4, {main_size}(0)", " size(main)")
        self.write("SUB 4, 5, 4", " BASE(main)")
        self.write(f"LD 1, {main_params + 1}(4)", " Load main return value into R1")
        self.write("LD 6, 0(4)", " Load return address for main function into R6")
        self.write("LDA 7, 0(6)", " Jump to return address of main function")

        del functions['main']

        # Other functions
        for f, body in functions.items():
            self.write(f"------{f.upper()}------", header=True)
            self.placeholders[f'@{f}'] = self.line_counter
            num_params = self.symbol_table[f].parameters[0]
            f_size = num_params + 2
            self.create_frame(f)
            for exp in body:
                self.instruction_rules(exp, f, callee=True)
            # Function epilogue: write return slot at BASE(f), then jump to RA at BASE(f)
            self.write(f"LDC 4, {f_size}(0)", f" size({f})")
            self.write("SUB 4, 5, 4", f" BASE({f})")
            self.write(f"ST 1, {num_params + 1}(4)", f" Store {f} result into return slot")
            self.write("LD 6, 0(4)", " Load return address")
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

        def store_into_current_return_slot():
            # BASE(curr) = R5 - (params(curr) + 2)
            curr_params = self.symbol_table[curr_function].parameters[0]
            curr_size = curr_params + 2
            self.write(f"LDC 4, {curr_size}(0)", " size(curr)")
            self.write("SUB 4, 5, 4", " BASE(curr)")
            self.write(f"ST 1, {curr_params + 1}(4)", " Store result into current frame's return slot")

        match exp_type:
            case "FUNCTION-CALL":
                f_name = exp_children[0].value
                callee_params = self.symbol_table[f_name].parameters[0] if f_name in self.symbol_table else (1 if f_name == 'print' else 0)
                callee_size = callee_params + 2
                caller_params = self.symbol_table[curr_function].parameters[0]
                caller_size = caller_params + 2

                if f_name == "print":
                    # Evaluate argument into R1
                    self.instruction_rules(exp_children[1], curr_function, callee=True)
                    # Allocate print frame at FREE POINTER: BASE = R5
                    self.write("LDA 4, 0(5)", " BASE(print) = FREE POINTER")
                    # Return address at 0(BASE)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Compute return address")
                    self.write("ST 6, 0(4)", " Store return address in print frame")
                    # Put argument into slot 1(BASE)
                    self.write("ST 1, 1(4)", " Store print argument")
                    # Advance FREE POINTER = BASE + size(print)
                    self.write(f"LDA 2, {callee_size}(4)", " end-of-print-frame")
                    self.write("ADD 5, 2, 0", " Advance FREE POINTER")
                    # Call print
                    self.write("LDA 7, @print(0)", " Call print")
                    self.placeholders[temp_label] = self.line_counter
                    # On return: pop print frame
                    self.write(f"LDC 4, {callee_size}(0)", " print frame size")
                    self.write("SUB 5, 5, 4", " Restore FREE POINTER")
                    # print has no meaningful return value semantics
                else:
                    # Allocate callee frame at FREE POINTER: BASE = R5
                    self.write("LDA 4, 0(5)", " BASE(callee) = FREE POINTER")

                    # Evaluate and store arguments into BASE(callee)
                    args = exp_children[1].children
                    for i, arg in enumerate(args):
                        self.instruction_rules(arg, curr_function, callee=True)
                        # After nested arg calls, FREE POINTER is already restored by their epilogues
                        self.write(f"ST 1, {i+1}(4)", f" Store argument {i} into callee frame")

                    # Write return address at 0(BASE)
                    temp_label = f"!return_{self.label_id}"; self.label_id += 1
                    self.write(f"LDA 6, {temp_label}(0)", " Compute return address")
                    self.write("ST 6, 0(4)", " Store return address in callee frame")

                    # Advance FREE POINTER to end-of-callee-frame and call
                    self.write(f"LDA 2, {callee_size}(4)", " end-of-callee-frame")
                    self.write("ADD 5, 2, 0", " Advance FREE POINTER")
                    self.write(f"LDA 7, @{f_name}(0)", f" Call {f_name}")
                    self.placeholders[temp_label] = self.line_counter

                    # On return: compute BASE(callee) again and read return slot
                    self.write(f"LDC 4, {callee_size}(0)", " size(callee)")
                    self.write("SUB 4, 5, 4", " BASE(callee)")
                    call_offset = callee_params + 1
                    self.write(f"LD 1, {call_offset}(4)", " Load callee return value into R1")
                    # Restore FREE POINTER (pop callee frame)
                    self.write(f"LDC 4, {callee_size}(0)", " size(callee)")
                    self.write("SUB 5, 5, 4", " Restore FREE POINTER")

                    if not callee:  # store into current frame's return slot
                        store_into_current_return_slot()

            case "INTEGER-LITERAL":
                value = body.value
                self.write(f"LDC 1, {value}(0)", " Load integer-literal into R1")
                if not callee:
                    store_into_current_return_slot()

            case "BOOLEAN-LITERAL":
                value = body.value
                value = 1 if value == "true" else 0
                self.write(f"LDC 1, {value}(0)", " Load boolean-literal into R1")
                if not callee:
                    store_into_current_return_slot()

            case "IDENTIFIER":
                # BASE(curr) then load parameter by name
                curr_params = self.symbol_table[curr_function].parameters
                names = curr_params[1]
                for i, p in enumerate(names):
                    if p[0] == exp_value:
                        offset = i + 1
                        # BASE(curr)
                        size = curr_params[0] + 2
                        self.write(f"LDC 4, {size}(0)", " size(curr)")
                        self.write("SUB 4, 5, 4", " BASE(curr)")
                        self.write(f"LD 1, {offset}(4)", f" Load parameter '{exp_value}' into R1")
                        break
                if not callee:
                    store_into_current_return_slot()

            case "UNARY-EXPRESSION":
                inner_exp = exp_children[0]
                self.instruction_rules(inner_exp, curr_function, callee=True)
                if exp_value == "-":
                    self.write("SUB 1, 0, 1", " Negate value in R1")
                elif exp_value == "not":
                    self.write("LDC 2, 1(0)", " Load 1 into R2")
                    self.write("SUB 1, 2, 1", " Logical NOT: 1 - R1")
                if not callee:
                    store_into_current_return_slot()

            case "BINARY-EXPRESSION":
                left_exp = exp_children[0]
                right_exp = exp_children[1]
                self.instruction_rules(left_exp, curr_function, callee=True)
                self.write("ADD 3, 1, 0", " Save left operand in R3")
                self.instruction_rules(right_exp, curr_function, callee=True)
                self.write("ADD 2, 3, 0", " Restore left operand into R2")
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
                if not callee:
                    store_into_current_return_slot()

            case "IF-EXPRESSION":
                self.write("------IF-BLOCK------", header=True)
                condition_exp = exp_children[0]
                self.instruction_rules(condition_exp, curr_function, callee=True)
                temp_label_else = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"JEQ 1, {temp_label_else}(0)", " If condition is false, jump to ELSE")
                self.write("------THEN-BLOCK------", header=True)
                then_exp = exp_children[1]
                self.instruction_rules(then_exp, curr_function, callee=callee)
                temp_label_endif = "!temp_" + str(self.label_id); self.label_id += 1
                self.write(f"LDA 7, {temp_label_endif}(0)", " Skip ELSE block")
                self.write("------ELSE-BLOCK------", header=True)
                self.placeholders[temp_label_else] = self.line_counter
                else_exp = exp_children[2]
                self.instruction_rules(else_exp, curr_function, callee=callee)
                self.placeholders[temp_label_endif] = self.line_counter
