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
17 : ST 1, 1(4) ; Store argument 0 in callee
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : ST 1, 2(4) ; Store argument 1 in callee
20 : LD   1, 3(5) ;  Load parameter 'N' into R1
21 : ST 1, 3(4) ; Store argument 2 in callee
22 : LDA 6, 26(0) ; Return address
23 : ST 6, 0(4) ; Store return in callee frame
24 : ADD 5, 4, 0 ; Push callee frame
25 : LDA 7, 549(0) ; Call fareyNum
26 : LD   1, 4(5) ;  Load function result
27 : LDC   2, 5(0) ;  Caller frame size
28 : SUB   5, 5, 2 ;  Pop back to caller
29 : SUB   4, 4, 2 ;  Pop back to caller
30 : LDA 4, 3(5) ; Base of callee frame
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return addr in callee frame
33 : ADD 5, 4, 0 ; Push new frame
34 : LDA 7, 12(0) ; Call print
35 : LDC 2, 3(0) ; Caller frame size
36 : SUB 5, 5, 2 ; Pop frame
37 : LDA 4, 5(5) ; Base of callee frame
38 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
39 : ST 1, 1(4) ; Store argument 0 in callee
40 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
41 : ST 1, 2(4) ; Store argument 1 in callee
42 : LD   1, 3(5) ;  Load parameter 'N' into R1
43 : ST 1, 3(4) ; Store argument 2 in callee
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 431(0) ; Call fareyDen
48 : LD   1, 4(5) ;  Load function result
49 : LDC   2, 5(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : ST 1, 4(5) ; Store result into caller’s frame
53 : LD   1, 4(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LD   1, 2(5) ;  Load parameter 'y' into R1
57 : ST   1, 3(4) ;  Store right operand result into return value slot
58 : LD   1, 1(5) ;  Load parameter 'x' into R1
59 : ADD  2, 1, 0 ;  Move left operand to register 2
60 : LD   1, 3(4) ;  Return right operand back into register 1
61 : SUB  1, 2, 1 ;  left - right for less-than check
62 : JLT  1, 2(7) ;  If R1 < 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : ADD  2, 1, 0 ;  Move left operand to register 2
67 : LD   1, 2(5) ;  Load parameter 'y' into R1
68 : ST   1, 3(4) ;  Store right operand result into return value slot
69 : LD   1, 1(5) ;  Load parameter 'x' into R1
70 : ADD  2, 1, 0 ;  Move left operand to register 2
71 : LD   1, 3(4) ;  Return right operand back into register 1
72 : SUB  1, 2, 1 ;  left - right for equality check
73 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  1, 2, 1 ;  R1 = left OR right
78 : LDC  2, 1(0) ;  Load 1 into R2
79 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
80 : ST   1, 3(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
83 : LDA 4, 4(5) ; Base of callee frame
84 : LD   1, 4(5) ;  Load parameter 'yd' into R1
85 : ST   1, 3(4) ;  Store right operand result into return value slot
86 : LD   1, 1(5) ;  Load parameter 'x' into R1
87 : ADD  2, 1, 0 ;  Move left operand to register 2
88 : LD   1, 3(4) ;  Return right operand back into register 1
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(4) ; Store argument 0 in callee
91 : LD   1, 2(5) ;  Load parameter 'xd' into R1
92 : ST   1, 3(4) ;  Store right operand result into return value slot
93 : LD   1, 3(5) ;  Load parameter 'y' into R1
94 : ADD  2, 1, 0 ;  Move left operand to register 2
95 : LD   1, 3(4) ;  Return right operand back into register 1
96 : MUL  1, 2, 1 ;  R1 = left * right
97 : ST 1, 2(4) ; Store argument 1 in callee
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return in callee frame
100 : ADD 5, 4, 0 ; Push callee frame
101 : LDA 7, 56(0) ; Call greater
102 : LD   1, 3(5) ;  Load function result
103 : LDC   2, 4(0) ;  Caller frame size
104 : SUB   5, 5, 2 ;  Pop back to caller
105 : SUB   4, 4, 2 ;  Pop back to caller
106 : ST   1, 5(5) ;  Store function result into stack frame
107 : LD   6, 0(5) ;  Load return address
108 : LDA  7, 0(6) ;  Return to caller
109 : LD   1, 4(5) ;  Load parameter 'yd' into R1
110 : ST   1, 3(4) ;  Store right operand result into return value slot
111 : LD   1, 1(5) ;  Load parameter 'x' into R1
112 : ADD  2, 1, 0 ;  Move left operand to register 2
113 : LD   1, 3(4) ;  Return right operand back into register 1
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ADD  2, 1, 0 ;  Move left operand to register 2
116 : LD   1, 2(5) ;  Load parameter 'xd' into R1
117 : ST   1, 3(4) ;  Store right operand result into return value slot
118 : LD   1, 3(5) ;  Load parameter 'y' into R1
119 : ADD  2, 1, 0 ;  Move left operand to register 2
120 : LD   1, 3(4) ;  Return right operand back into register 1
121 : MUL  1, 2, 1 ;  R1 = left * right
122 : SUB  1, 2, 1 ;  left - right for equality check
123 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
124 : LDC  1, 0(0) ;  false
125 : LDA  7, 1(7) ;  skip setting true
126 : LDC  1, 1(0) ;  true
127 : ST   1, 5(5) ;  Store function result into stack frame
128 : LD   6, 0(5) ;  Load return address
129 : LDA  7, 0(6) ;  Return to caller
130 : LDA 4, 4(5) ; Base of callee frame
131 : LD   1, 6(5) ;  Load parameter 'b' into R1
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LD   1, 4(5) ;  Load parameter 'N' into R1
134 : ST 1, 2(4) ; Store argument 1 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 56(0) ; Call greater
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 4(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : ADD  2, 1, 0 ;  Move left operand to register 2
144 : LDA 4, 4(5) ; Base of callee frame
145 : LD   1, 8(5) ;  Load parameter 'd' into R1
146 : ST 1, 1(4) ; Store argument 0 in callee
147 : LD   1, 4(5) ;  Load parameter 'N' into R1
148 : ST 1, 2(4) ; Store argument 1 in callee
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return in callee frame
151 : ADD 5, 4, 0 ; Push callee frame
152 : LDA 7, 56(0) ; Call greater
153 : LD   1, 3(5) ;  Load function result
154 : LDC   2, 4(0) ;  Caller frame size
155 : SUB   5, 5, 2 ;  Pop back to caller
156 : SUB   4, 4, 2 ;  Pop back to caller
157 : ADD  1, 2, 1 ;  R1 = left OR right
158 : JEQ  1, 200(0) ;  If condition is false, jump to ELSE
159 : LDC  1, 1(0) ;  Load integer-literal value into register 1
160 : ST   1, 3(4) ;  Store right operand result into return value slot
161 : LD   1, 1(5) ;  Load parameter 'selector' into R1
162 : ADD  2, 1, 0 ;  Move left operand to register 2
163 : LD   1, 3(4) ;  Return right operand back into register 1
164 : SUB  1, 2, 1 ;  left - right for equality check
165 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
166 : LDC  1, 0(0) ;  false
167 : LDA  7, 1(7) ;  skip setting true
168 : LDC  1, 1(0) ;  true
169 : JEQ  1, 172(0) ;  If condition is false, jump to ELSE
170 : LD   1, 5(5) ;  Load parameter 'a' into R1
171 : LDA  7, 199(0) ;  Skip ELSE block
172 : LDC  1, 2(0) ;  Load integer-literal value into register 1
173 : ST   1, 3(4) ;  Store right operand result into return value slot
174 : LD   1, 1(5) ;  Load parameter 'selector' into R1
175 : ADD  2, 1, 0 ;  Move left operand to register 2
176 : LD   1, 3(4) ;  Return right operand back into register 1
177 : SUB  1, 2, 1 ;  left - right for equality check
178 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
179 : LDC  1, 0(0) ;  false
180 : LDA  7, 1(7) ;  skip setting true
181 : LDC  1, 1(0) ;  true
182 : JEQ  1, 185(0) ;  If condition is false, jump to ELSE
183 : LD   1, 6(5) ;  Load parameter 'b' into R1
184 : LDA  7, 199(0) ;  Skip ELSE block
185 : LDC  1, 3(0) ;  Load integer-literal value into register 1
186 : ST   1, 3(4) ;  Store right operand result into return value slot
187 : LD   1, 1(5) ;  Load parameter 'selector' into R1
188 : ADD  2, 1, 0 ;  Move left operand to register 2
189 : LD   1, 3(4) ;  Return right operand back into register 1
190 : SUB  1, 2, 1 ;  left - right for equality check
191 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
192 : LDC  1, 0(0) ;  false
193 : LDA  7, 1(7) ;  skip setting true
194 : LDC  1, 1(0) ;  true
195 : JEQ  1, 198(0) ;  If condition is false, jump to ELSE
196 : LD   1, 7(5) ;  Load parameter 'c' into R1
197 : LDA  7, 199(0) ;  Skip ELSE block
198 : LD   1, 8(5) ;  Load parameter 'd' into R1
199 : LDA  7, 388(0) ;  Skip ELSE block
200 : LDA 4, 6(5) ; Base of callee frame
201 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
202 : ST 1, 1(4) ; Store argument 0 in callee
203 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
204 : ST 1, 2(4) ; Store argument 1 in callee
205 : LD   1, 7(5) ;  Load parameter 'c' into R1
206 : ST   1, 3(4) ;  Store right operand result into return value slot
207 : LD   1, 5(5) ;  Load parameter 'a' into R1
208 : ADD  2, 1, 0 ;  Move left operand to register 2
209 : LD   1, 3(4) ;  Return right operand back into register 1
210 : ADD  1, 2, 1 ;  R1 = left + right
211 : ST 1, 3(4) ; Store argument 2 in callee
212 : LD   1, 8(5) ;  Load parameter 'd' into R1
213 : ST   1, 3(4) ;  Store right operand result into return value slot
214 : LD   1, 6(5) ;  Load parameter 'b' into R1
215 : ADD  2, 1, 0 ;  Move left operand to register 2
216 : LD   1, 3(4) ;  Return right operand back into register 1
217 : ADD  1, 2, 1 ;  R1 = left + right
218 : ST 1, 4(4) ; Store argument 3 in callee
219 : LDA 6, 223(0) ; Return address
220 : ST 6, 0(4) ; Store return in callee frame
221 : ADD 5, 4, 0 ; Push callee frame
222 : LDA 7, 109(0) ; Call fractionEqual
223 : LD   1, 5(5) ;  Load function result
224 : LDC   2, 6(0) ;  Caller frame size
225 : SUB   5, 5, 2 ;  Pop back to caller
226 : SUB   4, 4, 2 ;  Pop back to caller
227 : JEQ  1, 289(0) ;  If condition is false, jump to ELSE
228 : LDC  1, 1(0) ;  Load integer-literal value into register 1
229 : ST   1, 3(4) ;  Store right operand result into return value slot
230 : LD   1, 1(5) ;  Load parameter 'selector' into R1
231 : ADD  2, 1, 0 ;  Move left operand to register 2
232 : LD   1, 3(4) ;  Return right operand back into register 1
233 : SUB  1, 2, 1 ;  left - right for equality check
234 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
235 : LDC  1, 0(0) ;  false
236 : LDA  7, 1(7) ;  skip setting true
237 : LDC  1, 1(0) ;  true
238 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
239 : LD   1, 7(5) ;  Load parameter 'c' into R1
240 : ST   1, 3(4) ;  Store right operand result into return value slot
241 : LD   1, 5(5) ;  Load parameter 'a' into R1
242 : ADD  2, 1, 0 ;  Move left operand to register 2
243 : LD   1, 3(4) ;  Return right operand back into register 1
244 : ADD  1, 2, 1 ;  R1 = left + right
245 : LDA  7, 288(0) ;  Skip ELSE block
246 : LDC  1, 2(0) ;  Load integer-literal value into register 1
247 : ST   1, 3(4) ;  Store right operand result into return value slot
248 : LD   1, 1(5) ;  Load parameter 'selector' into R1
249 : ADD  2, 1, 0 ;  Move left operand to register 2
250 : LD   1, 3(4) ;  Return right operand back into register 1
251 : SUB  1, 2, 1 ;  left - right for equality check
252 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
253 : LDC  1, 0(0) ;  false
254 : LDA  7, 1(7) ;  skip setting true
255 : LDC  1, 1(0) ;  true
256 : JEQ  1, 264(0) ;  If condition is false, jump to ELSE
257 : LD   1, 8(5) ;  Load parameter 'd' into R1
258 : ST   1, 3(4) ;  Store right operand result into return value slot
259 : LD   1, 6(5) ;  Load parameter 'b' into R1
260 : ADD  2, 1, 0 ;  Move left operand to register 2
261 : LD   1, 3(4) ;  Return right operand back into register 1
262 : ADD  1, 2, 1 ;  R1 = left + right
263 : LDA  7, 288(0) ;  Skip ELSE block
264 : LDC  1, 3(0) ;  Load integer-literal value into register 1
265 : ST   1, 3(4) ;  Store right operand result into return value slot
266 : LD   1, 1(5) ;  Load parameter 'selector' into R1
267 : ADD  2, 1, 0 ;  Move left operand to register 2
268 : LD   1, 3(4) ;  Return right operand back into register 1
269 : SUB  1, 2, 1 ;  left - right for equality check
270 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
271 : LDC  1, 0(0) ;  false
272 : LDA  7, 1(7) ;  skip setting true
273 : LDC  1, 1(0) ;  true
274 : JEQ  1, 282(0) ;  If condition is false, jump to ELSE
275 : LD   1, 7(5) ;  Load parameter 'c' into R1
276 : ST   1, 3(4) ;  Store right operand result into return value slot
277 : LD   1, 5(5) ;  Load parameter 'a' into R1
278 : ADD  2, 1, 0 ;  Move left operand to register 2
279 : LD   1, 3(4) ;  Return right operand back into register 1
280 : ADD  1, 2, 1 ;  R1 = left + right
281 : LDA  7, 288(0) ;  Skip ELSE block
282 : LD   1, 8(5) ;  Load parameter 'd' into R1
283 : ST   1, 3(4) ;  Store right operand result into return value slot
284 : LD   1, 6(5) ;  Load parameter 'b' into R1
285 : ADD  2, 1, 0 ;  Move left operand to register 2
286 : LD   1, 3(4) ;  Return right operand back into register 1
287 : ADD  1, 2, 1 ;  R1 = left + right
288 : LDA  7, 388(0) ;  Skip ELSE block
289 : LDA 4, 6(5) ; Base of callee frame
290 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
291 : ST 1, 1(4) ; Store argument 0 in callee
292 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
293 : ST 1, 2(4) ; Store argument 1 in callee
294 : LD   1, 7(5) ;  Load parameter 'c' into R1
295 : ST   1, 3(4) ;  Store right operand result into return value slot
296 : LD   1, 5(5) ;  Load parameter 'a' into R1
297 : ADD  2, 1, 0 ;  Move left operand to register 2
298 : LD   1, 3(4) ;  Return right operand back into register 1
299 : ADD  1, 2, 1 ;  R1 = left + right
300 : ST 1, 3(4) ; Store argument 2 in callee
301 : LD   1, 8(5) ;  Load parameter 'd' into R1
302 : ST   1, 3(4) ;  Store right operand result into return value slot
303 : LD   1, 6(5) ;  Load parameter 'b' into R1
304 : ADD  2, 1, 0 ;  Move left operand to register 2
305 : LD   1, 3(4) ;  Return right operand back into register 1
306 : ADD  1, 2, 1 ;  R1 = left + right
307 : ST 1, 4(4) ; Store argument 3 in callee
308 : LDA 6, 312(0) ; Return address
309 : ST 6, 0(4) ; Store return in callee frame
310 : ADD 5, 4, 0 ; Push callee frame
311 : LDA 7, 83(0) ; Call fractionGreater
312 : LD   1, 5(5) ;  Load function result
313 : LDC   2, 6(0) ;  Caller frame size
314 : SUB   5, 5, 2 ;  Pop back to caller
315 : SUB   4, 4, 2 ;  Pop back to caller
316 : JEQ  1, 353(0) ;  If condition is false, jump to ELSE
317 : LDA 4, 10(5) ; Base of callee frame
318 : LD   1, 1(5) ;  Load parameter 'selector' into R1
319 : ST 1, 1(4) ; Store argument 0 in callee
320 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
321 : ST 1, 2(4) ; Store argument 1 in callee
322 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
323 : ST 1, 3(4) ; Store argument 2 in callee
324 : LD   1, 4(5) ;  Load parameter 'N' into R1
325 : ST 1, 4(4) ; Store argument 3 in callee
326 : LD   1, 7(5) ;  Load parameter 'c' into R1
327 : ST   1, 3(4) ;  Store right operand result into return value slot
328 : LD   1, 5(5) ;  Load parameter 'a' into R1
329 : ADD  2, 1, 0 ;  Move left operand to register 2
330 : LD   1, 3(4) ;  Return right operand back into register 1
331 : ADD  1, 2, 1 ;  R1 = left + right
332 : ST 1, 5(4) ; Store argument 4 in callee
333 : LD   1, 8(5) ;  Load parameter 'd' into R1
334 : ST   1, 3(4) ;  Store right operand result into return value slot
335 : LD   1, 6(5) ;  Load parameter 'b' into R1
336 : ADD  2, 1, 0 ;  Move left operand to register 2
337 : LD   1, 3(4) ;  Return right operand back into register 1
338 : ADD  1, 2, 1 ;  R1 = left + right
339 : ST 1, 6(4) ; Store argument 5 in callee
340 : LD   1, 7(5) ;  Load parameter 'c' into R1
341 : ST 1, 7(4) ; Store argument 6 in callee
342 : LD   1, 8(5) ;  Load parameter 'd' into R1
343 : ST 1, 8(4) ; Store argument 7 in callee
344 : LDA 6, 348(0) ; Return address
345 : ST 6, 0(4) ; Store return in callee frame
346 : ADD 5, 4, 0 ; Push callee frame
347 : LDA 7, 130(0) ; Call whileLoopFor
348 : LD   1, 9(5) ;  Load function result
349 : LDC   2, 10(0) ;  Caller frame size
350 : SUB   5, 5, 2 ;  Pop back to caller
351 : SUB   4, 4, 2 ;  Pop back to caller
352 : LDA  7, 388(0) ;  Skip ELSE block
353 : LDA 4, 10(5) ; Base of callee frame
354 : LD   1, 1(5) ;  Load parameter 'selector' into R1
355 : ST 1, 1(4) ; Store argument 0 in callee
356 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
357 : ST 1, 2(4) ; Store argument 1 in callee
358 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
359 : ST 1, 3(4) ; Store argument 2 in callee
360 : LD   1, 4(5) ;  Load parameter 'N' into R1
361 : ST 1, 4(4) ; Store argument 3 in callee
362 : LD   1, 5(5) ;  Load parameter 'a' into R1
363 : ST 1, 5(4) ; Store argument 4 in callee
364 : LD   1, 6(5) ;  Load parameter 'b' into R1
365 : ST 1, 6(4) ; Store argument 5 in callee
366 : LD   1, 7(5) ;  Load parameter 'c' into R1
367 : ST   1, 3(4) ;  Store right operand result into return value slot
368 : LD   1, 5(5) ;  Load parameter 'a' into R1
369 : ADD  2, 1, 0 ;  Move left operand to register 2
370 : LD   1, 3(4) ;  Return right operand back into register 1
371 : ADD  1, 2, 1 ;  R1 = left + right
372 : ST 1, 7(4) ; Store argument 6 in callee
373 : LD   1, 8(5) ;  Load parameter 'd' into R1
374 : ST   1, 3(4) ;  Store right operand result into return value slot
375 : LD   1, 6(5) ;  Load parameter 'b' into R1
376 : ADD  2, 1, 0 ;  Move left operand to register 2
377 : LD   1, 3(4) ;  Return right operand back into register 1
378 : ADD  1, 2, 1 ;  R1 = left + right
379 : ST 1, 8(4) ; Store argument 7 in callee
380 : LDA 6, 384(0) ; Return address
381 : ST 6, 0(4) ; Store return in callee frame
382 : ADD 5, 4, 0 ; Push callee frame
383 : LDA 7, 130(0) ; Call whileLoopFor
384 : LD   1, 9(5) ;  Load function result
385 : LDC   2, 10(0) ;  Caller frame size
386 : SUB   5, 5, 2 ;  Pop back to caller
387 : SUB   4, 4, 2 ;  Pop back to caller
388 : ST   1, 9(5) ;  Store function result into stack frame
389 : LD   6, 0(5) ;  Load return address
390 : LDA  7, 0(6) ;  Return to caller
391 : LDA 4, 4(5) ; Base of callee frame
392 : LD   1, 3(5) ;  Load parameter 'b' into R1
393 : ST 1, 1(4) ; Store argument 0 in callee
394 : LD   1, 1(5) ;  Load parameter 'N' into R1
395 : ST 1, 2(4) ; Store argument 1 in callee
396 : LDA 6, 400(0) ; Return address
397 : ST 6, 0(4) ; Store return in callee frame
398 : ADD 5, 4, 0 ; Push callee frame
399 : LDA 7, 56(0) ; Call greater
400 : LD   1, 3(5) ;  Load function result
401 : LDC   2, 4(0) ;  Caller frame size
402 : SUB   5, 5, 2 ;  Pop back to caller
403 : SUB   4, 4, 2 ;  Pop back to caller
404 : JEQ  1, 407(0) ;  If condition is false, jump to ELSE
405 : LD   1, 5(5) ;  Load parameter 'd' into R1
406 : LDA  7, 408(0) ;  Skip ELSE block
407 : LD   1, 3(5) ;  Load parameter 'b' into R1
408 : ST   1, 6(5) ;  Store function result into stack frame
409 : LD   6, 0(5) ;  Load return address
410 : LDA  7, 0(6) ;  Return to caller
411 : LDA 4, 4(5) ; Base of callee frame
412 : LD   1, 3(5) ;  Load parameter 'b' into R1
413 : ST 1, 1(4) ; Store argument 0 in callee
414 : LD   1, 1(5) ;  Load parameter 'N' into R1
415 : ST 1, 2(4) ; Store argument 1 in callee
416 : LDA 6, 420(0) ; Return address
417 : ST 6, 0(4) ; Store return in callee frame
418 : ADD 5, 4, 0 ; Push callee frame
419 : LDA 7, 56(0) ; Call greater
420 : LD   1, 3(5) ;  Load function result
421 : LDC   2, 4(0) ;  Caller frame size
422 : SUB   5, 5, 2 ;  Pop back to caller
423 : SUB   4, 4, 2 ;  Pop back to caller
424 : JEQ  1, 427(0) ;  If condition is false, jump to ELSE
425 : LD   1, 4(5) ;  Load parameter 'c' into R1
426 : LDA  7, 428(0) ;  Skip ELSE block
427 : LD   1, 2(5) ;  Load parameter 'a' into R1
428 : ST   1, 6(5) ;  Store function result into stack frame
429 : LD   6, 0(5) ;  Load return address
430 : LDA  7, 0(6) ;  Return to caller
431 : LDA 4, 7(5) ; Base of callee frame
432 : LD   1, 3(5) ;  Load parameter 'N' into R1
433 : ST 1, 1(4) ; Store argument 0 in callee
434 : LDA 4, 10(5) ; Base of callee frame
435 : LDC  1, 1(0) ;  Load integer-literal value into register 1
436 : ST 1, 1(4) ; Store argument 0 in callee
437 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
438 : ST 1, 2(4) ; Store argument 1 in callee
439 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
440 : ST 1, 3(4) ; Store argument 2 in callee
441 : LD   1, 3(5) ;  Load parameter 'N' into R1
442 : ST 1, 4(4) ; Store argument 3 in callee
443 : LDC  1, 0(0) ;  Load integer-literal value into register 1
444 : ST 1, 5(4) ; Store argument 4 in callee
445 : LDC  1, 1(0) ;  Load integer-literal value into register 1
446 : ST 1, 6(4) ; Store argument 5 in callee
447 : LDC  1, 1(0) ;  Load integer-literal value into register 1
448 : ST 1, 7(4) ; Store argument 6 in callee
449 : LDC  1, 1(0) ;  Load integer-literal value into register 1
450 : ST 1, 8(4) ; Store argument 7 in callee
451 : LDA 6, 455(0) ; Return address
452 : ST 6, 0(4) ; Store return in callee frame
453 : ADD 5, 4, 0 ; Push callee frame
454 : LDA 7, 130(0) ; Call whileLoopFor
455 : LD   1, 9(5) ;  Load function result
456 : LDC   2, 10(0) ;  Caller frame size
457 : SUB   5, 5, 2 ;  Pop back to caller
458 : SUB   4, 4, 2 ;  Pop back to caller
459 : ST 1, 2(4) ; Store argument 1 in callee
460 : LDA 4, 10(5) ; Base of callee frame
461 : LDC  1, 2(0) ;  Load integer-literal value into register 1
462 : ST 1, 1(4) ; Store argument 0 in callee
463 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
464 : ST 1, 2(4) ; Store argument 1 in callee
465 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
466 : ST 1, 3(4) ; Store argument 2 in callee
467 : LD   1, 3(5) ;  Load parameter 'N' into R1
468 : ST 1, 4(4) ; Store argument 3 in callee
469 : LDC  1, 0(0) ;  Load integer-literal value into register 1
470 : ST 1, 5(4) ; Store argument 4 in callee
471 : LDC  1, 1(0) ;  Load integer-literal value into register 1
472 : ST 1, 6(4) ; Store argument 5 in callee
473 : LDC  1, 1(0) ;  Load integer-literal value into register 1
474 : ST 1, 7(4) ; Store argument 6 in callee
475 : LDC  1, 1(0) ;  Load integer-literal value into register 1
476 : ST 1, 8(4) ; Store argument 7 in callee
477 : LDA 6, 481(0) ; Return address
478 : ST 6, 0(4) ; Store return in callee frame
479 : ADD 5, 4, 0 ; Push callee frame
480 : LDA 7, 130(0) ; Call whileLoopFor
481 : LD   1, 9(5) ;  Load function result
482 : LDC   2, 10(0) ;  Caller frame size
483 : SUB   5, 5, 2 ;  Pop back to caller
484 : SUB   4, 4, 2 ;  Pop back to caller
485 : ST 1, 3(4) ; Store argument 2 in callee
486 : LDA 4, 10(5) ; Base of callee frame
487 : LDC  1, 3(0) ;  Load integer-literal value into register 1
488 : ST 1, 1(4) ; Store argument 0 in callee
489 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
490 : ST 1, 2(4) ; Store argument 1 in callee
491 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
492 : ST 1, 3(4) ; Store argument 2 in callee
493 : LD   1, 3(5) ;  Load parameter 'N' into R1
494 : ST 1, 4(4) ; Store argument 3 in callee
495 : LDC  1, 0(0) ;  Load integer-literal value into register 1
496 : ST 1, 5(4) ; Store argument 4 in callee
497 : LDC  1, 1(0) ;  Load integer-literal value into register 1
498 : ST 1, 6(4) ; Store argument 5 in callee
499 : LDC  1, 1(0) ;  Load integer-literal value into register 1
500 : ST 1, 7(4) ; Store argument 6 in callee
501 : LDC  1, 1(0) ;  Load integer-literal value into register 1
502 : ST 1, 8(4) ; Store argument 7 in callee
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return in callee frame
505 : ADD 5, 4, 0 ; Push callee frame
506 : LDA 7, 130(0) ; Call whileLoopFor
507 : LD   1, 9(5) ;  Load function result
508 : LDC   2, 10(0) ;  Caller frame size
509 : SUB   5, 5, 2 ;  Pop back to caller
510 : SUB   4, 4, 2 ;  Pop back to caller
511 : ST 1, 4(4) ; Store argument 3 in callee
512 : LDA 4, 10(5) ; Base of callee frame
513 : LDC  1, 4(0) ;  Load integer-literal value into register 1
514 : ST 1, 1(4) ; Store argument 0 in callee
515 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
516 : ST 1, 2(4) ; Store argument 1 in callee
517 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
518 : ST 1, 3(4) ; Store argument 2 in callee
519 : LD   1, 3(5) ;  Load parameter 'N' into R1
520 : ST 1, 4(4) ; Store argument 3 in callee
521 : LDC  1, 0(0) ;  Load integer-literal value into register 1
522 : ST 1, 5(4) ; Store argument 4 in callee
523 : LDC  1, 1(0) ;  Load integer-literal value into register 1
524 : ST 1, 6(4) ; Store argument 5 in callee
525 : LDC  1, 1(0) ;  Load integer-literal value into register 1
526 : ST 1, 7(4) ; Store argument 6 in callee
527 : LDC  1, 1(0) ;  Load integer-literal value into register 1
528 : ST 1, 8(4) ; Store argument 7 in callee
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return in callee frame
531 : ADD 5, 4, 0 ; Push callee frame
532 : LDA 7, 130(0) ; Call whileLoopFor
533 : LD   1, 9(5) ;  Load function result
534 : LDC   2, 10(0) ;  Caller frame size
535 : SUB   5, 5, 2 ;  Pop back to caller
536 : SUB   4, 4, 2 ;  Pop back to caller
537 : ST 1, 5(4) ; Store argument 4 in callee
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return in callee frame
540 : ADD 5, 4, 0 ; Push callee frame
541 : LDA 7, 391(0) ; Call fareySelectDen
542 : LD   1, 6(5) ;  Load function result
543 : LDC   2, 7(0) ;  Caller frame size
544 : SUB   5, 5, 2 ;  Pop back to caller
545 : SUB   4, 4, 2 ;  Pop back to caller
546 : ST   1, 4(5) ;  Store function result into stack frame
547 : LD   6, 0(5) ;  Load return address
548 : LDA  7, 0(6) ;  Return to caller
549 : LDA 4, 7(5) ; Base of callee frame
550 : LD   1, 3(5) ;  Load parameter 'N' into R1
551 : ST 1, 1(4) ; Store argument 0 in callee
552 : LDA 4, 10(5) ; Base of callee frame
553 : LDC  1, 1(0) ;  Load integer-literal value into register 1
554 : ST 1, 1(4) ; Store argument 0 in callee
555 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
556 : ST 1, 2(4) ; Store argument 1 in callee
557 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
558 : ST 1, 3(4) ; Store argument 2 in callee
559 : LD   1, 3(5) ;  Load parameter 'N' into R1
560 : ST 1, 4(4) ; Store argument 3 in callee
561 : LDC  1, 0(0) ;  Load integer-literal value into register 1
562 : ST 1, 5(4) ; Store argument 4 in callee
563 : LDC  1, 1(0) ;  Load integer-literal value into register 1
564 : ST 1, 6(4) ; Store argument 5 in callee
565 : LDC  1, 1(0) ;  Load integer-literal value into register 1
566 : ST 1, 7(4) ; Store argument 6 in callee
567 : LDC  1, 1(0) ;  Load integer-literal value into register 1
568 : ST 1, 8(4) ; Store argument 7 in callee
569 : LDA 6, 573(0) ; Return address
570 : ST 6, 0(4) ; Store return in callee frame
571 : ADD 5, 4, 0 ; Push callee frame
572 : LDA 7, 130(0) ; Call whileLoopFor
573 : LD   1, 9(5) ;  Load function result
574 : LDC   2, 10(0) ;  Caller frame size
575 : SUB   5, 5, 2 ;  Pop back to caller
576 : SUB   4, 4, 2 ;  Pop back to caller
577 : ST 1, 2(4) ; Store argument 1 in callee
578 : LDA 4, 10(5) ; Base of callee frame
579 : LDC  1, 2(0) ;  Load integer-literal value into register 1
580 : ST 1, 1(4) ; Store argument 0 in callee
581 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
582 : ST 1, 2(4) ; Store argument 1 in callee
583 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
584 : ST 1, 3(4) ; Store argument 2 in callee
585 : LD   1, 3(5) ;  Load parameter 'N' into R1
586 : ST 1, 4(4) ; Store argument 3 in callee
587 : LDC  1, 0(0) ;  Load integer-literal value into register 1
588 : ST 1, 5(4) ; Store argument 4 in callee
589 : LDC  1, 1(0) ;  Load integer-literal value into register 1
590 : ST 1, 6(4) ; Store argument 5 in callee
591 : LDC  1, 1(0) ;  Load integer-literal value into register 1
592 : ST 1, 7(4) ; Store argument 6 in callee
593 : LDC  1, 1(0) ;  Load integer-literal value into register 1
594 : ST 1, 8(4) ; Store argument 7 in callee
595 : LDA 6, 599(0) ; Return address
596 : ST 6, 0(4) ; Store return in callee frame
597 : ADD 5, 4, 0 ; Push callee frame
598 : LDA 7, 130(0) ; Call whileLoopFor
599 : LD   1, 9(5) ;  Load function result
600 : LDC   2, 10(0) ;  Caller frame size
601 : SUB   5, 5, 2 ;  Pop back to caller
602 : SUB   4, 4, 2 ;  Pop back to caller
603 : ST 1, 3(4) ; Store argument 2 in callee
604 : LDA 4, 10(5) ; Base of callee frame
605 : LDC  1, 3(0) ;  Load integer-literal value into register 1
606 : ST 1, 1(4) ; Store argument 0 in callee
607 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
608 : ST 1, 2(4) ; Store argument 1 in callee
609 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
610 : ST 1, 3(4) ; Store argument 2 in callee
611 : LD   1, 3(5) ;  Load parameter 'N' into R1
612 : ST 1, 4(4) ; Store argument 3 in callee
613 : LDC  1, 0(0) ;  Load integer-literal value into register 1
614 : ST 1, 5(4) ; Store argument 4 in callee
615 : LDC  1, 1(0) ;  Load integer-literal value into register 1
616 : ST 1, 6(4) ; Store argument 5 in callee
617 : LDC  1, 1(0) ;  Load integer-literal value into register 1
618 : ST 1, 7(4) ; Store argument 6 in callee
619 : LDC  1, 1(0) ;  Load integer-literal value into register 1
620 : ST 1, 8(4) ; Store argument 7 in callee
621 : LDA 6, 625(0) ; Return address
622 : ST 6, 0(4) ; Store return in callee frame
623 : ADD 5, 4, 0 ; Push callee frame
624 : LDA 7, 130(0) ; Call whileLoopFor
625 : LD   1, 9(5) ;  Load function result
626 : LDC   2, 10(0) ;  Caller frame size
627 : SUB   5, 5, 2 ;  Pop back to caller
628 : SUB   4, 4, 2 ;  Pop back to caller
629 : ST 1, 4(4) ; Store argument 3 in callee
630 : LDA 4, 10(5) ; Base of callee frame
631 : LDC  1, 4(0) ;  Load integer-literal value into register 1
632 : ST 1, 1(4) ; Store argument 0 in callee
633 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
634 : ST 1, 2(4) ; Store argument 1 in callee
635 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
636 : ST 1, 3(4) ; Store argument 2 in callee
637 : LD   1, 3(5) ;  Load parameter 'N' into R1
638 : ST 1, 4(4) ; Store argument 3 in callee
639 : LDC  1, 0(0) ;  Load integer-literal value into register 1
640 : ST 1, 5(4) ; Store argument 4 in callee
641 : LDC  1, 1(0) ;  Load integer-literal value into register 1
642 : ST 1, 6(4) ; Store argument 5 in callee
643 : LDC  1, 1(0) ;  Load integer-literal value into register 1
644 : ST 1, 7(4) ; Store argument 6 in callee
645 : LDC  1, 1(0) ;  Load integer-literal value into register 1
646 : ST 1, 8(4) ; Store argument 7 in callee
647 : LDA 6, 651(0) ; Return address
648 : ST 6, 0(4) ; Store return in callee frame
649 : ADD 5, 4, 0 ; Push callee frame
650 : LDA 7, 130(0) ; Call whileLoopFor
651 : LD   1, 9(5) ;  Load function result
652 : LDC   2, 10(0) ;  Caller frame size
653 : SUB   5, 5, 2 ;  Pop back to caller
654 : SUB   4, 4, 2 ;  Pop back to caller
655 : ST 1, 5(4) ; Store argument 4 in callee
656 : LDA 6, 660(0) ; Return address
657 : ST 6, 0(4) ; Store return in callee frame
658 : ADD 5, 4, 0 ; Push callee frame
659 : LDA 7, 411(0) ; Call fareySelectNum
660 : LD   1, 6(5) ;  Load function result
661 : LDC   2, 7(0) ;  Caller frame size
662 : SUB   5, 5, 2 ;  Pop back to caller
663 : SUB   4, 4, 2 ;  Pop back to caller
664 : ST   1, 4(5) ;  Store function result into stack frame
665 : LD   6, 0(5) ;  Load return address
666 : LDA  7, 0(6) ;  Return to caller
