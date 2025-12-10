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
11 : ST 1, 1(5) ; Store result into current frame's return slot
12 : LDC 5, 1(0) ; Anchor R5 to main frame base (DMEM[N+1])
13 : ST 1, 1(5) ; Store final result into MAIN frame's return slot
14 : LDC 5, 1(0) ; Reset R5 to main frame base (DMEM[N+1])
15 : LD 1, 1(5) ; Load main return value into R1
16 : LD 6, 0(5) ; Load root return address from main frame
17 : LDA 7, 0(6) ; Return from main to runtime epilogue
