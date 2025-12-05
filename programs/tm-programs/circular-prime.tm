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
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDA 4, 3(5) ; Restore Callee frame base
14 : LD   1, 3(5) ;  Restore Temporary
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 4, 3(5) ; Restore Call frame base
17 : LDA 6, 21(0) ;  Compute return address
18 : ST 6, 0(4) ;  Store return address in callee frame
19 : ADD 5, 4, 0 ;  Update pointer
20 : LDA 7, 587(0) ;  Call circularPrimesTo
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC 4, 3(0) ;  Load frame size
23 : SUB 5, 5, 4 ;  Restore pointer
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 1(5) ;  Load parameter 'num' into R1
29 : ADD  3, 1, 0 ;  Save left operand
30 : LD   1, 2(5) ;  Load parameter 'den' into R1
31 : ADD  2, 3, 0 ;  restore left operand
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDA  7, 61(0) ;  Skip ELSE block
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : ADD  3, 1, 0 ;  Save left operand
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ADD  2, 3, 0 ;  restore left operand
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST   1, 4(5) ;  Spill Temporary
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : ST   1, 5(5) ;  Spill Temporary
48 : LDA 4, 4(5) ; Restore Callee frame base
49 : LD   1, 5(5) ;  Restore Temporary
50 : ST 1, 2(4) ;  Store argument 1 into callee frame
51 : LD   1, 4(5) ;  Restore Temporary
52 : ST 1, 1(4) ;  Store argument 0 into callee frame
53 : LDA 4, 4(5) ; Restore Call frame base
54 : LDA 6, 58(0) ;  Compute return address
55 : ST 6, 0(4) ;  Store return address in callee frame
56 : ADD 5, 4, 0 ;  Update pointer
57 : LDA 7, 28(0) ;  Call mod
58 : LD 1, 3(5) ;  Load callee return value into R1
59 : LDC 4, 4(0) ;  Load frame size
60 : SUB 5, 5, 4 ;  Restore pointer
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LD   6, 0(5) ;  Load return address
63 : LDA  7, 0(6) ;  Return to caller
64 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
65 : ADD  3, 1, 0 ;  Save right operand
66 : LD   1, 2(5) ;  Load parameter 'b' into R1
67 : ST   1, 4(5) ;  Spill Temporary
68 : LD   1, 1(5) ;  Load parameter 'a' into R1
69 : ST   1, 5(5) ;  Spill Temporary
70 : LDA 4, 4(5) ; Restore Callee frame base
71 : LD   1, 5(5) ;  Restore Temporary
72 : ST 1, 2(4) ;  Store argument 1 into callee frame
73 : LD   1, 4(5) ;  Restore Temporary
74 : ST 1, 1(4) ;  Store argument 0 into callee frame
75 : LDA 4, 4(5) ; Restore Call frame base
76 : LDA 6, 80(0) ;  Compute return address
77 : ST 6, 0(4) ;  Store return address in callee frame
78 : ADD 5, 4, 0 ;  Update pointer
79 : LDA 7, 28(0) ;  Call mod
80 : LD 1, 3(5) ;  Load callee return value into R1
81 : LDC 4, 4(0) ;  Load frame size
82 : SUB 5, 5, 4 ;  Restore pointer
83 : ADD  2, 3, 0 ;  Restore right operand
84 : SUB  1, 2, 1 ;  left - right for equality check
85 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : ST   1, 3(5) ;  Store function result into stack frame
90 : LD   6, 0(5) ;  Load return address
91 : LDA  7, 0(6) ;  Return to caller
92 : LD   1, 1(5) ;  Load parameter 'i' into R1
93 : ADD  3, 1, 0 ;  Save left operand
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : ADD  2, 3, 0 ;  restore left operand
96 : SUB  1, 2, 1 ;  left - right for less-than check
97 : JLT  1, 2(7) ;  If R1 < 0, jump to true
98 : LDC  1, 0(0) ;  false
99 : LDA  7, 1(7) ;  skip setting true
100 : LDC  1, 1(0) ;  true
101 : JEQ  1, 144(0) ;  If condition is false, jump to ELSE
102 : LD   1, 1(5) ;  Load parameter 'i' into R1
103 : ST   1, 4(5) ;  Spill Temporary
104 : LD   1, 2(5) ;  Load parameter 'n' into R1
105 : ST   1, 5(5) ;  Spill Temporary
106 : LDA 4, 4(5) ; Restore Callee frame base
107 : LD   1, 5(5) ;  Restore Temporary
108 : ST 1, 2(4) ;  Store argument 1 into callee frame
109 : LD   1, 4(5) ;  Restore Temporary
110 : ST 1, 1(4) ;  Store argument 0 into callee frame
111 : LDA 4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD 5, 4, 0 ;  Update pointer
115 : LDA 7, 64(0) ;  Call divides
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC 4, 4(0) ;  Load frame size
118 : SUB 5, 5, 4 ;  Restore pointer
119 : ST   1, 4(5) ;  Spill Temporary
120 : LD   1, 1(5) ;  Load parameter 'i' into R1
121 : ADD  3, 1, 0 ;  Save left operand
122 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
123 : ADD  2, 3, 0 ;  restore left operand
124 : ADD  1, 2, 1 ;  R1 = left + right
125 : ST   1, 5(5) ;  Spill Temporary
126 : LD   1, 2(5) ;  Load parameter 'n' into R1
127 : ST   1, 6(5) ;  Spill Temporary
128 : LDA 4, 4(5) ; Restore Callee frame base
129 : LD   1, 6(5) ;  Restore Temporary
130 : ST 1, 2(4) ;  Store argument 1 into callee frame
131 : LD   1, 5(5) ;  Restore Temporary
132 : ST 1, 1(4) ;  Store argument 0 into callee frame
133 : LDA 4, 4(5) ; Restore Call frame base
134 : LDA 6, 138(0) ;  Compute return address
135 : ST 6, 0(4) ;  Store return address in callee frame
136 : ADD 5, 4, 0 ;  Update pointer
137 : LDA 7, 92(0) ;  Call hasDivisorFrom
138 : LD 1, 3(5) ;  Load callee return value into R1
139 : LDC 4, 4(0) ;  Load frame size
140 : SUB 5, 5, 4 ;  Restore pointer
141 : LD   2, 4(5) ;  Restore Temporary
142 : ADD  1, 2, 1 ;  R1 = left OR right
143 : LDA  7, 145(0) ;  Skip ELSE block
144 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
145 : ST   1, 3(5) ;  Store function result into stack frame
146 : LD   6, 0(5) ;  Load return address
147 : LDA  7, 0(6) ;  Return to caller
148 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
149 : ST   1, 3(5) ;  Spill Temporary
150 : LD   1, 1(5) ;  Load parameter 'n' into R1
151 : ST   1, 4(5) ;  Spill Temporary
152 : LDA 4, 4(5) ; Restore Callee frame base
153 : LD   1, 4(5) ;  Restore Temporary
154 : ST 1, 2(4) ;  Store argument 1 into callee frame
155 : LD   1, 3(5) ;  Restore Temporary
156 : ST 1, 1(4) ;  Store argument 0 into callee frame
157 : LDA 4, 4(5) ; Restore Call frame base
158 : LDA 6, 162(0) ;  Compute return address
159 : ST 6, 0(4) ;  Store return address in callee frame
160 : ADD 5, 4, 0 ;  Update pointer
161 : LDA 7, 92(0) ;  Call hasDivisorFrom
162 : LD 1, 3(5) ;  Load callee return value into R1
163 : LDC 4, 4(0) ;  Load frame size
164 : SUB 5, 5, 4 ;  Restore pointer
165 : LDC  2, 1(0) ;  Load 1 into R2
166 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
167 : ST   1, 2(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
170 : LD   1, 1(5) ;  Load parameter 'x' into R1
171 : ADD  3, 1, 0 ;  Save left operand
172 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
173 : ADD  2, 3, 0 ;  restore left operand
174 : DIV  1, 2, 1 ;  R1 = left / right
175 : ADD  3, 1, 0 ;  Save left operand
176 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
177 : ADD  2, 3, 0 ;  restore left operand
178 : SUB  1, 2, 1 ;  left - right for equality check
179 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
180 : LDC  1, 0(0) ;  false
181 : LDA  7, 1(7) ;  skip setting true
182 : LDC  1, 1(0) ;  true
183 : JEQ  1, 186(0) ;  If condition is false, jump to ELSE
184 : LD   1, 2(5) ;  Load parameter 'y' into R1
185 : LDA  7, 211(0) ;  Skip ELSE block
186 : LD   1, 1(5) ;  Load parameter 'x' into R1
187 : ADD  3, 1, 0 ;  Save left operand
188 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
189 : ADD  2, 3, 0 ;  restore left operand
190 : DIV  1, 2, 1 ;  R1 = left / right
191 : ST   1, 4(5) ;  Spill Temporary
192 : LD   1, 2(5) ;  Load parameter 'y' into R1
193 : ADD  3, 1, 0 ;  Save left operand
194 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
195 : ADD  2, 3, 0 ;  restore left operand
196 : ADD  1, 2, 1 ;  R1 = left + right
197 : ST   1, 5(5) ;  Spill Temporary
198 : LDA 4, 4(5) ; Restore Callee frame base
199 : LD   1, 5(5) ;  Restore Temporary
200 : ST 1, 2(4) ;  Store argument 1 into callee frame
201 : LD   1, 4(5) ;  Restore Temporary
202 : ST 1, 1(4) ;  Store argument 0 into callee frame
203 : LDA 4, 4(5) ; Restore Call frame base
204 : LDA 6, 208(0) ;  Compute return address
205 : ST 6, 0(4) ;  Store return address in callee frame
206 : ADD 5, 4, 0 ;  Update pointer
207 : LDA 7, 170(0) ;  Call log10Helper
208 : LD 1, 3(5) ;  Load callee return value into R1
209 : LDC 4, 4(0) ;  Load frame size
210 : SUB 5, 5, 4 ;  Restore pointer
211 : ST   1, 3(5) ;  Store function result into stack frame
212 : LD   6, 0(5) ;  Load return address
213 : LDA  7, 0(6) ;  Return to caller
214 : LD   1, 1(5) ;  Load parameter 'x' into R1
215 : ST   1, 3(5) ;  Spill Temporary
216 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
217 : ST   1, 4(5) ;  Spill Temporary
218 : LDA 4, 4(5) ; Restore Callee frame base
219 : LD   1, 4(5) ;  Restore Temporary
220 : ST 1, 2(4) ;  Store argument 1 into callee frame
221 : LD   1, 3(5) ;  Restore Temporary
222 : ST 1, 1(4) ;  Store argument 0 into callee frame
223 : LDA 4, 4(5) ; Restore Call frame base
224 : LDA 6, 228(0) ;  Compute return address
225 : ST 6, 0(4) ;  Store return address in callee frame
226 : ADD 5, 4, 0 ;  Update pointer
227 : LDA 7, 170(0) ;  Call log10Helper
228 : LD 1, 3(5) ;  Load callee return value into R1
229 : LDC 4, 4(0) ;  Load frame size
230 : SUB 5, 5, 4 ;  Restore pointer
231 : ST   1, 2(5) ;  Store function result into stack frame
232 : LD   6, 0(5) ;  Load return address
233 : LDA  7, 0(6) ;  Return to caller
234 : LD   1, 2(5) ;  Load parameter 'power' into R1
235 : ADD  3, 1, 0 ;  Save left operand
236 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
237 : ADD  2, 3, 0 ;  restore left operand
238 : SUB  1, 2, 1 ;  left - right for equality check
239 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
240 : LDC  1, 0(0) ;  false
241 : LDA  7, 1(7) ;  skip setting true
242 : LDC  1, 1(0) ;  true
243 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
244 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
245 : LDA  7, 287(0) ;  Skip ELSE block
246 : LD   1, 2(5) ;  Load parameter 'power' into R1
247 : ADD  3, 1, 0 ;  Save left operand
248 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
249 : ADD  2, 3, 0 ;  restore left operand
250 : SUB  1, 2, 1 ;  left - right for equality check
251 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
252 : LDC  1, 0(0) ;  false
253 : LDA  7, 1(7) ;  skip setting true
254 : LDC  1, 1(0) ;  true
255 : JEQ  1, 258(0) ;  If condition is false, jump to ELSE
256 : LD   1, 3(5) ;  Load parameter 'total' into R1
257 : LDA  7, 287(0) ;  Skip ELSE block
258 : LD   1, 1(5) ;  Load parameter 'base' into R1
259 : ST   1, 5(5) ;  Spill Temporary
260 : LD   1, 2(5) ;  Load parameter 'power' into R1
261 : ADD  3, 1, 0 ;  Save left operand
262 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
263 : ADD  2, 3, 0 ;  restore left operand
264 : SUB  1, 2, 1 ;  R1 = left - right
265 : ST   1, 6(5) ;  Spill Temporary
266 : LD   1, 1(5) ;  Load parameter 'base' into R1
267 : ADD  3, 1, 0 ;  Save left operand
268 : LD   1, 3(5) ;  Load parameter 'total' into R1
269 : ADD  2, 3, 0 ;  restore left operand
270 : MUL  1, 2, 1 ;  R1 = left * right
271 : ST   1, 7(5) ;  Spill Temporary
272 : LDA 4, 5(5) ; Restore Callee frame base
273 : LD   1, 7(5) ;  Restore Temporary
274 : ST 1, 3(4) ;  Store argument 2 into callee frame
275 : LD   1, 6(5) ;  Restore Temporary
276 : ST 1, 2(4) ;  Store argument 1 into callee frame
277 : LD   1, 5(5) ;  Restore Temporary
278 : ST 1, 1(4) ;  Store argument 0 into callee frame
279 : LDA 4, 5(5) ; Restore Call frame base
280 : LDA 6, 284(0) ;  Compute return address
281 : ST 6, 0(4) ;  Store return address in callee frame
282 : ADD 5, 4, 0 ;  Update pointer
283 : LDA 7, 234(0) ;  Call powHelper
284 : LD 1, 4(5) ;  Load callee return value into R1
285 : LDC 4, 5(0) ;  Load frame size
286 : SUB 5, 5, 4 ;  Restore pointer
287 : ST   1, 4(5) ;  Store function result into stack frame
288 : LD   6, 0(5) ;  Load return address
289 : LDA  7, 0(6) ;  Return to caller
290 : LD   1, 1(5) ;  Load parameter 'x' into R1
291 : ST   1, 4(5) ;  Spill Temporary
292 : LD   1, 2(5) ;  Load parameter 'y' into R1
293 : ST   1, 5(5) ;  Spill Temporary
294 : LD   1, 1(5) ;  Load parameter 'x' into R1
295 : ST   1, 6(5) ;  Spill Temporary
296 : LDA 4, 5(5) ; Restore Callee frame base
297 : LD   1, 6(5) ;  Restore Temporary
298 : ST 1, 3(4) ;  Store argument 2 into callee frame
299 : LD   1, 5(5) ;  Restore Temporary
300 : ST 1, 2(4) ;  Store argument 1 into callee frame
301 : LD   1, 4(5) ;  Restore Temporary
302 : ST 1, 1(4) ;  Store argument 0 into callee frame
303 : LDA 4, 5(5) ; Restore Call frame base
304 : LDA 6, 308(0) ;  Compute return address
305 : ST 6, 0(4) ;  Store return address in callee frame
306 : ADD 5, 4, 0 ;  Update pointer
307 : LDA 7, 234(0) ;  Call powHelper
308 : LD 1, 4(5) ;  Load callee return value into R1
309 : LDC 4, 5(0) ;  Load frame size
310 : SUB 5, 5, 4 ;  Restore pointer
311 : ST   1, 3(5) ;  Store function result into stack frame
312 : LD   6, 0(5) ;  Load return address
313 : LDA  7, 0(6) ;  Return to caller
314 : LD   1, 1(5) ;  Load parameter 'x' into R1
315 : ADD  3, 1, 0 ;  Save left operand
316 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
317 : ADD  2, 3, 0 ;  restore left operand
318 : DIV  1, 2, 1 ;  R1 = left / right
319 : ST   1, 3(5) ;  Spill Temporary
320 : LD   1, 1(5) ;  Load parameter 'x' into R1
321 : ST   1, 4(5) ;  Spill Temporary
322 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
323 : ST   1, 5(5) ;  Spill Temporary
324 : LDA 4, 4(5) ; Restore Callee frame base
325 : LD   1, 5(5) ;  Restore Temporary
326 : ST 1, 2(4) ;  Store argument 1 into callee frame
327 : LD   1, 4(5) ;  Restore Temporary
328 : ST 1, 1(4) ;  Store argument 0 into callee frame
329 : LDA 4, 4(5) ; Restore Call frame base
330 : LDA 6, 334(0) ;  Compute return address
331 : ST 6, 0(4) ;  Store return address in callee frame
332 : ADD 5, 4, 0 ;  Update pointer
333 : LDA 7, 28(0) ;  Call mod
334 : LD 1, 3(5) ;  Load callee return value into R1
335 : LDC 4, 4(0) ;  Load frame size
336 : SUB 5, 5, 4 ;  Restore pointer
337 : ST   1, 4(5) ;  Spill Temporary
338 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
339 : ST   1, 5(5) ;  Spill Temporary
340 : LD   1, 1(5) ;  Load parameter 'x' into R1
341 : ST   1, 6(5) ;  Spill Temporary
342 : LDA 4, 3(5) ; Restore Callee frame base
343 : LD   1, 6(5) ;  Restore Temporary
344 : ST 1, 1(4) ;  Store argument 0 into callee frame
345 : LDA 4, 3(5) ; Restore Call frame base
346 : LDA 6, 350(0) ;  Compute return address
347 : ST 6, 0(4) ;  Store return address in callee frame
348 : ADD 5, 4, 0 ;  Update pointer
349 : LDA 7, 214(0) ;  Call log10
350 : LD 1, 2(5) ;  Load callee return value into R1
351 : LDC 4, 3(0) ;  Load frame size
352 : SUB 5, 5, 4 ;  Restore pointer
353 : ST   1, 6(5) ;  Spill Temporary
354 : LDA 4, 4(5) ; Restore Callee frame base
355 : LD   1, 6(5) ;  Restore Temporary
356 : ST 1, 2(4) ;  Store argument 1 into callee frame
357 : LD   1, 5(5) ;  Restore Temporary
358 : ST 1, 1(4) ;  Store argument 0 into callee frame
359 : LDA 4, 4(5) ; Restore Call frame base
360 : LDA 6, 364(0) ;  Compute return address
361 : ST 6, 0(4) ;  Store return address in callee frame
362 : ADD 5, 4, 0 ;  Update pointer
363 : LDA 7, 290(0) ;  Call pow
364 : LD 1, 3(5) ;  Load callee return value into R1
365 : LDC 4, 4(0) ;  Load frame size
366 : SUB 5, 5, 4 ;  Restore pointer
367 : LD   2, 4(5) ;  Restore Temporary
368 : MUL  1, 2, 1 ;  R1 = left * right
369 : LD   2, 3(5) ;  Restore Temporary
370 : ADD  1, 2, 1 ;  R1 = left + right
371 : ST   1, 2(5) ;  Store function result into stack frame
372 : LD   6, 0(5) ;  Load return address
373 : LDA  7, 0(6) ;  Return to caller
374 : LD   1, 1(5) ;  Load parameter 'x' into R1
375 : LDA  4, 3(5) ;  Update DMEM pointer
376 : LDA 6, 380(0) ;  Compute return address
377 : ST   6, 0(4) ;  Store return address
378 : ADD  5, 4, 0 ;  Updated Pointer
379 : LDA  7, 8(0) ; Call print
380 : LDC  4, 3(0) ;  Load frame size
381 : SUB  5, 5, 4 ;  Restore pointer
382 : ST   1, 2(5) ;  Store function result into stack frame
383 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
384 : ST   1, 2(5) ;  Store function result into stack frame
385 : LD   6, 0(5) ;  Load return address
386 : LDA  7, 0(6) ;  Return to caller
387 : LD   1, 2(5) ;  Load parameter 'turns' into R1
388 : ADD  3, 1, 0 ;  Save left operand
389 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
390 : ADD  2, 3, 0 ;  restore left operand
391 : SUB  1, 2, 1 ;  left - right for equality check
392 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
393 : LDC  1, 0(0) ;  false
394 : LDA  7, 1(7) ;  skip setting true
395 : LDC  1, 1(0) ;  true
396 : JEQ  1, 399(0) ;  If condition is false, jump to ELSE
397 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
398 : LDA  7, 448(0) ;  Skip ELSE block
399 : LD   1, 1(5) ;  Load parameter 'x' into R1
400 : ST   1, 4(5) ;  Spill Temporary
401 : LDA 4, 3(5) ; Restore Callee frame base
402 : LD   1, 4(5) ;  Restore Temporary
403 : ST 1, 1(4) ;  Store argument 0 into callee frame
404 : LDA 4, 3(5) ; Restore Call frame base
405 : LDA 6, 409(0) ;  Compute return address
406 : ST 6, 0(4) ;  Store return address in callee frame
407 : ADD 5, 4, 0 ;  Update pointer
408 : LDA 7, 148(0) ;  Call isPrime
409 : LD 1, 2(5) ;  Load callee return value into R1
410 : LDC 4, 3(0) ;  Load frame size
411 : SUB 5, 5, 4 ;  Restore pointer
412 : ST   1, 4(5) ;  Spill Temporary
413 : LD   1, 1(5) ;  Load parameter 'x' into R1
414 : ST   1, 5(5) ;  Spill Temporary
415 : LDA 4, 3(5) ; Restore Callee frame base
416 : LD   1, 5(5) ;  Restore Temporary
417 : ST 1, 1(4) ;  Store argument 0 into callee frame
418 : LDA 4, 3(5) ; Restore Call frame base
419 : LDA 6, 423(0) ;  Compute return address
420 : ST 6, 0(4) ;  Store return address in callee frame
421 : ADD 5, 4, 0 ;  Update pointer
422 : LDA 7, 314(0) ;  Call rotate
423 : LD 1, 2(5) ;  Load callee return value into R1
424 : LDC 4, 3(0) ;  Load frame size
425 : SUB 5, 5, 4 ;  Restore pointer
426 : ST   1, 5(5) ;  Spill Temporary
427 : LD   1, 2(5) ;  Load parameter 'turns' into R1
428 : ADD  3, 1, 0 ;  Save left operand
429 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
430 : ADD  2, 3, 0 ;  restore left operand
431 : SUB  1, 2, 1 ;  R1 = left - right
432 : ST   1, 6(5) ;  Spill Temporary
433 : LDA 4, 4(5) ; Restore Callee frame base
434 : LD   1, 6(5) ;  Restore Temporary
435 : ST 1, 2(4) ;  Store argument 1 into callee frame
436 : LD   1, 5(5) ;  Restore Temporary
437 : ST 1, 1(4) ;  Store argument 0 into callee frame
438 : LDA 4, 4(5) ; Restore Call frame base
439 : LDA 6, 443(0) ;  Compute return address
440 : ST 6, 0(4) ;  Store return address in callee frame
441 : ADD 5, 4, 0 ;  Update pointer
442 : LDA 7, 387(0) ;  Call isCircularPrimeHelper
443 : LD 1, 3(5) ;  Load callee return value into R1
444 : LDC 4, 4(0) ;  Load frame size
445 : SUB 5, 5, 4 ;  Restore pointer
446 : LD   2, 4(5) ;  Restore Temporary
447 : MUL  1, 2, 1 ;  R1 = left AND right
448 : ST   1, 3(5) ;  Store function result into stack frame
449 : LD   6, 0(5) ;  Load return address
450 : LDA  7, 0(6) ;  Return to caller
451 : LD   1, 1(5) ;  Load parameter 'x' into R1
452 : ST   1, 3(5) ;  Spill Temporary
453 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
454 : ADD  3, 1, 0 ;  Save right operand
455 : LD   1, 1(5) ;  Load parameter 'x' into R1
456 : ST   1, 4(5) ;  Spill Temporary
457 : LDA 4, 3(5) ; Restore Callee frame base
458 : LD   1, 4(5) ;  Restore Temporary
459 : ST 1, 1(4) ;  Store argument 0 into callee frame
460 : LDA 4, 3(5) ; Restore Call frame base
461 : LDA 6, 465(0) ;  Compute return address
462 : ST 6, 0(4) ;  Store return address in callee frame
463 : ADD 5, 4, 0 ;  Update pointer
464 : LDA 7, 214(0) ;  Call log10
465 : LD 1, 2(5) ;  Load callee return value into R1
466 : LDC 4, 3(0) ;  Load frame size
467 : SUB 5, 5, 4 ;  Restore pointer
468 : ADD  2, 3, 0 ;  Restore right operand
469 : ADD  1, 2, 1 ;  R1 = left + right
470 : ST   1, 4(5) ;  Spill Temporary
471 : LDA 4, 4(5) ; Restore Callee frame base
472 : LD   1, 4(5) ;  Restore Temporary
473 : ST 1, 2(4) ;  Store argument 1 into callee frame
474 : LD   1, 3(5) ;  Restore Temporary
475 : ST 1, 1(4) ;  Store argument 0 into callee frame
476 : LDA 4, 4(5) ; Restore Call frame base
477 : LDA 6, 481(0) ;  Compute return address
478 : ST 6, 0(4) ;  Store return address in callee frame
479 : ADD 5, 4, 0 ;  Update pointer
480 : LDA 7, 387(0) ;  Call isCircularPrimeHelper
481 : LD 1, 3(5) ;  Load callee return value into R1
482 : LDC 4, 4(0) ;  Load frame size
483 : SUB 5, 5, 4 ;  Restore pointer
484 : JEQ  1, 499(0) ;  If condition is false, jump to ELSE
485 : LD   1, 1(5) ;  Load parameter 'x' into R1
486 : ST   1, 3(5) ;  Spill Temporary
487 : LDA 4, 3(5) ; Restore Callee frame base
488 : LD   1, 3(5) ;  Restore Temporary
489 : ST 1, 1(4) ;  Store argument 0 into callee frame
490 : LDA 4, 3(5) ; Restore Call frame base
491 : LDA 6, 495(0) ;  Compute return address
492 : ST 6, 0(4) ;  Store return address in callee frame
493 : ADD 5, 4, 0 ;  Update pointer
494 : LDA 7, 374(0) ;  Call report
495 : LD 1, 2(5) ;  Load callee return value into R1
496 : LDC 4, 3(0) ;  Load frame size
497 : SUB 5, 5, 4 ;  Restore pointer
498 : LDA  7, 500(0) ;  Skip ELSE block
499 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
500 : ST   1, 2(5) ;  Store function result into stack frame
501 : LD   6, 0(5) ;  Load return address
502 : LDA  7, 0(6) ;  Return to caller
503 : LD   1, 2(5) ;  Load parameter 'x' into R1
504 : ADD  3, 1, 0 ;  Save left operand
505 : LD   1, 1(5) ;  Load parameter 'top' into R1
506 : ADD  2, 3, 0 ;  restore left operand
507 : SUB  1, 2, 1 ;  left - right for less-than check
508 : JLT  1, 2(7) ;  If R1 < 0, jump to true
509 : LDC  1, 0(0) ;  false
510 : LDA  7, 1(7) ;  skip setting true
511 : LDC  1, 1(0) ;  true
512 : JEQ  1, 583(0) ;  If condition is false, jump to ELSE
513 : LD   1, 2(5) ;  Load parameter 'x' into R1
514 : ST   1, 5(5) ;  Spill Temporary
515 : LDA 4, 3(5) ; Restore Callee frame base
516 : LD   1, 5(5) ;  Restore Temporary
517 : ST 1, 1(4) ;  Store argument 0 into callee frame
518 : LDA 4, 3(5) ; Restore Call frame base
519 : LDA 6, 523(0) ;  Compute return address
520 : ST 6, 0(4) ;  Store return address in callee frame
521 : ADD 5, 4, 0 ;  Update pointer
522 : LDA 7, 451(0) ;  Call isCircularPrime
523 : LD 1, 2(5) ;  Load callee return value into R1
524 : LDC 4, 3(0) ;  Load frame size
525 : SUB 5, 5, 4 ;  Restore pointer
526 : JEQ  1, 557(0) ;  If condition is false, jump to ELSE
527 : LD   1, 1(5) ;  Load parameter 'top' into R1
528 : ST   1, 5(5) ;  Spill Temporary
529 : LD   1, 2(5) ;  Load parameter 'x' into R1
530 : ADD  3, 1, 0 ;  Save left operand
531 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
532 : ADD  2, 3, 0 ;  restore left operand
533 : ADD  1, 2, 1 ;  R1 = left + right
534 : ST   1, 6(5) ;  Spill Temporary
535 : LD   1, 3(5) ;  Load parameter 'count' into R1
536 : ADD  3, 1, 0 ;  Save left operand
537 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
538 : ADD  2, 3, 0 ;  restore left operand
539 : ADD  1, 2, 1 ;  R1 = left + right
540 : ST   1, 7(5) ;  Spill Temporary
541 : LDA 4, 5(5) ; Restore Callee frame base
542 : LD   1, 7(5) ;  Restore Temporary
543 : ST 1, 3(4) ;  Store argument 2 into callee frame
544 : LD   1, 6(5) ;  Restore Temporary
545 : ST 1, 2(4) ;  Store argument 1 into callee frame
546 : LD   1, 5(5) ;  Restore Temporary
547 : ST 1, 1(4) ;  Store argument 0 into callee frame
548 : LDA 4, 5(5) ; Restore Call frame base
549 : LDA 6, 553(0) ;  Compute return address
550 : ST 6, 0(4) ;  Store return address in callee frame
551 : ADD 5, 4, 0 ;  Update pointer
552 : LDA 7, 503(0) ;  Call circularPrimesToHelper
553 : LD 1, 4(5) ;  Load callee return value into R1
554 : LDC 4, 5(0) ;  Load frame size
555 : SUB 5, 5, 4 ;  Restore pointer
556 : LDA  7, 582(0) ;  Skip ELSE block
557 : LD   1, 1(5) ;  Load parameter 'top' into R1
558 : ST   1, 5(5) ;  Spill Temporary
559 : LD   1, 2(5) ;  Load parameter 'x' into R1
560 : ADD  3, 1, 0 ;  Save left operand
561 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
562 : ADD  2, 3, 0 ;  restore left operand
563 : ADD  1, 2, 1 ;  R1 = left + right
564 : ST   1, 6(5) ;  Spill Temporary
565 : LD   1, 3(5) ;  Load parameter 'count' into R1
566 : ST   1, 7(5) ;  Spill Temporary
567 : LDA 4, 5(5) ; Restore Callee frame base
568 : LD   1, 7(5) ;  Restore Temporary
569 : ST 1, 3(4) ;  Store argument 2 into callee frame
570 : LD   1, 6(5) ;  Restore Temporary
571 : ST 1, 2(4) ;  Store argument 1 into callee frame
572 : LD   1, 5(5) ;  Restore Temporary
573 : ST 1, 1(4) ;  Store argument 0 into callee frame
574 : LDA 4, 5(5) ; Restore Call frame base
575 : LDA 6, 579(0) ;  Compute return address
576 : ST 6, 0(4) ;  Store return address in callee frame
577 : ADD 5, 4, 0 ;  Update pointer
578 : LDA 7, 503(0) ;  Call circularPrimesToHelper
579 : LD 1, 4(5) ;  Load callee return value into R1
580 : LDC 4, 5(0) ;  Load frame size
581 : SUB 5, 5, 4 ;  Restore pointer
582 : LDA  7, 584(0) ;  Skip ELSE block
583 : LD   1, 3(5) ;  Load parameter 'count' into R1
584 : ST   1, 4(5) ;  Store function result into stack frame
585 : LD   6, 0(5) ;  Load return address
586 : LDA  7, 0(6) ;  Return to caller
587 : LD   1, 1(5) ;  Load parameter 'x' into R1
588 : ADD  3, 1, 0 ;  Save left operand
589 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
590 : ADD  2, 3, 0 ;  restore left operand
591 : ADD  1, 2, 1 ;  R1 = left + right
592 : ST   1, 3(5) ;  Spill Temporary
593 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
594 : ST   1, 4(5) ;  Spill Temporary
595 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
596 : ST   1, 5(5) ;  Spill Temporary
597 : LDA 4, 5(5) ; Restore Callee frame base
598 : LD   1, 5(5) ;  Restore Temporary
599 : ST 1, 3(4) ;  Store argument 2 into callee frame
600 : LD   1, 4(5) ;  Restore Temporary
601 : ST 1, 2(4) ;  Store argument 1 into callee frame
602 : LD   1, 3(5) ;  Restore Temporary
603 : ST 1, 1(4) ;  Store argument 0 into callee frame
604 : LDA 4, 5(5) ; Restore Call frame base
605 : LDA 6, 609(0) ;  Compute return address
606 : ST 6, 0(4) ;  Store return address in callee frame
607 : ADD 5, 4, 0 ;  Update pointer
608 : LDA 7, 503(0) ;  Call circularPrimesToHelper
609 : LD 1, 4(5) ;  Load callee return value into R1
610 : LDC 4, 5(0) ;  Load frame size
611 : SUB 5, 5, 4 ;  Restore pointer
612 : ST   1, 2(5) ;  Store function result into stack frame
613 : LD   6, 0(5) ;  Load return address
614 : LDA  7, 0(6) ;  Return to caller
