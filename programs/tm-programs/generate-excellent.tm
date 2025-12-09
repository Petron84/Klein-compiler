0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA  4, 0(5) ;  Save callee frame base
14 : LDA  4, 0(5) ;  Save callee frame base
15 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
16 : ST 1, 1(4) ;  Store argument 0 into callee frame
17 : LD   1, 1(5) ;  Load parameter 'length' into R1
18 : ADD  3, 1, 0 ;  Store left operand into temporary register
19 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
20 : ADD  2, 3, 0 ;  Restore left operand
21 : DIV  1, 2, 1 ;  R1 = left / right
22 : ADD  3, 1, 0 ;  Store left operand into temporary register
23 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
24 : ADD  2, 3, 0 ;  Restore left operand
25 : SUB  1, 2, 1 ;  R1 = left - right
26 : ST 1, 2(4) ;  Store argument 1 into callee frame
27 : LDA 6, 32(0) ;  Compute return address
28 : ST 6, 0(4) ;  Store return address in callee frame
29 : LDA  2, 4(4) ;  Compute end of frame
30 : ADD  5, 2, 0 ;  Advance pointer to end of frame
31 : LDA 7, 828(0) ;  Call EXP
32 : LD 1, 3(5) ;  Load callee return value into R1
33 : LDC  4, 4(0) ;  Load frame size
34 : SUB  5, 5, 4 ;  Restore pointer
35 : LDC  2, 4(0) ;  Stores arg frame size
36 : SUB  5, 5, 2 ;  Pop frame
37 : ST 1, 1(4) ;  Store argument 0 into callee frame
38 : LD   1, 1(5) ;  Load parameter 'length' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : DIV  1, 2, 1 ;  R1 = left / right
43 : ST 1, 2(4) ;  Store argument 1 into callee frame
44 : LDA 6, 49(0) ;  Compute return address
45 : ST 6, 0(4) ;  Store return address in callee frame
46 : LDA  2, 4(4) ;  Compute end of frame
47 : ADD  5, 2, 0 ;  Advance pointer to end of frame
48 : LDA 7, 56(0) ;  Call createLoop
49 : LD 1, 3(5) ;  Load callee return value into R1
50 : LDC  4, 4(0) ;  Load frame size
51 : SUB  5, 5, 4 ;  Restore pointer
52 : ST 1, 2(5) ;  Store result into current frame's return slot
53 : LD   1, 2(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LDA  4, 0(5) ;  Save callee frame base
57 : LD   1, 1(5) ;  Load parameter 'a' into R1
58 : ST 1, 1(4) ;  Store argument 0 into callee frame
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ST 1, 2(4) ;  Store argument 1 into callee frame
61 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
62 : ADD  3, 1, 0 ;  Store left operand into temporary register
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : ADD  2, 3, 0 ;  Restore left operand
65 : MUL  1, 2, 1 ;  R1 = left * right
66 : ST 1, 3(4) ;  Store argument 2 into callee frame
67 : LDA 6, 72(0) ;  Compute return address
68 : ST 6, 0(4) ;  Store return address in callee frame
69 : LDA  2, 5(4) ;  Compute end of frame
70 : ADD  5, 2, 0 ;  Advance pointer to end of frame
71 : LDA 7, 78(0) ;  Call aLoop
72 : LD 1, 4(5) ;  Load callee return value into R1
73 : LDC  4, 5(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ADD  3, 1, 0 ;  Store left operand into temporary register
80 : LD   1, 3(5) ;  Load parameter 'upper' into R1
81 : ADD  2, 3, 0 ;  Restore left operand
82 : SUB  1, 2, 1 ;  left - right for less-than check
83 : JLT  1, 2(7) ;  If R1 < 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : JEQ  1, 150(0) ;  If condition is false, jump to ELSE
88 : LDA  4, 0(5) ;  Save callee frame base
89 : LD   1, 1(5) ;  Load parameter 'a' into R1
90 : ST 1, 1(4) ;  Store argument 0 into callee frame
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ST 1, 2(4) ;  Store argument 1 into callee frame
93 : LD   1, 3(5) ;  Load parameter 'upper' into R1
94 : ST 1, 3(4) ;  Store argument 2 into callee frame
95 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LDA  4, 0(5) ;  Save callee frame base
98 : LD   1, 1(5) ;  Load parameter 'a' into R1
99 : ST 1, 1(4) ;  Store argument 0 into callee frame
100 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
101 : ST 1, 2(4) ;  Store argument 1 into callee frame
102 : LDA 6, 107(0) ;  Compute return address
103 : ST 6, 0(4) ;  Store return address in callee frame
104 : LDA  2, 4(4) ;  Compute end of frame
105 : ADD  5, 2, 0 ;  Advance pointer to end of frame
106 : LDA 7, 828(0) ;  Call EXP
107 : LD 1, 3(5) ;  Load callee return value into R1
108 : LDC  4, 4(0) ;  Load frame size
109 : SUB  5, 5, 4 ;  Restore pointer
110 : ADD  2, 3, 0 ;  Restore left operand
111 : MUL  1, 2, 1 ;  R1 = left * right
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
114 : ADD  3, 1, 0 ;  Store left operand into temporary register
115 : LDA  4, 0(5) ;  Save callee frame base
116 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
117 : ST 1, 1(4) ;  Store argument 0 into callee frame
118 : LD   1, 2(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ;  Store argument 1 into callee frame
120 : LDA 6, 125(0) ;  Compute return address
121 : ST 6, 0(4) ;  Store return address in callee frame
122 : LDA  2, 4(4) ;  Compute end of frame
123 : ADD  5, 2, 0 ;  Advance pointer to end of frame
124 : LDA 7, 828(0) ;  Call EXP
125 : LD 1, 3(5) ;  Load callee return value into R1
126 : LDC  4, 4(0) ;  Load frame size
127 : SUB  5, 5, 4 ;  Restore pointer
128 : ADD  2, 3, 0 ;  Restore left operand
129 : MUL  1, 2, 1 ;  R1 = left * right
130 : ADD  3, 1, 0 ;  Store left operand into temporary register
131 : LD   1, 1(5) ;  Load parameter 'a' into R1
132 : ADD  2, 3, 0 ;  Restore left operand
133 : MUL  1, 2, 1 ;  R1 = left * right
134 : ADD  2, 3, 0 ;  Restore left operand
135 : ADD  1, 2, 1 ;  R1 = left + right
136 : ADD  3, 1, 0 ;  Store left operand into temporary register
137 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
138 : ADD  2, 3, 0 ;  Restore left operand
139 : ADD  1, 2, 1 ;  R1 = left + right
140 : ST 1, 4(4) ;  Store argument 3 into callee frame
141 : LDA 6, 146(0) ;  Compute return address
142 : ST 6, 0(4) ;  Store return address in callee frame
143 : LDA  2, 6(4) ;  Compute end of frame
144 : ADD  5, 2, 0 ;  Advance pointer to end of frame
145 : LDA 7, 154(0) ;  Call aLoop1
146 : LD 1, 5(5) ;  Load callee return value into R1
147 : LDC  4, 6(0) ;  Load frame size
148 : SUB  5, 5, 4 ;  Restore pointer
149 : LDA  7, 151(0) ;  Skip ELSE block
150 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
151 : ST   1, 4(5) ;  Store function result into stack frame
152 : LD   6, 0(5) ;  Load return address
153 : LDA  7, 0(6) ;  Return to caller
154 : LDA  4, 0(5) ;  Save callee frame base
155 : LD   1, 1(5) ;  Load parameter 'a' into R1
156 : ST 1, 1(4) ;  Store argument 0 into callee frame
157 : LD   1, 2(5) ;  Load parameter 'n' into R1
158 : ST 1, 2(4) ;  Store argument 1 into callee frame
159 : LD   1, 3(5) ;  Load parameter 'upper' into R1
160 : ST 1, 3(4) ;  Store argument 2 into callee frame
161 : LD   1, 4(5) ;  Load parameter 'det' into R1
162 : ST 1, 4(4) ;  Store argument 3 into callee frame
163 : LDA  4, 0(5) ;  Save callee frame base
164 : LD   1, 4(5) ;  Load parameter 'det' into R1
165 : ST 1, 1(4) ;  Store argument 0 into callee frame
166 : LDA 6, 171(0) ;  Compute return address
167 : ST 6, 0(4) ;  Store return address in callee frame
168 : LDA  2, 3(4) ;  Compute end of frame
169 : ADD  5, 2, 0 ;  Advance pointer to end of frame
170 : LDA 7, 743(0) ;  Call SQRT
171 : LD 1, 2(5) ;  Load callee return value into R1
172 : LDC  4, 3(0) ;  Load frame size
173 : SUB  5, 5, 4 ;  Restore pointer
174 : LDC  2, 3(0) ;  Stores arg frame size
175 : SUB  5, 5, 2 ;  Pop frame
176 : ST 1, 5(4) ;  Store argument 4 into callee frame
177 : LDA 6, 182(0) ;  Compute return address
178 : ST 6, 0(4) ;  Store return address in callee frame
179 : LDA  2, 7(4) ;  Compute end of frame
180 : ADD  5, 2, 0 ;  Advance pointer to end of frame
181 : LDA 7, 188(0) ;  Call aLoop2
182 : LD 1, 6(5) ;  Load callee return value into R1
183 : LDC  4, 7(0) ;  Load frame size
184 : SUB  5, 5, 4 ;  Restore pointer
185 : ST   1, 5(5) ;  Store function result into stack frame
186 : LD   6, 0(5) ;  Load return address
187 : LDA  7, 0(6) ;  Return to caller
188 : LDA  4, 0(5) ;  Save callee frame base
189 : LD   1, 1(5) ;  Load parameter 'a' into R1
190 : ST 1, 1(4) ;  Store argument 0 into callee frame
191 : LD   1, 2(5) ;  Load parameter 'n' into R1
192 : ST 1, 2(4) ;  Store argument 1 into callee frame
193 : LD   1, 3(5) ;  Load parameter 'upper' into R1
194 : ST 1, 3(4) ;  Store argument 2 into callee frame
195 : LD   1, 4(5) ;  Load parameter 'det' into R1
196 : ST 1, 4(4) ;  Store argument 3 into callee frame
197 : LD   1, 5(5) ;  Load parameter 'root' into R1
198 : ST 1, 5(4) ;  Store argument 4 into callee frame
199 : LD   1, 1(5) ;  Load parameter 'a' into R1
200 : ADD  3, 1, 0 ;  Store left operand into temporary register
201 : LDA  4, 0(5) ;  Save callee frame base
202 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
203 : ST 1, 1(4) ;  Store argument 0 into callee frame
204 : LD   1, 2(5) ;  Load parameter 'n' into R1
205 : ST 1, 2(4) ;  Store argument 1 into callee frame
206 : LDA 6, 211(0) ;  Compute return address
207 : ST 6, 0(4) ;  Store return address in callee frame
208 : LDA  2, 4(4) ;  Compute end of frame
209 : ADD  5, 2, 0 ;  Advance pointer to end of frame
210 : LDA 7, 828(0) ;  Call EXP
211 : LD 1, 3(5) ;  Load callee return value into R1
212 : LDC  4, 4(0) ;  Load frame size
213 : SUB  5, 5, 4 ;  Restore pointer
214 : ADD  2, 3, 0 ;  Restore left operand
215 : MUL  1, 2, 1 ;  R1 = left * right
216 : ADD  3, 1, 0 ;  Store left operand into temporary register
217 : LD   1, 5(5) ;  Load parameter 'root' into R1
218 : ADD  3, 1, 0 ;  Store left operand into temporary register
219 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
220 : ADD  2, 3, 0 ;  Restore left operand
221 : ADD  1, 2, 1 ;  R1 = left + right
222 : ADD  3, 1, 0 ;  Store left operand into temporary register
223 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
224 : ADD  2, 3, 0 ;  Restore left operand
225 : DIV  1, 2, 1 ;  R1 = left / right
226 : ADD  2, 3, 0 ;  Restore left operand
227 : ADD  1, 2, 1 ;  R1 = left + right
228 : ST 1, 6(4) ;  Store argument 5 into callee frame
229 : LDA 6, 234(0) ;  Compute return address
230 : ST 6, 0(4) ;  Store return address in callee frame
231 : LDA  2, 8(4) ;  Compute end of frame
232 : ADD  5, 2, 0 ;  Advance pointer to end of frame
233 : LDA 7, 240(0) ;  Call aLoop3
234 : LD 1, 7(5) ;  Load callee return value into R1
235 : LDC  4, 8(0) ;  Load frame size
236 : SUB  5, 5, 4 ;  Restore pointer
237 : ST   1, 6(5) ;  Store function result into stack frame
238 : LD   6, 0(5) ;  Load return address
239 : LDA  7, 0(6) ;  Return to caller
240 : LDA  4, 0(5) ;  Save callee frame base
241 : LD   1, 5(5) ;  Load parameter 'root' into R1
242 : ST 1, 1(4) ;  Store argument 0 into callee frame
243 : LD   1, 4(5) ;  Load parameter 'det' into R1
244 : ST 1, 2(4) ;  Store argument 1 into callee frame
245 : LDA 6, 250(0) ;  Compute return address
246 : ST 6, 0(4) ;  Store return address in callee frame
247 : LDA  2, 4(4) ;  Compute end of frame
248 : ADD  5, 2, 0 ;  Advance pointer to end of frame
249 : LDA 7, 575(0) ;  Call ISROOT
250 : LD 1, 3(5) ;  Load callee return value into R1
251 : LDC  4, 4(0) ;  Load frame size
252 : SUB  5, 5, 4 ;  Restore pointer
253 : ADD  3, 1, 0 ;  Store left operand into temporary register
254 : LDA  4, 0(5) ;  Save callee frame base
255 : LD   1, 5(5) ;  Load parameter 'root' into R1
256 : ADD  3, 1, 0 ;  Store left operand into temporary register
257 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
258 : ADD  2, 3, 0 ;  Restore left operand
259 : ADD  1, 2, 1 ;  R1 = left + right
260 : ST 1, 1(4) ;  Store argument 0 into callee frame
261 : LDA 6, 266(0) ;  Compute return address
262 : ST 6, 0(4) ;  Store return address in callee frame
263 : LDA  2, 3(4) ;  Compute end of frame
264 : ADD  5, 2, 0 ;  Advance pointer to end of frame
265 : LDA 7, 591(0) ;  Call EVEN
266 : LD 1, 2(5) ;  Load callee return value into R1
267 : LDC  4, 3(0) ;  Load frame size
268 : SUB  5, 5, 4 ;  Restore pointer
269 : ADD  2, 3, 0 ;  Restore left operand
270 : MUL  1, 2, 1 ;  R1 = left AND right
271 : ADD  3, 1, 0 ;  Store left operand into temporary register
272 : LDA  4, 0(5) ;  Save callee frame base
273 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
274 : ST 1, 1(4) ;  Store argument 0 into callee frame
275 : LDA 6, 280(0) ;  Compute return address
276 : ST 6, 0(4) ;  Store return address in callee frame
277 : LDA  2, 3(4) ;  Compute end of frame
278 : ADD  5, 2, 0 ;  Advance pointer to end of frame
279 : LDA 7, 357(0) ;  Call isExcellent
280 : LD 1, 2(5) ;  Load callee return value into R1
281 : LDC  4, 3(0) ;  Load frame size
282 : SUB  5, 5, 4 ;  Restore pointer
283 : ADD  2, 3, 0 ;  Restore left operand
284 : MUL  1, 2, 1 ;  R1 = left AND right
285 : JEQ  1, 304(0) ;  If condition is false, jump to ELSE
286 : LDA  4, 0(5) ;  Save callee frame base
287 : LD   1, 1(5) ;  Load parameter 'a' into R1
288 : ST 1, 1(4) ;  Store argument 0 into callee frame
289 : LD   1, 2(5) ;  Load parameter 'n' into R1
290 : ST 1, 2(4) ;  Store argument 1 into callee frame
291 : LD   1, 3(5) ;  Load parameter 'upper' into R1
292 : ST 1, 3(4) ;  Store argument 2 into callee frame
293 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
294 : ST 1, 4(4) ;  Store argument 3 into callee frame
295 : LDA 6, 300(0) ;  Compute return address
296 : ST 6, 0(4) ;  Store return address in callee frame
297 : LDA  2, 6(4) ;  Compute end of frame
298 : ADD  5, 2, 0 ;  Advance pointer to end of frame
299 : LDA 7, 326(0) ;  Call printCandidateAndContinue
300 : LD 1, 5(5) ;  Load callee return value into R1
301 : LDC  4, 6(0) ;  Load frame size
302 : SUB  5, 5, 4 ;  Restore pointer
303 : LDA  7, 323(0) ;  Skip ELSE block
304 : LDA  4, 0(5) ;  Save callee frame base
305 : LD   1, 1(5) ;  Load parameter 'a' into R1
306 : ADD  3, 1, 0 ;  Store left operand into temporary register
307 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
308 : ADD  2, 3, 0 ;  Restore left operand
309 : ADD  1, 2, 1 ;  R1 = left + right
310 : ST 1, 1(4) ;  Store argument 0 into callee frame
311 : LD   1, 2(5) ;  Load parameter 'n' into R1
312 : ST 1, 2(4) ;  Store argument 1 into callee frame
313 : LD   1, 3(5) ;  Load parameter 'upper' into R1
314 : ST 1, 3(4) ;  Store argument 2 into callee frame
315 : LDA 6, 320(0) ;  Compute return address
316 : ST 6, 0(4) ;  Store return address in callee frame
317 : LDA  2, 5(4) ;  Compute end of frame
318 : ADD  5, 2, 0 ;  Advance pointer to end of frame
319 : LDA 7, 78(0) ;  Call aLoop
320 : LD 1, 4(5) ;  Load callee return value into R1
321 : LDC  4, 5(0) ;  Load frame size
322 : SUB  5, 5, 4 ;  Restore pointer
323 : ST   1, 7(5) ;  Store function result into stack frame
324 : LD   6, 0(5) ;  Load return address
325 : LDA  7, 0(6) ;  Return to caller
326 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
327 : LDA  4, 3(5) ;  Update DMEM pointer
328 : LDA 6, 332(0) ;  Compute return address
329 : ST   6, 0(4) ;  Store return address
330 : ADD  5, 4, 0 ;  Updated Pointer
331 : LDA  7, 10(0) ; Call print
332 : LDC  4, 3(0) ;  Load frame size
333 : SUB  5, 5, 4 ;  Restore pointer
334 : ST   1, 5(5) ;  Store function result into stack frame
335 : LDA  4, 0(5) ;  Save callee frame base
336 : LD   1, 1(5) ;  Load parameter 'a' into R1
337 : ADD  3, 1, 0 ;  Store left operand into temporary register
338 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
339 : ADD  2, 3, 0 ;  Restore left operand
340 : ADD  1, 2, 1 ;  R1 = left + right
341 : ST 1, 1(4) ;  Store argument 0 into callee frame
342 : LD   1, 2(5) ;  Load parameter 'n' into R1
343 : ST 1, 2(4) ;  Store argument 1 into callee frame
344 : LD   1, 3(5) ;  Load parameter 'upper' into R1
345 : ST 1, 3(4) ;  Store argument 2 into callee frame
346 : LDA 6, 351(0) ;  Compute return address
347 : ST 6, 0(4) ;  Store return address in callee frame
348 : LDA  2, 5(4) ;  Compute end of frame
349 : ADD  5, 2, 0 ;  Advance pointer to end of frame
350 : LDA 7, 78(0) ;  Call aLoop
351 : LD 1, 4(5) ;  Load callee return value into R1
352 : LDC  4, 5(0) ;  Load frame size
353 : SUB  5, 5, 4 ;  Restore pointer
354 : ST   1, 5(5) ;  Store function result into stack frame
355 : LD   6, 0(5) ;  Load return address
356 : LDA  7, 0(6) ;  Return to caller
357 : LDA  4, 0(5) ;  Save callee frame base
358 : LD   1, 1(5) ;  Load parameter 'n' into R1
359 : ST 1, 1(4) ;  Store argument 0 into callee frame
360 : LDA  4, 0(5) ;  Save callee frame base
361 : LD   1, 1(5) ;  Load parameter 'n' into R1
362 : ST 1, 1(4) ;  Store argument 0 into callee frame
363 : LDA 6, 368(0) ;  Compute return address
364 : ST 6, 0(4) ;  Store return address in callee frame
365 : LDA  2, 3(4) ;  Compute end of frame
366 : ADD  5, 2, 0 ;  Advance pointer to end of frame
367 : LDA 7, 541(0) ;  Call length
368 : LD 1, 2(5) ;  Load callee return value into R1
369 : LDC  4, 3(0) ;  Load frame size
370 : SUB  5, 5, 4 ;  Restore pointer
371 : LDC  2, 3(0) ;  Stores arg frame size
372 : SUB  5, 5, 2 ;  Pop frame
373 : ST 1, 2(4) ;  Store argument 1 into callee frame
374 : LDA 6, 379(0) ;  Compute return address
375 : ST 6, 0(4) ;  Store return address in callee frame
376 : LDA  2, 4(4) ;  Compute end of frame
377 : ADD  5, 2, 0 ;  Advance pointer to end of frame
378 : LDA 7, 385(0) ;  Call isExcellentSwitch
379 : LD 1, 3(5) ;  Load callee return value into R1
380 : LDC  4, 4(0) ;  Load frame size
381 : SUB  5, 5, 4 ;  Restore pointer
382 : ST   1, 2(5) ;  Store function result into stack frame
383 : LD   6, 0(5) ;  Load return address
384 : LDA  7, 0(6) ;  Return to caller
385 : LDA  4, 0(5) ;  Save callee frame base
386 : LD   1, 2(5) ;  Load parameter 'length' into R1
387 : ST 1, 1(4) ;  Store argument 0 into callee frame
388 : LDA 6, 393(0) ;  Compute return address
389 : ST 6, 0(4) ;  Store return address in callee frame
390 : LDA  2, 3(4) ;  Compute end of frame
391 : ADD  5, 2, 0 ;  Advance pointer to end of frame
392 : LDA 7, 785(0) ;  Call ODD
393 : LD 1, 2(5) ;  Load callee return value into R1
394 : LDC  4, 3(0) ;  Load frame size
395 : SUB  5, 5, 4 ;  Restore pointer
396 : JEQ  1, 399(0) ;  If condition is false, jump to ELSE
397 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
398 : LDA  7, 444(0) ;  Skip ELSE block
399 : LD   1, 1(5) ;  Load parameter 'n' into R1
400 : ADD  3, 1, 0 ;  Store left operand into temporary register
401 : LDA  4, 0(5) ;  Save callee frame base
402 : LDA  4, 0(5) ;  Save callee frame base
403 : LD   1, 1(5) ;  Load parameter 'n' into R1
404 : ST 1, 1(4) ;  Store argument 0 into callee frame
405 : LDA 6, 410(0) ;  Compute return address
406 : ST 6, 0(4) ;  Store return address in callee frame
407 : LDA  2, 3(4) ;  Compute end of frame
408 : ADD  5, 2, 0 ;  Advance pointer to end of frame
409 : LDA 7, 507(0) ;  Call a
410 : LD 1, 2(5) ;  Load callee return value into R1
411 : LDC  4, 3(0) ;  Load frame size
412 : SUB  5, 5, 4 ;  Restore pointer
413 : LDC  2, 3(0) ;  Stores arg frame size
414 : SUB  5, 5, 2 ;  Pop frame
415 : ST 1, 1(4) ;  Store argument 0 into callee frame
416 : LDA  4, 0(5) ;  Save callee frame base
417 : LD   1, 1(5) ;  Load parameter 'n' into R1
418 : ST 1, 1(4) ;  Store argument 0 into callee frame
419 : LDA 6, 424(0) ;  Compute return address
420 : ST 6, 0(4) ;  Store return address in callee frame
421 : LDA  2, 3(4) ;  Compute end of frame
422 : ADD  5, 2, 0 ;  Advance pointer to end of frame
423 : LDA 7, 463(0) ;  Call b
424 : LD 1, 2(5) ;  Load callee return value into R1
425 : LDC  4, 3(0) ;  Load frame size
426 : SUB  5, 5, 4 ;  Restore pointer
427 : LDC  2, 3(0) ;  Stores arg frame size
428 : SUB  5, 5, 2 ;  Pop frame
429 : ST 1, 2(4) ;  Store argument 1 into callee frame
430 : LDA 6, 435(0) ;  Compute return address
431 : ST 6, 0(4) ;  Store return address in callee frame
432 : LDA  2, 4(4) ;  Compute end of frame
433 : ADD  5, 2, 0 ;  Advance pointer to end of frame
434 : LDA 7, 447(0) ;  Call excellentDiff
435 : LD 1, 3(5) ;  Load callee return value into R1
436 : LDC  4, 4(0) ;  Load frame size
437 : SUB  5, 5, 4 ;  Restore pointer
438 : ADD  2, 3, 0 ;  Restore left operand
439 : SUB  1, 2, 1 ;  left - right for equality check
440 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
441 : LDC  1, 0(0) ;  false
442 : LDA  7, 1(7) ;  skip setting true
443 : LDC  1, 1(0) ;  true
444 : ST   1, 3(5) ;  Store function result into stack frame
445 : LD   6, 0(5) ;  Load return address
446 : LDA  7, 0(6) ;  Return to caller
447 : LD   1, 2(5) ;  Load parameter 'b' into R1
448 : ADD  3, 1, 0 ;  Store left operand into temporary register
449 : LD   1, 2(5) ;  Load parameter 'b' into R1
450 : ADD  2, 3, 0 ;  Restore left operand
451 : MUL  1, 2, 1 ;  R1 = left * right
452 : ADD  3, 1, 0 ;  Store left operand into temporary register
453 : LD   1, 1(5) ;  Load parameter 'a' into R1
454 : ADD  3, 1, 0 ;  Store left operand into temporary register
455 : LD   1, 1(5) ;  Load parameter 'a' into R1
456 : ADD  2, 3, 0 ;  Restore left operand
457 : MUL  1, 2, 1 ;  R1 = left * right
458 : ADD  2, 3, 0 ;  Restore left operand
459 : SUB  1, 2, 1 ;  R1 = left - right
460 : ST   1, 3(5) ;  Store function result into stack frame
461 : LD   6, 0(5) ;  Load return address
462 : LDA  7, 0(6) ;  Return to caller
463 : LDA  4, 0(5) ;  Save callee frame base
464 : LD   1, 1(5) ;  Load parameter 'n' into R1
465 : ST 1, 1(4) ;  Store argument 0 into callee frame
466 : LDA  4, 0(5) ;  Save callee frame base
467 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
468 : ST 1, 1(4) ;  Store argument 0 into callee frame
469 : LDA  4, 0(5) ;  Save callee frame base
470 : LD   1, 1(5) ;  Load parameter 'n' into R1
471 : ST 1, 1(4) ;  Store argument 0 into callee frame
472 : LDA 6, 477(0) ;  Compute return address
473 : ST 6, 0(4) ;  Store return address in callee frame
474 : LDA  2, 3(4) ;  Compute end of frame
475 : ADD  5, 2, 0 ;  Advance pointer to end of frame
476 : LDA 7, 541(0) ;  Call length
477 : LD 1, 2(5) ;  Load callee return value into R1
478 : LDC  4, 3(0) ;  Load frame size
479 : SUB  5, 5, 4 ;  Restore pointer
480 : ADD  3, 1, 0 ;  Store left operand into temporary register
481 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
482 : ADD  2, 3, 0 ;  Restore left operand
483 : DIV  1, 2, 1 ;  R1 = left / right
484 : ST 1, 2(4) ;  Store argument 1 into callee frame
485 : LDA 6, 490(0) ;  Compute return address
486 : ST 6, 0(4) ;  Store return address in callee frame
487 : LDA  2, 4(4) ;  Compute end of frame
488 : ADD  5, 2, 0 ;  Advance pointer to end of frame
489 : LDA 7, 828(0) ;  Call EXP
490 : LD 1, 3(5) ;  Load callee return value into R1
491 : LDC  4, 4(0) ;  Load frame size
492 : SUB  5, 5, 4 ;  Restore pointer
493 : LDC  2, 4(0) ;  Stores arg frame size
494 : SUB  5, 5, 2 ;  Pop frame
495 : ST 1, 2(4) ;  Store argument 1 into callee frame
496 : LDA 6, 501(0) ;  Compute return address
497 : ST 6, 0(4) ;  Store return address in callee frame
498 : LDA  2, 4(4) ;  Compute end of frame
499 : ADD  5, 2, 0 ;  Advance pointer to end of frame
500 : LDA 7, 864(0) ;  Call MOD
501 : LD 1, 3(5) ;  Load callee return value into R1
502 : LDC  4, 4(0) ;  Load frame size
503 : SUB  5, 5, 4 ;  Restore pointer
504 : ST   1, 2(5) ;  Store function result into stack frame
505 : LD   6, 0(5) ;  Load return address
506 : LDA  7, 0(6) ;  Return to caller
507 : LD   1, 1(5) ;  Load parameter 'n' into R1
508 : ADD  3, 1, 0 ;  Store left operand into temporary register
509 : LDA  4, 0(5) ;  Save callee frame base
510 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
511 : ST 1, 1(4) ;  Store argument 0 into callee frame
512 : LDA  4, 0(5) ;  Save callee frame base
513 : LD   1, 1(5) ;  Load parameter 'n' into R1
514 : ST 1, 1(4) ;  Store argument 0 into callee frame
515 : LDA 6, 520(0) ;  Compute return address
516 : ST 6, 0(4) ;  Store return address in callee frame
517 : LDA  2, 3(4) ;  Compute end of frame
518 : ADD  5, 2, 0 ;  Advance pointer to end of frame
519 : LDA 7, 541(0) ;  Call length
520 : LD 1, 2(5) ;  Load callee return value into R1
521 : LDC  4, 3(0) ;  Load frame size
522 : SUB  5, 5, 4 ;  Restore pointer
523 : ADD  3, 1, 0 ;  Store left operand into temporary register
524 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
525 : ADD  2, 3, 0 ;  Restore left operand
526 : DIV  1, 2, 1 ;  R1 = left / right
527 : ST 1, 2(4) ;  Store argument 1 into callee frame
528 : LDA 6, 533(0) ;  Compute return address
529 : ST 6, 0(4) ;  Store return address in callee frame
530 : LDA  2, 4(4) ;  Compute end of frame
531 : ADD  5, 2, 0 ;  Advance pointer to end of frame
532 : LDA 7, 828(0) ;  Call EXP
533 : LD 1, 3(5) ;  Load callee return value into R1
534 : LDC  4, 4(0) ;  Load frame size
535 : SUB  5, 5, 4 ;  Restore pointer
536 : ADD  2, 3, 0 ;  Restore left operand
537 : DIV  1, 2, 1 ;  R1 = left / right
538 : ST   1, 2(5) ;  Store function result into stack frame
539 : LD   6, 0(5) ;  Load return address
540 : LDA  7, 0(6) ;  Return to caller
541 : LD   1, 1(5) ;  Load parameter 'n' into R1
542 : ADD  3, 1, 0 ;  Store left operand into temporary register
543 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
544 : ADD  2, 3, 0 ;  Restore left operand
545 : SUB  1, 2, 1 ;  left - right for less-than check
546 : JLT  1, 2(7) ;  If R1 < 0, jump to true
547 : LDC  1, 0(0) ;  false
548 : LDA  7, 1(7) ;  skip setting true
549 : LDC  1, 1(0) ;  true
550 : JEQ  1, 553(0) ;  If condition is false, jump to ELSE
551 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
552 : LDA  7, 572(0) ;  Skip ELSE block
553 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
554 : ADD  3, 1, 0 ;  Store left operand into temporary register
555 : LDA  4, 0(5) ;  Save callee frame base
556 : LD   1, 1(5) ;  Load parameter 'n' into R1
557 : ADD  3, 1, 0 ;  Store left operand into temporary register
558 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
559 : ADD  2, 3, 0 ;  Restore left operand
560 : DIV  1, 2, 1 ;  R1 = left / right
561 : ST 1, 1(4) ;  Store argument 0 into callee frame
562 : LDA 6, 567(0) ;  Compute return address
563 : ST 6, 0(4) ;  Store return address in callee frame
564 : LDA  2, 3(4) ;  Compute end of frame
565 : ADD  5, 2, 0 ;  Advance pointer to end of frame
566 : LDA 7, 541(0) ;  Call length
567 : LD 1, 2(5) ;  Load callee return value into R1
568 : LDC  4, 3(0) ;  Load frame size
569 : SUB  5, 5, 4 ;  Restore pointer
570 : ADD  2, 3, 0 ;  Restore left operand
571 : ADD  1, 2, 1 ;  R1 = left + right
572 : ST   1, 2(5) ;  Store function result into stack frame
573 : LD   6, 0(5) ;  Load return address
574 : LDA  7, 0(6) ;  Return to caller
575 : LD   1, 2(5) ;  Load parameter 'n' into R1
576 : ADD  3, 1, 0 ;  Store left operand into temporary register
577 : LD   1, 1(5) ;  Load parameter 'r' into R1
578 : ADD  3, 1, 0 ;  Store left operand into temporary register
579 : LD   1, 1(5) ;  Load parameter 'r' into R1
580 : ADD  2, 3, 0 ;  Restore left operand
581 : MUL  1, 2, 1 ;  R1 = left * right
582 : ADD  2, 3, 0 ;  Restore left operand
583 : SUB  1, 2, 1 ;  left - right for equality check
584 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
585 : LDC  1, 0(0) ;  false
586 : LDA  7, 1(7) ;  skip setting true
587 : LDC  1, 1(0) ;  true
588 : ST   1, 3(5) ;  Store function result into stack frame
589 : LD   6, 0(5) ;  Load return address
590 : LDA  7, 0(6) ;  Return to caller
591 : LD   1, 1(5) ;  Load parameter 'n' into R1
592 : ADD  3, 1, 0 ;  Store left operand into temporary register
593 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
594 : ADD  3, 1, 0 ;  Store left operand into temporary register
595 : LD   1, 1(5) ;  Load parameter 'n' into R1
596 : ADD  3, 1, 0 ;  Store left operand into temporary register
597 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
598 : ADD  2, 3, 0 ;  Restore left operand
599 : DIV  1, 2, 1 ;  R1 = left / right
600 : ADD  2, 3, 0 ;  Restore left operand
601 : MUL  1, 2, 1 ;  R1 = left * right
602 : ADD  2, 3, 0 ;  Restore left operand
603 : SUB  1, 2, 1 ;  left - right for equality check
604 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
605 : LDC  1, 0(0) ;  false
606 : LDA  7, 1(7) ;  skip setting true
607 : LDC  1, 1(0) ;  true
608 : ST   1, 2(5) ;  Store function result into stack frame
609 : LD   6, 0(5) ;  Load return address
610 : LDA  7, 0(6) ;  Return to caller
611 : LDA  4, 0(5) ;  Save callee frame base
612 : LD   1, 4(5) ;  Load parameter 'mid' into R1
613 : ADD  3, 1, 0 ;  Store left operand into temporary register
614 : LD   1, 4(5) ;  Load parameter 'mid' into R1
615 : ADD  2, 3, 0 ;  Restore left operand
616 : MUL  1, 2, 1 ;  R1 = left * right
617 : ST 1, 1(4) ;  Store argument 0 into callee frame
618 : LD   1, 1(5) ;  Load parameter 'n' into R1
619 : ST 1, 2(4) ;  Store argument 1 into callee frame
620 : LDA 6, 625(0) ;  Compute return address
621 : ST 6, 0(4) ;  Store return address in callee frame
622 : LDA  2, 4(4) ;  Compute end of frame
623 : ADD  5, 2, 0 ;  Advance pointer to end of frame
624 : LDA 7, 761(0) ;  Call LE
625 : LD 1, 3(5) ;  Load callee return value into R1
626 : LDC  4, 4(0) ;  Load frame size
627 : SUB  5, 5, 4 ;  Restore pointer
628 : JEQ  1, 645(0) ;  If condition is false, jump to ELSE
629 : LDA  4, 0(5) ;  Save callee frame base
630 : LD   1, 1(5) ;  Load parameter 'n' into R1
631 : ST 1, 1(4) ;  Store argument 0 into callee frame
632 : LD   1, 4(5) ;  Load parameter 'mid' into R1
633 : ST 1, 2(4) ;  Store argument 1 into callee frame
634 : LD   1, 3(5) ;  Load parameter 'high' into R1
635 : ST 1, 3(4) ;  Store argument 2 into callee frame
636 : LDA 6, 641(0) ;  Compute return address
637 : ST 6, 0(4) ;  Store return address in callee frame
638 : LDA  2, 5(4) ;  Compute end of frame
639 : ADD  5, 2, 0 ;  Advance pointer to end of frame
640 : LDA 7, 663(0) ;  Call SQRTSEARCH
641 : LD 1, 4(5) ;  Load callee return value into R1
642 : LDC  4, 5(0) ;  Load frame size
643 : SUB  5, 5, 4 ;  Restore pointer
644 : LDA  7, 660(0) ;  Skip ELSE block
645 : LDA  4, 0(5) ;  Save callee frame base
646 : LD   1, 1(5) ;  Load parameter 'n' into R1
647 : ST 1, 1(4) ;  Store argument 0 into callee frame
648 : LD   1, 2(5) ;  Load parameter 'low' into R1
649 : ST 1, 2(4) ;  Store argument 1 into callee frame
650 : LD   1, 4(5) ;  Load parameter 'mid' into R1
651 : ST 1, 3(4) ;  Store argument 2 into callee frame
652 : LDA 6, 657(0) ;  Compute return address
653 : ST 6, 0(4) ;  Store return address in callee frame
654 : LDA  2, 5(4) ;  Compute end of frame
655 : ADD  5, 2, 0 ;  Advance pointer to end of frame
656 : LDA 7, 663(0) ;  Call SQRTSEARCH
657 : LD 1, 4(5) ;  Load callee return value into R1
658 : LDC  4, 5(0) ;  Load frame size
659 : SUB  5, 5, 4 ;  Restore pointer
660 : ST   1, 5(5) ;  Store function result into stack frame
661 : LD   6, 0(5) ;  Load return address
662 : LDA  7, 0(6) ;  Return to caller
663 : LDA  4, 0(5) ;  Save callee frame base
664 : LD   1, 3(5) ;  Load parameter 'high' into R1
665 : ST 1, 1(4) ;  Store argument 0 into callee frame
666 : LD   1, 2(5) ;  Load parameter 'low' into R1
667 : ADD  3, 1, 0 ;  Store left operand into temporary register
668 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
669 : ADD  2, 3, 0 ;  Restore left operand
670 : ADD  1, 2, 1 ;  R1 = left + right
671 : ST 1, 2(4) ;  Store argument 1 into callee frame
672 : LDA 6, 677(0) ;  Compute return address
673 : ST 6, 0(4) ;  Store return address in callee frame
674 : LDA  2, 4(4) ;  Compute end of frame
675 : ADD  5, 2, 0 ;  Advance pointer to end of frame
676 : LDA 7, 761(0) ;  Call LE
677 : LD 1, 3(5) ;  Load callee return value into R1
678 : LDC  4, 4(0) ;  Load frame size
679 : SUB  5, 5, 4 ;  Restore pointer
680 : JEQ  1, 715(0) ;  If condition is false, jump to ELSE
681 : LDA  4, 0(5) ;  Save callee frame base
682 : LD   1, 1(5) ;  Load parameter 'n' into R1
683 : ADD  3, 1, 0 ;  Store left operand into temporary register
684 : LD   1, 2(5) ;  Load parameter 'low' into R1
685 : ADD  3, 1, 0 ;  Store left operand into temporary register
686 : LD   1, 2(5) ;  Load parameter 'low' into R1
687 : ADD  2, 3, 0 ;  Restore left operand
688 : MUL  1, 2, 1 ;  R1 = left * right
689 : ADD  2, 3, 0 ;  Restore left operand
690 : SUB  1, 2, 1 ;  R1 = left - right
691 : ST 1, 1(4) ;  Store argument 0 into callee frame
692 : LD   1, 3(5) ;  Load parameter 'high' into R1
693 : ADD  3, 1, 0 ;  Store left operand into temporary register
694 : LD   1, 3(5) ;  Load parameter 'high' into R1
695 : ADD  2, 3, 0 ;  Restore left operand
696 : MUL  1, 2, 1 ;  R1 = left * right
697 : ADD  3, 1, 0 ;  Store left operand into temporary register
698 : LD   1, 1(5) ;  Load parameter 'n' into R1
699 : ADD  2, 3, 0 ;  Restore left operand
700 : SUB  1, 2, 1 ;  R1 = left - right
701 : ST 1, 2(4) ;  Store argument 1 into callee frame
702 : LDA 6, 707(0) ;  Compute return address
703 : ST 6, 0(4) ;  Store return address in callee frame
704 : LDA  2, 4(4) ;  Compute end of frame
705 : ADD  5, 2, 0 ;  Advance pointer to end of frame
706 : LDA 7, 761(0) ;  Call LE
707 : LD 1, 3(5) ;  Load callee return value into R1
708 : LDC  4, 4(0) ;  Load frame size
709 : SUB  5, 5, 4 ;  Restore pointer
710 : JEQ  1, 713(0) ;  If condition is false, jump to ELSE
711 : LD   1, 2(5) ;  Load parameter 'low' into R1
712 : LDA  7, 714(0) ;  Skip ELSE block
713 : LD   1, 3(5) ;  Load parameter 'high' into R1
714 : LDA  7, 740(0) ;  Skip ELSE block
715 : LDA  4, 0(5) ;  Save callee frame base
716 : LD   1, 1(5) ;  Load parameter 'n' into R1
717 : ST 1, 1(4) ;  Store argument 0 into callee frame
718 : LD   1, 2(5) ;  Load parameter 'low' into R1
719 : ST 1, 2(4) ;  Store argument 1 into callee frame
720 : LD   1, 3(5) ;  Load parameter 'high' into R1
721 : ST 1, 3(4) ;  Store argument 2 into callee frame
722 : LD   1, 2(5) ;  Load parameter 'low' into R1
723 : ADD  3, 1, 0 ;  Store left operand into temporary register
724 : LD   1, 3(5) ;  Load parameter 'high' into R1
725 : ADD  2, 3, 0 ;  Restore left operand
726 : ADD  1, 2, 1 ;  R1 = left + right
727 : ADD  3, 1, 0 ;  Store left operand into temporary register
728 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
729 : ADD  2, 3, 0 ;  Restore left operand
730 : DIV  1, 2, 1 ;  R1 = left / right
731 : ST 1, 4(4) ;  Store argument 3 into callee frame
732 : LDA 6, 737(0) ;  Compute return address
733 : ST 6, 0(4) ;  Store return address in callee frame
734 : LDA  2, 6(4) ;  Compute end of frame
735 : ADD  5, 2, 0 ;  Advance pointer to end of frame
736 : LDA 7, 611(0) ;  Call SQRTSPLIT
737 : LD 1, 5(5) ;  Load callee return value into R1
738 : LDC  4, 6(0) ;  Load frame size
739 : SUB  5, 5, 4 ;  Restore pointer
740 : ST   1, 4(5) ;  Store function result into stack frame
741 : LD   6, 0(5) ;  Load return address
742 : LDA  7, 0(6) ;  Return to caller
743 : LDA  4, 0(5) ;  Save callee frame base
744 : LD   1, 1(5) ;  Load parameter 'n' into R1
745 : ST 1, 1(4) ;  Store argument 0 into callee frame
746 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
747 : ST 1, 2(4) ;  Store argument 1 into callee frame
748 : LD   1, 1(5) ;  Load parameter 'n' into R1
749 : ST 1, 3(4) ;  Store argument 2 into callee frame
750 : LDA 6, 755(0) ;  Compute return address
751 : ST 6, 0(4) ;  Store return address in callee frame
752 : LDA  2, 5(4) ;  Compute end of frame
753 : ADD  5, 2, 0 ;  Advance pointer to end of frame
754 : LDA 7, 663(0) ;  Call SQRTSEARCH
755 : LD 1, 4(5) ;  Load callee return value into R1
756 : LDC  4, 5(0) ;  Load frame size
757 : SUB  5, 5, 4 ;  Restore pointer
758 : ST   1, 2(5) ;  Store function result into stack frame
759 : LD   6, 0(5) ;  Load return address
760 : LDA  7, 0(6) ;  Return to caller
761 : LD   1, 1(5) ;  Load parameter 'p' into R1
762 : ADD  3, 1, 0 ;  Store left operand into temporary register
763 : LD   1, 2(5) ;  Load parameter 'q' into R1
764 : ADD  2, 3, 0 ;  Restore left operand
765 : SUB  1, 2, 1 ;  left - right for less-than check
766 : JLT  1, 2(7) ;  If R1 < 0, jump to true
767 : LDC  1, 0(0) ;  false
768 : LDA  7, 1(7) ;  skip setting true
769 : LDC  1, 1(0) ;  true
770 : ADD  3, 1, 0 ;  Store left operand into temporary register
771 : LD   1, 1(5) ;  Load parameter 'p' into R1
772 : ADD  3, 1, 0 ;  Store left operand into temporary register
773 : LD   1, 2(5) ;  Load parameter 'q' into R1
774 : ADD  2, 3, 0 ;  Restore left operand
775 : SUB  1, 2, 1 ;  left - right for equality check
776 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
777 : LDC  1, 0(0) ;  false
778 : LDA  7, 1(7) ;  skip setting true
779 : LDC  1, 1(0) ;  true
780 : ADD  2, 3, 0 ;  Restore left operand
781 : ADD  1, 2, 1 ;  R1 = left OR right
782 : ST   1, 3(5) ;  Store function result into stack frame
783 : LD   6, 0(5) ;  Load return address
784 : LDA  7, 0(6) ;  Return to caller
785 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
786 : ADD  3, 1, 0 ;  Store left operand into temporary register
787 : LD   1, 1(5) ;  Load parameter 'n' into R1
788 : ADD  2, 3, 0 ;  Restore left operand
789 : SUB  1, 2, 1 ;  left - right for less-than check
790 : JLT  1, 2(7) ;  If R1 < 0, jump to true
791 : LDC  1, 0(0) ;  false
792 : LDA  7, 1(7) ;  skip setting true
793 : LDC  1, 1(0) ;  true
794 : JEQ  1, 813(0) ;  If condition is false, jump to ELSE
795 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
796 : ADD  3, 1, 0 ;  Store left operand into temporary register
797 : LD   1, 1(5) ;  Load parameter 'n' into R1
798 : ADD  3, 1, 0 ;  Store left operand into temporary register
799 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
800 : ADD  2, 3, 0 ;  Restore left operand
801 : DIV  1, 2, 1 ;  R1 = left / right
802 : ADD  2, 3, 0 ;  Restore left operand
803 : MUL  1, 2, 1 ;  R1 = left * right
804 : ADD  3, 1, 0 ;  Store left operand into temporary register
805 : LD   1, 1(5) ;  Load parameter 'n' into R1
806 : ADD  2, 3, 0 ;  Restore left operand
807 : SUB  1, 2, 1 ;  left - right for less-than check
808 : JLT  1, 2(7) ;  If R1 < 0, jump to true
809 : LDC  1, 0(0) ;  false
810 : LDA  7, 1(7) ;  skip setting true
811 : LDC  1, 1(0) ;  true
812 : LDA  7, 825(0) ;  Skip ELSE block
813 : LDA  4, 0(5) ;  Save callee frame base
814 : LD   1, 1(5) ;  Load parameter 'n' into R1
815 : SUB  1, 0, 1 ;  Negate value in R1
816 : ST 1, 1(4) ;  Store argument 0 into callee frame
817 : LDA 6, 822(0) ;  Compute return address
818 : ST 6, 0(4) ;  Store return address in callee frame
819 : LDA  2, 3(4) ;  Compute end of frame
820 : ADD  5, 2, 0 ;  Advance pointer to end of frame
821 : LDA 7, 785(0) ;  Call ODD
822 : LD 1, 2(5) ;  Load callee return value into R1
823 : LDC  4, 3(0) ;  Load frame size
824 : SUB  5, 5, 4 ;  Restore pointer
825 : ST   1, 2(5) ;  Store function result into stack frame
826 : LD   6, 0(5) ;  Load return address
827 : LDA  7, 0(6) ;  Return to caller
828 : LD   1, 2(5) ;  Load parameter 'n' into R1
829 : ADD  3, 1, 0 ;  Store left operand into temporary register
830 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
831 : ADD  2, 3, 0 ;  Restore left operand
832 : SUB  1, 2, 1 ;  left - right for equality check
833 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
834 : LDC  1, 0(0) ;  false
835 : LDA  7, 1(7) ;  skip setting true
836 : LDC  1, 1(0) ;  true
837 : JEQ  1, 840(0) ;  If condition is false, jump to ELSE
838 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
839 : LDA  7, 861(0) ;  Skip ELSE block
840 : LD   1, 1(5) ;  Load parameter 'm' into R1
841 : ADD  3, 1, 0 ;  Store left operand into temporary register
842 : LDA  4, 0(5) ;  Save callee frame base
843 : LD   1, 1(5) ;  Load parameter 'm' into R1
844 : ST 1, 1(4) ;  Store argument 0 into callee frame
845 : LD   1, 2(5) ;  Load parameter 'n' into R1
846 : ADD  3, 1, 0 ;  Store left operand into temporary register
847 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
848 : ADD  2, 3, 0 ;  Restore left operand
849 : SUB  1, 2, 1 ;  R1 = left - right
850 : ST 1, 2(4) ;  Store argument 1 into callee frame
851 : LDA 6, 856(0) ;  Compute return address
852 : ST 6, 0(4) ;  Store return address in callee frame
853 : LDA  2, 4(4) ;  Compute end of frame
854 : ADD  5, 2, 0 ;  Advance pointer to end of frame
855 : LDA 7, 828(0) ;  Call EXP
856 : LD 1, 3(5) ;  Load callee return value into R1
857 : LDC  4, 4(0) ;  Load frame size
858 : SUB  5, 5, 4 ;  Restore pointer
859 : ADD  2, 3, 0 ;  Restore left operand
860 : MUL  1, 2, 1 ;  R1 = left * right
861 : ST   1, 3(5) ;  Store function result into stack frame
862 : LD   6, 0(5) ;  Load return address
863 : LDA  7, 0(6) ;  Return to caller
864 : LD   1, 1(5) ;  Load parameter 'm' into R1
865 : ADD  3, 1, 0 ;  Store left operand into temporary register
866 : LD   1, 2(5) ;  Load parameter 'n' into R1
867 : ADD  3, 1, 0 ;  Store left operand into temporary register
868 : LD   1, 1(5) ;  Load parameter 'm' into R1
869 : ADD  3, 1, 0 ;  Store left operand into temporary register
870 : LD   1, 2(5) ;  Load parameter 'n' into R1
871 : ADD  2, 3, 0 ;  Restore left operand
872 : DIV  1, 2, 1 ;  R1 = left / right
873 : ADD  2, 3, 0 ;  Restore left operand
874 : MUL  1, 2, 1 ;  R1 = left * right
875 : ADD  2, 3, 0 ;  Restore left operand
876 : SUB  1, 2, 1 ;  R1 = left - right
877 : ST   1, 3(5) ;  Store function result into stack frame
878 : LD   6, 0(5) ;  Load return address
879 : LDA  7, 0(6) ;  Return to caller
