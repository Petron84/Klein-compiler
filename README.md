# Klein Compiler - A Compiler for Klein

## Team Name: Kleithon  
Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Koura, Dylan Bock  

---

## Basic Description of Project
The Klein compiler is a complete implementation of the Klein programming language, developed across seven modules. It integrates all stages of compilation:

1. **Scanner** – Tokenizes Klein source code into a sequence of tokens.  
2. **Parser** – Validates syntax and builds Abstract Syntax Trees (ASTs).  
3. **Semantic Analyzer** – Ensures semantic correctness, annotates AST nodes with type information, and produces a symbol table.  
4. **Code Generator** – Translates AST and symbol table into TM assembly language.  
5. **Run-Time System** – Initializes memory, manages stack frames, executes `main()` and built-in functions.  
6. **Command-Line Suite** – Five Unix scripts (`kleinc`, `kleinf`, `kleinp`, `kleins`, `kleinv`) provide a complete toolchain.  

The compiler traps all errors gracefully, never crashes, and produces TM assembly that executes correctly in the Tiny Machine (TM) simulator.

### Generator Limitation
Our compiler currently does not support *function calls as arguments to another function call*. When such a construct is encountered, the code generator produces the following error:

```plaintext
Generator Error: The current version of the compiler doesn't allow function-calls as arguments to a function call.
```

---

## Files and Tasks Implemented
- **Compiler Tools**:
  - `kleinc` – Runs the complete compiler pipeline and produces TM output.
  - `kleinf` – Runs the parser.  
  - `kleinp` – Runs the AST printer. 
  - `kleins` – Runs the scanner.   
  - `kleinv` – Runs the semantic analyzer and symbol table printer.  
    

- **Source Files (src/)**:
  - `scanner.py`, `parser.py`, `semantic_analyzer.py`, `code_generator.py`  
  - `AST_Creator.py`, `DOTGenerator.py`, `tableloader.py`, `token_lister.py`, `validate_semanticparser.py`, `parse_validator.py`  

- **Documentation (doc/)**:
  - Grammar files (`klein_grammar.txt`, `refactored-grammar.txt`, `ExtendedGrammar.txt`)  
  - Parse table and FIRST/FOLLOW sets (`FirstFollowSets.md`)  
  - AST definitions (`AbstractSyntax.txt`)  
  - Memory layout diagrams (`code_generator_diagram_part1.png`, `code_generator_diagram_part2.png`)  
  - Semantic error outputs (`semantic-errors-output.txt`)  
  - Token examples (`token list and examples.txt`)  
  - Older README versions (`readme-versions/README_Scanner.md`, `README_parser.md`, `README_AST.md`, `README_analyzer.md`, `README_runtime.md`, `README_generator.md`)  
  - GraphOutputs/README.md  

- **Programs (programs/)**:
  - **Legal Standard Programs** – Provided by Professor Wallingford (e.g., `print-one.kln`, `fibonacci.kln`, `sieve.kln`, `russian-peasant.kln`, `egyptian-fractions.kln`).  
  - **Legal New Programs** – Written by our team (e.g., `square.kln`, `sumprime.kln`, `complex-binary.kln`).  
  - **Broken Standard Programs** – Are legal klein programs, but do not work for our compiler (e.g., `euclid.kln`, `average-digit.kln`, `divide.kln`, `circular-prime.kln`).  

- **Tests (tests/)**:
  - Legal cases (`recursion-test.kln`, `multiply.kln`, `boolean-return.kln`, `negateint.kln`, `klein_recursive_factorial.kln`).  
  - Semantic tests (`semantic-tests/semantic-bugfixes.kln`).  
  - Fail cases (`semantic-errors.kln`, `illegal-operator.kln`, `missing-function-keyword.kln`, `notequal_error.kln`, `unreachable-warning-test.kln`).  
 

---

## Known Bugs and Limitations
- **Generator Limitation**: Programs that use *function calls as arguments to another function call* produce the following error:  
``` plaintext 
Generator Error: The current version of the compiler doesn't allow function-calls as arguments to a function call.
``` 

---

## Unimplemented Language Features
- None – all required features have been implemented.

---

## Optimizations Implemented
- **Improved parser error messages** with state-specific feedback.  
- **Optional `.kln` extension handling** in `kleinc`.  

---

## Build Instructions

### Using the Makefile

#### Makefile for Klein Compiler
```makefile
setup:
    chmod +x kleins kleinf kleinp kleinv kleinc
    cd src/tm-vm && gcc tm-cli.c -o tm-cli && gcc tm.c -o tm
clean:
    rm -f src/tm-vm/tm-cli src/tm-vm/tm *.o
```

Run the following commands from the project root:

```bash
# Set up the compiler environment and build the TM simulator
make setup

# Clean up compiled binaries and temporary files
make clean
```

### Running the Scanner on example program print-one.kln
```bash 
./kleins programs/legal-standard-programs/print-one.kln
```

### Running the Parser on example program print-one.kln
```bash 
./kleinf programs/legal-standard-programs/print-one.kln
```

### Running the AST Printer on example program print-one.kln
```bash 
./kleinp programs/legal-standard-programs/print-one.kln
```

### Running the Semantic Analyzer on example program print-one.kln
```bash 
./kleinv programs/legal-standard-programs/print-one.kln
```

### Running the Compiler on example program square.kln
```bash 
./kleinc programs/legal-new-programs/square.kln
./src/tm-vm/tm-cli square.tm 5
```
#### Expected Output:
```plaintext
25
```

## **Project Structure**
```
doc/ 
   GraphOutputs/ 
      README.md 
    readme-versions/ 
       README_Scanner.md 
       README_parser.md 
       README_AST.md 
       README_analyzer.md 
       README_runtime.md 
       README_generator.md
   AbstractSyntax.txt 
   ExtendedGrammar.txt 
   FirstFollowSets.md 
   klein_grammar.txt 
   refactored-grammar.txt 
   list_of_changes.txt 
   token list and examples.txt 
   semantic-errors-output.txt 
   code_generator_diagram_part1.png 
   code_generator_diagram_part2.png 
programs/broken-standard-programs/ 
   euclid.kln 
   average-digit.kln 
   divide.kln 
   circular-prime.kln   
programs/legal-new-programs/ 
   square.kln 
   sumprime.kln 
   complex-binary.kln
programs/legal-standard-programs/ 
   print-one.kln 
   fibonacci.kln 
   sieve.kln 
   russian-peasant.kln 
   egyptian-fractions.kln
src/ 
   tm-vm/ 
      tm 
      tm-cli 
      tm-cli.c 
      tm.c
   scanner.py 
   parser.py 
   parser_without_semantics.py 
   semantic_analyzer.py 
   code_generator.py 
   AST_Creator.py 
   DOTGenerator.py 
   tableloader.py 
   token_lister.py 
   validate_semanticparser.py 
   parse_validator.py

tests/fail-cases/ 
   semantic-errors.kln 
   illegal-operator.kln 
   missing-function-keyword.kln 
   notequal_error.kln 
   unreachable-warning-test.kln

tests/legal-cases/ 
   recursion-test.kln 
   multiply.kln 
   boolean-return.kln 
   negateint.kln 
   klein_recursive_factorial.kln 
   semantic-tests/ 
      semantic-bugfixes.kln

kleinc 
kleinf 
kleinp 
kleins 
kleinv
README.md
```
