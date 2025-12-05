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
16 : LDA  3, 5(5) ; Restore Callee frame base
17 : ST 1, 1(3) ;  Store argument 0 into callee frame
18 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
19 : LDA  3, 5(5) ; Restore Callee frame base
20 : ST 1, 2(3) ;  Store argument 1 into callee frame
21 : LD   1, 3(5) ;  Load parameter 'N' into R1
22 : LDA  3, 5(5) ; Restore Callee frame base
23 : ST 1, 3(3) ;  Store argument 2 into callee frame
24 : LDA  3, 5(5) ; Restore Call frame base
25 : LDA 6, 29(0)) ;  Compute return address
26 : ST 6, 0(3) ;  Store return address in callee frame
27 : ADD  5, 3, 0 ;  Update pointer
28 : LDA 7, 562(0) ;  Call fareyNum
29 : LD 1, 4(5) ;  Load callee return value into R1
30 : LDC  4, 5(0) ;  Load frame size
31 : SUB  5, 5, 4 ;  Restore pointer
32 : LDA  3, 5(5) ;  Update DMEM pointer
33 : LDA 6, 37(0) ;  Compute return address
34 : ST   6, 0(3) ;  Store return address
35 : ADD  5, 3, 0 ;  Updated Pointer
36 : LDA  7, 12(0) ; Call print
37 : LDC  4, 5(0) ;  Load frame size
38 : SUB  5, 5, 4 ;  Restore pointer
39 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
40 : LDA  3, 5(5) ; Restore Callee frame base
41 : ST 1, 1(3) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
43 : LDA  3, 5(5) ; Restore Callee frame base
44 : ST 1, 2(3) ;  Store argument 1 into callee frame
45 : LD   1, 3(5) ;  Load parameter 'N' into R1
46 : LDA  3, 5(5) ; Restore Callee frame base
47 : ST 1, 3(3) ;  Store argument 2 into callee frame
48 : LDA  3, 5(5) ; Restore Call frame base
49 : LDA 6, 53(0)) ;  Compute return address
50 : ST 6, 0(3) ;  Store return address in callee frame
51 : ADD  5, 3, 0 ;  Update pointer
52 : LDA 7, 412(0) ;  Call fareyDen
53 : LD 1, 4(5) ;  Load callee return value into R1
54 : LDC  4, 5(0) ;  Load frame size
55 : SUB  5, 5, 4 ;  Restore pointer
56 : ST 1, 8(0) ;  Store function-call result into caller's return slot
57 : LD   1, 8(0) ;  Load return value into register 1
58 : LD  6, 4(0) ;  Load return address for main function into register 6
59 : LDA  7, 0(6) ;  Jump to return address of main function
60 : LD   1, 1(5) ;  Load parameter 'x' into R1
61 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
62 : LD   1, 2(5) ;  Load parameter 'y' into R1
63 : SUB  1, 2, 1 ;  left - right for less-than check
64 : JLT  1, 2(7) ;  If R1 < 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LD   1, 1(5) ;  Load parameter 'x' into R1
70 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
71 : LD   1, 2(5) ;  Load parameter 'y' into R1
72 : SUB  1, 2, 1 ;  left - right for equality check
73 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  1, 2, 1 ;  R1 = left OR right
78 : LDC  2, 1(0) ;  Load 1 into R2
79 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
80 : ST   1, 3(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
83 : LD   1, 1(5) ;  Load parameter 'x' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LD   1, 4(5) ;  Load parameter 'yd' into R1
86 : MUL  1, 2, 1 ;  R1 = left * right
87 : LDA  3, 6(5) ; Restore Callee frame base
88 : ST 1, 1(3) ;  Store argument 0 into callee frame
89 : LD   1, 3(5) ;  Load parameter 'y' into R1
90 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
91 : LD   1, 2(5) ;  Load parameter 'xd' into R1
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : LDA  3, 6(5) ; Restore Callee frame base
94 : ST 1, 2(3) ;  Store argument 1 into callee frame
95 : LDA  3, 6(5) ; Restore Call frame base
96 : LDA 6, 100(0)) ;  Compute return address
97 : ST 6, 0(3) ;  Store return address in callee frame
98 : ADD  5, 3, 0 ;  Update pointer
99 : LDA 7, 60(0) ;  Call greater
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC  4, 6(0) ;  Load frame size
102 : SUB  5, 5, 4 ;  Restore pointer
103 : ST   1, 5(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 1(5) ;  Load parameter 'x' into R1
107 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
108 : LD   1, 4(5) ;  Load parameter 'yd' into R1
109 : MUL  1, 2, 1 ;  R1 = left * right
110 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
111 : LD   1, 3(5) ;  Load parameter 'y' into R1
112 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
113 : LD   1, 2(5) ;  Load parameter 'xd' into R1
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : SUB  1, 2, 1 ;  left - right for equality check
116 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
117 : LDC  1, 0(0) ;  false
118 : LDA  7, 1(7) ;  skip setting true
119 : LDC  1, 1(0) ;  true
120 : ST   1, 5(5) ;  Store function result into stack frame
121 : LD   6, 0(5) ;  Load return address
122 : LDA  7, 0(6) ;  Return to caller
123 : LD   1, 6(5) ;  Load parameter 'b' into R1
124 : LDA  3, 10(5) ; Restore Callee frame base
125 : ST 1, 1(3) ;  Store argument 0 into callee frame
126 : LD   1, 4(5) ;  Load parameter 'N' into R1
127 : LDA  3, 10(5) ; Restore Callee frame base
128 : ST 1, 2(3) ;  Store argument 1 into callee frame
129 : LDA  3, 10(5) ; Restore Call frame base
130 : LDA 6, 134(0)) ;  Compute return address
131 : ST 6, 0(3) ;  Store return address in callee frame
132 : ADD  5, 3, 0 ;  Update pointer
133 : LDA 7, 60(0) ;  Call greater
134 : LD 1, 3(5) ;  Load callee return value into R1
135 : LDC  4, 10(0) ;  Load frame size
136 : SUB  5, 5, 4 ;  Restore pointer
137 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
138 : LD   1, 8(5) ;  Load parameter 'd' into R1
139 : LDA  3, 10(5) ; Restore Callee frame base
140 : ST 1, 1(3) ;  Store argument 0 into callee frame
141 : LD   1, 4(5) ;  Load parameter 'N' into R1
142 : LDA  3, 10(5) ; Restore Callee frame base
143 : ST 1, 2(3) ;  Store argument 1 into callee frame
144 : LDA  3, 10(5) ; Restore Call frame base
145 : LDA 6, 149(0)) ;  Compute return address
146 : ST 6, 0(3) ;  Store return address in callee frame
147 : ADD  5, 3, 0 ;  Update pointer
148 : LDA 7, 60(0) ;  Call greater
149 : LD 1, 3(5) ;  Load callee return value into R1
150 : LDC  4, 10(0) ;  Load frame size
151 : SUB  5, 5, 4 ;  Restore pointer
152 : ADD  1, 2, 1 ;  R1 = left OR right
153 : JEQ  1, 189(0) ;  If condition is false, jump to ELSE
154 : LD   1, 1(5) ;  Load parameter 'selector' into R1
155 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
156 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
157 : SUB  1, 2, 1 ;  left - right for equality check
158 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
159 : LDC  1, 0(0) ;  false
160 : LDA  7, 1(7) ;  skip setting true
161 : LDC  1, 1(0) ;  true
162 : JEQ  1, 165(0) ;  If condition is false, jump to ELSE
163 : LD   1, 5(5) ;  Load parameter 'a' into R1
164 : LDA  7, 188(0) ;  Skip ELSE block
165 : LD   1, 1(5) ;  Load parameter 'selector' into R1
166 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
167 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
168 : SUB  1, 2, 1 ;  left - right for equality check
169 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
170 : LDC  1, 0(0) ;  false
171 : LDA  7, 1(7) ;  skip setting true
172 : LDC  1, 1(0) ;  true
173 : JEQ  1, 176(0) ;  If condition is false, jump to ELSE
174 : LD   1, 6(5) ;  Load parameter 'b' into R1
175 : LDA  7, 188(0) ;  Skip ELSE block
176 : LD   1, 1(5) ;  Load parameter 'selector' into R1
177 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
178 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
179 : SUB  1, 2, 1 ;  left - right for equality check
180 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
181 : LDC  1, 0(0) ;  false
182 : LDA  7, 1(7) ;  skip setting true
183 : LDC  1, 1(0) ;  true
184 : JEQ  1, 187(0) ;  If condition is false, jump to ELSE
185 : LD   1, 7(5) ;  Load parameter 'c' into R1
186 : LDA  7, 188(0) ;  Skip ELSE block
187 : LD   1, 8(5) ;  Load parameter 'd' into R1
188 : LDA  7, 367(0) ;  Skip ELSE block
189 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
190 : LDA  3, 10(5) ; Restore Callee frame base
191 : ST 1, 1(3) ;  Store argument 0 into callee frame
192 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
193 : LDA  3, 10(5) ; Restore Callee frame base
194 : ST 1, 2(3) ;  Store argument 1 into callee frame
195 : LD   1, 5(5) ;  Load parameter 'a' into R1
196 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
197 : LD   1, 7(5) ;  Load parameter 'c' into R1
198 : ADD  1, 2, 1 ;  R1 = left + right
199 : LDA  3, 10(5) ; Restore Callee frame base
200 : ST 1, 3(3) ;  Store argument 2 into callee frame
201 : LD   1, 6(5) ;  Load parameter 'b' into R1
202 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
203 : LD   1, 8(5) ;  Load parameter 'd' into R1
204 : ADD  1, 2, 1 ;  R1 = left + right
205 : LDA  3, 10(5) ; Restore Callee frame base
206 : ST 1, 4(3) ;  Store argument 3 into callee frame
207 : LDA  3, 10(5) ; Restore Call frame base
208 : LDA 6, 212(0)) ;  Compute return address
209 : ST 6, 0(3) ;  Store return address in callee frame
210 : ADD  5, 3, 0 ;  Update pointer
211 : LDA 7, 106(0) ;  Call fractionEqual
212 : LD 1, 5(5) ;  Load callee return value into R1
213 : LDC  4, 10(0) ;  Load frame size
214 : SUB  5, 5, 4 ;  Restore pointer
215 : JEQ  1, 263(0) ;  If condition is false, jump to ELSE
216 : LD   1, 1(5) ;  Load parameter 'selector' into R1
217 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
218 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
219 : SUB  1, 2, 1 ;  left - right for equality check
220 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
221 : LDC  1, 0(0) ;  false
222 : LDA  7, 1(7) ;  skip setting true
223 : LDC  1, 1(0) ;  true
224 : JEQ  1, 230(0) ;  If condition is false, jump to ELSE
225 : LD   1, 5(5) ;  Load parameter 'a' into R1
226 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
227 : LD   1, 7(5) ;  Load parameter 'c' into R1
228 : ADD  1, 2, 1 ;  R1 = left + right
229 : LDA  7, 262(0) ;  Skip ELSE block
230 : LD   1, 1(5) ;  Load parameter 'selector' into R1
231 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
232 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
233 : SUB  1, 2, 1 ;  left - right for equality check
234 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
235 : LDC  1, 0(0) ;  false
236 : LDA  7, 1(7) ;  skip setting true
237 : LDC  1, 1(0) ;  true
238 : JEQ  1, 244(0) ;  If condition is false, jump to ELSE
239 : LD   1, 6(5) ;  Load parameter 'b' into R1
240 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
241 : LD   1, 8(5) ;  Load parameter 'd' into R1
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : LDA  7, 262(0) ;  Skip ELSE block
244 : LD   1, 1(5) ;  Load parameter 'selector' into R1
245 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
246 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
247 : SUB  1, 2, 1 ;  left - right for equality check
248 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
249 : LDC  1, 0(0) ;  false
250 : LDA  7, 1(7) ;  skip setting true
251 : LDC  1, 1(0) ;  true
252 : JEQ  1, 258(0) ;  If condition is false, jump to ELSE
253 : LD   1, 5(5) ;  Load parameter 'a' into R1
254 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
255 : LD   1, 7(5) ;  Load parameter 'c' into R1
256 : ADD  1, 2, 1 ;  R1 = left + right
257 : LDA  7, 262(0) ;  Skip ELSE block
258 : LD   1, 6(5) ;  Load parameter 'b' into R1
259 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
260 : LD   1, 8(5) ;  Load parameter 'd' into R1
261 : ADD  1, 2, 1 ;  R1 = left + right
262 : LDA  7, 367(0) ;  Skip ELSE block
263 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
264 : LDA  3, 10(5) ; Restore Callee frame base
265 : ST 1, 1(3) ;  Store argument 0 into callee frame
266 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
267 : LDA  3, 10(5) ; Restore Callee frame base
268 : ST 1, 2(3) ;  Store argument 1 into callee frame
269 : LD   1, 5(5) ;  Load parameter 'a' into R1
270 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
271 : LD   1, 7(5) ;  Load parameter 'c' into R1
272 : ADD  1, 2, 1 ;  R1 = left + right
273 : LDA  3, 10(5) ; Restore Callee frame base
274 : ST 1, 3(3) ;  Store argument 2 into callee frame
275 : LD   1, 6(5) ;  Load parameter 'b' into R1
276 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
277 : LD   1, 8(5) ;  Load parameter 'd' into R1
278 : ADD  1, 2, 1 ;  R1 = left + right
279 : LDA  3, 10(5) ; Restore Callee frame base
280 : ST 1, 4(3) ;  Store argument 3 into callee frame
281 : LDA  3, 10(5) ; Restore Call frame base
282 : LDA 6, 286(0)) ;  Compute return address
283 : ST 6, 0(3) ;  Store return address in callee frame
284 : ADD  5, 3, 0 ;  Update pointer
285 : LDA 7, 83(0) ;  Call fractionGreater
286 : LD 1, 5(5) ;  Load callee return value into R1
287 : LDC  4, 10(0) ;  Load frame size
288 : SUB  5, 5, 4 ;  Restore pointer
289 : JEQ  1, 329(0) ;  If condition is false, jump to ELSE
290 : LD   1, 1(5) ;  Load parameter 'selector' into R1
291 : LDA  3, 10(5) ; Restore Callee frame base
292 : ST 1, 1(3) ;  Store argument 0 into callee frame
293 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
294 : LDA  3, 10(5) ; Restore Callee frame base
295 : ST 1, 2(3) ;  Store argument 1 into callee frame
296 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
297 : LDA  3, 10(5) ; Restore Callee frame base
298 : ST 1, 3(3) ;  Store argument 2 into callee frame
299 : LD   1, 4(5) ;  Load parameter 'N' into R1
300 : LDA  3, 10(5) ; Restore Callee frame base
301 : ST 1, 4(3) ;  Store argument 3 into callee frame
302 : LD   1, 5(5) ;  Load parameter 'a' into R1
303 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
304 : LD   1, 7(5) ;  Load parameter 'c' into R1
305 : ADD  1, 2, 1 ;  R1 = left + right
306 : LDA  3, 10(5) ; Restore Callee frame base
307 : ST 1, 5(3) ;  Store argument 4 into callee frame
308 : LD   1, 6(5) ;  Load parameter 'b' into R1
309 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
310 : LD   1, 8(5) ;  Load parameter 'd' into R1
311 : ADD  1, 2, 1 ;  R1 = left + right
312 : LDA  3, 10(5) ; Restore Callee frame base
313 : ST 1, 6(3) ;  Store argument 5 into callee frame
314 : LD   1, 7(5) ;  Load parameter 'c' into R1
315 : LDA  3, 10(5) ; Restore Callee frame base
316 : ST 1, 7(3) ;  Store argument 6 into callee frame
317 : LD   1, 8(5) ;  Load parameter 'd' into R1
318 : LDA  3, 10(5) ; Restore Callee frame base
319 : ST 1, 8(3) ;  Store argument 7 into callee frame
320 : LDA  3, 10(5) ; Restore Call frame base
321 : LDA 6, 325(0)) ;  Compute return address
322 : ST 6, 0(3) ;  Store return address in callee frame
323 : ADD  5, 3, 0 ;  Update pointer
324 : LDA 7, 123(0) ;  Call whileLoopFor
325 : LD 1, 9(5) ;  Load callee return value into R1
326 : LDC  4, 10(0) ;  Load frame size
327 : SUB  5, 5, 4 ;  Restore pointer
328 : LDA  7, 367(0) ;  Skip ELSE block
329 : LD   1, 1(5) ;  Load parameter 'selector' into R1
330 : LDA  3, 10(5) ; Restore Callee frame base
331 : ST 1, 1(3) ;  Store argument 0 into callee frame
332 : LD   1, 2(5) ;  Load parameter 'xNum' into R1
333 : LDA  3, 10(5) ; Restore Callee frame base
334 : ST 1, 2(3) ;  Store argument 1 into callee frame
335 : LD   1, 3(5) ;  Load parameter 'xDen' into R1
336 : LDA  3, 10(5) ; Restore Callee frame base
337 : ST 1, 3(3) ;  Store argument 2 into callee frame
338 : LD   1, 4(5) ;  Load parameter 'N' into R1
339 : LDA  3, 10(5) ; Restore Callee frame base
340 : ST 1, 4(3) ;  Store argument 3 into callee frame
341 : LD   1, 5(5) ;  Load parameter 'a' into R1
342 : LDA  3, 10(5) ; Restore Callee frame base
343 : ST 1, 5(3) ;  Store argument 4 into callee frame
344 : LD   1, 6(5) ;  Load parameter 'b' into R1
345 : LDA  3, 10(5) ; Restore Callee frame base
346 : ST 1, 6(3) ;  Store argument 5 into callee frame
347 : LD   1, 5(5) ;  Load parameter 'a' into R1
348 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
349 : LD   1, 7(5) ;  Load parameter 'c' into R1
350 : ADD  1, 2, 1 ;  R1 = left + right
351 : LDA  3, 10(5) ; Restore Callee frame base
352 : ST 1, 7(3) ;  Store argument 6 into callee frame
353 : LD   1, 6(5) ;  Load parameter 'b' into R1
354 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
355 : LD   1, 8(5) ;  Load parameter 'd' into R1
356 : ADD  1, 2, 1 ;  R1 = left + right
357 : LDA  3, 10(5) ; Restore Callee frame base
358 : ST 1, 8(3) ;  Store argument 7 into callee frame
359 : LDA  3, 10(5) ; Restore Call frame base
360 : LDA 6, 364(0)) ;  Compute return address
361 : ST 6, 0(3) ;  Store return address in callee frame
362 : ADD  5, 3, 0 ;  Update pointer
363 : LDA 7, 123(0) ;  Call whileLoopFor
364 : LD 1, 9(5) ;  Load callee return value into R1
365 : LDC  4, 10(0) ;  Load frame size
366 : SUB  5, 5, 4 ;  Restore pointer
367 : ST   1, 9(5) ;  Store function result into stack frame
368 : LD   6, 0(5) ;  Load return address
369 : LDA  7, 0(6) ;  Return to caller
370 : LD   1, 3(5) ;  Load parameter 'b' into R1
371 : LDA  3, 7(5) ; Restore Callee frame base
372 : ST 1, 1(3) ;  Store argument 0 into callee frame
373 : LD   1, 1(5) ;  Load parameter 'N' into R1
374 : LDA  3, 7(5) ; Restore Callee frame base
375 : ST 1, 2(3) ;  Store argument 1 into callee frame
376 : LDA  3, 7(5) ; Restore Call frame base
377 : LDA 6, 381(0)) ;  Compute return address
378 : ST 6, 0(3) ;  Store return address in callee frame
379 : ADD  5, 3, 0 ;  Update pointer
380 : LDA 7, 60(0) ;  Call greater
381 : LD 1, 3(5) ;  Load callee return value into R1
382 : LDC  4, 7(0) ;  Load frame size
383 : SUB  5, 5, 4 ;  Restore pointer
384 : JEQ  1, 387(0) ;  If condition is false, jump to ELSE
385 : LD   1, 5(5) ;  Load parameter 'd' into R1
386 : LDA  7, 388(0) ;  Skip ELSE block
387 : LD   1, 3(5) ;  Load parameter 'b' into R1
388 : ST   1, 6(5) ;  Store function result into stack frame
389 : LD   6, 0(5) ;  Load return address
390 : LDA  7, 0(6) ;  Return to caller
391 : LD   1, 3(5) ;  Load parameter 'b' into R1
392 : LDA  3, 7(5) ; Restore Callee frame base
393 : ST 1, 1(3) ;  Store argument 0 into callee frame
394 : LD   1, 1(5) ;  Load parameter 'N' into R1
395 : LDA  3, 7(5) ; Restore Callee frame base
396 : ST 1, 2(3) ;  Store argument 1 into callee frame
397 : LDA  3, 7(5) ; Restore Call frame base
398 : LDA 6, 402(0)) ;  Compute return address
399 : ST 6, 0(3) ;  Store return address in callee frame
400 : ADD  5, 3, 0 ;  Update pointer
401 : LDA 7, 60(0) ;  Call greater
402 : LD 1, 3(5) ;  Load callee return value into R1
403 : LDC  4, 7(0) ;  Load frame size
404 : SUB  5, 5, 4 ;  Restore pointer
405 : JEQ  1, 408(0) ;  If condition is false, jump to ELSE
406 : LD   1, 4(5) ;  Load parameter 'c' into R1
407 : LDA  7, 409(0) ;  Skip ELSE block
408 : LD   1, 2(5) ;  Load parameter 'a' into R1
409 : ST   1, 6(5) ;  Store function result into stack frame
410 : LD   6, 0(5) ;  Load return address
411 : LDA  7, 0(6) ;  Return to caller
412 : LD   1, 3(5) ;  Load parameter 'N' into R1
413 : LDA  3, 5(5) ; Restore Callee frame base
414 : ST 1, 1(3) ;  Store argument 0 into callee frame
415 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
416 : LDA  3, 5(5) ; Restore Callee frame base
417 : ST 1, 1(3) ;  Store argument 0 into callee frame
418 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
419 : LDA  3, 5(5) ; Restore Callee frame base
420 : ST 1, 2(3) ;  Store argument 1 into callee frame
421 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
422 : LDA  3, 5(5) ; Restore Callee frame base
423 : ST 1, 3(3) ;  Store argument 2 into callee frame
424 : LD   1, 3(5) ;  Load parameter 'N' into R1
425 : LDA  3, 5(5) ; Restore Callee frame base
426 : ST 1, 4(3) ;  Store argument 3 into callee frame
427 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
428 : LDA  3, 5(5) ; Restore Callee frame base
429 : ST 1, 5(3) ;  Store argument 4 into callee frame
430 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
431 : LDA  3, 5(5) ; Restore Callee frame base
432 : ST 1, 6(3) ;  Store argument 5 into callee frame
433 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
434 : LDA  3, 5(5) ; Restore Callee frame base
435 : ST 1, 7(3) ;  Store argument 6 into callee frame
436 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
437 : LDA  3, 5(5) ; Restore Callee frame base
438 : ST 1, 8(3) ;  Store argument 7 into callee frame
439 : LDA  3, 5(5) ; Restore Call frame base
440 : LDA 6, 444(0)) ;  Compute return address
441 : ST 6, 0(3) ;  Store return address in callee frame
442 : ADD  5, 3, 0 ;  Update pointer
443 : LDA 7, 123(0) ;  Call whileLoopFor
444 : LD 1, 9(5) ;  Load callee return value into R1
445 : LDC  4, 5(0) ;  Load frame size
446 : SUB  5, 5, 4 ;  Restore pointer
447 : LDA  3, 5(5) ; Restore Callee frame base
448 : ST 1, 2(3) ;  Store argument 1 into callee frame
449 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
450 : LDA  3, 5(5) ; Restore Callee frame base
451 : ST 1, 1(3) ;  Store argument 0 into callee frame
452 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
453 : LDA  3, 5(5) ; Restore Callee frame base
454 : ST 1, 2(3) ;  Store argument 1 into callee frame
455 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
456 : LDA  3, 5(5) ; Restore Callee frame base
457 : ST 1, 3(3) ;  Store argument 2 into callee frame
458 : LD   1, 3(5) ;  Load parameter 'N' into R1
459 : LDA  3, 5(5) ; Restore Callee frame base
460 : ST 1, 4(3) ;  Store argument 3 into callee frame
461 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
462 : LDA  3, 5(5) ; Restore Callee frame base
463 : ST 1, 5(3) ;  Store argument 4 into callee frame
464 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
465 : LDA  3, 5(5) ; Restore Callee frame base
466 : ST 1, 6(3) ;  Store argument 5 into callee frame
467 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
468 : LDA  3, 5(5) ; Restore Callee frame base
469 : ST 1, 7(3) ;  Store argument 6 into callee frame
470 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
471 : LDA  3, 5(5) ; Restore Callee frame base
472 : ST 1, 8(3) ;  Store argument 7 into callee frame
473 : LDA  3, 5(5) ; Restore Call frame base
474 : LDA 6, 478(0)) ;  Compute return address
475 : ST 6, 0(3) ;  Store return address in callee frame
476 : ADD  5, 3, 0 ;  Update pointer
477 : LDA 7, 123(0) ;  Call whileLoopFor
478 : LD 1, 9(5) ;  Load callee return value into R1
479 : LDC  4, 5(0) ;  Load frame size
480 : SUB  5, 5, 4 ;  Restore pointer
481 : LDA  3, 5(5) ; Restore Callee frame base
482 : ST 1, 3(3) ;  Store argument 2 into callee frame
483 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
484 : LDA  3, 5(5) ; Restore Callee frame base
485 : ST 1, 1(3) ;  Store argument 0 into callee frame
486 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
487 : LDA  3, 5(5) ; Restore Callee frame base
488 : ST 1, 2(3) ;  Store argument 1 into callee frame
489 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
490 : LDA  3, 5(5) ; Restore Callee frame base
491 : ST 1, 3(3) ;  Store argument 2 into callee frame
492 : LD   1, 3(5) ;  Load parameter 'N' into R1
493 : LDA  3, 5(5) ; Restore Callee frame base
494 : ST 1, 4(3) ;  Store argument 3 into callee frame
495 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
496 : LDA  3, 5(5) ; Restore Callee frame base
497 : ST 1, 5(3) ;  Store argument 4 into callee frame
498 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
499 : LDA  3, 5(5) ; Restore Callee frame base
500 : ST 1, 6(3) ;  Store argument 5 into callee frame
501 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
502 : LDA  3, 5(5) ; Restore Callee frame base
503 : ST 1, 7(3) ;  Store argument 6 into callee frame
504 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
505 : LDA  3, 5(5) ; Restore Callee frame base
506 : ST 1, 8(3) ;  Store argument 7 into callee frame
507 : LDA  3, 5(5) ; Restore Call frame base
508 : LDA 6, 512(0)) ;  Compute return address
509 : ST 6, 0(3) ;  Store return address in callee frame
510 : ADD  5, 3, 0 ;  Update pointer
511 : LDA 7, 123(0) ;  Call whileLoopFor
512 : LD 1, 9(5) ;  Load callee return value into R1
513 : LDC  4, 5(0) ;  Load frame size
514 : SUB  5, 5, 4 ;  Restore pointer
515 : LDA  3, 5(5) ; Restore Callee frame base
516 : ST 1, 4(3) ;  Store argument 3 into callee frame
517 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
518 : LDA  3, 5(5) ; Restore Callee frame base
519 : ST 1, 1(3) ;  Store argument 0 into callee frame
520 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
521 : LDA  3, 5(5) ; Restore Callee frame base
522 : ST 1, 2(3) ;  Store argument 1 into callee frame
523 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
524 : LDA  3, 5(5) ; Restore Callee frame base
525 : ST 1, 3(3) ;  Store argument 2 into callee frame
526 : LD   1, 3(5) ;  Load parameter 'N' into R1
527 : LDA  3, 5(5) ; Restore Callee frame base
528 : ST 1, 4(3) ;  Store argument 3 into callee frame
529 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
530 : LDA  3, 5(5) ; Restore Callee frame base
531 : ST 1, 5(3) ;  Store argument 4 into callee frame
532 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
533 : LDA  3, 5(5) ; Restore Callee frame base
534 : ST 1, 6(3) ;  Store argument 5 into callee frame
535 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
536 : LDA  3, 5(5) ; Restore Callee frame base
537 : ST 1, 7(3) ;  Store argument 6 into callee frame
538 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
539 : LDA  3, 5(5) ; Restore Callee frame base
540 : ST 1, 8(3) ;  Store argument 7 into callee frame
541 : LDA  3, 5(5) ; Restore Call frame base
542 : LDA 6, 546(0)) ;  Compute return address
543 : ST 6, 0(3) ;  Store return address in callee frame
544 : ADD  5, 3, 0 ;  Update pointer
545 : LDA 7, 123(0) ;  Call whileLoopFor
546 : LD 1, 9(5) ;  Load callee return value into R1
547 : LDC  4, 5(0) ;  Load frame size
548 : SUB  5, 5, 4 ;  Restore pointer
549 : LDA  3, 5(5) ; Restore Callee frame base
550 : ST 1, 5(3) ;  Store argument 4 into callee frame
551 : LDA  3, 5(5) ; Restore Call frame base
552 : LDA 6, 556(0)) ;  Compute return address
553 : ST 6, 0(3) ;  Store return address in callee frame
554 : ADD  5, 3, 0 ;  Update pointer
555 : LDA 7, 370(0) ;  Call fareySelectDen
556 : LD 1, 6(5) ;  Load callee return value into R1
557 : LDC  4, 5(0) ;  Load frame size
558 : SUB  5, 5, 4 ;  Restore pointer
559 : ST   1, 4(5) ;  Store function result into stack frame
560 : LD   6, 0(5) ;  Load return address
561 : LDA  7, 0(6) ;  Return to caller
562 : LD   1, 3(5) ;  Load parameter 'N' into R1
563 : LDA  3, 5(5) ; Restore Callee frame base
564 : ST 1, 1(3) ;  Store argument 0 into callee frame
565 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
566 : LDA  3, 5(5) ; Restore Callee frame base
567 : ST 1, 1(3) ;  Store argument 0 into callee frame
568 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
569 : LDA  3, 5(5) ; Restore Callee frame base
570 : ST 1, 2(3) ;  Store argument 1 into callee frame
571 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
572 : LDA  3, 5(5) ; Restore Callee frame base
573 : ST 1, 3(3) ;  Store argument 2 into callee frame
574 : LD   1, 3(5) ;  Load parameter 'N' into R1
575 : LDA  3, 5(5) ; Restore Callee frame base
576 : ST 1, 4(3) ;  Store argument 3 into callee frame
577 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
578 : LDA  3, 5(5) ; Restore Callee frame base
579 : ST 1, 5(3) ;  Store argument 4 into callee frame
580 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
581 : LDA  3, 5(5) ; Restore Callee frame base
582 : ST 1, 6(3) ;  Store argument 5 into callee frame
583 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
584 : LDA  3, 5(5) ; Restore Callee frame base
585 : ST 1, 7(3) ;  Store argument 6 into callee frame
586 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
587 : LDA  3, 5(5) ; Restore Callee frame base
588 : ST 1, 8(3) ;  Store argument 7 into callee frame
589 : LDA  3, 5(5) ; Restore Call frame base
590 : LDA 6, 594(0)) ;  Compute return address
591 : ST 6, 0(3) ;  Store return address in callee frame
592 : ADD  5, 3, 0 ;  Update pointer
593 : LDA 7, 123(0) ;  Call whileLoopFor
594 : LD 1, 9(5) ;  Load callee return value into R1
595 : LDC  4, 5(0) ;  Load frame size
596 : SUB  5, 5, 4 ;  Restore pointer
597 : LDA  3, 5(5) ; Restore Callee frame base
598 : ST 1, 2(3) ;  Store argument 1 into callee frame
599 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
600 : LDA  3, 5(5) ; Restore Callee frame base
601 : ST 1, 1(3) ;  Store argument 0 into callee frame
602 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
603 : LDA  3, 5(5) ; Restore Callee frame base
604 : ST 1, 2(3) ;  Store argument 1 into callee frame
605 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
606 : LDA  3, 5(5) ; Restore Callee frame base
607 : ST 1, 3(3) ;  Store argument 2 into callee frame
608 : LD   1, 3(5) ;  Load parameter 'N' into R1
609 : LDA  3, 5(5) ; Restore Callee frame base
610 : ST 1, 4(3) ;  Store argument 3 into callee frame
611 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
612 : LDA  3, 5(5) ; Restore Callee frame base
613 : ST 1, 5(3) ;  Store argument 4 into callee frame
614 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
615 : LDA  3, 5(5) ; Restore Callee frame base
616 : ST 1, 6(3) ;  Store argument 5 into callee frame
617 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
618 : LDA  3, 5(5) ; Restore Callee frame base
619 : ST 1, 7(3) ;  Store argument 6 into callee frame
620 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
621 : LDA  3, 5(5) ; Restore Callee frame base
622 : ST 1, 8(3) ;  Store argument 7 into callee frame
623 : LDA  3, 5(5) ; Restore Call frame base
624 : LDA 6, 628(0)) ;  Compute return address
625 : ST 6, 0(3) ;  Store return address in callee frame
626 : ADD  5, 3, 0 ;  Update pointer
627 : LDA 7, 123(0) ;  Call whileLoopFor
628 : LD 1, 9(5) ;  Load callee return value into R1
629 : LDC  4, 5(0) ;  Load frame size
630 : SUB  5, 5, 4 ;  Restore pointer
631 : LDA  3, 5(5) ; Restore Callee frame base
632 : ST 1, 3(3) ;  Store argument 2 into callee frame
633 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
634 : LDA  3, 5(5) ; Restore Callee frame base
635 : ST 1, 1(3) ;  Store argument 0 into callee frame
636 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
637 : LDA  3, 5(5) ; Restore Callee frame base
638 : ST 1, 2(3) ;  Store argument 1 into callee frame
639 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
640 : LDA  3, 5(5) ; Restore Callee frame base
641 : ST 1, 3(3) ;  Store argument 2 into callee frame
642 : LD   1, 3(5) ;  Load parameter 'N' into R1
643 : LDA  3, 5(5) ; Restore Callee frame base
644 : ST 1, 4(3) ;  Store argument 3 into callee frame
645 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
646 : LDA  3, 5(5) ; Restore Callee frame base
647 : ST 1, 5(3) ;  Store argument 4 into callee frame
648 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
649 : LDA  3, 5(5) ; Restore Callee frame base
650 : ST 1, 6(3) ;  Store argument 5 into callee frame
651 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
652 : LDA  3, 5(5) ; Restore Callee frame base
653 : ST 1, 7(3) ;  Store argument 6 into callee frame
654 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
655 : LDA  3, 5(5) ; Restore Callee frame base
656 : ST 1, 8(3) ;  Store argument 7 into callee frame
657 : LDA  3, 5(5) ; Restore Call frame base
658 : LDA 6, 662(0)) ;  Compute return address
659 : ST 6, 0(3) ;  Store return address in callee frame
660 : ADD  5, 3, 0 ;  Update pointer
661 : LDA 7, 123(0) ;  Call whileLoopFor
662 : LD 1, 9(5) ;  Load callee return value into R1
663 : LDC  4, 5(0) ;  Load frame size
664 : SUB  5, 5, 4 ;  Restore pointer
665 : LDA  3, 5(5) ; Restore Callee frame base
666 : ST 1, 4(3) ;  Store argument 3 into callee frame
667 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
668 : LDA  3, 5(5) ; Restore Callee frame base
669 : ST 1, 1(3) ;  Store argument 0 into callee frame
670 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
671 : LDA  3, 5(5) ; Restore Callee frame base
672 : ST 1, 2(3) ;  Store argument 1 into callee frame
673 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
674 : LDA  3, 5(5) ; Restore Callee frame base
675 : ST 1, 3(3) ;  Store argument 2 into callee frame
676 : LD   1, 3(5) ;  Load parameter 'N' into R1
677 : LDA  3, 5(5) ; Restore Callee frame base
678 : ST 1, 4(3) ;  Store argument 3 into callee frame
679 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
680 : LDA  3, 5(5) ; Restore Callee frame base
681 : ST 1, 5(3) ;  Store argument 4 into callee frame
682 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
683 : LDA  3, 5(5) ; Restore Callee frame base
684 : ST 1, 6(3) ;  Store argument 5 into callee frame
685 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
686 : LDA  3, 5(5) ; Restore Callee frame base
687 : ST 1, 7(3) ;  Store argument 6 into callee frame
688 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
689 : LDA  3, 5(5) ; Restore Callee frame base
690 : ST 1, 8(3) ;  Store argument 7 into callee frame
691 : LDA  3, 5(5) ; Restore Call frame base
692 : LDA 6, 696(0)) ;  Compute return address
693 : ST 6, 0(3) ;  Store return address in callee frame
694 : ADD  5, 3, 0 ;  Update pointer
695 : LDA 7, 123(0) ;  Call whileLoopFor
696 : LD 1, 9(5) ;  Load callee return value into R1
697 : LDC  4, 5(0) ;  Load frame size
698 : SUB  5, 5, 4 ;  Restore pointer
699 : LDA  3, 5(5) ; Restore Callee frame base
700 : ST 1, 5(3) ;  Store argument 4 into callee frame
701 : LDA  3, 5(5) ; Restore Call frame base
702 : LDA 6, 706(0)) ;  Compute return address
703 : ST 6, 0(3) ;  Store return address in callee frame
704 : ADD  5, 3, 0 ;  Update pointer
705 : LDA 7, 391(0) ;  Call fareySelectNum
706 : LD 1, 6(5) ;  Load callee return value into R1
707 : LDC  4, 5(0) ;  Load frame size
708 : SUB  5, 5, 4 ;  Restore pointer
709 : ST   1, 4(5) ;  Store function result into stack frame
710 : LD   6, 0(5) ;  Load return address
711 : LDA  7, 0(6) ;  Return to caller
