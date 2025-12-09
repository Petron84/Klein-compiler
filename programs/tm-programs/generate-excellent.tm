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
11 : LDA 4, 4(5) ; Base of callee frame
12 : LDA 4, 4(5) ; Base of callee frame
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LD   1, 1(5) ;  Load parameter 'length' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : DIV  1, 2, 1 ;  R1 = left / right
20 : ADD  3, 1, 0 ;  Store left operand into temporary register
21 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
22 : ADD  2, 3, 0 ;  Restore left operand
23 : SUB  1, 2, 1 ;  R1 = left - right
24 : ST 1, 2(4) ; Store argument 1 in callee
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 814(0) ; Call EXP
29 : LD   1, 3(5) ;  Load function result
30 : LDC   2, 4(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : SUB   4, 4, 2 ;  Pop back to caller
33 : ST 1, 1(4) ; Store argument 0 in callee
34 : LD   1, 1(5) ;  Load parameter 'length' into R1
35 : ADD  3, 1, 0 ;  Store left operand into temporary register
36 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
37 : ADD  2, 3, 0 ;  Restore left operand
38 : DIV  1, 2, 1 ;  R1 = left / right
39 : ST 1, 2(4) ; Store argument 1 in callee
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame
43 : LDA 7, 52(0) ; Call createLoop
44 : LD   1, 3(5) ;  Load function result
45 : LDC   2, 4(0) ;  Caller frame size
46 : SUB   5, 5, 2 ;  Pop back to caller
47 : SUB   4, 4, 2 ;  Pop back to caller
48 : ST 1, 2(5) ; Store result into caller’s frame
49 : LD   1, 2(5) ;  Load return value into register 1
50 : LD  6, 0(5) ;  Load return address for main function into register 6
51 : LDA  7, 0(6) ;  Jump to return address of main function
52 : LDA 4, 5(5) ; Base of callee frame
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ST 1, 1(4) ; Store argument 0 in callee
55 : LD   1, 2(5) ;  Load parameter 'n' into R1
56 : ST 1, 2(4) ; Store argument 1 in callee
57 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
58 : ADD  3, 1, 0 ;  Store left operand into temporary register
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ADD  2, 3, 0 ;  Restore left operand
61 : MUL  1, 2, 1 ;  R1 = left * right
62 : ST 1, 3(4) ; Store argument 2 in callee
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 74(0) ; Call aLoop
67 : LD   1, 4(5) ;  Load function result
68 : LDC   2, 5(0) ;  Caller frame size
69 : SUB   5, 5, 2 ;  Pop back to caller
70 : SUB   4, 4, 2 ;  Pop back to caller
71 : ST   1, 3(5) ;  Store function result into stack frame
72 : LD   6, 0(5) ;  Load return address
73 : LDA  7, 0(6) ;  Return to caller
74 : LD   1, 1(5) ;  Load parameter 'a' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LD   1, 3(5) ;  Load parameter 'upper' into R1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : SUB  1, 2, 1 ;  left - right for less-than check
79 : JLT  1, 2(7) ;  If R1 < 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : JEQ  1, 146(0) ;  If condition is false, jump to ELSE
84 : LDA 4, 6(5) ; Base of callee frame
85 : LD   1, 1(5) ;  Load parameter 'a' into R1
86 : ST 1, 1(4) ; Store argument 0 in callee
87 : LD   1, 2(5) ;  Load parameter 'n' into R1
88 : ST 1, 2(4) ; Store argument 1 in callee
89 : LD   1, 3(5) ;  Load parameter 'upper' into R1
90 : ST 1, 3(4) ; Store argument 2 in callee
91 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
92 : ADD  3, 1, 0 ;  Store left operand into temporary register
93 : LDA 4, 4(5) ; Base of callee frame
94 : LD   1, 1(5) ;  Load parameter 'a' into R1
95 : ST 1, 1(4) ; Store argument 0 in callee
96 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
97 : ST 1, 2(4) ; Store argument 1 in callee
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return in callee frame
100 : ADD 5, 4, 0 ; Push callee frame
101 : LDA 7, 814(0) ; Call EXP
102 : LD   1, 3(5) ;  Load function result
103 : LDC   2, 4(0) ;  Caller frame size
104 : SUB   5, 5, 2 ;  Pop back to caller
105 : SUB   4, 4, 2 ;  Pop back to caller
106 : ADD  2, 3, 0 ;  Restore left operand
107 : MUL  1, 2, 1 ;  R1 = left * right
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDA 4, 4(5) ; Base of callee frame
112 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
113 : ST 1, 1(4) ; Store argument 0 in callee
114 : LD   1, 2(5) ;  Load parameter 'n' into R1
115 : ST 1, 2(4) ; Store argument 1 in callee
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return in callee frame
118 : ADD 5, 4, 0 ; Push callee frame
119 : LDA 7, 814(0) ; Call EXP
120 : LD   1, 3(5) ;  Load function result
121 : LDC   2, 4(0) ;  Caller frame size
122 : SUB   5, 5, 2 ;  Pop back to caller
123 : SUB   4, 4, 2 ;  Pop back to caller
124 : ADD  2, 3, 0 ;  Restore left operand
125 : MUL  1, 2, 1 ;  R1 = left * right
126 : ADD  3, 1, 0 ;  Store left operand into temporary register
127 : LD   1, 1(5) ;  Load parameter 'a' into R1
128 : ADD  2, 3, 0 ;  Restore left operand
129 : MUL  1, 2, 1 ;  R1 = left * right
130 : ADD  2, 3, 0 ;  Restore left operand
131 : ADD  1, 2, 1 ;  R1 = left + right
132 : ADD  3, 1, 0 ;  Store left operand into temporary register
133 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
134 : ADD  2, 3, 0 ;  Restore left operand
135 : ADD  1, 2, 1 ;  R1 = left + right
136 : ST 1, 4(4) ; Store argument 3 in callee
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame
140 : LDA 7, 150(0) ; Call aLoop1
141 : LD   1, 5(5) ;  Load function result
142 : LDC   2, 6(0) ;  Caller frame size
143 : SUB   5, 5, 2 ;  Pop back to caller
144 : SUB   4, 4, 2 ;  Pop back to caller
145 : LDA  7, 147(0) ;  Skip ELSE block
146 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
147 : ST   1, 4(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LDA 4, 7(5) ; Base of callee frame
151 : LD   1, 1(5) ;  Load parameter 'a' into R1
152 : ST 1, 1(4) ; Store argument 0 in callee
153 : LD   1, 2(5) ;  Load parameter 'n' into R1
154 : ST 1, 2(4) ; Store argument 1 in callee
155 : LD   1, 3(5) ;  Load parameter 'upper' into R1
156 : ST 1, 3(4) ; Store argument 2 in callee
157 : LD   1, 4(5) ;  Load parameter 'det' into R1
158 : ST 1, 4(4) ; Store argument 3 in callee
159 : LDA 4, 3(5) ; Base of callee frame
160 : LD   1, 4(5) ;  Load parameter 'det' into R1
161 : ST 1, 1(4) ; Store argument 0 in callee
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return in callee frame
164 : ADD 5, 4, 0 ; Push callee frame
165 : LDA 7, 729(0) ; Call SQRT
166 : LD   1, 2(5) ;  Load function result
167 : LDC   2, 3(0) ;  Caller frame size
168 : SUB   5, 5, 2 ;  Pop back to caller
169 : SUB   4, 4, 2 ;  Pop back to caller
170 : ST 1, 5(4) ; Store argument 4 in callee
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return in callee frame
173 : ADD 5, 4, 0 ; Push callee frame
174 : LDA 7, 182(0) ; Call aLoop2
175 : LD   1, 6(5) ;  Load function result
176 : LDC   2, 7(0) ;  Caller frame size
177 : SUB   5, 5, 2 ;  Pop back to caller
178 : SUB   4, 4, 2 ;  Pop back to caller
179 : ST   1, 5(5) ;  Store function result into stack frame
180 : LD   6, 0(5) ;  Load return address
181 : LDA  7, 0(6) ;  Return to caller
182 : LDA 4, 8(5) ; Base of callee frame
183 : LD   1, 1(5) ;  Load parameter 'a' into R1
184 : ST 1, 1(4) ; Store argument 0 in callee
185 : LD   1, 2(5) ;  Load parameter 'n' into R1
186 : ST 1, 2(4) ; Store argument 1 in callee
187 : LD   1, 3(5) ;  Load parameter 'upper' into R1
188 : ST 1, 3(4) ; Store argument 2 in callee
189 : LD   1, 4(5) ;  Load parameter 'det' into R1
190 : ST 1, 4(4) ; Store argument 3 in callee
191 : LD   1, 5(5) ;  Load parameter 'root' into R1
192 : ST 1, 5(4) ; Store argument 4 in callee
193 : LD   1, 1(5) ;  Load parameter 'a' into R1
194 : ADD  3, 1, 0 ;  Store left operand into temporary register
195 : LDA 4, 4(5) ; Base of callee frame
196 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
197 : ST 1, 1(4) ; Store argument 0 in callee
198 : LD   1, 2(5) ;  Load parameter 'n' into R1
199 : ST 1, 2(4) ; Store argument 1 in callee
200 : LDA 6, 204(0) ; Return address
201 : ST 6, 0(4) ; Store return in callee frame
202 : ADD 5, 4, 0 ; Push callee frame
203 : LDA 7, 814(0) ; Call EXP
204 : LD   1, 3(5) ;  Load function result
205 : LDC   2, 4(0) ;  Caller frame size
206 : SUB   5, 5, 2 ;  Pop back to caller
207 : SUB   4, 4, 2 ;  Pop back to caller
208 : ADD  2, 3, 0 ;  Restore left operand
209 : MUL  1, 2, 1 ;  R1 = left * right
210 : ADD  3, 1, 0 ;  Store left operand into temporary register
211 : LD   1, 5(5) ;  Load parameter 'root' into R1
212 : ADD  3, 1, 0 ;  Store left operand into temporary register
213 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
214 : ADD  2, 3, 0 ;  Restore left operand
215 : ADD  1, 2, 1 ;  R1 = left + right
216 : ADD  3, 1, 0 ;  Store left operand into temporary register
217 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
218 : ADD  2, 3, 0 ;  Restore left operand
219 : DIV  1, 2, 1 ;  R1 = left / right
220 : ADD  2, 3, 0 ;  Restore left operand
221 : ADD  1, 2, 1 ;  R1 = left + right
222 : ST 1, 6(4) ; Store argument 5 in callee
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame
226 : LDA 7, 234(0) ; Call aLoop3
227 : LD   1, 7(5) ;  Load function result
228 : LDC   2, 8(0) ;  Caller frame size
229 : SUB   5, 5, 2 ;  Pop back to caller
230 : SUB   4, 4, 2 ;  Pop back to caller
231 : ST   1, 6(5) ;  Store function result into stack frame
232 : LD   6, 0(5) ;  Load return address
233 : LDA  7, 0(6) ;  Return to caller
234 : LDA 4, 4(5) ; Base of callee frame
235 : LD   1, 5(5) ;  Load parameter 'root' into R1
236 : ST 1, 1(4) ; Store argument 0 in callee
237 : LD   1, 4(5) ;  Load parameter 'det' into R1
238 : ST 1, 2(4) ; Store argument 1 in callee
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return in callee frame
241 : ADD 5, 4, 0 ; Push callee frame
242 : LDA 7, 561(0) ; Call ISROOT
243 : LD   1, 3(5) ;  Load function result
244 : LDC   2, 4(0) ;  Caller frame size
245 : SUB   5, 5, 2 ;  Pop back to caller
246 : SUB   4, 4, 2 ;  Pop back to caller
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LDA 4, 3(5) ; Base of callee frame
249 : LD   1, 5(5) ;  Load parameter 'root' into R1
250 : ADD  3, 1, 0 ;  Store left operand into temporary register
251 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
252 : ADD  2, 3, 0 ;  Restore left operand
253 : ADD  1, 2, 1 ;  R1 = left + right
254 : ST 1, 1(4) ; Store argument 0 in callee
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return in callee frame
257 : ADD 5, 4, 0 ; Push callee frame
258 : LDA 7, 577(0) ; Call EVEN
259 : LD   1, 2(5) ;  Load function result
260 : LDC   2, 3(0) ;  Caller frame size
261 : SUB   5, 5, 2 ;  Pop back to caller
262 : SUB   4, 4, 2 ;  Pop back to caller
263 : ADD  2, 3, 0 ;  Restore left operand
264 : MUL  1, 2, 1 ;  R1 = left AND right
265 : ADD  3, 1, 0 ;  Store left operand into temporary register
266 : LDA 4, 3(5) ; Base of callee frame
267 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
268 : ST 1, 1(4) ; Store argument 0 in callee
269 : LDA 6, 273(0) ; Return address
270 : ST 6, 0(4) ; Store return in callee frame
271 : ADD 5, 4, 0 ; Push callee frame
272 : LDA 7, 351(0) ; Call isExcellent
273 : LD   1, 2(5) ;  Load function result
274 : LDC   2, 3(0) ;  Caller frame size
275 : SUB   5, 5, 2 ;  Pop back to caller
276 : SUB   4, 4, 2 ;  Pop back to caller
277 : ADD  2, 3, 0 ;  Restore left operand
278 : MUL  1, 2, 1 ;  R1 = left AND right
279 : JEQ  1, 298(0) ;  If condition is false, jump to ELSE
280 : LDA 4, 6(5) ; Base of callee frame
281 : LD   1, 1(5) ;  Load parameter 'a' into R1
282 : ST 1, 1(4) ; Store argument 0 in callee
283 : LD   1, 2(5) ;  Load parameter 'n' into R1
284 : ST 1, 2(4) ; Store argument 1 in callee
285 : LD   1, 3(5) ;  Load parameter 'upper' into R1
286 : ST 1, 3(4) ; Store argument 2 in callee
287 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
288 : ST 1, 4(4) ; Store argument 3 in callee
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return in callee frame
291 : ADD 5, 4, 0 ; Push callee frame
292 : LDA 7, 320(0) ; Call printCandidateAndContinue
293 : LD   1, 5(5) ;  Load function result
294 : LDC   2, 6(0) ;  Caller frame size
295 : SUB   5, 5, 2 ;  Pop back to caller
296 : SUB   4, 4, 2 ;  Pop back to caller
297 : LDA  7, 317(0) ;  Skip ELSE block
298 : LDA 4, 5(5) ; Base of callee frame
299 : LD   1, 1(5) ;  Load parameter 'a' into R1
300 : ADD  3, 1, 0 ;  Store left operand into temporary register
301 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
302 : ADD  2, 3, 0 ;  Restore left operand
303 : ADD  1, 2, 1 ;  R1 = left + right
304 : ST 1, 1(4) ; Store argument 0 in callee
305 : LD   1, 2(5) ;  Load parameter 'n' into R1
306 : ST 1, 2(4) ; Store argument 1 in callee
307 : LD   1, 3(5) ;  Load parameter 'upper' into R1
308 : ST 1, 3(4) ; Store argument 2 in callee
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame
312 : LDA 7, 74(0) ; Call aLoop
313 : LD   1, 4(5) ;  Load function result
314 : LDC   2, 5(0) ;  Caller frame size
315 : SUB   5, 5, 2 ;  Pop back to caller
316 : SUB   4, 4, 2 ;  Pop back to caller
317 : ST   1, 7(5) ;  Store function result into stack frame
318 : LD   6, 0(5) ;  Load return address
319 : LDA  7, 0(6) ;  Return to caller
320 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
321 : LDA 4, 3(5) ; Base of callee frame
322 : LDA 6, 326(0) ; Return address
323 : ST 6, 0(4) ; Store return addr in callee frame
324 : ADD 5, 4, 0 ; Push new frame
325 : LDA 7, 8(0) ; Call print
326 : LDC 2, 3(0) ; Caller frame size
327 : SUB 5, 5, 2 ; Pop frame
328 : ST   1, 5(5) ;  Store function result into stack frame
329 : LDA 4, 5(5) ; Base of callee frame
330 : LD   1, 1(5) ;  Load parameter 'a' into R1
331 : ADD  3, 1, 0 ;  Store left operand into temporary register
332 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
333 : ADD  2, 3, 0 ;  Restore left operand
334 : ADD  1, 2, 1 ;  R1 = left + right
335 : ST 1, 1(4) ; Store argument 0 in callee
336 : LD   1, 2(5) ;  Load parameter 'n' into R1
337 : ST 1, 2(4) ; Store argument 1 in callee
338 : LD   1, 3(5) ;  Load parameter 'upper' into R1
339 : ST 1, 3(4) ; Store argument 2 in callee
340 : LDA 6, 344(0) ; Return address
341 : ST 6, 0(4) ; Store return in callee frame
342 : ADD 5, 4, 0 ; Push callee frame
343 : LDA 7, 74(0) ; Call aLoop
344 : LD   1, 4(5) ;  Load function result
345 : LDC   2, 5(0) ;  Caller frame size
346 : SUB   5, 5, 2 ;  Pop back to caller
347 : SUB   4, 4, 2 ;  Pop back to caller
348 : ST   1, 5(5) ;  Store function result into stack frame
349 : LD   6, 0(5) ;  Load return address
350 : LDA  7, 0(6) ;  Return to caller
351 : LDA 4, 4(5) ; Base of callee frame
352 : LD   1, 1(5) ;  Load parameter 'n' into R1
353 : ST 1, 1(4) ; Store argument 0 in callee
354 : LDA 4, 3(5) ; Base of callee frame
355 : LD   1, 1(5) ;  Load parameter 'n' into R1
356 : ST 1, 1(4) ; Store argument 0 in callee
357 : LDA 6, 361(0) ; Return address
358 : ST 6, 0(4) ; Store return in callee frame
359 : ADD 5, 4, 0 ; Push callee frame
360 : LDA 7, 527(0) ; Call length
361 : LD   1, 2(5) ;  Load function result
362 : LDC   2, 3(0) ;  Caller frame size
363 : SUB   5, 5, 2 ;  Pop back to caller
364 : SUB   4, 4, 2 ;  Pop back to caller
365 : ST 1, 2(4) ; Store argument 1 in callee
366 : LDA 6, 370(0) ; Return address
367 : ST 6, 0(4) ; Store return in callee frame
368 : ADD 5, 4, 0 ; Push callee frame
369 : LDA 7, 377(0) ; Call isExcellentSwitch
370 : LD   1, 3(5) ;  Load function result
371 : LDC   2, 4(0) ;  Caller frame size
372 : SUB   5, 5, 2 ;  Pop back to caller
373 : SUB   4, 4, 2 ;  Pop back to caller
374 : ST   1, 2(5) ;  Store function result into stack frame
375 : LD   6, 0(5) ;  Load return address
376 : LDA  7, 0(6) ;  Return to caller
377 : LDA 4, 3(5) ; Base of callee frame
378 : LD   1, 2(5) ;  Load parameter 'length' into R1
379 : ST 1, 1(4) ; Store argument 0 in callee
380 : LDA 6, 384(0) ; Return address
381 : ST 6, 0(4) ; Store return in callee frame
382 : ADD 5, 4, 0 ; Push callee frame
383 : LDA 7, 771(0) ; Call ODD
384 : LD   1, 2(5) ;  Load function result
385 : LDC   2, 3(0) ;  Caller frame size
386 : SUB   5, 5, 2 ;  Pop back to caller
387 : SUB   4, 4, 2 ;  Pop back to caller
388 : JEQ  1, 391(0) ;  If condition is false, jump to ELSE
389 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
390 : LDA  7, 432(0) ;  Skip ELSE block
391 : LD   1, 1(5) ;  Load parameter 'n' into R1
392 : ADD  3, 1, 0 ;  Store left operand into temporary register
393 : LDA 4, 4(5) ; Base of callee frame
394 : LDA 4, 3(5) ; Base of callee frame
395 : LD   1, 1(5) ;  Load parameter 'n' into R1
396 : ST 1, 1(4) ; Store argument 0 in callee
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return in callee frame
399 : ADD 5, 4, 0 ; Push callee frame
400 : LDA 7, 493(0) ; Call a
401 : LD   1, 2(5) ;  Load function result
402 : LDC   2, 3(0) ;  Caller frame size
403 : SUB   5, 5, 2 ;  Pop back to caller
404 : SUB   4, 4, 2 ;  Pop back to caller
405 : ST 1, 1(4) ; Store argument 0 in callee
406 : LDA 4, 3(5) ; Base of callee frame
407 : LD   1, 1(5) ;  Load parameter 'n' into R1
408 : ST 1, 1(4) ; Store argument 0 in callee
409 : LDA 6, 413(0) ; Return address
410 : ST 6, 0(4) ; Store return in callee frame
411 : ADD 5, 4, 0 ; Push callee frame
412 : LDA 7, 451(0) ; Call b
413 : LD   1, 2(5) ;  Load function result
414 : LDC   2, 3(0) ;  Caller frame size
415 : SUB   5, 5, 2 ;  Pop back to caller
416 : SUB   4, 4, 2 ;  Pop back to caller
417 : ST 1, 2(4) ; Store argument 1 in callee
418 : LDA 6, 422(0) ; Return address
419 : ST 6, 0(4) ; Store return in callee frame
420 : ADD 5, 4, 0 ; Push callee frame
421 : LDA 7, 435(0) ; Call excellentDiff
422 : LD   1, 3(5) ;  Load function result
423 : LDC   2, 4(0) ;  Caller frame size
424 : SUB   5, 5, 2 ;  Pop back to caller
425 : SUB   4, 4, 2 ;  Pop back to caller
426 : ADD  2, 3, 0 ;  Restore left operand
427 : SUB  1, 2, 1 ;  left - right for equality check
428 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
429 : LDC  1, 0(0) ;  false
430 : LDA  7, 1(7) ;  skip setting true
431 : LDC  1, 1(0) ;  true
432 : ST   1, 3(5) ;  Store function result into stack frame
433 : LD   6, 0(5) ;  Load return address
434 : LDA  7, 0(6) ;  Return to caller
435 : LD   1, 2(5) ;  Load parameter 'b' into R1
436 : ADD  3, 1, 0 ;  Store left operand into temporary register
437 : LD   1, 2(5) ;  Load parameter 'b' into R1
438 : ADD  2, 3, 0 ;  Restore left operand
439 : MUL  1, 2, 1 ;  R1 = left * right
440 : ADD  3, 1, 0 ;  Store left operand into temporary register
441 : LD   1, 1(5) ;  Load parameter 'a' into R1
442 : ADD  3, 1, 0 ;  Store left operand into temporary register
443 : LD   1, 1(5) ;  Load parameter 'a' into R1
444 : ADD  2, 3, 0 ;  Restore left operand
445 : MUL  1, 2, 1 ;  R1 = left * right
446 : ADD  2, 3, 0 ;  Restore left operand
447 : SUB  1, 2, 1 ;  R1 = left - right
448 : ST   1, 3(5) ;  Store function result into stack frame
449 : LD   6, 0(5) ;  Load return address
450 : LDA  7, 0(6) ;  Return to caller
451 : LDA 4, 4(5) ; Base of callee frame
452 : LD   1, 1(5) ;  Load parameter 'n' into R1
453 : ST 1, 1(4) ; Store argument 0 in callee
454 : LDA 4, 4(5) ; Base of callee frame
455 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
456 : ST 1, 1(4) ; Store argument 0 in callee
457 : LDA 4, 3(5) ; Base of callee frame
458 : LD   1, 1(5) ;  Load parameter 'n' into R1
459 : ST 1, 1(4) ; Store argument 0 in callee
460 : LDA 6, 464(0) ; Return address
461 : ST 6, 0(4) ; Store return in callee frame
462 : ADD 5, 4, 0 ; Push callee frame
463 : LDA 7, 527(0) ; Call length
464 : LD   1, 2(5) ;  Load function result
465 : LDC   2, 3(0) ;  Caller frame size
466 : SUB   5, 5, 2 ;  Pop back to caller
467 : SUB   4, 4, 2 ;  Pop back to caller
468 : ADD  3, 1, 0 ;  Store left operand into temporary register
469 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
470 : ADD  2, 3, 0 ;  Restore left operand
471 : DIV  1, 2, 1 ;  R1 = left / right
472 : ST 1, 2(4) ; Store argument 1 in callee
473 : LDA 6, 477(0) ; Return address
474 : ST 6, 0(4) ; Store return in callee frame
475 : ADD 5, 4, 0 ; Push callee frame
476 : LDA 7, 814(0) ; Call EXP
477 : LD   1, 3(5) ;  Load function result
478 : LDC   2, 4(0) ;  Caller frame size
479 : SUB   5, 5, 2 ;  Pop back to caller
480 : SUB   4, 4, 2 ;  Pop back to caller
481 : ST 1, 2(4) ; Store argument 1 in callee
482 : LDA 6, 486(0) ; Return address
483 : ST 6, 0(4) ; Store return in callee frame
484 : ADD 5, 4, 0 ; Push callee frame
485 : LDA 7, 850(0) ; Call MOD
486 : LD   1, 3(5) ;  Load function result
487 : LDC   2, 4(0) ;  Caller frame size
488 : SUB   5, 5, 2 ;  Pop back to caller
489 : SUB   4, 4, 2 ;  Pop back to caller
490 : ST   1, 2(5) ;  Store function result into stack frame
491 : LD   6, 0(5) ;  Load return address
492 : LDA  7, 0(6) ;  Return to caller
493 : LD   1, 1(5) ;  Load parameter 'n' into R1
494 : ADD  3, 1, 0 ;  Store left operand into temporary register
495 : LDA 4, 4(5) ; Base of callee frame
496 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
497 : ST 1, 1(4) ; Store argument 0 in callee
498 : LDA 4, 3(5) ; Base of callee frame
499 : LD   1, 1(5) ;  Load parameter 'n' into R1
500 : ST 1, 1(4) ; Store argument 0 in callee
501 : LDA 6, 505(0) ; Return address
502 : ST 6, 0(4) ; Store return in callee frame
503 : ADD 5, 4, 0 ; Push callee frame
504 : LDA 7, 527(0) ; Call length
505 : LD   1, 2(5) ;  Load function result
506 : LDC   2, 3(0) ;  Caller frame size
507 : SUB   5, 5, 2 ;  Pop back to caller
508 : SUB   4, 4, 2 ;  Pop back to caller
509 : ADD  3, 1, 0 ;  Store left operand into temporary register
510 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
511 : ADD  2, 3, 0 ;  Restore left operand
512 : DIV  1, 2, 1 ;  R1 = left / right
513 : ST 1, 2(4) ; Store argument 1 in callee
514 : LDA 6, 518(0) ; Return address
515 : ST 6, 0(4) ; Store return in callee frame
516 : ADD 5, 4, 0 ; Push callee frame
517 : LDA 7, 814(0) ; Call EXP
518 : LD   1, 3(5) ;  Load function result
519 : LDC   2, 4(0) ;  Caller frame size
520 : SUB   5, 5, 2 ;  Pop back to caller
521 : SUB   4, 4, 2 ;  Pop back to caller
522 : ADD  2, 3, 0 ;  Restore left operand
523 : DIV  1, 2, 1 ;  R1 = left / right
524 : ST   1, 2(5) ;  Store function result into stack frame
525 : LD   6, 0(5) ;  Load return address
526 : LDA  7, 0(6) ;  Return to caller
527 : LD   1, 1(5) ;  Load parameter 'n' into R1
528 : ADD  3, 1, 0 ;  Store left operand into temporary register
529 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
530 : ADD  2, 3, 0 ;  Restore left operand
531 : SUB  1, 2, 1 ;  left - right for less-than check
532 : JLT  1, 2(7) ;  If R1 < 0, jump to true
533 : LDC  1, 0(0) ;  false
534 : LDA  7, 1(7) ;  skip setting true
535 : LDC  1, 1(0) ;  true
536 : JEQ  1, 539(0) ;  If condition is false, jump to ELSE
537 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
538 : LDA  7, 558(0) ;  Skip ELSE block
539 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
540 : ADD  3, 1, 0 ;  Store left operand into temporary register
541 : LDA 4, 3(5) ; Base of callee frame
542 : LD   1, 1(5) ;  Load parameter 'n' into R1
543 : ADD  3, 1, 0 ;  Store left operand into temporary register
544 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
545 : ADD  2, 3, 0 ;  Restore left operand
546 : DIV  1, 2, 1 ;  R1 = left / right
547 : ST 1, 1(4) ; Store argument 0 in callee
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return in callee frame
550 : ADD 5, 4, 0 ; Push callee frame
551 : LDA 7, 527(0) ; Call length
552 : LD   1, 2(5) ;  Load function result
553 : LDC   2, 3(0) ;  Caller frame size
554 : SUB   5, 5, 2 ;  Pop back to caller
555 : SUB   4, 4, 2 ;  Pop back to caller
556 : ADD  2, 3, 0 ;  Restore left operand
557 : ADD  1, 2, 1 ;  R1 = left + right
558 : ST   1, 2(5) ;  Store function result into stack frame
559 : LD   6, 0(5) ;  Load return address
560 : LDA  7, 0(6) ;  Return to caller
561 : LD   1, 2(5) ;  Load parameter 'n' into R1
562 : ADD  3, 1, 0 ;  Store left operand into temporary register
563 : LD   1, 1(5) ;  Load parameter 'r' into R1
564 : ADD  3, 1, 0 ;  Store left operand into temporary register
565 : LD   1, 1(5) ;  Load parameter 'r' into R1
566 : ADD  2, 3, 0 ;  Restore left operand
567 : MUL  1, 2, 1 ;  R1 = left * right
568 : ADD  2, 3, 0 ;  Restore left operand
569 : SUB  1, 2, 1 ;  left - right for equality check
570 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
571 : LDC  1, 0(0) ;  false
572 : LDA  7, 1(7) ;  skip setting true
573 : LDC  1, 1(0) ;  true
574 : ST   1, 3(5) ;  Store function result into stack frame
575 : LD   6, 0(5) ;  Load return address
576 : LDA  7, 0(6) ;  Return to caller
577 : LD   1, 1(5) ;  Load parameter 'n' into R1
578 : ADD  3, 1, 0 ;  Store left operand into temporary register
579 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
580 : ADD  3, 1, 0 ;  Store left operand into temporary register
581 : LD   1, 1(5) ;  Load parameter 'n' into R1
582 : ADD  3, 1, 0 ;  Store left operand into temporary register
583 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
584 : ADD  2, 3, 0 ;  Restore left operand
585 : DIV  1, 2, 1 ;  R1 = left / right
586 : ADD  2, 3, 0 ;  Restore left operand
587 : MUL  1, 2, 1 ;  R1 = left * right
588 : ADD  2, 3, 0 ;  Restore left operand
589 : SUB  1, 2, 1 ;  left - right for equality check
590 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
591 : LDC  1, 0(0) ;  false
592 : LDA  7, 1(7) ;  skip setting true
593 : LDC  1, 1(0) ;  true
594 : ST   1, 2(5) ;  Store function result into stack frame
595 : LD   6, 0(5) ;  Load return address
596 : LDA  7, 0(6) ;  Return to caller
597 : LDA 4, 4(5) ; Base of callee frame
598 : LD   1, 4(5) ;  Load parameter 'mid' into R1
599 : ADD  3, 1, 0 ;  Store left operand into temporary register
600 : LD   1, 4(5) ;  Load parameter 'mid' into R1
601 : ADD  2, 3, 0 ;  Restore left operand
602 : MUL  1, 2, 1 ;  R1 = left * right
603 : ST 1, 1(4) ; Store argument 0 in callee
604 : LD   1, 1(5) ;  Load parameter 'n' into R1
605 : ST 1, 2(4) ; Store argument 1 in callee
606 : LDA 6, 610(0) ; Return address
607 : ST 6, 0(4) ; Store return in callee frame
608 : ADD 5, 4, 0 ; Push callee frame
609 : LDA 7, 747(0) ; Call LE
610 : LD   1, 3(5) ;  Load function result
611 : LDC   2, 4(0) ;  Caller frame size
612 : SUB   5, 5, 2 ;  Pop back to caller
613 : SUB   4, 4, 2 ;  Pop back to caller
614 : JEQ  1, 631(0) ;  If condition is false, jump to ELSE
615 : LDA 4, 5(5) ; Base of callee frame
616 : LD   1, 1(5) ;  Load parameter 'n' into R1
617 : ST 1, 1(4) ; Store argument 0 in callee
618 : LD   1, 4(5) ;  Load parameter 'mid' into R1
619 : ST 1, 2(4) ; Store argument 1 in callee
620 : LD   1, 3(5) ;  Load parameter 'high' into R1
621 : ST 1, 3(4) ; Store argument 2 in callee
622 : LDA 6, 626(0) ; Return address
623 : ST 6, 0(4) ; Store return in callee frame
624 : ADD 5, 4, 0 ; Push callee frame
625 : LDA 7, 649(0) ; Call SQRTSEARCH
626 : LD   1, 4(5) ;  Load function result
627 : LDC   2, 5(0) ;  Caller frame size
628 : SUB   5, 5, 2 ;  Pop back to caller
629 : SUB   4, 4, 2 ;  Pop back to caller
630 : LDA  7, 646(0) ;  Skip ELSE block
631 : LDA 4, 5(5) ; Base of callee frame
632 : LD   1, 1(5) ;  Load parameter 'n' into R1
633 : ST 1, 1(4) ; Store argument 0 in callee
634 : LD   1, 2(5) ;  Load parameter 'low' into R1
635 : ST 1, 2(4) ; Store argument 1 in callee
636 : LD   1, 4(5) ;  Load parameter 'mid' into R1
637 : ST 1, 3(4) ; Store argument 2 in callee
638 : LDA 6, 642(0) ; Return address
639 : ST 6, 0(4) ; Store return in callee frame
640 : ADD 5, 4, 0 ; Push callee frame
641 : LDA 7, 649(0) ; Call SQRTSEARCH
642 : LD   1, 4(5) ;  Load function result
643 : LDC   2, 5(0) ;  Caller frame size
644 : SUB   5, 5, 2 ;  Pop back to caller
645 : SUB   4, 4, 2 ;  Pop back to caller
646 : ST   1, 5(5) ;  Store function result into stack frame
647 : LD   6, 0(5) ;  Load return address
648 : LDA  7, 0(6) ;  Return to caller
649 : LDA 4, 4(5) ; Base of callee frame
650 : LD   1, 3(5) ;  Load parameter 'high' into R1
651 : ST 1, 1(4) ; Store argument 0 in callee
652 : LD   1, 2(5) ;  Load parameter 'low' into R1
653 : ADD  3, 1, 0 ;  Store left operand into temporary register
654 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
655 : ADD  2, 3, 0 ;  Restore left operand
656 : ADD  1, 2, 1 ;  R1 = left + right
657 : ST 1, 2(4) ; Store argument 1 in callee
658 : LDA 6, 662(0) ; Return address
659 : ST 6, 0(4) ; Store return in callee frame
660 : ADD 5, 4, 0 ; Push callee frame
661 : LDA 7, 747(0) ; Call LE
662 : LD   1, 3(5) ;  Load function result
663 : LDC   2, 4(0) ;  Caller frame size
664 : SUB   5, 5, 2 ;  Pop back to caller
665 : SUB   4, 4, 2 ;  Pop back to caller
666 : JEQ  1, 701(0) ;  If condition is false, jump to ELSE
667 : LDA 4, 4(5) ; Base of callee frame
668 : LD   1, 1(5) ;  Load parameter 'n' into R1
669 : ADD  3, 1, 0 ;  Store left operand into temporary register
670 : LD   1, 2(5) ;  Load parameter 'low' into R1
671 : ADD  3, 1, 0 ;  Store left operand into temporary register
672 : LD   1, 2(5) ;  Load parameter 'low' into R1
673 : ADD  2, 3, 0 ;  Restore left operand
674 : MUL  1, 2, 1 ;  R1 = left * right
675 : ADD  2, 3, 0 ;  Restore left operand
676 : SUB  1, 2, 1 ;  R1 = left - right
677 : ST 1, 1(4) ; Store argument 0 in callee
678 : LD   1, 3(5) ;  Load parameter 'high' into R1
679 : ADD  3, 1, 0 ;  Store left operand into temporary register
680 : LD   1, 3(5) ;  Load parameter 'high' into R1
681 : ADD  2, 3, 0 ;  Restore left operand
682 : MUL  1, 2, 1 ;  R1 = left * right
683 : ADD  3, 1, 0 ;  Store left operand into temporary register
684 : LD   1, 1(5) ;  Load parameter 'n' into R1
685 : ADD  2, 3, 0 ;  Restore left operand
686 : SUB  1, 2, 1 ;  R1 = left - right
687 : ST 1, 2(4) ; Store argument 1 in callee
688 : LDA 6, 692(0) ; Return address
689 : ST 6, 0(4) ; Store return in callee frame
690 : ADD 5, 4, 0 ; Push callee frame
691 : LDA 7, 747(0) ; Call LE
692 : LD   1, 3(5) ;  Load function result
693 : LDC   2, 4(0) ;  Caller frame size
694 : SUB   5, 5, 2 ;  Pop back to caller
695 : SUB   4, 4, 2 ;  Pop back to caller
696 : JEQ  1, 699(0) ;  If condition is false, jump to ELSE
697 : LD   1, 2(5) ;  Load parameter 'low' into R1
698 : LDA  7, 700(0) ;  Skip ELSE block
699 : LD   1, 3(5) ;  Load parameter 'high' into R1
700 : LDA  7, 726(0) ;  Skip ELSE block
701 : LDA 4, 6(5) ; Base of callee frame
702 : LD   1, 1(5) ;  Load parameter 'n' into R1
703 : ST 1, 1(4) ; Store argument 0 in callee
704 : LD   1, 2(5) ;  Load parameter 'low' into R1
705 : ST 1, 2(4) ; Store argument 1 in callee
706 : LD   1, 3(5) ;  Load parameter 'high' into R1
707 : ST 1, 3(4) ; Store argument 2 in callee
708 : LD   1, 2(5) ;  Load parameter 'low' into R1
709 : ADD  3, 1, 0 ;  Store left operand into temporary register
710 : LD   1, 3(5) ;  Load parameter 'high' into R1
711 : ADD  2, 3, 0 ;  Restore left operand
712 : ADD  1, 2, 1 ;  R1 = left + right
713 : ADD  3, 1, 0 ;  Store left operand into temporary register
714 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
715 : ADD  2, 3, 0 ;  Restore left operand
716 : DIV  1, 2, 1 ;  R1 = left / right
717 : ST 1, 4(4) ; Store argument 3 in callee
718 : LDA 6, 722(0) ; Return address
719 : ST 6, 0(4) ; Store return in callee frame
720 : ADD 5, 4, 0 ; Push callee frame
721 : LDA 7, 597(0) ; Call SQRTSPLIT
722 : LD   1, 5(5) ;  Load function result
723 : LDC   2, 6(0) ;  Caller frame size
724 : SUB   5, 5, 2 ;  Pop back to caller
725 : SUB   4, 4, 2 ;  Pop back to caller
726 : ST   1, 4(5) ;  Store function result into stack frame
727 : LD   6, 0(5) ;  Load return address
728 : LDA  7, 0(6) ;  Return to caller
729 : LDA 4, 5(5) ; Base of callee frame
730 : LD   1, 1(5) ;  Load parameter 'n' into R1
731 : ST 1, 1(4) ; Store argument 0 in callee
732 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
733 : ST 1, 2(4) ; Store argument 1 in callee
734 : LD   1, 1(5) ;  Load parameter 'n' into R1
735 : ST 1, 3(4) ; Store argument 2 in callee
736 : LDA 6, 740(0) ; Return address
737 : ST 6, 0(4) ; Store return in callee frame
738 : ADD 5, 4, 0 ; Push callee frame
739 : LDA 7, 649(0) ; Call SQRTSEARCH
740 : LD   1, 4(5) ;  Load function result
741 : LDC   2, 5(0) ;  Caller frame size
742 : SUB   5, 5, 2 ;  Pop back to caller
743 : SUB   4, 4, 2 ;  Pop back to caller
744 : ST   1, 2(5) ;  Store function result into stack frame
745 : LD   6, 0(5) ;  Load return address
746 : LDA  7, 0(6) ;  Return to caller
747 : LD   1, 1(5) ;  Load parameter 'p' into R1
748 : ADD  3, 1, 0 ;  Store left operand into temporary register
749 : LD   1, 2(5) ;  Load parameter 'q' into R1
750 : ADD  2, 3, 0 ;  Restore left operand
751 : SUB  1, 2, 1 ;  left - right for less-than check
752 : JLT  1, 2(7) ;  If R1 < 0, jump to true
753 : LDC  1, 0(0) ;  false
754 : LDA  7, 1(7) ;  skip setting true
755 : LDC  1, 1(0) ;  true
756 : ADD  3, 1, 0 ;  Store left operand into temporary register
757 : LD   1, 1(5) ;  Load parameter 'p' into R1
758 : ADD  3, 1, 0 ;  Store left operand into temporary register
759 : LD   1, 2(5) ;  Load parameter 'q' into R1
760 : ADD  2, 3, 0 ;  Restore left operand
761 : SUB  1, 2, 1 ;  left - right for equality check
762 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
763 : LDC  1, 0(0) ;  false
764 : LDA  7, 1(7) ;  skip setting true
765 : LDC  1, 1(0) ;  true
766 : ADD  2, 3, 0 ;  Restore left operand
767 : ADD  1, 2, 1 ;  R1 = left OR right
768 : ST   1, 3(5) ;  Store function result into stack frame
769 : LD   6, 0(5) ;  Load return address
770 : LDA  7, 0(6) ;  Return to caller
771 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
772 : ADD  3, 1, 0 ;  Store left operand into temporary register
773 : LD   1, 1(5) ;  Load parameter 'n' into R1
774 : ADD  2, 3, 0 ;  Restore left operand
775 : SUB  1, 2, 1 ;  left - right for less-than check
776 : JLT  1, 2(7) ;  If R1 < 0, jump to true
777 : LDC  1, 0(0) ;  false
778 : LDA  7, 1(7) ;  skip setting true
779 : LDC  1, 1(0) ;  true
780 : JEQ  1, 799(0) ;  If condition is false, jump to ELSE
781 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
782 : ADD  3, 1, 0 ;  Store left operand into temporary register
783 : LD   1, 1(5) ;  Load parameter 'n' into R1
784 : ADD  3, 1, 0 ;  Store left operand into temporary register
785 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
786 : ADD  2, 3, 0 ;  Restore left operand
787 : DIV  1, 2, 1 ;  R1 = left / right
788 : ADD  2, 3, 0 ;  Restore left operand
789 : MUL  1, 2, 1 ;  R1 = left * right
790 : ADD  3, 1, 0 ;  Store left operand into temporary register
791 : LD   1, 1(5) ;  Load parameter 'n' into R1
792 : ADD  2, 3, 0 ;  Restore left operand
793 : SUB  1, 2, 1 ;  left - right for less-than check
794 : JLT  1, 2(7) ;  If R1 < 0, jump to true
795 : LDC  1, 0(0) ;  false
796 : LDA  7, 1(7) ;  skip setting true
797 : LDC  1, 1(0) ;  true
798 : LDA  7, 811(0) ;  Skip ELSE block
799 : LDA 4, 3(5) ; Base of callee frame
800 : LD   1, 1(5) ;  Load parameter 'n' into R1
801 : SUB  1, 0, 1 ;  Negate value in R1
802 : ST 1, 1(4) ; Store argument 0 in callee
803 : LDA 6, 807(0) ; Return address
804 : ST 6, 0(4) ; Store return in callee frame
805 : ADD 5, 4, 0 ; Push callee frame
806 : LDA 7, 771(0) ; Call ODD
807 : LD   1, 2(5) ;  Load function result
808 : LDC   2, 3(0) ;  Caller frame size
809 : SUB   5, 5, 2 ;  Pop back to caller
810 : SUB   4, 4, 2 ;  Pop back to caller
811 : ST   1, 2(5) ;  Store function result into stack frame
812 : LD   6, 0(5) ;  Load return address
813 : LDA  7, 0(6) ;  Return to caller
814 : LD   1, 2(5) ;  Load parameter 'n' into R1
815 : ADD  3, 1, 0 ;  Store left operand into temporary register
816 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
817 : ADD  2, 3, 0 ;  Restore left operand
818 : SUB  1, 2, 1 ;  left - right for equality check
819 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
820 : LDC  1, 0(0) ;  false
821 : LDA  7, 1(7) ;  skip setting true
822 : LDC  1, 1(0) ;  true
823 : JEQ  1, 826(0) ;  If condition is false, jump to ELSE
824 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
825 : LDA  7, 847(0) ;  Skip ELSE block
826 : LD   1, 1(5) ;  Load parameter 'm' into R1
827 : ADD  3, 1, 0 ;  Store left operand into temporary register
828 : LDA 4, 4(5) ; Base of callee frame
829 : LD   1, 1(5) ;  Load parameter 'm' into R1
830 : ST 1, 1(4) ; Store argument 0 in callee
831 : LD   1, 2(5) ;  Load parameter 'n' into R1
832 : ADD  3, 1, 0 ;  Store left operand into temporary register
833 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
834 : ADD  2, 3, 0 ;  Restore left operand
835 : SUB  1, 2, 1 ;  R1 = left - right
836 : ST 1, 2(4) ; Store argument 1 in callee
837 : LDA 6, 841(0) ; Return address
838 : ST 6, 0(4) ; Store return in callee frame
839 : ADD 5, 4, 0 ; Push callee frame
840 : LDA 7, 814(0) ; Call EXP
841 : LD   1, 3(5) ;  Load function result
842 : LDC   2, 4(0) ;  Caller frame size
843 : SUB   5, 5, 2 ;  Pop back to caller
844 : SUB   4, 4, 2 ;  Pop back to caller
845 : ADD  2, 3, 0 ;  Restore left operand
846 : MUL  1, 2, 1 ;  R1 = left * right
847 : ST   1, 3(5) ;  Store function result into stack frame
848 : LD   6, 0(5) ;  Load return address
849 : LDA  7, 0(6) ;  Return to caller
850 : LD   1, 1(5) ;  Load parameter 'm' into R1
851 : ADD  3, 1, 0 ;  Store left operand into temporary register
852 : LD   1, 2(5) ;  Load parameter 'n' into R1
853 : ADD  3, 1, 0 ;  Store left operand into temporary register
854 : LD   1, 1(5) ;  Load parameter 'm' into R1
855 : ADD  3, 1, 0 ;  Store left operand into temporary register
856 : LD   1, 2(5) ;  Load parameter 'n' into R1
857 : ADD  2, 3, 0 ;  Restore left operand
858 : DIV  1, 2, 1 ;  R1 = left / right
859 : ADD  2, 3, 0 ;  Restore left operand
860 : MUL  1, 2, 1 ;  R1 = left * right
861 : ADD  2, 3, 0 ;  Restore left operand
862 : SUB  1, 2, 1 ;  R1 = left - right
863 : ST   1, 3(5) ;  Store function result into stack frame
864 : LD   6, 0(5) ;  Load return address
865 : LDA  7, 0(6) ;  Return to caller
