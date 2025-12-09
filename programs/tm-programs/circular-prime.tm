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
11 : LD   1, 1(5) ;  Load parameter 'x' into R1
12 : LDA 4, 3(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 4, 3(5) ; Base of callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 546(0) ; Call circularPrimesTo
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD   1, 2(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'num' into R1
28 : ADD  3, 1, 0 ;  Store left operand into temporary register
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : ADD  2, 3, 0 ;  Restore left operand
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : LDA  7, 58(0) ;  Skip ELSE block
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : ADD  3, 1, 0 ;  Store left operand into temporary register
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : ADD  2, 3, 0 ;  Restore left operand
43 : SUB  1, 2, 1 ;  R1 = left - right
44 : LDA 4, 4(5) ; Base of callee frame
45 : ST 1, 1(4) ; Store argument 0 in callee
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : LDA 4, 4(5) ; Base of callee frame
48 : ST 1, 2(4) ; Store argument 1 in callee
49 : LDA 4, 4(5) ; Base of callee frame
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 27(0) ; Call mod
54 : LD   1, 3(5) ;  Load function result
55 : LDC   2, 4(0) ;  Caller frame size
56 : SUB   5, 5, 2 ;  Pop back to caller
57 : SUB   4, 4, 2 ;  Pop back to caller
58 : ST   1, 3(5) ;  Store function result into stack frame
59 : LD   6, 0(5) ;  Load return address
60 : LDA  7, 0(6) ;  Return to caller
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : LDA 4, 4(5) ; Base of callee frame
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD   1, 1(5) ;  Load parameter 'a' into R1
65 : LDA 4, 4(5) ; Base of callee frame
66 : ST 1, 2(4) ; Store argument 1 in callee
67 : LDA 4, 4(5) ; Base of callee frame
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame
71 : LDA 7, 27(0) ; Call mod
72 : LD   1, 3(5) ;  Load function result
73 : LDC   2, 4(0) ;  Caller frame size
74 : SUB   5, 5, 2 ;  Pop back to caller
75 : SUB   4, 4, 2 ;  Pop back to caller
76 : ADD  3, 1, 0 ;  Store left operand into temporary register
77 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
78 : ADD  2, 3, 0 ;  Restore left operand
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 1(5) ;  Load parameter 'i' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 2(5) ;  Load parameter 'n' into R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for less-than check
92 : JLT  1, 2(7) ;  If R1 < 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 135(0) ;  If condition is false, jump to ELSE
97 : LD   1, 1(5) ;  Load parameter 'i' into R1
98 : LDA 4, 4(5) ; Base of callee frame
99 : ST 1, 1(4) ; Store argument 0 in callee
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : LDA 4, 4(5) ; Base of callee frame
102 : ST 1, 2(4) ; Store argument 1 in callee
103 : LDA 4, 4(5) ; Base of callee frame
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return in callee frame
106 : ADD 5, 4, 0 ; Push callee frame
107 : LDA 7, 61(0) ; Call divides
108 : LD   1, 3(5) ;  Load function result
109 : LDC   2, 4(0) ;  Caller frame size
110 : SUB   5, 5, 2 ;  Pop back to caller
111 : SUB   4, 4, 2 ;  Pop back to caller
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LD   1, 1(5) ;  Load parameter 'i' into R1
114 : ADD  3, 1, 0 ;  Store left operand into temporary register
115 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
116 : ADD  2, 3, 0 ;  Restore left operand
117 : ADD  1, 2, 1 ;  R1 = left + right
118 : LDA 4, 4(5) ; Base of callee frame
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD   1, 2(5) ;  Load parameter 'n' into R1
121 : LDA 4, 4(5) ; Base of callee frame
122 : ST 1, 2(4) ; Store argument 1 in callee
123 : LDA 4, 4(5) ; Base of callee frame
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame
127 : LDA 7, 87(0) ; Call hasDivisorFrom
128 : LD   1, 3(5) ;  Load function result
129 : LDC   2, 4(0) ;  Caller frame size
130 : SUB   5, 5, 2 ;  Pop back to caller
131 : SUB   4, 4, 2 ;  Pop back to caller
132 : ADD  2, 3, 0 ;  Restore left operand
133 : ADD  1, 2, 1 ;  R1 = left OR right
134 : LDA  7, 136(0) ;  Skip ELSE block
135 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
136 : ST   1, 3(5) ;  Store function result into stack frame
137 : LD   6, 0(5) ;  Load return address
138 : LDA  7, 0(6) ;  Return to caller
139 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
140 : LDA 4, 4(5) ; Base of callee frame
141 : ST 1, 1(4) ; Store argument 0 in callee
142 : LD   1, 1(5) ;  Load parameter 'n' into R1
143 : LDA 4, 4(5) ; Base of callee frame
144 : ST 1, 2(4) ; Store argument 1 in callee
145 : LDA 4, 4(5) ; Base of callee frame
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return in callee frame
148 : ADD 5, 4, 0 ; Push callee frame
149 : LDA 7, 87(0) ; Call hasDivisorFrom
150 : LD   1, 3(5) ;  Load function result
151 : LDC   2, 4(0) ;  Caller frame size
152 : SUB   5, 5, 2 ;  Pop back to caller
153 : SUB   4, 4, 2 ;  Pop back to caller
154 : LDC  2, 1(0) ;  Load 1 into R2
155 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
156 : ST   1, 2(5) ;  Store function result into stack frame
157 : LD   6, 0(5) ;  Load return address
158 : LDA  7, 0(6) ;  Return to caller
159 : LD   1, 1(5) ;  Load parameter 'x' into R1
160 : ADD  3, 1, 0 ;  Store left operand into temporary register
161 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
162 : ADD  2, 3, 0 ;  Restore left operand
163 : DIV  1, 2, 1 ;  R1 = left / right
164 : ADD  3, 1, 0 ;  Store left operand into temporary register
165 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
166 : ADD  2, 3, 0 ;  Restore left operand
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 2(5) ;  Load parameter 'y' into R1
174 : LDA  7, 198(0) ;  Skip ELSE block
175 : LD   1, 1(5) ;  Load parameter 'x' into R1
176 : ADD  3, 1, 0 ;  Store left operand into temporary register
177 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
178 : ADD  2, 3, 0 ;  Restore left operand
179 : DIV  1, 2, 1 ;  R1 = left / right
180 : LDA 4, 4(5) ; Base of callee frame
181 : ST 1, 1(4) ; Store argument 0 in callee
182 : LD   1, 2(5) ;  Load parameter 'y' into R1
183 : ADD  3, 1, 0 ;  Store left operand into temporary register
184 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
185 : ADD  2, 3, 0 ;  Restore left operand
186 : ADD  1, 2, 1 ;  R1 = left + right
187 : LDA 4, 4(5) ; Base of callee frame
188 : ST 1, 2(4) ; Store argument 1 in callee
189 : LDA 4, 4(5) ; Base of callee frame
190 : LDA 6, 194(0) ; Return address
191 : ST 6, 0(4) ; Store return in callee frame
192 : ADD 5, 4, 0 ; Push callee frame
193 : LDA 7, 159(0) ; Call log10Helper
194 : LD   1, 3(5) ;  Load function result
195 : LDC   2, 4(0) ;  Caller frame size
196 : SUB   5, 5, 2 ;  Pop back to caller
197 : SUB   4, 4, 2 ;  Pop back to caller
198 : ST   1, 3(5) ;  Store function result into stack frame
199 : LD   6, 0(5) ;  Load return address
200 : LDA  7, 0(6) ;  Return to caller
201 : LD   1, 1(5) ;  Load parameter 'x' into R1
202 : LDA 4, 4(5) ; Base of callee frame
203 : ST 1, 1(4) ; Store argument 0 in callee
204 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
205 : LDA 4, 4(5) ; Base of callee frame
206 : ST 1, 2(4) ; Store argument 1 in callee
207 : LDA 4, 4(5) ; Base of callee frame
208 : LDA 6, 212(0) ; Return address
209 : ST 6, 0(4) ; Store return in callee frame
210 : ADD 5, 4, 0 ; Push callee frame
211 : LDA 7, 159(0) ; Call log10Helper
212 : LD   1, 3(5) ;  Load function result
213 : LDC   2, 4(0) ;  Caller frame size
214 : SUB   5, 5, 2 ;  Pop back to caller
215 : SUB   4, 4, 2 ;  Pop back to caller
216 : ST   1, 2(5) ;  Store function result into stack frame
217 : LD   6, 0(5) ;  Load return address
218 : LDA  7, 0(6) ;  Return to caller
219 : LD   1, 2(5) ;  Load parameter 'power' into R1
220 : ADD  3, 1, 0 ;  Store left operand into temporary register
221 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
222 : ADD  2, 3, 0 ;  Restore left operand
223 : SUB  1, 2, 1 ;  left - right for equality check
224 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
225 : LDC  1, 0(0) ;  false
226 : LDA  7, 1(7) ;  skip setting true
227 : LDC  1, 1(0) ;  true
228 : JEQ  1, 231(0) ;  If condition is false, jump to ELSE
229 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
230 : LDA  7, 269(0) ;  Skip ELSE block
231 : LD   1, 2(5) ;  Load parameter 'power' into R1
232 : ADD  3, 1, 0 ;  Store left operand into temporary register
233 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
234 : ADD  2, 3, 0 ;  Restore left operand
235 : SUB  1, 2, 1 ;  left - right for equality check
236 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
237 : LDC  1, 0(0) ;  false
238 : LDA  7, 1(7) ;  skip setting true
239 : LDC  1, 1(0) ;  true
240 : JEQ  1, 243(0) ;  If condition is false, jump to ELSE
241 : LD   1, 3(5) ;  Load parameter 'total' into R1
242 : LDA  7, 269(0) ;  Skip ELSE block
243 : LD   1, 1(5) ;  Load parameter 'base' into R1
244 : LDA 4, 5(5) ; Base of callee frame
245 : ST 1, 1(4) ; Store argument 0 in callee
246 : LD   1, 2(5) ;  Load parameter 'power' into R1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : SUB  1, 2, 1 ;  R1 = left - right
251 : LDA 4, 5(5) ; Base of callee frame
252 : ST 1, 2(4) ; Store argument 1 in callee
253 : LD   1, 1(5) ;  Load parameter 'base' into R1
254 : ADD  3, 1, 0 ;  Store left operand into temporary register
255 : LD   1, 3(5) ;  Load parameter 'total' into R1
256 : ADD  2, 3, 0 ;  Restore left operand
257 : MUL  1, 2, 1 ;  R1 = left * right
258 : LDA 4, 5(5) ; Base of callee frame
259 : ST 1, 3(4) ; Store argument 2 in callee
260 : LDA 4, 5(5) ; Base of callee frame
261 : LDA 6, 265(0) ; Return address
262 : ST 6, 0(4) ; Store return in callee frame
263 : ADD 5, 4, 0 ; Push callee frame
264 : LDA 7, 219(0) ; Call powHelper
265 : LD   1, 4(5) ;  Load function result
266 : LDC   2, 5(0) ;  Caller frame size
267 : SUB   5, 5, 2 ;  Pop back to caller
268 : SUB   4, 4, 2 ;  Pop back to caller
269 : ST   1, 4(5) ;  Store function result into stack frame
270 : LD   6, 0(5) ;  Load return address
271 : LDA  7, 0(6) ;  Return to caller
272 : LD   1, 1(5) ;  Load parameter 'x' into R1
273 : LDA 4, 5(5) ; Base of callee frame
274 : ST 1, 1(4) ; Store argument 0 in callee
275 : LD   1, 2(5) ;  Load parameter 'y' into R1
276 : LDA 4, 5(5) ; Base of callee frame
277 : ST 1, 2(4) ; Store argument 1 in callee
278 : LD   1, 1(5) ;  Load parameter 'x' into R1
279 : LDA 4, 5(5) ; Base of callee frame
280 : ST 1, 3(4) ; Store argument 2 in callee
281 : LDA 4, 5(5) ; Base of callee frame
282 : LDA 6, 286(0) ; Return address
283 : ST 6, 0(4) ; Store return in callee frame
284 : ADD 5, 4, 0 ; Push callee frame
285 : LDA 7, 219(0) ; Call powHelper
286 : LD   1, 4(5) ;  Load function result
287 : LDC   2, 5(0) ;  Caller frame size
288 : SUB   5, 5, 2 ;  Pop back to caller
289 : SUB   4, 4, 2 ;  Pop back to caller
290 : ST   1, 3(5) ;  Store function result into stack frame
291 : LD   6, 0(5) ;  Load return address
292 : LDA  7, 0(6) ;  Return to caller
293 : LD   1, 1(5) ;  Load parameter 'x' into R1
294 : ADD  3, 1, 0 ;  Store left operand into temporary register
295 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
296 : ADD  2, 3, 0 ;  Restore left operand
297 : DIV  1, 2, 1 ;  R1 = left / right
298 : ADD  3, 1, 0 ;  Store left operand into temporary register
299 : LD   1, 1(5) ;  Load parameter 'x' into R1
300 : LDA 4, 4(5) ; Base of callee frame
301 : ST 1, 1(4) ; Store argument 0 in callee
302 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
303 : LDA 4, 4(5) ; Base of callee frame
304 : ST 1, 2(4) ; Store argument 1 in callee
305 : LDA 4, 4(5) ; Base of callee frame
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return in callee frame
308 : ADD 5, 4, 0 ; Push callee frame
309 : LDA 7, 27(0) ; Call mod
310 : LD   1, 3(5) ;  Load function result
311 : LDC   2, 4(0) ;  Caller frame size
312 : SUB   5, 5, 2 ;  Pop back to caller
313 : SUB   4, 4, 2 ;  Pop back to caller
314 : ADD  3, 1, 0 ;  Store left operand into temporary register
315 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
316 : LDA 4, 4(5) ; Base of callee frame
317 : ST 1, 1(4) ; Store argument 0 in callee
318 : LD   1, 1(5) ;  Load parameter 'x' into R1
319 : LDA 4, 3(5) ; Base of callee frame
320 : ST 1, 1(4) ; Store argument 0 in callee
321 : LDA 4, 3(5) ; Base of callee frame
322 : LDA 6, 326(0) ; Return address
323 : ST 6, 0(4) ; Store return in callee frame
324 : ADD 5, 4, 0 ; Push callee frame
325 : LDA 7, 201(0) ; Call log10
326 : LD   1, 2(5) ;  Load function result
327 : LDC   2, 3(0) ;  Caller frame size
328 : SUB   5, 5, 2 ;  Pop back to caller
329 : SUB   4, 4, 2 ;  Pop back to caller
330 : LDA 4, 4(5) ; Base of callee frame
331 : ST 1, 2(4) ; Store argument 1 in callee
332 : LDA 4, 4(5) ; Base of callee frame
333 : LDA 6, 337(0) ; Return address
334 : ST 6, 0(4) ; Store return in callee frame
335 : ADD 5, 4, 0 ; Push callee frame
336 : LDA 7, 272(0) ; Call pow
337 : LD   1, 3(5) ;  Load function result
338 : LDC   2, 4(0) ;  Caller frame size
339 : SUB   5, 5, 2 ;  Pop back to caller
340 : SUB   4, 4, 2 ;  Pop back to caller
341 : ADD  2, 3, 0 ;  Restore left operand
342 : MUL  1, 2, 1 ;  R1 = left * right
343 : ADD  2, 3, 0 ;  Restore left operand
344 : ADD  1, 2, 1 ;  R1 = left + right
345 : ST   1, 2(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LD   1, 1(5) ;  Load parameter 'x' into R1
349 : LDA 4, 3(5) ; Base of callee frame
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return addr in callee frame
352 : ADD 5, 4, 0 ; Push new frame
353 : LDA 7, 8(0) ; Call print
354 : LDC 2, 3(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop frame
356 : ST   1, 2(5) ;  Store function result into stack frame
357 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
358 : ST   1, 2(5) ;  Store function result into stack frame
359 : LD   6, 0(5) ;  Load return address
360 : LDA  7, 0(6) ;  Return to caller
361 : LD   1, 2(5) ;  Load parameter 'turns' into R1
362 : ADD  3, 1, 0 ;  Store left operand into temporary register
363 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
364 : ADD  2, 3, 0 ;  Restore left operand
365 : SUB  1, 2, 1 ;  left - right for equality check
366 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
367 : LDC  1, 0(0) ;  false
368 : LDA  7, 1(7) ;  skip setting true
369 : LDC  1, 1(0) ;  true
370 : JEQ  1, 373(0) ;  If condition is false, jump to ELSE
371 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
372 : LDA  7, 418(0) ;  Skip ELSE block
373 : LD   1, 1(5) ;  Load parameter 'x' into R1
374 : LDA 4, 3(5) ; Base of callee frame
375 : ST 1, 1(4) ; Store argument 0 in callee
376 : LDA 4, 3(5) ; Base of callee frame
377 : LDA 6, 381(0) ; Return address
378 : ST 6, 0(4) ; Store return in callee frame
379 : ADD 5, 4, 0 ; Push callee frame
380 : LDA 7, 139(0) ; Call isPrime
381 : LD   1, 2(5) ;  Load function result
382 : LDC   2, 3(0) ;  Caller frame size
383 : SUB   5, 5, 2 ;  Pop back to caller
384 : SUB   4, 4, 2 ;  Pop back to caller
385 : ADD  3, 1, 0 ;  Store left operand into temporary register
386 : LD   1, 1(5) ;  Load parameter 'x' into R1
387 : LDA 4, 3(5) ; Base of callee frame
388 : ST 1, 1(4) ; Store argument 0 in callee
389 : LDA 4, 3(5) ; Base of callee frame
390 : LDA 6, 394(0) ; Return address
391 : ST 6, 0(4) ; Store return in callee frame
392 : ADD 5, 4, 0 ; Push callee frame
393 : LDA 7, 293(0) ; Call rotate
394 : LD   1, 2(5) ;  Load function result
395 : LDC   2, 3(0) ;  Caller frame size
396 : SUB   5, 5, 2 ;  Pop back to caller
397 : SUB   4, 4, 2 ;  Pop back to caller
398 : LDA 4, 4(5) ; Base of callee frame
399 : ST 1, 1(4) ; Store argument 0 in callee
400 : LD   1, 2(5) ;  Load parameter 'turns' into R1
401 : ADD  3, 1, 0 ;  Store left operand into temporary register
402 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
403 : ADD  2, 3, 0 ;  Restore left operand
404 : SUB  1, 2, 1 ;  R1 = left - right
405 : LDA 4, 4(5) ; Base of callee frame
406 : ST 1, 2(4) ; Store argument 1 in callee
407 : LDA 4, 4(5) ; Base of callee frame
408 : LDA 6, 412(0) ; Return address
409 : ST 6, 0(4) ; Store return in callee frame
410 : ADD 5, 4, 0 ; Push callee frame
411 : LDA 7, 361(0) ; Call isCircularPrimeHelper
412 : LD   1, 3(5) ;  Load function result
413 : LDC   2, 4(0) ;  Caller frame size
414 : SUB   5, 5, 2 ;  Pop back to caller
415 : SUB   4, 4, 2 ;  Pop back to caller
416 : ADD  2, 3, 0 ;  Restore left operand
417 : MUL  1, 2, 1 ;  R1 = left AND right
418 : ST   1, 3(5) ;  Store function result into stack frame
419 : LD   6, 0(5) ;  Load return address
420 : LDA  7, 0(6) ;  Return to caller
421 : LD   1, 1(5) ;  Load parameter 'x' into R1
422 : LDA 4, 4(5) ; Base of callee frame
423 : ST 1, 1(4) ; Store argument 0 in callee
424 : LD   1, 1(5) ;  Load parameter 'x' into R1
425 : LDA 4, 3(5) ; Base of callee frame
426 : ST 1, 1(4) ; Store argument 0 in callee
427 : LDA 4, 3(5) ; Base of callee frame
428 : LDA 6, 432(0) ; Return address
429 : ST 6, 0(4) ; Store return in callee frame
430 : ADD 5, 4, 0 ; Push callee frame
431 : LDA 7, 201(0) ; Call log10
432 : LD   1, 2(5) ;  Load function result
433 : LDC   2, 3(0) ;  Caller frame size
434 : SUB   5, 5, 2 ;  Pop back to caller
435 : SUB   4, 4, 2 ;  Pop back to caller
436 : ADD  3, 1, 0 ;  Store left operand into temporary register
437 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
438 : ADD  2, 3, 0 ;  Restore left operand
439 : ADD  1, 2, 1 ;  R1 = left + right
440 : LDA 4, 4(5) ; Base of callee frame
441 : ST 1, 2(4) ; Store argument 1 in callee
442 : LDA 4, 4(5) ; Base of callee frame
443 : LDA 6, 447(0) ; Return address
444 : ST 6, 0(4) ; Store return in callee frame
445 : ADD 5, 4, 0 ; Push callee frame
446 : LDA 7, 361(0) ; Call isCircularPrimeHelper
447 : LD   1, 3(5) ;  Load function result
448 : LDC   2, 4(0) ;  Caller frame size
449 : SUB   5, 5, 2 ;  Pop back to caller
450 : SUB   4, 4, 2 ;  Pop back to caller
451 : JEQ  1, 465(0) ;  If condition is false, jump to ELSE
452 : LD   1, 1(5) ;  Load parameter 'x' into R1
453 : LDA 4, 3(5) ; Base of callee frame
454 : ST 1, 1(4) ; Store argument 0 in callee
455 : LDA 4, 3(5) ; Base of callee frame
456 : LDA 6, 460(0) ; Return address
457 : ST 6, 0(4) ; Store return in callee frame
458 : ADD 5, 4, 0 ; Push callee frame
459 : LDA 7, 348(0) ; Call report
460 : LD   1, 2(5) ;  Load function result
461 : LDC   2, 3(0) ;  Caller frame size
462 : SUB   5, 5, 2 ;  Pop back to caller
463 : SUB   4, 4, 2 ;  Pop back to caller
464 : LDA  7, 466(0) ;  Skip ELSE block
465 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
466 : ST   1, 2(5) ;  Store function result into stack frame
467 : LD   6, 0(5) ;  Load return address
468 : LDA  7, 0(6) ;  Return to caller
469 : LD   1, 2(5) ;  Load parameter 'x' into R1
470 : ADD  3, 1, 0 ;  Store left operand into temporary register
471 : LD   1, 1(5) ;  Load parameter 'top' into R1
472 : ADD  2, 3, 0 ;  Restore left operand
473 : SUB  1, 2, 1 ;  left - right for less-than check
474 : JLT  1, 2(7) ;  If R1 < 0, jump to true
475 : LDC  1, 0(0) ;  false
476 : LDA  7, 1(7) ;  skip setting true
477 : LDC  1, 1(0) ;  true
478 : JEQ  1, 542(0) ;  If condition is false, jump to ELSE
479 : LD   1, 2(5) ;  Load parameter 'x' into R1
480 : LDA 4, 3(5) ; Base of callee frame
481 : ST 1, 1(4) ; Store argument 0 in callee
482 : LDA 4, 3(5) ; Base of callee frame
483 : LDA 6, 487(0) ; Return address
484 : ST 6, 0(4) ; Store return in callee frame
485 : ADD 5, 4, 0 ; Push callee frame
486 : LDA 7, 421(0) ; Call isCircularPrime
487 : LD   1, 2(5) ;  Load function result
488 : LDC   2, 3(0) ;  Caller frame size
489 : SUB   5, 5, 2 ;  Pop back to caller
490 : SUB   4, 4, 2 ;  Pop back to caller
491 : JEQ  1, 519(0) ;  If condition is false, jump to ELSE
492 : LD   1, 1(5) ;  Load parameter 'top' into R1
493 : LDA 4, 5(5) ; Base of callee frame
494 : ST 1, 1(4) ; Store argument 0 in callee
495 : LD   1, 2(5) ;  Load parameter 'x' into R1
496 : ADD  3, 1, 0 ;  Store left operand into temporary register
497 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
498 : ADD  2, 3, 0 ;  Restore left operand
499 : ADD  1, 2, 1 ;  R1 = left + right
500 : LDA 4, 5(5) ; Base of callee frame
501 : ST 1, 2(4) ; Store argument 1 in callee
502 : LD   1, 3(5) ;  Load parameter 'count' into R1
503 : ADD  3, 1, 0 ;  Store left operand into temporary register
504 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
505 : ADD  2, 3, 0 ;  Restore left operand
506 : ADD  1, 2, 1 ;  R1 = left + right
507 : LDA 4, 5(5) ; Base of callee frame
508 : ST 1, 3(4) ; Store argument 2 in callee
509 : LDA 4, 5(5) ; Base of callee frame
510 : LDA 6, 514(0) ; Return address
511 : ST 6, 0(4) ; Store return in callee frame
512 : ADD 5, 4, 0 ; Push callee frame
513 : LDA 7, 469(0) ; Call circularPrimesToHelper
514 : LD   1, 4(5) ;  Load function result
515 : LDC   2, 5(0) ;  Caller frame size
516 : SUB   5, 5, 2 ;  Pop back to caller
517 : SUB   4, 4, 2 ;  Pop back to caller
518 : LDA  7, 541(0) ;  Skip ELSE block
519 : LD   1, 1(5) ;  Load parameter 'top' into R1
520 : LDA 4, 5(5) ; Base of callee frame
521 : ST 1, 1(4) ; Store argument 0 in callee
522 : LD   1, 2(5) ;  Load parameter 'x' into R1
523 : ADD  3, 1, 0 ;  Store left operand into temporary register
524 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
525 : ADD  2, 3, 0 ;  Restore left operand
526 : ADD  1, 2, 1 ;  R1 = left + right
527 : LDA 4, 5(5) ; Base of callee frame
528 : ST 1, 2(4) ; Store argument 1 in callee
529 : LD   1, 3(5) ;  Load parameter 'count' into R1
530 : LDA 4, 5(5) ; Base of callee frame
531 : ST 1, 3(4) ; Store argument 2 in callee
532 : LDA 4, 5(5) ; Base of callee frame
533 : LDA 6, 537(0) ; Return address
534 : ST 6, 0(4) ; Store return in callee frame
535 : ADD 5, 4, 0 ; Push callee frame
536 : LDA 7, 469(0) ; Call circularPrimesToHelper
537 : LD   1, 4(5) ;  Load function result
538 : LDC   2, 5(0) ;  Caller frame size
539 : SUB   5, 5, 2 ;  Pop back to caller
540 : SUB   4, 4, 2 ;  Pop back to caller
541 : LDA  7, 543(0) ;  Skip ELSE block
542 : LD   1, 3(5) ;  Load parameter 'count' into R1
543 : ST   1, 4(5) ;  Store function result into stack frame
544 : LD   6, 0(5) ;  Load return address
545 : LDA  7, 0(6) ;  Return to caller
546 : LD   1, 1(5) ;  Load parameter 'x' into R1
547 : ADD  3, 1, 0 ;  Store left operand into temporary register
548 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
549 : ADD  2, 3, 0 ;  Restore left operand
550 : ADD  1, 2, 1 ;  R1 = left + right
551 : LDA 4, 5(5) ; Base of callee frame
552 : ST 1, 1(4) ; Store argument 0 in callee
553 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
554 : LDA 4, 5(5) ; Base of callee frame
555 : ST 1, 2(4) ; Store argument 1 in callee
556 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
557 : LDA 4, 5(5) ; Base of callee frame
558 : ST 1, 3(4) ; Store argument 2 in callee
559 : LDA 4, 5(5) ; Base of callee frame
560 : LDA 6, 564(0) ; Return address
561 : ST 6, 0(4) ; Store return in callee frame
562 : ADD 5, 4, 0 ; Push callee frame
563 : LDA 7, 469(0) ; Call circularPrimesToHelper
564 : LD   1, 4(5) ;  Load function result
565 : LDC   2, 5(0) ;  Caller frame size
566 : SUB   5, 5, 2 ;  Pop back to caller
567 : SUB   4, 4, 2 ;  Pop back to caller
568 : ST   1, 2(5) ;  Store function result into stack frame
569 : LD   6, 0(5) ;  Load return address
570 : LDA  7, 0(6) ;  Return to caller
