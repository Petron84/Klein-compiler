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
10 : LDC 1, 5(0) ; Load integer-literal into R1
11 : ST 1, 2(5) ; Spill left operand at depth 0
12 : LDC 1, 2(0) ; Load integer-literal into R1
13 : LD 2, 2(5) ; Restore left operand from depth 0
14 : ADD 1, 2, 1 ; R1 = left + right
15 : LDA 4, 3(5) ; Compute callee base = FP + caller_size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 7(0) ; Call built-in print
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LDC 1, 5(0) ; Load integer-literal into R1
23 : ST 1, 2(5) ; Spill left operand at depth 0
24 : LDC 1, 2(0) ; Load integer-literal into R1
25 : LD 2, 2(5) ; Restore left operand from depth 0
26 : ADD 1, 2, 1 ; R1 = left + right
27 : ST 1, 1(5) ; Store result into current frame's return slot
28 : LD 1, 1(5) ; Load main return value into R1
29 : LD 6, 0(5) ; Load main return address
30 : LDA 7, 0(6) ; Return from main
