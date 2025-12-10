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
12 : LD 1, 1(5) ;  Load parameter 'testArgument'
13 : LDA 4, 3(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDA 4, 3(5) ;  [JIT] callee frame base
16 : LDA 6, 20(0) ;  Return address
17 : ST 6, 0(4) ;  Store RA in callee frame
18 : ADD 5, 4, 0 ;  Push callee frame
19 : LDA 7, 215(0) ;  Call SQRT
20 : LD 1, 2(5) ;  Load callee result
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : LDA 4, 3(5) ;  [JIT] callee frame base
24 : LDA 6, 28(0) ;  Return address
25 : ST 6, 0(4) ;  Store RA in callee frame
26 : ADD 5, 4, 0 ;  Push callee frame
27 : LDA 7, 9(0) ;  Call print
28 : LDC 2, 3(0) ;  Caller frame size
29 : SUB 5, 5, 2 ;  Pop callee frame
30 : LD 1, 1(5) ;  Load parameter 'testArgument'
31 : LDA 4, 3(5) ;  [JIT] callee frame base
32 : ST 1, 1(4) ;  Store arg 0 in callee frame
33 : LDA 4, 3(5) ;  [JIT] callee frame base
34 : LDA 6, 38(0) ;  Return address
35 : ST 6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Push callee frame
37 : LDA 7, 235(0) ;  Call ODD
38 : LD 1, 2(5) ;  Load callee result
39 : LDC 2, 3(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ST 1, 2(5) ;  Store result into caller frame
42 : LD 1, 2(5) ;  Load main return value
43 : LD 6, 0(5) ;  Load return address
44 : LDA 7, 0(6) ;  Return from main
45 : LD 1, 4(5) ;  Load parameter 'mid'
46 : ADD 3, 1, 0 ;  Stash right in R3
47 : LD 1, 4(5) ;  Load parameter 'mid'
48 : ADD 2, 1, 0 ;  Move left to R2
49 : ADD 1, 3, 0 ;  Restore right to R1
50 : MUL 1, 2, 1 ;  R1 = left * right
51 : LDA 4, 4(5) ;  [JIT] callee frame base
52 : ST 1, 1(4) ;  Store arg 0 in callee frame
53 : LD 1, 1(5) ;  Load parameter 'n'
54 : LDA 4, 4(5) ;  [JIT] callee frame base
55 : ST 1, 2(4) ;  Store arg 1 in callee frame
56 : LDA 4, 4(5) ;  [JIT] callee frame base
57 : LDA 6, 61(0) ;  Return address
58 : ST 6, 0(4) ;  Store RA in callee frame
59 : ADD 5, 4, 0 ;  Push callee frame
60 : LDA 7, 550(0) ;  Call LE
61 : LD 1, 3(5) ;  Load callee result
62 : LDC 2, 4(0) ;  Caller frame size
63 : SUB 5, 5, 2 ;  Pop callee frame
64 : JEQ 1, 83(0) ;  If false, jump to ELSE
65 : LD 1, 1(5) ;  Load parameter 'n'
66 : LDA 4, 5(5) ;  [JIT] callee frame base
67 : ST 1, 1(4) ;  Store arg 0 in callee frame
68 : LD 1, 4(5) ;  Load parameter 'mid'
69 : LDA 4, 5(5) ;  [JIT] callee frame base
70 : ST 1, 2(4) ;  Store arg 1 in callee frame
71 : LD 1, 3(5) ;  Load parameter 'high'
72 : LDA 4, 5(5) ;  [JIT] callee frame base
73 : ST 1, 3(4) ;  Store arg 2 in callee frame
74 : LDA 4, 5(5) ;  [JIT] callee frame base
75 : LDA 6, 79(0) ;  Return address
76 : ST 6, 0(4) ;  Store RA in callee frame
77 : ADD 5, 4, 0 ;  Push callee frame
78 : LDA 7, 103(0) ;  Call SQRTSEARCH
79 : LD 1, 4(5) ;  Load callee result
80 : LDC 2, 5(0) ;  Caller frame size
81 : SUB 5, 5, 2 ;  Pop callee frame
82 : LDA 7, 100(0) ;  Skip ELSE
83 : LD 1, 1(5) ;  Load parameter 'n'
84 : LDA 4, 5(5) ;  [JIT] callee frame base
85 : ST 1, 1(4) ;  Store arg 0 in callee frame
86 : LD 1, 2(5) ;  Load parameter 'low'
87 : LDA 4, 5(5) ;  [JIT] callee frame base
88 : ST 1, 2(4) ;  Store arg 1 in callee frame
89 : LD 1, 4(5) ;  Load parameter 'mid'
90 : LDA 4, 5(5) ;  [JIT] callee frame base
91 : ST 1, 3(4) ;  Store arg 2 in callee frame
92 : LDA 4, 5(5) ;  [JIT] callee frame base
93 : LDA 6, 97(0) ;  Return address
94 : ST 6, 0(4) ;  Store RA in callee frame
95 : ADD 5, 4, 0 ;  Push callee frame
96 : LDA 7, 103(0) ;  Call SQRTSEARCH
97 : LD 1, 4(5) ;  Load callee result
98 : LDC 2, 5(0) ;  Caller frame size
99 : SUB 5, 5, 2 ;  Pop callee frame
100 : ST 1, 5(5) ;  Store function result
101 : LD 6, 0(5) ;  Load return address
102 : LDA 7, 0(6) ;  Return to caller
103 : LD 1, 3(5) ;  Load parameter 'high'
104 : LDA 4, 4(5) ;  [JIT] callee frame base
105 : ST 1, 1(4) ;  Store arg 0 in callee frame
106 : LDC 1, 1(0) ;  Load integer literal into R1
107 : ADD 3, 1, 0 ;  Stash right in R3
108 : LD 1, 2(5) ;  Load parameter 'low'
109 : ADD 2, 1, 0 ;  Move left to R2
110 : ADD 1, 3, 0 ;  Restore right to R1
111 : ADD 1, 2, 1 ;  R1 = left + right
112 : LDA 4, 4(5) ;  [JIT] callee frame base
113 : ST 1, 2(4) ;  Store arg 1 in callee frame
114 : LDA 4, 4(5) ;  [JIT] callee frame base
115 : LDA 6, 119(0) ;  Return address
116 : ST 6, 0(4) ;  Store RA in callee frame
117 : ADD 5, 4, 0 ;  Push callee frame
118 : LDA 7, 550(0) ;  Call LE
119 : LD 1, 3(5) ;  Load callee result
120 : LDC 2, 4(0) ;  Caller frame size
121 : SUB 5, 5, 2 ;  Pop callee frame
122 : JEQ 1, 176(0) ;  If false, jump to ELSE
123 : LD 1, 2(5) ;  Load parameter 'low'
124 : LDA 4, 4(5) ;  [JIT] callee frame base
125 : ST 1, 1(4) ;  Store arg 0 in callee frame
126 : LD 1, 2(5) ;  Load parameter 'low'
127 : LDA 4, 4(5) ;  [JIT] callee frame base
128 : ST 1, 2(4) ;  Store arg 1 in callee frame
129 : LDA 4, 4(5) ;  [JIT] callee frame base
130 : LDA 6, 134(0) ;  Return address
131 : ST 6, 0(4) ;  Store RA in callee frame
132 : ADD 5, 4, 0 ;  Push callee frame
133 : LDA 7, 468(0) ;  Call TIMES
134 : LD 1, 3(5) ;  Load callee result
135 : LDC 2, 4(0) ;  Caller frame size
136 : SUB 5, 5, 2 ;  Pop callee frame
137 : ADD 3, 1, 0 ;  Stash right in R3
138 : LD 1, 1(5) ;  Load parameter 'n'
139 : ADD 2, 1, 0 ;  Move left to R2
140 : ADD 1, 3, 0 ;  Restore right to R1
141 : SUB 1, 2, 1 ;  R1 = left - right
142 : LDA 4, 4(5) ;  [JIT] callee frame base
143 : ST 1, 1(4) ;  Store arg 0 in callee frame
144 : LD 1, 3(5) ;  Load parameter 'high'
145 : LDA 4, 4(5) ;  [JIT] callee frame base
146 : ST 1, 1(4) ;  Store arg 0 in callee frame
147 : LD 1, 3(5) ;  Load parameter 'high'
148 : LDA 4, 4(5) ;  [JIT] callee frame base
149 : ST 1, 2(4) ;  Store arg 1 in callee frame
150 : LDA 4, 4(5) ;  [JIT] callee frame base
151 : LDA 6, 155(0) ;  Return address
152 : ST 6, 0(4) ;  Store RA in callee frame
153 : ADD 5, 4, 0 ;  Push callee frame
154 : LDA 7, 468(0) ;  Call TIMES
155 : LD 1, 3(5) ;  Load callee result
156 : LDC 2, 4(0) ;  Caller frame size
157 : SUB 5, 5, 2 ;  Pop callee frame
158 : ADD 2, 1, 0 ;  Move left to R2
159 : LD 1, 1(5) ;  Load parameter 'n'
160 : SUB 1, 2, 1 ;  R1 = left - right
161 : LDA 4, 4(5) ;  [JIT] callee frame base
162 : ST 1, 2(4) ;  Store arg 1 in callee frame
163 : LDA 4, 4(5) ;  [JIT] callee frame base
164 : LDA 6, 168(0) ;  Return address
165 : ST 6, 0(4) ;  Store RA in callee frame
166 : ADD 5, 4, 0 ;  Push callee frame
167 : LDA 7, 550(0) ;  Call LE
168 : LD 1, 3(5) ;  Load callee result
169 : LDC 2, 4(0) ;  Caller frame size
170 : SUB 5, 5, 2 ;  Pop callee frame
171 : JEQ 1, 174(0) ;  If false, jump to ELSE
172 : LD 1, 2(5) ;  Load parameter 'low'
173 : LDA 7, 175(0) ;  Skip ELSE
174 : LD 1, 3(5) ;  Load parameter 'high'
175 : LDA 7, 212(0) ;  Skip ELSE
176 : LD 1, 1(5) ;  Load parameter 'n'
177 : LDA 4, 6(5) ;  [JIT] callee frame base
178 : ST 1, 1(4) ;  Store arg 0 in callee frame
179 : LD 1, 2(5) ;  Load parameter 'low'
180 : LDA 4, 6(5) ;  [JIT] callee frame base
181 : ST 1, 2(4) ;  Store arg 1 in callee frame
182 : LD 1, 3(5) ;  Load parameter 'high'
183 : LDA 4, 6(5) ;  [JIT] callee frame base
184 : ST 1, 3(4) ;  Store arg 2 in callee frame
185 : LD 1, 2(5) ;  Load parameter 'low'
186 : LDA 4, 4(5) ;  [JIT] callee frame base
187 : ST 1, 1(4) ;  Store arg 0 in callee frame
188 : LD 1, 3(5) ;  Load parameter 'high'
189 : LDA 4, 4(5) ;  [JIT] callee frame base
190 : ST 1, 2(4) ;  Store arg 1 in callee frame
191 : LDA 4, 4(5) ;  [JIT] callee frame base
192 : LDA 6, 196(0) ;  Return address
193 : ST 6, 0(4) ;  Store RA in callee frame
194 : ADD 5, 4, 0 ;  Push callee frame
195 : LDA 7, 486(0) ;  Call PLUS
196 : LD 1, 3(5) ;  Load callee result
197 : LDC 2, 4(0) ;  Caller frame size
198 : SUB 5, 5, 2 ;  Pop callee frame
199 : ADD 2, 1, 0 ;  Move left to R2
200 : LDC 1, 2(0) ;  Load integer literal into R1
201 : DIV 1, 2, 1 ;  R1 = left / right
202 : LDA 4, 6(5) ;  [JIT] callee frame base
203 : ST 1, 4(4) ;  Store arg 3 in callee frame
204 : LDA 4, 6(5) ;  [JIT] callee frame base
205 : LDA 6, 209(0) ;  Return address
206 : ST 6, 0(4) ;  Store RA in callee frame
207 : ADD 5, 4, 0 ;  Push callee frame
208 : LDA 7, 45(0) ;  Call SQRTSPLIT
209 : LD 1, 5(5) ;  Load callee result
210 : LDC 2, 6(0) ;  Caller frame size
211 : SUB 5, 5, 2 ;  Pop callee frame
212 : ST 1, 4(5) ;  Store function result
213 : LD 6, 0(5) ;  Load return address
214 : LDA 7, 0(6) ;  Return to caller
215 : LD 1, 1(5) ;  Load parameter 'n'
216 : LDA 4, 5(5) ;  [JIT] callee frame base
217 : ST 1, 1(4) ;  Store arg 0 in callee frame
218 : LDC 1, 0(0) ;  Load integer literal into R1
219 : LDA 4, 5(5) ;  [JIT] callee frame base
220 : ST 1, 2(4) ;  Store arg 1 in callee frame
221 : LD 1, 1(5) ;  Load parameter 'n'
222 : LDA 4, 5(5) ;  [JIT] callee frame base
223 : ST 1, 3(4) ;  Store arg 2 in callee frame
224 : LDA 4, 5(5) ;  [JIT] callee frame base
225 : LDA 6, 229(0) ;  Return address
226 : ST 6, 0(4) ;  Store RA in callee frame
227 : ADD 5, 4, 0 ;  Push callee frame
228 : LDA 7, 103(0) ;  Call SQRTSEARCH
229 : LD 1, 4(5) ;  Load callee result
230 : LDC 2, 5(0) ;  Caller frame size
231 : SUB 5, 5, 2 ;  Pop callee frame
232 : ST 1, 2(5) ;  Store function result
233 : LD 6, 0(5) ;  Load return address
234 : LDA 7, 0(6) ;  Return to caller
235 : LDC 1, 0(0) ;  Load integer literal into R1
236 : LDA 4, 4(5) ;  [JIT] callee frame base
237 : ST 1, 1(4) ;  Store arg 0 in callee frame
238 : LD 1, 1(5) ;  Load parameter 'n'
239 : LDA 4, 4(5) ;  [JIT] callee frame base
240 : ST 1, 2(4) ;  Store arg 1 in callee frame
241 : LDA 4, 4(5) ;  [JIT] callee frame base
242 : LDA 6, 246(0) ;  Return address
243 : ST 6, 0(4) ;  Store RA in callee frame
244 : ADD 5, 4, 0 ;  Push callee frame
245 : LDA 7, 550(0) ;  Call LE
246 : LD 1, 3(5) ;  Load callee result
247 : LDC 2, 4(0) ;  Caller frame size
248 : SUB 5, 5, 2 ;  Pop callee frame
249 : JEQ 1, 294(0) ;  If false, jump to ELSE
250 : LD 1, 1(5) ;  Load parameter 'n'
251 : LDA 4, 4(5) ;  [JIT] callee frame base
252 : ST 1, 1(4) ;  Store arg 0 in callee frame
253 : LD 1, 1(5) ;  Load parameter 'n'
254 : LDA 4, 4(5) ;  [JIT] callee frame base
255 : ST 1, 1(4) ;  Store arg 0 in callee frame
256 : LDC 1, 2(0) ;  Load integer literal into R1
257 : LDA 4, 4(5) ;  [JIT] callee frame base
258 : ST 1, 2(4) ;  Store arg 1 in callee frame
259 : LDA 4, 4(5) ;  [JIT] callee frame base
260 : LDA 6, 264(0) ;  Return address
261 : ST 6, 0(4) ;  Store RA in callee frame
262 : ADD 5, 4, 0 ;  Push callee frame
263 : LDA 7, 459(0) ;  Call DIV
264 : LD 1, 3(5) ;  Load callee result
265 : LDC 2, 4(0) ;  Caller frame size
266 : SUB 5, 5, 2 ;  Pop callee frame
267 : ADD 2, 1, 0 ;  Move left to R2
268 : LD 1, 1(5) ;  Load parameter 'n'
269 : LDA 4, 4(5) ;  [JIT] callee frame base
270 : ST 1, 1(4) ;  Store arg 0 in callee frame
271 : LDC 1, 2(0) ;  Load integer literal into R1
272 : LDA 4, 4(5) ;  [JIT] callee frame base
273 : ST 1, 2(4) ;  Store arg 1 in callee frame
274 : LDA 4, 4(5) ;  [JIT] callee frame base
275 : LDA 6, 279(0) ;  Return address
276 : ST 6, 0(4) ;  Store RA in callee frame
277 : ADD 5, 4, 0 ;  Push callee frame
278 : LDA 7, 459(0) ;  Call DIV
279 : LD 1, 3(5) ;  Load callee result
280 : LDC 2, 4(0) ;  Caller frame size
281 : SUB 5, 5, 2 ;  Pop callee frame
282 : ADD 1, 2, 1 ;  R1 = left + right
283 : LDA 4, 4(5) ;  [JIT] callee frame base
284 : ST 1, 2(4) ;  Store arg 1 in callee frame
285 : LDA 4, 4(5) ;  [JIT] callee frame base
286 : LDA 6, 290(0) ;  Return address
287 : ST 6, 0(4) ;  Store RA in callee frame
288 : ADD 5, 4, 0 ;  Push callee frame
289 : LDA 7, 512(0) ;  Call GT
290 : LD 1, 3(5) ;  Load callee result
291 : LDC 2, 4(0) ;  Caller frame size
292 : SUB 5, 5, 2 ;  Pop callee frame
293 : LDA 7, 367(0) ;  Skip ELSE
294 : LD 1, 1(5) ;  Load parameter 'n'
295 : LDA 4, 3(5) ;  [JIT] callee frame base
296 : ST 1, 1(4) ;  Store arg 0 in callee frame
297 : LDA 4, 3(5) ;  [JIT] callee frame base
298 : LDA 6, 302(0) ;  Return address
299 : ST 6, 0(4) ;  Store RA in callee frame
300 : ADD 5, 4, 0 ;  Push callee frame
301 : LDA 7, 454(0) ;  Call NEG
302 : LD 1, 2(5) ;  Load callee result
303 : LDC 2, 3(0) ;  Caller frame size
304 : SUB 5, 5, 2 ;  Pop callee frame
305 : LDA 4, 4(5) ;  [JIT] callee frame base
306 : ST 1, 1(4) ;  Store arg 0 in callee frame
307 : LD 1, 1(5) ;  Load parameter 'n'
308 : LDA 4, 3(5) ;  [JIT] callee frame base
309 : ST 1, 1(4) ;  Store arg 0 in callee frame
310 : LDA 4, 3(5) ;  [JIT] callee frame base
311 : LDA 6, 315(0) ;  Return address
312 : ST 6, 0(4) ;  Store RA in callee frame
313 : ADD 5, 4, 0 ;  Push callee frame
314 : LDA 7, 454(0) ;  Call NEG
315 : LD 1, 2(5) ;  Load callee result
316 : LDC 2, 3(0) ;  Caller frame size
317 : SUB 5, 5, 2 ;  Pop callee frame
318 : LDA 4, 4(5) ;  [JIT] callee frame base
319 : ST 1, 1(4) ;  Store arg 0 in callee frame
320 : LDC 1, 2(0) ;  Load integer literal into R1
321 : LDA 4, 4(5) ;  [JIT] callee frame base
322 : ST 1, 2(4) ;  Store arg 1 in callee frame
323 : LDA 4, 4(5) ;  [JIT] callee frame base
324 : LDA 6, 328(0) ;  Return address
325 : ST 6, 0(4) ;  Store RA in callee frame
326 : ADD 5, 4, 0 ;  Push callee frame
327 : LDA 7, 459(0) ;  Call DIV
328 : LD 1, 3(5) ;  Load callee result
329 : LDC 2, 4(0) ;  Caller frame size
330 : SUB 5, 5, 2 ;  Pop callee frame
331 : ADD 2, 1, 0 ;  Move left to R2
332 : LD 1, 1(5) ;  Load parameter 'n'
333 : LDA 4, 3(5) ;  [JIT] callee frame base
334 : ST 1, 1(4) ;  Store arg 0 in callee frame
335 : LDA 4, 3(5) ;  [JIT] callee frame base
336 : LDA 6, 340(0) ;  Return address
337 : ST 6, 0(4) ;  Store RA in callee frame
338 : ADD 5, 4, 0 ;  Push callee frame
339 : LDA 7, 454(0) ;  Call NEG
340 : LD 1, 2(5) ;  Load callee result
341 : LDC 2, 3(0) ;  Caller frame size
342 : SUB 5, 5, 2 ;  Pop callee frame
343 : LDA 4, 4(5) ;  [JIT] callee frame base
344 : ST 1, 1(4) ;  Store arg 0 in callee frame
345 : LDC 1, 2(0) ;  Load integer literal into R1
346 : LDA 4, 4(5) ;  [JIT] callee frame base
347 : ST 1, 2(4) ;  Store arg 1 in callee frame
348 : LDA 4, 4(5) ;  [JIT] callee frame base
349 : LDA 6, 353(0) ;  Return address
350 : ST 6, 0(4) ;  Store RA in callee frame
351 : ADD 5, 4, 0 ;  Push callee frame
352 : LDA 7, 459(0) ;  Call DIV
353 : LD 1, 3(5) ;  Load callee result
354 : LDC 2, 4(0) ;  Caller frame size
355 : SUB 5, 5, 2 ;  Pop callee frame
356 : ADD 1, 2, 1 ;  R1 = left + right
357 : LDA 4, 4(5) ;  [JIT] callee frame base
358 : ST 1, 2(4) ;  Store arg 1 in callee frame
359 : LDA 4, 4(5) ;  [JIT] callee frame base
360 : LDA 6, 364(0) ;  Return address
361 : ST 6, 0(4) ;  Store RA in callee frame
362 : ADD 5, 4, 0 ;  Push callee frame
363 : LDA 7, 512(0) ;  Call GT
364 : LD 1, 3(5) ;  Load callee result
365 : LDC 2, 4(0) ;  Caller frame size
366 : SUB 5, 5, 2 ;  Pop callee frame
367 : ST 1, 2(5) ;  Store function result
368 : LD 6, 0(5) ;  Load return address
369 : LDA 7, 0(6) ;  Return to caller
370 : LDC 1, 0(0) ;  Load integer literal into R1
371 : ADD 3, 1, 0 ;  Stash right in R3
372 : LD 1, 2(5) ;  Load parameter 'n'
373 : ADD 2, 1, 0 ;  Move left to R2
374 : ADD 1, 3, 0 ;  Restore right to R1
375 : SUB 1, 2, 1 ;  left - right
376 : JEQ 1, 2(7) ;  if 0 then true
377 : LDC 1, 0(0) ;  false
378 : LDA 7, 1(7) ;  skip setting true
379 : LDC 1, 1(0) ;  true
380 : JEQ 1, 383(0) ;  If false, jump to ELSE
381 : LDC 1, 1(0) ;  Load integer literal into R1
382 : LDA 7, 407(0) ;  Skip ELSE
383 : LD 1, 1(5) ;  Load parameter 'm'
384 : LDA 4, 4(5) ;  [JIT] callee frame base
385 : ST 1, 1(4) ;  Store arg 0 in callee frame
386 : LDC 1, 1(0) ;  Load integer literal into R1
387 : ADD 3, 1, 0 ;  Stash right in R3
388 : LD 1, 2(5) ;  Load parameter 'n'
389 : ADD 2, 1, 0 ;  Move left to R2
390 : ADD 1, 3, 0 ;  Restore right to R1
391 : SUB 1, 2, 1 ;  R1 = left - right
392 : LDA 4, 4(5) ;  [JIT] callee frame base
393 : ST 1, 2(4) ;  Store arg 1 in callee frame
394 : LDA 4, 4(5) ;  [JIT] callee frame base
395 : LDA 6, 399(0) ;  Return address
396 : ST 6, 0(4) ;  Store RA in callee frame
397 : ADD 5, 4, 0 ;  Push callee frame
398 : LDA 7, 370(0) ;  Call EXP
399 : LD 1, 3(5) ;  Load callee result
400 : LDC 2, 4(0) ;  Caller frame size
401 : SUB 5, 5, 2 ;  Pop callee frame
402 : ADD 3, 1, 0 ;  Stash right in R3
403 : LD 1, 1(5) ;  Load parameter 'm'
404 : ADD 2, 1, 0 ;  Move left to R2
405 : ADD 1, 3, 0 ;  Restore right to R1
406 : MUL 1, 2, 1 ;  R1 = left * right
407 : ST 1, 3(5) ;  Store function result
408 : LD 6, 0(5) ;  Load return address
409 : LDA 7, 0(6) ;  Return to caller
410 : LD 1, 2(5) ;  Load parameter 'n'
411 : ADD 3, 1, 0 ;  Stash right in R3
412 : LD 1, 1(5) ;  Load parameter 'm'
413 : ADD 2, 1, 0 ;  Move left to R2
414 : ADD 1, 3, 0 ;  Restore right to R1
415 : DIV 1, 2, 1 ;  R1 = left / right
416 : ADD 2, 1, 0 ;  Move left to R2
417 : LD 1, 2(5) ;  Load parameter 'n'
418 : MUL 1, 2, 1 ;  R1 = left * right
419 : ADD 3, 1, 0 ;  Stash right in R3
420 : LD 1, 1(5) ;  Load parameter 'm'
421 : ADD 2, 1, 0 ;  Move left to R2
422 : ADD 1, 3, 0 ;  Restore right to R1
423 : SUB 1, 2, 1 ;  R1 = left - right
424 : ST 1, 3(5) ;  Store function result
425 : LD 6, 0(5) ;  Load return address
426 : LDA 7, 0(6) ;  Return to caller
427 : LD 1, 1(5) ;  Load parameter 'n'
428 : ADD 3, 1, 0 ;  Stash right in R3
429 : LDC 1, 0(0) ;  Load integer literal into R1
430 : ADD 2, 1, 0 ;  Move left to R2
431 : ADD 1, 3, 0 ;  Restore right to R1
432 : SUB 1, 2, 1 ;  left - right
433 : JLT 1, 2(7) ;  if < 0 then true
434 : LDC 1, 0(0) ;  false
435 : LDA 7, 1(7) ;  skip setting true
436 : LDC 1, 1(0) ;  true
437 : JEQ 1, 440(0) ;  If false, jump to ELSE
438 : LD 1, 1(5) ;  Load parameter 'n'
439 : LDA 7, 451(0) ;  Skip ELSE
440 : LD 1, 1(5) ;  Load parameter 'n'
441 : LDA 4, 3(5) ;  [JIT] callee frame base
442 : ST 1, 1(4) ;  Store arg 0 in callee frame
443 : LDA 4, 3(5) ;  [JIT] callee frame base
444 : LDA 6, 448(0) ;  Return address
445 : ST 6, 0(4) ;  Store RA in callee frame
446 : ADD 5, 4, 0 ;  Push callee frame
447 : LDA 7, 454(0) ;  Call NEG
448 : LD 1, 2(5) ;  Load callee result
449 : LDC 2, 3(0) ;  Caller frame size
450 : SUB 5, 5, 2 ;  Pop callee frame
451 : ST 1, 2(5) ;  Store function result
452 : LD 6, 0(5) ;  Load return address
453 : LDA 7, 0(6) ;  Return to caller
454 : LD 1, 1(5) ;  Load parameter 'n'
455 : SUB 1, 0, 1 ;  Negate R1
456 : ST 1, 2(5) ;  Store function result
457 : LD 6, 0(5) ;  Load return address
458 : LDA 7, 0(6) ;  Return to caller
459 : LD 1, 2(5) ;  Load parameter 'q'
460 : ADD 3, 1, 0 ;  Stash right in R3
461 : LD 1, 1(5) ;  Load parameter 'p'
462 : ADD 2, 1, 0 ;  Move left to R2
463 : ADD 1, 3, 0 ;  Restore right to R1
464 : DIV 1, 2, 1 ;  R1 = left / right
465 : ST 1, 3(5) ;  Store function result
466 : LD 6, 0(5) ;  Load return address
467 : LDA 7, 0(6) ;  Return to caller
468 : LD 1, 2(5) ;  Load parameter 'q'
469 : ADD 3, 1, 0 ;  Stash right in R3
470 : LD 1, 1(5) ;  Load parameter 'p'
471 : ADD 2, 1, 0 ;  Move left to R2
472 : ADD 1, 3, 0 ;  Restore right to R1
473 : MUL 1, 2, 1 ;  R1 = left * right
474 : ST 1, 3(5) ;  Store function result
475 : LD 6, 0(5) ;  Load return address
476 : LDA 7, 0(6) ;  Return to caller
477 : LD 1, 2(5) ;  Load parameter 'q'
478 : ADD 3, 1, 0 ;  Stash right in R3
479 : LD 1, 1(5) ;  Load parameter 'p'
480 : ADD 2, 1, 0 ;  Move left to R2
481 : ADD 1, 3, 0 ;  Restore right to R1
482 : SUB 1, 2, 1 ;  R1 = left - right
483 : ST 1, 3(5) ;  Store function result
484 : LD 6, 0(5) ;  Load return address
485 : LDA 7, 0(6) ;  Return to caller
486 : LD 1, 2(5) ;  Load parameter 'q'
487 : ADD 3, 1, 0 ;  Stash right in R3
488 : LD 1, 1(5) ;  Load parameter 'p'
489 : ADD 2, 1, 0 ;  Move left to R2
490 : ADD 1, 3, 0 ;  Restore right to R1
491 : ADD 1, 2, 1 ;  R1 = left + right
492 : ST 1, 3(5) ;  Store function result
493 : LD 6, 0(5) ;  Load return address
494 : LDA 7, 0(6) ;  Return to caller
495 : LD 1, 1(5) ;  Load parameter 'p'
496 : JEQ 1, 499(0) ;  If false, jump to ELSE
497 : LD 1, 2(5) ;  Load parameter 'q'
498 : LDA 7, 500(0) ;  Skip ELSE
499 : LDC 1, 0(0) ;  Load boolean literal into R1
500 : ST 1, 3(5) ;  Store function result
501 : LD 6, 0(5) ;  Load return address
502 : LDA 7, 0(6) ;  Return to caller
503 : LD 1, 2(5) ;  Load parameter 'q'
504 : ADD 3, 1, 0 ;  Stash right in R3
505 : LD 1, 1(5) ;  Load parameter 'p'
506 : ADD 2, 1, 0 ;  Move left to R2
507 : ADD 1, 3, 0 ;  Restore right to R1
508 : ADD 1, 2, 1 ;  R1 = left OR right
509 : ST 1, 3(5) ;  Store function result
510 : LD 6, 0(5) ;  Load return address
511 : LDA 7, 0(6) ;  Return to caller
512 : LD 1, 1(5) ;  Load parameter 'p'
513 : LDA 4, 4(5) ;  [JIT] callee frame base
514 : ST 1, 1(4) ;  Store arg 0 in callee frame
515 : LD 1, 2(5) ;  Load parameter 'q'
516 : LDA 4, 4(5) ;  [JIT] callee frame base
517 : ST 1, 2(4) ;  Store arg 1 in callee frame
518 : LDA 4, 4(5) ;  [JIT] callee frame base
519 : LDA 6, 523(0) ;  Return address
520 : ST 6, 0(4) ;  Store RA in callee frame
521 : ADD 5, 4, 0 ;  Push callee frame
522 : LDA 7, 550(0) ;  Call LE
523 : LD 1, 3(5) ;  Load callee result
524 : LDC 2, 4(0) ;  Caller frame size
525 : SUB 5, 5, 2 ;  Pop callee frame
526 : LDC 2, 1(0) ;  Load 1 into R2
527 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
528 : ST 1, 3(5) ;  Store function result
529 : LD 6, 0(5) ;  Load return address
530 : LDA 7, 0(6) ;  Return to caller
531 : LD 1, 1(5) ;  Load parameter 'p'
532 : LDA 4, 4(5) ;  [JIT] callee frame base
533 : ST 1, 1(4) ;  Store arg 0 in callee frame
534 : LD 1, 2(5) ;  Load parameter 'q'
535 : LDA 4, 4(5) ;  [JIT] callee frame base
536 : ST 1, 2(4) ;  Store arg 1 in callee frame
537 : LDA 4, 4(5) ;  [JIT] callee frame base
538 : LDA 6, 542(0) ;  Return address
539 : ST 6, 0(4) ;  Store RA in callee frame
540 : ADD 5, 4, 0 ;  Push callee frame
541 : LDA 7, 615(0) ;  Call LT
542 : LD 1, 3(5) ;  Load callee result
543 : LDC 2, 4(0) ;  Caller frame size
544 : SUB 5, 5, 2 ;  Pop callee frame
545 : LDC 2, 1(0) ;  Load 1 into R2
546 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
547 : ST 1, 3(5) ;  Store function result
548 : LD 6, 0(5) ;  Load return address
549 : LDA 7, 0(6) ;  Return to caller
550 : LD 1, 1(5) ;  Load parameter 'p'
551 : LDA 4, 4(5) ;  [JIT] callee frame base
552 : ST 1, 1(4) ;  Store arg 0 in callee frame
553 : LD 1, 2(5) ;  Load parameter 'q'
554 : LDA 4, 4(5) ;  [JIT] callee frame base
555 : ST 1, 2(4) ;  Store arg 1 in callee frame
556 : LDA 4, 4(5) ;  [JIT] callee frame base
557 : LDA 6, 561(0) ;  Return address
558 : ST 6, 0(4) ;  Store RA in callee frame
559 : ADD 5, 4, 0 ;  Push callee frame
560 : LDA 7, 615(0) ;  Call LT
561 : LD 1, 3(5) ;  Load callee result
562 : LDC 2, 4(0) ;  Caller frame size
563 : SUB 5, 5, 2 ;  Pop callee frame
564 : ADD 2, 1, 0 ;  Move left to R2
565 : LD 1, 1(5) ;  Load parameter 'p'
566 : LDA 4, 4(5) ;  [JIT] callee frame base
567 : ST 1, 1(4) ;  Store arg 0 in callee frame
568 : LD 1, 2(5) ;  Load parameter 'q'
569 : LDA 4, 4(5) ;  [JIT] callee frame base
570 : ST 1, 2(4) ;  Store arg 1 in callee frame
571 : LDA 4, 4(5) ;  [JIT] callee frame base
572 : LDA 6, 576(0) ;  Return address
573 : ST 6, 0(4) ;  Store RA in callee frame
574 : ADD 5, 4, 0 ;  Push callee frame
575 : LDA 7, 602(0) ;  Call EQ
576 : LD 1, 3(5) ;  Load callee result
577 : LDC 2, 4(0) ;  Caller frame size
578 : SUB 5, 5, 2 ;  Pop callee frame
579 : ADD 1, 2, 1 ;  R1 = left OR right
580 : ST 1, 3(5) ;  Store function result
581 : LD 6, 0(5) ;  Load return address
582 : LDA 7, 0(6) ;  Return to caller
583 : LD 1, 1(5) ;  Load parameter 'p'
584 : LDA 4, 4(5) ;  [JIT] callee frame base
585 : ST 1, 1(4) ;  Store arg 0 in callee frame
586 : LD 1, 2(5) ;  Load parameter 'q'
587 : LDA 4, 4(5) ;  [JIT] callee frame base
588 : ST 1, 2(4) ;  Store arg 1 in callee frame
589 : LDA 4, 4(5) ;  [JIT] callee frame base
590 : LDA 6, 594(0) ;  Return address
591 : ST 6, 0(4) ;  Store RA in callee frame
592 : ADD 5, 4, 0 ;  Push callee frame
593 : LDA 7, 602(0) ;  Call EQ
594 : LD 1, 3(5) ;  Load callee result
595 : LDC 2, 4(0) ;  Caller frame size
596 : SUB 5, 5, 2 ;  Pop callee frame
597 : LDC 2, 1(0) ;  Load 1 into R2
598 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
599 : ST 1, 3(5) ;  Store function result
600 : LD 6, 0(5) ;  Load return address
601 : LDA 7, 0(6) ;  Return to caller
602 : LD 1, 2(5) ;  Load parameter 'q'
603 : ADD 3, 1, 0 ;  Stash right in R3
604 : LD 1, 1(5) ;  Load parameter 'p'
605 : ADD 2, 1, 0 ;  Move left to R2
606 : ADD 1, 3, 0 ;  Restore right to R1
607 : SUB 1, 2, 1 ;  left - right
608 : JEQ 1, 2(7) ;  if 0 then true
609 : LDC 1, 0(0) ;  false
610 : LDA 7, 1(7) ;  skip setting true
611 : LDC 1, 1(0) ;  true
612 : ST 1, 3(5) ;  Store function result
613 : LD 6, 0(5) ;  Load return address
614 : LDA 7, 0(6) ;  Return to caller
615 : LD 1, 2(5) ;  Load parameter 'q'
616 : ADD 3, 1, 0 ;  Stash right in R3
617 : LD 1, 1(5) ;  Load parameter 'p'
618 : ADD 2, 1, 0 ;  Move left to R2
619 : ADD 1, 3, 0 ;  Restore right to R1
620 : SUB 1, 2, 1 ;  left - right
621 : JLT 1, 2(7) ;  if < 0 then true
622 : LDC 1, 0(0) ;  false
623 : LDA 7, 1(7) ;  skip setting true
624 : LDC 1, 1(0) ;  true
625 : ST 1, 3(5) ;  Store function result
626 : LD 6, 0(5) ;  Load return address
627 : LDA 7, 0(6) ;  Return to caller
628 : LDC 1, 2147483647(0) ;  Load integer literal into R1
629 : SUB 1, 0, 1 ;  Negate R1
630 : ADD 2, 1, 0 ;  Move left to R2
631 : LDC 1, 1(0) ;  Load integer literal into R1
632 : SUB 1, 2, 1 ;  R1 = left - right
633 : ST 1, 1(5) ;  Store function result
634 : LD 6, 0(5) ;  Load return address
635 : LDA 7, 0(6) ;  Return to caller
636 : LDC 1, 2147483647(0) ;  Load integer literal into R1
637 : ST 1, 1(5) ;  Store function result
638 : LD 6, 0(5) ;  Load return address
639 : LDA 7, 0(6) ;  Return to caller
