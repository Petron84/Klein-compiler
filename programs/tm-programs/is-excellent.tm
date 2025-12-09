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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : LDA 4, 3(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDA 4, 3(5) ; Base of callee frame
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
27 : LD   1, 1(5) ;  Load parameter 'n' into R1
28 : LDA 4, 4(5) ; Base of callee frame
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LD   1, 1(5) ;  Load parameter 'n' into R1
31 : LDA 4, 3(5) ; Base of callee frame
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 4, 3(5) ; Base of callee frame
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame
37 : LDA 7, 219(0) ; Call length
38 : LD   1, 2(5) ;  Load function result
39 : LDC   2, 3(0) ;  Caller frame size
40 : SUB   5, 5, 2 ;  Pop back to caller
41 : SUB   4, 4, 2 ;  Pop back to caller
42 : LDA 4, 4(5) ; Base of callee frame
43 : ST 1, 2(4) ; Store argument 1 in callee
44 : LDA 4, 4(5) ; Base of callee frame
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame
48 : LDA 7, 56(0) ; Call isExcellentSwitch
49 : LD   1, 3(5) ;  Load function result
50 : LDC   2, 4(0) ;  Caller frame size
51 : SUB   5, 5, 2 ;  Pop back to caller
52 : SUB   4, 4, 2 ;  Pop back to caller
53 : ST   1, 2(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LD   1, 2(5) ;  Load parameter 'length' into R1
57 : LDA 4, 3(5) ; Base of callee frame
58 : ST 1, 1(4) ; Store argument 0 in callee
59 : LDA 4, 3(5) ; Base of callee frame
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame
63 : LDA 7, 254(0) ; Call ODD
64 : LD   1, 2(5) ;  Load function result
65 : LDC   2, 3(0) ;  Caller frame size
66 : SUB   5, 5, 2 ;  Pop back to caller
67 : SUB   4, 4, 2 ;  Pop back to caller
68 : JEQ  1, 71(0) ;  If condition is false, jump to ELSE
69 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
70 : LDA  7, 116(0) ;  Skip ELSE block
71 : LD   1, 1(5) ;  Load parameter 'n' into R1
72 : ADD  3, 1, 0 ;  Store left operand into temporary register
73 : LD   1, 1(5) ;  Load parameter 'n' into R1
74 : LDA 4, 3(5) ; Base of callee frame
75 : ST 1, 1(4) ; Store argument 0 in callee
76 : LDA 4, 3(5) ; Base of callee frame
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return in callee frame
79 : ADD 5, 4, 0 ; Push callee frame
80 : LDA 7, 182(0) ; Call a
81 : LD   1, 2(5) ;  Load function result
82 : LDC   2, 3(0) ;  Caller frame size
83 : SUB   5, 5, 2 ;  Pop back to caller
84 : SUB   4, 4, 2 ;  Pop back to caller
85 : LDA 4, 4(5) ; Base of callee frame
86 : ST 1, 1(4) ; Store argument 0 in callee
87 : LD   1, 1(5) ;  Load parameter 'n' into R1
88 : LDA 4, 3(5) ; Base of callee frame
89 : ST 1, 1(4) ; Store argument 0 in callee
90 : LDA 4, 3(5) ; Base of callee frame
91 : LDA 6, 95(0) ; Return address
92 : ST 6, 0(4) ; Store return in callee frame
93 : ADD 5, 4, 0 ; Push callee frame
94 : LDA 7, 135(0) ; Call b
95 : LD   1, 2(5) ;  Load function result
96 : LDC   2, 3(0) ;  Caller frame size
97 : SUB   5, 5, 2 ;  Pop back to caller
98 : SUB   4, 4, 2 ;  Pop back to caller
99 : LDA 4, 4(5) ; Base of callee frame
100 : ST 1, 2(4) ; Store argument 1 in callee
101 : LDA 4, 4(5) ; Base of callee frame
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame
105 : LDA 7, 119(0) ; Call excellentDiff
106 : LD   1, 3(5) ;  Load function result
107 : LDC   2, 4(0) ;  Caller frame size
108 : SUB   5, 5, 2 ;  Pop back to caller
109 : SUB   4, 4, 2 ;  Pop back to caller
110 : ADD  2, 3, 0 ;  Restore left operand
111 : SUB  1, 2, 1 ;  left - right for equality check
112 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
113 : LDC  1, 0(0) ;  false
114 : LDA  7, 1(7) ;  skip setting true
115 : LDC  1, 1(0) ;  true
116 : ST   1, 3(5) ;  Store function result into stack frame
117 : LD   6, 0(5) ;  Load return address
118 : LDA  7, 0(6) ;  Return to caller
119 : LD   1, 2(5) ;  Load parameter 'b' into R1
120 : ADD  3, 1, 0 ;  Store left operand into temporary register
121 : LD   1, 2(5) ;  Load parameter 'b' into R1
122 : ADD  2, 3, 0 ;  Restore left operand
123 : MUL  1, 2, 1 ;  R1 = left * right
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LD   1, 1(5) ;  Load parameter 'a' into R1
126 : ADD  3, 1, 0 ;  Store left operand into temporary register
127 : LD   1, 1(5) ;  Load parameter 'a' into R1
128 : ADD  2, 3, 0 ;  Restore left operand
129 : MUL  1, 2, 1 ;  R1 = left * right
130 : ADD  2, 3, 0 ;  Restore left operand
131 : SUB  1, 2, 1 ;  R1 = left - right
132 : ST   1, 3(5) ;  Store function result into stack frame
133 : LD   6, 0(5) ;  Load return address
134 : LDA  7, 0(6) ;  Return to caller
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : LDA 4, 4(5) ; Base of callee frame
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
139 : LDA 4, 4(5) ; Base of callee frame
140 : ST 1, 1(4) ; Store argument 0 in callee
141 : LD   1, 1(5) ;  Load parameter 'n' into R1
142 : LDA 4, 3(5) ; Base of callee frame
143 : ST 1, 1(4) ; Store argument 0 in callee
144 : LDA 4, 3(5) ; Base of callee frame
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame
148 : LDA 7, 219(0) ; Call length
149 : LD   1, 2(5) ;  Load function result
150 : LDC   2, 3(0) ;  Caller frame size
151 : SUB   5, 5, 2 ;  Pop back to caller
152 : SUB   4, 4, 2 ;  Pop back to caller
153 : ADD  3, 1, 0 ;  Store left operand into temporary register
154 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
155 : ADD  2, 3, 0 ;  Restore left operand
156 : DIV  1, 2, 1 ;  R1 = left / right
157 : LDA 4, 4(5) ; Base of callee frame
158 : ST 1, 2(4) ; Store argument 1 in callee
159 : LDA 4, 4(5) ; Base of callee frame
160 : LDA 6, 164(0) ; Return address
161 : ST 6, 0(4) ; Store return in callee frame
162 : ADD 5, 4, 0 ; Push callee frame
163 : LDA 7, 298(0) ; Call EXP
164 : LD   1, 3(5) ;  Load function result
165 : LDC   2, 4(0) ;  Caller frame size
166 : SUB   5, 5, 2 ;  Pop back to caller
167 : SUB   4, 4, 2 ;  Pop back to caller
168 : LDA 4, 4(5) ; Base of callee frame
169 : ST 1, 2(4) ; Store argument 1 in callee
170 : LDA 4, 4(5) ; Base of callee frame
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return in callee frame
173 : ADD 5, 4, 0 ; Push callee frame
174 : LDA 7, 336(0) ; Call MOD
175 : LD   1, 3(5) ;  Load function result
176 : LDC   2, 4(0) ;  Caller frame size
177 : SUB   5, 5, 2 ;  Pop back to caller
178 : SUB   4, 4, 2 ;  Pop back to caller
179 : ST   1, 2(5) ;  Store function result into stack frame
180 : LD   6, 0(5) ;  Load return address
181 : LDA  7, 0(6) ;  Return to caller
182 : LD   1, 1(5) ;  Load parameter 'n' into R1
183 : ADD  3, 1, 0 ;  Store left operand into temporary register
184 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
185 : LDA 4, 4(5) ; Base of callee frame
186 : ST 1, 1(4) ; Store argument 0 in callee
187 : LD   1, 1(5) ;  Load parameter 'n' into R1
188 : LDA 4, 3(5) ; Base of callee frame
189 : ST 1, 1(4) ; Store argument 0 in callee
190 : LDA 4, 3(5) ; Base of callee frame
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return in callee frame
193 : ADD 5, 4, 0 ; Push callee frame
194 : LDA 7, 219(0) ; Call length
195 : LD   1, 2(5) ;  Load function result
196 : LDC   2, 3(0) ;  Caller frame size
197 : SUB   5, 5, 2 ;  Pop back to caller
198 : SUB   4, 4, 2 ;  Pop back to caller
199 : ADD  3, 1, 0 ;  Store left operand into temporary register
200 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
201 : ADD  2, 3, 0 ;  Restore left operand
202 : DIV  1, 2, 1 ;  R1 = left / right
203 : LDA 4, 4(5) ; Base of callee frame
204 : ST 1, 2(4) ; Store argument 1 in callee
205 : LDA 4, 4(5) ; Base of callee frame
206 : LDA 6, 210(0) ; Return address
207 : ST 6, 0(4) ; Store return in callee frame
208 : ADD 5, 4, 0 ; Push callee frame
209 : LDA 7, 298(0) ; Call EXP
210 : LD   1, 3(5) ;  Load function result
211 : LDC   2, 4(0) ;  Caller frame size
212 : SUB   5, 5, 2 ;  Pop back to caller
213 : SUB   4, 4, 2 ;  Pop back to caller
214 : ADD  2, 3, 0 ;  Restore left operand
215 : DIV  1, 2, 1 ;  R1 = left / right
216 : ST   1, 2(5) ;  Store function result into stack frame
217 : LD   6, 0(5) ;  Load return address
218 : LDA  7, 0(6) ;  Return to caller
219 : LD   1, 1(5) ;  Load parameter 'n' into R1
220 : ADD  3, 1, 0 ;  Store left operand into temporary register
221 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
222 : ADD  2, 3, 0 ;  Restore left operand
223 : SUB  1, 2, 1 ;  left - right for less-than check
224 : JLT  1, 2(7) ;  If R1 < 0, jump to true
225 : LDC  1, 0(0) ;  false
226 : LDA  7, 1(7) ;  skip setting true
227 : LDC  1, 1(0) ;  true
228 : JEQ  1, 231(0) ;  If condition is false, jump to ELSE
229 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
230 : LDA  7, 251(0) ;  Skip ELSE block
231 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
232 : ADD  3, 1, 0 ;  Store left operand into temporary register
233 : LD   1, 1(5) ;  Load parameter 'n' into R1
234 : ADD  3, 1, 0 ;  Store left operand into temporary register
235 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
236 : ADD  2, 3, 0 ;  Restore left operand
237 : DIV  1, 2, 1 ;  R1 = left / right
238 : LDA 4, 3(5) ; Base of callee frame
239 : ST 1, 1(4) ; Store argument 0 in callee
240 : LDA 4, 3(5) ; Base of callee frame
241 : LDA 6, 245(0) ; Return address
242 : ST 6, 0(4) ; Store return in callee frame
243 : ADD 5, 4, 0 ; Push callee frame
244 : LDA 7, 219(0) ; Call length
245 : LD   1, 2(5) ;  Load function result
246 : LDC   2, 3(0) ;  Caller frame size
247 : SUB   5, 5, 2 ;  Pop back to caller
248 : SUB   4, 4, 2 ;  Pop back to caller
249 : ADD  2, 3, 0 ;  Restore left operand
250 : ADD  1, 2, 1 ;  R1 = left + right
251 : ST   1, 2(5) ;  Store function result into stack frame
252 : LD   6, 0(5) ;  Load return address
253 : LDA  7, 0(6) ;  Return to caller
254 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
255 : ADD  3, 1, 0 ;  Store left operand into temporary register
256 : LD   1, 1(5) ;  Load parameter 'n' into R1
257 : ADD  2, 3, 0 ;  Restore left operand
258 : SUB  1, 2, 1 ;  left - right for less-than check
259 : JLT  1, 2(7) ;  If R1 < 0, jump to true
260 : LDC  1, 0(0) ;  false
261 : LDA  7, 1(7) ;  skip setting true
262 : LDC  1, 1(0) ;  true
263 : JEQ  1, 282(0) ;  If condition is false, jump to ELSE
264 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
265 : ADD  3, 1, 0 ;  Store left operand into temporary register
266 : LD   1, 1(5) ;  Load parameter 'n' into R1
267 : ADD  3, 1, 0 ;  Store left operand into temporary register
268 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
269 : ADD  2, 3, 0 ;  Restore left operand
270 : DIV  1, 2, 1 ;  R1 = left / right
271 : ADD  2, 3, 0 ;  Restore left operand
272 : MUL  1, 2, 1 ;  R1 = left * right
273 : ADD  3, 1, 0 ;  Store left operand into temporary register
274 : LD   1, 1(5) ;  Load parameter 'n' into R1
275 : ADD  2, 3, 0 ;  Restore left operand
276 : SUB  1, 2, 1 ;  left - right for less-than check
277 : JLT  1, 2(7) ;  If R1 < 0, jump to true
278 : LDC  1, 0(0) ;  false
279 : LDA  7, 1(7) ;  skip setting true
280 : LDC  1, 1(0) ;  true
281 : LDA  7, 295(0) ;  Skip ELSE block
282 : LD   1, 1(5) ;  Load parameter 'n' into R1
283 : SUB  1, 0, 1 ;  Negate value in R1
284 : LDA 4, 3(5) ; Base of callee frame
285 : ST 1, 1(4) ; Store argument 0 in callee
286 : LDA 4, 3(5) ; Base of callee frame
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return in callee frame
289 : ADD 5, 4, 0 ; Push callee frame
290 : LDA 7, 254(0) ; Call ODD
291 : LD   1, 2(5) ;  Load function result
292 : LDC   2, 3(0) ;  Caller frame size
293 : SUB   5, 5, 2 ;  Pop back to caller
294 : SUB   4, 4, 2 ;  Pop back to caller
295 : ST   1, 2(5) ;  Store function result into stack frame
296 : LD   6, 0(5) ;  Load return address
297 : LDA  7, 0(6) ;  Return to caller
298 : LD   1, 2(5) ;  Load parameter 'n' into R1
299 : ADD  3, 1, 0 ;  Store left operand into temporary register
300 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
301 : ADD  2, 3, 0 ;  Restore left operand
302 : SUB  1, 2, 1 ;  left - right for equality check
303 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
304 : LDC  1, 0(0) ;  false
305 : LDA  7, 1(7) ;  skip setting true
306 : LDC  1, 1(0) ;  true
307 : JEQ  1, 310(0) ;  If condition is false, jump to ELSE
308 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
309 : LDA  7, 333(0) ;  Skip ELSE block
310 : LD   1, 1(5) ;  Load parameter 'm' into R1
311 : ADD  3, 1, 0 ;  Store left operand into temporary register
312 : LD   1, 1(5) ;  Load parameter 'm' into R1
313 : LDA 4, 4(5) ; Base of callee frame
314 : ST 1, 1(4) ; Store argument 0 in callee
315 : LD   1, 2(5) ;  Load parameter 'n' into R1
316 : ADD  3, 1, 0 ;  Store left operand into temporary register
317 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
318 : ADD  2, 3, 0 ;  Restore left operand
319 : SUB  1, 2, 1 ;  R1 = left - right
320 : LDA 4, 4(5) ; Base of callee frame
321 : ST 1, 2(4) ; Store argument 1 in callee
322 : LDA 4, 4(5) ; Base of callee frame
323 : LDA 6, 327(0) ; Return address
324 : ST 6, 0(4) ; Store return in callee frame
325 : ADD 5, 4, 0 ; Push callee frame
326 : LDA 7, 298(0) ; Call EXP
327 : LD   1, 3(5) ;  Load function result
328 : LDC   2, 4(0) ;  Caller frame size
329 : SUB   5, 5, 2 ;  Pop back to caller
330 : SUB   4, 4, 2 ;  Pop back to caller
331 : ADD  2, 3, 0 ;  Restore left operand
332 : MUL  1, 2, 1 ;  R1 = left * right
333 : ST   1, 3(5) ;  Store function result into stack frame
334 : LD   6, 0(5) ;  Load return address
335 : LDA  7, 0(6) ;  Return to caller
336 : LD   1, 1(5) ;  Load parameter 'm' into R1
337 : ADD  3, 1, 0 ;  Store left operand into temporary register
338 : LD   1, 2(5) ;  Load parameter 'n' into R1
339 : ADD  3, 1, 0 ;  Store left operand into temporary register
340 : LD   1, 1(5) ;  Load parameter 'm' into R1
341 : ADD  3, 1, 0 ;  Store left operand into temporary register
342 : LD   1, 2(5) ;  Load parameter 'n' into R1
343 : ADD  2, 3, 0 ;  Restore left operand
344 : DIV  1, 2, 1 ;  R1 = left / right
345 : ADD  2, 3, 0 ;  Restore left operand
346 : MUL  1, 2, 1 ;  R1 = left * right
347 : ADD  2, 3, 0 ;  Restore left operand
348 : SUB  1, 2, 1 ;  R1 = left - right
349 : ST   1, 3(5) ;  Store function result into stack frame
350 : LD   6, 0(5) ;  Load return address
351 : LDA  7, 0(6) ;  Return to caller
