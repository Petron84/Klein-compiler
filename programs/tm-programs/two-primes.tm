0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDC  1, 3(0) ;  Load integer-literal value into register 1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 2(5) ;  Load parameter 'selector' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
24 : LDA 4, 3(5) ; Base of callee frame
25 : LD   1, 1(5) ;  Load parameter 'n' into R1
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame
30 : LDA 7, 345(0) ; Call emirp
31 : LD   1, 2(5) ;  Load function result
32 : LDC   2, 3(0) ;  Caller frame size
33 : SUB   5, 5, 2 ;  Pop back to caller
34 : SUB   4, 4, 2 ;  Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LDA  7, 87(0) ;  Skip ELSE block
37 : LDC  1, 5(0) ;  Load integer-literal value into register 1
38 : ST   1, 3(4) ;  Store right operand result into return value slot
39 : LD   1, 2(5) ;  Load parameter 'selector' into R1
40 : ADD  2, 1, 0 ;  Move left operand to register 2
41 : LD   1, 3(4) ;  Return right operand back into register 1
42 : SUB  1, 2, 1 ;  left - right for equality check
43 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
44 : LDC  1, 0(0) ;  false
45 : LDA  7, 1(7) ;  skip setting true
46 : LDC  1, 1(0) ;  true
47 : JEQ  1, 61(0) ;  If condition is false, jump to ELSE
48 : LDA 4, 3(5) ; Base of callee frame
49 : LD   1, 1(5) ;  Load parameter 'n' into R1
50 : ST 1, 1(4) ; Store argument 0 in callee
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame
54 : LDA 7, 300(0) ; Call snowball
55 : LD   1, 2(5) ;  Load function result
56 : LDC   2, 3(0) ;  Caller frame size
57 : SUB   5, 5, 2 ;  Pop back to caller
58 : SUB   4, 4, 2 ;  Pop back to caller
59 : ST 1, 3(5) ; Store result into caller’s frame
60 : LDA  7, 87(0) ;  Skip ELSE block
61 : LDC  1, 8(0) ;  Load integer-literal value into register 1
62 : ST   1, 3(4) ;  Store right operand result into return value slot
63 : LD   1, 2(5) ;  Load parameter 'selector' into R1
64 : ADD  2, 1, 0 ;  Move left operand to register 2
65 : LD   1, 3(4) ;  Return right operand back into register 1
66 : SUB  1, 2, 1 ;  left - right for equality check
67 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
68 : LDC  1, 0(0) ;  false
69 : LDA  7, 1(7) ;  skip setting true
70 : LDC  1, 1(0) ;  true
71 : JEQ  1, 85(0) ;  If condition is false, jump to ELSE
72 : LDA 4, 3(5) ; Base of callee frame
73 : LD   1, 1(5) ;  Load parameter 'n' into R1
74 : ST 1, 1(4) ; Store argument 0 in callee
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame
78 : LDA 7, 267(0) ; Call doBoth
79 : LD   1, 2(5) ;  Load function result
80 : LDC   2, 3(0) ;  Caller frame size
81 : SUB   5, 5, 2 ;  Pop back to caller
82 : SUB   4, 4, 2 ;  Pop back to caller
83 : ST 1, 3(5) ; Store result into caller’s frame
84 : LDA  7, 87(0) ;  Skip ELSE block
85 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
86 : ST 1, 3(5) ;  Store result into current frame's return slot
87 : LD   1, 3(5) ;  Load return value into register 1
88 : LD  6, 0(5) ;  Load return address for main function into register 6
89 : LDA  7, 0(6) ;  Jump to return address of main function
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : ST   1, 3(4) ;  Store right operand result into return value slot
92 : LD   1, 1(5) ;  Load parameter 'm' into R1
93 : ADD  2, 1, 0 ;  Move left operand to register 2
94 : LD   1, 3(4) ;  Return right operand back into register 1
95 : DIV  1, 2, 1 ;  R1 = left / right
96 : ADD  2, 1, 0 ;  Move left operand to register 2
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : MUL  1, 2, 1 ;  R1 = left * right
99 : ADD  3, 1, 0 ;  Move right operand to register 3
100 : LD   1, 1(5) ;  Load parameter 'm' into R1
101 : ADD  2, 1, 0 ;  Move left operand to register 2
102 : ADD  1, 3, 0 ;  Move right operand to register 1
103 : SUB  1, 2, 1 ;  R1 = left - right
104 : ST   1, 3(5) ;  Store function result into stack frame
105 : LD   6, 0(5) ;  Load return address
106 : LDA  7, 0(6) ;  Return to caller
107 : LDC  1, 0(0) ;  Load integer-literal value into register 1
108 : ST   1, 3(4) ;  Store right operand result into return value slot
109 : LD   1, 1(5) ;  Load parameter 'n' into R1
110 : ADD  2, 1, 0 ;  Move left operand to register 2
111 : LD   1, 3(4) ;  Return right operand back into register 1
112 : SUB  1, 2, 1 ;  left - right for equality check
113 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
114 : LDC  1, 0(0) ;  false
115 : LDA  7, 1(7) ;  skip setting true
116 : LDC  1, 1(0) ;  true
117 : JEQ  1, 120(0) ;  If condition is false, jump to ELSE
118 : LD   1, 2(5) ;  Load parameter 'nR' into R1
119 : LDA  7, 158(0) ;  Skip ELSE block
120 : LDA 4, 4(5) ; Base of callee frame
121 : LDC  1, 10(0) ;  Load integer-literal value into register 1
122 : ST   1, 3(4) ;  Store right operand result into return value slot
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ADD  2, 1, 0 ;  Move left operand to register 2
125 : LD   1, 3(4) ;  Return right operand back into register 1
126 : DIV  1, 2, 1 ;  R1 = left / right
127 : ST 1, 1(4) ; Store argument 0 in callee
128 : LD   1, 2(5) ;  Load parameter 'nR' into R1
129 : ST   1, 3(4) ;  Store right operand result into return value slot
130 : LDC  1, 10(0) ;  Load integer-literal value into register 1
131 : ADD  2, 1, 0 ;  Move left operand to register 2
132 : LD   1, 3(4) ;  Return right operand back into register 1
133 : MUL  1, 2, 1 ;  R1 = left * right
134 : ADD  2, 1, 0 ;  Move left operand to register 2
135 : LDA 4, 4(5) ; Base of callee frame
136 : LD   1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LDC  1, 10(0) ;  Load integer-literal value into register 1
139 : ST 1, 2(4) ; Store argument 1 in callee
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame
143 : LDA 7, 90(0) ; Call MOD
144 : LD   1, 3(5) ;  Load function result
145 : LDC   2, 4(0) ;  Caller frame size
146 : SUB   5, 5, 2 ;  Pop back to caller
147 : SUB   4, 4, 2 ;  Pop back to caller
148 : ADD  1, 2, 1 ;  R1 = left + right
149 : ST 1, 2(4) ; Store argument 1 in callee
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame
153 : LDA 7, 107(0) ; Call reverseL
154 : LD   1, 3(5) ;  Load function result
155 : LDC   2, 4(0) ;  Caller frame size
156 : SUB   5, 5, 2 ;  Pop back to caller
157 : SUB   4, 4, 2 ;  Pop back to caller
158 : ST   1, 3(5) ;  Store function result into stack frame
159 : LD   6, 0(5) ;  Load return address
160 : LDA  7, 0(6) ;  Return to caller
161 : LDA 4, 4(5) ; Base of callee frame
162 : LD   1, 1(5) ;  Load parameter 'n' into R1
163 : ST 1, 1(4) ; Store argument 0 in callee
164 : LDC  1, 0(0) ;  Load integer-literal value into register 1
165 : ST 1, 2(4) ; Store argument 1 in callee
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame
169 : LDA 7, 107(0) ; Call reverseL
170 : LD   1, 3(5) ;  Load function result
171 : LDC   2, 4(0) ;  Caller frame size
172 : SUB   5, 5, 2 ;  Pop back to caller
173 : SUB   4, 4, 2 ;  Pop back to caller
174 : ST   1, 2(5) ;  Store function result into stack frame
175 : LD   6, 0(5) ;  Load return address
176 : LDA  7, 0(6) ;  Return to caller
177 : LDA 4, 4(5) ; Base of callee frame
178 : LD   1, 2(5) ;  Load parameter 'b' into R1
179 : ST 1, 1(4) ; Store argument 0 in callee
180 : LD   1, 1(5) ;  Load parameter 'a' into R1
181 : ST 1, 2(4) ; Store argument 1 in callee
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 90(0) ; Call MOD
186 : LD   1, 3(5) ;  Load function result
187 : LDC   2, 4(0) ;  Caller frame size
188 : SUB   5, 5, 2 ;  Pop back to caller
189 : SUB   4, 4, 2 ;  Pop back to caller
190 : ADD  2, 1, 0 ;  Move left operand to register 2
191 : LDC  1, 0(0) ;  Load integer-literal value into register 1
192 : SUB  1, 2, 1 ;  left - right for equality check
193 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
194 : LDC  1, 0(0) ;  false
195 : LDA  7, 1(7) ;  skip setting true
196 : LDC  1, 1(0) ;  true
197 : ST   1, 3(5) ;  Store function result into stack frame
198 : LD   6, 0(5) ;  Load return address
199 : LDA  7, 0(6) ;  Return to caller
200 : LD   1, 2(5) ;  Load parameter 'n' into R1
201 : ST   1, 3(4) ;  Store right operand result into return value slot
202 : LD   1, 1(5) ;  Load parameter 'i' into R1
203 : ADD  2, 1, 0 ;  Move left operand to register 2
204 : LD   1, 3(4) ;  Return right operand back into register 1
205 : SUB  1, 2, 1 ;  left - right for less-than check
206 : JLT  1, 2(7) ;  If R1 < 0, jump to true
207 : LDC  1, 0(0) ;  false
208 : LDA  7, 1(7) ;  skip setting true
209 : LDC  1, 1(0) ;  true
210 : JEQ  1, 245(0) ;  If condition is false, jump to ELSE
211 : LDA 4, 4(5) ; Base of callee frame
212 : LD   1, 1(5) ;  Load parameter 'i' into R1
213 : ST 1, 1(4) ; Store argument 0 in callee
214 : LD   1, 2(5) ;  Load parameter 'n' into R1
215 : ST 1, 2(4) ; Store argument 1 in callee
216 : LDA 6, 220(0) ; Return address
217 : ST 6, 0(4) ; Store return in callee frame
218 : ADD 5, 4, 0 ; Push callee frame
219 : LDA 7, 177(0) ; Call divides
220 : LD   1, 3(5) ;  Load function result
221 : LDC   2, 4(0) ;  Caller frame size
222 : SUB   5, 5, 2 ;  Pop back to caller
223 : SUB   4, 4, 2 ;  Pop back to caller
224 : ADD  2, 1, 0 ;  Move left operand to register 2
225 : LDA 4, 4(5) ; Base of callee frame
226 : LDC  1, 1(0) ;  Load integer-literal value into register 1
227 : ST   1, 3(4) ;  Store right operand result into return value slot
228 : LD   1, 1(5) ;  Load parameter 'i' into R1
229 : ADD  2, 1, 0 ;  Move left operand to register 2
230 : LD   1, 3(4) ;  Return right operand back into register 1
231 : ADD  1, 2, 1 ;  R1 = left + right
232 : ST 1, 1(4) ; Store argument 0 in callee
233 : LD   1, 2(5) ;  Load parameter 'n' into R1
234 : ST 1, 2(4) ; Store argument 1 in callee
235 : LDA 6, 239(0) ; Return address
236 : ST 6, 0(4) ; Store return in callee frame
237 : ADD 5, 4, 0 ; Push callee frame
238 : LDA 7, 200(0) ; Call hasDivisorFrom
239 : LD   1, 3(5) ;  Load function result
240 : LDC   2, 4(0) ;  Caller frame size
241 : SUB   5, 5, 2 ;  Pop back to caller
242 : SUB   4, 4, 2 ;  Pop back to caller
243 : ADD  1, 2, 1 ;  R1 = left OR right
244 : LDA  7, 246(0) ;  Skip ELSE block
245 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
246 : ST   1, 3(5) ;  Store function result into stack frame
247 : LD   6, 0(5) ;  Load return address
248 : LDA  7, 0(6) ;  Return to caller
249 : LDA 4, 4(5) ; Base of callee frame
250 : LDC  1, 2(0) ;  Load integer-literal value into register 1
251 : ST 1, 1(4) ; Store argument 0 in callee
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : ST 1, 2(4) ; Store argument 1 in callee
254 : LDA 6, 258(0) ; Return address
255 : ST 6, 0(4) ; Store return in callee frame
256 : ADD 5, 4, 0 ; Push callee frame
257 : LDA 7, 200(0) ; Call hasDivisorFrom
258 : LD   1, 3(5) ;  Load function result
259 : LDC   2, 4(0) ;  Caller frame size
260 : SUB   5, 5, 2 ;  Pop back to caller
261 : SUB   4, 4, 2 ;  Pop back to caller
262 : LDC  2, 1(0) ;  Load 1 into R2
263 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
264 : ST   1, 2(5) ;  Store function result into stack frame
265 : LD   6, 0(5) ;  Load return address
266 : LDA  7, 0(6) ;  Return to caller
267 : LDA 4, 3(5) ; Base of callee frame
268 : LD   1, 1(5) ;  Load parameter 'n' into R1
269 : ST 1, 1(4) ; Store argument 0 in callee
270 : LDA 6, 274(0) ; Return address
271 : ST 6, 0(4) ; Store return in callee frame
272 : ADD 5, 4, 0 ; Push callee frame
273 : LDA 7, 345(0) ; Call emirp
274 : LD   1, 2(5) ;  Load function result
275 : LDC   2, 3(0) ;  Caller frame size
276 : SUB   5, 5, 2 ;  Pop back to caller
277 : SUB   4, 4, 2 ;  Pop back to caller
278 : LDA 4, 3(5) ; Base of callee frame
279 : LDA 6, 283(0) ; Return address
280 : ST 6, 0(4) ; Store return addr in callee frame
281 : ADD 5, 4, 0 ; Push new frame
282 : LDA 7, 10(0) ; Call print
283 : LDC 2, 3(0) ; Caller frame size
284 : SUB 5, 5, 2 ; Pop frame
285 : ST   1, 2(5) ;  Store function result into stack frame
286 : LDA 4, 3(5) ; Base of callee frame
287 : LD   1, 1(5) ;  Load parameter 'n' into R1
288 : ST 1, 1(4) ; Store argument 0 in callee
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return in callee frame
291 : ADD 5, 4, 0 ; Push callee frame
292 : LDA 7, 300(0) ; Call snowball
293 : LD   1, 2(5) ;  Load function result
294 : LDC   2, 3(0) ;  Caller frame size
295 : SUB   5, 5, 2 ;  Pop back to caller
296 : SUB   4, 4, 2 ;  Pop back to caller
297 : ST   1, 2(5) ;  Store function result into stack frame
298 : LD   6, 0(5) ;  Load return address
299 : LDA  7, 0(6) ;  Return to caller
300 : LDA 4, 3(5) ; Base of callee frame
301 : LD   1, 1(5) ;  Load parameter 'n' into R1
302 : ST 1, 1(4) ; Store argument 0 in callee
303 : LDA 6, 307(0) ; Return address
304 : ST 6, 0(4) ; Store return in callee frame
305 : ADD 5, 4, 0 ; Push callee frame
306 : LDA 7, 249(0) ; Call isPrime
307 : LD   1, 2(5) ;  Load function result
308 : LDC   2, 3(0) ;  Caller frame size
309 : SUB   5, 5, 2 ;  Pop back to caller
310 : SUB   4, 4, 2 ;  Pop back to caller
311 : ADD  2, 1, 0 ;  Move left operand to register 2
312 : LDC  1, 10(0) ;  Load integer-literal value into register 1
313 : ST   1, 3(4) ;  Store right operand result into return value slot
314 : LD   1, 1(5) ;  Load parameter 'n' into R1
315 : ADD  2, 1, 0 ;  Move left operand to register 2
316 : LD   1, 3(4) ;  Return right operand back into register 1
317 : SUB  1, 2, 1 ;  left - right for less-than check
318 : JLT  1, 2(7) ;  If R1 < 0, jump to true
319 : LDC  1, 0(0) ;  false
320 : LDA  7, 1(7) ;  skip setting true
321 : LDC  1, 1(0) ;  true
322 : JEQ  1, 325(0) ;  If condition is false, jump to ELSE
323 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
324 : LDA  7, 341(0) ;  Skip ELSE block
325 : LDA 4, 3(5) ; Base of callee frame
326 : LDC  1, 10(0) ;  Load integer-literal value into register 1
327 : ST   1, 3(4) ;  Store right operand result into return value slot
328 : LD   1, 1(5) ;  Load parameter 'n' into R1
329 : ADD  2, 1, 0 ;  Move left operand to register 2
330 : LD   1, 3(4) ;  Return right operand back into register 1
331 : DIV  1, 2, 1 ;  R1 = left / right
332 : ST 1, 1(4) ; Store argument 0 in callee
333 : LDA 6, 337(0) ; Return address
334 : ST 6, 0(4) ; Store return in callee frame
335 : ADD 5, 4, 0 ; Push callee frame
336 : LDA 7, 249(0) ; Call isPrime
337 : LD   1, 2(5) ;  Load function result
338 : LDC   2, 3(0) ;  Caller frame size
339 : SUB   5, 5, 2 ;  Pop back to caller
340 : SUB   4, 4, 2 ;  Pop back to caller
341 : MUL  1, 2, 1 ;  R1 = left AND right
342 : ST   1, 2(5) ;  Store function result into stack frame
343 : LD   6, 0(5) ;  Load return address
344 : LDA  7, 0(6) ;  Return to caller
345 : LDA 4, 3(5) ; Base of callee frame
346 : LD   1, 1(5) ;  Load parameter 'n' into R1
347 : ST 1, 1(4) ; Store argument 0 in callee
348 : LDA 6, 352(0) ; Return address
349 : ST 6, 0(4) ; Store return in callee frame
350 : ADD 5, 4, 0 ; Push callee frame
351 : LDA 7, 249(0) ; Call isPrime
352 : LD   1, 2(5) ;  Load function result
353 : LDC   2, 3(0) ;  Caller frame size
354 : SUB   5, 5, 2 ;  Pop back to caller
355 : SUB   4, 4, 2 ;  Pop back to caller
356 : ADD  2, 1, 0 ;  Move left operand to register 2
357 : LDA 4, 3(5) ; Base of callee frame
358 : LDA 4, 3(5) ; Base of callee frame
359 : LD   1, 1(5) ;  Load parameter 'n' into R1
360 : ST 1, 1(4) ; Store argument 0 in callee
361 : LDA 6, 365(0) ; Return address
362 : ST 6, 0(4) ; Store return in callee frame
363 : ADD 5, 4, 0 ; Push callee frame
364 : LDA 7, 161(0) ; Call reverse
365 : LD   1, 2(5) ;  Load function result
366 : LDC   2, 3(0) ;  Caller frame size
367 : SUB   5, 5, 2 ;  Pop back to caller
368 : SUB   4, 4, 2 ;  Pop back to caller
369 : ST 1, 1(4) ; Store argument 0 in callee
370 : LDA 6, 374(0) ; Return address
371 : ST 6, 0(4) ; Store return in callee frame
372 : ADD 5, 4, 0 ; Push callee frame
373 : LDA 7, 249(0) ; Call isPrime
374 : LD   1, 2(5) ;  Load function result
375 : LDC   2, 3(0) ;  Caller frame size
376 : SUB   5, 5, 2 ;  Pop back to caller
377 : SUB   4, 4, 2 ;  Pop back to caller
378 : MUL  1, 2, 1 ;  R1 = left AND right
379 : ST   1, 2(5) ;  Store function result into stack frame
380 : LD   6, 0(5) ;  Load return address
381 : LDA  7, 0(6) ;  Return to caller
