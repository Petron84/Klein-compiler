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
14 : LDC 1, 10(0) ;  Load integer-literal into R1
15 : LDA 4, 4(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LD  1, 1(5) ;  Load parameter 'length' into R1
18 : ADD 2, 1, 0 ;  R2 = left operand
19 : LDC 1, 2(0) ;  Load integer-literal into R1
20 : DIV 3, 2, 1 ;  R3 = left / right
21 : ADD 1, 3, 0 ;  R1 = R3
22 : ADD 2, 1, 0 ;  R2 = left operand
23 : LDC 1, 1(0) ;  Load integer-literal into R1
24 : SUB 3, 2, 1 ;  R3 = left - right
25 : ADD 1, 3, 0 ;  R1 = R3
26 : LDA 4, 4(5) ;  Base of callee frame
27 : ST  1, 2(4) ;  Store argument 1 into callee frame
28 : LDA 4, 4(5) ;  Base of callee frame
29 : LDA 6, 33(0) ;  Compute return address
30 : ST  6, 0(4) ;  Store RA in callee frame
31 : ADD 5, 4, 0 ;  Update pointer (enter callee)
32 : LDA 7, 895(0) ;  Call EXP
33 : LD  1, 3(5) ;  Load callee return value into R1
34 : LDC 3, 4(0) ;  Load callee frame size
35 : SUB 5, 5, 3 ;  Restore pointer
36 : LDA 4, 4(5) ;  Base of callee frame
37 : ST  1, 1(4) ;  Store argument 0 into callee frame
38 : LD  1, 1(5) ;  Load parameter 'length' into R1
39 : ADD 2, 1, 0 ;  R2 = left operand
40 : LDC 1, 2(0) ;  Load integer-literal into R1
41 : DIV 3, 2, 1 ;  R3 = left / right
42 : ADD 1, 3, 0 ;  R1 = R3
43 : LDA 4, 4(5) ;  Base of callee frame
44 : ST  1, 2(4) ;  Store argument 1 into callee frame
45 : LDA 4, 4(5) ;  Base of callee frame
46 : LDA 6, 50(0) ;  Compute return address
47 : ST  6, 0(4) ;  Store RA in callee frame
48 : ADD 5, 4, 0 ;  Update pointer (enter callee)
49 : LDA 7, 58(0) ;  Call createLoop
50 : LD  1, 3(5) ;  Load callee return value into R1
51 : LDC 3, 4(0) ;  Load callee frame size
52 : SUB 5, 5, 3 ;  Restore pointer
53 : ST  1, 2(5) ;  Store result into current frame's return slot
54 : LD  1, 2(5) ;  Load return value into R1
55 : LD  6, 0(5) ;  Load return address for main function into R6
56 : LDA 7, 0(6) ;  Jump to return address of main function
58 : LD  1, 1(5) ;  Load parameter 'a' into R1
59 : LDA 4, 5(5) ;  Base of callee frame
60 : ST  1, 1(4) ;  Store argument 0 into callee frame
61 : LD  1, 2(5) ;  Load parameter 'n' into R1
62 : LDA 4, 5(5) ;  Base of callee frame
63 : ST  1, 2(4) ;  Store argument 1 into callee frame
64 : LDC 1, 10(0) ;  Load integer-literal into R1
65 : ADD 2, 1, 0 ;  R2 = left operand
66 : LD  1, 1(5) ;  Load parameter 'a' into R1
67 : MUL 3, 2, 1 ;  R3 = left * right
68 : ADD 1, 3, 0 ;  R1 = R3
69 : LDA 4, 5(5) ;  Base of callee frame
70 : ST  1, 3(4) ;  Store argument 2 into callee frame
71 : LDA 4, 5(5) ;  Base of callee frame
72 : LDA 6, 76(0) ;  Compute return address
73 : ST  6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Update pointer (enter callee)
75 : LDA 7, 83(0) ;  Call aLoop
76 : LD  1, 4(5) ;  Load callee return value into R1
77 : LDC 3, 5(0) ;  Load callee frame size
78 : SUB 5, 5, 3 ;  Restore pointer
79 : ST  1, 3(5) ;  Store function result into stack frame
80 : LD  6, 0(5) ;  Load return address
81 : LDA 7, 0(6) ;  Return to caller
84 : LD  1, 1(5) ;  Load parameter 'a' into R1
85 : ADD 2, 1, 0 ;  R2 = left operand
86 : LD  1, 3(5) ;  Load parameter 'upper' into R1
87 : SUB 3, 2, 1 ;  delta = left - right
88 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
89 : LDC 1, 0(0) ;  FALSE
90 : LDA 7, 1(7) ;  Skip TRUE
91 : LDC 1, 1(0) ;  TRUE
92 : JEQ 1, 162(0) ;  If condition is false, jump to ELSE
94 : LD  1, 1(5) ;  Load parameter 'a' into R1
95 : LDA 4, 6(5) ;  Base of callee frame
96 : ST  1, 1(4) ;  Store argument 0 into callee frame
97 : LD  1, 2(5) ;  Load parameter 'n' into R1
98 : LDA 4, 6(5) ;  Base of callee frame
99 : ST  1, 2(4) ;  Store argument 1 into callee frame
100 : LD  1, 3(5) ;  Load parameter 'upper' into R1
101 : LDA 4, 6(5) ;  Base of callee frame
102 : ST  1, 3(4) ;  Store argument 2 into callee frame
103 : LDC 1, 4(0) ;  Load integer-literal into R1
104 : ADD 2, 1, 0 ;  R2 = left operand
105 : LD  1, 1(5) ;  Load parameter 'a' into R1
106 : LDA 4, 4(5) ;  Base of callee frame
107 : ST  1, 1(4) ;  Store argument 0 into callee frame
108 : LDC 1, 2(0) ;  Load integer-literal into R1
109 : LDA 4, 4(5) ;  Base of callee frame
110 : ST  1, 2(4) ;  Store argument 1 into callee frame
111 : LDA 4, 4(5) ;  Base of callee frame
112 : LDA 6, 116(0) ;  Compute return address
113 : ST  6, 0(4) ;  Store RA in callee frame
114 : ADD 5, 4, 0 ;  Update pointer (enter callee)
115 : LDA 7, 895(0) ;  Call EXP
116 : LD  1, 3(5) ;  Load callee return value into R1
117 : LDC 3, 4(0) ;  Load callee frame size
118 : SUB 5, 5, 3 ;  Restore pointer
119 : MUL 3, 2, 1 ;  R3 = left * right
120 : ADD 1, 3, 0 ;  R1 = R3
121 : ADD 2, 1, 0 ;  R2 = left operand
122 : LDC 1, 4(0) ;  Load integer-literal into R1
123 : ADD 2, 1, 0 ;  R2 = left operand
124 : LDC 1, 10(0) ;  Load integer-literal into R1
125 : LDA 4, 4(5) ;  Base of callee frame
126 : ST  1, 1(4) ;  Store argument 0 into callee frame
127 : LD  1, 2(5) ;  Load parameter 'n' into R1
128 : LDA 4, 4(5) ;  Base of callee frame
129 : ST  1, 2(4) ;  Store argument 1 into callee frame
130 : LDA 4, 4(5) ;  Base of callee frame
131 : LDA 6, 135(0) ;  Compute return address
132 : ST  6, 0(4) ;  Store RA in callee frame
133 : ADD 5, 4, 0 ;  Update pointer (enter callee)
134 : LDA 7, 895(0) ;  Call EXP
135 : LD  1, 3(5) ;  Load callee return value into R1
136 : LDC 3, 4(0) ;  Load callee frame size
137 : SUB 5, 5, 3 ;  Restore pointer
138 : MUL 3, 2, 1 ;  R3 = left * right
139 : ADD 1, 3, 0 ;  R1 = R3
140 : ADD 2, 1, 0 ;  R2 = left operand
141 : LD  1, 1(5) ;  Load parameter 'a' into R1
142 : MUL 3, 2, 1 ;  R3 = left * right
143 : ADD 1, 3, 0 ;  R1 = R3
144 : ADD 3, 2, 1 ;  R3 = left + right
145 : ADD 1, 3, 0 ;  R1 = R3
146 : ADD 2, 1, 0 ;  R2 = left operand
147 : LDC 1, 1(0) ;  Load integer-literal into R1
148 : ADD 3, 2, 1 ;  R3 = left + right
149 : ADD 1, 3, 0 ;  R1 = R3
150 : LDA 4, 6(5) ;  Base of callee frame
151 : ST  1, 4(4) ;  Store argument 3 into callee frame
152 : LDA 4, 6(5) ;  Base of callee frame
153 : LDA 6, 157(0) ;  Compute return address
154 : ST  6, 0(4) ;  Store RA in callee frame
155 : ADD 5, 4, 0 ;  Update pointer (enter callee)
156 : LDA 7, 167(0) ;  Call aLoop1
157 : LD  1, 5(5) ;  Load callee return value into R1
158 : LDC 3, 6(0) ;  Load callee frame size
159 : SUB 5, 5, 3 ;  Restore pointer
160 : LDA 7, 163(0) ;  Skip ELSE block
162 : LDC 1, 1(0) ;  Load boolean-literal into R1
163 : ST  1, 4(5) ;  Store function result into stack frame
164 : LD  6, 0(5) ;  Load return address
165 : LDA 7, 0(6) ;  Return to caller
167 : LD  1, 1(5) ;  Load parameter 'a' into R1
168 : LDA 4, 7(5) ;  Base of callee frame
169 : ST  1, 1(4) ;  Store argument 0 into callee frame
170 : LD  1, 2(5) ;  Load parameter 'n' into R1
171 : LDA 4, 7(5) ;  Base of callee frame
172 : ST  1, 2(4) ;  Store argument 1 into callee frame
173 : LD  1, 3(5) ;  Load parameter 'upper' into R1
174 : LDA 4, 7(5) ;  Base of callee frame
175 : ST  1, 3(4) ;  Store argument 2 into callee frame
176 : LD  1, 4(5) ;  Load parameter 'det' into R1
177 : LDA 4, 7(5) ;  Base of callee frame
178 : ST  1, 4(4) ;  Store argument 3 into callee frame
179 : LD  1, 4(5) ;  Load parameter 'det' into R1
180 : LDA 4, 3(5) ;  Base of callee frame
181 : ST  1, 1(4) ;  Store argument 0 into callee frame
182 : LDA 4, 3(5) ;  Base of callee frame
183 : LDA 6, 187(0) ;  Compute return address
184 : ST  6, 0(4) ;  Store RA in callee frame
185 : ADD 5, 4, 0 ;  Update pointer (enter callee)
186 : LDA 7, 806(0) ;  Call SQRT
187 : LD  1, 2(5) ;  Load callee return value into R1
188 : LDC 3, 3(0) ;  Load callee frame size
189 : SUB 5, 5, 3 ;  Restore pointer
190 : LDA 4, 7(5) ;  Base of callee frame
191 : ST  1, 5(4) ;  Store argument 4 into callee frame
192 : LDA 4, 7(5) ;  Base of callee frame
193 : LDA 6, 197(0) ;  Compute return address
194 : ST  6, 0(4) ;  Store RA in callee frame
195 : ADD 5, 4, 0 ;  Update pointer (enter callee)
196 : LDA 7, 204(0) ;  Call aLoop2
197 : LD  1, 6(5) ;  Load callee return value into R1
198 : LDC 3, 7(0) ;  Load callee frame size
199 : SUB 5, 5, 3 ;  Restore pointer
200 : ST  1, 5(5) ;  Store function result into stack frame
201 : LD  6, 0(5) ;  Load return address
202 : LDA 7, 0(6) ;  Return to caller
204 : LD  1, 1(5) ;  Load parameter 'a' into R1
205 : LDA 4, 8(5) ;  Base of callee frame
206 : ST  1, 1(4) ;  Store argument 0 into callee frame
207 : LD  1, 2(5) ;  Load parameter 'n' into R1
208 : LDA 4, 8(5) ;  Base of callee frame
209 : ST  1, 2(4) ;  Store argument 1 into callee frame
210 : LD  1, 3(5) ;  Load parameter 'upper' into R1
211 : LDA 4, 8(5) ;  Base of callee frame
212 : ST  1, 3(4) ;  Store argument 2 into callee frame
213 : LD  1, 4(5) ;  Load parameter 'det' into R1
214 : LDA 4, 8(5) ;  Base of callee frame
215 : ST  1, 4(4) ;  Store argument 3 into callee frame
216 : LD  1, 5(5) ;  Load parameter 'root' into R1
217 : LDA 4, 8(5) ;  Base of callee frame
218 : ST  1, 5(4) ;  Store argument 4 into callee frame
219 : LD  1, 1(5) ;  Load parameter 'a' into R1
220 : ADD 2, 1, 0 ;  R2 = left operand
221 : LDC 1, 10(0) ;  Load integer-literal into R1
222 : LDA 4, 4(5) ;  Base of callee frame
223 : ST  1, 1(4) ;  Store argument 0 into callee frame
224 : LD  1, 2(5) ;  Load parameter 'n' into R1
225 : LDA 4, 4(5) ;  Base of callee frame
226 : ST  1, 2(4) ;  Store argument 1 into callee frame
227 : LDA 4, 4(5) ;  Base of callee frame
228 : LDA 6, 232(0) ;  Compute return address
229 : ST  6, 0(4) ;  Store RA in callee frame
230 : ADD 5, 4, 0 ;  Update pointer (enter callee)
231 : LDA 7, 895(0) ;  Call EXP
232 : LD  1, 3(5) ;  Load callee return value into R1
233 : LDC 3, 4(0) ;  Load callee frame size
234 : SUB 5, 5, 3 ;  Restore pointer
235 : MUL 3, 2, 1 ;  R3 = left * right
236 : ADD 1, 3, 0 ;  R1 = R3
237 : ADD 2, 1, 0 ;  R2 = left operand
238 : LD  1, 5(5) ;  Load parameter 'root' into R1
239 : ADD 2, 1, 0 ;  R2 = left operand
240 : LDC 1, 1(0) ;  Load integer-literal into R1
241 : ADD 3, 2, 1 ;  R3 = left + right
242 : ADD 1, 3, 0 ;  R1 = R3
243 : ADD 2, 1, 0 ;  R2 = left operand
244 : LDC 1, 2(0) ;  Load integer-literal into R1
245 : DIV 3, 2, 1 ;  R3 = left / right
246 : ADD 1, 3, 0 ;  R1 = R3
247 : ADD 3, 2, 1 ;  R3 = left + right
248 : ADD 1, 3, 0 ;  R1 = R3
249 : LDA 4, 8(5) ;  Base of callee frame
250 : ST  1, 6(4) ;  Store argument 5 into callee frame
251 : LDA 4, 8(5) ;  Base of callee frame
252 : LDA 6, 256(0) ;  Compute return address
253 : ST  6, 0(4) ;  Store RA in callee frame
254 : ADD 5, 4, 0 ;  Update pointer (enter callee)
255 : LDA 7, 263(0) ;  Call aLoop3
256 : LD  1, 7(5) ;  Load callee return value into R1
257 : LDC 3, 8(0) ;  Load callee frame size
258 : SUB 5, 5, 3 ;  Restore pointer
259 : ST  1, 6(5) ;  Store function result into stack frame
260 : LD  6, 0(5) ;  Load return address
261 : LDA 7, 0(6) ;  Return to caller
264 : LD  1, 5(5) ;  Load parameter 'root' into R1
265 : LDA 4, 4(5) ;  Base of callee frame
266 : ST  1, 1(4) ;  Store argument 0 into callee frame
267 : LD  1, 4(5) ;  Load parameter 'det' into R1
268 : LDA 4, 4(5) ;  Base of callee frame
269 : ST  1, 2(4) ;  Store argument 1 into callee frame
270 : LDA 4, 4(5) ;  Base of callee frame
271 : LDA 6, 275(0) ;  Compute return address
272 : ST  6, 0(4) ;  Store RA in callee frame
273 : ADD 5, 4, 0 ;  Update pointer (enter callee)
274 : LDA 7, 617(0) ;  Call ISROOT
275 : LD  1, 3(5) ;  Load callee return value into R1
276 : LDC 3, 4(0) ;  Load callee frame size
277 : SUB 5, 5, 3 ;  Restore pointer
278 : ADD 2, 1, 0 ;  R2 = left operand
279 : LD  1, 5(5) ;  Load parameter 'root' into R1
280 : ADD 2, 1, 0 ;  R2 = left operand
281 : LDC 1, 1(0) ;  Load integer-literal into R1
282 : ADD 3, 2, 1 ;  R3 = left + right
283 : ADD 1, 3, 0 ;  R1 = R3
284 : LDA 4, 3(5) ;  Base of callee frame
285 : ST  1, 1(4) ;  Store argument 0 into callee frame
286 : LDA 4, 3(5) ;  Base of callee frame
287 : LDA 6, 291(0) ;  Compute return address
288 : ST  6, 0(4) ;  Store RA in callee frame
289 : ADD 5, 4, 0 ;  Update pointer (enter callee)
290 : LDA 7, 633(0) ;  Call EVEN
291 : LD  1, 2(5) ;  Load callee return value into R1
292 : LDC 3, 3(0) ;  Load callee frame size
293 : SUB 5, 5, 3 ;  Restore pointer
294 : MUL 3, 2, 1 ;  R3 = left AND right
295 : ADD 1, 3, 0 ;  R1 = R3
296 : ADD 2, 1, 0 ;  R2 = left operand
297 : LD  1, 6(5) ;  Load parameter 'candidate' into R1
298 : LDA 4, 3(5) ;  Base of callee frame
299 : ST  1, 1(4) ;  Store argument 0 into callee frame
300 : LDA 4, 3(5) ;  Base of callee frame
301 : LDA 6, 305(0) ;  Compute return address
302 : ST  6, 0(4) ;  Store RA in callee frame
303 : ADD 5, 4, 0 ;  Update pointer (enter callee)
304 : LDA 7, 392(0) ;  Call isExcellent
305 : LD  1, 2(5) ;  Load callee return value into R1
306 : LDC 3, 3(0) ;  Load callee frame size
307 : SUB 5, 5, 3 ;  Restore pointer
308 : MUL 3, 2, 1 ;  R3 = left AND right
309 : ADD 1, 3, 0 ;  R1 = R3
310 : JEQ 1, 334(0) ;  If condition is false, jump to ELSE
312 : LD  1, 1(5) ;  Load parameter 'a' into R1
313 : LDA 4, 6(5) ;  Base of callee frame
314 : ST  1, 1(4) ;  Store argument 0 into callee frame
315 : LD  1, 2(5) ;  Load parameter 'n' into R1
316 : LDA 4, 6(5) ;  Base of callee frame
317 : ST  1, 2(4) ;  Store argument 1 into callee frame
318 : LD  1, 3(5) ;  Load parameter 'upper' into R1
319 : LDA 4, 6(5) ;  Base of callee frame
320 : ST  1, 3(4) ;  Store argument 2 into callee frame
321 : LD  1, 6(5) ;  Load parameter 'candidate' into R1
322 : LDA 4, 6(5) ;  Base of callee frame
323 : ST  1, 4(4) ;  Store argument 3 into callee frame
324 : LDA 4, 6(5) ;  Base of callee frame
325 : LDA 6, 329(0) ;  Compute return address
326 : ST  6, 0(4) ;  Store RA in callee frame
327 : ADD 5, 4, 0 ;  Update pointer (enter callee)
328 : LDA 7, 359(0) ;  Call printCandidateAndContinue
329 : LD  1, 5(5) ;  Load callee return value into R1
330 : LDC 3, 6(0) ;  Load callee frame size
331 : SUB 5, 5, 3 ;  Restore pointer
332 : LDA 7, 355(0) ;  Skip ELSE block
334 : LD  1, 1(5) ;  Load parameter 'a' into R1
335 : ADD 2, 1, 0 ;  R2 = left operand
336 : LDC 1, 1(0) ;  Load integer-literal into R1
337 : ADD 3, 2, 1 ;  R3 = left + right
338 : ADD 1, 3, 0 ;  R1 = R3
339 : LDA 4, 5(5) ;  Base of callee frame
340 : ST  1, 1(4) ;  Store argument 0 into callee frame
341 : LD  1, 2(5) ;  Load parameter 'n' into R1
342 : LDA 4, 5(5) ;  Base of callee frame
343 : ST  1, 2(4) ;  Store argument 1 into callee frame
344 : LD  1, 3(5) ;  Load parameter 'upper' into R1
345 : LDA 4, 5(5) ;  Base of callee frame
346 : ST  1, 3(4) ;  Store argument 2 into callee frame
347 : LDA 4, 5(5) ;  Base of callee frame
348 : LDA 6, 352(0) ;  Compute return address
349 : ST  6, 0(4) ;  Store RA in callee frame
350 : ADD 5, 4, 0 ;  Update pointer (enter callee)
351 : LDA 7, 83(0) ;  Call aLoop
352 : LD  1, 4(5) ;  Load callee return value into R1
353 : LDC 3, 5(0) ;  Load callee frame size
354 : SUB 5, 5, 3 ;  Restore pointer
355 : ST  1, 7(5) ;  Store function result into stack frame
356 : LD  6, 0(5) ;  Load return address
357 : LDA 7, 0(6) ;  Return to caller
359 : LD  1, 4(5) ;  Load parameter 'candidate' into R1
360 : LDA 4, 3(5) ;  Base of callee frame (print)
361 : LDA 6, 365(0) ;  Compute return address
362 : ST  6, 0(4) ;  Store RA in callee frame
363 : ADD 5, 4, 0 ;  Update pointer (enter callee)
364 : LDA 7, 10(0) ;  Call print
365 : LDC 3, 3(0) ;  Load callee frame size
366 : SUB 5, 5, 3 ;  Restore pointer
367 : LD  1, 1(5) ;  Load parameter 'a' into R1
368 : ADD 2, 1, 0 ;  R2 = left operand
369 : LDC 1, 1(0) ;  Load integer-literal into R1
370 : ADD 3, 2, 1 ;  R3 = left + right
371 : ADD 1, 3, 0 ;  R1 = R3
372 : LDA 4, 5(5) ;  Base of callee frame
373 : ST  1, 1(4) ;  Store argument 0 into callee frame
374 : LD  1, 2(5) ;  Load parameter 'n' into R1
375 : LDA 4, 5(5) ;  Base of callee frame
376 : ST  1, 2(4) ;  Store argument 1 into callee frame
377 : LD  1, 3(5) ;  Load parameter 'upper' into R1
378 : LDA 4, 5(5) ;  Base of callee frame
379 : ST  1, 3(4) ;  Store argument 2 into callee frame
380 : LDA 4, 5(5) ;  Base of callee frame
381 : LDA 6, 385(0) ;  Compute return address
382 : ST  6, 0(4) ;  Store RA in callee frame
383 : ADD 5, 4, 0 ;  Update pointer (enter callee)
384 : LDA 7, 83(0) ;  Call aLoop
385 : LD  1, 4(5) ;  Load callee return value into R1
386 : LDC 3, 5(0) ;  Load callee frame size
387 : SUB 5, 5, 3 ;  Restore pointer
388 : ST  1, 5(5) ;  Store function result into stack frame
389 : LD  6, 0(5) ;  Load return address
390 : LDA 7, 0(6) ;  Return to caller
392 : LD  1, 1(5) ;  Load parameter 'n' into R1
393 : LDA 4, 4(5) ;  Base of callee frame
394 : ST  1, 1(4) ;  Store argument 0 into callee frame
395 : LD  1, 1(5) ;  Load parameter 'n' into R1
396 : LDA 4, 3(5) ;  Base of callee frame
397 : ST  1, 1(4) ;  Store argument 0 into callee frame
398 : LDA 4, 3(5) ;  Base of callee frame
399 : LDA 6, 403(0) ;  Compute return address
400 : ST  6, 0(4) ;  Store RA in callee frame
401 : ADD 5, 4, 0 ;  Update pointer (enter callee)
402 : LDA 7, 580(0) ;  Call length
403 : LD  1, 2(5) ;  Load callee return value into R1
404 : LDC 3, 3(0) ;  Load callee frame size
405 : SUB 5, 5, 3 ;  Restore pointer
406 : LDA 4, 4(5) ;  Base of callee frame
407 : ST  1, 2(4) ;  Store argument 1 into callee frame
408 : LDA 4, 4(5) ;  Base of callee frame
409 : LDA 6, 413(0) ;  Compute return address
410 : ST  6, 0(4) ;  Store RA in callee frame
411 : ADD 5, 4, 0 ;  Update pointer (enter callee)
412 : LDA 7, 420(0) ;  Call isExcellentSwitch
413 : LD  1, 3(5) ;  Load callee return value into R1
414 : LDC 3, 4(0) ;  Load callee frame size
415 : SUB 5, 5, 3 ;  Restore pointer
416 : ST  1, 2(5) ;  Store function result into stack frame
417 : LD  6, 0(5) ;  Load return address
418 : LDA 7, 0(6) ;  Return to caller
421 : LD  1, 2(5) ;  Load parameter 'length' into R1
422 : LDA 4, 3(5) ;  Base of callee frame
423 : ST  1, 1(4) ;  Store argument 0 into callee frame
424 : LDA 4, 3(5) ;  Base of callee frame
425 : LDA 6, 429(0) ;  Compute return address
426 : ST  6, 0(4) ;  Store RA in callee frame
427 : ADD 5, 4, 0 ;  Update pointer (enter callee)
428 : LDA 7, 850(0) ;  Call ODD
429 : LD  1, 2(5) ;  Load callee return value into R1
430 : LDC 3, 3(0) ;  Load callee frame size
431 : SUB 5, 5, 3 ;  Restore pointer
432 : JEQ 1, 437(0) ;  If condition is false, jump to ELSE
434 : LDC 1, 0(0) ;  Load boolean-literal into R1
435 : LDA 7, 478(0) ;  Skip ELSE block
437 : LD  1, 1(5) ;  Load parameter 'n' into R1
438 : ADD 2, 1, 0 ;  R2 = left operand
439 : LD  1, 1(5) ;  Load parameter 'n' into R1
440 : LDA 4, 3(5) ;  Base of callee frame
441 : ST  1, 1(4) ;  Store argument 0 into callee frame
442 : LDA 4, 3(5) ;  Base of callee frame
443 : LDA 6, 447(0) ;  Compute return address
444 : ST  6, 0(4) ;  Store RA in callee frame
445 : ADD 5, 4, 0 ;  Update pointer (enter callee)
446 : LDA 7, 544(0) ;  Call a
447 : LD  1, 2(5) ;  Load callee return value into R1
448 : LDC 3, 3(0) ;  Load callee frame size
449 : SUB 5, 5, 3 ;  Restore pointer
450 : LDA 4, 4(5) ;  Base of callee frame
451 : ST  1, 1(4) ;  Store argument 0 into callee frame
452 : LD  1, 1(5) ;  Load parameter 'n' into R1
453 : LDA 4, 3(5) ;  Base of callee frame
454 : ST  1, 1(4) ;  Store argument 0 into callee frame
455 : LDA 4, 3(5) ;  Base of callee frame
456 : LDA 6, 460(0) ;  Compute return address
457 : ST  6, 0(4) ;  Store RA in callee frame
458 : ADD 5, 4, 0 ;  Update pointer (enter callee)
459 : LDA 7, 499(0) ;  Call b
460 : LD  1, 2(5) ;  Load callee return value into R1
461 : LDC 3, 3(0) ;  Load callee frame size
462 : SUB 5, 5, 3 ;  Restore pointer
463 : LDA 4, 4(5) ;  Base of callee frame
464 : ST  1, 2(4) ;  Store argument 1 into callee frame
465 : LDA 4, 4(5) ;  Base of callee frame
466 : LDA 6, 470(0) ;  Compute return address
467 : ST  6, 0(4) ;  Store RA in callee frame
468 : ADD 5, 4, 0 ;  Update pointer (enter callee)
469 : LDA 7, 482(0) ;  Call excellentDiff
470 : LD  1, 3(5) ;  Load callee return value into R1
471 : LDC 3, 4(0) ;  Load callee frame size
472 : SUB 5, 5, 3 ;  Restore pointer
473 : SUB 3, 2, 1 ;  delta = left - right
474 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
475 : LDC 1, 0(0) ;  FALSE
476 : LDA 7, 1(7) ;  Skip TRUE
477 : LDC 1, 1(0) ;  TRUE
478 : ST  1, 3(5) ;  Store function result into stack frame
479 : LD  6, 0(5) ;  Load return address
480 : LDA 7, 0(6) ;  Return to caller
482 : LD  1, 2(5) ;  Load parameter 'b' into R1
483 : ADD 2, 1, 0 ;  R2 = left operand
484 : LD  1, 2(5) ;  Load parameter 'b' into R1
485 : MUL 3, 2, 1 ;  R3 = left * right
486 : ADD 1, 3, 0 ;  R1 = R3
487 : ADD 2, 1, 0 ;  R2 = left operand
488 : LD  1, 1(5) ;  Load parameter 'a' into R1
489 : ADD 2, 1, 0 ;  R2 = left operand
490 : LD  1, 1(5) ;  Load parameter 'a' into R1
491 : MUL 3, 2, 1 ;  R3 = left * right
492 : ADD 1, 3, 0 ;  R1 = R3
493 : SUB 3, 2, 1 ;  R3 = left - right
494 : ADD 1, 3, 0 ;  R1 = R3
495 : ST  1, 3(5) ;  Store function result into stack frame
496 : LD  6, 0(5) ;  Load return address
497 : LDA 7, 0(6) ;  Return to caller
499 : LD  1, 1(5) ;  Load parameter 'n' into R1
500 : LDA 4, 4(5) ;  Base of callee frame
501 : ST  1, 1(4) ;  Store argument 0 into callee frame
502 : LDC 1, 10(0) ;  Load integer-literal into R1
503 : LDA 4, 4(5) ;  Base of callee frame
504 : ST  1, 1(4) ;  Store argument 0 into callee frame
505 : LD  1, 1(5) ;  Load parameter 'n' into R1
506 : LDA 4, 3(5) ;  Base of callee frame
507 : ST  1, 1(4) ;  Store argument 0 into callee frame
508 : LDA 4, 3(5) ;  Base of callee frame
509 : LDA 6, 513(0) ;  Compute return address
510 : ST  6, 0(4) ;  Store RA in callee frame
511 : ADD 5, 4, 0 ;  Update pointer (enter callee)
512 : LDA 7, 580(0) ;  Call length
513 : LD  1, 2(5) ;  Load callee return value into R1
514 : LDC 3, 3(0) ;  Load callee frame size
515 : SUB 5, 5, 3 ;  Restore pointer
516 : ADD 2, 1, 0 ;  R2 = left operand
517 : LDC 1, 2(0) ;  Load integer-literal into R1
518 : DIV 3, 2, 1 ;  R3 = left / right
519 : ADD 1, 3, 0 ;  R1 = R3
520 : LDA 4, 4(5) ;  Base of callee frame
521 : ST  1, 2(4) ;  Store argument 1 into callee frame
522 : LDA 4, 4(5) ;  Base of callee frame
523 : LDA 6, 527(0) ;  Compute return address
524 : ST  6, 0(4) ;  Store RA in callee frame
525 : ADD 5, 4, 0 ;  Update pointer (enter callee)
526 : LDA 7, 895(0) ;  Call EXP
527 : LD  1, 3(5) ;  Load callee return value into R1
528 : LDC 3, 4(0) ;  Load callee frame size
529 : SUB 5, 5, 3 ;  Restore pointer
530 : LDA 4, 4(5) ;  Base of callee frame
531 : ST  1, 2(4) ;  Store argument 1 into callee frame
532 : LDA 4, 4(5) ;  Base of callee frame
533 : LDA 6, 537(0) ;  Compute return address
534 : ST  6, 0(4) ;  Store RA in callee frame
535 : ADD 5, 4, 0 ;  Update pointer (enter callee)
536 : LDA 7, 935(0) ;  Call MOD
537 : LD  1, 3(5) ;  Load callee return value into R1
538 : LDC 3, 4(0) ;  Load callee frame size
539 : SUB 5, 5, 3 ;  Restore pointer
540 : ST  1, 2(5) ;  Store function result into stack frame
541 : LD  6, 0(5) ;  Load return address
542 : LDA 7, 0(6) ;  Return to caller
544 : LD  1, 1(5) ;  Load parameter 'n' into R1
545 : ADD 2, 1, 0 ;  R2 = left operand
546 : LDC 1, 10(0) ;  Load integer-literal into R1
547 : LDA 4, 4(5) ;  Base of callee frame
548 : ST  1, 1(4) ;  Store argument 0 into callee frame
549 : LD  1, 1(5) ;  Load parameter 'n' into R1
550 : LDA 4, 3(5) ;  Base of callee frame
551 : ST  1, 1(4) ;  Store argument 0 into callee frame
552 : LDA 4, 3(5) ;  Base of callee frame
553 : LDA 6, 557(0) ;  Compute return address
554 : ST  6, 0(4) ;  Store RA in callee frame
555 : ADD 5, 4, 0 ;  Update pointer (enter callee)
556 : LDA 7, 580(0) ;  Call length
557 : LD  1, 2(5) ;  Load callee return value into R1
558 : LDC 3, 3(0) ;  Load callee frame size
559 : SUB 5, 5, 3 ;  Restore pointer
560 : ADD 2, 1, 0 ;  R2 = left operand
561 : LDC 1, 2(0) ;  Load integer-literal into R1
562 : DIV 3, 2, 1 ;  R3 = left / right
563 : ADD 1, 3, 0 ;  R1 = R3
564 : LDA 4, 4(5) ;  Base of callee frame
565 : ST  1, 2(4) ;  Store argument 1 into callee frame
566 : LDA 4, 4(5) ;  Base of callee frame
567 : LDA 6, 571(0) ;  Compute return address
568 : ST  6, 0(4) ;  Store RA in callee frame
569 : ADD 5, 4, 0 ;  Update pointer (enter callee)
570 : LDA 7, 895(0) ;  Call EXP
571 : LD  1, 3(5) ;  Load callee return value into R1
572 : LDC 3, 4(0) ;  Load callee frame size
573 : SUB 5, 5, 3 ;  Restore pointer
574 : DIV 3, 2, 1 ;  R3 = left / right
575 : ADD 1, 3, 0 ;  R1 = R3
576 : ST  1, 2(5) ;  Store function result into stack frame
577 : LD  6, 0(5) ;  Load return address
578 : LDA 7, 0(6) ;  Return to caller
581 : LD  1, 1(5) ;  Load parameter 'n' into R1
582 : ADD 2, 1, 0 ;  R2 = left operand
583 : LDC 1, 10(0) ;  Load integer-literal into R1
584 : SUB 3, 2, 1 ;  delta = left - right
585 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
586 : LDC 1, 0(0) ;  FALSE
587 : LDA 7, 1(7) ;  Skip TRUE
588 : LDC 1, 1(0) ;  TRUE
589 : JEQ 1, 594(0) ;  If condition is false, jump to ELSE
591 : LDC 1, 1(0) ;  Load integer-literal into R1
592 : LDA 7, 613(0) ;  Skip ELSE block
594 : LDC 1, 1(0) ;  Load integer-literal into R1
595 : ADD 2, 1, 0 ;  R2 = left operand
596 : LD  1, 1(5) ;  Load parameter 'n' into R1
597 : ADD 2, 1, 0 ;  R2 = left operand
598 : LDC 1, 10(0) ;  Load integer-literal into R1
599 : DIV 3, 2, 1 ;  R3 = left / right
600 : ADD 1, 3, 0 ;  R1 = R3
601 : LDA 4, 3(5) ;  Base of callee frame
602 : ST  1, 1(4) ;  Store argument 0 into callee frame
603 : LDA 4, 3(5) ;  Base of callee frame
604 : LDA 6, 608(0) ;  Compute return address
605 : ST  6, 0(4) ;  Store RA in callee frame
606 : ADD 5, 4, 0 ;  Update pointer (enter callee)
607 : LDA 7, 580(0) ;  Call length
608 : LD  1, 2(5) ;  Load callee return value into R1
609 : LDC 3, 3(0) ;  Load callee frame size
610 : SUB 5, 5, 3 ;  Restore pointer
611 : ADD 3, 2, 1 ;  R3 = left + right
612 : ADD 1, 3, 0 ;  R1 = R3
613 : ST  1, 2(5) ;  Store function result into stack frame
614 : LD  6, 0(5) ;  Load return address
615 : LDA 7, 0(6) ;  Return to caller
617 : LD  1, 2(5) ;  Load parameter 'n' into R1
618 : ADD 2, 1, 0 ;  R2 = left operand
619 : LD  1, 1(5) ;  Load parameter 'r' into R1
620 : ADD 2, 1, 0 ;  R2 = left operand
621 : LD  1, 1(5) ;  Load parameter 'r' into R1
622 : MUL 3, 2, 1 ;  R3 = left * right
623 : ADD 1, 3, 0 ;  R1 = R3
624 : SUB 3, 2, 1 ;  delta = left - right
625 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
626 : LDC 1, 0(0) ;  FALSE
627 : LDA 7, 1(7) ;  Skip TRUE
628 : LDC 1, 1(0) ;  TRUE
629 : ST  1, 3(5) ;  Store function result into stack frame
630 : LD  6, 0(5) ;  Load return address
631 : LDA 7, 0(6) ;  Return to caller
633 : LD  1, 1(5) ;  Load parameter 'n' into R1
634 : ADD 2, 1, 0 ;  R2 = left operand
635 : LDC 1, 2(0) ;  Load integer-literal into R1
636 : ADD 2, 1, 0 ;  R2 = left operand
637 : LD  1, 1(5) ;  Load parameter 'n' into R1
638 : ADD 2, 1, 0 ;  R2 = left operand
639 : LDC 1, 2(0) ;  Load integer-literal into R1
640 : DIV 3, 2, 1 ;  R3 = left / right
641 : ADD 1, 3, 0 ;  R1 = R3
642 : MUL 3, 2, 1 ;  R3 = left * right
643 : ADD 1, 3, 0 ;  R1 = R3
644 : SUB 3, 2, 1 ;  delta = left - right
645 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
646 : LDC 1, 0(0) ;  FALSE
647 : LDA 7, 1(7) ;  Skip TRUE
648 : LDC 1, 1(0) ;  TRUE
649 : ST  1, 2(5) ;  Store function result into stack frame
650 : LD  6, 0(5) ;  Load return address
651 : LDA 7, 0(6) ;  Return to caller
654 : LD  1, 4(5) ;  Load parameter 'mid' into R1
655 : ADD 2, 1, 0 ;  R2 = left operand
656 : LD  1, 4(5) ;  Load parameter 'mid' into R1
657 : MUL 3, 2, 1 ;  R3 = left * right
658 : ADD 1, 3, 0 ;  R1 = R3
659 : LDA 4, 4(5) ;  Base of callee frame
660 : ST  1, 1(4) ;  Store argument 0 into callee frame
661 : LD  1, 1(5) ;  Load parameter 'n' into R1
662 : LDA 4, 4(5) ;  Base of callee frame
663 : ST  1, 2(4) ;  Store argument 1 into callee frame
664 : LDA 4, 4(5) ;  Base of callee frame
665 : LDA 6, 669(0) ;  Compute return address
666 : ST  6, 0(4) ;  Store RA in callee frame
667 : ADD 5, 4, 0 ;  Update pointer (enter callee)
668 : LDA 7, 827(0) ;  Call LE
669 : LD  1, 3(5) ;  Load callee return value into R1
670 : LDC 3, 4(0) ;  Load callee frame size
671 : SUB 5, 5, 3 ;  Restore pointer
672 : JEQ 1, 693(0) ;  If condition is false, jump to ELSE
674 : LD  1, 1(5) ;  Load parameter 'n' into R1
675 : LDA 4, 5(5) ;  Base of callee frame
676 : ST  1, 1(4) ;  Store argument 0 into callee frame
677 : LD  1, 4(5) ;  Load parameter 'mid' into R1
678 : LDA 4, 5(5) ;  Base of callee frame
679 : ST  1, 2(4) ;  Store argument 1 into callee frame
680 : LD  1, 3(5) ;  Load parameter 'high' into R1
681 : LDA 4, 5(5) ;  Base of callee frame
682 : ST  1, 3(4) ;  Store argument 2 into callee frame
683 : LDA 4, 5(5) ;  Base of callee frame
684 : LDA 6, 688(0) ;  Compute return address
685 : ST  6, 0(4) ;  Store RA in callee frame
686 : ADD 5, 4, 0 ;  Update pointer (enter callee)
687 : LDA 7, 714(0) ;  Call SQRTSEARCH
688 : LD  1, 4(5) ;  Load callee return value into R1
689 : LDC 3, 5(0) ;  Load callee frame size
690 : SUB 5, 5, 3 ;  Restore pointer
691 : LDA 7, 710(0) ;  Skip ELSE block
693 : LD  1, 1(5) ;  Load parameter 'n' into R1
694 : LDA 4, 5(5) ;  Base of callee frame
695 : ST  1, 1(4) ;  Store argument 0 into callee frame
696 : LD  1, 2(5) ;  Load parameter 'low' into R1
697 : LDA 4, 5(5) ;  Base of callee frame
698 : ST  1, 2(4) ;  Store argument 1 into callee frame
699 : LD  1, 4(5) ;  Load parameter 'mid' into R1
700 : LDA 4, 5(5) ;  Base of callee frame
701 : ST  1, 3(4) ;  Store argument 2 into callee frame
702 : LDA 4, 5(5) ;  Base of callee frame
703 : LDA 6, 707(0) ;  Compute return address
704 : ST  6, 0(4) ;  Store RA in callee frame
705 : ADD 5, 4, 0 ;  Update pointer (enter callee)
706 : LDA 7, 714(0) ;  Call SQRTSEARCH
707 : LD  1, 4(5) ;  Load callee return value into R1
708 : LDC 3, 5(0) ;  Load callee frame size
709 : SUB 5, 5, 3 ;  Restore pointer
710 : ST  1, 5(5) ;  Store function result into stack frame
711 : LD  6, 0(5) ;  Load return address
712 : LDA 7, 0(6) ;  Return to caller
715 : LD  1, 3(5) ;  Load parameter 'high' into R1
716 : LDA 4, 4(5) ;  Base of callee frame
717 : ST  1, 1(4) ;  Store argument 0 into callee frame
718 : LD  1, 2(5) ;  Load parameter 'low' into R1
719 : ADD 2, 1, 0 ;  R2 = left operand
720 : LDC 1, 1(0) ;  Load integer-literal into R1
721 : ADD 3, 2, 1 ;  R3 = left + right
722 : ADD 1, 3, 0 ;  R1 = R3
723 : LDA 4, 4(5) ;  Base of callee frame
724 : ST  1, 2(4) ;  Store argument 1 into callee frame
725 : LDA 4, 4(5) ;  Base of callee frame
726 : LDA 6, 730(0) ;  Compute return address
727 : ST  6, 0(4) ;  Store RA in callee frame
728 : ADD 5, 4, 0 ;  Update pointer (enter callee)
729 : LDA 7, 827(0) ;  Call LE
730 : LD  1, 3(5) ;  Load callee return value into R1
731 : LDC 3, 4(0) ;  Load callee frame size
732 : SUB 5, 5, 3 ;  Restore pointer
733 : JEQ 1, 774(0) ;  If condition is false, jump to ELSE
736 : LD  1, 1(5) ;  Load parameter 'n' into R1
737 : ADD 2, 1, 0 ;  R2 = left operand
738 : LD  1, 2(5) ;  Load parameter 'low' into R1
739 : ADD 2, 1, 0 ;  R2 = left operand
740 : LD  1, 2(5) ;  Load parameter 'low' into R1
741 : MUL 3, 2, 1 ;  R3 = left * right
742 : ADD 1, 3, 0 ;  R1 = R3
743 : SUB 3, 2, 1 ;  R3 = left - right
744 : ADD 1, 3, 0 ;  R1 = R3
745 : LDA 4, 4(5) ;  Base of callee frame
746 : ST  1, 1(4) ;  Store argument 0 into callee frame
747 : LD  1, 3(5) ;  Load parameter 'high' into R1
748 : ADD 2, 1, 0 ;  R2 = left operand
749 : LD  1, 3(5) ;  Load parameter 'high' into R1
750 : MUL 3, 2, 1 ;  R3 = left * right
751 : ADD 1, 3, 0 ;  R1 = R3
752 : ADD 2, 1, 0 ;  R2 = left operand
753 : LD  1, 1(5) ;  Load parameter 'n' into R1
754 : SUB 3, 2, 1 ;  R3 = left - right
755 : ADD 1, 3, 0 ;  R1 = R3
756 : LDA 4, 4(5) ;  Base of callee frame
757 : ST  1, 2(4) ;  Store argument 1 into callee frame
758 : LDA 4, 4(5) ;  Base of callee frame
759 : LDA 6, 763(0) ;  Compute return address
760 : ST  6, 0(4) ;  Store RA in callee frame
761 : ADD 5, 4, 0 ;  Update pointer (enter callee)
762 : LDA 7, 827(0) ;  Call LE
763 : LD  1, 3(5) ;  Load callee return value into R1
764 : LDC 3, 4(0) ;  Load callee frame size
765 : SUB 5, 5, 3 ;  Restore pointer
766 : JEQ 1, 771(0) ;  If condition is false, jump to ELSE
768 : LD  1, 2(5) ;  Load parameter 'low' into R1
769 : LDA 7, 772(0) ;  Skip ELSE block
771 : LD  1, 3(5) ;  Load parameter 'high' into R1
772 : LDA 7, 802(0) ;  Skip ELSE block
774 : LD  1, 1(5) ;  Load parameter 'n' into R1
775 : LDA 4, 6(5) ;  Base of callee frame
776 : ST  1, 1(4) ;  Store argument 0 into callee frame
777 : LD  1, 2(5) ;  Load parameter 'low' into R1
778 : LDA 4, 6(5) ;  Base of callee frame
779 : ST  1, 2(4) ;  Store argument 1 into callee frame
780 : LD  1, 3(5) ;  Load parameter 'high' into R1
781 : LDA 4, 6(5) ;  Base of callee frame
782 : ST  1, 3(4) ;  Store argument 2 into callee frame
783 : LD  1, 2(5) ;  Load parameter 'low' into R1
784 : ADD 2, 1, 0 ;  R2 = left operand
785 : LD  1, 3(5) ;  Load parameter 'high' into R1
786 : ADD 3, 2, 1 ;  R3 = left + right
787 : ADD 1, 3, 0 ;  R1 = R3
788 : ADD 2, 1, 0 ;  R2 = left operand
789 : LDC 1, 2(0) ;  Load integer-literal into R1
790 : DIV 3, 2, 1 ;  R3 = left / right
791 : ADD 1, 3, 0 ;  R1 = R3
792 : LDA 4, 6(5) ;  Base of callee frame
793 : ST  1, 4(4) ;  Store argument 3 into callee frame
794 : LDA 4, 6(5) ;  Base of callee frame
795 : LDA 6, 799(0) ;  Compute return address
796 : ST  6, 0(4) ;  Store RA in callee frame
797 : ADD 5, 4, 0 ;  Update pointer (enter callee)
798 : LDA 7, 653(0) ;  Call SQRTSPLIT
799 : LD  1, 5(5) ;  Load callee return value into R1
800 : LDC 3, 6(0) ;  Load callee frame size
801 : SUB 5, 5, 3 ;  Restore pointer
802 : ST  1, 4(5) ;  Store function result into stack frame
803 : LD  6, 0(5) ;  Load return address
804 : LDA 7, 0(6) ;  Return to caller
806 : LD  1, 1(5) ;  Load parameter 'n' into R1
807 : LDA 4, 5(5) ;  Base of callee frame
808 : ST  1, 1(4) ;  Store argument 0 into callee frame
809 : LDC 1, 0(0) ;  Load integer-literal into R1
810 : LDA 4, 5(5) ;  Base of callee frame
811 : ST  1, 2(4) ;  Store argument 1 into callee frame
812 : LD  1, 1(5) ;  Load parameter 'n' into R1
813 : LDA 4, 5(5) ;  Base of callee frame
814 : ST  1, 3(4) ;  Store argument 2 into callee frame
815 : LDA 4, 5(5) ;  Base of callee frame
816 : LDA 6, 820(0) ;  Compute return address
817 : ST  6, 0(4) ;  Store RA in callee frame
818 : ADD 5, 4, 0 ;  Update pointer (enter callee)
819 : LDA 7, 714(0) ;  Call SQRTSEARCH
820 : LD  1, 4(5) ;  Load callee return value into R1
821 : LDC 3, 5(0) ;  Load callee frame size
822 : SUB 5, 5, 3 ;  Restore pointer
823 : ST  1, 2(5) ;  Store function result into stack frame
824 : LD  6, 0(5) ;  Load return address
825 : LDA 7, 0(6) ;  Return to caller
827 : LD  1, 1(5) ;  Load parameter 'p' into R1
828 : ADD 2, 1, 0 ;  R2 = left operand
829 : LD  1, 2(5) ;  Load parameter 'q' into R1
830 : SUB 3, 2, 1 ;  delta = left - right
831 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
832 : LDC 1, 0(0) ;  FALSE
833 : LDA 7, 1(7) ;  Skip TRUE
834 : LDC 1, 1(0) ;  TRUE
835 : ADD 2, 1, 0 ;  R2 = left operand
836 : LD  1, 1(5) ;  Load parameter 'p' into R1
837 : ADD 2, 1, 0 ;  R2 = left operand
838 : LD  1, 2(5) ;  Load parameter 'q' into R1
839 : SUB 3, 2, 1 ;  delta = left - right
840 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
841 : LDC 1, 0(0) ;  FALSE
842 : LDA 7, 1(7) ;  Skip TRUE
843 : LDC 1, 1(0) ;  TRUE
844 : ADD 3, 2, 1 ;  R3 = left OR right
845 : ADD 1, 3, 0 ;  R1 = R3
846 : ST  1, 3(5) ;  Store function result into stack frame
847 : LD  6, 0(5) ;  Load return address
848 : LDA 7, 0(6) ;  Return to caller
851 : LDC 1, 0(0) ;  Load integer-literal into R1
852 : ADD 2, 1, 0 ;  R2 = left operand
853 : LD  1, 1(5) ;  Load parameter 'n' into R1
854 : SUB 3, 2, 1 ;  delta = left - right
855 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
856 : LDC 1, 0(0) ;  FALSE
857 : LDA 7, 1(7) ;  Skip TRUE
858 : LDC 1, 1(0) ;  TRUE
859 : JEQ 1, 879(0) ;  If condition is false, jump to ELSE
861 : LDC 1, 2(0) ;  Load integer-literal into R1
862 : ADD 2, 1, 0 ;  R2 = left operand
863 : LD  1, 1(5) ;  Load parameter 'n' into R1
864 : ADD 2, 1, 0 ;  R2 = left operand
865 : LDC 1, 2(0) ;  Load integer-literal into R1
866 : DIV 3, 2, 1 ;  R3 = left / right
867 : ADD 1, 3, 0 ;  R1 = R3
868 : MUL 3, 2, 1 ;  R3 = left * right
869 : ADD 1, 3, 0 ;  R1 = R3
870 : ADD 2, 1, 0 ;  R2 = left operand
871 : LD  1, 1(5) ;  Load parameter 'n' into R1
872 : SUB 3, 2, 1 ;  delta = left - right
873 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
874 : LDC 1, 0(0) ;  FALSE
875 : LDA 7, 1(7) ;  Skip TRUE
876 : LDC 1, 1(0) ;  TRUE
877 : LDA 7, 891(0) ;  Skip ELSE block
879 : LD  1, 1(5) ;  Load parameter 'n' into R1
880 : SUB 1, 0, 1 ;  Negate value in R1
881 : LDA 4, 3(5) ;  Base of callee frame
882 : ST  1, 1(4) ;  Store argument 0 into callee frame
883 : LDA 4, 3(5) ;  Base of callee frame
884 : LDA 6, 888(0) ;  Compute return address
885 : ST  6, 0(4) ;  Store RA in callee frame
886 : ADD 5, 4, 0 ;  Update pointer (enter callee)
887 : LDA 7, 850(0) ;  Call ODD
888 : LD  1, 2(5) ;  Load callee return value into R1
889 : LDC 3, 3(0) ;  Load callee frame size
890 : SUB 5, 5, 3 ;  Restore pointer
891 : ST  1, 2(5) ;  Store function result into stack frame
892 : LD  6, 0(5) ;  Load return address
893 : LDA 7, 0(6) ;  Return to caller
896 : LD  1, 2(5) ;  Load parameter 'n' into R1
897 : ADD 2, 1, 0 ;  R2 = left operand
898 : LDC 1, 0(0) ;  Load integer-literal into R1
899 : SUB 3, 2, 1 ;  delta = left - right
900 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
901 : LDC 1, 0(0) ;  FALSE
902 : LDA 7, 1(7) ;  Skip TRUE
903 : LDC 1, 1(0) ;  TRUE
904 : JEQ 1, 909(0) ;  If condition is false, jump to ELSE
906 : LDC 1, 1(0) ;  Load integer-literal into R1
907 : LDA 7, 931(0) ;  Skip ELSE block
909 : LD  1, 1(5) ;  Load parameter 'm' into R1
910 : ADD 2, 1, 0 ;  R2 = left operand
911 : LD  1, 1(5) ;  Load parameter 'm' into R1
912 : LDA 4, 4(5) ;  Base of callee frame
913 : ST  1, 1(4) ;  Store argument 0 into callee frame
914 : LD  1, 2(5) ;  Load parameter 'n' into R1
915 : ADD 2, 1, 0 ;  R2 = left operand
916 : LDC 1, 1(0) ;  Load integer-literal into R1
917 : SUB 3, 2, 1 ;  R3 = left - right
918 : ADD 1, 3, 0 ;  R1 = R3
919 : LDA 4, 4(5) ;  Base of callee frame
920 : ST  1, 2(4) ;  Store argument 1 into callee frame
921 : LDA 4, 4(5) ;  Base of callee frame
922 : LDA 6, 926(0) ;  Compute return address
923 : ST  6, 0(4) ;  Store RA in callee frame
924 : ADD 5, 4, 0 ;  Update pointer (enter callee)
925 : LDA 7, 895(0) ;  Call EXP
926 : LD  1, 3(5) ;  Load callee return value into R1
927 : LDC 3, 4(0) ;  Load callee frame size
928 : SUB 5, 5, 3 ;  Restore pointer
929 : MUL 3, 2, 1 ;  R3 = left * right
930 : ADD 1, 3, 0 ;  R1 = R3
931 : ST  1, 3(5) ;  Store function result into stack frame
932 : LD  6, 0(5) ;  Load return address
933 : LDA 7, 0(6) ;  Return to caller
935 : LD  1, 1(5) ;  Load parameter 'm' into R1
936 : ADD 2, 1, 0 ;  R2 = left operand
937 : LD  1, 2(5) ;  Load parameter 'n' into R1
938 : ADD 2, 1, 0 ;  R2 = left operand
939 : LD  1, 1(5) ;  Load parameter 'm' into R1
940 : ADD 2, 1, 0 ;  R2 = left operand
941 : LD  1, 2(5) ;  Load parameter 'n' into R1
942 : DIV 3, 2, 1 ;  R3 = left / right
943 : ADD 1, 3, 0 ;  R1 = R3
944 : MUL 3, 2, 1 ;  R3 = left * right
945 : ADD 1, 3, 0 ;  R1 = R3
946 : SUB 3, 2, 1 ;  R3 = left - right
947 : ADD 1, 3, 0 ;  R1 = R3
948 : ST  1, 3(5) ;  Store function result into stack frame
949 : LD  6, 0(5) ;  Load return address
950 : LDA 7, 0(6) ;  Return to caller
