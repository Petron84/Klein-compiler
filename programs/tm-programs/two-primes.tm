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
13 : LD   1, 2(5) ;  Load parameter 'selector' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : LDA 4, 3(5) ; Base of callee frame
25 : ST 1, 1(4) ; Store argument 0 in callee
26 : LDA 4, 3(5) ; Base of callee frame
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame
30 : LDA 7, 345(0) ; Call emirp
31 : LD   1, 2(5) ;  Load function result
32 : LDC   2, 3(0) ;  Caller frame size
33 : SUB   5, 5, 2 ;  Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s frame
35 : LDA  7, 84(0) ;  Skip ELSE block
36 : LD   1, 2(5) ;  Load parameter 'selector' into R1
37 : ADD  3, 1, 0 ;  Store left operand into temporary register
38 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
39 : ADD  2, 3, 0 ;  Restore left operand
40 : SUB  1, 2, 1 ;  left - right for equality check
41 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
42 : LDC  1, 0(0) ;  false
43 : LDA  7, 1(7) ;  skip setting true
44 : LDC  1, 1(0) ;  true
45 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
46 : LD   1, 1(5) ;  Load parameter 'n' into R1
47 : LDA 4, 3(5) ; Base of callee frame
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LDA 4, 3(5) ; Base of callee frame
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 301(0) ; Call snowball
54 : LD   1, 2(5) ;  Load function result
55 : LDC   2, 3(0) ;  Caller frame size
56 : SUB   5, 5, 2 ;  Pop back to caller
57 : ST 1, 3(5) ; Store result into caller’s frame
58 : LDA  7, 84(0) ;  Skip ELSE block
59 : LD   1, 2(5) ;  Load parameter 'selector' into R1
60 : ADD  3, 1, 0 ;  Store left operand into temporary register
61 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : SUB  1, 2, 1 ;  left - right for equality check
64 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : JEQ  1, 82(0) ;  If condition is false, jump to ELSE
69 : LD   1, 1(5) ;  Load parameter 'n' into R1
70 : LDA 4, 3(5) ; Base of callee frame
71 : ST 1, 1(4) ; Store argument 0 in callee
72 : LDA 4, 3(5) ; Base of callee frame
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame
76 : LDA 7, 268(0) ; Call doBoth
77 : LD   1, 2(5) ;  Load function result
78 : LDC   2, 3(0) ;  Caller frame size
79 : SUB   5, 5, 2 ;  Pop back to caller
80 : ST 1, 3(5) ; Store result into caller’s frame
81 : LDA  7, 84(0) ;  Skip ELSE block
82 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
83 : ST 1, 3(5) ;  Store result into current frame's return slot
84 : LD   1, 3(5) ;  Load return value into register 1
85 : LD  6, 0(5) ;  Load return address for main function into register 6
86 : LDA  7, 0(6) ;  Jump to return address of main function
87 : LD   1, 1(5) ;  Load parameter 'm' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 1(5) ;  Load parameter 'm' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : DIV  1, 2, 1 ;  R1 = left / right
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 2(5) ;  Load parameter 'n' into R1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ADD  2, 3, 0 ;  Restore left operand
99 : SUB  1, 2, 1 ;  R1 = left - right
100 : ST   1, 3(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
103 : LD   1, 1(5) ;  Load parameter 'n' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : SUB  1, 2, 1 ;  left - right for equality check
108 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
109 : LDC  1, 0(0) ;  false
110 : LDA  7, 1(7) ;  skip setting true
111 : LDC  1, 1(0) ;  true
112 : JEQ  1, 115(0) ;  If condition is false, jump to ELSE
113 : LD   1, 2(5) ;  Load parameter 'nR' into R1
114 : LDA  7, 154(0) ;  Skip ELSE block
115 : LD   1, 1(5) ;  Load parameter 'n' into R1
116 : ADD  3, 1, 0 ;  Store left operand into temporary register
117 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
118 : ADD  2, 3, 0 ;  Restore left operand
119 : DIV  1, 2, 1 ;  R1 = left / right
120 : LDA 4, 4(5) ; Base of callee frame
121 : ST 1, 1(4) ; Store argument 0 in callee
122 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
123 : ADD  3, 1, 0 ;  Store left operand into temporary register
124 : LD   1, 2(5) ;  Load parameter 'nR' into R1
125 : ADD  2, 3, 0 ;  Restore left operand
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ADD  3, 1, 0 ;  Store left operand into temporary register
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : LDA 4, 4(5) ; Base of callee frame
130 : ST 1, 1(4) ; Store argument 0 in callee
131 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
132 : LDA 4, 4(5) ; Base of callee frame
133 : ST 1, 2(4) ; Store argument 1 in callee
134 : LDA 4, 4(5) ; Base of callee frame
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 87(0) ; Call MOD
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 4(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : ADD  2, 3, 0 ;  Restore left operand
143 : ADD  1, 2, 1 ;  R1 = left + right
144 : LDA 4, 4(5) ; Base of callee frame
145 : ST 1, 2(4) ; Store argument 1 in callee
146 : LDA 4, 4(5) ; Base of callee frame
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame
150 : LDA 7, 103(0) ; Call reverseL
151 : LD   1, 3(5) ;  Load function result
152 : LDC   2, 4(0) ;  Caller frame size
153 : SUB   5, 5, 2 ;  Pop back to caller
154 : ST   1, 3(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LD   1, 1(5) ;  Load parameter 'n' into R1
158 : LDA 4, 4(5) ; Base of callee frame
159 : ST 1, 1(4) ; Store argument 0 in callee
160 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
161 : LDA 4, 4(5) ; Base of callee frame
162 : ST 1, 2(4) ; Store argument 1 in callee
163 : LDA 4, 4(5) ; Base of callee frame
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 103(0) ; Call reverseL
168 : LD   1, 3(5) ;  Load function result
169 : LDC   2, 4(0) ;  Caller frame size
170 : SUB   5, 5, 2 ;  Pop back to caller
171 : ST   1, 2(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
174 : LD   1, 2(5) ;  Load parameter 'b' into R1
175 : LDA 4, 4(5) ; Base of callee frame
176 : ST 1, 1(4) ; Store argument 0 in callee
177 : LD   1, 1(5) ;  Load parameter 'a' into R1
178 : LDA 4, 4(5) ; Base of callee frame
179 : ST 1, 2(4) ; Store argument 1 in callee
180 : LDA 4, 4(5) ; Base of callee frame
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return in callee frame
183 : ADD 5, 4, 0 ; Push callee frame
184 : LDA 7, 87(0) ; Call MOD
185 : LD   1, 3(5) ;  Load function result
186 : LDC   2, 4(0) ;  Caller frame size
187 : SUB   5, 5, 2 ;  Pop back to caller
188 : ADD  3, 1, 0 ;  Store left operand into temporary register
189 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
190 : ADD  2, 3, 0 ;  Restore left operand
191 : SUB  1, 2, 1 ;  left - right for equality check
192 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
193 : LDC  1, 0(0) ;  false
194 : LDA  7, 1(7) ;  skip setting true
195 : LDC  1, 1(0) ;  true
196 : ST   1, 3(5) ;  Store function result into stack frame
197 : LD   6, 0(5) ;  Load return address
198 : LDA  7, 0(6) ;  Return to caller
199 : LD   1, 1(5) ;  Load parameter 'i' into R1
200 : ADD  3, 1, 0 ;  Store left operand into temporary register
201 : LD   1, 2(5) ;  Load parameter 'n' into R1
202 : ADD  2, 3, 0 ;  Restore left operand
203 : SUB  1, 2, 1 ;  left - right for less-than check
204 : JLT  1, 2(7) ;  If R1 < 0, jump to true
205 : LDC  1, 0(0) ;  false
206 : LDA  7, 1(7) ;  skip setting true
207 : LDC  1, 1(0) ;  true
208 : JEQ  1, 245(0) ;  If condition is false, jump to ELSE
209 : LD   1, 1(5) ;  Load parameter 'i' into R1
210 : LDA 4, 4(5) ; Base of callee frame
211 : ST 1, 1(4) ; Store argument 0 in callee
212 : LD   1, 2(5) ;  Load parameter 'n' into R1
213 : LDA 4, 4(5) ; Base of callee frame
214 : ST 1, 2(4) ; Store argument 1 in callee
215 : LDA 4, 4(5) ; Base of callee frame
216 : LDA 6, 220(0) ; Return address
217 : ST 6, 0(4) ; Store return in callee frame
218 : ADD 5, 4, 0 ; Push callee frame
219 : LDA 7, 174(0) ; Call divides
220 : LD   1, 3(5) ;  Load function result
221 : LDC   2, 4(0) ;  Caller frame size
222 : SUB   5, 5, 2 ;  Pop back to caller
223 : ADD  3, 1, 0 ;  Store left operand into temporary register
224 : LD   1, 1(5) ;  Load parameter 'i' into R1
225 : ADD  3, 1, 0 ;  Store left operand into temporary register
226 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
227 : ADD  2, 3, 0 ;  Restore left operand
228 : ADD  1, 2, 1 ;  R1 = left + right
229 : LDA 4, 4(5) ; Base of callee frame
230 : ST 1, 1(4) ; Store argument 0 in callee
231 : LD   1, 2(5) ;  Load parameter 'n' into R1
232 : LDA 4, 4(5) ; Base of callee frame
233 : ST 1, 2(4) ; Store argument 1 in callee
234 : LDA 4, 4(5) ; Base of callee frame
235 : LDA 6, 239(0) ; Return address
236 : ST 6, 0(4) ; Store return in callee frame
237 : ADD 5, 4, 0 ; Push callee frame
238 : LDA 7, 199(0) ; Call hasDivisorFrom
239 : LD   1, 3(5) ;  Load function result
240 : LDC   2, 4(0) ;  Caller frame size
241 : SUB   5, 5, 2 ;  Pop back to caller
242 : ADD  2, 3, 0 ;  Restore left operand
243 : ADD  1, 2, 1 ;  R1 = left OR right
244 : LDA  7, 246(0) ;  Skip ELSE block
245 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
246 : ST   1, 3(5) ;  Store function result into stack frame
247 : LD   6, 0(5) ;  Load return address
248 : LDA  7, 0(6) ;  Return to caller
249 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
250 : LDA 4, 4(5) ; Base of callee frame
251 : ST 1, 1(4) ; Store argument 0 in callee
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : LDA 4, 4(5) ; Base of callee frame
254 : ST 1, 2(4) ; Store argument 1 in callee
255 : LDA 4, 4(5) ; Base of callee frame
256 : LDA 6, 260(0) ; Return address
257 : ST 6, 0(4) ; Store return in callee frame
258 : ADD 5, 4, 0 ; Push callee frame
259 : LDA 7, 199(0) ; Call hasDivisorFrom
260 : LD   1, 3(5) ;  Load function result
261 : LDC   2, 4(0) ;  Caller frame size
262 : SUB   5, 5, 2 ;  Pop back to caller
263 : LDC  2, 1(0) ;  Load 1 into R2
264 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
265 : ST   1, 2(5) ;  Store function result into stack frame
266 : LD   6, 0(5) ;  Load return address
267 : LDA  7, 0(6) ;  Return to caller
268 : LD   1, 1(5) ;  Load parameter 'n' into R1
269 : LDA 4, 3(5) ; Base of callee frame
270 : ST 1, 1(4) ; Store argument 0 in callee
271 : LDA 4, 3(5) ; Base of callee frame
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return in callee frame
274 : ADD 5, 4, 0 ; Push callee frame
275 : LDA 7, 345(0) ; Call emirp
276 : LD   1, 2(5) ;  Load function result
277 : LDC   2, 3(0) ;  Caller frame size
278 : SUB   5, 5, 2 ;  Pop back to caller
279 : LDA 4, 3(5) ; Base of callee frame
280 : LDA 6, 284(0) ; Return address
281 : ST 6, 0(4) ; Store return addr in callee frame
282 : ADD 5, 4, 0 ; Push new frame
283 : LDA 7, 10(0) ; Call print
284 : LDC 2, 3(0) ; Caller frame size
285 : SUB 5, 5, 2 ; Pop frame
286 : ST   1, 2(5) ;  Store function result into stack frame
287 : LD   1, 1(5) ;  Load parameter 'n' into R1
288 : LDA 4, 3(5) ; Base of callee frame
289 : ST 1, 1(4) ; Store argument 0 in callee
290 : LDA 4, 3(5) ; Base of callee frame
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame
294 : LDA 7, 301(0) ; Call snowball
295 : LD   1, 2(5) ;  Load function result
296 : LDC   2, 3(0) ;  Caller frame size
297 : SUB   5, 5, 2 ;  Pop back to caller
298 : ST   1, 2(5) ;  Store function result into stack frame
299 : LD   6, 0(5) ;  Load return address
300 : LDA  7, 0(6) ;  Return to caller
301 : LD   1, 1(5) ;  Load parameter 'n' into R1
302 : LDA 4, 3(5) ; Base of callee frame
303 : ST 1, 1(4) ; Store argument 0 in callee
304 : LDA 4, 3(5) ; Base of callee frame
305 : LDA 6, 309(0) ; Return address
306 : ST 6, 0(4) ; Store return in callee frame
307 : ADD 5, 4, 0 ; Push callee frame
308 : LDA 7, 249(0) ; Call isPrime
309 : LD   1, 2(5) ;  Load function result
310 : LDC   2, 3(0) ;  Caller frame size
311 : SUB   5, 5, 2 ;  Pop back to caller
312 : ADD  3, 1, 0 ;  Store left operand into temporary register
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : ADD  3, 1, 0 ;  Store left operand into temporary register
315 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
316 : ADD  2, 3, 0 ;  Restore left operand
317 : SUB  1, 2, 1 ;  left - right for less-than check
318 : JLT  1, 2(7) ;  If R1 < 0, jump to true
319 : LDC  1, 0(0) ;  false
320 : LDA  7, 1(7) ;  skip setting true
321 : LDC  1, 1(0) ;  true
322 : JEQ  1, 325(0) ;  If condition is false, jump to ELSE
323 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
324 : LDA  7, 340(0) ;  Skip ELSE block
325 : LD   1, 1(5) ;  Load parameter 'n' into R1
326 : ADD  3, 1, 0 ;  Store left operand into temporary register
327 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
328 : ADD  2, 3, 0 ;  Restore left operand
329 : DIV  1, 2, 1 ;  R1 = left / right
330 : LDA 4, 3(5) ; Base of callee frame
331 : ST 1, 1(4) ; Store argument 0 in callee
332 : LDA 4, 3(5) ; Base of callee frame
333 : LDA 6, 337(0) ; Return address
334 : ST 6, 0(4) ; Store return in callee frame
335 : ADD 5, 4, 0 ; Push callee frame
336 : LDA 7, 249(0) ; Call isPrime
337 : LD   1, 2(5) ;  Load function result
338 : LDC   2, 3(0) ;  Caller frame size
339 : SUB   5, 5, 2 ;  Pop back to caller
340 : ADD  2, 3, 0 ;  Restore left operand
341 : MUL  1, 2, 1 ;  R1 = left AND right
342 : ST   1, 2(5) ;  Store function result into stack frame
343 : LD   6, 0(5) ;  Load return address
344 : LDA  7, 0(6) ;  Return to caller
345 : LD   1, 1(5) ;  Load parameter 'n' into R1
346 : LDA 4, 3(5) ; Base of callee frame
347 : ST 1, 1(4) ; Store argument 0 in callee
348 : LDA 4, 3(5) ; Base of callee frame
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 249(0) ; Call isPrime
353 : LD   1, 2(5) ;  Load function result
354 : LDC   2, 3(0) ;  Caller frame size
355 : SUB   5, 5, 2 ;  Pop back to caller
356 : ADD  3, 1, 0 ;  Store left operand into temporary register
357 : LD   1, 1(5) ;  Load parameter 'n' into R1
358 : LDA 4, 3(5) ; Base of callee frame
359 : ST 1, 1(4) ; Store argument 0 in callee
360 : LDA 4, 3(5) ; Base of callee frame
361 : LDA 6, 365(0) ; Return address
362 : ST 6, 0(4) ; Store return in callee frame
363 : ADD 5, 4, 0 ; Push callee frame
364 : LDA 7, 157(0) ; Call reverse
365 : LD   1, 2(5) ;  Load function result
366 : LDC   2, 3(0) ;  Caller frame size
367 : SUB   5, 5, 2 ;  Pop back to caller
368 : LDA 4, 3(5) ; Base of callee frame
369 : ST 1, 1(4) ; Store argument 0 in callee
370 : LDA 4, 3(5) ; Base of callee frame
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return in callee frame
373 : ADD 5, 4, 0 ; Push callee frame
374 : LDA 7, 249(0) ; Call isPrime
375 : LD   1, 2(5) ;  Load function result
376 : LDC   2, 3(0) ;  Caller frame size
377 : SUB   5, 5, 2 ;  Pop back to caller
378 : ADD  2, 3, 0 ;  Restore left operand
379 : MUL  1, 2, 1 ;  R1 = left AND right
380 : ST   1, 2(5) ;  Store function result into stack frame
381 : LD   6, 0(5) ;  Load return address
382 : LDA  7, 0(6) ;  Return to caller
