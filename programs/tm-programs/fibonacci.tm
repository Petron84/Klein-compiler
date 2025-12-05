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
15 : LD  1, 1(5) ;  Load parameter 'elementWanted' into R1
16 : ADD 2, 1, 0 ;  R2 = left operand
17 : LDC 1, 1(0) ;  Load integer-literal into R1
18 : SUB 3, 2, 1 ;  delta = left - right
19 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
20 : LDC 1, 0(0) ;  FALSE
21 : LDA 7, 1(7) ;  Skip TRUE
22 : LDC 1, 1(0) ;  TRUE
23 : JEQ 1, 29(0) ;  If condition is false, jump to ELSE
25 : LDC 1, 0(0) ;  Load integer-literal into R1
26 : ST  1, 2(5) ;  Store result into current frame's return slot
27 : LDA 7, 50(0) ;  Skip ELSE block
29 : LDC 1, 1(0) ;  Load integer-literal into R1
30 : LDA 4, 6(5) ;  Base of callee frame
31 : ST  1, 1(4) ;  Store argument 0 into callee frame
32 : LD  1, 1(5) ;  Load parameter 'elementWanted' into R1
33 : LDA 4, 6(5) ;  Base of callee frame
34 : ST  1, 2(4) ;  Store argument 1 into callee frame
35 : LDC 1, 0(0) ;  Load integer-literal into R1
36 : LDA 4, 6(5) ;  Base of callee frame
37 : ST  1, 3(4) ;  Store argument 2 into callee frame
38 : LDC 1, 1(0) ;  Load integer-literal into R1
39 : LDA 4, 6(5) ;  Base of callee frame
40 : ST  1, 4(4) ;  Store argument 3 into callee frame
41 : LDA 4, 6(5) ;  Base of callee frame
42 : LDA 6, 46(0) ;  Compute return address
43 : ST  6, 0(4) ;  Store RA in callee frame
44 : ADD 5, 4, 0 ;  Update pointer (enter callee)
45 : LDA 7, 54(0) ;  Call addNext
46 : LD  1, 5(5) ;  Load callee return value into R1
47 : LDC 3, 6(0) ;  Load callee frame size
48 : SUB 5, 5, 3 ;  Restore pointer
49 : ST  1, 2(5) ;  Store result into current frame's return slot
50 : LD  1, 2(5) ;  Load return value into R1
51 : LD  6, 0(5) ;  Load return address for main function into R6
52 : LDA 7, 0(6) ;  Jump to return address of main function
55 : LD  1, 2(5) ;  Load parameter 'elementWanted' into R1
56 : ADD 2, 1, 0 ;  R2 = left operand
57 : LD  1, 1(5) ;  Load parameter 'currentElement' into R1
58 : SUB 3, 2, 1 ;  delta = left - right
59 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
60 : LDC 1, 0(0) ;  FALSE
61 : LDA 7, 1(7) ;  Skip TRUE
62 : LDC 1, 1(0) ;  TRUE
63 : JEQ 1, 68(0) ;  If condition is false, jump to ELSE
65 : LD  1, 4(5) ;  Load parameter 'currentSum' into R1
66 : LDA 7, 96(0) ;  Skip ELSE block
68 : LD  1, 1(5) ;  Load parameter 'currentElement' into R1
69 : ADD 2, 1, 0 ;  R2 = left operand
70 : LDC 1, 1(0) ;  Load integer-literal into R1
71 : ADD 3, 2, 1 ;  R3 = left + right
72 : ADD 1, 3, 0 ;  R1 = R3
73 : LDA 4, 6(5) ;  Base of callee frame
74 : ST  1, 1(4) ;  Store argument 0 into callee frame
75 : LD  1, 2(5) ;  Load parameter 'elementWanted' into R1
76 : LDA 4, 6(5) ;  Base of callee frame
77 : ST  1, 2(4) ;  Store argument 1 into callee frame
78 : LD  1, 4(5) ;  Load parameter 'currentSum' into R1
79 : LDA 4, 6(5) ;  Base of callee frame
80 : ST  1, 3(4) ;  Store argument 2 into callee frame
81 : LD  1, 3(5) ;  Load parameter 'previousSum' into R1
82 : ADD 2, 1, 0 ;  R2 = left operand
83 : LD  1, 4(5) ;  Load parameter 'currentSum' into R1
84 : ADD 3, 2, 1 ;  R3 = left + right
85 : ADD 1, 3, 0 ;  R1 = R3
86 : LDA 4, 6(5) ;  Base of callee frame
87 : ST  1, 4(4) ;  Store argument 3 into callee frame
88 : LDA 4, 6(5) ;  Base of callee frame
89 : LDA 6, 93(0) ;  Compute return address
90 : ST  6, 0(4) ;  Store RA in callee frame
91 : ADD 5, 4, 0 ;  Update pointer (enter callee)
92 : LDA 7, 54(0) ;  Call addNext
93 : LD  1, 5(5) ;  Load callee return value into R1
94 : LDC 3, 6(0) ;  Load callee frame size
95 : SUB 5, 5, 3 ;  Restore pointer
96 : ST  1, 5(5) ;  Store function result into stack frame
97 : LD  6, 0(5) ;  Load return address
98 : LDA 7, 0(6) ;  Return to caller
