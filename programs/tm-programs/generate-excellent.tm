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
12 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
13 : LDA 4, 3(5) ; Base of callee frame
14 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
15 : ST 1, 1(4) ; Argument 0
16 : LD   1, 1(5) ;  Load parameter 'length' into R1
17 : ADD  3, 1, 0 ;  Store left operand into temporary register
18 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
19 : ADD  2, 3, 0 ;  Restore left operand
20 : DIV  1, 2, 1 ;  R1 = left / right
21 : ADD  3, 1, 0 ;  Store left operand into temporary register
22 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
23 : ADD  2, 3, 0 ;  Restore left operand
24 : SUB  1, 2, 1 ;  R1 = left - right
25 : ST 1, 2(4) ; Argument 1
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 784(0) ; Call EXP
30 : LD 1, 3(5) ; Load function result
31 : LDC 2, 3(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : ST 1, 1(4) ; Argument 0
34 : LD   1, 1(5) ;  Load parameter 'length' into R1
35 : ADD  3, 1, 0 ;  Store left operand into temporary register
36 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
37 : ADD  2, 3, 0 ;  Restore left operand
38 : DIV  1, 2, 1 ;  R1 = left / right
39 : ST 1, 2(4) ; Argument 1
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame
43 : LDA 7, 51(0) ; Call createLoop
44 : LD 1, 3(5) ; Load function result
45 : LDC 2, 3(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : ST 1, 2(5) ; Store result into caller’s frame
48 : LD   1, 2(5) ;  Load return value into register 1
49 : LD  6, 0(5) ;  Load return address for main function into register 6
50 : LDA  7, 0(6) ;  Jump to return address of main function
51 : LDA 4, 4(5) ; Base of callee frame
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ST 1, 1(4) ; Argument 0
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ST 1, 2(4) ; Argument 1
56 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
57 : ADD  3, 1, 0 ;  Store left operand into temporary register
58 : LD   1, 1(5) ;  Load parameter 'a' into R1
59 : ADD  2, 3, 0 ;  Restore left operand
60 : MUL  1, 2, 1 ;  R1 = left * right
61 : ST 1, 3(4) ; Argument 2
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame
65 : LDA 7, 72(0) ; Call aLoop
66 : LD 1, 4(5) ; Load function result
67 : LDC 2, 4(0) ; Caller frame size
68 : SUB 5, 5, 2 ; Pop back to caller
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
72 : LD   1, 1(5) ;  Load parameter 'a' into R1
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LD   1, 3(5) ;  Load parameter 'upper' into R1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for less-than check
77 : JLT  1, 2(7) ;  If R1 < 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : JEQ  1, 141(0) ;  If condition is false, jump to ELSE
82 : LDA 4, 5(5) ; Base of callee frame
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : ST 1, 1(4) ; Argument 0
85 : LD   1, 2(5) ;  Load parameter 'n' into R1
86 : ST 1, 2(4) ; Argument 1
87 : LD   1, 3(5) ;  Load parameter 'upper' into R1
88 : ST 1, 3(4) ; Argument 2
89 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LDA 4, 5(5) ; Base of callee frame
92 : LD   1, 1(5) ;  Load parameter 'a' into R1
93 : ST 1, 1(4) ; Argument 0
94 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
95 : ST 1, 2(4) ; Argument 1
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return in callee frame
98 : ADD 5, 4, 0 ; Push callee frame
99 : LDA 7, 784(0) ; Call EXP
100 : LD 1, 3(5) ; Load function result
101 : LDC 2, 5(0) ; Caller frame size
102 : SUB 5, 5, 2 ; Pop back to caller
103 : ADD  2, 3, 0 ;  Restore left operand
104 : MUL  1, 2, 1 ;  R1 = left * right
105 : ADD  3, 1, 0 ;  Store left operand into temporary register
106 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDA 4, 5(5) ; Base of callee frame
109 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
110 : ST 1, 1(4) ; Argument 0
111 : LD   1, 2(5) ;  Load parameter 'n' into R1
112 : ST 1, 2(4) ; Argument 1
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame
116 : LDA 7, 784(0) ; Call EXP
117 : LD 1, 3(5) ; Load function result
118 : LDC 2, 5(0) ; Caller frame size
119 : SUB 5, 5, 2 ; Pop back to caller
120 : ADD  2, 3, 0 ;  Restore left operand
121 : MUL  1, 2, 1 ;  R1 = left * right
122 : ADD  3, 1, 0 ;  Store left operand into temporary register
123 : LD   1, 1(5) ;  Load parameter 'a' into R1
124 : ADD  2, 3, 0 ;  Restore left operand
125 : MUL  1, 2, 1 ;  R1 = left * right
126 : ADD  2, 3, 0 ;  Restore left operand
127 : ADD  1, 2, 1 ;  R1 = left + right
128 : ADD  3, 1, 0 ;  Store left operand into temporary register
129 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
130 : ADD  2, 3, 0 ;  Restore left operand
131 : ADD  1, 2, 1 ;  R1 = left + right
132 : ST 1, 4(4) ; Argument 3
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame
136 : LDA 7, 145(0) ; Call aLoop1
137 : LD 1, 5(5) ; Load function result
138 : LDC 2, 5(0) ; Caller frame size
139 : SUB 5, 5, 2 ; Pop back to caller
140 : LDA  7, 142(0) ;  Skip ELSE block
141 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
142 : ST   1, 4(5) ;  Store function result into stack frame
143 : LD   6, 0(5) ;  Load return address
144 : LDA  7, 0(6) ;  Return to caller
145 : LDA 4, 6(5) ; Base of callee frame
146 : LD   1, 1(5) ;  Load parameter 'a' into R1
147 : ST 1, 1(4) ; Argument 0
148 : LD   1, 2(5) ;  Load parameter 'n' into R1
149 : ST 1, 2(4) ; Argument 1
150 : LD   1, 3(5) ;  Load parameter 'upper' into R1
151 : ST 1, 3(4) ; Argument 2
152 : LD   1, 4(5) ;  Load parameter 'det' into R1
153 : ST 1, 4(4) ; Argument 3
154 : LDA  4, 6(4) ;  Push additional call frame for nested function calls
155 : LDA 4, 6(5) ; Base of callee frame
156 : LD   1, 4(5) ;  Load parameter 'det' into R1
157 : ST 1, 1(4) ; Argument 0
158 : LDA 6, 162(0) ; Return address
159 : ST 6, 0(4) ; Store return in callee frame
160 : ADD 5, 4, 0 ; Push callee frame
161 : LDA 7, 701(0) ; Call SQRT
162 : LD 1, 2(5) ; Load function result
163 : LDC 2, 6(0) ; Caller frame size
164 : SUB 5, 5, 2 ; Pop back to caller
165 : ST 1, 5(4) ; Argument 4
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame
169 : LDA 7, 176(0) ; Call aLoop2
170 : LD 1, 6(5) ; Load function result
171 : LDC 2, 6(0) ; Caller frame size
172 : SUB 5, 5, 2 ; Pop back to caller
173 : ST   1, 5(5) ;  Store function result into stack frame
174 : LD   6, 0(5) ;  Load return address
175 : LDA  7, 0(6) ;  Return to caller
176 : LDA 4, 7(5) ; Base of callee frame
177 : LD   1, 1(5) ;  Load parameter 'a' into R1
178 : ST 1, 1(4) ; Argument 0
179 : LD   1, 2(5) ;  Load parameter 'n' into R1
180 : ST 1, 2(4) ; Argument 1
181 : LD   1, 3(5) ;  Load parameter 'upper' into R1
182 : ST 1, 3(4) ; Argument 2
183 : LD   1, 4(5) ;  Load parameter 'det' into R1
184 : ST 1, 4(4) ; Argument 3
185 : LD   1, 5(5) ;  Load parameter 'root' into R1
186 : ST 1, 5(4) ; Argument 4
187 : LD   1, 1(5) ;  Load parameter 'a' into R1
188 : ADD  3, 1, 0 ;  Store left operand into temporary register
189 : LDA 4, 7(5) ; Base of callee frame
190 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
191 : ST 1, 1(4) ; Argument 0
192 : LD   1, 2(5) ;  Load parameter 'n' into R1
193 : ST 1, 2(4) ; Argument 1
194 : LDA 6, 198(0) ; Return address
195 : ST 6, 0(4) ; Store return in callee frame
196 : ADD 5, 4, 0 ; Push callee frame
197 : LDA 7, 784(0) ; Call EXP
198 : LD 1, 3(5) ; Load function result
199 : LDC 2, 7(0) ; Caller frame size
200 : SUB 5, 5, 2 ; Pop back to caller
201 : ADD  2, 3, 0 ;  Restore left operand
202 : MUL  1, 2, 1 ;  R1 = left * right
203 : ADD  3, 1, 0 ;  Store left operand into temporary register
204 : LD   1, 5(5) ;  Load parameter 'root' into R1
205 : ADD  3, 1, 0 ;  Store left operand into temporary register
206 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
207 : ADD  2, 3, 0 ;  Restore left operand
208 : ADD  1, 2, 1 ;  R1 = left + right
209 : ADD  3, 1, 0 ;  Store left operand into temporary register
210 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
211 : ADD  2, 3, 0 ;  Restore left operand
212 : DIV  1, 2, 1 ;  R1 = left / right
213 : ADD  2, 3, 0 ;  Restore left operand
214 : ADD  1, 2, 1 ;  R1 = left + right
215 : ST 1, 6(4) ; Argument 5
216 : LDA 6, 220(0) ; Return address
217 : ST 6, 0(4) ; Store return in callee frame
218 : ADD 5, 4, 0 ; Push callee frame
219 : LDA 7, 226(0) ; Call aLoop3
220 : LD 1, 7(5) ; Load function result
221 : LDC 2, 7(0) ; Caller frame size
222 : SUB 5, 5, 2 ; Pop back to caller
223 : ST   1, 6(5) ;  Store function result into stack frame
224 : LD   6, 0(5) ;  Load return address
225 : LDA  7, 0(6) ;  Return to caller
226 : LDA 4, 8(5) ; Base of callee frame
227 : LD   1, 5(5) ;  Load parameter 'root' into R1
228 : ST 1, 1(4) ; Argument 0
229 : LD   1, 4(5) ;  Load parameter 'det' into R1
230 : ST 1, 2(4) ; Argument 1
231 : LDA 6, 235(0) ; Return address
232 : ST 6, 0(4) ; Store return in callee frame
233 : ADD 5, 4, 0 ; Push callee frame
234 : LDA 7, 539(0) ; Call ISROOT
235 : LD 1, 3(5) ; Load function result
236 : LDC 2, 8(0) ; Caller frame size
237 : SUB 5, 5, 2 ; Pop back to caller
238 : ADD  3, 1, 0 ;  Store left operand into temporary register
239 : LDA 4, 8(5) ; Base of callee frame
240 : LD   1, 5(5) ;  Load parameter 'root' into R1
241 : ADD  3, 1, 0 ;  Store left operand into temporary register
242 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
243 : ADD  2, 3, 0 ;  Restore left operand
244 : ADD  1, 2, 1 ;  R1 = left + right
245 : ST 1, 1(4) ; Argument 0
246 : LDA 6, 250(0) ; Return address
247 : ST 6, 0(4) ; Store return in callee frame
248 : ADD 5, 4, 0 ; Push callee frame
249 : LDA 7, 555(0) ; Call EVEN
250 : LD 1, 2(5) ; Load function result
251 : LDC 2, 8(0) ; Caller frame size
252 : SUB 5, 5, 2 ; Pop back to caller
253 : ADD  2, 3, 0 ;  Restore left operand
254 : MUL  1, 2, 1 ;  R1 = left AND right
255 : ADD  3, 1, 0 ;  Store left operand into temporary register
256 : LDA 4, 8(5) ; Base of callee frame
257 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
258 : ST 1, 1(4) ; Argument 0
259 : LDA 6, 263(0) ; Return address
260 : ST 6, 0(4) ; Store return in callee frame
261 : ADD 5, 4, 0 ; Push callee frame
262 : LDA 7, 337(0) ; Call isExcellent
263 : LD 1, 2(5) ; Load function result
264 : LDC 2, 8(0) ; Caller frame size
265 : SUB 5, 5, 2 ; Pop back to caller
266 : ADD  2, 3, 0 ;  Restore left operand
267 : MUL  1, 2, 1 ;  R1 = left AND right
268 : JEQ  1, 286(0) ;  If condition is false, jump to ELSE
269 : LDA 4, 8(5) ; Base of callee frame
270 : LD   1, 1(5) ;  Load parameter 'a' into R1
271 : ST 1, 1(4) ; Argument 0
272 : LD   1, 2(5) ;  Load parameter 'n' into R1
273 : ST 1, 2(4) ; Argument 1
274 : LD   1, 3(5) ;  Load parameter 'upper' into R1
275 : ST 1, 3(4) ; Argument 2
276 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
277 : ST 1, 4(4) ; Argument 3
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return in callee frame
280 : ADD 5, 4, 0 ; Push callee frame
281 : LDA 7, 307(0) ; Call printCandidateAndContinue
282 : LD 1, 5(5) ; Load function result
283 : LDC 2, 8(0) ; Caller frame size
284 : SUB 5, 5, 2 ; Pop back to caller
285 : LDA  7, 304(0) ;  Skip ELSE block
286 : LDA 4, 8(5) ; Base of callee frame
287 : LD   1, 1(5) ;  Load parameter 'a' into R1
288 : ADD  3, 1, 0 ;  Store left operand into temporary register
289 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
290 : ADD  2, 3, 0 ;  Restore left operand
291 : ADD  1, 2, 1 ;  R1 = left + right
292 : ST 1, 1(4) ; Argument 0
293 : LD   1, 2(5) ;  Load parameter 'n' into R1
294 : ST 1, 2(4) ; Argument 1
295 : LD   1, 3(5) ;  Load parameter 'upper' into R1
296 : ST 1, 3(4) ; Argument 2
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(4) ; Store return in callee frame
299 : ADD 5, 4, 0 ; Push callee frame
300 : LDA 7, 72(0) ; Call aLoop
301 : LD 1, 4(5) ; Load function result
302 : LDC 2, 8(0) ; Caller frame size
303 : SUB 5, 5, 2 ; Pop back to caller
304 : ST   1, 7(5) ;  Store function result into stack frame
305 : LD   6, 0(5) ;  Load return address
306 : LDA  7, 0(6) ;  Return to caller
307 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
308 : LDA 4, 6(5) ; Base of callee frame
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return addr in callee frame
311 : ADD 5, 4, 0 ; Push new frame
312 : LDA 7, 8(0) ; Call print
313 : LDC 2, 6(0) ; Caller frame size
314 : SUB 5, 5, 2 ; Pop frame
315 : ST   1, 5(5) ;  Store function result into stack frame
316 : LDA 4, 6(5) ; Base of callee frame
317 : LD   1, 1(5) ;  Load parameter 'a' into R1
318 : ADD  3, 1, 0 ;  Store left operand into temporary register
319 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
320 : ADD  2, 3, 0 ;  Restore left operand
321 : ADD  1, 2, 1 ;  R1 = left + right
322 : ST 1, 1(4) ; Argument 0
323 : LD   1, 2(5) ;  Load parameter 'n' into R1
324 : ST 1, 2(4) ; Argument 1
325 : LD   1, 3(5) ;  Load parameter 'upper' into R1
326 : ST 1, 3(4) ; Argument 2
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return in callee frame
329 : ADD 5, 4, 0 ; Push callee frame
330 : LDA 7, 72(0) ; Call aLoop
331 : LD 1, 4(5) ; Load function result
332 : LDC 2, 6(0) ; Caller frame size
333 : SUB 5, 5, 2 ; Pop back to caller
334 : ST   1, 5(5) ;  Store function result into stack frame
335 : LD   6, 0(5) ;  Load return address
336 : LDA  7, 0(6) ;  Return to caller
337 : LDA 4, 3(5) ; Base of callee frame
338 : LD   1, 1(5) ;  Load parameter 'n' into R1
339 : ST 1, 1(4) ; Argument 0
340 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
341 : LDA 4, 3(5) ; Base of callee frame
342 : LD   1, 1(5) ;  Load parameter 'n' into R1
343 : ST 1, 1(4) ; Argument 0
344 : LDA 6, 348(0) ; Return address
345 : ST 6, 0(4) ; Store return in callee frame
346 : ADD 5, 4, 0 ; Push callee frame
347 : LDA 7, 506(0) ; Call length
348 : LD 1, 2(5) ; Load function result
349 : LDC 2, 3(0) ; Caller frame size
350 : SUB 5, 5, 2 ; Pop back to caller
351 : ST 1, 2(4) ; Argument 1
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return in callee frame
354 : ADD 5, 4, 0 ; Push callee frame
355 : LDA 7, 362(0) ; Call isExcellentSwitch
356 : LD 1, 3(5) ; Load function result
357 : LDC 2, 3(0) ; Caller frame size
358 : SUB 5, 5, 2 ; Pop back to caller
359 : ST   1, 2(5) ;  Store function result into stack frame
360 : LD   6, 0(5) ;  Load return address
361 : LDA  7, 0(6) ;  Return to caller
362 : LDA 4, 4(5) ; Base of callee frame
363 : LD   1, 2(5) ;  Load parameter 'length' into R1
364 : ST 1, 1(4) ; Argument 0
365 : LDA 6, 369(0) ; Return address
366 : ST 6, 0(4) ; Store return in callee frame
367 : ADD 5, 4, 0 ; Push callee frame
368 : LDA 7, 742(0) ; Call ODD
369 : LD 1, 2(5) ; Load function result
370 : LDC 2, 4(0) ; Caller frame size
371 : SUB 5, 5, 2 ; Pop back to caller
372 : JEQ  1, 375(0) ;  If condition is false, jump to ELSE
373 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
374 : LDA  7, 415(0) ;  Skip ELSE block
375 : LD   1, 1(5) ;  Load parameter 'n' into R1
376 : ADD  3, 1, 0 ;  Store left operand into temporary register
377 : LDA 4, 4(5) ; Base of callee frame
378 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
379 : LDA 4, 4(5) ; Base of callee frame
380 : LD   1, 1(5) ;  Load parameter 'n' into R1
381 : ST 1, 1(4) ; Argument 0
382 : LDA 6, 386(0) ; Return address
383 : ST 6, 0(4) ; Store return in callee frame
384 : ADD 5, 4, 0 ; Push callee frame
385 : LDA 7, 474(0) ; Call a
386 : LD 1, 2(5) ; Load function result
387 : LDC 2, 4(0) ; Caller frame size
388 : SUB 5, 5, 2 ; Pop back to caller
389 : ST 1, 1(4) ; Argument 0
390 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
391 : LDA 4, 4(5) ; Base of callee frame
392 : LD   1, 1(5) ;  Load parameter 'n' into R1
393 : ST 1, 1(4) ; Argument 0
394 : LDA 6, 398(0) ; Return address
395 : ST 6, 0(4) ; Store return in callee frame
396 : ADD 5, 4, 0 ; Push callee frame
397 : LDA 7, 434(0) ; Call b
398 : LD 1, 2(5) ; Load function result
399 : LDC 2, 4(0) ; Caller frame size
400 : SUB 5, 5, 2 ; Pop back to caller
401 : ST 1, 2(4) ; Argument 1
402 : LDA 6, 406(0) ; Return address
403 : ST 6, 0(4) ; Store return in callee frame
404 : ADD 5, 4, 0 ; Push callee frame
405 : LDA 7, 418(0) ; Call excellentDiff
406 : LD 1, 3(5) ; Load function result
407 : LDC 2, 4(0) ; Caller frame size
408 : SUB 5, 5, 2 ; Pop back to caller
409 : ADD  2, 3, 0 ;  Restore left operand
410 : SUB  1, 2, 1 ;  left - right for equality check
411 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
412 : LDC  1, 0(0) ;  false
413 : LDA  7, 1(7) ;  skip setting true
414 : LDC  1, 1(0) ;  true
415 : ST   1, 3(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 2(5) ;  Load parameter 'b' into R1
419 : ADD  3, 1, 0 ;  Store left operand into temporary register
420 : LD   1, 2(5) ;  Load parameter 'b' into R1
421 : ADD  2, 3, 0 ;  Restore left operand
422 : MUL  1, 2, 1 ;  R1 = left * right
423 : ADD  3, 1, 0 ;  Store left operand into temporary register
424 : LD   1, 1(5) ;  Load parameter 'a' into R1
425 : ADD  3, 1, 0 ;  Store left operand into temporary register
426 : LD   1, 1(5) ;  Load parameter 'a' into R1
427 : ADD  2, 3, 0 ;  Restore left operand
428 : MUL  1, 2, 1 ;  R1 = left * right
429 : ADD  2, 3, 0 ;  Restore left operand
430 : SUB  1, 2, 1 ;  R1 = left - right
431 : ST   1, 3(5) ;  Store function result into stack frame
432 : LD   6, 0(5) ;  Load return address
433 : LDA  7, 0(6) ;  Return to caller
434 : LDA 4, 3(5) ; Base of callee frame
435 : LD   1, 1(5) ;  Load parameter 'n' into R1
436 : ST 1, 1(4) ; Argument 0
437 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
438 : LDA 4, 3(5) ; Base of callee frame
439 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
440 : ST 1, 1(4) ; Argument 0
441 : LDA 4, 3(5) ; Base of callee frame
442 : LD   1, 1(5) ;  Load parameter 'n' into R1
443 : ST 1, 1(4) ; Argument 0
444 : LDA 6, 448(0) ; Return address
445 : ST 6, 0(4) ; Store return in callee frame
446 : ADD 5, 4, 0 ; Push callee frame
447 : LDA 7, 506(0) ; Call length
448 : LD 1, 2(5) ; Load function result
449 : LDC 2, 3(0) ; Caller frame size
450 : SUB 5, 5, 2 ; Pop back to caller
451 : ADD  3, 1, 0 ;  Store left operand into temporary register
452 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
453 : ADD  2, 3, 0 ;  Restore left operand
454 : DIV  1, 2, 1 ;  R1 = left / right
455 : ST 1, 2(4) ; Argument 1
456 : LDA 6, 460(0) ; Return address
457 : ST 6, 0(4) ; Store return in callee frame
458 : ADD 5, 4, 0 ; Push callee frame
459 : LDA 7, 784(0) ; Call EXP
460 : LD 1, 3(5) ; Load function result
461 : LDC 2, 3(0) ; Caller frame size
462 : SUB 5, 5, 2 ; Pop back to caller
463 : ST 1, 2(4) ; Argument 1
464 : LDA 6, 468(0) ; Return address
465 : ST 6, 0(4) ; Store return in callee frame
466 : ADD 5, 4, 0 ; Push callee frame
467 : LDA 7, 819(0) ; Call MOD
468 : LD 1, 3(5) ; Load function result
469 : LDC 2, 3(0) ; Caller frame size
470 : SUB 5, 5, 2 ; Pop back to caller
471 : ST   1, 2(5) ;  Store function result into stack frame
472 : LD   6, 0(5) ;  Load return address
473 : LDA  7, 0(6) ;  Return to caller
474 : LD   1, 1(5) ;  Load parameter 'n' into R1
475 : ADD  3, 1, 0 ;  Store left operand into temporary register
476 : LDA 4, 3(5) ; Base of callee frame
477 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
478 : ST 1, 1(4) ; Argument 0
479 : LDA 4, 3(5) ; Base of callee frame
480 : LD   1, 1(5) ;  Load parameter 'n' into R1
481 : ST 1, 1(4) ; Argument 0
482 : LDA 6, 486(0) ; Return address
483 : ST 6, 0(4) ; Store return in callee frame
484 : ADD 5, 4, 0 ; Push callee frame
485 : LDA 7, 506(0) ; Call length
486 : LD 1, 2(5) ; Load function result
487 : LDC 2, 3(0) ; Caller frame size
488 : SUB 5, 5, 2 ; Pop back to caller
489 : ADD  3, 1, 0 ;  Store left operand into temporary register
490 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
491 : ADD  2, 3, 0 ;  Restore left operand
492 : DIV  1, 2, 1 ;  R1 = left / right
493 : ST 1, 2(4) ; Argument 1
494 : LDA 6, 498(0) ; Return address
495 : ST 6, 0(4) ; Store return in callee frame
496 : ADD 5, 4, 0 ; Push callee frame
497 : LDA 7, 784(0) ; Call EXP
498 : LD 1, 3(5) ; Load function result
499 : LDC 2, 3(0) ; Caller frame size
500 : SUB 5, 5, 2 ; Pop back to caller
501 : ADD  2, 3, 0 ;  Restore left operand
502 : DIV  1, 2, 1 ;  R1 = left / right
503 : ST   1, 2(5) ;  Store function result into stack frame
504 : LD   6, 0(5) ;  Load return address
505 : LDA  7, 0(6) ;  Return to caller
506 : LD   1, 1(5) ;  Load parameter 'n' into R1
507 : ADD  3, 1, 0 ;  Store left operand into temporary register
508 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
509 : ADD  2, 3, 0 ;  Restore left operand
510 : SUB  1, 2, 1 ;  left - right for less-than check
511 : JLT  1, 2(7) ;  If R1 < 0, jump to true
512 : LDC  1, 0(0) ;  false
513 : LDA  7, 1(7) ;  skip setting true
514 : LDC  1, 1(0) ;  true
515 : JEQ  1, 518(0) ;  If condition is false, jump to ELSE
516 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
517 : LDA  7, 536(0) ;  Skip ELSE block
518 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
519 : ADD  3, 1, 0 ;  Store left operand into temporary register
520 : LDA 4, 3(5) ; Base of callee frame
521 : LD   1, 1(5) ;  Load parameter 'n' into R1
522 : ADD  3, 1, 0 ;  Store left operand into temporary register
523 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
524 : ADD  2, 3, 0 ;  Restore left operand
525 : DIV  1, 2, 1 ;  R1 = left / right
526 : ST 1, 1(4) ; Argument 0
527 : LDA 6, 531(0) ; Return address
528 : ST 6, 0(4) ; Store return in callee frame
529 : ADD 5, 4, 0 ; Push callee frame
530 : LDA 7, 506(0) ; Call length
531 : LD 1, 2(5) ; Load function result
532 : LDC 2, 3(0) ; Caller frame size
533 : SUB 5, 5, 2 ; Pop back to caller
534 : ADD  2, 3, 0 ;  Restore left operand
535 : ADD  1, 2, 1 ;  R1 = left + right
536 : ST   1, 2(5) ;  Store function result into stack frame
537 : LD   6, 0(5) ;  Load return address
538 : LDA  7, 0(6) ;  Return to caller
539 : LD   1, 2(5) ;  Load parameter 'n' into R1
540 : ADD  3, 1, 0 ;  Store left operand into temporary register
541 : LD   1, 1(5) ;  Load parameter 'r' into R1
542 : ADD  3, 1, 0 ;  Store left operand into temporary register
543 : LD   1, 1(5) ;  Load parameter 'r' into R1
544 : ADD  2, 3, 0 ;  Restore left operand
545 : MUL  1, 2, 1 ;  R1 = left * right
546 : ADD  2, 3, 0 ;  Restore left operand
547 : SUB  1, 2, 1 ;  left - right for equality check
548 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
549 : LDC  1, 0(0) ;  false
550 : LDA  7, 1(7) ;  skip setting true
551 : LDC  1, 1(0) ;  true
552 : ST   1, 3(5) ;  Store function result into stack frame
553 : LD   6, 0(5) ;  Load return address
554 : LDA  7, 0(6) ;  Return to caller
555 : LD   1, 1(5) ;  Load parameter 'n' into R1
556 : ADD  3, 1, 0 ;  Store left operand into temporary register
557 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
558 : ADD  3, 1, 0 ;  Store left operand into temporary register
559 : LD   1, 1(5) ;  Load parameter 'n' into R1
560 : ADD  3, 1, 0 ;  Store left operand into temporary register
561 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
562 : ADD  2, 3, 0 ;  Restore left operand
563 : DIV  1, 2, 1 ;  R1 = left / right
564 : ADD  2, 3, 0 ;  Restore left operand
565 : MUL  1, 2, 1 ;  R1 = left * right
566 : ADD  2, 3, 0 ;  Restore left operand
567 : SUB  1, 2, 1 ;  left - right for equality check
568 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
569 : LDC  1, 0(0) ;  false
570 : LDA  7, 1(7) ;  skip setting true
571 : LDC  1, 1(0) ;  true
572 : ST   1, 2(5) ;  Store function result into stack frame
573 : LD   6, 0(5) ;  Load return address
574 : LDA  7, 0(6) ;  Return to caller
575 : LDA 4, 6(5) ; Base of callee frame
576 : LD   1, 4(5) ;  Load parameter 'mid' into R1
577 : ADD  3, 1, 0 ;  Store left operand into temporary register
578 : LD   1, 4(5) ;  Load parameter 'mid' into R1
579 : ADD  2, 3, 0 ;  Restore left operand
580 : MUL  1, 2, 1 ;  R1 = left * right
581 : ST 1, 1(4) ; Argument 0
582 : LD   1, 1(5) ;  Load parameter 'n' into R1
583 : ST 1, 2(4) ; Argument 1
584 : LDA 6, 588(0) ; Return address
585 : ST 6, 0(4) ; Store return in callee frame
586 : ADD 5, 4, 0 ; Push callee frame
587 : LDA 7, 718(0) ; Call LE
588 : LD 1, 3(5) ; Load function result
589 : LDC 2, 6(0) ; Caller frame size
590 : SUB 5, 5, 2 ; Pop back to caller
591 : JEQ  1, 607(0) ;  If condition is false, jump to ELSE
592 : LDA 4, 6(5) ; Base of callee frame
593 : LD   1, 1(5) ;  Load parameter 'n' into R1
594 : ST 1, 1(4) ; Argument 0
595 : LD   1, 4(5) ;  Load parameter 'mid' into R1
596 : ST 1, 2(4) ; Argument 1
597 : LD   1, 3(5) ;  Load parameter 'high' into R1
598 : ST 1, 3(4) ; Argument 2
599 : LDA 6, 603(0) ; Return address
600 : ST 6, 0(4) ; Store return in callee frame
601 : ADD 5, 4, 0 ; Push callee frame
602 : LDA 7, 624(0) ; Call SQRTSEARCH
603 : LD 1, 4(5) ; Load function result
604 : LDC 2, 6(0) ; Caller frame size
605 : SUB 5, 5, 2 ; Pop back to caller
606 : LDA  7, 621(0) ;  Skip ELSE block
607 : LDA 4, 6(5) ; Base of callee frame
608 : LD   1, 1(5) ;  Load parameter 'n' into R1
609 : ST 1, 1(4) ; Argument 0
610 : LD   1, 2(5) ;  Load parameter 'low' into R1
611 : ST 1, 2(4) ; Argument 1
612 : LD   1, 4(5) ;  Load parameter 'mid' into R1
613 : ST 1, 3(4) ; Argument 2
614 : LDA 6, 618(0) ; Return address
615 : ST 6, 0(4) ; Store return in callee frame
616 : ADD 5, 4, 0 ; Push callee frame
617 : LDA 7, 624(0) ; Call SQRTSEARCH
618 : LD 1, 4(5) ; Load function result
619 : LDC 2, 6(0) ; Caller frame size
620 : SUB 5, 5, 2 ; Pop back to caller
621 : ST   1, 5(5) ;  Store function result into stack frame
622 : LD   6, 0(5) ;  Load return address
623 : LDA  7, 0(6) ;  Return to caller
624 : LDA 4, 5(5) ; Base of callee frame
625 : LD   1, 3(5) ;  Load parameter 'high' into R1
626 : ST 1, 1(4) ; Argument 0
627 : LD   1, 2(5) ;  Load parameter 'low' into R1
628 : ADD  3, 1, 0 ;  Store left operand into temporary register
629 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
630 : ADD  2, 3, 0 ;  Restore left operand
631 : ADD  1, 2, 1 ;  R1 = left + right
632 : ST 1, 2(4) ; Argument 1
633 : LDA 6, 637(0) ; Return address
634 : ST 6, 0(4) ; Store return in callee frame
635 : ADD 5, 4, 0 ; Push callee frame
636 : LDA 7, 718(0) ; Call LE
637 : LD 1, 3(5) ; Load function result
638 : LDC 2, 5(0) ; Caller frame size
639 : SUB 5, 5, 2 ; Pop back to caller
640 : JEQ  1, 674(0) ;  If condition is false, jump to ELSE
641 : LDA 4, 5(5) ; Base of callee frame
642 : LD   1, 1(5) ;  Load parameter 'n' into R1
643 : ADD  3, 1, 0 ;  Store left operand into temporary register
644 : LD   1, 2(5) ;  Load parameter 'low' into R1
645 : ADD  3, 1, 0 ;  Store left operand into temporary register
646 : LD   1, 2(5) ;  Load parameter 'low' into R1
647 : ADD  2, 3, 0 ;  Restore left operand
648 : MUL  1, 2, 1 ;  R1 = left * right
649 : ADD  2, 3, 0 ;  Restore left operand
650 : SUB  1, 2, 1 ;  R1 = left - right
651 : ST 1, 1(4) ; Argument 0
652 : LD   1, 3(5) ;  Load parameter 'high' into R1
653 : ADD  3, 1, 0 ;  Store left operand into temporary register
654 : LD   1, 3(5) ;  Load parameter 'high' into R1
655 : ADD  2, 3, 0 ;  Restore left operand
656 : MUL  1, 2, 1 ;  R1 = left * right
657 : ADD  3, 1, 0 ;  Store left operand into temporary register
658 : LD   1, 1(5) ;  Load parameter 'n' into R1
659 : ADD  2, 3, 0 ;  Restore left operand
660 : SUB  1, 2, 1 ;  R1 = left - right
661 : ST 1, 2(4) ; Argument 1
662 : LDA 6, 666(0) ; Return address
663 : ST 6, 0(4) ; Store return in callee frame
664 : ADD 5, 4, 0 ; Push callee frame
665 : LDA 7, 718(0) ; Call LE
666 : LD 1, 3(5) ; Load function result
667 : LDC 2, 5(0) ; Caller frame size
668 : SUB 5, 5, 2 ; Pop back to caller
669 : JEQ  1, 672(0) ;  If condition is false, jump to ELSE
670 : LD   1, 2(5) ;  Load parameter 'low' into R1
671 : LDA  7, 673(0) ;  Skip ELSE block
672 : LD   1, 3(5) ;  Load parameter 'high' into R1
673 : LDA  7, 698(0) ;  Skip ELSE block
674 : LDA 4, 5(5) ; Base of callee frame
675 : LD   1, 1(5) ;  Load parameter 'n' into R1
676 : ST 1, 1(4) ; Argument 0
677 : LD   1, 2(5) ;  Load parameter 'low' into R1
678 : ST 1, 2(4) ; Argument 1
679 : LD   1, 3(5) ;  Load parameter 'high' into R1
680 : ST 1, 3(4) ; Argument 2
681 : LD   1, 2(5) ;  Load parameter 'low' into R1
682 : ADD  3, 1, 0 ;  Store left operand into temporary register
683 : LD   1, 3(5) ;  Load parameter 'high' into R1
684 : ADD  2, 3, 0 ;  Restore left operand
685 : ADD  1, 2, 1 ;  R1 = left + right
686 : ADD  3, 1, 0 ;  Store left operand into temporary register
687 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
688 : ADD  2, 3, 0 ;  Restore left operand
689 : DIV  1, 2, 1 ;  R1 = left / right
690 : ST 1, 4(4) ; Argument 3
691 : LDA 6, 695(0) ; Return address
692 : ST 6, 0(4) ; Store return in callee frame
693 : ADD 5, 4, 0 ; Push callee frame
694 : LDA 7, 575(0) ; Call SQRTSPLIT
695 : LD 1, 5(5) ; Load function result
696 : LDC 2, 5(0) ; Caller frame size
697 : SUB 5, 5, 2 ; Pop back to caller
698 : ST   1, 4(5) ;  Store function result into stack frame
699 : LD   6, 0(5) ;  Load return address
700 : LDA  7, 0(6) ;  Return to caller
701 : LDA 4, 3(5) ; Base of callee frame
702 : LD   1, 1(5) ;  Load parameter 'n' into R1
703 : ST 1, 1(4) ; Argument 0
704 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
705 : ST 1, 2(4) ; Argument 1
706 : LD   1, 1(5) ;  Load parameter 'n' into R1
707 : ST 1, 3(4) ; Argument 2
708 : LDA 6, 712(0) ; Return address
709 : ST 6, 0(4) ; Store return in callee frame
710 : ADD 5, 4, 0 ; Push callee frame
711 : LDA 7, 624(0) ; Call SQRTSEARCH
712 : LD 1, 4(5) ; Load function result
713 : LDC 2, 3(0) ; Caller frame size
714 : SUB 5, 5, 2 ; Pop back to caller
715 : ST   1, 2(5) ;  Store function result into stack frame
716 : LD   6, 0(5) ;  Load return address
717 : LDA  7, 0(6) ;  Return to caller
718 : LD   1, 1(5) ;  Load parameter 'p' into R1
719 : ADD  3, 1, 0 ;  Store left operand into temporary register
720 : LD   1, 2(5) ;  Load parameter 'q' into R1
721 : ADD  2, 3, 0 ;  Restore left operand
722 : SUB  1, 2, 1 ;  left - right for less-than check
723 : JLT  1, 2(7) ;  If R1 < 0, jump to true
724 : LDC  1, 0(0) ;  false
725 : LDA  7, 1(7) ;  skip setting true
726 : LDC  1, 1(0) ;  true
727 : ADD  3, 1, 0 ;  Store left operand into temporary register
728 : LD   1, 1(5) ;  Load parameter 'p' into R1
729 : ADD  3, 1, 0 ;  Store left operand into temporary register
730 : LD   1, 2(5) ;  Load parameter 'q' into R1
731 : ADD  2, 3, 0 ;  Restore left operand
732 : SUB  1, 2, 1 ;  left - right for equality check
733 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
734 : LDC  1, 0(0) ;  false
735 : LDA  7, 1(7) ;  skip setting true
736 : LDC  1, 1(0) ;  true
737 : ADD  2, 3, 0 ;  Restore left operand
738 : ADD  1, 2, 1 ;  R1 = left OR right
739 : ST   1, 3(5) ;  Store function result into stack frame
740 : LD   6, 0(5) ;  Load return address
741 : LDA  7, 0(6) ;  Return to caller
742 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
743 : ADD  3, 1, 0 ;  Store left operand into temporary register
744 : LD   1, 1(5) ;  Load parameter 'n' into R1
745 : ADD  2, 3, 0 ;  Restore left operand
746 : SUB  1, 2, 1 ;  left - right for less-than check
747 : JLT  1, 2(7) ;  If R1 < 0, jump to true
748 : LDC  1, 0(0) ;  false
749 : LDA  7, 1(7) ;  skip setting true
750 : LDC  1, 1(0) ;  true
751 : JEQ  1, 770(0) ;  If condition is false, jump to ELSE
752 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
753 : ADD  3, 1, 0 ;  Store left operand into temporary register
754 : LD   1, 1(5) ;  Load parameter 'n' into R1
755 : ADD  3, 1, 0 ;  Store left operand into temporary register
756 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
757 : ADD  2, 3, 0 ;  Restore left operand
758 : DIV  1, 2, 1 ;  R1 = left / right
759 : ADD  2, 3, 0 ;  Restore left operand
760 : MUL  1, 2, 1 ;  R1 = left * right
761 : ADD  3, 1, 0 ;  Store left operand into temporary register
762 : LD   1, 1(5) ;  Load parameter 'n' into R1
763 : ADD  2, 3, 0 ;  Restore left operand
764 : SUB  1, 2, 1 ;  left - right for less-than check
765 : JLT  1, 2(7) ;  If R1 < 0, jump to true
766 : LDC  1, 0(0) ;  false
767 : LDA  7, 1(7) ;  skip setting true
768 : LDC  1, 1(0) ;  true
769 : LDA  7, 781(0) ;  Skip ELSE block
770 : LDA 4, 3(5) ; Base of callee frame
771 : LD   1, 1(5) ;  Load parameter 'n' into R1
772 : SUB  1, 0, 1 ;  Negate value in R1
773 : ST 1, 1(4) ; Argument 0
774 : LDA 6, 778(0) ; Return address
775 : ST 6, 0(4) ; Store return in callee frame
776 : ADD 5, 4, 0 ; Push callee frame
777 : LDA 7, 742(0) ; Call ODD
778 : LD 1, 2(5) ; Load function result
779 : LDC 2, 3(0) ; Caller frame size
780 : SUB 5, 5, 2 ; Pop back to caller
781 : ST   1, 2(5) ;  Store function result into stack frame
782 : LD   6, 0(5) ;  Load return address
783 : LDA  7, 0(6) ;  Return to caller
784 : LD   1, 2(5) ;  Load parameter 'n' into R1
785 : ADD  3, 1, 0 ;  Store left operand into temporary register
786 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
787 : ADD  2, 3, 0 ;  Restore left operand
788 : SUB  1, 2, 1 ;  left - right for equality check
789 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
790 : LDC  1, 0(0) ;  false
791 : LDA  7, 1(7) ;  skip setting true
792 : LDC  1, 1(0) ;  true
793 : JEQ  1, 796(0) ;  If condition is false, jump to ELSE
794 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
795 : LDA  7, 816(0) ;  Skip ELSE block
796 : LD   1, 1(5) ;  Load parameter 'm' into R1
797 : ADD  3, 1, 0 ;  Store left operand into temporary register
798 : LDA 4, 4(5) ; Base of callee frame
799 : LD   1, 1(5) ;  Load parameter 'm' into R1
800 : ST 1, 1(4) ; Argument 0
801 : LD   1, 2(5) ;  Load parameter 'n' into R1
802 : ADD  3, 1, 0 ;  Store left operand into temporary register
803 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
804 : ADD  2, 3, 0 ;  Restore left operand
805 : SUB  1, 2, 1 ;  R1 = left - right
806 : ST 1, 2(4) ; Argument 1
807 : LDA 6, 811(0) ; Return address
808 : ST 6, 0(4) ; Store return in callee frame
809 : ADD 5, 4, 0 ; Push callee frame
810 : LDA 7, 784(0) ; Call EXP
811 : LD 1, 3(5) ; Load function result
812 : LDC 2, 4(0) ; Caller frame size
813 : SUB 5, 5, 2 ; Pop back to caller
814 : ADD  2, 3, 0 ;  Restore left operand
815 : MUL  1, 2, 1 ;  R1 = left * right
816 : ST   1, 3(5) ;  Store function result into stack frame
817 : LD   6, 0(5) ;  Load return address
818 : LDA  7, 0(6) ;  Return to caller
819 : LD   1, 1(5) ;  Load parameter 'm' into R1
820 : ADD  3, 1, 0 ;  Store left operand into temporary register
821 : LD   1, 2(5) ;  Load parameter 'n' into R1
822 : ADD  3, 1, 0 ;  Store left operand into temporary register
823 : LD   1, 1(5) ;  Load parameter 'm' into R1
824 : ADD  3, 1, 0 ;  Store left operand into temporary register
825 : LD   1, 2(5) ;  Load parameter 'n' into R1
826 : ADD  2, 3, 0 ;  Restore left operand
827 : DIV  1, 2, 1 ;  R1 = left / right
828 : ADD  2, 3, 0 ;  Restore left operand
829 : MUL  1, 2, 1 ;  R1 = left * right
830 : ADD  2, 3, 0 ;  Restore left operand
831 : SUB  1, 2, 1 ;  R1 = left - right
832 : ST   1, 3(5) ;  Store function result into stack frame
833 : LD   6, 0(5) ;  Load return address
834 : LDA  7, 0(6) ;  Return to caller
