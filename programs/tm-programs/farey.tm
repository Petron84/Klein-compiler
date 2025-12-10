0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into R2
7 : ST 2, 3(5) ;  Store arg 3 into main frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST 6, 0(5) ;  Store return address in main frame
10 : LDA 7, 16(0) ;  Branch to main
11 : OUT 1, 0, 0 ;  Print main's result
12 : HALT 0, 0, 0 ;  Terminate program
13 : OUT 1, 0, 0 ;  print(R1)
14 : LD 6, 0(5) ;  Load return address
15 : LDA 7, 0(6) ;  Return
16 : LDA 4, 3(5) ;  Compute callee frame base
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 4, 5(5) ;  Compute callee frame base
19 : ADD 5, 4, 0 ;  Push callee frame
20 : LD 1, 1(5) ;  Load parameter 'xNum'
21 : ST 1, 1(5) ;  Store argument 0 in callee frame
22 : LD 1, 2(5) ;  Load parameter 'xDen'
23 : ST 1, 2(5) ;  Store argument 1 in callee frame
24 : LD 1, 3(5) ;  Load parameter 'N'
25 : ST 1, 3(5) ;  Store argument 2 in callee frame
26 : LDA 6, 29(0) ;  Return address
27 : ST 6, 0(5) ;  Store RA in callee frame
28 : LDA 7, 535(0) ;  Call fareyNum
29 : LD 1, 4(5) ;  Load callee result
30 : LDC 2, 5(0) ;  Caller frame size
31 : SUB 5, 5, 2 ;  Pop callee frame
32 : ST 1, 1(5) ;  Store print arg in callee frame
33 : LDA 6, 36(0) ;  Return address
34 : ST 6, 0(5) ;  Store RA in callee frame
35 : LDA 7, 13(0) ;  Call print
36 : LDC 2, 3(0) ;  Caller frame size
37 : SUB 5, 5, 2 ;  Pop callee frame
38 : LDA 4, 5(5) ;  Compute callee frame base
39 : ADD 5, 4, 0 ;  Push callee frame
40 : LD 1, 1(5) ;  Load parameter 'xNum'
41 : ST 1, 1(5) ;  Store argument 0 in callee frame
42 : LD 1, 2(5) ;  Load parameter 'xDen'
43 : ST 1, 2(5) ;  Store argument 1 in callee frame
44 : LD 1, 3(5) ;  Load parameter 'N'
45 : ST 1, 3(5) ;  Store argument 2 in callee frame
46 : LDA 6, 49(0) ;  Return address
47 : ST 6, 0(5) ;  Store RA in callee frame
48 : LDA 7, 422(0) ;  Call fareyDen
49 : LD 1, 4(5) ;  Load callee result
50 : LDC 2, 5(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop callee frame
52 : ST 1, 4(5) ;  Store result into caller frame
53 : LD 1, 4(5) ;  Load main return value
54 : LD 6, 0(5) ;  Load return address
55 : LDA 7, 0(6) ;  Return from main
56 : LD 1, 2(5) ;  Load parameter 'y'
57 : ADD 3, 1, 0 ;  Stash right in R3
58 : LD 1, 1(5) ;  Load parameter 'x'
59 : ADD 2, 1, 0 ;  Move left to R2
60 : ADD 1, 3, 0 ;  Restore right to R1
61 : SUB 1, 2, 1 ;  left - right
62 : JLT 1, 2(7) ;  if < 0 then true
63 : LDC 1, 0(0) ;  false
64 : LDA 7, 1(7) ;  skip setting true
65 : LDC 1, 1(0) ;  true
66 : ADD 2, 1, 0 ;  Move left to R2
67 : LD 1, 2(5) ;  Load parameter 'y'
68 : ADD 3, 1, 0 ;  Stash right in R3
69 : LD 1, 1(5) ;  Load parameter 'x'
70 : ADD 2, 1, 0 ;  Move left to R2
71 : ADD 1, 3, 0 ;  Restore right to R1
72 : SUB 1, 2, 1 ;  left - right
73 : JEQ 1, 2(7) ;  if 0 then true
74 : LDC 1, 0(0) ;  false
75 : LDA 7, 1(7) ;  skip setting true
76 : LDC 1, 1(0) ;  true
77 : ADD 1, 2, 1 ;  R1 = left OR right
78 : LDC 2, 1(0) ;  Load 1 into R2
79 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
80 : ST 1, 3(5) ;  Store function result
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LDA 4, 4(5) ;  Compute callee frame base
84 : ADD 5, 4, 0 ;  Push callee frame
85 : LD 1, 4(5) ;  Load parameter 'yd'
86 : ADD 3, 1, 0 ;  Stash right in R3
87 : LD 1, 1(5) ;  Load parameter 'x'
88 : ADD 2, 1, 0 ;  Move left to R2
89 : ADD 1, 3, 0 ;  Restore right to R1
90 : MUL 1, 2, 1 ;  R1 = left * right
91 : ST 1, 1(5) ;  Store argument 0 in callee frame
92 : LD 1, 2(5) ;  Load parameter 'xd'
93 : ADD 3, 1, 0 ;  Stash right in R3
94 : LD 1, 3(5) ;  Load parameter 'y'
95 : ADD 2, 1, 0 ;  Move left to R2
96 : ADD 1, 3, 0 ;  Restore right to R1
97 : MUL 1, 2, 1 ;  R1 = left * right
98 : ST 1, 2(5) ;  Store argument 1 in callee frame
99 : LDA 6, 102(0) ;  Return address
100 : ST 6, 0(5) ;  Store RA in callee frame
101 : LDA 7, 56(0) ;  Call greater
102 : LD 1, 3(5) ;  Load callee result
103 : LDC 2, 4(0) ;  Caller frame size
104 : SUB 5, 5, 2 ;  Pop callee frame
105 : ST 1, 5(5) ;  Store function result
106 : LD 6, 0(5) ;  Load return address
107 : LDA 7, 0(6) ;  Return to caller
108 : LD 1, 4(5) ;  Load parameter 'yd'
109 : ADD 3, 1, 0 ;  Stash right in R3
110 : LD 1, 1(5) ;  Load parameter 'x'
111 : ADD 2, 1, 0 ;  Move left to R2
112 : ADD 1, 3, 0 ;  Restore right to R1
113 : MUL 1, 2, 1 ;  R1 = left * right
114 : ADD 2, 1, 0 ;  Move left to R2
115 : LD 1, 2(5) ;  Load parameter 'xd'
116 : ADD 3, 1, 0 ;  Stash right in R3
117 : LD 1, 3(5) ;  Load parameter 'y'
118 : ADD 2, 1, 0 ;  Move left to R2
119 : ADD 1, 3, 0 ;  Restore right to R1
120 : MUL 1, 2, 1 ;  R1 = left * right
121 : SUB 1, 2, 1 ;  left - right
122 : JEQ 1, 2(7) ;  if 0 then true
123 : LDC 1, 0(0) ;  false
124 : LDA 7, 1(7) ;  skip setting true
125 : LDC 1, 1(0) ;  true
126 : ST 1, 5(5) ;  Store function result
127 : LD 6, 0(5) ;  Load return address
128 : LDA 7, 0(6) ;  Return to caller
129 : LDA 4, 4(5) ;  Compute callee frame base
130 : ADD 5, 4, 0 ;  Push callee frame
131 : LD 1, 6(5) ;  Load parameter 'b'
132 : ST 1, 1(5) ;  Store argument 0 in callee frame
133 : LD 1, 4(5) ;  Load parameter 'N'
134 : ST 1, 2(5) ;  Store argument 1 in callee frame
135 : LDA 6, 138(0) ;  Return address
136 : ST 6, 0(5) ;  Store RA in callee frame
137 : LDA 7, 56(0) ;  Call greater
138 : LD 1, 3(5) ;  Load callee result
139 : LDC 2, 4(0) ;  Caller frame size
140 : SUB 5, 5, 2 ;  Pop callee frame
141 : ADD 2, 1, 0 ;  Move left to R2
142 : LDA 4, 4(5) ;  Compute callee frame base
143 : ADD 5, 4, 0 ;  Push callee frame
144 : LD 1, 8(5) ;  Load parameter 'd'
145 : ST 1, 1(5) ;  Store argument 0 in callee frame
146 : LD 1, 4(5) ;  Load parameter 'N'
147 : ST 1, 2(5) ;  Store argument 1 in callee frame
148 : LDA 6, 151(0) ;  Return address
149 : ST 6, 0(5) ;  Store RA in callee frame
150 : LDA 7, 56(0) ;  Call greater
151 : LD 1, 3(5) ;  Load callee result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop callee frame
154 : ADD 1, 2, 1 ;  R1 = left OR right
155 : JEQ 1, 197(0) ;  If false, jump to ELSE
156 : LDC 1, 1(0) ;  Load integer literal into R1
157 : ADD 3, 1, 0 ;  Stash right in R3
158 : LD 1, 1(5) ;  Load parameter 'selector'
159 : ADD 2, 1, 0 ;  Move left to R2
160 : ADD 1, 3, 0 ;  Restore right to R1
161 : SUB 1, 2, 1 ;  left - right
162 : JEQ 1, 2(7) ;  if 0 then true
163 : LDC 1, 0(0) ;  false
164 : LDA 7, 1(7) ;  skip setting true
165 : LDC 1, 1(0) ;  true
166 : JEQ 1, 169(0) ;  If false, jump to ELSE
167 : LD 1, 5(5) ;  Load parameter 'a'
168 : LDA 7, 196(0) ;  Skip ELSE
169 : LDC 1, 2(0) ;  Load integer literal into R1
170 : ADD 3, 1, 0 ;  Stash right in R3
171 : LD 1, 1(5) ;  Load parameter 'selector'
172 : ADD 2, 1, 0 ;  Move left to R2
173 : ADD 1, 3, 0 ;  Restore right to R1
174 : SUB 1, 2, 1 ;  left - right
175 : JEQ 1, 2(7) ;  if 0 then true
176 : LDC 1, 0(0) ;  false
177 : LDA 7, 1(7) ;  skip setting true
178 : LDC 1, 1(0) ;  true
179 : JEQ 1, 182(0) ;  If false, jump to ELSE
180 : LD 1, 6(5) ;  Load parameter 'b'
181 : LDA 7, 196(0) ;  Skip ELSE
182 : LDC 1, 3(0) ;  Load integer literal into R1
183 : ADD 3, 1, 0 ;  Stash right in R3
184 : LD 1, 1(5) ;  Load parameter 'selector'
185 : ADD 2, 1, 0 ;  Move left to R2
186 : ADD 1, 3, 0 ;  Restore right to R1
187 : SUB 1, 2, 1 ;  left - right
188 : JEQ 1, 2(7) ;  if 0 then true
189 : LDC 1, 0(0) ;  false
190 : LDA 7, 1(7) ;  skip setting true
191 : LDC 1, 1(0) ;  true
192 : JEQ 1, 195(0) ;  If false, jump to ELSE
193 : LD 1, 7(5) ;  Load parameter 'c'
194 : LDA 7, 196(0) ;  Skip ELSE
195 : LD 1, 8(5) ;  Load parameter 'd'
196 : LDA 7, 381(0) ;  Skip ELSE
197 : LDA 4, 6(5) ;  Compute callee frame base
198 : ADD 5, 4, 0 ;  Push callee frame
199 : LD 1, 2(5) ;  Load parameter 'xNum'
200 : ST 1, 1(5) ;  Store argument 0 in callee frame
201 : LD 1, 3(5) ;  Load parameter 'xDen'
202 : ST 1, 2(5) ;  Store argument 1 in callee frame
203 : LD 1, 7(5) ;  Load parameter 'c'
204 : ADD 3, 1, 0 ;  Stash right in R3
205 : LD 1, 5(5) ;  Load parameter 'a'
206 : ADD 2, 1, 0 ;  Move left to R2
207 : ADD 1, 3, 0 ;  Restore right to R1
208 : ADD 1, 2, 1 ;  R1 = left + right
209 : ST 1, 3(5) ;  Store argument 2 in callee frame
210 : LD 1, 8(5) ;  Load parameter 'd'
211 : ADD 3, 1, 0 ;  Stash right in R3
212 : LD 1, 6(5) ;  Load parameter 'b'
213 : ADD 2, 1, 0 ;  Move left to R2
214 : ADD 1, 3, 0 ;  Restore right to R1
215 : ADD 1, 2, 1 ;  R1 = left + right
216 : ST 1, 4(5) ;  Store argument 3 in callee frame
217 : LDA 6, 220(0) ;  Return address
218 : ST 6, 0(5) ;  Store RA in callee frame
219 : LDA 7, 108(0) ;  Call fractionEqual
220 : LD 1, 5(5) ;  Load callee result
221 : LDC 2, 6(0) ;  Caller frame size
222 : SUB 5, 5, 2 ;  Pop callee frame
223 : JEQ 1, 285(0) ;  If false, jump to ELSE
224 : LDC 1, 1(0) ;  Load integer literal into R1
225 : ADD 3, 1, 0 ;  Stash right in R3
226 : LD 1, 1(5) ;  Load parameter 'selector'
227 : ADD 2, 1, 0 ;  Move left to R2
228 : ADD 1, 3, 0 ;  Restore right to R1
229 : SUB 1, 2, 1 ;  left - right
230 : JEQ 1, 2(7) ;  if 0 then true
231 : LDC 1, 0(0) ;  false
232 : LDA 7, 1(7) ;  skip setting true
233 : LDC 1, 1(0) ;  true
234 : JEQ 1, 242(0) ;  If false, jump to ELSE
235 : LD 1, 7(5) ;  Load parameter 'c'
236 : ADD 3, 1, 0 ;  Stash right in R3
237 : LD 1, 5(5) ;  Load parameter 'a'
238 : ADD 2, 1, 0 ;  Move left to R2
239 : ADD 1, 3, 0 ;  Restore right to R1
240 : ADD 1, 2, 1 ;  R1 = left + right
241 : LDA 7, 284(0) ;  Skip ELSE
242 : LDC 1, 2(0) ;  Load integer literal into R1
243 : ADD 3, 1, 0 ;  Stash right in R3
244 : LD 1, 1(5) ;  Load parameter 'selector'
245 : ADD 2, 1, 0 ;  Move left to R2
246 : ADD 1, 3, 0 ;  Restore right to R1
247 : SUB 1, 2, 1 ;  left - right
248 : JEQ 1, 2(7) ;  if 0 then true
249 : LDC 1, 0(0) ;  false
250 : LDA 7, 1(7) ;  skip setting true
251 : LDC 1, 1(0) ;  true
252 : JEQ 1, 260(0) ;  If false, jump to ELSE
253 : LD 1, 8(5) ;  Load parameter 'd'
254 : ADD 3, 1, 0 ;  Stash right in R3
255 : LD 1, 6(5) ;  Load parameter 'b'
256 : ADD 2, 1, 0 ;  Move left to R2
257 : ADD 1, 3, 0 ;  Restore right to R1
258 : ADD 1, 2, 1 ;  R1 = left + right
259 : LDA 7, 284(0) ;  Skip ELSE
260 : LDC 1, 3(0) ;  Load integer literal into R1
261 : ADD 3, 1, 0 ;  Stash right in R3
262 : LD 1, 1(5) ;  Load parameter 'selector'
263 : ADD 2, 1, 0 ;  Move left to R2
264 : ADD 1, 3, 0 ;  Restore right to R1
265 : SUB 1, 2, 1 ;  left - right
266 : JEQ 1, 2(7) ;  if 0 then true
267 : LDC 1, 0(0) ;  false
268 : LDA 7, 1(7) ;  skip setting true
269 : LDC 1, 1(0) ;  true
270 : JEQ 1, 278(0) ;  If false, jump to ELSE
271 : LD 1, 7(5) ;  Load parameter 'c'
272 : ADD 3, 1, 0 ;  Stash right in R3
273 : LD 1, 5(5) ;  Load parameter 'a'
274 : ADD 2, 1, 0 ;  Move left to R2
275 : ADD 1, 3, 0 ;  Restore right to R1
276 : ADD 1, 2, 1 ;  R1 = left + right
277 : LDA 7, 284(0) ;  Skip ELSE
278 : LD 1, 8(5) ;  Load parameter 'd'
279 : ADD 3, 1, 0 ;  Stash right in R3
280 : LD 1, 6(5) ;  Load parameter 'b'
281 : ADD 2, 1, 0 ;  Move left to R2
282 : ADD 1, 3, 0 ;  Restore right to R1
283 : ADD 1, 2, 1 ;  R1 = left + right
284 : LDA 7, 381(0) ;  Skip ELSE
285 : LDA 4, 6(5) ;  Compute callee frame base
286 : ADD 5, 4, 0 ;  Push callee frame
287 : LD 1, 2(5) ;  Load parameter 'xNum'
288 : ST 1, 1(5) ;  Store argument 0 in callee frame
289 : LD 1, 3(5) ;  Load parameter 'xDen'
290 : ST 1, 2(5) ;  Store argument 1 in callee frame
291 : LD 1, 7(5) ;  Load parameter 'c'
292 : ADD 3, 1, 0 ;  Stash right in R3
293 : LD 1, 5(5) ;  Load parameter 'a'
294 : ADD 2, 1, 0 ;  Move left to R2
295 : ADD 1, 3, 0 ;  Restore right to R1
296 : ADD 1, 2, 1 ;  R1 = left + right
297 : ST 1, 3(5) ;  Store argument 2 in callee frame
298 : LD 1, 8(5) ;  Load parameter 'd'
299 : ADD 3, 1, 0 ;  Stash right in R3
300 : LD 1, 6(5) ;  Load parameter 'b'
301 : ADD 2, 1, 0 ;  Move left to R2
302 : ADD 1, 3, 0 ;  Restore right to R1
303 : ADD 1, 2, 1 ;  R1 = left + right
304 : ST 1, 4(5) ;  Store argument 3 in callee frame
305 : LDA 6, 308(0) ;  Return address
306 : ST 6, 0(5) ;  Store RA in callee frame
307 : LDA 7, 83(0) ;  Call fractionGreater
308 : LD 1, 5(5) ;  Load callee result
309 : LDC 2, 6(0) ;  Caller frame size
310 : SUB 5, 5, 2 ;  Pop callee frame
311 : JEQ 1, 347(0) ;  If false, jump to ELSE
312 : LDA 4, 10(5) ;  Compute callee frame base
313 : ADD 5, 4, 0 ;  Push callee frame
314 : LD 1, 1(5) ;  Load parameter 'selector'
315 : ST 1, 1(5) ;  Store argument 0 in callee frame
316 : LD 1, 2(5) ;  Load parameter 'xNum'
317 : ST 1, 2(5) ;  Store argument 1 in callee frame
318 : LD 1, 3(5) ;  Load parameter 'xDen'
319 : ST 1, 3(5) ;  Store argument 2 in callee frame
320 : LD 1, 4(5) ;  Load parameter 'N'
321 : ST 1, 4(5) ;  Store argument 3 in callee frame
322 : LD 1, 7(5) ;  Load parameter 'c'
323 : ADD 3, 1, 0 ;  Stash right in R3
324 : LD 1, 5(5) ;  Load parameter 'a'
325 : ADD 2, 1, 0 ;  Move left to R2
326 : ADD 1, 3, 0 ;  Restore right to R1
327 : ADD 1, 2, 1 ;  R1 = left + right
328 : ST 1, 5(5) ;  Store argument 4 in callee frame
329 : LD 1, 8(5) ;  Load parameter 'd'
330 : ADD 3, 1, 0 ;  Stash right in R3
331 : LD 1, 6(5) ;  Load parameter 'b'
332 : ADD 2, 1, 0 ;  Move left to R2
333 : ADD 1, 3, 0 ;  Restore right to R1
334 : ADD 1, 2, 1 ;  R1 = left + right
335 : ST 1, 6(5) ;  Store argument 5 in callee frame
336 : LD 1, 7(5) ;  Load parameter 'c'
337 : ST 1, 7(5) ;  Store argument 6 in callee frame
338 : LD 1, 8(5) ;  Load parameter 'd'
339 : ST 1, 8(5) ;  Store argument 7 in callee frame
340 : LDA 6, 343(0) ;  Return address
341 : ST 6, 0(5) ;  Store RA in callee frame
342 : LDA 7, 129(0) ;  Call whileLoopFor
343 : LD 1, 9(5) ;  Load callee result
344 : LDC 2, 10(0) ;  Caller frame size
345 : SUB 5, 5, 2 ;  Pop callee frame
346 : LDA 7, 381(0) ;  Skip ELSE
347 : LDA 4, 10(5) ;  Compute callee frame base
348 : ADD 5, 4, 0 ;  Push callee frame
349 : LD 1, 1(5) ;  Load parameter 'selector'
350 : ST 1, 1(5) ;  Store argument 0 in callee frame
351 : LD 1, 2(5) ;  Load parameter 'xNum'
352 : ST 1, 2(5) ;  Store argument 1 in callee frame
353 : LD 1, 3(5) ;  Load parameter 'xDen'
354 : ST 1, 3(5) ;  Store argument 2 in callee frame
355 : LD 1, 4(5) ;  Load parameter 'N'
356 : ST 1, 4(5) ;  Store argument 3 in callee frame
357 : LD 1, 5(5) ;  Load parameter 'a'
358 : ST 1, 5(5) ;  Store argument 4 in callee frame
359 : LD 1, 6(5) ;  Load parameter 'b'
360 : ST 1, 6(5) ;  Store argument 5 in callee frame
361 : LD 1, 7(5) ;  Load parameter 'c'
362 : ADD 3, 1, 0 ;  Stash right in R3
363 : LD 1, 5(5) ;  Load parameter 'a'
364 : ADD 2, 1, 0 ;  Move left to R2
365 : ADD 1, 3, 0 ;  Restore right to R1
366 : ADD 1, 2, 1 ;  R1 = left + right
367 : ST 1, 7(5) ;  Store argument 6 in callee frame
368 : LD 1, 8(5) ;  Load parameter 'd'
369 : ADD 3, 1, 0 ;  Stash right in R3
370 : LD 1, 6(5) ;  Load parameter 'b'
371 : ADD 2, 1, 0 ;  Move left to R2
372 : ADD 1, 3, 0 ;  Restore right to R1
373 : ADD 1, 2, 1 ;  R1 = left + right
374 : ST 1, 8(5) ;  Store argument 7 in callee frame
375 : LDA 6, 378(0) ;  Return address
376 : ST 6, 0(5) ;  Store RA in callee frame
377 : LDA 7, 129(0) ;  Call whileLoopFor
378 : LD 1, 9(5) ;  Load callee result
379 : LDC 2, 10(0) ;  Caller frame size
380 : SUB 5, 5, 2 ;  Pop callee frame
381 : ST 1, 9(5) ;  Store function result
382 : LD 6, 0(5) ;  Load return address
383 : LDA 7, 0(6) ;  Return to caller
384 : LDA 4, 4(5) ;  Compute callee frame base
385 : ADD 5, 4, 0 ;  Push callee frame
386 : LD 1, 3(5) ;  Load parameter 'b'
387 : ST 1, 1(5) ;  Store argument 0 in callee frame
388 : LD 1, 1(5) ;  Load parameter 'N'
389 : ST 1, 2(5) ;  Store argument 1 in callee frame
390 : LDA 6, 393(0) ;  Return address
391 : ST 6, 0(5) ;  Store RA in callee frame
392 : LDA 7, 56(0) ;  Call greater
393 : LD 1, 3(5) ;  Load callee result
394 : LDC 2, 4(0) ;  Caller frame size
395 : SUB 5, 5, 2 ;  Pop callee frame
396 : JEQ 1, 399(0) ;  If false, jump to ELSE
397 : LD 1, 5(5) ;  Load parameter 'd'
398 : LDA 7, 400(0) ;  Skip ELSE
399 : LD 1, 3(5) ;  Load parameter 'b'
400 : ST 1, 6(5) ;  Store function result
401 : LD 6, 0(5) ;  Load return address
402 : LDA 7, 0(6) ;  Return to caller
403 : LDA 4, 4(5) ;  Compute callee frame base
404 : ADD 5, 4, 0 ;  Push callee frame
405 : LD 1, 3(5) ;  Load parameter 'b'
406 : ST 1, 1(5) ;  Store argument 0 in callee frame
407 : LD 1, 1(5) ;  Load parameter 'N'
408 : ST 1, 2(5) ;  Store argument 1 in callee frame
409 : LDA 6, 412(0) ;  Return address
410 : ST 6, 0(5) ;  Store RA in callee frame
411 : LDA 7, 56(0) ;  Call greater
412 : LD 1, 3(5) ;  Load callee result
413 : LDC 2, 4(0) ;  Caller frame size
414 : SUB 5, 5, 2 ;  Pop callee frame
415 : JEQ 1, 418(0) ;  If false, jump to ELSE
416 : LD 1, 4(5) ;  Load parameter 'c'
417 : LDA 7, 419(0) ;  Skip ELSE
418 : LD 1, 2(5) ;  Load parameter 'a'
419 : ST 1, 6(5) ;  Store function result
420 : LD 6, 0(5) ;  Load return address
421 : LDA 7, 0(6) ;  Return to caller
422 : LDA 4, 7(5) ;  Compute callee frame base
423 : ADD 5, 4, 0 ;  Push callee frame
424 : LD 1, 3(5) ;  Load parameter 'N'
425 : ST 1, 1(5) ;  Store argument 0 in callee frame
426 : LDA 4, 10(5) ;  Compute callee frame base
427 : ADD 5, 4, 0 ;  Push callee frame
428 : LDC 1, 1(0) ;  Load integer literal into R1
429 : ST 1, 1(5) ;  Store argument 0 in callee frame
430 : LD 1, 1(5) ;  Load parameter 'xNum'
431 : ST 1, 2(5) ;  Store argument 1 in callee frame
432 : LD 1, 2(5) ;  Load parameter 'xDen'
433 : ST 1, 3(5) ;  Store argument 2 in callee frame
434 : LD 1, 3(5) ;  Load parameter 'N'
435 : ST 1, 4(5) ;  Store argument 3 in callee frame
436 : LDC 1, 0(0) ;  Load integer literal into R1
437 : ST 1, 5(5) ;  Store argument 4 in callee frame
438 : LDC 1, 1(0) ;  Load integer literal into R1
439 : ST 1, 6(5) ;  Store argument 5 in callee frame
440 : LDC 1, 1(0) ;  Load integer literal into R1
441 : ST 1, 7(5) ;  Store argument 6 in callee frame
442 : LDC 1, 1(0) ;  Load integer literal into R1
443 : ST 1, 8(5) ;  Store argument 7 in callee frame
444 : LDA 6, 447(0) ;  Return address
445 : ST 6, 0(5) ;  Store RA in callee frame
446 : LDA 7, 129(0) ;  Call whileLoopFor
447 : LD 1, 9(5) ;  Load callee result
448 : LDC 2, 10(0) ;  Caller frame size
449 : SUB 5, 5, 2 ;  Pop callee frame
450 : ST 1, 2(5) ;  Store argument 1 in callee frame
451 : LDA 4, 10(5) ;  Compute callee frame base
452 : ADD 5, 4, 0 ;  Push callee frame
453 : LDC 1, 2(0) ;  Load integer literal into R1
454 : ST 1, 1(5) ;  Store argument 0 in callee frame
455 : LD 1, 1(5) ;  Load parameter 'xNum'
456 : ST 1, 2(5) ;  Store argument 1 in callee frame
457 : LD 1, 2(5) ;  Load parameter 'xDen'
458 : ST 1, 3(5) ;  Store argument 2 in callee frame
459 : LD 1, 3(5) ;  Load parameter 'N'
460 : ST 1, 4(5) ;  Store argument 3 in callee frame
461 : LDC 1, 0(0) ;  Load integer literal into R1
462 : ST 1, 5(5) ;  Store argument 4 in callee frame
463 : LDC 1, 1(0) ;  Load integer literal into R1
464 : ST 1, 6(5) ;  Store argument 5 in callee frame
465 : LDC 1, 1(0) ;  Load integer literal into R1
466 : ST 1, 7(5) ;  Store argument 6 in callee frame
467 : LDC 1, 1(0) ;  Load integer literal into R1
468 : ST 1, 8(5) ;  Store argument 7 in callee frame
469 : LDA 6, 472(0) ;  Return address
470 : ST 6, 0(5) ;  Store RA in callee frame
471 : LDA 7, 129(0) ;  Call whileLoopFor
472 : LD 1, 9(5) ;  Load callee result
473 : LDC 2, 10(0) ;  Caller frame size
474 : SUB 5, 5, 2 ;  Pop callee frame
475 : ST 1, 3(5) ;  Store argument 2 in callee frame
476 : LDA 4, 10(5) ;  Compute callee frame base
477 : ADD 5, 4, 0 ;  Push callee frame
478 : LDC 1, 3(0) ;  Load integer literal into R1
479 : ST 1, 1(5) ;  Store argument 0 in callee frame
480 : LD 1, 1(5) ;  Load parameter 'xNum'
481 : ST 1, 2(5) ;  Store argument 1 in callee frame
482 : LD 1, 2(5) ;  Load parameter 'xDen'
483 : ST 1, 3(5) ;  Store argument 2 in callee frame
484 : LD 1, 3(5) ;  Load parameter 'N'
485 : ST 1, 4(5) ;  Store argument 3 in callee frame
486 : LDC 1, 0(0) ;  Load integer literal into R1
487 : ST 1, 5(5) ;  Store argument 4 in callee frame
488 : LDC 1, 1(0) ;  Load integer literal into R1
489 : ST 1, 6(5) ;  Store argument 5 in callee frame
490 : LDC 1, 1(0) ;  Load integer literal into R1
491 : ST 1, 7(5) ;  Store argument 6 in callee frame
492 : LDC 1, 1(0) ;  Load integer literal into R1
493 : ST 1, 8(5) ;  Store argument 7 in callee frame
494 : LDA 6, 497(0) ;  Return address
495 : ST 6, 0(5) ;  Store RA in callee frame
496 : LDA 7, 129(0) ;  Call whileLoopFor
497 : LD 1, 9(5) ;  Load callee result
498 : LDC 2, 10(0) ;  Caller frame size
499 : SUB 5, 5, 2 ;  Pop callee frame
500 : ST 1, 4(5) ;  Store argument 3 in callee frame
501 : LDA 4, 10(5) ;  Compute callee frame base
502 : ADD 5, 4, 0 ;  Push callee frame
503 : LDC 1, 4(0) ;  Load integer literal into R1
504 : ST 1, 1(5) ;  Store argument 0 in callee frame
505 : LD 1, 1(5) ;  Load parameter 'xNum'
506 : ST 1, 2(5) ;  Store argument 1 in callee frame
507 : LD 1, 2(5) ;  Load parameter 'xDen'
508 : ST 1, 3(5) ;  Store argument 2 in callee frame
509 : LD 1, 3(5) ;  Load parameter 'N'
510 : ST 1, 4(5) ;  Store argument 3 in callee frame
511 : LDC 1, 0(0) ;  Load integer literal into R1
512 : ST 1, 5(5) ;  Store argument 4 in callee frame
513 : LDC 1, 1(0) ;  Load integer literal into R1
514 : ST 1, 6(5) ;  Store argument 5 in callee frame
515 : LDC 1, 1(0) ;  Load integer literal into R1
516 : ST 1, 7(5) ;  Store argument 6 in callee frame
517 : LDC 1, 1(0) ;  Load integer literal into R1
518 : ST 1, 8(5) ;  Store argument 7 in callee frame
519 : LDA 6, 522(0) ;  Return address
520 : ST 6, 0(5) ;  Store RA in callee frame
521 : LDA 7, 129(0) ;  Call whileLoopFor
522 : LD 1, 9(5) ;  Load callee result
523 : LDC 2, 10(0) ;  Caller frame size
524 : SUB 5, 5, 2 ;  Pop callee frame
525 : ST 1, 5(5) ;  Store argument 4 in callee frame
526 : LDA 6, 529(0) ;  Return address
527 : ST 6, 0(5) ;  Store RA in callee frame
528 : LDA 7, 384(0) ;  Call fareySelectDen
529 : LD 1, 6(5) ;  Load callee result
530 : LDC 2, 7(0) ;  Caller frame size
531 : SUB 5, 5, 2 ;  Pop callee frame
532 : ST 1, 4(5) ;  Store function result
533 : LD 6, 0(5) ;  Load return address
534 : LDA 7, 0(6) ;  Return to caller
535 : LDA 4, 7(5) ;  Compute callee frame base
536 : ADD 5, 4, 0 ;  Push callee frame
537 : LD 1, 3(5) ;  Load parameter 'N'
538 : ST 1, 1(5) ;  Store argument 0 in callee frame
539 : LDA 4, 10(5) ;  Compute callee frame base
540 : ADD 5, 4, 0 ;  Push callee frame
541 : LDC 1, 1(0) ;  Load integer literal into R1
542 : ST 1, 1(5) ;  Store argument 0 in callee frame
543 : LD 1, 1(5) ;  Load parameter 'xNum'
544 : ST 1, 2(5) ;  Store argument 1 in callee frame
545 : LD 1, 2(5) ;  Load parameter 'xDen'
546 : ST 1, 3(5) ;  Store argument 2 in callee frame
547 : LD 1, 3(5) ;  Load parameter 'N'
548 : ST 1, 4(5) ;  Store argument 3 in callee frame
549 : LDC 1, 0(0) ;  Load integer literal into R1
550 : ST 1, 5(5) ;  Store argument 4 in callee frame
551 : LDC 1, 1(0) ;  Load integer literal into R1
552 : ST 1, 6(5) ;  Store argument 5 in callee frame
553 : LDC 1, 1(0) ;  Load integer literal into R1
554 : ST 1, 7(5) ;  Store argument 6 in callee frame
555 : LDC 1, 1(0) ;  Load integer literal into R1
556 : ST 1, 8(5) ;  Store argument 7 in callee frame
557 : LDA 6, 560(0) ;  Return address
558 : ST 6, 0(5) ;  Store RA in callee frame
559 : LDA 7, 129(0) ;  Call whileLoopFor
560 : LD 1, 9(5) ;  Load callee result
561 : LDC 2, 10(0) ;  Caller frame size
562 : SUB 5, 5, 2 ;  Pop callee frame
563 : ST 1, 2(5) ;  Store argument 1 in callee frame
564 : LDA 4, 10(5) ;  Compute callee frame base
565 : ADD 5, 4, 0 ;  Push callee frame
566 : LDC 1, 2(0) ;  Load integer literal into R1
567 : ST 1, 1(5) ;  Store argument 0 in callee frame
568 : LD 1, 1(5) ;  Load parameter 'xNum'
569 : ST 1, 2(5) ;  Store argument 1 in callee frame
570 : LD 1, 2(5) ;  Load parameter 'xDen'
571 : ST 1, 3(5) ;  Store argument 2 in callee frame
572 : LD 1, 3(5) ;  Load parameter 'N'
573 : ST 1, 4(5) ;  Store argument 3 in callee frame
574 : LDC 1, 0(0) ;  Load integer literal into R1
575 : ST 1, 5(5) ;  Store argument 4 in callee frame
576 : LDC 1, 1(0) ;  Load integer literal into R1
577 : ST 1, 6(5) ;  Store argument 5 in callee frame
578 : LDC 1, 1(0) ;  Load integer literal into R1
579 : ST 1, 7(5) ;  Store argument 6 in callee frame
580 : LDC 1, 1(0) ;  Load integer literal into R1
581 : ST 1, 8(5) ;  Store argument 7 in callee frame
582 : LDA 6, 585(0) ;  Return address
583 : ST 6, 0(5) ;  Store RA in callee frame
584 : LDA 7, 129(0) ;  Call whileLoopFor
585 : LD 1, 9(5) ;  Load callee result
586 : LDC 2, 10(0) ;  Caller frame size
587 : SUB 5, 5, 2 ;  Pop callee frame
588 : ST 1, 3(5) ;  Store argument 2 in callee frame
589 : LDA 4, 10(5) ;  Compute callee frame base
590 : ADD 5, 4, 0 ;  Push callee frame
591 : LDC 1, 3(0) ;  Load integer literal into R1
592 : ST 1, 1(5) ;  Store argument 0 in callee frame
593 : LD 1, 1(5) ;  Load parameter 'xNum'
594 : ST 1, 2(5) ;  Store argument 1 in callee frame
595 : LD 1, 2(5) ;  Load parameter 'xDen'
596 : ST 1, 3(5) ;  Store argument 2 in callee frame
597 : LD 1, 3(5) ;  Load parameter 'N'
598 : ST 1, 4(5) ;  Store argument 3 in callee frame
599 : LDC 1, 0(0) ;  Load integer literal into R1
600 : ST 1, 5(5) ;  Store argument 4 in callee frame
601 : LDC 1, 1(0) ;  Load integer literal into R1
602 : ST 1, 6(5) ;  Store argument 5 in callee frame
603 : LDC 1, 1(0) ;  Load integer literal into R1
604 : ST 1, 7(5) ;  Store argument 6 in callee frame
605 : LDC 1, 1(0) ;  Load integer literal into R1
606 : ST 1, 8(5) ;  Store argument 7 in callee frame
607 : LDA 6, 610(0) ;  Return address
608 : ST 6, 0(5) ;  Store RA in callee frame
609 : LDA 7, 129(0) ;  Call whileLoopFor
610 : LD 1, 9(5) ;  Load callee result
611 : LDC 2, 10(0) ;  Caller frame size
612 : SUB 5, 5, 2 ;  Pop callee frame
613 : ST 1, 4(5) ;  Store argument 3 in callee frame
614 : LDA 4, 10(5) ;  Compute callee frame base
615 : ADD 5, 4, 0 ;  Push callee frame
616 : LDC 1, 4(0) ;  Load integer literal into R1
617 : ST 1, 1(5) ;  Store argument 0 in callee frame
618 : LD 1, 1(5) ;  Load parameter 'xNum'
619 : ST 1, 2(5) ;  Store argument 1 in callee frame
620 : LD 1, 2(5) ;  Load parameter 'xDen'
621 : ST 1, 3(5) ;  Store argument 2 in callee frame
622 : LD 1, 3(5) ;  Load parameter 'N'
623 : ST 1, 4(5) ;  Store argument 3 in callee frame
624 : LDC 1, 0(0) ;  Load integer literal into R1
625 : ST 1, 5(5) ;  Store argument 4 in callee frame
626 : LDC 1, 1(0) ;  Load integer literal into R1
627 : ST 1, 6(5) ;  Store argument 5 in callee frame
628 : LDC 1, 1(0) ;  Load integer literal into R1
629 : ST 1, 7(5) ;  Store argument 6 in callee frame
630 : LDC 1, 1(0) ;  Load integer literal into R1
631 : ST 1, 8(5) ;  Store argument 7 in callee frame
632 : LDA 6, 635(0) ;  Return address
633 : ST 6, 0(5) ;  Store RA in callee frame
634 : LDA 7, 129(0) ;  Call whileLoopFor
635 : LD 1, 9(5) ;  Load callee result
636 : LDC 2, 10(0) ;  Caller frame size
637 : SUB 5, 5, 2 ;  Pop callee frame
638 : ST 1, 5(5) ;  Store argument 4 in callee frame
639 : LDA 6, 642(0) ;  Return address
640 : ST 6, 0(5) ;  Store RA in callee frame
641 : LDA 7, 403(0) ;  Call fareySelectNum
642 : LD 1, 6(5) ;  Load callee result
643 : LDC 2, 7(0) ;  Caller frame size
644 : SUB 5, 5, 2 ;  Pop callee frame
645 : ST 1, 4(5) ;  Store function result
646 : LD 6, 0(5) ;  Load return address
647 : LDA 7, 0(6) ;  Return to caller
