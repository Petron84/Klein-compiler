0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 1(5) ; Load parameter 'x' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LD 1, 2(5) ; Load parameter 'y' into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : MUL 1, 2, 1 ; R1 = left * right
19 : ST 1, 3(5) ; Store result into current frame's return slot
20 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
21 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
22 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
23 : LD 1, 3(5) ; Load main return value into R1
24 : LD 6, 0(5) ; Load root return address from main frame
25 : LDA 7, 0(6) ; Return from main to runtime epilogue
