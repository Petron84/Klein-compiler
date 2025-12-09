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
28 : LDA 7, 605(0) ; Call fareyNum
29 : LD   1, 4(5) ;  Load function result
30 : LDC   2, 5(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : SUB   4, 4, 2 ;  Pop back to caller
33 : LDA 4, 3(5) ; Base of callee frame
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return addr in callee frame
36 : ADD 5, 4, 0 ; Push new frame
37 : LDA 7, 12(0) ; Call print
38 : LDC 2, 3(0) ; Caller frame size
39 : SUB 5, 5, 2 ; Pop frame
40 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
41 : LDA 4, 5(5) ; Base of callee frame
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
44 : LDA 4, 5(5) ; Base of callee frame
45 : ST 1, 2(4) ; Store argument 1 in callee
46 : LD   1, 3(5) ;  Load parameter 'N' into R1
47 : LDA 4, 5(5) ; Base of callee frame
48 : ST 1, 3(4) ; Store argument 2 in callee
49 : LDA 4, 5(5) ; Base of callee frame
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 450(0) ; Call fareyDen
54 : LD   1, 4(5) ;  Load function result
55 : LDC   2, 5(0) ;  Caller frame size
56 : SUB   5, 5, 2 ;  Pop back to caller
57 : SUB   4, 4, 2 ;  Pop back to caller
58 : ST 1, 4(5) ; Store result into caller’s frame
59 : LD   1, 4(5) ;  Load return value into register 1
60 : LD  6, 0(5) ;  Load return address for main function into register 6
61 : LDA  7, 0(6) ;  Jump to return address of main function
62 : LD   1, 1(5) ;  Load parameter 'x' into R1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LD   1, 2(5) ;  Load parameter 'y' into R1
65 : ADD  2, 3, 0 ;  Restore left operand
66 : SUB  1, 2, 1 ;  left - right for less-than check
67 : JLT  1, 2(7) ;  If R1 < 0, jump to true
68 : LDC  1, 0(0) ;  false
69 : LDA  7, 1(7) ;  skip setting true
70 : LDC  1, 1(0) ;  true
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 1(5) ;  Load parameter 'x' into R1
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LD   1, 2(5) ;  Load parameter 'y' into R1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ADD  2, 3, 0 ;  Restore left operand
82 : ADD  1, 2, 1 ;  R1 = left OR right
83 : LDC  2, 1(0) ;  Load 1 into R2
84 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 1(5) ;  Load parameter 'x' into R1
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LD   1, 4(5) ;  Load parameter 'yd' into R1
91 : ADD  2, 3, 0 ;  Restore left operand
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : LDA 4, 4(5) ; Base of callee frame
94 : ST 1, 1(4) ; Store argument 0 in callee
95 : LD   1, 3(5) ;  Load parameter 'y' into R1
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LD   1, 2(5) ;  Load parameter 'xd' into R1
98 : ADD  2, 3, 0 ;  Restore left operand
99 : MUL  1, 2, 1 ;  R1 = left * right
100 : LDA 4, 4(5) ; Base of callee frame
101 : ST 1, 2(4) ; Store argument 1 in callee
102 : LDA 4, 4(5) ; Base of callee frame
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return in callee frame
105 : ADD 5, 4, 0 ; Push callee frame
106 : LDA 7, 62(0) ; Call greater
107 : LD   1, 3(5) ;  Load function result
108 : LDC   2, 4(0) ;  Caller frame size
109 : SUB   5, 5, 2 ;  Pop back to caller
110 : SUB   4, 4, 2 ;  Pop back to caller
111 : ST   1, 5(5) ;  Store function result into stack frame
112 : LD   6, 0(5) ;  Load return address
113 : LDA  7, 0(6) ;  Return to caller
114 : LD   1, 1(5) ;  Load parameter 'x' into R1
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LD   1, 4(5) ;  Load parameter 'yd' into R1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : MUL  1, 2, 1 ;  R1 = left * right
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LD   1, 3(5) ;  Load parameter 'y' into R1
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LD   1, 2(5) ;  Load parameter 'xd' into R1
123 : ADD  2, 3, 0 ;  Restore left operand
124 : MUL  1, 2, 1 ;  R1 = left * right
125 : ADD  2, 3, 0 ;  Restore left operand
126 : SUB  1, 2, 1 ;  left - right for equality check
127 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
128 : LDC  1, 0(0) ;  false
129 : LDA  7, 1(7) ;  skip setting true
130 : LDC  1, 1(0) ;  true
131 : ST   1, 5(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LD   1, 6(5) ;  Load parameter 'b' into R1
135 : LDA 4, 4(5) ; Base of callee frame
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LD   1, 4(5) ;  Load parameter 'N' into R1
138 : LDA 4, 4(5) ; Base of callee frame
139 : ST 1, 2(4) ; Store argument 1 in callee
140 : LDA 4, 4(5) ; Base of callee frame
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 62(0) ; Call greater
145 : LD   1, 3(5) ;  Load function result
146 : LDC   2, 4(0) ;  Caller frame size
147 : SUB   5, 5, 2 ;  Pop back to caller
148 : SUB   4, 4, 2 ;  Pop back to caller
149 : ADD  3, 1, 0 ;  Store left operand into temporary register
150 : LD   1, 8(5) ;  Load parameter 'd' into R1
151 : LDA 4, 4(5) ; Base of callee frame
152 : ST 1, 1(4) ; Store argument 0 in callee
153 : LD   1, 4(5) ;  Load parameter 'N' into R1
154 : LDA 4, 4(5) ; Base of callee frame
155 : ST 1, 2(4) ; Store argument 1 in callee
156 : LDA 4, 4(5) ; Base of callee frame
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame
160 : LDA 7, 62(0) ; Call greater
161 : LD   1, 3(5) ;  Load function result
162 : LDC   2, 4(0) ;  Caller frame size
163 : SUB   5, 5, 2 ;  Pop back to caller
164 : SUB   4, 4, 2 ;  Pop back to caller
165 : ADD  2, 3, 0 ;  Restore left operand
166 : ADD  1, 2, 1 ;  R1 = left OR right
167 : JEQ  1, 206(0) ;  If condition is false, jump to ELSE
168 : LD   1, 1(5) ;  Load parameter 'selector' into R1
169 : ADD  3, 1, 0 ;  Store left operand into temporary register
170 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
171 : ADD  2, 3, 0 ;  Restore left operand
172 : SUB  1, 2, 1 ;  left - right for equality check
173 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
174 : LDC  1, 0(0) ;  false
175 : LDA  7, 1(7) ;  skip setting true
176 : LDC  1, 1(0) ;  true
177 : JEQ  1, 180(0) ;  If condition is false, jump to ELSE
178 : LD   1, 5(5) ;  Load parameter 'a' into R1
179 : LDA  7, 205(0) ;  Skip ELSE block
180 : LD   1, 1(5) ;  Load parameter 'selector' into R1
181 : ADD  3, 1, 0 ;  Store left operand into temporary register
182 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
183 : ADD  2, 3, 0 ;  Restore left operand
184 : SUB  1, 2, 1 ;  left - right for equality check
185 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
186 : LDC  1, 0(0) ;  false
187 : LDA  7, 1(7) ;  skip setting true
188 : LDC  1, 1(0) ;  true
189 : JEQ  1, 192(0) ;  If condition is false, jump to ELSE
190 : LD   1, 6(5) ;  Load parameter 'b' into R1
191 : LDA  7, 205(0) ;  Skip ELSE block
192 : LD   1, 1(5) ;  Load parameter 'selector' into R1
193 : ADD  3, 1, 0 ;  Store left operand into temporary register
194 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
195 : ADD  2, 3, 0 ;  Restore left operand
196 : SUB  1, 2, 1 ;  left - right for equality check
197 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
198 : LDC  1, 0(0) ;  false
199 : LDA  7, 1(7) ;  skip setting true
200 : LDC  1, 1(0) ;  true
201 : JEQ  1, 204(0) ;  If condition is false, jump to ELSE
202 : LD   1, 7(5) ;  Load parameter 'c' into R1
203 : LDA  7, 205(0) ;  Skip ELSE block
204 : LD   1, 8(5) ;  Load parameter 'd' into R1
205 : LDA  7, 403(0) ;  Skip ELSE block
206 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
207 : LDA 4, 6(5) ; Base of callee frame
208 : ST 1, 1(4) ; Store argument 0 in callee
209 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
210 : LDA 4, 6(5) ; Base of callee frame
211 : ST 1, 2(4) ; Store argument 1 in callee
212 : LD   1, 5(5) ;  Load parameter 'a' into R1
213 : ADD  3, 1, 0 ;  Store left operand into temporary register
214 : LD   1, 7(5) ;  Load parameter 'c' into R1
215 : ADD  2, 3, 0 ;  Restore left operand
216 : ADD  1, 2, 1 ;  R1 = left + right
217 : LDA 4, 6(5) ; Base of callee frame
218 : ST 1, 3(4) ; Store argument 2 in callee
219 : LD   1, 6(5) ;  Load parameter 'b' into R1
220 : ADD  3, 1, 0 ;  Store left operand into temporary register
221 : LD   1, 8(5) ;  Load parameter 'd' into R1
222 : ADD  2, 3, 0 ;  Restore left operand
223 : ADD  1, 2, 1 ;  R1 = left + right
224 : LDA 4, 6(5) ; Base of callee frame
225 : ST 1, 4(4) ; Store argument 3 in callee
226 : LDA 4, 6(5) ; Base of callee frame
227 : LDA 6, 231(0) ; Return address
228 : ST 6, 0(4) ; Store return in callee frame
229 : ADD 5, 4, 0 ; Push callee frame
230 : LDA 7, 114(0) ; Call fractionEqual
231 : LD   1, 5(5) ;  Load function result
232 : LDC   2, 6(0) ;  Caller frame size
233 : SUB   5, 5, 2 ;  Pop back to caller
234 : SUB   4, 4, 2 ;  Pop back to caller
235 : JEQ  1, 290(0) ;  If condition is false, jump to ELSE
236 : LD   1, 1(5) ;  Load parameter 'selector' into R1
237 : ADD  3, 1, 0 ;  Store left operand into temporary register
238 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
239 : ADD  2, 3, 0 ;  Restore left operand
240 : SUB  1, 2, 1 ;  left - right for equality check
241 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
242 : LDC  1, 0(0) ;  false
243 : LDA  7, 1(7) ;  skip setting true
244 : LDC  1, 1(0) ;  true
245 : JEQ  1, 252(0) ;  If condition is false, jump to ELSE
246 : LD   1, 5(5) ;  Load parameter 'a' into R1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LD   1, 7(5) ;  Load parameter 'c' into R1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : ADD  1, 2, 1 ;  R1 = left + right
251 : LDA  7, 289(0) ;  Skip ELSE block
252 : LD   1, 1(5) ;  Load parameter 'selector' into R1
253 : ADD  3, 1, 0 ;  Store left operand into temporary register
254 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
255 : ADD  2, 3, 0 ;  Restore left operand
256 : SUB  1, 2, 1 ;  left - right for equality check
257 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
258 : LDC  1, 0(0) ;  false
259 : LDA  7, 1(7) ;  skip setting true
260 : LDC  1, 1(0) ;  true
261 : JEQ  1, 268(0) ;  If condition is false, jump to ELSE
262 : LD   1, 6(5) ;  Load parameter 'b' into R1
263 : ADD  3, 1, 0 ;  Store left operand into temporary register
264 : LD   1, 8(5) ;  Load parameter 'd' into R1
265 : ADD  2, 3, 0 ;  Restore left operand
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : LDA  7, 289(0) ;  Skip ELSE block
268 : LD   1, 1(5) ;  Load parameter 'selector' into R1
269 : ADD  3, 1, 0 ;  Store left operand into temporary register
270 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
271 : ADD  2, 3, 0 ;  Restore left operand
272 : SUB  1, 2, 1 ;  left - right for equality check
273 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
274 : LDC  1, 0(0) ;  false
275 : LDA  7, 1(7) ;  skip setting true
276 : LDC  1, 1(0) ;  true
277 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
278 : LD   1, 5(5) ;  Load parameter 'a' into R1
279 : ADD  3, 1, 0 ;  Store left operand into temporary register
280 : LD   1, 7(5) ;  Load parameter 'c' into R1
281 : ADD  2, 3, 0 ;  Restore left operand
282 : ADD  1, 2, 1 ;  R1 = left + right
283 : LDA  7, 289(0) ;  Skip ELSE block
284 : LD   1, 6(5) ;  Load parameter 'b' into R1
285 : ADD  3, 1, 0 ;  Store left operand into temporary register
286 : LD   1, 8(5) ;  Load parameter 'd' into R1
287 : ADD  2, 3, 0 ;  Restore left operand
288 : ADD  1, 2, 1 ;  R1 = left + right
289 : LDA  7, 403(0) ;  Skip ELSE block
290 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
291 : LDA 4, 6(5) ; Base of callee frame
292 : ST 1, 1(4) ; Store argument 0 in callee
293 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
294 : LDA 4, 6(5) ; Base of callee frame
295 : ST 1, 2(4) ; Store argument 1 in callee
296 : LD   1, 5(5) ;  Load parameter 'a' into R1
297 : ADD  3, 1, 0 ;  Store left operand into temporary register
298 : LD   1, 7(5) ;  Load parameter 'c' into R1
299 : ADD  2, 3, 0 ;  Restore left operand
300 : ADD  1, 2, 1 ;  R1 = left + right
301 : LDA 4, 6(5) ; Base of callee frame
302 : ST 1, 3(4) ; Store argument 2 in callee
303 : LD   1, 6(5) ;  Load parameter 'b' into R1
304 : ADD  3, 1, 0 ;  Store left operand into temporary register
305 : LD   1, 8(5) ;  Load parameter 'd' into R1
306 : ADD  2, 3, 0 ;  Restore left operand
307 : ADD  1, 2, 1 ;  R1 = left + right
308 : LDA 4, 6(5) ; Base of callee frame
309 : ST 1, 4(4) ; Store argument 3 in callee
310 : LDA 4, 6(5) ; Base of callee frame
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return in callee frame
313 : ADD 5, 4, 0 ; Push callee frame
314 : LDA 7, 88(0) ; Call fractionGreater
315 : LD   1, 5(5) ;  Load function result
316 : LDC   2, 6(0) ;  Caller frame size
317 : SUB   5, 5, 2 ;  Pop back to caller
318 : SUB   4, 4, 2 ;  Pop back to caller
319 : JEQ  1, 362(0) ;  If condition is false, jump to ELSE
320 : LD   1, 1(5) ;  Load parameter 'selector' into R1
321 : LDA 4, 10(5) ; Base of callee frame
322 : ST 1, 1(4) ; Store argument 0 in callee
323 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
324 : LDA 4, 10(5) ; Base of callee frame
325 : ST 1, 2(4) ; Store argument 1 in callee
326 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
327 : LDA 4, 10(5) ; Base of callee frame
328 : ST 1, 3(4) ; Store argument 2 in callee
329 : LD   1, 4(5) ;  Load parameter 'N' into R1
330 : LDA 4, 10(5) ; Base of callee frame
331 : ST 1, 4(4) ; Store argument 3 in callee
332 : LD   1, 5(5) ;  Load parameter 'a' into R1
333 : ADD  3, 1, 0 ;  Store left operand into temporary register
334 : LD   1, 7(5) ;  Load parameter 'c' into R1
335 : ADD  2, 3, 0 ;  Restore left operand
336 : ADD  1, 2, 1 ;  R1 = left + right
337 : LDA 4, 10(5) ; Base of callee frame
338 : ST 1, 5(4) ; Store argument 4 in callee
339 : LD   1, 6(5) ;  Load parameter 'b' into R1
340 : ADD  3, 1, 0 ;  Store left operand into temporary register
341 : LD   1, 8(5) ;  Load parameter 'd' into R1
342 : ADD  2, 3, 0 ;  Restore left operand
343 : ADD  1, 2, 1 ;  R1 = left + right
344 : LDA 4, 10(5) ; Base of callee frame
345 : ST 1, 6(4) ; Store argument 5 in callee
346 : LD   1, 7(5) ;  Load parameter 'c' into R1
347 : LDA 4, 10(5) ; Base of callee frame
348 : ST 1, 7(4) ; Store argument 6 in callee
349 : LD   1, 8(5) ;  Load parameter 'd' into R1
350 : LDA 4, 10(5) ; Base of callee frame
351 : ST 1, 8(4) ; Store argument 7 in callee
352 : LDA 4, 10(5) ; Base of callee frame
353 : LDA 6, 357(0) ; Return address
354 : ST 6, 0(4) ; Store return in callee frame
355 : ADD 5, 4, 0 ; Push callee frame
356 : LDA 7, 134(0) ; Call whileLoopFor
357 : LD   1, 9(5) ;  Load function result
358 : LDC   2, 10(0) ;  Caller frame size
359 : SUB   5, 5, 2 ;  Pop back to caller
360 : SUB   4, 4, 2 ;  Pop back to caller
361 : LDA  7, 403(0) ;  Skip ELSE block
362 : LD   1, 1(5) ;  Load parameter 'selector' into R1
363 : LDA 4, 10(5) ; Base of callee frame
364 : ST 1, 1(4) ; Store argument 0 in callee
365 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
366 : LDA 4, 10(5) ; Base of callee frame
367 : ST 1, 2(4) ; Store argument 1 in callee
368 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
369 : LDA 4, 10(5) ; Base of callee frame
370 : ST 1, 3(4) ; Store argument 2 in callee
371 : LD   1, 4(5) ;  Load parameter 'N' into R1
372 : LDA 4, 10(5) ; Base of callee frame
373 : ST 1, 4(4) ; Store argument 3 in callee
374 : LD   1, 5(5) ;  Load parameter 'a' into R1
375 : LDA 4, 10(5) ; Base of callee frame
376 : ST 1, 5(4) ; Store argument 4 in callee
377 : LD   1, 6(5) ;  Load parameter 'b' into R1
378 : LDA 4, 10(5) ; Base of callee frame
379 : ST 1, 6(4) ; Store argument 5 in callee
380 : LD   1, 5(5) ;  Load parameter 'a' into R1
381 : ADD  3, 1, 0 ;  Store left operand into temporary register
382 : LD   1, 7(5) ;  Load parameter 'c' into R1
383 : ADD  2, 3, 0 ;  Restore left operand
384 : ADD  1, 2, 1 ;  R1 = left + right
385 : LDA 4, 10(5) ; Base of callee frame
386 : ST 1, 7(4) ; Store argument 6 in callee
387 : LD   1, 6(5) ;  Load parameter 'b' into R1
388 : ADD  3, 1, 0 ;  Store left operand into temporary register
389 : LD   1, 8(5) ;  Load parameter 'd' into R1
390 : ADD  2, 3, 0 ;  Restore left operand
391 : ADD  1, 2, 1 ;  R1 = left + right
392 : LDA 4, 10(5) ; Base of callee frame
393 : ST 1, 8(4) ; Store argument 7 in callee
394 : LDA 4, 10(5) ; Base of callee frame
395 : LDA 6, 399(0) ; Return address
396 : ST 6, 0(4) ; Store return in callee frame
397 : ADD 5, 4, 0 ; Push callee frame
398 : LDA 7, 134(0) ; Call whileLoopFor
399 : LD   1, 9(5) ;  Load function result
400 : LDC   2, 10(0) ;  Caller frame size
401 : SUB   5, 5, 2 ;  Pop back to caller
402 : SUB   4, 4, 2 ;  Pop back to caller
403 : ST   1, 9(5) ;  Store function result into stack frame
404 : LD   6, 0(5) ;  Load return address
405 : LDA  7, 0(6) ;  Return to caller
406 : LD   1, 3(5) ;  Load parameter 'b' into R1
407 : LDA 4, 4(5) ; Base of callee frame
408 : ST 1, 1(4) ; Store argument 0 in callee
409 : LD   1, 1(5) ;  Load parameter 'N' into R1
410 : LDA 4, 4(5) ; Base of callee frame
411 : ST 1, 2(4) ; Store argument 1 in callee
412 : LDA 4, 4(5) ; Base of callee frame
413 : LDA 6, 417(0) ; Return address
414 : ST 6, 0(4) ; Store return in callee frame
415 : ADD 5, 4, 0 ; Push callee frame
416 : LDA 7, 62(0) ; Call greater
417 : LD   1, 3(5) ;  Load function result
418 : LDC   2, 4(0) ;  Caller frame size
419 : SUB   5, 5, 2 ;  Pop back to caller
420 : SUB   4, 4, 2 ;  Pop back to caller
421 : JEQ  1, 424(0) ;  If condition is false, jump to ELSE
422 : LD   1, 5(5) ;  Load parameter 'd' into R1
423 : LDA  7, 425(0) ;  Skip ELSE block
424 : LD   1, 3(5) ;  Load parameter 'b' into R1
425 : ST   1, 6(5) ;  Store function result into stack frame
426 : LD   6, 0(5) ;  Load return address
427 : LDA  7, 0(6) ;  Return to caller
428 : LD   1, 3(5) ;  Load parameter 'b' into R1
429 : LDA 4, 4(5) ; Base of callee frame
430 : ST 1, 1(4) ; Store argument 0 in callee
431 : LD   1, 1(5) ;  Load parameter 'N' into R1
432 : LDA 4, 4(5) ; Base of callee frame
433 : ST 1, 2(4) ; Store argument 1 in callee
434 : LDA 4, 4(5) ; Base of callee frame
435 : LDA 6, 439(0) ; Return address
436 : ST 6, 0(4) ; Store return in callee frame
437 : ADD 5, 4, 0 ; Push callee frame
438 : LDA 7, 62(0) ; Call greater
439 : LD   1, 3(5) ;  Load function result
440 : LDC   2, 4(0) ;  Caller frame size
441 : SUB   5, 5, 2 ;  Pop back to caller
442 : SUB   4, 4, 2 ;  Pop back to caller
443 : JEQ  1, 446(0) ;  If condition is false, jump to ELSE
444 : LD   1, 4(5) ;  Load parameter 'c' into R1
445 : LDA  7, 447(0) ;  Skip ELSE block
446 : LD   1, 2(5) ;  Load parameter 'a' into R1
447 : ST   1, 6(5) ;  Store function result into stack frame
448 : LD   6, 0(5) ;  Load return address
449 : LDA  7, 0(6) ;  Return to caller
450 : LD   1, 3(5) ;  Load parameter 'N' into R1
451 : LDA 4, 7(5) ; Base of callee frame
452 : ST 1, 1(4) ; Store argument 0 in callee
453 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
454 : LDA 4, 10(5) ; Base of callee frame
455 : ST 1, 1(4) ; Store argument 0 in callee
456 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
457 : LDA 4, 10(5) ; Base of callee frame
458 : ST 1, 2(4) ; Store argument 1 in callee
459 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
460 : LDA 4, 10(5) ; Base of callee frame
461 : ST 1, 3(4) ; Store argument 2 in callee
462 : LD   1, 3(5) ;  Load parameter 'N' into R1
463 : LDA 4, 10(5) ; Base of callee frame
464 : ST 1, 4(4) ; Store argument 3 in callee
465 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
466 : LDA 4, 10(5) ; Base of callee frame
467 : ST 1, 5(4) ; Store argument 4 in callee
468 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
469 : LDA 4, 10(5) ; Base of callee frame
470 : ST 1, 6(4) ; Store argument 5 in callee
471 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
472 : LDA 4, 10(5) ; Base of callee frame
473 : ST 1, 7(4) ; Store argument 6 in callee
474 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
475 : LDA 4, 10(5) ; Base of callee frame
476 : ST 1, 8(4) ; Store argument 7 in callee
477 : LDA 4, 10(5) ; Base of callee frame
478 : LDA 6, 482(0) ; Return address
479 : ST 6, 0(4) ; Store return in callee frame
480 : ADD 5, 4, 0 ; Push callee frame
481 : LDA 7, 134(0) ; Call whileLoopFor
482 : LD   1, 9(5) ;  Load function result
483 : LDC   2, 10(0) ;  Caller frame size
484 : SUB   5, 5, 2 ;  Pop back to caller
485 : SUB   4, 4, 2 ;  Pop back to caller
486 : LDA 4, 7(5) ; Base of callee frame
487 : ST 1, 2(4) ; Store argument 1 in callee
488 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
489 : LDA 4, 10(5) ; Base of callee frame
490 : ST 1, 1(4) ; Store argument 0 in callee
491 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
492 : LDA 4, 10(5) ; Base of callee frame
493 : ST 1, 2(4) ; Store argument 1 in callee
494 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
495 : LDA 4, 10(5) ; Base of callee frame
496 : ST 1, 3(4) ; Store argument 2 in callee
497 : LD   1, 3(5) ;  Load parameter 'N' into R1
498 : LDA 4, 10(5) ; Base of callee frame
499 : ST 1, 4(4) ; Store argument 3 in callee
500 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
501 : LDA 4, 10(5) ; Base of callee frame
502 : ST 1, 5(4) ; Store argument 4 in callee
503 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
504 : LDA 4, 10(5) ; Base of callee frame
505 : ST 1, 6(4) ; Store argument 5 in callee
506 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
507 : LDA 4, 10(5) ; Base of callee frame
508 : ST 1, 7(4) ; Store argument 6 in callee
509 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
510 : LDA 4, 10(5) ; Base of callee frame
511 : ST 1, 8(4) ; Store argument 7 in callee
512 : LDA 4, 10(5) ; Base of callee frame
513 : LDA 6, 517(0) ; Return address
514 : ST 6, 0(4) ; Store return in callee frame
515 : ADD 5, 4, 0 ; Push callee frame
516 : LDA 7, 134(0) ; Call whileLoopFor
517 : LD   1, 9(5) ;  Load function result
518 : LDC   2, 10(0) ;  Caller frame size
519 : SUB   5, 5, 2 ;  Pop back to caller
520 : SUB   4, 4, 2 ;  Pop back to caller
521 : LDA 4, 7(5) ; Base of callee frame
522 : ST 1, 3(4) ; Store argument 2 in callee
523 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
524 : LDA 4, 10(5) ; Base of callee frame
525 : ST 1, 1(4) ; Store argument 0 in callee
526 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
527 : LDA 4, 10(5) ; Base of callee frame
528 : ST 1, 2(4) ; Store argument 1 in callee
529 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
530 : LDA 4, 10(5) ; Base of callee frame
531 : ST 1, 3(4) ; Store argument 2 in callee
532 : LD   1, 3(5) ;  Load parameter 'N' into R1
533 : LDA 4, 10(5) ; Base of callee frame
534 : ST 1, 4(4) ; Store argument 3 in callee
535 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
536 : LDA 4, 10(5) ; Base of callee frame
537 : ST 1, 5(4) ; Store argument 4 in callee
538 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
539 : LDA 4, 10(5) ; Base of callee frame
540 : ST 1, 6(4) ; Store argument 5 in callee
541 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
542 : LDA 4, 10(5) ; Base of callee frame
543 : ST 1, 7(4) ; Store argument 6 in callee
544 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
545 : LDA 4, 10(5) ; Base of callee frame
546 : ST 1, 8(4) ; Store argument 7 in callee
547 : LDA 4, 10(5) ; Base of callee frame
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return in callee frame
550 : ADD 5, 4, 0 ; Push callee frame
551 : LDA 7, 134(0) ; Call whileLoopFor
552 : LD   1, 9(5) ;  Load function result
553 : LDC   2, 10(0) ;  Caller frame size
554 : SUB   5, 5, 2 ;  Pop back to caller
555 : SUB   4, 4, 2 ;  Pop back to caller
556 : LDA 4, 7(5) ; Base of callee frame
557 : ST 1, 4(4) ; Store argument 3 in callee
558 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
559 : LDA 4, 10(5) ; Base of callee frame
560 : ST 1, 1(4) ; Store argument 0 in callee
561 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
562 : LDA 4, 10(5) ; Base of callee frame
563 : ST 1, 2(4) ; Store argument 1 in callee
564 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
565 : LDA 4, 10(5) ; Base of callee frame
566 : ST 1, 3(4) ; Store argument 2 in callee
567 : LD   1, 3(5) ;  Load parameter 'N' into R1
568 : LDA 4, 10(5) ; Base of callee frame
569 : ST 1, 4(4) ; Store argument 3 in callee
570 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
571 : LDA 4, 10(5) ; Base of callee frame
572 : ST 1, 5(4) ; Store argument 4 in callee
573 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
574 : LDA 4, 10(5) ; Base of callee frame
575 : ST 1, 6(4) ; Store argument 5 in callee
576 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
577 : LDA 4, 10(5) ; Base of callee frame
578 : ST 1, 7(4) ; Store argument 6 in callee
579 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
580 : LDA 4, 10(5) ; Base of callee frame
581 : ST 1, 8(4) ; Store argument 7 in callee
582 : LDA 4, 10(5) ; Base of callee frame
583 : LDA 6, 587(0) ; Return address
584 : ST 6, 0(4) ; Store return in callee frame
585 : ADD 5, 4, 0 ; Push callee frame
586 : LDA 7, 134(0) ; Call whileLoopFor
587 : LD   1, 9(5) ;  Load function result
588 : LDC   2, 10(0) ;  Caller frame size
589 : SUB   5, 5, 2 ;  Pop back to caller
590 : SUB   4, 4, 2 ;  Pop back to caller
591 : LDA 4, 7(5) ; Base of callee frame
592 : ST 1, 5(4) ; Store argument 4 in callee
593 : LDA 4, 7(5) ; Base of callee frame
594 : LDA 6, 598(0) ; Return address
595 : ST 6, 0(4) ; Store return in callee frame
596 : ADD 5, 4, 0 ; Push callee frame
597 : LDA 7, 406(0) ; Call fareySelectDen
598 : LD   1, 6(5) ;  Load function result
599 : LDC   2, 7(0) ;  Caller frame size
600 : SUB   5, 5, 2 ;  Pop back to caller
601 : SUB   4, 4, 2 ;  Pop back to caller
602 : ST   1, 4(5) ;  Store function result into stack frame
603 : LD   6, 0(5) ;  Load return address
604 : LDA  7, 0(6) ;  Return to caller
605 : LD   1, 3(5) ;  Load parameter 'N' into R1
606 : LDA 4, 7(5) ; Base of callee frame
607 : ST 1, 1(4) ; Store argument 0 in callee
608 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
609 : LDA 4, 10(5) ; Base of callee frame
610 : ST 1, 1(4) ; Store argument 0 in callee
611 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
612 : LDA 4, 10(5) ; Base of callee frame
613 : ST 1, 2(4) ; Store argument 1 in callee
614 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
615 : LDA 4, 10(5) ; Base of callee frame
616 : ST 1, 3(4) ; Store argument 2 in callee
617 : LD   1, 3(5) ;  Load parameter 'N' into R1
618 : LDA 4, 10(5) ; Base of callee frame
619 : ST 1, 4(4) ; Store argument 3 in callee
620 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
621 : LDA 4, 10(5) ; Base of callee frame
622 : ST 1, 5(4) ; Store argument 4 in callee
623 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
624 : LDA 4, 10(5) ; Base of callee frame
625 : ST 1, 6(4) ; Store argument 5 in callee
626 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
627 : LDA 4, 10(5) ; Base of callee frame
628 : ST 1, 7(4) ; Store argument 6 in callee
629 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
630 : LDA 4, 10(5) ; Base of callee frame
631 : ST 1, 8(4) ; Store argument 7 in callee
632 : LDA 4, 10(5) ; Base of callee frame
633 : LDA 6, 637(0) ; Return address
634 : ST 6, 0(4) ; Store return in callee frame
635 : ADD 5, 4, 0 ; Push callee frame
636 : LDA 7, 134(0) ; Call whileLoopFor
637 : LD   1, 9(5) ;  Load function result
638 : LDC   2, 10(0) ;  Caller frame size
639 : SUB   5, 5, 2 ;  Pop back to caller
640 : SUB   4, 4, 2 ;  Pop back to caller
641 : LDA 4, 7(5) ; Base of callee frame
642 : ST 1, 2(4) ; Store argument 1 in callee
643 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
644 : LDA 4, 10(5) ; Base of callee frame
645 : ST 1, 1(4) ; Store argument 0 in callee
646 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
647 : LDA 4, 10(5) ; Base of callee frame
648 : ST 1, 2(4) ; Store argument 1 in callee
649 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
650 : LDA 4, 10(5) ; Base of callee frame
651 : ST 1, 3(4) ; Store argument 2 in callee
652 : LD   1, 3(5) ;  Load parameter 'N' into R1
653 : LDA 4, 10(5) ; Base of callee frame
654 : ST 1, 4(4) ; Store argument 3 in callee
655 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
656 : LDA 4, 10(5) ; Base of callee frame
657 : ST 1, 5(4) ; Store argument 4 in callee
658 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
659 : LDA 4, 10(5) ; Base of callee frame
660 : ST 1, 6(4) ; Store argument 5 in callee
661 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
662 : LDA 4, 10(5) ; Base of callee frame
663 : ST 1, 7(4) ; Store argument 6 in callee
664 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
665 : LDA 4, 10(5) ; Base of callee frame
666 : ST 1, 8(4) ; Store argument 7 in callee
667 : LDA 4, 10(5) ; Base of callee frame
668 : LDA 6, 672(0) ; Return address
669 : ST 6, 0(4) ; Store return in callee frame
670 : ADD 5, 4, 0 ; Push callee frame
671 : LDA 7, 134(0) ; Call whileLoopFor
672 : LD   1, 9(5) ;  Load function result
673 : LDC   2, 10(0) ;  Caller frame size
674 : SUB   5, 5, 2 ;  Pop back to caller
675 : SUB   4, 4, 2 ;  Pop back to caller
676 : LDA 4, 7(5) ; Base of callee frame
677 : ST 1, 3(4) ; Store argument 2 in callee
678 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
679 : LDA 4, 10(5) ; Base of callee frame
680 : ST 1, 1(4) ; Store argument 0 in callee
681 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
682 : LDA 4, 10(5) ; Base of callee frame
683 : ST 1, 2(4) ; Store argument 1 in callee
684 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
685 : LDA 4, 10(5) ; Base of callee frame
686 : ST 1, 3(4) ; Store argument 2 in callee
687 : LD   1, 3(5) ;  Load parameter 'N' into R1
688 : LDA 4, 10(5) ; Base of callee frame
689 : ST 1, 4(4) ; Store argument 3 in callee
690 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
691 : LDA 4, 10(5) ; Base of callee frame
692 : ST 1, 5(4) ; Store argument 4 in callee
693 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
694 : LDA 4, 10(5) ; Base of callee frame
695 : ST 1, 6(4) ; Store argument 5 in callee
696 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
697 : LDA 4, 10(5) ; Base of callee frame
698 : ST 1, 7(4) ; Store argument 6 in callee
699 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
700 : LDA 4, 10(5) ; Base of callee frame
701 : ST 1, 8(4) ; Store argument 7 in callee
702 : LDA 4, 10(5) ; Base of callee frame
703 : LDA 6, 707(0) ; Return address
704 : ST 6, 0(4) ; Store return in callee frame
705 : ADD 5, 4, 0 ; Push callee frame
706 : LDA 7, 134(0) ; Call whileLoopFor
707 : LD   1, 9(5) ;  Load function result
708 : LDC   2, 10(0) ;  Caller frame size
709 : SUB   5, 5, 2 ;  Pop back to caller
710 : SUB   4, 4, 2 ;  Pop back to caller
711 : LDA 4, 7(5) ; Base of callee frame
712 : ST 1, 4(4) ; Store argument 3 in callee
713 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
714 : LDA 4, 10(5) ; Base of callee frame
715 : ST 1, 1(4) ; Store argument 0 in callee
716 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
717 : LDA 4, 10(5) ; Base of callee frame
718 : ST 1, 2(4) ; Store argument 1 in callee
719 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
720 : LDA 4, 10(5) ; Base of callee frame
721 : ST 1, 3(4) ; Store argument 2 in callee
722 : LD   1, 3(5) ;  Load parameter 'N' into R1
723 : LDA 4, 10(5) ; Base of callee frame
724 : ST 1, 4(4) ; Store argument 3 in callee
725 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
726 : LDA 4, 10(5) ; Base of callee frame
727 : ST 1, 5(4) ; Store argument 4 in callee
728 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
729 : LDA 4, 10(5) ; Base of callee frame
730 : ST 1, 6(4) ; Store argument 5 in callee
731 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
732 : LDA 4, 10(5) ; Base of callee frame
733 : ST 1, 7(4) ; Store argument 6 in callee
734 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
735 : LDA 4, 10(5) ; Base of callee frame
736 : ST 1, 8(4) ; Store argument 7 in callee
737 : LDA 4, 10(5) ; Base of callee frame
738 : LDA 6, 742(0) ; Return address
739 : ST 6, 0(4) ; Store return in callee frame
740 : ADD 5, 4, 0 ; Push callee frame
741 : LDA 7, 134(0) ; Call whileLoopFor
742 : LD   1, 9(5) ;  Load function result
743 : LDC   2, 10(0) ;  Caller frame size
744 : SUB   5, 5, 2 ;  Pop back to caller
745 : SUB   4, 4, 2 ;  Pop back to caller
746 : LDA 4, 7(5) ; Base of callee frame
747 : ST 1, 5(4) ; Store argument 4 in callee
748 : LDA 4, 7(5) ; Base of callee frame
749 : LDA 6, 753(0) ; Return address
750 : ST 6, 0(4) ; Store return in callee frame
751 : ADD 5, 4, 0 ; Push callee frame
752 : LDA 7, 428(0) ; Call fareySelectNum
753 : LD   1, 6(5) ;  Load function result
754 : LDC   2, 7(0) ;  Caller frame size
755 : SUB   5, 5, 2 ;  Pop back to caller
756 : SUB   4, 4, 2 ;  Pop back to caller
757 : ST   1, 4(5) ;  Store function result into stack frame
758 : LD   6, 0(5) ;  Load return address
759 : LDA  7, 0(6) ;  Return to caller
