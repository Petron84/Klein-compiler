1 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LD  2, 3(0) ;  Load CLI arg 3 into R2
7 : ST  2, 3(5) ;  Store the argument 3 into main frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST  6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 18(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
14 : OUT 1, 0, 0 ;  Hardcoded print function
15 : LD  6, 0(5) ;  Load return addess from stack frame.
16 : LDA 7, 0(6) ;  Jump to return address.
19 : LD  1, 3(5) ;  Load parameter 'n' into R1
20 : ADD 2, 1, 0 ;  R2 = left operand
21 : LDC 1, 0(0) ;  Load integer-literal into R1
22 : SUB 3, 2, 1 ;  delta = left - right
23 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
24 : LDC 1, 0(0) ;  FALSE
25 : LDA 7, 1(7) ;  Skip TRUE
26 : LDC 1, 1(0) ;  TRUE
27 : JEQ 1, 33(0) ;  If condition is false, jump to ELSE
29 : LD  1, 1(5) ;  Load parameter 'a' into R1
30 : ST  1, 4(5) ;  Store result into current frame's return slot
31 : LDA 7, 51(0) ;  Skip ELSE block
33 : LD  1, 1(5) ;  Load parameter 'a' into R1
34 : LDA 4, 5(5) ;  Base of callee frame
35 : ST  1, 1(4) ;  Store argument 0 into callee frame
36 : LD  1, 2(5) ;  Load parameter 'b' into R1
37 : LDA 4, 5(5) ;  Base of callee frame
38 : ST  1, 2(4) ;  Store argument 1 into callee frame
39 : LD  1, 3(5) ;  Load parameter 'n' into R1
40 : LDA 4, 5(5) ;  Base of callee frame
41 : ST  1, 3(4) ;  Store argument 2 into callee frame
42 : LDA 4, 5(5) ;  Base of callee frame
43 : LDA 6, 47(0) ;  Compute return address
44 : ST  6, 0(4) ;  Store RA in callee frame
45 : ADD 5, 4, 0 ;  Update pointer (enter callee)
46 : LDA 7, 72(0) ;  Call printAndDivide
47 : LD  1, 4(5) ;  Load callee return value into R1
48 : LDC 3, 5(0) ;  Load callee frame size
49 : SUB 5, 5, 3 ;  Restore pointer
50 : ST  1, 4(5) ;  Store result into current frame's return slot
51 : LD  1, 4(5) ;  Load return value into R1
52 : LD  6, 0(5) ;  Load return address for main function into R6
53 : LDA 7, 0(6) ;  Jump to return address of main function
55 : LD  1, 1(5) ;  Load parameter 'm' into R1
56 : ADD 2, 1, 0 ;  R2 = left operand
57 : LD  1, 1(5) ;  Load parameter 'm' into R1
58 : ADD 2, 1, 0 ;  R2 = left operand
59 : LD  1, 2(5) ;  Load parameter 'n' into R1
60 : DIV 3, 2, 1 ;  R3 = left / right
61 : ADD 1, 3, 0 ;  R1 = R3
62 : ADD 2, 1, 0 ;  R2 = left operand
63 : LD  1, 2(5) ;  Load parameter 'n' into R1
64 : MUL 3, 2, 1 ;  R3 = left * right
65 : ADD 1, 3, 0 ;  R1 = R3
66 : SUB 3, 2, 1 ;  R3 = left - right
67 : ADD 1, 3, 0 ;  R1 = R3
68 : ST  1, 3(5) ;  Store function result into stack frame
69 : LD  6, 0(5) ;  Load return address
70 : LDA 7, 0(6) ;  Return to caller
72 : LDC 1, 10(0) ;  Load integer-literal into R1
73 : ADD 2, 1, 0 ;  R2 = left operand
74 : LD  1, 1(5) ;  Load parameter 'a' into R1
75 : MUL 3, 2, 1 ;  R3 = left * right
76 : ADD 1, 3, 0 ;  R1 = R3
77 : ADD 2, 1, 0 ;  R2 = left operand
78 : LD  1, 2(5) ;  Load parameter 'b' into R1
79 : DIV 3, 2, 1 ;  R3 = left / right
80 : ADD 1, 3, 0 ;  R1 = R3
81 : LDA 4, 3(5) ;  Base of callee frame (print)
82 : LDA 6, 86(0) ;  Compute return address
83 : ST  6, 0(4) ;  Store RA in callee frame
84 : ADD 5, 4, 0 ;  Update pointer (enter callee)
85 : LDA 7, 14(0) ;  Call print
86 : LDC 3, 3(0) ;  Load callee frame size
87 : SUB 5, 5, 3 ;  Restore pointer
88 : LD  1, 1(5) ;  Load parameter 'a' into R1
89 : ADD 2, 1, 0 ;  R2 = left operand
90 : LDC 1, 10(0) ;  Load integer-literal into R1
91 : MUL 3, 2, 1 ;  R3 = left * right
92 : ADD 1, 3, 0 ;  R1 = R3
93 : LDA 4, 4(5) ;  Base of callee frame
94 : ST  1, 1(4) ;  Store argument 0 into callee frame
95 : LD  1, 2(5) ;  Load parameter 'b' into R1
96 : LDA 4, 4(5) ;  Base of callee frame
97 : ST  1, 2(4) ;  Store argument 1 into callee frame
98 : LDA 4, 4(5) ;  Base of callee frame
99 : LDA 6, 103(0) ;  Compute return address
100 : ST  6, 0(4) ;  Store RA in callee frame
101 : ADD 5, 4, 0 ;  Update pointer (enter callee)
102 : LDA 7, 55(0) ;  Call MOD
103 : LD  1, 3(5) ;  Load callee return value into R1
104 : LDC 3, 4(0) ;  Load callee frame size
105 : SUB 5, 5, 3 ;  Restore pointer
106 : LDA 4, 5(5) ;  Base of callee frame
107 : ST  1, 1(4) ;  Store argument 0 into callee frame
108 : LD  1, 2(5) ;  Load parameter 'b' into R1
109 : LDA 4, 5(5) ;  Base of callee frame
110 : ST  1, 2(4) ;  Store argument 1 into callee frame
111 : LD  1, 3(5) ;  Load parameter 'n' into R1
112 : ADD 2, 1, 0 ;  R2 = left operand
113 : LDC 1, 1(0) ;  Load integer-literal into R1
114 : SUB 3, 2, 1 ;  R3 = left - right
115 : ADD 1, 3, 0 ;  R1 = R3
116 : LDA 4, 5(5) ;  Base of callee frame
117 : ST  1, 3(4) ;  Store argument 2 into callee frame
118 : LDA 4, 5(5) ;  Base of callee frame
119 : LDA 6, 123(0) ;  Compute return address
120 : ST  6, 0(4) ;  Store RA in callee frame
121 : ADD 5, 4, 0 ;  Update pointer (enter callee)
122 : LDA 7, 18(0) ;  Call main
123 : LD  1, 4(5) ;  Load callee return value into R1
124 : LDC 3, 5(0) ;  Load callee frame size
125 : SUB 5, 5, 3 ;  Restore pointer
126 : ST  1, 4(5) ;  Store function result into stack frame
127 : LD  6, 0(5) ;  Load return address
128 : LDA 7, 0(6) ;  Return to caller
