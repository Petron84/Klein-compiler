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
13 : LD 1, 1(4) ;  load 'x' via FP
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
24 : LDA 7, 545(0) ;  Call circularPrimesTo
25 : LD 1, 2(5) ;  load callee result
26 : LDC 2, 3(0) ;  size to pop
27 : SUB 5, 5, 2 ;  pop callee frame
28 : ST 1, 2(4) ;  store result into caller frame (via FP)
29 : LD 1, 2(4) ;  R1 = return value (via FP)
30 : LD 6, 0(4) ;  RA from FP
31 : LDA 7, 0(6) ;  return
32 : ADD 4, 5, 0 ;  FP = SP at 32 entry
33 : LD 1, 2(4) ;  load 'den' via FP
34 : ADD 3, 1, 0 ;  stash right in R3
35 : LD 1, 1(4) ;  load 'num' via FP
36 : ADD 2, 1, 0 ;  stash left in R2
37 : ADD 1, 3, 0 ;  restore right to R1
38 : SUB 1, 2, 1 ;  left - right
39 : JLT 1, 2(7) ;  if < 0 then true
40 : LDC 1, 0(0) ;  false
41 : LDA 7, 1(7) ;  skip
42 : LDC 1, 1(0) ;  true
43 : JEQ 1, 46(0) ;  if false -> ELSE
44 : LD 1, 1(4) ;  load 'num' via FP
45 : LDA 7, 66(0) ;  skip ELSE
46 : LD 1, 2(4) ;  load 'den' via FP
47 : ADD 3, 1, 0 ;  stash right in R3
48 : LD 1, 1(4) ;  load 'num' via FP
49 : ADD 2, 1, 0 ;  stash left in R2
50 : ADD 1, 3, 0 ;  restore right to R1
51 : SUB 1, 2, 1 ;  left - right
52 : ADD 2, 1, 0 ;  Save arg0 in R2
53 : LD 1, 2(4) ;  load 'den' via FP
54 : ADD 3, 1, 0 ;  Save arg1 in R3
55 : LDA 6, 63(0) ;  Prepare RA label
56 : LDA 2, 4(5) ;  callee base size -> R2
57 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
58 : ST 6, 0(5) ;  store RA in callee frame
59 : ST 2, 1(5) ;  TEMP overwrite: fix below
60 : ST 2, 1(5) ;  store arg0 from R2
61 : ST 3, 2(5) ;  store arg1 from R3
62 : LDA 7, 32(0) ;  Call mod
63 : LD 1, 3(5) ;  load callee result
64 : LDC 2, 4(0) ;  size to pop
65 : SUB 5, 5, 2 ;  pop callee frame
66 : ST 1, 3(4) ;  store result in return slot (via FP)
67 : LD 6, 0(4) ;  load RA (via FP)
68 : LDA 7, 0(6) ;  return to caller
69 : ADD 4, 5, 0 ;  FP = SP at 69 entry
70 : LDC 1, 0(0) ;  literal -> R1
71 : ADD 3, 1, 0 ;  stash right in R3
72 : LD 1, 2(4) ;  load 'b' via FP
73 : ADD 2, 1, 0 ;  Save arg0 in R2
74 : LD 1, 1(4) ;  load 'a' via FP
75 : ADD 3, 1, 0 ;  Save arg1 in R3
76 : LDA 6, 84(0) ;  Prepare RA label
77 : LDA 2, 4(5) ;  callee base size -> R2
78 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
79 : ST 6, 0(5) ;  store RA in callee frame
80 : ST 2, 1(5) ;  TEMP overwrite: fix below
81 : ST 2, 1(5) ;  store arg0 from R2
82 : ST 3, 2(5) ;  store arg1 from R3
83 : LDA 7, 32(0) ;  Call mod
84 : LD 1, 3(5) ;  load callee result
85 : LDC 2, 4(0) ;  size to pop
86 : SUB 5, 5, 2 ;  pop callee frame
87 : ADD 2, 1, 0 ;  stash left in R2
88 : ADD 1, 3, 0 ;  restore right to R1
89 : SUB 1, 2, 1 ;  left - right
90 : JEQ 1, 2(7) ;  if 0 then true
91 : LDC 1, 0(0) ;  false
92 : LDA 7, 1(7) ;  skip
93 : LDC 1, 1(0) ;  true
94 : ST 1, 3(4) ;  store result in return slot (via FP)
95 : LD 6, 0(4) ;  load RA (via FP)
96 : LDA 7, 0(6) ;  return to caller
97 : ADD 4, 5, 0 ;  FP = SP at 97 entry
98 : LD 1, 2(4) ;  load 'n' via FP
99 : ADD 3, 1, 0 ;  stash right in R3
100 : LD 1, 1(4) ;  load 'i' via FP
101 : ADD 2, 1, 0 ;  stash left in R2
102 : ADD 1, 3, 0 ;  restore right to R1
103 : SUB 1, 2, 1 ;  left - right
104 : JLT 1, 2(7) ;  if < 0 then true
105 : LDC 1, 0(0) ;  false
106 : LDA 7, 1(7) ;  skip
107 : LDC 1, 1(0) ;  true
108 : JEQ 1, 149(0) ;  if false -> ELSE
109 : LDC 1, 1(0) ;  literal -> R1
110 : ADD 3, 1, 0 ;  stash right in R3
111 : LD 1, 1(4) ;  load 'i' via FP
112 : ADD 2, 1, 0 ;  stash left in R2
113 : ADD 1, 3, 0 ;  restore right to R1
114 : ADD 1, 2, 1 ;  left + right
115 : ADD 2, 1, 0 ;  Save arg0 in R2
116 : LD 1, 2(4) ;  load 'n' via FP
117 : ADD 3, 1, 0 ;  Save arg1 in R3
118 : LDA 6, 126(0) ;  Prepare RA label
119 : LDA 2, 4(5) ;  callee base size -> R2
120 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
121 : ST 6, 0(5) ;  store RA in callee frame
122 : ST 2, 1(5) ;  TEMP overwrite: fix below
123 : ST 2, 1(5) ;  store arg0 from R2
124 : ST 3, 2(5) ;  store arg1 from R3
125 : LDA 7, 97(0) ;  Call hasDivisorFrom
126 : LD 1, 3(5) ;  load callee result
127 : LDC 2, 4(0) ;  size to pop
128 : SUB 5, 5, 2 ;  pop callee frame
129 : ADD 3, 1, 0 ;  stash right in R3
130 : LD 1, 1(4) ;  load 'i' via FP
131 : ADD 2, 1, 0 ;  Save arg0 in R2
132 : LD 1, 2(4) ;  load 'n' via FP
133 : ADD 3, 1, 0 ;  Save arg1 in R3
134 : LDA 6, 142(0) ;  Prepare RA label
135 : LDA 2, 4(5) ;  callee base size -> R2
136 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
137 : ST 6, 0(5) ;  store RA in callee frame
138 : ST 2, 1(5) ;  TEMP overwrite: fix below
139 : ST 2, 1(5) ;  store arg0 from R2
140 : ST 3, 2(5) ;  store arg1 from R3
141 : LDA 7, 69(0) ;  Call divides
142 : LD 1, 3(5) ;  load callee result
143 : LDC 2, 4(0) ;  size to pop
144 : SUB 5, 5, 2 ;  pop callee frame
145 : ADD 2, 1, 0 ;  stash left in R2
146 : ADD 1, 3, 0 ;  restore right to R1
147 : ADD 1, 2, 1 ;  left OR right
148 : LDA 7, 150(0) ;  skip ELSE
149 : LDC 1, 0(0) ;  bool -> R1
150 : ST 1, 3(4) ;  store result in return slot (via FP)
151 : LD 6, 0(4) ;  load RA (via FP)
152 : LDA 7, 0(6) ;  return to caller
153 : ADD 4, 5, 0 ;  FP = SP at 153 entry
154 : LDC 1, 2(0) ;  literal -> R1
155 : ADD 2, 1, 0 ;  Save arg0 in R2
156 : LD 1, 1(4) ;  load 'n' via FP
157 : ADD 3, 1, 0 ;  Save arg1 in R3
158 : LDA 6, 166(0) ;  Prepare RA label
159 : LDA 2, 4(5) ;  callee base size -> R2
160 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
161 : ST 6, 0(5) ;  store RA in callee frame
162 : ST 2, 1(5) ;  TEMP overwrite: fix below
163 : ST 2, 1(5) ;  store arg0 from R2
164 : ST 3, 2(5) ;  store arg1 from R3
165 : LDA 7, 97(0) ;  Call hasDivisorFrom
166 : LD 1, 3(5) ;  load callee result
167 : LDC 2, 4(0) ;  size to pop
168 : SUB 5, 5, 2 ;  pop callee frame
169 : LDC 2, 1(0) ;  load 1
170 : SUB 1, 2, 1 ;  1 - R1
171 : ST 1, 2(4) ;  store result in return slot (via FP)
172 : LD 6, 0(4) ;  load RA (via FP)
173 : LDA 7, 0(6) ;  return to caller
174 : ADD 4, 5, 0 ;  FP = SP at 174 entry
175 : LDC 1, 0(0) ;  literal -> R1
176 : ADD 3, 1, 0 ;  stash right in R3
177 : LDC 1, 10(0) ;  literal -> R1
178 : ADD 3, 1, 0 ;  stash right in R3
179 : LD 1, 1(4) ;  load 'x' via FP
180 : ADD 2, 1, 0 ;  stash left in R2
181 : ADD 1, 3, 0 ;  restore right to R1
182 : DIV 1, 2, 1 ;  left / right
183 : ADD 2, 1, 0 ;  stash left in R2
184 : ADD 1, 3, 0 ;  restore right to R1
185 : SUB 1, 2, 1 ;  left - right
186 : JEQ 1, 2(7) ;  if 0 then true
187 : LDC 1, 0(0) ;  false
188 : LDA 7, 1(7) ;  skip
189 : LDC 1, 1(0) ;  true
190 : JEQ 1, 193(0) ;  if false -> ELSE
191 : LD 1, 2(4) ;  load 'y' via FP
192 : LDA 7, 218(0) ;  skip ELSE
193 : LDC 1, 10(0) ;  literal -> R1
194 : ADD 3, 1, 0 ;  stash right in R3
195 : LD 1, 1(4) ;  load 'x' via FP
196 : ADD 2, 1, 0 ;  stash left in R2
197 : ADD 1, 3, 0 ;  restore right to R1
198 : DIV 1, 2, 1 ;  left / right
199 : ADD 2, 1, 0 ;  Save arg0 in R2
200 : LDC 1, 1(0) ;  literal -> R1
201 : ADD 3, 1, 0 ;  stash right in R3
202 : LD 1, 2(4) ;  load 'y' via FP
203 : ADD 2, 1, 0 ;  stash left in R2
204 : ADD 1, 3, 0 ;  restore right to R1
205 : ADD 1, 2, 1 ;  left + right
206 : ADD 3, 1, 0 ;  Save arg1 in R3
207 : LDA 6, 215(0) ;  Prepare RA label
208 : LDA 2, 4(5) ;  callee base size -> R2
209 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
210 : ST 6, 0(5) ;  store RA in callee frame
211 : ST 2, 1(5) ;  TEMP overwrite: fix below
212 : ST 2, 1(5) ;  store arg0 from R2
213 : ST 3, 2(5) ;  store arg1 from R3
214 : LDA 7, 174(0) ;  Call log10Helper
215 : LD 1, 3(5) ;  load callee result
216 : LDC 2, 4(0) ;  size to pop
217 : SUB 5, 5, 2 ;  pop callee frame
218 : ST 1, 3(4) ;  store result in return slot (via FP)
219 : LD 6, 0(4) ;  load RA (via FP)
220 : LDA 7, 0(6) ;  return to caller
221 : ADD 4, 5, 0 ;  FP = SP at 221 entry
222 : LD 1, 1(4) ;  load 'x' via FP
223 : ADD 2, 1, 0 ;  Save arg0 in R2
224 : LDC 1, 0(0) ;  literal -> R1
225 : ADD 3, 1, 0 ;  Save arg1 in R3
226 : LDA 6, 234(0) ;  Prepare RA label
227 : LDA 2, 4(5) ;  callee base size -> R2
228 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
229 : ST 6, 0(5) ;  store RA in callee frame
230 : ST 2, 1(5) ;  TEMP overwrite: fix below
231 : ST 2, 1(5) ;  store arg0 from R2
232 : ST 3, 2(5) ;  store arg1 from R3
233 : LDA 7, 174(0) ;  Call log10Helper
234 : LD 1, 3(5) ;  load callee result
235 : LDC 2, 4(0) ;  size to pop
236 : SUB 5, 5, 2 ;  pop callee frame
237 : ST 1, 2(4) ;  store result in return slot (via FP)
238 : LD 6, 0(4) ;  load RA (via FP)
239 : LDA 7, 0(6) ;  return to caller
240 : ADD 4, 5, 0 ;  FP = SP at 240 entry
241 : LDC 1, 0(0) ;  literal -> R1
242 : ADD 3, 1, 0 ;  stash right in R3
243 : LD 1, 2(4) ;  load 'power' via FP
244 : ADD 2, 1, 0 ;  stash left in R2
245 : ADD 1, 3, 0 ;  restore right to R1
246 : SUB 1, 2, 1 ;  left - right
247 : JEQ 1, 2(7) ;  if 0 then true
248 : LDC 1, 0(0) ;  false
249 : LDA 7, 1(7) ;  skip
250 : LDC 1, 1(0) ;  true
251 : JEQ 1, 254(0) ;  if false -> ELSE
252 : LDC 1, 1(0) ;  literal -> R1
253 : LDA 7, 276(0) ;  skip ELSE
254 : LDC 1, 1(0) ;  literal -> R1
255 : ADD 3, 1, 0 ;  stash right in R3
256 : LD 1, 2(4) ;  load 'power' via FP
257 : ADD 2, 1, 0 ;  stash left in R2
258 : ADD 1, 3, 0 ;  restore right to R1
259 : SUB 1, 2, 1 ;  left - right
260 : JEQ 1, 2(7) ;  if 0 then true
261 : LDC 1, 0(0) ;  false
262 : LDA 7, 1(7) ;  skip
263 : LDC 1, 1(0) ;  true
264 : JEQ 1, 267(0) ;  if false -> ELSE
265 : LD 1, 3(4) ;  load 'total' via FP
266 : LDA 7, 276(0) ;  skip ELSE
267 : LDA 6, 273(0) ;  Prepare RA label
268 : LDA 2, 5(5) ;  callee base size -> R2
269 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
270 : ST 6, 0(5) ;  store RA in callee frame
271 : ST 2, 1(5) ;  TEMP overwrite: fix below
272 : LDA 7, 240(0) ;  Call powHelper
273 : LD 1, 4(5) ;  load callee result
274 : LDC 2, 5(0) ;  size to pop
275 : SUB 5, 5, 2 ;  pop callee frame
276 : ST 1, 4(4) ;  store result in return slot (via FP)
277 : LD 6, 0(4) ;  load RA (via FP)
278 : LDA 7, 0(6) ;  return to caller
279 : ADD 4, 5, 0 ;  FP = SP at 279 entry
280 : LDA 6, 286(0) ;  Prepare RA label
281 : LDA 2, 5(5) ;  callee base size -> R2
282 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
283 : ST 6, 0(5) ;  store RA in callee frame
284 : ST 2, 1(5) ;  TEMP overwrite: fix below
285 : LDA 7, 240(0) ;  Call powHelper
286 : LD 1, 4(5) ;  load callee result
287 : LDC 2, 5(0) ;  size to pop
288 : SUB 5, 5, 2 ;  pop callee frame
289 : ST 1, 3(4) ;  store result in return slot (via FP)
290 : LD 6, 0(4) ;  load RA (via FP)
291 : LDA 7, 0(6) ;  return to caller
292 : ADD 4, 5, 0 ;  FP = SP at 292 entry
293 : LDC 1, 10(0) ;  literal -> R1
294 : ADD 2, 1, 0 ;  Save arg0 in R2
295 : LD 1, 1(4) ;  load 'x' via FP
296 : ADD 2, 1, 0 ;  Save arg0 in R2
297 : LDA 6, 307(0) ;  Prepare RA label
298 : LDA 2, 3(5) ;  callee base size -> R2
299 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
300 : ST 6, 0(5) ;  store RA in callee frame
301 : ST 2, 1(5) ;  TEMP overwrite: fix below
302 : ST 2, 1(5) ; store arg0 from R2
303 : ST 2, 0(0) ;  noop slot
304 : ST 2, 0(0) ;  noop slot
305 : ST 2, 0(0) ;  noop
306 : LDA 7, 221(0) ;  Call log10
307 : LD 1, 2(5) ;  load callee result
308 : LDC 2, 3(0) ;  size to pop
309 : SUB 5, 5, 2 ;  pop callee frame
310 : ADD 3, 1, 0 ;  Save arg1 in R3
311 : LDA 6, 319(0) ;  Prepare RA label
312 : LDA 2, 4(5) ;  callee base size -> R2
313 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
314 : ST 6, 0(5) ;  store RA in callee frame
315 : ST 2, 1(5) ;  TEMP overwrite: fix below
316 : ST 2, 1(5) ;  store arg0 from R2
317 : ST 3, 2(5) ;  store arg1 from R3
318 : LDA 7, 279(0) ;  Call pow
319 : LD 1, 3(5) ;  load callee result
320 : LDC 2, 4(0) ;  size to pop
321 : SUB 5, 5, 2 ;  pop callee frame
322 : ADD 3, 1, 0 ;  stash right in R3
323 : LD 1, 1(4) ;  load 'x' via FP
324 : ADD 2, 1, 0 ;  Save arg0 in R2
325 : LDC 1, 10(0) ;  literal -> R1
326 : ADD 3, 1, 0 ;  Save arg1 in R3
327 : LDA 6, 335(0) ;  Prepare RA label
328 : LDA 2, 4(5) ;  callee base size -> R2
329 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
330 : ST 6, 0(5) ;  store RA in callee frame
331 : ST 2, 1(5) ;  TEMP overwrite: fix below
332 : ST 2, 1(5) ;  store arg0 from R2
333 : ST 3, 2(5) ;  store arg1 from R3
334 : LDA 7, 32(0) ;  Call mod
335 : LD 1, 3(5) ;  load callee result
336 : LDC 2, 4(0) ;  size to pop
337 : SUB 5, 5, 2 ;  pop callee frame
338 : ADD 2, 1, 0 ;  stash left in R2
339 : ADD 1, 3, 0 ;  restore right to R1
340 : MUL 1, 2, 1 ;  left * right
341 : ADD 3, 1, 0 ;  stash right in R3
342 : LDC 1, 10(0) ;  literal -> R1
343 : ADD 3, 1, 0 ;  stash right in R3
344 : LD 1, 1(4) ;  load 'x' via FP
345 : ADD 2, 1, 0 ;  stash left in R2
346 : ADD 1, 3, 0 ;  restore right to R1
347 : DIV 1, 2, 1 ;  left / right
348 : ADD 2, 1, 0 ;  stash left in R2
349 : ADD 1, 3, 0 ;  restore right to R1
350 : ADD 1, 2, 1 ;  left + right
351 : ST 1, 2(4) ;  store result in return slot (via FP)
352 : LD 6, 0(4) ;  load RA (via FP)
353 : LDA 7, 0(6) ;  return to caller
354 : ADD 4, 5, 0 ;  FP = SP at 354 entry
355 : LDA 6, 360(0) ;  Prepare RA label
356 : LDA 2, 3(5) ;  callee base size -> R2
357 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
358 : ST 6, 0(5) ;  store RA in callee frame
359 : LDA 7, 9(0) ;  Call print
360 : LD 1, 2(5) ;  load callee result
361 : LDC 2, 3(0) ;  size to pop
362 : SUB 5, 5, 2 ;  pop callee frame
363 : LDC 1, 1(0) ;  bool -> R1
364 : ST 1, 2(4) ;  store result in return slot (via FP)
365 : LD 6, 0(4) ;  load RA (via FP)
366 : LDA 7, 0(6) ;  return to caller
367 : ADD 4, 5, 0 ;  FP = SP at 367 entry
368 : LDC 1, 0(0) ;  literal -> R1
369 : ADD 3, 1, 0 ;  stash right in R3
370 : LD 1, 2(4) ;  load 'turns' via FP
371 : ADD 2, 1, 0 ;  stash left in R2
372 : ADD 1, 3, 0 ;  restore right to R1
373 : SUB 1, 2, 1 ;  left - right
374 : JEQ 1, 2(7) ;  if 0 then true
375 : LDC 1, 0(0) ;  false
376 : LDA 7, 1(7) ;  skip
377 : LDC 1, 1(0) ;  true
378 : JEQ 1, 381(0) ;  if false -> ELSE
379 : LDC 1, 1(0) ;  bool -> R1
380 : LDA 7, 434(0) ;  skip ELSE
381 : LD 1, 1(4) ;  load 'x' via FP
382 : ADD 2, 1, 0 ;  Save arg0 in R2
383 : LDA 6, 393(0) ;  Prepare RA label
384 : LDA 2, 3(5) ;  callee base size -> R2
385 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
386 : ST 6, 0(5) ;  store RA in callee frame
387 : ST 2, 1(5) ;  TEMP overwrite: fix below
388 : ST 2, 1(5) ; store arg0 from R2
389 : ST 2, 0(0) ;  noop slot
390 : ST 2, 0(0) ;  noop slot
391 : ST 2, 0(0) ;  noop
392 : LDA 7, 292(0) ;  Call rotate
393 : LD 1, 2(5) ;  load callee result
394 : LDC 2, 3(0) ;  size to pop
395 : SUB 5, 5, 2 ;  pop callee frame
396 : ADD 2, 1, 0 ;  Save arg0 in R2
397 : LDC 1, 1(0) ;  literal -> R1
398 : ADD 3, 1, 0 ;  stash right in R3
399 : LD 1, 2(4) ;  load 'turns' via FP
400 : ADD 2, 1, 0 ;  stash left in R2
401 : ADD 1, 3, 0 ;  restore right to R1
402 : SUB 1, 2, 1 ;  left - right
403 : ADD 3, 1, 0 ;  Save arg1 in R3
404 : LDA 6, 412(0) ;  Prepare RA label
405 : LDA 2, 4(5) ;  callee base size -> R2
406 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
407 : ST 6, 0(5) ;  store RA in callee frame
408 : ST 2, 1(5) ;  TEMP overwrite: fix below
409 : ST 2, 1(5) ;  store arg0 from R2
410 : ST 3, 2(5) ;  store arg1 from R3
411 : LDA 7, 367(0) ;  Call isCircularPrimeHelper
412 : LD 1, 3(5) ;  load callee result
413 : LDC 2, 4(0) ;  size to pop
414 : SUB 5, 5, 2 ;  pop callee frame
415 : ADD 3, 1, 0 ;  stash right in R3
416 : LD 1, 1(4) ;  load 'x' via FP
417 : ADD 2, 1, 0 ;  Save arg0 in R2
418 : LDA 6, 428(0) ;  Prepare RA label
419 : LDA 2, 3(5) ;  callee base size -> R2
420 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
421 : ST 6, 0(5) ;  store RA in callee frame
422 : ST 2, 1(5) ;  TEMP overwrite: fix below
423 : ST 2, 1(5) ; store arg0 from R2
424 : ST 2, 0(0) ;  noop slot
425 : ST 2, 0(0) ;  noop slot
426 : ST 2, 0(0) ;  noop
427 : LDA 7, 153(0) ;  Call isPrime
428 : LD 1, 2(5) ;  load callee result
429 : LDC 2, 3(0) ;  size to pop
430 : SUB 5, 5, 2 ;  pop callee frame
431 : ADD 2, 1, 0 ;  stash left in R2
432 : ADD 1, 3, 0 ;  restore right to R1
433 : MUL 1, 2, 1 ;  left AND right
434 : ST 1, 3(4) ;  store result in return slot (via FP)
435 : LD 6, 0(4) ;  load RA (via FP)
436 : LDA 7, 0(6) ;  return to caller
437 : ADD 4, 5, 0 ;  FP = SP at 437 entry
438 : LD 1, 1(4) ;  load 'x' via FP
439 : ADD 2, 1, 0 ;  Save arg0 in R2
440 : LDC 1, 1(0) ;  literal -> R1
441 : ADD 3, 1, 0 ;  stash right in R3
442 : LD 1, 1(4) ;  load 'x' via FP
443 : ADD 2, 1, 0 ;  Save arg0 in R2
444 : LDA 6, 454(0) ;  Prepare RA label
445 : LDA 2, 3(5) ;  callee base size -> R2
446 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
447 : ST 6, 0(5) ;  store RA in callee frame
448 : ST 2, 1(5) ;  TEMP overwrite: fix below
449 : ST 2, 1(5) ; store arg0 from R2
450 : ST 2, 0(0) ;  noop slot
451 : ST 2, 0(0) ;  noop slot
452 : ST 2, 0(0) ;  noop
453 : LDA 7, 221(0) ;  Call log10
454 : LD 1, 2(5) ;  load callee result
455 : LDC 2, 3(0) ;  size to pop
456 : SUB 5, 5, 2 ;  pop callee frame
457 : ADD 2, 1, 0 ;  stash left in R2
458 : ADD 1, 3, 0 ;  restore right to R1
459 : ADD 1, 2, 1 ;  left + right
460 : ADD 3, 1, 0 ;  Save arg1 in R3
461 : LDA 6, 469(0) ;  Prepare RA label
462 : LDA 2, 4(5) ;  callee base size -> R2
463 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
464 : ST 6, 0(5) ;  store RA in callee frame
465 : ST 2, 1(5) ;  TEMP overwrite: fix below
466 : ST 2, 1(5) ;  store arg0 from R2
467 : ST 3, 2(5) ;  store arg1 from R3
468 : LDA 7, 367(0) ;  Call isCircularPrimeHelper
469 : LD 1, 3(5) ;  load callee result
470 : LDC 2, 4(0) ;  size to pop
471 : SUB 5, 5, 2 ;  pop callee frame
472 : JEQ 1, 489(0) ;  if false -> ELSE
473 : LD 1, 1(4) ;  load 'x' via FP
474 : ADD 2, 1, 0 ;  Save arg0 in R2
475 : LDA 6, 485(0) ;  Prepare RA label
476 : LDA 2, 3(5) ;  callee base size -> R2
477 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
478 : ST 6, 0(5) ;  store RA in callee frame
479 : ST 2, 1(5) ;  TEMP overwrite: fix below
480 : ST 2, 1(5) ; store arg0 from R2
481 : ST 2, 0(0) ;  noop slot
482 : ST 2, 0(0) ;  noop slot
483 : ST 2, 0(0) ;  noop
484 : LDA 7, 354(0) ;  Call report
485 : LD 1, 2(5) ;  load callee result
486 : LDC 2, 3(0) ;  size to pop
487 : SUB 5, 5, 2 ;  pop callee frame
488 : LDA 7, 490(0) ;  skip ELSE
489 : LDC 1, 0(0) ;  bool -> R1
490 : ST 1, 2(4) ;  store result in return slot (via FP)
491 : LD 6, 0(4) ;  load RA (via FP)
492 : LDA 7, 0(6) ;  return to caller
493 : ADD 4, 5, 0 ;  FP = SP at 493 entry
494 : LD 1, 1(4) ;  load 'top' via FP
495 : ADD 3, 1, 0 ;  stash right in R3
496 : LD 1, 2(4) ;  load 'x' via FP
497 : ADD 2, 1, 0 ;  stash left in R2
498 : ADD 1, 3, 0 ;  restore right to R1
499 : SUB 1, 2, 1 ;  left - right
500 : JLT 1, 2(7) ;  if < 0 then true
501 : LDC 1, 0(0) ;  false
502 : LDA 7, 1(7) ;  skip
503 : LDC 1, 1(0) ;  true
504 : JEQ 1, 541(0) ;  if false -> ELSE
505 : LD 1, 2(4) ;  load 'x' via FP
506 : ADD 2, 1, 0 ;  Save arg0 in R2
507 : LDA 6, 517(0) ;  Prepare RA label
508 : LDA 2, 3(5) ;  callee base size -> R2
509 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
510 : ST 6, 0(5) ;  store RA in callee frame
511 : ST 2, 1(5) ;  TEMP overwrite: fix below
512 : ST 2, 1(5) ; store arg0 from R2
513 : ST 2, 0(0) ;  noop slot
514 : ST 2, 0(0) ;  noop slot
515 : ST 2, 0(0) ;  noop
516 : LDA 7, 437(0) ;  Call isCircularPrime
517 : LD 1, 2(5) ;  load callee result
518 : LDC 2, 3(0) ;  size to pop
519 : SUB 5, 5, 2 ;  pop callee frame
520 : JEQ 1, 531(0) ;  if false -> ELSE
521 : LDA 6, 527(0) ;  Prepare RA label
522 : LDA 2, 5(5) ;  callee base size -> R2
523 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
524 : ST 6, 0(5) ;  store RA in callee frame
525 : ST 2, 1(5) ;  TEMP overwrite: fix below
526 : LDA 7, 493(0) ;  Call circularPrimesToHelper
527 : LD 1, 4(5) ;  load callee result
528 : LDC 2, 5(0) ;  size to pop
529 : SUB 5, 5, 2 ;  pop callee frame
530 : LDA 7, 540(0) ;  skip ELSE
531 : LDA 6, 537(0) ;  Prepare RA label
532 : LDA 2, 5(5) ;  callee base size -> R2
533 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
534 : ST 6, 0(5) ;  store RA in callee frame
535 : ST 2, 1(5) ;  TEMP overwrite: fix below
536 : LDA 7, 493(0) ;  Call circularPrimesToHelper
537 : LD 1, 4(5) ;  load callee result
538 : LDC 2, 5(0) ;  size to pop
539 : SUB 5, 5, 2 ;  pop callee frame
540 : LDA 7, 542(0) ;  skip ELSE
541 : LD 1, 3(4) ;  load 'count' via FP
542 : ST 1, 4(4) ;  store result in return slot (via FP)
543 : LD 6, 0(4) ;  load RA (via FP)
544 : LDA 7, 0(6) ;  return to caller
545 : ADD 4, 5, 0 ;  FP = SP at 545 entry
546 : LDA 6, 552(0) ;  Prepare RA label
547 : LDA 2, 5(5) ;  callee base size -> R2
548 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
549 : ST 6, 0(5) ;  store RA in callee frame
550 : ST 2, 1(5) ;  TEMP overwrite: fix below
551 : LDA 7, 493(0) ;  Call circularPrimesToHelper
552 : LD 1, 4(5) ;  load callee result
553 : LDC 2, 5(0) ;  size to pop
554 : SUB 5, 5, 2 ;  pop callee frame
555 : ST 1, 2(4) ;  store result in return slot (via FP)
556 : LD 6, 0(4) ;  load RA (via FP)
557 : LDA 7, 0(6) ;  return to caller
