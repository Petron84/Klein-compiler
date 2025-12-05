0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'x' into R1
12 : LDA  4, 3(5) ; Restore Callee frame base
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDA  4, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0) ;  Compute return address
16 : ST 6, 0(4) ;  Store return address in callee frame
17 : ADD  5, 4, 0 ;  Update pointer
18 : LDA 7, 524(0) ;  Call circularPrimesTo
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4_original, 3(0) ;  Load frame size
21 : SUB  5, 5, 4_original ;  Restore pointer
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'num' into R1
27 : LDC  3, 1(0) ;  Store left operand into temporary register
28 : LD   1, 2(5) ;  Load parameter 'den' into R1
29 : LDC  2, 3(0) ;  Restore left operand
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : LDA  7, 56(0) ;  Skip ELSE block
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDC  3, 1(0) ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'den' into R1
41 : LDC  2, 3(0) ;  Restore left operand
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : LDA  4, 4(5) ; Restore Callee frame base
44 : ST 1, 1(4) ;  Store argument 0 into callee frame
45 : LD   1, 2(5) ;  Load parameter 'den' into R1
46 : LDA  4, 4(5) ; Restore Callee frame base
47 : ST 1, 2(4) ;  Store argument 1 into callee frame
48 : LDA  4, 4(5) ; Restore Call frame base
49 : LDA 6, 53(0) ;  Compute return address
50 : ST 6, 0(4) ;  Store return address in callee frame
51 : ADD  5, 4, 0 ;  Update pointer
52 : LDA 7, 26(0) ;  Call mod
53 : LD 1, 3(5) ;  Load callee return value into R1
54 : LDC  4_original, 4(0) ;  Load frame size
55 : SUB  5, 5, 4_original ;  Restore pointer
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   6, 0(5) ;  Load return address
58 : LDA  7, 0(6) ;  Return to caller
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : LDA  4, 4(5) ; Restore Callee frame base
61 : ST 1, 1(4) ;  Store argument 0 into callee frame
62 : LD   1, 1(5) ;  Load parameter 'a' into R1
63 : LDA  4, 4(5) ; Restore Callee frame base
64 : ST 1, 2(4) ;  Store argument 1 into callee frame
65 : LDA  4, 4(5) ; Restore Call frame base
66 : LDA 6, 70(0) ;  Compute return address
67 : ST 6, 0(4) ;  Store return address in callee frame
68 : ADD  5, 4, 0 ;  Update pointer
69 : LDA 7, 26(0) ;  Call mod
70 : LD 1, 3(5) ;  Load callee return value into R1
71 : LDC  4_original, 4(0) ;  Load frame size
72 : SUB  5, 5, 4_original ;  Restore pointer
73 : LDC  3, 1(0) ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : LDC  2, 3(0) ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'i' into R1
85 : LDC  3, 1(0) ;  Store left operand into temporary register
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : LDC  2, 3(0) ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
94 : LD   1, 1(5) ;  Load parameter 'i' into R1
95 : LDA  4, 4(5) ; Restore Callee frame base
96 : ST 1, 1(4) ;  Store argument 0 into callee frame
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : LDA  4, 4(5) ; Restore Callee frame base
99 : ST 1, 2(4) ;  Store argument 1 into callee frame
100 : LDA  4, 4(5) ; Restore Call frame base
101 : LDA 6, 105(0) ;  Compute return address
102 : ST 6, 0(4) ;  Store return address in callee frame
103 : ADD  5, 4, 0 ;  Update pointer
104 : LDA 7, 59(0) ;  Call divides
105 : LD 1, 3(5) ;  Load callee return value into R1
106 : LDC  4_original, 4(0) ;  Load frame size
107 : SUB  5, 5, 4_original ;  Restore pointer
108 : LDC  3, 1(0) ;  Store left operand into temporary register
109 : LD   1, 1(5) ;  Load parameter 'i' into R1
110 : LDC  3, 1(0) ;  Store left operand into temporary register
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : LDC  2, 3(0) ;  Restore left operand
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : LDA  4, 4(5) ; Restore Callee frame base
115 : ST 1, 1(4) ;  Store argument 0 into callee frame
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : LDA  4, 4(5) ; Restore Callee frame base
118 : ST 1, 2(4) ;  Store argument 1 into callee frame
119 : LDA  4, 4(5) ; Restore Call frame base
120 : LDA 6, 124(0) ;  Compute return address
121 : ST 6, 0(4) ;  Store return address in callee frame
122 : ADD  5, 4, 0 ;  Update pointer
123 : LDA 7, 84(0) ;  Call hasDivisorFrom
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDC  4_original, 4(0) ;  Load frame size
126 : SUB  5, 5, 4_original ;  Restore pointer
127 : LDC  2, 3(0) ;  Restore left operand
128 : ADD  1, 2, 1 ;  R1 = left OR right
129 : LDA  7, 131(0) ;  Skip ELSE block
130 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
131 : ST   1, 3(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
135 : LDA  4, 4(5) ; Restore Callee frame base
136 : ST 1, 1(4) ;  Store argument 0 into callee frame
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : LDA  4, 4(5) ; Restore Callee frame base
139 : ST 1, 2(4) ;  Store argument 1 into callee frame
140 : LDA  4, 4(5) ; Restore Call frame base
141 : LDA 6, 145(0) ;  Compute return address
142 : ST 6, 0(4) ;  Store return address in callee frame
143 : ADD  5, 4, 0 ;  Update pointer
144 : LDA 7, 84(0) ;  Call hasDivisorFrom
145 : LD 1, 3(5) ;  Load callee return value into R1
146 : LDC  4_original, 4(0) ;  Load frame size
147 : SUB  5, 5, 4_original ;  Restore pointer
148 : LDC  2, 1(0) ;  Load 1 into R2
149 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
150 : ST   1, 2(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LD   1, 1(5) ;  Load parameter 'x' into R1
154 : LDC  3, 1(0) ;  Store left operand into temporary register
155 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
156 : LDC  2, 3(0) ;  Restore left operand
157 : DIV  1, 2, 1 ;  R1 = left / right
158 : LDC  3, 1(0) ;  Store left operand into temporary register
159 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
160 : LDC  2, 3(0) ;  Restore left operand
161 : SUB  1, 2, 1 ;  left - right for equality check
162 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
163 : LDC  1, 0(0) ;  false
164 : LDA  7, 1(7) ;  skip setting true
165 : LDC  1, 1(0) ;  true
166 : JEQ  1, 169(0) ;  If condition is false, jump to ELSE
167 : LD   1, 2(5) ;  Load parameter 'y' into R1
168 : LDA  7, 191(0) ;  Skip ELSE block
169 : LD   1, 1(5) ;  Load parameter 'x' into R1
170 : LDC  3, 1(0) ;  Store left operand into temporary register
171 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
172 : LDC  2, 3(0) ;  Restore left operand
173 : DIV  1, 2, 1 ;  R1 = left / right
174 : LDA  4, 4(5) ; Restore Callee frame base
175 : ST 1, 1(4) ;  Store argument 0 into callee frame
176 : LD   1, 2(5) ;  Load parameter 'y' into R1
177 : LDC  3, 1(0) ;  Store left operand into temporary register
178 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
179 : LDC  2, 3(0) ;  Restore left operand
180 : ADD  1, 2, 1 ;  R1 = left + right
181 : LDA  4, 4(5) ; Restore Callee frame base
182 : ST 1, 2(4) ;  Store argument 1 into callee frame
183 : LDA  4, 4(5) ; Restore Call frame base
184 : LDA 6, 188(0) ;  Compute return address
185 : ST 6, 0(4) ;  Store return address in callee frame
186 : ADD  5, 4, 0 ;  Update pointer
187 : LDA 7, 153(0) ;  Call log10Helper
188 : LD 1, 3(5) ;  Load callee return value into R1
189 : LDC  4_original, 4(0) ;  Load frame size
190 : SUB  5, 5, 4_original ;  Restore pointer
191 : ST   1, 3(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
194 : LD   1, 1(5) ;  Load parameter 'x' into R1
195 : LDA  4, 4(5) ; Restore Callee frame base
196 : ST 1, 1(4) ;  Store argument 0 into callee frame
197 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
198 : LDA  4, 4(5) ; Restore Callee frame base
199 : ST 1, 2(4) ;  Store argument 1 into callee frame
200 : LDA  4, 4(5) ; Restore Call frame base
201 : LDA 6, 205(0) ;  Compute return address
202 : ST 6, 0(4) ;  Store return address in callee frame
203 : ADD  5, 4, 0 ;  Update pointer
204 : LDA 7, 153(0) ;  Call log10Helper
205 : LD 1, 3(5) ;  Load callee return value into R1
206 : LDC  4_original, 4(0) ;  Load frame size
207 : SUB  5, 5, 4_original ;  Restore pointer
208 : ST   1, 2(5) ;  Store function result into stack frame
209 : LD   6, 0(5) ;  Load return address
210 : LDA  7, 0(6) ;  Return to caller
211 : LD   1, 2(5) ;  Load parameter 'power' into R1
212 : LDC  3, 1(0) ;  Store left operand into temporary register
213 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
214 : LDC  2, 3(0) ;  Restore left operand
215 : SUB  1, 2, 1 ;  left - right for equality check
216 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
217 : LDC  1, 0(0) ;  false
218 : LDA  7, 1(7) ;  skip setting true
219 : LDC  1, 1(0) ;  true
220 : JEQ  1, 223(0) ;  If condition is false, jump to ELSE
221 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
222 : LDA  7, 260(0) ;  Skip ELSE block
223 : LD   1, 2(5) ;  Load parameter 'power' into R1
224 : LDC  3, 1(0) ;  Store left operand into temporary register
225 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
226 : LDC  2, 3(0) ;  Restore left operand
227 : SUB  1, 2, 1 ;  left - right for equality check
228 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
229 : LDC  1, 0(0) ;  false
230 : LDA  7, 1(7) ;  skip setting true
231 : LDC  1, 1(0) ;  true
232 : JEQ  1, 235(0) ;  If condition is false, jump to ELSE
233 : LD   1, 3(5) ;  Load parameter 'total' into R1
234 : LDA  7, 260(0) ;  Skip ELSE block
235 : LD   1, 1(5) ;  Load parameter 'base' into R1
236 : LDA  4, 5(5) ; Restore Callee frame base
237 : ST 1, 1(4) ;  Store argument 0 into callee frame
238 : LD   1, 2(5) ;  Load parameter 'power' into R1
239 : LDC  3, 1(0) ;  Store left operand into temporary register
240 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
241 : LDC  2, 3(0) ;  Restore left operand
242 : SUB  1, 2, 1 ;  R1 = left - right
243 : LDA  4, 5(5) ; Restore Callee frame base
244 : ST 1, 2(4) ;  Store argument 1 into callee frame
245 : LD   1, 1(5) ;  Load parameter 'base' into R1
246 : LDC  3, 1(0) ;  Store left operand into temporary register
247 : LD   1, 3(5) ;  Load parameter 'total' into R1
248 : LDC  2, 3(0) ;  Restore left operand
249 : MUL  1, 2, 1 ;  R1 = left * right
250 : LDA  4, 5(5) ; Restore Callee frame base
251 : ST 1, 3(4) ;  Store argument 2 into callee frame
252 : LDA  4, 5(5) ; Restore Call frame base
253 : LDA 6, 257(0) ;  Compute return address
254 : ST 6, 0(4) ;  Store return address in callee frame
255 : ADD  5, 4, 0 ;  Update pointer
256 : LDA 7, 211(0) ;  Call powHelper
257 : LD 1, 4(5) ;  Load callee return value into R1
258 : LDC  4_original, 5(0) ;  Load frame size
259 : SUB  5, 5, 4_original ;  Restore pointer
260 : ST   1, 4(5) ;  Store function result into stack frame
261 : LD   6, 0(5) ;  Load return address
262 : LDA  7, 0(6) ;  Return to caller
263 : LD   1, 1(5) ;  Load parameter 'x' into R1
264 : LDA  4, 5(5) ; Restore Callee frame base
265 : ST 1, 1(4) ;  Store argument 0 into callee frame
266 : LD   1, 2(5) ;  Load parameter 'y' into R1
267 : LDA  4, 5(5) ; Restore Callee frame base
268 : ST 1, 2(4) ;  Store argument 1 into callee frame
269 : LD   1, 1(5) ;  Load parameter 'x' into R1
270 : LDA  4, 5(5) ; Restore Callee frame base
271 : ST 1, 3(4) ;  Store argument 2 into callee frame
272 : LDA  4, 5(5) ; Restore Call frame base
273 : LDA 6, 277(0) ;  Compute return address
274 : ST 6, 0(4) ;  Store return address in callee frame
275 : ADD  5, 4, 0 ;  Update pointer
276 : LDA 7, 211(0) ;  Call powHelper
277 : LD 1, 4(5) ;  Load callee return value into R1
278 : LDC  4_original, 5(0) ;  Load frame size
279 : SUB  5, 5, 4_original ;  Restore pointer
280 : ST   1, 3(5) ;  Store function result into stack frame
281 : LD   6, 0(5) ;  Load return address
282 : LDA  7, 0(6) ;  Return to caller
283 : LD   1, 1(5) ;  Load parameter 'x' into R1
284 : LDC  3, 1(0) ;  Store left operand into temporary register
285 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
286 : LDC  2, 3(0) ;  Restore left operand
287 : DIV  1, 2, 1 ;  R1 = left / right
288 : LDC  3, 1(0) ;  Store left operand into temporary register
289 : LD   1, 1(5) ;  Load parameter 'x' into R1
290 : LDA  4, 4(5) ; Restore Callee frame base
291 : ST 1, 1(4) ;  Store argument 0 into callee frame
292 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
293 : LDA  4, 4(5) ; Restore Callee frame base
294 : ST 1, 2(4) ;  Store argument 1 into callee frame
295 : LDA  4, 4(5) ; Restore Call frame base
296 : LDA 6, 300(0) ;  Compute return address
297 : ST 6, 0(4) ;  Store return address in callee frame
298 : ADD  5, 4, 0 ;  Update pointer
299 : LDA 7, 26(0) ;  Call mod
300 : LD 1, 3(5) ;  Load callee return value into R1
301 : LDC  4_original, 4(0) ;  Load frame size
302 : SUB  5, 5, 4_original ;  Restore pointer
303 : LDC  3, 1(0) ;  Store left operand into temporary register
304 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
305 : LDA  4, 4(5) ; Restore Callee frame base
306 : ST 1, 1(4) ;  Store argument 0 into callee frame
307 : LD   1, 1(5) ;  Load parameter 'x' into R1
308 : LDA  4, 3(5) ; Restore Callee frame base
309 : ST 1, 1(4) ;  Store argument 0 into callee frame
310 : LDA  4, 3(5) ; Restore Call frame base
311 : LDA 6, 315(0) ;  Compute return address
312 : ST 6, 0(4) ;  Store return address in callee frame
313 : ADD  5, 4, 0 ;  Update pointer
314 : LDA 7, 194(0) ;  Call log10
315 : LD 1, 2(5) ;  Load callee return value into R1
316 : LDC  4_original, 3(0) ;  Load frame size
317 : SUB  5, 5, 4_original ;  Restore pointer
318 : LDA  4, 4(5) ; Restore Callee frame base
319 : ST 1, 2(4) ;  Store argument 1 into callee frame
320 : LDA  4, 4(5) ; Restore Call frame base
321 : LDA 6, 325(0) ;  Compute return address
322 : ST 6, 0(4) ;  Store return address in callee frame
323 : ADD  5, 4, 0 ;  Update pointer
324 : LDA 7, 263(0) ;  Call pow
325 : LD 1, 3(5) ;  Load callee return value into R1
326 : LDC  4_original, 4(0) ;  Load frame size
327 : SUB  5, 5, 4_original ;  Restore pointer
328 : LDC  2, 3(0) ;  Restore left operand
329 : MUL  1, 2, 1 ;  R1 = left * right
330 : LDC  2, 3(0) ;  Restore left operand
331 : ADD  1, 2, 1 ;  R1 = left + right
332 : ST   1, 2(5) ;  Store function result into stack frame
333 : LD   6, 0(5) ;  Load return address
334 : LDA  7, 0(6) ;  Return to caller
335 : LD   1, 1(5) ;  Load parameter 'x' into R1
336 : LDA  4, 3(5) ;  Update DMEM pointer
337 : LDA 6, 341(0) ;  Compute return address
338 : ST   6, 0(4) ;  Store return address
339 : ADD  5, 4, 0 ;  Updated Pointer
340 : LDA  7, 8(0) ; Call print
341 : LDC  4_original, 3(0) ;  Load frame size
342 : SUB  5, 5, 4_original ;  Restore pointer
343 : ST   1, 2(5) ;  Store function result into stack frame
344 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
345 : ST   1, 2(5) ;  Store function result into stack frame
346 : LD   6, 0(5) ;  Load return address
347 : LDA  7, 0(6) ;  Return to caller
348 : LD   1, 2(5) ;  Load parameter 'turns' into R1
349 : LDC  3, 1(0) ;  Store left operand into temporary register
350 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
351 : LDC  2, 3(0) ;  Restore left operand
352 : SUB  1, 2, 1 ;  left - right for equality check
353 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
354 : LDC  1, 0(0) ;  false
355 : LDA  7, 1(7) ;  skip setting true
356 : LDC  1, 1(0) ;  true
357 : JEQ  1, 360(0) ;  If condition is false, jump to ELSE
358 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
359 : LDA  7, 402(0) ;  Skip ELSE block
360 : LD   1, 1(5) ;  Load parameter 'x' into R1
361 : LDA  4, 3(5) ; Restore Callee frame base
362 : ST 1, 1(4) ;  Store argument 0 into callee frame
363 : LDA  4, 3(5) ; Restore Call frame base
364 : LDA 6, 368(0) ;  Compute return address
365 : ST 6, 0(4) ;  Store return address in callee frame
366 : ADD  5, 4, 0 ;  Update pointer
367 : LDA 7, 134(0) ;  Call isPrime
368 : LD 1, 2(5) ;  Load callee return value into R1
369 : LDC  4_original, 3(0) ;  Load frame size
370 : SUB  5, 5, 4_original ;  Restore pointer
371 : LDC  3, 1(0) ;  Store left operand into temporary register
372 : LD   1, 1(5) ;  Load parameter 'x' into R1
373 : LDA  4, 3(5) ; Restore Callee frame base
374 : ST 1, 1(4) ;  Store argument 0 into callee frame
375 : LDA  4, 3(5) ; Restore Call frame base
376 : LDA 6, 380(0) ;  Compute return address
377 : ST 6, 0(4) ;  Store return address in callee frame
378 : ADD  5, 4, 0 ;  Update pointer
379 : LDA 7, 283(0) ;  Call rotate
380 : LD 1, 2(5) ;  Load callee return value into R1
381 : LDC  4_original, 3(0) ;  Load frame size
382 : SUB  5, 5, 4_original ;  Restore pointer
383 : LDA  4, 4(5) ; Restore Callee frame base
384 : ST 1, 1(4) ;  Store argument 0 into callee frame
385 : LD   1, 2(5) ;  Load parameter 'turns' into R1
386 : LDC  3, 1(0) ;  Store left operand into temporary register
387 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
388 : LDC  2, 3(0) ;  Restore left operand
389 : SUB  1, 2, 1 ;  R1 = left - right
390 : LDA  4, 4(5) ; Restore Callee frame base
391 : ST 1, 2(4) ;  Store argument 1 into callee frame
392 : LDA  4, 4(5) ; Restore Call frame base
393 : LDA 6, 397(0) ;  Compute return address
394 : ST 6, 0(4) ;  Store return address in callee frame
395 : ADD  5, 4, 0 ;  Update pointer
396 : LDA 7, 348(0) ;  Call isCircularPrimeHelper
397 : LD 1, 3(5) ;  Load callee return value into R1
398 : LDC  4_original, 4(0) ;  Load frame size
399 : SUB  5, 5, 4_original ;  Restore pointer
400 : LDC  2, 3(0) ;  Restore left operand
401 : MUL  1, 2, 1 ;  R1 = left AND right
402 : ST   1, 3(5) ;  Store function result into stack frame
403 : LD   6, 0(5) ;  Load return address
404 : LDA  7, 0(6) ;  Return to caller
405 : LD   1, 1(5) ;  Load parameter 'x' into R1
406 : LDA  4, 4(5) ; Restore Callee frame base
407 : ST 1, 1(4) ;  Store argument 0 into callee frame
408 : LD   1, 1(5) ;  Load parameter 'x' into R1
409 : LDA  4, 3(5) ; Restore Callee frame base
410 : ST 1, 1(4) ;  Store argument 0 into callee frame
411 : LDA  4, 3(5) ; Restore Call frame base
412 : LDA 6, 416(0) ;  Compute return address
413 : ST 6, 0(4) ;  Store return address in callee frame
414 : ADD  5, 4, 0 ;  Update pointer
415 : LDA 7, 194(0) ;  Call log10
416 : LD 1, 2(5) ;  Load callee return value into R1
417 : LDC  4_original, 3(0) ;  Load frame size
418 : SUB  5, 5, 4_original ;  Restore pointer
419 : LDC  3, 1(0) ;  Store left operand into temporary register
420 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
421 : LDC  2, 3(0) ;  Restore left operand
422 : ADD  1, 2, 1 ;  R1 = left + right
423 : LDA  4, 4(5) ; Restore Callee frame base
424 : ST 1, 2(4) ;  Store argument 1 into callee frame
425 : LDA  4, 4(5) ; Restore Call frame base
426 : LDA 6, 430(0) ;  Compute return address
427 : ST 6, 0(4) ;  Store return address in callee frame
428 : ADD  5, 4, 0 ;  Update pointer
429 : LDA 7, 348(0) ;  Call isCircularPrimeHelper
430 : LD 1, 3(5) ;  Load callee return value into R1
431 : LDC  4_original, 4(0) ;  Load frame size
432 : SUB  5, 5, 4_original ;  Restore pointer
433 : JEQ  1, 446(0) ;  If condition is false, jump to ELSE
434 : LD   1, 1(5) ;  Load parameter 'x' into R1
435 : LDA  4, 3(5) ; Restore Callee frame base
436 : ST 1, 1(4) ;  Store argument 0 into callee frame
437 : LDA  4, 3(5) ; Restore Call frame base
438 : LDA 6, 442(0) ;  Compute return address
439 : ST 6, 0(4) ;  Store return address in callee frame
440 : ADD  5, 4, 0 ;  Update pointer
441 : LDA 7, 335(0) ;  Call report
442 : LD 1, 2(5) ;  Load callee return value into R1
443 : LDC  4_original, 3(0) ;  Load frame size
444 : SUB  5, 5, 4_original ;  Restore pointer
445 : LDA  7, 447(0) ;  Skip ELSE block
446 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
447 : ST   1, 2(5) ;  Store function result into stack frame
448 : LD   6, 0(5) ;  Load return address
449 : LDA  7, 0(6) ;  Return to caller
450 : LD   1, 2(5) ;  Load parameter 'x' into R1
451 : LDC  3, 1(0) ;  Store left operand into temporary register
452 : LD   1, 1(5) ;  Load parameter 'top' into R1
453 : LDC  2, 3(0) ;  Restore left operand
454 : SUB  1, 2, 1 ;  left - right for less-than check
455 : JLT  1, 2(7) ;  If R1 < 0, jump to true
456 : LDC  1, 0(0) ;  false
457 : LDA  7, 1(7) ;  skip setting true
458 : LDC  1, 1(0) ;  true
459 : JEQ  1, 520(0) ;  If condition is false, jump to ELSE
460 : LD   1, 2(5) ;  Load parameter 'x' into R1
461 : LDA  4, 3(5) ; Restore Callee frame base
462 : ST 1, 1(4) ;  Store argument 0 into callee frame
463 : LDA  4, 3(5) ; Restore Call frame base
464 : LDA 6, 468(0) ;  Compute return address
465 : ST 6, 0(4) ;  Store return address in callee frame
466 : ADD  5, 4, 0 ;  Update pointer
467 : LDA 7, 405(0) ;  Call isCircularPrime
468 : LD 1, 2(5) ;  Load callee return value into R1
469 : LDC  4_original, 3(0) ;  Load frame size
470 : SUB  5, 5, 4_original ;  Restore pointer
471 : JEQ  1, 498(0) ;  If condition is false, jump to ELSE
472 : LD   1, 1(5) ;  Load parameter 'top' into R1
473 : LDA  4, 5(5) ; Restore Callee frame base
474 : ST 1, 1(4) ;  Store argument 0 into callee frame
475 : LD   1, 2(5) ;  Load parameter 'x' into R1
476 : LDC  3, 1(0) ;  Store left operand into temporary register
477 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
478 : LDC  2, 3(0) ;  Restore left operand
479 : ADD  1, 2, 1 ;  R1 = left + right
480 : LDA  4, 5(5) ; Restore Callee frame base
481 : ST 1, 2(4) ;  Store argument 1 into callee frame
482 : LD   1, 3(5) ;  Load parameter 'count' into R1
483 : LDC  3, 1(0) ;  Store left operand into temporary register
484 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
485 : LDC  2, 3(0) ;  Restore left operand
486 : ADD  1, 2, 1 ;  R1 = left + right
487 : LDA  4, 5(5) ; Restore Callee frame base
488 : ST 1, 3(4) ;  Store argument 2 into callee frame
489 : LDA  4, 5(5) ; Restore Call frame base
490 : LDA 6, 494(0) ;  Compute return address
491 : ST 6, 0(4) ;  Store return address in callee frame
492 : ADD  5, 4, 0 ;  Update pointer
493 : LDA 7, 450(0) ;  Call circularPrimesToHelper
494 : LD 1, 4(5) ;  Load callee return value into R1
495 : LDC  4_original, 5(0) ;  Load frame size
496 : SUB  5, 5, 4_original ;  Restore pointer
497 : LDA  7, 519(0) ;  Skip ELSE block
498 : LD   1, 1(5) ;  Load parameter 'top' into R1
499 : LDA  4, 5(5) ; Restore Callee frame base
500 : ST 1, 1(4) ;  Store argument 0 into callee frame
501 : LD   1, 2(5) ;  Load parameter 'x' into R1
502 : LDC  3, 1(0) ;  Store left operand into temporary register
503 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
504 : LDC  2, 3(0) ;  Restore left operand
505 : ADD  1, 2, 1 ;  R1 = left + right
506 : LDA  4, 5(5) ; Restore Callee frame base
507 : ST 1, 2(4) ;  Store argument 1 into callee frame
508 : LD   1, 3(5) ;  Load parameter 'count' into R1
509 : LDA  4, 5(5) ; Restore Callee frame base
510 : ST 1, 3(4) ;  Store argument 2 into callee frame
511 : LDA  4, 5(5) ; Restore Call frame base
512 : LDA 6, 516(0) ;  Compute return address
513 : ST 6, 0(4) ;  Store return address in callee frame
514 : ADD  5, 4, 0 ;  Update pointer
515 : LDA 7, 450(0) ;  Call circularPrimesToHelper
516 : LD 1, 4(5) ;  Load callee return value into R1
517 : LDC  4_original, 5(0) ;  Load frame size
518 : SUB  5, 5, 4_original ;  Restore pointer
519 : LDA  7, 521(0) ;  Skip ELSE block
520 : LD   1, 3(5) ;  Load parameter 'count' into R1
521 : ST   1, 4(5) ;  Store function result into stack frame
522 : LD   6, 0(5) ;  Load return address
523 : LDA  7, 0(6) ;  Return to caller
524 : LD   1, 1(5) ;  Load parameter 'x' into R1
525 : LDC  3, 1(0) ;  Store left operand into temporary register
526 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
527 : LDC  2, 3(0) ;  Restore left operand
528 : ADD  1, 2, 1 ;  R1 = left + right
529 : LDA  4, 5(5) ; Restore Callee frame base
530 : ST 1, 1(4) ;  Store argument 0 into callee frame
531 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
532 : LDA  4, 5(5) ; Restore Callee frame base
533 : ST 1, 2(4) ;  Store argument 1 into callee frame
534 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
535 : LDA  4, 5(5) ; Restore Callee frame base
536 : ST 1, 3(4) ;  Store argument 2 into callee frame
537 : LDA  4, 5(5) ; Restore Call frame base
538 : LDA 6, 542(0) ;  Compute return address
539 : ST 6, 0(4) ;  Store return address in callee frame
540 : ADD  5, 4, 0 ;  Update pointer
541 : LDA 7, 450(0) ;  Call circularPrimesToHelper
542 : LD 1, 4(5) ;  Load callee return value into R1
543 : LDC  4_original, 5(0) ;  Load frame size
544 : SUB  5, 5, 4_original ;  Restore pointer
545 : ST   1, 2(5) ;  Store function result into stack frame
546 : LD   6, 0(5) ;  Load return address
547 : LDA  7, 0(6) ;  Return to caller
