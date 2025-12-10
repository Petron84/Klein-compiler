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
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'x' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 516(0) ; Call circularPrimesTo
18 : LD   1, 2(5) ;  Load function result
19 : LDC   2, 3(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 2(5) ;  Load parameter 'den' into R1
27 : ST   1, 3(4) ;  Store right operand result into return value slot
28 : LD   1, 1(5) ;  Load parameter 'num' into R1
29 : ADD  2, 1, 0 ;  Move left operand to register 2
30 : LD   1, 3(4) ;  Return right operand back into register 1
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : LDA  7, 57(0) ;  Skip ELSE block
39 : LDA 4, 4(5) ; Base of callee frame
40 : LD   1, 2(5) ;  Load parameter 'den' into R1
41 : ST   1, 3(4) ;  Store right operand result into return value slot
42 : LD   1, 1(5) ;  Load parameter 'num' into R1
43 : ADD  2, 1, 0 ;  Move left operand to register 2
44 : LD   1, 3(4) ;  Return right operand back into register 1
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LD   1, 2(5) ;  Load parameter 'den' into R1
48 : ST 1, 2(4) ; Store argument 1 in callee
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 26(0) ; Call mod
53 : LD   1, 3(5) ;  Load function result
54 : LDC   2, 4(0) ;  Caller frame size
55 : SUB   5, 5, 2 ;  Pop back to caller
56 : SUB   4, 4, 2 ;  Pop back to caller
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LDA 4, 4(5) ; Base of callee frame
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ST 1, 1(4) ; Store argument 0 in callee
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : ST 1, 2(4) ; Store argument 1 in callee
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame
68 : LDA 7, 26(0) ; Call mod
69 : LD   1, 3(5) ;  Load function result
70 : LDC   2, 4(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ADD  2, 1, 0 ;  Move left operand to register 2
74 : LDC  1, 0(0) ;  Load integer-literal value into register 1
75 : SUB  1, 2, 1 ;  left - right for equality check
76 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
77 : LDC  1, 0(0) ;  false
78 : LDA  7, 1(7) ;  skip setting true
79 : LDC  1, 1(0) ;  true
80 : ST   1, 3(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ST   1, 3(4) ;  Store right operand result into return value slot
85 : LD   1, 1(5) ;  Load parameter 'i' into R1
86 : ADD  2, 1, 0 ;  Move left operand to register 2
87 : LD   1, 3(4) ;  Return right operand back into register 1
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 128(0) ;  If condition is false, jump to ELSE
94 : LDA 4, 4(5) ; Base of callee frame
95 : LD   1, 1(5) ;  Load parameter 'i' into R1
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ST 1, 2(4) ; Store argument 1 in callee
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 60(0) ; Call divides
103 : LD   1, 3(5) ;  Load function result
104 : LDC   2, 4(0) ;  Caller frame size
105 : SUB   5, 5, 2 ;  Pop back to caller
106 : SUB   4, 4, 2 ;  Pop back to caller
107 : ADD  2, 1, 0 ;  Move left operand to register 2
108 : LDA 4, 4(5) ; Base of callee frame
109 : LDC  1, 1(0) ;  Load integer-literal value into register 1
110 : ST   1, 3(4) ;  Store right operand result into return value slot
111 : LD   1, 1(5) ;  Load parameter 'i' into R1
112 : ADD  2, 1, 0 ;  Move left operand to register 2
113 : LD   1, 3(4) ;  Return right operand back into register 1
114 : ADD  1, 2, 1 ;  R1 = left + right
115 : ST 1, 1(4) ; Store argument 0 in callee
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : ST 1, 2(4) ; Store argument 1 in callee
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame
121 : LDA 7, 83(0) ; Call hasDivisorFrom
122 : LD   1, 3(5) ;  Load function result
123 : LDC   2, 4(0) ;  Caller frame size
124 : SUB   5, 5, 2 ;  Pop back to caller
125 : SUB   4, 4, 2 ;  Pop back to caller
126 : ADD  1, 2, 1 ;  R1 = left OR right
127 : LDA  7, 129(0) ;  Skip ELSE block
128 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LDA 4, 4(5) ; Base of callee frame
133 : LDC  1, 2(0) ;  Load integer-literal value into register 1
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : ST 1, 2(4) ; Store argument 1 in callee
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame
140 : LDA 7, 83(0) ; Call hasDivisorFrom
141 : LD   1, 3(5) ;  Load function result
142 : LDC   2, 4(0) ;  Caller frame size
143 : SUB   5, 5, 2 ;  Pop back to caller
144 : SUB   4, 4, 2 ;  Pop back to caller
145 : LDC  2, 1(0) ;  Load 1 into R2
146 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
147 : ST   1, 2(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LDC  1, 10(0) ;  Load integer-literal value into register 1
151 : ST   1, 3(4) ;  Store right operand result into return value slot
152 : LD   1, 1(5) ;  Load parameter 'x' into R1
153 : ADD  2, 1, 0 ;  Move left operand to register 2
154 : LD   1, 3(4) ;  Return right operand back into register 1
155 : DIV  1, 2, 1 ;  R1 = left / right
156 : ADD  2, 1, 0 ;  Move left operand to register 2
157 : LDC  1, 0(0) ;  Load integer-literal value into register 1
158 : SUB  1, 2, 1 ;  left - right for equality check
159 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
160 : LDC  1, 0(0) ;  false
161 : LDA  7, 1(7) ;  skip setting true
162 : LDC  1, 1(0) ;  true
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LD   1, 2(5) ;  Load parameter 'y' into R1
165 : LDA  7, 189(0) ;  Skip ELSE block
166 : LDA 4, 4(5) ; Base of callee frame
167 : LDC  1, 10(0) ;  Load integer-literal value into register 1
168 : ST   1, 3(4) ;  Store right operand result into return value slot
169 : LD   1, 1(5) ;  Load parameter 'x' into R1
170 : ADD  2, 1, 0 ;  Move left operand to register 2
171 : LD   1, 3(4) ;  Return right operand back into register 1
172 : DIV  1, 2, 1 ;  R1 = left / right
173 : ST 1, 1(4) ; Store argument 0 in callee
174 : LDC  1, 1(0) ;  Load integer-literal value into register 1
175 : ST   1, 3(4) ;  Store right operand result into return value slot
176 : LD   1, 2(5) ;  Load parameter 'y' into R1
177 : ADD  2, 1, 0 ;  Move left operand to register 2
178 : LD   1, 3(4) ;  Return right operand back into register 1
179 : ADD  1, 2, 1 ;  R1 = left + right
180 : ST 1, 2(4) ; Store argument 1 in callee
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return in callee frame
183 : ADD 5, 4, 0 ; Push callee frame
184 : LDA 7, 150(0) ; Call log10Helper
185 : LD   1, 3(5) ;  Load function result
186 : LDC   2, 4(0) ;  Caller frame size
187 : SUB   5, 5, 2 ;  Pop back to caller
188 : SUB   4, 4, 2 ;  Pop back to caller
189 : ST   1, 3(5) ;  Store function result into stack frame
190 : LD   6, 0(5) ;  Load return address
191 : LDA  7, 0(6) ;  Return to caller
192 : LDA 4, 4(5) ; Base of callee frame
193 : LD   1, 1(5) ;  Load parameter 'x' into R1
194 : ST 1, 1(4) ; Store argument 0 in callee
195 : LDC  1, 0(0) ;  Load integer-literal value into register 1
196 : ST 1, 2(4) ; Store argument 1 in callee
197 : LDA 6, 201(0) ; Return address
198 : ST 6, 0(4) ; Store return in callee frame
199 : ADD 5, 4, 0 ; Push callee frame
200 : LDA 7, 150(0) ; Call log10Helper
201 : LD   1, 3(5) ;  Load function result
202 : LDC   2, 4(0) ;  Caller frame size
203 : SUB   5, 5, 2 ;  Pop back to caller
204 : SUB   4, 4, 2 ;  Pop back to caller
205 : ST   1, 2(5) ;  Store function result into stack frame
206 : LD   6, 0(5) ;  Load return address
207 : LDA  7, 0(6) ;  Return to caller
208 : LDC  1, 0(0) ;  Load integer-literal value into register 1
209 : ST   1, 3(4) ;  Store right operand result into return value slot
210 : LD   1, 2(5) ;  Load parameter 'power' into R1
211 : ADD  2, 1, 0 ;  Move left operand to register 2
212 : LD   1, 3(4) ;  Return right operand back into register 1
213 : SUB  1, 2, 1 ;  left - right for equality check
214 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
215 : LDC  1, 0(0) ;  false
216 : LDA  7, 1(7) ;  skip setting true
217 : LDC  1, 1(0) ;  true
218 : JEQ  1, 221(0) ;  If condition is false, jump to ELSE
219 : LDC  1, 1(0) ;  Load integer-literal value into register 1
220 : LDA  7, 259(0) ;  Skip ELSE block
221 : LDC  1, 1(0) ;  Load integer-literal value into register 1
222 : ST   1, 3(4) ;  Store right operand result into return value slot
223 : LD   1, 2(5) ;  Load parameter 'power' into R1
224 : ADD  2, 1, 0 ;  Move left operand to register 2
225 : LD   1, 3(4) ;  Return right operand back into register 1
226 : SUB  1, 2, 1 ;  left - right for equality check
227 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
228 : LDC  1, 0(0) ;  false
229 : LDA  7, 1(7) ;  skip setting true
230 : LDC  1, 1(0) ;  true
231 : JEQ  1, 234(0) ;  If condition is false, jump to ELSE
232 : LD   1, 3(5) ;  Load parameter 'total' into R1
233 : LDA  7, 259(0) ;  Skip ELSE block
234 : LDA 4, 5(5) ; Base of callee frame
235 : LD   1, 1(5) ;  Load parameter 'base' into R1
236 : ST 1, 1(4) ; Store argument 0 in callee
237 : LDC  1, 1(0) ;  Load integer-literal value into register 1
238 : ST   1, 3(4) ;  Store right operand result into return value slot
239 : LD   1, 2(5) ;  Load parameter 'power' into R1
240 : ADD  2, 1, 0 ;  Move left operand to register 2
241 : LD   1, 3(4) ;  Return right operand back into register 1
242 : SUB  1, 2, 1 ;  R1 = left - right
243 : ST 1, 2(4) ; Store argument 1 in callee
244 : LD   1, 3(5) ;  Load parameter 'total' into R1
245 : ST   1, 3(4) ;  Store right operand result into return value slot
246 : LD   1, 1(5) ;  Load parameter 'base' into R1
247 : ADD  2, 1, 0 ;  Move left operand to register 2
248 : LD   1, 3(4) ;  Return right operand back into register 1
249 : MUL  1, 2, 1 ;  R1 = left * right
250 : ST 1, 3(4) ; Store argument 2 in callee
251 : LDA 6, 255(0) ; Return address
252 : ST 6, 0(4) ; Store return in callee frame
253 : ADD 5, 4, 0 ; Push callee frame
254 : LDA 7, 208(0) ; Call powHelper
255 : LD   1, 4(5) ;  Load function result
256 : LDC   2, 5(0) ;  Caller frame size
257 : SUB   5, 5, 2 ;  Pop back to caller
258 : SUB   4, 4, 2 ;  Pop back to caller
259 : ST   1, 4(5) ;  Store function result into stack frame
260 : LD   6, 0(5) ;  Load return address
261 : LDA  7, 0(6) ;  Return to caller
262 : LDA 4, 5(5) ; Base of callee frame
263 : LD   1, 1(5) ;  Load parameter 'x' into R1
264 : ST 1, 1(4) ; Store argument 0 in callee
265 : LD   1, 2(5) ;  Load parameter 'y' into R1
266 : ST 1, 2(4) ; Store argument 1 in callee
267 : LD   1, 1(5) ;  Load parameter 'x' into R1
268 : ST 1, 3(4) ; Store argument 2 in callee
269 : LDA 6, 273(0) ; Return address
270 : ST 6, 0(4) ; Store return in callee frame
271 : ADD 5, 4, 0 ; Push callee frame
272 : LDA 7, 208(0) ; Call powHelper
273 : LD   1, 4(5) ;  Load function result
274 : LDC   2, 5(0) ;  Caller frame size
275 : SUB   5, 5, 2 ;  Pop back to caller
276 : SUB   4, 4, 2 ;  Pop back to caller
277 : ST   1, 3(5) ;  Store function result into stack frame
278 : LD   6, 0(5) ;  Load return address
279 : LDA  7, 0(6) ;  Return to caller
280 : LDC  1, 10(0) ;  Load integer-literal value into register 1
281 : ST   1, 3(4) ;  Store right operand result into return value slot
282 : LD   1, 1(5) ;  Load parameter 'x' into R1
283 : ADD  2, 1, 0 ;  Move left operand to register 2
284 : LD   1, 3(4) ;  Return right operand back into register 1
285 : DIV  1, 2, 1 ;  R1 = left / right
286 : ADD  2, 1, 0 ;  Move left operand to register 2
287 : LDA 4, 4(5) ; Base of callee frame
288 : LD   1, 1(5) ;  Load parameter 'x' into R1
289 : ST 1, 1(4) ; Store argument 0 in callee
290 : LDC  1, 10(0) ;  Load integer-literal value into register 1
291 : ST 1, 2(4) ; Store argument 1 in callee
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return in callee frame
294 : ADD 5, 4, 0 ; Push callee frame
295 : LDA 7, 26(0) ; Call mod
296 : LD   1, 3(5) ;  Load function result
297 : LDC   2, 4(0) ;  Caller frame size
298 : SUB   5, 5, 2 ;  Pop back to caller
299 : SUB   4, 4, 2 ;  Pop back to caller
300 : ADD  2, 1, 0 ;  Move left operand to register 2
301 : LDA 4, 4(5) ; Base of callee frame
302 : LDC  1, 10(0) ;  Load integer-literal value into register 1
303 : ST 1, 1(4) ; Store argument 0 in callee
304 : LDA 4, 3(5) ; Base of callee frame
305 : LD   1, 1(5) ;  Load parameter 'x' into R1
306 : ST 1, 1(4) ; Store argument 0 in callee
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(4) ; Store return in callee frame
309 : ADD 5, 4, 0 ; Push callee frame
310 : LDA 7, 192(0) ; Call log10
311 : LD   1, 2(5) ;  Load function result
312 : LDC   2, 3(0) ;  Caller frame size
313 : SUB   5, 5, 2 ;  Pop back to caller
314 : SUB   4, 4, 2 ;  Pop back to caller
315 : ST 1, 2(4) ; Store argument 1 in callee
316 : LDA 6, 320(0) ; Return address
317 : ST 6, 0(4) ; Store return in callee frame
318 : ADD 5, 4, 0 ; Push callee frame
319 : LDA 7, 262(0) ; Call pow
320 : LD   1, 3(5) ;  Load function result
321 : LDC   2, 4(0) ;  Caller frame size
322 : SUB   5, 5, 2 ;  Pop back to caller
323 : SUB   4, 4, 2 ;  Pop back to caller
324 : MUL  1, 2, 1 ;  R1 = left * right
325 : ADD  1, 2, 1 ;  R1 = left + right
326 : ST   1, 2(5) ;  Store function result into stack frame
327 : LD   6, 0(5) ;  Load return address
328 : LDA  7, 0(6) ;  Return to caller
329 : LD   1, 1(5) ;  Load parameter 'x' into R1
330 : LDA 4, 3(5) ; Base of callee frame
331 : LDA 6, 335(0) ; Return address
332 : ST 6, 0(4) ; Store return addr in callee frame
333 : ADD 5, 4, 0 ; Push new frame
334 : LDA 7, 8(0) ; Call print
335 : LDC 2, 3(0) ; Caller frame size
336 : SUB 5, 5, 2 ; Pop frame
337 : ST   1, 2(5) ;  Store function result into stack frame
338 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
339 : ST   1, 2(5) ;  Store function result into stack frame
340 : LD   6, 0(5) ;  Load return address
341 : LDA  7, 0(6) ;  Return to caller
342 : LDC  1, 0(0) ;  Load integer-literal value into register 1
343 : ST   1, 3(4) ;  Store right operand result into return value slot
344 : LD   1, 2(5) ;  Load parameter 'turns' into R1
345 : ADD  2, 1, 0 ;  Move left operand to register 2
346 : LD   1, 3(4) ;  Return right operand back into register 1
347 : SUB  1, 2, 1 ;  left - right for equality check
348 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
349 : LDC  1, 0(0) ;  false
350 : LDA  7, 1(7) ;  skip setting true
351 : LDC  1, 1(0) ;  true
352 : JEQ  1, 355(0) ;  If condition is false, jump to ELSE
353 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
354 : LDA  7, 396(0) ;  Skip ELSE block
355 : LDA 4, 3(5) ; Base of callee frame
356 : LD   1, 1(5) ;  Load parameter 'x' into R1
357 : ST 1, 1(4) ; Store argument 0 in callee
358 : LDA 6, 362(0) ; Return address
359 : ST 6, 0(4) ; Store return in callee frame
360 : ADD 5, 4, 0 ; Push callee frame
361 : LDA 7, 132(0) ; Call isPrime
362 : LD   1, 2(5) ;  Load function result
363 : LDC   2, 3(0) ;  Caller frame size
364 : SUB   5, 5, 2 ;  Pop back to caller
365 : SUB   4, 4, 2 ;  Pop back to caller
366 : ADD  2, 1, 0 ;  Move left operand to register 2
367 : LDA 4, 4(5) ; Base of callee frame
368 : LDA 4, 3(5) ; Base of callee frame
369 : LD   1, 1(5) ;  Load parameter 'x' into R1
370 : ST 1, 1(4) ; Store argument 0 in callee
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return in callee frame
373 : ADD 5, 4, 0 ; Push callee frame
374 : LDA 7, 280(0) ; Call rotate
375 : LD   1, 2(5) ;  Load function result
376 : LDC   2, 3(0) ;  Caller frame size
377 : SUB   5, 5, 2 ;  Pop back to caller
378 : SUB   4, 4, 2 ;  Pop back to caller
379 : ST 1, 1(4) ; Store argument 0 in callee
380 : LDC  1, 1(0) ;  Load integer-literal value into register 1
381 : ST   1, 3(4) ;  Store right operand result into return value slot
382 : LD   1, 2(5) ;  Load parameter 'turns' into R1
383 : ADD  2, 1, 0 ;  Move left operand to register 2
384 : LD   1, 3(4) ;  Return right operand back into register 1
385 : SUB  1, 2, 1 ;  R1 = left - right
386 : ST 1, 2(4) ; Store argument 1 in callee
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return in callee frame
389 : ADD 5, 4, 0 ; Push callee frame
390 : LDA 7, 342(0) ; Call isCircularPrimeHelper
391 : LD   1, 3(5) ;  Load function result
392 : LDC   2, 4(0) ;  Caller frame size
393 : SUB   5, 5, 2 ;  Pop back to caller
394 : SUB   4, 4, 2 ;  Pop back to caller
395 : MUL  1, 2, 1 ;  R1 = left AND right
396 : ST   1, 3(5) ;  Store function result into stack frame
397 : LD   6, 0(5) ;  Load return address
398 : LDA  7, 0(6) ;  Return to caller
399 : LDA 4, 4(5) ; Base of callee frame
400 : LD   1, 1(5) ;  Load parameter 'x' into R1
401 : ST 1, 1(4) ; Store argument 0 in callee
402 : LDA 4, 3(5) ; Base of callee frame
403 : LD   1, 1(5) ;  Load parameter 'x' into R1
404 : ST 1, 1(4) ; Store argument 0 in callee
405 : LDA 6, 409(0) ; Return address
406 : ST 6, 0(4) ; Store return in callee frame
407 : ADD 5, 4, 0 ; Push callee frame
408 : LDA 7, 192(0) ; Call log10
409 : LD   1, 2(5) ;  Load function result
410 : LDC   2, 3(0) ;  Caller frame size
411 : SUB   5, 5, 2 ;  Pop back to caller
412 : SUB   4, 4, 2 ;  Pop back to caller
413 : ADD  2, 1, 0 ;  Move left operand to register 2
414 : LDC  1, 1(0) ;  Load integer-literal value into register 1
415 : ADD  1, 2, 1 ;  R1 = left + right
416 : ST 1, 2(4) ; Store argument 1 in callee
417 : LDA 6, 421(0) ; Return address
418 : ST 6, 0(4) ; Store return in callee frame
419 : ADD 5, 4, 0 ; Push callee frame
420 : LDA 7, 342(0) ; Call isCircularPrimeHelper
421 : LD   1, 3(5) ;  Load function result
422 : LDC   2, 4(0) ;  Caller frame size
423 : SUB   5, 5, 2 ;  Pop back to caller
424 : SUB   4, 4, 2 ;  Pop back to caller
425 : JEQ  1, 438(0) ;  If condition is false, jump to ELSE
426 : LDA 4, 3(5) ; Base of callee frame
427 : LD   1, 1(5) ;  Load parameter 'x' into R1
428 : ST 1, 1(4) ; Store argument 0 in callee
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return in callee frame
431 : ADD 5, 4, 0 ; Push callee frame
432 : LDA 7, 329(0) ; Call report
433 : LD   1, 2(5) ;  Load function result
434 : LDC   2, 3(0) ;  Caller frame size
435 : SUB   5, 5, 2 ;  Pop back to caller
436 : SUB   4, 4, 2 ;  Pop back to caller
437 : LDA  7, 439(0) ;  Skip ELSE block
438 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
439 : ST   1, 2(5) ;  Store function result into stack frame
440 : LD   6, 0(5) ;  Load return address
441 : LDA  7, 0(6) ;  Return to caller
442 : LD   1, 1(5) ;  Load parameter 'top' into R1
443 : ST   1, 3(4) ;  Store right operand result into return value slot
444 : LD   1, 2(5) ;  Load parameter 'x' into R1
445 : ADD  2, 1, 0 ;  Move left operand to register 2
446 : LD   1, 3(4) ;  Return right operand back into register 1
447 : SUB  1, 2, 1 ;  left - right for less-than check
448 : JLT  1, 2(7) ;  If R1 < 0, jump to true
449 : LDC  1, 0(0) ;  false
450 : LDA  7, 1(7) ;  skip setting true
451 : LDC  1, 1(0) ;  true
452 : JEQ  1, 512(0) ;  If condition is false, jump to ELSE
453 : LDA 4, 3(5) ; Base of callee frame
454 : LD   1, 2(5) ;  Load parameter 'x' into R1
455 : ST 1, 1(4) ; Store argument 0 in callee
456 : LDA 6, 460(0) ; Return address
457 : ST 6, 0(4) ; Store return in callee frame
458 : ADD 5, 4, 0 ; Push callee frame
459 : LDA 7, 399(0) ; Call isCircularPrime
460 : LD   1, 2(5) ;  Load function result
461 : LDC   2, 3(0) ;  Caller frame size
462 : SUB   5, 5, 2 ;  Pop back to caller
463 : SUB   4, 4, 2 ;  Pop back to caller
464 : JEQ  1, 491(0) ;  If condition is false, jump to ELSE
465 : LDA 4, 5(5) ; Base of callee frame
466 : LD   1, 1(5) ;  Load parameter 'top' into R1
467 : ST 1, 1(4) ; Store argument 0 in callee
468 : LDC  1, 1(0) ;  Load integer-literal value into register 1
469 : ST   1, 3(4) ;  Store right operand result into return value slot
470 : LD   1, 2(5) ;  Load parameter 'x' into R1
471 : ADD  2, 1, 0 ;  Move left operand to register 2
472 : LD   1, 3(4) ;  Return right operand back into register 1
473 : ADD  1, 2, 1 ;  R1 = left + right
474 : ST 1, 2(4) ; Store argument 1 in callee
475 : LDC  1, 1(0) ;  Load integer-literal value into register 1
476 : ST   1, 3(4) ;  Store right operand result into return value slot
477 : LD   1, 3(5) ;  Load parameter 'count' into R1
478 : ADD  2, 1, 0 ;  Move left operand to register 2
479 : LD   1, 3(4) ;  Return right operand back into register 1
480 : ADD  1, 2, 1 ;  R1 = left + right
481 : ST 1, 3(4) ; Store argument 2 in callee
482 : LDA 6, 486(0) ; Return address
483 : ST 6, 0(4) ; Store return in callee frame
484 : ADD 5, 4, 0 ; Push callee frame
485 : LDA 7, 442(0) ; Call circularPrimesToHelper
486 : LD   1, 4(5) ;  Load function result
487 : LDC   2, 5(0) ;  Caller frame size
488 : SUB   5, 5, 2 ;  Pop back to caller
489 : SUB   4, 4, 2 ;  Pop back to caller
490 : LDA  7, 511(0) ;  Skip ELSE block
491 : LDA 4, 5(5) ; Base of callee frame
492 : LD   1, 1(5) ;  Load parameter 'top' into R1
493 : ST 1, 1(4) ; Store argument 0 in callee
494 : LDC  1, 1(0) ;  Load integer-literal value into register 1
495 : ST   1, 3(4) ;  Store right operand result into return value slot
496 : LD   1, 2(5) ;  Load parameter 'x' into R1
497 : ADD  2, 1, 0 ;  Move left operand to register 2
498 : LD   1, 3(4) ;  Return right operand back into register 1
499 : ADD  1, 2, 1 ;  R1 = left + right
500 : ST 1, 2(4) ; Store argument 1 in callee
501 : LD   1, 3(5) ;  Load parameter 'count' into R1
502 : ST 1, 3(4) ; Store argument 2 in callee
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return in callee frame
505 : ADD 5, 4, 0 ; Push callee frame
506 : LDA 7, 442(0) ; Call circularPrimesToHelper
507 : LD   1, 4(5) ;  Load function result
508 : LDC   2, 5(0) ;  Caller frame size
509 : SUB   5, 5, 2 ;  Pop back to caller
510 : SUB   4, 4, 2 ;  Pop back to caller
511 : LDA  7, 513(0) ;  Skip ELSE block
512 : LD   1, 3(5) ;  Load parameter 'count' into R1
513 : ST   1, 4(5) ;  Store function result into stack frame
514 : LD   6, 0(5) ;  Load return address
515 : LDA  7, 0(6) ;  Return to caller
516 : LDA 4, 5(5) ; Base of callee frame
517 : LDC  1, 1(0) ;  Load integer-literal value into register 1
518 : ST   1, 3(4) ;  Store right operand result into return value slot
519 : LD   1, 1(5) ;  Load parameter 'x' into R1
520 : ADD  2, 1, 0 ;  Move left operand to register 2
521 : LD   1, 3(4) ;  Return right operand back into register 1
522 : ADD  1, 2, 1 ;  R1 = left + right
523 : ST 1, 1(4) ; Store argument 0 in callee
524 : LDC  1, 2(0) ;  Load integer-literal value into register 1
525 : ST 1, 2(4) ; Store argument 1 in callee
526 : LDC  1, 0(0) ;  Load integer-literal value into register 1
527 : ST 1, 3(4) ; Store argument 2 in callee
528 : LDA 6, 532(0) ; Return address
529 : ST 6, 0(4) ; Store return in callee frame
530 : ADD 5, 4, 0 ; Push callee frame
531 : LDA 7, 442(0) ; Call circularPrimesToHelper
532 : LD   1, 4(5) ;  Load function result
533 : LDC   2, 5(0) ;  Caller frame size
534 : SUB   5, 5, 2 ;  Pop back to caller
535 : SUB   4, 4, 2 ;  Pop back to caller
536 : ST   1, 2(5) ;  Store function result into stack frame
537 : LD   6, 0(5) ;  Load return address
538 : LDA  7, 0(6) ;  Return to caller
