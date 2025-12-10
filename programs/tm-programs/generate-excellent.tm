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
12 : LDA 4, 4(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LDA 4, 4(5) ;  Compute callee frame base
15 : ADD 5, 4, 0 ;  Push callee frame
16 : LDC 1, 10(0) ;  Load integer literal into R1
17 : ST 1, 1(5) ;  Store argument 0 in callee frame
18 : LDC 1, 2(0) ;  Load integer literal into R1
19 : ADD 3, 1, 0 ;  Stash right in R3
20 : LD 1, 1(5) ;  Load parameter 'length'
21 : ADD 2, 1, 0 ;  Move left to R2
22 : ADD 1, 3, 0 ;  Restore right to R1
23 : DIV 1, 2, 1 ;  R1 = left / right
24 : ADD 2, 1, 0 ;  Move left to R2
25 : LDC 1, 1(0) ;  Load integer literal into R1
26 : SUB 1, 2, 1 ;  R1 = left - right
27 : ST 1, 2(5) ;  Store argument 1 in callee frame
28 : LDA 6, 31(0) ;  Return address
29 : ST 6, 0(5) ;  Store RA in callee frame
30 : LDA 7, 798(0) ;  Call EXP
31 : LD 1, 3(5) ;  Load callee result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop callee frame
34 : ST 1, 1(5) ;  Store argument 0 in callee frame
35 : LDC 1, 2(0) ;  Load integer literal into R1
36 : ADD 3, 1, 0 ;  Stash right in R3
37 : LD 1, 1(5) ;  Load parameter 'length'
38 : ADD 2, 1, 0 ;  Move left to R2
39 : ADD 1, 3, 0 ;  Restore right to R1
40 : DIV 1, 2, 1 ;  R1 = left / right
41 : ST 1, 2(5) ;  Store argument 1 in callee frame
42 : LDA 6, 45(0) ;  Return address
43 : ST 6, 0(5) ;  Store RA in callee frame
44 : LDA 7, 52(0) ;  Call createLoop
45 : LD 1, 3(5) ;  Load callee result
46 : LDC 2, 4(0) ;  Caller frame size
47 : SUB 5, 5, 2 ;  Pop callee frame
48 : ST 1, 2(5) ;  Store result into caller frame
49 : LD 1, 2(5) ;  Load main return value
50 : LD 6, 0(5) ;  Load return address
51 : LDA 7, 0(6) ;  Return from main
52 : LDA 4, 5(5) ;  Compute callee frame base
53 : ADD 5, 4, 0 ;  Push callee frame
54 : LD 1, 1(5) ;  Load parameter 'a'
55 : ST 1, 1(5) ;  Store argument 0 in callee frame
56 : LD 1, 2(5) ;  Load parameter 'n'
57 : ST 1, 2(5) ;  Store argument 1 in callee frame
58 : LD 1, 1(5) ;  Load parameter 'a'
59 : ADD 3, 1, 0 ;  Stash right in R3
60 : LDC 1, 10(0) ;  Load integer literal into R1
61 : ADD 2, 1, 0 ;  Move left to R2
62 : ADD 1, 3, 0 ;  Restore right to R1
63 : MUL 1, 2, 1 ;  R1 = left * right
64 : ST 1, 3(5) ;  Store argument 2 in callee frame
65 : LDA 6, 68(0) ;  Return address
66 : ST 6, 0(5) ;  Store RA in callee frame
67 : LDA 7, 74(0) ;  Call aLoop
68 : LD 1, 4(5) ;  Load callee result
69 : LDC 2, 5(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop callee frame
71 : ST 1, 3(5) ;  Store function result
72 : LD 6, 0(5) ;  Load return address
73 : LDA 7, 0(6) ;  Return to caller
74 : LD 1, 3(5) ;  Load parameter 'upper'
75 : ADD 3, 1, 0 ;  Stash right in R3
76 : LD 1, 1(5) ;  Load parameter 'a'
77 : ADD 2, 1, 0 ;  Move left to R2
78 : ADD 1, 3, 0 ;  Restore right to R1
79 : SUB 1, 2, 1 ;  left - right
80 : JLT 1, 2(7) ;  if < 0 then true
81 : LDC 1, 0(0) ;  false
82 : LDA 7, 1(7) ;  skip setting true
83 : LDC 1, 1(0) ;  true
84 : JEQ 1, 143(0) ;  If false, jump to ELSE
85 : LDA 4, 6(5) ;  Compute callee frame base
86 : ADD 5, 4, 0 ;  Push callee frame
87 : LD 1, 1(5) ;  Load parameter 'a'
88 : ST 1, 1(5) ;  Store argument 0 in callee frame
89 : LD 1, 2(5) ;  Load parameter 'n'
90 : ST 1, 2(5) ;  Store argument 1 in callee frame
91 : LD 1, 3(5) ;  Load parameter 'upper'
92 : ST 1, 3(5) ;  Store argument 2 in callee frame
93 : LDA 4, 4(5) ;  Compute callee frame base
94 : ADD 5, 4, 0 ;  Push callee frame
95 : LD 1, 1(5) ;  Load parameter 'a'
96 : ST 1, 1(5) ;  Store argument 0 in callee frame
97 : LDC 1, 2(0) ;  Load integer literal into R1
98 : ST 1, 2(5) ;  Store argument 1 in callee frame
99 : LDA 6, 102(0) ;  Return address
100 : ST 6, 0(5) ;  Store RA in callee frame
101 : LDA 7, 798(0) ;  Call EXP
102 : LD 1, 3(5) ;  Load callee result
103 : LDC 2, 4(0) ;  Caller frame size
104 : SUB 5, 5, 2 ;  Pop callee frame
105 : ADD 3, 1, 0 ;  Stash right in R3
106 : LDC 1, 4(0) ;  Load integer literal into R1
107 : ADD 2, 1, 0 ;  Move left to R2
108 : ADD 1, 3, 0 ;  Restore right to R1
109 : MUL 1, 2, 1 ;  R1 = left * right
110 : ADD 2, 1, 0 ;  Move left to R2
111 : LDA 4, 4(5) ;  Compute callee frame base
112 : ADD 5, 4, 0 ;  Push callee frame
113 : LDC 1, 10(0) ;  Load integer literal into R1
114 : ST 1, 1(5) ;  Store argument 0 in callee frame
115 : LD 1, 2(5) ;  Load parameter 'n'
116 : ST 1, 2(5) ;  Store argument 1 in callee frame
117 : LDA 6, 120(0) ;  Return address
118 : ST 6, 0(5) ;  Store RA in callee frame
119 : LDA 7, 798(0) ;  Call EXP
120 : LD 1, 3(5) ;  Load callee result
121 : LDC 2, 4(0) ;  Caller frame size
122 : SUB 5, 5, 2 ;  Pop callee frame
123 : ADD 3, 1, 0 ;  Stash right in R3
124 : LDC 1, 4(0) ;  Load integer literal into R1
125 : ADD 2, 1, 0 ;  Move left to R2
126 : ADD 1, 3, 0 ;  Restore right to R1
127 : MUL 1, 2, 1 ;  R1 = left * right
128 : ADD 2, 1, 0 ;  Move left to R2
129 : LD 1, 1(5) ;  Load parameter 'a'
130 : MUL 1, 2, 1 ;  R1 = left * right
131 : ADD 1, 2, 1 ;  R1 = left + right
132 : ADD 2, 1, 0 ;  Move left to R2
133 : LDC 1, 1(0) ;  Load integer literal into R1
134 : ADD 1, 2, 1 ;  R1 = left + right
135 : ST 1, 4(5) ;  Store argument 3 in callee frame
136 : LDA 6, 139(0) ;  Return address
137 : ST 6, 0(5) ;  Store RA in callee frame
138 : LDA 7, 147(0) ;  Call aLoop1
139 : LD 1, 5(5) ;  Load callee result
140 : LDC 2, 6(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop callee frame
142 : LDA 7, 144(0) ;  Skip ELSE
143 : LDC 1, 1(0) ;  Load boolean literal into R1
144 : ST 1, 4(5) ;  Store function result
145 : LD 6, 0(5) ;  Load return address
146 : LDA 7, 0(6) ;  Return to caller
147 : LDA 4, 7(5) ;  Compute callee frame base
148 : ADD 5, 4, 0 ;  Push callee frame
149 : LD 1, 1(5) ;  Load parameter 'a'
150 : ST 1, 1(5) ;  Store argument 0 in callee frame
151 : LD 1, 2(5) ;  Load parameter 'n'
152 : ST 1, 2(5) ;  Store argument 1 in callee frame
153 : LD 1, 3(5) ;  Load parameter 'upper'
154 : ST 1, 3(5) ;  Store argument 2 in callee frame
155 : LD 1, 4(5) ;  Load parameter 'det'
156 : ST 1, 4(5) ;  Store argument 3 in callee frame
157 : LDA 4, 3(5) ;  Compute callee frame base
158 : ADD 5, 4, 0 ;  Push callee frame
159 : LD 1, 4(5) ;  Load parameter 'det'
160 : ST 1, 1(5) ;  Store argument 0 in callee frame
161 : LDA 6, 164(0) ;  Return address
162 : ST 6, 0(5) ;  Store RA in callee frame
163 : LDA 7, 712(0) ;  Call SQRT
164 : LD 1, 2(5) ;  Load callee result
165 : LDC 2, 3(0) ;  Caller frame size
166 : SUB 5, 5, 2 ;  Pop callee frame
167 : ST 1, 5(5) ;  Store argument 4 in callee frame
168 : LDA 6, 171(0) ;  Return address
169 : ST 6, 0(5) ;  Store RA in callee frame
170 : LDA 7, 177(0) ;  Call aLoop2
171 : LD 1, 6(5) ;  Load callee result
172 : LDC 2, 7(0) ;  Caller frame size
173 : SUB 5, 5, 2 ;  Pop callee frame
174 : ST 1, 5(5) ;  Store function result
175 : LD 6, 0(5) ;  Load return address
176 : LDA 7, 0(6) ;  Return to caller
177 : LDA 4, 8(5) ;  Compute callee frame base
178 : ADD 5, 4, 0 ;  Push callee frame
179 : LD 1, 1(5) ;  Load parameter 'a'
180 : ST 1, 1(5) ;  Store argument 0 in callee frame
181 : LD 1, 2(5) ;  Load parameter 'n'
182 : ST 1, 2(5) ;  Store argument 1 in callee frame
183 : LD 1, 3(5) ;  Load parameter 'upper'
184 : ST 1, 3(5) ;  Store argument 2 in callee frame
185 : LD 1, 4(5) ;  Load parameter 'det'
186 : ST 1, 4(5) ;  Store argument 3 in callee frame
187 : LD 1, 5(5) ;  Load parameter 'root'
188 : ST 1, 5(5) ;  Store argument 4 in callee frame
189 : LDA 4, 4(5) ;  Compute callee frame base
190 : ADD 5, 4, 0 ;  Push callee frame
191 : LDC 1, 10(0) ;  Load integer literal into R1
192 : ST 1, 1(5) ;  Store argument 0 in callee frame
193 : LD 1, 2(5) ;  Load parameter 'n'
194 : ST 1, 2(5) ;  Store argument 1 in callee frame
195 : LDA 6, 198(0) ;  Return address
196 : ST 6, 0(5) ;  Store RA in callee frame
197 : LDA 7, 798(0) ;  Call EXP
198 : LD 1, 3(5) ;  Load callee result
199 : LDC 2, 4(0) ;  Caller frame size
200 : SUB 5, 5, 2 ;  Pop callee frame
201 : ADD 3, 1, 0 ;  Stash right in R3
202 : LD 1, 1(5) ;  Load parameter 'a'
203 : ADD 2, 1, 0 ;  Move left to R2
204 : ADD 1, 3, 0 ;  Restore right to R1
205 : MUL 1, 2, 1 ;  R1 = left * right
206 : ADD 2, 1, 0 ;  Move left to R2
207 : LDC 1, 1(0) ;  Load integer literal into R1
208 : ADD 3, 1, 0 ;  Stash right in R3
209 : LD 1, 5(5) ;  Load parameter 'root'
210 : ADD 2, 1, 0 ;  Move left to R2
211 : ADD 1, 3, 0 ;  Restore right to R1
212 : ADD 1, 2, 1 ;  R1 = left + right
213 : ADD 2, 1, 0 ;  Move left to R2
214 : LDC 1, 2(0) ;  Load integer literal into R1
215 : DIV 1, 2, 1 ;  R1 = left / right
216 : ADD 1, 2, 1 ;  R1 = left + right
217 : ST 1, 6(5) ;  Store argument 5 in callee frame
218 : LDA 6, 221(0) ;  Return address
219 : ST 6, 0(5) ;  Store RA in callee frame
220 : LDA 7, 227(0) ;  Call aLoop3
221 : LD 1, 7(5) ;  Load callee result
222 : LDC 2, 8(0) ;  Caller frame size
223 : SUB 5, 5, 2 ;  Pop callee frame
224 : ST 1, 6(5) ;  Store function result
225 : LD 6, 0(5) ;  Load return address
226 : LDA 7, 0(6) ;  Return to caller
227 : LDA 4, 4(5) ;  Compute callee frame base
228 : ADD 5, 4, 0 ;  Push callee frame
229 : LD 1, 5(5) ;  Load parameter 'root'
230 : ST 1, 1(5) ;  Store argument 0 in callee frame
231 : LD 1, 4(5) ;  Load parameter 'det'
232 : ST 1, 2(5) ;  Store argument 1 in callee frame
233 : LDA 6, 236(0) ;  Return address
234 : ST 6, 0(5) ;  Store RA in callee frame
235 : LDA 7, 541(0) ;  Call ISROOT
236 : LD 1, 3(5) ;  Load callee result
237 : LDC 2, 4(0) ;  Caller frame size
238 : SUB 5, 5, 2 ;  Pop callee frame
239 : ADD 2, 1, 0 ;  Move left to R2
240 : LDA 4, 3(5) ;  Compute callee frame base
241 : ADD 5, 4, 0 ;  Push callee frame
242 : LDC 1, 1(0) ;  Load integer literal into R1
243 : ADD 3, 1, 0 ;  Stash right in R3
244 : LD 1, 5(5) ;  Load parameter 'root'
245 : ADD 2, 1, 0 ;  Move left to R2
246 : ADD 1, 3, 0 ;  Restore right to R1
247 : ADD 1, 2, 1 ;  R1 = left + right
248 : ST 1, 1(5) ;  Store argument 0 in callee frame
249 : LDA 6, 252(0) ;  Return address
250 : ST 6, 0(5) ;  Store RA in callee frame
251 : LDA 7, 559(0) ;  Call EVEN
252 : LD 1, 2(5) ;  Load callee result
253 : LDC 2, 3(0) ;  Caller frame size
254 : SUB 5, 5, 2 ;  Pop callee frame
255 : MUL 1, 2, 1 ;  R1 = left AND right
256 : ADD 2, 1, 0 ;  Move left to R2
257 : LDA 4, 3(5) ;  Compute callee frame base
258 : ADD 5, 4, 0 ;  Push callee frame
259 : LD 1, 6(5) ;  Load parameter 'candidate'
260 : ST 1, 1(5) ;  Store argument 0 in callee frame
261 : LDA 6, 264(0) ;  Return address
262 : ST 6, 0(5) ;  Store RA in callee frame
263 : LDA 7, 339(0) ;  Call isExcellent
264 : LD 1, 2(5) ;  Load callee result
265 : LDC 2, 3(0) ;  Caller frame size
266 : SUB 5, 5, 2 ;  Pop callee frame
267 : MUL 1, 2, 1 ;  R1 = left AND right
268 : JEQ 1, 286(0) ;  If false, jump to ELSE
269 : LDA 4, 6(5) ;  Compute callee frame base
270 : ADD 5, 4, 0 ;  Push callee frame
271 : LD 1, 1(5) ;  Load parameter 'a'
272 : ST 1, 1(5) ;  Store argument 0 in callee frame
273 : LD 1, 2(5) ;  Load parameter 'n'
274 : ST 1, 2(5) ;  Store argument 1 in callee frame
275 : LD 1, 3(5) ;  Load parameter 'upper'
276 : ST 1, 3(5) ;  Store argument 2 in callee frame
277 : LD 1, 6(5) ;  Load parameter 'candidate'
278 : ST 1, 4(5) ;  Store argument 3 in callee frame
279 : LDA 6, 282(0) ;  Return address
280 : ST 6, 0(5) ;  Store RA in callee frame
281 : LDA 7, 308(0) ;  Call printCandidateAndContinue
282 : LD 1, 5(5) ;  Load callee result
283 : LDC 2, 6(0) ;  Caller frame size
284 : SUB 5, 5, 2 ;  Pop callee frame
285 : LDA 7, 305(0) ;  Skip ELSE
286 : LDA 4, 5(5) ;  Compute callee frame base
287 : ADD 5, 4, 0 ;  Push callee frame
288 : LDC 1, 1(0) ;  Load integer literal into R1
289 : ADD 3, 1, 0 ;  Stash right in R3
290 : LD 1, 1(5) ;  Load parameter 'a'
291 : ADD 2, 1, 0 ;  Move left to R2
292 : ADD 1, 3, 0 ;  Restore right to R1
293 : ADD 1, 2, 1 ;  R1 = left + right
294 : ST 1, 1(5) ;  Store argument 0 in callee frame
295 : LD 1, 2(5) ;  Load parameter 'n'
296 : ST 1, 2(5) ;  Store argument 1 in callee frame
297 : LD 1, 3(5) ;  Load parameter 'upper'
298 : ST 1, 3(5) ;  Store argument 2 in callee frame
299 : LDA 6, 302(0) ;  Return address
300 : ST 6, 0(5) ;  Store RA in callee frame
301 : LDA 7, 74(0) ;  Call aLoop
302 : LD 1, 4(5) ;  Load callee result
303 : LDC 2, 5(0) ;  Caller frame size
304 : SUB 5, 5, 2 ;  Pop callee frame
305 : ST 1, 7(5) ;  Store function result
306 : LD 6, 0(5) ;  Load return address
307 : LDA 7, 0(6) ;  Return to caller
308 : LDA 4, 3(5) ;  Compute callee frame base
309 : ADD 5, 4, 0 ;  Push callee frame
310 : LD 1, 4(5) ;  Load parameter 'candidate'
311 : ST 1, 1(5) ;  Store print arg in callee frame
312 : LDA 6, 315(0) ;  Return address
313 : ST 6, 0(5) ;  Store RA in callee frame
314 : LDA 7, 9(0) ;  Call print
315 : LDC 2, 3(0) ;  Caller frame size
316 : SUB 5, 5, 2 ;  Pop callee frame
317 : LDA 4, 5(5) ;  Compute callee frame base
318 : ADD 5, 4, 0 ;  Push callee frame
319 : LDC 1, 1(0) ;  Load integer literal into R1
320 : ADD 3, 1, 0 ;  Stash right in R3
321 : LD 1, 1(5) ;  Load parameter 'a'
322 : ADD 2, 1, 0 ;  Move left to R2
323 : ADD 1, 3, 0 ;  Restore right to R1
324 : ADD 1, 2, 1 ;  R1 = left + right
325 : ST 1, 1(5) ;  Store argument 0 in callee frame
326 : LD 1, 2(5) ;  Load parameter 'n'
327 : ST 1, 2(5) ;  Store argument 1 in callee frame
328 : LD 1, 3(5) ;  Load parameter 'upper'
329 : ST 1, 3(5) ;  Store argument 2 in callee frame
330 : LDA 6, 333(0) ;  Return address
331 : ST 6, 0(5) ;  Store RA in callee frame
332 : LDA 7, 74(0) ;  Call aLoop
333 : LD 1, 4(5) ;  Load callee result
334 : LDC 2, 5(0) ;  Caller frame size
335 : SUB 5, 5, 2 ;  Pop callee frame
336 : ST 1, 5(5) ;  Store function result
337 : LD 6, 0(5) ;  Load return address
338 : LDA 7, 0(6) ;  Return to caller
339 : LDA 4, 4(5) ;  Compute callee frame base
340 : ADD 5, 4, 0 ;  Push callee frame
341 : LD 1, 1(5) ;  Load parameter 'n'
342 : ST 1, 1(5) ;  Store argument 0 in callee frame
343 : LDA 4, 3(5) ;  Compute callee frame base
344 : ADD 5, 4, 0 ;  Push callee frame
345 : LD 1, 1(5) ;  Load parameter 'n'
346 : ST 1, 1(5) ;  Store argument 0 in callee frame
347 : LDA 6, 350(0) ;  Return address
348 : ST 6, 0(5) ;  Store RA in callee frame
349 : LDA 7, 505(0) ;  Call length
350 : LD 1, 2(5) ;  Load callee result
351 : LDC 2, 3(0) ;  Caller frame size
352 : SUB 5, 5, 2 ;  Pop callee frame
353 : ST 1, 2(5) ;  Store argument 1 in callee frame
354 : LDA 6, 357(0) ;  Return address
355 : ST 6, 0(5) ;  Store RA in callee frame
356 : LDA 7, 363(0) ;  Call isExcellentSwitch
357 : LD 1, 3(5) ;  Load callee result
358 : LDC 2, 4(0) ;  Caller frame size
359 : SUB 5, 5, 2 ;  Pop callee frame
360 : ST 1, 2(5) ;  Store function result
361 : LD 6, 0(5) ;  Load return address
362 : LDA 7, 0(6) ;  Return to caller
363 : LDA 4, 3(5) ;  Compute callee frame base
364 : ADD 5, 4, 0 ;  Push callee frame
365 : LD 1, 2(5) ;  Load parameter 'length'
366 : ST 1, 1(5) ;  Store argument 0 in callee frame
367 : LDA 6, 370(0) ;  Return address
368 : ST 6, 0(5) ;  Store RA in callee frame
369 : LDA 7, 754(0) ;  Call ODD
370 : LD 1, 2(5) ;  Load callee result
371 : LDC 2, 3(0) ;  Caller frame size
372 : SUB 5, 5, 2 ;  Pop callee frame
373 : JEQ 1, 376(0) ;  If false, jump to ELSE
374 : LDC 1, 0(0) ;  Load boolean literal into R1
375 : LDA 7, 415(0) ;  Skip ELSE
376 : LDA 4, 4(5) ;  Compute callee frame base
377 : ADD 5, 4, 0 ;  Push callee frame
378 : LDA 4, 3(5) ;  Compute callee frame base
379 : ADD 5, 4, 0 ;  Push callee frame
380 : LD 1, 1(5) ;  Load parameter 'n'
381 : ST 1, 1(5) ;  Store argument 0 in callee frame
382 : LDA 6, 385(0) ;  Return address
383 : ST 6, 0(5) ;  Store RA in callee frame
384 : LDA 7, 473(0) ;  Call a
385 : LD 1, 2(5) ;  Load callee result
386 : LDC 2, 3(0) ;  Caller frame size
387 : SUB 5, 5, 2 ;  Pop callee frame
388 : ST 1, 1(5) ;  Store argument 0 in callee frame
389 : LDA 4, 3(5) ;  Compute callee frame base
390 : ADD 5, 4, 0 ;  Push callee frame
391 : LD 1, 1(5) ;  Load parameter 'n'
392 : ST 1, 1(5) ;  Store argument 0 in callee frame
393 : LDA 6, 396(0) ;  Return address
394 : ST 6, 0(5) ;  Store RA in callee frame
395 : LDA 7, 435(0) ;  Call b
396 : LD 1, 2(5) ;  Load callee result
397 : LDC 2, 3(0) ;  Caller frame size
398 : SUB 5, 5, 2 ;  Pop callee frame
399 : ST 1, 2(5) ;  Store argument 1 in callee frame
400 : LDA 6, 403(0) ;  Return address
401 : ST 6, 0(5) ;  Store RA in callee frame
402 : LDA 7, 418(0) ;  Call excellentDiff
403 : LD 1, 3(5) ;  Load callee result
404 : LDC 2, 4(0) ;  Caller frame size
405 : SUB 5, 5, 2 ;  Pop callee frame
406 : ADD 3, 1, 0 ;  Stash right in R3
407 : LD 1, 1(5) ;  Load parameter 'n'
408 : ADD 2, 1, 0 ;  Move left to R2
409 : ADD 1, 3, 0 ;  Restore right to R1
410 : SUB 1, 2, 1 ;  left - right
411 : JEQ 1, 2(7) ;  if 0 then true
412 : LDC 1, 0(0) ;  false
413 : LDA 7, 1(7) ;  skip setting true
414 : LDC 1, 1(0) ;  true
415 : ST 1, 3(5) ;  Store function result
416 : LD 6, 0(5) ;  Load return address
417 : LDA 7, 0(6) ;  Return to caller
418 : LD 1, 2(5) ;  Load parameter 'b'
419 : ADD 3, 1, 0 ;  Stash right in R3
420 : LD 1, 2(5) ;  Load parameter 'b'
421 : ADD 2, 1, 0 ;  Move left to R2
422 : ADD 1, 3, 0 ;  Restore right to R1
423 : MUL 1, 2, 1 ;  R1 = left * right
424 : ADD 2, 1, 0 ;  Move left to R2
425 : LD 1, 1(5) ;  Load parameter 'a'
426 : ADD 3, 1, 0 ;  Stash right in R3
427 : LD 1, 1(5) ;  Load parameter 'a'
428 : ADD 2, 1, 0 ;  Move left to R2
429 : ADD 1, 3, 0 ;  Restore right to R1
430 : MUL 1, 2, 1 ;  R1 = left * right
431 : SUB 1, 2, 1 ;  R1 = left - right
432 : ST 1, 3(5) ;  Store function result
433 : LD 6, 0(5) ;  Load return address
434 : LDA 7, 0(6) ;  Return to caller
435 : LDA 4, 4(5) ;  Compute callee frame base
436 : ADD 5, 4, 0 ;  Push callee frame
437 : LD 1, 1(5) ;  Load parameter 'n'
438 : ST 1, 1(5) ;  Store argument 0 in callee frame
439 : LDA 4, 4(5) ;  Compute callee frame base
440 : ADD 5, 4, 0 ;  Push callee frame
441 : LDC 1, 10(0) ;  Load integer literal into R1
442 : ST 1, 1(5) ;  Store argument 0 in callee frame
443 : LDA 4, 3(5) ;  Compute callee frame base
444 : ADD 5, 4, 0 ;  Push callee frame
445 : LD 1, 1(5) ;  Load parameter 'n'
446 : ST 1, 1(5) ;  Store argument 0 in callee frame
447 : LDA 6, 450(0) ;  Return address
448 : ST 6, 0(5) ;  Store RA in callee frame
449 : LDA 7, 505(0) ;  Call length
450 : LD 1, 2(5) ;  Load callee result
451 : LDC 2, 3(0) ;  Caller frame size
452 : SUB 5, 5, 2 ;  Pop callee frame
453 : ADD 2, 1, 0 ;  Move left to R2
454 : LDC 1, 2(0) ;  Load integer literal into R1
455 : DIV 1, 2, 1 ;  R1 = left / right
456 : ST 1, 2(5) ;  Store argument 1 in callee frame
457 : LDA 6, 460(0) ;  Return address
458 : ST 6, 0(5) ;  Store RA in callee frame
459 : LDA 7, 798(0) ;  Call EXP
460 : LD 1, 3(5) ;  Load callee result
461 : LDC 2, 4(0) ;  Caller frame size
462 : SUB 5, 5, 2 ;  Pop callee frame
463 : ST 1, 2(5) ;  Store argument 1 in callee frame
464 : LDA 6, 467(0) ;  Return address
465 : ST 6, 0(5) ;  Store RA in callee frame
466 : LDA 7, 836(0) ;  Call MOD
467 : LD 1, 3(5) ;  Load callee result
468 : LDC 2, 4(0) ;  Caller frame size
469 : SUB 5, 5, 2 ;  Pop callee frame
470 : ST 1, 2(5) ;  Store function result
471 : LD 6, 0(5) ;  Load return address
472 : LDA 7, 0(6) ;  Return to caller
473 : LDA 4, 4(5) ;  Compute callee frame base
474 : ADD 5, 4, 0 ;  Push callee frame
475 : LDC 1, 10(0) ;  Load integer literal into R1
476 : ST 1, 1(5) ;  Store argument 0 in callee frame
477 : LDA 4, 3(5) ;  Compute callee frame base
478 : ADD 5, 4, 0 ;  Push callee frame
479 : LD 1, 1(5) ;  Load parameter 'n'
480 : ST 1, 1(5) ;  Store argument 0 in callee frame
481 : LDA 6, 484(0) ;  Return address
482 : ST 6, 0(5) ;  Store RA in callee frame
483 : LDA 7, 505(0) ;  Call length
484 : LD 1, 2(5) ;  Load callee result
485 : LDC 2, 3(0) ;  Caller frame size
486 : SUB 5, 5, 2 ;  Pop callee frame
487 : ADD 2, 1, 0 ;  Move left to R2
488 : LDC 1, 2(0) ;  Load integer literal into R1
489 : DIV 1, 2, 1 ;  R1 = left / right
490 : ST 1, 2(5) ;  Store argument 1 in callee frame
491 : LDA 6, 494(0) ;  Return address
492 : ST 6, 0(5) ;  Store RA in callee frame
493 : LDA 7, 798(0) ;  Call EXP
494 : LD 1, 3(5) ;  Load callee result
495 : LDC 2, 4(0) ;  Caller frame size
496 : SUB 5, 5, 2 ;  Pop callee frame
497 : ADD 3, 1, 0 ;  Stash right in R3
498 : LD 1, 1(5) ;  Load parameter 'n'
499 : ADD 2, 1, 0 ;  Move left to R2
500 : ADD 1, 3, 0 ;  Restore right to R1
501 : DIV 1, 2, 1 ;  R1 = left / right
502 : ST 1, 2(5) ;  Store function result
503 : LD 6, 0(5) ;  Load return address
504 : LDA 7, 0(6) ;  Return to caller
505 : LDC 1, 10(0) ;  Load integer literal into R1
506 : ADD 3, 1, 0 ;  Stash right in R3
507 : LD 1, 1(5) ;  Load parameter 'n'
508 : ADD 2, 1, 0 ;  Move left to R2
509 : ADD 1, 3, 0 ;  Restore right to R1
510 : SUB 1, 2, 1 ;  left - right
511 : JLT 1, 2(7) ;  if < 0 then true
512 : LDC 1, 0(0) ;  false
513 : LDA 7, 1(7) ;  skip setting true
514 : LDC 1, 1(0) ;  true
515 : JEQ 1, 518(0) ;  If false, jump to ELSE
516 : LDC 1, 1(0) ;  Load integer literal into R1
517 : LDA 7, 538(0) ;  Skip ELSE
518 : LDA 4, 3(5) ;  Compute callee frame base
519 : ADD 5, 4, 0 ;  Push callee frame
520 : LDC 1, 10(0) ;  Load integer literal into R1
521 : ADD 3, 1, 0 ;  Stash right in R3
522 : LD 1, 1(5) ;  Load parameter 'n'
523 : ADD 2, 1, 0 ;  Move left to R2
524 : ADD 1, 3, 0 ;  Restore right to R1
525 : DIV 1, 2, 1 ;  R1 = left / right
526 : ST 1, 1(5) ;  Store argument 0 in callee frame
527 : LDA 6, 530(0) ;  Return address
528 : ST 6, 0(5) ;  Store RA in callee frame
529 : LDA 7, 505(0) ;  Call length
530 : LD 1, 2(5) ;  Load callee result
531 : LDC 2, 3(0) ;  Caller frame size
532 : SUB 5, 5, 2 ;  Pop callee frame
533 : ADD 3, 1, 0 ;  Stash right in R3
534 : LDC 1, 1(0) ;  Load integer literal into R1
535 : ADD 2, 1, 0 ;  Move left to R2
536 : ADD 1, 3, 0 ;  Restore right to R1
537 : ADD 1, 2, 1 ;  R1 = left + right
538 : ST 1, 2(5) ;  Store function result
539 : LD 6, 0(5) ;  Load return address
540 : LDA 7, 0(6) ;  Return to caller
541 : LD 1, 1(5) ;  Load parameter 'r'
542 : ADD 3, 1, 0 ;  Stash right in R3
543 : LD 1, 1(5) ;  Load parameter 'r'
544 : ADD 2, 1, 0 ;  Move left to R2
545 : ADD 1, 3, 0 ;  Restore right to R1
546 : MUL 1, 2, 1 ;  R1 = left * right
547 : ADD 3, 1, 0 ;  Stash right in R3
548 : LD 1, 2(5) ;  Load parameter 'n'
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
559 : LDC 1, 2(0) ;  Load integer literal into R1
560 : ADD 3, 1, 0 ;  Stash right in R3
561 : LD 1, 1(5) ;  Load parameter 'n'
562 : ADD 2, 1, 0 ;  Move left to R2
563 : ADD 1, 3, 0 ;  Restore right to R1
564 : DIV 1, 2, 1 ;  R1 = left / right
565 : ADD 3, 1, 0 ;  Stash right in R3
566 : LDC 1, 2(0) ;  Load integer literal into R1
567 : ADD 2, 1, 0 ;  Move left to R2
568 : ADD 1, 3, 0 ;  Restore right to R1
569 : MUL 1, 2, 1 ;  R1 = left * right
570 : ADD 3, 1, 0 ;  Stash right in R3
571 : LD 1, 1(5) ;  Load parameter 'n'
572 : ADD 2, 1, 0 ;  Move left to R2
573 : ADD 1, 3, 0 ;  Restore right to R1
574 : SUB 1, 2, 1 ;  left - right
575 : JEQ 1, 2(7) ;  if 0 then true
576 : LDC 1, 0(0) ;  false
577 : LDA 7, 1(7) ;  skip setting true
578 : LDC 1, 1(0) ;  true
579 : ST 1, 2(5) ;  Store function result
580 : LD 6, 0(5) ;  Load return address
581 : LDA 7, 0(6) ;  Return to caller
582 : LDA 4, 4(5) ;  Compute callee frame base
583 : ADD 5, 4, 0 ;  Push callee frame
584 : LD 1, 4(5) ;  Load parameter 'mid'
585 : ADD 3, 1, 0 ;  Stash right in R3
586 : LD 1, 4(5) ;  Load parameter 'mid'
587 : ADD 2, 1, 0 ;  Move left to R2
588 : ADD 1, 3, 0 ;  Restore right to R1
589 : MUL 1, 2, 1 ;  R1 = left * right
590 : ST 1, 1(5) ;  Store argument 0 in callee frame
591 : LD 1, 1(5) ;  Load parameter 'n'
592 : ST 1, 2(5) ;  Store argument 1 in callee frame
593 : LDA 6, 596(0) ;  Return address
594 : ST 6, 0(5) ;  Store RA in callee frame
595 : LDA 7, 729(0) ;  Call LE
596 : LD 1, 3(5) ;  Load callee result
597 : LDC 2, 4(0) ;  Caller frame size
598 : SUB 5, 5, 2 ;  Pop callee frame
599 : JEQ 1, 615(0) ;  If false, jump to ELSE
600 : LDA 4, 5(5) ;  Compute callee frame base
601 : ADD 5, 4, 0 ;  Push callee frame
602 : LD 1, 1(5) ;  Load parameter 'n'
603 : ST 1, 1(5) ;  Store argument 0 in callee frame
604 : LD 1, 4(5) ;  Load parameter 'mid'
605 : ST 1, 2(5) ;  Store argument 1 in callee frame
606 : LD 1, 3(5) ;  Load parameter 'high'
607 : ST 1, 3(5) ;  Store argument 2 in callee frame
608 : LDA 6, 611(0) ;  Return address
609 : ST 6, 0(5) ;  Store RA in callee frame
610 : LDA 7, 632(0) ;  Call SQRTSEARCH
611 : LD 1, 4(5) ;  Load callee result
612 : LDC 2, 5(0) ;  Caller frame size
613 : SUB 5, 5, 2 ;  Pop callee frame
614 : LDA 7, 629(0) ;  Skip ELSE
615 : LDA 4, 5(5) ;  Compute callee frame base
616 : ADD 5, 4, 0 ;  Push callee frame
617 : LD 1, 1(5) ;  Load parameter 'n'
618 : ST 1, 1(5) ;  Store argument 0 in callee frame
619 : LD 1, 2(5) ;  Load parameter 'low'
620 : ST 1, 2(5) ;  Store argument 1 in callee frame
621 : LD 1, 4(5) ;  Load parameter 'mid'
622 : ST 1, 3(5) ;  Store argument 2 in callee frame
623 : LDA 6, 626(0) ;  Return address
624 : ST 6, 0(5) ;  Store RA in callee frame
625 : LDA 7, 632(0) ;  Call SQRTSEARCH
626 : LD 1, 4(5) ;  Load callee result
627 : LDC 2, 5(0) ;  Caller frame size
628 : SUB 5, 5, 2 ;  Pop callee frame
629 : ST 1, 5(5) ;  Store function result
630 : LD 6, 0(5) ;  Load return address
631 : LDA 7, 0(6) ;  Return to caller
632 : LDA 4, 4(5) ;  Compute callee frame base
633 : ADD 5, 4, 0 ;  Push callee frame
634 : LD 1, 3(5) ;  Load parameter 'high'
635 : ST 1, 1(5) ;  Store argument 0 in callee frame
636 : LDC 1, 1(0) ;  Load integer literal into R1
637 : ADD 3, 1, 0 ;  Stash right in R3
638 : LD 1, 2(5) ;  Load parameter 'low'
639 : ADD 2, 1, 0 ;  Move left to R2
640 : ADD 1, 3, 0 ;  Restore right to R1
641 : ADD 1, 2, 1 ;  R1 = left + right
642 : ST 1, 2(5) ;  Store argument 1 in callee frame
643 : LDA 6, 646(0) ;  Return address
644 : ST 6, 0(5) ;  Store RA in callee frame
645 : LDA 7, 729(0) ;  Call LE
646 : LD 1, 3(5) ;  Load callee result
647 : LDC 2, 4(0) ;  Caller frame size
648 : SUB 5, 5, 2 ;  Pop callee frame
649 : JEQ 1, 685(0) ;  If false, jump to ELSE
650 : LDA 4, 4(5) ;  Compute callee frame base
651 : ADD 5, 4, 0 ;  Push callee frame
652 : LD 1, 2(5) ;  Load parameter 'low'
653 : ADD 3, 1, 0 ;  Stash right in R3
654 : LD 1, 2(5) ;  Load parameter 'low'
655 : ADD 2, 1, 0 ;  Move left to R2
656 : ADD 1, 3, 0 ;  Restore right to R1
657 : MUL 1, 2, 1 ;  R1 = left * right
658 : ADD 3, 1, 0 ;  Stash right in R3
659 : LD 1, 1(5) ;  Load parameter 'n'
660 : ADD 2, 1, 0 ;  Move left to R2
661 : ADD 1, 3, 0 ;  Restore right to R1
662 : SUB 1, 2, 1 ;  R1 = left - right
663 : ST 1, 1(5) ;  Store argument 0 in callee frame
664 : LD 1, 3(5) ;  Load parameter 'high'
665 : ADD 3, 1, 0 ;  Stash right in R3
666 : LD 1, 3(5) ;  Load parameter 'high'
667 : ADD 2, 1, 0 ;  Move left to R2
668 : ADD 1, 3, 0 ;  Restore right to R1
669 : MUL 1, 2, 1 ;  R1 = left * right
670 : ADD 2, 1, 0 ;  Move left to R2
671 : LD 1, 1(5) ;  Load parameter 'n'
672 : SUB 1, 2, 1 ;  R1 = left - right
673 : ST 1, 2(5) ;  Store argument 1 in callee frame
674 : LDA 6, 677(0) ;  Return address
675 : ST 6, 0(5) ;  Store RA in callee frame
676 : LDA 7, 729(0) ;  Call LE
677 : LD 1, 3(5) ;  Load callee result
678 : LDC 2, 4(0) ;  Caller frame size
679 : SUB 5, 5, 2 ;  Pop callee frame
680 : JEQ 1, 683(0) ;  If false, jump to ELSE
681 : LD 1, 2(5) ;  Load parameter 'low'
682 : LDA 7, 684(0) ;  Skip ELSE
683 : LD 1, 3(5) ;  Load parameter 'high'
684 : LDA 7, 709(0) ;  Skip ELSE
685 : LDA 4, 6(5) ;  Compute callee frame base
686 : ADD 5, 4, 0 ;  Push callee frame
687 : LD 1, 1(5) ;  Load parameter 'n'
688 : ST 1, 1(5) ;  Store argument 0 in callee frame
689 : LD 1, 2(5) ;  Load parameter 'low'
690 : ST 1, 2(5) ;  Store argument 1 in callee frame
691 : LD 1, 3(5) ;  Load parameter 'high'
692 : ST 1, 3(5) ;  Store argument 2 in callee frame
693 : LD 1, 3(5) ;  Load parameter 'high'
694 : ADD 3, 1, 0 ;  Stash right in R3
695 : LD 1, 2(5) ;  Load parameter 'low'
696 : ADD 2, 1, 0 ;  Move left to R2
697 : ADD 1, 3, 0 ;  Restore right to R1
698 : ADD 1, 2, 1 ;  R1 = left + right
699 : ADD 2, 1, 0 ;  Move left to R2
700 : LDC 1, 2(0) ;  Load integer literal into R1
701 : DIV 1, 2, 1 ;  R1 = left / right
702 : ST 1, 4(5) ;  Store argument 3 in callee frame
703 : LDA 6, 706(0) ;  Return address
704 : ST 6, 0(5) ;  Store RA in callee frame
705 : LDA 7, 582(0) ;  Call SQRTSPLIT
706 : LD 1, 5(5) ;  Load callee result
707 : LDC 2, 6(0) ;  Caller frame size
708 : SUB 5, 5, 2 ;  Pop callee frame
709 : ST 1, 4(5) ;  Store function result
710 : LD 6, 0(5) ;  Load return address
711 : LDA 7, 0(6) ;  Return to caller
712 : LDA 4, 5(5) ;  Compute callee frame base
713 : ADD 5, 4, 0 ;  Push callee frame
714 : LD 1, 1(5) ;  Load parameter 'n'
715 : ST 1, 1(5) ;  Store argument 0 in callee frame
716 : LDC 1, 0(0) ;  Load integer literal into R1
717 : ST 1, 2(5) ;  Store argument 1 in callee frame
718 : LD 1, 1(5) ;  Load parameter 'n'
719 : ST 1, 3(5) ;  Store argument 2 in callee frame
720 : LDA 6, 723(0) ;  Return address
721 : ST 6, 0(5) ;  Store RA in callee frame
722 : LDA 7, 632(0) ;  Call SQRTSEARCH
723 : LD 1, 4(5) ;  Load callee result
724 : LDC 2, 5(0) ;  Caller frame size
725 : SUB 5, 5, 2 ;  Pop callee frame
726 : ST 1, 2(5) ;  Store function result
727 : LD 6, 0(5) ;  Load return address
728 : LDA 7, 0(6) ;  Return to caller
729 : LD 1, 2(5) ;  Load parameter 'q'
730 : ADD 3, 1, 0 ;  Stash right in R3
731 : LD 1, 1(5) ;  Load parameter 'p'
732 : ADD 2, 1, 0 ;  Move left to R2
733 : ADD 1, 3, 0 ;  Restore right to R1
734 : SUB 1, 2, 1 ;  left - right
735 : JLT 1, 2(7) ;  if < 0 then true
736 : LDC 1, 0(0) ;  false
737 : LDA 7, 1(7) ;  skip setting true
738 : LDC 1, 1(0) ;  true
739 : ADD 2, 1, 0 ;  Move left to R2
740 : LD 1, 2(5) ;  Load parameter 'q'
741 : ADD 3, 1, 0 ;  Stash right in R3
742 : LD 1, 1(5) ;  Load parameter 'p'
743 : ADD 2, 1, 0 ;  Move left to R2
744 : ADD 1, 3, 0 ;  Restore right to R1
745 : SUB 1, 2, 1 ;  left - right
746 : JEQ 1, 2(7) ;  if 0 then true
747 : LDC 1, 0(0) ;  false
748 : LDA 7, 1(7) ;  skip setting true
749 : LDC 1, 1(0) ;  true
750 : ADD 1, 2, 1 ;  R1 = left OR right
751 : ST 1, 3(5) ;  Store function result
752 : LD 6, 0(5) ;  Load return address
753 : LDA 7, 0(6) ;  Return to caller
754 : LD 1, 1(5) ;  Load parameter 'n'
755 : ADD 3, 1, 0 ;  Stash right in R3
756 : LDC 1, 0(0) ;  Load integer literal into R1
757 : ADD 2, 1, 0 ;  Move left to R2
758 : ADD 1, 3, 0 ;  Restore right to R1
759 : SUB 1, 2, 1 ;  left - right
760 : JLT 1, 2(7) ;  if < 0 then true
761 : LDC 1, 0(0) ;  false
762 : LDA 7, 1(7) ;  skip setting true
763 : LDC 1, 1(0) ;  true
764 : JEQ 1, 784(0) ;  If false, jump to ELSE
765 : LDC 1, 2(0) ;  Load integer literal into R1
766 : ADD 3, 1, 0 ;  Stash right in R3
767 : LD 1, 1(5) ;  Load parameter 'n'
768 : ADD 2, 1, 0 ;  Move left to R2
769 : ADD 1, 3, 0 ;  Restore right to R1
770 : DIV 1, 2, 1 ;  R1 = left / right
771 : ADD 3, 1, 0 ;  Stash right in R3
772 : LDC 1, 2(0) ;  Load integer literal into R1
773 : ADD 2, 1, 0 ;  Move left to R2
774 : ADD 1, 3, 0 ;  Restore right to R1
775 : MUL 1, 2, 1 ;  R1 = left * right
776 : ADD 2, 1, 0 ;  Move left to R2
777 : LD 1, 1(5) ;  Load parameter 'n'
778 : SUB 1, 2, 1 ;  left - right
779 : JLT 1, 2(7) ;  if < 0 then true
780 : LDC 1, 0(0) ;  false
781 : LDA 7, 1(7) ;  skip setting true
782 : LDC 1, 1(0) ;  true
783 : LDA 7, 795(0) ;  Skip ELSE
784 : LDA 4, 3(5) ;  Compute callee frame base
785 : ADD 5, 4, 0 ;  Push callee frame
786 : LD 1, 1(5) ;  Load parameter 'n'
787 : SUB 1, 0, 1 ;  Negate R1
788 : ST 1, 1(5) ;  Store argument 0 in callee frame
789 : LDA 6, 792(0) ;  Return address
790 : ST 6, 0(5) ;  Store RA in callee frame
791 : LDA 7, 754(0) ;  Call ODD
792 : LD 1, 2(5) ;  Load callee result
793 : LDC 2, 3(0) ;  Caller frame size
794 : SUB 5, 5, 2 ;  Pop callee frame
795 : ST 1, 2(5) ;  Store function result
796 : LD 6, 0(5) ;  Load return address
797 : LDA 7, 0(6) ;  Return to caller
798 : LDC 1, 0(0) ;  Load integer literal into R1
799 : ADD 3, 1, 0 ;  Stash right in R3
800 : LD 1, 2(5) ;  Load parameter 'n'
801 : ADD 2, 1, 0 ;  Move left to R2
802 : ADD 1, 3, 0 ;  Restore right to R1
803 : SUB 1, 2, 1 ;  left - right
804 : JEQ 1, 2(7) ;  if 0 then true
805 : LDC 1, 0(0) ;  false
806 : LDA 7, 1(7) ;  skip setting true
807 : LDC 1, 1(0) ;  true
808 : JEQ 1, 811(0) ;  If false, jump to ELSE
809 : LDC 1, 1(0) ;  Load integer literal into R1
810 : LDA 7, 833(0) ;  Skip ELSE
811 : LDA 4, 4(5) ;  Compute callee frame base
812 : ADD 5, 4, 0 ;  Push callee frame
813 : LD 1, 1(5) ;  Load parameter 'm'
814 : ST 1, 1(5) ;  Store argument 0 in callee frame
815 : LDC 1, 1(0) ;  Load integer literal into R1
816 : ADD 3, 1, 0 ;  Stash right in R3
817 : LD 1, 2(5) ;  Load parameter 'n'
818 : ADD 2, 1, 0 ;  Move left to R2
819 : ADD 1, 3, 0 ;  Restore right to R1
820 : SUB 1, 2, 1 ;  R1 = left - right
821 : ST 1, 2(5) ;  Store argument 1 in callee frame
822 : LDA 6, 825(0) ;  Return address
823 : ST 6, 0(5) ;  Store RA in callee frame
824 : LDA 7, 798(0) ;  Call EXP
825 : LD 1, 3(5) ;  Load callee result
826 : LDC 2, 4(0) ;  Caller frame size
827 : SUB 5, 5, 2 ;  Pop callee frame
828 : ADD 3, 1, 0 ;  Stash right in R3
829 : LD 1, 1(5) ;  Load parameter 'm'
830 : ADD 2, 1, 0 ;  Move left to R2
831 : ADD 1, 3, 0 ;  Restore right to R1
832 : MUL 1, 2, 1 ;  R1 = left * right
833 : ST 1, 3(5) ;  Store function result
834 : LD 6, 0(5) ;  Load return address
835 : LDA 7, 0(6) ;  Return to caller
836 : LD 1, 2(5) ;  Load parameter 'n'
837 : ADD 3, 1, 0 ;  Stash right in R3
838 : LD 1, 1(5) ;  Load parameter 'm'
839 : ADD 2, 1, 0 ;  Move left to R2
840 : ADD 1, 3, 0 ;  Restore right to R1
841 : DIV 1, 2, 1 ;  R1 = left / right
842 : ADD 3, 1, 0 ;  Stash right in R3
843 : LD 1, 2(5) ;  Load parameter 'n'
844 : ADD 2, 1, 0 ;  Move left to R2
845 : ADD 1, 3, 0 ;  Restore right to R1
846 : MUL 1, 2, 1 ;  R1 = left * right
847 : ADD 3, 1, 0 ;  Stash right in R3
848 : LD 1, 1(5) ;  Load parameter 'm'
849 : ADD 2, 1, 0 ;  Move left to R2
850 : ADD 1, 3, 0 ;  Restore right to R1
851 : SUB 1, 2, 1 ;  R1 = left - right
852 : ST 1, 3(5) ;  Store function result
853 : LD 6, 0(5) ;  Load return address
854 : LDA 7, 0(6) ;  Return to caller
