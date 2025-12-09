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
18 : LDA 7, 524(0) ; Call circularPrimesTo
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'num' into R1
27 : ADD  3, 1, 0 ;  Store left operand into temporary register
28 : LD   1, 2(5) ;  Load parameter 'den' into R1
29 : ADD  2, 3, 0 ;  Restore left operand
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : LDA  7, 56(0) ;  Skip ELSE block
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'den' into R1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : LDA 4, 4(5) ; Base of callee frame
44 : ST 1, 1(4) ; Store argument 0 in callee
45 : LD   1, 2(5) ;  Load parameter 'den' into R1
46 : LDA 4, 4(5) ; Base of callee frame
47 : ST 1, 2(4) ; Store argument 1 in callee
48 : LDA 4, 4(5) ; Base of callee frame
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 26(0) ; Call mod
53 : LD   1, 3(5) ;  Load function result
54 : LDC   2, 4(0) ;  Caller frame size
55 : SUB   5, 5, 2 ;  Pop back to caller
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   6, 0(5) ;  Load return address
58 : LDA  7, 0(6) ;  Return to caller
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : LDA 4, 4(5) ; Base of callee frame
61 : ST 1, 1(4) ; Store argument 0 in callee
62 : LD   1, 1(5) ;  Load parameter 'a' into R1
63 : LDA 4, 4(5) ; Base of callee frame
64 : ST 1, 2(4) ; Store argument 1 in callee
65 : LDA 4, 4(5) ; Base of callee frame
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 26(0) ; Call mod
70 : LD   1, 3(5) ;  Load function result
71 : LDC   2, 4(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'i' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
94 : LD   1, 1(5) ;  Load parameter 'i' into R1
95 : LDA 4, 4(5) ; Base of callee frame
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : LDA 4, 4(5) ; Base of callee frame
99 : ST 1, 2(4) ; Store argument 1 in callee
100 : LDA 4, 4(5) ; Base of callee frame
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(4) ; Store return in callee frame
103 : ADD 5, 4, 0 ; Push callee frame
104 : LDA 7, 59(0) ; Call divides
105 : LD   1, 3(5) ;  Load function result
106 : LDC   2, 4(0) ;  Caller frame size
107 : SUB   5, 5, 2 ;  Pop back to caller
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LD   1, 1(5) ;  Load parameter 'i' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : LDA 4, 4(5) ; Base of callee frame
115 : ST 1, 1(4) ; Store argument 0 in callee
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : LDA 4, 4(5) ; Base of callee frame
118 : ST 1, 2(4) ; Store argument 1 in callee
119 : LDA 4, 4(5) ; Base of callee frame
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return in callee frame
122 : ADD 5, 4, 0 ; Push callee frame
123 : LDA 7, 84(0) ; Call hasDivisorFrom
124 : LD   1, 3(5) ;  Load function result
125 : LDC   2, 4(0) ;  Caller frame size
126 : SUB   5, 5, 2 ;  Pop back to caller
127 : ADD  2, 3, 0 ;  Restore left operand
128 : ADD  1, 2, 1 ;  R1 = left OR right
129 : LDA  7, 131(0) ;  Skip ELSE block
130 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
131 : ST   1, 3(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
135 : LDA 4, 4(5) ; Base of callee frame
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : LDA 4, 4(5) ; Base of callee frame
139 : ST 1, 2(4) ; Store argument 1 in callee
140 : LDA 4, 4(5) ; Base of callee frame
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 84(0) ; Call hasDivisorFrom
145 : LD   1, 3(5) ;  Load function result
146 : LDC   2, 4(0) ;  Caller frame size
147 : SUB   5, 5, 2 ;  Pop back to caller
148 : LDC  2, 1(0) ;  Load 1 into R2
149 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
150 : ST   1, 2(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LD   1, 1(5) ;  Load parameter 'x' into R1
154 : ADD  3, 1, 0 ;  Store left operand into temporary register
155 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
156 : ADD  2, 3, 0 ;  Restore left operand
157 : DIV  1, 2, 1 ;  R1 = left / right
158 : ADD  3, 1, 0 ;  Store left operand into temporary register
159 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
160 : ADD  2, 3, 0 ;  Restore left operand
161 : SUB  1, 2, 1 ;  left - right for equality check
162 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
163 : LDC  1, 0(0) ;  false
164 : LDA  7, 1(7) ;  skip setting true
165 : LDC  1, 1(0) ;  true
166 : JEQ  1, 169(0) ;  If condition is false, jump to ELSE
167 : LD   1, 2(5) ;  Load parameter 'y' into R1
168 : LDA  7, 191(0) ;  Skip ELSE block
169 : LD   1, 1(5) ;  Load parameter 'x' into R1
170 : ADD  3, 1, 0 ;  Store left operand into temporary register
171 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
172 : ADD  2, 3, 0 ;  Restore left operand
173 : DIV  1, 2, 1 ;  R1 = left / right
174 : LDA 4, 4(5) ; Base of callee frame
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LD   1, 2(5) ;  Load parameter 'y' into R1
177 : ADD  3, 1, 0 ;  Store left operand into temporary register
178 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
179 : ADD  2, 3, 0 ;  Restore left operand
180 : ADD  1, 2, 1 ;  R1 = left + right
181 : LDA 4, 4(5) ; Base of callee frame
182 : ST 1, 2(4) ; Store argument 1 in callee
183 : LDA 4, 4(5) ; Base of callee frame
184 : LDA 6, 188(0) ; Return address
185 : ST 6, 0(4) ; Store return in callee frame
186 : ADD 5, 4, 0 ; Push callee frame
187 : LDA 7, 153(0) ; Call log10Helper
188 : LD   1, 3(5) ;  Load function result
189 : LDC   2, 4(0) ;  Caller frame size
190 : SUB   5, 5, 2 ;  Pop back to caller
191 : ST   1, 3(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
194 : LD   1, 1(5) ;  Load parameter 'x' into R1
195 : LDA 4, 4(5) ; Base of callee frame
196 : ST 1, 1(4) ; Store argument 0 in callee
197 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
198 : LDA 4, 4(5) ; Base of callee frame
199 : ST 1, 2(4) ; Store argument 1 in callee
200 : LDA 4, 4(5) ; Base of callee frame
201 : LDA 6, 205(0) ; Return address
202 : ST 6, 0(4) ; Store return in callee frame
203 : ADD 5, 4, 0 ; Push callee frame
204 : LDA 7, 153(0) ; Call log10Helper
205 : LD   1, 3(5) ;  Load function result
206 : LDC   2, 4(0) ;  Caller frame size
207 : SUB   5, 5, 2 ;  Pop back to caller
208 : ST   1, 2(5) ;  Store function result into stack frame
209 : LD   6, 0(5) ;  Load return address
210 : LDA  7, 0(6) ;  Return to caller
211 : LD   1, 2(5) ;  Load parameter 'power' into R1
212 : ADD  3, 1, 0 ;  Store left operand into temporary register
213 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
214 : ADD  2, 3, 0 ;  Restore left operand
215 : SUB  1, 2, 1 ;  left - right for equality check
216 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
217 : LDC  1, 0(0) ;  false
218 : LDA  7, 1(7) ;  skip setting true
219 : LDC  1, 1(0) ;  true
220 : JEQ  1, 223(0) ;  If condition is false, jump to ELSE
221 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
222 : LDA  7, 260(0) ;  Skip ELSE block
223 : LD   1, 2(5) ;  Load parameter 'power' into R1
224 : ADD  3, 1, 0 ;  Store left operand into temporary register
225 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
226 : ADD  2, 3, 0 ;  Restore left operand
227 : SUB  1, 2, 1 ;  left - right for equality check
228 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
229 : LDC  1, 0(0) ;  false
230 : LDA  7, 1(7) ;  skip setting true
231 : LDC  1, 1(0) ;  true
232 : JEQ  1, 235(0) ;  If condition is false, jump to ELSE
233 : LD   1, 3(5) ;  Load parameter 'total' into R1
234 : LDA  7, 260(0) ;  Skip ELSE block
235 : LD   1, 1(5) ;  Load parameter 'base' into R1
236 : LDA 4, 5(5) ; Base of callee frame
237 : ST 1, 1(4) ; Store argument 0 in callee
238 : LD   1, 2(5) ;  Load parameter 'power' into R1
239 : ADD  3, 1, 0 ;  Store left operand into temporary register
240 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 3, 0 ;  Restore left operand
242 : SUB  1, 2, 1 ;  R1 = left - right
243 : LDA 4, 5(5) ; Base of callee frame
244 : ST 1, 2(4) ; Store argument 1 in callee
245 : LD   1, 1(5) ;  Load parameter 'base' into R1
246 : ADD  3, 1, 0 ;  Store left operand into temporary register
247 : LD   1, 3(5) ;  Load parameter 'total' into R1
248 : ADD  2, 3, 0 ;  Restore left operand
249 : MUL  1, 2, 1 ;  R1 = left * right
250 : LDA 4, 5(5) ; Base of callee frame
251 : ST 1, 3(4) ; Store argument 2 in callee
252 : LDA 4, 5(5) ; Base of callee frame
253 : LDA 6, 257(0) ; Return address
254 : ST 6, 0(4) ; Store return in callee frame
255 : ADD 5, 4, 0 ; Push callee frame
256 : LDA 7, 211(0) ; Call powHelper
257 : LD   1, 4(5) ;  Load function result
258 : LDC   2, 5(0) ;  Caller frame size
259 : SUB   5, 5, 2 ;  Pop back to caller
260 : ST   1, 4(5) ;  Store function result into stack frame
261 : LD   6, 0(5) ;  Load return address
262 : LDA  7, 0(6) ;  Return to caller
263 : LD   1, 1(5) ;  Load parameter 'x' into R1
264 : LDA 4, 5(5) ; Base of callee frame
265 : ST 1, 1(4) ; Store argument 0 in callee
266 : LD   1, 2(5) ;  Load parameter 'y' into R1
267 : LDA 4, 5(5) ; Base of callee frame
268 : ST 1, 2(4) ; Store argument 1 in callee
269 : LD   1, 1(5) ;  Load parameter 'x' into R1
270 : LDA 4, 5(5) ; Base of callee frame
271 : ST 1, 3(4) ; Store argument 2 in callee
272 : LDA 4, 5(5) ; Base of callee frame
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return in callee frame
275 : ADD 5, 4, 0 ; Push callee frame
276 : LDA 7, 211(0) ; Call powHelper
277 : LD   1, 4(5) ;  Load function result
278 : LDC   2, 5(0) ;  Caller frame size
279 : SUB   5, 5, 2 ;  Pop back to caller
280 : ST   1, 3(5) ;  Store function result into stack frame
281 : LD   6, 0(5) ;  Load return address
282 : LDA  7, 0(6) ;  Return to caller
283 : LD   1, 1(5) ;  Load parameter 'x' into R1
284 : ADD  3, 1, 0 ;  Store left operand into temporary register
285 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
286 : ADD  2, 3, 0 ;  Restore left operand
287 : DIV  1, 2, 1 ;  R1 = left / right
288 : ADD  3, 1, 0 ;  Store left operand into temporary register
289 : LD   1, 1(5) ;  Load parameter 'x' into R1
290 : LDA 4, 4(5) ; Base of callee frame
291 : ST 1, 1(4) ; Store argument 0 in callee
292 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
293 : LDA 4, 4(5) ; Base of callee frame
294 : ST 1, 2(4) ; Store argument 1 in callee
295 : LDA 4, 4(5) ; Base of callee frame
296 : LDA 6, 300(0) ; Return address
297 : ST 6, 0(4) ; Store return in callee frame
298 : ADD 5, 4, 0 ; Push callee frame
299 : LDA 7, 26(0) ; Call mod
300 : LD   1, 3(5) ;  Load function result
301 : LDC   2, 4(0) ;  Caller frame size
302 : SUB   5, 5, 2 ;  Pop back to caller
303 : ADD  3, 1, 0 ;  Store left operand into temporary register
304 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
305 : LDA 4, 4(5) ; Base of callee frame
306 : ST 1, 1(4) ; Store argument 0 in callee
307 : LD   1, 1(5) ;  Load parameter 'x' into R1
308 : LDA 4, 3(5) ; Base of callee frame
309 : ST 1, 1(4) ; Store argument 0 in callee
310 : LDA 4, 3(5) ; Base of callee frame
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return in callee frame
313 : ADD 5, 4, 0 ; Push callee frame
314 : LDA 7, 194(0) ; Call log10
315 : LD   1, 2(5) ;  Load function result
316 : LDC   2, 3(0) ;  Caller frame size
317 : SUB   5, 5, 2 ;  Pop back to caller
318 : LDA 4, 4(5) ; Base of callee frame
319 : ST 1, 2(4) ; Store argument 1 in callee
320 : LDA 4, 4(5) ; Base of callee frame
321 : LDA 6, 325(0) ; Return address
322 : ST 6, 0(4) ; Store return in callee frame
323 : ADD 5, 4, 0 ; Push callee frame
324 : LDA 7, 263(0) ; Call pow
325 : LD   1, 3(5) ;  Load function result
326 : LDC   2, 4(0) ;  Caller frame size
327 : SUB   5, 5, 2 ;  Pop back to caller
328 : ADD  2, 3, 0 ;  Restore left operand
329 : MUL  1, 2, 1 ;  R1 = left * right
330 : ADD  2, 3, 0 ;  Restore left operand
331 : ADD  1, 2, 1 ;  R1 = left + right
332 : ST   1, 2(5) ;  Store function result into stack frame
333 : LD   6, 0(5) ;  Load return address
334 : LDA  7, 0(6) ;  Return to caller
335 : LD   1, 1(5) ;  Load parameter 'x' into R1
336 : LDA 4, 3(5) ; Base of callee frame
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return addr in callee frame
339 : ADD 5, 4, 0 ; Push new frame
340 : LDA 7, 8(0) ; Call print
341 : LDC 2, 3(0) ; Caller frame size
342 : SUB 5, 5, 2 ; Pop frame
343 : ST   1, 2(5) ;  Store function result into stack frame
344 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
345 : ST   1, 2(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LD   1, 2(5) ;  Load parameter 'turns' into R1
349 : ADD  3, 1, 0 ;  Store left operand into temporary register
350 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
351 : ADD  2, 3, 0 ;  Restore left operand
352 : SUB  1, 2, 1 ;  left - right for equality check
353 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
354 : LDC  1, 0(0) ;  false
355 : LDA  7, 1(7) ;  skip setting true
356 : LDC  1, 1(0) ;  true
357 : JEQ  1, 360(0) ;  If condition is false, jump to ELSE
358 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
359 : LDA  7, 402(0) ;  Skip ELSE block
360 : LD   1, 1(5) ;  Load parameter 'x' into R1
361 : LDA 4, 3(5) ; Base of callee frame
362 : ST 1, 1(4) ; Store argument 0 in callee
363 : LDA 4, 3(5) ; Base of callee frame
364 : LDA 6, 368(0) ; Return address
365 : ST 6, 0(4) ; Store return in callee frame
366 : ADD 5, 4, 0 ; Push callee frame
367 : LDA 7, 134(0) ; Call isPrime
368 : LD   1, 2(5) ;  Load function result
369 : LDC   2, 3(0) ;  Caller frame size
370 : SUB   5, 5, 2 ;  Pop back to caller
371 : ADD  3, 1, 0 ;  Store left operand into temporary register
372 : LD   1, 1(5) ;  Load parameter 'x' into R1
373 : LDA 4, 3(5) ; Base of callee frame
374 : ST 1, 1(4) ; Store argument 0 in callee
375 : LDA 4, 3(5) ; Base of callee frame
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame
379 : LDA 7, 283(0) ; Call rotate
380 : LD   1, 2(5) ;  Load function result
381 : LDC   2, 3(0) ;  Caller frame size
382 : SUB   5, 5, 2 ;  Pop back to caller
383 : LDA 4, 4(5) ; Base of callee frame
384 : ST 1, 1(4) ; Store argument 0 in callee
385 : LD   1, 2(5) ;  Load parameter 'turns' into R1
386 : ADD  3, 1, 0 ;  Store left operand into temporary register
387 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
388 : ADD  2, 3, 0 ;  Restore left operand
389 : SUB  1, 2, 1 ;  R1 = left - right
390 : LDA 4, 4(5) ; Base of callee frame
391 : ST 1, 2(4) ; Store argument 1 in callee
392 : LDA 4, 4(5) ; Base of callee frame
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return in callee frame
395 : ADD 5, 4, 0 ; Push callee frame
396 : LDA 7, 348(0) ; Call isCircularPrimeHelper
397 : LD   1, 3(5) ;  Load function result
398 : LDC   2, 4(0) ;  Caller frame size
399 : SUB   5, 5, 2 ;  Pop back to caller
400 : ADD  2, 3, 0 ;  Restore left operand
401 : MUL  1, 2, 1 ;  R1 = left AND right
402 : ST   1, 3(5) ;  Store function result into stack frame
403 : LD   6, 0(5) ;  Load return address
404 : LDA  7, 0(6) ;  Return to caller
405 : LD   1, 1(5) ;  Load parameter 'x' into R1
406 : LDA 4, 4(5) ; Base of callee frame
407 : ST 1, 1(4) ; Store argument 0 in callee
408 : LD   1, 1(5) ;  Load parameter 'x' into R1
409 : LDA 4, 3(5) ; Base of callee frame
410 : ST 1, 1(4) ; Store argument 0 in callee
411 : LDA 4, 3(5) ; Base of callee frame
412 : LDA 6, 416(0) ; Return address
413 : ST 6, 0(4) ; Store return in callee frame
414 : ADD 5, 4, 0 ; Push callee frame
415 : LDA 7, 194(0) ; Call log10
416 : LD   1, 2(5) ;  Load function result
417 : LDC   2, 3(0) ;  Caller frame size
418 : SUB   5, 5, 2 ;  Pop back to caller
419 : ADD  3, 1, 0 ;  Store left operand into temporary register
420 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
421 : ADD  2, 3, 0 ;  Restore left operand
422 : ADD  1, 2, 1 ;  R1 = left + right
423 : LDA 4, 4(5) ; Base of callee frame
424 : ST 1, 2(4) ; Store argument 1 in callee
425 : LDA 4, 4(5) ; Base of callee frame
426 : LDA 6, 430(0) ; Return address
427 : ST 6, 0(4) ; Store return in callee frame
428 : ADD 5, 4, 0 ; Push callee frame
429 : LDA 7, 348(0) ; Call isCircularPrimeHelper
430 : LD   1, 3(5) ;  Load function result
431 : LDC   2, 4(0) ;  Caller frame size
432 : SUB   5, 5, 2 ;  Pop back to caller
433 : JEQ  1, 446(0) ;  If condition is false, jump to ELSE
434 : LD   1, 1(5) ;  Load parameter 'x' into R1
435 : LDA 4, 3(5) ; Base of callee frame
436 : ST 1, 1(4) ; Store argument 0 in callee
437 : LDA 4, 3(5) ; Base of callee frame
438 : LDA 6, 442(0) ; Return address
439 : ST 6, 0(4) ; Store return in callee frame
440 : ADD 5, 4, 0 ; Push callee frame
441 : LDA 7, 335(0) ; Call report
442 : LD   1, 2(5) ;  Load function result
443 : LDC   2, 3(0) ;  Caller frame size
444 : SUB   5, 5, 2 ;  Pop back to caller
445 : LDA  7, 447(0) ;  Skip ELSE block
446 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
447 : ST   1, 2(5) ;  Store function result into stack frame
448 : LD   6, 0(5) ;  Load return address
449 : LDA  7, 0(6) ;  Return to caller
450 : LD   1, 2(5) ;  Load parameter 'x' into R1
451 : ADD  3, 1, 0 ;  Store left operand into temporary register
452 : LD   1, 1(5) ;  Load parameter 'top' into R1
453 : ADD  2, 3, 0 ;  Restore left operand
454 : SUB  1, 2, 1 ;  left - right for less-than check
455 : JLT  1, 2(7) ;  If R1 < 0, jump to true
456 : LDC  1, 0(0) ;  false
457 : LDA  7, 1(7) ;  skip setting true
458 : LDC  1, 1(0) ;  true
459 : JEQ  1, 520(0) ;  If condition is false, jump to ELSE
460 : LD   1, 2(5) ;  Load parameter 'x' into R1
461 : LDA 4, 3(5) ; Base of callee frame
462 : ST 1, 1(4) ; Store argument 0 in callee
463 : LDA 4, 3(5) ; Base of callee frame
464 : LDA 6, 468(0) ; Return address
465 : ST 6, 0(4) ; Store return in callee frame
466 : ADD 5, 4, 0 ; Push callee frame
467 : LDA 7, 405(0) ; Call isCircularPrime
468 : LD   1, 2(5) ;  Load function result
469 : LDC   2, 3(0) ;  Caller frame size
470 : SUB   5, 5, 2 ;  Pop back to caller
471 : JEQ  1, 498(0) ;  If condition is false, jump to ELSE
472 : LD   1, 1(5) ;  Load parameter 'top' into R1
473 : LDA 4, 5(5) ; Base of callee frame
474 : ST 1, 1(4) ; Store argument 0 in callee
475 : LD   1, 2(5) ;  Load parameter 'x' into R1
476 : ADD  3, 1, 0 ;  Store left operand into temporary register
477 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
478 : ADD  2, 3, 0 ;  Restore left operand
479 : ADD  1, 2, 1 ;  R1 = left + right
480 : LDA 4, 5(5) ; Base of callee frame
481 : ST 1, 2(4) ; Store argument 1 in callee
482 : LD   1, 3(5) ;  Load parameter 'count' into R1
483 : ADD  3, 1, 0 ;  Store left operand into temporary register
484 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
485 : ADD  2, 3, 0 ;  Restore left operand
486 : ADD  1, 2, 1 ;  R1 = left + right
487 : LDA 4, 5(5) ; Base of callee frame
488 : ST 1, 3(4) ; Store argument 2 in callee
489 : LDA 4, 5(5) ; Base of callee frame
490 : LDA 6, 494(0) ; Return address
491 : ST 6, 0(4) ; Store return in callee frame
492 : ADD 5, 4, 0 ; Push callee frame
493 : LDA 7, 450(0) ; Call circularPrimesToHelper
494 : LD   1, 4(5) ;  Load function result
495 : LDC   2, 5(0) ;  Caller frame size
496 : SUB   5, 5, 2 ;  Pop back to caller
497 : LDA  7, 519(0) ;  Skip ELSE block
498 : LD   1, 1(5) ;  Load parameter 'top' into R1
499 : LDA 4, 5(5) ; Base of callee frame
500 : ST 1, 1(4) ; Store argument 0 in callee
501 : LD   1, 2(5) ;  Load parameter 'x' into R1
502 : ADD  3, 1, 0 ;  Store left operand into temporary register
503 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
504 : ADD  2, 3, 0 ;  Restore left operand
505 : ADD  1, 2, 1 ;  R1 = left + right
506 : LDA 4, 5(5) ; Base of callee frame
507 : ST 1, 2(4) ; Store argument 1 in callee
508 : LD   1, 3(5) ;  Load parameter 'count' into R1
509 : LDA 4, 5(5) ; Base of callee frame
510 : ST 1, 3(4) ; Store argument 2 in callee
511 : LDA 4, 5(5) ; Base of callee frame
512 : LDA 6, 516(0) ; Return address
513 : ST 6, 0(4) ; Store return in callee frame
514 : ADD 5, 4, 0 ; Push callee frame
515 : LDA 7, 450(0) ; Call circularPrimesToHelper
516 : LD   1, 4(5) ;  Load function result
517 : LDC   2, 5(0) ;  Caller frame size
518 : SUB   5, 5, 2 ;  Pop back to caller
519 : LDA  7, 521(0) ;  Skip ELSE block
520 : LD   1, 3(5) ;  Load parameter 'count' into R1
521 : ST   1, 4(5) ;  Store function result into stack frame
522 : LD   6, 0(5) ;  Load return address
523 : LDA  7, 0(6) ;  Return to caller
524 : LD   1, 1(5) ;  Load parameter 'x' into R1
525 : ADD  3, 1, 0 ;  Store left operand into temporary register
526 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
527 : ADD  2, 3, 0 ;  Restore left operand
528 : ADD  1, 2, 1 ;  R1 = left + right
529 : LDA 4, 5(5) ; Base of callee frame
530 : ST 1, 1(4) ; Store argument 0 in callee
531 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
532 : LDA 4, 5(5) ; Base of callee frame
533 : ST 1, 2(4) ; Store argument 1 in callee
534 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
535 : LDA 4, 5(5) ; Base of callee frame
536 : ST 1, 3(4) ; Store argument 2 in callee
537 : LDA 4, 5(5) ; Base of callee frame
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return in callee frame
540 : ADD 5, 4, 0 ; Push callee frame
541 : LDA 7, 450(0) ; Call circularPrimesToHelper
542 : LD   1, 4(5) ;  Load function result
543 : LDC   2, 5(0) ;  Caller frame size
544 : SUB   5, 5, 2 ;  Pop back to caller
545 : ST   1, 2(5) ;  Store function result into stack frame
546 : LD   6, 0(5) ;  Load return address
547 : LDA  7, 0(6) ;  Return to caller
