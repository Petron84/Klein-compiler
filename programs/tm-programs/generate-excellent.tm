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
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : ST   1, 3(5) ;  Spill Temporary
13 : LD   1, 1(5) ;  Load parameter 'length' into R1
14 : ADD  3, 1, 0 ;  Save left operand
15 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  restore left operand
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : ADD  3, 1, 0 ;  Save left operand
19 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
20 : ADD  2, 3, 0 ;  restore left operand
21 : SUB  1, 2, 1 ;  R1 = left - right
22 : ST   1, 4(5) ;  Spill Temporary
23 : LDA 4, 4(5) ; Restore Callee frame base
24 : LD   1, 4(5) ;  Restore Temporary
25 : ST 1, 2(4) ;  Store argument 1 into callee frame
26 : LD   1, 3(5) ;  Restore Temporary
27 : ST 1, 1(4) ;  Store argument 0 into callee frame
28 : LDA 4, 4(5) ; Restore Call frame base
29 : LDA 6, 33(0) ;  Compute return address
30 : ST 6, 0(4) ;  Store return address in callee frame
31 : ADD 5, 4, 0 ;  Update pointer
32 : LDA 7, 974(0) ;  Call EXP
33 : LD 1, 3(5) ;  Load callee return value into R1
34 : LDC 4, 4(0) ;  Load frame size
35 : SUB 5, 5, 4 ;  Restore pointer
36 : ST   1, 3(5) ;  Spill Temporary
37 : LD   1, 1(5) ;  Load parameter 'length' into R1
38 : ADD  3, 1, 0 ;  Save left operand
39 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
40 : ADD  2, 3, 0 ;  restore left operand
41 : DIV  1, 2, 1 ;  R1 = left / right
42 : ST   1, 4(5) ;  Spill Temporary
43 : LDA 4, 4(5) ; Restore Callee frame base
44 : LD   1, 4(5) ;  Restore Temporary
45 : ST 1, 2(4) ;  Store argument 1 into callee frame
46 : LD   1, 3(5) ;  Restore Temporary
47 : ST 1, 1(4) ;  Store argument 0 into callee frame
48 : LDA 4, 4(5) ; Restore Call frame base
49 : LDA 6, 53(0) ;  Compute return address
50 : ST 6, 0(4) ;  Store return address in callee frame
51 : ADD 5, 4, 0 ;  Update pointer
52 : LDA 7, 60(0) ;  Call createLoop
53 : LD 1, 3(5) ;  Load callee return value into R1
54 : LDC 4, 4(0) ;  Load frame size
55 : SUB 5, 5, 4 ;  Restore pointer
56 : ST 1, 2(5) ;  Store result into current frame's return slot
57 : LD   1, 2(5) ;  Load return value into register 1
58 : LD  6, 0(5) ;  Load return address for main function into register 6
59 : LDA  7, 0(6) ;  Jump to return address of main function
60 : LD   1, 1(5) ;  Load parameter 'a' into R1
61 : ST   1, 4(5) ;  Spill Temporary
62 : LD   1, 2(5) ;  Load parameter 'n' into R1
63 : ST   1, 5(5) ;  Spill Temporary
64 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
65 : ADD  3, 1, 0 ;  Save left operand
66 : LD   1, 1(5) ;  Load parameter 'a' into R1
67 : ADD  2, 3, 0 ;  restore left operand
68 : MUL  1, 2, 1 ;  R1 = left * right
69 : ST   1, 6(5) ;  Spill Temporary
70 : LDA 4, 5(5) ; Restore Callee frame base
71 : LD   1, 6(5) ;  Restore Temporary
72 : ST 1, 3(4) ;  Store argument 2 into callee frame
73 : LD   1, 5(5) ;  Restore Temporary
74 : ST 1, 2(4) ;  Store argument 1 into callee frame
75 : LD   1, 4(5) ;  Restore Temporary
76 : ST 1, 1(4) ;  Store argument 0 into callee frame
77 : LDA 4, 5(5) ; Restore Call frame base
78 : LDA 6, 82(0) ;  Compute return address
79 : ST 6, 0(4) ;  Store return address in callee frame
80 : ADD 5, 4, 0 ;  Update pointer
81 : LDA 7, 88(0) ;  Call aLoop
82 : LD 1, 4(5) ;  Load callee return value into R1
83 : LDC 4, 5(0) ;  Load frame size
84 : SUB 5, 5, 4 ;  Restore pointer
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : ADD  3, 1, 0 ;  Save left operand
90 : LD   1, 3(5) ;  Load parameter 'upper' into R1
91 : ADD  2, 3, 0 ;  restore left operand
92 : SUB  1, 2, 1 ;  left - right for less-than check
93 : JLT  1, 2(7) ;  If R1 < 0, jump to true
94 : LDC  1, 0(0) ;  false
95 : LDA  7, 1(7) ;  skip setting true
96 : LDC  1, 1(0) ;  true
97 : JEQ  1, 176(0) ;  If condition is false, jump to ELSE
98 : LD   1, 1(5) ;  Load parameter 'a' into R1
99 : ST   1, 5(5) ;  Spill Temporary
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : ST   1, 6(5) ;  Spill Temporary
102 : LD   1, 3(5) ;  Load parameter 'upper' into R1
103 : ST   1, 7(5) ;  Spill Temporary
104 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
105 : ADD  3, 1, 0 ;  Save right operand
106 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
107 : ST   1, 8(5) ;  Spill Temporary
108 : LD   1, 1(5) ;  Load parameter 'a' into R1
109 : ST   1, 9(5) ;  Spill Temporary
110 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
111 : ST   1, 10(5) ;  Spill Temporary
112 : LDA 4, 4(5) ; Restore Callee frame base
113 : LD   1, 10(5) ;  Restore Temporary
114 : ST 1, 2(4) ;  Store argument 1 into callee frame
115 : LD   1, 9(5) ;  Restore Temporary
116 : ST 1, 1(4) ;  Store argument 0 into callee frame
117 : LDA 4, 4(5) ; Restore Call frame base
118 : LDA 6, 122(0) ;  Compute return address
119 : ST 6, 0(4) ;  Store return address in callee frame
120 : ADD 5, 4, 0 ;  Update pointer
121 : LDA 7, 974(0) ;  Call EXP
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDC 4, 4(0) ;  Load frame size
124 : SUB 5, 5, 4 ;  Restore pointer
125 : LD   2, 8(5) ;  Restore Temporary
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ST   1, 8(5) ;  Spill Temporary
128 : LD   1, 1(5) ;  Load parameter 'a' into R1
129 : ADD  3, 1, 0 ;  Save right operand
130 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
131 : ST   1, 9(5) ;  Spill Temporary
132 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
133 : ST   1, 10(5) ;  Spill Temporary
134 : LD   1, 2(5) ;  Load parameter 'n' into R1
135 : ST   1, 11(5) ;  Spill Temporary
136 : LDA 4, 4(5) ; Restore Callee frame base
137 : LD   1, 11(5) ;  Restore Temporary
138 : ST 1, 2(4) ;  Store argument 1 into callee frame
139 : LD   1, 10(5) ;  Restore Temporary
140 : ST 1, 1(4) ;  Store argument 0 into callee frame
141 : LDA 4, 4(5) ; Restore Call frame base
142 : LDA 6, 146(0) ;  Compute return address
143 : ST 6, 0(4) ;  Store return address in callee frame
144 : ADD 5, 4, 0 ;  Update pointer
145 : LDA 7, 974(0) ;  Call EXP
146 : LD 1, 3(5) ;  Load callee return value into R1
147 : LDC 4, 4(0) ;  Load frame size
148 : SUB 5, 5, 4 ;  Restore pointer
149 : LD   2, 9(5) ;  Restore Temporary
150 : MUL  1, 2, 1 ;  R1 = left * right
151 : ADD  2, 3, 0 ;  Restore right operand
152 : MUL  1, 2, 1 ;  R1 = left * right
153 : LD   2, 8(5) ;  Restore Temporary
154 : ADD  1, 2, 1 ;  R1 = left + right
155 : ADD  2, 3, 0 ;  Restore right operand
156 : ADD  1, 2, 1 ;  R1 = left + right
157 : ST   1, 8(5) ;  Spill Temporary
158 : LDA 4, 6(5) ; Restore Callee frame base
159 : LD   1, 8(5) ;  Restore Temporary
160 : ST 1, 4(4) ;  Store argument 3 into callee frame
161 : LD   1, 7(5) ;  Restore Temporary
162 : ST 1, 3(4) ;  Store argument 2 into callee frame
163 : LD   1, 6(5) ;  Restore Temporary
164 : ST 1, 2(4) ;  Store argument 1 into callee frame
165 : LD   1, 5(5) ;  Restore Temporary
166 : ST 1, 1(4) ;  Store argument 0 into callee frame
167 : LDA 4, 6(5) ; Restore Call frame base
168 : LDA 6, 172(0) ;  Compute return address
169 : ST 6, 0(4) ;  Store return address in callee frame
170 : ADD 5, 4, 0 ;  Update pointer
171 : LDA 7, 180(0) ;  Call aLoop1
172 : LD 1, 5(5) ;  Load callee return value into R1
173 : LDC 4, 6(0) ;  Load frame size
174 : SUB 5, 5, 4 ;  Restore pointer
175 : LDA  7, 177(0) ;  Skip ELSE block
176 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
177 : ST   1, 4(5) ;  Store function result into stack frame
178 : LD   6, 0(5) ;  Load return address
179 : LDA  7, 0(6) ;  Return to caller
180 : LD   1, 1(5) ;  Load parameter 'a' into R1
181 : ST   1, 6(5) ;  Spill Temporary
182 : LD   1, 2(5) ;  Load parameter 'n' into R1
183 : ST   1, 7(5) ;  Spill Temporary
184 : LD   1, 3(5) ;  Load parameter 'upper' into R1
185 : ST   1, 8(5) ;  Spill Temporary
186 : LD   1, 4(5) ;  Load parameter 'det' into R1
187 : ST   1, 9(5) ;  Spill Temporary
188 : LD   1, 4(5) ;  Load parameter 'det' into R1
189 : ST   1, 10(5) ;  Spill Temporary
190 : LDA 4, 3(5) ; Restore Callee frame base
191 : LD   1, 10(5) ;  Restore Temporary
192 : ST 1, 1(4) ;  Store argument 0 into callee frame
193 : LDA 4, 3(5) ; Restore Call frame base
194 : LDA 6, 198(0) ;  Compute return address
195 : ST 6, 0(4) ;  Store return address in callee frame
196 : ADD 5, 4, 0 ;  Update pointer
197 : LDA 7, 881(0) ;  Call SQRT
198 : LD 1, 2(5) ;  Load callee return value into R1
199 : LDC 4, 3(0) ;  Load frame size
200 : SUB 5, 5, 4 ;  Restore pointer
201 : ST   1, 10(5) ;  Spill Temporary
202 : LDA 4, 7(5) ; Restore Callee frame base
203 : LD   1, 10(5) ;  Restore Temporary
204 : ST 1, 5(4) ;  Store argument 4 into callee frame
205 : LD   1, 9(5) ;  Restore Temporary
206 : ST 1, 4(4) ;  Store argument 3 into callee frame
207 : LD   1, 8(5) ;  Restore Temporary
208 : ST 1, 3(4) ;  Store argument 2 into callee frame
209 : LD   1, 7(5) ;  Restore Temporary
210 : ST 1, 2(4) ;  Store argument 1 into callee frame
211 : LD   1, 6(5) ;  Restore Temporary
212 : ST 1, 1(4) ;  Store argument 0 into callee frame
213 : LDA 4, 7(5) ; Restore Call frame base
214 : LDA 6, 218(0) ;  Compute return address
215 : ST 6, 0(4) ;  Store return address in callee frame
216 : ADD 5, 4, 0 ;  Update pointer
217 : LDA 7, 224(0) ;  Call aLoop2
218 : LD 1, 6(5) ;  Load callee return value into R1
219 : LDC 4, 7(0) ;  Load frame size
220 : SUB 5, 5, 4 ;  Restore pointer
221 : ST   1, 5(5) ;  Store function result into stack frame
222 : LD   6, 0(5) ;  Load return address
223 : LDA  7, 0(6) ;  Return to caller
224 : LD   1, 1(5) ;  Load parameter 'a' into R1
225 : ST   1, 7(5) ;  Spill Temporary
226 : LD   1, 2(5) ;  Load parameter 'n' into R1
227 : ST   1, 8(5) ;  Spill Temporary
228 : LD   1, 3(5) ;  Load parameter 'upper' into R1
229 : ST   1, 9(5) ;  Spill Temporary
230 : LD   1, 4(5) ;  Load parameter 'det' into R1
231 : ST   1, 10(5) ;  Spill Temporary
232 : LD   1, 5(5) ;  Load parameter 'root' into R1
233 : ST   1, 11(5) ;  Spill Temporary
234 : LD   1, 5(5) ;  Load parameter 'root' into R1
235 : ADD  3, 1, 0 ;  Save left operand
236 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
237 : ADD  2, 3, 0 ;  restore left operand
238 : ADD  1, 2, 1 ;  R1 = left + right
239 : ADD  3, 1, 0 ;  Save left operand
240 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 3, 0 ;  restore left operand
242 : DIV  1, 2, 1 ;  R1 = left / right
243 : ADD  3, 1, 0 ;  Save right operand
244 : LD   1, 1(5) ;  Load parameter 'a' into R1
245 : ST   1, 12(5) ;  Spill Temporary
246 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
247 : ST   1, 13(5) ;  Spill Temporary
248 : LD   1, 2(5) ;  Load parameter 'n' into R1
249 : ST   1, 14(5) ;  Spill Temporary
250 : LDA 4, 4(5) ; Restore Callee frame base
251 : LD   1, 14(5) ;  Restore Temporary
252 : ST 1, 2(4) ;  Store argument 1 into callee frame
253 : LD   1, 13(5) ;  Restore Temporary
254 : ST 1, 1(4) ;  Store argument 0 into callee frame
255 : LDA 4, 4(5) ; Restore Call frame base
256 : LDA 6, 260(0) ;  Compute return address
257 : ST 6, 0(4) ;  Store return address in callee frame
258 : ADD 5, 4, 0 ;  Update pointer
259 : LDA 7, 974(0) ;  Call EXP
260 : LD 1, 3(5) ;  Load callee return value into R1
261 : LDC 4, 4(0) ;  Load frame size
262 : SUB 5, 5, 4 ;  Restore pointer
263 : LD   2, 12(5) ;  Restore Temporary
264 : MUL  1, 2, 1 ;  R1 = left * right
265 : ADD  2, 3, 0 ;  Restore right operand
266 : ADD  1, 2, 1 ;  R1 = left + right
267 : ST   1, 12(5) ;  Spill Temporary
268 : LDA 4, 8(5) ; Restore Callee frame base
269 : LD   1, 12(5) ;  Restore Temporary
270 : ST 1, 6(4) ;  Store argument 5 into callee frame
271 : LD   1, 11(5) ;  Restore Temporary
272 : ST 1, 5(4) ;  Store argument 4 into callee frame
273 : LD   1, 10(5) ;  Restore Temporary
274 : ST 1, 4(4) ;  Store argument 3 into callee frame
275 : LD   1, 9(5) ;  Restore Temporary
276 : ST 1, 3(4) ;  Store argument 2 into callee frame
277 : LD   1, 8(5) ;  Restore Temporary
278 : ST 1, 2(4) ;  Store argument 1 into callee frame
279 : LD   1, 7(5) ;  Restore Temporary
280 : ST 1, 1(4) ;  Store argument 0 into callee frame
281 : LDA 4, 8(5) ; Restore Call frame base
282 : LDA 6, 286(0) ;  Compute return address
283 : ST 6, 0(4) ;  Store return address in callee frame
284 : ADD 5, 4, 0 ;  Update pointer
285 : LDA 7, 292(0) ;  Call aLoop3
286 : LD 1, 7(5) ;  Load callee return value into R1
287 : LDC 4, 8(0) ;  Load frame size
288 : SUB 5, 5, 4 ;  Restore pointer
289 : ST   1, 6(5) ;  Store function result into stack frame
290 : LD   6, 0(5) ;  Load return address
291 : LDA  7, 0(6) ;  Return to caller
292 : LD   1, 5(5) ;  Load parameter 'root' into R1
293 : ST   1, 8(5) ;  Spill Temporary
294 : LD   1, 4(5) ;  Load parameter 'det' into R1
295 : ST   1, 9(5) ;  Spill Temporary
296 : LDA 4, 4(5) ; Restore Callee frame base
297 : LD   1, 9(5) ;  Restore Temporary
298 : ST 1, 2(4) ;  Store argument 1 into callee frame
299 : LD   1, 8(5) ;  Restore Temporary
300 : ST 1, 1(4) ;  Store argument 0 into callee frame
301 : LDA 4, 4(5) ; Restore Call frame base
302 : LDA 6, 306(0) ;  Compute return address
303 : ST 6, 0(4) ;  Store return address in callee frame
304 : ADD 5, 4, 0 ;  Update pointer
305 : LDA 7, 681(0) ;  Call ISROOT
306 : LD 1, 3(5) ;  Load callee return value into R1
307 : LDC 4, 4(0) ;  Load frame size
308 : SUB 5, 5, 4 ;  Restore pointer
309 : ST   1, 8(5) ;  Spill Temporary
310 : LD   1, 5(5) ;  Load parameter 'root' into R1
311 : ADD  3, 1, 0 ;  Save left operand
312 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
313 : ADD  2, 3, 0 ;  restore left operand
314 : ADD  1, 2, 1 ;  R1 = left + right
315 : ST   1, 9(5) ;  Spill Temporary
316 : LDA 4, 3(5) ; Restore Callee frame base
317 : LD   1, 9(5) ;  Restore Temporary
318 : ST 1, 1(4) ;  Store argument 0 into callee frame
319 : LDA 4, 3(5) ; Restore Call frame base
320 : LDA 6, 324(0) ;  Compute return address
321 : ST 6, 0(4) ;  Store return address in callee frame
322 : ADD 5, 4, 0 ;  Update pointer
323 : LDA 7, 697(0) ;  Call EVEN
324 : LD 1, 2(5) ;  Load callee return value into R1
325 : LDC 4, 3(0) ;  Load frame size
326 : SUB 5, 5, 4 ;  Restore pointer
327 : LD   2, 8(5) ;  Restore Temporary
328 : MUL  1, 2, 1 ;  R1 = left AND right
329 : ST   1, 8(5) ;  Spill Temporary
330 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
331 : ST   1, 9(5) ;  Spill Temporary
332 : LDA 4, 3(5) ; Restore Callee frame base
333 : LD   1, 9(5) ;  Restore Temporary
334 : ST 1, 1(4) ;  Store argument 0 into callee frame
335 : LDA 4, 3(5) ; Restore Call frame base
336 : LDA 6, 340(0) ;  Compute return address
337 : ST 6, 0(4) ;  Store return address in callee frame
338 : ADD 5, 4, 0 ;  Update pointer
339 : LDA 7, 437(0) ;  Call isExcellent
340 : LD 1, 2(5) ;  Load callee return value into R1
341 : LDC 4, 3(0) ;  Load frame size
342 : SUB 5, 5, 4 ;  Restore pointer
343 : LD   2, 8(5) ;  Restore Temporary
344 : MUL  1, 2, 1 ;  R1 = left AND right
345 : JEQ  1, 372(0) ;  If condition is false, jump to ELSE
346 : LD   1, 1(5) ;  Load parameter 'a' into R1
347 : ST   1, 8(5) ;  Spill Temporary
348 : LD   1, 2(5) ;  Load parameter 'n' into R1
349 : ST   1, 9(5) ;  Spill Temporary
350 : LD   1, 3(5) ;  Load parameter 'upper' into R1
351 : ST   1, 10(5) ;  Spill Temporary
352 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
353 : ST   1, 11(5) ;  Spill Temporary
354 : LDA 4, 6(5) ; Restore Callee frame base
355 : LD   1, 11(5) ;  Restore Temporary
356 : ST 1, 4(4) ;  Store argument 3 into callee frame
357 : LD   1, 10(5) ;  Restore Temporary
358 : ST 1, 3(4) ;  Store argument 2 into callee frame
359 : LD   1, 9(5) ;  Restore Temporary
360 : ST 1, 2(4) ;  Store argument 1 into callee frame
361 : LD   1, 8(5) ;  Restore Temporary
362 : ST 1, 1(4) ;  Store argument 0 into callee frame
363 : LDA 4, 6(5) ; Restore Call frame base
364 : LDA 6, 368(0) ;  Compute return address
365 : ST 6, 0(4) ;  Store return address in callee frame
366 : ADD 5, 4, 0 ;  Update pointer
367 : LDA 7, 400(0) ;  Call printCandidateAndContinue
368 : LD 1, 5(5) ;  Load callee return value into R1
369 : LDC 4, 6(0) ;  Load frame size
370 : SUB 5, 5, 4 ;  Restore pointer
371 : LDA  7, 397(0) ;  Skip ELSE block
372 : LD   1, 1(5) ;  Load parameter 'a' into R1
373 : ADD  3, 1, 0 ;  Save left operand
374 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
375 : ADD  2, 3, 0 ;  restore left operand
376 : ADD  1, 2, 1 ;  R1 = left + right
377 : ST   1, 8(5) ;  Spill Temporary
378 : LD   1, 2(5) ;  Load parameter 'n' into R1
379 : ST   1, 9(5) ;  Spill Temporary
380 : LD   1, 3(5) ;  Load parameter 'upper' into R1
381 : ST   1, 10(5) ;  Spill Temporary
382 : LDA 4, 5(5) ; Restore Callee frame base
383 : LD   1, 10(5) ;  Restore Temporary
384 : ST 1, 3(4) ;  Store argument 2 into callee frame
385 : LD   1, 9(5) ;  Restore Temporary
386 : ST 1, 2(4) ;  Store argument 1 into callee frame
387 : LD   1, 8(5) ;  Restore Temporary
388 : ST 1, 1(4) ;  Store argument 0 into callee frame
389 : LDA 4, 5(5) ; Restore Call frame base
390 : LDA 6, 394(0) ;  Compute return address
391 : ST 6, 0(4) ;  Store return address in callee frame
392 : ADD 5, 4, 0 ;  Update pointer
393 : LDA 7, 88(0) ;  Call aLoop
394 : LD 1, 4(5) ;  Load callee return value into R1
395 : LDC 4, 5(0) ;  Load frame size
396 : SUB 5, 5, 4 ;  Restore pointer
397 : ST   1, 7(5) ;  Store function result into stack frame
398 : LD   6, 0(5) ;  Load return address
399 : LDA  7, 0(6) ;  Return to caller
400 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
401 : LDA  4, 3(5) ;  Update DMEM pointer
402 : LDA 6, 406(0) ;  Compute return address
403 : ST   6, 0(4) ;  Store return address
404 : ADD  5, 4, 0 ;  Updated Pointer
405 : LDA  7, 8(0) ; Call print
406 : LDC  4, 3(0) ;  Load frame size
407 : SUB  5, 5, 4 ;  Restore pointer
408 : ST   1, 5(5) ;  Store function result into stack frame
409 : LD   1, 1(5) ;  Load parameter 'a' into R1
410 : ADD  3, 1, 0 ;  Save left operand
411 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
412 : ADD  2, 3, 0 ;  restore left operand
413 : ADD  1, 2, 1 ;  R1 = left + right
414 : ST   1, 6(5) ;  Spill Temporary
415 : LD   1, 2(5) ;  Load parameter 'n' into R1
416 : ST   1, 7(5) ;  Spill Temporary
417 : LD   1, 3(5) ;  Load parameter 'upper' into R1
418 : ST   1, 8(5) ;  Spill Temporary
419 : LDA 4, 5(5) ; Restore Callee frame base
420 : LD   1, 8(5) ;  Restore Temporary
421 : ST 1, 3(4) ;  Store argument 2 into callee frame
422 : LD   1, 7(5) ;  Restore Temporary
423 : ST 1, 2(4) ;  Store argument 1 into callee frame
424 : LD   1, 6(5) ;  Restore Temporary
425 : ST 1, 1(4) ;  Store argument 0 into callee frame
426 : LDA 4, 5(5) ; Restore Call frame base
427 : LDA 6, 431(0) ;  Compute return address
428 : ST 6, 0(4) ;  Store return address in callee frame
429 : ADD 5, 4, 0 ;  Update pointer
430 : LDA 7, 88(0) ;  Call aLoop
431 : LD 1, 4(5) ;  Load callee return value into R1
432 : LDC 4, 5(0) ;  Load frame size
433 : SUB 5, 5, 4 ;  Restore pointer
434 : ST   1, 5(5) ;  Store function result into stack frame
435 : LD   6, 0(5) ;  Load return address
436 : LDA  7, 0(6) ;  Return to caller
437 : LD   1, 1(5) ;  Load parameter 'n' into R1
438 : ST   1, 3(5) ;  Spill Temporary
439 : LD   1, 1(5) ;  Load parameter 'n' into R1
440 : ST   1, 4(5) ;  Spill Temporary
441 : LDA 4, 3(5) ; Restore Callee frame base
442 : LD   1, 4(5) ;  Restore Temporary
443 : ST 1, 1(4) ;  Store argument 0 into callee frame
444 : LDA 4, 3(5) ; Restore Call frame base
445 : LDA 6, 449(0) ;  Compute return address
446 : ST 6, 0(4) ;  Store return address in callee frame
447 : ADD 5, 4, 0 ;  Update pointer
448 : LDA 7, 645(0) ;  Call length
449 : LD 1, 2(5) ;  Load callee return value into R1
450 : LDC 4, 3(0) ;  Load frame size
451 : SUB 5, 5, 4 ;  Restore pointer
452 : ST   1, 4(5) ;  Spill Temporary
453 : LDA 4, 4(5) ; Restore Callee frame base
454 : LD   1, 4(5) ;  Restore Temporary
455 : ST 1, 2(4) ;  Store argument 1 into callee frame
456 : LD   1, 3(5) ;  Restore Temporary
457 : ST 1, 1(4) ;  Store argument 0 into callee frame
458 : LDA 4, 4(5) ; Restore Call frame base
459 : LDA 6, 463(0) ;  Compute return address
460 : ST 6, 0(4) ;  Store return address in callee frame
461 : ADD 5, 4, 0 ;  Update pointer
462 : LDA 7, 469(0) ;  Call isExcellentSwitch
463 : LD 1, 3(5) ;  Load callee return value into R1
464 : LDC 4, 4(0) ;  Load frame size
465 : SUB 5, 5, 4 ;  Restore pointer
466 : ST   1, 2(5) ;  Store function result into stack frame
467 : LD   6, 0(5) ;  Load return address
468 : LDA  7, 0(6) ;  Return to caller
469 : LD   1, 2(5) ;  Load parameter 'length' into R1
470 : ST   1, 4(5) ;  Spill Temporary
471 : LDA 4, 3(5) ; Restore Callee frame base
472 : LD   1, 4(5) ;  Restore Temporary
473 : ST 1, 1(4) ;  Store argument 0 into callee frame
474 : LDA 4, 3(5) ; Restore Call frame base
475 : LDA 6, 479(0) ;  Compute return address
476 : ST 6, 0(4) ;  Store return address in callee frame
477 : ADD 5, 4, 0 ;  Update pointer
478 : LDA 7, 929(0) ;  Call ODD
479 : LD 1, 2(5) ;  Load callee return value into R1
480 : LDC 4, 3(0) ;  Load frame size
481 : SUB 5, 5, 4 ;  Restore pointer
482 : JEQ  1, 485(0) ;  If condition is false, jump to ELSE
483 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
484 : LDA  7, 534(0) ;  Skip ELSE block
485 : LD   1, 1(5) ;  Load parameter 'n' into R1
486 : ST   1, 4(5) ;  Spill Temporary
487 : LD   1, 1(5) ;  Load parameter 'n' into R1
488 : ST   1, 5(5) ;  Spill Temporary
489 : LDA 4, 3(5) ; Restore Callee frame base
490 : LD   1, 5(5) ;  Restore Temporary
491 : ST 1, 1(4) ;  Store argument 0 into callee frame
492 : LDA 4, 3(5) ; Restore Call frame base
493 : LDA 6, 497(0) ;  Compute return address
494 : ST 6, 0(4) ;  Store return address in callee frame
495 : ADD 5, 4, 0 ;  Update pointer
496 : LDA 7, 605(0) ;  Call a
497 : LD 1, 2(5) ;  Load callee return value into R1
498 : LDC 4, 3(0) ;  Load frame size
499 : SUB 5, 5, 4 ;  Restore pointer
500 : ST   1, 5(5) ;  Spill Temporary
501 : LD   1, 1(5) ;  Load parameter 'n' into R1
502 : ST   1, 6(5) ;  Spill Temporary
503 : LDA 4, 3(5) ; Restore Callee frame base
504 : LD   1, 6(5) ;  Restore Temporary
505 : ST 1, 1(4) ;  Store argument 0 into callee frame
506 : LDA 4, 3(5) ; Restore Call frame base
507 : LDA 6, 511(0) ;  Compute return address
508 : ST 6, 0(4) ;  Store return address in callee frame
509 : ADD 5, 4, 0 ;  Update pointer
510 : LDA 7, 553(0) ;  Call b
511 : LD 1, 2(5) ;  Load callee return value into R1
512 : LDC 4, 3(0) ;  Load frame size
513 : SUB 5, 5, 4 ;  Restore pointer
514 : ST   1, 6(5) ;  Spill Temporary
515 : LDA 4, 4(5) ; Restore Callee frame base
516 : LD   1, 6(5) ;  Restore Temporary
517 : ST 1, 2(4) ;  Store argument 1 into callee frame
518 : LD   1, 5(5) ;  Restore Temporary
519 : ST 1, 1(4) ;  Store argument 0 into callee frame
520 : LDA 4, 4(5) ; Restore Call frame base
521 : LDA 6, 525(0) ;  Compute return address
522 : ST 6, 0(4) ;  Store return address in callee frame
523 : ADD 5, 4, 0 ;  Update pointer
524 : LDA 7, 537(0) ;  Call excellentDiff
525 : LD 1, 3(5) ;  Load callee return value into R1
526 : LDC 4, 4(0) ;  Load frame size
527 : SUB 5, 5, 4 ;  Restore pointer
528 : LD   2, 4(5) ;  Restore Temporary
529 : SUB  1, 2, 1 ;  left - right for equality check
530 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
531 : LDC  1, 0(0) ;  false
532 : LDA  7, 1(7) ;  skip setting true
533 : LDC  1, 1(0) ;  true
534 : ST   1, 3(5) ;  Store function result into stack frame
535 : LD   6, 0(5) ;  Load return address
536 : LDA  7, 0(6) ;  Return to caller
537 : LD   1, 2(5) ;  Load parameter 'b' into R1
538 : ADD  3, 1, 0 ;  Save left operand
539 : LD   1, 2(5) ;  Load parameter 'b' into R1
540 : ADD  2, 3, 0 ;  restore left operand
541 : MUL  1, 2, 1 ;  R1 = left * right
542 : ADD  3, 1, 0 ;  Save left operand
543 : LD   1, 1(5) ;  Load parameter 'a' into R1
544 : ADD  3, 1, 0 ;  Save left operand
545 : LD   1, 1(5) ;  Load parameter 'a' into R1
546 : ADD  2, 3, 0 ;  restore left operand
547 : MUL  1, 2, 1 ;  R1 = left * right
548 : ADD  2, 3, 0 ;  restore left operand
549 : SUB  1, 2, 1 ;  R1 = left - right
550 : ST   1, 3(5) ;  Store function result into stack frame
551 : LD   6, 0(5) ;  Load return address
552 : LDA  7, 0(6) ;  Return to caller
553 : LD   1, 1(5) ;  Load parameter 'n' into R1
554 : ST   1, 3(5) ;  Spill Temporary
555 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
556 : ST   1, 4(5) ;  Spill Temporary
557 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
558 : ADD  3, 1, 0 ;  Save right operand
559 : LD   1, 1(5) ;  Load parameter 'n' into R1
560 : ST   1, 5(5) ;  Spill Temporary
561 : LDA 4, 3(5) ; Restore Callee frame base
562 : LD   1, 5(5) ;  Restore Temporary
563 : ST 1, 1(4) ;  Store argument 0 into callee frame
564 : LDA 4, 3(5) ; Restore Call frame base
565 : LDA 6, 569(0) ;  Compute return address
566 : ST 6, 0(4) ;  Store return address in callee frame
567 : ADD 5, 4, 0 ;  Update pointer
568 : LDA 7, 645(0) ;  Call length
569 : LD 1, 2(5) ;  Load callee return value into R1
570 : LDC 4, 3(0) ;  Load frame size
571 : SUB 5, 5, 4 ;  Restore pointer
572 : ADD  2, 3, 0 ;  Restore right operand
573 : DIV  1, 2, 1 ;  R1 = left / right
574 : ST   1, 5(5) ;  Spill Temporary
575 : LDA 4, 4(5) ; Restore Callee frame base
576 : LD   1, 5(5) ;  Restore Temporary
577 : ST 1, 2(4) ;  Store argument 1 into callee frame
578 : LD   1, 4(5) ;  Restore Temporary
579 : ST 1, 1(4) ;  Store argument 0 into callee frame
580 : LDA 4, 4(5) ; Restore Call frame base
581 : LDA 6, 585(0) ;  Compute return address
582 : ST 6, 0(4) ;  Store return address in callee frame
583 : ADD 5, 4, 0 ;  Update pointer
584 : LDA 7, 974(0) ;  Call EXP
585 : LD 1, 3(5) ;  Load callee return value into R1
586 : LDC 4, 4(0) ;  Load frame size
587 : SUB 5, 5, 4 ;  Restore pointer
588 : ST   1, 4(5) ;  Spill Temporary
589 : LDA 4, 4(5) ; Restore Callee frame base
590 : LD   1, 4(5) ;  Restore Temporary
591 : ST 1, 2(4) ;  Store argument 1 into callee frame
592 : LD   1, 3(5) ;  Restore Temporary
593 : ST 1, 1(4) ;  Store argument 0 into callee frame
594 : LDA 4, 4(5) ; Restore Call frame base
595 : LDA 6, 599(0) ;  Compute return address
596 : ST 6, 0(4) ;  Store return address in callee frame
597 : ADD 5, 4, 0 ;  Update pointer
598 : LDA 7, 1014(0) ;  Call MOD
599 : LD 1, 3(5) ;  Load callee return value into R1
600 : LDC 4, 4(0) ;  Load frame size
601 : SUB 5, 5, 4 ;  Restore pointer
602 : ST   1, 2(5) ;  Store function result into stack frame
603 : LD   6, 0(5) ;  Load return address
604 : LDA  7, 0(6) ;  Return to caller
605 : LD   1, 1(5) ;  Load parameter 'n' into R1
606 : ST   1, 3(5) ;  Spill Temporary
607 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
608 : ST   1, 4(5) ;  Spill Temporary
609 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
610 : ADD  3, 1, 0 ;  Save right operand
611 : LD   1, 1(5) ;  Load parameter 'n' into R1
612 : ST   1, 5(5) ;  Spill Temporary
613 : LDA 4, 3(5) ; Restore Callee frame base
614 : LD   1, 5(5) ;  Restore Temporary
615 : ST 1, 1(4) ;  Store argument 0 into callee frame
616 : LDA 4, 3(5) ; Restore Call frame base
617 : LDA 6, 621(0) ;  Compute return address
618 : ST 6, 0(4) ;  Store return address in callee frame
619 : ADD 5, 4, 0 ;  Update pointer
620 : LDA 7, 645(0) ;  Call length
621 : LD 1, 2(5) ;  Load callee return value into R1
622 : LDC 4, 3(0) ;  Load frame size
623 : SUB 5, 5, 4 ;  Restore pointer
624 : ADD  2, 3, 0 ;  Restore right operand
625 : DIV  1, 2, 1 ;  R1 = left / right
626 : ST   1, 5(5) ;  Spill Temporary
627 : LDA 4, 4(5) ; Restore Callee frame base
628 : LD   1, 5(5) ;  Restore Temporary
629 : ST 1, 2(4) ;  Store argument 1 into callee frame
630 : LD   1, 4(5) ;  Restore Temporary
631 : ST 1, 1(4) ;  Store argument 0 into callee frame
632 : LDA 4, 4(5) ; Restore Call frame base
633 : LDA 6, 637(0) ;  Compute return address
634 : ST 6, 0(4) ;  Store return address in callee frame
635 : ADD 5, 4, 0 ;  Update pointer
636 : LDA 7, 974(0) ;  Call EXP
637 : LD 1, 3(5) ;  Load callee return value into R1
638 : LDC 4, 4(0) ;  Load frame size
639 : SUB 5, 5, 4 ;  Restore pointer
640 : LD   2, 3(5) ;  Restore Temporary
641 : DIV  1, 2, 1 ;  R1 = left / right
642 : ST   1, 2(5) ;  Store function result into stack frame
643 : LD   6, 0(5) ;  Load return address
644 : LDA  7, 0(6) ;  Return to caller
645 : LD   1, 1(5) ;  Load parameter 'n' into R1
646 : ADD  3, 1, 0 ;  Save left operand
647 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
648 : ADD  2, 3, 0 ;  restore left operand
649 : SUB  1, 2, 1 ;  left - right for less-than check
650 : JLT  1, 2(7) ;  If R1 < 0, jump to true
651 : LDC  1, 0(0) ;  false
652 : LDA  7, 1(7) ;  skip setting true
653 : LDC  1, 1(0) ;  true
654 : JEQ  1, 657(0) ;  If condition is false, jump to ELSE
655 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
656 : LDA  7, 678(0) ;  Skip ELSE block
657 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
658 : ST   1, 3(5) ;  Spill Temporary
659 : LD   1, 1(5) ;  Load parameter 'n' into R1
660 : ADD  3, 1, 0 ;  Save left operand
661 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
662 : ADD  2, 3, 0 ;  restore left operand
663 : DIV  1, 2, 1 ;  R1 = left / right
664 : ST   1, 4(5) ;  Spill Temporary
665 : LDA 4, 3(5) ; Restore Callee frame base
666 : LD   1, 4(5) ;  Restore Temporary
667 : ST 1, 1(4) ;  Store argument 0 into callee frame
668 : LDA 4, 3(5) ; Restore Call frame base
669 : LDA 6, 673(0) ;  Compute return address
670 : ST 6, 0(4) ;  Store return address in callee frame
671 : ADD 5, 4, 0 ;  Update pointer
672 : LDA 7, 645(0) ;  Call length
673 : LD 1, 2(5) ;  Load callee return value into R1
674 : LDC 4, 3(0) ;  Load frame size
675 : SUB 5, 5, 4 ;  Restore pointer
676 : LD   2, 3(5) ;  Restore Temporary
677 : ADD  1, 2, 1 ;  R1 = left + right
678 : ST   1, 2(5) ;  Store function result into stack frame
679 : LD   6, 0(5) ;  Load return address
680 : LDA  7, 0(6) ;  Return to caller
681 : LD   1, 2(5) ;  Load parameter 'n' into R1
682 : ADD  3, 1, 0 ;  Save left operand
683 : LD   1, 1(5) ;  Load parameter 'r' into R1
684 : ADD  3, 1, 0 ;  Save left operand
685 : LD   1, 1(5) ;  Load parameter 'r' into R1
686 : ADD  2, 3, 0 ;  restore left operand
687 : MUL  1, 2, 1 ;  R1 = left * right
688 : ADD  2, 3, 0 ;  restore left operand
689 : SUB  1, 2, 1 ;  left - right for equality check
690 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
691 : LDC  1, 0(0) ;  false
692 : LDA  7, 1(7) ;  skip setting true
693 : LDC  1, 1(0) ;  true
694 : ST   1, 3(5) ;  Store function result into stack frame
695 : LD   6, 0(5) ;  Load return address
696 : LDA  7, 0(6) ;  Return to caller
697 : LD   1, 1(5) ;  Load parameter 'n' into R1
698 : ADD  3, 1, 0 ;  Save left operand
699 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
700 : ADD  3, 1, 0 ;  Save left operand
701 : LD   1, 1(5) ;  Load parameter 'n' into R1
702 : ADD  3, 1, 0 ;  Save left operand
703 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
704 : ADD  2, 3, 0 ;  restore left operand
705 : DIV  1, 2, 1 ;  R1 = left / right
706 : ADD  2, 3, 0 ;  restore left operand
707 : MUL  1, 2, 1 ;  R1 = left * right
708 : ADD  2, 3, 0 ;  restore left operand
709 : SUB  1, 2, 1 ;  left - right for equality check
710 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
711 : LDC  1, 0(0) ;  false
712 : LDA  7, 1(7) ;  skip setting true
713 : LDC  1, 1(0) ;  true
714 : ST   1, 2(5) ;  Store function result into stack frame
715 : LD   6, 0(5) ;  Load return address
716 : LDA  7, 0(6) ;  Return to caller
717 : LD   1, 4(5) ;  Load parameter 'mid' into R1
718 : ADD  3, 1, 0 ;  Save left operand
719 : LD   1, 4(5) ;  Load parameter 'mid' into R1
720 : ADD  2, 3, 0 ;  restore left operand
721 : MUL  1, 2, 1 ;  R1 = left * right
722 : ST   1, 6(5) ;  Spill Temporary
723 : LD   1, 1(5) ;  Load parameter 'n' into R1
724 : ST   1, 7(5) ;  Spill Temporary
725 : LDA 4, 4(5) ; Restore Callee frame base
726 : LD   1, 7(5) ;  Restore Temporary
727 : ST 1, 2(4) ;  Store argument 1 into callee frame
728 : LD   1, 6(5) ;  Restore Temporary
729 : ST 1, 1(4) ;  Store argument 0 into callee frame
730 : LDA 4, 4(5) ; Restore Call frame base
731 : LDA 6, 735(0) ;  Compute return address
732 : ST 6, 0(4) ;  Store return address in callee frame
733 : ADD 5, 4, 0 ;  Update pointer
734 : LDA 7, 905(0) ;  Call LE
735 : LD 1, 3(5) ;  Load callee return value into R1
736 : LDC 4, 4(0) ;  Load frame size
737 : SUB 5, 5, 4 ;  Restore pointer
738 : JEQ  1, 761(0) ;  If condition is false, jump to ELSE
739 : LD   1, 1(5) ;  Load parameter 'n' into R1
740 : ST   1, 6(5) ;  Spill Temporary
741 : LD   1, 4(5) ;  Load parameter 'mid' into R1
742 : ST   1, 7(5) ;  Spill Temporary
743 : LD   1, 3(5) ;  Load parameter 'high' into R1
744 : ST   1, 8(5) ;  Spill Temporary
745 : LDA 4, 5(5) ; Restore Callee frame base
746 : LD   1, 8(5) ;  Restore Temporary
747 : ST 1, 3(4) ;  Store argument 2 into callee frame
748 : LD   1, 7(5) ;  Restore Temporary
749 : ST 1, 2(4) ;  Store argument 1 into callee frame
750 : LD   1, 6(5) ;  Restore Temporary
751 : ST 1, 1(4) ;  Store argument 0 into callee frame
752 : LDA 4, 5(5) ; Restore Call frame base
753 : LDA 6, 757(0) ;  Compute return address
754 : ST 6, 0(4) ;  Store return address in callee frame
755 : ADD 5, 4, 0 ;  Update pointer
756 : LDA 7, 785(0) ;  Call SQRTSEARCH
757 : LD 1, 4(5) ;  Load callee return value into R1
758 : LDC 4, 5(0) ;  Load frame size
759 : SUB 5, 5, 4 ;  Restore pointer
760 : LDA  7, 782(0) ;  Skip ELSE block
761 : LD   1, 1(5) ;  Load parameter 'n' into R1
762 : ST   1, 6(5) ;  Spill Temporary
763 : LD   1, 2(5) ;  Load parameter 'low' into R1
764 : ST   1, 7(5) ;  Spill Temporary
765 : LD   1, 4(5) ;  Load parameter 'mid' into R1
766 : ST   1, 8(5) ;  Spill Temporary
767 : LDA 4, 5(5) ; Restore Callee frame base
768 : LD   1, 8(5) ;  Restore Temporary
769 : ST 1, 3(4) ;  Store argument 2 into callee frame
770 : LD   1, 7(5) ;  Restore Temporary
771 : ST 1, 2(4) ;  Store argument 1 into callee frame
772 : LD   1, 6(5) ;  Restore Temporary
773 : ST 1, 1(4) ;  Store argument 0 into callee frame
774 : LDA 4, 5(5) ; Restore Call frame base
775 : LDA 6, 779(0) ;  Compute return address
776 : ST 6, 0(4) ;  Store return address in callee frame
777 : ADD 5, 4, 0 ;  Update pointer
778 : LDA 7, 785(0) ;  Call SQRTSEARCH
779 : LD 1, 4(5) ;  Load callee return value into R1
780 : LDC 4, 5(0) ;  Load frame size
781 : SUB 5, 5, 4 ;  Restore pointer
782 : ST   1, 5(5) ;  Store function result into stack frame
783 : LD   6, 0(5) ;  Load return address
784 : LDA  7, 0(6) ;  Return to caller
785 : LD   1, 3(5) ;  Load parameter 'high' into R1
786 : ST   1, 5(5) ;  Spill Temporary
787 : LD   1, 2(5) ;  Load parameter 'low' into R1
788 : ADD  3, 1, 0 ;  Save left operand
789 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
790 : ADD  2, 3, 0 ;  restore left operand
791 : ADD  1, 2, 1 ;  R1 = left + right
792 : ST   1, 6(5) ;  Spill Temporary
793 : LDA 4, 4(5) ; Restore Callee frame base
794 : LD   1, 6(5) ;  Restore Temporary
795 : ST 1, 2(4) ;  Store argument 1 into callee frame
796 : LD   1, 5(5) ;  Restore Temporary
797 : ST 1, 1(4) ;  Store argument 0 into callee frame
798 : LDA 4, 4(5) ; Restore Call frame base
799 : LDA 6, 803(0) ;  Compute return address
800 : ST 6, 0(4) ;  Store return address in callee frame
801 : ADD 5, 4, 0 ;  Update pointer
802 : LDA 7, 905(0) ;  Call LE
803 : LD 1, 3(5) ;  Load callee return value into R1
804 : LDC 4, 4(0) ;  Load frame size
805 : SUB 5, 5, 4 ;  Restore pointer
806 : JEQ  1, 845(0) ;  If condition is false, jump to ELSE
807 : LD   1, 1(5) ;  Load parameter 'n' into R1
808 : ADD  3, 1, 0 ;  Save left operand
809 : LD   1, 2(5) ;  Load parameter 'low' into R1
810 : ADD  3, 1, 0 ;  Save left operand
811 : LD   1, 2(5) ;  Load parameter 'low' into R1
812 : ADD  2, 3, 0 ;  restore left operand
813 : MUL  1, 2, 1 ;  R1 = left * right
814 : ADD  2, 3, 0 ;  restore left operand
815 : SUB  1, 2, 1 ;  R1 = left - right
816 : ST   1, 5(5) ;  Spill Temporary
817 : LD   1, 3(5) ;  Load parameter 'high' into R1
818 : ADD  3, 1, 0 ;  Save left operand
819 : LD   1, 3(5) ;  Load parameter 'high' into R1
820 : ADD  2, 3, 0 ;  restore left operand
821 : MUL  1, 2, 1 ;  R1 = left * right
822 : ADD  3, 1, 0 ;  Save left operand
823 : LD   1, 1(5) ;  Load parameter 'n' into R1
824 : ADD  2, 3, 0 ;  restore left operand
825 : SUB  1, 2, 1 ;  R1 = left - right
826 : ST   1, 6(5) ;  Spill Temporary
827 : LDA 4, 4(5) ; Restore Callee frame base
828 : LD   1, 6(5) ;  Restore Temporary
829 : ST 1, 2(4) ;  Store argument 1 into callee frame
830 : LD   1, 5(5) ;  Restore Temporary
831 : ST 1, 1(4) ;  Store argument 0 into callee frame
832 : LDA 4, 4(5) ; Restore Call frame base
833 : LDA 6, 837(0) ;  Compute return address
834 : ST 6, 0(4) ;  Store return address in callee frame
835 : ADD 5, 4, 0 ;  Update pointer
836 : LDA 7, 905(0) ;  Call LE
837 : LD 1, 3(5) ;  Load callee return value into R1
838 : LDC 4, 4(0) ;  Load frame size
839 : SUB 5, 5, 4 ;  Restore pointer
840 : JEQ  1, 843(0) ;  If condition is false, jump to ELSE
841 : LD   1, 2(5) ;  Load parameter 'low' into R1
842 : LDA  7, 844(0) ;  Skip ELSE block
843 : LD   1, 3(5) ;  Load parameter 'high' into R1
844 : LDA  7, 878(0) ;  Skip ELSE block
845 : LD   1, 1(5) ;  Load parameter 'n' into R1
846 : ST   1, 5(5) ;  Spill Temporary
847 : LD   1, 2(5) ;  Load parameter 'low' into R1
848 : ST   1, 6(5) ;  Spill Temporary
849 : LD   1, 3(5) ;  Load parameter 'high' into R1
850 : ST   1, 7(5) ;  Spill Temporary
851 : LD   1, 2(5) ;  Load parameter 'low' into R1
852 : ADD  3, 1, 0 ;  Save left operand
853 : LD   1, 3(5) ;  Load parameter 'high' into R1
854 : ADD  2, 3, 0 ;  restore left operand
855 : ADD  1, 2, 1 ;  R1 = left + right
856 : ADD  3, 1, 0 ;  Save left operand
857 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
858 : ADD  2, 3, 0 ;  restore left operand
859 : DIV  1, 2, 1 ;  R1 = left / right
860 : ST   1, 8(5) ;  Spill Temporary
861 : LDA 4, 6(5) ; Restore Callee frame base
862 : LD   1, 8(5) ;  Restore Temporary
863 : ST 1, 4(4) ;  Store argument 3 into callee frame
864 : LD   1, 7(5) ;  Restore Temporary
865 : ST 1, 3(4) ;  Store argument 2 into callee frame
866 : LD   1, 6(5) ;  Restore Temporary
867 : ST 1, 2(4) ;  Store argument 1 into callee frame
868 : LD   1, 5(5) ;  Restore Temporary
869 : ST 1, 1(4) ;  Store argument 0 into callee frame
870 : LDA 4, 6(5) ; Restore Call frame base
871 : LDA 6, 875(0) ;  Compute return address
872 : ST 6, 0(4) ;  Store return address in callee frame
873 : ADD 5, 4, 0 ;  Update pointer
874 : LDA 7, 717(0) ;  Call SQRTSPLIT
875 : LD 1, 5(5) ;  Load callee return value into R1
876 : LDC 4, 6(0) ;  Load frame size
877 : SUB 5, 5, 4 ;  Restore pointer
878 : ST   1, 4(5) ;  Store function result into stack frame
879 : LD   6, 0(5) ;  Load return address
880 : LDA  7, 0(6) ;  Return to caller
881 : LD   1, 1(5) ;  Load parameter 'n' into R1
882 : ST   1, 3(5) ;  Spill Temporary
883 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
884 : ST   1, 4(5) ;  Spill Temporary
885 : LD   1, 1(5) ;  Load parameter 'n' into R1
886 : ST   1, 5(5) ;  Spill Temporary
887 : LDA 4, 5(5) ; Restore Callee frame base
888 : LD   1, 5(5) ;  Restore Temporary
889 : ST 1, 3(4) ;  Store argument 2 into callee frame
890 : LD   1, 4(5) ;  Restore Temporary
891 : ST 1, 2(4) ;  Store argument 1 into callee frame
892 : LD   1, 3(5) ;  Restore Temporary
893 : ST 1, 1(4) ;  Store argument 0 into callee frame
894 : LDA 4, 5(5) ; Restore Call frame base
895 : LDA 6, 899(0) ;  Compute return address
896 : ST 6, 0(4) ;  Store return address in callee frame
897 : ADD 5, 4, 0 ;  Update pointer
898 : LDA 7, 785(0) ;  Call SQRTSEARCH
899 : LD 1, 4(5) ;  Load callee return value into R1
900 : LDC 4, 5(0) ;  Load frame size
901 : SUB 5, 5, 4 ;  Restore pointer
902 : ST   1, 2(5) ;  Store function result into stack frame
903 : LD   6, 0(5) ;  Load return address
904 : LDA  7, 0(6) ;  Return to caller
905 : LD   1, 1(5) ;  Load parameter 'p' into R1
906 : ADD  3, 1, 0 ;  Save left operand
907 : LD   1, 2(5) ;  Load parameter 'q' into R1
908 : ADD  2, 3, 0 ;  restore left operand
909 : SUB  1, 2, 1 ;  left - right for less-than check
910 : JLT  1, 2(7) ;  If R1 < 0, jump to true
911 : LDC  1, 0(0) ;  false
912 : LDA  7, 1(7) ;  skip setting true
913 : LDC  1, 1(0) ;  true
914 : ADD  3, 1, 0 ;  Save left operand
915 : LD   1, 1(5) ;  Load parameter 'p' into R1
916 : ADD  3, 1, 0 ;  Save left operand
917 : LD   1, 2(5) ;  Load parameter 'q' into R1
918 : ADD  2, 3, 0 ;  restore left operand
919 : SUB  1, 2, 1 ;  left - right for equality check
920 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
921 : LDC  1, 0(0) ;  false
922 : LDA  7, 1(7) ;  skip setting true
923 : LDC  1, 1(0) ;  true
924 : ADD  2, 3, 0 ;  restore left operand
925 : ADD  1, 2, 1 ;  R1 = left OR right
926 : ST   1, 3(5) ;  Store function result into stack frame
927 : LD   6, 0(5) ;  Load return address
928 : LDA  7, 0(6) ;  Return to caller
929 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
930 : ADD  3, 1, 0 ;  Save left operand
931 : LD   1, 1(5) ;  Load parameter 'n' into R1
932 : ADD  2, 3, 0 ;  restore left operand
933 : SUB  1, 2, 1 ;  left - right for less-than check
934 : JLT  1, 2(7) ;  If R1 < 0, jump to true
935 : LDC  1, 0(0) ;  false
936 : LDA  7, 1(7) ;  skip setting true
937 : LDC  1, 1(0) ;  true
938 : JEQ  1, 957(0) ;  If condition is false, jump to ELSE
939 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
940 : ADD  3, 1, 0 ;  Save left operand
941 : LD   1, 1(5) ;  Load parameter 'n' into R1
942 : ADD  3, 1, 0 ;  Save left operand
943 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
944 : ADD  2, 3, 0 ;  restore left operand
945 : DIV  1, 2, 1 ;  R1 = left / right
946 : ADD  2, 3, 0 ;  restore left operand
947 : MUL  1, 2, 1 ;  R1 = left * right
948 : ADD  3, 1, 0 ;  Save left operand
949 : LD   1, 1(5) ;  Load parameter 'n' into R1
950 : ADD  2, 3, 0 ;  restore left operand
951 : SUB  1, 2, 1 ;  left - right for less-than check
952 : JLT  1, 2(7) ;  If R1 < 0, jump to true
953 : LDC  1, 0(0) ;  false
954 : LDA  7, 1(7) ;  skip setting true
955 : LDC  1, 1(0) ;  true
956 : LDA  7, 971(0) ;  Skip ELSE block
957 : LD   1, 1(5) ;  Load parameter 'n' into R1
958 : SUB  1, 0, 1 ;  Negate value in R1
959 : ST   1, 3(5) ;  Spill Temporary
960 : LDA 4, 3(5) ; Restore Callee frame base
961 : LD   1, 3(5) ;  Restore Temporary
962 : ST 1, 1(4) ;  Store argument 0 into callee frame
963 : LDA 4, 3(5) ; Restore Call frame base
964 : LDA 6, 968(0) ;  Compute return address
965 : ST 6, 0(4) ;  Store return address in callee frame
966 : ADD 5, 4, 0 ;  Update pointer
967 : LDA 7, 929(0) ;  Call ODD
968 : LD 1, 2(5) ;  Load callee return value into R1
969 : LDC 4, 3(0) ;  Load frame size
970 : SUB 5, 5, 4 ;  Restore pointer
971 : ST   1, 2(5) ;  Store function result into stack frame
972 : LD   6, 0(5) ;  Load return address
973 : LDA  7, 0(6) ;  Return to caller
974 : LD   1, 2(5) ;  Load parameter 'n' into R1
975 : ADD  3, 1, 0 ;  Save left operand
976 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
977 : ADD  2, 3, 0 ;  restore left operand
978 : SUB  1, 2, 1 ;  left - right for equality check
979 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
980 : LDC  1, 0(0) ;  false
981 : LDA  7, 1(7) ;  skip setting true
982 : LDC  1, 1(0) ;  true
983 : JEQ  1, 986(0) ;  If condition is false, jump to ELSE
984 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
985 : LDA  7, 1011(0) ;  Skip ELSE block
986 : LD   1, 1(5) ;  Load parameter 'm' into R1
987 : ST   1, 4(5) ;  Spill Temporary
988 : LD   1, 1(5) ;  Load parameter 'm' into R1
989 : ST   1, 5(5) ;  Spill Temporary
990 : LD   1, 2(5) ;  Load parameter 'n' into R1
991 : ADD  3, 1, 0 ;  Save left operand
992 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
993 : ADD  2, 3, 0 ;  restore left operand
994 : SUB  1, 2, 1 ;  R1 = left - right
995 : ST   1, 6(5) ;  Spill Temporary
996 : LDA 4, 4(5) ; Restore Callee frame base
997 : LD   1, 6(5) ;  Restore Temporary
998 : ST 1, 2(4) ;  Store argument 1 into callee frame
999 : LD   1, 5(5) ;  Restore Temporary
1000 : ST 1, 1(4) ;  Store argument 0 into callee frame
1001 : LDA 4, 4(5) ; Restore Call frame base
1002 : LDA 6, 1006(0) ;  Compute return address
1003 : ST 6, 0(4) ;  Store return address in callee frame
1004 : ADD 5, 4, 0 ;  Update pointer
1005 : LDA 7, 974(0) ;  Call EXP
1006 : LD 1, 3(5) ;  Load callee return value into R1
1007 : LDC 4, 4(0) ;  Load frame size
1008 : SUB 5, 5, 4 ;  Restore pointer
1009 : LD   2, 4(5) ;  Restore Temporary
1010 : MUL  1, 2, 1 ;  R1 = left * right
1011 : ST   1, 3(5) ;  Store function result into stack frame
1012 : LD   6, 0(5) ;  Load return address
1013 : LDA  7, 0(6) ;  Return to caller
1014 : LD   1, 1(5) ;  Load parameter 'm' into R1
1015 : ADD  3, 1, 0 ;  Save left operand
1016 : LD   1, 2(5) ;  Load parameter 'n' into R1
1017 : ADD  3, 1, 0 ;  Save left operand
1018 : LD   1, 1(5) ;  Load parameter 'm' into R1
1019 : ADD  3, 1, 0 ;  Save left operand
1020 : LD   1, 2(5) ;  Load parameter 'n' into R1
1021 : ADD  2, 3, 0 ;  restore left operand
1022 : DIV  1, 2, 1 ;  R1 = left / right
1023 : ADD  2, 3, 0 ;  restore left operand
1024 : MUL  1, 2, 1 ;  R1 = left * right
1025 : ADD  2, 3, 0 ;  restore left operand
1026 : SUB  1, 2, 1 ;  R1 = left - right
1027 : ST   1, 3(5) ;  Store function result into stack frame
1028 : LD   6, 0(5) ;  Load return address
1029 : LDA  7, 0(6) ;  Return to caller
