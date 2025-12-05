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
15 : ADD 2, 1, 0 ;  R2 = left operand
16 : LDC 1, 10(0) ;  Load integer-literal into R1
17 : DIV 3, 2, 1 ;  R3 = left / right
18 : ADD 1, 3, 0 ;  R1 = R3
19 : LDA 4, 4(5) ;  Base of callee frame
20 : ST  1, 1(4) ;  Store argument 0 into callee frame
21 : LD  1, 1(5) ;  Load parameter 'n' into R1
22 : LDA 4, 4(5) ;  Base of callee frame
23 : ST  1, 1(4) ;  Store argument 0 into callee frame
24 : LDC 1, 10(0) ;  Load integer-literal into R1
25 : LDA 4, 4(5) ;  Base of callee frame
26 : ST  1, 2(4) ;  Store argument 1 into callee frame
27 : LDA 4, 4(5) ;  Base of callee frame
28 : LDA 6, 32(0) ;  Compute return address
29 : ST  6, 0(4) ;  Store RA in callee frame
30 : ADD 5, 4, 0 ;  Update pointer (enter callee)
31 : LDA 7, 50(0) ;  Call MOD
32 : LD  1, 3(5) ;  Load callee return value into R1
33 : LDC 3, 4(0) ;  Load callee frame size
34 : SUB 5, 5, 3 ;  Restore pointer
35 : LDA 4, 4(5) ;  Base of callee frame
36 : ST  1, 2(4) ;  Store argument 1 into callee frame
37 : LDA 4, 4(5) ;  Base of callee frame
38 : LDA 6, 42(0) ;  Compute return address
39 : ST  6, 0(4) ;  Store RA in callee frame
40 : ADD 5, 4, 0 ;  Update pointer (enter callee)
41 : LDA 7, 145(0) ;  Call divisibleByParts
42 : LD  1, 3(5) ;  Load callee return value into R1
43 : LDC 3, 4(0) ;  Load callee frame size
44 : SUB 5, 5, 3 ;  Restore pointer
45 : ST  1, 2(5) ;  Store result into current frame's return slot
46 : LD  1, 2(5) ;  Load return value into R1
47 : LD  6, 0(5) ;  Load return address for main function into R6
48 : LDA 7, 0(6) ;  Jump to return address of main function
50 : LD  1, 1(5) ;  Load parameter 'm' into R1
51 : ADD 2, 1, 0 ;  R2 = left operand
52 : LD  1, 1(5) ;  Load parameter 'm' into R1
53 : ADD 2, 1, 0 ;  R2 = left operand
54 : LD  1, 2(5) ;  Load parameter 'n' into R1
55 : DIV 3, 2, 1 ;  R3 = left / right
56 : ADD 1, 3, 0 ;  R1 = R3
57 : ADD 2, 1, 0 ;  R2 = left operand
58 : LD  1, 2(5) ;  Load parameter 'n' into R1
59 : MUL 3, 2, 1 ;  R3 = left * right
60 : ADD 1, 3, 0 ;  R1 = R3
61 : SUB 3, 2, 1 ;  R3 = left - right
62 : ADD 1, 3, 0 ;  R1 = R3
63 : ST  1, 3(5) ;  Store function result into stack frame
64 : LD  6, 0(5) ;  Load return address
65 : LDA 7, 0(6) ;  Return to caller
68 : LD  1, 1(5) ;  Load parameter 'diff' into R1
69 : ADD 2, 1, 0 ;  R2 = left operand
70 : LDC 1, 7(0) ;  Load integer-literal into R1
71 : SUB 3, 2, 1 ;  delta = left - right
72 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
73 : LDC 1, 0(0) ;  FALSE
74 : LDA 7, 1(7) ;  Skip TRUE
75 : LDC 1, 1(0) ;  TRUE
76 : ADD 2, 1, 0 ;  R2 = left operand
77 : LD  1, 1(5) ;  Load parameter 'diff' into R1
78 : ADD 2, 1, 0 ;  R2 = left operand
79 : LDC 1, 0(0) ;  Load integer-literal into R1
80 : SUB 3, 2, 1 ;  delta = left - right
81 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
82 : LDC 1, 0(0) ;  FALSE
83 : LDA 7, 1(7) ;  Skip TRUE
84 : LDC 1, 1(0) ;  TRUE
85 : ADD 3, 2, 1 ;  R3 = left OR right
86 : ADD 1, 3, 0 ;  R1 = R3
87 : ADD 2, 1, 0 ;  R2 = left operand
88 : LD  1, 1(5) ;  Load parameter 'diff' into R1
89 : ADD 2, 1, 0 ;  R2 = left operand
90 : LDC 1, 7(0) ;  Load integer-literal into R1
91 : SUB 1, 0, 1 ;  Negate value in R1
92 : SUB 3, 2, 1 ;  delta = left - right
93 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
94 : LDC 1, 0(0) ;  FALSE
95 : LDA 7, 1(7) ;  Skip TRUE
96 : LDC 1, 1(0) ;  TRUE
97 : ADD 3, 2, 1 ;  R3 = left OR right
98 : ADD 1, 3, 0 ;  R1 = R3
99 : ADD 2, 1, 0 ;  R2 = left operand
100 : LD  1, 1(5) ;  Load parameter 'diff' into R1
101 : ADD 2, 1, 0 ;  R2 = left operand
102 : LDC 1, 14(0) ;  Load integer-literal into R1
103 : SUB 1, 0, 1 ;  Negate value in R1
104 : SUB 3, 2, 1 ;  delta = left - right
105 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
106 : LDC 1, 0(0) ;  FALSE
107 : LDA 7, 1(7) ;  Skip TRUE
108 : LDC 1, 1(0) ;  TRUE
109 : ADD 3, 2, 1 ;  R3 = left OR right
110 : ADD 1, 3, 0 ;  R1 = R3
111 : JEQ 1, 116(0) ;  If condition is false, jump to ELSE
113 : LDC 1, 1(0) ;  Load boolean-literal into R1
114 : LDA 7, 141(0) ;  Skip ELSE block
117 : LD  1, 1(5) ;  Load parameter 'diff' into R1
118 : ADD 2, 1, 0 ;  R2 = left operand
119 : LDC 1, 14(0) ;  Load integer-literal into R1
120 : SUB 3, 2, 1 ;  delta = left - right
121 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
122 : LDC 1, 0(0) ;  FALSE
123 : LDA 7, 1(7) ;  Skip TRUE
124 : LDC 1, 1(0) ;  TRUE
125 : JEQ 1, 130(0) ;  If condition is false, jump to ELSE
127 : LDC 1, 0(0) ;  Load boolean-literal into R1
128 : LDA 7, 141(0) ;  Skip ELSE block
130 : LD  1, 1(5) ;  Load parameter 'diff' into R1
131 : LDA 4, 3(5) ;  Base of callee frame
132 : ST  1, 1(4) ;  Store argument 0 into callee frame
133 : LDA 4, 3(5) ;  Base of callee frame
134 : LDA 6, 138(0) ;  Compute return address
135 : ST  6, 0(4) ;  Store RA in callee frame
136 : ADD 5, 4, 0 ;  Update pointer (enter callee)
137 : LDA 7, 14(0) ;  Call main
138 : LD  1, 2(5) ;  Load callee return value into R1
139 : LDC 3, 3(0) ;  Load callee frame size
140 : SUB 5, 5, 3 ;  Restore pointer
141 : ST  1, 2(5) ;  Store function result into stack frame
142 : LD  6, 0(5) ;  Load return address
143 : LDA 7, 0(6) ;  Return to caller
145 : LD  1, 1(5) ;  Load parameter 'left' into R1
146 : ADD 2, 1, 0 ;  R2 = left operand
147 : LD  1, 2(5) ;  Load parameter 'right' into R1
148 : ADD 2, 1, 0 ;  R2 = left operand
149 : LDC 1, 2(0) ;  Load integer-literal into R1
150 : MUL 3, 2, 1 ;  R3 = left * right
151 : ADD 1, 3, 0 ;  R1 = R3
152 : SUB 3, 2, 1 ;  R3 = left - right
153 : ADD 1, 3, 0 ;  R1 = R3
154 : LDA 4, 3(5) ;  Base of callee frame
155 : ST  1, 1(4) ;  Store argument 0 into callee frame
156 : LDA 4, 3(5) ;  Base of callee frame
157 : LDA 6, 161(0) ;  Compute return address
158 : ST  6, 0(4) ;  Store RA in callee frame
159 : ADD 5, 4, 0 ;  Update pointer (enter callee)
160 : LDA 7, 67(0) ;  Call divisibleByDifference
161 : LD  1, 2(5) ;  Load callee return value into R1
162 : LDC 3, 3(0) ;  Load callee frame size
163 : SUB 5, 5, 3 ;  Restore pointer
164 : ST  1, 3(5) ;  Store function result into stack frame
165 : LD  6, 0(5) ;  Load return address
166 : LDA 7, 0(6) ;  Return to caller
