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
12 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 201(0) ; Call SQRT
18 : LD   1, 2(5) ;  Load function result
19 : LDC   2, 3(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : LDA 4, 3(5) ; Base of callee frame
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return addr in callee frame
25 : ADD 5, 4, 0 ; Push new frame
26 : LDA 7, 8(0) ; Call print
27 : LDC 2, 3(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop frame
29 : LDA 4, 3(5) ; Base of callee frame
30 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 219(0) ; Call ODD
36 : LD   1, 2(5) ;  Load function result
37 : LDC   2, 3(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 2(5) ; Store result into caller’s frame
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LDA 4, 4(5) ; Base of callee frame
45 : LD   1, 4(5) ;  Load parameter 'mid' into R1
46 : ST   1, 3(4) ;  Store right operand result into return value slot
47 : LD   1, 4(5) ;  Load parameter 'mid' into R1
48 : ADD  2, 1, 0 ;  Move left operand to register 2
49 : LD   1, 3(4) ;  Return right operand back into register 1
50 : MUL  1, 2, 1 ;  R1 = left * right
51 : ST 1, 1(4) ; Store argument 0 in callee
52 : LD   1, 1(5) ;  Load parameter 'n' into R1
53 : ST 1, 2(4) ; Store argument 1 in callee
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return in callee frame
56 : ADD 5, 4, 0 ; Push callee frame
57 : LDA 7, 524(0) ; Call LE
58 : LD   1, 3(5) ;  Load function result
59 : LDC   2, 4(0) ;  Caller frame size
60 : SUB   5, 5, 2 ;  Pop back to caller
61 : SUB   4, 4, 2 ;  Pop back to caller
62 : JEQ  1, 79(0) ;  If condition is false, jump to ELSE
63 : LDA 4, 5(5) ; Base of callee frame
64 : LD   1, 1(5) ;  Load parameter 'n' into R1
65 : ST 1, 1(4) ; Store argument 0 in callee
66 : LD   1, 4(5) ;  Load parameter 'mid' into R1
67 : ST 1, 2(4) ; Store argument 1 in callee
68 : LD   1, 3(5) ;  Load parameter 'high' into R1
69 : ST 1, 3(4) ; Store argument 2 in callee
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 97(0) ; Call SQRTSEARCH
74 : LD   1, 4(5) ;  Load function result
75 : LDC   2, 5(0) ;  Caller frame size
76 : SUB   5, 5, 2 ;  Pop back to caller
77 : SUB   4, 4, 2 ;  Pop back to caller
78 : LDA  7, 94(0) ;  Skip ELSE block
79 : LDA 4, 5(5) ; Base of callee frame
80 : LD   1, 1(5) ;  Load parameter 'n' into R1
81 : ST 1, 1(4) ; Store argument 0 in callee
82 : LD   1, 2(5) ;  Load parameter 'low' into R1
83 : ST 1, 2(4) ; Store argument 1 in callee
84 : LD   1, 4(5) ;  Load parameter 'mid' into R1
85 : ST 1, 3(4) ; Store argument 2 in callee
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame
89 : LDA 7, 97(0) ; Call SQRTSEARCH
90 : LD   1, 4(5) ;  Load function result
91 : LDC   2, 5(0) ;  Caller frame size
92 : SUB   5, 5, 2 ;  Pop back to caller
93 : SUB   4, 4, 2 ;  Pop back to caller
94 : ST   1, 5(5) ;  Store function result into stack frame
95 : LD   6, 0(5) ;  Load return address
96 : LDA  7, 0(6) ;  Return to caller
97 : LDA 4, 4(5) ; Base of callee frame
98 : LD   1, 3(5) ;  Load parameter 'high' into R1
99 : ST 1, 1(4) ; Store argument 0 in callee
100 : LDC  1, 1(0) ;  Load integer-literal value into register 1
101 : ST   1, 3(4) ;  Store right operand result into return value slot
102 : LD   1, 2(5) ;  Load parameter 'low' into R1
103 : ADD  2, 1, 0 ;  Move left operand to register 2
104 : LD   1, 3(4) ;  Return right operand back into register 1
105 : ADD  1, 2, 1 ;  R1 = left + right
106 : ST 1, 2(4) ; Store argument 1 in callee
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 524(0) ; Call LE
111 : LD   1, 3(5) ;  Load function result
112 : LDC   2, 4(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : SUB   4, 4, 2 ;  Pop back to caller
115 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
116 : LDA 4, 4(5) ; Base of callee frame
117 : LDA 4, 4(5) ; Base of callee frame
118 : LD   1, 2(5) ;  Load parameter 'low' into R1
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD   1, 2(5) ;  Load parameter 'low' into R1
121 : ST 1, 2(4) ; Store argument 1 in callee
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return in callee frame
124 : ADD 5, 4, 0 ; Push callee frame
125 : LDA 7, 444(0) ; Call TIMES
126 : LD   1, 3(5) ;  Load function result
127 : LDC   2, 4(0) ;  Caller frame size
128 : SUB   5, 5, 2 ;  Pop back to caller
129 : SUB   4, 4, 2 ;  Pop back to caller
130 : ADD  3, 1, 0 ;  Move right operand to register 3
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ADD  2, 1, 0 ;  Move left operand to register 2
133 : ADD  1, 3, 0 ;  Move right operand to register 1
134 : SUB  1, 2, 1 ;  R1 = left - right
135 : ST 1, 1(4) ; Store argument 0 in callee
136 : LDA 4, 4(5) ; Base of callee frame
137 : LD   1, 3(5) ;  Load parameter 'high' into R1
138 : ST 1, 1(4) ; Store argument 0 in callee
139 : LD   1, 3(5) ;  Load parameter 'high' into R1
140 : ST 1, 2(4) ; Store argument 1 in callee
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 444(0) ; Call TIMES
145 : LD   1, 3(5) ;  Load function result
146 : LDC   2, 4(0) ;  Caller frame size
147 : SUB   5, 5, 2 ;  Pop back to caller
148 : SUB   4, 4, 2 ;  Pop back to caller
149 : ADD  2, 1, 0 ;  Move left operand to register 2
150 : LD   1, 1(5) ;  Load parameter 'n' into R1
151 : SUB  1, 2, 1 ;  R1 = left - right
152 : ST 1, 2(4) ; Store argument 1 in callee
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 524(0) ; Call LE
157 : LD   1, 3(5) ;  Load function result
158 : LDC   2, 4(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : SUB   4, 4, 2 ;  Pop back to caller
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 2(5) ;  Load parameter 'low' into R1
163 : LDA  7, 165(0) ;  Skip ELSE block
164 : LD   1, 3(5) ;  Load parameter 'high' into R1
165 : LDA  7, 198(0) ;  Skip ELSE block
166 : LDA 4, 6(5) ; Base of callee frame
167 : LD   1, 1(5) ;  Load parameter 'n' into R1
168 : ST 1, 1(4) ; Store argument 0 in callee
169 : LD   1, 2(5) ;  Load parameter 'low' into R1
170 : ST 1, 2(4) ; Store argument 1 in callee
171 : LD   1, 3(5) ;  Load parameter 'high' into R1
172 : ST 1, 3(4) ; Store argument 2 in callee
173 : LDA 4, 4(5) ; Base of callee frame
174 : LD   1, 2(5) ;  Load parameter 'low' into R1
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LD   1, 3(5) ;  Load parameter 'high' into R1
177 : ST 1, 2(4) ; Store argument 1 in callee
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame
181 : LDA 7, 462(0) ; Call PLUS
182 : LD   1, 3(5) ;  Load function result
183 : LDC   2, 4(0) ;  Caller frame size
184 : SUB   5, 5, 2 ;  Pop back to caller
185 : SUB   4, 4, 2 ;  Pop back to caller
186 : ADD  2, 1, 0 ;  Move left operand to register 2
187 : LDC  1, 2(0) ;  Load integer-literal value into register 1
188 : DIV  1, 2, 1 ;  R1 = left / right
189 : ST 1, 4(4) ; Store argument 3 in callee
190 : LDA 6, 194(0) ; Return address
191 : ST 6, 0(4) ; Store return in callee frame
192 : ADD 5, 4, 0 ; Push callee frame
193 : LDA 7, 44(0) ; Call SQRTSPLIT
194 : LD   1, 5(5) ;  Load function result
195 : LDC   2, 6(0) ;  Caller frame size
196 : SUB   5, 5, 2 ;  Pop back to caller
197 : SUB   4, 4, 2 ;  Pop back to caller
198 : ST   1, 4(5) ;  Store function result into stack frame
199 : LD   6, 0(5) ;  Load return address
200 : LDA  7, 0(6) ;  Return to caller
201 : LDA 4, 5(5) ; Base of callee frame
202 : LD   1, 1(5) ;  Load parameter 'n' into R1
203 : ST 1, 1(4) ; Store argument 0 in callee
204 : LDC  1, 0(0) ;  Load integer-literal value into register 1
205 : ST 1, 2(4) ; Store argument 1 in callee
206 : LD   1, 1(5) ;  Load parameter 'n' into R1
207 : ST 1, 3(4) ; Store argument 2 in callee
208 : LDA 6, 212(0) ; Return address
209 : ST 6, 0(4) ; Store return in callee frame
210 : ADD 5, 4, 0 ; Push callee frame
211 : LDA 7, 97(0) ; Call SQRTSEARCH
212 : LD   1, 4(5) ;  Load function result
213 : LDC   2, 5(0) ;  Caller frame size
214 : SUB   5, 5, 2 ;  Pop back to caller
215 : SUB   4, 4, 2 ;  Pop back to caller
216 : ST   1, 2(5) ;  Store function result into stack frame
217 : LD   6, 0(5) ;  Load return address
218 : LDA  7, 0(6) ;  Return to caller
219 : LDA 4, 4(5) ; Base of callee frame
220 : LDC  1, 0(0) ;  Load integer-literal value into register 1
221 : ST 1, 1(4) ; Store argument 0 in callee
222 : LD   1, 1(5) ;  Load parameter 'n' into R1
223 : ST 1, 2(4) ; Store argument 1 in callee
224 : LDA 6, 228(0) ; Return address
225 : ST 6, 0(4) ; Store return in callee frame
226 : ADD 5, 4, 0 ; Push callee frame
227 : LDA 7, 524(0) ; Call LE
228 : LD   1, 3(5) ;  Load function result
229 : LDC   2, 4(0) ;  Caller frame size
230 : SUB   5, 5, 2 ;  Pop back to caller
231 : SUB   4, 4, 2 ;  Pop back to caller
232 : JEQ  1, 274(0) ;  If condition is false, jump to ELSE
233 : LDA 4, 4(5) ; Base of callee frame
234 : LD   1, 1(5) ;  Load parameter 'n' into R1
235 : ST 1, 1(4) ; Store argument 0 in callee
236 : LDA 4, 4(5) ; Base of callee frame
237 : LD   1, 1(5) ;  Load parameter 'n' into R1
238 : ST 1, 1(4) ; Store argument 0 in callee
239 : LDC  1, 2(0) ;  Load integer-literal value into register 1
240 : ST 1, 2(4) ; Store argument 1 in callee
241 : LDA 6, 245(0) ; Return address
242 : ST 6, 0(4) ; Store return in callee frame
243 : ADD 5, 4, 0 ; Push callee frame
244 : LDA 7, 435(0) ; Call DIV
245 : LD   1, 3(5) ;  Load function result
246 : LDC   2, 4(0) ;  Caller frame size
247 : SUB   5, 5, 2 ;  Pop back to caller
248 : SUB   4, 4, 2 ;  Pop back to caller
249 : ADD  2, 1, 0 ;  Move left operand to register 2
250 : LDA 4, 4(5) ; Base of callee frame
251 : LD   1, 1(5) ;  Load parameter 'n' into R1
252 : ST 1, 1(4) ; Store argument 0 in callee
253 : LDC  1, 2(0) ;  Load integer-literal value into register 1
254 : ST 1, 2(4) ; Store argument 1 in callee
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return in callee frame
257 : ADD 5, 4, 0 ; Push callee frame
258 : LDA 7, 435(0) ; Call DIV
259 : LD   1, 3(5) ;  Load function result
260 : LDC   2, 4(0) ;  Caller frame size
261 : SUB   5, 5, 2 ;  Pop back to caller
262 : SUB   4, 4, 2 ;  Pop back to caller
263 : ADD  1, 2, 1 ;  R1 = left + right
264 : ST 1, 2(4) ; Store argument 1 in callee
265 : LDA 6, 269(0) ; Return address
266 : ST 6, 0(4) ; Store return in callee frame
267 : ADD 5, 4, 0 ; Push callee frame
268 : LDA 7, 488(0) ; Call GT
269 : LD   1, 3(5) ;  Load function result
270 : LDC   2, 4(0) ;  Caller frame size
271 : SUB   5, 5, 2 ;  Pop back to caller
272 : SUB   4, 4, 2 ;  Pop back to caller
273 : LDA  7, 344(0) ;  Skip ELSE block
274 : LDA 4, 4(5) ; Base of callee frame
275 : LDA 4, 3(5) ; Base of callee frame
276 : LD   1, 1(5) ;  Load parameter 'n' into R1
277 : ST 1, 1(4) ; Store argument 0 in callee
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return in callee frame
280 : ADD 5, 4, 0 ; Push callee frame
281 : LDA 7, 430(0) ; Call NEG
282 : LD   1, 2(5) ;  Load function result
283 : LDC   2, 3(0) ;  Caller frame size
284 : SUB   5, 5, 2 ;  Pop back to caller
285 : SUB   4, 4, 2 ;  Pop back to caller
286 : ST 1, 1(4) ; Store argument 0 in callee
287 : LDA 4, 4(5) ; Base of callee frame
288 : LDA 4, 3(5) ; Base of callee frame
289 : LD   1, 1(5) ;  Load parameter 'n' into R1
290 : ST 1, 1(4) ; Store argument 0 in callee
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame
294 : LDA 7, 430(0) ; Call NEG
295 : LD   1, 2(5) ;  Load function result
296 : LDC   2, 3(0) ;  Caller frame size
297 : SUB   5, 5, 2 ;  Pop back to caller
298 : SUB   4, 4, 2 ;  Pop back to caller
299 : ST 1, 1(4) ; Store argument 0 in callee
300 : LDC  1, 2(0) ;  Load integer-literal value into register 1
301 : ST 1, 2(4) ; Store argument 1 in callee
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame
305 : LDA 7, 435(0) ; Call DIV
306 : LD   1, 3(5) ;  Load function result
307 : LDC   2, 4(0) ;  Caller frame size
308 : SUB   5, 5, 2 ;  Pop back to caller
309 : SUB   4, 4, 2 ;  Pop back to caller
310 : ADD  2, 1, 0 ;  Move left operand to register 2
311 : LDA 4, 4(5) ; Base of callee frame
312 : LDA 4, 3(5) ; Base of callee frame
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : ST 1, 1(4) ; Store argument 0 in callee
315 : LDA 6, 319(0) ; Return address
316 : ST 6, 0(4) ; Store return in callee frame
317 : ADD 5, 4, 0 ; Push callee frame
318 : LDA 7, 430(0) ; Call NEG
319 : LD   1, 2(5) ;  Load function result
320 : LDC   2, 3(0) ;  Caller frame size
321 : SUB   5, 5, 2 ;  Pop back to caller
322 : SUB   4, 4, 2 ;  Pop back to caller
323 : ST 1, 1(4) ; Store argument 0 in callee
324 : LDC  1, 2(0) ;  Load integer-literal value into register 1
325 : ST 1, 2(4) ; Store argument 1 in callee
326 : LDA 6, 330(0) ; Return address
327 : ST 6, 0(4) ; Store return in callee frame
328 : ADD 5, 4, 0 ; Push callee frame
329 : LDA 7, 435(0) ; Call DIV
330 : LD   1, 3(5) ;  Load function result
331 : LDC   2, 4(0) ;  Caller frame size
332 : SUB   5, 5, 2 ;  Pop back to caller
333 : SUB   4, 4, 2 ;  Pop back to caller
334 : ADD  1, 2, 1 ;  R1 = left + right
335 : ST 1, 2(4) ; Store argument 1 in callee
336 : LDA 6, 340(0) ; Return address
337 : ST 6, 0(4) ; Store return in callee frame
338 : ADD 5, 4, 0 ; Push callee frame
339 : LDA 7, 488(0) ; Call GT
340 : LD   1, 3(5) ;  Load function result
341 : LDC   2, 4(0) ;  Caller frame size
342 : SUB   5, 5, 2 ;  Pop back to caller
343 : SUB   4, 4, 2 ;  Pop back to caller
344 : ST   1, 2(5) ;  Store function result into stack frame
345 : LD   6, 0(5) ;  Load return address
346 : LDA  7, 0(6) ;  Return to caller
347 : LDC  1, 0(0) ;  Load integer-literal value into register 1
348 : ST   1, 3(4) ;  Store right operand result into return value slot
349 : LD   1, 2(5) ;  Load parameter 'n' into R1
350 : ADD  2, 1, 0 ;  Move left operand to register 2
351 : LD   1, 3(4) ;  Return right operand back into register 1
352 : SUB  1, 2, 1 ;  left - right for equality check
353 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
354 : LDC  1, 0(0) ;  false
355 : LDA  7, 1(7) ;  skip setting true
356 : LDC  1, 1(0) ;  true
357 : JEQ  1, 360(0) ;  If condition is false, jump to ELSE
358 : LDC  1, 1(0) ;  Load integer-literal value into register 1
359 : LDA  7, 383(0) ;  Skip ELSE block
360 : LDA 4, 4(5) ; Base of callee frame
361 : LD   1, 1(5) ;  Load parameter 'm' into R1
362 : ST 1, 1(4) ; Store argument 0 in callee
363 : LDC  1, 1(0) ;  Load integer-literal value into register 1
364 : ST   1, 3(4) ;  Store right operand result into return value slot
365 : LD   1, 2(5) ;  Load parameter 'n' into R1
366 : ADD  2, 1, 0 ;  Move left operand to register 2
367 : LD   1, 3(4) ;  Return right operand back into register 1
368 : SUB  1, 2, 1 ;  R1 = left - right
369 : ST 1, 2(4) ; Store argument 1 in callee
370 : LDA 6, 374(0) ; Return address
371 : ST 6, 0(4) ; Store return in callee frame
372 : ADD 5, 4, 0 ; Push callee frame
373 : LDA 7, 347(0) ; Call EXP
374 : LD   1, 3(5) ;  Load function result
375 : LDC   2, 4(0) ;  Caller frame size
376 : SUB   5, 5, 2 ;  Pop back to caller
377 : SUB   4, 4, 2 ;  Pop back to caller
378 : ADD  3, 1, 0 ;  Move right operand to register 3
379 : LD   1, 1(5) ;  Load parameter 'm' into R1
380 : ADD  2, 1, 0 ;  Move left operand to register 2
381 : ADD  1, 3, 0 ;  Move right operand to register 1
382 : MUL  1, 2, 1 ;  R1 = left * right
383 : ST   1, 3(5) ;  Store function result into stack frame
384 : LD   6, 0(5) ;  Load return address
385 : LDA  7, 0(6) ;  Return to caller
386 : LD   1, 2(5) ;  Load parameter 'n' into R1
387 : ST   1, 3(4) ;  Store right operand result into return value slot
388 : LD   1, 1(5) ;  Load parameter 'm' into R1
389 : ADD  2, 1, 0 ;  Move left operand to register 2
390 : LD   1, 3(4) ;  Return right operand back into register 1
391 : DIV  1, 2, 1 ;  R1 = left / right
392 : ADD  2, 1, 0 ;  Move left operand to register 2
393 : LD   1, 2(5) ;  Load parameter 'n' into R1
394 : MUL  1, 2, 1 ;  R1 = left * right
395 : ADD  3, 1, 0 ;  Move right operand to register 3
396 : LD   1, 1(5) ;  Load parameter 'm' into R1
397 : ADD  2, 1, 0 ;  Move left operand to register 2
398 : ADD  1, 3, 0 ;  Move right operand to register 1
399 : SUB  1, 2, 1 ;  R1 = left - right
400 : ST   1, 3(5) ;  Store function result into stack frame
401 : LD   6, 0(5) ;  Load return address
402 : LDA  7, 0(6) ;  Return to caller
403 : LD   1, 1(5) ;  Load parameter 'n' into R1
404 : ST   1, 3(4) ;  Store right operand result into return value slot
405 : LDC  1, 0(0) ;  Load integer-literal value into register 1
406 : ADD  2, 1, 0 ;  Move left operand to register 2
407 : LD   1, 3(4) ;  Return right operand back into register 1
408 : SUB  1, 2, 1 ;  left - right for less-than check
409 : JLT  1, 2(7) ;  If R1 < 0, jump to true
410 : LDC  1, 0(0) ;  false
411 : LDA  7, 1(7) ;  skip setting true
412 : LDC  1, 1(0) ;  true
413 : JEQ  1, 416(0) ;  If condition is false, jump to ELSE
414 : LD   1, 1(5) ;  Load parameter 'n' into R1
415 : LDA  7, 427(0) ;  Skip ELSE block
416 : LDA 4, 3(5) ; Base of callee frame
417 : LD   1, 1(5) ;  Load parameter 'n' into R1
418 : ST 1, 1(4) ; Store argument 0 in callee
419 : LDA 6, 423(0) ; Return address
420 : ST 6, 0(4) ; Store return in callee frame
421 : ADD 5, 4, 0 ; Push callee frame
422 : LDA 7, 430(0) ; Call NEG
423 : LD   1, 2(5) ;  Load function result
424 : LDC   2, 3(0) ;  Caller frame size
425 : SUB   5, 5, 2 ;  Pop back to caller
426 : SUB   4, 4, 2 ;  Pop back to caller
427 : ST   1, 2(5) ;  Store function result into stack frame
428 : LD   6, 0(5) ;  Load return address
429 : LDA  7, 0(6) ;  Return to caller
430 : LD   1, 1(5) ;  Load parameter 'n' into R1
431 : SUB  1, 0, 1 ;  Negate value in R1
432 : ST   1, 2(5) ;  Store function result into stack frame
433 : LD   6, 0(5) ;  Load return address
434 : LDA  7, 0(6) ;  Return to caller
435 : LD   1, 2(5) ;  Load parameter 'q' into R1
436 : ST   1, 3(4) ;  Store right operand result into return value slot
437 : LD   1, 1(5) ;  Load parameter 'p' into R1
438 : ADD  2, 1, 0 ;  Move left operand to register 2
439 : LD   1, 3(4) ;  Return right operand back into register 1
440 : DIV  1, 2, 1 ;  R1 = left / right
441 : ST   1, 3(5) ;  Store function result into stack frame
442 : LD   6, 0(5) ;  Load return address
443 : LDA  7, 0(6) ;  Return to caller
444 : LD   1, 2(5) ;  Load parameter 'q' into R1
445 : ST   1, 3(4) ;  Store right operand result into return value slot
446 : LD   1, 1(5) ;  Load parameter 'p' into R1
447 : ADD  2, 1, 0 ;  Move left operand to register 2
448 : LD   1, 3(4) ;  Return right operand back into register 1
449 : MUL  1, 2, 1 ;  R1 = left * right
450 : ST   1, 3(5) ;  Store function result into stack frame
451 : LD   6, 0(5) ;  Load return address
452 : LDA  7, 0(6) ;  Return to caller
453 : LD   1, 2(5) ;  Load parameter 'q' into R1
454 : ST   1, 3(4) ;  Store right operand result into return value slot
455 : LD   1, 1(5) ;  Load parameter 'p' into R1
456 : ADD  2, 1, 0 ;  Move left operand to register 2
457 : LD   1, 3(4) ;  Return right operand back into register 1
458 : SUB  1, 2, 1 ;  R1 = left - right
459 : ST   1, 3(5) ;  Store function result into stack frame
460 : LD   6, 0(5) ;  Load return address
461 : LDA  7, 0(6) ;  Return to caller
462 : LD   1, 2(5) ;  Load parameter 'q' into R1
463 : ST   1, 3(4) ;  Store right operand result into return value slot
464 : LD   1, 1(5) ;  Load parameter 'p' into R1
465 : ADD  2, 1, 0 ;  Move left operand to register 2
466 : LD   1, 3(4) ;  Return right operand back into register 1
467 : ADD  1, 2, 1 ;  R1 = left + right
468 : ST   1, 3(5) ;  Store function result into stack frame
469 : LD   6, 0(5) ;  Load return address
470 : LDA  7, 0(6) ;  Return to caller
471 : LD   1, 1(5) ;  Load parameter 'p' into R1
472 : JEQ  1, 475(0) ;  If condition is false, jump to ELSE
473 : LD   1, 2(5) ;  Load parameter 'q' into R1
474 : LDA  7, 476(0) ;  Skip ELSE block
475 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
476 : ST   1, 3(5) ;  Store function result into stack frame
477 : LD   6, 0(5) ;  Load return address
478 : LDA  7, 0(6) ;  Return to caller
479 : LD   1, 2(5) ;  Load parameter 'q' into R1
480 : ST   1, 3(4) ;  Store right operand result into return value slot
481 : LD   1, 1(5) ;  Load parameter 'p' into R1
482 : ADD  2, 1, 0 ;  Move left operand to register 2
483 : LD   1, 3(4) ;  Return right operand back into register 1
484 : ADD  1, 2, 1 ;  R1 = left OR right
485 : ST   1, 3(5) ;  Store function result into stack frame
486 : LD   6, 0(5) ;  Load return address
487 : LDA  7, 0(6) ;  Return to caller
488 : LDA 4, 4(5) ; Base of callee frame
489 : LD   1, 1(5) ;  Load parameter 'p' into R1
490 : ST 1, 1(4) ; Store argument 0 in callee
491 : LD   1, 2(5) ;  Load parameter 'q' into R1
492 : ST 1, 2(4) ; Store argument 1 in callee
493 : LDA 6, 497(0) ; Return address
494 : ST 6, 0(4) ; Store return in callee frame
495 : ADD 5, 4, 0 ; Push callee frame
496 : LDA 7, 524(0) ; Call LE
497 : LD   1, 3(5) ;  Load function result
498 : LDC   2, 4(0) ;  Caller frame size
499 : SUB   5, 5, 2 ;  Pop back to caller
500 : SUB   4, 4, 2 ;  Pop back to caller
501 : LDC  2, 1(0) ;  Load 1 into R2
502 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
503 : ST   1, 3(5) ;  Store function result into stack frame
504 : LD   6, 0(5) ;  Load return address
505 : LDA  7, 0(6) ;  Return to caller
506 : LDA 4, 4(5) ; Base of callee frame
507 : LD   1, 1(5) ;  Load parameter 'p' into R1
508 : ST 1, 1(4) ; Store argument 0 in callee
509 : LD   1, 2(5) ;  Load parameter 'q' into R1
510 : ST 1, 2(4) ; Store argument 1 in callee
511 : LDA 6, 515(0) ; Return address
512 : ST 6, 0(4) ; Store return in callee frame
513 : ADD 5, 4, 0 ; Push callee frame
514 : LDA 7, 586(0) ; Call LT
515 : LD   1, 3(5) ;  Load function result
516 : LDC   2, 4(0) ;  Caller frame size
517 : SUB   5, 5, 2 ;  Pop back to caller
518 : SUB   4, 4, 2 ;  Pop back to caller
519 : LDC  2, 1(0) ;  Load 1 into R2
520 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
521 : ST   1, 3(5) ;  Store function result into stack frame
522 : LD   6, 0(5) ;  Load return address
523 : LDA  7, 0(6) ;  Return to caller
524 : LDA 4, 4(5) ; Base of callee frame
525 : LD   1, 1(5) ;  Load parameter 'p' into R1
526 : ST 1, 1(4) ; Store argument 0 in callee
527 : LD   1, 2(5) ;  Load parameter 'q' into R1
528 : ST 1, 2(4) ; Store argument 1 in callee
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return in callee frame
531 : ADD 5, 4, 0 ; Push callee frame
532 : LDA 7, 586(0) ; Call LT
533 : LD   1, 3(5) ;  Load function result
534 : LDC   2, 4(0) ;  Caller frame size
535 : SUB   5, 5, 2 ;  Pop back to caller
536 : SUB   4, 4, 2 ;  Pop back to caller
537 : ADD  2, 1, 0 ;  Move left operand to register 2
538 : LDA 4, 4(5) ; Base of callee frame
539 : LD   1, 1(5) ;  Load parameter 'p' into R1
540 : ST 1, 1(4) ; Store argument 0 in callee
541 : LD   1, 2(5) ;  Load parameter 'q' into R1
542 : ST 1, 2(4) ; Store argument 1 in callee
543 : LDA 6, 547(0) ; Return address
544 : ST 6, 0(4) ; Store return in callee frame
545 : ADD 5, 4, 0 ; Push callee frame
546 : LDA 7, 573(0) ; Call EQ
547 : LD   1, 3(5) ;  Load function result
548 : LDC   2, 4(0) ;  Caller frame size
549 : SUB   5, 5, 2 ;  Pop back to caller
550 : SUB   4, 4, 2 ;  Pop back to caller
551 : ADD  1, 2, 1 ;  R1 = left OR right
552 : ST   1, 3(5) ;  Store function result into stack frame
553 : LD   6, 0(5) ;  Load return address
554 : LDA  7, 0(6) ;  Return to caller
555 : LDA 4, 4(5) ; Base of callee frame
556 : LD   1, 1(5) ;  Load parameter 'p' into R1
557 : ST 1, 1(4) ; Store argument 0 in callee
558 : LD   1, 2(5) ;  Load parameter 'q' into R1
559 : ST 1, 2(4) ; Store argument 1 in callee
560 : LDA 6, 564(0) ; Return address
561 : ST 6, 0(4) ; Store return in callee frame
562 : ADD 5, 4, 0 ; Push callee frame
563 : LDA 7, 573(0) ; Call EQ
564 : LD   1, 3(5) ;  Load function result
565 : LDC   2, 4(0) ;  Caller frame size
566 : SUB   5, 5, 2 ;  Pop back to caller
567 : SUB   4, 4, 2 ;  Pop back to caller
568 : LDC  2, 1(0) ;  Load 1 into R2
569 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
570 : ST   1, 3(5) ;  Store function result into stack frame
571 : LD   6, 0(5) ;  Load return address
572 : LDA  7, 0(6) ;  Return to caller
573 : LD   1, 2(5) ;  Load parameter 'q' into R1
574 : ST   1, 3(4) ;  Store right operand result into return value slot
575 : LD   1, 1(5) ;  Load parameter 'p' into R1
576 : ADD  2, 1, 0 ;  Move left operand to register 2
577 : LD   1, 3(4) ;  Return right operand back into register 1
578 : SUB  1, 2, 1 ;  left - right for equality check
579 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
580 : LDC  1, 0(0) ;  false
581 : LDA  7, 1(7) ;  skip setting true
582 : LDC  1, 1(0) ;  true
583 : ST   1, 3(5) ;  Store function result into stack frame
584 : LD   6, 0(5) ;  Load return address
585 : LDA  7, 0(6) ;  Return to caller
586 : LD   1, 2(5) ;  Load parameter 'q' into R1
587 : ST   1, 3(4) ;  Store right operand result into return value slot
588 : LD   1, 1(5) ;  Load parameter 'p' into R1
589 : ADD  2, 1, 0 ;  Move left operand to register 2
590 : LD   1, 3(4) ;  Return right operand back into register 1
591 : SUB  1, 2, 1 ;  left - right for less-than check
592 : JLT  1, 2(7) ;  If R1 < 0, jump to true
593 : LDC  1, 0(0) ;  false
594 : LDA  7, 1(7) ;  skip setting true
595 : LDC  1, 1(0) ;  true
596 : ST   1, 3(5) ;  Store function result into stack frame
597 : LD   6, 0(5) ;  Load return address
598 : LDA  7, 0(6) ;  Return to caller
599 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
600 : SUB  1, 0, 1 ;  Negate value in R1
601 : ADD  2, 1, 0 ;  Move left operand to register 2
602 : LDC  1, 1(0) ;  Load integer-literal value into register 1
603 : SUB  1, 2, 1 ;  R1 = left - right
604 : ST   1, 1(5) ;  Store function result into stack frame
605 : LD   6, 0(5) ;  Load return address
606 : LDA  7, 0(6) ;  Return to caller
607 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
608 : ST   1, 1(5) ;  Store function result into stack frame
609 : LD   6, 0(5) ;  Load return address
610 : LDA  7, 0(6) ;  Return to caller
