0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'fareyNum'
16 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
17 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=4) into callee frame
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=4) into callee frame
20 : LD   1, 3(5) ;  Load parameter 'N' into R1
21 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=4) into callee frame
22 : LDA 6, 2(7) ;  Compute return address
23 : ST 6, 0(5) ;  Store return address in callee frame
24 : LDA 7, 451(0) ;  Call fareyNum
25 : LD 1, 4(5) ;  Load callee return value into R1
26 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
27 : LDA  5, 5(5) ;  Update DMEM pointer
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address
30 : LDA  7, 12(0) ; Call print
31 : LDC  5, -5(5) ;  Move pointer to previous stack frame
32 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'fareyDen'
33 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
34 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=5) into callee frame
35 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
36 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=5) into callee frame
37 : LD   1, 3(5) ;  Load parameter 'N' into R1
38 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=5) into callee frame
39 : LDA 6, 2(7) ;  Compute return address
40 : ST 6, 0(5) ;  Store return address in callee frame
41 : LDA 7, 348(0) ;  Call fareyDen
42 : LD 1, 4(5) ;  Load callee return value into R1
43 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
44 : ST 1, 8(0) ;  Store function-call result into caller's return slot
45 : LD   1, 8(0) ;  Load return value into register 1
46 : LD  6, 4(0) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 1(5) ;  Load parameter 'x' into R1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 2(5) ;  Load parameter 'y' into R1
51 : SUB  1, 2, 1 ;  left - right for less-than check
52 : JLT  1, 2(7) ;  If R1 < 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
57 : LD   1, 1(5) ;  Load parameter 'x' into R1
58 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
59 : LD   1, 2(5) ;  Load parameter 'y' into R1
60 : SUB  1, 2, 1 ;  left - right for equality check
61 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
62 : LDC  1, 0(0) ;  false
63 : LDA  7, 1(7) ;  skip setting true
64 : LDC  1, 1(0) ;  true
65 : ADD  1, 2, 1 ;  R1 = left OR right
66 : LDC  2, 1(0) ;  Load 1 into R2
67 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
68 : ST   1, 3(5) ;  Store function result into stack frame
69 : LD   6, 0(5) ;  Load return address
70 : LDA  7, 0(6) ;  Return to caller
71 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'greater'
72 : LD   1, 1(5) ;  Load parameter 'x' into R1
73 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
74 : LD   1, 4(5) ;  Load parameter 'yd' into R1
75 : MUL  1, 2, 1 ;  R1 = left * right
76 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='x',line=72), Tree Node('IDENTIFIER', value='yd',line=72)],line=72) into callee frame
77 : LD   1, 3(5) ;  Load parameter 'y' into R1
78 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
79 : LD   1, 2(5) ;  Load parameter 'xd' into R1
80 : MUL  1, 2, 1 ;  R1 = left * right
81 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='y',line=72), Tree Node('IDENTIFIER', value='xd',line=72)],line=72) into callee frame
82 : LDA 6, 2(7) ;  Compute return address
83 : ST 6, 0(5) ;  Store return address in callee frame
84 : LDA 7, 48(0) ;  Call greater
85 : LD 1, 3(5) ;  Load callee return value into R1
86 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
87 : ST   1, 5(5) ;  Store function result into stack frame
88 : LD   6, 0(5) ;  Load return address
89 : LDA  7, 0(6) ;  Return to caller
90 : LD   1, 1(5) ;  Load parameter 'x' into R1
91 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
92 : LD   1, 4(5) ;  Load parameter 'yd' into R1
93 : MUL  1, 2, 1 ;  R1 = left * right
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LD   1, 3(5) ;  Load parameter 'y' into R1
96 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
97 : LD   1, 2(5) ;  Load parameter 'xd' into R1
98 : MUL  1, 2, 1 ;  R1 = left * right
99 : SUB  1, 2, 1 ;  left - right for equality check
100 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
101 : LDC  1, 0(0) ;  false
102 : LDA  7, 1(7) ;  skip setting true
103 : LDC  1, 1(0) ;  true
104 : ST   1, 5(5) ;  Store function result into stack frame
105 : LD   6, 0(5) ;  Load return address
106 : LDA  7, 0(6) ;  Return to caller
107 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'greater'
108 : LD   1, 6(5) ;  Load parameter 'b' into R1
109 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=40) into callee frame
110 : LD   1, 4(5) ;  Load parameter 'N' into R1
111 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=40) into callee frame
112 : LDA 6, 2(7) ;  Compute return address
113 : ST 6, 0(5) ;  Store return address in callee frame
114 : LDA 7, 48(0) ;  Call greater
115 : LD 1, 3(5) ;  Load callee return value into R1
116 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
117 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
118 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'greater'
119 : LD   1, 8(5) ;  Load parameter 'd' into R1
120 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='d',line=40) into callee frame
121 : LD   1, 4(5) ;  Load parameter 'N' into R1
122 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=40) into callee frame
123 : LDA 6, 2(7) ;  Compute return address
124 : ST 6, 0(5) ;  Store return address in callee frame
125 : LDA 7, 48(0) ;  Call greater
126 : LD 1, 3(5) ;  Load callee return value into R1
127 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
128 : ADD  1, 2, 1 ;  R1 = left OR right
129 : JEQ  1, 165(0) ;  If condition is false, jump to ELSE
130 : LD   1, 1(5) ;  Load parameter 'selector' into R1
131 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
132 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
133 : SUB  1, 2, 1 ;  left - right for equality check
134 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
135 : LDC  1, 0(0) ;  false
136 : LDA  7, 1(7) ;  skip setting true
137 : LDC  1, 1(0) ;  true
138 : JEQ  1, 141(0) ;  If condition is false, jump to ELSE
139 : LD   1, 5(5) ;  Load parameter 'a' into R1
140 : LDA  7, 164(0) ;  Skip ELSE block
141 : LD   1, 1(5) ;  Load parameter 'selector' into R1
142 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
143 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
144 : SUB  1, 2, 1 ;  left - right for equality check
145 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
146 : LDC  1, 0(0) ;  false
147 : LDA  7, 1(7) ;  skip setting true
148 : LDC  1, 1(0) ;  true
149 : JEQ  1, 152(0) ;  If condition is false, jump to ELSE
150 : LD   1, 6(5) ;  Load parameter 'b' into R1
151 : LDA  7, 164(0) ;  Skip ELSE block
152 : LD   1, 1(5) ;  Load parameter 'selector' into R1
153 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
154 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
155 : SUB  1, 2, 1 ;  left - right for equality check
156 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
157 : LDC  1, 0(0) ;  false
158 : LDA  7, 1(7) ;  skip setting true
159 : LDC  1, 1(0) ;  true
160 : JEQ  1, 163(0) ;  If condition is false, jump to ELSE
161 : LD   1, 7(5) ;  Load parameter 'c' into R1
162 : LDA  7, 164(0) ;  Skip ELSE block
163 : LD   1, 8(5) ;  Load parameter 'd' into R1
164 : LDA  7, 311(0) ;  Skip ELSE block
165 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'fractionEqual'
166 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
167 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=48) into callee frame
168 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
169 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=48) into callee frame
170 : LD   1, 5(5) ;  Load parameter 'a' into R1
171 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
172 : LD   1, 7(5) ;  Load parameter 'c' into R1
173 : ADD  1, 2, 1 ;  R1 = left + right
174 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=48), Tree Node('IDENTIFIER', value='c',line=48)],line=48) into callee frame
175 : LD   1, 6(5) ;  Load parameter 'b' into R1
176 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
177 : LD   1, 8(5) ;  Load parameter 'd' into R1
178 : ADD  1, 2, 1 ;  R1 = left + right
179 : ST 1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=48), Tree Node('IDENTIFIER', value='d',line=48)],line=48) into callee frame
180 : LDA 6, 2(7) ;  Compute return address
181 : ST 6, 0(5) ;  Store return address in callee frame
182 : LDA 7, 90(0) ;  Call fractionEqual
183 : LD 1, 5(5) ;  Load callee return value into R1
184 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
185 : JEQ  1, 233(0) ;  If condition is false, jump to ELSE
186 : LD   1, 1(5) ;  Load parameter 'selector' into R1
187 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
188 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
189 : SUB  1, 2, 1 ;  left - right for equality check
190 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
191 : LDC  1, 0(0) ;  false
192 : LDA  7, 1(7) ;  skip setting true
193 : LDC  1, 1(0) ;  true
194 : JEQ  1, 200(0) ;  If condition is false, jump to ELSE
195 : LD   1, 5(5) ;  Load parameter 'a' into R1
196 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
197 : LD   1, 7(5) ;  Load parameter 'c' into R1
198 : ADD  1, 2, 1 ;  R1 = left + right
199 : LDA  7, 232(0) ;  Skip ELSE block
200 : LD   1, 1(5) ;  Load parameter 'selector' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
203 : SUB  1, 2, 1 ;  left - right for equality check
204 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
205 : LDC  1, 0(0) ;  false
206 : LDA  7, 1(7) ;  skip setting true
207 : LDC  1, 1(0) ;  true
208 : JEQ  1, 214(0) ;  If condition is false, jump to ELSE
209 : LD   1, 6(5) ;  Load parameter 'b' into R1
210 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
211 : LD   1, 8(5) ;  Load parameter 'd' into R1
212 : ADD  1, 2, 1 ;  R1 = left + right
213 : LDA  7, 232(0) ;  Skip ELSE block
214 : LD   1, 1(5) ;  Load parameter 'selector' into R1
215 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
216 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
217 : SUB  1, 2, 1 ;  left - right for equality check
218 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
219 : LDC  1, 0(0) ;  false
220 : LDA  7, 1(7) ;  skip setting true
221 : LDC  1, 1(0) ;  true
222 : JEQ  1, 228(0) ;  If condition is false, jump to ELSE
223 : LD   1, 5(5) ;  Load parameter 'a' into R1
224 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
225 : LD   1, 7(5) ;  Load parameter 'c' into R1
226 : ADD  1, 2, 1 ;  R1 = left + right
227 : LDA  7, 232(0) ;  Skip ELSE block
228 : LD   1, 6(5) ;  Load parameter 'b' into R1
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LD   1, 8(5) ;  Load parameter 'd' into R1
231 : ADD  1, 2, 1 ;  R1 = left + right
232 : LDA  7, 311(0) ;  Skip ELSE block
233 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'fractionGreater'
234 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
235 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=56) into callee frame
236 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
237 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=56) into callee frame
238 : LD   1, 5(5) ;  Load parameter 'a' into R1
239 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
240 : LD   1, 7(5) ;  Load parameter 'c' into R1
241 : ADD  1, 2, 1 ;  R1 = left + right
242 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=56), Tree Node('IDENTIFIER', value='c',line=56)],line=56) into callee frame
243 : LD   1, 6(5) ;  Load parameter 'b' into R1
244 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
245 : LD   1, 8(5) ;  Load parameter 'd' into R1
246 : ADD  1, 2, 1 ;  R1 = left + right
247 : ST 1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=56), Tree Node('IDENTIFIER', value='d',line=56)],line=56) into callee frame
248 : LDA 6, 2(7) ;  Compute return address
249 : ST 6, 0(5) ;  Store return address in callee frame
250 : LDA 7, 71(0) ;  Call fractionGreater
251 : LD 1, 5(5) ;  Load callee return value into R1
252 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
253 : JEQ  1, 283(0) ;  If condition is false, jump to ELSE
254 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
255 : LD   1, 1(5) ;  Load parameter 'selector' into R1
256 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='selector',line=57) into callee frame
257 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
258 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=57) into callee frame
259 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
260 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=58) into callee frame
261 : LD   1, 4(5) ;  Load parameter 'N' into R1
262 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=58) into callee frame
263 : LD   1, 5(5) ;  Load parameter 'a' into R1
264 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
265 : LD   1, 7(5) ;  Load parameter 'c' into R1
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : ST 1, 5(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=59), Tree Node('IDENTIFIER', value='c',line=60)],line=60) into callee frame
268 : LD   1, 6(5) ;  Load parameter 'b' into R1
269 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
270 : LD   1, 8(5) ;  Load parameter 'd' into R1
271 : ADD  1, 2, 1 ;  R1 = left + right
272 : ST 1, 6(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=60), Tree Node('IDENTIFIER', value='d',line=60)],line=60) into callee frame
273 : LD   1, 7(5) ;  Load parameter 'c' into R1
274 : ST 1, 7(5) ;  Store argument Tree Node('IDENTIFIER', value='c',line=60) into callee frame
275 : LD   1, 8(5) ;  Load parameter 'd' into R1
276 : ST 1, 8(5) ;  Store argument Tree Node('IDENTIFIER', value='d',line=60) into callee frame
277 : LDA 6, 2(7) ;  Compute return address
278 : ST 6, 0(5) ;  Store return address in callee frame
279 : LDA 7, 107(0) ;  Call whileLoopFor
280 : LD 1, 9(5) ;  Load callee return value into R1
281 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
282 : LDA  7, 311(0) ;  Skip ELSE block
283 : LDA 5, 10(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
284 : LD   1, 1(5) ;  Load parameter 'selector' into R1
285 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='selector',line=61) into callee frame
286 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
287 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=61) into callee frame
288 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
289 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=62) into callee frame
290 : LD   1, 4(5) ;  Load parameter 'N' into R1
291 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=62) into callee frame
292 : LD   1, 5(5) ;  Load parameter 'a' into R1
293 : ST 1, 5(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=63) into callee frame
294 : LD   1, 6(5) ;  Load parameter 'b' into R1
295 : ST 1, 6(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=64) into callee frame
296 : LD   1, 5(5) ;  Load parameter 'a' into R1
297 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
298 : LD   1, 7(5) ;  Load parameter 'c' into R1
299 : ADD  1, 2, 1 ;  R1 = left + right
300 : ST 1, 7(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=64), Tree Node('IDENTIFIER', value='c',line=64)],line=64) into callee frame
301 : LD   1, 6(5) ;  Load parameter 'b' into R1
302 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
303 : LD   1, 8(5) ;  Load parameter 'd' into R1
304 : ADD  1, 2, 1 ;  R1 = left + right
305 : ST 1, 8(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=64), Tree Node('IDENTIFIER', value='d',line=64)],line=64) into callee frame
306 : LDA 6, 2(7) ;  Compute return address
307 : ST 6, 0(5) ;  Store return address in callee frame
308 : LDA 7, 107(0) ;  Call whileLoopFor
309 : LD 1, 9(5) ;  Load callee return value into R1
310 : LDA 5, -10(5) ;  Restore DMEM pointer to caller frame
311 : ST   1, 9(5) ;  Store function result into stack frame
312 : LD   6, 0(5) ;  Load return address
313 : LDA  7, 0(6) ;  Return to caller
314 : LDA 5, 7(5) ;  Advance DMEM pointer to callee frame 'greater'
315 : LD   1, 3(5) ;  Load parameter 'b' into R1
316 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=31) into callee frame
317 : LD   1, 1(5) ;  Load parameter 'N' into R1
318 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=31) into callee frame
319 : LDA 6, 2(7) ;  Compute return address
320 : ST 6, 0(5) ;  Store return address in callee frame
321 : LDA 7, 48(0) ;  Call greater
322 : LD 1, 3(5) ;  Load callee return value into R1
323 : LDA 5, -7(5) ;  Restore DMEM pointer to caller frame
324 : JEQ  1, 327(0) ;  If condition is false, jump to ELSE
325 : LD   1, 5(5) ;  Load parameter 'd' into R1
326 : LDA  7, 328(0) ;  Skip ELSE block
327 : LD   1, 3(5) ;  Load parameter 'b' into R1
328 : ST   1, 6(5) ;  Store function result into stack frame
329 : LD   6, 0(5) ;  Load return address
330 : LDA  7, 0(6) ;  Return to caller
331 : LDA 5, 7(5) ;  Advance DMEM pointer to callee frame 'greater'
332 : LD   1, 3(5) ;  Load parameter 'b' into R1
333 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=24) into callee frame
334 : LD   1, 1(5) ;  Load parameter 'N' into R1
335 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=24) into callee frame
336 : LDA 6, 2(7) ;  Compute return address
337 : ST 6, 0(5) ;  Store return address in callee frame
338 : LDA 7, 48(0) ;  Call greater
339 : LD 1, 3(5) ;  Load callee return value into R1
340 : LDA 5, -7(5) ;  Restore DMEM pointer to caller frame
341 : JEQ  1, 344(0) ;  If condition is false, jump to ELSE
342 : LD   1, 4(5) ;  Load parameter 'c' into R1
343 : LDA  7, 345(0) ;  Skip ELSE block
344 : LD   1, 2(5) ;  Load parameter 'a' into R1
345 : ST   1, 6(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'fareySelectDen'
349 : LD   1, 3(5) ;  Load parameter 'N' into R1
350 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=15) into callee frame
351 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
352 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
353 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16) into callee frame
354 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
355 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=16) into callee frame
356 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
357 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=16) into callee frame
358 : LD   1, 3(5) ;  Load parameter 'N' into R1
359 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=16) into callee frame
360 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
361 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=16) into callee frame
362 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
363 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16) into callee frame
364 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
365 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16) into callee frame
366 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
367 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16) into callee frame
368 : LDA 6, 2(7) ;  Compute return address
369 : ST 6, 0(5) ;  Store return address in callee frame
370 : LDA 7, 107(0) ;  Call whileLoopFor
371 : LD 1, 9(5) ;  Load callee return value into R1
372 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
373 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=15), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('IDENTIFIER', value='xNum',line=16), Tree Node('IDENTIFIER', value='xDen',line=16), Tree Node('IDENTIFIER', value='N',line=16), Tree Node('INTEGER-LITERAL', value='0',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16)],line=16) into callee frame
374 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
375 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
376 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=17) into callee frame
377 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
378 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=17) into callee frame
379 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
380 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=17) into callee frame
381 : LD   1, 3(5) ;  Load parameter 'N' into R1
382 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=17) into callee frame
383 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
384 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=17) into callee frame
385 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
386 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17) into callee frame
387 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
388 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17) into callee frame
389 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
390 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17) into callee frame
391 : LDA 6, 2(7) ;  Compute return address
392 : ST 6, 0(5) ;  Store return address in callee frame
393 : LDA 7, 107(0) ;  Call whileLoopFor
394 : LD 1, 9(5) ;  Load callee return value into R1
395 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
396 : ST 1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=16), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='2',line=17), Tree Node('IDENTIFIER', value='xNum',line=17), Tree Node('IDENTIFIER', value='xDen',line=17), Tree Node('IDENTIFIER', value='N',line=17), Tree Node('INTEGER-LITERAL', value='0',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17)],line=17)],line=17) into callee frame
397 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
398 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
399 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='3',line=18) into callee frame
400 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
401 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=18) into callee frame
402 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
403 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=18) into callee frame
404 : LD   1, 3(5) ;  Load parameter 'N' into R1
405 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=18) into callee frame
406 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
407 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=18) into callee frame
408 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
409 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18) into callee frame
410 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
411 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18) into callee frame
412 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
413 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18) into callee frame
414 : LDA 6, 2(7) ;  Compute return address
415 : ST 6, 0(5) ;  Store return address in callee frame
416 : LDA 7, 107(0) ;  Call whileLoopFor
417 : LD 1, 9(5) ;  Load callee return value into R1
418 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
419 : ST 1, 4(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=17), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='3',line=18), Tree Node('IDENTIFIER', value='xNum',line=18), Tree Node('IDENTIFIER', value='xDen',line=18), Tree Node('IDENTIFIER', value='N',line=18), Tree Node('INTEGER-LITERAL', value='0',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18)],line=18)],line=18) into callee frame
420 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
421 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
422 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='4',line=19) into callee frame
423 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
424 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=19) into callee frame
425 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
426 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=19) into callee frame
427 : LD   1, 3(5) ;  Load parameter 'N' into R1
428 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=19) into callee frame
429 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
430 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=19) into callee frame
431 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
432 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19) into callee frame
433 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
434 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19) into callee frame
435 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
436 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19) into callee frame
437 : LDA 6, 2(7) ;  Compute return address
438 : ST 6, 0(5) ;  Store return address in callee frame
439 : LDA 7, 107(0) ;  Call whileLoopFor
440 : LD 1, 9(5) ;  Load callee return value into R1
441 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
442 : ST 1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=18), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='4',line=19), Tree Node('IDENTIFIER', value='xNum',line=19), Tree Node('IDENTIFIER', value='xDen',line=19), Tree Node('IDENTIFIER', value='N',line=19), Tree Node('INTEGER-LITERAL', value='0',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19)],line=19)],line=19) into callee frame
443 : LDA 6, 2(7) ;  Compute return address
444 : ST 6, 0(5) ;  Store return address in callee frame
445 : LDA 7, 314(0) ;  Call fareySelectDen
446 : LD 1, 6(5) ;  Load callee return value into R1
447 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
448 : ST   1, 4(5) ;  Store function result into stack frame
449 : LD   6, 0(5) ;  Load return address
450 : LDA  7, 0(6) ;  Return to caller
451 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'fareySelectNum'
452 : LD   1, 3(5) ;  Load parameter 'N' into R1
453 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=8) into callee frame
454 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
455 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
456 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9) into callee frame
457 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
458 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=9) into callee frame
459 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
460 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=9) into callee frame
461 : LD   1, 3(5) ;  Load parameter 'N' into R1
462 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=9) into callee frame
463 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
464 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=9) into callee frame
465 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
466 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9) into callee frame
467 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
468 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9) into callee frame
469 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
470 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9) into callee frame
471 : LDA 6, 2(7) ;  Compute return address
472 : ST 6, 0(5) ;  Store return address in callee frame
473 : LDA 7, 107(0) ;  Call whileLoopFor
474 : LD 1, 9(5) ;  Load callee return value into R1
475 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
476 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=8), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('IDENTIFIER', value='xNum',line=9), Tree Node('IDENTIFIER', value='xDen',line=9), Tree Node('IDENTIFIER', value='N',line=9), Tree Node('INTEGER-LITERAL', value='0',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9)],line=9)],line=9) into callee frame
477 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
478 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
479 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=10) into callee frame
480 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
481 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=10) into callee frame
482 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
483 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=10) into callee frame
484 : LD   1, 3(5) ;  Load parameter 'N' into R1
485 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=10) into callee frame
486 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
487 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=10) into callee frame
488 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
489 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10) into callee frame
490 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
491 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10) into callee frame
492 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
493 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10) into callee frame
494 : LDA 6, 2(7) ;  Compute return address
495 : ST 6, 0(5) ;  Store return address in callee frame
496 : LDA 7, 107(0) ;  Call whileLoopFor
497 : LD 1, 9(5) ;  Load callee return value into R1
498 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
499 : ST 1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=9), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='2',line=10), Tree Node('IDENTIFIER', value='xNum',line=10), Tree Node('IDENTIFIER', value='xDen',line=10), Tree Node('IDENTIFIER', value='N',line=10), Tree Node('INTEGER-LITERAL', value='0',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10)],line=10)],line=10) into callee frame
500 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
501 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
502 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='3',line=11) into callee frame
503 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
504 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=11) into callee frame
505 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
506 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=11) into callee frame
507 : LD   1, 3(5) ;  Load parameter 'N' into R1
508 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=11) into callee frame
509 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
510 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=11) into callee frame
511 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
512 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11) into callee frame
513 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
514 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11) into callee frame
515 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
516 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11) into callee frame
517 : LDA 6, 2(7) ;  Compute return address
518 : ST 6, 0(5) ;  Store return address in callee frame
519 : LDA 7, 107(0) ;  Call whileLoopFor
520 : LD 1, 9(5) ;  Load callee return value into R1
521 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
522 : ST 1, 4(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=10), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='3',line=11), Tree Node('IDENTIFIER', value='xNum',line=11), Tree Node('IDENTIFIER', value='xDen',line=11), Tree Node('IDENTIFIER', value='N',line=11), Tree Node('INTEGER-LITERAL', value='0',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11)],line=11)],line=11) into callee frame
523 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
524 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
525 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='4',line=12) into callee frame
526 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
527 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=12) into callee frame
528 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
529 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=12) into callee frame
530 : LD   1, 3(5) ;  Load parameter 'N' into R1
531 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=12) into callee frame
532 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
533 : ST 1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=12) into callee frame
534 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
535 : ST 1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12) into callee frame
536 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
537 : ST 1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12) into callee frame
538 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
539 : ST 1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12) into callee frame
540 : LDA 6, 2(7) ;  Compute return address
541 : ST 6, 0(5) ;  Store return address in callee frame
542 : LDA 7, 107(0) ;  Call whileLoopFor
543 : LD 1, 9(5) ;  Load callee return value into R1
544 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
545 : ST 1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=11), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='4',line=12), Tree Node('IDENTIFIER', value='xNum',line=12), Tree Node('IDENTIFIER', value='xDen',line=12), Tree Node('IDENTIFIER', value='N',line=12), Tree Node('INTEGER-LITERAL', value='0',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12)],line=12) into callee frame
546 : LDA 6, 2(7) ;  Compute return address
547 : ST 6, 0(5) ;  Store return address in callee frame
548 : LDA 7, 331(0) ;  Call fareySelectNum
549 : LD 1, 6(5) ;  Load callee return value into R1
550 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
551 : ST   1, 4(5) ;  Store function result into stack frame
552 : LD   6, 0(5) ;  Load return address
553 : LDA  7, 0(6) ;  Return to caller
