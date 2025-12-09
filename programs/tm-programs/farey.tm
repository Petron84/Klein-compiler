0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 4(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDC  4, 5(0) ;  Load size of main stack frame
10 : ADD  5, 5, 4 ;  Advance R5 to next frame
11 : LDA  7, 17(0) ;  Load address of main IMEM block - branch to function
12 : OUT  1, 0, 0 ;  Return result
13 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
14 : OUT  1, 0, 0 ;  Hardcoded print function
15 : LD   6, 0(5) ;  Load return addess from stack frame.
16 : LDA  7, 0(6) ;  Jump to return address.
17 : LDA  4, 0(5) ;  Save callee frame base
18 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
19 : ST 1, 1(4) ;  Store argument 0 into callee frame
20 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
21 : ST 1, 2(4) ;  Store argument 1 into callee frame
22 : LD   1, 3(5) ;  Load parameter 'N' into R1
23 : ST 1, 3(4) ;  Store argument 2 into callee frame
24 : LDA 6, 29(0) ;  Compute return address
25 : ST 6, 0(4) ;  Store return address in callee frame
26 : LDA  2, 5(4) ;  Compute end of frame
27 : ADD  5, 2, 0 ;  Advance pointer to end of frame
28 : LDA 7, 538(0) ;  Call fareyNum
29 : LD 1, 4(5) ;  Load callee return value into R1
30 : LDC  4, 5(0) ;  Load frame size
31 : SUB  5, 5, 4 ;  Restore pointer
32 : LDA  4, 3(5) ;  Update DMEM pointer
33 : LDA 6, 37(0) ;  Compute return address
34 : ST   6, 0(4) ;  Store return address
35 : ADD  5, 4, 0 ;  Updated Pointer
36 : LDA  7, 14(0) ; Call print
37 : LDC  4, 3(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : LDA  4, 0(5) ;  Save callee frame base
40 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
41 : ST 1, 1(4) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
43 : ST 1, 2(4) ;  Store argument 1 into callee frame
44 : LD   1, 3(5) ;  Load parameter 'N' into R1
45 : ST 1, 3(4) ;  Store argument 2 into callee frame
46 : LDA 6, 51(0) ;  Compute return address
47 : ST 6, 0(4) ;  Store return address in callee frame
48 : LDA  2, 5(4) ;  Compute end of frame
49 : ADD  5, 2, 0 ;  Advance pointer to end of frame
50 : LDA 7, 412(0) ;  Call fareyDen
51 : LD 1, 4(5) ;  Load callee return value into R1
52 : LDC  4, 5(0) ;  Load frame size
53 : SUB  5, 5, 4 ;  Restore pointer
54 : ST 1, 4(5) ;  Store result into current frame's return slot
55 : LD   1, 4(5) ;  Load return value into register 1
56 : LD  6, 0(5) ;  Load return address for main function into register 6
57 : LDA  7, 0(6) ;  Jump to return address of main function
58 : LD   1, 1(5) ;  Load parameter 'x' into R1
59 : ADD  3, 1, 0 ;  Store left operand into temporary register
60 : LD   1, 2(5) ;  Load parameter 'y' into R1
61 : ADD  2, 3, 0 ;  Restore left operand
62 : SUB  1, 2, 1 ;  left - right for less-than check
63 : JLT  1, 2(7) ;  If R1 < 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 1(5) ;  Load parameter 'x' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 2(5) ;  Load parameter 'y' into R1
71 : ADD  2, 3, 0 ;  Restore left operand
72 : SUB  1, 2, 1 ;  left - right for equality check
73 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  2, 3, 0 ;  Restore left operand
78 : ADD  1, 2, 1 ;  R1 = left OR right
79 : LDC  2, 1(0) ;  Load 1 into R2
80 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LDA  4, 0(5) ;  Save callee frame base
85 : LD   1, 1(5) ;  Load parameter 'x' into R1
86 : ADD  3, 1, 0 ;  Store left operand into temporary register
87 : LD   1, 4(5) ;  Load parameter 'yd' into R1
88 : ADD  2, 3, 0 ;  Restore left operand
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(4) ;  Store argument 0 into callee frame
91 : LD   1, 3(5) ;  Load parameter 'y' into R1
92 : ADD  3, 1, 0 ;  Store left operand into temporary register
93 : LD   1, 2(5) ;  Load parameter 'xd' into R1
94 : ADD  2, 3, 0 ;  Restore left operand
95 : MUL  1, 2, 1 ;  R1 = left * right
96 : ST 1, 2(4) ;  Store argument 1 into callee frame
97 : LDA 6, 102(0) ;  Compute return address
98 : ST 6, 0(4) ;  Store return address in callee frame
99 : LDA  2, 4(4) ;  Compute end of frame
100 : ADD  5, 2, 0 ;  Advance pointer to end of frame
101 : LDA 7, 58(0) ;  Call greater
102 : LD 1, 3(5) ;  Load callee return value into R1
103 : LDC  4, 4(0) ;  Load frame size
104 : SUB  5, 5, 4 ;  Restore pointer
105 : ST   1, 5(5) ;  Store function result into stack frame
106 : LD   6, 0(5) ;  Load return address
107 : LDA  7, 0(6) ;  Return to caller
108 : LD   1, 1(5) ;  Load parameter 'x' into R1
109 : ADD  3, 1, 0 ;  Store left operand into temporary register
110 : LD   1, 4(5) ;  Load parameter 'yd' into R1
111 : ADD  2, 3, 0 ;  Restore left operand
112 : MUL  1, 2, 1 ;  R1 = left * right
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 3(5) ;  Load parameter 'y' into R1
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LD   1, 2(5) ;  Load parameter 'xd' into R1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : MUL  1, 2, 1 ;  R1 = left * right
119 : ADD  2, 3, 0 ;  Restore left operand
120 : SUB  1, 2, 1 ;  left - right for equality check
121 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
122 : LDC  1, 0(0) ;  false
123 : LDA  7, 1(7) ;  skip setting true
124 : LDC  1, 1(0) ;  true
125 : ST   1, 5(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LDA  4, 0(5) ;  Save callee frame base
129 : LD   1, 6(5) ;  Load parameter 'b' into R1
130 : ST 1, 1(4) ;  Store argument 0 into callee frame
131 : LD   1, 4(5) ;  Load parameter 'N' into R1
132 : ST 1, 2(4) ;  Store argument 1 into callee frame
133 : LDA 6, 138(0) ;  Compute return address
134 : ST 6, 0(4) ;  Store return address in callee frame
135 : LDA  2, 4(4) ;  Compute end of frame
136 : ADD  5, 2, 0 ;  Advance pointer to end of frame
137 : LDA 7, 58(0) ;  Call greater
138 : LD 1, 3(5) ;  Load callee return value into R1
139 : LDC  4, 4(0) ;  Load frame size
140 : SUB  5, 5, 4 ;  Restore pointer
141 : ADD  3, 1, 0 ;  Store left operand into temporary register
142 : LDA  4, 0(5) ;  Save callee frame base
143 : LD   1, 8(5) ;  Load parameter 'd' into R1
144 : ST 1, 1(4) ;  Store argument 0 into callee frame
145 : LD   1, 4(5) ;  Load parameter 'N' into R1
146 : ST 1, 2(4) ;  Store argument 1 into callee frame
147 : LDA 6, 152(0) ;  Compute return address
148 : ST 6, 0(4) ;  Store return address in callee frame
149 : LDA  2, 4(4) ;  Compute end of frame
150 : ADD  5, 2, 0 ;  Advance pointer to end of frame
151 : LDA 7, 58(0) ;  Call greater
152 : LD 1, 3(5) ;  Load callee return value into R1
153 : LDC  4, 4(0) ;  Load frame size
154 : SUB  5, 5, 4 ;  Restore pointer
155 : ADD  2, 3, 0 ;  Restore left operand
156 : ADD  1, 2, 1 ;  R1 = left OR right
157 : JEQ  1, 196(0) ;  If condition is false, jump to ELSE
158 : LD   1, 1(5) ;  Load parameter 'selector' into R1
159 : ADD  3, 1, 0 ;  Store left operand into temporary register
160 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
161 : ADD  2, 3, 0 ;  Restore left operand
162 : SUB  1, 2, 1 ;  left - right for equality check
163 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
164 : LDC  1, 0(0) ;  false
165 : LDA  7, 1(7) ;  skip setting true
166 : LDC  1, 1(0) ;  true
167 : JEQ  1, 170(0) ;  If condition is false, jump to ELSE
168 : LD   1, 5(5) ;  Load parameter 'a' into R1
169 : LDA  7, 195(0) ;  Skip ELSE block
170 : LD   1, 1(5) ;  Load parameter 'selector' into R1
171 : ADD  3, 1, 0 ;  Store left operand into temporary register
172 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
173 : ADD  2, 3, 0 ;  Restore left operand
174 : SUB  1, 2, 1 ;  left - right for equality check
175 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
176 : LDC  1, 0(0) ;  false
177 : LDA  7, 1(7) ;  skip setting true
178 : LDC  1, 1(0) ;  true
179 : JEQ  1, 182(0) ;  If condition is false, jump to ELSE
180 : LD   1, 6(5) ;  Load parameter 'b' into R1
181 : LDA  7, 195(0) ;  Skip ELSE block
182 : LD   1, 1(5) ;  Load parameter 'selector' into R1
183 : ADD  3, 1, 0 ;  Store left operand into temporary register
184 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
185 : ADD  2, 3, 0 ;  Restore left operand
186 : SUB  1, 2, 1 ;  left - right for equality check
187 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
188 : LDC  1, 0(0) ;  false
189 : LDA  7, 1(7) ;  skip setting true
190 : LDC  1, 1(0) ;  true
191 : JEQ  1, 194(0) ;  If condition is false, jump to ELSE
192 : LD   1, 7(5) ;  Load parameter 'c' into R1
193 : LDA  7, 195(0) ;  Skip ELSE block
194 : LD   1, 8(5) ;  Load parameter 'd' into R1
195 : LDA  7, 369(0) ;  Skip ELSE block
196 : LDA  4, 0(5) ;  Save callee frame base
197 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
198 : ST 1, 1(4) ;  Store argument 0 into callee frame
199 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
200 : ST 1, 2(4) ;  Store argument 1 into callee frame
201 : LD   1, 5(5) ;  Load parameter 'a' into R1
202 : ADD  3, 1, 0 ;  Store left operand into temporary register
203 : LD   1, 7(5) ;  Load parameter 'c' into R1
204 : ADD  2, 3, 0 ;  Restore left operand
205 : ADD  1, 2, 1 ;  R1 = left + right
206 : ST 1, 3(4) ;  Store argument 2 into callee frame
207 : LD   1, 6(5) ;  Load parameter 'b' into R1
208 : ADD  3, 1, 0 ;  Store left operand into temporary register
209 : LD   1, 8(5) ;  Load parameter 'd' into R1
210 : ADD  2, 3, 0 ;  Restore left operand
211 : ADD  1, 2, 1 ;  R1 = left + right
212 : ST 1, 4(4) ;  Store argument 3 into callee frame
213 : LDA 6, 218(0) ;  Compute return address
214 : ST 6, 0(4) ;  Store return address in callee frame
215 : LDA  2, 6(4) ;  Compute end of frame
216 : ADD  5, 2, 0 ;  Advance pointer to end of frame
217 : LDA 7, 108(0) ;  Call fractionEqual
218 : LD 1, 5(5) ;  Load callee return value into R1
219 : LDC  4, 6(0) ;  Load frame size
220 : SUB  5, 5, 4 ;  Restore pointer
221 : JEQ  1, 276(0) ;  If condition is false, jump to ELSE
222 : LD   1, 1(5) ;  Load parameter 'selector' into R1
223 : ADD  3, 1, 0 ;  Store left operand into temporary register
224 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
225 : ADD  2, 3, 0 ;  Restore left operand
226 : SUB  1, 2, 1 ;  left - right for equality check
227 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
228 : LDC  1, 0(0) ;  false
229 : LDA  7, 1(7) ;  skip setting true
230 : LDC  1, 1(0) ;  true
231 : JEQ  1, 238(0) ;  If condition is false, jump to ELSE
232 : LD   1, 5(5) ;  Load parameter 'a' into R1
233 : ADD  3, 1, 0 ;  Store left operand into temporary register
234 : LD   1, 7(5) ;  Load parameter 'c' into R1
235 : ADD  2, 3, 0 ;  Restore left operand
236 : ADD  1, 2, 1 ;  R1 = left + right
237 : LDA  7, 275(0) ;  Skip ELSE block
238 : LD   1, 1(5) ;  Load parameter 'selector' into R1
239 : ADD  3, 1, 0 ;  Store left operand into temporary register
240 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
241 : ADD  2, 3, 0 ;  Restore left operand
242 : SUB  1, 2, 1 ;  left - right for equality check
243 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
244 : LDC  1, 0(0) ;  false
245 : LDA  7, 1(7) ;  skip setting true
246 : LDC  1, 1(0) ;  true
247 : JEQ  1, 254(0) ;  If condition is false, jump to ELSE
248 : LD   1, 6(5) ;  Load parameter 'b' into R1
249 : ADD  3, 1, 0 ;  Store left operand into temporary register
250 : LD   1, 8(5) ;  Load parameter 'd' into R1
251 : ADD  2, 3, 0 ;  Restore left operand
252 : ADD  1, 2, 1 ;  R1 = left + right
253 : LDA  7, 275(0) ;  Skip ELSE block
254 : LD   1, 1(5) ;  Load parameter 'selector' into R1
255 : ADD  3, 1, 0 ;  Store left operand into temporary register
256 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
257 : ADD  2, 3, 0 ;  Restore left operand
258 : SUB  1, 2, 1 ;  left - right for equality check
259 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
260 : LDC  1, 0(0) ;  false
261 : LDA  7, 1(7) ;  skip setting true
262 : LDC  1, 1(0) ;  true
263 : JEQ  1, 270(0) ;  If condition is false, jump to ELSE
264 : LD   1, 5(5) ;  Load parameter 'a' into R1
265 : ADD  3, 1, 0 ;  Store left operand into temporary register
266 : LD   1, 7(5) ;  Load parameter 'c' into R1
267 : ADD  2, 3, 0 ;  Restore left operand
268 : ADD  1, 2, 1 ;  R1 = left + right
269 : LDA  7, 275(0) ;  Skip ELSE block
270 : LD   1, 6(5) ;  Load parameter 'b' into R1
271 : ADD  3, 1, 0 ;  Store left operand into temporary register
272 : LD   1, 8(5) ;  Load parameter 'd' into R1
273 : ADD  2, 3, 0 ;  Restore left operand
274 : ADD  1, 2, 1 ;  R1 = left + right
275 : LDA  7, 369(0) ;  Skip ELSE block
276 : LDA  4, 0(5) ;  Save callee frame base
277 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
278 : ST 1, 1(4) ;  Store argument 0 into callee frame
279 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
280 : ST 1, 2(4) ;  Store argument 1 into callee frame
281 : LD   1, 5(5) ;  Load parameter 'a' into R1
282 : ADD  3, 1, 0 ;  Store left operand into temporary register
283 : LD   1, 7(5) ;  Load parameter 'c' into R1
284 : ADD  2, 3, 0 ;  Restore left operand
285 : ADD  1, 2, 1 ;  R1 = left + right
286 : ST 1, 3(4) ;  Store argument 2 into callee frame
287 : LD   1, 6(5) ;  Load parameter 'b' into R1
288 : ADD  3, 1, 0 ;  Store left operand into temporary register
289 : LD   1, 8(5) ;  Load parameter 'd' into R1
290 : ADD  2, 3, 0 ;  Restore left operand
291 : ADD  1, 2, 1 ;  R1 = left + right
292 : ST 1, 4(4) ;  Store argument 3 into callee frame
293 : LDA 6, 298(0) ;  Compute return address
294 : ST 6, 0(4) ;  Store return address in callee frame
295 : LDA  2, 6(4) ;  Compute end of frame
296 : ADD  5, 2, 0 ;  Advance pointer to end of frame
297 : LDA 7, 84(0) ;  Call fractionGreater
298 : LD 1, 5(5) ;  Load callee return value into R1
299 : LDC  4, 6(0) ;  Load frame size
300 : SUB  5, 5, 4 ;  Restore pointer
301 : JEQ  1, 336(0) ;  If condition is false, jump to ELSE
302 : LDA  4, 0(5) ;  Save callee frame base
303 : LD   1, 1(5) ;  Load parameter 'selector' into R1
304 : ST 1, 1(4) ;  Store argument 0 into callee frame
305 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
306 : ST 1, 2(4) ;  Store argument 1 into callee frame
307 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
308 : ST 1, 3(4) ;  Store argument 2 into callee frame
309 : LD   1, 4(5) ;  Load parameter 'N' into R1
310 : ST 1, 4(4) ;  Store argument 3 into callee frame
311 : LD   1, 5(5) ;  Load parameter 'a' into R1
312 : ADD  3, 1, 0 ;  Store left operand into temporary register
313 : LD   1, 7(5) ;  Load parameter 'c' into R1
314 : ADD  2, 3, 0 ;  Restore left operand
315 : ADD  1, 2, 1 ;  R1 = left + right
316 : ST 1, 5(4) ;  Store argument 4 into callee frame
317 : LD   1, 6(5) ;  Load parameter 'b' into R1
318 : ADD  3, 1, 0 ;  Store left operand into temporary register
319 : LD   1, 8(5) ;  Load parameter 'd' into R1
320 : ADD  2, 3, 0 ;  Restore left operand
321 : ADD  1, 2, 1 ;  R1 = left + right
322 : ST 1, 6(4) ;  Store argument 5 into callee frame
323 : LD   1, 7(5) ;  Load parameter 'c' into R1
324 : ST 1, 7(4) ;  Store argument 6 into callee frame
325 : LD   1, 8(5) ;  Load parameter 'd' into R1
326 : ST 1, 8(4) ;  Store argument 7 into callee frame
327 : LDA 6, 332(0) ;  Compute return address
328 : ST 6, 0(4) ;  Store return address in callee frame
329 : LDA  2, 10(4) ;  Compute end of frame
330 : ADD  5, 2, 0 ;  Advance pointer to end of frame
331 : LDA 7, 128(0) ;  Call whileLoopFor
332 : LD 1, 9(5) ;  Load callee return value into R1
333 : LDC  4, 10(0) ;  Load frame size
334 : SUB  5, 5, 4 ;  Restore pointer
335 : LDA  7, 369(0) ;  Skip ELSE block
336 : LDA  4, 0(5) ;  Save callee frame base
337 : LD   1, 1(5) ;  Load parameter 'selector' into R1
338 : ST 1, 1(4) ;  Store argument 0 into callee frame
339 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
340 : ST 1, 2(4) ;  Store argument 1 into callee frame
341 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
342 : ST 1, 3(4) ;  Store argument 2 into callee frame
343 : LD   1, 4(5) ;  Load parameter 'N' into R1
344 : ST 1, 4(4) ;  Store argument 3 into callee frame
345 : LD   1, 5(5) ;  Load parameter 'a' into R1
346 : ST 1, 5(4) ;  Store argument 4 into callee frame
347 : LD   1, 6(5) ;  Load parameter 'b' into R1
348 : ST 1, 6(4) ;  Store argument 5 into callee frame
349 : LD   1, 5(5) ;  Load parameter 'a' into R1
350 : ADD  3, 1, 0 ;  Store left operand into temporary register
351 : LD   1, 7(5) ;  Load parameter 'c' into R1
352 : ADD  2, 3, 0 ;  Restore left operand
353 : ADD  1, 2, 1 ;  R1 = left + right
354 : ST 1, 7(4) ;  Store argument 6 into callee frame
355 : LD   1, 6(5) ;  Load parameter 'b' into R1
356 : ADD  3, 1, 0 ;  Store left operand into temporary register
357 : LD   1, 8(5) ;  Load parameter 'd' into R1
358 : ADD  2, 3, 0 ;  Restore left operand
359 : ADD  1, 2, 1 ;  R1 = left + right
360 : ST 1, 8(4) ;  Store argument 7 into callee frame
361 : LDA 6, 366(0) ;  Compute return address
362 : ST 6, 0(4) ;  Store return address in callee frame
363 : LDA  2, 10(4) ;  Compute end of frame
364 : ADD  5, 2, 0 ;  Advance pointer to end of frame
365 : LDA 7, 128(0) ;  Call whileLoopFor
366 : LD 1, 9(5) ;  Load callee return value into R1
367 : LDC  4, 10(0) ;  Load frame size
368 : SUB  5, 5, 4 ;  Restore pointer
369 : ST   1, 9(5) ;  Store function result into stack frame
370 : LD   6, 0(5) ;  Load return address
371 : LDA  7, 0(6) ;  Return to caller
372 : LDA  4, 0(5) ;  Save callee frame base
373 : LD   1, 3(5) ;  Load parameter 'b' into R1
374 : ST 1, 1(4) ;  Store argument 0 into callee frame
375 : LD   1, 1(5) ;  Load parameter 'N' into R1
376 : ST 1, 2(4) ;  Store argument 1 into callee frame
377 : LDA 6, 382(0) ;  Compute return address
378 : ST 6, 0(4) ;  Store return address in callee frame
379 : LDA  2, 4(4) ;  Compute end of frame
380 : ADD  5, 2, 0 ;  Advance pointer to end of frame
381 : LDA 7, 58(0) ;  Call greater
382 : LD 1, 3(5) ;  Load callee return value into R1
383 : LDC  4, 4(0) ;  Load frame size
384 : SUB  5, 5, 4 ;  Restore pointer
385 : JEQ  1, 388(0) ;  If condition is false, jump to ELSE
386 : LD   1, 5(5) ;  Load parameter 'd' into R1
387 : LDA  7, 389(0) ;  Skip ELSE block
388 : LD   1, 3(5) ;  Load parameter 'b' into R1
389 : ST   1, 6(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LDA  4, 0(5) ;  Save callee frame base
393 : LD   1, 3(5) ;  Load parameter 'b' into R1
394 : ST 1, 1(4) ;  Store argument 0 into callee frame
395 : LD   1, 1(5) ;  Load parameter 'N' into R1
396 : ST 1, 2(4) ;  Store argument 1 into callee frame
397 : LDA 6, 402(0) ;  Compute return address
398 : ST 6, 0(4) ;  Store return address in callee frame
399 : LDA  2, 4(4) ;  Compute end of frame
400 : ADD  5, 2, 0 ;  Advance pointer to end of frame
401 : LDA 7, 58(0) ;  Call greater
402 : LD 1, 3(5) ;  Load callee return value into R1
403 : LDC  4, 4(0) ;  Load frame size
404 : SUB  5, 5, 4 ;  Restore pointer
405 : JEQ  1, 408(0) ;  If condition is false, jump to ELSE
406 : LD   1, 4(5) ;  Load parameter 'c' into R1
407 : LDA  7, 409(0) ;  Skip ELSE block
408 : LD   1, 2(5) ;  Load parameter 'a' into R1
409 : ST   1, 6(5) ;  Store function result into stack frame
410 : LD   6, 0(5) ;  Load return address
411 : LDA  7, 0(6) ;  Return to caller
412 : LDA  4, 0(5) ;  Save callee frame base
413 : LD   1, 3(5) ;  Load parameter 'N' into R1
414 : ST 1, 1(4) ;  Store argument 0 into callee frame
415 : LDA  4, 0(5) ;  Save callee frame base
416 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
417 : ST 1, 1(4) ;  Store argument 0 into callee frame
418 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
419 : ST 1, 2(4) ;  Store argument 1 into callee frame
420 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
421 : ST 1, 3(4) ;  Store argument 2 into callee frame
422 : LD   1, 3(5) ;  Load parameter 'N' into R1
423 : ST 1, 4(4) ;  Store argument 3 into callee frame
424 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
425 : ST 1, 5(4) ;  Store argument 4 into callee frame
426 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
427 : ST 1, 6(4) ;  Store argument 5 into callee frame
428 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
429 : ST 1, 7(4) ;  Store argument 6 into callee frame
430 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
431 : ST 1, 8(4) ;  Store argument 7 into callee frame
432 : LDA 6, 437(0) ;  Compute return address
433 : ST 6, 0(4) ;  Store return address in callee frame
434 : LDA  2, 10(4) ;  Compute end of frame
435 : ADD  5, 2, 0 ;  Advance pointer to end of frame
436 : LDA 7, 128(0) ;  Call whileLoopFor
437 : LD 1, 9(5) ;  Load callee return value into R1
438 : LDC  4, 10(0) ;  Load frame size
439 : SUB  5, 5, 4 ;  Restore pointer
440 : LDC  2, 10(0) ;  Stores arg frame size
441 : SUB  5, 5, 2 ;  Pop frame
442 : ST 1, 2(4) ;  Store argument 1 into callee frame
443 : LDA  4, 0(5) ;  Save callee frame base
444 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
445 : ST 1, 1(4) ;  Store argument 0 into callee frame
446 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
447 : ST 1, 2(4) ;  Store argument 1 into callee frame
448 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
449 : ST 1, 3(4) ;  Store argument 2 into callee frame
450 : LD   1, 3(5) ;  Load parameter 'N' into R1
451 : ST 1, 4(4) ;  Store argument 3 into callee frame
452 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
453 : ST 1, 5(4) ;  Store argument 4 into callee frame
454 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
455 : ST 1, 6(4) ;  Store argument 5 into callee frame
456 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
457 : ST 1, 7(4) ;  Store argument 6 into callee frame
458 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
459 : ST 1, 8(4) ;  Store argument 7 into callee frame
460 : LDA 6, 465(0) ;  Compute return address
461 : ST 6, 0(4) ;  Store return address in callee frame
462 : LDA  2, 10(4) ;  Compute end of frame
463 : ADD  5, 2, 0 ;  Advance pointer to end of frame
464 : LDA 7, 128(0) ;  Call whileLoopFor
465 : LD 1, 9(5) ;  Load callee return value into R1
466 : LDC  4, 10(0) ;  Load frame size
467 : SUB  5, 5, 4 ;  Restore pointer
468 : LDC  2, 10(0) ;  Stores arg frame size
469 : SUB  5, 5, 2 ;  Pop frame
470 : ST 1, 3(4) ;  Store argument 2 into callee frame
471 : LDA  4, 0(5) ;  Save callee frame base
472 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
473 : ST 1, 1(4) ;  Store argument 0 into callee frame
474 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
475 : ST 1, 2(4) ;  Store argument 1 into callee frame
476 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
477 : ST 1, 3(4) ;  Store argument 2 into callee frame
478 : LD   1, 3(5) ;  Load parameter 'N' into R1
479 : ST 1, 4(4) ;  Store argument 3 into callee frame
480 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
481 : ST 1, 5(4) ;  Store argument 4 into callee frame
482 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
483 : ST 1, 6(4) ;  Store argument 5 into callee frame
484 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
485 : ST 1, 7(4) ;  Store argument 6 into callee frame
486 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
487 : ST 1, 8(4) ;  Store argument 7 into callee frame
488 : LDA 6, 493(0) ;  Compute return address
489 : ST 6, 0(4) ;  Store return address in callee frame
490 : LDA  2, 10(4) ;  Compute end of frame
491 : ADD  5, 2, 0 ;  Advance pointer to end of frame
492 : LDA 7, 128(0) ;  Call whileLoopFor
493 : LD 1, 9(5) ;  Load callee return value into R1
494 : LDC  4, 10(0) ;  Load frame size
495 : SUB  5, 5, 4 ;  Restore pointer
496 : LDC  2, 10(0) ;  Stores arg frame size
497 : SUB  5, 5, 2 ;  Pop frame
498 : ST 1, 4(4) ;  Store argument 3 into callee frame
499 : LDA  4, 0(5) ;  Save callee frame base
500 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
501 : ST 1, 1(4) ;  Store argument 0 into callee frame
502 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
503 : ST 1, 2(4) ;  Store argument 1 into callee frame
504 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
505 : ST 1, 3(4) ;  Store argument 2 into callee frame
506 : LD   1, 3(5) ;  Load parameter 'N' into R1
507 : ST 1, 4(4) ;  Store argument 3 into callee frame
508 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
509 : ST 1, 5(4) ;  Store argument 4 into callee frame
510 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
511 : ST 1, 6(4) ;  Store argument 5 into callee frame
512 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
513 : ST 1, 7(4) ;  Store argument 6 into callee frame
514 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
515 : ST 1, 8(4) ;  Store argument 7 into callee frame
516 : LDA 6, 521(0) ;  Compute return address
517 : ST 6, 0(4) ;  Store return address in callee frame
518 : LDA  2, 10(4) ;  Compute end of frame
519 : ADD  5, 2, 0 ;  Advance pointer to end of frame
520 : LDA 7, 128(0) ;  Call whileLoopFor
521 : LD 1, 9(5) ;  Load callee return value into R1
522 : LDC  4, 10(0) ;  Load frame size
523 : SUB  5, 5, 4 ;  Restore pointer
524 : LDC  2, 10(0) ;  Stores arg frame size
525 : SUB  5, 5, 2 ;  Pop frame
526 : ST 1, 5(4) ;  Store argument 4 into callee frame
527 : LDA 6, 532(0) ;  Compute return address
528 : ST 6, 0(4) ;  Store return address in callee frame
529 : LDA  2, 7(4) ;  Compute end of frame
530 : ADD  5, 2, 0 ;  Advance pointer to end of frame
531 : LDA 7, 372(0) ;  Call fareySelectDen
532 : LD 1, 6(5) ;  Load callee return value into R1
533 : LDC  4, 7(0) ;  Load frame size
534 : SUB  5, 5, 4 ;  Restore pointer
535 : ST   1, 4(5) ;  Store function result into stack frame
536 : LD   6, 0(5) ;  Load return address
537 : LDA  7, 0(6) ;  Return to caller
538 : LDA  4, 0(5) ;  Save callee frame base
539 : LD   1, 3(5) ;  Load parameter 'N' into R1
540 : ST 1, 1(4) ;  Store argument 0 into callee frame
541 : LDA  4, 0(5) ;  Save callee frame base
542 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
543 : ST 1, 1(4) ;  Store argument 0 into callee frame
544 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
545 : ST 1, 2(4) ;  Store argument 1 into callee frame
546 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
547 : ST 1, 3(4) ;  Store argument 2 into callee frame
548 : LD   1, 3(5) ;  Load parameter 'N' into R1
549 : ST 1, 4(4) ;  Store argument 3 into callee frame
550 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
551 : ST 1, 5(4) ;  Store argument 4 into callee frame
552 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
553 : ST 1, 6(4) ;  Store argument 5 into callee frame
554 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
555 : ST 1, 7(4) ;  Store argument 6 into callee frame
556 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
557 : ST 1, 8(4) ;  Store argument 7 into callee frame
558 : LDA 6, 563(0) ;  Compute return address
559 : ST 6, 0(4) ;  Store return address in callee frame
560 : LDA  2, 10(4) ;  Compute end of frame
561 : ADD  5, 2, 0 ;  Advance pointer to end of frame
562 : LDA 7, 128(0) ;  Call whileLoopFor
563 : LD 1, 9(5) ;  Load callee return value into R1
564 : LDC  4, 10(0) ;  Load frame size
565 : SUB  5, 5, 4 ;  Restore pointer
566 : LDC  2, 10(0) ;  Stores arg frame size
567 : SUB  5, 5, 2 ;  Pop frame
568 : ST 1, 2(4) ;  Store argument 1 into callee frame
569 : LDA  4, 0(5) ;  Save callee frame base
570 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
571 : ST 1, 1(4) ;  Store argument 0 into callee frame
572 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
573 : ST 1, 2(4) ;  Store argument 1 into callee frame
574 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
575 : ST 1, 3(4) ;  Store argument 2 into callee frame
576 : LD   1, 3(5) ;  Load parameter 'N' into R1
577 : ST 1, 4(4) ;  Store argument 3 into callee frame
578 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
579 : ST 1, 5(4) ;  Store argument 4 into callee frame
580 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
581 : ST 1, 6(4) ;  Store argument 5 into callee frame
582 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
583 : ST 1, 7(4) ;  Store argument 6 into callee frame
584 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
585 : ST 1, 8(4) ;  Store argument 7 into callee frame
586 : LDA 6, 591(0) ;  Compute return address
587 : ST 6, 0(4) ;  Store return address in callee frame
588 : LDA  2, 10(4) ;  Compute end of frame
589 : ADD  5, 2, 0 ;  Advance pointer to end of frame
590 : LDA 7, 128(0) ;  Call whileLoopFor
591 : LD 1, 9(5) ;  Load callee return value into R1
592 : LDC  4, 10(0) ;  Load frame size
593 : SUB  5, 5, 4 ;  Restore pointer
594 : LDC  2, 10(0) ;  Stores arg frame size
595 : SUB  5, 5, 2 ;  Pop frame
596 : ST 1, 3(4) ;  Store argument 2 into callee frame
597 : LDA  4, 0(5) ;  Save callee frame base
598 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
599 : ST 1, 1(4) ;  Store argument 0 into callee frame
600 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
601 : ST 1, 2(4) ;  Store argument 1 into callee frame
602 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
603 : ST 1, 3(4) ;  Store argument 2 into callee frame
604 : LD   1, 3(5) ;  Load parameter 'N' into R1
605 : ST 1, 4(4) ;  Store argument 3 into callee frame
606 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
607 : ST 1, 5(4) ;  Store argument 4 into callee frame
608 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
609 : ST 1, 6(4) ;  Store argument 5 into callee frame
610 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
611 : ST 1, 7(4) ;  Store argument 6 into callee frame
612 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
613 : ST 1, 8(4) ;  Store argument 7 into callee frame
614 : LDA 6, 619(0) ;  Compute return address
615 : ST 6, 0(4) ;  Store return address in callee frame
616 : LDA  2, 10(4) ;  Compute end of frame
617 : ADD  5, 2, 0 ;  Advance pointer to end of frame
618 : LDA 7, 128(0) ;  Call whileLoopFor
619 : LD 1, 9(5) ;  Load callee return value into R1
620 : LDC  4, 10(0) ;  Load frame size
621 : SUB  5, 5, 4 ;  Restore pointer
622 : LDC  2, 10(0) ;  Stores arg frame size
623 : SUB  5, 5, 2 ;  Pop frame
624 : ST 1, 4(4) ;  Store argument 3 into callee frame
625 : LDA  4, 0(5) ;  Save callee frame base
626 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
627 : ST 1, 1(4) ;  Store argument 0 into callee frame
628 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
629 : ST 1, 2(4) ;  Store argument 1 into callee frame
630 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
631 : ST 1, 3(4) ;  Store argument 2 into callee frame
632 : LD   1, 3(5) ;  Load parameter 'N' into R1
633 : ST 1, 4(4) ;  Store argument 3 into callee frame
634 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
635 : ST 1, 5(4) ;  Store argument 4 into callee frame
636 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
637 : ST 1, 6(4) ;  Store argument 5 into callee frame
638 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
639 : ST 1, 7(4) ;  Store argument 6 into callee frame
640 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
641 : ST 1, 8(4) ;  Store argument 7 into callee frame
642 : LDA 6, 647(0) ;  Compute return address
643 : ST 6, 0(4) ;  Store return address in callee frame
644 : LDA  2, 10(4) ;  Compute end of frame
645 : ADD  5, 2, 0 ;  Advance pointer to end of frame
646 : LDA 7, 128(0) ;  Call whileLoopFor
647 : LD 1, 9(5) ;  Load callee return value into R1
648 : LDC  4, 10(0) ;  Load frame size
649 : SUB  5, 5, 4 ;  Restore pointer
650 : LDC  2, 10(0) ;  Stores arg frame size
651 : SUB  5, 5, 2 ;  Pop frame
652 : ST 1, 5(4) ;  Store argument 4 into callee frame
653 : LDA 6, 658(0) ;  Compute return address
654 : ST 6, 0(4) ;  Store return address in callee frame
655 : LDA  2, 7(4) ;  Compute end of frame
656 : ADD  5, 2, 0 ;  Advance pointer to end of frame
657 : LDA 7, 392(0) ;  Call fareySelectNum
658 : LD 1, 6(5) ;  Load callee return value into R1
659 : LDC  4, 7(0) ;  Load frame size
660 : SUB  5, 5, 4 ;  Restore pointer
661 : ST   1, 4(5) ;  Store function result into stack frame
662 : LD   6, 0(5) ;  Load return address
663 : LDA  7, 0(6) ;  Return to caller
