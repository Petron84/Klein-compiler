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
11 : LDC  4, 1(0) ;  Top of caller frame
12 : LDA 4, 3(5) ; Base of callee frame
13 : LD   1, 1(5) ;  Load parameter 'x' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 517(0) ; Call circularPrimesTo
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD   1, 2(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 2(5) ;  Load parameter 'den' into R1
28 : ST   1, 3(4) ;  Store right operand result into return value slot
29 : LD   1, 1(5) ;  Load parameter 'num' into R1
30 : ADD  2, 1, 0 ;  Move left operand to register 2
31 : LD   1, 3(4) ;  Return right operand back into register 1
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDA  7, 58(0) ;  Skip ELSE block
40 : LDA 4, 4(5) ; Base of callee frame
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : ST   1, 3(4) ;  Store right operand result into return value slot
43 : LD   1, 1(5) ;  Load parameter 'num' into R1
44 : ADD  2, 1, 0 ;  Move left operand to register 2
45 : LD   1, 3(4) ;  Return right operand back into register 1
46 : SUB  1, 2, 1 ;  R1 = left - right
47 : ST 1, 1(4) ; Store argument 0 in callee
48 : LD   1, 2(5) ;  Load parameter 'den' into R1
49 : ST 1, 2(4) ; Store argument 1 in callee
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
61 : LDA 4, 4(5) ; Base of callee frame
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD   1, 1(5) ;  Load parameter 'a' into R1
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 27(0) ; Call mod
70 : LD   1, 3(5) ;  Load function result
71 : LDC   2, 4(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : ADD  2, 1, 0 ;  Move left operand to register 2
75 : LDC  1, 0(0) ;  Load integer-literal value into register 1
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ST   1, 3(4) ;  Store right operand result into return value slot
86 : LD   1, 1(5) ;  Load parameter 'i' into R1
87 : ADD  2, 1, 0 ;  Move left operand to register 2
88 : LD   1, 3(4) ;  Return right operand back into register 1
89 : SUB  1, 2, 1 ;  left - right for less-than check
90 : JLT  1, 2(7) ;  If R1 < 0, jump to true
91 : LDC  1, 0(0) ;  false
92 : LDA  7, 1(7) ;  skip setting true
93 : LDC  1, 1(0) ;  true
94 : JEQ  1, 129(0) ;  If condition is false, jump to ELSE
95 : LDA 4, 4(5) ; Base of callee frame
96 : LD   1, 1(5) ;  Load parameter 'i' into R1
97 : ST 1, 1(4) ; Store argument 0 in callee
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : ST 1, 2(4) ; Store argument 1 in callee
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return in callee frame
102 : ADD 5, 4, 0 ; Push callee frame
103 : LDA 7, 61(0) ; Call divides
104 : LD   1, 3(5) ;  Load function result
105 : LDC   2, 4(0) ;  Caller frame size
106 : SUB   5, 5, 2 ;  Pop back to caller
107 : SUB   4, 4, 2 ;  Pop back to caller
108 : ADD  2, 1, 0 ;  Move left operand to register 2
109 : LDA 4, 4(5) ; Base of callee frame
110 : LDC  1, 1(0) ;  Load integer-literal value into register 1
111 : ST   1, 3(4) ;  Store right operand result into return value slot
112 : LD   1, 1(5) ;  Load parameter 'i' into R1
113 : ADD  2, 1, 0 ;  Move left operand to register 2
114 : LD   1, 3(4) ;  Return right operand back into register 1
115 : ADD  1, 2, 1 ;  R1 = left + right
116 : ST 1, 1(4) ; Store argument 0 in callee
117 : LD   1, 2(5) ;  Load parameter 'n' into R1
118 : ST 1, 2(4) ; Store argument 1 in callee
119 : LDA 6, 123(0) ; Return address
120 : ST 6, 0(4) ; Store return in callee frame
121 : ADD 5, 4, 0 ; Push callee frame
122 : LDA 7, 84(0) ; Call hasDivisorFrom
123 : LD   1, 3(5) ;  Load function result
124 : LDC   2, 4(0) ;  Caller frame size
125 : SUB   5, 5, 2 ;  Pop back to caller
126 : SUB   4, 4, 2 ;  Pop back to caller
127 : ADD  1, 2, 1 ;  R1 = left OR right
128 : LDA  7, 130(0) ;  Skip ELSE block
129 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
130 : ST   1, 3(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
133 : LDA 4, 4(5) ; Base of callee frame
134 : LDC  1, 2(0) ;  Load integer-literal value into register 1
135 : ST 1, 1(4) ; Store argument 0 in callee
136 : LD   1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 84(0) ; Call hasDivisorFrom
142 : LD   1, 3(5) ;  Load function result
143 : LDC   2, 4(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : SUB   4, 4, 2 ;  Pop back to caller
146 : LDC  2, 1(0) ;  Load 1 into R2
147 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
148 : ST   1, 2(5) ;  Store function result into stack frame
149 : LD   6, 0(5) ;  Load return address
150 : LDA  7, 0(6) ;  Return to caller
151 : LDC  1, 10(0) ;  Load integer-literal value into register 1
152 : ST   1, 3(4) ;  Store right operand result into return value slot
153 : LD   1, 1(5) ;  Load parameter 'x' into R1
154 : ADD  2, 1, 0 ;  Move left operand to register 2
155 : LD   1, 3(4) ;  Return right operand back into register 1
156 : DIV  1, 2, 1 ;  R1 = left / right
157 : ADD  2, 1, 0 ;  Move left operand to register 2
158 : LDC  1, 0(0) ;  Load integer-literal value into register 1
159 : SUB  1, 2, 1 ;  left - right for equality check
160 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
161 : LDC  1, 0(0) ;  false
162 : LDA  7, 1(7) ;  skip setting true
163 : LDC  1, 1(0) ;  true
164 : JEQ  1, 167(0) ;  If condition is false, jump to ELSE
165 : LD   1, 2(5) ;  Load parameter 'y' into R1
166 : LDA  7, 190(0) ;  Skip ELSE block
167 : LDA 4, 4(5) ; Base of callee frame
168 : LDC  1, 10(0) ;  Load integer-literal value into register 1
169 : ST   1, 3(4) ;  Store right operand result into return value slot
170 : LD   1, 1(5) ;  Load parameter 'x' into R1
171 : ADD  2, 1, 0 ;  Move left operand to register 2
172 : LD   1, 3(4) ;  Return right operand back into register 1
173 : DIV  1, 2, 1 ;  R1 = left / right
174 : ST 1, 1(4) ; Store argument 0 in callee
175 : LDC  1, 1(0) ;  Load integer-literal value into register 1
176 : ST   1, 3(4) ;  Store right operand result into return value slot
177 : LD   1, 2(5) ;  Load parameter 'y' into R1
178 : ADD  2, 1, 0 ;  Move left operand to register 2
179 : LD   1, 3(4) ;  Return right operand back into register 1
180 : ADD  1, 2, 1 ;  R1 = left + right
181 : ST 1, 2(4) ; Store argument 1 in callee
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 151(0) ; Call log10Helper
186 : LD   1, 3(5) ;  Load function result
187 : LDC   2, 4(0) ;  Caller frame size
188 : SUB   5, 5, 2 ;  Pop back to caller
189 : SUB   4, 4, 2 ;  Pop back to caller
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
193 : LDA 4, 4(5) ; Base of callee frame
194 : LD   1, 1(5) ;  Load parameter 'x' into R1
195 : ST 1, 1(4) ; Store argument 0 in callee
196 : LDC  1, 0(0) ;  Load integer-literal value into register 1
197 : ST 1, 2(4) ; Store argument 1 in callee
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame
201 : LDA 7, 151(0) ; Call log10Helper
202 : LD   1, 3(5) ;  Load function result
203 : LDC   2, 4(0) ;  Caller frame size
204 : SUB   5, 5, 2 ;  Pop back to caller
205 : SUB   4, 4, 2 ;  Pop back to caller
206 : ST   1, 2(5) ;  Store function result into stack frame
207 : LD   6, 0(5) ;  Load return address
208 : LDA  7, 0(6) ;  Return to caller
209 : LDC  1, 0(0) ;  Load integer-literal value into register 1
210 : ST   1, 3(4) ;  Store right operand result into return value slot
211 : LD   1, 2(5) ;  Load parameter 'power' into R1
212 : ADD  2, 1, 0 ;  Move left operand to register 2
213 : LD   1, 3(4) ;  Return right operand back into register 1
214 : SUB  1, 2, 1 ;  left - right for equality check
215 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
216 : LDC  1, 0(0) ;  false
217 : LDA  7, 1(7) ;  skip setting true
218 : LDC  1, 1(0) ;  true
219 : JEQ  1, 222(0) ;  If condition is false, jump to ELSE
220 : LDC  1, 1(0) ;  Load integer-literal value into register 1
221 : LDA  7, 260(0) ;  Skip ELSE block
222 : LDC  1, 1(0) ;  Load integer-literal value into register 1
223 : ST   1, 3(4) ;  Store right operand result into return value slot
224 : LD   1, 2(5) ;  Load parameter 'power' into R1
225 : ADD  2, 1, 0 ;  Move left operand to register 2
226 : LD   1, 3(4) ;  Return right operand back into register 1
227 : SUB  1, 2, 1 ;  left - right for equality check
228 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
229 : LDC  1, 0(0) ;  false
230 : LDA  7, 1(7) ;  skip setting true
231 : LDC  1, 1(0) ;  true
232 : JEQ  1, 235(0) ;  If condition is false, jump to ELSE
233 : LD   1, 3(5) ;  Load parameter 'total' into R1
234 : LDA  7, 260(0) ;  Skip ELSE block
235 : LDA 4, 5(5) ; Base of callee frame
236 : LD   1, 1(5) ;  Load parameter 'base' into R1
237 : ST 1, 1(4) ; Store argument 0 in callee
238 : LDC  1, 1(0) ;  Load integer-literal value into register 1
239 : ST   1, 3(4) ;  Store right operand result into return value slot
240 : LD   1, 2(5) ;  Load parameter 'power' into R1
241 : ADD  2, 1, 0 ;  Move left operand to register 2
242 : LD   1, 3(4) ;  Return right operand back into register 1
243 : SUB  1, 2, 1 ;  R1 = left - right
244 : ST 1, 2(4) ; Store argument 1 in callee
245 : LD   1, 3(5) ;  Load parameter 'total' into R1
246 : ST   1, 3(4) ;  Store right operand result into return value slot
247 : LD   1, 1(5) ;  Load parameter 'base' into R1
248 : ADD  2, 1, 0 ;  Move left operand to register 2
249 : LD   1, 3(4) ;  Return right operand back into register 1
250 : MUL  1, 2, 1 ;  R1 = left * right
251 : ST 1, 3(4) ; Store argument 2 in callee
252 : LDA 6, 256(0) ; Return address
253 : ST 6, 0(4) ; Store return in callee frame
254 : ADD 5, 4, 0 ; Push callee frame
255 : LDA 7, 209(0) ; Call powHelper
256 : LD   1, 4(5) ;  Load function result
257 : LDC   2, 5(0) ;  Caller frame size
258 : SUB   5, 5, 2 ;  Pop back to caller
259 : SUB   4, 4, 2 ;  Pop back to caller
260 : ST   1, 4(5) ;  Store function result into stack frame
261 : LD   6, 0(5) ;  Load return address
262 : LDA  7, 0(6) ;  Return to caller
263 : LDA 4, 5(5) ; Base of callee frame
264 : LD   1, 1(5) ;  Load parameter 'x' into R1
265 : ST 1, 1(4) ; Store argument 0 in callee
266 : LD   1, 2(5) ;  Load parameter 'y' into R1
267 : ST 1, 2(4) ; Store argument 1 in callee
268 : LD   1, 1(5) ;  Load parameter 'x' into R1
269 : ST 1, 3(4) ; Store argument 2 in callee
270 : LDA 6, 274(0) ; Return address
271 : ST 6, 0(4) ; Store return in callee frame
272 : ADD 5, 4, 0 ; Push callee frame
273 : LDA 7, 209(0) ; Call powHelper
274 : LD   1, 4(5) ;  Load function result
275 : LDC   2, 5(0) ;  Caller frame size
276 : SUB   5, 5, 2 ;  Pop back to caller
277 : SUB   4, 4, 2 ;  Pop back to caller
278 : ST   1, 3(5) ;  Store function result into stack frame
279 : LD   6, 0(5) ;  Load return address
280 : LDA  7, 0(6) ;  Return to caller
281 : LDC  1, 10(0) ;  Load integer-literal value into register 1
282 : ST   1, 3(4) ;  Store right operand result into return value slot
283 : LD   1, 1(5) ;  Load parameter 'x' into R1
284 : ADD  2, 1, 0 ;  Move left operand to register 2
285 : LD   1, 3(4) ;  Return right operand back into register 1
286 : DIV  1, 2, 1 ;  R1 = left / right
287 : ADD  2, 1, 0 ;  Move left operand to register 2
288 : LDA 4, 4(5) ; Base of callee frame
289 : LD   1, 1(5) ;  Load parameter 'x' into R1
290 : ST 1, 1(4) ; Store argument 0 in callee
291 : LDC  1, 10(0) ;  Load integer-literal value into register 1
292 : ST 1, 2(4) ; Store argument 1 in callee
293 : LDA 6, 297(0) ; Return address
294 : ST 6, 0(4) ; Store return in callee frame
295 : ADD 5, 4, 0 ; Push callee frame
296 : LDA 7, 27(0) ; Call mod
297 : LD   1, 3(5) ;  Load function result
298 : LDC   2, 4(0) ;  Caller frame size
299 : SUB   5, 5, 2 ;  Pop back to caller
300 : SUB   4, 4, 2 ;  Pop back to caller
301 : ADD  2, 1, 0 ;  Move left operand to register 2
302 : LDA 4, 4(5) ; Base of callee frame
303 : LDC  1, 10(0) ;  Load integer-literal value into register 1
304 : ST 1, 1(4) ; Store argument 0 in callee
305 : LDA 4, 3(5) ; Base of callee frame
306 : LD   1, 1(5) ;  Load parameter 'x' into R1
307 : ST 1, 1(4) ; Store argument 0 in callee
308 : LDA 6, 312(0) ; Return address
309 : ST 6, 0(4) ; Store return in callee frame
310 : ADD 5, 4, 0 ; Push callee frame
311 : LDA 7, 193(0) ; Call log10
312 : LD   1, 2(5) ;  Load function result
313 : LDC   2, 3(0) ;  Caller frame size
314 : SUB   5, 5, 2 ;  Pop back to caller
315 : SUB   4, 4, 2 ;  Pop back to caller
316 : ST 1, 2(4) ; Store argument 1 in callee
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return in callee frame
319 : ADD 5, 4, 0 ; Push callee frame
320 : LDA 7, 263(0) ; Call pow
321 : LD   1, 3(5) ;  Load function result
322 : LDC   2, 4(0) ;  Caller frame size
323 : SUB   5, 5, 2 ;  Pop back to caller
324 : SUB   4, 4, 2 ;  Pop back to caller
325 : MUL  1, 2, 1 ;  R1 = left * right
326 : ADD  1, 2, 1 ;  R1 = left + right
327 : ST   1, 2(5) ;  Store function result into stack frame
328 : LD   6, 0(5) ;  Load return address
329 : LDA  7, 0(6) ;  Return to caller
330 : LD   1, 1(5) ;  Load parameter 'x' into R1
331 : LDA 4, 3(5) ; Base of callee frame
332 : LDA 6, 336(0) ; Return address
333 : ST 6, 0(4) ; Store return addr in callee frame
334 : ADD 5, 4, 0 ; Push new frame
335 : LDA 7, 8(0) ; Call print
336 : LDC 2, 3(0) ; Caller frame size
337 : SUB 5, 5, 2 ; Pop frame
338 : ST   1, 2(5) ;  Store function result into stack frame
339 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
340 : ST   1, 2(5) ;  Store function result into stack frame
341 : LD   6, 0(5) ;  Load return address
342 : LDA  7, 0(6) ;  Return to caller
343 : LDC  1, 0(0) ;  Load integer-literal value into register 1
344 : ST   1, 3(4) ;  Store right operand result into return value slot
345 : LD   1, 2(5) ;  Load parameter 'turns' into R1
346 : ADD  2, 1, 0 ;  Move left operand to register 2
347 : LD   1, 3(4) ;  Return right operand back into register 1
348 : SUB  1, 2, 1 ;  left - right for equality check
349 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
350 : LDC  1, 0(0) ;  false
351 : LDA  7, 1(7) ;  skip setting true
352 : LDC  1, 1(0) ;  true
353 : JEQ  1, 356(0) ;  If condition is false, jump to ELSE
354 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
355 : LDA  7, 397(0) ;  Skip ELSE block
356 : LDA 4, 3(5) ; Base of callee frame
357 : LD   1, 1(5) ;  Load parameter 'x' into R1
358 : ST 1, 1(4) ; Store argument 0 in callee
359 : LDA 6, 363(0) ; Return address
360 : ST 6, 0(4) ; Store return in callee frame
361 : ADD 5, 4, 0 ; Push callee frame
362 : LDA 7, 133(0) ; Call isPrime
363 : LD   1, 2(5) ;  Load function result
364 : LDC   2, 3(0) ;  Caller frame size
365 : SUB   5, 5, 2 ;  Pop back to caller
366 : SUB   4, 4, 2 ;  Pop back to caller
367 : ADD  2, 1, 0 ;  Move left operand to register 2
368 : LDA 4, 4(5) ; Base of callee frame
369 : LDA 4, 3(5) ; Base of callee frame
370 : LD   1, 1(5) ;  Load parameter 'x' into R1
371 : ST 1, 1(4) ; Store argument 0 in callee
372 : LDA 6, 376(0) ; Return address
373 : ST 6, 0(4) ; Store return in callee frame
374 : ADD 5, 4, 0 ; Push callee frame
375 : LDA 7, 281(0) ; Call rotate
376 : LD   1, 2(5) ;  Load function result
377 : LDC   2, 3(0) ;  Caller frame size
378 : SUB   5, 5, 2 ;  Pop back to caller
379 : SUB   4, 4, 2 ;  Pop back to caller
380 : ST 1, 1(4) ; Store argument 0 in callee
381 : LDC  1, 1(0) ;  Load integer-literal value into register 1
382 : ST   1, 3(4) ;  Store right operand result into return value slot
383 : LD   1, 2(5) ;  Load parameter 'turns' into R1
384 : ADD  2, 1, 0 ;  Move left operand to register 2
385 : LD   1, 3(4) ;  Return right operand back into register 1
386 : SUB  1, 2, 1 ;  R1 = left - right
387 : ST 1, 2(4) ; Store argument 1 in callee
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(4) ; Store return in callee frame
390 : ADD 5, 4, 0 ; Push callee frame
391 : LDA 7, 343(0) ; Call isCircularPrimeHelper
392 : LD   1, 3(5) ;  Load function result
393 : LDC   2, 4(0) ;  Caller frame size
394 : SUB   5, 5, 2 ;  Pop back to caller
395 : SUB   4, 4, 2 ;  Pop back to caller
396 : MUL  1, 2, 1 ;  R1 = left AND right
397 : ST   1, 3(5) ;  Store function result into stack frame
398 : LD   6, 0(5) ;  Load return address
399 : LDA  7, 0(6) ;  Return to caller
400 : LDA 4, 4(5) ; Base of callee frame
401 : LD   1, 1(5) ;  Load parameter 'x' into R1
402 : ST 1, 1(4) ; Store argument 0 in callee
403 : LDA 4, 3(5) ; Base of callee frame
404 : LD   1, 1(5) ;  Load parameter 'x' into R1
405 : ST 1, 1(4) ; Store argument 0 in callee
406 : LDA 6, 410(0) ; Return address
407 : ST 6, 0(4) ; Store return in callee frame
408 : ADD 5, 4, 0 ; Push callee frame
409 : LDA 7, 193(0) ; Call log10
410 : LD   1, 2(5) ;  Load function result
411 : LDC   2, 3(0) ;  Caller frame size
412 : SUB   5, 5, 2 ;  Pop back to caller
413 : SUB   4, 4, 2 ;  Pop back to caller
414 : ADD  2, 1, 0 ;  Move left operand to register 2
415 : LDC  1, 1(0) ;  Load integer-literal value into register 1
416 : ADD  1, 2, 1 ;  R1 = left + right
417 : ST 1, 2(4) ; Store argument 1 in callee
418 : LDA 6, 422(0) ; Return address
419 : ST 6, 0(4) ; Store return in callee frame
420 : ADD 5, 4, 0 ; Push callee frame
421 : LDA 7, 343(0) ; Call isCircularPrimeHelper
422 : LD   1, 3(5) ;  Load function result
423 : LDC   2, 4(0) ;  Caller frame size
424 : SUB   5, 5, 2 ;  Pop back to caller
425 : SUB   4, 4, 2 ;  Pop back to caller
426 : JEQ  1, 439(0) ;  If condition is false, jump to ELSE
427 : LDA 4, 3(5) ; Base of callee frame
428 : LD   1, 1(5) ;  Load parameter 'x' into R1
429 : ST 1, 1(4) ; Store argument 0 in callee
430 : LDA 6, 434(0) ; Return address
431 : ST 6, 0(4) ; Store return in callee frame
432 : ADD 5, 4, 0 ; Push callee frame
433 : LDA 7, 330(0) ; Call report
434 : LD   1, 2(5) ;  Load function result
435 : LDC   2, 3(0) ;  Caller frame size
436 : SUB   5, 5, 2 ;  Pop back to caller
437 : SUB   4, 4, 2 ;  Pop back to caller
438 : LDA  7, 440(0) ;  Skip ELSE block
439 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
440 : ST   1, 2(5) ;  Store function result into stack frame
441 : LD   6, 0(5) ;  Load return address
442 : LDA  7, 0(6) ;  Return to caller
443 : LD   1, 1(5) ;  Load parameter 'top' into R1
444 : ST   1, 3(4) ;  Store right operand result into return value slot
445 : LD   1, 2(5) ;  Load parameter 'x' into R1
446 : ADD  2, 1, 0 ;  Move left operand to register 2
447 : LD   1, 3(4) ;  Return right operand back into register 1
448 : SUB  1, 2, 1 ;  left - right for less-than check
449 : JLT  1, 2(7) ;  If R1 < 0, jump to true
450 : LDC  1, 0(0) ;  false
451 : LDA  7, 1(7) ;  skip setting true
452 : LDC  1, 1(0) ;  true
453 : JEQ  1, 513(0) ;  If condition is false, jump to ELSE
454 : LDA 4, 3(5) ; Base of callee frame
455 : LD   1, 2(5) ;  Load parameter 'x' into R1
456 : ST 1, 1(4) ; Store argument 0 in callee
457 : LDA 6, 461(0) ; Return address
458 : ST 6, 0(4) ; Store return in callee frame
459 : ADD 5, 4, 0 ; Push callee frame
460 : LDA 7, 400(0) ; Call isCircularPrime
461 : LD   1, 2(5) ;  Load function result
462 : LDC   2, 3(0) ;  Caller frame size
463 : SUB   5, 5, 2 ;  Pop back to caller
464 : SUB   4, 4, 2 ;  Pop back to caller
465 : JEQ  1, 492(0) ;  If condition is false, jump to ELSE
466 : LDA 4, 5(5) ; Base of callee frame
467 : LD   1, 1(5) ;  Load parameter 'top' into R1
468 : ST 1, 1(4) ; Store argument 0 in callee
469 : LDC  1, 1(0) ;  Load integer-literal value into register 1
470 : ST   1, 3(4) ;  Store right operand result into return value slot
471 : LD   1, 2(5) ;  Load parameter 'x' into R1
472 : ADD  2, 1, 0 ;  Move left operand to register 2
473 : LD   1, 3(4) ;  Return right operand back into register 1
474 : ADD  1, 2, 1 ;  R1 = left + right
475 : ST 1, 2(4) ; Store argument 1 in callee
476 : LDC  1, 1(0) ;  Load integer-literal value into register 1
477 : ST   1, 3(4) ;  Store right operand result into return value slot
478 : LD   1, 3(5) ;  Load parameter 'count' into R1
479 : ADD  2, 1, 0 ;  Move left operand to register 2
480 : LD   1, 3(4) ;  Return right operand back into register 1
481 : ADD  1, 2, 1 ;  R1 = left + right
482 : ST 1, 3(4) ; Store argument 2 in callee
483 : LDA 6, 487(0) ; Return address
484 : ST 6, 0(4) ; Store return in callee frame
485 : ADD 5, 4, 0 ; Push callee frame
486 : LDA 7, 443(0) ; Call circularPrimesToHelper
487 : LD   1, 4(5) ;  Load function result
488 : LDC   2, 5(0) ;  Caller frame size
489 : SUB   5, 5, 2 ;  Pop back to caller
490 : SUB   4, 4, 2 ;  Pop back to caller
491 : LDA  7, 512(0) ;  Skip ELSE block
492 : LDA 4, 5(5) ; Base of callee frame
493 : LD   1, 1(5) ;  Load parameter 'top' into R1
494 : ST 1, 1(4) ; Store argument 0 in callee
495 : LDC  1, 1(0) ;  Load integer-literal value into register 1
496 : ST   1, 3(4) ;  Store right operand result into return value slot
497 : LD   1, 2(5) ;  Load parameter 'x' into R1
498 : ADD  2, 1, 0 ;  Move left operand to register 2
499 : LD   1, 3(4) ;  Return right operand back into register 1
500 : ADD  1, 2, 1 ;  R1 = left + right
501 : ST 1, 2(4) ; Store argument 1 in callee
502 : LD   1, 3(5) ;  Load parameter 'count' into R1
503 : ST 1, 3(4) ; Store argument 2 in callee
504 : LDA 6, 508(0) ; Return address
505 : ST 6, 0(4) ; Store return in callee frame
506 : ADD 5, 4, 0 ; Push callee frame
507 : LDA 7, 443(0) ; Call circularPrimesToHelper
508 : LD   1, 4(5) ;  Load function result
509 : LDC   2, 5(0) ;  Caller frame size
510 : SUB   5, 5, 2 ;  Pop back to caller
511 : SUB   4, 4, 2 ;  Pop back to caller
512 : LDA  7, 514(0) ;  Skip ELSE block
513 : LD   1, 3(5) ;  Load parameter 'count' into R1
514 : ST   1, 4(5) ;  Store function result into stack frame
515 : LD   6, 0(5) ;  Load return address
516 : LDA  7, 0(6) ;  Return to caller
517 : LDA 4, 5(5) ; Base of callee frame
518 : LDC  1, 1(0) ;  Load integer-literal value into register 1
519 : ST   1, 3(4) ;  Store right operand result into return value slot
520 : LD   1, 1(5) ;  Load parameter 'x' into R1
521 : ADD  2, 1, 0 ;  Move left operand to register 2
522 : LD   1, 3(4) ;  Return right operand back into register 1
523 : ADD  1, 2, 1 ;  R1 = left + right
524 : ST 1, 1(4) ; Store argument 0 in callee
525 : LDC  1, 2(0) ;  Load integer-literal value into register 1
526 : ST 1, 2(4) ; Store argument 1 in callee
527 : LDC  1, 0(0) ;  Load integer-literal value into register 1
528 : ST 1, 3(4) ; Store argument 2 in callee
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return in callee frame
531 : ADD 5, 4, 0 ; Push callee frame
532 : LDA 7, 443(0) ; Call circularPrimesToHelper
533 : LD   1, 4(5) ;  Load function result
534 : LDC   2, 5(0) ;  Caller frame size
535 : SUB   5, 5, 2 ;  Pop back to caller
536 : SUB   4, 4, 2 ;  Pop back to caller
537 : ST   1, 2(5) ;  Store function result into stack frame
538 : LD   6, 0(5) ;  Load return address
539 : LDA  7, 0(6) ;  Return to caller
