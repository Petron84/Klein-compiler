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
12 : LDA 4, 3(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LDA 4, 3(5) ;  Compute callee frame base
15 : ADD 5, 4, 0 ;  Push callee frame
16 : LD 1, 1(5) ;  Load parameter 'testArgument'
17 : ST 1, 1(5) ;  Store argument 0 in callee frame
18 : LDA 6, 21(0) ;  Return address
19 : ST 6, 0(5) ;  Store RA in callee frame
20 : LDA 7, 192(0) ;  Call SQRT
21 : LD 1, 2(5) ;  Load callee result
22 : LDC 2, 3(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : ST 1, 1(5) ;  Store print arg in callee frame
25 : LDA 6, 28(0) ;  Return address
26 : ST 6, 0(5) ;  Store RA in callee frame
27 : LDA 7, 9(0) ;  Call print
28 : LDC 2, 3(0) ;  Caller frame size
29 : SUB 5, 5, 2 ;  Pop callee frame
30 : LDA 4, 3(5) ;  Compute callee frame base
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LD 1, 1(5) ;  Load parameter 'testArgument'
33 : ST 1, 1(5) ;  Store argument 0 in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 209(0) ;  Call ODD
37 : LD 1, 2(5) ;  Load callee result
38 : LDC 2, 3(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : ST 1, 2(5) ;  Store result into caller frame
41 : LD 1, 2(5) ;  Load main return value
42 : LD 6, 0(5) ;  Load return address
43 : LDA 7, 0(6) ;  Return from main
44 : LDA 4, 4(5) ;  Compute callee frame base
45 : ADD 5, 4, 0 ;  Push callee frame
46 : LD 1, 4(5) ;  Load parameter 'mid'
47 : ADD 3, 1, 0 ;  Stash right in R3
48 : LD 1, 4(5) ;  Load parameter 'mid'
49 : ADD 2, 1, 0 ;  Move left to R2
50 : ADD 1, 3, 0 ;  Restore right to R1
51 : MUL 1, 2, 1 ;  R1 = left * right
52 : ST 1, 1(5) ;  Store argument 0 in callee frame
53 : LD 1, 1(5) ;  Load parameter 'n'
54 : ST 1, 2(5) ;  Store argument 1 in callee frame
55 : LDA 6, 58(0) ;  Return address
56 : ST 6, 0(5) ;  Store RA in callee frame
57 : LDA 7, 500(0) ;  Call LE
58 : LD 1, 3(5) ;  Load callee result
59 : LDC 2, 4(0) ;  Caller frame size
60 : SUB 5, 5, 2 ;  Pop callee frame
61 : JEQ 1, 77(0) ;  If false, jump to ELSE
62 : LDA 4, 5(5) ;  Compute callee frame base
63 : ADD 5, 4, 0 ;  Push callee frame
64 : LD 1, 1(5) ;  Load parameter 'n'
65 : ST 1, 1(5) ;  Store argument 0 in callee frame
66 : LD 1, 4(5) ;  Load parameter 'mid'
67 : ST 1, 2(5) ;  Store argument 1 in callee frame
68 : LD 1, 3(5) ;  Load parameter 'high'
69 : ST 1, 3(5) ;  Store argument 2 in callee frame
70 : LDA 6, 73(0) ;  Return address
71 : ST 6, 0(5) ;  Store RA in callee frame
72 : LDA 7, 94(0) ;  Call SQRTSEARCH
73 : LD 1, 4(5) ;  Load callee result
74 : LDC 2, 5(0) ;  Caller frame size
75 : SUB 5, 5, 2 ;  Pop callee frame
76 : LDA 7, 91(0) ;  Skip ELSE
77 : LDA 4, 5(5) ;  Compute callee frame base
78 : ADD 5, 4, 0 ;  Push callee frame
79 : LD 1, 1(5) ;  Load parameter 'n'
80 : ST 1, 1(5) ;  Store argument 0 in callee frame
81 : LD 1, 2(5) ;  Load parameter 'low'
82 : ST 1, 2(5) ;  Store argument 1 in callee frame
83 : LD 1, 4(5) ;  Load parameter 'mid'
84 : ST 1, 3(5) ;  Store argument 2 in callee frame
85 : LDA 6, 88(0) ;  Return address
86 : ST 6, 0(5) ;  Store RA in callee frame
87 : LDA 7, 94(0) ;  Call SQRTSEARCH
88 : LD 1, 4(5) ;  Load callee result
89 : LDC 2, 5(0) ;  Caller frame size
90 : SUB 5, 5, 2 ;  Pop callee frame
91 : ST 1, 5(5) ;  Store function result
92 : LD 6, 0(5) ;  Load return address
93 : LDA 7, 0(6) ;  Return to caller
94 : LDA 4, 4(5) ;  Compute callee frame base
95 : ADD 5, 4, 0 ;  Push callee frame
96 : LD 1, 3(5) ;  Load parameter 'high'
97 : ST 1, 1(5) ;  Store argument 0 in callee frame
98 : LDC 1, 1(0) ;  Load integer literal into R1
99 : ADD 3, 1, 0 ;  Stash right in R3
100 : LD 1, 2(5) ;  Load parameter 'low'
101 : ADD 2, 1, 0 ;  Move left to R2
102 : ADD 1, 3, 0 ;  Restore right to R1
103 : ADD 1, 2, 1 ;  R1 = left + right
104 : ST 1, 2(5) ;  Store argument 1 in callee frame
105 : LDA 6, 108(0) ;  Return address
106 : ST 6, 0(5) ;  Store RA in callee frame
107 : LDA 7, 500(0) ;  Call LE
108 : LD 1, 3(5) ;  Load callee result
109 : LDC 2, 4(0) ;  Caller frame size
110 : SUB 5, 5, 2 ;  Pop callee frame
111 : JEQ 1, 159(0) ;  If false, jump to ELSE
112 : LDA 4, 4(5) ;  Compute callee frame base
113 : ADD 5, 4, 0 ;  Push callee frame
114 : LDA 4, 4(5) ;  Compute callee frame base
115 : ADD 5, 4, 0 ;  Push callee frame
116 : LD 1, 2(5) ;  Load parameter 'low'
117 : ST 1, 1(5) ;  Store argument 0 in callee frame
118 : LD 1, 2(5) ;  Load parameter 'low'
119 : ST 1, 2(5) ;  Store argument 1 in callee frame
120 : LDA 6, 123(0) ;  Return address
121 : ST 6, 0(5) ;  Store RA in callee frame
122 : LDA 7, 422(0) ;  Call TIMES
123 : LD 1, 3(5) ;  Load callee result
124 : LDC 2, 4(0) ;  Caller frame size
125 : SUB 5, 5, 2 ;  Pop callee frame
126 : ADD 3, 1, 0 ;  Stash right in R3
127 : LD 1, 1(5) ;  Load parameter 'n'
128 : ADD 2, 1, 0 ;  Move left to R2
129 : ADD 1, 3, 0 ;  Restore right to R1
130 : SUB 1, 2, 1 ;  R1 = left - right
131 : ST 1, 1(5) ;  Store argument 0 in callee frame
132 : LDA 4, 4(5) ;  Compute callee frame base
133 : ADD 5, 4, 0 ;  Push callee frame
134 : LD 1, 3(5) ;  Load parameter 'high'
135 : ST 1, 1(5) ;  Store argument 0 in callee frame
136 : LD 1, 3(5) ;  Load parameter 'high'
137 : ST 1, 2(5) ;  Store argument 1 in callee frame
138 : LDA 6, 141(0) ;  Return address
139 : ST 6, 0(5) ;  Store RA in callee frame
140 : LDA 7, 422(0) ;  Call TIMES
141 : LD 1, 3(5) ;  Load callee result
142 : LDC 2, 4(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop callee frame
144 : ADD 2, 1, 0 ;  Move left to R2
145 : LD 1, 1(5) ;  Load parameter 'n'
146 : SUB 1, 2, 1 ;  R1 = left - right
147 : ST 1, 2(5) ;  Store argument 1 in callee frame
148 : LDA 6, 151(0) ;  Return address
149 : ST 6, 0(5) ;  Store RA in callee frame
150 : LDA 7, 500(0) ;  Call LE
151 : LD 1, 3(5) ;  Load callee result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop callee frame
154 : JEQ 1, 157(0) ;  If false, jump to ELSE
155 : LD 1, 2(5) ;  Load parameter 'low'
156 : LDA 7, 158(0) ;  Skip ELSE
157 : LD 1, 3(5) ;  Load parameter 'high'
158 : LDA 7, 189(0) ;  Skip ELSE
159 : LDA 4, 6(5) ;  Compute callee frame base
160 : ADD 5, 4, 0 ;  Push callee frame
161 : LD 1, 1(5) ;  Load parameter 'n'
162 : ST 1, 1(5) ;  Store argument 0 in callee frame
163 : LD 1, 2(5) ;  Load parameter 'low'
164 : ST 1, 2(5) ;  Store argument 1 in callee frame
165 : LD 1, 3(5) ;  Load parameter 'high'
166 : ST 1, 3(5) ;  Store argument 2 in callee frame
167 : LDA 4, 4(5) ;  Compute callee frame base
168 : ADD 5, 4, 0 ;  Push callee frame
169 : LD 1, 2(5) ;  Load parameter 'low'
170 : ST 1, 1(5) ;  Store argument 0 in callee frame
171 : LD 1, 3(5) ;  Load parameter 'high'
172 : ST 1, 2(5) ;  Store argument 1 in callee frame
173 : LDA 6, 176(0) ;  Return address
174 : ST 6, 0(5) ;  Store RA in callee frame
175 : LDA 7, 440(0) ;  Call PLUS
176 : LD 1, 3(5) ;  Load callee result
177 : LDC 2, 4(0) ;  Caller frame size
178 : SUB 5, 5, 2 ;  Pop callee frame
179 : ADD 2, 1, 0 ;  Move left to R2
180 : LDC 1, 2(0) ;  Load integer literal into R1
181 : DIV 1, 2, 1 ;  R1 = left / right
182 : ST 1, 4(5) ;  Store argument 3 in callee frame
183 : LDA 6, 186(0) ;  Return address
184 : ST 6, 0(5) ;  Store RA in callee frame
185 : LDA 7, 44(0) ;  Call SQRTSPLIT
186 : LD 1, 5(5) ;  Load callee result
187 : LDC 2, 6(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop callee frame
189 : ST 1, 4(5) ;  Store function result
190 : LD 6, 0(5) ;  Load return address
191 : LDA 7, 0(6) ;  Return to caller
192 : LDA 4, 5(5) ;  Compute callee frame base
193 : ADD 5, 4, 0 ;  Push callee frame
194 : LD 1, 1(5) ;  Load parameter 'n'
195 : ST 1, 1(5) ;  Store argument 0 in callee frame
196 : LDC 1, 0(0) ;  Load integer literal into R1
197 : ST 1, 2(5) ;  Store argument 1 in callee frame
198 : LD 1, 1(5) ;  Load parameter 'n'
199 : ST 1, 3(5) ;  Store argument 2 in callee frame
200 : LDA 6, 203(0) ;  Return address
201 : ST 6, 0(5) ;  Store RA in callee frame
202 : LDA 7, 94(0) ;  Call SQRTSEARCH
203 : LD 1, 4(5) ;  Load callee result
204 : LDC 2, 5(0) ;  Caller frame size
205 : SUB 5, 5, 2 ;  Pop callee frame
206 : ST 1, 2(5) ;  Store function result
207 : LD 6, 0(5) ;  Load return address
208 : LDA 7, 0(6) ;  Return to caller
209 : LDA 4, 4(5) ;  Compute callee frame base
210 : ADD 5, 4, 0 ;  Push callee frame
211 : LDC 1, 0(0) ;  Load integer literal into R1
212 : ST 1, 1(5) ;  Store argument 0 in callee frame
213 : LD 1, 1(5) ;  Load parameter 'n'
214 : ST 1, 2(5) ;  Store argument 1 in callee frame
215 : LDA 6, 218(0) ;  Return address
216 : ST 6, 0(5) ;  Store RA in callee frame
217 : LDA 7, 500(0) ;  Call LE
218 : LD 1, 3(5) ;  Load callee result
219 : LDC 2, 4(0) ;  Caller frame size
220 : SUB 5, 5, 2 ;  Pop callee frame
221 : JEQ 1, 260(0) ;  If false, jump to ELSE
222 : LDA 4, 4(5) ;  Compute callee frame base
223 : ADD 5, 4, 0 ;  Push callee frame
224 : LD 1, 1(5) ;  Load parameter 'n'
225 : ST 1, 1(5) ;  Store argument 0 in callee frame
226 : LDA 4, 4(5) ;  Compute callee frame base
227 : ADD 5, 4, 0 ;  Push callee frame
228 : LD 1, 1(5) ;  Load parameter 'n'
229 : ST 1, 1(5) ;  Store argument 0 in callee frame
230 : LDC 1, 2(0) ;  Load integer literal into R1
231 : ST 1, 2(5) ;  Store argument 1 in callee frame
232 : LDA 6, 235(0) ;  Return address
233 : ST 6, 0(5) ;  Store RA in callee frame
234 : LDA 7, 413(0) ;  Call DIV
235 : LD 1, 3(5) ;  Load callee result
236 : LDC 2, 4(0) ;  Caller frame size
237 : SUB 5, 5, 2 ;  Pop callee frame
238 : ADD 2, 1, 0 ;  Move left to R2
239 : LDA 4, 4(5) ;  Compute callee frame base
240 : ADD 5, 4, 0 ;  Push callee frame
241 : LD 1, 1(5) ;  Load parameter 'n'
242 : ST 1, 1(5) ;  Store argument 0 in callee frame
243 : LDC 1, 2(0) ;  Load integer literal into R1
244 : ST 1, 2(5) ;  Store argument 1 in callee frame
245 : LDA 6, 248(0) ;  Return address
246 : ST 6, 0(5) ;  Store RA in callee frame
247 : LDA 7, 413(0) ;  Call DIV
248 : LD 1, 3(5) ;  Load callee result
249 : LDC 2, 4(0) ;  Caller frame size
250 : SUB 5, 5, 2 ;  Pop callee frame
251 : ADD 1, 2, 1 ;  R1 = left + right
252 : ST 1, 2(5) ;  Store argument 1 in callee frame
253 : LDA 6, 256(0) ;  Return address
254 : ST 6, 0(5) ;  Store RA in callee frame
255 : LDA 7, 466(0) ;  Call GT
256 : LD 1, 3(5) ;  Load callee result
257 : LDC 2, 4(0) ;  Caller frame size
258 : SUB 5, 5, 2 ;  Pop callee frame
259 : LDA 7, 324(0) ;  Skip ELSE
260 : LDA 4, 4(5) ;  Compute callee frame base
261 : ADD 5, 4, 0 ;  Push callee frame
262 : LDA 4, 3(5) ;  Compute callee frame base
263 : ADD 5, 4, 0 ;  Push callee frame
264 : LD 1, 1(5) ;  Load parameter 'n'
265 : ST 1, 1(5) ;  Store argument 0 in callee frame
266 : LDA 6, 269(0) ;  Return address
267 : ST 6, 0(5) ;  Store RA in callee frame
268 : LDA 7, 408(0) ;  Call NEG
269 : LD 1, 2(5) ;  Load callee result
270 : LDC 2, 3(0) ;  Caller frame size
271 : SUB 5, 5, 2 ;  Pop callee frame
272 : ST 1, 1(5) ;  Store argument 0 in callee frame
273 : LDA 4, 4(5) ;  Compute callee frame base
274 : ADD 5, 4, 0 ;  Push callee frame
275 : LDA 4, 3(5) ;  Compute callee frame base
276 : ADD 5, 4, 0 ;  Push callee frame
277 : LD 1, 1(5) ;  Load parameter 'n'
278 : ST 1, 1(5) ;  Store argument 0 in callee frame
279 : LDA 6, 282(0) ;  Return address
280 : ST 6, 0(5) ;  Store RA in callee frame
281 : LDA 7, 408(0) ;  Call NEG
282 : LD 1, 2(5) ;  Load callee result
283 : LDC 2, 3(0) ;  Caller frame size
284 : SUB 5, 5, 2 ;  Pop callee frame
285 : ST 1, 1(5) ;  Store argument 0 in callee frame
286 : LDC 1, 2(0) ;  Load integer literal into R1
287 : ST 1, 2(5) ;  Store argument 1 in callee frame
288 : LDA 6, 291(0) ;  Return address
289 : ST 6, 0(5) ;  Store RA in callee frame
290 : LDA 7, 413(0) ;  Call DIV
291 : LD 1, 3(5) ;  Load callee result
292 : LDC 2, 4(0) ;  Caller frame size
293 : SUB 5, 5, 2 ;  Pop callee frame
294 : ADD 2, 1, 0 ;  Move left to R2
295 : LDA 4, 4(5) ;  Compute callee frame base
296 : ADD 5, 4, 0 ;  Push callee frame
297 : LDA 4, 3(5) ;  Compute callee frame base
298 : ADD 5, 4, 0 ;  Push callee frame
299 : LD 1, 1(5) ;  Load parameter 'n'
300 : ST 1, 1(5) ;  Store argument 0 in callee frame
301 : LDA 6, 304(0) ;  Return address
302 : ST 6, 0(5) ;  Store RA in callee frame
303 : LDA 7, 408(0) ;  Call NEG
304 : LD 1, 2(5) ;  Load callee result
305 : LDC 2, 3(0) ;  Caller frame size
306 : SUB 5, 5, 2 ;  Pop callee frame
307 : ST 1, 1(5) ;  Store argument 0 in callee frame
308 : LDC 1, 2(0) ;  Load integer literal into R1
309 : ST 1, 2(5) ;  Store argument 1 in callee frame
310 : LDA 6, 313(0) ;  Return address
311 : ST 6, 0(5) ;  Store RA in callee frame
312 : LDA 7, 413(0) ;  Call DIV
313 : LD 1, 3(5) ;  Load callee result
314 : LDC 2, 4(0) ;  Caller frame size
315 : SUB 5, 5, 2 ;  Pop callee frame
316 : ADD 1, 2, 1 ;  R1 = left + right
317 : ST 1, 2(5) ;  Store argument 1 in callee frame
318 : LDA 6, 321(0) ;  Return address
319 : ST 6, 0(5) ;  Store RA in callee frame
320 : LDA 7, 466(0) ;  Call GT
321 : LD 1, 3(5) ;  Load callee result
322 : LDC 2, 4(0) ;  Caller frame size
323 : SUB 5, 5, 2 ;  Pop callee frame
324 : ST 1, 2(5) ;  Store function result
325 : LD 6, 0(5) ;  Load return address
326 : LDA 7, 0(6) ;  Return to caller
327 : LDC 1, 0(0) ;  Load integer literal into R1
328 : ADD 3, 1, 0 ;  Stash right in R3
329 : LD 1, 2(5) ;  Load parameter 'n'
330 : ADD 2, 1, 0 ;  Move left to R2
331 : ADD 1, 3, 0 ;  Restore right to R1
332 : SUB 1, 2, 1 ;  left - right
333 : JEQ 1, 2(7) ;  if 0 then true
334 : LDC 1, 0(0) ;  false
335 : LDA 7, 1(7) ;  skip setting true
336 : LDC 1, 1(0) ;  true
337 : JEQ 1, 340(0) ;  If false, jump to ELSE
338 : LDC 1, 1(0) ;  Load integer literal into R1
339 : LDA 7, 362(0) ;  Skip ELSE
340 : LDA 4, 4(5) ;  Compute callee frame base
341 : ADD 5, 4, 0 ;  Push callee frame
342 : LD 1, 1(5) ;  Load parameter 'm'
343 : ST 1, 1(5) ;  Store argument 0 in callee frame
344 : LDC 1, 1(0) ;  Load integer literal into R1
345 : ADD 3, 1, 0 ;  Stash right in R3
346 : LD 1, 2(5) ;  Load parameter 'n'
347 : ADD 2, 1, 0 ;  Move left to R2
348 : ADD 1, 3, 0 ;  Restore right to R1
349 : SUB 1, 2, 1 ;  R1 = left - right
350 : ST 1, 2(5) ;  Store argument 1 in callee frame
351 : LDA 6, 354(0) ;  Return address
352 : ST 6, 0(5) ;  Store RA in callee frame
353 : LDA 7, 327(0) ;  Call EXP
354 : LD 1, 3(5) ;  Load callee result
355 : LDC 2, 4(0) ;  Caller frame size
356 : SUB 5, 5, 2 ;  Pop callee frame
357 : ADD 3, 1, 0 ;  Stash right in R3
358 : LD 1, 1(5) ;  Load parameter 'm'
359 : ADD 2, 1, 0 ;  Move left to R2
360 : ADD 1, 3, 0 ;  Restore right to R1
361 : MUL 1, 2, 1 ;  R1 = left * right
362 : ST 1, 3(5) ;  Store function result
363 : LD 6, 0(5) ;  Load return address
364 : LDA 7, 0(6) ;  Return to caller
365 : LD 1, 2(5) ;  Load parameter 'n'
366 : ADD 3, 1, 0 ;  Stash right in R3
367 : LD 1, 1(5) ;  Load parameter 'm'
368 : ADD 2, 1, 0 ;  Move left to R2
369 : ADD 1, 3, 0 ;  Restore right to R1
370 : DIV 1, 2, 1 ;  R1 = left / right
371 : ADD 2, 1, 0 ;  Move left to R2
372 : LD 1, 2(5) ;  Load parameter 'n'
373 : MUL 1, 2, 1 ;  R1 = left * right
374 : ADD 3, 1, 0 ;  Stash right in R3
375 : LD 1, 1(5) ;  Load parameter 'm'
376 : ADD 2, 1, 0 ;  Move left to R2
377 : ADD 1, 3, 0 ;  Restore right to R1
378 : SUB 1, 2, 1 ;  R1 = left - right
379 : ST 1, 3(5) ;  Store function result
380 : LD 6, 0(5) ;  Load return address
381 : LDA 7, 0(6) ;  Return to caller
382 : LD 1, 1(5) ;  Load parameter 'n'
383 : ADD 3, 1, 0 ;  Stash right in R3
384 : LDC 1, 0(0) ;  Load integer literal into R1
385 : ADD 2, 1, 0 ;  Move left to R2
386 : ADD 1, 3, 0 ;  Restore right to R1
387 : SUB 1, 2, 1 ;  left - right
388 : JLT 1, 2(7) ;  if < 0 then true
389 : LDC 1, 0(0) ;  false
390 : LDA 7, 1(7) ;  skip setting true
391 : LDC 1, 1(0) ;  true
392 : JEQ 1, 395(0) ;  If false, jump to ELSE
393 : LD 1, 1(5) ;  Load parameter 'n'
394 : LDA 7, 405(0) ;  Skip ELSE
395 : LDA 4, 3(5) ;  Compute callee frame base
396 : ADD 5, 4, 0 ;  Push callee frame
397 : LD 1, 1(5) ;  Load parameter 'n'
398 : ST 1, 1(5) ;  Store argument 0 in callee frame
399 : LDA 6, 402(0) ;  Return address
400 : ST 6, 0(5) ;  Store RA in callee frame
401 : LDA 7, 408(0) ;  Call NEG
402 : LD 1, 2(5) ;  Load callee result
403 : LDC 2, 3(0) ;  Caller frame size
404 : SUB 5, 5, 2 ;  Pop callee frame
405 : ST 1, 2(5) ;  Store function result
406 : LD 6, 0(5) ;  Load return address
407 : LDA 7, 0(6) ;  Return to caller
408 : LD 1, 1(5) ;  Load parameter 'n'
409 : SUB 1, 0, 1 ;  Negate R1
410 : ST 1, 2(5) ;  Store function result
411 : LD 6, 0(5) ;  Load return address
412 : LDA 7, 0(6) ;  Return to caller
413 : LD 1, 2(5) ;  Load parameter 'q'
414 : ADD 3, 1, 0 ;  Stash right in R3
415 : LD 1, 1(5) ;  Load parameter 'p'
416 : ADD 2, 1, 0 ;  Move left to R2
417 : ADD 1, 3, 0 ;  Restore right to R1
418 : DIV 1, 2, 1 ;  R1 = left / right
419 : ST 1, 3(5) ;  Store function result
420 : LD 6, 0(5) ;  Load return address
421 : LDA 7, 0(6) ;  Return to caller
422 : LD 1, 2(5) ;  Load parameter 'q'
423 : ADD 3, 1, 0 ;  Stash right in R3
424 : LD 1, 1(5) ;  Load parameter 'p'
425 : ADD 2, 1, 0 ;  Move left to R2
426 : ADD 1, 3, 0 ;  Restore right to R1
427 : MUL 1, 2, 1 ;  R1 = left * right
428 : ST 1, 3(5) ;  Store function result
429 : LD 6, 0(5) ;  Load return address
430 : LDA 7, 0(6) ;  Return to caller
431 : LD 1, 2(5) ;  Load parameter 'q'
432 : ADD 3, 1, 0 ;  Stash right in R3
433 : LD 1, 1(5) ;  Load parameter 'p'
434 : ADD 2, 1, 0 ;  Move left to R2
435 : ADD 1, 3, 0 ;  Restore right to R1
436 : SUB 1, 2, 1 ;  R1 = left - right
437 : ST 1, 3(5) ;  Store function result
438 : LD 6, 0(5) ;  Load return address
439 : LDA 7, 0(6) ;  Return to caller
440 : LD 1, 2(5) ;  Load parameter 'q'
441 : ADD 3, 1, 0 ;  Stash right in R3
442 : LD 1, 1(5) ;  Load parameter 'p'
443 : ADD 2, 1, 0 ;  Move left to R2
444 : ADD 1, 3, 0 ;  Restore right to R1
445 : ADD 1, 2, 1 ;  R1 = left + right
446 : ST 1, 3(5) ;  Store function result
447 : LD 6, 0(5) ;  Load return address
448 : LDA 7, 0(6) ;  Return to caller
449 : LD 1, 1(5) ;  Load parameter 'p'
450 : JEQ 1, 453(0) ;  If false, jump to ELSE
451 : LD 1, 2(5) ;  Load parameter 'q'
452 : LDA 7, 454(0) ;  Skip ELSE
453 : LDC 1, 0(0) ;  Load boolean literal into R1
454 : ST 1, 3(5) ;  Store function result
455 : LD 6, 0(5) ;  Load return address
456 : LDA 7, 0(6) ;  Return to caller
457 : LD 1, 2(5) ;  Load parameter 'q'
458 : ADD 3, 1, 0 ;  Stash right in R3
459 : LD 1, 1(5) ;  Load parameter 'p'
460 : ADD 2, 1, 0 ;  Move left to R2
461 : ADD 1, 3, 0 ;  Restore right to R1
462 : ADD 1, 2, 1 ;  R1 = left OR right
463 : ST 1, 3(5) ;  Store function result
464 : LD 6, 0(5) ;  Load return address
465 : LDA 7, 0(6) ;  Return to caller
466 : LDA 4, 4(5) ;  Compute callee frame base
467 : ADD 5, 4, 0 ;  Push callee frame
468 : LD 1, 1(5) ;  Load parameter 'p'
469 : ST 1, 1(5) ;  Store argument 0 in callee frame
470 : LD 1, 2(5) ;  Load parameter 'q'
471 : ST 1, 2(5) ;  Store argument 1 in callee frame
472 : LDA 6, 475(0) ;  Return address
473 : ST 6, 0(5) ;  Store RA in callee frame
474 : LDA 7, 500(0) ;  Call LE
475 : LD 1, 3(5) ;  Load callee result
476 : LDC 2, 4(0) ;  Caller frame size
477 : SUB 5, 5, 2 ;  Pop callee frame
478 : LDC 2, 1(0) ;  Load 1 into R2
479 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
480 : ST 1, 3(5) ;  Store function result
481 : LD 6, 0(5) ;  Load return address
482 : LDA 7, 0(6) ;  Return to caller
483 : LDA 4, 4(5) ;  Compute callee frame base
484 : ADD 5, 4, 0 ;  Push callee frame
485 : LD 1, 1(5) ;  Load parameter 'p'
486 : ST 1, 1(5) ;  Store argument 0 in callee frame
487 : LD 1, 2(5) ;  Load parameter 'q'
488 : ST 1, 2(5) ;  Store argument 1 in callee frame
489 : LDA 6, 492(0) ;  Return address
490 : ST 6, 0(5) ;  Store RA in callee frame
491 : LDA 7, 559(0) ;  Call LT
492 : LD 1, 3(5) ;  Load callee result
493 : LDC 2, 4(0) ;  Caller frame size
494 : SUB 5, 5, 2 ;  Pop callee frame
495 : LDC 2, 1(0) ;  Load 1 into R2
496 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
497 : ST 1, 3(5) ;  Store function result
498 : LD 6, 0(5) ;  Load return address
499 : LDA 7, 0(6) ;  Return to caller
500 : LDA 4, 4(5) ;  Compute callee frame base
501 : ADD 5, 4, 0 ;  Push callee frame
502 : LD 1, 1(5) ;  Load parameter 'p'
503 : ST 1, 1(5) ;  Store argument 0 in callee frame
504 : LD 1, 2(5) ;  Load parameter 'q'
505 : ST 1, 2(5) ;  Store argument 1 in callee frame
506 : LDA 6, 509(0) ;  Return address
507 : ST 6, 0(5) ;  Store RA in callee frame
508 : LDA 7, 559(0) ;  Call LT
509 : LD 1, 3(5) ;  Load callee result
510 : LDC 2, 4(0) ;  Caller frame size
511 : SUB 5, 5, 2 ;  Pop callee frame
512 : ADD 2, 1, 0 ;  Move left to R2
513 : LDA 4, 4(5) ;  Compute callee frame base
514 : ADD 5, 4, 0 ;  Push callee frame
515 : LD 1, 1(5) ;  Load parameter 'p'
516 : ST 1, 1(5) ;  Store argument 0 in callee frame
517 : LD 1, 2(5) ;  Load parameter 'q'
518 : ST 1, 2(5) ;  Store argument 1 in callee frame
519 : LDA 6, 522(0) ;  Return address
520 : ST 6, 0(5) ;  Store RA in callee frame
521 : LDA 7, 546(0) ;  Call EQ
522 : LD 1, 3(5) ;  Load callee result
523 : LDC 2, 4(0) ;  Caller frame size
524 : SUB 5, 5, 2 ;  Pop callee frame
525 : ADD 1, 2, 1 ;  R1 = left OR right
526 : ST 1, 3(5) ;  Store function result
527 : LD 6, 0(5) ;  Load return address
528 : LDA 7, 0(6) ;  Return to caller
529 : LDA 4, 4(5) ;  Compute callee frame base
530 : ADD 5, 4, 0 ;  Push callee frame
531 : LD 1, 1(5) ;  Load parameter 'p'
532 : ST 1, 1(5) ;  Store argument 0 in callee frame
533 : LD 1, 2(5) ;  Load parameter 'q'
534 : ST 1, 2(5) ;  Store argument 1 in callee frame
535 : LDA 6, 538(0) ;  Return address
536 : ST 6, 0(5) ;  Store RA in callee frame
537 : LDA 7, 546(0) ;  Call EQ
538 : LD 1, 3(5) ;  Load callee result
539 : LDC 2, 4(0) ;  Caller frame size
540 : SUB 5, 5, 2 ;  Pop callee frame
541 : LDC 2, 1(0) ;  Load 1 into R2
542 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
543 : ST 1, 3(5) ;  Store function result
544 : LD 6, 0(5) ;  Load return address
545 : LDA 7, 0(6) ;  Return to caller
546 : LD 1, 2(5) ;  Load parameter 'q'
547 : ADD 3, 1, 0 ;  Stash right in R3
548 : LD 1, 1(5) ;  Load parameter 'p'
549 : ADD 2, 1, 0 ;  Move left to R2
550 : ADD 1, 3, 0 ;  Restore right to R1
551 : SUB 1, 2, 1 ;  left - right
552 : JEQ 1, 2(7) ;  if 0 then true
553 : LDC 1, 0(0) ;  false
554 : LDA 7, 1(7) ;  skip setting true
555 : LDC 1, 1(0) ;  true
556 : ST 1, 3(5) ;  Store function result
557 : LD 6, 0(5) ;  Load return address
558 : LDA 7, 0(6) ;  Return to caller
559 : LD 1, 2(5) ;  Load parameter 'q'
560 : ADD 3, 1, 0 ;  Stash right in R3
561 : LD 1, 1(5) ;  Load parameter 'p'
562 : ADD 2, 1, 0 ;  Move left to R2
563 : ADD 1, 3, 0 ;  Restore right to R1
564 : SUB 1, 2, 1 ;  left - right
565 : JLT 1, 2(7) ;  if < 0 then true
566 : LDC 1, 0(0) ;  false
567 : LDA 7, 1(7) ;  skip setting true
568 : LDC 1, 1(0) ;  true
569 : ST 1, 3(5) ;  Store function result
570 : LD 6, 0(5) ;  Load return address
571 : LDA 7, 0(6) ;  Return to caller
572 : LDC 1, 2147483647(0) ;  Load integer literal into R1
573 : SUB 1, 0, 1 ;  Negate R1
574 : ADD 2, 1, 0 ;  Move left to R2
575 : LDC 1, 1(0) ;  Load integer literal into R1
576 : SUB 1, 2, 1 ;  R1 = left - right
577 : ST 1, 1(5) ;  Store function result
578 : LD 6, 0(5) ;  Load return address
579 : LDA 7, 0(6) ;  Return to caller
580 : LDC 1, 2147483647(0) ;  Load integer literal into R1
581 : ST 1, 1(5) ;  Store function result
582 : LD 6, 0(5) ;  Load return address
583 : LDA 7, 0(6) ;  Return to caller
