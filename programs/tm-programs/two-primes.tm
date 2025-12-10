0 : LDC 5, 3(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 -> R2
5 : ST 2, 2(5) ;  Store arg 2 at main frame
6 : LDA 6, 2(7) ;  RA = next after branch
7 : ST 6, 0(5) ;  Store RA in main frame
8 : LDA 7, 14(0) ;  Jump to main
9 : OUT 1, 0, 0 ;  Print R1
10 : HALT 0, 0, 0 ;  Halt
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(4) ;  Load RA via FP
13 : LDA 7, 0(6) ;  Return
14 : ADD 4, 5, 0 ;  FP = SP at 14 entry
15 : LDC 1, 3(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  stash right in R3
17 : LD 1, 2(4) ;  load 'selector' via FP
18 : ADD 2, 1, 0 ;  stash left in R2
19 : ADD 1, 3, 0 ;  restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 43(0) ;  if false -> ELSE
26 : LD 1, 1(4) ;  load 'n' via FP
27 : ADD 2, 1, 0 ;  Save arg0 in R2
28 : LDA 6, 38(0) ;  Prepare RA label
29 : LDA 2, 3(5) ;  callee base size -> R2
30 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
31 : ST 6, 0(5) ;  store RA in callee frame
32 : ST 2, 1(5) ;  TEMP overwrite: fix below
33 : ST 2, 1(5) ; store arg0 from R2
34 : ST 2, 0(0) ;  noop slot
35 : ST 2, 0(0) ;  noop slot
36 : ST 2, 0(0) ;  noop
37 : LDA 7, 397(0) ;  Call emirp
38 : LD 1, 2(5) ;  load callee result
39 : LDC 2, 3(0) ;  size to pop
40 : SUB 5, 5, 2 ;  pop callee frame
41 : ST 1, 3(4) ;  store result into caller frame (via FP)
42 : LDA 7, 101(0) ;  skip ELSE
43 : LDC 1, 5(0) ;  literal -> R1
44 : ADD 3, 1, 0 ;  stash right in R3
45 : LD 1, 2(4) ;  load 'selector' via FP
46 : ADD 2, 1, 0 ;  stash left in R2
47 : ADD 1, 3, 0 ;  restore right to R1
48 : SUB 1, 2, 1 ;  left - right
49 : JEQ 1, 2(7) ;  if 0 then true
50 : LDC 1, 0(0) ;  false
51 : LDA 7, 1(7) ;  skip
52 : LDC 1, 1(0) ;  true
53 : JEQ 1, 71(0) ;  if false -> ELSE
54 : LD 1, 1(4) ;  load 'n' via FP
55 : ADD 2, 1, 0 ;  Save arg0 in R2
56 : LDA 6, 66(0) ;  Prepare RA label
57 : LDA 2, 3(5) ;  callee base size -> R2
58 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
59 : ST 6, 0(5) ;  store RA in callee frame
60 : ST 2, 1(5) ;  TEMP overwrite: fix below
61 : ST 2, 1(5) ; store arg0 from R2
62 : ST 2, 0(0) ;  noop slot
63 : ST 2, 0(0) ;  noop slot
64 : ST 2, 0(0) ;  noop
65 : LDA 7, 341(0) ;  Call snowball
66 : LD 1, 2(5) ;  load callee result
67 : LDC 2, 3(0) ;  size to pop
68 : SUB 5, 5, 2 ;  pop callee frame
69 : ST 1, 3(4) ;  store result into caller frame (via FP)
70 : LDA 7, 101(0) ;  skip ELSE
71 : LDC 1, 8(0) ;  literal -> R1
72 : ADD 3, 1, 0 ;  stash right in R3
73 : LD 1, 2(4) ;  load 'selector' via FP
74 : ADD 2, 1, 0 ;  stash left in R2
75 : ADD 1, 3, 0 ;  restore right to R1
76 : SUB 1, 2, 1 ;  left - right
77 : JEQ 1, 2(7) ;  if 0 then true
78 : LDC 1, 0(0) ;  false
79 : LDA 7, 1(7) ;  skip
80 : LDC 1, 1(0) ;  true
81 : JEQ 1, 99(0) ;  if false -> ELSE
82 : LD 1, 1(4) ;  load 'n' via FP
83 : ADD 2, 1, 0 ;  Save arg0 in R2
84 : LDA 6, 94(0) ;  Prepare RA label
85 : LDA 2, 3(5) ;  callee base size -> R2
86 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
87 : ST 6, 0(5) ;  store RA in callee frame
88 : ST 2, 1(5) ;  TEMP overwrite: fix below
89 : ST 2, 1(5) ; store arg0 from R2
90 : ST 2, 0(0) ;  noop slot
91 : ST 2, 0(0) ;  noop slot
92 : ST 2, 0(0) ;  noop
93 : LDA 7, 309(0) ;  Call doBoth
94 : LD 1, 2(5) ;  load callee result
95 : LDC 2, 3(0) ;  size to pop
96 : SUB 5, 5, 2 ;  pop callee frame
97 : ST 1, 3(4) ;  store result into caller frame (via FP)
98 : LDA 7, 101(0) ;  skip ELSE
99 : LDC 1, 0(0) ;  bool -> R1
100 : ST 1, 3(4) ;  store into return slot (via FP)
101 : LD 1, 3(4) ;  R1 = return value (via FP)
102 : LD 6, 0(4) ;  RA from FP
103 : LDA 7, 0(6) ;  return
104 : ADD 4, 5, 0 ;  FP = SP at 104 entry
105 : LD 1, 2(4) ;  load 'n' via FP
106 : ADD 3, 1, 0 ;  stash right in R3
107 : LD 1, 2(4) ;  load 'n' via FP
108 : ADD 3, 1, 0 ;  stash right in R3
109 : LD 1, 1(4) ;  load 'm' via FP
110 : ADD 2, 1, 0 ;  stash left in R2
111 : ADD 1, 3, 0 ;  restore right to R1
112 : DIV 1, 2, 1 ;  left / right
113 : ADD 2, 1, 0 ;  stash left in R2
114 : ADD 1, 3, 0 ;  restore right to R1
115 : MUL 1, 2, 1 ;  left * right
116 : ADD 3, 1, 0 ;  stash right in R3
117 : LD 1, 1(4) ;  load 'm' via FP
118 : ADD 2, 1, 0 ;  stash left in R2
119 : ADD 1, 3, 0 ;  restore right to R1
120 : SUB 1, 2, 1 ;  left - right
121 : ST 1, 3(4) ;  store result in return slot (via FP)
122 : LD 6, 0(4) ;  load RA (via FP)
123 : LDA 7, 0(6) ;  return to caller
124 : ADD 4, 5, 0 ;  FP = SP at 124 entry
125 : LDC 1, 0(0) ;  literal -> R1
126 : ADD 3, 1, 0 ;  stash right in R3
127 : LD 1, 1(4) ;  load 'n' via FP
128 : ADD 2, 1, 0 ;  stash left in R2
129 : ADD 1, 3, 0 ;  restore right to R1
130 : SUB 1, 2, 1 ;  left - right
131 : JEQ 1, 2(7) ;  if 0 then true
132 : LDC 1, 0(0) ;  false
133 : LDA 7, 1(7) ;  skip
134 : LDC 1, 1(0) ;  true
135 : JEQ 1, 138(0) ;  if false -> ELSE
136 : LD 1, 2(4) ;  load 'nR' via FP
137 : LDA 7, 182(0) ;  skip ELSE
138 : LDC 1, 10(0) ;  literal -> R1
139 : ADD 3, 1, 0 ;  stash right in R3
140 : LD 1, 1(4) ;  load 'n' via FP
141 : ADD 2, 1, 0 ;  stash left in R2
142 : ADD 1, 3, 0 ;  restore right to R1
143 : DIV 1, 2, 1 ;  left / right
144 : ADD 2, 1, 0 ;  Save arg0 in R2
145 : LD 1, 1(4) ;  load 'n' via FP
146 : ADD 2, 1, 0 ;  Save arg0 in R2
147 : LDC 1, 10(0) ;  literal -> R1
148 : ADD 3, 1, 0 ;  Save arg1 in R3
149 : LDA 6, 157(0) ;  Prepare RA label
150 : LDA 2, 4(5) ;  callee base size -> R2
151 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
152 : ST 6, 0(5) ;  store RA in callee frame
153 : ST 2, 1(5) ;  TEMP overwrite: fix below
154 : ST 2, 1(5) ;  store arg0 from R2
155 : ST 3, 2(5) ;  store arg1 from R3
156 : LDA 7, 104(0) ;  Call MOD
157 : LD 1, 3(5) ;  load callee result
158 : LDC 2, 4(0) ;  size to pop
159 : SUB 5, 5, 2 ;  pop callee frame
160 : ADD 3, 1, 0 ;  stash right in R3
161 : LD 1, 2(4) ;  load 'nR' via FP
162 : ADD 3, 1, 0 ;  stash right in R3
163 : LDC 1, 10(0) ;  literal -> R1
164 : ADD 2, 1, 0 ;  stash left in R2
165 : ADD 1, 3, 0 ;  restore right to R1
166 : MUL 1, 2, 1 ;  left * right
167 : ADD 2, 1, 0 ;  stash left in R2
168 : ADD 1, 3, 0 ;  restore right to R1
169 : ADD 1, 2, 1 ;  left + right
170 : ADD 3, 1, 0 ;  Save arg1 in R3
171 : LDA 6, 179(0) ;  Prepare RA label
172 : LDA 2, 4(5) ;  callee base size -> R2
173 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
174 : ST 6, 0(5) ;  store RA in callee frame
175 : ST 2, 1(5) ;  TEMP overwrite: fix below
176 : ST 2, 1(5) ;  store arg0 from R2
177 : ST 3, 2(5) ;  store arg1 from R3
178 : LDA 7, 124(0) ;  Call reverseL
179 : LD 1, 3(5) ;  load callee result
180 : LDC 2, 4(0) ;  size to pop
181 : SUB 5, 5, 2 ;  pop callee frame
182 : ST 1, 3(4) ;  store result in return slot (via FP)
183 : LD 6, 0(4) ;  load RA (via FP)
184 : LDA 7, 0(6) ;  return to caller
185 : ADD 4, 5, 0 ;  FP = SP at 185 entry
186 : LD 1, 1(4) ;  load 'n' via FP
187 : ADD 2, 1, 0 ;  Save arg0 in R2
188 : LDC 1, 0(0) ;  literal -> R1
189 : ADD 3, 1, 0 ;  Save arg1 in R3
190 : LDA 6, 198(0) ;  Prepare RA label
191 : LDA 2, 4(5) ;  callee base size -> R2
192 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
193 : ST 6, 0(5) ;  store RA in callee frame
194 : ST 2, 1(5) ;  TEMP overwrite: fix below
195 : ST 2, 1(5) ;  store arg0 from R2
196 : ST 3, 2(5) ;  store arg1 from R3
197 : LDA 7, 124(0) ;  Call reverseL
198 : LD 1, 3(5) ;  load callee result
199 : LDC 2, 4(0) ;  size to pop
200 : SUB 5, 5, 2 ;  pop callee frame
201 : ST 1, 2(4) ;  store result in return slot (via FP)
202 : LD 6, 0(4) ;  load RA (via FP)
203 : LDA 7, 0(6) ;  return to caller
204 : ADD 4, 5, 0 ;  FP = SP at 204 entry
205 : LDC 1, 0(0) ;  literal -> R1
206 : ADD 3, 1, 0 ;  stash right in R3
207 : LD 1, 2(4) ;  load 'b' via FP
208 : ADD 2, 1, 0 ;  Save arg0 in R2
209 : LD 1, 1(4) ;  load 'a' via FP
210 : ADD 3, 1, 0 ;  Save arg1 in R3
211 : LDA 6, 219(0) ;  Prepare RA label
212 : LDA 2, 4(5) ;  callee base size -> R2
213 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
214 : ST 6, 0(5) ;  store RA in callee frame
215 : ST 2, 1(5) ;  TEMP overwrite: fix below
216 : ST 2, 1(5) ;  store arg0 from R2
217 : ST 3, 2(5) ;  store arg1 from R3
218 : LDA 7, 104(0) ;  Call MOD
219 : LD 1, 3(5) ;  load callee result
220 : LDC 2, 4(0) ;  size to pop
221 : SUB 5, 5, 2 ;  pop callee frame
222 : ADD 2, 1, 0 ;  stash left in R2
223 : ADD 1, 3, 0 ;  restore right to R1
224 : SUB 1, 2, 1 ;  left - right
225 : JEQ 1, 2(7) ;  if 0 then true
226 : LDC 1, 0(0) ;  false
227 : LDA 7, 1(7) ;  skip
228 : LDC 1, 1(0) ;  true
229 : ST 1, 3(4) ;  store result in return slot (via FP)
230 : LD 6, 0(4) ;  load RA (via FP)
231 : LDA 7, 0(6) ;  return to caller
232 : ADD 4, 5, 0 ;  FP = SP at 232 entry
233 : LD 1, 2(4) ;  load 'n' via FP
234 : ADD 3, 1, 0 ;  stash right in R3
235 : LD 1, 1(4) ;  load 'i' via FP
236 : ADD 2, 1, 0 ;  stash left in R2
237 : ADD 1, 3, 0 ;  restore right to R1
238 : SUB 1, 2, 1 ;  left - right
239 : JLT 1, 2(7) ;  if < 0 then true
240 : LDC 1, 0(0) ;  false
241 : LDA 7, 1(7) ;  skip
242 : LDC 1, 1(0) ;  true
243 : JEQ 1, 284(0) ;  if false -> ELSE
244 : LDC 1, 1(0) ;  literal -> R1
245 : ADD 3, 1, 0 ;  stash right in R3
246 : LD 1, 1(4) ;  load 'i' via FP
247 : ADD 2, 1, 0 ;  stash left in R2
248 : ADD 1, 3, 0 ;  restore right to R1
249 : ADD 1, 2, 1 ;  left + right
250 : ADD 2, 1, 0 ;  Save arg0 in R2
251 : LD 1, 2(4) ;  load 'n' via FP
252 : ADD 3, 1, 0 ;  Save arg1 in R3
253 : LDA 6, 261(0) ;  Prepare RA label
254 : LDA 2, 4(5) ;  callee base size -> R2
255 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
256 : ST 6, 0(5) ;  store RA in callee frame
257 : ST 2, 1(5) ;  TEMP overwrite: fix below
258 : ST 2, 1(5) ;  store arg0 from R2
259 : ST 3, 2(5) ;  store arg1 from R3
260 : LDA 7, 232(0) ;  Call hasDivisorFrom
261 : LD 1, 3(5) ;  load callee result
262 : LDC 2, 4(0) ;  size to pop
263 : SUB 5, 5, 2 ;  pop callee frame
264 : ADD 3, 1, 0 ;  stash right in R3
265 : LD 1, 1(4) ;  load 'i' via FP
266 : ADD 2, 1, 0 ;  Save arg0 in R2
267 : LD 1, 2(4) ;  load 'n' via FP
268 : ADD 3, 1, 0 ;  Save arg1 in R3
269 : LDA 6, 277(0) ;  Prepare RA label
270 : LDA 2, 4(5) ;  callee base size -> R2
271 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
272 : ST 6, 0(5) ;  store RA in callee frame
273 : ST 2, 1(5) ;  TEMP overwrite: fix below
274 : ST 2, 1(5) ;  store arg0 from R2
275 : ST 3, 2(5) ;  store arg1 from R3
276 : LDA 7, 204(0) ;  Call divides
277 : LD 1, 3(5) ;  load callee result
278 : LDC 2, 4(0) ;  size to pop
279 : SUB 5, 5, 2 ;  pop callee frame
280 : ADD 2, 1, 0 ;  stash left in R2
281 : ADD 1, 3, 0 ;  restore right to R1
282 : ADD 1, 2, 1 ;  left OR right
283 : LDA 7, 285(0) ;  skip ELSE
284 : LDC 1, 0(0) ;  bool -> R1
285 : ST 1, 3(4) ;  store result in return slot (via FP)
286 : LD 6, 0(4) ;  load RA (via FP)
287 : LDA 7, 0(6) ;  return to caller
288 : ADD 4, 5, 0 ;  FP = SP at 288 entry
289 : LDC 1, 2(0) ;  literal -> R1
290 : ADD 2, 1, 0 ;  Save arg0 in R2
291 : LD 1, 1(4) ;  load 'n' via FP
292 : ADD 3, 1, 0 ;  Save arg1 in R3
293 : LDA 6, 301(0) ;  Prepare RA label
294 : LDA 2, 4(5) ;  callee base size -> R2
295 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
296 : ST 6, 0(5) ;  store RA in callee frame
297 : ST 2, 1(5) ;  TEMP overwrite: fix below
298 : ST 2, 1(5) ;  store arg0 from R2
299 : ST 3, 2(5) ;  store arg1 from R3
300 : LDA 7, 232(0) ;  Call hasDivisorFrom
301 : LD 1, 3(5) ;  load callee result
302 : LDC 2, 4(0) ;  size to pop
303 : SUB 5, 5, 2 ;  pop callee frame
304 : LDC 2, 1(0) ;  load 1
305 : SUB 1, 2, 1 ;  1 - R1
306 : ST 1, 2(4) ;  store result in return slot (via FP)
307 : LD 6, 0(4) ;  load RA (via FP)
308 : LDA 7, 0(6) ;  return to caller
309 : ADD 4, 5, 0 ;  FP = SP at 309 entry
310 : ADD 2, 1, 0 ;  Save arg0 in R2
311 : ADD 3, 1, 0 ;  Save arg1 in R3
312 : LDA 6, 320(0) ;  Prepare RA label
313 : LDA 2, 3(5) ;  callee base size -> R2
314 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
315 : ST 6, 0(5) ;  store RA in callee frame
316 : ST 2, 1(5) ;  TEMP overwrite: fix below
317 : ST 2, 1(5) ;  store arg0 from R2
318 : ST 3, 2(5) ;  store arg1 from R3
319 : LDA 7, 11(0) ;  Call print
320 : LD 1, 2(5) ;  load callee result
321 : LDC 2, 3(0) ;  size to pop
322 : SUB 5, 5, 2 ;  pop callee frame
323 : LD 1, 1(4) ;  load 'n' via FP
324 : ADD 2, 1, 0 ;  Save arg0 in R2
325 : LDA 6, 335(0) ;  Prepare RA label
326 : LDA 2, 3(5) ;  callee base size -> R2
327 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
328 : ST 6, 0(5) ;  store RA in callee frame
329 : ST 2, 1(5) ;  TEMP overwrite: fix below
330 : ST 2, 1(5) ; store arg0 from R2
331 : ST 2, 0(0) ;  noop slot
332 : ST 2, 0(0) ;  noop slot
333 : ST 2, 0(0) ;  noop
334 : LDA 7, 341(0) ;  Call snowball
335 : LD 1, 2(5) ;  load callee result
336 : LDC 2, 3(0) ;  size to pop
337 : SUB 5, 5, 2 ;  pop callee frame
338 : ST 1, 2(4) ;  store result in return slot (via FP)
339 : LD 6, 0(4) ;  load RA (via FP)
340 : LDA 7, 0(6) ;  return to caller
341 : ADD 4, 5, 0 ;  FP = SP at 341 entry
342 : LDC 1, 10(0) ;  literal -> R1
343 : ADD 3, 1, 0 ;  stash right in R3
344 : LD 1, 1(4) ;  load 'n' via FP
345 : ADD 2, 1, 0 ;  stash left in R2
346 : ADD 1, 3, 0 ;  restore right to R1
347 : SUB 1, 2, 1 ;  left - right
348 : JLT 1, 2(7) ;  if < 0 then true
349 : LDC 1, 0(0) ;  false
350 : LDA 7, 1(7) ;  skip
351 : LDC 1, 1(0) ;  true
352 : JEQ 1, 355(0) ;  if false -> ELSE
353 : LDC 1, 1(0) ;  bool -> R1
354 : LDA 7, 375(0) ;  skip ELSE
355 : LDC 1, 10(0) ;  literal -> R1
356 : ADD 3, 1, 0 ;  stash right in R3
357 : LD 1, 1(4) ;  load 'n' via FP
358 : ADD 2, 1, 0 ;  stash left in R2
359 : ADD 1, 3, 0 ;  restore right to R1
360 : DIV 1, 2, 1 ;  left / right
361 : ADD 2, 1, 0 ;  Save arg0 in R2
362 : LDA 6, 372(0) ;  Prepare RA label
363 : LDA 2, 3(5) ;  callee base size -> R2
364 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
365 : ST 6, 0(5) ;  store RA in callee frame
366 : ST 2, 1(5) ;  TEMP overwrite: fix below
367 : ST 2, 1(5) ; store arg0 from R2
368 : ST 2, 0(0) ;  noop slot
369 : ST 2, 0(0) ;  noop slot
370 : ST 2, 0(0) ;  noop
371 : LDA 7, 288(0) ;  Call isPrime
372 : LD 1, 2(5) ;  load callee result
373 : LDC 2, 3(0) ;  size to pop
374 : SUB 5, 5, 2 ;  pop callee frame
375 : ADD 3, 1, 0 ;  stash right in R3
376 : LD 1, 1(4) ;  load 'n' via FP
377 : ADD 2, 1, 0 ;  Save arg0 in R2
378 : LDA 6, 388(0) ;  Prepare RA label
379 : LDA 2, 3(5) ;  callee base size -> R2
380 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
381 : ST 6, 0(5) ;  store RA in callee frame
382 : ST 2, 1(5) ;  TEMP overwrite: fix below
383 : ST 2, 1(5) ; store arg0 from R2
384 : ST 2, 0(0) ;  noop slot
385 : ST 2, 0(0) ;  noop slot
386 : ST 2, 0(0) ;  noop
387 : LDA 7, 288(0) ;  Call isPrime
388 : LD 1, 2(5) ;  load callee result
389 : LDC 2, 3(0) ;  size to pop
390 : SUB 5, 5, 2 ;  pop callee frame
391 : ADD 2, 1, 0 ;  stash left in R2
392 : ADD 1, 3, 0 ;  restore right to R1
393 : MUL 1, 2, 1 ;  left AND right
394 : ST 1, 2(4) ;  store result in return slot (via FP)
395 : LD 6, 0(4) ;  load RA (via FP)
396 : LDA 7, 0(6) ;  return to caller
397 : ADD 4, 5, 0 ;  FP = SP at 397 entry
398 : LD 1, 1(4) ;  load 'n' via FP
399 : ADD 2, 1, 0 ;  Save arg0 in R2
400 : LDA 6, 410(0) ;  Prepare RA label
401 : LDA 2, 3(5) ;  callee base size -> R2
402 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
403 : ST 6, 0(5) ;  store RA in callee frame
404 : ST 2, 1(5) ;  TEMP overwrite: fix below
405 : ST 2, 1(5) ; store arg0 from R2
406 : ST 2, 0(0) ;  noop slot
407 : ST 2, 0(0) ;  noop slot
408 : ST 2, 0(0) ;  noop
409 : LDA 7, 185(0) ;  Call reverse
410 : LD 1, 2(5) ;  load callee result
411 : LDC 2, 3(0) ;  size to pop
412 : SUB 5, 5, 2 ;  pop callee frame
413 : ADD 2, 1, 0 ;  Save arg0 in R2
414 : LDA 6, 424(0) ;  Prepare RA label
415 : LDA 2, 3(5) ;  callee base size -> R2
416 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
417 : ST 6, 0(5) ;  store RA in callee frame
418 : ST 2, 1(5) ;  TEMP overwrite: fix below
419 : ST 2, 1(5) ; store arg0 from R2
420 : ST 2, 0(0) ;  noop slot
421 : ST 2, 0(0) ;  noop slot
422 : ST 2, 0(0) ;  noop
423 : LDA 7, 288(0) ;  Call isPrime
424 : LD 1, 2(5) ;  load callee result
425 : LDC 2, 3(0) ;  size to pop
426 : SUB 5, 5, 2 ;  pop callee frame
427 : ADD 3, 1, 0 ;  stash right in R3
428 : LD 1, 1(4) ;  load 'n' via FP
429 : ADD 2, 1, 0 ;  Save arg0 in R2
430 : LDA 6, 440(0) ;  Prepare RA label
431 : LDA 2, 3(5) ;  callee base size -> R2
432 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
433 : ST 6, 0(5) ;  store RA in callee frame
434 : ST 2, 1(5) ;  TEMP overwrite: fix below
435 : ST 2, 1(5) ; store arg0 from R2
436 : ST 2, 0(0) ;  noop slot
437 : ST 2, 0(0) ;  noop slot
438 : ST 2, 0(0) ;  noop
439 : LDA 7, 288(0) ;  Call isPrime
440 : LD 1, 2(5) ;  load callee result
441 : LDC 2, 3(0) ;  size to pop
442 : SUB 5, 5, 2 ;  pop callee frame
443 : ADD 2, 1, 0 ;  stash left in R2
444 : ADD 1, 3, 0 ;  restore right to R1
445 : MUL 1, 2, 1 ;  left AND right
446 : ST 1, 2(4) ;  store result in return slot (via FP)
447 : LD 6, 0(4) ;  load RA (via FP)
448 : LDA 7, 0(6) ;  return to caller
