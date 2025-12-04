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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'SQRT'
12 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDA 6, 18(0)) ;  Compute return address
15 : ST 6, 0(3) ;  Store return address in callee frame
16 : ADD  5, 3, 0 ;  Update pointer
17 : LDA 7, 184(0) ;  Call SQRT
18 : LD 1, 2(5) ;  Load callee return value into R1
19 : LDC  4, 3(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : LDA  3, 3(5) ;  Update DMEM pointer
22 : LDA 6, 26(0) ;  Compute return address
23 : ST   6, 0(3) ;  Store return address
24 : ADD  5, 3, 0 ;  Updated Pointer
25 : LDA  7, 8(0) ; Call print
26 : LDC  4, 3(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
29 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
30 : ST 1, 1(3) ;  Store argument 0 into callee frame
31 : LDA 6, 35(0)) ;  Compute return address
32 : ST 6, 0(3) ;  Store return address in callee frame
33 : ADD  5, 3, 0 ;  Update pointer
34 : LDA 7, 201(0) ;  Call ODD
35 : LD 1, 2(5) ;  Load callee return value into R1
36 : LDC  4, 3(0) ;  Load frame size
37 : SUB  5, 5, 4 ;  Restore pointer
38 : ST 1, 4(0) ;  Store function-call result into caller's return slot
39 : LD   1, 4(0) ;  Load return value into register 1
40 : LD  6, 2(0) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
42 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'LE'
43 : LD   1, 4(5) ;  Load parameter 'mid' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LD   1, 4(5) ;  Load parameter 'mid' into R1
46 : MUL  1, 2, 1 ;  R1 = left * right
47 : ST 1, 1(3) ;  Store argument 0 into callee frame
48 : LD   1, 1(5) ;  Load parameter 'n' into R1
49 : ST 1, 2(3) ;  Store argument 1 into callee frame
50 : LDA 6, 54(0)) ;  Compute return address
51 : ST 6, 0(3) ;  Store return address in callee frame
52 : ADD  5, 3, 0 ;  Update pointer
53 : LDA 7, 470(0) ;  Call LE
54 : LD 1, 3(5) ;  Load callee return value into R1
55 : LDC  4, 6(0) ;  Load frame size
56 : SUB  5, 5, 4 ;  Restore pointer
57 : JEQ  1, 73(0) ;  If condition is false, jump to ELSE
58 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
59 : LD   1, 1(5) ;  Load parameter 'n' into R1
60 : ST 1, 1(3) ;  Store argument 0 into callee frame
61 : LD   1, 4(5) ;  Load parameter 'mid' into R1
62 : ST 1, 2(3) ;  Store argument 1 into callee frame
63 : LD   1, 3(5) ;  Load parameter 'high' into R1
64 : ST 1, 3(3) ;  Store argument 2 into callee frame
65 : LDA 6, 69(0)) ;  Compute return address
66 : ST 6, 0(3) ;  Store return address in callee frame
67 : ADD  5, 3, 0 ;  Update pointer
68 : LDA 7, 90(0) ;  Call SQRTSEARCH
69 : LD 1, 4(5) ;  Load callee return value into R1
70 : LDC  4, 6(0) ;  Load frame size
71 : SUB  5, 5, 4 ;  Restore pointer
72 : LDA  7, 87(0) ;  Skip ELSE block
73 : LDA 3, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
74 : LD   1, 1(5) ;  Load parameter 'n' into R1
75 : ST 1, 1(3) ;  Store argument 0 into callee frame
76 : LD   1, 2(5) ;  Load parameter 'low' into R1
77 : ST 1, 2(3) ;  Store argument 1 into callee frame
78 : LD   1, 4(5) ;  Load parameter 'mid' into R1
79 : ST 1, 3(3) ;  Store argument 2 into callee frame
80 : LDA 6, 84(0)) ;  Compute return address
81 : ST 6, 0(3) ;  Store return address in callee frame
82 : ADD  5, 3, 0 ;  Update pointer
83 : LDA 7, 90(0) ;  Call SQRTSEARCH
84 : LD 1, 4(5) ;  Load callee return value into R1
85 : LDC  4, 6(0) ;  Load frame size
86 : SUB  5, 5, 4 ;  Restore pointer
87 : ST   1, 5(5) ;  Store function result into stack frame
88 : LD   6, 0(5) ;  Load return address
89 : LDA  7, 0(6) ;  Return to caller
90 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
91 : LD   1, 3(5) ;  Load parameter 'high' into R1
92 : ST 1, 1(3) ;  Store argument 0 into callee frame
93 : LD   1, 2(5) ;  Load parameter 'low' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
96 : ADD  1, 2, 1 ;  R1 = left + right
97 : ST 1, 2(3) ;  Store argument 1 into callee frame
98 : LDA 6, 102(0)) ;  Compute return address
99 : ST 6, 0(3) ;  Store return address in callee frame
100 : ADD  5, 3, 0 ;  Update pointer
101 : LDA 7, 470(0) ;  Call LE
102 : LD 1, 3(5) ;  Load callee return value into R1
103 : LDC  4, 5(0) ;  Load frame size
104 : SUB  5, 5, 4 ;  Restore pointer
105 : JEQ  1, 151(0) ;  If condition is false, jump to ELSE
106 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
107 : LD   1, 1(5) ;  Load parameter 'n' into R1
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'TIMES'
110 : LD   1, 2(5) ;  Load parameter 'low' into R1
111 : ST 1, 1(3) ;  Store argument 0 into callee frame
112 : LD   1, 2(5) ;  Load parameter 'low' into R1
113 : ST 1, 2(3) ;  Store argument 1 into callee frame
114 : LDA 6, 118(0)) ;  Compute return address
115 : ST 6, 0(3) ;  Store return address in callee frame
116 : ADD  5, 3, 0 ;  Update pointer
117 : LDA 7, 400(0) ;  Call TIMES
118 : LD 1, 3(5) ;  Load callee return value into R1
119 : LDC  4, 5(0) ;  Load frame size
120 : SUB  5, 5, 4 ;  Restore pointer
121 : SUB  1, 2, 1 ;  R1 = left - right
122 : ST 1, 1(3) ;  Store argument 0 into callee frame
123 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'TIMES'
124 : LD   1, 3(5) ;  Load parameter 'high' into R1
125 : ST 1, 1(3) ;  Store argument 0 into callee frame
126 : LD   1, 3(5) ;  Load parameter 'high' into R1
127 : ST 1, 2(3) ;  Store argument 1 into callee frame
128 : LDA 6, 132(0)) ;  Compute return address
129 : ST 6, 0(3) ;  Store return address in callee frame
130 : ADD  5, 3, 0 ;  Update pointer
131 : LDA 7, 400(0) ;  Call TIMES
132 : LD 1, 3(5) ;  Load callee return value into R1
133 : LDC  4, 5(0) ;  Load frame size
134 : SUB  5, 5, 4 ;  Restore pointer
135 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
136 : LD   1, 1(5) ;  Load parameter 'n' into R1
137 : SUB  1, 2, 1 ;  R1 = left - right
138 : ST 1, 2(3) ;  Store argument 1 into callee frame
139 : LDA 6, 143(0)) ;  Compute return address
140 : ST 6, 0(3) ;  Store return address in callee frame
141 : ADD  5, 3, 0 ;  Update pointer
142 : LDA 7, 470(0) ;  Call LE
143 : LD 1, 3(5) ;  Load callee return value into R1
144 : LDC  4, 5(0) ;  Load frame size
145 : SUB  5, 5, 4 ;  Restore pointer
146 : JEQ  1, 149(0) ;  If condition is false, jump to ELSE
147 : LD   1, 2(5) ;  Load parameter 'low' into R1
148 : LDA  7, 150(0) ;  Skip ELSE block
149 : LD   1, 3(5) ;  Load parameter 'high' into R1
150 : LDA  7, 181(0) ;  Skip ELSE block
151 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'SQRTSPLIT'
152 : LD   1, 1(5) ;  Load parameter 'n' into R1
153 : ST 1, 1(3) ;  Store argument 0 into callee frame
154 : LD   1, 2(5) ;  Load parameter 'low' into R1
155 : ST 1, 2(3) ;  Store argument 1 into callee frame
156 : LD   1, 3(5) ;  Load parameter 'high' into R1
157 : ST 1, 3(3) ;  Store argument 2 into callee frame
158 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'PLUS'
159 : LD   1, 2(5) ;  Load parameter 'low' into R1
160 : ST 1, 1(3) ;  Store argument 0 into callee frame
161 : LD   1, 3(5) ;  Load parameter 'high' into R1
162 : ST 1, 2(3) ;  Store argument 1 into callee frame
163 : LDA 6, 167(0)) ;  Compute return address
164 : ST 6, 0(3) ;  Store return address in callee frame
165 : ADD  5, 3, 0 ;  Update pointer
166 : LDA 7, 414(0) ;  Call PLUS
167 : LD 1, 3(5) ;  Load callee return value into R1
168 : LDC  4, 5(0) ;  Load frame size
169 : SUB  5, 5, 4 ;  Restore pointer
170 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
171 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
172 : DIV  1, 2, 1 ;  R1 = left / right
173 : ST 1, 4(3) ;  Store argument 3 into callee frame
174 : LDA 6, 178(0)) ;  Compute return address
175 : ST 6, 0(3) ;  Store return address in callee frame
176 : ADD  5, 3, 0 ;  Update pointer
177 : LDA 7, 42(0) ;  Call SQRTSPLIT
178 : LD 1, 5(5) ;  Load callee return value into R1
179 : LDC  4, 5(0) ;  Load frame size
180 : SUB  5, 5, 4 ;  Restore pointer
181 : ST   1, 4(5) ;  Store function result into stack frame
182 : LD   6, 0(5) ;  Load return address
183 : LDA  7, 0(6) ;  Return to caller
184 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
185 : LD   1, 1(5) ;  Load parameter 'n' into R1
186 : ST 1, 1(3) ;  Store argument 0 into callee frame
187 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
188 : ST 1, 2(3) ;  Store argument 1 into callee frame
189 : LD   1, 1(5) ;  Load parameter 'n' into R1
190 : ST 1, 3(3) ;  Store argument 2 into callee frame
191 : LDA 6, 195(0)) ;  Compute return address
192 : ST 6, 0(3) ;  Store return address in callee frame
193 : ADD  5, 3, 0 ;  Update pointer
194 : LDA 7, 90(0) ;  Call SQRTSEARCH
195 : LD 1, 4(5) ;  Load callee return value into R1
196 : LDC  4, 3(0) ;  Load frame size
197 : SUB  5, 5, 4 ;  Restore pointer
198 : ST   1, 2(5) ;  Store function result into stack frame
199 : LD   6, 0(5) ;  Load return address
200 : LDA  7, 0(6) ;  Return to caller
201 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'LE'
202 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
203 : ST 1, 1(3) ;  Store argument 0 into callee frame
204 : LD   1, 1(5) ;  Load parameter 'n' into R1
205 : ST 1, 2(3) ;  Store argument 1 into callee frame
206 : LDA 6, 210(0)) ;  Compute return address
207 : ST 6, 0(3) ;  Store return address in callee frame
208 : ADD  5, 3, 0 ;  Update pointer
209 : LDA 7, 470(0) ;  Call LE
210 : LD 1, 3(5) ;  Load callee return value into R1
211 : LDC  4, 3(0) ;  Load frame size
212 : SUB  5, 5, 4 ;  Restore pointer
213 : JEQ  1, 252(0) ;  If condition is false, jump to ELSE
214 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'GT'
215 : LD   1, 1(5) ;  Load parameter 'n' into R1
216 : ST 1, 1(3) ;  Store argument 0 into callee frame
217 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
218 : LD   1, 1(5) ;  Load parameter 'n' into R1
219 : ST 1, 1(3) ;  Store argument 0 into callee frame
220 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
221 : ST 1, 2(3) ;  Store argument 1 into callee frame
222 : LDA 6, 226(0)) ;  Compute return address
223 : ST 6, 0(3) ;  Store return address in callee frame
224 : ADD  5, 3, 0 ;  Update pointer
225 : LDA 7, 393(0) ;  Call DIV
226 : LD 1, 3(5) ;  Load callee return value into R1
227 : LDC  4, 3(0) ;  Load frame size
228 : SUB  5, 5, 4 ;  Restore pointer
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
231 : LD   1, 1(5) ;  Load parameter 'n' into R1
232 : ST 1, 1(3) ;  Store argument 0 into callee frame
233 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
234 : ST 1, 2(3) ;  Store argument 1 into callee frame
235 : LDA 6, 239(0)) ;  Compute return address
236 : ST 6, 0(3) ;  Store return address in callee frame
237 : ADD  5, 3, 0 ;  Update pointer
238 : LDA 7, 393(0) ;  Call DIV
239 : LD 1, 3(5) ;  Load callee return value into R1
240 : LDC  4, 3(0) ;  Load frame size
241 : SUB  5, 5, 4 ;  Restore pointer
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : ST 1, 2(3) ;  Store argument 1 into callee frame
244 : LDA 6, 248(0)) ;  Compute return address
245 : ST 6, 0(3) ;  Store return address in callee frame
246 : ADD  5, 3, 0 ;  Update pointer
247 : LDA 7, 436(0) ;  Call GT
248 : LD 1, 3(5) ;  Load callee return value into R1
249 : LDC  4, 3(0) ;  Load frame size
250 : SUB  5, 5, 4 ;  Restore pointer
251 : LDA  7, 316(0) ;  Skip ELSE block
252 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'GT'
253 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
254 : LD   1, 1(5) ;  Load parameter 'n' into R1
255 : ST 1, 1(3) ;  Store argument 0 into callee frame
256 : LDA 6, 260(0)) ;  Compute return address
257 : ST 6, 0(3) ;  Store return address in callee frame
258 : ADD  5, 3, 0 ;  Update pointer
259 : LDA 7, 388(0) ;  Call NEG
260 : LD 1, 2(5) ;  Load callee return value into R1
261 : LDC  4, 3(0) ;  Load frame size
262 : SUB  5, 5, 4 ;  Restore pointer
263 : ST 1, 1(3) ;  Store argument 0 into callee frame
264 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
265 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
266 : LD   1, 1(5) ;  Load parameter 'n' into R1
267 : ST 1, 1(3) ;  Store argument 0 into callee frame
268 : LDA 6, 272(0)) ;  Compute return address
269 : ST 6, 0(3) ;  Store return address in callee frame
270 : ADD  5, 3, 0 ;  Update pointer
271 : LDA 7, 388(0) ;  Call NEG
272 : LD 1, 2(5) ;  Load callee return value into R1
273 : LDC  4, 3(0) ;  Load frame size
274 : SUB  5, 5, 4 ;  Restore pointer
275 : ST 1, 1(3) ;  Store argument 0 into callee frame
276 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
277 : ST 1, 2(3) ;  Store argument 1 into callee frame
278 : LDA 6, 282(0)) ;  Compute return address
279 : ST 6, 0(3) ;  Store return address in callee frame
280 : ADD  5, 3, 0 ;  Update pointer
281 : LDA 7, 393(0) ;  Call DIV
282 : LD 1, 3(5) ;  Load callee return value into R1
283 : LDC  4, 3(0) ;  Load frame size
284 : SUB  5, 5, 4 ;  Restore pointer
285 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
286 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
287 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
288 : LD   1, 1(5) ;  Load parameter 'n' into R1
289 : ST 1, 1(3) ;  Store argument 0 into callee frame
290 : LDA 6, 294(0)) ;  Compute return address
291 : ST 6, 0(3) ;  Store return address in callee frame
292 : ADD  5, 3, 0 ;  Update pointer
293 : LDA 7, 388(0) ;  Call NEG
294 : LD 1, 2(5) ;  Load callee return value into R1
295 : LDC  4, 3(0) ;  Load frame size
296 : SUB  5, 5, 4 ;  Restore pointer
297 : ST 1, 1(3) ;  Store argument 0 into callee frame
298 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
299 : ST 1, 2(3) ;  Store argument 1 into callee frame
300 : LDA 6, 304(0)) ;  Compute return address
301 : ST 6, 0(3) ;  Store return address in callee frame
302 : ADD  5, 3, 0 ;  Update pointer
303 : LDA 7, 393(0) ;  Call DIV
304 : LD 1, 3(5) ;  Load callee return value into R1
305 : LDC  4, 3(0) ;  Load frame size
306 : SUB  5, 5, 4 ;  Restore pointer
307 : ADD  1, 2, 1 ;  R1 = left + right
308 : ST 1, 2(3) ;  Store argument 1 into callee frame
309 : LDA 6, 313(0)) ;  Compute return address
310 : ST 6, 0(3) ;  Store return address in callee frame
311 : ADD  5, 3, 0 ;  Update pointer
312 : LDA 7, 436(0) ;  Call GT
313 : LD 1, 3(5) ;  Load callee return value into R1
314 : LDC  4, 3(0) ;  Load frame size
315 : SUB  5, 5, 4 ;  Restore pointer
316 : ST   1, 2(5) ;  Store function result into stack frame
317 : LD   6, 0(5) ;  Load return address
318 : LDA  7, 0(6) ;  Return to caller
319 : LD   1, 2(5) ;  Load parameter 'n' into R1
320 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
321 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
322 : SUB  1, 2, 1 ;  left - right for equality check
323 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
324 : LDC  1, 0(0) ;  false
325 : LDA  7, 1(7) ;  skip setting true
326 : LDC  1, 1(0) ;  true
327 : JEQ  1, 330(0) ;  If condition is false, jump to ELSE
328 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
329 : LDA  7, 348(0) ;  Skip ELSE block
330 : LD   1, 1(5) ;  Load parameter 'm' into R1
331 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
332 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
333 : LD   1, 1(5) ;  Load parameter 'm' into R1
334 : ST 1, 1(3) ;  Store argument 0 into callee frame
335 : LD   1, 2(5) ;  Load parameter 'n' into R1
336 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
337 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
338 : SUB  1, 2, 1 ;  R1 = left - right
339 : ST 1, 2(3) ;  Store argument 1 into callee frame
340 : LDA 6, 344(0)) ;  Compute return address
341 : ST 6, 0(3) ;  Store return address in callee frame
342 : ADD  5, 3, 0 ;  Update pointer
343 : LDA 7, 319(0) ;  Call EXP
344 : LD 1, 3(5) ;  Load callee return value into R1
345 : LDC  4, 4(0) ;  Load frame size
346 : SUB  5, 5, 4 ;  Restore pointer
347 : MUL  1, 2, 1 ;  R1 = left * right
348 : ST   1, 3(5) ;  Store function result into stack frame
349 : LD   6, 0(5) ;  Load return address
350 : LDA  7, 0(6) ;  Return to caller
351 : LD   1, 1(5) ;  Load parameter 'm' into R1
352 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
353 : LD   1, 1(5) ;  Load parameter 'm' into R1
354 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
355 : LD   1, 2(5) ;  Load parameter 'n' into R1
356 : DIV  1, 2, 1 ;  R1 = left / right
357 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
358 : LD   1, 2(5) ;  Load parameter 'n' into R1
359 : MUL  1, 2, 1 ;  R1 = left * right
360 : SUB  1, 2, 1 ;  R1 = left - right
361 : ST   1, 3(5) ;  Store function result into stack frame
362 : LD   6, 0(5) ;  Load return address
363 : LDA  7, 0(6) ;  Return to caller
364 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
365 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
366 : LD   1, 1(5) ;  Load parameter 'n' into R1
367 : SUB  1, 2, 1 ;  left - right for less-than check
368 : JLT  1, 2(7) ;  If R1 < 0, jump to true
369 : LDC  1, 0(0) ;  false
370 : LDA  7, 1(7) ;  skip setting true
371 : LDC  1, 1(0) ;  true
372 : JEQ  1, 375(0) ;  If condition is false, jump to ELSE
373 : LD   1, 1(5) ;  Load parameter 'n' into R1
374 : LDA  7, 385(0) ;  Skip ELSE block
375 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
376 : LD   1, 1(5) ;  Load parameter 'n' into R1
377 : ST 1, 1(3) ;  Store argument 0 into callee frame
378 : LDA 6, 382(0)) ;  Compute return address
379 : ST 6, 0(3) ;  Store return address in callee frame
380 : ADD  5, 3, 0 ;  Update pointer
381 : LDA 7, 388(0) ;  Call NEG
382 : LD 1, 2(5) ;  Load callee return value into R1
383 : LDC  4, 3(0) ;  Load frame size
384 : SUB  5, 5, 4 ;  Restore pointer
385 : ST   1, 2(5) ;  Store function result into stack frame
386 : LD   6, 0(5) ;  Load return address
387 : LDA  7, 0(6) ;  Return to caller
388 : LD   1, 1(5) ;  Load parameter 'n' into R1
389 : SUB  1, 0, 1 ;  Negate value in R1
390 : ST   1, 2(5) ;  Store function result into stack frame
391 : LD   6, 0(5) ;  Load return address
392 : LDA  7, 0(6) ;  Return to caller
393 : LD   1, 1(5) ;  Load parameter 'p' into R1
394 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
395 : LD   1, 2(5) ;  Load parameter 'q' into R1
396 : DIV  1, 2, 1 ;  R1 = left / right
397 : ST   1, 3(5) ;  Store function result into stack frame
398 : LD   6, 0(5) ;  Load return address
399 : LDA  7, 0(6) ;  Return to caller
400 : LD   1, 1(5) ;  Load parameter 'p' into R1
401 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
402 : LD   1, 2(5) ;  Load parameter 'q' into R1
403 : MUL  1, 2, 1 ;  R1 = left * right
404 : ST   1, 3(5) ;  Store function result into stack frame
405 : LD   6, 0(5) ;  Load return address
406 : LDA  7, 0(6) ;  Return to caller
407 : LD   1, 1(5) ;  Load parameter 'p' into R1
408 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
409 : LD   1, 2(5) ;  Load parameter 'q' into R1
410 : SUB  1, 2, 1 ;  R1 = left - right
411 : ST   1, 3(5) ;  Store function result into stack frame
412 : LD   6, 0(5) ;  Load return address
413 : LDA  7, 0(6) ;  Return to caller
414 : LD   1, 1(5) ;  Load parameter 'p' into R1
415 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
416 : LD   1, 2(5) ;  Load parameter 'q' into R1
417 : ADD  1, 2, 1 ;  R1 = left + right
418 : ST   1, 3(5) ;  Store function result into stack frame
419 : LD   6, 0(5) ;  Load return address
420 : LDA  7, 0(6) ;  Return to caller
421 : LD   1, 1(5) ;  Load parameter 'p' into R1
422 : JEQ  1, 425(0) ;  If condition is false, jump to ELSE
423 : LD   1, 2(5) ;  Load parameter 'q' into R1
424 : LDA  7, 426(0) ;  Skip ELSE block
425 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
426 : ST   1, 3(5) ;  Store function result into stack frame
427 : LD   6, 0(5) ;  Load return address
428 : LDA  7, 0(6) ;  Return to caller
429 : LD   1, 1(5) ;  Load parameter 'p' into R1
430 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
431 : LD   1, 2(5) ;  Load parameter 'q' into R1
432 : ADD  1, 2, 1 ;  R1 = left OR right
433 : ST   1, 3(5) ;  Store function result into stack frame
434 : LD   6, 0(5) ;  Load return address
435 : LDA  7, 0(6) ;  Return to caller
436 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'LE'
437 : LD   1, 1(5) ;  Load parameter 'p' into R1
438 : ST 1, 1(3) ;  Store argument 0 into callee frame
439 : LD   1, 2(5) ;  Load parameter 'q' into R1
440 : ST 1, 2(3) ;  Store argument 1 into callee frame
441 : LDA 6, 445(0)) ;  Compute return address
442 : ST 6, 0(3) ;  Store return address in callee frame
443 : ADD  5, 3, 0 ;  Update pointer
444 : LDA 7, 470(0) ;  Call LE
445 : LD 1, 3(5) ;  Load callee return value into R1
446 : LDC  4, 4(0) ;  Load frame size
447 : SUB  5, 5, 4 ;  Restore pointer
448 : LDC  2, 1(0) ;  Load 1 into R2
449 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
450 : ST   1, 3(5) ;  Store function result into stack frame
451 : LD   6, 0(5) ;  Load return address
452 : LDA  7, 0(6) ;  Return to caller
453 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'LT'
454 : LD   1, 1(5) ;  Load parameter 'p' into R1
455 : ST 1, 1(3) ;  Store argument 0 into callee frame
456 : LD   1, 2(5) ;  Load parameter 'q' into R1
457 : ST 1, 2(3) ;  Store argument 1 into callee frame
458 : LDA 6, 462(0)) ;  Compute return address
459 : ST 6, 0(3) ;  Store return address in callee frame
460 : ADD  5, 3, 0 ;  Update pointer
461 : LDA 7, 527(0) ;  Call LT
462 : LD 1, 3(5) ;  Load callee return value into R1
463 : LDC  4, 4(0) ;  Load frame size
464 : SUB  5, 5, 4 ;  Restore pointer
465 : LDC  2, 1(0) ;  Load 1 into R2
466 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
467 : ST   1, 3(5) ;  Store function result into stack frame
468 : LD   6, 0(5) ;  Load return address
469 : LDA  7, 0(6) ;  Return to caller
470 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'LT'
471 : LD   1, 1(5) ;  Load parameter 'p' into R1
472 : ST 1, 1(3) ;  Store argument 0 into callee frame
473 : LD   1, 2(5) ;  Load parameter 'q' into R1
474 : ST 1, 2(3) ;  Store argument 1 into callee frame
475 : LDA 6, 479(0)) ;  Compute return address
476 : ST 6, 0(3) ;  Store return address in callee frame
477 : ADD  5, 3, 0 ;  Update pointer
478 : LDA 7, 527(0) ;  Call LT
479 : LD 1, 3(5) ;  Load callee return value into R1
480 : LDC  4, 4(0) ;  Load frame size
481 : SUB  5, 5, 4 ;  Restore pointer
482 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
483 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EQ'
484 : LD   1, 1(5) ;  Load parameter 'p' into R1
485 : ST 1, 1(3) ;  Store argument 0 into callee frame
486 : LD   1, 2(5) ;  Load parameter 'q' into R1
487 : ST 1, 2(3) ;  Store argument 1 into callee frame
488 : LDA 6, 492(0)) ;  Compute return address
489 : ST 6, 0(3) ;  Store return address in callee frame
490 : ADD  5, 3, 0 ;  Update pointer
491 : LDA 7, 516(0) ;  Call EQ
492 : LD 1, 3(5) ;  Load callee return value into R1
493 : LDC  4, 4(0) ;  Load frame size
494 : SUB  5, 5, 4 ;  Restore pointer
495 : ADD  1, 2, 1 ;  R1 = left OR right
496 : ST   1, 3(5) ;  Store function result into stack frame
497 : LD   6, 0(5) ;  Load return address
498 : LDA  7, 0(6) ;  Return to caller
499 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'EQ'
500 : LD   1, 1(5) ;  Load parameter 'p' into R1
501 : ST 1, 1(3) ;  Store argument 0 into callee frame
502 : LD   1, 2(5) ;  Load parameter 'q' into R1
503 : ST 1, 2(3) ;  Store argument 1 into callee frame
504 : LDA 6, 508(0)) ;  Compute return address
505 : ST 6, 0(3) ;  Store return address in callee frame
506 : ADD  5, 3, 0 ;  Update pointer
507 : LDA 7, 516(0) ;  Call EQ
508 : LD 1, 3(5) ;  Load callee return value into R1
509 : LDC  4, 4(0) ;  Load frame size
510 : SUB  5, 5, 4 ;  Restore pointer
511 : LDC  2, 1(0) ;  Load 1 into R2
512 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
513 : ST   1, 3(5) ;  Store function result into stack frame
514 : LD   6, 0(5) ;  Load return address
515 : LDA  7, 0(6) ;  Return to caller
516 : LD   1, 1(5) ;  Load parameter 'p' into R1
517 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
518 : LD   1, 2(5) ;  Load parameter 'q' into R1
519 : SUB  1, 2, 1 ;  left - right for equality check
520 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
521 : LDC  1, 0(0) ;  false
522 : LDA  7, 1(7) ;  skip setting true
523 : LDC  1, 1(0) ;  true
524 : ST   1, 3(5) ;  Store function result into stack frame
525 : LD   6, 0(5) ;  Load return address
526 : LDA  7, 0(6) ;  Return to caller
527 : LD   1, 1(5) ;  Load parameter 'p' into R1
528 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
529 : LD   1, 2(5) ;  Load parameter 'q' into R1
530 : SUB  1, 2, 1 ;  left - right for less-than check
531 : JLT  1, 2(7) ;  If R1 < 0, jump to true
532 : LDC  1, 0(0) ;  false
533 : LDA  7, 1(7) ;  skip setting true
534 : LDC  1, 1(0) ;  true
535 : ST   1, 3(5) ;  Store function result into stack frame
536 : LD   6, 0(5) ;  Load return address
537 : LDA  7, 0(6) ;  Return to caller
538 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
539 : SUB  1, 0, 1 ;  Negate value in R1
540 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
541 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
542 : SUB  1, 2, 1 ;  R1 = left - right
543 : ST   1, 1(5) ;  Store function result into stack frame
544 : LD   6, 0(5) ;  Load return address
545 : LDA  7, 0(6) ;  Return to caller
546 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
547 : ST   1, 1(5) ;  Store function result into stack frame
548 : LD   6, 0(5) ;  Load return address
549 : LDA  7, 0(6) ;  Return to caller
