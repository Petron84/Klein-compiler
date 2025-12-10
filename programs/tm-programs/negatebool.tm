0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : LDC 2, 1(0) ; Load 1 into R2
14 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
15 : ST 1, 2(5) ; Store result into current frame's return slot
16 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
17 : LD 1, 2(5) ; Load main return value into R1
18 : LD 6, 0(5) ; Load root return address from main frame
19 : LDA 7, 0(6) ; Return from main to runtime epilogue
