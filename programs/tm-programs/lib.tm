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
11 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDA 4, 3(5) ; Restore Callee frame base
14 : LD   1, 3(5) ;  Restore Temporary
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 4, 3(5) ; Restore Call frame base
17 : LDA 6, 21(0) ;  Compute return address
18 : ST 6, 0(4) ;  Store return address in callee frame
19 : ADD 5, 4, 0 ;  Update pointer
20 : LDA 7, 248(0) ;  Call SQRT
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC 4, 3(0) ;  Load frame size
23 : SUB 5, 5, 4 ;  Restore pointer
24 : LDA  4, 3(5) ;  Update DMEM pointer
25 : LDA 6, 29(0) ;  Compute return address
26 : ST   6, 0(4) ;  Store return address
27 : ADD  5, 4, 0 ;  Updated Pointer
28 : LDA  7, 8(0) ; Call print
29 : LDC  4, 3(0) ;  Load frame size
30 : SUB  5, 5, 4 ;  Restore pointer
31 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
32 : ST   1, 3(5) ;  Spill Temporary
33 : LDA 4, 3(5) ; Restore Callee frame base
34 : LD   1, 3(5) ;  Restore Temporary
35 : ST 1, 1(4) ;  Store argument 0 into callee frame
36 : LDA 4, 3(5) ; Restore Call frame base
37 : LDA 6, 41(0) ;  Compute return address
38 : ST 6, 0(4) ;  Store return address in callee frame
39 : ADD 5, 4, 0 ;  Update pointer
40 : LDA 7, 272(0) ;  Call ODD
41 : LD 1, 2(5) ;  Load callee return value into R1
42 : LDC 4, 3(0) ;  Load frame size
43 : SUB 5, 5, 4 ;  Restore pointer
44 : ST 1, 2(5) ;  Store result into current frame's return slot
45 : LD   1, 2(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 4(5) ;  Load parameter 'mid' into R1
49 : ADD  3, 1, 0 ;  Save left operand
50 : LD   1, 4(5) ;  Load parameter 'mid' into R1
51 : ADD  2, 3, 0 ;  restore left operand
52 : MUL  1, 2, 1 ;  R1 = left * right
53 : ST   1, 6(5) ;  Spill Temporary
54 : LD   1, 1(5) ;  Load parameter 'n' into R1
55 : ST   1, 7(5) ;  Spill Temporary
56 : LDA 4, 4(5) ; Restore Callee frame base
57 : LD   1, 7(5) ;  Restore Temporary
58 : ST 1, 2(4) ;  Store argument 1 into callee frame
59 : LD   1, 6(5) ;  Restore Temporary
60 : ST 1, 1(4) ;  Store argument 0 into callee frame
61 : LDA 4, 4(5) ; Restore Call frame base
62 : LDA 6, 66(0) ;  Compute return address
63 : ST 6, 0(4) ;  Store return address in callee frame
64 : ADD 5, 4, 0 ;  Update pointer
65 : LDA 7, 617(0) ;  Call LE
66 : LD 1, 3(5) ;  Load callee return value into R1
67 : LDC 4, 4(0) ;  Load frame size
68 : SUB 5, 5, 4 ;  Restore pointer
69 : JEQ  1, 92(0) ;  If condition is false, jump to ELSE
70 : LD   1, 1(5) ;  Load parameter 'n' into R1
71 : ST   1, 6(5) ;  Spill Temporary
72 : LD   1, 4(5) ;  Load parameter 'mid' into R1
73 : ST   1, 7(5) ;  Spill Temporary
74 : LD   1, 3(5) ;  Load parameter 'high' into R1
75 : ST   1, 8(5) ;  Spill Temporary
76 : LDA 4, 5(5) ; Restore Callee frame base
77 : LD   1, 8(5) ;  Restore Temporary
78 : ST 1, 3(4) ;  Store argument 2 into callee frame
79 : LD   1, 7(5) ;  Restore Temporary
80 : ST 1, 2(4) ;  Store argument 1 into callee frame
81 : LD   1, 6(5) ;  Restore Temporary
82 : ST 1, 1(4) ;  Store argument 0 into callee frame
83 : LDA 4, 5(5) ; Restore Call frame base
84 : LDA 6, 88(0) ;  Compute return address
85 : ST 6, 0(4) ;  Store return address in callee frame
86 : ADD 5, 4, 0 ;  Update pointer
87 : LDA 7, 116(0) ;  Call SQRTSEARCH
88 : LD 1, 4(5) ;  Load callee return value into R1
89 : LDC 4, 5(0) ;  Load frame size
90 : SUB 5, 5, 4 ;  Restore pointer
91 : LDA  7, 113(0) ;  Skip ELSE block
92 : LD   1, 1(5) ;  Load parameter 'n' into R1
93 : ST   1, 6(5) ;  Spill Temporary
94 : LD   1, 2(5) ;  Load parameter 'low' into R1
95 : ST   1, 7(5) ;  Spill Temporary
96 : LD   1, 4(5) ;  Load parameter 'mid' into R1
97 : ST   1, 8(5) ;  Spill Temporary
98 : LDA 4, 5(5) ; Restore Callee frame base
99 : LD   1, 8(5) ;  Restore Temporary
100 : ST 1, 3(4) ;  Store argument 2 into callee frame
101 : LD   1, 7(5) ;  Restore Temporary
102 : ST 1, 2(4) ;  Store argument 1 into callee frame
103 : LD   1, 6(5) ;  Restore Temporary
104 : ST 1, 1(4) ;  Store argument 0 into callee frame
105 : LDA 4, 5(5) ; Restore Call frame base
106 : LDA 6, 110(0) ;  Compute return address
107 : ST 6, 0(4) ;  Store return address in callee frame
108 : ADD 5, 4, 0 ;  Update pointer
109 : LDA 7, 116(0) ;  Call SQRTSEARCH
110 : LD 1, 4(5) ;  Load callee return value into R1
111 : LDC 4, 5(0) ;  Load frame size
112 : SUB 5, 5, 4 ;  Restore pointer
113 : ST   1, 5(5) ;  Store function result into stack frame
114 : LD   6, 0(5) ;  Load return address
115 : LDA  7, 0(6) ;  Return to caller
116 : LD   1, 3(5) ;  Load parameter 'high' into R1
117 : ST   1, 5(5) ;  Spill Temporary
118 : LD   1, 2(5) ;  Load parameter 'low' into R1
119 : ADD  3, 1, 0 ;  Save left operand
120 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
121 : ADD  2, 3, 0 ;  restore left operand
122 : ADD  1, 2, 1 ;  R1 = left + right
123 : ST   1, 6(5) ;  Spill Temporary
124 : LDA 4, 4(5) ; Restore Callee frame base
125 : LD   1, 6(5) ;  Restore Temporary
126 : ST 1, 2(4) ;  Store argument 1 into callee frame
127 : LD   1, 5(5) ;  Restore Temporary
128 : ST 1, 1(4) ;  Store argument 0 into callee frame
129 : LDA 4, 4(5) ; Restore Call frame base
130 : LDA 6, 134(0) ;  Compute return address
131 : ST 6, 0(4) ;  Store return address in callee frame
132 : ADD 5, 4, 0 ;  Update pointer
133 : LDA 7, 617(0) ;  Call LE
134 : LD 1, 3(5) ;  Load callee return value into R1
135 : LDC 4, 4(0) ;  Load frame size
136 : SUB 5, 5, 4 ;  Restore pointer
137 : JEQ  1, 200(0) ;  If condition is false, jump to ELSE
138 : LD   1, 1(5) ;  Load parameter 'n' into R1
139 : ST   1, 5(5) ;  Spill Temporary
140 : LD   1, 2(5) ;  Load parameter 'low' into R1
141 : ST   1, 6(5) ;  Spill Temporary
142 : LD   1, 2(5) ;  Load parameter 'low' into R1
143 : ST   1, 7(5) ;  Spill Temporary
144 : LDA 4, 4(5) ; Restore Callee frame base
145 : LD   1, 7(5) ;  Restore Temporary
146 : ST 1, 2(4) ;  Store argument 1 into callee frame
147 : LD   1, 6(5) ;  Restore Temporary
148 : ST 1, 1(4) ;  Store argument 0 into callee frame
149 : LDA 4, 4(5) ; Restore Call frame base
150 : LDA 6, 154(0) ;  Compute return address
151 : ST 6, 0(4) ;  Store return address in callee frame
152 : ADD 5, 4, 0 ;  Update pointer
153 : LDA 7, 533(0) ;  Call TIMES
154 : LD 1, 3(5) ;  Load callee return value into R1
155 : LDC 4, 4(0) ;  Load frame size
156 : SUB 5, 5, 4 ;  Restore pointer
157 : LD   2, 5(5) ;  Restore Temporary
158 : SUB  1, 2, 1 ;  R1 = left - right
159 : ST   1, 5(5) ;  Spill Temporary
160 : LD   1, 1(5) ;  Load parameter 'n' into R1
161 : ADD  3, 1, 0 ;  Save right operand
162 : LD   1, 3(5) ;  Load parameter 'high' into R1
163 : ST   1, 6(5) ;  Spill Temporary
164 : LD   1, 3(5) ;  Load parameter 'high' into R1
165 : ST   1, 7(5) ;  Spill Temporary
166 : LDA 4, 4(5) ; Restore Callee frame base
167 : LD   1, 7(5) ;  Restore Temporary
168 : ST 1, 2(4) ;  Store argument 1 into callee frame
169 : LD   1, 6(5) ;  Restore Temporary
170 : ST 1, 1(4) ;  Store argument 0 into callee frame
171 : LDA 4, 4(5) ; Restore Call frame base
172 : LDA 6, 176(0) ;  Compute return address
173 : ST 6, 0(4) ;  Store return address in callee frame
174 : ADD 5, 4, 0 ;  Update pointer
175 : LDA 7, 533(0) ;  Call TIMES
176 : LD 1, 3(5) ;  Load callee return value into R1
177 : LDC 4, 4(0) ;  Load frame size
178 : SUB 5, 5, 4 ;  Restore pointer
179 : ADD  2, 3, 0 ;  Restore right operand
180 : SUB  1, 2, 1 ;  R1 = left - right
181 : ST   1, 6(5) ;  Spill Temporary
182 : LDA 4, 4(5) ; Restore Callee frame base
183 : LD   1, 6(5) ;  Restore Temporary
184 : ST 1, 2(4) ;  Store argument 1 into callee frame
185 : LD   1, 5(5) ;  Restore Temporary
186 : ST 1, 1(4) ;  Store argument 0 into callee frame
187 : LDA 4, 4(5) ; Restore Call frame base
188 : LDA 6, 192(0) ;  Compute return address
189 : ST 6, 0(4) ;  Store return address in callee frame
190 : ADD 5, 4, 0 ;  Update pointer
191 : LDA 7, 617(0) ;  Call LE
192 : LD 1, 3(5) ;  Load callee return value into R1
193 : LDC 4, 4(0) ;  Load frame size
194 : SUB 5, 5, 4 ;  Restore pointer
195 : JEQ  1, 198(0) ;  If condition is false, jump to ELSE
196 : LD   1, 2(5) ;  Load parameter 'low' into R1
197 : LDA  7, 199(0) ;  Skip ELSE block
198 : LD   1, 3(5) ;  Load parameter 'high' into R1
199 : LDA  7, 245(0) ;  Skip ELSE block
200 : LD   1, 1(5) ;  Load parameter 'n' into R1
201 : ST   1, 5(5) ;  Spill Temporary
202 : LD   1, 2(5) ;  Load parameter 'low' into R1
203 : ST   1, 6(5) ;  Spill Temporary
204 : LD   1, 3(5) ;  Load parameter 'high' into R1
205 : ST   1, 7(5) ;  Spill Temporary
206 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
207 : ADD  3, 1, 0 ;  Save right operand
208 : LD   1, 2(5) ;  Load parameter 'low' into R1
209 : ST   1, 8(5) ;  Spill Temporary
210 : LD   1, 3(5) ;  Load parameter 'high' into R1
211 : ST   1, 9(5) ;  Spill Temporary
212 : LDA 4, 4(5) ; Restore Callee frame base
213 : LD   1, 9(5) ;  Restore Temporary
214 : ST 1, 2(4) ;  Store argument 1 into callee frame
215 : LD   1, 8(5) ;  Restore Temporary
216 : ST 1, 1(4) ;  Store argument 0 into callee frame
217 : LDA 4, 4(5) ; Restore Call frame base
218 : LDA 6, 222(0) ;  Compute return address
219 : ST 6, 0(4) ;  Store return address in callee frame
220 : ADD 5, 4, 0 ;  Update pointer
221 : LDA 7, 549(0) ;  Call PLUS
222 : LD 1, 3(5) ;  Load callee return value into R1
223 : LDC 4, 4(0) ;  Load frame size
224 : SUB 5, 5, 4 ;  Restore pointer
225 : ADD  2, 3, 0 ;  Restore right operand
226 : DIV  1, 2, 1 ;  R1 = left / right
227 : ST   1, 8(5) ;  Spill Temporary
228 : LDA 4, 6(5) ; Restore Callee frame base
229 : LD   1, 8(5) ;  Restore Temporary
230 : ST 1, 4(4) ;  Store argument 3 into callee frame
231 : LD   1, 7(5) ;  Restore Temporary
232 : ST 1, 3(4) ;  Store argument 2 into callee frame
233 : LD   1, 6(5) ;  Restore Temporary
234 : ST 1, 2(4) ;  Store argument 1 into callee frame
235 : LD   1, 5(5) ;  Restore Temporary
236 : ST 1, 1(4) ;  Store argument 0 into callee frame
237 : LDA 4, 6(5) ; Restore Call frame base
238 : LDA 6, 242(0) ;  Compute return address
239 : ST 6, 0(4) ;  Store return address in callee frame
240 : ADD 5, 4, 0 ;  Update pointer
241 : LDA 7, 48(0) ;  Call SQRTSPLIT
242 : LD 1, 5(5) ;  Load callee return value into R1
243 : LDC 4, 6(0) ;  Load frame size
244 : SUB 5, 5, 4 ;  Restore pointer
245 : ST   1, 4(5) ;  Store function result into stack frame
246 : LD   6, 0(5) ;  Load return address
247 : LDA  7, 0(6) ;  Return to caller
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : ST   1, 3(5) ;  Spill Temporary
250 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
251 : ST   1, 4(5) ;  Spill Temporary
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : ST   1, 5(5) ;  Spill Temporary
254 : LDA 4, 5(5) ; Restore Callee frame base
255 : LD   1, 5(5) ;  Restore Temporary
256 : ST 1, 3(4) ;  Store argument 2 into callee frame
257 : LD   1, 4(5) ;  Restore Temporary
258 : ST 1, 2(4) ;  Store argument 1 into callee frame
259 : LD   1, 3(5) ;  Restore Temporary
260 : ST 1, 1(4) ;  Store argument 0 into callee frame
261 : LDA 4, 5(5) ; Restore Call frame base
262 : LDA 6, 266(0) ;  Compute return address
263 : ST 6, 0(4) ;  Store return address in callee frame
264 : ADD 5, 4, 0 ;  Update pointer
265 : LDA 7, 116(0) ;  Call SQRTSEARCH
266 : LD 1, 4(5) ;  Load callee return value into R1
267 : LDC 4, 5(0) ;  Load frame size
268 : SUB 5, 5, 4 ;  Restore pointer
269 : ST   1, 2(5) ;  Store function result into stack frame
270 : LD   6, 0(5) ;  Load return address
271 : LDA  7, 0(6) ;  Return to caller
272 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
273 : ST   1, 3(5) ;  Spill Temporary
274 : LD   1, 1(5) ;  Load parameter 'n' into R1
275 : ST   1, 4(5) ;  Spill Temporary
276 : LDA 4, 4(5) ; Restore Callee frame base
277 : LD   1, 4(5) ;  Restore Temporary
278 : ST 1, 2(4) ;  Store argument 1 into callee frame
279 : LD   1, 3(5) ;  Restore Temporary
280 : ST 1, 1(4) ;  Store argument 0 into callee frame
281 : LDA 4, 4(5) ; Restore Call frame base
282 : LDA 6, 286(0) ;  Compute return address
283 : ST 6, 0(4) ;  Store return address in callee frame
284 : ADD 5, 4, 0 ;  Update pointer
285 : LDA 7, 617(0) ;  Call LE
286 : LD 1, 3(5) ;  Load callee return value into R1
287 : LDC 4, 4(0) ;  Load frame size
288 : SUB 5, 5, 4 ;  Restore pointer
289 : JEQ  1, 344(0) ;  If condition is false, jump to ELSE
290 : LD   1, 1(5) ;  Load parameter 'n' into R1
291 : ST   1, 3(5) ;  Spill Temporary
292 : LD   1, 1(5) ;  Load parameter 'n' into R1
293 : ST   1, 4(5) ;  Spill Temporary
294 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
295 : ST   1, 5(5) ;  Spill Temporary
296 : LDA 4, 4(5) ; Restore Callee frame base
297 : LD   1, 5(5) ;  Restore Temporary
298 : ST 1, 2(4) ;  Store argument 1 into callee frame
299 : LD   1, 4(5) ;  Restore Temporary
300 : ST 1, 1(4) ;  Store argument 0 into callee frame
301 : LDA 4, 4(5) ; Restore Call frame base
302 : LDA 6, 306(0) ;  Compute return address
303 : ST 6, 0(4) ;  Store return address in callee frame
304 : ADD 5, 4, 0 ;  Update pointer
305 : LDA 7, 525(0) ;  Call DIV
306 : LD 1, 3(5) ;  Load callee return value into R1
307 : LDC 4, 4(0) ;  Load frame size
308 : SUB 5, 5, 4 ;  Restore pointer
309 : ST   1, 4(5) ;  Spill Temporary
310 : LD   1, 1(5) ;  Load parameter 'n' into R1
311 : ST   1, 5(5) ;  Spill Temporary
312 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
313 : ST   1, 6(5) ;  Spill Temporary
314 : LDA 4, 4(5) ; Restore Callee frame base
315 : LD   1, 6(5) ;  Restore Temporary
316 : ST 1, 2(4) ;  Store argument 1 into callee frame
317 : LD   1, 5(5) ;  Restore Temporary
318 : ST 1, 1(4) ;  Store argument 0 into callee frame
319 : LDA 4, 4(5) ; Restore Call frame base
320 : LDA 6, 324(0) ;  Compute return address
321 : ST 6, 0(4) ;  Store return address in callee frame
322 : ADD 5, 4, 0 ;  Update pointer
323 : LDA 7, 525(0) ;  Call DIV
324 : LD 1, 3(5) ;  Load callee return value into R1
325 : LDC 4, 4(0) ;  Load frame size
326 : SUB 5, 5, 4 ;  Restore pointer
327 : LD   2, 4(5) ;  Restore Temporary
328 : ADD  1, 2, 1 ;  R1 = left + right
329 : ST   1, 4(5) ;  Spill Temporary
330 : LDA 4, 4(5) ; Restore Callee frame base
331 : LD   1, 4(5) ;  Restore Temporary
332 : ST 1, 2(4) ;  Store argument 1 into callee frame
333 : LD   1, 3(5) ;  Restore Temporary
334 : ST 1, 1(4) ;  Store argument 0 into callee frame
335 : LDA 4, 4(5) ; Restore Call frame base
336 : LDA 6, 340(0) ;  Compute return address
337 : ST 6, 0(4) ;  Store return address in callee frame
338 : ADD 5, 4, 0 ;  Update pointer
339 : LDA 7, 573(0) ;  Call GT
340 : LD 1, 3(5) ;  Load callee return value into R1
341 : LDC 4, 4(0) ;  Load frame size
342 : SUB 5, 5, 4 ;  Restore pointer
343 : LDA  7, 433(0) ;  Skip ELSE block
344 : LD   1, 1(5) ;  Load parameter 'n' into R1
345 : ST   1, 3(5) ;  Spill Temporary
346 : LDA 4, 3(5) ; Restore Callee frame base
347 : LD   1, 3(5) ;  Restore Temporary
348 : ST 1, 1(4) ;  Store argument 0 into callee frame
349 : LDA 4, 3(5) ; Restore Call frame base
350 : LDA 6, 354(0) ;  Compute return address
351 : ST 6, 0(4) ;  Store return address in callee frame
352 : ADD 5, 4, 0 ;  Update pointer
353 : LDA 7, 520(0) ;  Call NEG
354 : LD 1, 2(5) ;  Load callee return value into R1
355 : LDC 4, 3(0) ;  Load frame size
356 : SUB 5, 5, 4 ;  Restore pointer
357 : ST   1, 3(5) ;  Spill Temporary
358 : LD   1, 1(5) ;  Load parameter 'n' into R1
359 : ST   1, 4(5) ;  Spill Temporary
360 : LDA 4, 3(5) ; Restore Callee frame base
361 : LD   1, 4(5) ;  Restore Temporary
362 : ST 1, 1(4) ;  Store argument 0 into callee frame
363 : LDA 4, 3(5) ; Restore Call frame base
364 : LDA 6, 368(0) ;  Compute return address
365 : ST 6, 0(4) ;  Store return address in callee frame
366 : ADD 5, 4, 0 ;  Update pointer
367 : LDA 7, 520(0) ;  Call NEG
368 : LD 1, 2(5) ;  Load callee return value into R1
369 : LDC 4, 3(0) ;  Load frame size
370 : SUB 5, 5, 4 ;  Restore pointer
371 : ST   1, 4(5) ;  Spill Temporary
372 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
373 : ST   1, 5(5) ;  Spill Temporary
374 : LDA 4, 4(5) ; Restore Callee frame base
375 : LD   1, 5(5) ;  Restore Temporary
376 : ST 1, 2(4) ;  Store argument 1 into callee frame
377 : LD   1, 4(5) ;  Restore Temporary
378 : ST 1, 1(4) ;  Store argument 0 into callee frame
379 : LDA 4, 4(5) ; Restore Call frame base
380 : LDA 6, 384(0) ;  Compute return address
381 : ST 6, 0(4) ;  Store return address in callee frame
382 : ADD 5, 4, 0 ;  Update pointer
383 : LDA 7, 525(0) ;  Call DIV
384 : LD 1, 3(5) ;  Load callee return value into R1
385 : LDC 4, 4(0) ;  Load frame size
386 : SUB 5, 5, 4 ;  Restore pointer
387 : ST   1, 4(5) ;  Spill Temporary
388 : LD   1, 1(5) ;  Load parameter 'n' into R1
389 : ST   1, 5(5) ;  Spill Temporary
390 : LDA 4, 3(5) ; Restore Callee frame base
391 : LD   1, 5(5) ;  Restore Temporary
392 : ST 1, 1(4) ;  Store argument 0 into callee frame
393 : LDA 4, 3(5) ; Restore Call frame base
394 : LDA 6, 398(0) ;  Compute return address
395 : ST 6, 0(4) ;  Store return address in callee frame
396 : ADD 5, 4, 0 ;  Update pointer
397 : LDA 7, 520(0) ;  Call NEG
398 : LD 1, 2(5) ;  Load callee return value into R1
399 : LDC 4, 3(0) ;  Load frame size
400 : SUB 5, 5, 4 ;  Restore pointer
401 : ST   1, 5(5) ;  Spill Temporary
402 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
403 : ST   1, 6(5) ;  Spill Temporary
404 : LDA 4, 4(5) ; Restore Callee frame base
405 : LD   1, 6(5) ;  Restore Temporary
406 : ST 1, 2(4) ;  Store argument 1 into callee frame
407 : LD   1, 5(5) ;  Restore Temporary
408 : ST 1, 1(4) ;  Store argument 0 into callee frame
409 : LDA 4, 4(5) ; Restore Call frame base
410 : LDA 6, 414(0) ;  Compute return address
411 : ST 6, 0(4) ;  Store return address in callee frame
412 : ADD 5, 4, 0 ;  Update pointer
413 : LDA 7, 525(0) ;  Call DIV
414 : LD 1, 3(5) ;  Load callee return value into R1
415 : LDC 4, 4(0) ;  Load frame size
416 : SUB 5, 5, 4 ;  Restore pointer
417 : LD   2, 4(5) ;  Restore Temporary
418 : ADD  1, 2, 1 ;  R1 = left + right
419 : ST   1, 4(5) ;  Spill Temporary
420 : LDA 4, 4(5) ; Restore Callee frame base
421 : LD   1, 4(5) ;  Restore Temporary
422 : ST 1, 2(4) ;  Store argument 1 into callee frame
423 : LD   1, 3(5) ;  Restore Temporary
424 : ST 1, 1(4) ;  Store argument 0 into callee frame
425 : LDA 4, 4(5) ; Restore Call frame base
426 : LDA 6, 430(0) ;  Compute return address
427 : ST 6, 0(4) ;  Store return address in callee frame
428 : ADD 5, 4, 0 ;  Update pointer
429 : LDA 7, 573(0) ;  Call GT
430 : LD 1, 3(5) ;  Load callee return value into R1
431 : LDC 4, 4(0) ;  Load frame size
432 : SUB 5, 5, 4 ;  Restore pointer
433 : ST   1, 2(5) ;  Store function result into stack frame
434 : LD   6, 0(5) ;  Load return address
435 : LDA  7, 0(6) ;  Return to caller
436 : LD   1, 2(5) ;  Load parameter 'n' into R1
437 : ADD  3, 1, 0 ;  Save left operand
438 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
439 : ADD  2, 3, 0 ;  restore left operand
440 : SUB  1, 2, 1 ;  left - right for equality check
441 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
442 : LDC  1, 0(0) ;  false
443 : LDA  7, 1(7) ;  skip setting true
444 : LDC  1, 1(0) ;  true
445 : JEQ  1, 448(0) ;  If condition is false, jump to ELSE
446 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
447 : LDA  7, 473(0) ;  Skip ELSE block
448 : LD   1, 1(5) ;  Load parameter 'm' into R1
449 : ST   1, 4(5) ;  Spill Temporary
450 : LD   1, 1(5) ;  Load parameter 'm' into R1
451 : ST   1, 5(5) ;  Spill Temporary
452 : LD   1, 2(5) ;  Load parameter 'n' into R1
453 : ADD  3, 1, 0 ;  Save left operand
454 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
455 : ADD  2, 3, 0 ;  restore left operand
456 : SUB  1, 2, 1 ;  R1 = left - right
457 : ST   1, 6(5) ;  Spill Temporary
458 : LDA 4, 4(5) ; Restore Callee frame base
459 : LD   1, 6(5) ;  Restore Temporary
460 : ST 1, 2(4) ;  Store argument 1 into callee frame
461 : LD   1, 5(5) ;  Restore Temporary
462 : ST 1, 1(4) ;  Store argument 0 into callee frame
463 : LDA 4, 4(5) ; Restore Call frame base
464 : LDA 6, 468(0) ;  Compute return address
465 : ST 6, 0(4) ;  Store return address in callee frame
466 : ADD 5, 4, 0 ;  Update pointer
467 : LDA 7, 436(0) ;  Call EXP
468 : LD 1, 3(5) ;  Load callee return value into R1
469 : LDC 4, 4(0) ;  Load frame size
470 : SUB 5, 5, 4 ;  Restore pointer
471 : LD   2, 4(5) ;  Restore Temporary
472 : MUL  1, 2, 1 ;  R1 = left * right
473 : ST   1, 3(5) ;  Store function result into stack frame
474 : LD   6, 0(5) ;  Load return address
475 : LDA  7, 0(6) ;  Return to caller
476 : LD   1, 1(5) ;  Load parameter 'm' into R1
477 : ADD  3, 1, 0 ;  Save left operand
478 : LD   1, 1(5) ;  Load parameter 'm' into R1
479 : ADD  3, 1, 0 ;  Save left operand
480 : LD   1, 2(5) ;  Load parameter 'n' into R1
481 : ADD  2, 3, 0 ;  restore left operand
482 : DIV  1, 2, 1 ;  R1 = left / right
483 : ADD  3, 1, 0 ;  Save left operand
484 : LD   1, 2(5) ;  Load parameter 'n' into R1
485 : ADD  2, 3, 0 ;  restore left operand
486 : MUL  1, 2, 1 ;  R1 = left * right
487 : ADD  2, 3, 0 ;  restore left operand
488 : SUB  1, 2, 1 ;  R1 = left - right
489 : ST   1, 3(5) ;  Store function result into stack frame
490 : LD   6, 0(5) ;  Load return address
491 : LDA  7, 0(6) ;  Return to caller
492 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
493 : ADD  3, 1, 0 ;  Save left operand
494 : LD   1, 1(5) ;  Load parameter 'n' into R1
495 : ADD  2, 3, 0 ;  restore left operand
496 : SUB  1, 2, 1 ;  left - right for less-than check
497 : JLT  1, 2(7) ;  If R1 < 0, jump to true
498 : LDC  1, 0(0) ;  false
499 : LDA  7, 1(7) ;  skip setting true
500 : LDC  1, 1(0) ;  true
501 : JEQ  1, 504(0) ;  If condition is false, jump to ELSE
502 : LD   1, 1(5) ;  Load parameter 'n' into R1
503 : LDA  7, 517(0) ;  Skip ELSE block
504 : LD   1, 1(5) ;  Load parameter 'n' into R1
505 : ST   1, 3(5) ;  Spill Temporary
506 : LDA 4, 3(5) ; Restore Callee frame base
507 : LD   1, 3(5) ;  Restore Temporary
508 : ST 1, 1(4) ;  Store argument 0 into callee frame
509 : LDA 4, 3(5) ; Restore Call frame base
510 : LDA 6, 514(0) ;  Compute return address
511 : ST 6, 0(4) ;  Store return address in callee frame
512 : ADD 5, 4, 0 ;  Update pointer
513 : LDA 7, 520(0) ;  Call NEG
514 : LD 1, 2(5) ;  Load callee return value into R1
515 : LDC 4, 3(0) ;  Load frame size
516 : SUB 5, 5, 4 ;  Restore pointer
517 : ST   1, 2(5) ;  Store function result into stack frame
518 : LD   6, 0(5) ;  Load return address
519 : LDA  7, 0(6) ;  Return to caller
520 : LD   1, 1(5) ;  Load parameter 'n' into R1
521 : SUB  1, 0, 1 ;  Negate value in R1
522 : ST   1, 2(5) ;  Store function result into stack frame
523 : LD   6, 0(5) ;  Load return address
524 : LDA  7, 0(6) ;  Return to caller
525 : LD   1, 1(5) ;  Load parameter 'p' into R1
526 : ADD  3, 1, 0 ;  Save left operand
527 : LD   1, 2(5) ;  Load parameter 'q' into R1
528 : ADD  2, 3, 0 ;  restore left operand
529 : DIV  1, 2, 1 ;  R1 = left / right
530 : ST   1, 3(5) ;  Store function result into stack frame
531 : LD   6, 0(5) ;  Load return address
532 : LDA  7, 0(6) ;  Return to caller
533 : LD   1, 1(5) ;  Load parameter 'p' into R1
534 : ADD  3, 1, 0 ;  Save left operand
535 : LD   1, 2(5) ;  Load parameter 'q' into R1
536 : ADD  2, 3, 0 ;  restore left operand
537 : MUL  1, 2, 1 ;  R1 = left * right
538 : ST   1, 3(5) ;  Store function result into stack frame
539 : LD   6, 0(5) ;  Load return address
540 : LDA  7, 0(6) ;  Return to caller
541 : LD   1, 1(5) ;  Load parameter 'p' into R1
542 : ADD  3, 1, 0 ;  Save left operand
543 : LD   1, 2(5) ;  Load parameter 'q' into R1
544 : ADD  2, 3, 0 ;  restore left operand
545 : SUB  1, 2, 1 ;  R1 = left - right
546 : ST   1, 3(5) ;  Store function result into stack frame
547 : LD   6, 0(5) ;  Load return address
548 : LDA  7, 0(6) ;  Return to caller
549 : LD   1, 1(5) ;  Load parameter 'p' into R1
550 : ADD  3, 1, 0 ;  Save left operand
551 : LD   1, 2(5) ;  Load parameter 'q' into R1
552 : ADD  2, 3, 0 ;  restore left operand
553 : ADD  1, 2, 1 ;  R1 = left + right
554 : ST   1, 3(5) ;  Store function result into stack frame
555 : LD   6, 0(5) ;  Load return address
556 : LDA  7, 0(6) ;  Return to caller
557 : LD   1, 1(5) ;  Load parameter 'p' into R1
558 : JEQ  1, 561(0) ;  If condition is false, jump to ELSE
559 : LD   1, 2(5) ;  Load parameter 'q' into R1
560 : LDA  7, 562(0) ;  Skip ELSE block
561 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
562 : ST   1, 3(5) ;  Store function result into stack frame
563 : LD   6, 0(5) ;  Load return address
564 : LDA  7, 0(6) ;  Return to caller
565 : LD   1, 1(5) ;  Load parameter 'p' into R1
566 : ADD  3, 1, 0 ;  Save left operand
567 : LD   1, 2(5) ;  Load parameter 'q' into R1
568 : ADD  2, 3, 0 ;  restore left operand
569 : ADD  1, 2, 1 ;  R1 = left OR right
570 : ST   1, 3(5) ;  Store function result into stack frame
571 : LD   6, 0(5) ;  Load return address
572 : LDA  7, 0(6) ;  Return to caller
573 : LD   1, 1(5) ;  Load parameter 'p' into R1
574 : ST   1, 4(5) ;  Spill Temporary
575 : LD   1, 2(5) ;  Load parameter 'q' into R1
576 : ST   1, 5(5) ;  Spill Temporary
577 : LDA 4, 4(5) ; Restore Callee frame base
578 : LD   1, 5(5) ;  Restore Temporary
579 : ST 1, 2(4) ;  Store argument 1 into callee frame
580 : LD   1, 4(5) ;  Restore Temporary
581 : ST 1, 1(4) ;  Store argument 0 into callee frame
582 : LDA 4, 4(5) ; Restore Call frame base
583 : LDA 6, 587(0) ;  Compute return address
584 : ST 6, 0(4) ;  Store return address in callee frame
585 : ADD 5, 4, 0 ;  Update pointer
586 : LDA 7, 617(0) ;  Call LE
587 : LD 1, 3(5) ;  Load callee return value into R1
588 : LDC 4, 4(0) ;  Load frame size
589 : SUB 5, 5, 4 ;  Restore pointer
590 : LDC  2, 1(0) ;  Load 1 into R2
591 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
592 : ST   1, 3(5) ;  Store function result into stack frame
593 : LD   6, 0(5) ;  Load return address
594 : LDA  7, 0(6) ;  Return to caller
595 : LD   1, 1(5) ;  Load parameter 'p' into R1
596 : ST   1, 4(5) ;  Spill Temporary
597 : LD   1, 2(5) ;  Load parameter 'q' into R1
598 : ST   1, 5(5) ;  Spill Temporary
599 : LDA 4, 4(5) ; Restore Callee frame base
600 : LD   1, 5(5) ;  Restore Temporary
601 : ST 1, 2(4) ;  Store argument 1 into callee frame
602 : LD   1, 4(5) ;  Restore Temporary
603 : ST 1, 1(4) ;  Store argument 0 into callee frame
604 : LDA 4, 4(5) ; Restore Call frame base
605 : LDA 6, 609(0) ;  Compute return address
606 : ST 6, 0(4) ;  Store return address in callee frame
607 : ADD 5, 4, 0 ;  Update pointer
608 : LDA 7, 691(0) ;  Call LT
609 : LD 1, 3(5) ;  Load callee return value into R1
610 : LDC 4, 4(0) ;  Load frame size
611 : SUB 5, 5, 4 ;  Restore pointer
612 : LDC  2, 1(0) ;  Load 1 into R2
613 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
614 : ST   1, 3(5) ;  Store function result into stack frame
615 : LD   6, 0(5) ;  Load return address
616 : LDA  7, 0(6) ;  Return to caller
617 : LD   1, 1(5) ;  Load parameter 'p' into R1
618 : ST   1, 4(5) ;  Spill Temporary
619 : LD   1, 2(5) ;  Load parameter 'q' into R1
620 : ST   1, 5(5) ;  Spill Temporary
621 : LDA 4, 4(5) ; Restore Callee frame base
622 : LD   1, 5(5) ;  Restore Temporary
623 : ST 1, 2(4) ;  Store argument 1 into callee frame
624 : LD   1, 4(5) ;  Restore Temporary
625 : ST 1, 1(4) ;  Store argument 0 into callee frame
626 : LDA 4, 4(5) ; Restore Call frame base
627 : LDA 6, 631(0) ;  Compute return address
628 : ST 6, 0(4) ;  Store return address in callee frame
629 : ADD 5, 4, 0 ;  Update pointer
630 : LDA 7, 691(0) ;  Call LT
631 : LD 1, 3(5) ;  Load callee return value into R1
632 : LDC 4, 4(0) ;  Load frame size
633 : SUB 5, 5, 4 ;  Restore pointer
634 : ST   1, 4(5) ;  Spill Temporary
635 : LD   1, 1(5) ;  Load parameter 'p' into R1
636 : ST   1, 5(5) ;  Spill Temporary
637 : LD   1, 2(5) ;  Load parameter 'q' into R1
638 : ST   1, 6(5) ;  Spill Temporary
639 : LDA 4, 4(5) ; Restore Callee frame base
640 : LD   1, 6(5) ;  Restore Temporary
641 : ST 1, 2(4) ;  Store argument 1 into callee frame
642 : LD   1, 5(5) ;  Restore Temporary
643 : ST 1, 1(4) ;  Store argument 0 into callee frame
644 : LDA 4, 4(5) ; Restore Call frame base
645 : LDA 6, 649(0) ;  Compute return address
646 : ST 6, 0(4) ;  Store return address in callee frame
647 : ADD 5, 4, 0 ;  Update pointer
648 : LDA 7, 679(0) ;  Call EQ
649 : LD 1, 3(5) ;  Load callee return value into R1
650 : LDC 4, 4(0) ;  Load frame size
651 : SUB 5, 5, 4 ;  Restore pointer
652 : LD   2, 4(5) ;  Restore Temporary
653 : ADD  1, 2, 1 ;  R1 = left OR right
654 : ST   1, 3(5) ;  Store function result into stack frame
655 : LD   6, 0(5) ;  Load return address
656 : LDA  7, 0(6) ;  Return to caller
657 : LD   1, 1(5) ;  Load parameter 'p' into R1
658 : ST   1, 4(5) ;  Spill Temporary
659 : LD   1, 2(5) ;  Load parameter 'q' into R1
660 : ST   1, 5(5) ;  Spill Temporary
661 : LDA 4, 4(5) ; Restore Callee frame base
662 : LD   1, 5(5) ;  Restore Temporary
663 : ST 1, 2(4) ;  Store argument 1 into callee frame
664 : LD   1, 4(5) ;  Restore Temporary
665 : ST 1, 1(4) ;  Store argument 0 into callee frame
666 : LDA 4, 4(5) ; Restore Call frame base
667 : LDA 6, 671(0) ;  Compute return address
668 : ST 6, 0(4) ;  Store return address in callee frame
669 : ADD 5, 4, 0 ;  Update pointer
670 : LDA 7, 679(0) ;  Call EQ
671 : LD 1, 3(5) ;  Load callee return value into R1
672 : LDC 4, 4(0) ;  Load frame size
673 : SUB 5, 5, 4 ;  Restore pointer
674 : LDC  2, 1(0) ;  Load 1 into R2
675 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
676 : ST   1, 3(5) ;  Store function result into stack frame
677 : LD   6, 0(5) ;  Load return address
678 : LDA  7, 0(6) ;  Return to caller
679 : LD   1, 1(5) ;  Load parameter 'p' into R1
680 : ADD  3, 1, 0 ;  Save left operand
681 : LD   1, 2(5) ;  Load parameter 'q' into R1
682 : ADD  2, 3, 0 ;  restore left operand
683 : SUB  1, 2, 1 ;  left - right for equality check
684 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
685 : LDC  1, 0(0) ;  false
686 : LDA  7, 1(7) ;  skip setting true
687 : LDC  1, 1(0) ;  true
688 : ST   1, 3(5) ;  Store function result into stack frame
689 : LD   6, 0(5) ;  Load return address
690 : LDA  7, 0(6) ;  Return to caller
691 : LD   1, 1(5) ;  Load parameter 'p' into R1
692 : ADD  3, 1, 0 ;  Save left operand
693 : LD   1, 2(5) ;  Load parameter 'q' into R1
694 : ADD  2, 3, 0 ;  restore left operand
695 : SUB  1, 2, 1 ;  left - right for less-than check
696 : JLT  1, 2(7) ;  If R1 < 0, jump to true
697 : LDC  1, 0(0) ;  false
698 : LDA  7, 1(7) ;  skip setting true
699 : LDC  1, 1(0) ;  true
700 : ST   1, 3(5) ;  Store function result into stack frame
701 : LD   6, 0(5) ;  Load return address
702 : LDA  7, 0(6) ;  Return to caller
703 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
704 : SUB  1, 0, 1 ;  Negate value in R1
705 : ADD  3, 1, 0 ;  Save left operand
706 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
707 : ADD  2, 3, 0 ;  restore left operand
708 : SUB  1, 2, 1 ;  R1 = left - right
709 : ST   1, 1(5) ;  Store function result into stack frame
710 : LD   6, 0(5) ;  Load return address
711 : LDA  7, 0(6) ;  Return to caller
712 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
713 : ST   1, 1(5) ;  Store function result into stack frame
714 : LD   6, 0(5) ;  Load return address
715 : LDA  7, 0(6) ;  Return to caller
