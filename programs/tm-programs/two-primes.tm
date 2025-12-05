0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 2(5) ;  Load parameter 'selector' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 35(0) ;  If condition is false, jump to ELSE
22 : LD   1, 1(5) ;  Load parameter 'n' into R1
23 : LDA  3, 4(5) ; Restore Callee frame base
24 : ST 1, 1(3) ;  Store argument 0 into callee frame
25 : LDA  3, 4(5) ; Restore Call frame base
26 : LDA 6, 30(0)) ;  Compute return address
27 : ST 6, 0(3) ;  Store return address in callee frame
28 : ADD  5, 3, 0 ;  Update pointer
29 : LDA 7, 328(0) ;  Call emirp
30 : LD 1, 2(5) ;  Load callee return value into R1
31 : LDC  4, 4(0) ;  Load frame size
32 : SUB  5, 5, 4 ;  Restore pointer
33 : ST 1, 6(0) ;  Store function-call result into caller's return slot
34 : LDA  7, 81(0) ;  Skip ELSE block
35 : LD   1, 2(5) ;  Load parameter 'selector' into R1
36 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
37 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
38 : SUB  1, 2, 1 ;  left - right for equality check
39 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
40 : LDC  1, 0(0) ;  false
41 : LDA  7, 1(7) ;  skip setting true
42 : LDC  1, 1(0) ;  true
43 : JEQ  1, 57(0) ;  If condition is false, jump to ELSE
44 : LD   1, 1(5) ;  Load parameter 'n' into R1
45 : LDA  3, 4(5) ; Restore Callee frame base
46 : ST 1, 1(3) ;  Store argument 0 into callee frame
47 : LDA  3, 4(5) ; Restore Call frame base
48 : LDA 6, 52(0)) ;  Compute return address
49 : ST 6, 0(3) ;  Store return address in callee frame
50 : ADD  5, 3, 0 ;  Update pointer
51 : LDA 7, 287(0) ;  Call snowball
52 : LD 1, 2(5) ;  Load callee return value into R1
53 : LDC  4, 4(0) ;  Load frame size
54 : SUB  5, 5, 4 ;  Restore pointer
55 : ST 1, 6(0) ;  Store function-call result into caller's return slot
56 : LDA  7, 81(0) ;  Skip ELSE block
57 : LD   1, 2(5) ;  Load parameter 'selector' into R1
58 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
59 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
60 : SUB  1, 2, 1 ;  left - right for equality check
61 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
62 : LDC  1, 0(0) ;  false
63 : LDA  7, 1(7) ;  skip setting true
64 : LDC  1, 1(0) ;  true
65 : JEQ  1, 79(0) ;  If condition is false, jump to ELSE
66 : LD   1, 1(5) ;  Load parameter 'n' into R1
67 : LDA  3, 4(5) ; Restore Callee frame base
68 : ST 1, 1(3) ;  Store argument 0 into callee frame
69 : LDA  3, 4(5) ; Restore Call frame base
70 : LDA 6, 74(0)) ;  Compute return address
71 : ST 6, 0(3) ;  Store return address in callee frame
72 : ADD  5, 3, 0 ;  Update pointer
73 : LDA 7, 254(0) ;  Call doBoth
74 : LD 1, 2(5) ;  Load callee return value into R1
75 : LDC  4, 4(0) ;  Load frame size
76 : SUB  5, 5, 4 ;  Restore pointer
77 : ST 1, 6(0) ;  Store function-call result into caller's return slot
78 : LDA  7, 81(0) ;  Skip ELSE block
79 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
80 : ST   1, 6(0) ;  Store value into return value in stack frame
81 : LD   1, 6(0) ;  Load return value into register 1
82 : LD  6, 3(0) ;  Load return address for main function into register 6
83 : LDA  7, 0(6) ;  Jump to return address of main function
84 : LD   1, 1(5) ;  Load parameter 'm' into R1
85 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
86 : LD   1, 1(5) ;  Load parameter 'm' into R1
87 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : DIV  1, 2, 1 ;  R1 = left / right
90 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : SUB  1, 2, 1 ;  R1 = left - right
94 : ST   1, 3(5) ;  Store function result into stack frame
95 : LD   6, 0(5) ;  Load return address
96 : LDA  7, 0(6) ;  Return to caller
97 : LD   1, 1(5) ;  Load parameter 'n' into R1
98 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
99 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
100 : SUB  1, 2, 1 ;  left - right for equality check
101 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
102 : LDC  1, 0(0) ;  false
103 : LDA  7, 1(7) ;  skip setting true
104 : LDC  1, 1(0) ;  true
105 : JEQ  1, 108(0) ;  If condition is false, jump to ELSE
106 : LD   1, 2(5) ;  Load parameter 'nR' into R1
107 : LDA  7, 144(0) ;  Skip ELSE block
108 : LD   1, 1(5) ;  Load parameter 'n' into R1
109 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
110 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
111 : DIV  1, 2, 1 ;  R1 = left / right
112 : LDA  3, 4(5) ; Restore Callee frame base
113 : ST 1, 1(3) ;  Store argument 0 into callee frame
114 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
115 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
116 : LD   1, 2(5) ;  Load parameter 'nR' into R1
117 : MUL  1, 2, 1 ;  R1 = left * right
118 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : LDA  3, 4(5) ; Restore Callee frame base
121 : ST 1, 1(3) ;  Store argument 0 into callee frame
122 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
123 : LDA  3, 4(5) ; Restore Callee frame base
124 : ST 1, 2(3) ;  Store argument 1 into callee frame
125 : LDA  3, 4(5) ; Restore Call frame base
126 : LDA 6, 130(0)) ;  Compute return address
127 : ST 6, 0(3) ;  Store return address in callee frame
128 : ADD  5, 3, 0 ;  Update pointer
129 : LDA 7, 84(0) ;  Call MOD
130 : LD 1, 3(5) ;  Load callee return value into R1
131 : LDC  4, 4(0) ;  Load frame size
132 : SUB  5, 5, 4 ;  Restore pointer
133 : ADD  1, 2, 1 ;  R1 = left + right
134 : LDA  3, 4(5) ; Restore Callee frame base
135 : ST 1, 2(3) ;  Store argument 1 into callee frame
136 : LDA  3, 4(5) ; Restore Call frame base
137 : LDA 6, 141(0)) ;  Compute return address
138 : ST 6, 0(3) ;  Store return address in callee frame
139 : ADD  5, 3, 0 ;  Update pointer
140 : LDA 7, 97(0) ;  Call reverseL
141 : LD 1, 3(5) ;  Load callee return value into R1
142 : LDC  4, 4(0) ;  Load frame size
143 : SUB  5, 5, 4 ;  Restore pointer
144 : ST   1, 3(5) ;  Store function result into stack frame
145 : LD   6, 0(5) ;  Load return address
146 : LDA  7, 0(6) ;  Return to caller
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : LDA  3, 3(5) ; Restore Callee frame base
149 : ST 1, 1(3) ;  Store argument 0 into callee frame
150 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
151 : LDA  3, 3(5) ; Restore Callee frame base
152 : ST 1, 2(3) ;  Store argument 1 into callee frame
153 : LDA  3, 3(5) ; Restore Call frame base
154 : LDA 6, 158(0)) ;  Compute return address
155 : ST 6, 0(3) ;  Store return address in callee frame
156 : ADD  5, 3, 0 ;  Update pointer
157 : LDA 7, 97(0) ;  Call reverseL
158 : LD 1, 3(5) ;  Load callee return value into R1
159 : LDC  4, 3(0) ;  Load frame size
160 : SUB  5, 5, 4 ;  Restore pointer
161 : ST   1, 2(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
164 : LD   1, 2(5) ;  Load parameter 'b' into R1
165 : LDA  3, 4(5) ; Restore Callee frame base
166 : ST 1, 1(3) ;  Store argument 0 into callee frame
167 : LD   1, 1(5) ;  Load parameter 'a' into R1
168 : LDA  3, 4(5) ; Restore Callee frame base
169 : ST 1, 2(3) ;  Store argument 1 into callee frame
170 : LDA  3, 4(5) ; Restore Call frame base
171 : LDA 6, 175(0)) ;  Compute return address
172 : ST 6, 0(3) ;  Store return address in callee frame
173 : ADD  5, 3, 0 ;  Update pointer
174 : LDA 7, 84(0) ;  Call MOD
175 : LD 1, 3(5) ;  Load callee return value into R1
176 : LDC  4, 4(0) ;  Load frame size
177 : SUB  5, 5, 4 ;  Restore pointer
178 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
179 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
180 : SUB  1, 2, 1 ;  left - right for equality check
181 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
182 : LDC  1, 0(0) ;  false
183 : LDA  7, 1(7) ;  skip setting true
184 : LDC  1, 1(0) ;  true
185 : ST   1, 3(5) ;  Store function result into stack frame
186 : LD   6, 0(5) ;  Load return address
187 : LDA  7, 0(6) ;  Return to caller
188 : LD   1, 1(5) ;  Load parameter 'i' into R1
189 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
190 : LD   1, 2(5) ;  Load parameter 'n' into R1
191 : SUB  1, 2, 1 ;  left - right for less-than check
192 : JLT  1, 2(7) ;  If R1 < 0, jump to true
193 : LDC  1, 0(0) ;  false
194 : LDA  7, 1(7) ;  skip setting true
195 : LDC  1, 1(0) ;  true
196 : JEQ  1, 231(0) ;  If condition is false, jump to ELSE
197 : LD   1, 1(5) ;  Load parameter 'i' into R1
198 : LDA  3, 4(5) ; Restore Callee frame base
199 : ST 1, 1(3) ;  Store argument 0 into callee frame
200 : LD   1, 2(5) ;  Load parameter 'n' into R1
201 : LDA  3, 4(5) ; Restore Callee frame base
202 : ST 1, 2(3) ;  Store argument 1 into callee frame
203 : LDA  3, 4(5) ; Restore Call frame base
204 : LDA 6, 208(0)) ;  Compute return address
205 : ST 6, 0(3) ;  Store return address in callee frame
206 : ADD  5, 3, 0 ;  Update pointer
207 : LDA 7, 164(0) ;  Call divides
208 : LD 1, 3(5) ;  Load callee return value into R1
209 : LDC  4, 4(0) ;  Load frame size
210 : SUB  5, 5, 4 ;  Restore pointer
211 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
212 : LD   1, 1(5) ;  Load parameter 'i' into R1
213 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
214 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
215 : ADD  1, 2, 1 ;  R1 = left + right
216 : LDA  3, 4(5) ; Restore Callee frame base
217 : ST 1, 1(3) ;  Store argument 0 into callee frame
218 : LD   1, 2(5) ;  Load parameter 'n' into R1
219 : LDA  3, 4(5) ; Restore Callee frame base
220 : ST 1, 2(3) ;  Store argument 1 into callee frame
221 : LDA  3, 4(5) ; Restore Call frame base
222 : LDA 6, 226(0)) ;  Compute return address
223 : ST 6, 0(3) ;  Store return address in callee frame
224 : ADD  5, 3, 0 ;  Update pointer
225 : LDA 7, 188(0) ;  Call hasDivisorFrom
226 : LD 1, 3(5) ;  Load callee return value into R1
227 : LDC  4, 4(0) ;  Load frame size
228 : SUB  5, 5, 4 ;  Restore pointer
229 : ADD  1, 2, 1 ;  R1 = left OR right
230 : LDA  7, 232(0) ;  Skip ELSE block
231 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
232 : ST   1, 3(5) ;  Store function result into stack frame
233 : LD   6, 0(5) ;  Load return address
234 : LDA  7, 0(6) ;  Return to caller
235 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
236 : LDA  3, 3(5) ; Restore Callee frame base
237 : ST 1, 1(3) ;  Store argument 0 into callee frame
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : LDA  3, 3(5) ; Restore Callee frame base
240 : ST 1, 2(3) ;  Store argument 1 into callee frame
241 : LDA  3, 3(5) ; Restore Call frame base
242 : LDA 6, 246(0)) ;  Compute return address
243 : ST 6, 0(3) ;  Store return address in callee frame
244 : ADD  5, 3, 0 ;  Update pointer
245 : LDA 7, 188(0) ;  Call hasDivisorFrom
246 : LD 1, 3(5) ;  Load callee return value into R1
247 : LDC  4, 3(0) ;  Load frame size
248 : SUB  5, 5, 4 ;  Restore pointer
249 : LDC  2, 1(0) ;  Load 1 into R2
250 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
251 : ST   1, 2(5) ;  Store function result into stack frame
252 : LD   6, 0(5) ;  Load return address
253 : LDA  7, 0(6) ;  Return to caller
254 : LD   1, 1(5) ;  Load parameter 'n' into R1
255 : LDA  3, 3(5) ; Restore Callee frame base
256 : ST 1, 1(3) ;  Store argument 0 into callee frame
257 : LDA  3, 3(5) ; Restore Call frame base
258 : LDA 6, 262(0)) ;  Compute return address
259 : ST 6, 0(3) ;  Store return address in callee frame
260 : ADD  5, 3, 0 ;  Update pointer
261 : LDA 7, 328(0) ;  Call emirp
262 : LD 1, 2(5) ;  Load callee return value into R1
263 : LDC  4, 3(0) ;  Load frame size
264 : SUB  5, 5, 4 ;  Restore pointer
265 : LDA  3, 3(5) ;  Update DMEM pointer
266 : LDA 6, 270(0) ;  Compute return address
267 : ST   6, 0(3) ;  Store return address
268 : ADD  5, 3, 0 ;  Updated Pointer
269 : LDA  7, 10(0) ; Call print
270 : LDC  4, 3(0) ;  Load frame size
271 : SUB  5, 5, 4 ;  Restore pointer
272 : ST   1, 2(5) ;  Store function result into stack frame
273 : LD   1, 1(5) ;  Load parameter 'n' into R1
274 : LDA  3, 3(5) ; Restore Callee frame base
275 : ST 1, 1(3) ;  Store argument 0 into callee frame
276 : LDA  3, 3(5) ; Restore Call frame base
277 : LDA 6, 281(0)) ;  Compute return address
278 : ST 6, 0(3) ;  Store return address in callee frame
279 : ADD  5, 3, 0 ;  Update pointer
280 : LDA 7, 287(0) ;  Call snowball
281 : LD 1, 2(5) ;  Load callee return value into R1
282 : LDC  4, 3(0) ;  Load frame size
283 : SUB  5, 5, 4 ;  Restore pointer
284 : ST   1, 2(5) ;  Store function result into stack frame
285 : LD   6, 0(5) ;  Load return address
286 : LDA  7, 0(6) ;  Return to caller
287 : LD   1, 1(5) ;  Load parameter 'n' into R1
288 : LDA  3, 3(5) ; Restore Callee frame base
289 : ST 1, 1(3) ;  Store argument 0 into callee frame
290 : LDA  3, 3(5) ; Restore Call frame base
291 : LDA 6, 295(0)) ;  Compute return address
292 : ST 6, 0(3) ;  Store return address in callee frame
293 : ADD  5, 3, 0 ;  Update pointer
294 : LDA 7, 235(0) ;  Call isPrime
295 : LD 1, 2(5) ;  Load callee return value into R1
296 : LDC  4, 3(0) ;  Load frame size
297 : SUB  5, 5, 4 ;  Restore pointer
298 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
299 : LD   1, 1(5) ;  Load parameter 'n' into R1
300 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
301 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
302 : SUB  1, 2, 1 ;  left - right for less-than check
303 : JLT  1, 2(7) ;  If R1 < 0, jump to true
304 : LDC  1, 0(0) ;  false
305 : LDA  7, 1(7) ;  skip setting true
306 : LDC  1, 1(0) ;  true
307 : JEQ  1, 310(0) ;  If condition is false, jump to ELSE
308 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
309 : LDA  7, 324(0) ;  Skip ELSE block
310 : LD   1, 1(5) ;  Load parameter 'n' into R1
311 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
312 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
313 : DIV  1, 2, 1 ;  R1 = left / right
314 : LDA  3, 3(5) ; Restore Callee frame base
315 : ST 1, 1(3) ;  Store argument 0 into callee frame
316 : LDA  3, 3(5) ; Restore Call frame base
317 : LDA 6, 321(0)) ;  Compute return address
318 : ST 6, 0(3) ;  Store return address in callee frame
319 : ADD  5, 3, 0 ;  Update pointer
320 : LDA 7, 235(0) ;  Call isPrime
321 : LD 1, 2(5) ;  Load callee return value into R1
322 : LDC  4, 3(0) ;  Load frame size
323 : SUB  5, 5, 4 ;  Restore pointer
324 : MUL  1, 2, 1 ;  R1 = left AND right
325 : ST   1, 2(5) ;  Store function result into stack frame
326 : LD   6, 0(5) ;  Load return address
327 : LDA  7, 0(6) ;  Return to caller
328 : LD   1, 1(5) ;  Load parameter 'n' into R1
329 : LDA  3, 3(5) ; Restore Callee frame base
330 : ST 1, 1(3) ;  Store argument 0 into callee frame
331 : LDA  3, 3(5) ; Restore Call frame base
332 : LDA 6, 336(0)) ;  Compute return address
333 : ST 6, 0(3) ;  Store return address in callee frame
334 : ADD  5, 3, 0 ;  Update pointer
335 : LDA 7, 235(0) ;  Call isPrime
336 : LD 1, 2(5) ;  Load callee return value into R1
337 : LDC  4, 3(0) ;  Load frame size
338 : SUB  5, 5, 4 ;  Restore pointer
339 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
340 : LD   1, 1(5) ;  Load parameter 'n' into R1
341 : LDA  3, 3(5) ; Restore Callee frame base
342 : ST 1, 1(3) ;  Store argument 0 into callee frame
343 : LDA  3, 3(5) ; Restore Call frame base
344 : LDA 6, 348(0)) ;  Compute return address
345 : ST 6, 0(3) ;  Store return address in callee frame
346 : ADD  5, 3, 0 ;  Update pointer
347 : LDA 7, 147(0) ;  Call reverse
348 : LD 1, 2(5) ;  Load callee return value into R1
349 : LDC  4, 3(0) ;  Load frame size
350 : SUB  5, 5, 4 ;  Restore pointer
351 : LDA  3, 3(5) ; Restore Callee frame base
352 : ST 1, 1(3) ;  Store argument 0 into callee frame
353 : LDA  3, 3(5) ; Restore Call frame base
354 : LDA 6, 358(0)) ;  Compute return address
355 : ST 6, 0(3) ;  Store return address in callee frame
356 : ADD  5, 3, 0 ;  Update pointer
357 : LDA 7, 235(0) ;  Call isPrime
358 : LD 1, 2(5) ;  Load callee return value into R1
359 : LDC  4, 3(0) ;  Load frame size
360 : SUB  5, 5, 4 ;  Restore pointer
361 : MUL  1, 2, 1 ;  R1 = left AND right
362 : ST   1, 2(5) ;  Store function result into stack frame
363 : LD   6, 0(5) ;  Load return address
364 : LDA  7, 0(6) ;  Return to caller
