0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDA 4, 4(5) ;  Base of callee frame
13 : LDA 4, 4(5) ;  Base of callee frame
14 : LDC 1, 10(0) ;  Load integer-literal value into R1
15 : ST 1, 1(4) ;  Store argument 0 in callee
16 : LDC 1, 2(0) ;  Load integer-literal value into R1
17 : ADD 3, 1, 0 ;  Move right operand to R3
18 : LD 1, 1(5) ;  Load parameter 'length' into R1
19 : ADD 2, 1, 0 ;  Move left operand to R2
20 : ADD 1, 3, 0 ;  Restore right operand into R1
21 : DIV 1, 2, 1 ;  R1 = left / right
22 : ADD 2, 1, 0 ;  Move left operand to R2
23 : LDC 1, 1(0) ;  Load integer-literal value into R1
24 : SUB 1, 2, 1 ;  R1 = left - right
25 : ST 1, 2(4) ;  Store argument 1 in callee
26 : LDA 6, 30(0) ;  Return address
27 : ST 6, 0(4) ;  Store return in callee frame
28 : ADD 5, 4, 0 ;  Push callee frame
29 : LDA 7, 824(0) ;  Call EXP
30 : LD 1, 3(5) ;  Load function result
31 : LDC 2, 4(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop back to caller
33 : ST 1, 1(4) ;  Store argument 0 in callee
34 : LDC 1, 2(0) ;  Load integer-literal value into R1
35 : ADD 3, 1, 0 ;  Move right operand to R3
36 : LD 1, 1(5) ;  Load parameter 'length' into R1
37 : ADD 2, 1, 0 ;  Move left operand to R2
38 : ADD 1, 3, 0 ;  Restore right operand into R1
39 : DIV 1, 2, 1 ;  R1 = left / right
40 : ST 1, 2(4) ;  Store argument 1 in callee
41 : LDA 6, 45(0) ;  Return address
42 : ST 6, 0(4) ;  Store return in callee frame
43 : ADD 5, 4, 0 ;  Push callee frame
44 : LDA 7, 52(0) ;  Call createLoop
45 : LD 1, 3(5) ;  Load function result
46 : LDC 2, 4(0) ;  Caller frame size
47 : SUB 5, 5, 2 ;  Pop back to caller
48 : ST 1, 2(5) ;  Store result into caller’s frame
49 : LD 1, 2(5) ;  Load return value into register 1
50 : LD 6, 0(5) ;  Load return address for main function into register 6
51 : LDA 7, 0(6) ;  Jump to runtime continuation
52 : LDA 4, 5(5) ;  Base of callee frame
53 : LD 1, 1(5) ;  Load parameter 'a' into R1
54 : ST 1, 1(4) ;  Store argument 0 in callee
55 : LD 1, 2(5) ;  Load parameter 'n' into R1
56 : ST 1, 2(4) ;  Store argument 1 in callee
57 : LD 1, 1(5) ;  Load parameter 'a' into R1
58 : ADD 3, 1, 0 ;  Move right operand to R3
59 : LDC 1, 10(0) ;  Load integer-literal value into R1
60 : ADD 2, 1, 0 ;  Move left operand to R2
61 : ADD 1, 3, 0 ;  Restore right operand into R1
62 : MUL 1, 2, 1 ;  R1 = left * right
63 : ST 1, 3(4) ;  Store argument 2 in callee
64 : LDA 6, 68(0) ;  Return address
65 : ST 6, 0(4) ;  Store return in callee frame
66 : ADD 5, 4, 0 ;  Push callee frame
67 : LDA 7, 75(0) ;  Call aLoop
68 : LD 1, 4(5) ;  Load function result
69 : LDC 2, 5(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop back to caller
71 : ST 1, 3(5) ;  Store result into caller’s frame
72 : ST 1, 3(5) ;  Store function result into stack frame
73 : LD 6, 0(5) ;  Load return address
74 : LDA 7, 0(6) ;  Return to caller
75 : LD 1, 3(5) ;  Load parameter 'upper' into R1
76 : ADD 3, 1, 0 ;  Move right operand to R3
77 : LD 1, 1(5) ;  Load parameter 'a' into R1
78 : ADD 2, 1, 0 ;  Move left operand to R2
79 : ADD 1, 3, 0 ;  Restore right operand into R1
80 : SUB 1, 2, 1 ;  left - right for less-than check
81 : JLT 1, 2(7) ;  If R1 < 0, jump to true
82 : LDC 1, 0(0) ;  false
83 : LDA 7, 1(7) ;  skip setting true
84 : LDC 1, 1(0) ;  true
85 : JEQ 1, 145(0) ;  If condition is false, jump to ELSE
86 : LDA 4, 6(5) ;  Base of callee frame
87 : LD 1, 1(5) ;  Load parameter 'a' into R1
88 : ST 1, 1(4) ;  Store argument 0 in callee
89 : LD 1, 2(5) ;  Load parameter 'n' into R1
90 : ST 1, 2(4) ;  Store argument 1 in callee
91 : LD 1, 3(5) ;  Load parameter 'upper' into R1
92 : ST 1, 3(4) ;  Store argument 2 in callee
93 : LDA 4, 4(5) ;  Base of callee frame
94 : LD 1, 1(5) ;  Load parameter 'a' into R1
95 : ST 1, 1(4) ;  Store argument 0 in callee
96 : LDC 1, 2(0) ;  Load integer-literal value into R1
97 : ST 1, 2(4) ;  Store argument 1 in callee
98 : LDA 6, 102(0) ;  Return address
99 : ST 6, 0(4) ;  Store return in callee frame
100 : ADD 5, 4, 0 ;  Push callee frame
101 : LDA 7, 824(0) ;  Call EXP
102 : LD 1, 3(5) ;  Load function result
103 : LDC 2, 4(0) ;  Caller frame size
104 : SUB 5, 5, 2 ;  Pop back to caller
105 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
106 : LDC 1, 4(0) ;  Load integer-literal value into R1
107 : ADD 2, 1, 0 ;  Move left operand to R2
108 : ADD 1, 3, 0 ;  Restore right operand into R1
109 : MUL 1, 2, 1 ;  R1 = left * right
110 : ADD 2, 1, 0 ;  Move left operand to R2
111 : LDA 4, 4(5) ;  Base of callee frame
112 : LDC 1, 10(0) ;  Load integer-literal value into R1
113 : ST 1, 1(4) ;  Store argument 0 in callee
114 : LD 1, 2(5) ;  Load parameter 'n' into R1
115 : ST 1, 2(4) ;  Store argument 1 in callee
116 : LDA 6, 120(0) ;  Return address
117 : ST 6, 0(4) ;  Store return in callee frame
118 : ADD 5, 4, 0 ;  Push callee frame
119 : LDA 7, 824(0) ;  Call EXP
120 : LD 1, 3(5) ;  Load function result
121 : LDC 2, 4(0) ;  Caller frame size
122 : SUB 5, 5, 2 ;  Pop back to caller
123 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
124 : LDC 1, 4(0) ;  Load integer-literal value into R1
125 : ADD 2, 1, 0 ;  Move left operand to R2
126 : ADD 1, 3, 0 ;  Restore right operand into R1
127 : MUL 1, 2, 1 ;  R1 = left * right
128 : ADD 2, 1, 0 ;  Move left operand to R2
129 : LD 1, 1(5) ;  Load parameter 'a' into R1
130 : MUL 1, 2, 1 ;  R1 = left * right
131 : ADD 1, 2, 1 ;  R1 = left + right
132 : ADD 2, 1, 0 ;  Move left operand to R2
133 : LDC 1, 1(0) ;  Load integer-literal value into R1
134 : ADD 1, 2, 1 ;  R1 = left + right
135 : ST 1, 4(4) ;  Store argument 3 in callee
136 : LDA 6, 140(0) ;  Return address
137 : ST 6, 0(4) ;  Store return in callee frame
138 : ADD 5, 4, 0 ;  Push callee frame
139 : LDA 7, 150(0) ;  Call aLoop1
140 : LD 1, 5(5) ;  Load function result
141 : LDC 2, 6(0) ;  Caller frame size
142 : SUB 5, 5, 2 ;  Pop back to caller
143 : ST 1, 4(5) ;  Store result into caller’s frame
144 : LDA 7, 147(0) ;  Skip ELSE block
145 : LDC 1, 1(0) ;  Load boolean-literal value into R1
146 : ST 1, 4(5) ;  Store result into current frame's return slot
147 : ST 1, 4(5) ;  Store function result into stack frame
148 : LD 6, 0(5) ;  Load return address
149 : LDA 7, 0(6) ;  Return to caller
150 : LDA 4, 7(5) ;  Base of callee frame
151 : LD 1, 1(5) ;  Load parameter 'a' into R1
152 : ST 1, 1(4) ;  Store argument 0 in callee
153 : LD 1, 2(5) ;  Load parameter 'n' into R1
154 : ST 1, 2(4) ;  Store argument 1 in callee
155 : LD 1, 3(5) ;  Load parameter 'upper' into R1
156 : ST 1, 3(4) ;  Store argument 2 in callee
157 : LD 1, 4(5) ;  Load parameter 'det' into R1
158 : ST 1, 4(4) ;  Store argument 3 in callee
159 : LDA 4, 3(5) ;  Base of callee frame
160 : LD 1, 4(5) ;  Load parameter 'det' into R1
161 : ST 1, 1(4) ;  Store argument 0 in callee
162 : LDA 6, 166(0) ;  Return address
163 : ST 6, 0(4) ;  Store return in callee frame
164 : ADD 5, 4, 0 ;  Push callee frame
165 : LDA 7, 734(0) ;  Call SQRT
166 : LD 1, 2(5) ;  Load function result
167 : LDC 2, 3(0) ;  Caller frame size
168 : SUB 5, 5, 2 ;  Pop back to caller
169 : ST 1, 5(4) ;  Store argument 4 in callee
170 : LDA 6, 174(0) ;  Return address
171 : ST 6, 0(4) ;  Store return in callee frame
172 : ADD 5, 4, 0 ;  Push callee frame
173 : LDA 7, 181(0) ;  Call aLoop2
174 : LD 1, 6(5) ;  Load function result
175 : LDC 2, 7(0) ;  Caller frame size
176 : SUB 5, 5, 2 ;  Pop back to caller
177 : ST 1, 5(5) ;  Store result into caller’s frame
178 : ST 1, 5(5) ;  Store function result into stack frame
179 : LD 6, 0(5) ;  Load return address
180 : LDA 7, 0(6) ;  Return to caller
181 : LDA 4, 8(5) ;  Base of callee frame
182 : LD 1, 1(5) ;  Load parameter 'a' into R1
183 : ST 1, 1(4) ;  Store argument 0 in callee
184 : LD 1, 2(5) ;  Load parameter 'n' into R1
185 : ST 1, 2(4) ;  Store argument 1 in callee
186 : LD 1, 3(5) ;  Load parameter 'upper' into R1
187 : ST 1, 3(4) ;  Store argument 2 in callee
188 : LD 1, 4(5) ;  Load parameter 'det' into R1
189 : ST 1, 4(4) ;  Store argument 3 in callee
190 : LD 1, 5(5) ;  Load parameter 'root' into R1
191 : ST 1, 5(4) ;  Store argument 4 in callee
192 : LDA 4, 4(5) ;  Base of callee frame
193 : LDC 1, 10(0) ;  Load integer-literal value into R1
194 : ST 1, 1(4) ;  Store argument 0 in callee
195 : LD 1, 2(5) ;  Load parameter 'n' into R1
196 : ST 1, 2(4) ;  Store argument 1 in callee
197 : LDA 6, 201(0) ;  Return address
198 : ST 6, 0(4) ;  Store return in callee frame
199 : ADD 5, 4, 0 ;  Push callee frame
200 : LDA 7, 824(0) ;  Call EXP
201 : LD 1, 3(5) ;  Load function result
202 : LDC 2, 4(0) ;  Caller frame size
203 : SUB 5, 5, 2 ;  Pop back to caller
204 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
205 : LD 1, 1(5) ;  Load parameter 'a' into R1
206 : ADD 2, 1, 0 ;  Move left operand to R2
207 : ADD 1, 3, 0 ;  Restore right operand into R1
208 : MUL 1, 2, 1 ;  R1 = left * right
209 : ADD 2, 1, 0 ;  Move left operand to R2
210 : LDC 1, 1(0) ;  Load integer-literal value into R1
211 : ADD 3, 1, 0 ;  Move right operand to R3
212 : LD 1, 5(5) ;  Load parameter 'root' into R1
213 : ADD 2, 1, 0 ;  Move left operand to R2
214 : ADD 1, 3, 0 ;  Restore right operand into R1
215 : ADD 1, 2, 1 ;  R1 = left + right
216 : ADD 2, 1, 0 ;  Move left operand to R2
217 : LDC 1, 2(0) ;  Load integer-literal value into R1
218 : DIV 1, 2, 1 ;  R1 = left / right
219 : ADD 1, 2, 1 ;  R1 = left + right
220 : ST 1, 6(4) ;  Store argument 5 in callee
221 : LDA 6, 225(0) ;  Return address
222 : ST 6, 0(4) ;  Store return in callee frame
223 : ADD 5, 4, 0 ;  Push callee frame
224 : LDA 7, 232(0) ;  Call aLoop3
225 : LD 1, 7(5) ;  Load function result
226 : LDC 2, 8(0) ;  Caller frame size
227 : SUB 5, 5, 2 ;  Pop back to caller
228 : ST 1, 6(5) ;  Store result into caller’s frame
229 : ST 1, 6(5) ;  Store function result into stack frame
230 : LD 6, 0(5) ;  Load return address
231 : LDA 7, 0(6) ;  Return to caller
232 : LDA 4, 4(5) ;  Base of callee frame
233 : LD 1, 5(5) ;  Load parameter 'root' into R1
234 : ST 1, 1(4) ;  Store argument 0 in callee
235 : LD 1, 4(5) ;  Load parameter 'det' into R1
236 : ST 1, 2(4) ;  Store argument 1 in callee
237 : LDA 6, 241(0) ;  Return address
238 : ST 6, 0(4) ;  Store return in callee frame
239 : ADD 5, 4, 0 ;  Push callee frame
240 : LDA 7, 556(0) ;  Call ISROOT
241 : LD 1, 3(5) ;  Load function result
242 : LDC 2, 4(0) ;  Caller frame size
243 : SUB 5, 5, 2 ;  Pop back to caller
244 : ADD 2, 1, 0 ;  Move left operand to R2
245 : LDA 4, 3(5) ;  Base of callee frame
246 : LDC 1, 1(0) ;  Load integer-literal value into R1
247 : ADD 3, 1, 0 ;  Move right operand to R3
248 : LD 1, 5(5) ;  Load parameter 'root' into R1
249 : ADD 2, 1, 0 ;  Move left operand to R2
250 : ADD 1, 3, 0 ;  Restore right operand into R1
251 : ADD 1, 2, 1 ;  R1 = left + right
252 : ST 1, 1(4) ;  Store argument 0 in callee
253 : LDA 6, 257(0) ;  Return address
254 : ST 6, 0(4) ;  Store return in callee frame
255 : ADD 5, 4, 0 ;  Push callee frame
256 : LDA 7, 575(0) ;  Call EVEN
257 : LD 1, 2(5) ;  Load function result
258 : LDC 2, 3(0) ;  Caller frame size
259 : SUB 5, 5, 2 ;  Pop back to caller
260 : MUL 1, 2, 1 ;  R1 = left AND right
261 : ADD 2, 1, 0 ;  Move left operand to R2
262 : LDA 4, 3(5) ;  Base of callee frame
263 : LD 1, 6(5) ;  Load parameter 'candidate' into R1
264 : ST 1, 1(4) ;  Store argument 0 in callee
265 : LDA 6, 269(0) ;  Return address
266 : ST 6, 0(4) ;  Store return in callee frame
267 : ADD 5, 4, 0 ;  Push callee frame
268 : LDA 7, 346(0) ;  Call isExcellent
269 : LD 1, 2(5) ;  Load function result
270 : LDC 2, 3(0) ;  Caller frame size
271 : SUB 5, 5, 2 ;  Pop back to caller
272 : MUL 1, 2, 1 ;  R1 = left AND right
273 : JEQ 1, 292(0) ;  If condition is false, jump to ELSE
274 : LDA 4, 6(5) ;  Base of callee frame
275 : LD 1, 1(5) ;  Load parameter 'a' into R1
276 : ST 1, 1(4) ;  Store argument 0 in callee
277 : LD 1, 2(5) ;  Load parameter 'n' into R1
278 : ST 1, 2(4) ;  Store argument 1 in callee
279 : LD 1, 3(5) ;  Load parameter 'upper' into R1
280 : ST 1, 3(4) ;  Store argument 2 in callee
281 : LD 1, 6(5) ;  Load parameter 'candidate' into R1
282 : ST 1, 4(4) ;  Store argument 3 in callee
283 : LDA 6, 287(0) ;  Return address
284 : ST 6, 0(4) ;  Store return in callee frame
285 : ADD 5, 4, 0 ;  Push callee frame
286 : LDA 7, 315(0) ;  Call printCandidateAndContinue
287 : LD 1, 5(5) ;  Load function result
288 : LDC 2, 6(0) ;  Caller frame size
289 : SUB 5, 5, 2 ;  Pop back to caller
290 : ST 1, 7(5) ;  Store result into caller’s frame
291 : LDA 7, 312(0) ;  Skip ELSE block
292 : LDA 4, 5(5) ;  Base of callee frame
293 : LDC 1, 1(0) ;  Load integer-literal value into R1
294 : ADD 3, 1, 0 ;  Move right operand to R3
295 : LD 1, 1(5) ;  Load parameter 'a' into R1
296 : ADD 2, 1, 0 ;  Move left operand to R2
297 : ADD 1, 3, 0 ;  Restore right operand into R1
298 : ADD 1, 2, 1 ;  R1 = left + right
299 : ST 1, 1(4) ;  Store argument 0 in callee
300 : LD 1, 2(5) ;  Load parameter 'n' into R1
301 : ST 1, 2(4) ;  Store argument 1 in callee
302 : LD 1, 3(5) ;  Load parameter 'upper' into R1
303 : ST 1, 3(4) ;  Store argument 2 in callee
304 : LDA 6, 308(0) ;  Return address
305 : ST 6, 0(4) ;  Store return in callee frame
306 : ADD 5, 4, 0 ;  Push callee frame
307 : LDA 7, 75(0) ;  Call aLoop
308 : LD 1, 4(5) ;  Load function result
309 : LDC 2, 5(0) ;  Caller frame size
310 : SUB 5, 5, 2 ;  Pop back to caller
311 : ST 1, 7(5) ;  Store result into caller’s frame
312 : ST 1, 7(5) ;  Store function result into stack frame
313 : LD 6, 0(5) ;  Load return address
314 : LDA 7, 0(6) ;  Return to caller
315 : LD 1, 4(5) ;  Load parameter 'candidate' into R1
316 : LDA 4, 3(5) ;  Base of callee frame
317 : LDA 6, 321(0) ;  Return address
318 : ST 6, 0(4) ;  Store return addr in callee frame
319 : ADD 5, 4, 0 ;  Push new frame
320 : LDA 7, 9(0) ;  Call print
321 : LDC 2, 3(0) ;  Caller frame size
322 : SUB 5, 5, 2 ;  Pop frame
323 : LDA 4, 5(5) ;  Base of callee frame
324 : LDC 1, 1(0) ;  Load integer-literal value into R1
325 : ADD 3, 1, 0 ;  Move right operand to R3
326 : LD 1, 1(5) ;  Load parameter 'a' into R1
327 : ADD 2, 1, 0 ;  Move left operand to R2
328 : ADD 1, 3, 0 ;  Restore right operand into R1
329 : ADD 1, 2, 1 ;  R1 = left + right
330 : ST 1, 1(4) ;  Store argument 0 in callee
331 : LD 1, 2(5) ;  Load parameter 'n' into R1
332 : ST 1, 2(4) ;  Store argument 1 in callee
333 : LD 1, 3(5) ;  Load parameter 'upper' into R1
334 : ST 1, 3(4) ;  Store argument 2 in callee
335 : LDA 6, 339(0) ;  Return address
336 : ST 6, 0(4) ;  Store return in callee frame
337 : ADD 5, 4, 0 ;  Push callee frame
338 : LDA 7, 75(0) ;  Call aLoop
339 : LD 1, 4(5) ;  Load function result
340 : LDC 2, 5(0) ;  Caller frame size
341 : SUB 5, 5, 2 ;  Pop back to caller
342 : ST 1, 5(5) ;  Store result into caller’s frame
343 : ST 1, 5(5) ;  Store function result into stack frame
344 : LD 6, 0(5) ;  Load return address
345 : LDA 7, 0(6) ;  Return to caller
346 : LDA 4, 4(5) ;  Base of callee frame
347 : LD 1, 1(5) ;  Load parameter 'n' into R1
348 : ST 1, 1(4) ;  Store argument 0 in callee
349 : LDA 4, 3(5) ;  Base of callee frame
350 : LD 1, 1(5) ;  Load parameter 'n' into R1
351 : ST 1, 1(4) ;  Store argument 0 in callee
352 : LDA 6, 356(0) ;  Return address
353 : ST 6, 0(4) ;  Store return in callee frame
354 : ADD 5, 4, 0 ;  Push callee frame
355 : LDA 7, 518(0) ;  Call length
356 : LD 1, 2(5) ;  Load function result
357 : LDC 2, 3(0) ;  Caller frame size
358 : SUB 5, 5, 2 ;  Pop back to caller
359 : ST 1, 2(4) ;  Store argument 1 in callee
360 : LDA 6, 364(0) ;  Return address
361 : ST 6, 0(4) ;  Store return in callee frame
362 : ADD 5, 4, 0 ;  Push callee frame
363 : LDA 7, 371(0) ;  Call isExcellentSwitch
364 : LD 1, 3(5) ;  Load function result
365 : LDC 2, 4(0) ;  Caller frame size
366 : SUB 5, 5, 2 ;  Pop back to caller
367 : ST 1, 2(5) ;  Store result into caller’s frame
368 : ST 1, 2(5) ;  Store function result into stack frame
369 : LD 6, 0(5) ;  Load return address
370 : LDA 7, 0(6) ;  Return to caller
371 : LDA 4, 3(5) ;  Base of callee frame
372 : LD 1, 2(5) ;  Load parameter 'length' into R1
373 : ST 1, 1(4) ;  Store argument 0 in callee
374 : LDA 6, 378(0) ;  Return address
375 : ST 6, 0(4) ;  Store return in callee frame
376 : ADD 5, 4, 0 ;  Push callee frame
377 : LDA 7, 778(0) ;  Call ODD
378 : LD 1, 2(5) ;  Load function result
379 : LDC 2, 3(0) ;  Caller frame size
380 : SUB 5, 5, 2 ;  Pop back to caller
381 : JEQ 1, 385(0) ;  If condition is false, jump to ELSE
382 : LDC 1, 0(0) ;  Load boolean-literal value into R1
383 : ST 1, 3(5) ;  Store result into current frame's return slot
384 : LDA 7, 425(0) ;  Skip ELSE block
385 : LDA 4, 4(5) ;  Base of callee frame
386 : LDA 4, 3(5) ;  Base of callee frame
387 : LD 1, 1(5) ;  Load parameter 'n' into R1
388 : ST 1, 1(4) ;  Store argument 0 in callee
389 : LDA 6, 393(0) ;  Return address
390 : ST 6, 0(4) ;  Store return in callee frame
391 : ADD 5, 4, 0 ;  Push callee frame
392 : LDA 7, 485(0) ;  Call a
393 : LD 1, 2(5) ;  Load function result
394 : LDC 2, 3(0) ;  Caller frame size
395 : SUB 5, 5, 2 ;  Pop back to caller
396 : ST 1, 1(4) ;  Store argument 0 in callee
397 : LDA 4, 3(5) ;  Base of callee frame
398 : LD 1, 1(5) ;  Load parameter 'n' into R1
399 : ST 1, 1(4) ;  Store argument 0 in callee
400 : LDA 6, 404(0) ;  Return address
401 : ST 6, 0(4) ;  Store return in callee frame
402 : ADD 5, 4, 0 ;  Push callee frame
403 : LDA 7, 446(0) ;  Call b
404 : LD 1, 2(5) ;  Load function result
405 : LDC 2, 3(0) ;  Caller frame size
406 : SUB 5, 5, 2 ;  Pop back to caller
407 : ST 1, 2(4) ;  Store argument 1 in callee
408 : LDA 6, 412(0) ;  Return address
409 : ST 6, 0(4) ;  Store return in callee frame
410 : ADD 5, 4, 0 ;  Push callee frame
411 : LDA 7, 428(0) ;  Call excellentDiff
412 : LD 1, 3(5) ;  Load function result
413 : LDC 2, 4(0) ;  Caller frame size
414 : SUB 5, 5, 2 ;  Pop back to caller
415 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
416 : LD 1, 1(5) ;  Load parameter 'n' into R1
417 : ADD 2, 1, 0 ;  Move left operand to R2
418 : ADD 1, 3, 0 ;  Restore right operand into R1
419 : SUB 1, 2, 1 ;  left - right for equality check
420 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
421 : LDC 1, 0(0) ;  false
422 : LDA 7, 1(7) ;  skip setting true
423 : LDC 1, 1(0) ;  true
424 : ST 1, 3(5) ;  Store result into current frame's return slot
425 : ST 1, 3(5) ;  Store function result into stack frame
426 : LD 6, 0(5) ;  Load return address
427 : LDA 7, 0(6) ;  Return to caller
428 : LD 1, 2(5) ;  Load parameter 'b' into R1
429 : ADD 3, 1, 0 ;  Move right operand to R3
430 : LD 1, 2(5) ;  Load parameter 'b' into R1
431 : ADD 2, 1, 0 ;  Move left operand to R2
432 : ADD 1, 3, 0 ;  Restore right operand into R1
433 : MUL 1, 2, 1 ;  R1 = left * right
434 : ADD 2, 1, 0 ;  Move left operand to R2
435 : LD 1, 1(5) ;  Load parameter 'a' into R1
436 : ADD 3, 1, 0 ;  Move right operand to R3
437 : LD 1, 1(5) ;  Load parameter 'a' into R1
438 : ADD 2, 1, 0 ;  Move left operand to R2
439 : ADD 1, 3, 0 ;  Restore right operand into R1
440 : MUL 1, 2, 1 ;  R1 = left * right
441 : SUB 1, 2, 1 ;  R1 = left - right
442 : ST 1, 3(5) ;  Store result into current frame's return slot
443 : ST 1, 3(5) ;  Store function result into stack frame
444 : LD 6, 0(5) ;  Load return address
445 : LDA 7, 0(6) ;  Return to caller
446 : LDA 4, 4(5) ;  Base of callee frame
447 : LD 1, 1(5) ;  Load parameter 'n' into R1
448 : ST 1, 1(4) ;  Store argument 0 in callee
449 : LDA 4, 4(5) ;  Base of callee frame
450 : LDC 1, 10(0) ;  Load integer-literal value into R1
451 : ST 1, 1(4) ;  Store argument 0 in callee
452 : LDA 4, 3(5) ;  Base of callee frame
453 : LD 1, 1(5) ;  Load parameter 'n' into R1
454 : ST 1, 1(4) ;  Store argument 0 in callee
455 : LDA 6, 459(0) ;  Return address
456 : ST 6, 0(4) ;  Store return in callee frame
457 : ADD 5, 4, 0 ;  Push callee frame
458 : LDA 7, 518(0) ;  Call length
459 : LD 1, 2(5) ;  Load function result
460 : LDC 2, 3(0) ;  Caller frame size
461 : SUB 5, 5, 2 ;  Pop back to caller
462 : ADD 2, 1, 0 ;  Move left operand to R2
463 : LDC 1, 2(0) ;  Load integer-literal value into R1
464 : DIV 1, 2, 1 ;  R1 = left / right
465 : ST 1, 2(4) ;  Store argument 1 in callee
466 : LDA 6, 470(0) ;  Return address
467 : ST 6, 0(4) ;  Store return in callee frame
468 : ADD 5, 4, 0 ;  Push callee frame
469 : LDA 7, 824(0) ;  Call EXP
470 : LD 1, 3(5) ;  Load function result
471 : LDC 2, 4(0) ;  Caller frame size
472 : SUB 5, 5, 2 ;  Pop back to caller
473 : ST 1, 2(4) ;  Store argument 1 in callee
474 : LDA 6, 478(0) ;  Return address
475 : ST 6, 0(4) ;  Store return in callee frame
476 : ADD 5, 4, 0 ;  Push callee frame
477 : LDA 7, 864(0) ;  Call MOD
478 : LD 1, 3(5) ;  Load function result
479 : LDC 2, 4(0) ;  Caller frame size
480 : SUB 5, 5, 2 ;  Pop back to caller
481 : ST 1, 2(5) ;  Store result into caller’s frame
482 : ST 1, 2(5) ;  Store function result into stack frame
483 : LD 6, 0(5) ;  Load return address
484 : LDA 7, 0(6) ;  Return to caller
485 : LDA 4, 4(5) ;  Base of callee frame
486 : LDC 1, 10(0) ;  Load integer-literal value into R1
487 : ST 1, 1(4) ;  Store argument 0 in callee
488 : LDA 4, 3(5) ;  Base of callee frame
489 : LD 1, 1(5) ;  Load parameter 'n' into R1
490 : ST 1, 1(4) ;  Store argument 0 in callee
491 : LDA 6, 495(0) ;  Return address
492 : ST 6, 0(4) ;  Store return in callee frame
493 : ADD 5, 4, 0 ;  Push callee frame
494 : LDA 7, 518(0) ;  Call length
495 : LD 1, 2(5) ;  Load function result
496 : LDC 2, 3(0) ;  Caller frame size
497 : SUB 5, 5, 2 ;  Pop back to caller
498 : ADD 2, 1, 0 ;  Move left operand to R2
499 : LDC 1, 2(0) ;  Load integer-literal value into R1
500 : DIV 1, 2, 1 ;  R1 = left / right
501 : ST 1, 2(4) ;  Store argument 1 in callee
502 : LDA 6, 506(0) ;  Return address
503 : ST 6, 0(4) ;  Store return in callee frame
504 : ADD 5, 4, 0 ;  Push callee frame
505 : LDA 7, 824(0) ;  Call EXP
506 : LD 1, 3(5) ;  Load function result
507 : LDC 2, 4(0) ;  Caller frame size
508 : SUB 5, 5, 2 ;  Pop back to caller
509 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
510 : LD 1, 1(5) ;  Load parameter 'n' into R1
511 : ADD 2, 1, 0 ;  Move left operand to R2
512 : ADD 1, 3, 0 ;  Restore right operand into R1
513 : DIV 1, 2, 1 ;  R1 = left / right
514 : ST 1, 2(5) ;  Store result into current frame's return slot
515 : ST 1, 2(5) ;  Store function result into stack frame
516 : LD 6, 0(5) ;  Load return address
517 : LDA 7, 0(6) ;  Return to caller
518 : LDC 1, 10(0) ;  Load integer-literal value into R1
519 : ADD 3, 1, 0 ;  Move right operand to R3
520 : LD 1, 1(5) ;  Load parameter 'n' into R1
521 : ADD 2, 1, 0 ;  Move left operand to R2
522 : ADD 1, 3, 0 ;  Restore right operand into R1
523 : SUB 1, 2, 1 ;  left - right for less-than check
524 : JLT 1, 2(7) ;  If R1 < 0, jump to true
525 : LDC 1, 0(0) ;  false
526 : LDA 7, 1(7) ;  skip setting true
527 : LDC 1, 1(0) ;  true
528 : JEQ 1, 532(0) ;  If condition is false, jump to ELSE
529 : LDC 1, 1(0) ;  Load integer-literal value into R1
530 : ST 1, 2(5) ;  Store result into current frame's return slot
531 : LDA 7, 553(0) ;  Skip ELSE block
532 : LDA 4, 3(5) ;  Base of callee frame
533 : LDC 1, 10(0) ;  Load integer-literal value into R1
534 : ADD 3, 1, 0 ;  Move right operand to R3
535 : LD 1, 1(5) ;  Load parameter 'n' into R1
536 : ADD 2, 1, 0 ;  Move left operand to R2
537 : ADD 1, 3, 0 ;  Restore right operand into R1
538 : DIV 1, 2, 1 ;  R1 = left / right
539 : ST 1, 1(4) ;  Store argument 0 in callee
540 : LDA 6, 544(0) ;  Return address
541 : ST 6, 0(4) ;  Store return in callee frame
542 : ADD 5, 4, 0 ;  Push callee frame
543 : LDA 7, 518(0) ;  Call length
544 : LD 1, 2(5) ;  Load function result
545 : LDC 2, 3(0) ;  Caller frame size
546 : SUB 5, 5, 2 ;  Pop back to caller
547 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
548 : LDC 1, 1(0) ;  Load integer-literal value into R1
549 : ADD 2, 1, 0 ;  Move left operand to R2
550 : ADD 1, 3, 0 ;  Restore right operand into R1
551 : ADD 1, 2, 1 ;  R1 = left + right
552 : ST 1, 2(5) ;  Store result into current frame's return slot
553 : ST 1, 2(5) ;  Store function result into stack frame
554 : LD 6, 0(5) ;  Load return address
555 : LDA 7, 0(6) ;  Return to caller
556 : LD 1, 1(5) ;  Load parameter 'r' into R1
557 : ADD 3, 1, 0 ;  Move right operand to R3
558 : LD 1, 1(5) ;  Load parameter 'r' into R1
559 : ADD 2, 1, 0 ;  Move left operand to R2
560 : ADD 1, 3, 0 ;  Restore right operand into R1
561 : MUL 1, 2, 1 ;  R1 = left * right
562 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
563 : LD 1, 2(5) ;  Load parameter 'n' into R1
564 : ADD 2, 1, 0 ;  Move left operand to R2
565 : ADD 1, 3, 0 ;  Restore right operand into R1
566 : SUB 1, 2, 1 ;  left - right for equality check
567 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
568 : LDC 1, 0(0) ;  false
569 : LDA 7, 1(7) ;  skip setting true
570 : LDC 1, 1(0) ;  true
571 : ST 1, 3(5) ;  Store result into current frame's return slot
572 : ST 1, 3(5) ;  Store function result into stack frame
573 : LD 6, 0(5) ;  Load return address
574 : LDA 7, 0(6) ;  Return to caller
575 : LDC 1, 2(0) ;  Load integer-literal value into R1
576 : ADD 3, 1, 0 ;  Move right operand to R3
577 : LD 1, 1(5) ;  Load parameter 'n' into R1
578 : ADD 2, 1, 0 ;  Move left operand to R2
579 : ADD 1, 3, 0 ;  Restore right operand into R1
580 : DIV 1, 2, 1 ;  R1 = left / right
581 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
582 : LDC 1, 2(0) ;  Load integer-literal value into R1
583 : ADD 2, 1, 0 ;  Move left operand to R2
584 : ADD 1, 3, 0 ;  Restore right operand into R1
585 : MUL 1, 2, 1 ;  R1 = left * right
586 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
587 : LD 1, 1(5) ;  Load parameter 'n' into R1
588 : ADD 2, 1, 0 ;  Move left operand to R2
589 : ADD 1, 3, 0 ;  Restore right operand into R1
590 : SUB 1, 2, 1 ;  left - right for equality check
591 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
592 : LDC 1, 0(0) ;  false
593 : LDA 7, 1(7) ;  skip setting true
594 : LDC 1, 1(0) ;  true
595 : ST 1, 2(5) ;  Store result into current frame's return slot
596 : ST 1, 2(5) ;  Store function result into stack frame
597 : LD 6, 0(5) ;  Load return address
598 : LDA 7, 0(6) ;  Return to caller
599 : LDA 4, 4(5) ;  Base of callee frame
600 : LD 1, 4(5) ;  Load parameter 'mid' into R1
601 : ADD 3, 1, 0 ;  Move right operand to R3
602 : LD 1, 4(5) ;  Load parameter 'mid' into R1
603 : ADD 2, 1, 0 ;  Move left operand to R2
604 : ADD 1, 3, 0 ;  Restore right operand into R1
605 : MUL 1, 2, 1 ;  R1 = left * right
606 : ST 1, 1(4) ;  Store argument 0 in callee
607 : LD 1, 1(5) ;  Load parameter 'n' into R1
608 : ST 1, 2(4) ;  Store argument 1 in callee
609 : LDA 6, 613(0) ;  Return address
610 : ST 6, 0(4) ;  Store return in callee frame
611 : ADD 5, 4, 0 ;  Push callee frame
612 : LDA 7, 752(0) ;  Call LE
613 : LD 1, 3(5) ;  Load function result
614 : LDC 2, 4(0) ;  Caller frame size
615 : SUB 5, 5, 2 ;  Pop back to caller
616 : JEQ 1, 633(0) ;  If condition is false, jump to ELSE
617 : LDA 4, 5(5) ;  Base of callee frame
618 : LD 1, 1(5) ;  Load parameter 'n' into R1
619 : ST 1, 1(4) ;  Store argument 0 in callee
620 : LD 1, 4(5) ;  Load parameter 'mid' into R1
621 : ST 1, 2(4) ;  Store argument 1 in callee
622 : LD 1, 3(5) ;  Load parameter 'high' into R1
623 : ST 1, 3(4) ;  Store argument 2 in callee
624 : LDA 6, 628(0) ;  Return address
625 : ST 6, 0(4) ;  Store return in callee frame
626 : ADD 5, 4, 0 ;  Push callee frame
627 : LDA 7, 651(0) ;  Call SQRTSEARCH
628 : LD 1, 4(5) ;  Load function result
629 : LDC 2, 5(0) ;  Caller frame size
630 : SUB 5, 5, 2 ;  Pop back to caller
631 : ST 1, 5(5) ;  Store result into caller’s frame
632 : LDA 7, 648(0) ;  Skip ELSE block
633 : LDA 4, 5(5) ;  Base of callee frame
634 : LD 1, 1(5) ;  Load parameter 'n' into R1
635 : ST 1, 1(4) ;  Store argument 0 in callee
636 : LD 1, 2(5) ;  Load parameter 'low' into R1
637 : ST 1, 2(4) ;  Store argument 1 in callee
638 : LD 1, 4(5) ;  Load parameter 'mid' into R1
639 : ST 1, 3(4) ;  Store argument 2 in callee
640 : LDA 6, 644(0) ;  Return address
641 : ST 6, 0(4) ;  Store return in callee frame
642 : ADD 5, 4, 0 ;  Push callee frame
643 : LDA 7, 651(0) ;  Call SQRTSEARCH
644 : LD 1, 4(5) ;  Load function result
645 : LDC 2, 5(0) ;  Caller frame size
646 : SUB 5, 5, 2 ;  Pop back to caller
647 : ST 1, 5(5) ;  Store result into caller’s frame
648 : ST 1, 5(5) ;  Store function result into stack frame
649 : LD 6, 0(5) ;  Load return address
650 : LDA 7, 0(6) ;  Return to caller
651 : LDA 4, 4(5) ;  Base of callee frame
652 : LD 1, 3(5) ;  Load parameter 'high' into R1
653 : ST 1, 1(4) ;  Store argument 0 in callee
654 : LDC 1, 1(0) ;  Load integer-literal value into R1
655 : ADD 3, 1, 0 ;  Move right operand to R3
656 : LD 1, 2(5) ;  Load parameter 'low' into R1
657 : ADD 2, 1, 0 ;  Move left operand to R2
658 : ADD 1, 3, 0 ;  Restore right operand into R1
659 : ADD 1, 2, 1 ;  R1 = left + right
660 : ST 1, 2(4) ;  Store argument 1 in callee
661 : LDA 6, 665(0) ;  Return address
662 : ST 6, 0(4) ;  Store return in callee frame
663 : ADD 5, 4, 0 ;  Push callee frame
664 : LDA 7, 752(0) ;  Call LE
665 : LD 1, 3(5) ;  Load function result
666 : LDC 2, 4(0) ;  Caller frame size
667 : SUB 5, 5, 2 ;  Pop back to caller
668 : JEQ 1, 706(0) ;  If condition is false, jump to ELSE
669 : LDA 4, 4(5) ;  Base of callee frame
670 : LD 1, 2(5) ;  Load parameter 'low' into R1
671 : ADD 3, 1, 0 ;  Move right operand to R3
672 : LD 1, 2(5) ;  Load parameter 'low' into R1
673 : ADD 2, 1, 0 ;  Move left operand to R2
674 : ADD 1, 3, 0 ;  Restore right operand into R1
675 : MUL 1, 2, 1 ;  R1 = left * right
676 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
677 : LD 1, 1(5) ;  Load parameter 'n' into R1
678 : ADD 2, 1, 0 ;  Move left operand to R2
679 : ADD 1, 3, 0 ;  Restore right operand into R1
680 : SUB 1, 2, 1 ;  R1 = left - right
681 : ST 1, 1(4) ;  Store argument 0 in callee
682 : LD 1, 3(5) ;  Load parameter 'high' into R1
683 : ADD 3, 1, 0 ;  Move right operand to R3
684 : LD 1, 3(5) ;  Load parameter 'high' into R1
685 : ADD 2, 1, 0 ;  Move left operand to R2
686 : ADD 1, 3, 0 ;  Restore right operand into R1
687 : MUL 1, 2, 1 ;  R1 = left * right
688 : ADD 2, 1, 0 ;  Move left operand to R2
689 : LD 1, 1(5) ;  Load parameter 'n' into R1
690 : SUB 1, 2, 1 ;  R1 = left - right
691 : ST 1, 2(4) ;  Store argument 1 in callee
692 : LDA 6, 696(0) ;  Return address
693 : ST 6, 0(4) ;  Store return in callee frame
694 : ADD 5, 4, 0 ;  Push callee frame
695 : LDA 7, 752(0) ;  Call LE
696 : LD 1, 3(5) ;  Load function result
697 : LDC 2, 4(0) ;  Caller frame size
698 : SUB 5, 5, 2 ;  Pop back to caller
699 : JEQ 1, 703(0) ;  If condition is false, jump to ELSE
700 : LD 1, 2(5) ;  Load parameter 'low' into R1
701 : ST 1, 4(5) ;  Store result into current frame's return slot
702 : LDA 7, 705(0) ;  Skip ELSE block
703 : LD 1, 3(5) ;  Load parameter 'high' into R1
704 : ST 1, 4(5) ;  Store result into current frame's return slot
705 : LDA 7, 731(0) ;  Skip ELSE block
706 : LDA 4, 6(5) ;  Base of callee frame
707 : LD 1, 1(5) ;  Load parameter 'n' into R1
708 : ST 1, 1(4) ;  Store argument 0 in callee
709 : LD 1, 2(5) ;  Load parameter 'low' into R1
710 : ST 1, 2(4) ;  Store argument 1 in callee
711 : LD 1, 3(5) ;  Load parameter 'high' into R1
712 : ST 1, 3(4) ;  Store argument 2 in callee
713 : LD 1, 3(5) ;  Load parameter 'high' into R1
714 : ADD 3, 1, 0 ;  Move right operand to R3
715 : LD 1, 2(5) ;  Load parameter 'low' into R1
716 : ADD 2, 1, 0 ;  Move left operand to R2
717 : ADD 1, 3, 0 ;  Restore right operand into R1
718 : ADD 1, 2, 1 ;  R1 = left + right
719 : ADD 2, 1, 0 ;  Move left operand to R2
720 : LDC 1, 2(0) ;  Load integer-literal value into R1
721 : DIV 1, 2, 1 ;  R1 = left / right
722 : ST 1, 4(4) ;  Store argument 3 in callee
723 : LDA 6, 727(0) ;  Return address
724 : ST 6, 0(4) ;  Store return in callee frame
725 : ADD 5, 4, 0 ;  Push callee frame
726 : LDA 7, 599(0) ;  Call SQRTSPLIT
727 : LD 1, 5(5) ;  Load function result
728 : LDC 2, 6(0) ;  Caller frame size
729 : SUB 5, 5, 2 ;  Pop back to caller
730 : ST 1, 4(5) ;  Store result into caller’s frame
731 : ST 1, 4(5) ;  Store function result into stack frame
732 : LD 6, 0(5) ;  Load return address
733 : LDA 7, 0(6) ;  Return to caller
734 : LDA 4, 5(5) ;  Base of callee frame
735 : LD 1, 1(5) ;  Load parameter 'n' into R1
736 : ST 1, 1(4) ;  Store argument 0 in callee
737 : LDC 1, 0(0) ;  Load integer-literal value into R1
738 : ST 1, 2(4) ;  Store argument 1 in callee
739 : LD 1, 1(5) ;  Load parameter 'n' into R1
740 : ST 1, 3(4) ;  Store argument 2 in callee
741 : LDA 6, 745(0) ;  Return address
742 : ST 6, 0(4) ;  Store return in callee frame
743 : ADD 5, 4, 0 ;  Push callee frame
744 : LDA 7, 651(0) ;  Call SQRTSEARCH
745 : LD 1, 4(5) ;  Load function result
746 : LDC 2, 5(0) ;  Caller frame size
747 : SUB 5, 5, 2 ;  Pop back to caller
748 : ST 1, 2(5) ;  Store result into caller’s frame
749 : ST 1, 2(5) ;  Store function result into stack frame
750 : LD 6, 0(5) ;  Load return address
751 : LDA 7, 0(6) ;  Return to caller
752 : LD 1, 2(5) ;  Load parameter 'q' into R1
753 : ADD 3, 1, 0 ;  Move right operand to R3
754 : LD 1, 1(5) ;  Load parameter 'p' into R1
755 : ADD 2, 1, 0 ;  Move left operand to R2
756 : ADD 1, 3, 0 ;  Restore right operand into R1
757 : SUB 1, 2, 1 ;  left - right for less-than check
758 : JLT 1, 2(7) ;  If R1 < 0, jump to true
759 : LDC 1, 0(0) ;  false
760 : LDA 7, 1(7) ;  skip setting true
761 : LDC 1, 1(0) ;  true
762 : ADD 2, 1, 0 ;  Move left operand to R2
763 : LD 1, 2(5) ;  Load parameter 'q' into R1
764 : ADD 3, 1, 0 ;  Move right operand to R3
765 : LD 1, 1(5) ;  Load parameter 'p' into R1
766 : ADD 2, 1, 0 ;  Move left operand to R2
767 : ADD 1, 3, 0 ;  Restore right operand into R1
768 : SUB 1, 2, 1 ;  left - right for equality check
769 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
770 : LDC 1, 0(0) ;  false
771 : LDA 7, 1(7) ;  skip setting true
772 : LDC 1, 1(0) ;  true
773 : ADD 1, 2, 1 ;  R1 = left OR right
774 : ST 1, 3(5) ;  Store result into current frame's return slot
775 : ST 1, 3(5) ;  Store function result into stack frame
776 : LD 6, 0(5) ;  Load return address
777 : LDA 7, 0(6) ;  Return to caller
778 : LD 1, 1(5) ;  Load parameter 'n' into R1
779 : ADD 3, 1, 0 ;  Move right operand to R3
780 : LDC 1, 0(0) ;  Load integer-literal value into R1
781 : ADD 2, 1, 0 ;  Move left operand to R2
782 : ADD 1, 3, 0 ;  Restore right operand into R1
783 : SUB 1, 2, 1 ;  left - right for less-than check
784 : JLT 1, 2(7) ;  If R1 < 0, jump to true
785 : LDC 1, 0(0) ;  false
786 : LDA 7, 1(7) ;  skip setting true
787 : LDC 1, 1(0) ;  true
788 : JEQ 1, 809(0) ;  If condition is false, jump to ELSE
789 : LDC 1, 2(0) ;  Load integer-literal value into R1
790 : ADD 3, 1, 0 ;  Move right operand to R3
791 : LD 1, 1(5) ;  Load parameter 'n' into R1
792 : ADD 2, 1, 0 ;  Move left operand to R2
793 : ADD 1, 3, 0 ;  Restore right operand into R1
794 : DIV 1, 2, 1 ;  R1 = left / right
795 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
796 : LDC 1, 2(0) ;  Load integer-literal value into R1
797 : ADD 2, 1, 0 ;  Move left operand to R2
798 : ADD 1, 3, 0 ;  Restore right operand into R1
799 : MUL 1, 2, 1 ;  R1 = left * right
800 : ADD 2, 1, 0 ;  Move left operand to R2
801 : LD 1, 1(5) ;  Load parameter 'n' into R1
802 : SUB 1, 2, 1 ;  left - right for less-than check
803 : JLT 1, 2(7) ;  If R1 < 0, jump to true
804 : LDC 1, 0(0) ;  false
805 : LDA 7, 1(7) ;  skip setting true
806 : LDC 1, 1(0) ;  true
807 : ST 1, 2(5) ;  Store result into current frame's return slot
808 : LDA 7, 821(0) ;  Skip ELSE block
809 : LDA 4, 3(5) ;  Base of callee frame
810 : LD 1, 1(5) ;  Load parameter 'n' into R1
811 : SUB 1, 0, 1 ;  Negate value in R1
812 : ST 1, 1(4) ;  Store argument 0 in callee
813 : LDA 6, 817(0) ;  Return address
814 : ST 6, 0(4) ;  Store return in callee frame
815 : ADD 5, 4, 0 ;  Push callee frame
816 : LDA 7, 778(0) ;  Call ODD
817 : LD 1, 2(5) ;  Load function result
818 : LDC 2, 3(0) ;  Caller frame size
819 : SUB 5, 5, 2 ;  Pop back to caller
820 : ST 1, 2(5) ;  Store result into caller’s frame
821 : ST 1, 2(5) ;  Store function result into stack frame
822 : LD 6, 0(5) ;  Load return address
823 : LDA 7, 0(6) ;  Return to caller
824 : LDC 1, 0(0) ;  Load integer-literal value into R1
825 : ADD 3, 1, 0 ;  Move right operand to R3
826 : LD 1, 2(5) ;  Load parameter 'n' into R1
827 : ADD 2, 1, 0 ;  Move left operand to R2
828 : ADD 1, 3, 0 ;  Restore right operand into R1
829 : SUB 1, 2, 1 ;  left - right for equality check
830 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
831 : LDC 1, 0(0) ;  false
832 : LDA 7, 1(7) ;  skip setting true
833 : LDC 1, 1(0) ;  true
834 : JEQ 1, 838(0) ;  If condition is false, jump to ELSE
835 : LDC 1, 1(0) ;  Load integer-literal value into R1
836 : ST 1, 3(5) ;  Store result into current frame's return slot
837 : LDA 7, 861(0) ;  Skip ELSE block
838 : LDA 4, 4(5) ;  Base of callee frame
839 : LD 1, 1(5) ;  Load parameter 'm' into R1
840 : ST 1, 1(4) ;  Store argument 0 in callee
841 : LDC 1, 1(0) ;  Load integer-literal value into R1
842 : ADD 3, 1, 0 ;  Move right operand to R3
843 : LD 1, 2(5) ;  Load parameter 'n' into R1
844 : ADD 2, 1, 0 ;  Move left operand to R2
845 : ADD 1, 3, 0 ;  Restore right operand into R1
846 : SUB 1, 2, 1 ;  R1 = left - right
847 : ST 1, 2(4) ;  Store argument 1 in callee
848 : LDA 6, 852(0) ;  Return address
849 : ST 6, 0(4) ;  Store return in callee frame
850 : ADD 5, 4, 0 ;  Push callee frame
851 : LDA 7, 824(0) ;  Call EXP
852 : LD 1, 3(5) ;  Load function result
853 : LDC 2, 4(0) ;  Caller frame size
854 : SUB 5, 5, 2 ;  Pop back to caller
855 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
856 : LD 1, 1(5) ;  Load parameter 'm' into R1
857 : ADD 2, 1, 0 ;  Move left operand to R2
858 : ADD 1, 3, 0 ;  Restore right operand into R1
859 : MUL 1, 2, 1 ;  R1 = left * right
860 : ST 1, 3(5) ;  Store result into current frame's return slot
861 : ST 1, 3(5) ;  Store function result into stack frame
862 : LD 6, 0(5) ;  Load return address
863 : LDA 7, 0(6) ;  Return to caller
864 : LD 1, 2(5) ;  Load parameter 'n' into R1
865 : ADD 3, 1, 0 ;  Move right operand to R3
866 : LD 1, 1(5) ;  Load parameter 'm' into R1
867 : ADD 2, 1, 0 ;  Move left operand to R2
868 : ADD 1, 3, 0 ;  Restore right operand into R1
869 : DIV 1, 2, 1 ;  R1 = left / right
870 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
871 : LD 1, 2(5) ;  Load parameter 'n' into R1
872 : ADD 2, 1, 0 ;  Move left operand to R2
873 : ADD 1, 3, 0 ;  Restore right operand into R1
874 : MUL 1, 2, 1 ;  R1 = left * right
875 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
876 : LD 1, 1(5) ;  Load parameter 'm' into R1
877 : ADD 2, 1, 0 ;  Move left operand to R2
878 : ADD 1, 3, 0 ;  Restore right operand into R1
879 : SUB 1, 2, 1 ;  R1 = left - right
880 : ST 1, 3(5) ;  Store result into current frame's return slot
881 : ST 1, 3(5) ;  Store function result into stack frame
882 : LD 6, 0(5) ;  Load return address
883 : LDA 7, 0(6) ;  Return to caller
