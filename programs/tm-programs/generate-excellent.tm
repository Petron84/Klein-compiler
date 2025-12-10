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
12 : LDA 3, 4(5) ; Base of callee frame (stable)
13 : LDA 3, 4(5) ; Base of callee frame (stable)
14 : LDC 1, 10(0) ;  Load integer-literal value into register 1
15 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
16 : LDC 1, 2(0) ;  Load integer-literal value into register 1
17 : ADD 3, 1, 0 ;  Stash right operand in R3
18 : LD 1, 1(5) ;  Load parameter 'length' into R1
19 : ADD 2, 1, 0 ;  Move left operand to register 2
20 : ADD 1, 3, 0 ;  Restore right operand from R3
21 : DIV 1, 2, 1 ;  R1 = left / right
22 : ADD 2, 1, 0 ;  Move left operand to register 2
23 : LDC 1, 1(0) ;  Load integer-literal value into register 1
24 : SUB 1, 2, 1 ;  R1 = left - right
25 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(3) ; Store return in callee frame (via R3)
28 : ADD 5, 3, 0 ; Push callee frame
29 : LDA 7, 797(0) ; Call EXP
30 : LD 1, 3(5) ;  Load function result
31 : LDC 2, 4(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop back to caller
33 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
34 : LDC 1, 2(0) ;  Load integer-literal value into register 1
35 : ADD 3, 1, 0 ;  Stash right operand in R3
36 : LD 1, 1(5) ;  Load parameter 'length' into R1
37 : ADD 2, 1, 0 ;  Move left operand to register 2
38 : ADD 1, 3, 0 ;  Restore right operand from R3
39 : DIV 1, 2, 1 ;  R1 = left / right
40 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(3) ; Store return in callee frame (via R3)
43 : ADD 5, 3, 0 ; Push callee frame
44 : LDA 7, 52(0) ; Call createLoop
45 : LD 1, 3(5) ;  Load function result
46 : LDC 2, 4(0) ;  Caller frame size
47 : SUB 5, 5, 2 ;  Pop back to caller
48 : ST 1, 2(5) ; Store result into caller’s frame
49 : LD 1, 2(5) ;  Load return value into register 1
50 : LD 6, 0(5) ;  Load return address for main function into register 6
51 : LDA 7, 0(6) ;  Jump to return address of main function
52 : LDA 3, 5(5) ; Base of callee frame (stable)
53 : LD 1, 1(5) ;  Load parameter 'a' into R1
54 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
55 : LD 1, 2(5) ;  Load parameter 'n' into R1
56 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
57 : LD 1, 1(5) ;  Load parameter 'a' into R1
58 : ADD 3, 1, 0 ;  Stash right operand in R3
59 : LDC 1, 10(0) ;  Load integer-literal value into register 1
60 : ADD 2, 1, 0 ;  Move left operand to register 2
61 : ADD 1, 3, 0 ;  Restore right operand from R3
62 : MUL 1, 2, 1 ;  R1 = left * right
63 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(3) ; Store return in callee frame (via R3)
66 : ADD 5, 3, 0 ; Push callee frame
67 : LDA 7, 74(0) ; Call aLoop
68 : LD 1, 4(5) ;  Load function result
69 : LDC 2, 5(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop back to caller
71 : ST 1, 3(5) ;  Store function result into stack frame
72 : LD 6, 0(5) ;  Load return address
73 : LDA 7, 0(6) ;  Return to caller
74 : LD 1, 3(5) ;  Load parameter 'upper' into R1
75 : ADD 3, 1, 0 ;  Stash right operand in R3
76 : LD 1, 1(5) ;  Load parameter 'a' into R1
77 : ADD 2, 1, 0 ;  Move left operand to register 2
78 : ADD 1, 3, 0 ;  Restore right operand from R3
79 : SUB 1, 2, 1 ;  left - right for less-than check
80 : JLT 1, 2(7) ;  If R1 < 0, jump to true
81 : LDC 1, 0(0) ;  false
82 : LDA 7, 1(7) ;  skip setting true
83 : LDC 1, 1(0) ;  true
84 : JEQ 1, 143(0) ;  If condition is false, jump to ELSE
85 : LDA 3, 6(5) ; Base of callee frame (stable)
86 : LD 1, 1(5) ;  Load parameter 'a' into R1
87 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
88 : LD 1, 2(5) ;  Load parameter 'n' into R1
89 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
90 : LD 1, 3(5) ;  Load parameter 'upper' into R1
91 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
92 : LDA 3, 4(5) ; Base of callee frame (stable)
93 : LD 1, 1(5) ;  Load parameter 'a' into R1
94 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
95 : LDC 1, 2(0) ;  Load integer-literal value into register 1
96 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(3) ; Store return in callee frame (via R3)
99 : ADD 5, 3, 0 ; Push callee frame
100 : LDA 7, 797(0) ; Call EXP
101 : LD 1, 3(5) ;  Load function result
102 : LDC 2, 4(0) ;  Caller frame size
103 : SUB 5, 5, 2 ;  Pop back to caller
104 : ADD 3, 1, 0 ;  Move right operand to register 3
105 : LDC 1, 4(0) ;  Load integer-literal value into register 1
106 : ADD 2, 1, 0 ;  Move left operand to register 2
107 : ADD 1, 3, 0 ;  Move right operand to register 1
108 : MUL 1, 2, 1 ;  R1 = left * right
109 : ADD 2, 1, 0 ;  Move left operand to register 2
110 : LDA 3, 4(5) ; Base of callee frame (stable)
111 : LDC 1, 10(0) ;  Load integer-literal value into register 1
112 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
113 : LD 1, 2(5) ;  Load parameter 'n' into R1
114 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(3) ; Store return in callee frame (via R3)
117 : ADD 5, 3, 0 ; Push callee frame
118 : LDA 7, 797(0) ; Call EXP
119 : LD 1, 3(5) ;  Load function result
120 : LDC 2, 4(0) ;  Caller frame size
121 : SUB 5, 5, 2 ;  Pop back to caller
122 : ADD 3, 1, 0 ;  Move right operand to register 3
123 : LDC 1, 4(0) ;  Load integer-literal value into register 1
124 : ADD 2, 1, 0 ;  Move left operand to register 2
125 : ADD 1, 3, 0 ;  Move right operand to register 1
126 : MUL 1, 2, 1 ;  R1 = left * right
127 : ADD 2, 1, 0 ;  Move left operand to register 2
128 : LD 1, 1(5) ;  Load parameter 'a' into R1
129 : MUL 1, 2, 1 ;  R1 = left * right
130 : ADD 1, 2, 1 ;  R1 = left + right
131 : ADD 2, 1, 0 ;  Move left operand to register 2
132 : LDC 1, 1(0) ;  Load integer-literal value into register 1
133 : ADD 1, 2, 1 ;  R1 = left + right
134 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(3) ; Store return in callee frame (via R3)
137 : ADD 5, 3, 0 ; Push callee frame
138 : LDA 7, 147(0) ; Call aLoop1
139 : LD 1, 5(5) ;  Load function result
140 : LDC 2, 6(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop back to caller
142 : LDA 7, 144(0) ;  Skip ELSE block
143 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
144 : ST 1, 4(5) ;  Store function result into stack frame
145 : LD 6, 0(5) ;  Load return address
146 : LDA 7, 0(6) ;  Return to caller
147 : LDA 3, 7(5) ; Base of callee frame (stable)
148 : LD 1, 1(5) ;  Load parameter 'a' into R1
149 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
150 : LD 1, 2(5) ;  Load parameter 'n' into R1
151 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
152 : LD 1, 3(5) ;  Load parameter 'upper' into R1
153 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
154 : LD 1, 4(5) ;  Load parameter 'det' into R1
155 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
156 : LDA 3, 3(5) ; Base of callee frame (stable)
157 : LD 1, 4(5) ;  Load parameter 'det' into R1
158 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(3) ; Store return in callee frame (via R3)
161 : ADD 5, 3, 0 ; Push callee frame
162 : LDA 7, 711(0) ; Call SQRT
163 : LD 1, 2(5) ;  Load function result
164 : LDC 2, 3(0) ;  Caller frame size
165 : SUB 5, 5, 2 ;  Pop back to caller
166 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(3) ; Store return in callee frame (via R3)
169 : ADD 5, 3, 0 ; Push callee frame
170 : LDA 7, 177(0) ; Call aLoop2
171 : LD 1, 6(5) ;  Load function result
172 : LDC 2, 7(0) ;  Caller frame size
173 : SUB 5, 5, 2 ;  Pop back to caller
174 : ST 1, 5(5) ;  Store function result into stack frame
175 : LD 6, 0(5) ;  Load return address
176 : LDA 7, 0(6) ;  Return to caller
177 : LDA 3, 8(5) ; Base of callee frame (stable)
178 : LD 1, 1(5) ;  Load parameter 'a' into R1
179 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
180 : LD 1, 2(5) ;  Load parameter 'n' into R1
181 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
182 : LD 1, 3(5) ;  Load parameter 'upper' into R1
183 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
184 : LD 1, 4(5) ;  Load parameter 'det' into R1
185 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
186 : LD 1, 5(5) ;  Load parameter 'root' into R1
187 : ST 1, 5(3) ; Store argument 4 in callee (via R3)
188 : LDA 3, 4(5) ; Base of callee frame (stable)
189 : LDC 1, 10(0) ;  Load integer-literal value into register 1
190 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
191 : LD 1, 2(5) ;  Load parameter 'n' into R1
192 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(3) ; Store return in callee frame (via R3)
195 : ADD 5, 3, 0 ; Push callee frame
196 : LDA 7, 797(0) ; Call EXP
197 : LD 1, 3(5) ;  Load function result
198 : LDC 2, 4(0) ;  Caller frame size
199 : SUB 5, 5, 2 ;  Pop back to caller
200 : ADD 3, 1, 0 ;  Move right operand to register 3
201 : LD 1, 1(5) ;  Load parameter 'a' into R1
202 : ADD 2, 1, 0 ;  Move left operand to register 2
203 : ADD 1, 3, 0 ;  Move right operand to register 1
204 : MUL 1, 2, 1 ;  R1 = left * right
205 : ADD 2, 1, 0 ;  Move left operand to register 2
206 : LDC 1, 1(0) ;  Load integer-literal value into register 1
207 : ADD 3, 1, 0 ;  Stash right operand in R3
208 : LD 1, 5(5) ;  Load parameter 'root' into R1
209 : ADD 2, 1, 0 ;  Move left operand to register 2
210 : ADD 1, 3, 0 ;  Restore right operand from R3
211 : ADD 1, 2, 1 ;  R1 = left + right
212 : ADD 2, 1, 0 ;  Move left operand to register 2
213 : LDC 1, 2(0) ;  Load integer-literal value into register 1
214 : DIV 1, 2, 1 ;  R1 = left / right
215 : ADD 1, 2, 1 ;  R1 = left + right
216 : ST 1, 6(3) ; Store argument 5 in callee (via R3)
217 : LDA 6, 221(0) ; Return address
218 : ST 6, 0(3) ; Store return in callee frame (via R3)
219 : ADD 5, 3, 0 ; Push callee frame
220 : LDA 7, 227(0) ; Call aLoop3
221 : LD 1, 7(5) ;  Load function result
222 : LDC 2, 8(0) ;  Caller frame size
223 : SUB 5, 5, 2 ;  Pop back to caller
224 : ST 1, 6(5) ;  Store function result into stack frame
225 : LD 6, 0(5) ;  Load return address
226 : LDA 7, 0(6) ;  Return to caller
227 : LDA 3, 4(5) ; Base of callee frame (stable)
228 : LD 1, 5(5) ;  Load parameter 'root' into R1
229 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
230 : LD 1, 4(5) ;  Load parameter 'det' into R1
231 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
232 : LDA 6, 236(0) ; Return address
233 : ST 6, 0(3) ; Store return in callee frame (via R3)
234 : ADD 5, 3, 0 ; Push callee frame
235 : LDA 7, 540(0) ; Call ISROOT
236 : LD 1, 3(5) ;  Load function result
237 : LDC 2, 4(0) ;  Caller frame size
238 : SUB 5, 5, 2 ;  Pop back to caller
239 : ADD 2, 1, 0 ;  Move left operand to register 2
240 : LDA 3, 3(5) ; Base of callee frame (stable)
241 : LDC 1, 1(0) ;  Load integer-literal value into register 1
242 : ADD 3, 1, 0 ;  Stash right operand in R3
243 : LD 1, 5(5) ;  Load parameter 'root' into R1
244 : ADD 2, 1, 0 ;  Move left operand to register 2
245 : ADD 1, 3, 0 ;  Restore right operand from R3
246 : ADD 1, 2, 1 ;  R1 = left + right
247 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
248 : LDA 6, 252(0) ; Return address
249 : ST 6, 0(3) ; Store return in callee frame (via R3)
250 : ADD 5, 3, 0 ; Push callee frame
251 : LDA 7, 558(0) ; Call EVEN
252 : LD 1, 2(5) ;  Load function result
253 : LDC 2, 3(0) ;  Caller frame size
254 : SUB 5, 5, 2 ;  Pop back to caller
255 : MUL 1, 2, 1 ;  R1 = left AND right
256 : ADD 2, 1, 0 ;  Move left operand to register 2
257 : LDA 3, 3(5) ; Base of callee frame (stable)
258 : LD 1, 6(5) ;  Load parameter 'candidate' into R1
259 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
260 : LDA 6, 264(0) ; Return address
261 : ST 6, 0(3) ; Store return in callee frame (via R3)
262 : ADD 5, 3, 0 ; Push callee frame
263 : LDA 7, 338(0) ; Call isExcellent
264 : LD 1, 2(5) ;  Load function result
265 : LDC 2, 3(0) ;  Caller frame size
266 : SUB 5, 5, 2 ;  Pop back to caller
267 : MUL 1, 2, 1 ;  R1 = left AND right
268 : JEQ 1, 286(0) ;  If condition is false, jump to ELSE
269 : LDA 3, 6(5) ; Base of callee frame (stable)
270 : LD 1, 1(5) ;  Load parameter 'a' into R1
271 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
272 : LD 1, 2(5) ;  Load parameter 'n' into R1
273 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
274 : LD 1, 3(5) ;  Load parameter 'upper' into R1
275 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
276 : LD 1, 6(5) ;  Load parameter 'candidate' into R1
277 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(3) ; Store return in callee frame (via R3)
280 : ADD 5, 3, 0 ; Push callee frame
281 : LDA 7, 308(0) ; Call printCandidateAndContinue
282 : LD 1, 5(5) ;  Load function result
283 : LDC 2, 6(0) ;  Caller frame size
284 : SUB 5, 5, 2 ;  Pop back to caller
285 : LDA 7, 305(0) ;  Skip ELSE block
286 : LDA 3, 5(5) ; Base of callee frame (stable)
287 : LDC 1, 1(0) ;  Load integer-literal value into register 1
288 : ADD 3, 1, 0 ;  Stash right operand in R3
289 : LD 1, 1(5) ;  Load parameter 'a' into R1
290 : ADD 2, 1, 0 ;  Move left operand to register 2
291 : ADD 1, 3, 0 ;  Restore right operand from R3
292 : ADD 1, 2, 1 ;  R1 = left + right
293 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
294 : LD 1, 2(5) ;  Load parameter 'n' into R1
295 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
296 : LD 1, 3(5) ;  Load parameter 'upper' into R1
297 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
298 : LDA 6, 302(0) ; Return address
299 : ST 6, 0(3) ; Store return in callee frame (via R3)
300 : ADD 5, 3, 0 ; Push callee frame
301 : LDA 7, 74(0) ; Call aLoop
302 : LD 1, 4(5) ;  Load function result
303 : LDC 2, 5(0) ;  Caller frame size
304 : SUB 5, 5, 2 ;  Pop back to caller
305 : ST 1, 7(5) ;  Store function result into stack frame
306 : LD 6, 0(5) ;  Load return address
307 : LDA 7, 0(6) ;  Return to caller
308 : LD 1, 4(5) ;  Load parameter 'candidate' into R1
309 : LDA 3, 3(5) ; Base of callee frame (stable)
310 : LDA 6, 314(0) ; Return address
311 : ST 6, 0(3) ; Store return addr in callee frame
312 : ADD 5, 3, 0 ; Push new frame
313 : LDA 7, 9(0) ; Call print
314 : LDC 2, 3(0) ; Caller frame size
315 : SUB 5, 5, 2 ; Pop frame
316 : LDA 3, 5(5) ; Base of callee frame (stable)
317 : LDC 1, 1(0) ;  Load integer-literal value into register 1
318 : ADD 3, 1, 0 ;  Stash right operand in R3
319 : LD 1, 1(5) ;  Load parameter 'a' into R1
320 : ADD 2, 1, 0 ;  Move left operand to register 2
321 : ADD 1, 3, 0 ;  Restore right operand from R3
322 : ADD 1, 2, 1 ;  R1 = left + right
323 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
324 : LD 1, 2(5) ;  Load parameter 'n' into R1
325 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
326 : LD 1, 3(5) ;  Load parameter 'upper' into R1
327 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
328 : LDA 6, 332(0) ; Return address
329 : ST 6, 0(3) ; Store return in callee frame (via R3)
330 : ADD 5, 3, 0 ; Push callee frame
331 : LDA 7, 74(0) ; Call aLoop
332 : LD 1, 4(5) ;  Load function result
333 : LDC 2, 5(0) ;  Caller frame size
334 : SUB 5, 5, 2 ;  Pop back to caller
335 : ST 1, 5(5) ;  Store function result into stack frame
336 : LD 6, 0(5) ;  Load return address
337 : LDA 7, 0(6) ;  Return to caller
338 : LDA 3, 4(5) ; Base of callee frame (stable)
339 : LD 1, 1(5) ;  Load parameter 'n' into R1
340 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
341 : LDA 3, 3(5) ; Base of callee frame (stable)
342 : LD 1, 1(5) ;  Load parameter 'n' into R1
343 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
344 : LDA 6, 348(0) ; Return address
345 : ST 6, 0(3) ; Store return in callee frame (via R3)
346 : ADD 5, 3, 0 ; Push callee frame
347 : LDA 7, 504(0) ; Call length
348 : LD 1, 2(5) ;  Load function result
349 : LDC 2, 3(0) ;  Caller frame size
350 : SUB 5, 5, 2 ;  Pop back to caller
351 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(3) ; Store return in callee frame (via R3)
354 : ADD 5, 3, 0 ; Push callee frame
355 : LDA 7, 362(0) ; Call isExcellentSwitch
356 : LD 1, 3(5) ;  Load function result
357 : LDC 2, 4(0) ;  Caller frame size
358 : SUB 5, 5, 2 ;  Pop back to caller
359 : ST 1, 2(5) ;  Store function result into stack frame
360 : LD 6, 0(5) ;  Load return address
361 : LDA 7, 0(6) ;  Return to caller
362 : LDA 3, 3(5) ; Base of callee frame (stable)
363 : LD 1, 2(5) ;  Load parameter 'length' into R1
364 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
365 : LDA 6, 369(0) ; Return address
366 : ST 6, 0(3) ; Store return in callee frame (via R3)
367 : ADD 5, 3, 0 ; Push callee frame
368 : LDA 7, 753(0) ; Call ODD
369 : LD 1, 2(5) ;  Load function result
370 : LDC 2, 3(0) ;  Caller frame size
371 : SUB 5, 5, 2 ;  Pop back to caller
372 : JEQ 1, 375(0) ;  If condition is false, jump to ELSE
373 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
374 : LDA 7, 414(0) ;  Skip ELSE block
375 : LDA 3, 4(5) ; Base of callee frame (stable)
376 : LDA 3, 3(5) ; Base of callee frame (stable)
377 : LD 1, 1(5) ;  Load parameter 'n' into R1
378 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
379 : LDA 6, 383(0) ; Return address
380 : ST 6, 0(3) ; Store return in callee frame (via R3)
381 : ADD 5, 3, 0 ; Push callee frame
382 : LDA 7, 472(0) ; Call a
383 : LD 1, 2(5) ;  Load function result
384 : LDC 2, 3(0) ;  Caller frame size
385 : SUB 5, 5, 2 ;  Pop back to caller
386 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
387 : LDA 3, 3(5) ; Base of callee frame (stable)
388 : LD 1, 1(5) ;  Load parameter 'n' into R1
389 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
390 : LDA 6, 394(0) ; Return address
391 : ST 6, 0(3) ; Store return in callee frame (via R3)
392 : ADD 5, 3, 0 ; Push callee frame
393 : LDA 7, 434(0) ; Call b
394 : LD 1, 2(5) ;  Load function result
395 : LDC 2, 3(0) ;  Caller frame size
396 : SUB 5, 5, 2 ;  Pop back to caller
397 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
398 : LDA 6, 402(0) ; Return address
399 : ST 6, 0(3) ; Store return in callee frame (via R3)
400 : ADD 5, 3, 0 ; Push callee frame
401 : LDA 7, 417(0) ; Call excellentDiff
402 : LD 1, 3(5) ;  Load function result
403 : LDC 2, 4(0) ;  Caller frame size
404 : SUB 5, 5, 2 ;  Pop back to caller
405 : ADD 3, 1, 0 ;  Move right operand to register 3
406 : LD 1, 1(5) ;  Load parameter 'n' into R1
407 : ADD 2, 1, 0 ;  Move left operand to register 2
408 : ADD 1, 3, 0 ;  Move right operand to register 1
409 : SUB 1, 2, 1 ;  left - right for equality check
410 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
411 : LDC 1, 0(0) ;  false
412 : LDA 7, 1(7) ;  skip setting true
413 : LDC 1, 1(0) ;  true
414 : ST 1, 3(5) ;  Store function result into stack frame
415 : LD 6, 0(5) ;  Load return address
416 : LDA 7, 0(6) ;  Return to caller
417 : LD 1, 2(5) ;  Load parameter 'b' into R1
418 : ADD 3, 1, 0 ;  Stash right operand in R3
419 : LD 1, 2(5) ;  Load parameter 'b' into R1
420 : ADD 2, 1, 0 ;  Move left operand to register 2
421 : ADD 1, 3, 0 ;  Restore right operand from R3
422 : MUL 1, 2, 1 ;  R1 = left * right
423 : ADD 2, 1, 0 ;  Move left operand to register 2
424 : LD 1, 1(5) ;  Load parameter 'a' into R1
425 : ADD 3, 1, 0 ;  Stash right operand in R3
426 : LD 1, 1(5) ;  Load parameter 'a' into R1
427 : ADD 2, 1, 0 ;  Move left operand to register 2
428 : ADD 1, 3, 0 ;  Restore right operand from R3
429 : MUL 1, 2, 1 ;  R1 = left * right
430 : SUB 1, 2, 1 ;  R1 = left - right
431 : ST 1, 3(5) ;  Store function result into stack frame
432 : LD 6, 0(5) ;  Load return address
433 : LDA 7, 0(6) ;  Return to caller
434 : LDA 3, 4(5) ; Base of callee frame (stable)
435 : LD 1, 1(5) ;  Load parameter 'n' into R1
436 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
437 : LDA 3, 4(5) ; Base of callee frame (stable)
438 : LDC 1, 10(0) ;  Load integer-literal value into register 1
439 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
440 : LDA 3, 3(5) ; Base of callee frame (stable)
441 : LD 1, 1(5) ;  Load parameter 'n' into R1
442 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
443 : LDA 6, 447(0) ; Return address
444 : ST 6, 0(3) ; Store return in callee frame (via R3)
445 : ADD 5, 3, 0 ; Push callee frame
446 : LDA 7, 504(0) ; Call length
447 : LD 1, 2(5) ;  Load function result
448 : LDC 2, 3(0) ;  Caller frame size
449 : SUB 5, 5, 2 ;  Pop back to caller
450 : ADD 2, 1, 0 ;  Move left operand to register 2
451 : LDC 1, 2(0) ;  Load integer-literal value into register 1
452 : DIV 1, 2, 1 ;  R1 = left / right
453 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
454 : LDA 6, 458(0) ; Return address
455 : ST 6, 0(3) ; Store return in callee frame (via R3)
456 : ADD 5, 3, 0 ; Push callee frame
457 : LDA 7, 797(0) ; Call EXP
458 : LD 1, 3(5) ;  Load function result
459 : LDC 2, 4(0) ;  Caller frame size
460 : SUB 5, 5, 2 ;  Pop back to caller
461 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
462 : LDA 6, 466(0) ; Return address
463 : ST 6, 0(3) ; Store return in callee frame (via R3)
464 : ADD 5, 3, 0 ; Push callee frame
465 : LDA 7, 835(0) ; Call MOD
466 : LD 1, 3(5) ;  Load function result
467 : LDC 2, 4(0) ;  Caller frame size
468 : SUB 5, 5, 2 ;  Pop back to caller
469 : ST 1, 2(5) ;  Store function result into stack frame
470 : LD 6, 0(5) ;  Load return address
471 : LDA 7, 0(6) ;  Return to caller
472 : LDA 3, 4(5) ; Base of callee frame (stable)
473 : LDC 1, 10(0) ;  Load integer-literal value into register 1
474 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
475 : LDA 3, 3(5) ; Base of callee frame (stable)
476 : LD 1, 1(5) ;  Load parameter 'n' into R1
477 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
478 : LDA 6, 482(0) ; Return address
479 : ST 6, 0(3) ; Store return in callee frame (via R3)
480 : ADD 5, 3, 0 ; Push callee frame
481 : LDA 7, 504(0) ; Call length
482 : LD 1, 2(5) ;  Load function result
483 : LDC 2, 3(0) ;  Caller frame size
484 : SUB 5, 5, 2 ;  Pop back to caller
485 : ADD 2, 1, 0 ;  Move left operand to register 2
486 : LDC 1, 2(0) ;  Load integer-literal value into register 1
487 : DIV 1, 2, 1 ;  R1 = left / right
488 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
489 : LDA 6, 493(0) ; Return address
490 : ST 6, 0(3) ; Store return in callee frame (via R3)
491 : ADD 5, 3, 0 ; Push callee frame
492 : LDA 7, 797(0) ; Call EXP
493 : LD 1, 3(5) ;  Load function result
494 : LDC 2, 4(0) ;  Caller frame size
495 : SUB 5, 5, 2 ;  Pop back to caller
496 : ADD 3, 1, 0 ;  Move right operand to register 3
497 : LD 1, 1(5) ;  Load parameter 'n' into R1
498 : ADD 2, 1, 0 ;  Move left operand to register 2
499 : ADD 1, 3, 0 ;  Move right operand to register 1
500 : DIV 1, 2, 1 ;  R1 = left / right
501 : ST 1, 2(5) ;  Store function result into stack frame
502 : LD 6, 0(5) ;  Load return address
503 : LDA 7, 0(6) ;  Return to caller
504 : LDC 1, 10(0) ;  Load integer-literal value into register 1
505 : ADD 3, 1, 0 ;  Stash right operand in R3
506 : LD 1, 1(5) ;  Load parameter 'n' into R1
507 : ADD 2, 1, 0 ;  Move left operand to register 2
508 : ADD 1, 3, 0 ;  Restore right operand from R3
509 : SUB 1, 2, 1 ;  left - right for less-than check
510 : JLT 1, 2(7) ;  If R1 < 0, jump to true
511 : LDC 1, 0(0) ;  false
512 : LDA 7, 1(7) ;  skip setting true
513 : LDC 1, 1(0) ;  true
514 : JEQ 1, 517(0) ;  If condition is false, jump to ELSE
515 : LDC 1, 1(0) ;  Load integer-literal value into register 1
516 : LDA 7, 537(0) ;  Skip ELSE block
517 : LDA 3, 3(5) ; Base of callee frame (stable)
518 : LDC 1, 10(0) ;  Load integer-literal value into register 1
519 : ADD 3, 1, 0 ;  Stash right operand in R3
520 : LD 1, 1(5) ;  Load parameter 'n' into R1
521 : ADD 2, 1, 0 ;  Move left operand to register 2
522 : ADD 1, 3, 0 ;  Restore right operand from R3
523 : DIV 1, 2, 1 ;  R1 = left / right
524 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
525 : LDA 6, 529(0) ; Return address
526 : ST 6, 0(3) ; Store return in callee frame (via R3)
527 : ADD 5, 3, 0 ; Push callee frame
528 : LDA 7, 504(0) ; Call length
529 : LD 1, 2(5) ;  Load function result
530 : LDC 2, 3(0) ;  Caller frame size
531 : SUB 5, 5, 2 ;  Pop back to caller
532 : ADD 3, 1, 0 ;  Move right operand to register 3
533 : LDC 1, 1(0) ;  Load integer-literal value into register 1
534 : ADD 2, 1, 0 ;  Move left operand to register 2
535 : ADD 1, 3, 0 ;  Move right operand to register 1
536 : ADD 1, 2, 1 ;  R1 = left + right
537 : ST 1, 2(5) ;  Store function result into stack frame
538 : LD 6, 0(5) ;  Load return address
539 : LDA 7, 0(6) ;  Return to caller
540 : LD 1, 1(5) ;  Load parameter 'r' into R1
541 : ADD 3, 1, 0 ;  Stash right operand in R3
542 : LD 1, 1(5) ;  Load parameter 'r' into R1
543 : ADD 2, 1, 0 ;  Move left operand to register 2
544 : ADD 1, 3, 0 ;  Restore right operand from R3
545 : MUL 1, 2, 1 ;  R1 = left * right
546 : ADD 3, 1, 0 ;  Move right operand to register 3
547 : LD 1, 2(5) ;  Load parameter 'n' into R1
548 : ADD 2, 1, 0 ;  Move left operand to register 2
549 : ADD 1, 3, 0 ;  Move right operand to register 1
550 : SUB 1, 2, 1 ;  left - right for equality check
551 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
552 : LDC 1, 0(0) ;  false
553 : LDA 7, 1(7) ;  skip setting true
554 : LDC 1, 1(0) ;  true
555 : ST 1, 3(5) ;  Store function result into stack frame
556 : LD 6, 0(5) ;  Load return address
557 : LDA 7, 0(6) ;  Return to caller
558 : LDC 1, 2(0) ;  Load integer-literal value into register 1
559 : ADD 3, 1, 0 ;  Stash right operand in R3
560 : LD 1, 1(5) ;  Load parameter 'n' into R1
561 : ADD 2, 1, 0 ;  Move left operand to register 2
562 : ADD 1, 3, 0 ;  Restore right operand from R3
563 : DIV 1, 2, 1 ;  R1 = left / right
564 : ADD 3, 1, 0 ;  Move right operand to register 3
565 : LDC 1, 2(0) ;  Load integer-literal value into register 1
566 : ADD 2, 1, 0 ;  Move left operand to register 2
567 : ADD 1, 3, 0 ;  Move right operand to register 1
568 : MUL 1, 2, 1 ;  R1 = left * right
569 : ADD 3, 1, 0 ;  Move right operand to register 3
570 : LD 1, 1(5) ;  Load parameter 'n' into R1
571 : ADD 2, 1, 0 ;  Move left operand to register 2
572 : ADD 1, 3, 0 ;  Move right operand to register 1
573 : SUB 1, 2, 1 ;  left - right for equality check
574 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
575 : LDC 1, 0(0) ;  false
576 : LDA 7, 1(7) ;  skip setting true
577 : LDC 1, 1(0) ;  true
578 : ST 1, 2(5) ;  Store function result into stack frame
579 : LD 6, 0(5) ;  Load return address
580 : LDA 7, 0(6) ;  Return to caller
581 : LDA 3, 4(5) ; Base of callee frame (stable)
582 : LD 1, 4(5) ;  Load parameter 'mid' into R1
583 : ADD 3, 1, 0 ;  Stash right operand in R3
584 : LD 1, 4(5) ;  Load parameter 'mid' into R1
585 : ADD 2, 1, 0 ;  Move left operand to register 2
586 : ADD 1, 3, 0 ;  Restore right operand from R3
587 : MUL 1, 2, 1 ;  R1 = left * right
588 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
589 : LD 1, 1(5) ;  Load parameter 'n' into R1
590 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
591 : LDA 6, 595(0) ; Return address
592 : ST 6, 0(3) ; Store return in callee frame (via R3)
593 : ADD 5, 3, 0 ; Push callee frame
594 : LDA 7, 728(0) ; Call LE
595 : LD 1, 3(5) ;  Load function result
596 : LDC 2, 4(0) ;  Caller frame size
597 : SUB 5, 5, 2 ;  Pop back to caller
598 : JEQ 1, 614(0) ;  If condition is false, jump to ELSE
599 : LDA 3, 5(5) ; Base of callee frame (stable)
600 : LD 1, 1(5) ;  Load parameter 'n' into R1
601 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
602 : LD 1, 4(5) ;  Load parameter 'mid' into R1
603 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
604 : LD 1, 3(5) ;  Load parameter 'high' into R1
605 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
606 : LDA 6, 610(0) ; Return address
607 : ST 6, 0(3) ; Store return in callee frame (via R3)
608 : ADD 5, 3, 0 ; Push callee frame
609 : LDA 7, 631(0) ; Call SQRTSEARCH
610 : LD 1, 4(5) ;  Load function result
611 : LDC 2, 5(0) ;  Caller frame size
612 : SUB 5, 5, 2 ;  Pop back to caller
613 : LDA 7, 628(0) ;  Skip ELSE block
614 : LDA 3, 5(5) ; Base of callee frame (stable)
615 : LD 1, 1(5) ;  Load parameter 'n' into R1
616 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
617 : LD 1, 2(5) ;  Load parameter 'low' into R1
618 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
619 : LD 1, 4(5) ;  Load parameter 'mid' into R1
620 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
621 : LDA 6, 625(0) ; Return address
622 : ST 6, 0(3) ; Store return in callee frame (via R3)
623 : ADD 5, 3, 0 ; Push callee frame
624 : LDA 7, 631(0) ; Call SQRTSEARCH
625 : LD 1, 4(5) ;  Load function result
626 : LDC 2, 5(0) ;  Caller frame size
627 : SUB 5, 5, 2 ;  Pop back to caller
628 : ST 1, 5(5) ;  Store function result into stack frame
629 : LD 6, 0(5) ;  Load return address
630 : LDA 7, 0(6) ;  Return to caller
631 : LDA 3, 4(5) ; Base of callee frame (stable)
632 : LD 1, 3(5) ;  Load parameter 'high' into R1
633 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
634 : LDC 1, 1(0) ;  Load integer-literal value into register 1
635 : ADD 3, 1, 0 ;  Stash right operand in R3
636 : LD 1, 2(5) ;  Load parameter 'low' into R1
637 : ADD 2, 1, 0 ;  Move left operand to register 2
638 : ADD 1, 3, 0 ;  Restore right operand from R3
639 : ADD 1, 2, 1 ;  R1 = left + right
640 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
641 : LDA 6, 645(0) ; Return address
642 : ST 6, 0(3) ; Store return in callee frame (via R3)
643 : ADD 5, 3, 0 ; Push callee frame
644 : LDA 7, 728(0) ; Call LE
645 : LD 1, 3(5) ;  Load function result
646 : LDC 2, 4(0) ;  Caller frame size
647 : SUB 5, 5, 2 ;  Pop back to caller
648 : JEQ 1, 684(0) ;  If condition is false, jump to ELSE
649 : LDA 3, 4(5) ; Base of callee frame (stable)
650 : LD 1, 2(5) ;  Load parameter 'low' into R1
651 : ADD 3, 1, 0 ;  Stash right operand in R3
652 : LD 1, 2(5) ;  Load parameter 'low' into R1
653 : ADD 2, 1, 0 ;  Move left operand to register 2
654 : ADD 1, 3, 0 ;  Restore right operand from R3
655 : MUL 1, 2, 1 ;  R1 = left * right
656 : ADD 3, 1, 0 ;  Move right operand to register 3
657 : LD 1, 1(5) ;  Load parameter 'n' into R1
658 : ADD 2, 1, 0 ;  Move left operand to register 2
659 : ADD 1, 3, 0 ;  Move right operand to register 1
660 : SUB 1, 2, 1 ;  R1 = left - right
661 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
662 : LD 1, 3(5) ;  Load parameter 'high' into R1
663 : ADD 3, 1, 0 ;  Stash right operand in R3
664 : LD 1, 3(5) ;  Load parameter 'high' into R1
665 : ADD 2, 1, 0 ;  Move left operand to register 2
666 : ADD 1, 3, 0 ;  Restore right operand from R3
667 : MUL 1, 2, 1 ;  R1 = left * right
668 : ADD 2, 1, 0 ;  Move left operand to register 2
669 : LD 1, 1(5) ;  Load parameter 'n' into R1
670 : SUB 1, 2, 1 ;  R1 = left - right
671 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
672 : LDA 6, 676(0) ; Return address
673 : ST 6, 0(3) ; Store return in callee frame (via R3)
674 : ADD 5, 3, 0 ; Push callee frame
675 : LDA 7, 728(0) ; Call LE
676 : LD 1, 3(5) ;  Load function result
677 : LDC 2, 4(0) ;  Caller frame size
678 : SUB 5, 5, 2 ;  Pop back to caller
679 : JEQ 1, 682(0) ;  If condition is false, jump to ELSE
680 : LD 1, 2(5) ;  Load parameter 'low' into R1
681 : LDA 7, 683(0) ;  Skip ELSE block
682 : LD 1, 3(5) ;  Load parameter 'high' into R1
683 : LDA 7, 708(0) ;  Skip ELSE block
684 : LDA 3, 6(5) ; Base of callee frame (stable)
685 : LD 1, 1(5) ;  Load parameter 'n' into R1
686 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
687 : LD 1, 2(5) ;  Load parameter 'low' into R1
688 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
689 : LD 1, 3(5) ;  Load parameter 'high' into R1
690 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
691 : LD 1, 3(5) ;  Load parameter 'high' into R1
692 : ADD 3, 1, 0 ;  Stash right operand in R3
693 : LD 1, 2(5) ;  Load parameter 'low' into R1
694 : ADD 2, 1, 0 ;  Move left operand to register 2
695 : ADD 1, 3, 0 ;  Restore right operand from R3
696 : ADD 1, 2, 1 ;  R1 = left + right
697 : ADD 2, 1, 0 ;  Move left operand to register 2
698 : LDC 1, 2(0) ;  Load integer-literal value into register 1
699 : DIV 1, 2, 1 ;  R1 = left / right
700 : ST 1, 4(3) ; Store argument 3 in callee (via R3)
701 : LDA 6, 705(0) ; Return address
702 : ST 6, 0(3) ; Store return in callee frame (via R3)
703 : ADD 5, 3, 0 ; Push callee frame
704 : LDA 7, 581(0) ; Call SQRTSPLIT
705 : LD 1, 5(5) ;  Load function result
706 : LDC 2, 6(0) ;  Caller frame size
707 : SUB 5, 5, 2 ;  Pop back to caller
708 : ST 1, 4(5) ;  Store function result into stack frame
709 : LD 6, 0(5) ;  Load return address
710 : LDA 7, 0(6) ;  Return to caller
711 : LDA 3, 5(5) ; Base of callee frame (stable)
712 : LD 1, 1(5) ;  Load parameter 'n' into R1
713 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
714 : LDC 1, 0(0) ;  Load integer-literal value into register 1
715 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
716 : LD 1, 1(5) ;  Load parameter 'n' into R1
717 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
718 : LDA 6, 722(0) ; Return address
719 : ST 6, 0(3) ; Store return in callee frame (via R3)
720 : ADD 5, 3, 0 ; Push callee frame
721 : LDA 7, 631(0) ; Call SQRTSEARCH
722 : LD 1, 4(5) ;  Load function result
723 : LDC 2, 5(0) ;  Caller frame size
724 : SUB 5, 5, 2 ;  Pop back to caller
725 : ST 1, 2(5) ;  Store function result into stack frame
726 : LD 6, 0(5) ;  Load return address
727 : LDA 7, 0(6) ;  Return to caller
728 : LD 1, 2(5) ;  Load parameter 'q' into R1
729 : ADD 3, 1, 0 ;  Stash right operand in R3
730 : LD 1, 1(5) ;  Load parameter 'p' into R1
731 : ADD 2, 1, 0 ;  Move left operand to register 2
732 : ADD 1, 3, 0 ;  Restore right operand from R3
733 : SUB 1, 2, 1 ;  left - right for less-than check
734 : JLT 1, 2(7) ;  If R1 < 0, jump to true
735 : LDC 1, 0(0) ;  false
736 : LDA 7, 1(7) ;  skip setting true
737 : LDC 1, 1(0) ;  true
738 : ADD 2, 1, 0 ;  Move left operand to register 2
739 : LD 1, 2(5) ;  Load parameter 'q' into R1
740 : ADD 3, 1, 0 ;  Stash right operand in R3
741 : LD 1, 1(5) ;  Load parameter 'p' into R1
742 : ADD 2, 1, 0 ;  Move left operand to register 2
743 : ADD 1, 3, 0 ;  Restore right operand from R3
744 : SUB 1, 2, 1 ;  left - right for equality check
745 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
746 : LDC 1, 0(0) ;  false
747 : LDA 7, 1(7) ;  skip setting true
748 : LDC 1, 1(0) ;  true
749 : ADD 1, 2, 1 ;  R1 = left OR right
750 : ST 1, 3(5) ;  Store function result into stack frame
751 : LD 6, 0(5) ;  Load return address
752 : LDA 7, 0(6) ;  Return to caller
753 : LD 1, 1(5) ;  Load parameter 'n' into R1
754 : ADD 3, 1, 0 ;  Stash right operand in R3
755 : LDC 1, 0(0) ;  Load integer-literal value into register 1
756 : ADD 2, 1, 0 ;  Move left operand to register 2
757 : ADD 1, 3, 0 ;  Restore right operand from R3
758 : SUB 1, 2, 1 ;  left - right for less-than check
759 : JLT 1, 2(7) ;  If R1 < 0, jump to true
760 : LDC 1, 0(0) ;  false
761 : LDA 7, 1(7) ;  skip setting true
762 : LDC 1, 1(0) ;  true
763 : JEQ 1, 783(0) ;  If condition is false, jump to ELSE
764 : LDC 1, 2(0) ;  Load integer-literal value into register 1
765 : ADD 3, 1, 0 ;  Stash right operand in R3
766 : LD 1, 1(5) ;  Load parameter 'n' into R1
767 : ADD 2, 1, 0 ;  Move left operand to register 2
768 : ADD 1, 3, 0 ;  Restore right operand from R3
769 : DIV 1, 2, 1 ;  R1 = left / right
770 : ADD 3, 1, 0 ;  Move right operand to register 3
771 : LDC 1, 2(0) ;  Load integer-literal value into register 1
772 : ADD 2, 1, 0 ;  Move left operand to register 2
773 : ADD 1, 3, 0 ;  Move right operand to register 1
774 : MUL 1, 2, 1 ;  R1 = left * right
775 : ADD 2, 1, 0 ;  Move left operand to register 2
776 : LD 1, 1(5) ;  Load parameter 'n' into R1
777 : SUB 1, 2, 1 ;  left - right for less-than check
778 : JLT 1, 2(7) ;  If R1 < 0, jump to true
779 : LDC 1, 0(0) ;  false
780 : LDA 7, 1(7) ;  skip setting true
781 : LDC 1, 1(0) ;  true
782 : LDA 7, 794(0) ;  Skip ELSE block
783 : LDA 3, 3(5) ; Base of callee frame (stable)
784 : LD 1, 1(5) ;  Load parameter 'n' into R1
785 : SUB 1, 0, 1 ;  Negate value in R1
786 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
787 : LDA 6, 791(0) ; Return address
788 : ST 6, 0(3) ; Store return in callee frame (via R3)
789 : ADD 5, 3, 0 ; Push callee frame
790 : LDA 7, 753(0) ; Call ODD
791 : LD 1, 2(5) ;  Load function result
792 : LDC 2, 3(0) ;  Caller frame size
793 : SUB 5, 5, 2 ;  Pop back to caller
794 : ST 1, 2(5) ;  Store function result into stack frame
795 : LD 6, 0(5) ;  Load return address
796 : LDA 7, 0(6) ;  Return to caller
797 : LDC 1, 0(0) ;  Load integer-literal value into register 1
798 : ADD 3, 1, 0 ;  Stash right operand in R3
799 : LD 1, 2(5) ;  Load parameter 'n' into R1
800 : ADD 2, 1, 0 ;  Move left operand to register 2
801 : ADD 1, 3, 0 ;  Restore right operand from R3
802 : SUB 1, 2, 1 ;  left - right for equality check
803 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
804 : LDC 1, 0(0) ;  false
805 : LDA 7, 1(7) ;  skip setting true
806 : LDC 1, 1(0) ;  true
807 : JEQ 1, 810(0) ;  If condition is false, jump to ELSE
808 : LDC 1, 1(0) ;  Load integer-literal value into register 1
809 : LDA 7, 832(0) ;  Skip ELSE block
810 : LDA 3, 4(5) ; Base of callee frame (stable)
811 : LD 1, 1(5) ;  Load parameter 'm' into R1
812 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
813 : LDC 1, 1(0) ;  Load integer-literal value into register 1
814 : ADD 3, 1, 0 ;  Stash right operand in R3
815 : LD 1, 2(5) ;  Load parameter 'n' into R1
816 : ADD 2, 1, 0 ;  Move left operand to register 2
817 : ADD 1, 3, 0 ;  Restore right operand from R3
818 : SUB 1, 2, 1 ;  R1 = left - right
819 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
820 : LDA 6, 824(0) ; Return address
821 : ST 6, 0(3) ; Store return in callee frame (via R3)
822 : ADD 5, 3, 0 ; Push callee frame
823 : LDA 7, 797(0) ; Call EXP
824 : LD 1, 3(5) ;  Load function result
825 : LDC 2, 4(0) ;  Caller frame size
826 : SUB 5, 5, 2 ;  Pop back to caller
827 : ADD 3, 1, 0 ;  Move right operand to register 3
828 : LD 1, 1(5) ;  Load parameter 'm' into R1
829 : ADD 2, 1, 0 ;  Move left operand to register 2
830 : ADD 1, 3, 0 ;  Move right operand to register 1
831 : MUL 1, 2, 1 ;  R1 = left * right
832 : ST 1, 3(5) ;  Store function result into stack frame
833 : LD 6, 0(5) ;  Load return address
834 : LDA 7, 0(6) ;  Return to caller
835 : LD 1, 2(5) ;  Load parameter 'n' into R1
836 : ADD 3, 1, 0 ;  Stash right operand in R3
837 : LD 1, 1(5) ;  Load parameter 'm' into R1
838 : ADD 2, 1, 0 ;  Move left operand to register 2
839 : ADD 1, 3, 0 ;  Restore right operand from R3
840 : DIV 1, 2, 1 ;  R1 = left / right
841 : ADD 3, 1, 0 ;  Move right operand to register 3
842 : LD 1, 2(5) ;  Load parameter 'n' into R1
843 : ADD 2, 1, 0 ;  Move left operand to register 2
844 : ADD 1, 3, 0 ;  Move right operand to register 1
845 : MUL 1, 2, 1 ;  R1 = left * right
846 : ADD 3, 1, 0 ;  Move right operand to register 3
847 : LD 1, 1(5) ;  Load parameter 'm' into R1
848 : ADD 2, 1, 0 ;  Move left operand to register 2
849 : ADD 1, 3, 0 ;  Move right operand to register 1
850 : SUB 1, 2, 1 ;  R1 = left - right
851 : ST 1, 3(5) ;  Store function result into stack frame
852 : LD 6, 0(5) ;  Load return address
853 : LDA 7, 0(6) ;  Return to caller
