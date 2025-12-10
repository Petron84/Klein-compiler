0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LD   2, 3(0) ;  Load CLI arg 3 into register
7 : ST   2, 3(5) ;  Store the argument into stack frame
8 : LDA  6, 2(7) ;  Calculate return address
9 : ST   6, 0(5) ;  Store return address in main stack frame
10 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT  1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
13 : OUT  1, 0, 0 ;  Hardcoded print function
14 : LD   6, 0(5) ;  Load return addess from stack frame.
15 : LDA  7, 0(6) ;  Jump to return address.
16 : LDA 4, 5(5) ; Base of callee frame
17 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
20 : ST 1, 2(4) ; Store argument 1 in callee
21 : LD   1, 3(5) ;  Load parameter 'N' into R1
22 : ST 1, 3(4) ; Store argument 2 in callee
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame
26 : LDA 7, 550(0) ; Call fareyNum
27 : LD   1, 4(5) ;  Load function result
28 : LDC   2, 5(0) ;  Caller frame size
29 : SUB   5, 5, 2 ;  Pop back to caller
30 : SUB   4, 4, 2 ;  Pop back to caller
31 : LDA 4, 3(5) ; Base of callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return addr in callee frame
34 : ADD 5, 4, 0 ; Push new frame
35 : LDA 7, 13(0) ; Call print
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop frame
38 : LDA 4, 5(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee
41 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LD   1, 3(5) ;  Load parameter 'N' into R1
44 : ST 1, 3(4) ; Store argument 2 in callee
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame
48 : LDA 7, 432(0) ; Call fareyDen
49 : LD   1, 4(5) ;  Load function result
50 : LDC   2, 5(0) ;  Caller frame size
51 : SUB   5, 5, 2 ;  Pop back to caller
52 : SUB   4, 4, 2 ;  Pop back to caller
53 : ST 1, 4(5) ; Store result into caller’s frame
54 : LD   1, 4(5) ;  Load return value into register 1
55 : LD  6, 0(5) ;  Load return address for main function into register 6
56 : LDA  7, 0(6) ;  Jump to return address of main function
57 : LD   1, 2(5) ;  Load parameter 'y' into R1
58 : ST   1, 3(4) ;  Store right operand result into return value slot
59 : LD   1, 1(5) ;  Load parameter 'x' into R1
60 : ADD  2, 1, 0 ;  Move left operand to register 2
61 : LD   1, 3(4) ;  Return right operand back into register 1
62 : SUB  1, 2, 1 ;  left - right for less-than check
63 : JLT  1, 2(7) ;  If R1 < 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : ADD  2, 1, 0 ;  Move left operand to register 2
68 : LD   1, 2(5) ;  Load parameter 'y' into R1
69 : ST   1, 3(4) ;  Store right operand result into return value slot
70 : LD   1, 1(5) ;  Load parameter 'x' into R1
71 : ADD  2, 1, 0 ;  Move left operand to register 2
72 : LD   1, 3(4) ;  Return right operand back into register 1
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ADD  1, 2, 1 ;  R1 = left OR right
79 : LDC  2, 1(0) ;  Load 1 into R2
80 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LDA 4, 4(5) ; Base of callee frame
85 : LD   1, 4(5) ;  Load parameter 'yd' into R1
86 : ST   1, 3(4) ;  Store right operand result into return value slot
87 : LD   1, 1(5) ;  Load parameter 'x' into R1
88 : ADD  2, 1, 0 ;  Move left operand to register 2
89 : LD   1, 3(4) ;  Return right operand back into register 1
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : ST 1, 1(4) ; Store argument 0 in callee
92 : LD   1, 2(5) ;  Load parameter 'xd' into R1
93 : ST   1, 3(4) ;  Store right operand result into return value slot
94 : LD   1, 3(5) ;  Load parameter 'y' into R1
95 : ADD  2, 1, 0 ;  Move left operand to register 2
96 : LD   1, 3(4) ;  Return right operand back into register 1
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ST 1, 2(4) ; Store argument 1 in callee
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 57(0) ; Call greater
103 : LD   1, 3(5) ;  Load function result
104 : LDC   2, 4(0) ;  Caller frame size
105 : SUB   5, 5, 2 ;  Pop back to caller
106 : SUB   4, 4, 2 ;  Pop back to caller
107 : ST   1, 5(5) ;  Store function result into stack frame
108 : LD   6, 0(5) ;  Load return address
109 : LDA  7, 0(6) ;  Return to caller
110 : LD   1, 4(5) ;  Load parameter 'yd' into R1
111 : ST   1, 3(4) ;  Store right operand result into return value slot
112 : LD   1, 1(5) ;  Load parameter 'x' into R1
113 : ADD  2, 1, 0 ;  Move left operand to register 2
114 : LD   1, 3(4) ;  Return right operand back into register 1
115 : MUL  1, 2, 1 ;  R1 = left * right
116 : ADD  2, 1, 0 ;  Move left operand to register 2
117 : LD   1, 2(5) ;  Load parameter 'xd' into R1
118 : ST   1, 3(4) ;  Store right operand result into return value slot
119 : LD   1, 3(5) ;  Load parameter 'y' into R1
120 : ADD  2, 1, 0 ;  Move left operand to register 2
121 : LD   1, 3(4) ;  Return right operand back into register 1
122 : MUL  1, 2, 1 ;  R1 = left * right
123 : SUB  1, 2, 1 ;  left - right for equality check
124 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
125 : LDC  1, 0(0) ;  false
126 : LDA  7, 1(7) ;  skip setting true
127 : LDC  1, 1(0) ;  true
128 : ST   1, 5(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LDA 4, 4(5) ; Base of callee frame
132 : LD   1, 6(5) ;  Load parameter 'b' into R1
133 : ST 1, 1(4) ; Store argument 0 in callee
134 : LD   1, 4(5) ;  Load parameter 'N' into R1
135 : ST 1, 2(4) ; Store argument 1 in callee
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return in callee frame
138 : ADD 5, 4, 0 ; Push callee frame
139 : LDA 7, 57(0) ; Call greater
140 : LD   1, 3(5) ;  Load function result
141 : LDC   2, 4(0) ;  Caller frame size
142 : SUB   5, 5, 2 ;  Pop back to caller
143 : SUB   4, 4, 2 ;  Pop back to caller
144 : ADD  2, 1, 0 ;  Move left operand to register 2
145 : LDA 4, 4(5) ; Base of callee frame
146 : LD   1, 8(5) ;  Load parameter 'd' into R1
147 : ST 1, 1(4) ; Store argument 0 in callee
148 : LD   1, 4(5) ;  Load parameter 'N' into R1
149 : ST 1, 2(4) ; Store argument 1 in callee
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame
153 : LDA 7, 57(0) ; Call greater
154 : LD   1, 3(5) ;  Load function result
155 : LDC   2, 4(0) ;  Caller frame size
156 : SUB   5, 5, 2 ;  Pop back to caller
157 : SUB   4, 4, 2 ;  Pop back to caller
158 : ADD  1, 2, 1 ;  R1 = left OR right
159 : JEQ  1, 201(0) ;  If condition is false, jump to ELSE
160 : LDC  1, 1(0) ;  Load integer-literal value into register 1
161 : ST   1, 3(4) ;  Store right operand result into return value slot
162 : LD   1, 1(5) ;  Load parameter 'selector' into R1
163 : ADD  2, 1, 0 ;  Move left operand to register 2
164 : LD   1, 3(4) ;  Return right operand back into register 1
165 : SUB  1, 2, 1 ;  left - right for equality check
166 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
167 : LDC  1, 0(0) ;  false
168 : LDA  7, 1(7) ;  skip setting true
169 : LDC  1, 1(0) ;  true
170 : JEQ  1, 173(0) ;  If condition is false, jump to ELSE
171 : LD   1, 5(5) ;  Load parameter 'a' into R1
172 : LDA  7, 200(0) ;  Skip ELSE block
173 : LDC  1, 2(0) ;  Load integer-literal value into register 1
174 : ST   1, 3(4) ;  Store right operand result into return value slot
175 : LD   1, 1(5) ;  Load parameter 'selector' into R1
176 : ADD  2, 1, 0 ;  Move left operand to register 2
177 : LD   1, 3(4) ;  Return right operand back into register 1
178 : SUB  1, 2, 1 ;  left - right for equality check
179 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
180 : LDC  1, 0(0) ;  false
181 : LDA  7, 1(7) ;  skip setting true
182 : LDC  1, 1(0) ;  true
183 : JEQ  1, 186(0) ;  If condition is false, jump to ELSE
184 : LD   1, 6(5) ;  Load parameter 'b' into R1
185 : LDA  7, 200(0) ;  Skip ELSE block
186 : LDC  1, 3(0) ;  Load integer-literal value into register 1
187 : ST   1, 3(4) ;  Store right operand result into return value slot
188 : LD   1, 1(5) ;  Load parameter 'selector' into R1
189 : ADD  2, 1, 0 ;  Move left operand to register 2
190 : LD   1, 3(4) ;  Return right operand back into register 1
191 : SUB  1, 2, 1 ;  left - right for equality check
192 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
193 : LDC  1, 0(0) ;  false
194 : LDA  7, 1(7) ;  skip setting true
195 : LDC  1, 1(0) ;  true
196 : JEQ  1, 199(0) ;  If condition is false, jump to ELSE
197 : LD   1, 7(5) ;  Load parameter 'c' into R1
198 : LDA  7, 200(0) ;  Skip ELSE block
199 : LD   1, 8(5) ;  Load parameter 'd' into R1
200 : LDA  7, 389(0) ;  Skip ELSE block
201 : LDA 4, 6(5) ; Base of callee frame
202 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
203 : ST 1, 1(4) ; Store argument 0 in callee
204 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
205 : ST 1, 2(4) ; Store argument 1 in callee
206 : LD   1, 7(5) ;  Load parameter 'c' into R1
207 : ST   1, 3(4) ;  Store right operand result into return value slot
208 : LD   1, 5(5) ;  Load parameter 'a' into R1
209 : ADD  2, 1, 0 ;  Move left operand to register 2
210 : LD   1, 3(4) ;  Return right operand back into register 1
211 : ADD  1, 2, 1 ;  R1 = left + right
212 : ST 1, 3(4) ; Store argument 2 in callee
213 : LD   1, 8(5) ;  Load parameter 'd' into R1
214 : ST   1, 3(4) ;  Store right operand result into return value slot
215 : LD   1, 6(5) ;  Load parameter 'b' into R1
216 : ADD  2, 1, 0 ;  Move left operand to register 2
217 : LD   1, 3(4) ;  Return right operand back into register 1
218 : ADD  1, 2, 1 ;  R1 = left + right
219 : ST 1, 4(4) ; Store argument 3 in callee
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return in callee frame
222 : ADD 5, 4, 0 ; Push callee frame
223 : LDA 7, 110(0) ; Call fractionEqual
224 : LD   1, 5(5) ;  Load function result
225 : LDC   2, 6(0) ;  Caller frame size
226 : SUB   5, 5, 2 ;  Pop back to caller
227 : SUB   4, 4, 2 ;  Pop back to caller
228 : JEQ  1, 290(0) ;  If condition is false, jump to ELSE
229 : LDC  1, 1(0) ;  Load integer-literal value into register 1
230 : ST   1, 3(4) ;  Store right operand result into return value slot
231 : LD   1, 1(5) ;  Load parameter 'selector' into R1
232 : ADD  2, 1, 0 ;  Move left operand to register 2
233 : LD   1, 3(4) ;  Return right operand back into register 1
234 : SUB  1, 2, 1 ;  left - right for equality check
235 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
236 : LDC  1, 0(0) ;  false
237 : LDA  7, 1(7) ;  skip setting true
238 : LDC  1, 1(0) ;  true
239 : JEQ  1, 247(0) ;  If condition is false, jump to ELSE
240 : LD   1, 7(5) ;  Load parameter 'c' into R1
241 : ST   1, 3(4) ;  Store right operand result into return value slot
242 : LD   1, 5(5) ;  Load parameter 'a' into R1
243 : ADD  2, 1, 0 ;  Move left operand to register 2
244 : LD   1, 3(4) ;  Return right operand back into register 1
245 : ADD  1, 2, 1 ;  R1 = left + right
246 : LDA  7, 289(0) ;  Skip ELSE block
247 : LDC  1, 2(0) ;  Load integer-literal value into register 1
248 : ST   1, 3(4) ;  Store right operand result into return value slot
249 : LD   1, 1(5) ;  Load parameter 'selector' into R1
250 : ADD  2, 1, 0 ;  Move left operand to register 2
251 : LD   1, 3(4) ;  Return right operand back into register 1
252 : SUB  1, 2, 1 ;  left - right for equality check
253 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
254 : LDC  1, 0(0) ;  false
255 : LDA  7, 1(7) ;  skip setting true
256 : LDC  1, 1(0) ;  true
257 : JEQ  1, 265(0) ;  If condition is false, jump to ELSE
258 : LD   1, 8(5) ;  Load parameter 'd' into R1
259 : ST   1, 3(4) ;  Store right operand result into return value slot
260 : LD   1, 6(5) ;  Load parameter 'b' into R1
261 : ADD  2, 1, 0 ;  Move left operand to register 2
262 : LD   1, 3(4) ;  Return right operand back into register 1
263 : ADD  1, 2, 1 ;  R1 = left + right
264 : LDA  7, 289(0) ;  Skip ELSE block
265 : LDC  1, 3(0) ;  Load integer-literal value into register 1
266 : ST   1, 3(4) ;  Store right operand result into return value slot
267 : LD   1, 1(5) ;  Load parameter 'selector' into R1
268 : ADD  2, 1, 0 ;  Move left operand to register 2
269 : LD   1, 3(4) ;  Return right operand back into register 1
270 : SUB  1, 2, 1 ;  left - right for equality check
271 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
272 : LDC  1, 0(0) ;  false
273 : LDA  7, 1(7) ;  skip setting true
274 : LDC  1, 1(0) ;  true
275 : JEQ  1, 283(0) ;  If condition is false, jump to ELSE
276 : LD   1, 7(5) ;  Load parameter 'c' into R1
277 : ST   1, 3(4) ;  Store right operand result into return value slot
278 : LD   1, 5(5) ;  Load parameter 'a' into R1
279 : ADD  2, 1, 0 ;  Move left operand to register 2
280 : LD   1, 3(4) ;  Return right operand back into register 1
281 : ADD  1, 2, 1 ;  R1 = left + right
282 : LDA  7, 289(0) ;  Skip ELSE block
283 : LD   1, 8(5) ;  Load parameter 'd' into R1
284 : ST   1, 3(4) ;  Store right operand result into return value slot
285 : LD   1, 6(5) ;  Load parameter 'b' into R1
286 : ADD  2, 1, 0 ;  Move left operand to register 2
287 : LD   1, 3(4) ;  Return right operand back into register 1
288 : ADD  1, 2, 1 ;  R1 = left + right
289 : LDA  7, 389(0) ;  Skip ELSE block
290 : LDA 4, 6(5) ; Base of callee frame
291 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
292 : ST 1, 1(4) ; Store argument 0 in callee
293 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
294 : ST 1, 2(4) ; Store argument 1 in callee
295 : LD   1, 7(5) ;  Load parameter 'c' into R1
296 : ST   1, 3(4) ;  Store right operand result into return value slot
297 : LD   1, 5(5) ;  Load parameter 'a' into R1
298 : ADD  2, 1, 0 ;  Move left operand to register 2
299 : LD   1, 3(4) ;  Return right operand back into register 1
300 : ADD  1, 2, 1 ;  R1 = left + right
301 : ST 1, 3(4) ; Store argument 2 in callee
302 : LD   1, 8(5) ;  Load parameter 'd' into R1
303 : ST   1, 3(4) ;  Store right operand result into return value slot
304 : LD   1, 6(5) ;  Load parameter 'b' into R1
305 : ADD  2, 1, 0 ;  Move left operand to register 2
306 : LD   1, 3(4) ;  Return right operand back into register 1
307 : ADD  1, 2, 1 ;  R1 = left + right
308 : ST 1, 4(4) ; Store argument 3 in callee
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame
312 : LDA 7, 84(0) ; Call fractionGreater
313 : LD   1, 5(5) ;  Load function result
314 : LDC   2, 6(0) ;  Caller frame size
315 : SUB   5, 5, 2 ;  Pop back to caller
316 : SUB   4, 4, 2 ;  Pop back to caller
317 : JEQ  1, 354(0) ;  If condition is false, jump to ELSE
318 : LDA 4, 10(5) ; Base of callee frame
319 : LD   1, 1(5) ;  Load parameter 'selector' into R1
320 : ST 1, 1(4) ; Store argument 0 in callee
321 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
322 : ST 1, 2(4) ; Store argument 1 in callee
323 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
324 : ST 1, 3(4) ; Store argument 2 in callee
325 : LD   1, 4(5) ;  Load parameter 'N' into R1
326 : ST 1, 4(4) ; Store argument 3 in callee
327 : LD   1, 7(5) ;  Load parameter 'c' into R1
328 : ST   1, 3(4) ;  Store right operand result into return value slot
329 : LD   1, 5(5) ;  Load parameter 'a' into R1
330 : ADD  2, 1, 0 ;  Move left operand to register 2
331 : LD   1, 3(4) ;  Return right operand back into register 1
332 : ADD  1, 2, 1 ;  R1 = left + right
333 : ST 1, 5(4) ; Store argument 4 in callee
334 : LD   1, 8(5) ;  Load parameter 'd' into R1
335 : ST   1, 3(4) ;  Store right operand result into return value slot
336 : LD   1, 6(5) ;  Load parameter 'b' into R1
337 : ADD  2, 1, 0 ;  Move left operand to register 2
338 : LD   1, 3(4) ;  Return right operand back into register 1
339 : ADD  1, 2, 1 ;  R1 = left + right
340 : ST 1, 6(4) ; Store argument 5 in callee
341 : LD   1, 7(5) ;  Load parameter 'c' into R1
342 : ST 1, 7(4) ; Store argument 6 in callee
343 : LD   1, 8(5) ;  Load parameter 'd' into R1
344 : ST 1, 8(4) ; Store argument 7 in callee
345 : LDA 6, 349(0) ; Return address
346 : ST 6, 0(4) ; Store return in callee frame
347 : ADD 5, 4, 0 ; Push callee frame
348 : LDA 7, 131(0) ; Call whileLoopFor
349 : LD   1, 9(5) ;  Load function result
350 : LDC   2, 10(0) ;  Caller frame size
351 : SUB   5, 5, 2 ;  Pop back to caller
352 : SUB   4, 4, 2 ;  Pop back to caller
353 : LDA  7, 389(0) ;  Skip ELSE block
354 : LDA 4, 10(5) ; Base of callee frame
355 : LD   1, 1(5) ;  Load parameter 'selector' into R1
356 : ST 1, 1(4) ; Store argument 0 in callee
357 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
358 : ST 1, 2(4) ; Store argument 1 in callee
359 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
360 : ST 1, 3(4) ; Store argument 2 in callee
361 : LD   1, 4(5) ;  Load parameter 'N' into R1
362 : ST 1, 4(4) ; Store argument 3 in callee
363 : LD   1, 5(5) ;  Load parameter 'a' into R1
364 : ST 1, 5(4) ; Store argument 4 in callee
365 : LD   1, 6(5) ;  Load parameter 'b' into R1
366 : ST 1, 6(4) ; Store argument 5 in callee
367 : LD   1, 7(5) ;  Load parameter 'c' into R1
368 : ST   1, 3(4) ;  Store right operand result into return value slot
369 : LD   1, 5(5) ;  Load parameter 'a' into R1
370 : ADD  2, 1, 0 ;  Move left operand to register 2
371 : LD   1, 3(4) ;  Return right operand back into register 1
372 : ADD  1, 2, 1 ;  R1 = left + right
373 : ST 1, 7(4) ; Store argument 6 in callee
374 : LD   1, 8(5) ;  Load parameter 'd' into R1
375 : ST   1, 3(4) ;  Store right operand result into return value slot
376 : LD   1, 6(5) ;  Load parameter 'b' into R1
377 : ADD  2, 1, 0 ;  Move left operand to register 2
378 : LD   1, 3(4) ;  Return right operand back into register 1
379 : ADD  1, 2, 1 ;  R1 = left + right
380 : ST 1, 8(4) ; Store argument 7 in callee
381 : LDA 6, 385(0) ; Return address
382 : ST 6, 0(4) ; Store return in callee frame
383 : ADD 5, 4, 0 ; Push callee frame
384 : LDA 7, 131(0) ; Call whileLoopFor
385 : LD   1, 9(5) ;  Load function result
386 : LDC   2, 10(0) ;  Caller frame size
387 : SUB   5, 5, 2 ;  Pop back to caller
388 : SUB   4, 4, 2 ;  Pop back to caller
389 : ST   1, 9(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LDA 4, 4(5) ; Base of callee frame
393 : LD   1, 3(5) ;  Load parameter 'b' into R1
394 : ST 1, 1(4) ; Store argument 0 in callee
395 : LD   1, 1(5) ;  Load parameter 'N' into R1
396 : ST 1, 2(4) ; Store argument 1 in callee
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return in callee frame
399 : ADD 5, 4, 0 ; Push callee frame
400 : LDA 7, 57(0) ; Call greater
401 : LD   1, 3(5) ;  Load function result
402 : LDC   2, 4(0) ;  Caller frame size
403 : SUB   5, 5, 2 ;  Pop back to caller
404 : SUB   4, 4, 2 ;  Pop back to caller
405 : JEQ  1, 408(0) ;  If condition is false, jump to ELSE
406 : LD   1, 5(5) ;  Load parameter 'd' into R1
407 : LDA  7, 409(0) ;  Skip ELSE block
408 : LD   1, 3(5) ;  Load parameter 'b' into R1
409 : ST   1, 6(5) ;  Store function result into stack frame
410 : LD   6, 0(5) ;  Load return address
411 : LDA  7, 0(6) ;  Return to caller
412 : LDA 4, 4(5) ; Base of callee frame
413 : LD   1, 3(5) ;  Load parameter 'b' into R1
414 : ST 1, 1(4) ; Store argument 0 in callee
415 : LD   1, 1(5) ;  Load parameter 'N' into R1
416 : ST 1, 2(4) ; Store argument 1 in callee
417 : LDA 6, 421(0) ; Return address
418 : ST 6, 0(4) ; Store return in callee frame
419 : ADD 5, 4, 0 ; Push callee frame
420 : LDA 7, 57(0) ; Call greater
421 : LD   1, 3(5) ;  Load function result
422 : LDC   2, 4(0) ;  Caller frame size
423 : SUB   5, 5, 2 ;  Pop back to caller
424 : SUB   4, 4, 2 ;  Pop back to caller
425 : JEQ  1, 428(0) ;  If condition is false, jump to ELSE
426 : LD   1, 4(5) ;  Load parameter 'c' into R1
427 : LDA  7, 429(0) ;  Skip ELSE block
428 : LD   1, 2(5) ;  Load parameter 'a' into R1
429 : ST   1, 6(5) ;  Store function result into stack frame
430 : LD   6, 0(5) ;  Load return address
431 : LDA  7, 0(6) ;  Return to caller
432 : LDA 4, 7(5) ; Base of callee frame
433 : LD   1, 3(5) ;  Load parameter 'N' into R1
434 : ST 1, 1(4) ; Store argument 0 in callee
435 : LDA 4, 10(5) ; Base of callee frame
436 : LDC  1, 1(0) ;  Load integer-literal value into register 1
437 : ST 1, 1(4) ; Store argument 0 in callee
438 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
439 : ST 1, 2(4) ; Store argument 1 in callee
440 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
441 : ST 1, 3(4) ; Store argument 2 in callee
442 : LD   1, 3(5) ;  Load parameter 'N' into R1
443 : ST 1, 4(4) ; Store argument 3 in callee
444 : LDC  1, 0(0) ;  Load integer-literal value into register 1
445 : ST 1, 5(4) ; Store argument 4 in callee
446 : LDC  1, 1(0) ;  Load integer-literal value into register 1
447 : ST 1, 6(4) ; Store argument 5 in callee
448 : LDC  1, 1(0) ;  Load integer-literal value into register 1
449 : ST 1, 7(4) ; Store argument 6 in callee
450 : LDC  1, 1(0) ;  Load integer-literal value into register 1
451 : ST 1, 8(4) ; Store argument 7 in callee
452 : LDA 6, 456(0) ; Return address
453 : ST 6, 0(4) ; Store return in callee frame
454 : ADD 5, 4, 0 ; Push callee frame
455 : LDA 7, 131(0) ; Call whileLoopFor
456 : LD   1, 9(5) ;  Load function result
457 : LDC   2, 10(0) ;  Caller frame size
458 : SUB   5, 5, 2 ;  Pop back to caller
459 : SUB   4, 4, 2 ;  Pop back to caller
460 : ST 1, 2(4) ; Store argument 1 in callee
461 : LDA 4, 10(5) ; Base of callee frame
462 : LDC  1, 2(0) ;  Load integer-literal value into register 1
463 : ST 1, 1(4) ; Store argument 0 in callee
464 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
465 : ST 1, 2(4) ; Store argument 1 in callee
466 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
467 : ST 1, 3(4) ; Store argument 2 in callee
468 : LD   1, 3(5) ;  Load parameter 'N' into R1
469 : ST 1, 4(4) ; Store argument 3 in callee
470 : LDC  1, 0(0) ;  Load integer-literal value into register 1
471 : ST 1, 5(4) ; Store argument 4 in callee
472 : LDC  1, 1(0) ;  Load integer-literal value into register 1
473 : ST 1, 6(4) ; Store argument 5 in callee
474 : LDC  1, 1(0) ;  Load integer-literal value into register 1
475 : ST 1, 7(4) ; Store argument 6 in callee
476 : LDC  1, 1(0) ;  Load integer-literal value into register 1
477 : ST 1, 8(4) ; Store argument 7 in callee
478 : LDA 6, 482(0) ; Return address
479 : ST 6, 0(4) ; Store return in callee frame
480 : ADD 5, 4, 0 ; Push callee frame
481 : LDA 7, 131(0) ; Call whileLoopFor
482 : LD   1, 9(5) ;  Load function result
483 : LDC   2, 10(0) ;  Caller frame size
484 : SUB   5, 5, 2 ;  Pop back to caller
485 : SUB   4, 4, 2 ;  Pop back to caller
486 : ST 1, 3(4) ; Store argument 2 in callee
487 : LDA 4, 10(5) ; Base of callee frame
488 : LDC  1, 3(0) ;  Load integer-literal value into register 1
489 : ST 1, 1(4) ; Store argument 0 in callee
490 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
491 : ST 1, 2(4) ; Store argument 1 in callee
492 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
493 : ST 1, 3(4) ; Store argument 2 in callee
494 : LD   1, 3(5) ;  Load parameter 'N' into R1
495 : ST 1, 4(4) ; Store argument 3 in callee
496 : LDC  1, 0(0) ;  Load integer-literal value into register 1
497 : ST 1, 5(4) ; Store argument 4 in callee
498 : LDC  1, 1(0) ;  Load integer-literal value into register 1
499 : ST 1, 6(4) ; Store argument 5 in callee
500 : LDC  1, 1(0) ;  Load integer-literal value into register 1
501 : ST 1, 7(4) ; Store argument 6 in callee
502 : LDC  1, 1(0) ;  Load integer-literal value into register 1
503 : ST 1, 8(4) ; Store argument 7 in callee
504 : LDA 6, 508(0) ; Return address
505 : ST 6, 0(4) ; Store return in callee frame
506 : ADD 5, 4, 0 ; Push callee frame
507 : LDA 7, 131(0) ; Call whileLoopFor
508 : LD   1, 9(5) ;  Load function result
509 : LDC   2, 10(0) ;  Caller frame size
510 : SUB   5, 5, 2 ;  Pop back to caller
511 : SUB   4, 4, 2 ;  Pop back to caller
512 : ST 1, 4(4) ; Store argument 3 in callee
513 : LDA 4, 10(5) ; Base of callee frame
514 : LDC  1, 4(0) ;  Load integer-literal value into register 1
515 : ST 1, 1(4) ; Store argument 0 in callee
516 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
517 : ST 1, 2(4) ; Store argument 1 in callee
518 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
519 : ST 1, 3(4) ; Store argument 2 in callee
520 : LD   1, 3(5) ;  Load parameter 'N' into R1
521 : ST 1, 4(4) ; Store argument 3 in callee
522 : LDC  1, 0(0) ;  Load integer-literal value into register 1
523 : ST 1, 5(4) ; Store argument 4 in callee
524 : LDC  1, 1(0) ;  Load integer-literal value into register 1
525 : ST 1, 6(4) ; Store argument 5 in callee
526 : LDC  1, 1(0) ;  Load integer-literal value into register 1
527 : ST 1, 7(4) ; Store argument 6 in callee
528 : LDC  1, 1(0) ;  Load integer-literal value into register 1
529 : ST 1, 8(4) ; Store argument 7 in callee
530 : LDA 6, 534(0) ; Return address
531 : ST 6, 0(4) ; Store return in callee frame
532 : ADD 5, 4, 0 ; Push callee frame
533 : LDA 7, 131(0) ; Call whileLoopFor
534 : LD   1, 9(5) ;  Load function result
535 : LDC   2, 10(0) ;  Caller frame size
536 : SUB   5, 5, 2 ;  Pop back to caller
537 : SUB   4, 4, 2 ;  Pop back to caller
538 : ST 1, 5(4) ; Store argument 4 in callee
539 : LDA 6, 543(0) ; Return address
540 : ST 6, 0(4) ; Store return in callee frame
541 : ADD 5, 4, 0 ; Push callee frame
542 : LDA 7, 392(0) ; Call fareySelectDen
543 : LD   1, 6(5) ;  Load function result
544 : LDC   2, 7(0) ;  Caller frame size
545 : SUB   5, 5, 2 ;  Pop back to caller
546 : SUB   4, 4, 2 ;  Pop back to caller
547 : ST   1, 4(5) ;  Store function result into stack frame
548 : LD   6, 0(5) ;  Load return address
549 : LDA  7, 0(6) ;  Return to caller
550 : LDA 4, 7(5) ; Base of callee frame
551 : LD   1, 3(5) ;  Load parameter 'N' into R1
552 : ST 1, 1(4) ; Store argument 0 in callee
553 : LDA 4, 10(5) ; Base of callee frame
554 : LDC  1, 1(0) ;  Load integer-literal value into register 1
555 : ST 1, 1(4) ; Store argument 0 in callee
556 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
557 : ST 1, 2(4) ; Store argument 1 in callee
558 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
559 : ST 1, 3(4) ; Store argument 2 in callee
560 : LD   1, 3(5) ;  Load parameter 'N' into R1
561 : ST 1, 4(4) ; Store argument 3 in callee
562 : LDC  1, 0(0) ;  Load integer-literal value into register 1
563 : ST 1, 5(4) ; Store argument 4 in callee
564 : LDC  1, 1(0) ;  Load integer-literal value into register 1
565 : ST 1, 6(4) ; Store argument 5 in callee
566 : LDC  1, 1(0) ;  Load integer-literal value into register 1
567 : ST 1, 7(4) ; Store argument 6 in callee
568 : LDC  1, 1(0) ;  Load integer-literal value into register 1
569 : ST 1, 8(4) ; Store argument 7 in callee
570 : LDA 6, 574(0) ; Return address
571 : ST 6, 0(4) ; Store return in callee frame
572 : ADD 5, 4, 0 ; Push callee frame
573 : LDA 7, 131(0) ; Call whileLoopFor
574 : LD   1, 9(5) ;  Load function result
575 : LDC   2, 10(0) ;  Caller frame size
576 : SUB   5, 5, 2 ;  Pop back to caller
577 : SUB   4, 4, 2 ;  Pop back to caller
578 : ST 1, 2(4) ; Store argument 1 in callee
579 : LDA 4, 10(5) ; Base of callee frame
580 : LDC  1, 2(0) ;  Load integer-literal value into register 1
581 : ST 1, 1(4) ; Store argument 0 in callee
582 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
583 : ST 1, 2(4) ; Store argument 1 in callee
584 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
585 : ST 1, 3(4) ; Store argument 2 in callee
586 : LD   1, 3(5) ;  Load parameter 'N' into R1
587 : ST 1, 4(4) ; Store argument 3 in callee
588 : LDC  1, 0(0) ;  Load integer-literal value into register 1
589 : ST 1, 5(4) ; Store argument 4 in callee
590 : LDC  1, 1(0) ;  Load integer-literal value into register 1
591 : ST 1, 6(4) ; Store argument 5 in callee
592 : LDC  1, 1(0) ;  Load integer-literal value into register 1
593 : ST 1, 7(4) ; Store argument 6 in callee
594 : LDC  1, 1(0) ;  Load integer-literal value into register 1
595 : ST 1, 8(4) ; Store argument 7 in callee
596 : LDA 6, 600(0) ; Return address
597 : ST 6, 0(4) ; Store return in callee frame
598 : ADD 5, 4, 0 ; Push callee frame
599 : LDA 7, 131(0) ; Call whileLoopFor
600 : LD   1, 9(5) ;  Load function result
601 : LDC   2, 10(0) ;  Caller frame size
602 : SUB   5, 5, 2 ;  Pop back to caller
603 : SUB   4, 4, 2 ;  Pop back to caller
604 : ST 1, 3(4) ; Store argument 2 in callee
605 : LDA 4, 10(5) ; Base of callee frame
606 : LDC  1, 3(0) ;  Load integer-literal value into register 1
607 : ST 1, 1(4) ; Store argument 0 in callee
608 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
609 : ST 1, 2(4) ; Store argument 1 in callee
610 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
611 : ST 1, 3(4) ; Store argument 2 in callee
612 : LD   1, 3(5) ;  Load parameter 'N' into R1
613 : ST 1, 4(4) ; Store argument 3 in callee
614 : LDC  1, 0(0) ;  Load integer-literal value into register 1
615 : ST 1, 5(4) ; Store argument 4 in callee
616 : LDC  1, 1(0) ;  Load integer-literal value into register 1
617 : ST 1, 6(4) ; Store argument 5 in callee
618 : LDC  1, 1(0) ;  Load integer-literal value into register 1
619 : ST 1, 7(4) ; Store argument 6 in callee
620 : LDC  1, 1(0) ;  Load integer-literal value into register 1
621 : ST 1, 8(4) ; Store argument 7 in callee
622 : LDA 6, 626(0) ; Return address
623 : ST 6, 0(4) ; Store return in callee frame
624 : ADD 5, 4, 0 ; Push callee frame
625 : LDA 7, 131(0) ; Call whileLoopFor
626 : LD   1, 9(5) ;  Load function result
627 : LDC   2, 10(0) ;  Caller frame size
628 : SUB   5, 5, 2 ;  Pop back to caller
629 : SUB   4, 4, 2 ;  Pop back to caller
630 : ST 1, 4(4) ; Store argument 3 in callee
631 : LDA 4, 10(5) ; Base of callee frame
632 : LDC  1, 4(0) ;  Load integer-literal value into register 1
633 : ST 1, 1(4) ; Store argument 0 in callee
634 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
635 : ST 1, 2(4) ; Store argument 1 in callee
636 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
637 : ST 1, 3(4) ; Store argument 2 in callee
638 : LD   1, 3(5) ;  Load parameter 'N' into R1
639 : ST 1, 4(4) ; Store argument 3 in callee
640 : LDC  1, 0(0) ;  Load integer-literal value into register 1
641 : ST 1, 5(4) ; Store argument 4 in callee
642 : LDC  1, 1(0) ;  Load integer-literal value into register 1
643 : ST 1, 6(4) ; Store argument 5 in callee
644 : LDC  1, 1(0) ;  Load integer-literal value into register 1
645 : ST 1, 7(4) ; Store argument 6 in callee
646 : LDC  1, 1(0) ;  Load integer-literal value into register 1
647 : ST 1, 8(4) ; Store argument 7 in callee
648 : LDA 6, 652(0) ; Return address
649 : ST 6, 0(4) ; Store return in callee frame
650 : ADD 5, 4, 0 ; Push callee frame
651 : LDA 7, 131(0) ; Call whileLoopFor
652 : LD   1, 9(5) ;  Load function result
653 : LDC   2, 10(0) ;  Caller frame size
654 : SUB   5, 5, 2 ;  Pop back to caller
655 : SUB   4, 4, 2 ;  Pop back to caller
656 : ST 1, 5(4) ; Store argument 4 in callee
657 : LDA 6, 661(0) ; Return address
658 : ST 6, 0(4) ; Store return in callee frame
659 : ADD 5, 4, 0 ; Push callee frame
660 : LDA 7, 412(0) ; Call fareySelectNum
661 : LD   1, 6(5) ;  Load function result
662 : LDC   2, 7(0) ;  Caller frame size
663 : SUB   5, 5, 2 ;  Pop back to caller
664 : SUB   4, 4, 2 ;  Pop back to caller
665 : ST   1, 4(5) ;  Store function result into stack frame
666 : LD   6, 0(5) ;  Load return address
667 : LDA  7, 0(6) ;  Return to caller
