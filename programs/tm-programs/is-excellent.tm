0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LDA  6, 2(7) ;  Calculate return address
5 : ST   6, 0(5) ;  Store return address in main stack frame
6 : LDA  7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT  1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT  1, 0, 0 ;  Hardcoded print function
10 : LD   6, 0(5) ;  Load return addess from stack frame.
11 : LDA  7, 0(6) ;  Jump to return address.
12 : LDA 4, 3(5) ; Base of callee frame
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 27(0) ; Call isExcellent
19 : LD   1, 2(5) ;  Load function result
20 : LDC   2, 3(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD   1, 2(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LDA 4, 4(5) ; Base of callee frame
28 : LD   1, 1(5) ;  Load parameter 'n' into R1
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LDA 4, 3(5) ; Base of callee frame
31 : LD   1, 1(5) ;  Load parameter 'n' into R1
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 204(0) ; Call length
37 : LD   1, 2(5) ;  Load function result
38 : LDC   2, 3(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ST 1, 2(4) ; Store argument 1 in callee
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame
45 : LDA 7, 53(0) ; Call isExcellentSwitch
46 : LD   1, 3(5) ;  Load function result
47 : LDC   2, 4(0) ;  Caller frame size
48 : SUB   5, 5, 2 ;  Pop back to caller
49 : SUB   4, 4, 2 ;  Pop back to caller
50 : ST   1, 2(5) ;  Store function result into stack frame
51 : LD   6, 0(5) ;  Load return address
52 : LDA  7, 0(6) ;  Return to caller
53 : LDA 4, 3(5) ; Base of callee frame
54 : LD   1, 2(5) ;  Load parameter 'length' into R1
55 : ST 1, 1(4) ; Store argument 0 in callee
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return in callee frame
58 : ADD 5, 4, 0 ; Push callee frame
59 : LDA 7, 241(0) ; Call ODD
60 : LD   1, 2(5) ;  Load function result
61 : LDC   2, 3(0) ;  Caller frame size
62 : SUB   5, 5, 2 ;  Pop back to caller
63 : SUB   4, 4, 2 ;  Pop back to caller
64 : JEQ  1, 67(0) ;  If condition is false, jump to ELSE
65 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
66 : LDA  7, 109(0) ;  Skip ELSE block
67 : LDA 4, 4(5) ; Base of callee frame
68 : LDA 4, 3(5) ; Base of callee frame
69 : LD   1, 1(5) ;  Load parameter 'n' into R1
70 : ST 1, 1(4) ; Store argument 0 in callee
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame
74 : LDA 7, 170(0) ; Call a
75 : LD   1, 2(5) ;  Load function result
76 : LDC   2, 3(0) ;  Caller frame size
77 : SUB   5, 5, 2 ;  Pop back to caller
78 : SUB   4, 4, 2 ;  Pop back to caller
79 : ST 1, 1(4) ; Store argument 0 in callee
80 : LDA 4, 3(5) ; Base of callee frame
81 : LD   1, 1(5) ;  Load parameter 'n' into R1
82 : ST 1, 1(4) ; Store argument 0 in callee
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(4) ; Store return in callee frame
85 : ADD 5, 4, 0 ; Push callee frame
86 : LDA 7, 129(0) ; Call b
87 : LD   1, 2(5) ;  Load function result
88 : LDC   2, 3(0) ;  Caller frame size
89 : SUB   5, 5, 2 ;  Pop back to caller
90 : SUB   4, 4, 2 ;  Pop back to caller
91 : ST 1, 2(4) ; Store argument 1 in callee
92 : LDA 6, 96(0) ; Return address
93 : ST 6, 0(4) ; Store return in callee frame
94 : ADD 5, 4, 0 ; Push callee frame
95 : LDA 7, 112(0) ; Call excellentDiff
96 : LD   1, 3(5) ;  Load function result
97 : LDC   2, 4(0) ;  Caller frame size
98 : SUB   5, 5, 2 ;  Pop back to caller
99 : SUB   4, 4, 2 ;  Pop back to caller
100 : ADD  3, 1, 0 ;  Move right operand to register 3
101 : LD   1, 1(5) ;  Load parameter 'n' into R1
102 : ADD  2, 1, 0 ;  Move left operand to register 2
103 : ADD  1, 3, 0 ;  Move right operand to register 1
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : ST   1, 3(5) ;  Store function result into stack frame
110 : LD   6, 0(5) ;  Load return address
111 : LDA  7, 0(6) ;  Return to caller
112 : LD   1, 2(5) ;  Load parameter 'b' into R1
113 : ST   1, 3(4) ;  Store right operand result into return value slot
114 : LD   1, 2(5) ;  Load parameter 'b' into R1
115 : ADD  2, 1, 0 ;  Move left operand to register 2
116 : LD   1, 3(4) ;  Return right operand back into register 1
117 : MUL  1, 2, 1 ;  R1 = left * right
118 : ADD  2, 1, 0 ;  Move left operand to register 2
119 : LD   1, 1(5) ;  Load parameter 'a' into R1
120 : ST   1, 3(4) ;  Store right operand result into return value slot
121 : LD   1, 1(5) ;  Load parameter 'a' into R1
122 : ADD  2, 1, 0 ;  Move left operand to register 2
123 : LD   1, 3(4) ;  Return right operand back into register 1
124 : MUL  1, 2, 1 ;  R1 = left * right
125 : SUB  1, 2, 1 ;  R1 = left - right
126 : ST   1, 3(5) ;  Store function result into stack frame
127 : LD   6, 0(5) ;  Load return address
128 : LDA  7, 0(6) ;  Return to caller
129 : LDA 4, 4(5) ; Base of callee frame
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LDA 4, 4(5) ; Base of callee frame
133 : LDC  1, 10(0) ;  Load integer-literal value into register 1
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LDA 4, 3(5) ; Base of callee frame
136 : LD   1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 204(0) ; Call length
142 : LD   1, 2(5) ;  Load function result
143 : LDC   2, 3(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : SUB   4, 4, 2 ;  Pop back to caller
146 : ADD  2, 1, 0 ;  Move left operand to register 2
147 : LDC  1, 2(0) ;  Load integer-literal value into register 1
148 : DIV  1, 2, 1 ;  R1 = left / right
149 : ST 1, 2(4) ; Store argument 1 in callee
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame
153 : LDA 7, 286(0) ; Call EXP
154 : LD   1, 3(5) ;  Load function result
155 : LDC   2, 4(0) ;  Caller frame size
156 : SUB   5, 5, 2 ;  Pop back to caller
157 : SUB   4, 4, 2 ;  Pop back to caller
158 : ST 1, 2(4) ; Store argument 1 in callee
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return in callee frame
161 : ADD 5, 4, 0 ; Push callee frame
162 : LDA 7, 325(0) ; Call MOD
163 : LD   1, 3(5) ;  Load function result
164 : LDC   2, 4(0) ;  Caller frame size
165 : SUB   5, 5, 2 ;  Pop back to caller
166 : SUB   4, 4, 2 ;  Pop back to caller
167 : ST   1, 2(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
170 : LDA 4, 4(5) ; Base of callee frame
171 : LDC  1, 10(0) ;  Load integer-literal value into register 1
172 : ST 1, 1(4) ; Store argument 0 in callee
173 : LDA 4, 3(5) ; Base of callee frame
174 : LD   1, 1(5) ;  Load parameter 'n' into R1
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame
179 : LDA 7, 204(0) ; Call length
180 : LD   1, 2(5) ;  Load function result
181 : LDC   2, 3(0) ;  Caller frame size
182 : SUB   5, 5, 2 ;  Pop back to caller
183 : SUB   4, 4, 2 ;  Pop back to caller
184 : ADD  2, 1, 0 ;  Move left operand to register 2
185 : LDC  1, 2(0) ;  Load integer-literal value into register 1
186 : DIV  1, 2, 1 ;  R1 = left / right
187 : ST 1, 2(4) ; Store argument 1 in callee
188 : LDA 6, 192(0) ; Return address
189 : ST 6, 0(4) ; Store return in callee frame
190 : ADD 5, 4, 0 ; Push callee frame
191 : LDA 7, 286(0) ; Call EXP
192 : LD   1, 3(5) ;  Load function result
193 : LDC   2, 4(0) ;  Caller frame size
194 : SUB   5, 5, 2 ;  Pop back to caller
195 : SUB   4, 4, 2 ;  Pop back to caller
196 : ADD  3, 1, 0 ;  Move right operand to register 3
197 : LD   1, 1(5) ;  Load parameter 'n' into R1
198 : ADD  2, 1, 0 ;  Move left operand to register 2
199 : ADD  1, 3, 0 ;  Move right operand to register 1
200 : DIV  1, 2, 1 ;  R1 = left / right
201 : ST   1, 2(5) ;  Store function result into stack frame
202 : LD   6, 0(5) ;  Load return address
203 : LDA  7, 0(6) ;  Return to caller
204 : LDC  1, 10(0) ;  Load integer-literal value into register 1
205 : ST   1, 3(4) ;  Store right operand result into return value slot
206 : LD   1, 1(5) ;  Load parameter 'n' into R1
207 : ADD  2, 1, 0 ;  Move left operand to register 2
208 : LD   1, 3(4) ;  Return right operand back into register 1
209 : SUB  1, 2, 1 ;  left - right for less-than check
210 : JLT  1, 2(7) ;  If R1 < 0, jump to true
211 : LDC  1, 0(0) ;  false
212 : LDA  7, 1(7) ;  skip setting true
213 : LDC  1, 1(0) ;  true
214 : JEQ  1, 217(0) ;  If condition is false, jump to ELSE
215 : LDC  1, 1(0) ;  Load integer-literal value into register 1
216 : LDA  7, 238(0) ;  Skip ELSE block
217 : LDA 4, 3(5) ; Base of callee frame
218 : LDC  1, 10(0) ;  Load integer-literal value into register 1
219 : ST   1, 3(4) ;  Store right operand result into return value slot
220 : LD   1, 1(5) ;  Load parameter 'n' into R1
221 : ADD  2, 1, 0 ;  Move left operand to register 2
222 : LD   1, 3(4) ;  Return right operand back into register 1
223 : DIV  1, 2, 1 ;  R1 = left / right
224 : ST 1, 1(4) ; Store argument 0 in callee
225 : LDA 6, 229(0) ; Return address
226 : ST 6, 0(4) ; Store return in callee frame
227 : ADD 5, 4, 0 ; Push callee frame
228 : LDA 7, 204(0) ; Call length
229 : LD   1, 2(5) ;  Load function result
230 : LDC   2, 3(0) ;  Caller frame size
231 : SUB   5, 5, 2 ;  Pop back to caller
232 : SUB   4, 4, 2 ;  Pop back to caller
233 : ADD  3, 1, 0 ;  Move right operand to register 3
234 : LDC  1, 1(0) ;  Load integer-literal value into register 1
235 : ADD  2, 1, 0 ;  Move left operand to register 2
236 : ADD  1, 3, 0 ;  Move right operand to register 1
237 : ADD  1, 2, 1 ;  R1 = left + right
238 : ST   1, 2(5) ;  Store function result into stack frame
239 : LD   6, 0(5) ;  Load return address
240 : LDA  7, 0(6) ;  Return to caller
241 : LD   1, 1(5) ;  Load parameter 'n' into R1
242 : ST   1, 3(4) ;  Store right operand result into return value slot
243 : LDC  1, 0(0) ;  Load integer-literal value into register 1
244 : ADD  2, 1, 0 ;  Move left operand to register 2
245 : LD   1, 3(4) ;  Return right operand back into register 1
246 : SUB  1, 2, 1 ;  left - right for less-than check
247 : JLT  1, 2(7) ;  If R1 < 0, jump to true
248 : LDC  1, 0(0) ;  false
249 : LDA  7, 1(7) ;  skip setting true
250 : LDC  1, 1(0) ;  true
251 : JEQ  1, 271(0) ;  If condition is false, jump to ELSE
252 : LDC  1, 2(0) ;  Load integer-literal value into register 1
253 : ST   1, 3(4) ;  Store right operand result into return value slot
254 : LD   1, 1(5) ;  Load parameter 'n' into R1
255 : ADD  2, 1, 0 ;  Move left operand to register 2
256 : LD   1, 3(4) ;  Return right operand back into register 1
257 : DIV  1, 2, 1 ;  R1 = left / right
258 : ADD  3, 1, 0 ;  Move right operand to register 3
259 : LDC  1, 2(0) ;  Load integer-literal value into register 1
260 : ADD  2, 1, 0 ;  Move left operand to register 2
261 : ADD  1, 3, 0 ;  Move right operand to register 1
262 : MUL  1, 2, 1 ;  R1 = left * right
263 : ADD  2, 1, 0 ;  Move left operand to register 2
264 : LD   1, 1(5) ;  Load parameter 'n' into R1
265 : SUB  1, 2, 1 ;  left - right for less-than check
266 : JLT  1, 2(7) ;  If R1 < 0, jump to true
267 : LDC  1, 0(0) ;  false
268 : LDA  7, 1(7) ;  skip setting true
269 : LDC  1, 1(0) ;  true
270 : LDA  7, 283(0) ;  Skip ELSE block
271 : LDA 4, 3(5) ; Base of callee frame
272 : LD   1, 1(5) ;  Load parameter 'n' into R1
273 : SUB  1, 0, 1 ;  Negate value in R1
274 : ST 1, 1(4) ; Store argument 0 in callee
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(4) ; Store return in callee frame
277 : ADD 5, 4, 0 ; Push callee frame
278 : LDA 7, 241(0) ; Call ODD
279 : LD   1, 2(5) ;  Load function result
280 : LDC   2, 3(0) ;  Caller frame size
281 : SUB   5, 5, 2 ;  Pop back to caller
282 : SUB   4, 4, 2 ;  Pop back to caller
283 : ST   1, 2(5) ;  Store function result into stack frame
284 : LD   6, 0(5) ;  Load return address
285 : LDA  7, 0(6) ;  Return to caller
286 : LDC  1, 0(0) ;  Load integer-literal value into register 1
287 : ST   1, 3(4) ;  Store right operand result into return value slot
288 : LD   1, 2(5) ;  Load parameter 'n' into R1
289 : ADD  2, 1, 0 ;  Move left operand to register 2
290 : LD   1, 3(4) ;  Return right operand back into register 1
291 : SUB  1, 2, 1 ;  left - right for equality check
292 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
293 : LDC  1, 0(0) ;  false
294 : LDA  7, 1(7) ;  skip setting true
295 : LDC  1, 1(0) ;  true
296 : JEQ  1, 299(0) ;  If condition is false, jump to ELSE
297 : LDC  1, 1(0) ;  Load integer-literal value into register 1
298 : LDA  7, 322(0) ;  Skip ELSE block
299 : LDA 4, 4(5) ; Base of callee frame
300 : LD   1, 1(5) ;  Load parameter 'm' into R1
301 : ST 1, 1(4) ; Store argument 0 in callee
302 : LDC  1, 1(0) ;  Load integer-literal value into register 1
303 : ST   1, 3(4) ;  Store right operand result into return value slot
304 : LD   1, 2(5) ;  Load parameter 'n' into R1
305 : ADD  2, 1, 0 ;  Move left operand to register 2
306 : LD   1, 3(4) ;  Return right operand back into register 1
307 : SUB  1, 2, 1 ;  R1 = left - right
308 : ST 1, 2(4) ; Store argument 1 in callee
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame
312 : LDA 7, 286(0) ; Call EXP
313 : LD   1, 3(5) ;  Load function result
314 : LDC   2, 4(0) ;  Caller frame size
315 : SUB   5, 5, 2 ;  Pop back to caller
316 : SUB   4, 4, 2 ;  Pop back to caller
317 : ADD  3, 1, 0 ;  Move right operand to register 3
318 : LD   1, 1(5) ;  Load parameter 'm' into R1
319 : ADD  2, 1, 0 ;  Move left operand to register 2
320 : ADD  1, 3, 0 ;  Move right operand to register 1
321 : MUL  1, 2, 1 ;  R1 = left * right
322 : ST   1, 3(5) ;  Store function result into stack frame
323 : LD   6, 0(5) ;  Load return address
324 : LDA  7, 0(6) ;  Return to caller
325 : LD   1, 2(5) ;  Load parameter 'n' into R1
326 : ST   1, 3(4) ;  Store right operand result into return value slot
327 : LD   1, 1(5) ;  Load parameter 'm' into R1
328 : ADD  2, 1, 0 ;  Move left operand to register 2
329 : LD   1, 3(4) ;  Return right operand back into register 1
330 : DIV  1, 2, 1 ;  R1 = left / right
331 : ADD  3, 1, 0 ;  Move right operand to register 3
332 : LD   1, 2(5) ;  Load parameter 'n' into R1
333 : ADD  2, 1, 0 ;  Move left operand to register 2
334 : ADD  1, 3, 0 ;  Move right operand to register 1
335 : MUL  1, 2, 1 ;  R1 = left * right
336 : ADD  3, 1, 0 ;  Move right operand to register 3
337 : LD   1, 1(5) ;  Load parameter 'm' into R1
338 : ADD  2, 1, 0 ;  Move left operand to register 2
339 : ADD  1, 3, 0 ;  Move right operand to register 1
340 : SUB  1, 2, 1 ;  R1 = left - right
341 : ST   1, 3(5) ;  Store function result into stack frame
342 : LD   6, 0(5) ;  Load return address
343 : LDA  7, 0(6) ;  Return to caller
