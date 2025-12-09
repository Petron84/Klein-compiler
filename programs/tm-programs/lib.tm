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
14 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 6, 21(0) ;  Compute return address
17 : ST 6, 0(4) ;  Store return address in callee frame
18 : LDA  2, 3(4) ;  Compute end of frame
19 : ADD  5, 2, 0 ;  Advance pointer to end of frame
20 : LDA 7, 202(0) ;  Call SQRT
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC  4, 3(0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : LDA  4, 3(5) ;  Update DMEM pointer
25 : LDA 6, 29(0) ;  Compute return address
26 : ST   6, 0(4) ;  Store return address
27 : ADD  5, 4, 0 ;  Updated Pointer
28 : LDA  7, 10(0) ; Call print
29 : LDC  4, 3(0) ;  Load frame size
30 : SUB  5, 5, 4 ;  Restore pointer
31 : LDA  4, 0(5) ;  Save callee frame base
32 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
33 : ST 1, 1(4) ;  Store argument 0 into callee frame
34 : LDA 6, 39(0) ;  Compute return address
35 : ST 6, 0(4) ;  Store return address in callee frame
36 : LDA  2, 3(4) ;  Compute end of frame
37 : ADD  5, 2, 0 ;  Advance pointer to end of frame
38 : LDA 7, 220(0) ;  Call ODD
39 : LD 1, 2(5) ;  Load callee return value into R1
40 : LDC  4, 3(0) ;  Load frame size
41 : SUB  5, 5, 4 ;  Restore pointer
42 : ST 1, 2(5) ;  Store result into current frame's return slot
43 : LD   1, 2(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LDA  4, 0(5) ;  Save callee frame base
47 : LD   1, 4(5) ;  Load parameter 'mid' into R1
48 : ADD  3, 1, 0 ;  Store left operand into temporary register
49 : LD   1, 4(5) ;  Load parameter 'mid' into R1
50 : ADD  2, 3, 0 ;  Restore left operand
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : ST 1, 1(4) ;  Store argument 0 into callee frame
53 : LD   1, 1(5) ;  Load parameter 'n' into R1
54 : ST 1, 2(4) ;  Store argument 1 into callee frame
55 : LDA 6, 60(0) ;  Compute return address
56 : ST 6, 0(4) ;  Store return address in callee frame
57 : LDA  2, 4(4) ;  Compute end of frame
58 : ADD  5, 2, 0 ;  Advance pointer to end of frame
59 : LDA 7, 523(0) ;  Call LE
60 : LD 1, 3(5) ;  Load callee return value into R1
61 : LDC  4, 4(0) ;  Load frame size
62 : SUB  5, 5, 4 ;  Restore pointer
63 : JEQ  1, 80(0) ;  If condition is false, jump to ELSE
64 : LDA  4, 0(5) ;  Save callee frame base
65 : LD   1, 1(5) ;  Load parameter 'n' into R1
66 : ST 1, 1(4) ;  Store argument 0 into callee frame
67 : LD   1, 4(5) ;  Load parameter 'mid' into R1
68 : ST 1, 2(4) ;  Store argument 1 into callee frame
69 : LD   1, 3(5) ;  Load parameter 'high' into R1
70 : ST 1, 3(4) ;  Store argument 2 into callee frame
71 : LDA 6, 76(0) ;  Compute return address
72 : ST 6, 0(4) ;  Store return address in callee frame
73 : LDA  2, 5(4) ;  Compute end of frame
74 : ADD  5, 2, 0 ;  Advance pointer to end of frame
75 : LDA 7, 98(0) ;  Call SQRTSEARCH
76 : LD 1, 4(5) ;  Load callee return value into R1
77 : LDC  4, 5(0) ;  Load frame size
78 : SUB  5, 5, 4 ;  Restore pointer
79 : LDA  7, 95(0) ;  Skip ELSE block
80 : LDA  4, 0(5) ;  Save callee frame base
81 : LD   1, 1(5) ;  Load parameter 'n' into R1
82 : ST 1, 1(4) ;  Store argument 0 into callee frame
83 : LD   1, 2(5) ;  Load parameter 'low' into R1
84 : ST 1, 2(4) ;  Store argument 1 into callee frame
85 : LD   1, 4(5) ;  Load parameter 'mid' into R1
86 : ST 1, 3(4) ;  Store argument 2 into callee frame
87 : LDA 6, 92(0) ;  Compute return address
88 : ST 6, 0(4) ;  Store return address in callee frame
89 : LDA  2, 5(4) ;  Compute end of frame
90 : ADD  5, 2, 0 ;  Advance pointer to end of frame
91 : LDA 7, 98(0) ;  Call SQRTSEARCH
92 : LD 1, 4(5) ;  Load callee return value into R1
93 : LDC  4, 5(0) ;  Load frame size
94 : SUB  5, 5, 4 ;  Restore pointer
95 : ST   1, 5(5) ;  Store function result into stack frame
96 : LD   6, 0(5) ;  Load return address
97 : LDA  7, 0(6) ;  Return to caller
98 : LDA  4, 0(5) ;  Save callee frame base
99 : LD   1, 3(5) ;  Load parameter 'high' into R1
100 : ST 1, 1(4) ;  Store argument 0 into callee frame
101 : LD   1, 2(5) ;  Load parameter 'low' into R1
102 : ADD  3, 1, 0 ;  Store left operand into temporary register
103 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
104 : ADD  2, 3, 0 ;  Restore left operand
105 : ADD  1, 2, 1 ;  R1 = left + right
106 : ST 1, 2(4) ;  Store argument 1 into callee frame
107 : LDA 6, 112(0) ;  Compute return address
108 : ST 6, 0(4) ;  Store return address in callee frame
109 : LDA  2, 4(4) ;  Compute end of frame
110 : ADD  5, 2, 0 ;  Advance pointer to end of frame
111 : LDA 7, 523(0) ;  Call LE
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDC  4, 4(0) ;  Load frame size
114 : SUB  5, 5, 4 ;  Restore pointer
115 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
116 : LDA  4, 0(5) ;  Save callee frame base
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : ADD  3, 1, 0 ;  Store left operand into temporary register
119 : LDA  4, 0(5) ;  Save callee frame base
120 : LD   1, 2(5) ;  Load parameter 'low' into R1
121 : ST 1, 1(4) ;  Store argument 0 into callee frame
122 : LD   1, 2(5) ;  Load parameter 'low' into R1
123 : ST 1, 2(4) ;  Store argument 1 into callee frame
124 : LDA 6, 129(0) ;  Compute return address
125 : ST 6, 0(4) ;  Store return address in callee frame
126 : LDA  2, 4(4) ;  Compute end of frame
127 : ADD  5, 2, 0 ;  Advance pointer to end of frame
128 : LDA 7, 447(0) ;  Call TIMES
129 : LD 1, 3(5) ;  Load callee return value into R1
130 : LDC  4, 4(0) ;  Load frame size
131 : SUB  5, 5, 4 ;  Restore pointer
132 : ADD  2, 3, 0 ;  Restore left operand
133 : SUB  1, 2, 1 ;  R1 = left - right
134 : ST 1, 1(4) ;  Store argument 0 into callee frame
135 : LDA  4, 0(5) ;  Save callee frame base
136 : LD   1, 3(5) ;  Load parameter 'high' into R1
137 : ST 1, 1(4) ;  Store argument 0 into callee frame
138 : LD   1, 3(5) ;  Load parameter 'high' into R1
139 : ST 1, 2(4) ;  Store argument 1 into callee frame
140 : LDA 6, 145(0) ;  Compute return address
141 : ST 6, 0(4) ;  Store return address in callee frame
142 : LDA  2, 4(4) ;  Compute end of frame
143 : ADD  5, 2, 0 ;  Advance pointer to end of frame
144 : LDA 7, 447(0) ;  Call TIMES
145 : LD 1, 3(5) ;  Load callee return value into R1
146 : LDC  4, 4(0) ;  Load frame size
147 : SUB  5, 5, 4 ;  Restore pointer
148 : ADD  3, 1, 0 ;  Store left operand into temporary register
149 : LD   1, 1(5) ;  Load parameter 'n' into R1
150 : ADD  2, 3, 0 ;  Restore left operand
151 : SUB  1, 2, 1 ;  R1 = left - right
152 : ST 1, 2(4) ;  Store argument 1 into callee frame
153 : LDA 6, 158(0) ;  Compute return address
154 : ST 6, 0(4) ;  Store return address in callee frame
155 : LDA  2, 4(4) ;  Compute end of frame
156 : ADD  5, 2, 0 ;  Advance pointer to end of frame
157 : LDA 7, 523(0) ;  Call LE
158 : LD 1, 3(5) ;  Load callee return value into R1
159 : LDC  4, 4(0) ;  Load frame size
160 : SUB  5, 5, 4 ;  Restore pointer
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 2(5) ;  Load parameter 'low' into R1
163 : LDA  7, 165(0) ;  Skip ELSE block
164 : LD   1, 3(5) ;  Load parameter 'high' into R1
165 : LDA  7, 199(0) ;  Skip ELSE block
166 : LDA  4, 0(5) ;  Save callee frame base
167 : LD   1, 1(5) ;  Load parameter 'n' into R1
168 : ST 1, 1(4) ;  Store argument 0 into callee frame
169 : LD   1, 2(5) ;  Load parameter 'low' into R1
170 : ST 1, 2(4) ;  Store argument 1 into callee frame
171 : LD   1, 3(5) ;  Load parameter 'high' into R1
172 : ST 1, 3(4) ;  Store argument 2 into callee frame
173 : LDA  4, 0(5) ;  Save callee frame base
174 : LD   1, 2(5) ;  Load parameter 'low' into R1
175 : ST 1, 1(4) ;  Store argument 0 into callee frame
176 : LD   1, 3(5) ;  Load parameter 'high' into R1
177 : ST 1, 2(4) ;  Store argument 1 into callee frame
178 : LDA 6, 183(0) ;  Compute return address
179 : ST 6, 0(4) ;  Store return address in callee frame
180 : LDA  2, 4(4) ;  Compute end of frame
181 : ADD  5, 2, 0 ;  Advance pointer to end of frame
182 : LDA 7, 463(0) ;  Call PLUS
183 : LD 1, 3(5) ;  Load callee return value into R1
184 : LDC  4, 4(0) ;  Load frame size
185 : SUB  5, 5, 4 ;  Restore pointer
186 : ADD  3, 1, 0 ;  Store left operand into temporary register
187 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
188 : ADD  2, 3, 0 ;  Restore left operand
189 : DIV  1, 2, 1 ;  R1 = left / right
190 : ST 1, 4(4) ;  Store argument 3 into callee frame
191 : LDA 6, 196(0) ;  Compute return address
192 : ST 6, 0(4) ;  Store return address in callee frame
193 : LDA  2, 6(4) ;  Compute end of frame
194 : ADD  5, 2, 0 ;  Advance pointer to end of frame
195 : LDA 7, 46(0) ;  Call SQRTSPLIT
196 : LD 1, 5(5) ;  Load callee return value into R1
197 : LDC  4, 6(0) ;  Load frame size
198 : SUB  5, 5, 4 ;  Restore pointer
199 : ST   1, 4(5) ;  Store function result into stack frame
200 : LD   6, 0(5) ;  Load return address
201 : LDA  7, 0(6) ;  Return to caller
202 : LDA  4, 0(5) ;  Save callee frame base
203 : LD   1, 1(5) ;  Load parameter 'n' into R1
204 : ST 1, 1(4) ;  Store argument 0 into callee frame
205 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
206 : ST 1, 2(4) ;  Store argument 1 into callee frame
207 : LD   1, 1(5) ;  Load parameter 'n' into R1
208 : ST 1, 3(4) ;  Store argument 2 into callee frame
209 : LDA 6, 214(0) ;  Compute return address
210 : ST 6, 0(4) ;  Store return address in callee frame
211 : LDA  2, 5(4) ;  Compute end of frame
212 : ADD  5, 2, 0 ;  Advance pointer to end of frame
213 : LDA 7, 98(0) ;  Call SQRTSEARCH
214 : LD 1, 4(5) ;  Load callee return value into R1
215 : LDC  4, 5(0) ;  Load frame size
216 : SUB  5, 5, 4 ;  Restore pointer
217 : ST   1, 2(5) ;  Store function result into stack frame
218 : LD   6, 0(5) ;  Load return address
219 : LDA  7, 0(6) ;  Return to caller
220 : LDA  4, 0(5) ;  Save callee frame base
221 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
222 : ST 1, 1(4) ;  Store argument 0 into callee frame
223 : LD   1, 1(5) ;  Load parameter 'n' into R1
224 : ST 1, 2(4) ;  Store argument 1 into callee frame
225 : LDA 6, 230(0) ;  Compute return address
226 : ST 6, 0(4) ;  Store return address in callee frame
227 : LDA  2, 4(4) ;  Compute end of frame
228 : ADD  5, 2, 0 ;  Advance pointer to end of frame
229 : LDA 7, 523(0) ;  Call LE
230 : LD 1, 3(5) ;  Load callee return value into R1
231 : LDC  4, 4(0) ;  Load frame size
232 : SUB  5, 5, 4 ;  Restore pointer
233 : JEQ  1, 276(0) ;  If condition is false, jump to ELSE
234 : LDA  4, 0(5) ;  Save callee frame base
235 : LD   1, 1(5) ;  Load parameter 'n' into R1
236 : ST 1, 1(4) ;  Store argument 0 into callee frame
237 : LDA  4, 0(5) ;  Save callee frame base
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : ST 1, 1(4) ;  Store argument 0 into callee frame
240 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
241 : ST 1, 2(4) ;  Store argument 1 into callee frame
242 : LDA 6, 247(0) ;  Compute return address
243 : ST 6, 0(4) ;  Store return address in callee frame
244 : LDA  2, 4(4) ;  Compute end of frame
245 : ADD  5, 2, 0 ;  Advance pointer to end of frame
246 : LDA 7, 439(0) ;  Call DIV
247 : LD 1, 3(5) ;  Load callee return value into R1
248 : LDC  4, 4(0) ;  Load frame size
249 : SUB  5, 5, 4 ;  Restore pointer
250 : ADD  3, 1, 0 ;  Store left operand into temporary register
251 : LDA  4, 0(5) ;  Save callee frame base
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : ST 1, 1(4) ;  Store argument 0 into callee frame
254 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
255 : ST 1, 2(4) ;  Store argument 1 into callee frame
256 : LDA 6, 261(0) ;  Compute return address
257 : ST 6, 0(4) ;  Store return address in callee frame
258 : LDA  2, 4(4) ;  Compute end of frame
259 : ADD  5, 2, 0 ;  Advance pointer to end of frame
260 : LDA 7, 439(0) ;  Call DIV
261 : LD 1, 3(5) ;  Load callee return value into R1
262 : LDC  4, 4(0) ;  Load frame size
263 : SUB  5, 5, 4 ;  Restore pointer
264 : ADD  2, 3, 0 ;  Restore left operand
265 : ADD  1, 2, 1 ;  R1 = left + right
266 : ST 1, 2(4) ;  Store argument 1 into callee frame
267 : LDA 6, 272(0) ;  Compute return address
268 : ST 6, 0(4) ;  Store return address in callee frame
269 : LDA  2, 4(4) ;  Compute end of frame
270 : ADD  5, 2, 0 ;  Advance pointer to end of frame
271 : LDA 7, 487(0) ;  Call GT
272 : LD 1, 3(5) ;  Load callee return value into R1
273 : LDC  4, 4(0) ;  Load frame size
274 : SUB  5, 5, 4 ;  Restore pointer
275 : LDA  7, 353(0) ;  Skip ELSE block
276 : LDA  4, 0(5) ;  Save callee frame base
277 : LDA  4, 0(5) ;  Save callee frame base
278 : LD   1, 1(5) ;  Load parameter 'n' into R1
279 : ST 1, 1(4) ;  Store argument 0 into callee frame
280 : LDA 6, 285(0) ;  Compute return address
281 : ST 6, 0(4) ;  Store return address in callee frame
282 : LDA  2, 3(4) ;  Compute end of frame
283 : ADD  5, 2, 0 ;  Advance pointer to end of frame
284 : LDA 7, 434(0) ;  Call NEG
285 : LD 1, 2(5) ;  Load callee return value into R1
286 : LDC  4, 3(0) ;  Load frame size
287 : SUB  5, 5, 4 ;  Restore pointer
288 : LDC  2, 3(0) ;  Stores arg frame size
289 : SUB  5, 5, 2 ;  Pop frame
290 : ST 1, 1(4) ;  Store argument 0 into callee frame
291 : LDA  4, 0(5) ;  Save callee frame base
292 : LDA  4, 0(5) ;  Save callee frame base
293 : LD   1, 1(5) ;  Load parameter 'n' into R1
294 : ST 1, 1(4) ;  Store argument 0 into callee frame
295 : LDA 6, 300(0) ;  Compute return address
296 : ST 6, 0(4) ;  Store return address in callee frame
297 : LDA  2, 3(4) ;  Compute end of frame
298 : ADD  5, 2, 0 ;  Advance pointer to end of frame
299 : LDA 7, 434(0) ;  Call NEG
300 : LD 1, 2(5) ;  Load callee return value into R1
301 : LDC  4, 3(0) ;  Load frame size
302 : SUB  5, 5, 4 ;  Restore pointer
303 : LDC  2, 3(0) ;  Stores arg frame size
304 : SUB  5, 5, 2 ;  Pop frame
305 : ST 1, 1(4) ;  Store argument 0 into callee frame
306 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
307 : ST 1, 2(4) ;  Store argument 1 into callee frame
308 : LDA 6, 313(0) ;  Compute return address
309 : ST 6, 0(4) ;  Store return address in callee frame
310 : LDA  2, 4(4) ;  Compute end of frame
311 : ADD  5, 2, 0 ;  Advance pointer to end of frame
312 : LDA 7, 439(0) ;  Call DIV
313 : LD 1, 3(5) ;  Load callee return value into R1
314 : LDC  4, 4(0) ;  Load frame size
315 : SUB  5, 5, 4 ;  Restore pointer
316 : ADD  3, 1, 0 ;  Store left operand into temporary register
317 : LDA  4, 0(5) ;  Save callee frame base
318 : LDA  4, 0(5) ;  Save callee frame base
319 : LD   1, 1(5) ;  Load parameter 'n' into R1
320 : ST 1, 1(4) ;  Store argument 0 into callee frame
321 : LDA 6, 326(0) ;  Compute return address
322 : ST 6, 0(4) ;  Store return address in callee frame
323 : LDA  2, 3(4) ;  Compute end of frame
324 : ADD  5, 2, 0 ;  Advance pointer to end of frame
325 : LDA 7, 434(0) ;  Call NEG
326 : LD 1, 2(5) ;  Load callee return value into R1
327 : LDC  4, 3(0) ;  Load frame size
328 : SUB  5, 5, 4 ;  Restore pointer
329 : LDC  2, 3(0) ;  Stores arg frame size
330 : SUB  5, 5, 2 ;  Pop frame
331 : ST 1, 1(4) ;  Store argument 0 into callee frame
332 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
333 : ST 1, 2(4) ;  Store argument 1 into callee frame
334 : LDA 6, 339(0) ;  Compute return address
335 : ST 6, 0(4) ;  Store return address in callee frame
336 : LDA  2, 4(4) ;  Compute end of frame
337 : ADD  5, 2, 0 ;  Advance pointer to end of frame
338 : LDA 7, 439(0) ;  Call DIV
339 : LD 1, 3(5) ;  Load callee return value into R1
340 : LDC  4, 4(0) ;  Load frame size
341 : SUB  5, 5, 4 ;  Restore pointer
342 : ADD  2, 3, 0 ;  Restore left operand
343 : ADD  1, 2, 1 ;  R1 = left + right
344 : ST 1, 2(4) ;  Store argument 1 into callee frame
345 : LDA 6, 350(0) ;  Compute return address
346 : ST 6, 0(4) ;  Store return address in callee frame
347 : LDA  2, 4(4) ;  Compute end of frame
348 : ADD  5, 2, 0 ;  Advance pointer to end of frame
349 : LDA 7, 487(0) ;  Call GT
350 : LD 1, 3(5) ;  Load callee return value into R1
351 : LDC  4, 4(0) ;  Load frame size
352 : SUB  5, 5, 4 ;  Restore pointer
353 : ST   1, 2(5) ;  Store function result into stack frame
354 : LD   6, 0(5) ;  Load return address
355 : LDA  7, 0(6) ;  Return to caller
356 : LD   1, 2(5) ;  Load parameter 'n' into R1
357 : ADD  3, 1, 0 ;  Store left operand into temporary register
358 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
359 : ADD  2, 3, 0 ;  Restore left operand
360 : SUB  1, 2, 1 ;  left - right for equality check
361 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
362 : LDC  1, 0(0) ;  false
363 : LDA  7, 1(7) ;  skip setting true
364 : LDC  1, 1(0) ;  true
365 : JEQ  1, 368(0) ;  If condition is false, jump to ELSE
366 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
367 : LDA  7, 389(0) ;  Skip ELSE block
368 : LD   1, 1(5) ;  Load parameter 'm' into R1
369 : ADD  3, 1, 0 ;  Store left operand into temporary register
370 : LDA  4, 0(5) ;  Save callee frame base
371 : LD   1, 1(5) ;  Load parameter 'm' into R1
372 : ST 1, 1(4) ;  Store argument 0 into callee frame
373 : LD   1, 2(5) ;  Load parameter 'n' into R1
374 : ADD  3, 1, 0 ;  Store left operand into temporary register
375 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
376 : ADD  2, 3, 0 ;  Restore left operand
377 : SUB  1, 2, 1 ;  R1 = left - right
378 : ST 1, 2(4) ;  Store argument 1 into callee frame
379 : LDA 6, 384(0) ;  Compute return address
380 : ST 6, 0(4) ;  Store return address in callee frame
381 : LDA  2, 4(4) ;  Compute end of frame
382 : ADD  5, 2, 0 ;  Advance pointer to end of frame
383 : LDA 7, 356(0) ;  Call EXP
384 : LD 1, 3(5) ;  Load callee return value into R1
385 : LDC  4, 4(0) ;  Load frame size
386 : SUB  5, 5, 4 ;  Restore pointer
387 : ADD  2, 3, 0 ;  Restore left operand
388 : MUL  1, 2, 1 ;  R1 = left * right
389 : ST   1, 3(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LD   1, 1(5) ;  Load parameter 'm' into R1
393 : ADD  3, 1, 0 ;  Store left operand into temporary register
394 : LD   1, 1(5) ;  Load parameter 'm' into R1
395 : ADD  3, 1, 0 ;  Store left operand into temporary register
396 : LD   1, 2(5) ;  Load parameter 'n' into R1
397 : ADD  2, 3, 0 ;  Restore left operand
398 : DIV  1, 2, 1 ;  R1 = left / right
399 : ADD  3, 1, 0 ;  Store left operand into temporary register
400 : LD   1, 2(5) ;  Load parameter 'n' into R1
401 : ADD  2, 3, 0 ;  Restore left operand
402 : MUL  1, 2, 1 ;  R1 = left * right
403 : ADD  2, 3, 0 ;  Restore left operand
404 : SUB  1, 2, 1 ;  R1 = left - right
405 : ST   1, 3(5) ;  Store function result into stack frame
406 : LD   6, 0(5) ;  Load return address
407 : LDA  7, 0(6) ;  Return to caller
408 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
409 : ADD  3, 1, 0 ;  Store left operand into temporary register
410 : LD   1, 1(5) ;  Load parameter 'n' into R1
411 : ADD  2, 3, 0 ;  Restore left operand
412 : SUB  1, 2, 1 ;  left - right for less-than check
413 : JLT  1, 2(7) ;  If R1 < 0, jump to true
414 : LDC  1, 0(0) ;  false
415 : LDA  7, 1(7) ;  skip setting true
416 : LDC  1, 1(0) ;  true
417 : JEQ  1, 420(0) ;  If condition is false, jump to ELSE
418 : LD   1, 1(5) ;  Load parameter 'n' into R1
419 : LDA  7, 431(0) ;  Skip ELSE block
420 : LDA  4, 0(5) ;  Save callee frame base
421 : LD   1, 1(5) ;  Load parameter 'n' into R1
422 : ST 1, 1(4) ;  Store argument 0 into callee frame
423 : LDA 6, 428(0) ;  Compute return address
424 : ST 6, 0(4) ;  Store return address in callee frame
425 : LDA  2, 3(4) ;  Compute end of frame
426 : ADD  5, 2, 0 ;  Advance pointer to end of frame
427 : LDA 7, 434(0) ;  Call NEG
428 : LD 1, 2(5) ;  Load callee return value into R1
429 : LDC  4, 3(0) ;  Load frame size
430 : SUB  5, 5, 4 ;  Restore pointer
431 : ST   1, 2(5) ;  Store function result into stack frame
432 : LD   6, 0(5) ;  Load return address
433 : LDA  7, 0(6) ;  Return to caller
434 : LD   1, 1(5) ;  Load parameter 'n' into R1
435 : SUB  1, 0, 1 ;  Negate value in R1
436 : ST   1, 2(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 1(5) ;  Load parameter 'p' into R1
440 : ADD  3, 1, 0 ;  Store left operand into temporary register
441 : LD   1, 2(5) ;  Load parameter 'q' into R1
442 : ADD  2, 3, 0 ;  Restore left operand
443 : DIV  1, 2, 1 ;  R1 = left / right
444 : ST   1, 3(5) ;  Store function result into stack frame
445 : LD   6, 0(5) ;  Load return address
446 : LDA  7, 0(6) ;  Return to caller
447 : LD   1, 1(5) ;  Load parameter 'p' into R1
448 : ADD  3, 1, 0 ;  Store left operand into temporary register
449 : LD   1, 2(5) ;  Load parameter 'q' into R1
450 : ADD  2, 3, 0 ;  Restore left operand
451 : MUL  1, 2, 1 ;  R1 = left * right
452 : ST   1, 3(5) ;  Store function result into stack frame
453 : LD   6, 0(5) ;  Load return address
454 : LDA  7, 0(6) ;  Return to caller
455 : LD   1, 1(5) ;  Load parameter 'p' into R1
456 : ADD  3, 1, 0 ;  Store left operand into temporary register
457 : LD   1, 2(5) ;  Load parameter 'q' into R1
458 : ADD  2, 3, 0 ;  Restore left operand
459 : SUB  1, 2, 1 ;  R1 = left - right
460 : ST   1, 3(5) ;  Store function result into stack frame
461 : LD   6, 0(5) ;  Load return address
462 : LDA  7, 0(6) ;  Return to caller
463 : LD   1, 1(5) ;  Load parameter 'p' into R1
464 : ADD  3, 1, 0 ;  Store left operand into temporary register
465 : LD   1, 2(5) ;  Load parameter 'q' into R1
466 : ADD  2, 3, 0 ;  Restore left operand
467 : ADD  1, 2, 1 ;  R1 = left + right
468 : ST   1, 3(5) ;  Store function result into stack frame
469 : LD   6, 0(5) ;  Load return address
470 : LDA  7, 0(6) ;  Return to caller
471 : LD   1, 1(5) ;  Load parameter 'p' into R1
472 : JEQ  1, 475(0) ;  If condition is false, jump to ELSE
473 : LD   1, 2(5) ;  Load parameter 'q' into R1
474 : LDA  7, 476(0) ;  Skip ELSE block
475 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
476 : ST   1, 3(5) ;  Store function result into stack frame
477 : LD   6, 0(5) ;  Load return address
478 : LDA  7, 0(6) ;  Return to caller
479 : LD   1, 1(5) ;  Load parameter 'p' into R1
480 : ADD  3, 1, 0 ;  Store left operand into temporary register
481 : LD   1, 2(5) ;  Load parameter 'q' into R1
482 : ADD  2, 3, 0 ;  Restore left operand
483 : ADD  1, 2, 1 ;  R1 = left OR right
484 : ST   1, 3(5) ;  Store function result into stack frame
485 : LD   6, 0(5) ;  Load return address
486 : LDA  7, 0(6) ;  Return to caller
487 : LDA  4, 0(5) ;  Save callee frame base
488 : LD   1, 1(5) ;  Load parameter 'p' into R1
489 : ST 1, 1(4) ;  Store argument 0 into callee frame
490 : LD   1, 2(5) ;  Load parameter 'q' into R1
491 : ST 1, 2(4) ;  Store argument 1 into callee frame
492 : LDA 6, 497(0) ;  Compute return address
493 : ST 6, 0(4) ;  Store return address in callee frame
494 : LDA  2, 4(4) ;  Compute end of frame
495 : ADD  5, 2, 0 ;  Advance pointer to end of frame
496 : LDA 7, 523(0) ;  Call LE
497 : LD 1, 3(5) ;  Load callee return value into R1
498 : LDC  4, 4(0) ;  Load frame size
499 : SUB  5, 5, 4 ;  Restore pointer
500 : LDC  2, 1(0) ;  Load 1 into R2
501 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
502 : ST   1, 3(5) ;  Store function result into stack frame
503 : LD   6, 0(5) ;  Load return address
504 : LDA  7, 0(6) ;  Return to caller
505 : LDA  4, 0(5) ;  Save callee frame base
506 : LD   1, 1(5) ;  Load parameter 'p' into R1
507 : ST 1, 1(4) ;  Store argument 0 into callee frame
508 : LD   1, 2(5) ;  Load parameter 'q' into R1
509 : ST 1, 2(4) ;  Store argument 1 into callee frame
510 : LDA 6, 515(0) ;  Compute return address
511 : ST 6, 0(4) ;  Store return address in callee frame
512 : LDA  2, 4(4) ;  Compute end of frame
513 : ADD  5, 2, 0 ;  Advance pointer to end of frame
514 : LDA 7, 585(0) ;  Call LT
515 : LD 1, 3(5) ;  Load callee return value into R1
516 : LDC  4, 4(0) ;  Load frame size
517 : SUB  5, 5, 4 ;  Restore pointer
518 : LDC  2, 1(0) ;  Load 1 into R2
519 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
520 : ST   1, 3(5) ;  Store function result into stack frame
521 : LD   6, 0(5) ;  Load return address
522 : LDA  7, 0(6) ;  Return to caller
523 : LDA  4, 0(5) ;  Save callee frame base
524 : LD   1, 1(5) ;  Load parameter 'p' into R1
525 : ST 1, 1(4) ;  Store argument 0 into callee frame
526 : LD   1, 2(5) ;  Load parameter 'q' into R1
527 : ST 1, 2(4) ;  Store argument 1 into callee frame
528 : LDA 6, 533(0) ;  Compute return address
529 : ST 6, 0(4) ;  Store return address in callee frame
530 : LDA  2, 4(4) ;  Compute end of frame
531 : ADD  5, 2, 0 ;  Advance pointer to end of frame
532 : LDA 7, 585(0) ;  Call LT
533 : LD 1, 3(5) ;  Load callee return value into R1
534 : LDC  4, 4(0) ;  Load frame size
535 : SUB  5, 5, 4 ;  Restore pointer
536 : ADD  3, 1, 0 ;  Store left operand into temporary register
537 : LDA  4, 0(5) ;  Save callee frame base
538 : LD   1, 1(5) ;  Load parameter 'p' into R1
539 : ST 1, 1(4) ;  Store argument 0 into callee frame
540 : LD   1, 2(5) ;  Load parameter 'q' into R1
541 : ST 1, 2(4) ;  Store argument 1 into callee frame
542 : LDA 6, 547(0) ;  Compute return address
543 : ST 6, 0(4) ;  Store return address in callee frame
544 : LDA  2, 4(4) ;  Compute end of frame
545 : ADD  5, 2, 0 ;  Advance pointer to end of frame
546 : LDA 7, 573(0) ;  Call EQ
547 : LD 1, 3(5) ;  Load callee return value into R1
548 : LDC  4, 4(0) ;  Load frame size
549 : SUB  5, 5, 4 ;  Restore pointer
550 : ADD  2, 3, 0 ;  Restore left operand
551 : ADD  1, 2, 1 ;  R1 = left OR right
552 : ST   1, 3(5) ;  Store function result into stack frame
553 : LD   6, 0(5) ;  Load return address
554 : LDA  7, 0(6) ;  Return to caller
555 : LDA  4, 0(5) ;  Save callee frame base
556 : LD   1, 1(5) ;  Load parameter 'p' into R1
557 : ST 1, 1(4) ;  Store argument 0 into callee frame
558 : LD   1, 2(5) ;  Load parameter 'q' into R1
559 : ST 1, 2(4) ;  Store argument 1 into callee frame
560 : LDA 6, 565(0) ;  Compute return address
561 : ST 6, 0(4) ;  Store return address in callee frame
562 : LDA  2, 4(4) ;  Compute end of frame
563 : ADD  5, 2, 0 ;  Advance pointer to end of frame
564 : LDA 7, 573(0) ;  Call EQ
565 : LD 1, 3(5) ;  Load callee return value into R1
566 : LDC  4, 4(0) ;  Load frame size
567 : SUB  5, 5, 4 ;  Restore pointer
568 : LDC  2, 1(0) ;  Load 1 into R2
569 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
570 : ST   1, 3(5) ;  Store function result into stack frame
571 : LD   6, 0(5) ;  Load return address
572 : LDA  7, 0(6) ;  Return to caller
573 : LD   1, 1(5) ;  Load parameter 'p' into R1
574 : ADD  3, 1, 0 ;  Store left operand into temporary register
575 : LD   1, 2(5) ;  Load parameter 'q' into R1
576 : ADD  2, 3, 0 ;  Restore left operand
577 : SUB  1, 2, 1 ;  left - right for equality check
578 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
579 : LDC  1, 0(0) ;  false
580 : LDA  7, 1(7) ;  skip setting true
581 : LDC  1, 1(0) ;  true
582 : ST   1, 3(5) ;  Store function result into stack frame
583 : LD   6, 0(5) ;  Load return address
584 : LDA  7, 0(6) ;  Return to caller
585 : LD   1, 1(5) ;  Load parameter 'p' into R1
586 : ADD  3, 1, 0 ;  Store left operand into temporary register
587 : LD   1, 2(5) ;  Load parameter 'q' into R1
588 : ADD  2, 3, 0 ;  Restore left operand
589 : SUB  1, 2, 1 ;  left - right for less-than check
590 : JLT  1, 2(7) ;  If R1 < 0, jump to true
591 : LDC  1, 0(0) ;  false
592 : LDA  7, 1(7) ;  skip setting true
593 : LDC  1, 1(0) ;  true
594 : ST   1, 3(5) ;  Store function result into stack frame
595 : LD   6, 0(5) ;  Load return address
596 : LDA  7, 0(6) ;  Return to caller
597 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
598 : SUB  1, 0, 1 ;  Negate value in R1
599 : ADD  3, 1, 0 ;  Store left operand into temporary register
600 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
601 : ADD  2, 3, 0 ;  Restore left operand
602 : SUB  1, 2, 1 ;  R1 = left - right
603 : ST   1, 1(5) ;  Store function result into stack frame
604 : LD   6, 0(5) ;  Load return address
605 : LDA  7, 0(6) ;  Return to caller
606 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
607 : ST   1, 1(5) ;  Store function result into stack frame
608 : LD   6, 0(5) ;  Load return address
609 : LDA  7, 0(6) ;  Return to caller
