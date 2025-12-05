1 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST  6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LD  6, 0(5) ;  Load return addess from stack frame.
14 : LDA 7, 0(6) ;  Jump to return address.
17 : LD  1, 2(5) ;  Load parameter 'selector' into R1
18 : ADD 2, 1, 0 ;  R2 = left operand
19 : LDC 1, 3(0) ;  Load integer-literal into R1
20 : SUB 3, 2, 1 ;  delta = left - right
21 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
22 : LDC 1, 0(0) ;  FALSE
23 : LDA 7, 1(7) ;  Skip TRUE
24 : LDC 1, 1(0) ;  TRUE
25 : JEQ 1, 41(0) ;  If condition is false, jump to ELSE
27 : LD  1, 1(5) ;  Load parameter 'n' into R1
28 : LDA 4, 3(5) ;  Base of callee frame
29 : ST  1, 1(4) ;  Store argument 0 into callee frame
30 : LDA 4, 3(5) ;  Base of callee frame
31 : LDA 6, 35(0) ;  Compute return address
32 : ST  6, 0(4) ;  Store RA in callee frame
33 : ADD 5, 4, 0 ;  Update pointer (enter callee)
34 : LDA 7, 367(0) ;  Call emirp
35 : LD  1, 2(5) ;  Load callee return value into R1
36 : LDC 3, 3(0) ;  Load callee frame size
37 : SUB 5, 5, 3 ;  Restore pointer
38 : ST  1, 3(5) ;  Store result into current frame's return slot
39 : LDA 7, 93(0) ;  Skip ELSE block
42 : LD  1, 2(5) ;  Load parameter 'selector' into R1
43 : ADD 2, 1, 0 ;  R2 = left operand
44 : LDC 1, 5(0) ;  Load integer-literal into R1
45 : SUB 3, 2, 1 ;  delta = left - right
46 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
47 : LDC 1, 0(0) ;  FALSE
48 : LDA 7, 1(7) ;  Skip TRUE
49 : LDC 1, 1(0) ;  TRUE
50 : JEQ 1, 66(0) ;  If condition is false, jump to ELSE
52 : LD  1, 1(5) ;  Load parameter 'n' into R1
53 : LDA 4, 3(5) ;  Base of callee frame
54 : ST  1, 1(4) ;  Store argument 0 into callee frame
55 : LDA 4, 3(5) ;  Base of callee frame
56 : LDA 6, 60(0) ;  Compute return address
57 : ST  6, 0(4) ;  Store RA in callee frame
58 : ADD 5, 4, 0 ;  Update pointer (enter callee)
59 : LDA 7, 320(0) ;  Call snowball
60 : LD  1, 2(5) ;  Load callee return value into R1
61 : LDC 3, 3(0) ;  Load callee frame size
62 : SUB 5, 5, 3 ;  Restore pointer
63 : ST  1, 3(5) ;  Store result into current frame's return slot
64 : LDA 7, 93(0) ;  Skip ELSE block
67 : LD  1, 2(5) ;  Load parameter 'selector' into R1
68 : ADD 2, 1, 0 ;  R2 = left operand
69 : LDC 1, 8(0) ;  Load integer-literal into R1
70 : SUB 3, 2, 1 ;  delta = left - right
71 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
72 : LDC 1, 0(0) ;  FALSE
73 : LDA 7, 1(7) ;  Skip TRUE
74 : LDC 1, 1(0) ;  TRUE
75 : JEQ 1, 91(0) ;  If condition is false, jump to ELSE
77 : LD  1, 1(5) ;  Load parameter 'n' into R1
78 : LDA 4, 3(5) ;  Base of callee frame
79 : ST  1, 1(4) ;  Store argument 0 into callee frame
80 : LDA 4, 3(5) ;  Base of callee frame
81 : LDA 6, 85(0) ;  Compute return address
82 : ST  6, 0(4) ;  Store RA in callee frame
83 : ADD 5, 4, 0 ;  Update pointer (enter callee)
84 : LDA 7, 287(0) ;  Call doBoth
85 : LD  1, 2(5) ;  Load callee return value into R1
86 : LDC 3, 3(0) ;  Load callee frame size
87 : SUB 5, 5, 3 ;  Restore pointer
88 : ST  1, 3(5) ;  Store result into current frame's return slot
89 : LDA 7, 93(0) ;  Skip ELSE block
91 : LDC 1, 0(0) ;  Load boolean-literal into R1
92 : ST  1, 3(5) ;  Store result into current frame's return slot
93 : LD  1, 3(5) ;  Load return value into R1
94 : LD  6, 0(5) ;  Load return address for main function into R6
95 : LDA 7, 0(6) ;  Jump to return address of main function
97 : LD  1, 1(5) ;  Load parameter 'm' into R1
98 : ADD 2, 1, 0 ;  R2 = left operand
99 : LD  1, 1(5) ;  Load parameter 'm' into R1
100 : ADD 2, 1, 0 ;  R2 = left operand
101 : LD  1, 2(5) ;  Load parameter 'n' into R1
102 : DIV 3, 2, 1 ;  R3 = left / right
103 : ADD 1, 3, 0 ;  R1 = R3
104 : ADD 2, 1, 0 ;  R2 = left operand
105 : LD  1, 2(5) ;  Load parameter 'n' into R1
106 : MUL 3, 2, 1 ;  R3 = left * right
107 : ADD 1, 3, 0 ;  R1 = R3
108 : SUB 3, 2, 1 ;  R3 = left - right
109 : ADD 1, 3, 0 ;  R1 = R3
110 : ST  1, 3(5) ;  Store function result into stack frame
111 : LD  6, 0(5) ;  Load return address
112 : LDA 7, 0(6) ;  Return to caller
115 : LD  1, 1(5) ;  Load parameter 'n' into R1
116 : ADD 2, 1, 0 ;  R2 = left operand
117 : LDC 1, 0(0) ;  Load integer-literal into R1
118 : SUB 3, 2, 1 ;  delta = left - right
119 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
120 : LDC 1, 0(0) ;  FALSE
121 : LDA 7, 1(7) ;  Skip TRUE
122 : LDC 1, 1(0) ;  TRUE
123 : JEQ 1, 128(0) ;  If condition is false, jump to ELSE
125 : LD  1, 2(5) ;  Load parameter 'nR' into R1
126 : LDA 7, 167(0) ;  Skip ELSE block
128 : LD  1, 1(5) ;  Load parameter 'n' into R1
129 : ADD 2, 1, 0 ;  R2 = left operand
130 : LDC 1, 10(0) ;  Load integer-literal into R1
131 : DIV 3, 2, 1 ;  R3 = left / right
132 : ADD 1, 3, 0 ;  R1 = R3
133 : LDA 4, 4(5) ;  Base of callee frame
134 : ST  1, 1(4) ;  Store argument 0 into callee frame
135 : LDC 1, 10(0) ;  Load integer-literal into R1
136 : ADD 2, 1, 0 ;  R2 = left operand
137 : LD  1, 2(5) ;  Load parameter 'nR' into R1
138 : MUL 3, 2, 1 ;  R3 = left * right
139 : ADD 1, 3, 0 ;  R1 = R3
140 : ADD 2, 1, 0 ;  R2 = left operand
141 : LD  1, 1(5) ;  Load parameter 'n' into R1
142 : LDA 4, 4(5) ;  Base of callee frame
143 : ST  1, 1(4) ;  Store argument 0 into callee frame
144 : LDC 1, 10(0) ;  Load integer-literal into R1
145 : LDA 4, 4(5) ;  Base of callee frame
146 : ST  1, 2(4) ;  Store argument 1 into callee frame
147 : LDA 4, 4(5) ;  Base of callee frame
148 : LDA 6, 152(0) ;  Compute return address
149 : ST  6, 0(4) ;  Store RA in callee frame
150 : ADD 5, 4, 0 ;  Update pointer (enter callee)
151 : LDA 7, 97(0) ;  Call MOD
152 : LD  1, 3(5) ;  Load callee return value into R1
153 : LDC 3, 4(0) ;  Load callee frame size
154 : SUB 5, 5, 3 ;  Restore pointer
155 : ADD 3, 2, 1 ;  R3 = left + right
156 : ADD 1, 3, 0 ;  R1 = R3
157 : LDA 4, 4(5) ;  Base of callee frame
158 : ST  1, 2(4) ;  Store argument 1 into callee frame
159 : LDA 4, 4(5) ;  Base of callee frame
160 : LDA 6, 164(0) ;  Compute return address
161 : ST  6, 0(4) ;  Store RA in callee frame
162 : ADD 5, 4, 0 ;  Update pointer (enter callee)
163 : LDA 7, 114(0) ;  Call reverseL
164 : LD  1, 3(5) ;  Load callee return value into R1
165 : LDC 3, 4(0) ;  Load callee frame size
166 : SUB 5, 5, 3 ;  Restore pointer
167 : ST  1, 3(5) ;  Store function result into stack frame
168 : LD  6, 0(5) ;  Load return address
169 : LDA 7, 0(6) ;  Return to caller
171 : LD  1, 1(5) ;  Load parameter 'n' into R1
172 : LDA 4, 4(5) ;  Base of callee frame
173 : ST  1, 1(4) ;  Store argument 0 into callee frame
174 : LDC 1, 0(0) ;  Load integer-literal into R1
175 : LDA 4, 4(5) ;  Base of callee frame
176 : ST  1, 2(4) ;  Store argument 1 into callee frame
177 : LDA 4, 4(5) ;  Base of callee frame
178 : LDA 6, 182(0) ;  Compute return address
179 : ST  6, 0(4) ;  Store RA in callee frame
180 : ADD 5, 4, 0 ;  Update pointer (enter callee)
181 : LDA 7, 114(0) ;  Call reverseL
182 : LD  1, 3(5) ;  Load callee return value into R1
183 : LDC 3, 4(0) ;  Load callee frame size
184 : SUB 5, 5, 3 ;  Restore pointer
185 : ST  1, 2(5) ;  Store function result into stack frame
186 : LD  6, 0(5) ;  Load return address
187 : LDA 7, 0(6) ;  Return to caller
189 : LD  1, 2(5) ;  Load parameter 'b' into R1
190 : LDA 4, 4(5) ;  Base of callee frame
191 : ST  1, 1(4) ;  Store argument 0 into callee frame
192 : LD  1, 1(5) ;  Load parameter 'a' into R1
193 : LDA 4, 4(5) ;  Base of callee frame
194 : ST  1, 2(4) ;  Store argument 1 into callee frame
195 : LDA 4, 4(5) ;  Base of callee frame
196 : LDA 6, 200(0) ;  Compute return address
197 : ST  6, 0(4) ;  Store RA in callee frame
198 : ADD 5, 4, 0 ;  Update pointer (enter callee)
199 : LDA 7, 97(0) ;  Call MOD
200 : LD  1, 3(5) ;  Load callee return value into R1
201 : LDC 3, 4(0) ;  Load callee frame size
202 : SUB 5, 5, 3 ;  Restore pointer
203 : ADD 2, 1, 0 ;  R2 = left operand
204 : LDC 1, 0(0) ;  Load integer-literal into R1
205 : SUB 3, 2, 1 ;  delta = left - right
206 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
207 : LDC 1, 0(0) ;  FALSE
208 : LDA 7, 1(7) ;  Skip TRUE
209 : LDC 1, 1(0) ;  TRUE
210 : ST  1, 3(5) ;  Store function result into stack frame
211 : LD  6, 0(5) ;  Load return address
212 : LDA 7, 0(6) ;  Return to caller
215 : LD  1, 1(5) ;  Load parameter 'i' into R1
216 : ADD 2, 1, 0 ;  R2 = left operand
217 : LD  1, 2(5) ;  Load parameter 'n' into R1
218 : SUB 3, 2, 1 ;  delta = left - right
219 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
220 : LDC 1, 0(0) ;  FALSE
221 : LDA 7, 1(7) ;  Skip TRUE
222 : LDC 1, 1(0) ;  TRUE
223 : JEQ 1, 262(0) ;  If condition is false, jump to ELSE
225 : LD  1, 1(5) ;  Load parameter 'i' into R1
226 : LDA 4, 4(5) ;  Base of callee frame
227 : ST  1, 1(4) ;  Store argument 0 into callee frame
228 : LD  1, 2(5) ;  Load parameter 'n' into R1
229 : LDA 4, 4(5) ;  Base of callee frame
230 : ST  1, 2(4) ;  Store argument 1 into callee frame
231 : LDA 4, 4(5) ;  Base of callee frame
232 : LDA 6, 236(0) ;  Compute return address
233 : ST  6, 0(4) ;  Store RA in callee frame
234 : ADD 5, 4, 0 ;  Update pointer (enter callee)
235 : LDA 7, 189(0) ;  Call divides
236 : LD  1, 3(5) ;  Load callee return value into R1
237 : LDC 3, 4(0) ;  Load callee frame size
238 : SUB 5, 5, 3 ;  Restore pointer
239 : ADD 2, 1, 0 ;  R2 = left operand
240 : LD  1, 1(5) ;  Load parameter 'i' into R1
241 : ADD 2, 1, 0 ;  R2 = left operand
242 : LDC 1, 1(0) ;  Load integer-literal into R1
243 : ADD 3, 2, 1 ;  R3 = left + right
244 : ADD 1, 3, 0 ;  R1 = R3
245 : LDA 4, 4(5) ;  Base of callee frame
246 : ST  1, 1(4) ;  Store argument 0 into callee frame
247 : LD  1, 2(5) ;  Load parameter 'n' into R1
248 : LDA 4, 4(5) ;  Base of callee frame
249 : ST  1, 2(4) ;  Store argument 1 into callee frame
250 : LDA 4, 4(5) ;  Base of callee frame
251 : LDA 6, 255(0) ;  Compute return address
252 : ST  6, 0(4) ;  Store RA in callee frame
253 : ADD 5, 4, 0 ;  Update pointer (enter callee)
254 : LDA 7, 214(0) ;  Call hasDivisorFrom
255 : LD  1, 3(5) ;  Load callee return value into R1
256 : LDC 3, 4(0) ;  Load callee frame size
257 : SUB 5, 5, 3 ;  Restore pointer
258 : ADD 3, 2, 1 ;  R3 = left OR right
259 : ADD 1, 3, 0 ;  R1 = R3
260 : LDA 7, 263(0) ;  Skip ELSE block
262 : LDC 1, 0(0) ;  Load boolean-literal into R1
263 : ST  1, 3(5) ;  Store function result into stack frame
264 : LD  6, 0(5) ;  Load return address
265 : LDA 7, 0(6) ;  Return to caller
267 : LDC 1, 2(0) ;  Load integer-literal into R1
268 : LDA 4, 4(5) ;  Base of callee frame
269 : ST  1, 1(4) ;  Store argument 0 into callee frame
270 : LD  1, 1(5) ;  Load parameter 'n' into R1
271 : LDA 4, 4(5) ;  Base of callee frame
272 : ST  1, 2(4) ;  Store argument 1 into callee frame
273 : LDA 4, 4(5) ;  Base of callee frame
274 : LDA 6, 278(0) ;  Compute return address
275 : ST  6, 0(4) ;  Store RA in callee frame
276 : ADD 5, 4, 0 ;  Update pointer (enter callee)
277 : LDA 7, 214(0) ;  Call hasDivisorFrom
278 : LD  1, 3(5) ;  Load callee return value into R1
279 : LDC 3, 4(0) ;  Load callee frame size
280 : SUB 5, 5, 3 ;  Restore pointer
281 : LDC 2, 1(0) ;  Load 1 into R2
282 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
283 : ST  1, 2(5) ;  Store function result into stack frame
284 : LD  6, 0(5) ;  Load return address
285 : LDA 7, 0(6) ;  Return to caller
287 : LD  1, 1(5) ;  Load parameter 'n' into R1
288 : LDA 4, 3(5) ;  Base of callee frame
289 : ST  1, 1(4) ;  Store argument 0 into callee frame
290 : LDA 4, 3(5) ;  Base of callee frame
291 : LDA 6, 295(0) ;  Compute return address
292 : ST  6, 0(4) ;  Store RA in callee frame
293 : ADD 5, 4, 0 ;  Update pointer (enter callee)
294 : LDA 7, 367(0) ;  Call emirp
295 : LD  1, 2(5) ;  Load callee return value into R1
296 : LDC 3, 3(0) ;  Load callee frame size
297 : SUB 5, 5, 3 ;  Restore pointer
298 : LDA 4, 3(5) ;  Base of callee frame (print)
299 : LDA 6, 303(0) ;  Compute return address
300 : ST  6, 0(4) ;  Store RA in callee frame
301 : ADD 5, 4, 0 ;  Update pointer (enter callee)
302 : LDA 7, 12(0) ;  Call print
303 : LDC 3, 3(0) ;  Load callee frame size
304 : SUB 5, 5, 3 ;  Restore pointer
305 : LD  1, 1(5) ;  Load parameter 'n' into R1
306 : LDA 4, 3(5) ;  Base of callee frame
307 : ST  1, 1(4) ;  Store argument 0 into callee frame
308 : LDA 4, 3(5) ;  Base of callee frame
309 : LDA 6, 313(0) ;  Compute return address
310 : ST  6, 0(4) ;  Store RA in callee frame
311 : ADD 5, 4, 0 ;  Update pointer (enter callee)
312 : LDA 7, 320(0) ;  Call snowball
313 : LD  1, 2(5) ;  Load callee return value into R1
314 : LDC 3, 3(0) ;  Load callee frame size
315 : SUB 5, 5, 3 ;  Restore pointer
316 : ST  1, 2(5) ;  Store function result into stack frame
317 : LD  6, 0(5) ;  Load return address
318 : LDA 7, 0(6) ;  Return to caller
320 : LD  1, 1(5) ;  Load parameter 'n' into R1
321 : LDA 4, 3(5) ;  Base of callee frame
322 : ST  1, 1(4) ;  Store argument 0 into callee frame
323 : LDA 4, 3(5) ;  Base of callee frame
324 : LDA 6, 328(0) ;  Compute return address
325 : ST  6, 0(4) ;  Store RA in callee frame
326 : ADD 5, 4, 0 ;  Update pointer (enter callee)
327 : LDA 7, 267(0) ;  Call isPrime
328 : LD  1, 2(5) ;  Load callee return value into R1
329 : LDC 3, 3(0) ;  Load callee frame size
330 : SUB 5, 5, 3 ;  Restore pointer
331 : ADD 2, 1, 0 ;  R2 = left operand
333 : LD  1, 1(5) ;  Load parameter 'n' into R1
334 : ADD 2, 1, 0 ;  R2 = left operand
335 : LDC 1, 10(0) ;  Load integer-literal into R1
336 : SUB 3, 2, 1 ;  delta = left - right
337 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
338 : LDC 1, 0(0) ;  FALSE
339 : LDA 7, 1(7) ;  Skip TRUE
340 : LDC 1, 1(0) ;  TRUE
341 : JEQ 1, 346(0) ;  If condition is false, jump to ELSE
343 : LDC 1, 1(0) ;  Load boolean-literal into R1
344 : LDA 7, 361(0) ;  Skip ELSE block
346 : LD  1, 1(5) ;  Load parameter 'n' into R1
347 : ADD 2, 1, 0 ;  R2 = left operand
348 : LDC 1, 10(0) ;  Load integer-literal into R1
349 : DIV 3, 2, 1 ;  R3 = left / right
350 : ADD 1, 3, 0 ;  R1 = R3
351 : LDA 4, 3(5) ;  Base of callee frame
352 : ST  1, 1(4) ;  Store argument 0 into callee frame
353 : LDA 4, 3(5) ;  Base of callee frame
354 : LDA 6, 358(0) ;  Compute return address
355 : ST  6, 0(4) ;  Store RA in callee frame
356 : ADD 5, 4, 0 ;  Update pointer (enter callee)
357 : LDA 7, 267(0) ;  Call isPrime
358 : LD  1, 2(5) ;  Load callee return value into R1
359 : LDC 3, 3(0) ;  Load callee frame size
360 : SUB 5, 5, 3 ;  Restore pointer
361 : MUL 3, 2, 1 ;  R3 = left AND right
362 : ADD 1, 3, 0 ;  R1 = R3
363 : ST  1, 2(5) ;  Store function result into stack frame
364 : LD  6, 0(5) ;  Load return address
365 : LDA 7, 0(6) ;  Return to caller
367 : LD  1, 1(5) ;  Load parameter 'n' into R1
368 : LDA 4, 3(5) ;  Base of callee frame
369 : ST  1, 1(4) ;  Store argument 0 into callee frame
370 : LDA 4, 3(5) ;  Base of callee frame
371 : LDA 6, 375(0) ;  Compute return address
372 : ST  6, 0(4) ;  Store RA in callee frame
373 : ADD 5, 4, 0 ;  Update pointer (enter callee)
374 : LDA 7, 267(0) ;  Call isPrime
375 : LD  1, 2(5) ;  Load callee return value into R1
376 : LDC 3, 3(0) ;  Load callee frame size
377 : SUB 5, 5, 3 ;  Restore pointer
378 : ADD 2, 1, 0 ;  R2 = left operand
379 : LD  1, 1(5) ;  Load parameter 'n' into R1
380 : LDA 4, 3(5) ;  Base of callee frame
381 : ST  1, 1(4) ;  Store argument 0 into callee frame
382 : LDA 4, 3(5) ;  Base of callee frame
383 : LDA 6, 387(0) ;  Compute return address
384 : ST  6, 0(4) ;  Store RA in callee frame
385 : ADD 5, 4, 0 ;  Update pointer (enter callee)
386 : LDA 7, 171(0) ;  Call reverse
387 : LD  1, 2(5) ;  Load callee return value into R1
388 : LDC 3, 3(0) ;  Load callee frame size
389 : SUB 5, 5, 3 ;  Restore pointer
390 : LDA 4, 3(5) ;  Base of callee frame
391 : ST  1, 1(4) ;  Store argument 0 into callee frame
392 : LDA 4, 3(5) ;  Base of callee frame
393 : LDA 6, 397(0) ;  Compute return address
394 : ST  6, 0(4) ;  Store RA in callee frame
395 : ADD 5, 4, 0 ;  Update pointer (enter callee)
396 : LDA 7, 267(0) ;  Call isPrime
397 : LD  1, 2(5) ;  Load callee return value into R1
398 : LDC 3, 3(0) ;  Load callee frame size
399 : SUB 5, 5, 3 ;  Restore pointer
400 : MUL 3, 2, 1 ;  R3 = left AND right
401 : ADD 1, 3, 0 ;  R1 = R3
402 : ST  1, 2(5) ;  Store function result into stack frame
403 : LD  6, 0(5) ;  Load return address
404 : LDA 7, 0(6) ;  Return to caller
