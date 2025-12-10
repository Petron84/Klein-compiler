0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
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
14 : LDC 1, 3(0) ;  Load integer literal into R1
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 2(5) ;  Load parameter 'selector'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : SUB 1, 2, 1 ;  left - right
20 : JEQ 1, 2(7) ;  if 0 then true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 37(0) ;  If false, jump to ELSE
25 : LDA 4, 3(5) ;  Compute callee frame base
26 : ADD 5, 4, 0 ;  Push callee frame
27 : LD 1, 1(5) ;  Load parameter 'n'
28 : ST 1, 1(5) ;  Store argument 0 in callee frame
29 : LDA 6, 32(0) ;  Return address
30 : ST 6, 0(5) ;  Store RA in callee frame
31 : LDA 7, 332(0) ;  Call emirp
32 : LD 1, 2(5) ;  Load callee result
33 : LDC 2, 3(0) ;  Caller frame size
34 : SUB 5, 5, 2 ;  Pop callee frame
35 : ST 1, 3(5) ;  Store result into caller frame
36 : LDA 7, 85(0) ;  Skip ELSE
37 : LDC 1, 5(0) ;  Load integer literal into R1
38 : ADD 3, 1, 0 ;  Stash right in R3
39 : LD 1, 2(5) ;  Load parameter 'selector'
40 : ADD 2, 1, 0 ;  Move left to R2
41 : ADD 1, 3, 0 ;  Restore right to R1
42 : SUB 1, 2, 1 ;  left - right
43 : JEQ 1, 2(7) ;  if 0 then true
44 : LDC 1, 0(0) ;  false
45 : LDA 7, 1(7) ;  skip setting true
46 : LDC 1, 1(0) ;  true
47 : JEQ 1, 60(0) ;  If false, jump to ELSE
48 : LDA 4, 3(5) ;  Compute callee frame base
49 : ADD 5, 4, 0 ;  Push callee frame
50 : LD 1, 1(5) ;  Load parameter 'n'
51 : ST 1, 1(5) ;  Store argument 0 in callee frame
52 : LDA 6, 55(0) ;  Return address
53 : ST 6, 0(5) ;  Store RA in callee frame
54 : LDA 7, 289(0) ;  Call snowball
55 : LD 1, 2(5) ;  Load callee result
56 : LDC 2, 3(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop callee frame
58 : ST 1, 3(5) ;  Store result into caller frame
59 : LDA 7, 85(0) ;  Skip ELSE
60 : LDC 1, 8(0) ;  Load integer literal into R1
61 : ADD 3, 1, 0 ;  Stash right in R3
62 : LD 1, 2(5) ;  Load parameter 'selector'
63 : ADD 2, 1, 0 ;  Move left to R2
64 : ADD 1, 3, 0 ;  Restore right to R1
65 : SUB 1, 2, 1 ;  left - right
66 : JEQ 1, 2(7) ;  if 0 then true
67 : LDC 1, 0(0) ;  false
68 : LDA 7, 1(7) ;  skip setting true
69 : LDC 1, 1(0) ;  true
70 : JEQ 1, 83(0) ;  If false, jump to ELSE
71 : LDA 4, 3(5) ;  Compute callee frame base
72 : ADD 5, 4, 0 ;  Push callee frame
73 : LD 1, 1(5) ;  Load parameter 'n'
74 : ST 1, 1(5) ;  Store argument 0 in callee frame
75 : LDA 6, 78(0) ;  Return address
76 : ST 6, 0(5) ;  Store RA in callee frame
77 : LDA 7, 258(0) ;  Call doBoth
78 : LD 1, 2(5) ;  Load callee result
79 : LDC 2, 3(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop callee frame
81 : ST 1, 3(5) ;  Store result into caller frame
82 : LDA 7, 85(0) ;  Skip ELSE
83 : LDC 1, 0(0) ;  Load boolean literal into R1
84 : ST 1, 3(5) ;  Store into current frame's return slot
85 : LD 1, 3(5) ;  Load main return value
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return from main
88 : LD 1, 2(5) ;  Load parameter 'n'
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(5) ;  Load parameter 'm'
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : DIV 1, 2, 1 ;  R1 = left / right
94 : ADD 2, 1, 0 ;  Move left to R2
95 : LD 1, 2(5) ;  Load parameter 'n'
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ADD 3, 1, 0 ;  Stash right in R3
98 : LD 1, 1(5) ;  Load parameter 'm'
99 : ADD 2, 1, 0 ;  Move left to R2
100 : ADD 1, 3, 0 ;  Restore right to R1
101 : SUB 1, 2, 1 ;  R1 = left - right
102 : ST 1, 3(5) ;  Store function result
103 : LD 6, 0(5) ;  Load return address
104 : LDA 7, 0(6) ;  Return to caller
105 : LDC 1, 0(0) ;  Load integer literal into R1
106 : ADD 3, 1, 0 ;  Stash right in R3
107 : LD 1, 1(5) ;  Load parameter 'n'
108 : ADD 2, 1, 0 ;  Move left to R2
109 : ADD 1, 3, 0 ;  Restore right to R1
110 : SUB 1, 2, 1 ;  left - right
111 : JEQ 1, 2(7) ;  if 0 then true
112 : LDC 1, 0(0) ;  false
113 : LDA 7, 1(7) ;  skip setting true
114 : LDC 1, 1(0) ;  true
115 : JEQ 1, 118(0) ;  If false, jump to ELSE
116 : LD 1, 2(5) ;  Load parameter 'nR'
117 : LDA 7, 154(0) ;  Skip ELSE
118 : LDA 4, 4(5) ;  Compute callee frame base
119 : ADD 5, 4, 0 ;  Push callee frame
120 : LDC 1, 10(0) ;  Load integer literal into R1
121 : ADD 3, 1, 0 ;  Stash right in R3
122 : LD 1, 1(5) ;  Load parameter 'n'
123 : ADD 2, 1, 0 ;  Move left to R2
124 : ADD 1, 3, 0 ;  Restore right to R1
125 : DIV 1, 2, 1 ;  R1 = left / right
126 : ST 1, 1(5) ;  Store argument 0 in callee frame
127 : LD 1, 2(5) ;  Load parameter 'nR'
128 : ADD 3, 1, 0 ;  Stash right in R3
129 : LDC 1, 10(0) ;  Load integer literal into R1
130 : ADD 2, 1, 0 ;  Move left to R2
131 : ADD 1, 3, 0 ;  Restore right to R1
132 : MUL 1, 2, 1 ;  R1 = left * right
133 : ADD 2, 1, 0 ;  Move left to R2
134 : LDA 4, 4(5) ;  Compute callee frame base
135 : ADD 5, 4, 0 ;  Push callee frame
136 : LD 1, 1(5) ;  Load parameter 'n'
137 : ST 1, 1(5) ;  Store argument 0 in callee frame
138 : LDC 1, 10(0) ;  Load integer literal into R1
139 : ST 1, 2(5) ;  Store argument 1 in callee frame
140 : LDA 6, 143(0) ;  Return address
141 : ST 6, 0(5) ;  Store RA in callee frame
142 : LDA 7, 88(0) ;  Call MOD
143 : LD 1, 3(5) ;  Load callee result
144 : LDC 2, 4(0) ;  Caller frame size
145 : SUB 5, 5, 2 ;  Pop callee frame
146 : ADD 1, 2, 1 ;  R1 = left + right
147 : ST 1, 2(5) ;  Store argument 1 in callee frame
148 : LDA 6, 151(0) ;  Return address
149 : ST 6, 0(5) ;  Store RA in callee frame
150 : LDA 7, 105(0) ;  Call reverseL
151 : LD 1, 3(5) ;  Load callee result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop callee frame
154 : ST 1, 3(5) ;  Store function result
155 : LD 6, 0(5) ;  Load return address
156 : LDA 7, 0(6) ;  Return to caller
157 : LDA 4, 4(5) ;  Compute callee frame base
158 : ADD 5, 4, 0 ;  Push callee frame
159 : LD 1, 1(5) ;  Load parameter 'n'
160 : ST 1, 1(5) ;  Store argument 0 in callee frame
161 : LDC 1, 0(0) ;  Load integer literal into R1
162 : ST 1, 2(5) ;  Store argument 1 in callee frame
163 : LDA 6, 166(0) ;  Return address
164 : ST 6, 0(5) ;  Store RA in callee frame
165 : LDA 7, 105(0) ;  Call reverseL
166 : LD 1, 3(5) ;  Load callee result
167 : LDC 2, 4(0) ;  Caller frame size
168 : SUB 5, 5, 2 ;  Pop callee frame
169 : ST 1, 2(5) ;  Store function result
170 : LD 6, 0(5) ;  Load return address
171 : LDA 7, 0(6) ;  Return to caller
172 : LDA 4, 4(5) ;  Compute callee frame base
173 : ADD 5, 4, 0 ;  Push callee frame
174 : LD 1, 2(5) ;  Load parameter 'b'
175 : ST 1, 1(5) ;  Store argument 0 in callee frame
176 : LD 1, 1(5) ;  Load parameter 'a'
177 : ST 1, 2(5) ;  Store argument 1 in callee frame
178 : LDA 6, 181(0) ;  Return address
179 : ST 6, 0(5) ;  Store RA in callee frame
180 : LDA 7, 88(0) ;  Call MOD
181 : LD 1, 3(5) ;  Load callee result
182 : LDC 2, 4(0) ;  Caller frame size
183 : SUB 5, 5, 2 ;  Pop callee frame
184 : ADD 2, 1, 0 ;  Move left to R2
185 : LDC 1, 0(0) ;  Load integer literal into R1
186 : SUB 1, 2, 1 ;  left - right
187 : JEQ 1, 2(7) ;  if 0 then true
188 : LDC 1, 0(0) ;  false
189 : LDA 7, 1(7) ;  skip setting true
190 : LDC 1, 1(0) ;  true
191 : ST 1, 3(5) ;  Store function result
192 : LD 6, 0(5) ;  Load return address
193 : LDA 7, 0(6) ;  Return to caller
194 : LD 1, 2(5) ;  Load parameter 'n'
195 : ADD 3, 1, 0 ;  Stash right in R3
196 : LD 1, 1(5) ;  Load parameter 'i'
197 : ADD 2, 1, 0 ;  Move left to R2
198 : ADD 1, 3, 0 ;  Restore right to R1
199 : SUB 1, 2, 1 ;  left - right
200 : JLT 1, 2(7) ;  if < 0 then true
201 : LDC 1, 0(0) ;  false
202 : LDA 7, 1(7) ;  skip setting true
203 : LDC 1, 1(0) ;  true
204 : JEQ 1, 237(0) ;  If false, jump to ELSE
205 : LDA 4, 4(5) ;  Compute callee frame base
206 : ADD 5, 4, 0 ;  Push callee frame
207 : LD 1, 1(5) ;  Load parameter 'i'
208 : ST 1, 1(5) ;  Store argument 0 in callee frame
209 : LD 1, 2(5) ;  Load parameter 'n'
210 : ST 1, 2(5) ;  Store argument 1 in callee frame
211 : LDA 6, 214(0) ;  Return address
212 : ST 6, 0(5) ;  Store RA in callee frame
213 : LDA 7, 172(0) ;  Call divides
214 : LD 1, 3(5) ;  Load callee result
215 : LDC 2, 4(0) ;  Caller frame size
216 : SUB 5, 5, 2 ;  Pop callee frame
217 : ADD 2, 1, 0 ;  Move left to R2
218 : LDA 4, 4(5) ;  Compute callee frame base
219 : ADD 5, 4, 0 ;  Push callee frame
220 : LDC 1, 1(0) ;  Load integer literal into R1
221 : ADD 3, 1, 0 ;  Stash right in R3
222 : LD 1, 1(5) ;  Load parameter 'i'
223 : ADD 2, 1, 0 ;  Move left to R2
224 : ADD 1, 3, 0 ;  Restore right to R1
225 : ADD 1, 2, 1 ;  R1 = left + right
226 : ST 1, 1(5) ;  Store argument 0 in callee frame
227 : LD 1, 2(5) ;  Load parameter 'n'
228 : ST 1, 2(5) ;  Store argument 1 in callee frame
229 : LDA 6, 232(0) ;  Return address
230 : ST 6, 0(5) ;  Store RA in callee frame
231 : LDA 7, 194(0) ;  Call hasDivisorFrom
232 : LD 1, 3(5) ;  Load callee result
233 : LDC 2, 4(0) ;  Caller frame size
234 : SUB 5, 5, 2 ;  Pop callee frame
235 : ADD 1, 2, 1 ;  R1 = left OR right
236 : LDA 7, 238(0) ;  Skip ELSE
237 : LDC 1, 0(0) ;  Load boolean literal into R1
238 : ST 1, 3(5) ;  Store function result
239 : LD 6, 0(5) ;  Load return address
240 : LDA 7, 0(6) ;  Return to caller
241 : LDA 4, 4(5) ;  Compute callee frame base
242 : ADD 5, 4, 0 ;  Push callee frame
243 : LDC 1, 2(0) ;  Load integer literal into R1
244 : ST 1, 1(5) ;  Store argument 0 in callee frame
245 : LD 1, 1(5) ;  Load parameter 'n'
246 : ST 1, 2(5) ;  Store argument 1 in callee frame
247 : LDA 6, 250(0) ;  Return address
248 : ST 6, 0(5) ;  Store RA in callee frame
249 : LDA 7, 194(0) ;  Call hasDivisorFrom
250 : LD 1, 3(5) ;  Load callee result
251 : LDC 2, 4(0) ;  Caller frame size
252 : SUB 5, 5, 2 ;  Pop callee frame
253 : LDC 2, 1(0) ;  Load 1 into R2
254 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
255 : ST 1, 2(5) ;  Store function result
256 : LD 6, 0(5) ;  Load return address
257 : LDA 7, 0(6) ;  Return to caller
258 : LDA 4, 3(5) ;  Compute callee frame base
259 : ADD 5, 4, 0 ;  Push callee frame
260 : LDA 4, 3(5) ;  Compute callee frame base
261 : ADD 5, 4, 0 ;  Push callee frame
262 : LD 1, 1(5) ;  Load parameter 'n'
263 : ST 1, 1(5) ;  Store argument 0 in callee frame
264 : LDA 6, 267(0) ;  Return address
265 : ST 6, 0(5) ;  Store RA in callee frame
266 : LDA 7, 332(0) ;  Call emirp
267 : LD 1, 2(5) ;  Load callee result
268 : LDC 2, 3(0) ;  Caller frame size
269 : SUB 5, 5, 2 ;  Pop callee frame
270 : ST 1, 1(5) ;  Store print arg in callee frame
271 : LDA 6, 274(0) ;  Return address
272 : ST 6, 0(5) ;  Store RA in callee frame
273 : LDA 7, 11(0) ;  Call print
274 : LDC 2, 3(0) ;  Caller frame size
275 : SUB 5, 5, 2 ;  Pop callee frame
276 : LDA 4, 3(5) ;  Compute callee frame base
277 : ADD 5, 4, 0 ;  Push callee frame
278 : LD 1, 1(5) ;  Load parameter 'n'
279 : ST 1, 1(5) ;  Store argument 0 in callee frame
280 : LDA 6, 283(0) ;  Return address
281 : ST 6, 0(5) ;  Store RA in callee frame
282 : LDA 7, 289(0) ;  Call snowball
283 : LD 1, 2(5) ;  Load callee result
284 : LDC 2, 3(0) ;  Caller frame size
285 : SUB 5, 5, 2 ;  Pop callee frame
286 : ST 1, 2(5) ;  Store function result
287 : LD 6, 0(5) ;  Load return address
288 : LDA 7, 0(6) ;  Return to caller
289 : LDA 4, 3(5) ;  Compute callee frame base
290 : ADD 5, 4, 0 ;  Push callee frame
291 : LD 1, 1(5) ;  Load parameter 'n'
292 : ST 1, 1(5) ;  Store argument 0 in callee frame
293 : LDA 6, 296(0) ;  Return address
294 : ST 6, 0(5) ;  Store RA in callee frame
295 : LDA 7, 241(0) ;  Call isPrime
296 : LD 1, 2(5) ;  Load callee result
297 : LDC 2, 3(0) ;  Caller frame size
298 : SUB 5, 5, 2 ;  Pop callee frame
299 : ADD 2, 1, 0 ;  Move left to R2
300 : LDC 1, 10(0) ;  Load integer literal into R1
301 : ADD 3, 1, 0 ;  Stash right in R3
302 : LD 1, 1(5) ;  Load parameter 'n'
303 : ADD 2, 1, 0 ;  Move left to R2
304 : ADD 1, 3, 0 ;  Restore right to R1
305 : SUB 1, 2, 1 ;  left - right
306 : JLT 1, 2(7) ;  if < 0 then true
307 : LDC 1, 0(0) ;  false
308 : LDA 7, 1(7) ;  skip setting true
309 : LDC 1, 1(0) ;  true
310 : JEQ 1, 313(0) ;  If false, jump to ELSE
311 : LDC 1, 1(0) ;  Load boolean literal into R1
312 : LDA 7, 328(0) ;  Skip ELSE
313 : LDA 4, 3(5) ;  Compute callee frame base
314 : ADD 5, 4, 0 ;  Push callee frame
315 : LDC 1, 10(0) ;  Load integer literal into R1
316 : ADD 3, 1, 0 ;  Stash right in R3
317 : LD 1, 1(5) ;  Load parameter 'n'
318 : ADD 2, 1, 0 ;  Move left to R2
319 : ADD 1, 3, 0 ;  Restore right to R1
320 : DIV 1, 2, 1 ;  R1 = left / right
321 : ST 1, 1(5) ;  Store argument 0 in callee frame
322 : LDA 6, 325(0) ;  Return address
323 : ST 6, 0(5) ;  Store RA in callee frame
324 : LDA 7, 241(0) ;  Call isPrime
325 : LD 1, 2(5) ;  Load callee result
326 : LDC 2, 3(0) ;  Caller frame size
327 : SUB 5, 5, 2 ;  Pop callee frame
328 : MUL 1, 2, 1 ;  R1 = left AND right
329 : ST 1, 2(5) ;  Store function result
330 : LD 6, 0(5) ;  Load return address
331 : LDA 7, 0(6) ;  Return to caller
332 : LDA 4, 3(5) ;  Compute callee frame base
333 : ADD 5, 4, 0 ;  Push callee frame
334 : LD 1, 1(5) ;  Load parameter 'n'
335 : ST 1, 1(5) ;  Store argument 0 in callee frame
336 : LDA 6, 339(0) ;  Return address
337 : ST 6, 0(5) ;  Store RA in callee frame
338 : LDA 7, 241(0) ;  Call isPrime
339 : LD 1, 2(5) ;  Load callee result
340 : LDC 2, 3(0) ;  Caller frame size
341 : SUB 5, 5, 2 ;  Pop callee frame
342 : ADD 2, 1, 0 ;  Move left to R2
343 : LDA 4, 3(5) ;  Compute callee frame base
344 : ADD 5, 4, 0 ;  Push callee frame
345 : LDA 4, 3(5) ;  Compute callee frame base
346 : ADD 5, 4, 0 ;  Push callee frame
347 : LD 1, 1(5) ;  Load parameter 'n'
348 : ST 1, 1(5) ;  Store argument 0 in callee frame
349 : LDA 6, 352(0) ;  Return address
350 : ST 6, 0(5) ;  Store RA in callee frame
351 : LDA 7, 157(0) ;  Call reverse
352 : LD 1, 2(5) ;  Load callee result
353 : LDC 2, 3(0) ;  Caller frame size
354 : SUB 5, 5, 2 ;  Pop callee frame
355 : ST 1, 1(5) ;  Store argument 0 in callee frame
356 : LDA 6, 359(0) ;  Return address
357 : ST 6, 0(5) ;  Store RA in callee frame
358 : LDA 7, 241(0) ;  Call isPrime
359 : LD 1, 2(5) ;  Load callee result
360 : LDC 2, 3(0) ;  Caller frame size
361 : SUB 5, 5, 2 ;  Pop callee frame
362 : MUL 1, 2, 1 ;  R1 = left AND right
363 : ST 1, 2(5) ;  Store function result
364 : LD 6, 0(5) ;  Load return address
365 : LDA 7, 0(6) ;  Return to caller
