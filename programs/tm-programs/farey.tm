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
16 : LD 1, 1(5) ;  Load parameter 'xNum'
17 : LDA 4, 5(5) ;  [JIT] callee frame base
18 : ST 1, 1(4) ;  Store arg 0 in callee frame
19 : LD 1, 2(5) ;  Load parameter 'xDen'
20 : LDA 4, 5(5) ;  [JIT] callee frame base
21 : ST 1, 2(4) ;  Store arg 1 in callee frame
22 : LD 1, 3(5) ;  Load parameter 'N'
23 : LDA 4, 5(5) ;  [JIT] callee frame base
24 : ST 1, 3(4) ;  Store arg 2 in callee frame
25 : LDA 4, 5(5) ;  [JIT] callee frame base
26 : LDA 6, 30(0) ;  Return address
27 : ST 6, 0(4) ;  Store RA in callee frame
28 : ADD 5, 4, 0 ;  Push callee frame
29 : LDA 7, 611(0) ;  Call fareyNum
30 : LD 1, 4(5) ;  Load callee result
31 : LDC 2, 5(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop callee frame
33 : LDA 4, 3(5) ;  [JIT] callee frame base
34 : LDA 6, 38(0) ;  Return address
35 : ST 6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Push callee frame
37 : LDA 7, 13(0) ;  Call print
38 : LDC 2, 3(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : LD 1, 1(5) ;  Load parameter 'xNum'
41 : LDA 4, 5(5) ;  [JIT] callee frame base
42 : ST 1, 1(4) ;  Store arg 0 in callee frame
43 : LD 1, 2(5) ;  Load parameter 'xDen'
44 : LDA 4, 5(5) ;  [JIT] callee frame base
45 : ST 1, 2(4) ;  Store arg 1 in callee frame
46 : LD 1, 3(5) ;  Load parameter 'N'
47 : LDA 4, 5(5) ;  [JIT] callee frame base
48 : ST 1, 3(4) ;  Store arg 2 in callee frame
49 : LDA 4, 5(5) ;  [JIT] callee frame base
50 : LDA 6, 54(0) ;  Return address
51 : ST 6, 0(4) ;  Store RA in callee frame
52 : ADD 5, 4, 0 ;  Push callee frame
53 : LDA 7, 461(0) ;  Call fareyDen
54 : LD 1, 4(5) ;  Load callee result
55 : LDC 2, 5(0) ;  Caller frame size
56 : SUB 5, 5, 2 ;  Pop callee frame
57 : ST 1, 4(5) ;  Store result into caller frame
58 : LD 1, 4(5) ;  Load main return value
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return from main
61 : LD 1, 2(5) ;  Load parameter 'y'
62 : ADD 3, 1, 0 ;  Stash right in R3
63 : LD 1, 1(5) ;  Load parameter 'x'
64 : ADD 2, 1, 0 ;  Move left to R2
65 : ADD 1, 3, 0 ;  Restore right to R1
66 : SUB 1, 2, 1 ;  left - right
67 : JLT 1, 2(7) ;  if < 0 then true
68 : LDC 1, 0(0) ;  false
69 : LDA 7, 1(7) ;  skip setting true
70 : LDC 1, 1(0) ;  true
71 : ADD 2, 1, 0 ;  Move left to R2
72 : LD 1, 2(5) ;  Load parameter 'y'
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(5) ;  Load parameter 'x'
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  left - right
78 : JEQ 1, 2(7) ;  if 0 then true
79 : LDC 1, 0(0) ;  false
80 : LDA 7, 1(7) ;  skip setting true
81 : LDC 1, 1(0) ;  true
82 : ADD 1, 2, 1 ;  R1 = left OR right
83 : LDC 2, 1(0) ;  Load 1 into R2
84 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
85 : ST 1, 3(5) ;  Store function result
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
88 : LD 1, 4(5) ;  Load parameter 'yd'
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(5) ;  Load parameter 'x'
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : MUL 1, 2, 1 ;  R1 = left * right
94 : LDA 4, 4(5) ;  [JIT] callee frame base
95 : ST 1, 1(4) ;  Store arg 0 in callee frame
96 : LD 1, 2(5) ;  Load parameter 'xd'
97 : ADD 3, 1, 0 ;  Stash right in R3
98 : LD 1, 3(5) ;  Load parameter 'y'
99 : ADD 2, 1, 0 ;  Move left to R2
100 : ADD 1, 3, 0 ;  Restore right to R1
101 : MUL 1, 2, 1 ;  R1 = left * right
102 : LDA 4, 4(5) ;  [JIT] callee frame base
103 : ST 1, 2(4) ;  Store arg 1 in callee frame
104 : LDA 4, 4(5) ;  [JIT] callee frame base
105 : LDA 6, 109(0) ;  Return address
106 : ST 6, 0(4) ;  Store RA in callee frame
107 : ADD 5, 4, 0 ;  Push callee frame
108 : LDA 7, 61(0) ;  Call greater
109 : LD 1, 3(5) ;  Load callee result
110 : LDC 2, 4(0) ;  Caller frame size
111 : SUB 5, 5, 2 ;  Pop callee frame
112 : ST 1, 5(5) ;  Store function result
113 : LD 6, 0(5) ;  Load return address
114 : LDA 7, 0(6) ;  Return to caller
115 : LD 1, 4(5) ;  Load parameter 'yd'
116 : ADD 3, 1, 0 ;  Stash right in R3
117 : LD 1, 1(5) ;  Load parameter 'x'
118 : ADD 2, 1, 0 ;  Move left to R2
119 : ADD 1, 3, 0 ;  Restore right to R1
120 : MUL 1, 2, 1 ;  R1 = left * right
121 : ADD 2, 1, 0 ;  Move left to R2
122 : LD 1, 2(5) ;  Load parameter 'xd'
123 : ADD 3, 1, 0 ;  Stash right in R3
124 : LD 1, 3(5) ;  Load parameter 'y'
125 : ADD 2, 1, 0 ;  Move left to R2
126 : ADD 1, 3, 0 ;  Restore right to R1
127 : MUL 1, 2, 1 ;  R1 = left * right
128 : SUB 1, 2, 1 ;  left - right
129 : JEQ 1, 2(7) ;  if 0 then true
130 : LDC 1, 0(0) ;  false
131 : LDA 7, 1(7) ;  skip setting true
132 : LDC 1, 1(0) ;  true
133 : ST 1, 5(5) ;  Store function result
134 : LD 6, 0(5) ;  Load return address
135 : LDA 7, 0(6) ;  Return to caller
136 : LD 1, 6(5) ;  Load parameter 'b'
137 : LDA 4, 4(5) ;  [JIT] callee frame base
138 : ST 1, 1(4) ;  Store arg 0 in callee frame
139 : LD 1, 4(5) ;  Load parameter 'N'
140 : LDA 4, 4(5) ;  [JIT] callee frame base
141 : ST 1, 2(4) ;  Store arg 1 in callee frame
142 : LDA 4, 4(5) ;  [JIT] callee frame base
143 : LDA 6, 147(0) ;  Return address
144 : ST 6, 0(4) ;  Store RA in callee frame
145 : ADD 5, 4, 0 ;  Push callee frame
146 : LDA 7, 61(0) ;  Call greater
147 : LD 1, 3(5) ;  Load callee result
148 : LDC 2, 4(0) ;  Caller frame size
149 : SUB 5, 5, 2 ;  Pop callee frame
150 : ADD 2, 1, 0 ;  Move left to R2
151 : LD 1, 8(5) ;  Load parameter 'd'
152 : LDA 4, 4(5) ;  [JIT] callee frame base
153 : ST 1, 1(4) ;  Store arg 0 in callee frame
154 : LD 1, 4(5) ;  Load parameter 'N'
155 : LDA 4, 4(5) ;  [JIT] callee frame base
156 : ST 1, 2(4) ;  Store arg 1 in callee frame
157 : LDA 4, 4(5) ;  [JIT] callee frame base
158 : LDA 6, 162(0) ;  Return address
159 : ST 6, 0(4) ;  Store RA in callee frame
160 : ADD 5, 4, 0 ;  Push callee frame
161 : LDA 7, 61(0) ;  Call greater
162 : LD 1, 3(5) ;  Load callee result
163 : LDC 2, 4(0) ;  Caller frame size
164 : SUB 5, 5, 2 ;  Pop callee frame
165 : ADD 1, 2, 1 ;  R1 = left OR right
166 : JEQ 1, 208(0) ;  If false, jump to ELSE
167 : LDC 1, 1(0) ;  Load integer literal into R1
168 : ADD 3, 1, 0 ;  Stash right in R3
169 : LD 1, 1(5) ;  Load parameter 'selector'
170 : ADD 2, 1, 0 ;  Move left to R2
171 : ADD 1, 3, 0 ;  Restore right to R1
172 : SUB 1, 2, 1 ;  left - right
173 : JEQ 1, 2(7) ;  if 0 then true
174 : LDC 1, 0(0) ;  false
175 : LDA 7, 1(7) ;  skip setting true
176 : LDC 1, 1(0) ;  true
177 : JEQ 1, 180(0) ;  If false, jump to ELSE
178 : LD 1, 5(5) ;  Load parameter 'a'
179 : LDA 7, 207(0) ;  Skip ELSE
180 : LDC 1, 2(0) ;  Load integer literal into R1
181 : ADD 3, 1, 0 ;  Stash right in R3
182 : LD 1, 1(5) ;  Load parameter 'selector'
183 : ADD 2, 1, 0 ;  Move left to R2
184 : ADD 1, 3, 0 ;  Restore right to R1
185 : SUB 1, 2, 1 ;  left - right
186 : JEQ 1, 2(7) ;  if 0 then true
187 : LDC 1, 0(0) ;  false
188 : LDA 7, 1(7) ;  skip setting true
189 : LDC 1, 1(0) ;  true
190 : JEQ 1, 193(0) ;  If false, jump to ELSE
191 : LD 1, 6(5) ;  Load parameter 'b'
192 : LDA 7, 207(0) ;  Skip ELSE
193 : LDC 1, 3(0) ;  Load integer literal into R1
194 : ADD 3, 1, 0 ;  Stash right in R3
195 : LD 1, 1(5) ;  Load parameter 'selector'
196 : ADD 2, 1, 0 ;  Move left to R2
197 : ADD 1, 3, 0 ;  Restore right to R1
198 : SUB 1, 2, 1 ;  left - right
199 : JEQ 1, 2(7) ;  if 0 then true
200 : LDC 1, 0(0) ;  false
201 : LDA 7, 1(7) ;  skip setting true
202 : LDC 1, 1(0) ;  true
203 : JEQ 1, 206(0) ;  If false, jump to ELSE
204 : LD 1, 7(5) ;  Load parameter 'c'
205 : LDA 7, 207(0) ;  Skip ELSE
206 : LD 1, 8(5) ;  Load parameter 'd'
207 : LDA 7, 416(0) ;  Skip ELSE
208 : LD 1, 2(5) ;  Load parameter 'xNum'
209 : LDA 4, 6(5) ;  [JIT] callee frame base
210 : ST 1, 1(4) ;  Store arg 0 in callee frame
211 : LD 1, 3(5) ;  Load parameter 'xDen'
212 : LDA 4, 6(5) ;  [JIT] callee frame base
213 : ST 1, 2(4) ;  Store arg 1 in callee frame
214 : LD 1, 7(5) ;  Load parameter 'c'
215 : ADD 3, 1, 0 ;  Stash right in R3
216 : LD 1, 5(5) ;  Load parameter 'a'
217 : ADD 2, 1, 0 ;  Move left to R2
218 : ADD 1, 3, 0 ;  Restore right to R1
219 : ADD 1, 2, 1 ;  R1 = left + right
220 : LDA 4, 6(5) ;  [JIT] callee frame base
221 : ST 1, 3(4) ;  Store arg 2 in callee frame
222 : LD 1, 8(5) ;  Load parameter 'd'
223 : ADD 3, 1, 0 ;  Stash right in R3
224 : LD 1, 6(5) ;  Load parameter 'b'
225 : ADD 2, 1, 0 ;  Move left to R2
226 : ADD 1, 3, 0 ;  Restore right to R1
227 : ADD 1, 2, 1 ;  R1 = left + right
228 : LDA 4, 6(5) ;  [JIT] callee frame base
229 : ST 1, 4(4) ;  Store arg 3 in callee frame
230 : LDA 4, 6(5) ;  [JIT] callee frame base
231 : LDA 6, 235(0) ;  Return address
232 : ST 6, 0(4) ;  Store RA in callee frame
233 : ADD 5, 4, 0 ;  Push callee frame
234 : LDA 7, 115(0) ;  Call fractionEqual
235 : LD 1, 5(5) ;  Load callee result
236 : LDC 2, 6(0) ;  Caller frame size
237 : SUB 5, 5, 2 ;  Pop callee frame
238 : JEQ 1, 300(0) ;  If false, jump to ELSE
239 : LDC 1, 1(0) ;  Load integer literal into R1
240 : ADD 3, 1, 0 ;  Stash right in R3
241 : LD 1, 1(5) ;  Load parameter 'selector'
242 : ADD 2, 1, 0 ;  Move left to R2
243 : ADD 1, 3, 0 ;  Restore right to R1
244 : SUB 1, 2, 1 ;  left - right
245 : JEQ 1, 2(7) ;  if 0 then true
246 : LDC 1, 0(0) ;  false
247 : LDA 7, 1(7) ;  skip setting true
248 : LDC 1, 1(0) ;  true
249 : JEQ 1, 257(0) ;  If false, jump to ELSE
250 : LD 1, 7(5) ;  Load parameter 'c'
251 : ADD 3, 1, 0 ;  Stash right in R3
252 : LD 1, 5(5) ;  Load parameter 'a'
253 : ADD 2, 1, 0 ;  Move left to R2
254 : ADD 1, 3, 0 ;  Restore right to R1
255 : ADD 1, 2, 1 ;  R1 = left + right
256 : LDA 7, 299(0) ;  Skip ELSE
257 : LDC 1, 2(0) ;  Load integer literal into R1
258 : ADD 3, 1, 0 ;  Stash right in R3
259 : LD 1, 1(5) ;  Load parameter 'selector'
260 : ADD 2, 1, 0 ;  Move left to R2
261 : ADD 1, 3, 0 ;  Restore right to R1
262 : SUB 1, 2, 1 ;  left - right
263 : JEQ 1, 2(7) ;  if 0 then true
264 : LDC 1, 0(0) ;  false
265 : LDA 7, 1(7) ;  skip setting true
266 : LDC 1, 1(0) ;  true
267 : JEQ 1, 275(0) ;  If false, jump to ELSE
268 : LD 1, 8(5) ;  Load parameter 'd'
269 : ADD 3, 1, 0 ;  Stash right in R3
270 : LD 1, 6(5) ;  Load parameter 'b'
271 : ADD 2, 1, 0 ;  Move left to R2
272 : ADD 1, 3, 0 ;  Restore right to R1
273 : ADD 1, 2, 1 ;  R1 = left + right
274 : LDA 7, 299(0) ;  Skip ELSE
275 : LDC 1, 3(0) ;  Load integer literal into R1
276 : ADD 3, 1, 0 ;  Stash right in R3
277 : LD 1, 1(5) ;  Load parameter 'selector'
278 : ADD 2, 1, 0 ;  Move left to R2
279 : ADD 1, 3, 0 ;  Restore right to R1
280 : SUB 1, 2, 1 ;  left - right
281 : JEQ 1, 2(7) ;  if 0 then true
282 : LDC 1, 0(0) ;  false
283 : LDA 7, 1(7) ;  skip setting true
284 : LDC 1, 1(0) ;  true
285 : JEQ 1, 293(0) ;  If false, jump to ELSE
286 : LD 1, 7(5) ;  Load parameter 'c'
287 : ADD 3, 1, 0 ;  Stash right in R3
288 : LD 1, 5(5) ;  Load parameter 'a'
289 : ADD 2, 1, 0 ;  Move left to R2
290 : ADD 1, 3, 0 ;  Restore right to R1
291 : ADD 1, 2, 1 ;  R1 = left + right
292 : LDA 7, 299(0) ;  Skip ELSE
293 : LD 1, 8(5) ;  Load parameter 'd'
294 : ADD 3, 1, 0 ;  Stash right in R3
295 : LD 1, 6(5) ;  Load parameter 'b'
296 : ADD 2, 1, 0 ;  Move left to R2
297 : ADD 1, 3, 0 ;  Restore right to R1
298 : ADD 1, 2, 1 ;  R1 = left + right
299 : LDA 7, 416(0) ;  Skip ELSE
300 : LD 1, 2(5) ;  Load parameter 'xNum'
301 : LDA 4, 6(5) ;  [JIT] callee frame base
302 : ST 1, 1(4) ;  Store arg 0 in callee frame
303 : LD 1, 3(5) ;  Load parameter 'xDen'
304 : LDA 4, 6(5) ;  [JIT] callee frame base
305 : ST 1, 2(4) ;  Store arg 1 in callee frame
306 : LD 1, 7(5) ;  Load parameter 'c'
307 : ADD 3, 1, 0 ;  Stash right in R3
308 : LD 1, 5(5) ;  Load parameter 'a'
309 : ADD 2, 1, 0 ;  Move left to R2
310 : ADD 1, 3, 0 ;  Restore right to R1
311 : ADD 1, 2, 1 ;  R1 = left + right
312 : LDA 4, 6(5) ;  [JIT] callee frame base
313 : ST 1, 3(4) ;  Store arg 2 in callee frame
314 : LD 1, 8(5) ;  Load parameter 'd'
315 : ADD 3, 1, 0 ;  Stash right in R3
316 : LD 1, 6(5) ;  Load parameter 'b'
317 : ADD 2, 1, 0 ;  Move left to R2
318 : ADD 1, 3, 0 ;  Restore right to R1
319 : ADD 1, 2, 1 ;  R1 = left + right
320 : LDA 4, 6(5) ;  [JIT] callee frame base
321 : ST 1, 4(4) ;  Store arg 3 in callee frame
322 : LDA 4, 6(5) ;  [JIT] callee frame base
323 : LDA 6, 327(0) ;  Return address
324 : ST 6, 0(4) ;  Store RA in callee frame
325 : ADD 5, 4, 0 ;  Push callee frame
326 : LDA 7, 88(0) ;  Call fractionGreater
327 : LD 1, 5(5) ;  Load callee result
328 : LDC 2, 6(0) ;  Caller frame size
329 : SUB 5, 5, 2 ;  Pop callee frame
330 : JEQ 1, 374(0) ;  If false, jump to ELSE
331 : LD 1, 1(5) ;  Load parameter 'selector'
332 : LDA 4, 10(5) ;  [JIT] callee frame base
333 : ST 1, 1(4) ;  Store arg 0 in callee frame
334 : LD 1, 2(5) ;  Load parameter 'xNum'
335 : LDA 4, 10(5) ;  [JIT] callee frame base
336 : ST 1, 2(4) ;  Store arg 1 in callee frame
337 : LD 1, 3(5) ;  Load parameter 'xDen'
338 : LDA 4, 10(5) ;  [JIT] callee frame base
339 : ST 1, 3(4) ;  Store arg 2 in callee frame
340 : LD 1, 4(5) ;  Load parameter 'N'
341 : LDA 4, 10(5) ;  [JIT] callee frame base
342 : ST 1, 4(4) ;  Store arg 3 in callee frame
343 : LD 1, 7(5) ;  Load parameter 'c'
344 : ADD 3, 1, 0 ;  Stash right in R3
345 : LD 1, 5(5) ;  Load parameter 'a'
346 : ADD 2, 1, 0 ;  Move left to R2
347 : ADD 1, 3, 0 ;  Restore right to R1
348 : ADD 1, 2, 1 ;  R1 = left + right
349 : LDA 4, 10(5) ;  [JIT] callee frame base
350 : ST 1, 5(4) ;  Store arg 4 in callee frame
351 : LD 1, 8(5) ;  Load parameter 'd'
352 : ADD 3, 1, 0 ;  Stash right in R3
353 : LD 1, 6(5) ;  Load parameter 'b'
354 : ADD 2, 1, 0 ;  Move left to R2
355 : ADD 1, 3, 0 ;  Restore right to R1
356 : ADD 1, 2, 1 ;  R1 = left + right
357 : LDA 4, 10(5) ;  [JIT] callee frame base
358 : ST 1, 6(4) ;  Store arg 5 in callee frame
359 : LD 1, 7(5) ;  Load parameter 'c'
360 : LDA 4, 10(5) ;  [JIT] callee frame base
361 : ST 1, 7(4) ;  Store arg 6 in callee frame
362 : LD 1, 8(5) ;  Load parameter 'd'
363 : LDA 4, 10(5) ;  [JIT] callee frame base
364 : ST 1, 8(4) ;  Store arg 7 in callee frame
365 : LDA 4, 10(5) ;  [JIT] callee frame base
366 : LDA 6, 370(0) ;  Return address
367 : ST 6, 0(4) ;  Store RA in callee frame
368 : ADD 5, 4, 0 ;  Push callee frame
369 : LDA 7, 136(0) ;  Call whileLoopFor
370 : LD 1, 9(5) ;  Load callee result
371 : LDC 2, 10(0) ;  Caller frame size
372 : SUB 5, 5, 2 ;  Pop callee frame
373 : LDA 7, 416(0) ;  Skip ELSE
374 : LD 1, 1(5) ;  Load parameter 'selector'
375 : LDA 4, 10(5) ;  [JIT] callee frame base
376 : ST 1, 1(4) ;  Store arg 0 in callee frame
377 : LD 1, 2(5) ;  Load parameter 'xNum'
378 : LDA 4, 10(5) ;  [JIT] callee frame base
379 : ST 1, 2(4) ;  Store arg 1 in callee frame
380 : LD 1, 3(5) ;  Load parameter 'xDen'
381 : LDA 4, 10(5) ;  [JIT] callee frame base
382 : ST 1, 3(4) ;  Store arg 2 in callee frame
383 : LD 1, 4(5) ;  Load parameter 'N'
384 : LDA 4, 10(5) ;  [JIT] callee frame base
385 : ST 1, 4(4) ;  Store arg 3 in callee frame
386 : LD 1, 5(5) ;  Load parameter 'a'
387 : LDA 4, 10(5) ;  [JIT] callee frame base
388 : ST 1, 5(4) ;  Store arg 4 in callee frame
389 : LD 1, 6(5) ;  Load parameter 'b'
390 : LDA 4, 10(5) ;  [JIT] callee frame base
391 : ST 1, 6(4) ;  Store arg 5 in callee frame
392 : LD 1, 7(5) ;  Load parameter 'c'
393 : ADD 3, 1, 0 ;  Stash right in R3
394 : LD 1, 5(5) ;  Load parameter 'a'
395 : ADD 2, 1, 0 ;  Move left to R2
396 : ADD 1, 3, 0 ;  Restore right to R1
397 : ADD 1, 2, 1 ;  R1 = left + right
398 : LDA 4, 10(5) ;  [JIT] callee frame base
399 : ST 1, 7(4) ;  Store arg 6 in callee frame
400 : LD 1, 8(5) ;  Load parameter 'd'
401 : ADD 3, 1, 0 ;  Stash right in R3
402 : LD 1, 6(5) ;  Load parameter 'b'
403 : ADD 2, 1, 0 ;  Move left to R2
404 : ADD 1, 3, 0 ;  Restore right to R1
405 : ADD 1, 2, 1 ;  R1 = left + right
406 : LDA 4, 10(5) ;  [JIT] callee frame base
407 : ST 1, 8(4) ;  Store arg 7 in callee frame
408 : LDA 4, 10(5) ;  [JIT] callee frame base
409 : LDA 6, 413(0) ;  Return address
410 : ST 6, 0(4) ;  Store RA in callee frame
411 : ADD 5, 4, 0 ;  Push callee frame
412 : LDA 7, 136(0) ;  Call whileLoopFor
413 : LD 1, 9(5) ;  Load callee result
414 : LDC 2, 10(0) ;  Caller frame size
415 : SUB 5, 5, 2 ;  Pop callee frame
416 : ST 1, 9(5) ;  Store function result
417 : LD 6, 0(5) ;  Load return address
418 : LDA 7, 0(6) ;  Return to caller
419 : LD 1, 3(5) ;  Load parameter 'b'
420 : LDA 4, 4(5) ;  [JIT] callee frame base
421 : ST 1, 1(4) ;  Store arg 0 in callee frame
422 : LD 1, 1(5) ;  Load parameter 'N'
423 : LDA 4, 4(5) ;  [JIT] callee frame base
424 : ST 1, 2(4) ;  Store arg 1 in callee frame
425 : LDA 4, 4(5) ;  [JIT] callee frame base
426 : LDA 6, 430(0) ;  Return address
427 : ST 6, 0(4) ;  Store RA in callee frame
428 : ADD 5, 4, 0 ;  Push callee frame
429 : LDA 7, 61(0) ;  Call greater
430 : LD 1, 3(5) ;  Load callee result
431 : LDC 2, 4(0) ;  Caller frame size
432 : SUB 5, 5, 2 ;  Pop callee frame
433 : JEQ 1, 436(0) ;  If false, jump to ELSE
434 : LD 1, 5(5) ;  Load parameter 'd'
435 : LDA 7, 437(0) ;  Skip ELSE
436 : LD 1, 3(5) ;  Load parameter 'b'
437 : ST 1, 6(5) ;  Store function result
438 : LD 6, 0(5) ;  Load return address
439 : LDA 7, 0(6) ;  Return to caller
440 : LD 1, 3(5) ;  Load parameter 'b'
441 : LDA 4, 4(5) ;  [JIT] callee frame base
442 : ST 1, 1(4) ;  Store arg 0 in callee frame
443 : LD 1, 1(5) ;  Load parameter 'N'
444 : LDA 4, 4(5) ;  [JIT] callee frame base
445 : ST 1, 2(4) ;  Store arg 1 in callee frame
446 : LDA 4, 4(5) ;  [JIT] callee frame base
447 : LDA 6, 451(0) ;  Return address
448 : ST 6, 0(4) ;  Store RA in callee frame
449 : ADD 5, 4, 0 ;  Push callee frame
450 : LDA 7, 61(0) ;  Call greater
451 : LD 1, 3(5) ;  Load callee result
452 : LDC 2, 4(0) ;  Caller frame size
453 : SUB 5, 5, 2 ;  Pop callee frame
454 : JEQ 1, 457(0) ;  If false, jump to ELSE
455 : LD 1, 4(5) ;  Load parameter 'c'
456 : LDA 7, 458(0) ;  Skip ELSE
457 : LD 1, 2(5) ;  Load parameter 'a'
458 : ST 1, 6(5) ;  Store function result
459 : LD 6, 0(5) ;  Load return address
460 : LDA 7, 0(6) ;  Return to caller
461 : LD 1, 3(5) ;  Load parameter 'N'
462 : LDA 4, 7(5) ;  [JIT] callee frame base
463 : ST 1, 1(4) ;  Store arg 0 in callee frame
464 : LDC 1, 1(0) ;  Load integer literal into R1
465 : LDA 4, 10(5) ;  [JIT] callee frame base
466 : ST 1, 1(4) ;  Store arg 0 in callee frame
467 : LD 1, 1(5) ;  Load parameter 'xNum'
468 : LDA 4, 10(5) ;  [JIT] callee frame base
469 : ST 1, 2(4) ;  Store arg 1 in callee frame
470 : LD 1, 2(5) ;  Load parameter 'xDen'
471 : LDA 4, 10(5) ;  [JIT] callee frame base
472 : ST 1, 3(4) ;  Store arg 2 in callee frame
473 : LD 1, 3(5) ;  Load parameter 'N'
474 : LDA 4, 10(5) ;  [JIT] callee frame base
475 : ST 1, 4(4) ;  Store arg 3 in callee frame
476 : LDC 1, 0(0) ;  Load integer literal into R1
477 : LDA 4, 10(5) ;  [JIT] callee frame base
478 : ST 1, 5(4) ;  Store arg 4 in callee frame
479 : LDC 1, 1(0) ;  Load integer literal into R1
480 : LDA 4, 10(5) ;  [JIT] callee frame base
481 : ST 1, 6(4) ;  Store arg 5 in callee frame
482 : LDC 1, 1(0) ;  Load integer literal into R1
483 : LDA 4, 10(5) ;  [JIT] callee frame base
484 : ST 1, 7(4) ;  Store arg 6 in callee frame
485 : LDC 1, 1(0) ;  Load integer literal into R1
486 : LDA 4, 10(5) ;  [JIT] callee frame base
487 : ST 1, 8(4) ;  Store arg 7 in callee frame
488 : LDA 4, 10(5) ;  [JIT] callee frame base
489 : LDA 6, 493(0) ;  Return address
490 : ST 6, 0(4) ;  Store RA in callee frame
491 : ADD 5, 4, 0 ;  Push callee frame
492 : LDA 7, 136(0) ;  Call whileLoopFor
493 : LD 1, 9(5) ;  Load callee result
494 : LDC 2, 10(0) ;  Caller frame size
495 : SUB 5, 5, 2 ;  Pop callee frame
496 : LDA 4, 7(5) ;  [JIT] callee frame base
497 : ST 1, 2(4) ;  Store arg 1 in callee frame
498 : LDC 1, 2(0) ;  Load integer literal into R1
499 : LDA 4, 10(5) ;  [JIT] callee frame base
500 : ST 1, 1(4) ;  Store arg 0 in callee frame
501 : LD 1, 1(5) ;  Load parameter 'xNum'
502 : LDA 4, 10(5) ;  [JIT] callee frame base
503 : ST 1, 2(4) ;  Store arg 1 in callee frame
504 : LD 1, 2(5) ;  Load parameter 'xDen'
505 : LDA 4, 10(5) ;  [JIT] callee frame base
506 : ST 1, 3(4) ;  Store arg 2 in callee frame
507 : LD 1, 3(5) ;  Load parameter 'N'
508 : LDA 4, 10(5) ;  [JIT] callee frame base
509 : ST 1, 4(4) ;  Store arg 3 in callee frame
510 : LDC 1, 0(0) ;  Load integer literal into R1
511 : LDA 4, 10(5) ;  [JIT] callee frame base
512 : ST 1, 5(4) ;  Store arg 4 in callee frame
513 : LDC 1, 1(0) ;  Load integer literal into R1
514 : LDA 4, 10(5) ;  [JIT] callee frame base
515 : ST 1, 6(4) ;  Store arg 5 in callee frame
516 : LDC 1, 1(0) ;  Load integer literal into R1
517 : LDA 4, 10(5) ;  [JIT] callee frame base
518 : ST 1, 7(4) ;  Store arg 6 in callee frame
519 : LDC 1, 1(0) ;  Load integer literal into R1
520 : LDA 4, 10(5) ;  [JIT] callee frame base
521 : ST 1, 8(4) ;  Store arg 7 in callee frame
522 : LDA 4, 10(5) ;  [JIT] callee frame base
523 : LDA 6, 527(0) ;  Return address
524 : ST 6, 0(4) ;  Store RA in callee frame
525 : ADD 5, 4, 0 ;  Push callee frame
526 : LDA 7, 136(0) ;  Call whileLoopFor
527 : LD 1, 9(5) ;  Load callee result
528 : LDC 2, 10(0) ;  Caller frame size
529 : SUB 5, 5, 2 ;  Pop callee frame
530 : LDA 4, 7(5) ;  [JIT] callee frame base
531 : ST 1, 3(4) ;  Store arg 2 in callee frame
532 : LDC 1, 3(0) ;  Load integer literal into R1
533 : LDA 4, 10(5) ;  [JIT] callee frame base
534 : ST 1, 1(4) ;  Store arg 0 in callee frame
535 : LD 1, 1(5) ;  Load parameter 'xNum'
536 : LDA 4, 10(5) ;  [JIT] callee frame base
537 : ST 1, 2(4) ;  Store arg 1 in callee frame
538 : LD 1, 2(5) ;  Load parameter 'xDen'
539 : LDA 4, 10(5) ;  [JIT] callee frame base
540 : ST 1, 3(4) ;  Store arg 2 in callee frame
541 : LD 1, 3(5) ;  Load parameter 'N'
542 : LDA 4, 10(5) ;  [JIT] callee frame base
543 : ST 1, 4(4) ;  Store arg 3 in callee frame
544 : LDC 1, 0(0) ;  Load integer literal into R1
545 : LDA 4, 10(5) ;  [JIT] callee frame base
546 : ST 1, 5(4) ;  Store arg 4 in callee frame
547 : LDC 1, 1(0) ;  Load integer literal into R1
548 : LDA 4, 10(5) ;  [JIT] callee frame base
549 : ST 1, 6(4) ;  Store arg 5 in callee frame
550 : LDC 1, 1(0) ;  Load integer literal into R1
551 : LDA 4, 10(5) ;  [JIT] callee frame base
552 : ST 1, 7(4) ;  Store arg 6 in callee frame
553 : LDC 1, 1(0) ;  Load integer literal into R1
554 : LDA 4, 10(5) ;  [JIT] callee frame base
555 : ST 1, 8(4) ;  Store arg 7 in callee frame
556 : LDA 4, 10(5) ;  [JIT] callee frame base
557 : LDA 6, 561(0) ;  Return address
558 : ST 6, 0(4) ;  Store RA in callee frame
559 : ADD 5, 4, 0 ;  Push callee frame
560 : LDA 7, 136(0) ;  Call whileLoopFor
561 : LD 1, 9(5) ;  Load callee result
562 : LDC 2, 10(0) ;  Caller frame size
563 : SUB 5, 5, 2 ;  Pop callee frame
564 : LDA 4, 7(5) ;  [JIT] callee frame base
565 : ST 1, 4(4) ;  Store arg 3 in callee frame
566 : LDC 1, 4(0) ;  Load integer literal into R1
567 : LDA 4, 10(5) ;  [JIT] callee frame base
568 : ST 1, 1(4) ;  Store arg 0 in callee frame
569 : LD 1, 1(5) ;  Load parameter 'xNum'
570 : LDA 4, 10(5) ;  [JIT] callee frame base
571 : ST 1, 2(4) ;  Store arg 1 in callee frame
572 : LD 1, 2(5) ;  Load parameter 'xDen'
573 : LDA 4, 10(5) ;  [JIT] callee frame base
574 : ST 1, 3(4) ;  Store arg 2 in callee frame
575 : LD 1, 3(5) ;  Load parameter 'N'
576 : LDA 4, 10(5) ;  [JIT] callee frame base
577 : ST 1, 4(4) ;  Store arg 3 in callee frame
578 : LDC 1, 0(0) ;  Load integer literal into R1
579 : LDA 4, 10(5) ;  [JIT] callee frame base
580 : ST 1, 5(4) ;  Store arg 4 in callee frame
581 : LDC 1, 1(0) ;  Load integer literal into R1
582 : LDA 4, 10(5) ;  [JIT] callee frame base
583 : ST 1, 6(4) ;  Store arg 5 in callee frame
584 : LDC 1, 1(0) ;  Load integer literal into R1
585 : LDA 4, 10(5) ;  [JIT] callee frame base
586 : ST 1, 7(4) ;  Store arg 6 in callee frame
587 : LDC 1, 1(0) ;  Load integer literal into R1
588 : LDA 4, 10(5) ;  [JIT] callee frame base
589 : ST 1, 8(4) ;  Store arg 7 in callee frame
590 : LDA 4, 10(5) ;  [JIT] callee frame base
591 : LDA 6, 595(0) ;  Return address
592 : ST 6, 0(4) ;  Store RA in callee frame
593 : ADD 5, 4, 0 ;  Push callee frame
594 : LDA 7, 136(0) ;  Call whileLoopFor
595 : LD 1, 9(5) ;  Load callee result
596 : LDC 2, 10(0) ;  Caller frame size
597 : SUB 5, 5, 2 ;  Pop callee frame
598 : LDA 4, 7(5) ;  [JIT] callee frame base
599 : ST 1, 5(4) ;  Store arg 4 in callee frame
600 : LDA 4, 7(5) ;  [JIT] callee frame base
601 : LDA 6, 605(0) ;  Return address
602 : ST 6, 0(4) ;  Store RA in callee frame
603 : ADD 5, 4, 0 ;  Push callee frame
604 : LDA 7, 419(0) ;  Call fareySelectDen
605 : LD 1, 6(5) ;  Load callee result
606 : LDC 2, 7(0) ;  Caller frame size
607 : SUB 5, 5, 2 ;  Pop callee frame
608 : ST 1, 4(5) ;  Store function result
609 : LD 6, 0(5) ;  Load return address
610 : LDA 7, 0(6) ;  Return to caller
611 : LD 1, 3(5) ;  Load parameter 'N'
612 : LDA 4, 7(5) ;  [JIT] callee frame base
613 : ST 1, 1(4) ;  Store arg 0 in callee frame
614 : LDC 1, 1(0) ;  Load integer literal into R1
615 : LDA 4, 10(5) ;  [JIT] callee frame base
616 : ST 1, 1(4) ;  Store arg 0 in callee frame
617 : LD 1, 1(5) ;  Load parameter 'xNum'
618 : LDA 4, 10(5) ;  [JIT] callee frame base
619 : ST 1, 2(4) ;  Store arg 1 in callee frame
620 : LD 1, 2(5) ;  Load parameter 'xDen'
621 : LDA 4, 10(5) ;  [JIT] callee frame base
622 : ST 1, 3(4) ;  Store arg 2 in callee frame
623 : LD 1, 3(5) ;  Load parameter 'N'
624 : LDA 4, 10(5) ;  [JIT] callee frame base
625 : ST 1, 4(4) ;  Store arg 3 in callee frame
626 : LDC 1, 0(0) ;  Load integer literal into R1
627 : LDA 4, 10(5) ;  [JIT] callee frame base
628 : ST 1, 5(4) ;  Store arg 4 in callee frame
629 : LDC 1, 1(0) ;  Load integer literal into R1
630 : LDA 4, 10(5) ;  [JIT] callee frame base
631 : ST 1, 6(4) ;  Store arg 5 in callee frame
632 : LDC 1, 1(0) ;  Load integer literal into R1
633 : LDA 4, 10(5) ;  [JIT] callee frame base
634 : ST 1, 7(4) ;  Store arg 6 in callee frame
635 : LDC 1, 1(0) ;  Load integer literal into R1
636 : LDA 4, 10(5) ;  [JIT] callee frame base
637 : ST 1, 8(4) ;  Store arg 7 in callee frame
638 : LDA 4, 10(5) ;  [JIT] callee frame base
639 : LDA 6, 643(0) ;  Return address
640 : ST 6, 0(4) ;  Store RA in callee frame
641 : ADD 5, 4, 0 ;  Push callee frame
642 : LDA 7, 136(0) ;  Call whileLoopFor
643 : LD 1, 9(5) ;  Load callee result
644 : LDC 2, 10(0) ;  Caller frame size
645 : SUB 5, 5, 2 ;  Pop callee frame
646 : LDA 4, 7(5) ;  [JIT] callee frame base
647 : ST 1, 2(4) ;  Store arg 1 in callee frame
648 : LDC 1, 2(0) ;  Load integer literal into R1
649 : LDA 4, 10(5) ;  [JIT] callee frame base
650 : ST 1, 1(4) ;  Store arg 0 in callee frame
651 : LD 1, 1(5) ;  Load parameter 'xNum'
652 : LDA 4, 10(5) ;  [JIT] callee frame base
653 : ST 1, 2(4) ;  Store arg 1 in callee frame
654 : LD 1, 2(5) ;  Load parameter 'xDen'
655 : LDA 4, 10(5) ;  [JIT] callee frame base
656 : ST 1, 3(4) ;  Store arg 2 in callee frame
657 : LD 1, 3(5) ;  Load parameter 'N'
658 : LDA 4, 10(5) ;  [JIT] callee frame base
659 : ST 1, 4(4) ;  Store arg 3 in callee frame
660 : LDC 1, 0(0) ;  Load integer literal into R1
661 : LDA 4, 10(5) ;  [JIT] callee frame base
662 : ST 1, 5(4) ;  Store arg 4 in callee frame
663 : LDC 1, 1(0) ;  Load integer literal into R1
664 : LDA 4, 10(5) ;  [JIT] callee frame base
665 : ST 1, 6(4) ;  Store arg 5 in callee frame
666 : LDC 1, 1(0) ;  Load integer literal into R1
667 : LDA 4, 10(5) ;  [JIT] callee frame base
668 : ST 1, 7(4) ;  Store arg 6 in callee frame
669 : LDC 1, 1(0) ;  Load integer literal into R1
670 : LDA 4, 10(5) ;  [JIT] callee frame base
671 : ST 1, 8(4) ;  Store arg 7 in callee frame
672 : LDA 4, 10(5) ;  [JIT] callee frame base
673 : LDA 6, 677(0) ;  Return address
674 : ST 6, 0(4) ;  Store RA in callee frame
675 : ADD 5, 4, 0 ;  Push callee frame
676 : LDA 7, 136(0) ;  Call whileLoopFor
677 : LD 1, 9(5) ;  Load callee result
678 : LDC 2, 10(0) ;  Caller frame size
679 : SUB 5, 5, 2 ;  Pop callee frame
680 : LDA 4, 7(5) ;  [JIT] callee frame base
681 : ST 1, 3(4) ;  Store arg 2 in callee frame
682 : LDC 1, 3(0) ;  Load integer literal into R1
683 : LDA 4, 10(5) ;  [JIT] callee frame base
684 : ST 1, 1(4) ;  Store arg 0 in callee frame
685 : LD 1, 1(5) ;  Load parameter 'xNum'
686 : LDA 4, 10(5) ;  [JIT] callee frame base
687 : ST 1, 2(4) ;  Store arg 1 in callee frame
688 : LD 1, 2(5) ;  Load parameter 'xDen'
689 : LDA 4, 10(5) ;  [JIT] callee frame base
690 : ST 1, 3(4) ;  Store arg 2 in callee frame
691 : LD 1, 3(5) ;  Load parameter 'N'
692 : LDA 4, 10(5) ;  [JIT] callee frame base
693 : ST 1, 4(4) ;  Store arg 3 in callee frame
694 : LDC 1, 0(0) ;  Load integer literal into R1
695 : LDA 4, 10(5) ;  [JIT] callee frame base
696 : ST 1, 5(4) ;  Store arg 4 in callee frame
697 : LDC 1, 1(0) ;  Load integer literal into R1
698 : LDA 4, 10(5) ;  [JIT] callee frame base
699 : ST 1, 6(4) ;  Store arg 5 in callee frame
700 : LDC 1, 1(0) ;  Load integer literal into R1
701 : LDA 4, 10(5) ;  [JIT] callee frame base
702 : ST 1, 7(4) ;  Store arg 6 in callee frame
703 : LDC 1, 1(0) ;  Load integer literal into R1
704 : LDA 4, 10(5) ;  [JIT] callee frame base
705 : ST 1, 8(4) ;  Store arg 7 in callee frame
706 : LDA 4, 10(5) ;  [JIT] callee frame base
707 : LDA 6, 711(0) ;  Return address
708 : ST 6, 0(4) ;  Store RA in callee frame
709 : ADD 5, 4, 0 ;  Push callee frame
710 : LDA 7, 136(0) ;  Call whileLoopFor
711 : LD 1, 9(5) ;  Load callee result
712 : LDC 2, 10(0) ;  Caller frame size
713 : SUB 5, 5, 2 ;  Pop callee frame
714 : LDA 4, 7(5) ;  [JIT] callee frame base
715 : ST 1, 4(4) ;  Store arg 3 in callee frame
716 : LDC 1, 4(0) ;  Load integer literal into R1
717 : LDA 4, 10(5) ;  [JIT] callee frame base
718 : ST 1, 1(4) ;  Store arg 0 in callee frame
719 : LD 1, 1(5) ;  Load parameter 'xNum'
720 : LDA 4, 10(5) ;  [JIT] callee frame base
721 : ST 1, 2(4) ;  Store arg 1 in callee frame
722 : LD 1, 2(5) ;  Load parameter 'xDen'
723 : LDA 4, 10(5) ;  [JIT] callee frame base
724 : ST 1, 3(4) ;  Store arg 2 in callee frame
725 : LD 1, 3(5) ;  Load parameter 'N'
726 : LDA 4, 10(5) ;  [JIT] callee frame base
727 : ST 1, 4(4) ;  Store arg 3 in callee frame
728 : LDC 1, 0(0) ;  Load integer literal into R1
729 : LDA 4, 10(5) ;  [JIT] callee frame base
730 : ST 1, 5(4) ;  Store arg 4 in callee frame
731 : LDC 1, 1(0) ;  Load integer literal into R1
732 : LDA 4, 10(5) ;  [JIT] callee frame base
733 : ST 1, 6(4) ;  Store arg 5 in callee frame
734 : LDC 1, 1(0) ;  Load integer literal into R1
735 : LDA 4, 10(5) ;  [JIT] callee frame base
736 : ST 1, 7(4) ;  Store arg 6 in callee frame
737 : LDC 1, 1(0) ;  Load integer literal into R1
738 : LDA 4, 10(5) ;  [JIT] callee frame base
739 : ST 1, 8(4) ;  Store arg 7 in callee frame
740 : LDA 4, 10(5) ;  [JIT] callee frame base
741 : LDA 6, 745(0) ;  Return address
742 : ST 6, 0(4) ;  Store RA in callee frame
743 : ADD 5, 4, 0 ;  Push callee frame
744 : LDA 7, 136(0) ;  Call whileLoopFor
745 : LD 1, 9(5) ;  Load callee result
746 : LDC 2, 10(0) ;  Caller frame size
747 : SUB 5, 5, 2 ;  Pop callee frame
748 : LDA 4, 7(5) ;  [JIT] callee frame base
749 : ST 1, 5(4) ;  Store arg 4 in callee frame
750 : LDA 4, 7(5) ;  [JIT] callee frame base
751 : LDA 6, 755(0) ;  Return address
752 : ST 6, 0(4) ;  Store RA in callee frame
753 : ADD 5, 4, 0 ;  Push callee frame
754 : LDA 7, 440(0) ;  Call fareySelectNum
755 : LD 1, 6(5) ;  Load callee result
756 : LDC 2, 7(0) ;  Caller frame size
757 : SUB 5, 5, 2 ;  Pop callee frame
758 : ST 1, 4(5) ;  Store function result
759 : LD 6, 0(5) ;  Load return address
760 : LDA 7, 0(6) ;  Return to caller
