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
14 : LD 1, 1(5) ;  Load parameter 'x'
15 : ST 1, 1(5) ;  Store argument 0 in callee frame
16 : LDA 6, 19(0) ;  Return address
17 : ST 6, 0(5) ;  Store RA in callee frame
18 : LDA 7, 495(0) ;  Call circularPrimesTo
19 : LD 1, 2(5) ;  Load callee result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop callee frame
22 : ST 1, 2(5) ;  Store result into caller frame
23 : LD 1, 2(5) ;  Load main return value
24 : LD 6, 0(5) ;  Load return address
25 : LDA 7, 0(6) ;  Return from main
26 : LD 1, 2(5) ;  Load parameter 'den'
27 : ADD 3, 1, 0 ;  Stash right in R3
28 : LD 1, 1(5) ;  Load parameter 'num'
29 : ADD 2, 1, 0 ;  Move left to R2
30 : ADD 1, 3, 0 ;  Restore right to R1
31 : SUB 1, 2, 1 ;  left - right
32 : JLT 1, 2(7) ;  if < 0 then true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 39(0) ;  If false, jump to ELSE
37 : LD 1, 1(5) ;  Load parameter 'num'
38 : LDA 7, 56(0) ;  Skip ELSE
39 : LDA 4, 4(5) ;  Compute callee frame base
40 : ADD 5, 4, 0 ;  Push callee frame
41 : LD 1, 2(5) ;  Load parameter 'den'
42 : ADD 3, 1, 0 ;  Stash right in R3
43 : LD 1, 1(5) ;  Load parameter 'num'
44 : ADD 2, 1, 0 ;  Move left to R2
45 : ADD 1, 3, 0 ;  Restore right to R1
46 : SUB 1, 2, 1 ;  R1 = left - right
47 : ST 1, 1(5) ;  Store argument 0 in callee frame
48 : LD 1, 2(5) ;  Load parameter 'den'
49 : ST 1, 2(5) ;  Store argument 1 in callee frame
50 : LDA 6, 53(0) ;  Return address
51 : ST 6, 0(5) ;  Store RA in callee frame
52 : LDA 7, 26(0) ;  Call mod
53 : LD 1, 3(5) ;  Load callee result
54 : LDC 2, 4(0) ;  Caller frame size
55 : SUB 5, 5, 2 ;  Pop callee frame
56 : ST 1, 3(5) ;  Store function result
57 : LD 6, 0(5) ;  Load return address
58 : LDA 7, 0(6) ;  Return to caller
59 : LDA 4, 4(5) ;  Compute callee frame base
60 : ADD 5, 4, 0 ;  Push callee frame
61 : LD 1, 2(5) ;  Load parameter 'b'
62 : ST 1, 1(5) ;  Store argument 0 in callee frame
63 : LD 1, 1(5) ;  Load parameter 'a'
64 : ST 1, 2(5) ;  Store argument 1 in callee frame
65 : LDA 6, 68(0) ;  Return address
66 : ST 6, 0(5) ;  Store RA in callee frame
67 : LDA 7, 26(0) ;  Call mod
68 : LD 1, 3(5) ;  Load callee result
69 : LDC 2, 4(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop callee frame
71 : ADD 2, 1, 0 ;  Move left to R2
72 : LDC 1, 0(0) ;  Load integer literal into R1
73 : SUB 1, 2, 1 ;  left - right
74 : JEQ 1, 2(7) ;  if 0 then true
75 : LDC 1, 0(0) ;  false
76 : LDA 7, 1(7) ;  skip setting true
77 : LDC 1, 1(0) ;  true
78 : ST 1, 3(5) ;  Store function result
79 : LD 6, 0(5) ;  Load return address
80 : LDA 7, 0(6) ;  Return to caller
81 : LD 1, 2(5) ;  Load parameter 'n'
82 : ADD 3, 1, 0 ;  Stash right in R3
83 : LD 1, 1(5) ;  Load parameter 'i'
84 : ADD 2, 1, 0 ;  Move left to R2
85 : ADD 1, 3, 0 ;  Restore right to R1
86 : SUB 1, 2, 1 ;  left - right
87 : JLT 1, 2(7) ;  if < 0 then true
88 : LDC 1, 0(0) ;  false
89 : LDA 7, 1(7) ;  skip setting true
90 : LDC 1, 1(0) ;  true
91 : JEQ 1, 124(0) ;  If false, jump to ELSE
92 : LDA 4, 4(5) ;  Compute callee frame base
93 : ADD 5, 4, 0 ;  Push callee frame
94 : LD 1, 1(5) ;  Load parameter 'i'
95 : ST 1, 1(5) ;  Store argument 0 in callee frame
96 : LD 1, 2(5) ;  Load parameter 'n'
97 : ST 1, 2(5) ;  Store argument 1 in callee frame
98 : LDA 6, 101(0) ;  Return address
99 : ST 6, 0(5) ;  Store RA in callee frame
100 : LDA 7, 59(0) ;  Call divides
101 : LD 1, 3(5) ;  Load callee result
102 : LDC 2, 4(0) ;  Caller frame size
103 : SUB 5, 5, 2 ;  Pop callee frame
104 : ADD 2, 1, 0 ;  Move left to R2
105 : LDA 4, 4(5) ;  Compute callee frame base
106 : ADD 5, 4, 0 ;  Push callee frame
107 : LDC 1, 1(0) ;  Load integer literal into R1
108 : ADD 3, 1, 0 ;  Stash right in R3
109 : LD 1, 1(5) ;  Load parameter 'i'
110 : ADD 2, 1, 0 ;  Move left to R2
111 : ADD 1, 3, 0 ;  Restore right to R1
112 : ADD 1, 2, 1 ;  R1 = left + right
113 : ST 1, 1(5) ;  Store argument 0 in callee frame
114 : LD 1, 2(5) ;  Load parameter 'n'
115 : ST 1, 2(5) ;  Store argument 1 in callee frame
116 : LDA 6, 119(0) ;  Return address
117 : ST 6, 0(5) ;  Store RA in callee frame
118 : LDA 7, 81(0) ;  Call hasDivisorFrom
119 : LD 1, 3(5) ;  Load callee result
120 : LDC 2, 4(0) ;  Caller frame size
121 : SUB 5, 5, 2 ;  Pop callee frame
122 : ADD 1, 2, 1 ;  R1 = left OR right
123 : LDA 7, 125(0) ;  Skip ELSE
124 : LDC 1, 0(0) ;  Load boolean literal into R1
125 : ST 1, 3(5) ;  Store function result
126 : LD 6, 0(5) ;  Load return address
127 : LDA 7, 0(6) ;  Return to caller
128 : LDA 4, 4(5) ;  Compute callee frame base
129 : ADD 5, 4, 0 ;  Push callee frame
130 : LDC 1, 2(0) ;  Load integer literal into R1
131 : ST 1, 1(5) ;  Store argument 0 in callee frame
132 : LD 1, 1(5) ;  Load parameter 'n'
133 : ST 1, 2(5) ;  Store argument 1 in callee frame
134 : LDA 6, 137(0) ;  Return address
135 : ST 6, 0(5) ;  Store RA in callee frame
136 : LDA 7, 81(0) ;  Call hasDivisorFrom
137 : LD 1, 3(5) ;  Load callee result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop callee frame
140 : LDC 2, 1(0) ;  Load 1 into R2
141 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
142 : ST 1, 2(5) ;  Store function result
143 : LD 6, 0(5) ;  Load return address
144 : LDA 7, 0(6) ;  Return to caller
145 : LDC 1, 10(0) ;  Load integer literal into R1
146 : ADD 3, 1, 0 ;  Stash right in R3
147 : LD 1, 1(5) ;  Load parameter 'x'
148 : ADD 2, 1, 0 ;  Move left to R2
149 : ADD 1, 3, 0 ;  Restore right to R1
150 : DIV 1, 2, 1 ;  R1 = left / right
151 : ADD 2, 1, 0 ;  Move left to R2
152 : LDC 1, 0(0) ;  Load integer literal into R1
153 : SUB 1, 2, 1 ;  left - right
154 : JEQ 1, 2(7) ;  if 0 then true
155 : LDC 1, 0(0) ;  false
156 : LDA 7, 1(7) ;  skip setting true
157 : LDC 1, 1(0) ;  true
158 : JEQ 1, 161(0) ;  If false, jump to ELSE
159 : LD 1, 2(5) ;  Load parameter 'y'
160 : LDA 7, 183(0) ;  Skip ELSE
161 : LDA 4, 4(5) ;  Compute callee frame base
162 : ADD 5, 4, 0 ;  Push callee frame
163 : LDC 1, 10(0) ;  Load integer literal into R1
164 : ADD 3, 1, 0 ;  Stash right in R3
165 : LD 1, 1(5) ;  Load parameter 'x'
166 : ADD 2, 1, 0 ;  Move left to R2
167 : ADD 1, 3, 0 ;  Restore right to R1
168 : DIV 1, 2, 1 ;  R1 = left / right
169 : ST 1, 1(5) ;  Store argument 0 in callee frame
170 : LDC 1, 1(0) ;  Load integer literal into R1
171 : ADD 3, 1, 0 ;  Stash right in R3
172 : LD 1, 2(5) ;  Load parameter 'y'
173 : ADD 2, 1, 0 ;  Move left to R2
174 : ADD 1, 3, 0 ;  Restore right to R1
175 : ADD 1, 2, 1 ;  R1 = left + right
176 : ST 1, 2(5) ;  Store argument 1 in callee frame
177 : LDA 6, 180(0) ;  Return address
178 : ST 6, 0(5) ;  Store RA in callee frame
179 : LDA 7, 145(0) ;  Call log10Helper
180 : LD 1, 3(5) ;  Load callee result
181 : LDC 2, 4(0) ;  Caller frame size
182 : SUB 5, 5, 2 ;  Pop callee frame
183 : ST 1, 3(5) ;  Store function result
184 : LD 6, 0(5) ;  Load return address
185 : LDA 7, 0(6) ;  Return to caller
186 : LDA 4, 4(5) ;  Compute callee frame base
187 : ADD 5, 4, 0 ;  Push callee frame
188 : LD 1, 1(5) ;  Load parameter 'x'
189 : ST 1, 1(5) ;  Store argument 0 in callee frame
190 : LDC 1, 0(0) ;  Load integer literal into R1
191 : ST 1, 2(5) ;  Store argument 1 in callee frame
192 : LDA 6, 195(0) ;  Return address
193 : ST 6, 0(5) ;  Store RA in callee frame
194 : LDA 7, 145(0) ;  Call log10Helper
195 : LD 1, 3(5) ;  Load callee result
196 : LDC 2, 4(0) ;  Caller frame size
197 : SUB 5, 5, 2 ;  Pop callee frame
198 : ST 1, 2(5) ;  Store function result
199 : LD 6, 0(5) ;  Load return address
200 : LDA 7, 0(6) ;  Return to caller
201 : LDC 1, 0(0) ;  Load integer literal into R1
202 : ADD 3, 1, 0 ;  Stash right in R3
203 : LD 1, 2(5) ;  Load parameter 'power'
204 : ADD 2, 1, 0 ;  Move left to R2
205 : ADD 1, 3, 0 ;  Restore right to R1
206 : SUB 1, 2, 1 ;  left - right
207 : JEQ 1, 2(7) ;  if 0 then true
208 : LDC 1, 0(0) ;  false
209 : LDA 7, 1(7) ;  skip setting true
210 : LDC 1, 1(0) ;  true
211 : JEQ 1, 214(0) ;  If false, jump to ELSE
212 : LDC 1, 1(0) ;  Load integer literal into R1
213 : LDA 7, 251(0) ;  Skip ELSE
214 : LDC 1, 1(0) ;  Load integer literal into R1
215 : ADD 3, 1, 0 ;  Stash right in R3
216 : LD 1, 2(5) ;  Load parameter 'power'
217 : ADD 2, 1, 0 ;  Move left to R2
218 : ADD 1, 3, 0 ;  Restore right to R1
219 : SUB 1, 2, 1 ;  left - right
220 : JEQ 1, 2(7) ;  if 0 then true
221 : LDC 1, 0(0) ;  false
222 : LDA 7, 1(7) ;  skip setting true
223 : LDC 1, 1(0) ;  true
224 : JEQ 1, 227(0) ;  If false, jump to ELSE
225 : LD 1, 3(5) ;  Load parameter 'total'
226 : LDA 7, 251(0) ;  Skip ELSE
227 : LDA 4, 5(5) ;  Compute callee frame base
228 : ADD 5, 4, 0 ;  Push callee frame
229 : LD 1, 1(5) ;  Load parameter 'base'
230 : ST 1, 1(5) ;  Store argument 0 in callee frame
231 : LDC 1, 1(0) ;  Load integer literal into R1
232 : ADD 3, 1, 0 ;  Stash right in R3
233 : LD 1, 2(5) ;  Load parameter 'power'
234 : ADD 2, 1, 0 ;  Move left to R2
235 : ADD 1, 3, 0 ;  Restore right to R1
236 : SUB 1, 2, 1 ;  R1 = left - right
237 : ST 1, 2(5) ;  Store argument 1 in callee frame
238 : LD 1, 3(5) ;  Load parameter 'total'
239 : ADD 3, 1, 0 ;  Stash right in R3
240 : LD 1, 1(5) ;  Load parameter 'base'
241 : ADD 2, 1, 0 ;  Move left to R2
242 : ADD 1, 3, 0 ;  Restore right to R1
243 : MUL 1, 2, 1 ;  R1 = left * right
244 : ST 1, 3(5) ;  Store argument 2 in callee frame
245 : LDA 6, 248(0) ;  Return address
246 : ST 6, 0(5) ;  Store RA in callee frame
247 : LDA 7, 201(0) ;  Call powHelper
248 : LD 1, 4(5) ;  Load callee result
249 : LDC 2, 5(0) ;  Caller frame size
250 : SUB 5, 5, 2 ;  Pop callee frame
251 : ST 1, 4(5) ;  Store function result
252 : LD 6, 0(5) ;  Load return address
253 : LDA 7, 0(6) ;  Return to caller
254 : LDA 4, 5(5) ;  Compute callee frame base
255 : ADD 5, 4, 0 ;  Push callee frame
256 : LD 1, 1(5) ;  Load parameter 'x'
257 : ST 1, 1(5) ;  Store argument 0 in callee frame
258 : LD 1, 2(5) ;  Load parameter 'y'
259 : ST 1, 2(5) ;  Store argument 1 in callee frame
260 : LD 1, 1(5) ;  Load parameter 'x'
261 : ST 1, 3(5) ;  Store argument 2 in callee frame
262 : LDA 6, 265(0) ;  Return address
263 : ST 6, 0(5) ;  Store RA in callee frame
264 : LDA 7, 201(0) ;  Call powHelper
265 : LD 1, 4(5) ;  Load callee result
266 : LDC 2, 5(0) ;  Caller frame size
267 : SUB 5, 5, 2 ;  Pop callee frame
268 : ST 1, 3(5) ;  Store function result
269 : LD 6, 0(5) ;  Load return address
270 : LDA 7, 0(6) ;  Return to caller
271 : LDC 1, 10(0) ;  Load integer literal into R1
272 : ADD 3, 1, 0 ;  Stash right in R3
273 : LD 1, 1(5) ;  Load parameter 'x'
274 : ADD 2, 1, 0 ;  Move left to R2
275 : ADD 1, 3, 0 ;  Restore right to R1
276 : DIV 1, 2, 1 ;  R1 = left / right
277 : ADD 2, 1, 0 ;  Move left to R2
278 : LDA 4, 4(5) ;  Compute callee frame base
279 : ADD 5, 4, 0 ;  Push callee frame
280 : LD 1, 1(5) ;  Load parameter 'x'
281 : ST 1, 1(5) ;  Store argument 0 in callee frame
282 : LDC 1, 10(0) ;  Load integer literal into R1
283 : ST 1, 2(5) ;  Store argument 1 in callee frame
284 : LDA 6, 287(0) ;  Return address
285 : ST 6, 0(5) ;  Store RA in callee frame
286 : LDA 7, 26(0) ;  Call mod
287 : LD 1, 3(5) ;  Load callee result
288 : LDC 2, 4(0) ;  Caller frame size
289 : SUB 5, 5, 2 ;  Pop callee frame
290 : ADD 2, 1, 0 ;  Move left to R2
291 : LDA 4, 4(5) ;  Compute callee frame base
292 : ADD 5, 4, 0 ;  Push callee frame
293 : LDC 1, 10(0) ;  Load integer literal into R1
294 : ST 1, 1(5) ;  Store argument 0 in callee frame
295 : LDA 4, 3(5) ;  Compute callee frame base
296 : ADD 5, 4, 0 ;  Push callee frame
297 : LD 1, 1(5) ;  Load parameter 'x'
298 : ST 1, 1(5) ;  Store argument 0 in callee frame
299 : LDA 6, 302(0) ;  Return address
300 : ST 6, 0(5) ;  Store RA in callee frame
301 : LDA 7, 186(0) ;  Call log10
302 : LD 1, 2(5) ;  Load callee result
303 : LDC 2, 3(0) ;  Caller frame size
304 : SUB 5, 5, 2 ;  Pop callee frame
305 : ST 1, 2(5) ;  Store argument 1 in callee frame
306 : LDA 6, 309(0) ;  Return address
307 : ST 6, 0(5) ;  Store RA in callee frame
308 : LDA 7, 254(0) ;  Call pow
309 : LD 1, 3(5) ;  Load callee result
310 : LDC 2, 4(0) ;  Caller frame size
311 : SUB 5, 5, 2 ;  Pop callee frame
312 : MUL 1, 2, 1 ;  R1 = left * right
313 : ADD 1, 2, 1 ;  R1 = left + right
314 : ST 1, 2(5) ;  Store function result
315 : LD 6, 0(5) ;  Load return address
316 : LDA 7, 0(6) ;  Return to caller
317 : LDA 4, 3(5) ;  Compute callee frame base
318 : ADD 5, 4, 0 ;  Push callee frame
319 : LD 1, 1(5) ;  Load parameter 'x'
320 : ST 1, 1(5) ;  Store print arg in callee frame
321 : LDA 6, 324(0) ;  Return address
322 : ST 6, 0(5) ;  Store RA in callee frame
323 : LDA 7, 9(0) ;  Call print
324 : LDC 2, 3(0) ;  Caller frame size
325 : SUB 5, 5, 2 ;  Pop callee frame
326 : LDC 1, 1(0) ;  Load boolean literal into R1
327 : ST 1, 2(5) ;  Store function result
328 : LD 6, 0(5) ;  Load return address
329 : LDA 7, 0(6) ;  Return to caller
330 : LDC 1, 0(0) ;  Load integer literal into R1
331 : ADD 3, 1, 0 ;  Stash right in R3
332 : LD 1, 2(5) ;  Load parameter 'turns'
333 : ADD 2, 1, 0 ;  Move left to R2
334 : ADD 1, 3, 0 ;  Restore right to R1
335 : SUB 1, 2, 1 ;  left - right
336 : JEQ 1, 2(7) ;  if 0 then true
337 : LDC 1, 0(0) ;  false
338 : LDA 7, 1(7) ;  skip setting true
339 : LDC 1, 1(0) ;  true
340 : JEQ 1, 343(0) ;  If false, jump to ELSE
341 : LDC 1, 1(0) ;  Load boolean literal into R1
342 : LDA 7, 381(0) ;  Skip ELSE
343 : LDA 4, 3(5) ;  Compute callee frame base
344 : ADD 5, 4, 0 ;  Push callee frame
345 : LD 1, 1(5) ;  Load parameter 'x'
346 : ST 1, 1(5) ;  Store argument 0 in callee frame
347 : LDA 6, 350(0) ;  Return address
348 : ST 6, 0(5) ;  Store RA in callee frame
349 : LDA 7, 128(0) ;  Call isPrime
350 : LD 1, 2(5) ;  Load callee result
351 : LDC 2, 3(0) ;  Caller frame size
352 : SUB 5, 5, 2 ;  Pop callee frame
353 : ADD 2, 1, 0 ;  Move left to R2
354 : LDA 4, 4(5) ;  Compute callee frame base
355 : ADD 5, 4, 0 ;  Push callee frame
356 : LDA 4, 3(5) ;  Compute callee frame base
357 : ADD 5, 4, 0 ;  Push callee frame
358 : LD 1, 1(5) ;  Load parameter 'x'
359 : ST 1, 1(5) ;  Store argument 0 in callee frame
360 : LDA 6, 363(0) ;  Return address
361 : ST 6, 0(5) ;  Store RA in callee frame
362 : LDA 7, 271(0) ;  Call rotate
363 : LD 1, 2(5) ;  Load callee result
364 : LDC 2, 3(0) ;  Caller frame size
365 : SUB 5, 5, 2 ;  Pop callee frame
366 : ST 1, 1(5) ;  Store argument 0 in callee frame
367 : LDC 1, 1(0) ;  Load integer literal into R1
368 : ADD 3, 1, 0 ;  Stash right in R3
369 : LD 1, 2(5) ;  Load parameter 'turns'
370 : ADD 2, 1, 0 ;  Move left to R2
371 : ADD 1, 3, 0 ;  Restore right to R1
372 : SUB 1, 2, 1 ;  R1 = left - right
373 : ST 1, 2(5) ;  Store argument 1 in callee frame
374 : LDA 6, 377(0) ;  Return address
375 : ST 6, 0(5) ;  Store RA in callee frame
376 : LDA 7, 330(0) ;  Call isCircularPrimeHelper
377 : LD 1, 3(5) ;  Load callee result
378 : LDC 2, 4(0) ;  Caller frame size
379 : SUB 5, 5, 2 ;  Pop callee frame
380 : MUL 1, 2, 1 ;  R1 = left AND right
381 : ST 1, 3(5) ;  Store function result
382 : LD 6, 0(5) ;  Load return address
383 : LDA 7, 0(6) ;  Return to caller
384 : LDA 4, 4(5) ;  Compute callee frame base
385 : ADD 5, 4, 0 ;  Push callee frame
386 : LD 1, 1(5) ;  Load parameter 'x'
387 : ST 1, 1(5) ;  Store argument 0 in callee frame
388 : LDA 4, 3(5) ;  Compute callee frame base
389 : ADD 5, 4, 0 ;  Push callee frame
390 : LD 1, 1(5) ;  Load parameter 'x'
391 : ST 1, 1(5) ;  Store argument 0 in callee frame
392 : LDA 6, 395(0) ;  Return address
393 : ST 6, 0(5) ;  Store RA in callee frame
394 : LDA 7, 186(0) ;  Call log10
395 : LD 1, 2(5) ;  Load callee result
396 : LDC 2, 3(0) ;  Caller frame size
397 : SUB 5, 5, 2 ;  Pop callee frame
398 : ADD 2, 1, 0 ;  Move left to R2
399 : LDC 1, 1(0) ;  Load integer literal into R1
400 : ADD 1, 2, 1 ;  R1 = left + right
401 : ST 1, 2(5) ;  Store argument 1 in callee frame
402 : LDA 6, 405(0) ;  Return address
403 : ST 6, 0(5) ;  Store RA in callee frame
404 : LDA 7, 330(0) ;  Call isCircularPrimeHelper
405 : LD 1, 3(5) ;  Load callee result
406 : LDC 2, 4(0) ;  Caller frame size
407 : SUB 5, 5, 2 ;  Pop callee frame
408 : JEQ 1, 420(0) ;  If false, jump to ELSE
409 : LDA 4, 3(5) ;  Compute callee frame base
410 : ADD 5, 4, 0 ;  Push callee frame
411 : LD 1, 1(5) ;  Load parameter 'x'
412 : ST 1, 1(5) ;  Store argument 0 in callee frame
413 : LDA 6, 416(0) ;  Return address
414 : ST 6, 0(5) ;  Store RA in callee frame
415 : LDA 7, 317(0) ;  Call report
416 : LD 1, 2(5) ;  Load callee result
417 : LDC 2, 3(0) ;  Caller frame size
418 : SUB 5, 5, 2 ;  Pop callee frame
419 : LDA 7, 421(0) ;  Skip ELSE
420 : LDC 1, 0(0) ;  Load boolean literal into R1
421 : ST 1, 2(5) ;  Store function result
422 : LD 6, 0(5) ;  Load return address
423 : LDA 7, 0(6) ;  Return to caller
424 : LD 1, 1(5) ;  Load parameter 'top'
425 : ADD 3, 1, 0 ;  Stash right in R3
426 : LD 1, 2(5) ;  Load parameter 'x'
427 : ADD 2, 1, 0 ;  Move left to R2
428 : ADD 1, 3, 0 ;  Restore right to R1
429 : SUB 1, 2, 1 ;  left - right
430 : JLT 1, 2(7) ;  if < 0 then true
431 : LDC 1, 0(0) ;  false
432 : LDA 7, 1(7) ;  skip setting true
433 : LDC 1, 1(0) ;  true
434 : JEQ 1, 491(0) ;  If false, jump to ELSE
435 : LDA 4, 3(5) ;  Compute callee frame base
436 : ADD 5, 4, 0 ;  Push callee frame
437 : LD 1, 2(5) ;  Load parameter 'x'
438 : ST 1, 1(5) ;  Store argument 0 in callee frame
439 : LDA 6, 442(0) ;  Return address
440 : ST 6, 0(5) ;  Store RA in callee frame
441 : LDA 7, 384(0) ;  Call isCircularPrime
442 : LD 1, 2(5) ;  Load callee result
443 : LDC 2, 3(0) ;  Caller frame size
444 : SUB 5, 5, 2 ;  Pop callee frame
445 : JEQ 1, 471(0) ;  If false, jump to ELSE
446 : LDA 4, 5(5) ;  Compute callee frame base
447 : ADD 5, 4, 0 ;  Push callee frame
448 : LD 1, 1(5) ;  Load parameter 'top'
449 : ST 1, 1(5) ;  Store argument 0 in callee frame
450 : LDC 1, 1(0) ;  Load integer literal into R1
451 : ADD 3, 1, 0 ;  Stash right in R3
452 : LD 1, 2(5) ;  Load parameter 'x'
453 : ADD 2, 1, 0 ;  Move left to R2
454 : ADD 1, 3, 0 ;  Restore right to R1
455 : ADD 1, 2, 1 ;  R1 = left + right
456 : ST 1, 2(5) ;  Store argument 1 in callee frame
457 : LDC 1, 1(0) ;  Load integer literal into R1
458 : ADD 3, 1, 0 ;  Stash right in R3
459 : LD 1, 3(5) ;  Load parameter 'count'
460 : ADD 2, 1, 0 ;  Move left to R2
461 : ADD 1, 3, 0 ;  Restore right to R1
462 : ADD 1, 2, 1 ;  R1 = left + right
463 : ST 1, 3(5) ;  Store argument 2 in callee frame
464 : LDA 6, 467(0) ;  Return address
465 : ST 6, 0(5) ;  Store RA in callee frame
466 : LDA 7, 424(0) ;  Call circularPrimesToHelper
467 : LD 1, 4(5) ;  Load callee result
468 : LDC 2, 5(0) ;  Caller frame size
469 : SUB 5, 5, 2 ;  Pop callee frame
470 : LDA 7, 490(0) ;  Skip ELSE
471 : LDA 4, 5(5) ;  Compute callee frame base
472 : ADD 5, 4, 0 ;  Push callee frame
473 : LD 1, 1(5) ;  Load parameter 'top'
474 : ST 1, 1(5) ;  Store argument 0 in callee frame
475 : LDC 1, 1(0) ;  Load integer literal into R1
476 : ADD 3, 1, 0 ;  Stash right in R3
477 : LD 1, 2(5) ;  Load parameter 'x'
478 : ADD 2, 1, 0 ;  Move left to R2
479 : ADD 1, 3, 0 ;  Restore right to R1
480 : ADD 1, 2, 1 ;  R1 = left + right
481 : ST 1, 2(5) ;  Store argument 1 in callee frame
482 : LD 1, 3(5) ;  Load parameter 'count'
483 : ST 1, 3(5) ;  Store argument 2 in callee frame
484 : LDA 6, 487(0) ;  Return address
485 : ST 6, 0(5) ;  Store RA in callee frame
486 : LDA 7, 424(0) ;  Call circularPrimesToHelper
487 : LD 1, 4(5) ;  Load callee result
488 : LDC 2, 5(0) ;  Caller frame size
489 : SUB 5, 5, 2 ;  Pop callee frame
490 : LDA 7, 492(0) ;  Skip ELSE
491 : LD 1, 3(5) ;  Load parameter 'count'
492 : ST 1, 4(5) ;  Store function result
493 : LD 6, 0(5) ;  Load return address
494 : LDA 7, 0(6) ;  Return to caller
495 : LDA 4, 5(5) ;  Compute callee frame base
496 : ADD 5, 4, 0 ;  Push callee frame
497 : LDC 1, 1(0) ;  Load integer literal into R1
498 : ADD 3, 1, 0 ;  Stash right in R3
499 : LD 1, 1(5) ;  Load parameter 'x'
500 : ADD 2, 1, 0 ;  Move left to R2
501 : ADD 1, 3, 0 ;  Restore right to R1
502 : ADD 1, 2, 1 ;  R1 = left + right
503 : ST 1, 1(5) ;  Store argument 0 in callee frame
504 : LDC 1, 2(0) ;  Load integer literal into R1
505 : ST 1, 2(5) ;  Store argument 1 in callee frame
506 : LDC 1, 0(0) ;  Load integer literal into R1
507 : ST 1, 3(5) ;  Store argument 2 in callee frame
508 : LDA 6, 511(0) ;  Return address
509 : ST 6, 0(5) ;  Store RA in callee frame
510 : LDA 7, 424(0) ;  Call circularPrimesToHelper
511 : LD 1, 4(5) ;  Load callee result
512 : LDC 2, 5(0) ;  Caller frame size
513 : SUB 5, 5, 2 ;  Pop callee frame
514 : ST 1, 2(5) ;  Store function result
515 : LD 6, 0(5) ;  Load return address
516 : LDA 7, 0(6) ;  Return to caller
