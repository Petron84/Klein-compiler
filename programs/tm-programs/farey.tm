0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into R2
7 : ST 2, 3(5) ;  Store arg 3 into main frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST 6, 0(5) ;  Store return address in main frame
10 : LDA 7, 16(0) ;  Branch to main
11 : OUT 1, 0, 0 ;  Print main's result
12 : HALT 0, 0, 0 ;  Terminate program
13 : OUT 1, 0, 0 ;  print(R1)
14 : LD 6, 0(5) ;  Load return address
15 : LDA 7, 0(6) ;  Return
16 : ADD 4, 5, 0 ;  Set FP at 16 entry
17 : LDA 4, 3(5) ;  Compute callee frame base (temp)
18 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
19 : LDA 4, 5(5) ;  Compute callee frame base (temp)
20 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
21 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
22 : ST 1, 1(5) ;  Store argument 0 in callee frame
23 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
24 : ST 1, 2(5) ;  Store argument 1 in callee frame
25 : LD 1, 3(4) ;  Load parameter 'N' via FP
26 : ST 1, 3(5) ;  Store argument 2 in callee frame
27 : LDA 6, 30(0) ;  Return address
28 : ST 6, 0(5) ;  Store RA in callee frame
29 : LDA 7, 543(0) ;  Call fareyNum
30 : LD 1, 4(5) ;  Load callee result
31 : LDC 2, 5(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop callee frame
33 : ST 1, 1(5) ;  Store print arg in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 13(0) ;  Call print
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop callee frame
39 : LDA 4, 5(5) ;  Compute callee frame base (temp)
40 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
41 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
42 : ST 1, 1(5) ;  Store argument 0 in callee frame
43 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
44 : ST 1, 2(5) ;  Store argument 1 in callee frame
45 : LD 1, 3(4) ;  Load parameter 'N' via FP
46 : ST 1, 3(5) ;  Store argument 2 in callee frame
47 : LDA 6, 50(0) ;  Return address
48 : ST 6, 0(5) ;  Store RA in callee frame
49 : LDA 7, 429(0) ;  Call fareyDen
50 : LD 1, 4(5) ;  Load callee result
51 : LDC 2, 5(0) ;  Caller frame size
52 : SUB 5, 5, 2 ;  Pop callee frame
53 : ST 1, 4(4) ;  Store result into caller frame (via FP)
54 : LD 1, 4(4) ;  Load main return value (via FP)
55 : LD 6, 0(4) ;  Load return address (via FP)
56 : LDA 7, 0(6) ;  Return from main
57 : ADD 4, 5, 0 ;  Set FP at 57 entry
58 : LD 1, 2(4) ;  Load parameter 'y' via FP
59 : ADD 3, 1, 0 ;  Stash right in R3
60 : LD 1, 1(4) ;  Load parameter 'x' via FP
61 : ADD 2, 1, 0 ;  Move left to R2
62 : ADD 1, 3, 0 ;  Restore right to R1
63 : SUB 1, 2, 1 ;  left - right
64 : JLT 1, 2(7) ;  if < 0 then true
65 : LDC 1, 0(0) ;  false
66 : LDA 7, 1(7) ;  skip setting true
67 : LDC 1, 1(0) ;  true
68 : ADD 2, 1, 0 ;  Move left to R2
69 : LD 1, 2(4) ;  Load parameter 'y' via FP
70 : ADD 3, 1, 0 ;  Stash right in R3
71 : LD 1, 1(4) ;  Load parameter 'x' via FP
72 : ADD 2, 1, 0 ;  Move left to R2
73 : ADD 1, 3, 0 ;  Restore right to R1
74 : SUB 1, 2, 1 ;  left - right
75 : JEQ 1, 2(7) ;  if 0 then true
76 : LDC 1, 0(0) ;  false
77 : LDA 7, 1(7) ;  skip setting true
78 : LDC 1, 1(0) ;  true
79 : ADD 1, 2, 1 ;  R1 = left OR right
80 : LDC 2, 1(0) ;  Load 1 into R2
81 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
82 : ST 1, 3(4) ;  Store function result (via FP)
83 : LD 6, 0(4) ;  Load return address (via FP)
84 : LDA 7, 0(6) ;  Return to caller
85 : ADD 4, 5, 0 ;  Set FP at 85 entry
86 : LDA 4, 4(5) ;  Compute callee frame base (temp)
87 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
88 : LD 1, 4(4) ;  Load parameter 'yd' via FP
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(4) ;  Load parameter 'x' via FP
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : MUL 1, 2, 1 ;  R1 = left * right
94 : ST 1, 1(5) ;  Store argument 0 in callee frame
95 : LD 1, 2(4) ;  Load parameter 'xd' via FP
96 : ADD 3, 1, 0 ;  Stash right in R3
97 : LD 1, 3(4) ;  Load parameter 'y' via FP
98 : ADD 2, 1, 0 ;  Move left to R2
99 : ADD 1, 3, 0 ;  Restore right to R1
100 : MUL 1, 2, 1 ;  R1 = left * right
101 : ST 1, 2(5) ;  Store argument 1 in callee frame
102 : LDA 6, 105(0) ;  Return address
103 : ST 6, 0(5) ;  Store RA in callee frame
104 : LDA 7, 57(0) ;  Call greater
105 : LD 1, 3(5) ;  Load callee result
106 : LDC 2, 4(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop callee frame
108 : ST 1, 5(4) ;  Store function result (via FP)
109 : LD 6, 0(4) ;  Load return address (via FP)
110 : LDA 7, 0(6) ;  Return to caller
111 : ADD 4, 5, 0 ;  Set FP at 111 entry
112 : LD 1, 4(4) ;  Load parameter 'yd' via FP
113 : ADD 3, 1, 0 ;  Stash right in R3
114 : LD 1, 1(4) ;  Load parameter 'x' via FP
115 : ADD 2, 1, 0 ;  Move left to R2
116 : ADD 1, 3, 0 ;  Restore right to R1
117 : MUL 1, 2, 1 ;  R1 = left * right
118 : ADD 2, 1, 0 ;  Move left to R2
119 : LD 1, 2(4) ;  Load parameter 'xd' via FP
120 : ADD 3, 1, 0 ;  Stash right in R3
121 : LD 1, 3(4) ;  Load parameter 'y' via FP
122 : ADD 2, 1, 0 ;  Move left to R2
123 : ADD 1, 3, 0 ;  Restore right to R1
124 : MUL 1, 2, 1 ;  R1 = left * right
125 : SUB 1, 2, 1 ;  left - right
126 : JEQ 1, 2(7) ;  if 0 then true
127 : LDC 1, 0(0) ;  false
128 : LDA 7, 1(7) ;  skip setting true
129 : LDC 1, 1(0) ;  true
130 : ST 1, 5(4) ;  Store function result (via FP)
131 : LD 6, 0(4) ;  Load return address (via FP)
132 : LDA 7, 0(6) ;  Return to caller
133 : ADD 4, 5, 0 ;  Set FP at 133 entry
134 : LDA 4, 4(5) ;  Compute callee frame base (temp)
135 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
136 : LD 1, 6(4) ;  Load parameter 'b' via FP
137 : ST 1, 1(5) ;  Store argument 0 in callee frame
138 : LD 1, 4(4) ;  Load parameter 'N' via FP
139 : ST 1, 2(5) ;  Store argument 1 in callee frame
140 : LDA 6, 143(0) ;  Return address
141 : ST 6, 0(5) ;  Store RA in callee frame
142 : LDA 7, 57(0) ;  Call greater
143 : LD 1, 3(5) ;  Load callee result
144 : LDC 2, 4(0) ;  Caller frame size
145 : SUB 5, 5, 2 ;  Pop callee frame
146 : ADD 2, 1, 0 ;  Move left to R2
147 : LDA 4, 4(5) ;  Compute callee frame base (temp)
148 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
149 : LD 1, 8(4) ;  Load parameter 'd' via FP
150 : ST 1, 1(5) ;  Store argument 0 in callee frame
151 : LD 1, 4(4) ;  Load parameter 'N' via FP
152 : ST 1, 2(5) ;  Store argument 1 in callee frame
153 : LDA 6, 156(0) ;  Return address
154 : ST 6, 0(5) ;  Store RA in callee frame
155 : LDA 7, 57(0) ;  Call greater
156 : LD 1, 3(5) ;  Load callee result
157 : LDC 2, 4(0) ;  Caller frame size
158 : SUB 5, 5, 2 ;  Pop callee frame
159 : ADD 1, 2, 1 ;  R1 = left OR right
160 : JEQ 1, 202(0) ;  If false, jump to ELSE
161 : LDC 1, 1(0) ;  Load integer literal into R1
162 : ADD 3, 1, 0 ;  Stash right in R3
163 : LD 1, 1(4) ;  Load parameter 'selector' via FP
164 : ADD 2, 1, 0 ;  Move left to R2
165 : ADD 1, 3, 0 ;  Restore right to R1
166 : SUB 1, 2, 1 ;  left - right
167 : JEQ 1, 2(7) ;  if 0 then true
168 : LDC 1, 0(0) ;  false
169 : LDA 7, 1(7) ;  skip setting true
170 : LDC 1, 1(0) ;  true
171 : JEQ 1, 174(0) ;  If false, jump to ELSE
172 : LD 1, 5(4) ;  Load parameter 'a' via FP
173 : LDA 7, 201(0) ;  Skip ELSE
174 : LDC 1, 2(0) ;  Load integer literal into R1
175 : ADD 3, 1, 0 ;  Stash right in R3
176 : LD 1, 1(4) ;  Load parameter 'selector' via FP
177 : ADD 2, 1, 0 ;  Move left to R2
178 : ADD 1, 3, 0 ;  Restore right to R1
179 : SUB 1, 2, 1 ;  left - right
180 : JEQ 1, 2(7) ;  if 0 then true
181 : LDC 1, 0(0) ;  false
182 : LDA 7, 1(7) ;  skip setting true
183 : LDC 1, 1(0) ;  true
184 : JEQ 1, 187(0) ;  If false, jump to ELSE
185 : LD 1, 6(4) ;  Load parameter 'b' via FP
186 : LDA 7, 201(0) ;  Skip ELSE
187 : LDC 1, 3(0) ;  Load integer literal into R1
188 : ADD 3, 1, 0 ;  Stash right in R3
189 : LD 1, 1(4) ;  Load parameter 'selector' via FP
190 : ADD 2, 1, 0 ;  Move left to R2
191 : ADD 1, 3, 0 ;  Restore right to R1
192 : SUB 1, 2, 1 ;  left - right
193 : JEQ 1, 2(7) ;  if 0 then true
194 : LDC 1, 0(0) ;  false
195 : LDA 7, 1(7) ;  skip setting true
196 : LDC 1, 1(0) ;  true
197 : JEQ 1, 200(0) ;  If false, jump to ELSE
198 : LD 1, 7(4) ;  Load parameter 'c' via FP
199 : LDA 7, 201(0) ;  Skip ELSE
200 : LD 1, 8(4) ;  Load parameter 'd' via FP
201 : LDA 7, 386(0) ;  Skip ELSE
202 : LDA 4, 6(5) ;  Compute callee frame base (temp)
203 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
204 : LD 1, 2(4) ;  Load parameter 'xNum' via FP
205 : ST 1, 1(5) ;  Store argument 0 in callee frame
206 : LD 1, 3(4) ;  Load parameter 'xDen' via FP
207 : ST 1, 2(5) ;  Store argument 1 in callee frame
208 : LD 1, 7(4) ;  Load parameter 'c' via FP
209 : ADD 3, 1, 0 ;  Stash right in R3
210 : LD 1, 5(4) ;  Load parameter 'a' via FP
211 : ADD 2, 1, 0 ;  Move left to R2
212 : ADD 1, 3, 0 ;  Restore right to R1
213 : ADD 1, 2, 1 ;  R1 = left + right
214 : ST 1, 3(5) ;  Store argument 2 in callee frame
215 : LD 1, 8(4) ;  Load parameter 'd' via FP
216 : ADD 3, 1, 0 ;  Stash right in R3
217 : LD 1, 6(4) ;  Load parameter 'b' via FP
218 : ADD 2, 1, 0 ;  Move left to R2
219 : ADD 1, 3, 0 ;  Restore right to R1
220 : ADD 1, 2, 1 ;  R1 = left + right
221 : ST 1, 4(5) ;  Store argument 3 in callee frame
222 : LDA 6, 225(0) ;  Return address
223 : ST 6, 0(5) ;  Store RA in callee frame
224 : LDA 7, 111(0) ;  Call fractionEqual
225 : LD 1, 5(5) ;  Load callee result
226 : LDC 2, 6(0) ;  Caller frame size
227 : SUB 5, 5, 2 ;  Pop callee frame
228 : JEQ 1, 290(0) ;  If false, jump to ELSE
229 : LDC 1, 1(0) ;  Load integer literal into R1
230 : ADD 3, 1, 0 ;  Stash right in R3
231 : LD 1, 1(4) ;  Load parameter 'selector' via FP
232 : ADD 2, 1, 0 ;  Move left to R2
233 : ADD 1, 3, 0 ;  Restore right to R1
234 : SUB 1, 2, 1 ;  left - right
235 : JEQ 1, 2(7) ;  if 0 then true
236 : LDC 1, 0(0) ;  false
237 : LDA 7, 1(7) ;  skip setting true
238 : LDC 1, 1(0) ;  true
239 : JEQ 1, 247(0) ;  If false, jump to ELSE
240 : LD 1, 7(4) ;  Load parameter 'c' via FP
241 : ADD 3, 1, 0 ;  Stash right in R3
242 : LD 1, 5(4) ;  Load parameter 'a' via FP
243 : ADD 2, 1, 0 ;  Move left to R2
244 : ADD 1, 3, 0 ;  Restore right to R1
245 : ADD 1, 2, 1 ;  R1 = left + right
246 : LDA 7, 289(0) ;  Skip ELSE
247 : LDC 1, 2(0) ;  Load integer literal into R1
248 : ADD 3, 1, 0 ;  Stash right in R3
249 : LD 1, 1(4) ;  Load parameter 'selector' via FP
250 : ADD 2, 1, 0 ;  Move left to R2
251 : ADD 1, 3, 0 ;  Restore right to R1
252 : SUB 1, 2, 1 ;  left - right
253 : JEQ 1, 2(7) ;  if 0 then true
254 : LDC 1, 0(0) ;  false
255 : LDA 7, 1(7) ;  skip setting true
256 : LDC 1, 1(0) ;  true
257 : JEQ 1, 265(0) ;  If false, jump to ELSE
258 : LD 1, 8(4) ;  Load parameter 'd' via FP
259 : ADD 3, 1, 0 ;  Stash right in R3
260 : LD 1, 6(4) ;  Load parameter 'b' via FP
261 : ADD 2, 1, 0 ;  Move left to R2
262 : ADD 1, 3, 0 ;  Restore right to R1
263 : ADD 1, 2, 1 ;  R1 = left + right
264 : LDA 7, 289(0) ;  Skip ELSE
265 : LDC 1, 3(0) ;  Load integer literal into R1
266 : ADD 3, 1, 0 ;  Stash right in R3
267 : LD 1, 1(4) ;  Load parameter 'selector' via FP
268 : ADD 2, 1, 0 ;  Move left to R2
269 : ADD 1, 3, 0 ;  Restore right to R1
270 : SUB 1, 2, 1 ;  left - right
271 : JEQ 1, 2(7) ;  if 0 then true
272 : LDC 1, 0(0) ;  false
273 : LDA 7, 1(7) ;  skip setting true
274 : LDC 1, 1(0) ;  true
275 : JEQ 1, 283(0) ;  If false, jump to ELSE
276 : LD 1, 7(4) ;  Load parameter 'c' via FP
277 : ADD 3, 1, 0 ;  Stash right in R3
278 : LD 1, 5(4) ;  Load parameter 'a' via FP
279 : ADD 2, 1, 0 ;  Move left to R2
280 : ADD 1, 3, 0 ;  Restore right to R1
281 : ADD 1, 2, 1 ;  R1 = left + right
282 : LDA 7, 289(0) ;  Skip ELSE
283 : LD 1, 8(4) ;  Load parameter 'd' via FP
284 : ADD 3, 1, 0 ;  Stash right in R3
285 : LD 1, 6(4) ;  Load parameter 'b' via FP
286 : ADD 2, 1, 0 ;  Move left to R2
287 : ADD 1, 3, 0 ;  Restore right to R1
288 : ADD 1, 2, 1 ;  R1 = left + right
289 : LDA 7, 386(0) ;  Skip ELSE
290 : LDA 4, 6(5) ;  Compute callee frame base (temp)
291 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
292 : LD 1, 2(4) ;  Load parameter 'xNum' via FP
293 : ST 1, 1(5) ;  Store argument 0 in callee frame
294 : LD 1, 3(4) ;  Load parameter 'xDen' via FP
295 : ST 1, 2(5) ;  Store argument 1 in callee frame
296 : LD 1, 7(4) ;  Load parameter 'c' via FP
297 : ADD 3, 1, 0 ;  Stash right in R3
298 : LD 1, 5(4) ;  Load parameter 'a' via FP
299 : ADD 2, 1, 0 ;  Move left to R2
300 : ADD 1, 3, 0 ;  Restore right to R1
301 : ADD 1, 2, 1 ;  R1 = left + right
302 : ST 1, 3(5) ;  Store argument 2 in callee frame
303 : LD 1, 8(4) ;  Load parameter 'd' via FP
304 : ADD 3, 1, 0 ;  Stash right in R3
305 : LD 1, 6(4) ;  Load parameter 'b' via FP
306 : ADD 2, 1, 0 ;  Move left to R2
307 : ADD 1, 3, 0 ;  Restore right to R1
308 : ADD 1, 2, 1 ;  R1 = left + right
309 : ST 1, 4(5) ;  Store argument 3 in callee frame
310 : LDA 6, 313(0) ;  Return address
311 : ST 6, 0(5) ;  Store RA in callee frame
312 : LDA 7, 85(0) ;  Call fractionGreater
313 : LD 1, 5(5) ;  Load callee result
314 : LDC 2, 6(0) ;  Caller frame size
315 : SUB 5, 5, 2 ;  Pop callee frame
316 : JEQ 1, 352(0) ;  If false, jump to ELSE
317 : LDA 4, 10(5) ;  Compute callee frame base (temp)
318 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
319 : LD 1, 1(4) ;  Load parameter 'selector' via FP
320 : ST 1, 1(5) ;  Store argument 0 in callee frame
321 : LD 1, 2(4) ;  Load parameter 'xNum' via FP
322 : ST 1, 2(5) ;  Store argument 1 in callee frame
323 : LD 1, 3(4) ;  Load parameter 'xDen' via FP
324 : ST 1, 3(5) ;  Store argument 2 in callee frame
325 : LD 1, 4(4) ;  Load parameter 'N' via FP
326 : ST 1, 4(5) ;  Store argument 3 in callee frame
327 : LD 1, 7(4) ;  Load parameter 'c' via FP
328 : ADD 3, 1, 0 ;  Stash right in R3
329 : LD 1, 5(4) ;  Load parameter 'a' via FP
330 : ADD 2, 1, 0 ;  Move left to R2
331 : ADD 1, 3, 0 ;  Restore right to R1
332 : ADD 1, 2, 1 ;  R1 = left + right
333 : ST 1, 5(5) ;  Store argument 4 in callee frame
334 : LD 1, 8(4) ;  Load parameter 'd' via FP
335 : ADD 3, 1, 0 ;  Stash right in R3
336 : LD 1, 6(4) ;  Load parameter 'b' via FP
337 : ADD 2, 1, 0 ;  Move left to R2
338 : ADD 1, 3, 0 ;  Restore right to R1
339 : ADD 1, 2, 1 ;  R1 = left + right
340 : ST 1, 6(5) ;  Store argument 5 in callee frame
341 : LD 1, 7(4) ;  Load parameter 'c' via FP
342 : ST 1, 7(5) ;  Store argument 6 in callee frame
343 : LD 1, 8(4) ;  Load parameter 'd' via FP
344 : ST 1, 8(5) ;  Store argument 7 in callee frame
345 : LDA 6, 348(0) ;  Return address
346 : ST 6, 0(5) ;  Store RA in callee frame
347 : LDA 7, 133(0) ;  Call whileLoopFor
348 : LD 1, 9(5) ;  Load callee result
349 : LDC 2, 10(0) ;  Caller frame size
350 : SUB 5, 5, 2 ;  Pop callee frame
351 : LDA 7, 386(0) ;  Skip ELSE
352 : LDA 4, 10(5) ;  Compute callee frame base (temp)
353 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
354 : LD 1, 1(4) ;  Load parameter 'selector' via FP
355 : ST 1, 1(5) ;  Store argument 0 in callee frame
356 : LD 1, 2(4) ;  Load parameter 'xNum' via FP
357 : ST 1, 2(5) ;  Store argument 1 in callee frame
358 : LD 1, 3(4) ;  Load parameter 'xDen' via FP
359 : ST 1, 3(5) ;  Store argument 2 in callee frame
360 : LD 1, 4(4) ;  Load parameter 'N' via FP
361 : ST 1, 4(5) ;  Store argument 3 in callee frame
362 : LD 1, 5(4) ;  Load parameter 'a' via FP
363 : ST 1, 5(5) ;  Store argument 4 in callee frame
364 : LD 1, 6(4) ;  Load parameter 'b' via FP
365 : ST 1, 6(5) ;  Store argument 5 in callee frame
366 : LD 1, 7(4) ;  Load parameter 'c' via FP
367 : ADD 3, 1, 0 ;  Stash right in R3
368 : LD 1, 5(4) ;  Load parameter 'a' via FP
369 : ADD 2, 1, 0 ;  Move left to R2
370 : ADD 1, 3, 0 ;  Restore right to R1
371 : ADD 1, 2, 1 ;  R1 = left + right
372 : ST 1, 7(5) ;  Store argument 6 in callee frame
373 : LD 1, 8(4) ;  Load parameter 'd' via FP
374 : ADD 3, 1, 0 ;  Stash right in R3
375 : LD 1, 6(4) ;  Load parameter 'b' via FP
376 : ADD 2, 1, 0 ;  Move left to R2
377 : ADD 1, 3, 0 ;  Restore right to R1
378 : ADD 1, 2, 1 ;  R1 = left + right
379 : ST 1, 8(5) ;  Store argument 7 in callee frame
380 : LDA 6, 383(0) ;  Return address
381 : ST 6, 0(5) ;  Store RA in callee frame
382 : LDA 7, 133(0) ;  Call whileLoopFor
383 : LD 1, 9(5) ;  Load callee result
384 : LDC 2, 10(0) ;  Caller frame size
385 : SUB 5, 5, 2 ;  Pop callee frame
386 : ST 1, 9(4) ;  Store function result (via FP)
387 : LD 6, 0(4) ;  Load return address (via FP)
388 : LDA 7, 0(6) ;  Return to caller
389 : ADD 4, 5, 0 ;  Set FP at 389 entry
390 : LDA 4, 4(5) ;  Compute callee frame base (temp)
391 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
392 : LD 1, 3(4) ;  Load parameter 'b' via FP
393 : ST 1, 1(5) ;  Store argument 0 in callee frame
394 : LD 1, 1(4) ;  Load parameter 'N' via FP
395 : ST 1, 2(5) ;  Store argument 1 in callee frame
396 : LDA 6, 399(0) ;  Return address
397 : ST 6, 0(5) ;  Store RA in callee frame
398 : LDA 7, 57(0) ;  Call greater
399 : LD 1, 3(5) ;  Load callee result
400 : LDC 2, 4(0) ;  Caller frame size
401 : SUB 5, 5, 2 ;  Pop callee frame
402 : JEQ 1, 405(0) ;  If false, jump to ELSE
403 : LD 1, 5(4) ;  Load parameter 'd' via FP
404 : LDA 7, 406(0) ;  Skip ELSE
405 : LD 1, 3(4) ;  Load parameter 'b' via FP
406 : ST 1, 6(4) ;  Store function result (via FP)
407 : LD 6, 0(4) ;  Load return address (via FP)
408 : LDA 7, 0(6) ;  Return to caller
409 : ADD 4, 5, 0 ;  Set FP at 409 entry
410 : LDA 4, 4(5) ;  Compute callee frame base (temp)
411 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
412 : LD 1, 3(4) ;  Load parameter 'b' via FP
413 : ST 1, 1(5) ;  Store argument 0 in callee frame
414 : LD 1, 1(4) ;  Load parameter 'N' via FP
415 : ST 1, 2(5) ;  Store argument 1 in callee frame
416 : LDA 6, 419(0) ;  Return address
417 : ST 6, 0(5) ;  Store RA in callee frame
418 : LDA 7, 57(0) ;  Call greater
419 : LD 1, 3(5) ;  Load callee result
420 : LDC 2, 4(0) ;  Caller frame size
421 : SUB 5, 5, 2 ;  Pop callee frame
422 : JEQ 1, 425(0) ;  If false, jump to ELSE
423 : LD 1, 4(4) ;  Load parameter 'c' via FP
424 : LDA 7, 426(0) ;  Skip ELSE
425 : LD 1, 2(4) ;  Load parameter 'a' via FP
426 : ST 1, 6(4) ;  Store function result (via FP)
427 : LD 6, 0(4) ;  Load return address (via FP)
428 : LDA 7, 0(6) ;  Return to caller
429 : ADD 4, 5, 0 ;  Set FP at 429 entry
430 : LDA 4, 7(5) ;  Compute callee frame base (temp)
431 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
432 : LD 1, 3(4) ;  Load parameter 'N' via FP
433 : ST 1, 1(5) ;  Store argument 0 in callee frame
434 : LDA 4, 10(5) ;  Compute callee frame base (temp)
435 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
436 : LDC 1, 1(0) ;  Load integer literal into R1
437 : ST 1, 1(5) ;  Store argument 0 in callee frame
438 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
439 : ST 1, 2(5) ;  Store argument 1 in callee frame
440 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
441 : ST 1, 3(5) ;  Store argument 2 in callee frame
442 : LD 1, 3(4) ;  Load parameter 'N' via FP
443 : ST 1, 4(5) ;  Store argument 3 in callee frame
444 : LDC 1, 0(0) ;  Load integer literal into R1
445 : ST 1, 5(5) ;  Store argument 4 in callee frame
446 : LDC 1, 1(0) ;  Load integer literal into R1
447 : ST 1, 6(5) ;  Store argument 5 in callee frame
448 : LDC 1, 1(0) ;  Load integer literal into R1
449 : ST 1, 7(5) ;  Store argument 6 in callee frame
450 : LDC 1, 1(0) ;  Load integer literal into R1
451 : ST 1, 8(5) ;  Store argument 7 in callee frame
452 : LDA 6, 455(0) ;  Return address
453 : ST 6, 0(5) ;  Store RA in callee frame
454 : LDA 7, 133(0) ;  Call whileLoopFor
455 : LD 1, 9(5) ;  Load callee result
456 : LDC 2, 10(0) ;  Caller frame size
457 : SUB 5, 5, 2 ;  Pop callee frame
458 : ST 1, 2(5) ;  Store argument 1 in callee frame
459 : LDA 4, 10(5) ;  Compute callee frame base (temp)
460 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
461 : LDC 1, 2(0) ;  Load integer literal into R1
462 : ST 1, 1(5) ;  Store argument 0 in callee frame
463 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
464 : ST 1, 2(5) ;  Store argument 1 in callee frame
465 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
466 : ST 1, 3(5) ;  Store argument 2 in callee frame
467 : LD 1, 3(4) ;  Load parameter 'N' via FP
468 : ST 1, 4(5) ;  Store argument 3 in callee frame
469 : LDC 1, 0(0) ;  Load integer literal into R1
470 : ST 1, 5(5) ;  Store argument 4 in callee frame
471 : LDC 1, 1(0) ;  Load integer literal into R1
472 : ST 1, 6(5) ;  Store argument 5 in callee frame
473 : LDC 1, 1(0) ;  Load integer literal into R1
474 : ST 1, 7(5) ;  Store argument 6 in callee frame
475 : LDC 1, 1(0) ;  Load integer literal into R1
476 : ST 1, 8(5) ;  Store argument 7 in callee frame
477 : LDA 6, 480(0) ;  Return address
478 : ST 6, 0(5) ;  Store RA in callee frame
479 : LDA 7, 133(0) ;  Call whileLoopFor
480 : LD 1, 9(5) ;  Load callee result
481 : LDC 2, 10(0) ;  Caller frame size
482 : SUB 5, 5, 2 ;  Pop callee frame
483 : ST 1, 3(5) ;  Store argument 2 in callee frame
484 : LDA 4, 10(5) ;  Compute callee frame base (temp)
485 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
486 : LDC 1, 3(0) ;  Load integer literal into R1
487 : ST 1, 1(5) ;  Store argument 0 in callee frame
488 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
489 : ST 1, 2(5) ;  Store argument 1 in callee frame
490 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
491 : ST 1, 3(5) ;  Store argument 2 in callee frame
492 : LD 1, 3(4) ;  Load parameter 'N' via FP
493 : ST 1, 4(5) ;  Store argument 3 in callee frame
494 : LDC 1, 0(0) ;  Load integer literal into R1
495 : ST 1, 5(5) ;  Store argument 4 in callee frame
496 : LDC 1, 1(0) ;  Load integer literal into R1
497 : ST 1, 6(5) ;  Store argument 5 in callee frame
498 : LDC 1, 1(0) ;  Load integer literal into R1
499 : ST 1, 7(5) ;  Store argument 6 in callee frame
500 : LDC 1, 1(0) ;  Load integer literal into R1
501 : ST 1, 8(5) ;  Store argument 7 in callee frame
502 : LDA 6, 505(0) ;  Return address
503 : ST 6, 0(5) ;  Store RA in callee frame
504 : LDA 7, 133(0) ;  Call whileLoopFor
505 : LD 1, 9(5) ;  Load callee result
506 : LDC 2, 10(0) ;  Caller frame size
507 : SUB 5, 5, 2 ;  Pop callee frame
508 : ST 1, 4(5) ;  Store argument 3 in callee frame
509 : LDA 4, 10(5) ;  Compute callee frame base (temp)
510 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
511 : LDC 1, 4(0) ;  Load integer literal into R1
512 : ST 1, 1(5) ;  Store argument 0 in callee frame
513 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
514 : ST 1, 2(5) ;  Store argument 1 in callee frame
515 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
516 : ST 1, 3(5) ;  Store argument 2 in callee frame
517 : LD 1, 3(4) ;  Load parameter 'N' via FP
518 : ST 1, 4(5) ;  Store argument 3 in callee frame
519 : LDC 1, 0(0) ;  Load integer literal into R1
520 : ST 1, 5(5) ;  Store argument 4 in callee frame
521 : LDC 1, 1(0) ;  Load integer literal into R1
522 : ST 1, 6(5) ;  Store argument 5 in callee frame
523 : LDC 1, 1(0) ;  Load integer literal into R1
524 : ST 1, 7(5) ;  Store argument 6 in callee frame
525 : LDC 1, 1(0) ;  Load integer literal into R1
526 : ST 1, 8(5) ;  Store argument 7 in callee frame
527 : LDA 6, 530(0) ;  Return address
528 : ST 6, 0(5) ;  Store RA in callee frame
529 : LDA 7, 133(0) ;  Call whileLoopFor
530 : LD 1, 9(5) ;  Load callee result
531 : LDC 2, 10(0) ;  Caller frame size
532 : SUB 5, 5, 2 ;  Pop callee frame
533 : ST 1, 5(5) ;  Store argument 4 in callee frame
534 : LDA 6, 537(0) ;  Return address
535 : ST 6, 0(5) ;  Store RA in callee frame
536 : LDA 7, 389(0) ;  Call fareySelectDen
537 : LD 1, 6(5) ;  Load callee result
538 : LDC 2, 7(0) ;  Caller frame size
539 : SUB 5, 5, 2 ;  Pop callee frame
540 : ST 1, 4(4) ;  Store function result (via FP)
541 : LD 6, 0(4) ;  Load return address (via FP)
542 : LDA 7, 0(6) ;  Return to caller
543 : ADD 4, 5, 0 ;  Set FP at 543 entry
544 : LDA 4, 7(5) ;  Compute callee frame base (temp)
545 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
546 : LD 1, 3(4) ;  Load parameter 'N' via FP
547 : ST 1, 1(5) ;  Store argument 0 in callee frame
548 : LDA 4, 10(5) ;  Compute callee frame base (temp)
549 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
550 : LDC 1, 1(0) ;  Load integer literal into R1
551 : ST 1, 1(5) ;  Store argument 0 in callee frame
552 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
553 : ST 1, 2(5) ;  Store argument 1 in callee frame
554 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
555 : ST 1, 3(5) ;  Store argument 2 in callee frame
556 : LD 1, 3(4) ;  Load parameter 'N' via FP
557 : ST 1, 4(5) ;  Store argument 3 in callee frame
558 : LDC 1, 0(0) ;  Load integer literal into R1
559 : ST 1, 5(5) ;  Store argument 4 in callee frame
560 : LDC 1, 1(0) ;  Load integer literal into R1
561 : ST 1, 6(5) ;  Store argument 5 in callee frame
562 : LDC 1, 1(0) ;  Load integer literal into R1
563 : ST 1, 7(5) ;  Store argument 6 in callee frame
564 : LDC 1, 1(0) ;  Load integer literal into R1
565 : ST 1, 8(5) ;  Store argument 7 in callee frame
566 : LDA 6, 569(0) ;  Return address
567 : ST 6, 0(5) ;  Store RA in callee frame
568 : LDA 7, 133(0) ;  Call whileLoopFor
569 : LD 1, 9(5) ;  Load callee result
570 : LDC 2, 10(0) ;  Caller frame size
571 : SUB 5, 5, 2 ;  Pop callee frame
572 : ST 1, 2(5) ;  Store argument 1 in callee frame
573 : LDA 4, 10(5) ;  Compute callee frame base (temp)
574 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
575 : LDC 1, 2(0) ;  Load integer literal into R1
576 : ST 1, 1(5) ;  Store argument 0 in callee frame
577 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
578 : ST 1, 2(5) ;  Store argument 1 in callee frame
579 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
580 : ST 1, 3(5) ;  Store argument 2 in callee frame
581 : LD 1, 3(4) ;  Load parameter 'N' via FP
582 : ST 1, 4(5) ;  Store argument 3 in callee frame
583 : LDC 1, 0(0) ;  Load integer literal into R1
584 : ST 1, 5(5) ;  Store argument 4 in callee frame
585 : LDC 1, 1(0) ;  Load integer literal into R1
586 : ST 1, 6(5) ;  Store argument 5 in callee frame
587 : LDC 1, 1(0) ;  Load integer literal into R1
588 : ST 1, 7(5) ;  Store argument 6 in callee frame
589 : LDC 1, 1(0) ;  Load integer literal into R1
590 : ST 1, 8(5) ;  Store argument 7 in callee frame
591 : LDA 6, 594(0) ;  Return address
592 : ST 6, 0(5) ;  Store RA in callee frame
593 : LDA 7, 133(0) ;  Call whileLoopFor
594 : LD 1, 9(5) ;  Load callee result
595 : LDC 2, 10(0) ;  Caller frame size
596 : SUB 5, 5, 2 ;  Pop callee frame
597 : ST 1, 3(5) ;  Store argument 2 in callee frame
598 : LDA 4, 10(5) ;  Compute callee frame base (temp)
599 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
600 : LDC 1, 3(0) ;  Load integer literal into R1
601 : ST 1, 1(5) ;  Store argument 0 in callee frame
602 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
603 : ST 1, 2(5) ;  Store argument 1 in callee frame
604 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
605 : ST 1, 3(5) ;  Store argument 2 in callee frame
606 : LD 1, 3(4) ;  Load parameter 'N' via FP
607 : ST 1, 4(5) ;  Store argument 3 in callee frame
608 : LDC 1, 0(0) ;  Load integer literal into R1
609 : ST 1, 5(5) ;  Store argument 4 in callee frame
610 : LDC 1, 1(0) ;  Load integer literal into R1
611 : ST 1, 6(5) ;  Store argument 5 in callee frame
612 : LDC 1, 1(0) ;  Load integer literal into R1
613 : ST 1, 7(5) ;  Store argument 6 in callee frame
614 : LDC 1, 1(0) ;  Load integer literal into R1
615 : ST 1, 8(5) ;  Store argument 7 in callee frame
616 : LDA 6, 619(0) ;  Return address
617 : ST 6, 0(5) ;  Store RA in callee frame
618 : LDA 7, 133(0) ;  Call whileLoopFor
619 : LD 1, 9(5) ;  Load callee result
620 : LDC 2, 10(0) ;  Caller frame size
621 : SUB 5, 5, 2 ;  Pop callee frame
622 : ST 1, 4(5) ;  Store argument 3 in callee frame
623 : LDA 4, 10(5) ;  Compute callee frame base (temp)
624 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
625 : LDC 1, 4(0) ;  Load integer literal into R1
626 : ST 1, 1(5) ;  Store argument 0 in callee frame
627 : LD 1, 1(4) ;  Load parameter 'xNum' via FP
628 : ST 1, 2(5) ;  Store argument 1 in callee frame
629 : LD 1, 2(4) ;  Load parameter 'xDen' via FP
630 : ST 1, 3(5) ;  Store argument 2 in callee frame
631 : LD 1, 3(4) ;  Load parameter 'N' via FP
632 : ST 1, 4(5) ;  Store argument 3 in callee frame
633 : LDC 1, 0(0) ;  Load integer literal into R1
634 : ST 1, 5(5) ;  Store argument 4 in callee frame
635 : LDC 1, 1(0) ;  Load integer literal into R1
636 : ST 1, 6(5) ;  Store argument 5 in callee frame
637 : LDC 1, 1(0) ;  Load integer literal into R1
638 : ST 1, 7(5) ;  Store argument 6 in callee frame
639 : LDC 1, 1(0) ;  Load integer literal into R1
640 : ST 1, 8(5) ;  Store argument 7 in callee frame
641 : LDA 6, 644(0) ;  Return address
642 : ST 6, 0(5) ;  Store RA in callee frame
643 : LDA 7, 133(0) ;  Call whileLoopFor
644 : LD 1, 9(5) ;  Load callee result
645 : LDC 2, 10(0) ;  Caller frame size
646 : SUB 5, 5, 2 ;  Pop callee frame
647 : ST 1, 5(5) ;  Store argument 4 in callee frame
648 : LDA 6, 651(0) ;  Return address
649 : ST 6, 0(5) ;  Store RA in callee frame
650 : LDA 7, 409(0) ;  Call fareySelectNum
651 : LD 1, 6(5) ;  Load callee result
652 : LDC 2, 7(0) ;  Caller frame size
653 : SUB 5, 5, 2 ;  Pop callee frame
654 : ST 1, 4(4) ;  Store function result (via FP)
655 : LD 6, 0(4) ;  Load return address (via FP)
656 : LDA 7, 0(6) ;  Return to caller
