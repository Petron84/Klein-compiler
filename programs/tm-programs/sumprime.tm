1 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST  6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT 1, 0, 0 ;  Hardcoded print function
9 : LD  6, 0(5) ;  Load return addess from stack frame.
10 : LDA 7, 0(6) ;  Jump to return address.
12 : LDC 1, 2(0) ;  Load integer-literal into R1
13 : LDA 4, 4(5) ;  Base of callee frame
14 : ST  1, 1(4) ;  Store argument 0 into callee frame
15 : LDC 1, 20(0) ;  Load integer-literal into R1
16 : LDA 4, 4(5) ;  Base of callee frame
17 : ST  1, 2(4) ;  Store argument 1 into callee frame
18 : LDA 4, 4(5) ;  Base of callee frame
19 : LDA 6, 23(0) ;  Compute return address
20 : ST  6, 0(4) ;  Store RA in callee frame
21 : ADD 5, 4, 0 ;  Update pointer (enter callee)
22 : LDA 7, 31(0) ;  Call sumPrimes
23 : LD  1, 3(5) ;  Load callee return value into R1
24 : LDC 3, 4(0) ;  Load callee frame size
25 : SUB 5, 5, 3 ;  Restore pointer
26 : ST  1, 1(5) ;  Store result into current frame's return slot
27 : LD  1, 1(5) ;  Load return value into R1
28 : LD  6, 0(5) ;  Load return address for main function into R6
29 : LDA 7, 0(6) ;  Jump to return address of main function
32 : LD  1, 2(5) ;  Load parameter 'b' into R1
33 : ADD 2, 1, 0 ;  R2 = left operand
34 : LD  1, 1(5) ;  Load parameter 'a' into R1
35 : SUB 3, 2, 1 ;  delta = left - right
36 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
37 : LDC 1, 0(0) ;  FALSE
38 : LDA 7, 1(7) ;  Skip TRUE
39 : LDC 1, 1(0) ;  TRUE
40 : JEQ 1, 45(0) ;  If condition is false, jump to ELSE
42 : LDC 1, 0(0) ;  Load integer-literal into R1
43 : LDA 7, 101(0) ;  Skip ELSE block
46 : LD  1, 1(5) ;  Load parameter 'a' into R1
47 : LDA 4, 3(5) ;  Base of callee frame
48 : ST  1, 1(4) ;  Store argument 0 into callee frame
49 : LDA 4, 3(5) ;  Base of callee frame
50 : LDA 6, 54(0) ;  Compute return address
51 : ST  6, 0(4) ;  Store RA in callee frame
52 : ADD 5, 4, 0 ;  Update pointer (enter callee)
53 : LDA 7, 105(0) ;  Call isPrime
54 : LD  1, 2(5) ;  Load callee return value into R1
55 : LDC 3, 3(0) ;  Load callee frame size
56 : SUB 5, 5, 3 ;  Restore pointer
57 : JEQ 1, 83(0) ;  If condition is false, jump to ELSE
59 : LD  1, 1(5) ;  Load parameter 'a' into R1
60 : ADD 2, 1, 0 ;  R2 = left operand
61 : LD  1, 1(5) ;  Load parameter 'a' into R1
62 : ADD 2, 1, 0 ;  R2 = left operand
63 : LDC 1, 1(0) ;  Load integer-literal into R1
64 : ADD 3, 2, 1 ;  R3 = left + right
65 : ADD 1, 3, 0 ;  R1 = R3
66 : LDA 4, 4(5) ;  Base of callee frame
67 : ST  1, 1(4) ;  Store argument 0 into callee frame
68 : LD  1, 2(5) ;  Load parameter 'b' into R1
69 : LDA 4, 4(5) ;  Base of callee frame
70 : ST  1, 2(4) ;  Store argument 1 into callee frame
71 : LDA 4, 4(5) ;  Base of callee frame
72 : LDA 6, 76(0) ;  Compute return address
73 : ST  6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Update pointer (enter callee)
75 : LDA 7, 31(0) ;  Call sumPrimes
76 : LD  1, 3(5) ;  Load callee return value into R1
77 : LDC 3, 4(0) ;  Load callee frame size
78 : SUB 5, 5, 3 ;  Restore pointer
79 : ADD 3, 2, 1 ;  R3 = left + right
80 : ADD 1, 3, 0 ;  R1 = R3
81 : LDA 7, 101(0) ;  Skip ELSE block
83 : LD  1, 1(5) ;  Load parameter 'a' into R1
84 : ADD 2, 1, 0 ;  R2 = left operand
85 : LDC 1, 1(0) ;  Load integer-literal into R1
86 : ADD 3, 2, 1 ;  R3 = left + right
87 : ADD 1, 3, 0 ;  R1 = R3
88 : LDA 4, 4(5) ;  Base of callee frame
89 : ST  1, 1(4) ;  Store argument 0 into callee frame
90 : LD  1, 2(5) ;  Load parameter 'b' into R1
91 : LDA 4, 4(5) ;  Base of callee frame
92 : ST  1, 2(4) ;  Store argument 1 into callee frame
93 : LDA 4, 4(5) ;  Base of callee frame
94 : LDA 6, 98(0) ;  Compute return address
95 : ST  6, 0(4) ;  Store RA in callee frame
96 : ADD 5, 4, 0 ;  Update pointer (enter callee)
97 : LDA 7, 31(0) ;  Call sumPrimes
98 : LD  1, 3(5) ;  Load callee return value into R1
99 : LDC 3, 4(0) ;  Load callee frame size
100 : SUB 5, 5, 3 ;  Restore pointer
101 : ST  1, 3(5) ;  Store function result into stack frame
102 : LD  6, 0(5) ;  Load return address
103 : LDA 7, 0(6) ;  Return to caller
106 : LD  1, 1(5) ;  Load parameter 'n' into R1
107 : ADD 2, 1, 0 ;  R2 = left operand
108 : LDC 1, 2(0) ;  Load integer-literal into R1
109 : SUB 3, 2, 1 ;  delta = left - right
110 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
111 : LDC 1, 0(0) ;  FALSE
112 : LDA 7, 1(7) ;  Skip TRUE
113 : LDC 1, 1(0) ;  TRUE
114 : JEQ 1, 119(0) ;  If condition is false, jump to ELSE
116 : LDC 1, 0(0) ;  Load boolean-literal into R1
117 : LDA 7, 188(0) ;  Skip ELSE block
120 : LD  1, 1(5) ;  Load parameter 'n' into R1
121 : ADD 2, 1, 0 ;  R2 = left operand
122 : LDC 1, 2(0) ;  Load integer-literal into R1
123 : SUB 3, 2, 1 ;  delta = left - right
124 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
125 : LDC 1, 0(0) ;  FALSE
126 : LDA 7, 1(7) ;  Skip TRUE
127 : LDC 1, 1(0) ;  TRUE
128 : JEQ 1, 133(0) ;  If condition is false, jump to ELSE
130 : LDC 1, 1(0) ;  Load boolean-literal into R1
131 : LDA 7, 188(0) ;  Skip ELSE block
134 : LD  1, 1(5) ;  Load parameter 'n' into R1
135 : LDA 4, 4(5) ;  Base of callee frame
136 : ST  1, 1(4) ;  Store argument 0 into callee frame
137 : LDC 1, 2(0) ;  Load integer-literal into R1
138 : LDA 4, 4(5) ;  Base of callee frame
139 : ST  1, 2(4) ;  Store argument 1 into callee frame
140 : LDA 4, 4(5) ;  Base of callee frame
141 : LDA 6, 145(0) ;  Compute return address
142 : ST  6, 0(4) ;  Store RA in callee frame
143 : ADD 5, 4, 0 ;  Update pointer (enter callee)
144 : LDA 7, 192(0) ;  Call divisible
145 : LD  1, 3(5) ;  Load callee return value into R1
146 : LDC 3, 4(0) ;  Load callee frame size
147 : SUB 5, 5, 3 ;  Restore pointer
148 : ADD 2, 1, 0 ;  R2 = left operand
149 : LD  1, 1(5) ;  Load parameter 'n' into R1
150 : LDA 4, 4(5) ;  Base of callee frame
151 : ST  1, 1(4) ;  Store argument 0 into callee frame
152 : LDC 1, 3(0) ;  Load integer-literal into R1
153 : LDA 4, 4(5) ;  Base of callee frame
154 : ST  1, 2(4) ;  Store argument 1 into callee frame
155 : LDA 4, 4(5) ;  Base of callee frame
156 : LDA 6, 160(0) ;  Compute return address
157 : ST  6, 0(4) ;  Store RA in callee frame
158 : ADD 5, 4, 0 ;  Update pointer (enter callee)
159 : LDA 7, 192(0) ;  Call divisible
160 : LD  1, 3(5) ;  Load callee return value into R1
161 : LDC 3, 4(0) ;  Load callee frame size
162 : SUB 5, 5, 3 ;  Restore pointer
163 : ADD 3, 2, 1 ;  R3 = left OR right
164 : ADD 1, 3, 0 ;  R1 = R3
165 : ADD 2, 1, 0 ;  R2 = left operand
166 : LD  1, 1(5) ;  Load parameter 'n' into R1
167 : LDA 4, 4(5) ;  Base of callee frame
168 : ST  1, 1(4) ;  Store argument 0 into callee frame
169 : LDC 1, 5(0) ;  Load integer-literal into R1
170 : LDA 4, 4(5) ;  Base of callee frame
171 : ST  1, 2(4) ;  Store argument 1 into callee frame
172 : LDA 4, 4(5) ;  Base of callee frame
173 : LDA 6, 177(0) ;  Compute return address
174 : ST  6, 0(4) ;  Store RA in callee frame
175 : ADD 5, 4, 0 ;  Update pointer (enter callee)
176 : LDA 7, 192(0) ;  Call divisible
177 : LD  1, 3(5) ;  Load callee return value into R1
178 : LDC 3, 4(0) ;  Load callee frame size
179 : SUB 5, 5, 3 ;  Restore pointer
180 : ADD 3, 2, 1 ;  R3 = left OR right
181 : ADD 1, 3, 0 ;  R1 = R3
182 : JEQ 1, 187(0) ;  If condition is false, jump to ELSE
184 : LDC 1, 0(0) ;  Load boolean-literal into R1
185 : LDA 7, 188(0) ;  Skip ELSE block
187 : LDC 1, 1(0) ;  Load boolean-literal into R1
188 : ST  1, 2(5) ;  Store function result into stack frame
189 : LD  6, 0(5) ;  Load return address
190 : LDA 7, 0(6) ;  Return to caller
193 : LD  1, 1(5) ;  Load parameter 'x' into R1
194 : ADD 2, 1, 0 ;  R2 = left operand
195 : LD  1, 2(5) ;  Load parameter 'y' into R1
196 : DIV 3, 2, 1 ;  R3 = left / right
197 : ADD 1, 3, 0 ;  R1 = R3
198 : ADD 2, 1, 0 ;  R2 = left operand
199 : LD  1, 2(5) ;  Load parameter 'y' into R1
200 : MUL 3, 2, 1 ;  R3 = left * right
201 : ADD 1, 3, 0 ;  R1 = R3
202 : ADD 2, 1, 0 ;  R2 = left operand
203 : LD  1, 1(5) ;  Load parameter 'x' into R1
204 : SUB 3, 2, 1 ;  delta = left - right
205 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
206 : LDC 1, 0(0) ;  FALSE
207 : LDA 7, 1(7) ;  Skip TRUE
208 : LDC 1, 1(0) ;  TRUE
209 : JEQ 1, 214(0) ;  If condition is false, jump to ELSE
211 : LDC 1, 1(0) ;  Load boolean-literal into R1
212 : LDA 7, 215(0) ;  Skip ELSE block
214 : LDC 1, 0(0) ;  Load boolean-literal into R1
215 : ST  1, 3(5) ;  Store function result into stack frame
216 : LD  6, 0(5) ;  Load return address
217 : LDA 7, 0(6) ;  Return to caller
