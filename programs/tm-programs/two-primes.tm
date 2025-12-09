0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 2(5) ;  Load parameter 'selector' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
25 : LDA  4, 0(5) ;  Save callee frame base
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(4) ;  Store argument 0 into callee frame
28 : LDA 6, 33(0) ;  Compute return address
29 : ST 6, 0(4) ;  Store return address in callee frame
30 : LDA  2, 3(4) ;  Compute end of frame
31 : ADD  5, 2, 0 ;  Advance pointer to end of frame
32 : LDA 7, 340(0) ;  Call emirp
33 : LD 1, 2(5) ;  Load callee return value into R1
34 : LDC  4, 3(0) ;  Load frame size
35 : SUB  5, 5, 4 ;  Restore pointer
36 : ST 1, 3(5) ;  Store result into current frame's return slot
37 : LDA  7, 86(0) ;  Skip ELSE block
38 : LD   1, 2(5) ;  Load parameter 'selector' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : SUB  1, 2, 1 ;  left - right for equality check
43 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
44 : LDC  1, 0(0) ;  false
45 : LDA  7, 1(7) ;  skip setting true
46 : LDC  1, 1(0) ;  true
47 : JEQ  1, 61(0) ;  If condition is false, jump to ELSE
48 : LDA  4, 0(5) ;  Save callee frame base
49 : LD   1, 1(5) ;  Load parameter 'n' into R1
50 : ST 1, 1(4) ;  Store argument 0 into callee frame
51 : LDA 6, 56(0) ;  Compute return address
52 : ST 6, 0(4) ;  Store return address in callee frame
53 : LDA  2, 3(4) ;  Compute end of frame
54 : ADD  5, 2, 0 ;  Advance pointer to end of frame
55 : LDA 7, 296(0) ;  Call snowball
56 : LD 1, 2(5) ;  Load callee return value into R1
57 : LDC  4, 3(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : ST 1, 3(5) ;  Store result into current frame's return slot
60 : LDA  7, 86(0) ;  Skip ELSE block
61 : LD   1, 2(5) ;  Load parameter 'selector' into R1
62 : ADD  3, 1, 0 ;  Store left operand into temporary register
63 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
64 : ADD  2, 3, 0 ;  Restore left operand
65 : SUB  1, 2, 1 ;  left - right for equality check
66 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
67 : LDC  1, 0(0) ;  false
68 : LDA  7, 1(7) ;  skip setting true
69 : LDC  1, 1(0) ;  true
70 : JEQ  1, 84(0) ;  If condition is false, jump to ELSE
71 : LDA  4, 0(5) ;  Save callee frame base
72 : LD   1, 1(5) ;  Load parameter 'n' into R1
73 : ST 1, 1(4) ;  Store argument 0 into callee frame
74 : LDA 6, 79(0) ;  Compute return address
75 : ST 6, 0(4) ;  Store return address in callee frame
76 : LDA  2, 3(4) ;  Compute end of frame
77 : ADD  5, 2, 0 ;  Advance pointer to end of frame
78 : LDA 7, 263(0) ;  Call doBoth
79 : LD 1, 2(5) ;  Load callee return value into R1
80 : LDC  4, 3(0) ;  Load frame size
81 : SUB  5, 5, 4 ;  Restore pointer
82 : ST 1, 3(5) ;  Store result into current frame's return slot
83 : LDA  7, 86(0) ;  Skip ELSE block
84 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
85 : ST 1, 3(5) ;  Store result into current frame's return slot
86 : LD   1, 3(5) ;  Load return value into register 1
87 : LD  6, 0(5) ;  Load return address for main function into register 6
88 : LDA  7, 0(6) ;  Jump to return address of main function
89 : LD   1, 1(5) ;  Load parameter 'm' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LD   1, 1(5) ;  Load parameter 'm' into R1
92 : ADD  3, 1, 0 ;  Store left operand into temporary register
93 : LD   1, 2(5) ;  Load parameter 'n' into R1
94 : ADD  2, 3, 0 ;  Restore left operand
95 : DIV  1, 2, 1 ;  R1 = left / right
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ADD  2, 3, 0 ;  Restore left operand
99 : MUL  1, 2, 1 ;  R1 = left * right
100 : ADD  2, 3, 0 ;  Restore left operand
101 : SUB  1, 2, 1 ;  R1 = left - right
102 : ST   1, 3(5) ;  Store function result into stack frame
103 : LD   6, 0(5) ;  Load return address
104 : LDA  7, 0(6) ;  Return to caller
105 : LD   1, 1(5) ;  Load parameter 'n' into R1
106 : ADD  3, 1, 0 ;  Store left operand into temporary register
107 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
108 : ADD  2, 3, 0 ;  Restore left operand
109 : SUB  1, 2, 1 ;  left - right for equality check
110 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
111 : LDC  1, 0(0) ;  false
112 : LDA  7, 1(7) ;  skip setting true
113 : LDC  1, 1(0) ;  true
114 : JEQ  1, 117(0) ;  If condition is false, jump to ELSE
115 : LD   1, 2(5) ;  Load parameter 'nR' into R1
116 : LDA  7, 154(0) ;  Skip ELSE block
117 : LDA  4, 0(5) ;  Save callee frame base
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
121 : ADD  2, 3, 0 ;  Restore left operand
122 : DIV  1, 2, 1 ;  R1 = left / right
123 : ST 1, 1(4) ;  Store argument 0 into callee frame
124 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
125 : ADD  3, 1, 0 ;  Store left operand into temporary register
126 : LD   1, 2(5) ;  Load parameter 'nR' into R1
127 : ADD  2, 3, 0 ;  Restore left operand
128 : MUL  1, 2, 1 ;  R1 = left * right
129 : ADD  3, 1, 0 ;  Store left operand into temporary register
130 : LDA  4, 0(5) ;  Save callee frame base
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST 1, 1(4) ;  Store argument 0 into callee frame
133 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
134 : ST 1, 2(4) ;  Store argument 1 into callee frame
135 : LDA 6, 140(0) ;  Compute return address
136 : ST 6, 0(4) ;  Store return address in callee frame
137 : LDA  2, 4(4) ;  Compute end of frame
138 : ADD  5, 2, 0 ;  Advance pointer to end of frame
139 : LDA 7, 89(0) ;  Call MOD
140 : LD 1, 3(5) ;  Load callee return value into R1
141 : LDC  4, 4(0) ;  Load frame size
142 : SUB  5, 5, 4 ;  Restore pointer
143 : ADD  2, 3, 0 ;  Restore left operand
144 : ADD  1, 2, 1 ;  R1 = left + right
145 : ST 1, 2(4) ;  Store argument 1 into callee frame
146 : LDA 6, 151(0) ;  Compute return address
147 : ST 6, 0(4) ;  Store return address in callee frame
148 : LDA  2, 4(4) ;  Compute end of frame
149 : ADD  5, 2, 0 ;  Advance pointer to end of frame
150 : LDA 7, 105(0) ;  Call reverseL
151 : LD 1, 3(5) ;  Load callee return value into R1
152 : LDC  4, 4(0) ;  Load frame size
153 : SUB  5, 5, 4 ;  Restore pointer
154 : ST   1, 3(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LDA  4, 0(5) ;  Save callee frame base
158 : LD   1, 1(5) ;  Load parameter 'n' into R1
159 : ST 1, 1(4) ;  Store argument 0 into callee frame
160 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
161 : ST 1, 2(4) ;  Store argument 1 into callee frame
162 : LDA 6, 167(0) ;  Compute return address
163 : ST 6, 0(4) ;  Store return address in callee frame
164 : LDA  2, 4(4) ;  Compute end of frame
165 : ADD  5, 2, 0 ;  Advance pointer to end of frame
166 : LDA 7, 105(0) ;  Call reverseL
167 : LD 1, 3(5) ;  Load callee return value into R1
168 : LDC  4, 4(0) ;  Load frame size
169 : SUB  5, 5, 4 ;  Restore pointer
170 : ST   1, 2(5) ;  Store function result into stack frame
171 : LD   6, 0(5) ;  Load return address
172 : LDA  7, 0(6) ;  Return to caller
173 : LDA  4, 0(5) ;  Save callee frame base
174 : LD   1, 2(5) ;  Load parameter 'b' into R1
175 : ST 1, 1(4) ;  Store argument 0 into callee frame
176 : LD   1, 1(5) ;  Load parameter 'a' into R1
177 : ST 1, 2(4) ;  Store argument 1 into callee frame
178 : LDA 6, 183(0) ;  Compute return address
179 : ST 6, 0(4) ;  Store return address in callee frame
180 : LDA  2, 4(4) ;  Compute end of frame
181 : ADD  5, 2, 0 ;  Advance pointer to end of frame
182 : LDA 7, 89(0) ;  Call MOD
183 : LD 1, 3(5) ;  Load callee return value into R1
184 : LDC  4, 4(0) ;  Load frame size
185 : SUB  5, 5, 4 ;  Restore pointer
186 : ADD  3, 1, 0 ;  Store left operand into temporary register
187 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
188 : ADD  2, 3, 0 ;  Restore left operand
189 : SUB  1, 2, 1 ;  left - right for equality check
190 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
191 : LDC  1, 0(0) ;  false
192 : LDA  7, 1(7) ;  skip setting true
193 : LDC  1, 1(0) ;  true
194 : ST   1, 3(5) ;  Store function result into stack frame
195 : LD   6, 0(5) ;  Load return address
196 : LDA  7, 0(6) ;  Return to caller
197 : LD   1, 1(5) ;  Load parameter 'i' into R1
198 : ADD  3, 1, 0 ;  Store left operand into temporary register
199 : LD   1, 2(5) ;  Load parameter 'n' into R1
200 : ADD  2, 3, 0 ;  Restore left operand
201 : SUB  1, 2, 1 ;  left - right for less-than check
202 : JLT  1, 2(7) ;  If R1 < 0, jump to true
203 : LDC  1, 0(0) ;  false
204 : LDA  7, 1(7) ;  skip setting true
205 : LDC  1, 1(0) ;  true
206 : JEQ  1, 241(0) ;  If condition is false, jump to ELSE
207 : LDA  4, 0(5) ;  Save callee frame base
208 : LD   1, 1(5) ;  Load parameter 'i' into R1
209 : ST 1, 1(4) ;  Store argument 0 into callee frame
210 : LD   1, 2(5) ;  Load parameter 'n' into R1
211 : ST 1, 2(4) ;  Store argument 1 into callee frame
212 : LDA 6, 217(0) ;  Compute return address
213 : ST 6, 0(4) ;  Store return address in callee frame
214 : LDA  2, 4(4) ;  Compute end of frame
215 : ADD  5, 2, 0 ;  Advance pointer to end of frame
216 : LDA 7, 173(0) ;  Call divides
217 : LD 1, 3(5) ;  Load callee return value into R1
218 : LDC  4, 4(0) ;  Load frame size
219 : SUB  5, 5, 4 ;  Restore pointer
220 : ADD  3, 1, 0 ;  Store left operand into temporary register
221 : LDA  4, 0(5) ;  Save callee frame base
222 : LD   1, 1(5) ;  Load parameter 'i' into R1
223 : ADD  3, 1, 0 ;  Store left operand into temporary register
224 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
225 : ADD  2, 3, 0 ;  Restore left operand
226 : ADD  1, 2, 1 ;  R1 = left + right
227 : ST 1, 1(4) ;  Store argument 0 into callee frame
228 : LD   1, 2(5) ;  Load parameter 'n' into R1
229 : ST 1, 2(4) ;  Store argument 1 into callee frame
230 : LDA 6, 235(0) ;  Compute return address
231 : ST 6, 0(4) ;  Store return address in callee frame
232 : LDA  2, 4(4) ;  Compute end of frame
233 : ADD  5, 2, 0 ;  Advance pointer to end of frame
234 : LDA 7, 197(0) ;  Call hasDivisorFrom
235 : LD 1, 3(5) ;  Load callee return value into R1
236 : LDC  4, 4(0) ;  Load frame size
237 : SUB  5, 5, 4 ;  Restore pointer
238 : ADD  2, 3, 0 ;  Restore left operand
239 : ADD  1, 2, 1 ;  R1 = left OR right
240 : LDA  7, 242(0) ;  Skip ELSE block
241 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
242 : ST   1, 3(5) ;  Store function result into stack frame
243 : LD   6, 0(5) ;  Load return address
244 : LDA  7, 0(6) ;  Return to caller
245 : LDA  4, 0(5) ;  Save callee frame base
246 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
247 : ST 1, 1(4) ;  Store argument 0 into callee frame
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : ST 1, 2(4) ;  Store argument 1 into callee frame
250 : LDA 6, 255(0) ;  Compute return address
251 : ST 6, 0(4) ;  Store return address in callee frame
252 : LDA  2, 4(4) ;  Compute end of frame
253 : ADD  5, 2, 0 ;  Advance pointer to end of frame
254 : LDA 7, 197(0) ;  Call hasDivisorFrom
255 : LD 1, 3(5) ;  Load callee return value into R1
256 : LDC  4, 4(0) ;  Load frame size
257 : SUB  5, 5, 4 ;  Restore pointer
258 : LDC  2, 1(0) ;  Load 1 into R2
259 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
260 : ST   1, 2(5) ;  Store function result into stack frame
261 : LD   6, 0(5) ;  Load return address
262 : LDA  7, 0(6) ;  Return to caller
263 : LDA  4, 0(5) ;  Save callee frame base
264 : LD   1, 1(5) ;  Load parameter 'n' into R1
265 : ST 1, 1(4) ;  Store argument 0 into callee frame
266 : LDA 6, 271(0) ;  Compute return address
267 : ST 6, 0(4) ;  Store return address in callee frame
268 : LDA  2, 3(4) ;  Compute end of frame
269 : ADD  5, 2, 0 ;  Advance pointer to end of frame
270 : LDA 7, 340(0) ;  Call emirp
271 : LD 1, 2(5) ;  Load callee return value into R1
272 : LDC  4, 3(0) ;  Load frame size
273 : SUB  5, 5, 4 ;  Restore pointer
274 : LDA  4, 3(5) ;  Update DMEM pointer
275 : LDA 6, 279(0) ;  Compute return address
276 : ST   6, 0(4) ;  Store return address
277 : ADD  5, 4, 0 ;  Updated Pointer
278 : LDA  7, 12(0) ; Call print
279 : LDC  4, 3(0) ;  Load frame size
280 : SUB  5, 5, 4 ;  Restore pointer
281 : ST   1, 2(5) ;  Store function result into stack frame
282 : LDA  4, 0(5) ;  Save callee frame base
283 : LD   1, 1(5) ;  Load parameter 'n' into R1
284 : ST 1, 1(4) ;  Store argument 0 into callee frame
285 : LDA 6, 290(0) ;  Compute return address
286 : ST 6, 0(4) ;  Store return address in callee frame
287 : LDA  2, 3(4) ;  Compute end of frame
288 : ADD  5, 2, 0 ;  Advance pointer to end of frame
289 : LDA 7, 296(0) ;  Call snowball
290 : LD 1, 2(5) ;  Load callee return value into R1
291 : LDC  4, 3(0) ;  Load frame size
292 : SUB  5, 5, 4 ;  Restore pointer
293 : ST   1, 2(5) ;  Store function result into stack frame
294 : LD   6, 0(5) ;  Load return address
295 : LDA  7, 0(6) ;  Return to caller
296 : LDA  4, 0(5) ;  Save callee frame base
297 : LD   1, 1(5) ;  Load parameter 'n' into R1
298 : ST 1, 1(4) ;  Store argument 0 into callee frame
299 : LDA 6, 304(0) ;  Compute return address
300 : ST 6, 0(4) ;  Store return address in callee frame
301 : LDA  2, 3(4) ;  Compute end of frame
302 : ADD  5, 2, 0 ;  Advance pointer to end of frame
303 : LDA 7, 245(0) ;  Call isPrime
304 : LD 1, 2(5) ;  Load callee return value into R1
305 : LDC  4, 3(0) ;  Load frame size
306 : SUB  5, 5, 4 ;  Restore pointer
307 : ADD  3, 1, 0 ;  Store left operand into temporary register
308 : LD   1, 1(5) ;  Load parameter 'n' into R1
309 : ADD  3, 1, 0 ;  Store left operand into temporary register
310 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
311 : ADD  2, 3, 0 ;  Restore left operand
312 : SUB  1, 2, 1 ;  left - right for less-than check
313 : JLT  1, 2(7) ;  If R1 < 0, jump to true
314 : LDC  1, 0(0) ;  false
315 : LDA  7, 1(7) ;  skip setting true
316 : LDC  1, 1(0) ;  true
317 : JEQ  1, 320(0) ;  If condition is false, jump to ELSE
318 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
319 : LDA  7, 335(0) ;  Skip ELSE block
320 : LDA  4, 0(5) ;  Save callee frame base
321 : LD   1, 1(5) ;  Load parameter 'n' into R1
322 : ADD  3, 1, 0 ;  Store left operand into temporary register
323 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
324 : ADD  2, 3, 0 ;  Restore left operand
325 : DIV  1, 2, 1 ;  R1 = left / right
326 : ST 1, 1(4) ;  Store argument 0 into callee frame
327 : LDA 6, 332(0) ;  Compute return address
328 : ST 6, 0(4) ;  Store return address in callee frame
329 : LDA  2, 3(4) ;  Compute end of frame
330 : ADD  5, 2, 0 ;  Advance pointer to end of frame
331 : LDA 7, 245(0) ;  Call isPrime
332 : LD 1, 2(5) ;  Load callee return value into R1
333 : LDC  4, 3(0) ;  Load frame size
334 : SUB  5, 5, 4 ;  Restore pointer
335 : ADD  2, 3, 0 ;  Restore left operand
336 : MUL  1, 2, 1 ;  R1 = left AND right
337 : ST   1, 2(5) ;  Store function result into stack frame
338 : LD   6, 0(5) ;  Load return address
339 : LDA  7, 0(6) ;  Return to caller
340 : LDA  4, 0(5) ;  Save callee frame base
341 : LD   1, 1(5) ;  Load parameter 'n' into R1
342 : ST 1, 1(4) ;  Store argument 0 into callee frame
343 : LDA 6, 348(0) ;  Compute return address
344 : ST 6, 0(4) ;  Store return address in callee frame
345 : LDA  2, 3(4) ;  Compute end of frame
346 : ADD  5, 2, 0 ;  Advance pointer to end of frame
347 : LDA 7, 245(0) ;  Call isPrime
348 : LD 1, 2(5) ;  Load callee return value into R1
349 : LDC  4, 3(0) ;  Load frame size
350 : SUB  5, 5, 4 ;  Restore pointer
351 : ADD  3, 1, 0 ;  Store left operand into temporary register
352 : LDA  4, 0(5) ;  Save callee frame base
353 : LDA  4, 0(5) ;  Save callee frame base
354 : LD   1, 1(5) ;  Load parameter 'n' into R1
355 : ST 1, 1(4) ;  Store argument 0 into callee frame
356 : LDA 6, 361(0) ;  Compute return address
357 : ST 6, 0(4) ;  Store return address in callee frame
358 : LDA  2, 3(4) ;  Compute end of frame
359 : ADD  5, 2, 0 ;  Advance pointer to end of frame
360 : LDA 7, 157(0) ;  Call reverse
361 : LD 1, 2(5) ;  Load callee return value into R1
362 : LDC  4, 3(0) ;  Load frame size
363 : SUB  5, 5, 4 ;  Restore pointer
364 : LDC  2, 3(0) ;  Stores arg frame size
365 : SUB  5, 5, 2 ;  Pop frame
366 : ST 1, 1(4) ;  Store argument 0 into callee frame
367 : LDA 6, 372(0) ;  Compute return address
368 : ST 6, 0(4) ;  Store return address in callee frame
369 : LDA  2, 3(4) ;  Compute end of frame
370 : ADD  5, 2, 0 ;  Advance pointer to end of frame
371 : LDA 7, 245(0) ;  Call isPrime
372 : LD 1, 2(5) ;  Load callee return value into R1
373 : LDC  4, 3(0) ;  Load frame size
374 : SUB  5, 5, 4 ;  Restore pointer
375 : ADD  2, 3, 0 ;  Restore left operand
376 : MUL  1, 2, 1 ;  R1 = left AND right
377 : ST   1, 2(5) ;  Store function result into stack frame
378 : LD   6, 0(5) ;  Load return address
379 : LDA  7, 0(6) ;  Return to caller
