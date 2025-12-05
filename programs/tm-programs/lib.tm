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
14 : LD  1, 1(5) ;  Load parameter 'testArgument' into R1
15 : LDA 4, 3(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDA 4, 3(5) ;  Base of callee frame
18 : LDA 6, 22(0) ;  Compute return address
19 : ST  6, 0(4) ;  Store RA in callee frame
20 : ADD 5, 4, 0 ;  Update pointer (enter callee)
21 : LDA 7, 228(0) ;  Call SQRT
22 : LD  1, 2(5) ;  Load callee return value into R1
23 : LDC 3, 3(0) ;  Load callee frame size
24 : SUB 5, 5, 3 ;  Restore pointer
25 : LDA 4, 3(5) ;  Base of callee frame (print)
26 : LDA 6, 30(0) ;  Compute return address
27 : ST  6, 0(4) ;  Store RA in callee frame
28 : ADD 5, 4, 0 ;  Update pointer (enter callee)
29 : LDA 7, 10(0) ;  Call print
30 : LDC 3, 3(0) ;  Load callee frame size
31 : SUB 5, 5, 3 ;  Restore pointer
32 : LD  1, 1(5) ;  Load parameter 'testArgument' into R1
33 : LDA 4, 3(5) ;  Base of callee frame
34 : ST  1, 1(4) ;  Store argument 0 into callee frame
35 : LDA 4, 3(5) ;  Base of callee frame
36 : LDA 6, 40(0) ;  Compute return address
37 : ST  6, 0(4) ;  Store RA in callee frame
38 : ADD 5, 4, 0 ;  Update pointer (enter callee)
39 : LDA 7, 249(0) ;  Call ODD
40 : LD  1, 2(5) ;  Load callee return value into R1
41 : LDC 3, 3(0) ;  Load callee frame size
42 : SUB 5, 5, 3 ;  Restore pointer
43 : ST  1, 2(5) ;  Store result into current frame's return slot
44 : LD  1, 2(5) ;  Load return value into R1
45 : LD  6, 0(5) ;  Load return address for main function into R6
46 : LDA 7, 0(6) ;  Jump to return address of main function
49 : LD  1, 4(5) ;  Load parameter 'mid' into R1
50 : ADD 2, 1, 0 ;  R2 = left operand
51 : LD  1, 4(5) ;  Load parameter 'mid' into R1
52 : MUL 3, 2, 1 ;  R3 = left * right
53 : ADD 1, 3, 0 ;  R1 = R3
54 : LDA 4, 4(5) ;  Base of callee frame
55 : ST  1, 1(4) ;  Store argument 0 into callee frame
56 : LD  1, 1(5) ;  Load parameter 'n' into R1
57 : LDA 4, 4(5) ;  Base of callee frame
58 : ST  1, 2(4) ;  Store argument 1 into callee frame
59 : LDA 4, 4(5) ;  Base of callee frame
60 : LDA 6, 64(0) ;  Compute return address
61 : ST  6, 0(4) ;  Store RA in callee frame
62 : ADD 5, 4, 0 ;  Update pointer (enter callee)
63 : LDA 7, 579(0) ;  Call LE
64 : LD  1, 3(5) ;  Load callee return value into R1
65 : LDC 3, 4(0) ;  Load callee frame size
66 : SUB 5, 5, 3 ;  Restore pointer
67 : JEQ 1, 88(0) ;  If condition is false, jump to ELSE
69 : LD  1, 1(5) ;  Load parameter 'n' into R1
70 : LDA 4, 5(5) ;  Base of callee frame
71 : ST  1, 1(4) ;  Store argument 0 into callee frame
72 : LD  1, 4(5) ;  Load parameter 'mid' into R1
73 : LDA 4, 5(5) ;  Base of callee frame
74 : ST  1, 2(4) ;  Store argument 1 into callee frame
75 : LD  1, 3(5) ;  Load parameter 'high' into R1
76 : LDA 4, 5(5) ;  Base of callee frame
77 : ST  1, 3(4) ;  Store argument 2 into callee frame
78 : LDA 4, 5(5) ;  Base of callee frame
79 : LDA 6, 83(0) ;  Compute return address
80 : ST  6, 0(4) ;  Store RA in callee frame
81 : ADD 5, 4, 0 ;  Update pointer (enter callee)
82 : LDA 7, 109(0) ;  Call SQRTSEARCH
83 : LD  1, 4(5) ;  Load callee return value into R1
84 : LDC 3, 5(0) ;  Load callee frame size
85 : SUB 5, 5, 3 ;  Restore pointer
86 : LDA 7, 105(0) ;  Skip ELSE block
88 : LD  1, 1(5) ;  Load parameter 'n' into R1
89 : LDA 4, 5(5) ;  Base of callee frame
90 : ST  1, 1(4) ;  Store argument 0 into callee frame
91 : LD  1, 2(5) ;  Load parameter 'low' into R1
92 : LDA 4, 5(5) ;  Base of callee frame
93 : ST  1, 2(4) ;  Store argument 1 into callee frame
94 : LD  1, 4(5) ;  Load parameter 'mid' into R1
95 : LDA 4, 5(5) ;  Base of callee frame
96 : ST  1, 3(4) ;  Store argument 2 into callee frame
97 : LDA 4, 5(5) ;  Base of callee frame
98 : LDA 6, 102(0) ;  Compute return address
99 : ST  6, 0(4) ;  Store RA in callee frame
100 : ADD 5, 4, 0 ;  Update pointer (enter callee)
101 : LDA 7, 109(0) ;  Call SQRTSEARCH
102 : LD  1, 4(5) ;  Load callee return value into R1
103 : LDC 3, 5(0) ;  Load callee frame size
104 : SUB 5, 5, 3 ;  Restore pointer
105 : ST  1, 5(5) ;  Store function result into stack frame
106 : LD  6, 0(5) ;  Load return address
107 : LDA 7, 0(6) ;  Return to caller
110 : LD  1, 3(5) ;  Load parameter 'high' into R1
111 : LDA 4, 4(5) ;  Base of callee frame
112 : ST  1, 1(4) ;  Store argument 0 into callee frame
113 : LD  1, 2(5) ;  Load parameter 'low' into R1
114 : ADD 2, 1, 0 ;  R2 = left operand
115 : LDC 1, 1(0) ;  Load integer-literal into R1
116 : ADD 3, 2, 1 ;  R3 = left + right
117 : ADD 1, 3, 0 ;  R1 = R3
118 : LDA 4, 4(5) ;  Base of callee frame
119 : ST  1, 2(4) ;  Store argument 1 into callee frame
120 : LDA 4, 4(5) ;  Base of callee frame
121 : LDA 6, 125(0) ;  Compute return address
122 : ST  6, 0(4) ;  Store RA in callee frame
123 : ADD 5, 4, 0 ;  Update pointer (enter callee)
124 : LDA 7, 579(0) ;  Call LE
125 : LD  1, 3(5) ;  Load callee return value into R1
126 : LDC 3, 4(0) ;  Load callee frame size
127 : SUB 5, 5, 3 ;  Restore pointer
128 : JEQ 1, 187(0) ;  If condition is false, jump to ELSE
131 : LD  1, 1(5) ;  Load parameter 'n' into R1
132 : ADD 2, 1, 0 ;  R2 = left operand
133 : LD  1, 2(5) ;  Load parameter 'low' into R1
134 : LDA 4, 4(5) ;  Base of callee frame
135 : ST  1, 1(4) ;  Store argument 0 into callee frame
136 : LD  1, 2(5) ;  Load parameter 'low' into R1
137 : LDA 4, 4(5) ;  Base of callee frame
138 : ST  1, 2(4) ;  Store argument 1 into callee frame
139 : LDA 4, 4(5) ;  Base of callee frame
140 : LDA 6, 144(0) ;  Compute return address
141 : ST  6, 0(4) ;  Store RA in callee frame
142 : ADD 5, 4, 0 ;  Update pointer (enter callee)
143 : LDA 7, 491(0) ;  Call TIMES
144 : LD  1, 3(5) ;  Load callee return value into R1
145 : LDC 3, 4(0) ;  Load callee frame size
146 : SUB 5, 5, 3 ;  Restore pointer
147 : SUB 3, 2, 1 ;  R3 = left - right
148 : ADD 1, 3, 0 ;  R1 = R3
149 : LDA 4, 4(5) ;  Base of callee frame
150 : ST  1, 1(4) ;  Store argument 0 into callee frame
151 : LD  1, 3(5) ;  Load parameter 'high' into R1
152 : LDA 4, 4(5) ;  Base of callee frame
153 : ST  1, 1(4) ;  Store argument 0 into callee frame
154 : LD  1, 3(5) ;  Load parameter 'high' into R1
155 : LDA 4, 4(5) ;  Base of callee frame
156 : ST  1, 2(4) ;  Store argument 1 into callee frame
157 : LDA 4, 4(5) ;  Base of callee frame
158 : LDA 6, 162(0) ;  Compute return address
159 : ST  6, 0(4) ;  Store RA in callee frame
160 : ADD 5, 4, 0 ;  Update pointer (enter callee)
161 : LDA 7, 491(0) ;  Call TIMES
162 : LD  1, 3(5) ;  Load callee return value into R1
163 : LDC 3, 4(0) ;  Load callee frame size
164 : SUB 5, 5, 3 ;  Restore pointer
165 : ADD 2, 1, 0 ;  R2 = left operand
166 : LD  1, 1(5) ;  Load parameter 'n' into R1
167 : SUB 3, 2, 1 ;  R3 = left - right
168 : ADD 1, 3, 0 ;  R1 = R3
169 : LDA 4, 4(5) ;  Base of callee frame
170 : ST  1, 2(4) ;  Store argument 1 into callee frame
171 : LDA 4, 4(5) ;  Base of callee frame
172 : LDA 6, 176(0) ;  Compute return address
173 : ST  6, 0(4) ;  Store RA in callee frame
174 : ADD 5, 4, 0 ;  Update pointer (enter callee)
175 : LDA 7, 579(0) ;  Call LE
176 : LD  1, 3(5) ;  Load callee return value into R1
177 : LDC 3, 4(0) ;  Load callee frame size
178 : SUB 5, 5, 3 ;  Restore pointer
179 : JEQ 1, 184(0) ;  If condition is false, jump to ELSE
181 : LD  1, 2(5) ;  Load parameter 'low' into R1
182 : LDA 7, 185(0) ;  Skip ELSE block
184 : LD  1, 3(5) ;  Load parameter 'high' into R1
185 : LDA 7, 224(0) ;  Skip ELSE block
187 : LD  1, 1(5) ;  Load parameter 'n' into R1
188 : LDA 4, 6(5) ;  Base of callee frame
189 : ST  1, 1(4) ;  Store argument 0 into callee frame
190 : LD  1, 2(5) ;  Load parameter 'low' into R1
191 : LDA 4, 6(5) ;  Base of callee frame
192 : ST  1, 2(4) ;  Store argument 1 into callee frame
193 : LD  1, 3(5) ;  Load parameter 'high' into R1
194 : LDA 4, 6(5) ;  Base of callee frame
195 : ST  1, 3(4) ;  Store argument 2 into callee frame
196 : LD  1, 2(5) ;  Load parameter 'low' into R1
197 : LDA 4, 4(5) ;  Base of callee frame
198 : ST  1, 1(4) ;  Store argument 0 into callee frame
199 : LD  1, 3(5) ;  Load parameter 'high' into R1
200 : LDA 4, 4(5) ;  Base of callee frame
201 : ST  1, 2(4) ;  Store argument 1 into callee frame
202 : LDA 4, 4(5) ;  Base of callee frame
203 : LDA 6, 207(0) ;  Compute return address
204 : ST  6, 0(4) ;  Store RA in callee frame
205 : ADD 5, 4, 0 ;  Update pointer (enter callee)
206 : LDA 7, 509(0) ;  Call PLUS
207 : LD  1, 3(5) ;  Load callee return value into R1
208 : LDC 3, 4(0) ;  Load callee frame size
209 : SUB 5, 5, 3 ;  Restore pointer
210 : ADD 2, 1, 0 ;  R2 = left operand
211 : LDC 1, 2(0) ;  Load integer-literal into R1
212 : DIV 3, 2, 1 ;  R3 = left / right
213 : ADD 1, 3, 0 ;  R1 = R3
214 : LDA 4, 6(5) ;  Base of callee frame
215 : ST  1, 4(4) ;  Store argument 3 into callee frame
216 : LDA 4, 6(5) ;  Base of callee frame
217 : LDA 6, 221(0) ;  Compute return address
218 : ST  6, 0(4) ;  Store RA in callee frame
219 : ADD 5, 4, 0 ;  Update pointer (enter callee)
220 : LDA 7, 48(0) ;  Call SQRTSPLIT
221 : LD  1, 5(5) ;  Load callee return value into R1
222 : LDC 3, 6(0) ;  Load callee frame size
223 : SUB 5, 5, 3 ;  Restore pointer
224 : ST  1, 4(5) ;  Store function result into stack frame
225 : LD  6, 0(5) ;  Load return address
226 : LDA 7, 0(6) ;  Return to caller
228 : LD  1, 1(5) ;  Load parameter 'n' into R1
229 : LDA 4, 5(5) ;  Base of callee frame
230 : ST  1, 1(4) ;  Store argument 0 into callee frame
231 : LDC 1, 0(0) ;  Load integer-literal into R1
232 : LDA 4, 5(5) ;  Base of callee frame
233 : ST  1, 2(4) ;  Store argument 1 into callee frame
234 : LD  1, 1(5) ;  Load parameter 'n' into R1
235 : LDA 4, 5(5) ;  Base of callee frame
236 : ST  1, 3(4) ;  Store argument 2 into callee frame
237 : LDA 4, 5(5) ;  Base of callee frame
238 : LDA 6, 242(0) ;  Compute return address
239 : ST  6, 0(4) ;  Store RA in callee frame
240 : ADD 5, 4, 0 ;  Update pointer (enter callee)
241 : LDA 7, 109(0) ;  Call SQRTSEARCH
242 : LD  1, 4(5) ;  Load callee return value into R1
243 : LDC 3, 5(0) ;  Load callee frame size
244 : SUB 5, 5, 3 ;  Restore pointer
245 : ST  1, 2(5) ;  Store function result into stack frame
246 : LD  6, 0(5) ;  Load return address
247 : LDA 7, 0(6) ;  Return to caller
250 : LDC 1, 0(0) ;  Load integer-literal into R1
251 : LDA 4, 4(5) ;  Base of callee frame
252 : ST  1, 1(4) ;  Store argument 0 into callee frame
253 : LD  1, 1(5) ;  Load parameter 'n' into R1
254 : LDA 4, 4(5) ;  Base of callee frame
255 : ST  1, 2(4) ;  Store argument 1 into callee frame
256 : LDA 4, 4(5) ;  Base of callee frame
257 : LDA 6, 261(0) ;  Compute return address
258 : ST  6, 0(4) ;  Store RA in callee frame
259 : ADD 5, 4, 0 ;  Update pointer (enter callee)
260 : LDA 7, 579(0) ;  Call LE
261 : LD  1, 3(5) ;  Load callee return value into R1
262 : LDC 3, 4(0) ;  Load callee frame size
263 : SUB 5, 5, 3 ;  Restore pointer
264 : JEQ 1, 312(0) ;  If condition is false, jump to ELSE
266 : LD  1, 1(5) ;  Load parameter 'n' into R1
267 : LDA 4, 4(5) ;  Base of callee frame
268 : ST  1, 1(4) ;  Store argument 0 into callee frame
269 : LD  1, 1(5) ;  Load parameter 'n' into R1
270 : LDA 4, 4(5) ;  Base of callee frame
271 : ST  1, 1(4) ;  Store argument 0 into callee frame
272 : LDC 1, 2(0) ;  Load integer-literal into R1
273 : LDA 4, 4(5) ;  Base of callee frame
274 : ST  1, 2(4) ;  Store argument 1 into callee frame
275 : LDA 4, 4(5) ;  Base of callee frame
276 : LDA 6, 280(0) ;  Compute return address
277 : ST  6, 0(4) ;  Store RA in callee frame
278 : ADD 5, 4, 0 ;  Update pointer (enter callee)
279 : LDA 7, 482(0) ;  Call DIV
280 : LD  1, 3(5) ;  Load callee return value into R1
281 : LDC 3, 4(0) ;  Load callee frame size
282 : SUB 5, 5, 3 ;  Restore pointer
283 : ADD 2, 1, 0 ;  R2 = left operand
284 : LD  1, 1(5) ;  Load parameter 'n' into R1
285 : LDA 4, 4(5) ;  Base of callee frame
286 : ST  1, 1(4) ;  Store argument 0 into callee frame
287 : LDC 1, 2(0) ;  Load integer-literal into R1
288 : LDA 4, 4(5) ;  Base of callee frame
289 : ST  1, 2(4) ;  Store argument 1 into callee frame
290 : LDA 4, 4(5) ;  Base of callee frame
291 : LDA 6, 295(0) ;  Compute return address
292 : ST  6, 0(4) ;  Store RA in callee frame
293 : ADD 5, 4, 0 ;  Update pointer (enter callee)
294 : LDA 7, 482(0) ;  Call DIV
295 : LD  1, 3(5) ;  Load callee return value into R1
296 : LDC 3, 4(0) ;  Load callee frame size
297 : SUB 5, 5, 3 ;  Restore pointer
298 : ADD 3, 2, 1 ;  R3 = left + right
299 : ADD 1, 3, 0 ;  R1 = R3
300 : LDA 4, 4(5) ;  Base of callee frame
301 : ST  1, 2(4) ;  Store argument 1 into callee frame
302 : LDA 4, 4(5) ;  Base of callee frame
303 : LDA 6, 307(0) ;  Compute return address
304 : ST  6, 0(4) ;  Store RA in callee frame
305 : ADD 5, 4, 0 ;  Update pointer (enter callee)
306 : LDA 7, 539(0) ;  Call GT
307 : LD  1, 3(5) ;  Load callee return value into R1
308 : LDC 3, 4(0) ;  Load callee frame size
309 : SUB 5, 5, 3 ;  Restore pointer
310 : LDA 7, 386(0) ;  Skip ELSE block
312 : LD  1, 1(5) ;  Load parameter 'n' into R1
313 : LDA 4, 3(5) ;  Base of callee frame
314 : ST  1, 1(4) ;  Store argument 0 into callee frame
315 : LDA 4, 3(5) ;  Base of callee frame
316 : LDA 6, 320(0) ;  Compute return address
317 : ST  6, 0(4) ;  Store RA in callee frame
318 : ADD 5, 4, 0 ;  Update pointer (enter callee)
319 : LDA 7, 476(0) ;  Call NEG
320 : LD  1, 2(5) ;  Load callee return value into R1
321 : LDC 3, 3(0) ;  Load callee frame size
322 : SUB 5, 5, 3 ;  Restore pointer
323 : LDA 4, 4(5) ;  Base of callee frame
324 : ST  1, 1(4) ;  Store argument 0 into callee frame
325 : LD  1, 1(5) ;  Load parameter 'n' into R1
326 : LDA 4, 3(5) ;  Base of callee frame
327 : ST  1, 1(4) ;  Store argument 0 into callee frame
328 : LDA 4, 3(5) ;  Base of callee frame
329 : LDA 6, 333(0) ;  Compute return address
330 : ST  6, 0(4) ;  Store RA in callee frame
331 : ADD 5, 4, 0 ;  Update pointer (enter callee)
332 : LDA 7, 476(0) ;  Call NEG
333 : LD  1, 2(5) ;  Load callee return value into R1
334 : LDC 3, 3(0) ;  Load callee frame size
335 : SUB 5, 5, 3 ;  Restore pointer
336 : LDA 4, 4(5) ;  Base of callee frame
337 : ST  1, 1(4) ;  Store argument 0 into callee frame
338 : LDC 1, 2(0) ;  Load integer-literal into R1
339 : LDA 4, 4(5) ;  Base of callee frame
340 : ST  1, 2(4) ;  Store argument 1 into callee frame
341 : LDA 4, 4(5) ;  Base of callee frame
342 : LDA 6, 346(0) ;  Compute return address
343 : ST  6, 0(4) ;  Store RA in callee frame
344 : ADD 5, 4, 0 ;  Update pointer (enter callee)
345 : LDA 7, 482(0) ;  Call DIV
346 : LD  1, 3(5) ;  Load callee return value into R1
347 : LDC 3, 4(0) ;  Load callee frame size
348 : SUB 5, 5, 3 ;  Restore pointer
349 : ADD 2, 1, 0 ;  R2 = left operand
350 : LD  1, 1(5) ;  Load parameter 'n' into R1
351 : LDA 4, 3(5) ;  Base of callee frame
352 : ST  1, 1(4) ;  Store argument 0 into callee frame
353 : LDA 4, 3(5) ;  Base of callee frame
354 : LDA 6, 358(0) ;  Compute return address
355 : ST  6, 0(4) ;  Store RA in callee frame
356 : ADD 5, 4, 0 ;  Update pointer (enter callee)
357 : LDA 7, 476(0) ;  Call NEG
358 : LD  1, 2(5) ;  Load callee return value into R1
359 : LDC 3, 3(0) ;  Load callee frame size
360 : SUB 5, 5, 3 ;  Restore pointer
361 : LDA 4, 4(5) ;  Base of callee frame
362 : ST  1, 1(4) ;  Store argument 0 into callee frame
363 : LDC 1, 2(0) ;  Load integer-literal into R1
364 : LDA 4, 4(5) ;  Base of callee frame
365 : ST  1, 2(4) ;  Store argument 1 into callee frame
366 : LDA 4, 4(5) ;  Base of callee frame
367 : LDA 6, 371(0) ;  Compute return address
368 : ST  6, 0(4) ;  Store RA in callee frame
369 : ADD 5, 4, 0 ;  Update pointer (enter callee)
370 : LDA 7, 482(0) ;  Call DIV
371 : LD  1, 3(5) ;  Load callee return value into R1
372 : LDC 3, 4(0) ;  Load callee frame size
373 : SUB 5, 5, 3 ;  Restore pointer
374 : ADD 3, 2, 1 ;  R3 = left + right
375 : ADD 1, 3, 0 ;  R1 = R3
376 : LDA 4, 4(5) ;  Base of callee frame
377 : ST  1, 2(4) ;  Store argument 1 into callee frame
378 : LDA 4, 4(5) ;  Base of callee frame
379 : LDA 6, 383(0) ;  Compute return address
380 : ST  6, 0(4) ;  Store RA in callee frame
381 : ADD 5, 4, 0 ;  Update pointer (enter callee)
382 : LDA 7, 539(0) ;  Call GT
383 : LD  1, 3(5) ;  Load callee return value into R1
384 : LDC 3, 4(0) ;  Load callee frame size
385 : SUB 5, 5, 3 ;  Restore pointer
386 : ST  1, 2(5) ;  Store function result into stack frame
387 : LD  6, 0(5) ;  Load return address
388 : LDA 7, 0(6) ;  Return to caller
391 : LD  1, 2(5) ;  Load parameter 'n' into R1
392 : ADD 2, 1, 0 ;  R2 = left operand
393 : LDC 1, 0(0) ;  Load integer-literal into R1
394 : SUB 3, 2, 1 ;  delta = left - right
395 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
396 : LDC 1, 0(0) ;  FALSE
397 : LDA 7, 1(7) ;  Skip TRUE
398 : LDC 1, 1(0) ;  TRUE
399 : JEQ 1, 404(0) ;  If condition is false, jump to ELSE
401 : LDC 1, 1(0) ;  Load integer-literal into R1
402 : LDA 7, 426(0) ;  Skip ELSE block
404 : LD  1, 1(5) ;  Load parameter 'm' into R1
405 : ADD 2, 1, 0 ;  R2 = left operand
406 : LD  1, 1(5) ;  Load parameter 'm' into R1
407 : LDA 4, 4(5) ;  Base of callee frame
408 : ST  1, 1(4) ;  Store argument 0 into callee frame
409 : LD  1, 2(5) ;  Load parameter 'n' into R1
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
420 : LDA 7, 390(0) ;  Call EXP
421 : LD  1, 3(5) ;  Load callee return value into R1
422 : LDC 3, 4(0) ;  Load callee frame size
423 : SUB 5, 5, 3 ;  Restore pointer
424 : MUL 3, 2, 1 ;  R3 = left * right
425 : ADD 1, 3, 0 ;  R1 = R3
426 : ST  1, 3(5) ;  Store function result into stack frame
427 : LD  6, 0(5) ;  Load return address
428 : LDA 7, 0(6) ;  Return to caller
430 : LD  1, 1(5) ;  Load parameter 'm' into R1
431 : ADD 2, 1, 0 ;  R2 = left operand
432 : LD  1, 1(5) ;  Load parameter 'm' into R1
433 : ADD 2, 1, 0 ;  R2 = left operand
434 : LD  1, 2(5) ;  Load parameter 'n' into R1
435 : DIV 3, 2, 1 ;  R3 = left / right
436 : ADD 1, 3, 0 ;  R1 = R3
437 : ADD 2, 1, 0 ;  R2 = left operand
438 : LD  1, 2(5) ;  Load parameter 'n' into R1
439 : MUL 3, 2, 1 ;  R3 = left * right
440 : ADD 1, 3, 0 ;  R1 = R3
441 : SUB 3, 2, 1 ;  R3 = left - right
442 : ADD 1, 3, 0 ;  R1 = R3
443 : ST  1, 3(5) ;  Store function result into stack frame
444 : LD  6, 0(5) ;  Load return address
445 : LDA 7, 0(6) ;  Return to caller
448 : LDC 1, 0(0) ;  Load integer-literal into R1
449 : ADD 2, 1, 0 ;  R2 = left operand
450 : LD  1, 1(5) ;  Load parameter 'n' into R1
451 : SUB 3, 2, 1 ;  delta = left - right
452 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
453 : LDC 1, 0(0) ;  FALSE
454 : LDA 7, 1(7) ;  Skip TRUE
455 : LDC 1, 1(0) ;  TRUE
456 : JEQ 1, 461(0) ;  If condition is false, jump to ELSE
458 : LD  1, 1(5) ;  Load parameter 'n' into R1
459 : LDA 7, 472(0) ;  Skip ELSE block
461 : LD  1, 1(5) ;  Load parameter 'n' into R1
462 : LDA 4, 3(5) ;  Base of callee frame
463 : ST  1, 1(4) ;  Store argument 0 into callee frame
464 : LDA 4, 3(5) ;  Base of callee frame
465 : LDA 6, 469(0) ;  Compute return address
466 : ST  6, 0(4) ;  Store RA in callee frame
467 : ADD 5, 4, 0 ;  Update pointer (enter callee)
468 : LDA 7, 476(0) ;  Call NEG
469 : LD  1, 2(5) ;  Load callee return value into R1
470 : LDC 3, 3(0) ;  Load callee frame size
471 : SUB 5, 5, 3 ;  Restore pointer
472 : ST  1, 2(5) ;  Store function result into stack frame
473 : LD  6, 0(5) ;  Load return address
474 : LDA 7, 0(6) ;  Return to caller
476 : LD  1, 1(5) ;  Load parameter 'n' into R1
477 : SUB 1, 0, 1 ;  Negate value in R1
478 : ST  1, 2(5) ;  Store function result into stack frame
479 : LD  6, 0(5) ;  Load return address
480 : LDA 7, 0(6) ;  Return to caller
482 : LD  1, 1(5) ;  Load parameter 'p' into R1
483 : ADD 2, 1, 0 ;  R2 = left operand
484 : LD  1, 2(5) ;  Load parameter 'q' into R1
485 : DIV 3, 2, 1 ;  R3 = left / right
486 : ADD 1, 3, 0 ;  R1 = R3
487 : ST  1, 3(5) ;  Store function result into stack frame
488 : LD  6, 0(5) ;  Load return address
489 : LDA 7, 0(6) ;  Return to caller
491 : LD  1, 1(5) ;  Load parameter 'p' into R1
492 : ADD 2, 1, 0 ;  R2 = left operand
493 : LD  1, 2(5) ;  Load parameter 'q' into R1
494 : MUL 3, 2, 1 ;  R3 = left * right
495 : ADD 1, 3, 0 ;  R1 = R3
496 : ST  1, 3(5) ;  Store function result into stack frame
497 : LD  6, 0(5) ;  Load return address
498 : LDA 7, 0(6) ;  Return to caller
500 : LD  1, 1(5) ;  Load parameter 'p' into R1
501 : ADD 2, 1, 0 ;  R2 = left operand
502 : LD  1, 2(5) ;  Load parameter 'q' into R1
503 : SUB 3, 2, 1 ;  R3 = left - right
504 : ADD 1, 3, 0 ;  R1 = R3
505 : ST  1, 3(5) ;  Store function result into stack frame
506 : LD  6, 0(5) ;  Load return address
507 : LDA 7, 0(6) ;  Return to caller
509 : LD  1, 1(5) ;  Load parameter 'p' into R1
510 : ADD 2, 1, 0 ;  R2 = left operand
511 : LD  1, 2(5) ;  Load parameter 'q' into R1
512 : ADD 3, 2, 1 ;  R3 = left + right
513 : ADD 1, 3, 0 ;  R1 = R3
514 : ST  1, 3(5) ;  Store function result into stack frame
515 : LD  6, 0(5) ;  Load return address
516 : LDA 7, 0(6) ;  Return to caller
519 : LD  1, 1(5) ;  Load parameter 'p' into R1
520 : JEQ 1, 525(0) ;  If condition is false, jump to ELSE
522 : LD  1, 2(5) ;  Load parameter 'q' into R1
523 : LDA 7, 526(0) ;  Skip ELSE block
525 : LDC 1, 0(0) ;  Load boolean-literal into R1
526 : ST  1, 3(5) ;  Store function result into stack frame
527 : LD  6, 0(5) ;  Load return address
528 : LDA 7, 0(6) ;  Return to caller
530 : LD  1, 1(5) ;  Load parameter 'p' into R1
531 : ADD 2, 1, 0 ;  R2 = left operand
532 : LD  1, 2(5) ;  Load parameter 'q' into R1
533 : ADD 3, 2, 1 ;  R3 = left OR right
534 : ADD 1, 3, 0 ;  R1 = R3
535 : ST  1, 3(5) ;  Store function result into stack frame
536 : LD  6, 0(5) ;  Load return address
537 : LDA 7, 0(6) ;  Return to caller
539 : LD  1, 1(5) ;  Load parameter 'p' into R1
540 : LDA 4, 4(5) ;  Base of callee frame
541 : ST  1, 1(4) ;  Store argument 0 into callee frame
542 : LD  1, 2(5) ;  Load parameter 'q' into R1
543 : LDA 4, 4(5) ;  Base of callee frame
544 : ST  1, 2(4) ;  Store argument 1 into callee frame
545 : LDA 4, 4(5) ;  Base of callee frame
546 : LDA 6, 550(0) ;  Compute return address
547 : ST  6, 0(4) ;  Store RA in callee frame
548 : ADD 5, 4, 0 ;  Update pointer (enter callee)
549 : LDA 7, 579(0) ;  Call LE
550 : LD  1, 3(5) ;  Load callee return value into R1
551 : LDC 3, 4(0) ;  Load callee frame size
552 : SUB 5, 5, 3 ;  Restore pointer
553 : LDC 2, 1(0) ;  Load 1 into R2
554 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
555 : ST  1, 3(5) ;  Store function result into stack frame
556 : LD  6, 0(5) ;  Load return address
557 : LDA 7, 0(6) ;  Return to caller
559 : LD  1, 1(5) ;  Load parameter 'p' into R1
560 : LDA 4, 4(5) ;  Base of callee frame
561 : ST  1, 1(4) ;  Store argument 0 into callee frame
562 : LD  1, 2(5) ;  Load parameter 'q' into R1
563 : LDA 4, 4(5) ;  Base of callee frame
564 : ST  1, 2(4) ;  Store argument 1 into callee frame
565 : LDA 4, 4(5) ;  Base of callee frame
566 : LDA 6, 570(0) ;  Compute return address
567 : ST  6, 0(4) ;  Store RA in callee frame
568 : ADD 5, 4, 0 ;  Update pointer (enter callee)
569 : LDA 7, 646(0) ;  Call LT
570 : LD  1, 3(5) ;  Load callee return value into R1
571 : LDC 3, 4(0) ;  Load callee frame size
572 : SUB 5, 5, 3 ;  Restore pointer
573 : LDC 2, 1(0) ;  Load 1 into R2
574 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
575 : ST  1, 3(5) ;  Store function result into stack frame
576 : LD  6, 0(5) ;  Load return address
577 : LDA 7, 0(6) ;  Return to caller
579 : LD  1, 1(5) ;  Load parameter 'p' into R1
580 : LDA 4, 4(5) ;  Base of callee frame
581 : ST  1, 1(4) ;  Store argument 0 into callee frame
582 : LD  1, 2(5) ;  Load parameter 'q' into R1
583 : LDA 4, 4(5) ;  Base of callee frame
584 : ST  1, 2(4) ;  Store argument 1 into callee frame
585 : LDA 4, 4(5) ;  Base of callee frame
586 : LDA 6, 590(0) ;  Compute return address
587 : ST  6, 0(4) ;  Store RA in callee frame
588 : ADD 5, 4, 0 ;  Update pointer (enter callee)
589 : LDA 7, 646(0) ;  Call LT
590 : LD  1, 3(5) ;  Load callee return value into R1
591 : LDC 3, 4(0) ;  Load callee frame size
592 : SUB 5, 5, 3 ;  Restore pointer
593 : ADD 2, 1, 0 ;  R2 = left operand
594 : LD  1, 1(5) ;  Load parameter 'p' into R1
595 : LDA 4, 4(5) ;  Base of callee frame
596 : ST  1, 1(4) ;  Store argument 0 into callee frame
597 : LD  1, 2(5) ;  Load parameter 'q' into R1
598 : LDA 4, 4(5) ;  Base of callee frame
599 : ST  1, 2(4) ;  Store argument 1 into callee frame
600 : LDA 4, 4(5) ;  Base of callee frame
601 : LDA 6, 605(0) ;  Compute return address
602 : ST  6, 0(4) ;  Store RA in callee frame
603 : ADD 5, 4, 0 ;  Update pointer (enter callee)
604 : LDA 7, 634(0) ;  Call EQ
605 : LD  1, 3(5) ;  Load callee return value into R1
606 : LDC 3, 4(0) ;  Load callee frame size
607 : SUB 5, 5, 3 ;  Restore pointer
608 : ADD 3, 2, 1 ;  R3 = left OR right
609 : ADD 1, 3, 0 ;  R1 = R3
610 : ST  1, 3(5) ;  Store function result into stack frame
611 : LD  6, 0(5) ;  Load return address
612 : LDA 7, 0(6) ;  Return to caller
614 : LD  1, 1(5) ;  Load parameter 'p' into R1
615 : LDA 4, 4(5) ;  Base of callee frame
616 : ST  1, 1(4) ;  Store argument 0 into callee frame
617 : LD  1, 2(5) ;  Load parameter 'q' into R1
618 : LDA 4, 4(5) ;  Base of callee frame
619 : ST  1, 2(4) ;  Store argument 1 into callee frame
620 : LDA 4, 4(5) ;  Base of callee frame
621 : LDA 6, 625(0) ;  Compute return address
622 : ST  6, 0(4) ;  Store RA in callee frame
623 : ADD 5, 4, 0 ;  Update pointer (enter callee)
624 : LDA 7, 634(0) ;  Call EQ
625 : LD  1, 3(5) ;  Load callee return value into R1
626 : LDC 3, 4(0) ;  Load callee frame size
627 : SUB 5, 5, 3 ;  Restore pointer
628 : LDC 2, 1(0) ;  Load 1 into R2
629 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
630 : ST  1, 3(5) ;  Store function result into stack frame
631 : LD  6, 0(5) ;  Load return address
632 : LDA 7, 0(6) ;  Return to caller
634 : LD  1, 1(5) ;  Load parameter 'p' into R1
635 : ADD 2, 1, 0 ;  R2 = left operand
636 : LD  1, 2(5) ;  Load parameter 'q' into R1
637 : SUB 3, 2, 1 ;  delta = left - right
638 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
639 : LDC 1, 0(0) ;  FALSE
640 : LDA 7, 1(7) ;  Skip TRUE
641 : LDC 1, 1(0) ;  TRUE
642 : ST  1, 3(5) ;  Store function result into stack frame
643 : LD  6, 0(5) ;  Load return address
644 : LDA 7, 0(6) ;  Return to caller
646 : LD  1, 1(5) ;  Load parameter 'p' into R1
647 : ADD 2, 1, 0 ;  R2 = left operand
648 : LD  1, 2(5) ;  Load parameter 'q' into R1
649 : SUB 3, 2, 1 ;  delta = left - right
650 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
651 : LDC 1, 0(0) ;  FALSE
652 : LDA 7, 1(7) ;  Skip TRUE
653 : LDC 1, 1(0) ;  TRUE
654 : ST  1, 3(5) ;  Store function result into stack frame
655 : LD  6, 0(5) ;  Load return address
656 : LDA 7, 0(6) ;  Return to caller
658 : LDC 1, 2147483647(0) ;  Load integer-literal into R1
659 : SUB 1, 0, 1 ;  Negate value in R1
660 : ADD 2, 1, 0 ;  R2 = left operand
661 : LDC 1, 1(0) ;  Load integer-literal into R1
662 : SUB 3, 2, 1 ;  R3 = left - right
663 : ADD 1, 3, 0 ;  R1 = R3
664 : ST  1, 1(5) ;  Store function result into stack frame
665 : LD  6, 0(5) ;  Load return address
666 : LDA 7, 0(6) ;  Return to caller
668 : LDC 1, 2147483647(0) ;  Load integer-literal into R1
669 : ST  1, 1(5) ;  Store function result into stack frame
670 : LD  6, 0(5) ;  Load return address
671 : LDA 7, 0(6) ;  Return to caller
