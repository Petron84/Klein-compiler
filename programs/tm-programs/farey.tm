0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into register
7 : ST 2, 3(5) ;  Store the argument into stack frame
8 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
9 : ST 6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution
13 : OUT 1, 0, 0 ;  Hardcoded print function
14 : LD 6, 0(5) ;  Load return address from stack frame
15 : LDA 7, 0(6) ;  Jump to return address
16 : LDA 4, 5(5) ;  Base of callee frame
17 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
18 : ST 1, 1(4) ;  Store argument 0 in callee
19 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
20 : ST 1, 2(4) ;  Store argument 1 in callee
21 : LD 1, 3(5) ;  Load parameter 'N' into R1
22 : ST 1, 3(4) ;  Store argument 2 in callee
23 : LDA 6, 27(0) ;  Return address
24 : ST 6, 0(4) ;  Store return in callee frame
25 : ADD 5, 4, 0 ;  Push callee frame
26 : LDA 7, 552(0) ;  Call fareyNum
27 : LD 1, 4(5) ;  Load function result
28 : LDC 2, 5(0) ;  Caller frame size
29 : SUB 5, 5, 2 ;  Pop back to caller
30 : LDA 4, 3(5) ;  Base of callee frame
31 : LDA 6, 35(0) ;  Return address
32 : ST 6, 0(4) ;  Store return addr in callee frame
33 : ADD 5, 4, 0 ;  Push new frame
34 : LDA 7, 13(0) ;  Call print
35 : LDC 2, 3(0) ;  Caller frame size
36 : SUB 5, 5, 2 ;  Pop frame
37 : LDA 4, 5(5) ;  Base of callee frame
38 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
39 : ST 1, 1(4) ;  Store argument 0 in callee
40 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
41 : ST 1, 2(4) ;  Store argument 1 in callee
42 : LD 1, 3(5) ;  Load parameter 'N' into R1
43 : ST 1, 3(4) ;  Store argument 2 in callee
44 : LDA 6, 48(0) ;  Return address
45 : ST 6, 0(4) ;  Store return in callee frame
46 : ADD 5, 4, 0 ;  Push callee frame
47 : LDA 7, 438(0) ;  Call fareyDen
48 : LD 1, 4(5) ;  Load function result
49 : LDC 2, 5(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop back to caller
51 : ST 1, 4(5) ;  Store result into caller’s frame
52 : LD 1, 4(5) ;  Load return value into register 1
53 : LD 6, 0(5) ;  Load return address for main function into register 6
54 : LDA 7, 0(6) ;  Jump to runtime continuation
55 : LD 1, 2(5) ;  Load parameter 'y' into R1
56 : ADD 3, 1, 0 ;  Move right operand to R3
57 : LD 1, 1(5) ;  Load parameter 'x' into R1
58 : ADD 2, 1, 0 ;  Move left operand to R2
59 : ADD 1, 3, 0 ;  Restore right operand into R1
60 : SUB 1, 2, 1 ;  left - right for less-than check
61 : JLT 1, 2(7) ;  If R1 < 0, jump to true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : ADD 2, 1, 0 ;  Move left operand to R2
66 : LD 1, 2(5) ;  Load parameter 'y' into R1
67 : ADD 3, 1, 0 ;  Move right operand to R3
68 : LD 1, 1(5) ;  Load parameter 'x' into R1
69 : ADD 2, 1, 0 ;  Move left operand to R2
70 : ADD 1, 3, 0 ;  Restore right operand into R1
71 : SUB 1, 2, 1 ;  left - right for equality check
72 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
73 : LDC 1, 0(0) ;  false
74 : LDA 7, 1(7) ;  skip setting true
75 : LDC 1, 1(0) ;  true
76 : ADD 1, 2, 1 ;  R1 = left OR right
77 : LDC 2, 1(0) ;  Load 1 into R2
78 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
79 : ST 1, 3(5) ;  Store result into current frame's return slot
80 : ST 1, 3(5) ;  Store function result into stack frame
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LDA 4, 4(5) ;  Base of callee frame
84 : LD 1, 4(5) ;  Load parameter 'yd' into R1
85 : ADD 3, 1, 0 ;  Move right operand to R3
86 : LD 1, 1(5) ;  Load parameter 'x' into R1
87 : ADD 2, 1, 0 ;  Move left operand to R2
88 : ADD 1, 3, 0 ;  Restore right operand into R1
89 : MUL 1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(4) ;  Store argument 0 in callee
91 : LD 1, 2(5) ;  Load parameter 'xd' into R1
92 : ADD 3, 1, 0 ;  Move right operand to R3
93 : LD 1, 3(5) ;  Load parameter 'y' into R1
94 : ADD 2, 1, 0 ;  Move left operand to R2
95 : ADD 1, 3, 0 ;  Restore right operand into R1
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ST 1, 2(4) ;  Store argument 1 in callee
98 : LDA 6, 102(0) ;  Return address
99 : ST 6, 0(4) ;  Store return in callee frame
100 : ADD 5, 4, 0 ;  Push callee frame
101 : LDA 7, 55(0) ;  Call greater
102 : LD 1, 3(5) ;  Load function result
103 : LDC 2, 4(0) ;  Caller frame size
104 : SUB 5, 5, 2 ;  Pop back to caller
105 : ST 1, 5(5) ;  Store result into caller’s frame
106 : ST 1, 5(5) ;  Store function result into stack frame
107 : LD 6, 0(5) ;  Load return address
108 : LDA 7, 0(6) ;  Return to caller
109 : LD 1, 4(5) ;  Load parameter 'yd' into R1
110 : ADD 3, 1, 0 ;  Move right operand to R3
111 : LD 1, 1(5) ;  Load parameter 'x' into R1
112 : ADD 2, 1, 0 ;  Move left operand to R2
113 : ADD 1, 3, 0 ;  Restore right operand into R1
114 : MUL 1, 2, 1 ;  R1 = left * right
115 : ADD 2, 1, 0 ;  Move left operand to R2
116 : LD 1, 2(5) ;  Load parameter 'xd' into R1
117 : ADD 3, 1, 0 ;  Move right operand to R3
118 : LD 1, 3(5) ;  Load parameter 'y' into R1
119 : ADD 2, 1, 0 ;  Move left operand to R2
120 : ADD 1, 3, 0 ;  Restore right operand into R1
121 : MUL 1, 2, 1 ;  R1 = left * right
122 : SUB 1, 2, 1 ;  left - right for equality check
123 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
124 : LDC 1, 0(0) ;  false
125 : LDA 7, 1(7) ;  skip setting true
126 : LDC 1, 1(0) ;  true
127 : ST 1, 5(5) ;  Store result into current frame's return slot
128 : ST 1, 5(5) ;  Store function result into stack frame
129 : LD 6, 0(5) ;  Load return address
130 : LDA 7, 0(6) ;  Return to caller
131 : LDA 4, 4(5) ;  Base of callee frame
132 : LD 1, 6(5) ;  Load parameter 'b' into R1
133 : ST 1, 1(4) ;  Store argument 0 in callee
134 : LD 1, 4(5) ;  Load parameter 'N' into R1
135 : ST 1, 2(4) ;  Store argument 1 in callee
136 : LDA 6, 140(0) ;  Return address
137 : ST 6, 0(4) ;  Store return in callee frame
138 : ADD 5, 4, 0 ;  Push callee frame
139 : LDA 7, 55(0) ;  Call greater
140 : LD 1, 3(5) ;  Load function result
141 : LDC 2, 4(0) ;  Caller frame size
142 : SUB 5, 5, 2 ;  Pop back to caller
143 : ADD 2, 1, 0 ;  Move left operand to R2
144 : LDA 4, 4(5) ;  Base of callee frame
145 : LD 1, 8(5) ;  Load parameter 'd' into R1
146 : ST 1, 1(4) ;  Store argument 0 in callee
147 : LD 1, 4(5) ;  Load parameter 'N' into R1
148 : ST 1, 2(4) ;  Store argument 1 in callee
149 : LDA 6, 153(0) ;  Return address
150 : ST 6, 0(4) ;  Store return in callee frame
151 : ADD 5, 4, 0 ;  Push callee frame
152 : LDA 7, 55(0) ;  Call greater
153 : LD 1, 3(5) ;  Load function result
154 : LDC 2, 4(0) ;  Caller frame size
155 : SUB 5, 5, 2 ;  Pop back to caller
156 : ADD 1, 2, 1 ;  R1 = left OR right
157 : JEQ 1, 203(0) ;  If condition is false, jump to ELSE
158 : LDC 1, 1(0) ;  Load integer-literal value into R1
159 : ADD 3, 1, 0 ;  Move right operand to R3
160 : LD 1, 1(5) ;  Load parameter 'selector' into R1
161 : ADD 2, 1, 0 ;  Move left operand to R2
162 : ADD 1, 3, 0 ;  Restore right operand into R1
163 : SUB 1, 2, 1 ;  left - right for equality check
164 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
165 : LDC 1, 0(0) ;  false
166 : LDA 7, 1(7) ;  skip setting true
167 : LDC 1, 1(0) ;  true
168 : JEQ 1, 172(0) ;  If condition is false, jump to ELSE
169 : LD 1, 5(5) ;  Load parameter 'a' into R1
170 : ST 1, 9(5) ;  Store result into current frame's return slot
171 : LDA 7, 202(0) ;  Skip ELSE block
172 : LDC 1, 2(0) ;  Load integer-literal value into R1
173 : ADD 3, 1, 0 ;  Move right operand to R3
174 : LD 1, 1(5) ;  Load parameter 'selector' into R1
175 : ADD 2, 1, 0 ;  Move left operand to R2
176 : ADD 1, 3, 0 ;  Restore right operand into R1
177 : SUB 1, 2, 1 ;  left - right for equality check
178 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
179 : LDC 1, 0(0) ;  false
180 : LDA 7, 1(7) ;  skip setting true
181 : LDC 1, 1(0) ;  true
182 : JEQ 1, 186(0) ;  If condition is false, jump to ELSE
183 : LD 1, 6(5) ;  Load parameter 'b' into R1
184 : ST 1, 9(5) ;  Store result into current frame's return slot
185 : LDA 7, 202(0) ;  Skip ELSE block
186 : LDC 1, 3(0) ;  Load integer-literal value into R1
187 : ADD 3, 1, 0 ;  Move right operand to R3
188 : LD 1, 1(5) ;  Load parameter 'selector' into R1
189 : ADD 2, 1, 0 ;  Move left operand to R2
190 : ADD 1, 3, 0 ;  Restore right operand into R1
191 : SUB 1, 2, 1 ;  left - right for equality check
192 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
193 : LDC 1, 0(0) ;  false
194 : LDA 7, 1(7) ;  skip setting true
195 : LDC 1, 1(0) ;  true
196 : JEQ 1, 200(0) ;  If condition is false, jump to ELSE
197 : LD 1, 7(5) ;  Load parameter 'c' into R1
198 : ST 1, 9(5) ;  Store result into current frame's return slot
199 : LDA 7, 202(0) ;  Skip ELSE block
200 : LD 1, 8(5) ;  Load parameter 'd' into R1
201 : ST 1, 9(5) ;  Store result into current frame's return slot
202 : LDA 7, 393(0) ;  Skip ELSE block
203 : LDA 4, 6(5) ;  Base of callee frame
204 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
205 : ST 1, 1(4) ;  Store argument 0 in callee
206 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
207 : ST 1, 2(4) ;  Store argument 1 in callee
208 : LD 1, 7(5) ;  Load parameter 'c' into R1
209 : ADD 3, 1, 0 ;  Move right operand to R3
210 : LD 1, 5(5) ;  Load parameter 'a' into R1
211 : ADD 2, 1, 0 ;  Move left operand to R2
212 : ADD 1, 3, 0 ;  Restore right operand into R1
213 : ADD 1, 2, 1 ;  R1 = left + right
214 : ST 1, 3(4) ;  Store argument 2 in callee
215 : LD 1, 8(5) ;  Load parameter 'd' into R1
216 : ADD 3, 1, 0 ;  Move right operand to R3
217 : LD 1, 6(5) ;  Load parameter 'b' into R1
218 : ADD 2, 1, 0 ;  Move left operand to R2
219 : ADD 1, 3, 0 ;  Restore right operand into R1
220 : ADD 1, 2, 1 ;  R1 = left + right
221 : ST 1, 4(4) ;  Store argument 3 in callee
222 : LDA 6, 226(0) ;  Return address
223 : ST 6, 0(4) ;  Store return in callee frame
224 : ADD 5, 4, 0 ;  Push callee frame
225 : LDA 7, 109(0) ;  Call fractionEqual
226 : LD 1, 5(5) ;  Load function result
227 : LDC 2, 6(0) ;  Caller frame size
228 : SUB 5, 5, 2 ;  Pop back to caller
229 : JEQ 1, 295(0) ;  If condition is false, jump to ELSE
230 : LDC 1, 1(0) ;  Load integer-literal value into R1
231 : ADD 3, 1, 0 ;  Move right operand to R3
232 : LD 1, 1(5) ;  Load parameter 'selector' into R1
233 : ADD 2, 1, 0 ;  Move left operand to R2
234 : ADD 1, 3, 0 ;  Restore right operand into R1
235 : SUB 1, 2, 1 ;  left - right for equality check
236 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
237 : LDC 1, 0(0) ;  false
238 : LDA 7, 1(7) ;  skip setting true
239 : LDC 1, 1(0) ;  true
240 : JEQ 1, 249(0) ;  If condition is false, jump to ELSE
241 : LD 1, 7(5) ;  Load parameter 'c' into R1
242 : ADD 3, 1, 0 ;  Move right operand to R3
243 : LD 1, 5(5) ;  Load parameter 'a' into R1
244 : ADD 2, 1, 0 ;  Move left operand to R2
245 : ADD 1, 3, 0 ;  Restore right operand into R1
246 : ADD 1, 2, 1 ;  R1 = left + right
247 : ST 1, 9(5) ;  Store result into current frame's return slot
248 : LDA 7, 294(0) ;  Skip ELSE block
249 : LDC 1, 2(0) ;  Load integer-literal value into R1
250 : ADD 3, 1, 0 ;  Move right operand to R3
251 : LD 1, 1(5) ;  Load parameter 'selector' into R1
252 : ADD 2, 1, 0 ;  Move left operand to R2
253 : ADD 1, 3, 0 ;  Restore right operand into R1
254 : SUB 1, 2, 1 ;  left - right for equality check
255 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
256 : LDC 1, 0(0) ;  false
257 : LDA 7, 1(7) ;  skip setting true
258 : LDC 1, 1(0) ;  true
259 : JEQ 1, 268(0) ;  If condition is false, jump to ELSE
260 : LD 1, 8(5) ;  Load parameter 'd' into R1
261 : ADD 3, 1, 0 ;  Move right operand to R3
262 : LD 1, 6(5) ;  Load parameter 'b' into R1
263 : ADD 2, 1, 0 ;  Move left operand to R2
264 : ADD 1, 3, 0 ;  Restore right operand into R1
265 : ADD 1, 2, 1 ;  R1 = left + right
266 : ST 1, 9(5) ;  Store result into current frame's return slot
267 : LDA 7, 294(0) ;  Skip ELSE block
268 : LDC 1, 3(0) ;  Load integer-literal value into R1
269 : ADD 3, 1, 0 ;  Move right operand to R3
270 : LD 1, 1(5) ;  Load parameter 'selector' into R1
271 : ADD 2, 1, 0 ;  Move left operand to R2
272 : ADD 1, 3, 0 ;  Restore right operand into R1
273 : SUB 1, 2, 1 ;  left - right for equality check
274 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
275 : LDC 1, 0(0) ;  false
276 : LDA 7, 1(7) ;  skip setting true
277 : LDC 1, 1(0) ;  true
278 : JEQ 1, 287(0) ;  If condition is false, jump to ELSE
279 : LD 1, 7(5) ;  Load parameter 'c' into R1
280 : ADD 3, 1, 0 ;  Move right operand to R3
281 : LD 1, 5(5) ;  Load parameter 'a' into R1
282 : ADD 2, 1, 0 ;  Move left operand to R2
283 : ADD 1, 3, 0 ;  Restore right operand into R1
284 : ADD 1, 2, 1 ;  R1 = left + right
285 : ST 1, 9(5) ;  Store result into current frame's return slot
286 : LDA 7, 294(0) ;  Skip ELSE block
287 : LD 1, 8(5) ;  Load parameter 'd' into R1
288 : ADD 3, 1, 0 ;  Move right operand to R3
289 : LD 1, 6(5) ;  Load parameter 'b' into R1
290 : ADD 2, 1, 0 ;  Move left operand to R2
291 : ADD 1, 3, 0 ;  Restore right operand into R1
292 : ADD 1, 2, 1 ;  R1 = left + right
293 : ST 1, 9(5) ;  Store result into current frame's return slot
294 : LDA 7, 393(0) ;  Skip ELSE block
295 : LDA 4, 6(5) ;  Base of callee frame
296 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
297 : ST 1, 1(4) ;  Store argument 0 in callee
298 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
299 : ST 1, 2(4) ;  Store argument 1 in callee
300 : LD 1, 7(5) ;  Load parameter 'c' into R1
301 : ADD 3, 1, 0 ;  Move right operand to R3
302 : LD 1, 5(5) ;  Load parameter 'a' into R1
303 : ADD 2, 1, 0 ;  Move left operand to R2
304 : ADD 1, 3, 0 ;  Restore right operand into R1
305 : ADD 1, 2, 1 ;  R1 = left + right
306 : ST 1, 3(4) ;  Store argument 2 in callee
307 : LD 1, 8(5) ;  Load parameter 'd' into R1
308 : ADD 3, 1, 0 ;  Move right operand to R3
309 : LD 1, 6(5) ;  Load parameter 'b' into R1
310 : ADD 2, 1, 0 ;  Move left operand to R2
311 : ADD 1, 3, 0 ;  Restore right operand into R1
312 : ADD 1, 2, 1 ;  R1 = left + right
313 : ST 1, 4(4) ;  Store argument 3 in callee
314 : LDA 6, 318(0) ;  Return address
315 : ST 6, 0(4) ;  Store return in callee frame
316 : ADD 5, 4, 0 ;  Push callee frame
317 : LDA 7, 83(0) ;  Call fractionGreater
318 : LD 1, 5(5) ;  Load function result
319 : LDC 2, 6(0) ;  Caller frame size
320 : SUB 5, 5, 2 ;  Pop back to caller
321 : JEQ 1, 358(0) ;  If condition is false, jump to ELSE
322 : LDA 4, 10(5) ;  Base of callee frame
323 : LD 1, 1(5) ;  Load parameter 'selector' into R1
324 : ST 1, 1(4) ;  Store argument 0 in callee
325 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
326 : ST 1, 2(4) ;  Store argument 1 in callee
327 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
328 : ST 1, 3(4) ;  Store argument 2 in callee
329 : LD 1, 4(5) ;  Load parameter 'N' into R1
330 : ST 1, 4(4) ;  Store argument 3 in callee
331 : LD 1, 7(5) ;  Load parameter 'c' into R1
332 : ADD 3, 1, 0 ;  Move right operand to R3
333 : LD 1, 5(5) ;  Load parameter 'a' into R1
334 : ADD 2, 1, 0 ;  Move left operand to R2
335 : ADD 1, 3, 0 ;  Restore right operand into R1
336 : ADD 1, 2, 1 ;  R1 = left + right
337 : ST 1, 5(4) ;  Store argument 4 in callee
338 : LD 1, 8(5) ;  Load parameter 'd' into R1
339 : ADD 3, 1, 0 ;  Move right operand to R3
340 : LD 1, 6(5) ;  Load parameter 'b' into R1
341 : ADD 2, 1, 0 ;  Move left operand to R2
342 : ADD 1, 3, 0 ;  Restore right operand into R1
343 : ADD 1, 2, 1 ;  R1 = left + right
344 : ST 1, 6(4) ;  Store argument 5 in callee
345 : LD 1, 7(5) ;  Load parameter 'c' into R1
346 : ST 1, 7(4) ;  Store argument 6 in callee
347 : LD 1, 8(5) ;  Load parameter 'd' into R1
348 : ST 1, 8(4) ;  Store argument 7 in callee
349 : LDA 6, 353(0) ;  Return address
350 : ST 6, 0(4) ;  Store return in callee frame
351 : ADD 5, 4, 0 ;  Push callee frame
352 : LDA 7, 131(0) ;  Call whileLoopFor
353 : LD 1, 9(5) ;  Load function result
354 : LDC 2, 10(0) ;  Caller frame size
355 : SUB 5, 5, 2 ;  Pop back to caller
356 : ST 1, 9(5) ;  Store result into caller’s frame
357 : LDA 7, 393(0) ;  Skip ELSE block
358 : LDA 4, 10(5) ;  Base of callee frame
359 : LD 1, 1(5) ;  Load parameter 'selector' into R1
360 : ST 1, 1(4) ;  Store argument 0 in callee
361 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
362 : ST 1, 2(4) ;  Store argument 1 in callee
363 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
364 : ST 1, 3(4) ;  Store argument 2 in callee
365 : LD 1, 4(5) ;  Load parameter 'N' into R1
366 : ST 1, 4(4) ;  Store argument 3 in callee
367 : LD 1, 5(5) ;  Load parameter 'a' into R1
368 : ST 1, 5(4) ;  Store argument 4 in callee
369 : LD 1, 6(5) ;  Load parameter 'b' into R1
370 : ST 1, 6(4) ;  Store argument 5 in callee
371 : LD 1, 7(5) ;  Load parameter 'c' into R1
372 : ADD 3, 1, 0 ;  Move right operand to R3
373 : LD 1, 5(5) ;  Load parameter 'a' into R1
374 : ADD 2, 1, 0 ;  Move left operand to R2
375 : ADD 1, 3, 0 ;  Restore right operand into R1
376 : ADD 1, 2, 1 ;  R1 = left + right
377 : ST 1, 7(4) ;  Store argument 6 in callee
378 : LD 1, 8(5) ;  Load parameter 'd' into R1
379 : ADD 3, 1, 0 ;  Move right operand to R3
380 : LD 1, 6(5) ;  Load parameter 'b' into R1
381 : ADD 2, 1, 0 ;  Move left operand to R2
382 : ADD 1, 3, 0 ;  Restore right operand into R1
383 : ADD 1, 2, 1 ;  R1 = left + right
384 : ST 1, 8(4) ;  Store argument 7 in callee
385 : LDA 6, 389(0) ;  Return address
386 : ST 6, 0(4) ;  Store return in callee frame
387 : ADD 5, 4, 0 ;  Push callee frame
388 : LDA 7, 131(0) ;  Call whileLoopFor
389 : LD 1, 9(5) ;  Load function result
390 : LDC 2, 10(0) ;  Caller frame size
391 : SUB 5, 5, 2 ;  Pop back to caller
392 : ST 1, 9(5) ;  Store result into caller’s frame
393 : ST 1, 9(5) ;  Store function result into stack frame
394 : LD 6, 0(5) ;  Load return address
395 : LDA 7, 0(6) ;  Return to caller
396 : LDA 4, 4(5) ;  Base of callee frame
397 : LD 1, 3(5) ;  Load parameter 'b' into R1
398 : ST 1, 1(4) ;  Store argument 0 in callee
399 : LD 1, 1(5) ;  Load parameter 'N' into R1
400 : ST 1, 2(4) ;  Store argument 1 in callee
401 : LDA 6, 405(0) ;  Return address
402 : ST 6, 0(4) ;  Store return in callee frame
403 : ADD 5, 4, 0 ;  Push callee frame
404 : LDA 7, 55(0) ;  Call greater
405 : LD 1, 3(5) ;  Load function result
406 : LDC 2, 4(0) ;  Caller frame size
407 : SUB 5, 5, 2 ;  Pop back to caller
408 : JEQ 1, 412(0) ;  If condition is false, jump to ELSE
409 : LD 1, 5(5) ;  Load parameter 'd' into R1
410 : ST 1, 6(5) ;  Store result into current frame's return slot
411 : LDA 7, 414(0) ;  Skip ELSE block
412 : LD 1, 3(5) ;  Load parameter 'b' into R1
413 : ST 1, 6(5) ;  Store result into current frame's return slot
414 : ST 1, 6(5) ;  Store function result into stack frame
415 : LD 6, 0(5) ;  Load return address
416 : LDA 7, 0(6) ;  Return to caller
417 : LDA 4, 4(5) ;  Base of callee frame
418 : LD 1, 3(5) ;  Load parameter 'b' into R1
419 : ST 1, 1(4) ;  Store argument 0 in callee
420 : LD 1, 1(5) ;  Load parameter 'N' into R1
421 : ST 1, 2(4) ;  Store argument 1 in callee
422 : LDA 6, 426(0) ;  Return address
423 : ST 6, 0(4) ;  Store return in callee frame
424 : ADD 5, 4, 0 ;  Push callee frame
425 : LDA 7, 55(0) ;  Call greater
426 : LD 1, 3(5) ;  Load function result
427 : LDC 2, 4(0) ;  Caller frame size
428 : SUB 5, 5, 2 ;  Pop back to caller
429 : JEQ 1, 433(0) ;  If condition is false, jump to ELSE
430 : LD 1, 4(5) ;  Load parameter 'c' into R1
431 : ST 1, 6(5) ;  Store result into current frame's return slot
432 : LDA 7, 435(0) ;  Skip ELSE block
433 : LD 1, 2(5) ;  Load parameter 'a' into R1
434 : ST 1, 6(5) ;  Store result into current frame's return slot
435 : ST 1, 6(5) ;  Store function result into stack frame
436 : LD 6, 0(5) ;  Load return address
437 : LDA 7, 0(6) ;  Return to caller
438 : LDA 4, 7(5) ;  Base of callee frame
439 : LD 1, 3(5) ;  Load parameter 'N' into R1
440 : ST 1, 1(4) ;  Store argument 0 in callee
441 : LDA 4, 10(5) ;  Base of callee frame
442 : LDC 1, 1(0) ;  Load integer-literal value into R1
443 : ST 1, 1(4) ;  Store argument 0 in callee
444 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
445 : ST 1, 2(4) ;  Store argument 1 in callee
446 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
447 : ST 1, 3(4) ;  Store argument 2 in callee
448 : LD 1, 3(5) ;  Load parameter 'N' into R1
449 : ST 1, 4(4) ;  Store argument 3 in callee
450 : LDC 1, 0(0) ;  Load integer-literal value into R1
451 : ST 1, 5(4) ;  Store argument 4 in callee
452 : LDC 1, 1(0) ;  Load integer-literal value into R1
453 : ST 1, 6(4) ;  Store argument 5 in callee
454 : LDC 1, 1(0) ;  Load integer-literal value into R1
455 : ST 1, 7(4) ;  Store argument 6 in callee
456 : LDC 1, 1(0) ;  Load integer-literal value into R1
457 : ST 1, 8(4) ;  Store argument 7 in callee
458 : LDA 6, 462(0) ;  Return address
459 : ST 6, 0(4) ;  Store return in callee frame
460 : ADD 5, 4, 0 ;  Push callee frame
461 : LDA 7, 131(0) ;  Call whileLoopFor
462 : LD 1, 9(5) ;  Load function result
463 : LDC 2, 10(0) ;  Caller frame size
464 : SUB 5, 5, 2 ;  Pop back to caller
465 : ST 1, 2(4) ;  Store argument 1 in callee
466 : LDA 4, 10(5) ;  Base of callee frame
467 : LDC 1, 2(0) ;  Load integer-literal value into R1
468 : ST 1, 1(4) ;  Store argument 0 in callee
469 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
470 : ST 1, 2(4) ;  Store argument 1 in callee
471 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
472 : ST 1, 3(4) ;  Store argument 2 in callee
473 : LD 1, 3(5) ;  Load parameter 'N' into R1
474 : ST 1, 4(4) ;  Store argument 3 in callee
475 : LDC 1, 0(0) ;  Load integer-literal value into R1
476 : ST 1, 5(4) ;  Store argument 4 in callee
477 : LDC 1, 1(0) ;  Load integer-literal value into R1
478 : ST 1, 6(4) ;  Store argument 5 in callee
479 : LDC 1, 1(0) ;  Load integer-literal value into R1
480 : ST 1, 7(4) ;  Store argument 6 in callee
481 : LDC 1, 1(0) ;  Load integer-literal value into R1
482 : ST 1, 8(4) ;  Store argument 7 in callee
483 : LDA 6, 487(0) ;  Return address
484 : ST 6, 0(4) ;  Store return in callee frame
485 : ADD 5, 4, 0 ;  Push callee frame
486 : LDA 7, 131(0) ;  Call whileLoopFor
487 : LD 1, 9(5) ;  Load function result
488 : LDC 2, 10(0) ;  Caller frame size
489 : SUB 5, 5, 2 ;  Pop back to caller
490 : ST 1, 3(4) ;  Store argument 2 in callee
491 : LDA 4, 10(5) ;  Base of callee frame
492 : LDC 1, 3(0) ;  Load integer-literal value into R1
493 : ST 1, 1(4) ;  Store argument 0 in callee
494 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
495 : ST 1, 2(4) ;  Store argument 1 in callee
496 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
497 : ST 1, 3(4) ;  Store argument 2 in callee
498 : LD 1, 3(5) ;  Load parameter 'N' into R1
499 : ST 1, 4(4) ;  Store argument 3 in callee
500 : LDC 1, 0(0) ;  Load integer-literal value into R1
501 : ST 1, 5(4) ;  Store argument 4 in callee
502 : LDC 1, 1(0) ;  Load integer-literal value into R1
503 : ST 1, 6(4) ;  Store argument 5 in callee
504 : LDC 1, 1(0) ;  Load integer-literal value into R1
505 : ST 1, 7(4) ;  Store argument 6 in callee
506 : LDC 1, 1(0) ;  Load integer-literal value into R1
507 : ST 1, 8(4) ;  Store argument 7 in callee
508 : LDA 6, 512(0) ;  Return address
509 : ST 6, 0(4) ;  Store return in callee frame
510 : ADD 5, 4, 0 ;  Push callee frame
511 : LDA 7, 131(0) ;  Call whileLoopFor
512 : LD 1, 9(5) ;  Load function result
513 : LDC 2, 10(0) ;  Caller frame size
514 : SUB 5, 5, 2 ;  Pop back to caller
515 : ST 1, 4(4) ;  Store argument 3 in callee
516 : LDA 4, 10(5) ;  Base of callee frame
517 : LDC 1, 4(0) ;  Load integer-literal value into R1
518 : ST 1, 1(4) ;  Store argument 0 in callee
519 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
520 : ST 1, 2(4) ;  Store argument 1 in callee
521 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
522 : ST 1, 3(4) ;  Store argument 2 in callee
523 : LD 1, 3(5) ;  Load parameter 'N' into R1
524 : ST 1, 4(4) ;  Store argument 3 in callee
525 : LDC 1, 0(0) ;  Load integer-literal value into R1
526 : ST 1, 5(4) ;  Store argument 4 in callee
527 : LDC 1, 1(0) ;  Load integer-literal value into R1
528 : ST 1, 6(4) ;  Store argument 5 in callee
529 : LDC 1, 1(0) ;  Load integer-literal value into R1
530 : ST 1, 7(4) ;  Store argument 6 in callee
531 : LDC 1, 1(0) ;  Load integer-literal value into R1
532 : ST 1, 8(4) ;  Store argument 7 in callee
533 : LDA 6, 537(0) ;  Return address
534 : ST 6, 0(4) ;  Store return in callee frame
535 : ADD 5, 4, 0 ;  Push callee frame
536 : LDA 7, 131(0) ;  Call whileLoopFor
537 : LD 1, 9(5) ;  Load function result
538 : LDC 2, 10(0) ;  Caller frame size
539 : SUB 5, 5, 2 ;  Pop back to caller
540 : ST 1, 5(4) ;  Store argument 4 in callee
541 : LDA 6, 545(0) ;  Return address
542 : ST 6, 0(4) ;  Store return in callee frame
543 : ADD 5, 4, 0 ;  Push callee frame
544 : LDA 7, 396(0) ;  Call fareySelectDen
545 : LD 1, 6(5) ;  Load function result
546 : LDC 2, 7(0) ;  Caller frame size
547 : SUB 5, 5, 2 ;  Pop back to caller
548 : ST 1, 4(5) ;  Store result into caller’s frame
549 : ST 1, 4(5) ;  Store function result into stack frame
550 : LD 6, 0(5) ;  Load return address
551 : LDA 7, 0(6) ;  Return to caller
552 : LDA 4, 7(5) ;  Base of callee frame
553 : LD 1, 3(5) ;  Load parameter 'N' into R1
554 : ST 1, 1(4) ;  Store argument 0 in callee
555 : LDA 4, 10(5) ;  Base of callee frame
556 : LDC 1, 1(0) ;  Load integer-literal value into R1
557 : ST 1, 1(4) ;  Store argument 0 in callee
558 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
559 : ST 1, 2(4) ;  Store argument 1 in callee
560 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
561 : ST 1, 3(4) ;  Store argument 2 in callee
562 : LD 1, 3(5) ;  Load parameter 'N' into R1
563 : ST 1, 4(4) ;  Store argument 3 in callee
564 : LDC 1, 0(0) ;  Load integer-literal value into R1
565 : ST 1, 5(4) ;  Store argument 4 in callee
566 : LDC 1, 1(0) ;  Load integer-literal value into R1
567 : ST 1, 6(4) ;  Store argument 5 in callee
568 : LDC 1, 1(0) ;  Load integer-literal value into R1
569 : ST 1, 7(4) ;  Store argument 6 in callee
570 : LDC 1, 1(0) ;  Load integer-literal value into R1
571 : ST 1, 8(4) ;  Store argument 7 in callee
572 : LDA 6, 576(0) ;  Return address
573 : ST 6, 0(4) ;  Store return in callee frame
574 : ADD 5, 4, 0 ;  Push callee frame
575 : LDA 7, 131(0) ;  Call whileLoopFor
576 : LD 1, 9(5) ;  Load function result
577 : LDC 2, 10(0) ;  Caller frame size
578 : SUB 5, 5, 2 ;  Pop back to caller
579 : ST 1, 2(4) ;  Store argument 1 in callee
580 : LDA 4, 10(5) ;  Base of callee frame
581 : LDC 1, 2(0) ;  Load integer-literal value into R1
582 : ST 1, 1(4) ;  Store argument 0 in callee
583 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
584 : ST 1, 2(4) ;  Store argument 1 in callee
585 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
586 : ST 1, 3(4) ;  Store argument 2 in callee
587 : LD 1, 3(5) ;  Load parameter 'N' into R1
588 : ST 1, 4(4) ;  Store argument 3 in callee
589 : LDC 1, 0(0) ;  Load integer-literal value into R1
590 : ST 1, 5(4) ;  Store argument 4 in callee
591 : LDC 1, 1(0) ;  Load integer-literal value into R1
592 : ST 1, 6(4) ;  Store argument 5 in callee
593 : LDC 1, 1(0) ;  Load integer-literal value into R1
594 : ST 1, 7(4) ;  Store argument 6 in callee
595 : LDC 1, 1(0) ;  Load integer-literal value into R1
596 : ST 1, 8(4) ;  Store argument 7 in callee
597 : LDA 6, 601(0) ;  Return address
598 : ST 6, 0(4) ;  Store return in callee frame
599 : ADD 5, 4, 0 ;  Push callee frame
600 : LDA 7, 131(0) ;  Call whileLoopFor
601 : LD 1, 9(5) ;  Load function result
602 : LDC 2, 10(0) ;  Caller frame size
603 : SUB 5, 5, 2 ;  Pop back to caller
604 : ST 1, 3(4) ;  Store argument 2 in callee
605 : LDA 4, 10(5) ;  Base of callee frame
606 : LDC 1, 3(0) ;  Load integer-literal value into R1
607 : ST 1, 1(4) ;  Store argument 0 in callee
608 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
609 : ST 1, 2(4) ;  Store argument 1 in callee
610 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
611 : ST 1, 3(4) ;  Store argument 2 in callee
612 : LD 1, 3(5) ;  Load parameter 'N' into R1
613 : ST 1, 4(4) ;  Store argument 3 in callee
614 : LDC 1, 0(0) ;  Load integer-literal value into R1
615 : ST 1, 5(4) ;  Store argument 4 in callee
616 : LDC 1, 1(0) ;  Load integer-literal value into R1
617 : ST 1, 6(4) ;  Store argument 5 in callee
618 : LDC 1, 1(0) ;  Load integer-literal value into R1
619 : ST 1, 7(4) ;  Store argument 6 in callee
620 : LDC 1, 1(0) ;  Load integer-literal value into R1
621 : ST 1, 8(4) ;  Store argument 7 in callee
622 : LDA 6, 626(0) ;  Return address
623 : ST 6, 0(4) ;  Store return in callee frame
624 : ADD 5, 4, 0 ;  Push callee frame
625 : LDA 7, 131(0) ;  Call whileLoopFor
626 : LD 1, 9(5) ;  Load function result
627 : LDC 2, 10(0) ;  Caller frame size
628 : SUB 5, 5, 2 ;  Pop back to caller
629 : ST 1, 4(4) ;  Store argument 3 in callee
630 : LDA 4, 10(5) ;  Base of callee frame
631 : LDC 1, 4(0) ;  Load integer-literal value into R1
632 : ST 1, 1(4) ;  Store argument 0 in callee
633 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
634 : ST 1, 2(4) ;  Store argument 1 in callee
635 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
636 : ST 1, 3(4) ;  Store argument 2 in callee
637 : LD 1, 3(5) ;  Load parameter 'N' into R1
638 : ST 1, 4(4) ;  Store argument 3 in callee
639 : LDC 1, 0(0) ;  Load integer-literal value into R1
640 : ST 1, 5(4) ;  Store argument 4 in callee
641 : LDC 1, 1(0) ;  Load integer-literal value into R1
642 : ST 1, 6(4) ;  Store argument 5 in callee
643 : LDC 1, 1(0) ;  Load integer-literal value into R1
644 : ST 1, 7(4) ;  Store argument 6 in callee
645 : LDC 1, 1(0) ;  Load integer-literal value into R1
646 : ST 1, 8(4) ;  Store argument 7 in callee
647 : LDA 6, 651(0) ;  Return address
648 : ST 6, 0(4) ;  Store return in callee frame
649 : ADD 5, 4, 0 ;  Push callee frame
650 : LDA 7, 131(0) ;  Call whileLoopFor
651 : LD 1, 9(5) ;  Load function result
652 : LDC 2, 10(0) ;  Caller frame size
653 : SUB 5, 5, 2 ;  Pop back to caller
654 : ST 1, 5(4) ;  Store argument 4 in callee
655 : LDA 6, 659(0) ;  Return address
656 : ST 6, 0(4) ;  Store return in callee frame
657 : ADD 5, 4, 0 ;  Push callee frame
658 : LDA 7, 417(0) ;  Call fareySelectNum
659 : LD 1, 6(5) ;  Load function result
660 : LDC 2, 7(0) ;  Caller frame size
661 : SUB 5, 5, 2 ;  Pop back to caller
662 : ST 1, 4(5) ;  Store result into caller’s frame
663 : ST 1, 4(5) ;  Store function result into stack frame
664 : LD 6, 0(5) ;  Load return address
665 : LDA 7, 0(6) ;  Return to caller
