0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
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
12 : LDA 4, 3(5) ; Base of callee frame
13 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 202(0) ; Call SQRT
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : LDA 4, 3(5) ; Base of callee frame
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return addr in callee frame
26 : ADD 5, 4, 0 ; Push new frame
27 : LDA 7, 9(0) ; Call print
28 : LDC 2, 3(0) ; Caller frame size
29 : SUB 5, 5, 2 ; Pop frame
30 : LDA 4, 3(5) ; Base of callee frame
31 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 220(0) ; Call ODD
37 : LD   1, 2(5) ;  Load function result
38 : LDC   2, 3(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s frame
42 : LD   1, 2(5) ;  Load return value into register 1
43 : LD  6, 0(5) ;  Load return address for main function into register 6
44 : LDA  7, 0(6) ;  Jump to return address of main function
45 : LDA 4, 4(5) ; Base of callee frame
46 : LD   1, 4(5) ;  Load parameter 'mid' into R1
47 : ST   1, 3(4) ;  Store right operand result into return value slot
48 : LD   1, 4(5) ;  Load parameter 'mid' into R1
49 : ADD  2, 1, 0 ;  Move left operand to register 2
50 : LD   1, 3(4) ;  Return right operand back into register 1
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : ST 1, 1(4) ; Store argument 0 in callee
53 : LD   1, 1(5) ;  Load parameter 'n' into R1
54 : ST 1, 2(4) ; Store argument 1 in callee
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame
58 : LDA 7, 525(0) ; Call LE
59 : LD   1, 3(5) ;  Load function result
60 : LDC   2, 4(0) ;  Caller frame size
61 : SUB   5, 5, 2 ;  Pop back to caller
62 : SUB   4, 4, 2 ;  Pop back to caller
63 : JEQ  1, 80(0) ;  If condition is false, jump to ELSE
64 : LDA 4, 5(5) ; Base of callee frame
65 : LD   1, 1(5) ;  Load parameter 'n' into R1
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD   1, 4(5) ;  Load parameter 'mid' into R1
68 : ST 1, 2(4) ; Store argument 1 in callee
69 : LD   1, 3(5) ;  Load parameter 'high' into R1
70 : ST 1, 3(4) ; Store argument 2 in callee
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame
74 : LDA 7, 98(0) ; Call SQRTSEARCH
75 : LD   1, 4(5) ;  Load function result
76 : LDC   2, 5(0) ;  Caller frame size
77 : SUB   5, 5, 2 ;  Pop back to caller
78 : SUB   4, 4, 2 ;  Pop back to caller
79 : LDA  7, 95(0) ;  Skip ELSE block
80 : LDA 4, 5(5) ; Base of callee frame
81 : LD   1, 1(5) ;  Load parameter 'n' into R1
82 : ST 1, 1(4) ; Store argument 0 in callee
83 : LD   1, 2(5) ;  Load parameter 'low' into R1
84 : ST 1, 2(4) ; Store argument 1 in callee
85 : LD   1, 4(5) ;  Load parameter 'mid' into R1
86 : ST 1, 3(4) ; Store argument 2 in callee
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return in callee frame
89 : ADD 5, 4, 0 ; Push callee frame
90 : LDA 7, 98(0) ; Call SQRTSEARCH
91 : LD   1, 4(5) ;  Load function result
92 : LDC   2, 5(0) ;  Caller frame size
93 : SUB   5, 5, 2 ;  Pop back to caller
94 : SUB   4, 4, 2 ;  Pop back to caller
95 : ST   1, 5(5) ;  Store function result into stack frame
96 : LD   6, 0(5) ;  Load return address
97 : LDA  7, 0(6) ;  Return to caller
98 : LDA 4, 4(5) ; Base of callee frame
99 : LD   1, 3(5) ;  Load parameter 'high' into R1
100 : ST 1, 1(4) ; Store argument 0 in callee
101 : LDC  1, 1(0) ;  Load integer-literal value into register 1
102 : ST   1, 3(4) ;  Store right operand result into return value slot
103 : LD   1, 2(5) ;  Load parameter 'low' into R1
104 : ADD  2, 1, 0 ;  Move left operand to register 2
105 : LD   1, 3(4) ;  Return right operand back into register 1
106 : ADD  1, 2, 1 ;  R1 = left + right
107 : ST 1, 2(4) ; Store argument 1 in callee
108 : LDA 6, 112(0) ; Return address
109 : ST 6, 0(4) ; Store return in callee frame
110 : ADD 5, 4, 0 ; Push callee frame
111 : LDA 7, 525(0) ; Call LE
112 : LD   1, 3(5) ;  Load function result
113 : LDC   2, 4(0) ;  Caller frame size
114 : SUB   5, 5, 2 ;  Pop back to caller
115 : SUB   4, 4, 2 ;  Pop back to caller
116 : JEQ  1, 167(0) ;  If condition is false, jump to ELSE
117 : LDA 4, 4(5) ; Base of callee frame
118 : LDA 4, 4(5) ; Base of callee frame
119 : LD   1, 2(5) ;  Load parameter 'low' into R1
120 : ST 1, 1(4) ; Store argument 0 in callee
121 : LD   1, 2(5) ;  Load parameter 'low' into R1
122 : ST 1, 2(4) ; Store argument 1 in callee
123 : LDA 6, 127(0) ; Return address
124 : ST 6, 0(4) ; Store return in callee frame
125 : ADD 5, 4, 0 ; Push callee frame
126 : LDA 7, 445(0) ; Call TIMES
127 : LD   1, 3(5) ;  Load function result
128 : LDC   2, 4(0) ;  Caller frame size
129 : SUB   5, 5, 2 ;  Pop back to caller
130 : SUB   4, 4, 2 ;  Pop back to caller
131 : ADD  3, 1, 0 ;  Move right operand to register 3
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : ADD  2, 1, 0 ;  Move left operand to register 2
134 : ADD  1, 3, 0 ;  Move right operand to register 1
135 : SUB  1, 2, 1 ;  R1 = left - right
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LDA 4, 4(5) ; Base of callee frame
138 : LD   1, 3(5) ;  Load parameter 'high' into R1
139 : ST 1, 1(4) ; Store argument 0 in callee
140 : LD   1, 3(5) ;  Load parameter 'high' into R1
141 : ST 1, 2(4) ; Store argument 1 in callee
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return in callee frame
144 : ADD 5, 4, 0 ; Push callee frame
145 : LDA 7, 445(0) ; Call TIMES
146 : LD   1, 3(5) ;  Load function result
147 : LDC   2, 4(0) ;  Caller frame size
148 : SUB   5, 5, 2 ;  Pop back to caller
149 : SUB   4, 4, 2 ;  Pop back to caller
150 : ADD  2, 1, 0 ;  Move left operand to register 2
151 : LD   1, 1(5) ;  Load parameter 'n' into R1
152 : SUB  1, 2, 1 ;  R1 = left - right
153 : ST 1, 2(4) ; Store argument 1 in callee
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame
157 : LDA 7, 525(0) ; Call LE
158 : LD   1, 3(5) ;  Load function result
159 : LDC   2, 4(0) ;  Caller frame size
160 : SUB   5, 5, 2 ;  Pop back to caller
161 : SUB   4, 4, 2 ;  Pop back to caller
162 : JEQ  1, 165(0) ;  If condition is false, jump to ELSE
163 : LD   1, 2(5) ;  Load parameter 'low' into R1
164 : LDA  7, 166(0) ;  Skip ELSE block
165 : LD   1, 3(5) ;  Load parameter 'high' into R1
166 : LDA  7, 199(0) ;  Skip ELSE block
167 : LDA 4, 6(5) ; Base of callee frame
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ST 1, 1(4) ; Store argument 0 in callee
170 : LD   1, 2(5) ;  Load parameter 'low' into R1
171 : ST 1, 2(4) ; Store argument 1 in callee
172 : LD   1, 3(5) ;  Load parameter 'high' into R1
173 : ST 1, 3(4) ; Store argument 2 in callee
174 : LDA 4, 4(5) ; Base of callee frame
175 : LD   1, 2(5) ;  Load parameter 'low' into R1
176 : ST 1, 1(4) ; Store argument 0 in callee
177 : LD   1, 3(5) ;  Load parameter 'high' into R1
178 : ST 1, 2(4) ; Store argument 1 in callee
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return in callee frame
181 : ADD 5, 4, 0 ; Push callee frame
182 : LDA 7, 463(0) ; Call PLUS
183 : LD   1, 3(5) ;  Load function result
184 : LDC   2, 4(0) ;  Caller frame size
185 : SUB   5, 5, 2 ;  Pop back to caller
186 : SUB   4, 4, 2 ;  Pop back to caller
187 : ADD  2, 1, 0 ;  Move left operand to register 2
188 : LDC  1, 2(0) ;  Load integer-literal value into register 1
189 : DIV  1, 2, 1 ;  R1 = left / right
190 : ST 1, 4(4) ; Store argument 3 in callee
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return in callee frame
193 : ADD 5, 4, 0 ; Push callee frame
194 : LDA 7, 45(0) ; Call SQRTSPLIT
195 : LD   1, 5(5) ;  Load function result
196 : LDC   2, 6(0) ;  Caller frame size
197 : SUB   5, 5, 2 ;  Pop back to caller
198 : SUB   4, 4, 2 ;  Pop back to caller
199 : ST   1, 4(5) ;  Store function result into stack frame
200 : LD   6, 0(5) ;  Load return address
201 : LDA  7, 0(6) ;  Return to caller
202 : LDA 4, 5(5) ; Base of callee frame
203 : LD   1, 1(5) ;  Load parameter 'n' into R1
204 : ST 1, 1(4) ; Store argument 0 in callee
205 : LDC  1, 0(0) ;  Load integer-literal value into register 1
206 : ST 1, 2(4) ; Store argument 1 in callee
207 : LD   1, 1(5) ;  Load parameter 'n' into R1
208 : ST 1, 3(4) ; Store argument 2 in callee
209 : LDA 6, 213(0) ; Return address
210 : ST 6, 0(4) ; Store return in callee frame
211 : ADD 5, 4, 0 ; Push callee frame
212 : LDA 7, 98(0) ; Call SQRTSEARCH
213 : LD   1, 4(5) ;  Load function result
214 : LDC   2, 5(0) ;  Caller frame size
215 : SUB   5, 5, 2 ;  Pop back to caller
216 : SUB   4, 4, 2 ;  Pop back to caller
217 : ST   1, 2(5) ;  Store function result into stack frame
218 : LD   6, 0(5) ;  Load return address
219 : LDA  7, 0(6) ;  Return to caller
220 : LDA 4, 4(5) ; Base of callee frame
221 : LDC  1, 0(0) ;  Load integer-literal value into register 1
222 : ST 1, 1(4) ; Store argument 0 in callee
223 : LD   1, 1(5) ;  Load parameter 'n' into R1
224 : ST 1, 2(4) ; Store argument 1 in callee
225 : LDA 6, 229(0) ; Return address
226 : ST 6, 0(4) ; Store return in callee frame
227 : ADD 5, 4, 0 ; Push callee frame
228 : LDA 7, 525(0) ; Call LE
229 : LD   1, 3(5) ;  Load function result
230 : LDC   2, 4(0) ;  Caller frame size
231 : SUB   5, 5, 2 ;  Pop back to caller
232 : SUB   4, 4, 2 ;  Pop back to caller
233 : JEQ  1, 275(0) ;  If condition is false, jump to ELSE
234 : LDA 4, 4(5) ; Base of callee frame
235 : LD   1, 1(5) ;  Load parameter 'n' into R1
236 : ST 1, 1(4) ; Store argument 0 in callee
237 : LDA 4, 4(5) ; Base of callee frame
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : ST 1, 1(4) ; Store argument 0 in callee
240 : LDC  1, 2(0) ;  Load integer-literal value into register 1
241 : ST 1, 2(4) ; Store argument 1 in callee
242 : LDA 6, 246(0) ; Return address
243 : ST 6, 0(4) ; Store return in callee frame
244 : ADD 5, 4, 0 ; Push callee frame
245 : LDA 7, 436(0) ; Call DIV
246 : LD   1, 3(5) ;  Load function result
247 : LDC   2, 4(0) ;  Caller frame size
248 : SUB   5, 5, 2 ;  Pop back to caller
249 : SUB   4, 4, 2 ;  Pop back to caller
250 : ADD  2, 1, 0 ;  Move left operand to register 2
251 : LDA 4, 4(5) ; Base of callee frame
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : ST 1, 1(4) ; Store argument 0 in callee
254 : LDC  1, 2(0) ;  Load integer-literal value into register 1
255 : ST 1, 2(4) ; Store argument 1 in callee
256 : LDA 6, 260(0) ; Return address
257 : ST 6, 0(4) ; Store return in callee frame
258 : ADD 5, 4, 0 ; Push callee frame
259 : LDA 7, 436(0) ; Call DIV
260 : LD   1, 3(5) ;  Load function result
261 : LDC   2, 4(0) ;  Caller frame size
262 : SUB   5, 5, 2 ;  Pop back to caller
263 : SUB   4, 4, 2 ;  Pop back to caller
264 : ADD  1, 2, 1 ;  R1 = left + right
265 : ST 1, 2(4) ; Store argument 1 in callee
266 : LDA 6, 270(0) ; Return address
267 : ST 6, 0(4) ; Store return in callee frame
268 : ADD 5, 4, 0 ; Push callee frame
269 : LDA 7, 489(0) ; Call GT
270 : LD   1, 3(5) ;  Load function result
271 : LDC   2, 4(0) ;  Caller frame size
272 : SUB   5, 5, 2 ;  Pop back to caller
273 : SUB   4, 4, 2 ;  Pop back to caller
274 : LDA  7, 345(0) ;  Skip ELSE block
275 : LDA 4, 4(5) ; Base of callee frame
276 : LDA 4, 3(5) ; Base of callee frame
277 : LD   1, 1(5) ;  Load parameter 'n' into R1
278 : ST 1, 1(4) ; Store argument 0 in callee
279 : LDA 6, 283(0) ; Return address
280 : ST 6, 0(4) ; Store return in callee frame
281 : ADD 5, 4, 0 ; Push callee frame
282 : LDA 7, 431(0) ; Call NEG
283 : LD   1, 2(5) ;  Load function result
284 : LDC   2, 3(0) ;  Caller frame size
285 : SUB   5, 5, 2 ;  Pop back to caller
286 : SUB   4, 4, 2 ;  Pop back to caller
287 : ST 1, 1(4) ; Store argument 0 in callee
288 : LDA 4, 4(5) ; Base of callee frame
289 : LDA 4, 3(5) ; Base of callee frame
290 : LD   1, 1(5) ;  Load parameter 'n' into R1
291 : ST 1, 1(4) ; Store argument 0 in callee
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return in callee frame
294 : ADD 5, 4, 0 ; Push callee frame
295 : LDA 7, 431(0) ; Call NEG
296 : LD   1, 2(5) ;  Load function result
297 : LDC   2, 3(0) ;  Caller frame size
298 : SUB   5, 5, 2 ;  Pop back to caller
299 : SUB   4, 4, 2 ;  Pop back to caller
300 : ST 1, 1(4) ; Store argument 0 in callee
301 : LDC  1, 2(0) ;  Load integer-literal value into register 1
302 : ST 1, 2(4) ; Store argument 1 in callee
303 : LDA 6, 307(0) ; Return address
304 : ST 6, 0(4) ; Store return in callee frame
305 : ADD 5, 4, 0 ; Push callee frame
306 : LDA 7, 436(0) ; Call DIV
307 : LD   1, 3(5) ;  Load function result
308 : LDC   2, 4(0) ;  Caller frame size
309 : SUB   5, 5, 2 ;  Pop back to caller
310 : SUB   4, 4, 2 ;  Pop back to caller
311 : ADD  2, 1, 0 ;  Move left operand to register 2
312 : LDA 4, 4(5) ; Base of callee frame
313 : LDA 4, 3(5) ; Base of callee frame
314 : LD   1, 1(5) ;  Load parameter 'n' into R1
315 : ST 1, 1(4) ; Store argument 0 in callee
316 : LDA 6, 320(0) ; Return address
317 : ST 6, 0(4) ; Store return in callee frame
318 : ADD 5, 4, 0 ; Push callee frame
319 : LDA 7, 431(0) ; Call NEG
320 : LD   1, 2(5) ;  Load function result
321 : LDC   2, 3(0) ;  Caller frame size
322 : SUB   5, 5, 2 ;  Pop back to caller
323 : SUB   4, 4, 2 ;  Pop back to caller
324 : ST 1, 1(4) ; Store argument 0 in callee
325 : LDC  1, 2(0) ;  Load integer-literal value into register 1
326 : ST 1, 2(4) ; Store argument 1 in callee
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return in callee frame
329 : ADD 5, 4, 0 ; Push callee frame
330 : LDA 7, 436(0) ; Call DIV
331 : LD   1, 3(5) ;  Load function result
332 : LDC   2, 4(0) ;  Caller frame size
333 : SUB   5, 5, 2 ;  Pop back to caller
334 : SUB   4, 4, 2 ;  Pop back to caller
335 : ADD  1, 2, 1 ;  R1 = left + right
336 : ST 1, 2(4) ; Store argument 1 in callee
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return in callee frame
339 : ADD 5, 4, 0 ; Push callee frame
340 : LDA 7, 489(0) ; Call GT
341 : LD   1, 3(5) ;  Load function result
342 : LDC   2, 4(0) ;  Caller frame size
343 : SUB   5, 5, 2 ;  Pop back to caller
344 : SUB   4, 4, 2 ;  Pop back to caller
345 : ST   1, 2(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LDC  1, 0(0) ;  Load integer-literal value into register 1
349 : ST   1, 3(4) ;  Store right operand result into return value slot
350 : LD   1, 2(5) ;  Load parameter 'n' into R1
351 : ADD  2, 1, 0 ;  Move left operand to register 2
352 : LD   1, 3(4) ;  Return right operand back into register 1
353 : SUB  1, 2, 1 ;  left - right for equality check
354 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
355 : LDC  1, 0(0) ;  false
356 : LDA  7, 1(7) ;  skip setting true
357 : LDC  1, 1(0) ;  true
358 : JEQ  1, 361(0) ;  If condition is false, jump to ELSE
359 : LDC  1, 1(0) ;  Load integer-literal value into register 1
360 : LDA  7, 384(0) ;  Skip ELSE block
361 : LDA 4, 4(5) ; Base of callee frame
362 : LD   1, 1(5) ;  Load parameter 'm' into R1
363 : ST 1, 1(4) ; Store argument 0 in callee
364 : LDC  1, 1(0) ;  Load integer-literal value into register 1
365 : ST   1, 3(4) ;  Store right operand result into return value slot
366 : LD   1, 2(5) ;  Load parameter 'n' into R1
367 : ADD  2, 1, 0 ;  Move left operand to register 2
368 : LD   1, 3(4) ;  Return right operand back into register 1
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
379 : ADD  3, 1, 0 ;  Move right operand to register 3
380 : LD   1, 1(5) ;  Load parameter 'm' into R1
381 : ADD  2, 1, 0 ;  Move left operand to register 2
382 : ADD  1, 3, 0 ;  Move right operand to register 1
383 : MUL  1, 2, 1 ;  R1 = left * right
384 : ST   1, 3(5) ;  Store function result into stack frame
385 : LD   6, 0(5) ;  Load return address
386 : LDA  7, 0(6) ;  Return to caller
387 : LD   1, 2(5) ;  Load parameter 'n' into R1
388 : ST   1, 3(4) ;  Store right operand result into return value slot
389 : LD   1, 1(5) ;  Load parameter 'm' into R1
390 : ADD  2, 1, 0 ;  Move left operand to register 2
391 : LD   1, 3(4) ;  Return right operand back into register 1
392 : DIV  1, 2, 1 ;  R1 = left / right
393 : ADD  2, 1, 0 ;  Move left operand to register 2
394 : LD   1, 2(5) ;  Load parameter 'n' into R1
395 : MUL  1, 2, 1 ;  R1 = left * right
396 : ADD  3, 1, 0 ;  Move right operand to register 3
397 : LD   1, 1(5) ;  Load parameter 'm' into R1
398 : ADD  2, 1, 0 ;  Move left operand to register 2
399 : ADD  1, 3, 0 ;  Move right operand to register 1
400 : SUB  1, 2, 1 ;  R1 = left - right
401 : ST   1, 3(5) ;  Store function result into stack frame
402 : LD   6, 0(5) ;  Load return address
403 : LDA  7, 0(6) ;  Return to caller
404 : LD   1, 1(5) ;  Load parameter 'n' into R1
405 : ST   1, 3(4) ;  Store right operand result into return value slot
406 : LDC  1, 0(0) ;  Load integer-literal value into register 1
407 : ADD  2, 1, 0 ;  Move left operand to register 2
408 : LD   1, 3(4) ;  Return right operand back into register 1
409 : SUB  1, 2, 1 ;  left - right for less-than check
410 : JLT  1, 2(7) ;  If R1 < 0, jump to true
411 : LDC  1, 0(0) ;  false
412 : LDA  7, 1(7) ;  skip setting true
413 : LDC  1, 1(0) ;  true
414 : JEQ  1, 417(0) ;  If condition is false, jump to ELSE
415 : LD   1, 1(5) ;  Load parameter 'n' into R1
416 : LDA  7, 428(0) ;  Skip ELSE block
417 : LDA 4, 3(5) ; Base of callee frame
418 : LD   1, 1(5) ;  Load parameter 'n' into R1
419 : ST 1, 1(4) ; Store argument 0 in callee
420 : LDA 6, 424(0) ; Return address
421 : ST 6, 0(4) ; Store return in callee frame
422 : ADD 5, 4, 0 ; Push callee frame
423 : LDA 7, 431(0) ; Call NEG
424 : LD   1, 2(5) ;  Load function result
425 : LDC   2, 3(0) ;  Caller frame size
426 : SUB   5, 5, 2 ;  Pop back to caller
427 : SUB   4, 4, 2 ;  Pop back to caller
428 : ST   1, 2(5) ;  Store function result into stack frame
429 : LD   6, 0(5) ;  Load return address
430 : LDA  7, 0(6) ;  Return to caller
431 : LD   1, 1(5) ;  Load parameter 'n' into R1
432 : SUB  1, 0, 1 ;  Negate value in R1
433 : ST   1, 2(5) ;  Store function result into stack frame
434 : LD   6, 0(5) ;  Load return address
435 : LDA  7, 0(6) ;  Return to caller
436 : LD   1, 2(5) ;  Load parameter 'q' into R1
437 : ST   1, 3(4) ;  Store right operand result into return value slot
438 : LD   1, 1(5) ;  Load parameter 'p' into R1
439 : ADD  2, 1, 0 ;  Move left operand to register 2
440 : LD   1, 3(4) ;  Return right operand back into register 1
441 : DIV  1, 2, 1 ;  R1 = left / right
442 : ST   1, 3(5) ;  Store function result into stack frame
443 : LD   6, 0(5) ;  Load return address
444 : LDA  7, 0(6) ;  Return to caller
445 : LD   1, 2(5) ;  Load parameter 'q' into R1
446 : ST   1, 3(4) ;  Store right operand result into return value slot
447 : LD   1, 1(5) ;  Load parameter 'p' into R1
448 : ADD  2, 1, 0 ;  Move left operand to register 2
449 : LD   1, 3(4) ;  Return right operand back into register 1
450 : MUL  1, 2, 1 ;  R1 = left * right
451 : ST   1, 3(5) ;  Store function result into stack frame
452 : LD   6, 0(5) ;  Load return address
453 : LDA  7, 0(6) ;  Return to caller
454 : LD   1, 2(5) ;  Load parameter 'q' into R1
455 : ST   1, 3(4) ;  Store right operand result into return value slot
456 : LD   1, 1(5) ;  Load parameter 'p' into R1
457 : ADD  2, 1, 0 ;  Move left operand to register 2
458 : LD   1, 3(4) ;  Return right operand back into register 1
459 : SUB  1, 2, 1 ;  R1 = left - right
460 : ST   1, 3(5) ;  Store function result into stack frame
461 : LD   6, 0(5) ;  Load return address
462 : LDA  7, 0(6) ;  Return to caller
463 : LD   1, 2(5) ;  Load parameter 'q' into R1
464 : ST   1, 3(4) ;  Store right operand result into return value slot
465 : LD   1, 1(5) ;  Load parameter 'p' into R1
466 : ADD  2, 1, 0 ;  Move left operand to register 2
467 : LD   1, 3(4) ;  Return right operand back into register 1
468 : ADD  1, 2, 1 ;  R1 = left + right
469 : ST   1, 3(5) ;  Store function result into stack frame
470 : LD   6, 0(5) ;  Load return address
471 : LDA  7, 0(6) ;  Return to caller
472 : LD   1, 1(5) ;  Load parameter 'p' into R1
473 : JEQ  1, 476(0) ;  If condition is false, jump to ELSE
474 : LD   1, 2(5) ;  Load parameter 'q' into R1
475 : LDA  7, 477(0) ;  Skip ELSE block
476 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
477 : ST   1, 3(5) ;  Store function result into stack frame
478 : LD   6, 0(5) ;  Load return address
479 : LDA  7, 0(6) ;  Return to caller
480 : LD   1, 2(5) ;  Load parameter 'q' into R1
481 : ST   1, 3(4) ;  Store right operand result into return value slot
482 : LD   1, 1(5) ;  Load parameter 'p' into R1
483 : ADD  2, 1, 0 ;  Move left operand to register 2
484 : LD   1, 3(4) ;  Return right operand back into register 1
485 : ADD  1, 2, 1 ;  R1 = left OR right
486 : ST   1, 3(5) ;  Store function result into stack frame
487 : LD   6, 0(5) ;  Load return address
488 : LDA  7, 0(6) ;  Return to caller
489 : LDA 4, 4(5) ; Base of callee frame
490 : LD   1, 1(5) ;  Load parameter 'p' into R1
491 : ST 1, 1(4) ; Store argument 0 in callee
492 : LD   1, 2(5) ;  Load parameter 'q' into R1
493 : ST 1, 2(4) ; Store argument 1 in callee
494 : LDA 6, 498(0) ; Return address
495 : ST 6, 0(4) ; Store return in callee frame
496 : ADD 5, 4, 0 ; Push callee frame
497 : LDA 7, 525(0) ; Call LE
498 : LD   1, 3(5) ;  Load function result
499 : LDC   2, 4(0) ;  Caller frame size
500 : SUB   5, 5, 2 ;  Pop back to caller
501 : SUB   4, 4, 2 ;  Pop back to caller
502 : LDC  2, 1(0) ;  Load 1 into R2
503 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
504 : ST   1, 3(5) ;  Store function result into stack frame
505 : LD   6, 0(5) ;  Load return address
506 : LDA  7, 0(6) ;  Return to caller
507 : LDA 4, 4(5) ; Base of callee frame
508 : LD   1, 1(5) ;  Load parameter 'p' into R1
509 : ST 1, 1(4) ; Store argument 0 in callee
510 : LD   1, 2(5) ;  Load parameter 'q' into R1
511 : ST 1, 2(4) ; Store argument 1 in callee
512 : LDA 6, 516(0) ; Return address
513 : ST 6, 0(4) ; Store return in callee frame
514 : ADD 5, 4, 0 ; Push callee frame
515 : LDA 7, 587(0) ; Call LT
516 : LD   1, 3(5) ;  Load function result
517 : LDC   2, 4(0) ;  Caller frame size
518 : SUB   5, 5, 2 ;  Pop back to caller
519 : SUB   4, 4, 2 ;  Pop back to caller
520 : LDC  2, 1(0) ;  Load 1 into R2
521 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
522 : ST   1, 3(5) ;  Store function result into stack frame
523 : LD   6, 0(5) ;  Load return address
524 : LDA  7, 0(6) ;  Return to caller
525 : LDA 4, 4(5) ; Base of callee frame
526 : LD   1, 1(5) ;  Load parameter 'p' into R1
527 : ST 1, 1(4) ; Store argument 0 in callee
528 : LD   1, 2(5) ;  Load parameter 'q' into R1
529 : ST 1, 2(4) ; Store argument 1 in callee
530 : LDA 6, 534(0) ; Return address
531 : ST 6, 0(4) ; Store return in callee frame
532 : ADD 5, 4, 0 ; Push callee frame
533 : LDA 7, 587(0) ; Call LT
534 : LD   1, 3(5) ;  Load function result
535 : LDC   2, 4(0) ;  Caller frame size
536 : SUB   5, 5, 2 ;  Pop back to caller
537 : SUB   4, 4, 2 ;  Pop back to caller
538 : ADD  2, 1, 0 ;  Move left operand to register 2
539 : LDA 4, 4(5) ; Base of callee frame
540 : LD   1, 1(5) ;  Load parameter 'p' into R1
541 : ST 1, 1(4) ; Store argument 0 in callee
542 : LD   1, 2(5) ;  Load parameter 'q' into R1
543 : ST 1, 2(4) ; Store argument 1 in callee
544 : LDA 6, 548(0) ; Return address
545 : ST 6, 0(4) ; Store return in callee frame
546 : ADD 5, 4, 0 ; Push callee frame
547 : LDA 7, 574(0) ; Call EQ
548 : LD   1, 3(5) ;  Load function result
549 : LDC   2, 4(0) ;  Caller frame size
550 : SUB   5, 5, 2 ;  Pop back to caller
551 : SUB   4, 4, 2 ;  Pop back to caller
552 : ADD  1, 2, 1 ;  R1 = left OR right
553 : ST   1, 3(5) ;  Store function result into stack frame
554 : LD   6, 0(5) ;  Load return address
555 : LDA  7, 0(6) ;  Return to caller
556 : LDA 4, 4(5) ; Base of callee frame
557 : LD   1, 1(5) ;  Load parameter 'p' into R1
558 : ST 1, 1(4) ; Store argument 0 in callee
559 : LD   1, 2(5) ;  Load parameter 'q' into R1
560 : ST 1, 2(4) ; Store argument 1 in callee
561 : LDA 6, 565(0) ; Return address
562 : ST 6, 0(4) ; Store return in callee frame
563 : ADD 5, 4, 0 ; Push callee frame
564 : LDA 7, 574(0) ; Call EQ
565 : LD   1, 3(5) ;  Load function result
566 : LDC   2, 4(0) ;  Caller frame size
567 : SUB   5, 5, 2 ;  Pop back to caller
568 : SUB   4, 4, 2 ;  Pop back to caller
569 : LDC  2, 1(0) ;  Load 1 into R2
570 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
571 : ST   1, 3(5) ;  Store function result into stack frame
572 : LD   6, 0(5) ;  Load return address
573 : LDA  7, 0(6) ;  Return to caller
574 : LD   1, 2(5) ;  Load parameter 'q' into R1
575 : ST   1, 3(4) ;  Store right operand result into return value slot
576 : LD   1, 1(5) ;  Load parameter 'p' into R1
577 : ADD  2, 1, 0 ;  Move left operand to register 2
578 : LD   1, 3(4) ;  Return right operand back into register 1
579 : SUB  1, 2, 1 ;  left - right for equality check
580 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
581 : LDC  1, 0(0) ;  false
582 : LDA  7, 1(7) ;  skip setting true
583 : LDC  1, 1(0) ;  true
584 : ST   1, 3(5) ;  Store function result into stack frame
585 : LD   6, 0(5) ;  Load return address
586 : LDA  7, 0(6) ;  Return to caller
587 : LD   1, 2(5) ;  Load parameter 'q' into R1
588 : ST   1, 3(4) ;  Store right operand result into return value slot
589 : LD   1, 1(5) ;  Load parameter 'p' into R1
590 : ADD  2, 1, 0 ;  Move left operand to register 2
591 : LD   1, 3(4) ;  Return right operand back into register 1
592 : SUB  1, 2, 1 ;  left - right for less-than check
593 : JLT  1, 2(7) ;  If R1 < 0, jump to true
594 : LDC  1, 0(0) ;  false
595 : LDA  7, 1(7) ;  skip setting true
596 : LDC  1, 1(0) ;  true
597 : ST   1, 3(5) ;  Store function result into stack frame
598 : LD   6, 0(5) ;  Load return address
599 : LDA  7, 0(6) ;  Return to caller
600 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
601 : SUB  1, 0, 1 ;  Negate value in R1
602 : ADD  2, 1, 0 ;  Move left operand to register 2
603 : LDC  1, 1(0) ;  Load integer-literal value into register 1
604 : SUB  1, 2, 1 ;  R1 = left - right
605 : ST   1, 1(5) ;  Store function result into stack frame
606 : LD   6, 0(5) ;  Load return address
607 : LDA  7, 0(6) ;  Return to caller
608 : LDC  1, 2147483647(0) ;  Load integer-literal value into register 1
609 : ST   1, 1(5) ;  Store function result into stack frame
610 : LD   6, 0(5) ;  Load return address
611 : LDA  7, 0(6) ;  Return to caller
