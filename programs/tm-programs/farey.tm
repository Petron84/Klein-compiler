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
15 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'fareyNum'
16 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
17 : ST 1, 1(3) ;  Store argument 0 into callee frame
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : ST 1, 2(3) ;  Store argument 1 into callee frame
20 : LD   1, 3(5) ;  Load parameter 'N' into R1
21 : ST 1, 3(3) ;  Store argument 2 into callee frame
22 : LDA 6, 26(0)) ;  Compute return address
23 : ST 6, 0(3) ;  Store return address in callee frame
24 : ADD  5, 3, 0 ;  Update pointer
25 : LDA 7, 485(0) ;  Call fareyNum
26 : LD 1, 4(5) ;  Load callee return value into R1
27 : LDC  4, 5(0) ;  Load frame size
28 : SUB  5, 5, 4 ;  Restore pointer
29 : LDA  3, 5(5) ;  Update DMEM pointer
30 : LDA 6, 34(0) ;  Compute return address
31 : ST   6, 0(3) ;  Store return address
32 : ADD  5, 3, 0 ;  Updated Pointer
33 : LDA  7, 12(0) ; Call print
34 : LDC  4, 5(0) ;  Load frame size
35 : SUB  5, 5, 4 ;  Restore pointer
36 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'fareyDen'
37 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
38 : ST 1, 1(3) ;  Store argument 0 into callee frame
39 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
40 : ST 1, 2(3) ;  Store argument 1 into callee frame
41 : LD   1, 3(5) ;  Load parameter 'N' into R1
42 : ST 1, 3(3) ;  Store argument 2 into callee frame
43 : LDA 6, 47(0)) ;  Compute return address
44 : ST 6, 0(3) ;  Store return address in callee frame
45 : ADD  5, 3, 0 ;  Update pointer
46 : LDA 7, 372(0) ;  Call fareyDen
47 : LD 1, 4(5) ;  Load callee return value into R1
48 : LDC  4, 5(0) ;  Load frame size
49 : SUB  5, 5, 4 ;  Restore pointer
50 : ST 1, 8(0) ;  Store function-call result into caller's return slot
51 : LD   1, 8(0) ;  Load return value into register 1
52 : LD  6, 4(0) ;  Load return address for main function into register 6
53 : LDA  7, 0(6) ;  Jump to return address of main function
54 : LD   1, 1(5) ;  Load parameter 'x' into R1
55 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
56 : LD   1, 2(5) ;  Load parameter 'y' into R1
57 : SUB  1, 2, 1 ;  left - right for less-than check
58 : JLT  1, 2(7) ;  If R1 < 0, jump to true
59 : LDC  1, 0(0) ;  false
60 : LDA  7, 1(7) ;  skip setting true
61 : LDC  1, 1(0) ;  true
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 1(5) ;  Load parameter 'x' into R1
64 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
65 : LD   1, 2(5) ;  Load parameter 'y' into R1
66 : SUB  1, 2, 1 ;  left - right for equality check
67 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
68 : LDC  1, 0(0) ;  false
69 : LDA  7, 1(7) ;  skip setting true
70 : LDC  1, 1(0) ;  true
71 : ADD  1, 2, 1 ;  R1 = left OR right
72 : LDC  2, 1(0) ;  Load 1 into R2
73 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
74 : ST   1, 3(5) ;  Store function result into stack frame
75 : LD   6, 0(5) ;  Load return address
76 : LDA  7, 0(6) ;  Return to caller
77 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'greater'
78 : LD   1, 1(5) ;  Load parameter 'x' into R1
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LD   1, 4(5) ;  Load parameter 'yd' into R1
81 : MUL  1, 2, 1 ;  R1 = left * right
82 : ST 1, 1(3) ;  Store argument 0 into callee frame
83 : LD   1, 3(5) ;  Load parameter 'y' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LD   1, 2(5) ;  Load parameter 'xd' into R1
86 : MUL  1, 2, 1 ;  R1 = left * right
87 : ST 1, 2(3) ;  Store argument 1 into callee frame
88 : LDA 6, 92(0)) ;  Compute return address
89 : ST 6, 0(3) ;  Store return address in callee frame
90 : ADD  5, 3, 0 ;  Update pointer
91 : LDA 7, 54(0) ;  Call greater
92 : LD 1, 3(5) ;  Load callee return value into R1
93 : LDC  4, 6(0) ;  Load frame size
94 : SUB  5, 5, 4 ;  Restore pointer
95 : ST   1, 5(5) ;  Store function result into stack frame
96 : LD   6, 0(5) ;  Load return address
97 : LDA  7, 0(6) ;  Return to caller
98 : LD   1, 1(5) ;  Load parameter 'x' into R1
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LD   1, 4(5) ;  Load parameter 'yd' into R1
101 : MUL  1, 2, 1 ;  R1 = left * right
102 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
103 : LD   1, 3(5) ;  Load parameter 'y' into R1
104 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
105 : LD   1, 2(5) ;  Load parameter 'xd' into R1
106 : MUL  1, 2, 1 ;  R1 = left * right
107 : SUB  1, 2, 1 ;  left - right for equality check
108 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
109 : LDC  1, 0(0) ;  false
110 : LDA  7, 1(7) ;  skip setting true
111 : LDC  1, 1(0) ;  true
112 : ST   1, 5(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
115 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'greater'
116 : LD   1, 6(5) ;  Load parameter 'b' into R1
117 : ST 1, 1(3) ;  Store argument 0 into callee frame
118 : LD   1, 4(5) ;  Load parameter 'N' into R1
119 : ST 1, 2(3) ;  Store argument 1 into callee frame
120 : LDA 6, 124(0)) ;  Compute return address
121 : ST 6, 0(3) ;  Store return address in callee frame
122 : ADD  5, 3, 0 ;  Update pointer
123 : LDA 7, 54(0) ;  Call greater
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDC  4, 10(0) ;  Load frame size
126 : SUB  5, 5, 4 ;  Restore pointer
127 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
128 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'greater'
129 : LD   1, 8(5) ;  Load parameter 'd' into R1
130 : ST 1, 1(3) ;  Store argument 0 into callee frame
131 : LD   1, 4(5) ;  Load parameter 'N' into R1
132 : ST 1, 2(3) ;  Store argument 1 into callee frame
133 : LDA 6, 137(0)) ;  Compute return address
134 : ST 6, 0(3) ;  Store return address in callee frame
135 : ADD  5, 3, 0 ;  Update pointer
136 : LDA 7, 54(0) ;  Call greater
137 : LD 1, 3(5) ;  Load callee return value into R1
138 : LDC  4, 10(0) ;  Load frame size
139 : SUB  5, 5, 4 ;  Restore pointer
140 : ADD  1, 2, 1 ;  R1 = left OR right
141 : JEQ  1, 177(0) ;  If condition is false, jump to ELSE
142 : LD   1, 1(5) ;  Load parameter 'selector' into R1
143 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
144 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
145 : SUB  1, 2, 1 ;  left - right for equality check
146 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
147 : LDC  1, 0(0) ;  false
148 : LDA  7, 1(7) ;  skip setting true
149 : LDC  1, 1(0) ;  true
150 : JEQ  1, 153(0) ;  If condition is false, jump to ELSE
151 : LD   1, 5(5) ;  Load parameter 'a' into R1
152 : LDA  7, 176(0) ;  Skip ELSE block
153 : LD   1, 1(5) ;  Load parameter 'selector' into R1
154 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
155 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
156 : SUB  1, 2, 1 ;  left - right for equality check
157 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
158 : LDC  1, 0(0) ;  false
159 : LDA  7, 1(7) ;  skip setting true
160 : LDC  1, 1(0) ;  true
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 6(5) ;  Load parameter 'b' into R1
163 : LDA  7, 176(0) ;  Skip ELSE block
164 : LD   1, 1(5) ;  Load parameter 'selector' into R1
165 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
166 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 7(5) ;  Load parameter 'c' into R1
174 : LDA  7, 176(0) ;  Skip ELSE block
175 : LD   1, 8(5) ;  Load parameter 'd' into R1
176 : LDA  7, 331(0) ;  Skip ELSE block
177 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'fractionEqual'
178 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
179 : ST 1, 1(3) ;  Store argument 0 into callee frame
180 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
181 : ST 1, 2(3) ;  Store argument 1 into callee frame
182 : LD   1, 5(5) ;  Load parameter 'a' into R1
183 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
184 : LD   1, 7(5) ;  Load parameter 'c' into R1
185 : ADD  1, 2, 1 ;  R1 = left + right
186 : ST 1, 3(3) ;  Store argument 2 into callee frame
187 : LD   1, 6(5) ;  Load parameter 'b' into R1
188 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
189 : LD   1, 8(5) ;  Load parameter 'd' into R1
190 : ADD  1, 2, 1 ;  R1 = left + right
191 : ST 1, 4(3) ;  Store argument 3 into callee frame
192 : LDA 6, 196(0)) ;  Compute return address
193 : ST 6, 0(3) ;  Store return address in callee frame
194 : ADD  5, 3, 0 ;  Update pointer
195 : LDA 7, 98(0) ;  Call fractionEqual
196 : LD 1, 5(5) ;  Load callee return value into R1
197 : LDC  4, 10(0) ;  Load frame size
198 : SUB  5, 5, 4 ;  Restore pointer
199 : JEQ  1, 247(0) ;  If condition is false, jump to ELSE
200 : LD   1, 1(5) ;  Load parameter 'selector' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
203 : SUB  1, 2, 1 ;  left - right for equality check
204 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
205 : LDC  1, 0(0) ;  false
206 : LDA  7, 1(7) ;  skip setting true
207 : LDC  1, 1(0) ;  true
208 : JEQ  1, 214(0) ;  If condition is false, jump to ELSE
209 : LD   1, 5(5) ;  Load parameter 'a' into R1
210 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
211 : LD   1, 7(5) ;  Load parameter 'c' into R1
212 : ADD  1, 2, 1 ;  R1 = left + right
213 : LDA  7, 246(0) ;  Skip ELSE block
214 : LD   1, 1(5) ;  Load parameter 'selector' into R1
215 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
216 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
217 : SUB  1, 2, 1 ;  left - right for equality check
218 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
219 : LDC  1, 0(0) ;  false
220 : LDA  7, 1(7) ;  skip setting true
221 : LDC  1, 1(0) ;  true
222 : JEQ  1, 228(0) ;  If condition is false, jump to ELSE
223 : LD   1, 6(5) ;  Load parameter 'b' into R1
224 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
225 : LD   1, 8(5) ;  Load parameter 'd' into R1
226 : ADD  1, 2, 1 ;  R1 = left + right
227 : LDA  7, 246(0) ;  Skip ELSE block
228 : LD   1, 1(5) ;  Load parameter 'selector' into R1
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
231 : SUB  1, 2, 1 ;  left - right for equality check
232 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
233 : LDC  1, 0(0) ;  false
234 : LDA  7, 1(7) ;  skip setting true
235 : LDC  1, 1(0) ;  true
236 : JEQ  1, 242(0) ;  If condition is false, jump to ELSE
237 : LD   1, 5(5) ;  Load parameter 'a' into R1
238 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
239 : LD   1, 7(5) ;  Load parameter 'c' into R1
240 : ADD  1, 2, 1 ;  R1 = left + right
241 : LDA  7, 246(0) ;  Skip ELSE block
242 : LD   1, 6(5) ;  Load parameter 'b' into R1
243 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
244 : LD   1, 8(5) ;  Load parameter 'd' into R1
245 : ADD  1, 2, 1 ;  R1 = left + right
246 : LDA  7, 331(0) ;  Skip ELSE block
247 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'fractionGreater'
248 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
249 : ST 1, 1(3) ;  Store argument 0 into callee frame
250 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
251 : ST 1, 2(3) ;  Store argument 1 into callee frame
252 : LD   1, 5(5) ;  Load parameter 'a' into R1
253 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
254 : LD   1, 7(5) ;  Load parameter 'c' into R1
255 : ADD  1, 2, 1 ;  R1 = left + right
256 : ST 1, 3(3) ;  Store argument 2 into callee frame
257 : LD   1, 6(5) ;  Load parameter 'b' into R1
258 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
259 : LD   1, 8(5) ;  Load parameter 'd' into R1
260 : ADD  1, 2, 1 ;  R1 = left + right
261 : ST 1, 4(3) ;  Store argument 3 into callee frame
262 : LDA 6, 266(0)) ;  Compute return address
263 : ST 6, 0(3) ;  Store return address in callee frame
264 : ADD  5, 3, 0 ;  Update pointer
265 : LDA 7, 77(0) ;  Call fractionGreater
266 : LD 1, 5(5) ;  Load callee return value into R1
267 : LDC  4, 10(0) ;  Load frame size
268 : SUB  5, 5, 4 ;  Restore pointer
269 : JEQ  1, 301(0) ;  If condition is false, jump to ELSE
270 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
271 : LD   1, 1(5) ;  Load parameter 'selector' into R1
272 : ST 1, 1(3) ;  Store argument 0 into callee frame
273 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
274 : ST 1, 2(3) ;  Store argument 1 into callee frame
275 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
276 : ST 1, 3(3) ;  Store argument 2 into callee frame
277 : LD   1, 4(5) ;  Load parameter 'N' into R1
278 : ST 1, 4(3) ;  Store argument 3 into callee frame
279 : LD   1, 5(5) ;  Load parameter 'a' into R1
280 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
281 : LD   1, 7(5) ;  Load parameter 'c' into R1
282 : ADD  1, 2, 1 ;  R1 = left + right
283 : ST 1, 5(3) ;  Store argument 4 into callee frame
284 : LD   1, 6(5) ;  Load parameter 'b' into R1
285 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
286 : LD   1, 8(5) ;  Load parameter 'd' into R1
287 : ADD  1, 2, 1 ;  R1 = left + right
288 : ST 1, 6(3) ;  Store argument 5 into callee frame
289 : LD   1, 7(5) ;  Load parameter 'c' into R1
290 : ST 1, 7(3) ;  Store argument 6 into callee frame
291 : LD   1, 8(5) ;  Load parameter 'd' into R1
292 : ST 1, 8(3) ;  Store argument 7 into callee frame
293 : LDA 6, 297(0)) ;  Compute return address
294 : ST 6, 0(3) ;  Store return address in callee frame
295 : ADD  5, 3, 0 ;  Update pointer
296 : LDA 7, 115(0) ;  Call whileLoopFor
297 : LD 1, 9(5) ;  Load callee return value into R1
298 : LDC  4, 10(0) ;  Load frame size
299 : SUB  5, 5, 4 ;  Restore pointer
300 : LDA  7, 331(0) ;  Skip ELSE block
301 : LDA 3, 10(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
302 : LD   1, 1(5) ;  Load parameter 'selector' into R1
303 : ST 1, 1(3) ;  Store argument 0 into callee frame
304 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
305 : ST 1, 2(3) ;  Store argument 1 into callee frame
306 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
307 : ST 1, 3(3) ;  Store argument 2 into callee frame
308 : LD   1, 4(5) ;  Load parameter 'N' into R1
309 : ST 1, 4(3) ;  Store argument 3 into callee frame
310 : LD   1, 5(5) ;  Load parameter 'a' into R1
311 : ST 1, 5(3) ;  Store argument 4 into callee frame
312 : LD   1, 6(5) ;  Load parameter 'b' into R1
313 : ST 1, 6(3) ;  Store argument 5 into callee frame
314 : LD   1, 5(5) ;  Load parameter 'a' into R1
315 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
316 : LD   1, 7(5) ;  Load parameter 'c' into R1
317 : ADD  1, 2, 1 ;  R1 = left + right
318 : ST 1, 7(3) ;  Store argument 6 into callee frame
319 : LD   1, 6(5) ;  Load parameter 'b' into R1
320 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
321 : LD   1, 8(5) ;  Load parameter 'd' into R1
322 : ADD  1, 2, 1 ;  R1 = left + right
323 : ST 1, 8(3) ;  Store argument 7 into callee frame
324 : LDA 6, 328(0)) ;  Compute return address
325 : ST 6, 0(3) ;  Store return address in callee frame
326 : ADD  5, 3, 0 ;  Update pointer
327 : LDA 7, 115(0) ;  Call whileLoopFor
328 : LD 1, 9(5) ;  Load callee return value into R1
329 : LDC  4, 10(0) ;  Load frame size
330 : SUB  5, 5, 4 ;  Restore pointer
331 : ST   1, 9(5) ;  Store function result into stack frame
332 : LD   6, 0(5) ;  Load return address
333 : LDA  7, 0(6) ;  Return to caller
334 : LDA 3, 7(5) ;  Advance DMEM pointer to callee frame 'greater'
335 : LD   1, 3(5) ;  Load parameter 'b' into R1
336 : ST 1, 1(3) ;  Store argument 0 into callee frame
337 : LD   1, 1(5) ;  Load parameter 'N' into R1
338 : ST 1, 2(3) ;  Store argument 1 into callee frame
339 : LDA 6, 343(0)) ;  Compute return address
340 : ST 6, 0(3) ;  Store return address in callee frame
341 : ADD  5, 3, 0 ;  Update pointer
342 : LDA 7, 54(0) ;  Call greater
343 : LD 1, 3(5) ;  Load callee return value into R1
344 : LDC  4, 7(0) ;  Load frame size
345 : SUB  5, 5, 4 ;  Restore pointer
346 : JEQ  1, 349(0) ;  If condition is false, jump to ELSE
347 : LD   1, 5(5) ;  Load parameter 'd' into R1
348 : LDA  7, 350(0) ;  Skip ELSE block
349 : LD   1, 3(5) ;  Load parameter 'b' into R1
350 : ST   1, 6(5) ;  Store function result into stack frame
351 : LD   6, 0(5) ;  Load return address
352 : LDA  7, 0(6) ;  Return to caller
353 : LDA 3, 7(5) ;  Advance DMEM pointer to callee frame 'greater'
354 : LD   1, 3(5) ;  Load parameter 'b' into R1
355 : ST 1, 1(3) ;  Store argument 0 into callee frame
356 : LD   1, 1(5) ;  Load parameter 'N' into R1
357 : ST 1, 2(3) ;  Store argument 1 into callee frame
358 : LDA 6, 362(0)) ;  Compute return address
359 : ST 6, 0(3) ;  Store return address in callee frame
360 : ADD  5, 3, 0 ;  Update pointer
361 : LDA 7, 54(0) ;  Call greater
362 : LD 1, 3(5) ;  Load callee return value into R1
363 : LDC  4, 7(0) ;  Load frame size
364 : SUB  5, 5, 4 ;  Restore pointer
365 : JEQ  1, 368(0) ;  If condition is false, jump to ELSE
366 : LD   1, 4(5) ;  Load parameter 'c' into R1
367 : LDA  7, 369(0) ;  Skip ELSE block
368 : LD   1, 2(5) ;  Load parameter 'a' into R1
369 : ST   1, 6(5) ;  Store function result into stack frame
370 : LD   6, 0(5) ;  Load return address
371 : LDA  7, 0(6) ;  Return to caller
372 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'fareySelectDen'
373 : LD   1, 3(5) ;  Load parameter 'N' into R1
374 : ST 1, 1(3) ;  Store argument 0 into callee frame
375 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
376 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
377 : ST 1, 1(3) ;  Store argument 0 into callee frame
378 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
379 : ST 1, 2(3) ;  Store argument 1 into callee frame
380 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
381 : ST 1, 3(3) ;  Store argument 2 into callee frame
382 : LD   1, 3(5) ;  Load parameter 'N' into R1
383 : ST 1, 4(3) ;  Store argument 3 into callee frame
384 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
385 : ST 1, 5(3) ;  Store argument 4 into callee frame
386 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
387 : ST 1, 6(3) ;  Store argument 5 into callee frame
388 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
389 : ST 1, 7(3) ;  Store argument 6 into callee frame
390 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
391 : ST 1, 8(3) ;  Store argument 7 into callee frame
392 : LDA 6, 396(0)) ;  Compute return address
393 : ST 6, 0(3) ;  Store return address in callee frame
394 : ADD  5, 3, 0 ;  Update pointer
395 : LDA 7, 115(0) ;  Call whileLoopFor
396 : LD 1, 9(5) ;  Load callee return value into R1
397 : LDC  4, 5(0) ;  Load frame size
398 : SUB  5, 5, 4 ;  Restore pointer
399 : ST 1, 2(3) ;  Store argument 1 into callee frame
400 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
401 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
402 : ST 1, 1(3) ;  Store argument 0 into callee frame
403 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
404 : ST 1, 2(3) ;  Store argument 1 into callee frame
405 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
406 : ST 1, 3(3) ;  Store argument 2 into callee frame
407 : LD   1, 3(5) ;  Load parameter 'N' into R1
408 : ST 1, 4(3) ;  Store argument 3 into callee frame
409 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
410 : ST 1, 5(3) ;  Store argument 4 into callee frame
411 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
412 : ST 1, 6(3) ;  Store argument 5 into callee frame
413 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
414 : ST 1, 7(3) ;  Store argument 6 into callee frame
415 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
416 : ST 1, 8(3) ;  Store argument 7 into callee frame
417 : LDA 6, 421(0)) ;  Compute return address
418 : ST 6, 0(3) ;  Store return address in callee frame
419 : ADD  5, 3, 0 ;  Update pointer
420 : LDA 7, 115(0) ;  Call whileLoopFor
421 : LD 1, 9(5) ;  Load callee return value into R1
422 : LDC  4, 5(0) ;  Load frame size
423 : SUB  5, 5, 4 ;  Restore pointer
424 : ST 1, 3(3) ;  Store argument 2 into callee frame
425 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
426 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
427 : ST 1, 1(3) ;  Store argument 0 into callee frame
428 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
429 : ST 1, 2(3) ;  Store argument 1 into callee frame
430 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
431 : ST 1, 3(3) ;  Store argument 2 into callee frame
432 : LD   1, 3(5) ;  Load parameter 'N' into R1
433 : ST 1, 4(3) ;  Store argument 3 into callee frame
434 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
435 : ST 1, 5(3) ;  Store argument 4 into callee frame
436 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
437 : ST 1, 6(3) ;  Store argument 5 into callee frame
438 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
439 : ST 1, 7(3) ;  Store argument 6 into callee frame
440 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
441 : ST 1, 8(3) ;  Store argument 7 into callee frame
442 : LDA 6, 446(0)) ;  Compute return address
443 : ST 6, 0(3) ;  Store return address in callee frame
444 : ADD  5, 3, 0 ;  Update pointer
445 : LDA 7, 115(0) ;  Call whileLoopFor
446 : LD 1, 9(5) ;  Load callee return value into R1
447 : LDC  4, 5(0) ;  Load frame size
448 : SUB  5, 5, 4 ;  Restore pointer
449 : ST 1, 4(3) ;  Store argument 3 into callee frame
450 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
451 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
452 : ST 1, 1(3) ;  Store argument 0 into callee frame
453 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
454 : ST 1, 2(3) ;  Store argument 1 into callee frame
455 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
456 : ST 1, 3(3) ;  Store argument 2 into callee frame
457 : LD   1, 3(5) ;  Load parameter 'N' into R1
458 : ST 1, 4(3) ;  Store argument 3 into callee frame
459 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
460 : ST 1, 5(3) ;  Store argument 4 into callee frame
461 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
462 : ST 1, 6(3) ;  Store argument 5 into callee frame
463 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
464 : ST 1, 7(3) ;  Store argument 6 into callee frame
465 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
466 : ST 1, 8(3) ;  Store argument 7 into callee frame
467 : LDA 6, 471(0)) ;  Compute return address
468 : ST 6, 0(3) ;  Store return address in callee frame
469 : ADD  5, 3, 0 ;  Update pointer
470 : LDA 7, 115(0) ;  Call whileLoopFor
471 : LD 1, 9(5) ;  Load callee return value into R1
472 : LDC  4, 5(0) ;  Load frame size
473 : SUB  5, 5, 4 ;  Restore pointer
474 : ST 1, 5(3) ;  Store argument 4 into callee frame
475 : LDA 6, 479(0)) ;  Compute return address
476 : ST 6, 0(3) ;  Store return address in callee frame
477 : ADD  5, 3, 0 ;  Update pointer
478 : LDA 7, 334(0) ;  Call fareySelectDen
479 : LD 1, 6(5) ;  Load callee return value into R1
480 : LDC  4, 5(0) ;  Load frame size
481 : SUB  5, 5, 4 ;  Restore pointer
482 : ST   1, 4(5) ;  Store function result into stack frame
483 : LD   6, 0(5) ;  Load return address
484 : LDA  7, 0(6) ;  Return to caller
485 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'fareySelectNum'
486 : LD   1, 3(5) ;  Load parameter 'N' into R1
487 : ST 1, 1(3) ;  Store argument 0 into callee frame
488 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
489 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
490 : ST 1, 1(3) ;  Store argument 0 into callee frame
491 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
492 : ST 1, 2(3) ;  Store argument 1 into callee frame
493 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
494 : ST 1, 3(3) ;  Store argument 2 into callee frame
495 : LD   1, 3(5) ;  Load parameter 'N' into R1
496 : ST 1, 4(3) ;  Store argument 3 into callee frame
497 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
498 : ST 1, 5(3) ;  Store argument 4 into callee frame
499 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
500 : ST 1, 6(3) ;  Store argument 5 into callee frame
501 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
502 : ST 1, 7(3) ;  Store argument 6 into callee frame
503 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
504 : ST 1, 8(3) ;  Store argument 7 into callee frame
505 : LDA 6, 509(0)) ;  Compute return address
506 : ST 6, 0(3) ;  Store return address in callee frame
507 : ADD  5, 3, 0 ;  Update pointer
508 : LDA 7, 115(0) ;  Call whileLoopFor
509 : LD 1, 9(5) ;  Load callee return value into R1
510 : LDC  4, 5(0) ;  Load frame size
511 : SUB  5, 5, 4 ;  Restore pointer
512 : ST 1, 2(3) ;  Store argument 1 into callee frame
513 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
514 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
515 : ST 1, 1(3) ;  Store argument 0 into callee frame
516 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
517 : ST 1, 2(3) ;  Store argument 1 into callee frame
518 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
519 : ST 1, 3(3) ;  Store argument 2 into callee frame
520 : LD   1, 3(5) ;  Load parameter 'N' into R1
521 : ST 1, 4(3) ;  Store argument 3 into callee frame
522 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
523 : ST 1, 5(3) ;  Store argument 4 into callee frame
524 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
525 : ST 1, 6(3) ;  Store argument 5 into callee frame
526 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
527 : ST 1, 7(3) ;  Store argument 6 into callee frame
528 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
529 : ST 1, 8(3) ;  Store argument 7 into callee frame
530 : LDA 6, 534(0)) ;  Compute return address
531 : ST 6, 0(3) ;  Store return address in callee frame
532 : ADD  5, 3, 0 ;  Update pointer
533 : LDA 7, 115(0) ;  Call whileLoopFor
534 : LD 1, 9(5) ;  Load callee return value into R1
535 : LDC  4, 5(0) ;  Load frame size
536 : SUB  5, 5, 4 ;  Restore pointer
537 : ST 1, 3(3) ;  Store argument 2 into callee frame
538 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
539 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
540 : ST 1, 1(3) ;  Store argument 0 into callee frame
541 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
542 : ST 1, 2(3) ;  Store argument 1 into callee frame
543 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
544 : ST 1, 3(3) ;  Store argument 2 into callee frame
545 : LD   1, 3(5) ;  Load parameter 'N' into R1
546 : ST 1, 4(3) ;  Store argument 3 into callee frame
547 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
548 : ST 1, 5(3) ;  Store argument 4 into callee frame
549 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
550 : ST 1, 6(3) ;  Store argument 5 into callee frame
551 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
552 : ST 1, 7(3) ;  Store argument 6 into callee frame
553 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
554 : ST 1, 8(3) ;  Store argument 7 into callee frame
555 : LDA 6, 559(0)) ;  Compute return address
556 : ST 6, 0(3) ;  Store return address in callee frame
557 : ADD  5, 3, 0 ;  Update pointer
558 : LDA 7, 115(0) ;  Call whileLoopFor
559 : LD 1, 9(5) ;  Load callee return value into R1
560 : LDC  4, 5(0) ;  Load frame size
561 : SUB  5, 5, 4 ;  Restore pointer
562 : ST 1, 4(3) ;  Store argument 3 into callee frame
563 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'whileLoopFor'
564 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
565 : ST 1, 1(3) ;  Store argument 0 into callee frame
566 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
567 : ST 1, 2(3) ;  Store argument 1 into callee frame
568 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
569 : ST 1, 3(3) ;  Store argument 2 into callee frame
570 : LD   1, 3(5) ;  Load parameter 'N' into R1
571 : ST 1, 4(3) ;  Store argument 3 into callee frame
572 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
573 : ST 1, 5(3) ;  Store argument 4 into callee frame
574 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
575 : ST 1, 6(3) ;  Store argument 5 into callee frame
576 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
577 : ST 1, 7(3) ;  Store argument 6 into callee frame
578 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
579 : ST 1, 8(3) ;  Store argument 7 into callee frame
580 : LDA 6, 584(0)) ;  Compute return address
581 : ST 6, 0(3) ;  Store return address in callee frame
582 : ADD  5, 3, 0 ;  Update pointer
583 : LDA 7, 115(0) ;  Call whileLoopFor
584 : LD 1, 9(5) ;  Load callee return value into R1
585 : LDC  4, 5(0) ;  Load frame size
586 : SUB  5, 5, 4 ;  Restore pointer
587 : ST 1, 5(3) ;  Store argument 4 into callee frame
588 : LDA 6, 592(0)) ;  Compute return address
589 : ST 6, 0(3) ;  Store return address in callee frame
590 : ADD  5, 3, 0 ;  Update pointer
591 : LDA 7, 353(0) ;  Call fareySelectNum
592 : LD 1, 6(5) ;  Load callee return value into R1
593 : LDC  4, 5(0) ;  Load frame size
594 : SUB  5, 5, 4 ;  Restore pointer
595 : ST   1, 4(5) ;  Store function result into stack frame
596 : LD   6, 0(5) ;  Load return address
597 : LDA  7, 0(6) ;  Return to caller
