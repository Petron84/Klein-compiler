0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 3(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'x' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 505(0) ; Call circularPrimesTo
18 : LD   1, 2(5) ;  Load function result
19 : LDC   2, 3(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'num' into R1
27 : ADD  3, 1, 0 ;  Store left operand into temporary register
28 : LD   1, 2(5) ;  Load parameter 'den' into R1
29 : ADD  2, 3, 0 ;  Restore left operand
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 3(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : LDA  7, 55(0) ;  Skip ELSE block
38 : LDA 4, 4(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : ADD  3, 1, 0 ;  Store left operand into temporary register
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : ADD  2, 3, 0 ;  Restore left operand
43 : SUB  1, 2, 1 ;  R1 = left - right
44 : ST 1, 1(4) ; Store argument 0 in callee
45 : LD   1, 2(5) ;  Load parameter 'den' into R1
46 : ST 1, 2(4) ; Store argument 1 in callee
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return in callee frame
49 : ADD 5, 4, 0 ; Push callee frame
50 : LDA 7, 26(0) ; Call mod
51 : LD   1, 3(5) ;  Load function result
52 : LDC   2, 4(0) ;  Caller frame size
53 : SUB   5, 5, 2 ;  Pop back to caller
54 : SUB   4, 4, 2 ;  Pop back to caller
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LDA 4, 4(5) ; Base of callee frame
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 1(4) ; Store argument 0 in callee
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : ST 1, 2(4) ; Store argument 1 in callee
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 26(0) ; Call mod
67 : LD   1, 3(5) ;  Load function result
68 : LDC   2, 4(0) ;  Caller frame size
69 : SUB   5, 5, 2 ;  Pop back to caller
70 : SUB   4, 4, 2 ;  Pop back to caller
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : SUB  1, 2, 1 ;  left - right for equality check
75 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
76 : LDC  1, 0(0) ;  false
77 : LDA  7, 1(7) ;  skip setting true
78 : LDC  1, 1(0) ;  true
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   6, 0(5) ;  Load return address
81 : LDA  7, 0(6) ;  Return to caller
82 : LD   1, 1(5) ;  Load parameter 'i' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : SUB  1, 2, 1 ;  left - right for less-than check
87 : JLT  1, 3(7) ;  If R1 < 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 126(0) ;  If condition is false, jump to ELSE
92 : LDA 4, 4(5) ; Base of callee frame
93 : LD   1, 1(5) ;  Load parameter 'i' into R1
94 : ST 1, 1(4) ; Store argument 0 in callee
95 : LD   1, 2(5) ;  Load parameter 'n' into R1
96 : ST 1, 2(4) ; Store argument 1 in callee
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(4) ; Store return in callee frame
99 : ADD 5, 4, 0 ; Push callee frame
100 : LDA 7, 58(0) ; Call divides
101 : LD   1, 3(5) ;  Load function result
102 : LDC   2, 4(0) ;  Caller frame size
103 : SUB   5, 5, 2 ;  Pop back to caller
104 : SUB   4, 4, 2 ;  Pop back to caller
105 : ADD  3, 1, 0 ;  Store left operand into temporary register
106 : LDA 4, 4(5) ; Base of callee frame
107 : LD   1, 1(5) ;  Load parameter 'i' into R1
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
110 : ADD  2, 3, 0 ;  Restore left operand
111 : ADD  1, 2, 1 ;  R1 = left + right
112 : ST 1, 1(4) ; Store argument 0 in callee
113 : LD   1, 2(5) ;  Load parameter 'n' into R1
114 : ST 1, 2(4) ; Store argument 1 in callee
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(4) ; Store return in callee frame
117 : ADD 5, 4, 0 ; Push callee frame
118 : LDA 7, 82(0) ; Call hasDivisorFrom
119 : LD   1, 3(5) ;  Load function result
120 : LDC   2, 4(0) ;  Caller frame size
121 : SUB   5, 5, 2 ;  Pop back to caller
122 : SUB   4, 4, 2 ;  Pop back to caller
123 : ADD  2, 3, 0 ;  Restore left operand
124 : ADD  1, 2, 1 ;  R1 = left OR right
125 : LDA  7, 127(0) ;  Skip ELSE block
126 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
127 : ST   1, 3(5) ;  Store function result into stack frame
128 : LD   6, 0(5) ;  Load return address
129 : LDA  7, 0(6) ;  Return to caller
130 : LDA 4, 3(5) ; Base of callee frame
131 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 2(4) ; Store argument 1 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 82(0) ; Call hasDivisorFrom
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 3(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : LDC  2, 1(0) ;  Load 1 into R2
144 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
145 : ST   1, 2(5) ;  Store function result into stack frame
146 : LD   6, 0(5) ;  Load return address
147 : LDA  7, 0(6) ;  Return to caller
148 : LD   1, 1(5) ;  Load parameter 'x' into R1
149 : ADD  3, 1, 0 ;  Store left operand into temporary register
150 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
151 : ADD  2, 3, 0 ;  Restore left operand
152 : DIV  1, 2, 1 ;  R1 = left / right
153 : ADD  3, 1, 0 ;  Store left operand into temporary register
154 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
155 : ADD  2, 3, 0 ;  Restore left operand
156 : SUB  1, 2, 1 ;  left - right for equality check
157 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
158 : LDC  1, 0(0) ;  false
159 : LDA  7, 1(7) ;  skip setting true
160 : LDC  1, 1(0) ;  true
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 2(5) ;  Load parameter 'y' into R1
163 : LDA  7, 185(0) ;  Skip ELSE block
164 : LDA 4, 4(5) ; Base of callee frame
165 : LD   1, 1(5) ;  Load parameter 'x' into R1
166 : ADD  3, 1, 0 ;  Store left operand into temporary register
167 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
168 : ADD  2, 3, 0 ;  Restore left operand
169 : DIV  1, 2, 1 ;  R1 = left / right
170 : ST 1, 1(4) ; Store argument 0 in callee
171 : LD   1, 2(5) ;  Load parameter 'y' into R1
172 : ADD  3, 1, 0 ;  Store left operand into temporary register
173 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
174 : ADD  2, 3, 0 ;  Restore left operand
175 : ADD  1, 2, 1 ;  R1 = left + right
176 : ST 1, 2(4) ; Store argument 1 in callee
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(4) ; Store return in callee frame
179 : ADD 5, 4, 0 ; Push callee frame
180 : LDA 7, 148(0) ; Call log10Helper
181 : LD   1, 3(5) ;  Load function result
182 : LDC   2, 4(0) ;  Caller frame size
183 : SUB   5, 5, 2 ;  Pop back to caller
184 : SUB   4, 4, 2 ;  Pop back to caller
185 : ST   1, 3(5) ;  Store function result into stack frame
186 : LD   6, 0(5) ;  Load return address
187 : LDA  7, 0(6) ;  Return to caller
188 : LDA 4, 3(5) ; Base of callee frame
189 : LD   1, 1(5) ;  Load parameter 'x' into R1
190 : ST 1, 1(4) ; Store argument 0 in callee
191 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
192 : ST 1, 2(4) ; Store argument 1 in callee
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(4) ; Store return in callee frame
195 : ADD 5, 4, 0 ; Push callee frame
196 : LDA 7, 148(0) ; Call log10Helper
197 : LD   1, 3(5) ;  Load function result
198 : LDC   2, 3(0) ;  Caller frame size
199 : SUB   5, 5, 2 ;  Pop back to caller
200 : SUB   4, 4, 2 ;  Pop back to caller
201 : ST   1, 2(5) ;  Store function result into stack frame
202 : LD   6, 0(5) ;  Load return address
203 : LDA  7, 0(6) ;  Return to caller
204 : LD   1, 2(5) ;  Load parameter 'power' into R1
205 : ADD  3, 1, 0 ;  Store left operand into temporary register
206 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
207 : ADD  2, 3, 0 ;  Restore left operand
208 : SUB  1, 2, 1 ;  left - right for equality check
209 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
210 : LDC  1, 0(0) ;  false
211 : LDA  7, 1(7) ;  skip setting true
212 : LDC  1, 1(0) ;  true
213 : JEQ  1, 216(0) ;  If condition is false, jump to ELSE
214 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
215 : LDA  7, 251(0) ;  Skip ELSE block
216 : LD   1, 2(5) ;  Load parameter 'power' into R1
217 : ADD  3, 1, 0 ;  Store left operand into temporary register
218 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
219 : ADD  2, 3, 0 ;  Restore left operand
220 : SUB  1, 2, 1 ;  left - right for equality check
221 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
222 : LDC  1, 0(0) ;  false
223 : LDA  7, 1(7) ;  skip setting true
224 : LDC  1, 1(0) ;  true
225 : JEQ  1, 228(0) ;  If condition is false, jump to ELSE
226 : LD   1, 3(5) ;  Load parameter 'total' into R1
227 : LDA  7, 251(0) ;  Skip ELSE block
228 : LDA 4, 5(5) ; Base of callee frame
229 : LD   1, 1(5) ;  Load parameter 'base' into R1
230 : ST 1, 1(4) ; Store argument 0 in callee
231 : LD   1, 2(5) ;  Load parameter 'power' into R1
232 : ADD  3, 1, 0 ;  Store left operand into temporary register
233 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
234 : ADD  2, 3, 0 ;  Restore left operand
235 : SUB  1, 2, 1 ;  R1 = left - right
236 : ST 1, 2(4) ; Store argument 1 in callee
237 : LD   1, 1(5) ;  Load parameter 'base' into R1
238 : ADD  3, 1, 0 ;  Store left operand into temporary register
239 : LD   1, 3(5) ;  Load parameter 'total' into R1
240 : ADD  2, 3, 0 ;  Restore left operand
241 : MUL  1, 2, 1 ;  R1 = left * right
242 : ST 1, 3(4) ; Store argument 2 in callee
243 : LDA 6, 247(0) ; Return address
244 : ST 6, 0(4) ; Store return in callee frame
245 : ADD 5, 4, 0 ; Push callee frame
246 : LDA 7, 204(0) ; Call powHelper
247 : LD   1, 4(5) ;  Load function result
248 : LDC   2, 5(0) ;  Caller frame size
249 : SUB   5, 5, 2 ;  Pop back to caller
250 : SUB   4, 4, 2 ;  Pop back to caller
251 : ST   1, 4(5) ;  Store function result into stack frame
252 : LD   6, 0(5) ;  Load return address
253 : LDA  7, 0(6) ;  Return to caller
254 : LDA 4, 4(5) ; Base of callee frame
255 : LD   1, 1(5) ;  Load parameter 'x' into R1
256 : ST 1, 1(4) ; Store argument 0 in callee
257 : LD   1, 2(5) ;  Load parameter 'y' into R1
258 : ST 1, 2(4) ; Store argument 1 in callee
259 : LD   1, 1(5) ;  Load parameter 'x' into R1
260 : ST 1, 3(4) ; Store argument 2 in callee
261 : LDA 6, 265(0) ; Return address
262 : ST 6, 0(4) ; Store return in callee frame
263 : ADD 5, 4, 0 ; Push callee frame
264 : LDA 7, 204(0) ; Call powHelper
265 : LD   1, 4(5) ;  Load function result
266 : LDC   2, 4(0) ;  Caller frame size
267 : SUB   5, 5, 2 ;  Pop back to caller
268 : SUB   4, 4, 2 ;  Pop back to caller
269 : ST   1, 3(5) ;  Store function result into stack frame
270 : LD   6, 0(5) ;  Load return address
271 : LDA  7, 0(6) ;  Return to caller
272 : LD   1, 1(5) ;  Load parameter 'x' into R1
273 : ADD  3, 1, 0 ;  Store left operand into temporary register
274 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
275 : ADD  2, 3, 0 ;  Restore left operand
276 : DIV  1, 2, 1 ;  R1 = left / right
277 : ADD  3, 1, 0 ;  Store left operand into temporary register
278 : LDA 4, 3(5) ; Base of callee frame
279 : LD   1, 1(5) ;  Load parameter 'x' into R1
280 : ST 1, 1(4) ; Store argument 0 in callee
281 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
282 : ST 1, 2(4) ; Store argument 1 in callee
283 : LDA 6, 287(0) ; Return address
284 : ST 6, 0(4) ; Store return in callee frame
285 : ADD 5, 4, 0 ; Push callee frame
286 : LDA 7, 26(0) ; Call mod
287 : LD   1, 3(5) ;  Load function result
288 : LDC   2, 3(0) ;  Caller frame size
289 : SUB   5, 5, 2 ;  Pop back to caller
290 : SUB   4, 4, 2 ;  Pop back to caller
291 : ADD  3, 1, 0 ;  Store left operand into temporary register
292 : LDA 4, 3(5) ; Base of callee frame
293 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
294 : ST 1, 1(4) ; Store argument 0 in callee
295 : LDA 4, 3(5) ; Base of callee frame
296 : LD   1, 1(5) ;  Load parameter 'x' into R1
297 : ST 1, 1(4) ; Store argument 0 in callee
298 : LDA 6, 302(0) ; Return address
299 : ST 6, 0(4) ; Store return in callee frame
300 : ADD 5, 4, 0 ; Push callee frame
301 : LDA 7, 188(0) ; Call log10
302 : LD   1, 2(5) ;  Load function result
303 : LDC   2, 3(0) ;  Caller frame size
304 : SUB   5, 5, 2 ;  Pop back to caller
305 : SUB   4, 4, 2 ;  Pop back to caller
306 : ST 1, 2(4) ; Store argument 1 in callee
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(4) ; Store return in callee frame
309 : ADD 5, 4, 0 ; Push callee frame
310 : LDA 7, 254(0) ; Call pow
311 : LD   1, 3(5) ;  Load function result
312 : LDC   2, 3(0) ;  Caller frame size
313 : SUB   5, 5, 2 ;  Pop back to caller
314 : SUB   4, 4, 2 ;  Pop back to caller
315 : ADD  2, 3, 0 ;  Restore left operand
316 : MUL  1, 2, 1 ;  R1 = left * right
317 : ADD  2, 3, 0 ;  Restore left operand
318 : ADD  1, 2, 1 ;  R1 = left + right
319 : ST   1, 2(5) ;  Store function result into stack frame
320 : LD   6, 0(5) ;  Load return address
321 : LDA  7, 0(6) ;  Return to caller
322 : LD   1, 1(5) ;  Load parameter 'x' into R1
323 : LDA 4, 3(5) ; Base of callee frame
324 : LDA 6, 328(0) ; Return address
325 : ST 6, 0(4) ; Store return addr in callee frame
326 : ADD 5, 4, 0 ; Push new frame
327 : LDA 7, 8(0) ; Call print
328 : LDC 2, 3(0) ; Caller frame size
329 : SUB 5, 5, 2 ; Pop frame
330 : ST   1, 2(5) ;  Store function result into stack frame
331 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
332 : ST   1, 2(5) ;  Store function result into stack frame
333 : LD   6, 0(5) ;  Load return address
334 : LDA  7, 0(6) ;  Return to caller
335 : LD   1, 2(5) ;  Load parameter 'turns' into R1
336 : ADD  3, 1, 0 ;  Store left operand into temporary register
337 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
338 : ADD  2, 3, 0 ;  Restore left operand
339 : SUB  1, 2, 1 ;  left - right for equality check
340 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
341 : LDC  1, 0(0) ;  false
342 : LDA  7, 1(7) ;  skip setting true
343 : LDC  1, 1(0) ;  true
344 : JEQ  1, 347(0) ;  If condition is false, jump to ELSE
345 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
346 : LDA  7, 388(0) ;  Skip ELSE block
347 : LDA 4, 4(5) ; Base of callee frame
348 : LD   1, 1(5) ;  Load parameter 'x' into R1
349 : ST 1, 1(4) ; Store argument 0 in callee
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return in callee frame
352 : ADD 5, 4, 0 ; Push callee frame
353 : LDA 7, 130(0) ; Call isPrime
354 : LD   1, 2(5) ;  Load function result
355 : LDC   2, 4(0) ;  Caller frame size
356 : SUB   5, 5, 2 ;  Pop back to caller
357 : SUB   4, 4, 2 ;  Pop back to caller
358 : ADD  3, 1, 0 ;  Store left operand into temporary register
359 : LDA 4, 4(5) ; Base of callee frame
360 : LDA 4, 4(5) ; Base of callee frame
361 : LD   1, 1(5) ;  Load parameter 'x' into R1
362 : ST 1, 1(4) ; Store argument 0 in callee
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return in callee frame
365 : ADD 5, 4, 0 ; Push callee frame
366 : LDA 7, 272(0) ; Call rotate
367 : LD   1, 2(5) ;  Load function result
368 : LDC   2, 4(0) ;  Caller frame size
369 : SUB   5, 5, 2 ;  Pop back to caller
370 : SUB   4, 4, 2 ;  Pop back to caller
371 : ST 1, 1(4) ; Store argument 0 in callee
372 : LD   1, 2(5) ;  Load parameter 'turns' into R1
373 : ADD  3, 1, 0 ;  Store left operand into temporary register
374 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
375 : ADD  2, 3, 0 ;  Restore left operand
376 : SUB  1, 2, 1 ;  R1 = left - right
377 : ST 1, 2(4) ; Store argument 1 in callee
378 : LDA 6, 382(0) ; Return address
379 : ST 6, 0(4) ; Store return in callee frame
380 : ADD 5, 4, 0 ; Push callee frame
381 : LDA 7, 335(0) ; Call isCircularPrimeHelper
382 : LD   1, 3(5) ;  Load function result
383 : LDC   2, 4(0) ;  Caller frame size
384 : SUB   5, 5, 2 ;  Pop back to caller
385 : SUB   4, 4, 2 ;  Pop back to caller
386 : ADD  2, 3, 0 ;  Restore left operand
387 : MUL  1, 2, 1 ;  R1 = left AND right
388 : ST   1, 3(5) ;  Store function result into stack frame
389 : LD   6, 0(5) ;  Load return address
390 : LDA  7, 0(6) ;  Return to caller
391 : LDA 4, 3(5) ; Base of callee frame
392 : LD   1, 1(5) ;  Load parameter 'x' into R1
393 : ST 1, 1(4) ; Store argument 0 in callee
394 : LDA 4, 3(5) ; Base of callee frame
395 : LD   1, 1(5) ;  Load parameter 'x' into R1
396 : ST 1, 1(4) ; Store argument 0 in callee
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return in callee frame
399 : ADD 5, 4, 0 ; Push callee frame
400 : LDA 7, 188(0) ; Call log10
401 : LD   1, 2(5) ;  Load function result
402 : LDC   2, 3(0) ;  Caller frame size
403 : SUB   5, 5, 2 ;  Pop back to caller
404 : SUB   4, 4, 2 ;  Pop back to caller
405 : ADD  3, 1, 0 ;  Store left operand into temporary register
406 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
407 : ADD  2, 3, 0 ;  Restore left operand
408 : ADD  1, 2, 1 ;  R1 = left + right
409 : ST 1, 2(4) ; Store argument 1 in callee
410 : LDA 6, 414(0) ; Return address
411 : ST 6, 0(4) ; Store return in callee frame
412 : ADD 5, 4, 0 ; Push callee frame
413 : LDA 7, 335(0) ; Call isCircularPrimeHelper
414 : LD   1, 3(5) ;  Load function result
415 : LDC   2, 3(0) ;  Caller frame size
416 : SUB   5, 5, 2 ;  Pop back to caller
417 : SUB   4, 4, 2 ;  Pop back to caller
418 : JEQ  1, 431(0) ;  If condition is false, jump to ELSE
419 : LDA 4, 3(5) ; Base of callee frame
420 : LD   1, 1(5) ;  Load parameter 'x' into R1
421 : ST 1, 1(4) ; Store argument 0 in callee
422 : LDA 6, 426(0) ; Return address
423 : ST 6, 0(4) ; Store return in callee frame
424 : ADD 5, 4, 0 ; Push callee frame
425 : LDA 7, 322(0) ; Call report
426 : LD   1, 2(5) ;  Load function result
427 : LDC   2, 3(0) ;  Caller frame size
428 : SUB   5, 5, 2 ;  Pop back to caller
429 : SUB   4, 4, 2 ;  Pop back to caller
430 : LDA  7, 432(0) ;  Skip ELSE block
431 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
432 : ST   1, 2(5) ;  Store function result into stack frame
433 : LD   6, 0(5) ;  Load return address
434 : LDA  7, 0(6) ;  Return to caller
435 : LD   1, 2(5) ;  Load parameter 'x' into R1
436 : ADD  3, 1, 0 ;  Store left operand into temporary register
437 : LD   1, 1(5) ;  Load parameter 'top' into R1
438 : ADD  2, 3, 0 ;  Restore left operand
439 : SUB  1, 2, 1 ;  left - right for less-than check
440 : JLT  1, 3(7) ;  If R1 < 0, jump to true
441 : LDC  1, 0(0) ;  false
442 : LDA  7, 1(7) ;  skip setting true
443 : LDC  1, 1(0) ;  true
444 : JEQ  1, 501(0) ;  If condition is false, jump to ELSE
445 : LDA 4, 5(5) ; Base of callee frame
446 : LD   1, 2(5) ;  Load parameter 'x' into R1
447 : ST 1, 1(4) ; Store argument 0 in callee
448 : LDA 6, 452(0) ; Return address
449 : ST 6, 0(4) ; Store return in callee frame
450 : ADD 5, 4, 0 ; Push callee frame
451 : LDA 7, 391(0) ; Call isCircularPrime
452 : LD   1, 2(5) ;  Load function result
453 : LDC   2, 5(0) ;  Caller frame size
454 : SUB   5, 5, 2 ;  Pop back to caller
455 : SUB   4, 4, 2 ;  Pop back to caller
456 : JEQ  1, 481(0) ;  If condition is false, jump to ELSE
457 : LDA 4, 5(5) ; Base of callee frame
458 : LD   1, 1(5) ;  Load parameter 'top' into R1
459 : ST 1, 1(4) ; Store argument 0 in callee
460 : LD   1, 2(5) ;  Load parameter 'x' into R1
461 : ADD  3, 1, 0 ;  Store left operand into temporary register
462 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
463 : ADD  2, 3, 0 ;  Restore left operand
464 : ADD  1, 2, 1 ;  R1 = left + right
465 : ST 1, 2(4) ; Store argument 1 in callee
466 : LD   1, 3(5) ;  Load parameter 'count' into R1
467 : ADD  3, 1, 0 ;  Store left operand into temporary register
468 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
469 : ADD  2, 3, 0 ;  Restore left operand
470 : ADD  1, 2, 1 ;  R1 = left + right
471 : ST 1, 3(4) ; Store argument 2 in callee
472 : LDA 6, 476(0) ; Return address
473 : ST 6, 0(4) ; Store return in callee frame
474 : ADD 5, 4, 0 ; Push callee frame
475 : LDA 7, 435(0) ; Call circularPrimesToHelper
476 : LD   1, 4(5) ;  Load function result
477 : LDC   2, 5(0) ;  Caller frame size
478 : SUB   5, 5, 2 ;  Pop back to caller
479 : SUB   4, 4, 2 ;  Pop back to caller
480 : LDA  7, 500(0) ;  Skip ELSE block
481 : LDA 4, 5(5) ; Base of callee frame
482 : LD   1, 1(5) ;  Load parameter 'top' into R1
483 : ST 1, 1(4) ; Store argument 0 in callee
484 : LD   1, 2(5) ;  Load parameter 'x' into R1
485 : ADD  3, 1, 0 ;  Store left operand into temporary register
486 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
487 : ADD  2, 3, 0 ;  Restore left operand
488 : ADD  1, 2, 1 ;  R1 = left + right
489 : ST 1, 2(4) ; Store argument 1 in callee
490 : LD   1, 3(5) ;  Load parameter 'count' into R1
491 : ST 1, 3(4) ; Store argument 2 in callee
492 : LDA 6, 496(0) ; Return address
493 : ST 6, 0(4) ; Store return in callee frame
494 : ADD 5, 4, 0 ; Push callee frame
495 : LDA 7, 435(0) ; Call circularPrimesToHelper
496 : LD   1, 4(5) ;  Load function result
497 : LDC   2, 5(0) ;  Caller frame size
498 : SUB   5, 5, 2 ;  Pop back to caller
499 : SUB   4, 4, 2 ;  Pop back to caller
500 : LDA  7, 502(0) ;  Skip ELSE block
501 : LD   1, 3(5) ;  Load parameter 'count' into R1
502 : ST   1, 4(5) ;  Store function result into stack frame
503 : LD   6, 0(5) ;  Load return address
504 : LDA  7, 0(6) ;  Return to caller
505 : LDA 4, 3(5) ; Base of callee frame
506 : LD   1, 1(5) ;  Load parameter 'x' into R1
507 : ADD  3, 1, 0 ;  Store left operand into temporary register
508 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
509 : ADD  2, 3, 0 ;  Restore left operand
510 : ADD  1, 2, 1 ;  R1 = left + right
511 : ST 1, 1(4) ; Store argument 0 in callee
512 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
513 : ST 1, 2(4) ; Store argument 1 in callee
514 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
515 : ST 1, 3(4) ; Store argument 2 in callee
516 : LDA 6, 520(0) ; Return address
517 : ST 6, 0(4) ; Store return in callee frame
518 : ADD 5, 4, 0 ; Push callee frame
519 : LDA 7, 435(0) ; Call circularPrimesToHelper
520 : LD   1, 4(5) ;  Load function result
521 : LDC   2, 3(0) ;  Caller frame size
522 : SUB   5, 5, 2 ;  Pop back to caller
523 : SUB   4, 4, 2 ;  Pop back to caller
524 : ST   1, 2(5) ;  Store function result into stack frame
525 : LD   6, 0(5) ;  Load return address
526 : LDA  7, 0(6) ;  Return to caller
