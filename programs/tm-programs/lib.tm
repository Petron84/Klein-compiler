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
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDA  3, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0)) ;  Compute return address
16 : ST 6, 0(3) ;  Store return address in callee frame
17 : ADD  5, 3, 0 ;  Update pointer
18 : LDA 7, 208(0) ;  Call SQRT
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4, 3(0) ;  Load frame size
21 : SUB  5, 5, 4 ;  Restore pointer
22 : LDA  3, 3(5) ;  Update DMEM pointer
23 : LDA 6, 27(0) ;  Compute return address
24 : ST   6, 0(3) ;  Store return address
25 : ADD  5, 3, 0 ;  Updated Pointer
26 : LDA  7, 8(0) ; Call print
27 : LDC  4, 3(0) ;  Load frame size
28 : SUB  5, 5, 4 ;  Restore pointer
29 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
30 : LDA  3, 3(5) ; Restore Callee frame base
31 : ST 1, 1(3) ;  Store argument 0 into callee frame
32 : LDA  3, 3(5) ; Restore Call frame base
33 : LDA 6, 37(0)) ;  Compute return address
34 : ST 6, 0(3) ;  Store return address in callee frame
35 : ADD  5, 3, 0 ;  Update pointer
36 : LDA 7, 228(0) ;  Call ODD
37 : LD 1, 2(5) ;  Load callee return value into R1
38 : LDC  4, 3(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : ST 1, 4(0) ;  Store function-call result into caller's return slot
41 : LD   1, 4(0) ;  Load return value into register 1
42 : LD  6, 2(0) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LD   1, 4(5) ;  Load parameter 'mid' into R1
45 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
46 : LD   1, 4(5) ;  Load parameter 'mid' into R1
47 : MUL  1, 2, 1 ;  R1 = left * right
48 : LDA  3, 6(5) ; Restore Callee frame base
49 : ST 1, 1(3) ;  Store argument 0 into callee frame
50 : LD   1, 1(5) ;  Load parameter 'n' into R1
51 : LDA  3, 6(5) ; Restore Callee frame base
52 : ST 1, 2(3) ;  Store argument 1 into callee frame
53 : LDA  3, 6(5) ; Restore Call frame base
54 : LDA 6, 58(0)) ;  Compute return address
55 : ST 6, 0(3) ;  Store return address in callee frame
56 : ADD  5, 3, 0 ;  Update pointer
57 : LDA 7, 521(0) ;  Call LE
58 : LD 1, 3(5) ;  Load callee return value into R1
59 : LDC  4, 6(0) ;  Load frame size
60 : SUB  5, 5, 4 ;  Restore pointer
61 : JEQ  1, 80(0) ;  If condition is false, jump to ELSE
62 : LD   1, 1(5) ;  Load parameter 'n' into R1
63 : LDA  3, 6(5) ; Restore Callee frame base
64 : ST 1, 1(3) ;  Store argument 0 into callee frame
65 : LD   1, 4(5) ;  Load parameter 'mid' into R1
66 : LDA  3, 6(5) ; Restore Callee frame base
67 : ST 1, 2(3) ;  Store argument 1 into callee frame
68 : LD   1, 3(5) ;  Load parameter 'high' into R1
69 : LDA  3, 6(5) ; Restore Callee frame base
70 : ST 1, 3(3) ;  Store argument 2 into callee frame
71 : LDA  3, 6(5) ; Restore Call frame base
72 : LDA 6, 76(0)) ;  Compute return address
73 : ST 6, 0(3) ;  Store return address in callee frame
74 : ADD  5, 3, 0 ;  Update pointer
75 : LDA 7, 100(0) ;  Call SQRTSEARCH
76 : LD 1, 4(5) ;  Load callee return value into R1
77 : LDC  4, 6(0) ;  Load frame size
78 : SUB  5, 5, 4 ;  Restore pointer
79 : LDA  7, 97(0) ;  Skip ELSE block
80 : LD   1, 1(5) ;  Load parameter 'n' into R1
81 : LDA  3, 6(5) ; Restore Callee frame base
82 : ST 1, 1(3) ;  Store argument 0 into callee frame
83 : LD   1, 2(5) ;  Load parameter 'low' into R1
84 : LDA  3, 6(5) ; Restore Callee frame base
85 : ST 1, 2(3) ;  Store argument 1 into callee frame
86 : LD   1, 4(5) ;  Load parameter 'mid' into R1
87 : LDA  3, 6(5) ; Restore Callee frame base
88 : ST 1, 3(3) ;  Store argument 2 into callee frame
89 : LDA  3, 6(5) ; Restore Call frame base
90 : LDA 6, 94(0)) ;  Compute return address
91 : ST 6, 0(3) ;  Store return address in callee frame
92 : ADD  5, 3, 0 ;  Update pointer
93 : LDA 7, 100(0) ;  Call SQRTSEARCH
94 : LD 1, 4(5) ;  Load callee return value into R1
95 : LDC  4, 6(0) ;  Load frame size
96 : SUB  5, 5, 4 ;  Restore pointer
97 : ST   1, 5(5) ;  Store function result into stack frame
98 : LD   6, 0(5) ;  Load return address
99 : LDA  7, 0(6) ;  Return to caller
100 : LD   1, 3(5) ;  Load parameter 'high' into R1
101 : LDA  3, 5(5) ; Restore Callee frame base
102 : ST 1, 1(3) ;  Store argument 0 into callee frame
103 : LD   1, 2(5) ;  Load parameter 'low' into R1
104 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
105 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
106 : ADD  1, 2, 1 ;  R1 = left + right
107 : LDA  3, 5(5) ; Restore Callee frame base
108 : ST 1, 2(3) ;  Store argument 1 into callee frame
109 : LDA  3, 5(5) ; Restore Call frame base
110 : LDA 6, 114(0)) ;  Compute return address
111 : ST 6, 0(3) ;  Store return address in callee frame
112 : ADD  5, 3, 0 ;  Update pointer
113 : LDA 7, 521(0) ;  Call LE
114 : LD 1, 3(5) ;  Load callee return value into R1
115 : LDC  4, 5(0) ;  Load frame size
116 : SUB  5, 5, 4 ;  Restore pointer
117 : JEQ  1, 169(0) ;  If condition is false, jump to ELSE
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
120 : LD   1, 2(5) ;  Load parameter 'low' into R1
121 : LDA  3, 5(5) ; Restore Callee frame base
122 : ST 1, 1(3) ;  Store argument 0 into callee frame
123 : LD   1, 2(5) ;  Load parameter 'low' into R1
124 : LDA  3, 5(5) ; Restore Callee frame base
125 : ST 1, 2(3) ;  Store argument 1 into callee frame
126 : LDA  3, 5(5) ; Restore Call frame base
127 : LDA 6, 131(0)) ;  Compute return address
128 : ST 6, 0(3) ;  Store return address in callee frame
129 : ADD  5, 3, 0 ;  Update pointer
130 : LDA 7, 447(0) ;  Call TIMES
131 : LD 1, 3(5) ;  Load callee return value into R1
132 : LDC  4, 5(0) ;  Load frame size
133 : SUB  5, 5, 4 ;  Restore pointer
134 : SUB  1, 2, 1 ;  R1 = left - right
135 : LDA  3, 5(5) ; Restore Callee frame base
136 : ST 1, 1(3) ;  Store argument 0 into callee frame
137 : LD   1, 3(5) ;  Load parameter 'high' into R1
138 : LDA  3, 5(5) ; Restore Callee frame base
139 : ST 1, 1(3) ;  Store argument 0 into callee frame
140 : LD   1, 3(5) ;  Load parameter 'high' into R1
141 : LDA  3, 5(5) ; Restore Callee frame base
142 : ST 1, 2(3) ;  Store argument 1 into callee frame
143 : LDA  3, 5(5) ; Restore Call frame base
144 : LDA 6, 148(0)) ;  Compute return address
145 : ST 6, 0(3) ;  Store return address in callee frame
146 : ADD  5, 3, 0 ;  Update pointer
147 : LDA 7, 447(0) ;  Call TIMES
148 : LD 1, 3(5) ;  Load callee return value into R1
149 : LDC  4, 5(0) ;  Load frame size
150 : SUB  5, 5, 4 ;  Restore pointer
151 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
152 : LD   1, 1(5) ;  Load parameter 'n' into R1
153 : SUB  1, 2, 1 ;  R1 = left - right
154 : LDA  3, 5(5) ; Restore Callee frame base
155 : ST 1, 2(3) ;  Store argument 1 into callee frame
156 : LDA  3, 5(5) ; Restore Call frame base
157 : LDA 6, 161(0)) ;  Compute return address
158 : ST 6, 0(3) ;  Store return address in callee frame
159 : ADD  5, 3, 0 ;  Update pointer
160 : LDA 7, 521(0) ;  Call LE
161 : LD 1, 3(5) ;  Load callee return value into R1
162 : LDC  4, 5(0) ;  Load frame size
163 : SUB  5, 5, 4 ;  Restore pointer
164 : JEQ  1, 167(0) ;  If condition is false, jump to ELSE
165 : LD   1, 2(5) ;  Load parameter 'low' into R1
166 : LDA  7, 168(0) ;  Skip ELSE block
167 : LD   1, 3(5) ;  Load parameter 'high' into R1
168 : LDA  7, 205(0) ;  Skip ELSE block
169 : LD   1, 1(5) ;  Load parameter 'n' into R1
170 : LDA  3, 5(5) ; Restore Callee frame base
171 : ST 1, 1(3) ;  Store argument 0 into callee frame
172 : LD   1, 2(5) ;  Load parameter 'low' into R1
173 : LDA  3, 5(5) ; Restore Callee frame base
174 : ST 1, 2(3) ;  Store argument 1 into callee frame
175 : LD   1, 3(5) ;  Load parameter 'high' into R1
176 : LDA  3, 5(5) ; Restore Callee frame base
177 : ST 1, 3(3) ;  Store argument 2 into callee frame
178 : LD   1, 2(5) ;  Load parameter 'low' into R1
179 : LDA  3, 5(5) ; Restore Callee frame base
180 : ST 1, 1(3) ;  Store argument 0 into callee frame
181 : LD   1, 3(5) ;  Load parameter 'high' into R1
182 : LDA  3, 5(5) ; Restore Callee frame base
183 : ST 1, 2(3) ;  Store argument 1 into callee frame
184 : LDA  3, 5(5) ; Restore Call frame base
185 : LDA 6, 189(0)) ;  Compute return address
186 : ST 6, 0(3) ;  Store return address in callee frame
187 : ADD  5, 3, 0 ;  Update pointer
188 : LDA 7, 461(0) ;  Call PLUS
189 : LD 1, 3(5) ;  Load callee return value into R1
190 : LDC  4, 5(0) ;  Load frame size
191 : SUB  5, 5, 4 ;  Restore pointer
192 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
193 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
194 : DIV  1, 2, 1 ;  R1 = left / right
195 : LDA  3, 5(5) ; Restore Callee frame base
196 : ST 1, 4(3) ;  Store argument 3 into callee frame
197 : LDA  3, 5(5) ; Restore Call frame base
198 : LDA 6, 202(0)) ;  Compute return address
199 : ST 6, 0(3) ;  Store return address in callee frame
200 : ADD  5, 3, 0 ;  Update pointer
201 : LDA 7, 44(0) ;  Call SQRTSPLIT
202 : LD 1, 5(5) ;  Load callee return value into R1
203 : LDC  4, 5(0) ;  Load frame size
204 : SUB  5, 5, 4 ;  Restore pointer
205 : ST   1, 4(5) ;  Store function result into stack frame
206 : LD   6, 0(5) ;  Load return address
207 : LDA  7, 0(6) ;  Return to caller
208 : LD   1, 1(5) ;  Load parameter 'n' into R1
209 : LDA  3, 3(5) ; Restore Callee frame base
210 : ST 1, 1(3) ;  Store argument 0 into callee frame
211 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
212 : LDA  3, 3(5) ; Restore Callee frame base
213 : ST 1, 2(3) ;  Store argument 1 into callee frame
214 : LD   1, 1(5) ;  Load parameter 'n' into R1
215 : LDA  3, 3(5) ; Restore Callee frame base
216 : ST 1, 3(3) ;  Store argument 2 into callee frame
217 : LDA  3, 3(5) ; Restore Call frame base
218 : LDA 6, 222(0)) ;  Compute return address
219 : ST 6, 0(3) ;  Store return address in callee frame
220 : ADD  5, 3, 0 ;  Update pointer
221 : LDA 7, 100(0) ;  Call SQRTSEARCH
222 : LD 1, 4(5) ;  Load callee return value into R1
223 : LDC  4, 3(0) ;  Load frame size
224 : SUB  5, 5, 4 ;  Restore pointer
225 : ST   1, 2(5) ;  Store function result into stack frame
226 : LD   6, 0(5) ;  Load return address
227 : LDA  7, 0(6) ;  Return to caller
228 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
229 : LDA  3, 3(5) ; Restore Callee frame base
230 : ST 1, 1(3) ;  Store argument 0 into callee frame
231 : LD   1, 1(5) ;  Load parameter 'n' into R1
232 : LDA  3, 3(5) ; Restore Callee frame base
233 : ST 1, 2(3) ;  Store argument 1 into callee frame
234 : LDA  3, 3(5) ; Restore Call frame base
235 : LDA 6, 239(0)) ;  Compute return address
236 : ST 6, 0(3) ;  Store return address in callee frame
237 : ADD  5, 3, 0 ;  Update pointer
238 : LDA 7, 521(0) ;  Call LE
239 : LD 1, 3(5) ;  Load callee return value into R1
240 : LDC  4, 3(0) ;  Load frame size
241 : SUB  5, 5, 4 ;  Restore pointer
242 : JEQ  1, 287(0) ;  If condition is false, jump to ELSE
243 : LD   1, 1(5) ;  Load parameter 'n' into R1
244 : LDA  3, 3(5) ; Restore Callee frame base
245 : ST 1, 1(3) ;  Store argument 0 into callee frame
246 : LD   1, 1(5) ;  Load parameter 'n' into R1
247 : LDA  3, 3(5) ; Restore Callee frame base
248 : ST 1, 1(3) ;  Store argument 0 into callee frame
249 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
250 : LDA  3, 3(5) ; Restore Callee frame base
251 : ST 1, 2(3) ;  Store argument 1 into callee frame
252 : LDA  3, 3(5) ; Restore Call frame base
253 : LDA 6, 257(0)) ;  Compute return address
254 : ST 6, 0(3) ;  Store return address in callee frame
255 : ADD  5, 3, 0 ;  Update pointer
256 : LDA 7, 440(0) ;  Call DIV
257 : LD 1, 3(5) ;  Load callee return value into R1
258 : LDC  4, 3(0) ;  Load frame size
259 : SUB  5, 5, 4 ;  Restore pointer
260 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
261 : LD   1, 1(5) ;  Load parameter 'n' into R1
262 : LDA  3, 3(5) ; Restore Callee frame base
263 : ST 1, 1(3) ;  Store argument 0 into callee frame
264 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
265 : LDA  3, 3(5) ; Restore Callee frame base
266 : ST 1, 2(3) ;  Store argument 1 into callee frame
267 : LDA  3, 3(5) ; Restore Call frame base
268 : LDA 6, 272(0)) ;  Compute return address
269 : ST 6, 0(3) ;  Store return address in callee frame
270 : ADD  5, 3, 0 ;  Update pointer
271 : LDA 7, 440(0) ;  Call DIV
272 : LD 1, 3(5) ;  Load callee return value into R1
273 : LDC  4, 3(0) ;  Load frame size
274 : SUB  5, 5, 4 ;  Restore pointer
275 : ADD  1, 2, 1 ;  R1 = left + right
276 : LDA  3, 3(5) ; Restore Callee frame base
277 : ST 1, 2(3) ;  Store argument 1 into callee frame
278 : LDA  3, 3(5) ; Restore Call frame base
279 : LDA 6, 283(0)) ;  Compute return address
280 : ST 6, 0(3) ;  Store return address in callee frame
281 : ADD  5, 3, 0 ;  Update pointer
282 : LDA 7, 483(0) ;  Call GT
283 : LD 1, 3(5) ;  Load callee return value into R1
284 : LDC  4, 3(0) ;  Load frame size
285 : SUB  5, 5, 4 ;  Restore pointer
286 : LDA  7, 360(0) ;  Skip ELSE block
287 : LD   1, 1(5) ;  Load parameter 'n' into R1
288 : LDA  3, 3(5) ; Restore Callee frame base
289 : ST 1, 1(3) ;  Store argument 0 into callee frame
290 : LDA  3, 3(5) ; Restore Call frame base
291 : LDA 6, 295(0)) ;  Compute return address
292 : ST 6, 0(3) ;  Store return address in callee frame
293 : ADD  5, 3, 0 ;  Update pointer
294 : LDA 7, 435(0) ;  Call NEG
295 : LD 1, 2(5) ;  Load callee return value into R1
296 : LDC  4, 3(0) ;  Load frame size
297 : SUB  5, 5, 4 ;  Restore pointer
298 : LDA  3, 3(5) ; Restore Callee frame base
299 : ST 1, 1(3) ;  Store argument 0 into callee frame
300 : LD   1, 1(5) ;  Load parameter 'n' into R1
301 : LDA  3, 3(5) ; Restore Callee frame base
302 : ST 1, 1(3) ;  Store argument 0 into callee frame
303 : LDA  3, 3(5) ; Restore Call frame base
304 : LDA 6, 308(0)) ;  Compute return address
305 : ST 6, 0(3) ;  Store return address in callee frame
306 : ADD  5, 3, 0 ;  Update pointer
307 : LDA 7, 435(0) ;  Call NEG
308 : LD 1, 2(5) ;  Load callee return value into R1
309 : LDC  4, 3(0) ;  Load frame size
310 : SUB  5, 5, 4 ;  Restore pointer
311 : LDA  3, 3(5) ; Restore Callee frame base
312 : ST 1, 1(3) ;  Store argument 0 into callee frame
313 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
314 : LDA  3, 3(5) ; Restore Callee frame base
315 : ST 1, 2(3) ;  Store argument 1 into callee frame
316 : LDA  3, 3(5) ; Restore Call frame base
317 : LDA 6, 321(0)) ;  Compute return address
318 : ST 6, 0(3) ;  Store return address in callee frame
319 : ADD  5, 3, 0 ;  Update pointer
320 : LDA 7, 440(0) ;  Call DIV
321 : LD 1, 3(5) ;  Load callee return value into R1
322 : LDC  4, 3(0) ;  Load frame size
323 : SUB  5, 5, 4 ;  Restore pointer
324 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
325 : LD   1, 1(5) ;  Load parameter 'n' into R1
326 : LDA  3, 3(5) ; Restore Callee frame base
327 : ST 1, 1(3) ;  Store argument 0 into callee frame
328 : LDA  3, 3(5) ; Restore Call frame base
329 : LDA 6, 333(0)) ;  Compute return address
330 : ST 6, 0(3) ;  Store return address in callee frame
331 : ADD  5, 3, 0 ;  Update pointer
332 : LDA 7, 435(0) ;  Call NEG
333 : LD 1, 2(5) ;  Load callee return value into R1
334 : LDC  4, 3(0) ;  Load frame size
335 : SUB  5, 5, 4 ;  Restore pointer
336 : LDA  3, 3(5) ; Restore Callee frame base
337 : ST 1, 1(3) ;  Store argument 0 into callee frame
338 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
339 : LDA  3, 3(5) ; Restore Callee frame base
340 : ST 1, 2(3) ;  Store argument 1 into callee frame
341 : LDA  3, 3(5) ; Restore Call frame base
342 : LDA 6, 346(0)) ;  Compute return address
343 : ST 6, 0(3) ;  Store return address in callee frame
344 : ADD  5, 3, 0 ;  Update pointer
345 : LDA 7, 440(0) ;  Call DIV
346 : LD 1, 3(5) ;  Load callee return value into R1
347 : LDC  4, 3(0) ;  Load frame size
348 : SUB  5, 5, 4 ;  Restore pointer
349 : ADD  1, 2, 1 ;  R1 = left + right
350 : LDA  3, 3(5) ; Restore Callee frame base
351 : ST 1, 2(3) ;  Store argument 1 into callee frame
352 : LDA  3, 3(5) ; Restore Call frame base
353 : LDA 6, 357(0)) ;  Compute return address
354 : ST 6, 0(3) ;  Store return address in callee frame
355 : ADD  5, 3, 0 ;  Update pointer
356 : LDA 7, 483(0) ;  Call GT
357 : LD 1, 3(5) ;  Load callee return value into R1
358 : LDC  4, 3(0) ;  Load frame size
359 : SUB  5, 5, 4 ;  Restore pointer
360 : ST   1, 2(5) ;  Store function result into stack frame
361 : LD   6, 0(5) ;  Load return address
362 : LDA  7, 0(6) ;  Return to caller
363 : LD   1, 2(5) ;  Load parameter 'n' into R1
364 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
365 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
366 : SUB  1, 2, 1 ;  left - right for equality check
367 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
368 : LDC  1, 0(0) ;  false
369 : LDA  7, 1(7) ;  skip setting true
370 : LDC  1, 1(0) ;  true
371 : JEQ  1, 374(0) ;  If condition is false, jump to ELSE
372 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
373 : LDA  7, 394(0) ;  Skip ELSE block
374 : LD   1, 1(5) ;  Load parameter 'm' into R1
375 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
376 : LD   1, 1(5) ;  Load parameter 'm' into R1
377 : LDA  3, 4(5) ; Restore Callee frame base
378 : ST 1, 1(3) ;  Store argument 0 into callee frame
379 : LD   1, 2(5) ;  Load parameter 'n' into R1
380 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
381 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
382 : SUB  1, 2, 1 ;  R1 = left - right
383 : LDA  3, 4(5) ; Restore Callee frame base
384 : ST 1, 2(3) ;  Store argument 1 into callee frame
385 : LDA  3, 4(5) ; Restore Call frame base
386 : LDA 6, 390(0)) ;  Compute return address
387 : ST 6, 0(3) ;  Store return address in callee frame
388 : ADD  5, 3, 0 ;  Update pointer
389 : LDA 7, 363(0) ;  Call EXP
390 : LD 1, 3(5) ;  Load callee return value into R1
391 : LDC  4, 4(0) ;  Load frame size
392 : SUB  5, 5, 4 ;  Restore pointer
393 : MUL  1, 2, 1 ;  R1 = left * right
394 : ST   1, 3(5) ;  Store function result into stack frame
395 : LD   6, 0(5) ;  Load return address
396 : LDA  7, 0(6) ;  Return to caller
397 : LD   1, 1(5) ;  Load parameter 'm' into R1
398 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
399 : LD   1, 1(5) ;  Load parameter 'm' into R1
400 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
401 : LD   1, 2(5) ;  Load parameter 'n' into R1
402 : DIV  1, 2, 1 ;  R1 = left / right
403 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
404 : LD   1, 2(5) ;  Load parameter 'n' into R1
405 : MUL  1, 2, 1 ;  R1 = left * right
406 : SUB  1, 2, 1 ;  R1 = left - right
407 : ST   1, 3(5) ;  Store function result into stack frame
408 : LD   6, 0(5) ;  Load return address
409 : LDA  7, 0(6) ;  Return to caller
410 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
411 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
412 : LD   1, 1(5) ;  Load parameter 'n' into R1
413 : SUB  1, 2, 1 ;  left - right for less-than check
414 : JLT  1, 2(7) ;  If R1 < 0, jump to true
415 : LDC  1, 0(0) ;  false
416 : LDA  7, 1(7) ;  skip setting true
417 : LDC  1, 1(0) ;  true
418 : JEQ  1, 421(0) ;  If condition is false, jump to ELSE
419 : LD   1, 1(5) ;  Load parameter 'n' into R1
420 : LDA  7, 432(0) ;  Skip ELSE block
421 : LD   1, 1(5) ;  Load parameter 'n' into R1
422 : LDA  3, 3(5) ; Restore Callee frame base
423 : ST 1, 1(3) ;  Store argument 0 into callee frame
424 : LDA  3, 3(5) ; Restore Call frame base
425 : LDA 6, 429(0)) ;  Compute return address
426 : ST 6, 0(3) ;  Store return address in callee frame
427 : ADD  5, 3, 0 ;  Update pointer
428 : LDA 7, 435(0) ;  Call NEG
429 : LD 1, 2(5) ;  Load callee return value into R1
430 : LDC  4, 3(0) ;  Load frame size
431 : SUB  5, 5, 4 ;  Restore pointer
432 : ST   1, 2(5) ;  Store function result into stack frame
433 : LD   6, 0(5) ;  Load return address
434 : LDA  7, 0(6) ;  Return to caller
435 : LD   1, 1(5) ;  Load parameter 'n' into R1
436 : SUB  1, 0, 1 ;  Negate value in R1
437 : ST   1, 2(5) ;  Store function result into stack frame
438 : LD   6, 0(5) ;  Load return address
439 : LDA  7, 0(6) ;  Return to caller
440 : LD   1, 1(5) ;  Load parameter 'p' into R1
441 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
442 : LD   1, 2(5) ;  Load parameter 'q' into R1
443 : DIV  1, 2, 1 ;  R1 = left / right
444 : ST   1, 3(5) ;  Store function result into stack frame
445 : LD   6, 0(5) ;  Load return address
446 : LDA  7, 0(6) ;  Return to caller
447 : LD   1, 1(5) ;  Load parameter 'p' into R1
448 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
449 : LD   1, 2(5) ;  Load parameter 'q' into R1
450 : MUL  1, 2, 1 ;  R1 = left * right
451 : ST   1, 3(5) ;  Store function result into stack frame
452 : LD   6, 0(5) ;  Load return address
453 : LDA  7, 0(6) ;  Return to caller
454 : LD   1, 1(5) ;  Load parameter 'p' into R1
455 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
456 : LD   1, 2(5) ;  Load parameter 'q' into R1
457 : SUB  1, 2, 1 ;  R1 = left - right
458 : ST   1, 3(5) ;  Store function result into stack frame
459 : LD   6, 0(5) ;  Load return address
460 : LDA  7, 0(6) ;  Return to caller
461 : LD   1, 1(5) ;  Load parameter 'p' into R1
462 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
463 : LD   1, 2(5) ;  Load parameter 'q' into R1
464 : ADD  1, 2, 1 ;  R1 = left + right
465 : ST   1, 3(5) ;  Store function result into stack frame
466 : LD   6, 0(5) ;  Load return address
467 : LDA  7, 0(6) ;  Return to caller
468 : LD   1, 1(5) ;  Load parameter 'p' into R1
469 : JEQ  1, 472(0) ;  If condition is false, jump to ELSE
470 : LD   1, 2(5) ;  Load parameter 'q' into R1
471 : LDA  7, 473(0) ;  Skip ELSE block
472 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
473 : ST   1, 3(5) ;  Store function result into stack frame
474 : LD   6, 0(5) ;  Load return address
475 : LDA  7, 0(6) ;  Return to caller
476 : LD   1, 1(5) ;  Load parameter 'p' into R1
477 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
478 : LD   1, 2(5) ;  Load parameter 'q' into R1
479 : ADD  1, 2, 1 ;  R1 = left OR right
480 : ST   1, 3(5) ;  Store function result into stack frame
481 : LD   6, 0(5) ;  Load return address
482 : LDA  7, 0(6) ;  Return to caller
483 : LD   1, 1(5) ;  Load parameter 'p' into R1
484 : LDA  3, 4(5) ; Restore Callee frame base
485 : ST 1, 1(3) ;  Store argument 0 into callee frame
486 : LD   1, 2(5) ;  Load parameter 'q' into R1
487 : LDA  3, 4(5) ; Restore Callee frame base
488 : ST 1, 2(3) ;  Store argument 1 into callee frame
489 : LDA  3, 4(5) ; Restore Call frame base
490 : LDA 6, 494(0)) ;  Compute return address
491 : ST 6, 0(3) ;  Store return address in callee frame
492 : ADD  5, 3, 0 ;  Update pointer
493 : LDA 7, 521(0) ;  Call LE
494 : LD 1, 3(5) ;  Load callee return value into R1
495 : LDC  4, 4(0) ;  Load frame size
496 : SUB  5, 5, 4 ;  Restore pointer
497 : LDC  2, 1(0) ;  Load 1 into R2
498 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
499 : ST   1, 3(5) ;  Store function result into stack frame
500 : LD   6, 0(5) ;  Load return address
501 : LDA  7, 0(6) ;  Return to caller
502 : LD   1, 1(5) ;  Load parameter 'p' into R1
503 : LDA  3, 4(5) ; Restore Callee frame base
504 : ST 1, 1(3) ;  Store argument 0 into callee frame
505 : LD   1, 2(5) ;  Load parameter 'q' into R1
506 : LDA  3, 4(5) ; Restore Callee frame base
507 : ST 1, 2(3) ;  Store argument 1 into callee frame
508 : LDA  3, 4(5) ; Restore Call frame base
509 : LDA 6, 513(0)) ;  Compute return address
510 : ST 6, 0(3) ;  Store return address in callee frame
511 : ADD  5, 3, 0 ;  Update pointer
512 : LDA 7, 584(0) ;  Call LT
513 : LD 1, 3(5) ;  Load callee return value into R1
514 : LDC  4, 4(0) ;  Load frame size
515 : SUB  5, 5, 4 ;  Restore pointer
516 : LDC  2, 1(0) ;  Load 1 into R2
517 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
518 : ST   1, 3(5) ;  Store function result into stack frame
519 : LD   6, 0(5) ;  Load return address
520 : LDA  7, 0(6) ;  Return to caller
521 : LD   1, 1(5) ;  Load parameter 'p' into R1
522 : LDA  3, 4(5) ; Restore Callee frame base
523 : ST 1, 1(3) ;  Store argument 0 into callee frame
524 : LD   1, 2(5) ;  Load parameter 'q' into R1
525 : LDA  3, 4(5) ; Restore Callee frame base
526 : ST 1, 2(3) ;  Store argument 1 into callee frame
527 : LDA  3, 4(5) ; Restore Call frame base
528 : LDA 6, 532(0)) ;  Compute return address
529 : ST 6, 0(3) ;  Store return address in callee frame
530 : ADD  5, 3, 0 ;  Update pointer
531 : LDA 7, 584(0) ;  Call LT
532 : LD 1, 3(5) ;  Load callee return value into R1
533 : LDC  4, 4(0) ;  Load frame size
534 : SUB  5, 5, 4 ;  Restore pointer
535 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
536 : LD   1, 1(5) ;  Load parameter 'p' into R1
537 : LDA  3, 4(5) ; Restore Callee frame base
538 : ST 1, 1(3) ;  Store argument 0 into callee frame
539 : LD   1, 2(5) ;  Load parameter 'q' into R1
540 : LDA  3, 4(5) ; Restore Callee frame base
541 : ST 1, 2(3) ;  Store argument 1 into callee frame
542 : LDA  3, 4(5) ; Restore Call frame base
543 : LDA 6, 547(0)) ;  Compute return address
544 : ST 6, 0(3) ;  Store return address in callee frame
545 : ADD  5, 3, 0 ;  Update pointer
546 : LDA 7, 573(0) ;  Call EQ
547 : LD 1, 3(5) ;  Load callee return value into R1
548 : LDC  4, 4(0) ;  Load frame size
549 : SUB  5, 5, 4 ;  Restore pointer
550 : ADD  1, 2, 1 ;  R1 = left OR right
551 : ST   1, 3(5) ;  Store function result into stack frame
552 : LD   6, 0(5) ;  Load return address
553 : LDA  7, 0(6) ;  Return to caller
554 : LD   1, 1(5) ;  Load parameter 'p' into R1
555 : LDA  3, 4(5) ; Restore Callee frame base
556 : ST 1, 1(3) ;  Store argument 0 into callee frame
557 : LD   1, 2(5) ;  Load parameter 'q' into R1
558 : LDA  3, 4(5) ; Restore Callee frame base
559 : ST 1, 2(3) ;  Store argument 1 into callee frame
560 : LDA  3, 4(5) ; Restore Call frame base
561 : LDA 6, 565(0)) ;  Compute return address
562 : ST 6, 0(3) ;  Store return address in callee frame
563 : ADD  5, 3, 0 ;  Update pointer
564 : LDA 7, 573(0) ;  Call EQ
565 : LD 1, 3(5) ;  Load callee return value into R1
566 : LDC  4, 4(0) ;  Load frame size
567 : SUB  5, 5, 4 ;  Restore pointer
568 : LDC  2, 1(0) ;  Load 1 into R2
569 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
570 : ST   1, 3(5) ;  Store function result into stack frame
571 : LD   6, 0(5) ;  Load return address
572 : LDA  7, 0(6) ;  Return to caller
573 : LD   1, 1(5) ;  Load parameter 'p' into R1
574 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
575 : LD   1, 2(5) ;  Load parameter 'q' into R1
576 : SUB  1, 2, 1 ;  left - right for equality check
577 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
578 : LDC  1, 0(0) ;  false
579 : LDA  7, 1(7) ;  skip setting true
580 : LDC  1, 1(0) ;  true
581 : ST   1, 3(5) ;  Store function result into stack frame
582 : LD   6, 0(5) ;  Load return address
583 : LDA  7, 0(6) ;  Return to caller
584 : LD   1, 1(5) ;  Load parameter 'p' into R1
585 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
586 : LD   1, 2(5) ;  Load parameter 'q' into R1
587 : SUB  1, 2, 1 ;  left - right for less-than check
588 : JLT  1, 2(7) ;  If R1 < 0, jump to true
589 : LDC  1, 0(0) ;  false
590 : LDA  7, 1(7) ;  skip setting true
591 : LDC  1, 1(0) ;  true
592 : ST   1, 3(5) ;  Store function result into stack frame
593 : LD   6, 0(5) ;  Load return address
594 : LDA  7, 0(6) ;  Return to caller
595 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
596 : SUB  1, 0, 1 ;  Negate value in R1
597 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
598 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
599 : SUB  1, 2, 1 ;  R1 = left - right
600 : ST   1, 1(5) ;  Store function result into stack frame
601 : LD   6, 0(5) ;  Load return address
602 : LDA  7, 0(6) ;  Return to caller
603 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
604 : ST   1, 1(5) ;  Store function result into stack frame
605 : LD   6, 0(5) ;  Load return address
606 : LDA  7, 0(6) ;  Return to caller
