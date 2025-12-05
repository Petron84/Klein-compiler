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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDA 4, 3(5) ; Restore Callee frame base
14 : LD   1, 3(5) ;  Restore Temporary
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 4, 3(5) ; Restore Call frame base
17 : LDA 6, 21(0) ;  Compute return address
18 : ST 6, 0(4) ;  Store return address in callee frame
19 : ADD 5, 4, 0 ;  Update pointer
20 : LDA 7, 28(0) ;  Call isExcellent
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC 4, 3(0) ;  Load frame size
23 : SUB 5, 5, 4 ;  Restore pointer
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 1(5) ;  Load parameter 'n' into R1
29 : ST   1, 3(5) ;  Spill Temporary
30 : LD   1, 1(5) ;  Load parameter 'n' into R1
31 : ST   1, 4(5) ;  Spill Temporary
32 : LDA 4, 3(5) ; Restore Callee frame base
33 : LD   1, 4(5) ;  Restore Temporary
34 : ST 1, 1(4) ;  Store argument 0 into callee frame
35 : LDA 4, 3(5) ; Restore Call frame base
36 : LDA 6, 40(0) ;  Compute return address
37 : ST 6, 0(4) ;  Store return address in callee frame
38 : ADD 5, 4, 0 ;  Update pointer
39 : LDA 7, 236(0) ;  Call length
40 : LD 1, 2(5) ;  Load callee return value into R1
41 : LDC 4, 3(0) ;  Load frame size
42 : SUB 5, 5, 4 ;  Restore pointer
43 : ST   1, 4(5) ;  Spill Temporary
44 : LDA 4, 4(5) ; Restore Callee frame base
45 : LD   1, 4(5) ;  Restore Temporary
46 : ST 1, 2(4) ;  Store argument 1 into callee frame
47 : LD   1, 3(5) ;  Restore Temporary
48 : ST 1, 1(4) ;  Store argument 0 into callee frame
49 : LDA 4, 4(5) ; Restore Call frame base
50 : LDA 6, 54(0) ;  Compute return address
51 : ST 6, 0(4) ;  Store return address in callee frame
52 : ADD 5, 4, 0 ;  Update pointer
53 : LDA 7, 60(0) ;  Call isExcellentSwitch
54 : LD 1, 3(5) ;  Load callee return value into R1
55 : LDC 4, 4(0) ;  Load frame size
56 : SUB 5, 5, 4 ;  Restore pointer
57 : ST   1, 2(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LD   1, 2(5) ;  Load parameter 'length' into R1
61 : ST   1, 4(5) ;  Spill Temporary
62 : LDA 4, 3(5) ; Restore Callee frame base
63 : LD   1, 4(5) ;  Restore Temporary
64 : ST 1, 1(4) ;  Store argument 0 into callee frame
65 : LDA 4, 3(5) ; Restore Call frame base
66 : LDA 6, 70(0) ;  Compute return address
67 : ST 6, 0(4) ;  Store return address in callee frame
68 : ADD 5, 4, 0 ;  Update pointer
69 : LDA 7, 272(0) ;  Call ODD
70 : LD 1, 2(5) ;  Load callee return value into R1
71 : LDC 4, 3(0) ;  Load frame size
72 : SUB 5, 5, 4 ;  Restore pointer
73 : JEQ  1, 76(0) ;  If condition is false, jump to ELSE
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : LDA  7, 125(0) ;  Skip ELSE block
76 : LD   1, 1(5) ;  Load parameter 'n' into R1
77 : ST   1, 4(5) ;  Spill Temporary
78 : LD   1, 1(5) ;  Load parameter 'n' into R1
79 : ST   1, 5(5) ;  Spill Temporary
80 : LDA 4, 3(5) ; Restore Callee frame base
81 : LD   1, 5(5) ;  Restore Temporary
82 : ST 1, 1(4) ;  Store argument 0 into callee frame
83 : LDA 4, 3(5) ; Restore Call frame base
84 : LDA 6, 88(0) ;  Compute return address
85 : ST 6, 0(4) ;  Store return address in callee frame
86 : ADD 5, 4, 0 ;  Update pointer
87 : LDA 7, 196(0) ;  Call a
88 : LD 1, 2(5) ;  Load callee return value into R1
89 : LDC 4, 3(0) ;  Load frame size
90 : SUB 5, 5, 4 ;  Restore pointer
91 : ST   1, 5(5) ;  Spill Temporary
92 : LD   1, 1(5) ;  Load parameter 'n' into R1
93 : ST   1, 6(5) ;  Spill Temporary
94 : LDA 4, 3(5) ; Restore Callee frame base
95 : LD   1, 6(5) ;  Restore Temporary
96 : ST 1, 1(4) ;  Store argument 0 into callee frame
97 : LDA 4, 3(5) ; Restore Call frame base
98 : LDA 6, 102(0) ;  Compute return address
99 : ST 6, 0(4) ;  Store return address in callee frame
100 : ADD 5, 4, 0 ;  Update pointer
101 : LDA 7, 144(0) ;  Call b
102 : LD 1, 2(5) ;  Load callee return value into R1
103 : LDC 4, 3(0) ;  Load frame size
104 : SUB 5, 5, 4 ;  Restore pointer
105 : ST   1, 6(5) ;  Spill Temporary
106 : LDA 4, 4(5) ; Restore Callee frame base
107 : LD   1, 6(5) ;  Restore Temporary
108 : ST 1, 2(4) ;  Store argument 1 into callee frame
109 : LD   1, 5(5) ;  Restore Temporary
110 : ST 1, 1(4) ;  Store argument 0 into callee frame
111 : LDA 4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD 5, 4, 0 ;  Update pointer
115 : LDA 7, 128(0) ;  Call excellentDiff
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC 4, 4(0) ;  Load frame size
118 : SUB 5, 5, 4 ;  Restore pointer
119 : LD   2, 4(5) ;  Restore Temporary
120 : SUB  1, 2, 1 ;  left - right for equality check
121 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
122 : LDC  1, 0(0) ;  false
123 : LDA  7, 1(7) ;  skip setting true
124 : LDC  1, 1(0) ;  true
125 : ST   1, 3(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LD   1, 2(5) ;  Load parameter 'b' into R1
129 : ADD  3, 1, 0 ;  Save left operand
130 : LD   1, 2(5) ;  Load parameter 'b' into R1
131 : ADD  2, 3, 0 ;  restore left operand
132 : MUL  1, 2, 1 ;  R1 = left * right
133 : ADD  3, 1, 0 ;  Save left operand
134 : LD   1, 1(5) ;  Load parameter 'a' into R1
135 : ADD  3, 1, 0 ;  Save left operand
136 : LD   1, 1(5) ;  Load parameter 'a' into R1
137 : ADD  2, 3, 0 ;  restore left operand
138 : MUL  1, 2, 1 ;  R1 = left * right
139 : ADD  2, 3, 0 ;  restore left operand
140 : SUB  1, 2, 1 ;  R1 = left - right
141 : ST   1, 3(5) ;  Store function result into stack frame
142 : LD   6, 0(5) ;  Load return address
143 : LDA  7, 0(6) ;  Return to caller
144 : LD   1, 1(5) ;  Load parameter 'n' into R1
145 : ST   1, 3(5) ;  Spill Temporary
146 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
147 : ST   1, 4(5) ;  Spill Temporary
148 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
149 : ADD  3, 1, 0 ;  Save right operand
150 : LD   1, 1(5) ;  Load parameter 'n' into R1
151 : ST   1, 5(5) ;  Spill Temporary
152 : LDA 4, 3(5) ; Restore Callee frame base
153 : LD   1, 5(5) ;  Restore Temporary
154 : ST 1, 1(4) ;  Store argument 0 into callee frame
155 : LDA 4, 3(5) ; Restore Call frame base
156 : LDA 6, 160(0) ;  Compute return address
157 : ST 6, 0(4) ;  Store return address in callee frame
158 : ADD 5, 4, 0 ;  Update pointer
159 : LDA 7, 236(0) ;  Call length
160 : LD 1, 2(5) ;  Load callee return value into R1
161 : LDC 4, 3(0) ;  Load frame size
162 : SUB 5, 5, 4 ;  Restore pointer
163 : ADD  2, 3, 0 ;  Restore right operand
164 : DIV  1, 2, 1 ;  R1 = left / right
165 : ST   1, 5(5) ;  Spill Temporary
166 : LDA 4, 4(5) ; Restore Callee frame base
167 : LD   1, 5(5) ;  Restore Temporary
168 : ST 1, 2(4) ;  Store argument 1 into callee frame
169 : LD   1, 4(5) ;  Restore Temporary
170 : ST 1, 1(4) ;  Store argument 0 into callee frame
171 : LDA 4, 4(5) ; Restore Call frame base
172 : LDA 6, 176(0) ;  Compute return address
173 : ST 6, 0(4) ;  Store return address in callee frame
174 : ADD 5, 4, 0 ;  Update pointer
175 : LDA 7, 317(0) ;  Call EXP
176 : LD 1, 3(5) ;  Load callee return value into R1
177 : LDC 4, 4(0) ;  Load frame size
178 : SUB 5, 5, 4 ;  Restore pointer
179 : ST   1, 4(5) ;  Spill Temporary
180 : LDA 4, 4(5) ; Restore Callee frame base
181 : LD   1, 4(5) ;  Restore Temporary
182 : ST 1, 2(4) ;  Store argument 1 into callee frame
183 : LD   1, 3(5) ;  Restore Temporary
184 : ST 1, 1(4) ;  Store argument 0 into callee frame
185 : LDA 4, 4(5) ; Restore Call frame base
186 : LDA 6, 190(0) ;  Compute return address
187 : ST 6, 0(4) ;  Store return address in callee frame
188 : ADD 5, 4, 0 ;  Update pointer
189 : LDA 7, 357(0) ;  Call MOD
190 : LD 1, 3(5) ;  Load callee return value into R1
191 : LDC 4, 4(0) ;  Load frame size
192 : SUB 5, 5, 4 ;  Restore pointer
193 : ST   1, 2(5) ;  Store function result into stack frame
194 : LD   6, 0(5) ;  Load return address
195 : LDA  7, 0(6) ;  Return to caller
196 : LD   1, 1(5) ;  Load parameter 'n' into R1
197 : ST   1, 3(5) ;  Spill Temporary
198 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
199 : ST   1, 4(5) ;  Spill Temporary
200 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
201 : ADD  3, 1, 0 ;  Save right operand
202 : LD   1, 1(5) ;  Load parameter 'n' into R1
203 : ST   1, 5(5) ;  Spill Temporary
204 : LDA 4, 3(5) ; Restore Callee frame base
205 : LD   1, 5(5) ;  Restore Temporary
206 : ST 1, 1(4) ;  Store argument 0 into callee frame
207 : LDA 4, 3(5) ; Restore Call frame base
208 : LDA 6, 212(0) ;  Compute return address
209 : ST 6, 0(4) ;  Store return address in callee frame
210 : ADD 5, 4, 0 ;  Update pointer
211 : LDA 7, 236(0) ;  Call length
212 : LD 1, 2(5) ;  Load callee return value into R1
213 : LDC 4, 3(0) ;  Load frame size
214 : SUB 5, 5, 4 ;  Restore pointer
215 : ADD  2, 3, 0 ;  Restore right operand
216 : DIV  1, 2, 1 ;  R1 = left / right
217 : ST   1, 5(5) ;  Spill Temporary
218 : LDA 4, 4(5) ; Restore Callee frame base
219 : LD   1, 5(5) ;  Restore Temporary
220 : ST 1, 2(4) ;  Store argument 1 into callee frame
221 : LD   1, 4(5) ;  Restore Temporary
222 : ST 1, 1(4) ;  Store argument 0 into callee frame
223 : LDA 4, 4(5) ; Restore Call frame base
224 : LDA 6, 228(0) ;  Compute return address
225 : ST 6, 0(4) ;  Store return address in callee frame
226 : ADD 5, 4, 0 ;  Update pointer
227 : LDA 7, 317(0) ;  Call EXP
228 : LD 1, 3(5) ;  Load callee return value into R1
229 : LDC 4, 4(0) ;  Load frame size
230 : SUB 5, 5, 4 ;  Restore pointer
231 : LD   2, 3(5) ;  Restore Temporary
232 : DIV  1, 2, 1 ;  R1 = left / right
233 : ST   1, 2(5) ;  Store function result into stack frame
234 : LD   6, 0(5) ;  Load return address
235 : LDA  7, 0(6) ;  Return to caller
236 : LD   1, 1(5) ;  Load parameter 'n' into R1
237 : ADD  3, 1, 0 ;  Save left operand
238 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
239 : ADD  2, 3, 0 ;  restore left operand
240 : SUB  1, 2, 1 ;  left - right for less-than check
241 : JLT  1, 2(7) ;  If R1 < 0, jump to true
242 : LDC  1, 0(0) ;  false
243 : LDA  7, 1(7) ;  skip setting true
244 : LDC  1, 1(0) ;  true
245 : JEQ  1, 248(0) ;  If condition is false, jump to ELSE
246 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
247 : LDA  7, 269(0) ;  Skip ELSE block
248 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
249 : ST   1, 3(5) ;  Spill Temporary
250 : LD   1, 1(5) ;  Load parameter 'n' into R1
251 : ADD  3, 1, 0 ;  Save left operand
252 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
253 : ADD  2, 3, 0 ;  restore left operand
254 : DIV  1, 2, 1 ;  R1 = left / right
255 : ST   1, 4(5) ;  Spill Temporary
256 : LDA 4, 3(5) ; Restore Callee frame base
257 : LD   1, 4(5) ;  Restore Temporary
258 : ST 1, 1(4) ;  Store argument 0 into callee frame
259 : LDA 4, 3(5) ; Restore Call frame base
260 : LDA 6, 264(0) ;  Compute return address
261 : ST 6, 0(4) ;  Store return address in callee frame
262 : ADD 5, 4, 0 ;  Update pointer
263 : LDA 7, 236(0) ;  Call length
264 : LD 1, 2(5) ;  Load callee return value into R1
265 : LDC 4, 3(0) ;  Load frame size
266 : SUB 5, 5, 4 ;  Restore pointer
267 : LD   2, 3(5) ;  Restore Temporary
268 : ADD  1, 2, 1 ;  R1 = left + right
269 : ST   1, 2(5) ;  Store function result into stack frame
270 : LD   6, 0(5) ;  Load return address
271 : LDA  7, 0(6) ;  Return to caller
272 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
273 : ADD  3, 1, 0 ;  Save left operand
274 : LD   1, 1(5) ;  Load parameter 'n' into R1
275 : ADD  2, 3, 0 ;  restore left operand
276 : SUB  1, 2, 1 ;  left - right for less-than check
277 : JLT  1, 2(7) ;  If R1 < 0, jump to true
278 : LDC  1, 0(0) ;  false
279 : LDA  7, 1(7) ;  skip setting true
280 : LDC  1, 1(0) ;  true
281 : JEQ  1, 300(0) ;  If condition is false, jump to ELSE
282 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
283 : ADD  3, 1, 0 ;  Save left operand
284 : LD   1, 1(5) ;  Load parameter 'n' into R1
285 : ADD  3, 1, 0 ;  Save left operand
286 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
287 : ADD  2, 3, 0 ;  restore left operand
288 : DIV  1, 2, 1 ;  R1 = left / right
289 : ADD  2, 3, 0 ;  restore left operand
290 : MUL  1, 2, 1 ;  R1 = left * right
291 : ADD  3, 1, 0 ;  Save left operand
292 : LD   1, 1(5) ;  Load parameter 'n' into R1
293 : ADD  2, 3, 0 ;  restore left operand
294 : SUB  1, 2, 1 ;  left - right for less-than check
295 : JLT  1, 2(7) ;  If R1 < 0, jump to true
296 : LDC  1, 0(0) ;  false
297 : LDA  7, 1(7) ;  skip setting true
298 : LDC  1, 1(0) ;  true
299 : LDA  7, 314(0) ;  Skip ELSE block
300 : LD   1, 1(5) ;  Load parameter 'n' into R1
301 : SUB  1, 0, 1 ;  Negate value in R1
302 : ST   1, 3(5) ;  Spill Temporary
303 : LDA 4, 3(5) ; Restore Callee frame base
304 : LD   1, 3(5) ;  Restore Temporary
305 : ST 1, 1(4) ;  Store argument 0 into callee frame
306 : LDA 4, 3(5) ; Restore Call frame base
307 : LDA 6, 311(0) ;  Compute return address
308 : ST 6, 0(4) ;  Store return address in callee frame
309 : ADD 5, 4, 0 ;  Update pointer
310 : LDA 7, 272(0) ;  Call ODD
311 : LD 1, 2(5) ;  Load callee return value into R1
312 : LDC 4, 3(0) ;  Load frame size
313 : SUB 5, 5, 4 ;  Restore pointer
314 : ST   1, 2(5) ;  Store function result into stack frame
315 : LD   6, 0(5) ;  Load return address
316 : LDA  7, 0(6) ;  Return to caller
317 : LD   1, 2(5) ;  Load parameter 'n' into R1
318 : ADD  3, 1, 0 ;  Save left operand
319 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
320 : ADD  2, 3, 0 ;  restore left operand
321 : SUB  1, 2, 1 ;  left - right for equality check
322 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
323 : LDC  1, 0(0) ;  false
324 : LDA  7, 1(7) ;  skip setting true
325 : LDC  1, 1(0) ;  true
326 : JEQ  1, 329(0) ;  If condition is false, jump to ELSE
327 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
328 : LDA  7, 354(0) ;  Skip ELSE block
329 : LD   1, 1(5) ;  Load parameter 'm' into R1
330 : ST   1, 4(5) ;  Spill Temporary
331 : LD   1, 1(5) ;  Load parameter 'm' into R1
332 : ST   1, 5(5) ;  Spill Temporary
333 : LD   1, 2(5) ;  Load parameter 'n' into R1
334 : ADD  3, 1, 0 ;  Save left operand
335 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
336 : ADD  2, 3, 0 ;  restore left operand
337 : SUB  1, 2, 1 ;  R1 = left - right
338 : ST   1, 6(5) ;  Spill Temporary
339 : LDA 4, 4(5) ; Restore Callee frame base
340 : LD   1, 6(5) ;  Restore Temporary
341 : ST 1, 2(4) ;  Store argument 1 into callee frame
342 : LD   1, 5(5) ;  Restore Temporary
343 : ST 1, 1(4) ;  Store argument 0 into callee frame
344 : LDA 4, 4(5) ; Restore Call frame base
345 : LDA 6, 349(0) ;  Compute return address
346 : ST 6, 0(4) ;  Store return address in callee frame
347 : ADD 5, 4, 0 ;  Update pointer
348 : LDA 7, 317(0) ;  Call EXP
349 : LD 1, 3(5) ;  Load callee return value into R1
350 : LDC 4, 4(0) ;  Load frame size
351 : SUB 5, 5, 4 ;  Restore pointer
352 : LD   2, 4(5) ;  Restore Temporary
353 : MUL  1, 2, 1 ;  R1 = left * right
354 : ST   1, 3(5) ;  Store function result into stack frame
355 : LD   6, 0(5) ;  Load return address
356 : LDA  7, 0(6) ;  Return to caller
357 : LD   1, 1(5) ;  Load parameter 'm' into R1
358 : ADD  3, 1, 0 ;  Save left operand
359 : LD   1, 2(5) ;  Load parameter 'n' into R1
360 : ADD  3, 1, 0 ;  Save left operand
361 : LD   1, 1(5) ;  Load parameter 'm' into R1
362 : ADD  3, 1, 0 ;  Save left operand
363 : LD   1, 2(5) ;  Load parameter 'n' into R1
364 : ADD  2, 3, 0 ;  restore left operand
365 : DIV  1, 2, 1 ;  R1 = left / right
366 : ADD  2, 3, 0 ;  restore left operand
367 : MUL  1, 2, 1 ;  R1 = left * right
368 : ADD  2, 3, 0 ;  restore left operand
369 : SUB  1, 2, 1 ;  R1 = left - right
370 : ST   1, 3(5) ;  Store function result into stack frame
371 : LD   6, 0(5) ;  Load return address
372 : LDA  7, 0(6) ;  Return to caller
