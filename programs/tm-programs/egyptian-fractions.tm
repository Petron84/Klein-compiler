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
17 : LD  1, 1(5) ;  Load parameter 'm' into R1
18 : ADD 2, 1, 0 ;  R2 = left operand
19 : LDC 1, 1(0) ;  Load integer-literal into R1
20 : SUB 3, 2, 1 ;  delta = left - right
21 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
22 : LDC 1, 0(0) ;  FALSE
23 : LDA 7, 1(7) ;  Skip TRUE
24 : LDC 1, 1(0) ;  TRUE
25 : JEQ 1, 31(0) ;  If condition is false, jump to ELSE
27 : LD  1, 2(5) ;  Load parameter 'n' into R1
28 : ST  1, 3(5) ;  Store result into current frame's return slot
29 : LDA 7, 89(0) ;  Skip ELSE block
32 : LD  1, 2(5) ;  Load parameter 'n' into R1
33 : LDA 4, 4(5) ;  Base of callee frame
34 : ST  1, 1(4) ;  Store argument 0 into callee frame
35 : LD  1, 1(5) ;  Load parameter 'm' into R1
36 : LDA 4, 4(5) ;  Base of callee frame
37 : ST  1, 2(4) ;  Store argument 1 into callee frame
38 : LDA 4, 4(5) ;  Base of callee frame
39 : LDA 6, 43(0) ;  Compute return address
40 : ST  6, 0(4) ;  Store RA in callee frame
41 : ADD 5, 4, 0 ;  Update pointer (enter callee)
42 : LDA 7, 93(0) ;  Call MOD
43 : LD  1, 3(5) ;  Load callee return value into R1
44 : LDC 3, 4(0) ;  Load callee frame size
45 : SUB 5, 5, 3 ;  Restore pointer
46 : ADD 2, 1, 0 ;  R2 = left operand
47 : LDC 1, 0(0) ;  Load integer-literal into R1
48 : SUB 3, 2, 1 ;  delta = left - right
49 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
50 : LDC 1, 0(0) ;  FALSE
51 : LDA 7, 1(7) ;  Skip TRUE
52 : LDC 1, 1(0) ;  TRUE
53 : JEQ 1, 63(0) ;  If condition is false, jump to ELSE
55 : LD  1, 2(5) ;  Load parameter 'n' into R1
56 : ADD 2, 1, 0 ;  R2 = left operand
57 : LD  1, 1(5) ;  Load parameter 'm' into R1
58 : DIV 3, 2, 1 ;  R3 = left / right
59 : ADD 1, 3, 0 ;  R1 = R3
60 : ST  1, 3(5) ;  Store result into current frame's return slot
61 : LDA 7, 89(0) ;  Skip ELSE block
63 : LD  1, 1(5) ;  Load parameter 'm' into R1
64 : LDA 4, 5(5) ;  Base of callee frame
65 : ST  1, 1(4) ;  Store argument 0 into callee frame
66 : LD  1, 2(5) ;  Load parameter 'n' into R1
67 : LDA 4, 5(5) ;  Base of callee frame
68 : ST  1, 2(4) ;  Store argument 1 into callee frame
69 : LD  1, 2(5) ;  Load parameter 'n' into R1
70 : ADD 2, 1, 0 ;  R2 = left operand
71 : LD  1, 1(5) ;  Load parameter 'm' into R1
72 : DIV 3, 2, 1 ;  R3 = left / right
73 : ADD 1, 3, 0 ;  R1 = R3
74 : ADD 2, 1, 0 ;  R2 = left operand
75 : LDC 1, 1(0) ;  Load integer-literal into R1
76 : ADD 3, 2, 1 ;  R3 = left + right
77 : ADD 1, 3, 0 ;  R1 = R3
78 : LDA 4, 5(5) ;  Base of callee frame
79 : ST  1, 3(4) ;  Store argument 2 into callee frame
80 : LDA 4, 5(5) ;  Base of callee frame
81 : LDA 6, 85(0) ;  Compute return address
82 : ST  6, 0(4) ;  Store RA in callee frame
83 : ADD 5, 4, 0 ;  Update pointer (enter callee)
84 : LDA 7, 110(0) ;  Call print_and_continue
85 : LD  1, 4(5) ;  Load callee return value into R1
86 : LDC 3, 5(0) ;  Load callee frame size
87 : SUB 5, 5, 3 ;  Restore pointer
88 : ST  1, 3(5) ;  Store result into current frame's return slot
89 : LD  1, 3(5) ;  Load return value into R1
90 : LD  6, 0(5) ;  Load return address for main function into R6
91 : LDA 7, 0(6) ;  Jump to return address of main function
93 : LD  1, 1(5) ;  Load parameter 'm' into R1
94 : ADD 2, 1, 0 ;  R2 = left operand
95 : LD  1, 1(5) ;  Load parameter 'm' into R1
96 : ADD 2, 1, 0 ;  R2 = left operand
97 : LD  1, 2(5) ;  Load parameter 'n' into R1
98 : DIV 3, 2, 1 ;  R3 = left / right
99 : ADD 1, 3, 0 ;  R1 = R3
100 : ADD 2, 1, 0 ;  R2 = left operand
101 : LD  1, 2(5) ;  Load parameter 'n' into R1
102 : MUL 3, 2, 1 ;  R3 = left * right
103 : ADD 1, 3, 0 ;  R1 = R3
104 : SUB 3, 2, 1 ;  R3 = left - right
105 : ADD 1, 3, 0 ;  R1 = R3
106 : ST  1, 3(5) ;  Store function result into stack frame
107 : LD  6, 0(5) ;  Load return address
108 : LDA 7, 0(6) ;  Return to caller
110 : LD  1, 3(5) ;  Load parameter 'unit' into R1
111 : LDA 4, 3(5) ;  Base of callee frame (print)
112 : LDA 6, 116(0) ;  Compute return address
113 : ST  6, 0(4) ;  Store RA in callee frame
114 : ADD 5, 4, 0 ;  Update pointer (enter callee)
115 : LDA 7, 12(0) ;  Call print
116 : LDC 3, 3(0) ;  Load callee frame size
117 : SUB 5, 5, 3 ;  Restore pointer
118 : LD  1, 3(5) ;  Load parameter 'unit' into R1
119 : ADD 2, 1, 0 ;  R2 = left operand
120 : LD  1, 1(5) ;  Load parameter 'm' into R1
121 : MUL 3, 2, 1 ;  R3 = left * right
122 : ADD 1, 3, 0 ;  R1 = R3
123 : ADD 2, 1, 0 ;  R2 = left operand
124 : LD  1, 2(5) ;  Load parameter 'n' into R1
125 : SUB 3, 2, 1 ;  R3 = left - right
126 : ADD 1, 3, 0 ;  R1 = R3
127 : LDA 4, 4(5) ;  Base of callee frame
128 : ST  1, 1(4) ;  Store argument 0 into callee frame
129 : LD  1, 2(5) ;  Load parameter 'n' into R1
130 : ADD 2, 1, 0 ;  R2 = left operand
131 : LD  1, 3(5) ;  Load parameter 'unit' into R1
132 : MUL 3, 2, 1 ;  R3 = left * right
133 : ADD 1, 3, 0 ;  R1 = R3
134 : LDA 4, 4(5) ;  Base of callee frame
135 : ST  1, 2(4) ;  Store argument 1 into callee frame
136 : LDA 4, 4(5) ;  Base of callee frame
137 : LDA 6, 141(0) ;  Compute return address
138 : ST  6, 0(4) ;  Store RA in callee frame
139 : ADD 5, 4, 0 ;  Update pointer (enter callee)
140 : LDA 7, 16(0) ;  Call main
141 : LD  1, 3(5) ;  Load callee return value into R1
142 : LDC 3, 4(0) ;  Load callee frame size
143 : SUB 5, 5, 3 ;  Restore pointer
144 : ST  1, 4(5) ;  Store function result into stack frame
145 : LD  6, 0(5) ;  Load return address
146 : LDA 7, 0(6) ;  Return to caller
