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
22 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : LDA 4, 3(5) ; Base of callee frame
25 : ST 1, 1(4) ; Store argument 0 in callee
26 : LDA 4, 3(5) ; Base of callee frame
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame
30 : LDA 7, 359(0) ; Call emirp
31 : LD   1, 2(5) ;  Load function result
32 : LDC   2, 3(0) ;  Caller frame size
33 : SUB   5, 5, 2 ;  Pop back to caller
34 : SUB   4, 4, 2 ;  Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LDA  7, 87(0) ;  Skip ELSE block
37 : LD   1, 2(5) ;  Load parameter 'selector' into R1
38 : ADD  3, 1, 0 ;  Store left operand into temporary register
39 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
40 : ADD  2, 3, 0 ;  Restore left operand
41 : SUB  1, 2, 1 ;  left - right for equality check
42 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
43 : LDC  1, 0(0) ;  false
44 : LDA  7, 1(7) ;  skip setting true
45 : LDC  1, 1(0) ;  true
46 : JEQ  1, 61(0) ;  If condition is false, jump to ELSE
47 : LD   1, 1(5) ;  Load parameter 'n' into R1
48 : LDA 4, 3(5) ; Base of callee frame
49 : ST 1, 1(4) ; Store argument 0 in callee
50 : LDA 4, 3(5) ; Base of callee frame
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame
54 : LDA 7, 313(0) ; Call snowball
55 : LD   1, 2(5) ;  Load function result
56 : LDC   2, 3(0) ;  Caller frame size
57 : SUB   5, 5, 2 ;  Pop back to caller
58 : SUB   4, 4, 2 ;  Pop back to caller
59 : ST 1, 3(5) ; Store result into caller’s frame
60 : LDA  7, 87(0) ;  Skip ELSE block
61 : LD   1, 2(5) ;  Load parameter 'selector' into R1
62 : ADD  3, 1, 0 ;  Store left operand into temporary register
63 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
64 : ADD  2, 3, 0 ;  Restore left operand
65 : SUB  1, 2, 1 ;  left - right for equality check
66 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
67 : LDC  1, 0(0) ;  false
68 : LDA  7, 1(7) ;  skip setting true
69 : LDC  1, 1(0) ;  true
70 : JEQ  1, 85(0) ;  If condition is false, jump to ELSE
71 : LD   1, 1(5) ;  Load parameter 'n' into R1
72 : LDA 4, 3(5) ; Base of callee frame
73 : ST 1, 1(4) ; Store argument 0 in callee
74 : LDA 4, 3(5) ; Base of callee frame
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame
78 : LDA 7, 278(0) ; Call doBoth
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
90 : LD   1, 1(5) ;  Load parameter 'm' into R1
91 : ADD  3, 1, 0 ;  Store left operand into temporary register
92 : LD   1, 1(5) ;  Load parameter 'm' into R1
93 : ADD  3, 1, 0 ;  Store left operand into temporary register
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : ADD  2, 3, 0 ;  Restore left operand
96 : DIV  1, 2, 1 ;  R1 = left / right
97 : ADD  3, 1, 0 ;  Store left operand into temporary register
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : ADD  2, 3, 0 ;  Restore left operand
100 : MUL  1, 2, 1 ;  R1 = left * right
101 : ADD  2, 3, 0 ;  Restore left operand
102 : SUB  1, 2, 1 ;  R1 = left - right
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : SUB  1, 2, 1 ;  left - right for equality check
111 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
112 : LDC  1, 0(0) ;  false
113 : LDA  7, 1(7) ;  skip setting true
114 : LDC  1, 1(0) ;  true
115 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
116 : LD   1, 2(5) ;  Load parameter 'nR' into R1
117 : LDA  7, 159(0) ;  Skip ELSE block
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
121 : ADD  2, 3, 0 ;  Restore left operand
122 : DIV  1, 2, 1 ;  R1 = left / right
123 : LDA 4, 4(5) ; Base of callee frame
124 : ST 1, 1(4) ; Store argument 0 in callee
125 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
126 : ADD  3, 1, 0 ;  Store left operand into temporary register
127 : LD   1, 2(5) ;  Load parameter 'nR' into R1
128 : ADD  2, 3, 0 ;  Restore left operand
129 : MUL  1, 2, 1 ;  R1 = left * right
130 : ADD  3, 1, 0 ;  Store left operand into temporary register
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : LDA 4, 4(5) ; Base of callee frame
133 : ST 1, 1(4) ; Store argument 0 in callee
134 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
135 : LDA 4, 4(5) ; Base of callee frame
136 : ST 1, 2(4) ; Store argument 1 in callee
137 : LDA 4, 4(5) ; Base of callee frame
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 90(0) ; Call MOD
142 : LD   1, 3(5) ;  Load function result
143 : LDC   2, 4(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : SUB   4, 4, 2 ;  Pop back to caller
146 : ADD  2, 3, 0 ;  Restore left operand
147 : ADD  1, 2, 1 ;  R1 = left + right
148 : LDA 4, 4(5) ; Base of callee frame
149 : ST 1, 2(4) ; Store argument 1 in callee
150 : LDA 4, 4(5) ; Base of callee frame
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return in callee frame
153 : ADD 5, 4, 0 ; Push callee frame
154 : LDA 7, 106(0) ; Call reverseL
155 : LD   1, 3(5) ;  Load function result
156 : LDC   2, 4(0) ;  Caller frame size
157 : SUB   5, 5, 2 ;  Pop back to caller
158 : SUB   4, 4, 2 ;  Pop back to caller
159 : ST   1, 3(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
162 : LD   1, 1(5) ;  Load parameter 'n' into R1
163 : LDA 4, 4(5) ; Base of callee frame
164 : ST 1, 1(4) ; Store argument 0 in callee
165 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
166 : LDA 4, 4(5) ; Base of callee frame
167 : ST 1, 2(4) ; Store argument 1 in callee
168 : LDA 4, 4(5) ; Base of callee frame
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return in callee frame
171 : ADD 5, 4, 0 ; Push callee frame
172 : LDA 7, 106(0) ; Call reverseL
173 : LD   1, 3(5) ;  Load function result
174 : LDC   2, 4(0) ;  Caller frame size
175 : SUB   5, 5, 2 ;  Pop back to caller
176 : SUB   4, 4, 2 ;  Pop back to caller
177 : ST   1, 2(5) ;  Store function result into stack frame
178 : LD   6, 0(5) ;  Load return address
179 : LDA  7, 0(6) ;  Return to caller
180 : LD   1, 2(5) ;  Load parameter 'b' into R1
181 : LDA 4, 4(5) ; Base of callee frame
182 : ST 1, 1(4) ; Store argument 0 in callee
183 : LD   1, 1(5) ;  Load parameter 'a' into R1
184 : LDA 4, 4(5) ; Base of callee frame
185 : ST 1, 2(4) ; Store argument 1 in callee
186 : LDA 4, 4(5) ; Base of callee frame
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame
190 : LDA 7, 90(0) ; Call MOD
191 : LD   1, 3(5) ;  Load function result
192 : LDC   2, 4(0) ;  Caller frame size
193 : SUB   5, 5, 2 ;  Pop back to caller
194 : SUB   4, 4, 2 ;  Pop back to caller
195 : ADD  3, 1, 0 ;  Store left operand into temporary register
196 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
197 : ADD  2, 3, 0 ;  Restore left operand
198 : SUB  1, 2, 1 ;  left - right for equality check
199 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
200 : LDC  1, 0(0) ;  false
201 : LDA  7, 1(7) ;  skip setting true
202 : LDC  1, 1(0) ;  true
203 : ST   1, 3(5) ;  Store function result into stack frame
204 : LD   6, 0(5) ;  Load return address
205 : LDA  7, 0(6) ;  Return to caller
206 : LD   1, 1(5) ;  Load parameter 'i' into R1
207 : ADD  3, 1, 0 ;  Store left operand into temporary register
208 : LD   1, 2(5) ;  Load parameter 'n' into R1
209 : ADD  2, 3, 0 ;  Restore left operand
210 : SUB  1, 2, 1 ;  left - right for less-than check
211 : JLT  1, 2(7) ;  If R1 < 0, jump to true
212 : LDC  1, 0(0) ;  false
213 : LDA  7, 1(7) ;  skip setting true
214 : LDC  1, 1(0) ;  true
215 : JEQ  1, 254(0) ;  If condition is false, jump to ELSE
216 : LD   1, 1(5) ;  Load parameter 'i' into R1
217 : LDA 4, 4(5) ; Base of callee frame
218 : ST 1, 1(4) ; Store argument 0 in callee
219 : LD   1, 2(5) ;  Load parameter 'n' into R1
220 : LDA 4, 4(5) ; Base of callee frame
221 : ST 1, 2(4) ; Store argument 1 in callee
222 : LDA 4, 4(5) ; Base of callee frame
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame
226 : LDA 7, 180(0) ; Call divides
227 : LD   1, 3(5) ;  Load function result
228 : LDC   2, 4(0) ;  Caller frame size
229 : SUB   5, 5, 2 ;  Pop back to caller
230 : SUB   4, 4, 2 ;  Pop back to caller
231 : ADD  3, 1, 0 ;  Store left operand into temporary register
232 : LD   1, 1(5) ;  Load parameter 'i' into R1
233 : ADD  3, 1, 0 ;  Store left operand into temporary register
234 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
235 : ADD  2, 3, 0 ;  Restore left operand
236 : ADD  1, 2, 1 ;  R1 = left + right
237 : LDA 4, 4(5) ; Base of callee frame
238 : ST 1, 1(4) ; Store argument 0 in callee
239 : LD   1, 2(5) ;  Load parameter 'n' into R1
240 : LDA 4, 4(5) ; Base of callee frame
241 : ST 1, 2(4) ; Store argument 1 in callee
242 : LDA 4, 4(5) ; Base of callee frame
243 : LDA 6, 247(0) ; Return address
244 : ST 6, 0(4) ; Store return in callee frame
245 : ADD 5, 4, 0 ; Push callee frame
246 : LDA 7, 206(0) ; Call hasDivisorFrom
247 : LD   1, 3(5) ;  Load function result
248 : LDC   2, 4(0) ;  Caller frame size
249 : SUB   5, 5, 2 ;  Pop back to caller
250 : SUB   4, 4, 2 ;  Pop back to caller
251 : ADD  2, 3, 0 ;  Restore left operand
252 : ADD  1, 2, 1 ;  R1 = left OR right
253 : LDA  7, 255(0) ;  Skip ELSE block
254 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
255 : ST   1, 3(5) ;  Store function result into stack frame
256 : LD   6, 0(5) ;  Load return address
257 : LDA  7, 0(6) ;  Return to caller
258 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
259 : LDA 4, 4(5) ; Base of callee frame
260 : ST 1, 1(4) ; Store argument 0 in callee
261 : LD   1, 1(5) ;  Load parameter 'n' into R1
262 : LDA 4, 4(5) ; Base of callee frame
263 : ST 1, 2(4) ; Store argument 1 in callee
264 : LDA 4, 4(5) ; Base of callee frame
265 : LDA 6, 269(0) ; Return address
266 : ST 6, 0(4) ; Store return in callee frame
267 : ADD 5, 4, 0 ; Push callee frame
268 : LDA 7, 206(0) ; Call hasDivisorFrom
269 : LD   1, 3(5) ;  Load function result
270 : LDC   2, 4(0) ;  Caller frame size
271 : SUB   5, 5, 2 ;  Pop back to caller
272 : SUB   4, 4, 2 ;  Pop back to caller
273 : LDC  2, 1(0) ;  Load 1 into R2
274 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
275 : ST   1, 2(5) ;  Store function result into stack frame
276 : LD   6, 0(5) ;  Load return address
277 : LDA  7, 0(6) ;  Return to caller
278 : LD   1, 1(5) ;  Load parameter 'n' into R1
279 : LDA 4, 3(5) ; Base of callee frame
280 : ST 1, 1(4) ; Store argument 0 in callee
281 : LDA 4, 3(5) ; Base of callee frame
282 : LDA 6, 286(0) ; Return address
283 : ST 6, 0(4) ; Store return in callee frame
284 : ADD 5, 4, 0 ; Push callee frame
285 : LDA 7, 359(0) ; Call emirp
286 : LD   1, 2(5) ;  Load function result
287 : LDC   2, 3(0) ;  Caller frame size
288 : SUB   5, 5, 2 ;  Pop back to caller
289 : SUB   4, 4, 2 ;  Pop back to caller
290 : LDA 4, 3(5) ; Base of callee frame
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return addr in callee frame
293 : ADD 5, 4, 0 ; Push new frame
294 : LDA 7, 10(0) ; Call print
295 : LDC 2, 3(0) ; Caller frame size
296 : SUB 5, 5, 2 ; Pop frame
297 : ST   1, 2(5) ;  Store function result into stack frame
298 : LD   1, 1(5) ;  Load parameter 'n' into R1
299 : LDA 4, 3(5) ; Base of callee frame
300 : ST 1, 1(4) ; Store argument 0 in callee
301 : LDA 4, 3(5) ; Base of callee frame
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame
305 : LDA 7, 313(0) ; Call snowball
306 : LD   1, 2(5) ;  Load function result
307 : LDC   2, 3(0) ;  Caller frame size
308 : SUB   5, 5, 2 ;  Pop back to caller
309 : SUB   4, 4, 2 ;  Pop back to caller
310 : ST   1, 2(5) ;  Store function result into stack frame
311 : LD   6, 0(5) ;  Load return address
312 : LDA  7, 0(6) ;  Return to caller
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : LDA 4, 3(5) ; Base of callee frame
315 : ST 1, 1(4) ; Store argument 0 in callee
316 : LDA 4, 3(5) ; Base of callee frame
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return in callee frame
319 : ADD 5, 4, 0 ; Push callee frame
320 : LDA 7, 258(0) ; Call isPrime
321 : LD   1, 2(5) ;  Load function result
322 : LDC   2, 3(0) ;  Caller frame size
323 : SUB   5, 5, 2 ;  Pop back to caller
324 : SUB   4, 4, 2 ;  Pop back to caller
325 : ADD  3, 1, 0 ;  Store left operand into temporary register
326 : LD   1, 1(5) ;  Load parameter 'n' into R1
327 : ADD  3, 1, 0 ;  Store left operand into temporary register
328 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
329 : ADD  2, 3, 0 ;  Restore left operand
330 : SUB  1, 2, 1 ;  left - right for less-than check
331 : JLT  1, 2(7) ;  If R1 < 0, jump to true
332 : LDC  1, 0(0) ;  false
333 : LDA  7, 1(7) ;  skip setting true
334 : LDC  1, 1(0) ;  true
335 : JEQ  1, 338(0) ;  If condition is false, jump to ELSE
336 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
337 : LDA  7, 354(0) ;  Skip ELSE block
338 : LD   1, 1(5) ;  Load parameter 'n' into R1
339 : ADD  3, 1, 0 ;  Store left operand into temporary register
340 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
341 : ADD  2, 3, 0 ;  Restore left operand
342 : DIV  1, 2, 1 ;  R1 = left / right
343 : LDA 4, 3(5) ; Base of callee frame
344 : ST 1, 1(4) ; Store argument 0 in callee
345 : LDA 4, 3(5) ; Base of callee frame
346 : LDA 6, 350(0) ; Return address
347 : ST 6, 0(4) ; Store return in callee frame
348 : ADD 5, 4, 0 ; Push callee frame
349 : LDA 7, 258(0) ; Call isPrime
350 : LD   1, 2(5) ;  Load function result
351 : LDC   2, 3(0) ;  Caller frame size
352 : SUB   5, 5, 2 ;  Pop back to caller
353 : SUB   4, 4, 2 ;  Pop back to caller
354 : ADD  2, 3, 0 ;  Restore left operand
355 : MUL  1, 2, 1 ;  R1 = left AND right
356 : ST   1, 2(5) ;  Store function result into stack frame
357 : LD   6, 0(5) ;  Load return address
358 : LDA  7, 0(6) ;  Return to caller
359 : LD   1, 1(5) ;  Load parameter 'n' into R1
360 : LDA 4, 3(5) ; Base of callee frame
361 : ST 1, 1(4) ; Store argument 0 in callee
362 : LDA 4, 3(5) ; Base of callee frame
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return in callee frame
365 : ADD 5, 4, 0 ; Push callee frame
366 : LDA 7, 258(0) ; Call isPrime
367 : LD   1, 2(5) ;  Load function result
368 : LDC   2, 3(0) ;  Caller frame size
369 : SUB   5, 5, 2 ;  Pop back to caller
370 : SUB   4, 4, 2 ;  Pop back to caller
371 : ADD  3, 1, 0 ;  Store left operand into temporary register
372 : LD   1, 1(5) ;  Load parameter 'n' into R1
373 : LDA 4, 3(5) ; Base of callee frame
374 : ST 1, 1(4) ; Store argument 0 in callee
375 : LDA 4, 3(5) ; Base of callee frame
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame
379 : LDA 7, 162(0) ; Call reverse
380 : LD   1, 2(5) ;  Load function result
381 : LDC   2, 3(0) ;  Caller frame size
382 : SUB   5, 5, 2 ;  Pop back to caller
383 : SUB   4, 4, 2 ;  Pop back to caller
384 : LDA 4, 3(5) ; Base of callee frame
385 : ST 1, 1(4) ; Store argument 0 in callee
386 : LDA 4, 3(5) ; Base of callee frame
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return in callee frame
389 : ADD 5, 4, 0 ; Push callee frame
390 : LDA 7, 258(0) ; Call isPrime
391 : LD   1, 2(5) ;  Load function result
392 : LDC   2, 3(0) ;  Caller frame size
393 : SUB   5, 5, 2 ;  Pop back to caller
394 : SUB   4, 4, 2 ;  Pop back to caller
395 : ADD  2, 3, 0 ;  Restore left operand
396 : MUL  1, 2, 1 ;  R1 = left AND right
397 : ST   1, 2(5) ;  Store function result into stack frame
398 : LD   6, 0(5) ;  Load return address
399 : LDA  7, 0(6) ;  Return to caller
