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
13 : ADD 2, 1, 0 ;  Save arg0 in R2
14 : ADD 3, 1, 0 ;  Save arg1 in R3
15 : LDA 6, 23(0) ;  Prepare RA label
16 : LDA 2, 3(5) ;  callee base size -> R2
17 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
18 : ST 6, 0(5) ;  store RA in callee frame
19 : ST 2, 1(5) ;  TEMP overwrite: fix below
20 : ST 2, 1(5) ;  store arg0 from R2
21 : ST 3, 2(5) ;  store arg1 from R3
22 : LDA 7, 9(0) ;  Call print
23 : LD 1, 2(5) ;  load callee result
24 : LDC 2, 3(0) ;  size to pop
25 : SUB 5, 5, 2 ;  pop callee frame
26 : ST 1, 2(4) ;  store result into caller frame (via FP)
27 : LD 1, 1(4) ;  load 'testArgument' via FP
28 : ADD 2, 1, 0 ;  Save arg0 in R2
29 : LDA 6, 39(0) ;  Prepare RA label
30 : LDA 2, 3(5) ;  callee base size -> R2
31 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
32 : ST 6, 0(5) ;  store RA in callee frame
33 : ST 2, 1(5) ;  TEMP overwrite: fix below
34 : ST 2, 1(5) ; store arg0 from R2
35 : ST 2, 0(0) ;  noop slot
36 : ST 2, 0(0) ;  noop slot
37 : ST 2, 0(0) ;  noop
38 : LDA 7, 195(0) ;  Call ODD
39 : LD 1, 2(5) ;  load callee result
40 : LDC 2, 3(0) ;  size to pop
41 : SUB 5, 5, 2 ;  pop callee frame
42 : ST 1, 2(4) ;  store result into caller frame (via FP)
43 : LD 1, 2(4) ;  R1 = return value (via FP)
44 : LD 6, 0(4) ;  RA from FP
45 : LDA 7, 0(6) ;  return
46 : ADD 4, 5, 0 ;  FP = SP at 46 entry
47 : LD 1, 4(4) ;  load 'mid' via FP
48 : ADD 3, 1, 0 ;  stash right in R3
49 : LD 1, 4(4) ;  load 'mid' via FP
50 : ADD 2, 1, 0 ;  stash left in R2
51 : ADD 1, 3, 0 ;  restore right to R1
52 : MUL 1, 2, 1 ;  left * right
53 : ADD 2, 1, 0 ;  Save arg0 in R2
54 : LD 1, 1(4) ;  load 'n' via FP
55 : ADD 3, 1, 0 ;  Save arg1 in R3
56 : LDA 6, 64(0) ;  Prepare RA label
57 : LDA 2, 4(5) ;  callee base size -> R2
58 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
59 : ST 6, 0(5) ;  store RA in callee frame
60 : ST 2, 1(5) ;  TEMP overwrite: fix below
61 : ST 2, 1(5) ;  store arg0 from R2
62 : ST 3, 2(5) ;  store arg1 from R3
63 : LDA 7, 555(0) ;  Call LE
64 : LD 1, 3(5) ;  load callee result
65 : LDC 2, 4(0) ;  size to pop
66 : SUB 5, 5, 2 ;  pop callee frame
67 : JEQ 1, 78(0) ;  if false -> ELSE
68 : LDA 6, 74(0) ;  Prepare RA label
69 : LDA 2, 5(5) ;  callee base size -> R2
70 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
71 : ST 6, 0(5) ;  store RA in callee frame
72 : ST 2, 1(5) ;  TEMP overwrite: fix below
73 : LDA 7, 90(0) ;  Call SQRTSEARCH
74 : LD 1, 4(5) ;  load callee result
75 : LDC 2, 5(0) ;  size to pop
76 : SUB 5, 5, 2 ;  pop callee frame
77 : LDA 7, 87(0) ;  skip ELSE
78 : LDA 6, 84(0) ;  Prepare RA label
79 : LDA 2, 5(5) ;  callee base size -> R2
80 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
81 : ST 6, 0(5) ;  store RA in callee frame
82 : ST 2, 1(5) ;  TEMP overwrite: fix below
83 : LDA 7, 90(0) ;  Call SQRTSEARCH
84 : LD 1, 4(5) ;  load callee result
85 : LDC 2, 5(0) ;  size to pop
86 : SUB 5, 5, 2 ;  pop callee frame
87 : ST 1, 5(4) ;  store result in return slot (via FP)
88 : LD 6, 0(4) ;  load RA (via FP)
89 : LDA 7, 0(6) ;  return to caller
90 : ADD 4, 5, 0 ;  FP = SP at 90 entry
91 : LD 1, 3(4) ;  load 'high' via FP
92 : ADD 2, 1, 0 ;  Save arg0 in R2
93 : LDC 1, 1(0) ;  literal -> R1
94 : ADD 3, 1, 0 ;  stash right in R3
95 : LD 1, 2(4) ;  load 'low' via FP
96 : ADD 2, 1, 0 ;  stash left in R2
97 : ADD 1, 3, 0 ;  restore right to R1
98 : ADD 1, 2, 1 ;  left + right
99 : ADD 3, 1, 0 ;  Save arg1 in R3
100 : LDA 6, 108(0) ;  Prepare RA label
101 : LDA 2, 4(5) ;  callee base size -> R2
102 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
103 : ST 6, 0(5) ;  store RA in callee frame
104 : ST 2, 1(5) ;  TEMP overwrite: fix below
105 : ST 2, 1(5) ;  store arg0 from R2
106 : ST 3, 2(5) ;  store arg1 from R3
107 : LDA 7, 555(0) ;  Call LE
108 : LD 1, 3(5) ;  load callee result
109 : LDC 2, 4(0) ;  size to pop
110 : SUB 5, 5, 2 ;  pop callee frame
111 : JEQ 1, 170(0) ;  if false -> ELSE
112 : LD 1, 2(4) ;  load 'low' via FP
113 : ADD 2, 1, 0 ;  Save arg0 in R2
114 : LD 1, 2(4) ;  load 'low' via FP
115 : ADD 3, 1, 0 ;  Save arg1 in R3
116 : LDA 6, 124(0) ;  Prepare RA label
117 : LDA 2, 4(5) ;  callee base size -> R2
118 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
119 : ST 6, 0(5) ;  store RA in callee frame
120 : ST 2, 1(5) ;  TEMP overwrite: fix below
121 : ST 2, 1(5) ;  store arg0 from R2
122 : ST 3, 2(5) ;  store arg1 from R3
123 : LDA 7, 464(0) ;  Call TIMES
124 : LD 1, 3(5) ;  load callee result
125 : LDC 2, 4(0) ;  size to pop
126 : SUB 5, 5, 2 ;  pop callee frame
127 : ADD 3, 1, 0 ;  stash right in R3
128 : LD 1, 1(4) ;  load 'n' via FP
129 : ADD 2, 1, 0 ;  stash left in R2
130 : ADD 1, 3, 0 ;  restore right to R1
131 : SUB 1, 2, 1 ;  left - right
132 : ADD 2, 1, 0 ;  Save arg0 in R2
133 : LD 1, 1(4) ;  load 'n' via FP
134 : ADD 3, 1, 0 ;  stash right in R3
135 : LD 1, 3(4) ;  load 'high' via FP
136 : ADD 2, 1, 0 ;  Save arg0 in R2
137 : LD 1, 3(4) ;  load 'high' via FP
138 : ADD 3, 1, 0 ;  Save arg1 in R3
139 : LDA 6, 147(0) ;  Prepare RA label
140 : LDA 2, 4(5) ;  callee base size -> R2
141 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
142 : ST 6, 0(5) ;  store RA in callee frame
143 : ST 2, 1(5) ;  TEMP overwrite: fix below
144 : ST 2, 1(5) ;  store arg0 from R2
145 : ST 3, 2(5) ;  store arg1 from R3
146 : LDA 7, 464(0) ;  Call TIMES
147 : LD 1, 3(5) ;  load callee result
148 : LDC 2, 4(0) ;  size to pop
149 : SUB 5, 5, 2 ;  pop callee frame
150 : ADD 2, 1, 0 ;  stash left in R2
151 : ADD 1, 3, 0 ;  restore right to R1
152 : SUB 1, 2, 1 ;  left - right
153 : ADD 3, 1, 0 ;  Save arg1 in R3
154 : LDA 6, 162(0) ;  Prepare RA label
155 : LDA 2, 4(5) ;  callee base size -> R2
156 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
157 : ST 6, 0(5) ;  store RA in callee frame
158 : ST 2, 1(5) ;  TEMP overwrite: fix below
159 : ST 2, 1(5) ;  store arg0 from R2
160 : ST 3, 2(5) ;  store arg1 from R3
161 : LDA 7, 555(0) ;  Call LE
162 : LD 1, 3(5) ;  load callee result
163 : LDC 2, 4(0) ;  size to pop
164 : SUB 5, 5, 2 ;  pop callee frame
165 : JEQ 1, 168(0) ;  if false -> ELSE
166 : LD 1, 2(4) ;  load 'low' via FP
167 : LDA 7, 169(0) ;  skip ELSE
168 : LD 1, 3(4) ;  load 'high' via FP
169 : LDA 7, 179(0) ;  skip ELSE
170 : LDA 6, 176(0) ;  Prepare RA label
171 : LDA 2, 6(5) ;  callee base size -> R2
172 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
173 : ST 6, 0(5) ;  store RA in callee frame
174 : ST 2, 1(5) ;  TEMP overwrite: fix below
175 : LDA 7, 46(0) ;  Call SQRTSPLIT
176 : LD 1, 5(5) ;  load callee result
177 : LDC 2, 6(0) ;  size to pop
178 : SUB 5, 5, 2 ;  pop callee frame
179 : ST 1, 4(4) ;  store result in return slot (via FP)
180 : LD 6, 0(4) ;  load RA (via FP)
181 : LDA 7, 0(6) ;  return to caller
182 : ADD 4, 5, 0 ;  FP = SP at 182 entry
183 : LDA 6, 189(0) ;  Prepare RA label
184 : LDA 2, 5(5) ;  callee base size -> R2
185 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
186 : ST 6, 0(5) ;  store RA in callee frame
187 : ST 2, 1(5) ;  TEMP overwrite: fix below
188 : LDA 7, 90(0) ;  Call SQRTSEARCH
189 : LD 1, 4(5) ;  load callee result
190 : LDC 2, 5(0) ;  size to pop
191 : SUB 5, 5, 2 ;  pop callee frame
192 : ST 1, 2(4) ;  store result in return slot (via FP)
193 : LD 6, 0(4) ;  load RA (via FP)
194 : LDA 7, 0(6) ;  return to caller
195 : ADD 4, 5, 0 ;  FP = SP at 195 entry
196 : LDC 1, 0(0) ;  literal -> R1
197 : ADD 2, 1, 0 ;  Save arg0 in R2
198 : LD 1, 1(4) ;  load 'n' via FP
199 : ADD 3, 1, 0 ;  Save arg1 in R3
200 : LDA 6, 208(0) ;  Prepare RA label
201 : LDA 2, 4(5) ;  callee base size -> R2
202 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
203 : ST 6, 0(5) ;  store RA in callee frame
204 : ST 2, 1(5) ;  TEMP overwrite: fix below
205 : ST 2, 1(5) ;  store arg0 from R2
206 : ST 3, 2(5) ;  store arg1 from R3
207 : LDA 7, 555(0) ;  Call LE
208 : LD 1, 3(5) ;  load callee result
209 : LDC 2, 4(0) ;  size to pop
210 : SUB 5, 5, 2 ;  pop callee frame
211 : JEQ 1, 261(0) ;  if false -> ELSE
212 : LD 1, 1(4) ;  load 'n' via FP
213 : ADD 2, 1, 0 ;  Save arg0 in R2
214 : LD 1, 1(4) ;  load 'n' via FP
215 : ADD 2, 1, 0 ;  Save arg0 in R2
216 : LDC 1, 2(0) ;  literal -> R1
217 : ADD 3, 1, 0 ;  Save arg1 in R3
218 : LDA 6, 226(0) ;  Prepare RA label
219 : LDA 2, 4(5) ;  callee base size -> R2
220 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
221 : ST 6, 0(5) ;  store RA in callee frame
222 : ST 2, 1(5) ;  TEMP overwrite: fix below
223 : ST 2, 1(5) ;  store arg0 from R2
224 : ST 3, 2(5) ;  store arg1 from R3
225 : LDA 7, 454(0) ;  Call DIV
226 : LD 1, 3(5) ;  load callee result
227 : LDC 2, 4(0) ;  size to pop
228 : SUB 5, 5, 2 ;  pop callee frame
229 : ADD 3, 1, 0 ;  stash right in R3
230 : LD 1, 1(4) ;  load 'n' via FP
231 : ADD 2, 1, 0 ;  Save arg0 in R2
232 : LDC 1, 2(0) ;  literal -> R1
233 : ADD 3, 1, 0 ;  Save arg1 in R3
234 : LDA 6, 242(0) ;  Prepare RA label
235 : LDA 2, 4(5) ;  callee base size -> R2
236 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
237 : ST 6, 0(5) ;  store RA in callee frame
238 : ST 2, 1(5) ;  TEMP overwrite: fix below
239 : ST 2, 1(5) ;  store arg0 from R2
240 : ST 3, 2(5) ;  store arg1 from R3
241 : LDA 7, 454(0) ;  Call DIV
242 : LD 1, 3(5) ;  load callee result
243 : LDC 2, 4(0) ;  size to pop
244 : SUB 5, 5, 2 ;  pop callee frame
245 : ADD 2, 1, 0 ;  stash left in R2
246 : ADD 1, 3, 0 ;  restore right to R1
247 : ADD 1, 2, 1 ;  left + right
248 : ADD 3, 1, 0 ;  Save arg1 in R3
249 : LDA 6, 257(0) ;  Prepare RA label
250 : LDA 2, 4(5) ;  callee base size -> R2
251 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
252 : ST 6, 0(5) ;  store RA in callee frame
253 : ST 2, 1(5) ;  TEMP overwrite: fix below
254 : ST 2, 1(5) ;  store arg0 from R2
255 : ST 3, 2(5) ;  store arg1 from R3
256 : LDA 7, 513(0) ;  Call GT
257 : LD 1, 3(5) ;  load callee result
258 : LDC 2, 4(0) ;  size to pop
259 : SUB 5, 5, 2 ;  pop callee frame
260 : LDA 7, 351(0) ;  skip ELSE
261 : LD 1, 1(4) ;  load 'n' via FP
262 : ADD 2, 1, 0 ;  Save arg0 in R2
263 : LDA 6, 273(0) ;  Prepare RA label
264 : LDA 2, 3(5) ;  callee base size -> R2
265 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
266 : ST 6, 0(5) ;  store RA in callee frame
267 : ST 2, 1(5) ;  TEMP overwrite: fix below
268 : ST 2, 1(5) ; store arg0 from R2
269 : ST 2, 0(0) ;  noop slot
270 : ST 2, 0(0) ;  noop slot
271 : ST 2, 0(0) ;  noop
272 : LDA 7, 448(0) ;  Call NEG
273 : LD 1, 2(5) ;  load callee result
274 : LDC 2, 3(0) ;  size to pop
275 : SUB 5, 5, 2 ;  pop callee frame
276 : ADD 2, 1, 0 ;  Save arg0 in R2
277 : LD 1, 1(4) ;  load 'n' via FP
278 : ADD 2, 1, 0 ;  Save arg0 in R2
279 : LDA 6, 289(0) ;  Prepare RA label
280 : LDA 2, 3(5) ;  callee base size -> R2
281 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
282 : ST 6, 0(5) ;  store RA in callee frame
283 : ST 2, 1(5) ;  TEMP overwrite: fix below
284 : ST 2, 1(5) ; store arg0 from R2
285 : ST 2, 0(0) ;  noop slot
286 : ST 2, 0(0) ;  noop slot
287 : ST 2, 0(0) ;  noop
288 : LDA 7, 448(0) ;  Call NEG
289 : LD 1, 2(5) ;  load callee result
290 : LDC 2, 3(0) ;  size to pop
291 : SUB 5, 5, 2 ;  pop callee frame
292 : ADD 2, 1, 0 ;  Save arg0 in R2
293 : LDC 1, 2(0) ;  literal -> R1
294 : ADD 3, 1, 0 ;  Save arg1 in R3
295 : LDA 6, 303(0) ;  Prepare RA label
296 : LDA 2, 4(5) ;  callee base size -> R2
297 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
298 : ST 6, 0(5) ;  store RA in callee frame
299 : ST 2, 1(5) ;  TEMP overwrite: fix below
300 : ST 2, 1(5) ;  store arg0 from R2
301 : ST 3, 2(5) ;  store arg1 from R3
302 : LDA 7, 454(0) ;  Call DIV
303 : LD 1, 3(5) ;  load callee result
304 : LDC 2, 4(0) ;  size to pop
305 : SUB 5, 5, 2 ;  pop callee frame
306 : ADD 3, 1, 0 ;  stash right in R3
307 : LD 1, 1(4) ;  load 'n' via FP
308 : ADD 2, 1, 0 ;  Save arg0 in R2
309 : LDA 6, 319(0) ;  Prepare RA label
310 : LDA 2, 3(5) ;  callee base size -> R2
311 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
312 : ST 6, 0(5) ;  store RA in callee frame
313 : ST 2, 1(5) ;  TEMP overwrite: fix below
314 : ST 2, 1(5) ; store arg0 from R2
315 : ST 2, 0(0) ;  noop slot
316 : ST 2, 0(0) ;  noop slot
317 : ST 2, 0(0) ;  noop
318 : LDA 7, 448(0) ;  Call NEG
319 : LD 1, 2(5) ;  load callee result
320 : LDC 2, 3(0) ;  size to pop
321 : SUB 5, 5, 2 ;  pop callee frame
322 : ADD 2, 1, 0 ;  Save arg0 in R2
323 : LDC 1, 2(0) ;  literal -> R1
324 : ADD 3, 1, 0 ;  Save arg1 in R3
325 : LDA 6, 333(0) ;  Prepare RA label
326 : LDA 2, 4(5) ;  callee base size -> R2
327 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
328 : ST 6, 0(5) ;  store RA in callee frame
329 : ST 2, 1(5) ;  TEMP overwrite: fix below
330 : ST 2, 1(5) ;  store arg0 from R2
331 : ST 3, 2(5) ;  store arg1 from R3
332 : LDA 7, 454(0) ;  Call DIV
333 : LD 1, 3(5) ;  load callee result
334 : LDC 2, 4(0) ;  size to pop
335 : SUB 5, 5, 2 ;  pop callee frame
336 : ADD 2, 1, 0 ;  stash left in R2
337 : ADD 1, 3, 0 ;  restore right to R1
338 : ADD 1, 2, 1 ;  left + right
339 : ADD 3, 1, 0 ;  Save arg1 in R3
340 : LDA 6, 348(0) ;  Prepare RA label
341 : LDA 2, 4(5) ;  callee base size -> R2
342 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
343 : ST 6, 0(5) ;  store RA in callee frame
344 : ST 2, 1(5) ;  TEMP overwrite: fix below
345 : ST 2, 1(5) ;  store arg0 from R2
346 : ST 3, 2(5) ;  store arg1 from R3
347 : LDA 7, 513(0) ;  Call GT
348 : LD 1, 3(5) ;  load callee result
349 : LDC 2, 4(0) ;  size to pop
350 : SUB 5, 5, 2 ;  pop callee frame
351 : ST 1, 2(4) ;  store result in return slot (via FP)
352 : LD 6, 0(4) ;  load RA (via FP)
353 : LDA 7, 0(6) ;  return to caller
354 : ADD 4, 5, 0 ;  FP = SP at 354 entry
355 : LDC 1, 0(0) ;  literal -> R1
356 : ADD 3, 1, 0 ;  stash right in R3
357 : LD 1, 2(4) ;  load 'n' via FP
358 : ADD 2, 1, 0 ;  stash left in R2
359 : ADD 1, 3, 0 ;  restore right to R1
360 : SUB 1, 2, 1 ;  left - right
361 : JEQ 1, 2(7) ;  if 0 then true
362 : LDC 1, 0(0) ;  false
363 : LDA 7, 1(7) ;  skip
364 : LDC 1, 1(0) ;  true
365 : JEQ 1, 368(0) ;  if false -> ELSE
366 : LDC 1, 1(0) ;  literal -> R1
367 : LDA 7, 393(0) ;  skip ELSE
368 : LD 1, 1(4) ;  load 'm' via FP
369 : ADD 2, 1, 0 ;  Save arg0 in R2
370 : LDC 1, 1(0) ;  literal -> R1
371 : ADD 3, 1, 0 ;  stash right in R3
372 : LD 1, 2(4) ;  load 'n' via FP
373 : ADD 2, 1, 0 ;  stash left in R2
374 : ADD 1, 3, 0 ;  restore right to R1
375 : SUB 1, 2, 1 ;  left - right
376 : ADD 3, 1, 0 ;  Save arg1 in R3
377 : LDA 6, 385(0) ;  Prepare RA label
378 : LDA 2, 4(5) ;  callee base size -> R2
379 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
380 : ST 6, 0(5) ;  store RA in callee frame
381 : ST 2, 1(5) ;  TEMP overwrite: fix below
382 : ST 2, 1(5) ;  store arg0 from R2
383 : ST 3, 2(5) ;  store arg1 from R3
384 : LDA 7, 354(0) ;  Call EXP
385 : LD 1, 3(5) ;  load callee result
386 : LDC 2, 4(0) ;  size to pop
387 : SUB 5, 5, 2 ;  pop callee frame
388 : ADD 3, 1, 0 ;  stash right in R3
389 : LD 1, 1(4) ;  load 'm' via FP
390 : ADD 2, 1, 0 ;  stash left in R2
391 : ADD 1, 3, 0 ;  restore right to R1
392 : MUL 1, 2, 1 ;  left * right
393 : ST 1, 3(4) ;  store result in return slot (via FP)
394 : LD 6, 0(4) ;  load RA (via FP)
395 : LDA 7, 0(6) ;  return to caller
396 : ADD 4, 5, 0 ;  FP = SP at 396 entry
397 : LD 1, 2(4) ;  load 'n' via FP
398 : ADD 3, 1, 0 ;  stash right in R3
399 : LD 1, 2(4) ;  load 'n' via FP
400 : ADD 3, 1, 0 ;  stash right in R3
401 : LD 1, 1(4) ;  load 'm' via FP
402 : ADD 2, 1, 0 ;  stash left in R2
403 : ADD 1, 3, 0 ;  restore right to R1
404 : DIV 1, 2, 1 ;  left / right
405 : ADD 2, 1, 0 ;  stash left in R2
406 : ADD 1, 3, 0 ;  restore right to R1
407 : MUL 1, 2, 1 ;  left * right
408 : ADD 3, 1, 0 ;  stash right in R3
409 : LD 1, 1(4) ;  load 'm' via FP
410 : ADD 2, 1, 0 ;  stash left in R2
411 : ADD 1, 3, 0 ;  restore right to R1
412 : SUB 1, 2, 1 ;  left - right
413 : ST 1, 3(4) ;  store result in return slot (via FP)
414 : LD 6, 0(4) ;  load RA (via FP)
415 : LDA 7, 0(6) ;  return to caller
416 : ADD 4, 5, 0 ;  FP = SP at 416 entry
417 : LD 1, 1(4) ;  load 'n' via FP
418 : ADD 3, 1, 0 ;  stash right in R3
419 : LDC 1, 0(0) ;  literal -> R1
420 : ADD 2, 1, 0 ;  stash left in R2
421 : ADD 1, 3, 0 ;  restore right to R1
422 : SUB 1, 2, 1 ;  left - right
423 : JLT 1, 2(7) ;  if < 0 then true
424 : LDC 1, 0(0) ;  false
425 : LDA 7, 1(7) ;  skip
426 : LDC 1, 1(0) ;  true
427 : JEQ 1, 430(0) ;  if false -> ELSE
428 : LD 1, 1(4) ;  load 'n' via FP
429 : LDA 7, 445(0) ;  skip ELSE
430 : LD 1, 1(4) ;  load 'n' via FP
431 : ADD 2, 1, 0 ;  Save arg0 in R2
432 : LDA 6, 442(0) ;  Prepare RA label
433 : LDA 2, 3(5) ;  callee base size -> R2
434 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
435 : ST 6, 0(5) ;  store RA in callee frame
436 : ST 2, 1(5) ;  TEMP overwrite: fix below
437 : ST 2, 1(5) ; store arg0 from R2
438 : ST 2, 0(0) ;  noop slot
439 : ST 2, 0(0) ;  noop slot
440 : ST 2, 0(0) ;  noop
441 : LDA 7, 448(0) ;  Call NEG
442 : LD 1, 2(5) ;  load callee result
443 : LDC 2, 3(0) ;  size to pop
444 : SUB 5, 5, 2 ;  pop callee frame
445 : ST 1, 2(4) ;  store result in return slot (via FP)
446 : LD 6, 0(4) ;  load RA (via FP)
447 : LDA 7, 0(6) ;  return to caller
448 : ADD 4, 5, 0 ;  FP = SP at 448 entry
449 : LD 1, 1(4) ;  load 'n' via FP
450 : SUB 1, 0, 1 ;  negate
451 : ST 1, 2(4) ;  store result in return slot (via FP)
452 : LD 6, 0(4) ;  load RA (via FP)
453 : LDA 7, 0(6) ;  return to caller
454 : ADD 4, 5, 0 ;  FP = SP at 454 entry
455 : LD 1, 2(4) ;  load 'q' via FP
456 : ADD 3, 1, 0 ;  stash right in R3
457 : LD 1, 1(4) ;  load 'p' via FP
458 : ADD 2, 1, 0 ;  stash left in R2
459 : ADD 1, 3, 0 ;  restore right to R1
460 : DIV 1, 2, 1 ;  left / right
461 : ST 1, 3(4) ;  store result in return slot (via FP)
462 : LD 6, 0(4) ;  load RA (via FP)
463 : LDA 7, 0(6) ;  return to caller
464 : ADD 4, 5, 0 ;  FP = SP at 464 entry
465 : LD 1, 2(4) ;  load 'q' via FP
466 : ADD 3, 1, 0 ;  stash right in R3
467 : LD 1, 1(4) ;  load 'p' via FP
468 : ADD 2, 1, 0 ;  stash left in R2
469 : ADD 1, 3, 0 ;  restore right to R1
470 : MUL 1, 2, 1 ;  left * right
471 : ST 1, 3(4) ;  store result in return slot (via FP)
472 : LD 6, 0(4) ;  load RA (via FP)
473 : LDA 7, 0(6) ;  return to caller
474 : ADD 4, 5, 0 ;  FP = SP at 474 entry
475 : LD 1, 2(4) ;  load 'q' via FP
476 : ADD 3, 1, 0 ;  stash right in R3
477 : LD 1, 1(4) ;  load 'p' via FP
478 : ADD 2, 1, 0 ;  stash left in R2
479 : ADD 1, 3, 0 ;  restore right to R1
480 : SUB 1, 2, 1 ;  left - right
481 : ST 1, 3(4) ;  store result in return slot (via FP)
482 : LD 6, 0(4) ;  load RA (via FP)
483 : LDA 7, 0(6) ;  return to caller
484 : ADD 4, 5, 0 ;  FP = SP at 484 entry
485 : LD 1, 2(4) ;  load 'q' via FP
486 : ADD 3, 1, 0 ;  stash right in R3
487 : LD 1, 1(4) ;  load 'p' via FP
488 : ADD 2, 1, 0 ;  stash left in R2
489 : ADD 1, 3, 0 ;  restore right to R1
490 : ADD 1, 2, 1 ;  left + right
491 : ST 1, 3(4) ;  store result in return slot (via FP)
492 : LD 6, 0(4) ;  load RA (via FP)
493 : LDA 7, 0(6) ;  return to caller
494 : ADD 4, 5, 0 ;  FP = SP at 494 entry
495 : LD 1, 1(4) ;  load 'p' via FP
496 : JEQ 1, 499(0) ;  if false -> ELSE
497 : LD 1, 2(4) ;  load 'q' via FP
498 : LDA 7, 500(0) ;  skip ELSE
499 : LDC 1, 0(0) ;  bool -> R1
500 : ST 1, 3(4) ;  store result in return slot (via FP)
501 : LD 6, 0(4) ;  load RA (via FP)
502 : LDA 7, 0(6) ;  return to caller
503 : ADD 4, 5, 0 ;  FP = SP at 503 entry
504 : LD 1, 2(4) ;  load 'q' via FP
505 : ADD 3, 1, 0 ;  stash right in R3
506 : LD 1, 1(4) ;  load 'p' via FP
507 : ADD 2, 1, 0 ;  stash left in R2
508 : ADD 1, 3, 0 ;  restore right to R1
509 : ADD 1, 2, 1 ;  left OR right
510 : ST 1, 3(4) ;  store result in return slot (via FP)
511 : LD 6, 0(4) ;  load RA (via FP)
512 : LDA 7, 0(6) ;  return to caller
513 : ADD 4, 5, 0 ;  FP = SP at 513 entry
514 : LD 1, 1(4) ;  load 'p' via FP
515 : ADD 2, 1, 0 ;  Save arg0 in R2
516 : LD 1, 2(4) ;  load 'q' via FP
517 : ADD 3, 1, 0 ;  Save arg1 in R3
518 : LDA 6, 526(0) ;  Prepare RA label
519 : LDA 2, 4(5) ;  callee base size -> R2
520 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
521 : ST 6, 0(5) ;  store RA in callee frame
522 : ST 2, 1(5) ;  TEMP overwrite: fix below
523 : ST 2, 1(5) ;  store arg0 from R2
524 : ST 3, 2(5) ;  store arg1 from R3
525 : LDA 7, 555(0) ;  Call LE
526 : LD 1, 3(5) ;  load callee result
527 : LDC 2, 4(0) ;  size to pop
528 : SUB 5, 5, 2 ;  pop callee frame
529 : LDC 2, 1(0) ;  load 1
530 : SUB 1, 2, 1 ;  1 - R1
531 : ST 1, 3(4) ;  store result in return slot (via FP)
532 : LD 6, 0(4) ;  load RA (via FP)
533 : LDA 7, 0(6) ;  return to caller
534 : ADD 4, 5, 0 ;  FP = SP at 534 entry
535 : LD 1, 1(4) ;  load 'p' via FP
536 : ADD 2, 1, 0 ;  Save arg0 in R2
537 : LD 1, 2(4) ;  load 'q' via FP
538 : ADD 3, 1, 0 ;  Save arg1 in R3
539 : LDA 6, 547(0) ;  Prepare RA label
540 : LDA 2, 4(5) ;  callee base size -> R2
541 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
542 : ST 6, 0(5) ;  store RA in callee frame
543 : ST 2, 1(5) ;  TEMP overwrite: fix below
544 : ST 2, 1(5) ;  store arg0 from R2
545 : ST 3, 2(5) ;  store arg1 from R3
546 : LDA 7, 628(0) ;  Call LT
547 : LD 1, 3(5) ;  load callee result
548 : LDC 2, 4(0) ;  size to pop
549 : SUB 5, 5, 2 ;  pop callee frame
550 : LDC 2, 1(0) ;  load 1
551 : SUB 1, 2, 1 ;  1 - R1
552 : ST 1, 3(4) ;  store result in return slot (via FP)
553 : LD 6, 0(4) ;  load RA (via FP)
554 : LDA 7, 0(6) ;  return to caller
555 : ADD 4, 5, 0 ;  FP = SP at 555 entry
556 : LD 1, 1(4) ;  load 'p' via FP
557 : ADD 2, 1, 0 ;  Save arg0 in R2
558 : LD 1, 2(4) ;  load 'q' via FP
559 : ADD 3, 1, 0 ;  Save arg1 in R3
560 : LDA 6, 568(0) ;  Prepare RA label
561 : LDA 2, 4(5) ;  callee base size -> R2
562 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
563 : ST 6, 0(5) ;  store RA in callee frame
564 : ST 2, 1(5) ;  TEMP overwrite: fix below
565 : ST 2, 1(5) ;  store arg0 from R2
566 : ST 3, 2(5) ;  store arg1 from R3
567 : LDA 7, 614(0) ;  Call EQ
568 : LD 1, 3(5) ;  load callee result
569 : LDC 2, 4(0) ;  size to pop
570 : SUB 5, 5, 2 ;  pop callee frame
571 : ADD 3, 1, 0 ;  stash right in R3
572 : LD 1, 1(4) ;  load 'p' via FP
573 : ADD 2, 1, 0 ;  Save arg0 in R2
574 : LD 1, 2(4) ;  load 'q' via FP
575 : ADD 3, 1, 0 ;  Save arg1 in R3
576 : LDA 6, 584(0) ;  Prepare RA label
577 : LDA 2, 4(5) ;  callee base size -> R2
578 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
579 : ST 6, 0(5) ;  store RA in callee frame
580 : ST 2, 1(5) ;  TEMP overwrite: fix below
581 : ST 2, 1(5) ;  store arg0 from R2
582 : ST 3, 2(5) ;  store arg1 from R3
583 : LDA 7, 628(0) ;  Call LT
584 : LD 1, 3(5) ;  load callee result
585 : LDC 2, 4(0) ;  size to pop
586 : SUB 5, 5, 2 ;  pop callee frame
587 : ADD 2, 1, 0 ;  stash left in R2
588 : ADD 1, 3, 0 ;  restore right to R1
589 : ADD 1, 2, 1 ;  left OR right
590 : ST 1, 3(4) ;  store result in return slot (via FP)
591 : LD 6, 0(4) ;  load RA (via FP)
592 : LDA 7, 0(6) ;  return to caller
593 : ADD 4, 5, 0 ;  FP = SP at 593 entry
594 : LD 1, 1(4) ;  load 'p' via FP
595 : ADD 2, 1, 0 ;  Save arg0 in R2
596 : LD 1, 2(4) ;  load 'q' via FP
597 : ADD 3, 1, 0 ;  Save arg1 in R3
598 : LDA 6, 606(0) ;  Prepare RA label
599 : LDA 2, 4(5) ;  callee base size -> R2
600 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
601 : ST 6, 0(5) ;  store RA in callee frame
602 : ST 2, 1(5) ;  TEMP overwrite: fix below
603 : ST 2, 1(5) ;  store arg0 from R2
604 : ST 3, 2(5) ;  store arg1 from R3
605 : LDA 7, 614(0) ;  Call EQ
606 : LD 1, 3(5) ;  load callee result
607 : LDC 2, 4(0) ;  size to pop
608 : SUB 5, 5, 2 ;  pop callee frame
609 : LDC 2, 1(0) ;  load 1
610 : SUB 1, 2, 1 ;  1 - R1
611 : ST 1, 3(4) ;  store result in return slot (via FP)
612 : LD 6, 0(4) ;  load RA (via FP)
613 : LDA 7, 0(6) ;  return to caller
614 : ADD 4, 5, 0 ;  FP = SP at 614 entry
615 : LD 1, 2(4) ;  load 'q' via FP
616 : ADD 3, 1, 0 ;  stash right in R3
617 : LD 1, 1(4) ;  load 'p' via FP
618 : ADD 2, 1, 0 ;  stash left in R2
619 : ADD 1, 3, 0 ;  restore right to R1
620 : SUB 1, 2, 1 ;  left - right
621 : JEQ 1, 2(7) ;  if 0 then true
622 : LDC 1, 0(0) ;  false
623 : LDA 7, 1(7) ;  skip
624 : LDC 1, 1(0) ;  true
625 : ST 1, 3(4) ;  store result in return slot (via FP)
626 : LD 6, 0(4) ;  load RA (via FP)
627 : LDA 7, 0(6) ;  return to caller
628 : ADD 4, 5, 0 ;  FP = SP at 628 entry
629 : LD 1, 2(4) ;  load 'q' via FP
630 : ADD 3, 1, 0 ;  stash right in R3
631 : LD 1, 1(4) ;  load 'p' via FP
632 : ADD 2, 1, 0 ;  stash left in R2
633 : ADD 1, 3, 0 ;  restore right to R1
634 : SUB 1, 2, 1 ;  left - right
635 : JLT 1, 2(7) ;  if < 0 then true
636 : LDC 1, 0(0) ;  false
637 : LDA 7, 1(7) ;  skip
638 : LDC 1, 1(0) ;  true
639 : ST 1, 3(4) ;  store result in return slot (via FP)
640 : LD 6, 0(4) ;  load RA (via FP)
641 : LDA 7, 0(6) ;  return to caller
642 : ADD 4, 5, 0 ;  FP = SP at 642 entry
643 : LDC 1, 1(0) ;  literal -> R1
644 : ADD 3, 1, 0 ;  stash right in R3
645 : LDC 1, 2147483647(0) ;  literal -> R1
646 : SUB 1, 0, 1 ;  negate
647 : ADD 2, 1, 0 ;  stash left in R2
648 : ADD 1, 3, 0 ;  restore right to R1
649 : SUB 1, 2, 1 ;  left - right
650 : ST 1, 1(4) ;  store result in return slot (via FP)
651 : LD 6, 0(4) ;  load RA (via FP)
652 : LDA 7, 0(6) ;  return to caller
653 : ADD 4, 5, 0 ;  FP = SP at 653 entry
654 : LDC 1, 2147483647(0) ;  literal -> R1
655 : ST 1, 1(4) ;  store result in return slot (via FP)
656 : LD 6, 0(4) ;  load RA (via FP)
657 : LDA 7, 0(6) ;  return to caller
