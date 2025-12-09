0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 3(7) ;  Calculate return address
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
17 : LDA 7, 200(0) ; Call SQRT
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
35 : LDA 7, 218(0) ; Call ODD
36 : LD   1, 2(5) ;  Load function result
37 : LDC   2, 3(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 2(5) ; Store result into caller’s frame
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LDA 4, 6(5) ; Base of callee frame
45 : LD   1, 4(5) ;  Load parameter 'mid' into R1
46 : ADD  3, 1, 0 ;  Store left operand into temporary register
47 : LD   1, 4(5) ;  Load parameter 'mid' into R1
48 : ADD  2, 3, 0 ;  Restore left operand
49 : MUL  1, 2, 1 ;  R1 = left * right
50 : ST 1, 1(4) ; Store argument 0 in callee
51 : LD   1, 1(5) ;  Load parameter 'n' into R1
52 : ST 1, 2(4) ; Store argument 1 in callee
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame
56 : LDA 7, 515(0) ; Call LE
57 : LD   1, 3(5) ;  Load function result
58 : LDC   2, 6(0) ;  Caller frame size
59 : SUB   5, 5, 2 ;  Pop back to caller
60 : SUB   4, 4, 2 ;  Pop back to caller
61 : JEQ  1, 78(0) ;  If condition is false, jump to ELSE
62 : LDA 4, 6(5) ; Base of callee frame
63 : LD   1, 1(5) ;  Load parameter 'n' into R1
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LD   1, 4(5) ;  Load parameter 'mid' into R1
66 : ST 1, 2(4) ; Store argument 1 in callee
67 : LD   1, 3(5) ;  Load parameter 'high' into R1
68 : ST 1, 3(4) ; Store argument 2 in callee
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame
72 : LDA 7, 96(0) ; Call SQRTSEARCH
73 : LD   1, 4(5) ;  Load function result
74 : LDC   2, 6(0) ;  Caller frame size
75 : SUB   5, 5, 2 ;  Pop back to caller
76 : SUB   4, 4, 2 ;  Pop back to caller
77 : LDA  7, 93(0) ;  Skip ELSE block
78 : LDA 4, 6(5) ; Base of callee frame
79 : LD   1, 1(5) ;  Load parameter 'n' into R1
80 : ST 1, 1(4) ; Store argument 0 in callee
81 : LD   1, 2(5) ;  Load parameter 'low' into R1
82 : ST 1, 2(4) ; Store argument 1 in callee
83 : LD   1, 4(5) ;  Load parameter 'mid' into R1
84 : ST 1, 3(4) ; Store argument 2 in callee
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame
88 : LDA 7, 96(0) ; Call SQRTSEARCH
89 : LD   1, 4(5) ;  Load function result
90 : LDC   2, 6(0) ;  Caller frame size
91 : SUB   5, 5, 2 ;  Pop back to caller
92 : SUB   4, 4, 2 ;  Pop back to caller
93 : ST   1, 5(5) ;  Store function result into stack frame
94 : LD   6, 0(5) ;  Load return address
95 : LDA  7, 0(6) ;  Return to caller
96 : LDA 4, 5(5) ; Base of callee frame
97 : LD   1, 3(5) ;  Load parameter 'high' into R1
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LD   1, 2(5) ;  Load parameter 'low' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : ST 1, 2(4) ; Store argument 1 in callee
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame
108 : LDA 7, 515(0) ; Call LE
109 : LD   1, 3(5) ;  Load function result
110 : LDC   2, 5(0) ;  Caller frame size
111 : SUB   5, 5, 2 ;  Pop back to caller
112 : SUB   4, 4, 2 ;  Pop back to caller
113 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
114 : LDA 4, 5(5) ; Base of callee frame
115 : LD   1, 1(5) ;  Load parameter 'n' into R1
116 : ADD  3, 1, 0 ;  Store left operand into temporary register
117 : LDA 4, 5(5) ; Base of callee frame
118 : LD   1, 2(5) ;  Load parameter 'low' into R1
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD   1, 2(5) ;  Load parameter 'low' into R1
121 : ST 1, 2(4) ; Store argument 1 in callee
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return in callee frame
124 : ADD 5, 4, 0 ; Push callee frame
125 : LDA 7, 439(0) ; Call TIMES
126 : LD   1, 3(5) ;  Load function result
127 : LDC   2, 5(0) ;  Caller frame size
128 : SUB   5, 5, 2 ;  Pop back to caller
129 : SUB   4, 4, 2 ;  Pop back to caller
130 : ADD  2, 3, 0 ;  Restore left operand
131 : SUB  1, 2, 1 ;  R1 = left - right
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LDA 4, 5(5) ; Base of callee frame
134 : LD   1, 3(5) ;  Load parameter 'high' into R1
135 : ST 1, 1(4) ; Store argument 0 in callee
136 : LD   1, 3(5) ;  Load parameter 'high' into R1
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 439(0) ; Call TIMES
142 : LD   1, 3(5) ;  Load function result
143 : LDC   2, 5(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : SUB   4, 4, 2 ;  Pop back to caller
146 : ADD  3, 1, 0 ;  Store left operand into temporary register
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : ADD  2, 3, 0 ;  Restore left operand
149 : SUB  1, 2, 1 ;  R1 = left - right
150 : ST 1, 2(4) ; Store argument 1 in callee
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return in callee frame
153 : ADD 5, 4, 0 ; Push callee frame
154 : LDA 7, 515(0) ; Call LE
155 : LD   1, 3(5) ;  Load function result
156 : LDC   2, 5(0) ;  Caller frame size
157 : SUB   5, 5, 2 ;  Pop back to caller
158 : SUB   4, 4, 2 ;  Pop back to caller
159 : JEQ  1, 162(0) ;  If condition is false, jump to ELSE
160 : LD   1, 2(5) ;  Load parameter 'low' into R1
161 : LDA  7, 163(0) ;  Skip ELSE block
162 : LD   1, 3(5) ;  Load parameter 'high' into R1
163 : LDA  7, 197(0) ;  Skip ELSE block
164 : LDA 4, 5(5) ; Base of callee frame
165 : LD   1, 1(5) ;  Load parameter 'n' into R1
166 : ST 1, 1(4) ; Store argument 0 in callee
167 : LD   1, 2(5) ;  Load parameter 'low' into R1
168 : ST 1, 2(4) ; Store argument 1 in callee
169 : LD   1, 3(5) ;  Load parameter 'high' into R1
170 : ST 1, 3(4) ; Store argument 2 in callee
171 : LDA 4, 5(5) ; Base of callee frame
172 : LD   1, 2(5) ;  Load parameter 'low' into R1
173 : ST 1, 1(4) ; Store argument 0 in callee
174 : LD   1, 3(5) ;  Load parameter 'high' into R1
175 : ST 1, 2(4) ; Store argument 1 in callee
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame
179 : LDA 7, 455(0) ; Call PLUS
180 : LD   1, 3(5) ;  Load function result
181 : LDC   2, 5(0) ;  Caller frame size
182 : SUB   5, 5, 2 ;  Pop back to caller
183 : SUB   4, 4, 2 ;  Pop back to caller
184 : ADD  3, 1, 0 ;  Store left operand into temporary register
185 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
186 : ADD  2, 3, 0 ;  Restore left operand
187 : DIV  1, 2, 1 ;  R1 = left / right
188 : ST 1, 4(4) ; Store argument 3 in callee
189 : LDA 6, 193(0) ; Return address
190 : ST 6, 0(4) ; Store return in callee frame
191 : ADD 5, 4, 0 ; Push callee frame
192 : LDA 7, 44(0) ; Call SQRTSPLIT
193 : LD   1, 5(5) ;  Load function result
194 : LDC   2, 5(0) ;  Caller frame size
195 : SUB   5, 5, 2 ;  Pop back to caller
196 : SUB   4, 4, 2 ;  Pop back to caller
197 : ST   1, 4(5) ;  Store function result into stack frame
198 : LD   6, 0(5) ;  Load return address
199 : LDA  7, 0(6) ;  Return to caller
200 : LDA 4, 3(5) ; Base of callee frame
201 : LD   1, 1(5) ;  Load parameter 'n' into R1
202 : ST 1, 1(4) ; Store argument 0 in callee
203 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
204 : ST 1, 2(4) ; Store argument 1 in callee
205 : LD   1, 1(5) ;  Load parameter 'n' into R1
206 : ST 1, 3(4) ; Store argument 2 in callee
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return in callee frame
209 : ADD 5, 4, 0 ; Push callee frame
210 : LDA 7, 96(0) ; Call SQRTSEARCH
211 : LD   1, 4(5) ;  Load function result
212 : LDC   2, 3(0) ;  Caller frame size
213 : SUB   5, 5, 2 ;  Pop back to caller
214 : SUB   4, 4, 2 ;  Pop back to caller
215 : ST   1, 2(5) ;  Store function result into stack frame
216 : LD   6, 0(5) ;  Load return address
217 : LDA  7, 0(6) ;  Return to caller
218 : LDA 4, 3(5) ; Base of callee frame
219 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
220 : ST 1, 1(4) ; Store argument 0 in callee
221 : LD   1, 1(5) ;  Load parameter 'n' into R1
222 : ST 1, 2(4) ; Store argument 1 in callee
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame
226 : LDA 7, 515(0) ; Call LE
227 : LD   1, 3(5) ;  Load function result
228 : LDC   2, 3(0) ;  Caller frame size
229 : SUB   5, 5, 2 ;  Pop back to caller
230 : SUB   4, 4, 2 ;  Pop back to caller
231 : JEQ  1, 274(0) ;  If condition is false, jump to ELSE
232 : LDA 4, 3(5) ; Base of callee frame
233 : LD   1, 1(5) ;  Load parameter 'n' into R1
234 : ST 1, 1(4) ; Store argument 0 in callee
235 : LDA 4, 3(5) ; Base of callee frame
236 : LD   1, 1(5) ;  Load parameter 'n' into R1
237 : ST 1, 1(4) ; Store argument 0 in callee
238 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
239 : ST 1, 2(4) ; Store argument 1 in callee
240 : LDA 6, 244(0) ; Return address
241 : ST 6, 0(4) ; Store return in callee frame
242 : ADD 5, 4, 0 ; Push callee frame
243 : LDA 7, 431(0) ; Call DIV
244 : LD   1, 3(5) ;  Load function result
245 : LDC   2, 3(0) ;  Caller frame size
246 : SUB   5, 5, 2 ;  Pop back to caller
247 : SUB   4, 4, 2 ;  Pop back to caller
248 : ADD  3, 1, 0 ;  Store left operand into temporary register
249 : LDA 4, 3(5) ; Base of callee frame
250 : LD   1, 1(5) ;  Load parameter 'n' into R1
251 : ST 1, 1(4) ; Store argument 0 in callee
252 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
253 : ST 1, 2(4) ; Store argument 1 in callee
254 : LDA 6, 258(0) ; Return address
255 : ST 6, 0(4) ; Store return in callee frame
256 : ADD 5, 4, 0 ; Push callee frame
257 : LDA 7, 431(0) ; Call DIV
258 : LD   1, 3(5) ;  Load function result
259 : LDC   2, 3(0) ;  Caller frame size
260 : SUB   5, 5, 2 ;  Pop back to caller
261 : SUB   4, 4, 2 ;  Pop back to caller
262 : ADD  2, 3, 0 ;  Restore left operand
263 : ADD  1, 2, 1 ;  R1 = left + right
264 : ST 1, 2(4) ; Store argument 1 in callee
265 : LDA 6, 269(0) ; Return address
266 : ST 6, 0(4) ; Store return in callee frame
267 : ADD 5, 4, 0 ; Push callee frame
268 : LDA 7, 479(0) ; Call GT
269 : LD   1, 3(5) ;  Load function result
270 : LDC   2, 3(0) ;  Caller frame size
271 : SUB   5, 5, 2 ;  Pop back to caller
272 : SUB   4, 4, 2 ;  Pop back to caller
273 : LDA  7, 345(0) ;  Skip ELSE block
274 : LDA 4, 3(5) ; Base of callee frame
275 : LDA 4, 3(5) ; Base of callee frame
276 : LD   1, 1(5) ;  Load parameter 'n' into R1
277 : ST 1, 1(4) ; Store argument 0 in callee
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return in callee frame
280 : ADD 5, 4, 0 ; Push callee frame
281 : LDA 7, 426(0) ; Call NEG
282 : LD   1, 2(5) ;  Load function result
283 : LDC   2, 3(0) ;  Caller frame size
284 : SUB   5, 5, 2 ;  Pop back to caller
285 : SUB   4, 4, 2 ;  Pop back to caller
286 : ST 1, 1(4) ; Store argument 0 in callee
287 : LDA 4, 3(5) ; Base of callee frame
288 : LDA 4, 3(5) ; Base of callee frame
289 : LD   1, 1(5) ;  Load parameter 'n' into R1
290 : ST 1, 1(4) ; Store argument 0 in callee
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame
294 : LDA 7, 426(0) ; Call NEG
295 : LD   1, 2(5) ;  Load function result
296 : LDC   2, 3(0) ;  Caller frame size
297 : SUB   5, 5, 2 ;  Pop back to caller
298 : SUB   4, 4, 2 ;  Pop back to caller
299 : ST 1, 1(4) ; Store argument 0 in callee
300 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
301 : ST 1, 2(4) ; Store argument 1 in callee
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame
305 : LDA 7, 431(0) ; Call DIV
306 : LD   1, 3(5) ;  Load function result
307 : LDC   2, 3(0) ;  Caller frame size
308 : SUB   5, 5, 2 ;  Pop back to caller
309 : SUB   4, 4, 2 ;  Pop back to caller
310 : ADD  3, 1, 0 ;  Store left operand into temporary register
311 : LDA 4, 3(5) ; Base of callee frame
312 : LDA 4, 3(5) ; Base of callee frame
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : ST 1, 1(4) ; Store argument 0 in callee
315 : LDA 6, 319(0) ; Return address
316 : ST 6, 0(4) ; Store return in callee frame
317 : ADD 5, 4, 0 ; Push callee frame
318 : LDA 7, 426(0) ; Call NEG
319 : LD   1, 2(5) ;  Load function result
320 : LDC   2, 3(0) ;  Caller frame size
321 : SUB   5, 5, 2 ;  Pop back to caller
322 : SUB   4, 4, 2 ;  Pop back to caller
323 : ST 1, 1(4) ; Store argument 0 in callee
324 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
325 : ST 1, 2(4) ; Store argument 1 in callee
326 : LDA 6, 330(0) ; Return address
327 : ST 6, 0(4) ; Store return in callee frame
328 : ADD 5, 4, 0 ; Push callee frame
329 : LDA 7, 431(0) ; Call DIV
330 : LD   1, 3(5) ;  Load function result
331 : LDC   2, 3(0) ;  Caller frame size
332 : SUB   5, 5, 2 ;  Pop back to caller
333 : SUB   4, 4, 2 ;  Pop back to caller
334 : ADD  2, 3, 0 ;  Restore left operand
335 : ADD  1, 2, 1 ;  R1 = left + right
336 : ST 1, 2(4) ; Store argument 1 in callee
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return in callee frame
339 : ADD 5, 4, 0 ; Push callee frame
340 : LDA 7, 479(0) ; Call GT
341 : LD   1, 3(5) ;  Load function result
342 : LDC   2, 3(0) ;  Caller frame size
343 : SUB   5, 5, 2 ;  Pop back to caller
344 : SUB   4, 4, 2 ;  Pop back to caller
345 : ST   1, 2(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LD   1, 2(5) ;  Load parameter 'n' into R1
349 : ADD  3, 1, 0 ;  Store left operand into temporary register
350 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
351 : ADD  2, 3, 0 ;  Restore left operand
352 : SUB  1, 2, 1 ;  left - right for equality check
353 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
354 : LDC  1, 0(0) ;  false
355 : LDA  7, 1(7) ;  skip setting true
356 : LDC  1, 1(0) ;  true
357 : JEQ  1, 360(0) ;  If condition is false, jump to ELSE
358 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
359 : LDA  7, 381(0) ;  Skip ELSE block
360 : LD   1, 1(5) ;  Load parameter 'm' into R1
361 : ADD  3, 1, 0 ;  Store left operand into temporary register
362 : LDA 4, 4(5) ; Base of callee frame
363 : LD   1, 1(5) ;  Load parameter 'm' into R1
364 : ST 1, 1(4) ; Store argument 0 in callee
365 : LD   1, 2(5) ;  Load parameter 'n' into R1
366 : ADD  3, 1, 0 ;  Store left operand into temporary register
367 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
368 : ADD  2, 3, 0 ;  Restore left operand
369 : SUB  1, 2, 1 ;  R1 = left - right
370 : ST 1, 2(4) ; Store argument 1 in callee
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return in callee frame
373 : ADD 5, 4, 0 ; Push callee frame
374 : LDA 7, 348(0) ; Call EXP
375 : LD   1, 3(5) ;  Load function result
376 : LDC   2, 4(0) ;  Caller frame size
377 : SUB   5, 5, 2 ;  Pop back to caller
378 : SUB   4, 4, 2 ;  Pop back to caller
379 : ADD  2, 3, 0 ;  Restore left operand
380 : MUL  1, 2, 1 ;  R1 = left * right
381 : ST   1, 3(5) ;  Store function result into stack frame
382 : LD   6, 0(5) ;  Load return address
383 : LDA  7, 0(6) ;  Return to caller
384 : LD   1, 1(5) ;  Load parameter 'm' into R1
385 : ADD  3, 1, 0 ;  Store left operand into temporary register
386 : LD   1, 1(5) ;  Load parameter 'm' into R1
387 : ADD  3, 1, 0 ;  Store left operand into temporary register
388 : LD   1, 2(5) ;  Load parameter 'n' into R1
389 : ADD  2, 3, 0 ;  Restore left operand
390 : DIV  1, 2, 1 ;  R1 = left / right
391 : ADD  3, 1, 0 ;  Store left operand into temporary register
392 : LD   1, 2(5) ;  Load parameter 'n' into R1
393 : ADD  2, 3, 0 ;  Restore left operand
394 : MUL  1, 2, 1 ;  R1 = left * right
395 : ADD  2, 3, 0 ;  Restore left operand
396 : SUB  1, 2, 1 ;  R1 = left - right
397 : ST   1, 3(5) ;  Store function result into stack frame
398 : LD   6, 0(5) ;  Load return address
399 : LDA  7, 0(6) ;  Return to caller
400 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
401 : ADD  3, 1, 0 ;  Store left operand into temporary register
402 : LD   1, 1(5) ;  Load parameter 'n' into R1
403 : ADD  2, 3, 0 ;  Restore left operand
404 : SUB  1, 2, 1 ;  left - right for less-than check
405 : JLT  1, 3(7) ;  If R1 < 0, jump to true
406 : LDC  1, 0(0) ;  false
407 : LDA  7, 1(7) ;  skip setting true
408 : LDC  1, 1(0) ;  true
409 : JEQ  1, 412(0) ;  If condition is false, jump to ELSE
410 : LD   1, 1(5) ;  Load parameter 'n' into R1
411 : LDA  7, 423(0) ;  Skip ELSE block
412 : LDA 4, 3(5) ; Base of callee frame
413 : LD   1, 1(5) ;  Load parameter 'n' into R1
414 : ST 1, 1(4) ; Store argument 0 in callee
415 : LDA 6, 419(0) ; Return address
416 : ST 6, 0(4) ; Store return in callee frame
417 : ADD 5, 4, 0 ; Push callee frame
418 : LDA 7, 426(0) ; Call NEG
419 : LD   1, 2(5) ;  Load function result
420 : LDC   2, 3(0) ;  Caller frame size
421 : SUB   5, 5, 2 ;  Pop back to caller
422 : SUB   4, 4, 2 ;  Pop back to caller
423 : ST   1, 2(5) ;  Store function result into stack frame
424 : LD   6, 0(5) ;  Load return address
425 : LDA  7, 0(6) ;  Return to caller
426 : LD   1, 1(5) ;  Load parameter 'n' into R1
427 : SUB  1, 0, 1 ;  Negate value in R1
428 : ST   1, 2(5) ;  Store function result into stack frame
429 : LD   6, 0(5) ;  Load return address
430 : LDA  7, 0(6) ;  Return to caller
431 : LD   1, 1(5) ;  Load parameter 'p' into R1
432 : ADD  3, 1, 0 ;  Store left operand into temporary register
433 : LD   1, 2(5) ;  Load parameter 'q' into R1
434 : ADD  2, 3, 0 ;  Restore left operand
435 : DIV  1, 2, 1 ;  R1 = left / right
436 : ST   1, 3(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 1(5) ;  Load parameter 'p' into R1
440 : ADD  3, 1, 0 ;  Store left operand into temporary register
441 : LD   1, 2(5) ;  Load parameter 'q' into R1
442 : ADD  2, 3, 0 ;  Restore left operand
443 : MUL  1, 2, 1 ;  R1 = left * right
444 : ST   1, 3(5) ;  Store function result into stack frame
445 : LD   6, 0(5) ;  Load return address
446 : LDA  7, 0(6) ;  Return to caller
447 : LD   1, 1(5) ;  Load parameter 'p' into R1
448 : ADD  3, 1, 0 ;  Store left operand into temporary register
449 : LD   1, 2(5) ;  Load parameter 'q' into R1
450 : ADD  2, 3, 0 ;  Restore left operand
451 : SUB  1, 2, 1 ;  R1 = left - right
452 : ST   1, 3(5) ;  Store function result into stack frame
453 : LD   6, 0(5) ;  Load return address
454 : LDA  7, 0(6) ;  Return to caller
455 : LD   1, 1(5) ;  Load parameter 'p' into R1
456 : ADD  3, 1, 0 ;  Store left operand into temporary register
457 : LD   1, 2(5) ;  Load parameter 'q' into R1
458 : ADD  2, 3, 0 ;  Restore left operand
459 : ADD  1, 2, 1 ;  R1 = left + right
460 : ST   1, 3(5) ;  Store function result into stack frame
461 : LD   6, 0(5) ;  Load return address
462 : LDA  7, 0(6) ;  Return to caller
463 : LD   1, 1(5) ;  Load parameter 'p' into R1
464 : JEQ  1, 467(0) ;  If condition is false, jump to ELSE
465 : LD   1, 2(5) ;  Load parameter 'q' into R1
466 : LDA  7, 468(0) ;  Skip ELSE block
467 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
468 : ST   1, 3(5) ;  Store function result into stack frame
469 : LD   6, 0(5) ;  Load return address
470 : LDA  7, 0(6) ;  Return to caller
471 : LD   1, 1(5) ;  Load parameter 'p' into R1
472 : ADD  3, 1, 0 ;  Store left operand into temporary register
473 : LD   1, 2(5) ;  Load parameter 'q' into R1
474 : ADD  2, 3, 0 ;  Restore left operand
475 : ADD  1, 2, 1 ;  R1 = left OR right
476 : ST   1, 3(5) ;  Store function result into stack frame
477 : LD   6, 0(5) ;  Load return address
478 : LDA  7, 0(6) ;  Return to caller
479 : LDA 4, 4(5) ; Base of callee frame
480 : LD   1, 1(5) ;  Load parameter 'p' into R1
481 : ST 1, 1(4) ; Store argument 0 in callee
482 : LD   1, 2(5) ;  Load parameter 'q' into R1
483 : ST 1, 2(4) ; Store argument 1 in callee
484 : LDA 6, 488(0) ; Return address
485 : ST 6, 0(4) ; Store return in callee frame
486 : ADD 5, 4, 0 ; Push callee frame
487 : LDA 7, 515(0) ; Call LE
488 : LD   1, 3(5) ;  Load function result
489 : LDC   2, 4(0) ;  Caller frame size
490 : SUB   5, 5, 2 ;  Pop back to caller
491 : SUB   4, 4, 2 ;  Pop back to caller
492 : LDC  2, 1(0) ;  Load 1 into R2
493 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
494 : ST   1, 3(5) ;  Store function result into stack frame
495 : LD   6, 0(5) ;  Load return address
496 : LDA  7, 0(6) ;  Return to caller
497 : LDA 4, 4(5) ; Base of callee frame
498 : LD   1, 1(5) ;  Load parameter 'p' into R1
499 : ST 1, 1(4) ; Store argument 0 in callee
500 : LD   1, 2(5) ;  Load parameter 'q' into R1
501 : ST 1, 2(4) ; Store argument 1 in callee
502 : LDA 6, 506(0) ; Return address
503 : ST 6, 0(4) ; Store return in callee frame
504 : ADD 5, 4, 0 ; Push callee frame
505 : LDA 7, 577(0) ; Call LT
506 : LD   1, 3(5) ;  Load function result
507 : LDC   2, 4(0) ;  Caller frame size
508 : SUB   5, 5, 2 ;  Pop back to caller
509 : SUB   4, 4, 2 ;  Pop back to caller
510 : LDC  2, 1(0) ;  Load 1 into R2
511 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
512 : ST   1, 3(5) ;  Store function result into stack frame
513 : LD   6, 0(5) ;  Load return address
514 : LDA  7, 0(6) ;  Return to caller
515 : LDA 4, 4(5) ; Base of callee frame
516 : LD   1, 1(5) ;  Load parameter 'p' into R1
517 : ST 1, 1(4) ; Store argument 0 in callee
518 : LD   1, 2(5) ;  Load parameter 'q' into R1
519 : ST 1, 2(4) ; Store argument 1 in callee
520 : LDA 6, 524(0) ; Return address
521 : ST 6, 0(4) ; Store return in callee frame
522 : ADD 5, 4, 0 ; Push callee frame
523 : LDA 7, 577(0) ; Call LT
524 : LD   1, 3(5) ;  Load function result
525 : LDC   2, 4(0) ;  Caller frame size
526 : SUB   5, 5, 2 ;  Pop back to caller
527 : SUB   4, 4, 2 ;  Pop back to caller
528 : ADD  3, 1, 0 ;  Store left operand into temporary register
529 : LDA 4, 4(5) ; Base of callee frame
530 : LD   1, 1(5) ;  Load parameter 'p' into R1
531 : ST 1, 1(4) ; Store argument 0 in callee
532 : LD   1, 2(5) ;  Load parameter 'q' into R1
533 : ST 1, 2(4) ; Store argument 1 in callee
534 : LDA 6, 538(0) ; Return address
535 : ST 6, 0(4) ; Store return in callee frame
536 : ADD 5, 4, 0 ; Push callee frame
537 : LDA 7, 565(0) ; Call EQ
538 : LD   1, 3(5) ;  Load function result
539 : LDC   2, 4(0) ;  Caller frame size
540 : SUB   5, 5, 2 ;  Pop back to caller
541 : SUB   4, 4, 2 ;  Pop back to caller
542 : ADD  2, 3, 0 ;  Restore left operand
543 : ADD  1, 2, 1 ;  R1 = left OR right
544 : ST   1, 3(5) ;  Store function result into stack frame
545 : LD   6, 0(5) ;  Load return address
546 : LDA  7, 0(6) ;  Return to caller
547 : LDA 4, 4(5) ; Base of callee frame
548 : LD   1, 1(5) ;  Load parameter 'p' into R1
549 : ST 1, 1(4) ; Store argument 0 in callee
550 : LD   1, 2(5) ;  Load parameter 'q' into R1
551 : ST 1, 2(4) ; Store argument 1 in callee
552 : LDA 6, 556(0) ; Return address
553 : ST 6, 0(4) ; Store return in callee frame
554 : ADD 5, 4, 0 ; Push callee frame
555 : LDA 7, 565(0) ; Call EQ
556 : LD   1, 3(5) ;  Load function result
557 : LDC   2, 4(0) ;  Caller frame size
558 : SUB   5, 5, 2 ;  Pop back to caller
559 : SUB   4, 4, 2 ;  Pop back to caller
560 : LDC  2, 1(0) ;  Load 1 into R2
561 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
562 : ST   1, 3(5) ;  Store function result into stack frame
563 : LD   6, 0(5) ;  Load return address
564 : LDA  7, 0(6) ;  Return to caller
565 : LD   1, 1(5) ;  Load parameter 'p' into R1
566 : ADD  3, 1, 0 ;  Store left operand into temporary register
567 : LD   1, 2(5) ;  Load parameter 'q' into R1
568 : ADD  2, 3, 0 ;  Restore left operand
569 : SUB  1, 2, 1 ;  left - right for equality check
570 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
571 : LDC  1, 0(0) ;  false
572 : LDA  7, 1(7) ;  skip setting true
573 : LDC  1, 1(0) ;  true
574 : ST   1, 3(5) ;  Store function result into stack frame
575 : LD   6, 0(5) ;  Load return address
576 : LDA  7, 0(6) ;  Return to caller
577 : LD   1, 1(5) ;  Load parameter 'p' into R1
578 : ADD  3, 1, 0 ;  Store left operand into temporary register
579 : LD   1, 2(5) ;  Load parameter 'q' into R1
580 : ADD  2, 3, 0 ;  Restore left operand
581 : SUB  1, 2, 1 ;  left - right for less-than check
582 : JLT  1, 3(7) ;  If R1 < 0, jump to true
583 : LDC  1, 0(0) ;  false
584 : LDA  7, 1(7) ;  skip setting true
585 : LDC  1, 1(0) ;  true
586 : ST   1, 3(5) ;  Store function result into stack frame
587 : LD   6, 0(5) ;  Load return address
588 : LDA  7, 0(6) ;  Return to caller
589 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
590 : SUB  1, 0, 1 ;  Negate value in R1
591 : ADD  3, 1, 0 ;  Store left operand into temporary register
592 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
593 : ADD  2, 3, 0 ;  Restore left operand
594 : SUB  1, 2, 1 ;  R1 = left - right
595 : ST   1, 1(5) ;  Store function result into stack frame
596 : LD   6, 0(5) ;  Load return address
597 : LDA  7, 0(6) ;  Return to caller
598 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
599 : ST   1, 1(5) ;  Store function result into stack frame
600 : LD   6, 0(5) ;  Load return address
601 : LDA  7, 0(6) ;  Return to caller
