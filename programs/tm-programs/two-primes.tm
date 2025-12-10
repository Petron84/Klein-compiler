0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LDA  6, 2(7) ;  Calculate return address
7 : ST   6, 0(5) ;  Store return address in main stack frame
8 : LDA  7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT  1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT  1, 0, 0 ;  Hardcoded print function
12 : LD   6, 0(5) ;  Load return addess from stack frame.
13 : LDA  7, 0(6) ;  Jump to return address.
14 : LDC  1, 3(0) ;  Load integer-literal value into register 1
15 : ST   1, 3(4) ;  Store right operand result into return value slot
16 : LD   1, 2(5) ;  Load parameter 'selector' into R1
17 : ADD  2, 1, 0 ;  Move left operand to register 2
18 : LD   1, 3(4) ;  Return right operand back into register 1
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
25 : LDA 4, 3(5) ; Base of callee frame
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(4) ; Store argument 0 in callee
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame
31 : LDA 7, 346(0) ; Call emirp
32 : LD   1, 2(5) ;  Load function result
33 : LDC   2, 3(0) ;  Caller frame size
34 : SUB   5, 5, 2 ;  Pop back to caller
35 : SUB   4, 4, 2 ;  Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s frame
37 : LDA  7, 88(0) ;  Skip ELSE block
38 : LDC  1, 5(0) ;  Load integer-literal value into register 1
39 : ST   1, 3(4) ;  Store right operand result into return value slot
40 : LD   1, 2(5) ;  Load parameter 'selector' into R1
41 : ADD  2, 1, 0 ;  Move left operand to register 2
42 : LD   1, 3(4) ;  Return right operand back into register 1
43 : SUB  1, 2, 1 ;  left - right for equality check
44 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
45 : LDC  1, 0(0) ;  false
46 : LDA  7, 1(7) ;  skip setting true
47 : LDC  1, 1(0) ;  true
48 : JEQ  1, 62(0) ;  If condition is false, jump to ELSE
49 : LDA 4, 3(5) ; Base of callee frame
50 : LD   1, 1(5) ;  Load parameter 'n' into R1
51 : ST 1, 1(4) ; Store argument 0 in callee
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 301(0) ; Call snowball
56 : LD   1, 2(5) ;  Load function result
57 : LDC   2, 3(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : SUB   4, 4, 2 ;  Pop back to caller
60 : ST 1, 3(5) ; Store result into caller’s frame
61 : LDA  7, 88(0) ;  Skip ELSE block
62 : LDC  1, 8(0) ;  Load integer-literal value into register 1
63 : ST   1, 3(4) ;  Store right operand result into return value slot
64 : LD   1, 2(5) ;  Load parameter 'selector' into R1
65 : ADD  2, 1, 0 ;  Move left operand to register 2
66 : LD   1, 3(4) ;  Return right operand back into register 1
67 : SUB  1, 2, 1 ;  left - right for equality check
68 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
69 : LDC  1, 0(0) ;  false
70 : LDA  7, 1(7) ;  skip setting true
71 : LDC  1, 1(0) ;  true
72 : JEQ  1, 86(0) ;  If condition is false, jump to ELSE
73 : LDA 4, 3(5) ; Base of callee frame
74 : LD   1, 1(5) ;  Load parameter 'n' into R1
75 : ST 1, 1(4) ; Store argument 0 in callee
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame
79 : LDA 7, 268(0) ; Call doBoth
80 : LD   1, 2(5) ;  Load function result
81 : LDC   2, 3(0) ;  Caller frame size
82 : SUB   5, 5, 2 ;  Pop back to caller
83 : SUB   4, 4, 2 ;  Pop back to caller
84 : ST 1, 3(5) ; Store result into caller’s frame
85 : LDA  7, 88(0) ;  Skip ELSE block
86 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
87 : ST 1, 3(5) ;  Store result into current frame's return slot
88 : LD   1, 3(5) ;  Load return value into register 1
89 : LD  6, 0(5) ;  Load return address for main function into register 6
90 : LDA  7, 0(6) ;  Jump to return address of main function
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ST   1, 3(4) ;  Store right operand result into return value slot
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : ADD  2, 1, 0 ;  Move left operand to register 2
95 : LD   1, 3(4) ;  Return right operand back into register 1
96 : DIV  1, 2, 1 ;  R1 = left / right
97 : ADD  2, 1, 0 ;  Move left operand to register 2
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : MUL  1, 2, 1 ;  R1 = left * right
100 : ADD  3, 1, 0 ;  Move right operand to register 3
101 : LD   1, 1(5) ;  Load parameter 'm' into R1
102 : ADD  2, 1, 0 ;  Move left operand to register 2
103 : ADD  1, 3, 0 ;  Move right operand to register 1
104 : SUB  1, 2, 1 ;  R1 = left - right
105 : ST   1, 3(5) ;  Store function result into stack frame
106 : LD   6, 0(5) ;  Load return address
107 : LDA  7, 0(6) ;  Return to caller
108 : LDC  1, 0(0) ;  Load integer-literal value into register 1
109 : ST   1, 3(4) ;  Store right operand result into return value slot
110 : LD   1, 1(5) ;  Load parameter 'n' into R1
111 : ADD  2, 1, 0 ;  Move left operand to register 2
112 : LD   1, 3(4) ;  Return right operand back into register 1
113 : SUB  1, 2, 1 ;  left - right for equality check
114 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
115 : LDC  1, 0(0) ;  false
116 : LDA  7, 1(7) ;  skip setting true
117 : LDC  1, 1(0) ;  true
118 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
119 : LD   1, 2(5) ;  Load parameter 'nR' into R1
120 : LDA  7, 159(0) ;  Skip ELSE block
121 : LDA 4, 4(5) ; Base of callee frame
122 : LDC  1, 10(0) ;  Load integer-literal value into register 1
123 : ST   1, 3(4) ;  Store right operand result into return value slot
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : ADD  2, 1, 0 ;  Move left operand to register 2
126 : LD   1, 3(4) ;  Return right operand back into register 1
127 : DIV  1, 2, 1 ;  R1 = left / right
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LD   1, 2(5) ;  Load parameter 'nR' into R1
130 : ST   1, 3(4) ;  Store right operand result into return value slot
131 : LDC  1, 10(0) ;  Load integer-literal value into register 1
132 : ADD  2, 1, 0 ;  Move left operand to register 2
133 : LD   1, 3(4) ;  Return right operand back into register 1
134 : MUL  1, 2, 1 ;  R1 = left * right
135 : ADD  2, 1, 0 ;  Move left operand to register 2
136 : LDA 4, 4(5) ; Base of callee frame
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : ST 1, 1(4) ; Store argument 0 in callee
139 : LDC  1, 10(0) ;  Load integer-literal value into register 1
140 : ST 1, 2(4) ; Store argument 1 in callee
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 91(0) ; Call MOD
145 : LD   1, 3(5) ;  Load function result
146 : LDC   2, 4(0) ;  Caller frame size
147 : SUB   5, 5, 2 ;  Pop back to caller
148 : SUB   4, 4, 2 ;  Pop back to caller
149 : ADD  1, 2, 1 ;  R1 = left + right
150 : ST 1, 2(4) ; Store argument 1 in callee
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return in callee frame
153 : ADD 5, 4, 0 ; Push callee frame
154 : LDA 7, 108(0) ; Call reverseL
155 : LD   1, 3(5) ;  Load function result
156 : LDC   2, 4(0) ;  Caller frame size
157 : SUB   5, 5, 2 ;  Pop back to caller
158 : SUB   4, 4, 2 ;  Pop back to caller
159 : ST   1, 3(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
162 : LDA 4, 4(5) ; Base of callee frame
163 : LD   1, 1(5) ;  Load parameter 'n' into R1
164 : ST 1, 1(4) ; Store argument 0 in callee
165 : LDC  1, 0(0) ;  Load integer-literal value into register 1
166 : ST 1, 2(4) ; Store argument 1 in callee
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(4) ; Store return in callee frame
169 : ADD 5, 4, 0 ; Push callee frame
170 : LDA 7, 108(0) ; Call reverseL
171 : LD   1, 3(5) ;  Load function result
172 : LDC   2, 4(0) ;  Caller frame size
173 : SUB   5, 5, 2 ;  Pop back to caller
174 : SUB   4, 4, 2 ;  Pop back to caller
175 : ST   1, 2(5) ;  Store function result into stack frame
176 : LD   6, 0(5) ;  Load return address
177 : LDA  7, 0(6) ;  Return to caller
178 : LDA 4, 4(5) ; Base of callee frame
179 : LD   1, 2(5) ;  Load parameter 'b' into R1
180 : ST 1, 1(4) ; Store argument 0 in callee
181 : LD   1, 1(5) ;  Load parameter 'a' into R1
182 : ST 1, 2(4) ; Store argument 1 in callee
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return in callee frame
185 : ADD 5, 4, 0 ; Push callee frame
186 : LDA 7, 91(0) ; Call MOD
187 : LD   1, 3(5) ;  Load function result
188 : LDC   2, 4(0) ;  Caller frame size
189 : SUB   5, 5, 2 ;  Pop back to caller
190 : SUB   4, 4, 2 ;  Pop back to caller
191 : ADD  2, 1, 0 ;  Move left operand to register 2
192 : LDC  1, 0(0) ;  Load integer-literal value into register 1
193 : SUB  1, 2, 1 ;  left - right for equality check
194 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
195 : LDC  1, 0(0) ;  false
196 : LDA  7, 1(7) ;  skip setting true
197 : LDC  1, 1(0) ;  true
198 : ST   1, 3(5) ;  Store function result into stack frame
199 : LD   6, 0(5) ;  Load return address
200 : LDA  7, 0(6) ;  Return to caller
201 : LD   1, 2(5) ;  Load parameter 'n' into R1
202 : ST   1, 3(4) ;  Store right operand result into return value slot
203 : LD   1, 1(5) ;  Load parameter 'i' into R1
204 : ADD  2, 1, 0 ;  Move left operand to register 2
205 : LD   1, 3(4) ;  Return right operand back into register 1
206 : SUB  1, 2, 1 ;  left - right for less-than check
207 : JLT  1, 2(7) ;  If R1 < 0, jump to true
208 : LDC  1, 0(0) ;  false
209 : LDA  7, 1(7) ;  skip setting true
210 : LDC  1, 1(0) ;  true
211 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
212 : LDA 4, 4(5) ; Base of callee frame
213 : LD   1, 1(5) ;  Load parameter 'i' into R1
214 : ST 1, 1(4) ; Store argument 0 in callee
215 : LD   1, 2(5) ;  Load parameter 'n' into R1
216 : ST 1, 2(4) ; Store argument 1 in callee
217 : LDA 6, 221(0) ; Return address
218 : ST 6, 0(4) ; Store return in callee frame
219 : ADD 5, 4, 0 ; Push callee frame
220 : LDA 7, 178(0) ; Call divides
221 : LD   1, 3(5) ;  Load function result
222 : LDC   2, 4(0) ;  Caller frame size
223 : SUB   5, 5, 2 ;  Pop back to caller
224 : SUB   4, 4, 2 ;  Pop back to caller
225 : ADD  2, 1, 0 ;  Move left operand to register 2
226 : LDA 4, 4(5) ; Base of callee frame
227 : LDC  1, 1(0) ;  Load integer-literal value into register 1
228 : ST   1, 3(4) ;  Store right operand result into return value slot
229 : LD   1, 1(5) ;  Load parameter 'i' into R1
230 : ADD  2, 1, 0 ;  Move left operand to register 2
231 : LD   1, 3(4) ;  Return right operand back into register 1
232 : ADD  1, 2, 1 ;  R1 = left + right
233 : ST 1, 1(4) ; Store argument 0 in callee
234 : LD   1, 2(5) ;  Load parameter 'n' into R1
235 : ST 1, 2(4) ; Store argument 1 in callee
236 : LDA 6, 240(0) ; Return address
237 : ST 6, 0(4) ; Store return in callee frame
238 : ADD 5, 4, 0 ; Push callee frame
239 : LDA 7, 201(0) ; Call hasDivisorFrom
240 : LD   1, 3(5) ;  Load function result
241 : LDC   2, 4(0) ;  Caller frame size
242 : SUB   5, 5, 2 ;  Pop back to caller
243 : SUB   4, 4, 2 ;  Pop back to caller
244 : ADD  1, 2, 1 ;  R1 = left OR right
245 : LDA  7, 247(0) ;  Skip ELSE block
246 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
247 : ST   1, 3(5) ;  Store function result into stack frame
248 : LD   6, 0(5) ;  Load return address
249 : LDA  7, 0(6) ;  Return to caller
250 : LDA 4, 4(5) ; Base of callee frame
251 : LDC  1, 2(0) ;  Load integer-literal value into register 1
252 : ST 1, 1(4) ; Store argument 0 in callee
253 : LD   1, 1(5) ;  Load parameter 'n' into R1
254 : ST 1, 2(4) ; Store argument 1 in callee
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return in callee frame
257 : ADD 5, 4, 0 ; Push callee frame
258 : LDA 7, 201(0) ; Call hasDivisorFrom
259 : LD   1, 3(5) ;  Load function result
260 : LDC   2, 4(0) ;  Caller frame size
261 : SUB   5, 5, 2 ;  Pop back to caller
262 : SUB   4, 4, 2 ;  Pop back to caller
263 : LDC  2, 1(0) ;  Load 1 into R2
264 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
265 : ST   1, 2(5) ;  Store function result into stack frame
266 : LD   6, 0(5) ;  Load return address
267 : LDA  7, 0(6) ;  Return to caller
268 : LDA 4, 3(5) ; Base of callee frame
269 : LD   1, 1(5) ;  Load parameter 'n' into R1
270 : ST 1, 1(4) ; Store argument 0 in callee
271 : LDA 6, 275(0) ; Return address
272 : ST 6, 0(4) ; Store return in callee frame
273 : ADD 5, 4, 0 ; Push callee frame
274 : LDA 7, 346(0) ; Call emirp
275 : LD   1, 2(5) ;  Load function result
276 : LDC   2, 3(0) ;  Caller frame size
277 : SUB   5, 5, 2 ;  Pop back to caller
278 : SUB   4, 4, 2 ;  Pop back to caller
279 : LDA 4, 3(5) ; Base of callee frame
280 : LDA 6, 284(0) ; Return address
281 : ST 6, 0(4) ; Store return addr in callee frame
282 : ADD 5, 4, 0 ; Push new frame
283 : LDA 7, 11(0) ; Call print
284 : LDC 2, 3(0) ; Caller frame size
285 : SUB 5, 5, 2 ; Pop frame
286 : ST   1, 2(5) ;  Store function result into stack frame
287 : LDA 4, 3(5) ; Base of callee frame
288 : LD   1, 1(5) ;  Load parameter 'n' into R1
289 : ST 1, 1(4) ; Store argument 0 in callee
290 : LDA 6, 294(0) ; Return address
291 : ST 6, 0(4) ; Store return in callee frame
292 : ADD 5, 4, 0 ; Push callee frame
293 : LDA 7, 301(0) ; Call snowball
294 : LD   1, 2(5) ;  Load function result
295 : LDC   2, 3(0) ;  Caller frame size
296 : SUB   5, 5, 2 ;  Pop back to caller
297 : SUB   4, 4, 2 ;  Pop back to caller
298 : ST   1, 2(5) ;  Store function result into stack frame
299 : LD   6, 0(5) ;  Load return address
300 : LDA  7, 0(6) ;  Return to caller
301 : LDA 4, 3(5) ; Base of callee frame
302 : LD   1, 1(5) ;  Load parameter 'n' into R1
303 : ST 1, 1(4) ; Store argument 0 in callee
304 : LDA 6, 308(0) ; Return address
305 : ST 6, 0(4) ; Store return in callee frame
306 : ADD 5, 4, 0 ; Push callee frame
307 : LDA 7, 250(0) ; Call isPrime
308 : LD   1, 2(5) ;  Load function result
309 : LDC   2, 3(0) ;  Caller frame size
310 : SUB   5, 5, 2 ;  Pop back to caller
311 : SUB   4, 4, 2 ;  Pop back to caller
312 : ADD  2, 1, 0 ;  Move left operand to register 2
313 : LDC  1, 10(0) ;  Load integer-literal value into register 1
314 : ST   1, 3(4) ;  Store right operand result into return value slot
315 : LD   1, 1(5) ;  Load parameter 'n' into R1
316 : ADD  2, 1, 0 ;  Move left operand to register 2
317 : LD   1, 3(4) ;  Return right operand back into register 1
318 : SUB  1, 2, 1 ;  left - right for less-than check
319 : JLT  1, 2(7) ;  If R1 < 0, jump to true
320 : LDC  1, 0(0) ;  false
321 : LDA  7, 1(7) ;  skip setting true
322 : LDC  1, 1(0) ;  true
323 : JEQ  1, 326(0) ;  If condition is false, jump to ELSE
324 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
325 : LDA  7, 342(0) ;  Skip ELSE block
326 : LDA 4, 3(5) ; Base of callee frame
327 : LDC  1, 10(0) ;  Load integer-literal value into register 1
328 : ST   1, 3(4) ;  Store right operand result into return value slot
329 : LD   1, 1(5) ;  Load parameter 'n' into R1
330 : ADD  2, 1, 0 ;  Move left operand to register 2
331 : LD   1, 3(4) ;  Return right operand back into register 1
332 : DIV  1, 2, 1 ;  R1 = left / right
333 : ST 1, 1(4) ; Store argument 0 in callee
334 : LDA 6, 338(0) ; Return address
335 : ST 6, 0(4) ; Store return in callee frame
336 : ADD 5, 4, 0 ; Push callee frame
337 : LDA 7, 250(0) ; Call isPrime
338 : LD   1, 2(5) ;  Load function result
339 : LDC   2, 3(0) ;  Caller frame size
340 : SUB   5, 5, 2 ;  Pop back to caller
341 : SUB   4, 4, 2 ;  Pop back to caller
342 : MUL  1, 2, 1 ;  R1 = left AND right
343 : ST   1, 2(5) ;  Store function result into stack frame
344 : LD   6, 0(5) ;  Load return address
345 : LDA  7, 0(6) ;  Return to caller
346 : LDA 4, 3(5) ; Base of callee frame
347 : LD   1, 1(5) ;  Load parameter 'n' into R1
348 : ST 1, 1(4) ; Store argument 0 in callee
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 250(0) ; Call isPrime
353 : LD   1, 2(5) ;  Load function result
354 : LDC   2, 3(0) ;  Caller frame size
355 : SUB   5, 5, 2 ;  Pop back to caller
356 : SUB   4, 4, 2 ;  Pop back to caller
357 : ADD  2, 1, 0 ;  Move left operand to register 2
358 : LDA 4, 3(5) ; Base of callee frame
359 : LDA 4, 3(5) ; Base of callee frame
360 : LD   1, 1(5) ;  Load parameter 'n' into R1
361 : ST 1, 1(4) ; Store argument 0 in callee
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return in callee frame
364 : ADD 5, 4, 0 ; Push callee frame
365 : LDA 7, 162(0) ; Call reverse
366 : LD   1, 2(5) ;  Load function result
367 : LDC   2, 3(0) ;  Caller frame size
368 : SUB   5, 5, 2 ;  Pop back to caller
369 : SUB   4, 4, 2 ;  Pop back to caller
370 : ST 1, 1(4) ; Store argument 0 in callee
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return in callee frame
373 : ADD 5, 4, 0 ; Push callee frame
374 : LDA 7, 250(0) ; Call isPrime
375 : LD   1, 2(5) ;  Load function result
376 : LDC   2, 3(0) ;  Caller frame size
377 : SUB   5, 5, 2 ;  Pop back to caller
378 : SUB   4, 4, 2 ;  Pop back to caller
379 : MUL  1, 2, 1 ;  R1 = left AND right
380 : ST   1, 2(5) ;  Store function result into stack frame
381 : LD   6, 0(5) ;  Load return address
382 : LDA  7, 0(6) ;  Return to caller
