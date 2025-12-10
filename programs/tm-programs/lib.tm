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
15 : LDA 4, 3(5) ;  Compute callee frame base (temp)
16 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
17 : LD 1, 1(4) ;  Load parameter 'testArgument' via FP
18 : ST 1, 1(5) ;  Store argument 0 in callee frame
19 : LDA 6, 22(0) ;  Return address
20 : ST 6, 0(5) ;  Store RA in callee frame
21 : LDA 7, 195(0) ;  Call SQRT
22 : LD 1, 2(5) ;  Load callee result
23 : LDC 2, 3(0) ;  Caller frame size
24 : SUB 5, 5, 2 ;  Pop callee frame
25 : ST 1, 1(5) ;  Store print arg in callee frame
26 : LDA 6, 29(0) ;  Return address
27 : ST 6, 0(5) ;  Store RA in callee frame
28 : LDA 7, 9(0) ;  Call print
29 : LDC 2, 3(0) ;  Caller frame size
30 : SUB 5, 5, 2 ;  Pop callee frame
31 : LDA 4, 3(5) ;  Compute callee frame base (temp)
32 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
33 : LD 1, 1(4) ;  Load parameter 'testArgument' via FP
34 : ST 1, 1(5) ;  Store argument 0 in callee frame
35 : LDA 6, 38(0) ;  Return address
36 : ST 6, 0(5) ;  Store RA in callee frame
37 : LDA 7, 213(0) ;  Call ODD
38 : LD 1, 2(5) ;  Load callee result
39 : LDC 2, 3(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ST 1, 2(4) ;  Store result into caller frame (via FP)
42 : LD 1, 2(4) ;  Load main return value (via FP)
43 : LD 6, 0(4) ;  Load return address (via FP)
44 : LDA 7, 0(6) ;  Return from main
45 : ADD 4, 5, 0 ;  Set FP at 45 entry
46 : LDA 4, 4(5) ;  Compute callee frame base (temp)
47 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
48 : LD 1, 4(4) ;  Load parameter 'mid' via FP
49 : ADD 3, 1, 0 ;  Stash right in R3
50 : LD 1, 4(4) ;  Load parameter 'mid' via FP
51 : ADD 2, 1, 0 ;  Move left to R2
52 : ADD 1, 3, 0 ;  Restore right to R1
53 : MUL 1, 2, 1 ;  R1 = left * right
54 : ST 1, 1(5) ;  Store argument 0 in callee frame
55 : LD 1, 1(4) ;  Load parameter 'n' via FP
56 : ST 1, 2(5) ;  Store argument 1 in callee frame
57 : LDA 6, 60(0) ;  Return address
58 : ST 6, 0(5) ;  Store RA in callee frame
59 : LDA 7, 517(0) ;  Call LE
60 : LD 1, 3(5) ;  Load callee result
61 : LDC 2, 4(0) ;  Caller frame size
62 : SUB 5, 5, 2 ;  Pop callee frame
63 : JEQ 1, 79(0) ;  If false, jump to ELSE
64 : LDA 4, 5(5) ;  Compute callee frame base (temp)
65 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
66 : LD 1, 1(4) ;  Load parameter 'n' via FP
67 : ST 1, 1(5) ;  Store argument 0 in callee frame
68 : LD 1, 4(4) ;  Load parameter 'mid' via FP
69 : ST 1, 2(5) ;  Store argument 1 in callee frame
70 : LD 1, 3(4) ;  Load parameter 'high' via FP
71 : ST 1, 3(5) ;  Store argument 2 in callee frame
72 : LDA 6, 75(0) ;  Return address
73 : ST 6, 0(5) ;  Store RA in callee frame
74 : LDA 7, 96(0) ;  Call SQRTSEARCH
75 : LD 1, 4(5) ;  Load callee result
76 : LDC 2, 5(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : LDA 7, 93(0) ;  Skip ELSE
79 : LDA 4, 5(5) ;  Compute callee frame base (temp)
80 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
81 : LD 1, 1(4) ;  Load parameter 'n' via FP
82 : ST 1, 1(5) ;  Store argument 0 in callee frame
83 : LD 1, 2(4) ;  Load parameter 'low' via FP
84 : ST 1, 2(5) ;  Store argument 1 in callee frame
85 : LD 1, 4(4) ;  Load parameter 'mid' via FP
86 : ST 1, 3(5) ;  Store argument 2 in callee frame
87 : LDA 6, 90(0) ;  Return address
88 : ST 6, 0(5) ;  Store RA in callee frame
89 : LDA 7, 96(0) ;  Call SQRTSEARCH
90 : LD 1, 4(5) ;  Load callee result
91 : LDC 2, 5(0) ;  Caller frame size
92 : SUB 5, 5, 2 ;  Pop callee frame
93 : ST 1, 5(4) ;  Store function result (via FP)
94 : LD 6, 0(4) ;  Load return address (via FP)
95 : LDA 7, 0(6) ;  Return to caller
96 : ADD 4, 5, 0 ;  Set FP at 96 entry
97 : LDA 4, 4(5) ;  Compute callee frame base (temp)
98 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
99 : LD 1, 3(4) ;  Load parameter 'high' via FP
100 : ST 1, 1(5) ;  Store argument 0 in callee frame
101 : LDC 1, 1(0) ;  Load integer literal into R1
102 : ADD 3, 1, 0 ;  Stash right in R3
103 : LD 1, 2(4) ;  Load parameter 'low' via FP
104 : ADD 2, 1, 0 ;  Move left to R2
105 : ADD 1, 3, 0 ;  Restore right to R1
106 : ADD 1, 2, 1 ;  R1 = left + right
107 : ST 1, 2(5) ;  Store argument 1 in callee frame
108 : LDA 6, 111(0) ;  Return address
109 : ST 6, 0(5) ;  Store RA in callee frame
110 : LDA 7, 517(0) ;  Call LE
111 : LD 1, 3(5) ;  Load callee result
112 : LDC 2, 4(0) ;  Caller frame size
113 : SUB 5, 5, 2 ;  Pop callee frame
114 : JEQ 1, 162(0) ;  If false, jump to ELSE
115 : LDA 4, 4(5) ;  Compute callee frame base (temp)
116 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
117 : LDA 4, 4(5) ;  Compute callee frame base (temp)
118 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
119 : LD 1, 2(4) ;  Load parameter 'low' via FP
120 : ST 1, 1(5) ;  Store argument 0 in callee frame
121 : LD 1, 2(4) ;  Load parameter 'low' via FP
122 : ST 1, 2(5) ;  Store argument 1 in callee frame
123 : LDA 6, 126(0) ;  Return address
124 : ST 6, 0(5) ;  Store RA in callee frame
125 : LDA 7, 432(0) ;  Call TIMES
126 : LD 1, 3(5) ;  Load callee result
127 : LDC 2, 4(0) ;  Caller frame size
128 : SUB 5, 5, 2 ;  Pop callee frame
129 : ADD 3, 1, 0 ;  Stash right in R3
130 : LD 1, 1(4) ;  Load parameter 'n' via FP
131 : ADD 2, 1, 0 ;  Move left to R2
132 : ADD 1, 3, 0 ;  Restore right to R1
133 : SUB 1, 2, 1 ;  R1 = left - right
134 : ST 1, 1(5) ;  Store argument 0 in callee frame
135 : LDA 4, 4(5) ;  Compute callee frame base (temp)
136 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
137 : LD 1, 3(4) ;  Load parameter 'high' via FP
138 : ST 1, 1(5) ;  Store argument 0 in callee frame
139 : LD 1, 3(4) ;  Load parameter 'high' via FP
140 : ST 1, 2(5) ;  Store argument 1 in callee frame
141 : LDA 6, 144(0) ;  Return address
142 : ST 6, 0(5) ;  Store RA in callee frame
143 : LDA 7, 432(0) ;  Call TIMES
144 : LD 1, 3(5) ;  Load callee result
145 : LDC 2, 4(0) ;  Caller frame size
146 : SUB 5, 5, 2 ;  Pop callee frame
147 : ADD 2, 1, 0 ;  Move left to R2
148 : LD 1, 1(4) ;  Load parameter 'n' via FP
149 : SUB 1, 2, 1 ;  R1 = left - right
150 : ST 1, 2(5) ;  Store argument 1 in callee frame
151 : LDA 6, 154(0) ;  Return address
152 : ST 6, 0(5) ;  Store RA in callee frame
153 : LDA 7, 517(0) ;  Call LE
154 : LD 1, 3(5) ;  Load callee result
155 : LDC 2, 4(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop callee frame
157 : JEQ 1, 160(0) ;  If false, jump to ELSE
158 : LD 1, 2(4) ;  Load parameter 'low' via FP
159 : LDA 7, 161(0) ;  Skip ELSE
160 : LD 1, 3(4) ;  Load parameter 'high' via FP
161 : LDA 7, 192(0) ;  Skip ELSE
162 : LDA 4, 6(5) ;  Compute callee frame base (temp)
163 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
164 : LD 1, 1(4) ;  Load parameter 'n' via FP
165 : ST 1, 1(5) ;  Store argument 0 in callee frame
166 : LD 1, 2(4) ;  Load parameter 'low' via FP
167 : ST 1, 2(5) ;  Store argument 1 in callee frame
168 : LD 1, 3(4) ;  Load parameter 'high' via FP
169 : ST 1, 3(5) ;  Store argument 2 in callee frame
170 : LDA 4, 4(5) ;  Compute callee frame base (temp)
171 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
172 : LD 1, 2(4) ;  Load parameter 'low' via FP
173 : ST 1, 1(5) ;  Store argument 0 in callee frame
174 : LD 1, 3(4) ;  Load parameter 'high' via FP
175 : ST 1, 2(5) ;  Store argument 1 in callee frame
176 : LDA 6, 179(0) ;  Return address
177 : ST 6, 0(5) ;  Store RA in callee frame
178 : LDA 7, 452(0) ;  Call PLUS
179 : LD 1, 3(5) ;  Load callee result
180 : LDC 2, 4(0) ;  Caller frame size
181 : SUB 5, 5, 2 ;  Pop callee frame
182 : ADD 2, 1, 0 ;  Move left to R2
183 : LDC 1, 2(0) ;  Load integer literal into R1
184 : DIV 1, 2, 1 ;  R1 = left / right
185 : ST 1, 4(5) ;  Store argument 3 in callee frame
186 : LDA 6, 189(0) ;  Return address
187 : ST 6, 0(5) ;  Store RA in callee frame
188 : LDA 7, 45(0) ;  Call SQRTSPLIT
189 : LD 1, 5(5) ;  Load callee result
190 : LDC 2, 6(0) ;  Caller frame size
191 : SUB 5, 5, 2 ;  Pop callee frame
192 : ST 1, 4(4) ;  Store function result (via FP)
193 : LD 6, 0(4) ;  Load return address (via FP)
194 : LDA 7, 0(6) ;  Return to caller
195 : ADD 4, 5, 0 ;  Set FP at 195 entry
196 : LDA 4, 5(5) ;  Compute callee frame base (temp)
197 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
198 : LD 1, 1(4) ;  Load parameter 'n' via FP
199 : ST 1, 1(5) ;  Store argument 0 in callee frame
200 : LDC 1, 0(0) ;  Load integer literal into R1
201 : ST 1, 2(5) ;  Store argument 1 in callee frame
202 : LD 1, 1(4) ;  Load parameter 'n' via FP
203 : ST 1, 3(5) ;  Store argument 2 in callee frame
204 : LDA 6, 207(0) ;  Return address
205 : ST 6, 0(5) ;  Store RA in callee frame
206 : LDA 7, 96(0) ;  Call SQRTSEARCH
207 : LD 1, 4(5) ;  Load callee result
208 : LDC 2, 5(0) ;  Caller frame size
209 : SUB 5, 5, 2 ;  Pop callee frame
210 : ST 1, 2(4) ;  Store function result (via FP)
211 : LD 6, 0(4) ;  Load return address (via FP)
212 : LDA 7, 0(6) ;  Return to caller
213 : ADD 4, 5, 0 ;  Set FP at 213 entry
214 : LDA 4, 4(5) ;  Compute callee frame base (temp)
215 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
216 : LDC 1, 0(0) ;  Load integer literal into R1
217 : ST 1, 1(5) ;  Store argument 0 in callee frame
218 : LD 1, 1(4) ;  Load parameter 'n' via FP
219 : ST 1, 2(5) ;  Store argument 1 in callee frame
220 : LDA 6, 223(0) ;  Return address
221 : ST 6, 0(5) ;  Store RA in callee frame
222 : LDA 7, 517(0) ;  Call LE
223 : LD 1, 3(5) ;  Load callee result
224 : LDC 2, 4(0) ;  Caller frame size
225 : SUB 5, 5, 2 ;  Pop callee frame
226 : JEQ 1, 265(0) ;  If false, jump to ELSE
227 : LDA 4, 4(5) ;  Compute callee frame base (temp)
228 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
229 : LD 1, 1(4) ;  Load parameter 'n' via FP
230 : ST 1, 1(5) ;  Store argument 0 in callee frame
231 : LDA 4, 4(5) ;  Compute callee frame base (temp)
232 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
233 : LD 1, 1(4) ;  Load parameter 'n' via FP
234 : ST 1, 1(5) ;  Store argument 0 in callee frame
235 : LDC 1, 2(0) ;  Load integer literal into R1
236 : ST 1, 2(5) ;  Store argument 1 in callee frame
237 : LDA 6, 240(0) ;  Return address
238 : ST 6, 0(5) ;  Store RA in callee frame
239 : LDA 7, 422(0) ;  Call DIV
240 : LD 1, 3(5) ;  Load callee result
241 : LDC 2, 4(0) ;  Caller frame size
242 : SUB 5, 5, 2 ;  Pop callee frame
243 : ADD 2, 1, 0 ;  Move left to R2
244 : LDA 4, 4(5) ;  Compute callee frame base (temp)
245 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
246 : LD 1, 1(4) ;  Load parameter 'n' via FP
247 : ST 1, 1(5) ;  Store argument 0 in callee frame
248 : LDC 1, 2(0) ;  Load integer literal into R1
249 : ST 1, 2(5) ;  Store argument 1 in callee frame
250 : LDA 6, 253(0) ;  Return address
251 : ST 6, 0(5) ;  Store RA in callee frame
252 : LDA 7, 422(0) ;  Call DIV
253 : LD 1, 3(5) ;  Load callee result
254 : LDC 2, 4(0) ;  Caller frame size
255 : SUB 5, 5, 2 ;  Pop callee frame
256 : ADD 1, 2, 1 ;  R1 = left + right
257 : ST 1, 2(5) ;  Store argument 1 in callee frame
258 : LDA 6, 261(0) ;  Return address
259 : ST 6, 0(5) ;  Store RA in callee frame
260 : LDA 7, 481(0) ;  Call GT
261 : LD 1, 3(5) ;  Load callee result
262 : LDC 2, 4(0) ;  Caller frame size
263 : SUB 5, 5, 2 ;  Pop callee frame
264 : LDA 7, 329(0) ;  Skip ELSE
265 : LDA 4, 4(5) ;  Compute callee frame base (temp)
266 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
267 : LDA 4, 3(5) ;  Compute callee frame base (temp)
268 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
269 : LD 1, 1(4) ;  Load parameter 'n' via FP
270 : ST 1, 1(5) ;  Store argument 0 in callee frame
271 : LDA 6, 274(0) ;  Return address
272 : ST 6, 0(5) ;  Store RA in callee frame
273 : LDA 7, 416(0) ;  Call NEG
274 : LD 1, 2(5) ;  Load callee result
275 : LDC 2, 3(0) ;  Caller frame size
276 : SUB 5, 5, 2 ;  Pop callee frame
277 : ST 1, 1(5) ;  Store argument 0 in callee frame
278 : LDA 4, 4(5) ;  Compute callee frame base (temp)
279 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
280 : LDA 4, 3(5) ;  Compute callee frame base (temp)
281 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
282 : LD 1, 1(4) ;  Load parameter 'n' via FP
283 : ST 1, 1(5) ;  Store argument 0 in callee frame
284 : LDA 6, 287(0) ;  Return address
285 : ST 6, 0(5) ;  Store RA in callee frame
286 : LDA 7, 416(0) ;  Call NEG
287 : LD 1, 2(5) ;  Load callee result
288 : LDC 2, 3(0) ;  Caller frame size
289 : SUB 5, 5, 2 ;  Pop callee frame
290 : ST 1, 1(5) ;  Store argument 0 in callee frame
291 : LDC 1, 2(0) ;  Load integer literal into R1
292 : ST 1, 2(5) ;  Store argument 1 in callee frame
293 : LDA 6, 296(0) ;  Return address
294 : ST 6, 0(5) ;  Store RA in callee frame
295 : LDA 7, 422(0) ;  Call DIV
296 : LD 1, 3(5) ;  Load callee result
297 : LDC 2, 4(0) ;  Caller frame size
298 : SUB 5, 5, 2 ;  Pop callee frame
299 : ADD 2, 1, 0 ;  Move left to R2
300 : LDA 4, 4(5) ;  Compute callee frame base (temp)
301 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
302 : LDA 4, 3(5) ;  Compute callee frame base (temp)
303 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
304 : LD 1, 1(4) ;  Load parameter 'n' via FP
305 : ST 1, 1(5) ;  Store argument 0 in callee frame
306 : LDA 6, 309(0) ;  Return address
307 : ST 6, 0(5) ;  Store RA in callee frame
308 : LDA 7, 416(0) ;  Call NEG
309 : LD 1, 2(5) ;  Load callee result
310 : LDC 2, 3(0) ;  Caller frame size
311 : SUB 5, 5, 2 ;  Pop callee frame
312 : ST 1, 1(5) ;  Store argument 0 in callee frame
313 : LDC 1, 2(0) ;  Load integer literal into R1
314 : ST 1, 2(5) ;  Store argument 1 in callee frame
315 : LDA 6, 318(0) ;  Return address
316 : ST 6, 0(5) ;  Store RA in callee frame
317 : LDA 7, 422(0) ;  Call DIV
318 : LD 1, 3(5) ;  Load callee result
319 : LDC 2, 4(0) ;  Caller frame size
320 : SUB 5, 5, 2 ;  Pop callee frame
321 : ADD 1, 2, 1 ;  R1 = left + right
322 : ST 1, 2(5) ;  Store argument 1 in callee frame
323 : LDA 6, 326(0) ;  Return address
324 : ST 6, 0(5) ;  Store RA in callee frame
325 : LDA 7, 481(0) ;  Call GT
326 : LD 1, 3(5) ;  Load callee result
327 : LDC 2, 4(0) ;  Caller frame size
328 : SUB 5, 5, 2 ;  Pop callee frame
329 : ST 1, 2(4) ;  Store function result (via FP)
330 : LD 6, 0(4) ;  Load return address (via FP)
331 : LDA 7, 0(6) ;  Return to caller
332 : ADD 4, 5, 0 ;  Set FP at 332 entry
333 : LDC 1, 0(0) ;  Load integer literal into R1
334 : ADD 3, 1, 0 ;  Stash right in R3
335 : LD 1, 2(4) ;  Load parameter 'n' via FP
336 : ADD 2, 1, 0 ;  Move left to R2
337 : ADD 1, 3, 0 ;  Restore right to R1
338 : SUB 1, 2, 1 ;  left - right
339 : JEQ 1, 2(7) ;  if 0 then true
340 : LDC 1, 0(0) ;  false
341 : LDA 7, 1(7) ;  skip setting true
342 : LDC 1, 1(0) ;  true
343 : JEQ 1, 346(0) ;  If false, jump to ELSE
344 : LDC 1, 1(0) ;  Load integer literal into R1
345 : LDA 7, 368(0) ;  Skip ELSE
346 : LDA 4, 4(5) ;  Compute callee frame base (temp)
347 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
348 : LD 1, 1(4) ;  Load parameter 'm' via FP
349 : ST 1, 1(5) ;  Store argument 0 in callee frame
350 : LDC 1, 1(0) ;  Load integer literal into R1
351 : ADD 3, 1, 0 ;  Stash right in R3
352 : LD 1, 2(4) ;  Load parameter 'n' via FP
353 : ADD 2, 1, 0 ;  Move left to R2
354 : ADD 1, 3, 0 ;  Restore right to R1
355 : SUB 1, 2, 1 ;  R1 = left - right
356 : ST 1, 2(5) ;  Store argument 1 in callee frame
357 : LDA 6, 360(0) ;  Return address
358 : ST 6, 0(5) ;  Store RA in callee frame
359 : LDA 7, 332(0) ;  Call EXP
360 : LD 1, 3(5) ;  Load callee result
361 : LDC 2, 4(0) ;  Caller frame size
362 : SUB 5, 5, 2 ;  Pop callee frame
363 : ADD 3, 1, 0 ;  Stash right in R3
364 : LD 1, 1(4) ;  Load parameter 'm' via FP
365 : ADD 2, 1, 0 ;  Move left to R2
366 : ADD 1, 3, 0 ;  Restore right to R1
367 : MUL 1, 2, 1 ;  R1 = left * right
368 : ST 1, 3(4) ;  Store function result (via FP)
369 : LD 6, 0(4) ;  Load return address (via FP)
370 : LDA 7, 0(6) ;  Return to caller
371 : ADD 4, 5, 0 ;  Set FP at 371 entry
372 : LD 1, 2(4) ;  Load parameter 'n' via FP
373 : ADD 3, 1, 0 ;  Stash right in R3
374 : LD 1, 1(4) ;  Load parameter 'm' via FP
375 : ADD 2, 1, 0 ;  Move left to R2
376 : ADD 1, 3, 0 ;  Restore right to R1
377 : DIV 1, 2, 1 ;  R1 = left / right
378 : ADD 2, 1, 0 ;  Move left to R2
379 : LD 1, 2(4) ;  Load parameter 'n' via FP
380 : MUL 1, 2, 1 ;  R1 = left * right
381 : ADD 3, 1, 0 ;  Stash right in R3
382 : LD 1, 1(4) ;  Load parameter 'm' via FP
383 : ADD 2, 1, 0 ;  Move left to R2
384 : ADD 1, 3, 0 ;  Restore right to R1
385 : SUB 1, 2, 1 ;  R1 = left - right
386 : ST 1, 3(4) ;  Store function result (via FP)
387 : LD 6, 0(4) ;  Load return address (via FP)
388 : LDA 7, 0(6) ;  Return to caller
389 : ADD 4, 5, 0 ;  Set FP at 389 entry
390 : LD 1, 1(4) ;  Load parameter 'n' via FP
391 : ADD 3, 1, 0 ;  Stash right in R3
392 : LDC 1, 0(0) ;  Load integer literal into R1
393 : ADD 2, 1, 0 ;  Move left to R2
394 : ADD 1, 3, 0 ;  Restore right to R1
395 : SUB 1, 2, 1 ;  left - right
396 : JLT 1, 2(7) ;  if < 0 then true
397 : LDC 1, 0(0) ;  false
398 : LDA 7, 1(7) ;  skip setting true
399 : LDC 1, 1(0) ;  true
400 : JEQ 1, 403(0) ;  If false, jump to ELSE
401 : LD 1, 1(4) ;  Load parameter 'n' via FP
402 : LDA 7, 413(0) ;  Skip ELSE
403 : LDA 4, 3(5) ;  Compute callee frame base (temp)
404 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
405 : LD 1, 1(4) ;  Load parameter 'n' via FP
406 : ST 1, 1(5) ;  Store argument 0 in callee frame
407 : LDA 6, 410(0) ;  Return address
408 : ST 6, 0(5) ;  Store RA in callee frame
409 : LDA 7, 416(0) ;  Call NEG
410 : LD 1, 2(5) ;  Load callee result
411 : LDC 2, 3(0) ;  Caller frame size
412 : SUB 5, 5, 2 ;  Pop callee frame
413 : ST 1, 2(4) ;  Store function result (via FP)
414 : LD 6, 0(4) ;  Load return address (via FP)
415 : LDA 7, 0(6) ;  Return to caller
416 : ADD 4, 5, 0 ;  Set FP at 416 entry
417 : LD 1, 1(4) ;  Load parameter 'n' via FP
418 : SUB 1, 0, 1 ;  Negate R1
419 : ST 1, 2(4) ;  Store function result (via FP)
420 : LD 6, 0(4) ;  Load return address (via FP)
421 : LDA 7, 0(6) ;  Return to caller
422 : ADD 4, 5, 0 ;  Set FP at 422 entry
423 : LD 1, 2(4) ;  Load parameter 'q' via FP
424 : ADD 3, 1, 0 ;  Stash right in R3
425 : LD 1, 1(4) ;  Load parameter 'p' via FP
426 : ADD 2, 1, 0 ;  Move left to R2
427 : ADD 1, 3, 0 ;  Restore right to R1
428 : DIV 1, 2, 1 ;  R1 = left / right
429 : ST 1, 3(4) ;  Store function result (via FP)
430 : LD 6, 0(4) ;  Load return address (via FP)
431 : LDA 7, 0(6) ;  Return to caller
432 : ADD 4, 5, 0 ;  Set FP at 432 entry
433 : LD 1, 2(4) ;  Load parameter 'q' via FP
434 : ADD 3, 1, 0 ;  Stash right in R3
435 : LD 1, 1(4) ;  Load parameter 'p' via FP
436 : ADD 2, 1, 0 ;  Move left to R2
437 : ADD 1, 3, 0 ;  Restore right to R1
438 : MUL 1, 2, 1 ;  R1 = left * right
439 : ST 1, 3(4) ;  Store function result (via FP)
440 : LD 6, 0(4) ;  Load return address (via FP)
441 : LDA 7, 0(6) ;  Return to caller
442 : ADD 4, 5, 0 ;  Set FP at 442 entry
443 : LD 1, 2(4) ;  Load parameter 'q' via FP
444 : ADD 3, 1, 0 ;  Stash right in R3
445 : LD 1, 1(4) ;  Load parameter 'p' via FP
446 : ADD 2, 1, 0 ;  Move left to R2
447 : ADD 1, 3, 0 ;  Restore right to R1
448 : SUB 1, 2, 1 ;  R1 = left - right
449 : ST 1, 3(4) ;  Store function result (via FP)
450 : LD 6, 0(4) ;  Load return address (via FP)
451 : LDA 7, 0(6) ;  Return to caller
452 : ADD 4, 5, 0 ;  Set FP at 452 entry
453 : LD 1, 2(4) ;  Load parameter 'q' via FP
454 : ADD 3, 1, 0 ;  Stash right in R3
455 : LD 1, 1(4) ;  Load parameter 'p' via FP
456 : ADD 2, 1, 0 ;  Move left to R2
457 : ADD 1, 3, 0 ;  Restore right to R1
458 : ADD 1, 2, 1 ;  R1 = left + right
459 : ST 1, 3(4) ;  Store function result (via FP)
460 : LD 6, 0(4) ;  Load return address (via FP)
461 : LDA 7, 0(6) ;  Return to caller
462 : ADD 4, 5, 0 ;  Set FP at 462 entry
463 : LD 1, 1(4) ;  Load parameter 'p' via FP
464 : JEQ 1, 467(0) ;  If false, jump to ELSE
465 : LD 1, 2(4) ;  Load parameter 'q' via FP
466 : LDA 7, 468(0) ;  Skip ELSE
467 : LDC 1, 0(0) ;  Load boolean literal into R1
468 : ST 1, 3(4) ;  Store function result (via FP)
469 : LD 6, 0(4) ;  Load return address (via FP)
470 : LDA 7, 0(6) ;  Return to caller
471 : ADD 4, 5, 0 ;  Set FP at 471 entry
472 : LD 1, 2(4) ;  Load parameter 'q' via FP
473 : ADD 3, 1, 0 ;  Stash right in R3
474 : LD 1, 1(4) ;  Load parameter 'p' via FP
475 : ADD 2, 1, 0 ;  Move left to R2
476 : ADD 1, 3, 0 ;  Restore right to R1
477 : ADD 1, 2, 1 ;  R1 = left OR right
478 : ST 1, 3(4) ;  Store function result (via FP)
479 : LD 6, 0(4) ;  Load return address (via FP)
480 : LDA 7, 0(6) ;  Return to caller
481 : ADD 4, 5, 0 ;  Set FP at 481 entry
482 : LDA 4, 4(5) ;  Compute callee frame base (temp)
483 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
484 : LD 1, 1(4) ;  Load parameter 'p' via FP
485 : ST 1, 1(5) ;  Store argument 0 in callee frame
486 : LD 1, 2(4) ;  Load parameter 'q' via FP
487 : ST 1, 2(5) ;  Store argument 1 in callee frame
488 : LDA 6, 491(0) ;  Return address
489 : ST 6, 0(5) ;  Store RA in callee frame
490 : LDA 7, 517(0) ;  Call LE
491 : LD 1, 3(5) ;  Load callee result
492 : LDC 2, 4(0) ;  Caller frame size
493 : SUB 5, 5, 2 ;  Pop callee frame
494 : LDC 2, 1(0) ;  Load 1 into R2
495 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
496 : ST 1, 3(4) ;  Store function result (via FP)
497 : LD 6, 0(4) ;  Load return address (via FP)
498 : LDA 7, 0(6) ;  Return to caller
499 : ADD 4, 5, 0 ;  Set FP at 499 entry
500 : LDA 4, 4(5) ;  Compute callee frame base (temp)
501 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
502 : LD 1, 1(4) ;  Load parameter 'p' via FP
503 : ST 1, 1(5) ;  Store argument 0 in callee frame
504 : LD 1, 2(4) ;  Load parameter 'q' via FP
505 : ST 1, 2(5) ;  Store argument 1 in callee frame
506 : LDA 6, 509(0) ;  Return address
507 : ST 6, 0(5) ;  Store RA in callee frame
508 : LDA 7, 579(0) ;  Call LT
509 : LD 1, 3(5) ;  Load callee result
510 : LDC 2, 4(0) ;  Caller frame size
511 : SUB 5, 5, 2 ;  Pop callee frame
512 : LDC 2, 1(0) ;  Load 1 into R2
513 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
514 : ST 1, 3(4) ;  Store function result (via FP)
515 : LD 6, 0(4) ;  Load return address (via FP)
516 : LDA 7, 0(6) ;  Return to caller
517 : ADD 4, 5, 0 ;  Set FP at 517 entry
518 : LDA 4, 4(5) ;  Compute callee frame base (temp)
519 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
520 : LD 1, 1(4) ;  Load parameter 'p' via FP
521 : ST 1, 1(5) ;  Store argument 0 in callee frame
522 : LD 1, 2(4) ;  Load parameter 'q' via FP
523 : ST 1, 2(5) ;  Store argument 1 in callee frame
524 : LDA 6, 527(0) ;  Return address
525 : ST 6, 0(5) ;  Store RA in callee frame
526 : LDA 7, 579(0) ;  Call LT
527 : LD 1, 3(5) ;  Load callee result
528 : LDC 2, 4(0) ;  Caller frame size
529 : SUB 5, 5, 2 ;  Pop callee frame
530 : ADD 2, 1, 0 ;  Move left to R2
531 : LDA 4, 4(5) ;  Compute callee frame base (temp)
532 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
533 : LD 1, 1(4) ;  Load parameter 'p' via FP
534 : ST 1, 1(5) ;  Store argument 0 in callee frame
535 : LD 1, 2(4) ;  Load parameter 'q' via FP
536 : ST 1, 2(5) ;  Store argument 1 in callee frame
537 : LDA 6, 540(0) ;  Return address
538 : ST 6, 0(5) ;  Store RA in callee frame
539 : LDA 7, 565(0) ;  Call EQ
540 : LD 1, 3(5) ;  Load callee result
541 : LDC 2, 4(0) ;  Caller frame size
542 : SUB 5, 5, 2 ;  Pop callee frame
543 : ADD 1, 2, 1 ;  R1 = left OR right
544 : ST 1, 3(4) ;  Store function result (via FP)
545 : LD 6, 0(4) ;  Load return address (via FP)
546 : LDA 7, 0(6) ;  Return to caller
547 : ADD 4, 5, 0 ;  Set FP at 547 entry
548 : LDA 4, 4(5) ;  Compute callee frame base (temp)
549 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
550 : LD 1, 1(4) ;  Load parameter 'p' via FP
551 : ST 1, 1(5) ;  Store argument 0 in callee frame
552 : LD 1, 2(4) ;  Load parameter 'q' via FP
553 : ST 1, 2(5) ;  Store argument 1 in callee frame
554 : LDA 6, 557(0) ;  Return address
555 : ST 6, 0(5) ;  Store RA in callee frame
556 : LDA 7, 565(0) ;  Call EQ
557 : LD 1, 3(5) ;  Load callee result
558 : LDC 2, 4(0) ;  Caller frame size
559 : SUB 5, 5, 2 ;  Pop callee frame
560 : LDC 2, 1(0) ;  Load 1 into R2
561 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
562 : ST 1, 3(4) ;  Store function result (via FP)
563 : LD 6, 0(4) ;  Load return address (via FP)
564 : LDA 7, 0(6) ;  Return to caller
565 : ADD 4, 5, 0 ;  Set FP at 565 entry
566 : LD 1, 2(4) ;  Load parameter 'q' via FP
567 : ADD 3, 1, 0 ;  Stash right in R3
568 : LD 1, 1(4) ;  Load parameter 'p' via FP
569 : ADD 2, 1, 0 ;  Move left to R2
570 : ADD 1, 3, 0 ;  Restore right to R1
571 : SUB 1, 2, 1 ;  left - right
572 : JEQ 1, 2(7) ;  if 0 then true
573 : LDC 1, 0(0) ;  false
574 : LDA 7, 1(7) ;  skip setting true
575 : LDC 1, 1(0) ;  true
576 : ST 1, 3(4) ;  Store function result (via FP)
577 : LD 6, 0(4) ;  Load return address (via FP)
578 : LDA 7, 0(6) ;  Return to caller
579 : ADD 4, 5, 0 ;  Set FP at 579 entry
580 : LD 1, 2(4) ;  Load parameter 'q' via FP
581 : ADD 3, 1, 0 ;  Stash right in R3
582 : LD 1, 1(4) ;  Load parameter 'p' via FP
583 : ADD 2, 1, 0 ;  Move left to R2
584 : ADD 1, 3, 0 ;  Restore right to R1
585 : SUB 1, 2, 1 ;  left - right
586 : JLT 1, 2(7) ;  if < 0 then true
587 : LDC 1, 0(0) ;  false
588 : LDA 7, 1(7) ;  skip setting true
589 : LDC 1, 1(0) ;  true
590 : ST 1, 3(4) ;  Store function result (via FP)
591 : LD 6, 0(4) ;  Load return address (via FP)
592 : LDA 7, 0(6) ;  Return to caller
593 : ADD 4, 5, 0 ;  Set FP at 593 entry
594 : LDC 1, 2147483647(0) ;  Load integer literal into R1
595 : SUB 1, 0, 1 ;  Negate R1
596 : ADD 2, 1, 0 ;  Move left to R2
597 : LDC 1, 1(0) ;  Load integer literal into R1
598 : SUB 1, 2, 1 ;  R1 = left - right
599 : ST 1, 1(4) ;  Store function result (via FP)
600 : LD 6, 0(4) ;  Load return address (via FP)
601 : LDA 7, 0(6) ;  Return to caller
602 : ADD 4, 5, 0 ;  Set FP at 602 entry
603 : LDC 1, 2147483647(0) ;  Load integer literal into R1
604 : ST 1, 1(4) ;  Store function result (via FP)
605 : LD 6, 0(4) ;  Load return address (via FP)
606 : LDA 7, 0(6) ;  Return to caller
