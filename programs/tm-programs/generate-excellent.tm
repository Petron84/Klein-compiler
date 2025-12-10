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
12 : LDC 1, 10(0) ;  Load integer literal into R1
13 : LDA 4, 4(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDC 1, 2(0) ;  Load integer literal into R1
16 : ADD 3, 1, 0 ;  Stash right in R3
17 : LD 1, 1(5) ;  Load parameter 'length'
18 : ADD 2, 1, 0 ;  Move left to R2
19 : ADD 1, 3, 0 ;  Restore right to R1
20 : DIV 1, 2, 1 ;  R1 = left / right
21 : ADD 2, 1, 0 ;  Move left to R2
22 : LDC 1, 1(0) ;  Load integer literal into R1
23 : SUB 1, 2, 1 ;  R1 = left - right
24 : LDA 4, 4(5) ;  [JIT] callee frame base
25 : ST 1, 2(4) ;  Store arg 1 in callee frame
26 : LDA 4, 4(5) ;  [JIT] callee frame base
27 : LDA 6, 31(0) ;  Return address
28 : ST 6, 0(4) ;  Store RA in callee frame
29 : ADD 5, 4, 0 ;  Push callee frame
30 : LDA 7, 877(0) ;  Call EXP
31 : LD 1, 3(5) ;  Load callee result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop callee frame
34 : LDA 4, 4(5) ;  [JIT] callee frame base
35 : ST 1, 1(4) ;  Store arg 0 in callee frame
36 : LDC 1, 2(0) ;  Load integer literal into R1
37 : ADD 3, 1, 0 ;  Stash right in R3
38 : LD 1, 1(5) ;  Load parameter 'length'
39 : ADD 2, 1, 0 ;  Move left to R2
40 : ADD 1, 3, 0 ;  Restore right to R1
41 : DIV 1, 2, 1 ;  R1 = left / right
42 : LDA 4, 4(5) ;  [JIT] callee frame base
43 : ST 1, 2(4) ;  Store arg 1 in callee frame
44 : LDA 4, 4(5) ;  [JIT] callee frame base
45 : LDA 6, 49(0) ;  Return address
46 : ST 6, 0(4) ;  Store RA in callee frame
47 : ADD 5, 4, 0 ;  Push callee frame
48 : LDA 7, 56(0) ;  Call createLoop
49 : LD 1, 3(5) ;  Load callee result
50 : LDC 2, 4(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop callee frame
52 : ST 1, 2(5) ;  Store result into caller frame
53 : LD 1, 2(5) ;  Load main return value
54 : LD 6, 0(5) ;  Load return address
55 : LDA 7, 0(6) ;  Return from main
56 : LD 1, 1(5) ;  Load parameter 'a'
57 : LDA 4, 5(5) ;  [JIT] callee frame base
58 : ST 1, 1(4) ;  Store arg 0 in callee frame
59 : LD 1, 2(5) ;  Load parameter 'n'
60 : LDA 4, 5(5) ;  [JIT] callee frame base
61 : ST 1, 2(4) ;  Store arg 1 in callee frame
62 : LD 1, 1(5) ;  Load parameter 'a'
63 : ADD 3, 1, 0 ;  Stash right in R3
64 : LDC 1, 10(0) ;  Load integer literal into R1
65 : ADD 2, 1, 0 ;  Move left to R2
66 : ADD 1, 3, 0 ;  Restore right to R1
67 : MUL 1, 2, 1 ;  R1 = left * right
68 : LDA 4, 5(5) ;  [JIT] callee frame base
69 : ST 1, 3(4) ;  Store arg 2 in callee frame
70 : LDA 4, 5(5) ;  [JIT] callee frame base
71 : LDA 6, 75(0) ;  Return address
72 : ST 6, 0(4) ;  Store RA in callee frame
73 : ADD 5, 4, 0 ;  Push callee frame
74 : LDA 7, 81(0) ;  Call aLoop
75 : LD 1, 4(5) ;  Load callee result
76 : LDC 2, 5(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : ST 1, 3(5) ;  Store function result
79 : LD 6, 0(5) ;  Load return address
80 : LDA 7, 0(6) ;  Return to caller
81 : LD 1, 3(5) ;  Load parameter 'upper'
82 : ADD 3, 1, 0 ;  Stash right in R3
83 : LD 1, 1(5) ;  Load parameter 'a'
84 : ADD 2, 1, 0 ;  Move left to R2
85 : ADD 1, 3, 0 ;  Restore right to R1
86 : SUB 1, 2, 1 ;  left - right
87 : JLT 1, 2(7) ;  if < 0 then true
88 : LDC 1, 0(0) ;  false
89 : LDA 7, 1(7) ;  skip setting true
90 : LDC 1, 1(0) ;  true
91 : JEQ 1, 158(0) ;  If false, jump to ELSE
92 : LD 1, 1(5) ;  Load parameter 'a'
93 : LDA 4, 6(5) ;  [JIT] callee frame base
94 : ST 1, 1(4) ;  Store arg 0 in callee frame
95 : LD 1, 2(5) ;  Load parameter 'n'
96 : LDA 4, 6(5) ;  [JIT] callee frame base
97 : ST 1, 2(4) ;  Store arg 1 in callee frame
98 : LD 1, 3(5) ;  Load parameter 'upper'
99 : LDA 4, 6(5) ;  [JIT] callee frame base
100 : ST 1, 3(4) ;  Store arg 2 in callee frame
101 : LD 1, 1(5) ;  Load parameter 'a'
102 : LDA 4, 4(5) ;  [JIT] callee frame base
103 : ST 1, 1(4) ;  Store arg 0 in callee frame
104 : LDC 1, 2(0) ;  Load integer literal into R1
105 : LDA 4, 4(5) ;  [JIT] callee frame base
106 : ST 1, 2(4) ;  Store arg 1 in callee frame
107 : LDA 4, 4(5) ;  [JIT] callee frame base
108 : LDA 6, 112(0) ;  Return address
109 : ST 6, 0(4) ;  Store RA in callee frame
110 : ADD 5, 4, 0 ;  Push callee frame
111 : LDA 7, 877(0) ;  Call EXP
112 : LD 1, 3(5) ;  Load callee result
113 : LDC 2, 4(0) ;  Caller frame size
114 : SUB 5, 5, 2 ;  Pop callee frame
115 : ADD 3, 1, 0 ;  Stash right in R3
116 : LDC 1, 4(0) ;  Load integer literal into R1
117 : ADD 2, 1, 0 ;  Move left to R2
118 : ADD 1, 3, 0 ;  Restore right to R1
119 : MUL 1, 2, 1 ;  R1 = left * right
120 : ADD 2, 1, 0 ;  Move left to R2
121 : LDC 1, 10(0) ;  Load integer literal into R1
122 : LDA 4, 4(5) ;  [JIT] callee frame base
123 : ST 1, 1(4) ;  Store arg 0 in callee frame
124 : LD 1, 2(5) ;  Load parameter 'n'
125 : LDA 4, 4(5) ;  [JIT] callee frame base
126 : ST 1, 2(4) ;  Store arg 1 in callee frame
127 : LDA 4, 4(5) ;  [JIT] callee frame base
128 : LDA 6, 132(0) ;  Return address
129 : ST 6, 0(4) ;  Store RA in callee frame
130 : ADD 5, 4, 0 ;  Push callee frame
131 : LDA 7, 877(0) ;  Call EXP
132 : LD 1, 3(5) ;  Load callee result
133 : LDC 2, 4(0) ;  Caller frame size
134 : SUB 5, 5, 2 ;  Pop callee frame
135 : ADD 3, 1, 0 ;  Stash right in R3
136 : LDC 1, 4(0) ;  Load integer literal into R1
137 : ADD 2, 1, 0 ;  Move left to R2
138 : ADD 1, 3, 0 ;  Restore right to R1
139 : MUL 1, 2, 1 ;  R1 = left * right
140 : ADD 2, 1, 0 ;  Move left to R2
141 : LD 1, 1(5) ;  Load parameter 'a'
142 : MUL 1, 2, 1 ;  R1 = left * right
143 : ADD 1, 2, 1 ;  R1 = left + right
144 : ADD 2, 1, 0 ;  Move left to R2
145 : LDC 1, 1(0) ;  Load integer literal into R1
146 : ADD 1, 2, 1 ;  R1 = left + right
147 : LDA 4, 6(5) ;  [JIT] callee frame base
148 : ST 1, 4(4) ;  Store arg 3 in callee frame
149 : LDA 4, 6(5) ;  [JIT] callee frame base
150 : LDA 6, 154(0) ;  Return address
151 : ST 6, 0(4) ;  Store RA in callee frame
152 : ADD 5, 4, 0 ;  Push callee frame
153 : LDA 7, 162(0) ;  Call aLoop1
154 : LD 1, 5(5) ;  Load callee result
155 : LDC 2, 6(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop callee frame
157 : LDA 7, 159(0) ;  Skip ELSE
158 : LDC 1, 1(0) ;  Load boolean literal into R1
159 : ST 1, 4(5) ;  Store function result
160 : LD 6, 0(5) ;  Load return address
161 : LDA 7, 0(6) ;  Return to caller
162 : LD 1, 1(5) ;  Load parameter 'a'
163 : LDA 4, 7(5) ;  [JIT] callee frame base
164 : ST 1, 1(4) ;  Store arg 0 in callee frame
165 : LD 1, 2(5) ;  Load parameter 'n'
166 : LDA 4, 7(5) ;  [JIT] callee frame base
167 : ST 1, 2(4) ;  Store arg 1 in callee frame
168 : LD 1, 3(5) ;  Load parameter 'upper'
169 : LDA 4, 7(5) ;  [JIT] callee frame base
170 : ST 1, 3(4) ;  Store arg 2 in callee frame
171 : LD 1, 4(5) ;  Load parameter 'det'
172 : LDA 4, 7(5) ;  [JIT] callee frame base
173 : ST 1, 4(4) ;  Store arg 3 in callee frame
174 : LD 1, 4(5) ;  Load parameter 'det'
175 : LDA 4, 3(5) ;  [JIT] callee frame base
176 : ST 1, 1(4) ;  Store arg 0 in callee frame
177 : LDA 4, 3(5) ;  [JIT] callee frame base
178 : LDA 6, 182(0) ;  Return address
179 : ST 6, 0(4) ;  Store RA in callee frame
180 : ADD 5, 4, 0 ;  Push callee frame
181 : LDA 7, 787(0) ;  Call SQRT
182 : LD 1, 2(5) ;  Load callee result
183 : LDC 2, 3(0) ;  Caller frame size
184 : SUB 5, 5, 2 ;  Pop callee frame
185 : LDA 4, 7(5) ;  [JIT] callee frame base
186 : ST 1, 5(4) ;  Store arg 4 in callee frame
187 : LDA 4, 7(5) ;  [JIT] callee frame base
188 : LDA 6, 192(0) ;  Return address
189 : ST 6, 0(4) ;  Store RA in callee frame
190 : ADD 5, 4, 0 ;  Push callee frame
191 : LDA 7, 198(0) ;  Call aLoop2
192 : LD 1, 6(5) ;  Load callee result
193 : LDC 2, 7(0) ;  Caller frame size
194 : SUB 5, 5, 2 ;  Pop callee frame
195 : ST 1, 5(5) ;  Store function result
196 : LD 6, 0(5) ;  Load return address
197 : LDA 7, 0(6) ;  Return to caller
198 : LD 1, 1(5) ;  Load parameter 'a'
199 : LDA 4, 8(5) ;  [JIT] callee frame base
200 : ST 1, 1(4) ;  Store arg 0 in callee frame
201 : LD 1, 2(5) ;  Load parameter 'n'
202 : LDA 4, 8(5) ;  [JIT] callee frame base
203 : ST 1, 2(4) ;  Store arg 1 in callee frame
204 : LD 1, 3(5) ;  Load parameter 'upper'
205 : LDA 4, 8(5) ;  [JIT] callee frame base
206 : ST 1, 3(4) ;  Store arg 2 in callee frame
207 : LD 1, 4(5) ;  Load parameter 'det'
208 : LDA 4, 8(5) ;  [JIT] callee frame base
209 : ST 1, 4(4) ;  Store arg 3 in callee frame
210 : LD 1, 5(5) ;  Load parameter 'root'
211 : LDA 4, 8(5) ;  [JIT] callee frame base
212 : ST 1, 5(4) ;  Store arg 4 in callee frame
213 : LDC 1, 10(0) ;  Load integer literal into R1
214 : LDA 4, 4(5) ;  [JIT] callee frame base
215 : ST 1, 1(4) ;  Store arg 0 in callee frame
216 : LD 1, 2(5) ;  Load parameter 'n'
217 : LDA 4, 4(5) ;  [JIT] callee frame base
218 : ST 1, 2(4) ;  Store arg 1 in callee frame
219 : LDA 4, 4(5) ;  [JIT] callee frame base
220 : LDA 6, 224(0) ;  Return address
221 : ST 6, 0(4) ;  Store RA in callee frame
222 : ADD 5, 4, 0 ;  Push callee frame
223 : LDA 7, 877(0) ;  Call EXP
224 : LD 1, 3(5) ;  Load callee result
225 : LDC 2, 4(0) ;  Caller frame size
226 : SUB 5, 5, 2 ;  Pop callee frame
227 : ADD 3, 1, 0 ;  Stash right in R3
228 : LD 1, 1(5) ;  Load parameter 'a'
229 : ADD 2, 1, 0 ;  Move left to R2
230 : ADD 1, 3, 0 ;  Restore right to R1
231 : MUL 1, 2, 1 ;  R1 = left * right
232 : ADD 2, 1, 0 ;  Move left to R2
233 : LDC 1, 1(0) ;  Load integer literal into R1
234 : ADD 3, 1, 0 ;  Stash right in R3
235 : LD 1, 5(5) ;  Load parameter 'root'
236 : ADD 2, 1, 0 ;  Move left to R2
237 : ADD 1, 3, 0 ;  Restore right to R1
238 : ADD 1, 2, 1 ;  R1 = left + right
239 : ADD 2, 1, 0 ;  Move left to R2
240 : LDC 1, 2(0) ;  Load integer literal into R1
241 : DIV 1, 2, 1 ;  R1 = left / right
242 : ADD 1, 2, 1 ;  R1 = left + right
243 : LDA 4, 8(5) ;  [JIT] callee frame base
244 : ST 1, 6(4) ;  Store arg 5 in callee frame
245 : LDA 4, 8(5) ;  [JIT] callee frame base
246 : LDA 6, 250(0) ;  Return address
247 : ST 6, 0(4) ;  Store RA in callee frame
248 : ADD 5, 4, 0 ;  Push callee frame
249 : LDA 7, 256(0) ;  Call aLoop3
250 : LD 1, 7(5) ;  Load callee result
251 : LDC 2, 8(0) ;  Caller frame size
252 : SUB 5, 5, 2 ;  Pop callee frame
253 : ST 1, 6(5) ;  Store function result
254 : LD 6, 0(5) ;  Load return address
255 : LDA 7, 0(6) ;  Return to caller
256 : LD 1, 5(5) ;  Load parameter 'root'
257 : LDA 4, 4(5) ;  [JIT] callee frame base
258 : ST 1, 1(4) ;  Store arg 0 in callee frame
259 : LD 1, 4(5) ;  Load parameter 'det'
260 : LDA 4, 4(5) ;  [JIT] callee frame base
261 : ST 1, 2(4) ;  Store arg 1 in callee frame
262 : LDA 4, 4(5) ;  [JIT] callee frame base
263 : LDA 6, 267(0) ;  Return address
264 : ST 6, 0(4) ;  Store RA in callee frame
265 : ADD 5, 4, 0 ;  Push callee frame
266 : LDA 7, 600(0) ;  Call ISROOT
267 : LD 1, 3(5) ;  Load callee result
268 : LDC 2, 4(0) ;  Caller frame size
269 : SUB 5, 5, 2 ;  Pop callee frame
270 : ADD 2, 1, 0 ;  Move left to R2
271 : LDC 1, 1(0) ;  Load integer literal into R1
272 : ADD 3, 1, 0 ;  Stash right in R3
273 : LD 1, 5(5) ;  Load parameter 'root'
274 : ADD 2, 1, 0 ;  Move left to R2
275 : ADD 1, 3, 0 ;  Restore right to R1
276 : ADD 1, 2, 1 ;  R1 = left + right
277 : LDA 4, 3(5) ;  [JIT] callee frame base
278 : ST 1, 1(4) ;  Store arg 0 in callee frame
279 : LDA 4, 3(5) ;  [JIT] callee frame base
280 : LDA 6, 284(0) ;  Return address
281 : ST 6, 0(4) ;  Store RA in callee frame
282 : ADD 5, 4, 0 ;  Push callee frame
283 : LDA 7, 618(0) ;  Call EVEN
284 : LD 1, 2(5) ;  Load callee result
285 : LDC 2, 3(0) ;  Caller frame size
286 : SUB 5, 5, 2 ;  Pop callee frame
287 : MUL 1, 2, 1 ;  R1 = left AND right
288 : ADD 2, 1, 0 ;  Move left to R2
289 : LD 1, 6(5) ;  Load parameter 'candidate'
290 : LDA 4, 3(5) ;  [JIT] callee frame base
291 : ST 1, 1(4) ;  Store arg 0 in callee frame
292 : LDA 4, 3(5) ;  [JIT] callee frame base
293 : LDA 6, 297(0) ;  Return address
294 : ST 6, 0(4) ;  Store RA in callee frame
295 : ADD 5, 4, 0 ;  Push callee frame
296 : LDA 7, 381(0) ;  Call isExcellent
297 : LD 1, 2(5) ;  Load callee result
298 : LDC 2, 3(0) ;  Caller frame size
299 : SUB 5, 5, 2 ;  Pop callee frame
300 : MUL 1, 2, 1 ;  R1 = left AND right
301 : JEQ 1, 323(0) ;  If false, jump to ELSE
302 : LD 1, 1(5) ;  Load parameter 'a'
303 : LDA 4, 6(5) ;  [JIT] callee frame base
304 : ST 1, 1(4) ;  Store arg 0 in callee frame
305 : LD 1, 2(5) ;  Load parameter 'n'
306 : LDA 4, 6(5) ;  [JIT] callee frame base
307 : ST 1, 2(4) ;  Store arg 1 in callee frame
308 : LD 1, 3(5) ;  Load parameter 'upper'
309 : LDA 4, 6(5) ;  [JIT] callee frame base
310 : ST 1, 3(4) ;  Store arg 2 in callee frame
311 : LD 1, 6(5) ;  Load parameter 'candidate'
312 : LDA 4, 6(5) ;  [JIT] callee frame base
313 : ST 1, 4(4) ;  Store arg 3 in callee frame
314 : LDA 4, 6(5) ;  [JIT] callee frame base
315 : LDA 6, 319(0) ;  Return address
316 : ST 6, 0(4) ;  Store RA in callee frame
317 : ADD 5, 4, 0 ;  Push callee frame
318 : LDA 7, 348(0) ;  Call printCandidateAndContinue
319 : LD 1, 5(5) ;  Load callee result
320 : LDC 2, 6(0) ;  Caller frame size
321 : SUB 5, 5, 2 ;  Pop callee frame
322 : LDA 7, 345(0) ;  Skip ELSE
323 : LDC 1, 1(0) ;  Load integer literal into R1
324 : ADD 3, 1, 0 ;  Stash right in R3
325 : LD 1, 1(5) ;  Load parameter 'a'
326 : ADD 2, 1, 0 ;  Move left to R2
327 : ADD 1, 3, 0 ;  Restore right to R1
328 : ADD 1, 2, 1 ;  R1 = left + right
329 : LDA 4, 5(5) ;  [JIT] callee frame base
330 : ST 1, 1(4) ;  Store arg 0 in callee frame
331 : LD 1, 2(5) ;  Load parameter 'n'
332 : LDA 4, 5(5) ;  [JIT] callee frame base
333 : ST 1, 2(4) ;  Store arg 1 in callee frame
334 : LD 1, 3(5) ;  Load parameter 'upper'
335 : LDA 4, 5(5) ;  [JIT] callee frame base
336 : ST 1, 3(4) ;  Store arg 2 in callee frame
337 : LDA 4, 5(5) ;  [JIT] callee frame base
338 : LDA 6, 342(0) ;  Return address
339 : ST 6, 0(4) ;  Store RA in callee frame
340 : ADD 5, 4, 0 ;  Push callee frame
341 : LDA 7, 81(0) ;  Call aLoop
342 : LD 1, 4(5) ;  Load callee result
343 : LDC 2, 5(0) ;  Caller frame size
344 : SUB 5, 5, 2 ;  Pop callee frame
345 : ST 1, 7(5) ;  Store function result
346 : LD 6, 0(5) ;  Load return address
347 : LDA 7, 0(6) ;  Return to caller
348 : LD 1, 4(5) ;  Load parameter 'candidate'
349 : LDA 4, 3(5) ;  [JIT] callee frame base
350 : LDA 6, 354(0) ;  Return address
351 : ST 6, 0(4) ;  Store RA in callee frame
352 : ADD 5, 4, 0 ;  Push callee frame
353 : LDA 7, 9(0) ;  Call print
354 : LDC 2, 3(0) ;  Caller frame size
355 : SUB 5, 5, 2 ;  Pop callee frame
356 : LDC 1, 1(0) ;  Load integer literal into R1
357 : ADD 3, 1, 0 ;  Stash right in R3
358 : LD 1, 1(5) ;  Load parameter 'a'
359 : ADD 2, 1, 0 ;  Move left to R2
360 : ADD 1, 3, 0 ;  Restore right to R1
361 : ADD 1, 2, 1 ;  R1 = left + right
362 : LDA 4, 5(5) ;  [JIT] callee frame base
363 : ST 1, 1(4) ;  Store arg 0 in callee frame
364 : LD 1, 2(5) ;  Load parameter 'n'
365 : LDA 4, 5(5) ;  [JIT] callee frame base
366 : ST 1, 2(4) ;  Store arg 1 in callee frame
367 : LD 1, 3(5) ;  Load parameter 'upper'
368 : LDA 4, 5(5) ;  [JIT] callee frame base
369 : ST 1, 3(4) ;  Store arg 2 in callee frame
370 : LDA 4, 5(5) ;  [JIT] callee frame base
371 : LDA 6, 375(0) ;  Return address
372 : ST 6, 0(4) ;  Store RA in callee frame
373 : ADD 5, 4, 0 ;  Push callee frame
374 : LDA 7, 81(0) ;  Call aLoop
375 : LD 1, 4(5) ;  Load callee result
376 : LDC 2, 5(0) ;  Caller frame size
377 : SUB 5, 5, 2 ;  Pop callee frame
378 : ST 1, 5(5) ;  Store function result
379 : LD 6, 0(5) ;  Load return address
380 : LDA 7, 0(6) ;  Return to caller
381 : LD 1, 1(5) ;  Load parameter 'n'
382 : LDA 4, 4(5) ;  [JIT] callee frame base
383 : ST 1, 1(4) ;  Store arg 0 in callee frame
384 : LD 1, 1(5) ;  Load parameter 'n'
385 : LDA 4, 3(5) ;  [JIT] callee frame base
386 : ST 1, 1(4) ;  Store arg 0 in callee frame
387 : LDA 4, 3(5) ;  [JIT] callee frame base
388 : LDA 6, 392(0) ;  Return address
389 : ST 6, 0(4) ;  Store RA in callee frame
390 : ADD 5, 4, 0 ;  Push callee frame
391 : LDA 7, 563(0) ;  Call length
392 : LD 1, 2(5) ;  Load callee result
393 : LDC 2, 3(0) ;  Caller frame size
394 : SUB 5, 5, 2 ;  Pop callee frame
395 : LDA 4, 4(5) ;  [JIT] callee frame base
396 : ST 1, 2(4) ;  Store arg 1 in callee frame
397 : LDA 4, 4(5) ;  [JIT] callee frame base
398 : LDA 6, 402(0) ;  Return address
399 : ST 6, 0(4) ;  Store RA in callee frame
400 : ADD 5, 4, 0 ;  Push callee frame
401 : LDA 7, 408(0) ;  Call isExcellentSwitch
402 : LD 1, 3(5) ;  Load callee result
403 : LDC 2, 4(0) ;  Caller frame size
404 : SUB 5, 5, 2 ;  Pop callee frame
405 : ST 1, 2(5) ;  Store function result
406 : LD 6, 0(5) ;  Load return address
407 : LDA 7, 0(6) ;  Return to caller
408 : LD 1, 2(5) ;  Load parameter 'length'
409 : LDA 4, 3(5) ;  [JIT] callee frame base
410 : ST 1, 1(4) ;  Store arg 0 in callee frame
411 : LDA 4, 3(5) ;  [JIT] callee frame base
412 : LDA 6, 416(0) ;  Return address
413 : ST 6, 0(4) ;  Store RA in callee frame
414 : ADD 5, 4, 0 ;  Push callee frame
415 : LDA 7, 832(0) ;  Call ODD
416 : LD 1, 2(5) ;  Load callee result
417 : LDC 2, 3(0) ;  Caller frame size
418 : SUB 5, 5, 2 ;  Pop callee frame
419 : JEQ 1, 422(0) ;  If false, jump to ELSE
420 : LDC 1, 0(0) ;  Load boolean literal into R1
421 : LDA 7, 465(0) ;  Skip ELSE
422 : LD 1, 1(5) ;  Load parameter 'n'
423 : LDA 4, 3(5) ;  [JIT] callee frame base
424 : ST 1, 1(4) ;  Store arg 0 in callee frame
425 : LDA 4, 3(5) ;  [JIT] callee frame base
426 : LDA 6, 430(0) ;  Return address
427 : ST 6, 0(4) ;  Store RA in callee frame
428 : ADD 5, 4, 0 ;  Push callee frame
429 : LDA 7, 528(0) ;  Call a
430 : LD 1, 2(5) ;  Load callee result
431 : LDC 2, 3(0) ;  Caller frame size
432 : SUB 5, 5, 2 ;  Pop callee frame
433 : LDA 4, 4(5) ;  [JIT] callee frame base
434 : ST 1, 1(4) ;  Store arg 0 in callee frame
435 : LD 1, 1(5) ;  Load parameter 'n'
436 : LDA 4, 3(5) ;  [JIT] callee frame base
437 : ST 1, 1(4) ;  Store arg 0 in callee frame
438 : LDA 4, 3(5) ;  [JIT] callee frame base
439 : LDA 6, 443(0) ;  Return address
440 : ST 6, 0(4) ;  Store RA in callee frame
441 : ADD 5, 4, 0 ;  Push callee frame
442 : LDA 7, 485(0) ;  Call b
443 : LD 1, 2(5) ;  Load callee result
444 : LDC 2, 3(0) ;  Caller frame size
445 : SUB 5, 5, 2 ;  Pop callee frame
446 : LDA 4, 4(5) ;  [JIT] callee frame base
447 : ST 1, 2(4) ;  Store arg 1 in callee frame
448 : LDA 4, 4(5) ;  [JIT] callee frame base
449 : LDA 6, 453(0) ;  Return address
450 : ST 6, 0(4) ;  Store RA in callee frame
451 : ADD 5, 4, 0 ;  Push callee frame
452 : LDA 7, 468(0) ;  Call excellentDiff
453 : LD 1, 3(5) ;  Load callee result
454 : LDC 2, 4(0) ;  Caller frame size
455 : SUB 5, 5, 2 ;  Pop callee frame
456 : ADD 3, 1, 0 ;  Stash right in R3
457 : LD 1, 1(5) ;  Load parameter 'n'
458 : ADD 2, 1, 0 ;  Move left to R2
459 : ADD 1, 3, 0 ;  Restore right to R1
460 : SUB 1, 2, 1 ;  left - right
461 : JEQ 1, 2(7) ;  if 0 then true
462 : LDC 1, 0(0) ;  false
463 : LDA 7, 1(7) ;  skip setting true
464 : LDC 1, 1(0) ;  true
465 : ST 1, 3(5) ;  Store function result
466 : LD 6, 0(5) ;  Load return address
467 : LDA 7, 0(6) ;  Return to caller
468 : LD 1, 2(5) ;  Load parameter 'b'
469 : ADD 3, 1, 0 ;  Stash right in R3
470 : LD 1, 2(5) ;  Load parameter 'b'
471 : ADD 2, 1, 0 ;  Move left to R2
472 : ADD 1, 3, 0 ;  Restore right to R1
473 : MUL 1, 2, 1 ;  R1 = left * right
474 : ADD 2, 1, 0 ;  Move left to R2
475 : LD 1, 1(5) ;  Load parameter 'a'
476 : ADD 3, 1, 0 ;  Stash right in R3
477 : LD 1, 1(5) ;  Load parameter 'a'
478 : ADD 2, 1, 0 ;  Move left to R2
479 : ADD 1, 3, 0 ;  Restore right to R1
480 : MUL 1, 2, 1 ;  R1 = left * right
481 : SUB 1, 2, 1 ;  R1 = left - right
482 : ST 1, 3(5) ;  Store function result
483 : LD 6, 0(5) ;  Load return address
484 : LDA 7, 0(6) ;  Return to caller
485 : LD 1, 1(5) ;  Load parameter 'n'
486 : LDA 4, 4(5) ;  [JIT] callee frame base
487 : ST 1, 1(4) ;  Store arg 0 in callee frame
488 : LDC 1, 10(0) ;  Load integer literal into R1
489 : LDA 4, 4(5) ;  [JIT] callee frame base
490 : ST 1, 1(4) ;  Store arg 0 in callee frame
491 : LD 1, 1(5) ;  Load parameter 'n'
492 : LDA 4, 3(5) ;  [JIT] callee frame base
493 : ST 1, 1(4) ;  Store arg 0 in callee frame
494 : LDA 4, 3(5) ;  [JIT] callee frame base
495 : LDA 6, 499(0) ;  Return address
496 : ST 6, 0(4) ;  Store RA in callee frame
497 : ADD 5, 4, 0 ;  Push callee frame
498 : LDA 7, 563(0) ;  Call length
499 : LD 1, 2(5) ;  Load callee result
500 : LDC 2, 3(0) ;  Caller frame size
501 : SUB 5, 5, 2 ;  Pop callee frame
502 : ADD 2, 1, 0 ;  Move left to R2
503 : LDC 1, 2(0) ;  Load integer literal into R1
504 : DIV 1, 2, 1 ;  R1 = left / right
505 : LDA 4, 4(5) ;  [JIT] callee frame base
506 : ST 1, 2(4) ;  Store arg 1 in callee frame
507 : LDA 4, 4(5) ;  [JIT] callee frame base
508 : LDA 6, 512(0) ;  Return address
509 : ST 6, 0(4) ;  Store RA in callee frame
510 : ADD 5, 4, 0 ;  Push callee frame
511 : LDA 7, 877(0) ;  Call EXP
512 : LD 1, 3(5) ;  Load callee result
513 : LDC 2, 4(0) ;  Caller frame size
514 : SUB 5, 5, 2 ;  Pop callee frame
515 : LDA 4, 4(5) ;  [JIT] callee frame base
516 : ST 1, 2(4) ;  Store arg 1 in callee frame
517 : LDA 4, 4(5) ;  [JIT] callee frame base
518 : LDA 6, 522(0) ;  Return address
519 : ST 6, 0(4) ;  Store RA in callee frame
520 : ADD 5, 4, 0 ;  Push callee frame
521 : LDA 7, 917(0) ;  Call MOD
522 : LD 1, 3(5) ;  Load callee result
523 : LDC 2, 4(0) ;  Caller frame size
524 : SUB 5, 5, 2 ;  Pop callee frame
525 : ST 1, 2(5) ;  Store function result
526 : LD 6, 0(5) ;  Load return address
527 : LDA 7, 0(6) ;  Return to caller
528 : LDC 1, 10(0) ;  Load integer literal into R1
529 : LDA 4, 4(5) ;  [JIT] callee frame base
530 : ST 1, 1(4) ;  Store arg 0 in callee frame
531 : LD 1, 1(5) ;  Load parameter 'n'
532 : LDA 4, 3(5) ;  [JIT] callee frame base
533 : ST 1, 1(4) ;  Store arg 0 in callee frame
534 : LDA 4, 3(5) ;  [JIT] callee frame base
535 : LDA 6, 539(0) ;  Return address
536 : ST 6, 0(4) ;  Store RA in callee frame
537 : ADD 5, 4, 0 ;  Push callee frame
538 : LDA 7, 563(0) ;  Call length
539 : LD 1, 2(5) ;  Load callee result
540 : LDC 2, 3(0) ;  Caller frame size
541 : SUB 5, 5, 2 ;  Pop callee frame
542 : ADD 2, 1, 0 ;  Move left to R2
543 : LDC 1, 2(0) ;  Load integer literal into R1
544 : DIV 1, 2, 1 ;  R1 = left / right
545 : LDA 4, 4(5) ;  [JIT] callee frame base
546 : ST 1, 2(4) ;  Store arg 1 in callee frame
547 : LDA 4, 4(5) ;  [JIT] callee frame base
548 : LDA 6, 552(0) ;  Return address
549 : ST 6, 0(4) ;  Store RA in callee frame
550 : ADD 5, 4, 0 ;  Push callee frame
551 : LDA 7, 877(0) ;  Call EXP
552 : LD 1, 3(5) ;  Load callee result
553 : LDC 2, 4(0) ;  Caller frame size
554 : SUB 5, 5, 2 ;  Pop callee frame
555 : ADD 3, 1, 0 ;  Stash right in R3
556 : LD 1, 1(5) ;  Load parameter 'n'
557 : ADD 2, 1, 0 ;  Move left to R2
558 : ADD 1, 3, 0 ;  Restore right to R1
559 : DIV 1, 2, 1 ;  R1 = left / right
560 : ST 1, 2(5) ;  Store function result
561 : LD 6, 0(5) ;  Load return address
562 : LDA 7, 0(6) ;  Return to caller
563 : LDC 1, 10(0) ;  Load integer literal into R1
564 : ADD 3, 1, 0 ;  Stash right in R3
565 : LD 1, 1(5) ;  Load parameter 'n'
566 : ADD 2, 1, 0 ;  Move left to R2
567 : ADD 1, 3, 0 ;  Restore right to R1
568 : SUB 1, 2, 1 ;  left - right
569 : JLT 1, 2(7) ;  if < 0 then true
570 : LDC 1, 0(0) ;  false
571 : LDA 7, 1(7) ;  skip setting true
572 : LDC 1, 1(0) ;  true
573 : JEQ 1, 576(0) ;  If false, jump to ELSE
574 : LDC 1, 1(0) ;  Load integer literal into R1
575 : LDA 7, 597(0) ;  Skip ELSE
576 : LDC 1, 10(0) ;  Load integer literal into R1
577 : ADD 3, 1, 0 ;  Stash right in R3
578 : LD 1, 1(5) ;  Load parameter 'n'
579 : ADD 2, 1, 0 ;  Move left to R2
580 : ADD 1, 3, 0 ;  Restore right to R1
581 : DIV 1, 2, 1 ;  R1 = left / right
582 : LDA 4, 3(5) ;  [JIT] callee frame base
583 : ST 1, 1(4) ;  Store arg 0 in callee frame
584 : LDA 4, 3(5) ;  [JIT] callee frame base
585 : LDA 6, 589(0) ;  Return address
586 : ST 6, 0(4) ;  Store RA in callee frame
587 : ADD 5, 4, 0 ;  Push callee frame
588 : LDA 7, 563(0) ;  Call length
589 : LD 1, 2(5) ;  Load callee result
590 : LDC 2, 3(0) ;  Caller frame size
591 : SUB 5, 5, 2 ;  Pop callee frame
592 : ADD 3, 1, 0 ;  Stash right in R3
593 : LDC 1, 1(0) ;  Load integer literal into R1
594 : ADD 2, 1, 0 ;  Move left to R2
595 : ADD 1, 3, 0 ;  Restore right to R1
596 : ADD 1, 2, 1 ;  R1 = left + right
597 : ST 1, 2(5) ;  Store function result
598 : LD 6, 0(5) ;  Load return address
599 : LDA 7, 0(6) ;  Return to caller
600 : LD 1, 1(5) ;  Load parameter 'r'
601 : ADD 3, 1, 0 ;  Stash right in R3
602 : LD 1, 1(5) ;  Load parameter 'r'
603 : ADD 2, 1, 0 ;  Move left to R2
604 : ADD 1, 3, 0 ;  Restore right to R1
605 : MUL 1, 2, 1 ;  R1 = left * right
606 : ADD 3, 1, 0 ;  Stash right in R3
607 : LD 1, 2(5) ;  Load parameter 'n'
608 : ADD 2, 1, 0 ;  Move left to R2
609 : ADD 1, 3, 0 ;  Restore right to R1
610 : SUB 1, 2, 1 ;  left - right
611 : JEQ 1, 2(7) ;  if 0 then true
612 : LDC 1, 0(0) ;  false
613 : LDA 7, 1(7) ;  skip setting true
614 : LDC 1, 1(0) ;  true
615 : ST 1, 3(5) ;  Store function result
616 : LD 6, 0(5) ;  Load return address
617 : LDA 7, 0(6) ;  Return to caller
618 : LDC 1, 2(0) ;  Load integer literal into R1
619 : ADD 3, 1, 0 ;  Stash right in R3
620 : LD 1, 1(5) ;  Load parameter 'n'
621 : ADD 2, 1, 0 ;  Move left to R2
622 : ADD 1, 3, 0 ;  Restore right to R1
623 : DIV 1, 2, 1 ;  R1 = left / right
624 : ADD 3, 1, 0 ;  Stash right in R3
625 : LDC 1, 2(0) ;  Load integer literal into R1
626 : ADD 2, 1, 0 ;  Move left to R2
627 : ADD 1, 3, 0 ;  Restore right to R1
628 : MUL 1, 2, 1 ;  R1 = left * right
629 : ADD 3, 1, 0 ;  Stash right in R3
630 : LD 1, 1(5) ;  Load parameter 'n'
631 : ADD 2, 1, 0 ;  Move left to R2
632 : ADD 1, 3, 0 ;  Restore right to R1
633 : SUB 1, 2, 1 ;  left - right
634 : JEQ 1, 2(7) ;  if 0 then true
635 : LDC 1, 0(0) ;  false
636 : LDA 7, 1(7) ;  skip setting true
637 : LDC 1, 1(0) ;  true
638 : ST 1, 2(5) ;  Store function result
639 : LD 6, 0(5) ;  Load return address
640 : LDA 7, 0(6) ;  Return to caller
641 : LD 1, 4(5) ;  Load parameter 'mid'
642 : ADD 3, 1, 0 ;  Stash right in R3
643 : LD 1, 4(5) ;  Load parameter 'mid'
644 : ADD 2, 1, 0 ;  Move left to R2
645 : ADD 1, 3, 0 ;  Restore right to R1
646 : MUL 1, 2, 1 ;  R1 = left * right
647 : LDA 4, 4(5) ;  [JIT] callee frame base
648 : ST 1, 1(4) ;  Store arg 0 in callee frame
649 : LD 1, 1(5) ;  Load parameter 'n'
650 : LDA 4, 4(5) ;  [JIT] callee frame base
651 : ST 1, 2(4) ;  Store arg 1 in callee frame
652 : LDA 4, 4(5) ;  [JIT] callee frame base
653 : LDA 6, 657(0) ;  Return address
654 : ST 6, 0(4) ;  Store RA in callee frame
655 : ADD 5, 4, 0 ;  Push callee frame
656 : LDA 7, 807(0) ;  Call LE
657 : LD 1, 3(5) ;  Load callee result
658 : LDC 2, 4(0) ;  Caller frame size
659 : SUB 5, 5, 2 ;  Pop callee frame
660 : JEQ 1, 679(0) ;  If false, jump to ELSE
661 : LD 1, 1(5) ;  Load parameter 'n'
662 : LDA 4, 5(5) ;  [JIT] callee frame base
663 : ST 1, 1(4) ;  Store arg 0 in callee frame
664 : LD 1, 4(5) ;  Load parameter 'mid'
665 : LDA 4, 5(5) ;  [JIT] callee frame base
666 : ST 1, 2(4) ;  Store arg 1 in callee frame
667 : LD 1, 3(5) ;  Load parameter 'high'
668 : LDA 4, 5(5) ;  [JIT] callee frame base
669 : ST 1, 3(4) ;  Store arg 2 in callee frame
670 : LDA 4, 5(5) ;  [JIT] callee frame base
671 : LDA 6, 675(0) ;  Return address
672 : ST 6, 0(4) ;  Store RA in callee frame
673 : ADD 5, 4, 0 ;  Push callee frame
674 : LDA 7, 699(0) ;  Call SQRTSEARCH
675 : LD 1, 4(5) ;  Load callee result
676 : LDC 2, 5(0) ;  Caller frame size
677 : SUB 5, 5, 2 ;  Pop callee frame
678 : LDA 7, 696(0) ;  Skip ELSE
679 : LD 1, 1(5) ;  Load parameter 'n'
680 : LDA 4, 5(5) ;  [JIT] callee frame base
681 : ST 1, 1(4) ;  Store arg 0 in callee frame
682 : LD 1, 2(5) ;  Load parameter 'low'
683 : LDA 4, 5(5) ;  [JIT] callee frame base
684 : ST 1, 2(4) ;  Store arg 1 in callee frame
685 : LD 1, 4(5) ;  Load parameter 'mid'
686 : LDA 4, 5(5) ;  [JIT] callee frame base
687 : ST 1, 3(4) ;  Store arg 2 in callee frame
688 : LDA 4, 5(5) ;  [JIT] callee frame base
689 : LDA 6, 693(0) ;  Return address
690 : ST 6, 0(4) ;  Store RA in callee frame
691 : ADD 5, 4, 0 ;  Push callee frame
692 : LDA 7, 699(0) ;  Call SQRTSEARCH
693 : LD 1, 4(5) ;  Load callee result
694 : LDC 2, 5(0) ;  Caller frame size
695 : SUB 5, 5, 2 ;  Pop callee frame
696 : ST 1, 5(5) ;  Store function result
697 : LD 6, 0(5) ;  Load return address
698 : LDA 7, 0(6) ;  Return to caller
699 : LD 1, 3(5) ;  Load parameter 'high'
700 : LDA 4, 4(5) ;  [JIT] callee frame base
701 : ST 1, 1(4) ;  Store arg 0 in callee frame
702 : LDC 1, 1(0) ;  Load integer literal into R1
703 : ADD 3, 1, 0 ;  Stash right in R3
704 : LD 1, 2(5) ;  Load parameter 'low'
705 : ADD 2, 1, 0 ;  Move left to R2
706 : ADD 1, 3, 0 ;  Restore right to R1
707 : ADD 1, 2, 1 ;  R1 = left + right
708 : LDA 4, 4(5) ;  [JIT] callee frame base
709 : ST 1, 2(4) ;  Store arg 1 in callee frame
710 : LDA 4, 4(5) ;  [JIT] callee frame base
711 : LDA 6, 715(0) ;  Return address
712 : ST 6, 0(4) ;  Store RA in callee frame
713 : ADD 5, 4, 0 ;  Push callee frame
714 : LDA 7, 807(0) ;  Call LE
715 : LD 1, 3(5) ;  Load callee result
716 : LDC 2, 4(0) ;  Caller frame size
717 : SUB 5, 5, 2 ;  Pop callee frame
718 : JEQ 1, 756(0) ;  If false, jump to ELSE
719 : LD 1, 2(5) ;  Load parameter 'low'
720 : ADD 3, 1, 0 ;  Stash right in R3
721 : LD 1, 2(5) ;  Load parameter 'low'
722 : ADD 2, 1, 0 ;  Move left to R2
723 : ADD 1, 3, 0 ;  Restore right to R1
724 : MUL 1, 2, 1 ;  R1 = left * right
725 : ADD 3, 1, 0 ;  Stash right in R3
726 : LD 1, 1(5) ;  Load parameter 'n'
727 : ADD 2, 1, 0 ;  Move left to R2
728 : ADD 1, 3, 0 ;  Restore right to R1
729 : SUB 1, 2, 1 ;  R1 = left - right
730 : LDA 4, 4(5) ;  [JIT] callee frame base
731 : ST 1, 1(4) ;  Store arg 0 in callee frame
732 : LD 1, 3(5) ;  Load parameter 'high'
733 : ADD 3, 1, 0 ;  Stash right in R3
734 : LD 1, 3(5) ;  Load parameter 'high'
735 : ADD 2, 1, 0 ;  Move left to R2
736 : ADD 1, 3, 0 ;  Restore right to R1
737 : MUL 1, 2, 1 ;  R1 = left * right
738 : ADD 2, 1, 0 ;  Move left to R2
739 : LD 1, 1(5) ;  Load parameter 'n'
740 : SUB 1, 2, 1 ;  R1 = left - right
741 : LDA 4, 4(5) ;  [JIT] callee frame base
742 : ST 1, 2(4) ;  Store arg 1 in callee frame
743 : LDA 4, 4(5) ;  [JIT] callee frame base
744 : LDA 6, 748(0) ;  Return address
745 : ST 6, 0(4) ;  Store RA in callee frame
746 : ADD 5, 4, 0 ;  Push callee frame
747 : LDA 7, 807(0) ;  Call LE
748 : LD 1, 3(5) ;  Load callee result
749 : LDC 2, 4(0) ;  Caller frame size
750 : SUB 5, 5, 2 ;  Pop callee frame
751 : JEQ 1, 754(0) ;  If false, jump to ELSE
752 : LD 1, 2(5) ;  Load parameter 'low'
753 : LDA 7, 755(0) ;  Skip ELSE
754 : LD 1, 3(5) ;  Load parameter 'high'
755 : LDA 7, 784(0) ;  Skip ELSE
756 : LD 1, 1(5) ;  Load parameter 'n'
757 : LDA 4, 6(5) ;  [JIT] callee frame base
758 : ST 1, 1(4) ;  Store arg 0 in callee frame
759 : LD 1, 2(5) ;  Load parameter 'low'
760 : LDA 4, 6(5) ;  [JIT] callee frame base
761 : ST 1, 2(4) ;  Store arg 1 in callee frame
762 : LD 1, 3(5) ;  Load parameter 'high'
763 : LDA 4, 6(5) ;  [JIT] callee frame base
764 : ST 1, 3(4) ;  Store arg 2 in callee frame
765 : LD 1, 3(5) ;  Load parameter 'high'
766 : ADD 3, 1, 0 ;  Stash right in R3
767 : LD 1, 2(5) ;  Load parameter 'low'
768 : ADD 2, 1, 0 ;  Move left to R2
769 : ADD 1, 3, 0 ;  Restore right to R1
770 : ADD 1, 2, 1 ;  R1 = left + right
771 : ADD 2, 1, 0 ;  Move left to R2
772 : LDC 1, 2(0) ;  Load integer literal into R1
773 : DIV 1, 2, 1 ;  R1 = left / right
774 : LDA 4, 6(5) ;  [JIT] callee frame base
775 : ST 1, 4(4) ;  Store arg 3 in callee frame
776 : LDA 4, 6(5) ;  [JIT] callee frame base
777 : LDA 6, 781(0) ;  Return address
778 : ST 6, 0(4) ;  Store RA in callee frame
779 : ADD 5, 4, 0 ;  Push callee frame
780 : LDA 7, 641(0) ;  Call SQRTSPLIT
781 : LD 1, 5(5) ;  Load callee result
782 : LDC 2, 6(0) ;  Caller frame size
783 : SUB 5, 5, 2 ;  Pop callee frame
784 : ST 1, 4(5) ;  Store function result
785 : LD 6, 0(5) ;  Load return address
786 : LDA 7, 0(6) ;  Return to caller
787 : LD 1, 1(5) ;  Load parameter 'n'
788 : LDA 4, 5(5) ;  [JIT] callee frame base
789 : ST 1, 1(4) ;  Store arg 0 in callee frame
790 : LDC 1, 0(0) ;  Load integer literal into R1
791 : LDA 4, 5(5) ;  [JIT] callee frame base
792 : ST 1, 2(4) ;  Store arg 1 in callee frame
793 : LD 1, 1(5) ;  Load parameter 'n'
794 : LDA 4, 5(5) ;  [JIT] callee frame base
795 : ST 1, 3(4) ;  Store arg 2 in callee frame
796 : LDA 4, 5(5) ;  [JIT] callee frame base
797 : LDA 6, 801(0) ;  Return address
798 : ST 6, 0(4) ;  Store RA in callee frame
799 : ADD 5, 4, 0 ;  Push callee frame
800 : LDA 7, 699(0) ;  Call SQRTSEARCH
801 : LD 1, 4(5) ;  Load callee result
802 : LDC 2, 5(0) ;  Caller frame size
803 : SUB 5, 5, 2 ;  Pop callee frame
804 : ST 1, 2(5) ;  Store function result
805 : LD 6, 0(5) ;  Load return address
806 : LDA 7, 0(6) ;  Return to caller
807 : LD 1, 2(5) ;  Load parameter 'q'
808 : ADD 3, 1, 0 ;  Stash right in R3
809 : LD 1, 1(5) ;  Load parameter 'p'
810 : ADD 2, 1, 0 ;  Move left to R2
811 : ADD 1, 3, 0 ;  Restore right to R1
812 : SUB 1, 2, 1 ;  left - right
813 : JLT 1, 2(7) ;  if < 0 then true
814 : LDC 1, 0(0) ;  false
815 : LDA 7, 1(7) ;  skip setting true
816 : LDC 1, 1(0) ;  true
817 : ADD 2, 1, 0 ;  Move left to R2
818 : LD 1, 2(5) ;  Load parameter 'q'
819 : ADD 3, 1, 0 ;  Stash right in R3
820 : LD 1, 1(5) ;  Load parameter 'p'
821 : ADD 2, 1, 0 ;  Move left to R2
822 : ADD 1, 3, 0 ;  Restore right to R1
823 : SUB 1, 2, 1 ;  left - right
824 : JEQ 1, 2(7) ;  if 0 then true
825 : LDC 1, 0(0) ;  false
826 : LDA 7, 1(7) ;  skip setting true
827 : LDC 1, 1(0) ;  true
828 : ADD 1, 2, 1 ;  R1 = left OR right
829 : ST 1, 3(5) ;  Store function result
830 : LD 6, 0(5) ;  Load return address
831 : LDA 7, 0(6) ;  Return to caller
832 : LD 1, 1(5) ;  Load parameter 'n'
833 : ADD 3, 1, 0 ;  Stash right in R3
834 : LDC 1, 0(0) ;  Load integer literal into R1
835 : ADD 2, 1, 0 ;  Move left to R2
836 : ADD 1, 3, 0 ;  Restore right to R1
837 : SUB 1, 2, 1 ;  left - right
838 : JLT 1, 2(7) ;  if < 0 then true
839 : LDC 1, 0(0) ;  false
840 : LDA 7, 1(7) ;  skip setting true
841 : LDC 1, 1(0) ;  true
842 : JEQ 1, 862(0) ;  If false, jump to ELSE
843 : LDC 1, 2(0) ;  Load integer literal into R1
844 : ADD 3, 1, 0 ;  Stash right in R3
845 : LD 1, 1(5) ;  Load parameter 'n'
846 : ADD 2, 1, 0 ;  Move left to R2
847 : ADD 1, 3, 0 ;  Restore right to R1
848 : DIV 1, 2, 1 ;  R1 = left / right
849 : ADD 3, 1, 0 ;  Stash right in R3
850 : LDC 1, 2(0) ;  Load integer literal into R1
851 : ADD 2, 1, 0 ;  Move left to R2
852 : ADD 1, 3, 0 ;  Restore right to R1
853 : MUL 1, 2, 1 ;  R1 = left * right
854 : ADD 2, 1, 0 ;  Move left to R2
855 : LD 1, 1(5) ;  Load parameter 'n'
856 : SUB 1, 2, 1 ;  left - right
857 : JLT 1, 2(7) ;  if < 0 then true
858 : LDC 1, 0(0) ;  false
859 : LDA 7, 1(7) ;  skip setting true
860 : LDC 1, 1(0) ;  true
861 : LDA 7, 874(0) ;  Skip ELSE
862 : LD 1, 1(5) ;  Load parameter 'n'
863 : SUB 1, 0, 1 ;  Negate R1
864 : LDA 4, 3(5) ;  [JIT] callee frame base
865 : ST 1, 1(4) ;  Store arg 0 in callee frame
866 : LDA 4, 3(5) ;  [JIT] callee frame base
867 : LDA 6, 871(0) ;  Return address
868 : ST 6, 0(4) ;  Store RA in callee frame
869 : ADD 5, 4, 0 ;  Push callee frame
870 : LDA 7, 832(0) ;  Call ODD
871 : LD 1, 2(5) ;  Load callee result
872 : LDC 2, 3(0) ;  Caller frame size
873 : SUB 5, 5, 2 ;  Pop callee frame
874 : ST 1, 2(5) ;  Store function result
875 : LD 6, 0(5) ;  Load return address
876 : LDA 7, 0(6) ;  Return to caller
877 : LDC 1, 0(0) ;  Load integer literal into R1
878 : ADD 3, 1, 0 ;  Stash right in R3
879 : LD 1, 2(5) ;  Load parameter 'n'
880 : ADD 2, 1, 0 ;  Move left to R2
881 : ADD 1, 3, 0 ;  Restore right to R1
882 : SUB 1, 2, 1 ;  left - right
883 : JEQ 1, 2(7) ;  if 0 then true
884 : LDC 1, 0(0) ;  false
885 : LDA 7, 1(7) ;  skip setting true
886 : LDC 1, 1(0) ;  true
887 : JEQ 1, 890(0) ;  If false, jump to ELSE
888 : LDC 1, 1(0) ;  Load integer literal into R1
889 : LDA 7, 914(0) ;  Skip ELSE
890 : LD 1, 1(5) ;  Load parameter 'm'
891 : LDA 4, 4(5) ;  [JIT] callee frame base
892 : ST 1, 1(4) ;  Store arg 0 in callee frame
893 : LDC 1, 1(0) ;  Load integer literal into R1
894 : ADD 3, 1, 0 ;  Stash right in R3
895 : LD 1, 2(5) ;  Load parameter 'n'
896 : ADD 2, 1, 0 ;  Move left to R2
897 : ADD 1, 3, 0 ;  Restore right to R1
898 : SUB 1, 2, 1 ;  R1 = left - right
899 : LDA 4, 4(5) ;  [JIT] callee frame base
900 : ST 1, 2(4) ;  Store arg 1 in callee frame
901 : LDA 4, 4(5) ;  [JIT] callee frame base
902 : LDA 6, 906(0) ;  Return address
903 : ST 6, 0(4) ;  Store RA in callee frame
904 : ADD 5, 4, 0 ;  Push callee frame
905 : LDA 7, 877(0) ;  Call EXP
906 : LD 1, 3(5) ;  Load callee result
907 : LDC 2, 4(0) ;  Caller frame size
908 : SUB 5, 5, 2 ;  Pop callee frame
909 : ADD 3, 1, 0 ;  Stash right in R3
910 : LD 1, 1(5) ;  Load parameter 'm'
911 : ADD 2, 1, 0 ;  Move left to R2
912 : ADD 1, 3, 0 ;  Restore right to R1
913 : MUL 1, 2, 1 ;  R1 = left * right
914 : ST 1, 3(5) ;  Store function result
915 : LD 6, 0(5) ;  Load return address
916 : LDA 7, 0(6) ;  Return to caller
917 : LD 1, 2(5) ;  Load parameter 'n'
918 : ADD 3, 1, 0 ;  Stash right in R3
919 : LD 1, 1(5) ;  Load parameter 'm'
920 : ADD 2, 1, 0 ;  Move left to R2
921 : ADD 1, 3, 0 ;  Restore right to R1
922 : DIV 1, 2, 1 ;  R1 = left / right
923 : ADD 3, 1, 0 ;  Stash right in R3
924 : LD 1, 2(5) ;  Load parameter 'n'
925 : ADD 2, 1, 0 ;  Move left to R2
926 : ADD 1, 3, 0 ;  Restore right to R1
927 : MUL 1, 2, 1 ;  R1 = left * right
928 : ADD 3, 1, 0 ;  Stash right in R3
929 : LD 1, 1(5) ;  Load parameter 'm'
930 : ADD 2, 1, 0 ;  Move left to R2
931 : ADD 1, 3, 0 ;  Restore right to R1
932 : SUB 1, 2, 1 ;  R1 = left - right
933 : ST 1, 3(5) ;  Store function result
934 : LD 6, 0(5) ;  Load return address
935 : LDA 7, 0(6) ;  Return to caller
