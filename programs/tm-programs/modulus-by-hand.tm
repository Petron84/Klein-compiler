1 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST  6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LD  6, 0(5) ;  Load return addess from stack frame.
14 : LDA 7, 0(6) ;  Jump to return address.
16 : LD  1, 1(5) ;  Load parameter 'm' into R1
17 : ADD 2, 1, 0 ;  R2 = left operand
18 : LD  1, 2(5) ;  Load parameter 'n' into R1
19 : DIV 3, 2, 1 ;  R3 = left / right
20 : ADD 1, 3, 0 ;  R1 = R3
21 : LDA 4, 3(5) ;  Base of callee frame (print)
22 : LDA 6, 26(0) ;  Compute return address
23 : ST  6, 0(4) ;  Store RA in callee frame
24 : ADD 5, 4, 0 ;  Update pointer (enter callee)
25 : LDA 7, 12(0) ;  Call print
26 : LDC 3, 3(0) ;  Load callee frame size
27 : SUB 5, 5, 3 ;  Restore pointer
28 : LD  1, 1(5) ;  Load parameter 'm' into R1
29 : LDA 4, 4(5) ;  Base of callee frame
30 : ST  1, 1(4) ;  Store argument 0 into callee frame
31 : LD  1, 2(5) ;  Load parameter 'n' into R1
32 : LDA 4, 4(5) ;  Base of callee frame
33 : ST  1, 2(4) ;  Store argument 1 into callee frame
34 : LDA 4, 4(5) ;  Base of callee frame
35 : LDA 6, 39(0) ;  Compute return address
36 : ST  6, 0(4) ;  Store RA in callee frame
37 : ADD 5, 4, 0 ;  Update pointer (enter callee)
38 : LDA 7, 47(0) ;  Call mod
39 : LD  1, 3(5) ;  Load callee return value into R1
40 : LDC 3, 4(0) ;  Load callee frame size
41 : SUB 5, 5, 3 ;  Restore pointer
42 : ST  1, 3(5) ;  Store result into current frame's return slot
43 : LD  1, 3(5) ;  Load return value into R1
44 : LD  6, 0(5) ;  Load return address for main function into R6
45 : LDA 7, 0(6) ;  Jump to return address of main function
48 : LD  1, 1(5) ;  Load parameter 'm' into R1
49 : ADD 2, 1, 0 ;  R2 = left operand
50 : LD  1, 2(5) ;  Load parameter 'n' into R1
51 : SUB 3, 2, 1 ;  delta = left - right
52 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
53 : LDC 1, 0(0) ;  FALSE
54 : LDA 7, 1(7) ;  Skip TRUE
55 : LDC 1, 1(0) ;  TRUE
56 : JEQ 1, 61(0) ;  If condition is false, jump to ELSE
58 : LD  1, 1(5) ;  Load parameter 'm' into R1
59 : LDA 7, 79(0) ;  Skip ELSE block
61 : LD  1, 1(5) ;  Load parameter 'm' into R1
62 : ADD 2, 1, 0 ;  R2 = left operand
63 : LD  1, 2(5) ;  Load parameter 'n' into R1
64 : SUB 3, 2, 1 ;  R3 = left - right
65 : ADD 1, 3, 0 ;  R1 = R3
66 : LDA 4, 4(5) ;  Base of callee frame
67 : ST  1, 1(4) ;  Store argument 0 into callee frame
68 : LD  1, 2(5) ;  Load parameter 'n' into R1
69 : LDA 4, 4(5) ;  Base of callee frame
70 : ST  1, 2(4) ;  Store argument 1 into callee frame
71 : LDA 4, 4(5) ;  Base of callee frame
72 : LDA 6, 76(0) ;  Compute return address
73 : ST  6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Update pointer (enter callee)
75 : LDA 7, 47(0) ;  Call mod
76 : LD  1, 3(5) ;  Load callee return value into R1
77 : LDC 3, 4(0) ;  Load callee frame size
78 : SUB 5, 5, 3 ;  Restore pointer
79 : ST  1, 3(5) ;  Store function result into stack frame
80 : LD  6, 0(5) ;  Load return address
81 : LDA 7, 0(6) ;  Return to caller
