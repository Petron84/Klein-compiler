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
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 26(0) ; Call isExcellent
18 : LD   1, 2(5) ;  Load function result
19 : LDC   2, 3(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s frame
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LDA 4, 4(5) ; Base of callee frame
27 : LD   1, 1(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LDA 4, 3(5) ; Base of callee frame
30 : LD   1, 1(5) ;  Load parameter 'n' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 203(0) ; Call length
36 : LD   1, 2(5) ;  Load function result
37 : LDC   2, 3(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 2(4) ; Store argument 1 in callee
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return in callee frame
43 : ADD 5, 4, 0 ; Push callee frame
44 : LDA 7, 52(0) ; Call isExcellentSwitch
45 : LD   1, 3(5) ;  Load function result
46 : LDC   2, 4(0) ;  Caller frame size
47 : SUB   5, 5, 2 ;  Pop back to caller
48 : SUB   4, 4, 2 ;  Pop back to caller
49 : ST   1, 2(5) ;  Store function result into stack frame
50 : LD   6, 0(5) ;  Load return address
51 : LDA  7, 0(6) ;  Return to caller
52 : LDA 4, 3(5) ; Base of callee frame
53 : LD   1, 2(5) ;  Load parameter 'length' into R1
54 : ST 1, 1(4) ; Store argument 0 in callee
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame
58 : LDA 7, 240(0) ; Call ODD
59 : LD   1, 2(5) ;  Load function result
60 : LDC   2, 3(0) ;  Caller frame size
61 : SUB   5, 5, 2 ;  Pop back to caller
62 : SUB   4, 4, 2 ;  Pop back to caller
63 : JEQ  1, 66(0) ;  If condition is false, jump to ELSE
64 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
65 : LDA  7, 108(0) ;  Skip ELSE block
66 : LDA 4, 4(5) ; Base of callee frame
67 : LDA 4, 3(5) ; Base of callee frame
68 : LD   1, 1(5) ;  Load parameter 'n' into R1
69 : ST 1, 1(4) ; Store argument 0 in callee
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 169(0) ; Call a
74 : LD   1, 2(5) ;  Load function result
75 : LDC   2, 3(0) ;  Caller frame size
76 : SUB   5, 5, 2 ;  Pop back to caller
77 : SUB   4, 4, 2 ;  Pop back to caller
78 : ST 1, 1(4) ; Store argument 0 in callee
79 : LDA 4, 3(5) ; Base of callee frame
80 : LD   1, 1(5) ;  Load parameter 'n' into R1
81 : ST 1, 1(4) ; Store argument 0 in callee
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame
85 : LDA 7, 128(0) ; Call b
86 : LD   1, 2(5) ;  Load function result
87 : LDC   2, 3(0) ;  Caller frame size
88 : SUB   5, 5, 2 ;  Pop back to caller
89 : SUB   4, 4, 2 ;  Pop back to caller
90 : ST 1, 2(4) ; Store argument 1 in callee
91 : LDA 6, 95(0) ; Return address
92 : ST 6, 0(4) ; Store return in callee frame
93 : ADD 5, 4, 0 ; Push callee frame
94 : LDA 7, 111(0) ; Call excellentDiff
95 : LD   1, 3(5) ;  Load function result
96 : LDC   2, 4(0) ;  Caller frame size
97 : SUB   5, 5, 2 ;  Pop back to caller
98 : SUB   4, 4, 2 ;  Pop back to caller
99 : ADD  3, 1, 0 ;  Move right operand to register 3
100 : LD   1, 1(5) ;  Load parameter 'n' into R1
101 : ADD  2, 1, 0 ;  Move left operand to register 2
102 : ADD  1, 3, 0 ;  Move right operand to register 1
103 : SUB  1, 2, 1 ;  left - right for equality check
104 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
105 : LDC  1, 0(0) ;  false
106 : LDA  7, 1(7) ;  skip setting true
107 : LDC  1, 1(0) ;  true
108 : ST   1, 3(5) ;  Store function result into stack frame
109 : LD   6, 0(5) ;  Load return address
110 : LDA  7, 0(6) ;  Return to caller
111 : LD   1, 2(5) ;  Load parameter 'b' into R1
112 : ST   1, 3(4) ;  Store right operand result into return value slot
113 : LD   1, 2(5) ;  Load parameter 'b' into R1
114 : ADD  2, 1, 0 ;  Move left operand to register 2
115 : LD   1, 3(4) ;  Return right operand back into register 1
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  2, 1, 0 ;  Move left operand to register 2
118 : LD   1, 1(5) ;  Load parameter 'a' into R1
119 : ST   1, 3(4) ;  Store right operand result into return value slot
120 : LD   1, 1(5) ;  Load parameter 'a' into R1
121 : ADD  2, 1, 0 ;  Move left operand to register 2
122 : LD   1, 3(4) ;  Return right operand back into register 1
123 : MUL  1, 2, 1 ;  R1 = left * right
124 : SUB  1, 2, 1 ;  R1 = left - right
125 : ST   1, 3(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LDA 4, 4(5) ; Base of callee frame
129 : LD   1, 1(5) ;  Load parameter 'n' into R1
130 : ST 1, 1(4) ; Store argument 0 in callee
131 : LDA 4, 4(5) ; Base of callee frame
132 : LDC  1, 10(0) ;  Load integer-literal value into register 1
133 : ST 1, 1(4) ; Store argument 0 in callee
134 : LDA 4, 3(5) ; Base of callee frame
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame
140 : LDA 7, 203(0) ; Call length
141 : LD   1, 2(5) ;  Load function result
142 : LDC   2, 3(0) ;  Caller frame size
143 : SUB   5, 5, 2 ;  Pop back to caller
144 : SUB   4, 4, 2 ;  Pop back to caller
145 : ADD  2, 1, 0 ;  Move left operand to register 2
146 : LDC  1, 2(0) ;  Load integer-literal value into register 1
147 : DIV  1, 2, 1 ;  R1 = left / right
148 : ST 1, 2(4) ; Store argument 1 in callee
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return in callee frame
151 : ADD 5, 4, 0 ; Push callee frame
152 : LDA 7, 285(0) ; Call EXP
153 : LD   1, 3(5) ;  Load function result
154 : LDC   2, 4(0) ;  Caller frame size
155 : SUB   5, 5, 2 ;  Pop back to caller
156 : SUB   4, 4, 2 ;  Pop back to caller
157 : ST 1, 2(4) ; Store argument 1 in callee
158 : LDA 6, 162(0) ; Return address
159 : ST 6, 0(4) ; Store return in callee frame
160 : ADD 5, 4, 0 ; Push callee frame
161 : LDA 7, 324(0) ; Call MOD
162 : LD   1, 3(5) ;  Load function result
163 : LDC   2, 4(0) ;  Caller frame size
164 : SUB   5, 5, 2 ;  Pop back to caller
165 : SUB   4, 4, 2 ;  Pop back to caller
166 : ST   1, 2(5) ;  Store function result into stack frame
167 : LD   6, 0(5) ;  Load return address
168 : LDA  7, 0(6) ;  Return to caller
169 : LDA 4, 4(5) ; Base of callee frame
170 : LDC  1, 10(0) ;  Load integer-literal value into register 1
171 : ST 1, 1(4) ; Store argument 0 in callee
172 : LDA 4, 3(5) ; Base of callee frame
173 : LD   1, 1(5) ;  Load parameter 'n' into R1
174 : ST 1, 1(4) ; Store argument 0 in callee
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(4) ; Store return in callee frame
177 : ADD 5, 4, 0 ; Push callee frame
178 : LDA 7, 203(0) ; Call length
179 : LD   1, 2(5) ;  Load function result
180 : LDC   2, 3(0) ;  Caller frame size
181 : SUB   5, 5, 2 ;  Pop back to caller
182 : SUB   4, 4, 2 ;  Pop back to caller
183 : ADD  2, 1, 0 ;  Move left operand to register 2
184 : LDC  1, 2(0) ;  Load integer-literal value into register 1
185 : DIV  1, 2, 1 ;  R1 = left / right
186 : ST 1, 2(4) ; Store argument 1 in callee
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame
190 : LDA 7, 285(0) ; Call EXP
191 : LD   1, 3(5) ;  Load function result
192 : LDC   2, 4(0) ;  Caller frame size
193 : SUB   5, 5, 2 ;  Pop back to caller
194 : SUB   4, 4, 2 ;  Pop back to caller
195 : ADD  3, 1, 0 ;  Move right operand to register 3
196 : LD   1, 1(5) ;  Load parameter 'n' into R1
197 : ADD  2, 1, 0 ;  Move left operand to register 2
198 : ADD  1, 3, 0 ;  Move right operand to register 1
199 : DIV  1, 2, 1 ;  R1 = left / right
200 : ST   1, 2(5) ;  Store function result into stack frame
201 : LD   6, 0(5) ;  Load return address
202 : LDA  7, 0(6) ;  Return to caller
203 : LDC  1, 10(0) ;  Load integer-literal value into register 1
204 : ST   1, 3(4) ;  Store right operand result into return value slot
205 : LD   1, 1(5) ;  Load parameter 'n' into R1
206 : ADD  2, 1, 0 ;  Move left operand to register 2
207 : LD   1, 3(4) ;  Return right operand back into register 1
208 : SUB  1, 2, 1 ;  left - right for less-than check
209 : JLT  1, 2(7) ;  If R1 < 0, jump to true
210 : LDC  1, 0(0) ;  false
211 : LDA  7, 1(7) ;  skip setting true
212 : LDC  1, 1(0) ;  true
213 : JEQ  1, 216(0) ;  If condition is false, jump to ELSE
214 : LDC  1, 1(0) ;  Load integer-literal value into register 1
215 : LDA  7, 237(0) ;  Skip ELSE block
216 : LDA 4, 3(5) ; Base of callee frame
217 : LDC  1, 10(0) ;  Load integer-literal value into register 1
218 : ST   1, 3(4) ;  Store right operand result into return value slot
219 : LD   1, 1(5) ;  Load parameter 'n' into R1
220 : ADD  2, 1, 0 ;  Move left operand to register 2
221 : LD   1, 3(4) ;  Return right operand back into register 1
222 : DIV  1, 2, 1 ;  R1 = left / right
223 : ST 1, 1(4) ; Store argument 0 in callee
224 : LDA 6, 228(0) ; Return address
225 : ST 6, 0(4) ; Store return in callee frame
226 : ADD 5, 4, 0 ; Push callee frame
227 : LDA 7, 203(0) ; Call length
228 : LD   1, 2(5) ;  Load function result
229 : LDC   2, 3(0) ;  Caller frame size
230 : SUB   5, 5, 2 ;  Pop back to caller
231 : SUB   4, 4, 2 ;  Pop back to caller
232 : ADD  3, 1, 0 ;  Move right operand to register 3
233 : LDC  1, 1(0) ;  Load integer-literal value into register 1
234 : ADD  2, 1, 0 ;  Move left operand to register 2
235 : ADD  1, 3, 0 ;  Move right operand to register 1
236 : ADD  1, 2, 1 ;  R1 = left + right
237 : ST   1, 2(5) ;  Store function result into stack frame
238 : LD   6, 0(5) ;  Load return address
239 : LDA  7, 0(6) ;  Return to caller
240 : LD   1, 1(5) ;  Load parameter 'n' into R1
241 : ST   1, 3(4) ;  Store right operand result into return value slot
242 : LDC  1, 0(0) ;  Load integer-literal value into register 1
243 : ADD  2, 1, 0 ;  Move left operand to register 2
244 : LD   1, 3(4) ;  Return right operand back into register 1
245 : SUB  1, 2, 1 ;  left - right for less-than check
246 : JLT  1, 2(7) ;  If R1 < 0, jump to true
247 : LDC  1, 0(0) ;  false
248 : LDA  7, 1(7) ;  skip setting true
249 : LDC  1, 1(0) ;  true
250 : JEQ  1, 270(0) ;  If condition is false, jump to ELSE
251 : LDC  1, 2(0) ;  Load integer-literal value into register 1
252 : ST   1, 3(4) ;  Store right operand result into return value slot
253 : LD   1, 1(5) ;  Load parameter 'n' into R1
254 : ADD  2, 1, 0 ;  Move left operand to register 2
255 : LD   1, 3(4) ;  Return right operand back into register 1
256 : DIV  1, 2, 1 ;  R1 = left / right
257 : ADD  3, 1, 0 ;  Move right operand to register 3
258 : LDC  1, 2(0) ;  Load integer-literal value into register 1
259 : ADD  2, 1, 0 ;  Move left operand to register 2
260 : ADD  1, 3, 0 ;  Move right operand to register 1
261 : MUL  1, 2, 1 ;  R1 = left * right
262 : ADD  2, 1, 0 ;  Move left operand to register 2
263 : LD   1, 1(5) ;  Load parameter 'n' into R1
264 : SUB  1, 2, 1 ;  left - right for less-than check
265 : JLT  1, 2(7) ;  If R1 < 0, jump to true
266 : LDC  1, 0(0) ;  false
267 : LDA  7, 1(7) ;  skip setting true
268 : LDC  1, 1(0) ;  true
269 : LDA  7, 282(0) ;  Skip ELSE block
270 : LDA 4, 3(5) ; Base of callee frame
271 : LD   1, 1(5) ;  Load parameter 'n' into R1
272 : SUB  1, 0, 1 ;  Negate value in R1
273 : ST 1, 1(4) ; Store argument 0 in callee
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame
277 : LDA 7, 240(0) ; Call ODD
278 : LD   1, 2(5) ;  Load function result
279 : LDC   2, 3(0) ;  Caller frame size
280 : SUB   5, 5, 2 ;  Pop back to caller
281 : SUB   4, 4, 2 ;  Pop back to caller
282 : ST   1, 2(5) ;  Store function result into stack frame
283 : LD   6, 0(5) ;  Load return address
284 : LDA  7, 0(6) ;  Return to caller
285 : LDC  1, 0(0) ;  Load integer-literal value into register 1
286 : ST   1, 3(4) ;  Store right operand result into return value slot
287 : LD   1, 2(5) ;  Load parameter 'n' into R1
288 : ADD  2, 1, 0 ;  Move left operand to register 2
289 : LD   1, 3(4) ;  Return right operand back into register 1
290 : SUB  1, 2, 1 ;  left - right for equality check
291 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
292 : LDC  1, 0(0) ;  false
293 : LDA  7, 1(7) ;  skip setting true
294 : LDC  1, 1(0) ;  true
295 : JEQ  1, 298(0) ;  If condition is false, jump to ELSE
296 : LDC  1, 1(0) ;  Load integer-literal value into register 1
297 : LDA  7, 321(0) ;  Skip ELSE block
298 : LDA 4, 4(5) ; Base of callee frame
299 : LD   1, 1(5) ;  Load parameter 'm' into R1
300 : ST 1, 1(4) ; Store argument 0 in callee
301 : LDC  1, 1(0) ;  Load integer-literal value into register 1
302 : ST   1, 3(4) ;  Store right operand result into return value slot
303 : LD   1, 2(5) ;  Load parameter 'n' into R1
304 : ADD  2, 1, 0 ;  Move left operand to register 2
305 : LD   1, 3(4) ;  Return right operand back into register 1
306 : SUB  1, 2, 1 ;  R1 = left - right
307 : ST 1, 2(4) ; Store argument 1 in callee
308 : LDA 6, 312(0) ; Return address
309 : ST 6, 0(4) ; Store return in callee frame
310 : ADD 5, 4, 0 ; Push callee frame
311 : LDA 7, 285(0) ; Call EXP
312 : LD   1, 3(5) ;  Load function result
313 : LDC   2, 4(0) ;  Caller frame size
314 : SUB   5, 5, 2 ;  Pop back to caller
315 : SUB   4, 4, 2 ;  Pop back to caller
316 : ADD  3, 1, 0 ;  Move right operand to register 3
317 : LD   1, 1(5) ;  Load parameter 'm' into R1
318 : ADD  2, 1, 0 ;  Move left operand to register 2
319 : ADD  1, 3, 0 ;  Move right operand to register 1
320 : MUL  1, 2, 1 ;  R1 = left * right
321 : ST   1, 3(5) ;  Store function result into stack frame
322 : LD   6, 0(5) ;  Load return address
323 : LDA  7, 0(6) ;  Return to caller
324 : LD   1, 2(5) ;  Load parameter 'n' into R1
325 : ST   1, 3(4) ;  Store right operand result into return value slot
326 : LD   1, 1(5) ;  Load parameter 'm' into R1
327 : ADD  2, 1, 0 ;  Move left operand to register 2
328 : LD   1, 3(4) ;  Return right operand back into register 1
329 : DIV  1, 2, 1 ;  R1 = left / right
330 : ADD  3, 1, 0 ;  Move right operand to register 3
331 : LD   1, 2(5) ;  Load parameter 'n' into R1
332 : ADD  2, 1, 0 ;  Move left operand to register 2
333 : ADD  1, 3, 0 ;  Move right operand to register 1
334 : MUL  1, 2, 1 ;  R1 = left * right
335 : ADD  3, 1, 0 ;  Move right operand to register 3
336 : LD   1, 1(5) ;  Load parameter 'm' into R1
337 : ADD  2, 1, 0 ;  Move left operand to register 2
338 : ADD  1, 3, 0 ;  Move right operand to register 1
339 : SUB  1, 2, 1 ;  R1 = left - right
340 : ST   1, 3(5) ;  Store function result into stack frame
341 : LD   6, 0(5) ;  Load return address
342 : LDA  7, 0(6) ;  Return to caller
