0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 1(0) ; Load boolean-literal into R1
11 : LDA 4, 2(5) ; Compute callee base = FP + caller_size
12 : LDA 6, 16(0) ; Return address
13 : ST 6, 0(4) ; Store return address in callee frame
14 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
15 : LDA 7, 7(0) ; Call built-in print
16 : LDC 2, 2(0) ; Caller frame size
17 : SUB 5, 5, 2 ; Pop back to caller
18 : LDC 1, 1(0) ; Load boolean-literal into R1
19 : ST 1, 1(5) ; Store result into current frame's return slot
20 : LD 1, 1(5) ; Load main return value into R1
21 : LD 6, 0(5) ; Load main return address
22 : LDA 7, 0(6) ; Return from main
