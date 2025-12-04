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
15 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
16 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=4)
17 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
18 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=4)
19 : LD   1, 3(5) ;  Load parameter 'N' into R1
20 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=4)
21 : LDC  5, 9(0) ;  Set DMEM pointer to callee frame 'fareyNum'
22 : LDA  6, 2(7) ;  Compute return address
23 : ST   6, 0(5) ;  Store return address in frame
24 : LDA  7, 451(0) ;  Call fareyNum
25 : LD   1, 4(5) ;  Load return value into R1
26 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
27 : LDC  5, 4(0) ;  Update DMEM pointer
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address
30 : LDA  7, 12(0) ; Call print
31 : LDC  5, 4(0) ;  Move pointer to previous stack frame
32 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
33 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=5)
34 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
35 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=5)
36 : LD   1, 3(5) ;  Load parameter 'N' into R1
37 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=5)
38 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'fareyDen'
39 : LDA  6, 2(7) ;  Compute return address
40 : ST   6, 0(5) ;  Store return address in frame
41 : LDA  7, 348(0) ;  Call fareyDen
42 : LD   1, 4(5) ;  Load return value into R1
43 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
44 : ST   1, 8(0) ;  Store function-call result into caller's return slot
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
71 : LD   1, 1(5) ;  Load parameter 'x' into R1
72 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
73 : LD   1, 4(5) ;  Load parameter 'yd' into R1
74 : MUL  1, 2, 1 ;  R1 = left * right
75 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='x',line=72), Tree Node('IDENTIFIER', value='yd',line=72)],line=72)
76 : LD   1, 3(5) ;  Load parameter 'y' into R1
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LD   1, 2(5) ;  Load parameter 'xd' into R1
79 : MUL  1, 2, 1 ;  R1 = left * right
80 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='y',line=72), Tree Node('IDENTIFIER', value='xd',line=72)],line=72)
81 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'greater'
82 : LDA  6, 2(7) ;  Compute return address
83 : ST   6, 0(5) ;  Store return address in frame
84 : LDA  7, 48(0) ;  Call greater
85 : LD   1, 3(5) ;  Load return value into R1
86 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
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
107 : LD   1, 6(5) ;  Load parameter 'b' into R1
108 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=40)
109 : LD   1, 4(5) ;  Load parameter 'N' into R1
110 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=40)
111 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'greater'
112 : LDA  6, 2(7) ;  Compute return address
113 : ST   6, 0(5) ;  Store return address in frame
114 : LDA  7, 48(0) ;  Call greater
115 : LD   1, 3(5) ;  Load return value into R1
116 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
117 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
118 : LD   1, 8(5) ;  Load parameter 'd' into R1
119 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='d',line=40)
120 : LD   1, 4(5) ;  Load parameter 'N' into R1
121 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=40)
122 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'greater'
123 : LDA  6, 2(7) ;  Compute return address
124 : ST   6, 0(5) ;  Store return address in frame
125 : LDA  7, 48(0) ;  Call greater
126 : LD   1, 3(5) ;  Load return value into R1
127 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
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
165 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
166 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=48)
167 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
168 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=48)
169 : LD   1, 5(5) ;  Load parameter 'a' into R1
170 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
171 : LD   1, 7(5) ;  Load parameter 'c' into R1
172 : ADD  1, 2, 1 ;  R1 = left + right
173 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=48), Tree Node('IDENTIFIER', value='c',line=48)],line=48)
174 : LD   1, 6(5) ;  Load parameter 'b' into R1
175 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
176 : LD   1, 8(5) ;  Load parameter 'd' into R1
177 : ADD  1, 2, 1 ;  R1 = left + right
178 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=48), Tree Node('IDENTIFIER', value='d',line=48)],line=48)
179 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'fractionEqual'
180 : LDA  6, 2(7) ;  Compute return address
181 : ST   6, 0(5) ;  Store return address in frame
182 : LDA  7, 90(0) ;  Call fractionEqual
183 : LD   1, 5(5) ;  Load return value into R1
184 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
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
233 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
234 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=56)
235 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
236 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=56)
237 : LD   1, 5(5) ;  Load parameter 'a' into R1
238 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
239 : LD   1, 7(5) ;  Load parameter 'c' into R1
240 : ADD  1, 2, 1 ;  R1 = left + right
241 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=56), Tree Node('IDENTIFIER', value='c',line=56)],line=56)
242 : LD   1, 6(5) ;  Load parameter 'b' into R1
243 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
244 : LD   1, 8(5) ;  Load parameter 'd' into R1
245 : ADD  1, 2, 1 ;  R1 = left + right
246 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=56), Tree Node('IDENTIFIER', value='d',line=56)],line=56)
247 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'fractionGreater'
248 : LDA  6, 2(7) ;  Compute return address
249 : ST   6, 0(5) ;  Store return address in frame
250 : LDA  7, 71(0) ;  Call fractionGreater
251 : LD   1, 5(5) ;  Load return value into R1
252 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
253 : JEQ  1, 283(0) ;  If condition is false, jump to ELSE
254 : LD   1, 1(5) ;  Load parameter 'selector' into R1
255 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='selector',line=57)
256 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
257 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=57)
258 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
259 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=58)
260 : LD   1, 4(5) ;  Load parameter 'N' into R1
261 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=58)
262 : LD   1, 5(5) ;  Load parameter 'a' into R1
263 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
264 : LD   1, 7(5) ;  Load parameter 'c' into R1
265 : ADD  1, 2, 1 ;  R1 = left + right
266 : ST   1, 5(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=59), Tree Node('IDENTIFIER', value='c',line=60)],line=60)
267 : LD   1, 6(5) ;  Load parameter 'b' into R1
268 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
269 : LD   1, 8(5) ;  Load parameter 'd' into R1
270 : ADD  1, 2, 1 ;  R1 = left + right
271 : ST   1, 6(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=60), Tree Node('IDENTIFIER', value='d',line=60)],line=60)
272 : LD   1, 7(5) ;  Load parameter 'c' into R1
273 : ST   1, 7(5) ;  Store argument Tree Node('IDENTIFIER', value='c',line=60)
274 : LD   1, 8(5) ;  Load parameter 'd' into R1
275 : ST   1, 8(5) ;  Store argument Tree Node('IDENTIFIER', value='d',line=60)
276 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
277 : LDA  6, 2(7) ;  Compute return address
278 : ST   6, 0(5) ;  Store return address in frame
279 : LDA  7, 107(0) ;  Call whileLoopFor
280 : LD   1, 9(5) ;  Load return value into R1
281 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
282 : LDA  7, 311(0) ;  Skip ELSE block
283 : LD   1, 1(5) ;  Load parameter 'selector' into R1
284 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='selector',line=61)
285 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
286 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=61)
287 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
288 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=62)
289 : LD   1, 4(5) ;  Load parameter 'N' into R1
290 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=62)
291 : LD   1, 5(5) ;  Load parameter 'a' into R1
292 : ST   1, 5(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=63)
293 : LD   1, 6(5) ;  Load parameter 'b' into R1
294 : ST   1, 6(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=64)
295 : LD   1, 5(5) ;  Load parameter 'a' into R1
296 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
297 : LD   1, 7(5) ;  Load parameter 'c' into R1
298 : ADD  1, 2, 1 ;  R1 = left + right
299 : ST   1, 7(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=64), Tree Node('IDENTIFIER', value='c',line=64)],line=64)
300 : LD   1, 6(5) ;  Load parameter 'b' into R1
301 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
302 : LD   1, 8(5) ;  Load parameter 'd' into R1
303 : ADD  1, 2, 1 ;  R1 = left + right
304 : ST   1, 8(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='b',line=64), Tree Node('IDENTIFIER', value='d',line=64)],line=64)
305 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
306 : LDA  6, 2(7) ;  Compute return address
307 : ST   6, 0(5) ;  Store return address in frame
308 : LDA  7, 107(0) ;  Call whileLoopFor
309 : LD   1, 9(5) ;  Load return value into R1
310 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
311 : ST   1, 9(5) ;  Store function result into stack frame
312 : LD   6, 0(5) ;  Load return address
313 : LDA  7, 0(6) ;  Return to caller
314 : LD   1, 3(5) ;  Load parameter 'b' into R1
315 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=31)
316 : LD   1, 1(5) ;  Load parameter 'N' into R1
317 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=31)
318 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'greater'
319 : LDA  6, 2(7) ;  Compute return address
320 : ST   6, 0(5) ;  Store return address in frame
321 : LDA  7, 48(0) ;  Call greater
322 : LD   1, 3(5) ;  Load return value into R1
323 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
324 : JEQ  1, 327(0) ;  If condition is false, jump to ELSE
325 : LD   1, 5(5) ;  Load parameter 'd' into R1
326 : LDA  7, 328(0) ;  Skip ELSE block
327 : LD   1, 3(5) ;  Load parameter 'b' into R1
328 : ST   1, 6(5) ;  Store function result into stack frame
329 : LD   6, 0(5) ;  Load return address
330 : LDA  7, 0(6) ;  Return to caller
331 : LD   1, 3(5) ;  Load parameter 'b' into R1
332 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=24)
333 : LD   1, 1(5) ;  Load parameter 'N' into R1
334 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=24)
335 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'greater'
336 : LDA  6, 2(7) ;  Compute return address
337 : ST   6, 0(5) ;  Store return address in frame
338 : LDA  7, 48(0) ;  Call greater
339 : LD   1, 3(5) ;  Load return value into R1
340 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
341 : JEQ  1, 344(0) ;  If condition is false, jump to ELSE
342 : LD   1, 4(5) ;  Load parameter 'c' into R1
343 : LDA  7, 345(0) ;  Skip ELSE block
344 : LD   1, 2(5) ;  Load parameter 'a' into R1
345 : ST   1, 6(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LD   1, 3(5) ;  Load parameter 'N' into R1
349 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=15)
350 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
351 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16)
352 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
353 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=16)
354 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
355 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=16)
356 : LD   1, 3(5) ;  Load parameter 'N' into R1
357 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=16)
358 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
359 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=16)
360 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
361 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16)
362 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
363 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16)
364 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
365 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=16)
366 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
367 : LDA  6, 2(7) ;  Compute return address
368 : ST   6, 0(5) ;  Store return address in frame
369 : LDA  7, 107(0) ;  Call whileLoopFor
370 : LD   1, 9(5) ;  Load return value into R1
371 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
372 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=15), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('IDENTIFIER', value='xNum',line=16), Tree Node('IDENTIFIER', value='xDen',line=16), Tree Node('IDENTIFIER', value='N',line=16), Tree Node('INTEGER-LITERAL', value='0',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16)],line=16)
373 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
374 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=17)
375 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
376 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=17)
377 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
378 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=17)
379 : LD   1, 3(5) ;  Load parameter 'N' into R1
380 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=17)
381 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
382 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=17)
383 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
384 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17)
385 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
386 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17)
387 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
388 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=17)
389 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
390 : LDA  6, 2(7) ;  Compute return address
391 : ST   6, 0(5) ;  Store return address in frame
392 : LDA  7, 107(0) ;  Call whileLoopFor
393 : LD   1, 9(5) ;  Load return value into R1
394 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
395 : ST   1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=16), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='2',line=17), Tree Node('IDENTIFIER', value='xNum',line=17), Tree Node('IDENTIFIER', value='xDen',line=17), Tree Node('IDENTIFIER', value='N',line=17), Tree Node('INTEGER-LITERAL', value='0',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17), Tree Node('INTEGER-LITERAL', value='1',line=17)],line=17)],line=17)
396 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
397 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='3',line=18)
398 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
399 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=18)
400 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
401 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=18)
402 : LD   1, 3(5) ;  Load parameter 'N' into R1
403 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=18)
404 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
405 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=18)
406 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
407 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18)
408 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
409 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18)
410 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
411 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=18)
412 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
413 : LDA  6, 2(7) ;  Compute return address
414 : ST   6, 0(5) ;  Store return address in frame
415 : LDA  7, 107(0) ;  Call whileLoopFor
416 : LD   1, 9(5) ;  Load return value into R1
417 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
418 : ST   1, 4(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=17), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='3',line=18), Tree Node('IDENTIFIER', value='xNum',line=18), Tree Node('IDENTIFIER', value='xDen',line=18), Tree Node('IDENTIFIER', value='N',line=18), Tree Node('INTEGER-LITERAL', value='0',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18), Tree Node('INTEGER-LITERAL', value='1',line=18)],line=18)],line=18)
419 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
420 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='4',line=19)
421 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
422 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=19)
423 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
424 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=19)
425 : LD   1, 3(5) ;  Load parameter 'N' into R1
426 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=19)
427 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
428 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=19)
429 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
430 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19)
431 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
432 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19)
433 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
434 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=19)
435 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
436 : LDA  6, 2(7) ;  Compute return address
437 : ST   6, 0(5) ;  Store return address in frame
438 : LDA  7, 107(0) ;  Call whileLoopFor
439 : LD   1, 9(5) ;  Load return value into R1
440 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
441 : ST   1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=18), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='4',line=19), Tree Node('IDENTIFIER', value='xNum',line=19), Tree Node('IDENTIFIER', value='xDen',line=19), Tree Node('IDENTIFIER', value='N',line=19), Tree Node('INTEGER-LITERAL', value='0',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19), Tree Node('INTEGER-LITERAL', value='1',line=19)],line=19)],line=19)
442 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'fareySelectDen'
443 : LDA  6, 2(7) ;  Compute return address
444 : ST   6, 0(5) ;  Store return address in frame
445 : LDA  7, 314(0) ;  Call fareySelectDen
446 : LD   1, 6(5) ;  Load return value into R1
447 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
448 : ST   1, 4(5) ;  Store function result into stack frame
449 : LD   6, 0(5) ;  Load return address
450 : LDA  7, 0(6) ;  Return to caller
451 : LD   1, 3(5) ;  Load parameter 'N' into R1
452 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=8)
453 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
454 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9)
455 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
456 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=9)
457 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
458 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=9)
459 : LD   1, 3(5) ;  Load parameter 'N' into R1
460 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=9)
461 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
462 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=9)
463 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
464 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9)
465 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
466 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9)
467 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
468 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=9)
469 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
470 : LDA  6, 2(7) ;  Compute return address
471 : ST   6, 0(5) ;  Store return address in frame
472 : LDA  7, 107(0) ;  Call whileLoopFor
473 : LD   1, 9(5) ;  Load return value into R1
474 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
475 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=8), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('IDENTIFIER', value='xNum',line=9), Tree Node('IDENTIFIER', value='xDen',line=9), Tree Node('IDENTIFIER', value='N',line=9), Tree Node('INTEGER-LITERAL', value='0',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9), Tree Node('INTEGER-LITERAL', value='1',line=9)],line=9)],line=9)
476 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
477 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=10)
478 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
479 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=10)
480 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
481 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=10)
482 : LD   1, 3(5) ;  Load parameter 'N' into R1
483 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=10)
484 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
485 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=10)
486 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
487 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10)
488 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
489 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10)
490 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
491 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=10)
492 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
493 : LDA  6, 2(7) ;  Compute return address
494 : ST   6, 0(5) ;  Store return address in frame
495 : LDA  7, 107(0) ;  Call whileLoopFor
496 : LD   1, 9(5) ;  Load return value into R1
497 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
498 : ST   1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=9), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='2',line=10), Tree Node('IDENTIFIER', value='xNum',line=10), Tree Node('IDENTIFIER', value='xDen',line=10), Tree Node('IDENTIFIER', value='N',line=10), Tree Node('INTEGER-LITERAL', value='0',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10), Tree Node('INTEGER-LITERAL', value='1',line=10)],line=10)],line=10)
499 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
500 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='3',line=11)
501 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
502 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=11)
503 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
504 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=11)
505 : LD   1, 3(5) ;  Load parameter 'N' into R1
506 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=11)
507 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
508 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=11)
509 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
510 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11)
511 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
512 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11)
513 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
514 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=11)
515 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
516 : LDA  6, 2(7) ;  Compute return address
517 : ST   6, 0(5) ;  Store return address in frame
518 : LDA  7, 107(0) ;  Call whileLoopFor
519 : LD   1, 9(5) ;  Load return value into R1
520 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
521 : ST   1, 4(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=10), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='3',line=11), Tree Node('IDENTIFIER', value='xNum',line=11), Tree Node('IDENTIFIER', value='xDen',line=11), Tree Node('IDENTIFIER', value='N',line=11), Tree Node('INTEGER-LITERAL', value='0',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11)],line=11)],line=11)
522 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
523 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='4',line=12)
524 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
525 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=12)
526 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
527 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=12)
528 : LD   1, 3(5) ;  Load parameter 'N' into R1
529 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=12)
530 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
531 : ST   1, 5(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=12)
532 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
533 : ST   1, 6(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12)
534 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
535 : ST   1, 7(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12)
536 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
537 : ST   1, 8(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=12)
538 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'whileLoopFor'
539 : LDA  6, 2(7) ;  Compute return address
540 : ST   6, 0(5) ;  Store return address in frame
541 : LDA  7, 107(0) ;  Call whileLoopFor
542 : LD   1, 9(5) ;  Load return value into R1
543 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
544 : ST   1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='whileLoopFor',line=11), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='4',line=12), Tree Node('IDENTIFIER', value='xNum',line=12), Tree Node('IDENTIFIER', value='xDen',line=12), Tree Node('IDENTIFIER', value='N',line=12), Tree Node('INTEGER-LITERAL', value='0',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12)],line=12)
545 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'fareySelectNum'
546 : LDA  6, 2(7) ;  Compute return address
547 : ST   6, 0(5) ;  Store return address in frame
548 : LDA  7, 331(0) ;  Call fareySelectNum
549 : LD   1, 6(5) ;  Load return value into R1
550 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
551 : ST   1, 4(5) ;  Store function result into stack frame
552 : LD   6, 0(5) ;  Load return address
553 : LDA  7, 0(6) ;  Return to caller
