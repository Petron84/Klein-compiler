0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LDA 4, 5(5) ; Base of callee frame
16 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
17 : ST 1, 1(4) ; Argument 0
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : ST 1, 2(4) ; Argument 1
20 : LD   1, 3(5) ;  Load parameter 'N' into R1
21 : ST 1, 3(4) ; Argument 2
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return in callee frame
24 : ADD 5, 4, 0 ; Push callee frame
25 : LDA 7, 516(0) ; Call fareyNum
26 : LD 1, 4(5) ; Load function result
27 : LDC 2, 5(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop back to caller
29 : LDA 4, 5(5) ; Base of callee frame
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return addr in callee frame
32 : ADD 5, 4, 0 ; Push new frame
33 : LDA 7, 12(0) ; Call print
34 : LDC 2, 5(0) ; Caller frame size
35 : SUB 5, 5, 2 ; Pop frame
36 : LDA 4, 5(5) ; Base of callee frame
37 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
38 : ST 1, 1(4) ; Argument 0
39 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
40 : ST 1, 2(4) ; Argument 1
41 : LD   1, 3(5) ;  Load parameter 'N' into R1
42 : ST 1, 3(4) ; Argument 2
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return in callee frame
45 : ADD 5, 4, 0 ; Push callee frame
46 : LDA 7, 399(0) ; Call fareyDen
47 : LD 1, 4(5) ; Load function result
48 : LDC 2, 5(0) ; Caller frame size
49 : SUB 5, 5, 2 ; Pop back to caller
50 : ST 1, 4(5) ; Store result into caller’s frame
51 : LD   1, 4(5) ;  Load return value into register 1
52 : LD  6, 0(5) ;  Load return address for main function into register 6
53 : LDA  7, 0(6) ;  Jump to return address of main function
54 : LD   1, 1(5) ;  Load parameter 'x' into R1
55 : ADD  3, 1, 0 ;  Store left operand into temporary register
56 : LD   1, 2(5) ;  Load parameter 'y' into R1
57 : ADD  2, 3, 0 ;  Restore left operand
58 : SUB  1, 2, 1 ;  left - right for less-than check
59 : JLT  1, 2(7) ;  If R1 < 0, jump to true
60 : LDC  1, 0(0) ;  false
61 : LDA  7, 1(7) ;  skip setting true
62 : LDC  1, 1(0) ;  true
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LD   1, 1(5) ;  Load parameter 'x' into R1
65 : ADD  3, 1, 0 ;  Store left operand into temporary register
66 : LD   1, 2(5) ;  Load parameter 'y' into R1
67 : ADD  2, 3, 0 ;  Restore left operand
68 : SUB  1, 2, 1 ;  left - right for equality check
69 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
70 : LDC  1, 0(0) ;  false
71 : LDA  7, 1(7) ;  skip setting true
72 : LDC  1, 1(0) ;  true
73 : ADD  2, 3, 0 ;  Restore left operand
74 : ADD  1, 2, 1 ;  R1 = left OR right
75 : LDC  2, 1(0) ;  Load 1 into R2
76 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
77 : ST   1, 3(5) ;  Store function result into stack frame
78 : LD   6, 0(5) ;  Load return address
79 : LDA  7, 0(6) ;  Return to caller
80 : LDA 4, 6(5) ; Base of callee frame
81 : LD   1, 1(5) ;  Load parameter 'x' into R1
82 : ADD  3, 1, 0 ;  Store left operand into temporary register
83 : LD   1, 4(5) ;  Load parameter 'yd' into R1
84 : ADD  2, 3, 0 ;  Restore left operand
85 : MUL  1, 2, 1 ;  R1 = left * right
86 : ST 1, 1(4) ; Argument 0
87 : LD   1, 3(5) ;  Load parameter 'y' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 2(5) ;  Load parameter 'xd' into R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : MUL  1, 2, 1 ;  R1 = left * right
92 : ST 1, 2(4) ; Argument 1
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame
96 : LDA 7, 54(0) ; Call greater
97 : LD 1, 3(5) ; Load function result
98 : LDC 2, 6(0) ; Caller frame size
99 : SUB 5, 5, 2 ; Pop back to caller
100 : ST   1, 5(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
103 : LD   1, 1(5) ;  Load parameter 'x' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LD   1, 4(5) ;  Load parameter 'yd' into R1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : MUL  1, 2, 1 ;  R1 = left * right
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LD   1, 3(5) ;  Load parameter 'y' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LD   1, 2(5) ;  Load parameter 'xd' into R1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : MUL  1, 2, 1 ;  R1 = left * right
114 : ADD  2, 3, 0 ;  Restore left operand
115 : SUB  1, 2, 1 ;  left - right for equality check
116 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
117 : LDC  1, 0(0) ;  false
118 : LDA  7, 1(7) ;  skip setting true
119 : LDC  1, 1(0) ;  true
120 : ST   1, 5(5) ;  Store function result into stack frame
121 : LD   6, 0(5) ;  Load return address
122 : LDA  7, 0(6) ;  Return to caller
123 : LDA 4, 10(5) ; Base of callee frame
124 : LD   1, 6(5) ;  Load parameter 'b' into R1
125 : ST 1, 1(4) ; Argument 0
126 : LD   1, 4(5) ;  Load parameter 'N' into R1
127 : ST 1, 2(4) ; Argument 1
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 54(0) ; Call greater
132 : LD 1, 3(5) ; Load function result
133 : LDC 2, 10(0) ; Caller frame size
134 : SUB 5, 5, 2 ; Pop back to caller
135 : ADD  3, 1, 0 ;  Store left operand into temporary register
136 : LDA 4, 10(5) ; Base of callee frame
137 : LD   1, 8(5) ;  Load parameter 'd' into R1
138 : ST 1, 1(4) ; Argument 0
139 : LD   1, 4(5) ;  Load parameter 'N' into R1
140 : ST 1, 2(4) ; Argument 1
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 54(0) ; Call greater
145 : LD 1, 3(5) ; Load function result
146 : LDC 2, 10(0) ; Caller frame size
147 : SUB 5, 5, 2 ; Pop back to caller
148 : ADD  2, 3, 0 ;  Restore left operand
149 : ADD  1, 2, 1 ;  R1 = left OR right
150 : JEQ  1, 189(0) ;  If condition is false, jump to ELSE
151 : LD   1, 1(5) ;  Load parameter 'selector' into R1
152 : ADD  3, 1, 0 ;  Store left operand into temporary register
153 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
154 : ADD  2, 3, 0 ;  Restore left operand
155 : SUB  1, 2, 1 ;  left - right for equality check
156 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
157 : LDC  1, 0(0) ;  false
158 : LDA  7, 1(7) ;  skip setting true
159 : LDC  1, 1(0) ;  true
160 : JEQ  1, 163(0) ;  If condition is false, jump to ELSE
161 : LD   1, 5(5) ;  Load parameter 'a' into R1
162 : LDA  7, 188(0) ;  Skip ELSE block
163 : LD   1, 1(5) ;  Load parameter 'selector' into R1
164 : ADD  3, 1, 0 ;  Store left operand into temporary register
165 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
166 : ADD  2, 3, 0 ;  Restore left operand
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 6(5) ;  Load parameter 'b' into R1
174 : LDA  7, 188(0) ;  Skip ELSE block
175 : LD   1, 1(5) ;  Load parameter 'selector' into R1
176 : ADD  3, 1, 0 ;  Store left operand into temporary register
177 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
178 : ADD  2, 3, 0 ;  Restore left operand
179 : SUB  1, 2, 1 ;  left - right for equality check
180 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
181 : LDC  1, 0(0) ;  false
182 : LDA  7, 1(7) ;  skip setting true
183 : LDC  1, 1(0) ;  true
184 : JEQ  1, 187(0) ;  If condition is false, jump to ELSE
185 : LD   1, 7(5) ;  Load parameter 'c' into R1
186 : LDA  7, 188(0) ;  Skip ELSE block
187 : LD   1, 8(5) ;  Load parameter 'd' into R1
188 : LDA  7, 358(0) ;  Skip ELSE block
189 : LDA 4, 10(5) ; Base of callee frame
190 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
191 : ST 1, 1(4) ; Argument 0
192 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
193 : ST 1, 2(4) ; Argument 1
194 : LD   1, 5(5) ;  Load parameter 'a' into R1
195 : ADD  3, 1, 0 ;  Store left operand into temporary register
196 : LD   1, 7(5) ;  Load parameter 'c' into R1
197 : ADD  2, 3, 0 ;  Restore left operand
198 : ADD  1, 2, 1 ;  R1 = left + right
199 : ST 1, 3(4) ; Argument 2
200 : LD   1, 6(5) ;  Load parameter 'b' into R1
201 : ADD  3, 1, 0 ;  Store left operand into temporary register
202 : LD   1, 8(5) ;  Load parameter 'd' into R1
203 : ADD  2, 3, 0 ;  Restore left operand
204 : ADD  1, 2, 1 ;  R1 = left + right
205 : ST 1, 4(4) ; Argument 3
206 : LDA 6, 210(0) ; Return address
207 : ST 6, 0(4) ; Store return in callee frame
208 : ADD 5, 4, 0 ; Push callee frame
209 : LDA 7, 103(0) ; Call fractionEqual
210 : LD 1, 5(5) ; Load function result
211 : LDC 2, 10(0) ; Caller frame size
212 : SUB 5, 5, 2 ; Pop back to caller
213 : JEQ  1, 268(0) ;  If condition is false, jump to ELSE
214 : LD   1, 1(5) ;  Load parameter 'selector' into R1
215 : ADD  3, 1, 0 ;  Store left operand into temporary register
216 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
217 : ADD  2, 3, 0 ;  Restore left operand
218 : SUB  1, 2, 1 ;  left - right for equality check
219 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
220 : LDC  1, 0(0) ;  false
221 : LDA  7, 1(7) ;  skip setting true
222 : LDC  1, 1(0) ;  true
223 : JEQ  1, 230(0) ;  If condition is false, jump to ELSE
224 : LD   1, 5(5) ;  Load parameter 'a' into R1
225 : ADD  3, 1, 0 ;  Store left operand into temporary register
226 : LD   1, 7(5) ;  Load parameter 'c' into R1
227 : ADD  2, 3, 0 ;  Restore left operand
228 : ADD  1, 2, 1 ;  R1 = left + right
229 : LDA  7, 267(0) ;  Skip ELSE block
230 : LD   1, 1(5) ;  Load parameter 'selector' into R1
231 : ADD  3, 1, 0 ;  Store left operand into temporary register
232 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
233 : ADD  2, 3, 0 ;  Restore left operand
234 : SUB  1, 2, 1 ;  left - right for equality check
235 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
236 : LDC  1, 0(0) ;  false
237 : LDA  7, 1(7) ;  skip setting true
238 : LDC  1, 1(0) ;  true
239 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
240 : LD   1, 6(5) ;  Load parameter 'b' into R1
241 : ADD  3, 1, 0 ;  Store left operand into temporary register
242 : LD   1, 8(5) ;  Load parameter 'd' into R1
243 : ADD  2, 3, 0 ;  Restore left operand
244 : ADD  1, 2, 1 ;  R1 = left + right
245 : LDA  7, 267(0) ;  Skip ELSE block
246 : LD   1, 1(5) ;  Load parameter 'selector' into R1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : SUB  1, 2, 1 ;  left - right for equality check
251 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
252 : LDC  1, 0(0) ;  false
253 : LDA  7, 1(7) ;  skip setting true
254 : LDC  1, 1(0) ;  true
255 : JEQ  1, 262(0) ;  If condition is false, jump to ELSE
256 : LD   1, 5(5) ;  Load parameter 'a' into R1
257 : ADD  3, 1, 0 ;  Store left operand into temporary register
258 : LD   1, 7(5) ;  Load parameter 'c' into R1
259 : ADD  2, 3, 0 ;  Restore left operand
260 : ADD  1, 2, 1 ;  R1 = left + right
261 : LDA  7, 267(0) ;  Skip ELSE block
262 : LD   1, 6(5) ;  Load parameter 'b' into R1
263 : ADD  3, 1, 0 ;  Store left operand into temporary register
264 : LD   1, 8(5) ;  Load parameter 'd' into R1
265 : ADD  2, 3, 0 ;  Restore left operand
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : LDA  7, 358(0) ;  Skip ELSE block
268 : LDA 4, 10(5) ; Base of callee frame
269 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
270 : ST 1, 1(4) ; Argument 0
271 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
272 : ST 1, 2(4) ; Argument 1
273 : LD   1, 5(5) ;  Load parameter 'a' into R1
274 : ADD  3, 1, 0 ;  Store left operand into temporary register
275 : LD   1, 7(5) ;  Load parameter 'c' into R1
276 : ADD  2, 3, 0 ;  Restore left operand
277 : ADD  1, 2, 1 ;  R1 = left + right
278 : ST 1, 3(4) ; Argument 2
279 : LD   1, 6(5) ;  Load parameter 'b' into R1
280 : ADD  3, 1, 0 ;  Store left operand into temporary register
281 : LD   1, 8(5) ;  Load parameter 'd' into R1
282 : ADD  2, 3, 0 ;  Restore left operand
283 : ADD  1, 2, 1 ;  R1 = left + right
284 : ST 1, 4(4) ; Argument 3
285 : LDA 6, 289(0) ; Return address
286 : ST 6, 0(4) ; Store return in callee frame
287 : ADD 5, 4, 0 ; Push callee frame
288 : LDA 7, 80(0) ; Call fractionGreater
289 : LD 1, 5(5) ; Load function result
290 : LDC 2, 10(0) ; Caller frame size
291 : SUB 5, 5, 2 ; Pop back to caller
292 : JEQ  1, 326(0) ;  If condition is false, jump to ELSE
293 : LDA 4, 10(5) ; Base of callee frame
294 : LD   1, 1(5) ;  Load parameter 'selector' into R1
295 : ST 1, 1(4) ; Argument 0
296 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
297 : ST 1, 2(4) ; Argument 1
298 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
299 : ST 1, 3(4) ; Argument 2
300 : LD   1, 4(5) ;  Load parameter 'N' into R1
301 : ST 1, 4(4) ; Argument 3
302 : LD   1, 5(5) ;  Load parameter 'a' into R1
303 : ADD  3, 1, 0 ;  Store left operand into temporary register
304 : LD   1, 7(5) ;  Load parameter 'c' into R1
305 : ADD  2, 3, 0 ;  Restore left operand
306 : ADD  1, 2, 1 ;  R1 = left + right
307 : ST 1, 5(4) ; Argument 4
308 : LD   1, 6(5) ;  Load parameter 'b' into R1
309 : ADD  3, 1, 0 ;  Store left operand into temporary register
310 : LD   1, 8(5) ;  Load parameter 'd' into R1
311 : ADD  2, 3, 0 ;  Restore left operand
312 : ADD  1, 2, 1 ;  R1 = left + right
313 : ST 1, 6(4) ; Argument 5
314 : LD   1, 7(5) ;  Load parameter 'c' into R1
315 : ST 1, 7(4) ; Argument 6
316 : LD   1, 8(5) ;  Load parameter 'd' into R1
317 : ST 1, 8(4) ; Argument 7
318 : LDA 6, 322(0) ; Return address
319 : ST 6, 0(4) ; Store return in callee frame
320 : ADD 5, 4, 0 ; Push callee frame
321 : LDA 7, 123(0) ; Call whileLoopFor
322 : LD 1, 9(5) ; Load function result
323 : LDC 2, 10(0) ; Caller frame size
324 : SUB 5, 5, 2 ; Pop back to caller
325 : LDA  7, 358(0) ;  Skip ELSE block
326 : LDA 4, 10(5) ; Base of callee frame
327 : LD   1, 1(5) ;  Load parameter 'selector' into R1
328 : ST 1, 1(4) ; Argument 0
329 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
330 : ST 1, 2(4) ; Argument 1
331 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
332 : ST 1, 3(4) ; Argument 2
333 : LD   1, 4(5) ;  Load parameter 'N' into R1
334 : ST 1, 4(4) ; Argument 3
335 : LD   1, 5(5) ;  Load parameter 'a' into R1
336 : ST 1, 5(4) ; Argument 4
337 : LD   1, 6(5) ;  Load parameter 'b' into R1
338 : ST 1, 6(4) ; Argument 5
339 : LD   1, 5(5) ;  Load parameter 'a' into R1
340 : ADD  3, 1, 0 ;  Store left operand into temporary register
341 : LD   1, 7(5) ;  Load parameter 'c' into R1
342 : ADD  2, 3, 0 ;  Restore left operand
343 : ADD  1, 2, 1 ;  R1 = left + right
344 : ST 1, 7(4) ; Argument 6
345 : LD   1, 6(5) ;  Load parameter 'b' into R1
346 : ADD  3, 1, 0 ;  Store left operand into temporary register
347 : LD   1, 8(5) ;  Load parameter 'd' into R1
348 : ADD  2, 3, 0 ;  Restore left operand
349 : ADD  1, 2, 1 ;  R1 = left + right
350 : ST 1, 8(4) ; Argument 7
351 : LDA 6, 355(0) ; Return address
352 : ST 6, 0(4) ; Store return in callee frame
353 : ADD 5, 4, 0 ; Push callee frame
354 : LDA 7, 123(0) ; Call whileLoopFor
355 : LD 1, 9(5) ; Load function result
356 : LDC 2, 10(0) ; Caller frame size
357 : SUB 5, 5, 2 ; Pop back to caller
358 : ST   1, 9(5) ;  Store function result into stack frame
359 : LD   6, 0(5) ;  Load return address
360 : LDA  7, 0(6) ;  Return to caller
361 : LDA 4, 7(5) ; Base of callee frame
362 : LD   1, 3(5) ;  Load parameter 'b' into R1
363 : ST 1, 1(4) ; Argument 0
364 : LD   1, 1(5) ;  Load parameter 'N' into R1
365 : ST 1, 2(4) ; Argument 1
366 : LDA 6, 370(0) ; Return address
367 : ST 6, 0(4) ; Store return in callee frame
368 : ADD 5, 4, 0 ; Push callee frame
369 : LDA 7, 54(0) ; Call greater
370 : LD 1, 3(5) ; Load function result
371 : LDC 2, 7(0) ; Caller frame size
372 : SUB 5, 5, 2 ; Pop back to caller
373 : JEQ  1, 376(0) ;  If condition is false, jump to ELSE
374 : LD   1, 5(5) ;  Load parameter 'd' into R1
375 : LDA  7, 377(0) ;  Skip ELSE block
376 : LD   1, 3(5) ;  Load parameter 'b' into R1
377 : ST   1, 6(5) ;  Store function result into stack frame
378 : LD   6, 0(5) ;  Load return address
379 : LDA  7, 0(6) ;  Return to caller
380 : LDA 4, 7(5) ; Base of callee frame
381 : LD   1, 3(5) ;  Load parameter 'b' into R1
382 : ST 1, 1(4) ; Argument 0
383 : LD   1, 1(5) ;  Load parameter 'N' into R1
384 : ST 1, 2(4) ; Argument 1
385 : LDA 6, 389(0) ; Return address
386 : ST 6, 0(4) ; Store return in callee frame
387 : ADD 5, 4, 0 ; Push callee frame
388 : LDA 7, 54(0) ; Call greater
389 : LD 1, 3(5) ; Load function result
390 : LDC 2, 7(0) ; Caller frame size
391 : SUB 5, 5, 2 ; Pop back to caller
392 : JEQ  1, 395(0) ;  If condition is false, jump to ELSE
393 : LD   1, 4(5) ;  Load parameter 'c' into R1
394 : LDA  7, 396(0) ;  Skip ELSE block
395 : LD   1, 2(5) ;  Load parameter 'a' into R1
396 : ST   1, 6(5) ;  Store function result into stack frame
397 : LD   6, 0(5) ;  Load return address
398 : LDA  7, 0(6) ;  Return to caller
399 : LDA 4, 5(5) ; Base of callee frame
400 : LD   1, 3(5) ;  Load parameter 'N' into R1
401 : ST 1, 1(4) ; Argument 0
402 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
403 : LDA 4, 5(5) ; Base of callee frame
404 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
405 : ST 1, 1(4) ; Argument 0
406 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
407 : ST 1, 2(4) ; Argument 1
408 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
409 : ST 1, 3(4) ; Argument 2
410 : LD   1, 3(5) ;  Load parameter 'N' into R1
411 : ST 1, 4(4) ; Argument 3
412 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
413 : ST 1, 5(4) ; Argument 4
414 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
415 : ST 1, 6(4) ; Argument 5
416 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
417 : ST 1, 7(4) ; Argument 6
418 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
419 : ST 1, 8(4) ; Argument 7
420 : LDA 6, 424(0) ; Return address
421 : ST 6, 0(4) ; Store return in callee frame
422 : ADD 5, 4, 0 ; Push callee frame
423 : LDA 7, 123(0) ; Call whileLoopFor
424 : LD 1, 9(5) ; Load function result
425 : LDC 2, 5(0) ; Caller frame size
426 : SUB 5, 5, 2 ; Pop back to caller
427 : ST 1, 2(4) ; Argument 1
428 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
429 : LDA 4, 5(5) ; Base of callee frame
430 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
431 : ST 1, 1(4) ; Argument 0
432 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
433 : ST 1, 2(4) ; Argument 1
434 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
435 : ST 1, 3(4) ; Argument 2
436 : LD   1, 3(5) ;  Load parameter 'N' into R1
437 : ST 1, 4(4) ; Argument 3
438 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
439 : ST 1, 5(4) ; Argument 4
440 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
441 : ST 1, 6(4) ; Argument 5
442 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
443 : ST 1, 7(4) ; Argument 6
444 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
445 : ST 1, 8(4) ; Argument 7
446 : LDA 6, 450(0) ; Return address
447 : ST 6, 0(4) ; Store return in callee frame
448 : ADD 5, 4, 0 ; Push callee frame
449 : LDA 7, 123(0) ; Call whileLoopFor
450 : LD 1, 9(5) ; Load function result
451 : LDC 2, 5(0) ; Caller frame size
452 : SUB 5, 5, 2 ; Pop back to caller
453 : ST 1, 3(4) ; Argument 2
454 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
455 : LDA 4, 5(5) ; Base of callee frame
456 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
457 : ST 1, 1(4) ; Argument 0
458 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
459 : ST 1, 2(4) ; Argument 1
460 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
461 : ST 1, 3(4) ; Argument 2
462 : LD   1, 3(5) ;  Load parameter 'N' into R1
463 : ST 1, 4(4) ; Argument 3
464 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
465 : ST 1, 5(4) ; Argument 4
466 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
467 : ST 1, 6(4) ; Argument 5
468 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
469 : ST 1, 7(4) ; Argument 6
470 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
471 : ST 1, 8(4) ; Argument 7
472 : LDA 6, 476(0) ; Return address
473 : ST 6, 0(4) ; Store return in callee frame
474 : ADD 5, 4, 0 ; Push callee frame
475 : LDA 7, 123(0) ; Call whileLoopFor
476 : LD 1, 9(5) ; Load function result
477 : LDC 2, 5(0) ; Caller frame size
478 : SUB 5, 5, 2 ; Pop back to caller
479 : ST 1, 4(4) ; Argument 3
480 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
481 : LDA 4, 5(5) ; Base of callee frame
482 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
483 : ST 1, 1(4) ; Argument 0
484 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
485 : ST 1, 2(4) ; Argument 1
486 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
487 : ST 1, 3(4) ; Argument 2
488 : LD   1, 3(5) ;  Load parameter 'N' into R1
489 : ST 1, 4(4) ; Argument 3
490 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
491 : ST 1, 5(4) ; Argument 4
492 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
493 : ST 1, 6(4) ; Argument 5
494 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
495 : ST 1, 7(4) ; Argument 6
496 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
497 : ST 1, 8(4) ; Argument 7
498 : LDA 6, 502(0) ; Return address
499 : ST 6, 0(4) ; Store return in callee frame
500 : ADD 5, 4, 0 ; Push callee frame
501 : LDA 7, 123(0) ; Call whileLoopFor
502 : LD 1, 9(5) ; Load function result
503 : LDC 2, 5(0) ; Caller frame size
504 : SUB 5, 5, 2 ; Pop back to caller
505 : ST 1, 5(4) ; Argument 4
506 : LDA 6, 510(0) ; Return address
507 : ST 6, 0(4) ; Store return in callee frame
508 : ADD 5, 4, 0 ; Push callee frame
509 : LDA 7, 361(0) ; Call fareySelectDen
510 : LD 1, 6(5) ; Load function result
511 : LDC 2, 5(0) ; Caller frame size
512 : SUB 5, 5, 2 ; Pop back to caller
513 : ST   1, 4(5) ;  Store function result into stack frame
514 : LD   6, 0(5) ;  Load return address
515 : LDA  7, 0(6) ;  Return to caller
516 : LDA 4, 5(5) ; Base of callee frame
517 : LD   1, 3(5) ;  Load parameter 'N' into R1
518 : ST 1, 1(4) ; Argument 0
519 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
520 : LDA 4, 5(5) ; Base of callee frame
521 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
522 : ST 1, 1(4) ; Argument 0
523 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
524 : ST 1, 2(4) ; Argument 1
525 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
526 : ST 1, 3(4) ; Argument 2
527 : LD   1, 3(5) ;  Load parameter 'N' into R1
528 : ST 1, 4(4) ; Argument 3
529 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
530 : ST 1, 5(4) ; Argument 4
531 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
532 : ST 1, 6(4) ; Argument 5
533 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
534 : ST 1, 7(4) ; Argument 6
535 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
536 : ST 1, 8(4) ; Argument 7
537 : LDA 6, 541(0) ; Return address
538 : ST 6, 0(4) ; Store return in callee frame
539 : ADD 5, 4, 0 ; Push callee frame
540 : LDA 7, 123(0) ; Call whileLoopFor
541 : LD 1, 9(5) ; Load function result
542 : LDC 2, 5(0) ; Caller frame size
543 : SUB 5, 5, 2 ; Pop back to caller
544 : ST 1, 2(4) ; Argument 1
545 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
546 : LDA 4, 5(5) ; Base of callee frame
547 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
548 : ST 1, 1(4) ; Argument 0
549 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
550 : ST 1, 2(4) ; Argument 1
551 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
552 : ST 1, 3(4) ; Argument 2
553 : LD   1, 3(5) ;  Load parameter 'N' into R1
554 : ST 1, 4(4) ; Argument 3
555 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
556 : ST 1, 5(4) ; Argument 4
557 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
558 : ST 1, 6(4) ; Argument 5
559 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
560 : ST 1, 7(4) ; Argument 6
561 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
562 : ST 1, 8(4) ; Argument 7
563 : LDA 6, 567(0) ; Return address
564 : ST 6, 0(4) ; Store return in callee frame
565 : ADD 5, 4, 0 ; Push callee frame
566 : LDA 7, 123(0) ; Call whileLoopFor
567 : LD 1, 9(5) ; Load function result
568 : LDC 2, 5(0) ; Caller frame size
569 : SUB 5, 5, 2 ; Pop back to caller
570 : ST 1, 3(4) ; Argument 2
571 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
572 : LDA 4, 5(5) ; Base of callee frame
573 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
574 : ST 1, 1(4) ; Argument 0
575 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
576 : ST 1, 2(4) ; Argument 1
577 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
578 : ST 1, 3(4) ; Argument 2
579 : LD   1, 3(5) ;  Load parameter 'N' into R1
580 : ST 1, 4(4) ; Argument 3
581 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
582 : ST 1, 5(4) ; Argument 4
583 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
584 : ST 1, 6(4) ; Argument 5
585 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
586 : ST 1, 7(4) ; Argument 6
587 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
588 : ST 1, 8(4) ; Argument 7
589 : LDA 6, 593(0) ; Return address
590 : ST 6, 0(4) ; Store return in callee frame
591 : ADD 5, 4, 0 ; Push callee frame
592 : LDA 7, 123(0) ; Call whileLoopFor
593 : LD 1, 9(5) ; Load function result
594 : LDC 2, 5(0) ; Caller frame size
595 : SUB 5, 5, 2 ; Pop back to caller
596 : ST 1, 4(4) ; Argument 3
597 : LDA  4, 5(4) ;  Push additional call frame for nested function calls
598 : LDA 4, 5(5) ; Base of callee frame
599 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
600 : ST 1, 1(4) ; Argument 0
601 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
602 : ST 1, 2(4) ; Argument 1
603 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
604 : ST 1, 3(4) ; Argument 2
605 : LD   1, 3(5) ;  Load parameter 'N' into R1
606 : ST 1, 4(4) ; Argument 3
607 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
608 : ST 1, 5(4) ; Argument 4
609 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
610 : ST 1, 6(4) ; Argument 5
611 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
612 : ST 1, 7(4) ; Argument 6
613 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
614 : ST 1, 8(4) ; Argument 7
615 : LDA 6, 619(0) ; Return address
616 : ST 6, 0(4) ; Store return in callee frame
617 : ADD 5, 4, 0 ; Push callee frame
618 : LDA 7, 123(0) ; Call whileLoopFor
619 : LD 1, 9(5) ; Load function result
620 : LDC 2, 5(0) ; Caller frame size
621 : SUB 5, 5, 2 ; Pop back to caller
622 : ST 1, 5(4) ; Argument 4
623 : LDA 6, 627(0) ; Return address
624 : ST 6, 0(4) ; Store return in callee frame
625 : ADD 5, 4, 0 ; Push callee frame
626 : LDA 7, 380(0) ; Call fareySelectNum
627 : LD 1, 6(5) ; Load function result
628 : LDC 2, 5(0) ; Caller frame size
629 : SUB 5, 5, 2 ; Pop back to caller
630 : ST   1, 4(5) ;  Store function result into stack frame
631 : LD   6, 0(5) ;  Load return address
632 : LDA  7, 0(6) ;  Return to caller
