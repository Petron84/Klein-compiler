0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'createLoop'
12 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=124) into callee frame
15 : LD   1, 1(5) ;  Load parameter 'length' into R1
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
20 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
21 : SUB  1, 2, 1 ;  R1 = left - right
22 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124) into callee frame
23 : LDA 6, 2(7) ;  Compute return address
24 : ST 6, 0(3) ;  Store return address in callee frame
25 : ADD  5, 3, 0 ;  Update pointer
26 : LDA 7, 729(0) ;  Call EXP
27 : LD 1, 3(5) ;  Load callee return value into R1
28 : LDC  4, 3(0) ;  Load frame size
29 : SUB  5, 5, 4 ;  Restore pointer
30 : ST 1, 1(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=124), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=124), Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)],line=124)],line=124) into callee frame
31 : LD   1, 1(5) ;  Load parameter 'length' into R1
32 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
33 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
34 : DIV  1, 2, 1 ;  R1 = left / right
35 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124) into callee frame
36 : LDA 6, 2(7) ;  Compute return address
37 : ST 6, 0(3) ;  Store return address in callee frame
38 : ADD  5, 3, 0 ;  Update pointer
39 : LDA 7, 47(0) ;  Call createLoop
40 : LD 1, 3(5) ;  Load callee return value into R1
41 : LDC  4, 3(0) ;  Load frame size
42 : SUB  5, 5, 4 ;  Restore pointer
43 : ST 1, 4(0) ;  Store function-call result into caller's return slot
44 : LD   1, 4(0) ;  Load return value into register 1
45 : LD  6, 2(0) ;  Load return address for main function into register 6
46 : LDA  7, 0(6) ;  Jump to return address of main function
47 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'aLoop'
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=119) into callee frame
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=119) into callee frame
52 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LD   1, 1(5) ;  Load parameter 'a' into R1
55 : MUL  1, 2, 1 ;  R1 = left * right
56 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='10',line=119), Tree Node('IDENTIFIER', value='a',line=119)],line=119) into callee frame
57 : LDA 6, 2(7) ;  Compute return address
58 : ST 6, 0(3) ;  Store return address in callee frame
59 : ADD  5, 3, 0 ;  Update pointer
60 : LDA 7, 67(0) ;  Call aLoop
61 : LD 1, 4(5) ;  Load callee return value into R1
62 : LDC  4, 4(0) ;  Load frame size
63 : SUB  5, 5, 4 ;  Restore pointer
64 : ST   1, 3(5) ;  Store function result into stack frame
65 : LD   6, 0(5) ;  Load return address
66 : LDA  7, 0(6) ;  Return to caller
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LD   1, 3(5) ;  Load parameter 'upper' into R1
70 : SUB  1, 2, 1 ;  left - right for less-than check
71 : JLT  1, 2(7) ;  If R1 < 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
76 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'aLoop1'
77 : LD   1, 1(5) ;  Load parameter 'a' into R1
78 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115) into callee frame
79 : LD   1, 2(5) ;  Load parameter 'n' into R1
80 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115) into callee frame
81 : LD   1, 3(5) ;  Load parameter 'upper' into R1
82 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=115) into callee frame
83 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'EXP'
86 : LD   1, 1(5) ;  Load parameter 'a' into R1
87 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115) into callee frame
88 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
89 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=115) into callee frame
90 : LDA 6, 2(7) ;  Compute return address
91 : ST 6, 0(3) ;  Store return address in callee frame
92 : ADD  5, 3, 0 ;  Update pointer
93 : LDA 7, 729(0) ;  Call EXP
94 : LD 1, 3(5) ;  Load callee return value into R1
95 : LDC  4, 5(0) ;  Load frame size
96 : SUB  5, 5, 4 ;  Restore pointer
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
99 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
100 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
101 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'EXP'
102 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
103 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=115) into callee frame
104 : LD   1, 2(5) ;  Load parameter 'n' into R1
105 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115) into callee frame
106 : LDA 6, 2(7) ;  Compute return address
107 : ST 6, 0(3) ;  Store return address in callee frame
108 : ADD  5, 3, 0 ;  Update pointer
109 : LDA 7, 729(0) ;  Call EXP
110 : LD 1, 3(5) ;  Load callee return value into R1
111 : LDC  4, 5(0) ;  Load frame size
112 : SUB  5, 5, 4 ;  Restore pointer
113 : MUL  1, 2, 1 ;  R1 = left * right
114 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
115 : LD   1, 1(5) ;  Load parameter 'a' into R1
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  1, 2, 1 ;  R1 = left + right
118 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
119 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
120 : ADD  1, 2, 1 ;  R1 = left + right
121 : ST 1, 4(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=115), Tree Node('INTEGER-LITERAL', value='2',line=115)],line=115)],line=115)],line=115), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=115), Tree Node('IDENTIFIER', value='n',line=115)],line=115)],line=115)],line=115), Tree Node('IDENTIFIER', value='a',line=115)],line=115)],line=115), Tree Node('INTEGER-LITERAL', value='1',line=115)],line=115) into callee frame
122 : LDA 6, 2(7) ;  Compute return address
123 : ST 6, 0(3) ;  Store return address in callee frame
124 : ADD  5, 3, 0 ;  Update pointer
125 : LDA 7, 134(0) ;  Call aLoop1
126 : LD 1, 5(5) ;  Load callee return value into R1
127 : LDC  4, 5(0) ;  Load frame size
128 : SUB  5, 5, 4 ;  Restore pointer
129 : LDA  7, 131(0) ;  Skip ELSE block
130 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
131 : ST   1, 4(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'aLoop2'
135 : LD   1, 1(5) ;  Load parameter 'a' into R1
136 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=111) into callee frame
137 : LD   1, 2(5) ;  Load parameter 'n' into R1
138 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=111) into callee frame
139 : LD   1, 3(5) ;  Load parameter 'upper' into R1
140 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=111) into callee frame
141 : LD   1, 4(5) ;  Load parameter 'det' into R1
142 : ST 1, 4(3) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111) into callee frame
143 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'SQRT'
144 : LD   1, 4(5) ;  Load parameter 'det' into R1
145 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111) into callee frame
146 : LDA 6, 2(7) ;  Compute return address
147 : ST 6, 0(3) ;  Store return address in callee frame
148 : ADD  5, 3, 0 ;  Update pointer
149 : LDA 7, 653(0) ;  Call SQRT
150 : LD 1, 2(5) ;  Load callee return value into R1
151 : LDC  4, 6(0) ;  Load frame size
152 : SUB  5, 5, 4 ;  Restore pointer
153 : ST 1, 5(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='SQRT',line=111), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='det',line=111)],line=111)],line=111) into callee frame
154 : LDA 6, 2(7) ;  Compute return address
155 : ST 6, 0(3) ;  Store return address in callee frame
156 : ADD  5, 3, 0 ;  Update pointer
157 : LDA 7, 164(0) ;  Call aLoop2
158 : LD 1, 6(5) ;  Load callee return value into R1
159 : LDC  4, 6(0) ;  Load frame size
160 : SUB  5, 5, 4 ;  Restore pointer
161 : ST   1, 5(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
164 : LDA 3, 7(5) ;  Advance DMEM pointer to callee frame 'aLoop3'
165 : LD   1, 1(5) ;  Load parameter 'a' into R1
166 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=105) into callee frame
167 : LD   1, 2(5) ;  Load parameter 'n' into R1
168 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105) into callee frame
169 : LD   1, 3(5) ;  Load parameter 'upper' into R1
170 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=105) into callee frame
171 : LD   1, 4(5) ;  Load parameter 'det' into R1
172 : ST 1, 4(3) ;  Store argument Tree Node('IDENTIFIER', value='det',line=105) into callee frame
173 : LD   1, 5(5) ;  Load parameter 'root' into R1
174 : ST 1, 5(3) ;  Store argument Tree Node('IDENTIFIER', value='root',line=105) into callee frame
175 : LD   1, 1(5) ;  Load parameter 'a' into R1
176 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
177 : LDA 3, 7(5) ;  Advance DMEM pointer to callee frame 'EXP'
178 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
179 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=105) into callee frame
180 : LD   1, 2(5) ;  Load parameter 'n' into R1
181 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105) into callee frame
182 : LDA 6, 2(7) ;  Compute return address
183 : ST 6, 0(3) ;  Store return address in callee frame
184 : ADD  5, 3, 0 ;  Update pointer
185 : LDA 7, 729(0) ;  Call EXP
186 : LD 1, 3(5) ;  Load callee return value into R1
187 : LDC  4, 7(0) ;  Load frame size
188 : SUB  5, 5, 4 ;  Restore pointer
189 : MUL  1, 2, 1 ;  R1 = left * right
190 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
191 : LD   1, 5(5) ;  Load parameter 'root' into R1
192 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
193 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
194 : ADD  1, 2, 1 ;  R1 = left + right
195 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
196 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
197 : DIV  1, 2, 1 ;  R1 = left / right
198 : ADD  1, 2, 1 ;  R1 = left + right
199 : ST 1, 6(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='a',line=105), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=105), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=105), Tree Node('IDENTIFIER', value='n',line=105)],line=105)],line=105)],line=105), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=105), Tree Node('INTEGER-LITERAL', value='1',line=105)],line=105), Tree Node('INTEGER-LITERAL', value='2',line=105)],line=105)],line=105) into callee frame
200 : LDA 6, 2(7) ;  Compute return address
201 : ST 6, 0(3) ;  Store return address in callee frame
202 : ADD  5, 3, 0 ;  Update pointer
203 : LDA 7, 210(0) ;  Call aLoop3
204 : LD 1, 7(5) ;  Load callee return value into R1
205 : LDC  4, 7(0) ;  Load frame size
206 : SUB  5, 5, 4 ;  Restore pointer
207 : ST   1, 6(5) ;  Store function result into stack frame
208 : LD   6, 0(5) ;  Load return address
209 : LDA  7, 0(6) ;  Return to caller
210 : LDA 3, 8(5) ;  Advance DMEM pointer to callee frame 'ISROOT'
211 : LD   1, 5(5) ;  Load parameter 'root' into R1
212 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='root',line=96) into callee frame
213 : LD   1, 4(5) ;  Load parameter 'det' into R1
214 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='det',line=96) into callee frame
215 : LDA 6, 2(7) ;  Compute return address
216 : ST 6, 0(3) ;  Store return address in callee frame
217 : ADD  5, 3, 0 ;  Update pointer
218 : LDA 7, 504(0) ;  Call ISROOT
219 : LD 1, 3(5) ;  Load callee return value into R1
220 : LDC  4, 8(0) ;  Load frame size
221 : SUB  5, 5, 4 ;  Restore pointer
222 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
223 : LDA 3, 8(5) ;  Advance DMEM pointer to callee frame 'EVEN'
224 : LD   1, 5(5) ;  Load parameter 'root' into R1
225 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
226 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
227 : ADD  1, 2, 1 ;  R1 = left + right
228 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=96), Tree Node('INTEGER-LITERAL', value='1',line=96)],line=96) into callee frame
229 : LDA 6, 2(7) ;  Compute return address
230 : ST 6, 0(3) ;  Store return address in callee frame
231 : ADD  5, 3, 0 ;  Update pointer
232 : LDA 7, 518(0) ;  Call EVEN
233 : LD 1, 2(5) ;  Load callee return value into R1
234 : LDC  4, 8(0) ;  Load frame size
235 : SUB  5, 5, 4 ;  Restore pointer
236 : MUL  1, 2, 1 ;  R1 = left AND right
237 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
238 : LDA 3, 8(5) ;  Advance DMEM pointer to callee frame 'isExcellent'
239 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
240 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=96) into callee frame
241 : LDA 6, 2(7) ;  Compute return address
242 : ST 6, 0(3) ;  Store return address in callee frame
243 : ADD  5, 3, 0 ;  Update pointer
244 : LDA 7, 316(0) ;  Call isExcellent
245 : LD 1, 2(5) ;  Load callee return value into R1
246 : LDC  4, 8(0) ;  Load frame size
247 : SUB  5, 5, 4 ;  Restore pointer
248 : MUL  1, 2, 1 ;  R1 = left AND right
249 : JEQ  1, 267(0) ;  If condition is false, jump to ELSE
250 : LDA 3, 8(5) ;  Advance DMEM pointer to callee frame 'printCandidateAndContinue'
251 : LD   1, 1(5) ;  Load parameter 'a' into R1
252 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=97) into callee frame
253 : LD   1, 2(5) ;  Load parameter 'n' into R1
254 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=97) into callee frame
255 : LD   1, 3(5) ;  Load parameter 'upper' into R1
256 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=97) into callee frame
257 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
258 : ST 1, 4(3) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=97) into callee frame
259 : LDA 6, 2(7) ;  Compute return address
260 : ST 6, 0(3) ;  Store return address in callee frame
261 : ADD  5, 3, 0 ;  Update pointer
262 : LDA 7, 287(0) ;  Call printCandidateAndContinue
263 : LD 1, 5(5) ;  Load callee return value into R1
264 : LDC  4, 8(0) ;  Load frame size
265 : SUB  5, 5, 4 ;  Restore pointer
266 : LDA  7, 284(0) ;  Skip ELSE block
267 : LDA 3, 8(5) ;  Advance DMEM pointer to callee frame 'aLoop'
268 : LD   1, 1(5) ;  Load parameter 'a' into R1
269 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
270 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
271 : ADD  1, 2, 1 ;  R1 = left + right
272 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=98), Tree Node('INTEGER-LITERAL', value='1',line=98)],line=98) into callee frame
273 : LD   1, 2(5) ;  Load parameter 'n' into R1
274 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=98) into callee frame
275 : LD   1, 3(5) ;  Load parameter 'upper' into R1
276 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=98) into callee frame
277 : LDA 6, 2(7) ;  Compute return address
278 : ST 6, 0(3) ;  Store return address in callee frame
279 : ADD  5, 3, 0 ;  Update pointer
280 : LDA 7, 67(0) ;  Call aLoop
281 : LD 1, 4(5) ;  Load callee return value into R1
282 : LDC  4, 8(0) ;  Load frame size
283 : SUB  5, 5, 4 ;  Restore pointer
284 : ST   1, 7(5) ;  Store function result into stack frame
285 : LD   6, 0(5) ;  Load return address
286 : LDA  7, 0(6) ;  Return to caller
287 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
288 : LDA  3, 6(5) ;  Update DMEM pointer
289 : LDA  6, 2(7) ;  Compute return address
290 : ST   6, 0(3) ;  Store return address
291 : ADD  5, 3, 0 ;  Updated Pointer
292 : LDA  7, 8(0) ; Call print
293 : LDC  4, 6(0) ;  Load frame size
294 : SUB  5, 5, 4 ;  Restore pointer
295 : ST   1, 5(5) ;  Store function result into stack frame
296 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'aLoop'
297 : LD   1, 1(5) ;  Load parameter 'a' into R1
298 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
299 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
300 : ADD  1, 2, 1 ;  R1 = left + right
301 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=88), Tree Node('INTEGER-LITERAL', value='1',line=88)],line=88) into callee frame
302 : LD   1, 2(5) ;  Load parameter 'n' into R1
303 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=88) into callee frame
304 : LD   1, 3(5) ;  Load parameter 'upper' into R1
305 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=88) into callee frame
306 : LDA 6, 2(7) ;  Compute return address
307 : ST 6, 0(3) ;  Store return address in callee frame
308 : ADD  5, 3, 0 ;  Update pointer
309 : LDA 7, 67(0) ;  Call aLoop
310 : LD 1, 4(5) ;  Load callee return value into R1
311 : LDC  4, 6(0) ;  Load frame size
312 : SUB  5, 5, 4 ;  Restore pointer
313 : ST   1, 5(5) ;  Store function result into stack frame
314 : LD   6, 0(5) ;  Load return address
315 : LDA  7, 0(6) ;  Return to caller
316 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isExcellentSwitch'
317 : LD   1, 1(5) ;  Load parameter 'n' into R1
318 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78) into callee frame
319 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
320 : LD   1, 1(5) ;  Load parameter 'n' into R1
321 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78) into callee frame
322 : LDA 6, 2(7) ;  Compute return address
323 : ST 6, 0(3) ;  Store return address in callee frame
324 : ADD  5, 3, 0 ;  Update pointer
325 : LDA 7, 474(0) ;  Call length
326 : LD 1, 2(5) ;  Load callee return value into R1
327 : LDC  4, 3(0) ;  Load frame size
328 : SUB  5, 5, 4 ;  Restore pointer
329 : ST 1, 2(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=78), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=78)],line=78)],line=78) into callee frame
330 : LDA 6, 2(7) ;  Compute return address
331 : ST 6, 0(3) ;  Store return address in callee frame
332 : ADD  5, 3, 0 ;  Update pointer
333 : LDA 7, 340(0) ;  Call isExcellentSwitch
334 : LD 1, 3(5) ;  Load callee return value into R1
335 : LDC  4, 3(0) ;  Load frame size
336 : SUB  5, 5, 4 ;  Restore pointer
337 : ST   1, 2(5) ;  Store function result into stack frame
338 : LD   6, 0(5) ;  Load return address
339 : LDA  7, 0(6) ;  Return to caller
340 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'ODD'
341 : LD   1, 2(5) ;  Load parameter 'length' into R1
342 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='length',line=73) into callee frame
343 : LDA 6, 2(7) ;  Compute return address
344 : ST 6, 0(3) ;  Store return address in callee frame
345 : ADD  5, 3, 0 ;  Update pointer
346 : LDA 7, 691(0) ;  Call ODD
347 : LD 1, 2(5) ;  Load callee return value into R1
348 : LDC  4, 4(0) ;  Load frame size
349 : SUB  5, 5, 4 ;  Restore pointer
350 : JEQ  1, 353(0) ;  If condition is false, jump to ELSE
351 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
352 : LDA  7, 390(0) ;  Skip ELSE block
353 : LD   1, 1(5) ;  Load parameter 'n' into R1
354 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
355 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'excellentDiff'
356 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'a'
357 : LD   1, 1(5) ;  Load parameter 'n' into R1
358 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
359 : LDA 6, 2(7) ;  Compute return address
360 : ST 6, 0(3) ;  Store return address in callee frame
361 : ADD  5, 3, 0 ;  Update pointer
362 : LDA 7, 444(0) ;  Call a
363 : LD 1, 2(5) ;  Load callee return value into R1
364 : LDC  4, 4(0) ;  Load frame size
365 : SUB  5, 5, 4 ;  Restore pointer
366 : ST 1, 1(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='a',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75) into callee frame
367 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'b'
368 : LD   1, 1(5) ;  Load parameter 'n' into R1
369 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
370 : LDA 6, 2(7) ;  Compute return address
371 : ST 6, 0(3) ;  Store return address in callee frame
372 : ADD  5, 3, 0 ;  Update pointer
373 : LDA 7, 406(0) ;  Call b
374 : LD 1, 2(5) ;  Load callee return value into R1
375 : LDC  4, 4(0) ;  Load frame size
376 : SUB  5, 5, 4 ;  Restore pointer
377 : ST 1, 2(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='b',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75) into callee frame
378 : LDA 6, 2(7) ;  Compute return address
379 : ST 6, 0(3) ;  Store return address in callee frame
380 : ADD  5, 3, 0 ;  Update pointer
381 : LDA 7, 393(0) ;  Call excellentDiff
382 : LD 1, 3(5) ;  Load callee return value into R1
383 : LDC  4, 4(0) ;  Load frame size
384 : SUB  5, 5, 4 ;  Restore pointer
385 : SUB  1, 2, 1 ;  left - right for equality check
386 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
387 : LDC  1, 0(0) ;  false
388 : LDA  7, 1(7) ;  skip setting true
389 : LDC  1, 1(0) ;  true
390 : ST   1, 3(5) ;  Store function result into stack frame
391 : LD   6, 0(5) ;  Load return address
392 : LDA  7, 0(6) ;  Return to caller
393 : LD   1, 2(5) ;  Load parameter 'b' into R1
394 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
395 : LD   1, 2(5) ;  Load parameter 'b' into R1
396 : MUL  1, 2, 1 ;  R1 = left * right
397 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
398 : LD   1, 1(5) ;  Load parameter 'a' into R1
399 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
400 : LD   1, 1(5) ;  Load parameter 'a' into R1
401 : MUL  1, 2, 1 ;  R1 = left * right
402 : SUB  1, 2, 1 ;  R1 = left - right
403 : ST   1, 3(5) ;  Store function result into stack frame
404 : LD   6, 0(5) ;  Load return address
405 : LDA  7, 0(6) ;  Return to caller
406 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'MOD'
407 : LD   1, 1(5) ;  Load parameter 'n' into R1
408 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67) into callee frame
409 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
410 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
411 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=67) into callee frame
412 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
413 : LD   1, 1(5) ;  Load parameter 'n' into R1
414 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67) into callee frame
415 : LDA 6, 2(7) ;  Compute return address
416 : ST 6, 0(3) ;  Store return address in callee frame
417 : ADD  5, 3, 0 ;  Update pointer
418 : LDA 7, 474(0) ;  Call length
419 : LD 1, 2(5) ;  Load callee return value into R1
420 : LDC  4, 3(0) ;  Load frame size
421 : SUB  5, 5, 4 ;  Restore pointer
422 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
423 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
424 : DIV  1, 2, 1 ;  R1 = left / right
425 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67) into callee frame
426 : LDA 6, 2(7) ;  Compute return address
427 : ST 6, 0(3) ;  Store return address in callee frame
428 : ADD  5, 3, 0 ;  Update pointer
429 : LDA 7, 729(0) ;  Call EXP
430 : LD 1, 3(5) ;  Load callee return value into R1
431 : LDC  4, 3(0) ;  Load frame size
432 : SUB  5, 5, 4 ;  Restore pointer
433 : ST 1, 2(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=67), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67)],line=67)],line=67) into callee frame
434 : LDA 6, 2(7) ;  Compute return address
435 : ST 6, 0(3) ;  Store return address in callee frame
436 : ADD  5, 3, 0 ;  Update pointer
437 : LDA 7, 761(0) ;  Call MOD
438 : LD 1, 3(5) ;  Load callee return value into R1
439 : LDC  4, 3(0) ;  Load frame size
440 : SUB  5, 5, 4 ;  Restore pointer
441 : ST   1, 2(5) ;  Store function result into stack frame
442 : LD   6, 0(5) ;  Load return address
443 : LDA  7, 0(6) ;  Return to caller
444 : LD   1, 1(5) ;  Load parameter 'n' into R1
445 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
446 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
447 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
448 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=63) into callee frame
449 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
450 : LD   1, 1(5) ;  Load parameter 'n' into R1
451 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=63) into callee frame
452 : LDA 6, 2(7) ;  Compute return address
453 : ST 6, 0(3) ;  Store return address in callee frame
454 : ADD  5, 3, 0 ;  Update pointer
455 : LDA 7, 474(0) ;  Call length
456 : LD 1, 2(5) ;  Load callee return value into R1
457 : LDC  4, 3(0) ;  Load frame size
458 : SUB  5, 5, 4 ;  Restore pointer
459 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
460 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
461 : DIV  1, 2, 1 ;  R1 = left / right
462 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=63), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=63)],line=63)],line=63), Tree Node('INTEGER-LITERAL', value='2',line=63)],line=63) into callee frame
463 : LDA 6, 2(7) ;  Compute return address
464 : ST 6, 0(3) ;  Store return address in callee frame
465 : ADD  5, 3, 0 ;  Update pointer
466 : LDA 7, 729(0) ;  Call EXP
467 : LD 1, 3(5) ;  Load callee return value into R1
468 : LDC  4, 3(0) ;  Load frame size
469 : SUB  5, 5, 4 ;  Restore pointer
470 : DIV  1, 2, 1 ;  R1 = left / right
471 : ST   1, 2(5) ;  Store function result into stack frame
472 : LD   6, 0(5) ;  Load return address
473 : LDA  7, 0(6) ;  Return to caller
474 : LD   1, 1(5) ;  Load parameter 'n' into R1
475 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
476 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
477 : SUB  1, 2, 1 ;  left - right for less-than check
478 : JLT  1, 2(7) ;  If R1 < 0, jump to true
479 : LDC  1, 0(0) ;  false
480 : LDA  7, 1(7) ;  skip setting true
481 : LDC  1, 1(0) ;  true
482 : JEQ  1, 485(0) ;  If condition is false, jump to ELSE
483 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
484 : LDA  7, 501(0) ;  Skip ELSE block
485 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
486 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
487 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'length'
488 : LD   1, 1(5) ;  Load parameter 'n' into R1
489 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
490 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
491 : DIV  1, 2, 1 ;  R1 = left / right
492 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=59), Tree Node('INTEGER-LITERAL', value='10',line=59)],line=59) into callee frame
493 : LDA 6, 2(7) ;  Compute return address
494 : ST 6, 0(3) ;  Store return address in callee frame
495 : ADD  5, 3, 0 ;  Update pointer
496 : LDA 7, 474(0) ;  Call length
497 : LD 1, 2(5) ;  Load callee return value into R1
498 : LDC  4, 3(0) ;  Load frame size
499 : SUB  5, 5, 4 ;  Restore pointer
500 : ADD  1, 2, 1 ;  R1 = left + right
501 : ST   1, 2(5) ;  Store function result into stack frame
502 : LD   6, 0(5) ;  Load return address
503 : LDA  7, 0(6) ;  Return to caller
504 : LD   1, 2(5) ;  Load parameter 'n' into R1
505 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
506 : LD   1, 1(5) ;  Load parameter 'r' into R1
507 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
508 : LD   1, 1(5) ;  Load parameter 'r' into R1
509 : MUL  1, 2, 1 ;  R1 = left * right
510 : SUB  1, 2, 1 ;  left - right for equality check
511 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
512 : LDC  1, 0(0) ;  false
513 : LDA  7, 1(7) ;  skip setting true
514 : LDC  1, 1(0) ;  true
515 : ST   1, 3(5) ;  Store function result into stack frame
516 : LD   6, 0(5) ;  Load return address
517 : LDA  7, 0(6) ;  Return to caller
518 : LD   1, 1(5) ;  Load parameter 'n' into R1
519 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
520 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
521 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
522 : LD   1, 1(5) ;  Load parameter 'n' into R1
523 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
524 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
525 : DIV  1, 2, 1 ;  R1 = left / right
526 : MUL  1, 2, 1 ;  R1 = left * right
527 : SUB  1, 2, 1 ;  left - right for equality check
528 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
529 : LDC  1, 0(0) ;  false
530 : LDA  7, 1(7) ;  skip setting true
531 : LDC  1, 1(0) ;  true
532 : ST   1, 2(5) ;  Store function result into stack frame
533 : LD   6, 0(5) ;  Load return address
534 : LDA  7, 0(6) ;  Return to caller
535 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'LE'
536 : LD   1, 4(5) ;  Load parameter 'mid' into R1
537 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
538 : LD   1, 4(5) ;  Load parameter 'mid' into R1
539 : MUL  1, 2, 1 ;  R1 = left * right
540 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='mid',line=37), Tree Node('IDENTIFIER', value='mid',line=37)],line=37) into callee frame
541 : LD   1, 1(5) ;  Load parameter 'n' into R1
542 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=37) into callee frame
543 : LDA 6, 2(7) ;  Compute return address
544 : ST 6, 0(3) ;  Store return address in callee frame
545 : ADD  5, 3, 0 ;  Update pointer
546 : LDA 7, 670(0) ;  Call LE
547 : LD 1, 3(5) ;  Load callee return value into R1
548 : LDC  4, 6(0) ;  Load frame size
549 : SUB  5, 5, 4 ;  Restore pointer
550 : JEQ  1, 566(0) ;  If condition is false, jump to ELSE
551 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
552 : LD   1, 1(5) ;  Load parameter 'n' into R1
553 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=38) into callee frame
554 : LD   1, 4(5) ;  Load parameter 'mid' into R1
555 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=38) into callee frame
556 : LD   1, 3(5) ;  Load parameter 'high' into R1
557 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='high',line=38) into callee frame
558 : LDA 6, 2(7) ;  Compute return address
559 : ST 6, 0(3) ;  Store return address in callee frame
560 : ADD  5, 3, 0 ;  Update pointer
561 : LDA 7, 583(0) ;  Call SQRTSEARCH
562 : LD 1, 4(5) ;  Load callee return value into R1
563 : LDC  4, 6(0) ;  Load frame size
564 : SUB  5, 5, 4 ;  Restore pointer
565 : LDA  7, 580(0) ;  Skip ELSE block
566 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
567 : LD   1, 1(5) ;  Load parameter 'n' into R1
568 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=40) into callee frame
569 : LD   1, 2(5) ;  Load parameter 'low' into R1
570 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='low',line=40) into callee frame
571 : LD   1, 4(5) ;  Load parameter 'mid' into R1
572 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=40) into callee frame
573 : LDA 6, 2(7) ;  Compute return address
574 : ST 6, 0(3) ;  Store return address in callee frame
575 : ADD  5, 3, 0 ;  Update pointer
576 : LDA 7, 583(0) ;  Call SQRTSEARCH
577 : LD 1, 4(5) ;  Load callee return value into R1
578 : LDC  4, 6(0) ;  Load frame size
579 : SUB  5, 5, 4 ;  Restore pointer
580 : ST   1, 5(5) ;  Store function result into stack frame
581 : LD   6, 0(5) ;  Load return address
582 : LDA  7, 0(6) ;  Return to caller
583 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
584 : LD   1, 3(5) ;  Load parameter 'high' into R1
585 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='high',line=27) into callee frame
586 : LD   1, 2(5) ;  Load parameter 'low' into R1
587 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
588 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
589 : ADD  1, 2, 1 ;  R1 = left + right
590 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=27), Tree Node('INTEGER-LITERAL', value='1',line=27)],line=27) into callee frame
591 : LDA 6, 2(7) ;  Compute return address
592 : ST 6, 0(3) ;  Store return address in callee frame
593 : ADD  5, 3, 0 ;  Update pointer
594 : LDA 7, 670(0) ;  Call LE
595 : LD 1, 3(5) ;  Load callee return value into R1
596 : LDC  4, 5(0) ;  Load frame size
597 : SUB  5, 5, 4 ;  Restore pointer
598 : JEQ  1, 628(0) ;  If condition is false, jump to ELSE
599 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
600 : LD   1, 1(5) ;  Load parameter 'n' into R1
601 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
602 : LD   1, 2(5) ;  Load parameter 'low' into R1
603 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
604 : LD   1, 2(5) ;  Load parameter 'low' into R1
605 : MUL  1, 2, 1 ;  R1 = left * right
606 : SUB  1, 2, 1 ;  R1 = left - right
607 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=28), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='low',line=28), Tree Node('IDENTIFIER', value='low',line=28)],line=28)],line=28) into callee frame
608 : LD   1, 3(5) ;  Load parameter 'high' into R1
609 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
610 : LD   1, 3(5) ;  Load parameter 'high' into R1
611 : MUL  1, 2, 1 ;  R1 = left * right
612 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
613 : LD   1, 1(5) ;  Load parameter 'n' into R1
614 : SUB  1, 2, 1 ;  R1 = left - right
615 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='high',line=28), Tree Node('IDENTIFIER', value='high',line=28)],line=28), Tree Node('IDENTIFIER', value='n',line=28)],line=28) into callee frame
616 : LDA 6, 2(7) ;  Compute return address
617 : ST 6, 0(3) ;  Store return address in callee frame
618 : ADD  5, 3, 0 ;  Update pointer
619 : LDA 7, 670(0) ;  Call LE
620 : LD 1, 3(5) ;  Load callee return value into R1
621 : LDC  4, 5(0) ;  Load frame size
622 : SUB  5, 5, 4 ;  Restore pointer
623 : JEQ  1, 626(0) ;  If condition is false, jump to ELSE
624 : LD   1, 2(5) ;  Load parameter 'low' into R1
625 : LDA  7, 627(0) ;  Skip ELSE block
626 : LD   1, 3(5) ;  Load parameter 'high' into R1
627 : LDA  7, 650(0) ;  Skip ELSE block
628 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'SQRTSPLIT'
629 : LD   1, 1(5) ;  Load parameter 'n' into R1
630 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33) into callee frame
631 : LD   1, 2(5) ;  Load parameter 'low' into R1
632 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='low',line=33) into callee frame
633 : LD   1, 3(5) ;  Load parameter 'high' into R1
634 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='high',line=33) into callee frame
635 : LD   1, 2(5) ;  Load parameter 'low' into R1
636 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
637 : LD   1, 3(5) ;  Load parameter 'high' into R1
638 : ADD  1, 2, 1 ;  R1 = left + right
639 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
640 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
641 : DIV  1, 2, 1 ;  R1 = left / right
642 : ST 1, 4(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=33), Tree Node('IDENTIFIER', value='high',line=33)],line=33), Tree Node('INTEGER-LITERAL', value='2',line=33)],line=33) into callee frame
643 : LDA 6, 2(7) ;  Compute return address
644 : ST 6, 0(3) ;  Store return address in callee frame
645 : ADD  5, 3, 0 ;  Update pointer
646 : LDA 7, 535(0) ;  Call SQRTSPLIT
647 : LD 1, 5(5) ;  Load callee return value into R1
648 : LDC  4, 5(0) ;  Load frame size
649 : SUB  5, 5, 4 ;  Restore pointer
650 : ST   1, 4(5) ;  Store function result into stack frame
651 : LD   6, 0(5) ;  Load return address
652 : LDA  7, 0(6) ;  Return to caller
653 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
654 : LD   1, 1(5) ;  Load parameter 'n' into R1
655 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24) into callee frame
656 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
657 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=24) into callee frame
658 : LD   1, 1(5) ;  Load parameter 'n' into R1
659 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24) into callee frame
660 : LDA 6, 2(7) ;  Compute return address
661 : ST 6, 0(3) ;  Store return address in callee frame
662 : ADD  5, 3, 0 ;  Update pointer
663 : LDA 7, 583(0) ;  Call SQRTSEARCH
664 : LD 1, 4(5) ;  Load callee return value into R1
665 : LDC  4, 3(0) ;  Load frame size
666 : SUB  5, 5, 4 ;  Restore pointer
667 : ST   1, 2(5) ;  Store function result into stack frame
668 : LD   6, 0(5) ;  Load return address
669 : LDA  7, 0(6) ;  Return to caller
670 : LD   1, 1(5) ;  Load parameter 'p' into R1
671 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
672 : LD   1, 2(5) ;  Load parameter 'q' into R1
673 : SUB  1, 2, 1 ;  left - right for less-than check
674 : JLT  1, 2(7) ;  If R1 < 0, jump to true
675 : LDC  1, 0(0) ;  false
676 : LDA  7, 1(7) ;  skip setting true
677 : LDC  1, 1(0) ;  true
678 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
679 : LD   1, 1(5) ;  Load parameter 'p' into R1
680 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
681 : LD   1, 2(5) ;  Load parameter 'q' into R1
682 : SUB  1, 2, 1 ;  left - right for equality check
683 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
684 : LDC  1, 0(0) ;  false
685 : LDA  7, 1(7) ;  skip setting true
686 : LDC  1, 1(0) ;  true
687 : ADD  1, 2, 1 ;  R1 = left OR right
688 : ST   1, 3(5) ;  Store function result into stack frame
689 : LD   6, 0(5) ;  Load return address
690 : LDA  7, 0(6) ;  Return to caller
691 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
692 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
693 : LD   1, 1(5) ;  Load parameter 'n' into R1
694 : SUB  1, 2, 1 ;  left - right for less-than check
695 : JLT  1, 2(7) ;  If R1 < 0, jump to true
696 : LDC  1, 0(0) ;  false
697 : LDA  7, 1(7) ;  skip setting true
698 : LDC  1, 1(0) ;  true
699 : JEQ  1, 715(0) ;  If condition is false, jump to ELSE
700 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
701 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
702 : LD   1, 1(5) ;  Load parameter 'n' into R1
703 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
704 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
705 : DIV  1, 2, 1 ;  R1 = left / right
706 : MUL  1, 2, 1 ;  R1 = left * right
707 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
708 : LD   1, 1(5) ;  Load parameter 'n' into R1
709 : SUB  1, 2, 1 ;  left - right for less-than check
710 : JLT  1, 2(7) ;  If R1 < 0, jump to true
711 : LDC  1, 0(0) ;  false
712 : LDA  7, 1(7) ;  skip setting true
713 : LDC  1, 1(0) ;  true
714 : LDA  7, 726(0) ;  Skip ELSE block
715 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
716 : LD   1, 1(5) ;  Load parameter 'n' into R1
717 : SUB  1, 0, 1 ;  Negate value in R1
718 : ST 1, 1(3) ;  Store argument Tree Node('UNARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=18)],line=18) into callee frame
719 : LDA 6, 2(7) ;  Compute return address
720 : ST 6, 0(3) ;  Store return address in callee frame
721 : ADD  5, 3, 0 ;  Update pointer
722 : LDA 7, 691(0) ;  Call ODD
723 : LD 1, 2(5) ;  Load callee return value into R1
724 : LDC  4, 3(0) ;  Load frame size
725 : SUB  5, 5, 4 ;  Restore pointer
726 : ST   1, 2(5) ;  Store function result into stack frame
727 : LD   6, 0(5) ;  Load return address
728 : LDA  7, 0(6) ;  Return to caller
729 : LD   1, 2(5) ;  Load parameter 'n' into R1
730 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
731 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
732 : SUB  1, 2, 1 ;  left - right for equality check
733 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
734 : LDC  1, 0(0) ;  false
735 : LDA  7, 1(7) ;  skip setting true
736 : LDC  1, 1(0) ;  true
737 : JEQ  1, 740(0) ;  If condition is false, jump to ELSE
738 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
739 : LDA  7, 758(0) ;  Skip ELSE block
740 : LD   1, 1(5) ;  Load parameter 'm' into R1
741 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
742 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
743 : LD   1, 1(5) ;  Load parameter 'm' into R1
744 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=13) into callee frame
745 : LD   1, 2(5) ;  Load parameter 'n' into R1
746 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
747 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
748 : SUB  1, 2, 1 ;  R1 = left - right
749 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=13), Tree Node('INTEGER-LITERAL', value='1',line=13)],line=13) into callee frame
750 : LDA 6, 2(7) ;  Compute return address
751 : ST 6, 0(3) ;  Store return address in callee frame
752 : ADD  5, 3, 0 ;  Update pointer
753 : LDA 7, 729(0) ;  Call EXP
754 : LD 1, 3(5) ;  Load callee return value into R1
755 : LDC  4, 4(0) ;  Load frame size
756 : SUB  5, 5, 4 ;  Restore pointer
757 : MUL  1, 2, 1 ;  R1 = left * right
758 : ST   1, 3(5) ;  Store function result into stack frame
759 : LD   6, 0(5) ;  Load return address
760 : LDA  7, 0(6) ;  Return to caller
761 : LD   1, 1(5) ;  Load parameter 'm' into R1
762 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
763 : LD   1, 2(5) ;  Load parameter 'n' into R1
764 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
765 : LD   1, 1(5) ;  Load parameter 'm' into R1
766 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
767 : LD   1, 2(5) ;  Load parameter 'n' into R1
768 : DIV  1, 2, 1 ;  R1 = left / right
769 : MUL  1, 2, 1 ;  R1 = left * right
770 : SUB  1, 2, 1 ;  R1 = left - right
771 : ST   1, 3(5) ;  Store function result into stack frame
772 : LD   6, 0(5) ;  Load return address
773 : LDA  7, 0(6) ;  Return to caller
