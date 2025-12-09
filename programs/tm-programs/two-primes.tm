0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 2(5) ;  Load parameter 'selector' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 35(0) ;  If condition is false, jump to ELSE
23 : LDA 4, 4(5) ; Base of callee frame
24 : LD   1, 1(5) ;  Load parameter 'n' into R1
25 : ST 1, 1(4) ; Argument 0
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 324(0) ; Call emirp
30 : LD 1, 2(5) ; Load function result
31 : LDC 2, 4(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : ST 1, 3(5) ; Store result into caller’s frame
34 : LDA  7, 81(0) ;  Skip ELSE block
35 : LD   1, 2(5) ;  Load parameter 'selector' into R1
36 : ADD  3, 1, 0 ;  Store left operand into temporary register
37 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
38 : ADD  2, 3, 0 ;  Restore left operand
39 : SUB  1, 2, 1 ;  left - right for equality check
40 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
41 : LDC  1, 0(0) ;  false
42 : LDA  7, 1(7) ;  skip setting true
43 : LDC  1, 1(0) ;  true
44 : JEQ  1, 57(0) ;  If condition is false, jump to ELSE
45 : LDA 4, 4(5) ; Base of callee frame
46 : LD   1, 1(5) ;  Load parameter 'n' into R1
47 : ST 1, 1(4) ; Argument 0
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame
51 : LDA 7, 282(0) ; Call snowball
52 : LD 1, 2(5) ; Load function result
53 : LDC 2, 4(0) ; Caller frame size
54 : SUB 5, 5, 2 ; Pop back to caller
55 : ST 1, 3(5) ; Store result into caller’s frame
56 : LDA  7, 81(0) ;  Skip ELSE block
57 : LD   1, 2(5) ;  Load parameter 'selector' into R1
58 : ADD  3, 1, 0 ;  Store left operand into temporary register
59 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
60 : ADD  2, 3, 0 ;  Restore left operand
61 : SUB  1, 2, 1 ;  left - right for equality check
62 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : JEQ  1, 79(0) ;  If condition is false, jump to ELSE
67 : LDA 4, 4(5) ; Base of callee frame
68 : LD   1, 1(5) ;  Load parameter 'n' into R1
69 : ST 1, 1(4) ; Argument 0
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 251(0) ; Call doBoth
74 : LD 1, 2(5) ; Load function result
75 : LDC 2, 4(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 3(5) ; Store result into caller’s frame
78 : LDA  7, 81(0) ;  Skip ELSE block
79 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
80 : ST 1, 3(5) ;  Store result into current frame's return slot
81 : LD   1, 3(5) ;  Load return value into register 1
82 : LD  6, 0(5) ;  Load return address for main function into register 6
83 : LDA  7, 0(6) ;  Jump to return address of main function
84 : LD   1, 1(5) ;  Load parameter 'm' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 1(5) ;  Load parameter 'm' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : DIV  1, 2, 1 ;  R1 = left / right
91 : ADD  3, 1, 0 ;  Store left operand into temporary register
92 : LD   1, 2(5) ;  Load parameter 'n' into R1
93 : ADD  2, 3, 0 ;  Restore left operand
94 : MUL  1, 2, 1 ;  R1 = left * right
95 : ADD  2, 3, 0 ;  Restore left operand
96 : SUB  1, 2, 1 ;  R1 = left - right
97 : ST   1, 3(5) ;  Store function result into stack frame
98 : LD   6, 0(5) ;  Load return address
99 : LDA  7, 0(6) ;  Return to caller
100 : LD   1, 1(5) ;  Load parameter 'n' into R1
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : JEQ  1, 112(0) ;  If condition is false, jump to ELSE
110 : LD   1, 2(5) ;  Load parameter 'nR' into R1
111 : LDA  7, 147(0) ;  Skip ELSE block
112 : LDA 4, 4(5) ; Base of callee frame
113 : LD   1, 1(5) ;  Load parameter 'n' into R1
114 : ADD  3, 1, 0 ;  Store left operand into temporary register
115 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
116 : ADD  2, 3, 0 ;  Restore left operand
117 : DIV  1, 2, 1 ;  R1 = left / right
118 : ST 1, 1(4) ; Argument 0
119 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
120 : ADD  3, 1, 0 ;  Store left operand into temporary register
121 : LD   1, 2(5) ;  Load parameter 'nR' into R1
122 : ADD  2, 3, 0 ;  Restore left operand
123 : MUL  1, 2, 1 ;  R1 = left * right
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LDA 4, 4(5) ; Base of callee frame
126 : LD   1, 1(5) ;  Load parameter 'n' into R1
127 : ST 1, 1(4) ; Argument 0
128 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
129 : ST 1, 2(4) ; Argument 1
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 84(0) ; Call MOD
134 : LD 1, 3(5) ; Load function result
135 : LDC 2, 4(0) ; Caller frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : ADD  2, 3, 0 ;  Restore left operand
138 : ADD  1, 2, 1 ;  R1 = left + right
139 : ST 1, 2(4) ; Argument 1
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame
143 : LDA 7, 100(0) ; Call reverseL
144 : LD 1, 3(5) ; Load function result
145 : LDC 2, 4(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : ST   1, 3(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LDA 4, 3(5) ; Base of callee frame
151 : LD   1, 1(5) ;  Load parameter 'n' into R1
152 : ST 1, 1(4) ; Argument 0
153 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
154 : ST 1, 2(4) ; Argument 1
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame
158 : LDA 7, 100(0) ; Call reverseL
159 : LD 1, 3(5) ; Load function result
160 : LDC 2, 3(0) ; Caller frame size
161 : SUB 5, 5, 2 ; Pop back to caller
162 : ST   1, 2(5) ;  Store function result into stack frame
163 : LD   6, 0(5) ;  Load return address
164 : LDA  7, 0(6) ;  Return to caller
165 : LDA 4, 4(5) ; Base of callee frame
166 : LD   1, 2(5) ;  Load parameter 'b' into R1
167 : ST 1, 1(4) ; Argument 0
168 : LD   1, 1(5) ;  Load parameter 'a' into R1
169 : ST 1, 2(4) ; Argument 1
170 : LDA 6, 174(0) ; Return address
171 : ST 6, 0(4) ; Store return in callee frame
172 : ADD 5, 4, 0 ; Push callee frame
173 : LDA 7, 84(0) ; Call MOD
174 : LD 1, 3(5) ; Load function result
175 : LDC 2, 4(0) ; Caller frame size
176 : SUB 5, 5, 2 ; Pop back to caller
177 : ADD  3, 1, 0 ;  Store left operand into temporary register
178 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
179 : ADD  2, 3, 0 ;  Restore left operand
180 : SUB  1, 2, 1 ;  left - right for equality check
181 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
182 : LDC  1, 0(0) ;  false
183 : LDA  7, 1(7) ;  skip setting true
184 : LDC  1, 1(0) ;  true
185 : ST   1, 3(5) ;  Store function result into stack frame
186 : LD   6, 0(5) ;  Load return address
187 : LDA  7, 0(6) ;  Return to caller
188 : LD   1, 1(5) ;  Load parameter 'i' into R1
189 : ADD  3, 1, 0 ;  Store left operand into temporary register
190 : LD   1, 2(5) ;  Load parameter 'n' into R1
191 : ADD  2, 3, 0 ;  Restore left operand
192 : SUB  1, 2, 1 ;  left - right for less-than check
193 : JLT  1, 2(7) ;  If R1 < 0, jump to true
194 : LDC  1, 0(0) ;  false
195 : LDA  7, 1(7) ;  skip setting true
196 : LDC  1, 1(0) ;  true
197 : JEQ  1, 230(0) ;  If condition is false, jump to ELSE
198 : LDA 4, 4(5) ; Base of callee frame
199 : LD   1, 1(5) ;  Load parameter 'i' into R1
200 : ST 1, 1(4) ; Argument 0
201 : LD   1, 2(5) ;  Load parameter 'n' into R1
202 : ST 1, 2(4) ; Argument 1
203 : LDA 6, 207(0) ; Return address
204 : ST 6, 0(4) ; Store return in callee frame
205 : ADD 5, 4, 0 ; Push callee frame
206 : LDA 7, 165(0) ; Call divides
207 : LD 1, 3(5) ; Load function result
208 : LDC 2, 4(0) ; Caller frame size
209 : SUB 5, 5, 2 ; Pop back to caller
210 : ADD  3, 1, 0 ;  Store left operand into temporary register
211 : LDA 4, 4(5) ; Base of callee frame
212 : LD   1, 1(5) ;  Load parameter 'i' into R1
213 : ADD  3, 1, 0 ;  Store left operand into temporary register
214 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
215 : ADD  2, 3, 0 ;  Restore left operand
216 : ADD  1, 2, 1 ;  R1 = left + right
217 : ST 1, 1(4) ; Argument 0
218 : LD   1, 2(5) ;  Load parameter 'n' into R1
219 : ST 1, 2(4) ; Argument 1
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return in callee frame
222 : ADD 5, 4, 0 ; Push callee frame
223 : LDA 7, 188(0) ; Call hasDivisorFrom
224 : LD 1, 3(5) ; Load function result
225 : LDC 2, 4(0) ; Caller frame size
226 : SUB 5, 5, 2 ; Pop back to caller
227 : ADD  2, 3, 0 ;  Restore left operand
228 : ADD  1, 2, 1 ;  R1 = left OR right
229 : LDA  7, 231(0) ;  Skip ELSE block
230 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
231 : ST   1, 3(5) ;  Store function result into stack frame
232 : LD   6, 0(5) ;  Load return address
233 : LDA  7, 0(6) ;  Return to caller
234 : LDA 4, 3(5) ; Base of callee frame
235 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
236 : ST 1, 1(4) ; Argument 0
237 : LD   1, 1(5) ;  Load parameter 'n' into R1
238 : ST 1, 2(4) ; Argument 1
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return in callee frame
241 : ADD 5, 4, 0 ; Push callee frame
242 : LDA 7, 188(0) ; Call hasDivisorFrom
243 : LD 1, 3(5) ; Load function result
244 : LDC 2, 3(0) ; Caller frame size
245 : SUB 5, 5, 2 ; Pop back to caller
246 : LDC  2, 1(0) ;  Load 1 into R2
247 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
248 : ST   1, 2(5) ;  Store function result into stack frame
249 : LD   6, 0(5) ;  Load return address
250 : LDA  7, 0(6) ;  Return to caller
251 : LDA 4, 3(5) ; Base of callee frame
252 : LD   1, 1(5) ;  Load parameter 'n' into R1
253 : ST 1, 1(4) ; Argument 0
254 : LDA 6, 258(0) ; Return address
255 : ST 6, 0(4) ; Store return in callee frame
256 : ADD 5, 4, 0 ; Push callee frame
257 : LDA 7, 324(0) ; Call emirp
258 : LD 1, 2(5) ; Load function result
259 : LDC 2, 3(0) ; Caller frame size
260 : SUB 5, 5, 2 ; Pop back to caller
261 : LDA 4, 3(5) ; Base of callee frame
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(4) ; Store return addr in callee frame
264 : ADD 5, 4, 0 ; Push new frame
265 : LDA 7, 10(0) ; Call print
266 : LDC 2, 3(0) ; Caller frame size
267 : SUB 5, 5, 2 ; Pop frame
268 : ST   1, 2(5) ;  Store function result into stack frame
269 : LDA 4, 3(5) ; Base of callee frame
270 : LD   1, 1(5) ;  Load parameter 'n' into R1
271 : ST 1, 1(4) ; Argument 0
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return in callee frame
274 : ADD 5, 4, 0 ; Push callee frame
275 : LDA 7, 282(0) ; Call snowball
276 : LD 1, 2(5) ; Load function result
277 : LDC 2, 3(0) ; Caller frame size
278 : SUB 5, 5, 2 ; Pop back to caller
279 : ST   1, 2(5) ;  Store function result into stack frame
280 : LD   6, 0(5) ;  Load return address
281 : LDA  7, 0(6) ;  Return to caller
282 : LDA 4, 3(5) ; Base of callee frame
283 : LD   1, 1(5) ;  Load parameter 'n' into R1
284 : ST 1, 1(4) ; Argument 0
285 : LDA 6, 289(0) ; Return address
286 : ST 6, 0(4) ; Store return in callee frame
287 : ADD 5, 4, 0 ; Push callee frame
288 : LDA 7, 234(0) ; Call isPrime
289 : LD 1, 2(5) ; Load function result
290 : LDC 2, 3(0) ; Caller frame size
291 : SUB 5, 5, 2 ; Pop back to caller
292 : ADD  3, 1, 0 ;  Store left operand into temporary register
293 : LD   1, 1(5) ;  Load parameter 'n' into R1
294 : ADD  3, 1, 0 ;  Store left operand into temporary register
295 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
296 : ADD  2, 3, 0 ;  Restore left operand
297 : SUB  1, 2, 1 ;  left - right for less-than check
298 : JLT  1, 2(7) ;  If R1 < 0, jump to true
299 : LDC  1, 0(0) ;  false
300 : LDA  7, 1(7) ;  skip setting true
301 : LDC  1, 1(0) ;  true
302 : JEQ  1, 305(0) ;  If condition is false, jump to ELSE
303 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
304 : LDA  7, 319(0) ;  Skip ELSE block
305 : LDA 4, 3(5) ; Base of callee frame
306 : LD   1, 1(5) ;  Load parameter 'n' into R1
307 : ADD  3, 1, 0 ;  Store left operand into temporary register
308 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
309 : ADD  2, 3, 0 ;  Restore left operand
310 : DIV  1, 2, 1 ;  R1 = left / right
311 : ST 1, 1(4) ; Argument 0
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return in callee frame
314 : ADD 5, 4, 0 ; Push callee frame
315 : LDA 7, 234(0) ; Call isPrime
316 : LD 1, 2(5) ; Load function result
317 : LDC 2, 3(0) ; Caller frame size
318 : SUB 5, 5, 2 ; Pop back to caller
319 : ADD  2, 3, 0 ;  Restore left operand
320 : MUL  1, 2, 1 ;  R1 = left AND right
321 : ST   1, 2(5) ;  Store function result into stack frame
322 : LD   6, 0(5) ;  Load return address
323 : LDA  7, 0(6) ;  Return to caller
324 : LDA 4, 3(5) ; Base of callee frame
325 : LD   1, 1(5) ;  Load parameter 'n' into R1
326 : ST 1, 1(4) ; Argument 0
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return in callee frame
329 : ADD 5, 4, 0 ; Push callee frame
330 : LDA 7, 234(0) ; Call isPrime
331 : LD 1, 2(5) ; Load function result
332 : LDC 2, 3(0) ; Caller frame size
333 : SUB 5, 5, 2 ; Pop back to caller
334 : ADD  3, 1, 0 ;  Store left operand into temporary register
335 : LDA 4, 3(5) ; Base of callee frame
336 : LDA 4, 3(5) ; Base of callee frame
337 : LD   1, 1(5) ;  Load parameter 'n' into R1
338 : ST 1, 1(4) ; Argument 0
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return in callee frame
341 : ADD 5, 4, 0 ; Push callee frame
342 : LDA 7, 150(0) ; Call reverse
343 : LD 1, 2(5) ; Load function result
344 : LDC 2, 3(0) ; Caller frame size
345 : SUB 5, 5, 2 ; Pop back to caller
346 : ST 1, 1(4) ; Argument 0
347 : LDA 6, 351(0) ; Return address
348 : ST 6, 0(4) ; Store return in callee frame
349 : ADD 5, 4, 0 ; Push callee frame
350 : LDA 7, 234(0) ; Call isPrime
351 : LD 1, 2(5) ; Load function result
352 : LDC 2, 3(0) ; Caller frame size
353 : SUB 5, 5, 2 ; Pop back to caller
354 : ADD  2, 3, 0 ;  Restore left operand
355 : MUL  1, 2, 1 ;  R1 = left AND right
356 : ST   1, 2(5) ;  Store function result into stack frame
357 : LD   6, 0(5) ;  Load return address
358 : LDA  7, 0(6) ;  Return to caller
