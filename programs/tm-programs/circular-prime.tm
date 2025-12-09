0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA  4, 0(5) ;  Save callee frame base
14 : LD   1, 1(5) ;  Load parameter 'x' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 6, 21(0) ;  Compute return address
17 : ST 6, 0(4) ;  Store return address in callee frame
18 : LDA  2, 3(4) ;  Compute end of frame
19 : ADD  5, 2, 0 ;  Advance pointer to end of frame
20 : LDA 7, 511(0) ;  Call circularPrimesTo
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC  4, 3(0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 1(5) ;  Load parameter 'num' into R1
29 : ADD  3, 1, 0 ;  Store left operand into temporary register
30 : LD   1, 2(5) ;  Load parameter 'den' into R1
31 : ADD  2, 3, 0 ;  Restore left operand
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDA  7, 57(0) ;  Skip ELSE block
40 : LDA  4, 0(5) ;  Save callee frame base
41 : LD   1, 1(5) ;  Load parameter 'num' into R1
42 : ADD  3, 1, 0 ;  Store left operand into temporary register
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : ST 1, 1(4) ;  Store argument 0 into callee frame
47 : LD   1, 2(5) ;  Load parameter 'den' into R1
48 : ST 1, 2(4) ;  Store argument 1 into callee frame
49 : LDA 6, 54(0) ;  Compute return address
50 : ST 6, 0(4) ;  Store return address in callee frame
51 : LDA  2, 4(4) ;  Compute end of frame
52 : ADD  5, 2, 0 ;  Advance pointer to end of frame
53 : LDA 7, 28(0) ;  Call mod
54 : LD 1, 3(5) ;  Load callee return value into R1
55 : LDC  4, 4(0) ;  Load frame size
56 : SUB  5, 5, 4 ;  Restore pointer
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LDA  4, 0(5) ;  Save callee frame base
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ST 1, 1(4) ;  Store argument 0 into callee frame
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : ST 1, 2(4) ;  Store argument 1 into callee frame
65 : LDA 6, 70(0) ;  Compute return address
66 : ST 6, 0(4) ;  Store return address in callee frame
67 : LDA  2, 4(4) ;  Compute end of frame
68 : ADD  5, 2, 0 ;  Advance pointer to end of frame
69 : LDA 7, 28(0) ;  Call mod
70 : LD 1, 3(5) ;  Load callee return value into R1
71 : LDC  4, 4(0) ;  Load frame size
72 : SUB  5, 5, 4 ;  Restore pointer
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'i' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 128(0) ;  If condition is false, jump to ELSE
94 : LDA  4, 0(5) ;  Save callee frame base
95 : LD   1, 1(5) ;  Load parameter 'i' into R1
96 : ST 1, 1(4) ;  Store argument 0 into callee frame
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ST 1, 2(4) ;  Store argument 1 into callee frame
99 : LDA 6, 104(0) ;  Compute return address
100 : ST 6, 0(4) ;  Store return address in callee frame
101 : LDA  2, 4(4) ;  Compute end of frame
102 : ADD  5, 2, 0 ;  Advance pointer to end of frame
103 : LDA 7, 60(0) ;  Call divides
104 : LD 1, 3(5) ;  Load callee return value into R1
105 : LDC  4, 4(0) ;  Load frame size
106 : SUB  5, 5, 4 ;  Restore pointer
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDA  4, 0(5) ;  Save callee frame base
109 : LD   1, 1(5) ;  Load parameter 'i' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : ST 1, 1(4) ;  Store argument 0 into callee frame
115 : LD   1, 2(5) ;  Load parameter 'n' into R1
116 : ST 1, 2(4) ;  Store argument 1 into callee frame
117 : LDA 6, 122(0) ;  Compute return address
118 : ST 6, 0(4) ;  Store return address in callee frame
119 : LDA  2, 4(4) ;  Compute end of frame
120 : ADD  5, 2, 0 ;  Advance pointer to end of frame
121 : LDA 7, 84(0) ;  Call hasDivisorFrom
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDC  4, 4(0) ;  Load frame size
124 : SUB  5, 5, 4 ;  Restore pointer
125 : ADD  2, 3, 0 ;  Restore left operand
126 : ADD  1, 2, 1 ;  R1 = left OR right
127 : LDA  7, 129(0) ;  Skip ELSE block
128 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LDA  4, 0(5) ;  Save callee frame base
133 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
134 : ST 1, 1(4) ;  Store argument 0 into callee frame
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : ST 1, 2(4) ;  Store argument 1 into callee frame
137 : LDA 6, 142(0) ;  Compute return address
138 : ST 6, 0(4) ;  Store return address in callee frame
139 : LDA  2, 4(4) ;  Compute end of frame
140 : ADD  5, 2, 0 ;  Advance pointer to end of frame
141 : LDA 7, 84(0) ;  Call hasDivisorFrom
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC  4, 4(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : LDC  2, 1(0) ;  Load 1 into R2
146 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
147 : ST   1, 2(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LD   1, 1(5) ;  Load parameter 'x' into R1
151 : ADD  3, 1, 0 ;  Store left operand into temporary register
152 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
153 : ADD  2, 3, 0 ;  Restore left operand
154 : DIV  1, 2, 1 ;  R1 = left / right
155 : ADD  3, 1, 0 ;  Store left operand into temporary register
156 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
157 : ADD  2, 3, 0 ;  Restore left operand
158 : SUB  1, 2, 1 ;  left - right for equality check
159 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
160 : LDC  1, 0(0) ;  false
161 : LDA  7, 1(7) ;  skip setting true
162 : LDC  1, 1(0) ;  true
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LD   1, 2(5) ;  Load parameter 'y' into R1
165 : LDA  7, 187(0) ;  Skip ELSE block
166 : LDA  4, 0(5) ;  Save callee frame base
167 : LD   1, 1(5) ;  Load parameter 'x' into R1
168 : ADD  3, 1, 0 ;  Store left operand into temporary register
169 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
170 : ADD  2, 3, 0 ;  Restore left operand
171 : DIV  1, 2, 1 ;  R1 = left / right
172 : ST 1, 1(4) ;  Store argument 0 into callee frame
173 : LD   1, 2(5) ;  Load parameter 'y' into R1
174 : ADD  3, 1, 0 ;  Store left operand into temporary register
175 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
176 : ADD  2, 3, 0 ;  Restore left operand
177 : ADD  1, 2, 1 ;  R1 = left + right
178 : ST 1, 2(4) ;  Store argument 1 into callee frame
179 : LDA 6, 184(0) ;  Compute return address
180 : ST 6, 0(4) ;  Store return address in callee frame
181 : LDA  2, 4(4) ;  Compute end of frame
182 : ADD  5, 2, 0 ;  Advance pointer to end of frame
183 : LDA 7, 150(0) ;  Call log10Helper
184 : LD 1, 3(5) ;  Load callee return value into R1
185 : LDC  4, 4(0) ;  Load frame size
186 : SUB  5, 5, 4 ;  Restore pointer
187 : ST   1, 3(5) ;  Store function result into stack frame
188 : LD   6, 0(5) ;  Load return address
189 : LDA  7, 0(6) ;  Return to caller
190 : LDA  4, 0(5) ;  Save callee frame base
191 : LD   1, 1(5) ;  Load parameter 'x' into R1
192 : ST 1, 1(4) ;  Store argument 0 into callee frame
193 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
194 : ST 1, 2(4) ;  Store argument 1 into callee frame
195 : LDA 6, 200(0) ;  Compute return address
196 : ST 6, 0(4) ;  Store return address in callee frame
197 : LDA  2, 4(4) ;  Compute end of frame
198 : ADD  5, 2, 0 ;  Advance pointer to end of frame
199 : LDA 7, 150(0) ;  Call log10Helper
200 : LD 1, 3(5) ;  Load callee return value into R1
201 : LDC  4, 4(0) ;  Load frame size
202 : SUB  5, 5, 4 ;  Restore pointer
203 : ST   1, 2(5) ;  Store function result into stack frame
204 : LD   6, 0(5) ;  Load return address
205 : LDA  7, 0(6) ;  Return to caller
206 : LD   1, 2(5) ;  Load parameter 'power' into R1
207 : ADD  3, 1, 0 ;  Store left operand into temporary register
208 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
209 : ADD  2, 3, 0 ;  Restore left operand
210 : SUB  1, 2, 1 ;  left - right for equality check
211 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
212 : LDC  1, 0(0) ;  false
213 : LDA  7, 1(7) ;  skip setting true
214 : LDC  1, 1(0) ;  true
215 : JEQ  1, 218(0) ;  If condition is false, jump to ELSE
216 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
217 : LDA  7, 253(0) ;  Skip ELSE block
218 : LD   1, 2(5) ;  Load parameter 'power' into R1
219 : ADD  3, 1, 0 ;  Store left operand into temporary register
220 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
221 : ADD  2, 3, 0 ;  Restore left operand
222 : SUB  1, 2, 1 ;  left - right for equality check
223 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
224 : LDC  1, 0(0) ;  false
225 : LDA  7, 1(7) ;  skip setting true
226 : LDC  1, 1(0) ;  true
227 : JEQ  1, 230(0) ;  If condition is false, jump to ELSE
228 : LD   1, 3(5) ;  Load parameter 'total' into R1
229 : LDA  7, 253(0) ;  Skip ELSE block
230 : LDA  4, 0(5) ;  Save callee frame base
231 : LD   1, 1(5) ;  Load parameter 'base' into R1
232 : ST 1, 1(4) ;  Store argument 0 into callee frame
233 : LD   1, 2(5) ;  Load parameter 'power' into R1
234 : ADD  3, 1, 0 ;  Store left operand into temporary register
235 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
236 : ADD  2, 3, 0 ;  Restore left operand
237 : SUB  1, 2, 1 ;  R1 = left - right
238 : ST 1, 2(4) ;  Store argument 1 into callee frame
239 : LD   1, 1(5) ;  Load parameter 'base' into R1
240 : ADD  3, 1, 0 ;  Store left operand into temporary register
241 : LD   1, 3(5) ;  Load parameter 'total' into R1
242 : ADD  2, 3, 0 ;  Restore left operand
243 : MUL  1, 2, 1 ;  R1 = left * right
244 : ST 1, 3(4) ;  Store argument 2 into callee frame
245 : LDA 6, 250(0) ;  Compute return address
246 : ST 6, 0(4) ;  Store return address in callee frame
247 : LDA  2, 5(4) ;  Compute end of frame
248 : ADD  5, 2, 0 ;  Advance pointer to end of frame
249 : LDA 7, 206(0) ;  Call powHelper
250 : LD 1, 4(5) ;  Load callee return value into R1
251 : LDC  4, 5(0) ;  Load frame size
252 : SUB  5, 5, 4 ;  Restore pointer
253 : ST   1, 4(5) ;  Store function result into stack frame
254 : LD   6, 0(5) ;  Load return address
255 : LDA  7, 0(6) ;  Return to caller
256 : LDA  4, 0(5) ;  Save callee frame base
257 : LD   1, 1(5) ;  Load parameter 'x' into R1
258 : ST 1, 1(4) ;  Store argument 0 into callee frame
259 : LD   1, 2(5) ;  Load parameter 'y' into R1
260 : ST 1, 2(4) ;  Store argument 1 into callee frame
261 : LD   1, 1(5) ;  Load parameter 'x' into R1
262 : ST 1, 3(4) ;  Store argument 2 into callee frame
263 : LDA 6, 268(0) ;  Compute return address
264 : ST 6, 0(4) ;  Store return address in callee frame
265 : LDA  2, 5(4) ;  Compute end of frame
266 : ADD  5, 2, 0 ;  Advance pointer to end of frame
267 : LDA 7, 206(0) ;  Call powHelper
268 : LD 1, 4(5) ;  Load callee return value into R1
269 : LDC  4, 5(0) ;  Load frame size
270 : SUB  5, 5, 4 ;  Restore pointer
271 : ST   1, 3(5) ;  Store function result into stack frame
272 : LD   6, 0(5) ;  Load return address
273 : LDA  7, 0(6) ;  Return to caller
274 : LD   1, 1(5) ;  Load parameter 'x' into R1
275 : ADD  3, 1, 0 ;  Store left operand into temporary register
276 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
277 : ADD  2, 3, 0 ;  Restore left operand
278 : DIV  1, 2, 1 ;  R1 = left / right
279 : ADD  3, 1, 0 ;  Store left operand into temporary register
280 : LDA  4, 0(5) ;  Save callee frame base
281 : LD   1, 1(5) ;  Load parameter 'x' into R1
282 : ST 1, 1(4) ;  Store argument 0 into callee frame
283 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
284 : ST 1, 2(4) ;  Store argument 1 into callee frame
285 : LDA 6, 290(0) ;  Compute return address
286 : ST 6, 0(4) ;  Store return address in callee frame
287 : LDA  2, 4(4) ;  Compute end of frame
288 : ADD  5, 2, 0 ;  Advance pointer to end of frame
289 : LDA 7, 28(0) ;  Call mod
290 : LD 1, 3(5) ;  Load callee return value into R1
291 : LDC  4, 4(0) ;  Load frame size
292 : SUB  5, 5, 4 ;  Restore pointer
293 : ADD  3, 1, 0 ;  Store left operand into temporary register
294 : LDA  4, 0(5) ;  Save callee frame base
295 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
296 : ST 1, 1(4) ;  Store argument 0 into callee frame
297 : LDA  4, 0(5) ;  Save callee frame base
298 : LD   1, 1(5) ;  Load parameter 'x' into R1
299 : ST 1, 1(4) ;  Store argument 0 into callee frame
300 : LDA 6, 305(0) ;  Compute return address
301 : ST 6, 0(4) ;  Store return address in callee frame
302 : LDA  2, 3(4) ;  Compute end of frame
303 : ADD  5, 2, 0 ;  Advance pointer to end of frame
304 : LDA 7, 190(0) ;  Call log10
305 : LD 1, 2(5) ;  Load callee return value into R1
306 : LDC  4, 3(0) ;  Load frame size
307 : SUB  5, 5, 4 ;  Restore pointer
308 : LDC  2, 3(0) ;  Stores arg frame size
309 : SUB  5, 5, 2 ;  Pop frame
310 : ST 1, 2(4) ;  Store argument 1 into callee frame
311 : LDA 6, 316(0) ;  Compute return address
312 : ST 6, 0(4) ;  Store return address in callee frame
313 : LDA  2, 4(4) ;  Compute end of frame
314 : ADD  5, 2, 0 ;  Advance pointer to end of frame
315 : LDA 7, 256(0) ;  Call pow
316 : LD 1, 3(5) ;  Load callee return value into R1
317 : LDC  4, 4(0) ;  Load frame size
318 : SUB  5, 5, 4 ;  Restore pointer
319 : ADD  2, 3, 0 ;  Restore left operand
320 : MUL  1, 2, 1 ;  R1 = left * right
321 : ADD  2, 3, 0 ;  Restore left operand
322 : ADD  1, 2, 1 ;  R1 = left + right
323 : ST   1, 2(5) ;  Store function result into stack frame
324 : LD   6, 0(5) ;  Load return address
325 : LDA  7, 0(6) ;  Return to caller
326 : LD   1, 1(5) ;  Load parameter 'x' into R1
327 : LDA  4, 3(5) ;  Update DMEM pointer
328 : LDA 6, 332(0) ;  Compute return address
329 : ST   6, 0(4) ;  Store return address
330 : ADD  5, 4, 0 ;  Updated Pointer
331 : LDA  7, 10(0) ; Call print
332 : LDC  4, 3(0) ;  Load frame size
333 : SUB  5, 5, 4 ;  Restore pointer
334 : ST   1, 2(5) ;  Store function result into stack frame
335 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
336 : ST   1, 2(5) ;  Store function result into stack frame
337 : LD   6, 0(5) ;  Load return address
338 : LDA  7, 0(6) ;  Return to caller
339 : LD   1, 2(5) ;  Load parameter 'turns' into R1
340 : ADD  3, 1, 0 ;  Store left operand into temporary register
341 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
342 : ADD  2, 3, 0 ;  Restore left operand
343 : SUB  1, 2, 1 ;  left - right for equality check
344 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
345 : LDC  1, 0(0) ;  false
346 : LDA  7, 1(7) ;  skip setting true
347 : LDC  1, 1(0) ;  true
348 : JEQ  1, 351(0) ;  If condition is false, jump to ELSE
349 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
350 : LDA  7, 394(0) ;  Skip ELSE block
351 : LDA  4, 0(5) ;  Save callee frame base
352 : LD   1, 1(5) ;  Load parameter 'x' into R1
353 : ST 1, 1(4) ;  Store argument 0 into callee frame
354 : LDA 6, 359(0) ;  Compute return address
355 : ST 6, 0(4) ;  Store return address in callee frame
356 : LDA  2, 3(4) ;  Compute end of frame
357 : ADD  5, 2, 0 ;  Advance pointer to end of frame
358 : LDA 7, 132(0) ;  Call isPrime
359 : LD 1, 2(5) ;  Load callee return value into R1
360 : LDC  4, 3(0) ;  Load frame size
361 : SUB  5, 5, 4 ;  Restore pointer
362 : ADD  3, 1, 0 ;  Store left operand into temporary register
363 : LDA  4, 0(5) ;  Save callee frame base
364 : LDA  4, 0(5) ;  Save callee frame base
365 : LD   1, 1(5) ;  Load parameter 'x' into R1
366 : ST 1, 1(4) ;  Store argument 0 into callee frame
367 : LDA 6, 372(0) ;  Compute return address
368 : ST 6, 0(4) ;  Store return address in callee frame
369 : LDA  2, 3(4) ;  Compute end of frame
370 : ADD  5, 2, 0 ;  Advance pointer to end of frame
371 : LDA 7, 274(0) ;  Call rotate
372 : LD 1, 2(5) ;  Load callee return value into R1
373 : LDC  4, 3(0) ;  Load frame size
374 : SUB  5, 5, 4 ;  Restore pointer
375 : LDC  2, 3(0) ;  Stores arg frame size
376 : SUB  5, 5, 2 ;  Pop frame
377 : ST 1, 1(4) ;  Store argument 0 into callee frame
378 : LD   1, 2(5) ;  Load parameter 'turns' into R1
379 : ADD  3, 1, 0 ;  Store left operand into temporary register
380 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
381 : ADD  2, 3, 0 ;  Restore left operand
382 : SUB  1, 2, 1 ;  R1 = left - right
383 : ST 1, 2(4) ;  Store argument 1 into callee frame
384 : LDA 6, 389(0) ;  Compute return address
385 : ST 6, 0(4) ;  Store return address in callee frame
386 : LDA  2, 4(4) ;  Compute end of frame
387 : ADD  5, 2, 0 ;  Advance pointer to end of frame
388 : LDA 7, 339(0) ;  Call isCircularPrimeHelper
389 : LD 1, 3(5) ;  Load callee return value into R1
390 : LDC  4, 4(0) ;  Load frame size
391 : SUB  5, 5, 4 ;  Restore pointer
392 : ADD  2, 3, 0 ;  Restore left operand
393 : MUL  1, 2, 1 ;  R1 = left AND right
394 : ST   1, 3(5) ;  Store function result into stack frame
395 : LD   6, 0(5) ;  Load return address
396 : LDA  7, 0(6) ;  Return to caller
397 : LDA  4, 0(5) ;  Save callee frame base
398 : LD   1, 1(5) ;  Load parameter 'x' into R1
399 : ST 1, 1(4) ;  Store argument 0 into callee frame
400 : LDA  4, 0(5) ;  Save callee frame base
401 : LD   1, 1(5) ;  Load parameter 'x' into R1
402 : ST 1, 1(4) ;  Store argument 0 into callee frame
403 : LDA 6, 408(0) ;  Compute return address
404 : ST 6, 0(4) ;  Store return address in callee frame
405 : LDA  2, 3(4) ;  Compute end of frame
406 : ADD  5, 2, 0 ;  Advance pointer to end of frame
407 : LDA 7, 190(0) ;  Call log10
408 : LD 1, 2(5) ;  Load callee return value into R1
409 : LDC  4, 3(0) ;  Load frame size
410 : SUB  5, 5, 4 ;  Restore pointer
411 : ADD  3, 1, 0 ;  Store left operand into temporary register
412 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
413 : ADD  2, 3, 0 ;  Restore left operand
414 : ADD  1, 2, 1 ;  R1 = left + right
415 : ST 1, 2(4) ;  Store argument 1 into callee frame
416 : LDA 6, 421(0) ;  Compute return address
417 : ST 6, 0(4) ;  Store return address in callee frame
418 : LDA  2, 4(4) ;  Compute end of frame
419 : ADD  5, 2, 0 ;  Advance pointer to end of frame
420 : LDA 7, 339(0) ;  Call isCircularPrimeHelper
421 : LD 1, 3(5) ;  Load callee return value into R1
422 : LDC  4, 4(0) ;  Load frame size
423 : SUB  5, 5, 4 ;  Restore pointer
424 : JEQ  1, 437(0) ;  If condition is false, jump to ELSE
425 : LDA  4, 0(5) ;  Save callee frame base
426 : LD   1, 1(5) ;  Load parameter 'x' into R1
427 : ST 1, 1(4) ;  Store argument 0 into callee frame
428 : LDA 6, 433(0) ;  Compute return address
429 : ST 6, 0(4) ;  Store return address in callee frame
430 : LDA  2, 3(4) ;  Compute end of frame
431 : ADD  5, 2, 0 ;  Advance pointer to end of frame
432 : LDA 7, 326(0) ;  Call report
433 : LD 1, 2(5) ;  Load callee return value into R1
434 : LDC  4, 3(0) ;  Load frame size
435 : SUB  5, 5, 4 ;  Restore pointer
436 : LDA  7, 438(0) ;  Skip ELSE block
437 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
438 : ST   1, 2(5) ;  Store function result into stack frame
439 : LD   6, 0(5) ;  Load return address
440 : LDA  7, 0(6) ;  Return to caller
441 : LD   1, 2(5) ;  Load parameter 'x' into R1
442 : ADD  3, 1, 0 ;  Store left operand into temporary register
443 : LD   1, 1(5) ;  Load parameter 'top' into R1
444 : ADD  2, 3, 0 ;  Restore left operand
445 : SUB  1, 2, 1 ;  left - right for less-than check
446 : JLT  1, 2(7) ;  If R1 < 0, jump to true
447 : LDC  1, 0(0) ;  false
448 : LDA  7, 1(7) ;  skip setting true
449 : LDC  1, 1(0) ;  true
450 : JEQ  1, 507(0) ;  If condition is false, jump to ELSE
451 : LDA  4, 0(5) ;  Save callee frame base
452 : LD   1, 2(5) ;  Load parameter 'x' into R1
453 : ST 1, 1(4) ;  Store argument 0 into callee frame
454 : LDA 6, 459(0) ;  Compute return address
455 : ST 6, 0(4) ;  Store return address in callee frame
456 : LDA  2, 3(4) ;  Compute end of frame
457 : ADD  5, 2, 0 ;  Advance pointer to end of frame
458 : LDA 7, 397(0) ;  Call isCircularPrime
459 : LD 1, 2(5) ;  Load callee return value into R1
460 : LDC  4, 3(0) ;  Load frame size
461 : SUB  5, 5, 4 ;  Restore pointer
462 : JEQ  1, 487(0) ;  If condition is false, jump to ELSE
463 : LDA  4, 0(5) ;  Save callee frame base
464 : LD   1, 1(5) ;  Load parameter 'top' into R1
465 : ST 1, 1(4) ;  Store argument 0 into callee frame
466 : LD   1, 2(5) ;  Load parameter 'x' into R1
467 : ADD  3, 1, 0 ;  Store left operand into temporary register
468 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
469 : ADD  2, 3, 0 ;  Restore left operand
470 : ADD  1, 2, 1 ;  R1 = left + right
471 : ST 1, 2(4) ;  Store argument 1 into callee frame
472 : LD   1, 3(5) ;  Load parameter 'count' into R1
473 : ADD  3, 1, 0 ;  Store left operand into temporary register
474 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
475 : ADD  2, 3, 0 ;  Restore left operand
476 : ADD  1, 2, 1 ;  R1 = left + right
477 : ST 1, 3(4) ;  Store argument 2 into callee frame
478 : LDA 6, 483(0) ;  Compute return address
479 : ST 6, 0(4) ;  Store return address in callee frame
480 : LDA  2, 5(4) ;  Compute end of frame
481 : ADD  5, 2, 0 ;  Advance pointer to end of frame
482 : LDA 7, 441(0) ;  Call circularPrimesToHelper
483 : LD 1, 4(5) ;  Load callee return value into R1
484 : LDC  4, 5(0) ;  Load frame size
485 : SUB  5, 5, 4 ;  Restore pointer
486 : LDA  7, 506(0) ;  Skip ELSE block
487 : LDA  4, 0(5) ;  Save callee frame base
488 : LD   1, 1(5) ;  Load parameter 'top' into R1
489 : ST 1, 1(4) ;  Store argument 0 into callee frame
490 : LD   1, 2(5) ;  Load parameter 'x' into R1
491 : ADD  3, 1, 0 ;  Store left operand into temporary register
492 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
493 : ADD  2, 3, 0 ;  Restore left operand
494 : ADD  1, 2, 1 ;  R1 = left + right
495 : ST 1, 2(4) ;  Store argument 1 into callee frame
496 : LD   1, 3(5) ;  Load parameter 'count' into R1
497 : ST 1, 3(4) ;  Store argument 2 into callee frame
498 : LDA 6, 503(0) ;  Compute return address
499 : ST 6, 0(4) ;  Store return address in callee frame
500 : LDA  2, 5(4) ;  Compute end of frame
501 : ADD  5, 2, 0 ;  Advance pointer to end of frame
502 : LDA 7, 441(0) ;  Call circularPrimesToHelper
503 : LD 1, 4(5) ;  Load callee return value into R1
504 : LDC  4, 5(0) ;  Load frame size
505 : SUB  5, 5, 4 ;  Restore pointer
506 : LDA  7, 508(0) ;  Skip ELSE block
507 : LD   1, 3(5) ;  Load parameter 'count' into R1
508 : ST   1, 4(5) ;  Store function result into stack frame
509 : LD   6, 0(5) ;  Load return address
510 : LDA  7, 0(6) ;  Return to caller
511 : LDA  4, 0(5) ;  Save callee frame base
512 : LD   1, 1(5) ;  Load parameter 'x' into R1
513 : ADD  3, 1, 0 ;  Store left operand into temporary register
514 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
515 : ADD  2, 3, 0 ;  Restore left operand
516 : ADD  1, 2, 1 ;  R1 = left + right
517 : ST 1, 1(4) ;  Store argument 0 into callee frame
518 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
519 : ST 1, 2(4) ;  Store argument 1 into callee frame
520 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
521 : ST 1, 3(4) ;  Store argument 2 into callee frame
522 : LDA 6, 527(0) ;  Compute return address
523 : ST 6, 0(4) ;  Store return address in callee frame
524 : LDA  2, 5(4) ;  Compute end of frame
525 : ADD  5, 2, 0 ;  Advance pointer to end of frame
526 : LDA 7, 441(0) ;  Call circularPrimesToHelper
527 : LD 1, 4(5) ;  Load callee return value into R1
528 : LDC  4, 5(0) ;  Load frame size
529 : SUB  5, 5, 4 ;  Restore pointer
530 : ST   1, 2(5) ;  Store function result into stack frame
531 : LD   6, 0(5) ;  Load return address
532 : LDA  7, 0(6) ;  Return to caller
