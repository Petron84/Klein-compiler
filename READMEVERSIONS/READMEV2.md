# **Klein Compiler — V2**

## **Team Name:Kleithon**
**Team Members:** 
Team Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Koura, Dylan Bock

---


## **Project Description:**
This project consists of the first part of the second component of implementing a compiler for Klein programs, two auxiliary programs, and five short test programs. This compiler is designed to process source code from the Klein language by scanning it into tokens, parsing it against grammar rules, and preparing it for execution or further compilation. This project specifically implements a scanner and a table-driven parser, Klein programs to test the parser, a program validator, and an executable command-line script named `kleinf` that takes the name of a `Klein` program as an argument and runs your validation program on it.

---

## **How to Run the Parser and Scanner:**

### **1.To execute the scanner, run the following command in your terminal:**
```bash
  ./kleins [source-file.kln]
```
**example:**
```bash
./kleins programs/legal-programs/euclid.kln
```
This runs the scanneron the provided Klein source file and prints the list of recognized tokens.

---

### **2. To execute the parser, run the following command in your terminal:**
 ```bash
.kleinf [source-file.kln]
```
**example:**
```bash
./kleinf programs/illegal-programs/square_error.kln
```
This runs the parser checks for syntax correctness, and reports any Klein syntax errors.

If no argument is provided, the program now displays a friendly error message:

```
Usage: kleinf [Klein source file]
```
instead of a Python exception.

---
    
## **Project Structure**

```
Compiler-Tools/
  kleins               # Run the Klein scanner
  kleinf               # Run the Klein parser
programs/
  legal-programs/      # Valid Klein programs
  illegal-programs/    # Test programs with syntax errors
doc/
  (Design notes, grammar files, parse tables, and documentation)
```
---

## **Files Implemented for Module 2**

| Component | File(s) | Description |
|------------|----------|-------------|
| Scanner | `scanner.py`, `token_lister.py` | Reads and tokenizes Klein source files |
| Parser | `parser.py`, `parse_validator.py` | Implements LL(1) parser using parse table |
| Driver Scripts | `kleins`, `kleinf` | Command-line tools for scanner and parser |
| Test Programs | `programs/illegal-programs/*.kln` | Five test programs that intentionally trigger syntax errors |

---
## **Illegal Test Programs**
Each file below includes a comment describing the intended syntax error:
- `and_error.kln`
- `isodd_error.kln`
- `notequal_error.kln`  
- `square_error.kln`  
- `timestwo_error.kln` *(semantic error — should pass parser)*
---

Bugs
- divide-by-seven.kln: Parser incorrectly rejects this valid program due to token mismatch on the second or.
- Error messages currently show simplified Klein syntax errors but may not yet include token position information.

Features not implemented:
- Parser Part 2: Coming soon.
- Semantic Analyzer

## **Planned Improvements**
- Add abstract syntax tree (AST) construction.  
- Refine error handling to show expected tokens and positions.  
- Optimize parser performance by pre-splitting rules during parse table creation.

