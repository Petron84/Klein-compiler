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
13 : LDA 4, 4(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LDA 4, 4(5) ;  Compute callee frame base (temp)
16 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
17 : LDC 1, 10(0) ;  Load integer literal into R1
18 : ST 1, 1(5) ;  Store argument 0 in callee frame
19 : LDC 1, 2(0) ;  Load integer literal into R1
20 : ADD 3, 1, 0 ;  Stash right in R3
21 : LD 1, 1(4) ;  Load parameter 'length' via FP
22 : ADD 2, 1, 0 ;  Move left to R2
23 : ADD 1, 3, 0 ;  Restore right to R1
24 : DIV 1, 2, 1 ;  R1 = left / right
25 : ADD 2, 1, 0 ;  Move left to R2
26 : LDC 1, 1(0) ;  Load integer literal into R1
27 : SUB 1, 2, 1 ;  R1 = left - right
28 : ST 1, 2(5) ;  Store argument 1 in callee frame
29 : LDA 6, 32(0) ;  Return address
30 : ST 6, 0(5) ;  Store RA in callee frame
31 : LDA 7, 818(0) ;  Call EXP
32 : LD 1, 3(5) ;  Load callee result
33 : LDC 2, 4(0) ;  Caller frame size
34 : SUB 5, 5, 2 ;  Pop callee frame
35 : ST 1, 1(5) ;  Store argument 0 in callee frame
36 : LDC 1, 2(0) ;  Load integer literal into R1
37 : ADD 3, 1, 0 ;  Stash right in R3
38 : LD 1, 1(4) ;  Load parameter 'length' via FP
39 : ADD 2, 1, 0 ;  Move left to R2
40 : ADD 1, 3, 0 ;  Restore right to R1
41 : DIV 1, 2, 1 ;  R1 = left / right
42 : ST 1, 2(5) ;  Store argument 1 in callee frame
43 : LDA 6, 46(0) ;  Return address
44 : ST 6, 0(5) ;  Store RA in callee frame
45 : LDA 7, 53(0) ;  Call createLoop
46 : LD 1, 3(5) ;  Load callee result
47 : LDC 2, 4(0) ;  Caller frame size
48 : SUB 5, 5, 2 ;  Pop callee frame
49 : ST 1, 2(4) ;  Store result into caller frame (via FP)
50 : LD 1, 2(4) ;  Load main return value (via FP)
51 : LD 6, 0(4) ;  Load return address (via FP)
52 : LDA 7, 0(6) ;  Return from main
53 : ADD 4, 5, 0 ;  Set FP at 53 entry
54 : LDA 4, 5(5) ;  Compute callee frame base (temp)
55 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
56 : LD 1, 1(4) ;  Load parameter 'a' via FP
57 : ST 1, 1(5) ;  Store argument 0 in callee frame
58 : LD 1, 2(4) ;  Load parameter 'n' via FP
59 : ST 1, 2(5) ;  Store argument 1 in callee frame
60 : LD 1, 1(4) ;  Load parameter 'a' via FP
61 : ADD 3, 1, 0 ;  Stash right in R3
62 : LDC 1, 10(0) ;  Load integer literal into R1
63 : ADD 2, 1, 0 ;  Move left to R2
64 : ADD 1, 3, 0 ;  Restore right to R1
65 : MUL 1, 2, 1 ;  R1 = left * right
66 : ST 1, 3(5) ;  Store argument 2 in callee frame
67 : LDA 6, 70(0) ;  Return address
68 : ST 6, 0(5) ;  Store RA in callee frame
69 : LDA 7, 76(0) ;  Call aLoop
70 : LD 1, 4(5) ;  Load callee result
71 : LDC 2, 5(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop callee frame
73 : ST 1, 3(4) ;  Store function result (via FP)
74 : LD 6, 0(4) ;  Load return address (via FP)
75 : LDA 7, 0(6) ;  Return to caller
76 : ADD 4, 5, 0 ;  Set FP at 76 entry
77 : LD 1, 3(4) ;  Load parameter 'upper' via FP
78 : ADD 3, 1, 0 ;  Stash right in R3
79 : LD 1, 1(4) ;  Load parameter 'a' via FP
80 : ADD 2, 1, 0 ;  Move left to R2
81 : ADD 1, 3, 0 ;  Restore right to R1
82 : SUB 1, 2, 1 ;  left - right
83 : JLT 1, 2(7) ;  if < 0 then true
84 : LDC 1, 0(0) ;  false
85 : LDA 7, 1(7) ;  skip setting true
86 : LDC 1, 1(0) ;  true
87 : JEQ 1, 146(0) ;  If false, jump to ELSE
88 : LDA 4, 6(5) ;  Compute callee frame base (temp)
89 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
90 : LD 1, 1(4) ;  Load parameter 'a' via FP
91 : ST 1, 1(5) ;  Store argument 0 in callee frame
92 : LD 1, 2(4) ;  Load parameter 'n' via FP
93 : ST 1, 2(5) ;  Store argument 1 in callee frame
94 : LD 1, 3(4) ;  Load parameter 'upper' via FP
95 : ST 1, 3(5) ;  Store argument 2 in callee frame
96 : LDA 4, 4(5) ;  Compute callee frame base (temp)
97 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
98 : LD 1, 1(4) ;  Load parameter 'a' via FP
99 : ST 1, 1(5) ;  Store argument 0 in callee frame
100 : LDC 1, 2(0) ;  Load integer literal into R1
101 : ST 1, 2(5) ;  Store argument 1 in callee frame
102 : LDA 6, 105(0) ;  Return address
103 : ST 6, 0(5) ;  Store RA in callee frame
104 : LDA 7, 818(0) ;  Call EXP
105 : LD 1, 3(5) ;  Load callee result
106 : LDC 2, 4(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop callee frame
108 : ADD 3, 1, 0 ;  Stash right in R3
109 : LDC 1, 4(0) ;  Load integer literal into R1
110 : ADD 2, 1, 0 ;  Move left to R2
111 : ADD 1, 3, 0 ;  Restore right to R1
112 : MUL 1, 2, 1 ;  R1 = left * right
113 : ADD 2, 1, 0 ;  Move left to R2
114 : LDA 4, 4(5) ;  Compute callee frame base (temp)
115 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
116 : LDC 1, 10(0) ;  Load integer literal into R1
117 : ST 1, 1(5) ;  Store argument 0 in callee frame
118 : LD 1, 2(4) ;  Load parameter 'n' via FP
119 : ST 1, 2(5) ;  Store argument 1 in callee frame
120 : LDA 6, 123(0) ;  Return address
121 : ST 6, 0(5) ;  Store RA in callee frame
122 : LDA 7, 818(0) ;  Call EXP
123 : LD 1, 3(5) ;  Load callee result
124 : LDC 2, 4(0) ;  Caller frame size
125 : SUB 5, 5, 2 ;  Pop callee frame
126 : ADD 3, 1, 0 ;  Stash right in R3
127 : LDC 1, 4(0) ;  Load integer literal into R1
128 : ADD 2, 1, 0 ;  Move left to R2
129 : ADD 1, 3, 0 ;  Restore right to R1
130 : MUL 1, 2, 1 ;  R1 = left * right
131 : ADD 2, 1, 0 ;  Move left to R2
132 : LD 1, 1(4) ;  Load parameter 'a' via FP
133 : MUL 1, 2, 1 ;  R1 = left * right
134 : ADD 1, 2, 1 ;  R1 = left + right
135 : ADD 2, 1, 0 ;  Move left to R2
136 : LDC 1, 1(0) ;  Load integer literal into R1
137 : ADD 1, 2, 1 ;  R1 = left + right
138 : ST 1, 4(5) ;  Store argument 3 in callee frame
139 : LDA 6, 142(0) ;  Return address
140 : ST 6, 0(5) ;  Store RA in callee frame
141 : LDA 7, 150(0) ;  Call aLoop1
142 : LD 1, 5(5) ;  Load callee result
143 : LDC 2, 6(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop callee frame
145 : LDA 7, 147(0) ;  Skip ELSE
146 : LDC 1, 1(0) ;  Load boolean literal into R1
147 : ST 1, 4(4) ;  Store function result (via FP)
148 : LD 6, 0(4) ;  Load return address (via FP)
149 : LDA 7, 0(6) ;  Return to caller
150 : ADD 4, 5, 0 ;  Set FP at 150 entry
151 : LDA 4, 7(5) ;  Compute callee frame base (temp)
152 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
153 : LD 1, 1(4) ;  Load parameter 'a' via FP
154 : ST 1, 1(5) ;  Store argument 0 in callee frame
155 : LD 1, 2(4) ;  Load parameter 'n' via FP
156 : ST 1, 2(5) ;  Store argument 1 in callee frame
157 : LD 1, 3(4) ;  Load parameter 'upper' via FP
158 : ST 1, 3(5) ;  Store argument 2 in callee frame
159 : LD 1, 4(4) ;  Load parameter 'det' via FP
160 : ST 1, 4(5) ;  Store argument 3 in callee frame
161 : LDA 4, 3(5) ;  Compute callee frame base (temp)
162 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
163 : LD 1, 4(4) ;  Load parameter 'det' via FP
164 : ST 1, 1(5) ;  Store argument 0 in callee frame
165 : LDA 6, 168(0) ;  Return address
166 : ST 6, 0(5) ;  Store RA in callee frame
167 : LDA 7, 729(0) ;  Call SQRT
168 : LD 1, 2(5) ;  Load callee result
169 : LDC 2, 3(0) ;  Caller frame size
170 : SUB 5, 5, 2 ;  Pop callee frame
171 : ST 1, 5(5) ;  Store argument 4 in callee frame
172 : LDA 6, 175(0) ;  Return address
173 : ST 6, 0(5) ;  Store RA in callee frame
174 : LDA 7, 181(0) ;  Call aLoop2
175 : LD 1, 6(5) ;  Load callee result
176 : LDC 2, 7(0) ;  Caller frame size
177 : SUB 5, 5, 2 ;  Pop callee frame
178 : ST 1, 5(4) ;  Store function result (via FP)
179 : LD 6, 0(4) ;  Load return address (via FP)
180 : LDA 7, 0(6) ;  Return to caller
181 : ADD 4, 5, 0 ;  Set FP at 181 entry
182 : LDA 4, 8(5) ;  Compute callee frame base (temp)
183 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
184 : LD 1, 1(4) ;  Load parameter 'a' via FP
185 : ST 1, 1(5) ;  Store argument 0 in callee frame
186 : LD 1, 2(4) ;  Load parameter 'n' via FP
187 : ST 1, 2(5) ;  Store argument 1 in callee frame
188 : LD 1, 3(4) ;  Load parameter 'upper' via FP
189 : ST 1, 3(5) ;  Store argument 2 in callee frame
190 : LD 1, 4(4) ;  Load parameter 'det' via FP
191 : ST 1, 4(5) ;  Store argument 3 in callee frame
192 : LD 1, 5(4) ;  Load parameter 'root' via FP
193 : ST 1, 5(5) ;  Store argument 4 in callee frame
194 : LDA 4, 4(5) ;  Compute callee frame base (temp)
195 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
196 : LDC 1, 10(0) ;  Load integer literal into R1
197 : ST 1, 1(5) ;  Store argument 0 in callee frame
198 : LD 1, 2(4) ;  Load parameter 'n' via FP
199 : ST 1, 2(5) ;  Store argument 1 in callee frame
200 : LDA 6, 203(0) ;  Return address
201 : ST 6, 0(5) ;  Store RA in callee frame
202 : LDA 7, 818(0) ;  Call EXP
203 : LD 1, 3(5) ;  Load callee result
204 : LDC 2, 4(0) ;  Caller frame size
205 : SUB 5, 5, 2 ;  Pop callee frame
206 : ADD 3, 1, 0 ;  Stash right in R3
207 : LD 1, 1(4) ;  Load parameter 'a' via FP
208 : ADD 2, 1, 0 ;  Move left to R2
209 : ADD 1, 3, 0 ;  Restore right to R1
210 : MUL 1, 2, 1 ;  R1 = left * right
211 : ADD 2, 1, 0 ;  Move left to R2
212 : LDC 1, 1(0) ;  Load integer literal into R1
213 : ADD 3, 1, 0 ;  Stash right in R3
214 : LD 1, 5(4) ;  Load parameter 'root' via FP
215 : ADD 2, 1, 0 ;  Move left to R2
216 : ADD 1, 3, 0 ;  Restore right to R1
217 : ADD 1, 2, 1 ;  R1 = left + right
218 : ADD 2, 1, 0 ;  Move left to R2
219 : LDC 1, 2(0) ;  Load integer literal into R1
220 : DIV 1, 2, 1 ;  R1 = left / right
221 : ADD 1, 2, 1 ;  R1 = left + right
222 : ST 1, 6(5) ;  Store argument 5 in callee frame
223 : LDA 6, 226(0) ;  Return address
224 : ST 6, 0(5) ;  Store RA in callee frame
225 : LDA 7, 232(0) ;  Call aLoop3
226 : LD 1, 7(5) ;  Load callee result
227 : LDC 2, 8(0) ;  Caller frame size
228 : SUB 5, 5, 2 ;  Pop callee frame
229 : ST 1, 6(4) ;  Store function result (via FP)
230 : LD 6, 0(4) ;  Load return address (via FP)
231 : LDA 7, 0(6) ;  Return to caller
232 : ADD 4, 5, 0 ;  Set FP at 232 entry
233 : LDA 4, 4(5) ;  Compute callee frame base (temp)
234 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
235 : LD 1, 5(4) ;  Load parameter 'root' via FP
236 : ST 1, 1(5) ;  Store argument 0 in callee frame
237 : LD 1, 4(4) ;  Load parameter 'det' via FP
238 : ST 1, 2(5) ;  Store argument 1 in callee frame
239 : LDA 6, 242(0) ;  Return address
240 : ST 6, 0(5) ;  Store RA in callee frame
241 : LDA 7, 554(0) ;  Call ISROOT
242 : LD 1, 3(5) ;  Load callee result
243 : LDC 2, 4(0) ;  Caller frame size
244 : SUB 5, 5, 2 ;  Pop callee frame
245 : ADD 2, 1, 0 ;  Move left to R2
246 : LDA 4, 3(5) ;  Compute callee frame base (temp)
247 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
248 : LDC 1, 1(0) ;  Load integer literal into R1
249 : ADD 3, 1, 0 ;  Stash right in R3
250 : LD 1, 5(4) ;  Load parameter 'root' via FP
251 : ADD 2, 1, 0 ;  Move left to R2
252 : ADD 1, 3, 0 ;  Restore right to R1
253 : ADD 1, 2, 1 ;  R1 = left + right
254 : ST 1, 1(5) ;  Store argument 0 in callee frame
255 : LDA 6, 258(0) ;  Return address
256 : ST 6, 0(5) ;  Store RA in callee frame
257 : LDA 7, 573(0) ;  Call EVEN
258 : LD 1, 2(5) ;  Load callee result
259 : LDC 2, 3(0) ;  Caller frame size
260 : SUB 5, 5, 2 ;  Pop callee frame
261 : MUL 1, 2, 1 ;  R1 = left AND right
262 : ADD 2, 1, 0 ;  Move left to R2
263 : LDA 4, 3(5) ;  Compute callee frame base (temp)
264 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
265 : LD 1, 6(4) ;  Load parameter 'candidate' via FP
266 : ST 1, 1(5) ;  Store argument 0 in callee frame
267 : LDA 6, 270(0) ;  Return address
268 : ST 6, 0(5) ;  Store RA in callee frame
269 : LDA 7, 346(0) ;  Call isExcellent
270 : LD 1, 2(5) ;  Load callee result
271 : LDC 2, 3(0) ;  Caller frame size
272 : SUB 5, 5, 2 ;  Pop callee frame
273 : MUL 1, 2, 1 ;  R1 = left AND right
274 : JEQ 1, 292(0) ;  If false, jump to ELSE
275 : LDA 4, 6(5) ;  Compute callee frame base (temp)
276 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
277 : LD 1, 1(4) ;  Load parameter 'a' via FP
278 : ST 1, 1(5) ;  Store argument 0 in callee frame
279 : LD 1, 2(4) ;  Load parameter 'n' via FP
280 : ST 1, 2(5) ;  Store argument 1 in callee frame
281 : LD 1, 3(4) ;  Load parameter 'upper' via FP
282 : ST 1, 3(5) ;  Store argument 2 in callee frame
283 : LD 1, 6(4) ;  Load parameter 'candidate' via FP
284 : ST 1, 4(5) ;  Store argument 3 in callee frame
285 : LDA 6, 288(0) ;  Return address
286 : ST 6, 0(5) ;  Store RA in callee frame
287 : LDA 7, 314(0) ;  Call printCandidateAndContinue
288 : LD 1, 5(5) ;  Load callee result
289 : LDC 2, 6(0) ;  Caller frame size
290 : SUB 5, 5, 2 ;  Pop callee frame
291 : LDA 7, 311(0) ;  Skip ELSE
292 : LDA 4, 5(5) ;  Compute callee frame base (temp)
293 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
294 : LDC 1, 1(0) ;  Load integer literal into R1
295 : ADD 3, 1, 0 ;  Stash right in R3
296 : LD 1, 1(4) ;  Load parameter 'a' via FP
297 : ADD 2, 1, 0 ;  Move left to R2
298 : ADD 1, 3, 0 ;  Restore right to R1
299 : ADD 1, 2, 1 ;  R1 = left + right
300 : ST 1, 1(5) ;  Store argument 0 in callee frame
301 : LD 1, 2(4) ;  Load parameter 'n' via FP
302 : ST 1, 2(5) ;  Store argument 1 in callee frame
303 : LD 1, 3(4) ;  Load parameter 'upper' via FP
304 : ST 1, 3(5) ;  Store argument 2 in callee frame
305 : LDA 6, 308(0) ;  Return address
306 : ST 6, 0(5) ;  Store RA in callee frame
307 : LDA 7, 76(0) ;  Call aLoop
308 : LD 1, 4(5) ;  Load callee result
309 : LDC 2, 5(0) ;  Caller frame size
310 : SUB 5, 5, 2 ;  Pop callee frame
311 : ST 1, 7(4) ;  Store function result (via FP)
312 : LD 6, 0(4) ;  Load return address (via FP)
313 : LDA 7, 0(6) ;  Return to caller
314 : ADD 4, 5, 0 ;  Set FP at 314 entry
315 : LDA 4, 3(5) ;  Compute callee frame base (temp)
316 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
317 : LD 1, 4(4) ;  Load parameter 'candidate' via FP
318 : ST 1, 1(5) ;  Store print arg in callee frame
319 : LDA 6, 322(0) ;  Return address
320 : ST 6, 0(5) ;  Store RA in callee frame
321 : LDA 7, 9(0) ;  Call print
322 : LDC 2, 3(0) ;  Caller frame size
323 : SUB 5, 5, 2 ;  Pop callee frame
324 : LDA 4, 5(5) ;  Compute callee frame base (temp)
325 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
326 : LDC 1, 1(0) ;  Load integer literal into R1
327 : ADD 3, 1, 0 ;  Stash right in R3
328 : LD 1, 1(4) ;  Load parameter 'a' via FP
329 : ADD 2, 1, 0 ;  Move left to R2
330 : ADD 1, 3, 0 ;  Restore right to R1
331 : ADD 1, 2, 1 ;  R1 = left + right
332 : ST 1, 1(5) ;  Store argument 0 in callee frame
333 : LD 1, 2(4) ;  Load parameter 'n' via FP
334 : ST 1, 2(5) ;  Store argument 1 in callee frame
335 : LD 1, 3(4) ;  Load parameter 'upper' via FP
336 : ST 1, 3(5) ;  Store argument 2 in callee frame
337 : LDA 6, 340(0) ;  Return address
338 : ST 6, 0(5) ;  Store RA in callee frame
339 : LDA 7, 76(0) ;  Call aLoop
340 : LD 1, 4(5) ;  Load callee result
341 : LDC 2, 5(0) ;  Caller frame size
342 : SUB 5, 5, 2 ;  Pop callee frame
343 : ST 1, 5(4) ;  Store function result (via FP)
344 : LD 6, 0(4) ;  Load return address (via FP)
345 : LDA 7, 0(6) ;  Return to caller
346 : ADD 4, 5, 0 ;  Set FP at 346 entry
347 : LDA 4, 4(5) ;  Compute callee frame base (temp)
348 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
349 : LD 1, 1(4) ;  Load parameter 'n' via FP
350 : ST 1, 1(5) ;  Store argument 0 in callee frame
351 : LDA 4, 3(5) ;  Compute callee frame base (temp)
352 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
353 : LD 1, 1(4) ;  Load parameter 'n' via FP
354 : ST 1, 1(5) ;  Store argument 0 in callee frame
355 : LDA 6, 358(0) ;  Return address
356 : ST 6, 0(5) ;  Store RA in callee frame
357 : LDA 7, 517(0) ;  Call length
358 : LD 1, 2(5) ;  Load callee result
359 : LDC 2, 3(0) ;  Caller frame size
360 : SUB 5, 5, 2 ;  Pop callee frame
361 : ST 1, 2(5) ;  Store argument 1 in callee frame
362 : LDA 6, 365(0) ;  Return address
363 : ST 6, 0(5) ;  Store RA in callee frame
364 : LDA 7, 371(0) ;  Call isExcellentSwitch
365 : LD 1, 3(5) ;  Load callee result
366 : LDC 2, 4(0) ;  Caller frame size
367 : SUB 5, 5, 2 ;  Pop callee frame
368 : ST 1, 2(4) ;  Store function result (via FP)
369 : LD 6, 0(4) ;  Load return address (via FP)
370 : LDA 7, 0(6) ;  Return to caller
371 : ADD 4, 5, 0 ;  Set FP at 371 entry
372 : LDA 4, 3(5) ;  Compute callee frame base (temp)
373 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
374 : LD 1, 2(4) ;  Load parameter 'length' via FP
375 : ST 1, 1(5) ;  Store argument 0 in callee frame
376 : LDA 6, 379(0) ;  Return address
377 : ST 6, 0(5) ;  Store RA in callee frame
378 : LDA 7, 773(0) ;  Call ODD
379 : LD 1, 2(5) ;  Load callee result
380 : LDC 2, 3(0) ;  Caller frame size
381 : SUB 5, 5, 2 ;  Pop callee frame
382 : JEQ 1, 385(0) ;  If false, jump to ELSE
383 : LDC 1, 0(0) ;  Load boolean literal into R1
384 : LDA 7, 424(0) ;  Skip ELSE
385 : LDA 4, 4(5) ;  Compute callee frame base (temp)
386 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
387 : LDA 4, 3(5) ;  Compute callee frame base (temp)
388 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
389 : LD 1, 1(4) ;  Load parameter 'n' via FP
390 : ST 1, 1(5) ;  Store argument 0 in callee frame
391 : LDA 6, 394(0) ;  Return address
392 : ST 6, 0(5) ;  Store RA in callee frame
393 : LDA 7, 484(0) ;  Call a
394 : LD 1, 2(5) ;  Load callee result
395 : LDC 2, 3(0) ;  Caller frame size
396 : SUB 5, 5, 2 ;  Pop callee frame
397 : ST 1, 1(5) ;  Store argument 0 in callee frame
398 : LDA 4, 3(5) ;  Compute callee frame base (temp)
399 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
400 : LD 1, 1(4) ;  Load parameter 'n' via FP
401 : ST 1, 1(5) ;  Store argument 0 in callee frame
402 : LDA 6, 405(0) ;  Return address
403 : ST 6, 0(5) ;  Store RA in callee frame
404 : LDA 7, 445(0) ;  Call b
405 : LD 1, 2(5) ;  Load callee result
406 : LDC 2, 3(0) ;  Caller frame size
407 : SUB 5, 5, 2 ;  Pop callee frame
408 : ST 1, 2(5) ;  Store argument 1 in callee frame
409 : LDA 6, 412(0) ;  Return address
410 : ST 6, 0(5) ;  Store RA in callee frame
411 : LDA 7, 427(0) ;  Call excellentDiff
412 : LD 1, 3(5) ;  Load callee result
413 : LDC 2, 4(0) ;  Caller frame size
414 : SUB 5, 5, 2 ;  Pop callee frame
415 : ADD 3, 1, 0 ;  Stash right in R3
416 : LD 1, 1(4) ;  Load parameter 'n' via FP
417 : ADD 2, 1, 0 ;  Move left to R2
418 : ADD 1, 3, 0 ;  Restore right to R1
419 : SUB 1, 2, 1 ;  left - right
420 : JEQ 1, 2(7) ;  if 0 then true
421 : LDC 1, 0(0) ;  false
422 : LDA 7, 1(7) ;  skip setting true
423 : LDC 1, 1(0) ;  true
424 : ST 1, 3(4) ;  Store function result (via FP)
425 : LD 6, 0(4) ;  Load return address (via FP)
426 : LDA 7, 0(6) ;  Return to caller
427 : ADD 4, 5, 0 ;  Set FP at 427 entry
428 : LD 1, 2(4) ;  Load parameter 'b' via FP
429 : ADD 3, 1, 0 ;  Stash right in R3
430 : LD 1, 2(4) ;  Load parameter 'b' via FP
431 : ADD 2, 1, 0 ;  Move left to R2
432 : ADD 1, 3, 0 ;  Restore right to R1
433 : MUL 1, 2, 1 ;  R1 = left * right
434 : ADD 2, 1, 0 ;  Move left to R2
435 : LD 1, 1(4) ;  Load parameter 'a' via FP
436 : ADD 3, 1, 0 ;  Stash right in R3
437 : LD 1, 1(4) ;  Load parameter 'a' via FP
438 : ADD 2, 1, 0 ;  Move left to R2
439 : ADD 1, 3, 0 ;  Restore right to R1
440 : MUL 1, 2, 1 ;  R1 = left * right
441 : SUB 1, 2, 1 ;  R1 = left - right
442 : ST 1, 3(4) ;  Store function result (via FP)
443 : LD 6, 0(4) ;  Load return address (via FP)
444 : LDA 7, 0(6) ;  Return to caller
445 : ADD 4, 5, 0 ;  Set FP at 445 entry
446 : LDA 4, 4(5) ;  Compute callee frame base (temp)
447 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
448 : LD 1, 1(4) ;  Load parameter 'n' via FP
449 : ST 1, 1(5) ;  Store argument 0 in callee frame
450 : LDA 4, 4(5) ;  Compute callee frame base (temp)
451 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
452 : LDC 1, 10(0) ;  Load integer literal into R1
453 : ST 1, 1(5) ;  Store argument 0 in callee frame
454 : LDA 4, 3(5) ;  Compute callee frame base (temp)
455 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
456 : LD 1, 1(4) ;  Load parameter 'n' via FP
457 : ST 1, 1(5) ;  Store argument 0 in callee frame
458 : LDA 6, 461(0) ;  Return address
459 : ST 6, 0(5) ;  Store RA in callee frame
460 : LDA 7, 517(0) ;  Call length
461 : LD 1, 2(5) ;  Load callee result
462 : LDC 2, 3(0) ;  Caller frame size
463 : SUB 5, 5, 2 ;  Pop callee frame
464 : ADD 2, 1, 0 ;  Move left to R2
465 : LDC 1, 2(0) ;  Load integer literal into R1
466 : DIV 1, 2, 1 ;  R1 = left / right
467 : ST 1, 2(5) ;  Store argument 1 in callee frame
468 : LDA 6, 471(0) ;  Return address
469 : ST 6, 0(5) ;  Store RA in callee frame
470 : LDA 7, 818(0) ;  Call EXP
471 : LD 1, 3(5) ;  Load callee result
472 : LDC 2, 4(0) ;  Caller frame size
473 : SUB 5, 5, 2 ;  Pop callee frame
474 : ST 1, 2(5) ;  Store argument 1 in callee frame
475 : LDA 6, 478(0) ;  Return address
476 : ST 6, 0(5) ;  Store RA in callee frame
477 : LDA 7, 857(0) ;  Call MOD
478 : LD 1, 3(5) ;  Load callee result
479 : LDC 2, 4(0) ;  Caller frame size
480 : SUB 5, 5, 2 ;  Pop callee frame
481 : ST 1, 2(4) ;  Store function result (via FP)
482 : LD 6, 0(4) ;  Load return address (via FP)
483 : LDA 7, 0(6) ;  Return to caller
484 : ADD 4, 5, 0 ;  Set FP at 484 entry
485 : LDA 4, 4(5) ;  Compute callee frame base (temp)
486 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
487 : LDC 1, 10(0) ;  Load integer literal into R1
488 : ST 1, 1(5) ;  Store argument 0 in callee frame
489 : LDA 4, 3(5) ;  Compute callee frame base (temp)
490 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
491 : LD 1, 1(4) ;  Load parameter 'n' via FP
492 : ST 1, 1(5) ;  Store argument 0 in callee frame
493 : LDA 6, 496(0) ;  Return address
494 : ST 6, 0(5) ;  Store RA in callee frame
495 : LDA 7, 517(0) ;  Call length
496 : LD 1, 2(5) ;  Load callee result
497 : LDC 2, 3(0) ;  Caller frame size
498 : SUB 5, 5, 2 ;  Pop callee frame
499 : ADD 2, 1, 0 ;  Move left to R2
500 : LDC 1, 2(0) ;  Load integer literal into R1
501 : DIV 1, 2, 1 ;  R1 = left / right
502 : ST 1, 2(5) ;  Store argument 1 in callee frame
503 : LDA 6, 506(0) ;  Return address
504 : ST 6, 0(5) ;  Store RA in callee frame
505 : LDA 7, 818(0) ;  Call EXP
506 : LD 1, 3(5) ;  Load callee result
507 : LDC 2, 4(0) ;  Caller frame size
508 : SUB 5, 5, 2 ;  Pop callee frame
509 : ADD 3, 1, 0 ;  Stash right in R3
510 : LD 1, 1(4) ;  Load parameter 'n' via FP
511 : ADD 2, 1, 0 ;  Move left to R2
512 : ADD 1, 3, 0 ;  Restore right to R1
513 : DIV 1, 2, 1 ;  R1 = left / right
514 : ST 1, 2(4) ;  Store function result (via FP)
515 : LD 6, 0(4) ;  Load return address (via FP)
516 : LDA 7, 0(6) ;  Return to caller
517 : ADD 4, 5, 0 ;  Set FP at 517 entry
518 : LDC 1, 10(0) ;  Load integer literal into R1
519 : ADD 3, 1, 0 ;  Stash right in R3
520 : LD 1, 1(4) ;  Load parameter 'n' via FP
521 : ADD 2, 1, 0 ;  Move left to R2
522 : ADD 1, 3, 0 ;  Restore right to R1
523 : SUB 1, 2, 1 ;  left - right
524 : JLT 1, 2(7) ;  if < 0 then true
525 : LDC 1, 0(0) ;  false
526 : LDA 7, 1(7) ;  skip setting true
527 : LDC 1, 1(0) ;  true
528 : JEQ 1, 531(0) ;  If false, jump to ELSE
529 : LDC 1, 1(0) ;  Load integer literal into R1
530 : LDA 7, 551(0) ;  Skip ELSE
531 : LDA 4, 3(5) ;  Compute callee frame base (temp)
532 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
533 : LDC 1, 10(0) ;  Load integer literal into R1
534 : ADD 3, 1, 0 ;  Stash right in R3
535 : LD 1, 1(4) ;  Load parameter 'n' via FP
536 : ADD 2, 1, 0 ;  Move left to R2
537 : ADD 1, 3, 0 ;  Restore right to R1
538 : DIV 1, 2, 1 ;  R1 = left / right
539 : ST 1, 1(5) ;  Store argument 0 in callee frame
540 : LDA 6, 543(0) ;  Return address
541 : ST 6, 0(5) ;  Store RA in callee frame
542 : LDA 7, 517(0) ;  Call length
543 : LD 1, 2(5) ;  Load callee result
544 : LDC 2, 3(0) ;  Caller frame size
545 : SUB 5, 5, 2 ;  Pop callee frame
546 : ADD 3, 1, 0 ;  Stash right in R3
547 : LDC 1, 1(0) ;  Load integer literal into R1
548 : ADD 2, 1, 0 ;  Move left to R2
549 : ADD 1, 3, 0 ;  Restore right to R1
550 : ADD 1, 2, 1 ;  R1 = left + right
551 : ST 1, 2(4) ;  Store function result (via FP)
552 : LD 6, 0(4) ;  Load return address (via FP)
553 : LDA 7, 0(6) ;  Return to caller
554 : ADD 4, 5, 0 ;  Set FP at 554 entry
555 : LD 1, 1(4) ;  Load parameter 'r' via FP
556 : ADD 3, 1, 0 ;  Stash right in R3
557 : LD 1, 1(4) ;  Load parameter 'r' via FP
558 : ADD 2, 1, 0 ;  Move left to R2
559 : ADD 1, 3, 0 ;  Restore right to R1
560 : MUL 1, 2, 1 ;  R1 = left * right
561 : ADD 3, 1, 0 ;  Stash right in R3
562 : LD 1, 2(4) ;  Load parameter 'n' via FP
563 : ADD 2, 1, 0 ;  Move left to R2
564 : ADD 1, 3, 0 ;  Restore right to R1
565 : SUB 1, 2, 1 ;  left - right
566 : JEQ 1, 2(7) ;  if 0 then true
567 : LDC 1, 0(0) ;  false
568 : LDA 7, 1(7) ;  skip setting true
569 : LDC 1, 1(0) ;  true
570 : ST 1, 3(4) ;  Store function result (via FP)
571 : LD 6, 0(4) ;  Load return address (via FP)
572 : LDA 7, 0(6) ;  Return to caller
573 : ADD 4, 5, 0 ;  Set FP at 573 entry
574 : LDC 1, 2(0) ;  Load integer literal into R1
575 : ADD 3, 1, 0 ;  Stash right in R3
576 : LD 1, 1(4) ;  Load parameter 'n' via FP
577 : ADD 2, 1, 0 ;  Move left to R2
578 : ADD 1, 3, 0 ;  Restore right to R1
579 : DIV 1, 2, 1 ;  R1 = left / right
580 : ADD 3, 1, 0 ;  Stash right in R3
581 : LDC 1, 2(0) ;  Load integer literal into R1
582 : ADD 2, 1, 0 ;  Move left to R2
583 : ADD 1, 3, 0 ;  Restore right to R1
584 : MUL 1, 2, 1 ;  R1 = left * right
585 : ADD 3, 1, 0 ;  Stash right in R3
586 : LD 1, 1(4) ;  Load parameter 'n' via FP
587 : ADD 2, 1, 0 ;  Move left to R2
588 : ADD 1, 3, 0 ;  Restore right to R1
589 : SUB 1, 2, 1 ;  left - right
590 : JEQ 1, 2(7) ;  if 0 then true
591 : LDC 1, 0(0) ;  false
592 : LDA 7, 1(7) ;  skip setting true
593 : LDC 1, 1(0) ;  true
594 : ST 1, 2(4) ;  Store function result (via FP)
595 : LD 6, 0(4) ;  Load return address (via FP)
596 : LDA 7, 0(6) ;  Return to caller
597 : ADD 4, 5, 0 ;  Set FP at 597 entry
598 : LDA 4, 4(5) ;  Compute callee frame base (temp)
599 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
600 : LD 1, 4(4) ;  Load parameter 'mid' via FP
601 : ADD 3, 1, 0 ;  Stash right in R3
602 : LD 1, 4(4) ;  Load parameter 'mid' via FP
603 : ADD 2, 1, 0 ;  Move left to R2
604 : ADD 1, 3, 0 ;  Restore right to R1
605 : MUL 1, 2, 1 ;  R1 = left * right
606 : ST 1, 1(5) ;  Store argument 0 in callee frame
607 : LD 1, 1(4) ;  Load parameter 'n' via FP
608 : ST 1, 2(5) ;  Store argument 1 in callee frame
609 : LDA 6, 612(0) ;  Return address
610 : ST 6, 0(5) ;  Store RA in callee frame
611 : LDA 7, 747(0) ;  Call LE
612 : LD 1, 3(5) ;  Load callee result
613 : LDC 2, 4(0) ;  Caller frame size
614 : SUB 5, 5, 2 ;  Pop callee frame
615 : JEQ 1, 631(0) ;  If false, jump to ELSE
616 : LDA 4, 5(5) ;  Compute callee frame base (temp)
617 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
618 : LD 1, 1(4) ;  Load parameter 'n' via FP
619 : ST 1, 1(5) ;  Store argument 0 in callee frame
620 : LD 1, 4(4) ;  Load parameter 'mid' via FP
621 : ST 1, 2(5) ;  Store argument 1 in callee frame
622 : LD 1, 3(4) ;  Load parameter 'high' via FP
623 : ST 1, 3(5) ;  Store argument 2 in callee frame
624 : LDA 6, 627(0) ;  Return address
625 : ST 6, 0(5) ;  Store RA in callee frame
626 : LDA 7, 648(0) ;  Call SQRTSEARCH
627 : LD 1, 4(5) ;  Load callee result
628 : LDC 2, 5(0) ;  Caller frame size
629 : SUB 5, 5, 2 ;  Pop callee frame
630 : LDA 7, 645(0) ;  Skip ELSE
631 : LDA 4, 5(5) ;  Compute callee frame base (temp)
632 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
633 : LD 1, 1(4) ;  Load parameter 'n' via FP
634 : ST 1, 1(5) ;  Store argument 0 in callee frame
635 : LD 1, 2(4) ;  Load parameter 'low' via FP
636 : ST 1, 2(5) ;  Store argument 1 in callee frame
637 : LD 1, 4(4) ;  Load parameter 'mid' via FP
638 : ST 1, 3(5) ;  Store argument 2 in callee frame
639 : LDA 6, 642(0) ;  Return address
640 : ST 6, 0(5) ;  Store RA in callee frame
641 : LDA 7, 648(0) ;  Call SQRTSEARCH
642 : LD 1, 4(5) ;  Load callee result
643 : LDC 2, 5(0) ;  Caller frame size
644 : SUB 5, 5, 2 ;  Pop callee frame
645 : ST 1, 5(4) ;  Store function result (via FP)
646 : LD 6, 0(4) ;  Load return address (via FP)
647 : LDA 7, 0(6) ;  Return to caller
648 : ADD 4, 5, 0 ;  Set FP at 648 entry
649 : LDA 4, 4(5) ;  Compute callee frame base (temp)
650 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
651 : LD 1, 3(4) ;  Load parameter 'high' via FP
652 : ST 1, 1(5) ;  Store argument 0 in callee frame
653 : LDC 1, 1(0) ;  Load integer literal into R1
654 : ADD 3, 1, 0 ;  Stash right in R3
655 : LD 1, 2(4) ;  Load parameter 'low' via FP
656 : ADD 2, 1, 0 ;  Move left to R2
657 : ADD 1, 3, 0 ;  Restore right to R1
658 : ADD 1, 2, 1 ;  R1 = left + right
659 : ST 1, 2(5) ;  Store argument 1 in callee frame
660 : LDA 6, 663(0) ;  Return address
661 : ST 6, 0(5) ;  Store RA in callee frame
662 : LDA 7, 747(0) ;  Call LE
663 : LD 1, 3(5) ;  Load callee result
664 : LDC 2, 4(0) ;  Caller frame size
665 : SUB 5, 5, 2 ;  Pop callee frame
666 : JEQ 1, 702(0) ;  If false, jump to ELSE
667 : LDA 4, 4(5) ;  Compute callee frame base (temp)
668 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
669 : LD 1, 2(4) ;  Load parameter 'low' via FP
670 : ADD 3, 1, 0 ;  Stash right in R3
671 : LD 1, 2(4) ;  Load parameter 'low' via FP
672 : ADD 2, 1, 0 ;  Move left to R2
673 : ADD 1, 3, 0 ;  Restore right to R1
674 : MUL 1, 2, 1 ;  R1 = left * right
675 : ADD 3, 1, 0 ;  Stash right in R3
676 : LD 1, 1(4) ;  Load parameter 'n' via FP
677 : ADD 2, 1, 0 ;  Move left to R2
678 : ADD 1, 3, 0 ;  Restore right to R1
679 : SUB 1, 2, 1 ;  R1 = left - right
680 : ST 1, 1(5) ;  Store argument 0 in callee frame
681 : LD 1, 3(4) ;  Load parameter 'high' via FP
682 : ADD 3, 1, 0 ;  Stash right in R3
683 : LD 1, 3(4) ;  Load parameter 'high' via FP
684 : ADD 2, 1, 0 ;  Move left to R2
685 : ADD 1, 3, 0 ;  Restore right to R1
686 : MUL 1, 2, 1 ;  R1 = left * right
687 : ADD 2, 1, 0 ;  Move left to R2
688 : LD 1, 1(4) ;  Load parameter 'n' via FP
689 : SUB 1, 2, 1 ;  R1 = left - right
690 : ST 1, 2(5) ;  Store argument 1 in callee frame
691 : LDA 6, 694(0) ;  Return address
692 : ST 6, 0(5) ;  Store RA in callee frame
693 : LDA 7, 747(0) ;  Call LE
694 : LD 1, 3(5) ;  Load callee result
695 : LDC 2, 4(0) ;  Caller frame size
696 : SUB 5, 5, 2 ;  Pop callee frame
697 : JEQ 1, 700(0) ;  If false, jump to ELSE
698 : LD 1, 2(4) ;  Load parameter 'low' via FP
699 : LDA 7, 701(0) ;  Skip ELSE
700 : LD 1, 3(4) ;  Load parameter 'high' via FP
701 : LDA 7, 726(0) ;  Skip ELSE
702 : LDA 4, 6(5) ;  Compute callee frame base (temp)
703 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
704 : LD 1, 1(4) ;  Load parameter 'n' via FP
705 : ST 1, 1(5) ;  Store argument 0 in callee frame
706 : LD 1, 2(4) ;  Load parameter 'low' via FP
707 : ST 1, 2(5) ;  Store argument 1 in callee frame
708 : LD 1, 3(4) ;  Load parameter 'high' via FP
709 : ST 1, 3(5) ;  Store argument 2 in callee frame
710 : LD 1, 3(4) ;  Load parameter 'high' via FP
711 : ADD 3, 1, 0 ;  Stash right in R3
712 : LD 1, 2(4) ;  Load parameter 'low' via FP
713 : ADD 2, 1, 0 ;  Move left to R2
714 : ADD 1, 3, 0 ;  Restore right to R1
715 : ADD 1, 2, 1 ;  R1 = left + right
716 : ADD 2, 1, 0 ;  Move left to R2
717 : LDC 1, 2(0) ;  Load integer literal into R1
718 : DIV 1, 2, 1 ;  R1 = left / right
719 : ST 1, 4(5) ;  Store argument 3 in callee frame
720 : LDA 6, 723(0) ;  Return address
721 : ST 6, 0(5) ;  Store RA in callee frame
722 : LDA 7, 597(0) ;  Call SQRTSPLIT
723 : LD 1, 5(5) ;  Load callee result
724 : LDC 2, 6(0) ;  Caller frame size
725 : SUB 5, 5, 2 ;  Pop callee frame
726 : ST 1, 4(4) ;  Store function result (via FP)
727 : LD 6, 0(4) ;  Load return address (via FP)
728 : LDA 7, 0(6) ;  Return to caller
729 : ADD 4, 5, 0 ;  Set FP at 729 entry
730 : LDA 4, 5(5) ;  Compute callee frame base (temp)
731 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
732 : LD 1, 1(4) ;  Load parameter 'n' via FP
733 : ST 1, 1(5) ;  Store argument 0 in callee frame
734 : LDC 1, 0(0) ;  Load integer literal into R1
735 : ST 1, 2(5) ;  Store argument 1 in callee frame
736 : LD 1, 1(4) ;  Load parameter 'n' via FP
737 : ST 1, 3(5) ;  Store argument 2 in callee frame
738 : LDA 6, 741(0) ;  Return address
739 : ST 6, 0(5) ;  Store RA in callee frame
740 : LDA 7, 648(0) ;  Call SQRTSEARCH
741 : LD 1, 4(5) ;  Load callee result
742 : LDC 2, 5(0) ;  Caller frame size
743 : SUB 5, 5, 2 ;  Pop callee frame
744 : ST 1, 2(4) ;  Store function result (via FP)
745 : LD 6, 0(4) ;  Load return address (via FP)
746 : LDA 7, 0(6) ;  Return to caller
747 : ADD 4, 5, 0 ;  Set FP at 747 entry
748 : LD 1, 2(4) ;  Load parameter 'q' via FP
749 : ADD 3, 1, 0 ;  Stash right in R3
750 : LD 1, 1(4) ;  Load parameter 'p' via FP
751 : ADD 2, 1, 0 ;  Move left to R2
752 : ADD 1, 3, 0 ;  Restore right to R1
753 : SUB 1, 2, 1 ;  left - right
754 : JLT 1, 2(7) ;  if < 0 then true
755 : LDC 1, 0(0) ;  false
756 : LDA 7, 1(7) ;  skip setting true
757 : LDC 1, 1(0) ;  true
758 : ADD 2, 1, 0 ;  Move left to R2
759 : LD 1, 2(4) ;  Load parameter 'q' via FP
760 : ADD 3, 1, 0 ;  Stash right in R3
761 : LD 1, 1(4) ;  Load parameter 'p' via FP
762 : ADD 2, 1, 0 ;  Move left to R2
763 : ADD 1, 3, 0 ;  Restore right to R1
764 : SUB 1, 2, 1 ;  left - right
765 : JEQ 1, 2(7) ;  if 0 then true
766 : LDC 1, 0(0) ;  false
767 : LDA 7, 1(7) ;  skip setting true
768 : LDC 1, 1(0) ;  true
769 : ADD 1, 2, 1 ;  R1 = left OR right
770 : ST 1, 3(4) ;  Store function result (via FP)
771 : LD 6, 0(4) ;  Load return address (via FP)
772 : LDA 7, 0(6) ;  Return to caller
773 : ADD 4, 5, 0 ;  Set FP at 773 entry
774 : LD 1, 1(4) ;  Load parameter 'n' via FP
775 : ADD 3, 1, 0 ;  Stash right in R3
776 : LDC 1, 0(0) ;  Load integer literal into R1
777 : ADD 2, 1, 0 ;  Move left to R2
778 : ADD 1, 3, 0 ;  Restore right to R1
779 : SUB 1, 2, 1 ;  left - right
780 : JLT 1, 2(7) ;  if < 0 then true
781 : LDC 1, 0(0) ;  false
782 : LDA 7, 1(7) ;  skip setting true
783 : LDC 1, 1(0) ;  true
784 : JEQ 1, 804(0) ;  If false, jump to ELSE
785 : LDC 1, 2(0) ;  Load integer literal into R1
786 : ADD 3, 1, 0 ;  Stash right in R3
787 : LD 1, 1(4) ;  Load parameter 'n' via FP
788 : ADD 2, 1, 0 ;  Move left to R2
789 : ADD 1, 3, 0 ;  Restore right to R1
790 : DIV 1, 2, 1 ;  R1 = left / right
791 : ADD 3, 1, 0 ;  Stash right in R3
792 : LDC 1, 2(0) ;  Load integer literal into R1
793 : ADD 2, 1, 0 ;  Move left to R2
794 : ADD 1, 3, 0 ;  Restore right to R1
795 : MUL 1, 2, 1 ;  R1 = left * right
796 : ADD 2, 1, 0 ;  Move left to R2
797 : LD 1, 1(4) ;  Load parameter 'n' via FP
798 : SUB 1, 2, 1 ;  left - right
799 : JLT 1, 2(7) ;  if < 0 then true
800 : LDC 1, 0(0) ;  false
801 : LDA 7, 1(7) ;  skip setting true
802 : LDC 1, 1(0) ;  true
803 : LDA 7, 815(0) ;  Skip ELSE
804 : LDA 4, 3(5) ;  Compute callee frame base (temp)
805 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
806 : LD 1, 1(4) ;  Load parameter 'n' via FP
807 : SUB 1, 0, 1 ;  Negate R1
808 : ST 1, 1(5) ;  Store argument 0 in callee frame
809 : LDA 6, 812(0) ;  Return address
810 : ST 6, 0(5) ;  Store RA in callee frame
811 : LDA 7, 773(0) ;  Call ODD
812 : LD 1, 2(5) ;  Load callee result
813 : LDC 2, 3(0) ;  Caller frame size
814 : SUB 5, 5, 2 ;  Pop callee frame
815 : ST 1, 2(4) ;  Store function result (via FP)
816 : LD 6, 0(4) ;  Load return address (via FP)
817 : LDA 7, 0(6) ;  Return to caller
818 : ADD 4, 5, 0 ;  Set FP at 818 entry
819 : LDC 1, 0(0) ;  Load integer literal into R1
820 : ADD 3, 1, 0 ;  Stash right in R3
821 : LD 1, 2(4) ;  Load parameter 'n' via FP
822 : ADD 2, 1, 0 ;  Move left to R2
823 : ADD 1, 3, 0 ;  Restore right to R1
824 : SUB 1, 2, 1 ;  left - right
825 : JEQ 1, 2(7) ;  if 0 then true
826 : LDC 1, 0(0) ;  false
827 : LDA 7, 1(7) ;  skip setting true
828 : LDC 1, 1(0) ;  true
829 : JEQ 1, 832(0) ;  If false, jump to ELSE
830 : LDC 1, 1(0) ;  Load integer literal into R1
831 : LDA 7, 854(0) ;  Skip ELSE
832 : LDA 4, 4(5) ;  Compute callee frame base (temp)
833 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
834 : LD 1, 1(4) ;  Load parameter 'm' via FP
835 : ST 1, 1(5) ;  Store argument 0 in callee frame
836 : LDC 1, 1(0) ;  Load integer literal into R1
837 : ADD 3, 1, 0 ;  Stash right in R3
838 : LD 1, 2(4) ;  Load parameter 'n' via FP
839 : ADD 2, 1, 0 ;  Move left to R2
840 : ADD 1, 3, 0 ;  Restore right to R1
841 : SUB 1, 2, 1 ;  R1 = left - right
842 : ST 1, 2(5) ;  Store argument 1 in callee frame
843 : LDA 6, 846(0) ;  Return address
844 : ST 6, 0(5) ;  Store RA in callee frame
845 : LDA 7, 818(0) ;  Call EXP
846 : LD 1, 3(5) ;  Load callee result
847 : LDC 2, 4(0) ;  Caller frame size
848 : SUB 5, 5, 2 ;  Pop callee frame
849 : ADD 3, 1, 0 ;  Stash right in R3
850 : LD 1, 1(4) ;  Load parameter 'm' via FP
851 : ADD 2, 1, 0 ;  Move left to R2
852 : ADD 1, 3, 0 ;  Restore right to R1
853 : MUL 1, 2, 1 ;  R1 = left * right
854 : ST 1, 3(4) ;  Store function result (via FP)
855 : LD 6, 0(4) ;  Load return address (via FP)
856 : LDA 7, 0(6) ;  Return to caller
857 : ADD 4, 5, 0 ;  Set FP at 857 entry
858 : LD 1, 2(4) ;  Load parameter 'n' via FP
859 : ADD 3, 1, 0 ;  Stash right in R3
860 : LD 1, 1(4) ;  Load parameter 'm' via FP
861 : ADD 2, 1, 0 ;  Move left to R2
862 : ADD 1, 3, 0 ;  Restore right to R1
863 : DIV 1, 2, 1 ;  R1 = left / right
864 : ADD 3, 1, 0 ;  Stash right in R3
865 : LD 1, 2(4) ;  Load parameter 'n' via FP
866 : ADD 2, 1, 0 ;  Move left to R2
867 : ADD 1, 3, 0 ;  Restore right to R1
868 : MUL 1, 2, 1 ;  R1 = left * right
869 : ADD 3, 1, 0 ;  Stash right in R3
870 : LD 1, 1(4) ;  Load parameter 'm' via FP
871 : ADD 2, 1, 0 ;  Move left to R2
872 : ADD 1, 3, 0 ;  Restore right to R1
873 : SUB 1, 2, 1 ;  R1 = left - right
874 : ST 1, 3(4) ;  Store function result (via FP)
875 : LD 6, 0(4) ;  Load return address (via FP)
876 : LDA 7, 0(6) ;  Return to caller
