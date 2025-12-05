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
16 : ST   1, 5(5) ;  Spill Temporary
17 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
18 : ST   1, 6(5) ;  Spill Temporary
19 : LD   1, 3(5) ;  Load parameter 'N' into R1
20 : ST   1, 7(5) ;  Spill Temporary
21 : LDA 4, 5(5) ; Restore Callee frame base
22 : LD   1, 7(5) ;  Restore Temporary
23 : ST 1, 3(4) ;  Store argument 2 into callee frame
24 : LD   1, 6(5) ;  Restore Temporary
25 : ST 1, 2(4) ;  Store argument 1 into callee frame
26 : LD   1, 5(5) ;  Restore Temporary
27 : ST 1, 1(4) ;  Store argument 0 into callee frame
28 : LDA 4, 5(5) ; Restore Call frame base
29 : LDA 6, 33(0) ;  Compute return address
30 : ST 6, 0(4) ;  Store return address in callee frame
31 : ADD 5, 4, 0 ;  Update pointer
32 : LDA 7, 682(0) ;  Call fareyNum
33 : LD 1, 4(5) ;  Load callee return value into R1
34 : LDC 4, 5(0) ;  Load frame size
35 : SUB 5, 5, 4 ;  Restore pointer
36 : LDA  4, 3(5) ;  Update DMEM pointer
37 : LDA 6, 41(0) ;  Compute return address
38 : ST   6, 0(4) ;  Store return address
39 : ADD  5, 4, 0 ;  Updated Pointer
40 : LDA  7, 12(0) ; Call print
41 : LDC  4, 3(0) ;  Load frame size
42 : SUB  5, 5, 4 ;  Restore pointer
43 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
44 : ST   1, 5(5) ;  Spill Temporary
45 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
46 : ST   1, 6(5) ;  Spill Temporary
47 : LD   1, 3(5) ;  Load parameter 'N' into R1
48 : ST   1, 7(5) ;  Spill Temporary
49 : LDA 4, 5(5) ; Restore Callee frame base
50 : LD   1, 7(5) ;  Restore Temporary
51 : ST 1, 3(4) ;  Store argument 2 into callee frame
52 : LD   1, 6(5) ;  Restore Temporary
53 : ST 1, 2(4) ;  Store argument 1 into callee frame
54 : LD   1, 5(5) ;  Restore Temporary
55 : ST 1, 1(4) ;  Store argument 0 into callee frame
56 : LDA 4, 5(5) ; Restore Call frame base
57 : LDA 6, 61(0) ;  Compute return address
58 : ST 6, 0(4) ;  Store return address in callee frame
59 : ADD 5, 4, 0 ;  Update pointer
60 : LDA 7, 490(0) ;  Call fareyDen
61 : LD 1, 4(5) ;  Load callee return value into R1
62 : LDC 4, 5(0) ;  Load frame size
63 : SUB 5, 5, 4 ;  Restore pointer
64 : ST 1, 4(5) ;  Store result into current frame's return slot
65 : LD   1, 4(5) ;  Load return value into register 1
66 : LD  6, 0(5) ;  Load return address for main function into register 6
67 : LDA  7, 0(6) ;  Jump to return address of main function
68 : LD   1, 1(5) ;  Load parameter 'x' into R1
69 : ADD  3, 1, 0 ;  Save left operand
70 : LD   1, 2(5) ;  Load parameter 'y' into R1
71 : ADD  2, 3, 0 ;  restore left operand
72 : SUB  1, 2, 1 ;  left - right for less-than check
73 : JLT  1, 2(7) ;  If R1 < 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  3, 1, 0 ;  Save left operand
78 : LD   1, 1(5) ;  Load parameter 'x' into R1
79 : ADD  3, 1, 0 ;  Save left operand
80 : LD   1, 2(5) ;  Load parameter 'y' into R1
81 : ADD  2, 3, 0 ;  restore left operand
82 : SUB  1, 2, 1 ;  left - right for equality check
83 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : ADD  2, 3, 0 ;  restore left operand
88 : ADD  1, 2, 1 ;  R1 = left OR right
89 : LDC  2, 1(0) ;  Load 1 into R2
90 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
91 : ST   1, 3(5) ;  Store function result into stack frame
92 : LD   6, 0(5) ;  Load return address
93 : LDA  7, 0(6) ;  Return to caller
94 : LD   1, 1(5) ;  Load parameter 'x' into R1
95 : ADD  3, 1, 0 ;  Save left operand
96 : LD   1, 4(5) ;  Load parameter 'yd' into R1
97 : ADD  2, 3, 0 ;  restore left operand
98 : MUL  1, 2, 1 ;  R1 = left * right
99 : ST   1, 6(5) ;  Spill Temporary
100 : LD   1, 3(5) ;  Load parameter 'y' into R1
101 : ADD  3, 1, 0 ;  Save left operand
102 : LD   1, 2(5) ;  Load parameter 'xd' into R1
103 : ADD  2, 3, 0 ;  restore left operand
104 : MUL  1, 2, 1 ;  R1 = left * right
105 : ST   1, 7(5) ;  Spill Temporary
106 : LDA 4, 4(5) ; Restore Callee frame base
107 : LD   1, 7(5) ;  Restore Temporary
108 : ST 1, 2(4) ;  Store argument 1 into callee frame
109 : LD   1, 6(5) ;  Restore Temporary
110 : ST 1, 1(4) ;  Store argument 0 into callee frame
111 : LDA 4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD 5, 4, 0 ;  Update pointer
115 : LDA 7, 68(0) ;  Call greater
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC 4, 4(0) ;  Load frame size
118 : SUB 5, 5, 4 ;  Restore pointer
119 : ST   1, 5(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
122 : LD   1, 1(5) ;  Load parameter 'x' into R1
123 : ADD  3, 1, 0 ;  Save left operand
124 : LD   1, 4(5) ;  Load parameter 'yd' into R1
125 : ADD  2, 3, 0 ;  restore left operand
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ADD  3, 1, 0 ;  Save left operand
128 : LD   1, 3(5) ;  Load parameter 'y' into R1
129 : ADD  3, 1, 0 ;  Save left operand
130 : LD   1, 2(5) ;  Load parameter 'xd' into R1
131 : ADD  2, 3, 0 ;  restore left operand
132 : MUL  1, 2, 1 ;  R1 = left * right
133 : ADD  2, 3, 0 ;  restore left operand
134 : SUB  1, 2, 1 ;  left - right for equality check
135 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
136 : LDC  1, 0(0) ;  false
137 : LDA  7, 1(7) ;  skip setting true
138 : LDC  1, 1(0) ;  true
139 : ST   1, 5(5) ;  Store function result into stack frame
140 : LD   6, 0(5) ;  Load return address
141 : LDA  7, 0(6) ;  Return to caller
142 : LD   1, 6(5) ;  Load parameter 'b' into R1
143 : ST   1, 10(5) ;  Spill Temporary
144 : LD   1, 4(5) ;  Load parameter 'N' into R1
145 : ST   1, 11(5) ;  Spill Temporary
146 : LDA 4, 4(5) ; Restore Callee frame base
147 : LD   1, 11(5) ;  Restore Temporary
148 : ST 1, 2(4) ;  Store argument 1 into callee frame
149 : LD   1, 10(5) ;  Restore Temporary
150 : ST 1, 1(4) ;  Store argument 0 into callee frame
151 : LDA 4, 4(5) ; Restore Call frame base
152 : LDA 6, 156(0) ;  Compute return address
153 : ST 6, 0(4) ;  Store return address in callee frame
154 : ADD 5, 4, 0 ;  Update pointer
155 : LDA 7, 68(0) ;  Call greater
156 : LD 1, 3(5) ;  Load callee return value into R1
157 : LDC 4, 4(0) ;  Load frame size
158 : SUB 5, 5, 4 ;  Restore pointer
159 : ST   1, 10(5) ;  Spill Temporary
160 : LD   1, 8(5) ;  Load parameter 'd' into R1
161 : ST   1, 11(5) ;  Spill Temporary
162 : LD   1, 4(5) ;  Load parameter 'N' into R1
163 : ST   1, 12(5) ;  Spill Temporary
164 : LDA 4, 4(5) ; Restore Callee frame base
165 : LD   1, 12(5) ;  Restore Temporary
166 : ST 1, 2(4) ;  Store argument 1 into callee frame
167 : LD   1, 11(5) ;  Restore Temporary
168 : ST 1, 1(4) ;  Store argument 0 into callee frame
169 : LDA 4, 4(5) ; Restore Call frame base
170 : LDA 6, 174(0) ;  Compute return address
171 : ST 6, 0(4) ;  Store return address in callee frame
172 : ADD 5, 4, 0 ;  Update pointer
173 : LDA 7, 68(0) ;  Call greater
174 : LD 1, 3(5) ;  Load callee return value into R1
175 : LDC 4, 4(0) ;  Load frame size
176 : SUB 5, 5, 4 ;  Restore pointer
177 : LD   2, 10(5) ;  Restore Temporary
178 : ADD  1, 2, 1 ;  R1 = left OR right
179 : JEQ  1, 218(0) ;  If condition is false, jump to ELSE
180 : LD   1, 1(5) ;  Load parameter 'selector' into R1
181 : ADD  3, 1, 0 ;  Save left operand
182 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
183 : ADD  2, 3, 0 ;  restore left operand
184 : SUB  1, 2, 1 ;  left - right for equality check
185 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
186 : LDC  1, 0(0) ;  false
187 : LDA  7, 1(7) ;  skip setting true
188 : LDC  1, 1(0) ;  true
189 : JEQ  1, 192(0) ;  If condition is false, jump to ELSE
190 : LD   1, 5(5) ;  Load parameter 'a' into R1
191 : LDA  7, 217(0) ;  Skip ELSE block
192 : LD   1, 1(5) ;  Load parameter 'selector' into R1
193 : ADD  3, 1, 0 ;  Save left operand
194 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
195 : ADD  2, 3, 0 ;  restore left operand
196 : SUB  1, 2, 1 ;  left - right for equality check
197 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
198 : LDC  1, 0(0) ;  false
199 : LDA  7, 1(7) ;  skip setting true
200 : LDC  1, 1(0) ;  true
201 : JEQ  1, 204(0) ;  If condition is false, jump to ELSE
202 : LD   1, 6(5) ;  Load parameter 'b' into R1
203 : LDA  7, 217(0) ;  Skip ELSE block
204 : LD   1, 1(5) ;  Load parameter 'selector' into R1
205 : ADD  3, 1, 0 ;  Save left operand
206 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
207 : ADD  2, 3, 0 ;  restore left operand
208 : SUB  1, 2, 1 ;  left - right for equality check
209 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
210 : LDC  1, 0(0) ;  false
211 : LDA  7, 1(7) ;  skip setting true
212 : LDC  1, 1(0) ;  true
213 : JEQ  1, 216(0) ;  If condition is false, jump to ELSE
214 : LD   1, 7(5) ;  Load parameter 'c' into R1
215 : LDA  7, 217(0) ;  Skip ELSE block
216 : LD   1, 8(5) ;  Load parameter 'd' into R1
217 : LDA  7, 439(0) ;  Skip ELSE block
218 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
219 : ST   1, 10(5) ;  Spill Temporary
220 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
221 : ST   1, 11(5) ;  Spill Temporary
222 : LD   1, 5(5) ;  Load parameter 'a' into R1
223 : ADD  3, 1, 0 ;  Save left operand
224 : LD   1, 7(5) ;  Load parameter 'c' into R1
225 : ADD  2, 3, 0 ;  restore left operand
226 : ADD  1, 2, 1 ;  R1 = left + right
227 : ST   1, 12(5) ;  Spill Temporary
228 : LD   1, 6(5) ;  Load parameter 'b' into R1
229 : ADD  3, 1, 0 ;  Save left operand
230 : LD   1, 8(5) ;  Load parameter 'd' into R1
231 : ADD  2, 3, 0 ;  restore left operand
232 : ADD  1, 2, 1 ;  R1 = left + right
233 : ST   1, 13(5) ;  Spill Temporary
234 : LDA 4, 6(5) ; Restore Callee frame base
235 : LD   1, 13(5) ;  Restore Temporary
236 : ST 1, 4(4) ;  Store argument 3 into callee frame
237 : LD   1, 12(5) ;  Restore Temporary
238 : ST 1, 3(4) ;  Store argument 2 into callee frame
239 : LD   1, 11(5) ;  Restore Temporary
240 : ST 1, 2(4) ;  Store argument 1 into callee frame
241 : LD   1, 10(5) ;  Restore Temporary
242 : ST 1, 1(4) ;  Store argument 0 into callee frame
243 : LDA 4, 6(5) ; Restore Call frame base
244 : LDA 6, 248(0) ;  Compute return address
245 : ST 6, 0(4) ;  Store return address in callee frame
246 : ADD 5, 4, 0 ;  Update pointer
247 : LDA 7, 122(0) ;  Call fractionEqual
248 : LD 1, 5(5) ;  Load callee return value into R1
249 : LDC 4, 6(0) ;  Load frame size
250 : SUB 5, 5, 4 ;  Restore pointer
251 : JEQ  1, 306(0) ;  If condition is false, jump to ELSE
252 : LD   1, 1(5) ;  Load parameter 'selector' into R1
253 : ADD  3, 1, 0 ;  Save left operand
254 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
255 : ADD  2, 3, 0 ;  restore left operand
256 : SUB  1, 2, 1 ;  left - right for equality check
257 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
258 : LDC  1, 0(0) ;  false
259 : LDA  7, 1(7) ;  skip setting true
260 : LDC  1, 1(0) ;  true
261 : JEQ  1, 268(0) ;  If condition is false, jump to ELSE
262 : LD   1, 5(5) ;  Load parameter 'a' into R1
263 : ADD  3, 1, 0 ;  Save left operand
264 : LD   1, 7(5) ;  Load parameter 'c' into R1
265 : ADD  2, 3, 0 ;  restore left operand
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : LDA  7, 305(0) ;  Skip ELSE block
268 : LD   1, 1(5) ;  Load parameter 'selector' into R1
269 : ADD  3, 1, 0 ;  Save left operand
270 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
271 : ADD  2, 3, 0 ;  restore left operand
272 : SUB  1, 2, 1 ;  left - right for equality check
273 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
274 : LDC  1, 0(0) ;  false
275 : LDA  7, 1(7) ;  skip setting true
276 : LDC  1, 1(0) ;  true
277 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
278 : LD   1, 6(5) ;  Load parameter 'b' into R1
279 : ADD  3, 1, 0 ;  Save left operand
280 : LD   1, 8(5) ;  Load parameter 'd' into R1
281 : ADD  2, 3, 0 ;  restore left operand
282 : ADD  1, 2, 1 ;  R1 = left + right
283 : LDA  7, 305(0) ;  Skip ELSE block
284 : LD   1, 1(5) ;  Load parameter 'selector' into R1
285 : ADD  3, 1, 0 ;  Save left operand
286 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
287 : ADD  2, 3, 0 ;  restore left operand
288 : SUB  1, 2, 1 ;  left - right for equality check
289 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
290 : LDC  1, 0(0) ;  false
291 : LDA  7, 1(7) ;  skip setting true
292 : LDC  1, 1(0) ;  true
293 : JEQ  1, 300(0) ;  If condition is false, jump to ELSE
294 : LD   1, 5(5) ;  Load parameter 'a' into R1
295 : ADD  3, 1, 0 ;  Save left operand
296 : LD   1, 7(5) ;  Load parameter 'c' into R1
297 : ADD  2, 3, 0 ;  restore left operand
298 : ADD  1, 2, 1 ;  R1 = left + right
299 : LDA  7, 305(0) ;  Skip ELSE block
300 : LD   1, 6(5) ;  Load parameter 'b' into R1
301 : ADD  3, 1, 0 ;  Save left operand
302 : LD   1, 8(5) ;  Load parameter 'd' into R1
303 : ADD  2, 3, 0 ;  restore left operand
304 : ADD  1, 2, 1 ;  R1 = left + right
305 : LDA  7, 439(0) ;  Skip ELSE block
306 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
307 : ST   1, 10(5) ;  Spill Temporary
308 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
309 : ST   1, 11(5) ;  Spill Temporary
310 : LD   1, 5(5) ;  Load parameter 'a' into R1
311 : ADD  3, 1, 0 ;  Save left operand
312 : LD   1, 7(5) ;  Load parameter 'c' into R1
313 : ADD  2, 3, 0 ;  restore left operand
314 : ADD  1, 2, 1 ;  R1 = left + right
315 : ST   1, 12(5) ;  Spill Temporary
316 : LD   1, 6(5) ;  Load parameter 'b' into R1
317 : ADD  3, 1, 0 ;  Save left operand
318 : LD   1, 8(5) ;  Load parameter 'd' into R1
319 : ADD  2, 3, 0 ;  restore left operand
320 : ADD  1, 2, 1 ;  R1 = left + right
321 : ST   1, 13(5) ;  Spill Temporary
322 : LDA 4, 6(5) ; Restore Callee frame base
323 : LD   1, 13(5) ;  Restore Temporary
324 : ST 1, 4(4) ;  Store argument 3 into callee frame
325 : LD   1, 12(5) ;  Restore Temporary
326 : ST 1, 3(4) ;  Store argument 2 into callee frame
327 : LD   1, 11(5) ;  Restore Temporary
328 : ST 1, 2(4) ;  Store argument 1 into callee frame
329 : LD   1, 10(5) ;  Restore Temporary
330 : ST 1, 1(4) ;  Store argument 0 into callee frame
331 : LDA 4, 6(5) ; Restore Call frame base
332 : LDA 6, 336(0) ;  Compute return address
333 : ST 6, 0(4) ;  Store return address in callee frame
334 : ADD 5, 4, 0 ;  Update pointer
335 : LDA 7, 94(0) ;  Call fractionGreater
336 : LD 1, 5(5) ;  Load callee return value into R1
337 : LDC 4, 6(0) ;  Load frame size
338 : SUB 5, 5, 4 ;  Restore pointer
339 : JEQ  1, 390(0) ;  If condition is false, jump to ELSE
340 : LD   1, 1(5) ;  Load parameter 'selector' into R1
341 : ST   1, 10(5) ;  Spill Temporary
342 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
343 : ST   1, 11(5) ;  Spill Temporary
344 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
345 : ST   1, 12(5) ;  Spill Temporary
346 : LD   1, 4(5) ;  Load parameter 'N' into R1
347 : ST   1, 13(5) ;  Spill Temporary
348 : LD   1, 5(5) ;  Load parameter 'a' into R1
349 : ADD  3, 1, 0 ;  Save left operand
350 : LD   1, 7(5) ;  Load parameter 'c' into R1
351 : ADD  2, 3, 0 ;  restore left operand
352 : ADD  1, 2, 1 ;  R1 = left + right
353 : ST   1, 14(5) ;  Spill Temporary
354 : LD   1, 6(5) ;  Load parameter 'b' into R1
355 : ADD  3, 1, 0 ;  Save left operand
356 : LD   1, 8(5) ;  Load parameter 'd' into R1
357 : ADD  2, 3, 0 ;  restore left operand
358 : ADD  1, 2, 1 ;  R1 = left + right
359 : ST   1, 15(5) ;  Spill Temporary
360 : LD   1, 7(5) ;  Load parameter 'c' into R1
361 : ST   1, 16(5) ;  Spill Temporary
362 : LD   1, 8(5) ;  Load parameter 'd' into R1
363 : ST   1, 17(5) ;  Spill Temporary
364 : LDA 4, 10(5) ; Restore Callee frame base
365 : LD   1, 17(5) ;  Restore Temporary
366 : ST 1, 8(4) ;  Store argument 7 into callee frame
367 : LD   1, 16(5) ;  Restore Temporary
368 : ST 1, 7(4) ;  Store argument 6 into callee frame
369 : LD   1, 15(5) ;  Restore Temporary
370 : ST 1, 6(4) ;  Store argument 5 into callee frame
371 : LD   1, 14(5) ;  Restore Temporary
372 : ST 1, 5(4) ;  Store argument 4 into callee frame
373 : LD   1, 13(5) ;  Restore Temporary
374 : ST 1, 4(4) ;  Store argument 3 into callee frame
375 : LD   1, 12(5) ;  Restore Temporary
376 : ST 1, 3(4) ;  Store argument 2 into callee frame
377 : LD   1, 11(5) ;  Restore Temporary
378 : ST 1, 2(4) ;  Store argument 1 into callee frame
379 : LD   1, 10(5) ;  Restore Temporary
380 : ST 1, 1(4) ;  Store argument 0 into callee frame
381 : LDA 4, 10(5) ; Restore Call frame base
382 : LDA 6, 386(0) ;  Compute return address
383 : ST 6, 0(4) ;  Store return address in callee frame
384 : ADD 5, 4, 0 ;  Update pointer
385 : LDA 7, 142(0) ;  Call whileLoopFor
386 : LD 1, 9(5) ;  Load callee return value into R1
387 : LDC 4, 10(0) ;  Load frame size
388 : SUB 5, 5, 4 ;  Restore pointer
389 : LDA  7, 439(0) ;  Skip ELSE block
390 : LD   1, 1(5) ;  Load parameter 'selector' into R1
391 : ST   1, 10(5) ;  Spill Temporary
392 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
393 : ST   1, 11(5) ;  Spill Temporary
394 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
395 : ST   1, 12(5) ;  Spill Temporary
396 : LD   1, 4(5) ;  Load parameter 'N' into R1
397 : ST   1, 13(5) ;  Spill Temporary
398 : LD   1, 5(5) ;  Load parameter 'a' into R1
399 : ST   1, 14(5) ;  Spill Temporary
400 : LD   1, 6(5) ;  Load parameter 'b' into R1
401 : ST   1, 15(5) ;  Spill Temporary
402 : LD   1, 5(5) ;  Load parameter 'a' into R1
403 : ADD  3, 1, 0 ;  Save left operand
404 : LD   1, 7(5) ;  Load parameter 'c' into R1
405 : ADD  2, 3, 0 ;  restore left operand
406 : ADD  1, 2, 1 ;  R1 = left + right
407 : ST   1, 16(5) ;  Spill Temporary
408 : LD   1, 6(5) ;  Load parameter 'b' into R1
409 : ADD  3, 1, 0 ;  Save left operand
410 : LD   1, 8(5) ;  Load parameter 'd' into R1
411 : ADD  2, 3, 0 ;  restore left operand
412 : ADD  1, 2, 1 ;  R1 = left + right
413 : ST   1, 17(5) ;  Spill Temporary
414 : LDA 4, 10(5) ; Restore Callee frame base
415 : LD   1, 17(5) ;  Restore Temporary
416 : ST 1, 8(4) ;  Store argument 7 into callee frame
417 : LD   1, 16(5) ;  Restore Temporary
418 : ST 1, 7(4) ;  Store argument 6 into callee frame
419 : LD   1, 15(5) ;  Restore Temporary
420 : ST 1, 6(4) ;  Store argument 5 into callee frame
421 : LD   1, 14(5) ;  Restore Temporary
422 : ST 1, 5(4) ;  Store argument 4 into callee frame
423 : LD   1, 13(5) ;  Restore Temporary
424 : ST 1, 4(4) ;  Store argument 3 into callee frame
425 : LD   1, 12(5) ;  Restore Temporary
426 : ST 1, 3(4) ;  Store argument 2 into callee frame
427 : LD   1, 11(5) ;  Restore Temporary
428 : ST 1, 2(4) ;  Store argument 1 into callee frame
429 : LD   1, 10(5) ;  Restore Temporary
430 : ST 1, 1(4) ;  Store argument 0 into callee frame
431 : LDA 4, 10(5) ; Restore Call frame base
432 : LDA 6, 436(0) ;  Compute return address
433 : ST 6, 0(4) ;  Store return address in callee frame
434 : ADD 5, 4, 0 ;  Update pointer
435 : LDA 7, 142(0) ;  Call whileLoopFor
436 : LD 1, 9(5) ;  Load callee return value into R1
437 : LDC 4, 10(0) ;  Load frame size
438 : SUB 5, 5, 4 ;  Restore pointer
439 : ST   1, 9(5) ;  Store function result into stack frame
440 : LD   6, 0(5) ;  Load return address
441 : LDA  7, 0(6) ;  Return to caller
442 : LD   1, 3(5) ;  Load parameter 'b' into R1
443 : ST   1, 7(5) ;  Spill Temporary
444 : LD   1, 1(5) ;  Load parameter 'N' into R1
445 : ST   1, 8(5) ;  Spill Temporary
446 : LDA 4, 4(5) ; Restore Callee frame base
447 : LD   1, 8(5) ;  Restore Temporary
448 : ST 1, 2(4) ;  Store argument 1 into callee frame
449 : LD   1, 7(5) ;  Restore Temporary
450 : ST 1, 1(4) ;  Store argument 0 into callee frame
451 : LDA 4, 4(5) ; Restore Call frame base
452 : LDA 6, 456(0) ;  Compute return address
453 : ST 6, 0(4) ;  Store return address in callee frame
454 : ADD 5, 4, 0 ;  Update pointer
455 : LDA 7, 68(0) ;  Call greater
456 : LD 1, 3(5) ;  Load callee return value into R1
457 : LDC 4, 4(0) ;  Load frame size
458 : SUB 5, 5, 4 ;  Restore pointer
459 : JEQ  1, 462(0) ;  If condition is false, jump to ELSE
460 : LD   1, 5(5) ;  Load parameter 'd' into R1
461 : LDA  7, 463(0) ;  Skip ELSE block
462 : LD   1, 3(5) ;  Load parameter 'b' into R1
463 : ST   1, 6(5) ;  Store function result into stack frame
464 : LD   6, 0(5) ;  Load return address
465 : LDA  7, 0(6) ;  Return to caller
466 : LD   1, 3(5) ;  Load parameter 'b' into R1
467 : ST   1, 7(5) ;  Spill Temporary
468 : LD   1, 1(5) ;  Load parameter 'N' into R1
469 : ST   1, 8(5) ;  Spill Temporary
470 : LDA 4, 4(5) ; Restore Callee frame base
471 : LD   1, 8(5) ;  Restore Temporary
472 : ST 1, 2(4) ;  Store argument 1 into callee frame
473 : LD   1, 7(5) ;  Restore Temporary
474 : ST 1, 1(4) ;  Store argument 0 into callee frame
475 : LDA 4, 4(5) ; Restore Call frame base
476 : LDA 6, 480(0) ;  Compute return address
477 : ST 6, 0(4) ;  Store return address in callee frame
478 : ADD 5, 4, 0 ;  Update pointer
479 : LDA 7, 68(0) ;  Call greater
480 : LD 1, 3(5) ;  Load callee return value into R1
481 : LDC 4, 4(0) ;  Load frame size
482 : SUB 5, 5, 4 ;  Restore pointer
483 : JEQ  1, 486(0) ;  If condition is false, jump to ELSE
484 : LD   1, 4(5) ;  Load parameter 'c' into R1
485 : LDA  7, 487(0) ;  Skip ELSE block
486 : LD   1, 2(5) ;  Load parameter 'a' into R1
487 : ST   1, 6(5) ;  Store function result into stack frame
488 : LD   6, 0(5) ;  Load return address
489 : LDA  7, 0(6) ;  Return to caller
490 : LD   1, 3(5) ;  Load parameter 'N' into R1
491 : ST   1, 5(5) ;  Spill Temporary
492 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
493 : ST   1, 6(5) ;  Spill Temporary
494 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
495 : ST   1, 7(5) ;  Spill Temporary
496 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
497 : ST   1, 8(5) ;  Spill Temporary
498 : LD   1, 3(5) ;  Load parameter 'N' into R1
499 : ST   1, 9(5) ;  Spill Temporary
500 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
501 : ST   1, 10(5) ;  Spill Temporary
502 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
503 : ST   1, 11(5) ;  Spill Temporary
504 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
505 : ST   1, 12(5) ;  Spill Temporary
506 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
507 : ST   1, 13(5) ;  Spill Temporary
508 : LDA 4, 10(5) ; Restore Callee frame base
509 : LD   1, 13(5) ;  Restore Temporary
510 : ST 1, 8(4) ;  Store argument 7 into callee frame
511 : LD   1, 12(5) ;  Restore Temporary
512 : ST 1, 7(4) ;  Store argument 6 into callee frame
513 : LD   1, 11(5) ;  Restore Temporary
514 : ST 1, 6(4) ;  Store argument 5 into callee frame
515 : LD   1, 10(5) ;  Restore Temporary
516 : ST 1, 5(4) ;  Store argument 4 into callee frame
517 : LD   1, 9(5) ;  Restore Temporary
518 : ST 1, 4(4) ;  Store argument 3 into callee frame
519 : LD   1, 8(5) ;  Restore Temporary
520 : ST 1, 3(4) ;  Store argument 2 into callee frame
521 : LD   1, 7(5) ;  Restore Temporary
522 : ST 1, 2(4) ;  Store argument 1 into callee frame
523 : LD   1, 6(5) ;  Restore Temporary
524 : ST 1, 1(4) ;  Store argument 0 into callee frame
525 : LDA 4, 10(5) ; Restore Call frame base
526 : LDA 6, 530(0) ;  Compute return address
527 : ST 6, 0(4) ;  Store return address in callee frame
528 : ADD 5, 4, 0 ;  Update pointer
529 : LDA 7, 142(0) ;  Call whileLoopFor
530 : LD 1, 9(5) ;  Load callee return value into R1
531 : LDC 4, 10(0) ;  Load frame size
532 : SUB 5, 5, 4 ;  Restore pointer
533 : ST   1, 6(5) ;  Spill Temporary
534 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
535 : ST   1, 7(5) ;  Spill Temporary
536 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
537 : ST   1, 8(5) ;  Spill Temporary
538 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
539 : ST   1, 9(5) ;  Spill Temporary
540 : LD   1, 3(5) ;  Load parameter 'N' into R1
541 : ST   1, 10(5) ;  Spill Temporary
542 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
543 : ST   1, 11(5) ;  Spill Temporary
544 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
545 : ST   1, 12(5) ;  Spill Temporary
546 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
547 : ST   1, 13(5) ;  Spill Temporary
548 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
549 : ST   1, 14(5) ;  Spill Temporary
550 : LDA 4, 10(5) ; Restore Callee frame base
551 : LD   1, 14(5) ;  Restore Temporary
552 : ST 1, 8(4) ;  Store argument 7 into callee frame
553 : LD   1, 13(5) ;  Restore Temporary
554 : ST 1, 7(4) ;  Store argument 6 into callee frame
555 : LD   1, 12(5) ;  Restore Temporary
556 : ST 1, 6(4) ;  Store argument 5 into callee frame
557 : LD   1, 11(5) ;  Restore Temporary
558 : ST 1, 5(4) ;  Store argument 4 into callee frame
559 : LD   1, 10(5) ;  Restore Temporary
560 : ST 1, 4(4) ;  Store argument 3 into callee frame
561 : LD   1, 9(5) ;  Restore Temporary
562 : ST 1, 3(4) ;  Store argument 2 into callee frame
563 : LD   1, 8(5) ;  Restore Temporary
564 : ST 1, 2(4) ;  Store argument 1 into callee frame
565 : LD   1, 7(5) ;  Restore Temporary
566 : ST 1, 1(4) ;  Store argument 0 into callee frame
567 : LDA 4, 10(5) ; Restore Call frame base
568 : LDA 6, 572(0) ;  Compute return address
569 : ST 6, 0(4) ;  Store return address in callee frame
570 : ADD 5, 4, 0 ;  Update pointer
571 : LDA 7, 142(0) ;  Call whileLoopFor
572 : LD 1, 9(5) ;  Load callee return value into R1
573 : LDC 4, 10(0) ;  Load frame size
574 : SUB 5, 5, 4 ;  Restore pointer
575 : ST   1, 7(5) ;  Spill Temporary
576 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
577 : ST   1, 8(5) ;  Spill Temporary
578 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
579 : ST   1, 9(5) ;  Spill Temporary
580 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
581 : ST   1, 10(5) ;  Spill Temporary
582 : LD   1, 3(5) ;  Load parameter 'N' into R1
583 : ST   1, 11(5) ;  Spill Temporary
584 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
585 : ST   1, 12(5) ;  Spill Temporary
586 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
587 : ST   1, 13(5) ;  Spill Temporary
588 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
589 : ST   1, 14(5) ;  Spill Temporary
590 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
591 : ST   1, 15(5) ;  Spill Temporary
592 : LDA 4, 10(5) ; Restore Callee frame base
593 : LD   1, 15(5) ;  Restore Temporary
594 : ST 1, 8(4) ;  Store argument 7 into callee frame
595 : LD   1, 14(5) ;  Restore Temporary
596 : ST 1, 7(4) ;  Store argument 6 into callee frame
597 : LD   1, 13(5) ;  Restore Temporary
598 : ST 1, 6(4) ;  Store argument 5 into callee frame
599 : LD   1, 12(5) ;  Restore Temporary
600 : ST 1, 5(4) ;  Store argument 4 into callee frame
601 : LD   1, 11(5) ;  Restore Temporary
602 : ST 1, 4(4) ;  Store argument 3 into callee frame
603 : LD   1, 10(5) ;  Restore Temporary
604 : ST 1, 3(4) ;  Store argument 2 into callee frame
605 : LD   1, 9(5) ;  Restore Temporary
606 : ST 1, 2(4) ;  Store argument 1 into callee frame
607 : LD   1, 8(5) ;  Restore Temporary
608 : ST 1, 1(4) ;  Store argument 0 into callee frame
609 : LDA 4, 10(5) ; Restore Call frame base
610 : LDA 6, 614(0) ;  Compute return address
611 : ST 6, 0(4) ;  Store return address in callee frame
612 : ADD 5, 4, 0 ;  Update pointer
613 : LDA 7, 142(0) ;  Call whileLoopFor
614 : LD 1, 9(5) ;  Load callee return value into R1
615 : LDC 4, 10(0) ;  Load frame size
616 : SUB 5, 5, 4 ;  Restore pointer
617 : ST   1, 8(5) ;  Spill Temporary
618 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
619 : ST   1, 9(5) ;  Spill Temporary
620 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
621 : ST   1, 10(5) ;  Spill Temporary
622 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
623 : ST   1, 11(5) ;  Spill Temporary
624 : LD   1, 3(5) ;  Load parameter 'N' into R1
625 : ST   1, 12(5) ;  Spill Temporary
626 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
627 : ST   1, 13(5) ;  Spill Temporary
628 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
629 : ST   1, 14(5) ;  Spill Temporary
630 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
631 : ST   1, 15(5) ;  Spill Temporary
632 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
633 : ST   1, 16(5) ;  Spill Temporary
634 : LDA 4, 10(5) ; Restore Callee frame base
635 : LD   1, 16(5) ;  Restore Temporary
636 : ST 1, 8(4) ;  Store argument 7 into callee frame
637 : LD   1, 15(5) ;  Restore Temporary
638 : ST 1, 7(4) ;  Store argument 6 into callee frame
639 : LD   1, 14(5) ;  Restore Temporary
640 : ST 1, 6(4) ;  Store argument 5 into callee frame
641 : LD   1, 13(5) ;  Restore Temporary
642 : ST 1, 5(4) ;  Store argument 4 into callee frame
643 : LD   1, 12(5) ;  Restore Temporary
644 : ST 1, 4(4) ;  Store argument 3 into callee frame
645 : LD   1, 11(5) ;  Restore Temporary
646 : ST 1, 3(4) ;  Store argument 2 into callee frame
647 : LD   1, 10(5) ;  Restore Temporary
648 : ST 1, 2(4) ;  Store argument 1 into callee frame
649 : LD   1, 9(5) ;  Restore Temporary
650 : ST 1, 1(4) ;  Store argument 0 into callee frame
651 : LDA 4, 10(5) ; Restore Call frame base
652 : LDA 6, 656(0) ;  Compute return address
653 : ST 6, 0(4) ;  Store return address in callee frame
654 : ADD 5, 4, 0 ;  Update pointer
655 : LDA 7, 142(0) ;  Call whileLoopFor
656 : LD 1, 9(5) ;  Load callee return value into R1
657 : LDC 4, 10(0) ;  Load frame size
658 : SUB 5, 5, 4 ;  Restore pointer
659 : ST   1, 9(5) ;  Spill Temporary
660 : LDA 4, 7(5) ; Restore Callee frame base
661 : LD   1, 9(5) ;  Restore Temporary
662 : ST 1, 5(4) ;  Store argument 4 into callee frame
663 : LD   1, 8(5) ;  Restore Temporary
664 : ST 1, 4(4) ;  Store argument 3 into callee frame
665 : LD   1, 7(5) ;  Restore Temporary
666 : ST 1, 3(4) ;  Store argument 2 into callee frame
667 : LD   1, 6(5) ;  Restore Temporary
668 : ST 1, 2(4) ;  Store argument 1 into callee frame
669 : LD   1, 5(5) ;  Restore Temporary
670 : ST 1, 1(4) ;  Store argument 0 into callee frame
671 : LDA 4, 7(5) ; Restore Call frame base
672 : LDA 6, 676(0) ;  Compute return address
673 : ST 6, 0(4) ;  Store return address in callee frame
674 : ADD 5, 4, 0 ;  Update pointer
675 : LDA 7, 442(0) ;  Call fareySelectDen
676 : LD 1, 6(5) ;  Load callee return value into R1
677 : LDC 4, 7(0) ;  Load frame size
678 : SUB 5, 5, 4 ;  Restore pointer
679 : ST   1, 4(5) ;  Store function result into stack frame
680 : LD   6, 0(5) ;  Load return address
681 : LDA  7, 0(6) ;  Return to caller
682 : LD   1, 3(5) ;  Load parameter 'N' into R1
683 : ST   1, 5(5) ;  Spill Temporary
684 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
685 : ST   1, 6(5) ;  Spill Temporary
686 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
687 : ST   1, 7(5) ;  Spill Temporary
688 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
689 : ST   1, 8(5) ;  Spill Temporary
690 : LD   1, 3(5) ;  Load parameter 'N' into R1
691 : ST   1, 9(5) ;  Spill Temporary
692 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
693 : ST   1, 10(5) ;  Spill Temporary
694 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
695 : ST   1, 11(5) ;  Spill Temporary
696 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
697 : ST   1, 12(5) ;  Spill Temporary
698 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
699 : ST   1, 13(5) ;  Spill Temporary
700 : LDA 4, 10(5) ; Restore Callee frame base
701 : LD   1, 13(5) ;  Restore Temporary
702 : ST 1, 8(4) ;  Store argument 7 into callee frame
703 : LD   1, 12(5) ;  Restore Temporary
704 : ST 1, 7(4) ;  Store argument 6 into callee frame
705 : LD   1, 11(5) ;  Restore Temporary
706 : ST 1, 6(4) ;  Store argument 5 into callee frame
707 : LD   1, 10(5) ;  Restore Temporary
708 : ST 1, 5(4) ;  Store argument 4 into callee frame
709 : LD   1, 9(5) ;  Restore Temporary
710 : ST 1, 4(4) ;  Store argument 3 into callee frame
711 : LD   1, 8(5) ;  Restore Temporary
712 : ST 1, 3(4) ;  Store argument 2 into callee frame
713 : LD   1, 7(5) ;  Restore Temporary
714 : ST 1, 2(4) ;  Store argument 1 into callee frame
715 : LD   1, 6(5) ;  Restore Temporary
716 : ST 1, 1(4) ;  Store argument 0 into callee frame
717 : LDA 4, 10(5) ; Restore Call frame base
718 : LDA 6, 722(0) ;  Compute return address
719 : ST 6, 0(4) ;  Store return address in callee frame
720 : ADD 5, 4, 0 ;  Update pointer
721 : LDA 7, 142(0) ;  Call whileLoopFor
722 : LD 1, 9(5) ;  Load callee return value into R1
723 : LDC 4, 10(0) ;  Load frame size
724 : SUB 5, 5, 4 ;  Restore pointer
725 : ST   1, 6(5) ;  Spill Temporary
726 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
727 : ST   1, 7(5) ;  Spill Temporary
728 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
729 : ST   1, 8(5) ;  Spill Temporary
730 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
731 : ST   1, 9(5) ;  Spill Temporary
732 : LD   1, 3(5) ;  Load parameter 'N' into R1
733 : ST   1, 10(5) ;  Spill Temporary
734 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
735 : ST   1, 11(5) ;  Spill Temporary
736 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
737 : ST   1, 12(5) ;  Spill Temporary
738 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
739 : ST   1, 13(5) ;  Spill Temporary
740 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
741 : ST   1, 14(5) ;  Spill Temporary
742 : LDA 4, 10(5) ; Restore Callee frame base
743 : LD   1, 14(5) ;  Restore Temporary
744 : ST 1, 8(4) ;  Store argument 7 into callee frame
745 : LD   1, 13(5) ;  Restore Temporary
746 : ST 1, 7(4) ;  Store argument 6 into callee frame
747 : LD   1, 12(5) ;  Restore Temporary
748 : ST 1, 6(4) ;  Store argument 5 into callee frame
749 : LD   1, 11(5) ;  Restore Temporary
750 : ST 1, 5(4) ;  Store argument 4 into callee frame
751 : LD   1, 10(5) ;  Restore Temporary
752 : ST 1, 4(4) ;  Store argument 3 into callee frame
753 : LD   1, 9(5) ;  Restore Temporary
754 : ST 1, 3(4) ;  Store argument 2 into callee frame
755 : LD   1, 8(5) ;  Restore Temporary
756 : ST 1, 2(4) ;  Store argument 1 into callee frame
757 : LD   1, 7(5) ;  Restore Temporary
758 : ST 1, 1(4) ;  Store argument 0 into callee frame
759 : LDA 4, 10(5) ; Restore Call frame base
760 : LDA 6, 764(0) ;  Compute return address
761 : ST 6, 0(4) ;  Store return address in callee frame
762 : ADD 5, 4, 0 ;  Update pointer
763 : LDA 7, 142(0) ;  Call whileLoopFor
764 : LD 1, 9(5) ;  Load callee return value into R1
765 : LDC 4, 10(0) ;  Load frame size
766 : SUB 5, 5, 4 ;  Restore pointer
767 : ST   1, 7(5) ;  Spill Temporary
768 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
769 : ST   1, 8(5) ;  Spill Temporary
770 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
771 : ST   1, 9(5) ;  Spill Temporary
772 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
773 : ST   1, 10(5) ;  Spill Temporary
774 : LD   1, 3(5) ;  Load parameter 'N' into R1
775 : ST   1, 11(5) ;  Spill Temporary
776 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
777 : ST   1, 12(5) ;  Spill Temporary
778 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
779 : ST   1, 13(5) ;  Spill Temporary
780 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
781 : ST   1, 14(5) ;  Spill Temporary
782 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
783 : ST   1, 15(5) ;  Spill Temporary
784 : LDA 4, 10(5) ; Restore Callee frame base
785 : LD   1, 15(5) ;  Restore Temporary
786 : ST 1, 8(4) ;  Store argument 7 into callee frame
787 : LD   1, 14(5) ;  Restore Temporary
788 : ST 1, 7(4) ;  Store argument 6 into callee frame
789 : LD   1, 13(5) ;  Restore Temporary
790 : ST 1, 6(4) ;  Store argument 5 into callee frame
791 : LD   1, 12(5) ;  Restore Temporary
792 : ST 1, 5(4) ;  Store argument 4 into callee frame
793 : LD   1, 11(5) ;  Restore Temporary
794 : ST 1, 4(4) ;  Store argument 3 into callee frame
795 : LD   1, 10(5) ;  Restore Temporary
796 : ST 1, 3(4) ;  Store argument 2 into callee frame
797 : LD   1, 9(5) ;  Restore Temporary
798 : ST 1, 2(4) ;  Store argument 1 into callee frame
799 : LD   1, 8(5) ;  Restore Temporary
800 : ST 1, 1(4) ;  Store argument 0 into callee frame
801 : LDA 4, 10(5) ; Restore Call frame base
802 : LDA 6, 806(0) ;  Compute return address
803 : ST 6, 0(4) ;  Store return address in callee frame
804 : ADD 5, 4, 0 ;  Update pointer
805 : LDA 7, 142(0) ;  Call whileLoopFor
806 : LD 1, 9(5) ;  Load callee return value into R1
807 : LDC 4, 10(0) ;  Load frame size
808 : SUB 5, 5, 4 ;  Restore pointer
809 : ST   1, 8(5) ;  Spill Temporary
810 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
811 : ST   1, 9(5) ;  Spill Temporary
812 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
813 : ST   1, 10(5) ;  Spill Temporary
814 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
815 : ST   1, 11(5) ;  Spill Temporary
816 : LD   1, 3(5) ;  Load parameter 'N' into R1
817 : ST   1, 12(5) ;  Spill Temporary
818 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
819 : ST   1, 13(5) ;  Spill Temporary
820 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
821 : ST   1, 14(5) ;  Spill Temporary
822 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
823 : ST   1, 15(5) ;  Spill Temporary
824 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
825 : ST   1, 16(5) ;  Spill Temporary
826 : LDA 4, 10(5) ; Restore Callee frame base
827 : LD   1, 16(5) ;  Restore Temporary
828 : ST 1, 8(4) ;  Store argument 7 into callee frame
829 : LD   1, 15(5) ;  Restore Temporary
830 : ST 1, 7(4) ;  Store argument 6 into callee frame
831 : LD   1, 14(5) ;  Restore Temporary
832 : ST 1, 6(4) ;  Store argument 5 into callee frame
833 : LD   1, 13(5) ;  Restore Temporary
834 : ST 1, 5(4) ;  Store argument 4 into callee frame
835 : LD   1, 12(5) ;  Restore Temporary
836 : ST 1, 4(4) ;  Store argument 3 into callee frame
837 : LD   1, 11(5) ;  Restore Temporary
838 : ST 1, 3(4) ;  Store argument 2 into callee frame
839 : LD   1, 10(5) ;  Restore Temporary
840 : ST 1, 2(4) ;  Store argument 1 into callee frame
841 : LD   1, 9(5) ;  Restore Temporary
842 : ST 1, 1(4) ;  Store argument 0 into callee frame
843 : LDA 4, 10(5) ; Restore Call frame base
844 : LDA 6, 848(0) ;  Compute return address
845 : ST 6, 0(4) ;  Store return address in callee frame
846 : ADD 5, 4, 0 ;  Update pointer
847 : LDA 7, 142(0) ;  Call whileLoopFor
848 : LD 1, 9(5) ;  Load callee return value into R1
849 : LDC 4, 10(0) ;  Load frame size
850 : SUB 5, 5, 4 ;  Restore pointer
851 : ST   1, 9(5) ;  Spill Temporary
852 : LDA 4, 7(5) ; Restore Callee frame base
853 : LD   1, 9(5) ;  Restore Temporary
854 : ST 1, 5(4) ;  Store argument 4 into callee frame
855 : LD   1, 8(5) ;  Restore Temporary
856 : ST 1, 4(4) ;  Store argument 3 into callee frame
857 : LD   1, 7(5) ;  Restore Temporary
858 : ST 1, 3(4) ;  Store argument 2 into callee frame
859 : LD   1, 6(5) ;  Restore Temporary
860 : ST 1, 2(4) ;  Store argument 1 into callee frame
861 : LD   1, 5(5) ;  Restore Temporary
862 : ST 1, 1(4) ;  Store argument 0 into callee frame
863 : LDA 4, 7(5) ; Restore Call frame base
864 : LDA 6, 868(0) ;  Compute return address
865 : ST 6, 0(4) ;  Store return address in callee frame
866 : ADD 5, 4, 0 ;  Update pointer
867 : LDA 7, 466(0) ;  Call fareySelectNum
868 : LD 1, 6(5) ;  Load callee return value into R1
869 : LDC 4, 7(0) ;  Load frame size
870 : SUB 5, 5, 4 ;  Restore pointer
871 : ST   1, 4(5) ;  Store function result into stack frame
872 : LD   6, 0(5) ;  Load return address
873 : LDA  7, 0(6) ;  Return to caller
