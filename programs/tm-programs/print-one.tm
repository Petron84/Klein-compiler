0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 2(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LDA 6, 2(7) ; Calculate return address (PC + 2)
4 : ST 6, 0(5) ; Store return address in main frame
5 : LDA 7, 11(0) ; Branch to main function
6 : OUT 1, 0, 0 ; Return/print result from main in R1
7 : HALT 0, 0, 0 ; Terminate program
8 : OUT 1, 0, 0 ; Hardcoded print: output R1
9 : LD 6, 0(5) ; Load return address from current frame
10 : LDA 7, 0(6) ; Jump back to caller
11 : LDC 1, 1(0) ; Load integer-literal into R1
12 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
13 : LDA 6, 19(0) ; Return address
14 : ST 6, 0(2) ; Store return address in callee frame
15 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
16 : LDC 3, 3(0) ; Callee frame size
17 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
18 : LDA 7, 8(0) ; Call built-in print
19 : LDC 2, 3(0) ; Callee frame size
20 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
21 : LDC 3, 2(0) ; Caller frame size
22 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
23 : LDC 1, 1(0) ; Load integer-literal into R1
24 : ST 1, 1(5) ; Store result into current frame's return slot
25 : LD 1, 1(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
