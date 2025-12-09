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
11 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
12 : LDA 4, 3(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 4, 3(5) ; Base of callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 224(0) ; Call SQRT
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : LDA 4, 3(5) ; Base of callee frame
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return addr in callee frame
26 : ADD 5, 4, 0 ; Push new frame
27 : LDA 7, 8(0) ; Call print
28 : LDC 2, 3(0) ; Caller frame size
29 : SUB 5, 5, 2 ; Pop frame
30 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
31 : LDA 4, 3(5) ; Base of callee frame
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 4, 3(5) ; Base of callee frame
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame
37 : LDA 7, 245(0) ; Call ODD
38 : LD   1, 2(5) ;  Load function result
39 : LDC   2, 3(0) ;  Caller frame size
40 : SUB   5, 5, 2 ;  Pop back to caller
41 : SUB   4, 4, 2 ;  Pop back to caller
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD   1, 2(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 4(5) ;  Load parameter 'mid' into R1
47 : ADD  3, 1, 0 ;  Store left operand into temporary register
48 : LD   1, 4(5) ;  Load parameter 'mid' into R1
49 : ADD  2, 3, 0 ;  Restore left operand
50 : MUL  1, 2, 1 ;  R1 = left * right
51 : LDA 4, 4(5) ; Base of callee frame
52 : ST 1, 1(4) ; Store argument 0 in callee
53 : LD   1, 1(5) ;  Load parameter 'n' into R1
54 : LDA 4, 4(5) ; Base of callee frame
55 : ST 1, 2(4) ; Store argument 1 in callee
56 : LDA 4, 4(5) ; Base of callee frame
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame
60 : LDA 7, 566(0) ; Call LE
61 : LD   1, 3(5) ;  Load function result
62 : LDC   2, 4(0) ;  Caller frame size
63 : SUB   5, 5, 2 ;  Pop back to caller
64 : SUB   4, 4, 2 ;  Pop back to caller
65 : JEQ  1, 85(0) ;  If condition is false, jump to ELSE
66 : LD   1, 1(5) ;  Load parameter 'n' into R1
67 : LDA 4, 5(5) ; Base of callee frame
68 : ST 1, 1(4) ; Store argument 0 in callee
69 : LD   1, 4(5) ;  Load parameter 'mid' into R1
70 : LDA 4, 5(5) ; Base of callee frame
71 : ST 1, 2(4) ; Store argument 1 in callee
72 : LD   1, 3(5) ;  Load parameter 'high' into R1
73 : LDA 4, 5(5) ; Base of callee frame
74 : ST 1, 3(4) ; Store argument 2 in callee
75 : LDA 4, 5(5) ; Base of callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame
79 : LDA 7, 106(0) ; Call SQRTSEARCH
80 : LD   1, 4(5) ;  Load function result
81 : LDC   2, 5(0) ;  Caller frame size
82 : SUB   5, 5, 2 ;  Pop back to caller
83 : SUB   4, 4, 2 ;  Pop back to caller
84 : LDA  7, 103(0) ;  Skip ELSE block
85 : LD   1, 1(5) ;  Load parameter 'n' into R1
86 : LDA 4, 5(5) ; Base of callee frame
87 : ST 1, 1(4) ; Store argument 0 in callee
88 : LD   1, 2(5) ;  Load parameter 'low' into R1
89 : LDA 4, 5(5) ; Base of callee frame
90 : ST 1, 2(4) ; Store argument 1 in callee
91 : LD   1, 4(5) ;  Load parameter 'mid' into R1
92 : LDA 4, 5(5) ; Base of callee frame
93 : ST 1, 3(4) ; Store argument 2 in callee
94 : LDA 4, 5(5) ; Base of callee frame
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return in callee frame
97 : ADD 5, 4, 0 ; Push callee frame
98 : LDA 7, 106(0) ; Call SQRTSEARCH
99 : LD   1, 4(5) ;  Load function result
100 : LDC   2, 5(0) ;  Caller frame size
101 : SUB   5, 5, 2 ;  Pop back to caller
102 : SUB   4, 4, 2 ;  Pop back to caller
103 : ST   1, 5(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 3(5) ;  Load parameter 'high' into R1
107 : LDA 4, 4(5) ; Base of callee frame
108 : ST 1, 1(4) ; Store argument 0 in callee
109 : LD   1, 2(5) ;  Load parameter 'low' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : LDA 4, 4(5) ; Base of callee frame
115 : ST 1, 2(4) ; Store argument 1 in callee
116 : LDA 4, 4(5) ; Base of callee frame
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return in callee frame
119 : ADD 5, 4, 0 ; Push callee frame
120 : LDA 7, 566(0) ; Call LE
121 : LD   1, 3(5) ;  Load function result
122 : LDC   2, 4(0) ;  Caller frame size
123 : SUB   5, 5, 2 ;  Pop back to caller
124 : SUB   4, 4, 2 ;  Pop back to caller
125 : JEQ  1, 182(0) ;  If condition is false, jump to ELSE
126 : LD   1, 1(5) ;  Load parameter 'n' into R1
127 : ADD  3, 1, 0 ;  Store left operand into temporary register
128 : LD   1, 2(5) ;  Load parameter 'low' into R1
129 : LDA 4, 4(5) ; Base of callee frame
130 : ST 1, 1(4) ; Store argument 0 in callee
131 : LD   1, 2(5) ;  Load parameter 'low' into R1
132 : LDA 4, 4(5) ; Base of callee frame
133 : ST 1, 2(4) ; Store argument 1 in callee
134 : LDA 4, 4(5) ; Base of callee frame
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 486(0) ; Call TIMES
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 4(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : ADD  2, 3, 0 ;  Restore left operand
144 : SUB  1, 2, 1 ;  R1 = left - right
145 : LDA 4, 4(5) ; Base of callee frame
146 : ST 1, 1(4) ; Store argument 0 in callee
147 : LD   1, 3(5) ;  Load parameter 'high' into R1
148 : LDA 4, 4(5) ; Base of callee frame
149 : ST 1, 1(4) ; Store argument 0 in callee
150 : LD   1, 3(5) ;  Load parameter 'high' into R1
151 : LDA 4, 4(5) ; Base of callee frame
152 : ST 1, 2(4) ; Store argument 1 in callee
153 : LDA 4, 4(5) ; Base of callee frame
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame
157 : LDA 7, 486(0) ; Call TIMES
158 : LD   1, 3(5) ;  Load function result
159 : LDC   2, 4(0) ;  Caller frame size
160 : SUB   5, 5, 2 ;  Pop back to caller
161 : SUB   4, 4, 2 ;  Pop back to caller
162 : ADD  3, 1, 0 ;  Store left operand into temporary register
163 : LD   1, 1(5) ;  Load parameter 'n' into R1
164 : ADD  2, 3, 0 ;  Restore left operand
165 : SUB  1, 2, 1 ;  R1 = left - right
166 : LDA 4, 4(5) ; Base of callee frame
167 : ST 1, 2(4) ; Store argument 1 in callee
168 : LDA 4, 4(5) ; Base of callee frame
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return in callee frame
171 : ADD 5, 4, 0 ; Push callee frame
172 : LDA 7, 566(0) ; Call LE
173 : LD   1, 3(5) ;  Load function result
174 : LDC   2, 4(0) ;  Caller frame size
175 : SUB   5, 5, 2 ;  Pop back to caller
176 : SUB   4, 4, 2 ;  Pop back to caller
177 : JEQ  1, 180(0) ;  If condition is false, jump to ELSE
178 : LD   1, 2(5) ;  Load parameter 'low' into R1
179 : LDA  7, 181(0) ;  Skip ELSE block
180 : LD   1, 3(5) ;  Load parameter 'high' into R1
181 : LDA  7, 221(0) ;  Skip ELSE block
182 : LD   1, 1(5) ;  Load parameter 'n' into R1
183 : LDA 4, 6(5) ; Base of callee frame
184 : ST 1, 1(4) ; Store argument 0 in callee
185 : LD   1, 2(5) ;  Load parameter 'low' into R1
186 : LDA 4, 6(5) ; Base of callee frame
187 : ST 1, 2(4) ; Store argument 1 in callee
188 : LD   1, 3(5) ;  Load parameter 'high' into R1
189 : LDA 4, 6(5) ; Base of callee frame
190 : ST 1, 3(4) ; Store argument 2 in callee
191 : LD   1, 2(5) ;  Load parameter 'low' into R1
192 : LDA 4, 4(5) ; Base of callee frame
193 : ST 1, 1(4) ; Store argument 0 in callee
194 : LD   1, 3(5) ;  Load parameter 'high' into R1
195 : LDA 4, 4(5) ; Base of callee frame
196 : ST 1, 2(4) ; Store argument 1 in callee
197 : LDA 4, 4(5) ; Base of callee frame
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame
201 : LDA 7, 502(0) ; Call PLUS
202 : LD   1, 3(5) ;  Load function result
203 : LDC   2, 4(0) ;  Caller frame size
204 : SUB   5, 5, 2 ;  Pop back to caller
205 : SUB   4, 4, 2 ;  Pop back to caller
206 : ADD  3, 1, 0 ;  Store left operand into temporary register
207 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
208 : ADD  2, 3, 0 ;  Restore left operand
209 : DIV  1, 2, 1 ;  R1 = left / right
210 : LDA 4, 6(5) ; Base of callee frame
211 : ST 1, 4(4) ; Store argument 3 in callee
212 : LDA 4, 6(5) ; Base of callee frame
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(4) ; Store return in callee frame
215 : ADD 5, 4, 0 ; Push callee frame
216 : LDA 7, 46(0) ; Call SQRTSPLIT
217 : LD   1, 5(5) ;  Load function result
218 : LDC   2, 6(0) ;  Caller frame size
219 : SUB   5, 5, 2 ;  Pop back to caller
220 : SUB   4, 4, 2 ;  Pop back to caller
221 : ST   1, 4(5) ;  Store function result into stack frame
222 : LD   6, 0(5) ;  Load return address
223 : LDA  7, 0(6) ;  Return to caller
224 : LD   1, 1(5) ;  Load parameter 'n' into R1
225 : LDA 4, 5(5) ; Base of callee frame
226 : ST 1, 1(4) ; Store argument 0 in callee
227 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
228 : LDA 4, 5(5) ; Base of callee frame
229 : ST 1, 2(4) ; Store argument 1 in callee
230 : LD   1, 1(5) ;  Load parameter 'n' into R1
231 : LDA 4, 5(5) ; Base of callee frame
232 : ST 1, 3(4) ; Store argument 2 in callee
233 : LDA 4, 5(5) ; Base of callee frame
234 : LDA 6, 238(0) ; Return address
235 : ST 6, 0(4) ; Store return in callee frame
236 : ADD 5, 4, 0 ; Push callee frame
237 : LDA 7, 106(0) ; Call SQRTSEARCH
238 : LD   1, 4(5) ;  Load function result
239 : LDC   2, 5(0) ;  Caller frame size
240 : SUB   5, 5, 2 ;  Pop back to caller
241 : SUB   4, 4, 2 ;  Pop back to caller
242 : ST   1, 2(5) ;  Store function result into stack frame
243 : LD   6, 0(5) ;  Load return address
244 : LDA  7, 0(6) ;  Return to caller
245 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
246 : LDA 4, 4(5) ; Base of callee frame
247 : ST 1, 1(4) ; Store argument 0 in callee
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : LDA 4, 4(5) ; Base of callee frame
250 : ST 1, 2(4) ; Store argument 1 in callee
251 : LDA 4, 4(5) ; Base of callee frame
252 : LDA 6, 256(0) ; Return address
253 : ST 6, 0(4) ; Store return in callee frame
254 : ADD 5, 4, 0 ; Push callee frame
255 : LDA 7, 566(0) ; Call LE
256 : LD   1, 3(5) ;  Load function result
257 : LDC   2, 4(0) ;  Caller frame size
258 : SUB   5, 5, 2 ;  Pop back to caller
259 : SUB   4, 4, 2 ;  Pop back to caller
260 : JEQ  1, 309(0) ;  If condition is false, jump to ELSE
261 : LD   1, 1(5) ;  Load parameter 'n' into R1
262 : LDA 4, 4(5) ; Base of callee frame
263 : ST 1, 1(4) ; Store argument 0 in callee
264 : LD   1, 1(5) ;  Load parameter 'n' into R1
265 : LDA 4, 4(5) ; Base of callee frame
266 : ST 1, 1(4) ; Store argument 0 in callee
267 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
268 : LDA 4, 4(5) ; Base of callee frame
269 : ST 1, 2(4) ; Store argument 1 in callee
270 : LDA 4, 4(5) ; Base of callee frame
271 : LDA 6, 275(0) ; Return address
272 : ST 6, 0(4) ; Store return in callee frame
273 : ADD 5, 4, 0 ; Push callee frame
274 : LDA 7, 478(0) ; Call DIV
275 : LD   1, 3(5) ;  Load function result
276 : LDC   2, 4(0) ;  Caller frame size
277 : SUB   5, 5, 2 ;  Pop back to caller
278 : SUB   4, 4, 2 ;  Pop back to caller
279 : ADD  3, 1, 0 ;  Store left operand into temporary register
280 : LD   1, 1(5) ;  Load parameter 'n' into R1
281 : LDA 4, 4(5) ; Base of callee frame
282 : ST 1, 1(4) ; Store argument 0 in callee
283 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
284 : LDA 4, 4(5) ; Base of callee frame
285 : ST 1, 2(4) ; Store argument 1 in callee
286 : LDA 4, 4(5) ; Base of callee frame
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return in callee frame
289 : ADD 5, 4, 0 ; Push callee frame
290 : LDA 7, 478(0) ; Call DIV
291 : LD   1, 3(5) ;  Load function result
292 : LDC   2, 4(0) ;  Caller frame size
293 : SUB   5, 5, 2 ;  Pop back to caller
294 : SUB   4, 4, 2 ;  Pop back to caller
295 : ADD  2, 3, 0 ;  Restore left operand
296 : ADD  1, 2, 1 ;  R1 = left + right
297 : LDA 4, 4(5) ; Base of callee frame
298 : ST 1, 2(4) ; Store argument 1 in callee
299 : LDA 4, 4(5) ; Base of callee frame
300 : LDA 6, 304(0) ; Return address
301 : ST 6, 0(4) ; Store return in callee frame
302 : ADD 5, 4, 0 ; Push callee frame
303 : LDA 7, 526(0) ; Call GT
304 : LD   1, 3(5) ;  Load function result
305 : LDC   2, 4(0) ;  Caller frame size
306 : SUB   5, 5, 2 ;  Pop back to caller
307 : SUB   4, 4, 2 ;  Pop back to caller
308 : LDA  7, 389(0) ;  Skip ELSE block
309 : LD   1, 1(5) ;  Load parameter 'n' into R1
310 : LDA 4, 3(5) ; Base of callee frame
311 : ST 1, 1(4) ; Store argument 0 in callee
312 : LDA 4, 3(5) ; Base of callee frame
313 : LDA 6, 317(0) ; Return address
314 : ST 6, 0(4) ; Store return in callee frame
315 : ADD 5, 4, 0 ; Push callee frame
316 : LDA 7, 473(0) ; Call NEG
317 : LD   1, 2(5) ;  Load function result
318 : LDC   2, 3(0) ;  Caller frame size
319 : SUB   5, 5, 2 ;  Pop back to caller
320 : SUB   4, 4, 2 ;  Pop back to caller
321 : LDA 4, 4(5) ; Base of callee frame
322 : ST 1, 1(4) ; Store argument 0 in callee
323 : LD   1, 1(5) ;  Load parameter 'n' into R1
324 : LDA 4, 3(5) ; Base of callee frame
325 : ST 1, 1(4) ; Store argument 0 in callee
326 : LDA 4, 3(5) ; Base of callee frame
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return in callee frame
329 : ADD 5, 4, 0 ; Push callee frame
330 : LDA 7, 473(0) ; Call NEG
331 : LD   1, 2(5) ;  Load function result
332 : LDC   2, 3(0) ;  Caller frame size
333 : SUB   5, 5, 2 ;  Pop back to caller
334 : SUB   4, 4, 2 ;  Pop back to caller
335 : LDA 4, 4(5) ; Base of callee frame
336 : ST 1, 1(4) ; Store argument 0 in callee
337 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
338 : LDA 4, 4(5) ; Base of callee frame
339 : ST 1, 2(4) ; Store argument 1 in callee
340 : LDA 4, 4(5) ; Base of callee frame
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return in callee frame
343 : ADD 5, 4, 0 ; Push callee frame
344 : LDA 7, 478(0) ; Call DIV
345 : LD   1, 3(5) ;  Load function result
346 : LDC   2, 4(0) ;  Caller frame size
347 : SUB   5, 5, 2 ;  Pop back to caller
348 : SUB   4, 4, 2 ;  Pop back to caller
349 : ADD  3, 1, 0 ;  Store left operand into temporary register
350 : LD   1, 1(5) ;  Load parameter 'n' into R1
351 : LDA 4, 3(5) ; Base of callee frame
352 : ST 1, 1(4) ; Store argument 0 in callee
353 : LDA 4, 3(5) ; Base of callee frame
354 : LDA 6, 358(0) ; Return address
355 : ST 6, 0(4) ; Store return in callee frame
356 : ADD 5, 4, 0 ; Push callee frame
357 : LDA 7, 473(0) ; Call NEG
358 : LD   1, 2(5) ;  Load function result
359 : LDC   2, 3(0) ;  Caller frame size
360 : SUB   5, 5, 2 ;  Pop back to caller
361 : SUB   4, 4, 2 ;  Pop back to caller
362 : LDA 4, 4(5) ; Base of callee frame
363 : ST 1, 1(4) ; Store argument 0 in callee
364 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
365 : LDA 4, 4(5) ; Base of callee frame
366 : ST 1, 2(4) ; Store argument 1 in callee
367 : LDA 4, 4(5) ; Base of callee frame
368 : LDA 6, 372(0) ; Return address
369 : ST 6, 0(4) ; Store return in callee frame
370 : ADD 5, 4, 0 ; Push callee frame
371 : LDA 7, 478(0) ; Call DIV
372 : LD   1, 3(5) ;  Load function result
373 : LDC   2, 4(0) ;  Caller frame size
374 : SUB   5, 5, 2 ;  Pop back to caller
375 : SUB   4, 4, 2 ;  Pop back to caller
376 : ADD  2, 3, 0 ;  Restore left operand
377 : ADD  1, 2, 1 ;  R1 = left + right
378 : LDA 4, 4(5) ; Base of callee frame
379 : ST 1, 2(4) ; Store argument 1 in callee
380 : LDA 4, 4(5) ; Base of callee frame
381 : LDA 6, 385(0) ; Return address
382 : ST 6, 0(4) ; Store return in callee frame
383 : ADD 5, 4, 0 ; Push callee frame
384 : LDA 7, 526(0) ; Call GT
385 : LD   1, 3(5) ;  Load function result
386 : LDC   2, 4(0) ;  Caller frame size
387 : SUB   5, 5, 2 ;  Pop back to caller
388 : SUB   4, 4, 2 ;  Pop back to caller
389 : ST   1, 2(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LD   1, 2(5) ;  Load parameter 'n' into R1
393 : ADD  3, 1, 0 ;  Store left operand into temporary register
394 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
395 : ADD  2, 3, 0 ;  Restore left operand
396 : SUB  1, 2, 1 ;  left - right for equality check
397 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
398 : LDC  1, 0(0) ;  false
399 : LDA  7, 1(7) ;  skip setting true
400 : LDC  1, 1(0) ;  true
401 : JEQ  1, 404(0) ;  If condition is false, jump to ELSE
402 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
403 : LDA  7, 427(0) ;  Skip ELSE block
404 : LD   1, 1(5) ;  Load parameter 'm' into R1
405 : ADD  3, 1, 0 ;  Store left operand into temporary register
406 : LD   1, 1(5) ;  Load parameter 'm' into R1
407 : LDA 4, 4(5) ; Base of callee frame
408 : ST 1, 1(4) ; Store argument 0 in callee
409 : LD   1, 2(5) ;  Load parameter 'n' into R1
410 : ADD  3, 1, 0 ;  Store left operand into temporary register
411 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
412 : ADD  2, 3, 0 ;  Restore left operand
413 : SUB  1, 2, 1 ;  R1 = left - right
414 : LDA 4, 4(5) ; Base of callee frame
415 : ST 1, 2(4) ; Store argument 1 in callee
416 : LDA 4, 4(5) ; Base of callee frame
417 : LDA 6, 421(0) ; Return address
418 : ST 6, 0(4) ; Store return in callee frame
419 : ADD 5, 4, 0 ; Push callee frame
420 : LDA 7, 392(0) ; Call EXP
421 : LD   1, 3(5) ;  Load function result
422 : LDC   2, 4(0) ;  Caller frame size
423 : SUB   5, 5, 2 ;  Pop back to caller
424 : SUB   4, 4, 2 ;  Pop back to caller
425 : ADD  2, 3, 0 ;  Restore left operand
426 : MUL  1, 2, 1 ;  R1 = left * right
427 : ST   1, 3(5) ;  Store function result into stack frame
428 : LD   6, 0(5) ;  Load return address
429 : LDA  7, 0(6) ;  Return to caller
430 : LD   1, 1(5) ;  Load parameter 'm' into R1
431 : ADD  3, 1, 0 ;  Store left operand into temporary register
432 : LD   1, 1(5) ;  Load parameter 'm' into R1
433 : ADD  3, 1, 0 ;  Store left operand into temporary register
434 : LD   1, 2(5) ;  Load parameter 'n' into R1
435 : ADD  2, 3, 0 ;  Restore left operand
436 : DIV  1, 2, 1 ;  R1 = left / right
437 : ADD  3, 1, 0 ;  Store left operand into temporary register
438 : LD   1, 2(5) ;  Load parameter 'n' into R1
439 : ADD  2, 3, 0 ;  Restore left operand
440 : MUL  1, 2, 1 ;  R1 = left * right
441 : ADD  2, 3, 0 ;  Restore left operand
442 : SUB  1, 2, 1 ;  R1 = left - right
443 : ST   1, 3(5) ;  Store function result into stack frame
444 : LD   6, 0(5) ;  Load return address
445 : LDA  7, 0(6) ;  Return to caller
446 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
447 : ADD  3, 1, 0 ;  Store left operand into temporary register
448 : LD   1, 1(5) ;  Load parameter 'n' into R1
449 : ADD  2, 3, 0 ;  Restore left operand
450 : SUB  1, 2, 1 ;  left - right for less-than check
451 : JLT  1, 2(7) ;  If R1 < 0, jump to true
452 : LDC  1, 0(0) ;  false
453 : LDA  7, 1(7) ;  skip setting true
454 : LDC  1, 1(0) ;  true
455 : JEQ  1, 458(0) ;  If condition is false, jump to ELSE
456 : LD   1, 1(5) ;  Load parameter 'n' into R1
457 : LDA  7, 470(0) ;  Skip ELSE block
458 : LD   1, 1(5) ;  Load parameter 'n' into R1
459 : LDA 4, 3(5) ; Base of callee frame
460 : ST 1, 1(4) ; Store argument 0 in callee
461 : LDA 4, 3(5) ; Base of callee frame
462 : LDA 6, 466(0) ; Return address
463 : ST 6, 0(4) ; Store return in callee frame
464 : ADD 5, 4, 0 ; Push callee frame
465 : LDA 7, 473(0) ; Call NEG
466 : LD   1, 2(5) ;  Load function result
467 : LDC   2, 3(0) ;  Caller frame size
468 : SUB   5, 5, 2 ;  Pop back to caller
469 : SUB   4, 4, 2 ;  Pop back to caller
470 : ST   1, 2(5) ;  Store function result into stack frame
471 : LD   6, 0(5) ;  Load return address
472 : LDA  7, 0(6) ;  Return to caller
473 : LD   1, 1(5) ;  Load parameter 'n' into R1
474 : SUB  1, 0, 1 ;  Negate value in R1
475 : ST   1, 2(5) ;  Store function result into stack frame
476 : LD   6, 0(5) ;  Load return address
477 : LDA  7, 0(6) ;  Return to caller
478 : LD   1, 1(5) ;  Load parameter 'p' into R1
479 : ADD  3, 1, 0 ;  Store left operand into temporary register
480 : LD   1, 2(5) ;  Load parameter 'q' into R1
481 : ADD  2, 3, 0 ;  Restore left operand
482 : DIV  1, 2, 1 ;  R1 = left / right
483 : ST   1, 3(5) ;  Store function result into stack frame
484 : LD   6, 0(5) ;  Load return address
485 : LDA  7, 0(6) ;  Return to caller
486 : LD   1, 1(5) ;  Load parameter 'p' into R1
487 : ADD  3, 1, 0 ;  Store left operand into temporary register
488 : LD   1, 2(5) ;  Load parameter 'q' into R1
489 : ADD  2, 3, 0 ;  Restore left operand
490 : MUL  1, 2, 1 ;  R1 = left * right
491 : ST   1, 3(5) ;  Store function result into stack frame
492 : LD   6, 0(5) ;  Load return address
493 : LDA  7, 0(6) ;  Return to caller
494 : LD   1, 1(5) ;  Load parameter 'p' into R1
495 : ADD  3, 1, 0 ;  Store left operand into temporary register
496 : LD   1, 2(5) ;  Load parameter 'q' into R1
497 : ADD  2, 3, 0 ;  Restore left operand
498 : SUB  1, 2, 1 ;  R1 = left - right
499 : ST   1, 3(5) ;  Store function result into stack frame
500 : LD   6, 0(5) ;  Load return address
501 : LDA  7, 0(6) ;  Return to caller
502 : LD   1, 1(5) ;  Load parameter 'p' into R1
503 : ADD  3, 1, 0 ;  Store left operand into temporary register
504 : LD   1, 2(5) ;  Load parameter 'q' into R1
505 : ADD  2, 3, 0 ;  Restore left operand
506 : ADD  1, 2, 1 ;  R1 = left + right
507 : ST   1, 3(5) ;  Store function result into stack frame
508 : LD   6, 0(5) ;  Load return address
509 : LDA  7, 0(6) ;  Return to caller
510 : LD   1, 1(5) ;  Load parameter 'p' into R1
511 : JEQ  1, 514(0) ;  If condition is false, jump to ELSE
512 : LD   1, 2(5) ;  Load parameter 'q' into R1
513 : LDA  7, 515(0) ;  Skip ELSE block
514 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
515 : ST   1, 3(5) ;  Store function result into stack frame
516 : LD   6, 0(5) ;  Load return address
517 : LDA  7, 0(6) ;  Return to caller
518 : LD   1, 1(5) ;  Load parameter 'p' into R1
519 : ADD  3, 1, 0 ;  Store left operand into temporary register
520 : LD   1, 2(5) ;  Load parameter 'q' into R1
521 : ADD  2, 3, 0 ;  Restore left operand
522 : ADD  1, 2, 1 ;  R1 = left OR right
523 : ST   1, 3(5) ;  Store function result into stack frame
524 : LD   6, 0(5) ;  Load return address
525 : LDA  7, 0(6) ;  Return to caller
526 : LD   1, 1(5) ;  Load parameter 'p' into R1
527 : LDA 4, 4(5) ; Base of callee frame
528 : ST 1, 1(4) ; Store argument 0 in callee
529 : LD   1, 2(5) ;  Load parameter 'q' into R1
530 : LDA 4, 4(5) ; Base of callee frame
531 : ST 1, 2(4) ; Store argument 1 in callee
532 : LDA 4, 4(5) ; Base of callee frame
533 : LDA 6, 537(0) ; Return address
534 : ST 6, 0(4) ; Store return in callee frame
535 : ADD 5, 4, 0 ; Push callee frame
536 : LDA 7, 566(0) ; Call LE
537 : LD   1, 3(5) ;  Load function result
538 : LDC   2, 4(0) ;  Caller frame size
539 : SUB   5, 5, 2 ;  Pop back to caller
540 : SUB   4, 4, 2 ;  Pop back to caller
541 : LDC  2, 1(0) ;  Load 1 into R2
542 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
543 : ST   1, 3(5) ;  Store function result into stack frame
544 : LD   6, 0(5) ;  Load return address
545 : LDA  7, 0(6) ;  Return to caller
546 : LD   1, 1(5) ;  Load parameter 'p' into R1
547 : LDA 4, 4(5) ; Base of callee frame
548 : ST 1, 1(4) ; Store argument 0 in callee
549 : LD   1, 2(5) ;  Load parameter 'q' into R1
550 : LDA 4, 4(5) ; Base of callee frame
551 : ST 1, 2(4) ; Store argument 1 in callee
552 : LDA 4, 4(5) ; Base of callee frame
553 : LDA 6, 557(0) ; Return address
554 : ST 6, 0(4) ; Store return in callee frame
555 : ADD 5, 4, 0 ; Push callee frame
556 : LDA 7, 634(0) ; Call LT
557 : LD   1, 3(5) ;  Load function result
558 : LDC   2, 4(0) ;  Caller frame size
559 : SUB   5, 5, 2 ;  Pop back to caller
560 : SUB   4, 4, 2 ;  Pop back to caller
561 : LDC  2, 1(0) ;  Load 1 into R2
562 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
563 : ST   1, 3(5) ;  Store function result into stack frame
564 : LD   6, 0(5) ;  Load return address
565 : LDA  7, 0(6) ;  Return to caller
566 : LD   1, 1(5) ;  Load parameter 'p' into R1
567 : LDA 4, 4(5) ; Base of callee frame
568 : ST 1, 1(4) ; Store argument 0 in callee
569 : LD   1, 2(5) ;  Load parameter 'q' into R1
570 : LDA 4, 4(5) ; Base of callee frame
571 : ST 1, 2(4) ; Store argument 1 in callee
572 : LDA 4, 4(5) ; Base of callee frame
573 : LDA 6, 577(0) ; Return address
574 : ST 6, 0(4) ; Store return in callee frame
575 : ADD 5, 4, 0 ; Push callee frame
576 : LDA 7, 634(0) ; Call LT
577 : LD   1, 3(5) ;  Load function result
578 : LDC   2, 4(0) ;  Caller frame size
579 : SUB   5, 5, 2 ;  Pop back to caller
580 : SUB   4, 4, 2 ;  Pop back to caller
581 : ADD  3, 1, 0 ;  Store left operand into temporary register
582 : LD   1, 1(5) ;  Load parameter 'p' into R1
583 : LDA 4, 4(5) ; Base of callee frame
584 : ST 1, 1(4) ; Store argument 0 in callee
585 : LD   1, 2(5) ;  Load parameter 'q' into R1
586 : LDA 4, 4(5) ; Base of callee frame
587 : ST 1, 2(4) ; Store argument 1 in callee
588 : LDA 4, 4(5) ; Base of callee frame
589 : LDA 6, 593(0) ; Return address
590 : ST 6, 0(4) ; Store return in callee frame
591 : ADD 5, 4, 0 ; Push callee frame
592 : LDA 7, 622(0) ; Call EQ
593 : LD   1, 3(5) ;  Load function result
594 : LDC   2, 4(0) ;  Caller frame size
595 : SUB   5, 5, 2 ;  Pop back to caller
596 : SUB   4, 4, 2 ;  Pop back to caller
597 : ADD  2, 3, 0 ;  Restore left operand
598 : ADD  1, 2, 1 ;  R1 = left OR right
599 : ST   1, 3(5) ;  Store function result into stack frame
600 : LD   6, 0(5) ;  Load return address
601 : LDA  7, 0(6) ;  Return to caller
602 : LD   1, 1(5) ;  Load parameter 'p' into R1
603 : LDA 4, 4(5) ; Base of callee frame
604 : ST 1, 1(4) ; Store argument 0 in callee
605 : LD   1, 2(5) ;  Load parameter 'q' into R1
606 : LDA 4, 4(5) ; Base of callee frame
607 : ST 1, 2(4) ; Store argument 1 in callee
608 : LDA 4, 4(5) ; Base of callee frame
609 : LDA 6, 613(0) ; Return address
610 : ST 6, 0(4) ; Store return in callee frame
611 : ADD 5, 4, 0 ; Push callee frame
612 : LDA 7, 622(0) ; Call EQ
613 : LD   1, 3(5) ;  Load function result
614 : LDC   2, 4(0) ;  Caller frame size
615 : SUB   5, 5, 2 ;  Pop back to caller
616 : SUB   4, 4, 2 ;  Pop back to caller
617 : LDC  2, 1(0) ;  Load 1 into R2
618 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
619 : ST   1, 3(5) ;  Store function result into stack frame
620 : LD   6, 0(5) ;  Load return address
621 : LDA  7, 0(6) ;  Return to caller
622 : LD   1, 1(5) ;  Load parameter 'p' into R1
623 : ADD  3, 1, 0 ;  Store left operand into temporary register
624 : LD   1, 2(5) ;  Load parameter 'q' into R1
625 : ADD  2, 3, 0 ;  Restore left operand
626 : SUB  1, 2, 1 ;  left - right for equality check
627 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
628 : LDC  1, 0(0) ;  false
629 : LDA  7, 1(7) ;  skip setting true
630 : LDC  1, 1(0) ;  true
631 : ST   1, 3(5) ;  Store function result into stack frame
632 : LD   6, 0(5) ;  Load return address
633 : LDA  7, 0(6) ;  Return to caller
634 : LD   1, 1(5) ;  Load parameter 'p' into R1
635 : ADD  3, 1, 0 ;  Store left operand into temporary register
636 : LD   1, 2(5) ;  Load parameter 'q' into R1
637 : ADD  2, 3, 0 ;  Restore left operand
638 : SUB  1, 2, 1 ;  left - right for less-than check
639 : JLT  1, 2(7) ;  If R1 < 0, jump to true
640 : LDC  1, 0(0) ;  false
641 : LDA  7, 1(7) ;  skip setting true
642 : LDC  1, 1(0) ;  true
643 : ST   1, 3(5) ;  Store function result into stack frame
644 : LD   6, 0(5) ;  Load return address
645 : LDA  7, 0(6) ;  Return to caller
646 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
647 : SUB  1, 0, 1 ;  Negate value in R1
648 : ADD  3, 1, 0 ;  Store left operand into temporary register
649 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
650 : ADD  2, 3, 0 ;  Restore left operand
651 : SUB  1, 2, 1 ;  R1 = left - right
652 : ST   1, 1(5) ;  Store function result into stack frame
653 : LD   6, 0(5) ;  Load return address
654 : LDA  7, 0(6) ;  Return to caller
655 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
656 : ST   1, 1(5) ;  Store function result into stack frame
657 : LD   6, 0(5) ;  Load return address
658 : LDA  7, 0(6) ;  Return to caller
