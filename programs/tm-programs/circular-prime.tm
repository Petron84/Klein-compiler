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
13 : LD 1, 1(5) ;  Load parameter 'x' into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDA 6, 19(0) ;  Return address
16 : ST 6, 0(4) ;  Store return in callee frame
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 7, 516(0) ;  Call circularPrimesTo
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 2(5) ;  Store result into caller’s frame
23 : LD 1, 2(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to runtime continuation
26 : LD 1, 2(5) ;  Load parameter 'den' into R1
27 : ADD 3, 1, 0 ;  Move right operand to R3
28 : LD 1, 1(5) ;  Load parameter 'num' into R1
29 : ADD 2, 1, 0 ;  Move left operand to R2
30 : ADD 1, 3, 0 ;  Restore right operand into R1
31 : SUB 1, 2, 1 ;  left - right for less-than check
32 : JLT 1, 2(7) ;  If R1 < 0, jump to true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 40(0) ;  If condition is false, jump to ELSE
37 : LD 1, 1(5) ;  Load parameter 'num' into R1
38 : ST 1, 3(5) ;  Store result into current frame's return slot
39 : LDA 7, 58(0) ;  Skip ELSE block
40 : LDA 4, 4(5) ;  Base of callee frame
41 : LD 1, 2(5) ;  Load parameter 'den' into R1
42 : ADD 3, 1, 0 ;  Move right operand to R3
43 : LD 1, 1(5) ;  Load parameter 'num' into R1
44 : ADD 2, 1, 0 ;  Move left operand to R2
45 : ADD 1, 3, 0 ;  Restore right operand into R1
46 : SUB 1, 2, 1 ;  R1 = left - right
47 : ST 1, 1(4) ;  Store argument 0 in callee
48 : LD 1, 2(5) ;  Load parameter 'den' into R1
49 : ST 1, 2(4) ;  Store argument 1 in callee
50 : LDA 6, 54(0) ;  Return address
51 : ST 6, 0(4) ;  Store return in callee frame
52 : ADD 5, 4, 0 ;  Push callee frame
53 : LDA 7, 26(0) ;  Call mod
54 : LD 1, 3(5) ;  Load function result
55 : LDC 2, 4(0) ;  Caller frame size
56 : SUB 5, 5, 2 ;  Pop back to caller
57 : ST 1, 3(5) ;  Store result into caller’s frame
58 : ST 1, 3(5) ;  Store function result into stack frame
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDA 4, 4(5) ;  Base of callee frame
62 : LD 1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(4) ;  Store argument 0 in callee
64 : LD 1, 1(5) ;  Load parameter 'a' into R1
65 : ST 1, 2(4) ;  Store argument 1 in callee
66 : LDA 6, 70(0) ;  Return address
67 : ST 6, 0(4) ;  Store return in callee frame
68 : ADD 5, 4, 0 ;  Push callee frame
69 : LDA 7, 26(0) ;  Call mod
70 : LD 1, 3(5) ;  Load function result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop back to caller
73 : ADD 2, 1, 0 ;  Move left operand to R2
74 : LDC 1, 0(0) ;  Load integer-literal value into R1
75 : SUB 1, 2, 1 ;  left - right for equality check
76 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
77 : LDC 1, 0(0) ;  false
78 : LDA 7, 1(7) ;  skip setting true
79 : LDC 1, 1(0) ;  true
80 : ST 1, 3(5) ;  Store result into current frame's return slot
81 : ST 1, 3(5) ;  Store function result into stack frame
82 : LD 6, 0(5) ;  Load return address
83 : LDA 7, 0(6) ;  Return to caller
84 : LD 1, 2(5) ;  Load parameter 'n' into R1
85 : ADD 3, 1, 0 ;  Move right operand to R3
86 : LD 1, 1(5) ;  Load parameter 'i' into R1
87 : ADD 2, 1, 0 ;  Move left operand to R2
88 : ADD 1, 3, 0 ;  Restore right operand into R1
89 : SUB 1, 2, 1 ;  left - right for less-than check
90 : JLT 1, 2(7) ;  If R1 < 0, jump to true
91 : LDC 1, 0(0) ;  false
92 : LDA 7, 1(7) ;  skip setting true
93 : LDC 1, 1(0) ;  true
94 : JEQ 1, 128(0) ;  If condition is false, jump to ELSE
95 : LDA 4, 4(5) ;  Base of callee frame
96 : LD 1, 1(5) ;  Load parameter 'i' into R1
97 : ST 1, 1(4) ;  Store argument 0 in callee
98 : LD 1, 2(5) ;  Load parameter 'n' into R1
99 : ST 1, 2(4) ;  Store argument 1 in callee
100 : LDA 6, 104(0) ;  Return address
101 : ST 6, 0(4) ;  Store return in callee frame
102 : ADD 5, 4, 0 ;  Push callee frame
103 : LDA 7, 61(0) ;  Call divides
104 : LD 1, 3(5) ;  Load function result
105 : LDC 2, 4(0) ;  Caller frame size
106 : SUB 5, 5, 2 ;  Pop back to caller
107 : ADD 2, 1, 0 ;  Move left operand to R2
108 : LDA 4, 4(5) ;  Base of callee frame
109 : LDC 1, 1(0) ;  Load integer-literal value into R1
110 : ADD 3, 1, 0 ;  Move right operand to R3
111 : LD 1, 1(5) ;  Load parameter 'i' into R1
112 : ADD 2, 1, 0 ;  Move left operand to R2
113 : ADD 1, 3, 0 ;  Restore right operand into R1
114 : ADD 1, 2, 1 ;  R1 = left + right
115 : ST 1, 1(4) ;  Store argument 0 in callee
116 : LD 1, 2(5) ;  Load parameter 'n' into R1
117 : ST 1, 2(4) ;  Store argument 1 in callee
118 : LDA 6, 122(0) ;  Return address
119 : ST 6, 0(4) ;  Store return in callee frame
120 : ADD 5, 4, 0 ;  Push callee frame
121 : LDA 7, 84(0) ;  Call hasDivisorFrom
122 : LD 1, 3(5) ;  Load function result
123 : LDC 2, 4(0) ;  Caller frame size
124 : SUB 5, 5, 2 ;  Pop back to caller
125 : ADD 1, 2, 1 ;  R1 = left OR right
126 : ST 1, 3(5) ;  Store result into current frame's return slot
127 : LDA 7, 130(0) ;  Skip ELSE block
128 : LDC 1, 0(0) ;  Load boolean-literal value into R1
129 : ST 1, 3(5) ;  Store result into current frame's return slot
130 : ST 1, 3(5) ;  Store function result into stack frame
131 : LD 6, 0(5) ;  Load return address
132 : LDA 7, 0(6) ;  Return to caller
133 : LDA 4, 4(5) ;  Base of callee frame
134 : LDC 1, 2(0) ;  Load integer-literal value into R1
135 : ST 1, 1(4) ;  Store argument 0 in callee
136 : LD 1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 2(4) ;  Store argument 1 in callee
138 : LDA 6, 142(0) ;  Return address
139 : ST 6, 0(4) ;  Store return in callee frame
140 : ADD 5, 4, 0 ;  Push callee frame
141 : LDA 7, 84(0) ;  Call hasDivisorFrom
142 : LD 1, 3(5) ;  Load function result
143 : LDC 2, 4(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop back to caller
145 : LDC 2, 1(0) ;  Load 1 into R2
146 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
147 : ST 1, 2(5) ;  Store result into current frame's return slot
148 : ST 1, 2(5) ;  Store function result into stack frame
149 : LD 6, 0(5) ;  Load return address
150 : LDA 7, 0(6) ;  Return to caller
151 : LDC 1, 10(0) ;  Load integer-literal value into R1
152 : ADD 3, 1, 0 ;  Move right operand to R3
153 : LD 1, 1(5) ;  Load parameter 'x' into R1
154 : ADD 2, 1, 0 ;  Move left operand to R2
155 : ADD 1, 3, 0 ;  Restore right operand into R1
156 : DIV 1, 2, 1 ;  R1 = left / right
157 : ADD 2, 1, 0 ;  Move left operand to R2
158 : LDC 1, 0(0) ;  Load integer-literal value into R1
159 : SUB 1, 2, 1 ;  left - right for equality check
160 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
161 : LDC 1, 0(0) ;  false
162 : LDA 7, 1(7) ;  skip setting true
163 : LDC 1, 1(0) ;  true
164 : JEQ 1, 168(0) ;  If condition is false, jump to ELSE
165 : LD 1, 2(5) ;  Load parameter 'y' into R1
166 : ST 1, 3(5) ;  Store result into current frame's return slot
167 : LDA 7, 191(0) ;  Skip ELSE block
168 : LDA 4, 4(5) ;  Base of callee frame
169 : LDC 1, 10(0) ;  Load integer-literal value into R1
170 : ADD 3, 1, 0 ;  Move right operand to R3
171 : LD 1, 1(5) ;  Load parameter 'x' into R1
172 : ADD 2, 1, 0 ;  Move left operand to R2
173 : ADD 1, 3, 0 ;  Restore right operand into R1
174 : DIV 1, 2, 1 ;  R1 = left / right
175 : ST 1, 1(4) ;  Store argument 0 in callee
176 : LDC 1, 1(0) ;  Load integer-literal value into R1
177 : ADD 3, 1, 0 ;  Move right operand to R3
178 : LD 1, 2(5) ;  Load parameter 'y' into R1
179 : ADD 2, 1, 0 ;  Move left operand to R2
180 : ADD 1, 3, 0 ;  Restore right operand into R1
181 : ADD 1, 2, 1 ;  R1 = left + right
182 : ST 1, 2(4) ;  Store argument 1 in callee
183 : LDA 6, 187(0) ;  Return address
184 : ST 6, 0(4) ;  Store return in callee frame
185 : ADD 5, 4, 0 ;  Push callee frame
186 : LDA 7, 151(0) ;  Call log10Helper
187 : LD 1, 3(5) ;  Load function result
188 : LDC 2, 4(0) ;  Caller frame size
189 : SUB 5, 5, 2 ;  Pop back to caller
190 : ST 1, 3(5) ;  Store result into caller’s frame
191 : ST 1, 3(5) ;  Store function result into stack frame
192 : LD 6, 0(5) ;  Load return address
193 : LDA 7, 0(6) ;  Return to caller
194 : LDA 4, 4(5) ;  Base of callee frame
195 : LD 1, 1(5) ;  Load parameter 'x' into R1
196 : ST 1, 1(4) ;  Store argument 0 in callee
197 : LDC 1, 0(0) ;  Load integer-literal value into R1
198 : ST 1, 2(4) ;  Store argument 1 in callee
199 : LDA 6, 203(0) ;  Return address
200 : ST 6, 0(4) ;  Store return in callee frame
201 : ADD 5, 4, 0 ;  Push callee frame
202 : LDA 7, 151(0) ;  Call log10Helper
203 : LD 1, 3(5) ;  Load function result
204 : LDC 2, 4(0) ;  Caller frame size
205 : SUB 5, 5, 2 ;  Pop back to caller
206 : ST 1, 2(5) ;  Store result into caller’s frame
207 : ST 1, 2(5) ;  Store function result into stack frame
208 : LD 6, 0(5) ;  Load return address
209 : LDA 7, 0(6) ;  Return to caller
210 : LDC 1, 0(0) ;  Load integer-literal value into R1
211 : ADD 3, 1, 0 ;  Move right operand to R3
212 : LD 1, 2(5) ;  Load parameter 'power' into R1
213 : ADD 2, 1, 0 ;  Move left operand to R2
214 : ADD 1, 3, 0 ;  Restore right operand into R1
215 : SUB 1, 2, 1 ;  left - right for equality check
216 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
217 : LDC 1, 0(0) ;  false
218 : LDA 7, 1(7) ;  skip setting true
219 : LDC 1, 1(0) ;  true
220 : JEQ 1, 224(0) ;  If condition is false, jump to ELSE
221 : LDC 1, 1(0) ;  Load integer-literal value into R1
222 : ST 1, 4(5) ;  Store result into current frame's return slot
223 : LDA 7, 263(0) ;  Skip ELSE block
224 : LDC 1, 1(0) ;  Load integer-literal value into R1
225 : ADD 3, 1, 0 ;  Move right operand to R3
226 : LD 1, 2(5) ;  Load parameter 'power' into R1
227 : ADD 2, 1, 0 ;  Move left operand to R2
228 : ADD 1, 3, 0 ;  Restore right operand into R1
229 : SUB 1, 2, 1 ;  left - right for equality check
230 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
231 : LDC 1, 0(0) ;  false
232 : LDA 7, 1(7) ;  skip setting true
233 : LDC 1, 1(0) ;  true
234 : JEQ 1, 238(0) ;  If condition is false, jump to ELSE
235 : LD 1, 3(5) ;  Load parameter 'total' into R1
236 : ST 1, 4(5) ;  Store result into current frame's return slot
237 : LDA 7, 263(0) ;  Skip ELSE block
238 : LDA 4, 5(5) ;  Base of callee frame
239 : LD 1, 1(5) ;  Load parameter 'base' into R1
240 : ST 1, 1(4) ;  Store argument 0 in callee
241 : LDC 1, 1(0) ;  Load integer-literal value into R1
242 : ADD 3, 1, 0 ;  Move right operand to R3
243 : LD 1, 2(5) ;  Load parameter 'power' into R1
244 : ADD 2, 1, 0 ;  Move left operand to R2
245 : ADD 1, 3, 0 ;  Restore right operand into R1
246 : SUB 1, 2, 1 ;  R1 = left - right
247 : ST 1, 2(4) ;  Store argument 1 in callee
248 : LD 1, 3(5) ;  Load parameter 'total' into R1
249 : ADD 3, 1, 0 ;  Move right operand to R3
250 : LD 1, 1(5) ;  Load parameter 'base' into R1
251 : ADD 2, 1, 0 ;  Move left operand to R2
252 : ADD 1, 3, 0 ;  Restore right operand into R1
253 : MUL 1, 2, 1 ;  R1 = left * right
254 : ST 1, 3(4) ;  Store argument 2 in callee
255 : LDA 6, 259(0) ;  Return address
256 : ST 6, 0(4) ;  Store return in callee frame
257 : ADD 5, 4, 0 ;  Push callee frame
258 : LDA 7, 210(0) ;  Call powHelper
259 : LD 1, 4(5) ;  Load function result
260 : LDC 2, 5(0) ;  Caller frame size
261 : SUB 5, 5, 2 ;  Pop back to caller
262 : ST 1, 4(5) ;  Store result into caller’s frame
263 : ST 1, 4(5) ;  Store function result into stack frame
264 : LD 6, 0(5) ;  Load return address
265 : LDA 7, 0(6) ;  Return to caller
266 : LDA 4, 5(5) ;  Base of callee frame
267 : LD 1, 1(5) ;  Load parameter 'x' into R1
268 : ST 1, 1(4) ;  Store argument 0 in callee
269 : LD 1, 2(5) ;  Load parameter 'y' into R1
270 : ST 1, 2(4) ;  Store argument 1 in callee
271 : LD 1, 1(5) ;  Load parameter 'x' into R1
272 : ST 1, 3(4) ;  Store argument 2 in callee
273 : LDA 6, 277(0) ;  Return address
274 : ST 6, 0(4) ;  Store return in callee frame
275 : ADD 5, 4, 0 ;  Push callee frame
276 : LDA 7, 210(0) ;  Call powHelper
277 : LD 1, 4(5) ;  Load function result
278 : LDC 2, 5(0) ;  Caller frame size
279 : SUB 5, 5, 2 ;  Pop back to caller
280 : ST 1, 3(5) ;  Store result into caller’s frame
281 : ST 1, 3(5) ;  Store function result into stack frame
282 : LD 6, 0(5) ;  Load return address
283 : LDA 7, 0(6) ;  Return to caller
284 : LDC 1, 10(0) ;  Load integer-literal value into R1
285 : ADD 3, 1, 0 ;  Move right operand to R3
286 : LD 1, 1(5) ;  Load parameter 'x' into R1
287 : ADD 2, 1, 0 ;  Move left operand to R2
288 : ADD 1, 3, 0 ;  Restore right operand into R1
289 : DIV 1, 2, 1 ;  R1 = left / right
290 : ADD 2, 1, 0 ;  Move left operand to R2
291 : LDA 4, 4(5) ;  Base of callee frame
292 : LD 1, 1(5) ;  Load parameter 'x' into R1
293 : ST 1, 1(4) ;  Store argument 0 in callee
294 : LDC 1, 10(0) ;  Load integer-literal value into R1
295 : ST 1, 2(4) ;  Store argument 1 in callee
296 : LDA 6, 300(0) ;  Return address
297 : ST 6, 0(4) ;  Store return in callee frame
298 : ADD 5, 4, 0 ;  Push callee frame
299 : LDA 7, 26(0) ;  Call mod
300 : LD 1, 3(5) ;  Load function result
301 : LDC 2, 4(0) ;  Caller frame size
302 : SUB 5, 5, 2 ;  Pop back to caller
303 : ADD 2, 1, 0 ;  Move left operand to R2
304 : LDA 4, 4(5) ;  Base of callee frame
305 : LDC 1, 10(0) ;  Load integer-literal value into R1
306 : ST 1, 1(4) ;  Store argument 0 in callee
307 : LDA 4, 3(5) ;  Base of callee frame
308 : LD 1, 1(5) ;  Load parameter 'x' into R1
309 : ST 1, 1(4) ;  Store argument 0 in callee
310 : LDA 6, 314(0) ;  Return address
311 : ST 6, 0(4) ;  Store return in callee frame
312 : ADD 5, 4, 0 ;  Push callee frame
313 : LDA 7, 194(0) ;  Call log10
314 : LD 1, 2(5) ;  Load function result
315 : LDC 2, 3(0) ;  Caller frame size
316 : SUB 5, 5, 2 ;  Pop back to caller
317 : ST 1, 2(4) ;  Store argument 1 in callee
318 : LDA 6, 322(0) ;  Return address
319 : ST 6, 0(4) ;  Store return in callee frame
320 : ADD 5, 4, 0 ;  Push callee frame
321 : LDA 7, 266(0) ;  Call pow
322 : LD 1, 3(5) ;  Load function result
323 : LDC 2, 4(0) ;  Caller frame size
324 : SUB 5, 5, 2 ;  Pop back to caller
325 : MUL 1, 2, 1 ;  R1 = left * right
326 : ADD 1, 2, 1 ;  R1 = left + right
327 : ST 1, 2(5) ;  Store result into current frame's return slot
328 : ST 1, 2(5) ;  Store function result into stack frame
329 : LD 6, 0(5) ;  Load return address
330 : LDA 7, 0(6) ;  Return to caller
331 : LD 1, 1(5) ;  Load parameter 'x' into R1
332 : LDA 4, 3(5) ;  Base of callee frame
333 : LDA 6, 337(0) ;  Return address
334 : ST 6, 0(4) ;  Store return addr in callee frame
335 : ADD 5, 4, 0 ;  Push new frame
336 : LDA 7, 9(0) ;  Call print
337 : LDC 2, 3(0) ;  Caller frame size
338 : SUB 5, 5, 2 ;  Pop frame
339 : LDC 1, 1(0) ;  Load boolean-literal value into R1
340 : ST 1, 2(5) ;  Store result into current frame's return slot
341 : ST 1, 2(5) ;  Store function result into stack frame
342 : LD 6, 0(5) ;  Load return address
343 : LDA 7, 0(6) ;  Return to caller
344 : LDC 1, 0(0) ;  Load integer-literal value into R1
345 : ADD 3, 1, 0 ;  Move right operand to R3
346 : LD 1, 2(5) ;  Load parameter 'turns' into R1
347 : ADD 2, 1, 0 ;  Move left operand to R2
348 : ADD 1, 3, 0 ;  Restore right operand into R1
349 : SUB 1, 2, 1 ;  left - right for equality check
350 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
351 : LDC 1, 0(0) ;  false
352 : LDA 7, 1(7) ;  skip setting true
353 : LDC 1, 1(0) ;  true
354 : JEQ 1, 358(0) ;  If condition is false, jump to ELSE
355 : LDC 1, 1(0) ;  Load boolean-literal value into R1
356 : ST 1, 3(5) ;  Store result into current frame's return slot
357 : LDA 7, 397(0) ;  Skip ELSE block
358 : LDA 4, 3(5) ;  Base of callee frame
359 : LD 1, 1(5) ;  Load parameter 'x' into R1
360 : ST 1, 1(4) ;  Store argument 0 in callee
361 : LDA 6, 365(0) ;  Return address
362 : ST 6, 0(4) ;  Store return in callee frame
363 : ADD 5, 4, 0 ;  Push callee frame
364 : LDA 7, 133(0) ;  Call isPrime
365 : LD 1, 2(5) ;  Load function result
366 : LDC 2, 3(0) ;  Caller frame size
367 : SUB 5, 5, 2 ;  Pop back to caller
368 : ADD 2, 1, 0 ;  Move left operand to R2
369 : LDA 4, 4(5) ;  Base of callee frame
370 : LDA 4, 3(5) ;  Base of callee frame
371 : LD 1, 1(5) ;  Load parameter 'x' into R1
372 : ST 1, 1(4) ;  Store argument 0 in callee
373 : LDA 6, 377(0) ;  Return address
374 : ST 6, 0(4) ;  Store return in callee frame
375 : ADD 5, 4, 0 ;  Push callee frame
376 : LDA 7, 284(0) ;  Call rotate
377 : LD 1, 2(5) ;  Load function result
378 : LDC 2, 3(0) ;  Caller frame size
379 : SUB 5, 5, 2 ;  Pop back to caller
380 : ST 1, 1(4) ;  Store argument 0 in callee
381 : LDC 1, 1(0) ;  Load integer-literal value into R1
382 : ADD 3, 1, 0 ;  Move right operand to R3
383 : LD 1, 2(5) ;  Load parameter 'turns' into R1
384 : ADD 2, 1, 0 ;  Move left operand to R2
385 : ADD 1, 3, 0 ;  Restore right operand into R1
386 : SUB 1, 2, 1 ;  R1 = left - right
387 : ST 1, 2(4) ;  Store argument 1 in callee
388 : LDA 6, 392(0) ;  Return address
389 : ST 6, 0(4) ;  Store return in callee frame
390 : ADD 5, 4, 0 ;  Push callee frame
391 : LDA 7, 344(0) ;  Call isCircularPrimeHelper
392 : LD 1, 3(5) ;  Load function result
393 : LDC 2, 4(0) ;  Caller frame size
394 : SUB 5, 5, 2 ;  Pop back to caller
395 : MUL 1, 2, 1 ;  R1 = left AND right
396 : ST 1, 3(5) ;  Store result into current frame's return slot
397 : ST 1, 3(5) ;  Store function result into stack frame
398 : LD 6, 0(5) ;  Load return address
399 : LDA 7, 0(6) ;  Return to caller
400 : LDA 4, 4(5) ;  Base of callee frame
401 : LD 1, 1(5) ;  Load parameter 'x' into R1
402 : ST 1, 1(4) ;  Store argument 0 in callee
403 : LDA 4, 3(5) ;  Base of callee frame
404 : LD 1, 1(5) ;  Load parameter 'x' into R1
405 : ST 1, 1(4) ;  Store argument 0 in callee
406 : LDA 6, 410(0) ;  Return address
407 : ST 6, 0(4) ;  Store return in callee frame
408 : ADD 5, 4, 0 ;  Push callee frame
409 : LDA 7, 194(0) ;  Call log10
410 : LD 1, 2(5) ;  Load function result
411 : LDC 2, 3(0) ;  Caller frame size
412 : SUB 5, 5, 2 ;  Pop back to caller
413 : ADD 2, 1, 0 ;  Move left operand to R2
414 : LDC 1, 1(0) ;  Load integer-literal value into R1
415 : ADD 1, 2, 1 ;  R1 = left + right
416 : ST 1, 2(4) ;  Store argument 1 in callee
417 : LDA 6, 421(0) ;  Return address
418 : ST 6, 0(4) ;  Store return in callee frame
419 : ADD 5, 4, 0 ;  Push callee frame
420 : LDA 7, 344(0) ;  Call isCircularPrimeHelper
421 : LD 1, 3(5) ;  Load function result
422 : LDC 2, 4(0) ;  Caller frame size
423 : SUB 5, 5, 2 ;  Pop back to caller
424 : JEQ 1, 437(0) ;  If condition is false, jump to ELSE
425 : LDA 4, 3(5) ;  Base of callee frame
426 : LD 1, 1(5) ;  Load parameter 'x' into R1
427 : ST 1, 1(4) ;  Store argument 0 in callee
428 : LDA 6, 432(0) ;  Return address
429 : ST 6, 0(4) ;  Store return in callee frame
430 : ADD 5, 4, 0 ;  Push callee frame
431 : LDA 7, 331(0) ;  Call report
432 : LD 1, 2(5) ;  Load function result
433 : LDC 2, 3(0) ;  Caller frame size
434 : SUB 5, 5, 2 ;  Pop back to caller
435 : ST 1, 2(5) ;  Store result into caller’s frame
436 : LDA 7, 439(0) ;  Skip ELSE block
437 : LDC 1, 0(0) ;  Load boolean-literal value into R1
438 : ST 1, 2(5) ;  Store result into current frame's return slot
439 : ST 1, 2(5) ;  Store function result into stack frame
440 : LD 6, 0(5) ;  Load return address
441 : LDA 7, 0(6) ;  Return to caller
442 : LD 1, 1(5) ;  Load parameter 'top' into R1
443 : ADD 3, 1, 0 ;  Move right operand to R3
444 : LD 1, 2(5) ;  Load parameter 'x' into R1
445 : ADD 2, 1, 0 ;  Move left operand to R2
446 : ADD 1, 3, 0 ;  Restore right operand into R1
447 : SUB 1, 2, 1 ;  left - right for less-than check
448 : JLT 1, 2(7) ;  If R1 < 0, jump to true
449 : LDC 1, 0(0) ;  false
450 : LDA 7, 1(7) ;  skip setting true
451 : LDC 1, 1(0) ;  true
452 : JEQ 1, 511(0) ;  If condition is false, jump to ELSE
453 : LDA 4, 3(5) ;  Base of callee frame
454 : LD 1, 2(5) ;  Load parameter 'x' into R1
455 : ST 1, 1(4) ;  Store argument 0 in callee
456 : LDA 6, 460(0) ;  Return address
457 : ST 6, 0(4) ;  Store return in callee frame
458 : ADD 5, 4, 0 ;  Push callee frame
459 : LDA 7, 400(0) ;  Call isCircularPrime
460 : LD 1, 2(5) ;  Load function result
461 : LDC 2, 3(0) ;  Caller frame size
462 : SUB 5, 5, 2 ;  Pop back to caller
463 : JEQ 1, 490(0) ;  If condition is false, jump to ELSE
464 : LDA 4, 5(5) ;  Base of callee frame
465 : LD 1, 1(5) ;  Load parameter 'top' into R1
466 : ST 1, 1(4) ;  Store argument 0 in callee
467 : LDC 1, 1(0) ;  Load integer-literal value into R1
468 : ADD 3, 1, 0 ;  Move right operand to R3
469 : LD 1, 2(5) ;  Load parameter 'x' into R1
470 : ADD 2, 1, 0 ;  Move left operand to R2
471 : ADD 1, 3, 0 ;  Restore right operand into R1
472 : ADD 1, 2, 1 ;  R1 = left + right
473 : ST 1, 2(4) ;  Store argument 1 in callee
474 : LDC 1, 1(0) ;  Load integer-literal value into R1
475 : ADD 3, 1, 0 ;  Move right operand to R3
476 : LD 1, 3(5) ;  Load parameter 'count' into R1
477 : ADD 2, 1, 0 ;  Move left operand to R2
478 : ADD 1, 3, 0 ;  Restore right operand into R1
479 : ADD 1, 2, 1 ;  R1 = left + right
480 : ST 1, 3(4) ;  Store argument 2 in callee
481 : LDA 6, 485(0) ;  Return address
482 : ST 6, 0(4) ;  Store return in callee frame
483 : ADD 5, 4, 0 ;  Push callee frame
484 : LDA 7, 442(0) ;  Call circularPrimesToHelper
485 : LD 1, 4(5) ;  Load function result
486 : LDC 2, 5(0) ;  Caller frame size
487 : SUB 5, 5, 2 ;  Pop back to caller
488 : ST 1, 4(5) ;  Store result into caller’s frame
489 : LDA 7, 510(0) ;  Skip ELSE block
490 : LDA 4, 5(5) ;  Base of callee frame
491 : LD 1, 1(5) ;  Load parameter 'top' into R1
492 : ST 1, 1(4) ;  Store argument 0 in callee
493 : LDC 1, 1(0) ;  Load integer-literal value into R1
494 : ADD 3, 1, 0 ;  Move right operand to R3
495 : LD 1, 2(5) ;  Load parameter 'x' into R1
496 : ADD 2, 1, 0 ;  Move left operand to R2
497 : ADD 1, 3, 0 ;  Restore right operand into R1
498 : ADD 1, 2, 1 ;  R1 = left + right
499 : ST 1, 2(4) ;  Store argument 1 in callee
500 : LD 1, 3(5) ;  Load parameter 'count' into R1
501 : ST 1, 3(4) ;  Store argument 2 in callee
502 : LDA 6, 506(0) ;  Return address
503 : ST 6, 0(4) ;  Store return in callee frame
504 : ADD 5, 4, 0 ;  Push callee frame
505 : LDA 7, 442(0) ;  Call circularPrimesToHelper
506 : LD 1, 4(5) ;  Load function result
507 : LDC 2, 5(0) ;  Caller frame size
508 : SUB 5, 5, 2 ;  Pop back to caller
509 : ST 1, 4(5) ;  Store result into caller’s frame
510 : LDA 7, 513(0) ;  Skip ELSE block
511 : LD 1, 3(5) ;  Load parameter 'count' into R1
512 : ST 1, 4(5) ;  Store result into current frame's return slot
513 : ST 1, 4(5) ;  Store function result into stack frame
514 : LD 6, 0(5) ;  Load return address
515 : LDA 7, 0(6) ;  Return to caller
516 : LDA 4, 5(5) ;  Base of callee frame
517 : LDC 1, 1(0) ;  Load integer-literal value into R1
518 : ADD 3, 1, 0 ;  Move right operand to R3
519 : LD 1, 1(5) ;  Load parameter 'x' into R1
520 : ADD 2, 1, 0 ;  Move left operand to R2
521 : ADD 1, 3, 0 ;  Restore right operand into R1
522 : ADD 1, 2, 1 ;  R1 = left + right
523 : ST 1, 1(4) ;  Store argument 0 in callee
524 : LDC 1, 2(0) ;  Load integer-literal value into R1
525 : ST 1, 2(4) ;  Store argument 1 in callee
526 : LDC 1, 0(0) ;  Load integer-literal value into R1
527 : ST 1, 3(4) ;  Store argument 2 in callee
528 : LDA 6, 532(0) ;  Return address
529 : ST 6, 0(4) ;  Store return in callee frame
530 : ADD 5, 4, 0 ;  Push callee frame
531 : LDA 7, 442(0) ;  Call circularPrimesToHelper
532 : LD 1, 4(5) ;  Load function result
533 : LDC 2, 5(0) ;  Caller frame size
534 : SUB 5, 5, 2 ;  Pop back to caller
535 : ST 1, 2(5) ;  Store result into caller’s frame
536 : ST 1, 2(5) ;  Store function result into stack frame
537 : LD 6, 0(5) ;  Load return address
538 : LDA 7, 0(6) ;  Return to caller
