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
13 : LDC 1, 10(0) ;  literal -> R1
14 : ADD 2, 1, 0 ;  Save arg0 in R2
15 : LDC 1, 1(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  stash right in R3
17 : LDC 1, 2(0) ;  literal -> R1
18 : ADD 3, 1, 0 ;  stash right in R3
19 : LD 1, 1(4) ;  load 'length' via FP
20 : ADD 2, 1, 0 ;  stash left in R2
21 : ADD 1, 3, 0 ;  restore right to R1
22 : DIV 1, 2, 1 ;  left / right
23 : ADD 2, 1, 0 ;  stash left in R2
24 : ADD 1, 3, 0 ;  restore right to R1
25 : SUB 1, 2, 1 ;  left - right
26 : ADD 3, 1, 0 ;  Save arg1 in R3
27 : LDA 6, 35(0) ;  Prepare RA label
28 : LDA 2, 4(5) ;  callee base size -> R2
29 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
30 : ST 6, 0(5) ;  store RA in callee frame
31 : ST 2, 1(5) ;  TEMP overwrite: fix below
32 : ST 2, 1(5) ;  store arg0 from R2
33 : ST 3, 2(5) ;  store arg1 from R3
34 : LDA 7, 747(0) ;  Call EXP
35 : LD 1, 3(5) ;  load callee result
36 : LDC 2, 4(0) ;  size to pop
37 : SUB 5, 5, 2 ;  pop callee frame
38 : ADD 2, 1, 0 ;  Save arg0 in R2
39 : LDC 1, 2(0) ;  literal -> R1
40 : ADD 3, 1, 0 ;  stash right in R3
41 : LD 1, 1(4) ;  load 'length' via FP
42 : ADD 2, 1, 0 ;  stash left in R2
43 : ADD 1, 3, 0 ;  restore right to R1
44 : DIV 1, 2, 1 ;  left / right
45 : ADD 3, 1, 0 ;  Save arg1 in R3
46 : LDA 6, 54(0) ;  Prepare RA label
47 : LDA 2, 4(5) ;  callee base size -> R2
48 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
49 : ST 6, 0(5) ;  store RA in callee frame
50 : ST 2, 1(5) ;  TEMP overwrite: fix below
51 : ST 2, 1(5) ;  store arg0 from R2
52 : ST 3, 2(5) ;  store arg1 from R3
53 : LDA 7, 61(0) ;  Call createLoop
54 : LD 1, 3(5) ;  load callee result
55 : LDC 2, 4(0) ;  size to pop
56 : SUB 5, 5, 2 ;  pop callee frame
57 : ST 1, 2(4) ;  store result into caller frame (via FP)
58 : LD 1, 2(4) ;  R1 = return value (via FP)
59 : LD 6, 0(4) ;  RA from FP
60 : LDA 7, 0(6) ;  return
61 : ADD 4, 5, 0 ;  FP = SP at 61 entry
62 : LDA 6, 68(0) ;  Prepare RA label
63 : LDA 2, 5(5) ;  callee base size -> R2
64 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
65 : ST 6, 0(5) ;  store RA in callee frame
66 : ST 2, 1(5) ;  TEMP overwrite: fix below
67 : LDA 7, 74(0) ;  Call aLoop
68 : LD 1, 4(5) ;  load callee result
69 : LDC 2, 5(0) ;  size to pop
70 : SUB 5, 5, 2 ;  pop callee frame
71 : ST 1, 3(4) ;  store result in return slot (via FP)
72 : LD 6, 0(4) ;  load RA (via FP)
73 : LDA 7, 0(6) ;  return to caller
74 : ADD 4, 5, 0 ;  FP = SP at 74 entry
75 : LD 1, 3(4) ;  load 'upper' via FP
76 : ADD 3, 1, 0 ;  stash right in R3
77 : LD 1, 1(4) ;  load 'a' via FP
78 : ADD 2, 1, 0 ;  stash left in R2
79 : ADD 1, 3, 0 ;  restore right to R1
80 : SUB 1, 2, 1 ;  left - right
81 : JLT 1, 2(7) ;  if < 0 then true
82 : LDC 1, 0(0) ;  false
83 : LDA 7, 1(7) ;  skip
84 : LDC 1, 1(0) ;  true
85 : JEQ 1, 96(0) ;  if false -> ELSE
86 : LDA 6, 92(0) ;  Prepare RA label
87 : LDA 2, 6(5) ;  callee base size -> R2
88 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
89 : ST 6, 0(5) ;  store RA in callee frame
90 : ST 2, 1(5) ;  TEMP overwrite: fix below
91 : LDA 7, 100(0) ;  Call aLoop1
92 : LD 1, 5(5) ;  load callee result
93 : LDC 2, 6(0) ;  size to pop
94 : SUB 5, 5, 2 ;  pop callee frame
95 : LDA 7, 97(0) ;  skip ELSE
96 : LDC 1, 1(0) ;  bool -> R1
97 : ST 1, 4(4) ;  store result in return slot (via FP)
98 : LD 6, 0(4) ;  load RA (via FP)
99 : LDA 7, 0(6) ;  return to caller
100 : ADD 4, 5, 0 ;  FP = SP at 100 entry
101 : LDA 6, 107(0) ;  Prepare RA label
102 : LDA 2, 7(5) ;  callee base size -> R2
103 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
104 : ST 6, 0(5) ;  store RA in callee frame
105 : ST 2, 1(5) ;  TEMP overwrite: fix below
106 : LDA 7, 113(0) ;  Call aLoop2
107 : LD 1, 6(5) ;  load callee result
108 : LDC 2, 7(0) ;  size to pop
109 : SUB 5, 5, 2 ;  pop callee frame
110 : ST 1, 5(4) ;  store result in return slot (via FP)
111 : LD 6, 0(4) ;  load RA (via FP)
112 : LDA 7, 0(6) ;  return to caller
113 : ADD 4, 5, 0 ;  FP = SP at 113 entry
114 : LDA 6, 120(0) ;  Prepare RA label
115 : LDA 2, 8(5) ;  callee base size -> R2
116 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
117 : ST 6, 0(5) ;  store RA in callee frame
118 : ST 2, 1(5) ;  TEMP overwrite: fix below
119 : LDA 7, 126(0) ;  Call aLoop3
120 : LD 1, 7(5) ;  load callee result
121 : LDC 2, 8(0) ;  size to pop
122 : SUB 5, 5, 2 ;  pop callee frame
123 : ST 1, 6(4) ;  store result in return slot (via FP)
124 : LD 6, 0(4) ;  load RA (via FP)
125 : LDA 7, 0(6) ;  return to caller
126 : ADD 4, 5, 0 ;  FP = SP at 126 entry
127 : LD 1, 6(4) ;  load 'candidate' via FP
128 : ADD 2, 1, 0 ;  Save arg0 in R2
129 : LDA 6, 139(0) ;  Prepare RA label
130 : LDA 2, 3(5) ;  callee base size -> R2
131 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
132 : ST 6, 0(5) ;  store RA in callee frame
133 : ST 2, 1(5) ;  TEMP overwrite: fix below
134 : ST 2, 1(5) ; store arg0 from R2
135 : ST 2, 0(0) ;  noop slot
136 : ST 2, 0(0) ;  noop slot
137 : ST 2, 0(0) ;  noop
138 : LDA 7, 229(0) ;  Call isExcellent
139 : LD 1, 2(5) ;  load callee result
140 : LDC 2, 3(0) ;  size to pop
141 : SUB 5, 5, 2 ;  pop callee frame
142 : ADD 3, 1, 0 ;  stash right in R3
143 : LDC 1, 1(0) ;  literal -> R1
144 : ADD 3, 1, 0 ;  stash right in R3
145 : LD 1, 5(4) ;  load 'root' via FP
146 : ADD 2, 1, 0 ;  stash left in R2
147 : ADD 1, 3, 0 ;  restore right to R1
148 : ADD 1, 2, 1 ;  left + right
149 : ADD 2, 1, 0 ;  Save arg0 in R2
150 : LDA 6, 160(0) ;  Prepare RA label
151 : LDA 2, 3(5) ;  callee base size -> R2
152 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
153 : ST 6, 0(5) ;  store RA in callee frame
154 : ST 2, 1(5) ;  TEMP overwrite: fix below
155 : ST 2, 1(5) ; store arg0 from R2
156 : ST 2, 0(0) ;  noop slot
157 : ST 2, 0(0) ;  noop slot
158 : ST 2, 0(0) ;  noop
159 : LDA 7, 512(0) ;  Call EVEN
160 : LD 1, 2(5) ;  load callee result
161 : LDC 2, 3(0) ;  size to pop
162 : SUB 5, 5, 2 ;  pop callee frame
163 : ADD 3, 1, 0 ;  stash right in R3
164 : LD 1, 5(4) ;  load 'root' via FP
165 : ADD 2, 1, 0 ;  Save arg0 in R2
166 : LD 1, 4(4) ;  load 'det' via FP
167 : ADD 3, 1, 0 ;  Save arg1 in R3
168 : LDA 6, 176(0) ;  Prepare RA label
169 : LDA 2, 4(5) ;  callee base size -> R2
170 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
171 : ST 6, 0(5) ;  store RA in callee frame
172 : ST 2, 1(5) ;  TEMP overwrite: fix below
173 : ST 2, 1(5) ;  store arg0 from R2
174 : ST 3, 2(5) ;  store arg1 from R3
175 : LDA 7, 493(0) ;  Call ISROOT
176 : LD 1, 3(5) ;  load callee result
177 : LDC 2, 4(0) ;  size to pop
178 : SUB 5, 5, 2 ;  pop callee frame
179 : ADD 2, 1, 0 ;  stash left in R2
180 : ADD 1, 3, 0 ;  restore right to R1
181 : MUL 1, 2, 1 ;  left AND right
182 : ADD 2, 1, 0 ;  stash left in R2
183 : ADD 1, 3, 0 ;  restore right to R1
184 : MUL 1, 2, 1 ;  left AND right
185 : JEQ 1, 196(0) ;  if false -> ELSE
186 : LDA 6, 192(0) ;  Prepare RA label
187 : LDA 2, 6(5) ;  callee base size -> R2
188 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
189 : ST 6, 0(5) ;  store RA in callee frame
190 : ST 2, 1(5) ;  TEMP overwrite: fix below
191 : LDA 7, 208(0) ;  Call printCandidateAndContinue
192 : LD 1, 5(5) ;  load callee result
193 : LDC 2, 6(0) ;  size to pop
194 : SUB 5, 5, 2 ;  pop callee frame
195 : LDA 7, 205(0) ;  skip ELSE
196 : LDA 6, 202(0) ;  Prepare RA label
197 : LDA 2, 5(5) ;  callee base size -> R2
198 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
199 : ST 6, 0(5) ;  store RA in callee frame
200 : ST 2, 1(5) ;  TEMP overwrite: fix below
201 : LDA 7, 74(0) ;  Call aLoop
202 : LD 1, 4(5) ;  load callee result
203 : LDC 2, 5(0) ;  size to pop
204 : SUB 5, 5, 2 ;  pop callee frame
205 : ST 1, 7(4) ;  store result in return slot (via FP)
206 : LD 6, 0(4) ;  load RA (via FP)
207 : LDA 7, 0(6) ;  return to caller
208 : ADD 4, 5, 0 ;  FP = SP at 208 entry
209 : LDA 6, 214(0) ;  Prepare RA label
210 : LDA 2, 3(5) ;  callee base size -> R2
211 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
212 : ST 6, 0(5) ;  store RA in callee frame
213 : LDA 7, 9(0) ;  Call print
214 : LD 1, 2(5) ;  load callee result
215 : LDC 2, 3(0) ;  size to pop
216 : SUB 5, 5, 2 ;  pop callee frame
217 : LDA 6, 223(0) ;  Prepare RA label
218 : LDA 2, 5(5) ;  callee base size -> R2
219 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
220 : ST 6, 0(5) ;  store RA in callee frame
221 : ST 2, 1(5) ;  TEMP overwrite: fix below
222 : LDA 7, 74(0) ;  Call aLoop
223 : LD 1, 4(5) ;  load callee result
224 : LDC 2, 5(0) ;  size to pop
225 : SUB 5, 5, 2 ;  pop callee frame
226 : ST 1, 5(4) ;  store result in return slot (via FP)
227 : LD 6, 0(4) ;  load RA (via FP)
228 : LDA 7, 0(6) ;  return to caller
229 : ADD 4, 5, 0 ;  FP = SP at 229 entry
230 : LD 1, 1(4) ;  load 'n' via FP
231 : ADD 2, 1, 0 ;  Save arg0 in R2
232 : LD 1, 1(4) ;  load 'n' via FP
233 : ADD 2, 1, 0 ;  Save arg0 in R2
234 : LDA 6, 244(0) ;  Prepare RA label
235 : LDA 2, 3(5) ;  callee base size -> R2
236 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
237 : ST 6, 0(5) ;  store RA in callee frame
238 : ST 2, 1(5) ;  TEMP overwrite: fix below
239 : ST 2, 1(5) ; store arg0 from R2
240 : ST 2, 0(0) ;  noop slot
241 : ST 2, 0(0) ;  noop slot
242 : ST 2, 0(0) ;  noop
243 : LDA 7, 451(0) ;  Call length
244 : LD 1, 2(5) ;  load callee result
245 : LDC 2, 3(0) ;  size to pop
246 : SUB 5, 5, 2 ;  pop callee frame
247 : ADD 3, 1, 0 ;  Save arg1 in R3
248 : LDA 6, 256(0) ;  Prepare RA label
249 : LDA 2, 4(5) ;  callee base size -> R2
250 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
251 : ST 6, 0(5) ;  store RA in callee frame
252 : ST 2, 1(5) ;  TEMP overwrite: fix below
253 : ST 2, 1(5) ;  store arg0 from R2
254 : ST 3, 2(5) ;  store arg1 from R3
255 : LDA 7, 262(0) ;  Call isExcellentSwitch
256 : LD 1, 3(5) ;  load callee result
257 : LDC 2, 4(0) ;  size to pop
258 : SUB 5, 5, 2 ;  pop callee frame
259 : ST 1, 2(4) ;  store result in return slot (via FP)
260 : LD 6, 0(4) ;  load RA (via FP)
261 : LDA 7, 0(6) ;  return to caller
262 : ADD 4, 5, 0 ;  FP = SP at 262 entry
263 : LD 1, 2(4) ;  load 'length' via FP
264 : ADD 2, 1, 0 ;  Save arg0 in R2
265 : LDA 6, 275(0) ;  Prepare RA label
266 : LDA 2, 3(5) ;  callee base size -> R2
267 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
268 : ST 6, 0(5) ;  store RA in callee frame
269 : ST 2, 1(5) ;  TEMP overwrite: fix below
270 : ST 2, 1(5) ; store arg0 from R2
271 : ST 2, 0(0) ;  noop slot
272 : ST 2, 0(0) ;  noop slot
273 : ST 2, 0(0) ;  noop
274 : LDA 7, 695(0) ;  Call ODD
275 : LD 1, 2(5) ;  load callee result
276 : LDC 2, 3(0) ;  size to pop
277 : SUB 5, 5, 2 ;  pop callee frame
278 : JEQ 1, 281(0) ;  if false -> ELSE
279 : LDC 1, 0(0) ;  bool -> R1
280 : LDA 7, 333(0) ;  skip ELSE
281 : LD 1, 1(4) ;  load 'n' via FP
282 : ADD 2, 1, 0 ;  Save arg0 in R2
283 : LDA 6, 293(0) ;  Prepare RA label
284 : LDA 2, 3(5) ;  callee base size -> R2
285 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
286 : ST 6, 0(5) ;  store RA in callee frame
287 : ST 2, 1(5) ;  TEMP overwrite: fix below
288 : ST 2, 1(5) ; store arg0 from R2
289 : ST 2, 0(0) ;  noop slot
290 : ST 2, 0(0) ;  noop slot
291 : ST 2, 0(0) ;  noop
292 : LDA 7, 408(0) ;  Call a
293 : LD 1, 2(5) ;  load callee result
294 : LDC 2, 3(0) ;  size to pop
295 : SUB 5, 5, 2 ;  pop callee frame
296 : ADD 2, 1, 0 ;  Save arg0 in R2
297 : LD 1, 1(4) ;  load 'n' via FP
298 : ADD 2, 1, 0 ;  Save arg0 in R2
299 : LDA 6, 309(0) ;  Prepare RA label
300 : LDA 2, 3(5) ;  callee base size -> R2
301 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
302 : ST 6, 0(5) ;  store RA in callee frame
303 : ST 2, 1(5) ;  TEMP overwrite: fix below
304 : ST 2, 1(5) ; store arg0 from R2
305 : ST 2, 0(0) ;  noop slot
306 : ST 2, 0(0) ;  noop slot
307 : ST 2, 0(0) ;  noop
308 : LDA 7, 356(0) ;  Call b
309 : LD 1, 2(5) ;  load callee result
310 : LDC 2, 3(0) ;  size to pop
311 : SUB 5, 5, 2 ;  pop callee frame
312 : ADD 3, 1, 0 ;  Save arg1 in R3
313 : LDA 6, 321(0) ;  Prepare RA label
314 : LDA 2, 4(5) ;  callee base size -> R2
315 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
316 : ST 6, 0(5) ;  store RA in callee frame
317 : ST 2, 1(5) ;  TEMP overwrite: fix below
318 : ST 2, 1(5) ;  store arg0 from R2
319 : ST 3, 2(5) ;  store arg1 from R3
320 : LDA 7, 336(0) ;  Call excellentDiff
321 : LD 1, 3(5) ;  load callee result
322 : LDC 2, 4(0) ;  size to pop
323 : SUB 5, 5, 2 ;  pop callee frame
324 : ADD 3, 1, 0 ;  stash right in R3
325 : LD 1, 1(4) ;  load 'n' via FP
326 : ADD 2, 1, 0 ;  stash left in R2
327 : ADD 1, 3, 0 ;  restore right to R1
328 : SUB 1, 2, 1 ;  left - right
329 : JEQ 1, 2(7) ;  if 0 then true
330 : LDC 1, 0(0) ;  false
331 : LDA 7, 1(7) ;  skip
332 : LDC 1, 1(0) ;  true
333 : ST 1, 3(4) ;  store result in return slot (via FP)
334 : LD 6, 0(4) ;  load RA (via FP)
335 : LDA 7, 0(6) ;  return to caller
336 : ADD 4, 5, 0 ;  FP = SP at 336 entry
337 : LD 1, 1(4) ;  load 'a' via FP
338 : ADD 3, 1, 0 ;  stash right in R3
339 : LD 1, 1(4) ;  load 'a' via FP
340 : ADD 2, 1, 0 ;  stash left in R2
341 : ADD 1, 3, 0 ;  restore right to R1
342 : MUL 1, 2, 1 ;  left * right
343 : ADD 3, 1, 0 ;  stash right in R3
344 : LD 1, 2(4) ;  load 'b' via FP
345 : ADD 3, 1, 0 ;  stash right in R3
346 : LD 1, 2(4) ;  load 'b' via FP
347 : ADD 2, 1, 0 ;  stash left in R2
348 : ADD 1, 3, 0 ;  restore right to R1
349 : MUL 1, 2, 1 ;  left * right
350 : ADD 2, 1, 0 ;  stash left in R2
351 : ADD 1, 3, 0 ;  restore right to R1
352 : SUB 1, 2, 1 ;  left - right
353 : ST 1, 3(4) ;  store result in return slot (via FP)
354 : LD 6, 0(4) ;  load RA (via FP)
355 : LDA 7, 0(6) ;  return to caller
356 : ADD 4, 5, 0 ;  FP = SP at 356 entry
357 : LD 1, 1(4) ;  load 'n' via FP
358 : ADD 2, 1, 0 ;  Save arg0 in R2
359 : LDC 1, 10(0) ;  literal -> R1
360 : ADD 2, 1, 0 ;  Save arg0 in R2
361 : LDC 1, 2(0) ;  literal -> R1
362 : ADD 3, 1, 0 ;  stash right in R3
363 : LD 1, 1(4) ;  load 'n' via FP
364 : ADD 2, 1, 0 ;  Save arg0 in R2
365 : LDA 6, 375(0) ;  Prepare RA label
366 : LDA 2, 3(5) ;  callee base size -> R2
367 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
368 : ST 6, 0(5) ;  store RA in callee frame
369 : ST 2, 1(5) ;  TEMP overwrite: fix below
370 : ST 2, 1(5) ; store arg0 from R2
371 : ST 2, 0(0) ;  noop slot
372 : ST 2, 0(0) ;  noop slot
373 : ST 2, 0(0) ;  noop
374 : LDA 7, 451(0) ;  Call length
375 : LD 1, 2(5) ;  load callee result
376 : LDC 2, 3(0) ;  size to pop
377 : SUB 5, 5, 2 ;  pop callee frame
378 : ADD 2, 1, 0 ;  stash left in R2
379 : ADD 1, 3, 0 ;  restore right to R1
380 : DIV 1, 2, 1 ;  left / right
381 : ADD 3, 1, 0 ;  Save arg1 in R3
382 : LDA 6, 390(0) ;  Prepare RA label
383 : LDA 2, 4(5) ;  callee base size -> R2
384 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
385 : ST 6, 0(5) ;  store RA in callee frame
386 : ST 2, 1(5) ;  TEMP overwrite: fix below
387 : ST 2, 1(5) ;  store arg0 from R2
388 : ST 3, 2(5) ;  store arg1 from R3
389 : LDA 7, 747(0) ;  Call EXP
390 : LD 1, 3(5) ;  load callee result
391 : LDC 2, 4(0) ;  size to pop
392 : SUB 5, 5, 2 ;  pop callee frame
393 : ADD 3, 1, 0 ;  Save arg1 in R3
394 : LDA 6, 402(0) ;  Prepare RA label
395 : LDA 2, 4(5) ;  callee base size -> R2
396 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
397 : ST 6, 0(5) ;  store RA in callee frame
398 : ST 2, 1(5) ;  TEMP overwrite: fix below
399 : ST 2, 1(5) ;  store arg0 from R2
400 : ST 3, 2(5) ;  store arg1 from R3
401 : LDA 7, 789(0) ;  Call MOD
402 : LD 1, 3(5) ;  load callee result
403 : LDC 2, 4(0) ;  size to pop
404 : SUB 5, 5, 2 ;  pop callee frame
405 : ST 1, 2(4) ;  store result in return slot (via FP)
406 : LD 6, 0(4) ;  load RA (via FP)
407 : LDA 7, 0(6) ;  return to caller
408 : ADD 4, 5, 0 ;  FP = SP at 408 entry
409 : LDC 1, 10(0) ;  literal -> R1
410 : ADD 2, 1, 0 ;  Save arg0 in R2
411 : LDC 1, 2(0) ;  literal -> R1
412 : ADD 3, 1, 0 ;  stash right in R3
413 : LD 1, 1(4) ;  load 'n' via FP
414 : ADD 2, 1, 0 ;  Save arg0 in R2
415 : LDA 6, 425(0) ;  Prepare RA label
416 : LDA 2, 3(5) ;  callee base size -> R2
417 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
418 : ST 6, 0(5) ;  store RA in callee frame
419 : ST 2, 1(5) ;  TEMP overwrite: fix below
420 : ST 2, 1(5) ; store arg0 from R2
421 : ST 2, 0(0) ;  noop slot
422 : ST 2, 0(0) ;  noop slot
423 : ST 2, 0(0) ;  noop
424 : LDA 7, 451(0) ;  Call length
425 : LD 1, 2(5) ;  load callee result
426 : LDC 2, 3(0) ;  size to pop
427 : SUB 5, 5, 2 ;  pop callee frame
428 : ADD 2, 1, 0 ;  stash left in R2
429 : ADD 1, 3, 0 ;  restore right to R1
430 : DIV 1, 2, 1 ;  left / right
431 : ADD 3, 1, 0 ;  Save arg1 in R3
432 : LDA 6, 440(0) ;  Prepare RA label
433 : LDA 2, 4(5) ;  callee base size -> R2
434 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
435 : ST 6, 0(5) ;  store RA in callee frame
436 : ST 2, 1(5) ;  TEMP overwrite: fix below
437 : ST 2, 1(5) ;  store arg0 from R2
438 : ST 3, 2(5) ;  store arg1 from R3
439 : LDA 7, 747(0) ;  Call EXP
440 : LD 1, 3(5) ;  load callee result
441 : LDC 2, 4(0) ;  size to pop
442 : SUB 5, 5, 2 ;  pop callee frame
443 : ADD 3, 1, 0 ;  stash right in R3
444 : LD 1, 1(4) ;  load 'n' via FP
445 : ADD 2, 1, 0 ;  stash left in R2
446 : ADD 1, 3, 0 ;  restore right to R1
447 : DIV 1, 2, 1 ;  left / right
448 : ST 1, 2(4) ;  store result in return slot (via FP)
449 : LD 6, 0(4) ;  load RA (via FP)
450 : LDA 7, 0(6) ;  return to caller
451 : ADD 4, 5, 0 ;  FP = SP at 451 entry
452 : LDC 1, 10(0) ;  literal -> R1
453 : ADD 3, 1, 0 ;  stash right in R3
454 : LD 1, 1(4) ;  load 'n' via FP
455 : ADD 2, 1, 0 ;  stash left in R2
456 : ADD 1, 3, 0 ;  restore right to R1
457 : SUB 1, 2, 1 ;  left - right
458 : JLT 1, 2(7) ;  if < 0 then true
459 : LDC 1, 0(0) ;  false
460 : LDA 7, 1(7) ;  skip
461 : LDC 1, 1(0) ;  true
462 : JEQ 1, 465(0) ;  if false -> ELSE
463 : LDC 1, 1(0) ;  literal -> R1
464 : LDA 7, 490(0) ;  skip ELSE
465 : LDC 1, 10(0) ;  literal -> R1
466 : ADD 3, 1, 0 ;  stash right in R3
467 : LD 1, 1(4) ;  load 'n' via FP
468 : ADD 2, 1, 0 ;  stash left in R2
469 : ADD 1, 3, 0 ;  restore right to R1
470 : DIV 1, 2, 1 ;  left / right
471 : ADD 2, 1, 0 ;  Save arg0 in R2
472 : LDA 6, 482(0) ;  Prepare RA label
473 : LDA 2, 3(5) ;  callee base size -> R2
474 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
475 : ST 6, 0(5) ;  store RA in callee frame
476 : ST 2, 1(5) ;  TEMP overwrite: fix below
477 : ST 2, 1(5) ; store arg0 from R2
478 : ST 2, 0(0) ;  noop slot
479 : ST 2, 0(0) ;  noop slot
480 : ST 2, 0(0) ;  noop
481 : LDA 7, 451(0) ;  Call length
482 : LD 1, 2(5) ;  load callee result
483 : LDC 2, 3(0) ;  size to pop
484 : SUB 5, 5, 2 ;  pop callee frame
485 : ADD 3, 1, 0 ;  stash right in R3
486 : LDC 1, 1(0) ;  literal -> R1
487 : ADD 2, 1, 0 ;  stash left in R2
488 : ADD 1, 3, 0 ;  restore right to R1
489 : ADD 1, 2, 1 ;  left + right
490 : ST 1, 2(4) ;  store result in return slot (via FP)
491 : LD 6, 0(4) ;  load RA (via FP)
492 : LDA 7, 0(6) ;  return to caller
493 : ADD 4, 5, 0 ;  FP = SP at 493 entry
494 : LD 1, 1(4) ;  load 'r' via FP
495 : ADD 3, 1, 0 ;  stash right in R3
496 : LD 1, 1(4) ;  load 'r' via FP
497 : ADD 2, 1, 0 ;  stash left in R2
498 : ADD 1, 3, 0 ;  restore right to R1
499 : MUL 1, 2, 1 ;  left * right
500 : ADD 3, 1, 0 ;  stash right in R3
501 : LD 1, 2(4) ;  load 'n' via FP
502 : ADD 2, 1, 0 ;  stash left in R2
503 : ADD 1, 3, 0 ;  restore right to R1
504 : SUB 1, 2, 1 ;  left - right
505 : JEQ 1, 2(7) ;  if 0 then true
506 : LDC 1, 0(0) ;  false
507 : LDA 7, 1(7) ;  skip
508 : LDC 1, 1(0) ;  true
509 : ST 1, 3(4) ;  store result in return slot (via FP)
510 : LD 6, 0(4) ;  load RA (via FP)
511 : LDA 7, 0(6) ;  return to caller
512 : ADD 4, 5, 0 ;  FP = SP at 512 entry
513 : LDC 1, 2(0) ;  literal -> R1
514 : ADD 3, 1, 0 ;  stash right in R3
515 : LD 1, 1(4) ;  load 'n' via FP
516 : ADD 2, 1, 0 ;  stash left in R2
517 : ADD 1, 3, 0 ;  restore right to R1
518 : DIV 1, 2, 1 ;  left / right
519 : ADD 3, 1, 0 ;  stash right in R3
520 : LDC 1, 2(0) ;  literal -> R1
521 : ADD 2, 1, 0 ;  stash left in R2
522 : ADD 1, 3, 0 ;  restore right to R1
523 : MUL 1, 2, 1 ;  left * right
524 : ADD 3, 1, 0 ;  stash right in R3
525 : LD 1, 1(4) ;  load 'n' via FP
526 : ADD 2, 1, 0 ;  stash left in R2
527 : ADD 1, 3, 0 ;  restore right to R1
528 : SUB 1, 2, 1 ;  left - right
529 : JEQ 1, 2(7) ;  if 0 then true
530 : LDC 1, 0(0) ;  false
531 : LDA 7, 1(7) ;  skip
532 : LDC 1, 1(0) ;  true
533 : ST 1, 2(4) ;  store result in return slot (via FP)
534 : LD 6, 0(4) ;  load RA (via FP)
535 : LDA 7, 0(6) ;  return to caller
536 : ADD 4, 5, 0 ;  FP = SP at 536 entry
537 : LD 1, 4(4) ;  load 'mid' via FP
538 : ADD 3, 1, 0 ;  stash right in R3
539 : LD 1, 4(4) ;  load 'mid' via FP
540 : ADD 2, 1, 0 ;  stash left in R2
541 : ADD 1, 3, 0 ;  restore right to R1
542 : MUL 1, 2, 1 ;  left * right
543 : ADD 2, 1, 0 ;  Save arg0 in R2
544 : LD 1, 1(4) ;  load 'n' via FP
545 : ADD 3, 1, 0 ;  Save arg1 in R3
546 : LDA 6, 554(0) ;  Prepare RA label
547 : LDA 2, 4(5) ;  callee base size -> R2
548 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
549 : ST 6, 0(5) ;  store RA in callee frame
550 : ST 2, 1(5) ;  TEMP overwrite: fix below
551 : ST 2, 1(5) ;  store arg0 from R2
552 : ST 3, 2(5) ;  store arg1 from R3
553 : LDA 7, 667(0) ;  Call LE
554 : LD 1, 3(5) ;  load callee result
555 : LDC 2, 4(0) ;  size to pop
556 : SUB 5, 5, 2 ;  pop callee frame
557 : JEQ 1, 568(0) ;  if false -> ELSE
558 : LDA 6, 564(0) ;  Prepare RA label
559 : LDA 2, 5(5) ;  callee base size -> R2
560 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
561 : ST 6, 0(5) ;  store RA in callee frame
562 : ST 2, 1(5) ;  TEMP overwrite: fix below
563 : LDA 7, 580(0) ;  Call SQRTSEARCH
564 : LD 1, 4(5) ;  load callee result
565 : LDC 2, 5(0) ;  size to pop
566 : SUB 5, 5, 2 ;  pop callee frame
567 : LDA 7, 577(0) ;  skip ELSE
568 : LDA 6, 574(0) ;  Prepare RA label
569 : LDA 2, 5(5) ;  callee base size -> R2
570 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
571 : ST 6, 0(5) ;  store RA in callee frame
572 : ST 2, 1(5) ;  TEMP overwrite: fix below
573 : LDA 7, 580(0) ;  Call SQRTSEARCH
574 : LD 1, 4(5) ;  load callee result
575 : LDC 2, 5(0) ;  size to pop
576 : SUB 5, 5, 2 ;  pop callee frame
577 : ST 1, 5(4) ;  store result in return slot (via FP)
578 : LD 6, 0(4) ;  load RA (via FP)
579 : LDA 7, 0(6) ;  return to caller
580 : ADD 4, 5, 0 ;  FP = SP at 580 entry
581 : LD 1, 3(4) ;  load 'high' via FP
582 : ADD 2, 1, 0 ;  Save arg0 in R2
583 : LDC 1, 1(0) ;  literal -> R1
584 : ADD 3, 1, 0 ;  stash right in R3
585 : LD 1, 2(4) ;  load 'low' via FP
586 : ADD 2, 1, 0 ;  stash left in R2
587 : ADD 1, 3, 0 ;  restore right to R1
588 : ADD 1, 2, 1 ;  left + right
589 : ADD 3, 1, 0 ;  Save arg1 in R3
590 : LDA 6, 598(0) ;  Prepare RA label
591 : LDA 2, 4(5) ;  callee base size -> R2
592 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
593 : ST 6, 0(5) ;  store RA in callee frame
594 : ST 2, 1(5) ;  TEMP overwrite: fix below
595 : ST 2, 1(5) ;  store arg0 from R2
596 : ST 3, 2(5) ;  store arg1 from R3
597 : LDA 7, 667(0) ;  Call LE
598 : LD 1, 3(5) ;  load callee result
599 : LDC 2, 4(0) ;  size to pop
600 : SUB 5, 5, 2 ;  pop callee frame
601 : JEQ 1, 642(0) ;  if false -> ELSE
602 : LD 1, 2(4) ;  load 'low' via FP
603 : ADD 3, 1, 0 ;  stash right in R3
604 : LD 1, 2(4) ;  load 'low' via FP
605 : ADD 2, 1, 0 ;  stash left in R2
606 : ADD 1, 3, 0 ;  restore right to R1
607 : MUL 1, 2, 1 ;  left * right
608 : ADD 3, 1, 0 ;  stash right in R3
609 : LD 1, 1(4) ;  load 'n' via FP
610 : ADD 2, 1, 0 ;  stash left in R2
611 : ADD 1, 3, 0 ;  restore right to R1
612 : SUB 1, 2, 1 ;  left - right
613 : ADD 2, 1, 0 ;  Save arg0 in R2
614 : LD 1, 1(4) ;  load 'n' via FP
615 : ADD 3, 1, 0 ;  stash right in R3
616 : LD 1, 3(4) ;  load 'high' via FP
617 : ADD 3, 1, 0 ;  stash right in R3
618 : LD 1, 3(4) ;  load 'high' via FP
619 : ADD 2, 1, 0 ;  stash left in R2
620 : ADD 1, 3, 0 ;  restore right to R1
621 : MUL 1, 2, 1 ;  left * right
622 : ADD 2, 1, 0 ;  stash left in R2
623 : ADD 1, 3, 0 ;  restore right to R1
624 : SUB 1, 2, 1 ;  left - right
625 : ADD 3, 1, 0 ;  Save arg1 in R3
626 : LDA 6, 634(0) ;  Prepare RA label
627 : LDA 2, 4(5) ;  callee base size -> R2
628 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
629 : ST 6, 0(5) ;  store RA in callee frame
630 : ST 2, 1(5) ;  TEMP overwrite: fix below
631 : ST 2, 1(5) ;  store arg0 from R2
632 : ST 3, 2(5) ;  store arg1 from R3
633 : LDA 7, 667(0) ;  Call LE
634 : LD 1, 3(5) ;  load callee result
635 : LDC 2, 4(0) ;  size to pop
636 : SUB 5, 5, 2 ;  pop callee frame
637 : JEQ 1, 640(0) ;  if false -> ELSE
638 : LD 1, 2(4) ;  load 'low' via FP
639 : LDA 7, 641(0) ;  skip ELSE
640 : LD 1, 3(4) ;  load 'high' via FP
641 : LDA 7, 651(0) ;  skip ELSE
642 : LDA 6, 648(0) ;  Prepare RA label
643 : LDA 2, 6(5) ;  callee base size -> R2
644 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
645 : ST 6, 0(5) ;  store RA in callee frame
646 : ST 2, 1(5) ;  TEMP overwrite: fix below
647 : LDA 7, 536(0) ;  Call SQRTSPLIT
648 : LD 1, 5(5) ;  load callee result
649 : LDC 2, 6(0) ;  size to pop
650 : SUB 5, 5, 2 ;  pop callee frame
651 : ST 1, 4(4) ;  store result in return slot (via FP)
652 : LD 6, 0(4) ;  load RA (via FP)
653 : LDA 7, 0(6) ;  return to caller
654 : ADD 4, 5, 0 ;  FP = SP at 654 entry
655 : LDA 6, 661(0) ;  Prepare RA label
656 : LDA 2, 5(5) ;  callee base size -> R2
657 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
658 : ST 6, 0(5) ;  store RA in callee frame
659 : ST 2, 1(5) ;  TEMP overwrite: fix below
660 : LDA 7, 580(0) ;  Call SQRTSEARCH
661 : LD 1, 4(5) ;  load callee result
662 : LDC 2, 5(0) ;  size to pop
663 : SUB 5, 5, 2 ;  pop callee frame
664 : ST 1, 2(4) ;  store result in return slot (via FP)
665 : LD 6, 0(4) ;  load RA (via FP)
666 : LDA 7, 0(6) ;  return to caller
667 : ADD 4, 5, 0 ;  FP = SP at 667 entry
668 : LD 1, 2(4) ;  load 'q' via FP
669 : ADD 3, 1, 0 ;  stash right in R3
670 : LD 1, 1(4) ;  load 'p' via FP
671 : ADD 2, 1, 0 ;  stash left in R2
672 : ADD 1, 3, 0 ;  restore right to R1
673 : SUB 1, 2, 1 ;  left - right
674 : JEQ 1, 2(7) ;  if 0 then true
675 : LDC 1, 0(0) ;  false
676 : LDA 7, 1(7) ;  skip
677 : LDC 1, 1(0) ;  true
678 : ADD 3, 1, 0 ;  stash right in R3
679 : LD 1, 2(4) ;  load 'q' via FP
680 : ADD 3, 1, 0 ;  stash right in R3
681 : LD 1, 1(4) ;  load 'p' via FP
682 : ADD 2, 1, 0 ;  stash left in R2
683 : ADD 1, 3, 0 ;  restore right to R1
684 : SUB 1, 2, 1 ;  left - right
685 : JLT 1, 2(7) ;  if < 0 then true
686 : LDC 1, 0(0) ;  false
687 : LDA 7, 1(7) ;  skip
688 : LDC 1, 1(0) ;  true
689 : ADD 2, 1, 0 ;  stash left in R2
690 : ADD 1, 3, 0 ;  restore right to R1
691 : ADD 1, 2, 1 ;  left OR right
692 : ST 1, 3(4) ;  store result in return slot (via FP)
693 : LD 6, 0(4) ;  load RA (via FP)
694 : LDA 7, 0(6) ;  return to caller
695 : ADD 4, 5, 0 ;  FP = SP at 695 entry
696 : LD 1, 1(4) ;  load 'n' via FP
697 : ADD 3, 1, 0 ;  stash right in R3
698 : LDC 1, 0(0) ;  literal -> R1
699 : ADD 2, 1, 0 ;  stash left in R2
700 : ADD 1, 3, 0 ;  restore right to R1
701 : SUB 1, 2, 1 ;  left - right
702 : JLT 1, 2(7) ;  if < 0 then true
703 : LDC 1, 0(0) ;  false
704 : LDA 7, 1(7) ;  skip
705 : LDC 1, 1(0) ;  true
706 : JEQ 1, 728(0) ;  if false -> ELSE
707 : LD 1, 1(4) ;  load 'n' via FP
708 : ADD 3, 1, 0 ;  stash right in R3
709 : LDC 1, 2(0) ;  literal -> R1
710 : ADD 3, 1, 0 ;  stash right in R3
711 : LD 1, 1(4) ;  load 'n' via FP
712 : ADD 2, 1, 0 ;  stash left in R2
713 : ADD 1, 3, 0 ;  restore right to R1
714 : DIV 1, 2, 1 ;  left / right
715 : ADD 3, 1, 0 ;  stash right in R3
716 : LDC 1, 2(0) ;  literal -> R1
717 : ADD 2, 1, 0 ;  stash left in R2
718 : ADD 1, 3, 0 ;  restore right to R1
719 : MUL 1, 2, 1 ;  left * right
720 : ADD 2, 1, 0 ;  stash left in R2
721 : ADD 1, 3, 0 ;  restore right to R1
722 : SUB 1, 2, 1 ;  left - right
723 : JLT 1, 2(7) ;  if < 0 then true
724 : LDC 1, 0(0) ;  false
725 : LDA 7, 1(7) ;  skip
726 : LDC 1, 1(0) ;  true
727 : LDA 7, 744(0) ;  skip ELSE
728 : LD 1, 1(4) ;  load 'n' via FP
729 : SUB 1, 0, 1 ;  negate
730 : ADD 2, 1, 0 ;  Save arg0 in R2
731 : LDA 6, 741(0) ;  Prepare RA label
732 : LDA 2, 3(5) ;  callee base size -> R2
733 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
734 : ST 6, 0(5) ;  store RA in callee frame
735 : ST 2, 1(5) ;  TEMP overwrite: fix below
736 : ST 2, 1(5) ; store arg0 from R2
737 : ST 2, 0(0) ;  noop slot
738 : ST 2, 0(0) ;  noop slot
739 : ST 2, 0(0) ;  noop
740 : LDA 7, 695(0) ;  Call ODD
741 : LD 1, 2(5) ;  load callee result
742 : LDC 2, 3(0) ;  size to pop
743 : SUB 5, 5, 2 ;  pop callee frame
744 : ST 1, 2(4) ;  store result in return slot (via FP)
745 : LD 6, 0(4) ;  load RA (via FP)
746 : LDA 7, 0(6) ;  return to caller
747 : ADD 4, 5, 0 ;  FP = SP at 747 entry
748 : LDC 1, 0(0) ;  literal -> R1
749 : ADD 3, 1, 0 ;  stash right in R3
750 : LD 1, 2(4) ;  load 'n' via FP
751 : ADD 2, 1, 0 ;  stash left in R2
752 : ADD 1, 3, 0 ;  restore right to R1
753 : SUB 1, 2, 1 ;  left - right
754 : JEQ 1, 2(7) ;  if 0 then true
755 : LDC 1, 0(0) ;  false
756 : LDA 7, 1(7) ;  skip
757 : LDC 1, 1(0) ;  true
758 : JEQ 1, 761(0) ;  if false -> ELSE
759 : LDC 1, 1(0) ;  literal -> R1
760 : LDA 7, 786(0) ;  skip ELSE
761 : LD 1, 1(4) ;  load 'm' via FP
762 : ADD 2, 1, 0 ;  Save arg0 in R2
763 : LDC 1, 1(0) ;  literal -> R1
764 : ADD 3, 1, 0 ;  stash right in R3
765 : LD 1, 2(4) ;  load 'n' via FP
766 : ADD 2, 1, 0 ;  stash left in R2
767 : ADD 1, 3, 0 ;  restore right to R1
768 : SUB 1, 2, 1 ;  left - right
769 : ADD 3, 1, 0 ;  Save arg1 in R3
770 : LDA 6, 778(0) ;  Prepare RA label
771 : LDA 2, 4(5) ;  callee base size -> R2
772 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
773 : ST 6, 0(5) ;  store RA in callee frame
774 : ST 2, 1(5) ;  TEMP overwrite: fix below
775 : ST 2, 1(5) ;  store arg0 from R2
776 : ST 3, 2(5) ;  store arg1 from R3
777 : LDA 7, 747(0) ;  Call EXP
778 : LD 1, 3(5) ;  load callee result
779 : LDC 2, 4(0) ;  size to pop
780 : SUB 5, 5, 2 ;  pop callee frame
781 : ADD 3, 1, 0 ;  stash right in R3
782 : LD 1, 1(4) ;  load 'm' via FP
783 : ADD 2, 1, 0 ;  stash left in R2
784 : ADD 1, 3, 0 ;  restore right to R1
785 : MUL 1, 2, 1 ;  left * right
786 : ST 1, 3(4) ;  store result in return slot (via FP)
787 : LD 6, 0(4) ;  load RA (via FP)
788 : LDA 7, 0(6) ;  return to caller
789 : ADD 4, 5, 0 ;  FP = SP at 789 entry
790 : LD 1, 2(4) ;  load 'n' via FP
791 : ADD 3, 1, 0 ;  stash right in R3
792 : LD 1, 1(4) ;  load 'm' via FP
793 : ADD 2, 1, 0 ;  stash left in R2
794 : ADD 1, 3, 0 ;  restore right to R1
795 : DIV 1, 2, 1 ;  left / right
796 : ADD 3, 1, 0 ;  stash right in R3
797 : LD 1, 2(4) ;  load 'n' via FP
798 : ADD 2, 1, 0 ;  stash left in R2
799 : ADD 1, 3, 0 ;  restore right to R1
800 : MUL 1, 2, 1 ;  left * right
801 : ADD 3, 1, 0 ;  stash right in R3
802 : LD 1, 1(4) ;  load 'm' via FP
803 : ADD 2, 1, 0 ;  stash left in R2
804 : ADD 1, 3, 0 ;  restore right to R1
805 : SUB 1, 2, 1 ;  left - right
806 : ST 1, 3(4) ;  store result in return slot (via FP)
807 : LD 6, 0(4) ;  load RA (via FP)
808 : LDA 7, 0(6) ;  return to caller
