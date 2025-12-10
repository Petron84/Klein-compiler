0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main frame
8 : LDA 7, 14(0) ;  Branch to main
9 : OUT 1, 0, 0 ;  Print main's result
10 : HALT 0, 0, 0 ;  Terminate program
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(5) ;  Load return address
13 : LDA 7, 0(6) ;  Return
14 : ADD 4, 5, 0 ;  Set FP at 14 entry
15 : LDC 1, 3(0) ;  Load integer literal into R1
16 : ADD 3, 1, 0 ;  Stash right in R3
17 : LD 1, 2(4) ;  Load parameter 'selector' via FP
18 : ADD 2, 1, 0 ;  Move left to R2
19 : ADD 1, 3, 0 ;  Restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip setting true
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 38(0) ;  If false, jump to ELSE
26 : LDA 4, 3(5) ;  Compute callee frame base (temp)
27 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
28 : LD 1, 1(4) ;  Load parameter 'n' via FP
29 : ST 1, 1(5) ;  Store argument 0 in callee frame
30 : LDA 6, 33(0) ;  Return address
31 : ST 6, 0(5) ;  Store RA in callee frame
32 : LDA 7, 341(0) ;  Call emirp
33 : LD 1, 2(5) ;  Load callee result
34 : LDC 2, 3(0) ;  Caller frame size
35 : SUB 5, 5, 2 ;  Pop callee frame
36 : ST 1, 3(4) ;  Store result into caller frame (via FP)
37 : LDA 7, 86(0) ;  Skip ELSE
38 : LDC 1, 5(0) ;  Load integer literal into R1
39 : ADD 3, 1, 0 ;  Stash right in R3
40 : LD 1, 2(4) ;  Load parameter 'selector' via FP
41 : ADD 2, 1, 0 ;  Move left to R2
42 : ADD 1, 3, 0 ;  Restore right to R1
43 : SUB 1, 2, 1 ;  left - right
44 : JEQ 1, 2(7) ;  if 0 then true
45 : LDC 1, 0(0) ;  false
46 : LDA 7, 1(7) ;  skip setting true
47 : LDC 1, 1(0) ;  true
48 : JEQ 1, 61(0) ;  If false, jump to ELSE
49 : LDA 4, 3(5) ;  Compute callee frame base (temp)
50 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
51 : LD 1, 1(4) ;  Load parameter 'n' via FP
52 : ST 1, 1(5) ;  Store argument 0 in callee frame
53 : LDA 6, 56(0) ;  Return address
54 : ST 6, 0(5) ;  Store RA in callee frame
55 : LDA 7, 297(0) ;  Call snowball
56 : LD 1, 2(5) ;  Load callee result
57 : LDC 2, 3(0) ;  Caller frame size
58 : SUB 5, 5, 2 ;  Pop callee frame
59 : ST 1, 3(4) ;  Store result into caller frame (via FP)
60 : LDA 7, 86(0) ;  Skip ELSE
61 : LDC 1, 8(0) ;  Load integer literal into R1
62 : ADD 3, 1, 0 ;  Stash right in R3
63 : LD 1, 2(4) ;  Load parameter 'selector' via FP
64 : ADD 2, 1, 0 ;  Move left to R2
65 : ADD 1, 3, 0 ;  Restore right to R1
66 : SUB 1, 2, 1 ;  left - right
67 : JEQ 1, 2(7) ;  if 0 then true
68 : LDC 1, 0(0) ;  false
69 : LDA 7, 1(7) ;  skip setting true
70 : LDC 1, 1(0) ;  true
71 : JEQ 1, 84(0) ;  If false, jump to ELSE
72 : LDA 4, 3(5) ;  Compute callee frame base (temp)
73 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
74 : LD 1, 1(4) ;  Load parameter 'n' via FP
75 : ST 1, 1(5) ;  Store argument 0 in callee frame
76 : LDA 6, 79(0) ;  Return address
77 : ST 6, 0(5) ;  Store RA in callee frame
78 : LDA 7, 265(0) ;  Call doBoth
79 : LD 1, 2(5) ;  Load callee result
80 : LDC 2, 3(0) ;  Caller frame size
81 : SUB 5, 5, 2 ;  Pop callee frame
82 : ST 1, 3(4) ;  Store result into caller frame (via FP)
83 : LDA 7, 86(0) ;  Skip ELSE
84 : LDC 1, 0(0) ;  Load boolean literal into R1
85 : ST 1, 3(4) ;  Store into current frame's return slot (via FP)
86 : LD 1, 3(4) ;  Load main return value (via FP)
87 : LD 6, 0(4) ;  Load return address (via FP)
88 : LDA 7, 0(6) ;  Return from main
89 : ADD 4, 5, 0 ;  Set FP at 89 entry
90 : LD 1, 2(4) ;  Load parameter 'n' via FP
91 : ADD 3, 1, 0 ;  Stash right in R3
92 : LD 1, 1(4) ;  Load parameter 'm' via FP
93 : ADD 2, 1, 0 ;  Move left to R2
94 : ADD 1, 3, 0 ;  Restore right to R1
95 : DIV 1, 2, 1 ;  R1 = left / right
96 : ADD 2, 1, 0 ;  Move left to R2
97 : LD 1, 2(4) ;  Load parameter 'n' via FP
98 : MUL 1, 2, 1 ;  R1 = left * right
99 : ADD 3, 1, 0 ;  Stash right in R3
100 : LD 1, 1(4) ;  Load parameter 'm' via FP
101 : ADD 2, 1, 0 ;  Move left to R2
102 : ADD 1, 3, 0 ;  Restore right to R1
103 : SUB 1, 2, 1 ;  R1 = left - right
104 : ST 1, 3(4) ;  Store function result (via FP)
105 : LD 6, 0(4) ;  Load return address (via FP)
106 : LDA 7, 0(6) ;  Return to caller
107 : ADD 4, 5, 0 ;  Set FP at 107 entry
108 : LDC 1, 0(0) ;  Load integer literal into R1
109 : ADD 3, 1, 0 ;  Stash right in R3
110 : LD 1, 1(4) ;  Load parameter 'n' via FP
111 : ADD 2, 1, 0 ;  Move left to R2
112 : ADD 1, 3, 0 ;  Restore right to R1
113 : SUB 1, 2, 1 ;  left - right
114 : JEQ 1, 2(7) ;  if 0 then true
115 : LDC 1, 0(0) ;  false
116 : LDA 7, 1(7) ;  skip setting true
117 : LDC 1, 1(0) ;  true
118 : JEQ 1, 121(0) ;  If false, jump to ELSE
119 : LD 1, 2(4) ;  Load parameter 'nR' via FP
120 : LDA 7, 157(0) ;  Skip ELSE
121 : LDA 4, 4(5) ;  Compute callee frame base (temp)
122 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
123 : LDC 1, 10(0) ;  Load integer literal into R1
124 : ADD 3, 1, 0 ;  Stash right in R3
125 : LD 1, 1(4) ;  Load parameter 'n' via FP
126 : ADD 2, 1, 0 ;  Move left to R2
127 : ADD 1, 3, 0 ;  Restore right to R1
128 : DIV 1, 2, 1 ;  R1 = left / right
129 : ST 1, 1(5) ;  Store argument 0 in callee frame
130 : LD 1, 2(4) ;  Load parameter 'nR' via FP
131 : ADD 3, 1, 0 ;  Stash right in R3
132 : LDC 1, 10(0) ;  Load integer literal into R1
133 : ADD 2, 1, 0 ;  Move left to R2
134 : ADD 1, 3, 0 ;  Restore right to R1
135 : MUL 1, 2, 1 ;  R1 = left * right
136 : ADD 2, 1, 0 ;  Move left to R2
137 : LDA 4, 4(5) ;  Compute callee frame base (temp)
138 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
139 : LD 1, 1(4) ;  Load parameter 'n' via FP
140 : ST 1, 1(5) ;  Store argument 0 in callee frame
141 : LDC 1, 10(0) ;  Load integer literal into R1
142 : ST 1, 2(5) ;  Store argument 1 in callee frame
143 : LDA 6, 146(0) ;  Return address
144 : ST 6, 0(5) ;  Store RA in callee frame
145 : LDA 7, 89(0) ;  Call MOD
146 : LD 1, 3(5) ;  Load callee result
147 : LDC 2, 4(0) ;  Caller frame size
148 : SUB 5, 5, 2 ;  Pop callee frame
149 : ADD 1, 2, 1 ;  R1 = left + right
150 : ST 1, 2(5) ;  Store argument 1 in callee frame
151 : LDA 6, 154(0) ;  Return address
152 : ST 6, 0(5) ;  Store RA in callee frame
153 : LDA 7, 107(0) ;  Call reverseL
154 : LD 1, 3(5) ;  Load callee result
155 : LDC 2, 4(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop callee frame
157 : ST 1, 3(4) ;  Store function result (via FP)
158 : LD 6, 0(4) ;  Load return address (via FP)
159 : LDA 7, 0(6) ;  Return to caller
160 : ADD 4, 5, 0 ;  Set FP at 160 entry
161 : LDA 4, 4(5) ;  Compute callee frame base (temp)
162 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
163 : LD 1, 1(4) ;  Load parameter 'n' via FP
164 : ST 1, 1(5) ;  Store argument 0 in callee frame
165 : LDC 1, 0(0) ;  Load integer literal into R1
166 : ST 1, 2(5) ;  Store argument 1 in callee frame
167 : LDA 6, 170(0) ;  Return address
168 : ST 6, 0(5) ;  Store RA in callee frame
169 : LDA 7, 107(0) ;  Call reverseL
170 : LD 1, 3(5) ;  Load callee result
171 : LDC 2, 4(0) ;  Caller frame size
172 : SUB 5, 5, 2 ;  Pop callee frame
173 : ST 1, 2(4) ;  Store function result (via FP)
174 : LD 6, 0(4) ;  Load return address (via FP)
175 : LDA 7, 0(6) ;  Return to caller
176 : ADD 4, 5, 0 ;  Set FP at 176 entry
177 : LDA 4, 4(5) ;  Compute callee frame base (temp)
178 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
179 : LD 1, 2(4) ;  Load parameter 'b' via FP
180 : ST 1, 1(5) ;  Store argument 0 in callee frame
181 : LD 1, 1(4) ;  Load parameter 'a' via FP
182 : ST 1, 2(5) ;  Store argument 1 in callee frame
183 : LDA 6, 186(0) ;  Return address
184 : ST 6, 0(5) ;  Store RA in callee frame
185 : LDA 7, 89(0) ;  Call MOD
186 : LD 1, 3(5) ;  Load callee result
187 : LDC 2, 4(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop callee frame
189 : ADD 2, 1, 0 ;  Move left to R2
190 : LDC 1, 0(0) ;  Load integer literal into R1
191 : SUB 1, 2, 1 ;  left - right
192 : JEQ 1, 2(7) ;  if 0 then true
193 : LDC 1, 0(0) ;  false
194 : LDA 7, 1(7) ;  skip setting true
195 : LDC 1, 1(0) ;  true
196 : ST 1, 3(4) ;  Store function result (via FP)
197 : LD 6, 0(4) ;  Load return address (via FP)
198 : LDA 7, 0(6) ;  Return to caller
199 : ADD 4, 5, 0 ;  Set FP at 199 entry
200 : LD 1, 2(4) ;  Load parameter 'n' via FP
201 : ADD 3, 1, 0 ;  Stash right in R3
202 : LD 1, 1(4) ;  Load parameter 'i' via FP
203 : ADD 2, 1, 0 ;  Move left to R2
204 : ADD 1, 3, 0 ;  Restore right to R1
205 : SUB 1, 2, 1 ;  left - right
206 : JLT 1, 2(7) ;  if < 0 then true
207 : LDC 1, 0(0) ;  false
208 : LDA 7, 1(7) ;  skip setting true
209 : LDC 1, 1(0) ;  true
210 : JEQ 1, 243(0) ;  If false, jump to ELSE
211 : LDA 4, 4(5) ;  Compute callee frame base (temp)
212 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
213 : LD 1, 1(4) ;  Load parameter 'i' via FP
214 : ST 1, 1(5) ;  Store argument 0 in callee frame
215 : LD 1, 2(4) ;  Load parameter 'n' via FP
216 : ST 1, 2(5) ;  Store argument 1 in callee frame
217 : LDA 6, 220(0) ;  Return address
218 : ST 6, 0(5) ;  Store RA in callee frame
219 : LDA 7, 176(0) ;  Call divides
220 : LD 1, 3(5) ;  Load callee result
221 : LDC 2, 4(0) ;  Caller frame size
222 : SUB 5, 5, 2 ;  Pop callee frame
223 : ADD 2, 1, 0 ;  Move left to R2
224 : LDA 4, 4(5) ;  Compute callee frame base (temp)
225 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
226 : LDC 1, 1(0) ;  Load integer literal into R1
227 : ADD 3, 1, 0 ;  Stash right in R3
228 : LD 1, 1(4) ;  Load parameter 'i' via FP
229 : ADD 2, 1, 0 ;  Move left to R2
230 : ADD 1, 3, 0 ;  Restore right to R1
231 : ADD 1, 2, 1 ;  R1 = left + right
232 : ST 1, 1(5) ;  Store argument 0 in callee frame
233 : LD 1, 2(4) ;  Load parameter 'n' via FP
234 : ST 1, 2(5) ;  Store argument 1 in callee frame
235 : LDA 6, 238(0) ;  Return address
236 : ST 6, 0(5) ;  Store RA in callee frame
237 : LDA 7, 199(0) ;  Call hasDivisorFrom
238 : LD 1, 3(5) ;  Load callee result
239 : LDC 2, 4(0) ;  Caller frame size
240 : SUB 5, 5, 2 ;  Pop callee frame
241 : ADD 1, 2, 1 ;  R1 = left OR right
242 : LDA 7, 244(0) ;  Skip ELSE
243 : LDC 1, 0(0) ;  Load boolean literal into R1
244 : ST 1, 3(4) ;  Store function result (via FP)
245 : LD 6, 0(4) ;  Load return address (via FP)
246 : LDA 7, 0(6) ;  Return to caller
247 : ADD 4, 5, 0 ;  Set FP at 247 entry
248 : LDA 4, 4(5) ;  Compute callee frame base (temp)
249 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
250 : LDC 1, 2(0) ;  Load integer literal into R1
251 : ST 1, 1(5) ;  Store argument 0 in callee frame
252 : LD 1, 1(4) ;  Load parameter 'n' via FP
253 : ST 1, 2(5) ;  Store argument 1 in callee frame
254 : LDA 6, 257(0) ;  Return address
255 : ST 6, 0(5) ;  Store RA in callee frame
256 : LDA 7, 199(0) ;  Call hasDivisorFrom
257 : LD 1, 3(5) ;  Load callee result
258 : LDC 2, 4(0) ;  Caller frame size
259 : SUB 5, 5, 2 ;  Pop callee frame
260 : LDC 2, 1(0) ;  Load 1 into R2
261 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
262 : ST 1, 2(4) ;  Store function result (via FP)
263 : LD 6, 0(4) ;  Load return address (via FP)
264 : LDA 7, 0(6) ;  Return to caller
265 : ADD 4, 5, 0 ;  Set FP at 265 entry
266 : LDA 4, 3(5) ;  Compute callee frame base (temp)
267 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
268 : LDA 4, 3(5) ;  Compute callee frame base (temp)
269 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
270 : LD 1, 1(4) ;  Load parameter 'n' via FP
271 : ST 1, 1(5) ;  Store argument 0 in callee frame
272 : LDA 6, 275(0) ;  Return address
273 : ST 6, 0(5) ;  Store RA in callee frame
274 : LDA 7, 341(0) ;  Call emirp
275 : LD 1, 2(5) ;  Load callee result
276 : LDC 2, 3(0) ;  Caller frame size
277 : SUB 5, 5, 2 ;  Pop callee frame
278 : ST 1, 1(5) ;  Store print arg in callee frame
279 : LDA 6, 282(0) ;  Return address
280 : ST 6, 0(5) ;  Store RA in callee frame
281 : LDA 7, 11(0) ;  Call print
282 : LDC 2, 3(0) ;  Caller frame size
283 : SUB 5, 5, 2 ;  Pop callee frame
284 : LDA 4, 3(5) ;  Compute callee frame base (temp)
285 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
286 : LD 1, 1(4) ;  Load parameter 'n' via FP
287 : ST 1, 1(5) ;  Store argument 0 in callee frame
288 : LDA 6, 291(0) ;  Return address
289 : ST 6, 0(5) ;  Store RA in callee frame
290 : LDA 7, 297(0) ;  Call snowball
291 : LD 1, 2(5) ;  Load callee result
292 : LDC 2, 3(0) ;  Caller frame size
293 : SUB 5, 5, 2 ;  Pop callee frame
294 : ST 1, 2(4) ;  Store function result (via FP)
295 : LD 6, 0(4) ;  Load return address (via FP)
296 : LDA 7, 0(6) ;  Return to caller
297 : ADD 4, 5, 0 ;  Set FP at 297 entry
298 : LDA 4, 3(5) ;  Compute callee frame base (temp)
299 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
300 : LD 1, 1(4) ;  Load parameter 'n' via FP
301 : ST 1, 1(5) ;  Store argument 0 in callee frame
302 : LDA 6, 305(0) ;  Return address
303 : ST 6, 0(5) ;  Store RA in callee frame
304 : LDA 7, 247(0) ;  Call isPrime
305 : LD 1, 2(5) ;  Load callee result
306 : LDC 2, 3(0) ;  Caller frame size
307 : SUB 5, 5, 2 ;  Pop callee frame
308 : ADD 2, 1, 0 ;  Move left to R2
309 : LDC 1, 10(0) ;  Load integer literal into R1
310 : ADD 3, 1, 0 ;  Stash right in R3
311 : LD 1, 1(4) ;  Load parameter 'n' via FP
312 : ADD 2, 1, 0 ;  Move left to R2
313 : ADD 1, 3, 0 ;  Restore right to R1
314 : SUB 1, 2, 1 ;  left - right
315 : JLT 1, 2(7) ;  if < 0 then true
316 : LDC 1, 0(0) ;  false
317 : LDA 7, 1(7) ;  skip setting true
318 : LDC 1, 1(0) ;  true
319 : JEQ 1, 322(0) ;  If false, jump to ELSE
320 : LDC 1, 1(0) ;  Load boolean literal into R1
321 : LDA 7, 337(0) ;  Skip ELSE
322 : LDA 4, 3(5) ;  Compute callee frame base (temp)
323 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
324 : LDC 1, 10(0) ;  Load integer literal into R1
325 : ADD 3, 1, 0 ;  Stash right in R3
326 : LD 1, 1(4) ;  Load parameter 'n' via FP
327 : ADD 2, 1, 0 ;  Move left to R2
328 : ADD 1, 3, 0 ;  Restore right to R1
329 : DIV 1, 2, 1 ;  R1 = left / right
330 : ST 1, 1(5) ;  Store argument 0 in callee frame
331 : LDA 6, 334(0) ;  Return address
332 : ST 6, 0(5) ;  Store RA in callee frame
333 : LDA 7, 247(0) ;  Call isPrime
334 : LD 1, 2(5) ;  Load callee result
335 : LDC 2, 3(0) ;  Caller frame size
336 : SUB 5, 5, 2 ;  Pop callee frame
337 : MUL 1, 2, 1 ;  R1 = left AND right
338 : ST 1, 2(4) ;  Store function result (via FP)
339 : LD 6, 0(4) ;  Load return address (via FP)
340 : LDA 7, 0(6) ;  Return to caller
341 : ADD 4, 5, 0 ;  Set FP at 341 entry
342 : LDA 4, 3(5) ;  Compute callee frame base (temp)
343 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
344 : LD 1, 1(4) ;  Load parameter 'n' via FP
345 : ST 1, 1(5) ;  Store argument 0 in callee frame
346 : LDA 6, 349(0) ;  Return address
347 : ST 6, 0(5) ;  Store RA in callee frame
348 : LDA 7, 247(0) ;  Call isPrime
349 : LD 1, 2(5) ;  Load callee result
350 : LDC 2, 3(0) ;  Caller frame size
351 : SUB 5, 5, 2 ;  Pop callee frame
352 : ADD 2, 1, 0 ;  Move left to R2
353 : LDA 4, 3(5) ;  Compute callee frame base (temp)
354 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
355 : LDA 4, 3(5) ;  Compute callee frame base (temp)
356 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
357 : LD 1, 1(4) ;  Load parameter 'n' via FP
358 : ST 1, 1(5) ;  Store argument 0 in callee frame
359 : LDA 6, 362(0) ;  Return address
360 : ST 6, 0(5) ;  Store RA in callee frame
361 : LDA 7, 160(0) ;  Call reverse
362 : LD 1, 2(5) ;  Load callee result
363 : LDC 2, 3(0) ;  Caller frame size
364 : SUB 5, 5, 2 ;  Pop callee frame
365 : ST 1, 1(5) ;  Store argument 0 in callee frame
366 : LDA 6, 369(0) ;  Return address
367 : ST 6, 0(5) ;  Store RA in callee frame
368 : LDA 7, 247(0) ;  Call isPrime
369 : LD 1, 2(5) ;  Load callee result
370 : LDC 2, 3(0) ;  Caller frame size
371 : SUB 5, 5, 2 ;  Pop callee frame
372 : MUL 1, 2, 1 ;  R1 = left AND right
373 : ST 1, 2(4) ;  Store function result (via FP)
374 : LD 6, 0(4) ;  Load return address (via FP)
375 : LDA 7, 0(6) ;  Return to caller
