0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDA 4, 3(5) ;  Base of callee frame
13 : LD 1, 1(5) ;  Load parameter 'testArgument' into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDA 6, 19(0) ;  Return address
16 : ST 6, 0(4) ;  Store return in callee frame
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 7, 196(0) ;  Call SQRT
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : LDA 4, 3(5) ;  Base of callee frame
23 : LDA 6, 27(0) ;  Return address
24 : ST 6, 0(4) ;  Store return addr in callee frame
25 : ADD 5, 4, 0 ;  Push new frame
26 : LDA 7, 9(0) ;  Call print
27 : LDC 2, 3(0) ;  Caller frame size
28 : SUB 5, 5, 2 ;  Pop frame
29 : LDA 4, 3(5) ;  Base of callee frame
30 : LD 1, 1(5) ;  Load parameter 'testArgument' into R1
31 : ST 1, 1(4) ;  Store argument 0 in callee
32 : LDA 6, 36(0) ;  Return address
33 : ST 6, 0(4) ;  Store return in callee frame
34 : ADD 5, 4, 0 ;  Push callee frame
35 : LDA 7, 214(0) ;  Call ODD
36 : LD 1, 2(5) ;  Load function result
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 2(5) ;  Store result into caller’s frame
40 : LD 1, 2(5) ;  Load return value into register 1
41 : LD 6, 0(5) ;  Load return address for main function into register 6
42 : LDA 7, 0(6) ;  Jump to runtime continuation
43 : LDA 4, 4(5) ;  Base of callee frame
44 : LD 1, 4(5) ;  Load parameter 'mid' into R1
45 : ADD 3, 1, 0 ;  Move right operand to R3
46 : LD 1, 4(5) ;  Load parameter 'mid' into R1
47 : ADD 2, 1, 0 ;  Move left operand to R2
48 : ADD 1, 3, 0 ;  Restore right operand into R1
49 : MUL 1, 2, 1 ;  R1 = left * right
50 : ST 1, 1(4) ;  Store argument 0 in callee
51 : LD 1, 1(5) ;  Load parameter 'n' into R1
52 : ST 1, 2(4) ;  Store argument 1 in callee
53 : LDA 6, 57(0) ;  Return address
54 : ST 6, 0(4) ;  Store return in callee frame
55 : ADD 5, 4, 0 ;  Push callee frame
56 : LDA 7, 522(0) ;  Call LE
57 : LD 1, 3(5) ;  Load function result
58 : LDC 2, 4(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop back to caller
60 : JEQ 1, 77(0) ;  If condition is false, jump to ELSE
61 : LDA 4, 5(5) ;  Base of callee frame
62 : LD 1, 1(5) ;  Load parameter 'n' into R1
63 : ST 1, 1(4) ;  Store argument 0 in callee
64 : LD 1, 4(5) ;  Load parameter 'mid' into R1
65 : ST 1, 2(4) ;  Store argument 1 in callee
66 : LD 1, 3(5) ;  Load parameter 'high' into R1
67 : ST 1, 3(4) ;  Store argument 2 in callee
68 : LDA 6, 72(0) ;  Return address
69 : ST 6, 0(4) ;  Store return in callee frame
70 : ADD 5, 4, 0 ;  Push callee frame
71 : LDA 7, 95(0) ;  Call SQRTSEARCH
72 : LD 1, 4(5) ;  Load function result
73 : LDC 2, 5(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop back to caller
75 : ST 1, 5(5) ;  Store result into caller’s frame
76 : LDA 7, 92(0) ;  Skip ELSE block
77 : LDA 4, 5(5) ;  Base of callee frame
78 : LD 1, 1(5) ;  Load parameter 'n' into R1
79 : ST 1, 1(4) ;  Store argument 0 in callee
80 : LD 1, 2(5) ;  Load parameter 'low' into R1
81 : ST 1, 2(4) ;  Store argument 1 in callee
82 : LD 1, 4(5) ;  Load parameter 'mid' into R1
83 : ST 1, 3(4) ;  Store argument 2 in callee
84 : LDA 6, 88(0) ;  Return address
85 : ST 6, 0(4) ;  Store return in callee frame
86 : ADD 5, 4, 0 ;  Push callee frame
87 : LDA 7, 95(0) ;  Call SQRTSEARCH
88 : LD 1, 4(5) ;  Load function result
89 : LDC 2, 5(0) ;  Caller frame size
90 : SUB 5, 5, 2 ;  Pop back to caller
91 : ST 1, 5(5) ;  Store result into caller’s frame
92 : ST 1, 5(5) ;  Store function result into stack frame
93 : LD 6, 0(5) ;  Load return address
94 : LDA 7, 0(6) ;  Return to caller
95 : LDA 4, 4(5) ;  Base of callee frame
96 : LD 1, 3(5) ;  Load parameter 'high' into R1
97 : ST 1, 1(4) ;  Store argument 0 in callee
98 : LDC 1, 1(0) ;  Load integer-literal value into R1
99 : ADD 3, 1, 0 ;  Move right operand to R3
100 : LD 1, 2(5) ;  Load parameter 'low' into R1
101 : ADD 2, 1, 0 ;  Move left operand to R2
102 : ADD 1, 3, 0 ;  Restore right operand into R1
103 : ADD 1, 2, 1 ;  R1 = left + right
104 : ST 1, 2(4) ;  Store argument 1 in callee
105 : LDA 6, 109(0) ;  Return address
106 : ST 6, 0(4) ;  Store return in callee frame
107 : ADD 5, 4, 0 ;  Push callee frame
108 : LDA 7, 522(0) ;  Call LE
109 : LD 1, 3(5) ;  Load function result
110 : LDC 2, 4(0) ;  Caller frame size
111 : SUB 5, 5, 2 ;  Pop back to caller
112 : JEQ 1, 162(0) ;  If condition is false, jump to ELSE
113 : LDA 4, 4(5) ;  Base of callee frame
114 : LDA 4, 4(5) ;  Base of callee frame
115 : LD 1, 2(5) ;  Load parameter 'low' into R1
116 : ST 1, 1(4) ;  Store argument 0 in callee
117 : LD 1, 2(5) ;  Load parameter 'low' into R1
118 : ST 1, 2(4) ;  Store argument 1 in callee
119 : LDA 6, 123(0) ;  Return address
120 : ST 6, 0(4) ;  Store return in callee frame
121 : ADD 5, 4, 0 ;  Push callee frame
122 : LDA 7, 436(0) ;  Call TIMES
123 : LD 1, 3(5) ;  Load function result
124 : LDC 2, 4(0) ;  Caller frame size
125 : SUB 5, 5, 2 ;  Pop back to caller
126 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
127 : LD 1, 1(5) ;  Load parameter 'n' into R1
128 : ADD 2, 1, 0 ;  Move left operand to R2
129 : ADD 1, 3, 0 ;  Restore right operand into R1
130 : SUB 1, 2, 1 ;  R1 = left - right
131 : ST 1, 1(4) ;  Store argument 0 in callee
132 : LDA 4, 4(5) ;  Base of callee frame
133 : LD 1, 3(5) ;  Load parameter 'high' into R1
134 : ST 1, 1(4) ;  Store argument 0 in callee
135 : LD 1, 3(5) ;  Load parameter 'high' into R1
136 : ST 1, 2(4) ;  Store argument 1 in callee
137 : LDA 6, 141(0) ;  Return address
138 : ST 6, 0(4) ;  Store return in callee frame
139 : ADD 5, 4, 0 ;  Push callee frame
140 : LDA 7, 436(0) ;  Call TIMES
141 : LD 1, 3(5) ;  Load function result
142 : LDC 2, 4(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop back to caller
144 : ADD 2, 1, 0 ;  Move left operand to R2
145 : LD 1, 1(5) ;  Load parameter 'n' into R1
146 : SUB 1, 2, 1 ;  R1 = left - right
147 : ST 1, 2(4) ;  Store argument 1 in callee
148 : LDA 6, 152(0) ;  Return address
149 : ST 6, 0(4) ;  Store return in callee frame
150 : ADD 5, 4, 0 ;  Push callee frame
151 : LDA 7, 522(0) ;  Call LE
152 : LD 1, 3(5) ;  Load function result
153 : LDC 2, 4(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop back to caller
155 : JEQ 1, 159(0) ;  If condition is false, jump to ELSE
156 : LD 1, 2(5) ;  Load parameter 'low' into R1
157 : ST 1, 4(5) ;  Store result into current frame's return slot
158 : LDA 7, 161(0) ;  Skip ELSE block
159 : LD 1, 3(5) ;  Load parameter 'high' into R1
160 : ST 1, 4(5) ;  Store result into current frame's return slot
161 : LDA 7, 193(0) ;  Skip ELSE block
162 : LDA 4, 6(5) ;  Base of callee frame
163 : LD 1, 1(5) ;  Load parameter 'n' into R1
164 : ST 1, 1(4) ;  Store argument 0 in callee
165 : LD 1, 2(5) ;  Load parameter 'low' into R1
166 : ST 1, 2(4) ;  Store argument 1 in callee
167 : LD 1, 3(5) ;  Load parameter 'high' into R1
168 : ST 1, 3(4) ;  Store argument 2 in callee
169 : LDA 4, 4(5) ;  Base of callee frame
170 : LD 1, 2(5) ;  Load parameter 'low' into R1
171 : ST 1, 1(4) ;  Store argument 0 in callee
172 : LD 1, 3(5) ;  Load parameter 'high' into R1
173 : ST 1, 2(4) ;  Store argument 1 in callee
174 : LDA 6, 178(0) ;  Return address
175 : ST 6, 0(4) ;  Store return in callee frame
176 : ADD 5, 4, 0 ;  Push callee frame
177 : LDA 7, 456(0) ;  Call PLUS
178 : LD 1, 3(5) ;  Load function result
179 : LDC 2, 4(0) ;  Caller frame size
180 : SUB 5, 5, 2 ;  Pop back to caller
181 : ADD 2, 1, 0 ;  Move left operand to R2
182 : LDC 1, 2(0) ;  Load integer-literal value into R1
183 : DIV 1, 2, 1 ;  R1 = left / right
184 : ST 1, 4(4) ;  Store argument 3 in callee
185 : LDA 6, 189(0) ;  Return address
186 : ST 6, 0(4) ;  Store return in callee frame
187 : ADD 5, 4, 0 ;  Push callee frame
188 : LDA 7, 43(0) ;  Call SQRTSPLIT
189 : LD 1, 5(5) ;  Load function result
190 : LDC 2, 6(0) ;  Caller frame size
191 : SUB 5, 5, 2 ;  Pop back to caller
192 : ST 1, 4(5) ;  Store result into caller’s frame
193 : ST 1, 4(5) ;  Store function result into stack frame
194 : LD 6, 0(5) ;  Load return address
195 : LDA 7, 0(6) ;  Return to caller
196 : LDA 4, 5(5) ;  Base of callee frame
197 : LD 1, 1(5) ;  Load parameter 'n' into R1
198 : ST 1, 1(4) ;  Store argument 0 in callee
199 : LDC 1, 0(0) ;  Load integer-literal value into R1
200 : ST 1, 2(4) ;  Store argument 1 in callee
201 : LD 1, 1(5) ;  Load parameter 'n' into R1
202 : ST 1, 3(4) ;  Store argument 2 in callee
203 : LDA 6, 207(0) ;  Return address
204 : ST 6, 0(4) ;  Store return in callee frame
205 : ADD 5, 4, 0 ;  Push callee frame
206 : LDA 7, 95(0) ;  Call SQRTSEARCH
207 : LD 1, 4(5) ;  Load function result
208 : LDC 2, 5(0) ;  Caller frame size
209 : SUB 5, 5, 2 ;  Pop back to caller
210 : ST 1, 2(5) ;  Store result into caller’s frame
211 : ST 1, 2(5) ;  Store function result into stack frame
212 : LD 6, 0(5) ;  Load return address
213 : LDA 7, 0(6) ;  Return to caller
214 : LDA 4, 4(5) ;  Base of callee frame
215 : LDC 1, 0(0) ;  Load integer-literal value into R1
216 : ST 1, 1(4) ;  Store argument 0 in callee
217 : LD 1, 1(5) ;  Load parameter 'n' into R1
218 : ST 1, 2(4) ;  Store argument 1 in callee
219 : LDA 6, 223(0) ;  Return address
220 : ST 6, 0(4) ;  Store return in callee frame
221 : ADD 5, 4, 0 ;  Push callee frame
222 : LDA 7, 522(0) ;  Call LE
223 : LD 1, 3(5) ;  Load function result
224 : LDC 2, 4(0) ;  Caller frame size
225 : SUB 5, 5, 2 ;  Pop back to caller
226 : JEQ 1, 266(0) ;  If condition is false, jump to ELSE
227 : LDA 4, 4(5) ;  Base of callee frame
228 : LD 1, 1(5) ;  Load parameter 'n' into R1
229 : ST 1, 1(4) ;  Store argument 0 in callee
230 : LDA 4, 4(5) ;  Base of callee frame
231 : LD 1, 1(5) ;  Load parameter 'n' into R1
232 : ST 1, 1(4) ;  Store argument 0 in callee
233 : LDC 1, 2(0) ;  Load integer-literal value into R1
234 : ST 1, 2(4) ;  Store argument 1 in callee
235 : LDA 6, 239(0) ;  Return address
236 : ST 6, 0(4) ;  Store return in callee frame
237 : ADD 5, 4, 0 ;  Push callee frame
238 : LDA 7, 426(0) ;  Call DIV
239 : LD 1, 3(5) ;  Load function result
240 : LDC 2, 4(0) ;  Caller frame size
241 : SUB 5, 5, 2 ;  Pop back to caller
242 : ADD 2, 1, 0 ;  Move left operand to R2
243 : LDA 4, 4(5) ;  Base of callee frame
244 : LD 1, 1(5) ;  Load parameter 'n' into R1
245 : ST 1, 1(4) ;  Store argument 0 in callee
246 : LDC 1, 2(0) ;  Load integer-literal value into R1
247 : ST 1, 2(4) ;  Store argument 1 in callee
248 : LDA 6, 252(0) ;  Return address
249 : ST 6, 0(4) ;  Store return in callee frame
250 : ADD 5, 4, 0 ;  Push callee frame
251 : LDA 7, 426(0) ;  Call DIV
252 : LD 1, 3(5) ;  Load function result
253 : LDC 2, 4(0) ;  Caller frame size
254 : SUB 5, 5, 2 ;  Pop back to caller
255 : ADD 1, 2, 1 ;  R1 = left + right
256 : ST 1, 2(4) ;  Store argument 1 in callee
257 : LDA 6, 261(0) ;  Return address
258 : ST 6, 0(4) ;  Store return in callee frame
259 : ADD 5, 4, 0 ;  Push callee frame
260 : LDA 7, 486(0) ;  Call GT
261 : LD 1, 3(5) ;  Load function result
262 : LDC 2, 4(0) ;  Caller frame size
263 : SUB 5, 5, 2 ;  Pop back to caller
264 : ST 1, 2(5) ;  Store result into caller’s frame
265 : LDA 7, 331(0) ;  Skip ELSE block
266 : LDA 4, 4(5) ;  Base of callee frame
267 : LDA 4, 3(5) ;  Base of callee frame
268 : LD 1, 1(5) ;  Load parameter 'n' into R1
269 : ST 1, 1(4) ;  Store argument 0 in callee
270 : LDA 6, 274(0) ;  Return address
271 : ST 6, 0(4) ;  Store return in callee frame
272 : ADD 5, 4, 0 ;  Push callee frame
273 : LDA 7, 420(0) ;  Call NEG
274 : LD 1, 2(5) ;  Load function result
275 : LDC 2, 3(0) ;  Caller frame size
276 : SUB 5, 5, 2 ;  Pop back to caller
277 : ST 1, 1(4) ;  Store argument 0 in callee
278 : LDA 4, 4(5) ;  Base of callee frame
279 : LDA 4, 3(5) ;  Base of callee frame
280 : LD 1, 1(5) ;  Load parameter 'n' into R1
281 : ST 1, 1(4) ;  Store argument 0 in callee
282 : LDA 6, 286(0) ;  Return address
283 : ST 6, 0(4) ;  Store return in callee frame
284 : ADD 5, 4, 0 ;  Push callee frame
285 : LDA 7, 420(0) ;  Call NEG
286 : LD 1, 2(5) ;  Load function result
287 : LDC 2, 3(0) ;  Caller frame size
288 : SUB 5, 5, 2 ;  Pop back to caller
289 : ST 1, 1(4) ;  Store argument 0 in callee
290 : LDC 1, 2(0) ;  Load integer-literal value into R1
291 : ST 1, 2(4) ;  Store argument 1 in callee
292 : LDA 6, 296(0) ;  Return address
293 : ST 6, 0(4) ;  Store return in callee frame
294 : ADD 5, 4, 0 ;  Push callee frame
295 : LDA 7, 426(0) ;  Call DIV
296 : LD 1, 3(5) ;  Load function result
297 : LDC 2, 4(0) ;  Caller frame size
298 : SUB 5, 5, 2 ;  Pop back to caller
299 : ADD 2, 1, 0 ;  Move left operand to R2
300 : LDA 4, 4(5) ;  Base of callee frame
301 : LDA 4, 3(5) ;  Base of callee frame
302 : LD 1, 1(5) ;  Load parameter 'n' into R1
303 : ST 1, 1(4) ;  Store argument 0 in callee
304 : LDA 6, 308(0) ;  Return address
305 : ST 6, 0(4) ;  Store return in callee frame
306 : ADD 5, 4, 0 ;  Push callee frame
307 : LDA 7, 420(0) ;  Call NEG
308 : LD 1, 2(5) ;  Load function result
309 : LDC 2, 3(0) ;  Caller frame size
310 : SUB 5, 5, 2 ;  Pop back to caller
311 : ST 1, 1(4) ;  Store argument 0 in callee
312 : LDC 1, 2(0) ;  Load integer-literal value into R1
313 : ST 1, 2(4) ;  Store argument 1 in callee
314 : LDA 6, 318(0) ;  Return address
315 : ST 6, 0(4) ;  Store return in callee frame
316 : ADD 5, 4, 0 ;  Push callee frame
317 : LDA 7, 426(0) ;  Call DIV
318 : LD 1, 3(5) ;  Load function result
319 : LDC 2, 4(0) ;  Caller frame size
320 : SUB 5, 5, 2 ;  Pop back to caller
321 : ADD 1, 2, 1 ;  R1 = left + right
322 : ST 1, 2(4) ;  Store argument 1 in callee
323 : LDA 6, 327(0) ;  Return address
324 : ST 6, 0(4) ;  Store return in callee frame
325 : ADD 5, 4, 0 ;  Push callee frame
326 : LDA 7, 486(0) ;  Call GT
327 : LD 1, 3(5) ;  Load function result
328 : LDC 2, 4(0) ;  Caller frame size
329 : SUB 5, 5, 2 ;  Pop back to caller
330 : ST 1, 2(5) ;  Store result into caller’s frame
331 : ST 1, 2(5) ;  Store function result into stack frame
332 : LD 6, 0(5) ;  Load return address
333 : LDA 7, 0(6) ;  Return to caller
334 : LDC 1, 0(0) ;  Load integer-literal value into R1
335 : ADD 3, 1, 0 ;  Move right operand to R3
336 : LD 1, 2(5) ;  Load parameter 'n' into R1
337 : ADD 2, 1, 0 ;  Move left operand to R2
338 : ADD 1, 3, 0 ;  Restore right operand into R1
339 : SUB 1, 2, 1 ;  left - right for equality check
340 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
341 : LDC 1, 0(0) ;  false
342 : LDA 7, 1(7) ;  skip setting true
343 : LDC 1, 1(0) ;  true
344 : JEQ 1, 348(0) ;  If condition is false, jump to ELSE
345 : LDC 1, 1(0) ;  Load integer-literal value into R1
346 : ST 1, 3(5) ;  Store result into current frame's return slot
347 : LDA 7, 371(0) ;  Skip ELSE block
348 : LDA 4, 4(5) ;  Base of callee frame
349 : LD 1, 1(5) ;  Load parameter 'm' into R1
350 : ST 1, 1(4) ;  Store argument 0 in callee
351 : LDC 1, 1(0) ;  Load integer-literal value into R1
352 : ADD 3, 1, 0 ;  Move right operand to R3
353 : LD 1, 2(5) ;  Load parameter 'n' into R1
354 : ADD 2, 1, 0 ;  Move left operand to R2
355 : ADD 1, 3, 0 ;  Restore right operand into R1
356 : SUB 1, 2, 1 ;  R1 = left - right
357 : ST 1, 2(4) ;  Store argument 1 in callee
358 : LDA 6, 362(0) ;  Return address
359 : ST 6, 0(4) ;  Store return in callee frame
360 : ADD 5, 4, 0 ;  Push callee frame
361 : LDA 7, 334(0) ;  Call EXP
362 : LD 1, 3(5) ;  Load function result
363 : LDC 2, 4(0) ;  Caller frame size
364 : SUB 5, 5, 2 ;  Pop back to caller
365 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
366 : LD 1, 1(5) ;  Load parameter 'm' into R1
367 : ADD 2, 1, 0 ;  Move left operand to R2
368 : ADD 1, 3, 0 ;  Restore right operand into R1
369 : MUL 1, 2, 1 ;  R1 = left * right
370 : ST 1, 3(5) ;  Store result into current frame's return slot
371 : ST 1, 3(5) ;  Store function result into stack frame
372 : LD 6, 0(5) ;  Load return address
373 : LDA 7, 0(6) ;  Return to caller
374 : LD 1, 2(5) ;  Load parameter 'n' into R1
375 : ADD 3, 1, 0 ;  Move right operand to R3
376 : LD 1, 1(5) ;  Load parameter 'm' into R1
377 : ADD 2, 1, 0 ;  Move left operand to R2
378 : ADD 1, 3, 0 ;  Restore right operand into R1
379 : DIV 1, 2, 1 ;  R1 = left / right
380 : ADD 2, 1, 0 ;  Move left operand to R2
381 : LD 1, 2(5) ;  Load parameter 'n' into R1
382 : MUL 1, 2, 1 ;  R1 = left * right
383 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
384 : LD 1, 1(5) ;  Load parameter 'm' into R1
385 : ADD 2, 1, 0 ;  Move left operand to R2
386 : ADD 1, 3, 0 ;  Restore right operand into R1
387 : SUB 1, 2, 1 ;  R1 = left - right
388 : ST 1, 3(5) ;  Store result into current frame's return slot
389 : ST 1, 3(5) ;  Store function result into stack frame
390 : LD 6, 0(5) ;  Load return address
391 : LDA 7, 0(6) ;  Return to caller
392 : LD 1, 1(5) ;  Load parameter 'n' into R1
393 : ADD 3, 1, 0 ;  Move right operand to R3
394 : LDC 1, 0(0) ;  Load integer-literal value into R1
395 : ADD 2, 1, 0 ;  Move left operand to R2
396 : ADD 1, 3, 0 ;  Restore right operand into R1
397 : SUB 1, 2, 1 ;  left - right for less-than check
398 : JLT 1, 2(7) ;  If R1 < 0, jump to true
399 : LDC 1, 0(0) ;  false
400 : LDA 7, 1(7) ;  skip setting true
401 : LDC 1, 1(0) ;  true
402 : JEQ 1, 406(0) ;  If condition is false, jump to ELSE
403 : LD 1, 1(5) ;  Load parameter 'n' into R1
404 : ST 1, 2(5) ;  Store result into current frame's return slot
405 : LDA 7, 417(0) ;  Skip ELSE block
406 : LDA 4, 3(5) ;  Base of callee frame
407 : LD 1, 1(5) ;  Load parameter 'n' into R1
408 : ST 1, 1(4) ;  Store argument 0 in callee
409 : LDA 6, 413(0) ;  Return address
410 : ST 6, 0(4) ;  Store return in callee frame
411 : ADD 5, 4, 0 ;  Push callee frame
412 : LDA 7, 420(0) ;  Call NEG
413 : LD 1, 2(5) ;  Load function result
414 : LDC 2, 3(0) ;  Caller frame size
415 : SUB 5, 5, 2 ;  Pop back to caller
416 : ST 1, 2(5) ;  Store result into caller’s frame
417 : ST 1, 2(5) ;  Store function result into stack frame
418 : LD 6, 0(5) ;  Load return address
419 : LDA 7, 0(6) ;  Return to caller
420 : LD 1, 1(5) ;  Load parameter 'n' into R1
421 : SUB 1, 0, 1 ;  Negate value in R1
422 : ST 1, 2(5) ;  Store result into current frame's return slot
423 : ST 1, 2(5) ;  Store function result into stack frame
424 : LD 6, 0(5) ;  Load return address
425 : LDA 7, 0(6) ;  Return to caller
426 : LD 1, 2(5) ;  Load parameter 'q' into R1
427 : ADD 3, 1, 0 ;  Move right operand to R3
428 : LD 1, 1(5) ;  Load parameter 'p' into R1
429 : ADD 2, 1, 0 ;  Move left operand to R2
430 : ADD 1, 3, 0 ;  Restore right operand into R1
431 : DIV 1, 2, 1 ;  R1 = left / right
432 : ST 1, 3(5) ;  Store result into current frame's return slot
433 : ST 1, 3(5) ;  Store function result into stack frame
434 : LD 6, 0(5) ;  Load return address
435 : LDA 7, 0(6) ;  Return to caller
436 : LD 1, 2(5) ;  Load parameter 'q' into R1
437 : ADD 3, 1, 0 ;  Move right operand to R3
438 : LD 1, 1(5) ;  Load parameter 'p' into R1
439 : ADD 2, 1, 0 ;  Move left operand to R2
440 : ADD 1, 3, 0 ;  Restore right operand into R1
441 : MUL 1, 2, 1 ;  R1 = left * right
442 : ST 1, 3(5) ;  Store result into current frame's return slot
443 : ST 1, 3(5) ;  Store function result into stack frame
444 : LD 6, 0(5) ;  Load return address
445 : LDA 7, 0(6) ;  Return to caller
446 : LD 1, 2(5) ;  Load parameter 'q' into R1
447 : ADD 3, 1, 0 ;  Move right operand to R3
448 : LD 1, 1(5) ;  Load parameter 'p' into R1
449 : ADD 2, 1, 0 ;  Move left operand to R2
450 : ADD 1, 3, 0 ;  Restore right operand into R1
451 : SUB 1, 2, 1 ;  R1 = left - right
452 : ST 1, 3(5) ;  Store result into current frame's return slot
453 : ST 1, 3(5) ;  Store function result into stack frame
454 : LD 6, 0(5) ;  Load return address
455 : LDA 7, 0(6) ;  Return to caller
456 : LD 1, 2(5) ;  Load parameter 'q' into R1
457 : ADD 3, 1, 0 ;  Move right operand to R3
458 : LD 1, 1(5) ;  Load parameter 'p' into R1
459 : ADD 2, 1, 0 ;  Move left operand to R2
460 : ADD 1, 3, 0 ;  Restore right operand into R1
461 : ADD 1, 2, 1 ;  R1 = left + right
462 : ST 1, 3(5) ;  Store result into current frame's return slot
463 : ST 1, 3(5) ;  Store function result into stack frame
464 : LD 6, 0(5) ;  Load return address
465 : LDA 7, 0(6) ;  Return to caller
466 : LD 1, 1(5) ;  Load parameter 'p' into R1
467 : JEQ 1, 471(0) ;  If condition is false, jump to ELSE
468 : LD 1, 2(5) ;  Load parameter 'q' into R1
469 : ST 1, 3(5) ;  Store result into current frame's return slot
470 : LDA 7, 473(0) ;  Skip ELSE block
471 : LDC 1, 0(0) ;  Load boolean-literal value into R1
472 : ST 1, 3(5) ;  Store result into current frame's return slot
473 : ST 1, 3(5) ;  Store function result into stack frame
474 : LD 6, 0(5) ;  Load return address
475 : LDA 7, 0(6) ;  Return to caller
476 : LD 1, 2(5) ;  Load parameter 'q' into R1
477 : ADD 3, 1, 0 ;  Move right operand to R3
478 : LD 1, 1(5) ;  Load parameter 'p' into R1
479 : ADD 2, 1, 0 ;  Move left operand to R2
480 : ADD 1, 3, 0 ;  Restore right operand into R1
481 : ADD 1, 2, 1 ;  R1 = left OR right
482 : ST 1, 3(5) ;  Store result into current frame's return slot
483 : ST 1, 3(5) ;  Store function result into stack frame
484 : LD 6, 0(5) ;  Load return address
485 : LDA 7, 0(6) ;  Return to caller
486 : LDA 4, 4(5) ;  Base of callee frame
487 : LD 1, 1(5) ;  Load parameter 'p' into R1
488 : ST 1, 1(4) ;  Store argument 0 in callee
489 : LD 1, 2(5) ;  Load parameter 'q' into R1
490 : ST 1, 2(4) ;  Store argument 1 in callee
491 : LDA 6, 495(0) ;  Return address
492 : ST 6, 0(4) ;  Store return in callee frame
493 : ADD 5, 4, 0 ;  Push callee frame
494 : LDA 7, 522(0) ;  Call LE
495 : LD 1, 3(5) ;  Load function result
496 : LDC 2, 4(0) ;  Caller frame size
497 : SUB 5, 5, 2 ;  Pop back to caller
498 : LDC 2, 1(0) ;  Load 1 into R2
499 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
500 : ST 1, 3(5) ;  Store result into current frame's return slot
501 : ST 1, 3(5) ;  Store function result into stack frame
502 : LD 6, 0(5) ;  Load return address
503 : LDA 7, 0(6) ;  Return to caller
504 : LDA 4, 4(5) ;  Base of callee frame
505 : LD 1, 1(5) ;  Load parameter 'p' into R1
506 : ST 1, 1(4) ;  Store argument 0 in callee
507 : LD 1, 2(5) ;  Load parameter 'q' into R1
508 : ST 1, 2(4) ;  Store argument 1 in callee
509 : LDA 6, 513(0) ;  Return address
510 : ST 6, 0(4) ;  Store return in callee frame
511 : ADD 5, 4, 0 ;  Push callee frame
512 : LDA 7, 584(0) ;  Call LT
513 : LD 1, 3(5) ;  Load function result
514 : LDC 2, 4(0) ;  Caller frame size
515 : SUB 5, 5, 2 ;  Pop back to caller
516 : LDC 2, 1(0) ;  Load 1 into R2
517 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
518 : ST 1, 3(5) ;  Store result into current frame's return slot
519 : ST 1, 3(5) ;  Store function result into stack frame
520 : LD 6, 0(5) ;  Load return address
521 : LDA 7, 0(6) ;  Return to caller
522 : LDA 4, 4(5) ;  Base of callee frame
523 : LD 1, 1(5) ;  Load parameter 'p' into R1
524 : ST 1, 1(4) ;  Store argument 0 in callee
525 : LD 1, 2(5) ;  Load parameter 'q' into R1
526 : ST 1, 2(4) ;  Store argument 1 in callee
527 : LDA 6, 531(0) ;  Return address
528 : ST 6, 0(4) ;  Store return in callee frame
529 : ADD 5, 4, 0 ;  Push callee frame
530 : LDA 7, 584(0) ;  Call LT
531 : LD 1, 3(5) ;  Load function result
532 : LDC 2, 4(0) ;  Caller frame size
533 : SUB 5, 5, 2 ;  Pop back to caller
534 : ADD 2, 1, 0 ;  Move left operand to R2
535 : LDA 4, 4(5) ;  Base of callee frame
536 : LD 1, 1(5) ;  Load parameter 'p' into R1
537 : ST 1, 1(4) ;  Store argument 0 in callee
538 : LD 1, 2(5) ;  Load parameter 'q' into R1
539 : ST 1, 2(4) ;  Store argument 1 in callee
540 : LDA 6, 544(0) ;  Return address
541 : ST 6, 0(4) ;  Store return in callee frame
542 : ADD 5, 4, 0 ;  Push callee frame
543 : LDA 7, 570(0) ;  Call EQ
544 : LD 1, 3(5) ;  Load function result
545 : LDC 2, 4(0) ;  Caller frame size
546 : SUB 5, 5, 2 ;  Pop back to caller
547 : ADD 1, 2, 1 ;  R1 = left OR right
548 : ST 1, 3(5) ;  Store result into current frame's return slot
549 : ST 1, 3(5) ;  Store function result into stack frame
550 : LD 6, 0(5) ;  Load return address
551 : LDA 7, 0(6) ;  Return to caller
552 : LDA 4, 4(5) ;  Base of callee frame
553 : LD 1, 1(5) ;  Load parameter 'p' into R1
554 : ST 1, 1(4) ;  Store argument 0 in callee
555 : LD 1, 2(5) ;  Load parameter 'q' into R1
556 : ST 1, 2(4) ;  Store argument 1 in callee
557 : LDA 6, 561(0) ;  Return address
558 : ST 6, 0(4) ;  Store return in callee frame
559 : ADD 5, 4, 0 ;  Push callee frame
560 : LDA 7, 570(0) ;  Call EQ
561 : LD 1, 3(5) ;  Load function result
562 : LDC 2, 4(0) ;  Caller frame size
563 : SUB 5, 5, 2 ;  Pop back to caller
564 : LDC 2, 1(0) ;  Load 1 into R2
565 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
566 : ST 1, 3(5) ;  Store result into current frame's return slot
567 : ST 1, 3(5) ;  Store function result into stack frame
568 : LD 6, 0(5) ;  Load return address
569 : LDA 7, 0(6) ;  Return to caller
570 : LD 1, 2(5) ;  Load parameter 'q' into R1
571 : ADD 3, 1, 0 ;  Move right operand to R3
572 : LD 1, 1(5) ;  Load parameter 'p' into R1
573 : ADD 2, 1, 0 ;  Move left operand to R2
574 : ADD 1, 3, 0 ;  Restore right operand into R1
575 : SUB 1, 2, 1 ;  left - right for equality check
576 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
577 : LDC 1, 0(0) ;  false
578 : LDA 7, 1(7) ;  skip setting true
579 : LDC 1, 1(0) ;  true
580 : ST 1, 3(5) ;  Store result into current frame's return slot
581 : ST 1, 3(5) ;  Store function result into stack frame
582 : LD 6, 0(5) ;  Load return address
583 : LDA 7, 0(6) ;  Return to caller
584 : LD 1, 2(5) ;  Load parameter 'q' into R1
585 : ADD 3, 1, 0 ;  Move right operand to R3
586 : LD 1, 1(5) ;  Load parameter 'p' into R1
587 : ADD 2, 1, 0 ;  Move left operand to R2
588 : ADD 1, 3, 0 ;  Restore right operand into R1
589 : SUB 1, 2, 1 ;  left - right for less-than check
590 : JLT 1, 2(7) ;  If R1 < 0, jump to true
591 : LDC 1, 0(0) ;  false
592 : LDA 7, 1(7) ;  skip setting true
593 : LDC 1, 1(0) ;  true
594 : ST 1, 3(5) ;  Store result into current frame's return slot
595 : ST 1, 3(5) ;  Store function result into stack frame
596 : LD 6, 0(5) ;  Load return address
597 : LDA 7, 0(6) ;  Return to caller
598 : LDC 1, 2147483647(0) ;  Load integer-literal value into R1
599 : SUB 1, 0, 1 ;  Negate value in R1
600 : ADD 2, 1, 0 ;  Move left operand to R2
601 : LDC 1, 1(0) ;  Load integer-literal value into R1
602 : SUB 1, 2, 1 ;  R1 = left - right
603 : ST 1, 1(5) ;  Store result into current frame's return slot
604 : ST 1, 1(5) ;  Store function result into stack frame
605 : LD 6, 0(5) ;  Load return address
606 : LDA 7, 0(6) ;  Return to caller
607 : LDC 1, 2147483647(0) ;  Load integer-literal value into R1
608 : ST 1, 1(5) ;  Store result into current frame's return slot
609 : ST 1, 1(5) ;  Store function result into stack frame
610 : LD 6, 0(5) ;  Load return address
611 : LDA 7, 0(6) ;  Return to caller
