0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return addess from stack frame.
13 : LDA 7, 0(6) ;  Jump to return address.
14 : LDC 1, 3(0) ;  Load integer-literal value into register 1
15 : ADD 3, 1, 0 ;  Stash right operand in R3
16 : LD 1, 2(5) ;  Load parameter 'selector' into R1
17 : ADD 2, 1, 0 ;  Move left operand to register 2
18 : ADD 1, 3, 0 ;  Restore right operand from R3
19 : SUB 1, 2, 1 ;  left - right for equality check
20 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 37(0) ;  If condition is false, jump to ELSE
25 : LDA 3, 3(5) ; Base of callee frame (stable)
26 : LD 1, 1(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(3) ; Store return in callee frame (via R3)
30 : ADD 5, 3, 0 ; Push callee frame
31 : LDA 7, 331(0) ; Call emirp
32 : LD 1, 2(5) ;  Load function result
33 : LDC 2, 3(0) ;  Caller frame size
34 : SUB 5, 5, 2 ;  Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LDA 7, 85(0) ;  Skip ELSE block
37 : LDC 1, 5(0) ;  Load integer-literal value into register 1
38 : ADD 3, 1, 0 ;  Stash right operand in R3
39 : LD 1, 2(5) ;  Load parameter 'selector' into R1
40 : ADD 2, 1, 0 ;  Move left operand to register 2
41 : ADD 1, 3, 0 ;  Restore right operand from R3
42 : SUB 1, 2, 1 ;  left - right for equality check
43 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
44 : LDC 1, 0(0) ;  false
45 : LDA 7, 1(7) ;  skip setting true
46 : LDC 1, 1(0) ;  true
47 : JEQ 1, 60(0) ;  If condition is false, jump to ELSE
48 : LDA 3, 3(5) ; Base of callee frame (stable)
49 : LD 1, 1(5) ;  Load parameter 'n' into R1
50 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(3) ; Store return in callee frame (via R3)
53 : ADD 5, 3, 0 ; Push callee frame
54 : LDA 7, 288(0) ; Call snowball
55 : LD 1, 2(5) ;  Load function result
56 : LDC 2, 3(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop back to caller
58 : ST 1, 3(5) ; Store result into caller’s frame
59 : LDA 7, 85(0) ;  Skip ELSE block
60 : LDC 1, 8(0) ;  Load integer-literal value into register 1
61 : ADD 3, 1, 0 ;  Stash right operand in R3
62 : LD 1, 2(5) ;  Load parameter 'selector' into R1
63 : ADD 2, 1, 0 ;  Move left operand to register 2
64 : ADD 1, 3, 0 ;  Restore right operand from R3
65 : SUB 1, 2, 1 ;  left - right for equality check
66 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
67 : LDC 1, 0(0) ;  false
68 : LDA 7, 1(7) ;  skip setting true
69 : LDC 1, 1(0) ;  true
70 : JEQ 1, 83(0) ;  If condition is false, jump to ELSE
71 : LDA 3, 3(5) ; Base of callee frame (stable)
72 : LD 1, 1(5) ;  Load parameter 'n' into R1
73 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(3) ; Store return in callee frame (via R3)
76 : ADD 5, 3, 0 ; Push callee frame
77 : LDA 7, 258(0) ; Call doBoth
78 : LD 1, 2(5) ;  Load function result
79 : LDC 2, 3(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop back to caller
81 : ST 1, 3(5) ; Store result into caller’s frame
82 : LDA 7, 85(0) ;  Skip ELSE block
83 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
84 : ST 1, 3(5) ;  Store result into current frame's return slot
85 : LD 1, 3(5) ;  Load return value into register 1
86 : LD 6, 0(5) ;  Load return address for main function into register 6
87 : LDA 7, 0(6) ;  Jump to return address of main function
88 : LD 1, 2(5) ;  Load parameter 'n' into R1
89 : ADD 3, 1, 0 ;  Stash right operand in R3
90 : LD 1, 1(5) ;  Load parameter 'm' into R1
91 : ADD 2, 1, 0 ;  Move left operand to register 2
92 : ADD 1, 3, 0 ;  Restore right operand from R3
93 : DIV 1, 2, 1 ;  R1 = left / right
94 : ADD 2, 1, 0 ;  Move left operand to register 2
95 : LD 1, 2(5) ;  Load parameter 'n' into R1
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ADD 3, 1, 0 ;  Move right operand to register 3
98 : LD 1, 1(5) ;  Load parameter 'm' into R1
99 : ADD 2, 1, 0 ;  Move left operand to register 2
100 : ADD 1, 3, 0 ;  Move right operand to register 1
101 : SUB 1, 2, 1 ;  R1 = left - right
102 : ST 1, 3(5) ;  Store function result into stack frame
103 : LD 6, 0(5) ;  Load return address
104 : LDA 7, 0(6) ;  Return to caller
105 : LDC 1, 0(0) ;  Load integer-literal value into register 1
106 : ADD 3, 1, 0 ;  Stash right operand in R3
107 : LD 1, 1(5) ;  Load parameter 'n' into R1
108 : ADD 2, 1, 0 ;  Move left operand to register 2
109 : ADD 1, 3, 0 ;  Restore right operand from R3
110 : SUB 1, 2, 1 ;  left - right for equality check
111 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
112 : LDC 1, 0(0) ;  false
113 : LDA 7, 1(7) ;  skip setting true
114 : LDC 1, 1(0) ;  true
115 : JEQ 1, 118(0) ;  If condition is false, jump to ELSE
116 : LD 1, 2(5) ;  Load parameter 'nR' into R1
117 : LDA 7, 154(0) ;  Skip ELSE block
118 : LDA 3, 4(5) ; Base of callee frame (stable)
119 : LDC 1, 10(0) ;  Load integer-literal value into register 1
120 : ADD 3, 1, 0 ;  Stash right operand in R3
121 : LD 1, 1(5) ;  Load parameter 'n' into R1
122 : ADD 2, 1, 0 ;  Move left operand to register 2
123 : ADD 1, 3, 0 ;  Restore right operand from R3
124 : DIV 1, 2, 1 ;  R1 = left / right
125 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
126 : LD 1, 2(5) ;  Load parameter 'nR' into R1
127 : ADD 3, 1, 0 ;  Stash right operand in R3
128 : LDC 1, 10(0) ;  Load integer-literal value into register 1
129 : ADD 2, 1, 0 ;  Move left operand to register 2
130 : ADD 1, 3, 0 ;  Restore right operand from R3
131 : MUL 1, 2, 1 ;  R1 = left * right
132 : ADD 2, 1, 0 ;  Move left operand to register 2
133 : LDA 3, 4(5) ; Base of callee frame (stable)
134 : LD 1, 1(5) ;  Load parameter 'n' into R1
135 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
136 : LDC 1, 10(0) ;  Load integer-literal value into register 1
137 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(3) ; Store return in callee frame (via R3)
140 : ADD 5, 3, 0 ; Push callee frame
141 : LDA 7, 88(0) ; Call MOD
142 : LD 1, 3(5) ;  Load function result
143 : LDC 2, 4(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop back to caller
145 : ADD 1, 2, 1 ;  R1 = left + right
146 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(3) ; Store return in callee frame (via R3)
149 : ADD 5, 3, 0 ; Push callee frame
150 : LDA 7, 105(0) ; Call reverseL
151 : LD 1, 3(5) ;  Load function result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop back to caller
154 : ST 1, 3(5) ;  Store function result into stack frame
155 : LD 6, 0(5) ;  Load return address
156 : LDA 7, 0(6) ;  Return to caller
157 : LDA 3, 4(5) ; Base of callee frame (stable)
158 : LD 1, 1(5) ;  Load parameter 'n' into R1
159 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
160 : LDC 1, 0(0) ;  Load integer-literal value into register 1
161 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(3) ; Store return in callee frame (via R3)
164 : ADD 5, 3, 0 ; Push callee frame
165 : LDA 7, 105(0) ; Call reverseL
166 : LD 1, 3(5) ;  Load function result
167 : LDC 2, 4(0) ;  Caller frame size
168 : SUB 5, 5, 2 ;  Pop back to caller
169 : ST 1, 2(5) ;  Store function result into stack frame
170 : LD 6, 0(5) ;  Load return address
171 : LDA 7, 0(6) ;  Return to caller
172 : LDA 3, 4(5) ; Base of callee frame (stable)
173 : LD 1, 2(5) ;  Load parameter 'b' into R1
174 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
175 : LD 1, 1(5) ;  Load parameter 'a' into R1
176 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(3) ; Store return in callee frame (via R3)
179 : ADD 5, 3, 0 ; Push callee frame
180 : LDA 7, 88(0) ; Call MOD
181 : LD 1, 3(5) ;  Load function result
182 : LDC 2, 4(0) ;  Caller frame size
183 : SUB 5, 5, 2 ;  Pop back to caller
184 : ADD 2, 1, 0 ;  Move left operand to register 2
185 : LDC 1, 0(0) ;  Load integer-literal value into register 1
186 : SUB 1, 2, 1 ;  left - right for equality check
187 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
188 : LDC 1, 0(0) ;  false
189 : LDA 7, 1(7) ;  skip setting true
190 : LDC 1, 1(0) ;  true
191 : ST 1, 3(5) ;  Store function result into stack frame
192 : LD 6, 0(5) ;  Load return address
193 : LDA 7, 0(6) ;  Return to caller
194 : LD 1, 2(5) ;  Load parameter 'n' into R1
195 : ADD 3, 1, 0 ;  Stash right operand in R3
196 : LD 1, 1(5) ;  Load parameter 'i' into R1
197 : ADD 2, 1, 0 ;  Move left operand to register 2
198 : ADD 1, 3, 0 ;  Restore right operand from R3
199 : SUB 1, 2, 1 ;  left - right for less-than check
200 : JLT 1, 2(7) ;  If R1 < 0, jump to true
201 : LDC 1, 0(0) ;  false
202 : LDA 7, 1(7) ;  skip setting true
203 : LDC 1, 1(0) ;  true
204 : JEQ 1, 237(0) ;  If condition is false, jump to ELSE
205 : LDA 3, 4(5) ; Base of callee frame (stable)
206 : LD 1, 1(5) ;  Load parameter 'i' into R1
207 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
208 : LD 1, 2(5) ;  Load parameter 'n' into R1
209 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
210 : LDA 6, 214(0) ; Return address
211 : ST 6, 0(3) ; Store return in callee frame (via R3)
212 : ADD 5, 3, 0 ; Push callee frame
213 : LDA 7, 172(0) ; Call divides
214 : LD 1, 3(5) ;  Load function result
215 : LDC 2, 4(0) ;  Caller frame size
216 : SUB 5, 5, 2 ;  Pop back to caller
217 : ADD 2, 1, 0 ;  Move left operand to register 2
218 : LDA 3, 4(5) ; Base of callee frame (stable)
219 : LDC 1, 1(0) ;  Load integer-literal value into register 1
220 : ADD 3, 1, 0 ;  Stash right operand in R3
221 : LD 1, 1(5) ;  Load parameter 'i' into R1
222 : ADD 2, 1, 0 ;  Move left operand to register 2
223 : ADD 1, 3, 0 ;  Restore right operand from R3
224 : ADD 1, 2, 1 ;  R1 = left + right
225 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
226 : LD 1, 2(5) ;  Load parameter 'n' into R1
227 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
228 : LDA 6, 232(0) ; Return address
229 : ST 6, 0(3) ; Store return in callee frame (via R3)
230 : ADD 5, 3, 0 ; Push callee frame
231 : LDA 7, 194(0) ; Call hasDivisorFrom
232 : LD 1, 3(5) ;  Load function result
233 : LDC 2, 4(0) ;  Caller frame size
234 : SUB 5, 5, 2 ;  Pop back to caller
235 : ADD 1, 2, 1 ;  R1 = left OR right
236 : LDA 7, 238(0) ;  Skip ELSE block
237 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
238 : ST 1, 3(5) ;  Store function result into stack frame
239 : LD 6, 0(5) ;  Load return address
240 : LDA 7, 0(6) ;  Return to caller
241 : LDA 3, 4(5) ; Base of callee frame (stable)
242 : LDC 1, 2(0) ;  Load integer-literal value into register 1
243 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
244 : LD 1, 1(5) ;  Load parameter 'n' into R1
245 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
246 : LDA 6, 250(0) ; Return address
247 : ST 6, 0(3) ; Store return in callee frame (via R3)
248 : ADD 5, 3, 0 ; Push callee frame
249 : LDA 7, 194(0) ; Call hasDivisorFrom
250 : LD 1, 3(5) ;  Load function result
251 : LDC 2, 4(0) ;  Caller frame size
252 : SUB 5, 5, 2 ;  Pop back to caller
253 : LDC 2, 1(0) ;  Load 1 into R2
254 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
255 : ST 1, 2(5) ;  Store function result into stack frame
256 : LD 6, 0(5) ;  Load return address
257 : LDA 7, 0(6) ;  Return to caller
258 : LDA 3, 3(5) ; Base of callee frame (stable)
259 : LD 1, 1(5) ;  Load parameter 'n' into R1
260 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
261 : LDA 6, 265(0) ; Return address
262 : ST 6, 0(3) ; Store return in callee frame (via R3)
263 : ADD 5, 3, 0 ; Push callee frame
264 : LDA 7, 331(0) ; Call emirp
265 : LD 1, 2(5) ;  Load function result
266 : LDC 2, 3(0) ;  Caller frame size
267 : SUB 5, 5, 2 ;  Pop back to caller
268 : LDA 3, 3(5) ; Base of callee frame (stable)
269 : LDA 6, 273(0) ; Return address
270 : ST 6, 0(3) ; Store return addr in callee frame
271 : ADD 5, 3, 0 ; Push new frame
272 : LDA 7, 11(0) ; Call print
273 : LDC 2, 3(0) ; Caller frame size
274 : SUB 5, 5, 2 ; Pop frame
275 : LDA 3, 3(5) ; Base of callee frame (stable)
276 : LD 1, 1(5) ;  Load parameter 'n' into R1
277 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(3) ; Store return in callee frame (via R3)
280 : ADD 5, 3, 0 ; Push callee frame
281 : LDA 7, 288(0) ; Call snowball
282 : LD 1, 2(5) ;  Load function result
283 : LDC 2, 3(0) ;  Caller frame size
284 : SUB 5, 5, 2 ;  Pop back to caller
285 : ST 1, 2(5) ;  Store function result into stack frame
286 : LD 6, 0(5) ;  Load return address
287 : LDA 7, 0(6) ;  Return to caller
288 : LDA 3, 3(5) ; Base of callee frame (stable)
289 : LD 1, 1(5) ;  Load parameter 'n' into R1
290 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(3) ; Store return in callee frame (via R3)
293 : ADD 5, 3, 0 ; Push callee frame
294 : LDA 7, 241(0) ; Call isPrime
295 : LD 1, 2(5) ;  Load function result
296 : LDC 2, 3(0) ;  Caller frame size
297 : SUB 5, 5, 2 ;  Pop back to caller
298 : ADD 2, 1, 0 ;  Move left operand to register 2
299 : LDC 1, 10(0) ;  Load integer-literal value into register 1
300 : ADD 3, 1, 0 ;  Stash right operand in R3
301 : LD 1, 1(5) ;  Load parameter 'n' into R1
302 : ADD 2, 1, 0 ;  Move left operand to register 2
303 : ADD 1, 3, 0 ;  Restore right operand from R3
304 : SUB 1, 2, 1 ;  left - right for less-than check
305 : JLT 1, 2(7) ;  If R1 < 0, jump to true
306 : LDC 1, 0(0) ;  false
307 : LDA 7, 1(7) ;  skip setting true
308 : LDC 1, 1(0) ;  true
309 : JEQ 1, 312(0) ;  If condition is false, jump to ELSE
310 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
311 : LDA 7, 327(0) ;  Skip ELSE block
312 : LDA 3, 3(5) ; Base of callee frame (stable)
313 : LDC 1, 10(0) ;  Load integer-literal value into register 1
314 : ADD 3, 1, 0 ;  Stash right operand in R3
315 : LD 1, 1(5) ;  Load parameter 'n' into R1
316 : ADD 2, 1, 0 ;  Move left operand to register 2
317 : ADD 1, 3, 0 ;  Restore right operand from R3
318 : DIV 1, 2, 1 ;  R1 = left / right
319 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
320 : LDA 6, 324(0) ; Return address
321 : ST 6, 0(3) ; Store return in callee frame (via R3)
322 : ADD 5, 3, 0 ; Push callee frame
323 : LDA 7, 241(0) ; Call isPrime
324 : LD 1, 2(5) ;  Load function result
325 : LDC 2, 3(0) ;  Caller frame size
326 : SUB 5, 5, 2 ;  Pop back to caller
327 : MUL 1, 2, 1 ;  R1 = left AND right
328 : ST 1, 2(5) ;  Store function result into stack frame
329 : LD 6, 0(5) ;  Load return address
330 : LDA 7, 0(6) ;  Return to caller
331 : LDA 3, 3(5) ; Base of callee frame (stable)
332 : LD 1, 1(5) ;  Load parameter 'n' into R1
333 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
334 : LDA 6, 338(0) ; Return address
335 : ST 6, 0(3) ; Store return in callee frame (via R3)
336 : ADD 5, 3, 0 ; Push callee frame
337 : LDA 7, 241(0) ; Call isPrime
338 : LD 1, 2(5) ;  Load function result
339 : LDC 2, 3(0) ;  Caller frame size
340 : SUB 5, 5, 2 ;  Pop back to caller
341 : ADD 2, 1, 0 ;  Move left operand to register 2
342 : LDA 3, 3(5) ; Base of callee frame (stable)
343 : LDA 3, 3(5) ; Base of callee frame (stable)
344 : LD 1, 1(5) ;  Load parameter 'n' into R1
345 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
346 : LDA 6, 350(0) ; Return address
347 : ST 6, 0(3) ; Store return in callee frame (via R3)
348 : ADD 5, 3, 0 ; Push callee frame
349 : LDA 7, 157(0) ; Call reverse
350 : LD 1, 2(5) ;  Load function result
351 : LDC 2, 3(0) ;  Caller frame size
352 : SUB 5, 5, 2 ;  Pop back to caller
353 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
354 : LDA 6, 358(0) ; Return address
355 : ST 6, 0(3) ; Store return in callee frame (via R3)
356 : ADD 5, 3, 0 ; Push callee frame
357 : LDA 7, 241(0) ; Call isPrime
358 : LD 1, 2(5) ;  Load function result
359 : LDC 2, 3(0) ;  Caller frame size
360 : SUB 5, 5, 2 ;  Pop back to caller
361 : MUL 1, 2, 1 ;  R1 = left AND right
362 : ST 1, 2(5) ;  Store function result into stack frame
363 : LD 6, 0(5) ;  Load return address
364 : LDA 7, 0(6) ;  Return to caller
