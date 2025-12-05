1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'x' into R1
15 : LDA 4, 3(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDA 4, 3(5) ;  Base of callee frame
18 : LDA 6, 22(0) ;  Compute return address
19 : ST  6, 0(4) ;  Store RA in callee frame
20 : ADD 5, 4, 0 ;  Update pointer (enter callee)
21 : LDA 7, 559(0) ;  Call circularPrimesTo
22 : LD  1, 2(5) ;  Load callee return value into R1
23 : LDC 3, 3(0) ;  Load callee frame size
24 : SUB 5, 5, 3 ;  Restore pointer
25 : ST  1, 2(5) ;  Store result into current frame's return slot
26 : LD  1, 2(5) ;  Load return value into R1
27 : LD  6, 0(5) ;  Load return address for main function into R6
28 : LDA 7, 0(6) ;  Jump to return address of main function
31 : LD  1, 1(5) ;  Load parameter 'num' into R1
32 : ADD 2, 1, 0 ;  R2 = left operand
33 : LD  1, 2(5) ;  Load parameter 'den' into R1
34 : SUB 3, 2, 1 ;  delta = left - right
35 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
36 : LDC 1, 0(0) ;  FALSE
37 : LDA 7, 1(7) ;  Skip TRUE
38 : LDC 1, 1(0) ;  TRUE
39 : JEQ 1, 44(0) ;  If condition is false, jump to ELSE
41 : LD  1, 1(5) ;  Load parameter 'num' into R1
42 : LDA 7, 62(0) ;  Skip ELSE block
44 : LD  1, 1(5) ;  Load parameter 'num' into R1
45 : ADD 2, 1, 0 ;  R2 = left operand
46 : LD  1, 2(5) ;  Load parameter 'den' into R1
47 : SUB 3, 2, 1 ;  R3 = left - right
48 : ADD 1, 3, 0 ;  R1 = R3
49 : LDA 4, 4(5) ;  Base of callee frame
50 : ST  1, 1(4) ;  Store argument 0 into callee frame
51 : LD  1, 2(5) ;  Load parameter 'den' into R1
52 : LDA 4, 4(5) ;  Base of callee frame
53 : ST  1, 2(4) ;  Store argument 1 into callee frame
54 : LDA 4, 4(5) ;  Base of callee frame
55 : LDA 6, 59(0) ;  Compute return address
56 : ST  6, 0(4) ;  Store RA in callee frame
57 : ADD 5, 4, 0 ;  Update pointer (enter callee)
58 : LDA 7, 30(0) ;  Call mod
59 : LD  1, 3(5) ;  Load callee return value into R1
60 : LDC 3, 4(0) ;  Load callee frame size
61 : SUB 5, 5, 3 ;  Restore pointer
62 : ST  1, 3(5) ;  Store function result into stack frame
63 : LD  6, 0(5) ;  Load return address
64 : LDA 7, 0(6) ;  Return to caller
66 : LD  1, 2(5) ;  Load parameter 'b' into R1
67 : LDA 4, 4(5) ;  Base of callee frame
68 : ST  1, 1(4) ;  Store argument 0 into callee frame
69 : LD  1, 1(5) ;  Load parameter 'a' into R1
70 : LDA 4, 4(5) ;  Base of callee frame
71 : ST  1, 2(4) ;  Store argument 1 into callee frame
72 : LDA 4, 4(5) ;  Base of callee frame
73 : LDA 6, 77(0) ;  Compute return address
74 : ST  6, 0(4) ;  Store RA in callee frame
75 : ADD 5, 4, 0 ;  Update pointer (enter callee)
76 : LDA 7, 30(0) ;  Call mod
77 : LD  1, 3(5) ;  Load callee return value into R1
78 : LDC 3, 4(0) ;  Load callee frame size
79 : SUB 5, 5, 3 ;  Restore pointer
80 : ADD 2, 1, 0 ;  R2 = left operand
81 : LDC 1, 0(0) ;  Load integer-literal into R1
82 : SUB 3, 2, 1 ;  delta = left - right
83 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
84 : LDC 1, 0(0) ;  FALSE
85 : LDA 7, 1(7) ;  Skip TRUE
86 : LDC 1, 1(0) ;  TRUE
87 : ST  1, 3(5) ;  Store function result into stack frame
88 : LD  6, 0(5) ;  Load return address
89 : LDA 7, 0(6) ;  Return to caller
92 : LD  1, 1(5) ;  Load parameter 'i' into R1
93 : ADD 2, 1, 0 ;  R2 = left operand
94 : LD  1, 2(5) ;  Load parameter 'n' into R1
95 : SUB 3, 2, 1 ;  delta = left - right
96 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
97 : LDC 1, 0(0) ;  FALSE
98 : LDA 7, 1(7) ;  Skip TRUE
99 : LDC 1, 1(0) ;  TRUE
100 : JEQ 1, 139(0) ;  If condition is false, jump to ELSE
102 : LD  1, 1(5) ;  Load parameter 'i' into R1
103 : LDA 4, 4(5) ;  Base of callee frame
104 : ST  1, 1(4) ;  Store argument 0 into callee frame
105 : LD  1, 2(5) ;  Load parameter 'n' into R1
106 : LDA 4, 4(5) ;  Base of callee frame
107 : ST  1, 2(4) ;  Store argument 1 into callee frame
108 : LDA 4, 4(5) ;  Base of callee frame
109 : LDA 6, 113(0) ;  Compute return address
110 : ST  6, 0(4) ;  Store RA in callee frame
111 : ADD 5, 4, 0 ;  Update pointer (enter callee)
112 : LDA 7, 66(0) ;  Call divides
113 : LD  1, 3(5) ;  Load callee return value into R1
114 : LDC 3, 4(0) ;  Load callee frame size
115 : SUB 5, 5, 3 ;  Restore pointer
116 : ADD 2, 1, 0 ;  R2 = left operand
117 : LD  1, 1(5) ;  Load parameter 'i' into R1
118 : ADD 2, 1, 0 ;  R2 = left operand
119 : LDC 1, 1(0) ;  Load integer-literal into R1
120 : ADD 3, 2, 1 ;  R3 = left + right
121 : ADD 1, 3, 0 ;  R1 = R3
122 : LDA 4, 4(5) ;  Base of callee frame
123 : ST  1, 1(4) ;  Store argument 0 into callee frame
124 : LD  1, 2(5) ;  Load parameter 'n' into R1
125 : LDA 4, 4(5) ;  Base of callee frame
126 : ST  1, 2(4) ;  Store argument 1 into callee frame
127 : LDA 4, 4(5) ;  Base of callee frame
128 : LDA 6, 132(0) ;  Compute return address
129 : ST  6, 0(4) ;  Store RA in callee frame
130 : ADD 5, 4, 0 ;  Update pointer (enter callee)
131 : LDA 7, 91(0) ;  Call hasDivisorFrom
132 : LD  1, 3(5) ;  Load callee return value into R1
133 : LDC 3, 4(0) ;  Load callee frame size
134 : SUB 5, 5, 3 ;  Restore pointer
135 : ADD 3, 2, 1 ;  R3 = left OR right
136 : ADD 1, 3, 0 ;  R1 = R3
137 : LDA 7, 140(0) ;  Skip ELSE block
139 : LDC 1, 0(0) ;  Load boolean-literal into R1
140 : ST  1, 3(5) ;  Store function result into stack frame
141 : LD  6, 0(5) ;  Load return address
142 : LDA 7, 0(6) ;  Return to caller
144 : LDC 1, 2(0) ;  Load integer-literal into R1
145 : LDA 4, 4(5) ;  Base of callee frame
146 : ST  1, 1(4) ;  Store argument 0 into callee frame
147 : LD  1, 1(5) ;  Load parameter 'n' into R1
148 : LDA 4, 4(5) ;  Base of callee frame
149 : ST  1, 2(4) ;  Store argument 1 into callee frame
150 : LDA 4, 4(5) ;  Base of callee frame
151 : LDA 6, 155(0) ;  Compute return address
152 : ST  6, 0(4) ;  Store RA in callee frame
153 : ADD 5, 4, 0 ;  Update pointer (enter callee)
154 : LDA 7, 91(0) ;  Call hasDivisorFrom
155 : LD  1, 3(5) ;  Load callee return value into R1
156 : LDC 3, 4(0) ;  Load callee frame size
157 : SUB 5, 5, 3 ;  Restore pointer
158 : LDC 2, 1(0) ;  Load 1 into R2
159 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
160 : ST  1, 2(5) ;  Store function result into stack frame
161 : LD  6, 0(5) ;  Load return address
162 : LDA 7, 0(6) ;  Return to caller
165 : LD  1, 1(5) ;  Load parameter 'x' into R1
166 : ADD 2, 1, 0 ;  R2 = left operand
167 : LDC 1, 10(0) ;  Load integer-literal into R1
168 : DIV 3, 2, 1 ;  R3 = left / right
169 : ADD 1, 3, 0 ;  R1 = R3
170 : ADD 2, 1, 0 ;  R2 = left operand
171 : LDC 1, 0(0) ;  Load integer-literal into R1
172 : SUB 3, 2, 1 ;  delta = left - right
173 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
174 : LDC 1, 0(0) ;  FALSE
175 : LDA 7, 1(7) ;  Skip TRUE
176 : LDC 1, 1(0) ;  TRUE
177 : JEQ 1, 182(0) ;  If condition is false, jump to ELSE
179 : LD  1, 2(5) ;  Load parameter 'y' into R1
180 : LDA 7, 204(0) ;  Skip ELSE block
182 : LD  1, 1(5) ;  Load parameter 'x' into R1
183 : ADD 2, 1, 0 ;  R2 = left operand
184 : LDC 1, 10(0) ;  Load integer-literal into R1
185 : DIV 3, 2, 1 ;  R3 = left / right
186 : ADD 1, 3, 0 ;  R1 = R3
187 : LDA 4, 4(5) ;  Base of callee frame
188 : ST  1, 1(4) ;  Store argument 0 into callee frame
189 : LD  1, 2(5) ;  Load parameter 'y' into R1
190 : ADD 2, 1, 0 ;  R2 = left operand
191 : LDC 1, 1(0) ;  Load integer-literal into R1
192 : ADD 3, 2, 1 ;  R3 = left + right
193 : ADD 1, 3, 0 ;  R1 = R3
194 : LDA 4, 4(5) ;  Base of callee frame
195 : ST  1, 2(4) ;  Store argument 1 into callee frame
196 : LDA 4, 4(5) ;  Base of callee frame
197 : LDA 6, 201(0) ;  Compute return address
198 : ST  6, 0(4) ;  Store RA in callee frame
199 : ADD 5, 4, 0 ;  Update pointer (enter callee)
200 : LDA 7, 164(0) ;  Call log10Helper
201 : LD  1, 3(5) ;  Load callee return value into R1
202 : LDC 3, 4(0) ;  Load callee frame size
203 : SUB 5, 5, 3 ;  Restore pointer
204 : ST  1, 3(5) ;  Store function result into stack frame
205 : LD  6, 0(5) ;  Load return address
206 : LDA 7, 0(6) ;  Return to caller
208 : LD  1, 1(5) ;  Load parameter 'x' into R1
209 : LDA 4, 4(5) ;  Base of callee frame
210 : ST  1, 1(4) ;  Store argument 0 into callee frame
211 : LDC 1, 0(0) ;  Load integer-literal into R1
212 : LDA 4, 4(5) ;  Base of callee frame
213 : ST  1, 2(4) ;  Store argument 1 into callee frame
214 : LDA 4, 4(5) ;  Base of callee frame
215 : LDA 6, 219(0) ;  Compute return address
216 : ST  6, 0(4) ;  Store RA in callee frame
217 : ADD 5, 4, 0 ;  Update pointer (enter callee)
218 : LDA 7, 164(0) ;  Call log10Helper
219 : LD  1, 3(5) ;  Load callee return value into R1
220 : LDC 3, 4(0) ;  Load callee frame size
221 : SUB 5, 5, 3 ;  Restore pointer
222 : ST  1, 2(5) ;  Store function result into stack frame
223 : LD  6, 0(5) ;  Load return address
224 : LDA 7, 0(6) ;  Return to caller
227 : LD  1, 2(5) ;  Load parameter 'power' into R1
228 : ADD 2, 1, 0 ;  R2 = left operand
229 : LDC 1, 0(0) ;  Load integer-literal into R1
230 : SUB 3, 2, 1 ;  delta = left - right
231 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
232 : LDC 1, 0(0) ;  FALSE
233 : LDA 7, 1(7) ;  Skip TRUE
234 : LDC 1, 1(0) ;  TRUE
235 : JEQ 1, 240(0) ;  If condition is false, jump to ELSE
237 : LDC 1, 1(0) ;  Load integer-literal into R1
238 : LDA 7, 279(0) ;  Skip ELSE block
241 : LD  1, 2(5) ;  Load parameter 'power' into R1
242 : ADD 2, 1, 0 ;  R2 = left operand
243 : LDC 1, 1(0) ;  Load integer-literal into R1
244 : SUB 3, 2, 1 ;  delta = left - right
245 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
246 : LDC 1, 0(0) ;  FALSE
247 : LDA 7, 1(7) ;  Skip TRUE
248 : LDC 1, 1(0) ;  TRUE
249 : JEQ 1, 254(0) ;  If condition is false, jump to ELSE
251 : LD  1, 3(5) ;  Load parameter 'total' into R1
252 : LDA 7, 279(0) ;  Skip ELSE block
254 : LD  1, 1(5) ;  Load parameter 'base' into R1
255 : LDA 4, 5(5) ;  Base of callee frame
256 : ST  1, 1(4) ;  Store argument 0 into callee frame
257 : LD  1, 2(5) ;  Load parameter 'power' into R1
258 : ADD 2, 1, 0 ;  R2 = left operand
259 : LDC 1, 1(0) ;  Load integer-literal into R1
260 : SUB 3, 2, 1 ;  R3 = left - right
261 : ADD 1, 3, 0 ;  R1 = R3
262 : LDA 4, 5(5) ;  Base of callee frame
263 : ST  1, 2(4) ;  Store argument 1 into callee frame
264 : LD  1, 1(5) ;  Load parameter 'base' into R1
265 : ADD 2, 1, 0 ;  R2 = left operand
266 : LD  1, 3(5) ;  Load parameter 'total' into R1
267 : MUL 3, 2, 1 ;  R3 = left * right
268 : ADD 1, 3, 0 ;  R1 = R3
269 : LDA 4, 5(5) ;  Base of callee frame
270 : ST  1, 3(4) ;  Store argument 2 into callee frame
271 : LDA 4, 5(5) ;  Base of callee frame
272 : LDA 6, 276(0) ;  Compute return address
273 : ST  6, 0(4) ;  Store RA in callee frame
274 : ADD 5, 4, 0 ;  Update pointer (enter callee)
275 : LDA 7, 226(0) ;  Call powHelper
276 : LD  1, 4(5) ;  Load callee return value into R1
277 : LDC 3, 5(0) ;  Load callee frame size
278 : SUB 5, 5, 3 ;  Restore pointer
279 : ST  1, 4(5) ;  Store function result into stack frame
280 : LD  6, 0(5) ;  Load return address
281 : LDA 7, 0(6) ;  Return to caller
283 : LD  1, 1(5) ;  Load parameter 'x' into R1
284 : LDA 4, 5(5) ;  Base of callee frame
285 : ST  1, 1(4) ;  Store argument 0 into callee frame
286 : LD  1, 2(5) ;  Load parameter 'y' into R1
287 : LDA 4, 5(5) ;  Base of callee frame
288 : ST  1, 2(4) ;  Store argument 1 into callee frame
289 : LD  1, 1(5) ;  Load parameter 'x' into R1
290 : LDA 4, 5(5) ;  Base of callee frame
291 : ST  1, 3(4) ;  Store argument 2 into callee frame
292 : LDA 4, 5(5) ;  Base of callee frame
293 : LDA 6, 297(0) ;  Compute return address
294 : ST  6, 0(4) ;  Store RA in callee frame
295 : ADD 5, 4, 0 ;  Update pointer (enter callee)
296 : LDA 7, 226(0) ;  Call powHelper
297 : LD  1, 4(5) ;  Load callee return value into R1
298 : LDC 3, 5(0) ;  Load callee frame size
299 : SUB 5, 5, 3 ;  Restore pointer
300 : ST  1, 3(5) ;  Store function result into stack frame
301 : LD  6, 0(5) ;  Load return address
302 : LDA 7, 0(6) ;  Return to caller
304 : LD  1, 1(5) ;  Load parameter 'x' into R1
305 : ADD 2, 1, 0 ;  R2 = left operand
306 : LDC 1, 10(0) ;  Load integer-literal into R1
307 : DIV 3, 2, 1 ;  R3 = left / right
308 : ADD 1, 3, 0 ;  R1 = R3
309 : ADD 2, 1, 0 ;  R2 = left operand
310 : LD  1, 1(5) ;  Load parameter 'x' into R1
311 : LDA 4, 4(5) ;  Base of callee frame
312 : ST  1, 1(4) ;  Store argument 0 into callee frame
313 : LDC 1, 10(0) ;  Load integer-literal into R1
314 : LDA 4, 4(5) ;  Base of callee frame
315 : ST  1, 2(4) ;  Store argument 1 into callee frame
316 : LDA 4, 4(5) ;  Base of callee frame
317 : LDA 6, 321(0) ;  Compute return address
318 : ST  6, 0(4) ;  Store RA in callee frame
319 : ADD 5, 4, 0 ;  Update pointer (enter callee)
320 : LDA 7, 30(0) ;  Call mod
321 : LD  1, 3(5) ;  Load callee return value into R1
322 : LDC 3, 4(0) ;  Load callee frame size
323 : SUB 5, 5, 3 ;  Restore pointer
324 : ADD 2, 1, 0 ;  R2 = left operand
325 : LDC 1, 10(0) ;  Load integer-literal into R1
326 : LDA 4, 4(5) ;  Base of callee frame
327 : ST  1, 1(4) ;  Store argument 0 into callee frame
328 : LD  1, 1(5) ;  Load parameter 'x' into R1
329 : LDA 4, 3(5) ;  Base of callee frame
330 : ST  1, 1(4) ;  Store argument 0 into callee frame
331 : LDA 4, 3(5) ;  Base of callee frame
332 : LDA 6, 336(0) ;  Compute return address
333 : ST  6, 0(4) ;  Store RA in callee frame
334 : ADD 5, 4, 0 ;  Update pointer (enter callee)
335 : LDA 7, 208(0) ;  Call log10
336 : LD  1, 2(5) ;  Load callee return value into R1
337 : LDC 3, 3(0) ;  Load callee frame size
338 : SUB 5, 5, 3 ;  Restore pointer
339 : LDA 4, 4(5) ;  Base of callee frame
340 : ST  1, 2(4) ;  Store argument 1 into callee frame
341 : LDA 4, 4(5) ;  Base of callee frame
342 : LDA 6, 346(0) ;  Compute return address
343 : ST  6, 0(4) ;  Store RA in callee frame
344 : ADD 5, 4, 0 ;  Update pointer (enter callee)
345 : LDA 7, 283(0) ;  Call pow
346 : LD  1, 3(5) ;  Load callee return value into R1
347 : LDC 3, 4(0) ;  Load callee frame size
348 : SUB 5, 5, 3 ;  Restore pointer
349 : MUL 3, 2, 1 ;  R3 = left * right
350 : ADD 1, 3, 0 ;  R1 = R3
351 : ADD 3, 2, 1 ;  R3 = left + right
352 : ADD 1, 3, 0 ;  R1 = R3
353 : ST  1, 2(5) ;  Store function result into stack frame
354 : LD  6, 0(5) ;  Load return address
355 : LDA 7, 0(6) ;  Return to caller
357 : LD  1, 1(5) ;  Load parameter 'x' into R1
358 : LDA 4, 3(5) ;  Base of callee frame (print)
359 : LDA 6, 363(0) ;  Compute return address
360 : ST  6, 0(4) ;  Store RA in callee frame
361 : ADD 5, 4, 0 ;  Update pointer (enter callee)
362 : LDA 7, 10(0) ;  Call print
363 : LDC 3, 3(0) ;  Load callee frame size
364 : SUB 5, 5, 3 ;  Restore pointer
365 : LDC 1, 1(0) ;  Load boolean-literal into R1
366 : ST  1, 2(5) ;  Store function result into stack frame
367 : LD  6, 0(5) ;  Load return address
368 : LDA 7, 0(6) ;  Return to caller
371 : LD  1, 2(5) ;  Load parameter 'turns' into R1
372 : ADD 2, 1, 0 ;  R2 = left operand
373 : LDC 1, 0(0) ;  Load integer-literal into R1
374 : SUB 3, 2, 1 ;  delta = left - right
375 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
376 : LDC 1, 0(0) ;  FALSE
377 : LDA 7, 1(7) ;  Skip TRUE
378 : LDC 1, 1(0) ;  TRUE
379 : JEQ 1, 384(0) ;  If condition is false, jump to ELSE
381 : LDC 1, 1(0) ;  Load boolean-literal into R1
382 : LDA 7, 426(0) ;  Skip ELSE block
384 : LD  1, 1(5) ;  Load parameter 'x' into R1
385 : LDA 4, 3(5) ;  Base of callee frame
386 : ST  1, 1(4) ;  Store argument 0 into callee frame
387 : LDA 4, 3(5) ;  Base of callee frame
388 : LDA 6, 392(0) ;  Compute return address
389 : ST  6, 0(4) ;  Store RA in callee frame
390 : ADD 5, 4, 0 ;  Update pointer (enter callee)
391 : LDA 7, 144(0) ;  Call isPrime
392 : LD  1, 2(5) ;  Load callee return value into R1
393 : LDC 3, 3(0) ;  Load callee frame size
394 : SUB 5, 5, 3 ;  Restore pointer
395 : ADD 2, 1, 0 ;  R2 = left operand
396 : LD  1, 1(5) ;  Load parameter 'x' into R1
397 : LDA 4, 3(5) ;  Base of callee frame
398 : ST  1, 1(4) ;  Store argument 0 into callee frame
399 : LDA 4, 3(5) ;  Base of callee frame
400 : LDA 6, 404(0) ;  Compute return address
401 : ST  6, 0(4) ;  Store RA in callee frame
402 : ADD 5, 4, 0 ;  Update pointer (enter callee)
403 : LDA 7, 304(0) ;  Call rotate
404 : LD  1, 2(5) ;  Load callee return value into R1
405 : LDC 3, 3(0) ;  Load callee frame size
406 : SUB 5, 5, 3 ;  Restore pointer
407 : LDA 4, 4(5) ;  Base of callee frame
408 : ST  1, 1(4) ;  Store argument 0 into callee frame
409 : LD  1, 2(5) ;  Load parameter 'turns' into R1
410 : ADD 2, 1, 0 ;  R2 = left operand
411 : LDC 1, 1(0) ;  Load integer-literal into R1
412 : SUB 3, 2, 1 ;  R3 = left - right
413 : ADD 1, 3, 0 ;  R1 = R3
414 : LDA 4, 4(5) ;  Base of callee frame
415 : ST  1, 2(4) ;  Store argument 1 into callee frame
416 : LDA 4, 4(5) ;  Base of callee frame
417 : LDA 6, 421(0) ;  Compute return address
418 : ST  6, 0(4) ;  Store RA in callee frame
419 : ADD 5, 4, 0 ;  Update pointer (enter callee)
420 : LDA 7, 370(0) ;  Call isCircularPrimeHelper
421 : LD  1, 3(5) ;  Load callee return value into R1
422 : LDC 3, 4(0) ;  Load callee frame size
423 : SUB 5, 5, 3 ;  Restore pointer
424 : MUL 3, 2, 1 ;  R3 = left AND right
425 : ADD 1, 3, 0 ;  R1 = R3
426 : ST  1, 3(5) ;  Store function result into stack frame
427 : LD  6, 0(5) ;  Load return address
428 : LDA 7, 0(6) ;  Return to caller
431 : LD  1, 1(5) ;  Load parameter 'x' into R1
432 : LDA 4, 4(5) ;  Base of callee frame
433 : ST  1, 1(4) ;  Store argument 0 into callee frame
434 : LD  1, 1(5) ;  Load parameter 'x' into R1
435 : LDA 4, 3(5) ;  Base of callee frame
436 : ST  1, 1(4) ;  Store argument 0 into callee frame
437 : LDA 4, 3(5) ;  Base of callee frame
438 : LDA 6, 442(0) ;  Compute return address
439 : ST  6, 0(4) ;  Store RA in callee frame
440 : ADD 5, 4, 0 ;  Update pointer (enter callee)
441 : LDA 7, 208(0) ;  Call log10
442 : LD  1, 2(5) ;  Load callee return value into R1
443 : LDC 3, 3(0) ;  Load callee frame size
444 : SUB 5, 5, 3 ;  Restore pointer
445 : ADD 2, 1, 0 ;  R2 = left operand
446 : LDC 1, 1(0) ;  Load integer-literal into R1
447 : ADD 3, 2, 1 ;  R3 = left + right
448 : ADD 1, 3, 0 ;  R1 = R3
449 : LDA 4, 4(5) ;  Base of callee frame
450 : ST  1, 2(4) ;  Store argument 1 into callee frame
451 : LDA 4, 4(5) ;  Base of callee frame
452 : LDA 6, 456(0) ;  Compute return address
453 : ST  6, 0(4) ;  Store RA in callee frame
454 : ADD 5, 4, 0 ;  Update pointer (enter callee)
455 : LDA 7, 370(0) ;  Call isCircularPrimeHelper
456 : LD  1, 3(5) ;  Load callee return value into R1
457 : LDC 3, 4(0) ;  Load callee frame size
458 : SUB 5, 5, 3 ;  Restore pointer
459 : JEQ 1, 474(0) ;  If condition is false, jump to ELSE
461 : LD  1, 1(5) ;  Load parameter 'x' into R1
462 : LDA 4, 3(5) ;  Base of callee frame
463 : ST  1, 1(4) ;  Store argument 0 into callee frame
464 : LDA 4, 3(5) ;  Base of callee frame
465 : LDA 6, 469(0) ;  Compute return address
466 : ST  6, 0(4) ;  Store RA in callee frame
467 : ADD 5, 4, 0 ;  Update pointer (enter callee)
468 : LDA 7, 357(0) ;  Call report
469 : LD  1, 2(5) ;  Load callee return value into R1
470 : LDC 3, 3(0) ;  Load callee frame size
471 : SUB 5, 5, 3 ;  Restore pointer
472 : LDA 7, 475(0) ;  Skip ELSE block
474 : LDC 1, 0(0) ;  Load boolean-literal into R1
475 : ST  1, 2(5) ;  Store function result into stack frame
476 : LD  6, 0(5) ;  Load return address
477 : LDA 7, 0(6) ;  Return to caller
480 : LD  1, 2(5) ;  Load parameter 'x' into R1
481 : ADD 2, 1, 0 ;  R2 = left operand
482 : LD  1, 1(5) ;  Load parameter 'top' into R1
483 : SUB 3, 2, 1 ;  delta = left - right
484 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
485 : LDC 1, 0(0) ;  FALSE
486 : LDA 7, 1(7) ;  Skip TRUE
487 : LDC 1, 1(0) ;  TRUE
488 : JEQ 1, 554(0) ;  If condition is false, jump to ELSE
491 : LD  1, 2(5) ;  Load parameter 'x' into R1
492 : LDA 4, 3(5) ;  Base of callee frame
493 : ST  1, 1(4) ;  Store argument 0 into callee frame
494 : LDA 4, 3(5) ;  Base of callee frame
495 : LDA 6, 499(0) ;  Compute return address
496 : ST  6, 0(4) ;  Store RA in callee frame
497 : ADD 5, 4, 0 ;  Update pointer (enter callee)
498 : LDA 7, 430(0) ;  Call isCircularPrime
499 : LD  1, 2(5) ;  Load callee return value into R1
500 : LDC 3, 3(0) ;  Load callee frame size
501 : SUB 5, 5, 3 ;  Restore pointer
502 : JEQ 1, 531(0) ;  If condition is false, jump to ELSE
504 : LD  1, 1(5) ;  Load parameter 'top' into R1
505 : LDA 4, 5(5) ;  Base of callee frame
506 : ST  1, 1(4) ;  Store argument 0 into callee frame
507 : LD  1, 2(5) ;  Load parameter 'x' into R1
508 : ADD 2, 1, 0 ;  R2 = left operand
509 : LDC 1, 1(0) ;  Load integer-literal into R1
510 : ADD 3, 2, 1 ;  R3 = left + right
511 : ADD 1, 3, 0 ;  R1 = R3
512 : LDA 4, 5(5) ;  Base of callee frame
513 : ST  1, 2(4) ;  Store argument 1 into callee frame
514 : LD  1, 3(5) ;  Load parameter 'count' into R1
515 : ADD 2, 1, 0 ;  R2 = left operand
516 : LDC 1, 1(0) ;  Load integer-literal into R1
517 : ADD 3, 2, 1 ;  R3 = left + right
518 : ADD 1, 3, 0 ;  R1 = R3
519 : LDA 4, 5(5) ;  Base of callee frame
520 : ST  1, 3(4) ;  Store argument 2 into callee frame
521 : LDA 4, 5(5) ;  Base of callee frame
522 : LDA 6, 526(0) ;  Compute return address
523 : ST  6, 0(4) ;  Store RA in callee frame
524 : ADD 5, 4, 0 ;  Update pointer (enter callee)
525 : LDA 7, 479(0) ;  Call circularPrimesToHelper
526 : LD  1, 4(5) ;  Load callee return value into R1
527 : LDC 3, 5(0) ;  Load callee frame size
528 : SUB 5, 5, 3 ;  Restore pointer
529 : LDA 7, 552(0) ;  Skip ELSE block
531 : LD  1, 1(5) ;  Load parameter 'top' into R1
532 : LDA 4, 5(5) ;  Base of callee frame
533 : ST  1, 1(4) ;  Store argument 0 into callee frame
534 : LD  1, 2(5) ;  Load parameter 'x' into R1
535 : ADD 2, 1, 0 ;  R2 = left operand
536 : LDC 1, 1(0) ;  Load integer-literal into R1
537 : ADD 3, 2, 1 ;  R3 = left + right
538 : ADD 1, 3, 0 ;  R1 = R3
539 : LDA 4, 5(5) ;  Base of callee frame
540 : ST  1, 2(4) ;  Store argument 1 into callee frame
541 : LD  1, 3(5) ;  Load parameter 'count' into R1
542 : LDA 4, 5(5) ;  Base of callee frame
543 : ST  1, 3(4) ;  Store argument 2 into callee frame
544 : LDA 4, 5(5) ;  Base of callee frame
545 : LDA 6, 549(0) ;  Compute return address
546 : ST  6, 0(4) ;  Store RA in callee frame
547 : ADD 5, 4, 0 ;  Update pointer (enter callee)
548 : LDA 7, 479(0) ;  Call circularPrimesToHelper
549 : LD  1, 4(5) ;  Load callee return value into R1
550 : LDC 3, 5(0) ;  Load callee frame size
551 : SUB 5, 5, 3 ;  Restore pointer
552 : LDA 7, 555(0) ;  Skip ELSE block
554 : LD  1, 3(5) ;  Load parameter 'count' into R1
555 : ST  1, 4(5) ;  Store function result into stack frame
556 : LD  6, 0(5) ;  Load return address
557 : LDA 7, 0(6) ;  Return to caller
559 : LD  1, 1(5) ;  Load parameter 'x' into R1
560 : ADD 2, 1, 0 ;  R2 = left operand
561 : LDC 1, 1(0) ;  Load integer-literal into R1
562 : ADD 3, 2, 1 ;  R3 = left + right
563 : ADD 1, 3, 0 ;  R1 = R3
564 : LDA 4, 5(5) ;  Base of callee frame
565 : ST  1, 1(4) ;  Store argument 0 into callee frame
566 : LDC 1, 2(0) ;  Load integer-literal into R1
567 : LDA 4, 5(5) ;  Base of callee frame
568 : ST  1, 2(4) ;  Store argument 1 into callee frame
569 : LDC 1, 0(0) ;  Load integer-literal into R1
570 : LDA 4, 5(5) ;  Base of callee frame
571 : ST  1, 3(4) ;  Store argument 2 into callee frame
572 : LDA 4, 5(5) ;  Base of callee frame
573 : LDA 6, 577(0) ;  Compute return address
574 : ST  6, 0(4) ;  Store RA in callee frame
575 : ADD 5, 4, 0 ;  Update pointer (enter callee)
576 : LDA 7, 479(0) ;  Call circularPrimesToHelper
577 : LD  1, 4(5) ;  Load callee return value into R1
578 : LDC 3, 5(0) ;  Load callee frame size
579 : SUB 5, 5, 3 ;  Restore pointer
580 : ST  1, 2(5) ;  Store function result into stack frame
581 : LD  6, 0(5) ;  Load return address
582 : LDA 7, 0(6) ;  Return to caller
