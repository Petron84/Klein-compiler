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
13 : LDC  1, 10(0) ;  Load integer-literal value into register 1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC  1, 2(0) ;  Load integer-literal value into register 1
16 : ST   1, 3(4) ;  Store right operand result into return value slot
17 : LD   1, 1(5) ;  Load parameter 'length' into R1
18 : ADD  2, 1, 0 ;  Move left operand to register 2
19 : LD   1, 3(4) ;  Return right operand back into register 1
20 : DIV  1, 2, 1 ;  R1 = left / right
21 : ADD  2, 1, 0 ;  Move left operand to register 2
22 : LDC  1, 1(0) ;  Load integer-literal value into register 1
23 : SUB  1, 2, 1 ;  R1 = left - right
24 : ST 1, 2(4) ; Store argument 1 in callee
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 833(0) ; Call EXP
29 : LD   1, 3(5) ;  Load function result
30 : LDC   2, 4(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : SUB   4, 4, 2 ;  Pop back to caller
33 : ST 1, 1(4) ; Store argument 0 in callee
34 : LDC  1, 2(0) ;  Load integer-literal value into register 1
35 : ST   1, 3(4) ;  Store right operand result into return value slot
36 : LD   1, 1(5) ;  Load parameter 'length' into R1
37 : ADD  2, 1, 0 ;  Move left operand to register 2
38 : LD   1, 3(4) ;  Return right operand back into register 1
39 : DIV  1, 2, 1 ;  R1 = left / right
40 : ST 1, 2(4) ; Store argument 1 in callee
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return in callee frame
43 : ADD 5, 4, 0 ; Push callee frame
44 : LDA 7, 53(0) ; Call createLoop
45 : LD   1, 3(5) ;  Load function result
46 : LDC   2, 4(0) ;  Caller frame size
47 : SUB   5, 5, 2 ;  Pop back to caller
48 : SUB   4, 4, 2 ;  Pop back to caller
49 : ST 1, 2(5) ; Store result into caller’s frame
50 : LD   1, 2(5) ;  Load return value into register 1
51 : LD  6, 0(5) ;  Load return address for main function into register 6
52 : LDA  7, 0(6) ;  Jump to return address of main function
53 : LDA 4, 5(5) ; Base of callee frame
54 : LD   1, 1(5) ;  Load parameter 'a' into R1
55 : ST 1, 1(4) ; Store argument 0 in callee
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ST 1, 2(4) ; Store argument 1 in callee
58 : LD   1, 1(5) ;  Load parameter 'a' into R1
59 : ST   1, 3(4) ;  Store right operand result into return value slot
60 : LDC  1, 10(0) ;  Load integer-literal value into register 1
61 : ADD  2, 1, 0 ;  Move left operand to register 2
62 : LD   1, 3(4) ;  Return right operand back into register 1
63 : MUL  1, 2, 1 ;  R1 = left * right
64 : ST 1, 3(4) ; Store argument 2 in callee
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame
68 : LDA 7, 76(0) ; Call aLoop
69 : LD   1, 4(5) ;  Load function result
70 : LDC   2, 5(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
76 : LD   1, 3(5) ;  Load parameter 'upper' into R1
77 : ST   1, 3(4) ;  Store right operand result into return value slot
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ADD  2, 1, 0 ;  Move left operand to register 2
80 : LD   1, 3(4) ;  Return right operand back into register 1
81 : SUB  1, 2, 1 ;  left - right for less-than check
82 : JLT  1, 2(7) ;  If R1 < 0, jump to true
83 : LDC  1, 0(0) ;  false
84 : LDA  7, 1(7) ;  skip setting true
85 : LDC  1, 1(0) ;  true
86 : JEQ  1, 148(0) ;  If condition is false, jump to ELSE
87 : LDA 4, 6(5) ; Base of callee frame
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : ST 1, 1(4) ; Store argument 0 in callee
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : ST 1, 2(4) ; Store argument 1 in callee
92 : LD   1, 3(5) ;  Load parameter 'upper' into R1
93 : ST 1, 3(4) ; Store argument 2 in callee
94 : LDA 4, 4(5) ; Base of callee frame
95 : LD   1, 1(5) ;  Load parameter 'a' into R1
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LDC  1, 2(0) ;  Load integer-literal value into register 1
98 : ST 1, 2(4) ; Store argument 1 in callee
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 833(0) ; Call EXP
103 : LD   1, 3(5) ;  Load function result
104 : LDC   2, 4(0) ;  Caller frame size
105 : SUB   5, 5, 2 ;  Pop back to caller
106 : SUB   4, 4, 2 ;  Pop back to caller
107 : ADD  3, 1, 0 ;  Move right operand to register 3
108 : LDC  1, 4(0) ;  Load integer-literal value into register 1
109 : ADD  2, 1, 0 ;  Move left operand to register 2
110 : ADD  1, 3, 0 ;  Move right operand to register 1
111 : MUL  1, 2, 1 ;  R1 = left * right
112 : ADD  2, 1, 0 ;  Move left operand to register 2
113 : LDA 4, 4(5) ; Base of callee frame
114 : LDC  1, 10(0) ;  Load integer-literal value into register 1
115 : ST 1, 1(4) ; Store argument 0 in callee
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : ST 1, 2(4) ; Store argument 1 in callee
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame
121 : LDA 7, 833(0) ; Call EXP
122 : LD   1, 3(5) ;  Load function result
123 : LDC   2, 4(0) ;  Caller frame size
124 : SUB   5, 5, 2 ;  Pop back to caller
125 : SUB   4, 4, 2 ;  Pop back to caller
126 : ADD  3, 1, 0 ;  Move right operand to register 3
127 : LDC  1, 4(0) ;  Load integer-literal value into register 1
128 : ADD  2, 1, 0 ;  Move left operand to register 2
129 : ADD  1, 3, 0 ;  Move right operand to register 1
130 : MUL  1, 2, 1 ;  R1 = left * right
131 : ADD  2, 1, 0 ;  Move left operand to register 2
132 : LD   1, 1(5) ;  Load parameter 'a' into R1
133 : MUL  1, 2, 1 ;  R1 = left * right
134 : ADD  1, 2, 1 ;  R1 = left + right
135 : ADD  2, 1, 0 ;  Move left operand to register 2
136 : LDC  1, 1(0) ;  Load integer-literal value into register 1
137 : ADD  1, 2, 1 ;  R1 = left + right
138 : ST 1, 4(4) ; Store argument 3 in callee
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame
142 : LDA 7, 152(0) ; Call aLoop1
143 : LD   1, 5(5) ;  Load function result
144 : LDC   2, 6(0) ;  Caller frame size
145 : SUB   5, 5, 2 ;  Pop back to caller
146 : SUB   4, 4, 2 ;  Pop back to caller
147 : LDA  7, 149(0) ;  Skip ELSE block
148 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
149 : ST   1, 4(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LDA 4, 7(5) ; Base of callee frame
153 : LD   1, 1(5) ;  Load parameter 'a' into R1
154 : ST 1, 1(4) ; Store argument 0 in callee
155 : LD   1, 2(5) ;  Load parameter 'n' into R1
156 : ST 1, 2(4) ; Store argument 1 in callee
157 : LD   1, 3(5) ;  Load parameter 'upper' into R1
158 : ST 1, 3(4) ; Store argument 2 in callee
159 : LD   1, 4(5) ;  Load parameter 'det' into R1
160 : ST 1, 4(4) ; Store argument 3 in callee
161 : LDA 4, 3(5) ; Base of callee frame
162 : LD   1, 4(5) ;  Load parameter 'det' into R1
163 : ST 1, 1(4) ; Store argument 0 in callee
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 745(0) ; Call SQRT
168 : LD   1, 2(5) ;  Load function result
169 : LDC   2, 3(0) ;  Caller frame size
170 : SUB   5, 5, 2 ;  Pop back to caller
171 : SUB   4, 4, 2 ;  Pop back to caller
172 : ST 1, 5(4) ; Store argument 4 in callee
173 : LDA 6, 177(0) ; Return address
174 : ST 6, 0(4) ; Store return in callee frame
175 : ADD 5, 4, 0 ; Push callee frame
176 : LDA 7, 184(0) ; Call aLoop2
177 : LD   1, 6(5) ;  Load function result
178 : LDC   2, 7(0) ;  Caller frame size
179 : SUB   5, 5, 2 ;  Pop back to caller
180 : SUB   4, 4, 2 ;  Pop back to caller
181 : ST   1, 5(5) ;  Store function result into stack frame
182 : LD   6, 0(5) ;  Load return address
183 : LDA  7, 0(6) ;  Return to caller
184 : LDA 4, 8(5) ; Base of callee frame
185 : LD   1, 1(5) ;  Load parameter 'a' into R1
186 : ST 1, 1(4) ; Store argument 0 in callee
187 : LD   1, 2(5) ;  Load parameter 'n' into R1
188 : ST 1, 2(4) ; Store argument 1 in callee
189 : LD   1, 3(5) ;  Load parameter 'upper' into R1
190 : ST 1, 3(4) ; Store argument 2 in callee
191 : LD   1, 4(5) ;  Load parameter 'det' into R1
192 : ST 1, 4(4) ; Store argument 3 in callee
193 : LD   1, 5(5) ;  Load parameter 'root' into R1
194 : ST 1, 5(4) ; Store argument 4 in callee
195 : LDA 4, 4(5) ; Base of callee frame
196 : LDC  1, 10(0) ;  Load integer-literal value into register 1
197 : ST 1, 1(4) ; Store argument 0 in callee
198 : LD   1, 2(5) ;  Load parameter 'n' into R1
199 : ST 1, 2(4) ; Store argument 1 in callee
200 : LDA 6, 204(0) ; Return address
201 : ST 6, 0(4) ; Store return in callee frame
202 : ADD 5, 4, 0 ; Push callee frame
203 : LDA 7, 833(0) ; Call EXP
204 : LD   1, 3(5) ;  Load function result
205 : LDC   2, 4(0) ;  Caller frame size
206 : SUB   5, 5, 2 ;  Pop back to caller
207 : SUB   4, 4, 2 ;  Pop back to caller
208 : ADD  3, 1, 0 ;  Move right operand to register 3
209 : LD   1, 1(5) ;  Load parameter 'a' into R1
210 : ADD  2, 1, 0 ;  Move left operand to register 2
211 : ADD  1, 3, 0 ;  Move right operand to register 1
212 : MUL  1, 2, 1 ;  R1 = left * right
213 : ADD  2, 1, 0 ;  Move left operand to register 2
214 : LDC  1, 1(0) ;  Load integer-literal value into register 1
215 : ST   1, 3(4) ;  Store right operand result into return value slot
216 : LD   1, 5(5) ;  Load parameter 'root' into R1
217 : ADD  2, 1, 0 ;  Move left operand to register 2
218 : LD   1, 3(4) ;  Return right operand back into register 1
219 : ADD  1, 2, 1 ;  R1 = left + right
220 : ADD  2, 1, 0 ;  Move left operand to register 2
221 : LDC  1, 2(0) ;  Load integer-literal value into register 1
222 : DIV  1, 2, 1 ;  R1 = left / right
223 : ADD  1, 2, 1 ;  R1 = left + right
224 : ST 1, 6(4) ; Store argument 5 in callee
225 : LDA 6, 229(0) ; Return address
226 : ST 6, 0(4) ; Store return in callee frame
227 : ADD 5, 4, 0 ; Push callee frame
228 : LDA 7, 236(0) ; Call aLoop3
229 : LD   1, 7(5) ;  Load function result
230 : LDC   2, 8(0) ;  Caller frame size
231 : SUB   5, 5, 2 ;  Pop back to caller
232 : SUB   4, 4, 2 ;  Pop back to caller
233 : ST   1, 6(5) ;  Store function result into stack frame
234 : LD   6, 0(5) ;  Load return address
235 : LDA  7, 0(6) ;  Return to caller
236 : LDA 4, 4(5) ; Base of callee frame
237 : LD   1, 5(5) ;  Load parameter 'root' into R1
238 : ST 1, 1(4) ; Store argument 0 in callee
239 : LD   1, 4(5) ;  Load parameter 'det' into R1
240 : ST 1, 2(4) ; Store argument 1 in callee
241 : LDA 6, 245(0) ; Return address
242 : ST 6, 0(4) ; Store return in callee frame
243 : ADD 5, 4, 0 ; Push callee frame
244 : LDA 7, 568(0) ; Call ISROOT
245 : LD   1, 3(5) ;  Load function result
246 : LDC   2, 4(0) ;  Caller frame size
247 : SUB   5, 5, 2 ;  Pop back to caller
248 : SUB   4, 4, 2 ;  Pop back to caller
249 : ADD  2, 1, 0 ;  Move left operand to register 2
250 : LDA 4, 3(5) ; Base of callee frame
251 : LDC  1, 1(0) ;  Load integer-literal value into register 1
252 : ST   1, 3(4) ;  Store right operand result into return value slot
253 : LD   1, 5(5) ;  Load parameter 'root' into R1
254 : ADD  2, 1, 0 ;  Move left operand to register 2
255 : LD   1, 3(4) ;  Return right operand back into register 1
256 : ADD  1, 2, 1 ;  R1 = left + right
257 : ST 1, 1(4) ; Store argument 0 in callee
258 : LDA 6, 262(0) ; Return address
259 : ST 6, 0(4) ; Store return in callee frame
260 : ADD 5, 4, 0 ; Push callee frame
261 : LDA 7, 586(0) ; Call EVEN
262 : LD   1, 2(5) ;  Load function result
263 : LDC   2, 3(0) ;  Caller frame size
264 : SUB   5, 5, 2 ;  Pop back to caller
265 : SUB   4, 4, 2 ;  Pop back to caller
266 : MUL  1, 2, 1 ;  R1 = left AND right
267 : ADD  2, 1, 0 ;  Move left operand to register 2
268 : LDA 4, 3(5) ; Base of callee frame
269 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
270 : ST 1, 1(4) ; Store argument 0 in callee
271 : LDA 6, 275(0) ; Return address
272 : ST 6, 0(4) ; Store return in callee frame
273 : ADD 5, 4, 0 ; Push callee frame
274 : LDA 7, 354(0) ; Call isExcellent
275 : LD   1, 2(5) ;  Load function result
276 : LDC   2, 3(0) ;  Caller frame size
277 : SUB   5, 5, 2 ;  Pop back to caller
278 : SUB   4, 4, 2 ;  Pop back to caller
279 : MUL  1, 2, 1 ;  R1 = left AND right
280 : JEQ  1, 299(0) ;  If condition is false, jump to ELSE
281 : LDA 4, 6(5) ; Base of callee frame
282 : LD   1, 1(5) ;  Load parameter 'a' into R1
283 : ST 1, 1(4) ; Store argument 0 in callee
284 : LD   1, 2(5) ;  Load parameter 'n' into R1
285 : ST 1, 2(4) ; Store argument 1 in callee
286 : LD   1, 3(5) ;  Load parameter 'upper' into R1
287 : ST 1, 3(4) ; Store argument 2 in callee
288 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
289 : ST 1, 4(4) ; Store argument 3 in callee
290 : LDA 6, 294(0) ; Return address
291 : ST 6, 0(4) ; Store return in callee frame
292 : ADD 5, 4, 0 ; Push callee frame
293 : LDA 7, 322(0) ; Call printCandidateAndContinue
294 : LD   1, 5(5) ;  Load function result
295 : LDC   2, 6(0) ;  Caller frame size
296 : SUB   5, 5, 2 ;  Pop back to caller
297 : SUB   4, 4, 2 ;  Pop back to caller
298 : LDA  7, 319(0) ;  Skip ELSE block
299 : LDA 4, 5(5) ; Base of callee frame
300 : LDC  1, 1(0) ;  Load integer-literal value into register 1
301 : ST   1, 3(4) ;  Store right operand result into return value slot
302 : LD   1, 1(5) ;  Load parameter 'a' into R1
303 : ADD  2, 1, 0 ;  Move left operand to register 2
304 : LD   1, 3(4) ;  Return right operand back into register 1
305 : ADD  1, 2, 1 ;  R1 = left + right
306 : ST 1, 1(4) ; Store argument 0 in callee
307 : LD   1, 2(5) ;  Load parameter 'n' into R1
308 : ST 1, 2(4) ; Store argument 1 in callee
309 : LD   1, 3(5) ;  Load parameter 'upper' into R1
310 : ST 1, 3(4) ; Store argument 2 in callee
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return in callee frame
313 : ADD 5, 4, 0 ; Push callee frame
314 : LDA 7, 76(0) ; Call aLoop
315 : LD   1, 4(5) ;  Load function result
316 : LDC   2, 5(0) ;  Caller frame size
317 : SUB   5, 5, 2 ;  Pop back to caller
318 : SUB   4, 4, 2 ;  Pop back to caller
319 : ST   1, 7(5) ;  Store function result into stack frame
320 : LD   6, 0(5) ;  Load return address
321 : LDA  7, 0(6) ;  Return to caller
322 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
323 : LDA 4, 3(5) ; Base of callee frame
324 : LDA 6, 328(0) ; Return address
325 : ST 6, 0(4) ; Store return addr in callee frame
326 : ADD 5, 4, 0 ; Push new frame
327 : LDA 7, 8(0) ; Call print
328 : LDC 2, 3(0) ; Caller frame size
329 : SUB 5, 5, 2 ; Pop frame
330 : ST   1, 5(5) ;  Store function result into stack frame
331 : LDA 4, 5(5) ; Base of callee frame
332 : LDC  1, 1(0) ;  Load integer-literal value into register 1
333 : ST   1, 3(4) ;  Store right operand result into return value slot
334 : LD   1, 1(5) ;  Load parameter 'a' into R1
335 : ADD  2, 1, 0 ;  Move left operand to register 2
336 : LD   1, 3(4) ;  Return right operand back into register 1
337 : ADD  1, 2, 1 ;  R1 = left + right
338 : ST 1, 1(4) ; Store argument 0 in callee
339 : LD   1, 2(5) ;  Load parameter 'n' into R1
340 : ST 1, 2(4) ; Store argument 1 in callee
341 : LD   1, 3(5) ;  Load parameter 'upper' into R1
342 : ST 1, 3(4) ; Store argument 2 in callee
343 : LDA 6, 347(0) ; Return address
344 : ST 6, 0(4) ; Store return in callee frame
345 : ADD 5, 4, 0 ; Push callee frame
346 : LDA 7, 76(0) ; Call aLoop
347 : LD   1, 4(5) ;  Load function result
348 : LDC   2, 5(0) ;  Caller frame size
349 : SUB   5, 5, 2 ;  Pop back to caller
350 : SUB   4, 4, 2 ;  Pop back to caller
351 : ST   1, 5(5) ;  Store function result into stack frame
352 : LD   6, 0(5) ;  Load return address
353 : LDA  7, 0(6) ;  Return to caller
354 : LDA 4, 4(5) ; Base of callee frame
355 : LD   1, 1(5) ;  Load parameter 'n' into R1
356 : ST 1, 1(4) ; Store argument 0 in callee
357 : LDA 4, 3(5) ; Base of callee frame
358 : LD   1, 1(5) ;  Load parameter 'n' into R1
359 : ST 1, 1(4) ; Store argument 0 in callee
360 : LDA 6, 364(0) ; Return address
361 : ST 6, 0(4) ; Store return in callee frame
362 : ADD 5, 4, 0 ; Push callee frame
363 : LDA 7, 531(0) ; Call length
364 : LD   1, 2(5) ;  Load function result
365 : LDC   2, 3(0) ;  Caller frame size
366 : SUB   5, 5, 2 ;  Pop back to caller
367 : SUB   4, 4, 2 ;  Pop back to caller
368 : ST 1, 2(4) ; Store argument 1 in callee
369 : LDA 6, 373(0) ; Return address
370 : ST 6, 0(4) ; Store return in callee frame
371 : ADD 5, 4, 0 ; Push callee frame
372 : LDA 7, 380(0) ; Call isExcellentSwitch
373 : LD   1, 3(5) ;  Load function result
374 : LDC   2, 4(0) ;  Caller frame size
375 : SUB   5, 5, 2 ;  Pop back to caller
376 : SUB   4, 4, 2 ;  Pop back to caller
377 : ST   1, 2(5) ;  Store function result into stack frame
378 : LD   6, 0(5) ;  Load return address
379 : LDA  7, 0(6) ;  Return to caller
380 : LDA 4, 3(5) ; Base of callee frame
381 : LD   1, 2(5) ;  Load parameter 'length' into R1
382 : ST 1, 1(4) ; Store argument 0 in callee
383 : LDA 6, 387(0) ; Return address
384 : ST 6, 0(4) ; Store return in callee frame
385 : ADD 5, 4, 0 ; Push callee frame
386 : LDA 7, 788(0) ; Call ODD
387 : LD   1, 2(5) ;  Load function result
388 : LDC   2, 3(0) ;  Caller frame size
389 : SUB   5, 5, 2 ;  Pop back to caller
390 : SUB   4, 4, 2 ;  Pop back to caller
391 : JEQ  1, 394(0) ;  If condition is false, jump to ELSE
392 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
393 : LDA  7, 436(0) ;  Skip ELSE block
394 : LDA 4, 4(5) ; Base of callee frame
395 : LDA 4, 3(5) ; Base of callee frame
396 : LD   1, 1(5) ;  Load parameter 'n' into R1
397 : ST 1, 1(4) ; Store argument 0 in callee
398 : LDA 6, 402(0) ; Return address
399 : ST 6, 0(4) ; Store return in callee frame
400 : ADD 5, 4, 0 ; Push callee frame
401 : LDA 7, 497(0) ; Call a
402 : LD   1, 2(5) ;  Load function result
403 : LDC   2, 3(0) ;  Caller frame size
404 : SUB   5, 5, 2 ;  Pop back to caller
405 : SUB   4, 4, 2 ;  Pop back to caller
406 : ST 1, 1(4) ; Store argument 0 in callee
407 : LDA 4, 3(5) ; Base of callee frame
408 : LD   1, 1(5) ;  Load parameter 'n' into R1
409 : ST 1, 1(4) ; Store argument 0 in callee
410 : LDA 6, 414(0) ; Return address
411 : ST 6, 0(4) ; Store return in callee frame
412 : ADD 5, 4, 0 ; Push callee frame
413 : LDA 7, 456(0) ; Call b
414 : LD   1, 2(5) ;  Load function result
415 : LDC   2, 3(0) ;  Caller frame size
416 : SUB   5, 5, 2 ;  Pop back to caller
417 : SUB   4, 4, 2 ;  Pop back to caller
418 : ST 1, 2(4) ; Store argument 1 in callee
419 : LDA 6, 423(0) ; Return address
420 : ST 6, 0(4) ; Store return in callee frame
421 : ADD 5, 4, 0 ; Push callee frame
422 : LDA 7, 439(0) ; Call excellentDiff
423 : LD   1, 3(5) ;  Load function result
424 : LDC   2, 4(0) ;  Caller frame size
425 : SUB   5, 5, 2 ;  Pop back to caller
426 : SUB   4, 4, 2 ;  Pop back to caller
427 : ADD  3, 1, 0 ;  Move right operand to register 3
428 : LD   1, 1(5) ;  Load parameter 'n' into R1
429 : ADD  2, 1, 0 ;  Move left operand to register 2
430 : ADD  1, 3, 0 ;  Move right operand to register 1
431 : SUB  1, 2, 1 ;  left - right for equality check
432 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
433 : LDC  1, 0(0) ;  false
434 : LDA  7, 1(7) ;  skip setting true
435 : LDC  1, 1(0) ;  true
436 : ST   1, 3(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 2(5) ;  Load parameter 'b' into R1
440 : ST   1, 3(4) ;  Store right operand result into return value slot
441 : LD   1, 2(5) ;  Load parameter 'b' into R1
442 : ADD  2, 1, 0 ;  Move left operand to register 2
443 : LD   1, 3(4) ;  Return right operand back into register 1
444 : MUL  1, 2, 1 ;  R1 = left * right
445 : ADD  2, 1, 0 ;  Move left operand to register 2
446 : LD   1, 1(5) ;  Load parameter 'a' into R1
447 : ST   1, 3(4) ;  Store right operand result into return value slot
448 : LD   1, 1(5) ;  Load parameter 'a' into R1
449 : ADD  2, 1, 0 ;  Move left operand to register 2
450 : LD   1, 3(4) ;  Return right operand back into register 1
451 : MUL  1, 2, 1 ;  R1 = left * right
452 : SUB  1, 2, 1 ;  R1 = left - right
453 : ST   1, 3(5) ;  Store function result into stack frame
454 : LD   6, 0(5) ;  Load return address
455 : LDA  7, 0(6) ;  Return to caller
456 : LDA 4, 4(5) ; Base of callee frame
457 : LD   1, 1(5) ;  Load parameter 'n' into R1
458 : ST 1, 1(4) ; Store argument 0 in callee
459 : LDA 4, 4(5) ; Base of callee frame
460 : LDC  1, 10(0) ;  Load integer-literal value into register 1
461 : ST 1, 1(4) ; Store argument 0 in callee
462 : LDA 4, 3(5) ; Base of callee frame
463 : LD   1, 1(5) ;  Load parameter 'n' into R1
464 : ST 1, 1(4) ; Store argument 0 in callee
465 : LDA 6, 469(0) ; Return address
466 : ST 6, 0(4) ; Store return in callee frame
467 : ADD 5, 4, 0 ; Push callee frame
468 : LDA 7, 531(0) ; Call length
469 : LD   1, 2(5) ;  Load function result
470 : LDC   2, 3(0) ;  Caller frame size
471 : SUB   5, 5, 2 ;  Pop back to caller
472 : SUB   4, 4, 2 ;  Pop back to caller
473 : ADD  2, 1, 0 ;  Move left operand to register 2
474 : LDC  1, 2(0) ;  Load integer-literal value into register 1
475 : DIV  1, 2, 1 ;  R1 = left / right
476 : ST 1, 2(4) ; Store argument 1 in callee
477 : LDA 6, 481(0) ; Return address
478 : ST 6, 0(4) ; Store return in callee frame
479 : ADD 5, 4, 0 ; Push callee frame
480 : LDA 7, 833(0) ; Call EXP
481 : LD   1, 3(5) ;  Load function result
482 : LDC   2, 4(0) ;  Caller frame size
483 : SUB   5, 5, 2 ;  Pop back to caller
484 : SUB   4, 4, 2 ;  Pop back to caller
485 : ST 1, 2(4) ; Store argument 1 in callee
486 : LDA 6, 490(0) ; Return address
487 : ST 6, 0(4) ; Store return in callee frame
488 : ADD 5, 4, 0 ; Push callee frame
489 : LDA 7, 872(0) ; Call MOD
490 : LD   1, 3(5) ;  Load function result
491 : LDC   2, 4(0) ;  Caller frame size
492 : SUB   5, 5, 2 ;  Pop back to caller
493 : SUB   4, 4, 2 ;  Pop back to caller
494 : ST   1, 2(5) ;  Store function result into stack frame
495 : LD   6, 0(5) ;  Load return address
496 : LDA  7, 0(6) ;  Return to caller
497 : LDA 4, 4(5) ; Base of callee frame
498 : LDC  1, 10(0) ;  Load integer-literal value into register 1
499 : ST 1, 1(4) ; Store argument 0 in callee
500 : LDA 4, 3(5) ; Base of callee frame
501 : LD   1, 1(5) ;  Load parameter 'n' into R1
502 : ST 1, 1(4) ; Store argument 0 in callee
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return in callee frame
505 : ADD 5, 4, 0 ; Push callee frame
506 : LDA 7, 531(0) ; Call length
507 : LD   1, 2(5) ;  Load function result
508 : LDC   2, 3(0) ;  Caller frame size
509 : SUB   5, 5, 2 ;  Pop back to caller
510 : SUB   4, 4, 2 ;  Pop back to caller
511 : ADD  2, 1, 0 ;  Move left operand to register 2
512 : LDC  1, 2(0) ;  Load integer-literal value into register 1
513 : DIV  1, 2, 1 ;  R1 = left / right
514 : ST 1, 2(4) ; Store argument 1 in callee
515 : LDA 6, 519(0) ; Return address
516 : ST 6, 0(4) ; Store return in callee frame
517 : ADD 5, 4, 0 ; Push callee frame
518 : LDA 7, 833(0) ; Call EXP
519 : LD   1, 3(5) ;  Load function result
520 : LDC   2, 4(0) ;  Caller frame size
521 : SUB   5, 5, 2 ;  Pop back to caller
522 : SUB   4, 4, 2 ;  Pop back to caller
523 : ADD  3, 1, 0 ;  Move right operand to register 3
524 : LD   1, 1(5) ;  Load parameter 'n' into R1
525 : ADD  2, 1, 0 ;  Move left operand to register 2
526 : ADD  1, 3, 0 ;  Move right operand to register 1
527 : DIV  1, 2, 1 ;  R1 = left / right
528 : ST   1, 2(5) ;  Store function result into stack frame
529 : LD   6, 0(5) ;  Load return address
530 : LDA  7, 0(6) ;  Return to caller
531 : LDC  1, 10(0) ;  Load integer-literal value into register 1
532 : ST   1, 3(4) ;  Store right operand result into return value slot
533 : LD   1, 1(5) ;  Load parameter 'n' into R1
534 : ADD  2, 1, 0 ;  Move left operand to register 2
535 : LD   1, 3(4) ;  Return right operand back into register 1
536 : SUB  1, 2, 1 ;  left - right for less-than check
537 : JLT  1, 2(7) ;  If R1 < 0, jump to true
538 : LDC  1, 0(0) ;  false
539 : LDA  7, 1(7) ;  skip setting true
540 : LDC  1, 1(0) ;  true
541 : JEQ  1, 544(0) ;  If condition is false, jump to ELSE
542 : LDC  1, 1(0) ;  Load integer-literal value into register 1
543 : LDA  7, 565(0) ;  Skip ELSE block
544 : LDA 4, 3(5) ; Base of callee frame
545 : LDC  1, 10(0) ;  Load integer-literal value into register 1
546 : ST   1, 3(4) ;  Store right operand result into return value slot
547 : LD   1, 1(5) ;  Load parameter 'n' into R1
548 : ADD  2, 1, 0 ;  Move left operand to register 2
549 : LD   1, 3(4) ;  Return right operand back into register 1
550 : DIV  1, 2, 1 ;  R1 = left / right
551 : ST 1, 1(4) ; Store argument 0 in callee
552 : LDA 6, 556(0) ; Return address
553 : ST 6, 0(4) ; Store return in callee frame
554 : ADD 5, 4, 0 ; Push callee frame
555 : LDA 7, 531(0) ; Call length
556 : LD   1, 2(5) ;  Load function result
557 : LDC   2, 3(0) ;  Caller frame size
558 : SUB   5, 5, 2 ;  Pop back to caller
559 : SUB   4, 4, 2 ;  Pop back to caller
560 : ADD  3, 1, 0 ;  Move right operand to register 3
561 : LDC  1, 1(0) ;  Load integer-literal value into register 1
562 : ADD  2, 1, 0 ;  Move left operand to register 2
563 : ADD  1, 3, 0 ;  Move right operand to register 1
564 : ADD  1, 2, 1 ;  R1 = left + right
565 : ST   1, 2(5) ;  Store function result into stack frame
566 : LD   6, 0(5) ;  Load return address
567 : LDA  7, 0(6) ;  Return to caller
568 : LD   1, 1(5) ;  Load parameter 'r' into R1
569 : ST   1, 3(4) ;  Store right operand result into return value slot
570 : LD   1, 1(5) ;  Load parameter 'r' into R1
571 : ADD  2, 1, 0 ;  Move left operand to register 2
572 : LD   1, 3(4) ;  Return right operand back into register 1
573 : MUL  1, 2, 1 ;  R1 = left * right
574 : ADD  3, 1, 0 ;  Move right operand to register 3
575 : LD   1, 2(5) ;  Load parameter 'n' into R1
576 : ADD  2, 1, 0 ;  Move left operand to register 2
577 : ADD  1, 3, 0 ;  Move right operand to register 1
578 : SUB  1, 2, 1 ;  left - right for equality check
579 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
580 : LDC  1, 0(0) ;  false
581 : LDA  7, 1(7) ;  skip setting true
582 : LDC  1, 1(0) ;  true
583 : ST   1, 3(5) ;  Store function result into stack frame
584 : LD   6, 0(5) ;  Load return address
585 : LDA  7, 0(6) ;  Return to caller
586 : LDC  1, 2(0) ;  Load integer-literal value into register 1
587 : ST   1, 3(4) ;  Store right operand result into return value slot
588 : LD   1, 1(5) ;  Load parameter 'n' into R1
589 : ADD  2, 1, 0 ;  Move left operand to register 2
590 : LD   1, 3(4) ;  Return right operand back into register 1
591 : DIV  1, 2, 1 ;  R1 = left / right
592 : ADD  3, 1, 0 ;  Move right operand to register 3
593 : LDC  1, 2(0) ;  Load integer-literal value into register 1
594 : ADD  2, 1, 0 ;  Move left operand to register 2
595 : ADD  1, 3, 0 ;  Move right operand to register 1
596 : MUL  1, 2, 1 ;  R1 = left * right
597 : ADD  3, 1, 0 ;  Move right operand to register 3
598 : LD   1, 1(5) ;  Load parameter 'n' into R1
599 : ADD  2, 1, 0 ;  Move left operand to register 2
600 : ADD  1, 3, 0 ;  Move right operand to register 1
601 : SUB  1, 2, 1 ;  left - right for equality check
602 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
603 : LDC  1, 0(0) ;  false
604 : LDA  7, 1(7) ;  skip setting true
605 : LDC  1, 1(0) ;  true
606 : ST   1, 2(5) ;  Store function result into stack frame
607 : LD   6, 0(5) ;  Load return address
608 : LDA  7, 0(6) ;  Return to caller
609 : LDA 4, 4(5) ; Base of callee frame
610 : LD   1, 4(5) ;  Load parameter 'mid' into R1
611 : ST   1, 3(4) ;  Store right operand result into return value slot
612 : LD   1, 4(5) ;  Load parameter 'mid' into R1
613 : ADD  2, 1, 0 ;  Move left operand to register 2
614 : LD   1, 3(4) ;  Return right operand back into register 1
615 : MUL  1, 2, 1 ;  R1 = left * right
616 : ST 1, 1(4) ; Store argument 0 in callee
617 : LD   1, 1(5) ;  Load parameter 'n' into R1
618 : ST 1, 2(4) ; Store argument 1 in callee
619 : LDA 6, 623(0) ; Return address
620 : ST 6, 0(4) ; Store return in callee frame
621 : ADD 5, 4, 0 ; Push callee frame
622 : LDA 7, 763(0) ; Call LE
623 : LD   1, 3(5) ;  Load function result
624 : LDC   2, 4(0) ;  Caller frame size
625 : SUB   5, 5, 2 ;  Pop back to caller
626 : SUB   4, 4, 2 ;  Pop back to caller
627 : JEQ  1, 644(0) ;  If condition is false, jump to ELSE
628 : LDA 4, 5(5) ; Base of callee frame
629 : LD   1, 1(5) ;  Load parameter 'n' into R1
630 : ST 1, 1(4) ; Store argument 0 in callee
631 : LD   1, 4(5) ;  Load parameter 'mid' into R1
632 : ST 1, 2(4) ; Store argument 1 in callee
633 : LD   1, 3(5) ;  Load parameter 'high' into R1
634 : ST 1, 3(4) ; Store argument 2 in callee
635 : LDA 6, 639(0) ; Return address
636 : ST 6, 0(4) ; Store return in callee frame
637 : ADD 5, 4, 0 ; Push callee frame
638 : LDA 7, 662(0) ; Call SQRTSEARCH
639 : LD   1, 4(5) ;  Load function result
640 : LDC   2, 5(0) ;  Caller frame size
641 : SUB   5, 5, 2 ;  Pop back to caller
642 : SUB   4, 4, 2 ;  Pop back to caller
643 : LDA  7, 659(0) ;  Skip ELSE block
644 : LDA 4, 5(5) ; Base of callee frame
645 : LD   1, 1(5) ;  Load parameter 'n' into R1
646 : ST 1, 1(4) ; Store argument 0 in callee
647 : LD   1, 2(5) ;  Load parameter 'low' into R1
648 : ST 1, 2(4) ; Store argument 1 in callee
649 : LD   1, 4(5) ;  Load parameter 'mid' into R1
650 : ST 1, 3(4) ; Store argument 2 in callee
651 : LDA 6, 655(0) ; Return address
652 : ST 6, 0(4) ; Store return in callee frame
653 : ADD 5, 4, 0 ; Push callee frame
654 : LDA 7, 662(0) ; Call SQRTSEARCH
655 : LD   1, 4(5) ;  Load function result
656 : LDC   2, 5(0) ;  Caller frame size
657 : SUB   5, 5, 2 ;  Pop back to caller
658 : SUB   4, 4, 2 ;  Pop back to caller
659 : ST   1, 5(5) ;  Store function result into stack frame
660 : LD   6, 0(5) ;  Load return address
661 : LDA  7, 0(6) ;  Return to caller
662 : LDA 4, 4(5) ; Base of callee frame
663 : LD   1, 3(5) ;  Load parameter 'high' into R1
664 : ST 1, 1(4) ; Store argument 0 in callee
665 : LDC  1, 1(0) ;  Load integer-literal value into register 1
666 : ST   1, 3(4) ;  Store right operand result into return value slot
667 : LD   1, 2(5) ;  Load parameter 'low' into R1
668 : ADD  2, 1, 0 ;  Move left operand to register 2
669 : LD   1, 3(4) ;  Return right operand back into register 1
670 : ADD  1, 2, 1 ;  R1 = left + right
671 : ST 1, 2(4) ; Store argument 1 in callee
672 : LDA 6, 676(0) ; Return address
673 : ST 6, 0(4) ; Store return in callee frame
674 : ADD 5, 4, 0 ; Push callee frame
675 : LDA 7, 763(0) ; Call LE
676 : LD   1, 3(5) ;  Load function result
677 : LDC   2, 4(0) ;  Caller frame size
678 : SUB   5, 5, 2 ;  Pop back to caller
679 : SUB   4, 4, 2 ;  Pop back to caller
680 : JEQ  1, 717(0) ;  If condition is false, jump to ELSE
681 : LDA 4, 4(5) ; Base of callee frame
682 : LD   1, 2(5) ;  Load parameter 'low' into R1
683 : ST   1, 3(4) ;  Store right operand result into return value slot
684 : LD   1, 2(5) ;  Load parameter 'low' into R1
685 : ADD  2, 1, 0 ;  Move left operand to register 2
686 : LD   1, 3(4) ;  Return right operand back into register 1
687 : MUL  1, 2, 1 ;  R1 = left * right
688 : ADD  3, 1, 0 ;  Move right operand to register 3
689 : LD   1, 1(5) ;  Load parameter 'n' into R1
690 : ADD  2, 1, 0 ;  Move left operand to register 2
691 : ADD  1, 3, 0 ;  Move right operand to register 1
692 : SUB  1, 2, 1 ;  R1 = left - right
693 : ST 1, 1(4) ; Store argument 0 in callee
694 : LD   1, 3(5) ;  Load parameter 'high' into R1
695 : ST   1, 3(4) ;  Store right operand result into return value slot
696 : LD   1, 3(5) ;  Load parameter 'high' into R1
697 : ADD  2, 1, 0 ;  Move left operand to register 2
698 : LD   1, 3(4) ;  Return right operand back into register 1
699 : MUL  1, 2, 1 ;  R1 = left * right
700 : ADD  2, 1, 0 ;  Move left operand to register 2
701 : LD   1, 1(5) ;  Load parameter 'n' into R1
702 : SUB  1, 2, 1 ;  R1 = left - right
703 : ST 1, 2(4) ; Store argument 1 in callee
704 : LDA 6, 708(0) ; Return address
705 : ST 6, 0(4) ; Store return in callee frame
706 : ADD 5, 4, 0 ; Push callee frame
707 : LDA 7, 763(0) ; Call LE
708 : LD   1, 3(5) ;  Load function result
709 : LDC   2, 4(0) ;  Caller frame size
710 : SUB   5, 5, 2 ;  Pop back to caller
711 : SUB   4, 4, 2 ;  Pop back to caller
712 : JEQ  1, 715(0) ;  If condition is false, jump to ELSE
713 : LD   1, 2(5) ;  Load parameter 'low' into R1
714 : LDA  7, 716(0) ;  Skip ELSE block
715 : LD   1, 3(5) ;  Load parameter 'high' into R1
716 : LDA  7, 742(0) ;  Skip ELSE block
717 : LDA 4, 6(5) ; Base of callee frame
718 : LD   1, 1(5) ;  Load parameter 'n' into R1
719 : ST 1, 1(4) ; Store argument 0 in callee
720 : LD   1, 2(5) ;  Load parameter 'low' into R1
721 : ST 1, 2(4) ; Store argument 1 in callee
722 : LD   1, 3(5) ;  Load parameter 'high' into R1
723 : ST 1, 3(4) ; Store argument 2 in callee
724 : LD   1, 3(5) ;  Load parameter 'high' into R1
725 : ST   1, 3(4) ;  Store right operand result into return value slot
726 : LD   1, 2(5) ;  Load parameter 'low' into R1
727 : ADD  2, 1, 0 ;  Move left operand to register 2
728 : LD   1, 3(4) ;  Return right operand back into register 1
729 : ADD  1, 2, 1 ;  R1 = left + right
730 : ADD  2, 1, 0 ;  Move left operand to register 2
731 : LDC  1, 2(0) ;  Load integer-literal value into register 1
732 : DIV  1, 2, 1 ;  R1 = left / right
733 : ST 1, 4(4) ; Store argument 3 in callee
734 : LDA 6, 738(0) ; Return address
735 : ST 6, 0(4) ; Store return in callee frame
736 : ADD 5, 4, 0 ; Push callee frame
737 : LDA 7, 609(0) ; Call SQRTSPLIT
738 : LD   1, 5(5) ;  Load function result
739 : LDC   2, 6(0) ;  Caller frame size
740 : SUB   5, 5, 2 ;  Pop back to caller
741 : SUB   4, 4, 2 ;  Pop back to caller
742 : ST   1, 4(5) ;  Store function result into stack frame
743 : LD   6, 0(5) ;  Load return address
744 : LDA  7, 0(6) ;  Return to caller
745 : LDA 4, 5(5) ; Base of callee frame
746 : LD   1, 1(5) ;  Load parameter 'n' into R1
747 : ST 1, 1(4) ; Store argument 0 in callee
748 : LDC  1, 0(0) ;  Load integer-literal value into register 1
749 : ST 1, 2(4) ; Store argument 1 in callee
750 : LD   1, 1(5) ;  Load parameter 'n' into R1
751 : ST 1, 3(4) ; Store argument 2 in callee
752 : LDA 6, 756(0) ; Return address
753 : ST 6, 0(4) ; Store return in callee frame
754 : ADD 5, 4, 0 ; Push callee frame
755 : LDA 7, 662(0) ; Call SQRTSEARCH
756 : LD   1, 4(5) ;  Load function result
757 : LDC   2, 5(0) ;  Caller frame size
758 : SUB   5, 5, 2 ;  Pop back to caller
759 : SUB   4, 4, 2 ;  Pop back to caller
760 : ST   1, 2(5) ;  Store function result into stack frame
761 : LD   6, 0(5) ;  Load return address
762 : LDA  7, 0(6) ;  Return to caller
763 : LD   1, 2(5) ;  Load parameter 'q' into R1
764 : ST   1, 3(4) ;  Store right operand result into return value slot
765 : LD   1, 1(5) ;  Load parameter 'p' into R1
766 : ADD  2, 1, 0 ;  Move left operand to register 2
767 : LD   1, 3(4) ;  Return right operand back into register 1
768 : SUB  1, 2, 1 ;  left - right for less-than check
769 : JLT  1, 2(7) ;  If R1 < 0, jump to true
770 : LDC  1, 0(0) ;  false
771 : LDA  7, 1(7) ;  skip setting true
772 : LDC  1, 1(0) ;  true
773 : ADD  2, 1, 0 ;  Move left operand to register 2
774 : LD   1, 2(5) ;  Load parameter 'q' into R1
775 : ST   1, 3(4) ;  Store right operand result into return value slot
776 : LD   1, 1(5) ;  Load parameter 'p' into R1
777 : ADD  2, 1, 0 ;  Move left operand to register 2
778 : LD   1, 3(4) ;  Return right operand back into register 1
779 : SUB  1, 2, 1 ;  left - right for equality check
780 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
781 : LDC  1, 0(0) ;  false
782 : LDA  7, 1(7) ;  skip setting true
783 : LDC  1, 1(0) ;  true
784 : ADD  1, 2, 1 ;  R1 = left OR right
785 : ST   1, 3(5) ;  Store function result into stack frame
786 : LD   6, 0(5) ;  Load return address
787 : LDA  7, 0(6) ;  Return to caller
788 : LD   1, 1(5) ;  Load parameter 'n' into R1
789 : ST   1, 3(4) ;  Store right operand result into return value slot
790 : LDC  1, 0(0) ;  Load integer-literal value into register 1
791 : ADD  2, 1, 0 ;  Move left operand to register 2
792 : LD   1, 3(4) ;  Return right operand back into register 1
793 : SUB  1, 2, 1 ;  left - right for less-than check
794 : JLT  1, 2(7) ;  If R1 < 0, jump to true
795 : LDC  1, 0(0) ;  false
796 : LDA  7, 1(7) ;  skip setting true
797 : LDC  1, 1(0) ;  true
798 : JEQ  1, 818(0) ;  If condition is false, jump to ELSE
799 : LDC  1, 2(0) ;  Load integer-literal value into register 1
800 : ST   1, 3(4) ;  Store right operand result into return value slot
801 : LD   1, 1(5) ;  Load parameter 'n' into R1
802 : ADD  2, 1, 0 ;  Move left operand to register 2
803 : LD   1, 3(4) ;  Return right operand back into register 1
804 : DIV  1, 2, 1 ;  R1 = left / right
805 : ADD  3, 1, 0 ;  Move right operand to register 3
806 : LDC  1, 2(0) ;  Load integer-literal value into register 1
807 : ADD  2, 1, 0 ;  Move left operand to register 2
808 : ADD  1, 3, 0 ;  Move right operand to register 1
809 : MUL  1, 2, 1 ;  R1 = left * right
810 : ADD  2, 1, 0 ;  Move left operand to register 2
811 : LD   1, 1(5) ;  Load parameter 'n' into R1
812 : SUB  1, 2, 1 ;  left - right for less-than check
813 : JLT  1, 2(7) ;  If R1 < 0, jump to true
814 : LDC  1, 0(0) ;  false
815 : LDA  7, 1(7) ;  skip setting true
816 : LDC  1, 1(0) ;  true
817 : LDA  7, 830(0) ;  Skip ELSE block
818 : LDA 4, 3(5) ; Base of callee frame
819 : LD   1, 1(5) ;  Load parameter 'n' into R1
820 : SUB  1, 0, 1 ;  Negate value in R1
821 : ST 1, 1(4) ; Store argument 0 in callee
822 : LDA 6, 826(0) ; Return address
823 : ST 6, 0(4) ; Store return in callee frame
824 : ADD 5, 4, 0 ; Push callee frame
825 : LDA 7, 788(0) ; Call ODD
826 : LD   1, 2(5) ;  Load function result
827 : LDC   2, 3(0) ;  Caller frame size
828 : SUB   5, 5, 2 ;  Pop back to caller
829 : SUB   4, 4, 2 ;  Pop back to caller
830 : ST   1, 2(5) ;  Store function result into stack frame
831 : LD   6, 0(5) ;  Load return address
832 : LDA  7, 0(6) ;  Return to caller
833 : LDC  1, 0(0) ;  Load integer-literal value into register 1
834 : ST   1, 3(4) ;  Store right operand result into return value slot
835 : LD   1, 2(5) ;  Load parameter 'n' into R1
836 : ADD  2, 1, 0 ;  Move left operand to register 2
837 : LD   1, 3(4) ;  Return right operand back into register 1
838 : SUB  1, 2, 1 ;  left - right for equality check
839 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
840 : LDC  1, 0(0) ;  false
841 : LDA  7, 1(7) ;  skip setting true
842 : LDC  1, 1(0) ;  true
843 : JEQ  1, 846(0) ;  If condition is false, jump to ELSE
844 : LDC  1, 1(0) ;  Load integer-literal value into register 1
845 : LDA  7, 869(0) ;  Skip ELSE block
846 : LDA 4, 4(5) ; Base of callee frame
847 : LD   1, 1(5) ;  Load parameter 'm' into R1
848 : ST 1, 1(4) ; Store argument 0 in callee
849 : LDC  1, 1(0) ;  Load integer-literal value into register 1
850 : ST   1, 3(4) ;  Store right operand result into return value slot
851 : LD   1, 2(5) ;  Load parameter 'n' into R1
852 : ADD  2, 1, 0 ;  Move left operand to register 2
853 : LD   1, 3(4) ;  Return right operand back into register 1
854 : SUB  1, 2, 1 ;  R1 = left - right
855 : ST 1, 2(4) ; Store argument 1 in callee
856 : LDA 6, 860(0) ; Return address
857 : ST 6, 0(4) ; Store return in callee frame
858 : ADD 5, 4, 0 ; Push callee frame
859 : LDA 7, 833(0) ; Call EXP
860 : LD   1, 3(5) ;  Load function result
861 : LDC   2, 4(0) ;  Caller frame size
862 : SUB   5, 5, 2 ;  Pop back to caller
863 : SUB   4, 4, 2 ;  Pop back to caller
864 : ADD  3, 1, 0 ;  Move right operand to register 3
865 : LD   1, 1(5) ;  Load parameter 'm' into R1
866 : ADD  2, 1, 0 ;  Move left operand to register 2
867 : ADD  1, 3, 0 ;  Move right operand to register 1
868 : MUL  1, 2, 1 ;  R1 = left * right
869 : ST   1, 3(5) ;  Store function result into stack frame
870 : LD   6, 0(5) ;  Load return address
871 : LDA  7, 0(6) ;  Return to caller
872 : LD   1, 2(5) ;  Load parameter 'n' into R1
873 : ST   1, 3(4) ;  Store right operand result into return value slot
874 : LD   1, 1(5) ;  Load parameter 'm' into R1
875 : ADD  2, 1, 0 ;  Move left operand to register 2
876 : LD   1, 3(4) ;  Return right operand back into register 1
877 : DIV  1, 2, 1 ;  R1 = left / right
878 : ADD  3, 1, 0 ;  Move right operand to register 3
879 : LD   1, 2(5) ;  Load parameter 'n' into R1
880 : ADD  2, 1, 0 ;  Move left operand to register 2
881 : ADD  1, 3, 0 ;  Move right operand to register 1
882 : MUL  1, 2, 1 ;  R1 = left * right
883 : ADD  3, 1, 0 ;  Move right operand to register 3
884 : LD   1, 1(5) ;  Load parameter 'm' into R1
885 : ADD  2, 1, 0 ;  Move left operand to register 2
886 : ADD  1, 3, 0 ;  Move right operand to register 1
887 : SUB  1, 2, 1 ;  R1 = left - right
888 : ST   1, 3(5) ;  Store function result into stack frame
889 : LD   6, 0(5) ;  Load return address
890 : LDA  7, 0(6) ;  Return to caller
