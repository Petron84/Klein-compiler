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
12 : LDA  4, 3(5) ; Restore Callee frame base
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDA  4, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0) ;  Compute return address
16 : ST 6, 0(4) ;  Store return address in callee frame
17 : ADD  5, 4, 0 ;  Update pointer
18 : LDA 7, 213(0) ;  Call SQRT
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4, 3(0) ;  Load frame size
21 : SUB  5, 5, 4 ;  Restore pointer
22 : LDA  4, 3(5) ;  Update DMEM pointer
23 : LDA 6, 27(0) ;  Compute return address
24 : ST   6, 0(4) ;  Store return address
25 : ADD  5, 4, 0 ;  Updated Pointer
26 : LDA  7, 8(0) ; Call print
27 : LDC  4, 3(0) ;  Load frame size
28 : SUB  5, 5, 4 ;  Restore pointer
29 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
30 : LDA  4, 3(5) ; Restore Callee frame base
31 : ST 1, 1(4) ;  Store argument 0 into callee frame
32 : LDA  4, 3(5) ; Restore Call frame base
33 : LDA 6, 37(0) ;  Compute return address
34 : ST 6, 0(4) ;  Store return address in callee frame
35 : ADD  5, 4, 0 ;  Update pointer
36 : LDA 7, 233(0) ;  Call ODD
37 : LD 1, 2(5) ;  Load callee return value into R1
38 : LDC  4, 3(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : ST 1, 2(5) ;  Store result into current frame's return slot
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LD   1, 4(5) ;  Load parameter 'mid' into R1
45 : ADD  3, 1, 0 ;  Store left operand into temporary register
46 : LD   1, 4(5) ;  Load parameter 'mid' into R1
47 : ADD  2, 3, 0 ;  Restore left operand
48 : MUL  1, 2, 1 ;  R1 = left * right
49 : LDA  4, 4(5) ; Restore Callee frame base
50 : ST 1, 1(4) ;  Store argument 0 into callee frame
51 : LD   1, 1(5) ;  Load parameter 'n' into R1
52 : LDA  4, 4(5) ; Restore Callee frame base
53 : ST 1, 2(4) ;  Store argument 1 into callee frame
54 : LDA  4, 4(5) ; Restore Call frame base
55 : LDA 6, 59(0) ;  Compute return address
56 : ST 6, 0(4) ;  Store return address in callee frame
57 : ADD  5, 4, 0 ;  Update pointer
58 : LDA 7, 540(0) ;  Call LE
59 : LD 1, 3(5) ;  Load callee return value into R1
60 : LDC  4, 4(0) ;  Load frame size
61 : SUB  5, 5, 4 ;  Restore pointer
62 : JEQ  1, 81(0) ;  If condition is false, jump to ELSE
63 : LD   1, 1(5) ;  Load parameter 'n' into R1
64 : LDA  4, 5(5) ; Restore Callee frame base
65 : ST 1, 1(4) ;  Store argument 0 into callee frame
66 : LD   1, 4(5) ;  Load parameter 'mid' into R1
67 : LDA  4, 5(5) ; Restore Callee frame base
68 : ST 1, 2(4) ;  Store argument 1 into callee frame
69 : LD   1, 3(5) ;  Load parameter 'high' into R1
70 : LDA  4, 5(5) ; Restore Callee frame base
71 : ST 1, 3(4) ;  Store argument 2 into callee frame
72 : LDA  4, 5(5) ; Restore Call frame base
73 : LDA 6, 77(0) ;  Compute return address
74 : ST 6, 0(4) ;  Store return address in callee frame
75 : ADD  5, 4, 0 ;  Update pointer
76 : LDA 7, 101(0) ;  Call SQRTSEARCH
77 : LD 1, 4(5) ;  Load callee return value into R1
78 : LDC  4, 5(0) ;  Load frame size
79 : SUB  5, 5, 4 ;  Restore pointer
80 : LDA  7, 98(0) ;  Skip ELSE block
81 : LD   1, 1(5) ;  Load parameter 'n' into R1
82 : LDA  4, 5(5) ; Restore Callee frame base
83 : ST 1, 1(4) ;  Store argument 0 into callee frame
84 : LD   1, 2(5) ;  Load parameter 'low' into R1
85 : LDA  4, 5(5) ; Restore Callee frame base
86 : ST 1, 2(4) ;  Store argument 1 into callee frame
87 : LD   1, 4(5) ;  Load parameter 'mid' into R1
88 : LDA  4, 5(5) ; Restore Callee frame base
89 : ST 1, 3(4) ;  Store argument 2 into callee frame
90 : LDA  4, 5(5) ; Restore Call frame base
91 : LDA 6, 95(0) ;  Compute return address
92 : ST 6, 0(4) ;  Store return address in callee frame
93 : ADD  5, 4, 0 ;  Update pointer
94 : LDA 7, 101(0) ;  Call SQRTSEARCH
95 : LD 1, 4(5) ;  Load callee return value into R1
96 : LDC  4, 5(0) ;  Load frame size
97 : SUB  5, 5, 4 ;  Restore pointer
98 : ST   1, 5(5) ;  Store function result into stack frame
99 : LD   6, 0(5) ;  Load return address
100 : LDA  7, 0(6) ;  Return to caller
101 : LD   1, 3(5) ;  Load parameter 'high' into R1
102 : LDA  4, 4(5) ; Restore Callee frame base
103 : ST 1, 1(4) ;  Store argument 0 into callee frame
104 : LD   1, 2(5) ;  Load parameter 'low' into R1
105 : ADD  3, 1, 0 ;  Store left operand into temporary register
106 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
107 : ADD  2, 3, 0 ;  Restore left operand
108 : ADD  1, 2, 1 ;  R1 = left + right
109 : LDA  4, 4(5) ; Restore Callee frame base
110 : ST 1, 2(4) ;  Store argument 1 into callee frame
111 : LDA  4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD  5, 4, 0 ;  Update pointer
115 : LDA 7, 540(0) ;  Call LE
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC  4, 4(0) ;  Load frame size
118 : SUB  5, 5, 4 ;  Restore pointer
119 : JEQ  1, 173(0) ;  If condition is false, jump to ELSE
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LD   1, 2(5) ;  Load parameter 'low' into R1
123 : LDA  4, 4(5) ; Restore Callee frame base
124 : ST 1, 1(4) ;  Store argument 0 into callee frame
125 : LD   1, 2(5) ;  Load parameter 'low' into R1
126 : LDA  4, 4(5) ; Restore Callee frame base
127 : ST 1, 2(4) ;  Store argument 1 into callee frame
128 : LDA  4, 4(5) ; Restore Call frame base
129 : LDA 6, 133(0) ;  Compute return address
130 : ST 6, 0(4) ;  Store return address in callee frame
131 : ADD  5, 4, 0 ;  Update pointer
132 : LDA 7, 462(0) ;  Call TIMES
133 : LD 1, 3(5) ;  Load callee return value into R1
134 : LDC  4, 4(0) ;  Load frame size
135 : SUB  5, 5, 4 ;  Restore pointer
136 : ADD  2, 3, 0 ;  Restore left operand
137 : SUB  1, 2, 1 ;  R1 = left - right
138 : LDA  4, 4(5) ; Restore Callee frame base
139 : ST 1, 1(4) ;  Store argument 0 into callee frame
140 : LD   1, 3(5) ;  Load parameter 'high' into R1
141 : LDA  4, 4(5) ; Restore Callee frame base
142 : ST 1, 1(4) ;  Store argument 0 into callee frame
143 : LD   1, 3(5) ;  Load parameter 'high' into R1
144 : LDA  4, 4(5) ; Restore Callee frame base
145 : ST 1, 2(4) ;  Store argument 1 into callee frame
146 : LDA  4, 4(5) ; Restore Call frame base
147 : LDA 6, 151(0) ;  Compute return address
148 : ST 6, 0(4) ;  Store return address in callee frame
149 : ADD  5, 4, 0 ;  Update pointer
150 : LDA 7, 462(0) ;  Call TIMES
151 : LD 1, 3(5) ;  Load callee return value into R1
152 : LDC  4, 4(0) ;  Load frame size
153 : SUB  5, 5, 4 ;  Restore pointer
154 : ADD  3, 1, 0 ;  Store left operand into temporary register
155 : LD   1, 1(5) ;  Load parameter 'n' into R1
156 : ADD  2, 3, 0 ;  Restore left operand
157 : SUB  1, 2, 1 ;  R1 = left - right
158 : LDA  4, 4(5) ; Restore Callee frame base
159 : ST 1, 2(4) ;  Store argument 1 into callee frame
160 : LDA  4, 4(5) ; Restore Call frame base
161 : LDA 6, 165(0) ;  Compute return address
162 : ST 6, 0(4) ;  Store return address in callee frame
163 : ADD  5, 4, 0 ;  Update pointer
164 : LDA 7, 540(0) ;  Call LE
165 : LD 1, 3(5) ;  Load callee return value into R1
166 : LDC  4, 4(0) ;  Load frame size
167 : SUB  5, 5, 4 ;  Restore pointer
168 : JEQ  1, 171(0) ;  If condition is false, jump to ELSE
169 : LD   1, 2(5) ;  Load parameter 'low' into R1
170 : LDA  7, 172(0) ;  Skip ELSE block
171 : LD   1, 3(5) ;  Load parameter 'high' into R1
172 : LDA  7, 210(0) ;  Skip ELSE block
173 : LD   1, 1(5) ;  Load parameter 'n' into R1
174 : LDA  4, 6(5) ; Restore Callee frame base
175 : ST 1, 1(4) ;  Store argument 0 into callee frame
176 : LD   1, 2(5) ;  Load parameter 'low' into R1
177 : LDA  4, 6(5) ; Restore Callee frame base
178 : ST 1, 2(4) ;  Store argument 1 into callee frame
179 : LD   1, 3(5) ;  Load parameter 'high' into R1
180 : LDA  4, 6(5) ; Restore Callee frame base
181 : ST 1, 3(4) ;  Store argument 2 into callee frame
182 : LD   1, 2(5) ;  Load parameter 'low' into R1
183 : LDA  4, 4(5) ; Restore Callee frame base
184 : ST 1, 1(4) ;  Store argument 0 into callee frame
185 : LD   1, 3(5) ;  Load parameter 'high' into R1
186 : LDA  4, 4(5) ; Restore Callee frame base
187 : ST 1, 2(4) ;  Store argument 1 into callee frame
188 : LDA  4, 4(5) ; Restore Call frame base
189 : LDA 6, 193(0) ;  Compute return address
190 : ST 6, 0(4) ;  Store return address in callee frame
191 : ADD  5, 4, 0 ;  Update pointer
192 : LDA 7, 478(0) ;  Call PLUS
193 : LD 1, 3(5) ;  Load callee return value into R1
194 : LDC  4, 4(0) ;  Load frame size
195 : SUB  5, 5, 4 ;  Restore pointer
196 : ADD  3, 1, 0 ;  Store left operand into temporary register
197 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
198 : ADD  2, 3, 0 ;  Restore left operand
199 : DIV  1, 2, 1 ;  R1 = left / right
200 : LDA  4, 6(5) ; Restore Callee frame base
201 : ST 1, 4(4) ;  Store argument 3 into callee frame
202 : LDA  4, 6(5) ; Restore Call frame base
203 : LDA 6, 207(0) ;  Compute return address
204 : ST 6, 0(4) ;  Store return address in callee frame
205 : ADD  5, 4, 0 ;  Update pointer
206 : LDA 7, 44(0) ;  Call SQRTSPLIT
207 : LD 1, 5(5) ;  Load callee return value into R1
208 : LDC  4, 6(0) ;  Load frame size
209 : SUB  5, 5, 4 ;  Restore pointer
210 : ST   1, 4(5) ;  Store function result into stack frame
211 : LD   6, 0(5) ;  Load return address
212 : LDA  7, 0(6) ;  Return to caller
213 : LD   1, 1(5) ;  Load parameter 'n' into R1
214 : LDA  4, 5(5) ; Restore Callee frame base
215 : ST 1, 1(4) ;  Store argument 0 into callee frame
216 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
217 : LDA  4, 5(5) ; Restore Callee frame base
218 : ST 1, 2(4) ;  Store argument 1 into callee frame
219 : LD   1, 1(5) ;  Load parameter 'n' into R1
220 : LDA  4, 5(5) ; Restore Callee frame base
221 : ST 1, 3(4) ;  Store argument 2 into callee frame
222 : LDA  4, 5(5) ; Restore Call frame base
223 : LDA 6, 227(0) ;  Compute return address
224 : ST 6, 0(4) ;  Store return address in callee frame
225 : ADD  5, 4, 0 ;  Update pointer
226 : LDA 7, 101(0) ;  Call SQRTSEARCH
227 : LD 1, 4(5) ;  Load callee return value into R1
228 : LDC  4, 5(0) ;  Load frame size
229 : SUB  5, 5, 4 ;  Restore pointer
230 : ST   1, 2(5) ;  Store function result into stack frame
231 : LD   6, 0(5) ;  Load return address
232 : LDA  7, 0(6) ;  Return to caller
233 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
234 : LDA  4, 4(5) ; Restore Callee frame base
235 : ST 1, 1(4) ;  Store argument 0 into callee frame
236 : LD   1, 1(5) ;  Load parameter 'n' into R1
237 : LDA  4, 4(5) ; Restore Callee frame base
238 : ST 1, 2(4) ;  Store argument 1 into callee frame
239 : LDA  4, 4(5) ; Restore Call frame base
240 : LDA 6, 244(0) ;  Compute return address
241 : ST 6, 0(4) ;  Store return address in callee frame
242 : ADD  5, 4, 0 ;  Update pointer
243 : LDA 7, 540(0) ;  Call LE
244 : LD 1, 3(5) ;  Load callee return value into R1
245 : LDC  4, 4(0) ;  Load frame size
246 : SUB  5, 5, 4 ;  Restore pointer
247 : JEQ  1, 293(0) ;  If condition is false, jump to ELSE
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : LDA  4, 4(5) ; Restore Callee frame base
250 : ST 1, 1(4) ;  Store argument 0 into callee frame
251 : LD   1, 1(5) ;  Load parameter 'n' into R1
252 : LDA  4, 4(5) ; Restore Callee frame base
253 : ST 1, 1(4) ;  Store argument 0 into callee frame
254 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
255 : LDA  4, 4(5) ; Restore Callee frame base
256 : ST 1, 2(4) ;  Store argument 1 into callee frame
257 : LDA  4, 4(5) ; Restore Call frame base
258 : LDA 6, 262(0) ;  Compute return address
259 : ST 6, 0(4) ;  Store return address in callee frame
260 : ADD  5, 4, 0 ;  Update pointer
261 : LDA 7, 454(0) ;  Call DIV
262 : LD 1, 3(5) ;  Load callee return value into R1
263 : LDC  4, 4(0) ;  Load frame size
264 : SUB  5, 5, 4 ;  Restore pointer
265 : ADD  3, 1, 0 ;  Store left operand into temporary register
266 : LD   1, 1(5) ;  Load parameter 'n' into R1
267 : LDA  4, 4(5) ; Restore Callee frame base
268 : ST 1, 1(4) ;  Store argument 0 into callee frame
269 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
270 : LDA  4, 4(5) ; Restore Callee frame base
271 : ST 1, 2(4) ;  Store argument 1 into callee frame
272 : LDA  4, 4(5) ; Restore Call frame base
273 : LDA 6, 277(0) ;  Compute return address
274 : ST 6, 0(4) ;  Store return address in callee frame
275 : ADD  5, 4, 0 ;  Update pointer
276 : LDA 7, 454(0) ;  Call DIV
277 : LD 1, 3(5) ;  Load callee return value into R1
278 : LDC  4, 4(0) ;  Load frame size
279 : SUB  5, 5, 4 ;  Restore pointer
280 : ADD  2, 3, 0 ;  Restore left operand
281 : ADD  1, 2, 1 ;  R1 = left + right
282 : LDA  4, 4(5) ; Restore Callee frame base
283 : ST 1, 2(4) ;  Store argument 1 into callee frame
284 : LDA  4, 4(5) ; Restore Call frame base
285 : LDA 6, 289(0) ;  Compute return address
286 : ST 6, 0(4) ;  Store return address in callee frame
287 : ADD  5, 4, 0 ;  Update pointer
288 : LDA 7, 502(0) ;  Call GT
289 : LD 1, 3(5) ;  Load callee return value into R1
290 : LDC  4, 4(0) ;  Load frame size
291 : SUB  5, 5, 4 ;  Restore pointer
292 : LDA  7, 367(0) ;  Skip ELSE block
293 : LD   1, 1(5) ;  Load parameter 'n' into R1
294 : LDA  4, 3(5) ; Restore Callee frame base
295 : ST 1, 1(4) ;  Store argument 0 into callee frame
296 : LDA  4, 3(5) ; Restore Call frame base
297 : LDA 6, 301(0) ;  Compute return address
298 : ST 6, 0(4) ;  Store return address in callee frame
299 : ADD  5, 4, 0 ;  Update pointer
300 : LDA 7, 449(0) ;  Call NEG
301 : LD 1, 2(5) ;  Load callee return value into R1
302 : LDC  4, 3(0) ;  Load frame size
303 : SUB  5, 5, 4 ;  Restore pointer
304 : LDA  4, 4(5) ; Restore Callee frame base
305 : ST 1, 1(4) ;  Store argument 0 into callee frame
306 : LD   1, 1(5) ;  Load parameter 'n' into R1
307 : LDA  4, 3(5) ; Restore Callee frame base
308 : ST 1, 1(4) ;  Store argument 0 into callee frame
309 : LDA  4, 3(5) ; Restore Call frame base
310 : LDA 6, 314(0) ;  Compute return address
311 : ST 6, 0(4) ;  Store return address in callee frame
312 : ADD  5, 4, 0 ;  Update pointer
313 : LDA 7, 449(0) ;  Call NEG
314 : LD 1, 2(5) ;  Load callee return value into R1
315 : LDC  4, 3(0) ;  Load frame size
316 : SUB  5, 5, 4 ;  Restore pointer
317 : LDA  4, 4(5) ; Restore Callee frame base
318 : ST 1, 1(4) ;  Store argument 0 into callee frame
319 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
320 : LDA  4, 4(5) ; Restore Callee frame base
321 : ST 1, 2(4) ;  Store argument 1 into callee frame
322 : LDA  4, 4(5) ; Restore Call frame base
323 : LDA 6, 327(0) ;  Compute return address
324 : ST 6, 0(4) ;  Store return address in callee frame
325 : ADD  5, 4, 0 ;  Update pointer
326 : LDA 7, 454(0) ;  Call DIV
327 : LD 1, 3(5) ;  Load callee return value into R1
328 : LDC  4, 4(0) ;  Load frame size
329 : SUB  5, 5, 4 ;  Restore pointer
330 : ADD  3, 1, 0 ;  Store left operand into temporary register
331 : LD   1, 1(5) ;  Load parameter 'n' into R1
332 : LDA  4, 3(5) ; Restore Callee frame base
333 : ST 1, 1(4) ;  Store argument 0 into callee frame
334 : LDA  4, 3(5) ; Restore Call frame base
335 : LDA 6, 339(0) ;  Compute return address
336 : ST 6, 0(4) ;  Store return address in callee frame
337 : ADD  5, 4, 0 ;  Update pointer
338 : LDA 7, 449(0) ;  Call NEG
339 : LD 1, 2(5) ;  Load callee return value into R1
340 : LDC  4, 3(0) ;  Load frame size
341 : SUB  5, 5, 4 ;  Restore pointer
342 : LDA  4, 4(5) ; Restore Callee frame base
343 : ST 1, 1(4) ;  Store argument 0 into callee frame
344 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
345 : LDA  4, 4(5) ; Restore Callee frame base
346 : ST 1, 2(4) ;  Store argument 1 into callee frame
347 : LDA  4, 4(5) ; Restore Call frame base
348 : LDA 6, 352(0) ;  Compute return address
349 : ST 6, 0(4) ;  Store return address in callee frame
350 : ADD  5, 4, 0 ;  Update pointer
351 : LDA 7, 454(0) ;  Call DIV
352 : LD 1, 3(5) ;  Load callee return value into R1
353 : LDC  4, 4(0) ;  Load frame size
354 : SUB  5, 5, 4 ;  Restore pointer
355 : ADD  2, 3, 0 ;  Restore left operand
356 : ADD  1, 2, 1 ;  R1 = left + right
357 : LDA  4, 4(5) ; Restore Callee frame base
358 : ST 1, 2(4) ;  Store argument 1 into callee frame
359 : LDA  4, 4(5) ; Restore Call frame base
360 : LDA 6, 364(0) ;  Compute return address
361 : ST 6, 0(4) ;  Store return address in callee frame
362 : ADD  5, 4, 0 ;  Update pointer
363 : LDA 7, 502(0) ;  Call GT
364 : LD 1, 3(5) ;  Load callee return value into R1
365 : LDC  4, 4(0) ;  Load frame size
366 : SUB  5, 5, 4 ;  Restore pointer
367 : ST   1, 2(5) ;  Store function result into stack frame
368 : LD   6, 0(5) ;  Load return address
369 : LDA  7, 0(6) ;  Return to caller
370 : LD   1, 2(5) ;  Load parameter 'n' into R1
371 : ADD  3, 1, 0 ;  Store left operand into temporary register
372 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
373 : ADD  2, 3, 0 ;  Restore left operand
374 : SUB  1, 2, 1 ;  left - right for equality check
375 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
376 : LDC  1, 0(0) ;  false
377 : LDA  7, 1(7) ;  skip setting true
378 : LDC  1, 1(0) ;  true
379 : JEQ  1, 382(0) ;  If condition is false, jump to ELSE
380 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
381 : LDA  7, 404(0) ;  Skip ELSE block
382 : LD   1, 1(5) ;  Load parameter 'm' into R1
383 : ADD  3, 1, 0 ;  Store left operand into temporary register
384 : LD   1, 1(5) ;  Load parameter 'm' into R1
385 : LDA  4, 4(5) ; Restore Callee frame base
386 : ST 1, 1(4) ;  Store argument 0 into callee frame
387 : LD   1, 2(5) ;  Load parameter 'n' into R1
388 : ADD  3, 1, 0 ;  Store left operand into temporary register
389 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
390 : ADD  2, 3, 0 ;  Restore left operand
391 : SUB  1, 2, 1 ;  R1 = left - right
392 : LDA  4, 4(5) ; Restore Callee frame base
393 : ST 1, 2(4) ;  Store argument 1 into callee frame
394 : LDA  4, 4(5) ; Restore Call frame base
395 : LDA 6, 399(0) ;  Compute return address
396 : ST 6, 0(4) ;  Store return address in callee frame
397 : ADD  5, 4, 0 ;  Update pointer
398 : LDA 7, 370(0) ;  Call EXP
399 : LD 1, 3(5) ;  Load callee return value into R1
400 : LDC  4, 4(0) ;  Load frame size
401 : SUB  5, 5, 4 ;  Restore pointer
402 : ADD  2, 3, 0 ;  Restore left operand
403 : MUL  1, 2, 1 ;  R1 = left * right
404 : ST   1, 3(5) ;  Store function result into stack frame
405 : LD   6, 0(5) ;  Load return address
406 : LDA  7, 0(6) ;  Return to caller
407 : LD   1, 1(5) ;  Load parameter 'm' into R1
408 : ADD  3, 1, 0 ;  Store left operand into temporary register
409 : LD   1, 1(5) ;  Load parameter 'm' into R1
410 : ADD  3, 1, 0 ;  Store left operand into temporary register
411 : LD   1, 2(5) ;  Load parameter 'n' into R1
412 : ADD  2, 3, 0 ;  Restore left operand
413 : DIV  1, 2, 1 ;  R1 = left / right
414 : ADD  3, 1, 0 ;  Store left operand into temporary register
415 : LD   1, 2(5) ;  Load parameter 'n' into R1
416 : ADD  2, 3, 0 ;  Restore left operand
417 : MUL  1, 2, 1 ;  R1 = left * right
418 : ADD  2, 3, 0 ;  Restore left operand
419 : SUB  1, 2, 1 ;  R1 = left - right
420 : ST   1, 3(5) ;  Store function result into stack frame
421 : LD   6, 0(5) ;  Load return address
422 : LDA  7, 0(6) ;  Return to caller
423 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
424 : ADD  3, 1, 0 ;  Store left operand into temporary register
425 : LD   1, 1(5) ;  Load parameter 'n' into R1
426 : ADD  2, 3, 0 ;  Restore left operand
427 : SUB  1, 2, 1 ;  left - right for less-than check
428 : JLT  1, 2(7) ;  If R1 < 0, jump to true
429 : LDC  1, 0(0) ;  false
430 : LDA  7, 1(7) ;  skip setting true
431 : LDC  1, 1(0) ;  true
432 : JEQ  1, 435(0) ;  If condition is false, jump to ELSE
433 : LD   1, 1(5) ;  Load parameter 'n' into R1
434 : LDA  7, 446(0) ;  Skip ELSE block
435 : LD   1, 1(5) ;  Load parameter 'n' into R1
436 : LDA  4, 3(5) ; Restore Callee frame base
437 : ST 1, 1(4) ;  Store argument 0 into callee frame
438 : LDA  4, 3(5) ; Restore Call frame base
439 : LDA 6, 443(0) ;  Compute return address
440 : ST 6, 0(4) ;  Store return address in callee frame
441 : ADD  5, 4, 0 ;  Update pointer
442 : LDA 7, 449(0) ;  Call NEG
443 : LD 1, 2(5) ;  Load callee return value into R1
444 : LDC  4, 3(0) ;  Load frame size
445 : SUB  5, 5, 4 ;  Restore pointer
446 : ST   1, 2(5) ;  Store function result into stack frame
447 : LD   6, 0(5) ;  Load return address
448 : LDA  7, 0(6) ;  Return to caller
449 : LD   1, 1(5) ;  Load parameter 'n' into R1
450 : SUB  1, 0, 1 ;  Negate value in R1
451 : ST   1, 2(5) ;  Store function result into stack frame
452 : LD   6, 0(5) ;  Load return address
453 : LDA  7, 0(6) ;  Return to caller
454 : LD   1, 1(5) ;  Load parameter 'p' into R1
455 : ADD  3, 1, 0 ;  Store left operand into temporary register
456 : LD   1, 2(5) ;  Load parameter 'q' into R1
457 : ADD  2, 3, 0 ;  Restore left operand
458 : DIV  1, 2, 1 ;  R1 = left / right
459 : ST   1, 3(5) ;  Store function result into stack frame
460 : LD   6, 0(5) ;  Load return address
461 : LDA  7, 0(6) ;  Return to caller
462 : LD   1, 1(5) ;  Load parameter 'p' into R1
463 : ADD  3, 1, 0 ;  Store left operand into temporary register
464 : LD   1, 2(5) ;  Load parameter 'q' into R1
465 : ADD  2, 3, 0 ;  Restore left operand
466 : MUL  1, 2, 1 ;  R1 = left * right
467 : ST   1, 3(5) ;  Store function result into stack frame
468 : LD   6, 0(5) ;  Load return address
469 : LDA  7, 0(6) ;  Return to caller
470 : LD   1, 1(5) ;  Load parameter 'p' into R1
471 : ADD  3, 1, 0 ;  Store left operand into temporary register
472 : LD   1, 2(5) ;  Load parameter 'q' into R1
473 : ADD  2, 3, 0 ;  Restore left operand
474 : SUB  1, 2, 1 ;  R1 = left - right
475 : ST   1, 3(5) ;  Store function result into stack frame
476 : LD   6, 0(5) ;  Load return address
477 : LDA  7, 0(6) ;  Return to caller
478 : LD   1, 1(5) ;  Load parameter 'p' into R1
479 : ADD  3, 1, 0 ;  Store left operand into temporary register
480 : LD   1, 2(5) ;  Load parameter 'q' into R1
481 : ADD  2, 3, 0 ;  Restore left operand
482 : ADD  1, 2, 1 ;  R1 = left + right
483 : ST   1, 3(5) ;  Store function result into stack frame
484 : LD   6, 0(5) ;  Load return address
485 : LDA  7, 0(6) ;  Return to caller
486 : LD   1, 1(5) ;  Load parameter 'p' into R1
487 : JEQ  1, 490(0) ;  If condition is false, jump to ELSE
488 : LD   1, 2(5) ;  Load parameter 'q' into R1
489 : LDA  7, 491(0) ;  Skip ELSE block
490 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
491 : ST   1, 3(5) ;  Store function result into stack frame
492 : LD   6, 0(5) ;  Load return address
493 : LDA  7, 0(6) ;  Return to caller
494 : LD   1, 1(5) ;  Load parameter 'p' into R1
495 : ADD  3, 1, 0 ;  Store left operand into temporary register
496 : LD   1, 2(5) ;  Load parameter 'q' into R1
497 : ADD  2, 3, 0 ;  Restore left operand
498 : ADD  1, 2, 1 ;  R1 = left OR right
499 : ST   1, 3(5) ;  Store function result into stack frame
500 : LD   6, 0(5) ;  Load return address
501 : LDA  7, 0(6) ;  Return to caller
502 : LD   1, 1(5) ;  Load parameter 'p' into R1
503 : LDA  4, 4(5) ; Restore Callee frame base
504 : ST 1, 1(4) ;  Store argument 0 into callee frame
505 : LD   1, 2(5) ;  Load parameter 'q' into R1
506 : LDA  4, 4(5) ; Restore Callee frame base
507 : ST 1, 2(4) ;  Store argument 1 into callee frame
508 : LDA  4, 4(5) ; Restore Call frame base
509 : LDA 6, 513(0) ;  Compute return address
510 : ST 6, 0(4) ;  Store return address in callee frame
511 : ADD  5, 4, 0 ;  Update pointer
512 : LDA 7, 540(0) ;  Call LE
513 : LD 1, 3(5) ;  Load callee return value into R1
514 : LDC  4, 4(0) ;  Load frame size
515 : SUB  5, 5, 4 ;  Restore pointer
516 : LDC  2, 1(0) ;  Load 1 into R2
517 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
518 : ST   1, 3(5) ;  Store function result into stack frame
519 : LD   6, 0(5) ;  Load return address
520 : LDA  7, 0(6) ;  Return to caller
521 : LD   1, 1(5) ;  Load parameter 'p' into R1
522 : LDA  4, 4(5) ; Restore Callee frame base
523 : ST 1, 1(4) ;  Store argument 0 into callee frame
524 : LD   1, 2(5) ;  Load parameter 'q' into R1
525 : LDA  4, 4(5) ; Restore Callee frame base
526 : ST 1, 2(4) ;  Store argument 1 into callee frame
527 : LDA  4, 4(5) ; Restore Call frame base
528 : LDA 6, 532(0) ;  Compute return address
529 : ST 6, 0(4) ;  Store return address in callee frame
530 : ADD  5, 4, 0 ;  Update pointer
531 : LDA 7, 605(0) ;  Call LT
532 : LD 1, 3(5) ;  Load callee return value into R1
533 : LDC  4, 4(0) ;  Load frame size
534 : SUB  5, 5, 4 ;  Restore pointer
535 : LDC  2, 1(0) ;  Load 1 into R2
536 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
537 : ST   1, 3(5) ;  Store function result into stack frame
538 : LD   6, 0(5) ;  Load return address
539 : LDA  7, 0(6) ;  Return to caller
540 : LD   1, 1(5) ;  Load parameter 'p' into R1
541 : LDA  4, 4(5) ; Restore Callee frame base
542 : ST 1, 1(4) ;  Store argument 0 into callee frame
543 : LD   1, 2(5) ;  Load parameter 'q' into R1
544 : LDA  4, 4(5) ; Restore Callee frame base
545 : ST 1, 2(4) ;  Store argument 1 into callee frame
546 : LDA  4, 4(5) ; Restore Call frame base
547 : LDA 6, 551(0) ;  Compute return address
548 : ST 6, 0(4) ;  Store return address in callee frame
549 : ADD  5, 4, 0 ;  Update pointer
550 : LDA 7, 605(0) ;  Call LT
551 : LD 1, 3(5) ;  Load callee return value into R1
552 : LDC  4, 4(0) ;  Load frame size
553 : SUB  5, 5, 4 ;  Restore pointer
554 : ADD  3, 1, 0 ;  Store left operand into temporary register
555 : LD   1, 1(5) ;  Load parameter 'p' into R1
556 : LDA  4, 4(5) ; Restore Callee frame base
557 : ST 1, 1(4) ;  Store argument 0 into callee frame
558 : LD   1, 2(5) ;  Load parameter 'q' into R1
559 : LDA  4, 4(5) ; Restore Callee frame base
560 : ST 1, 2(4) ;  Store argument 1 into callee frame
561 : LDA  4, 4(5) ; Restore Call frame base
562 : LDA 6, 566(0) ;  Compute return address
563 : ST 6, 0(4) ;  Store return address in callee frame
564 : ADD  5, 4, 0 ;  Update pointer
565 : LDA 7, 593(0) ;  Call EQ
566 : LD 1, 3(5) ;  Load callee return value into R1
567 : LDC  4, 4(0) ;  Load frame size
568 : SUB  5, 5, 4 ;  Restore pointer
569 : ADD  2, 3, 0 ;  Restore left operand
570 : ADD  1, 2, 1 ;  R1 = left OR right
571 : ST   1, 3(5) ;  Store function result into stack frame
572 : LD   6, 0(5) ;  Load return address
573 : LDA  7, 0(6) ;  Return to caller
574 : LD   1, 1(5) ;  Load parameter 'p' into R1
575 : LDA  4, 4(5) ; Restore Callee frame base
576 : ST 1, 1(4) ;  Store argument 0 into callee frame
577 : LD   1, 2(5) ;  Load parameter 'q' into R1
578 : LDA  4, 4(5) ; Restore Callee frame base
579 : ST 1, 2(4) ;  Store argument 1 into callee frame
580 : LDA  4, 4(5) ; Restore Call frame base
581 : LDA 6, 585(0) ;  Compute return address
582 : ST 6, 0(4) ;  Store return address in callee frame
583 : ADD  5, 4, 0 ;  Update pointer
584 : LDA 7, 593(0) ;  Call EQ
585 : LD 1, 3(5) ;  Load callee return value into R1
586 : LDC  4, 4(0) ;  Load frame size
587 : SUB  5, 5, 4 ;  Restore pointer
588 : LDC  2, 1(0) ;  Load 1 into R2
589 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
590 : ST   1, 3(5) ;  Store function result into stack frame
591 : LD   6, 0(5) ;  Load return address
592 : LDA  7, 0(6) ;  Return to caller
593 : LD   1, 1(5) ;  Load parameter 'p' into R1
594 : ADD  3, 1, 0 ;  Store left operand into temporary register
595 : LD   1, 2(5) ;  Load parameter 'q' into R1
596 : ADD  2, 3, 0 ;  Restore left operand
597 : SUB  1, 2, 1 ;  left - right for equality check
598 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
599 : LDC  1, 0(0) ;  false
600 : LDA  7, 1(7) ;  skip setting true
601 : LDC  1, 1(0) ;  true
602 : ST   1, 3(5) ;  Store function result into stack frame
603 : LD   6, 0(5) ;  Load return address
604 : LDA  7, 0(6) ;  Return to caller
605 : LD   1, 1(5) ;  Load parameter 'p' into R1
606 : ADD  3, 1, 0 ;  Store left operand into temporary register
607 : LD   1, 2(5) ;  Load parameter 'q' into R1
608 : ADD  2, 3, 0 ;  Restore left operand
609 : SUB  1, 2, 1 ;  left - right for less-than check
610 : JLT  1, 2(7) ;  If R1 < 0, jump to true
611 : LDC  1, 0(0) ;  false
612 : LDA  7, 1(7) ;  skip setting true
613 : LDC  1, 1(0) ;  true
614 : ST   1, 3(5) ;  Store function result into stack frame
615 : LD   6, 0(5) ;  Load return address
616 : LDA  7, 0(6) ;  Return to caller
617 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
618 : SUB  1, 0, 1 ;  Negate value in R1
619 : ADD  3, 1, 0 ;  Store left operand into temporary register
620 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
621 : ADD  2, 3, 0 ;  Restore left operand
622 : SUB  1, 2, 1 ;  R1 = left - right
623 : ST   1, 1(5) ;  Store function result into stack frame
624 : LD   6, 0(5) ;  Load return address
625 : LDA  7, 0(6) ;  Return to caller
626 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
627 : ST   1, 1(5) ;  Store function result into stack frame
628 : LD   6, 0(5) ;  Load return address
629 : LDA  7, 0(6) ;  Return to caller
