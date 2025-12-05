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
17 : LD  1, 1(5) ;  Load parameter 'publicKey' into R1
18 : ADD 2, 1, 0 ;  R2 = left operand
19 : LDC 1, 0(0) ;  Load integer-literal into R1
20 : SUB 3, 2, 1 ;  delta = left - right
21 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
22 : LDC 1, 0(0) ;  FALSE
23 : LDA 7, 1(7) ;  Skip TRUE
24 : LDC 1, 1(0) ;  TRUE
25 : JEQ 1, 44(0) ;  If condition is false, jump to ELSE
27 : LDC 1, 2147481647(0) ;  Load integer-literal into R1
28 : LDA 4, 4(5) ;  Base of callee frame
29 : ST  1, 1(4) ;  Store argument 0 into callee frame
30 : LDC 1, 2047483747(0) ;  Load integer-literal into R1
31 : LDA 4, 4(5) ;  Base of callee frame
32 : ST  1, 2(4) ;  Store argument 1 into callee frame
33 : LDA 4, 4(5) ;  Base of callee frame
34 : LDA 6, 38(0) ;  Compute return address
35 : ST  6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Update pointer (enter callee)
37 : LDA 7, 173(0) ;  Call factor
38 : LD  1, 3(5) ;  Load callee return value into R1
39 : LDC 3, 4(0) ;  Load callee frame size
40 : SUB 5, 5, 3 ;  Restore pointer
41 : ST  1, 3(5) ;  Store result into current frame's return slot
42 : LDA 7, 59(0) ;  Skip ELSE block
44 : LD  1, 1(5) ;  Load parameter 'publicKey' into R1
45 : LDA 4, 4(5) ;  Base of callee frame
46 : ST  1, 1(4) ;  Store argument 0 into callee frame
47 : LD  1, 2(5) ;  Load parameter 'privateKey' into R1
48 : LDA 4, 4(5) ;  Base of callee frame
49 : ST  1, 2(4) ;  Store argument 1 into callee frame
50 : LDA 4, 4(5) ;  Base of callee frame
51 : LDA 6, 55(0) ;  Compute return address
52 : ST  6, 0(4) ;  Store RA in callee frame
53 : ADD 5, 4, 0 ;  Update pointer (enter callee)
54 : LDA 7, 173(0) ;  Call factor
55 : LD  1, 3(5) ;  Load callee return value into R1
56 : LDC 3, 4(0) ;  Load callee frame size
57 : SUB 5, 5, 3 ;  Restore pointer
58 : ST  1, 3(5) ;  Store result into current frame's return slot
59 : LD  1, 3(5) ;  Load return value into R1
60 : LD  6, 0(5) ;  Load return address for main function into R6
61 : LDA 7, 0(6) ;  Jump to return address of main function
64 : LD  1, 1(5) ;  Load parameter 'a' into R1
65 : ADD 2, 1, 0 ;  R2 = left operand
66 : LD  1, 2(5) ;  Load parameter 'b' into R1
67 : SUB 3, 2, 1 ;  delta = left - right
68 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
69 : LDC 1, 0(0) ;  FALSE
70 : LDA 7, 1(7) ;  Skip TRUE
71 : LDC 1, 1(0) ;  TRUE
72 : JEQ 1, 77(0) ;  If condition is false, jump to ELSE
74 : LD  1, 1(5) ;  Load parameter 'a' into R1
75 : LDA 7, 95(0) ;  Skip ELSE block
77 : LD  1, 1(5) ;  Load parameter 'a' into R1
78 : ADD 2, 1, 0 ;  R2 = left operand
79 : LD  1, 2(5) ;  Load parameter 'b' into R1
80 : SUB 3, 2, 1 ;  R3 = left - right
81 : ADD 1, 3, 0 ;  R1 = R3
82 : LDA 4, 4(5) ;  Base of callee frame
83 : ST  1, 1(4) ;  Store argument 0 into callee frame
84 : LD  1, 2(5) ;  Load parameter 'b' into R1
85 : LDA 4, 4(5) ;  Base of callee frame
86 : ST  1, 2(4) ;  Store argument 1 into callee frame
87 : LDA 4, 4(5) ;  Base of callee frame
88 : LDA 6, 92(0) ;  Compute return address
89 : ST  6, 0(4) ;  Store RA in callee frame
90 : ADD 5, 4, 0 ;  Update pointer (enter callee)
91 : LDA 7, 63(0) ;  Call remainder
92 : LD  1, 3(5) ;  Load callee return value into R1
93 : LDC 3, 4(0) ;  Load callee frame size
94 : SUB 5, 5, 3 ;  Restore pointer
95 : ST  1, 3(5) ;  Store function result into stack frame
96 : LD  6, 0(5) ;  Load return address
97 : LDA 7, 0(6) ;  Return to caller
100 : LD  1, 2(5) ;  Load parameter 'b' into R1
101 : ADD 2, 1, 0 ;  R2 = left operand
102 : LDC 1, 0(0) ;  Load integer-literal into R1
103 : SUB 3, 2, 1 ;  delta = left - right
104 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
105 : LDC 1, 0(0) ;  FALSE
106 : LDA 7, 1(7) ;  Skip TRUE
107 : LDC 1, 1(0) ;  TRUE
108 : JEQ 1, 113(0) ;  If condition is false, jump to ELSE
110 : LD  1, 1(5) ;  Load parameter 'a' into R1
111 : LDA 7, 140(0) ;  Skip ELSE block
113 : LD  1, 2(5) ;  Load parameter 'b' into R1
114 : LDA 4, 4(5) ;  Base of callee frame
115 : ST  1, 1(4) ;  Store argument 0 into callee frame
116 : LD  1, 1(5) ;  Load parameter 'a' into R1
117 : LDA 4, 4(5) ;  Base of callee frame
118 : ST  1, 1(4) ;  Store argument 0 into callee frame
119 : LD  1, 2(5) ;  Load parameter 'b' into R1
120 : LDA 4, 4(5) ;  Base of callee frame
121 : ST  1, 2(4) ;  Store argument 1 into callee frame
122 : LDA 4, 4(5) ;  Base of callee frame
123 : LDA 6, 127(0) ;  Compute return address
124 : ST  6, 0(4) ;  Store RA in callee frame
125 : ADD 5, 4, 0 ;  Update pointer (enter callee)
126 : LDA 7, 63(0) ;  Call remainder
127 : LD  1, 3(5) ;  Load callee return value into R1
128 : LDC 3, 4(0) ;  Load callee frame size
129 : SUB 5, 5, 3 ;  Restore pointer
130 : LDA 4, 4(5) ;  Base of callee frame
131 : ST  1, 2(4) ;  Store argument 1 into callee frame
132 : LDA 4, 4(5) ;  Base of callee frame
133 : LDA 6, 137(0) ;  Compute return address
134 : ST  6, 0(4) ;  Store RA in callee frame
135 : ADD 5, 4, 0 ;  Update pointer (enter callee)
136 : LDA 7, 99(0) ;  Call gcd
137 : LD  1, 3(5) ;  Load callee return value into R1
138 : LDC 3, 4(0) ;  Load callee frame size
139 : SUB 5, 5, 3 ;  Restore pointer
140 : ST  1, 3(5) ;  Store function result into stack frame
141 : LD  6, 0(5) ;  Load return address
142 : LDA 7, 0(6) ;  Return to caller
144 : LD  1, 1(5) ;  Load parameter 'publicKey' into R1
145 : ADD 2, 1, 0 ;  R2 = left operand
146 : LD  1, 3(5) ;  Load parameter 'commonFactor' into R1
147 : DIV 3, 2, 1 ;  R3 = left / right
148 : ADD 1, 3, 0 ;  R1 = R3
149 : LDA 4, 3(5) ;  Base of callee frame (print)
150 : LDA 6, 154(0) ;  Compute return address
151 : ST  6, 0(4) ;  Store RA in callee frame
152 : ADD 5, 4, 0 ;  Update pointer (enter callee)
153 : LDA 7, 12(0) ;  Call print
154 : LDC 3, 3(0) ;  Load callee frame size
155 : SUB 5, 5, 3 ;  Restore pointer
156 : LD  1, 2(5) ;  Load parameter 'privateKey' into R1
157 : ADD 2, 1, 0 ;  R2 = left operand
158 : LD  1, 3(5) ;  Load parameter 'commonFactor' into R1
159 : DIV 3, 2, 1 ;  R3 = left / right
160 : ADD 1, 3, 0 ;  R1 = R3
161 : LDA 4, 3(5) ;  Base of callee frame (print)
162 : LDA 6, 166(0) ;  Compute return address
163 : ST  6, 0(4) ;  Store RA in callee frame
164 : ADD 5, 4, 0 ;  Update pointer (enter callee)
165 : LDA 7, 12(0) ;  Call print
166 : LDC 3, 3(0) ;  Load callee frame size
167 : SUB 5, 5, 3 ;  Restore pointer
168 : LD  1, 3(5) ;  Load parameter 'commonFactor' into R1
169 : ST  1, 4(5) ;  Store function result into stack frame
170 : LD  6, 0(5) ;  Load return address
171 : LDA 7, 0(6) ;  Return to caller
173 : LD  1, 1(5) ;  Load parameter 'publicKey' into R1
174 : LDA 4, 5(5) ;  Base of callee frame
175 : ST  1, 1(4) ;  Store argument 0 into callee frame
176 : LD  1, 2(5) ;  Load parameter 'privateKey' into R1
177 : LDA 4, 5(5) ;  Base of callee frame
178 : ST  1, 2(4) ;  Store argument 1 into callee frame
179 : LD  1, 1(5) ;  Load parameter 'publicKey' into R1
180 : LDA 4, 4(5) ;  Base of callee frame
181 : ST  1, 1(4) ;  Store argument 0 into callee frame
182 : LD  1, 2(5) ;  Load parameter 'privateKey' into R1
183 : LDA 4, 4(5) ;  Base of callee frame
184 : ST  1, 2(4) ;  Store argument 1 into callee frame
185 : LDA 4, 4(5) ;  Base of callee frame
186 : LDA 6, 190(0) ;  Compute return address
187 : ST  6, 0(4) ;  Store RA in callee frame
188 : ADD 5, 4, 0 ;  Update pointer (enter callee)
189 : LDA 7, 99(0) ;  Call gcd
190 : LD  1, 3(5) ;  Load callee return value into R1
191 : LDC 3, 4(0) ;  Load callee frame size
192 : SUB 5, 5, 3 ;  Restore pointer
193 : LDA 4, 5(5) ;  Base of callee frame
194 : ST  1, 3(4) ;  Store argument 2 into callee frame
195 : LDA 4, 5(5) ;  Base of callee frame
196 : LDA 6, 200(0) ;  Compute return address
197 : ST  6, 0(4) ;  Store RA in callee frame
198 : ADD 5, 4, 0 ;  Update pointer (enter callee)
199 : LDA 7, 144(0) ;  Call displayAndPrint
200 : LD  1, 4(5) ;  Load callee return value into R1
201 : LDC 3, 5(0) ;  Load callee frame size
202 : SUB 5, 5, 3 ;  Restore pointer
203 : ST  1, 3(5) ;  Store function result into stack frame
204 : LD  6, 0(5) ;  Load return address
205 : LDA 7, 0(6) ;  Return to caller
