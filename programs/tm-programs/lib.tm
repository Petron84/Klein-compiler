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
13 : ST 1, 1(4) ; Argument 0
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 189(0) ; Call SQRT
18 : LD 1, 2(5) ; Load function result
19 : LDC 2, 3(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop back to caller
21 : LDA 4, 3(5) ; Base of callee frame
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return addr in callee frame
24 : ADD 5, 4, 0 ; Push new frame
25 : LDA 7, 8(0) ; Call print
26 : LDC 2, 3(0) ; Caller frame size
27 : SUB 5, 5, 2 ; Pop frame
28 : LDA 4, 3(5) ; Base of callee frame
29 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
30 : ST 1, 1(4) ; Argument 0
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 206(0) ; Call ODD
35 : LD 1, 2(5) ; Load function result
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 2(5) ; Store result into caller’s frame
39 : LD   1, 2(5) ;  Load return value into register 1
40 : LD  6, 0(5) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
42 : LDA 4, 6(5) ; Base of callee frame
43 : LD   1, 4(5) ;  Load parameter 'mid' into R1
44 : ADD  3, 1, 0 ;  Store left operand into temporary register
45 : LD   1, 4(5) ;  Load parameter 'mid' into R1
46 : ADD  2, 3, 0 ;  Restore left operand
47 : MUL  1, 2, 1 ;  R1 = left * right
48 : ST 1, 1(4) ; Argument 0
49 : LD   1, 1(5) ;  Load parameter 'n' into R1
50 : ST 1, 2(4) ; Argument 1
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame
54 : LDA 7, 489(0) ; Call LE
55 : LD 1, 3(5) ; Load function result
56 : LDC 2, 6(0) ; Caller frame size
57 : SUB 5, 5, 2 ; Pop back to caller
58 : JEQ  1, 74(0) ;  If condition is false, jump to ELSE
59 : LDA 4, 6(5) ; Base of callee frame
60 : LD   1, 1(5) ;  Load parameter 'n' into R1
61 : ST 1, 1(4) ; Argument 0
62 : LD   1, 4(5) ;  Load parameter 'mid' into R1
63 : ST 1, 2(4) ; Argument 1
64 : LD   1, 3(5) ;  Load parameter 'high' into R1
65 : ST 1, 3(4) ; Argument 2
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 91(0) ; Call SQRTSEARCH
70 : LD 1, 4(5) ; Load function result
71 : LDC 2, 6(0) ; Caller frame size
72 : SUB 5, 5, 2 ; Pop back to caller
73 : LDA  7, 88(0) ;  Skip ELSE block
74 : LDA 4, 6(5) ; Base of callee frame
75 : LD   1, 1(5) ;  Load parameter 'n' into R1
76 : ST 1, 1(4) ; Argument 0
77 : LD   1, 2(5) ;  Load parameter 'low' into R1
78 : ST 1, 2(4) ; Argument 1
79 : LD   1, 4(5) ;  Load parameter 'mid' into R1
80 : ST 1, 3(4) ; Argument 2
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame
84 : LDA 7, 91(0) ; Call SQRTSEARCH
85 : LD 1, 4(5) ; Load function result
86 : LDC 2, 6(0) ; Caller frame size
87 : SUB 5, 5, 2 ; Pop back to caller
88 : ST   1, 5(5) ;  Store function result into stack frame
89 : LD   6, 0(5) ;  Load return address
90 : LDA  7, 0(6) ;  Return to caller
91 : LDA 4, 5(5) ; Base of callee frame
92 : LD   1, 3(5) ;  Load parameter 'high' into R1
93 : ST 1, 1(4) ; Argument 0
94 : LD   1, 2(5) ;  Load parameter 'low' into R1
95 : ADD  3, 1, 0 ;  Store left operand into temporary register
96 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
97 : ADD  2, 3, 0 ;  Restore left operand
98 : ADD  1, 2, 1 ;  R1 = left + right
99 : ST 1, 2(4) ; Argument 1
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return in callee frame
102 : ADD 5, 4, 0 ; Push callee frame
103 : LDA 7, 489(0) ; Call LE
104 : LD 1, 3(5) ; Load function result
105 : LDC 2, 5(0) ; Caller frame size
106 : SUB 5, 5, 2 ; Pop back to caller
107 : JEQ  1, 155(0) ;  If condition is false, jump to ELSE
108 : LDA 4, 5(5) ; Base of callee frame
109 : LD   1, 1(5) ;  Load parameter 'n' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDA 4, 5(5) ; Base of callee frame
112 : LD   1, 2(5) ;  Load parameter 'low' into R1
113 : ST 1, 1(4) ; Argument 0
114 : LD   1, 2(5) ;  Load parameter 'low' into R1
115 : ST 1, 2(4) ; Argument 1
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return in callee frame
118 : ADD 5, 4, 0 ; Push callee frame
119 : LDA 7, 415(0) ; Call TIMES
120 : LD 1, 3(5) ; Load function result
121 : LDC 2, 5(0) ; Caller frame size
122 : SUB 5, 5, 2 ; Pop back to caller
123 : ADD  2, 3, 0 ;  Restore left operand
124 : SUB  1, 2, 1 ;  R1 = left - right
125 : ST 1, 1(4) ; Argument 0
126 : LDA 4, 5(5) ; Base of callee frame
127 : LD   1, 3(5) ;  Load parameter 'high' into R1
128 : ST 1, 1(4) ; Argument 0
129 : LD   1, 3(5) ;  Load parameter 'high' into R1
130 : ST 1, 2(4) ; Argument 1
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame
134 : LDA 7, 415(0) ; Call TIMES
135 : LD 1, 3(5) ; Load function result
136 : LDC 2, 5(0) ; Caller frame size
137 : SUB 5, 5, 2 ; Pop back to caller
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LD   1, 1(5) ;  Load parameter 'n' into R1
140 : ADD  2, 3, 0 ;  Restore left operand
141 : SUB  1, 2, 1 ;  R1 = left - right
142 : ST 1, 2(4) ; Argument 1
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return in callee frame
145 : ADD 5, 4, 0 ; Push callee frame
146 : LDA 7, 489(0) ; Call LE
147 : LD 1, 3(5) ; Load function result
148 : LDC 2, 5(0) ; Caller frame size
149 : SUB 5, 5, 2 ; Pop back to caller
150 : JEQ  1, 153(0) ;  If condition is false, jump to ELSE
151 : LD   1, 2(5) ;  Load parameter 'low' into R1
152 : LDA  7, 154(0) ;  Skip ELSE block
153 : LD   1, 3(5) ;  Load parameter 'high' into R1
154 : LDA  7, 186(0) ;  Skip ELSE block
155 : LDA 4, 5(5) ; Base of callee frame
156 : LD   1, 1(5) ;  Load parameter 'n' into R1
157 : ST 1, 1(4) ; Argument 0
158 : LD   1, 2(5) ;  Load parameter 'low' into R1
159 : ST 1, 2(4) ; Argument 1
160 : LD   1, 3(5) ;  Load parameter 'high' into R1
161 : ST 1, 3(4) ; Argument 2
162 : LDA 4, 5(5) ; Base of callee frame
163 : LD   1, 2(5) ;  Load parameter 'low' into R1
164 : ST 1, 1(4) ; Argument 0
165 : LD   1, 3(5) ;  Load parameter 'high' into R1
166 : ST 1, 2(4) ; Argument 1
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(4) ; Store return in callee frame
169 : ADD 5, 4, 0 ; Push callee frame
170 : LDA 7, 431(0) ; Call PLUS
171 : LD 1, 3(5) ; Load function result
172 : LDC 2, 5(0) ; Caller frame size
173 : SUB 5, 5, 2 ; Pop back to caller
174 : ADD  3, 1, 0 ;  Store left operand into temporary register
175 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
176 : ADD  2, 3, 0 ;  Restore left operand
177 : DIV  1, 2, 1 ;  R1 = left / right
178 : ST 1, 4(4) ; Argument 3
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return in callee frame
181 : ADD 5, 4, 0 ; Push callee frame
182 : LDA 7, 42(0) ; Call SQRTSPLIT
183 : LD 1, 5(5) ; Load function result
184 : LDC 2, 5(0) ; Caller frame size
185 : SUB 5, 5, 2 ; Pop back to caller
186 : ST   1, 4(5) ;  Store function result into stack frame
187 : LD   6, 0(5) ;  Load return address
188 : LDA  7, 0(6) ;  Return to caller
189 : LDA 4, 3(5) ; Base of callee frame
190 : LD   1, 1(5) ;  Load parameter 'n' into R1
191 : ST 1, 1(4) ; Argument 0
192 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
193 : ST 1, 2(4) ; Argument 1
194 : LD   1, 1(5) ;  Load parameter 'n' into R1
195 : ST 1, 3(4) ; Argument 2
196 : LDA 6, 200(0) ; Return address
197 : ST 6, 0(4) ; Store return in callee frame
198 : ADD 5, 4, 0 ; Push callee frame
199 : LDA 7, 91(0) ; Call SQRTSEARCH
200 : LD 1, 4(5) ; Load function result
201 : LDC 2, 3(0) ; Caller frame size
202 : SUB 5, 5, 2 ; Pop back to caller
203 : ST   1, 2(5) ;  Store function result into stack frame
204 : LD   6, 0(5) ;  Load return address
205 : LDA  7, 0(6) ;  Return to caller
206 : LDA 4, 3(5) ; Base of callee frame
207 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
208 : ST 1, 1(4) ; Argument 0
209 : LD   1, 1(5) ;  Load parameter 'n' into R1
210 : ST 1, 2(4) ; Argument 1
211 : LDA 6, 215(0) ; Return address
212 : ST 6, 0(4) ; Store return in callee frame
213 : ADD 5, 4, 0 ; Push callee frame
214 : LDA 7, 489(0) ; Call LE
215 : LD 1, 3(5) ; Load function result
216 : LDC 2, 3(0) ; Caller frame size
217 : SUB 5, 5, 2 ; Pop back to caller
218 : JEQ  1, 258(0) ;  If condition is false, jump to ELSE
219 : LDA 4, 3(5) ; Base of callee frame
220 : LD   1, 1(5) ;  Load parameter 'n' into R1
221 : ST 1, 1(4) ; Argument 0
222 : LDA 4, 3(5) ; Base of callee frame
223 : LD   1, 1(5) ;  Load parameter 'n' into R1
224 : ST 1, 1(4) ; Argument 0
225 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
226 : ST 1, 2(4) ; Argument 1
227 : LDA 6, 231(0) ; Return address
228 : ST 6, 0(4) ; Store return in callee frame
229 : ADD 5, 4, 0 ; Push callee frame
230 : LDA 7, 407(0) ; Call DIV
231 : LD 1, 3(5) ; Load function result
232 : LDC 2, 3(0) ; Caller frame size
233 : SUB 5, 5, 2 ; Pop back to caller
234 : ADD  3, 1, 0 ;  Store left operand into temporary register
235 : LDA 4, 3(5) ; Base of callee frame
236 : LD   1, 1(5) ;  Load parameter 'n' into R1
237 : ST 1, 1(4) ; Argument 0
238 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
239 : ST 1, 2(4) ; Argument 1
240 : LDA 6, 244(0) ; Return address
241 : ST 6, 0(4) ; Store return in callee frame
242 : ADD 5, 4, 0 ; Push callee frame
243 : LDA 7, 407(0) ; Call DIV
244 : LD 1, 3(5) ; Load function result
245 : LDC 2, 3(0) ; Caller frame size
246 : SUB 5, 5, 2 ; Pop back to caller
247 : ADD  2, 3, 0 ;  Restore left operand
248 : ADD  1, 2, 1 ;  R1 = left + right
249 : ST 1, 2(4) ; Argument 1
250 : LDA 6, 254(0) ; Return address
251 : ST 6, 0(4) ; Store return in callee frame
252 : ADD 5, 4, 0 ; Push callee frame
253 : LDA 7, 455(0) ; Call GT
254 : LD 1, 3(5) ; Load function result
255 : LDC 2, 3(0) ; Caller frame size
256 : SUB 5, 5, 2 ; Pop back to caller
257 : LDA  7, 323(0) ;  Skip ELSE block
258 : LDA 4, 3(5) ; Base of callee frame
259 : LDA 4, 3(5) ; Base of callee frame
260 : LD   1, 1(5) ;  Load parameter 'n' into R1
261 : ST 1, 1(4) ; Argument 0
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(4) ; Store return in callee frame
264 : ADD 5, 4, 0 ; Push callee frame
265 : LDA 7, 402(0) ; Call NEG
266 : LD 1, 2(5) ; Load function result
267 : LDC 2, 3(0) ; Caller frame size
268 : SUB 5, 5, 2 ; Pop back to caller
269 : ST 1, 1(4) ; Argument 0
270 : LDA 4, 3(5) ; Base of callee frame
271 : LDA 4, 3(5) ; Base of callee frame
272 : LD   1, 1(5) ;  Load parameter 'n' into R1
273 : ST 1, 1(4) ; Argument 0
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame
277 : LDA 7, 402(0) ; Call NEG
278 : LD 1, 2(5) ; Load function result
279 : LDC 2, 3(0) ; Caller frame size
280 : SUB 5, 5, 2 ; Pop back to caller
281 : ST 1, 1(4) ; Argument 0
282 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
283 : ST 1, 2(4) ; Argument 1
284 : LDA 6, 288(0) ; Return address
285 : ST 6, 0(4) ; Store return in callee frame
286 : ADD 5, 4, 0 ; Push callee frame
287 : LDA 7, 407(0) ; Call DIV
288 : LD 1, 3(5) ; Load function result
289 : LDC 2, 3(0) ; Caller frame size
290 : SUB 5, 5, 2 ; Pop back to caller
291 : ADD  3, 1, 0 ;  Store left operand into temporary register
292 : LDA 4, 3(5) ; Base of callee frame
293 : LDA 4, 3(5) ; Base of callee frame
294 : LD   1, 1(5) ;  Load parameter 'n' into R1
295 : ST 1, 1(4) ; Argument 0
296 : LDA 6, 300(0) ; Return address
297 : ST 6, 0(4) ; Store return in callee frame
298 : ADD 5, 4, 0 ; Push callee frame
299 : LDA 7, 402(0) ; Call NEG
300 : LD 1, 2(5) ; Load function result
301 : LDC 2, 3(0) ; Caller frame size
302 : SUB 5, 5, 2 ; Pop back to caller
303 : ST 1, 1(4) ; Argument 0
304 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
305 : ST 1, 2(4) ; Argument 1
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return in callee frame
308 : ADD 5, 4, 0 ; Push callee frame
309 : LDA 7, 407(0) ; Call DIV
310 : LD 1, 3(5) ; Load function result
311 : LDC 2, 3(0) ; Caller frame size
312 : SUB 5, 5, 2 ; Pop back to caller
313 : ADD  2, 3, 0 ;  Restore left operand
314 : ADD  1, 2, 1 ;  R1 = left + right
315 : ST 1, 2(4) ; Argument 1
316 : LDA 6, 320(0) ; Return address
317 : ST 6, 0(4) ; Store return in callee frame
318 : ADD 5, 4, 0 ; Push callee frame
319 : LDA 7, 455(0) ; Call GT
320 : LD 1, 3(5) ; Load function result
321 : LDC 2, 3(0) ; Caller frame size
322 : SUB 5, 5, 2 ; Pop back to caller
323 : ST   1, 2(5) ;  Store function result into stack frame
324 : LD   6, 0(5) ;  Load return address
325 : LDA  7, 0(6) ;  Return to caller
326 : LD   1, 2(5) ;  Load parameter 'n' into R1
327 : ADD  3, 1, 0 ;  Store left operand into temporary register
328 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
329 : ADD  2, 3, 0 ;  Restore left operand
330 : SUB  1, 2, 1 ;  left - right for equality check
331 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
332 : LDC  1, 0(0) ;  false
333 : LDA  7, 1(7) ;  skip setting true
334 : LDC  1, 1(0) ;  true
335 : JEQ  1, 338(0) ;  If condition is false, jump to ELSE
336 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
337 : LDA  7, 358(0) ;  Skip ELSE block
338 : LD   1, 1(5) ;  Load parameter 'm' into R1
339 : ADD  3, 1, 0 ;  Store left operand into temporary register
340 : LDA 4, 4(5) ; Base of callee frame
341 : LD   1, 1(5) ;  Load parameter 'm' into R1
342 : ST 1, 1(4) ; Argument 0
343 : LD   1, 2(5) ;  Load parameter 'n' into R1
344 : ADD  3, 1, 0 ;  Store left operand into temporary register
345 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
346 : ADD  2, 3, 0 ;  Restore left operand
347 : SUB  1, 2, 1 ;  R1 = left - right
348 : ST 1, 2(4) ; Argument 1
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 326(0) ; Call EXP
353 : LD 1, 3(5) ; Load function result
354 : LDC 2, 4(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop back to caller
356 : ADD  2, 3, 0 ;  Restore left operand
357 : MUL  1, 2, 1 ;  R1 = left * right
358 : ST   1, 3(5) ;  Store function result into stack frame
359 : LD   6, 0(5) ;  Load return address
360 : LDA  7, 0(6) ;  Return to caller
361 : LD   1, 1(5) ;  Load parameter 'm' into R1
362 : ADD  3, 1, 0 ;  Store left operand into temporary register
363 : LD   1, 1(5) ;  Load parameter 'm' into R1
364 : ADD  3, 1, 0 ;  Store left operand into temporary register
365 : LD   1, 2(5) ;  Load parameter 'n' into R1
366 : ADD  2, 3, 0 ;  Restore left operand
367 : DIV  1, 2, 1 ;  R1 = left / right
368 : ADD  3, 1, 0 ;  Store left operand into temporary register
369 : LD   1, 2(5) ;  Load parameter 'n' into R1
370 : ADD  2, 3, 0 ;  Restore left operand
371 : MUL  1, 2, 1 ;  R1 = left * right
372 : ADD  2, 3, 0 ;  Restore left operand
373 : SUB  1, 2, 1 ;  R1 = left - right
374 : ST   1, 3(5) ;  Store function result into stack frame
375 : LD   6, 0(5) ;  Load return address
376 : LDA  7, 0(6) ;  Return to caller
377 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
378 : ADD  3, 1, 0 ;  Store left operand into temporary register
379 : LD   1, 1(5) ;  Load parameter 'n' into R1
380 : ADD  2, 3, 0 ;  Restore left operand
381 : SUB  1, 2, 1 ;  left - right for less-than check
382 : JLT  1, 2(7) ;  If R1 < 0, jump to true
383 : LDC  1, 0(0) ;  false
384 : LDA  7, 1(7) ;  skip setting true
385 : LDC  1, 1(0) ;  true
386 : JEQ  1, 389(0) ;  If condition is false, jump to ELSE
387 : LD   1, 1(5) ;  Load parameter 'n' into R1
388 : LDA  7, 399(0) ;  Skip ELSE block
389 : LDA 4, 3(5) ; Base of callee frame
390 : LD   1, 1(5) ;  Load parameter 'n' into R1
391 : ST 1, 1(4) ; Argument 0
392 : LDA 6, 396(0) ; Return address
393 : ST 6, 0(4) ; Store return in callee frame
394 : ADD 5, 4, 0 ; Push callee frame
395 : LDA 7, 402(0) ; Call NEG
396 : LD 1, 2(5) ; Load function result
397 : LDC 2, 3(0) ; Caller frame size
398 : SUB 5, 5, 2 ; Pop back to caller
399 : ST   1, 2(5) ;  Store function result into stack frame
400 : LD   6, 0(5) ;  Load return address
401 : LDA  7, 0(6) ;  Return to caller
402 : LD   1, 1(5) ;  Load parameter 'n' into R1
403 : SUB  1, 0, 1 ;  Negate value in R1
404 : ST   1, 2(5) ;  Store function result into stack frame
405 : LD   6, 0(5) ;  Load return address
406 : LDA  7, 0(6) ;  Return to caller
407 : LD   1, 1(5) ;  Load parameter 'p' into R1
408 : ADD  3, 1, 0 ;  Store left operand into temporary register
409 : LD   1, 2(5) ;  Load parameter 'q' into R1
410 : ADD  2, 3, 0 ;  Restore left operand
411 : DIV  1, 2, 1 ;  R1 = left / right
412 : ST   1, 3(5) ;  Store function result into stack frame
413 : LD   6, 0(5) ;  Load return address
414 : LDA  7, 0(6) ;  Return to caller
415 : LD   1, 1(5) ;  Load parameter 'p' into R1
416 : ADD  3, 1, 0 ;  Store left operand into temporary register
417 : LD   1, 2(5) ;  Load parameter 'q' into R1
418 : ADD  2, 3, 0 ;  Restore left operand
419 : MUL  1, 2, 1 ;  R1 = left * right
420 : ST   1, 3(5) ;  Store function result into stack frame
421 : LD   6, 0(5) ;  Load return address
422 : LDA  7, 0(6) ;  Return to caller
423 : LD   1, 1(5) ;  Load parameter 'p' into R1
424 : ADD  3, 1, 0 ;  Store left operand into temporary register
425 : LD   1, 2(5) ;  Load parameter 'q' into R1
426 : ADD  2, 3, 0 ;  Restore left operand
427 : SUB  1, 2, 1 ;  R1 = left - right
428 : ST   1, 3(5) ;  Store function result into stack frame
429 : LD   6, 0(5) ;  Load return address
430 : LDA  7, 0(6) ;  Return to caller
431 : LD   1, 1(5) ;  Load parameter 'p' into R1
432 : ADD  3, 1, 0 ;  Store left operand into temporary register
433 : LD   1, 2(5) ;  Load parameter 'q' into R1
434 : ADD  2, 3, 0 ;  Restore left operand
435 : ADD  1, 2, 1 ;  R1 = left + right
436 : ST   1, 3(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 1(5) ;  Load parameter 'p' into R1
440 : JEQ  1, 443(0) ;  If condition is false, jump to ELSE
441 : LD   1, 2(5) ;  Load parameter 'q' into R1
442 : LDA  7, 444(0) ;  Skip ELSE block
443 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
444 : ST   1, 3(5) ;  Store function result into stack frame
445 : LD   6, 0(5) ;  Load return address
446 : LDA  7, 0(6) ;  Return to caller
447 : LD   1, 1(5) ;  Load parameter 'p' into R1
448 : ADD  3, 1, 0 ;  Store left operand into temporary register
449 : LD   1, 2(5) ;  Load parameter 'q' into R1
450 : ADD  2, 3, 0 ;  Restore left operand
451 : ADD  1, 2, 1 ;  R1 = left OR right
452 : ST   1, 3(5) ;  Store function result into stack frame
453 : LD   6, 0(5) ;  Load return address
454 : LDA  7, 0(6) ;  Return to caller
455 : LDA 4, 4(5) ; Base of callee frame
456 : LD   1, 1(5) ;  Load parameter 'p' into R1
457 : ST 1, 1(4) ; Argument 0
458 : LD   1, 2(5) ;  Load parameter 'q' into R1
459 : ST 1, 2(4) ; Argument 1
460 : LDA 6, 464(0) ; Return address
461 : ST 6, 0(4) ; Store return in callee frame
462 : ADD 5, 4, 0 ; Push callee frame
463 : LDA 7, 489(0) ; Call LE
464 : LD 1, 3(5) ; Load function result
465 : LDC 2, 4(0) ; Caller frame size
466 : SUB 5, 5, 2 ; Pop back to caller
467 : LDC  2, 1(0) ;  Load 1 into R2
468 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
469 : ST   1, 3(5) ;  Store function result into stack frame
470 : LD   6, 0(5) ;  Load return address
471 : LDA  7, 0(6) ;  Return to caller
472 : LDA 4, 4(5) ; Base of callee frame
473 : LD   1, 1(5) ;  Load parameter 'p' into R1
474 : ST 1, 1(4) ; Argument 0
475 : LD   1, 2(5) ;  Load parameter 'q' into R1
476 : ST 1, 2(4) ; Argument 1
477 : LDA 6, 481(0) ; Return address
478 : ST 6, 0(4) ; Store return in callee frame
479 : ADD 5, 4, 0 ; Push callee frame
480 : LDA 7, 548(0) ; Call LT
481 : LD 1, 3(5) ; Load function result
482 : LDC 2, 4(0) ; Caller frame size
483 : SUB 5, 5, 2 ; Pop back to caller
484 : LDC  2, 1(0) ;  Load 1 into R2
485 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
486 : ST   1, 3(5) ;  Store function result into stack frame
487 : LD   6, 0(5) ;  Load return address
488 : LDA  7, 0(6) ;  Return to caller
489 : LDA 4, 4(5) ; Base of callee frame
490 : LD   1, 1(5) ;  Load parameter 'p' into R1
491 : ST 1, 1(4) ; Argument 0
492 : LD   1, 2(5) ;  Load parameter 'q' into R1
493 : ST 1, 2(4) ; Argument 1
494 : LDA 6, 498(0) ; Return address
495 : ST 6, 0(4) ; Store return in callee frame
496 : ADD 5, 4, 0 ; Push callee frame
497 : LDA 7, 548(0) ; Call LT
498 : LD 1, 3(5) ; Load function result
499 : LDC 2, 4(0) ; Caller frame size
500 : SUB 5, 5, 2 ; Pop back to caller
501 : ADD  3, 1, 0 ;  Store left operand into temporary register
502 : LDA 4, 4(5) ; Base of callee frame
503 : LD   1, 1(5) ;  Load parameter 'p' into R1
504 : ST 1, 1(4) ; Argument 0
505 : LD   1, 2(5) ;  Load parameter 'q' into R1
506 : ST 1, 2(4) ; Argument 1
507 : LDA 6, 511(0) ; Return address
508 : ST 6, 0(4) ; Store return in callee frame
509 : ADD 5, 4, 0 ; Push callee frame
510 : LDA 7, 536(0) ; Call EQ
511 : LD 1, 3(5) ; Load function result
512 : LDC 2, 4(0) ; Caller frame size
513 : SUB 5, 5, 2 ; Pop back to caller
514 : ADD  2, 3, 0 ;  Restore left operand
515 : ADD  1, 2, 1 ;  R1 = left OR right
516 : ST   1, 3(5) ;  Store function result into stack frame
517 : LD   6, 0(5) ;  Load return address
518 : LDA  7, 0(6) ;  Return to caller
519 : LDA 4, 4(5) ; Base of callee frame
520 : LD   1, 1(5) ;  Load parameter 'p' into R1
521 : ST 1, 1(4) ; Argument 0
522 : LD   1, 2(5) ;  Load parameter 'q' into R1
523 : ST 1, 2(4) ; Argument 1
524 : LDA 6, 528(0) ; Return address
525 : ST 6, 0(4) ; Store return in callee frame
526 : ADD 5, 4, 0 ; Push callee frame
527 : LDA 7, 536(0) ; Call EQ
528 : LD 1, 3(5) ; Load function result
529 : LDC 2, 4(0) ; Caller frame size
530 : SUB 5, 5, 2 ; Pop back to caller
531 : LDC  2, 1(0) ;  Load 1 into R2
532 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
533 : ST   1, 3(5) ;  Store function result into stack frame
534 : LD   6, 0(5) ;  Load return address
535 : LDA  7, 0(6) ;  Return to caller
536 : LD   1, 1(5) ;  Load parameter 'p' into R1
537 : ADD  3, 1, 0 ;  Store left operand into temporary register
538 : LD   1, 2(5) ;  Load parameter 'q' into R1
539 : ADD  2, 3, 0 ;  Restore left operand
540 : SUB  1, 2, 1 ;  left - right for equality check
541 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
542 : LDC  1, 0(0) ;  false
543 : LDA  7, 1(7) ;  skip setting true
544 : LDC  1, 1(0) ;  true
545 : ST   1, 3(5) ;  Store function result into stack frame
546 : LD   6, 0(5) ;  Load return address
547 : LDA  7, 0(6) ;  Return to caller
548 : LD   1, 1(5) ;  Load parameter 'p' into R1
549 : ADD  3, 1, 0 ;  Store left operand into temporary register
550 : LD   1, 2(5) ;  Load parameter 'q' into R1
551 : ADD  2, 3, 0 ;  Restore left operand
552 : SUB  1, 2, 1 ;  left - right for less-than check
553 : JLT  1, 2(7) ;  If R1 < 0, jump to true
554 : LDC  1, 0(0) ;  false
555 : LDA  7, 1(7) ;  skip setting true
556 : LDC  1, 1(0) ;  true
557 : ST   1, 3(5) ;  Store function result into stack frame
558 : LD   6, 0(5) ;  Load return address
559 : LDA  7, 0(6) ;  Return to caller
560 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
561 : SUB  1, 0, 1 ;  Negate value in R1
562 : ADD  3, 1, 0 ;  Store left operand into temporary register
563 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
564 : ADD  2, 3, 0 ;  Restore left operand
565 : SUB  1, 2, 1 ;  R1 = left - right
566 : ST   1, 1(5) ;  Store function result into stack frame
567 : LD   6, 0(5) ;  Load return address
568 : LDA  7, 0(6) ;  Return to caller
569 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
570 : ST   1, 1(5) ;  Store function result into stack frame
571 : LD   6, 0(5) ;  Load return address
572 : LDA  7, 0(6) ;  Return to caller
