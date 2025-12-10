0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into register
7 : ST 2, 3(5) ;  Store the argument into stack frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST 6, 0(5) ;  Store return address in main stack frame
10 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT 1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
13 : OUT 1, 0, 0 ;  Hardcoded print function
14 : LD 6, 0(5) ;  Load return addess from stack frame.
15 : LDA 7, 0(6) ;  Jump to return address.
16 : LDA 3, 5(5) ; Base of callee frame (stable)
17 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
18 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
19 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
20 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
21 : LD 1, 3(5) ;  Load parameter 'N' into R1
22 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(3) ; Store return in callee frame (via R3)
25 : ADD 5, 3, 0 ; Push callee frame
26 : LDA 7, 534(0) ; Call fareyNum
27 : LD 1, 4(5) ;  Load function result
28 : LDC 2, 5(0) ;  Caller frame size
29 : SUB 5, 5, 2 ;  Pop back to caller
30 : LDA 3, 3(5) ; Base of callee frame (stable)
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(3) ; Store return addr in callee frame
33 : ADD 5, 3, 0 ; Push new frame
34 : LDA 7, 13(0) ; Call print
35 : LDC 2, 3(0) ; Caller frame size
36 : SUB 5, 5, 2 ; Pop frame
37 : LDA 3, 5(5) ; Base of callee frame (stable)
38 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
39 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
40 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
41 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
42 : LD 1, 3(5) ;  Load parameter 'N' into R1
43 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(3) ; Store return in callee frame (via R3)
46 : ADD 5, 3, 0 ; Push callee frame
47 : LDA 7, 421(0) ; Call fareyDen
48 : LD 1, 4(5) ;  Load function result
49 : LDC 2, 5(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop back to caller
51 : ST 1, 4(5) ; Store result into caller’s frame
52 : LD 1, 4(5) ;  Load return value into register 1
53 : LD 6, 0(5) ;  Load return address for main function into register 6
54 : LDA 7, 0(6) ;  Jump to return address of main function
55 : LD 1, 2(5) ;  Load parameter 'y' into R1
56 : ADD 3, 1, 0 ;  Stash right operand in R3
57 : LD 1, 1(5) ;  Load parameter 'x' into R1
58 : ADD 2, 1, 0 ;  Move left operand to register 2
59 : ADD 1, 3, 0 ;  Restore right operand from R3
60 : SUB 1, 2, 1 ;  left - right for less-than check
61 : JLT 1, 2(7) ;  If R1 < 0, jump to true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : ADD 2, 1, 0 ;  Move left operand to register 2
66 : LD 1, 2(5) ;  Load parameter 'y' into R1
67 : ADD 3, 1, 0 ;  Stash right operand in R3
68 : LD 1, 1(5) ;  Load parameter 'x' into R1
69 : ADD 2, 1, 0 ;  Move left operand to register 2
70 : ADD 1, 3, 0 ;  Restore right operand from R3
71 : SUB 1, 2, 1 ;  left - right for equality check
72 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
73 : LDC 1, 0(0) ;  false
74 : LDA 7, 1(7) ;  skip setting true
75 : LDC 1, 1(0) ;  true
76 : ADD 1, 2, 1 ;  R1 = left OR right
77 : LDC 2, 1(0) ;  Load 1 into R2
78 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
79 : ST 1, 3(5) ;  Store function result into stack frame
80 : LD 6, 0(5) ;  Load return address
81 : LDA 7, 0(6) ;  Return to caller
82 : LDA 3, 4(5) ; Base of callee frame (stable)
83 : LD 1, 4(5) ;  Load parameter 'yd' into R1
84 : ADD 3, 1, 0 ;  Stash right operand in R3
85 : LD 1, 1(5) ;  Load parameter 'x' into R1
86 : ADD 2, 1, 0 ;  Move left operand to register 2
87 : ADD 1, 3, 0 ;  Restore right operand from R3
88 : MUL 1, 2, 1 ;  R1 = left * right
89 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
90 : LD 1, 2(5) ;  Load parameter 'xd' into R1
91 : ADD 3, 1, 0 ;  Stash right operand in R3
92 : LD 1, 3(5) ;  Load parameter 'y' into R1
93 : ADD 2, 1, 0 ;  Move left operand to register 2
94 : ADD 1, 3, 0 ;  Restore right operand from R3
95 : MUL 1, 2, 1 ;  R1 = left * right
96 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(3) ; Store return in callee frame (via R3)
99 : ADD 5, 3, 0 ; Push callee frame
100 : LDA 7, 55(0) ; Call greater
101 : LD 1, 3(5) ;  Load function result
102 : LDC 2, 4(0) ;  Caller frame size
103 : SUB 5, 5, 2 ;  Pop back to caller
104 : ST 1, 5(5) ;  Store function result into stack frame
105 : LD 6, 0(5) ;  Load return address
106 : LDA 7, 0(6) ;  Return to caller
107 : LD 1, 4(5) ;  Load parameter 'yd' into R1
108 : ADD 3, 1, 0 ;  Stash right operand in R3
109 : LD 1, 1(5) ;  Load parameter 'x' into R1
110 : ADD 2, 1, 0 ;  Move left operand to register 2
111 : ADD 1, 3, 0 ;  Restore right operand from R3
112 : MUL 1, 2, 1 ;  R1 = left * right
113 : ADD 2, 1, 0 ;  Move left operand to register 2
114 : LD 1, 2(5) ;  Load parameter 'xd' into R1
115 : ADD 3, 1, 0 ;  Stash right operand in R3
116 : LD 1, 3(5) ;  Load parameter 'y' into R1
117 : ADD 2, 1, 0 ;  Move left operand to register 2
118 : ADD 1, 3, 0 ;  Restore right operand from R3
119 : MUL 1, 2, 1 ;  R1 = left * right
120 : SUB 1, 2, 1 ;  left - right for equality check
121 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
122 : LDC 1, 0(0) ;  false
123 : LDA 7, 1(7) ;  skip setting true
124 : LDC 1, 1(0) ;  true
125 : ST 1, 5(5) ;  Store function result into stack frame
126 : LD 6, 0(5) ;  Load return address
127 : LDA 7, 0(6) ;  Return to caller
128 : LDA 3, 4(5) ; Base of callee frame (stable)
129 : LD 1, 6(5) ;  Load parameter 'b' into R1
130 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
131 : LD 1, 4(5) ;  Load parameter 'N' into R1
132 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(3) ; Store return in callee frame (via R3)
135 : ADD 5, 3, 0 ; Push callee frame
136 : LDA 7, 55(0) ; Call greater
137 : LD 1, 3(5) ;  Load function result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop back to caller
140 : ADD 2, 1, 0 ;  Move left operand to register 2
141 : LDA 3, 4(5) ; Base of callee frame (stable)
142 : LD 1, 8(5) ;  Load parameter 'd' into R1
143 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
144 : LD 1, 4(5) ;  Load parameter 'N' into R1
145 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(3) ; Store return in callee frame (via R3)
148 : ADD 5, 3, 0 ; Push callee frame
149 : LDA 7, 55(0) ; Call greater
150 : LD 1, 3(5) ;  Load function result
151 : LDC 2, 4(0) ;  Caller frame size
152 : SUB 5, 5, 2 ;  Pop back to caller
153 : ADD 1, 2, 1 ;  R1 = left OR right
154 : JEQ 1, 196(0) ;  If condition is false, jump to ELSE
155 : LDC 1, 1(0) ;  Load integer-literal value into register 1
156 : ADD 3, 1, 0 ;  Stash right operand in R3
157 : LD 1, 1(5) ;  Load parameter 'selector' into R1
158 : ADD 2, 1, 0 ;  Move left operand to register 2
159 : ADD 1, 3, 0 ;  Restore right operand from R3
160 : SUB 1, 2, 1 ;  left - right for equality check
161 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
162 : LDC 1, 0(0) ;  false
163 : LDA 7, 1(7) ;  skip setting true
164 : LDC 1, 1(0) ;  true
165 : JEQ 1, 168(0) ;  If condition is false, jump to ELSE
166 : LD 1, 5(5) ;  Load parameter 'a' into R1
167 : LDA 7, 195(0) ;  Skip ELSE block
168 : LDC 1, 2(0) ;  Load integer-literal value into register 1
169 : ADD 3, 1, 0 ;  Stash right operand in R3
170 : LD 1, 1(5) ;  Load parameter 'selector' into R1
171 : ADD 2, 1, 0 ;  Move left operand to register 2
172 : ADD 1, 3, 0 ;  Restore right operand from R3
173 : SUB 1, 2, 1 ;  left - right for equality check
174 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
175 : LDC 1, 0(0) ;  false
176 : LDA 7, 1(7) ;  skip setting true
177 : LDC 1, 1(0) ;  true
178 : JEQ 1, 181(0) ;  If condition is false, jump to ELSE
179 : LD 1, 6(5) ;  Load parameter 'b' into R1
180 : LDA 7, 195(0) ;  Skip ELSE block
181 : LDC 1, 3(0) ;  Load integer-literal value into register 1
182 : ADD 3, 1, 0 ;  Stash right operand in R3
183 : LD 1, 1(5) ;  Load parameter 'selector' into R1
184 : ADD 2, 1, 0 ;  Move left operand to register 2
185 : ADD 1, 3, 0 ;  Restore right operand from R3
186 : SUB 1, 2, 1 ;  left - right for equality check
187 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
188 : LDC 1, 0(0) ;  false
189 : LDA 7, 1(7) ;  skip setting true
190 : LDC 1, 1(0) ;  true
191 : JEQ 1, 194(0) ;  If condition is false, jump to ELSE
192 : LD 1, 7(5) ;  Load parameter 'c' into R1
193 : LDA 7, 195(0) ;  Skip ELSE block
194 : LD 1, 8(5) ;  Load parameter 'd' into R1
195 : LDA 7, 380(0) ;  Skip ELSE block
196 : LDA 3, 6(5) ; Base of callee frame (stable)
197 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
198 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
199 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
200 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
201 : LD 1, 7(5) ;  Load parameter 'c' into R1
202 : ADD 3, 1, 0 ;  Stash right operand in R3
203 : LD 1, 5(5) ;  Load parameter 'a' into R1
204 : ADD 2, 1, 0 ;  Move left operand to register 2
205 : ADD 1, 3, 0 ;  Restore right operand from R3
206 : ADD 1, 2, 1 ;  R1 = left + right
207 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
208 : LD 1, 8(5) ;  Load parameter 'd' into R1
209 : ADD 3, 1, 0 ;  Stash right operand in R3
210 : LD 1, 6(5) ;  Load parameter 'b' into R1
211 : ADD 2, 1, 0 ;  Move left operand to register 2
212 : ADD 1, 3, 0 ;  Restore right operand from R3
213 : ADD 1, 2, 1 ;  R1 = left + right
214 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
215 : LDA 6, 219(0) ; Return address
216 : ST 6, 0(3) ; Store return in callee frame (via R3)
217 : ADD 5, 3, 0 ; Push callee frame
218 : LDA 7, 107(0) ; Call fractionEqual
219 : LD 1, 5(5) ;  Load function result
220 : LDC 2, 6(0) ;  Caller frame size
221 : SUB 5, 5, 2 ;  Pop back to caller
222 : JEQ 1, 284(0) ;  If condition is false, jump to ELSE
223 : LDC 1, 1(0) ;  Load integer-literal value into register 1
224 : ADD 3, 1, 0 ;  Stash right operand in R3
225 : LD 1, 1(5) ;  Load parameter 'selector' into R1
226 : ADD 2, 1, 0 ;  Move left operand to register 2
227 : ADD 1, 3, 0 ;  Restore right operand from R3
228 : SUB 1, 2, 1 ;  left - right for equality check
229 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
230 : LDC 1, 0(0) ;  false
231 : LDA 7, 1(7) ;  skip setting true
232 : LDC 1, 1(0) ;  true
233 : JEQ 1, 241(0) ;  If condition is false, jump to ELSE
234 : LD 1, 7(5) ;  Load parameter 'c' into R1
235 : ADD 3, 1, 0 ;  Stash right operand in R3
236 : LD 1, 5(5) ;  Load parameter 'a' into R1
237 : ADD 2, 1, 0 ;  Move left operand to register 2
238 : ADD 1, 3, 0 ;  Restore right operand from R3
239 : ADD 1, 2, 1 ;  R1 = left + right
240 : LDA 7, 283(0) ;  Skip ELSE block
241 : LDC 1, 2(0) ;  Load integer-literal value into register 1
242 : ADD 3, 1, 0 ;  Stash right operand in R3
243 : LD 1, 1(5) ;  Load parameter 'selector' into R1
244 : ADD 2, 1, 0 ;  Move left operand to register 2
245 : ADD 1, 3, 0 ;  Restore right operand from R3
246 : SUB 1, 2, 1 ;  left - right for equality check
247 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
248 : LDC 1, 0(0) ;  false
249 : LDA 7, 1(7) ;  skip setting true
250 : LDC 1, 1(0) ;  true
251 : JEQ 1, 259(0) ;  If condition is false, jump to ELSE
252 : LD 1, 8(5) ;  Load parameter 'd' into R1
253 : ADD 3, 1, 0 ;  Stash right operand in R3
254 : LD 1, 6(5) ;  Load parameter 'b' into R1
255 : ADD 2, 1, 0 ;  Move left operand to register 2
256 : ADD 1, 3, 0 ;  Restore right operand from R3
257 : ADD 1, 2, 1 ;  R1 = left + right
258 : LDA 7, 283(0) ;  Skip ELSE block
259 : LDC 1, 3(0) ;  Load integer-literal value into register 1
260 : ADD 3, 1, 0 ;  Stash right operand in R3
261 : LD 1, 1(5) ;  Load parameter 'selector' into R1
262 : ADD 2, 1, 0 ;  Move left operand to register 2
263 : ADD 1, 3, 0 ;  Restore right operand from R3
264 : SUB 1, 2, 1 ;  left - right for equality check
265 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
266 : LDC 1, 0(0) ;  false
267 : LDA 7, 1(7) ;  skip setting true
268 : LDC 1, 1(0) ;  true
269 : JEQ 1, 277(0) ;  If condition is false, jump to ELSE
270 : LD 1, 7(5) ;  Load parameter 'c' into R1
271 : ADD 3, 1, 0 ;  Stash right operand in R3
272 : LD 1, 5(5) ;  Load parameter 'a' into R1
273 : ADD 2, 1, 0 ;  Move left operand to register 2
274 : ADD 1, 3, 0 ;  Restore right operand from R3
275 : ADD 1, 2, 1 ;  R1 = left + right
276 : LDA 7, 283(0) ;  Skip ELSE block
277 : LD 1, 8(5) ;  Load parameter 'd' into R1
278 : ADD 3, 1, 0 ;  Stash right operand in R3
279 : LD 1, 6(5) ;  Load parameter 'b' into R1
280 : ADD 2, 1, 0 ;  Move left operand to register 2
281 : ADD 1, 3, 0 ;  Restore right operand from R3
282 : ADD 1, 2, 1 ;  R1 = left + right
283 : LDA 7, 380(0) ;  Skip ELSE block
284 : LDA 3, 6(5) ; Base of callee frame (stable)
285 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
286 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
287 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
288 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
289 : LD 1, 7(5) ;  Load parameter 'c' into R1
290 : ADD 3, 1, 0 ;  Stash right operand in R3
291 : LD 1, 5(5) ;  Load parameter 'a' into R1
292 : ADD 2, 1, 0 ;  Move left operand to register 2
293 : ADD 1, 3, 0 ;  Restore right operand from R3
294 : ADD 1, 2, 1 ;  R1 = left + right
295 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
296 : LD 1, 8(5) ;  Load parameter 'd' into R1
297 : ADD 3, 1, 0 ;  Stash right operand in R3
298 : LD 1, 6(5) ;  Load parameter 'b' into R1
299 : ADD 2, 1, 0 ;  Move left operand to register 2
300 : ADD 1, 3, 0 ;  Restore right operand from R3
301 : ADD 1, 2, 1 ;  R1 = left + right
302 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
303 : LDA 6, 307(0) ; Return address
304 : ST 6, 0(3) ; Store return in callee frame (via R3)
305 : ADD 5, 3, 0 ; Push callee frame
306 : LDA 7, 82(0) ; Call fractionGreater
307 : LD 1, 5(5) ;  Load function result
308 : LDC 2, 6(0) ;  Caller frame size
309 : SUB 5, 5, 2 ;  Pop back to caller
310 : JEQ 1, 346(0) ;  If condition is false, jump to ELSE
311 : LDA 3, 10(5) ; Base of callee frame (stable)
312 : LD 1, 1(5) ;  Load parameter 'selector' into R1
313 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
314 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
315 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
316 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
317 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
318 : LD 1, 4(5) ;  Load parameter 'N' into R1
319 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
320 : LD 1, 7(5) ;  Load parameter 'c' into R1
321 : ADD 3, 1, 0 ;  Stash right operand in R3
322 : LD 1, 5(5) ;  Load parameter 'a' into R1
323 : ADD 2, 1, 0 ;  Move left operand to register 2
324 : ADD 1, 3, 0 ;  Restore right operand from R3
325 : ADD 1, 2, 1 ;  R1 = left + right
326 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
327 : LD 1, 8(5) ;  Load parameter 'd' into R1
328 : ADD 3, 1, 0 ;  Stash right operand in R3
329 : LD 1, 6(5) ;  Load parameter 'b' into R1
330 : ADD 2, 1, 0 ;  Move left operand to register 2
331 : ADD 1, 3, 0 ;  Restore right operand from R3
332 : ADD 1, 2, 1 ;  R1 = left + right
333 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
334 : LD 1, 7(5) ;  Load parameter 'c' into R1
335 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
336 : LD 1, 8(5) ;  Load parameter 'd' into R1
337 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
338 : LDA 6, 342(0) ; Return address
339 : ST 6, 0(3) ; Store return in callee frame (via R3)
340 : ADD 5, 3, 0 ; Push callee frame
341 : LDA 7, 128(0) ; Call whileLoopFor
342 : LD 1, 9(5) ;  Load function result
343 : LDC 2, 10(0) ;  Caller frame size
344 : SUB 5, 5, 2 ;  Pop back to caller
345 : LDA 7, 380(0) ;  Skip ELSE block
346 : LDA 3, 10(5) ; Base of callee frame (stable)
347 : LD 1, 1(5) ;  Load parameter 'selector' into R1
348 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
349 : LD 1, 2(5) ;  Load parameter 'xNum' into R1
350 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
351 : LD 1, 3(5) ;  Load parameter 'xDen' into R1
352 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
353 : LD 1, 4(5) ;  Load parameter 'N' into R1
354 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
355 : LD 1, 5(5) ;  Load parameter 'a' into R1
356 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
357 : LD 1, 6(5) ;  Load parameter 'b' into R1
358 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
359 : LD 1, 7(5) ;  Load parameter 'c' into R1
360 : ADD 3, 1, 0 ;  Stash right operand in R3
361 : LD 1, 5(5) ;  Load parameter 'a' into R1
362 : ADD 2, 1, 0 ;  Move left operand to register 2
363 : ADD 1, 3, 0 ;  Restore right operand from R3
364 : ADD 1, 2, 1 ;  R1 = left + right
365 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
366 : LD 1, 8(5) ;  Load parameter 'd' into R1
367 : ADD 3, 1, 0 ;  Stash right operand in R3
368 : LD 1, 6(5) ;  Load parameter 'b' into R1
369 : ADD 2, 1, 0 ;  Move left operand to register 2
370 : ADD 1, 3, 0 ;  Restore right operand from R3
371 : ADD 1, 2, 1 ;  R1 = left + right
372 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
373 : LDA 6, 377(0) ; Return address
374 : ST 6, 0(3) ; Store return in callee frame (via R3)
375 : ADD 5, 3, 0 ; Push callee frame
376 : LDA 7, 128(0) ; Call whileLoopFor
377 : LD 1, 9(5) ;  Load function result
378 : LDC 2, 10(0) ;  Caller frame size
379 : SUB 5, 5, 2 ;  Pop back to caller
380 : ST 1, 9(5) ;  Store function result into stack frame
381 : LD 6, 0(5) ;  Load return address
382 : LDA 7, 0(6) ;  Return to caller
383 : LDA 3, 4(5) ; Base of callee frame (stable)
384 : LD 1, 3(5) ;  Load parameter 'b' into R1
385 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
386 : LD 1, 1(5) ;  Load parameter 'N' into R1
387 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(3) ; Store return in callee frame (via R3)
390 : ADD 5, 3, 0 ; Push callee frame
391 : LDA 7, 55(0) ; Call greater
392 : LD 1, 3(5) ;  Load function result
393 : LDC 2, 4(0) ;  Caller frame size
394 : SUB 5, 5, 2 ;  Pop back to caller
395 : JEQ 1, 398(0) ;  If condition is false, jump to ELSE
396 : LD 1, 5(5) ;  Load parameter 'd' into R1
397 : LDA 7, 399(0) ;  Skip ELSE block
398 : LD 1, 3(5) ;  Load parameter 'b' into R1
399 : ST 1, 6(5) ;  Store function result into stack frame
400 : LD 6, 0(5) ;  Load return address
401 : LDA 7, 0(6) ;  Return to caller
402 : LDA 3, 4(5) ; Base of callee frame (stable)
403 : LD 1, 3(5) ;  Load parameter 'b' into R1
404 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
405 : LD 1, 1(5) ;  Load parameter 'N' into R1
406 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
407 : LDA 6, 411(0) ; Return address
408 : ST 6, 0(3) ; Store return in callee frame (via R3)
409 : ADD 5, 3, 0 ; Push callee frame
410 : LDA 7, 55(0) ; Call greater
411 : LD 1, 3(5) ;  Load function result
412 : LDC 2, 4(0) ;  Caller frame size
413 : SUB 5, 5, 2 ;  Pop back to caller
414 : JEQ 1, 417(0) ;  If condition is false, jump to ELSE
415 : LD 1, 4(5) ;  Load parameter 'c' into R1
416 : LDA 7, 418(0) ;  Skip ELSE block
417 : LD 1, 2(5) ;  Load parameter 'a' into R1
418 : ST 1, 6(5) ;  Store function result into stack frame
419 : LD 6, 0(5) ;  Load return address
420 : LDA 7, 0(6) ;  Return to caller
421 : LDA 3, 7(5) ; Base of callee frame (stable)
422 : LD 1, 3(5) ;  Load parameter 'N' into R1
423 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
424 : LDA 3, 10(5) ; Base of callee frame (stable)
425 : LDC 1, 1(0) ;  Load integer-literal value into register 1
426 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
427 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
428 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
429 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
430 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
431 : LD 1, 3(5) ;  Load parameter 'N' into R1
432 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
433 : LDC 1, 0(0) ;  Load integer-literal value into register 1
434 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
435 : LDC 1, 1(0) ;  Load integer-literal value into register 1
436 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
437 : LDC 1, 1(0) ;  Load integer-literal value into register 1
438 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
439 : LDC 1, 1(0) ;  Load integer-literal value into register 1
440 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
441 : LDA 6, 445(0) ; Return address
442 : ST 6, 0(3) ; Store return in callee frame (via R3)
443 : ADD 5, 3, 0 ; Push callee frame
444 : LDA 7, 128(0) ; Call whileLoopFor
445 : LD 1, 9(5) ;  Load function result
446 : LDC 2, 10(0) ;  Caller frame size
447 : SUB 5, 5, 2 ;  Pop back to caller
448 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
449 : LDA 3, 10(5) ; Base of callee frame (stable)
450 : LDC 1, 2(0) ;  Load integer-literal value into register 1
451 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
452 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
453 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
454 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
455 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
456 : LD 1, 3(5) ;  Load parameter 'N' into R1
457 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
458 : LDC 1, 0(0) ;  Load integer-literal value into register 1
459 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
460 : LDC 1, 1(0) ;  Load integer-literal value into register 1
461 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
462 : LDC 1, 1(0) ;  Load integer-literal value into register 1
463 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
464 : LDC 1, 1(0) ;  Load integer-literal value into register 1
465 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
466 : LDA 6, 470(0) ; Return address
467 : ST 6, 0(3) ; Store return in callee frame (via R3)
468 : ADD 5, 3, 0 ; Push callee frame
469 : LDA 7, 128(0) ; Call whileLoopFor
470 : LD 1, 9(5) ;  Load function result
471 : LDC 2, 10(0) ;  Caller frame size
472 : SUB 5, 5, 2 ;  Pop back to caller
473 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
474 : LDA 3, 10(5) ; Base of callee frame (stable)
475 : LDC 1, 3(0) ;  Load integer-literal value into register 1
476 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
477 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
478 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
479 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
480 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
481 : LD 1, 3(5) ;  Load parameter 'N' into R1
482 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
483 : LDC 1, 0(0) ;  Load integer-literal value into register 1
484 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
485 : LDC 1, 1(0) ;  Load integer-literal value into register 1
486 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
487 : LDC 1, 1(0) ;  Load integer-literal value into register 1
488 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
489 : LDC 1, 1(0) ;  Load integer-literal value into register 1
490 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
491 : LDA 6, 495(0) ; Return address
492 : ST 6, 0(3) ; Store return in callee frame (via R3)
493 : ADD 5, 3, 0 ; Push callee frame
494 : LDA 7, 128(0) ; Call whileLoopFor
495 : LD 1, 9(5) ;  Load function result
496 : LDC 2, 10(0) ;  Caller frame size
497 : SUB 5, 5, 2 ;  Pop back to caller
498 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
499 : LDA 3, 10(5) ; Base of callee frame (stable)
500 : LDC 1, 4(0) ;  Load integer-literal value into register 1
501 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
502 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
503 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
504 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
505 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
506 : LD 1, 3(5) ;  Load parameter 'N' into R1
507 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
508 : LDC 1, 0(0) ;  Load integer-literal value into register 1
509 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
510 : LDC 1, 1(0) ;  Load integer-literal value into register 1
511 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
512 : LDC 1, 1(0) ;  Load integer-literal value into register 1
513 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
514 : LDC 1, 1(0) ;  Load integer-literal value into register 1
515 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
516 : LDA 6, 520(0) ; Return address
517 : ST 6, 0(3) ; Store return in callee frame (via R3)
518 : ADD 5, 3, 0 ; Push callee frame
519 : LDA 7, 128(0) ; Call whileLoopFor
520 : LD 1, 9(5) ;  Load function result
521 : LDC 2, 10(0) ;  Caller frame size
522 : SUB 5, 5, 2 ;  Pop back to caller
523 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
524 : LDA 6, 528(0) ; Return address
525 : ST 6, 0(3) ; Store return in callee frame (via R3)
526 : ADD 5, 3, 0 ; Push callee frame
527 : LDA 7, 383(0) ; Call fareySelectDen
528 : LD 1, 6(5) ;  Load function result
529 : LDC 2, 7(0) ;  Caller frame size
530 : SUB 5, 5, 2 ;  Pop back to caller
531 : ST 1, 4(5) ;  Store function result into stack frame
532 : LD 6, 0(5) ;  Load return address
533 : LDA 7, 0(6) ;  Return to caller
534 : LDA 3, 7(5) ; Base of callee frame (stable)
535 : LD 1, 3(5) ;  Load parameter 'N' into R1
536 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
537 : LDA 3, 10(5) ; Base of callee frame (stable)
538 : LDC 1, 1(0) ;  Load integer-literal value into register 1
539 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
540 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
541 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
542 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
543 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
544 : LD 1, 3(5) ;  Load parameter 'N' into R1
545 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
546 : LDC 1, 0(0) ;  Load integer-literal value into register 1
547 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
548 : LDC 1, 1(0) ;  Load integer-literal value into register 1
549 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
550 : LDC 1, 1(0) ;  Load integer-literal value into register 1
551 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
552 : LDC 1, 1(0) ;  Load integer-literal value into register 1
553 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
554 : LDA 6, 558(0) ; Return address
555 : ST 6, 0(3) ; Store return in callee frame (via R3)
556 : ADD 5, 3, 0 ; Push callee frame
557 : LDA 7, 128(0) ; Call whileLoopFor
558 : LD 1, 9(5) ;  Load function result
559 : LDC 2, 10(0) ;  Caller frame size
560 : SUB 5, 5, 2 ;  Pop back to caller
561 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
562 : LDA 3, 10(5) ; Base of callee frame (stable)
563 : LDC 1, 2(0) ;  Load integer-literal value into register 1
564 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
565 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
566 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
567 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
568 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
569 : LD 1, 3(5) ;  Load parameter 'N' into R1
570 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
571 : LDC 1, 0(0) ;  Load integer-literal value into register 1
572 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
573 : LDC 1, 1(0) ;  Load integer-literal value into register 1
574 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
575 : LDC 1, 1(0) ;  Load integer-literal value into register 1
576 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
577 : LDC 1, 1(0) ;  Load integer-literal value into register 1
578 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
579 : LDA 6, 583(0) ; Return address
580 : ST 6, 0(3) ; Store return in callee frame (via R3)
581 : ADD 5, 3, 0 ; Push callee frame
582 : LDA 7, 128(0) ; Call whileLoopFor
583 : LD 1, 9(5) ;  Load function result
584 : LDC 2, 10(0) ;  Caller frame size
585 : SUB 5, 5, 2 ;  Pop back to caller
586 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
587 : LDA 3, 10(5) ; Base of callee frame (stable)
588 : LDC 1, 3(0) ;  Load integer-literal value into register 1
589 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
590 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
591 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
592 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
593 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
594 : LD 1, 3(5) ;  Load parameter 'N' into R1
595 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
596 : LDC 1, 0(0) ;  Load integer-literal value into register 1
597 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
598 : LDC 1, 1(0) ;  Load integer-literal value into register 1
599 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
600 : LDC 1, 1(0) ;  Load integer-literal value into register 1
601 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
602 : LDC 1, 1(0) ;  Load integer-literal value into register 1
603 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
604 : LDA 6, 608(0) ; Return address
605 : ST 6, 0(3) ; Store return in callee frame (via R3)
606 : ADD 5, 3, 0 ; Push callee frame
607 : LDA 7, 128(0) ; Call whileLoopFor
608 : LD 1, 9(5) ;  Load function result
609 : LDC 2, 10(0) ;  Caller frame size
610 : SUB 5, 5, 2 ;  Pop back to caller
611 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
612 : LDA 3, 10(5) ; Base of callee frame (stable)
613 : LDC 1, 4(0) ;  Load integer-literal value into register 1
614 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
615 : LD 1, 1(5) ;  Load parameter 'xNum' into R1
616 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
617 : LD 1, 2(5) ;  Load parameter 'xDen' into R1
618 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
619 : LD 1, 3(5) ;  Load parameter 'N' into R1
620 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
621 : LDC 1, 0(0) ;  Load integer-literal value into register 1
622 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
623 : LDC 1, 1(0) ;  Load integer-literal value into register 1
624 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
625 : LDC 1, 1(0) ;  Load integer-literal value into register 1
626 : ST 1, 7(3) ; Store argument 6 in callee (via R3)
627 : LDC 1, 1(0) ;  Load integer-literal value into register 1
628 : ST 1, 8(3) ; Store argument 7 in callee (via R3)
629 : LDA 6, 633(0) ; Return address
630 : ST 6, 0(3) ; Store return in callee frame (via R3)
631 : ADD 5, 3, 0 ; Push callee frame
632 : LDA 7, 128(0) ; Call whileLoopFor
633 : LD 1, 9(5) ;  Load function result
634 : LDC 2, 10(0) ;  Caller frame size
635 : SUB 5, 5, 2 ;  Pop back to caller
636 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
637 : LDA 6, 641(0) ; Return address
638 : ST 6, 0(3) ; Store return in callee frame (via R3)
639 : ADD 5, 3, 0 ; Push callee frame
640 : LDA 7, 402(0) ; Call fareySelectNum
641 : LD 1, 6(5) ;  Load function result
642 : LDC 2, 7(0) ;  Caller frame size
643 : SUB 5, 5, 2 ;  Pop back to caller
644 : ST 1, 4(5) ;  Store function result into stack frame
645 : LD 6, 0(5) ;  Load return address
646 : LDA 7, 0(6) ;  Return to caller
