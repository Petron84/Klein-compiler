0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
16 : LDA  4, 5(5) ; Restore Callee frame base
17 : ST 1, 1(4) ;  Store argument 0 into callee frame
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : LDA  4, 5(5) ; Restore Callee frame base
20 : ST 1, 2(4) ;  Store argument 1 into callee frame
21 : LD   1, 3(5) ;  Load parameter 'N' into R1
22 : LDA  4, 5(5) ; Restore Callee frame base
23 : ST 1, 3(4) ;  Store argument 2 into callee frame
24 : LDA  4, 5(5) ; Restore Call frame base
25 : LDA 6, 29(0) ;  Compute return address
26 : ST 6, 0(4) ;  Store return address in callee frame
27 : ADD  5, 4, 0 ;  Update pointer
28 : LDA 7, 589(0) ;  Call fareyNum
29 : LD 1, 4(5) ;  Load callee return value into R1
30 : LDC  4, 5(0) ;  Load frame size
31 : SUB  5, 5, 4 ;  Restore pointer
32 : LDA  4, 3(5) ;  Update DMEM pointer
33 : LDA 6, 37(0) ;  Compute return address
34 : ST   6, 0(4) ;  Store return address
35 : ADD  5, 4, 0 ;  Updated Pointer
36 : LDA  7, 12(0) ; Call print
37 : LDC  4, 3(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
40 : LDA  4, 5(5) ; Restore Callee frame base
41 : ST 1, 1(4) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
43 : LDA  4, 5(5) ; Restore Callee frame base
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LD   1, 3(5) ;  Load parameter 'N' into R1
46 : LDA  4, 5(5) ; Restore Callee frame base
47 : ST 1, 3(4) ;  Store argument 2 into callee frame
48 : LDA  4, 5(5) ; Restore Call frame base
49 : LDA 6, 53(0) ;  Compute return address
50 : ST 6, 0(4) ;  Store return address in callee frame
51 : ADD  5, 4, 0 ;  Update pointer
52 : LDA 7, 439(0) ;  Call fareyDen
53 : LD 1, 4(5) ;  Load callee return value into R1
54 : LDC  4, 5(0) ;  Load frame size
55 : SUB  5, 5, 4 ;  Restore pointer
56 : ST 1, 4(5) ;  Store result into current frame's return slot
57 : LD   1, 4(5) ;  Load return value into register 1
58 : LD  6, 0(5) ;  Load return address for main function into register 6
59 : LDA  7, 0(6) ;  Jump to return address of main function
60 : LD   1, 1(5) ;  Load parameter 'x' into R1
61 : LDC  3, 1(0) ;  Store left operand into temporary register
62 : LD   1, 2(5) ;  Load parameter 'y' into R1
63 : LDC  2, 3(0) ;  Restore left operand
64 : SUB  1, 2, 1 ;  left - right for less-than check
65 : JLT  1, 2(7) ;  If R1 < 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : LDC  3, 1(0) ;  Store left operand into temporary register
70 : LD   1, 1(5) ;  Load parameter 'x' into R1
71 : LDC  3, 1(0) ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'y' into R1
73 : LDC  2, 3(0) ;  Restore left operand
74 : SUB  1, 2, 1 ;  left - right for equality check
75 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
76 : LDC  1, 0(0) ;  false
77 : LDA  7, 1(7) ;  skip setting true
78 : LDC  1, 1(0) ;  true
79 : LDC  2, 3(0) ;  Restore left operand
80 : ADD  1, 2, 1 ;  R1 = left OR right
81 : LDC  2, 1(0) ;  Load 1 into R2
82 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LD   1, 1(5) ;  Load parameter 'x' into R1
87 : LDC  3, 1(0) ;  Store left operand into temporary register
88 : LD   1, 4(5) ;  Load parameter 'yd' into R1
89 : LDC  2, 3(0) ;  Restore left operand
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : LDA  4, 4(5) ; Restore Callee frame base
92 : ST 1, 1(4) ;  Store argument 0 into callee frame
93 : LD   1, 3(5) ;  Load parameter 'y' into R1
94 : LDC  3, 1(0) ;  Store left operand into temporary register
95 : LD   1, 2(5) ;  Load parameter 'xd' into R1
96 : LDC  2, 3(0) ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : LDA  4, 4(5) ; Restore Callee frame base
99 : ST 1, 2(4) ;  Store argument 1 into callee frame
100 : LDA  4, 4(5) ; Restore Call frame base
101 : LDA 6, 105(0) ;  Compute return address
102 : ST 6, 0(4) ;  Store return address in callee frame
103 : ADD  5, 4, 0 ;  Update pointer
104 : LDA 7, 60(0) ;  Call greater
105 : LD 1, 3(5) ;  Load callee return value into R1
106 : LDC  4, 4(0) ;  Load frame size
107 : SUB  5, 5, 4 ;  Restore pointer
108 : ST   1, 5(5) ;  Store function result into stack frame
109 : LD   6, 0(5) ;  Load return address
110 : LDA  7, 0(6) ;  Return to caller
111 : LD   1, 1(5) ;  Load parameter 'x' into R1
112 : LDC  3, 1(0) ;  Store left operand into temporary register
113 : LD   1, 4(5) ;  Load parameter 'yd' into R1
114 : LDC  2, 3(0) ;  Restore left operand
115 : MUL  1, 2, 1 ;  R1 = left * right
116 : LDC  3, 1(0) ;  Store left operand into temporary register
117 : LD   1, 3(5) ;  Load parameter 'y' into R1
118 : LDC  3, 1(0) ;  Store left operand into temporary register
119 : LD   1, 2(5) ;  Load parameter 'xd' into R1
120 : LDC  2, 3(0) ;  Restore left operand
121 : MUL  1, 2, 1 ;  R1 = left * right
122 : LDC  2, 3(0) ;  Restore left operand
123 : SUB  1, 2, 1 ;  left - right for equality check
124 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
125 : LDC  1, 0(0) ;  false
126 : LDA  7, 1(7) ;  skip setting true
127 : LDC  1, 1(0) ;  true
128 : ST   1, 5(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LD   1, 6(5) ;  Load parameter 'b' into R1
132 : LDA  4, 4(5) ; Restore Callee frame base
133 : ST 1, 1(4) ;  Store argument 0 into callee frame
134 : LD   1, 4(5) ;  Load parameter 'N' into R1
135 : LDA  4, 4(5) ; Restore Callee frame base
136 : ST 1, 2(4) ;  Store argument 1 into callee frame
137 : LDA  4, 4(5) ; Restore Call frame base
138 : LDA 6, 142(0) ;  Compute return address
139 : ST 6, 0(4) ;  Store return address in callee frame
140 : ADD  5, 4, 0 ;  Update pointer
141 : LDA 7, 60(0) ;  Call greater
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC  4, 4(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : LDC  3, 1(0) ;  Store left operand into temporary register
146 : LD   1, 8(5) ;  Load parameter 'd' into R1
147 : LDA  4, 4(5) ; Restore Callee frame base
148 : ST 1, 1(4) ;  Store argument 0 into callee frame
149 : LD   1, 4(5) ;  Load parameter 'N' into R1
150 : LDA  4, 4(5) ; Restore Callee frame base
151 : ST 1, 2(4) ;  Store argument 1 into callee frame
152 : LDA  4, 4(5) ; Restore Call frame base
153 : LDA 6, 157(0) ;  Compute return address
154 : ST 6, 0(4) ;  Store return address in callee frame
155 : ADD  5, 4, 0 ;  Update pointer
156 : LDA 7, 60(0) ;  Call greater
157 : LD 1, 3(5) ;  Load callee return value into R1
158 : LDC  4, 4(0) ;  Load frame size
159 : SUB  5, 5, 4 ;  Restore pointer
160 : LDC  2, 3(0) ;  Restore left operand
161 : ADD  1, 2, 1 ;  R1 = left OR right
162 : JEQ  1, 201(0) ;  If condition is false, jump to ELSE
163 : LD   1, 1(5) ;  Load parameter 'selector' into R1
164 : LDC  3, 1(0) ;  Store left operand into temporary register
165 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
166 : LDC  2, 3(0) ;  Restore left operand
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 5(5) ;  Load parameter 'a' into R1
174 : LDA  7, 200(0) ;  Skip ELSE block
175 : LD   1, 1(5) ;  Load parameter 'selector' into R1
176 : LDC  3, 1(0) ;  Store left operand into temporary register
177 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
178 : LDC  2, 3(0) ;  Restore left operand
179 : SUB  1, 2, 1 ;  left - right for equality check
180 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
181 : LDC  1, 0(0) ;  false
182 : LDA  7, 1(7) ;  skip setting true
183 : LDC  1, 1(0) ;  true
184 : JEQ  1, 187(0) ;  If condition is false, jump to ELSE
185 : LD   1, 6(5) ;  Load parameter 'b' into R1
186 : LDA  7, 200(0) ;  Skip ELSE block
187 : LD   1, 1(5) ;  Load parameter 'selector' into R1
188 : LDC  3, 1(0) ;  Store left operand into temporary register
189 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
190 : LDC  2, 3(0) ;  Restore left operand
191 : SUB  1, 2, 1 ;  left - right for equality check
192 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
193 : LDC  1, 0(0) ;  false
194 : LDA  7, 1(7) ;  skip setting true
195 : LDC  1, 1(0) ;  true
196 : JEQ  1, 199(0) ;  If condition is false, jump to ELSE
197 : LD   1, 7(5) ;  Load parameter 'c' into R1
198 : LDA  7, 200(0) ;  Skip ELSE block
199 : LD   1, 8(5) ;  Load parameter 'd' into R1
200 : LDA  7, 394(0) ;  Skip ELSE block
201 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
202 : LDA  4, 6(5) ; Restore Callee frame base
203 : ST 1, 1(4) ;  Store argument 0 into callee frame
204 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
205 : LDA  4, 6(5) ; Restore Callee frame base
206 : ST 1, 2(4) ;  Store argument 1 into callee frame
207 : LD   1, 5(5) ;  Load parameter 'a' into R1
208 : LDC  3, 1(0) ;  Store left operand into temporary register
209 : LD   1, 7(5) ;  Load parameter 'c' into R1
210 : LDC  2, 3(0) ;  Restore left operand
211 : ADD  1, 2, 1 ;  R1 = left + right
212 : LDA  4, 6(5) ; Restore Callee frame base
213 : ST 1, 3(4) ;  Store argument 2 into callee frame
214 : LD   1, 6(5) ;  Load parameter 'b' into R1
215 : LDC  3, 1(0) ;  Store left operand into temporary register
216 : LD   1, 8(5) ;  Load parameter 'd' into R1
217 : LDC  2, 3(0) ;  Restore left operand
218 : ADD  1, 2, 1 ;  R1 = left + right
219 : LDA  4, 6(5) ; Restore Callee frame base
220 : ST 1, 4(4) ;  Store argument 3 into callee frame
221 : LDA  4, 6(5) ; Restore Call frame base
222 : LDA 6, 226(0) ;  Compute return address
223 : ST 6, 0(4) ;  Store return address in callee frame
224 : ADD  5, 4, 0 ;  Update pointer
225 : LDA 7, 111(0) ;  Call fractionEqual
226 : LD 1, 5(5) ;  Load callee return value into R1
227 : LDC  4, 6(0) ;  Load frame size
228 : SUB  5, 5, 4 ;  Restore pointer
229 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
230 : LD   1, 1(5) ;  Load parameter 'selector' into R1
231 : LDC  3, 1(0) ;  Store left operand into temporary register
232 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
233 : LDC  2, 3(0) ;  Restore left operand
234 : SUB  1, 2, 1 ;  left - right for equality check
235 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
236 : LDC  1, 0(0) ;  false
237 : LDA  7, 1(7) ;  skip setting true
238 : LDC  1, 1(0) ;  true
239 : JEQ  1, 246(0) ;  If condition is false, jump to ELSE
240 : LD   1, 5(5) ;  Load parameter 'a' into R1
241 : LDC  3, 1(0) ;  Store left operand into temporary register
242 : LD   1, 7(5) ;  Load parameter 'c' into R1
243 : LDC  2, 3(0) ;  Restore left operand
244 : ADD  1, 2, 1 ;  R1 = left + right
245 : LDA  7, 283(0) ;  Skip ELSE block
246 : LD   1, 1(5) ;  Load parameter 'selector' into R1
247 : LDC  3, 1(0) ;  Store left operand into temporary register
248 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
249 : LDC  2, 3(0) ;  Restore left operand
250 : SUB  1, 2, 1 ;  left - right for equality check
251 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
252 : LDC  1, 0(0) ;  false
253 : LDA  7, 1(7) ;  skip setting true
254 : LDC  1, 1(0) ;  true
255 : JEQ  1, 262(0) ;  If condition is false, jump to ELSE
256 : LD   1, 6(5) ;  Load parameter 'b' into R1
257 : LDC  3, 1(0) ;  Store left operand into temporary register
258 : LD   1, 8(5) ;  Load parameter 'd' into R1
259 : LDC  2, 3(0) ;  Restore left operand
260 : ADD  1, 2, 1 ;  R1 = left + right
261 : LDA  7, 283(0) ;  Skip ELSE block
262 : LD   1, 1(5) ;  Load parameter 'selector' into R1
263 : LDC  3, 1(0) ;  Store left operand into temporary register
264 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
265 : LDC  2, 3(0) ;  Restore left operand
266 : SUB  1, 2, 1 ;  left - right for equality check
267 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
268 : LDC  1, 0(0) ;  false
269 : LDA  7, 1(7) ;  skip setting true
270 : LDC  1, 1(0) ;  true
271 : JEQ  1, 278(0) ;  If condition is false, jump to ELSE
272 : LD   1, 5(5) ;  Load parameter 'a' into R1
273 : LDC  3, 1(0) ;  Store left operand into temporary register
274 : LD   1, 7(5) ;  Load parameter 'c' into R1
275 : LDC  2, 3(0) ;  Restore left operand
276 : ADD  1, 2, 1 ;  R1 = left + right
277 : LDA  7, 283(0) ;  Skip ELSE block
278 : LD   1, 6(5) ;  Load parameter 'b' into R1
279 : LDC  3, 1(0) ;  Store left operand into temporary register
280 : LD   1, 8(5) ;  Load parameter 'd' into R1
281 : LDC  2, 3(0) ;  Restore left operand
282 : ADD  1, 2, 1 ;  R1 = left + right
283 : LDA  7, 394(0) ;  Skip ELSE block
284 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
285 : LDA  4, 6(5) ; Restore Callee frame base
286 : ST 1, 1(4) ;  Store argument 0 into callee frame
287 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
288 : LDA  4, 6(5) ; Restore Callee frame base
289 : ST 1, 2(4) ;  Store argument 1 into callee frame
290 : LD   1, 5(5) ;  Load parameter 'a' into R1
291 : LDC  3, 1(0) ;  Store left operand into temporary register
292 : LD   1, 7(5) ;  Load parameter 'c' into R1
293 : LDC  2, 3(0) ;  Restore left operand
294 : ADD  1, 2, 1 ;  R1 = left + right
295 : LDA  4, 6(5) ; Restore Callee frame base
296 : ST 1, 3(4) ;  Store argument 2 into callee frame
297 : LD   1, 6(5) ;  Load parameter 'b' into R1
298 : LDC  3, 1(0) ;  Store left operand into temporary register
299 : LD   1, 8(5) ;  Load parameter 'd' into R1
300 : LDC  2, 3(0) ;  Restore left operand
301 : ADD  1, 2, 1 ;  R1 = left + right
302 : LDA  4, 6(5) ; Restore Callee frame base
303 : ST 1, 4(4) ;  Store argument 3 into callee frame
304 : LDA  4, 6(5) ; Restore Call frame base
305 : LDA 6, 309(0) ;  Compute return address
306 : ST 6, 0(4) ;  Store return address in callee frame
307 : ADD  5, 4, 0 ;  Update pointer
308 : LDA 7, 86(0) ;  Call fractionGreater
309 : LD 1, 5(5) ;  Load callee return value into R1
310 : LDC  4, 6(0) ;  Load frame size
311 : SUB  5, 5, 4 ;  Restore pointer
312 : JEQ  1, 354(0) ;  If condition is false, jump to ELSE
313 : LD   1, 1(5) ;  Load parameter 'selector' into R1
314 : LDA  4, 10(5) ; Restore Callee frame base
315 : ST 1, 1(4) ;  Store argument 0 into callee frame
316 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
317 : LDA  4, 10(5) ; Restore Callee frame base
318 : ST 1, 2(4) ;  Store argument 1 into callee frame
319 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
320 : LDA  4, 10(5) ; Restore Callee frame base
321 : ST 1, 3(4) ;  Store argument 2 into callee frame
322 : LD   1, 4(5) ;  Load parameter 'N' into R1
323 : LDA  4, 10(5) ; Restore Callee frame base
324 : ST 1, 4(4) ;  Store argument 3 into callee frame
325 : LD   1, 5(5) ;  Load parameter 'a' into R1
326 : LDC  3, 1(0) ;  Store left operand into temporary register
327 : LD   1, 7(5) ;  Load parameter 'c' into R1
328 : LDC  2, 3(0) ;  Restore left operand
329 : ADD  1, 2, 1 ;  R1 = left + right
330 : LDA  4, 10(5) ; Restore Callee frame base
331 : ST 1, 5(4) ;  Store argument 4 into callee frame
332 : LD   1, 6(5) ;  Load parameter 'b' into R1
333 : LDC  3, 1(0) ;  Store left operand into temporary register
334 : LD   1, 8(5) ;  Load parameter 'd' into R1
335 : LDC  2, 3(0) ;  Restore left operand
336 : ADD  1, 2, 1 ;  R1 = left + right
337 : LDA  4, 10(5) ; Restore Callee frame base
338 : ST 1, 6(4) ;  Store argument 5 into callee frame
339 : LD   1, 7(5) ;  Load parameter 'c' into R1
340 : LDA  4, 10(5) ; Restore Callee frame base
341 : ST 1, 7(4) ;  Store argument 6 into callee frame
342 : LD   1, 8(5) ;  Load parameter 'd' into R1
343 : LDA  4, 10(5) ; Restore Callee frame base
344 : ST 1, 8(4) ;  Store argument 7 into callee frame
345 : LDA  4, 10(5) ; Restore Call frame base
346 : LDA 6, 350(0) ;  Compute return address
347 : ST 6, 0(4) ;  Store return address in callee frame
348 : ADD  5, 4, 0 ;  Update pointer
349 : LDA 7, 131(0) ;  Call whileLoopFor
350 : LD 1, 9(5) ;  Load callee return value into R1
351 : LDC  4, 10(0) ;  Load frame size
352 : SUB  5, 5, 4 ;  Restore pointer
353 : LDA  7, 394(0) ;  Skip ELSE block
354 : LD   1, 1(5) ;  Load parameter 'selector' into R1
355 : LDA  4, 10(5) ; Restore Callee frame base
356 : ST 1, 1(4) ;  Store argument 0 into callee frame
357 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
358 : LDA  4, 10(5) ; Restore Callee frame base
359 : ST 1, 2(4) ;  Store argument 1 into callee frame
360 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
361 : LDA  4, 10(5) ; Restore Callee frame base
362 : ST 1, 3(4) ;  Store argument 2 into callee frame
363 : LD   1, 4(5) ;  Load parameter 'N' into R1
364 : LDA  4, 10(5) ; Restore Callee frame base
365 : ST 1, 4(4) ;  Store argument 3 into callee frame
366 : LD   1, 5(5) ;  Load parameter 'a' into R1
367 : LDA  4, 10(5) ; Restore Callee frame base
368 : ST 1, 5(4) ;  Store argument 4 into callee frame
369 : LD   1, 6(5) ;  Load parameter 'b' into R1
370 : LDA  4, 10(5) ; Restore Callee frame base
371 : ST 1, 6(4) ;  Store argument 5 into callee frame
372 : LD   1, 5(5) ;  Load parameter 'a' into R1
373 : LDC  3, 1(0) ;  Store left operand into temporary register
374 : LD   1, 7(5) ;  Load parameter 'c' into R1
375 : LDC  2, 3(0) ;  Restore left operand
376 : ADD  1, 2, 1 ;  R1 = left + right
377 : LDA  4, 10(5) ; Restore Callee frame base
378 : ST 1, 7(4) ;  Store argument 6 into callee frame
379 : LD   1, 6(5) ;  Load parameter 'b' into R1
380 : LDC  3, 1(0) ;  Store left operand into temporary register
381 : LD   1, 8(5) ;  Load parameter 'd' into R1
382 : LDC  2, 3(0) ;  Restore left operand
383 : ADD  1, 2, 1 ;  R1 = left + right
384 : LDA  4, 10(5) ; Restore Callee frame base
385 : ST 1, 8(4) ;  Store argument 7 into callee frame
386 : LDA  4, 10(5) ; Restore Call frame base
387 : LDA 6, 391(0) ;  Compute return address
388 : ST 6, 0(4) ;  Store return address in callee frame
389 : ADD  5, 4, 0 ;  Update pointer
390 : LDA 7, 131(0) ;  Call whileLoopFor
391 : LD 1, 9(5) ;  Load callee return value into R1
392 : LDC  4, 10(0) ;  Load frame size
393 : SUB  5, 5, 4 ;  Restore pointer
394 : ST   1, 9(5) ;  Store function result into stack frame
395 : LD   6, 0(5) ;  Load return address
396 : LDA  7, 0(6) ;  Return to caller
397 : LD   1, 3(5) ;  Load parameter 'b' into R1
398 : LDA  4, 4(5) ; Restore Callee frame base
399 : ST 1, 1(4) ;  Store argument 0 into callee frame
400 : LD   1, 1(5) ;  Load parameter 'N' into R1
401 : LDA  4, 4(5) ; Restore Callee frame base
402 : ST 1, 2(4) ;  Store argument 1 into callee frame
403 : LDA  4, 4(5) ; Restore Call frame base
404 : LDA 6, 408(0) ;  Compute return address
405 : ST 6, 0(4) ;  Store return address in callee frame
406 : ADD  5, 4, 0 ;  Update pointer
407 : LDA 7, 60(0) ;  Call greater
408 : LD 1, 3(5) ;  Load callee return value into R1
409 : LDC  4, 4(0) ;  Load frame size
410 : SUB  5, 5, 4 ;  Restore pointer
411 : JEQ  1, 414(0) ;  If condition is false, jump to ELSE
412 : LD   1, 5(5) ;  Load parameter 'd' into R1
413 : LDA  7, 415(0) ;  Skip ELSE block
414 : LD   1, 3(5) ;  Load parameter 'b' into R1
415 : ST   1, 6(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 3(5) ;  Load parameter 'b' into R1
419 : LDA  4, 4(5) ; Restore Callee frame base
420 : ST 1, 1(4) ;  Store argument 0 into callee frame
421 : LD   1, 1(5) ;  Load parameter 'N' into R1
422 : LDA  4, 4(5) ; Restore Callee frame base
423 : ST 1, 2(4) ;  Store argument 1 into callee frame
424 : LDA  4, 4(5) ; Restore Call frame base
425 : LDA 6, 429(0) ;  Compute return address
426 : ST 6, 0(4) ;  Store return address in callee frame
427 : ADD  5, 4, 0 ;  Update pointer
428 : LDA 7, 60(0) ;  Call greater
429 : LD 1, 3(5) ;  Load callee return value into R1
430 : LDC  4, 4(0) ;  Load frame size
431 : SUB  5, 5, 4 ;  Restore pointer
432 : JEQ  1, 435(0) ;  If condition is false, jump to ELSE
433 : LD   1, 4(5) ;  Load parameter 'c' into R1
434 : LDA  7, 436(0) ;  Skip ELSE block
435 : LD   1, 2(5) ;  Load parameter 'a' into R1
436 : ST   1, 6(5) ;  Store function result into stack frame
437 : LD   6, 0(5) ;  Load return address
438 : LDA  7, 0(6) ;  Return to caller
439 : LD   1, 3(5) ;  Load parameter 'N' into R1
440 : LDA  4, 7(5) ; Restore Callee frame base
441 : ST 1, 1(4) ;  Store argument 0 into callee frame
442 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
443 : LDA  4, 10(5) ; Restore Callee frame base
444 : ST 1, 1(4) ;  Store argument 0 into callee frame
445 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
446 : LDA  4, 10(5) ; Restore Callee frame base
447 : ST 1, 2(4) ;  Store argument 1 into callee frame
448 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
449 : LDA  4, 10(5) ; Restore Callee frame base
450 : ST 1, 3(4) ;  Store argument 2 into callee frame
451 : LD   1, 3(5) ;  Load parameter 'N' into R1
452 : LDA  4, 10(5) ; Restore Callee frame base
453 : ST 1, 4(4) ;  Store argument 3 into callee frame
454 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
455 : LDA  4, 10(5) ; Restore Callee frame base
456 : ST 1, 5(4) ;  Store argument 4 into callee frame
457 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
458 : LDA  4, 10(5) ; Restore Callee frame base
459 : ST 1, 6(4) ;  Store argument 5 into callee frame
460 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
461 : LDA  4, 10(5) ; Restore Callee frame base
462 : ST 1, 7(4) ;  Store argument 6 into callee frame
463 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
464 : LDA  4, 10(5) ; Restore Callee frame base
465 : ST 1, 8(4) ;  Store argument 7 into callee frame
466 : LDA  4, 10(5) ; Restore Call frame base
467 : LDA 6, 471(0) ;  Compute return address
468 : ST 6, 0(4) ;  Store return address in callee frame
469 : ADD  5, 4, 0 ;  Update pointer
470 : LDA 7, 131(0) ;  Call whileLoopFor
471 : LD 1, 9(5) ;  Load callee return value into R1
472 : LDC  4, 10(0) ;  Load frame size
473 : SUB  5, 5, 4 ;  Restore pointer
474 : LDA  4, 7(5) ; Restore Callee frame base
475 : ST 1, 2(4) ;  Store argument 1 into callee frame
476 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
477 : LDA  4, 10(5) ; Restore Callee frame base
478 : ST 1, 1(4) ;  Store argument 0 into callee frame
479 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
480 : LDA  4, 10(5) ; Restore Callee frame base
481 : ST 1, 2(4) ;  Store argument 1 into callee frame
482 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
483 : LDA  4, 10(5) ; Restore Callee frame base
484 : ST 1, 3(4) ;  Store argument 2 into callee frame
485 : LD   1, 3(5) ;  Load parameter 'N' into R1
486 : LDA  4, 10(5) ; Restore Callee frame base
487 : ST 1, 4(4) ;  Store argument 3 into callee frame
488 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
489 : LDA  4, 10(5) ; Restore Callee frame base
490 : ST 1, 5(4) ;  Store argument 4 into callee frame
491 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
492 : LDA  4, 10(5) ; Restore Callee frame base
493 : ST 1, 6(4) ;  Store argument 5 into callee frame
494 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
495 : LDA  4, 10(5) ; Restore Callee frame base
496 : ST 1, 7(4) ;  Store argument 6 into callee frame
497 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
498 : LDA  4, 10(5) ; Restore Callee frame base
499 : ST 1, 8(4) ;  Store argument 7 into callee frame
500 : LDA  4, 10(5) ; Restore Call frame base
501 : LDA 6, 505(0) ;  Compute return address
502 : ST 6, 0(4) ;  Store return address in callee frame
503 : ADD  5, 4, 0 ;  Update pointer
504 : LDA 7, 131(0) ;  Call whileLoopFor
505 : LD 1, 9(5) ;  Load callee return value into R1
506 : LDC  4, 10(0) ;  Load frame size
507 : SUB  5, 5, 4 ;  Restore pointer
508 : LDA  4, 7(5) ; Restore Callee frame base
509 : ST 1, 3(4) ;  Store argument 2 into callee frame
510 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
511 : LDA  4, 10(5) ; Restore Callee frame base
512 : ST 1, 1(4) ;  Store argument 0 into callee frame
513 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
514 : LDA  4, 10(5) ; Restore Callee frame base
515 : ST 1, 2(4) ;  Store argument 1 into callee frame
516 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
517 : LDA  4, 10(5) ; Restore Callee frame base
518 : ST 1, 3(4) ;  Store argument 2 into callee frame
519 : LD   1, 3(5) ;  Load parameter 'N' into R1
520 : LDA  4, 10(5) ; Restore Callee frame base
521 : ST 1, 4(4) ;  Store argument 3 into callee frame
522 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
523 : LDA  4, 10(5) ; Restore Callee frame base
524 : ST 1, 5(4) ;  Store argument 4 into callee frame
525 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
526 : LDA  4, 10(5) ; Restore Callee frame base
527 : ST 1, 6(4) ;  Store argument 5 into callee frame
528 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
529 : LDA  4, 10(5) ; Restore Callee frame base
530 : ST 1, 7(4) ;  Store argument 6 into callee frame
531 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
532 : LDA  4, 10(5) ; Restore Callee frame base
533 : ST 1, 8(4) ;  Store argument 7 into callee frame
534 : LDA  4, 10(5) ; Restore Call frame base
535 : LDA 6, 539(0) ;  Compute return address
536 : ST 6, 0(4) ;  Store return address in callee frame
537 : ADD  5, 4, 0 ;  Update pointer
538 : LDA 7, 131(0) ;  Call whileLoopFor
539 : LD 1, 9(5) ;  Load callee return value into R1
540 : LDC  4, 10(0) ;  Load frame size
541 : SUB  5, 5, 4 ;  Restore pointer
542 : LDA  4, 7(5) ; Restore Callee frame base
543 : ST 1, 4(4) ;  Store argument 3 into callee frame
544 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
545 : LDA  4, 10(5) ; Restore Callee frame base
546 : ST 1, 1(4) ;  Store argument 0 into callee frame
547 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
548 : LDA  4, 10(5) ; Restore Callee frame base
549 : ST 1, 2(4) ;  Store argument 1 into callee frame
550 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
551 : LDA  4, 10(5) ; Restore Callee frame base
552 : ST 1, 3(4) ;  Store argument 2 into callee frame
553 : LD   1, 3(5) ;  Load parameter 'N' into R1
554 : LDA  4, 10(5) ; Restore Callee frame base
555 : ST 1, 4(4) ;  Store argument 3 into callee frame
556 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
557 : LDA  4, 10(5) ; Restore Callee frame base
558 : ST 1, 5(4) ;  Store argument 4 into callee frame
559 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
560 : LDA  4, 10(5) ; Restore Callee frame base
561 : ST 1, 6(4) ;  Store argument 5 into callee frame
562 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
563 : LDA  4, 10(5) ; Restore Callee frame base
564 : ST 1, 7(4) ;  Store argument 6 into callee frame
565 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
566 : LDA  4, 10(5) ; Restore Callee frame base
567 : ST 1, 8(4) ;  Store argument 7 into callee frame
568 : LDA  4, 10(5) ; Restore Call frame base
569 : LDA 6, 573(0) ;  Compute return address
570 : ST 6, 0(4) ;  Store return address in callee frame
571 : ADD  5, 4, 0 ;  Update pointer
572 : LDA 7, 131(0) ;  Call whileLoopFor
573 : LD 1, 9(5) ;  Load callee return value into R1
574 : LDC  4, 10(0) ;  Load frame size
575 : SUB  5, 5, 4 ;  Restore pointer
576 : LDA  4, 7(5) ; Restore Callee frame base
577 : ST 1, 5(4) ;  Store argument 4 into callee frame
578 : LDA  4, 7(5) ; Restore Call frame base
579 : LDA 6, 583(0) ;  Compute return address
580 : ST 6, 0(4) ;  Store return address in callee frame
581 : ADD  5, 4, 0 ;  Update pointer
582 : LDA 7, 397(0) ;  Call fareySelectDen
583 : LD 1, 6(5) ;  Load callee return value into R1
584 : LDC  4, 7(0) ;  Load frame size
585 : SUB  5, 5, 4 ;  Restore pointer
586 : ST   1, 4(5) ;  Store function result into stack frame
587 : LD   6, 0(5) ;  Load return address
588 : LDA  7, 0(6) ;  Return to caller
589 : LD   1, 3(5) ;  Load parameter 'N' into R1
590 : LDA  4, 7(5) ; Restore Callee frame base
591 : ST 1, 1(4) ;  Store argument 0 into callee frame
592 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
593 : LDA  4, 10(5) ; Restore Callee frame base
594 : ST 1, 1(4) ;  Store argument 0 into callee frame
595 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
596 : LDA  4, 10(5) ; Restore Callee frame base
597 : ST 1, 2(4) ;  Store argument 1 into callee frame
598 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
599 : LDA  4, 10(5) ; Restore Callee frame base
600 : ST 1, 3(4) ;  Store argument 2 into callee frame
601 : LD   1, 3(5) ;  Load parameter 'N' into R1
602 : LDA  4, 10(5) ; Restore Callee frame base
603 : ST 1, 4(4) ;  Store argument 3 into callee frame
604 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
605 : LDA  4, 10(5) ; Restore Callee frame base
606 : ST 1, 5(4) ;  Store argument 4 into callee frame
607 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
608 : LDA  4, 10(5) ; Restore Callee frame base
609 : ST 1, 6(4) ;  Store argument 5 into callee frame
610 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
611 : LDA  4, 10(5) ; Restore Callee frame base
612 : ST 1, 7(4) ;  Store argument 6 into callee frame
613 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
614 : LDA  4, 10(5) ; Restore Callee frame base
615 : ST 1, 8(4) ;  Store argument 7 into callee frame
616 : LDA  4, 10(5) ; Restore Call frame base
617 : LDA 6, 621(0) ;  Compute return address
618 : ST 6, 0(4) ;  Store return address in callee frame
619 : ADD  5, 4, 0 ;  Update pointer
620 : LDA 7, 131(0) ;  Call whileLoopFor
621 : LD 1, 9(5) ;  Load callee return value into R1
622 : LDC  4, 10(0) ;  Load frame size
623 : SUB  5, 5, 4 ;  Restore pointer
624 : LDA  4, 7(5) ; Restore Callee frame base
625 : ST 1, 2(4) ;  Store argument 1 into callee frame
626 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
627 : LDA  4, 10(5) ; Restore Callee frame base
628 : ST 1, 1(4) ;  Store argument 0 into callee frame
629 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
630 : LDA  4, 10(5) ; Restore Callee frame base
631 : ST 1, 2(4) ;  Store argument 1 into callee frame
632 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
633 : LDA  4, 10(5) ; Restore Callee frame base
634 : ST 1, 3(4) ;  Store argument 2 into callee frame
635 : LD   1, 3(5) ;  Load parameter 'N' into R1
636 : LDA  4, 10(5) ; Restore Callee frame base
637 : ST 1, 4(4) ;  Store argument 3 into callee frame
638 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
639 : LDA  4, 10(5) ; Restore Callee frame base
640 : ST 1, 5(4) ;  Store argument 4 into callee frame
641 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
642 : LDA  4, 10(5) ; Restore Callee frame base
643 : ST 1, 6(4) ;  Store argument 5 into callee frame
644 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
645 : LDA  4, 10(5) ; Restore Callee frame base
646 : ST 1, 7(4) ;  Store argument 6 into callee frame
647 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
648 : LDA  4, 10(5) ; Restore Callee frame base
649 : ST 1, 8(4) ;  Store argument 7 into callee frame
650 : LDA  4, 10(5) ; Restore Call frame base
651 : LDA 6, 655(0) ;  Compute return address
652 : ST 6, 0(4) ;  Store return address in callee frame
653 : ADD  5, 4, 0 ;  Update pointer
654 : LDA 7, 131(0) ;  Call whileLoopFor
655 : LD 1, 9(5) ;  Load callee return value into R1
656 : LDC  4, 10(0) ;  Load frame size
657 : SUB  5, 5, 4 ;  Restore pointer
658 : LDA  4, 7(5) ; Restore Callee frame base
659 : ST 1, 3(4) ;  Store argument 2 into callee frame
660 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
661 : LDA  4, 10(5) ; Restore Callee frame base
662 : ST 1, 1(4) ;  Store argument 0 into callee frame
663 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
664 : LDA  4, 10(5) ; Restore Callee frame base
665 : ST 1, 2(4) ;  Store argument 1 into callee frame
666 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
667 : LDA  4, 10(5) ; Restore Callee frame base
668 : ST 1, 3(4) ;  Store argument 2 into callee frame
669 : LD   1, 3(5) ;  Load parameter 'N' into R1
670 : LDA  4, 10(5) ; Restore Callee frame base
671 : ST 1, 4(4) ;  Store argument 3 into callee frame
672 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
673 : LDA  4, 10(5) ; Restore Callee frame base
674 : ST 1, 5(4) ;  Store argument 4 into callee frame
675 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
676 : LDA  4, 10(5) ; Restore Callee frame base
677 : ST 1, 6(4) ;  Store argument 5 into callee frame
678 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
679 : LDA  4, 10(5) ; Restore Callee frame base
680 : ST 1, 7(4) ;  Store argument 6 into callee frame
681 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
682 : LDA  4, 10(5) ; Restore Callee frame base
683 : ST 1, 8(4) ;  Store argument 7 into callee frame
684 : LDA  4, 10(5) ; Restore Call frame base
685 : LDA 6, 689(0) ;  Compute return address
686 : ST 6, 0(4) ;  Store return address in callee frame
687 : ADD  5, 4, 0 ;  Update pointer
688 : LDA 7, 131(0) ;  Call whileLoopFor
689 : LD 1, 9(5) ;  Load callee return value into R1
690 : LDC  4, 10(0) ;  Load frame size
691 : SUB  5, 5, 4 ;  Restore pointer
692 : LDA  4, 7(5) ; Restore Callee frame base
693 : ST 1, 4(4) ;  Store argument 3 into callee frame
694 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
695 : LDA  4, 10(5) ; Restore Callee frame base
696 : ST 1, 1(4) ;  Store argument 0 into callee frame
697 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
698 : LDA  4, 10(5) ; Restore Callee frame base
699 : ST 1, 2(4) ;  Store argument 1 into callee frame
700 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
701 : LDA  4, 10(5) ; Restore Callee frame base
702 : ST 1, 3(4) ;  Store argument 2 into callee frame
703 : LD   1, 3(5) ;  Load parameter 'N' into R1
704 : LDA  4, 10(5) ; Restore Callee frame base
705 : ST 1, 4(4) ;  Store argument 3 into callee frame
706 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
707 : LDA  4, 10(5) ; Restore Callee frame base
708 : ST 1, 5(4) ;  Store argument 4 into callee frame
709 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
710 : LDA  4, 10(5) ; Restore Callee frame base
711 : ST 1, 6(4) ;  Store argument 5 into callee frame
712 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
713 : LDA  4, 10(5) ; Restore Callee frame base
714 : ST 1, 7(4) ;  Store argument 6 into callee frame
715 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
716 : LDA  4, 10(5) ; Restore Callee frame base
717 : ST 1, 8(4) ;  Store argument 7 into callee frame
718 : LDA  4, 10(5) ; Restore Call frame base
719 : LDA 6, 723(0) ;  Compute return address
720 : ST 6, 0(4) ;  Store return address in callee frame
721 : ADD  5, 4, 0 ;  Update pointer
722 : LDA 7, 131(0) ;  Call whileLoopFor
723 : LD 1, 9(5) ;  Load callee return value into R1
724 : LDC  4, 10(0) ;  Load frame size
725 : SUB  5, 5, 4 ;  Restore pointer
726 : LDA  4, 7(5) ; Restore Callee frame base
727 : ST 1, 5(4) ;  Store argument 4 into callee frame
728 : LDA  4, 7(5) ; Restore Call frame base
729 : LDA 6, 733(0) ;  Compute return address
730 : ST 6, 0(4) ;  Store return address in callee frame
731 : ADD  5, 4, 0 ;  Update pointer
732 : LDA 7, 418(0) ;  Call fareySelectNum
733 : LD 1, 6(5) ;  Load callee return value into R1
734 : LDC  4, 7(0) ;  Load frame size
735 : SUB  5, 5, 4 ;  Restore pointer
736 : ST   1, 4(5) ;  Store function result into stack frame
737 : LD   6, 0(5) ;  Load return address
738 : LDA  7, 0(6) ;  Return to caller
