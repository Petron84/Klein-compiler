0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LDA  6, 2(7) ;  Calculate return address
5 : ST   6, 0(5) ;  Store return address in main stack frame
6 : LDA  7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT  1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT  1, 0, 0 ;  Hardcoded print function
10 : LD   6, 0(5) ;  Load return addess from stack frame.
11 : LDA  7, 0(6) ;  Jump to return address.
12 : LDA 4, 4(5) ; Base of callee frame
13 : LDA 4, 4(5) ; Base of callee frame
14 : LDC  1, 10(0) ;  Load integer-literal value into register 1
15 : ST 1, 1(4) ; Store argument 0 in callee
16 : LDC  1, 2(0) ;  Load integer-literal value into register 1
17 : ST   1, 3(4) ;  Store right operand result into return value slot
18 : LD   1, 1(5) ;  Load parameter 'length' into R1
19 : ADD  2, 1, 0 ;  Move left operand to register 2
20 : LD   1, 3(4) ;  Return right operand back into register 1
21 : DIV  1, 2, 1 ;  R1 = left / right
22 : ADD  2, 1, 0 ;  Move left operand to register 2
23 : LDC  1, 1(0) ;  Load integer-literal value into register 1
24 : SUB  1, 2, 1 ;  R1 = left - right
25 : ST 1, 2(4) ; Store argument 1 in callee
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 834(0) ; Call EXP
30 : LD   1, 3(5) ;  Load function result
31 : LDC   2, 4(0) ;  Caller frame size
32 : SUB   5, 5, 2 ;  Pop back to caller
33 : SUB   4, 4, 2 ;  Pop back to caller
34 : ST 1, 1(4) ; Store argument 0 in callee
35 : LDC  1, 2(0) ;  Load integer-literal value into register 1
36 : ST   1, 3(4) ;  Store right operand result into return value slot
37 : LD   1, 1(5) ;  Load parameter 'length' into R1
38 : ADD  2, 1, 0 ;  Move left operand to register 2
39 : LD   1, 3(4) ;  Return right operand back into register 1
40 : DIV  1, 2, 1 ;  R1 = left / right
41 : ST 1, 2(4) ; Store argument 1 in callee
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame
45 : LDA 7, 54(0) ; Call createLoop
46 : LD   1, 3(5) ;  Load function result
47 : LDC   2, 4(0) ;  Caller frame size
48 : SUB   5, 5, 2 ;  Pop back to caller
49 : SUB   4, 4, 2 ;  Pop back to caller
50 : ST 1, 2(5) ; Store result into caller’s frame
51 : LD   1, 2(5) ;  Load return value into register 1
52 : LD  6, 0(5) ;  Load return address for main function into register 6
53 : LDA  7, 0(6) ;  Jump to return address of main function
54 : LDA 4, 5(5) ; Base of callee frame
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ST 1, 1(4) ; Store argument 0 in callee
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ST 1, 2(4) ; Store argument 1 in callee
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ST   1, 3(4) ;  Store right operand result into return value slot
61 : LDC  1, 10(0) ;  Load integer-literal value into register 1
62 : ADD  2, 1, 0 ;  Move left operand to register 2
63 : LD   1, 3(4) ;  Return right operand back into register 1
64 : MUL  1, 2, 1 ;  R1 = left * right
65 : ST 1, 3(4) ; Store argument 2 in callee
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 77(0) ; Call aLoop
70 : LD   1, 4(5) ;  Load function result
71 : LDC   2, 5(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : ST   1, 3(5) ;  Store function result into stack frame
75 : LD   6, 0(5) ;  Load return address
76 : LDA  7, 0(6) ;  Return to caller
77 : LD   1, 3(5) ;  Load parameter 'upper' into R1
78 : ST   1, 3(4) ;  Store right operand result into return value slot
79 : LD   1, 1(5) ;  Load parameter 'a' into R1
80 : ADD  2, 1, 0 ;  Move left operand to register 2
81 : LD   1, 3(4) ;  Return right operand back into register 1
82 : SUB  1, 2, 1 ;  left - right for less-than check
83 : JLT  1, 2(7) ;  If R1 < 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : JEQ  1, 149(0) ;  If condition is false, jump to ELSE
88 : LDA 4, 6(5) ; Base of callee frame
89 : LD   1, 1(5) ;  Load parameter 'a' into R1
90 : ST 1, 1(4) ; Store argument 0 in callee
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ST 1, 2(4) ; Store argument 1 in callee
93 : LD   1, 3(5) ;  Load parameter 'upper' into R1
94 : ST 1, 3(4) ; Store argument 2 in callee
95 : LDA 4, 4(5) ; Base of callee frame
96 : LD   1, 1(5) ;  Load parameter 'a' into R1
97 : ST 1, 1(4) ; Store argument 0 in callee
98 : LDC  1, 2(0) ;  Load integer-literal value into register 1
99 : ST 1, 2(4) ; Store argument 1 in callee
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return in callee frame
102 : ADD 5, 4, 0 ; Push callee frame
103 : LDA 7, 834(0) ; Call EXP
104 : LD   1, 3(5) ;  Load function result
105 : LDC   2, 4(0) ;  Caller frame size
106 : SUB   5, 5, 2 ;  Pop back to caller
107 : SUB   4, 4, 2 ;  Pop back to caller
108 : ADD  3, 1, 0 ;  Move right operand to register 3
109 : LDC  1, 4(0) ;  Load integer-literal value into register 1
110 : ADD  2, 1, 0 ;  Move left operand to register 2
111 : ADD  1, 3, 0 ;  Move right operand to register 1
112 : MUL  1, 2, 1 ;  R1 = left * right
113 : ADD  2, 1, 0 ;  Move left operand to register 2
114 : LDA 4, 4(5) ; Base of callee frame
115 : LDC  1, 10(0) ;  Load integer-literal value into register 1
116 : ST 1, 1(4) ; Store argument 0 in callee
117 : LD   1, 2(5) ;  Load parameter 'n' into R1
118 : ST 1, 2(4) ; Store argument 1 in callee
119 : LDA 6, 123(0) ; Return address
120 : ST 6, 0(4) ; Store return in callee frame
121 : ADD 5, 4, 0 ; Push callee frame
122 : LDA 7, 834(0) ; Call EXP
123 : LD   1, 3(5) ;  Load function result
124 : LDC   2, 4(0) ;  Caller frame size
125 : SUB   5, 5, 2 ;  Pop back to caller
126 : SUB   4, 4, 2 ;  Pop back to caller
127 : ADD  3, 1, 0 ;  Move right operand to register 3
128 : LDC  1, 4(0) ;  Load integer-literal value into register 1
129 : ADD  2, 1, 0 ;  Move left operand to register 2
130 : ADD  1, 3, 0 ;  Move right operand to register 1
131 : MUL  1, 2, 1 ;  R1 = left * right
132 : ADD  2, 1, 0 ;  Move left operand to register 2
133 : LD   1, 1(5) ;  Load parameter 'a' into R1
134 : MUL  1, 2, 1 ;  R1 = left * right
135 : ADD  1, 2, 1 ;  R1 = left + right
136 : ADD  2, 1, 0 ;  Move left operand to register 2
137 : LDC  1, 1(0) ;  Load integer-literal value into register 1
138 : ADD  1, 2, 1 ;  R1 = left + right
139 : ST 1, 4(4) ; Store argument 3 in callee
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame
143 : LDA 7, 153(0) ; Call aLoop1
144 : LD   1, 5(5) ;  Load function result
145 : LDC   2, 6(0) ;  Caller frame size
146 : SUB   5, 5, 2 ;  Pop back to caller
147 : SUB   4, 4, 2 ;  Pop back to caller
148 : LDA  7, 150(0) ;  Skip ELSE block
149 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
150 : ST   1, 4(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LDA 4, 7(5) ; Base of callee frame
154 : LD   1, 1(5) ;  Load parameter 'a' into R1
155 : ST 1, 1(4) ; Store argument 0 in callee
156 : LD   1, 2(5) ;  Load parameter 'n' into R1
157 : ST 1, 2(4) ; Store argument 1 in callee
158 : LD   1, 3(5) ;  Load parameter 'upper' into R1
159 : ST 1, 3(4) ; Store argument 2 in callee
160 : LD   1, 4(5) ;  Load parameter 'det' into R1
161 : ST 1, 4(4) ; Store argument 3 in callee
162 : LDA 4, 3(5) ; Base of callee frame
163 : LD   1, 4(5) ;  Load parameter 'det' into R1
164 : ST 1, 1(4) ; Store argument 0 in callee
165 : LDA 6, 169(0) ; Return address
166 : ST 6, 0(4) ; Store return in callee frame
167 : ADD 5, 4, 0 ; Push callee frame
168 : LDA 7, 746(0) ; Call SQRT
169 : LD   1, 2(5) ;  Load function result
170 : LDC   2, 3(0) ;  Caller frame size
171 : SUB   5, 5, 2 ;  Pop back to caller
172 : SUB   4, 4, 2 ;  Pop back to caller
173 : ST 1, 5(4) ; Store argument 4 in callee
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return in callee frame
176 : ADD 5, 4, 0 ; Push callee frame
177 : LDA 7, 185(0) ; Call aLoop2
178 : LD   1, 6(5) ;  Load function result
179 : LDC   2, 7(0) ;  Caller frame size
180 : SUB   5, 5, 2 ;  Pop back to caller
181 : SUB   4, 4, 2 ;  Pop back to caller
182 : ST   1, 5(5) ;  Store function result into stack frame
183 : LD   6, 0(5) ;  Load return address
184 : LDA  7, 0(6) ;  Return to caller
185 : LDA 4, 8(5) ; Base of callee frame
186 : LD   1, 1(5) ;  Load parameter 'a' into R1
187 : ST 1, 1(4) ; Store argument 0 in callee
188 : LD   1, 2(5) ;  Load parameter 'n' into R1
189 : ST 1, 2(4) ; Store argument 1 in callee
190 : LD   1, 3(5) ;  Load parameter 'upper' into R1
191 : ST 1, 3(4) ; Store argument 2 in callee
192 : LD   1, 4(5) ;  Load parameter 'det' into R1
193 : ST 1, 4(4) ; Store argument 3 in callee
194 : LD   1, 5(5) ;  Load parameter 'root' into R1
195 : ST 1, 5(4) ; Store argument 4 in callee
196 : LDA 4, 4(5) ; Base of callee frame
197 : LDC  1, 10(0) ;  Load integer-literal value into register 1
198 : ST 1, 1(4) ; Store argument 0 in callee
199 : LD   1, 2(5) ;  Load parameter 'n' into R1
200 : ST 1, 2(4) ; Store argument 1 in callee
201 : LDA 6, 205(0) ; Return address
202 : ST 6, 0(4) ; Store return in callee frame
203 : ADD 5, 4, 0 ; Push callee frame
204 : LDA 7, 834(0) ; Call EXP
205 : LD   1, 3(5) ;  Load function result
206 : LDC   2, 4(0) ;  Caller frame size
207 : SUB   5, 5, 2 ;  Pop back to caller
208 : SUB   4, 4, 2 ;  Pop back to caller
209 : ADD  3, 1, 0 ;  Move right operand to register 3
210 : LD   1, 1(5) ;  Load parameter 'a' into R1
211 : ADD  2, 1, 0 ;  Move left operand to register 2
212 : ADD  1, 3, 0 ;  Move right operand to register 1
213 : MUL  1, 2, 1 ;  R1 = left * right
214 : ADD  2, 1, 0 ;  Move left operand to register 2
215 : LDC  1, 1(0) ;  Load integer-literal value into register 1
216 : ST   1, 3(4) ;  Store right operand result into return value slot
217 : LD   1, 5(5) ;  Load parameter 'root' into R1
218 : ADD  2, 1, 0 ;  Move left operand to register 2
219 : LD   1, 3(4) ;  Return right operand back into register 1
220 : ADD  1, 2, 1 ;  R1 = left + right
221 : ADD  2, 1, 0 ;  Move left operand to register 2
222 : LDC  1, 2(0) ;  Load integer-literal value into register 1
223 : DIV  1, 2, 1 ;  R1 = left / right
224 : ADD  1, 2, 1 ;  R1 = left + right
225 : ST 1, 6(4) ; Store argument 5 in callee
226 : LDA 6, 230(0) ; Return address
227 : ST 6, 0(4) ; Store return in callee frame
228 : ADD 5, 4, 0 ; Push callee frame
229 : LDA 7, 237(0) ; Call aLoop3
230 : LD   1, 7(5) ;  Load function result
231 : LDC   2, 8(0) ;  Caller frame size
232 : SUB   5, 5, 2 ;  Pop back to caller
233 : SUB   4, 4, 2 ;  Pop back to caller
234 : ST   1, 6(5) ;  Store function result into stack frame
235 : LD   6, 0(5) ;  Load return address
236 : LDA  7, 0(6) ;  Return to caller
237 : LDA 4, 4(5) ; Base of callee frame
238 : LD   1, 5(5) ;  Load parameter 'root' into R1
239 : ST 1, 1(4) ; Store argument 0 in callee
240 : LD   1, 4(5) ;  Load parameter 'det' into R1
241 : ST 1, 2(4) ; Store argument 1 in callee
242 : LDA 6, 246(0) ; Return address
243 : ST 6, 0(4) ; Store return in callee frame
244 : ADD 5, 4, 0 ; Push callee frame
245 : LDA 7, 569(0) ; Call ISROOT
246 : LD   1, 3(5) ;  Load function result
247 : LDC   2, 4(0) ;  Caller frame size
248 : SUB   5, 5, 2 ;  Pop back to caller
249 : SUB   4, 4, 2 ;  Pop back to caller
250 : ADD  2, 1, 0 ;  Move left operand to register 2
251 : LDA 4, 3(5) ; Base of callee frame
252 : LDC  1, 1(0) ;  Load integer-literal value into register 1
253 : ST   1, 3(4) ;  Store right operand result into return value slot
254 : LD   1, 5(5) ;  Load parameter 'root' into R1
255 : ADD  2, 1, 0 ;  Move left operand to register 2
256 : LD   1, 3(4) ;  Return right operand back into register 1
257 : ADD  1, 2, 1 ;  R1 = left + right
258 : ST 1, 1(4) ; Store argument 0 in callee
259 : LDA 6, 263(0) ; Return address
260 : ST 6, 0(4) ; Store return in callee frame
261 : ADD 5, 4, 0 ; Push callee frame
262 : LDA 7, 587(0) ; Call EVEN
263 : LD   1, 2(5) ;  Load function result
264 : LDC   2, 3(0) ;  Caller frame size
265 : SUB   5, 5, 2 ;  Pop back to caller
266 : SUB   4, 4, 2 ;  Pop back to caller
267 : MUL  1, 2, 1 ;  R1 = left AND right
268 : ADD  2, 1, 0 ;  Move left operand to register 2
269 : LDA 4, 3(5) ; Base of callee frame
270 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
271 : ST 1, 1(4) ; Store argument 0 in callee
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return in callee frame
274 : ADD 5, 4, 0 ; Push callee frame
275 : LDA 7, 355(0) ; Call isExcellent
276 : LD   1, 2(5) ;  Load function result
277 : LDC   2, 3(0) ;  Caller frame size
278 : SUB   5, 5, 2 ;  Pop back to caller
279 : SUB   4, 4, 2 ;  Pop back to caller
280 : MUL  1, 2, 1 ;  R1 = left AND right
281 : JEQ  1, 300(0) ;  If condition is false, jump to ELSE
282 : LDA 4, 6(5) ; Base of callee frame
283 : LD   1, 1(5) ;  Load parameter 'a' into R1
284 : ST 1, 1(4) ; Store argument 0 in callee
285 : LD   1, 2(5) ;  Load parameter 'n' into R1
286 : ST 1, 2(4) ; Store argument 1 in callee
287 : LD   1, 3(5) ;  Load parameter 'upper' into R1
288 : ST 1, 3(4) ; Store argument 2 in callee
289 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
290 : ST 1, 4(4) ; Store argument 3 in callee
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame
294 : LDA 7, 323(0) ; Call printCandidateAndContinue
295 : LD   1, 5(5) ;  Load function result
296 : LDC   2, 6(0) ;  Caller frame size
297 : SUB   5, 5, 2 ;  Pop back to caller
298 : SUB   4, 4, 2 ;  Pop back to caller
299 : LDA  7, 320(0) ;  Skip ELSE block
300 : LDA 4, 5(5) ; Base of callee frame
301 : LDC  1, 1(0) ;  Load integer-literal value into register 1
302 : ST   1, 3(4) ;  Store right operand result into return value slot
303 : LD   1, 1(5) ;  Load parameter 'a' into R1
304 : ADD  2, 1, 0 ;  Move left operand to register 2
305 : LD   1, 3(4) ;  Return right operand back into register 1
306 : ADD  1, 2, 1 ;  R1 = left + right
307 : ST 1, 1(4) ; Store argument 0 in callee
308 : LD   1, 2(5) ;  Load parameter 'n' into R1
309 : ST 1, 2(4) ; Store argument 1 in callee
310 : LD   1, 3(5) ;  Load parameter 'upper' into R1
311 : ST 1, 3(4) ; Store argument 2 in callee
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return in callee frame
314 : ADD 5, 4, 0 ; Push callee frame
315 : LDA 7, 77(0) ; Call aLoop
316 : LD   1, 4(5) ;  Load function result
317 : LDC   2, 5(0) ;  Caller frame size
318 : SUB   5, 5, 2 ;  Pop back to caller
319 : SUB   4, 4, 2 ;  Pop back to caller
320 : ST   1, 7(5) ;  Store function result into stack frame
321 : LD   6, 0(5) ;  Load return address
322 : LDA  7, 0(6) ;  Return to caller
323 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
324 : LDA 4, 3(5) ; Base of callee frame
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return addr in callee frame
327 : ADD 5, 4, 0 ; Push new frame
328 : LDA 7, 9(0) ; Call print
329 : LDC 2, 3(0) ; Caller frame size
330 : SUB 5, 5, 2 ; Pop frame
331 : ST   1, 5(5) ;  Store function result into stack frame
332 : LDA 4, 5(5) ; Base of callee frame
333 : LDC  1, 1(0) ;  Load integer-literal value into register 1
334 : ST   1, 3(4) ;  Store right operand result into return value slot
335 : LD   1, 1(5) ;  Load parameter 'a' into R1
336 : ADD  2, 1, 0 ;  Move left operand to register 2
337 : LD   1, 3(4) ;  Return right operand back into register 1
338 : ADD  1, 2, 1 ;  R1 = left + right
339 : ST 1, 1(4) ; Store argument 0 in callee
340 : LD   1, 2(5) ;  Load parameter 'n' into R1
341 : ST 1, 2(4) ; Store argument 1 in callee
342 : LD   1, 3(5) ;  Load parameter 'upper' into R1
343 : ST 1, 3(4) ; Store argument 2 in callee
344 : LDA 6, 348(0) ; Return address
345 : ST 6, 0(4) ; Store return in callee frame
346 : ADD 5, 4, 0 ; Push callee frame
347 : LDA 7, 77(0) ; Call aLoop
348 : LD   1, 4(5) ;  Load function result
349 : LDC   2, 5(0) ;  Caller frame size
350 : SUB   5, 5, 2 ;  Pop back to caller
351 : SUB   4, 4, 2 ;  Pop back to caller
352 : ST   1, 5(5) ;  Store function result into stack frame
353 : LD   6, 0(5) ;  Load return address
354 : LDA  7, 0(6) ;  Return to caller
355 : LDA 4, 4(5) ; Base of callee frame
356 : LD   1, 1(5) ;  Load parameter 'n' into R1
357 : ST 1, 1(4) ; Store argument 0 in callee
358 : LDA 4, 3(5) ; Base of callee frame
359 : LD   1, 1(5) ;  Load parameter 'n' into R1
360 : ST 1, 1(4) ; Store argument 0 in callee
361 : LDA 6, 365(0) ; Return address
362 : ST 6, 0(4) ; Store return in callee frame
363 : ADD 5, 4, 0 ; Push callee frame
364 : LDA 7, 532(0) ; Call length
365 : LD   1, 2(5) ;  Load function result
366 : LDC   2, 3(0) ;  Caller frame size
367 : SUB   5, 5, 2 ;  Pop back to caller
368 : SUB   4, 4, 2 ;  Pop back to caller
369 : ST 1, 2(4) ; Store argument 1 in callee
370 : LDA 6, 374(0) ; Return address
371 : ST 6, 0(4) ; Store return in callee frame
372 : ADD 5, 4, 0 ; Push callee frame
373 : LDA 7, 381(0) ; Call isExcellentSwitch
374 : LD   1, 3(5) ;  Load function result
375 : LDC   2, 4(0) ;  Caller frame size
376 : SUB   5, 5, 2 ;  Pop back to caller
377 : SUB   4, 4, 2 ;  Pop back to caller
378 : ST   1, 2(5) ;  Store function result into stack frame
379 : LD   6, 0(5) ;  Load return address
380 : LDA  7, 0(6) ;  Return to caller
381 : LDA 4, 3(5) ; Base of callee frame
382 : LD   1, 2(5) ;  Load parameter 'length' into R1
383 : ST 1, 1(4) ; Store argument 0 in callee
384 : LDA 6, 388(0) ; Return address
385 : ST 6, 0(4) ; Store return in callee frame
386 : ADD 5, 4, 0 ; Push callee frame
387 : LDA 7, 789(0) ; Call ODD
388 : LD   1, 2(5) ;  Load function result
389 : LDC   2, 3(0) ;  Caller frame size
390 : SUB   5, 5, 2 ;  Pop back to caller
391 : SUB   4, 4, 2 ;  Pop back to caller
392 : JEQ  1, 395(0) ;  If condition is false, jump to ELSE
393 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
394 : LDA  7, 437(0) ;  Skip ELSE block
395 : LDA 4, 4(5) ; Base of callee frame
396 : LDA 4, 3(5) ; Base of callee frame
397 : LD   1, 1(5) ;  Load parameter 'n' into R1
398 : ST 1, 1(4) ; Store argument 0 in callee
399 : LDA 6, 403(0) ; Return address
400 : ST 6, 0(4) ; Store return in callee frame
401 : ADD 5, 4, 0 ; Push callee frame
402 : LDA 7, 498(0) ; Call a
403 : LD   1, 2(5) ;  Load function result
404 : LDC   2, 3(0) ;  Caller frame size
405 : SUB   5, 5, 2 ;  Pop back to caller
406 : SUB   4, 4, 2 ;  Pop back to caller
407 : ST 1, 1(4) ; Store argument 0 in callee
408 : LDA 4, 3(5) ; Base of callee frame
409 : LD   1, 1(5) ;  Load parameter 'n' into R1
410 : ST 1, 1(4) ; Store argument 0 in callee
411 : LDA 6, 415(0) ; Return address
412 : ST 6, 0(4) ; Store return in callee frame
413 : ADD 5, 4, 0 ; Push callee frame
414 : LDA 7, 457(0) ; Call b
415 : LD   1, 2(5) ;  Load function result
416 : LDC   2, 3(0) ;  Caller frame size
417 : SUB   5, 5, 2 ;  Pop back to caller
418 : SUB   4, 4, 2 ;  Pop back to caller
419 : ST 1, 2(4) ; Store argument 1 in callee
420 : LDA 6, 424(0) ; Return address
421 : ST 6, 0(4) ; Store return in callee frame
422 : ADD 5, 4, 0 ; Push callee frame
423 : LDA 7, 440(0) ; Call excellentDiff
424 : LD   1, 3(5) ;  Load function result
425 : LDC   2, 4(0) ;  Caller frame size
426 : SUB   5, 5, 2 ;  Pop back to caller
427 : SUB   4, 4, 2 ;  Pop back to caller
428 : ADD  3, 1, 0 ;  Move right operand to register 3
429 : LD   1, 1(5) ;  Load parameter 'n' into R1
430 : ADD  2, 1, 0 ;  Move left operand to register 2
431 : ADD  1, 3, 0 ;  Move right operand to register 1
432 : SUB  1, 2, 1 ;  left - right for equality check
433 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
434 : LDC  1, 0(0) ;  false
435 : LDA  7, 1(7) ;  skip setting true
436 : LDC  1, 1(0) ;  true
437 : ST   1, 3(5) ;  Store function result into stack frame
438 : LD   6, 0(5) ;  Load return address
439 : LDA  7, 0(6) ;  Return to caller
440 : LD   1, 2(5) ;  Load parameter 'b' into R1
441 : ST   1, 3(4) ;  Store right operand result into return value slot
442 : LD   1, 2(5) ;  Load parameter 'b' into R1
443 : ADD  2, 1, 0 ;  Move left operand to register 2
444 : LD   1, 3(4) ;  Return right operand back into register 1
445 : MUL  1, 2, 1 ;  R1 = left * right
446 : ADD  2, 1, 0 ;  Move left operand to register 2
447 : LD   1, 1(5) ;  Load parameter 'a' into R1
448 : ST   1, 3(4) ;  Store right operand result into return value slot
449 : LD   1, 1(5) ;  Load parameter 'a' into R1
450 : ADD  2, 1, 0 ;  Move left operand to register 2
451 : LD   1, 3(4) ;  Return right operand back into register 1
452 : MUL  1, 2, 1 ;  R1 = left * right
453 : SUB  1, 2, 1 ;  R1 = left - right
454 : ST   1, 3(5) ;  Store function result into stack frame
455 : LD   6, 0(5) ;  Load return address
456 : LDA  7, 0(6) ;  Return to caller
457 : LDA 4, 4(5) ; Base of callee frame
458 : LD   1, 1(5) ;  Load parameter 'n' into R1
459 : ST 1, 1(4) ; Store argument 0 in callee
460 : LDA 4, 4(5) ; Base of callee frame
461 : LDC  1, 10(0) ;  Load integer-literal value into register 1
462 : ST 1, 1(4) ; Store argument 0 in callee
463 : LDA 4, 3(5) ; Base of callee frame
464 : LD   1, 1(5) ;  Load parameter 'n' into R1
465 : ST 1, 1(4) ; Store argument 0 in callee
466 : LDA 6, 470(0) ; Return address
467 : ST 6, 0(4) ; Store return in callee frame
468 : ADD 5, 4, 0 ; Push callee frame
469 : LDA 7, 532(0) ; Call length
470 : LD   1, 2(5) ;  Load function result
471 : LDC   2, 3(0) ;  Caller frame size
472 : SUB   5, 5, 2 ;  Pop back to caller
473 : SUB   4, 4, 2 ;  Pop back to caller
474 : ADD  2, 1, 0 ;  Move left operand to register 2
475 : LDC  1, 2(0) ;  Load integer-literal value into register 1
476 : DIV  1, 2, 1 ;  R1 = left / right
477 : ST 1, 2(4) ; Store argument 1 in callee
478 : LDA 6, 482(0) ; Return address
479 : ST 6, 0(4) ; Store return in callee frame
480 : ADD 5, 4, 0 ; Push callee frame
481 : LDA 7, 834(0) ; Call EXP
482 : LD   1, 3(5) ;  Load function result
483 : LDC   2, 4(0) ;  Caller frame size
484 : SUB   5, 5, 2 ;  Pop back to caller
485 : SUB   4, 4, 2 ;  Pop back to caller
486 : ST 1, 2(4) ; Store argument 1 in callee
487 : LDA 6, 491(0) ; Return address
488 : ST 6, 0(4) ; Store return in callee frame
489 : ADD 5, 4, 0 ; Push callee frame
490 : LDA 7, 873(0) ; Call MOD
491 : LD   1, 3(5) ;  Load function result
492 : LDC   2, 4(0) ;  Caller frame size
493 : SUB   5, 5, 2 ;  Pop back to caller
494 : SUB   4, 4, 2 ;  Pop back to caller
495 : ST   1, 2(5) ;  Store function result into stack frame
496 : LD   6, 0(5) ;  Load return address
497 : LDA  7, 0(6) ;  Return to caller
498 : LDA 4, 4(5) ; Base of callee frame
499 : LDC  1, 10(0) ;  Load integer-literal value into register 1
500 : ST 1, 1(4) ; Store argument 0 in callee
501 : LDA 4, 3(5) ; Base of callee frame
502 : LD   1, 1(5) ;  Load parameter 'n' into R1
503 : ST 1, 1(4) ; Store argument 0 in callee
504 : LDA 6, 508(0) ; Return address
505 : ST 6, 0(4) ; Store return in callee frame
506 : ADD 5, 4, 0 ; Push callee frame
507 : LDA 7, 532(0) ; Call length
508 : LD   1, 2(5) ;  Load function result
509 : LDC   2, 3(0) ;  Caller frame size
510 : SUB   5, 5, 2 ;  Pop back to caller
511 : SUB   4, 4, 2 ;  Pop back to caller
512 : ADD  2, 1, 0 ;  Move left operand to register 2
513 : LDC  1, 2(0) ;  Load integer-literal value into register 1
514 : DIV  1, 2, 1 ;  R1 = left / right
515 : ST 1, 2(4) ; Store argument 1 in callee
516 : LDA 6, 520(0) ; Return address
517 : ST 6, 0(4) ; Store return in callee frame
518 : ADD 5, 4, 0 ; Push callee frame
519 : LDA 7, 834(0) ; Call EXP
520 : LD   1, 3(5) ;  Load function result
521 : LDC   2, 4(0) ;  Caller frame size
522 : SUB   5, 5, 2 ;  Pop back to caller
523 : SUB   4, 4, 2 ;  Pop back to caller
524 : ADD  3, 1, 0 ;  Move right operand to register 3
525 : LD   1, 1(5) ;  Load parameter 'n' into R1
526 : ADD  2, 1, 0 ;  Move left operand to register 2
527 : ADD  1, 3, 0 ;  Move right operand to register 1
528 : DIV  1, 2, 1 ;  R1 = left / right
529 : ST   1, 2(5) ;  Store function result into stack frame
530 : LD   6, 0(5) ;  Load return address
531 : LDA  7, 0(6) ;  Return to caller
532 : LDC  1, 10(0) ;  Load integer-literal value into register 1
533 : ST   1, 3(4) ;  Store right operand result into return value slot
534 : LD   1, 1(5) ;  Load parameter 'n' into R1
535 : ADD  2, 1, 0 ;  Move left operand to register 2
536 : LD   1, 3(4) ;  Return right operand back into register 1
537 : SUB  1, 2, 1 ;  left - right for less-than check
538 : JLT  1, 2(7) ;  If R1 < 0, jump to true
539 : LDC  1, 0(0) ;  false
540 : LDA  7, 1(7) ;  skip setting true
541 : LDC  1, 1(0) ;  true
542 : JEQ  1, 545(0) ;  If condition is false, jump to ELSE
543 : LDC  1, 1(0) ;  Load integer-literal value into register 1
544 : LDA  7, 566(0) ;  Skip ELSE block
545 : LDA 4, 3(5) ; Base of callee frame
546 : LDC  1, 10(0) ;  Load integer-literal value into register 1
547 : ST   1, 3(4) ;  Store right operand result into return value slot
548 : LD   1, 1(5) ;  Load parameter 'n' into R1
549 : ADD  2, 1, 0 ;  Move left operand to register 2
550 : LD   1, 3(4) ;  Return right operand back into register 1
551 : DIV  1, 2, 1 ;  R1 = left / right
552 : ST 1, 1(4) ; Store argument 0 in callee
553 : LDA 6, 557(0) ; Return address
554 : ST 6, 0(4) ; Store return in callee frame
555 : ADD 5, 4, 0 ; Push callee frame
556 : LDA 7, 532(0) ; Call length
557 : LD   1, 2(5) ;  Load function result
558 : LDC   2, 3(0) ;  Caller frame size
559 : SUB   5, 5, 2 ;  Pop back to caller
560 : SUB   4, 4, 2 ;  Pop back to caller
561 : ADD  3, 1, 0 ;  Move right operand to register 3
562 : LDC  1, 1(0) ;  Load integer-literal value into register 1
563 : ADD  2, 1, 0 ;  Move left operand to register 2
564 : ADD  1, 3, 0 ;  Move right operand to register 1
565 : ADD  1, 2, 1 ;  R1 = left + right
566 : ST   1, 2(5) ;  Store function result into stack frame
567 : LD   6, 0(5) ;  Load return address
568 : LDA  7, 0(6) ;  Return to caller
569 : LD   1, 1(5) ;  Load parameter 'r' into R1
570 : ST   1, 3(4) ;  Store right operand result into return value slot
571 : LD   1, 1(5) ;  Load parameter 'r' into R1
572 : ADD  2, 1, 0 ;  Move left operand to register 2
573 : LD   1, 3(4) ;  Return right operand back into register 1
574 : MUL  1, 2, 1 ;  R1 = left * right
575 : ADD  3, 1, 0 ;  Move right operand to register 3
576 : LD   1, 2(5) ;  Load parameter 'n' into R1
577 : ADD  2, 1, 0 ;  Move left operand to register 2
578 : ADD  1, 3, 0 ;  Move right operand to register 1
579 : SUB  1, 2, 1 ;  left - right for equality check
580 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
581 : LDC  1, 0(0) ;  false
582 : LDA  7, 1(7) ;  skip setting true
583 : LDC  1, 1(0) ;  true
584 : ST   1, 3(5) ;  Store function result into stack frame
585 : LD   6, 0(5) ;  Load return address
586 : LDA  7, 0(6) ;  Return to caller
587 : LDC  1, 2(0) ;  Load integer-literal value into register 1
588 : ST   1, 3(4) ;  Store right operand result into return value slot
589 : LD   1, 1(5) ;  Load parameter 'n' into R1
590 : ADD  2, 1, 0 ;  Move left operand to register 2
591 : LD   1, 3(4) ;  Return right operand back into register 1
592 : DIV  1, 2, 1 ;  R1 = left / right
593 : ADD  3, 1, 0 ;  Move right operand to register 3
594 : LDC  1, 2(0) ;  Load integer-literal value into register 1
595 : ADD  2, 1, 0 ;  Move left operand to register 2
596 : ADD  1, 3, 0 ;  Move right operand to register 1
597 : MUL  1, 2, 1 ;  R1 = left * right
598 : ADD  3, 1, 0 ;  Move right operand to register 3
599 : LD   1, 1(5) ;  Load parameter 'n' into R1
600 : ADD  2, 1, 0 ;  Move left operand to register 2
601 : ADD  1, 3, 0 ;  Move right operand to register 1
602 : SUB  1, 2, 1 ;  left - right for equality check
603 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
604 : LDC  1, 0(0) ;  false
605 : LDA  7, 1(7) ;  skip setting true
606 : LDC  1, 1(0) ;  true
607 : ST   1, 2(5) ;  Store function result into stack frame
608 : LD   6, 0(5) ;  Load return address
609 : LDA  7, 0(6) ;  Return to caller
610 : LDA 4, 4(5) ; Base of callee frame
611 : LD   1, 4(5) ;  Load parameter 'mid' into R1
612 : ST   1, 3(4) ;  Store right operand result into return value slot
613 : LD   1, 4(5) ;  Load parameter 'mid' into R1
614 : ADD  2, 1, 0 ;  Move left operand to register 2
615 : LD   1, 3(4) ;  Return right operand back into register 1
616 : MUL  1, 2, 1 ;  R1 = left * right
617 : ST 1, 1(4) ; Store argument 0 in callee
618 : LD   1, 1(5) ;  Load parameter 'n' into R1
619 : ST 1, 2(4) ; Store argument 1 in callee
620 : LDA 6, 624(0) ; Return address
621 : ST 6, 0(4) ; Store return in callee frame
622 : ADD 5, 4, 0 ; Push callee frame
623 : LDA 7, 764(0) ; Call LE
624 : LD   1, 3(5) ;  Load function result
625 : LDC   2, 4(0) ;  Caller frame size
626 : SUB   5, 5, 2 ;  Pop back to caller
627 : SUB   4, 4, 2 ;  Pop back to caller
628 : JEQ  1, 645(0) ;  If condition is false, jump to ELSE
629 : LDA 4, 5(5) ; Base of callee frame
630 : LD   1, 1(5) ;  Load parameter 'n' into R1
631 : ST 1, 1(4) ; Store argument 0 in callee
632 : LD   1, 4(5) ;  Load parameter 'mid' into R1
633 : ST 1, 2(4) ; Store argument 1 in callee
634 : LD   1, 3(5) ;  Load parameter 'high' into R1
635 : ST 1, 3(4) ; Store argument 2 in callee
636 : LDA 6, 640(0) ; Return address
637 : ST 6, 0(4) ; Store return in callee frame
638 : ADD 5, 4, 0 ; Push callee frame
639 : LDA 7, 663(0) ; Call SQRTSEARCH
640 : LD   1, 4(5) ;  Load function result
641 : LDC   2, 5(0) ;  Caller frame size
642 : SUB   5, 5, 2 ;  Pop back to caller
643 : SUB   4, 4, 2 ;  Pop back to caller
644 : LDA  7, 660(0) ;  Skip ELSE block
645 : LDA 4, 5(5) ; Base of callee frame
646 : LD   1, 1(5) ;  Load parameter 'n' into R1
647 : ST 1, 1(4) ; Store argument 0 in callee
648 : LD   1, 2(5) ;  Load parameter 'low' into R1
649 : ST 1, 2(4) ; Store argument 1 in callee
650 : LD   1, 4(5) ;  Load parameter 'mid' into R1
651 : ST 1, 3(4) ; Store argument 2 in callee
652 : LDA 6, 656(0) ; Return address
653 : ST 6, 0(4) ; Store return in callee frame
654 : ADD 5, 4, 0 ; Push callee frame
655 : LDA 7, 663(0) ; Call SQRTSEARCH
656 : LD   1, 4(5) ;  Load function result
657 : LDC   2, 5(0) ;  Caller frame size
658 : SUB   5, 5, 2 ;  Pop back to caller
659 : SUB   4, 4, 2 ;  Pop back to caller
660 : ST   1, 5(5) ;  Store function result into stack frame
661 : LD   6, 0(5) ;  Load return address
662 : LDA  7, 0(6) ;  Return to caller
663 : LDA 4, 4(5) ; Base of callee frame
664 : LD   1, 3(5) ;  Load parameter 'high' into R1
665 : ST 1, 1(4) ; Store argument 0 in callee
666 : LDC  1, 1(0) ;  Load integer-literal value into register 1
667 : ST   1, 3(4) ;  Store right operand result into return value slot
668 : LD   1, 2(5) ;  Load parameter 'low' into R1
669 : ADD  2, 1, 0 ;  Move left operand to register 2
670 : LD   1, 3(4) ;  Return right operand back into register 1
671 : ADD  1, 2, 1 ;  R1 = left + right
672 : ST 1, 2(4) ; Store argument 1 in callee
673 : LDA 6, 677(0) ; Return address
674 : ST 6, 0(4) ; Store return in callee frame
675 : ADD 5, 4, 0 ; Push callee frame
676 : LDA 7, 764(0) ; Call LE
677 : LD   1, 3(5) ;  Load function result
678 : LDC   2, 4(0) ;  Caller frame size
679 : SUB   5, 5, 2 ;  Pop back to caller
680 : SUB   4, 4, 2 ;  Pop back to caller
681 : JEQ  1, 718(0) ;  If condition is false, jump to ELSE
682 : LDA 4, 4(5) ; Base of callee frame
683 : LD   1, 2(5) ;  Load parameter 'low' into R1
684 : ST   1, 3(4) ;  Store right operand result into return value slot
685 : LD   1, 2(5) ;  Load parameter 'low' into R1
686 : ADD  2, 1, 0 ;  Move left operand to register 2
687 : LD   1, 3(4) ;  Return right operand back into register 1
688 : MUL  1, 2, 1 ;  R1 = left * right
689 : ADD  3, 1, 0 ;  Move right operand to register 3
690 : LD   1, 1(5) ;  Load parameter 'n' into R1
691 : ADD  2, 1, 0 ;  Move left operand to register 2
692 : ADD  1, 3, 0 ;  Move right operand to register 1
693 : SUB  1, 2, 1 ;  R1 = left - right
694 : ST 1, 1(4) ; Store argument 0 in callee
695 : LD   1, 3(5) ;  Load parameter 'high' into R1
696 : ST   1, 3(4) ;  Store right operand result into return value slot
697 : LD   1, 3(5) ;  Load parameter 'high' into R1
698 : ADD  2, 1, 0 ;  Move left operand to register 2
699 : LD   1, 3(4) ;  Return right operand back into register 1
700 : MUL  1, 2, 1 ;  R1 = left * right
701 : ADD  2, 1, 0 ;  Move left operand to register 2
702 : LD   1, 1(5) ;  Load parameter 'n' into R1
703 : SUB  1, 2, 1 ;  R1 = left - right
704 : ST 1, 2(4) ; Store argument 1 in callee
705 : LDA 6, 709(0) ; Return address
706 : ST 6, 0(4) ; Store return in callee frame
707 : ADD 5, 4, 0 ; Push callee frame
708 : LDA 7, 764(0) ; Call LE
709 : LD   1, 3(5) ;  Load function result
710 : LDC   2, 4(0) ;  Caller frame size
711 : SUB   5, 5, 2 ;  Pop back to caller
712 : SUB   4, 4, 2 ;  Pop back to caller
713 : JEQ  1, 716(0) ;  If condition is false, jump to ELSE
714 : LD   1, 2(5) ;  Load parameter 'low' into R1
715 : LDA  7, 717(0) ;  Skip ELSE block
716 : LD   1, 3(5) ;  Load parameter 'high' into R1
717 : LDA  7, 743(0) ;  Skip ELSE block
718 : LDA 4, 6(5) ; Base of callee frame
719 : LD   1, 1(5) ;  Load parameter 'n' into R1
720 : ST 1, 1(4) ; Store argument 0 in callee
721 : LD   1, 2(5) ;  Load parameter 'low' into R1
722 : ST 1, 2(4) ; Store argument 1 in callee
723 : LD   1, 3(5) ;  Load parameter 'high' into R1
724 : ST 1, 3(4) ; Store argument 2 in callee
725 : LD   1, 3(5) ;  Load parameter 'high' into R1
726 : ST   1, 3(4) ;  Store right operand result into return value slot
727 : LD   1, 2(5) ;  Load parameter 'low' into R1
728 : ADD  2, 1, 0 ;  Move left operand to register 2
729 : LD   1, 3(4) ;  Return right operand back into register 1
730 : ADD  1, 2, 1 ;  R1 = left + right
731 : ADD  2, 1, 0 ;  Move left operand to register 2
732 : LDC  1, 2(0) ;  Load integer-literal value into register 1
733 : DIV  1, 2, 1 ;  R1 = left / right
734 : ST 1, 4(4) ; Store argument 3 in callee
735 : LDA 6, 739(0) ; Return address
736 : ST 6, 0(4) ; Store return in callee frame
737 : ADD 5, 4, 0 ; Push callee frame
738 : LDA 7, 610(0) ; Call SQRTSPLIT
739 : LD   1, 5(5) ;  Load function result
740 : LDC   2, 6(0) ;  Caller frame size
741 : SUB   5, 5, 2 ;  Pop back to caller
742 : SUB   4, 4, 2 ;  Pop back to caller
743 : ST   1, 4(5) ;  Store function result into stack frame
744 : LD   6, 0(5) ;  Load return address
745 : LDA  7, 0(6) ;  Return to caller
746 : LDA 4, 5(5) ; Base of callee frame
747 : LD   1, 1(5) ;  Load parameter 'n' into R1
748 : ST 1, 1(4) ; Store argument 0 in callee
749 : LDC  1, 0(0) ;  Load integer-literal value into register 1
750 : ST 1, 2(4) ; Store argument 1 in callee
751 : LD   1, 1(5) ;  Load parameter 'n' into R1
752 : ST 1, 3(4) ; Store argument 2 in callee
753 : LDA 6, 757(0) ; Return address
754 : ST 6, 0(4) ; Store return in callee frame
755 : ADD 5, 4, 0 ; Push callee frame
756 : LDA 7, 663(0) ; Call SQRTSEARCH
757 : LD   1, 4(5) ;  Load function result
758 : LDC   2, 5(0) ;  Caller frame size
759 : SUB   5, 5, 2 ;  Pop back to caller
760 : SUB   4, 4, 2 ;  Pop back to caller
761 : ST   1, 2(5) ;  Store function result into stack frame
762 : LD   6, 0(5) ;  Load return address
763 : LDA  7, 0(6) ;  Return to caller
764 : LD   1, 2(5) ;  Load parameter 'q' into R1
765 : ST   1, 3(4) ;  Store right operand result into return value slot
766 : LD   1, 1(5) ;  Load parameter 'p' into R1
767 : ADD  2, 1, 0 ;  Move left operand to register 2
768 : LD   1, 3(4) ;  Return right operand back into register 1
769 : SUB  1, 2, 1 ;  left - right for less-than check
770 : JLT  1, 2(7) ;  If R1 < 0, jump to true
771 : LDC  1, 0(0) ;  false
772 : LDA  7, 1(7) ;  skip setting true
773 : LDC  1, 1(0) ;  true
774 : ADD  2, 1, 0 ;  Move left operand to register 2
775 : LD   1, 2(5) ;  Load parameter 'q' into R1
776 : ST   1, 3(4) ;  Store right operand result into return value slot
777 : LD   1, 1(5) ;  Load parameter 'p' into R1
778 : ADD  2, 1, 0 ;  Move left operand to register 2
779 : LD   1, 3(4) ;  Return right operand back into register 1
780 : SUB  1, 2, 1 ;  left - right for equality check
781 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
782 : LDC  1, 0(0) ;  false
783 : LDA  7, 1(7) ;  skip setting true
784 : LDC  1, 1(0) ;  true
785 : ADD  1, 2, 1 ;  R1 = left OR right
786 : ST   1, 3(5) ;  Store function result into stack frame
787 : LD   6, 0(5) ;  Load return address
788 : LDA  7, 0(6) ;  Return to caller
789 : LD   1, 1(5) ;  Load parameter 'n' into R1
790 : ST   1, 3(4) ;  Store right operand result into return value slot
791 : LDC  1, 0(0) ;  Load integer-literal value into register 1
792 : ADD  2, 1, 0 ;  Move left operand to register 2
793 : LD   1, 3(4) ;  Return right operand back into register 1
794 : SUB  1, 2, 1 ;  left - right for less-than check
795 : JLT  1, 2(7) ;  If R1 < 0, jump to true
796 : LDC  1, 0(0) ;  false
797 : LDA  7, 1(7) ;  skip setting true
798 : LDC  1, 1(0) ;  true
799 : JEQ  1, 819(0) ;  If condition is false, jump to ELSE
800 : LDC  1, 2(0) ;  Load integer-literal value into register 1
801 : ST   1, 3(4) ;  Store right operand result into return value slot
802 : LD   1, 1(5) ;  Load parameter 'n' into R1
803 : ADD  2, 1, 0 ;  Move left operand to register 2
804 : LD   1, 3(4) ;  Return right operand back into register 1
805 : DIV  1, 2, 1 ;  R1 = left / right
806 : ADD  3, 1, 0 ;  Move right operand to register 3
807 : LDC  1, 2(0) ;  Load integer-literal value into register 1
808 : ADD  2, 1, 0 ;  Move left operand to register 2
809 : ADD  1, 3, 0 ;  Move right operand to register 1
810 : MUL  1, 2, 1 ;  R1 = left * right
811 : ADD  2, 1, 0 ;  Move left operand to register 2
812 : LD   1, 1(5) ;  Load parameter 'n' into R1
813 : SUB  1, 2, 1 ;  left - right for less-than check
814 : JLT  1, 2(7) ;  If R1 < 0, jump to true
815 : LDC  1, 0(0) ;  false
816 : LDA  7, 1(7) ;  skip setting true
817 : LDC  1, 1(0) ;  true
818 : LDA  7, 831(0) ;  Skip ELSE block
819 : LDA 4, 3(5) ; Base of callee frame
820 : LD   1, 1(5) ;  Load parameter 'n' into R1
821 : SUB  1, 0, 1 ;  Negate value in R1
822 : ST 1, 1(4) ; Store argument 0 in callee
823 : LDA 6, 827(0) ; Return address
824 : ST 6, 0(4) ; Store return in callee frame
825 : ADD 5, 4, 0 ; Push callee frame
826 : LDA 7, 789(0) ; Call ODD
827 : LD   1, 2(5) ;  Load function result
828 : LDC   2, 3(0) ;  Caller frame size
829 : SUB   5, 5, 2 ;  Pop back to caller
830 : SUB   4, 4, 2 ;  Pop back to caller
831 : ST   1, 2(5) ;  Store function result into stack frame
832 : LD   6, 0(5) ;  Load return address
833 : LDA  7, 0(6) ;  Return to caller
834 : LDC  1, 0(0) ;  Load integer-literal value into register 1
835 : ST   1, 3(4) ;  Store right operand result into return value slot
836 : LD   1, 2(5) ;  Load parameter 'n' into R1
837 : ADD  2, 1, 0 ;  Move left operand to register 2
838 : LD   1, 3(4) ;  Return right operand back into register 1
839 : SUB  1, 2, 1 ;  left - right for equality check
840 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
841 : LDC  1, 0(0) ;  false
842 : LDA  7, 1(7) ;  skip setting true
843 : LDC  1, 1(0) ;  true
844 : JEQ  1, 847(0) ;  If condition is false, jump to ELSE
845 : LDC  1, 1(0) ;  Load integer-literal value into register 1
846 : LDA  7, 870(0) ;  Skip ELSE block
847 : LDA 4, 4(5) ; Base of callee frame
848 : LD   1, 1(5) ;  Load parameter 'm' into R1
849 : ST 1, 1(4) ; Store argument 0 in callee
850 : LDC  1, 1(0) ;  Load integer-literal value into register 1
851 : ST   1, 3(4) ;  Store right operand result into return value slot
852 : LD   1, 2(5) ;  Load parameter 'n' into R1
853 : ADD  2, 1, 0 ;  Move left operand to register 2
854 : LD   1, 3(4) ;  Return right operand back into register 1
855 : SUB  1, 2, 1 ;  R1 = left - right
856 : ST 1, 2(4) ; Store argument 1 in callee
857 : LDA 6, 861(0) ; Return address
858 : ST 6, 0(4) ; Store return in callee frame
859 : ADD 5, 4, 0 ; Push callee frame
860 : LDA 7, 834(0) ; Call EXP
861 : LD   1, 3(5) ;  Load function result
862 : LDC   2, 4(0) ;  Caller frame size
863 : SUB   5, 5, 2 ;  Pop back to caller
864 : SUB   4, 4, 2 ;  Pop back to caller
865 : ADD  3, 1, 0 ;  Move right operand to register 3
866 : LD   1, 1(5) ;  Load parameter 'm' into R1
867 : ADD  2, 1, 0 ;  Move left operand to register 2
868 : ADD  1, 3, 0 ;  Move right operand to register 1
869 : MUL  1, 2, 1 ;  R1 = left * right
870 : ST   1, 3(5) ;  Store function result into stack frame
871 : LD   6, 0(5) ;  Load return address
872 : LDA  7, 0(6) ;  Return to caller
873 : LD   1, 2(5) ;  Load parameter 'n' into R1
874 : ST   1, 3(4) ;  Store right operand result into return value slot
875 : LD   1, 1(5) ;  Load parameter 'm' into R1
876 : ADD  2, 1, 0 ;  Move left operand to register 2
877 : LD   1, 3(4) ;  Return right operand back into register 1
878 : DIV  1, 2, 1 ;  R1 = left / right
879 : ADD  3, 1, 0 ;  Move right operand to register 3
880 : LD   1, 2(5) ;  Load parameter 'n' into R1
881 : ADD  2, 1, 0 ;  Move left operand to register 2
882 : ADD  1, 3, 0 ;  Move right operand to register 1
883 : MUL  1, 2, 1 ;  R1 = left * right
884 : ADD  3, 1, 0 ;  Move right operand to register 3
885 : LD   1, 1(5) ;  Load parameter 'm' into R1
886 : ADD  2, 1, 0 ;  Move left operand to register 2
887 : ADD  1, 3, 0 ;  Move right operand to register 1
888 : SUB  1, 2, 1 ;  R1 = left - right
889 : ST   1, 3(5) ;  Store function result into stack frame
890 : LD   6, 0(5) ;  Load return address
891 : LDA  7, 0(6) ;  Return to caller
