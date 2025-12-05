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
11 : LD   1, 1(5) ;  Load parameter 'x' into R1
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDA  3, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0) ;  Compute return address
16 : ST 6, 0(3) ;  Store return address in callee frame
17 : ADD  5, 3, 0 ;  Update pointer
18 : LDA 7, 499(0) ;  Call circularPrimesTo
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4, 3(0) ;  Load frame size
21 : SUB  5, 5, 4 ;  Restore pointer
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'num' into R1
27 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
28 : LD   1, 2(5) ;  Load parameter 'den' into R1
29 : SUB  1, 2, 1 ;  left - right for less-than check
30 : JLT  1, 2(7) ;  If R1 < 0, jump to true
31 : LDC  1, 0(0) ;  false
32 : LDA  7, 1(7) ;  skip setting true
33 : LDC  1, 1(0) ;  true
34 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
35 : LD   1, 1(5) ;  Load parameter 'num' into R1
36 : LDA  7, 54(0) ;  Skip ELSE block
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 2(5) ;  Load parameter 'den' into R1
40 : SUB  1, 2, 1 ;  R1 = left - right
41 : LDA  3, 4(5) ; Restore Callee frame base
42 : ST 1, 1(3) ;  Store argument 0 into callee frame
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : LDA  3, 4(5) ; Restore Callee frame base
45 : ST 1, 2(3) ;  Store argument 1 into callee frame
46 : LDA  3, 4(5) ; Restore Call frame base
47 : LDA 6, 51(0) ;  Compute return address
48 : ST 6, 0(3) ;  Store return address in callee frame
49 : ADD  5, 3, 0 ;  Update pointer
50 : LDA 7, 26(0) ;  Call mod
51 : LD 1, 3(5) ;  Load callee return value into R1
52 : LDC  4, 4(0) ;  Load frame size
53 : SUB  5, 5, 4 ;  Restore pointer
54 : ST   1, 3(5) ;  Store function result into stack frame
55 : LD   6, 0(5) ;  Load return address
56 : LDA  7, 0(6) ;  Return to caller
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : LDA  3, 4(5) ; Restore Callee frame base
59 : ST 1, 1(3) ;  Store argument 0 into callee frame
60 : LD   1, 1(5) ;  Load parameter 'a' into R1
61 : LDA  3, 4(5) ; Restore Callee frame base
62 : ST 1, 2(3) ;  Store argument 1 into callee frame
63 : LDA  3, 4(5) ; Restore Call frame base
64 : LDA 6, 68(0) ;  Compute return address
65 : ST 6, 0(3) ;  Store return address in callee frame
66 : ADD  5, 3, 0 ;  Update pointer
67 : LDA 7, 26(0) ;  Call mod
68 : LD 1, 3(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
72 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
81 : LD   1, 1(5) ;  Load parameter 'i' into R1
82 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : SUB  1, 2, 1 ;  left - right for less-than check
85 : JLT  1, 2(7) ;  If R1 < 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : JEQ  1, 124(0) ;  If condition is false, jump to ELSE
90 : LD   1, 1(5) ;  Load parameter 'i' into R1
91 : LDA  3, 4(5) ; Restore Callee frame base
92 : ST 1, 1(3) ;  Store argument 0 into callee frame
93 : LD   1, 2(5) ;  Load parameter 'n' into R1
94 : LDA  3, 4(5) ; Restore Callee frame base
95 : ST 1, 2(3) ;  Store argument 1 into callee frame
96 : LDA  3, 4(5) ; Restore Call frame base
97 : LDA 6, 101(0) ;  Compute return address
98 : ST 6, 0(3) ;  Store return address in callee frame
99 : ADD  5, 3, 0 ;  Update pointer
100 : LDA 7, 57(0) ;  Call divides
101 : LD 1, 3(5) ;  Load callee return value into R1
102 : LDC  4, 4(0) ;  Load frame size
103 : SUB  5, 5, 4 ;  Restore pointer
104 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
105 : LD   1, 1(5) ;  Load parameter 'i' into R1
106 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
107 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
108 : ADD  1, 2, 1 ;  R1 = left + right
109 : LDA  3, 4(5) ; Restore Callee frame base
110 : ST 1, 1(3) ;  Store argument 0 into callee frame
111 : LD   1, 2(5) ;  Load parameter 'n' into R1
112 : LDA  3, 4(5) ; Restore Callee frame base
113 : ST 1, 2(3) ;  Store argument 1 into callee frame
114 : LDA  3, 4(5) ; Restore Call frame base
115 : LDA 6, 119(0) ;  Compute return address
116 : ST 6, 0(3) ;  Store return address in callee frame
117 : ADD  5, 3, 0 ;  Update pointer
118 : LDA 7, 81(0) ;  Call hasDivisorFrom
119 : LD 1, 3(5) ;  Load callee return value into R1
120 : LDC  4, 4(0) ;  Load frame size
121 : SUB  5, 5, 4 ;  Restore pointer
122 : ADD  1, 2, 1 ;  R1 = left OR right
123 : LDA  7, 125(0) ;  Skip ELSE block
124 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
125 : ST   1, 3(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
129 : LDA  3, 3(5) ; Restore Callee frame base
130 : ST 1, 1(3) ;  Store argument 0 into callee frame
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : LDA  3, 3(5) ; Restore Callee frame base
133 : ST 1, 2(3) ;  Store argument 1 into callee frame
134 : LDA  3, 3(5) ; Restore Call frame base
135 : LDA 6, 139(0) ;  Compute return address
136 : ST 6, 0(3) ;  Store return address in callee frame
137 : ADD  5, 3, 0 ;  Update pointer
138 : LDA 7, 81(0) ;  Call hasDivisorFrom
139 : LD 1, 3(5) ;  Load callee return value into R1
140 : LDC  4, 3(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : LDC  2, 1(0) ;  Load 1 into R2
143 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
144 : ST   1, 2(5) ;  Store function result into stack frame
145 : LD   6, 0(5) ;  Load return address
146 : LDA  7, 0(6) ;  Return to caller
147 : LD   1, 1(5) ;  Load parameter 'x' into R1
148 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
149 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
150 : DIV  1, 2, 1 ;  R1 = left / right
151 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
152 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
153 : SUB  1, 2, 1 ;  left - right for equality check
154 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
155 : LDC  1, 0(0) ;  false
156 : LDA  7, 1(7) ;  skip setting true
157 : LDC  1, 1(0) ;  true
158 : JEQ  1, 161(0) ;  If condition is false, jump to ELSE
159 : LD   1, 2(5) ;  Load parameter 'y' into R1
160 : LDA  7, 181(0) ;  Skip ELSE block
161 : LD   1, 1(5) ;  Load parameter 'x' into R1
162 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
163 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
164 : DIV  1, 2, 1 ;  R1 = left / right
165 : LDA  3, 4(5) ; Restore Callee frame base
166 : ST 1, 1(3) ;  Store argument 0 into callee frame
167 : LD   1, 2(5) ;  Load parameter 'y' into R1
168 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
169 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
170 : ADD  1, 2, 1 ;  R1 = left + right
171 : LDA  3, 4(5) ; Restore Callee frame base
172 : ST 1, 2(3) ;  Store argument 1 into callee frame
173 : LDA  3, 4(5) ; Restore Call frame base
174 : LDA 6, 178(0) ;  Compute return address
175 : ST 6, 0(3) ;  Store return address in callee frame
176 : ADD  5, 3, 0 ;  Update pointer
177 : LDA 7, 147(0) ;  Call log10Helper
178 : LD 1, 3(5) ;  Load callee return value into R1
179 : LDC  4, 4(0) ;  Load frame size
180 : SUB  5, 5, 4 ;  Restore pointer
181 : ST   1, 3(5) ;  Store function result into stack frame
182 : LD   6, 0(5) ;  Load return address
183 : LDA  7, 0(6) ;  Return to caller
184 : LD   1, 1(5) ;  Load parameter 'x' into R1
185 : LDA  3, 3(5) ; Restore Callee frame base
186 : ST 1, 1(3) ;  Store argument 0 into callee frame
187 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
188 : LDA  3, 3(5) ; Restore Callee frame base
189 : ST 1, 2(3) ;  Store argument 1 into callee frame
190 : LDA  3, 3(5) ; Restore Call frame base
191 : LDA 6, 195(0) ;  Compute return address
192 : ST 6, 0(3) ;  Store return address in callee frame
193 : ADD  5, 3, 0 ;  Update pointer
194 : LDA 7, 147(0) ;  Call log10Helper
195 : LD 1, 3(5) ;  Load callee return value into R1
196 : LDC  4, 3(0) ;  Load frame size
197 : SUB  5, 5, 4 ;  Restore pointer
198 : ST   1, 2(5) ;  Store function result into stack frame
199 : LD   6, 0(5) ;  Load return address
200 : LDA  7, 0(6) ;  Return to caller
201 : LD   1, 2(5) ;  Load parameter 'power' into R1
202 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
203 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
204 : SUB  1, 2, 1 ;  left - right for equality check
205 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
206 : LDC  1, 0(0) ;  false
207 : LDA  7, 1(7) ;  skip setting true
208 : LDC  1, 1(0) ;  true
209 : JEQ  1, 212(0) ;  If condition is false, jump to ELSE
210 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
211 : LDA  7, 246(0) ;  Skip ELSE block
212 : LD   1, 2(5) ;  Load parameter 'power' into R1
213 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
214 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
215 : SUB  1, 2, 1 ;  left - right for equality check
216 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
217 : LDC  1, 0(0) ;  false
218 : LDA  7, 1(7) ;  skip setting true
219 : LDC  1, 1(0) ;  true
220 : JEQ  1, 223(0) ;  If condition is false, jump to ELSE
221 : LD   1, 3(5) ;  Load parameter 'total' into R1
222 : LDA  7, 246(0) ;  Skip ELSE block
223 : LD   1, 1(5) ;  Load parameter 'base' into R1
224 : LDA  3, 5(5) ; Restore Callee frame base
225 : ST 1, 1(3) ;  Store argument 0 into callee frame
226 : LD   1, 2(5) ;  Load parameter 'power' into R1
227 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
228 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
229 : SUB  1, 2, 1 ;  R1 = left - right
230 : LDA  3, 5(5) ; Restore Callee frame base
231 : ST 1, 2(3) ;  Store argument 1 into callee frame
232 : LD   1, 1(5) ;  Load parameter 'base' into R1
233 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
234 : LD   1, 3(5) ;  Load parameter 'total' into R1
235 : MUL  1, 2, 1 ;  R1 = left * right
236 : LDA  3, 5(5) ; Restore Callee frame base
237 : ST 1, 3(3) ;  Store argument 2 into callee frame
238 : LDA  3, 5(5) ; Restore Call frame base
239 : LDA 6, 243(0) ;  Compute return address
240 : ST 6, 0(3) ;  Store return address in callee frame
241 : ADD  5, 3, 0 ;  Update pointer
242 : LDA 7, 201(0) ;  Call powHelper
243 : LD 1, 4(5) ;  Load callee return value into R1
244 : LDC  4, 5(0) ;  Load frame size
245 : SUB  5, 5, 4 ;  Restore pointer
246 : ST   1, 4(5) ;  Store function result into stack frame
247 : LD   6, 0(5) ;  Load return address
248 : LDA  7, 0(6) ;  Return to caller
249 : LD   1, 1(5) ;  Load parameter 'x' into R1
250 : LDA  3, 4(5) ; Restore Callee frame base
251 : ST 1, 1(3) ;  Store argument 0 into callee frame
252 : LD   1, 2(5) ;  Load parameter 'y' into R1
253 : LDA  3, 4(5) ; Restore Callee frame base
254 : ST 1, 2(3) ;  Store argument 1 into callee frame
255 : LD   1, 1(5) ;  Load parameter 'x' into R1
256 : LDA  3, 4(5) ; Restore Callee frame base
257 : ST 1, 3(3) ;  Store argument 2 into callee frame
258 : LDA  3, 4(5) ; Restore Call frame base
259 : LDA 6, 263(0) ;  Compute return address
260 : ST 6, 0(3) ;  Store return address in callee frame
261 : ADD  5, 3, 0 ;  Update pointer
262 : LDA 7, 201(0) ;  Call powHelper
263 : LD 1, 4(5) ;  Load callee return value into R1
264 : LDC  4, 4(0) ;  Load frame size
265 : SUB  5, 5, 4 ;  Restore pointer
266 : ST   1, 3(5) ;  Store function result into stack frame
267 : LD   6, 0(5) ;  Load return address
268 : LDA  7, 0(6) ;  Return to caller
269 : LD   1, 1(5) ;  Load parameter 'x' into R1
270 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
271 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
272 : DIV  1, 2, 1 ;  R1 = left / right
273 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
274 : LD   1, 1(5) ;  Load parameter 'x' into R1
275 : LDA  3, 3(5) ; Restore Callee frame base
276 : ST 1, 1(3) ;  Store argument 0 into callee frame
277 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
278 : LDA  3, 3(5) ; Restore Callee frame base
279 : ST 1, 2(3) ;  Store argument 1 into callee frame
280 : LDA  3, 3(5) ; Restore Call frame base
281 : LDA 6, 285(0) ;  Compute return address
282 : ST 6, 0(3) ;  Store return address in callee frame
283 : ADD  5, 3, 0 ;  Update pointer
284 : LDA 7, 26(0) ;  Call mod
285 : LD 1, 3(5) ;  Load callee return value into R1
286 : LDC  4, 3(0) ;  Load frame size
287 : SUB  5, 5, 4 ;  Restore pointer
288 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
289 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
290 : LDA  3, 3(5) ; Restore Callee frame base
291 : ST 1, 1(3) ;  Store argument 0 into callee frame
292 : LD   1, 1(5) ;  Load parameter 'x' into R1
293 : LDA  3, 3(5) ; Restore Callee frame base
294 : ST 1, 1(3) ;  Store argument 0 into callee frame
295 : LDA  3, 3(5) ; Restore Call frame base
296 : LDA 6, 300(0) ;  Compute return address
297 : ST 6, 0(3) ;  Store return address in callee frame
298 : ADD  5, 3, 0 ;  Update pointer
299 : LDA 7, 184(0) ;  Call log10
300 : LD 1, 2(5) ;  Load callee return value into R1
301 : LDC  4, 3(0) ;  Load frame size
302 : SUB  5, 5, 4 ;  Restore pointer
303 : LDA  3, 3(5) ; Restore Callee frame base
304 : ST 1, 2(3) ;  Store argument 1 into callee frame
305 : LDA  3, 3(5) ; Restore Call frame base
306 : LDA 6, 310(0) ;  Compute return address
307 : ST 6, 0(3) ;  Store return address in callee frame
308 : ADD  5, 3, 0 ;  Update pointer
309 : LDA 7, 249(0) ;  Call pow
310 : LD 1, 3(5) ;  Load callee return value into R1
311 : LDC  4, 3(0) ;  Load frame size
312 : SUB  5, 5, 4 ;  Restore pointer
313 : MUL  1, 2, 1 ;  R1 = left * right
314 : ADD  1, 2, 1 ;  R1 = left + right
315 : ST   1, 2(5) ;  Store function result into stack frame
316 : LD   6, 0(5) ;  Load return address
317 : LDA  7, 0(6) ;  Return to caller
318 : LD   1, 1(5) ;  Load parameter 'x' into R1
319 : LDA  3, 3(5) ;  Update DMEM pointer
320 : LDA 6, 324(0) ;  Compute return address
321 : ST   6, 0(3) ;  Store return address
322 : ADD  5, 3, 0 ;  Updated Pointer
323 : LDA  7, 8(0) ; Call print
324 : LDC  4, 3(0) ;  Load frame size
325 : SUB  5, 5, 4 ;  Restore pointer
326 : ST   1, 2(5) ;  Store function result into stack frame
327 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
328 : ST   1, 2(5) ;  Store function result into stack frame
329 : LD   6, 0(5) ;  Load return address
330 : LDA  7, 0(6) ;  Return to caller
331 : LD   1, 2(5) ;  Load parameter 'turns' into R1
332 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
333 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
334 : SUB  1, 2, 1 ;  left - right for equality check
335 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
336 : LDC  1, 0(0) ;  false
337 : LDA  7, 1(7) ;  skip setting true
338 : LDC  1, 1(0) ;  true
339 : JEQ  1, 342(0) ;  If condition is false, jump to ELSE
340 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
341 : LDA  7, 382(0) ;  Skip ELSE block
342 : LD   1, 1(5) ;  Load parameter 'x' into R1
343 : LDA  3, 4(5) ; Restore Callee frame base
344 : ST 1, 1(3) ;  Store argument 0 into callee frame
345 : LDA  3, 4(5) ; Restore Call frame base
346 : LDA 6, 350(0) ;  Compute return address
347 : ST 6, 0(3) ;  Store return address in callee frame
348 : ADD  5, 3, 0 ;  Update pointer
349 : LDA 7, 128(0) ;  Call isPrime
350 : LD 1, 2(5) ;  Load callee return value into R1
351 : LDC  4, 4(0) ;  Load frame size
352 : SUB  5, 5, 4 ;  Restore pointer
353 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
354 : LD   1, 1(5) ;  Load parameter 'x' into R1
355 : LDA  3, 4(5) ; Restore Callee frame base
356 : ST 1, 1(3) ;  Store argument 0 into callee frame
357 : LDA  3, 4(5) ; Restore Call frame base
358 : LDA 6, 362(0) ;  Compute return address
359 : ST 6, 0(3) ;  Store return address in callee frame
360 : ADD  5, 3, 0 ;  Update pointer
361 : LDA 7, 269(0) ;  Call rotate
362 : LD 1, 2(5) ;  Load callee return value into R1
363 : LDC  4, 4(0) ;  Load frame size
364 : SUB  5, 5, 4 ;  Restore pointer
365 : LDA  3, 4(5) ; Restore Callee frame base
366 : ST 1, 1(3) ;  Store argument 0 into callee frame
367 : LD   1, 2(5) ;  Load parameter 'turns' into R1
368 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
369 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
370 : SUB  1, 2, 1 ;  R1 = left - right
371 : LDA  3, 4(5) ; Restore Callee frame base
372 : ST 1, 2(3) ;  Store argument 1 into callee frame
373 : LDA  3, 4(5) ; Restore Call frame base
374 : LDA 6, 378(0) ;  Compute return address
375 : ST 6, 0(3) ;  Store return address in callee frame
376 : ADD  5, 3, 0 ;  Update pointer
377 : LDA 7, 331(0) ;  Call isCircularPrimeHelper
378 : LD 1, 3(5) ;  Load callee return value into R1
379 : LDC  4, 4(0) ;  Load frame size
380 : SUB  5, 5, 4 ;  Restore pointer
381 : MUL  1, 2, 1 ;  R1 = left AND right
382 : ST   1, 3(5) ;  Store function result into stack frame
383 : LD   6, 0(5) ;  Load return address
384 : LDA  7, 0(6) ;  Return to caller
385 : LD   1, 1(5) ;  Load parameter 'x' into R1
386 : LDA  3, 3(5) ; Restore Callee frame base
387 : ST 1, 1(3) ;  Store argument 0 into callee frame
388 : LD   1, 1(5) ;  Load parameter 'x' into R1
389 : LDA  3, 3(5) ; Restore Callee frame base
390 : ST 1, 1(3) ;  Store argument 0 into callee frame
391 : LDA  3, 3(5) ; Restore Call frame base
392 : LDA 6, 396(0) ;  Compute return address
393 : ST 6, 0(3) ;  Store return address in callee frame
394 : ADD  5, 3, 0 ;  Update pointer
395 : LDA 7, 184(0) ;  Call log10
396 : LD 1, 2(5) ;  Load callee return value into R1
397 : LDC  4, 3(0) ;  Load frame size
398 : SUB  5, 5, 4 ;  Restore pointer
399 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
400 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
401 : ADD  1, 2, 1 ;  R1 = left + right
402 : LDA  3, 3(5) ; Restore Callee frame base
403 : ST 1, 2(3) ;  Store argument 1 into callee frame
404 : LDA  3, 3(5) ; Restore Call frame base
405 : LDA 6, 409(0) ;  Compute return address
406 : ST 6, 0(3) ;  Store return address in callee frame
407 : ADD  5, 3, 0 ;  Update pointer
408 : LDA 7, 331(0) ;  Call isCircularPrimeHelper
409 : LD 1, 3(5) ;  Load callee return value into R1
410 : LDC  4, 3(0) ;  Load frame size
411 : SUB  5, 5, 4 ;  Restore pointer
412 : JEQ  1, 425(0) ;  If condition is false, jump to ELSE
413 : LD   1, 1(5) ;  Load parameter 'x' into R1
414 : LDA  3, 3(5) ; Restore Callee frame base
415 : ST 1, 1(3) ;  Store argument 0 into callee frame
416 : LDA  3, 3(5) ; Restore Call frame base
417 : LDA 6, 421(0) ;  Compute return address
418 : ST 6, 0(3) ;  Store return address in callee frame
419 : ADD  5, 3, 0 ;  Update pointer
420 : LDA 7, 318(0) ;  Call report
421 : LD 1, 2(5) ;  Load callee return value into R1
422 : LDC  4, 3(0) ;  Load frame size
423 : SUB  5, 5, 4 ;  Restore pointer
424 : LDA  7, 426(0) ;  Skip ELSE block
425 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
426 : ST   1, 2(5) ;  Store function result into stack frame
427 : LD   6, 0(5) ;  Load return address
428 : LDA  7, 0(6) ;  Return to caller
429 : LD   1, 2(5) ;  Load parameter 'x' into R1
430 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
431 : LD   1, 1(5) ;  Load parameter 'top' into R1
432 : SUB  1, 2, 1 ;  left - right for less-than check
433 : JLT  1, 2(7) ;  If R1 < 0, jump to true
434 : LDC  1, 0(0) ;  false
435 : LDA  7, 1(7) ;  skip setting true
436 : LDC  1, 1(0) ;  true
437 : JEQ  1, 495(0) ;  If condition is false, jump to ELSE
438 : LD   1, 2(5) ;  Load parameter 'x' into R1
439 : LDA  3, 5(5) ; Restore Callee frame base
440 : ST 1, 1(3) ;  Store argument 0 into callee frame
441 : LDA  3, 5(5) ; Restore Call frame base
442 : LDA 6, 446(0) ;  Compute return address
443 : ST 6, 0(3) ;  Store return address in callee frame
444 : ADD  5, 3, 0 ;  Update pointer
445 : LDA 7, 385(0) ;  Call isCircularPrime
446 : LD 1, 2(5) ;  Load callee return value into R1
447 : LDC  4, 5(0) ;  Load frame size
448 : SUB  5, 5, 4 ;  Restore pointer
449 : JEQ  1, 474(0) ;  If condition is false, jump to ELSE
450 : LD   1, 1(5) ;  Load parameter 'top' into R1
451 : LDA  3, 5(5) ; Restore Callee frame base
452 : ST 1, 1(3) ;  Store argument 0 into callee frame
453 : LD   1, 2(5) ;  Load parameter 'x' into R1
454 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
455 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
456 : ADD  1, 2, 1 ;  R1 = left + right
457 : LDA  3, 5(5) ; Restore Callee frame base
458 : ST 1, 2(3) ;  Store argument 1 into callee frame
459 : LD   1, 3(5) ;  Load parameter 'count' into R1
460 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
461 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
462 : ADD  1, 2, 1 ;  R1 = left + right
463 : LDA  3, 5(5) ; Restore Callee frame base
464 : ST 1, 3(3) ;  Store argument 2 into callee frame
465 : LDA  3, 5(5) ; Restore Call frame base
466 : LDA 6, 470(0) ;  Compute return address
467 : ST 6, 0(3) ;  Store return address in callee frame
468 : ADD  5, 3, 0 ;  Update pointer
469 : LDA 7, 429(0) ;  Call circularPrimesToHelper
470 : LD 1, 4(5) ;  Load callee return value into R1
471 : LDC  4, 5(0) ;  Load frame size
472 : SUB  5, 5, 4 ;  Restore pointer
473 : LDA  7, 494(0) ;  Skip ELSE block
474 : LD   1, 1(5) ;  Load parameter 'top' into R1
475 : LDA  3, 5(5) ; Restore Callee frame base
476 : ST 1, 1(3) ;  Store argument 0 into callee frame
477 : LD   1, 2(5) ;  Load parameter 'x' into R1
478 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
479 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
480 : ADD  1, 2, 1 ;  R1 = left + right
481 : LDA  3, 5(5) ; Restore Callee frame base
482 : ST 1, 2(3) ;  Store argument 1 into callee frame
483 : LD   1, 3(5) ;  Load parameter 'count' into R1
484 : LDA  3, 5(5) ; Restore Callee frame base
485 : ST 1, 3(3) ;  Store argument 2 into callee frame
486 : LDA  3, 5(5) ; Restore Call frame base
487 : LDA 6, 491(0) ;  Compute return address
488 : ST 6, 0(3) ;  Store return address in callee frame
489 : ADD  5, 3, 0 ;  Update pointer
490 : LDA 7, 429(0) ;  Call circularPrimesToHelper
491 : LD 1, 4(5) ;  Load callee return value into R1
492 : LDC  4, 5(0) ;  Load frame size
493 : SUB  5, 5, 4 ;  Restore pointer
494 : LDA  7, 496(0) ;  Skip ELSE block
495 : LD   1, 3(5) ;  Load parameter 'count' into R1
496 : ST   1, 4(5) ;  Store function result into stack frame
497 : LD   6, 0(5) ;  Load return address
498 : LDA  7, 0(6) ;  Return to caller
499 : LD   1, 1(5) ;  Load parameter 'x' into R1
500 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
501 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
502 : ADD  1, 2, 1 ;  R1 = left + right
503 : LDA  3, 3(5) ; Restore Callee frame base
504 : ST 1, 1(3) ;  Store argument 0 into callee frame
505 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
506 : LDA  3, 3(5) ; Restore Callee frame base
507 : ST 1, 2(3) ;  Store argument 1 into callee frame
508 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
509 : LDA  3, 3(5) ; Restore Callee frame base
510 : ST 1, 3(3) ;  Store argument 2 into callee frame
511 : LDA  3, 3(5) ; Restore Call frame base
512 : LDA 6, 516(0) ;  Compute return address
513 : ST 6, 0(3) ;  Store return address in callee frame
514 : ADD  5, 3, 0 ;  Update pointer
515 : LDA 7, 429(0) ;  Call circularPrimesToHelper
516 : LD 1, 4(5) ;  Load callee return value into R1
517 : LDC  4, 3(0) ;  Load frame size
518 : SUB  5, 5, 4 ;  Restore pointer
519 : ST   1, 2(5) ;  Store function result into stack frame
520 : LD   6, 0(5) ;  Load return address
521 : LDA  7, 0(6) ;  Return to caller
