0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
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
12 : ADD 4, 5, 0 ;  Set FP at 12 entry
13 : LDA 4, 3(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LD 1, 1(4) ;  Load parameter 'x' via FP
16 : ST 1, 1(5) ;  Store argument 0 in callee frame
17 : LDA 6, 20(0) ;  Return address
18 : ST 6, 0(5) ;  Store RA in callee frame
19 : LDA 7, 509(0) ;  Call circularPrimesTo
20 : LD 1, 2(5) ;  Load callee result
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ST 1, 2(4) ;  Store result into caller frame (via FP)
24 : LD 1, 2(4) ;  Load main return value (via FP)
25 : LD 6, 0(4) ;  Load return address (via FP)
26 : LDA 7, 0(6) ;  Return from main
27 : ADD 4, 5, 0 ;  Set FP at 27 entry
28 : LD 1, 2(4) ;  Load parameter 'den' via FP
29 : ADD 3, 1, 0 ;  Stash right in R3
30 : LD 1, 1(4) ;  Load parameter 'num' via FP
31 : ADD 2, 1, 0 ;  Move left to R2
32 : ADD 1, 3, 0 ;  Restore right to R1
33 : SUB 1, 2, 1 ;  left - right
34 : JLT 1, 2(7) ;  if < 0 then true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If false, jump to ELSE
39 : LD 1, 1(4) ;  Load parameter 'num' via FP
40 : LDA 7, 58(0) ;  Skip ELSE
41 : LDA 4, 4(5) ;  Compute callee frame base (temp)
42 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
43 : LD 1, 2(4) ;  Load parameter 'den' via FP
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(4) ;  Load parameter 'num' via FP
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : ST 1, 1(5) ;  Store argument 0 in callee frame
50 : LD 1, 2(4) ;  Load parameter 'den' via FP
51 : ST 1, 2(5) ;  Store argument 1 in callee frame
52 : LDA 6, 55(0) ;  Return address
53 : ST 6, 0(5) ;  Store RA in callee frame
54 : LDA 7, 27(0) ;  Call mod
55 : LD 1, 3(5) ;  Load callee result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop callee frame
58 : ST 1, 3(4) ;  Store function result (via FP)
59 : LD 6, 0(4) ;  Load return address (via FP)
60 : LDA 7, 0(6) ;  Return to caller
61 : ADD 4, 5, 0 ;  Set FP at 61 entry
62 : LDA 4, 4(5) ;  Compute callee frame base (temp)
63 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
64 : LD 1, 2(4) ;  Load parameter 'b' via FP
65 : ST 1, 1(5) ;  Store argument 0 in callee frame
66 : LD 1, 1(4) ;  Load parameter 'a' via FP
67 : ST 1, 2(5) ;  Store argument 1 in callee frame
68 : LDA 6, 71(0) ;  Return address
69 : ST 6, 0(5) ;  Store RA in callee frame
70 : LDA 7, 27(0) ;  Call mod
71 : LD 1, 3(5) ;  Load callee result
72 : LDC 2, 4(0) ;  Caller frame size
73 : SUB 5, 5, 2 ;  Pop callee frame
74 : ADD 2, 1, 0 ;  Move left to R2
75 : LDC 1, 0(0) ;  Load integer literal into R1
76 : SUB 1, 2, 1 ;  left - right
77 : JEQ 1, 2(7) ;  if 0 then true
78 : LDC 1, 0(0) ;  false
79 : LDA 7, 1(7) ;  skip setting true
80 : LDC 1, 1(0) ;  true
81 : ST 1, 3(4) ;  Store function result (via FP)
82 : LD 6, 0(4) ;  Load return address (via FP)
83 : LDA 7, 0(6) ;  Return to caller
84 : ADD 4, 5, 0 ;  Set FP at 84 entry
85 : LD 1, 2(4) ;  Load parameter 'n' via FP
86 : ADD 3, 1, 0 ;  Stash right in R3
87 : LD 1, 1(4) ;  Load parameter 'i' via FP
88 : ADD 2, 1, 0 ;  Move left to R2
89 : ADD 1, 3, 0 ;  Restore right to R1
90 : SUB 1, 2, 1 ;  left - right
91 : JLT 1, 2(7) ;  if < 0 then true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip setting true
94 : LDC 1, 1(0) ;  true
95 : JEQ 1, 128(0) ;  If false, jump to ELSE
96 : LDA 4, 4(5) ;  Compute callee frame base (temp)
97 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
98 : LD 1, 1(4) ;  Load parameter 'i' via FP
99 : ST 1, 1(5) ;  Store argument 0 in callee frame
100 : LD 1, 2(4) ;  Load parameter 'n' via FP
101 : ST 1, 2(5) ;  Store argument 1 in callee frame
102 : LDA 6, 105(0) ;  Return address
103 : ST 6, 0(5) ;  Store RA in callee frame
104 : LDA 7, 61(0) ;  Call divides
105 : LD 1, 3(5) ;  Load callee result
106 : LDC 2, 4(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop callee frame
108 : ADD 2, 1, 0 ;  Move left to R2
109 : LDA 4, 4(5) ;  Compute callee frame base (temp)
110 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
111 : LDC 1, 1(0) ;  Load integer literal into R1
112 : ADD 3, 1, 0 ;  Stash right in R3
113 : LD 1, 1(4) ;  Load parameter 'i' via FP
114 : ADD 2, 1, 0 ;  Move left to R2
115 : ADD 1, 3, 0 ;  Restore right to R1
116 : ADD 1, 2, 1 ;  R1 = left + right
117 : ST 1, 1(5) ;  Store argument 0 in callee frame
118 : LD 1, 2(4) ;  Load parameter 'n' via FP
119 : ST 1, 2(5) ;  Store argument 1 in callee frame
120 : LDA 6, 123(0) ;  Return address
121 : ST 6, 0(5) ;  Store RA in callee frame
122 : LDA 7, 84(0) ;  Call hasDivisorFrom
123 : LD 1, 3(5) ;  Load callee result
124 : LDC 2, 4(0) ;  Caller frame size
125 : SUB 5, 5, 2 ;  Pop callee frame
126 : ADD 1, 2, 1 ;  R1 = left OR right
127 : LDA 7, 129(0) ;  Skip ELSE
128 : LDC 1, 0(0) ;  Load boolean literal into R1
129 : ST 1, 3(4) ;  Store function result (via FP)
130 : LD 6, 0(4) ;  Load return address (via FP)
131 : LDA 7, 0(6) ;  Return to caller
132 : ADD 4, 5, 0 ;  Set FP at 132 entry
133 : LDA 4, 4(5) ;  Compute callee frame base (temp)
134 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
135 : LDC 1, 2(0) ;  Load integer literal into R1
136 : ST 1, 1(5) ;  Store argument 0 in callee frame
137 : LD 1, 1(4) ;  Load parameter 'n' via FP
138 : ST 1, 2(5) ;  Store argument 1 in callee frame
139 : LDA 6, 142(0) ;  Return address
140 : ST 6, 0(5) ;  Store RA in callee frame
141 : LDA 7, 84(0) ;  Call hasDivisorFrom
142 : LD 1, 3(5) ;  Load callee result
143 : LDC 2, 4(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop callee frame
145 : LDC 2, 1(0) ;  Load 1 into R2
146 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
147 : ST 1, 2(4) ;  Store function result (via FP)
148 : LD 6, 0(4) ;  Load return address (via FP)
149 : LDA 7, 0(6) ;  Return to caller
150 : ADD 4, 5, 0 ;  Set FP at 150 entry
151 : LDC 1, 10(0) ;  Load integer literal into R1
152 : ADD 3, 1, 0 ;  Stash right in R3
153 : LD 1, 1(4) ;  Load parameter 'x' via FP
154 : ADD 2, 1, 0 ;  Move left to R2
155 : ADD 1, 3, 0 ;  Restore right to R1
156 : DIV 1, 2, 1 ;  R1 = left / right
157 : ADD 2, 1, 0 ;  Move left to R2
158 : LDC 1, 0(0) ;  Load integer literal into R1
159 : SUB 1, 2, 1 ;  left - right
160 : JEQ 1, 2(7) ;  if 0 then true
161 : LDC 1, 0(0) ;  false
162 : LDA 7, 1(7) ;  skip setting true
163 : LDC 1, 1(0) ;  true
164 : JEQ 1, 167(0) ;  If false, jump to ELSE
165 : LD 1, 2(4) ;  Load parameter 'y' via FP
166 : LDA 7, 189(0) ;  Skip ELSE
167 : LDA 4, 4(5) ;  Compute callee frame base (temp)
168 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
169 : LDC 1, 10(0) ;  Load integer literal into R1
170 : ADD 3, 1, 0 ;  Stash right in R3
171 : LD 1, 1(4) ;  Load parameter 'x' via FP
172 : ADD 2, 1, 0 ;  Move left to R2
173 : ADD 1, 3, 0 ;  Restore right to R1
174 : DIV 1, 2, 1 ;  R1 = left / right
175 : ST 1, 1(5) ;  Store argument 0 in callee frame
176 : LDC 1, 1(0) ;  Load integer literal into R1
177 : ADD 3, 1, 0 ;  Stash right in R3
178 : LD 1, 2(4) ;  Load parameter 'y' via FP
179 : ADD 2, 1, 0 ;  Move left to R2
180 : ADD 1, 3, 0 ;  Restore right to R1
181 : ADD 1, 2, 1 ;  R1 = left + right
182 : ST 1, 2(5) ;  Store argument 1 in callee frame
183 : LDA 6, 186(0) ;  Return address
184 : ST 6, 0(5) ;  Store RA in callee frame
185 : LDA 7, 150(0) ;  Call log10Helper
186 : LD 1, 3(5) ;  Load callee result
187 : LDC 2, 4(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop callee frame
189 : ST 1, 3(4) ;  Store function result (via FP)
190 : LD 6, 0(4) ;  Load return address (via FP)
191 : LDA 7, 0(6) ;  Return to caller
192 : ADD 4, 5, 0 ;  Set FP at 192 entry
193 : LDA 4, 4(5) ;  Compute callee frame base (temp)
194 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
195 : LD 1, 1(4) ;  Load parameter 'x' via FP
196 : ST 1, 1(5) ;  Store argument 0 in callee frame
197 : LDC 1, 0(0) ;  Load integer literal into R1
198 : ST 1, 2(5) ;  Store argument 1 in callee frame
199 : LDA 6, 202(0) ;  Return address
200 : ST 6, 0(5) ;  Store RA in callee frame
201 : LDA 7, 150(0) ;  Call log10Helper
202 : LD 1, 3(5) ;  Load callee result
203 : LDC 2, 4(0) ;  Caller frame size
204 : SUB 5, 5, 2 ;  Pop callee frame
205 : ST 1, 2(4) ;  Store function result (via FP)
206 : LD 6, 0(4) ;  Load return address (via FP)
207 : LDA 7, 0(6) ;  Return to caller
208 : ADD 4, 5, 0 ;  Set FP at 208 entry
209 : LDC 1, 0(0) ;  Load integer literal into R1
210 : ADD 3, 1, 0 ;  Stash right in R3
211 : LD 1, 2(4) ;  Load parameter 'power' via FP
212 : ADD 2, 1, 0 ;  Move left to R2
213 : ADD 1, 3, 0 ;  Restore right to R1
214 : SUB 1, 2, 1 ;  left - right
215 : JEQ 1, 2(7) ;  if 0 then true
216 : LDC 1, 0(0) ;  false
217 : LDA 7, 1(7) ;  skip setting true
218 : LDC 1, 1(0) ;  true
219 : JEQ 1, 222(0) ;  If false, jump to ELSE
220 : LDC 1, 1(0) ;  Load integer literal into R1
221 : LDA 7, 259(0) ;  Skip ELSE
222 : LDC 1, 1(0) ;  Load integer literal into R1
223 : ADD 3, 1, 0 ;  Stash right in R3
224 : LD 1, 2(4) ;  Load parameter 'power' via FP
225 : ADD 2, 1, 0 ;  Move left to R2
226 : ADD 1, 3, 0 ;  Restore right to R1
227 : SUB 1, 2, 1 ;  left - right
228 : JEQ 1, 2(7) ;  if 0 then true
229 : LDC 1, 0(0) ;  false
230 : LDA 7, 1(7) ;  skip setting true
231 : LDC 1, 1(0) ;  true
232 : JEQ 1, 235(0) ;  If false, jump to ELSE
233 : LD 1, 3(4) ;  Load parameter 'total' via FP
234 : LDA 7, 259(0) ;  Skip ELSE
235 : LDA 4, 5(5) ;  Compute callee frame base (temp)
236 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
237 : LD 1, 1(4) ;  Load parameter 'base' via FP
238 : ST 1, 1(5) ;  Store argument 0 in callee frame
239 : LDC 1, 1(0) ;  Load integer literal into R1
240 : ADD 3, 1, 0 ;  Stash right in R3
241 : LD 1, 2(4) ;  Load parameter 'power' via FP
242 : ADD 2, 1, 0 ;  Move left to R2
243 : ADD 1, 3, 0 ;  Restore right to R1
244 : SUB 1, 2, 1 ;  R1 = left - right
245 : ST 1, 2(5) ;  Store argument 1 in callee frame
246 : LD 1, 3(4) ;  Load parameter 'total' via FP
247 : ADD 3, 1, 0 ;  Stash right in R3
248 : LD 1, 1(4) ;  Load parameter 'base' via FP
249 : ADD 2, 1, 0 ;  Move left to R2
250 : ADD 1, 3, 0 ;  Restore right to R1
251 : MUL 1, 2, 1 ;  R1 = left * right
252 : ST 1, 3(5) ;  Store argument 2 in callee frame
253 : LDA 6, 256(0) ;  Return address
254 : ST 6, 0(5) ;  Store RA in callee frame
255 : LDA 7, 208(0) ;  Call powHelper
256 : LD 1, 4(5) ;  Load callee result
257 : LDC 2, 5(0) ;  Caller frame size
258 : SUB 5, 5, 2 ;  Pop callee frame
259 : ST 1, 4(4) ;  Store function result (via FP)
260 : LD 6, 0(4) ;  Load return address (via FP)
261 : LDA 7, 0(6) ;  Return to caller
262 : ADD 4, 5, 0 ;  Set FP at 262 entry
263 : LDA 4, 5(5) ;  Compute callee frame base (temp)
264 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
265 : LD 1, 1(4) ;  Load parameter 'x' via FP
266 : ST 1, 1(5) ;  Store argument 0 in callee frame
267 : LD 1, 2(4) ;  Load parameter 'y' via FP
268 : ST 1, 2(5) ;  Store argument 1 in callee frame
269 : LD 1, 1(4) ;  Load parameter 'x' via FP
270 : ST 1, 3(5) ;  Store argument 2 in callee frame
271 : LDA 6, 274(0) ;  Return address
272 : ST 6, 0(5) ;  Store RA in callee frame
273 : LDA 7, 208(0) ;  Call powHelper
274 : LD 1, 4(5) ;  Load callee result
275 : LDC 2, 5(0) ;  Caller frame size
276 : SUB 5, 5, 2 ;  Pop callee frame
277 : ST 1, 3(4) ;  Store function result (via FP)
278 : LD 6, 0(4) ;  Load return address (via FP)
279 : LDA 7, 0(6) ;  Return to caller
280 : ADD 4, 5, 0 ;  Set FP at 280 entry
281 : LDC 1, 10(0) ;  Load integer literal into R1
282 : ADD 3, 1, 0 ;  Stash right in R3
283 : LD 1, 1(4) ;  Load parameter 'x' via FP
284 : ADD 2, 1, 0 ;  Move left to R2
285 : ADD 1, 3, 0 ;  Restore right to R1
286 : DIV 1, 2, 1 ;  R1 = left / right
287 : ADD 2, 1, 0 ;  Move left to R2
288 : LDA 4, 4(5) ;  Compute callee frame base (temp)
289 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
290 : LD 1, 1(4) ;  Load parameter 'x' via FP
291 : ST 1, 1(5) ;  Store argument 0 in callee frame
292 : LDC 1, 10(0) ;  Load integer literal into R1
293 : ST 1, 2(5) ;  Store argument 1 in callee frame
294 : LDA 6, 297(0) ;  Return address
295 : ST 6, 0(5) ;  Store RA in callee frame
296 : LDA 7, 27(0) ;  Call mod
297 : LD 1, 3(5) ;  Load callee result
298 : LDC 2, 4(0) ;  Caller frame size
299 : SUB 5, 5, 2 ;  Pop callee frame
300 : ADD 2, 1, 0 ;  Move left to R2
301 : LDA 4, 4(5) ;  Compute callee frame base (temp)
302 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
303 : LDC 1, 10(0) ;  Load integer literal into R1
304 : ST 1, 1(5) ;  Store argument 0 in callee frame
305 : LDA 4, 3(5) ;  Compute callee frame base (temp)
306 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
307 : LD 1, 1(4) ;  Load parameter 'x' via FP
308 : ST 1, 1(5) ;  Store argument 0 in callee frame
309 : LDA 6, 312(0) ;  Return address
310 : ST 6, 0(5) ;  Store RA in callee frame
311 : LDA 7, 192(0) ;  Call log10
312 : LD 1, 2(5) ;  Load callee result
313 : LDC 2, 3(0) ;  Caller frame size
314 : SUB 5, 5, 2 ;  Pop callee frame
315 : ST 1, 2(5) ;  Store argument 1 in callee frame
316 : LDA 6, 319(0) ;  Return address
317 : ST 6, 0(5) ;  Store RA in callee frame
318 : LDA 7, 262(0) ;  Call pow
319 : LD 1, 3(5) ;  Load callee result
320 : LDC 2, 4(0) ;  Caller frame size
321 : SUB 5, 5, 2 ;  Pop callee frame
322 : MUL 1, 2, 1 ;  R1 = left * right
323 : ADD 1, 2, 1 ;  R1 = left + right
324 : ST 1, 2(4) ;  Store function result (via FP)
325 : LD 6, 0(4) ;  Load return address (via FP)
326 : LDA 7, 0(6) ;  Return to caller
327 : ADD 4, 5, 0 ;  Set FP at 327 entry
328 : LDA 4, 3(5) ;  Compute callee frame base (temp)
329 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
330 : LD 1, 1(4) ;  Load parameter 'x' via FP
331 : ST 1, 1(5) ;  Store print arg in callee frame
332 : LDA 6, 335(0) ;  Return address
333 : ST 6, 0(5) ;  Store RA in callee frame
334 : LDA 7, 9(0) ;  Call print
335 : LDC 2, 3(0) ;  Caller frame size
336 : SUB 5, 5, 2 ;  Pop callee frame
337 : LDC 1, 1(0) ;  Load boolean literal into R1
338 : ST 1, 2(4) ;  Store function result (via FP)
339 : LD 6, 0(4) ;  Load return address (via FP)
340 : LDA 7, 0(6) ;  Return to caller
341 : ADD 4, 5, 0 ;  Set FP at 341 entry
342 : LDC 1, 0(0) ;  Load integer literal into R1
343 : ADD 3, 1, 0 ;  Stash right in R3
344 : LD 1, 2(4) ;  Load parameter 'turns' via FP
345 : ADD 2, 1, 0 ;  Move left to R2
346 : ADD 1, 3, 0 ;  Restore right to R1
347 : SUB 1, 2, 1 ;  left - right
348 : JEQ 1, 2(7) ;  if 0 then true
349 : LDC 1, 0(0) ;  false
350 : LDA 7, 1(7) ;  skip setting true
351 : LDC 1, 1(0) ;  true
352 : JEQ 1, 355(0) ;  If false, jump to ELSE
353 : LDC 1, 1(0) ;  Load boolean literal into R1
354 : LDA 7, 393(0) ;  Skip ELSE
355 : LDA 4, 3(5) ;  Compute callee frame base (temp)
356 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
357 : LD 1, 1(4) ;  Load parameter 'x' via FP
358 : ST 1, 1(5) ;  Store argument 0 in callee frame
359 : LDA 6, 362(0) ;  Return address
360 : ST 6, 0(5) ;  Store RA in callee frame
361 : LDA 7, 132(0) ;  Call isPrime
362 : LD 1, 2(5) ;  Load callee result
363 : LDC 2, 3(0) ;  Caller frame size
364 : SUB 5, 5, 2 ;  Pop callee frame
365 : ADD 2, 1, 0 ;  Move left to R2
366 : LDA 4, 4(5) ;  Compute callee frame base (temp)
367 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
368 : LDA 4, 3(5) ;  Compute callee frame base (temp)
369 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
370 : LD 1, 1(4) ;  Load parameter 'x' via FP
371 : ST 1, 1(5) ;  Store argument 0 in callee frame
372 : LDA 6, 375(0) ;  Return address
373 : ST 6, 0(5) ;  Store RA in callee frame
374 : LDA 7, 280(0) ;  Call rotate
375 : LD 1, 2(5) ;  Load callee result
376 : LDC 2, 3(0) ;  Caller frame size
377 : SUB 5, 5, 2 ;  Pop callee frame
378 : ST 1, 1(5) ;  Store argument 0 in callee frame
379 : LDC 1, 1(0) ;  Load integer literal into R1
380 : ADD 3, 1, 0 ;  Stash right in R3
381 : LD 1, 2(4) ;  Load parameter 'turns' via FP
382 : ADD 2, 1, 0 ;  Move left to R2
383 : ADD 1, 3, 0 ;  Restore right to R1
384 : SUB 1, 2, 1 ;  R1 = left - right
385 : ST 1, 2(5) ;  Store argument 1 in callee frame
386 : LDA 6, 389(0) ;  Return address
387 : ST 6, 0(5) ;  Store RA in callee frame
388 : LDA 7, 341(0) ;  Call isCircularPrimeHelper
389 : LD 1, 3(5) ;  Load callee result
390 : LDC 2, 4(0) ;  Caller frame size
391 : SUB 5, 5, 2 ;  Pop callee frame
392 : MUL 1, 2, 1 ;  R1 = left AND right
393 : ST 1, 3(4) ;  Store function result (via FP)
394 : LD 6, 0(4) ;  Load return address (via FP)
395 : LDA 7, 0(6) ;  Return to caller
396 : ADD 4, 5, 0 ;  Set FP at 396 entry
397 : LDA 4, 4(5) ;  Compute callee frame base (temp)
398 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
399 : LD 1, 1(4) ;  Load parameter 'x' via FP
400 : ST 1, 1(5) ;  Store argument 0 in callee frame
401 : LDA 4, 3(5) ;  Compute callee frame base (temp)
402 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
403 : LD 1, 1(4) ;  Load parameter 'x' via FP
404 : ST 1, 1(5) ;  Store argument 0 in callee frame
405 : LDA 6, 408(0) ;  Return address
406 : ST 6, 0(5) ;  Store RA in callee frame
407 : LDA 7, 192(0) ;  Call log10
408 : LD 1, 2(5) ;  Load callee result
409 : LDC 2, 3(0) ;  Caller frame size
410 : SUB 5, 5, 2 ;  Pop callee frame
411 : ADD 2, 1, 0 ;  Move left to R2
412 : LDC 1, 1(0) ;  Load integer literal into R1
413 : ADD 1, 2, 1 ;  R1 = left + right
414 : ST 1, 2(5) ;  Store argument 1 in callee frame
415 : LDA 6, 418(0) ;  Return address
416 : ST 6, 0(5) ;  Store RA in callee frame
417 : LDA 7, 341(0) ;  Call isCircularPrimeHelper
418 : LD 1, 3(5) ;  Load callee result
419 : LDC 2, 4(0) ;  Caller frame size
420 : SUB 5, 5, 2 ;  Pop callee frame
421 : JEQ 1, 433(0) ;  If false, jump to ELSE
422 : LDA 4, 3(5) ;  Compute callee frame base (temp)
423 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
424 : LD 1, 1(4) ;  Load parameter 'x' via FP
425 : ST 1, 1(5) ;  Store argument 0 in callee frame
426 : LDA 6, 429(0) ;  Return address
427 : ST 6, 0(5) ;  Store RA in callee frame
428 : LDA 7, 327(0) ;  Call report
429 : LD 1, 2(5) ;  Load callee result
430 : LDC 2, 3(0) ;  Caller frame size
431 : SUB 5, 5, 2 ;  Pop callee frame
432 : LDA 7, 434(0) ;  Skip ELSE
433 : LDC 1, 0(0) ;  Load boolean literal into R1
434 : ST 1, 2(4) ;  Store function result (via FP)
435 : LD 6, 0(4) ;  Load return address (via FP)
436 : LDA 7, 0(6) ;  Return to caller
437 : ADD 4, 5, 0 ;  Set FP at 437 entry
438 : LD 1, 1(4) ;  Load parameter 'top' via FP
439 : ADD 3, 1, 0 ;  Stash right in R3
440 : LD 1, 2(4) ;  Load parameter 'x' via FP
441 : ADD 2, 1, 0 ;  Move left to R2
442 : ADD 1, 3, 0 ;  Restore right to R1
443 : SUB 1, 2, 1 ;  left - right
444 : JLT 1, 2(7) ;  if < 0 then true
445 : LDC 1, 0(0) ;  false
446 : LDA 7, 1(7) ;  skip setting true
447 : LDC 1, 1(0) ;  true
448 : JEQ 1, 505(0) ;  If false, jump to ELSE
449 : LDA 4, 3(5) ;  Compute callee frame base (temp)
450 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
451 : LD 1, 2(4) ;  Load parameter 'x' via FP
452 : ST 1, 1(5) ;  Store argument 0 in callee frame
453 : LDA 6, 456(0) ;  Return address
454 : ST 6, 0(5) ;  Store RA in callee frame
455 : LDA 7, 396(0) ;  Call isCircularPrime
456 : LD 1, 2(5) ;  Load callee result
457 : LDC 2, 3(0) ;  Caller frame size
458 : SUB 5, 5, 2 ;  Pop callee frame
459 : JEQ 1, 485(0) ;  If false, jump to ELSE
460 : LDA 4, 5(5) ;  Compute callee frame base (temp)
461 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
462 : LD 1, 1(4) ;  Load parameter 'top' via FP
463 : ST 1, 1(5) ;  Store argument 0 in callee frame
464 : LDC 1, 1(0) ;  Load integer literal into R1
465 : ADD 3, 1, 0 ;  Stash right in R3
466 : LD 1, 2(4) ;  Load parameter 'x' via FP
467 : ADD 2, 1, 0 ;  Move left to R2
468 : ADD 1, 3, 0 ;  Restore right to R1
469 : ADD 1, 2, 1 ;  R1 = left + right
470 : ST 1, 2(5) ;  Store argument 1 in callee frame
471 : LDC 1, 1(0) ;  Load integer literal into R1
472 : ADD 3, 1, 0 ;  Stash right in R3
473 : LD 1, 3(4) ;  Load parameter 'count' via FP
474 : ADD 2, 1, 0 ;  Move left to R2
475 : ADD 1, 3, 0 ;  Restore right to R1
476 : ADD 1, 2, 1 ;  R1 = left + right
477 : ST 1, 3(5) ;  Store argument 2 in callee frame
478 : LDA 6, 481(0) ;  Return address
479 : ST 6, 0(5) ;  Store RA in callee frame
480 : LDA 7, 437(0) ;  Call circularPrimesToHelper
481 : LD 1, 4(5) ;  Load callee result
482 : LDC 2, 5(0) ;  Caller frame size
483 : SUB 5, 5, 2 ;  Pop callee frame
484 : LDA 7, 504(0) ;  Skip ELSE
485 : LDA 4, 5(5) ;  Compute callee frame base (temp)
486 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
487 : LD 1, 1(4) ;  Load parameter 'top' via FP
488 : ST 1, 1(5) ;  Store argument 0 in callee frame
489 : LDC 1, 1(0) ;  Load integer literal into R1
490 : ADD 3, 1, 0 ;  Stash right in R3
491 : LD 1, 2(4) ;  Load parameter 'x' via FP
492 : ADD 2, 1, 0 ;  Move left to R2
493 : ADD 1, 3, 0 ;  Restore right to R1
494 : ADD 1, 2, 1 ;  R1 = left + right
495 : ST 1, 2(5) ;  Store argument 1 in callee frame
496 : LD 1, 3(4) ;  Load parameter 'count' via FP
497 : ST 1, 3(5) ;  Store argument 2 in callee frame
498 : LDA 6, 501(0) ;  Return address
499 : ST 6, 0(5) ;  Store RA in callee frame
500 : LDA 7, 437(0) ;  Call circularPrimesToHelper
501 : LD 1, 4(5) ;  Load callee result
502 : LDC 2, 5(0) ;  Caller frame size
503 : SUB 5, 5, 2 ;  Pop callee frame
504 : LDA 7, 506(0) ;  Skip ELSE
505 : LD 1, 3(4) ;  Load parameter 'count' via FP
506 : ST 1, 4(4) ;  Store function result (via FP)
507 : LD 6, 0(4) ;  Load return address (via FP)
508 : LDA 7, 0(6) ;  Return to caller
509 : ADD 4, 5, 0 ;  Set FP at 509 entry
510 : LDA 4, 5(5) ;  Compute callee frame base (temp)
511 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
512 : LDC 1, 1(0) ;  Load integer literal into R1
513 : ADD 3, 1, 0 ;  Stash right in R3
514 : LD 1, 1(4) ;  Load parameter 'x' via FP
515 : ADD 2, 1, 0 ;  Move left to R2
516 : ADD 1, 3, 0 ;  Restore right to R1
517 : ADD 1, 2, 1 ;  R1 = left + right
518 : ST 1, 1(5) ;  Store argument 0 in callee frame
519 : LDC 1, 2(0) ;  Load integer literal into R1
520 : ST 1, 2(5) ;  Store argument 1 in callee frame
521 : LDC 1, 0(0) ;  Load integer literal into R1
522 : ST 1, 3(5) ;  Store argument 2 in callee frame
523 : LDA 6, 526(0) ;  Return address
524 : ST 6, 0(5) ;  Store RA in callee frame
525 : LDA 7, 437(0) ;  Call circularPrimesToHelper
526 : LD 1, 4(5) ;  Load callee result
527 : LDC 2, 5(0) ;  Caller frame size
528 : SUB 5, 5, 2 ;  Pop callee frame
529 : ST 1, 2(4) ;  Store function result (via FP)
530 : LD 6, 0(4) ;  Load return address (via FP)
531 : LDA 7, 0(6) ;  Return to caller
