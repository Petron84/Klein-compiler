
# **Klein Compiler - Module 6: Code Generator & Complete Run-Time System**
## **Team Name:** *Kleithon*  
**Members:** Phat Nguyen, Efrata Tesfaye, Ziad Ouro-Koura, Dylan Bock  

---

# **1. Overview**

Module 6 implements the final stage of the Klein compiler:  
a **complete code generator** that produces executable **TM assembly** for semantically-valid Klein programs.

This module brings together all prior components-scanner, parser, AST creation, semantic analysis, and now code generation-into one toolchain driven by the `kleinc` command.

### **Module 6 Goals**
1. Generate TM assembly for general Klein programs  
2. Provide a functioning runtime system supporting function calls, parameters, returns, and stack frames  
3. Update the `kleinc` driver to compile `.kln` files into `.tm` files  
4. Create at least **one substantial new Klein program**  
5. Document design decisions, limitations, and any unsupported features  

This README explains the final system architecture, generator logic, tests, limitations, and known issues.

---

# **2. Architecture Summary**

## **2.1 Project Files**
| File | Purpose |
|------|---------|
| `code_generator.py` | Walks AST + symbol table to generate TM assembly |
| `semantic_analyzer.py` | Validates AST and enriches it with type information |
| `parser.py` | Constructs AST from token stream |
| `scanner.py` | Tokenizes input Klein program |
| `tableloader.py` | Loads symbol information for variables and functions |
| `kleinc` | Runs full compilation pipeline and emits `.tm` output |
| `tm-vm/` | Tiny Machine VM used to execute generated programs |

---

# **3. Code Generation**

The code generator converts the AST into TM instructions and handles:

- Integer literals  
- Variable reads/writes  
- Binary expressions  
- If-statements  
- Return statements  
- Function calls  
- Built-in `print()`  
- Runtime initialization + call to `main()`  

Output is a `.tm` file executable using the TM simulator.

---

# **4. Run-Time System**

The runtime system manages stack frames, registers, and function call conventions.  
Much of the structure extends our Module 5 implementation.

## **4.1 Register Conventions**
| Register | Meaning |
|----------|---------|
| **R0** | Constant 0 |
| **R1** | Return value / print output |
| **R2** | Temporary for binary ops |
| **R3** | General temporary |
| **R4** | Offset computation |
| **R5** | Stack pointer (DMEM pointer) |
| **R6** | Return address |
| **R7** | Program counter |

---

## **4.2 Stack Frame Layout**

Each function call pushes the following onto DMEM:

```
-------------------------
| Return Address (R6)   |
| Parameters 1 ... N    |
| Return Value (R1)     |
-------------------------
```

- Stack grows **upward** from DMEM address 1  
- `DMEM[0]` stores the constant 1023, allowing stack reset  
- The runtime initializes the stack, calls `main()`, and halts once `main` returns  

---

# **5. Test Programs & Status Check**

## **5.1 Status Check Programs**

By the status check deadline, our code generator and runtime system successfully compiled and executed the following programs **without errors and with correct output**:

- `alwaystrue.tm`
- `negatebool.tm`
- `negateint.tm`
- `nested-boolean.tm`
- `nested-unary.tm`

Among these:

- **`nested-boolean.tm`**  
- **`nested-unary.tm`**

were used as our **more complex status check programs**, exercising:

- Nested unary and boolean expressions  
- Chained operations  
- Correct evaluation order and temporary value handling  

These programs demonstrate that, for a significant subset of Klein (especially unary and simple boolean/int expressions), the code generator and runtime behave as expected.

---

## **5.2 Additional Test Programs**

Beyond the status-check set, we used additional Klein programs to test:

- Arithmetic  
- Function calls with multiple parameters  
- Nested expressions  
- If-statements  
- Return-chain correctness  

Some of these programs compile and run correctly; others expose limitations described in Section 7.

---

## **5.3 Example: Euclid's Algorithm**

```kln
function gcd(a : integer, b : integer) : integer
    if b < 1 then
        a
    else
        gcd(b, a - (a / b) * b)
    end

function main() : integer
    print(gcd(48, 18))
    0
```

This tests:
- Recursion  
- Multiple parameters  
- Arithmetic inside return  
- Nested calls  

It is representative of the kinds of programs we aimed to support with the full generator, even though (as documented later) our implementation still struggles with more complex call patterns.

---

# **6. `kleinc` Command**

The `kleinc` script runs:

1. Scanner  
2. Parser  
3. Semantic analyzer  
4. Code generator  

### **Usage**
```bash
$ kleinc file.kln
```

Produces:
```bash
file.tm
```

### **Error Handling**
- If scanner, parser, or semantic analyzer reports **errors**, compilation aborts  
- If only warnings are present, `.tm` output is still produced  

### **Extra Credit (Previously Implemented)**
`kleinc file` correctly resolves `file.kln` (missing extension).

---

# **7. Design Choices, Limitations, and Known Issues**

This section documents problems encountered during implementation-required for the project.

---

## **7.1 Function Call Handling Issues**

While many programs (such as our status check programs) run correctly, **complex function interactions do not**.  
Primary causes:

- **R1, R2, and R3** overwritten by nested calls  
- **R6 (return address)** sometimes overwritten  
- No full register preservation across calls  
- Parameter offsets occasionally miscomputed  

**Result:**  
Programs often **execute without TM runtime errors**, but produce **incorrect results** when:

- Functions are nested  
- There are many parameters  
- Recursion is deep  
- Expression trees are complex and evaluated across function boundaries  

---

## **7.2 Memory-Management Attempts**

We attempted a workaround:

- Moving temporary values and some intermediates from registers to DMEM  

But this caused:

- Rapid DMEM consumption  
- Programs running **out of memory**  
- An unusable runtime for larger examples  

We reverted to a more register-based design to avoid memory exhaustion, at the cost of correctness in complex call scenarios.

---

## **7.3 Unsupported or Partially Working Constructs**

| Feature | Status |
|---------|--------|
| Nested function calls | Often incorrect |
| Multi-parameter functions | Sometimes incorrect |
| Recursion | Works inconsistently |
| Deep expression trees | Temporaries overwritten |
| Complex arithmetic inside return | Incorrect results |

The generator emits **warnings** when the AST contains patterns known to be problematic.

---

# **8. What Works Reliably**

| Feature | Status |
|---------|--------|
| Integer literals | Always correct |
| Simple arithmetic (no nested calls) | Correct |
| Single-function programs | Correct |
| Runtime initialization | Correct |
| `print()` built-in | Always correct |
| Simple returns (e.g., literal or simple expression) | Correct |
| Basic if-statements | Correct |
| Status-check programs (`alwaystrue`, `negatebool`, `negateint`, `nested-boolean`, `nested-unary`) | Correct behavior |

These stable features ensure that many straightforward and moderately complex Klein programs compile and run successfully.

---

# **9. Debugging Tools Used**

To diagnose issues, we used:

- TM instruction tracing  
- DMEM snapshots  
- Manual stack-frame diagrams  

These informed several fixes such as:

- Consistent DMEM pointer updates  
- Correct runtime initialization  
- More disciplined use of registers for temporaries  

---

# **10. Final Project Status**

### **Delivered**
- Fully integrated compiler (`kleinc`)  
- Code generator capable of producing TM for all input programs  
- Runtime system with stack management  
- Status check programs that run correctly, including more complex nested-unary and nested-boolean tests  
- New test programs (e.g., Euclid and others)  
- Warnings for unsupported or fragile features  

### **Not Fully Correct**
- Nested calls and deep recursion  
- Multi-parameter functions in complex expression contexts  
- Complex return expressions  
- Robust register preservation across arbitrary call patterns  

### **Summary**
The compiler:

- Accepts and compiles any valid Klein source  
- Executes many simple and moderate programs correctly (including all status check programs listed above)  
- Fails gracefully with warnings when encountering unsupported constructs  
- Produces TM assembly without causing simulator crashes  

This meets the project's requirements for a complete compiler supporting a stable, well-defined subset of Klein, with clearly documented limitations.

---

# **11. Appendix: Example Output**

`print-one.kln` TM output is available in our Module 5 documentation.  
The architecture and conventions used here are consistent with that earlier example.

---
