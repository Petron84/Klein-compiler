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
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : LDA 4, 4(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LD   1, 1(5) ;  Load parameter 'length' into R1
15 : ADD  3, 1, 0 ;  Store left operand into temporary register
16 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
17 : ADD  2, 3, 0 ;  Restore left operand
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ADD  3, 1, 0 ;  Store left operand into temporary register
20 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
21 : ADD  2, 3, 0 ;  Restore left operand
22 : SUB  1, 2, 1 ;  R1 = left - right
23 : LDA 4, 4(5) ; Base of callee frame
24 : ST 1, 2(4) ; Store argument 1 in callee
25 : LDA 4, 4(5) ; Base of callee frame
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 894(0) ; Call EXP
30 : LD   1, 3(5) ;  Load function result
31 : LDC   2, 4(0) ;  Caller frame size
32 : SUB   5, 5, 2 ;  Pop back to caller
33 : SUB   4, 4, 2 ;  Pop back to caller
34 : LDA 4, 4(5) ; Base of callee frame
35 : ST 1, 1(4) ; Store argument 0 in callee
36 : LD   1, 1(5) ;  Load parameter 'length' into R1
37 : ADD  3, 1, 0 ;  Store left operand into temporary register
38 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
39 : ADD  2, 3, 0 ;  Restore left operand
40 : DIV  1, 2, 1 ;  R1 = left / right
41 : LDA 4, 4(5) ; Base of callee frame
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDA 4, 4(5) ; Base of callee frame
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 56(0) ; Call createLoop
48 : LD   1, 3(5) ;  Load function result
49 : LDC   2, 4(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : ST 1, 2(5) ; Store result into caller’s frame
53 : LD   1, 2(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LD   1, 1(5) ;  Load parameter 'a' into R1
57 : LDA 4, 5(5) ; Base of callee frame
58 : ST 1, 1(4) ; Store argument 0 in callee
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : LDA 4, 5(5) ; Base of callee frame
61 : ST 1, 2(4) ; Store argument 1 in callee
62 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LD   1, 1(5) ;  Load parameter 'a' into R1
65 : ADD  2, 3, 0 ;  Restore left operand
66 : MUL  1, 2, 1 ;  R1 = left * right
67 : LDA 4, 5(5) ; Base of callee frame
68 : ST 1, 3(4) ; Store argument 2 in callee
69 : LDA 4, 5(5) ; Base of callee frame
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 81(0) ; Call aLoop
74 : LD   1, 4(5) ;  Load function result
75 : LDC   2, 5(0) ;  Caller frame size
76 : SUB   5, 5, 2 ;  Pop back to caller
77 : SUB   4, 4, 2 ;  Pop back to caller
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
81 : LD   1, 1(5) ;  Load parameter 'a' into R1
82 : ADD  3, 1, 0 ;  Store left operand into temporary register
83 : LD   1, 3(5) ;  Load parameter 'upper' into R1
84 : ADD  2, 3, 0 ;  Restore left operand
85 : SUB  1, 2, 1 ;  left - right for less-than check
86 : JLT  1, 2(7) ;  If R1 < 0, jump to true
87 : LDC  1, 0(0) ;  false
88 : LDA  7, 1(7) ;  skip setting true
89 : LDC  1, 1(0) ;  true
90 : JEQ  1, 161(0) ;  If condition is false, jump to ELSE
91 : LD   1, 1(5) ;  Load parameter 'a' into R1
92 : LDA 4, 6(5) ; Base of callee frame
93 : ST 1, 1(4) ; Store argument 0 in callee
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : LDA 4, 6(5) ; Base of callee frame
96 : ST 1, 2(4) ; Store argument 1 in callee
97 : LD   1, 3(5) ;  Load parameter 'upper' into R1
98 : LDA 4, 6(5) ; Base of callee frame
99 : ST 1, 3(4) ; Store argument 2 in callee
100 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LD   1, 1(5) ;  Load parameter 'a' into R1
103 : LDA 4, 4(5) ; Base of callee frame
104 : ST 1, 1(4) ; Store argument 0 in callee
105 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
106 : LDA 4, 4(5) ; Base of callee frame
107 : ST 1, 2(4) ; Store argument 1 in callee
108 : LDA 4, 4(5) ; Base of callee frame
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return in callee frame
111 : ADD 5, 4, 0 ; Push callee frame
112 : LDA 7, 894(0) ; Call EXP
113 : LD   1, 3(5) ;  Load function result
114 : LDC   2, 4(0) ;  Caller frame size
115 : SUB   5, 5, 2 ;  Pop back to caller
116 : SUB   4, 4, 2 ;  Pop back to caller
117 : ADD  2, 3, 0 ;  Restore left operand
118 : MUL  1, 2, 1 ;  R1 = left * right
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
123 : LDA 4, 4(5) ; Base of callee frame
124 : ST 1, 1(4) ; Store argument 0 in callee
125 : LD   1, 2(5) ;  Load parameter 'n' into R1
126 : LDA 4, 4(5) ; Base of callee frame
127 : ST 1, 2(4) ; Store argument 1 in callee
128 : LDA 4, 4(5) ; Base of callee frame
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return in callee frame
131 : ADD 5, 4, 0 ; Push callee frame
132 : LDA 7, 894(0) ; Call EXP
133 : LD   1, 3(5) ;  Load function result
134 : LDC   2, 4(0) ;  Caller frame size
135 : SUB   5, 5, 2 ;  Pop back to caller
136 : SUB   4, 4, 2 ;  Pop back to caller
137 : ADD  2, 3, 0 ;  Restore left operand
138 : MUL  1, 2, 1 ;  R1 = left * right
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LD   1, 1(5) ;  Load parameter 'a' into R1
141 : ADD  2, 3, 0 ;  Restore left operand
142 : MUL  1, 2, 1 ;  R1 = left * right
143 : ADD  2, 3, 0 ;  Restore left operand
144 : ADD  1, 2, 1 ;  R1 = left + right
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
147 : ADD  2, 3, 0 ;  Restore left operand
148 : ADD  1, 2, 1 ;  R1 = left + right
149 : LDA 4, 6(5) ; Base of callee frame
150 : ST 1, 4(4) ; Store argument 3 in callee
151 : LDA 4, 6(5) ; Base of callee frame
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return in callee frame
154 : ADD 5, 4, 0 ; Push callee frame
155 : LDA 7, 165(0) ; Call aLoop1
156 : LD   1, 5(5) ;  Load function result
157 : LDC   2, 6(0) ;  Caller frame size
158 : SUB   5, 5, 2 ;  Pop back to caller
159 : SUB   4, 4, 2 ;  Pop back to caller
160 : LDA  7, 162(0) ;  Skip ELSE block
161 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
162 : ST   1, 4(5) ;  Store function result into stack frame
163 : LD   6, 0(5) ;  Load return address
164 : LDA  7, 0(6) ;  Return to caller
165 : LD   1, 1(5) ;  Load parameter 'a' into R1
166 : LDA 4, 7(5) ; Base of callee frame
167 : ST 1, 1(4) ; Store argument 0 in callee
168 : LD   1, 2(5) ;  Load parameter 'n' into R1
169 : LDA 4, 7(5) ; Base of callee frame
170 : ST 1, 2(4) ; Store argument 1 in callee
171 : LD   1, 3(5) ;  Load parameter 'upper' into R1
172 : LDA 4, 7(5) ; Base of callee frame
173 : ST 1, 3(4) ; Store argument 2 in callee
174 : LD   1, 4(5) ;  Load parameter 'det' into R1
175 : LDA 4, 7(5) ; Base of callee frame
176 : ST 1, 4(4) ; Store argument 3 in callee
177 : LD   1, 4(5) ;  Load parameter 'det' into R1
178 : LDA 4, 3(5) ; Base of callee frame
179 : ST 1, 1(4) ; Store argument 0 in callee
180 : LDA 4, 3(5) ; Base of callee frame
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return in callee frame
183 : ADD 5, 4, 0 ; Push callee frame
184 : LDA 7, 805(0) ; Call SQRT
185 : LD   1, 2(5) ;  Load function result
186 : LDC   2, 3(0) ;  Caller frame size
187 : SUB   5, 5, 2 ;  Pop back to caller
188 : SUB   4, 4, 2 ;  Pop back to caller
189 : LDA 4, 7(5) ; Base of callee frame
190 : ST 1, 5(4) ; Store argument 4 in callee
191 : LDA 4, 7(5) ; Base of callee frame
192 : LDA 6, 196(0) ; Return address
193 : ST 6, 0(4) ; Store return in callee frame
194 : ADD 5, 4, 0 ; Push callee frame
195 : LDA 7, 203(0) ; Call aLoop2
196 : LD   1, 6(5) ;  Load function result
197 : LDC   2, 7(0) ;  Caller frame size
198 : SUB   5, 5, 2 ;  Pop back to caller
199 : SUB   4, 4, 2 ;  Pop back to caller
200 : ST   1, 5(5) ;  Store function result into stack frame
201 : LD   6, 0(5) ;  Load return address
202 : LDA  7, 0(6) ;  Return to caller
203 : LD   1, 1(5) ;  Load parameter 'a' into R1
204 : LDA 4, 8(5) ; Base of callee frame
205 : ST 1, 1(4) ; Store argument 0 in callee
206 : LD   1, 2(5) ;  Load parameter 'n' into R1
207 : LDA 4, 8(5) ; Base of callee frame
208 : ST 1, 2(4) ; Store argument 1 in callee
209 : LD   1, 3(5) ;  Load parameter 'upper' into R1
210 : LDA 4, 8(5) ; Base of callee frame
211 : ST 1, 3(4) ; Store argument 2 in callee
212 : LD   1, 4(5) ;  Load parameter 'det' into R1
213 : LDA 4, 8(5) ; Base of callee frame
214 : ST 1, 4(4) ; Store argument 3 in callee
215 : LD   1, 5(5) ;  Load parameter 'root' into R1
216 : LDA 4, 8(5) ; Base of callee frame
217 : ST 1, 5(4) ; Store argument 4 in callee
218 : LD   1, 1(5) ;  Load parameter 'a' into R1
219 : ADD  3, 1, 0 ;  Store left operand into temporary register
220 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
221 : LDA 4, 4(5) ; Base of callee frame
222 : ST 1, 1(4) ; Store argument 0 in callee
223 : LD   1, 2(5) ;  Load parameter 'n' into R1
224 : LDA 4, 4(5) ; Base of callee frame
225 : ST 1, 2(4) ; Store argument 1 in callee
226 : LDA 4, 4(5) ; Base of callee frame
227 : LDA 6, 231(0) ; Return address
228 : ST 6, 0(4) ; Store return in callee frame
229 : ADD 5, 4, 0 ; Push callee frame
230 : LDA 7, 894(0) ; Call EXP
231 : LD   1, 3(5) ;  Load function result
232 : LDC   2, 4(0) ;  Caller frame size
233 : SUB   5, 5, 2 ;  Pop back to caller
234 : SUB   4, 4, 2 ;  Pop back to caller
235 : ADD  2, 3, 0 ;  Restore left operand
236 : MUL  1, 2, 1 ;  R1 = left * right
237 : ADD  3, 1, 0 ;  Store left operand into temporary register
238 : LD   1, 5(5) ;  Load parameter 'root' into R1
239 : ADD  3, 1, 0 ;  Store left operand into temporary register
240 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 3, 0 ;  Restore left operand
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : ADD  3, 1, 0 ;  Store left operand into temporary register
244 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
245 : ADD  2, 3, 0 ;  Restore left operand
246 : DIV  1, 2, 1 ;  R1 = left / right
247 : ADD  2, 3, 0 ;  Restore left operand
248 : ADD  1, 2, 1 ;  R1 = left + right
249 : LDA 4, 8(5) ; Base of callee frame
250 : ST 1, 6(4) ; Store argument 5 in callee
251 : LDA 4, 8(5) ; Base of callee frame
252 : LDA 6, 256(0) ; Return address
253 : ST 6, 0(4) ; Store return in callee frame
254 : ADD 5, 4, 0 ; Push callee frame
255 : LDA 7, 263(0) ; Call aLoop3
256 : LD   1, 7(5) ;  Load function result
257 : LDC   2, 8(0) ;  Caller frame size
258 : SUB   5, 5, 2 ;  Pop back to caller
259 : SUB   4, 4, 2 ;  Pop back to caller
260 : ST   1, 6(5) ;  Store function result into stack frame
261 : LD   6, 0(5) ;  Load return address
262 : LDA  7, 0(6) ;  Return to caller
263 : LD   1, 5(5) ;  Load parameter 'root' into R1
264 : LDA 4, 4(5) ; Base of callee frame
265 : ST 1, 1(4) ; Store argument 0 in callee
266 : LD   1, 4(5) ;  Load parameter 'det' into R1
267 : LDA 4, 4(5) ; Base of callee frame
268 : ST 1, 2(4) ; Store argument 1 in callee
269 : LDA 4, 4(5) ; Base of callee frame
270 : LDA 6, 274(0) ; Return address
271 : ST 6, 0(4) ; Store return in callee frame
272 : ADD 5, 4, 0 ; Push callee frame
273 : LDA 7, 621(0) ; Call ISROOT
274 : LD   1, 3(5) ;  Load function result
275 : LDC   2, 4(0) ;  Caller frame size
276 : SUB   5, 5, 2 ;  Pop back to caller
277 : SUB   4, 4, 2 ;  Pop back to caller
278 : ADD  3, 1, 0 ;  Store left operand into temporary register
279 : LD   1, 5(5) ;  Load parameter 'root' into R1
280 : ADD  3, 1, 0 ;  Store left operand into temporary register
281 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
282 : ADD  2, 3, 0 ;  Restore left operand
283 : ADD  1, 2, 1 ;  R1 = left + right
284 : LDA 4, 3(5) ; Base of callee frame
285 : ST 1, 1(4) ; Store argument 0 in callee
286 : LDA 4, 3(5) ; Base of callee frame
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return in callee frame
289 : ADD 5, 4, 0 ; Push callee frame
290 : LDA 7, 637(0) ; Call EVEN
291 : LD   1, 2(5) ;  Load function result
292 : LDC   2, 3(0) ;  Caller frame size
293 : SUB   5, 5, 2 ;  Pop back to caller
294 : SUB   4, 4, 2 ;  Pop back to caller
295 : ADD  2, 3, 0 ;  Restore left operand
296 : MUL  1, 2, 1 ;  R1 = left AND right
297 : ADD  3, 1, 0 ;  Store left operand into temporary register
298 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
299 : LDA 4, 3(5) ; Base of callee frame
300 : ST 1, 1(4) ; Store argument 0 in callee
301 : LDA 4, 3(5) ; Base of callee frame
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame
305 : LDA 7, 394(0) ; Call isExcellent
306 : LD   1, 2(5) ;  Load function result
307 : LDC   2, 3(0) ;  Caller frame size
308 : SUB   5, 5, 2 ;  Pop back to caller
309 : SUB   4, 4, 2 ;  Pop back to caller
310 : ADD  2, 3, 0 ;  Restore left operand
311 : MUL  1, 2, 1 ;  R1 = left AND right
312 : JEQ  1, 335(0) ;  If condition is false, jump to ELSE
313 : LD   1, 1(5) ;  Load parameter 'a' into R1
314 : LDA 4, 6(5) ; Base of callee frame
315 : ST 1, 1(4) ; Store argument 0 in callee
316 : LD   1, 2(5) ;  Load parameter 'n' into R1
317 : LDA 4, 6(5) ; Base of callee frame
318 : ST 1, 2(4) ; Store argument 1 in callee
319 : LD   1, 3(5) ;  Load parameter 'upper' into R1
320 : LDA 4, 6(5) ; Base of callee frame
321 : ST 1, 3(4) ; Store argument 2 in callee
322 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
323 : LDA 4, 6(5) ; Base of callee frame
324 : ST 1, 4(4) ; Store argument 3 in callee
325 : LDA 4, 6(5) ; Base of callee frame
326 : LDA 6, 330(0) ; Return address
327 : ST 6, 0(4) ; Store return in callee frame
328 : ADD 5, 4, 0 ; Push callee frame
329 : LDA 7, 360(0) ; Call printCandidateAndContinue
330 : LD   1, 5(5) ;  Load function result
331 : LDC   2, 6(0) ;  Caller frame size
332 : SUB   5, 5, 2 ;  Pop back to caller
333 : SUB   4, 4, 2 ;  Pop back to caller
334 : LDA  7, 357(0) ;  Skip ELSE block
335 : LD   1, 1(5) ;  Load parameter 'a' into R1
336 : ADD  3, 1, 0 ;  Store left operand into temporary register
337 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
338 : ADD  2, 3, 0 ;  Restore left operand
339 : ADD  1, 2, 1 ;  R1 = left + right
340 : LDA 4, 5(5) ; Base of callee frame
341 : ST 1, 1(4) ; Store argument 0 in callee
342 : LD   1, 2(5) ;  Load parameter 'n' into R1
343 : LDA 4, 5(5) ; Base of callee frame
344 : ST 1, 2(4) ; Store argument 1 in callee
345 : LD   1, 3(5) ;  Load parameter 'upper' into R1
346 : LDA 4, 5(5) ; Base of callee frame
347 : ST 1, 3(4) ; Store argument 2 in callee
348 : LDA 4, 5(5) ; Base of callee frame
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 81(0) ; Call aLoop
353 : LD   1, 4(5) ;  Load function result
354 : LDC   2, 5(0) ;  Caller frame size
355 : SUB   5, 5, 2 ;  Pop back to caller
356 : SUB   4, 4, 2 ;  Pop back to caller
357 : ST   1, 7(5) ;  Store function result into stack frame
358 : LD   6, 0(5) ;  Load return address
359 : LDA  7, 0(6) ;  Return to caller
360 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
361 : LDA 4, 3(5) ; Base of callee frame
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return addr in callee frame
364 : ADD 5, 4, 0 ; Push new frame
365 : LDA 7, 8(0) ; Call print
366 : LDC 2, 3(0) ; Caller frame size
367 : SUB 5, 5, 2 ; Pop frame
368 : ST   1, 5(5) ;  Store function result into stack frame
369 : LD   1, 1(5) ;  Load parameter 'a' into R1
370 : ADD  3, 1, 0 ;  Store left operand into temporary register
371 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
372 : ADD  2, 3, 0 ;  Restore left operand
373 : ADD  1, 2, 1 ;  R1 = left + right
374 : LDA 4, 5(5) ; Base of callee frame
375 : ST 1, 1(4) ; Store argument 0 in callee
376 : LD   1, 2(5) ;  Load parameter 'n' into R1
377 : LDA 4, 5(5) ; Base of callee frame
378 : ST 1, 2(4) ; Store argument 1 in callee
379 : LD   1, 3(5) ;  Load parameter 'upper' into R1
380 : LDA 4, 5(5) ; Base of callee frame
381 : ST 1, 3(4) ; Store argument 2 in callee
382 : LDA 4, 5(5) ; Base of callee frame
383 : LDA 6, 387(0) ; Return address
384 : ST 6, 0(4) ; Store return in callee frame
385 : ADD 5, 4, 0 ; Push callee frame
386 : LDA 7, 81(0) ; Call aLoop
387 : LD   1, 4(5) ;  Load function result
388 : LDC   2, 5(0) ;  Caller frame size
389 : SUB   5, 5, 2 ;  Pop back to caller
390 : SUB   4, 4, 2 ;  Pop back to caller
391 : ST   1, 5(5) ;  Store function result into stack frame
392 : LD   6, 0(5) ;  Load return address
393 : LDA  7, 0(6) ;  Return to caller
394 : LD   1, 1(5) ;  Load parameter 'n' into R1
395 : LDA 4, 4(5) ; Base of callee frame
396 : ST 1, 1(4) ; Store argument 0 in callee
397 : LD   1, 1(5) ;  Load parameter 'n' into R1
398 : LDA 4, 3(5) ; Base of callee frame
399 : ST 1, 1(4) ; Store argument 0 in callee
400 : LDA 4, 3(5) ; Base of callee frame
401 : LDA 6, 405(0) ; Return address
402 : ST 6, 0(4) ; Store return in callee frame
403 : ADD 5, 4, 0 ; Push callee frame
404 : LDA 7, 586(0) ; Call length
405 : LD   1, 2(5) ;  Load function result
406 : LDC   2, 3(0) ;  Caller frame size
407 : SUB   5, 5, 2 ;  Pop back to caller
408 : SUB   4, 4, 2 ;  Pop back to caller
409 : LDA 4, 4(5) ; Base of callee frame
410 : ST 1, 2(4) ; Store argument 1 in callee
411 : LDA 4, 4(5) ; Base of callee frame
412 : LDA 6, 416(0) ; Return address
413 : ST 6, 0(4) ; Store return in callee frame
414 : ADD 5, 4, 0 ; Push callee frame
415 : LDA 7, 423(0) ; Call isExcellentSwitch
416 : LD   1, 3(5) ;  Load function result
417 : LDC   2, 4(0) ;  Caller frame size
418 : SUB   5, 5, 2 ;  Pop back to caller
419 : SUB   4, 4, 2 ;  Pop back to caller
420 : ST   1, 2(5) ;  Store function result into stack frame
421 : LD   6, 0(5) ;  Load return address
422 : LDA  7, 0(6) ;  Return to caller
423 : LD   1, 2(5) ;  Load parameter 'length' into R1
424 : LDA 4, 3(5) ; Base of callee frame
425 : ST 1, 1(4) ; Store argument 0 in callee
426 : LDA 4, 3(5) ; Base of callee frame
427 : LDA 6, 431(0) ; Return address
428 : ST 6, 0(4) ; Store return in callee frame
429 : ADD 5, 4, 0 ; Push callee frame
430 : LDA 7, 850(0) ; Call ODD
431 : LD   1, 2(5) ;  Load function result
432 : LDC   2, 3(0) ;  Caller frame size
433 : SUB   5, 5, 2 ;  Pop back to caller
434 : SUB   4, 4, 2 ;  Pop back to caller
435 : JEQ  1, 438(0) ;  If condition is false, jump to ELSE
436 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
437 : LDA  7, 483(0) ;  Skip ELSE block
438 : LD   1, 1(5) ;  Load parameter 'n' into R1
439 : ADD  3, 1, 0 ;  Store left operand into temporary register
440 : LD   1, 1(5) ;  Load parameter 'n' into R1
441 : LDA 4, 3(5) ; Base of callee frame
442 : ST 1, 1(4) ; Store argument 0 in callee
443 : LDA 4, 3(5) ; Base of callee frame
444 : LDA 6, 448(0) ; Return address
445 : ST 6, 0(4) ; Store return in callee frame
446 : ADD 5, 4, 0 ; Push callee frame
447 : LDA 7, 549(0) ; Call a
448 : LD   1, 2(5) ;  Load function result
449 : LDC   2, 3(0) ;  Caller frame size
450 : SUB   5, 5, 2 ;  Pop back to caller
451 : SUB   4, 4, 2 ;  Pop back to caller
452 : LDA 4, 4(5) ; Base of callee frame
453 : ST 1, 1(4) ; Store argument 0 in callee
454 : LD   1, 1(5) ;  Load parameter 'n' into R1
455 : LDA 4, 3(5) ; Base of callee frame
456 : ST 1, 1(4) ; Store argument 0 in callee
457 : LDA 4, 3(5) ; Base of callee frame
458 : LDA 6, 462(0) ; Return address
459 : ST 6, 0(4) ; Store return in callee frame
460 : ADD 5, 4, 0 ; Push callee frame
461 : LDA 7, 502(0) ; Call b
462 : LD   1, 2(5) ;  Load function result
463 : LDC   2, 3(0) ;  Caller frame size
464 : SUB   5, 5, 2 ;  Pop back to caller
465 : SUB   4, 4, 2 ;  Pop back to caller
466 : LDA 4, 4(5) ; Base of callee frame
467 : ST 1, 2(4) ; Store argument 1 in callee
468 : LDA 4, 4(5) ; Base of callee frame
469 : LDA 6, 473(0) ; Return address
470 : ST 6, 0(4) ; Store return in callee frame
471 : ADD 5, 4, 0 ; Push callee frame
472 : LDA 7, 486(0) ; Call excellentDiff
473 : LD   1, 3(5) ;  Load function result
474 : LDC   2, 4(0) ;  Caller frame size
475 : SUB   5, 5, 2 ;  Pop back to caller
476 : SUB   4, 4, 2 ;  Pop back to caller
477 : ADD  2, 3, 0 ;  Restore left operand
478 : SUB  1, 2, 1 ;  left - right for equality check
479 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
480 : LDC  1, 0(0) ;  false
481 : LDA  7, 1(7) ;  skip setting true
482 : LDC  1, 1(0) ;  true
483 : ST   1, 3(5) ;  Store function result into stack frame
484 : LD   6, 0(5) ;  Load return address
485 : LDA  7, 0(6) ;  Return to caller
486 : LD   1, 2(5) ;  Load parameter 'b' into R1
487 : ADD  3, 1, 0 ;  Store left operand into temporary register
488 : LD   1, 2(5) ;  Load parameter 'b' into R1
489 : ADD  2, 3, 0 ;  Restore left operand
490 : MUL  1, 2, 1 ;  R1 = left * right
491 : ADD  3, 1, 0 ;  Store left operand into temporary register
492 : LD   1, 1(5) ;  Load parameter 'a' into R1
493 : ADD  3, 1, 0 ;  Store left operand into temporary register
494 : LD   1, 1(5) ;  Load parameter 'a' into R1
495 : ADD  2, 3, 0 ;  Restore left operand
496 : MUL  1, 2, 1 ;  R1 = left * right
497 : ADD  2, 3, 0 ;  Restore left operand
498 : SUB  1, 2, 1 ;  R1 = left - right
499 : ST   1, 3(5) ;  Store function result into stack frame
500 : LD   6, 0(5) ;  Load return address
501 : LDA  7, 0(6) ;  Return to caller
502 : LD   1, 1(5) ;  Load parameter 'n' into R1
503 : LDA 4, 4(5) ; Base of callee frame
504 : ST 1, 1(4) ; Store argument 0 in callee
505 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
506 : LDA 4, 4(5) ; Base of callee frame
507 : ST 1, 1(4) ; Store argument 0 in callee
508 : LD   1, 1(5) ;  Load parameter 'n' into R1
509 : LDA 4, 3(5) ; Base of callee frame
510 : ST 1, 1(4) ; Store argument 0 in callee
511 : LDA 4, 3(5) ; Base of callee frame
512 : LDA 6, 516(0) ; Return address
513 : ST 6, 0(4) ; Store return in callee frame
514 : ADD 5, 4, 0 ; Push callee frame
515 : LDA 7, 586(0) ; Call length
516 : LD   1, 2(5) ;  Load function result
517 : LDC   2, 3(0) ;  Caller frame size
518 : SUB   5, 5, 2 ;  Pop back to caller
519 : SUB   4, 4, 2 ;  Pop back to caller
520 : ADD  3, 1, 0 ;  Store left operand into temporary register
521 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
522 : ADD  2, 3, 0 ;  Restore left operand
523 : DIV  1, 2, 1 ;  R1 = left / right
524 : LDA 4, 4(5) ; Base of callee frame
525 : ST 1, 2(4) ; Store argument 1 in callee
526 : LDA 4, 4(5) ; Base of callee frame
527 : LDA 6, 531(0) ; Return address
528 : ST 6, 0(4) ; Store return in callee frame
529 : ADD 5, 4, 0 ; Push callee frame
530 : LDA 7, 894(0) ; Call EXP
531 : LD   1, 3(5) ;  Load function result
532 : LDC   2, 4(0) ;  Caller frame size
533 : SUB   5, 5, 2 ;  Pop back to caller
534 : SUB   4, 4, 2 ;  Pop back to caller
535 : LDA 4, 4(5) ; Base of callee frame
536 : ST 1, 2(4) ; Store argument 1 in callee
537 : LDA 4, 4(5) ; Base of callee frame
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return in callee frame
540 : ADD 5, 4, 0 ; Push callee frame
541 : LDA 7, 932(0) ; Call MOD
542 : LD   1, 3(5) ;  Load function result
543 : LDC   2, 4(0) ;  Caller frame size
544 : SUB   5, 5, 2 ;  Pop back to caller
545 : SUB   4, 4, 2 ;  Pop back to caller
546 : ST   1, 2(5) ;  Store function result into stack frame
547 : LD   6, 0(5) ;  Load return address
548 : LDA  7, 0(6) ;  Return to caller
549 : LD   1, 1(5) ;  Load parameter 'n' into R1
550 : ADD  3, 1, 0 ;  Store left operand into temporary register
551 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
552 : LDA 4, 4(5) ; Base of callee frame
553 : ST 1, 1(4) ; Store argument 0 in callee
554 : LD   1, 1(5) ;  Load parameter 'n' into R1
555 : LDA 4, 3(5) ; Base of callee frame
556 : ST 1, 1(4) ; Store argument 0 in callee
557 : LDA 4, 3(5) ; Base of callee frame
558 : LDA 6, 562(0) ; Return address
559 : ST 6, 0(4) ; Store return in callee frame
560 : ADD 5, 4, 0 ; Push callee frame
561 : LDA 7, 586(0) ; Call length
562 : LD   1, 2(5) ;  Load function result
563 : LDC   2, 3(0) ;  Caller frame size
564 : SUB   5, 5, 2 ;  Pop back to caller
565 : SUB   4, 4, 2 ;  Pop back to caller
566 : ADD  3, 1, 0 ;  Store left operand into temporary register
567 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
568 : ADD  2, 3, 0 ;  Restore left operand
569 : DIV  1, 2, 1 ;  R1 = left / right
570 : LDA 4, 4(5) ; Base of callee frame
571 : ST 1, 2(4) ; Store argument 1 in callee
572 : LDA 4, 4(5) ; Base of callee frame
573 : LDA 6, 577(0) ; Return address
574 : ST 6, 0(4) ; Store return in callee frame
575 : ADD 5, 4, 0 ; Push callee frame
576 : LDA 7, 894(0) ; Call EXP
577 : LD   1, 3(5) ;  Load function result
578 : LDC   2, 4(0) ;  Caller frame size
579 : SUB   5, 5, 2 ;  Pop back to caller
580 : SUB   4, 4, 2 ;  Pop back to caller
581 : ADD  2, 3, 0 ;  Restore left operand
582 : DIV  1, 2, 1 ;  R1 = left / right
583 : ST   1, 2(5) ;  Store function result into stack frame
584 : LD   6, 0(5) ;  Load return address
585 : LDA  7, 0(6) ;  Return to caller
586 : LD   1, 1(5) ;  Load parameter 'n' into R1
587 : ADD  3, 1, 0 ;  Store left operand into temporary register
588 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
589 : ADD  2, 3, 0 ;  Restore left operand
590 : SUB  1, 2, 1 ;  left - right for less-than check
591 : JLT  1, 2(7) ;  If R1 < 0, jump to true
592 : LDC  1, 0(0) ;  false
593 : LDA  7, 1(7) ;  skip setting true
594 : LDC  1, 1(0) ;  true
595 : JEQ  1, 598(0) ;  If condition is false, jump to ELSE
596 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
597 : LDA  7, 618(0) ;  Skip ELSE block
598 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
599 : ADD  3, 1, 0 ;  Store left operand into temporary register
600 : LD   1, 1(5) ;  Load parameter 'n' into R1
601 : ADD  3, 1, 0 ;  Store left operand into temporary register
602 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
603 : ADD  2, 3, 0 ;  Restore left operand
604 : DIV  1, 2, 1 ;  R1 = left / right
605 : LDA 4, 3(5) ; Base of callee frame
606 : ST 1, 1(4) ; Store argument 0 in callee
607 : LDA 4, 3(5) ; Base of callee frame
608 : LDA 6, 612(0) ; Return address
609 : ST 6, 0(4) ; Store return in callee frame
610 : ADD 5, 4, 0 ; Push callee frame
611 : LDA 7, 586(0) ; Call length
612 : LD   1, 2(5) ;  Load function result
613 : LDC   2, 3(0) ;  Caller frame size
614 : SUB   5, 5, 2 ;  Pop back to caller
615 : SUB   4, 4, 2 ;  Pop back to caller
616 : ADD  2, 3, 0 ;  Restore left operand
617 : ADD  1, 2, 1 ;  R1 = left + right
618 : ST   1, 2(5) ;  Store function result into stack frame
619 : LD   6, 0(5) ;  Load return address
620 : LDA  7, 0(6) ;  Return to caller
621 : LD   1, 2(5) ;  Load parameter 'n' into R1
622 : ADD  3, 1, 0 ;  Store left operand into temporary register
623 : LD   1, 1(5) ;  Load parameter 'r' into R1
624 : ADD  3, 1, 0 ;  Store left operand into temporary register
625 : LD   1, 1(5) ;  Load parameter 'r' into R1
626 : ADD  2, 3, 0 ;  Restore left operand
627 : MUL  1, 2, 1 ;  R1 = left * right
628 : ADD  2, 3, 0 ;  Restore left operand
629 : SUB  1, 2, 1 ;  left - right for equality check
630 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
631 : LDC  1, 0(0) ;  false
632 : LDA  7, 1(7) ;  skip setting true
633 : LDC  1, 1(0) ;  true
634 : ST   1, 3(5) ;  Store function result into stack frame
635 : LD   6, 0(5) ;  Load return address
636 : LDA  7, 0(6) ;  Return to caller
637 : LD   1, 1(5) ;  Load parameter 'n' into R1
638 : ADD  3, 1, 0 ;  Store left operand into temporary register
639 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
640 : ADD  3, 1, 0 ;  Store left operand into temporary register
641 : LD   1, 1(5) ;  Load parameter 'n' into R1
642 : ADD  3, 1, 0 ;  Store left operand into temporary register
643 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
644 : ADD  2, 3, 0 ;  Restore left operand
645 : DIV  1, 2, 1 ;  R1 = left / right
646 : ADD  2, 3, 0 ;  Restore left operand
647 : MUL  1, 2, 1 ;  R1 = left * right
648 : ADD  2, 3, 0 ;  Restore left operand
649 : SUB  1, 2, 1 ;  left - right for equality check
650 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
651 : LDC  1, 0(0) ;  false
652 : LDA  7, 1(7) ;  skip setting true
653 : LDC  1, 1(0) ;  true
654 : ST   1, 2(5) ;  Store function result into stack frame
655 : LD   6, 0(5) ;  Load return address
656 : LDA  7, 0(6) ;  Return to caller
657 : LD   1, 4(5) ;  Load parameter 'mid' into R1
658 : ADD  3, 1, 0 ;  Store left operand into temporary register
659 : LD   1, 4(5) ;  Load parameter 'mid' into R1
660 : ADD  2, 3, 0 ;  Restore left operand
661 : MUL  1, 2, 1 ;  R1 = left * right
662 : LDA 4, 4(5) ; Base of callee frame
663 : ST 1, 1(4) ; Store argument 0 in callee
664 : LD   1, 1(5) ;  Load parameter 'n' into R1
665 : LDA 4, 4(5) ; Base of callee frame
666 : ST 1, 2(4) ; Store argument 1 in callee
667 : LDA 4, 4(5) ; Base of callee frame
668 : LDA 6, 672(0) ; Return address
669 : ST 6, 0(4) ; Store return in callee frame
670 : ADD 5, 4, 0 ; Push callee frame
671 : LDA 7, 826(0) ; Call LE
672 : LD   1, 3(5) ;  Load function result
673 : LDC   2, 4(0) ;  Caller frame size
674 : SUB   5, 5, 2 ;  Pop back to caller
675 : SUB   4, 4, 2 ;  Pop back to caller
676 : JEQ  1, 696(0) ;  If condition is false, jump to ELSE
677 : LD   1, 1(5) ;  Load parameter 'n' into R1
678 : LDA 4, 5(5) ; Base of callee frame
679 : ST 1, 1(4) ; Store argument 0 in callee
680 : LD   1, 4(5) ;  Load parameter 'mid' into R1
681 : LDA 4, 5(5) ; Base of callee frame
682 : ST 1, 2(4) ; Store argument 1 in callee
683 : LD   1, 3(5) ;  Load parameter 'high' into R1
684 : LDA 4, 5(5) ; Base of callee frame
685 : ST 1, 3(4) ; Store argument 2 in callee
686 : LDA 4, 5(5) ; Base of callee frame
687 : LDA 6, 691(0) ; Return address
688 : ST 6, 0(4) ; Store return in callee frame
689 : ADD 5, 4, 0 ; Push callee frame
690 : LDA 7, 717(0) ; Call SQRTSEARCH
691 : LD   1, 4(5) ;  Load function result
692 : LDC   2, 5(0) ;  Caller frame size
693 : SUB   5, 5, 2 ;  Pop back to caller
694 : SUB   4, 4, 2 ;  Pop back to caller
695 : LDA  7, 714(0) ;  Skip ELSE block
696 : LD   1, 1(5) ;  Load parameter 'n' into R1
697 : LDA 4, 5(5) ; Base of callee frame
698 : ST 1, 1(4) ; Store argument 0 in callee
699 : LD   1, 2(5) ;  Load parameter 'low' into R1
700 : LDA 4, 5(5) ; Base of callee frame
701 : ST 1, 2(4) ; Store argument 1 in callee
702 : LD   1, 4(5) ;  Load parameter 'mid' into R1
703 : LDA 4, 5(5) ; Base of callee frame
704 : ST 1, 3(4) ; Store argument 2 in callee
705 : LDA 4, 5(5) ; Base of callee frame
706 : LDA 6, 710(0) ; Return address
707 : ST 6, 0(4) ; Store return in callee frame
708 : ADD 5, 4, 0 ; Push callee frame
709 : LDA 7, 717(0) ; Call SQRTSEARCH
710 : LD   1, 4(5) ;  Load function result
711 : LDC   2, 5(0) ;  Caller frame size
712 : SUB   5, 5, 2 ;  Pop back to caller
713 : SUB   4, 4, 2 ;  Pop back to caller
714 : ST   1, 5(5) ;  Store function result into stack frame
715 : LD   6, 0(5) ;  Load return address
716 : LDA  7, 0(6) ;  Return to caller
717 : LD   1, 3(5) ;  Load parameter 'high' into R1
718 : LDA 4, 4(5) ; Base of callee frame
719 : ST 1, 1(4) ; Store argument 0 in callee
720 : LD   1, 2(5) ;  Load parameter 'low' into R1
721 : ADD  3, 1, 0 ;  Store left operand into temporary register
722 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
723 : ADD  2, 3, 0 ;  Restore left operand
724 : ADD  1, 2, 1 ;  R1 = left + right
725 : LDA 4, 4(5) ; Base of callee frame
726 : ST 1, 2(4) ; Store argument 1 in callee
727 : LDA 4, 4(5) ; Base of callee frame
728 : LDA 6, 732(0) ; Return address
729 : ST 6, 0(4) ; Store return in callee frame
730 : ADD 5, 4, 0 ; Push callee frame
731 : LDA 7, 826(0) ; Call LE
732 : LD   1, 3(5) ;  Load function result
733 : LDC   2, 4(0) ;  Caller frame size
734 : SUB   5, 5, 2 ;  Pop back to caller
735 : SUB   4, 4, 2 ;  Pop back to caller
736 : JEQ  1, 773(0) ;  If condition is false, jump to ELSE
737 : LD   1, 1(5) ;  Load parameter 'n' into R1
738 : ADD  3, 1, 0 ;  Store left operand into temporary register
739 : LD   1, 2(5) ;  Load parameter 'low' into R1
740 : ADD  3, 1, 0 ;  Store left operand into temporary register
741 : LD   1, 2(5) ;  Load parameter 'low' into R1
742 : ADD  2, 3, 0 ;  Restore left operand
743 : MUL  1, 2, 1 ;  R1 = left * right
744 : ADD  2, 3, 0 ;  Restore left operand
745 : SUB  1, 2, 1 ;  R1 = left - right
746 : LDA 4, 4(5) ; Base of callee frame
747 : ST 1, 1(4) ; Store argument 0 in callee
748 : LD   1, 3(5) ;  Load parameter 'high' into R1
749 : ADD  3, 1, 0 ;  Store left operand into temporary register
750 : LD   1, 3(5) ;  Load parameter 'high' into R1
751 : ADD  2, 3, 0 ;  Restore left operand
752 : MUL  1, 2, 1 ;  R1 = left * right
753 : ADD  3, 1, 0 ;  Store left operand into temporary register
754 : LD   1, 1(5) ;  Load parameter 'n' into R1
755 : ADD  2, 3, 0 ;  Restore left operand
756 : SUB  1, 2, 1 ;  R1 = left - right
757 : LDA 4, 4(5) ; Base of callee frame
758 : ST 1, 2(4) ; Store argument 1 in callee
759 : LDA 4, 4(5) ; Base of callee frame
760 : LDA 6, 764(0) ; Return address
761 : ST 6, 0(4) ; Store return in callee frame
762 : ADD 5, 4, 0 ; Push callee frame
763 : LDA 7, 826(0) ; Call LE
764 : LD   1, 3(5) ;  Load function result
765 : LDC   2, 4(0) ;  Caller frame size
766 : SUB   5, 5, 2 ;  Pop back to caller
767 : SUB   4, 4, 2 ;  Pop back to caller
768 : JEQ  1, 771(0) ;  If condition is false, jump to ELSE
769 : LD   1, 2(5) ;  Load parameter 'low' into R1
770 : LDA  7, 772(0) ;  Skip ELSE block
771 : LD   1, 3(5) ;  Load parameter 'high' into R1
772 : LDA  7, 802(0) ;  Skip ELSE block
773 : LD   1, 1(5) ;  Load parameter 'n' into R1
774 : LDA 4, 6(5) ; Base of callee frame
775 : ST 1, 1(4) ; Store argument 0 in callee
776 : LD   1, 2(5) ;  Load parameter 'low' into R1
777 : LDA 4, 6(5) ; Base of callee frame
778 : ST 1, 2(4) ; Store argument 1 in callee
779 : LD   1, 3(5) ;  Load parameter 'high' into R1
780 : LDA 4, 6(5) ; Base of callee frame
781 : ST 1, 3(4) ; Store argument 2 in callee
782 : LD   1, 2(5) ;  Load parameter 'low' into R1
783 : ADD  3, 1, 0 ;  Store left operand into temporary register
784 : LD   1, 3(5) ;  Load parameter 'high' into R1
785 : ADD  2, 3, 0 ;  Restore left operand
786 : ADD  1, 2, 1 ;  R1 = left + right
787 : ADD  3, 1, 0 ;  Store left operand into temporary register
788 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
789 : ADD  2, 3, 0 ;  Restore left operand
790 : DIV  1, 2, 1 ;  R1 = left / right
791 : LDA 4, 6(5) ; Base of callee frame
792 : ST 1, 4(4) ; Store argument 3 in callee
793 : LDA 4, 6(5) ; Base of callee frame
794 : LDA 6, 798(0) ; Return address
795 : ST 6, 0(4) ; Store return in callee frame
796 : ADD 5, 4, 0 ; Push callee frame
797 : LDA 7, 657(0) ; Call SQRTSPLIT
798 : LD   1, 5(5) ;  Load function result
799 : LDC   2, 6(0) ;  Caller frame size
800 : SUB   5, 5, 2 ;  Pop back to caller
801 : SUB   4, 4, 2 ;  Pop back to caller
802 : ST   1, 4(5) ;  Store function result into stack frame
803 : LD   6, 0(5) ;  Load return address
804 : LDA  7, 0(6) ;  Return to caller
805 : LD   1, 1(5) ;  Load parameter 'n' into R1
806 : LDA 4, 5(5) ; Base of callee frame
807 : ST 1, 1(4) ; Store argument 0 in callee
808 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
809 : LDA 4, 5(5) ; Base of callee frame
810 : ST 1, 2(4) ; Store argument 1 in callee
811 : LD   1, 1(5) ;  Load parameter 'n' into R1
812 : LDA 4, 5(5) ; Base of callee frame
813 : ST 1, 3(4) ; Store argument 2 in callee
814 : LDA 4, 5(5) ; Base of callee frame
815 : LDA 6, 819(0) ; Return address
816 : ST 6, 0(4) ; Store return in callee frame
817 : ADD 5, 4, 0 ; Push callee frame
818 : LDA 7, 717(0) ; Call SQRTSEARCH
819 : LD   1, 4(5) ;  Load function result
820 : LDC   2, 5(0) ;  Caller frame size
821 : SUB   5, 5, 2 ;  Pop back to caller
822 : SUB   4, 4, 2 ;  Pop back to caller
823 : ST   1, 2(5) ;  Store function result into stack frame
824 : LD   6, 0(5) ;  Load return address
825 : LDA  7, 0(6) ;  Return to caller
826 : LD   1, 1(5) ;  Load parameter 'p' into R1
827 : ADD  3, 1, 0 ;  Store left operand into temporary register
828 : LD   1, 2(5) ;  Load parameter 'q' into R1
829 : ADD  2, 3, 0 ;  Restore left operand
830 : SUB  1, 2, 1 ;  left - right for less-than check
831 : JLT  1, 2(7) ;  If R1 < 0, jump to true
832 : LDC  1, 0(0) ;  false
833 : LDA  7, 1(7) ;  skip setting true
834 : LDC  1, 1(0) ;  true
835 : ADD  3, 1, 0 ;  Store left operand into temporary register
836 : LD   1, 1(5) ;  Load parameter 'p' into R1
837 : ADD  3, 1, 0 ;  Store left operand into temporary register
838 : LD   1, 2(5) ;  Load parameter 'q' into R1
839 : ADD  2, 3, 0 ;  Restore left operand
840 : SUB  1, 2, 1 ;  left - right for equality check
841 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
842 : LDC  1, 0(0) ;  false
843 : LDA  7, 1(7) ;  skip setting true
844 : LDC  1, 1(0) ;  true
845 : ADD  2, 3, 0 ;  Restore left operand
846 : ADD  1, 2, 1 ;  R1 = left OR right
847 : ST   1, 3(5) ;  Store function result into stack frame
848 : LD   6, 0(5) ;  Load return address
849 : LDA  7, 0(6) ;  Return to caller
850 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
851 : ADD  3, 1, 0 ;  Store left operand into temporary register
852 : LD   1, 1(5) ;  Load parameter 'n' into R1
853 : ADD  2, 3, 0 ;  Restore left operand
854 : SUB  1, 2, 1 ;  left - right for less-than check
855 : JLT  1, 2(7) ;  If R1 < 0, jump to true
856 : LDC  1, 0(0) ;  false
857 : LDA  7, 1(7) ;  skip setting true
858 : LDC  1, 1(0) ;  true
859 : JEQ  1, 878(0) ;  If condition is false, jump to ELSE
860 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
861 : ADD  3, 1, 0 ;  Store left operand into temporary register
862 : LD   1, 1(5) ;  Load parameter 'n' into R1
863 : ADD  3, 1, 0 ;  Store left operand into temporary register
864 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
865 : ADD  2, 3, 0 ;  Restore left operand
866 : DIV  1, 2, 1 ;  R1 = left / right
867 : ADD  2, 3, 0 ;  Restore left operand
868 : MUL  1, 2, 1 ;  R1 = left * right
869 : ADD  3, 1, 0 ;  Store left operand into temporary register
870 : LD   1, 1(5) ;  Load parameter 'n' into R1
871 : ADD  2, 3, 0 ;  Restore left operand
872 : SUB  1, 2, 1 ;  left - right for less-than check
873 : JLT  1, 2(7) ;  If R1 < 0, jump to true
874 : LDC  1, 0(0) ;  false
875 : LDA  7, 1(7) ;  skip setting true
876 : LDC  1, 1(0) ;  true
877 : LDA  7, 891(0) ;  Skip ELSE block
878 : LD   1, 1(5) ;  Load parameter 'n' into R1
879 : SUB  1, 0, 1 ;  Negate value in R1
880 : LDA 4, 3(5) ; Base of callee frame
881 : ST 1, 1(4) ; Store argument 0 in callee
882 : LDA 4, 3(5) ; Base of callee frame
883 : LDA 6, 887(0) ; Return address
884 : ST 6, 0(4) ; Store return in callee frame
885 : ADD 5, 4, 0 ; Push callee frame
886 : LDA 7, 850(0) ; Call ODD
887 : LD   1, 2(5) ;  Load function result
888 : LDC   2, 3(0) ;  Caller frame size
889 : SUB   5, 5, 2 ;  Pop back to caller
890 : SUB   4, 4, 2 ;  Pop back to caller
891 : ST   1, 2(5) ;  Store function result into stack frame
892 : LD   6, 0(5) ;  Load return address
893 : LDA  7, 0(6) ;  Return to caller
894 : LD   1, 2(5) ;  Load parameter 'n' into R1
895 : ADD  3, 1, 0 ;  Store left operand into temporary register
896 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
897 : ADD  2, 3, 0 ;  Restore left operand
898 : SUB  1, 2, 1 ;  left - right for equality check
899 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
900 : LDC  1, 0(0) ;  false
901 : LDA  7, 1(7) ;  skip setting true
902 : LDC  1, 1(0) ;  true
903 : JEQ  1, 906(0) ;  If condition is false, jump to ELSE
904 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
905 : LDA  7, 929(0) ;  Skip ELSE block
906 : LD   1, 1(5) ;  Load parameter 'm' into R1
907 : ADD  3, 1, 0 ;  Store left operand into temporary register
908 : LD   1, 1(5) ;  Load parameter 'm' into R1
909 : LDA 4, 4(5) ; Base of callee frame
910 : ST 1, 1(4) ; Store argument 0 in callee
911 : LD   1, 2(5) ;  Load parameter 'n' into R1
912 : ADD  3, 1, 0 ;  Store left operand into temporary register
913 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
914 : ADD  2, 3, 0 ;  Restore left operand
915 : SUB  1, 2, 1 ;  R1 = left - right
916 : LDA 4, 4(5) ; Base of callee frame
917 : ST 1, 2(4) ; Store argument 1 in callee
918 : LDA 4, 4(5) ; Base of callee frame
919 : LDA 6, 923(0) ; Return address
920 : ST 6, 0(4) ; Store return in callee frame
921 : ADD 5, 4, 0 ; Push callee frame
922 : LDA 7, 894(0) ; Call EXP
923 : LD   1, 3(5) ;  Load function result
924 : LDC   2, 4(0) ;  Caller frame size
925 : SUB   5, 5, 2 ;  Pop back to caller
926 : SUB   4, 4, 2 ;  Pop back to caller
927 : ADD  2, 3, 0 ;  Restore left operand
928 : MUL  1, 2, 1 ;  R1 = left * right
929 : ST   1, 3(5) ;  Store function result into stack frame
930 : LD   6, 0(5) ;  Load return address
931 : LDA  7, 0(6) ;  Return to caller
932 : LD   1, 1(5) ;  Load parameter 'm' into R1
933 : ADD  3, 1, 0 ;  Store left operand into temporary register
934 : LD   1, 2(5) ;  Load parameter 'n' into R1
935 : ADD  3, 1, 0 ;  Store left operand into temporary register
936 : LD   1, 1(5) ;  Load parameter 'm' into R1
937 : ADD  3, 1, 0 ;  Store left operand into temporary register
938 : LD   1, 2(5) ;  Load parameter 'n' into R1
939 : ADD  2, 3, 0 ;  Restore left operand
940 : DIV  1, 2, 1 ;  R1 = left / right
941 : ADD  2, 3, 0 ;  Restore left operand
942 : MUL  1, 2, 1 ;  R1 = left * right
943 : ADD  2, 3, 0 ;  Restore left operand
944 : SUB  1, 2, 1 ;  R1 = left - right
945 : ST   1, 3(5) ;  Store function result into stack frame
946 : LD   6, 0(5) ;  Load return address
947 : LDA  7, 0(6) ;  Return to caller
