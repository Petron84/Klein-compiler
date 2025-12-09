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
22 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
23 : LDA 4, 4(5) ; Base of callee frame
24 : LD   1, 1(5) ;  Load parameter 'n' into R1
25 : ST 1, 1(4) ; Store argument 0 in callee
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 338(0) ; Call emirp
30 : LD   1, 2(5) ;  Load function result
31 : LDC   2, 4(0) ;  Caller frame size
32 : SUB   5, 5, 2 ;  Pop back to caller
33 : SUB   4, 4, 2 ;  Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s frame
35 : LDA  7, 84(0) ;  Skip ELSE block
36 : LD   1, 2(5) ;  Load parameter 'selector' into R1
37 : ADD  3, 1, 0 ;  Store left operand into temporary register
38 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
39 : ADD  2, 3, 0 ;  Restore left operand
40 : SUB  1, 2, 1 ;  left - right for equality check
41 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
42 : LDC  1, 0(0) ;  false
43 : LDA  7, 1(7) ;  skip setting true
44 : LDC  1, 1(0) ;  true
45 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
46 : LDA 4, 4(5) ; Base of callee frame
47 : LD   1, 1(5) ;  Load parameter 'n' into R1
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 294(0) ; Call snowball
53 : LD   1, 2(5) ;  Load function result
54 : LDC   2, 4(0) ;  Caller frame size
55 : SUB   5, 5, 2 ;  Pop back to caller
56 : SUB   4, 4, 2 ;  Pop back to caller
57 : ST 1, 3(5) ; Store result into caller’s frame
58 : LDA  7, 84(0) ;  Skip ELSE block
59 : LD   1, 2(5) ;  Load parameter 'selector' into R1
60 : ADD  3, 1, 0 ;  Store left operand into temporary register
61 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : SUB  1, 2, 1 ;  left - right for equality check
64 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : JEQ  1, 82(0) ;  If condition is false, jump to ELSE
69 : LDA 4, 4(5) ; Base of callee frame
70 : LD   1, 1(5) ;  Load parameter 'n' into R1
71 : ST 1, 1(4) ; Store argument 0 in callee
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame
75 : LDA 7, 261(0) ; Call doBoth
76 : LD   1, 2(5) ;  Load function result
77 : LDC   2, 4(0) ;  Caller frame size
78 : SUB   5, 5, 2 ;  Pop back to caller
79 : SUB   4, 4, 2 ;  Pop back to caller
80 : ST 1, 3(5) ; Store result into caller’s frame
81 : LDA  7, 84(0) ;  Skip ELSE block
82 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
83 : ST 1, 3(5) ;  Store result into current frame's return slot
84 : LD   1, 3(5) ;  Load return value into register 1
85 : LD  6, 0(5) ;  Load return address for main function into register 6
86 : LDA  7, 0(6) ;  Jump to return address of main function
87 : LD   1, 1(5) ;  Load parameter 'm' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 1(5) ;  Load parameter 'm' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : DIV  1, 2, 1 ;  R1 = left / right
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 2(5) ;  Load parameter 'n' into R1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ADD  2, 3, 0 ;  Restore left operand
99 : SUB  1, 2, 1 ;  R1 = left - right
100 : ST   1, 3(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
103 : LD   1, 1(5) ;  Load parameter 'n' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : SUB  1, 2, 1 ;  left - right for equality check
108 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
109 : LDC  1, 0(0) ;  false
110 : LDA  7, 1(7) ;  skip setting true
111 : LDC  1, 1(0) ;  true
112 : JEQ  1, 115(0) ;  If condition is false, jump to ELSE
113 : LD   1, 2(5) ;  Load parameter 'nR' into R1
114 : LDA  7, 152(0) ;  Skip ELSE block
115 : LDA 4, 4(5) ; Base of callee frame
116 : LD   1, 1(5) ;  Load parameter 'n' into R1
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
119 : ADD  2, 3, 0 ;  Restore left operand
120 : DIV  1, 2, 1 ;  R1 = left / right
121 : ST 1, 1(4) ; Store argument 0 in callee
122 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
123 : ADD  3, 1, 0 ;  Store left operand into temporary register
124 : LD   1, 2(5) ;  Load parameter 'nR' into R1
125 : ADD  2, 3, 0 ;  Restore left operand
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ADD  3, 1, 0 ;  Store left operand into temporary register
128 : LDA 4, 4(5) ; Base of callee frame
129 : LD   1, 1(5) ;  Load parameter 'n' into R1
130 : ST 1, 1(4) ; Store argument 0 in callee
131 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
132 : ST 1, 2(4) ; Store argument 1 in callee
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame
136 : LDA 7, 87(0) ; Call MOD
137 : LD   1, 3(5) ;  Load function result
138 : LDC   2, 4(0) ;  Caller frame size
139 : SUB   5, 5, 2 ;  Pop back to caller
140 : SUB   4, 4, 2 ;  Pop back to caller
141 : ADD  2, 3, 0 ;  Restore left operand
142 : ADD  1, 2, 1 ;  R1 = left + right
143 : ST 1, 2(4) ; Store argument 1 in callee
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame
147 : LDA 7, 103(0) ; Call reverseL
148 : LD   1, 3(5) ;  Load function result
149 : LDC   2, 4(0) ;  Caller frame size
150 : SUB   5, 5, 2 ;  Pop back to caller
151 : SUB   4, 4, 2 ;  Pop back to caller
152 : ST   1, 3(5) ;  Store function result into stack frame
153 : LD   6, 0(5) ;  Load return address
154 : LDA  7, 0(6) ;  Return to caller
155 : LDA 4, 3(5) ; Base of callee frame
156 : LD   1, 1(5) ;  Load parameter 'n' into R1
157 : ST 1, 1(4) ; Store argument 0 in callee
158 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
159 : ST 1, 2(4) ; Store argument 1 in callee
160 : LDA 6, 164(0) ; Return address
161 : ST 6, 0(4) ; Store return in callee frame
162 : ADD 5, 4, 0 ; Push callee frame
163 : LDA 7, 103(0) ; Call reverseL
164 : LD   1, 3(5) ;  Load function result
165 : LDC   2, 3(0) ;  Caller frame size
166 : SUB   5, 5, 2 ;  Pop back to caller
167 : SUB   4, 4, 2 ;  Pop back to caller
168 : ST   1, 2(5) ;  Store function result into stack frame
169 : LD   6, 0(5) ;  Load return address
170 : LDA  7, 0(6) ;  Return to caller
171 : LDA 4, 4(5) ; Base of callee frame
172 : LD   1, 2(5) ;  Load parameter 'b' into R1
173 : ST 1, 1(4) ; Store argument 0 in callee
174 : LD   1, 1(5) ;  Load parameter 'a' into R1
175 : ST 1, 2(4) ; Store argument 1 in callee
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame
179 : LDA 7, 87(0) ; Call MOD
180 : LD   1, 3(5) ;  Load function result
181 : LDC   2, 4(0) ;  Caller frame size
182 : SUB   5, 5, 2 ;  Pop back to caller
183 : SUB   4, 4, 2 ;  Pop back to caller
184 : ADD  3, 1, 0 ;  Store left operand into temporary register
185 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
186 : ADD  2, 3, 0 ;  Restore left operand
187 : SUB  1, 2, 1 ;  left - right for equality check
188 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
189 : LDC  1, 0(0) ;  false
190 : LDA  7, 1(7) ;  skip setting true
191 : LDC  1, 1(0) ;  true
192 : ST   1, 3(5) ;  Store function result into stack frame
193 : LD   6, 0(5) ;  Load return address
194 : LDA  7, 0(6) ;  Return to caller
195 : LD   1, 1(5) ;  Load parameter 'i' into R1
196 : ADD  3, 1, 0 ;  Store left operand into temporary register
197 : LD   1, 2(5) ;  Load parameter 'n' into R1
198 : ADD  2, 3, 0 ;  Restore left operand
199 : SUB  1, 2, 1 ;  left - right for less-than check
200 : JLT  1, 2(7) ;  If R1 < 0, jump to true
201 : LDC  1, 0(0) ;  false
202 : LDA  7, 1(7) ;  skip setting true
203 : LDC  1, 1(0) ;  true
204 : JEQ  1, 239(0) ;  If condition is false, jump to ELSE
205 : LDA 4, 4(5) ; Base of callee frame
206 : LD   1, 1(5) ;  Load parameter 'i' into R1
207 : ST 1, 1(4) ; Store argument 0 in callee
208 : LD   1, 2(5) ;  Load parameter 'n' into R1
209 : ST 1, 2(4) ; Store argument 1 in callee
210 : LDA 6, 214(0) ; Return address
211 : ST 6, 0(4) ; Store return in callee frame
212 : ADD 5, 4, 0 ; Push callee frame
213 : LDA 7, 171(0) ; Call divides
214 : LD   1, 3(5) ;  Load function result
215 : LDC   2, 4(0) ;  Caller frame size
216 : SUB   5, 5, 2 ;  Pop back to caller
217 : SUB   4, 4, 2 ;  Pop back to caller
218 : ADD  3, 1, 0 ;  Store left operand into temporary register
219 : LDA 4, 4(5) ; Base of callee frame
220 : LD   1, 1(5) ;  Load parameter 'i' into R1
221 : ADD  3, 1, 0 ;  Store left operand into temporary register
222 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
223 : ADD  2, 3, 0 ;  Restore left operand
224 : ADD  1, 2, 1 ;  R1 = left + right
225 : ST 1, 1(4) ; Store argument 0 in callee
226 : LD   1, 2(5) ;  Load parameter 'n' into R1
227 : ST 1, 2(4) ; Store argument 1 in callee
228 : LDA 6, 232(0) ; Return address
229 : ST 6, 0(4) ; Store return in callee frame
230 : ADD 5, 4, 0 ; Push callee frame
231 : LDA 7, 195(0) ; Call hasDivisorFrom
232 : LD   1, 3(5) ;  Load function result
233 : LDC   2, 4(0) ;  Caller frame size
234 : SUB   5, 5, 2 ;  Pop back to caller
235 : SUB   4, 4, 2 ;  Pop back to caller
236 : ADD  2, 3, 0 ;  Restore left operand
237 : ADD  1, 2, 1 ;  R1 = left OR right
238 : LDA  7, 240(0) ;  Skip ELSE block
239 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
240 : ST   1, 3(5) ;  Store function result into stack frame
241 : LD   6, 0(5) ;  Load return address
242 : LDA  7, 0(6) ;  Return to caller
243 : LDA 4, 3(5) ; Base of callee frame
244 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
245 : ST 1, 1(4) ; Store argument 0 in callee
246 : LD   1, 1(5) ;  Load parameter 'n' into R1
247 : ST 1, 2(4) ; Store argument 1 in callee
248 : LDA 6, 252(0) ; Return address
249 : ST 6, 0(4) ; Store return in callee frame
250 : ADD 5, 4, 0 ; Push callee frame
251 : LDA 7, 195(0) ; Call hasDivisorFrom
252 : LD   1, 3(5) ;  Load function result
253 : LDC   2, 3(0) ;  Caller frame size
254 : SUB   5, 5, 2 ;  Pop back to caller
255 : SUB   4, 4, 2 ;  Pop back to caller
256 : LDC  2, 1(0) ;  Load 1 into R2
257 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
258 : ST   1, 2(5) ;  Store function result into stack frame
259 : LD   6, 0(5) ;  Load return address
260 : LDA  7, 0(6) ;  Return to caller
261 : LDA 4, 3(5) ; Base of callee frame
262 : LD   1, 1(5) ;  Load parameter 'n' into R1
263 : ST 1, 1(4) ; Store argument 0 in callee
264 : LDA 6, 268(0) ; Return address
265 : ST 6, 0(4) ; Store return in callee frame
266 : ADD 5, 4, 0 ; Push callee frame
267 : LDA 7, 338(0) ; Call emirp
268 : LD   1, 2(5) ;  Load function result
269 : LDC   2, 3(0) ;  Caller frame size
270 : SUB   5, 5, 2 ;  Pop back to caller
271 : SUB   4, 4, 2 ;  Pop back to caller
272 : LDA 4, 3(5) ; Base of callee frame
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return addr in callee frame
275 : ADD 5, 4, 0 ; Push new frame
276 : LDA 7, 10(0) ; Call print
277 : LDC 2, 3(0) ; Caller frame size
278 : SUB 5, 5, 2 ; Pop frame
279 : ST   1, 2(5) ;  Store function result into stack frame
280 : LDA 4, 3(5) ; Base of callee frame
281 : LD   1, 1(5) ;  Load parameter 'n' into R1
282 : ST 1, 1(4) ; Store argument 0 in callee
283 : LDA 6, 287(0) ; Return address
284 : ST 6, 0(4) ; Store return in callee frame
285 : ADD 5, 4, 0 ; Push callee frame
286 : LDA 7, 294(0) ; Call snowball
287 : LD   1, 2(5) ;  Load function result
288 : LDC   2, 3(0) ;  Caller frame size
289 : SUB   5, 5, 2 ;  Pop back to caller
290 : SUB   4, 4, 2 ;  Pop back to caller
291 : ST   1, 2(5) ;  Store function result into stack frame
292 : LD   6, 0(5) ;  Load return address
293 : LDA  7, 0(6) ;  Return to caller
294 : LDA 4, 3(5) ; Base of callee frame
295 : LD   1, 1(5) ;  Load parameter 'n' into R1
296 : ST 1, 1(4) ; Store argument 0 in callee
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(4) ; Store return in callee frame
299 : ADD 5, 4, 0 ; Push callee frame
300 : LDA 7, 243(0) ; Call isPrime
301 : LD   1, 2(5) ;  Load function result
302 : LDC   2, 3(0) ;  Caller frame size
303 : SUB   5, 5, 2 ;  Pop back to caller
304 : SUB   4, 4, 2 ;  Pop back to caller
305 : ADD  3, 1, 0 ;  Store left operand into temporary register
306 : LD   1, 1(5) ;  Load parameter 'n' into R1
307 : ADD  3, 1, 0 ;  Store left operand into temporary register
308 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
309 : ADD  2, 3, 0 ;  Restore left operand
310 : SUB  1, 2, 1 ;  left - right for less-than check
311 : JLT  1, 2(7) ;  If R1 < 0, jump to true
312 : LDC  1, 0(0) ;  false
313 : LDA  7, 1(7) ;  skip setting true
314 : LDC  1, 1(0) ;  true
315 : JEQ  1, 318(0) ;  If condition is false, jump to ELSE
316 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
317 : LDA  7, 333(0) ;  Skip ELSE block
318 : LDA 4, 3(5) ; Base of callee frame
319 : LD   1, 1(5) ;  Load parameter 'n' into R1
320 : ADD  3, 1, 0 ;  Store left operand into temporary register
321 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
322 : ADD  2, 3, 0 ;  Restore left operand
323 : DIV  1, 2, 1 ;  R1 = left / right
324 : ST 1, 1(4) ; Store argument 0 in callee
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return in callee frame
327 : ADD 5, 4, 0 ; Push callee frame
328 : LDA 7, 243(0) ; Call isPrime
329 : LD   1, 2(5) ;  Load function result
330 : LDC   2, 3(0) ;  Caller frame size
331 : SUB   5, 5, 2 ;  Pop back to caller
332 : SUB   4, 4, 2 ;  Pop back to caller
333 : ADD  2, 3, 0 ;  Restore left operand
334 : MUL  1, 2, 1 ;  R1 = left AND right
335 : ST   1, 2(5) ;  Store function result into stack frame
336 : LD   6, 0(5) ;  Load return address
337 : LDA  7, 0(6) ;  Return to caller
338 : LDA 4, 3(5) ; Base of callee frame
339 : LD   1, 1(5) ;  Load parameter 'n' into R1
340 : ST 1, 1(4) ; Store argument 0 in callee
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return in callee frame
343 : ADD 5, 4, 0 ; Push callee frame
344 : LDA 7, 243(0) ; Call isPrime
345 : LD   1, 2(5) ;  Load function result
346 : LDC   2, 3(0) ;  Caller frame size
347 : SUB   5, 5, 2 ;  Pop back to caller
348 : SUB   4, 4, 2 ;  Pop back to caller
349 : ADD  3, 1, 0 ;  Store left operand into temporary register
350 : LDA 4, 3(5) ; Base of callee frame
351 : LDA 4, 3(5) ; Base of callee frame
352 : LD   1, 1(5) ;  Load parameter 'n' into R1
353 : ST 1, 1(4) ; Store argument 0 in callee
354 : LDA 6, 358(0) ; Return address
355 : ST 6, 0(4) ; Store return in callee frame
356 : ADD 5, 4, 0 ; Push callee frame
357 : LDA 7, 155(0) ; Call reverse
358 : LD   1, 2(5) ;  Load function result
359 : LDC   2, 3(0) ;  Caller frame size
360 : SUB   5, 5, 2 ;  Pop back to caller
361 : SUB   4, 4, 2 ;  Pop back to caller
362 : ST 1, 1(4) ; Store argument 0 in callee
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return in callee frame
365 : ADD 5, 4, 0 ; Push callee frame
366 : LDA 7, 243(0) ; Call isPrime
367 : LD   1, 2(5) ;  Load function result
368 : LDC   2, 3(0) ;  Caller frame size
369 : SUB   5, 5, 2 ;  Pop back to caller
370 : SUB   4, 4, 2 ;  Pop back to caller
371 : ADD  2, 3, 0 ;  Restore left operand
372 : MUL  1, 2, 1 ;  R1 = left AND right
373 : ST   1, 2(5) ;  Store function result into stack frame
374 : LD   6, 0(5) ;  Load return address
375 : LDA  7, 0(6) ;  Return to caller
