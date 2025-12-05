1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'n' into R1
15 : LDA 4, 3(5) ;  Base of callee frame (print)
16 : LDA 6, 20(0) ;  Compute return address
17 : ST  6, 0(4) ;  Store RA in callee frame
18 : ADD 5, 4, 0 ;  Update pointer (enter callee)
19 : LDA 7, 10(0) ;  Call print
20 : LDC 3, 3(0) ;  Load callee frame size
21 : SUB 5, 5, 3 ;  Restore pointer
23 : LDC 1, 10(0) ;  Load integer-literal into R1
24 : ADD 2, 1, 0 ;  R2 = left operand
25 : LD  1, 1(5) ;  Load parameter 'n' into R1
26 : SUB 3, 2, 1 ;  delta = left - right
27 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
28 : LDC 1, 0(0) ;  FALSE
29 : LDA 7, 1(7) ;  Skip TRUE
30 : LDC 1, 1(0) ;  TRUE
31 : JEQ 1, 41(0) ;  If condition is false, jump to ELSE
33 : LD  1, 1(5) ;  Load parameter 'n' into R1
34 : ADD 2, 1, 0 ;  R2 = left operand
35 : LDC 1, 2(0) ;  Load integer-literal into R1
36 : MUL 3, 2, 1 ;  R3 = left * right
37 : ADD 1, 3, 0 ;  R1 = R3
38 : ST  1, 2(5) ;  Store result into current frame's return slot
39 : LDA 7, 43(0) ;  Skip ELSE block
41 : LDC 1, 1(0) ;  Load integer-literal into R1
42 : ST  1, 2(5) ;  Store result into current frame's return slot
43 : LD  1, 2(5) ;  Load return value into R1
44 : LD  6, 0(5) ;  Load return address for main function into R6
45 : LDA 7, 0(6) ;  Jump to return address of main function
