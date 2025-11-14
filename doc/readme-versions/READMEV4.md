# **Klein Compiler - Module 5: A Run-Time System for Klein**

## **Team Name: Kleithon** 
Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Koura, Dylan Bock  

---

## **Overview**
Module 5 extends the Klein compiler by adding:
1. A **Run-Time System** that initializes memory, executes Klein programs, and manages function calls.
2. A **Code Generator** that produces TM programs from the AST and symbol table of semantically-correct Klein programs.
3. A `kleinc` command-line tool, which compiles Klein source programs into TM programs automatically.

This stage completes the execution phase of the compiler, allowing Klein programs to run on the **Tiny Machine (TM) Virtual Machine**.

---

## **Core Features**
- **Run-Time Environment** for executing Klein programs on TM.
- **Code Generator** converts AST and symbol table into executable TM instructions.
- Correctly handles the abstract syntax tree of `print-one.kln`.
- Implements primitive `print()` function in TM.
- Manages stack frames, including parameters, local variables, return addresses, and temporaries.
- Uses eight TM registers consistently for frame and stack management.
- Fully integrated with the `kleinc` command-line tool for automated compilation.

## **Implemented Optional Features**
| Feature | Status |
|----------|---------|
| `kleinc` accepts optional `.kln` extension (extra credit) | Implemented |

## **Core Components**
| File | Description |
|------|--------------|
| `code_generator.py` | Generates TM code from AST and symbol table. |
| `kleinc` | Command-line tool that compiles Klein source to TM programs. |
| `AST_Creator.py` | Defines AST structure used by code generator. |
| `semantic_analyzer.py` | Provides validated AST and symbol table as input for code generation. |

Generated TM programs (e.g., `print-one.tm`) are executed using the Tiny Machine VM located in `tm-vm/`.

## **Run-Time System**

The run-time system sets up memory, executes `main()`, prints values, and halts the TM program.

### **Key Responsibilities**
- Initialize **stack pointer** and **frame pointer**.
- Push return addresses and control links for function calls.
- Allocate memory for parameters, local variables, and temporaries.
- Execute `main()` and built-in `print()`.
- Properly teardown stack frames after function returns.

## **Memory Layout**
### **DMEM (Data Memory)**
- DMEM contains three main components for each function call:
    1. Return address
    2. Array of parameters (each function call jumps to an IMEM block)
    3. Return value storage
- Stack frames expand downward from `DMEM[1023]` toward `DMEM[1023 - N]`.
- `DMEM[0]` contains the integer `1023` (highest legal address).
- Command-line arguments are stored starting from `DMEM[1]` to `DMEM[N]`.

### **IMEM (Instruction Memory)**
- Stores TM instructions for:
    - Run-time system initialization
    - `print()` primitive
    - User-defined functions (`main()`)

### **Registers**
| Register | Purpose |
| R0 | Stores the value 0 |
| R1 | Stores value to be output or returned |
| R2 | Stores a temporary value for any operations that require two values (such as binary expressions). |
| R3 | Stores a temporary value for any memory location calculations |
| R4 | Value of current memory offset |
| R5 | Stores stack frame pointer |
| R6 | Stores current return address |
| R7 | Program counter |

### **Stack Frame Layout**
Each stack frame contains:
-------------------------
| Return Address (R6)   |
| Parameters 1 ... N    |
| Return Value (R1)     |
-------------------------
- Return Address is stored in register `R6`.
- Parameters are stored sequentially for each function call.
- Return Value is stored in register `R1`.
- Stack frames grow downward from `DMEM[1023]`.

## **Code Generator (`code_generator.py`)**

### **Responsibilities**
- Walks AST and symbol table through producing TM instructions.
- Generates as output an equivalent TM program.
#### **Example Input (`print-one.kln`)**
``` 
function main() : integer
    print(1)
    1
```
#### **Example TM Output**
```plaintext
* Run-Time System
*
0: LDA 6,1(7)
1: LDA 7,7(0)
2: OUT 1,0,0
3: HALT 0,0,0
*
* PRINT
*
4: LDC 1,1(0)
5: OUT 1,0,0
6: LDA 7,8(0)
*
* MAIN
*
7: LDA 7,4(0)
8: LDA 7,0(6)
```

Note: The above IMEM layout for print-one.kln is without data memory allocation (see print-one_IMEM.txt for our current IMEM with data memory).

## **Running the `kleinc` Command**
To compile a Klein source file into a TM program, run:

```bash
./kleinc <source-file>
```

For example, to compile print-one.kln:

```bash
./kleinc print-one.kln
```

**Extra Credit**: accepts filenames without .kln extension:
```bash
./kleinc programs/print-one
```

This produces a TM output file with the same base name `print-one.tm`.
Then you can run the generated TM program using the Tiny Machine VM:
```bash
./tm-vm/tm-cli print-one.tm
```

### **Expected Output**
1. TM program file (print-one.tm)
2. Correct execution on TM Virtual Machine (tm-vm/tm-cli):
```plaintext
1
```
3. Proper memory and stack management (verified with the generated diagrams: Stack Frame Layout, DMEM Layout, IMEM Layout, and Register Usage).

## **Project Structure**

```
kleinc
code_generator.py
semantic_analyzer.py
AST_Creator.py
parser.py
scanner.py
tableloader.py
token_lister.py
validate_semanticparser.py

programs/legal-programs/
  print-one.kln

tm-vm/
  tm-cli
  tm-cli-go-timed-ext.c
  tm-cli-go-timed.c
  tm-cli-go.c
  tm-cli.c
  tm.c

doc/
  GraphOutputs/
  readme-versions
  code_generation_diagrams_part1.png
  code_generation_diagrams_part2.png
```

## **Deliverables**
- `code_generator.py`
- `kleinc` script
- `doc/code_generation_diagrams_part1.png` and `doc/code_generation_diagrams_part2.png` (stack, DMEM, IMEM, registers)

## **Final Status**
- Minimal run-time system implemented
- Code generator produces TM output for `print-one.kln`
- Stack frame and memory diagrams documented
- `print()` and `main()` fully functional
- `kleinc` automates compilation pipeline
- TM execution verified using `tm-vm/tm-cli`