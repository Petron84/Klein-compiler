1 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LD  2, 3(0) ;  Load CLI arg 3 into R2
7 : ST  2, 3(5) ;  Store the argument 3 into main frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST  6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 18(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
14 : OUT 1, 0, 0 ;  Hardcoded print function
15 : LD  6, 0(5) ;  Load return addess from stack frame.
16 : LDA 7, 0(6) ;  Jump to return address.
18 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
19 : LDA 4, 5(5) ;  Base of callee frame
20 : ST  1, 1(4) ;  Store argument 0 into callee frame
21 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
22 : LDA 4, 5(5) ;  Base of callee frame
23 : ST  1, 2(4) ;  Store argument 1 into callee frame
24 : LD  1, 3(5) ;  Load parameter 'N' into R1
25 : LDA 4, 5(5) ;  Base of callee frame
26 : ST  1, 3(4) ;  Store argument 2 into callee frame
27 : LDA 4, 5(5) ;  Base of callee frame
28 : LDA 6, 32(0) ;  Compute return address
29 : ST  6, 0(4) ;  Store RA in callee frame
30 : ADD 5, 4, 0 ;  Update pointer (enter callee)
31 : LDA 7, 624(0) ;  Call fareyNum
32 : LD  1, 4(5) ;  Load callee return value into R1
33 : LDC 3, 5(0) ;  Load callee frame size
34 : SUB 5, 5, 3 ;  Restore pointer
35 : LDA 4, 3(5) ;  Base of callee frame (print)
36 : LDA 6, 40(0) ;  Compute return address
37 : ST  6, 0(4) ;  Store RA in callee frame
38 : ADD 5, 4, 0 ;  Update pointer (enter callee)
39 : LDA 7, 14(0) ;  Call print
40 : LDC 3, 3(0) ;  Load callee frame size
41 : SUB 5, 5, 3 ;  Restore pointer
42 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
43 : LDA 4, 5(5) ;  Base of callee frame
44 : ST  1, 1(4) ;  Store argument 0 into callee frame
45 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
46 : LDA 4, 5(5) ;  Base of callee frame
47 : ST  1, 2(4) ;  Store argument 1 into callee frame
48 : LD  1, 3(5) ;  Load parameter 'N' into R1
49 : LDA 4, 5(5) ;  Base of callee frame
50 : ST  1, 3(4) ;  Store argument 2 into callee frame
51 : LDA 4, 5(5) ;  Base of callee frame
52 : LDA 6, 56(0) ;  Compute return address
53 : ST  6, 0(4) ;  Store RA in callee frame
54 : ADD 5, 4, 0 ;  Update pointer (enter callee)
55 : LDA 7, 473(0) ;  Call fareyDen
56 : LD  1, 4(5) ;  Load callee return value into R1
57 : LDC 3, 5(0) ;  Load callee frame size
58 : SUB 5, 5, 3 ;  Restore pointer
59 : ST  1, 4(5) ;  Store result into current frame's return slot
60 : LD  1, 4(5) ;  Load return value into R1
61 : LD  6, 0(5) ;  Load return address for main function into R6
62 : LDA 7, 0(6) ;  Jump to return address of main function
64 : LD  1, 1(5) ;  Load parameter 'x' into R1
65 : ADD 2, 1, 0 ;  R2 = left operand
66 : LD  1, 2(5) ;  Load parameter 'y' into R1
67 : SUB 3, 2, 1 ;  delta = left - right
68 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
69 : LDC 1, 0(0) ;  FALSE
70 : LDA 7, 1(7) ;  Skip TRUE
71 : LDC 1, 1(0) ;  TRUE
72 : ADD 2, 1, 0 ;  R2 = left operand
73 : LD  1, 1(5) ;  Load parameter 'x' into R1
74 : ADD 2, 1, 0 ;  R2 = left operand
75 : LD  1, 2(5) ;  Load parameter 'y' into R1
76 : SUB 3, 2, 1 ;  delta = left - right
77 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
78 : LDC 1, 0(0) ;  FALSE
79 : LDA 7, 1(7) ;  Skip TRUE
80 : LDC 1, 1(0) ;  TRUE
81 : ADD 3, 2, 1 ;  R3 = left OR right
82 : ADD 1, 3, 0 ;  R1 = R3
83 : LDC 2, 1(0) ;  Load 1 into R2
84 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
85 : ST  1, 3(5) ;  Store function result into stack frame
86 : LD  6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
89 : LD  1, 1(5) ;  Load parameter 'x' into R1
90 : ADD 2, 1, 0 ;  R2 = left operand
91 : LD  1, 4(5) ;  Load parameter 'yd' into R1
92 : MUL 3, 2, 1 ;  R3 = left * right
93 : ADD 1, 3, 0 ;  R1 = R3
94 : LDA 4, 4(5) ;  Base of callee frame
95 : ST  1, 1(4) ;  Store argument 0 into callee frame
96 : LD  1, 3(5) ;  Load parameter 'y' into R1
97 : ADD 2, 1, 0 ;  R2 = left operand
98 : LD  1, 2(5) ;  Load parameter 'xd' into R1
99 : MUL 3, 2, 1 ;  R3 = left * right
100 : ADD 1, 3, 0 ;  R1 = R3
101 : LDA 4, 4(5) ;  Base of callee frame
102 : ST  1, 2(4) ;  Store argument 1 into callee frame
103 : LDA 4, 4(5) ;  Base of callee frame
104 : LDA 6, 108(0) ;  Compute return address
105 : ST  6, 0(4) ;  Store RA in callee frame
106 : ADD 5, 4, 0 ;  Update pointer (enter callee)
107 : LDA 7, 64(0) ;  Call greater
108 : LD  1, 3(5) ;  Load callee return value into R1
109 : LDC 3, 4(0) ;  Load callee frame size
110 : SUB 5, 5, 3 ;  Restore pointer
111 : ST  1, 5(5) ;  Store function result into stack frame
112 : LD  6, 0(5) ;  Load return address
113 : LDA 7, 0(6) ;  Return to caller
115 : LD  1, 1(5) ;  Load parameter 'x' into R1
116 : ADD 2, 1, 0 ;  R2 = left operand
117 : LD  1, 4(5) ;  Load parameter 'yd' into R1
118 : MUL 3, 2, 1 ;  R3 = left * right
119 : ADD 1, 3, 0 ;  R1 = R3
120 : ADD 2, 1, 0 ;  R2 = left operand
121 : LD  1, 3(5) ;  Load parameter 'y' into R1
122 : ADD 2, 1, 0 ;  R2 = left operand
123 : LD  1, 2(5) ;  Load parameter 'xd' into R1
124 : MUL 3, 2, 1 ;  R3 = left * right
125 : ADD 1, 3, 0 ;  R1 = R3
126 : SUB 3, 2, 1 ;  delta = left - right
127 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
128 : LDC 1, 0(0) ;  FALSE
129 : LDA 7, 1(7) ;  Skip TRUE
130 : LDC 1, 1(0) ;  TRUE
131 : ST  1, 5(5) ;  Store function result into stack frame
132 : LD  6, 0(5) ;  Load return address
133 : LDA 7, 0(6) ;  Return to caller
136 : LD  1, 6(5) ;  Load parameter 'b' into R1
137 : LDA 4, 4(5) ;  Base of callee frame
138 : ST  1, 1(4) ;  Store argument 0 into callee frame
139 : LD  1, 4(5) ;  Load parameter 'N' into R1
140 : LDA 4, 4(5) ;  Base of callee frame
141 : ST  1, 2(4) ;  Store argument 1 into callee frame
142 : LDA 4, 4(5) ;  Base of callee frame
143 : LDA 6, 147(0) ;  Compute return address
144 : ST  6, 0(4) ;  Store RA in callee frame
145 : ADD 5, 4, 0 ;  Update pointer (enter callee)
146 : LDA 7, 64(0) ;  Call greater
147 : LD  1, 3(5) ;  Load callee return value into R1
148 : LDC 3, 4(0) ;  Load callee frame size
149 : SUB 5, 5, 3 ;  Restore pointer
150 : ADD 2, 1, 0 ;  R2 = left operand
151 : LD  1, 8(5) ;  Load parameter 'd' into R1
152 : LDA 4, 4(5) ;  Base of callee frame
153 : ST  1, 1(4) ;  Store argument 0 into callee frame
154 : LD  1, 4(5) ;  Load parameter 'N' into R1
155 : LDA 4, 4(5) ;  Base of callee frame
156 : ST  1, 2(4) ;  Store argument 1 into callee frame
157 : LDA 4, 4(5) ;  Base of callee frame
158 : LDA 6, 162(0) ;  Compute return address
159 : ST  6, 0(4) ;  Store RA in callee frame
160 : ADD 5, 4, 0 ;  Update pointer (enter callee)
161 : LDA 7, 64(0) ;  Call greater
162 : LD  1, 3(5) ;  Load callee return value into R1
163 : LDC 3, 4(0) ;  Load callee frame size
164 : SUB 5, 5, 3 ;  Restore pointer
165 : ADD 3, 2, 1 ;  R3 = left OR right
166 : ADD 1, 3, 0 ;  R1 = R3
167 : JEQ 1, 214(0) ;  If condition is false, jump to ELSE
170 : LD  1, 1(5) ;  Load parameter 'selector' into R1
171 : ADD 2, 1, 0 ;  R2 = left operand
172 : LDC 1, 1(0) ;  Load integer-literal into R1
173 : SUB 3, 2, 1 ;  delta = left - right
174 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
175 : LDC 1, 0(0) ;  FALSE
176 : LDA 7, 1(7) ;  Skip TRUE
177 : LDC 1, 1(0) ;  TRUE
178 : JEQ 1, 183(0) ;  If condition is false, jump to ELSE
180 : LD  1, 5(5) ;  Load parameter 'a' into R1
181 : LDA 7, 212(0) ;  Skip ELSE block
184 : LD  1, 1(5) ;  Load parameter 'selector' into R1
185 : ADD 2, 1, 0 ;  R2 = left operand
186 : LDC 1, 2(0) ;  Load integer-literal into R1
187 : SUB 3, 2, 1 ;  delta = left - right
188 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
189 : LDC 1, 0(0) ;  FALSE
190 : LDA 7, 1(7) ;  Skip TRUE
191 : LDC 1, 1(0) ;  TRUE
192 : JEQ 1, 197(0) ;  If condition is false, jump to ELSE
194 : LD  1, 6(5) ;  Load parameter 'b' into R1
195 : LDA 7, 212(0) ;  Skip ELSE block
198 : LD  1, 1(5) ;  Load parameter 'selector' into R1
199 : ADD 2, 1, 0 ;  R2 = left operand
200 : LDC 1, 3(0) ;  Load integer-literal into R1
201 : SUB 3, 2, 1 ;  delta = left - right
202 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
203 : LDC 1, 0(0) ;  FALSE
204 : LDA 7, 1(7) ;  Skip TRUE
205 : LDC 1, 1(0) ;  TRUE
206 : JEQ 1, 211(0) ;  If condition is false, jump to ELSE
208 : LD  1, 7(5) ;  Load parameter 'c' into R1
209 : LDA 7, 212(0) ;  Skip ELSE block
211 : LD  1, 8(5) ;  Load parameter 'd' into R1
212 : LDA 7, 419(0) ;  Skip ELSE block
215 : LD  1, 2(5) ;  Load parameter 'xNum' into R1
216 : LDA 4, 6(5) ;  Base of callee frame
217 : ST  1, 1(4) ;  Store argument 0 into callee frame
218 : LD  1, 3(5) ;  Load parameter 'xDen' into R1
219 : LDA 4, 6(5) ;  Base of callee frame
220 : ST  1, 2(4) ;  Store argument 1 into callee frame
221 : LD  1, 5(5) ;  Load parameter 'a' into R1
222 : ADD 2, 1, 0 ;  R2 = left operand
223 : LD  1, 7(5) ;  Load parameter 'c' into R1
224 : ADD 3, 2, 1 ;  R3 = left + right
225 : ADD 1, 3, 0 ;  R1 = R3
226 : LDA 4, 6(5) ;  Base of callee frame
227 : ST  1, 3(4) ;  Store argument 2 into callee frame
228 : LD  1, 6(5) ;  Load parameter 'b' into R1
229 : ADD 2, 1, 0 ;  R2 = left operand
230 : LD  1, 8(5) ;  Load parameter 'd' into R1
231 : ADD 3, 2, 1 ;  R3 = left + right
232 : ADD 1, 3, 0 ;  R1 = R3
233 : LDA 4, 6(5) ;  Base of callee frame
234 : ST  1, 4(4) ;  Store argument 3 into callee frame
235 : LDA 4, 6(5) ;  Base of callee frame
236 : LDA 6, 240(0) ;  Compute return address
237 : ST  6, 0(4) ;  Store RA in callee frame
238 : ADD 5, 4, 0 ;  Update pointer (enter callee)
239 : LDA 7, 115(0) ;  Call fractionEqual
240 : LD  1, 5(5) ;  Load callee return value into R1
241 : LDC 3, 6(0) ;  Load callee frame size
242 : SUB 5, 5, 3 ;  Restore pointer
243 : JEQ 1, 306(0) ;  If condition is false, jump to ELSE
246 : LD  1, 1(5) ;  Load parameter 'selector' into R1
247 : ADD 2, 1, 0 ;  R2 = left operand
248 : LDC 1, 1(0) ;  Load integer-literal into R1
249 : SUB 3, 2, 1 ;  delta = left - right
250 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
251 : LDC 1, 0(0) ;  FALSE
252 : LDA 7, 1(7) ;  Skip TRUE
253 : LDC 1, 1(0) ;  TRUE
254 : JEQ 1, 263(0) ;  If condition is false, jump to ELSE
256 : LD  1, 5(5) ;  Load parameter 'a' into R1
257 : ADD 2, 1, 0 ;  R2 = left operand
258 : LD  1, 7(5) ;  Load parameter 'c' into R1
259 : ADD 3, 2, 1 ;  R3 = left + right
260 : ADD 1, 3, 0 ;  R1 = R3
261 : LDA 7, 304(0) ;  Skip ELSE block
264 : LD  1, 1(5) ;  Load parameter 'selector' into R1
265 : ADD 2, 1, 0 ;  R2 = left operand
266 : LDC 1, 2(0) ;  Load integer-literal into R1
267 : SUB 3, 2, 1 ;  delta = left - right
268 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
269 : LDC 1, 0(0) ;  FALSE
270 : LDA 7, 1(7) ;  Skip TRUE
271 : LDC 1, 1(0) ;  TRUE
272 : JEQ 1, 281(0) ;  If condition is false, jump to ELSE
274 : LD  1, 6(5) ;  Load parameter 'b' into R1
275 : ADD 2, 1, 0 ;  R2 = left operand
276 : LD  1, 8(5) ;  Load parameter 'd' into R1
277 : ADD 3, 2, 1 ;  R3 = left + right
278 : ADD 1, 3, 0 ;  R1 = R3
279 : LDA 7, 304(0) ;  Skip ELSE block
282 : LD  1, 1(5) ;  Load parameter 'selector' into R1
283 : ADD 2, 1, 0 ;  R2 = left operand
284 : LDC 1, 3(0) ;  Load integer-literal into R1
285 : SUB 3, 2, 1 ;  delta = left - right
286 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
287 : LDC 1, 0(0) ;  FALSE
288 : LDA 7, 1(7) ;  Skip TRUE
289 : LDC 1, 1(0) ;  TRUE
290 : JEQ 1, 299(0) ;  If condition is false, jump to ELSE
292 : LD  1, 5(5) ;  Load parameter 'a' into R1
293 : ADD 2, 1, 0 ;  R2 = left operand
294 : LD  1, 7(5) ;  Load parameter 'c' into R1
295 : ADD 3, 2, 1 ;  R3 = left + right
296 : ADD 1, 3, 0 ;  R1 = R3
297 : LDA 7, 304(0) ;  Skip ELSE block
299 : LD  1, 6(5) ;  Load parameter 'b' into R1
300 : ADD 2, 1, 0 ;  R2 = left operand
301 : LD  1, 8(5) ;  Load parameter 'd' into R1
302 : ADD 3, 2, 1 ;  R3 = left + right
303 : ADD 1, 3, 0 ;  R1 = R3
304 : LDA 7, 419(0) ;  Skip ELSE block
307 : LD  1, 2(5) ;  Load parameter 'xNum' into R1
308 : LDA 4, 6(5) ;  Base of callee frame
309 : ST  1, 1(4) ;  Store argument 0 into callee frame
310 : LD  1, 3(5) ;  Load parameter 'xDen' into R1
311 : LDA 4, 6(5) ;  Base of callee frame
312 : ST  1, 2(4) ;  Store argument 1 into callee frame
313 : LD  1, 5(5) ;  Load parameter 'a' into R1
314 : ADD 2, 1, 0 ;  R2 = left operand
315 : LD  1, 7(5) ;  Load parameter 'c' into R1
316 : ADD 3, 2, 1 ;  R3 = left + right
317 : ADD 1, 3, 0 ;  R1 = R3
318 : LDA 4, 6(5) ;  Base of callee frame
319 : ST  1, 3(4) ;  Store argument 2 into callee frame
320 : LD  1, 6(5) ;  Load parameter 'b' into R1
321 : ADD 2, 1, 0 ;  R2 = left operand
322 : LD  1, 8(5) ;  Load parameter 'd' into R1
323 : ADD 3, 2, 1 ;  R3 = left + right
324 : ADD 1, 3, 0 ;  R1 = R3
325 : LDA 4, 6(5) ;  Base of callee frame
326 : ST  1, 4(4) ;  Store argument 3 into callee frame
327 : LDA 4, 6(5) ;  Base of callee frame
328 : LDA 6, 332(0) ;  Compute return address
329 : ST  6, 0(4) ;  Store RA in callee frame
330 : ADD 5, 4, 0 ;  Update pointer (enter callee)
331 : LDA 7, 89(0) ;  Call fractionGreater
332 : LD  1, 5(5) ;  Load callee return value into R1
333 : LDC 3, 6(0) ;  Load callee frame size
334 : SUB 5, 5, 3 ;  Restore pointer
335 : JEQ 1, 379(0) ;  If condition is false, jump to ELSE
337 : LD  1, 1(5) ;  Load parameter 'selector' into R1
338 : LDA 4, 10(5) ;  Base of callee frame
339 : ST  1, 1(4) ;  Store argument 0 into callee frame
340 : LD  1, 2(5) ;  Load parameter 'xNum' into R1
341 : LDA 4, 10(5) ;  Base of callee frame
342 : ST  1, 2(4) ;  Store argument 1 into callee frame
343 : LD  1, 3(5) ;  Load parameter 'xDen' into R1
344 : LDA 4, 10(5) ;  Base of callee frame
345 : ST  1, 3(4) ;  Store argument 2 into callee frame
346 : LD  1, 4(5) ;  Load parameter 'N' into R1
347 : LDA 4, 10(5) ;  Base of callee frame
348 : ST  1, 4(4) ;  Store argument 3 into callee frame
349 : LD  1, 5(5) ;  Load parameter 'a' into R1
350 : ADD 2, 1, 0 ;  R2 = left operand
351 : LD  1, 7(5) ;  Load parameter 'c' into R1
352 : ADD 3, 2, 1 ;  R3 = left + right
353 : ADD 1, 3, 0 ;  R1 = R3
354 : LDA 4, 10(5) ;  Base of callee frame
355 : ST  1, 5(4) ;  Store argument 4 into callee frame
356 : LD  1, 6(5) ;  Load parameter 'b' into R1
357 : ADD 2, 1, 0 ;  R2 = left operand
358 : LD  1, 8(5) ;  Load parameter 'd' into R1
359 : ADD 3, 2, 1 ;  R3 = left + right
360 : ADD 1, 3, 0 ;  R1 = R3
361 : LDA 4, 10(5) ;  Base of callee frame
362 : ST  1, 6(4) ;  Store argument 5 into callee frame
363 : LD  1, 7(5) ;  Load parameter 'c' into R1
364 : LDA 4, 10(5) ;  Base of callee frame
365 : ST  1, 7(4) ;  Store argument 6 into callee frame
366 : LD  1, 8(5) ;  Load parameter 'd' into R1
367 : LDA 4, 10(5) ;  Base of callee frame
368 : ST  1, 8(4) ;  Store argument 7 into callee frame
369 : LDA 4, 10(5) ;  Base of callee frame
370 : LDA 6, 374(0) ;  Compute return address
371 : ST  6, 0(4) ;  Store RA in callee frame
372 : ADD 5, 4, 0 ;  Update pointer (enter callee)
373 : LDA 7, 135(0) ;  Call whileLoopFor
374 : LD  1, 9(5) ;  Load callee return value into R1
375 : LDC 3, 10(0) ;  Load callee frame size
376 : SUB 5, 5, 3 ;  Restore pointer
377 : LDA 7, 419(0) ;  Skip ELSE block
379 : LD  1, 1(5) ;  Load parameter 'selector' into R1
380 : LDA 4, 10(5) ;  Base of callee frame
381 : ST  1, 1(4) ;  Store argument 0 into callee frame
382 : LD  1, 2(5) ;  Load parameter 'xNum' into R1
383 : LDA 4, 10(5) ;  Base of callee frame
384 : ST  1, 2(4) ;  Store argument 1 into callee frame
385 : LD  1, 3(5) ;  Load parameter 'xDen' into R1
386 : LDA 4, 10(5) ;  Base of callee frame
387 : ST  1, 3(4) ;  Store argument 2 into callee frame
388 : LD  1, 4(5) ;  Load parameter 'N' into R1
389 : LDA 4, 10(5) ;  Base of callee frame
390 : ST  1, 4(4) ;  Store argument 3 into callee frame
391 : LD  1, 5(5) ;  Load parameter 'a' into R1
392 : LDA 4, 10(5) ;  Base of callee frame
393 : ST  1, 5(4) ;  Store argument 4 into callee frame
394 : LD  1, 6(5) ;  Load parameter 'b' into R1
395 : LDA 4, 10(5) ;  Base of callee frame
396 : ST  1, 6(4) ;  Store argument 5 into callee frame
397 : LD  1, 5(5) ;  Load parameter 'a' into R1
398 : ADD 2, 1, 0 ;  R2 = left operand
399 : LD  1, 7(5) ;  Load parameter 'c' into R1
400 : ADD 3, 2, 1 ;  R3 = left + right
401 : ADD 1, 3, 0 ;  R1 = R3
402 : LDA 4, 10(5) ;  Base of callee frame
403 : ST  1, 7(4) ;  Store argument 6 into callee frame
404 : LD  1, 6(5) ;  Load parameter 'b' into R1
405 : ADD 2, 1, 0 ;  R2 = left operand
406 : LD  1, 8(5) ;  Load parameter 'd' into R1
407 : ADD 3, 2, 1 ;  R3 = left + right
408 : ADD 1, 3, 0 ;  R1 = R3
409 : LDA 4, 10(5) ;  Base of callee frame
410 : ST  1, 8(4) ;  Store argument 7 into callee frame
411 : LDA 4, 10(5) ;  Base of callee frame
412 : LDA 6, 416(0) ;  Compute return address
413 : ST  6, 0(4) ;  Store RA in callee frame
414 : ADD 5, 4, 0 ;  Update pointer (enter callee)
415 : LDA 7, 135(0) ;  Call whileLoopFor
416 : LD  1, 9(5) ;  Load callee return value into R1
417 : LDC 3, 10(0) ;  Load callee frame size
418 : SUB 5, 5, 3 ;  Restore pointer
419 : ST  1, 9(5) ;  Store function result into stack frame
420 : LD  6, 0(5) ;  Load return address
421 : LDA 7, 0(6) ;  Return to caller
424 : LD  1, 3(5) ;  Load parameter 'b' into R1
425 : LDA 4, 4(5) ;  Base of callee frame
426 : ST  1, 1(4) ;  Store argument 0 into callee frame
427 : LD  1, 1(5) ;  Load parameter 'N' into R1
428 : LDA 4, 4(5) ;  Base of callee frame
429 : ST  1, 2(4) ;  Store argument 1 into callee frame
430 : LDA 4, 4(5) ;  Base of callee frame
431 : LDA 6, 435(0) ;  Compute return address
432 : ST  6, 0(4) ;  Store RA in callee frame
433 : ADD 5, 4, 0 ;  Update pointer (enter callee)
434 : LDA 7, 64(0) ;  Call greater
435 : LD  1, 3(5) ;  Load callee return value into R1
436 : LDC 3, 4(0) ;  Load callee frame size
437 : SUB 5, 5, 3 ;  Restore pointer
438 : JEQ 1, 443(0) ;  If condition is false, jump to ELSE
440 : LD  1, 5(5) ;  Load parameter 'd' into R1
441 : LDA 7, 444(0) ;  Skip ELSE block
443 : LD  1, 3(5) ;  Load parameter 'b' into R1
444 : ST  1, 6(5) ;  Store function result into stack frame
445 : LD  6, 0(5) ;  Load return address
446 : LDA 7, 0(6) ;  Return to caller
449 : LD  1, 3(5) ;  Load parameter 'b' into R1
450 : LDA 4, 4(5) ;  Base of callee frame
451 : ST  1, 1(4) ;  Store argument 0 into callee frame
452 : LD  1, 1(5) ;  Load parameter 'N' into R1
453 : LDA 4, 4(5) ;  Base of callee frame
454 : ST  1, 2(4) ;  Store argument 1 into callee frame
455 : LDA 4, 4(5) ;  Base of callee frame
456 : LDA 6, 460(0) ;  Compute return address
457 : ST  6, 0(4) ;  Store RA in callee frame
458 : ADD 5, 4, 0 ;  Update pointer (enter callee)
459 : LDA 7, 64(0) ;  Call greater
460 : LD  1, 3(5) ;  Load callee return value into R1
461 : LDC 3, 4(0) ;  Load callee frame size
462 : SUB 5, 5, 3 ;  Restore pointer
463 : JEQ 1, 468(0) ;  If condition is false, jump to ELSE
465 : LD  1, 4(5) ;  Load parameter 'c' into R1
466 : LDA 7, 469(0) ;  Skip ELSE block
468 : LD  1, 2(5) ;  Load parameter 'a' into R1
469 : ST  1, 6(5) ;  Store function result into stack frame
470 : LD  6, 0(5) ;  Load return address
471 : LDA 7, 0(6) ;  Return to caller
473 : LD  1, 3(5) ;  Load parameter 'N' into R1
474 : LDA 4, 7(5) ;  Base of callee frame
475 : ST  1, 1(4) ;  Store argument 0 into callee frame
476 : LDC 1, 1(0) ;  Load integer-literal into R1
477 : LDA 4, 10(5) ;  Base of callee frame
478 : ST  1, 1(4) ;  Store argument 0 into callee frame
479 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
480 : LDA 4, 10(5) ;  Base of callee frame
481 : ST  1, 2(4) ;  Store argument 1 into callee frame
482 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
483 : LDA 4, 10(5) ;  Base of callee frame
484 : ST  1, 3(4) ;  Store argument 2 into callee frame
485 : LD  1, 3(5) ;  Load parameter 'N' into R1
486 : LDA 4, 10(5) ;  Base of callee frame
487 : ST  1, 4(4) ;  Store argument 3 into callee frame
488 : LDC 1, 0(0) ;  Load integer-literal into R1
489 : LDA 4, 10(5) ;  Base of callee frame
490 : ST  1, 5(4) ;  Store argument 4 into callee frame
491 : LDC 1, 1(0) ;  Load integer-literal into R1
492 : LDA 4, 10(5) ;  Base of callee frame
493 : ST  1, 6(4) ;  Store argument 5 into callee frame
494 : LDC 1, 1(0) ;  Load integer-literal into R1
495 : LDA 4, 10(5) ;  Base of callee frame
496 : ST  1, 7(4) ;  Store argument 6 into callee frame
497 : LDC 1, 1(0) ;  Load integer-literal into R1
498 : LDA 4, 10(5) ;  Base of callee frame
499 : ST  1, 8(4) ;  Store argument 7 into callee frame
500 : LDA 4, 10(5) ;  Base of callee frame
501 : LDA 6, 505(0) ;  Compute return address
502 : ST  6, 0(4) ;  Store RA in callee frame
503 : ADD 5, 4, 0 ;  Update pointer (enter callee)
504 : LDA 7, 135(0) ;  Call whileLoopFor
505 : LD  1, 9(5) ;  Load callee return value into R1
506 : LDC 3, 10(0) ;  Load callee frame size
507 : SUB 5, 5, 3 ;  Restore pointer
508 : LDA 4, 7(5) ;  Base of callee frame
509 : ST  1, 2(4) ;  Store argument 1 into callee frame
510 : LDC 1, 2(0) ;  Load integer-literal into R1
511 : LDA 4, 10(5) ;  Base of callee frame
512 : ST  1, 1(4) ;  Store argument 0 into callee frame
513 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
514 : LDA 4, 10(5) ;  Base of callee frame
515 : ST  1, 2(4) ;  Store argument 1 into callee frame
516 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
517 : LDA 4, 10(5) ;  Base of callee frame
518 : ST  1, 3(4) ;  Store argument 2 into callee frame
519 : LD  1, 3(5) ;  Load parameter 'N' into R1
520 : LDA 4, 10(5) ;  Base of callee frame
521 : ST  1, 4(4) ;  Store argument 3 into callee frame
522 : LDC 1, 0(0) ;  Load integer-literal into R1
523 : LDA 4, 10(5) ;  Base of callee frame
524 : ST  1, 5(4) ;  Store argument 4 into callee frame
525 : LDC 1, 1(0) ;  Load integer-literal into R1
526 : LDA 4, 10(5) ;  Base of callee frame
527 : ST  1, 6(4) ;  Store argument 5 into callee frame
528 : LDC 1, 1(0) ;  Load integer-literal into R1
529 : LDA 4, 10(5) ;  Base of callee frame
530 : ST  1, 7(4) ;  Store argument 6 into callee frame
531 : LDC 1, 1(0) ;  Load integer-literal into R1
532 : LDA 4, 10(5) ;  Base of callee frame
533 : ST  1, 8(4) ;  Store argument 7 into callee frame
534 : LDA 4, 10(5) ;  Base of callee frame
535 : LDA 6, 539(0) ;  Compute return address
536 : ST  6, 0(4) ;  Store RA in callee frame
537 : ADD 5, 4, 0 ;  Update pointer (enter callee)
538 : LDA 7, 135(0) ;  Call whileLoopFor
539 : LD  1, 9(5) ;  Load callee return value into R1
540 : LDC 3, 10(0) ;  Load callee frame size
541 : SUB 5, 5, 3 ;  Restore pointer
542 : LDA 4, 7(5) ;  Base of callee frame
543 : ST  1, 3(4) ;  Store argument 2 into callee frame
544 : LDC 1, 3(0) ;  Load integer-literal into R1
545 : LDA 4, 10(5) ;  Base of callee frame
546 : ST  1, 1(4) ;  Store argument 0 into callee frame
547 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
548 : LDA 4, 10(5) ;  Base of callee frame
549 : ST  1, 2(4) ;  Store argument 1 into callee frame
550 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
551 : LDA 4, 10(5) ;  Base of callee frame
552 : ST  1, 3(4) ;  Store argument 2 into callee frame
553 : LD  1, 3(5) ;  Load parameter 'N' into R1
554 : LDA 4, 10(5) ;  Base of callee frame
555 : ST  1, 4(4) ;  Store argument 3 into callee frame
556 : LDC 1, 0(0) ;  Load integer-literal into R1
557 : LDA 4, 10(5) ;  Base of callee frame
558 : ST  1, 5(4) ;  Store argument 4 into callee frame
559 : LDC 1, 1(0) ;  Load integer-literal into R1
560 : LDA 4, 10(5) ;  Base of callee frame
561 : ST  1, 6(4) ;  Store argument 5 into callee frame
562 : LDC 1, 1(0) ;  Load integer-literal into R1
563 : LDA 4, 10(5) ;  Base of callee frame
564 : ST  1, 7(4) ;  Store argument 6 into callee frame
565 : LDC 1, 1(0) ;  Load integer-literal into R1
566 : LDA 4, 10(5) ;  Base of callee frame
567 : ST  1, 8(4) ;  Store argument 7 into callee frame
568 : LDA 4, 10(5) ;  Base of callee frame
569 : LDA 6, 573(0) ;  Compute return address
570 : ST  6, 0(4) ;  Store RA in callee frame
571 : ADD 5, 4, 0 ;  Update pointer (enter callee)
572 : LDA 7, 135(0) ;  Call whileLoopFor
573 : LD  1, 9(5) ;  Load callee return value into R1
574 : LDC 3, 10(0) ;  Load callee frame size
575 : SUB 5, 5, 3 ;  Restore pointer
576 : LDA 4, 7(5) ;  Base of callee frame
577 : ST  1, 4(4) ;  Store argument 3 into callee frame
578 : LDC 1, 4(0) ;  Load integer-literal into R1
579 : LDA 4, 10(5) ;  Base of callee frame
580 : ST  1, 1(4) ;  Store argument 0 into callee frame
581 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
582 : LDA 4, 10(5) ;  Base of callee frame
583 : ST  1, 2(4) ;  Store argument 1 into callee frame
584 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
585 : LDA 4, 10(5) ;  Base of callee frame
586 : ST  1, 3(4) ;  Store argument 2 into callee frame
587 : LD  1, 3(5) ;  Load parameter 'N' into R1
588 : LDA 4, 10(5) ;  Base of callee frame
589 : ST  1, 4(4) ;  Store argument 3 into callee frame
590 : LDC 1, 0(0) ;  Load integer-literal into R1
591 : LDA 4, 10(5) ;  Base of callee frame
592 : ST  1, 5(4) ;  Store argument 4 into callee frame
593 : LDC 1, 1(0) ;  Load integer-literal into R1
594 : LDA 4, 10(5) ;  Base of callee frame
595 : ST  1, 6(4) ;  Store argument 5 into callee frame
596 : LDC 1, 1(0) ;  Load integer-literal into R1
597 : LDA 4, 10(5) ;  Base of callee frame
598 : ST  1, 7(4) ;  Store argument 6 into callee frame
599 : LDC 1, 1(0) ;  Load integer-literal into R1
600 : LDA 4, 10(5) ;  Base of callee frame
601 : ST  1, 8(4) ;  Store argument 7 into callee frame
602 : LDA 4, 10(5) ;  Base of callee frame
603 : LDA 6, 607(0) ;  Compute return address
604 : ST  6, 0(4) ;  Store RA in callee frame
605 : ADD 5, 4, 0 ;  Update pointer (enter callee)
606 : LDA 7, 135(0) ;  Call whileLoopFor
607 : LD  1, 9(5) ;  Load callee return value into R1
608 : LDC 3, 10(0) ;  Load callee frame size
609 : SUB 5, 5, 3 ;  Restore pointer
610 : LDA 4, 7(5) ;  Base of callee frame
611 : ST  1, 5(4) ;  Store argument 4 into callee frame
612 : LDA 4, 7(5) ;  Base of callee frame
613 : LDA 6, 617(0) ;  Compute return address
614 : ST  6, 0(4) ;  Store RA in callee frame
615 : ADD 5, 4, 0 ;  Update pointer (enter callee)
616 : LDA 7, 423(0) ;  Call fareySelectDen
617 : LD  1, 6(5) ;  Load callee return value into R1
618 : LDC 3, 7(0) ;  Load callee frame size
619 : SUB 5, 5, 3 ;  Restore pointer
620 : ST  1, 4(5) ;  Store function result into stack frame
621 : LD  6, 0(5) ;  Load return address
622 : LDA 7, 0(6) ;  Return to caller
624 : LD  1, 3(5) ;  Load parameter 'N' into R1
625 : LDA 4, 7(5) ;  Base of callee frame
626 : ST  1, 1(4) ;  Store argument 0 into callee frame
627 : LDC 1, 1(0) ;  Load integer-literal into R1
628 : LDA 4, 10(5) ;  Base of callee frame
629 : ST  1, 1(4) ;  Store argument 0 into callee frame
630 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
631 : LDA 4, 10(5) ;  Base of callee frame
632 : ST  1, 2(4) ;  Store argument 1 into callee frame
633 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
634 : LDA 4, 10(5) ;  Base of callee frame
635 : ST  1, 3(4) ;  Store argument 2 into callee frame
636 : LD  1, 3(5) ;  Load parameter 'N' into R1
637 : LDA 4, 10(5) ;  Base of callee frame
638 : ST  1, 4(4) ;  Store argument 3 into callee frame
639 : LDC 1, 0(0) ;  Load integer-literal into R1
640 : LDA 4, 10(5) ;  Base of callee frame
641 : ST  1, 5(4) ;  Store argument 4 into callee frame
642 : LDC 1, 1(0) ;  Load integer-literal into R1
643 : LDA 4, 10(5) ;  Base of callee frame
644 : ST  1, 6(4) ;  Store argument 5 into callee frame
645 : LDC 1, 1(0) ;  Load integer-literal into R1
646 : LDA 4, 10(5) ;  Base of callee frame
647 : ST  1, 7(4) ;  Store argument 6 into callee frame
648 : LDC 1, 1(0) ;  Load integer-literal into R1
649 : LDA 4, 10(5) ;  Base of callee frame
650 : ST  1, 8(4) ;  Store argument 7 into callee frame
651 : LDA 4, 10(5) ;  Base of callee frame
652 : LDA 6, 656(0) ;  Compute return address
653 : ST  6, 0(4) ;  Store RA in callee frame
654 : ADD 5, 4, 0 ;  Update pointer (enter callee)
655 : LDA 7, 135(0) ;  Call whileLoopFor
656 : LD  1, 9(5) ;  Load callee return value into R1
657 : LDC 3, 10(0) ;  Load callee frame size
658 : SUB 5, 5, 3 ;  Restore pointer
659 : LDA 4, 7(5) ;  Base of callee frame
660 : ST  1, 2(4) ;  Store argument 1 into callee frame
661 : LDC 1, 2(0) ;  Load integer-literal into R1
662 : LDA 4, 10(5) ;  Base of callee frame
663 : ST  1, 1(4) ;  Store argument 0 into callee frame
664 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
665 : LDA 4, 10(5) ;  Base of callee frame
666 : ST  1, 2(4) ;  Store argument 1 into callee frame
667 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
668 : LDA 4, 10(5) ;  Base of callee frame
669 : ST  1, 3(4) ;  Store argument 2 into callee frame
670 : LD  1, 3(5) ;  Load parameter 'N' into R1
671 : LDA 4, 10(5) ;  Base of callee frame
672 : ST  1, 4(4) ;  Store argument 3 into callee frame
673 : LDC 1, 0(0) ;  Load integer-literal into R1
674 : LDA 4, 10(5) ;  Base of callee frame
675 : ST  1, 5(4) ;  Store argument 4 into callee frame
676 : LDC 1, 1(0) ;  Load integer-literal into R1
677 : LDA 4, 10(5) ;  Base of callee frame
678 : ST  1, 6(4) ;  Store argument 5 into callee frame
679 : LDC 1, 1(0) ;  Load integer-literal into R1
680 : LDA 4, 10(5) ;  Base of callee frame
681 : ST  1, 7(4) ;  Store argument 6 into callee frame
682 : LDC 1, 1(0) ;  Load integer-literal into R1
683 : LDA 4, 10(5) ;  Base of callee frame
684 : ST  1, 8(4) ;  Store argument 7 into callee frame
685 : LDA 4, 10(5) ;  Base of callee frame
686 : LDA 6, 690(0) ;  Compute return address
687 : ST  6, 0(4) ;  Store RA in callee frame
688 : ADD 5, 4, 0 ;  Update pointer (enter callee)
689 : LDA 7, 135(0) ;  Call whileLoopFor
690 : LD  1, 9(5) ;  Load callee return value into R1
691 : LDC 3, 10(0) ;  Load callee frame size
692 : SUB 5, 5, 3 ;  Restore pointer
693 : LDA 4, 7(5) ;  Base of callee frame
694 : ST  1, 3(4) ;  Store argument 2 into callee frame
695 : LDC 1, 3(0) ;  Load integer-literal into R1
696 : LDA 4, 10(5) ;  Base of callee frame
697 : ST  1, 1(4) ;  Store argument 0 into callee frame
698 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
699 : LDA 4, 10(5) ;  Base of callee frame
700 : ST  1, 2(4) ;  Store argument 1 into callee frame
701 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
702 : LDA 4, 10(5) ;  Base of callee frame
703 : ST  1, 3(4) ;  Store argument 2 into callee frame
704 : LD  1, 3(5) ;  Load parameter 'N' into R1
705 : LDA 4, 10(5) ;  Base of callee frame
706 : ST  1, 4(4) ;  Store argument 3 into callee frame
707 : LDC 1, 0(0) ;  Load integer-literal into R1
708 : LDA 4, 10(5) ;  Base of callee frame
709 : ST  1, 5(4) ;  Store argument 4 into callee frame
710 : LDC 1, 1(0) ;  Load integer-literal into R1
711 : LDA 4, 10(5) ;  Base of callee frame
712 : ST  1, 6(4) ;  Store argument 5 into callee frame
713 : LDC 1, 1(0) ;  Load integer-literal into R1
714 : LDA 4, 10(5) ;  Base of callee frame
715 : ST  1, 7(4) ;  Store argument 6 into callee frame
716 : LDC 1, 1(0) ;  Load integer-literal into R1
717 : LDA 4, 10(5) ;  Base of callee frame
718 : ST  1, 8(4) ;  Store argument 7 into callee frame
719 : LDA 4, 10(5) ;  Base of callee frame
720 : LDA 6, 724(0) ;  Compute return address
721 : ST  6, 0(4) ;  Store RA in callee frame
722 : ADD 5, 4, 0 ;  Update pointer (enter callee)
723 : LDA 7, 135(0) ;  Call whileLoopFor
724 : LD  1, 9(5) ;  Load callee return value into R1
725 : LDC 3, 10(0) ;  Load callee frame size
726 : SUB 5, 5, 3 ;  Restore pointer
727 : LDA 4, 7(5) ;  Base of callee frame
728 : ST  1, 4(4) ;  Store argument 3 into callee frame
729 : LDC 1, 4(0) ;  Load integer-literal into R1
730 : LDA 4, 10(5) ;  Base of callee frame
731 : ST  1, 1(4) ;  Store argument 0 into callee frame
732 : LD  1, 1(5) ;  Load parameter 'xNum' into R1
733 : LDA 4, 10(5) ;  Base of callee frame
734 : ST  1, 2(4) ;  Store argument 1 into callee frame
735 : LD  1, 2(5) ;  Load parameter 'xDen' into R1
736 : LDA 4, 10(5) ;  Base of callee frame
737 : ST  1, 3(4) ;  Store argument 2 into callee frame
738 : LD  1, 3(5) ;  Load parameter 'N' into R1
739 : LDA 4, 10(5) ;  Base of callee frame
740 : ST  1, 4(4) ;  Store argument 3 into callee frame
741 : LDC 1, 0(0) ;  Load integer-literal into R1
742 : LDA 4, 10(5) ;  Base of callee frame
743 : ST  1, 5(4) ;  Store argument 4 into callee frame
744 : LDC 1, 1(0) ;  Load integer-literal into R1
745 : LDA 4, 10(5) ;  Base of callee frame
746 : ST  1, 6(4) ;  Store argument 5 into callee frame
747 : LDC 1, 1(0) ;  Load integer-literal into R1
748 : LDA 4, 10(5) ;  Base of callee frame
749 : ST  1, 7(4) ;  Store argument 6 into callee frame
750 : LDC 1, 1(0) ;  Load integer-literal into R1
751 : LDA 4, 10(5) ;  Base of callee frame
752 : ST  1, 8(4) ;  Store argument 7 into callee frame
753 : LDA 4, 10(5) ;  Base of callee frame
754 : LDA 6, 758(0) ;  Compute return address
755 : ST  6, 0(4) ;  Store RA in callee frame
756 : ADD 5, 4, 0 ;  Update pointer (enter callee)
757 : LDA 7, 135(0) ;  Call whileLoopFor
758 : LD  1, 9(5) ;  Load callee return value into R1
759 : LDC 3, 10(0) ;  Load callee frame size
760 : SUB 5, 5, 3 ;  Restore pointer
761 : LDA 4, 7(5) ;  Base of callee frame
762 : ST  1, 5(4) ;  Store argument 4 into callee frame
763 : LDA 4, 7(5) ;  Base of callee frame
764 : LDA 6, 768(0) ;  Compute return address
765 : ST  6, 0(4) ;  Store RA in callee frame
766 : ADD 5, 4, 0 ;  Update pointer (enter callee)
767 : LDA 7, 448(0) ;  Call fareySelectNum
768 : LD  1, 6(5) ;  Load callee return value into R1
769 : LDC 3, 7(0) ;  Load callee frame size
770 : SUB 5, 5, 3 ;  Restore pointer
771 : ST  1, 4(5) ;  Store function result into stack frame
772 : LD  6, 0(5) ;  Load return address
773 : LDA 7, 0(6) ;  Return to caller
