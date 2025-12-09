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
54 : LDA 7, 492(0) ; Call LE
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
103 : LDA 7, 492(0) ; Call LE
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
119 : LDA 7, 418(0) ; Call TIMES
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
134 : LDA 7, 418(0) ; Call TIMES
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
146 : LDA 7, 492(0) ; Call LE
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
170 : LDA 7, 434(0) ; Call PLUS
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
214 : LDA 7, 492(0) ; Call LE
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
230 : LDA 7, 410(0) ; Call DIV
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
243 : LDA 7, 410(0) ; Call DIV
244 : LD 1, 3(5) ; Load function result
245 : LDC 2, 3(0) ; Caller frame size
246 : SUB 5, 5, 2 ; Pop back to caller
247 : ADD  2, 3, 0 ;  Restore left operand
248 : ADD  1, 2, 1 ;  R1 = left + right
249 : ST 1, 2(4) ; Argument 1
250 : LDA 6, 254(0) ; Return address
251 : ST 6, 0(4) ; Store return in callee frame
252 : ADD 5, 4, 0 ; Push callee frame
253 : LDA 7, 458(0) ; Call GT
254 : LD 1, 3(5) ; Load function result
255 : LDC 2, 3(0) ; Caller frame size
256 : SUB 5, 5, 2 ; Pop back to caller
257 : LDA  7, 326(0) ;  Skip ELSE block
258 : LDA 4, 3(5) ; Base of callee frame
259 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
260 : LDA 4, 3(5) ; Base of callee frame
261 : LD   1, 1(5) ;  Load parameter 'n' into R1
262 : ST 1, 1(4) ; Argument 0
263 : LDA 6, 267(0) ; Return address
264 : ST 6, 0(4) ; Store return in callee frame
265 : ADD 5, 4, 0 ; Push callee frame
266 : LDA 7, 405(0) ; Call NEG
267 : LD 1, 2(5) ; Load function result
268 : LDC 2, 3(0) ; Caller frame size
269 : SUB 5, 5, 2 ; Pop back to caller
270 : ST 1, 1(4) ; Argument 0
271 : LDA 4, 3(5) ; Base of callee frame
272 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
273 : LDA 4, 3(5) ; Base of callee frame
274 : LD   1, 1(5) ;  Load parameter 'n' into R1
275 : ST 1, 1(4) ; Argument 0
276 : LDA 6, 280(0) ; Return address
277 : ST 6, 0(4) ; Store return in callee frame
278 : ADD 5, 4, 0 ; Push callee frame
279 : LDA 7, 405(0) ; Call NEG
280 : LD 1, 2(5) ; Load function result
281 : LDC 2, 3(0) ; Caller frame size
282 : SUB 5, 5, 2 ; Pop back to caller
283 : ST 1, 1(4) ; Argument 0
284 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
285 : ST 1, 2(4) ; Argument 1
286 : LDA 6, 290(0) ; Return address
287 : ST 6, 0(4) ; Store return in callee frame
288 : ADD 5, 4, 0 ; Push callee frame
289 : LDA 7, 410(0) ; Call DIV
290 : LD 1, 3(5) ; Load function result
291 : LDC 2, 3(0) ; Caller frame size
292 : SUB 5, 5, 2 ; Pop back to caller
293 : ADD  3, 1, 0 ;  Store left operand into temporary register
294 : LDA 4, 3(5) ; Base of callee frame
295 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
296 : LDA 4, 3(5) ; Base of callee frame
297 : LD   1, 1(5) ;  Load parameter 'n' into R1
298 : ST 1, 1(4) ; Argument 0
299 : LDA 6, 303(0) ; Return address
300 : ST 6, 0(4) ; Store return in callee frame
301 : ADD 5, 4, 0 ; Push callee frame
302 : LDA 7, 405(0) ; Call NEG
303 : LD 1, 2(5) ; Load function result
304 : LDC 2, 3(0) ; Caller frame size
305 : SUB 5, 5, 2 ; Pop back to caller
306 : ST 1, 1(4) ; Argument 0
307 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
308 : ST 1, 2(4) ; Argument 1
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame
312 : LDA 7, 410(0) ; Call DIV
313 : LD 1, 3(5) ; Load function result
314 : LDC 2, 3(0) ; Caller frame size
315 : SUB 5, 5, 2 ; Pop back to caller
316 : ADD  2, 3, 0 ;  Restore left operand
317 : ADD  1, 2, 1 ;  R1 = left + right
318 : ST 1, 2(4) ; Argument 1
319 : LDA 6, 323(0) ; Return address
320 : ST 6, 0(4) ; Store return in callee frame
321 : ADD 5, 4, 0 ; Push callee frame
322 : LDA 7, 458(0) ; Call GT
323 : LD 1, 3(5) ; Load function result
324 : LDC 2, 3(0) ; Caller frame size
325 : SUB 5, 5, 2 ; Pop back to caller
326 : ST   1, 2(5) ;  Store function result into stack frame
327 : LD   6, 0(5) ;  Load return address
328 : LDA  7, 0(6) ;  Return to caller
329 : LD   1, 2(5) ;  Load parameter 'n' into R1
330 : ADD  3, 1, 0 ;  Store left operand into temporary register
331 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
332 : ADD  2, 3, 0 ;  Restore left operand
333 : SUB  1, 2, 1 ;  left - right for equality check
334 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
335 : LDC  1, 0(0) ;  false
336 : LDA  7, 1(7) ;  skip setting true
337 : LDC  1, 1(0) ;  true
338 : JEQ  1, 341(0) ;  If condition is false, jump to ELSE
339 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
340 : LDA  7, 361(0) ;  Skip ELSE block
341 : LD   1, 1(5) ;  Load parameter 'm' into R1
342 : ADD  3, 1, 0 ;  Store left operand into temporary register
343 : LDA 4, 4(5) ; Base of callee frame
344 : LD   1, 1(5) ;  Load parameter 'm' into R1
345 : ST 1, 1(4) ; Argument 0
346 : LD   1, 2(5) ;  Load parameter 'n' into R1
347 : ADD  3, 1, 0 ;  Store left operand into temporary register
348 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
349 : ADD  2, 3, 0 ;  Restore left operand
350 : SUB  1, 2, 1 ;  R1 = left - right
351 : ST 1, 2(4) ; Argument 1
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return in callee frame
354 : ADD 5, 4, 0 ; Push callee frame
355 : LDA 7, 329(0) ; Call EXP
356 : LD 1, 3(5) ; Load function result
357 : LDC 2, 4(0) ; Caller frame size
358 : SUB 5, 5, 2 ; Pop back to caller
359 : ADD  2, 3, 0 ;  Restore left operand
360 : MUL  1, 2, 1 ;  R1 = left * right
361 : ST   1, 3(5) ;  Store function result into stack frame
362 : LD   6, 0(5) ;  Load return address
363 : LDA  7, 0(6) ;  Return to caller
364 : LD   1, 1(5) ;  Load parameter 'm' into R1
365 : ADD  3, 1, 0 ;  Store left operand into temporary register
366 : LD   1, 1(5) ;  Load parameter 'm' into R1
367 : ADD  3, 1, 0 ;  Store left operand into temporary register
368 : LD   1, 2(5) ;  Load parameter 'n' into R1
369 : ADD  2, 3, 0 ;  Restore left operand
370 : DIV  1, 2, 1 ;  R1 = left / right
371 : ADD  3, 1, 0 ;  Store left operand into temporary register
372 : LD   1, 2(5) ;  Load parameter 'n' into R1
373 : ADD  2, 3, 0 ;  Restore left operand
374 : MUL  1, 2, 1 ;  R1 = left * right
375 : ADD  2, 3, 0 ;  Restore left operand
376 : SUB  1, 2, 1 ;  R1 = left - right
377 : ST   1, 3(5) ;  Store function result into stack frame
378 : LD   6, 0(5) ;  Load return address
379 : LDA  7, 0(6) ;  Return to caller
380 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
381 : ADD  3, 1, 0 ;  Store left operand into temporary register
382 : LD   1, 1(5) ;  Load parameter 'n' into R1
383 : ADD  2, 3, 0 ;  Restore left operand
384 : SUB  1, 2, 1 ;  left - right for less-than check
385 : JLT  1, 2(7) ;  If R1 < 0, jump to true
386 : LDC  1, 0(0) ;  false
387 : LDA  7, 1(7) ;  skip setting true
388 : LDC  1, 1(0) ;  true
389 : JEQ  1, 392(0) ;  If condition is false, jump to ELSE
390 : LD   1, 1(5) ;  Load parameter 'n' into R1
391 : LDA  7, 402(0) ;  Skip ELSE block
392 : LDA 4, 3(5) ; Base of callee frame
393 : LD   1, 1(5) ;  Load parameter 'n' into R1
394 : ST 1, 1(4) ; Argument 0
395 : LDA 6, 399(0) ; Return address
396 : ST 6, 0(4) ; Store return in callee frame
397 : ADD 5, 4, 0 ; Push callee frame
398 : LDA 7, 405(0) ; Call NEG
399 : LD 1, 2(5) ; Load function result
400 : LDC 2, 3(0) ; Caller frame size
401 : SUB 5, 5, 2 ; Pop back to caller
402 : ST   1, 2(5) ;  Store function result into stack frame
403 : LD   6, 0(5) ;  Load return address
404 : LDA  7, 0(6) ;  Return to caller
405 : LD   1, 1(5) ;  Load parameter 'n' into R1
406 : SUB  1, 0, 1 ;  Negate value in R1
407 : ST   1, 2(5) ;  Store function result into stack frame
408 : LD   6, 0(5) ;  Load return address
409 : LDA  7, 0(6) ;  Return to caller
410 : LD   1, 1(5) ;  Load parameter 'p' into R1
411 : ADD  3, 1, 0 ;  Store left operand into temporary register
412 : LD   1, 2(5) ;  Load parameter 'q' into R1
413 : ADD  2, 3, 0 ;  Restore left operand
414 : DIV  1, 2, 1 ;  R1 = left / right
415 : ST   1, 3(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 1(5) ;  Load parameter 'p' into R1
419 : ADD  3, 1, 0 ;  Store left operand into temporary register
420 : LD   1, 2(5) ;  Load parameter 'q' into R1
421 : ADD  2, 3, 0 ;  Restore left operand
422 : MUL  1, 2, 1 ;  R1 = left * right
423 : ST   1, 3(5) ;  Store function result into stack frame
424 : LD   6, 0(5) ;  Load return address
425 : LDA  7, 0(6) ;  Return to caller
426 : LD   1, 1(5) ;  Load parameter 'p' into R1
427 : ADD  3, 1, 0 ;  Store left operand into temporary register
428 : LD   1, 2(5) ;  Load parameter 'q' into R1
429 : ADD  2, 3, 0 ;  Restore left operand
430 : SUB  1, 2, 1 ;  R1 = left - right
431 : ST   1, 3(5) ;  Store function result into stack frame
432 : LD   6, 0(5) ;  Load return address
433 : LDA  7, 0(6) ;  Return to caller
434 : LD   1, 1(5) ;  Load parameter 'p' into R1
435 : ADD  3, 1, 0 ;  Store left operand into temporary register
436 : LD   1, 2(5) ;  Load parameter 'q' into R1
437 : ADD  2, 3, 0 ;  Restore left operand
438 : ADD  1, 2, 1 ;  R1 = left + right
439 : ST   1, 3(5) ;  Store function result into stack frame
440 : LD   6, 0(5) ;  Load return address
441 : LDA  7, 0(6) ;  Return to caller
442 : LD   1, 1(5) ;  Load parameter 'p' into R1
443 : JEQ  1, 446(0) ;  If condition is false, jump to ELSE
444 : LD   1, 2(5) ;  Load parameter 'q' into R1
445 : LDA  7, 447(0) ;  Skip ELSE block
446 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
447 : ST   1, 3(5) ;  Store function result into stack frame
448 : LD   6, 0(5) ;  Load return address
449 : LDA  7, 0(6) ;  Return to caller
450 : LD   1, 1(5) ;  Load parameter 'p' into R1
451 : ADD  3, 1, 0 ;  Store left operand into temporary register
452 : LD   1, 2(5) ;  Load parameter 'q' into R1
453 : ADD  2, 3, 0 ;  Restore left operand
454 : ADD  1, 2, 1 ;  R1 = left OR right
455 : ST   1, 3(5) ;  Store function result into stack frame
456 : LD   6, 0(5) ;  Load return address
457 : LDA  7, 0(6) ;  Return to caller
458 : LDA 4, 4(5) ; Base of callee frame
459 : LD   1, 1(5) ;  Load parameter 'p' into R1
460 : ST 1, 1(4) ; Argument 0
461 : LD   1, 2(5) ;  Load parameter 'q' into R1
462 : ST 1, 2(4) ; Argument 1
463 : LDA 6, 467(0) ; Return address
464 : ST 6, 0(4) ; Store return in callee frame
465 : ADD 5, 4, 0 ; Push callee frame
466 : LDA 7, 492(0) ; Call LE
467 : LD 1, 3(5) ; Load function result
468 : LDC 2, 4(0) ; Caller frame size
469 : SUB 5, 5, 2 ; Pop back to caller
470 : LDC  2, 1(0) ;  Load 1 into R2
471 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
472 : ST   1, 3(5) ;  Store function result into stack frame
473 : LD   6, 0(5) ;  Load return address
474 : LDA  7, 0(6) ;  Return to caller
475 : LDA 4, 4(5) ; Base of callee frame
476 : LD   1, 1(5) ;  Load parameter 'p' into R1
477 : ST 1, 1(4) ; Argument 0
478 : LD   1, 2(5) ;  Load parameter 'q' into R1
479 : ST 1, 2(4) ; Argument 1
480 : LDA 6, 484(0) ; Return address
481 : ST 6, 0(4) ; Store return in callee frame
482 : ADD 5, 4, 0 ; Push callee frame
483 : LDA 7, 551(0) ; Call LT
484 : LD 1, 3(5) ; Load function result
485 : LDC 2, 4(0) ; Caller frame size
486 : SUB 5, 5, 2 ; Pop back to caller
487 : LDC  2, 1(0) ;  Load 1 into R2
488 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
489 : ST   1, 3(5) ;  Store function result into stack frame
490 : LD   6, 0(5) ;  Load return address
491 : LDA  7, 0(6) ;  Return to caller
492 : LDA 4, 4(5) ; Base of callee frame
493 : LD   1, 1(5) ;  Load parameter 'p' into R1
494 : ST 1, 1(4) ; Argument 0
495 : LD   1, 2(5) ;  Load parameter 'q' into R1
496 : ST 1, 2(4) ; Argument 1
497 : LDA 6, 501(0) ; Return address
498 : ST 6, 0(4) ; Store return in callee frame
499 : ADD 5, 4, 0 ; Push callee frame
500 : LDA 7, 551(0) ; Call LT
501 : LD 1, 3(5) ; Load function result
502 : LDC 2, 4(0) ; Caller frame size
503 : SUB 5, 5, 2 ; Pop back to caller
504 : ADD  3, 1, 0 ;  Store left operand into temporary register
505 : LDA 4, 4(5) ; Base of callee frame
506 : LD   1, 1(5) ;  Load parameter 'p' into R1
507 : ST 1, 1(4) ; Argument 0
508 : LD   1, 2(5) ;  Load parameter 'q' into R1
509 : ST 1, 2(4) ; Argument 1
510 : LDA 6, 514(0) ; Return address
511 : ST 6, 0(4) ; Store return in callee frame
512 : ADD 5, 4, 0 ; Push callee frame
513 : LDA 7, 539(0) ; Call EQ
514 : LD 1, 3(5) ; Load function result
515 : LDC 2, 4(0) ; Caller frame size
516 : SUB 5, 5, 2 ; Pop back to caller
517 : ADD  2, 3, 0 ;  Restore left operand
518 : ADD  1, 2, 1 ;  R1 = left OR right
519 : ST   1, 3(5) ;  Store function result into stack frame
520 : LD   6, 0(5) ;  Load return address
521 : LDA  7, 0(6) ;  Return to caller
522 : LDA 4, 4(5) ; Base of callee frame
523 : LD   1, 1(5) ;  Load parameter 'p' into R1
524 : ST 1, 1(4) ; Argument 0
525 : LD   1, 2(5) ;  Load parameter 'q' into R1
526 : ST 1, 2(4) ; Argument 1
527 : LDA 6, 531(0) ; Return address
528 : ST 6, 0(4) ; Store return in callee frame
529 : ADD 5, 4, 0 ; Push callee frame
530 : LDA 7, 539(0) ; Call EQ
531 : LD 1, 3(5) ; Load function result
532 : LDC 2, 4(0) ; Caller frame size
533 : SUB 5, 5, 2 ; Pop back to caller
534 : LDC  2, 1(0) ;  Load 1 into R2
535 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
536 : ST   1, 3(5) ;  Store function result into stack frame
537 : LD   6, 0(5) ;  Load return address
538 : LDA  7, 0(6) ;  Return to caller
539 : LD   1, 1(5) ;  Load parameter 'p' into R1
540 : ADD  3, 1, 0 ;  Store left operand into temporary register
541 : LD   1, 2(5) ;  Load parameter 'q' into R1
542 : ADD  2, 3, 0 ;  Restore left operand
543 : SUB  1, 2, 1 ;  left - right for equality check
544 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
545 : LDC  1, 0(0) ;  false
546 : LDA  7, 1(7) ;  skip setting true
547 : LDC  1, 1(0) ;  true
548 : ST   1, 3(5) ;  Store function result into stack frame
549 : LD   6, 0(5) ;  Load return address
550 : LDA  7, 0(6) ;  Return to caller
551 : LD   1, 1(5) ;  Load parameter 'p' into R1
552 : ADD  3, 1, 0 ;  Store left operand into temporary register
553 : LD   1, 2(5) ;  Load parameter 'q' into R1
554 : ADD  2, 3, 0 ;  Restore left operand
555 : SUB  1, 2, 1 ;  left - right for less-than check
556 : JLT  1, 2(7) ;  If R1 < 0, jump to true
557 : LDC  1, 0(0) ;  false
558 : LDA  7, 1(7) ;  skip setting true
559 : LDC  1, 1(0) ;  true
560 : ST   1, 3(5) ;  Store function result into stack frame
561 : LD   6, 0(5) ;  Load return address
562 : LDA  7, 0(6) ;  Return to caller
563 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
564 : SUB  1, 0, 1 ;  Negate value in R1
565 : ADD  3, 1, 0 ;  Store left operand into temporary register
566 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
567 : ADD  2, 3, 0 ;  Restore left operand
568 : SUB  1, 2, 1 ;  R1 = left - right
569 : ST   1, 1(5) ;  Store function result into stack frame
570 : LD   6, 0(5) ;  Load return address
571 : LDA  7, 0(6) ;  Return to caller
572 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
573 : ST   1, 1(5) ;  Store function result into stack frame
574 : LD   6, 0(5) ;  Load return address
575 : LDA  7, 0(6) ;  Return to caller
