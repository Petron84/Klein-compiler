0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LD   1, 1(5) ;  Load parameter 'length' into R1
15 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
16 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
19 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
20 : SUB  1, 2, 1 ;  R1 = left - right
21 : LDA  3, 3(5) ; Restore Callee frame base
22 : ST 1, 2(3) ;  Store argument 1 into callee frame
23 : LDA  3, 3(5) ; Restore Call frame base
24 : LDA 6, 28(0) ;  Compute return address
25 : ST 6, 0(3) ;  Store return address in callee frame
26 : ADD  5, 3, 0 ;  Update pointer
27 : LDA 7, 809(0) ;  Call EXP
28 : LD 1, 3(5) ;  Load callee return value into R1
29 : LDC  4, 3(0) ;  Load frame size
30 : SUB  5, 5, 4 ;  Restore pointer
31 : LDA  3, 3(5) ; Restore Callee frame base
32 : ST 1, 1(3) ;  Store argument 0 into callee frame
33 : LD   1, 1(5) ;  Load parameter 'length' into R1
34 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
35 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
36 : DIV  1, 2, 1 ;  R1 = left / right
37 : LDA  3, 3(5) ; Restore Callee frame base
38 : ST 1, 2(3) ;  Store argument 1 into callee frame
39 : LDA  3, 3(5) ; Restore Call frame base
40 : LDA 6, 44(0) ;  Compute return address
41 : ST 6, 0(3) ;  Store return address in callee frame
42 : ADD  5, 3, 0 ;  Update pointer
43 : LDA 7, 51(0) ;  Call createLoop
44 : LD 1, 3(5) ;  Load callee return value into R1
45 : LDC  4, 3(0) ;  Load frame size
46 : SUB  5, 5, 4 ;  Restore pointer
47 : ST 1, 2(5) ;  Store result into current frame's return slot
48 : LD   1, 2(5) ;  Load return value into register 1
49 : LD  6, 0(5) ;  Load return address for main function into register 6
50 : LDA  7, 0(6) ;  Jump to return address of main function
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : LDA  3, 4(5) ; Restore Callee frame base
53 : ST 1, 1(3) ;  Store argument 0 into callee frame
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : LDA  3, 4(5) ; Restore Callee frame base
56 : ST 1, 2(3) ;  Store argument 1 into callee frame
57 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
58 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : MUL  1, 2, 1 ;  R1 = left * right
61 : LDA  3, 4(5) ; Restore Callee frame base
62 : ST 1, 3(3) ;  Store argument 2 into callee frame
63 : LDA  3, 4(5) ; Restore Call frame base
64 : LDA 6, 68(0) ;  Compute return address
65 : ST 6, 0(3) ;  Store return address in callee frame
66 : ADD  5, 3, 0 ;  Update pointer
67 : LDA 7, 74(0) ;  Call aLoop
68 : LD 1, 4(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ST   1, 3(5) ;  Store function result into stack frame
72 : LD   6, 0(5) ;  Load return address
73 : LDA  7, 0(6) ;  Return to caller
74 : LD   1, 1(5) ;  Load parameter 'a' into R1
75 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
76 : LD   1, 3(5) ;  Load parameter 'upper' into R1
77 : SUB  1, 2, 1 ;  left - right for less-than check
78 : JLT  1, 2(7) ;  If R1 < 0, jump to true
79 : LDC  1, 0(0) ;  false
80 : LDA  7, 1(7) ;  skip setting true
81 : LDC  1, 1(0) ;  true
82 : JEQ  1, 145(0) ;  If condition is false, jump to ELSE
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : LDA  3, 5(5) ; Restore Callee frame base
85 : ST 1, 1(3) ;  Store argument 0 into callee frame
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : LDA  3, 5(5) ; Restore Callee frame base
88 : ST 1, 2(3) ;  Store argument 1 into callee frame
89 : LD   1, 3(5) ;  Load parameter 'upper' into R1
90 : LDA  3, 5(5) ; Restore Callee frame base
91 : ST 1, 3(3) ;  Store argument 2 into callee frame
92 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
93 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
94 : LD   1, 1(5) ;  Load parameter 'a' into R1
95 : LDA  3, 5(5) ; Restore Callee frame base
96 : ST 1, 1(3) ;  Store argument 0 into callee frame
97 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
98 : LDA  3, 5(5) ; Restore Callee frame base
99 : ST 1, 2(3) ;  Store argument 1 into callee frame
100 : LDA  3, 5(5) ; Restore Call frame base
101 : LDA 6, 105(0) ;  Compute return address
102 : ST 6, 0(3) ;  Store return address in callee frame
103 : ADD  5, 3, 0 ;  Update pointer
104 : LDA 7, 809(0) ;  Call EXP
105 : LD 1, 3(5) ;  Load callee return value into R1
106 : LDC  4, 5(0) ;  Load frame size
107 : SUB  5, 5, 4 ;  Restore pointer
108 : MUL  1, 2, 1 ;  R1 = left * right
109 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
110 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
111 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
112 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
113 : LDA  3, 5(5) ; Restore Callee frame base
114 : ST 1, 1(3) ;  Store argument 0 into callee frame
115 : LD   1, 2(5) ;  Load parameter 'n' into R1
116 : LDA  3, 5(5) ; Restore Callee frame base
117 : ST 1, 2(3) ;  Store argument 1 into callee frame
118 : LDA  3, 5(5) ; Restore Call frame base
119 : LDA 6, 123(0) ;  Compute return address
120 : ST 6, 0(3) ;  Store return address in callee frame
121 : ADD  5, 3, 0 ;  Update pointer
122 : LDA 7, 809(0) ;  Call EXP
123 : LD 1, 3(5) ;  Load callee return value into R1
124 : LDC  4, 5(0) ;  Load frame size
125 : SUB  5, 5, 4 ;  Restore pointer
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
128 : LD   1, 1(5) ;  Load parameter 'a' into R1
129 : MUL  1, 2, 1 ;  R1 = left * right
130 : ADD  1, 2, 1 ;  R1 = left + right
131 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
132 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
133 : ADD  1, 2, 1 ;  R1 = left + right
134 : LDA  3, 5(5) ; Restore Callee frame base
135 : ST 1, 4(3) ;  Store argument 3 into callee frame
136 : LDA  3, 5(5) ; Restore Call frame base
137 : LDA 6, 141(0) ;  Compute return address
138 : ST 6, 0(3) ;  Store return address in callee frame
139 : ADD  5, 3, 0 ;  Update pointer
140 : LDA 7, 149(0) ;  Call aLoop1
141 : LD 1, 5(5) ;  Load callee return value into R1
142 : LDC  4, 5(0) ;  Load frame size
143 : SUB  5, 5, 4 ;  Restore pointer
144 : LDA  7, 146(0) ;  Skip ELSE block
145 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
146 : ST   1, 4(5) ;  Store function result into stack frame
147 : LD   6, 0(5) ;  Load return address
148 : LDA  7, 0(6) ;  Return to caller
149 : LD   1, 1(5) ;  Load parameter 'a' into R1
150 : LDA  3, 6(5) ; Restore Callee frame base
151 : ST 1, 1(3) ;  Store argument 0 into callee frame
152 : LD   1, 2(5) ;  Load parameter 'n' into R1
153 : LDA  3, 6(5) ; Restore Callee frame base
154 : ST 1, 2(3) ;  Store argument 1 into callee frame
155 : LD   1, 3(5) ;  Load parameter 'upper' into R1
156 : LDA  3, 6(5) ; Restore Callee frame base
157 : ST 1, 3(3) ;  Store argument 2 into callee frame
158 : LD   1, 4(5) ;  Load parameter 'det' into R1
159 : LDA  3, 6(5) ; Restore Callee frame base
160 : ST 1, 4(3) ;  Store argument 3 into callee frame
161 : LD   1, 4(5) ;  Load parameter 'det' into R1
162 : LDA  3, 6(5) ; Restore Callee frame base
163 : ST 1, 1(3) ;  Store argument 0 into callee frame
164 : LDA  3, 6(5) ; Restore Call frame base
165 : LDA 6, 169(0) ;  Compute return address
166 : ST 6, 0(3) ;  Store return address in callee frame
167 : ADD  5, 3, 0 ;  Update pointer
168 : LDA 7, 729(0) ;  Call SQRT
169 : LD 1, 2(5) ;  Load callee return value into R1
170 : LDC  4, 6(0) ;  Load frame size
171 : SUB  5, 5, 4 ;  Restore pointer
172 : LDA  3, 6(5) ; Restore Callee frame base
173 : ST 1, 5(3) ;  Store argument 4 into callee frame
174 : LDA  3, 6(5) ; Restore Call frame base
175 : LDA 6, 179(0) ;  Compute return address
176 : ST 6, 0(3) ;  Store return address in callee frame
177 : ADD  5, 3, 0 ;  Update pointer
178 : LDA 7, 185(0) ;  Call aLoop2
179 : LD 1, 6(5) ;  Load callee return value into R1
180 : LDC  4, 6(0) ;  Load frame size
181 : SUB  5, 5, 4 ;  Restore pointer
182 : ST   1, 5(5) ;  Store function result into stack frame
183 : LD   6, 0(5) ;  Load return address
184 : LDA  7, 0(6) ;  Return to caller
185 : LD   1, 1(5) ;  Load parameter 'a' into R1
186 : LDA  3, 7(5) ; Restore Callee frame base
187 : ST 1, 1(3) ;  Store argument 0 into callee frame
188 : LD   1, 2(5) ;  Load parameter 'n' into R1
189 : LDA  3, 7(5) ; Restore Callee frame base
190 : ST 1, 2(3) ;  Store argument 1 into callee frame
191 : LD   1, 3(5) ;  Load parameter 'upper' into R1
192 : LDA  3, 7(5) ; Restore Callee frame base
193 : ST 1, 3(3) ;  Store argument 2 into callee frame
194 : LD   1, 4(5) ;  Load parameter 'det' into R1
195 : LDA  3, 7(5) ; Restore Callee frame base
196 : ST 1, 4(3) ;  Store argument 3 into callee frame
197 : LD   1, 5(5) ;  Load parameter 'root' into R1
198 : LDA  3, 7(5) ; Restore Callee frame base
199 : ST 1, 5(3) ;  Store argument 4 into callee frame
200 : LD   1, 1(5) ;  Load parameter 'a' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
203 : LDA  3, 7(5) ; Restore Callee frame base
204 : ST 1, 1(3) ;  Store argument 0 into callee frame
205 : LD   1, 2(5) ;  Load parameter 'n' into R1
206 : LDA  3, 7(5) ; Restore Callee frame base
207 : ST 1, 2(3) ;  Store argument 1 into callee frame
208 : LDA  3, 7(5) ; Restore Call frame base
209 : LDA 6, 213(0) ;  Compute return address
210 : ST 6, 0(3) ;  Store return address in callee frame
211 : ADD  5, 3, 0 ;  Update pointer
212 : LDA 7, 809(0) ;  Call EXP
213 : LD 1, 3(5) ;  Load callee return value into R1
214 : LDC  4, 7(0) ;  Load frame size
215 : SUB  5, 5, 4 ;  Restore pointer
216 : MUL  1, 2, 1 ;  R1 = left * right
217 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
218 : LD   1, 5(5) ;  Load parameter 'root' into R1
219 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
220 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
221 : ADD  1, 2, 1 ;  R1 = left + right
222 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
223 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
224 : DIV  1, 2, 1 ;  R1 = left / right
225 : ADD  1, 2, 1 ;  R1 = left + right
226 : LDA  3, 7(5) ; Restore Callee frame base
227 : ST 1, 6(3) ;  Store argument 5 into callee frame
228 : LDA  3, 7(5) ; Restore Call frame base
229 : LDA 6, 233(0) ;  Compute return address
230 : ST 6, 0(3) ;  Store return address in callee frame
231 : ADD  5, 3, 0 ;  Update pointer
232 : LDA 7, 239(0) ;  Call aLoop3
233 : LD 1, 7(5) ;  Load callee return value into R1
234 : LDC  4, 7(0) ;  Load frame size
235 : SUB  5, 5, 4 ;  Restore pointer
236 : ST   1, 6(5) ;  Store function result into stack frame
237 : LD   6, 0(5) ;  Load return address
238 : LDA  7, 0(6) ;  Return to caller
239 : LD   1, 5(5) ;  Load parameter 'root' into R1
240 : LDA  3, 8(5) ; Restore Callee frame base
241 : ST 1, 1(3) ;  Store argument 0 into callee frame
242 : LD   1, 4(5) ;  Load parameter 'det' into R1
243 : LDA  3, 8(5) ; Restore Callee frame base
244 : ST 1, 2(3) ;  Store argument 1 into callee frame
245 : LDA  3, 8(5) ; Restore Call frame base
246 : LDA 6, 250(0) ;  Compute return address
247 : ST 6, 0(3) ;  Store return address in callee frame
248 : ADD  5, 3, 0 ;  Update pointer
249 : LDA 7, 564(0) ;  Call ISROOT
250 : LD 1, 3(5) ;  Load callee return value into R1
251 : LDC  4, 8(0) ;  Load frame size
252 : SUB  5, 5, 4 ;  Restore pointer
253 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
254 : LD   1, 5(5) ;  Load parameter 'root' into R1
255 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
256 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
257 : ADD  1, 2, 1 ;  R1 = left + right
258 : LDA  3, 8(5) ; Restore Callee frame base
259 : ST 1, 1(3) ;  Store argument 0 into callee frame
260 : LDA  3, 8(5) ; Restore Call frame base
261 : LDA 6, 265(0) ;  Compute return address
262 : ST 6, 0(3) ;  Store return address in callee frame
263 : ADD  5, 3, 0 ;  Update pointer
264 : LDA 7, 578(0) ;  Call EVEN
265 : LD 1, 2(5) ;  Load callee return value into R1
266 : LDC  4, 8(0) ;  Load frame size
267 : SUB  5, 5, 4 ;  Restore pointer
268 : MUL  1, 2, 1 ;  R1 = left AND right
269 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
270 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
271 : LDA  3, 8(5) ; Restore Callee frame base
272 : ST 1, 1(3) ;  Store argument 0 into callee frame
273 : LDA  3, 8(5) ; Restore Call frame base
274 : LDA 6, 278(0) ;  Compute return address
275 : ST 6, 0(3) ;  Store return address in callee frame
276 : ADD  5, 3, 0 ;  Update pointer
277 : LDA 7, 359(0) ;  Call isExcellent
278 : LD 1, 2(5) ;  Load callee return value into R1
279 : LDC  4, 8(0) ;  Load frame size
280 : SUB  5, 5, 4 ;  Restore pointer
281 : MUL  1, 2, 1 ;  R1 = left AND right
282 : JEQ  1, 304(0) ;  If condition is false, jump to ELSE
283 : LD   1, 1(5) ;  Load parameter 'a' into R1
284 : LDA  3, 8(5) ; Restore Callee frame base
285 : ST 1, 1(3) ;  Store argument 0 into callee frame
286 : LD   1, 2(5) ;  Load parameter 'n' into R1
287 : LDA  3, 8(5) ; Restore Callee frame base
288 : ST 1, 2(3) ;  Store argument 1 into callee frame
289 : LD   1, 3(5) ;  Load parameter 'upper' into R1
290 : LDA  3, 8(5) ; Restore Callee frame base
291 : ST 1, 3(3) ;  Store argument 2 into callee frame
292 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
293 : LDA  3, 8(5) ; Restore Callee frame base
294 : ST 1, 4(3) ;  Store argument 3 into callee frame
295 : LDA  3, 8(5) ; Restore Call frame base
296 : LDA 6, 300(0) ;  Compute return address
297 : ST 6, 0(3) ;  Store return address in callee frame
298 : ADD  5, 3, 0 ;  Update pointer
299 : LDA 7, 327(0) ;  Call printCandidateAndContinue
300 : LD 1, 5(5) ;  Load callee return value into R1
301 : LDC  4, 8(0) ;  Load frame size
302 : SUB  5, 5, 4 ;  Restore pointer
303 : LDA  7, 324(0) ;  Skip ELSE block
304 : LD   1, 1(5) ;  Load parameter 'a' into R1
305 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
306 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
307 : ADD  1, 2, 1 ;  R1 = left + right
308 : LDA  3, 8(5) ; Restore Callee frame base
309 : ST 1, 1(3) ;  Store argument 0 into callee frame
310 : LD   1, 2(5) ;  Load parameter 'n' into R1
311 : LDA  3, 8(5) ; Restore Callee frame base
312 : ST 1, 2(3) ;  Store argument 1 into callee frame
313 : LD   1, 3(5) ;  Load parameter 'upper' into R1
314 : LDA  3, 8(5) ; Restore Callee frame base
315 : ST 1, 3(3) ;  Store argument 2 into callee frame
316 : LDA  3, 8(5) ; Restore Call frame base
317 : LDA 6, 321(0) ;  Compute return address
318 : ST 6, 0(3) ;  Store return address in callee frame
319 : ADD  5, 3, 0 ;  Update pointer
320 : LDA 7, 74(0) ;  Call aLoop
321 : LD 1, 4(5) ;  Load callee return value into R1
322 : LDC  4, 8(0) ;  Load frame size
323 : SUB  5, 5, 4 ;  Restore pointer
324 : ST   1, 7(5) ;  Store function result into stack frame
325 : LD   6, 0(5) ;  Load return address
326 : LDA  7, 0(6) ;  Return to caller
327 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
328 : LDA  3, 6(5) ;  Update DMEM pointer
329 : LDA 6, 333(0) ;  Compute return address
330 : ST   6, 0(3) ;  Store return address
331 : ADD  5, 3, 0 ;  Updated Pointer
332 : LDA  7, 8(0) ; Call print
333 : LDC  4, 6(0) ;  Load frame size
334 : SUB  5, 5, 4 ;  Restore pointer
335 : ST   1, 5(5) ;  Store function result into stack frame
336 : LD   1, 1(5) ;  Load parameter 'a' into R1
337 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
338 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
339 : ADD  1, 2, 1 ;  R1 = left + right
340 : LDA  3, 6(5) ; Restore Callee frame base
341 : ST 1, 1(3) ;  Store argument 0 into callee frame
342 : LD   1, 2(5) ;  Load parameter 'n' into R1
343 : LDA  3, 6(5) ; Restore Callee frame base
344 : ST 1, 2(3) ;  Store argument 1 into callee frame
345 : LD   1, 3(5) ;  Load parameter 'upper' into R1
346 : LDA  3, 6(5) ; Restore Callee frame base
347 : ST 1, 3(3) ;  Store argument 2 into callee frame
348 : LDA  3, 6(5) ; Restore Call frame base
349 : LDA 6, 353(0) ;  Compute return address
350 : ST 6, 0(3) ;  Store return address in callee frame
351 : ADD  5, 3, 0 ;  Update pointer
352 : LDA 7, 74(0) ;  Call aLoop
353 : LD 1, 4(5) ;  Load callee return value into R1
354 : LDC  4, 6(0) ;  Load frame size
355 : SUB  5, 5, 4 ;  Restore pointer
356 : ST   1, 5(5) ;  Store function result into stack frame
357 : LD   6, 0(5) ;  Load return address
358 : LDA  7, 0(6) ;  Return to caller
359 : LD   1, 1(5) ;  Load parameter 'n' into R1
360 : LDA  3, 3(5) ; Restore Callee frame base
361 : ST 1, 1(3) ;  Store argument 0 into callee frame
362 : LD   1, 1(5) ;  Load parameter 'n' into R1
363 : LDA  3, 3(5) ; Restore Callee frame base
364 : ST 1, 1(3) ;  Store argument 0 into callee frame
365 : LDA  3, 3(5) ; Restore Call frame base
366 : LDA 6, 370(0) ;  Compute return address
367 : ST 6, 0(3) ;  Store return address in callee frame
368 : ADD  5, 3, 0 ;  Update pointer
369 : LDA 7, 533(0) ;  Call length
370 : LD 1, 2(5) ;  Load callee return value into R1
371 : LDC  4, 3(0) ;  Load frame size
372 : SUB  5, 5, 4 ;  Restore pointer
373 : LDA  3, 3(5) ; Restore Callee frame base
374 : ST 1, 2(3) ;  Store argument 1 into callee frame
375 : LDA  3, 3(5) ; Restore Call frame base
376 : LDA 6, 380(0) ;  Compute return address
377 : ST 6, 0(3) ;  Store return address in callee frame
378 : ADD  5, 3, 0 ;  Update pointer
379 : LDA 7, 386(0) ;  Call isExcellentSwitch
380 : LD 1, 3(5) ;  Load callee return value into R1
381 : LDC  4, 3(0) ;  Load frame size
382 : SUB  5, 5, 4 ;  Restore pointer
383 : ST   1, 2(5) ;  Store function result into stack frame
384 : LD   6, 0(5) ;  Load return address
385 : LDA  7, 0(6) ;  Return to caller
386 : LD   1, 2(5) ;  Load parameter 'length' into R1
387 : LDA  3, 4(5) ; Restore Callee frame base
388 : ST 1, 1(3) ;  Store argument 0 into callee frame
389 : LDA  3, 4(5) ; Restore Call frame base
390 : LDA 6, 394(0) ;  Compute return address
391 : ST 6, 0(3) ;  Store return address in callee frame
392 : ADD  5, 3, 0 ;  Update pointer
393 : LDA 7, 770(0) ;  Call ODD
394 : LD 1, 2(5) ;  Load callee return value into R1
395 : LDC  4, 4(0) ;  Load frame size
396 : SUB  5, 5, 4 ;  Restore pointer
397 : JEQ  1, 400(0) ;  If condition is false, jump to ELSE
398 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
399 : LDA  7, 441(0) ;  Skip ELSE block
400 : LD   1, 1(5) ;  Load parameter 'n' into R1
401 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
402 : LD   1, 1(5) ;  Load parameter 'n' into R1
403 : LDA  3, 4(5) ; Restore Callee frame base
404 : ST 1, 1(3) ;  Store argument 0 into callee frame
405 : LDA  3, 4(5) ; Restore Call frame base
406 : LDA 6, 410(0) ;  Compute return address
407 : ST 6, 0(3) ;  Store return address in callee frame
408 : ADD  5, 3, 0 ;  Update pointer
409 : LDA 7, 500(0) ;  Call a
410 : LD 1, 2(5) ;  Load callee return value into R1
411 : LDC  4, 4(0) ;  Load frame size
412 : SUB  5, 5, 4 ;  Restore pointer
413 : LDA  3, 4(5) ; Restore Callee frame base
414 : ST 1, 1(3) ;  Store argument 0 into callee frame
415 : LD   1, 1(5) ;  Load parameter 'n' into R1
416 : LDA  3, 4(5) ; Restore Callee frame base
417 : ST 1, 1(3) ;  Store argument 0 into callee frame
418 : LDA  3, 4(5) ; Restore Call frame base
419 : LDA 6, 423(0) ;  Compute return address
420 : ST 6, 0(3) ;  Store return address in callee frame
421 : ADD  5, 3, 0 ;  Update pointer
422 : LDA 7, 457(0) ;  Call b
423 : LD 1, 2(5) ;  Load callee return value into R1
424 : LDC  4, 4(0) ;  Load frame size
425 : SUB  5, 5, 4 ;  Restore pointer
426 : LDA  3, 4(5) ; Restore Callee frame base
427 : ST 1, 2(3) ;  Store argument 1 into callee frame
428 : LDA  3, 4(5) ; Restore Call frame base
429 : LDA 6, 433(0) ;  Compute return address
430 : ST 6, 0(3) ;  Store return address in callee frame
431 : ADD  5, 3, 0 ;  Update pointer
432 : LDA 7, 444(0) ;  Call excellentDiff
433 : LD 1, 3(5) ;  Load callee return value into R1
434 : LDC  4, 4(0) ;  Load frame size
435 : SUB  5, 5, 4 ;  Restore pointer
436 : SUB  1, 2, 1 ;  left - right for equality check
437 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
438 : LDC  1, 0(0) ;  false
439 : LDA  7, 1(7) ;  skip setting true
440 : LDC  1, 1(0) ;  true
441 : ST   1, 3(5) ;  Store function result into stack frame
442 : LD   6, 0(5) ;  Load return address
443 : LDA  7, 0(6) ;  Return to caller
444 : LD   1, 2(5) ;  Load parameter 'b' into R1
445 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
446 : LD   1, 2(5) ;  Load parameter 'b' into R1
447 : MUL  1, 2, 1 ;  R1 = left * right
448 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
449 : LD   1, 1(5) ;  Load parameter 'a' into R1
450 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
451 : LD   1, 1(5) ;  Load parameter 'a' into R1
452 : MUL  1, 2, 1 ;  R1 = left * right
453 : SUB  1, 2, 1 ;  R1 = left - right
454 : ST   1, 3(5) ;  Store function result into stack frame
455 : LD   6, 0(5) ;  Load return address
456 : LDA  7, 0(6) ;  Return to caller
457 : LD   1, 1(5) ;  Load parameter 'n' into R1
458 : LDA  3, 3(5) ; Restore Callee frame base
459 : ST 1, 1(3) ;  Store argument 0 into callee frame
460 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
461 : LDA  3, 3(5) ; Restore Callee frame base
462 : ST 1, 1(3) ;  Store argument 0 into callee frame
463 : LD   1, 1(5) ;  Load parameter 'n' into R1
464 : LDA  3, 3(5) ; Restore Callee frame base
465 : ST 1, 1(3) ;  Store argument 0 into callee frame
466 : LDA  3, 3(5) ; Restore Call frame base
467 : LDA 6, 471(0) ;  Compute return address
468 : ST 6, 0(3) ;  Store return address in callee frame
469 : ADD  5, 3, 0 ;  Update pointer
470 : LDA 7, 533(0) ;  Call length
471 : LD 1, 2(5) ;  Load callee return value into R1
472 : LDC  4, 3(0) ;  Load frame size
473 : SUB  5, 5, 4 ;  Restore pointer
474 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
475 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
476 : DIV  1, 2, 1 ;  R1 = left / right
477 : LDA  3, 3(5) ; Restore Callee frame base
478 : ST 1, 2(3) ;  Store argument 1 into callee frame
479 : LDA  3, 3(5) ; Restore Call frame base
480 : LDA 6, 484(0) ;  Compute return address
481 : ST 6, 0(3) ;  Store return address in callee frame
482 : ADD  5, 3, 0 ;  Update pointer
483 : LDA 7, 809(0) ;  Call EXP
484 : LD 1, 3(5) ;  Load callee return value into R1
485 : LDC  4, 3(0) ;  Load frame size
486 : SUB  5, 5, 4 ;  Restore pointer
487 : LDA  3, 3(5) ; Restore Callee frame base
488 : ST 1, 2(3) ;  Store argument 1 into callee frame
489 : LDA  3, 3(5) ; Restore Call frame base
490 : LDA 6, 494(0) ;  Compute return address
491 : ST 6, 0(3) ;  Store return address in callee frame
492 : ADD  5, 3, 0 ;  Update pointer
493 : LDA 7, 843(0) ;  Call MOD
494 : LD 1, 3(5) ;  Load callee return value into R1
495 : LDC  4, 3(0) ;  Load frame size
496 : SUB  5, 5, 4 ;  Restore pointer
497 : ST   1, 2(5) ;  Store function result into stack frame
498 : LD   6, 0(5) ;  Load return address
499 : LDA  7, 0(6) ;  Return to caller
500 : LD   1, 1(5) ;  Load parameter 'n' into R1
501 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
502 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
503 : LDA  3, 3(5) ; Restore Callee frame base
504 : ST 1, 1(3) ;  Store argument 0 into callee frame
505 : LD   1, 1(5) ;  Load parameter 'n' into R1
506 : LDA  3, 3(5) ; Restore Callee frame base
507 : ST 1, 1(3) ;  Store argument 0 into callee frame
508 : LDA  3, 3(5) ; Restore Call frame base
509 : LDA 6, 513(0) ;  Compute return address
510 : ST 6, 0(3) ;  Store return address in callee frame
511 : ADD  5, 3, 0 ;  Update pointer
512 : LDA 7, 533(0) ;  Call length
513 : LD 1, 2(5) ;  Load callee return value into R1
514 : LDC  4, 3(0) ;  Load frame size
515 : SUB  5, 5, 4 ;  Restore pointer
516 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
517 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
518 : DIV  1, 2, 1 ;  R1 = left / right
519 : LDA  3, 3(5) ; Restore Callee frame base
520 : ST 1, 2(3) ;  Store argument 1 into callee frame
521 : LDA  3, 3(5) ; Restore Call frame base
522 : LDA 6, 526(0) ;  Compute return address
523 : ST 6, 0(3) ;  Store return address in callee frame
524 : ADD  5, 3, 0 ;  Update pointer
525 : LDA 7, 809(0) ;  Call EXP
526 : LD 1, 3(5) ;  Load callee return value into R1
527 : LDC  4, 3(0) ;  Load frame size
528 : SUB  5, 5, 4 ;  Restore pointer
529 : DIV  1, 2, 1 ;  R1 = left / right
530 : ST   1, 2(5) ;  Store function result into stack frame
531 : LD   6, 0(5) ;  Load return address
532 : LDA  7, 0(6) ;  Return to caller
533 : LD   1, 1(5) ;  Load parameter 'n' into R1
534 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
535 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
536 : SUB  1, 2, 1 ;  left - right for less-than check
537 : JLT  1, 2(7) ;  If R1 < 0, jump to true
538 : LDC  1, 0(0) ;  false
539 : LDA  7, 1(7) ;  skip setting true
540 : LDC  1, 1(0) ;  true
541 : JEQ  1, 544(0) ;  If condition is false, jump to ELSE
542 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
543 : LDA  7, 561(0) ;  Skip ELSE block
544 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
545 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
546 : LD   1, 1(5) ;  Load parameter 'n' into R1
547 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
548 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
549 : DIV  1, 2, 1 ;  R1 = left / right
550 : LDA  3, 3(5) ; Restore Callee frame base
551 : ST 1, 1(3) ;  Store argument 0 into callee frame
552 : LDA  3, 3(5) ; Restore Call frame base
553 : LDA 6, 557(0) ;  Compute return address
554 : ST 6, 0(3) ;  Store return address in callee frame
555 : ADD  5, 3, 0 ;  Update pointer
556 : LDA 7, 533(0) ;  Call length
557 : LD 1, 2(5) ;  Load callee return value into R1
558 : LDC  4, 3(0) ;  Load frame size
559 : SUB  5, 5, 4 ;  Restore pointer
560 : ADD  1, 2, 1 ;  R1 = left + right
561 : ST   1, 2(5) ;  Store function result into stack frame
562 : LD   6, 0(5) ;  Load return address
563 : LDA  7, 0(6) ;  Return to caller
564 : LD   1, 2(5) ;  Load parameter 'n' into R1
565 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
566 : LD   1, 1(5) ;  Load parameter 'r' into R1
567 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
568 : LD   1, 1(5) ;  Load parameter 'r' into R1
569 : MUL  1, 2, 1 ;  R1 = left * right
570 : SUB  1, 2, 1 ;  left - right for equality check
571 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
572 : LDC  1, 0(0) ;  false
573 : LDA  7, 1(7) ;  skip setting true
574 : LDC  1, 1(0) ;  true
575 : ST   1, 3(5) ;  Store function result into stack frame
576 : LD   6, 0(5) ;  Load return address
577 : LDA  7, 0(6) ;  Return to caller
578 : LD   1, 1(5) ;  Load parameter 'n' into R1
579 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
580 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
581 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
582 : LD   1, 1(5) ;  Load parameter 'n' into R1
583 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
584 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
585 : DIV  1, 2, 1 ;  R1 = left / right
586 : MUL  1, 2, 1 ;  R1 = left * right
587 : SUB  1, 2, 1 ;  left - right for equality check
588 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
589 : LDC  1, 0(0) ;  false
590 : LDA  7, 1(7) ;  skip setting true
591 : LDC  1, 1(0) ;  true
592 : ST   1, 2(5) ;  Store function result into stack frame
593 : LD   6, 0(5) ;  Load return address
594 : LDA  7, 0(6) ;  Return to caller
595 : LD   1, 4(5) ;  Load parameter 'mid' into R1
596 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
597 : LD   1, 4(5) ;  Load parameter 'mid' into R1
598 : MUL  1, 2, 1 ;  R1 = left * right
599 : LDA  3, 6(5) ; Restore Callee frame base
600 : ST 1, 1(3) ;  Store argument 0 into callee frame
601 : LD   1, 1(5) ;  Load parameter 'n' into R1
602 : LDA  3, 6(5) ; Restore Callee frame base
603 : ST 1, 2(3) ;  Store argument 1 into callee frame
604 : LDA  3, 6(5) ; Restore Call frame base
605 : LDA 6, 609(0) ;  Compute return address
606 : ST 6, 0(3) ;  Store return address in callee frame
607 : ADD  5, 3, 0 ;  Update pointer
608 : LDA 7, 749(0) ;  Call LE
609 : LD 1, 3(5) ;  Load callee return value into R1
610 : LDC  4, 6(0) ;  Load frame size
611 : SUB  5, 5, 4 ;  Restore pointer
612 : JEQ  1, 631(0) ;  If condition is false, jump to ELSE
613 : LD   1, 1(5) ;  Load parameter 'n' into R1
614 : LDA  3, 6(5) ; Restore Callee frame base
615 : ST 1, 1(3) ;  Store argument 0 into callee frame
616 : LD   1, 4(5) ;  Load parameter 'mid' into R1
617 : LDA  3, 6(5) ; Restore Callee frame base
618 : ST 1, 2(3) ;  Store argument 1 into callee frame
619 : LD   1, 3(5) ;  Load parameter 'high' into R1
620 : LDA  3, 6(5) ; Restore Callee frame base
621 : ST 1, 3(3) ;  Store argument 2 into callee frame
622 : LDA  3, 6(5) ; Restore Call frame base
623 : LDA 6, 627(0) ;  Compute return address
624 : ST 6, 0(3) ;  Store return address in callee frame
625 : ADD  5, 3, 0 ;  Update pointer
626 : LDA 7, 651(0) ;  Call SQRTSEARCH
627 : LD 1, 4(5) ;  Load callee return value into R1
628 : LDC  4, 6(0) ;  Load frame size
629 : SUB  5, 5, 4 ;  Restore pointer
630 : LDA  7, 648(0) ;  Skip ELSE block
631 : LD   1, 1(5) ;  Load parameter 'n' into R1
632 : LDA  3, 6(5) ; Restore Callee frame base
633 : ST 1, 1(3) ;  Store argument 0 into callee frame
634 : LD   1, 2(5) ;  Load parameter 'low' into R1
635 : LDA  3, 6(5) ; Restore Callee frame base
636 : ST 1, 2(3) ;  Store argument 1 into callee frame
637 : LD   1, 4(5) ;  Load parameter 'mid' into R1
638 : LDA  3, 6(5) ; Restore Callee frame base
639 : ST 1, 3(3) ;  Store argument 2 into callee frame
640 : LDA  3, 6(5) ; Restore Call frame base
641 : LDA 6, 645(0) ;  Compute return address
642 : ST 6, 0(3) ;  Store return address in callee frame
643 : ADD  5, 3, 0 ;  Update pointer
644 : LDA 7, 651(0) ;  Call SQRTSEARCH
645 : LD 1, 4(5) ;  Load callee return value into R1
646 : LDC  4, 6(0) ;  Load frame size
647 : SUB  5, 5, 4 ;  Restore pointer
648 : ST   1, 5(5) ;  Store function result into stack frame
649 : LD   6, 0(5) ;  Load return address
650 : LDA  7, 0(6) ;  Return to caller
651 : LD   1, 3(5) ;  Load parameter 'high' into R1
652 : LDA  3, 5(5) ; Restore Callee frame base
653 : ST 1, 1(3) ;  Store argument 0 into callee frame
654 : LD   1, 2(5) ;  Load parameter 'low' into R1
655 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
656 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
657 : ADD  1, 2, 1 ;  R1 = left + right
658 : LDA  3, 5(5) ; Restore Callee frame base
659 : ST 1, 2(3) ;  Store argument 1 into callee frame
660 : LDA  3, 5(5) ; Restore Call frame base
661 : LDA 6, 665(0) ;  Compute return address
662 : ST 6, 0(3) ;  Store return address in callee frame
663 : ADD  5, 3, 0 ;  Update pointer
664 : LDA 7, 749(0) ;  Call LE
665 : LD 1, 3(5) ;  Load callee return value into R1
666 : LDC  4, 5(0) ;  Load frame size
667 : SUB  5, 5, 4 ;  Restore pointer
668 : JEQ  1, 700(0) ;  If condition is false, jump to ELSE
669 : LD   1, 1(5) ;  Load parameter 'n' into R1
670 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
671 : LD   1, 2(5) ;  Load parameter 'low' into R1
672 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
673 : LD   1, 2(5) ;  Load parameter 'low' into R1
674 : MUL  1, 2, 1 ;  R1 = left * right
675 : SUB  1, 2, 1 ;  R1 = left - right
676 : LDA  3, 5(5) ; Restore Callee frame base
677 : ST 1, 1(3) ;  Store argument 0 into callee frame
678 : LD   1, 3(5) ;  Load parameter 'high' into R1
679 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
680 : LD   1, 3(5) ;  Load parameter 'high' into R1
681 : MUL  1, 2, 1 ;  R1 = left * right
682 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
683 : LD   1, 1(5) ;  Load parameter 'n' into R1
684 : SUB  1, 2, 1 ;  R1 = left - right
685 : LDA  3, 5(5) ; Restore Callee frame base
686 : ST 1, 2(3) ;  Store argument 1 into callee frame
687 : LDA  3, 5(5) ; Restore Call frame base
688 : LDA 6, 692(0) ;  Compute return address
689 : ST 6, 0(3) ;  Store return address in callee frame
690 : ADD  5, 3, 0 ;  Update pointer
691 : LDA 7, 749(0) ;  Call LE
692 : LD 1, 3(5) ;  Load callee return value into R1
693 : LDC  4, 5(0) ;  Load frame size
694 : SUB  5, 5, 4 ;  Restore pointer
695 : JEQ  1, 698(0) ;  If condition is false, jump to ELSE
696 : LD   1, 2(5) ;  Load parameter 'low' into R1
697 : LDA  7, 699(0) ;  Skip ELSE block
698 : LD   1, 3(5) ;  Load parameter 'high' into R1
699 : LDA  7, 726(0) ;  Skip ELSE block
700 : LD   1, 1(5) ;  Load parameter 'n' into R1
701 : LDA  3, 5(5) ; Restore Callee frame base
702 : ST 1, 1(3) ;  Store argument 0 into callee frame
703 : LD   1, 2(5) ;  Load parameter 'low' into R1
704 : LDA  3, 5(5) ; Restore Callee frame base
705 : ST 1, 2(3) ;  Store argument 1 into callee frame
706 : LD   1, 3(5) ;  Load parameter 'high' into R1
707 : LDA  3, 5(5) ; Restore Callee frame base
708 : ST 1, 3(3) ;  Store argument 2 into callee frame
709 : LD   1, 2(5) ;  Load parameter 'low' into R1
710 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
711 : LD   1, 3(5) ;  Load parameter 'high' into R1
712 : ADD  1, 2, 1 ;  R1 = left + right
713 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
714 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
715 : DIV  1, 2, 1 ;  R1 = left / right
716 : LDA  3, 5(5) ; Restore Callee frame base
717 : ST 1, 4(3) ;  Store argument 3 into callee frame
718 : LDA  3, 5(5) ; Restore Call frame base
719 : LDA 6, 723(0) ;  Compute return address
720 : ST 6, 0(3) ;  Store return address in callee frame
721 : ADD  5, 3, 0 ;  Update pointer
722 : LDA 7, 595(0) ;  Call SQRTSPLIT
723 : LD 1, 5(5) ;  Load callee return value into R1
724 : LDC  4, 5(0) ;  Load frame size
725 : SUB  5, 5, 4 ;  Restore pointer
726 : ST   1, 4(5) ;  Store function result into stack frame
727 : LD   6, 0(5) ;  Load return address
728 : LDA  7, 0(6) ;  Return to caller
729 : LD   1, 1(5) ;  Load parameter 'n' into R1
730 : LDA  3, 3(5) ; Restore Callee frame base
731 : ST 1, 1(3) ;  Store argument 0 into callee frame
732 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
733 : LDA  3, 3(5) ; Restore Callee frame base
734 : ST 1, 2(3) ;  Store argument 1 into callee frame
735 : LD   1, 1(5) ;  Load parameter 'n' into R1
736 : LDA  3, 3(5) ; Restore Callee frame base
737 : ST 1, 3(3) ;  Store argument 2 into callee frame
738 : LDA  3, 3(5) ; Restore Call frame base
739 : LDA 6, 743(0) ;  Compute return address
740 : ST 6, 0(3) ;  Store return address in callee frame
741 : ADD  5, 3, 0 ;  Update pointer
742 : LDA 7, 651(0) ;  Call SQRTSEARCH
743 : LD 1, 4(5) ;  Load callee return value into R1
744 : LDC  4, 3(0) ;  Load frame size
745 : SUB  5, 5, 4 ;  Restore pointer
746 : ST   1, 2(5) ;  Store function result into stack frame
747 : LD   6, 0(5) ;  Load return address
748 : LDA  7, 0(6) ;  Return to caller
749 : LD   1, 1(5) ;  Load parameter 'p' into R1
750 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
751 : LD   1, 2(5) ;  Load parameter 'q' into R1
752 : SUB  1, 2, 1 ;  left - right for less-than check
753 : JLT  1, 2(7) ;  If R1 < 0, jump to true
754 : LDC  1, 0(0) ;  false
755 : LDA  7, 1(7) ;  skip setting true
756 : LDC  1, 1(0) ;  true
757 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
758 : LD   1, 1(5) ;  Load parameter 'p' into R1
759 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
760 : LD   1, 2(5) ;  Load parameter 'q' into R1
761 : SUB  1, 2, 1 ;  left - right for equality check
762 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
763 : LDC  1, 0(0) ;  false
764 : LDA  7, 1(7) ;  skip setting true
765 : LDC  1, 1(0) ;  true
766 : ADD  1, 2, 1 ;  R1 = left OR right
767 : ST   1, 3(5) ;  Store function result into stack frame
768 : LD   6, 0(5) ;  Load return address
769 : LDA  7, 0(6) ;  Return to caller
770 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
771 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
772 : LD   1, 1(5) ;  Load parameter 'n' into R1
773 : SUB  1, 2, 1 ;  left - right for less-than check
774 : JLT  1, 2(7) ;  If R1 < 0, jump to true
775 : LDC  1, 0(0) ;  false
776 : LDA  7, 1(7) ;  skip setting true
777 : LDC  1, 1(0) ;  true
778 : JEQ  1, 794(0) ;  If condition is false, jump to ELSE
779 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
780 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
781 : LD   1, 1(5) ;  Load parameter 'n' into R1
782 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
783 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
784 : DIV  1, 2, 1 ;  R1 = left / right
785 : MUL  1, 2, 1 ;  R1 = left * right
786 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
787 : LD   1, 1(5) ;  Load parameter 'n' into R1
788 : SUB  1, 2, 1 ;  left - right for less-than check
789 : JLT  1, 2(7) ;  If R1 < 0, jump to true
790 : LDC  1, 0(0) ;  false
791 : LDA  7, 1(7) ;  skip setting true
792 : LDC  1, 1(0) ;  true
793 : LDA  7, 806(0) ;  Skip ELSE block
794 : LD   1, 1(5) ;  Load parameter 'n' into R1
795 : SUB  1, 0, 1 ;  Negate value in R1
796 : LDA  3, 3(5) ; Restore Callee frame base
797 : ST 1, 1(3) ;  Store argument 0 into callee frame
798 : LDA  3, 3(5) ; Restore Call frame base
799 : LDA 6, 803(0) ;  Compute return address
800 : ST 6, 0(3) ;  Store return address in callee frame
801 : ADD  5, 3, 0 ;  Update pointer
802 : LDA 7, 770(0) ;  Call ODD
803 : LD 1, 2(5) ;  Load callee return value into R1
804 : LDC  4, 3(0) ;  Load frame size
805 : SUB  5, 5, 4 ;  Restore pointer
806 : ST   1, 2(5) ;  Store function result into stack frame
807 : LD   6, 0(5) ;  Load return address
808 : LDA  7, 0(6) ;  Return to caller
809 : LD   1, 2(5) ;  Load parameter 'n' into R1
810 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
811 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
812 : SUB  1, 2, 1 ;  left - right for equality check
813 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
814 : LDC  1, 0(0) ;  false
815 : LDA  7, 1(7) ;  skip setting true
816 : LDC  1, 1(0) ;  true
817 : JEQ  1, 820(0) ;  If condition is false, jump to ELSE
818 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
819 : LDA  7, 840(0) ;  Skip ELSE block
820 : LD   1, 1(5) ;  Load parameter 'm' into R1
821 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
822 : LD   1, 1(5) ;  Load parameter 'm' into R1
823 : LDA  3, 4(5) ; Restore Callee frame base
824 : ST 1, 1(3) ;  Store argument 0 into callee frame
825 : LD   1, 2(5) ;  Load parameter 'n' into R1
826 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
827 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
828 : SUB  1, 2, 1 ;  R1 = left - right
829 : LDA  3, 4(5) ; Restore Callee frame base
830 : ST 1, 2(3) ;  Store argument 1 into callee frame
831 : LDA  3, 4(5) ; Restore Call frame base
832 : LDA 6, 836(0) ;  Compute return address
833 : ST 6, 0(3) ;  Store return address in callee frame
834 : ADD  5, 3, 0 ;  Update pointer
835 : LDA 7, 809(0) ;  Call EXP
836 : LD 1, 3(5) ;  Load callee return value into R1
837 : LDC  4, 4(0) ;  Load frame size
838 : SUB  5, 5, 4 ;  Restore pointer
839 : MUL  1, 2, 1 ;  R1 = left * right
840 : ST   1, 3(5) ;  Store function result into stack frame
841 : LD   6, 0(5) ;  Load return address
842 : LDA  7, 0(6) ;  Return to caller
843 : LD   1, 1(5) ;  Load parameter 'm' into R1
844 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
845 : LD   1, 2(5) ;  Load parameter 'n' into R1
846 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
847 : LD   1, 1(5) ;  Load parameter 'm' into R1
848 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
849 : LD   1, 2(5) ;  Load parameter 'n' into R1
850 : DIV  1, 2, 1 ;  R1 = left / right
851 : MUL  1, 2, 1 ;  R1 = left * right
852 : SUB  1, 2, 1 ;  R1 = left - right
853 : ST   1, 3(5) ;  Store function result into stack frame
854 : LD   6, 0(5) ;  Load return address
855 : LDA  7, 0(6) ;  Return to caller
