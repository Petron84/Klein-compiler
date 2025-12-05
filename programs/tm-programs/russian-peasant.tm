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
17 : LDA 4, 3(5) ;  Base of callee frame (print)
18 : LDA 6, 22(0) ;  Compute return address
19 : ST  6, 0(4) ;  Store RA in callee frame
20 : ADD 5, 4, 0 ;  Update pointer (enter callee)
21 : LDA 7, 12(0) ;  Call print
22 : LDC 3, 3(0) ;  Load callee frame size
23 : SUB 5, 5, 3 ;  Restore pointer
24 : LD  1, 1(5) ;  Load parameter 'm' into R1
25 : LDA 4, 4(5) ;  Base of callee frame
26 : ST  1, 1(4) ;  Store argument 0 into callee frame
27 : LD  1, 2(5) ;  Load parameter 'n' into R1
28 : LDA 4, 4(5) ;  Base of callee frame
29 : ST  1, 2(4) ;  Store argument 1 into callee frame
30 : LDA 4, 4(5) ;  Base of callee frame
31 : LDA 6, 35(0) ;  Compute return address
32 : ST  6, 0(4) ;  Store RA in callee frame
33 : ADD 5, 4, 0 ;  Update pointer (enter callee)
34 : LDA 7, 43(0) ;  Call mult
35 : LD  1, 3(5) ;  Load callee return value into R1
36 : LDC 3, 4(0) ;  Load callee frame size
37 : SUB 5, 5, 3 ;  Restore pointer
38 : ST  1, 3(5) ;  Store result into current frame's return slot
39 : LD  1, 3(5) ;  Load return value into R1
40 : LD  6, 0(5) ;  Load return address for main function into R6
41 : LDA 7, 0(6) ;  Jump to return address of main function
43 : LD  1, 1(5) ;  Load parameter 'm' into R1
44 : LDA 4, 5(5) ;  Base of callee frame
45 : ST  1, 1(4) ;  Store argument 0 into callee frame
46 : LD  1, 2(5) ;  Load parameter 'n' into R1
47 : LDA 4, 5(5) ;  Base of callee frame
48 : ST  1, 2(4) ;  Store argument 1 into callee frame
49 : LDC 1, 0(0) ;  Load integer-literal into R1
50 : LDA 4, 5(5) ;  Base of callee frame
51 : ST  1, 3(4) ;  Store argument 2 into callee frame
52 : LDA 4, 5(5) ;  Base of callee frame
53 : LDA 6, 57(0) ;  Compute return address
54 : ST  6, 0(4) ;  Store RA in callee frame
55 : ADD 5, 4, 0 ;  Update pointer (enter callee)
56 : LDA 7, 64(0) ;  Call multWithAccum
57 : LD  1, 4(5) ;  Load callee return value into R1
58 : LDC 3, 5(0) ;  Load callee frame size
59 : SUB 5, 5, 3 ;  Restore pointer
60 : ST  1, 3(5) ;  Store function result into stack frame
61 : LD  6, 0(5) ;  Load return address
62 : LDA 7, 0(6) ;  Return to caller
65 : LD  1, 2(5) ;  Load parameter 'n' into R1
66 : ADD 2, 1, 0 ;  R2 = left operand
67 : LDC 1, 0(0) ;  Load integer-literal into R1
68 : SUB 3, 2, 1 ;  delta = left - right
69 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
70 : LDC 1, 0(0) ;  FALSE
71 : LDA 7, 1(7) ;  Skip TRUE
72 : LDC 1, 1(0) ;  TRUE
73 : JEQ 1, 78(0) ;  If condition is false, jump to ELSE
75 : LD  1, 3(5) ;  Load parameter 'accum' into R1
76 : LDA 7, 158(0) ;  Skip ELSE block
79 : LD  1, 2(5) ;  Load parameter 'n' into R1
80 : LDA 4, 4(5) ;  Base of callee frame
81 : ST  1, 1(4) ;  Store argument 0 into callee frame
82 : LDC 1, 2(0) ;  Load integer-literal into R1
83 : LDA 4, 4(5) ;  Base of callee frame
84 : ST  1, 2(4) ;  Store argument 1 into callee frame
85 : LDA 4, 4(5) ;  Base of callee frame
86 : LDA 6, 90(0) ;  Compute return address
87 : ST  6, 0(4) ;  Store RA in callee frame
88 : ADD 5, 4, 0 ;  Update pointer (enter callee)
89 : LDA 7, 162(0) ;  Call MOD
90 : LD  1, 3(5) ;  Load callee return value into R1
91 : LDC 3, 4(0) ;  Load callee frame size
92 : SUB 5, 5, 3 ;  Restore pointer
93 : ADD 2, 1, 0 ;  R2 = left operand
94 : LDC 1, 1(0) ;  Load integer-literal into R1
95 : SUB 3, 2, 1 ;  delta = left - right
96 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
97 : LDC 1, 0(0) ;  FALSE
98 : LDA 7, 1(7) ;  Skip TRUE
99 : LDC 1, 1(0) ;  TRUE
100 : JEQ 1, 133(0) ;  If condition is false, jump to ELSE
102 : LD  1, 1(5) ;  Load parameter 'm' into R1
103 : ADD 2, 1, 0 ;  R2 = left operand
104 : LDC 1, 2(0) ;  Load integer-literal into R1
105 : MUL 3, 2, 1 ;  R3 = left * right
106 : ADD 1, 3, 0 ;  R1 = R3
107 : LDA 4, 5(5) ;  Base of callee frame
108 : ST  1, 1(4) ;  Store argument 0 into callee frame
109 : LD  1, 2(5) ;  Load parameter 'n' into R1
110 : ADD 2, 1, 0 ;  R2 = left operand
111 : LDC 1, 2(0) ;  Load integer-literal into R1
112 : DIV 3, 2, 1 ;  R3 = left / right
113 : ADD 1, 3, 0 ;  R1 = R3
114 : LDA 4, 5(5) ;  Base of callee frame
115 : ST  1, 2(4) ;  Store argument 1 into callee frame
116 : LD  1, 3(5) ;  Load parameter 'accum' into R1
117 : ADD 2, 1, 0 ;  R2 = left operand
118 : LD  1, 1(5) ;  Load parameter 'm' into R1
119 : ADD 3, 2, 1 ;  R3 = left + right
120 : ADD 1, 3, 0 ;  R1 = R3
121 : LDA 4, 5(5) ;  Base of callee frame
122 : ST  1, 3(4) ;  Store argument 2 into callee frame
123 : LDA 4, 5(5) ;  Base of callee frame
124 : LDA 6, 128(0) ;  Compute return address
125 : ST  6, 0(4) ;  Store RA in callee frame
126 : ADD 5, 4, 0 ;  Update pointer (enter callee)
127 : LDA 7, 64(0) ;  Call multWithAccum
128 : LD  1, 4(5) ;  Load callee return value into R1
129 : LDC 3, 5(0) ;  Load callee frame size
130 : SUB 5, 5, 3 ;  Restore pointer
131 : LDA 7, 158(0) ;  Skip ELSE block
133 : LD  1, 1(5) ;  Load parameter 'm' into R1
134 : ADD 2, 1, 0 ;  R2 = left operand
135 : LDC 1, 2(0) ;  Load integer-literal into R1
136 : MUL 3, 2, 1 ;  R3 = left * right
137 : ADD 1, 3, 0 ;  R1 = R3
138 : LDA 4, 5(5) ;  Base of callee frame
139 : ST  1, 1(4) ;  Store argument 0 into callee frame
140 : LD  1, 2(5) ;  Load parameter 'n' into R1
141 : ADD 2, 1, 0 ;  R2 = left operand
142 : LDC 1, 2(0) ;  Load integer-literal into R1
143 : DIV 3, 2, 1 ;  R3 = left / right
144 : ADD 1, 3, 0 ;  R1 = R3
145 : LDA 4, 5(5) ;  Base of callee frame
146 : ST  1, 2(4) ;  Store argument 1 into callee frame
147 : LD  1, 3(5) ;  Load parameter 'accum' into R1
148 : LDA 4, 5(5) ;  Base of callee frame
149 : ST  1, 3(4) ;  Store argument 2 into callee frame
150 : LDA 4, 5(5) ;  Base of callee frame
151 : LDA 6, 155(0) ;  Compute return address
152 : ST  6, 0(4) ;  Store RA in callee frame
153 : ADD 5, 4, 0 ;  Update pointer (enter callee)
154 : LDA 7, 64(0) ;  Call multWithAccum
155 : LD  1, 4(5) ;  Load callee return value into R1
156 : LDC 3, 5(0) ;  Load callee frame size
157 : SUB 5, 5, 3 ;  Restore pointer
158 : ST  1, 4(5) ;  Store function result into stack frame
159 : LD  6, 0(5) ;  Load return address
160 : LDA 7, 0(6) ;  Return to caller
162 : LD  1, 1(5) ;  Load parameter 'm' into R1
163 : ADD 2, 1, 0 ;  R2 = left operand
164 : LD  1, 1(5) ;  Load parameter 'm' into R1
165 : ADD 2, 1, 0 ;  R2 = left operand
166 : LD  1, 2(5) ;  Load parameter 'n' into R1
167 : DIV 3, 2, 1 ;  R3 = left / right
168 : ADD 1, 3, 0 ;  R1 = R3
169 : ADD 2, 1, 0 ;  R2 = left operand
170 : LD  1, 2(5) ;  Load parameter 'n' into R1
171 : MUL 3, 2, 1 ;  R3 = left * right
172 : ADD 1, 3, 0 ;  R1 = R3
173 : SUB 3, 2, 1 ;  R3 = left - right
174 : ADD 1, 3, 0 ;  R1 = R3
175 : ST  1, 3(5) ;  Store function result into stack frame
176 : LD  6, 0(5) ;  Load return address
177 : LDA 7, 0(6) ;  Return to caller
