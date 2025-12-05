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
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LD   1, 1(5) ;  Load parameter 'length' into R1
15 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
16 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
17 : LD  2, 2(5) ;  Restore left operand
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
20 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
21 : LD  2, 2(5) ;  Restore left operand
22 : SUB  1, 2, 1 ;  R1 = left - right
23 : LDA  3, 3(5) ; Restore Callee frame base
24 : ST 1, 2(3) ;  Store argument 1 into callee frame
25 : LDA  3, 3(5) ; Restore Call frame base
26 : LDA 6, 30(0) ;  Compute return address
27 : ST 6, 0(3) ;  Store return address in callee frame
28 : ADD  5, 3, 0 ;  Update pointer
29 : LDA 7, 858(0) ;  Call EXP
30 : LD 1, 3(5) ;  Load callee return value into R1
31 : LDC  4, 3(0) ;  Load frame size
32 : SUB  5, 5, 4 ;  Restore pointer
33 : LDA  3, 3(5) ; Restore Callee frame base
34 : ST 1, 1(3) ;  Store argument 0 into callee frame
35 : LD   1, 1(5) ;  Load parameter 'length' into R1
36 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
37 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
38 : LD  2, 2(5) ;  Restore left operand
39 : DIV  1, 2, 1 ;  R1 = left / right
40 : LDA  3, 3(5) ; Restore Callee frame base
41 : ST 1, 2(3) ;  Store argument 1 into callee frame
42 : LDA  3, 3(5) ; Restore Call frame base
43 : LDA 6, 47(0) ;  Compute return address
44 : ST 6, 0(3) ;  Store return address in callee frame
45 : ADD  5, 3, 0 ;  Update pointer
46 : LDA 7, 54(0) ;  Call createLoop
47 : LD 1, 3(5) ;  Load callee return value into R1
48 : LDC  4, 3(0) ;  Load frame size
49 : SUB  5, 5, 4 ;  Restore pointer
50 : ST 1, 2(5) ;  Store result into current frame's return slot
51 : LD   1, 2(5) ;  Load return value into register 1
52 : LD  6, 0(5) ;  Load return address for main function into register 6
53 : LDA  7, 0(6) ;  Jump to return address of main function
54 : LD   1, 1(5) ;  Load parameter 'a' into R1
55 : LDA  3, 4(5) ; Restore Callee frame base
56 : ST 1, 1(3) ;  Store argument 0 into callee frame
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : LDA  3, 4(5) ; Restore Callee frame base
59 : ST 1, 2(3) ;  Store argument 1 into callee frame
60 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
61 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
62 : LD   1, 1(5) ;  Load parameter 'a' into R1
63 : LD  2, 3(5) ;  Restore left operand
64 : MUL  1, 2, 1 ;  R1 = left * right
65 : LDA  3, 4(5) ; Restore Callee frame base
66 : ST 1, 3(3) ;  Store argument 2 into callee frame
67 : LDA  3, 4(5) ; Restore Call frame base
68 : LDA 6, 72(0) ;  Compute return address
69 : ST 6, 0(3) ;  Store return address in callee frame
70 : ADD  5, 3, 0 ;  Update pointer
71 : LDA 7, 78(0) ;  Call aLoop
72 : LD 1, 4(5) ;  Load callee return value into R1
73 : LDC  4, 4(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
80 : LD   1, 3(5) ;  Load parameter 'upper' into R1
81 : LD  2, 4(5) ;  Restore left operand
82 : SUB  1, 2, 1 ;  left - right for less-than check
83 : JLT  1, 2(7) ;  If R1 < 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : JEQ  1, 155(0) ;  If condition is false, jump to ELSE
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : LDA  3, 5(5) ; Restore Callee frame base
90 : ST 1, 1(3) ;  Store argument 0 into callee frame
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : LDA  3, 5(5) ; Restore Callee frame base
93 : ST 1, 2(3) ;  Store argument 1 into callee frame
94 : LD   1, 3(5) ;  Load parameter 'upper' into R1
95 : LDA  3, 5(5) ; Restore Callee frame base
96 : ST 1, 3(3) ;  Store argument 2 into callee frame
97 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
98 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
99 : LD   1, 1(5) ;  Load parameter 'a' into R1
100 : LDA  3, 5(5) ; Restore Callee frame base
101 : ST 1, 1(3) ;  Store argument 0 into callee frame
102 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
103 : LDA  3, 5(5) ; Restore Callee frame base
104 : ST 1, 2(3) ;  Store argument 1 into callee frame
105 : LDA  3, 5(5) ; Restore Call frame base
106 : LDA 6, 110(0) ;  Compute return address
107 : ST 6, 0(3) ;  Store return address in callee frame
108 : ADD  5, 3, 0 ;  Update pointer
109 : LDA 7, 858(0) ;  Call EXP
110 : LD 1, 3(5) ;  Load callee return value into R1
111 : LDC  4, 5(0) ;  Load frame size
112 : SUB  5, 5, 4 ;  Restore pointer
113 : LD  2, 4(5) ;  Restore left operand
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
116 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
117 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
118 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
119 : LDA  3, 5(5) ; Restore Callee frame base
120 : ST 1, 1(3) ;  Store argument 0 into callee frame
121 : LD   1, 2(5) ;  Load parameter 'n' into R1
122 : LDA  3, 5(5) ; Restore Callee frame base
123 : ST 1, 2(3) ;  Store argument 1 into callee frame
124 : LDA  3, 5(5) ; Restore Call frame base
125 : LDA 6, 129(0) ;  Compute return address
126 : ST 6, 0(3) ;  Store return address in callee frame
127 : ADD  5, 3, 0 ;  Update pointer
128 : LDA 7, 858(0) ;  Call EXP
129 : LD 1, 3(5) ;  Load callee return value into R1
130 : LDC  4, 5(0) ;  Load frame size
131 : SUB  5, 5, 4 ;  Restore pointer
132 : LD  2, 4(5) ;  Restore left operand
133 : MUL  1, 2, 1 ;  R1 = left * right
134 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
135 : LD   1, 1(5) ;  Load parameter 'a' into R1
136 : LD  2, 4(5) ;  Restore left operand
137 : MUL  1, 2, 1 ;  R1 = left * right
138 : LD  2, 4(5) ;  Restore left operand
139 : ADD  1, 2, 1 ;  R1 = left + right
140 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
141 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
142 : LD  2, 4(5) ;  Restore left operand
143 : ADD  1, 2, 1 ;  R1 = left + right
144 : LDA  3, 5(5) ; Restore Callee frame base
145 : ST 1, 4(3) ;  Store argument 3 into callee frame
146 : LDA  3, 5(5) ; Restore Call frame base
147 : LDA 6, 151(0) ;  Compute return address
148 : ST 6, 0(3) ;  Store return address in callee frame
149 : ADD  5, 3, 0 ;  Update pointer
150 : LDA 7, 159(0) ;  Call aLoop1
151 : LD 1, 5(5) ;  Load callee return value into R1
152 : LDC  4, 5(0) ;  Load frame size
153 : SUB  5, 5, 4 ;  Restore pointer
154 : LDA  7, 156(0) ;  Skip ELSE block
155 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
156 : ST   1, 4(5) ;  Store function result into stack frame
157 : LD   6, 0(5) ;  Load return address
158 : LDA  7, 0(6) ;  Return to caller
159 : LD   1, 1(5) ;  Load parameter 'a' into R1
160 : LDA  3, 6(5) ; Restore Callee frame base
161 : ST 1, 1(3) ;  Store argument 0 into callee frame
162 : LD   1, 2(5) ;  Load parameter 'n' into R1
163 : LDA  3, 6(5) ; Restore Callee frame base
164 : ST 1, 2(3) ;  Store argument 1 into callee frame
165 : LD   1, 3(5) ;  Load parameter 'upper' into R1
166 : LDA  3, 6(5) ; Restore Callee frame base
167 : ST 1, 3(3) ;  Store argument 2 into callee frame
168 : LD   1, 4(5) ;  Load parameter 'det' into R1
169 : LDA  3, 6(5) ; Restore Callee frame base
170 : ST 1, 4(3) ;  Store argument 3 into callee frame
171 : LD   1, 4(5) ;  Load parameter 'det' into R1
172 : LDA  3, 6(5) ; Restore Callee frame base
173 : ST 1, 1(3) ;  Store argument 0 into callee frame
174 : LDA  3, 6(5) ; Restore Call frame base
175 : LDA 6, 179(0) ;  Compute return address
176 : ST 6, 0(3) ;  Store return address in callee frame
177 : ADD  5, 3, 0 ;  Update pointer
178 : LDA 7, 771(0) ;  Call SQRT
179 : LD 1, 2(5) ;  Load callee return value into R1
180 : LDC  4, 6(0) ;  Load frame size
181 : SUB  5, 5, 4 ;  Restore pointer
182 : LDA  3, 6(5) ; Restore Callee frame base
183 : ST 1, 5(3) ;  Store argument 4 into callee frame
184 : LDA  3, 6(5) ; Restore Call frame base
185 : LDA 6, 189(0) ;  Compute return address
186 : ST 6, 0(3) ;  Store return address in callee frame
187 : ADD  5, 3, 0 ;  Update pointer
188 : LDA 7, 195(0) ;  Call aLoop2
189 : LD 1, 6(5) ;  Load callee return value into R1
190 : LDC  4, 6(0) ;  Load frame size
191 : SUB  5, 5, 4 ;  Restore pointer
192 : ST   1, 5(5) ;  Store function result into stack frame
193 : LD   6, 0(5) ;  Load return address
194 : LDA  7, 0(6) ;  Return to caller
195 : LD   1, 1(5) ;  Load parameter 'a' into R1
196 : LDA  3, 7(5) ; Restore Callee frame base
197 : ST 1, 1(3) ;  Store argument 0 into callee frame
198 : LD   1, 2(5) ;  Load parameter 'n' into R1
199 : LDA  3, 7(5) ; Restore Callee frame base
200 : ST 1, 2(3) ;  Store argument 1 into callee frame
201 : LD   1, 3(5) ;  Load parameter 'upper' into R1
202 : LDA  3, 7(5) ; Restore Callee frame base
203 : ST 1, 3(3) ;  Store argument 2 into callee frame
204 : LD   1, 4(5) ;  Load parameter 'det' into R1
205 : LDA  3, 7(5) ; Restore Callee frame base
206 : ST 1, 4(3) ;  Store argument 3 into callee frame
207 : LD   1, 5(5) ;  Load parameter 'root' into R1
208 : LDA  3, 7(5) ; Restore Callee frame base
209 : ST 1, 5(3) ;  Store argument 4 into callee frame
210 : LD   1, 1(5) ;  Load parameter 'a' into R1
211 : ST  1, 6(5) ;  Store left operand into return slot. Safeguard for recursion
212 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
213 : LDA  3, 7(5) ; Restore Callee frame base
214 : ST 1, 1(3) ;  Store argument 0 into callee frame
215 : LD   1, 2(5) ;  Load parameter 'n' into R1
216 : LDA  3, 7(5) ; Restore Callee frame base
217 : ST 1, 2(3) ;  Store argument 1 into callee frame
218 : LDA  3, 7(5) ; Restore Call frame base
219 : LDA 6, 223(0) ;  Compute return address
220 : ST 6, 0(3) ;  Store return address in callee frame
221 : ADD  5, 3, 0 ;  Update pointer
222 : LDA 7, 858(0) ;  Call EXP
223 : LD 1, 3(5) ;  Load callee return value into R1
224 : LDC  4, 7(0) ;  Load frame size
225 : SUB  5, 5, 4 ;  Restore pointer
226 : LD  2, 6(5) ;  Restore left operand
227 : MUL  1, 2, 1 ;  R1 = left * right
228 : ST  1, 6(5) ;  Store left operand into return slot. Safeguard for recursion
229 : LD   1, 5(5) ;  Load parameter 'root' into R1
230 : ST  1, 6(5) ;  Store left operand into return slot. Safeguard for recursion
231 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
232 : LD  2, 6(5) ;  Restore left operand
233 : ADD  1, 2, 1 ;  R1 = left + right
234 : ST  1, 6(5) ;  Store left operand into return slot. Safeguard for recursion
235 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
236 : LD  2, 6(5) ;  Restore left operand
237 : DIV  1, 2, 1 ;  R1 = left / right
238 : LD  2, 6(5) ;  Restore left operand
239 : ADD  1, 2, 1 ;  R1 = left + right
240 : LDA  3, 7(5) ; Restore Callee frame base
241 : ST 1, 6(3) ;  Store argument 5 into callee frame
242 : LDA  3, 7(5) ; Restore Call frame base
243 : LDA 6, 247(0) ;  Compute return address
244 : ST 6, 0(3) ;  Store return address in callee frame
245 : ADD  5, 3, 0 ;  Update pointer
246 : LDA 7, 253(0) ;  Call aLoop3
247 : LD 1, 7(5) ;  Load callee return value into R1
248 : LDC  4, 7(0) ;  Load frame size
249 : SUB  5, 5, 4 ;  Restore pointer
250 : ST   1, 6(5) ;  Store function result into stack frame
251 : LD   6, 0(5) ;  Load return address
252 : LDA  7, 0(6) ;  Return to caller
253 : LD   1, 5(5) ;  Load parameter 'root' into R1
254 : LDA  3, 8(5) ; Restore Callee frame base
255 : ST 1, 1(3) ;  Store argument 0 into callee frame
256 : LD   1, 4(5) ;  Load parameter 'det' into R1
257 : LDA  3, 8(5) ; Restore Callee frame base
258 : ST 1, 2(3) ;  Store argument 1 into callee frame
259 : LDA  3, 8(5) ; Restore Call frame base
260 : LDA 6, 264(0) ;  Compute return address
261 : ST 6, 0(3) ;  Store return address in callee frame
262 : ADD  5, 3, 0 ;  Update pointer
263 : LDA 7, 593(0) ;  Call ISROOT
264 : LD 1, 3(5) ;  Load callee return value into R1
265 : LDC  4, 8(0) ;  Load frame size
266 : SUB  5, 5, 4 ;  Restore pointer
267 : ST  1, 7(5) ;  Store left operand into return slot. Safeguard for recursion
268 : LD   1, 5(5) ;  Load parameter 'root' into R1
269 : ST  1, 7(5) ;  Store left operand into return slot. Safeguard for recursion
270 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
271 : LD  2, 7(5) ;  Restore left operand
272 : ADD  1, 2, 1 ;  R1 = left + right
273 : LDA  3, 8(5) ; Restore Callee frame base
274 : ST 1, 1(3) ;  Store argument 0 into callee frame
275 : LDA  3, 8(5) ; Restore Call frame base
276 : LDA 6, 280(0) ;  Compute return address
277 : ST 6, 0(3) ;  Store return address in callee frame
278 : ADD  5, 3, 0 ;  Update pointer
279 : LDA 7, 609(0) ;  Call EVEN
280 : LD 1, 2(5) ;  Load callee return value into R1
281 : LDC  4, 8(0) ;  Load frame size
282 : SUB  5, 5, 4 ;  Restore pointer
283 : LD  2, 7(5) ;  Restore left operand
284 : MUL  1, 2, 1 ;  R1 = left AND right
285 : ST  1, 7(5) ;  Store left operand into return slot. Safeguard for recursion
286 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
287 : LDA  3, 8(5) ; Restore Callee frame base
288 : ST 1, 1(3) ;  Store argument 0 into callee frame
289 : LDA  3, 8(5) ; Restore Call frame base
290 : LDA 6, 294(0) ;  Compute return address
291 : ST 6, 0(3) ;  Store return address in callee frame
292 : ADD  5, 3, 0 ;  Update pointer
293 : LDA 7, 378(0) ;  Call isExcellent
294 : LD 1, 2(5) ;  Load callee return value into R1
295 : LDC  4, 8(0) ;  Load frame size
296 : SUB  5, 5, 4 ;  Restore pointer
297 : LD  2, 7(5) ;  Restore left operand
298 : MUL  1, 2, 1 ;  R1 = left AND right
299 : JEQ  1, 321(0) ;  If condition is false, jump to ELSE
300 : LD   1, 1(5) ;  Load parameter 'a' into R1
301 : LDA  3, 8(5) ; Restore Callee frame base
302 : ST 1, 1(3) ;  Store argument 0 into callee frame
303 : LD   1, 2(5) ;  Load parameter 'n' into R1
304 : LDA  3, 8(5) ; Restore Callee frame base
305 : ST 1, 2(3) ;  Store argument 1 into callee frame
306 : LD   1, 3(5) ;  Load parameter 'upper' into R1
307 : LDA  3, 8(5) ; Restore Callee frame base
308 : ST 1, 3(3) ;  Store argument 2 into callee frame
309 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
310 : LDA  3, 8(5) ; Restore Callee frame base
311 : ST 1, 4(3) ;  Store argument 3 into callee frame
312 : LDA  3, 8(5) ; Restore Call frame base
313 : LDA 6, 317(0) ;  Compute return address
314 : ST 6, 0(3) ;  Store return address in callee frame
315 : ADD  5, 3, 0 ;  Update pointer
316 : LDA 7, 345(0) ;  Call printCandidateAndContinue
317 : LD 1, 5(5) ;  Load callee return value into R1
318 : LDC  4, 8(0) ;  Load frame size
319 : SUB  5, 5, 4 ;  Restore pointer
320 : LDA  7, 342(0) ;  Skip ELSE block
321 : LD   1, 1(5) ;  Load parameter 'a' into R1
322 : ST  1, 7(5) ;  Store left operand into return slot. Safeguard for recursion
323 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
324 : LD  2, 7(5) ;  Restore left operand
325 : ADD  1, 2, 1 ;  R1 = left + right
326 : LDA  3, 8(5) ; Restore Callee frame base
327 : ST 1, 1(3) ;  Store argument 0 into callee frame
328 : LD   1, 2(5) ;  Load parameter 'n' into R1
329 : LDA  3, 8(5) ; Restore Callee frame base
330 : ST 1, 2(3) ;  Store argument 1 into callee frame
331 : LD   1, 3(5) ;  Load parameter 'upper' into R1
332 : LDA  3, 8(5) ; Restore Callee frame base
333 : ST 1, 3(3) ;  Store argument 2 into callee frame
334 : LDA  3, 8(5) ; Restore Call frame base
335 : LDA 6, 339(0) ;  Compute return address
336 : ST 6, 0(3) ;  Store return address in callee frame
337 : ADD  5, 3, 0 ;  Update pointer
338 : LDA 7, 78(0) ;  Call aLoop
339 : LD 1, 4(5) ;  Load callee return value into R1
340 : LDC  4, 8(0) ;  Load frame size
341 : SUB  5, 5, 4 ;  Restore pointer
342 : ST   1, 7(5) ;  Store function result into stack frame
343 : LD   6, 0(5) ;  Load return address
344 : LDA  7, 0(6) ;  Return to caller
345 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
346 : LDA  3, 6(5) ;  Update DMEM pointer
347 : LDA 6, 351(0) ;  Compute return address
348 : ST   6, 0(3) ;  Store return address
349 : ADD  5, 3, 0 ;  Updated Pointer
350 : LDA  7, 8(0) ; Call print
351 : LDC  4, 6(0) ;  Load frame size
352 : SUB  5, 5, 4 ;  Restore pointer
353 : ST   1, 5(5) ;  Store function result into stack frame
354 : LD   1, 1(5) ;  Load parameter 'a' into R1
355 : ST  1, 5(5) ;  Store left operand into return slot. Safeguard for recursion
356 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
357 : LD  2, 5(5) ;  Restore left operand
358 : ADD  1, 2, 1 ;  R1 = left + right
359 : LDA  3, 6(5) ; Restore Callee frame base
360 : ST 1, 1(3) ;  Store argument 0 into callee frame
361 : LD   1, 2(5) ;  Load parameter 'n' into R1
362 : LDA  3, 6(5) ; Restore Callee frame base
363 : ST 1, 2(3) ;  Store argument 1 into callee frame
364 : LD   1, 3(5) ;  Load parameter 'upper' into R1
365 : LDA  3, 6(5) ; Restore Callee frame base
366 : ST 1, 3(3) ;  Store argument 2 into callee frame
367 : LDA  3, 6(5) ; Restore Call frame base
368 : LDA 6, 372(0) ;  Compute return address
369 : ST 6, 0(3) ;  Store return address in callee frame
370 : ADD  5, 3, 0 ;  Update pointer
371 : LDA 7, 78(0) ;  Call aLoop
372 : LD 1, 4(5) ;  Load callee return value into R1
373 : LDC  4, 6(0) ;  Load frame size
374 : SUB  5, 5, 4 ;  Restore pointer
375 : ST   1, 5(5) ;  Store function result into stack frame
376 : LD   6, 0(5) ;  Load return address
377 : LDA  7, 0(6) ;  Return to caller
378 : LD   1, 1(5) ;  Load parameter 'n' into R1
379 : LDA  3, 3(5) ; Restore Callee frame base
380 : ST 1, 1(3) ;  Store argument 0 into callee frame
381 : LD   1, 1(5) ;  Load parameter 'n' into R1
382 : LDA  3, 3(5) ; Restore Callee frame base
383 : ST 1, 1(3) ;  Store argument 0 into callee frame
384 : LDA  3, 3(5) ; Restore Call frame base
385 : LDA 6, 389(0) ;  Compute return address
386 : ST 6, 0(3) ;  Store return address in callee frame
387 : ADD  5, 3, 0 ;  Update pointer
388 : LDA 7, 559(0) ;  Call length
389 : LD 1, 2(5) ;  Load callee return value into R1
390 : LDC  4, 3(0) ;  Load frame size
391 : SUB  5, 5, 4 ;  Restore pointer
392 : LDA  3, 3(5) ; Restore Callee frame base
393 : ST 1, 2(3) ;  Store argument 1 into callee frame
394 : LDA  3, 3(5) ; Restore Call frame base
395 : LDA 6, 399(0) ;  Compute return address
396 : ST 6, 0(3) ;  Store return address in callee frame
397 : ADD  5, 3, 0 ;  Update pointer
398 : LDA 7, 405(0) ;  Call isExcellentSwitch
399 : LD 1, 3(5) ;  Load callee return value into R1
400 : LDC  4, 3(0) ;  Load frame size
401 : SUB  5, 5, 4 ;  Restore pointer
402 : ST   1, 2(5) ;  Store function result into stack frame
403 : LD   6, 0(5) ;  Load return address
404 : LDA  7, 0(6) ;  Return to caller
405 : LD   1, 2(5) ;  Load parameter 'length' into R1
406 : LDA  3, 4(5) ; Restore Callee frame base
407 : ST 1, 1(3) ;  Store argument 0 into callee frame
408 : LDA  3, 4(5) ; Restore Call frame base
409 : LDA 6, 413(0) ;  Compute return address
410 : ST 6, 0(3) ;  Store return address in callee frame
411 : ADD  5, 3, 0 ;  Update pointer
412 : LDA 7, 815(0) ;  Call ODD
413 : LD 1, 2(5) ;  Load callee return value into R1
414 : LDC  4, 4(0) ;  Load frame size
415 : SUB  5, 5, 4 ;  Restore pointer
416 : JEQ  1, 419(0) ;  If condition is false, jump to ELSE
417 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
418 : LDA  7, 461(0) ;  Skip ELSE block
419 : LD   1, 1(5) ;  Load parameter 'n' into R1
420 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
421 : LD   1, 1(5) ;  Load parameter 'n' into R1
422 : LDA  3, 4(5) ; Restore Callee frame base
423 : ST 1, 1(3) ;  Store argument 0 into callee frame
424 : LDA  3, 4(5) ; Restore Call frame base
425 : LDA 6, 429(0) ;  Compute return address
426 : ST 6, 0(3) ;  Store return address in callee frame
427 : ADD  5, 3, 0 ;  Update pointer
428 : LDA 7, 524(0) ;  Call a
429 : LD 1, 2(5) ;  Load callee return value into R1
430 : LDC  4, 4(0) ;  Load frame size
431 : SUB  5, 5, 4 ;  Restore pointer
432 : LDA  3, 4(5) ; Restore Callee frame base
433 : ST 1, 1(3) ;  Store argument 0 into callee frame
434 : LD   1, 1(5) ;  Load parameter 'n' into R1
435 : LDA  3, 4(5) ; Restore Callee frame base
436 : ST 1, 1(3) ;  Store argument 0 into callee frame
437 : LDA  3, 4(5) ; Restore Call frame base
438 : LDA 6, 442(0) ;  Compute return address
439 : ST 6, 0(3) ;  Store return address in callee frame
440 : ADD  5, 3, 0 ;  Update pointer
441 : LDA 7, 480(0) ;  Call b
442 : LD 1, 2(5) ;  Load callee return value into R1
443 : LDC  4, 4(0) ;  Load frame size
444 : SUB  5, 5, 4 ;  Restore pointer
445 : LDA  3, 4(5) ; Restore Callee frame base
446 : ST 1, 2(3) ;  Store argument 1 into callee frame
447 : LDA  3, 4(5) ; Restore Call frame base
448 : LDA 6, 452(0) ;  Compute return address
449 : ST 6, 0(3) ;  Store return address in callee frame
450 : ADD  5, 3, 0 ;  Update pointer
451 : LDA 7, 464(0) ;  Call excellentDiff
452 : LD 1, 3(5) ;  Load callee return value into R1
453 : LDC  4, 4(0) ;  Load frame size
454 : SUB  5, 5, 4 ;  Restore pointer
455 : LD  2, 3(5) ;  Restore left operand
456 : SUB  1, 2, 1 ;  left - right for equality check
457 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
458 : LDC  1, 0(0) ;  false
459 : LDA  7, 1(7) ;  skip setting true
460 : LDC  1, 1(0) ;  true
461 : ST   1, 3(5) ;  Store function result into stack frame
462 : LD   6, 0(5) ;  Load return address
463 : LDA  7, 0(6) ;  Return to caller
464 : LD   1, 2(5) ;  Load parameter 'b' into R1
465 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
466 : LD   1, 2(5) ;  Load parameter 'b' into R1
467 : LD  2, 3(5) ;  Restore left operand
468 : MUL  1, 2, 1 ;  R1 = left * right
469 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
470 : LD   1, 1(5) ;  Load parameter 'a' into R1
471 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
472 : LD   1, 1(5) ;  Load parameter 'a' into R1
473 : LD  2, 3(5) ;  Restore left operand
474 : MUL  1, 2, 1 ;  R1 = left * right
475 : LD  2, 3(5) ;  Restore left operand
476 : SUB  1, 2, 1 ;  R1 = left - right
477 : ST   1, 3(5) ;  Store function result into stack frame
478 : LD   6, 0(5) ;  Load return address
479 : LDA  7, 0(6) ;  Return to caller
480 : LD   1, 1(5) ;  Load parameter 'n' into R1
481 : LDA  3, 3(5) ; Restore Callee frame base
482 : ST 1, 1(3) ;  Store argument 0 into callee frame
483 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
484 : LDA  3, 3(5) ; Restore Callee frame base
485 : ST 1, 1(3) ;  Store argument 0 into callee frame
486 : LD   1, 1(5) ;  Load parameter 'n' into R1
487 : LDA  3, 3(5) ; Restore Callee frame base
488 : ST 1, 1(3) ;  Store argument 0 into callee frame
489 : LDA  3, 3(5) ; Restore Call frame base
490 : LDA 6, 494(0) ;  Compute return address
491 : ST 6, 0(3) ;  Store return address in callee frame
492 : ADD  5, 3, 0 ;  Update pointer
493 : LDA 7, 559(0) ;  Call length
494 : LD 1, 2(5) ;  Load callee return value into R1
495 : LDC  4, 3(0) ;  Load frame size
496 : SUB  5, 5, 4 ;  Restore pointer
497 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
498 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
499 : LD  2, 2(5) ;  Restore left operand
500 : DIV  1, 2, 1 ;  R1 = left / right
501 : LDA  3, 3(5) ; Restore Callee frame base
502 : ST 1, 2(3) ;  Store argument 1 into callee frame
503 : LDA  3, 3(5) ; Restore Call frame base
504 : LDA 6, 508(0) ;  Compute return address
505 : ST 6, 0(3) ;  Store return address in callee frame
506 : ADD  5, 3, 0 ;  Update pointer
507 : LDA 7, 858(0) ;  Call EXP
508 : LD 1, 3(5) ;  Load callee return value into R1
509 : LDC  4, 3(0) ;  Load frame size
510 : SUB  5, 5, 4 ;  Restore pointer
511 : LDA  3, 3(5) ; Restore Callee frame base
512 : ST 1, 2(3) ;  Store argument 1 into callee frame
513 : LDA  3, 3(5) ; Restore Call frame base
514 : LDA 6, 518(0) ;  Compute return address
515 : ST 6, 0(3) ;  Store return address in callee frame
516 : ADD  5, 3, 0 ;  Update pointer
517 : LDA 7, 895(0) ;  Call MOD
518 : LD 1, 3(5) ;  Load callee return value into R1
519 : LDC  4, 3(0) ;  Load frame size
520 : SUB  5, 5, 4 ;  Restore pointer
521 : ST   1, 2(5) ;  Store function result into stack frame
522 : LD   6, 0(5) ;  Load return address
523 : LDA  7, 0(6) ;  Return to caller
524 : LD   1, 1(5) ;  Load parameter 'n' into R1
525 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
526 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
527 : LDA  3, 3(5) ; Restore Callee frame base
528 : ST 1, 1(3) ;  Store argument 0 into callee frame
529 : LD   1, 1(5) ;  Load parameter 'n' into R1
530 : LDA  3, 3(5) ; Restore Callee frame base
531 : ST 1, 1(3) ;  Store argument 0 into callee frame
532 : LDA  3, 3(5) ; Restore Call frame base
533 : LDA 6, 537(0) ;  Compute return address
534 : ST 6, 0(3) ;  Store return address in callee frame
535 : ADD  5, 3, 0 ;  Update pointer
536 : LDA 7, 559(0) ;  Call length
537 : LD 1, 2(5) ;  Load callee return value into R1
538 : LDC  4, 3(0) ;  Load frame size
539 : SUB  5, 5, 4 ;  Restore pointer
540 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
541 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
542 : LD  2, 2(5) ;  Restore left operand
543 : DIV  1, 2, 1 ;  R1 = left / right
544 : LDA  3, 3(5) ; Restore Callee frame base
545 : ST 1, 2(3) ;  Store argument 1 into callee frame
546 : LDA  3, 3(5) ; Restore Call frame base
547 : LDA 6, 551(0) ;  Compute return address
548 : ST 6, 0(3) ;  Store return address in callee frame
549 : ADD  5, 3, 0 ;  Update pointer
550 : LDA 7, 858(0) ;  Call EXP
551 : LD 1, 3(5) ;  Load callee return value into R1
552 : LDC  4, 3(0) ;  Load frame size
553 : SUB  5, 5, 4 ;  Restore pointer
554 : LD  2, 2(5) ;  Restore left operand
555 : DIV  1, 2, 1 ;  R1 = left / right
556 : ST   1, 2(5) ;  Store function result into stack frame
557 : LD   6, 0(5) ;  Load return address
558 : LDA  7, 0(6) ;  Return to caller
559 : LD   1, 1(5) ;  Load parameter 'n' into R1
560 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
561 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
562 : LD  2, 2(5) ;  Restore left operand
563 : SUB  1, 2, 1 ;  left - right for less-than check
564 : JLT  1, 2(7) ;  If R1 < 0, jump to true
565 : LDC  1, 0(0) ;  false
566 : LDA  7, 1(7) ;  skip setting true
567 : LDC  1, 1(0) ;  true
568 : JEQ  1, 571(0) ;  If condition is false, jump to ELSE
569 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
570 : LDA  7, 590(0) ;  Skip ELSE block
571 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
572 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
573 : LD   1, 1(5) ;  Load parameter 'n' into R1
574 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
575 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
576 : LD  2, 2(5) ;  Restore left operand
577 : DIV  1, 2, 1 ;  R1 = left / right
578 : LDA  3, 3(5) ; Restore Callee frame base
579 : ST 1, 1(3) ;  Store argument 0 into callee frame
580 : LDA  3, 3(5) ; Restore Call frame base
581 : LDA 6, 585(0) ;  Compute return address
582 : ST 6, 0(3) ;  Store return address in callee frame
583 : ADD  5, 3, 0 ;  Update pointer
584 : LDA 7, 559(0) ;  Call length
585 : LD 1, 2(5) ;  Load callee return value into R1
586 : LDC  4, 3(0) ;  Load frame size
587 : SUB  5, 5, 4 ;  Restore pointer
588 : LD  2, 2(5) ;  Restore left operand
589 : ADD  1, 2, 1 ;  R1 = left + right
590 : ST   1, 2(5) ;  Store function result into stack frame
591 : LD   6, 0(5) ;  Load return address
592 : LDA  7, 0(6) ;  Return to caller
593 : LD   1, 2(5) ;  Load parameter 'n' into R1
594 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
595 : LD   1, 1(5) ;  Load parameter 'r' into R1
596 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
597 : LD   1, 1(5) ;  Load parameter 'r' into R1
598 : LD  2, 3(5) ;  Restore left operand
599 : MUL  1, 2, 1 ;  R1 = left * right
600 : LD  2, 3(5) ;  Restore left operand
601 : SUB  1, 2, 1 ;  left - right for equality check
602 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
603 : LDC  1, 0(0) ;  false
604 : LDA  7, 1(7) ;  skip setting true
605 : LDC  1, 1(0) ;  true
606 : ST   1, 3(5) ;  Store function result into stack frame
607 : LD   6, 0(5) ;  Load return address
608 : LDA  7, 0(6) ;  Return to caller
609 : LD   1, 1(5) ;  Load parameter 'n' into R1
610 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
611 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
612 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
613 : LD   1, 1(5) ;  Load parameter 'n' into R1
614 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
615 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
616 : LD  2, 2(5) ;  Restore left operand
617 : DIV  1, 2, 1 ;  R1 = left / right
618 : LD  2, 2(5) ;  Restore left operand
619 : MUL  1, 2, 1 ;  R1 = left * right
620 : LD  2, 2(5) ;  Restore left operand
621 : SUB  1, 2, 1 ;  left - right for equality check
622 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
623 : LDC  1, 0(0) ;  false
624 : LDA  7, 1(7) ;  skip setting true
625 : LDC  1, 1(0) ;  true
626 : ST   1, 2(5) ;  Store function result into stack frame
627 : LD   6, 0(5) ;  Load return address
628 : LDA  7, 0(6) ;  Return to caller
629 : LD   1, 4(5) ;  Load parameter 'mid' into R1
630 : ST  1, 5(5) ;  Store left operand into return slot. Safeguard for recursion
631 : LD   1, 4(5) ;  Load parameter 'mid' into R1
632 : LD  2, 5(5) ;  Restore left operand
633 : MUL  1, 2, 1 ;  R1 = left * right
634 : LDA  3, 6(5) ; Restore Callee frame base
635 : ST 1, 1(3) ;  Store argument 0 into callee frame
636 : LD   1, 1(5) ;  Load parameter 'n' into R1
637 : LDA  3, 6(5) ; Restore Callee frame base
638 : ST 1, 2(3) ;  Store argument 1 into callee frame
639 : LDA  3, 6(5) ; Restore Call frame base
640 : LDA 6, 644(0) ;  Compute return address
641 : ST 6, 0(3) ;  Store return address in callee frame
642 : ADD  5, 3, 0 ;  Update pointer
643 : LDA 7, 791(0) ;  Call LE
644 : LD 1, 3(5) ;  Load callee return value into R1
645 : LDC  4, 6(0) ;  Load frame size
646 : SUB  5, 5, 4 ;  Restore pointer
647 : JEQ  1, 666(0) ;  If condition is false, jump to ELSE
648 : LD   1, 1(5) ;  Load parameter 'n' into R1
649 : LDA  3, 6(5) ; Restore Callee frame base
650 : ST 1, 1(3) ;  Store argument 0 into callee frame
651 : LD   1, 4(5) ;  Load parameter 'mid' into R1
652 : LDA  3, 6(5) ; Restore Callee frame base
653 : ST 1, 2(3) ;  Store argument 1 into callee frame
654 : LD   1, 3(5) ;  Load parameter 'high' into R1
655 : LDA  3, 6(5) ; Restore Callee frame base
656 : ST 1, 3(3) ;  Store argument 2 into callee frame
657 : LDA  3, 6(5) ; Restore Call frame base
658 : LDA 6, 662(0) ;  Compute return address
659 : ST 6, 0(3) ;  Store return address in callee frame
660 : ADD  5, 3, 0 ;  Update pointer
661 : LDA 7, 686(0) ;  Call SQRTSEARCH
662 : LD 1, 4(5) ;  Load callee return value into R1
663 : LDC  4, 6(0) ;  Load frame size
664 : SUB  5, 5, 4 ;  Restore pointer
665 : LDA  7, 683(0) ;  Skip ELSE block
666 : LD   1, 1(5) ;  Load parameter 'n' into R1
667 : LDA  3, 6(5) ; Restore Callee frame base
668 : ST 1, 1(3) ;  Store argument 0 into callee frame
669 : LD   1, 2(5) ;  Load parameter 'low' into R1
670 : LDA  3, 6(5) ; Restore Callee frame base
671 : ST 1, 2(3) ;  Store argument 1 into callee frame
672 : LD   1, 4(5) ;  Load parameter 'mid' into R1
673 : LDA  3, 6(5) ; Restore Callee frame base
674 : ST 1, 3(3) ;  Store argument 2 into callee frame
675 : LDA  3, 6(5) ; Restore Call frame base
676 : LDA 6, 680(0) ;  Compute return address
677 : ST 6, 0(3) ;  Store return address in callee frame
678 : ADD  5, 3, 0 ;  Update pointer
679 : LDA 7, 686(0) ;  Call SQRTSEARCH
680 : LD 1, 4(5) ;  Load callee return value into R1
681 : LDC  4, 6(0) ;  Load frame size
682 : SUB  5, 5, 4 ;  Restore pointer
683 : ST   1, 5(5) ;  Store function result into stack frame
684 : LD   6, 0(5) ;  Load return address
685 : LDA  7, 0(6) ;  Return to caller
686 : LD   1, 3(5) ;  Load parameter 'high' into R1
687 : LDA  3, 5(5) ; Restore Callee frame base
688 : ST 1, 1(3) ;  Store argument 0 into callee frame
689 : LD   1, 2(5) ;  Load parameter 'low' into R1
690 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
691 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
692 : LD  2, 4(5) ;  Restore left operand
693 : ADD  1, 2, 1 ;  R1 = left + right
694 : LDA  3, 5(5) ; Restore Callee frame base
695 : ST 1, 2(3) ;  Store argument 1 into callee frame
696 : LDA  3, 5(5) ; Restore Call frame base
697 : LDA 6, 701(0) ;  Compute return address
698 : ST 6, 0(3) ;  Store return address in callee frame
699 : ADD  5, 3, 0 ;  Update pointer
700 : LDA 7, 791(0) ;  Call LE
701 : LD 1, 3(5) ;  Load callee return value into R1
702 : LDC  4, 5(0) ;  Load frame size
703 : SUB  5, 5, 4 ;  Restore pointer
704 : JEQ  1, 740(0) ;  If condition is false, jump to ELSE
705 : LD   1, 1(5) ;  Load parameter 'n' into R1
706 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
707 : LD   1, 2(5) ;  Load parameter 'low' into R1
708 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
709 : LD   1, 2(5) ;  Load parameter 'low' into R1
710 : LD  2, 4(5) ;  Restore left operand
711 : MUL  1, 2, 1 ;  R1 = left * right
712 : LD  2, 4(5) ;  Restore left operand
713 : SUB  1, 2, 1 ;  R1 = left - right
714 : LDA  3, 5(5) ; Restore Callee frame base
715 : ST 1, 1(3) ;  Store argument 0 into callee frame
716 : LD   1, 3(5) ;  Load parameter 'high' into R1
717 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
718 : LD   1, 3(5) ;  Load parameter 'high' into R1
719 : LD  2, 4(5) ;  Restore left operand
720 : MUL  1, 2, 1 ;  R1 = left * right
721 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
722 : LD   1, 1(5) ;  Load parameter 'n' into R1
723 : LD  2, 4(5) ;  Restore left operand
724 : SUB  1, 2, 1 ;  R1 = left - right
725 : LDA  3, 5(5) ; Restore Callee frame base
726 : ST 1, 2(3) ;  Store argument 1 into callee frame
727 : LDA  3, 5(5) ; Restore Call frame base
728 : LDA 6, 732(0) ;  Compute return address
729 : ST 6, 0(3) ;  Store return address in callee frame
730 : ADD  5, 3, 0 ;  Update pointer
731 : LDA 7, 791(0) ;  Call LE
732 : LD 1, 3(5) ;  Load callee return value into R1
733 : LDC  4, 5(0) ;  Load frame size
734 : SUB  5, 5, 4 ;  Restore pointer
735 : JEQ  1, 738(0) ;  If condition is false, jump to ELSE
736 : LD   1, 2(5) ;  Load parameter 'low' into R1
737 : LDA  7, 739(0) ;  Skip ELSE block
738 : LD   1, 3(5) ;  Load parameter 'high' into R1
739 : LDA  7, 768(0) ;  Skip ELSE block
740 : LD   1, 1(5) ;  Load parameter 'n' into R1
741 : LDA  3, 5(5) ; Restore Callee frame base
742 : ST 1, 1(3) ;  Store argument 0 into callee frame
743 : LD   1, 2(5) ;  Load parameter 'low' into R1
744 : LDA  3, 5(5) ; Restore Callee frame base
745 : ST 1, 2(3) ;  Store argument 1 into callee frame
746 : LD   1, 3(5) ;  Load parameter 'high' into R1
747 : LDA  3, 5(5) ; Restore Callee frame base
748 : ST 1, 3(3) ;  Store argument 2 into callee frame
749 : LD   1, 2(5) ;  Load parameter 'low' into R1
750 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
751 : LD   1, 3(5) ;  Load parameter 'high' into R1
752 : LD  2, 4(5) ;  Restore left operand
753 : ADD  1, 2, 1 ;  R1 = left + right
754 : ST  1, 4(5) ;  Store left operand into return slot. Safeguard for recursion
755 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
756 : LD  2, 4(5) ;  Restore left operand
757 : DIV  1, 2, 1 ;  R1 = left / right
758 : LDA  3, 5(5) ; Restore Callee frame base
759 : ST 1, 4(3) ;  Store argument 3 into callee frame
760 : LDA  3, 5(5) ; Restore Call frame base
761 : LDA 6, 765(0) ;  Compute return address
762 : ST 6, 0(3) ;  Store return address in callee frame
763 : ADD  5, 3, 0 ;  Update pointer
764 : LDA 7, 629(0) ;  Call SQRTSPLIT
765 : LD 1, 5(5) ;  Load callee return value into R1
766 : LDC  4, 5(0) ;  Load frame size
767 : SUB  5, 5, 4 ;  Restore pointer
768 : ST   1, 4(5) ;  Store function result into stack frame
769 : LD   6, 0(5) ;  Load return address
770 : LDA  7, 0(6) ;  Return to caller
771 : LD   1, 1(5) ;  Load parameter 'n' into R1
772 : LDA  3, 3(5) ; Restore Callee frame base
773 : ST 1, 1(3) ;  Store argument 0 into callee frame
774 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
775 : LDA  3, 3(5) ; Restore Callee frame base
776 : ST 1, 2(3) ;  Store argument 1 into callee frame
777 : LD   1, 1(5) ;  Load parameter 'n' into R1
778 : LDA  3, 3(5) ; Restore Callee frame base
779 : ST 1, 3(3) ;  Store argument 2 into callee frame
780 : LDA  3, 3(5) ; Restore Call frame base
781 : LDA 6, 785(0) ;  Compute return address
782 : ST 6, 0(3) ;  Store return address in callee frame
783 : ADD  5, 3, 0 ;  Update pointer
784 : LDA 7, 686(0) ;  Call SQRTSEARCH
785 : LD 1, 4(5) ;  Load callee return value into R1
786 : LDC  4, 3(0) ;  Load frame size
787 : SUB  5, 5, 4 ;  Restore pointer
788 : ST   1, 2(5) ;  Store function result into stack frame
789 : LD   6, 0(5) ;  Load return address
790 : LDA  7, 0(6) ;  Return to caller
791 : LD   1, 1(5) ;  Load parameter 'p' into R1
792 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
793 : LD   1, 2(5) ;  Load parameter 'q' into R1
794 : LD  2, 3(5) ;  Restore left operand
795 : SUB  1, 2, 1 ;  left - right for less-than check
796 : JLT  1, 2(7) ;  If R1 < 0, jump to true
797 : LDC  1, 0(0) ;  false
798 : LDA  7, 1(7) ;  skip setting true
799 : LDC  1, 1(0) ;  true
800 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
801 : LD   1, 1(5) ;  Load parameter 'p' into R1
802 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
803 : LD   1, 2(5) ;  Load parameter 'q' into R1
804 : LD  2, 3(5) ;  Restore left operand
805 : SUB  1, 2, 1 ;  left - right for equality check
806 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
807 : LDC  1, 0(0) ;  false
808 : LDA  7, 1(7) ;  skip setting true
809 : LDC  1, 1(0) ;  true
810 : LD  2, 3(5) ;  Restore left operand
811 : ADD  1, 2, 1 ;  R1 = left OR right
812 : ST   1, 3(5) ;  Store function result into stack frame
813 : LD   6, 0(5) ;  Load return address
814 : LDA  7, 0(6) ;  Return to caller
815 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
816 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
817 : LD   1, 1(5) ;  Load parameter 'n' into R1
818 : LD  2, 2(5) ;  Restore left operand
819 : SUB  1, 2, 1 ;  left - right for less-than check
820 : JLT  1, 2(7) ;  If R1 < 0, jump to true
821 : LDC  1, 0(0) ;  false
822 : LDA  7, 1(7) ;  skip setting true
823 : LDC  1, 1(0) ;  true
824 : JEQ  1, 843(0) ;  If condition is false, jump to ELSE
825 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
826 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
827 : LD   1, 1(5) ;  Load parameter 'n' into R1
828 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
829 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
830 : LD  2, 2(5) ;  Restore left operand
831 : DIV  1, 2, 1 ;  R1 = left / right
832 : LD  2, 2(5) ;  Restore left operand
833 : MUL  1, 2, 1 ;  R1 = left * right
834 : ST  1, 2(5) ;  Store left operand into return slot. Safeguard for recursion
835 : LD   1, 1(5) ;  Load parameter 'n' into R1
836 : LD  2, 2(5) ;  Restore left operand
837 : SUB  1, 2, 1 ;  left - right for less-than check
838 : JLT  1, 2(7) ;  If R1 < 0, jump to true
839 : LDC  1, 0(0) ;  false
840 : LDA  7, 1(7) ;  skip setting true
841 : LDC  1, 1(0) ;  true
842 : LDA  7, 855(0) ;  Skip ELSE block
843 : LD   1, 1(5) ;  Load parameter 'n' into R1
844 : SUB  1, 0, 1 ;  Negate value in R1
845 : LDA  3, 3(5) ; Restore Callee frame base
846 : ST 1, 1(3) ;  Store argument 0 into callee frame
847 : LDA  3, 3(5) ; Restore Call frame base
848 : LDA 6, 852(0) ;  Compute return address
849 : ST 6, 0(3) ;  Store return address in callee frame
850 : ADD  5, 3, 0 ;  Update pointer
851 : LDA 7, 815(0) ;  Call ODD
852 : LD 1, 2(5) ;  Load callee return value into R1
853 : LDC  4, 3(0) ;  Load frame size
854 : SUB  5, 5, 4 ;  Restore pointer
855 : ST   1, 2(5) ;  Store function result into stack frame
856 : LD   6, 0(5) ;  Load return address
857 : LDA  7, 0(6) ;  Return to caller
858 : LD   1, 2(5) ;  Load parameter 'n' into R1
859 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
860 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
861 : LD  2, 3(5) ;  Restore left operand
862 : SUB  1, 2, 1 ;  left - right for equality check
863 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
864 : LDC  1, 0(0) ;  false
865 : LDA  7, 1(7) ;  skip setting true
866 : LDC  1, 1(0) ;  true
867 : JEQ  1, 870(0) ;  If condition is false, jump to ELSE
868 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
869 : LDA  7, 892(0) ;  Skip ELSE block
870 : LD   1, 1(5) ;  Load parameter 'm' into R1
871 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
872 : LD   1, 1(5) ;  Load parameter 'm' into R1
873 : LDA  3, 4(5) ; Restore Callee frame base
874 : ST 1, 1(3) ;  Store argument 0 into callee frame
875 : LD   1, 2(5) ;  Load parameter 'n' into R1
876 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
877 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
878 : LD  2, 3(5) ;  Restore left operand
879 : SUB  1, 2, 1 ;  R1 = left - right
880 : LDA  3, 4(5) ; Restore Callee frame base
881 : ST 1, 2(3) ;  Store argument 1 into callee frame
882 : LDA  3, 4(5) ; Restore Call frame base
883 : LDA 6, 887(0) ;  Compute return address
884 : ST 6, 0(3) ;  Store return address in callee frame
885 : ADD  5, 3, 0 ;  Update pointer
886 : LDA 7, 858(0) ;  Call EXP
887 : LD 1, 3(5) ;  Load callee return value into R1
888 : LDC  4, 4(0) ;  Load frame size
889 : SUB  5, 5, 4 ;  Restore pointer
890 : LD  2, 3(5) ;  Restore left operand
891 : MUL  1, 2, 1 ;  R1 = left * right
892 : ST   1, 3(5) ;  Store function result into stack frame
893 : LD   6, 0(5) ;  Load return address
894 : LDA  7, 0(6) ;  Return to caller
895 : LD   1, 1(5) ;  Load parameter 'm' into R1
896 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
897 : LD   1, 2(5) ;  Load parameter 'n' into R1
898 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
899 : LD   1, 1(5) ;  Load parameter 'm' into R1
900 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
901 : LD   1, 2(5) ;  Load parameter 'n' into R1
902 : LD  2, 3(5) ;  Restore left operand
903 : DIV  1, 2, 1 ;  R1 = left / right
904 : LD  2, 3(5) ;  Restore left operand
905 : MUL  1, 2, 1 ;  R1 = left * right
906 : LD  2, 3(5) ;  Restore left operand
907 : SUB  1, 2, 1 ;  R1 = left - right
908 : ST   1, 3(5) ;  Store function result into stack frame
909 : LD   6, 0(5) ;  Load return address
910 : LDA  7, 0(6) ;  Return to caller
