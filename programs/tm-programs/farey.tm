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
15 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
16 : LDA 4, 5(5) ; Base of callee frame
17 : ST 1, 1(4) ; Store argument 0 in callee
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : LDA 4, 5(5) ; Base of callee frame
20 : ST 1, 2(4) ; Store argument 1 in callee
21 : LD   1, 3(5) ;  Load parameter 'N' into R1
22 : LDA 4, 5(5) ; Base of callee frame
23 : ST 1, 3(4) ; Store argument 2 in callee
24 : LDA 4, 5(5) ; Base of callee frame
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 589(0) ; Call fareyNum
29 : LD   1, 4(5) ;  Load function result
30 : LDC   2, 5(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : LDA 4, 3(5) ; Base of callee frame
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return addr in callee frame
35 : ADD 5, 4, 0 ; Push new frame
36 : LDA 7, 12(0) ; Call print
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop frame
39 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
40 : LDA 4, 5(5) ; Base of callee frame
41 : ST 1, 1(4) ; Store argument 0 in callee
42 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
43 : LDA 4, 5(5) ; Base of callee frame
44 : ST 1, 2(4) ; Store argument 1 in callee
45 : LD   1, 3(5) ;  Load parameter 'N' into R1
46 : LDA 4, 5(5) ; Base of callee frame
47 : ST 1, 3(4) ; Store argument 2 in callee
48 : LDA 4, 5(5) ; Base of callee frame
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 439(0) ; Call fareyDen
53 : LD   1, 4(5) ;  Load function result
54 : LDC   2, 5(0) ;  Caller frame size
55 : SUB   5, 5, 2 ;  Pop back to caller
56 : ST 1, 4(5) ; Store result into caller’s frame
57 : LD   1, 4(5) ;  Load return value into register 1
58 : LD  6, 0(5) ;  Load return address for main function into register 6
59 : LDA  7, 0(6) ;  Jump to return address of main function
60 : LD   1, 1(5) ;  Load parameter 'x' into R1
61 : ADD  3, 1, 0 ;  Store left operand into temporary register
62 : LD   1, 2(5) ;  Load parameter 'y' into R1
63 : ADD  2, 3, 0 ;  Restore left operand
64 : SUB  1, 2, 1 ;  left - right for less-than check
65 : JLT  1, 2(7) ;  If R1 < 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 1(5) ;  Load parameter 'x' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'y' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : SUB  1, 2, 1 ;  left - right for equality check
75 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
76 : LDC  1, 0(0) ;  false
77 : LDA  7, 1(7) ;  skip setting true
78 : LDC  1, 1(0) ;  true
79 : ADD  2, 3, 0 ;  Restore left operand
80 : ADD  1, 2, 1 ;  R1 = left OR right
81 : LDC  2, 1(0) ;  Load 1 into R2
82 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LD   1, 1(5) ;  Load parameter 'x' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LD   1, 4(5) ;  Load parameter 'yd' into R1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : LDA 4, 4(5) ; Base of callee frame
92 : ST 1, 1(4) ; Store argument 0 in callee
93 : LD   1, 3(5) ;  Load parameter 'y' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 2(5) ;  Load parameter 'xd' into R1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : LDA 4, 4(5) ; Base of callee frame
99 : ST 1, 2(4) ; Store argument 1 in callee
100 : LDA 4, 4(5) ; Base of callee frame
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(4) ; Store return in callee frame
103 : ADD 5, 4, 0 ; Push callee frame
104 : LDA 7, 60(0) ; Call greater
105 : LD   1, 3(5) ;  Load function result
106 : LDC   2, 4(0) ;  Caller frame size
107 : SUB   5, 5, 2 ;  Pop back to caller
108 : ST   1, 5(5) ;  Store function result into stack frame
109 : LD   6, 0(5) ;  Load return address
110 : LDA  7, 0(6) ;  Return to caller
111 : LD   1, 1(5) ;  Load parameter 'x' into R1
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LD   1, 4(5) ;  Load parameter 'yd' into R1
114 : ADD  2, 3, 0 ;  Restore left operand
115 : MUL  1, 2, 1 ;  R1 = left * right
116 : ADD  3, 1, 0 ;  Store left operand into temporary register
117 : LD   1, 3(5) ;  Load parameter 'y' into R1
118 : ADD  3, 1, 0 ;  Store left operand into temporary register
119 : LD   1, 2(5) ;  Load parameter 'xd' into R1
120 : ADD  2, 3, 0 ;  Restore left operand
121 : MUL  1, 2, 1 ;  R1 = left * right
122 : ADD  2, 3, 0 ;  Restore left operand
123 : SUB  1, 2, 1 ;  left - right for equality check
124 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
125 : LDC  1, 0(0) ;  false
126 : LDA  7, 1(7) ;  skip setting true
127 : LDC  1, 1(0) ;  true
128 : ST   1, 5(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LD   1, 6(5) ;  Load parameter 'b' into R1
132 : LDA 4, 4(5) ; Base of callee frame
133 : ST 1, 1(4) ; Store argument 0 in callee
134 : LD   1, 4(5) ;  Load parameter 'N' into R1
135 : LDA 4, 4(5) ; Base of callee frame
136 : ST 1, 2(4) ; Store argument 1 in callee
137 : LDA 4, 4(5) ; Base of callee frame
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 60(0) ; Call greater
142 : LD   1, 3(5) ;  Load function result
143 : LDC   2, 4(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LD   1, 8(5) ;  Load parameter 'd' into R1
147 : LDA 4, 4(5) ; Base of callee frame
148 : ST 1, 1(4) ; Store argument 0 in callee
149 : LD   1, 4(5) ;  Load parameter 'N' into R1
150 : LDA 4, 4(5) ; Base of callee frame
151 : ST 1, 2(4) ; Store argument 1 in callee
152 : LDA 4, 4(5) ; Base of callee frame
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 60(0) ; Call greater
157 : LD   1, 3(5) ;  Load function result
158 : LDC   2, 4(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : ADD  2, 3, 0 ;  Restore left operand
161 : ADD  1, 2, 1 ;  R1 = left OR right
162 : JEQ  1, 201(0) ;  If condition is false, jump to ELSE
163 : LD   1, 1(5) ;  Load parameter 'selector' into R1
164 : ADD  3, 1, 0 ;  Store left operand into temporary register
165 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
166 : ADD  2, 3, 0 ;  Restore left operand
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 5(5) ;  Load parameter 'a' into R1
174 : LDA  7, 200(0) ;  Skip ELSE block
175 : LD   1, 1(5) ;  Load parameter 'selector' into R1
176 : ADD  3, 1, 0 ;  Store left operand into temporary register
177 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
178 : ADD  2, 3, 0 ;  Restore left operand
179 : SUB  1, 2, 1 ;  left - right for equality check
180 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
181 : LDC  1, 0(0) ;  false
182 : LDA  7, 1(7) ;  skip setting true
183 : LDC  1, 1(0) ;  true
184 : JEQ  1, 187(0) ;  If condition is false, jump to ELSE
185 : LD   1, 6(5) ;  Load parameter 'b' into R1
186 : LDA  7, 200(0) ;  Skip ELSE block
187 : LD   1, 1(5) ;  Load parameter 'selector' into R1
188 : ADD  3, 1, 0 ;  Store left operand into temporary register
189 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
190 : ADD  2, 3, 0 ;  Restore left operand
191 : SUB  1, 2, 1 ;  left - right for equality check
192 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
193 : LDC  1, 0(0) ;  false
194 : LDA  7, 1(7) ;  skip setting true
195 : LDC  1, 1(0) ;  true
196 : JEQ  1, 199(0) ;  If condition is false, jump to ELSE
197 : LD   1, 7(5) ;  Load parameter 'c' into R1
198 : LDA  7, 200(0) ;  Skip ELSE block
199 : LD   1, 8(5) ;  Load parameter 'd' into R1
200 : LDA  7, 394(0) ;  Skip ELSE block
201 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
202 : LDA 4, 6(5) ; Base of callee frame
203 : ST 1, 1(4) ; Store argument 0 in callee
204 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
205 : LDA 4, 6(5) ; Base of callee frame
206 : ST 1, 2(4) ; Store argument 1 in callee
207 : LD   1, 5(5) ;  Load parameter 'a' into R1
208 : ADD  3, 1, 0 ;  Store left operand into temporary register
209 : LD   1, 7(5) ;  Load parameter 'c' into R1
210 : ADD  2, 3, 0 ;  Restore left operand
211 : ADD  1, 2, 1 ;  R1 = left + right
212 : LDA 4, 6(5) ; Base of callee frame
213 : ST 1, 3(4) ; Store argument 2 in callee
214 : LD   1, 6(5) ;  Load parameter 'b' into R1
215 : ADD  3, 1, 0 ;  Store left operand into temporary register
216 : LD   1, 8(5) ;  Load parameter 'd' into R1
217 : ADD  2, 3, 0 ;  Restore left operand
218 : ADD  1, 2, 1 ;  R1 = left + right
219 : LDA 4, 6(5) ; Base of callee frame
220 : ST 1, 4(4) ; Store argument 3 in callee
221 : LDA 4, 6(5) ; Base of callee frame
222 : LDA 6, 226(0) ; Return address
223 : ST 6, 0(4) ; Store return in callee frame
224 : ADD 5, 4, 0 ; Push callee frame
225 : LDA 7, 111(0) ; Call fractionEqual
226 : LD   1, 5(5) ;  Load function result
227 : LDC   2, 6(0) ;  Caller frame size
228 : SUB   5, 5, 2 ;  Pop back to caller
229 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
230 : LD   1, 1(5) ;  Load parameter 'selector' into R1
231 : ADD  3, 1, 0 ;  Store left operand into temporary register
232 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
233 : ADD  2, 3, 0 ;  Restore left operand
234 : SUB  1, 2, 1 ;  left - right for equality check
235 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
236 : LDC  1, 0(0) ;  false
237 : LDA  7, 1(7) ;  skip setting true
238 : LDC  1, 1(0) ;  true
239 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
240 : LD   1, 5(5) ;  Load parameter 'a' into R1
241 : ADD  3, 1, 0 ;  Store left operand into temporary register
242 : LD   1, 7(5) ;  Load parameter 'c' into R1
243 : ADD  2, 3, 0 ;  Restore left operand
244 : ADD  1, 2, 1 ;  R1 = left + right
245 : LDA  7, 283(0) ;  Skip ELSE block
246 : LD   1, 1(5) ;  Load parameter 'selector' into R1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : SUB  1, 2, 1 ;  left - right for equality check
251 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
252 : LDC  1, 0(0) ;  false
253 : LDA  7, 1(7) ;  skip setting true
254 : LDC  1, 1(0) ;  true
255 : JEQ  1, 262(0) ;  If condition is false, jump to ELSE
256 : LD   1, 6(5) ;  Load parameter 'b' into R1
257 : ADD  3, 1, 0 ;  Store left operand into temporary register
258 : LD   1, 8(5) ;  Load parameter 'd' into R1
259 : ADD  2, 3, 0 ;  Restore left operand
260 : ADD  1, 2, 1 ;  R1 = left + right
261 : LDA  7, 283(0) ;  Skip ELSE block
262 : LD   1, 1(5) ;  Load parameter 'selector' into R1
263 : ADD  3, 1, 0 ;  Store left operand into temporary register
264 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
265 : ADD  2, 3, 0 ;  Restore left operand
266 : SUB  1, 2, 1 ;  left - right for equality check
267 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
268 : LDC  1, 0(0) ;  false
269 : LDA  7, 1(7) ;  skip setting true
270 : LDC  1, 1(0) ;  true
271 : JEQ  1, 278(0) ;  If condition is false, jump to ELSE
272 : LD   1, 5(5) ;  Load parameter 'a' into R1
273 : ADD  3, 1, 0 ;  Store left operand into temporary register
274 : LD   1, 7(5) ;  Load parameter 'c' into R1
275 : ADD  2, 3, 0 ;  Restore left operand
276 : ADD  1, 2, 1 ;  R1 = left + right
277 : LDA  7, 283(0) ;  Skip ELSE block
278 : LD   1, 6(5) ;  Load parameter 'b' into R1
279 : ADD  3, 1, 0 ;  Store left operand into temporary register
280 : LD   1, 8(5) ;  Load parameter 'd' into R1
281 : ADD  2, 3, 0 ;  Restore left operand
282 : ADD  1, 2, 1 ;  R1 = left + right
283 : LDA  7, 394(0) ;  Skip ELSE block
284 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
285 : LDA 4, 6(5) ; Base of callee frame
286 : ST 1, 1(4) ; Store argument 0 in callee
287 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
288 : LDA 4, 6(5) ; Base of callee frame
289 : ST 1, 2(4) ; Store argument 1 in callee
290 : LD   1, 5(5) ;  Load parameter 'a' into R1
291 : ADD  3, 1, 0 ;  Store left operand into temporary register
292 : LD   1, 7(5) ;  Load parameter 'c' into R1
293 : ADD  2, 3, 0 ;  Restore left operand
294 : ADD  1, 2, 1 ;  R1 = left + right
295 : LDA 4, 6(5) ; Base of callee frame
296 : ST 1, 3(4) ; Store argument 2 in callee
297 : LD   1, 6(5) ;  Load parameter 'b' into R1
298 : ADD  3, 1, 0 ;  Store left operand into temporary register
299 : LD   1, 8(5) ;  Load parameter 'd' into R1
300 : ADD  2, 3, 0 ;  Restore left operand
301 : ADD  1, 2, 1 ;  R1 = left + right
302 : LDA 4, 6(5) ; Base of callee frame
303 : ST 1, 4(4) ; Store argument 3 in callee
304 : LDA 4, 6(5) ; Base of callee frame
305 : LDA 6, 309(0) ; Return address
306 : ST 6, 0(4) ; Store return in callee frame
307 : ADD 5, 4, 0 ; Push callee frame
308 : LDA 7, 86(0) ; Call fractionGreater
309 : LD   1, 5(5) ;  Load function result
310 : LDC   2, 6(0) ;  Caller frame size
311 : SUB   5, 5, 2 ;  Pop back to caller
312 : JEQ  1, 354(0) ;  If condition is false, jump to ELSE
313 : LD   1, 1(5) ;  Load parameter 'selector' into R1
314 : LDA 4, 10(5) ; Base of callee frame
315 : ST 1, 1(4) ; Store argument 0 in callee
316 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
317 : LDA 4, 10(5) ; Base of callee frame
318 : ST 1, 2(4) ; Store argument 1 in callee
319 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
320 : LDA 4, 10(5) ; Base of callee frame
321 : ST 1, 3(4) ; Store argument 2 in callee
322 : LD   1, 4(5) ;  Load parameter 'N' into R1
323 : LDA 4, 10(5) ; Base of callee frame
324 : ST 1, 4(4) ; Store argument 3 in callee
325 : LD   1, 5(5) ;  Load parameter 'a' into R1
326 : ADD  3, 1, 0 ;  Store left operand into temporary register
327 : LD   1, 7(5) ;  Load parameter 'c' into R1
328 : ADD  2, 3, 0 ;  Restore left operand
329 : ADD  1, 2, 1 ;  R1 = left + right
330 : LDA 4, 10(5) ; Base of callee frame
331 : ST 1, 5(4) ; Store argument 4 in callee
332 : LD   1, 6(5) ;  Load parameter 'b' into R1
333 : ADD  3, 1, 0 ;  Store left operand into temporary register
334 : LD   1, 8(5) ;  Load parameter 'd' into R1
335 : ADD  2, 3, 0 ;  Restore left operand
336 : ADD  1, 2, 1 ;  R1 = left + right
337 : LDA 4, 10(5) ; Base of callee frame
338 : ST 1, 6(4) ; Store argument 5 in callee
339 : LD   1, 7(5) ;  Load parameter 'c' into R1
340 : LDA 4, 10(5) ; Base of callee frame
341 : ST 1, 7(4) ; Store argument 6 in callee
342 : LD   1, 8(5) ;  Load parameter 'd' into R1
343 : LDA 4, 10(5) ; Base of callee frame
344 : ST 1, 8(4) ; Store argument 7 in callee
345 : LDA 4, 10(5) ; Base of callee frame
346 : LDA 6, 350(0) ; Return address
347 : ST 6, 0(4) ; Store return in callee frame
348 : ADD 5, 4, 0 ; Push callee frame
349 : LDA 7, 131(0) ; Call whileLoopFor
350 : LD   1, 9(5) ;  Load function result
351 : LDC   2, 10(0) ;  Caller frame size
352 : SUB   5, 5, 2 ;  Pop back to caller
353 : LDA  7, 394(0) ;  Skip ELSE block
354 : LD   1, 1(5) ;  Load parameter 'selector' into R1
355 : LDA 4, 10(5) ; Base of callee frame
356 : ST 1, 1(4) ; Store argument 0 in callee
357 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
358 : LDA 4, 10(5) ; Base of callee frame
359 : ST 1, 2(4) ; Store argument 1 in callee
360 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
361 : LDA 4, 10(5) ; Base of callee frame
362 : ST 1, 3(4) ; Store argument 2 in callee
363 : LD   1, 4(5) ;  Load parameter 'N' into R1
364 : LDA 4, 10(5) ; Base of callee frame
365 : ST 1, 4(4) ; Store argument 3 in callee
366 : LD   1, 5(5) ;  Load parameter 'a' into R1
367 : LDA 4, 10(5) ; Base of callee frame
368 : ST 1, 5(4) ; Store argument 4 in callee
369 : LD   1, 6(5) ;  Load parameter 'b' into R1
370 : LDA 4, 10(5) ; Base of callee frame
371 : ST 1, 6(4) ; Store argument 5 in callee
372 : LD   1, 5(5) ;  Load parameter 'a' into R1
373 : ADD  3, 1, 0 ;  Store left operand into temporary register
374 : LD   1, 7(5) ;  Load parameter 'c' into R1
375 : ADD  2, 3, 0 ;  Restore left operand
376 : ADD  1, 2, 1 ;  R1 = left + right
377 : LDA 4, 10(5) ; Base of callee frame
378 : ST 1, 7(4) ; Store argument 6 in callee
379 : LD   1, 6(5) ;  Load parameter 'b' into R1
380 : ADD  3, 1, 0 ;  Store left operand into temporary register
381 : LD   1, 8(5) ;  Load parameter 'd' into R1
382 : ADD  2, 3, 0 ;  Restore left operand
383 : ADD  1, 2, 1 ;  R1 = left + right
384 : LDA 4, 10(5) ; Base of callee frame
385 : ST 1, 8(4) ; Store argument 7 in callee
386 : LDA 4, 10(5) ; Base of callee frame
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return in callee frame
389 : ADD 5, 4, 0 ; Push callee frame
390 : LDA 7, 131(0) ; Call whileLoopFor
391 : LD   1, 9(5) ;  Load function result
392 : LDC   2, 10(0) ;  Caller frame size
393 : SUB   5, 5, 2 ;  Pop back to caller
394 : ST   1, 9(5) ;  Store function result into stack frame
395 : LD   6, 0(5) ;  Load return address
396 : LDA  7, 0(6) ;  Return to caller
397 : LD   1, 3(5) ;  Load parameter 'b' into R1
398 : LDA 4, 4(5) ; Base of callee frame
399 : ST 1, 1(4) ; Store argument 0 in callee
400 : LD   1, 1(5) ;  Load parameter 'N' into R1
401 : LDA 4, 4(5) ; Base of callee frame
402 : ST 1, 2(4) ; Store argument 1 in callee
403 : LDA 4, 4(5) ; Base of callee frame
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return in callee frame
406 : ADD 5, 4, 0 ; Push callee frame
407 : LDA 7, 60(0) ; Call greater
408 : LD   1, 3(5) ;  Load function result
409 : LDC   2, 4(0) ;  Caller frame size
410 : SUB   5, 5, 2 ;  Pop back to caller
411 : JEQ  1, 414(0) ;  If condition is false, jump to ELSE
412 : LD   1, 5(5) ;  Load parameter 'd' into R1
413 : LDA  7, 415(0) ;  Skip ELSE block
414 : LD   1, 3(5) ;  Load parameter 'b' into R1
415 : ST   1, 6(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 3(5) ;  Load parameter 'b' into R1
419 : LDA 4, 4(5) ; Base of callee frame
420 : ST 1, 1(4) ; Store argument 0 in callee
421 : LD   1, 1(5) ;  Load parameter 'N' into R1
422 : LDA 4, 4(5) ; Base of callee frame
423 : ST 1, 2(4) ; Store argument 1 in callee
424 : LDA 4, 4(5) ; Base of callee frame
425 : LDA 6, 429(0) ; Return address
426 : ST 6, 0(4) ; Store return in callee frame
427 : ADD 5, 4, 0 ; Push callee frame
428 : LDA 7, 60(0) ; Call greater
429 : LD   1, 3(5) ;  Load function result
430 : LDC   2, 4(0) ;  Caller frame size
431 : SUB   5, 5, 2 ;  Pop back to caller
432 : JEQ  1, 435(0) ;  If condition is false, jump to ELSE
433 : LD   1, 4(5) ;  Load parameter 'c' into R1
434 : LDA  7, 436(0) ;  Skip ELSE block
435 : LD   1, 2(5) ;  Load parameter 'a' into R1
436 : ST   1, 6(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 3(5) ;  Load parameter 'N' into R1
440 : LDA 4, 7(5) ; Base of callee frame
441 : ST 1, 1(4) ; Store argument 0 in callee
442 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
443 : LDA 4, 10(5) ; Base of callee frame
444 : ST 1, 1(4) ; Store argument 0 in callee
445 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
446 : LDA 4, 10(5) ; Base of callee frame
447 : ST 1, 2(4) ; Store argument 1 in callee
448 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
449 : LDA 4, 10(5) ; Base of callee frame
450 : ST 1, 3(4) ; Store argument 2 in callee
451 : LD   1, 3(5) ;  Load parameter 'N' into R1
452 : LDA 4, 10(5) ; Base of callee frame
453 : ST 1, 4(4) ; Store argument 3 in callee
454 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
455 : LDA 4, 10(5) ; Base of callee frame
456 : ST 1, 5(4) ; Store argument 4 in callee
457 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
458 : LDA 4, 10(5) ; Base of callee frame
459 : ST 1, 6(4) ; Store argument 5 in callee
460 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
461 : LDA 4, 10(5) ; Base of callee frame
462 : ST 1, 7(4) ; Store argument 6 in callee
463 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
464 : LDA 4, 10(5) ; Base of callee frame
465 : ST 1, 8(4) ; Store argument 7 in callee
466 : LDA 4, 10(5) ; Base of callee frame
467 : LDA 6, 471(0) ; Return address
468 : ST 6, 0(4) ; Store return in callee frame
469 : ADD 5, 4, 0 ; Push callee frame
470 : LDA 7, 131(0) ; Call whileLoopFor
471 : LD   1, 9(5) ;  Load function result
472 : LDC   2, 10(0) ;  Caller frame size
473 : SUB   5, 5, 2 ;  Pop back to caller
474 : LDA 4, 7(5) ; Base of callee frame
475 : ST 1, 2(4) ; Store argument 1 in callee
476 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
477 : LDA 4, 10(5) ; Base of callee frame
478 : ST 1, 1(4) ; Store argument 0 in callee
479 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
480 : LDA 4, 10(5) ; Base of callee frame
481 : ST 1, 2(4) ; Store argument 1 in callee
482 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
483 : LDA 4, 10(5) ; Base of callee frame
484 : ST 1, 3(4) ; Store argument 2 in callee
485 : LD   1, 3(5) ;  Load parameter 'N' into R1
486 : LDA 4, 10(5) ; Base of callee frame
487 : ST 1, 4(4) ; Store argument 3 in callee
488 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
489 : LDA 4, 10(5) ; Base of callee frame
490 : ST 1, 5(4) ; Store argument 4 in callee
491 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
492 : LDA 4, 10(5) ; Base of callee frame
493 : ST 1, 6(4) ; Store argument 5 in callee
494 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
495 : LDA 4, 10(5) ; Base of callee frame
496 : ST 1, 7(4) ; Store argument 6 in callee
497 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
498 : LDA 4, 10(5) ; Base of callee frame
499 : ST 1, 8(4) ; Store argument 7 in callee
500 : LDA 4, 10(5) ; Base of callee frame
501 : LDA 6, 505(0) ; Return address
502 : ST 6, 0(4) ; Store return in callee frame
503 : ADD 5, 4, 0 ; Push callee frame
504 : LDA 7, 131(0) ; Call whileLoopFor
505 : LD   1, 9(5) ;  Load function result
506 : LDC   2, 10(0) ;  Caller frame size
507 : SUB   5, 5, 2 ;  Pop back to caller
508 : LDA 4, 7(5) ; Base of callee frame
509 : ST 1, 3(4) ; Store argument 2 in callee
510 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
511 : LDA 4, 10(5) ; Base of callee frame
512 : ST 1, 1(4) ; Store argument 0 in callee
513 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
514 : LDA 4, 10(5) ; Base of callee frame
515 : ST 1, 2(4) ; Store argument 1 in callee
516 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
517 : LDA 4, 10(5) ; Base of callee frame
518 : ST 1, 3(4) ; Store argument 2 in callee
519 : LD   1, 3(5) ;  Load parameter 'N' into R1
520 : LDA 4, 10(5) ; Base of callee frame
521 : ST 1, 4(4) ; Store argument 3 in callee
522 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
523 : LDA 4, 10(5) ; Base of callee frame
524 : ST 1, 5(4) ; Store argument 4 in callee
525 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
526 : LDA 4, 10(5) ; Base of callee frame
527 : ST 1, 6(4) ; Store argument 5 in callee
528 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
529 : LDA 4, 10(5) ; Base of callee frame
530 : ST 1, 7(4) ; Store argument 6 in callee
531 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
532 : LDA 4, 10(5) ; Base of callee frame
533 : ST 1, 8(4) ; Store argument 7 in callee
534 : LDA 4, 10(5) ; Base of callee frame
535 : LDA 6, 539(0) ; Return address
536 : ST 6, 0(4) ; Store return in callee frame
537 : ADD 5, 4, 0 ; Push callee frame
538 : LDA 7, 131(0) ; Call whileLoopFor
539 : LD   1, 9(5) ;  Load function result
540 : LDC   2, 10(0) ;  Caller frame size
541 : SUB   5, 5, 2 ;  Pop back to caller
542 : LDA 4, 7(5) ; Base of callee frame
543 : ST 1, 4(4) ; Store argument 3 in callee
544 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
545 : LDA 4, 10(5) ; Base of callee frame
546 : ST 1, 1(4) ; Store argument 0 in callee
547 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
548 : LDA 4, 10(5) ; Base of callee frame
549 : ST 1, 2(4) ; Store argument 1 in callee
550 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
551 : LDA 4, 10(5) ; Base of callee frame
552 : ST 1, 3(4) ; Store argument 2 in callee
553 : LD   1, 3(5) ;  Load parameter 'N' into R1
554 : LDA 4, 10(5) ; Base of callee frame
555 : ST 1, 4(4) ; Store argument 3 in callee
556 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
557 : LDA 4, 10(5) ; Base of callee frame
558 : ST 1, 5(4) ; Store argument 4 in callee
559 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
560 : LDA 4, 10(5) ; Base of callee frame
561 : ST 1, 6(4) ; Store argument 5 in callee
562 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
563 : LDA 4, 10(5) ; Base of callee frame
564 : ST 1, 7(4) ; Store argument 6 in callee
565 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
566 : LDA 4, 10(5) ; Base of callee frame
567 : ST 1, 8(4) ; Store argument 7 in callee
568 : LDA 4, 10(5) ; Base of callee frame
569 : LDA 6, 573(0) ; Return address
570 : ST 6, 0(4) ; Store return in callee frame
571 : ADD 5, 4, 0 ; Push callee frame
572 : LDA 7, 131(0) ; Call whileLoopFor
573 : LD   1, 9(5) ;  Load function result
574 : LDC   2, 10(0) ;  Caller frame size
575 : SUB   5, 5, 2 ;  Pop back to caller
576 : LDA 4, 7(5) ; Base of callee frame
577 : ST 1, 5(4) ; Store argument 4 in callee
578 : LDA 4, 7(5) ; Base of callee frame
579 : LDA 6, 583(0) ; Return address
580 : ST 6, 0(4) ; Store return in callee frame
581 : ADD 5, 4, 0 ; Push callee frame
582 : LDA 7, 397(0) ; Call fareySelectDen
583 : LD   1, 6(5) ;  Load function result
584 : LDC   2, 7(0) ;  Caller frame size
585 : SUB   5, 5, 2 ;  Pop back to caller
586 : ST   1, 4(5) ;  Store function result into stack frame
587 : LD   6, 0(5) ;  Load return address
588 : LDA  7, 0(6) ;  Return to caller
589 : LD   1, 3(5) ;  Load parameter 'N' into R1
590 : LDA 4, 7(5) ; Base of callee frame
591 : ST 1, 1(4) ; Store argument 0 in callee
592 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
593 : LDA 4, 10(5) ; Base of callee frame
594 : ST 1, 1(4) ; Store argument 0 in callee
595 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
596 : LDA 4, 10(5) ; Base of callee frame
597 : ST 1, 2(4) ; Store argument 1 in callee
598 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
599 : LDA 4, 10(5) ; Base of callee frame
600 : ST 1, 3(4) ; Store argument 2 in callee
601 : LD   1, 3(5) ;  Load parameter 'N' into R1
602 : LDA 4, 10(5) ; Base of callee frame
603 : ST 1, 4(4) ; Store argument 3 in callee
604 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
605 : LDA 4, 10(5) ; Base of callee frame
606 : ST 1, 5(4) ; Store argument 4 in callee
607 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
608 : LDA 4, 10(5) ; Base of callee frame
609 : ST 1, 6(4) ; Store argument 5 in callee
610 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
611 : LDA 4, 10(5) ; Base of callee frame
612 : ST 1, 7(4) ; Store argument 6 in callee
613 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
614 : LDA 4, 10(5) ; Base of callee frame
615 : ST 1, 8(4) ; Store argument 7 in callee
616 : LDA 4, 10(5) ; Base of callee frame
617 : LDA 6, 621(0) ; Return address
618 : ST 6, 0(4) ; Store return in callee frame
619 : ADD 5, 4, 0 ; Push callee frame
620 : LDA 7, 131(0) ; Call whileLoopFor
621 : LD   1, 9(5) ;  Load function result
622 : LDC   2, 10(0) ;  Caller frame size
623 : SUB   5, 5, 2 ;  Pop back to caller
624 : LDA 4, 7(5) ; Base of callee frame
625 : ST 1, 2(4) ; Store argument 1 in callee
626 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
627 : LDA 4, 10(5) ; Base of callee frame
628 : ST 1, 1(4) ; Store argument 0 in callee
629 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
630 : LDA 4, 10(5) ; Base of callee frame
631 : ST 1, 2(4) ; Store argument 1 in callee
632 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
633 : LDA 4, 10(5) ; Base of callee frame
634 : ST 1, 3(4) ; Store argument 2 in callee
635 : LD   1, 3(5) ;  Load parameter 'N' into R1
636 : LDA 4, 10(5) ; Base of callee frame
637 : ST 1, 4(4) ; Store argument 3 in callee
638 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
639 : LDA 4, 10(5) ; Base of callee frame
640 : ST 1, 5(4) ; Store argument 4 in callee
641 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
642 : LDA 4, 10(5) ; Base of callee frame
643 : ST 1, 6(4) ; Store argument 5 in callee
644 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
645 : LDA 4, 10(5) ; Base of callee frame
646 : ST 1, 7(4) ; Store argument 6 in callee
647 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
648 : LDA 4, 10(5) ; Base of callee frame
649 : ST 1, 8(4) ; Store argument 7 in callee
650 : LDA 4, 10(5) ; Base of callee frame
651 : LDA 6, 655(0) ; Return address
652 : ST 6, 0(4) ; Store return in callee frame
653 : ADD 5, 4, 0 ; Push callee frame
654 : LDA 7, 131(0) ; Call whileLoopFor
655 : LD   1, 9(5) ;  Load function result
656 : LDC   2, 10(0) ;  Caller frame size
657 : SUB   5, 5, 2 ;  Pop back to caller
658 : LDA 4, 7(5) ; Base of callee frame
659 : ST 1, 3(4) ; Store argument 2 in callee
660 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
661 : LDA 4, 10(5) ; Base of callee frame
662 : ST 1, 1(4) ; Store argument 0 in callee
663 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
664 : LDA 4, 10(5) ; Base of callee frame
665 : ST 1, 2(4) ; Store argument 1 in callee
666 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
667 : LDA 4, 10(5) ; Base of callee frame
668 : ST 1, 3(4) ; Store argument 2 in callee
669 : LD   1, 3(5) ;  Load parameter 'N' into R1
670 : LDA 4, 10(5) ; Base of callee frame
671 : ST 1, 4(4) ; Store argument 3 in callee
672 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
673 : LDA 4, 10(5) ; Base of callee frame
674 : ST 1, 5(4) ; Store argument 4 in callee
675 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
676 : LDA 4, 10(5) ; Base of callee frame
677 : ST 1, 6(4) ; Store argument 5 in callee
678 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
679 : LDA 4, 10(5) ; Base of callee frame
680 : ST 1, 7(4) ; Store argument 6 in callee
681 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
682 : LDA 4, 10(5) ; Base of callee frame
683 : ST 1, 8(4) ; Store argument 7 in callee
684 : LDA 4, 10(5) ; Base of callee frame
685 : LDA 6, 689(0) ; Return address
686 : ST 6, 0(4) ; Store return in callee frame
687 : ADD 5, 4, 0 ; Push callee frame
688 : LDA 7, 131(0) ; Call whileLoopFor
689 : LD   1, 9(5) ;  Load function result
690 : LDC   2, 10(0) ;  Caller frame size
691 : SUB   5, 5, 2 ;  Pop back to caller
692 : LDA 4, 7(5) ; Base of callee frame
693 : ST 1, 4(4) ; Store argument 3 in callee
694 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
695 : LDA 4, 10(5) ; Base of callee frame
696 : ST 1, 1(4) ; Store argument 0 in callee
697 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
698 : LDA 4, 10(5) ; Base of callee frame
699 : ST 1, 2(4) ; Store argument 1 in callee
700 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
701 : LDA 4, 10(5) ; Base of callee frame
702 : ST 1, 3(4) ; Store argument 2 in callee
703 : LD   1, 3(5) ;  Load parameter 'N' into R1
704 : LDA 4, 10(5) ; Base of callee frame
705 : ST 1, 4(4) ; Store argument 3 in callee
706 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
707 : LDA 4, 10(5) ; Base of callee frame
708 : ST 1, 5(4) ; Store argument 4 in callee
709 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
710 : LDA 4, 10(5) ; Base of callee frame
711 : ST 1, 6(4) ; Store argument 5 in callee
712 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
713 : LDA 4, 10(5) ; Base of callee frame
714 : ST 1, 7(4) ; Store argument 6 in callee
715 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
716 : LDA 4, 10(5) ; Base of callee frame
717 : ST 1, 8(4) ; Store argument 7 in callee
718 : LDA 4, 10(5) ; Base of callee frame
719 : LDA 6, 723(0) ; Return address
720 : ST 6, 0(4) ; Store return in callee frame
721 : ADD 5, 4, 0 ; Push callee frame
722 : LDA 7, 131(0) ; Call whileLoopFor
723 : LD   1, 9(5) ;  Load function result
724 : LDC   2, 10(0) ;  Caller frame size
725 : SUB   5, 5, 2 ;  Pop back to caller
726 : LDA 4, 7(5) ; Base of callee frame
727 : ST 1, 5(4) ; Store argument 4 in callee
728 : LDA 4, 7(5) ; Base of callee frame
729 : LDA 6, 733(0) ; Return address
730 : ST 6, 0(4) ; Store return in callee frame
731 : ADD 5, 4, 0 ; Push callee frame
732 : LDA 7, 418(0) ; Call fareySelectNum
733 : LD   1, 6(5) ;  Load function result
734 : LDC   2, 7(0) ;  Caller frame size
735 : SUB   5, 5, 2 ;  Pop back to caller
736 : ST   1, 4(5) ;  Store function result into stack frame
737 : LD   6, 0(5) ;  Load return address
738 : LDA  7, 0(6) ;  Return to caller
