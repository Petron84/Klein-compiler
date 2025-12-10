0 : LDC 5, 2(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LDA 6, 2(7) ;  RA = next after branch
5 : ST 6, 0(5) ;  Store RA in main frame
6 : LDA 7, 12(0) ;  Jump to main
7 : OUT 1, 0, 0 ;  Print R1
8 : HALT 0, 0, 0 ;  Halt
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(4) ;  Load RA via FP
11 : LDA 7, 0(6) ;  Return
12 : ADD 4, 5, 0 ;  FP = SP at 12 entry
13 : LD 1, 1(4) ;  load 'n' via FP
14 : ADD 2, 1, 0 ;  Save arg0 in R2
15 : LDA 6, 25(0) ;  Prepare RA label
16 : LDA 2, 3(5) ;  callee base size -> R2
17 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
18 : ST 6, 0(5) ;  store RA in callee frame
19 : ST 2, 1(5) ;  TEMP overwrite: fix below
20 : ST 2, 1(5) ; store arg0 from R2
21 : ST 2, 0(0) ;  noop slot
22 : ST 2, 0(0) ;  noop slot
23 : ST 2, 0(0) ;  noop
24 : LDA 7, 32(0) ;  Call isExcellent
25 : LD 1, 2(5) ;  load callee result
26 : LDC 2, 3(0) ;  size to pop
27 : SUB 5, 5, 2 ;  pop callee frame
28 : ST 1, 2(4) ;  store result into caller frame (via FP)
29 : LD 1, 2(4) ;  R1 = return value (via FP)
30 : LD 6, 0(4) ;  RA from FP
31 : LDA 7, 0(6) ;  return
32 : ADD 4, 5, 0 ;  FP = SP at 32 entry
33 : LD 1, 1(4) ;  load 'n' via FP
34 : ADD 2, 1, 0 ;  Save arg0 in R2
35 : LD 1, 1(4) ;  load 'n' via FP
36 : ADD 2, 1, 0 ;  Save arg0 in R2
37 : LDA 6, 47(0) ;  Prepare RA label
38 : LDA 2, 3(5) ;  callee base size -> R2
39 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
40 : ST 6, 0(5) ;  store RA in callee frame
41 : ST 2, 1(5) ;  TEMP overwrite: fix below
42 : ST 2, 1(5) ; store arg0 from R2
43 : ST 2, 0(0) ;  noop slot
44 : ST 2, 0(0) ;  noop slot
45 : ST 2, 0(0) ;  noop
46 : LDA 7, 254(0) ;  Call length
47 : LD 1, 2(5) ;  load callee result
48 : LDC 2, 3(0) ;  size to pop
49 : SUB 5, 5, 2 ;  pop callee frame
50 : ADD 3, 1, 0 ;  Save arg1 in R3
51 : LDA 6, 59(0) ;  Prepare RA label
52 : LDA 2, 4(5) ;  callee base size -> R2
53 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
54 : ST 6, 0(5) ;  store RA in callee frame
55 : ST 2, 1(5) ;  TEMP overwrite: fix below
56 : ST 2, 1(5) ;  store arg0 from R2
57 : ST 3, 2(5) ;  store arg1 from R3
58 : LDA 7, 65(0) ;  Call isExcellentSwitch
59 : LD 1, 3(5) ;  load callee result
60 : LDC 2, 4(0) ;  size to pop
61 : SUB 5, 5, 2 ;  pop callee frame
62 : ST 1, 2(4) ;  store result in return slot (via FP)
63 : LD 6, 0(4) ;  load RA (via FP)
64 : LDA 7, 0(6) ;  return to caller
65 : ADD 4, 5, 0 ;  FP = SP at 65 entry
66 : LD 1, 2(4) ;  load 'length' via FP
67 : ADD 2, 1, 0 ;  Save arg0 in R2
68 : LDA 6, 78(0) ;  Prepare RA label
69 : LDA 2, 3(5) ;  callee base size -> R2
70 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
71 : ST 6, 0(5) ;  store RA in callee frame
72 : ST 2, 1(5) ;  TEMP overwrite: fix below
73 : ST 2, 1(5) ; store arg0 from R2
74 : ST 2, 0(0) ;  noop slot
75 : ST 2, 0(0) ;  noop slot
76 : ST 2, 0(0) ;  noop
77 : LDA 7, 296(0) ;  Call ODD
78 : LD 1, 2(5) ;  load callee result
79 : LDC 2, 3(0) ;  size to pop
80 : SUB 5, 5, 2 ;  pop callee frame
81 : JEQ 1, 84(0) ;  if false -> ELSE
82 : LDC 1, 0(0) ;  bool -> R1
83 : LDA 7, 136(0) ;  skip ELSE
84 : LD 1, 1(4) ;  load 'n' via FP
85 : ADD 2, 1, 0 ;  Save arg0 in R2
86 : LDA 6, 96(0) ;  Prepare RA label
87 : LDA 2, 3(5) ;  callee base size -> R2
88 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
89 : ST 6, 0(5) ;  store RA in callee frame
90 : ST 2, 1(5) ;  TEMP overwrite: fix below
91 : ST 2, 1(5) ; store arg0 from R2
92 : ST 2, 0(0) ;  noop slot
93 : ST 2, 0(0) ;  noop slot
94 : ST 2, 0(0) ;  noop
95 : LDA 7, 211(0) ;  Call a
96 : LD 1, 2(5) ;  load callee result
97 : LDC 2, 3(0) ;  size to pop
98 : SUB 5, 5, 2 ;  pop callee frame
99 : ADD 2, 1, 0 ;  Save arg0 in R2
100 : LD 1, 1(4) ;  load 'n' via FP
101 : ADD 2, 1, 0 ;  Save arg0 in R2
102 : LDA 6, 112(0) ;  Prepare RA label
103 : LDA 2, 3(5) ;  callee base size -> R2
104 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
105 : ST 6, 0(5) ;  store RA in callee frame
106 : ST 2, 1(5) ;  TEMP overwrite: fix below
107 : ST 2, 1(5) ; store arg0 from R2
108 : ST 2, 0(0) ;  noop slot
109 : ST 2, 0(0) ;  noop slot
110 : ST 2, 0(0) ;  noop
111 : LDA 7, 159(0) ;  Call b
112 : LD 1, 2(5) ;  load callee result
113 : LDC 2, 3(0) ;  size to pop
114 : SUB 5, 5, 2 ;  pop callee frame
115 : ADD 3, 1, 0 ;  Save arg1 in R3
116 : LDA 6, 124(0) ;  Prepare RA label
117 : LDA 2, 4(5) ;  callee base size -> R2
118 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
119 : ST 6, 0(5) ;  store RA in callee frame
120 : ST 2, 1(5) ;  TEMP overwrite: fix below
121 : ST 2, 1(5) ;  store arg0 from R2
122 : ST 3, 2(5) ;  store arg1 from R3
123 : LDA 7, 139(0) ;  Call excellentDiff
124 : LD 1, 3(5) ;  load callee result
125 : LDC 2, 4(0) ;  size to pop
126 : SUB 5, 5, 2 ;  pop callee frame
127 : ADD 3, 1, 0 ;  stash right in R3
128 : LD 1, 1(4) ;  load 'n' via FP
129 : ADD 2, 1, 0 ;  stash left in R2
130 : ADD 1, 3, 0 ;  restore right to R1
131 : SUB 1, 2, 1 ;  left - right
132 : JEQ 1, 2(7) ;  if 0 then true
133 : LDC 1, 0(0) ;  false
134 : LDA 7, 1(7) ;  skip
135 : LDC 1, 1(0) ;  true
136 : ST 1, 3(4) ;  store result in return slot (via FP)
137 : LD 6, 0(4) ;  load RA (via FP)
138 : LDA 7, 0(6) ;  return to caller
139 : ADD 4, 5, 0 ;  FP = SP at 139 entry
140 : LD 1, 1(4) ;  load 'a' via FP
141 : ADD 3, 1, 0 ;  stash right in R3
142 : LD 1, 1(4) ;  load 'a' via FP
143 : ADD 2, 1, 0 ;  stash left in R2
144 : ADD 1, 3, 0 ;  restore right to R1
145 : MUL 1, 2, 1 ;  left * right
146 : ADD 3, 1, 0 ;  stash right in R3
147 : LD 1, 2(4) ;  load 'b' via FP
148 : ADD 3, 1, 0 ;  stash right in R3
149 : LD 1, 2(4) ;  load 'b' via FP
150 : ADD 2, 1, 0 ;  stash left in R2
151 : ADD 1, 3, 0 ;  restore right to R1
152 : MUL 1, 2, 1 ;  left * right
153 : ADD 2, 1, 0 ;  stash left in R2
154 : ADD 1, 3, 0 ;  restore right to R1
155 : SUB 1, 2, 1 ;  left - right
156 : ST 1, 3(4) ;  store result in return slot (via FP)
157 : LD 6, 0(4) ;  load RA (via FP)
158 : LDA 7, 0(6) ;  return to caller
159 : ADD 4, 5, 0 ;  FP = SP at 159 entry
160 : LD 1, 1(4) ;  load 'n' via FP
161 : ADD 2, 1, 0 ;  Save arg0 in R2
162 : LDC 1, 10(0) ;  literal -> R1
163 : ADD 2, 1, 0 ;  Save arg0 in R2
164 : LDC 1, 2(0) ;  literal -> R1
165 : ADD 3, 1, 0 ;  stash right in R3
166 : LD 1, 1(4) ;  load 'n' via FP
167 : ADD 2, 1, 0 ;  Save arg0 in R2
168 : LDA 6, 178(0) ;  Prepare RA label
169 : LDA 2, 3(5) ;  callee base size -> R2
170 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
171 : ST 6, 0(5) ;  store RA in callee frame
172 : ST 2, 1(5) ;  TEMP overwrite: fix below
173 : ST 2, 1(5) ; store arg0 from R2
174 : ST 2, 0(0) ;  noop slot
175 : ST 2, 0(0) ;  noop slot
176 : ST 2, 0(0) ;  noop
177 : LDA 7, 254(0) ;  Call length
178 : LD 1, 2(5) ;  load callee result
179 : LDC 2, 3(0) ;  size to pop
180 : SUB 5, 5, 2 ;  pop callee frame
181 : ADD 2, 1, 0 ;  stash left in R2
182 : ADD 1, 3, 0 ;  restore right to R1
183 : DIV 1, 2, 1 ;  left / right
184 : ADD 3, 1, 0 ;  Save arg1 in R3
185 : LDA 6, 193(0) ;  Prepare RA label
186 : LDA 2, 4(5) ;  callee base size -> R2
187 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
188 : ST 6, 0(5) ;  store RA in callee frame
189 : ST 2, 1(5) ;  TEMP overwrite: fix below
190 : ST 2, 1(5) ;  store arg0 from R2
191 : ST 3, 2(5) ;  store arg1 from R3
192 : LDA 7, 348(0) ;  Call EXP
193 : LD 1, 3(5) ;  load callee result
194 : LDC 2, 4(0) ;  size to pop
195 : SUB 5, 5, 2 ;  pop callee frame
196 : ADD 3, 1, 0 ;  Save arg1 in R3
197 : LDA 6, 205(0) ;  Prepare RA label
198 : LDA 2, 4(5) ;  callee base size -> R2
199 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
200 : ST 6, 0(5) ;  store RA in callee frame
201 : ST 2, 1(5) ;  TEMP overwrite: fix below
202 : ST 2, 1(5) ;  store arg0 from R2
203 : ST 3, 2(5) ;  store arg1 from R3
204 : LDA 7, 390(0) ;  Call MOD
205 : LD 1, 3(5) ;  load callee result
206 : LDC 2, 4(0) ;  size to pop
207 : SUB 5, 5, 2 ;  pop callee frame
208 : ST 1, 2(4) ;  store result in return slot (via FP)
209 : LD 6, 0(4) ;  load RA (via FP)
210 : LDA 7, 0(6) ;  return to caller
211 : ADD 4, 5, 0 ;  FP = SP at 211 entry
212 : LDC 1, 10(0) ;  literal -> R1
213 : ADD 2, 1, 0 ;  Save arg0 in R2
214 : LDC 1, 2(0) ;  literal -> R1
215 : ADD 3, 1, 0 ;  stash right in R3
216 : LD 1, 1(4) ;  load 'n' via FP
217 : ADD 2, 1, 0 ;  Save arg0 in R2
218 : LDA 6, 228(0) ;  Prepare RA label
219 : LDA 2, 3(5) ;  callee base size -> R2
220 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
221 : ST 6, 0(5) ;  store RA in callee frame
222 : ST 2, 1(5) ;  TEMP overwrite: fix below
223 : ST 2, 1(5) ; store arg0 from R2
224 : ST 2, 0(0) ;  noop slot
225 : ST 2, 0(0) ;  noop slot
226 : ST 2, 0(0) ;  noop
227 : LDA 7, 254(0) ;  Call length
228 : LD 1, 2(5) ;  load callee result
229 : LDC 2, 3(0) ;  size to pop
230 : SUB 5, 5, 2 ;  pop callee frame
231 : ADD 2, 1, 0 ;  stash left in R2
232 : ADD 1, 3, 0 ;  restore right to R1
233 : DIV 1, 2, 1 ;  left / right
234 : ADD 3, 1, 0 ;  Save arg1 in R3
235 : LDA 6, 243(0) ;  Prepare RA label
236 : LDA 2, 4(5) ;  callee base size -> R2
237 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
238 : ST 6, 0(5) ;  store RA in callee frame
239 : ST 2, 1(5) ;  TEMP overwrite: fix below
240 : ST 2, 1(5) ;  store arg0 from R2
241 : ST 3, 2(5) ;  store arg1 from R3
242 : LDA 7, 348(0) ;  Call EXP
243 : LD 1, 3(5) ;  load callee result
244 : LDC 2, 4(0) ;  size to pop
245 : SUB 5, 5, 2 ;  pop callee frame
246 : ADD 3, 1, 0 ;  stash right in R3
247 : LD 1, 1(4) ;  load 'n' via FP
248 : ADD 2, 1, 0 ;  stash left in R2
249 : ADD 1, 3, 0 ;  restore right to R1
250 : DIV 1, 2, 1 ;  left / right
251 : ST 1, 2(4) ;  store result in return slot (via FP)
252 : LD 6, 0(4) ;  load RA (via FP)
253 : LDA 7, 0(6) ;  return to caller
254 : ADD 4, 5, 0 ;  FP = SP at 254 entry
255 : LDC 1, 10(0) ;  literal -> R1
256 : ADD 3, 1, 0 ;  stash right in R3
257 : LD 1, 1(4) ;  load 'n' via FP
258 : ADD 2, 1, 0 ;  stash left in R2
259 : ADD 1, 3, 0 ;  restore right to R1
260 : SUB 1, 2, 1 ;  left - right
261 : JLT 1, 2(7) ;  if < 0 then true
262 : LDC 1, 0(0) ;  false
263 : LDA 7, 1(7) ;  skip
264 : LDC 1, 1(0) ;  true
265 : JEQ 1, 268(0) ;  if false -> ELSE
266 : LDC 1, 1(0) ;  literal -> R1
267 : LDA 7, 293(0) ;  skip ELSE
268 : LDC 1, 10(0) ;  literal -> R1
269 : ADD 3, 1, 0 ;  stash right in R3
270 : LD 1, 1(4) ;  load 'n' via FP
271 : ADD 2, 1, 0 ;  stash left in R2
272 : ADD 1, 3, 0 ;  restore right to R1
273 : DIV 1, 2, 1 ;  left / right
274 : ADD 2, 1, 0 ;  Save arg0 in R2
275 : LDA 6, 285(0) ;  Prepare RA label
276 : LDA 2, 3(5) ;  callee base size -> R2
277 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
278 : ST 6, 0(5) ;  store RA in callee frame
279 : ST 2, 1(5) ;  TEMP overwrite: fix below
280 : ST 2, 1(5) ; store arg0 from R2
281 : ST 2, 0(0) ;  noop slot
282 : ST 2, 0(0) ;  noop slot
283 : ST 2, 0(0) ;  noop
284 : LDA 7, 254(0) ;  Call length
285 : LD 1, 2(5) ;  load callee result
286 : LDC 2, 3(0) ;  size to pop
287 : SUB 5, 5, 2 ;  pop callee frame
288 : ADD 3, 1, 0 ;  stash right in R3
289 : LDC 1, 1(0) ;  literal -> R1
290 : ADD 2, 1, 0 ;  stash left in R2
291 : ADD 1, 3, 0 ;  restore right to R1
292 : ADD 1, 2, 1 ;  left + right
293 : ST 1, 2(4) ;  store result in return slot (via FP)
294 : LD 6, 0(4) ;  load RA (via FP)
295 : LDA 7, 0(6) ;  return to caller
296 : ADD 4, 5, 0 ;  FP = SP at 296 entry
297 : LD 1, 1(4) ;  load 'n' via FP
298 : ADD 3, 1, 0 ;  stash right in R3
299 : LDC 1, 0(0) ;  literal -> R1
300 : ADD 2, 1, 0 ;  stash left in R2
301 : ADD 1, 3, 0 ;  restore right to R1
302 : SUB 1, 2, 1 ;  left - right
303 : JLT 1, 2(7) ;  if < 0 then true
304 : LDC 1, 0(0) ;  false
305 : LDA 7, 1(7) ;  skip
306 : LDC 1, 1(0) ;  true
307 : JEQ 1, 329(0) ;  if false -> ELSE
308 : LD 1, 1(4) ;  load 'n' via FP
309 : ADD 3, 1, 0 ;  stash right in R3
310 : LDC 1, 2(0) ;  literal -> R1
311 : ADD 3, 1, 0 ;  stash right in R3
312 : LD 1, 1(4) ;  load 'n' via FP
313 : ADD 2, 1, 0 ;  stash left in R2
314 : ADD 1, 3, 0 ;  restore right to R1
315 : DIV 1, 2, 1 ;  left / right
316 : ADD 3, 1, 0 ;  stash right in R3
317 : LDC 1, 2(0) ;  literal -> R1
318 : ADD 2, 1, 0 ;  stash left in R2
319 : ADD 1, 3, 0 ;  restore right to R1
320 : MUL 1, 2, 1 ;  left * right
321 : ADD 2, 1, 0 ;  stash left in R2
322 : ADD 1, 3, 0 ;  restore right to R1
323 : SUB 1, 2, 1 ;  left - right
324 : JLT 1, 2(7) ;  if < 0 then true
325 : LDC 1, 0(0) ;  false
326 : LDA 7, 1(7) ;  skip
327 : LDC 1, 1(0) ;  true
328 : LDA 7, 345(0) ;  skip ELSE
329 : LD 1, 1(4) ;  load 'n' via FP
330 : SUB 1, 0, 1 ;  negate
331 : ADD 2, 1, 0 ;  Save arg0 in R2
332 : LDA 6, 342(0) ;  Prepare RA label
333 : LDA 2, 3(5) ;  callee base size -> R2
334 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
335 : ST 6, 0(5) ;  store RA in callee frame
336 : ST 2, 1(5) ;  TEMP overwrite: fix below
337 : ST 2, 1(5) ; store arg0 from R2
338 : ST 2, 0(0) ;  noop slot
339 : ST 2, 0(0) ;  noop slot
340 : ST 2, 0(0) ;  noop
341 : LDA 7, 296(0) ;  Call ODD
342 : LD 1, 2(5) ;  load callee result
343 : LDC 2, 3(0) ;  size to pop
344 : SUB 5, 5, 2 ;  pop callee frame
345 : ST 1, 2(4) ;  store result in return slot (via FP)
346 : LD 6, 0(4) ;  load RA (via FP)
347 : LDA 7, 0(6) ;  return to caller
348 : ADD 4, 5, 0 ;  FP = SP at 348 entry
349 : LDC 1, 0(0) ;  literal -> R1
350 : ADD 3, 1, 0 ;  stash right in R3
351 : LD 1, 2(4) ;  load 'n' via FP
352 : ADD 2, 1, 0 ;  stash left in R2
353 : ADD 1, 3, 0 ;  restore right to R1
354 : SUB 1, 2, 1 ;  left - right
355 : JEQ 1, 2(7) ;  if 0 then true
356 : LDC 1, 0(0) ;  false
357 : LDA 7, 1(7) ;  skip
358 : LDC 1, 1(0) ;  true
359 : JEQ 1, 362(0) ;  if false -> ELSE
360 : LDC 1, 1(0) ;  literal -> R1
361 : LDA 7, 387(0) ;  skip ELSE
362 : LD 1, 1(4) ;  load 'm' via FP
363 : ADD 2, 1, 0 ;  Save arg0 in R2
364 : LDC 1, 1(0) ;  literal -> R1
365 : ADD 3, 1, 0 ;  stash right in R3
366 : LD 1, 2(4) ;  load 'n' via FP
367 : ADD 2, 1, 0 ;  stash left in R2
368 : ADD 1, 3, 0 ;  restore right to R1
369 : SUB 1, 2, 1 ;  left - right
370 : ADD 3, 1, 0 ;  Save arg1 in R3
371 : LDA 6, 379(0) ;  Prepare RA label
372 : LDA 2, 4(5) ;  callee base size -> R2
373 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
374 : ST 6, 0(5) ;  store RA in callee frame
375 : ST 2, 1(5) ;  TEMP overwrite: fix below
376 : ST 2, 1(5) ;  store arg0 from R2
377 : ST 3, 2(5) ;  store arg1 from R3
378 : LDA 7, 348(0) ;  Call EXP
379 : LD 1, 3(5) ;  load callee result
380 : LDC 2, 4(0) ;  size to pop
381 : SUB 5, 5, 2 ;  pop callee frame
382 : ADD 3, 1, 0 ;  stash right in R3
383 : LD 1, 1(4) ;  load 'm' via FP
384 : ADD 2, 1, 0 ;  stash left in R2
385 : ADD 1, 3, 0 ;  restore right to R1
386 : MUL 1, 2, 1 ;  left * right
387 : ST 1, 3(4) ;  store result in return slot (via FP)
388 : LD 6, 0(4) ;  load RA (via FP)
389 : LDA 7, 0(6) ;  return to caller
390 : ADD 4, 5, 0 ;  FP = SP at 390 entry
391 : LD 1, 2(4) ;  load 'n' via FP
392 : ADD 3, 1, 0 ;  stash right in R3
393 : LD 1, 1(4) ;  load 'm' via FP
394 : ADD 2, 1, 0 ;  stash left in R2
395 : ADD 1, 3, 0 ;  restore right to R1
396 : DIV 1, 2, 1 ;  left / right
397 : ADD 3, 1, 0 ;  stash right in R3
398 : LD 1, 2(4) ;  load 'n' via FP
399 : ADD 2, 1, 0 ;  stash left in R2
400 : ADD 1, 3, 0 ;  restore right to R1
401 : MUL 1, 2, 1 ;  left * right
402 : ADD 3, 1, 0 ;  stash right in R3
403 : LD 1, 1(4) ;  load 'm' via FP
404 : ADD 2, 1, 0 ;  stash left in R2
405 : ADD 1, 3, 0 ;  restore right to R1
406 : SUB 1, 2, 1 ;  left - right
407 : ST 1, 3(4) ;  store result in return slot (via FP)
408 : LD 6, 0(4) ;  load RA (via FP)
409 : LDA 7, 0(6) ;  return to caller
