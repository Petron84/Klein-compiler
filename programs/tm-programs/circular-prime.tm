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
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'x' into R1
13 : ST 1, 1(4) ; Argument 0
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 483(0) ; Call circularPrimesTo
18 : LD 1, 2(5) ; Load function result
19 : LDC 2, 3(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop back to caller
21 : ST 1, 2(5) ; Store result into caller’s frame
22 : LD   1, 2(5) ;  Load return value into register 1
23 : LD  6, 0(5) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 1(5) ;  Load parameter 'num' into R1
26 : ADD  3, 1, 0 ;  Store left operand into temporary register
27 : LD   1, 2(5) ;  Load parameter 'den' into R1
28 : ADD  2, 3, 0 ;  Restore left operand
29 : SUB  1, 2, 1 ;  left - right for less-than check
30 : JLT  1, 2(7) ;  If R1 < 0, jump to true
31 : LDC  1, 0(0) ;  false
32 : LDA  7, 1(7) ;  skip setting true
33 : LDC  1, 1(0) ;  true
34 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
35 : LD   1, 1(5) ;  Load parameter 'num' into R1
36 : LDA  7, 53(0) ;  Skip ELSE block
37 : LDA 4, 4(5) ; Base of callee frame
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'den' into R1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : ST 1, 1(4) ; Argument 0
44 : LD   1, 2(5) ;  Load parameter 'den' into R1
45 : ST 1, 2(4) ; Argument 1
46 : LDA 6, 50(0) ; Return address
47 : ST 6, 0(4) ; Store return in callee frame
48 : ADD 5, 4, 0 ; Push callee frame
49 : LDA 7, 25(0) ; Call mod
50 : LD 1, 3(5) ; Load function result
51 : LDC 2, 4(0) ; Caller frame size
52 : SUB 5, 5, 2 ; Pop back to caller
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDA 4, 4(5) ; Base of callee frame
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ST 1, 1(4) ; Argument 0
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ST 1, 2(4) ; Argument 1
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame
64 : LDA 7, 25(0) ; Call mod
65 : LD 1, 3(5) ; Load function result
66 : LDC 2, 4(0) ; Caller frame size
67 : SUB 5, 5, 2 ; Pop back to caller
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
70 : ADD  2, 3, 0 ;  Restore left operand
71 : SUB  1, 2, 1 ;  left - right for equality check
72 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
73 : LDC  1, 0(0) ;  false
74 : LDA  7, 1(7) ;  skip setting true
75 : LDC  1, 1(0) ;  true
76 : ST   1, 3(5) ;  Store function result into stack frame
77 : LD   6, 0(5) ;  Load return address
78 : LDA  7, 0(6) ;  Return to caller
79 : LD   1, 1(5) ;  Load parameter 'i' into R1
80 : ADD  3, 1, 0 ;  Store left operand into temporary register
81 : LD   1, 2(5) ;  Load parameter 'n' into R1
82 : ADD  2, 3, 0 ;  Restore left operand
83 : SUB  1, 2, 1 ;  left - right for less-than check
84 : JLT  1, 2(7) ;  If R1 < 0, jump to true
85 : LDC  1, 0(0) ;  false
86 : LDA  7, 1(7) ;  skip setting true
87 : LDC  1, 1(0) ;  true
88 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
89 : LDA 4, 4(5) ; Base of callee frame
90 : LD   1, 1(5) ;  Load parameter 'i' into R1
91 : ST 1, 1(4) ; Argument 0
92 : LD   1, 2(5) ;  Load parameter 'n' into R1
93 : ST 1, 2(4) ; Argument 1
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame
97 : LDA 7, 56(0) ; Call divides
98 : LD 1, 3(5) ; Load function result
99 : LDC 2, 4(0) ; Caller frame size
100 : SUB 5, 5, 2 ; Pop back to caller
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LDA 4, 4(5) ; Base of callee frame
103 : LD   1, 1(5) ;  Load parameter 'i' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : ADD  1, 2, 1 ;  R1 = left + right
108 : ST 1, 1(4) ; Argument 0
109 : LD   1, 2(5) ;  Load parameter 'n' into R1
110 : ST 1, 2(4) ; Argument 1
111 : LDA 6, 115(0) ; Return address
112 : ST 6, 0(4) ; Store return in callee frame
113 : ADD 5, 4, 0 ; Push callee frame
114 : LDA 7, 79(0) ; Call hasDivisorFrom
115 : LD 1, 3(5) ; Load function result
116 : LDC 2, 4(0) ; Caller frame size
117 : SUB 5, 5, 2 ; Pop back to caller
118 : ADD  2, 3, 0 ;  Restore left operand
119 : ADD  1, 2, 1 ;  R1 = left OR right
120 : LDA  7, 122(0) ;  Skip ELSE block
121 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
122 : ST   1, 3(5) ;  Store function result into stack frame
123 : LD   6, 0(5) ;  Load return address
124 : LDA  7, 0(6) ;  Return to caller
125 : LDA 4, 3(5) ; Base of callee frame
126 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
127 : ST 1, 1(4) ; Argument 0
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : ST 1, 2(4) ; Argument 1
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 79(0) ; Call hasDivisorFrom
134 : LD 1, 3(5) ; Load function result
135 : LDC 2, 3(0) ; Caller frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : LDC  2, 1(0) ;  Load 1 into R2
138 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
139 : ST   1, 2(5) ;  Store function result into stack frame
140 : LD   6, 0(5) ;  Load return address
141 : LDA  7, 0(6) ;  Return to caller
142 : LD   1, 1(5) ;  Load parameter 'x' into R1
143 : ADD  3, 1, 0 ;  Store left operand into temporary register
144 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
145 : ADD  2, 3, 0 ;  Restore left operand
146 : DIV  1, 2, 1 ;  R1 = left / right
147 : ADD  3, 1, 0 ;  Store left operand into temporary register
148 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
149 : ADD  2, 3, 0 ;  Restore left operand
150 : SUB  1, 2, 1 ;  left - right for equality check
151 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
152 : LDC  1, 0(0) ;  false
153 : LDA  7, 1(7) ;  skip setting true
154 : LDC  1, 1(0) ;  true
155 : JEQ  1, 158(0) ;  If condition is false, jump to ELSE
156 : LD   1, 2(5) ;  Load parameter 'y' into R1
157 : LDA  7, 178(0) ;  Skip ELSE block
158 : LDA 4, 4(5) ; Base of callee frame
159 : LD   1, 1(5) ;  Load parameter 'x' into R1
160 : ADD  3, 1, 0 ;  Store left operand into temporary register
161 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
162 : ADD  2, 3, 0 ;  Restore left operand
163 : DIV  1, 2, 1 ;  R1 = left / right
164 : ST 1, 1(4) ; Argument 0
165 : LD   1, 2(5) ;  Load parameter 'y' into R1
166 : ADD  3, 1, 0 ;  Store left operand into temporary register
167 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
168 : ADD  2, 3, 0 ;  Restore left operand
169 : ADD  1, 2, 1 ;  R1 = left + right
170 : ST 1, 2(4) ; Argument 1
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return in callee frame
173 : ADD 5, 4, 0 ; Push callee frame
174 : LDA 7, 142(0) ; Call log10Helper
175 : LD 1, 3(5) ; Load function result
176 : LDC 2, 4(0) ; Caller frame size
177 : SUB 5, 5, 2 ; Pop back to caller
178 : ST   1, 3(5) ;  Store function result into stack frame
179 : LD   6, 0(5) ;  Load return address
180 : LDA  7, 0(6) ;  Return to caller
181 : LDA 4, 3(5) ; Base of callee frame
182 : LD   1, 1(5) ;  Load parameter 'x' into R1
183 : ST 1, 1(4) ; Argument 0
184 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
185 : ST 1, 2(4) ; Argument 1
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return in callee frame
188 : ADD 5, 4, 0 ; Push callee frame
189 : LDA 7, 142(0) ; Call log10Helper
190 : LD 1, 3(5) ; Load function result
191 : LDC 2, 3(0) ; Caller frame size
192 : SUB 5, 5, 2 ; Pop back to caller
193 : ST   1, 2(5) ;  Store function result into stack frame
194 : LD   6, 0(5) ;  Load return address
195 : LDA  7, 0(6) ;  Return to caller
196 : LD   1, 2(5) ;  Load parameter 'power' into R1
197 : ADD  3, 1, 0 ;  Store left operand into temporary register
198 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
199 : ADD  2, 3, 0 ;  Restore left operand
200 : SUB  1, 2, 1 ;  left - right for equality check
201 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
202 : LDC  1, 0(0) ;  false
203 : LDA  7, 1(7) ;  skip setting true
204 : LDC  1, 1(0) ;  true
205 : JEQ  1, 208(0) ;  If condition is false, jump to ELSE
206 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
207 : LDA  7, 242(0) ;  Skip ELSE block
208 : LD   1, 2(5) ;  Load parameter 'power' into R1
209 : ADD  3, 1, 0 ;  Store left operand into temporary register
210 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
211 : ADD  2, 3, 0 ;  Restore left operand
212 : SUB  1, 2, 1 ;  left - right for equality check
213 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
214 : LDC  1, 0(0) ;  false
215 : LDA  7, 1(7) ;  skip setting true
216 : LDC  1, 1(0) ;  true
217 : JEQ  1, 220(0) ;  If condition is false, jump to ELSE
218 : LD   1, 3(5) ;  Load parameter 'total' into R1
219 : LDA  7, 242(0) ;  Skip ELSE block
220 : LDA 4, 5(5) ; Base of callee frame
221 : LD   1, 1(5) ;  Load parameter 'base' into R1
222 : ST 1, 1(4) ; Argument 0
223 : LD   1, 2(5) ;  Load parameter 'power' into R1
224 : ADD  3, 1, 0 ;  Store left operand into temporary register
225 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
226 : ADD  2, 3, 0 ;  Restore left operand
227 : SUB  1, 2, 1 ;  R1 = left - right
228 : ST 1, 2(4) ; Argument 1
229 : LD   1, 1(5) ;  Load parameter 'base' into R1
230 : ADD  3, 1, 0 ;  Store left operand into temporary register
231 : LD   1, 3(5) ;  Load parameter 'total' into R1
232 : ADD  2, 3, 0 ;  Restore left operand
233 : MUL  1, 2, 1 ;  R1 = left * right
234 : ST 1, 3(4) ; Argument 2
235 : LDA 6, 239(0) ; Return address
236 : ST 6, 0(4) ; Store return in callee frame
237 : ADD 5, 4, 0 ; Push callee frame
238 : LDA 7, 196(0) ; Call powHelper
239 : LD 1, 4(5) ; Load function result
240 : LDC 2, 5(0) ; Caller frame size
241 : SUB 5, 5, 2 ; Pop back to caller
242 : ST   1, 4(5) ;  Store function result into stack frame
243 : LD   6, 0(5) ;  Load return address
244 : LDA  7, 0(6) ;  Return to caller
245 : LDA 4, 4(5) ; Base of callee frame
246 : LD   1, 1(5) ;  Load parameter 'x' into R1
247 : ST 1, 1(4) ; Argument 0
248 : LD   1, 2(5) ;  Load parameter 'y' into R1
249 : ST 1, 2(4) ; Argument 1
250 : LD   1, 1(5) ;  Load parameter 'x' into R1
251 : ST 1, 3(4) ; Argument 2
252 : LDA 6, 256(0) ; Return address
253 : ST 6, 0(4) ; Store return in callee frame
254 : ADD 5, 4, 0 ; Push callee frame
255 : LDA 7, 196(0) ; Call powHelper
256 : LD 1, 4(5) ; Load function result
257 : LDC 2, 4(0) ; Caller frame size
258 : SUB 5, 5, 2 ; Pop back to caller
259 : ST   1, 3(5) ;  Store function result into stack frame
260 : LD   6, 0(5) ;  Load return address
261 : LDA  7, 0(6) ;  Return to caller
262 : LD   1, 1(5) ;  Load parameter 'x' into R1
263 : ADD  3, 1, 0 ;  Store left operand into temporary register
264 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
265 : ADD  2, 3, 0 ;  Restore left operand
266 : DIV  1, 2, 1 ;  R1 = left / right
267 : ADD  3, 1, 0 ;  Store left operand into temporary register
268 : LDA 4, 3(5) ; Base of callee frame
269 : LD   1, 1(5) ;  Load parameter 'x' into R1
270 : ST 1, 1(4) ; Argument 0
271 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
272 : ST 1, 2(4) ; Argument 1
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return in callee frame
275 : ADD 5, 4, 0 ; Push callee frame
276 : LDA 7, 25(0) ; Call mod
277 : LD 1, 3(5) ; Load function result
278 : LDC 2, 3(0) ; Caller frame size
279 : SUB 5, 5, 2 ; Pop back to caller
280 : ADD  3, 1, 0 ;  Store left operand into temporary register
281 : LDA 4, 3(5) ; Base of callee frame
282 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
283 : ST 1, 1(4) ; Argument 0
284 : LDA 4, 3(5) ; Base of callee frame
285 : LD   1, 1(5) ;  Load parameter 'x' into R1
286 : ST 1, 1(4) ; Argument 0
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return in callee frame
289 : ADD 5, 4, 0 ; Push callee frame
290 : LDA 7, 181(0) ; Call log10
291 : LD 1, 2(5) ; Load function result
292 : LDC 2, 3(0) ; Caller frame size
293 : SUB 5, 5, 2 ; Pop back to caller
294 : ST 1, 2(4) ; Argument 1
295 : LDA 6, 299(0) ; Return address
296 : ST 6, 0(4) ; Store return in callee frame
297 : ADD 5, 4, 0 ; Push callee frame
298 : LDA 7, 245(0) ; Call pow
299 : LD 1, 3(5) ; Load function result
300 : LDC 2, 3(0) ; Caller frame size
301 : SUB 5, 5, 2 ; Pop back to caller
302 : ADD  2, 3, 0 ;  Restore left operand
303 : MUL  1, 2, 1 ;  R1 = left * right
304 : ADD  2, 3, 0 ;  Restore left operand
305 : ADD  1, 2, 1 ;  R1 = left + right
306 : ST   1, 2(5) ;  Store function result into stack frame
307 : LD   6, 0(5) ;  Load return address
308 : LDA  7, 0(6) ;  Return to caller
309 : LD   1, 1(5) ;  Load parameter 'x' into R1
310 : LDA 4, 3(5) ; Base of callee frame
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return addr in callee frame
313 : ADD 5, 4, 0 ; Push new frame
314 : LDA 7, 8(0) ; Call print
315 : LDC 2, 3(0) ; Caller frame size
316 : SUB 5, 5, 2 ; Pop frame
317 : ST   1, 2(5) ;  Store function result into stack frame
318 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
319 : ST   1, 2(5) ;  Store function result into stack frame
320 : LD   6, 0(5) ;  Load return address
321 : LDA  7, 0(6) ;  Return to caller
322 : LD   1, 2(5) ;  Load parameter 'turns' into R1
323 : ADD  3, 1, 0 ;  Store left operand into temporary register
324 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
325 : ADD  2, 3, 0 ;  Restore left operand
326 : SUB  1, 2, 1 ;  left - right for equality check
327 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
328 : LDC  1, 0(0) ;  false
329 : LDA  7, 1(7) ;  skip setting true
330 : LDC  1, 1(0) ;  true
331 : JEQ  1, 334(0) ;  If condition is false, jump to ELSE
332 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
333 : LDA  7, 372(0) ;  Skip ELSE block
334 : LDA 4, 4(5) ; Base of callee frame
335 : LD   1, 1(5) ;  Load parameter 'x' into R1
336 : ST 1, 1(4) ; Argument 0
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return in callee frame
339 : ADD 5, 4, 0 ; Push callee frame
340 : LDA 7, 125(0) ; Call isPrime
341 : LD 1, 2(5) ; Load function result
342 : LDC 2, 4(0) ; Caller frame size
343 : SUB 5, 5, 2 ; Pop back to caller
344 : ADD  3, 1, 0 ;  Store left operand into temporary register
345 : LDA 4, 4(5) ; Base of callee frame
346 : LDA 4, 4(5) ; Base of callee frame
347 : LD   1, 1(5) ;  Load parameter 'x' into R1
348 : ST 1, 1(4) ; Argument 0
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame
352 : LDA 7, 262(0) ; Call rotate
353 : LD 1, 2(5) ; Load function result
354 : LDC 2, 4(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop back to caller
356 : ST 1, 1(4) ; Argument 0
357 : LD   1, 2(5) ;  Load parameter 'turns' into R1
358 : ADD  3, 1, 0 ;  Store left operand into temporary register
359 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
360 : ADD  2, 3, 0 ;  Restore left operand
361 : SUB  1, 2, 1 ;  R1 = left - right
362 : ST 1, 2(4) ; Argument 1
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return in callee frame
365 : ADD 5, 4, 0 ; Push callee frame
366 : LDA 7, 322(0) ; Call isCircularPrimeHelper
367 : LD 1, 3(5) ; Load function result
368 : LDC 2, 4(0) ; Caller frame size
369 : SUB 5, 5, 2 ; Pop back to caller
370 : ADD  2, 3, 0 ;  Restore left operand
371 : MUL  1, 2, 1 ;  R1 = left AND right
372 : ST   1, 3(5) ;  Store function result into stack frame
373 : LD   6, 0(5) ;  Load return address
374 : LDA  7, 0(6) ;  Return to caller
375 : LDA 4, 3(5) ; Base of callee frame
376 : LD   1, 1(5) ;  Load parameter 'x' into R1
377 : ST 1, 1(4) ; Argument 0
378 : LDA 4, 3(5) ; Base of callee frame
379 : LD   1, 1(5) ;  Load parameter 'x' into R1
380 : ST 1, 1(4) ; Argument 0
381 : LDA 6, 385(0) ; Return address
382 : ST 6, 0(4) ; Store return in callee frame
383 : ADD 5, 4, 0 ; Push callee frame
384 : LDA 7, 181(0) ; Call log10
385 : LD 1, 2(5) ; Load function result
386 : LDC 2, 3(0) ; Caller frame size
387 : SUB 5, 5, 2 ; Pop back to caller
388 : ADD  3, 1, 0 ;  Store left operand into temporary register
389 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
390 : ADD  2, 3, 0 ;  Restore left operand
391 : ADD  1, 2, 1 ;  R1 = left + right
392 : ST 1, 2(4) ; Argument 1
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return in callee frame
395 : ADD 5, 4, 0 ; Push callee frame
396 : LDA 7, 322(0) ; Call isCircularPrimeHelper
397 : LD 1, 3(5) ; Load function result
398 : LDC 2, 3(0) ; Caller frame size
399 : SUB 5, 5, 2 ; Pop back to caller
400 : JEQ  1, 412(0) ;  If condition is false, jump to ELSE
401 : LDA 4, 3(5) ; Base of callee frame
402 : LD   1, 1(5) ;  Load parameter 'x' into R1
403 : ST 1, 1(4) ; Argument 0
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return in callee frame
406 : ADD 5, 4, 0 ; Push callee frame
407 : LDA 7, 309(0) ; Call report
408 : LD 1, 2(5) ; Load function result
409 : LDC 2, 3(0) ; Caller frame size
410 : SUB 5, 5, 2 ; Pop back to caller
411 : LDA  7, 413(0) ;  Skip ELSE block
412 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
413 : ST   1, 2(5) ;  Store function result into stack frame
414 : LD   6, 0(5) ;  Load return address
415 : LDA  7, 0(6) ;  Return to caller
416 : LD   1, 2(5) ;  Load parameter 'x' into R1
417 : ADD  3, 1, 0 ;  Store left operand into temporary register
418 : LD   1, 1(5) ;  Load parameter 'top' into R1
419 : ADD  2, 3, 0 ;  Restore left operand
420 : SUB  1, 2, 1 ;  left - right for less-than check
421 : JLT  1, 2(7) ;  If R1 < 0, jump to true
422 : LDC  1, 0(0) ;  false
423 : LDA  7, 1(7) ;  skip setting true
424 : LDC  1, 1(0) ;  true
425 : JEQ  1, 479(0) ;  If condition is false, jump to ELSE
426 : LDA 4, 5(5) ; Base of callee frame
427 : LD   1, 2(5) ;  Load parameter 'x' into R1
428 : ST 1, 1(4) ; Argument 0
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return in callee frame
431 : ADD 5, 4, 0 ; Push callee frame
432 : LDA 7, 375(0) ; Call isCircularPrime
433 : LD 1, 2(5) ; Load function result
434 : LDC 2, 5(0) ; Caller frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : JEQ  1, 460(0) ;  If condition is false, jump to ELSE
437 : LDA 4, 5(5) ; Base of callee frame
438 : LD   1, 1(5) ;  Load parameter 'top' into R1
439 : ST 1, 1(4) ; Argument 0
440 : LD   1, 2(5) ;  Load parameter 'x' into R1
441 : ADD  3, 1, 0 ;  Store left operand into temporary register
442 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
443 : ADD  2, 3, 0 ;  Restore left operand
444 : ADD  1, 2, 1 ;  R1 = left + right
445 : ST 1, 2(4) ; Argument 1
446 : LD   1, 3(5) ;  Load parameter 'count' into R1
447 : ADD  3, 1, 0 ;  Store left operand into temporary register
448 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
449 : ADD  2, 3, 0 ;  Restore left operand
450 : ADD  1, 2, 1 ;  R1 = left + right
451 : ST 1, 3(4) ; Argument 2
452 : LDA 6, 456(0) ; Return address
453 : ST 6, 0(4) ; Store return in callee frame
454 : ADD 5, 4, 0 ; Push callee frame
455 : LDA 7, 416(0) ; Call circularPrimesToHelper
456 : LD 1, 4(5) ; Load function result
457 : LDC 2, 5(0) ; Caller frame size
458 : SUB 5, 5, 2 ; Pop back to caller
459 : LDA  7, 478(0) ;  Skip ELSE block
460 : LDA 4, 5(5) ; Base of callee frame
461 : LD   1, 1(5) ;  Load parameter 'top' into R1
462 : ST 1, 1(4) ; Argument 0
463 : LD   1, 2(5) ;  Load parameter 'x' into R1
464 : ADD  3, 1, 0 ;  Store left operand into temporary register
465 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
466 : ADD  2, 3, 0 ;  Restore left operand
467 : ADD  1, 2, 1 ;  R1 = left + right
468 : ST 1, 2(4) ; Argument 1
469 : LD   1, 3(5) ;  Load parameter 'count' into R1
470 : ST 1, 3(4) ; Argument 2
471 : LDA 6, 475(0) ; Return address
472 : ST 6, 0(4) ; Store return in callee frame
473 : ADD 5, 4, 0 ; Push callee frame
474 : LDA 7, 416(0) ; Call circularPrimesToHelper
475 : LD 1, 4(5) ; Load function result
476 : LDC 2, 5(0) ; Caller frame size
477 : SUB 5, 5, 2 ; Pop back to caller
478 : LDA  7, 480(0) ;  Skip ELSE block
479 : LD   1, 3(5) ;  Load parameter 'count' into R1
480 : ST   1, 4(5) ;  Store function result into stack frame
481 : LD   6, 0(5) ;  Load return address
482 : LDA  7, 0(6) ;  Return to caller
483 : LDA 4, 3(5) ; Base of callee frame
484 : LD   1, 1(5) ;  Load parameter 'x' into R1
485 : ADD  3, 1, 0 ;  Store left operand into temporary register
486 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
487 : ADD  2, 3, 0 ;  Restore left operand
488 : ADD  1, 2, 1 ;  R1 = left + right
489 : ST 1, 1(4) ; Argument 0
490 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
491 : ST 1, 2(4) ; Argument 1
492 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
493 : ST 1, 3(4) ; Argument 2
494 : LDA 6, 498(0) ; Return address
495 : ST 6, 0(4) ; Store return in callee frame
496 : ADD 5, 4, 0 ; Push callee frame
497 : LDA 7, 416(0) ; Call circularPrimesToHelper
498 : LD 1, 4(5) ; Load function result
499 : LDC 2, 3(0) ; Caller frame size
500 : SUB 5, 5, 2 ; Pop back to caller
501 : ST   1, 2(5) ;  Store function result into stack frame
502 : LD   6, 0(5) ;  Load return address
503 : LDA  7, 0(6) ;  Return to caller
