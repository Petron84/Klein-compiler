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
14 : ADD  3, 1, 0 ;  Save left operand
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : ST   1, 4(5) ;  Spill Temporary
25 : LDA 4, 3(5) ; Restore Callee frame base
26 : LD   1, 4(5) ;  Restore Temporary
27 : ST 1, 1(4) ;  Store argument 0 into callee frame
28 : LDA 4, 3(5) ; Restore Call frame base
29 : LDA 6, 33(0) ;  Compute return address
30 : ST 6, 0(4) ;  Store return address in callee frame
31 : ADD 5, 4, 0 ;  Update pointer
32 : LDA 7, 380(0) ;  Call emirp
33 : LD 1, 2(5) ;  Load callee return value into R1
34 : LDC 4, 3(0) ;  Load frame size
35 : SUB 5, 5, 4 ;  Restore pointer
36 : ST 1, 3(5) ;  Store result into current frame's return slot
37 : LDA  7, 90(0) ;  Skip ELSE block
38 : LD   1, 2(5) ;  Load parameter 'selector' into R1
39 : ADD  3, 1, 0 ;  Save left operand
40 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
41 : ADD  2, 3, 0 ;  restore left operand
42 : SUB  1, 2, 1 ;  left - right for equality check
43 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
44 : LDC  1, 0(0) ;  false
45 : LDA  7, 1(7) ;  skip setting true
46 : LDC  1, 1(0) ;  true
47 : JEQ  1, 63(0) ;  If condition is false, jump to ELSE
48 : LD   1, 1(5) ;  Load parameter 'n' into R1
49 : ST   1, 4(5) ;  Spill Temporary
50 : LDA 4, 3(5) ; Restore Callee frame base
51 : LD   1, 4(5) ;  Restore Temporary
52 : ST 1, 1(4) ;  Store argument 0 into callee frame
53 : LDA 4, 3(5) ; Restore Call frame base
54 : LDA 6, 58(0) ;  Compute return address
55 : ST 6, 0(4) ;  Store return address in callee frame
56 : ADD 5, 4, 0 ;  Update pointer
57 : LDA 7, 332(0) ;  Call snowball
58 : LD 1, 2(5) ;  Load callee return value into R1
59 : LDC 4, 3(0) ;  Load frame size
60 : SUB 5, 5, 4 ;  Restore pointer
61 : ST 1, 3(5) ;  Store result into current frame's return slot
62 : LDA  7, 90(0) ;  Skip ELSE block
63 : LD   1, 2(5) ;  Load parameter 'selector' into R1
64 : ADD  3, 1, 0 ;  Save left operand
65 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
66 : ADD  2, 3, 0 ;  restore left operand
67 : SUB  1, 2, 1 ;  left - right for equality check
68 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
69 : LDC  1, 0(0) ;  false
70 : LDA  7, 1(7) ;  skip setting true
71 : LDC  1, 1(0) ;  true
72 : JEQ  1, 88(0) ;  If condition is false, jump to ELSE
73 : LD   1, 1(5) ;  Load parameter 'n' into R1
74 : ST   1, 4(5) ;  Spill Temporary
75 : LDA 4, 3(5) ; Restore Callee frame base
76 : LD   1, 4(5) ;  Restore Temporary
77 : ST 1, 1(4) ;  Store argument 0 into callee frame
78 : LDA 4, 3(5) ; Restore Call frame base
79 : LDA 6, 83(0) ;  Compute return address
80 : ST 6, 0(4) ;  Store return address in callee frame
81 : ADD 5, 4, 0 ;  Update pointer
82 : LDA 7, 295(0) ;  Call doBoth
83 : LD 1, 2(5) ;  Load callee return value into R1
84 : LDC 4, 3(0) ;  Load frame size
85 : SUB 5, 5, 4 ;  Restore pointer
86 : ST 1, 3(5) ;  Store result into current frame's return slot
87 : LDA  7, 90(0) ;  Skip ELSE block
88 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
89 : ST 1, 3(5) ;  Store result into current frame's return slot
90 : LD   1, 3(5) ;  Load return value into register 1
91 : LD  6, 0(5) ;  Load return address for main function into register 6
92 : LDA  7, 0(6) ;  Jump to return address of main function
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : ADD  3, 1, 0 ;  Save left operand
95 : LD   1, 1(5) ;  Load parameter 'm' into R1
96 : ADD  3, 1, 0 ;  Save left operand
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ADD  2, 3, 0 ;  restore left operand
99 : DIV  1, 2, 1 ;  R1 = left / right
100 : ADD  3, 1, 0 ;  Save left operand
101 : LD   1, 2(5) ;  Load parameter 'n' into R1
102 : ADD  2, 3, 0 ;  restore left operand
103 : MUL  1, 2, 1 ;  R1 = left * right
104 : ADD  2, 3, 0 ;  restore left operand
105 : SUB  1, 2, 1 ;  R1 = left - right
106 : ST   1, 3(5) ;  Store function result into stack frame
107 : LD   6, 0(5) ;  Load return address
108 : LDA  7, 0(6) ;  Return to caller
109 : LD   1, 1(5) ;  Load parameter 'n' into R1
110 : ADD  3, 1, 0 ;  Save left operand
111 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  restore left operand
113 : SUB  1, 2, 1 ;  left - right for equality check
114 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
115 : LDC  1, 0(0) ;  false
116 : LDA  7, 1(7) ;  skip setting true
117 : LDC  1, 1(0) ;  true
118 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
119 : LD   1, 2(5) ;  Load parameter 'nR' into R1
120 : LDA  7, 166(0) ;  Skip ELSE block
121 : LD   1, 1(5) ;  Load parameter 'n' into R1
122 : ADD  3, 1, 0 ;  Save left operand
123 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
124 : ADD  2, 3, 0 ;  restore left operand
125 : DIV  1, 2, 1 ;  R1 = left / right
126 : ST   1, 4(5) ;  Spill Temporary
127 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
128 : ADD  3, 1, 0 ;  Save left operand
129 : LD   1, 2(5) ;  Load parameter 'nR' into R1
130 : ADD  2, 3, 0 ;  restore left operand
131 : MUL  1, 2, 1 ;  R1 = left * right
132 : ST   1, 5(5) ;  Spill Temporary
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ST   1, 6(5) ;  Spill Temporary
135 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
136 : ST   1, 7(5) ;  Spill Temporary
137 : LDA 4, 4(5) ; Restore Callee frame base
138 : LD   1, 7(5) ;  Restore Temporary
139 : ST 1, 2(4) ;  Store argument 1 into callee frame
140 : LD   1, 6(5) ;  Restore Temporary
141 : ST 1, 1(4) ;  Store argument 0 into callee frame
142 : LDA 4, 4(5) ; Restore Call frame base
143 : LDA 6, 147(0) ;  Compute return address
144 : ST 6, 0(4) ;  Store return address in callee frame
145 : ADD 5, 4, 0 ;  Update pointer
146 : LDA 7, 93(0) ;  Call MOD
147 : LD 1, 3(5) ;  Load callee return value into R1
148 : LDC 4, 4(0) ;  Load frame size
149 : SUB 5, 5, 4 ;  Restore pointer
150 : LD   2, 5(5) ;  Restore Temporary
151 : ADD  1, 2, 1 ;  R1 = left + right
152 : ST   1, 5(5) ;  Spill Temporary
153 : LDA 4, 4(5) ; Restore Callee frame base
154 : LD   1, 5(5) ;  Restore Temporary
155 : ST 1, 2(4) ;  Store argument 1 into callee frame
156 : LD   1, 4(5) ;  Restore Temporary
157 : ST 1, 1(4) ;  Store argument 0 into callee frame
158 : LDA 4, 4(5) ; Restore Call frame base
159 : LDA 6, 163(0) ;  Compute return address
160 : ST 6, 0(4) ;  Store return address in callee frame
161 : ADD 5, 4, 0 ;  Update pointer
162 : LDA 7, 109(0) ;  Call reverseL
163 : LD 1, 3(5) ;  Load callee return value into R1
164 : LDC 4, 4(0) ;  Load frame size
165 : SUB 5, 5, 4 ;  Restore pointer
166 : ST   1, 3(5) ;  Store function result into stack frame
167 : LD   6, 0(5) ;  Load return address
168 : LDA  7, 0(6) ;  Return to caller
169 : LD   1, 1(5) ;  Load parameter 'n' into R1
170 : ST   1, 3(5) ;  Spill Temporary
171 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
172 : ST   1, 4(5) ;  Spill Temporary
173 : LDA 4, 4(5) ; Restore Callee frame base
174 : LD   1, 4(5) ;  Restore Temporary
175 : ST 1, 2(4) ;  Store argument 1 into callee frame
176 : LD   1, 3(5) ;  Restore Temporary
177 : ST 1, 1(4) ;  Store argument 0 into callee frame
178 : LDA 4, 4(5) ; Restore Call frame base
179 : LDA 6, 183(0) ;  Compute return address
180 : ST 6, 0(4) ;  Store return address in callee frame
181 : ADD 5, 4, 0 ;  Update pointer
182 : LDA 7, 109(0) ;  Call reverseL
183 : LD 1, 3(5) ;  Load callee return value into R1
184 : LDC 4, 4(0) ;  Load frame size
185 : SUB 5, 5, 4 ;  Restore pointer
186 : ST   1, 2(5) ;  Store function result into stack frame
187 : LD   6, 0(5) ;  Load return address
188 : LDA  7, 0(6) ;  Return to caller
189 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
190 : ADD  3, 1, 0 ;  Save right operand
191 : LD   1, 2(5) ;  Load parameter 'b' into R1
192 : ST   1, 4(5) ;  Spill Temporary
193 : LD   1, 1(5) ;  Load parameter 'a' into R1
194 : ST   1, 5(5) ;  Spill Temporary
195 : LDA 4, 4(5) ; Restore Callee frame base
196 : LD   1, 5(5) ;  Restore Temporary
197 : ST 1, 2(4) ;  Store argument 1 into callee frame
198 : LD   1, 4(5) ;  Restore Temporary
199 : ST 1, 1(4) ;  Store argument 0 into callee frame
200 : LDA 4, 4(5) ; Restore Call frame base
201 : LDA 6, 205(0) ;  Compute return address
202 : ST 6, 0(4) ;  Store return address in callee frame
203 : ADD 5, 4, 0 ;  Update pointer
204 : LDA 7, 93(0) ;  Call MOD
205 : LD 1, 3(5) ;  Load callee return value into R1
206 : LDC 4, 4(0) ;  Load frame size
207 : SUB 5, 5, 4 ;  Restore pointer
208 : ADD  2, 3, 0 ;  Restore right operand
209 : SUB  1, 2, 1 ;  left - right for equality check
210 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
211 : LDC  1, 0(0) ;  false
212 : LDA  7, 1(7) ;  skip setting true
213 : LDC  1, 1(0) ;  true
214 : ST   1, 3(5) ;  Store function result into stack frame
215 : LD   6, 0(5) ;  Load return address
216 : LDA  7, 0(6) ;  Return to caller
217 : LD   1, 1(5) ;  Load parameter 'i' into R1
218 : ADD  3, 1, 0 ;  Save left operand
219 : LD   1, 2(5) ;  Load parameter 'n' into R1
220 : ADD  2, 3, 0 ;  restore left operand
221 : SUB  1, 2, 1 ;  left - right for less-than check
222 : JLT  1, 2(7) ;  If R1 < 0, jump to true
223 : LDC  1, 0(0) ;  false
224 : LDA  7, 1(7) ;  skip setting true
225 : LDC  1, 1(0) ;  true
226 : JEQ  1, 269(0) ;  If condition is false, jump to ELSE
227 : LD   1, 1(5) ;  Load parameter 'i' into R1
228 : ST   1, 4(5) ;  Spill Temporary
229 : LD   1, 2(5) ;  Load parameter 'n' into R1
230 : ST   1, 5(5) ;  Spill Temporary
231 : LDA 4, 4(5) ; Restore Callee frame base
232 : LD   1, 5(5) ;  Restore Temporary
233 : ST 1, 2(4) ;  Store argument 1 into callee frame
234 : LD   1, 4(5) ;  Restore Temporary
235 : ST 1, 1(4) ;  Store argument 0 into callee frame
236 : LDA 4, 4(5) ; Restore Call frame base
237 : LDA 6, 241(0) ;  Compute return address
238 : ST 6, 0(4) ;  Store return address in callee frame
239 : ADD 5, 4, 0 ;  Update pointer
240 : LDA 7, 189(0) ;  Call divides
241 : LD 1, 3(5) ;  Load callee return value into R1
242 : LDC 4, 4(0) ;  Load frame size
243 : SUB 5, 5, 4 ;  Restore pointer
244 : ST   1, 4(5) ;  Spill Temporary
245 : LD   1, 1(5) ;  Load parameter 'i' into R1
246 : ADD  3, 1, 0 ;  Save left operand
247 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
248 : ADD  2, 3, 0 ;  restore left operand
249 : ADD  1, 2, 1 ;  R1 = left + right
250 : ST   1, 5(5) ;  Spill Temporary
251 : LD   1, 2(5) ;  Load parameter 'n' into R1
252 : ST   1, 6(5) ;  Spill Temporary
253 : LDA 4, 4(5) ; Restore Callee frame base
254 : LD   1, 6(5) ;  Restore Temporary
255 : ST 1, 2(4) ;  Store argument 1 into callee frame
256 : LD   1, 5(5) ;  Restore Temporary
257 : ST 1, 1(4) ;  Store argument 0 into callee frame
258 : LDA 4, 4(5) ; Restore Call frame base
259 : LDA 6, 263(0) ;  Compute return address
260 : ST 6, 0(4) ;  Store return address in callee frame
261 : ADD 5, 4, 0 ;  Update pointer
262 : LDA 7, 217(0) ;  Call hasDivisorFrom
263 : LD 1, 3(5) ;  Load callee return value into R1
264 : LDC 4, 4(0) ;  Load frame size
265 : SUB 5, 5, 4 ;  Restore pointer
266 : LD   2, 4(5) ;  Restore Temporary
267 : ADD  1, 2, 1 ;  R1 = left OR right
268 : LDA  7, 270(0) ;  Skip ELSE block
269 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
270 : ST   1, 3(5) ;  Store function result into stack frame
271 : LD   6, 0(5) ;  Load return address
272 : LDA  7, 0(6) ;  Return to caller
273 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
274 : ST   1, 3(5) ;  Spill Temporary
275 : LD   1, 1(5) ;  Load parameter 'n' into R1
276 : ST   1, 4(5) ;  Spill Temporary
277 : LDA 4, 4(5) ; Restore Callee frame base
278 : LD   1, 4(5) ;  Restore Temporary
279 : ST 1, 2(4) ;  Store argument 1 into callee frame
280 : LD   1, 3(5) ;  Restore Temporary
281 : ST 1, 1(4) ;  Store argument 0 into callee frame
282 : LDA 4, 4(5) ; Restore Call frame base
283 : LDA 6, 287(0) ;  Compute return address
284 : ST 6, 0(4) ;  Store return address in callee frame
285 : ADD 5, 4, 0 ;  Update pointer
286 : LDA 7, 217(0) ;  Call hasDivisorFrom
287 : LD 1, 3(5) ;  Load callee return value into R1
288 : LDC 4, 4(0) ;  Load frame size
289 : SUB 5, 5, 4 ;  Restore pointer
290 : LDC  2, 1(0) ;  Load 1 into R2
291 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
292 : ST   1, 2(5) ;  Store function result into stack frame
293 : LD   6, 0(5) ;  Load return address
294 : LDA  7, 0(6) ;  Return to caller
295 : LD   1, 1(5) ;  Load parameter 'n' into R1
296 : ST   1, 3(5) ;  Spill Temporary
297 : LDA 4, 3(5) ; Restore Callee frame base
298 : LD   1, 3(5) ;  Restore Temporary
299 : ST 1, 1(4) ;  Store argument 0 into callee frame
300 : LDA 4, 3(5) ; Restore Call frame base
301 : LDA 6, 305(0) ;  Compute return address
302 : ST 6, 0(4) ;  Store return address in callee frame
303 : ADD 5, 4, 0 ;  Update pointer
304 : LDA 7, 380(0) ;  Call emirp
305 : LD 1, 2(5) ;  Load callee return value into R1
306 : LDC 4, 3(0) ;  Load frame size
307 : SUB 5, 5, 4 ;  Restore pointer
308 : LDA  4, 3(5) ;  Update DMEM pointer
309 : LDA 6, 313(0) ;  Compute return address
310 : ST   6, 0(4) ;  Store return address
311 : ADD  5, 4, 0 ;  Updated Pointer
312 : LDA  7, 10(0) ; Call print
313 : LDC  4, 3(0) ;  Load frame size
314 : SUB  5, 5, 4 ;  Restore pointer
315 : ST   1, 2(5) ;  Store function result into stack frame
316 : LD   1, 1(5) ;  Load parameter 'n' into R1
317 : ST   1, 3(5) ;  Spill Temporary
318 : LDA 4, 3(5) ; Restore Callee frame base
319 : LD   1, 3(5) ;  Restore Temporary
320 : ST 1, 1(4) ;  Store argument 0 into callee frame
321 : LDA 4, 3(5) ; Restore Call frame base
322 : LDA 6, 326(0) ;  Compute return address
323 : ST 6, 0(4) ;  Store return address in callee frame
324 : ADD 5, 4, 0 ;  Update pointer
325 : LDA 7, 332(0) ;  Call snowball
326 : LD 1, 2(5) ;  Load callee return value into R1
327 : LDC 4, 3(0) ;  Load frame size
328 : SUB 5, 5, 4 ;  Restore pointer
329 : ST   1, 2(5) ;  Store function result into stack frame
330 : LD   6, 0(5) ;  Load return address
331 : LDA  7, 0(6) ;  Return to caller
332 : LD   1, 1(5) ;  Load parameter 'n' into R1
333 : ST   1, 3(5) ;  Spill Temporary
334 : LDA 4, 3(5) ; Restore Callee frame base
335 : LD   1, 3(5) ;  Restore Temporary
336 : ST 1, 1(4) ;  Store argument 0 into callee frame
337 : LDA 4, 3(5) ; Restore Call frame base
338 : LDA 6, 342(0) ;  Compute return address
339 : ST 6, 0(4) ;  Store return address in callee frame
340 : ADD 5, 4, 0 ;  Update pointer
341 : LDA 7, 273(0) ;  Call isPrime
342 : LD 1, 2(5) ;  Load callee return value into R1
343 : LDC 4, 3(0) ;  Load frame size
344 : SUB 5, 5, 4 ;  Restore pointer
345 : ST   1, 3(5) ;  Spill Temporary
346 : LD   1, 1(5) ;  Load parameter 'n' into R1
347 : ADD  3, 1, 0 ;  Save left operand
348 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
349 : ADD  2, 3, 0 ;  restore left operand
350 : SUB  1, 2, 1 ;  left - right for less-than check
351 : JLT  1, 2(7) ;  If R1 < 0, jump to true
352 : LDC  1, 0(0) ;  false
353 : LDA  7, 1(7) ;  skip setting true
354 : LDC  1, 1(0) ;  true
355 : JEQ  1, 358(0) ;  If condition is false, jump to ELSE
356 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
357 : LDA  7, 375(0) ;  Skip ELSE block
358 : LD   1, 1(5) ;  Load parameter 'n' into R1
359 : ADD  3, 1, 0 ;  Save left operand
360 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
361 : ADD  2, 3, 0 ;  restore left operand
362 : DIV  1, 2, 1 ;  R1 = left / right
363 : ST   1, 4(5) ;  Spill Temporary
364 : LDA 4, 3(5) ; Restore Callee frame base
365 : LD   1, 4(5) ;  Restore Temporary
366 : ST 1, 1(4) ;  Store argument 0 into callee frame
367 : LDA 4, 3(5) ; Restore Call frame base
368 : LDA 6, 372(0) ;  Compute return address
369 : ST 6, 0(4) ;  Store return address in callee frame
370 : ADD 5, 4, 0 ;  Update pointer
371 : LDA 7, 273(0) ;  Call isPrime
372 : LD 1, 2(5) ;  Load callee return value into R1
373 : LDC 4, 3(0) ;  Load frame size
374 : SUB 5, 5, 4 ;  Restore pointer
375 : LD   2, 3(5) ;  Restore Temporary
376 : MUL  1, 2, 1 ;  R1 = left AND right
377 : ST   1, 2(5) ;  Store function result into stack frame
378 : LD   6, 0(5) ;  Load return address
379 : LDA  7, 0(6) ;  Return to caller
380 : LD   1, 1(5) ;  Load parameter 'n' into R1
381 : ST   1, 3(5) ;  Spill Temporary
382 : LDA 4, 3(5) ; Restore Callee frame base
383 : LD   1, 3(5) ;  Restore Temporary
384 : ST 1, 1(4) ;  Store argument 0 into callee frame
385 : LDA 4, 3(5) ; Restore Call frame base
386 : LDA 6, 390(0) ;  Compute return address
387 : ST 6, 0(4) ;  Store return address in callee frame
388 : ADD 5, 4, 0 ;  Update pointer
389 : LDA 7, 273(0) ;  Call isPrime
390 : LD 1, 2(5) ;  Load callee return value into R1
391 : LDC 4, 3(0) ;  Load frame size
392 : SUB 5, 5, 4 ;  Restore pointer
393 : ST   1, 3(5) ;  Spill Temporary
394 : LD   1, 1(5) ;  Load parameter 'n' into R1
395 : ST   1, 4(5) ;  Spill Temporary
396 : LDA 4, 3(5) ; Restore Callee frame base
397 : LD   1, 4(5) ;  Restore Temporary
398 : ST 1, 1(4) ;  Store argument 0 into callee frame
399 : LDA 4, 3(5) ; Restore Call frame base
400 : LDA 6, 404(0) ;  Compute return address
401 : ST 6, 0(4) ;  Store return address in callee frame
402 : ADD 5, 4, 0 ;  Update pointer
403 : LDA 7, 169(0) ;  Call reverse
404 : LD 1, 2(5) ;  Load callee return value into R1
405 : LDC 4, 3(0) ;  Load frame size
406 : SUB 5, 5, 4 ;  Restore pointer
407 : ST   1, 4(5) ;  Spill Temporary
408 : LDA 4, 3(5) ; Restore Callee frame base
409 : LD   1, 4(5) ;  Restore Temporary
410 : ST 1, 1(4) ;  Store argument 0 into callee frame
411 : LDA 4, 3(5) ; Restore Call frame base
412 : LDA 6, 416(0) ;  Compute return address
413 : ST 6, 0(4) ;  Store return address in callee frame
414 : ADD 5, 4, 0 ;  Update pointer
415 : LDA 7, 273(0) ;  Call isPrime
416 : LD 1, 2(5) ;  Load callee return value into R1
417 : LDC 4, 3(0) ;  Load frame size
418 : SUB 5, 5, 4 ;  Restore pointer
419 : LD   2, 3(5) ;  Restore Temporary
420 : MUL  1, 2, 1 ;  R1 = left AND right
421 : ST   1, 2(5) ;  Store function result into stack frame
422 : LD   6, 0(5) ;  Load return address
423 : LDA  7, 0(6) ;  Return to caller
