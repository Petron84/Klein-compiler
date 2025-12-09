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
12 : LDA 4, 3(5) ; Base of callee frame
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ST 1, 1(4) ; Argument 0
15 : LD   1, 1(5) ;  Load parameter 'length' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : DIV  1, 2, 1 ;  R1 = left / right
20 : ADD  3, 1, 0 ;  Store left operand into temporary register
21 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
22 : ADD  2, 3, 0 ;  Restore left operand
23 : SUB  1, 2, 1 ;  R1 = left - right
24 : ST 1, 2(4) ; Argument 1
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 778(0) ; Call EXP
29 : LD 1, 3(5) ; Load function result
30 : LDC 2, 3(0) ; Caller frame size
31 : SUB 5, 5, 2 ; Pop back to caller
32 : ST 1, 1(4) ; Argument 0
33 : LD   1, 1(5) ;  Load parameter 'length' into R1
34 : ADD  3, 1, 0 ;  Store left operand into temporary register
35 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
36 : ADD  2, 3, 0 ;  Restore left operand
37 : DIV  1, 2, 1 ;  R1 = left / right
38 : ST 1, 2(4) ; Argument 1
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return in callee frame
41 : ADD 5, 4, 0 ; Push callee frame
42 : LDA 7, 50(0) ; Call createLoop
43 : LD 1, 3(5) ; Load function result
44 : LDC 2, 3(0) ; Caller frame size
45 : SUB 5, 5, 2 ; Pop back to caller
46 : ST 1, 2(5) ; Store result into caller’s frame
47 : LD   1, 2(5) ;  Load return value into register 1
48 : LD  6, 0(5) ;  Load return address for main function into register 6
49 : LDA  7, 0(6) ;  Jump to return address of main function
50 : LDA 4, 4(5) ; Base of callee frame
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : ST 1, 1(4) ; Argument 0
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : ST 1, 2(4) ; Argument 1
55 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LD   1, 1(5) ;  Load parameter 'a' into R1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : MUL  1, 2, 1 ;  R1 = left * right
60 : ST 1, 3(4) ; Argument 2
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame
64 : LDA 7, 71(0) ; Call aLoop
65 : LD 1, 4(5) ; Load function result
66 : LDC 2, 4(0) ; Caller frame size
67 : SUB 5, 5, 2 ; Pop back to caller
68 : ST   1, 3(5) ;  Store function result into stack frame
69 : LD   6, 0(5) ;  Load return address
70 : LDA  7, 0(6) ;  Return to caller
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  3, 1, 0 ;  Store left operand into temporary register
73 : LD   1, 3(5) ;  Load parameter 'upper' into R1
74 : ADD  2, 3, 0 ;  Restore left operand
75 : SUB  1, 2, 1 ;  left - right for less-than check
76 : JLT  1, 2(7) ;  If R1 < 0, jump to true
77 : LDC  1, 0(0) ;  false
78 : LDA  7, 1(7) ;  skip setting true
79 : LDC  1, 1(0) ;  true
80 : JEQ  1, 140(0) ;  If condition is false, jump to ELSE
81 : LDA 4, 5(5) ; Base of callee frame
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ST 1, 1(4) ; Argument 0
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ST 1, 2(4) ; Argument 1
86 : LD   1, 3(5) ;  Load parameter 'upper' into R1
87 : ST 1, 3(4) ; Argument 2
88 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LDA 4, 5(5) ; Base of callee frame
91 : LD   1, 1(5) ;  Load parameter 'a' into R1
92 : ST 1, 1(4) ; Argument 0
93 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
94 : ST 1, 2(4) ; Argument 1
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return in callee frame
97 : ADD 5, 4, 0 ; Push callee frame
98 : LDA 7, 778(0) ; Call EXP
99 : LD 1, 3(5) ; Load function result
100 : LDC 2, 5(0) ; Caller frame size
101 : SUB 5, 5, 2 ; Pop back to caller
102 : ADD  2, 3, 0 ;  Restore left operand
103 : MUL  1, 2, 1 ;  R1 = left * right
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
106 : ADD  3, 1, 0 ;  Store left operand into temporary register
107 : LDA 4, 5(5) ; Base of callee frame
108 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
109 : ST 1, 1(4) ; Argument 0
110 : LD   1, 2(5) ;  Load parameter 'n' into R1
111 : ST 1, 2(4) ; Argument 1
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 778(0) ; Call EXP
116 : LD 1, 3(5) ; Load function result
117 : LDC 2, 5(0) ; Caller frame size
118 : SUB 5, 5, 2 ; Pop back to caller
119 : ADD  2, 3, 0 ;  Restore left operand
120 : MUL  1, 2, 1 ;  R1 = left * right
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LD   1, 1(5) ;  Load parameter 'a' into R1
123 : ADD  2, 3, 0 ;  Restore left operand
124 : MUL  1, 2, 1 ;  R1 = left * right
125 : ADD  2, 3, 0 ;  Restore left operand
126 : ADD  1, 2, 1 ;  R1 = left + right
127 : ADD  3, 1, 0 ;  Store left operand into temporary register
128 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
129 : ADD  2, 3, 0 ;  Restore left operand
130 : ADD  1, 2, 1 ;  R1 = left + right
131 : ST 1, 4(4) ; Argument 3
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return in callee frame
134 : ADD 5, 4, 0 ; Push callee frame
135 : LDA 7, 144(0) ; Call aLoop1
136 : LD 1, 5(5) ; Load function result
137 : LDC 2, 5(0) ; Caller frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : LDA  7, 141(0) ;  Skip ELSE block
140 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
141 : ST   1, 4(5) ;  Store function result into stack frame
142 : LD   6, 0(5) ;  Load return address
143 : LDA  7, 0(6) ;  Return to caller
144 : LDA 4, 6(5) ; Base of callee frame
145 : LD   1, 1(5) ;  Load parameter 'a' into R1
146 : ST 1, 1(4) ; Argument 0
147 : LD   1, 2(5) ;  Load parameter 'n' into R1
148 : ST 1, 2(4) ; Argument 1
149 : LD   1, 3(5) ;  Load parameter 'upper' into R1
150 : ST 1, 3(4) ; Argument 2
151 : LD   1, 4(5) ;  Load parameter 'det' into R1
152 : ST 1, 4(4) ; Argument 3
153 : LDA 4, 6(5) ; Base of callee frame
154 : LD   1, 4(5) ;  Load parameter 'det' into R1
155 : ST 1, 1(4) ; Argument 0
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame
159 : LDA 7, 695(0) ; Call SQRT
160 : LD 1, 2(5) ; Load function result
161 : LDC 2, 6(0) ; Caller frame size
162 : SUB 5, 5, 2 ; Pop back to caller
163 : ST 1, 5(4) ; Argument 4
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 174(0) ; Call aLoop2
168 : LD 1, 6(5) ; Load function result
169 : LDC 2, 6(0) ; Caller frame size
170 : SUB 5, 5, 2 ; Pop back to caller
171 : ST   1, 5(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
174 : LDA 4, 7(5) ; Base of callee frame
175 : LD   1, 1(5) ;  Load parameter 'a' into R1
176 : ST 1, 1(4) ; Argument 0
177 : LD   1, 2(5) ;  Load parameter 'n' into R1
178 : ST 1, 2(4) ; Argument 1
179 : LD   1, 3(5) ;  Load parameter 'upper' into R1
180 : ST 1, 3(4) ; Argument 2
181 : LD   1, 4(5) ;  Load parameter 'det' into R1
182 : ST 1, 4(4) ; Argument 3
183 : LD   1, 5(5) ;  Load parameter 'root' into R1
184 : ST 1, 5(4) ; Argument 4
185 : LD   1, 1(5) ;  Load parameter 'a' into R1
186 : ADD  3, 1, 0 ;  Store left operand into temporary register
187 : LDA 4, 7(5) ; Base of callee frame
188 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
189 : ST 1, 1(4) ; Argument 0
190 : LD   1, 2(5) ;  Load parameter 'n' into R1
191 : ST 1, 2(4) ; Argument 1
192 : LDA 6, 196(0) ; Return address
193 : ST 6, 0(4) ; Store return in callee frame
194 : ADD 5, 4, 0 ; Push callee frame
195 : LDA 7, 778(0) ; Call EXP
196 : LD 1, 3(5) ; Load function result
197 : LDC 2, 7(0) ; Caller frame size
198 : SUB 5, 5, 2 ; Pop back to caller
199 : ADD  2, 3, 0 ;  Restore left operand
200 : MUL  1, 2, 1 ;  R1 = left * right
201 : ADD  3, 1, 0 ;  Store left operand into temporary register
202 : LD   1, 5(5) ;  Load parameter 'root' into R1
203 : ADD  3, 1, 0 ;  Store left operand into temporary register
204 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
205 : ADD  2, 3, 0 ;  Restore left operand
206 : ADD  1, 2, 1 ;  R1 = left + right
207 : ADD  3, 1, 0 ;  Store left operand into temporary register
208 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
209 : ADD  2, 3, 0 ;  Restore left operand
210 : DIV  1, 2, 1 ;  R1 = left / right
211 : ADD  2, 3, 0 ;  Restore left operand
212 : ADD  1, 2, 1 ;  R1 = left + right
213 : ST 1, 6(4) ; Argument 5
214 : LDA 6, 218(0) ; Return address
215 : ST 6, 0(4) ; Store return in callee frame
216 : ADD 5, 4, 0 ; Push callee frame
217 : LDA 7, 224(0) ; Call aLoop3
218 : LD 1, 7(5) ; Load function result
219 : LDC 2, 7(0) ; Caller frame size
220 : SUB 5, 5, 2 ; Pop back to caller
221 : ST   1, 6(5) ;  Store function result into stack frame
222 : LD   6, 0(5) ;  Load return address
223 : LDA  7, 0(6) ;  Return to caller
224 : LDA 4, 8(5) ; Base of callee frame
225 : LD   1, 5(5) ;  Load parameter 'root' into R1
226 : ST 1, 1(4) ; Argument 0
227 : LD   1, 4(5) ;  Load parameter 'det' into R1
228 : ST 1, 2(4) ; Argument 1
229 : LDA 6, 233(0) ; Return address
230 : ST 6, 0(4) ; Store return in callee frame
231 : ADD 5, 4, 0 ; Push callee frame
232 : LDA 7, 533(0) ; Call ISROOT
233 : LD 1, 3(5) ; Load function result
234 : LDC 2, 8(0) ; Caller frame size
235 : SUB 5, 5, 2 ; Pop back to caller
236 : ADD  3, 1, 0 ;  Store left operand into temporary register
237 : LDA 4, 8(5) ; Base of callee frame
238 : LD   1, 5(5) ;  Load parameter 'root' into R1
239 : ADD  3, 1, 0 ;  Store left operand into temporary register
240 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 3, 0 ;  Restore left operand
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : ST 1, 1(4) ; Argument 0
244 : LDA 6, 248(0) ; Return address
245 : ST 6, 0(4) ; Store return in callee frame
246 : ADD 5, 4, 0 ; Push callee frame
247 : LDA 7, 549(0) ; Call EVEN
248 : LD 1, 2(5) ; Load function result
249 : LDC 2, 8(0) ; Caller frame size
250 : SUB 5, 5, 2 ; Pop back to caller
251 : ADD  2, 3, 0 ;  Restore left operand
252 : MUL  1, 2, 1 ;  R1 = left AND right
253 : ADD  3, 1, 0 ;  Store left operand into temporary register
254 : LDA 4, 8(5) ; Base of callee frame
255 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
256 : ST 1, 1(4) ; Argument 0
257 : LDA 6, 261(0) ; Return address
258 : ST 6, 0(4) ; Store return in callee frame
259 : ADD 5, 4, 0 ; Push callee frame
260 : LDA 7, 335(0) ; Call isExcellent
261 : LD 1, 2(5) ; Load function result
262 : LDC 2, 8(0) ; Caller frame size
263 : SUB 5, 5, 2 ; Pop back to caller
264 : ADD  2, 3, 0 ;  Restore left operand
265 : MUL  1, 2, 1 ;  R1 = left AND right
266 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
267 : LDA 4, 8(5) ; Base of callee frame
268 : LD   1, 1(5) ;  Load parameter 'a' into R1
269 : ST 1, 1(4) ; Argument 0
270 : LD   1, 2(5) ;  Load parameter 'n' into R1
271 : ST 1, 2(4) ; Argument 1
272 : LD   1, 3(5) ;  Load parameter 'upper' into R1
273 : ST 1, 3(4) ; Argument 2
274 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
275 : ST 1, 4(4) ; Argument 3
276 : LDA 6, 280(0) ; Return address
277 : ST 6, 0(4) ; Store return in callee frame
278 : ADD 5, 4, 0 ; Push callee frame
279 : LDA 7, 305(0) ; Call printCandidateAndContinue
280 : LD 1, 5(5) ; Load function result
281 : LDC 2, 8(0) ; Caller frame size
282 : SUB 5, 5, 2 ; Pop back to caller
283 : LDA  7, 302(0) ;  Skip ELSE block
284 : LDA 4, 8(5) ; Base of callee frame
285 : LD   1, 1(5) ;  Load parameter 'a' into R1
286 : ADD  3, 1, 0 ;  Store left operand into temporary register
287 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
288 : ADD  2, 3, 0 ;  Restore left operand
289 : ADD  1, 2, 1 ;  R1 = left + right
290 : ST 1, 1(4) ; Argument 0
291 : LD   1, 2(5) ;  Load parameter 'n' into R1
292 : ST 1, 2(4) ; Argument 1
293 : LD   1, 3(5) ;  Load parameter 'upper' into R1
294 : ST 1, 3(4) ; Argument 2
295 : LDA 6, 299(0) ; Return address
296 : ST 6, 0(4) ; Store return in callee frame
297 : ADD 5, 4, 0 ; Push callee frame
298 : LDA 7, 71(0) ; Call aLoop
299 : LD 1, 4(5) ; Load function result
300 : LDC 2, 8(0) ; Caller frame size
301 : SUB 5, 5, 2 ; Pop back to caller
302 : ST   1, 7(5) ;  Store function result into stack frame
303 : LD   6, 0(5) ;  Load return address
304 : LDA  7, 0(6) ;  Return to caller
305 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
306 : LDA 4, 6(5) ; Base of callee frame
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(4) ; Store return addr in callee frame
309 : ADD 5, 4, 0 ; Push new frame
310 : LDA 7, 8(0) ; Call print
311 : LDC 2, 6(0) ; Caller frame size
312 : SUB 5, 5, 2 ; Pop frame
313 : ST   1, 5(5) ;  Store function result into stack frame
314 : LDA 4, 6(5) ; Base of callee frame
315 : LD   1, 1(5) ;  Load parameter 'a' into R1
316 : ADD  3, 1, 0 ;  Store left operand into temporary register
317 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
318 : ADD  2, 3, 0 ;  Restore left operand
319 : ADD  1, 2, 1 ;  R1 = left + right
320 : ST 1, 1(4) ; Argument 0
321 : LD   1, 2(5) ;  Load parameter 'n' into R1
322 : ST 1, 2(4) ; Argument 1
323 : LD   1, 3(5) ;  Load parameter 'upper' into R1
324 : ST 1, 3(4) ; Argument 2
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return in callee frame
327 : ADD 5, 4, 0 ; Push callee frame
328 : LDA 7, 71(0) ; Call aLoop
329 : LD 1, 4(5) ; Load function result
330 : LDC 2, 6(0) ; Caller frame size
331 : SUB 5, 5, 2 ; Pop back to caller
332 : ST   1, 5(5) ;  Store function result into stack frame
333 : LD   6, 0(5) ;  Load return address
334 : LDA  7, 0(6) ;  Return to caller
335 : LDA 4, 3(5) ; Base of callee frame
336 : LD   1, 1(5) ;  Load parameter 'n' into R1
337 : ST 1, 1(4) ; Argument 0
338 : LDA 4, 3(5) ; Base of callee frame
339 : LD   1, 1(5) ;  Load parameter 'n' into R1
340 : ST 1, 1(4) ; Argument 0
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return in callee frame
343 : ADD 5, 4, 0 ; Push callee frame
344 : LDA 7, 500(0) ; Call length
345 : LD 1, 2(5) ; Load function result
346 : LDC 2, 3(0) ; Caller frame size
347 : SUB 5, 5, 2 ; Pop back to caller
348 : ST 1, 2(4) ; Argument 1
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 359(0) ; Call isExcellentSwitch
353 : LD 1, 3(5) ; Load function result
354 : LDC 2, 3(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop back to caller
356 : ST   1, 2(5) ;  Store function result into stack frame
357 : LD   6, 0(5) ;  Load return address
358 : LDA  7, 0(6) ;  Return to caller
359 : LDA 4, 4(5) ; Base of callee frame
360 : LD   1, 2(5) ;  Load parameter 'length' into R1
361 : ST 1, 1(4) ; Argument 0
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return in callee frame
364 : ADD 5, 4, 0 ; Push callee frame
365 : LDA 7, 736(0) ; Call ODD
366 : LD 1, 2(5) ; Load function result
367 : LDC 2, 4(0) ; Caller frame size
368 : SUB 5, 5, 2 ; Pop back to caller
369 : JEQ  1, 372(0) ;  If condition is false, jump to ELSE
370 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
371 : LDA  7, 410(0) ;  Skip ELSE block
372 : LD   1, 1(5) ;  Load parameter 'n' into R1
373 : ADD  3, 1, 0 ;  Store left operand into temporary register
374 : LDA 4, 4(5) ; Base of callee frame
375 : LDA 4, 4(5) ; Base of callee frame
376 : LD   1, 1(5) ;  Load parameter 'n' into R1
377 : ST 1, 1(4) ; Argument 0
378 : LDA 6, 382(0) ; Return address
379 : ST 6, 0(4) ; Store return in callee frame
380 : ADD 5, 4, 0 ; Push callee frame
381 : LDA 7, 468(0) ; Call a
382 : LD 1, 2(5) ; Load function result
383 : LDC 2, 4(0) ; Caller frame size
384 : SUB 5, 5, 2 ; Pop back to caller
385 : ST 1, 1(4) ; Argument 0
386 : LDA 4, 4(5) ; Base of callee frame
387 : LD   1, 1(5) ;  Load parameter 'n' into R1
388 : ST 1, 1(4) ; Argument 0
389 : LDA 6, 393(0) ; Return address
390 : ST 6, 0(4) ; Store return in callee frame
391 : ADD 5, 4, 0 ; Push callee frame
392 : LDA 7, 429(0) ; Call b
393 : LD 1, 2(5) ; Load function result
394 : LDC 2, 4(0) ; Caller frame size
395 : SUB 5, 5, 2 ; Pop back to caller
396 : ST 1, 2(4) ; Argument 1
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return in callee frame
399 : ADD 5, 4, 0 ; Push callee frame
400 : LDA 7, 413(0) ; Call excellentDiff
401 : LD 1, 3(5) ; Load function result
402 : LDC 2, 4(0) ; Caller frame size
403 : SUB 5, 5, 2 ; Pop back to caller
404 : ADD  2, 3, 0 ;  Restore left operand
405 : SUB  1, 2, 1 ;  left - right for equality check
406 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
407 : LDC  1, 0(0) ;  false
408 : LDA  7, 1(7) ;  skip setting true
409 : LDC  1, 1(0) ;  true
410 : ST   1, 3(5) ;  Store function result into stack frame
411 : LD   6, 0(5) ;  Load return address
412 : LDA  7, 0(6) ;  Return to caller
413 : LD   1, 2(5) ;  Load parameter 'b' into R1
414 : ADD  3, 1, 0 ;  Store left operand into temporary register
415 : LD   1, 2(5) ;  Load parameter 'b' into R1
416 : ADD  2, 3, 0 ;  Restore left operand
417 : MUL  1, 2, 1 ;  R1 = left * right
418 : ADD  3, 1, 0 ;  Store left operand into temporary register
419 : LD   1, 1(5) ;  Load parameter 'a' into R1
420 : ADD  3, 1, 0 ;  Store left operand into temporary register
421 : LD   1, 1(5) ;  Load parameter 'a' into R1
422 : ADD  2, 3, 0 ;  Restore left operand
423 : MUL  1, 2, 1 ;  R1 = left * right
424 : ADD  2, 3, 0 ;  Restore left operand
425 : SUB  1, 2, 1 ;  R1 = left - right
426 : ST   1, 3(5) ;  Store function result into stack frame
427 : LD   6, 0(5) ;  Load return address
428 : LDA  7, 0(6) ;  Return to caller
429 : LDA 4, 3(5) ; Base of callee frame
430 : LD   1, 1(5) ;  Load parameter 'n' into R1
431 : ST 1, 1(4) ; Argument 0
432 : LDA 4, 3(5) ; Base of callee frame
433 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
434 : ST 1, 1(4) ; Argument 0
435 : LDA 4, 3(5) ; Base of callee frame
436 : LD   1, 1(5) ;  Load parameter 'n' into R1
437 : ST 1, 1(4) ; Argument 0
438 : LDA 6, 442(0) ; Return address
439 : ST 6, 0(4) ; Store return in callee frame
440 : ADD 5, 4, 0 ; Push callee frame
441 : LDA 7, 500(0) ; Call length
442 : LD 1, 2(5) ; Load function result
443 : LDC 2, 3(0) ; Caller frame size
444 : SUB 5, 5, 2 ; Pop back to caller
445 : ADD  3, 1, 0 ;  Store left operand into temporary register
446 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
447 : ADD  2, 3, 0 ;  Restore left operand
448 : DIV  1, 2, 1 ;  R1 = left / right
449 : ST 1, 2(4) ; Argument 1
450 : LDA 6, 454(0) ; Return address
451 : ST 6, 0(4) ; Store return in callee frame
452 : ADD 5, 4, 0 ; Push callee frame
453 : LDA 7, 778(0) ; Call EXP
454 : LD 1, 3(5) ; Load function result
455 : LDC 2, 3(0) ; Caller frame size
456 : SUB 5, 5, 2 ; Pop back to caller
457 : ST 1, 2(4) ; Argument 1
458 : LDA 6, 462(0) ; Return address
459 : ST 6, 0(4) ; Store return in callee frame
460 : ADD 5, 4, 0 ; Push callee frame
461 : LDA 7, 813(0) ; Call MOD
462 : LD 1, 3(5) ; Load function result
463 : LDC 2, 3(0) ; Caller frame size
464 : SUB 5, 5, 2 ; Pop back to caller
465 : ST   1, 2(5) ;  Store function result into stack frame
466 : LD   6, 0(5) ;  Load return address
467 : LDA  7, 0(6) ;  Return to caller
468 : LD   1, 1(5) ;  Load parameter 'n' into R1
469 : ADD  3, 1, 0 ;  Store left operand into temporary register
470 : LDA 4, 3(5) ; Base of callee frame
471 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
472 : ST 1, 1(4) ; Argument 0
473 : LDA 4, 3(5) ; Base of callee frame
474 : LD   1, 1(5) ;  Load parameter 'n' into R1
475 : ST 1, 1(4) ; Argument 0
476 : LDA 6, 480(0) ; Return address
477 : ST 6, 0(4) ; Store return in callee frame
478 : ADD 5, 4, 0 ; Push callee frame
479 : LDA 7, 500(0) ; Call length
480 : LD 1, 2(5) ; Load function result
481 : LDC 2, 3(0) ; Caller frame size
482 : SUB 5, 5, 2 ; Pop back to caller
483 : ADD  3, 1, 0 ;  Store left operand into temporary register
484 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
485 : ADD  2, 3, 0 ;  Restore left operand
486 : DIV  1, 2, 1 ;  R1 = left / right
487 : ST 1, 2(4) ; Argument 1
488 : LDA 6, 492(0) ; Return address
489 : ST 6, 0(4) ; Store return in callee frame
490 : ADD 5, 4, 0 ; Push callee frame
491 : LDA 7, 778(0) ; Call EXP
492 : LD 1, 3(5) ; Load function result
493 : LDC 2, 3(0) ; Caller frame size
494 : SUB 5, 5, 2 ; Pop back to caller
495 : ADD  2, 3, 0 ;  Restore left operand
496 : DIV  1, 2, 1 ;  R1 = left / right
497 : ST   1, 2(5) ;  Store function result into stack frame
498 : LD   6, 0(5) ;  Load return address
499 : LDA  7, 0(6) ;  Return to caller
500 : LD   1, 1(5) ;  Load parameter 'n' into R1
501 : ADD  3, 1, 0 ;  Store left operand into temporary register
502 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
503 : ADD  2, 3, 0 ;  Restore left operand
504 : SUB  1, 2, 1 ;  left - right for less-than check
505 : JLT  1, 2(7) ;  If R1 < 0, jump to true
506 : LDC  1, 0(0) ;  false
507 : LDA  7, 1(7) ;  skip setting true
508 : LDC  1, 1(0) ;  true
509 : JEQ  1, 512(0) ;  If condition is false, jump to ELSE
510 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
511 : LDA  7, 530(0) ;  Skip ELSE block
512 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
513 : ADD  3, 1, 0 ;  Store left operand into temporary register
514 : LDA 4, 3(5) ; Base of callee frame
515 : LD   1, 1(5) ;  Load parameter 'n' into R1
516 : ADD  3, 1, 0 ;  Store left operand into temporary register
517 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
518 : ADD  2, 3, 0 ;  Restore left operand
519 : DIV  1, 2, 1 ;  R1 = left / right
520 : ST 1, 1(4) ; Argument 0
521 : LDA 6, 525(0) ; Return address
522 : ST 6, 0(4) ; Store return in callee frame
523 : ADD 5, 4, 0 ; Push callee frame
524 : LDA 7, 500(0) ; Call length
525 : LD 1, 2(5) ; Load function result
526 : LDC 2, 3(0) ; Caller frame size
527 : SUB 5, 5, 2 ; Pop back to caller
528 : ADD  2, 3, 0 ;  Restore left operand
529 : ADD  1, 2, 1 ;  R1 = left + right
530 : ST   1, 2(5) ;  Store function result into stack frame
531 : LD   6, 0(5) ;  Load return address
532 : LDA  7, 0(6) ;  Return to caller
533 : LD   1, 2(5) ;  Load parameter 'n' into R1
534 : ADD  3, 1, 0 ;  Store left operand into temporary register
535 : LD   1, 1(5) ;  Load parameter 'r' into R1
536 : ADD  3, 1, 0 ;  Store left operand into temporary register
537 : LD   1, 1(5) ;  Load parameter 'r' into R1
538 : ADD  2, 3, 0 ;  Restore left operand
539 : MUL  1, 2, 1 ;  R1 = left * right
540 : ADD  2, 3, 0 ;  Restore left operand
541 : SUB  1, 2, 1 ;  left - right for equality check
542 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
543 : LDC  1, 0(0) ;  false
544 : LDA  7, 1(7) ;  skip setting true
545 : LDC  1, 1(0) ;  true
546 : ST   1, 3(5) ;  Store function result into stack frame
547 : LD   6, 0(5) ;  Load return address
548 : LDA  7, 0(6) ;  Return to caller
549 : LD   1, 1(5) ;  Load parameter 'n' into R1
550 : ADD  3, 1, 0 ;  Store left operand into temporary register
551 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
552 : ADD  3, 1, 0 ;  Store left operand into temporary register
553 : LD   1, 1(5) ;  Load parameter 'n' into R1
554 : ADD  3, 1, 0 ;  Store left operand into temporary register
555 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
556 : ADD  2, 3, 0 ;  Restore left operand
557 : DIV  1, 2, 1 ;  R1 = left / right
558 : ADD  2, 3, 0 ;  Restore left operand
559 : MUL  1, 2, 1 ;  R1 = left * right
560 : ADD  2, 3, 0 ;  Restore left operand
561 : SUB  1, 2, 1 ;  left - right for equality check
562 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
563 : LDC  1, 0(0) ;  false
564 : LDA  7, 1(7) ;  skip setting true
565 : LDC  1, 1(0) ;  true
566 : ST   1, 2(5) ;  Store function result into stack frame
567 : LD   6, 0(5) ;  Load return address
568 : LDA  7, 0(6) ;  Return to caller
569 : LDA 4, 6(5) ; Base of callee frame
570 : LD   1, 4(5) ;  Load parameter 'mid' into R1
571 : ADD  3, 1, 0 ;  Store left operand into temporary register
572 : LD   1, 4(5) ;  Load parameter 'mid' into R1
573 : ADD  2, 3, 0 ;  Restore left operand
574 : MUL  1, 2, 1 ;  R1 = left * right
575 : ST 1, 1(4) ; Argument 0
576 : LD   1, 1(5) ;  Load parameter 'n' into R1
577 : ST 1, 2(4) ; Argument 1
578 : LDA 6, 582(0) ; Return address
579 : ST 6, 0(4) ; Store return in callee frame
580 : ADD 5, 4, 0 ; Push callee frame
581 : LDA 7, 712(0) ; Call LE
582 : LD 1, 3(5) ; Load function result
583 : LDC 2, 6(0) ; Caller frame size
584 : SUB 5, 5, 2 ; Pop back to caller
585 : JEQ  1, 601(0) ;  If condition is false, jump to ELSE
586 : LDA 4, 6(5) ; Base of callee frame
587 : LD   1, 1(5) ;  Load parameter 'n' into R1
588 : ST 1, 1(4) ; Argument 0
589 : LD   1, 4(5) ;  Load parameter 'mid' into R1
590 : ST 1, 2(4) ; Argument 1
591 : LD   1, 3(5) ;  Load parameter 'high' into R1
592 : ST 1, 3(4) ; Argument 2
593 : LDA 6, 597(0) ; Return address
594 : ST 6, 0(4) ; Store return in callee frame
595 : ADD 5, 4, 0 ; Push callee frame
596 : LDA 7, 618(0) ; Call SQRTSEARCH
597 : LD 1, 4(5) ; Load function result
598 : LDC 2, 6(0) ; Caller frame size
599 : SUB 5, 5, 2 ; Pop back to caller
600 : LDA  7, 615(0) ;  Skip ELSE block
601 : LDA 4, 6(5) ; Base of callee frame
602 : LD   1, 1(5) ;  Load parameter 'n' into R1
603 : ST 1, 1(4) ; Argument 0
604 : LD   1, 2(5) ;  Load parameter 'low' into R1
605 : ST 1, 2(4) ; Argument 1
606 : LD   1, 4(5) ;  Load parameter 'mid' into R1
607 : ST 1, 3(4) ; Argument 2
608 : LDA 6, 612(0) ; Return address
609 : ST 6, 0(4) ; Store return in callee frame
610 : ADD 5, 4, 0 ; Push callee frame
611 : LDA 7, 618(0) ; Call SQRTSEARCH
612 : LD 1, 4(5) ; Load function result
613 : LDC 2, 6(0) ; Caller frame size
614 : SUB 5, 5, 2 ; Pop back to caller
615 : ST   1, 5(5) ;  Store function result into stack frame
616 : LD   6, 0(5) ;  Load return address
617 : LDA  7, 0(6) ;  Return to caller
618 : LDA 4, 5(5) ; Base of callee frame
619 : LD   1, 3(5) ;  Load parameter 'high' into R1
620 : ST 1, 1(4) ; Argument 0
621 : LD   1, 2(5) ;  Load parameter 'low' into R1
622 : ADD  3, 1, 0 ;  Store left operand into temporary register
623 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
624 : ADD  2, 3, 0 ;  Restore left operand
625 : ADD  1, 2, 1 ;  R1 = left + right
626 : ST 1, 2(4) ; Argument 1
627 : LDA 6, 631(0) ; Return address
628 : ST 6, 0(4) ; Store return in callee frame
629 : ADD 5, 4, 0 ; Push callee frame
630 : LDA 7, 712(0) ; Call LE
631 : LD 1, 3(5) ; Load function result
632 : LDC 2, 5(0) ; Caller frame size
633 : SUB 5, 5, 2 ; Pop back to caller
634 : JEQ  1, 668(0) ;  If condition is false, jump to ELSE
635 : LDA 4, 5(5) ; Base of callee frame
636 : LD   1, 1(5) ;  Load parameter 'n' into R1
637 : ADD  3, 1, 0 ;  Store left operand into temporary register
638 : LD   1, 2(5) ;  Load parameter 'low' into R1
639 : ADD  3, 1, 0 ;  Store left operand into temporary register
640 : LD   1, 2(5) ;  Load parameter 'low' into R1
641 : ADD  2, 3, 0 ;  Restore left operand
642 : MUL  1, 2, 1 ;  R1 = left * right
643 : ADD  2, 3, 0 ;  Restore left operand
644 : SUB  1, 2, 1 ;  R1 = left - right
645 : ST 1, 1(4) ; Argument 0
646 : LD   1, 3(5) ;  Load parameter 'high' into R1
647 : ADD  3, 1, 0 ;  Store left operand into temporary register
648 : LD   1, 3(5) ;  Load parameter 'high' into R1
649 : ADD  2, 3, 0 ;  Restore left operand
650 : MUL  1, 2, 1 ;  R1 = left * right
651 : ADD  3, 1, 0 ;  Store left operand into temporary register
652 : LD   1, 1(5) ;  Load parameter 'n' into R1
653 : ADD  2, 3, 0 ;  Restore left operand
654 : SUB  1, 2, 1 ;  R1 = left - right
655 : ST 1, 2(4) ; Argument 1
656 : LDA 6, 660(0) ; Return address
657 : ST 6, 0(4) ; Store return in callee frame
658 : ADD 5, 4, 0 ; Push callee frame
659 : LDA 7, 712(0) ; Call LE
660 : LD 1, 3(5) ; Load function result
661 : LDC 2, 5(0) ; Caller frame size
662 : SUB 5, 5, 2 ; Pop back to caller
663 : JEQ  1, 666(0) ;  If condition is false, jump to ELSE
664 : LD   1, 2(5) ;  Load parameter 'low' into R1
665 : LDA  7, 667(0) ;  Skip ELSE block
666 : LD   1, 3(5) ;  Load parameter 'high' into R1
667 : LDA  7, 692(0) ;  Skip ELSE block
668 : LDA 4, 5(5) ; Base of callee frame
669 : LD   1, 1(5) ;  Load parameter 'n' into R1
670 : ST 1, 1(4) ; Argument 0
671 : LD   1, 2(5) ;  Load parameter 'low' into R1
672 : ST 1, 2(4) ; Argument 1
673 : LD   1, 3(5) ;  Load parameter 'high' into R1
674 : ST 1, 3(4) ; Argument 2
675 : LD   1, 2(5) ;  Load parameter 'low' into R1
676 : ADD  3, 1, 0 ;  Store left operand into temporary register
677 : LD   1, 3(5) ;  Load parameter 'high' into R1
678 : ADD  2, 3, 0 ;  Restore left operand
679 : ADD  1, 2, 1 ;  R1 = left + right
680 : ADD  3, 1, 0 ;  Store left operand into temporary register
681 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
682 : ADD  2, 3, 0 ;  Restore left operand
683 : DIV  1, 2, 1 ;  R1 = left / right
684 : ST 1, 4(4) ; Argument 3
685 : LDA 6, 689(0) ; Return address
686 : ST 6, 0(4) ; Store return in callee frame
687 : ADD 5, 4, 0 ; Push callee frame
688 : LDA 7, 569(0) ; Call SQRTSPLIT
689 : LD 1, 5(5) ; Load function result
690 : LDC 2, 5(0) ; Caller frame size
691 : SUB 5, 5, 2 ; Pop back to caller
692 : ST   1, 4(5) ;  Store function result into stack frame
693 : LD   6, 0(5) ;  Load return address
694 : LDA  7, 0(6) ;  Return to caller
695 : LDA 4, 3(5) ; Base of callee frame
696 : LD   1, 1(5) ;  Load parameter 'n' into R1
697 : ST 1, 1(4) ; Argument 0
698 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
699 : ST 1, 2(4) ; Argument 1
700 : LD   1, 1(5) ;  Load parameter 'n' into R1
701 : ST 1, 3(4) ; Argument 2
702 : LDA 6, 706(0) ; Return address
703 : ST 6, 0(4) ; Store return in callee frame
704 : ADD 5, 4, 0 ; Push callee frame
705 : LDA 7, 618(0) ; Call SQRTSEARCH
706 : LD 1, 4(5) ; Load function result
707 : LDC 2, 3(0) ; Caller frame size
708 : SUB 5, 5, 2 ; Pop back to caller
709 : ST   1, 2(5) ;  Store function result into stack frame
710 : LD   6, 0(5) ;  Load return address
711 : LDA  7, 0(6) ;  Return to caller
712 : LD   1, 1(5) ;  Load parameter 'p' into R1
713 : ADD  3, 1, 0 ;  Store left operand into temporary register
714 : LD   1, 2(5) ;  Load parameter 'q' into R1
715 : ADD  2, 3, 0 ;  Restore left operand
716 : SUB  1, 2, 1 ;  left - right for less-than check
717 : JLT  1, 2(7) ;  If R1 < 0, jump to true
718 : LDC  1, 0(0) ;  false
719 : LDA  7, 1(7) ;  skip setting true
720 : LDC  1, 1(0) ;  true
721 : ADD  3, 1, 0 ;  Store left operand into temporary register
722 : LD   1, 1(5) ;  Load parameter 'p' into R1
723 : ADD  3, 1, 0 ;  Store left operand into temporary register
724 : LD   1, 2(5) ;  Load parameter 'q' into R1
725 : ADD  2, 3, 0 ;  Restore left operand
726 : SUB  1, 2, 1 ;  left - right for equality check
727 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
728 : LDC  1, 0(0) ;  false
729 : LDA  7, 1(7) ;  skip setting true
730 : LDC  1, 1(0) ;  true
731 : ADD  2, 3, 0 ;  Restore left operand
732 : ADD  1, 2, 1 ;  R1 = left OR right
733 : ST   1, 3(5) ;  Store function result into stack frame
734 : LD   6, 0(5) ;  Load return address
735 : LDA  7, 0(6) ;  Return to caller
736 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
737 : ADD  3, 1, 0 ;  Store left operand into temporary register
738 : LD   1, 1(5) ;  Load parameter 'n' into R1
739 : ADD  2, 3, 0 ;  Restore left operand
740 : SUB  1, 2, 1 ;  left - right for less-than check
741 : JLT  1, 2(7) ;  If R1 < 0, jump to true
742 : LDC  1, 0(0) ;  false
743 : LDA  7, 1(7) ;  skip setting true
744 : LDC  1, 1(0) ;  true
745 : JEQ  1, 764(0) ;  If condition is false, jump to ELSE
746 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
747 : ADD  3, 1, 0 ;  Store left operand into temporary register
748 : LD   1, 1(5) ;  Load parameter 'n' into R1
749 : ADD  3, 1, 0 ;  Store left operand into temporary register
750 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
751 : ADD  2, 3, 0 ;  Restore left operand
752 : DIV  1, 2, 1 ;  R1 = left / right
753 : ADD  2, 3, 0 ;  Restore left operand
754 : MUL  1, 2, 1 ;  R1 = left * right
755 : ADD  3, 1, 0 ;  Store left operand into temporary register
756 : LD   1, 1(5) ;  Load parameter 'n' into R1
757 : ADD  2, 3, 0 ;  Restore left operand
758 : SUB  1, 2, 1 ;  left - right for less-than check
759 : JLT  1, 2(7) ;  If R1 < 0, jump to true
760 : LDC  1, 0(0) ;  false
761 : LDA  7, 1(7) ;  skip setting true
762 : LDC  1, 1(0) ;  true
763 : LDA  7, 775(0) ;  Skip ELSE block
764 : LDA 4, 3(5) ; Base of callee frame
765 : LD   1, 1(5) ;  Load parameter 'n' into R1
766 : SUB  1, 0, 1 ;  Negate value in R1
767 : ST 1, 1(4) ; Argument 0
768 : LDA 6, 772(0) ; Return address
769 : ST 6, 0(4) ; Store return in callee frame
770 : ADD 5, 4, 0 ; Push callee frame
771 : LDA 7, 736(0) ; Call ODD
772 : LD 1, 2(5) ; Load function result
773 : LDC 2, 3(0) ; Caller frame size
774 : SUB 5, 5, 2 ; Pop back to caller
775 : ST   1, 2(5) ;  Store function result into stack frame
776 : LD   6, 0(5) ;  Load return address
777 : LDA  7, 0(6) ;  Return to caller
778 : LD   1, 2(5) ;  Load parameter 'n' into R1
779 : ADD  3, 1, 0 ;  Store left operand into temporary register
780 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
781 : ADD  2, 3, 0 ;  Restore left operand
782 : SUB  1, 2, 1 ;  left - right for equality check
783 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
784 : LDC  1, 0(0) ;  false
785 : LDA  7, 1(7) ;  skip setting true
786 : LDC  1, 1(0) ;  true
787 : JEQ  1, 790(0) ;  If condition is false, jump to ELSE
788 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
789 : LDA  7, 810(0) ;  Skip ELSE block
790 : LD   1, 1(5) ;  Load parameter 'm' into R1
791 : ADD  3, 1, 0 ;  Store left operand into temporary register
792 : LDA 4, 4(5) ; Base of callee frame
793 : LD   1, 1(5) ;  Load parameter 'm' into R1
794 : ST 1, 1(4) ; Argument 0
795 : LD   1, 2(5) ;  Load parameter 'n' into R1
796 : ADD  3, 1, 0 ;  Store left operand into temporary register
797 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
798 : ADD  2, 3, 0 ;  Restore left operand
799 : SUB  1, 2, 1 ;  R1 = left - right
800 : ST 1, 2(4) ; Argument 1
801 : LDA 6, 805(0) ; Return address
802 : ST 6, 0(4) ; Store return in callee frame
803 : ADD 5, 4, 0 ; Push callee frame
804 : LDA 7, 778(0) ; Call EXP
805 : LD 1, 3(5) ; Load function result
806 : LDC 2, 4(0) ; Caller frame size
807 : SUB 5, 5, 2 ; Pop back to caller
808 : ADD  2, 3, 0 ;  Restore left operand
809 : MUL  1, 2, 1 ;  R1 = left * right
810 : ST   1, 3(5) ;  Store function result into stack frame
811 : LD   6, 0(5) ;  Load return address
812 : LDA  7, 0(6) ;  Return to caller
813 : LD   1, 1(5) ;  Load parameter 'm' into R1
814 : ADD  3, 1, 0 ;  Store left operand into temporary register
815 : LD   1, 2(5) ;  Load parameter 'n' into R1
816 : ADD  3, 1, 0 ;  Store left operand into temporary register
817 : LD   1, 1(5) ;  Load parameter 'm' into R1
818 : ADD  3, 1, 0 ;  Store left operand into temporary register
819 : LD   1, 2(5) ;  Load parameter 'n' into R1
820 : ADD  2, 3, 0 ;  Restore left operand
821 : DIV  1, 2, 1 ;  R1 = left / right
822 : ADD  2, 3, 0 ;  Restore left operand
823 : MUL  1, 2, 1 ;  R1 = left * right
824 : ADD  2, 3, 0 ;  Restore left operand
825 : SUB  1, 2, 1 ;  R1 = left - right
826 : ST   1, 3(5) ;  Store function result into stack frame
827 : LD   6, 0(5) ;  Load return address
828 : LDA  7, 0(6) ;  Return to caller
