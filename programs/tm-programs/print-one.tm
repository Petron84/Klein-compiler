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
10 : LDA 4, 2(5) ; Compute future callee base from caller size
11 : LD 2, 2(5) ; Load staged arg 0 from caller frame
12 : ST 2, 1(4) ; Store arg 0 into callee frame
13 : LDA 6, 17(0) ; Return address
14 : ST 6, 0(4) ; Store return in callee frame
15 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
16 : LDA 7, 7(0) ; Call built-in print
17 : LDC 2, 3(0) ; Callee frame size
18 : SUB 5, 5, 2 ; Pop callee frame
19 : LDC 1, 1(0) ; Load integer-literal into R1
20 : ST 1, 1(5) ; Store result into current frame's return slot
21 : LD 1, 1(5) ; Load main return value into R1
22 : LD 6, 0(5) ; Load main return address
23 : LDA 7, 0(6) ; Return from main
