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
17 : LDA 7, 485(0) ; Call circularPrimesTo
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
284 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
285 : LDA 4, 3(5) ; Base of callee frame
286 : LD   1, 1(5) ;  Load parameter 'x' into R1
287 : ST 1, 1(4) ; Argument 0
288 : LDA 6, 292(0) ; Return address
289 : ST 6, 0(4) ; Store return in callee frame
290 : ADD 5, 4, 0 ; Push callee frame
291 : LDA 7, 181(0) ; Call log10
292 : LD 1, 2(5) ; Load function result
293 : LDC 2, 3(0) ; Caller frame size
294 : SUB 5, 5, 2 ; Pop back to caller
295 : ST 1, 2(4) ; Argument 1
296 : LDA 6, 300(0) ; Return address
297 : ST 6, 0(4) ; Store return in callee frame
298 : ADD 5, 4, 0 ; Push callee frame
299 : LDA 7, 245(0) ; Call pow
300 : LD 1, 3(5) ; Load function result
301 : LDC 2, 3(0) ; Caller frame size
302 : SUB 5, 5, 2 ; Pop back to caller
303 : ADD  2, 3, 0 ;  Restore left operand
304 : MUL  1, 2, 1 ;  R1 = left * right
305 : ADD  2, 3, 0 ;  Restore left operand
306 : ADD  1, 2, 1 ;  R1 = left + right
307 : ST   1, 2(5) ;  Store function result into stack frame
308 : LD   6, 0(5) ;  Load return address
309 : LDA  7, 0(6) ;  Return to caller
310 : LD   1, 1(5) ;  Load parameter 'x' into R1
311 : LDA 4, 3(5) ; Base of callee frame
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return addr in callee frame
314 : ADD 5, 4, 0 ; Push new frame
315 : LDA 7, 8(0) ; Call print
316 : LDC 2, 3(0) ; Caller frame size
317 : SUB 5, 5, 2 ; Pop frame
318 : ST   1, 2(5) ;  Store function result into stack frame
319 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
320 : ST   1, 2(5) ;  Store function result into stack frame
321 : LD   6, 0(5) ;  Load return address
322 : LDA  7, 0(6) ;  Return to caller
323 : LD   1, 2(5) ;  Load parameter 'turns' into R1
324 : ADD  3, 1, 0 ;  Store left operand into temporary register
325 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
326 : ADD  2, 3, 0 ;  Restore left operand
327 : SUB  1, 2, 1 ;  left - right for equality check
328 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
329 : LDC  1, 0(0) ;  false
330 : LDA  7, 1(7) ;  skip setting true
331 : LDC  1, 1(0) ;  true
332 : JEQ  1, 335(0) ;  If condition is false, jump to ELSE
333 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
334 : LDA  7, 374(0) ;  Skip ELSE block
335 : LDA 4, 4(5) ; Base of callee frame
336 : LD   1, 1(5) ;  Load parameter 'x' into R1
337 : ST 1, 1(4) ; Argument 0
338 : LDA 6, 342(0) ; Return address
339 : ST 6, 0(4) ; Store return in callee frame
340 : ADD 5, 4, 0 ; Push callee frame
341 : LDA 7, 125(0) ; Call isPrime
342 : LD 1, 2(5) ; Load function result
343 : LDC 2, 4(0) ; Caller frame size
344 : SUB 5, 5, 2 ; Pop back to caller
345 : ADD  3, 1, 0 ;  Store left operand into temporary register
346 : LDA 4, 4(5) ; Base of callee frame
347 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
348 : LDA 4, 4(5) ; Base of callee frame
349 : LD   1, 1(5) ;  Load parameter 'x' into R1
350 : ST 1, 1(4) ; Argument 0
351 : LDA 6, 355(0) ; Return address
352 : ST 6, 0(4) ; Store return in callee frame
353 : ADD 5, 4, 0 ; Push callee frame
354 : LDA 7, 262(0) ; Call rotate
355 : LD 1, 2(5) ; Load function result
356 : LDC 2, 4(0) ; Caller frame size
357 : SUB 5, 5, 2 ; Pop back to caller
358 : ST 1, 1(4) ; Argument 0
359 : LD   1, 2(5) ;  Load parameter 'turns' into R1
360 : ADD  3, 1, 0 ;  Store left operand into temporary register
361 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
362 : ADD  2, 3, 0 ;  Restore left operand
363 : SUB  1, 2, 1 ;  R1 = left - right
364 : ST 1, 2(4) ; Argument 1
365 : LDA 6, 369(0) ; Return address
366 : ST 6, 0(4) ; Store return in callee frame
367 : ADD 5, 4, 0 ; Push callee frame
368 : LDA 7, 323(0) ; Call isCircularPrimeHelper
369 : LD 1, 3(5) ; Load function result
370 : LDC 2, 4(0) ; Caller frame size
371 : SUB 5, 5, 2 ; Pop back to caller
372 : ADD  2, 3, 0 ;  Restore left operand
373 : MUL  1, 2, 1 ;  R1 = left AND right
374 : ST   1, 3(5) ;  Store function result into stack frame
375 : LD   6, 0(5) ;  Load return address
376 : LDA  7, 0(6) ;  Return to caller
377 : LDA 4, 3(5) ; Base of callee frame
378 : LD   1, 1(5) ;  Load parameter 'x' into R1
379 : ST 1, 1(4) ; Argument 0
380 : LDA 4, 3(5) ; Base of callee frame
381 : LD   1, 1(5) ;  Load parameter 'x' into R1
382 : ST 1, 1(4) ; Argument 0
383 : LDA 6, 387(0) ; Return address
384 : ST 6, 0(4) ; Store return in callee frame
385 : ADD 5, 4, 0 ; Push callee frame
386 : LDA 7, 181(0) ; Call log10
387 : LD 1, 2(5) ; Load function result
388 : LDC 2, 3(0) ; Caller frame size
389 : SUB 5, 5, 2 ; Pop back to caller
390 : ADD  3, 1, 0 ;  Store left operand into temporary register
391 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
392 : ADD  2, 3, 0 ;  Restore left operand
393 : ADD  1, 2, 1 ;  R1 = left + right
394 : ST 1, 2(4) ; Argument 1
395 : LDA 6, 399(0) ; Return address
396 : ST 6, 0(4) ; Store return in callee frame
397 : ADD 5, 4, 0 ; Push callee frame
398 : LDA 7, 323(0) ; Call isCircularPrimeHelper
399 : LD 1, 3(5) ; Load function result
400 : LDC 2, 3(0) ; Caller frame size
401 : SUB 5, 5, 2 ; Pop back to caller
402 : JEQ  1, 414(0) ;  If condition is false, jump to ELSE
403 : LDA 4, 3(5) ; Base of callee frame
404 : LD   1, 1(5) ;  Load parameter 'x' into R1
405 : ST 1, 1(4) ; Argument 0
406 : LDA 6, 410(0) ; Return address
407 : ST 6, 0(4) ; Store return in callee frame
408 : ADD 5, 4, 0 ; Push callee frame
409 : LDA 7, 310(0) ; Call report
410 : LD 1, 2(5) ; Load function result
411 : LDC 2, 3(0) ; Caller frame size
412 : SUB 5, 5, 2 ; Pop back to caller
413 : LDA  7, 415(0) ;  Skip ELSE block
414 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
415 : ST   1, 2(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 2(5) ;  Load parameter 'x' into R1
419 : ADD  3, 1, 0 ;  Store left operand into temporary register
420 : LD   1, 1(5) ;  Load parameter 'top' into R1
421 : ADD  2, 3, 0 ;  Restore left operand
422 : SUB  1, 2, 1 ;  left - right for less-than check
423 : JLT  1, 2(7) ;  If R1 < 0, jump to true
424 : LDC  1, 0(0) ;  false
425 : LDA  7, 1(7) ;  skip setting true
426 : LDC  1, 1(0) ;  true
427 : JEQ  1, 481(0) ;  If condition is false, jump to ELSE
428 : LDA 4, 5(5) ; Base of callee frame
429 : LD   1, 2(5) ;  Load parameter 'x' into R1
430 : ST 1, 1(4) ; Argument 0
431 : LDA 6, 435(0) ; Return address
432 : ST 6, 0(4) ; Store return in callee frame
433 : ADD 5, 4, 0 ; Push callee frame
434 : LDA 7, 377(0) ; Call isCircularPrime
435 : LD 1, 2(5) ; Load function result
436 : LDC 2, 5(0) ; Caller frame size
437 : SUB 5, 5, 2 ; Pop back to caller
438 : JEQ  1, 462(0) ;  If condition is false, jump to ELSE
439 : LDA 4, 5(5) ; Base of callee frame
440 : LD   1, 1(5) ;  Load parameter 'top' into R1
441 : ST 1, 1(4) ; Argument 0
442 : LD   1, 2(5) ;  Load parameter 'x' into R1
443 : ADD  3, 1, 0 ;  Store left operand into temporary register
444 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
445 : ADD  2, 3, 0 ;  Restore left operand
446 : ADD  1, 2, 1 ;  R1 = left + right
447 : ST 1, 2(4) ; Argument 1
448 : LD   1, 3(5) ;  Load parameter 'count' into R1
449 : ADD  3, 1, 0 ;  Store left operand into temporary register
450 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
451 : ADD  2, 3, 0 ;  Restore left operand
452 : ADD  1, 2, 1 ;  R1 = left + right
453 : ST 1, 3(4) ; Argument 2
454 : LDA 6, 458(0) ; Return address
455 : ST 6, 0(4) ; Store return in callee frame
456 : ADD 5, 4, 0 ; Push callee frame
457 : LDA 7, 418(0) ; Call circularPrimesToHelper
458 : LD 1, 4(5) ; Load function result
459 : LDC 2, 5(0) ; Caller frame size
460 : SUB 5, 5, 2 ; Pop back to caller
461 : LDA  7, 480(0) ;  Skip ELSE block
462 : LDA 4, 5(5) ; Base of callee frame
463 : LD   1, 1(5) ;  Load parameter 'top' into R1
464 : ST 1, 1(4) ; Argument 0
465 : LD   1, 2(5) ;  Load parameter 'x' into R1
466 : ADD  3, 1, 0 ;  Store left operand into temporary register
467 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
468 : ADD  2, 3, 0 ;  Restore left operand
469 : ADD  1, 2, 1 ;  R1 = left + right
470 : ST 1, 2(4) ; Argument 1
471 : LD   1, 3(5) ;  Load parameter 'count' into R1
472 : ST 1, 3(4) ; Argument 2
473 : LDA 6, 477(0) ; Return address
474 : ST 6, 0(4) ; Store return in callee frame
475 : ADD 5, 4, 0 ; Push callee frame
476 : LDA 7, 418(0) ; Call circularPrimesToHelper
477 : LD 1, 4(5) ; Load function result
478 : LDC 2, 5(0) ; Caller frame size
479 : SUB 5, 5, 2 ; Pop back to caller
480 : LDA  7, 482(0) ;  Skip ELSE block
481 : LD   1, 3(5) ;  Load parameter 'count' into R1
482 : ST   1, 4(5) ;  Store function result into stack frame
483 : LD   6, 0(5) ;  Load return address
484 : LDA  7, 0(6) ;  Return to caller
485 : LDA 4, 3(5) ; Base of callee frame
486 : LD   1, 1(5) ;  Load parameter 'x' into R1
487 : ADD  3, 1, 0 ;  Store left operand into temporary register
488 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
489 : ADD  2, 3, 0 ;  Restore left operand
490 : ADD  1, 2, 1 ;  R1 = left + right
491 : ST 1, 1(4) ; Argument 0
492 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
493 : ST 1, 2(4) ; Argument 1
494 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
495 : ST 1, 3(4) ; Argument 2
496 : LDA 6, 500(0) ; Return address
497 : ST 6, 0(4) ; Store return in callee frame
498 : ADD 5, 4, 0 ; Push callee frame
499 : LDA 7, 418(0) ; Call circularPrimesToHelper
500 : LD 1, 4(5) ; Load function result
501 : LDC 2, 3(0) ; Caller frame size
502 : SUB 5, 5, 2 ; Pop back to caller
503 : ST   1, 2(5) ;  Store function result into stack frame
504 : LD   6, 0(5) ;  Load return address
505 : LDA  7, 0(6) ;  Return to caller
