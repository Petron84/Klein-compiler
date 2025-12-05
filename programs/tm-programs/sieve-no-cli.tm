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
14 : LDC 1, 2(0) ;  Load integer-literal into R1
15 : LDA 4, 4(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDC 1, 40(0) ;  Load integer-literal into R1
18 : LDA 4, 4(5) ;  Base of callee frame
19 : ST  1, 2(4) ;  Store argument 1 into callee frame
20 : LDA 4, 4(5) ;  Base of callee frame
21 : LDA 6, 25(0) ;  Compute return address
22 : ST  6, 0(4) ;  Store RA in callee frame
23 : ADD 5, 4, 0 ;  Update pointer (enter callee)
24 : LDA 7, 214(0) ;  Call sieveAt
25 : LD  1, 3(5) ;  Load callee return value into R1
26 : LDC 3, 4(0) ;  Load callee frame size
27 : SUB 5, 5, 3 ;  Restore pointer
28 : ST  1, 2(5) ;  Store result into current frame's return slot
29 : LD  1, 2(5) ;  Load return value into R1
30 : LD  6, 0(5) ;  Load return address for main function into R6
31 : LDA 7, 0(6) ;  Jump to return address of main function
34 : LD  1, 1(5) ;  Load parameter 'num' into R1
35 : ADD 2, 1, 0 ;  R2 = left operand
36 : LD  1, 2(5) ;  Load parameter 'den' into R1
37 : SUB 3, 2, 1 ;  delta = left - right
38 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
39 : LDC 1, 0(0) ;  FALSE
40 : LDA 7, 1(7) ;  Skip TRUE
41 : LDC 1, 1(0) ;  TRUE
42 : JEQ 1, 47(0) ;  If condition is false, jump to ELSE
44 : LD  1, 1(5) ;  Load parameter 'num' into R1
45 : LDA 7, 65(0) ;  Skip ELSE block
47 : LD  1, 1(5) ;  Load parameter 'num' into R1
48 : ADD 2, 1, 0 ;  R2 = left operand
49 : LD  1, 2(5) ;  Load parameter 'den' into R1
50 : SUB 3, 2, 1 ;  R3 = left - right
51 : ADD 1, 3, 0 ;  R1 = R3
52 : LDA 4, 4(5) ;  Base of callee frame
53 : ST  1, 1(4) ;  Store argument 0 into callee frame
54 : LD  1, 2(5) ;  Load parameter 'den' into R1
55 : LDA 4, 4(5) ;  Base of callee frame
56 : ST  1, 2(4) ;  Store argument 1 into callee frame
57 : LDA 4, 4(5) ;  Base of callee frame
58 : LDA 6, 62(0) ;  Compute return address
59 : ST  6, 0(4) ;  Store RA in callee frame
60 : ADD 5, 4, 0 ;  Update pointer (enter callee)
61 : LDA 7, 33(0) ;  Call rem
62 : LD  1, 3(5) ;  Load callee return value into R1
63 : LDC 3, 4(0) ;  Load callee frame size
64 : SUB 5, 5, 3 ;  Restore pointer
65 : ST  1, 3(5) ;  Store function result into stack frame
66 : LD  6, 0(5) ;  Load return address
67 : LDA 7, 0(6) ;  Return to caller
69 : LD  1, 2(5) ;  Load parameter 'b' into R1
70 : LDA 4, 4(5) ;  Base of callee frame
71 : ST  1, 1(4) ;  Store argument 0 into callee frame
72 : LD  1, 1(5) ;  Load parameter 'a' into R1
73 : LDA 4, 4(5) ;  Base of callee frame
74 : ST  1, 2(4) ;  Store argument 1 into callee frame
75 : LDA 4, 4(5) ;  Base of callee frame
76 : LDA 6, 80(0) ;  Compute return address
77 : ST  6, 0(4) ;  Store RA in callee frame
78 : ADD 5, 4, 0 ;  Update pointer (enter callee)
79 : LDA 7, 33(0) ;  Call rem
80 : LD  1, 3(5) ;  Load callee return value into R1
81 : LDC 3, 4(0) ;  Load callee frame size
82 : SUB 5, 5, 3 ;  Restore pointer
83 : ADD 2, 1, 0 ;  R2 = left operand
84 : LDC 1, 0(0) ;  Load integer-literal into R1
85 : SUB 3, 2, 1 ;  delta = left - right
86 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
87 : LDC 1, 0(0) ;  FALSE
88 : LDA 7, 1(7) ;  Skip TRUE
89 : LDC 1, 1(0) ;  TRUE
90 : ST  1, 3(5) ;  Store function result into stack frame
91 : LD  6, 0(5) ;  Load return address
92 : LDA 7, 0(6) ;  Return to caller
95 : LD  1, 1(5) ;  Load parameter 'i' into R1
96 : ADD 2, 1, 0 ;  R2 = left operand
97 : LD  1, 2(5) ;  Load parameter 'n' into R1
98 : SUB 3, 2, 1 ;  delta = left - right
99 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
100 : LDC 1, 0(0) ;  FALSE
101 : LDA 7, 1(7) ;  Skip TRUE
102 : LDC 1, 1(0) ;  TRUE
103 : JEQ 1, 142(0) ;  If condition is false, jump to ELSE
105 : LD  1, 1(5) ;  Load parameter 'i' into R1
106 : LDA 4, 4(5) ;  Base of callee frame
107 : ST  1, 1(4) ;  Store argument 0 into callee frame
108 : LD  1, 2(5) ;  Load parameter 'n' into R1
109 : LDA 4, 4(5) ;  Base of callee frame
110 : ST  1, 2(4) ;  Store argument 1 into callee frame
111 : LDA 4, 4(5) ;  Base of callee frame
112 : LDA 6, 116(0) ;  Compute return address
113 : ST  6, 0(4) ;  Store RA in callee frame
114 : ADD 5, 4, 0 ;  Update pointer (enter callee)
115 : LDA 7, 69(0) ;  Call divides
116 : LD  1, 3(5) ;  Load callee return value into R1
117 : LDC 3, 4(0) ;  Load callee frame size
118 : SUB 5, 5, 3 ;  Restore pointer
119 : ADD 2, 1, 0 ;  R2 = left operand
120 : LD  1, 1(5) ;  Load parameter 'i' into R1
121 : ADD 2, 1, 0 ;  R2 = left operand
122 : LDC 1, 1(0) ;  Load integer-literal into R1
123 : ADD 3, 2, 1 ;  R3 = left + right
124 : ADD 1, 3, 0 ;  R1 = R3
125 : LDA 4, 4(5) ;  Base of callee frame
126 : ST  1, 1(4) ;  Store argument 0 into callee frame
127 : LD  1, 2(5) ;  Load parameter 'n' into R1
128 : LDA 4, 4(5) ;  Base of callee frame
129 : ST  1, 2(4) ;  Store argument 1 into callee frame
130 : LDA 4, 4(5) ;  Base of callee frame
131 : LDA 6, 135(0) ;  Compute return address
132 : ST  6, 0(4) ;  Store RA in callee frame
133 : ADD 5, 4, 0 ;  Update pointer (enter callee)
134 : LDA 7, 94(0) ;  Call hasDivisorFrom
135 : LD  1, 3(5) ;  Load callee return value into R1
136 : LDC 3, 4(0) ;  Load callee frame size
137 : SUB 5, 5, 3 ;  Restore pointer
138 : ADD 3, 2, 1 ;  R3 = left OR right
139 : ADD 1, 3, 0 ;  R1 = R3
140 : LDA 7, 143(0) ;  Skip ELSE block
142 : LDC 1, 0(0) ;  Load boolean-literal into R1
143 : ST  1, 3(5) ;  Store function result into stack frame
144 : LD  6, 0(5) ;  Load return address
145 : LDA 7, 0(6) ;  Return to caller
147 : LDC 1, 2(0) ;  Load integer-literal into R1
148 : LDA 4, 4(5) ;  Base of callee frame
149 : ST  1, 1(4) ;  Store argument 0 into callee frame
150 : LD  1, 1(5) ;  Load parameter 'n' into R1
151 : LDA 4, 4(5) ;  Base of callee frame
152 : ST  1, 2(4) ;  Store argument 1 into callee frame
153 : LDA 4, 4(5) ;  Base of callee frame
154 : LDA 6, 158(0) ;  Compute return address
155 : ST  6, 0(4) ;  Store RA in callee frame
156 : ADD 5, 4, 0 ;  Update pointer (enter callee)
157 : LDA 7, 94(0) ;  Call hasDivisorFrom
158 : LD  1, 3(5) ;  Load callee return value into R1
159 : LDC 3, 4(0) ;  Load callee frame size
160 : SUB 5, 5, 3 ;  Restore pointer
161 : LDC 2, 1(0) ;  Load 1 into R2
162 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
163 : ST  1, 2(5) ;  Store function result into stack frame
164 : LD  6, 0(5) ;  Load return address
165 : LDA 7, 0(6) ;  Return to caller
168 : LD  1, 1(5) ;  Load parameter 'current' into R1
169 : LDA 4, 3(5) ;  Base of callee frame
170 : ST  1, 1(4) ;  Store argument 0 into callee frame
171 : LDA 4, 3(5) ;  Base of callee frame
172 : LDA 6, 176(0) ;  Compute return address
173 : ST  6, 0(4) ;  Store RA in callee frame
174 : ADD 5, 4, 0 ;  Update pointer (enter callee)
175 : LDA 7, 147(0) ;  Call isPrime
176 : LD  1, 2(5) ;  Load callee return value into R1
177 : LDC 3, 3(0) ;  Load callee frame size
178 : SUB 5, 5, 3 ;  Restore pointer
179 : JEQ 1, 184(0) ;  If condition is false, jump to ELSE
181 : LD  1, 1(5) ;  Load parameter 'current' into R1
182 : LDA 7, 185(0) ;  Skip ELSE block
184 : LDC 1, 0(0) ;  Load integer-literal into R1
185 : LDA 4, 3(5) ;  Base of callee frame (print)
186 : LDA 6, 190(0) ;  Compute return address
187 : ST  6, 0(4) ;  Store RA in callee frame
188 : ADD 5, 4, 0 ;  Update pointer (enter callee)
189 : LDA 7, 10(0) ;  Call print
190 : LDC 3, 3(0) ;  Load callee frame size
191 : SUB 5, 5, 3 ;  Restore pointer
192 : LD  1, 1(5) ;  Load parameter 'current' into R1
193 : ADD 2, 1, 0 ;  R2 = left operand
194 : LDC 1, 1(0) ;  Load integer-literal into R1
195 : ADD 3, 2, 1 ;  R3 = left + right
196 : ADD 1, 3, 0 ;  R1 = R3
197 : LDA 4, 4(5) ;  Base of callee frame
198 : ST  1, 1(4) ;  Store argument 0 into callee frame
199 : LD  1, 2(5) ;  Load parameter 'max' into R1
200 : LDA 4, 4(5) ;  Base of callee frame
201 : ST  1, 2(4) ;  Store argument 1 into callee frame
202 : LDA 4, 4(5) ;  Base of callee frame
203 : LDA 6, 207(0) ;  Compute return address
204 : ST  6, 0(4) ;  Store RA in callee frame
205 : ADD 5, 4, 0 ;  Update pointer (enter callee)
206 : LDA 7, 214(0) ;  Call sieveAt
207 : LD  1, 3(5) ;  Load callee return value into R1
208 : LDC 3, 4(0) ;  Load callee frame size
209 : SUB 5, 5, 3 ;  Restore pointer
210 : ST  1, 3(5) ;  Store function result into stack frame
211 : LD  6, 0(5) ;  Load return address
212 : LDA 7, 0(6) ;  Return to caller
215 : LD  1, 2(5) ;  Load parameter 'max' into R1
216 : ADD 2, 1, 0 ;  R2 = left operand
217 : LD  1, 1(5) ;  Load parameter 'current' into R1
218 : SUB 3, 2, 1 ;  delta = left - right
219 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
220 : LDC 1, 0(0) ;  FALSE
221 : LDA 7, 1(7) ;  Skip TRUE
222 : LDC 1, 1(0) ;  TRUE
223 : JEQ 1, 228(0) ;  If condition is false, jump to ELSE
225 : LDC 1, 1(0) ;  Load boolean-literal into R1
226 : LDA 7, 242(0) ;  Skip ELSE block
228 : LD  1, 1(5) ;  Load parameter 'current' into R1
229 : LDA 4, 4(5) ;  Base of callee frame
230 : ST  1, 1(4) ;  Store argument 0 into callee frame
231 : LD  1, 2(5) ;  Load parameter 'max' into R1
232 : LDA 4, 4(5) ;  Base of callee frame
233 : ST  1, 2(4) ;  Store argument 1 into callee frame
234 : LDA 4, 4(5) ;  Base of callee frame
235 : LDA 6, 239(0) ;  Compute return address
236 : ST  6, 0(4) ;  Store RA in callee frame
237 : ADD 5, 4, 0 ;  Update pointer (enter callee)
238 : LDA 7, 167(0) ;  Call doSieveAt
239 : LD  1, 3(5) ;  Load callee return value into R1
240 : LDC 3, 4(0) ;  Load callee frame size
241 : SUB 5, 5, 3 ;  Restore pointer
242 : ST  1, 3(5) ;  Store function result into stack frame
243 : LD  6, 0(5) ;  Load return address
244 : LDA 7, 0(6) ;  Return to caller
