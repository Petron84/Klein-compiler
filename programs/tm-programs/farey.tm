0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 3(7) ;  Calculate return address
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
25 : LDA 7, 528(0) ; Call fareyNum
26 : LD   1, 4(5) ;  Load function result
27 : LDC   2, 5(0) ;  Caller frame size
28 : SUB   5, 5, 2 ;  Pop back to caller
29 : SUB   4, 4, 2 ;  Pop back to caller
30 : LDA 4, 5(5) ; Base of callee frame
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return addr in callee frame
33 : ADD 5, 4, 0 ; Push new frame
34 : LDA 7, 12(0) ; Call print
35 : LDC 2, 5(0) ; Caller frame size
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
47 : LDA 7, 410(0) ; Call fareyDen
48 : LD   1, 4(5) ;  Load function result
49 : LDC   2, 5(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : ST 1, 4(5) ; Store result into caller’s frame
53 : LD   1, 4(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LD   1, 1(5) ;  Load parameter 'x' into R1
57 : ADD  3, 1, 0 ;  Store left operand into temporary register
58 : LD   1, 2(5) ;  Load parameter 'y' into R1
59 : ADD  2, 3, 0 ;  Restore left operand
60 : SUB  1, 2, 1 ;  left - right for less-than check
61 : JLT  1, 3(7) ;  If R1 < 0, jump to true
62 : LDC  1, 0(0) ;  false
63 : LDA  7, 1(7) ;  skip setting true
64 : LDC  1, 1(0) ;  true
65 : ADD  3, 1, 0 ;  Store left operand into temporary register
66 : LD   1, 1(5) ;  Load parameter 'x' into R1
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 2(5) ;  Load parameter 'y' into R1
69 : ADD  2, 3, 0 ;  Restore left operand
70 : SUB  1, 2, 1 ;  left - right for equality check
71 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : ADD  2, 3, 0 ;  Restore left operand
76 : ADD  1, 2, 1 ;  R1 = left OR right
77 : LDC  2, 1(0) ;  Load 1 into R2
78 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   6, 0(5) ;  Load return address
81 : LDA  7, 0(6) ;  Return to caller
82 : LDA 4, 6(5) ; Base of callee frame
83 : LD   1, 1(5) ;  Load parameter 'x' into R1
84 : ADD  3, 1, 0 ;  Store left operand into temporary register
85 : LD   1, 4(5) ;  Load parameter 'yd' into R1
86 : ADD  2, 3, 0 ;  Restore left operand
87 : MUL  1, 2, 1 ;  R1 = left * right
88 : ST 1, 1(4) ; Store argument 0 in callee
89 : LD   1, 3(5) ;  Load parameter 'y' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LD   1, 2(5) ;  Load parameter 'xd' into R1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : MUL  1, 2, 1 ;  R1 = left * right
94 : ST 1, 2(4) ; Store argument 1 in callee
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return in callee frame
97 : ADD 5, 4, 0 ; Push callee frame
98 : LDA 7, 56(0) ; Call greater
99 : LD   1, 3(5) ;  Load function result
100 : LDC   2, 6(0) ;  Caller frame size
101 : SUB   5, 5, 2 ;  Pop back to caller
102 : SUB   4, 4, 2 ;  Pop back to caller
103 : ST   1, 5(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 1(5) ;  Load parameter 'x' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LD   1, 4(5) ;  Load parameter 'yd' into R1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : MUL  1, 2, 1 ;  R1 = left * right
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 3(5) ;  Load parameter 'y' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 2(5) ;  Load parameter 'xd' into R1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  2, 3, 0 ;  Restore left operand
118 : SUB  1, 2, 1 ;  left - right for equality check
119 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
120 : LDC  1, 0(0) ;  false
121 : LDA  7, 1(7) ;  skip setting true
122 : LDC  1, 1(0) ;  true
123 : ST   1, 5(5) ;  Store function result into stack frame
124 : LD   6, 0(5) ;  Load return address
125 : LDA  7, 0(6) ;  Return to caller
126 : LDA 4, 10(5) ; Base of callee frame
127 : LD   1, 6(5) ;  Load parameter 'b' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LD   1, 4(5) ;  Load parameter 'N' into R1
130 : ST 1, 2(4) ; Store argument 1 in callee
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame
134 : LDA 7, 56(0) ; Call greater
135 : LD   1, 3(5) ;  Load function result
136 : LDC   2, 10(0) ;  Caller frame size
137 : SUB   5, 5, 2 ;  Pop back to caller
138 : SUB   4, 4, 2 ;  Pop back to caller
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LDA 4, 10(5) ; Base of callee frame
141 : LD   1, 8(5) ;  Load parameter 'd' into R1
142 : ST 1, 1(4) ; Store argument 0 in callee
143 : LD   1, 4(5) ;  Load parameter 'N' into R1
144 : ST 1, 2(4) ; Store argument 1 in callee
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame
148 : LDA 7, 56(0) ; Call greater
149 : LD   1, 3(5) ;  Load function result
150 : LDC   2, 10(0) ;  Caller frame size
151 : SUB   5, 5, 2 ;  Pop back to caller
152 : SUB   4, 4, 2 ;  Pop back to caller
153 : ADD  2, 3, 0 ;  Restore left operand
154 : ADD  1, 2, 1 ;  R1 = left OR right
155 : JEQ  1, 194(0) ;  If condition is false, jump to ELSE
156 : LD   1, 1(5) ;  Load parameter 'selector' into R1
157 : ADD  3, 1, 0 ;  Store left operand into temporary register
158 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
159 : ADD  2, 3, 0 ;  Restore left operand
160 : SUB  1, 2, 1 ;  left - right for equality check
161 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
162 : LDC  1, 0(0) ;  false
163 : LDA  7, 1(7) ;  skip setting true
164 : LDC  1, 1(0) ;  true
165 : JEQ  1, 168(0) ;  If condition is false, jump to ELSE
166 : LD   1, 5(5) ;  Load parameter 'a' into R1
167 : LDA  7, 193(0) ;  Skip ELSE block
168 : LD   1, 1(5) ;  Load parameter 'selector' into R1
169 : ADD  3, 1, 0 ;  Store left operand into temporary register
170 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
171 : ADD  2, 3, 0 ;  Restore left operand
172 : SUB  1, 2, 1 ;  left - right for equality check
173 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
174 : LDC  1, 0(0) ;  false
175 : LDA  7, 1(7) ;  skip setting true
176 : LDC  1, 1(0) ;  true
177 : JEQ  1, 180(0) ;  If condition is false, jump to ELSE
178 : LD   1, 6(5) ;  Load parameter 'b' into R1
179 : LDA  7, 193(0) ;  Skip ELSE block
180 : LD   1, 1(5) ;  Load parameter 'selector' into R1
181 : ADD  3, 1, 0 ;  Store left operand into temporary register
182 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
183 : ADD  2, 3, 0 ;  Restore left operand
184 : SUB  1, 2, 1 ;  left - right for equality check
185 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
186 : LDC  1, 0(0) ;  false
187 : LDA  7, 1(7) ;  skip setting true
188 : LDC  1, 1(0) ;  true
189 : JEQ  1, 192(0) ;  If condition is false, jump to ELSE
190 : LD   1, 7(5) ;  Load parameter 'c' into R1
191 : LDA  7, 193(0) ;  Skip ELSE block
192 : LD   1, 8(5) ;  Load parameter 'd' into R1
193 : LDA  7, 367(0) ;  Skip ELSE block
194 : LDA 4, 10(5) ; Base of callee frame
195 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
196 : ST 1, 1(4) ; Store argument 0 in callee
197 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
198 : ST 1, 2(4) ; Store argument 1 in callee
199 : LD   1, 5(5) ;  Load parameter 'a' into R1
200 : ADD  3, 1, 0 ;  Store left operand into temporary register
201 : LD   1, 7(5) ;  Load parameter 'c' into R1
202 : ADD  2, 3, 0 ;  Restore left operand
203 : ADD  1, 2, 1 ;  R1 = left + right
204 : ST 1, 3(4) ; Store argument 2 in callee
205 : LD   1, 6(5) ;  Load parameter 'b' into R1
206 : ADD  3, 1, 0 ;  Store left operand into temporary register
207 : LD   1, 8(5) ;  Load parameter 'd' into R1
208 : ADD  2, 3, 0 ;  Restore left operand
209 : ADD  1, 2, 1 ;  R1 = left + right
210 : ST 1, 4(4) ; Store argument 3 in callee
211 : LDA 6, 215(0) ; Return address
212 : ST 6, 0(4) ; Store return in callee frame
213 : ADD 5, 4, 0 ; Push callee frame
214 : LDA 7, 106(0) ; Call fractionEqual
215 : LD   1, 5(5) ;  Load function result
216 : LDC   2, 10(0) ;  Caller frame size
217 : SUB   5, 5, 2 ;  Pop back to caller
218 : SUB   4, 4, 2 ;  Pop back to caller
219 : JEQ  1, 274(0) ;  If condition is false, jump to ELSE
220 : LD   1, 1(5) ;  Load parameter 'selector' into R1
221 : ADD  3, 1, 0 ;  Store left operand into temporary register
222 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
223 : ADD  2, 3, 0 ;  Restore left operand
224 : SUB  1, 2, 1 ;  left - right for equality check
225 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
226 : LDC  1, 0(0) ;  false
227 : LDA  7, 1(7) ;  skip setting true
228 : LDC  1, 1(0) ;  true
229 : JEQ  1, 236(0) ;  If condition is false, jump to ELSE
230 : LD   1, 5(5) ;  Load parameter 'a' into R1
231 : ADD  3, 1, 0 ;  Store left operand into temporary register
232 : LD   1, 7(5) ;  Load parameter 'c' into R1
233 : ADD  2, 3, 0 ;  Restore left operand
234 : ADD  1, 2, 1 ;  R1 = left + right
235 : LDA  7, 273(0) ;  Skip ELSE block
236 : LD   1, 1(5) ;  Load parameter 'selector' into R1
237 : ADD  3, 1, 0 ;  Store left operand into temporary register
238 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
239 : ADD  2, 3, 0 ;  Restore left operand
240 : SUB  1, 2, 1 ;  left - right for equality check
241 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
242 : LDC  1, 0(0) ;  false
243 : LDA  7, 1(7) ;  skip setting true
244 : LDC  1, 1(0) ;  true
245 : JEQ  1, 252(0) ;  If condition is false, jump to ELSE
246 : LD   1, 6(5) ;  Load parameter 'b' into R1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LD   1, 8(5) ;  Load parameter 'd' into R1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : ADD  1, 2, 1 ;  R1 = left + right
251 : LDA  7, 273(0) ;  Skip ELSE block
252 : LD   1, 1(5) ;  Load parameter 'selector' into R1
253 : ADD  3, 1, 0 ;  Store left operand into temporary register
254 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
255 : ADD  2, 3, 0 ;  Restore left operand
256 : SUB  1, 2, 1 ;  left - right for equality check
257 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
258 : LDC  1, 0(0) ;  false
259 : LDA  7, 1(7) ;  skip setting true
260 : LDC  1, 1(0) ;  true
261 : JEQ  1, 268(0) ;  If condition is false, jump to ELSE
262 : LD   1, 5(5) ;  Load parameter 'a' into R1
263 : ADD  3, 1, 0 ;  Store left operand into temporary register
264 : LD   1, 7(5) ;  Load parameter 'c' into R1
265 : ADD  2, 3, 0 ;  Restore left operand
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : LDA  7, 273(0) ;  Skip ELSE block
268 : LD   1, 6(5) ;  Load parameter 'b' into R1
269 : ADD  3, 1, 0 ;  Store left operand into temporary register
270 : LD   1, 8(5) ;  Load parameter 'd' into R1
271 : ADD  2, 3, 0 ;  Restore left operand
272 : ADD  1, 2, 1 ;  R1 = left + right
273 : LDA  7, 367(0) ;  Skip ELSE block
274 : LDA 4, 10(5) ; Base of callee frame
275 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
276 : ST 1, 1(4) ; Store argument 0 in callee
277 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
278 : ST 1, 2(4) ; Store argument 1 in callee
279 : LD   1, 5(5) ;  Load parameter 'a' into R1
280 : ADD  3, 1, 0 ;  Store left operand into temporary register
281 : LD   1, 7(5) ;  Load parameter 'c' into R1
282 : ADD  2, 3, 0 ;  Restore left operand
283 : ADD  1, 2, 1 ;  R1 = left + right
284 : ST 1, 3(4) ; Store argument 2 in callee
285 : LD   1, 6(5) ;  Load parameter 'b' into R1
286 : ADD  3, 1, 0 ;  Store left operand into temporary register
287 : LD   1, 8(5) ;  Load parameter 'd' into R1
288 : ADD  2, 3, 0 ;  Restore left operand
289 : ADD  1, 2, 1 ;  R1 = left + right
290 : ST 1, 4(4) ; Store argument 3 in callee
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame
294 : LDA 7, 82(0) ; Call fractionGreater
295 : LD   1, 5(5) ;  Load function result
296 : LDC   2, 10(0) ;  Caller frame size
297 : SUB   5, 5, 2 ;  Pop back to caller
298 : SUB   4, 4, 2 ;  Pop back to caller
299 : JEQ  1, 334(0) ;  If condition is false, jump to ELSE
300 : LDA 4, 10(5) ; Base of callee frame
301 : LD   1, 1(5) ;  Load parameter 'selector' into R1
302 : ST 1, 1(4) ; Store argument 0 in callee
303 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
304 : ST 1, 2(4) ; Store argument 1 in callee
305 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
306 : ST 1, 3(4) ; Store argument 2 in callee
307 : LD   1, 4(5) ;  Load parameter 'N' into R1
308 : ST 1, 4(4) ; Store argument 3 in callee
309 : LD   1, 5(5) ;  Load parameter 'a' into R1
310 : ADD  3, 1, 0 ;  Store left operand into temporary register
311 : LD   1, 7(5) ;  Load parameter 'c' into R1
312 : ADD  2, 3, 0 ;  Restore left operand
313 : ADD  1, 2, 1 ;  R1 = left + right
314 : ST 1, 5(4) ; Store argument 4 in callee
315 : LD   1, 6(5) ;  Load parameter 'b' into R1
316 : ADD  3, 1, 0 ;  Store left operand into temporary register
317 : LD   1, 8(5) ;  Load parameter 'd' into R1
318 : ADD  2, 3, 0 ;  Restore left operand
319 : ADD  1, 2, 1 ;  R1 = left + right
320 : ST 1, 6(4) ; Store argument 5 in callee
321 : LD   1, 7(5) ;  Load parameter 'c' into R1
322 : ST 1, 7(4) ; Store argument 6 in callee
323 : LD   1, 8(5) ;  Load parameter 'd' into R1
324 : ST 1, 8(4) ; Store argument 7 in callee
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return in callee frame
327 : ADD 5, 4, 0 ; Push callee frame
328 : LDA 7, 126(0) ; Call whileLoopFor
329 : LD   1, 9(5) ;  Load function result
330 : LDC   2, 10(0) ;  Caller frame size
331 : SUB   5, 5, 2 ;  Pop back to caller
332 : SUB   4, 4, 2 ;  Pop back to caller
333 : LDA  7, 367(0) ;  Skip ELSE block
334 : LDA 4, 10(5) ; Base of callee frame
335 : LD   1, 1(5) ;  Load parameter 'selector' into R1
336 : ST 1, 1(4) ; Store argument 0 in callee
337 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
338 : ST 1, 2(4) ; Store argument 1 in callee
339 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
340 : ST 1, 3(4) ; Store argument 2 in callee
341 : LD   1, 4(5) ;  Load parameter 'N' into R1
342 : ST 1, 4(4) ; Store argument 3 in callee
343 : LD   1, 5(5) ;  Load parameter 'a' into R1
344 : ST 1, 5(4) ; Store argument 4 in callee
345 : LD   1, 6(5) ;  Load parameter 'b' into R1
346 : ST 1, 6(4) ; Store argument 5 in callee
347 : LD   1, 5(5) ;  Load parameter 'a' into R1
348 : ADD  3, 1, 0 ;  Store left operand into temporary register
349 : LD   1, 7(5) ;  Load parameter 'c' into R1
350 : ADD  2, 3, 0 ;  Restore left operand
351 : ADD  1, 2, 1 ;  R1 = left + right
352 : ST 1, 7(4) ; Store argument 6 in callee
353 : LD   1, 6(5) ;  Load parameter 'b' into R1
354 : ADD  3, 1, 0 ;  Store left operand into temporary register
355 : LD   1, 8(5) ;  Load parameter 'd' into R1
356 : ADD  2, 3, 0 ;  Restore left operand
357 : ADD  1, 2, 1 ;  R1 = left + right
358 : ST 1, 8(4) ; Store argument 7 in callee
359 : LDA 6, 363(0) ; Return address
360 : ST 6, 0(4) ; Store return in callee frame
361 : ADD 5, 4, 0 ; Push callee frame
362 : LDA 7, 126(0) ; Call whileLoopFor
363 : LD   1, 9(5) ;  Load function result
364 : LDC   2, 10(0) ;  Caller frame size
365 : SUB   5, 5, 2 ;  Pop back to caller
366 : SUB   4, 4, 2 ;  Pop back to caller
367 : ST   1, 9(5) ;  Store function result into stack frame
368 : LD   6, 0(5) ;  Load return address
369 : LDA  7, 0(6) ;  Return to caller
370 : LDA 4, 7(5) ; Base of callee frame
371 : LD   1, 3(5) ;  Load parameter 'b' into R1
372 : ST 1, 1(4) ; Store argument 0 in callee
373 : LD   1, 1(5) ;  Load parameter 'N' into R1
374 : ST 1, 2(4) ; Store argument 1 in callee
375 : LDA 6, 379(0) ; Return address
376 : ST 6, 0(4) ; Store return in callee frame
377 : ADD 5, 4, 0 ; Push callee frame
378 : LDA 7, 56(0) ; Call greater
379 : LD   1, 3(5) ;  Load function result
380 : LDC   2, 7(0) ;  Caller frame size
381 : SUB   5, 5, 2 ;  Pop back to caller
382 : SUB   4, 4, 2 ;  Pop back to caller
383 : JEQ  1, 386(0) ;  If condition is false, jump to ELSE
384 : LD   1, 5(5) ;  Load parameter 'd' into R1
385 : LDA  7, 387(0) ;  Skip ELSE block
386 : LD   1, 3(5) ;  Load parameter 'b' into R1
387 : ST   1, 6(5) ;  Store function result into stack frame
388 : LD   6, 0(5) ;  Load return address
389 : LDA  7, 0(6) ;  Return to caller
390 : LDA 4, 7(5) ; Base of callee frame
391 : LD   1, 3(5) ;  Load parameter 'b' into R1
392 : ST 1, 1(4) ; Store argument 0 in callee
393 : LD   1, 1(5) ;  Load parameter 'N' into R1
394 : ST 1, 2(4) ; Store argument 1 in callee
395 : LDA 6, 399(0) ; Return address
396 : ST 6, 0(4) ; Store return in callee frame
397 : ADD 5, 4, 0 ; Push callee frame
398 : LDA 7, 56(0) ; Call greater
399 : LD   1, 3(5) ;  Load function result
400 : LDC   2, 7(0) ;  Caller frame size
401 : SUB   5, 5, 2 ;  Pop back to caller
402 : SUB   4, 4, 2 ;  Pop back to caller
403 : JEQ  1, 406(0) ;  If condition is false, jump to ELSE
404 : LD   1, 4(5) ;  Load parameter 'c' into R1
405 : LDA  7, 407(0) ;  Skip ELSE block
406 : LD   1, 2(5) ;  Load parameter 'a' into R1
407 : ST   1, 6(5) ;  Store function result into stack frame
408 : LD   6, 0(5) ;  Load return address
409 : LDA  7, 0(6) ;  Return to caller
410 : LDA 4, 5(5) ; Base of callee frame
411 : LD   1, 3(5) ;  Load parameter 'N' into R1
412 : ST 1, 1(4) ; Store argument 0 in callee
413 : LDA 4, 5(5) ; Base of callee frame
414 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
415 : ST 1, 1(4) ; Store argument 0 in callee
416 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
417 : ST 1, 2(4) ; Store argument 1 in callee
418 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
419 : ST 1, 3(4) ; Store argument 2 in callee
420 : LD   1, 3(5) ;  Load parameter 'N' into R1
421 : ST 1, 4(4) ; Store argument 3 in callee
422 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
423 : ST 1, 5(4) ; Store argument 4 in callee
424 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
425 : ST 1, 6(4) ; Store argument 5 in callee
426 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
427 : ST 1, 7(4) ; Store argument 6 in callee
428 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
429 : ST 1, 8(4) ; Store argument 7 in callee
430 : LDA 6, 434(0) ; Return address
431 : ST 6, 0(4) ; Store return in callee frame
432 : ADD 5, 4, 0 ; Push callee frame
433 : LDA 7, 126(0) ; Call whileLoopFor
434 : LD   1, 9(5) ;  Load function result
435 : LDC   2, 5(0) ;  Caller frame size
436 : SUB   5, 5, 2 ;  Pop back to caller
437 : SUB   4, 4, 2 ;  Pop back to caller
438 : ST 1, 2(4) ; Store argument 1 in callee
439 : LDA 4, 5(5) ; Base of callee frame
440 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
441 : ST 1, 1(4) ; Store argument 0 in callee
442 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
443 : ST 1, 2(4) ; Store argument 1 in callee
444 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
445 : ST 1, 3(4) ; Store argument 2 in callee
446 : LD   1, 3(5) ;  Load parameter 'N' into R1
447 : ST 1, 4(4) ; Store argument 3 in callee
448 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
449 : ST 1, 5(4) ; Store argument 4 in callee
450 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
451 : ST 1, 6(4) ; Store argument 5 in callee
452 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
453 : ST 1, 7(4) ; Store argument 6 in callee
454 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
455 : ST 1, 8(4) ; Store argument 7 in callee
456 : LDA 6, 460(0) ; Return address
457 : ST 6, 0(4) ; Store return in callee frame
458 : ADD 5, 4, 0 ; Push callee frame
459 : LDA 7, 126(0) ; Call whileLoopFor
460 : LD   1, 9(5) ;  Load function result
461 : LDC   2, 5(0) ;  Caller frame size
462 : SUB   5, 5, 2 ;  Pop back to caller
463 : SUB   4, 4, 2 ;  Pop back to caller
464 : ST 1, 3(4) ; Store argument 2 in callee
465 : LDA 4, 5(5) ; Base of callee frame
466 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
467 : ST 1, 1(4) ; Store argument 0 in callee
468 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
469 : ST 1, 2(4) ; Store argument 1 in callee
470 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
471 : ST 1, 3(4) ; Store argument 2 in callee
472 : LD   1, 3(5) ;  Load parameter 'N' into R1
473 : ST 1, 4(4) ; Store argument 3 in callee
474 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
475 : ST 1, 5(4) ; Store argument 4 in callee
476 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
477 : ST 1, 6(4) ; Store argument 5 in callee
478 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
479 : ST 1, 7(4) ; Store argument 6 in callee
480 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
481 : ST 1, 8(4) ; Store argument 7 in callee
482 : LDA 6, 486(0) ; Return address
483 : ST 6, 0(4) ; Store return in callee frame
484 : ADD 5, 4, 0 ; Push callee frame
485 : LDA 7, 126(0) ; Call whileLoopFor
486 : LD   1, 9(5) ;  Load function result
487 : LDC   2, 5(0) ;  Caller frame size
488 : SUB   5, 5, 2 ;  Pop back to caller
489 : SUB   4, 4, 2 ;  Pop back to caller
490 : ST 1, 4(4) ; Store argument 3 in callee
491 : LDA 4, 5(5) ; Base of callee frame
492 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
493 : ST 1, 1(4) ; Store argument 0 in callee
494 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
495 : ST 1, 2(4) ; Store argument 1 in callee
496 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
497 : ST 1, 3(4) ; Store argument 2 in callee
498 : LD   1, 3(5) ;  Load parameter 'N' into R1
499 : ST 1, 4(4) ; Store argument 3 in callee
500 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
501 : ST 1, 5(4) ; Store argument 4 in callee
502 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
503 : ST 1, 6(4) ; Store argument 5 in callee
504 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
505 : ST 1, 7(4) ; Store argument 6 in callee
506 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
507 : ST 1, 8(4) ; Store argument 7 in callee
508 : LDA 6, 512(0) ; Return address
509 : ST 6, 0(4) ; Store return in callee frame
510 : ADD 5, 4, 0 ; Push callee frame
511 : LDA 7, 126(0) ; Call whileLoopFor
512 : LD   1, 9(5) ;  Load function result
513 : LDC   2, 5(0) ;  Caller frame size
514 : SUB   5, 5, 2 ;  Pop back to caller
515 : SUB   4, 4, 2 ;  Pop back to caller
516 : ST 1, 5(4) ; Store argument 4 in callee
517 : LDA 6, 521(0) ; Return address
518 : ST 6, 0(4) ; Store return in callee frame
519 : ADD 5, 4, 0 ; Push callee frame
520 : LDA 7, 370(0) ; Call fareySelectDen
521 : LD   1, 6(5) ;  Load function result
522 : LDC   2, 5(0) ;  Caller frame size
523 : SUB   5, 5, 2 ;  Pop back to caller
524 : SUB   4, 4, 2 ;  Pop back to caller
525 : ST   1, 4(5) ;  Store function result into stack frame
526 : LD   6, 0(5) ;  Load return address
527 : LDA  7, 0(6) ;  Return to caller
528 : LDA 4, 5(5) ; Base of callee frame
529 : LD   1, 3(5) ;  Load parameter 'N' into R1
530 : ST 1, 1(4) ; Store argument 0 in callee
531 : LDA 4, 5(5) ; Base of callee frame
532 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
533 : ST 1, 1(4) ; Store argument 0 in callee
534 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
535 : ST 1, 2(4) ; Store argument 1 in callee
536 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
537 : ST 1, 3(4) ; Store argument 2 in callee
538 : LD   1, 3(5) ;  Load parameter 'N' into R1
539 : ST 1, 4(4) ; Store argument 3 in callee
540 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
541 : ST 1, 5(4) ; Store argument 4 in callee
542 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
543 : ST 1, 6(4) ; Store argument 5 in callee
544 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
545 : ST 1, 7(4) ; Store argument 6 in callee
546 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
547 : ST 1, 8(4) ; Store argument 7 in callee
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return in callee frame
550 : ADD 5, 4, 0 ; Push callee frame
551 : LDA 7, 126(0) ; Call whileLoopFor
552 : LD   1, 9(5) ;  Load function result
553 : LDC   2, 5(0) ;  Caller frame size
554 : SUB   5, 5, 2 ;  Pop back to caller
555 : SUB   4, 4, 2 ;  Pop back to caller
556 : ST 1, 2(4) ; Store argument 1 in callee
557 : LDA 4, 5(5) ; Base of callee frame
558 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
559 : ST 1, 1(4) ; Store argument 0 in callee
560 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
561 : ST 1, 2(4) ; Store argument 1 in callee
562 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
563 : ST 1, 3(4) ; Store argument 2 in callee
564 : LD   1, 3(5) ;  Load parameter 'N' into R1
565 : ST 1, 4(4) ; Store argument 3 in callee
566 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
567 : ST 1, 5(4) ; Store argument 4 in callee
568 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
569 : ST 1, 6(4) ; Store argument 5 in callee
570 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
571 : ST 1, 7(4) ; Store argument 6 in callee
572 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
573 : ST 1, 8(4) ; Store argument 7 in callee
574 : LDA 6, 578(0) ; Return address
575 : ST 6, 0(4) ; Store return in callee frame
576 : ADD 5, 4, 0 ; Push callee frame
577 : LDA 7, 126(0) ; Call whileLoopFor
578 : LD   1, 9(5) ;  Load function result
579 : LDC   2, 5(0) ;  Caller frame size
580 : SUB   5, 5, 2 ;  Pop back to caller
581 : SUB   4, 4, 2 ;  Pop back to caller
582 : ST 1, 3(4) ; Store argument 2 in callee
583 : LDA 4, 5(5) ; Base of callee frame
584 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
585 : ST 1, 1(4) ; Store argument 0 in callee
586 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
587 : ST 1, 2(4) ; Store argument 1 in callee
588 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
589 : ST 1, 3(4) ; Store argument 2 in callee
590 : LD   1, 3(5) ;  Load parameter 'N' into R1
591 : ST 1, 4(4) ; Store argument 3 in callee
592 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
593 : ST 1, 5(4) ; Store argument 4 in callee
594 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
595 : ST 1, 6(4) ; Store argument 5 in callee
596 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
597 : ST 1, 7(4) ; Store argument 6 in callee
598 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
599 : ST 1, 8(4) ; Store argument 7 in callee
600 : LDA 6, 604(0) ; Return address
601 : ST 6, 0(4) ; Store return in callee frame
602 : ADD 5, 4, 0 ; Push callee frame
603 : LDA 7, 126(0) ; Call whileLoopFor
604 : LD   1, 9(5) ;  Load function result
605 : LDC   2, 5(0) ;  Caller frame size
606 : SUB   5, 5, 2 ;  Pop back to caller
607 : SUB   4, 4, 2 ;  Pop back to caller
608 : ST 1, 4(4) ; Store argument 3 in callee
609 : LDA 4, 5(5) ; Base of callee frame
610 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
611 : ST 1, 1(4) ; Store argument 0 in callee
612 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
613 : ST 1, 2(4) ; Store argument 1 in callee
614 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
615 : ST 1, 3(4) ; Store argument 2 in callee
616 : LD   1, 3(5) ;  Load parameter 'N' into R1
617 : ST 1, 4(4) ; Store argument 3 in callee
618 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
619 : ST 1, 5(4) ; Store argument 4 in callee
620 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
621 : ST 1, 6(4) ; Store argument 5 in callee
622 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
623 : ST 1, 7(4) ; Store argument 6 in callee
624 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
625 : ST 1, 8(4) ; Store argument 7 in callee
626 : LDA 6, 630(0) ; Return address
627 : ST 6, 0(4) ; Store return in callee frame
628 : ADD 5, 4, 0 ; Push callee frame
629 : LDA 7, 126(0) ; Call whileLoopFor
630 : LD   1, 9(5) ;  Load function result
631 : LDC   2, 5(0) ;  Caller frame size
632 : SUB   5, 5, 2 ;  Pop back to caller
633 : SUB   4, 4, 2 ;  Pop back to caller
634 : ST 1, 5(4) ; Store argument 4 in callee
635 : LDA 6, 639(0) ; Return address
636 : ST 6, 0(4) ; Store return in callee frame
637 : ADD 5, 4, 0 ; Push callee frame
638 : LDA 7, 390(0) ; Call fareySelectNum
639 : LD   1, 6(5) ;  Load function result
640 : LDC   2, 5(0) ;  Caller frame size
641 : SUB   5, 5, 2 ;  Pop back to caller
642 : SUB   4, 4, 2 ;  Pop back to caller
643 : ST   1, 4(5) ;  Store function result into stack frame
644 : LD   6, 0(5) ;  Load return address
645 : LDA  7, 0(6) ;  Return to caller
