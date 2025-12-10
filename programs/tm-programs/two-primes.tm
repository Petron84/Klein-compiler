0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LDC 1, 3(0) ;  Load integer-literal value into R1
15 : ADD 3, 1, 0 ;  Move right operand to R3
16 : LD 1, 2(5) ;  Load parameter 'selector' into R1
17 : ADD 2, 1, 0 ;  Move left operand to R2
18 : ADD 1, 3, 0 ;  Restore right operand into R1
19 : SUB 1, 2, 1 ;  left - right for equality check
20 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 37(0) ;  If condition is false, jump to ELSE
25 : LDA 4, 3(5) ;  Base of callee frame
26 : LD 1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(4) ;  Store argument 0 in callee
28 : LDA 6, 32(0) ;  Return address
29 : ST 6, 0(4) ;  Store return in callee frame
30 : ADD 5, 4, 0 ;  Push callee frame
31 : LDA 7, 341(0) ;  Call emirp
32 : LD 1, 2(5) ;  Load function result
33 : LDC 2, 3(0) ;  Caller frame size
34 : SUB 5, 5, 2 ;  Pop back to caller
35 : ST 1, 3(5) ;  Store result into caller’s frame
36 : LDA 7, 85(0) ;  Skip ELSE block
37 : LDC 1, 5(0) ;  Load integer-literal value into R1
38 : ADD 3, 1, 0 ;  Move right operand to R3
39 : LD 1, 2(5) ;  Load parameter 'selector' into R1
40 : ADD 2, 1, 0 ;  Move left operand to R2
41 : ADD 1, 3, 0 ;  Restore right operand into R1
42 : SUB 1, 2, 1 ;  left - right for equality check
43 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
44 : LDC 1, 0(0) ;  false
45 : LDA 7, 1(7) ;  skip setting true
46 : LDC 1, 1(0) ;  true
47 : JEQ 1, 60(0) ;  If condition is false, jump to ELSE
48 : LDA 4, 3(5) ;  Base of callee frame
49 : LD 1, 1(5) ;  Load parameter 'n' into R1
50 : ST 1, 1(4) ;  Store argument 0 in callee
51 : LDA 6, 55(0) ;  Return address
52 : ST 6, 0(4) ;  Store return in callee frame
53 : ADD 5, 4, 0 ;  Push callee frame
54 : LDA 7, 297(0) ;  Call snowball
55 : LD 1, 2(5) ;  Load function result
56 : LDC 2, 3(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop back to caller
58 : ST 1, 3(5) ;  Store result into caller’s frame
59 : LDA 7, 85(0) ;  Skip ELSE block
60 : LDC 1, 8(0) ;  Load integer-literal value into R1
61 : ADD 3, 1, 0 ;  Move right operand to R3
62 : LD 1, 2(5) ;  Load parameter 'selector' into R1
63 : ADD 2, 1, 0 ;  Move left operand to R2
64 : ADD 1, 3, 0 ;  Restore right operand into R1
65 : SUB 1, 2, 1 ;  left - right for equality check
66 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
67 : LDC 1, 0(0) ;  false
68 : LDA 7, 1(7) ;  skip setting true
69 : LDC 1, 1(0) ;  true
70 : JEQ 1, 83(0) ;  If condition is false, jump to ELSE
71 : LDA 4, 3(5) ;  Base of callee frame
72 : LD 1, 1(5) ;  Load parameter 'n' into R1
73 : ST 1, 1(4) ;  Store argument 0 in callee
74 : LDA 6, 78(0) ;  Return address
75 : ST 6, 0(4) ;  Store return in callee frame
76 : ADD 5, 4, 0 ;  Push callee frame
77 : LDA 7, 266(0) ;  Call doBoth
78 : LD 1, 2(5) ;  Load function result
79 : LDC 2, 3(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop back to caller
81 : ST 1, 3(5) ;  Store result into caller’s frame
82 : LDA 7, 85(0) ;  Skip ELSE block
83 : LDC 1, 0(0) ;  Load boolean-literal value into R1
84 : ST 1, 3(5) ;  Store result into current frame's return slot
85 : LD 1, 3(5) ;  Load return value into register 1
86 : LD 6, 0(5) ;  Load return address for main function into register 6
87 : LDA 7, 0(6) ;  Jump to runtime continuation
88 : LD 1, 2(5) ;  Load parameter 'n' into R1
89 : ADD 3, 1, 0 ;  Move right operand to R3
90 : LD 1, 1(5) ;  Load parameter 'm' into R1
91 : ADD 2, 1, 0 ;  Move left operand to R2
92 : ADD 1, 3, 0 ;  Restore right operand into R1
93 : DIV 1, 2, 1 ;  R1 = left / right
94 : ADD 2, 1, 0 ;  Move left operand to R2
95 : LD 1, 2(5) ;  Load parameter 'n' into R1
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
98 : LD 1, 1(5) ;  Load parameter 'm' into R1
99 : ADD 2, 1, 0 ;  Move left operand to R2
100 : ADD 1, 3, 0 ;  Restore right operand into R1
101 : SUB 1, 2, 1 ;  R1 = left - right
102 : ST 1, 3(5) ;  Store result into current frame's return slot
103 : ST 1, 3(5) ;  Store function result into stack frame
104 : LD 6, 0(5) ;  Load return address
105 : LDA 7, 0(6) ;  Return to caller
106 : LDC 1, 0(0) ;  Load integer-literal value into R1
107 : ADD 3, 1, 0 ;  Move right operand to R3
108 : LD 1, 1(5) ;  Load parameter 'n' into R1
109 : ADD 2, 1, 0 ;  Move left operand to R2
110 : ADD 1, 3, 0 ;  Restore right operand into R1
111 : SUB 1, 2, 1 ;  left - right for equality check
112 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
113 : LDC 1, 0(0) ;  false
114 : LDA 7, 1(7) ;  skip setting true
115 : LDC 1, 1(0) ;  true
116 : JEQ 1, 120(0) ;  If condition is false, jump to ELSE
117 : LD 1, 2(5) ;  Load parameter 'nR' into R1
118 : ST 1, 3(5) ;  Store result into current frame's return slot
119 : LDA 7, 157(0) ;  Skip ELSE block
120 : LDA 4, 4(5) ;  Base of callee frame
121 : LDC 1, 10(0) ;  Load integer-literal value into R1
122 : ADD 3, 1, 0 ;  Move right operand to R3
123 : LD 1, 1(5) ;  Load parameter 'n' into R1
124 : ADD 2, 1, 0 ;  Move left operand to R2
125 : ADD 1, 3, 0 ;  Restore right operand into R1
126 : DIV 1, 2, 1 ;  R1 = left / right
127 : ST 1, 1(4) ;  Store argument 0 in callee
128 : LD 1, 2(5) ;  Load parameter 'nR' into R1
129 : ADD 3, 1, 0 ;  Move right operand to R3
130 : LDC 1, 10(0) ;  Load integer-literal value into R1
131 : ADD 2, 1, 0 ;  Move left operand to R2
132 : ADD 1, 3, 0 ;  Restore right operand into R1
133 : MUL 1, 2, 1 ;  R1 = left * right
134 : ADD 2, 1, 0 ;  Move left operand to R2
135 : LDA 4, 4(5) ;  Base of callee frame
136 : LD 1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 1(4) ;  Store argument 0 in callee
138 : LDC 1, 10(0) ;  Load integer-literal value into R1
139 : ST 1, 2(4) ;  Store argument 1 in callee
140 : LDA 6, 144(0) ;  Return address
141 : ST 6, 0(4) ;  Store return in callee frame
142 : ADD 5, 4, 0 ;  Push callee frame
143 : LDA 7, 88(0) ;  Call MOD
144 : LD 1, 3(5) ;  Load function result
145 : LDC 2, 4(0) ;  Caller frame size
146 : SUB 5, 5, 2 ;  Pop back to caller
147 : ADD 1, 2, 1 ;  R1 = left + right
148 : ST 1, 2(4) ;  Store argument 1 in callee
149 : LDA 6, 153(0) ;  Return address
150 : ST 6, 0(4) ;  Store return in callee frame
151 : ADD 5, 4, 0 ;  Push callee frame
152 : LDA 7, 106(0) ;  Call reverseL
153 : LD 1, 3(5) ;  Load function result
154 : LDC 2, 4(0) ;  Caller frame size
155 : SUB 5, 5, 2 ;  Pop back to caller
156 : ST 1, 3(5) ;  Store result into caller’s frame
157 : ST 1, 3(5) ;  Store function result into stack frame
158 : LD 6, 0(5) ;  Load return address
159 : LDA 7, 0(6) ;  Return to caller
160 : LDA 4, 4(5) ;  Base of callee frame
161 : LD 1, 1(5) ;  Load parameter 'n' into R1
162 : ST 1, 1(4) ;  Store argument 0 in callee
163 : LDC 1, 0(0) ;  Load integer-literal value into R1
164 : ST 1, 2(4) ;  Store argument 1 in callee
165 : LDA 6, 169(0) ;  Return address
166 : ST 6, 0(4) ;  Store return in callee frame
167 : ADD 5, 4, 0 ;  Push callee frame
168 : LDA 7, 106(0) ;  Call reverseL
169 : LD 1, 3(5) ;  Load function result
170 : LDC 2, 4(0) ;  Caller frame size
171 : SUB 5, 5, 2 ;  Pop back to caller
172 : ST 1, 2(5) ;  Store result into caller’s frame
173 : ST 1, 2(5) ;  Store function result into stack frame
174 : LD 6, 0(5) ;  Load return address
175 : LDA 7, 0(6) ;  Return to caller
176 : LDA 4, 4(5) ;  Base of callee frame
177 : LD 1, 2(5) ;  Load parameter 'b' into R1
178 : ST 1, 1(4) ;  Store argument 0 in callee
179 : LD 1, 1(5) ;  Load parameter 'a' into R1
180 : ST 1, 2(4) ;  Store argument 1 in callee
181 : LDA 6, 185(0) ;  Return address
182 : ST 6, 0(4) ;  Store return in callee frame
183 : ADD 5, 4, 0 ;  Push callee frame
184 : LDA 7, 88(0) ;  Call MOD
185 : LD 1, 3(5) ;  Load function result
186 : LDC 2, 4(0) ;  Caller frame size
187 : SUB 5, 5, 2 ;  Pop back to caller
188 : ADD 2, 1, 0 ;  Move left operand to R2
189 : LDC 1, 0(0) ;  Load integer-literal value into R1
190 : SUB 1, 2, 1 ;  left - right for equality check
191 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
192 : LDC 1, 0(0) ;  false
193 : LDA 7, 1(7) ;  skip setting true
194 : LDC 1, 1(0) ;  true
195 : ST 1, 3(5) ;  Store result into current frame's return slot
196 : ST 1, 3(5) ;  Store function result into stack frame
197 : LD 6, 0(5) ;  Load return address
198 : LDA 7, 0(6) ;  Return to caller
199 : LD 1, 2(5) ;  Load parameter 'n' into R1
200 : ADD 3, 1, 0 ;  Move right operand to R3
201 : LD 1, 1(5) ;  Load parameter 'i' into R1
202 : ADD 2, 1, 0 ;  Move left operand to R2
203 : ADD 1, 3, 0 ;  Restore right operand into R1
204 : SUB 1, 2, 1 ;  left - right for less-than check
205 : JLT 1, 2(7) ;  If R1 < 0, jump to true
206 : LDC 1, 0(0) ;  false
207 : LDA 7, 1(7) ;  skip setting true
208 : LDC 1, 1(0) ;  true
209 : JEQ 1, 243(0) ;  If condition is false, jump to ELSE
210 : LDA 4, 4(5) ;  Base of callee frame
211 : LD 1, 1(5) ;  Load parameter 'i' into R1
212 : ST 1, 1(4) ;  Store argument 0 in callee
213 : LD 1, 2(5) ;  Load parameter 'n' into R1
214 : ST 1, 2(4) ;  Store argument 1 in callee
215 : LDA 6, 219(0) ;  Return address
216 : ST 6, 0(4) ;  Store return in callee frame
217 : ADD 5, 4, 0 ;  Push callee frame
218 : LDA 7, 176(0) ;  Call divides
219 : LD 1, 3(5) ;  Load function result
220 : LDC 2, 4(0) ;  Caller frame size
221 : SUB 5, 5, 2 ;  Pop back to caller
222 : ADD 2, 1, 0 ;  Move left operand to R2
223 : LDA 4, 4(5) ;  Base of callee frame
224 : LDC 1, 1(0) ;  Load integer-literal value into R1
225 : ADD 3, 1, 0 ;  Move right operand to R3
226 : LD 1, 1(5) ;  Load parameter 'i' into R1
227 : ADD 2, 1, 0 ;  Move left operand to R2
228 : ADD 1, 3, 0 ;  Restore right operand into R1
229 : ADD 1, 2, 1 ;  R1 = left + right
230 : ST 1, 1(4) ;  Store argument 0 in callee
231 : LD 1, 2(5) ;  Load parameter 'n' into R1
232 : ST 1, 2(4) ;  Store argument 1 in callee
233 : LDA 6, 237(0) ;  Return address
234 : ST 6, 0(4) ;  Store return in callee frame
235 : ADD 5, 4, 0 ;  Push callee frame
236 : LDA 7, 199(0) ;  Call hasDivisorFrom
237 : LD 1, 3(5) ;  Load function result
238 : LDC 2, 4(0) ;  Caller frame size
239 : SUB 5, 5, 2 ;  Pop back to caller
240 : ADD 1, 2, 1 ;  R1 = left OR right
241 : ST 1, 3(5) ;  Store result into current frame's return slot
242 : LDA 7, 245(0) ;  Skip ELSE block
243 : LDC 1, 0(0) ;  Load boolean-literal value into R1
244 : ST 1, 3(5) ;  Store result into current frame's return slot
245 : ST 1, 3(5) ;  Store function result into stack frame
246 : LD 6, 0(5) ;  Load return address
247 : LDA 7, 0(6) ;  Return to caller
248 : LDA 4, 4(5) ;  Base of callee frame
249 : LDC 1, 2(0) ;  Load integer-literal value into R1
250 : ST 1, 1(4) ;  Store argument 0 in callee
251 : LD 1, 1(5) ;  Load parameter 'n' into R1
252 : ST 1, 2(4) ;  Store argument 1 in callee
253 : LDA 6, 257(0) ;  Return address
254 : ST 6, 0(4) ;  Store return in callee frame
255 : ADD 5, 4, 0 ;  Push callee frame
256 : LDA 7, 199(0) ;  Call hasDivisorFrom
257 : LD 1, 3(5) ;  Load function result
258 : LDC 2, 4(0) ;  Caller frame size
259 : SUB 5, 5, 2 ;  Pop back to caller
260 : LDC 2, 1(0) ;  Load 1 into R2
261 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
262 : ST 1, 2(5) ;  Store result into current frame's return slot
263 : ST 1, 2(5) ;  Store function result into stack frame
264 : LD 6, 0(5) ;  Load return address
265 : LDA 7, 0(6) ;  Return to caller
266 : LDA 4, 3(5) ;  Base of callee frame
267 : LD 1, 1(5) ;  Load parameter 'n' into R1
268 : ST 1, 1(4) ;  Store argument 0 in callee
269 : LDA 6, 273(0) ;  Return address
270 : ST 6, 0(4) ;  Store return in callee frame
271 : ADD 5, 4, 0 ;  Push callee frame
272 : LDA 7, 341(0) ;  Call emirp
273 : LD 1, 2(5) ;  Load function result
274 : LDC 2, 3(0) ;  Caller frame size
275 : SUB 5, 5, 2 ;  Pop back to caller
276 : LDA 4, 3(5) ;  Base of callee frame
277 : LDA 6, 281(0) ;  Return address
278 : ST 6, 0(4) ;  Store return addr in callee frame
279 : ADD 5, 4, 0 ;  Push new frame
280 : LDA 7, 11(0) ;  Call print
281 : LDC 2, 3(0) ;  Caller frame size
282 : SUB 5, 5, 2 ;  Pop frame
283 : LDA 4, 3(5) ;  Base of callee frame
284 : LD 1, 1(5) ;  Load parameter 'n' into R1
285 : ST 1, 1(4) ;  Store argument 0 in callee
286 : LDA 6, 290(0) ;  Return address
287 : ST 6, 0(4) ;  Store return in callee frame
288 : ADD 5, 4, 0 ;  Push callee frame
289 : LDA 7, 297(0) ;  Call snowball
290 : LD 1, 2(5) ;  Load function result
291 : LDC 2, 3(0) ;  Caller frame size
292 : SUB 5, 5, 2 ;  Pop back to caller
293 : ST 1, 2(5) ;  Store result into caller’s frame
294 : ST 1, 2(5) ;  Store function result into stack frame
295 : LD 6, 0(5) ;  Load return address
296 : LDA 7, 0(6) ;  Return to caller
297 : LDA 4, 3(5) ;  Base of callee frame
298 : LD 1, 1(5) ;  Load parameter 'n' into R1
299 : ST 1, 1(4) ;  Store argument 0 in callee
300 : LDA 6, 304(0) ;  Return address
301 : ST 6, 0(4) ;  Store return in callee frame
302 : ADD 5, 4, 0 ;  Push callee frame
303 : LDA 7, 248(0) ;  Call isPrime
304 : LD 1, 2(5) ;  Load function result
305 : LDC 2, 3(0) ;  Caller frame size
306 : SUB 5, 5, 2 ;  Pop back to caller
307 : ADD 2, 1, 0 ;  Move left operand to R2
308 : LDC 1, 10(0) ;  Load integer-literal value into R1
309 : ADD 3, 1, 0 ;  Move right operand to R3
310 : LD 1, 1(5) ;  Load parameter 'n' into R1
311 : ADD 2, 1, 0 ;  Move left operand to R2
312 : ADD 1, 3, 0 ;  Restore right operand into R1
313 : SUB 1, 2, 1 ;  left - right for less-than check
314 : JLT 1, 2(7) ;  If R1 < 0, jump to true
315 : LDC 1, 0(0) ;  false
316 : LDA 7, 1(7) ;  skip setting true
317 : LDC 1, 1(0) ;  true
318 : JEQ 1, 321(0) ;  If condition is false, jump to ELSE
319 : LDC 1, 1(0) ;  Load boolean-literal value into R1
320 : LDA 7, 336(0) ;  Skip ELSE block
321 : LDA 4, 3(5) ;  Base of callee frame
322 : LDC 1, 10(0) ;  Load integer-literal value into R1
323 : ADD 3, 1, 0 ;  Move right operand to R3
324 : LD 1, 1(5) ;  Load parameter 'n' into R1
325 : ADD 2, 1, 0 ;  Move left operand to R2
326 : ADD 1, 3, 0 ;  Restore right operand into R1
327 : DIV 1, 2, 1 ;  R1 = left / right
328 : ST 1, 1(4) ;  Store argument 0 in callee
329 : LDA 6, 333(0) ;  Return address
330 : ST 6, 0(4) ;  Store return in callee frame
331 : ADD 5, 4, 0 ;  Push callee frame
332 : LDA 7, 248(0) ;  Call isPrime
333 : LD 1, 2(5) ;  Load function result
334 : LDC 2, 3(0) ;  Caller frame size
335 : SUB 5, 5, 2 ;  Pop back to caller
336 : MUL 1, 2, 1 ;  R1 = left AND right
337 : ST 1, 2(5) ;  Store result into current frame's return slot
338 : ST 1, 2(5) ;  Store function result into stack frame
339 : LD 6, 0(5) ;  Load return address
340 : LDA 7, 0(6) ;  Return to caller
341 : LDA 4, 3(5) ;  Base of callee frame
342 : LD 1, 1(5) ;  Load parameter 'n' into R1
343 : ST 1, 1(4) ;  Store argument 0 in callee
344 : LDA 6, 348(0) ;  Return address
345 : ST 6, 0(4) ;  Store return in callee frame
346 : ADD 5, 4, 0 ;  Push callee frame
347 : LDA 7, 248(0) ;  Call isPrime
348 : LD 1, 2(5) ;  Load function result
349 : LDC 2, 3(0) ;  Caller frame size
350 : SUB 5, 5, 2 ;  Pop back to caller
351 : ADD 2, 1, 0 ;  Move left operand to R2
352 : LDA 4, 3(5) ;  Base of callee frame
353 : LDA 4, 3(5) ;  Base of callee frame
354 : LD 1, 1(5) ;  Load parameter 'n' into R1
355 : ST 1, 1(4) ;  Store argument 0 in callee
356 : LDA 6, 360(0) ;  Return address
357 : ST 6, 0(4) ;  Store return in callee frame
358 : ADD 5, 4, 0 ;  Push callee frame
359 : LDA 7, 160(0) ;  Call reverse
360 : LD 1, 2(5) ;  Load function result
361 : LDC 2, 3(0) ;  Caller frame size
362 : SUB 5, 5, 2 ;  Pop back to caller
363 : ST 1, 1(4) ;  Store argument 0 in callee
364 : LDA 6, 368(0) ;  Return address
365 : ST 6, 0(4) ;  Store return in callee frame
366 : ADD 5, 4, 0 ;  Push callee frame
367 : LDA 7, 248(0) ;  Call isPrime
368 : LD 1, 2(5) ;  Load function result
369 : LDC 2, 3(0) ;  Caller frame size
370 : SUB 5, 5, 2 ;  Pop back to caller
371 : MUL 1, 2, 1 ;  R1 = left AND right
372 : ST 1, 2(5) ;  Store result into current frame's return slot
373 : ST 1, 2(5) ;  Store function result into stack frame
374 : LD 6, 0(5) ;  Load return address
375 : LDA 7, 0(6) ;  Return to caller
