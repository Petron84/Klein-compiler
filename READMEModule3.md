# **Klein Compiler — Module 3**

## **Team Name: Kleithon**  
Members: Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Koura, Dylan Bock  

---

## **Overview**

Module 3 extends our Klein compiler to produce **Abstract Syntax Trees (ASTs)** from parsed Klein source files.  
This stage builds upon our table-driven parser from Module 2, adding **semantic actions** and **AST generation**.  
In this stage, we also integrated **Graphviz visualization** to produce `.dot` and `.png` files for the generated ASTs.

The primary deliverables for this module are:
1. A parser that produces ASTs.
2. A program that prints a formatted listing of the AST.
3. The `kleinp` command-line tool.
4. A new legal Klein program for testing.

---
## **New and Modified Components**

| File | Description |
|------|--------------|
| `AST_Creator.py` | Builds and manages Abstract Syntax Trees (ASTs) for parsed Klein programs. |
| `DOTGenerator.py` | Generates `.dot` and `.png` visualizations of the AST using Graphviz. |
| `parser.py` | Modified to include semantic actions for AST construction and improved error reporting. |
| `tableloader.py` | Modified to support semantic rules in the parse table. |
| `kleinp` | Command-line script to run the AST-generating parser and Graphviz output. |

---


## **How to Run the Tools**

### **1. Run the Parser and AST Generator**
```bash
./kleinp PATH_TO_FILE
```

### **Behavior**
- Prints `Valid Program` if parsing succeeds.  
- Prints `Klein Error` for invalid programs.  
- Currently, error output **still includes some Python traceback**, which will be fixed soon.  

### **Example**
```bash
./kleinp programs/legal-programs/prime_sum.kln
```

---

## **Output Files**

Running `kleinp` currently produces two files in the **main project directory**:
- `ast_output.dot` — Graphviz DOT file representation of the AST.
- `ast_output.png` — Rendered PNG image of the AST.

These will soon be redirected to a new folder:
```
GraphOutput/
```

---

## **Project Structure**

```
  kleinp                # Script to run the AST printer
  kleinf                # Parser from Module 2 (kept for reference)
  kleins
  READMEModule3.md
doc/
  abstract_syntax.txt    # Definition of AST classes and structures
  extended_grammar.txt   # Grammar updated with semantic actions

programs/
  legal-programs/
    prime_sum.kln       # New legal program for testing AST
  illegal-programs/
    ...                 # Test programs that trigger syntax errors
    
src/
  parser.py             # Updated parser with semantic actions
  tableloader.py        # Updated with semantic rule integration
  AST_Creator.py        # Builds Abstract Syntax Trees
  DOTGenerator.py       # Exports AST as .dot and .png files
  scanner.py
  token_lister.py
```
---
## **Files Implemented for Module 3**

| Component | File(s) | Description |
|------------|----------|-------------|
| Parser | `parser.py` | Table-driven parser modified with semantic actions |
| AST Classes | `AST_Creator.py` | Defines and constructs AST nodes |
| Graphviz Output | `DOTGenerator.py` | Generates `.dot` and `.png` files from AST |
| Table Loader | `tableloader.py` | Extended to include semantic rules |
| CLI Tool | `kleinp` | Runs parser and generates AST output |
| Test Program | `prime_sum.kln` | Verifies AST construction and visualization |

---

## **Error Handling**

- The parser detects syntax and semantic errors.
- Errors currently display some **Python traceback** in addition to the Klein error message.
- Planned improvement: suppress traceback and print only clean, user-facing Klein syntax errors.

---

## **Status Check Deliverables**

Submitted on **October 10**:
- `abstract_syntax.md` – Definition of all AST node classes/records.
- `extended_grammar.md` – Grammar with integrated semantic actions.

---

## **Planned Improvements**
- Move AST output files to a dedicated `GraphOutput/` directory.  
- Fully suppress Python tracebacks in Klein error messages.  
- Expand AST node coverage for expressions and statements.  
- Improve `.dot` output formatting for readability and clarity.

---

