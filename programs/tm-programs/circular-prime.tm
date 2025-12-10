0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main frame
6 : LDA 7, 12(0) ;  Branch to main
7 : OUT 1, 0, 0 ;  Print main's result
8 : HALT 0, 0, 0 ;  Terminate program
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(5) ;  Load return address
11 : LDA 7, 0(6) ;  Return
12 : LD 1, 1(5) ;  Load parameter 'x'
13 : LDA 4, 3(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDA 4, 3(5) ;  [JIT] callee frame base
16 : LDA 6, 20(0) ;  Return address
17 : ST 6, 0(4) ;  Store RA in callee frame
18 : ADD 5, 4, 0 ;  Push callee frame
19 : LDA 7, 535(0) ;  Call circularPrimesTo
20 : LD 1, 2(5) ;  Load callee result
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ST 1, 2(5) ;  Store result into caller frame
24 : LD 1, 2(5) ;  Load main return value
25 : LD 6, 0(5) ;  Load return address
26 : LDA 7, 0(6) ;  Return from main
27 : LD 1, 2(5) ;  Load parameter 'den'
28 : ADD 3, 1, 0 ;  Stash right in R3
29 : LD 1, 1(5) ;  Load parameter 'num'
30 : ADD 2, 1, 0 ;  Move left to R2
31 : ADD 1, 3, 0 ;  Restore right to R1
32 : SUB 1, 2, 1 ;  left - right
33 : JLT 1, 2(7) ;  if < 0 then true
34 : LDC 1, 0(0) ;  false
35 : LDA 7, 1(7) ;  skip setting true
36 : LDC 1, 1(0) ;  true
37 : JEQ 1, 40(0) ;  If false, jump to ELSE
38 : LD 1, 1(5) ;  Load parameter 'num'
39 : LDA 7, 59(0) ;  Skip ELSE
40 : LD 1, 2(5) ;  Load parameter 'den'
41 : ADD 3, 1, 0 ;  Stash right in R3
42 : LD 1, 1(5) ;  Load parameter 'num'
43 : ADD 2, 1, 0 ;  Move left to R2
44 : ADD 1, 3, 0 ;  Restore right to R1
45 : SUB 1, 2, 1 ;  R1 = left - right
46 : LDA 4, 4(5) ;  [JIT] callee frame base
47 : ST 1, 1(4) ;  Store arg 0 in callee frame
48 : LD 1, 2(5) ;  Load parameter 'den'
49 : LDA 4, 4(5) ;  [JIT] callee frame base
50 : ST 1, 2(4) ;  Store arg 1 in callee frame
51 : LDA 4, 4(5) ;  [JIT] callee frame base
52 : LDA 6, 56(0) ;  Return address
53 : ST 6, 0(4) ;  Store RA in callee frame
54 : ADD 5, 4, 0 ;  Push callee frame
55 : LDA 7, 27(0) ;  Call mod
56 : LD 1, 3(5) ;  Load callee result
57 : LDC 2, 4(0) ;  Caller frame size
58 : SUB 5, 5, 2 ;  Pop callee frame
59 : ST 1, 3(5) ;  Store function result
60 : LD 6, 0(5) ;  Load return address
61 : LDA 7, 0(6) ;  Return to caller
62 : LD 1, 2(5) ;  Load parameter 'b'
63 : LDA 4, 4(5) ;  [JIT] callee frame base
64 : ST 1, 1(4) ;  Store arg 0 in callee frame
65 : LD 1, 1(5) ;  Load parameter 'a'
66 : LDA 4, 4(5) ;  [JIT] callee frame base
67 : ST 1, 2(4) ;  Store arg 1 in callee frame
68 : LDA 4, 4(5) ;  [JIT] callee frame base
69 : LDA 6, 73(0) ;  Return address
70 : ST 6, 0(4) ;  Store RA in callee frame
71 : ADD 5, 4, 0 ;  Push callee frame
72 : LDA 7, 27(0) ;  Call mod
73 : LD 1, 3(5) ;  Load callee result
74 : LDC 2, 4(0) ;  Caller frame size
75 : SUB 5, 5, 2 ;  Pop callee frame
76 : ADD 2, 1, 0 ;  Move left to R2
77 : LDC 1, 0(0) ;  Load integer literal into R1
78 : SUB 1, 2, 1 ;  left - right
79 : JEQ 1, 2(7) ;  if 0 then true
80 : LDC 1, 0(0) ;  false
81 : LDA 7, 1(7) ;  skip setting true
82 : LDC 1, 1(0) ;  true
83 : ST 1, 3(5) ;  Store function result
84 : LD 6, 0(5) ;  Load return address
85 : LDA 7, 0(6) ;  Return to caller
86 : LD 1, 2(5) ;  Load parameter 'n'
87 : ADD 3, 1, 0 ;  Stash right in R3
88 : LD 1, 1(5) ;  Load parameter 'i'
89 : ADD 2, 1, 0 ;  Move left to R2
90 : ADD 1, 3, 0 ;  Restore right to R1
91 : SUB 1, 2, 1 ;  left - right
92 : JLT 1, 2(7) ;  if < 0 then true
93 : LDC 1, 0(0) ;  false
94 : LDA 7, 1(7) ;  skip setting true
95 : LDC 1, 1(0) ;  true
96 : JEQ 1, 133(0) ;  If false, jump to ELSE
97 : LD 1, 1(5) ;  Load parameter 'i'
98 : LDA 4, 4(5) ;  [JIT] callee frame base
99 : ST 1, 1(4) ;  Store arg 0 in callee frame
100 : LD 1, 2(5) ;  Load parameter 'n'
101 : LDA 4, 4(5) ;  [JIT] callee frame base
102 : ST 1, 2(4) ;  Store arg 1 in callee frame
103 : LDA 4, 4(5) ;  [JIT] callee frame base
104 : LDA 6, 108(0) ;  Return address
105 : ST 6, 0(4) ;  Store RA in callee frame
106 : ADD 5, 4, 0 ;  Push callee frame
107 : LDA 7, 62(0) ;  Call divides
108 : LD 1, 3(5) ;  Load callee result
109 : LDC 2, 4(0) ;  Caller frame size
110 : SUB 5, 5, 2 ;  Pop callee frame
111 : ADD 2, 1, 0 ;  Move left to R2
112 : LDC 1, 1(0) ;  Load integer literal into R1
113 : ADD 3, 1, 0 ;  Stash right in R3
114 : LD 1, 1(5) ;  Load parameter 'i'
115 : ADD 2, 1, 0 ;  Move left to R2
116 : ADD 1, 3, 0 ;  Restore right to R1
117 : ADD 1, 2, 1 ;  R1 = left + right
118 : LDA 4, 4(5) ;  [JIT] callee frame base
119 : ST 1, 1(4) ;  Store arg 0 in callee frame
120 : LD 1, 2(5) ;  Load parameter 'n'
121 : LDA 4, 4(5) ;  [JIT] callee frame base
122 : ST 1, 2(4) ;  Store arg 1 in callee frame
123 : LDA 4, 4(5) ;  [JIT] callee frame base
124 : LDA 6, 128(0) ;  Return address
125 : ST 6, 0(4) ;  Store RA in callee frame
126 : ADD 5, 4, 0 ;  Push callee frame
127 : LDA 7, 86(0) ;  Call hasDivisorFrom
128 : LD 1, 3(5) ;  Load callee result
129 : LDC 2, 4(0) ;  Caller frame size
130 : SUB 5, 5, 2 ;  Pop callee frame
131 : ADD 1, 2, 1 ;  R1 = left OR right
132 : LDA 7, 134(0) ;  Skip ELSE
133 : LDC 1, 0(0) ;  Load boolean literal into R1
134 : ST 1, 3(5) ;  Store function result
135 : LD 6, 0(5) ;  Load return address
136 : LDA 7, 0(6) ;  Return to caller
137 : LDC 1, 2(0) ;  Load integer literal into R1
138 : LDA 4, 4(5) ;  [JIT] callee frame base
139 : ST 1, 1(4) ;  Store arg 0 in callee frame
140 : LD 1, 1(5) ;  Load parameter 'n'
141 : LDA 4, 4(5) ;  [JIT] callee frame base
142 : ST 1, 2(4) ;  Store arg 1 in callee frame
143 : LDA 4, 4(5) ;  [JIT] callee frame base
144 : LDA 6, 148(0) ;  Return address
145 : ST 6, 0(4) ;  Store RA in callee frame
146 : ADD 5, 4, 0 ;  Push callee frame
147 : LDA 7, 86(0) ;  Call hasDivisorFrom
148 : LD 1, 3(5) ;  Load callee result
149 : LDC 2, 4(0) ;  Caller frame size
150 : SUB 5, 5, 2 ;  Pop callee frame
151 : LDC 2, 1(0) ;  Load 1 into R2
152 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
153 : ST 1, 2(5) ;  Store function result
154 : LD 6, 0(5) ;  Load return address
155 : LDA 7, 0(6) ;  Return to caller
156 : LDC 1, 10(0) ;  Load integer literal into R1
157 : ADD 3, 1, 0 ;  Stash right in R3
158 : LD 1, 1(5) ;  Load parameter 'x'
159 : ADD 2, 1, 0 ;  Move left to R2
160 : ADD 1, 3, 0 ;  Restore right to R1
161 : DIV 1, 2, 1 ;  R1 = left / right
162 : ADD 2, 1, 0 ;  Move left to R2
163 : LDC 1, 0(0) ;  Load integer literal into R1
164 : SUB 1, 2, 1 ;  left - right
165 : JEQ 1, 2(7) ;  if 0 then true
166 : LDC 1, 0(0) ;  false
167 : LDA 7, 1(7) ;  skip setting true
168 : LDC 1, 1(0) ;  true
169 : JEQ 1, 172(0) ;  If false, jump to ELSE
170 : LD 1, 2(5) ;  Load parameter 'y'
171 : LDA 7, 196(0) ;  Skip ELSE
172 : LDC 1, 10(0) ;  Load integer literal into R1
173 : ADD 3, 1, 0 ;  Stash right in R3
174 : LD 1, 1(5) ;  Load parameter 'x'
175 : ADD 2, 1, 0 ;  Move left to R2
176 : ADD 1, 3, 0 ;  Restore right to R1
177 : DIV 1, 2, 1 ;  R1 = left / right
178 : LDA 4, 4(5) ;  [JIT] callee frame base
179 : ST 1, 1(4) ;  Store arg 0 in callee frame
180 : LDC 1, 1(0) ;  Load integer literal into R1
181 : ADD 3, 1, 0 ;  Stash right in R3
182 : LD 1, 2(5) ;  Load parameter 'y'
183 : ADD 2, 1, 0 ;  Move left to R2
184 : ADD 1, 3, 0 ;  Restore right to R1
185 : ADD 1, 2, 1 ;  R1 = left + right
186 : LDA 4, 4(5) ;  [JIT] callee frame base
187 : ST 1, 2(4) ;  Store arg 1 in callee frame
188 : LDA 4, 4(5) ;  [JIT] callee frame base
189 : LDA 6, 193(0) ;  Return address
190 : ST 6, 0(4) ;  Store RA in callee frame
191 : ADD 5, 4, 0 ;  Push callee frame
192 : LDA 7, 156(0) ;  Call log10Helper
193 : LD 1, 3(5) ;  Load callee result
194 : LDC 2, 4(0) ;  Caller frame size
195 : SUB 5, 5, 2 ;  Pop callee frame
196 : ST 1, 3(5) ;  Store function result
197 : LD 6, 0(5) ;  Load return address
198 : LDA 7, 0(6) ;  Return to caller
199 : LD 1, 1(5) ;  Load parameter 'x'
200 : LDA 4, 4(5) ;  [JIT] callee frame base
201 : ST 1, 1(4) ;  Store arg 0 in callee frame
202 : LDC 1, 0(0) ;  Load integer literal into R1
203 : LDA 4, 4(5) ;  [JIT] callee frame base
204 : ST 1, 2(4) ;  Store arg 1 in callee frame
205 : LDA 4, 4(5) ;  [JIT] callee frame base
206 : LDA 6, 210(0) ;  Return address
207 : ST 6, 0(4) ;  Store RA in callee frame
208 : ADD 5, 4, 0 ;  Push callee frame
209 : LDA 7, 156(0) ;  Call log10Helper
210 : LD 1, 3(5) ;  Load callee result
211 : LDC 2, 4(0) ;  Caller frame size
212 : SUB 5, 5, 2 ;  Pop callee frame
213 : ST 1, 2(5) ;  Store function result
214 : LD 6, 0(5) ;  Load return address
215 : LDA 7, 0(6) ;  Return to caller
216 : LDC 1, 0(0) ;  Load integer literal into R1
217 : ADD 3, 1, 0 ;  Stash right in R3
218 : LD 1, 2(5) ;  Load parameter 'power'
219 : ADD 2, 1, 0 ;  Move left to R2
220 : ADD 1, 3, 0 ;  Restore right to R1
221 : SUB 1, 2, 1 ;  left - right
222 : JEQ 1, 2(7) ;  if 0 then true
223 : LDC 1, 0(0) ;  false
224 : LDA 7, 1(7) ;  skip setting true
225 : LDC 1, 1(0) ;  true
226 : JEQ 1, 229(0) ;  If false, jump to ELSE
227 : LDC 1, 1(0) ;  Load integer literal into R1
228 : LDA 7, 269(0) ;  Skip ELSE
229 : LDC 1, 1(0) ;  Load integer literal into R1
230 : ADD 3, 1, 0 ;  Stash right in R3
231 : LD 1, 2(5) ;  Load parameter 'power'
232 : ADD 2, 1, 0 ;  Move left to R2
233 : ADD 1, 3, 0 ;  Restore right to R1
234 : SUB 1, 2, 1 ;  left - right
235 : JEQ 1, 2(7) ;  if 0 then true
236 : LDC 1, 0(0) ;  false
237 : LDA 7, 1(7) ;  skip setting true
238 : LDC 1, 1(0) ;  true
239 : JEQ 1, 242(0) ;  If false, jump to ELSE
240 : LD 1, 3(5) ;  Load parameter 'total'
241 : LDA 7, 269(0) ;  Skip ELSE
242 : LD 1, 1(5) ;  Load parameter 'base'
243 : LDA 4, 5(5) ;  [JIT] callee frame base
244 : ST 1, 1(4) ;  Store arg 0 in callee frame
245 : LDC 1, 1(0) ;  Load integer literal into R1
246 : ADD 3, 1, 0 ;  Stash right in R3
247 : LD 1, 2(5) ;  Load parameter 'power'
248 : ADD 2, 1, 0 ;  Move left to R2
249 : ADD 1, 3, 0 ;  Restore right to R1
250 : SUB 1, 2, 1 ;  R1 = left - right
251 : LDA 4, 5(5) ;  [JIT] callee frame base
252 : ST 1, 2(4) ;  Store arg 1 in callee frame
253 : LD 1, 3(5) ;  Load parameter 'total'
254 : ADD 3, 1, 0 ;  Stash right in R3
255 : LD 1, 1(5) ;  Load parameter 'base'
256 : ADD 2, 1, 0 ;  Move left to R2
257 : ADD 1, 3, 0 ;  Restore right to R1
258 : MUL 1, 2, 1 ;  R1 = left * right
259 : LDA 4, 5(5) ;  [JIT] callee frame base
260 : ST 1, 3(4) ;  Store arg 2 in callee frame
261 : LDA 4, 5(5) ;  [JIT] callee frame base
262 : LDA 6, 266(0) ;  Return address
263 : ST 6, 0(4) ;  Store RA in callee frame
264 : ADD 5, 4, 0 ;  Push callee frame
265 : LDA 7, 216(0) ;  Call powHelper
266 : LD 1, 4(5) ;  Load callee result
267 : LDC 2, 5(0) ;  Caller frame size
268 : SUB 5, 5, 2 ;  Pop callee frame
269 : ST 1, 4(5) ;  Store function result
270 : LD 6, 0(5) ;  Load return address
271 : LDA 7, 0(6) ;  Return to caller
272 : LD 1, 1(5) ;  Load parameter 'x'
273 : LDA 4, 5(5) ;  [JIT] callee frame base
274 : ST 1, 1(4) ;  Store arg 0 in callee frame
275 : LD 1, 2(5) ;  Load parameter 'y'
276 : LDA 4, 5(5) ;  [JIT] callee frame base
277 : ST 1, 2(4) ;  Store arg 1 in callee frame
278 : LD 1, 1(5) ;  Load parameter 'x'
279 : LDA 4, 5(5) ;  [JIT] callee frame base
280 : ST 1, 3(4) ;  Store arg 2 in callee frame
281 : LDA 4, 5(5) ;  [JIT] callee frame base
282 : LDA 6, 286(0) ;  Return address
283 : ST 6, 0(4) ;  Store RA in callee frame
284 : ADD 5, 4, 0 ;  Push callee frame
285 : LDA 7, 216(0) ;  Call powHelper
286 : LD 1, 4(5) ;  Load callee result
287 : LDC 2, 5(0) ;  Caller frame size
288 : SUB 5, 5, 2 ;  Pop callee frame
289 : ST 1, 3(5) ;  Store function result
290 : LD 6, 0(5) ;  Load return address
291 : LDA 7, 0(6) ;  Return to caller
292 : LDC 1, 10(0) ;  Load integer literal into R1
293 : ADD 3, 1, 0 ;  Stash right in R3
294 : LD 1, 1(5) ;  Load parameter 'x'
295 : ADD 2, 1, 0 ;  Move left to R2
296 : ADD 1, 3, 0 ;  Restore right to R1
297 : DIV 1, 2, 1 ;  R1 = left / right
298 : ADD 2, 1, 0 ;  Move left to R2
299 : LD 1, 1(5) ;  Load parameter 'x'
300 : LDA 4, 4(5) ;  [JIT] callee frame base
301 : ST 1, 1(4) ;  Store arg 0 in callee frame
302 : LDC 1, 10(0) ;  Load integer literal into R1
303 : LDA 4, 4(5) ;  [JIT] callee frame base
304 : ST 1, 2(4) ;  Store arg 1 in callee frame
305 : LDA 4, 4(5) ;  [JIT] callee frame base
306 : LDA 6, 310(0) ;  Return address
307 : ST 6, 0(4) ;  Store RA in callee frame
308 : ADD 5, 4, 0 ;  Push callee frame
309 : LDA 7, 27(0) ;  Call mod
310 : LD 1, 3(5) ;  Load callee result
311 : LDC 2, 4(0) ;  Caller frame size
312 : SUB 5, 5, 2 ;  Pop callee frame
313 : ADD 2, 1, 0 ;  Move left to R2
314 : LDC 1, 10(0) ;  Load integer literal into R1
315 : LDA 4, 4(5) ;  [JIT] callee frame base
316 : ST 1, 1(4) ;  Store arg 0 in callee frame
317 : LD 1, 1(5) ;  Load parameter 'x'
318 : LDA 4, 3(5) ;  [JIT] callee frame base
319 : ST 1, 1(4) ;  Store arg 0 in callee frame
320 : LDA 4, 3(5) ;  [JIT] callee frame base
321 : LDA 6, 325(0) ;  Return address
322 : ST 6, 0(4) ;  Store RA in callee frame
323 : ADD 5, 4, 0 ;  Push callee frame
324 : LDA 7, 199(0) ;  Call log10
325 : LD 1, 2(5) ;  Load callee result
326 : LDC 2, 3(0) ;  Caller frame size
327 : SUB 5, 5, 2 ;  Pop callee frame
328 : LDA 4, 4(5) ;  [JIT] callee frame base
329 : ST 1, 2(4) ;  Store arg 1 in callee frame
330 : LDA 4, 4(5) ;  [JIT] callee frame base
331 : LDA 6, 335(0) ;  Return address
332 : ST 6, 0(4) ;  Store RA in callee frame
333 : ADD 5, 4, 0 ;  Push callee frame
334 : LDA 7, 272(0) ;  Call pow
335 : LD 1, 3(5) ;  Load callee result
336 : LDC 2, 4(0) ;  Caller frame size
337 : SUB 5, 5, 2 ;  Pop callee frame
338 : MUL 1, 2, 1 ;  R1 = left * right
339 : ADD 1, 2, 1 ;  R1 = left + right
340 : ST 1, 2(5) ;  Store function result
341 : LD 6, 0(5) ;  Load return address
342 : LDA 7, 0(6) ;  Return to caller
343 : LD 1, 1(5) ;  Load parameter 'x'
344 : LDA 4, 3(5) ;  [JIT] callee frame base
345 : LDA 6, 349(0) ;  Return address
346 : ST 6, 0(4) ;  Store RA in callee frame
347 : ADD 5, 4, 0 ;  Push callee frame
348 : LDA 7, 9(0) ;  Call print
349 : LDC 2, 3(0) ;  Caller frame size
350 : SUB 5, 5, 2 ;  Pop callee frame
351 : LDC 1, 1(0) ;  Load boolean literal into R1
352 : ST 1, 2(5) ;  Store function result
353 : LD 6, 0(5) ;  Load return address
354 : LDA 7, 0(6) ;  Return to caller
355 : LDC 1, 0(0) ;  Load integer literal into R1
356 : ADD 3, 1, 0 ;  Stash right in R3
357 : LD 1, 2(5) ;  Load parameter 'turns'
358 : ADD 2, 1, 0 ;  Move left to R2
359 : ADD 1, 3, 0 ;  Restore right to R1
360 : SUB 1, 2, 1 ;  left - right
361 : JEQ 1, 2(7) ;  if 0 then true
362 : LDC 1, 0(0) ;  false
363 : LDA 7, 1(7) ;  skip setting true
364 : LDC 1, 1(0) ;  true
365 : JEQ 1, 368(0) ;  If false, jump to ELSE
366 : LDC 1, 1(0) ;  Load boolean literal into R1
367 : LDA 7, 410(0) ;  Skip ELSE
368 : LD 1, 1(5) ;  Load parameter 'x'
369 : LDA 4, 3(5) ;  [JIT] callee frame base
370 : ST 1, 1(4) ;  Store arg 0 in callee frame
371 : LDA 4, 3(5) ;  [JIT] callee frame base
372 : LDA 6, 376(0) ;  Return address
373 : ST 6, 0(4) ;  Store RA in callee frame
374 : ADD 5, 4, 0 ;  Push callee frame
375 : LDA 7, 137(0) ;  Call isPrime
376 : LD 1, 2(5) ;  Load callee result
377 : LDC 2, 3(0) ;  Caller frame size
378 : SUB 5, 5, 2 ;  Pop callee frame
379 : ADD 2, 1, 0 ;  Move left to R2
380 : LD 1, 1(5) ;  Load parameter 'x'
381 : LDA 4, 3(5) ;  [JIT] callee frame base
382 : ST 1, 1(4) ;  Store arg 0 in callee frame
383 : LDA 4, 3(5) ;  [JIT] callee frame base
384 : LDA 6, 388(0) ;  Return address
385 : ST 6, 0(4) ;  Store RA in callee frame
386 : ADD 5, 4, 0 ;  Push callee frame
387 : LDA 7, 292(0) ;  Call rotate
388 : LD 1, 2(5) ;  Load callee result
389 : LDC 2, 3(0) ;  Caller frame size
390 : SUB 5, 5, 2 ;  Pop callee frame
391 : LDA 4, 4(5) ;  [JIT] callee frame base
392 : ST 1, 1(4) ;  Store arg 0 in callee frame
393 : LDC 1, 1(0) ;  Load integer literal into R1
394 : ADD 3, 1, 0 ;  Stash right in R3
395 : LD 1, 2(5) ;  Load parameter 'turns'
396 : ADD 2, 1, 0 ;  Move left to R2
397 : ADD 1, 3, 0 ;  Restore right to R1
398 : SUB 1, 2, 1 ;  R1 = left - right
399 : LDA 4, 4(5) ;  [JIT] callee frame base
400 : ST 1, 2(4) ;  Store arg 1 in callee frame
401 : LDA 4, 4(5) ;  [JIT] callee frame base
402 : LDA 6, 406(0) ;  Return address
403 : ST 6, 0(4) ;  Store RA in callee frame
404 : ADD 5, 4, 0 ;  Push callee frame
405 : LDA 7, 355(0) ;  Call isCircularPrimeHelper
406 : LD 1, 3(5) ;  Load callee result
407 : LDC 2, 4(0) ;  Caller frame size
408 : SUB 5, 5, 2 ;  Pop callee frame
409 : MUL 1, 2, 1 ;  R1 = left AND right
410 : ST 1, 3(5) ;  Store function result
411 : LD 6, 0(5) ;  Load return address
412 : LDA 7, 0(6) ;  Return to caller
413 : LD 1, 1(5) ;  Load parameter 'x'
414 : LDA 4, 4(5) ;  [JIT] callee frame base
415 : ST 1, 1(4) ;  Store arg 0 in callee frame
416 : LD 1, 1(5) ;  Load parameter 'x'
417 : LDA 4, 3(5) ;  [JIT] callee frame base
418 : ST 1, 1(4) ;  Store arg 0 in callee frame
419 : LDA 4, 3(5) ;  [JIT] callee frame base
420 : LDA 6, 424(0) ;  Return address
421 : ST 6, 0(4) ;  Store RA in callee frame
422 : ADD 5, 4, 0 ;  Push callee frame
423 : LDA 7, 199(0) ;  Call log10
424 : LD 1, 2(5) ;  Load callee result
425 : LDC 2, 3(0) ;  Caller frame size
426 : SUB 5, 5, 2 ;  Pop callee frame
427 : ADD 2, 1, 0 ;  Move left to R2
428 : LDC 1, 1(0) ;  Load integer literal into R1
429 : ADD 1, 2, 1 ;  R1 = left + right
430 : LDA 4, 4(5) ;  [JIT] callee frame base
431 : ST 1, 2(4) ;  Store arg 1 in callee frame
432 : LDA 4, 4(5) ;  [JIT] callee frame base
433 : LDA 6, 437(0) ;  Return address
434 : ST 6, 0(4) ;  Store RA in callee frame
435 : ADD 5, 4, 0 ;  Push callee frame
436 : LDA 7, 355(0) ;  Call isCircularPrimeHelper
437 : LD 1, 3(5) ;  Load callee result
438 : LDC 2, 4(0) ;  Caller frame size
439 : SUB 5, 5, 2 ;  Pop callee frame
440 : JEQ 1, 453(0) ;  If false, jump to ELSE
441 : LD 1, 1(5) ;  Load parameter 'x'
442 : LDA 4, 3(5) ;  [JIT] callee frame base
443 : ST 1, 1(4) ;  Store arg 0 in callee frame
444 : LDA 4, 3(5) ;  [JIT] callee frame base
445 : LDA 6, 449(0) ;  Return address
446 : ST 6, 0(4) ;  Store RA in callee frame
447 : ADD 5, 4, 0 ;  Push callee frame
448 : LDA 7, 343(0) ;  Call report
449 : LD 1, 2(5) ;  Load callee result
450 : LDC 2, 3(0) ;  Caller frame size
451 : SUB 5, 5, 2 ;  Pop callee frame
452 : LDA 7, 454(0) ;  Skip ELSE
453 : LDC 1, 0(0) ;  Load boolean literal into R1
454 : ST 1, 2(5) ;  Store function result
455 : LD 6, 0(5) ;  Load return address
456 : LDA 7, 0(6) ;  Return to caller
457 : LD 1, 1(5) ;  Load parameter 'top'
458 : ADD 3, 1, 0 ;  Stash right in R3
459 : LD 1, 2(5) ;  Load parameter 'x'
460 : ADD 2, 1, 0 ;  Move left to R2
461 : ADD 1, 3, 0 ;  Restore right to R1
462 : SUB 1, 2, 1 ;  left - right
463 : JLT 1, 2(7) ;  if < 0 then true
464 : LDC 1, 0(0) ;  false
465 : LDA 7, 1(7) ;  skip setting true
466 : LDC 1, 1(0) ;  true
467 : JEQ 1, 531(0) ;  If false, jump to ELSE
468 : LD 1, 2(5) ;  Load parameter 'x'
469 : LDA 4, 3(5) ;  [JIT] callee frame base
470 : ST 1, 1(4) ;  Store arg 0 in callee frame
471 : LDA 4, 3(5) ;  [JIT] callee frame base
472 : LDA 6, 476(0) ;  Return address
473 : ST 6, 0(4) ;  Store RA in callee frame
474 : ADD 5, 4, 0 ;  Push callee frame
475 : LDA 7, 413(0) ;  Call isCircularPrime
476 : LD 1, 2(5) ;  Load callee result
477 : LDC 2, 3(0) ;  Caller frame size
478 : SUB 5, 5, 2 ;  Pop callee frame
479 : JEQ 1, 508(0) ;  If false, jump to ELSE
480 : LD 1, 1(5) ;  Load parameter 'top'
481 : LDA 4, 5(5) ;  [JIT] callee frame base
482 : ST 1, 1(4) ;  Store arg 0 in callee frame
483 : LDC 1, 1(0) ;  Load integer literal into R1
484 : ADD 3, 1, 0 ;  Stash right in R3
485 : LD 1, 2(5) ;  Load parameter 'x'
486 : ADD 2, 1, 0 ;  Move left to R2
487 : ADD 1, 3, 0 ;  Restore right to R1
488 : ADD 1, 2, 1 ;  R1 = left + right
489 : LDA 4, 5(5) ;  [JIT] callee frame base
490 : ST 1, 2(4) ;  Store arg 1 in callee frame
491 : LDC 1, 1(0) ;  Load integer literal into R1
492 : ADD 3, 1, 0 ;  Stash right in R3
493 : LD 1, 3(5) ;  Load parameter 'count'
494 : ADD 2, 1, 0 ;  Move left to R2
495 : ADD 1, 3, 0 ;  Restore right to R1
496 : ADD 1, 2, 1 ;  R1 = left + right
497 : LDA 4, 5(5) ;  [JIT] callee frame base
498 : ST 1, 3(4) ;  Store arg 2 in callee frame
499 : LDA 4, 5(5) ;  [JIT] callee frame base
500 : LDA 6, 504(0) ;  Return address
501 : ST 6, 0(4) ;  Store RA in callee frame
502 : ADD 5, 4, 0 ;  Push callee frame
503 : LDA 7, 457(0) ;  Call circularPrimesToHelper
504 : LD 1, 4(5) ;  Load callee result
505 : LDC 2, 5(0) ;  Caller frame size
506 : SUB 5, 5, 2 ;  Pop callee frame
507 : LDA 7, 530(0) ;  Skip ELSE
508 : LD 1, 1(5) ;  Load parameter 'top'
509 : LDA 4, 5(5) ;  [JIT] callee frame base
510 : ST 1, 1(4) ;  Store arg 0 in callee frame
511 : LDC 1, 1(0) ;  Load integer literal into R1
512 : ADD 3, 1, 0 ;  Stash right in R3
513 : LD 1, 2(5) ;  Load parameter 'x'
514 : ADD 2, 1, 0 ;  Move left to R2
515 : ADD 1, 3, 0 ;  Restore right to R1
516 : ADD 1, 2, 1 ;  R1 = left + right
517 : LDA 4, 5(5) ;  [JIT] callee frame base
518 : ST 1, 2(4) ;  Store arg 1 in callee frame
519 : LD 1, 3(5) ;  Load parameter 'count'
520 : LDA 4, 5(5) ;  [JIT] callee frame base
521 : ST 1, 3(4) ;  Store arg 2 in callee frame
522 : LDA 4, 5(5) ;  [JIT] callee frame base
523 : LDA 6, 527(0) ;  Return address
524 : ST 6, 0(4) ;  Store RA in callee frame
525 : ADD 5, 4, 0 ;  Push callee frame
526 : LDA 7, 457(0) ;  Call circularPrimesToHelper
527 : LD 1, 4(5) ;  Load callee result
528 : LDC 2, 5(0) ;  Caller frame size
529 : SUB 5, 5, 2 ;  Pop callee frame
530 : LDA 7, 532(0) ;  Skip ELSE
531 : LD 1, 3(5) ;  Load parameter 'count'
532 : ST 1, 4(5) ;  Store function result
533 : LD 6, 0(5) ;  Load return address
534 : LDA 7, 0(6) ;  Return to caller
535 : LDC 1, 1(0) ;  Load integer literal into R1
536 : ADD 3, 1, 0 ;  Stash right in R3
537 : LD 1, 1(5) ;  Load parameter 'x'
538 : ADD 2, 1, 0 ;  Move left to R2
539 : ADD 1, 3, 0 ;  Restore right to R1
540 : ADD 1, 2, 1 ;  R1 = left + right
541 : LDA 4, 5(5) ;  [JIT] callee frame base
542 : ST 1, 1(4) ;  Store arg 0 in callee frame
543 : LDC 1, 2(0) ;  Load integer literal into R1
544 : LDA 4, 5(5) ;  [JIT] callee frame base
545 : ST 1, 2(4) ;  Store arg 1 in callee frame
546 : LDC 1, 0(0) ;  Load integer literal into R1
547 : LDA 4, 5(5) ;  [JIT] callee frame base
548 : ST 1, 3(4) ;  Store arg 2 in callee frame
549 : LDA 4, 5(5) ;  [JIT] callee frame base
550 : LDA 6, 554(0) ;  Return address
551 : ST 6, 0(4) ;  Store RA in callee frame
552 : ADD 5, 4, 0 ;  Push callee frame
553 : LDA 7, 457(0) ;  Call circularPrimesToHelper
554 : LD 1, 4(5) ;  Load callee result
555 : LDC 2, 5(0) ;  Caller frame size
556 : SUB 5, 5, 2 ;  Pop callee frame
557 : ST 1, 2(5) ;  Store function result
558 : LD 6, 0(5) ;  Load return address
559 : LDA 7, 0(6) ;  Return to caller
