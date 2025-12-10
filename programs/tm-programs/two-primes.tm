0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main frame
8 : LDA 7, 14(0) ;  Branch to main
9 : OUT 1, 0, 0 ;  Print main's result
10 : HALT 0, 0, 0 ;  Terminate program
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(5) ;  Load return address
13 : LDA 7, 0(6) ;  Return
14 : LDC 1, 3(0) ;  Load integer literal into R1
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 2(5) ;  Load parameter 'selector'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : SUB 1, 2, 1 ;  left - right
20 : JEQ 1, 2(7) ;  if 0 then true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 38(0) ;  If false, jump to ELSE
25 : LD 1, 1(5) ;  Load parameter 'n'
26 : LDA 4, 3(5) ;  [JIT] callee frame base
27 : ST 1, 1(4) ;  Store arg 0 in callee frame
28 : LDA 4, 3(5) ;  [JIT] callee frame base
29 : LDA 6, 33(0) ;  Return address
30 : ST 6, 0(4) ;  Store RA in callee frame
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LDA 7, 352(0) ;  Call emirp
33 : LD 1, 2(5) ;  Load callee result
34 : LDC 2, 3(0) ;  Caller frame size
35 : SUB 5, 5, 2 ;  Pop callee frame
36 : ST 1, 3(5) ;  Store result into caller frame
37 : LDA 7, 88(0) ;  Skip ELSE
38 : LDC 1, 5(0) ;  Load integer literal into R1
39 : ADD 3, 1, 0 ;  Stash right in R3
40 : LD 1, 2(5) ;  Load parameter 'selector'
41 : ADD 2, 1, 0 ;  Move left to R2
42 : ADD 1, 3, 0 ;  Restore right to R1
43 : SUB 1, 2, 1 ;  left - right
44 : JEQ 1, 2(7) ;  if 0 then true
45 : LDC 1, 0(0) ;  false
46 : LDA 7, 1(7) ;  skip setting true
47 : LDC 1, 1(0) ;  true
48 : JEQ 1, 62(0) ;  If false, jump to ELSE
49 : LD 1, 1(5) ;  Load parameter 'n'
50 : LDA 4, 3(5) ;  [JIT] callee frame base
51 : ST 1, 1(4) ;  Store arg 0 in callee frame
52 : LDA 4, 3(5) ;  [JIT] callee frame base
53 : LDA 6, 57(0) ;  Return address
54 : ST 6, 0(4) ;  Store RA in callee frame
55 : ADD 5, 4, 0 ;  Push callee frame
56 : LDA 7, 307(0) ;  Call snowball
57 : LD 1, 2(5) ;  Load callee result
58 : LDC 2, 3(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop callee frame
60 : ST 1, 3(5) ;  Store result into caller frame
61 : LDA 7, 88(0) ;  Skip ELSE
62 : LDC 1, 8(0) ;  Load integer literal into R1
63 : ADD 3, 1, 0 ;  Stash right in R3
64 : LD 1, 2(5) ;  Load parameter 'selector'
65 : ADD 2, 1, 0 ;  Move left to R2
66 : ADD 1, 3, 0 ;  Restore right to R1
67 : SUB 1, 2, 1 ;  left - right
68 : JEQ 1, 2(7) ;  if 0 then true
69 : LDC 1, 0(0) ;  false
70 : LDA 7, 1(7) ;  skip setting true
71 : LDC 1, 1(0) ;  true
72 : JEQ 1, 86(0) ;  If false, jump to ELSE
73 : LD 1, 1(5) ;  Load parameter 'n'
74 : LDA 4, 3(5) ;  [JIT] callee frame base
75 : ST 1, 1(4) ;  Store arg 0 in callee frame
76 : LDA 4, 3(5) ;  [JIT] callee frame base
77 : LDA 6, 81(0) ;  Return address
78 : ST 6, 0(4) ;  Store RA in callee frame
79 : ADD 5, 4, 0 ;  Push callee frame
80 : LDA 7, 275(0) ;  Call doBoth
81 : LD 1, 2(5) ;  Load callee result
82 : LDC 2, 3(0) ;  Caller frame size
83 : SUB 5, 5, 2 ;  Pop callee frame
84 : ST 1, 3(5) ;  Store result into caller frame
85 : LDA 7, 88(0) ;  Skip ELSE
86 : LDC 1, 0(0) ;  Load boolean literal into R1
87 : ST 1, 3(5) ;  Store into current frame's return slot
88 : LD 1, 3(5) ;  Load main return value
89 : LD 6, 0(5) ;  Load return address
90 : LDA 7, 0(6) ;  Return from main
91 : LD 1, 2(5) ;  Load parameter 'n'
92 : ADD 3, 1, 0 ;  Stash right in R3
93 : LD 1, 1(5) ;  Load parameter 'm'
94 : ADD 2, 1, 0 ;  Move left to R2
95 : ADD 1, 3, 0 ;  Restore right to R1
96 : DIV 1, 2, 1 ;  R1 = left / right
97 : ADD 2, 1, 0 ;  Move left to R2
98 : LD 1, 2(5) ;  Load parameter 'n'
99 : MUL 1, 2, 1 ;  R1 = left * right
100 : ADD 3, 1, 0 ;  Stash right in R3
101 : LD 1, 1(5) ;  Load parameter 'm'
102 : ADD 2, 1, 0 ;  Move left to R2
103 : ADD 1, 3, 0 ;  Restore right to R1
104 : SUB 1, 2, 1 ;  R1 = left - right
105 : ST 1, 3(5) ;  Store function result
106 : LD 6, 0(5) ;  Load return address
107 : LDA 7, 0(6) ;  Return to caller
108 : LDC 1, 0(0) ;  Load integer literal into R1
109 : ADD 3, 1, 0 ;  Stash right in R3
110 : LD 1, 1(5) ;  Load parameter 'n'
111 : ADD 2, 1, 0 ;  Move left to R2
112 : ADD 1, 3, 0 ;  Restore right to R1
113 : SUB 1, 2, 1 ;  left - right
114 : JEQ 1, 2(7) ;  if 0 then true
115 : LDC 1, 0(0) ;  false
116 : LDA 7, 1(7) ;  skip setting true
117 : LDC 1, 1(0) ;  true
118 : JEQ 1, 121(0) ;  If false, jump to ELSE
119 : LD 1, 2(5) ;  Load parameter 'nR'
120 : LDA 7, 161(0) ;  Skip ELSE
121 : LDC 1, 10(0) ;  Load integer literal into R1
122 : ADD 3, 1, 0 ;  Stash right in R3
123 : LD 1, 1(5) ;  Load parameter 'n'
124 : ADD 2, 1, 0 ;  Move left to R2
125 : ADD 1, 3, 0 ;  Restore right to R1
126 : DIV 1, 2, 1 ;  R1 = left / right
127 : LDA 4, 4(5) ;  [JIT] callee frame base
128 : ST 1, 1(4) ;  Store arg 0 in callee frame
129 : LD 1, 2(5) ;  Load parameter 'nR'
130 : ADD 3, 1, 0 ;  Stash right in R3
131 : LDC 1, 10(0) ;  Load integer literal into R1
132 : ADD 2, 1, 0 ;  Move left to R2
133 : ADD 1, 3, 0 ;  Restore right to R1
134 : MUL 1, 2, 1 ;  R1 = left * right
135 : ADD 2, 1, 0 ;  Move left to R2
136 : LD 1, 1(5) ;  Load parameter 'n'
137 : LDA 4, 4(5) ;  [JIT] callee frame base
138 : ST 1, 1(4) ;  Store arg 0 in callee frame
139 : LDC 1, 10(0) ;  Load integer literal into R1
140 : LDA 4, 4(5) ;  [JIT] callee frame base
141 : ST 1, 2(4) ;  Store arg 1 in callee frame
142 : LDA 4, 4(5) ;  [JIT] callee frame base
143 : LDA 6, 147(0) ;  Return address
144 : ST 6, 0(4) ;  Store RA in callee frame
145 : ADD 5, 4, 0 ;  Push callee frame
146 : LDA 7, 91(0) ;  Call MOD
147 : LD 1, 3(5) ;  Load callee result
148 : LDC 2, 4(0) ;  Caller frame size
149 : SUB 5, 5, 2 ;  Pop callee frame
150 : ADD 1, 2, 1 ;  R1 = left + right
151 : LDA 4, 4(5) ;  [JIT] callee frame base
152 : ST 1, 2(4) ;  Store arg 1 in callee frame
153 : LDA 4, 4(5) ;  [JIT] callee frame base
154 : LDA 6, 158(0) ;  Return address
155 : ST 6, 0(4) ;  Store RA in callee frame
156 : ADD 5, 4, 0 ;  Push callee frame
157 : LDA 7, 108(0) ;  Call reverseL
158 : LD 1, 3(5) ;  Load callee result
159 : LDC 2, 4(0) ;  Caller frame size
160 : SUB 5, 5, 2 ;  Pop callee frame
161 : ST 1, 3(5) ;  Store function result
162 : LD 6, 0(5) ;  Load return address
163 : LDA 7, 0(6) ;  Return to caller
164 : LD 1, 1(5) ;  Load parameter 'n'
165 : LDA 4, 4(5) ;  [JIT] callee frame base
166 : ST 1, 1(4) ;  Store arg 0 in callee frame
167 : LDC 1, 0(0) ;  Load integer literal into R1
168 : LDA 4, 4(5) ;  [JIT] callee frame base
169 : ST 1, 2(4) ;  Store arg 1 in callee frame
170 : LDA 4, 4(5) ;  [JIT] callee frame base
171 : LDA 6, 175(0) ;  Return address
172 : ST 6, 0(4) ;  Store RA in callee frame
173 : ADD 5, 4, 0 ;  Push callee frame
174 : LDA 7, 108(0) ;  Call reverseL
175 : LD 1, 3(5) ;  Load callee result
176 : LDC 2, 4(0) ;  Caller frame size
177 : SUB 5, 5, 2 ;  Pop callee frame
178 : ST 1, 2(5) ;  Store function result
179 : LD 6, 0(5) ;  Load return address
180 : LDA 7, 0(6) ;  Return to caller
181 : LD 1, 2(5) ;  Load parameter 'b'
182 : LDA 4, 4(5) ;  [JIT] callee frame base
183 : ST 1, 1(4) ;  Store arg 0 in callee frame
184 : LD 1, 1(5) ;  Load parameter 'a'
185 : LDA 4, 4(5) ;  [JIT] callee frame base
186 : ST 1, 2(4) ;  Store arg 1 in callee frame
187 : LDA 4, 4(5) ;  [JIT] callee frame base
188 : LDA 6, 192(0) ;  Return address
189 : ST 6, 0(4) ;  Store RA in callee frame
190 : ADD 5, 4, 0 ;  Push callee frame
191 : LDA 7, 91(0) ;  Call MOD
192 : LD 1, 3(5) ;  Load callee result
193 : LDC 2, 4(0) ;  Caller frame size
194 : SUB 5, 5, 2 ;  Pop callee frame
195 : ADD 2, 1, 0 ;  Move left to R2
196 : LDC 1, 0(0) ;  Load integer literal into R1
197 : SUB 1, 2, 1 ;  left - right
198 : JEQ 1, 2(7) ;  if 0 then true
199 : LDC 1, 0(0) ;  false
200 : LDA 7, 1(7) ;  skip setting true
201 : LDC 1, 1(0) ;  true
202 : ST 1, 3(5) ;  Store function result
203 : LD 6, 0(5) ;  Load return address
204 : LDA 7, 0(6) ;  Return to caller
205 : LD 1, 2(5) ;  Load parameter 'n'
206 : ADD 3, 1, 0 ;  Stash right in R3
207 : LD 1, 1(5) ;  Load parameter 'i'
208 : ADD 2, 1, 0 ;  Move left to R2
209 : ADD 1, 3, 0 ;  Restore right to R1
210 : SUB 1, 2, 1 ;  left - right
211 : JLT 1, 2(7) ;  if < 0 then true
212 : LDC 1, 0(0) ;  false
213 : LDA 7, 1(7) ;  skip setting true
214 : LDC 1, 1(0) ;  true
215 : JEQ 1, 252(0) ;  If false, jump to ELSE
216 : LD 1, 1(5) ;  Load parameter 'i'
217 : LDA 4, 4(5) ;  [JIT] callee frame base
218 : ST 1, 1(4) ;  Store arg 0 in callee frame
219 : LD 1, 2(5) ;  Load parameter 'n'
220 : LDA 4, 4(5) ;  [JIT] callee frame base
221 : ST 1, 2(4) ;  Store arg 1 in callee frame
222 : LDA 4, 4(5) ;  [JIT] callee frame base
223 : LDA 6, 227(0) ;  Return address
224 : ST 6, 0(4) ;  Store RA in callee frame
225 : ADD 5, 4, 0 ;  Push callee frame
226 : LDA 7, 181(0) ;  Call divides
227 : LD 1, 3(5) ;  Load callee result
228 : LDC 2, 4(0) ;  Caller frame size
229 : SUB 5, 5, 2 ;  Pop callee frame
230 : ADD 2, 1, 0 ;  Move left to R2
231 : LDC 1, 1(0) ;  Load integer literal into R1
232 : ADD 3, 1, 0 ;  Stash right in R3
233 : LD 1, 1(5) ;  Load parameter 'i'
234 : ADD 2, 1, 0 ;  Move left to R2
235 : ADD 1, 3, 0 ;  Restore right to R1
236 : ADD 1, 2, 1 ;  R1 = left + right
237 : LDA 4, 4(5) ;  [JIT] callee frame base
238 : ST 1, 1(4) ;  Store arg 0 in callee frame
239 : LD 1, 2(5) ;  Load parameter 'n'
240 : LDA 4, 4(5) ;  [JIT] callee frame base
241 : ST 1, 2(4) ;  Store arg 1 in callee frame
242 : LDA 4, 4(5) ;  [JIT] callee frame base
243 : LDA 6, 247(0) ;  Return address
244 : ST 6, 0(4) ;  Store RA in callee frame
245 : ADD 5, 4, 0 ;  Push callee frame
246 : LDA 7, 205(0) ;  Call hasDivisorFrom
247 : LD 1, 3(5) ;  Load callee result
248 : LDC 2, 4(0) ;  Caller frame size
249 : SUB 5, 5, 2 ;  Pop callee frame
250 : ADD 1, 2, 1 ;  R1 = left OR right
251 : LDA 7, 253(0) ;  Skip ELSE
252 : LDC 1, 0(0) ;  Load boolean literal into R1
253 : ST 1, 3(5) ;  Store function result
254 : LD 6, 0(5) ;  Load return address
255 : LDA 7, 0(6) ;  Return to caller
256 : LDC 1, 2(0) ;  Load integer literal into R1
257 : LDA 4, 4(5) ;  [JIT] callee frame base
258 : ST 1, 1(4) ;  Store arg 0 in callee frame
259 : LD 1, 1(5) ;  Load parameter 'n'
260 : LDA 4, 4(5) ;  [JIT] callee frame base
261 : ST 1, 2(4) ;  Store arg 1 in callee frame
262 : LDA 4, 4(5) ;  [JIT] callee frame base
263 : LDA 6, 267(0) ;  Return address
264 : ST 6, 0(4) ;  Store RA in callee frame
265 : ADD 5, 4, 0 ;  Push callee frame
266 : LDA 7, 205(0) ;  Call hasDivisorFrom
267 : LD 1, 3(5) ;  Load callee result
268 : LDC 2, 4(0) ;  Caller frame size
269 : SUB 5, 5, 2 ;  Pop callee frame
270 : LDC 2, 1(0) ;  Load 1 into R2
271 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
272 : ST 1, 2(5) ;  Store function result
273 : LD 6, 0(5) ;  Load return address
274 : LDA 7, 0(6) ;  Return to caller
275 : LD 1, 1(5) ;  Load parameter 'n'
276 : LDA 4, 3(5) ;  [JIT] callee frame base
277 : ST 1, 1(4) ;  Store arg 0 in callee frame
278 : LDA 4, 3(5) ;  [JIT] callee frame base
279 : LDA 6, 283(0) ;  Return address
280 : ST 6, 0(4) ;  Store RA in callee frame
281 : ADD 5, 4, 0 ;  Push callee frame
282 : LDA 7, 352(0) ;  Call emirp
283 : LD 1, 2(5) ;  Load callee result
284 : LDC 2, 3(0) ;  Caller frame size
285 : SUB 5, 5, 2 ;  Pop callee frame
286 : LDA 4, 3(5) ;  [JIT] callee frame base
287 : LDA 6, 291(0) ;  Return address
288 : ST 6, 0(4) ;  Store RA in callee frame
289 : ADD 5, 4, 0 ;  Push callee frame
290 : LDA 7, 11(0) ;  Call print
291 : LDC 2, 3(0) ;  Caller frame size
292 : SUB 5, 5, 2 ;  Pop callee frame
293 : LD 1, 1(5) ;  Load parameter 'n'
294 : LDA 4, 3(5) ;  [JIT] callee frame base
295 : ST 1, 1(4) ;  Store arg 0 in callee frame
296 : LDA 4, 3(5) ;  [JIT] callee frame base
297 : LDA 6, 301(0) ;  Return address
298 : ST 6, 0(4) ;  Store RA in callee frame
299 : ADD 5, 4, 0 ;  Push callee frame
300 : LDA 7, 307(0) ;  Call snowball
301 : LD 1, 2(5) ;  Load callee result
302 : LDC 2, 3(0) ;  Caller frame size
303 : SUB 5, 5, 2 ;  Pop callee frame
304 : ST 1, 2(5) ;  Store function result
305 : LD 6, 0(5) ;  Load return address
306 : LDA 7, 0(6) ;  Return to caller
307 : LD 1, 1(5) ;  Load parameter 'n'
308 : LDA 4, 3(5) ;  [JIT] callee frame base
309 : ST 1, 1(4) ;  Store arg 0 in callee frame
310 : LDA 4, 3(5) ;  [JIT] callee frame base
311 : LDA 6, 315(0) ;  Return address
312 : ST 6, 0(4) ;  Store RA in callee frame
313 : ADD 5, 4, 0 ;  Push callee frame
314 : LDA 7, 256(0) ;  Call isPrime
315 : LD 1, 2(5) ;  Load callee result
316 : LDC 2, 3(0) ;  Caller frame size
317 : SUB 5, 5, 2 ;  Pop callee frame
318 : ADD 2, 1, 0 ;  Move left to R2
319 : LDC 1, 10(0) ;  Load integer literal into R1
320 : ADD 3, 1, 0 ;  Stash right in R3
321 : LD 1, 1(5) ;  Load parameter 'n'
322 : ADD 2, 1, 0 ;  Move left to R2
323 : ADD 1, 3, 0 ;  Restore right to R1
324 : SUB 1, 2, 1 ;  left - right
325 : JLT 1, 2(7) ;  if < 0 then true
326 : LDC 1, 0(0) ;  false
327 : LDA 7, 1(7) ;  skip setting true
328 : LDC 1, 1(0) ;  true
329 : JEQ 1, 332(0) ;  If false, jump to ELSE
330 : LDC 1, 1(0) ;  Load boolean literal into R1
331 : LDA 7, 348(0) ;  Skip ELSE
332 : LDC 1, 10(0) ;  Load integer literal into R1
333 : ADD 3, 1, 0 ;  Stash right in R3
334 : LD 1, 1(5) ;  Load parameter 'n'
335 : ADD 2, 1, 0 ;  Move left to R2
336 : ADD 1, 3, 0 ;  Restore right to R1
337 : DIV 1, 2, 1 ;  R1 = left / right
338 : LDA 4, 3(5) ;  [JIT] callee frame base
339 : ST 1, 1(4) ;  Store arg 0 in callee frame
340 : LDA 4, 3(5) ;  [JIT] callee frame base
341 : LDA 6, 345(0) ;  Return address
342 : ST 6, 0(4) ;  Store RA in callee frame
343 : ADD 5, 4, 0 ;  Push callee frame
344 : LDA 7, 256(0) ;  Call isPrime
345 : LD 1, 2(5) ;  Load callee result
346 : LDC 2, 3(0) ;  Caller frame size
347 : SUB 5, 5, 2 ;  Pop callee frame
348 : MUL 1, 2, 1 ;  R1 = left AND right
349 : ST 1, 2(5) ;  Store function result
350 : LD 6, 0(5) ;  Load return address
351 : LDA 7, 0(6) ;  Return to caller
352 : LD 1, 1(5) ;  Load parameter 'n'
353 : LDA 4, 3(5) ;  [JIT] callee frame base
354 : ST 1, 1(4) ;  Store arg 0 in callee frame
355 : LDA 4, 3(5) ;  [JIT] callee frame base
356 : LDA 6, 360(0) ;  Return address
357 : ST 6, 0(4) ;  Store RA in callee frame
358 : ADD 5, 4, 0 ;  Push callee frame
359 : LDA 7, 256(0) ;  Call isPrime
360 : LD 1, 2(5) ;  Load callee result
361 : LDC 2, 3(0) ;  Caller frame size
362 : SUB 5, 5, 2 ;  Pop callee frame
363 : ADD 2, 1, 0 ;  Move left to R2
364 : LD 1, 1(5) ;  Load parameter 'n'
365 : LDA 4, 3(5) ;  [JIT] callee frame base
366 : ST 1, 1(4) ;  Store arg 0 in callee frame
367 : LDA 4, 3(5) ;  [JIT] callee frame base
368 : LDA 6, 372(0) ;  Return address
369 : ST 6, 0(4) ;  Store RA in callee frame
370 : ADD 5, 4, 0 ;  Push callee frame
371 : LDA 7, 164(0) ;  Call reverse
372 : LD 1, 2(5) ;  Load callee result
373 : LDC 2, 3(0) ;  Caller frame size
374 : SUB 5, 5, 2 ;  Pop callee frame
375 : LDA 4, 3(5) ;  [JIT] callee frame base
376 : ST 1, 1(4) ;  Store arg 0 in callee frame
377 : LDA 4, 3(5) ;  [JIT] callee frame base
378 : LDA 6, 382(0) ;  Return address
379 : ST 6, 0(4) ;  Store RA in callee frame
380 : ADD 5, 4, 0 ;  Push callee frame
381 : LDA 7, 256(0) ;  Call isPrime
382 : LD 1, 2(5) ;  Load callee result
383 : LDC 2, 3(0) ;  Caller frame size
384 : SUB 5, 5, 2 ;  Pop callee frame
385 : MUL 1, 2, 1 ;  R1 = left AND right
386 : ST 1, 2(5) ;  Store function result
387 : LD 6, 0(5) ;  Load return address
388 : LDA 7, 0(6) ;  Return to caller
