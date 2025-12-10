0 : LDC 5, 4(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 -> R2
5 : ST 2, 2(5) ;  Store arg 2 at main frame
6 : LD 2, 3(0) ;  Load CLI arg 3 -> R2
7 : ST 2, 3(5) ;  Store arg 3 at main frame
8 : LDA 6, 2(7) ;  RA = next after branch
9 : ST 6, 0(5) ;  Store RA in main frame
10 : LDA 7, 16(0) ;  Jump to main
11 : OUT 1, 0, 0 ;  Print R1
12 : HALT 0, 0, 0 ;  Halt
13 : OUT 1, 0, 0 ;  print(R1)
14 : LD 6, 0(4) ;  Load RA via FP
15 : LDA 7, 0(6) ;  Return
16 : ADD 4, 5, 0 ;  FP = SP at 16 entry
17 : ADD 2, 1, 0 ;  Save arg0 in R2
18 : ADD 3, 1, 0 ;  Save arg1 in R3
19 : LDA 6, 27(0) ;  Prepare RA label
20 : LDA 2, 3(5) ;  callee base size -> R2
21 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
22 : ST 6, 0(5) ;  store RA in callee frame
23 : ST 2, 1(5) ;  TEMP overwrite: fix below
24 : ST 2, 1(5) ;  store arg0 from R2
25 : ST 3, 2(5) ;  store arg1 from R3
26 : LDA 7, 13(0) ;  Call print
27 : LD 1, 2(5) ;  load callee result
28 : LDC 2, 3(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ST 1, 4(4) ;  store result into caller frame (via FP)
31 : LDA 6, 37(0) ;  Prepare RA label
32 : LDA 2, 5(5) ;  callee base size -> R2
33 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
34 : ST 6, 0(5) ;  store RA in callee frame
35 : ST 2, 1(5) ;  TEMP overwrite: fix below
36 : LDA 7, 353(0) ;  Call fareyDen
37 : LD 1, 4(5) ;  load callee result
38 : LDC 2, 5(0) ;  size to pop
39 : SUB 5, 5, 2 ;  pop callee frame
40 : ST 1, 4(4) ;  store result into caller frame (via FP)
41 : LD 1, 4(4) ;  R1 = return value (via FP)
42 : LD 6, 0(4) ;  RA from FP
43 : LDA 7, 0(6) ;  return
44 : ADD 4, 5, 0 ;  FP = SP at 44 entry
45 : LD 1, 2(4) ;  load 'y' via FP
46 : ADD 3, 1, 0 ;  stash right in R3
47 : LD 1, 1(4) ;  load 'x' via FP
48 : ADD 2, 1, 0 ;  stash left in R2
49 : ADD 1, 3, 0 ;  restore right to R1
50 : SUB 1, 2, 1 ;  left - right
51 : JEQ 1, 2(7) ;  if 0 then true
52 : LDC 1, 0(0) ;  false
53 : LDA 7, 1(7) ;  skip
54 : LDC 1, 1(0) ;  true
55 : ADD 3, 1, 0 ;  stash right in R3
56 : LD 1, 2(4) ;  load 'y' via FP
57 : ADD 3, 1, 0 ;  stash right in R3
58 : LD 1, 1(4) ;  load 'x' via FP
59 : ADD 2, 1, 0 ;  stash left in R2
60 : ADD 1, 3, 0 ;  restore right to R1
61 : SUB 1, 2, 1 ;  left - right
62 : JLT 1, 2(7) ;  if < 0 then true
63 : LDC 1, 0(0) ;  false
64 : LDA 7, 1(7) ;  skip
65 : LDC 1, 1(0) ;  true
66 : ADD 2, 1, 0 ;  stash left in R2
67 : ADD 1, 3, 0 ;  restore right to R1
68 : ADD 1, 2, 1 ;  left OR right
69 : LDC 2, 1(0) ;  load 1
70 : SUB 1, 2, 1 ;  1 - R1
71 : ST 1, 3(4) ;  store result in return slot (via FP)
72 : LD 6, 0(4) ;  load RA (via FP)
73 : LDA 7, 0(6) ;  return to caller
74 : ADD 4, 5, 0 ;  FP = SP at 74 entry
75 : LD 1, 4(4) ;  load 'yd' via FP
76 : ADD 3, 1, 0 ;  stash right in R3
77 : LD 1, 1(4) ;  load 'x' via FP
78 : ADD 2, 1, 0 ;  stash left in R2
79 : ADD 1, 3, 0 ;  restore right to R1
80 : MUL 1, 2, 1 ;  left * right
81 : ADD 2, 1, 0 ;  Save arg0 in R2
82 : LD 1, 2(4) ;  load 'xd' via FP
83 : ADD 3, 1, 0 ;  stash right in R3
84 : LD 1, 3(4) ;  load 'y' via FP
85 : ADD 2, 1, 0 ;  stash left in R2
86 : ADD 1, 3, 0 ;  restore right to R1
87 : MUL 1, 2, 1 ;  left * right
88 : ADD 3, 1, 0 ;  Save arg1 in R3
89 : LDA 6, 97(0) ;  Prepare RA label
90 : LDA 2, 4(5) ;  callee base size -> R2
91 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
92 : ST 6, 0(5) ;  store RA in callee frame
93 : ST 2, 1(5) ;  TEMP overwrite: fix below
94 : ST 2, 1(5) ;  store arg0 from R2
95 : ST 3, 2(5) ;  store arg1 from R3
96 : LDA 7, 44(0) ;  Call greater
97 : LD 1, 3(5) ;  load callee result
98 : LDC 2, 4(0) ;  size to pop
99 : SUB 5, 5, 2 ;  pop callee frame
100 : ST 1, 5(4) ;  store result in return slot (via FP)
101 : LD 6, 0(4) ;  load RA (via FP)
102 : LDA 7, 0(6) ;  return to caller
103 : ADD 4, 5, 0 ;  FP = SP at 103 entry
104 : LD 1, 2(4) ;  load 'xd' via FP
105 : ADD 3, 1, 0 ;  stash right in R3
106 : LD 1, 3(4) ;  load 'y' via FP
107 : ADD 2, 1, 0 ;  stash left in R2
108 : ADD 1, 3, 0 ;  restore right to R1
109 : MUL 1, 2, 1 ;  left * right
110 : ADD 3, 1, 0 ;  stash right in R3
111 : LD 1, 4(4) ;  load 'yd' via FP
112 : ADD 3, 1, 0 ;  stash right in R3
113 : LD 1, 1(4) ;  load 'x' via FP
114 : ADD 2, 1, 0 ;  stash left in R2
115 : ADD 1, 3, 0 ;  restore right to R1
116 : MUL 1, 2, 1 ;  left * right
117 : ADD 2, 1, 0 ;  stash left in R2
118 : ADD 1, 3, 0 ;  restore right to R1
119 : SUB 1, 2, 1 ;  left - right
120 : JEQ 1, 2(7) ;  if 0 then true
121 : LDC 1, 0(0) ;  false
122 : LDA 7, 1(7) ;  skip
123 : LDC 1, 1(0) ;  true
124 : ST 1, 5(4) ;  store result in return slot (via FP)
125 : LD 6, 0(4) ;  load RA (via FP)
126 : LDA 7, 0(6) ;  return to caller
127 : ADD 4, 5, 0 ;  FP = SP at 127 entry
128 : LD 1, 8(4) ;  load 'd' via FP
129 : ADD 2, 1, 0 ;  Save arg0 in R2
130 : LD 1, 4(4) ;  load 'N' via FP
131 : ADD 3, 1, 0 ;  Save arg1 in R3
132 : LDA 6, 140(0) ;  Prepare RA label
133 : LDA 2, 4(5) ;  callee base size -> R2
134 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
135 : ST 6, 0(5) ;  store RA in callee frame
136 : ST 2, 1(5) ;  TEMP overwrite: fix below
137 : ST 2, 1(5) ;  store arg0 from R2
138 : ST 3, 2(5) ;  store arg1 from R3
139 : LDA 7, 44(0) ;  Call greater
140 : LD 1, 3(5) ;  load callee result
141 : LDC 2, 4(0) ;  size to pop
142 : SUB 5, 5, 2 ;  pop callee frame
143 : ADD 3, 1, 0 ;  stash right in R3
144 : LD 1, 6(4) ;  load 'b' via FP
145 : ADD 2, 1, 0 ;  Save arg0 in R2
146 : LD 1, 4(4) ;  load 'N' via FP
147 : ADD 3, 1, 0 ;  Save arg1 in R3
148 : LDA 6, 156(0) ;  Prepare RA label
149 : LDA 2, 4(5) ;  callee base size -> R2
150 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
151 : ST 6, 0(5) ;  store RA in callee frame
152 : ST 2, 1(5) ;  TEMP overwrite: fix below
153 : ST 2, 1(5) ;  store arg0 from R2
154 : ST 3, 2(5) ;  store arg1 from R3
155 : LDA 7, 44(0) ;  Call greater
156 : LD 1, 3(5) ;  load callee result
157 : LDC 2, 4(0) ;  size to pop
158 : SUB 5, 5, 2 ;  pop callee frame
159 : ADD 2, 1, 0 ;  stash left in R2
160 : ADD 1, 3, 0 ;  restore right to R1
161 : ADD 1, 2, 1 ;  left OR right
162 : JEQ 1, 204(0) ;  if false -> ELSE
163 : LDC 1, 1(0) ;  literal -> R1
164 : ADD 3, 1, 0 ;  stash right in R3
165 : LD 1, 1(4) ;  load 'selector' via FP
166 : ADD 2, 1, 0 ;  stash left in R2
167 : ADD 1, 3, 0 ;  restore right to R1
168 : SUB 1, 2, 1 ;  left - right
169 : JEQ 1, 2(7) ;  if 0 then true
170 : LDC 1, 0(0) ;  false
171 : LDA 7, 1(7) ;  skip
172 : LDC 1, 1(0) ;  true
173 : JEQ 1, 176(0) ;  if false -> ELSE
174 : LD 1, 5(4) ;  load 'a' via FP
175 : LDA 7, 203(0) ;  skip ELSE
176 : LDC 1, 2(0) ;  literal -> R1
177 : ADD 3, 1, 0 ;  stash right in R3
178 : LD 1, 1(4) ;  load 'selector' via FP
179 : ADD 2, 1, 0 ;  stash left in R2
180 : ADD 1, 3, 0 ;  restore right to R1
181 : SUB 1, 2, 1 ;  left - right
182 : JEQ 1, 2(7) ;  if 0 then true
183 : LDC 1, 0(0) ;  false
184 : LDA 7, 1(7) ;  skip
185 : LDC 1, 1(0) ;  true
186 : JEQ 1, 189(0) ;  if false -> ELSE
187 : LD 1, 6(4) ;  load 'b' via FP
188 : LDA 7, 203(0) ;  skip ELSE
189 : LDC 1, 3(0) ;  literal -> R1
190 : ADD 3, 1, 0 ;  stash right in R3
191 : LD 1, 1(4) ;  load 'selector' via FP
192 : ADD 2, 1, 0 ;  stash left in R2
193 : ADD 1, 3, 0 ;  restore right to R1
194 : SUB 1, 2, 1 ;  left - right
195 : JEQ 1, 2(7) ;  if 0 then true
196 : LDC 1, 0(0) ;  false
197 : LDA 7, 1(7) ;  skip
198 : LDC 1, 1(0) ;  true
199 : JEQ 1, 202(0) ;  if false -> ELSE
200 : LD 1, 7(4) ;  load 'c' via FP
201 : LDA 7, 203(0) ;  skip ELSE
202 : LD 1, 8(4) ;  load 'd' via FP
203 : LDA 7, 304(0) ;  skip ELSE
204 : LDA 6, 210(0) ;  Prepare RA label
205 : LDA 2, 6(5) ;  callee base size -> R2
206 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
207 : ST 6, 0(5) ;  store RA in callee frame
208 : ST 2, 1(5) ;  TEMP overwrite: fix below
209 : LDA 7, 103(0) ;  Call fractionEqual
210 : LD 1, 5(5) ;  load callee result
211 : LDC 2, 6(0) ;  size to pop
212 : SUB 5, 5, 2 ;  pop callee frame
213 : JEQ 1, 275(0) ;  if false -> ELSE
214 : LDC 1, 1(0) ;  literal -> R1
215 : ADD 3, 1, 0 ;  stash right in R3
216 : LD 1, 1(4) ;  load 'selector' via FP
217 : ADD 2, 1, 0 ;  stash left in R2
218 : ADD 1, 3, 0 ;  restore right to R1
219 : SUB 1, 2, 1 ;  left - right
220 : JEQ 1, 2(7) ;  if 0 then true
221 : LDC 1, 0(0) ;  false
222 : LDA 7, 1(7) ;  skip
223 : LDC 1, 1(0) ;  true
224 : JEQ 1, 232(0) ;  if false -> ELSE
225 : LD 1, 7(4) ;  load 'c' via FP
226 : ADD 3, 1, 0 ;  stash right in R3
227 : LD 1, 5(4) ;  load 'a' via FP
228 : ADD 2, 1, 0 ;  stash left in R2
229 : ADD 1, 3, 0 ;  restore right to R1
230 : ADD 1, 2, 1 ;  left + right
231 : LDA 7, 274(0) ;  skip ELSE
232 : LDC 1, 2(0) ;  literal -> R1
233 : ADD 3, 1, 0 ;  stash right in R3
234 : LD 1, 1(4) ;  load 'selector' via FP
235 : ADD 2, 1, 0 ;  stash left in R2
236 : ADD 1, 3, 0 ;  restore right to R1
237 : SUB 1, 2, 1 ;  left - right
238 : JEQ 1, 2(7) ;  if 0 then true
239 : LDC 1, 0(0) ;  false
240 : LDA 7, 1(7) ;  skip
241 : LDC 1, 1(0) ;  true
242 : JEQ 1, 250(0) ;  if false -> ELSE
243 : LD 1, 8(4) ;  load 'd' via FP
244 : ADD 3, 1, 0 ;  stash right in R3
245 : LD 1, 6(4) ;  load 'b' via FP
246 : ADD 2, 1, 0 ;  stash left in R2
247 : ADD 1, 3, 0 ;  restore right to R1
248 : ADD 1, 2, 1 ;  left + right
249 : LDA 7, 274(0) ;  skip ELSE
250 : LDC 1, 3(0) ;  literal -> R1
251 : ADD 3, 1, 0 ;  stash right in R3
252 : LD 1, 1(4) ;  load 'selector' via FP
253 : ADD 2, 1, 0 ;  stash left in R2
254 : ADD 1, 3, 0 ;  restore right to R1
255 : SUB 1, 2, 1 ;  left - right
256 : JEQ 1, 2(7) ;  if 0 then true
257 : LDC 1, 0(0) ;  false
258 : LDA 7, 1(7) ;  skip
259 : LDC 1, 1(0) ;  true
260 : JEQ 1, 268(0) ;  if false -> ELSE
261 : LD 1, 7(4) ;  load 'c' via FP
262 : ADD 3, 1, 0 ;  stash right in R3
263 : LD 1, 5(4) ;  load 'a' via FP
264 : ADD 2, 1, 0 ;  stash left in R2
265 : ADD 1, 3, 0 ;  restore right to R1
266 : ADD 1, 2, 1 ;  left + right
267 : LDA 7, 274(0) ;  skip ELSE
268 : LD 1, 8(4) ;  load 'd' via FP
269 : ADD 3, 1, 0 ;  stash right in R3
270 : LD 1, 6(4) ;  load 'b' via FP
271 : ADD 2, 1, 0 ;  stash left in R2
272 : ADD 1, 3, 0 ;  restore right to R1
273 : ADD 1, 2, 1 ;  left + right
274 : LDA 7, 304(0) ;  skip ELSE
275 : LDA 6, 281(0) ;  Prepare RA label
276 : LDA 2, 6(5) ;  callee base size -> R2
277 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
278 : ST 6, 0(5) ;  store RA in callee frame
279 : ST 2, 1(5) ;  TEMP overwrite: fix below
280 : LDA 7, 74(0) ;  Call fractionGreater
281 : LD 1, 5(5) ;  load callee result
282 : LDC 2, 6(0) ;  size to pop
283 : SUB 5, 5, 2 ;  pop callee frame
284 : JEQ 1, 295(0) ;  if false -> ELSE
285 : LDA 6, 291(0) ;  Prepare RA label
286 : LDA 2, 10(5) ;  callee base size -> R2
287 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
288 : ST 6, 0(5) ;  store RA in callee frame
289 : ST 2, 1(5) ;  TEMP overwrite: fix below
290 : LDA 7, 127(0) ;  Call whileLoopFor
291 : LD 1, 9(5) ;  load callee result
292 : LDC 2, 10(0) ;  size to pop
293 : SUB 5, 5, 2 ;  pop callee frame
294 : LDA 7, 304(0) ;  skip ELSE
295 : LDA 6, 301(0) ;  Prepare RA label
296 : LDA 2, 10(5) ;  callee base size -> R2
297 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
298 : ST 6, 0(5) ;  store RA in callee frame
299 : ST 2, 1(5) ;  TEMP overwrite: fix below
300 : LDA 7, 127(0) ;  Call whileLoopFor
301 : LD 1, 9(5) ;  load callee result
302 : LDC 2, 10(0) ;  size to pop
303 : SUB 5, 5, 2 ;  pop callee frame
304 : ST 1, 9(4) ;  store result in return slot (via FP)
305 : LD 6, 0(4) ;  load RA (via FP)
306 : LDA 7, 0(6) ;  return to caller
307 : ADD 4, 5, 0 ;  FP = SP at 307 entry
308 : LD 1, 3(4) ;  load 'b' via FP
309 : ADD 2, 1, 0 ;  Save arg0 in R2
310 : LD 1, 1(4) ;  load 'N' via FP
311 : ADD 3, 1, 0 ;  Save arg1 in R3
312 : LDA 6, 320(0) ;  Prepare RA label
313 : LDA 2, 4(5) ;  callee base size -> R2
314 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
315 : ST 6, 0(5) ;  store RA in callee frame
316 : ST 2, 1(5) ;  TEMP overwrite: fix below
317 : ST 2, 1(5) ;  store arg0 from R2
318 : ST 3, 2(5) ;  store arg1 from R3
319 : LDA 7, 44(0) ;  Call greater
320 : LD 1, 3(5) ;  load callee result
321 : LDC 2, 4(0) ;  size to pop
322 : SUB 5, 5, 2 ;  pop callee frame
323 : JEQ 1, 326(0) ;  if false -> ELSE
324 : LD 1, 5(4) ;  load 'd' via FP
325 : LDA 7, 327(0) ;  skip ELSE
326 : LD 1, 3(4) ;  load 'b' via FP
327 : ST 1, 6(4) ;  store result in return slot (via FP)
328 : LD 6, 0(4) ;  load RA (via FP)
329 : LDA 7, 0(6) ;  return to caller
330 : ADD 4, 5, 0 ;  FP = SP at 330 entry
331 : LD 1, 3(4) ;  load 'b' via FP
332 : ADD 2, 1, 0 ;  Save arg0 in R2
333 : LD 1, 1(4) ;  load 'N' via FP
334 : ADD 3, 1, 0 ;  Save arg1 in R3
335 : LDA 6, 343(0) ;  Prepare RA label
336 : LDA 2, 4(5) ;  callee base size -> R2
337 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
338 : ST 6, 0(5) ;  store RA in callee frame
339 : ST 2, 1(5) ;  TEMP overwrite: fix below
340 : ST 2, 1(5) ;  store arg0 from R2
341 : ST 3, 2(5) ;  store arg1 from R3
342 : LDA 7, 44(0) ;  Call greater
343 : LD 1, 3(5) ;  load callee result
344 : LDC 2, 4(0) ;  size to pop
345 : SUB 5, 5, 2 ;  pop callee frame
346 : JEQ 1, 349(0) ;  if false -> ELSE
347 : LD 1, 4(4) ;  load 'c' via FP
348 : LDA 7, 350(0) ;  skip ELSE
349 : LD 1, 2(4) ;  load 'a' via FP
350 : ST 1, 6(4) ;  store result in return slot (via FP)
351 : LD 6, 0(4) ;  load RA (via FP)
352 : LDA 7, 0(6) ;  return to caller
353 : ADD 4, 5, 0 ;  FP = SP at 353 entry
354 : LDA 6, 360(0) ;  Prepare RA label
355 : LDA 2, 7(5) ;  callee base size -> R2
356 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
357 : ST 6, 0(5) ;  store RA in callee frame
358 : ST 2, 1(5) ;  TEMP overwrite: fix below
359 : LDA 7, 307(0) ;  Call fareySelectDen
360 : LD 1, 6(5) ;  load callee result
361 : LDC 2, 7(0) ;  size to pop
362 : SUB 5, 5, 2 ;  pop callee frame
363 : ST 1, 4(4) ;  store result in return slot (via FP)
364 : LD 6, 0(4) ;  load RA (via FP)
365 : LDA 7, 0(6) ;  return to caller
366 : ADD 4, 5, 0 ;  FP = SP at 366 entry
367 : LDA 6, 373(0) ;  Prepare RA label
368 : LDA 2, 7(5) ;  callee base size -> R2
369 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
370 : ST 6, 0(5) ;  store RA in callee frame
371 : ST 2, 1(5) ;  TEMP overwrite: fix below
372 : LDA 7, 330(0) ;  Call fareySelectNum
373 : LD 1, 6(5) ;  load callee result
374 : LDC 2, 7(0) ;  size to pop
375 : SUB 5, 5, 2 ;  pop callee frame
376 : ST 1, 4(4) ;  store result in return slot (via FP)
377 : LD 6, 0(4) ;  load RA (via FP)
378 : LDA 7, 0(6) ;  return to caller
