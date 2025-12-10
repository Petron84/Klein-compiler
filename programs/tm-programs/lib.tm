0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDA 3, 3(5) ; Base of callee frame (stable)
13 : LD 1, 1(5) ;  Load parameter 'testArgument' into R1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(3) ; Store return in callee frame (via R3)
17 : ADD 5, 3, 0 ; Push callee frame
18 : LDA 7, 191(0) ; Call SQRT
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : LDA 3, 3(5) ; Base of callee frame (stable)
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(3) ; Store return addr in callee frame
25 : ADD 5, 3, 0 ; Push new frame
26 : LDA 7, 9(0) ; Call print
27 : LDC 2, 3(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop frame
29 : LDA 3, 3(5) ; Base of callee frame (stable)
30 : LD 1, 1(5) ;  Load parameter 'testArgument' into R1
31 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(3) ; Store return in callee frame (via R3)
34 : ADD 5, 3, 0 ; Push callee frame
35 : LDA 7, 208(0) ; Call ODD
36 : LD 1, 2(5) ;  Load function result
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 2(5) ; Store result into caller’s frame
40 : LD 1, 2(5) ;  Load return value into register 1
41 : LD 6, 0(5) ;  Load return address for main function into register 6
42 : LDA 7, 0(6) ;  Jump to return address of main function
43 : LDA 3, 4(5) ; Base of callee frame (stable)
44 : LD 1, 4(5) ;  Load parameter 'mid' into R1
45 : ADD 3, 1, 0 ;  Stash right operand in R3
46 : LD 1, 4(5) ;  Load parameter 'mid' into R1
47 : ADD 2, 1, 0 ;  Move left operand to register 2
48 : ADD 1, 3, 0 ;  Restore right operand from R3
49 : MUL 1, 2, 1 ;  R1 = left * right
50 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
51 : LD 1, 1(5) ;  Load parameter 'n' into R1
52 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(3) ; Store return in callee frame (via R3)
55 : ADD 5, 3, 0 ; Push callee frame
56 : LDA 7, 499(0) ; Call LE
57 : LD 1, 3(5) ;  Load function result
58 : LDC 2, 4(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop back to caller
60 : JEQ 1, 76(0) ;  If condition is false, jump to ELSE
61 : LDA 3, 5(5) ; Base of callee frame (stable)
62 : LD 1, 1(5) ;  Load parameter 'n' into R1
63 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
64 : LD 1, 4(5) ;  Load parameter 'mid' into R1
65 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
66 : LD 1, 3(5) ;  Load parameter 'high' into R1
67 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(3) ; Store return in callee frame (via R3)
70 : ADD 5, 3, 0 ; Push callee frame
71 : LDA 7, 93(0) ; Call SQRTSEARCH
72 : LD 1, 4(5) ;  Load function result
73 : LDC 2, 5(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop back to caller
75 : LDA 7, 90(0) ;  Skip ELSE block
76 : LDA 3, 5(5) ; Base of callee frame (stable)
77 : LD 1, 1(5) ;  Load parameter 'n' into R1
78 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
79 : LD 1, 2(5) ;  Load parameter 'low' into R1
80 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
81 : LD 1, 4(5) ;  Load parameter 'mid' into R1
82 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(3) ; Store return in callee frame (via R3)
85 : ADD 5, 3, 0 ; Push callee frame
86 : LDA 7, 93(0) ; Call SQRTSEARCH
87 : LD 1, 4(5) ;  Load function result
88 : LDC 2, 5(0) ;  Caller frame size
89 : SUB 5, 5, 2 ;  Pop back to caller
90 : ST 1, 5(5) ;  Store function result into stack frame
91 : LD 6, 0(5) ;  Load return address
92 : LDA 7, 0(6) ;  Return to caller
93 : LDA 3, 4(5) ; Base of callee frame (stable)
94 : LD 1, 3(5) ;  Load parameter 'high' into R1
95 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
96 : LDC 1, 1(0) ;  Load integer-literal value into register 1
97 : ADD 3, 1, 0 ;  Stash right operand in R3
98 : LD 1, 2(5) ;  Load parameter 'low' into R1
99 : ADD 2, 1, 0 ;  Move left operand to register 2
100 : ADD 1, 3, 0 ;  Restore right operand from R3
101 : ADD 1, 2, 1 ;  R1 = left + right
102 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(3) ; Store return in callee frame (via R3)
105 : ADD 5, 3, 0 ; Push callee frame
106 : LDA 7, 499(0) ; Call LE
107 : LD 1, 3(5) ;  Load function result
108 : LDC 2, 4(0) ;  Caller frame size
109 : SUB 5, 5, 2 ;  Pop back to caller
110 : JEQ 1, 158(0) ;  If condition is false, jump to ELSE
111 : LDA 3, 4(5) ; Base of callee frame (stable)
112 : LDA 3, 4(5) ; Base of callee frame (stable)
113 : LD 1, 2(5) ;  Load parameter 'low' into R1
114 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
115 : LD 1, 2(5) ;  Load parameter 'low' into R1
116 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(3) ; Store return in callee frame (via R3)
119 : ADD 5, 3, 0 ; Push callee frame
120 : LDA 7, 421(0) ; Call TIMES
121 : LD 1, 3(5) ;  Load function result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop back to caller
124 : ADD 3, 1, 0 ;  Move right operand to register 3
125 : LD 1, 1(5) ;  Load parameter 'n' into R1
126 : ADD 2, 1, 0 ;  Move left operand to register 2
127 : ADD 1, 3, 0 ;  Move right operand to register 1
128 : SUB 1, 2, 1 ;  R1 = left - right
129 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
130 : LDA 3, 4(5) ; Base of callee frame (stable)
131 : LD 1, 3(5) ;  Load parameter 'high' into R1
132 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
133 : LD 1, 3(5) ;  Load parameter 'high' into R1
134 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(3) ; Store return in callee frame (via R3)
137 : ADD 5, 3, 0 ; Push callee frame
138 : LDA 7, 421(0) ; Call TIMES
139 : LD 1, 3(5) ;  Load function result
140 : LDC 2, 4(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop back to caller
142 : ADD 2, 1, 0 ;  Move left operand to register 2
143 : LD 1, 1(5) ;  Load parameter 'n' into R1
144 : SUB 1, 2, 1 ;  R1 = left - right
145 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(3) ; Store return in callee frame (via R3)
148 : ADD 5, 3, 0 ; Push callee frame
149 : LDA 7, 499(0) ; Call LE
150 : LD 1, 3(5) ;  Load function result
151 : LDC 2, 4(0) ;  Caller frame size
152 : SUB 5, 5, 2 ;  Pop back to caller
153 : JEQ 1, 156(0) ;  If condition is false, jump to ELSE
154 : LD 1, 2(5) ;  Load parameter 'low' into R1
155 : LDA 7, 157(0) ;  Skip ELSE block
156 : LD 1, 3(5) ;  Load parameter 'high' into R1
157 : LDA 7, 188(0) ;  Skip ELSE block
158 : LDA 3, 6(5) ; Base of callee frame (stable)
159 : LD 1, 1(5) ;  Load parameter 'n' into R1
160 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
161 : LD 1, 2(5) ;  Load parameter 'low' into R1
162 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
163 : LD 1, 3(5) ;  Load parameter 'high' into R1
164 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
165 : LDA 3, 4(5) ; Base of callee frame (stable)
166 : LD 1, 2(5) ;  Load parameter 'low' into R1
167 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
168 : LD 1, 3(5) ;  Load parameter 'high' into R1
169 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
170 : LDA 6, 174(0) ; Return address
171 : ST 6, 0(3) ; Store return in callee frame (via R3)
172 : ADD 5, 3, 0 ; Push callee frame
173 : LDA 7, 439(0) ; Call PLUS
174 : LD 1, 3(5) ;  Load function result
175 : LDC 2, 4(0) ;  Caller frame size
176 : SUB 5, 5, 2 ;  Pop back to caller
177 : ADD 2, 1, 0 ;  Move left operand to register 2
178 : LDC 1, 2(0) ;  Load integer-literal value into register 1
179 : DIV 1, 2, 1 ;  R1 = left / right
180 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(3) ; Store return in callee frame (via R3)
183 : ADD 5, 3, 0 ; Push callee frame
184 : LDA 7, 43(0) ; Call SQRTSPLIT
185 : LD 1, 5(5) ;  Load function result
186 : LDC 2, 6(0) ;  Caller frame size
187 : SUB 5, 5, 2 ;  Pop back to caller
188 : ST 1, 4(5) ;  Store function result into stack frame
189 : LD 6, 0(5) ;  Load return address
190 : LDA 7, 0(6) ;  Return to caller
191 : LDA 3, 5(5) ; Base of callee frame (stable)
192 : LD 1, 1(5) ;  Load parameter 'n' into R1
193 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
194 : LDC 1, 0(0) ;  Load integer-literal value into register 1
195 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
196 : LD 1, 1(5) ;  Load parameter 'n' into R1
197 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(3) ; Store return in callee frame (via R3)
200 : ADD 5, 3, 0 ; Push callee frame
201 : LDA 7, 93(0) ; Call SQRTSEARCH
202 : LD 1, 4(5) ;  Load function result
203 : LDC 2, 5(0) ;  Caller frame size
204 : SUB 5, 5, 2 ;  Pop back to caller
205 : ST 1, 2(5) ;  Store function result into stack frame
206 : LD 6, 0(5) ;  Load return address
207 : LDA 7, 0(6) ;  Return to caller
208 : LDA 3, 4(5) ; Base of callee frame (stable)
209 : LDC 1, 0(0) ;  Load integer-literal value into register 1
210 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
211 : LD 1, 1(5) ;  Load parameter 'n' into R1
212 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(3) ; Store return in callee frame (via R3)
215 : ADD 5, 3, 0 ; Push callee frame
216 : LDA 7, 499(0) ; Call LE
217 : LD 1, 3(5) ;  Load function result
218 : LDC 2, 4(0) ;  Caller frame size
219 : SUB 5, 5, 2 ;  Pop back to caller
220 : JEQ 1, 259(0) ;  If condition is false, jump to ELSE
221 : LDA 3, 4(5) ; Base of callee frame (stable)
222 : LD 1, 1(5) ;  Load parameter 'n' into R1
223 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
224 : LDA 3, 4(5) ; Base of callee frame (stable)
225 : LD 1, 1(5) ;  Load parameter 'n' into R1
226 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
227 : LDC 1, 2(0) ;  Load integer-literal value into register 1
228 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
229 : LDA 6, 233(0) ; Return address
230 : ST 6, 0(3) ; Store return in callee frame (via R3)
231 : ADD 5, 3, 0 ; Push callee frame
232 : LDA 7, 412(0) ; Call DIV
233 : LD 1, 3(5) ;  Load function result
234 : LDC 2, 4(0) ;  Caller frame size
235 : SUB 5, 5, 2 ;  Pop back to caller
236 : ADD 2, 1, 0 ;  Move left operand to register 2
237 : LDA 3, 4(5) ; Base of callee frame (stable)
238 : LD 1, 1(5) ;  Load parameter 'n' into R1
239 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
240 : LDC 1, 2(0) ;  Load integer-literal value into register 1
241 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
242 : LDA 6, 246(0) ; Return address
243 : ST 6, 0(3) ; Store return in callee frame (via R3)
244 : ADD 5, 3, 0 ; Push callee frame
245 : LDA 7, 412(0) ; Call DIV
246 : LD 1, 3(5) ;  Load function result
247 : LDC 2, 4(0) ;  Caller frame size
248 : SUB 5, 5, 2 ;  Pop back to caller
249 : ADD 1, 2, 1 ;  R1 = left + right
250 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
251 : LDA 6, 255(0) ; Return address
252 : ST 6, 0(3) ; Store return in callee frame (via R3)
253 : ADD 5, 3, 0 ; Push callee frame
254 : LDA 7, 465(0) ; Call GT
255 : LD 1, 3(5) ;  Load function result
256 : LDC 2, 4(0) ;  Caller frame size
257 : SUB 5, 5, 2 ;  Pop back to caller
258 : LDA 7, 323(0) ;  Skip ELSE block
259 : LDA 3, 4(5) ; Base of callee frame (stable)
260 : LDA 3, 3(5) ; Base of callee frame (stable)
261 : LD 1, 1(5) ;  Load parameter 'n' into R1
262 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
263 : LDA 6, 267(0) ; Return address
264 : ST 6, 0(3) ; Store return in callee frame (via R3)
265 : ADD 5, 3, 0 ; Push callee frame
266 : LDA 7, 407(0) ; Call NEG
267 : LD 1, 2(5) ;  Load function result
268 : LDC 2, 3(0) ;  Caller frame size
269 : SUB 5, 5, 2 ;  Pop back to caller
270 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
271 : LDA 3, 4(5) ; Base of callee frame (stable)
272 : LDA 3, 3(5) ; Base of callee frame (stable)
273 : LD 1, 1(5) ;  Load parameter 'n' into R1
274 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(3) ; Store return in callee frame (via R3)
277 : ADD 5, 3, 0 ; Push callee frame
278 : LDA 7, 407(0) ; Call NEG
279 : LD 1, 2(5) ;  Load function result
280 : LDC 2, 3(0) ;  Caller frame size
281 : SUB 5, 5, 2 ;  Pop back to caller
282 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
283 : LDC 1, 2(0) ;  Load integer-literal value into register 1
284 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
285 : LDA 6, 289(0) ; Return address
286 : ST 6, 0(3) ; Store return in callee frame (via R3)
287 : ADD 5, 3, 0 ; Push callee frame
288 : LDA 7, 412(0) ; Call DIV
289 : LD 1, 3(5) ;  Load function result
290 : LDC 2, 4(0) ;  Caller frame size
291 : SUB 5, 5, 2 ;  Pop back to caller
292 : ADD 2, 1, 0 ;  Move left operand to register 2
293 : LDA 3, 4(5) ; Base of callee frame (stable)
294 : LDA 3, 3(5) ; Base of callee frame (stable)
295 : LD 1, 1(5) ;  Load parameter 'n' into R1
296 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(3) ; Store return in callee frame (via R3)
299 : ADD 5, 3, 0 ; Push callee frame
300 : LDA 7, 407(0) ; Call NEG
301 : LD 1, 2(5) ;  Load function result
302 : LDC 2, 3(0) ;  Caller frame size
303 : SUB 5, 5, 2 ;  Pop back to caller
304 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
305 : LDC 1, 2(0) ;  Load integer-literal value into register 1
306 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(3) ; Store return in callee frame (via R3)
309 : ADD 5, 3, 0 ; Push callee frame
310 : LDA 7, 412(0) ; Call DIV
311 : LD 1, 3(5) ;  Load function result
312 : LDC 2, 4(0) ;  Caller frame size
313 : SUB 5, 5, 2 ;  Pop back to caller
314 : ADD 1, 2, 1 ;  R1 = left + right
315 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
316 : LDA 6, 320(0) ; Return address
317 : ST 6, 0(3) ; Store return in callee frame (via R3)
318 : ADD 5, 3, 0 ; Push callee frame
319 : LDA 7, 465(0) ; Call GT
320 : LD 1, 3(5) ;  Load function result
321 : LDC 2, 4(0) ;  Caller frame size
322 : SUB 5, 5, 2 ;  Pop back to caller
323 : ST 1, 2(5) ;  Store function result into stack frame
324 : LD 6, 0(5) ;  Load return address
325 : LDA 7, 0(6) ;  Return to caller
326 : LDC 1, 0(0) ;  Load integer-literal value into register 1
327 : ADD 3, 1, 0 ;  Stash right operand in R3
328 : LD 1, 2(5) ;  Load parameter 'n' into R1
329 : ADD 2, 1, 0 ;  Move left operand to register 2
330 : ADD 1, 3, 0 ;  Restore right operand from R3
331 : SUB 1, 2, 1 ;  left - right for equality check
332 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
333 : LDC 1, 0(0) ;  false
334 : LDA 7, 1(7) ;  skip setting true
335 : LDC 1, 1(0) ;  true
336 : JEQ 1, 339(0) ;  If condition is false, jump to ELSE
337 : LDC 1, 1(0) ;  Load integer-literal value into register 1
338 : LDA 7, 361(0) ;  Skip ELSE block
339 : LDA 3, 4(5) ; Base of callee frame (stable)
340 : LD 1, 1(5) ;  Load parameter 'm' into R1
341 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
342 : LDC 1, 1(0) ;  Load integer-literal value into register 1
343 : ADD 3, 1, 0 ;  Stash right operand in R3
344 : LD 1, 2(5) ;  Load parameter 'n' into R1
345 : ADD 2, 1, 0 ;  Move left operand to register 2
346 : ADD 1, 3, 0 ;  Restore right operand from R3
347 : SUB 1, 2, 1 ;  R1 = left - right
348 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(3) ; Store return in callee frame (via R3)
351 : ADD 5, 3, 0 ; Push callee frame
352 : LDA 7, 326(0) ; Call EXP
353 : LD 1, 3(5) ;  Load function result
354 : LDC 2, 4(0) ;  Caller frame size
355 : SUB 5, 5, 2 ;  Pop back to caller
356 : ADD 3, 1, 0 ;  Move right operand to register 3
357 : LD 1, 1(5) ;  Load parameter 'm' into R1
358 : ADD 2, 1, 0 ;  Move left operand to register 2
359 : ADD 1, 3, 0 ;  Move right operand to register 1
360 : MUL 1, 2, 1 ;  R1 = left * right
361 : ST 1, 3(5) ;  Store function result into stack frame
362 : LD 6, 0(5) ;  Load return address
363 : LDA 7, 0(6) ;  Return to caller
364 : LD 1, 2(5) ;  Load parameter 'n' into R1
365 : ADD 3, 1, 0 ;  Stash right operand in R3
366 : LD 1, 1(5) ;  Load parameter 'm' into R1
367 : ADD 2, 1, 0 ;  Move left operand to register 2
368 : ADD 1, 3, 0 ;  Restore right operand from R3
369 : DIV 1, 2, 1 ;  R1 = left / right
370 : ADD 2, 1, 0 ;  Move left operand to register 2
371 : LD 1, 2(5) ;  Load parameter 'n' into R1
372 : MUL 1, 2, 1 ;  R1 = left * right
373 : ADD 3, 1, 0 ;  Move right operand to register 3
374 : LD 1, 1(5) ;  Load parameter 'm' into R1
375 : ADD 2, 1, 0 ;  Move left operand to register 2
376 : ADD 1, 3, 0 ;  Move right operand to register 1
377 : SUB 1, 2, 1 ;  R1 = left - right
378 : ST 1, 3(5) ;  Store function result into stack frame
379 : LD 6, 0(5) ;  Load return address
380 : LDA 7, 0(6) ;  Return to caller
381 : LD 1, 1(5) ;  Load parameter 'n' into R1
382 : ADD 3, 1, 0 ;  Stash right operand in R3
383 : LDC 1, 0(0) ;  Load integer-literal value into register 1
384 : ADD 2, 1, 0 ;  Move left operand to register 2
385 : ADD 1, 3, 0 ;  Restore right operand from R3
386 : SUB 1, 2, 1 ;  left - right for less-than check
387 : JLT 1, 2(7) ;  If R1 < 0, jump to true
388 : LDC 1, 0(0) ;  false
389 : LDA 7, 1(7) ;  skip setting true
390 : LDC 1, 1(0) ;  true
391 : JEQ 1, 394(0) ;  If condition is false, jump to ELSE
392 : LD 1, 1(5) ;  Load parameter 'n' into R1
393 : LDA 7, 404(0) ;  Skip ELSE block
394 : LDA 3, 3(5) ; Base of callee frame (stable)
395 : LD 1, 1(5) ;  Load parameter 'n' into R1
396 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(3) ; Store return in callee frame (via R3)
399 : ADD 5, 3, 0 ; Push callee frame
400 : LDA 7, 407(0) ; Call NEG
401 : LD 1, 2(5) ;  Load function result
402 : LDC 2, 3(0) ;  Caller frame size
403 : SUB 5, 5, 2 ;  Pop back to caller
404 : ST 1, 2(5) ;  Store function result into stack frame
405 : LD 6, 0(5) ;  Load return address
406 : LDA 7, 0(6) ;  Return to caller
407 : LD 1, 1(5) ;  Load parameter 'n' into R1
408 : SUB 1, 0, 1 ;  Negate value in R1
409 : ST 1, 2(5) ;  Store function result into stack frame
410 : LD 6, 0(5) ;  Load return address
411 : LDA 7, 0(6) ;  Return to caller
412 : LD 1, 2(5) ;  Load parameter 'q' into R1
413 : ADD 3, 1, 0 ;  Stash right operand in R3
414 : LD 1, 1(5) ;  Load parameter 'p' into R1
415 : ADD 2, 1, 0 ;  Move left operand to register 2
416 : ADD 1, 3, 0 ;  Restore right operand from R3
417 : DIV 1, 2, 1 ;  R1 = left / right
418 : ST 1, 3(5) ;  Store function result into stack frame
419 : LD 6, 0(5) ;  Load return address
420 : LDA 7, 0(6) ;  Return to caller
421 : LD 1, 2(5) ;  Load parameter 'q' into R1
422 : ADD 3, 1, 0 ;  Stash right operand in R3
423 : LD 1, 1(5) ;  Load parameter 'p' into R1
424 : ADD 2, 1, 0 ;  Move left operand to register 2
425 : ADD 1, 3, 0 ;  Restore right operand from R3
426 : MUL 1, 2, 1 ;  R1 = left * right
427 : ST 1, 3(5) ;  Store function result into stack frame
428 : LD 6, 0(5) ;  Load return address
429 : LDA 7, 0(6) ;  Return to caller
430 : LD 1, 2(5) ;  Load parameter 'q' into R1
431 : ADD 3, 1, 0 ;  Stash right operand in R3
432 : LD 1, 1(5) ;  Load parameter 'p' into R1
433 : ADD 2, 1, 0 ;  Move left operand to register 2
434 : ADD 1, 3, 0 ;  Restore right operand from R3
435 : SUB 1, 2, 1 ;  R1 = left - right
436 : ST 1, 3(5) ;  Store function result into stack frame
437 : LD 6, 0(5) ;  Load return address
438 : LDA 7, 0(6) ;  Return to caller
439 : LD 1, 2(5) ;  Load parameter 'q' into R1
440 : ADD 3, 1, 0 ;  Stash right operand in R3
441 : LD 1, 1(5) ;  Load parameter 'p' into R1
442 : ADD 2, 1, 0 ;  Move left operand to register 2
443 : ADD 1, 3, 0 ;  Restore right operand from R3
444 : ADD 1, 2, 1 ;  R1 = left + right
445 : ST 1, 3(5) ;  Store function result into stack frame
446 : LD 6, 0(5) ;  Load return address
447 : LDA 7, 0(6) ;  Return to caller
448 : LD 1, 1(5) ;  Load parameter 'p' into R1
449 : JEQ 1, 452(0) ;  If condition is false, jump to ELSE
450 : LD 1, 2(5) ;  Load parameter 'q' into R1
451 : LDA 7, 453(0) ;  Skip ELSE block
452 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
453 : ST 1, 3(5) ;  Store function result into stack frame
454 : LD 6, 0(5) ;  Load return address
455 : LDA 7, 0(6) ;  Return to caller
456 : LD 1, 2(5) ;  Load parameter 'q' into R1
457 : ADD 3, 1, 0 ;  Stash right operand in R3
458 : LD 1, 1(5) ;  Load parameter 'p' into R1
459 : ADD 2, 1, 0 ;  Move left operand to register 2
460 : ADD 1, 3, 0 ;  Restore right operand from R3
461 : ADD 1, 2, 1 ;  R1 = left OR right
462 : ST 1, 3(5) ;  Store function result into stack frame
463 : LD 6, 0(5) ;  Load return address
464 : LDA 7, 0(6) ;  Return to caller
465 : LDA 3, 4(5) ; Base of callee frame (stable)
466 : LD 1, 1(5) ;  Load parameter 'p' into R1
467 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
468 : LD 1, 2(5) ;  Load parameter 'q' into R1
469 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
470 : LDA 6, 474(0) ; Return address
471 : ST 6, 0(3) ; Store return in callee frame (via R3)
472 : ADD 5, 3, 0 ; Push callee frame
473 : LDA 7, 499(0) ; Call LE
474 : LD 1, 3(5) ;  Load function result
475 : LDC 2, 4(0) ;  Caller frame size
476 : SUB 5, 5, 2 ;  Pop back to caller
477 : LDC 2, 1(0) ;  Load 1 into R2
478 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
479 : ST 1, 3(5) ;  Store function result into stack frame
480 : LD 6, 0(5) ;  Load return address
481 : LDA 7, 0(6) ;  Return to caller
482 : LDA 3, 4(5) ; Base of callee frame (stable)
483 : LD 1, 1(5) ;  Load parameter 'p' into R1
484 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
485 : LD 1, 2(5) ;  Load parameter 'q' into R1
486 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
487 : LDA 6, 491(0) ; Return address
488 : ST 6, 0(3) ; Store return in callee frame (via R3)
489 : ADD 5, 3, 0 ; Push callee frame
490 : LDA 7, 558(0) ; Call LT
491 : LD 1, 3(5) ;  Load function result
492 : LDC 2, 4(0) ;  Caller frame size
493 : SUB 5, 5, 2 ;  Pop back to caller
494 : LDC 2, 1(0) ;  Load 1 into R2
495 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
496 : ST 1, 3(5) ;  Store function result into stack frame
497 : LD 6, 0(5) ;  Load return address
498 : LDA 7, 0(6) ;  Return to caller
499 : LDA 3, 4(5) ; Base of callee frame (stable)
500 : LD 1, 1(5) ;  Load parameter 'p' into R1
501 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
502 : LD 1, 2(5) ;  Load parameter 'q' into R1
503 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
504 : LDA 6, 508(0) ; Return address
505 : ST 6, 0(3) ; Store return in callee frame (via R3)
506 : ADD 5, 3, 0 ; Push callee frame
507 : LDA 7, 558(0) ; Call LT
508 : LD 1, 3(5) ;  Load function result
509 : LDC 2, 4(0) ;  Caller frame size
510 : SUB 5, 5, 2 ;  Pop back to caller
511 : ADD 2, 1, 0 ;  Move left operand to register 2
512 : LDA 3, 4(5) ; Base of callee frame (stable)
513 : LD 1, 1(5) ;  Load parameter 'p' into R1
514 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
515 : LD 1, 2(5) ;  Load parameter 'q' into R1
516 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
517 : LDA 6, 521(0) ; Return address
518 : ST 6, 0(3) ; Store return in callee frame (via R3)
519 : ADD 5, 3, 0 ; Push callee frame
520 : LDA 7, 545(0) ; Call EQ
521 : LD 1, 3(5) ;  Load function result
522 : LDC 2, 4(0) ;  Caller frame size
523 : SUB 5, 5, 2 ;  Pop back to caller
524 : ADD 1, 2, 1 ;  R1 = left OR right
525 : ST 1, 3(5) ;  Store function result into stack frame
526 : LD 6, 0(5) ;  Load return address
527 : LDA 7, 0(6) ;  Return to caller
528 : LDA 3, 4(5) ; Base of callee frame (stable)
529 : LD 1, 1(5) ;  Load parameter 'p' into R1
530 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
531 : LD 1, 2(5) ;  Load parameter 'q' into R1
532 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
533 : LDA 6, 537(0) ; Return address
534 : ST 6, 0(3) ; Store return in callee frame (via R3)
535 : ADD 5, 3, 0 ; Push callee frame
536 : LDA 7, 545(0) ; Call EQ
537 : LD 1, 3(5) ;  Load function result
538 : LDC 2, 4(0) ;  Caller frame size
539 : SUB 5, 5, 2 ;  Pop back to caller
540 : LDC 2, 1(0) ;  Load 1 into R2
541 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
542 : ST 1, 3(5) ;  Store function result into stack frame
543 : LD 6, 0(5) ;  Load return address
544 : LDA 7, 0(6) ;  Return to caller
545 : LD 1, 2(5) ;  Load parameter 'q' into R1
546 : ADD 3, 1, 0 ;  Stash right operand in R3
547 : LD 1, 1(5) ;  Load parameter 'p' into R1
548 : ADD 2, 1, 0 ;  Move left operand to register 2
549 : ADD 1, 3, 0 ;  Restore right operand from R3
550 : SUB 1, 2, 1 ;  left - right for equality check
551 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
552 : LDC 1, 0(0) ;  false
553 : LDA 7, 1(7) ;  skip setting true
554 : LDC 1, 1(0) ;  true
555 : ST 1, 3(5) ;  Store function result into stack frame
556 : LD 6, 0(5) ;  Load return address
557 : LDA 7, 0(6) ;  Return to caller
558 : LD 1, 2(5) ;  Load parameter 'q' into R1
559 : ADD 3, 1, 0 ;  Stash right operand in R3
560 : LD 1, 1(5) ;  Load parameter 'p' into R1
561 : ADD 2, 1, 0 ;  Move left operand to register 2
562 : ADD 1, 3, 0 ;  Restore right operand from R3
563 : SUB 1, 2, 1 ;  left - right for less-than check
564 : JLT 1, 2(7) ;  If R1 < 0, jump to true
565 : LDC 1, 0(0) ;  false
566 : LDA 7, 1(7) ;  skip setting true
567 : LDC 1, 1(0) ;  true
568 : ST 1, 3(5) ;  Store function result into stack frame
569 : LD 6, 0(5) ;  Load return address
570 : LDA 7, 0(6) ;  Return to caller
571 : LDC 1, 2147483647(0) ;  Load integer-literal value into register 1
572 : SUB 1, 0, 1 ;  Negate value in R1
573 : ADD 2, 1, 0 ;  Move left operand to register 2
574 : LDC 1, 1(0) ;  Load integer-literal value into register 1
575 : SUB 1, 2, 1 ;  R1 = left - right
576 : ST 1, 1(5) ;  Store function result into stack frame
577 : LD 6, 0(5) ;  Load return address
578 : LDA 7, 0(6) ;  Return to caller
579 : LDC 1, 2147483647(0) ;  Load integer-literal value into register 1
580 : ST 1, 1(5) ;  Store function result into stack frame
581 : LD 6, 0(5) ;  Load return address
582 : LDA 7, 0(6) ;  Return to caller
