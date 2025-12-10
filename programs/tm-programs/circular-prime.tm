0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDA 3, 3(5) ; Base of callee frame (stable)
13 : LD 1, 1(5) ;  Load parameter 'x' into R1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(3) ; Store return in callee frame (via R3)
17 : ADD 5, 3, 0 ; Push callee frame
18 : LDA 7, 494(0) ; Call circularPrimesTo
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD 1, 2(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to return address of main function
26 : LD 1, 2(5) ;  Load parameter 'den' into R1
27 : ADD 3, 1, 0 ;  Stash right operand in R3
28 : LD 1, 1(5) ;  Load parameter 'num' into R1
29 : ADD 2, 1, 0 ;  Move left operand to register 2
30 : ADD 1, 3, 0 ;  Restore right operand from R3
31 : SUB 1, 2, 1 ;  left - right for less-than check
32 : JLT 1, 2(7) ;  If R1 < 0, jump to true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 39(0) ;  If condition is false, jump to ELSE
37 : LD 1, 1(5) ;  Load parameter 'num' into R1
38 : LDA 7, 56(0) ;  Skip ELSE block
39 : LDA 3, 4(5) ; Base of callee frame (stable)
40 : LD 1, 2(5) ;  Load parameter 'den' into R1
41 : ADD 3, 1, 0 ;  Stash right operand in R3
42 : LD 1, 1(5) ;  Load parameter 'num' into R1
43 : ADD 2, 1, 0 ;  Move left operand to register 2
44 : ADD 1, 3, 0 ;  Restore right operand from R3
45 : SUB 1, 2, 1 ;  R1 = left - right
46 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
47 : LD 1, 2(5) ;  Load parameter 'den' into R1
48 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(3) ; Store return in callee frame (via R3)
51 : ADD 5, 3, 0 ; Push callee frame
52 : LDA 7, 26(0) ; Call mod
53 : LD 1, 3(5) ;  Load function result
54 : LDC 2, 4(0) ;  Caller frame size
55 : SUB 5, 5, 2 ;  Pop back to caller
56 : ST 1, 3(5) ;  Store function result into stack frame
57 : LD 6, 0(5) ;  Load return address
58 : LDA 7, 0(6) ;  Return to caller
59 : LDA 3, 4(5) ; Base of callee frame (stable)
60 : LD 1, 2(5) ;  Load parameter 'b' into R1
61 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
62 : LD 1, 1(5) ;  Load parameter 'a' into R1
63 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(3) ; Store return in callee frame (via R3)
66 : ADD 5, 3, 0 ; Push callee frame
67 : LDA 7, 26(0) ; Call mod
68 : LD 1, 3(5) ;  Load function result
69 : LDC 2, 4(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop back to caller
71 : ADD 2, 1, 0 ;  Move left operand to register 2
72 : LDC 1, 0(0) ;  Load integer-literal value into register 1
73 : SUB 1, 2, 1 ;  left - right for equality check
74 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
75 : LDC 1, 0(0) ;  false
76 : LDA 7, 1(7) ;  skip setting true
77 : LDC 1, 1(0) ;  true
78 : ST 1, 3(5) ;  Store function result into stack frame
79 : LD 6, 0(5) ;  Load return address
80 : LDA 7, 0(6) ;  Return to caller
81 : LD 1, 2(5) ;  Load parameter 'n' into R1
82 : ADD 3, 1, 0 ;  Stash right operand in R3
83 : LD 1, 1(5) ;  Load parameter 'i' into R1
84 : ADD 2, 1, 0 ;  Move left operand to register 2
85 : ADD 1, 3, 0 ;  Restore right operand from R3
86 : SUB 1, 2, 1 ;  left - right for less-than check
87 : JLT 1, 2(7) ;  If R1 < 0, jump to true
88 : LDC 1, 0(0) ;  false
89 : LDA 7, 1(7) ;  skip setting true
90 : LDC 1, 1(0) ;  true
91 : JEQ 1, 124(0) ;  If condition is false, jump to ELSE
92 : LDA 3, 4(5) ; Base of callee frame (stable)
93 : LD 1, 1(5) ;  Load parameter 'i' into R1
94 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
95 : LD 1, 2(5) ;  Load parameter 'n' into R1
96 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(3) ; Store return in callee frame (via R3)
99 : ADD 5, 3, 0 ; Push callee frame
100 : LDA 7, 59(0) ; Call divides
101 : LD 1, 3(5) ;  Load function result
102 : LDC 2, 4(0) ;  Caller frame size
103 : SUB 5, 5, 2 ;  Pop back to caller
104 : ADD 2, 1, 0 ;  Move left operand to register 2
105 : LDA 3, 4(5) ; Base of callee frame (stable)
106 : LDC 1, 1(0) ;  Load integer-literal value into register 1
107 : ADD 3, 1, 0 ;  Stash right operand in R3
108 : LD 1, 1(5) ;  Load parameter 'i' into R1
109 : ADD 2, 1, 0 ;  Move left operand to register 2
110 : ADD 1, 3, 0 ;  Restore right operand from R3
111 : ADD 1, 2, 1 ;  R1 = left + right
112 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
113 : LD 1, 2(5) ;  Load parameter 'n' into R1
114 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(3) ; Store return in callee frame (via R3)
117 : ADD 5, 3, 0 ; Push callee frame
118 : LDA 7, 81(0) ; Call hasDivisorFrom
119 : LD 1, 3(5) ;  Load function result
120 : LDC 2, 4(0) ;  Caller frame size
121 : SUB 5, 5, 2 ;  Pop back to caller
122 : ADD 1, 2, 1 ;  R1 = left OR right
123 : LDA 7, 125(0) ;  Skip ELSE block
124 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
125 : ST 1, 3(5) ;  Store function result into stack frame
126 : LD 6, 0(5) ;  Load return address
127 : LDA 7, 0(6) ;  Return to caller
128 : LDA 3, 4(5) ; Base of callee frame (stable)
129 : LDC 1, 2(0) ;  Load integer-literal value into register 1
130 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
131 : LD 1, 1(5) ;  Load parameter 'n' into R1
132 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(3) ; Store return in callee frame (via R3)
135 : ADD 5, 3, 0 ; Push callee frame
136 : LDA 7, 81(0) ; Call hasDivisorFrom
137 : LD 1, 3(5) ;  Load function result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop back to caller
140 : LDC 2, 1(0) ;  Load 1 into R2
141 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
142 : ST 1, 2(5) ;  Store function result into stack frame
143 : LD 6, 0(5) ;  Load return address
144 : LDA 7, 0(6) ;  Return to caller
145 : LDC 1, 10(0) ;  Load integer-literal value into register 1
146 : ADD 3, 1, 0 ;  Stash right operand in R3
147 : LD 1, 1(5) ;  Load parameter 'x' into R1
148 : ADD 2, 1, 0 ;  Move left operand to register 2
149 : ADD 1, 3, 0 ;  Restore right operand from R3
150 : DIV 1, 2, 1 ;  R1 = left / right
151 : ADD 2, 1, 0 ;  Move left operand to register 2
152 : LDC 1, 0(0) ;  Load integer-literal value into register 1
153 : SUB 1, 2, 1 ;  left - right for equality check
154 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
155 : LDC 1, 0(0) ;  false
156 : LDA 7, 1(7) ;  skip setting true
157 : LDC 1, 1(0) ;  true
158 : JEQ 1, 161(0) ;  If condition is false, jump to ELSE
159 : LD 1, 2(5) ;  Load parameter 'y' into R1
160 : LDA 7, 183(0) ;  Skip ELSE block
161 : LDA 3, 4(5) ; Base of callee frame (stable)
162 : LDC 1, 10(0) ;  Load integer-literal value into register 1
163 : ADD 3, 1, 0 ;  Stash right operand in R3
164 : LD 1, 1(5) ;  Load parameter 'x' into R1
165 : ADD 2, 1, 0 ;  Move left operand to register 2
166 : ADD 1, 3, 0 ;  Restore right operand from R3
167 : DIV 1, 2, 1 ;  R1 = left / right
168 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
169 : LDC 1, 1(0) ;  Load integer-literal value into register 1
170 : ADD 3, 1, 0 ;  Stash right operand in R3
171 : LD 1, 2(5) ;  Load parameter 'y' into R1
172 : ADD 2, 1, 0 ;  Move left operand to register 2
173 : ADD 1, 3, 0 ;  Restore right operand from R3
174 : ADD 1, 2, 1 ;  R1 = left + right
175 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(3) ; Store return in callee frame (via R3)
178 : ADD 5, 3, 0 ; Push callee frame
179 : LDA 7, 145(0) ; Call log10Helper
180 : LD 1, 3(5) ;  Load function result
181 : LDC 2, 4(0) ;  Caller frame size
182 : SUB 5, 5, 2 ;  Pop back to caller
183 : ST 1, 3(5) ;  Store function result into stack frame
184 : LD 6, 0(5) ;  Load return address
185 : LDA 7, 0(6) ;  Return to caller
186 : LDA 3, 4(5) ; Base of callee frame (stable)
187 : LD 1, 1(5) ;  Load parameter 'x' into R1
188 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
189 : LDC 1, 0(0) ;  Load integer-literal value into register 1
190 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(3) ; Store return in callee frame (via R3)
193 : ADD 5, 3, 0 ; Push callee frame
194 : LDA 7, 145(0) ; Call log10Helper
195 : LD 1, 3(5) ;  Load function result
196 : LDC 2, 4(0) ;  Caller frame size
197 : SUB 5, 5, 2 ;  Pop back to caller
198 : ST 1, 2(5) ;  Store function result into stack frame
199 : LD 6, 0(5) ;  Load return address
200 : LDA 7, 0(6) ;  Return to caller
201 : LDC 1, 0(0) ;  Load integer-literal value into register 1
202 : ADD 3, 1, 0 ;  Stash right operand in R3
203 : LD 1, 2(5) ;  Load parameter 'power' into R1
204 : ADD 2, 1, 0 ;  Move left operand to register 2
205 : ADD 1, 3, 0 ;  Restore right operand from R3
206 : SUB 1, 2, 1 ;  left - right for equality check
207 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
208 : LDC 1, 0(0) ;  false
209 : LDA 7, 1(7) ;  skip setting true
210 : LDC 1, 1(0) ;  true
211 : JEQ 1, 214(0) ;  If condition is false, jump to ELSE
212 : LDC 1, 1(0) ;  Load integer-literal value into register 1
213 : LDA 7, 251(0) ;  Skip ELSE block
214 : LDC 1, 1(0) ;  Load integer-literal value into register 1
215 : ADD 3, 1, 0 ;  Stash right operand in R3
216 : LD 1, 2(5) ;  Load parameter 'power' into R1
217 : ADD 2, 1, 0 ;  Move left operand to register 2
218 : ADD 1, 3, 0 ;  Restore right operand from R3
219 : SUB 1, 2, 1 ;  left - right for equality check
220 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
221 : LDC 1, 0(0) ;  false
222 : LDA 7, 1(7) ;  skip setting true
223 : LDC 1, 1(0) ;  true
224 : JEQ 1, 227(0) ;  If condition is false, jump to ELSE
225 : LD 1, 3(5) ;  Load parameter 'total' into R1
226 : LDA 7, 251(0) ;  Skip ELSE block
227 : LDA 3, 5(5) ; Base of callee frame (stable)
228 : LD 1, 1(5) ;  Load parameter 'base' into R1
229 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
230 : LDC 1, 1(0) ;  Load integer-literal value into register 1
231 : ADD 3, 1, 0 ;  Stash right operand in R3
232 : LD 1, 2(5) ;  Load parameter 'power' into R1
233 : ADD 2, 1, 0 ;  Move left operand to register 2
234 : ADD 1, 3, 0 ;  Restore right operand from R3
235 : SUB 1, 2, 1 ;  R1 = left - right
236 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
237 : LD 1, 3(5) ;  Load parameter 'total' into R1
238 : ADD 3, 1, 0 ;  Stash right operand in R3
239 : LD 1, 1(5) ;  Load parameter 'base' into R1
240 : ADD 2, 1, 0 ;  Move left operand to register 2
241 : ADD 1, 3, 0 ;  Restore right operand from R3
242 : MUL 1, 2, 1 ;  R1 = left * right
243 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
244 : LDA 6, 248(0) ; Return address
245 : ST 6, 0(3) ; Store return in callee frame (via R3)
246 : ADD 5, 3, 0 ; Push callee frame
247 : LDA 7, 201(0) ; Call powHelper
248 : LD 1, 4(5) ;  Load function result
249 : LDC 2, 5(0) ;  Caller frame size
250 : SUB 5, 5, 2 ;  Pop back to caller
251 : ST 1, 4(5) ;  Store function result into stack frame
252 : LD 6, 0(5) ;  Load return address
253 : LDA 7, 0(6) ;  Return to caller
254 : LDA 3, 5(5) ; Base of callee frame (stable)
255 : LD 1, 1(5) ;  Load parameter 'x' into R1
256 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
257 : LD 1, 2(5) ;  Load parameter 'y' into R1
258 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
259 : LD 1, 1(5) ;  Load parameter 'x' into R1
260 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
261 : LDA 6, 265(0) ; Return address
262 : ST 6, 0(3) ; Store return in callee frame (via R3)
263 : ADD 5, 3, 0 ; Push callee frame
264 : LDA 7, 201(0) ; Call powHelper
265 : LD 1, 4(5) ;  Load function result
266 : LDC 2, 5(0) ;  Caller frame size
267 : SUB 5, 5, 2 ;  Pop back to caller
268 : ST 1, 3(5) ;  Store function result into stack frame
269 : LD 6, 0(5) ;  Load return address
270 : LDA 7, 0(6) ;  Return to caller
271 : LDC 1, 10(0) ;  Load integer-literal value into register 1
272 : ADD 3, 1, 0 ;  Stash right operand in R3
273 : LD 1, 1(5) ;  Load parameter 'x' into R1
274 : ADD 2, 1, 0 ;  Move left operand to register 2
275 : ADD 1, 3, 0 ;  Restore right operand from R3
276 : DIV 1, 2, 1 ;  R1 = left / right
277 : ADD 2, 1, 0 ;  Move left operand to register 2
278 : LDA 3, 4(5) ; Base of callee frame (stable)
279 : LD 1, 1(5) ;  Load parameter 'x' into R1
280 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
281 : LDC 1, 10(0) ;  Load integer-literal value into register 1
282 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
283 : LDA 6, 287(0) ; Return address
284 : ST 6, 0(3) ; Store return in callee frame (via R3)
285 : ADD 5, 3, 0 ; Push callee frame
286 : LDA 7, 26(0) ; Call mod
287 : LD 1, 3(5) ;  Load function result
288 : LDC 2, 4(0) ;  Caller frame size
289 : SUB 5, 5, 2 ;  Pop back to caller
290 : ADD 2, 1, 0 ;  Move left operand to register 2
291 : LDA 3, 4(5) ; Base of callee frame (stable)
292 : LDC 1, 10(0) ;  Load integer-literal value into register 1
293 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
294 : LDA 3, 3(5) ; Base of callee frame (stable)
295 : LD 1, 1(5) ;  Load parameter 'x' into R1
296 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(3) ; Store return in callee frame (via R3)
299 : ADD 5, 3, 0 ; Push callee frame
300 : LDA 7, 186(0) ; Call log10
301 : LD 1, 2(5) ;  Load function result
302 : LDC 2, 3(0) ;  Caller frame size
303 : SUB 5, 5, 2 ;  Pop back to caller
304 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
305 : LDA 6, 309(0) ; Return address
306 : ST 6, 0(3) ; Store return in callee frame (via R3)
307 : ADD 5, 3, 0 ; Push callee frame
308 : LDA 7, 254(0) ; Call pow
309 : LD 1, 3(5) ;  Load function result
310 : LDC 2, 4(0) ;  Caller frame size
311 : SUB 5, 5, 2 ;  Pop back to caller
312 : MUL 1, 2, 1 ;  R1 = left * right
313 : ADD 1, 2, 1 ;  R1 = left + right
314 : ST 1, 2(5) ;  Store function result into stack frame
315 : LD 6, 0(5) ;  Load return address
316 : LDA 7, 0(6) ;  Return to caller
317 : LD 1, 1(5) ;  Load parameter 'x' into R1
318 : LDA 3, 3(5) ; Base of callee frame (stable)
319 : LDA 6, 323(0) ; Return address
320 : ST 6, 0(3) ; Store return addr in callee frame
321 : ADD 5, 3, 0 ; Push new frame
322 : LDA 7, 9(0) ; Call print
323 : LDC 2, 3(0) ; Caller frame size
324 : SUB 5, 5, 2 ; Pop frame
325 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
326 : ST 1, 2(5) ;  Store function result into stack frame
327 : LD 6, 0(5) ;  Load return address
328 : LDA 7, 0(6) ;  Return to caller
329 : LDC 1, 0(0) ;  Load integer-literal value into register 1
330 : ADD 3, 1, 0 ;  Stash right operand in R3
331 : LD 1, 2(5) ;  Load parameter 'turns' into R1
332 : ADD 2, 1, 0 ;  Move left operand to register 2
333 : ADD 1, 3, 0 ;  Restore right operand from R3
334 : SUB 1, 2, 1 ;  left - right for equality check
335 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
336 : LDC 1, 0(0) ;  false
337 : LDA 7, 1(7) ;  skip setting true
338 : LDC 1, 1(0) ;  true
339 : JEQ 1, 342(0) ;  If condition is false, jump to ELSE
340 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
341 : LDA 7, 380(0) ;  Skip ELSE block
342 : LDA 3, 3(5) ; Base of callee frame (stable)
343 : LD 1, 1(5) ;  Load parameter 'x' into R1
344 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
345 : LDA 6, 349(0) ; Return address
346 : ST 6, 0(3) ; Store return in callee frame (via R3)
347 : ADD 5, 3, 0 ; Push callee frame
348 : LDA 7, 128(0) ; Call isPrime
349 : LD 1, 2(5) ;  Load function result
350 : LDC 2, 3(0) ;  Caller frame size
351 : SUB 5, 5, 2 ;  Pop back to caller
352 : ADD 2, 1, 0 ;  Move left operand to register 2
353 : LDA 3, 4(5) ; Base of callee frame (stable)
354 : LDA 3, 3(5) ; Base of callee frame (stable)
355 : LD 1, 1(5) ;  Load parameter 'x' into R1
356 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
357 : LDA 6, 361(0) ; Return address
358 : ST 6, 0(3) ; Store return in callee frame (via R3)
359 : ADD 5, 3, 0 ; Push callee frame
360 : LDA 7, 271(0) ; Call rotate
361 : LD 1, 2(5) ;  Load function result
362 : LDC 2, 3(0) ;  Caller frame size
363 : SUB 5, 5, 2 ;  Pop back to caller
364 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
365 : LDC 1, 1(0) ;  Load integer-literal value into register 1
366 : ADD 3, 1, 0 ;  Stash right operand in R3
367 : LD 1, 2(5) ;  Load parameter 'turns' into R1
368 : ADD 2, 1, 0 ;  Move left operand to register 2
369 : ADD 1, 3, 0 ;  Restore right operand from R3
370 : SUB 1, 2, 1 ;  R1 = left - right
371 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
372 : LDA 6, 376(0) ; Return address
373 : ST 6, 0(3) ; Store return in callee frame (via R3)
374 : ADD 5, 3, 0 ; Push callee frame
375 : LDA 7, 329(0) ; Call isCircularPrimeHelper
376 : LD 1, 3(5) ;  Load function result
377 : LDC 2, 4(0) ;  Caller frame size
378 : SUB 5, 5, 2 ;  Pop back to caller
379 : MUL 1, 2, 1 ;  R1 = left AND right
380 : ST 1, 3(5) ;  Store function result into stack frame
381 : LD 6, 0(5) ;  Load return address
382 : LDA 7, 0(6) ;  Return to caller
383 : LDA 3, 4(5) ; Base of callee frame (stable)
384 : LD 1, 1(5) ;  Load parameter 'x' into R1
385 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
386 : LDA 3, 3(5) ; Base of callee frame (stable)
387 : LD 1, 1(5) ;  Load parameter 'x' into R1
388 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
389 : LDA 6, 393(0) ; Return address
390 : ST 6, 0(3) ; Store return in callee frame (via R3)
391 : ADD 5, 3, 0 ; Push callee frame
392 : LDA 7, 186(0) ; Call log10
393 : LD 1, 2(5) ;  Load function result
394 : LDC 2, 3(0) ;  Caller frame size
395 : SUB 5, 5, 2 ;  Pop back to caller
396 : ADD 2, 1, 0 ;  Move left operand to register 2
397 : LDC 1, 1(0) ;  Load integer-literal value into register 1
398 : ADD 1, 2, 1 ;  R1 = left + right
399 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
400 : LDA 6, 404(0) ; Return address
401 : ST 6, 0(3) ; Store return in callee frame (via R3)
402 : ADD 5, 3, 0 ; Push callee frame
403 : LDA 7, 329(0) ; Call isCircularPrimeHelper
404 : LD 1, 3(5) ;  Load function result
405 : LDC 2, 4(0) ;  Caller frame size
406 : SUB 5, 5, 2 ;  Pop back to caller
407 : JEQ 1, 419(0) ;  If condition is false, jump to ELSE
408 : LDA 3, 3(5) ; Base of callee frame (stable)
409 : LD 1, 1(5) ;  Load parameter 'x' into R1
410 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
411 : LDA 6, 415(0) ; Return address
412 : ST 6, 0(3) ; Store return in callee frame (via R3)
413 : ADD 5, 3, 0 ; Push callee frame
414 : LDA 7, 317(0) ; Call report
415 : LD 1, 2(5) ;  Load function result
416 : LDC 2, 3(0) ;  Caller frame size
417 : SUB 5, 5, 2 ;  Pop back to caller
418 : LDA 7, 420(0) ;  Skip ELSE block
419 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
420 : ST 1, 2(5) ;  Store function result into stack frame
421 : LD 6, 0(5) ;  Load return address
422 : LDA 7, 0(6) ;  Return to caller
423 : LD 1, 1(5) ;  Load parameter 'top' into R1
424 : ADD 3, 1, 0 ;  Stash right operand in R3
425 : LD 1, 2(5) ;  Load parameter 'x' into R1
426 : ADD 2, 1, 0 ;  Move left operand to register 2
427 : ADD 1, 3, 0 ;  Restore right operand from R3
428 : SUB 1, 2, 1 ;  left - right for less-than check
429 : JLT 1, 2(7) ;  If R1 < 0, jump to true
430 : LDC 1, 0(0) ;  false
431 : LDA 7, 1(7) ;  skip setting true
432 : LDC 1, 1(0) ;  true
433 : JEQ 1, 490(0) ;  If condition is false, jump to ELSE
434 : LDA 3, 3(5) ; Base of callee frame (stable)
435 : LD 1, 2(5) ;  Load parameter 'x' into R1
436 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
437 : LDA 6, 441(0) ; Return address
438 : ST 6, 0(3) ; Store return in callee frame (via R3)
439 : ADD 5, 3, 0 ; Push callee frame
440 : LDA 7, 383(0) ; Call isCircularPrime
441 : LD 1, 2(5) ;  Load function result
442 : LDC 2, 3(0) ;  Caller frame size
443 : SUB 5, 5, 2 ;  Pop back to caller
444 : JEQ 1, 470(0) ;  If condition is false, jump to ELSE
445 : LDA 3, 5(5) ; Base of callee frame (stable)
446 : LD 1, 1(5) ;  Load parameter 'top' into R1
447 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
448 : LDC 1, 1(0) ;  Load integer-literal value into register 1
449 : ADD 3, 1, 0 ;  Stash right operand in R3
450 : LD 1, 2(5) ;  Load parameter 'x' into R1
451 : ADD 2, 1, 0 ;  Move left operand to register 2
452 : ADD 1, 3, 0 ;  Restore right operand from R3
453 : ADD 1, 2, 1 ;  R1 = left + right
454 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
455 : LDC 1, 1(0) ;  Load integer-literal value into register 1
456 : ADD 3, 1, 0 ;  Stash right operand in R3
457 : LD 1, 3(5) ;  Load parameter 'count' into R1
458 : ADD 2, 1, 0 ;  Move left operand to register 2
459 : ADD 1, 3, 0 ;  Restore right operand from R3
460 : ADD 1, 2, 1 ;  R1 = left + right
461 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
462 : LDA 6, 466(0) ; Return address
463 : ST 6, 0(3) ; Store return in callee frame (via R3)
464 : ADD 5, 3, 0 ; Push callee frame
465 : LDA 7, 423(0) ; Call circularPrimesToHelper
466 : LD 1, 4(5) ;  Load function result
467 : LDC 2, 5(0) ;  Caller frame size
468 : SUB 5, 5, 2 ;  Pop back to caller
469 : LDA 7, 489(0) ;  Skip ELSE block
470 : LDA 3, 5(5) ; Base of callee frame (stable)
471 : LD 1, 1(5) ;  Load parameter 'top' into R1
472 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
473 : LDC 1, 1(0) ;  Load integer-literal value into register 1
474 : ADD 3, 1, 0 ;  Stash right operand in R3
475 : LD 1, 2(5) ;  Load parameter 'x' into R1
476 : ADD 2, 1, 0 ;  Move left operand to register 2
477 : ADD 1, 3, 0 ;  Restore right operand from R3
478 : ADD 1, 2, 1 ;  R1 = left + right
479 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
480 : LD 1, 3(5) ;  Load parameter 'count' into R1
481 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
482 : LDA 6, 486(0) ; Return address
483 : ST 6, 0(3) ; Store return in callee frame (via R3)
484 : ADD 5, 3, 0 ; Push callee frame
485 : LDA 7, 423(0) ; Call circularPrimesToHelper
486 : LD 1, 4(5) ;  Load function result
487 : LDC 2, 5(0) ;  Caller frame size
488 : SUB 5, 5, 2 ;  Pop back to caller
489 : LDA 7, 491(0) ;  Skip ELSE block
490 : LD 1, 3(5) ;  Load parameter 'count' into R1
491 : ST 1, 4(5) ;  Store function result into stack frame
492 : LD 6, 0(5) ;  Load return address
493 : LDA 7, 0(6) ;  Return to caller
494 : LDA 3, 5(5) ; Base of callee frame (stable)
495 : LDC 1, 1(0) ;  Load integer-literal value into register 1
496 : ADD 3, 1, 0 ;  Stash right operand in R3
497 : LD 1, 1(5) ;  Load parameter 'x' into R1
498 : ADD 2, 1, 0 ;  Move left operand to register 2
499 : ADD 1, 3, 0 ;  Restore right operand from R3
500 : ADD 1, 2, 1 ;  R1 = left + right
501 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
502 : LDC 1, 2(0) ;  Load integer-literal value into register 1
503 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
504 : LDC 1, 0(0) ;  Load integer-literal value into register 1
505 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
506 : LDA 6, 510(0) ; Return address
507 : ST 6, 0(3) ; Store return in callee frame (via R3)
508 : ADD 5, 3, 0 ; Push callee frame
509 : LDA 7, 423(0) ; Call circularPrimesToHelper
510 : LD 1, 4(5) ;  Load function result
511 : LDC 2, 5(0) ;  Caller frame size
512 : SUB 5, 5, 2 ;  Pop back to caller
513 : ST 1, 2(5) ;  Store function result into stack frame
514 : LD 6, 0(5) ;  Load return address
515 : LDA 7, 0(6) ;  Return to caller
