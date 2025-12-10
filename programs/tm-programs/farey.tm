0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 1(5) ; Load parameter 'xNum' into R1
17 : LDA 4, 5(5) ; Recompute callee base from caller size
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LD 1, 2(5) ; Load parameter 'xDen' into R1
20 : LDA 4, 5(5) ; Recompute callee base from caller size
21 : ST 1, 2(4) ; Store argument 1 in callee frame
22 : LD 1, 3(5) ; Load parameter 'N' into R1
23 : LDA 4, 5(5) ; Recompute callee base from caller size
24 : ST 1, 3(4) ; Store argument 2 in callee frame
25 : LDA 4, 5(5) ; Recompute callee base from caller size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 591(0) ; Call fareyNum
30 : LD 1, 4(5) ; Load callee result into R1
31 : LDC 2, 5(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 5(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 13(0) ; Call built-in print
38 : LDC 2, 3(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : LD 1, 1(5) ; Load parameter 'xNum' into R1
41 : LDA 4, 5(5) ; Recompute callee base from caller size
42 : ST 1, 1(4) ; Store argument 0 in callee frame
43 : LD 1, 2(5) ; Load parameter 'xDen' into R1
44 : LDA 4, 5(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LD 1, 3(5) ; Load parameter 'N' into R1
47 : LDA 4, 5(5) ; Recompute callee base from caller size
48 : ST 1, 3(4) ; Store argument 2 in callee frame
49 : LDA 4, 5(5) ; Recompute callee base from caller size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return address into callee frame
52 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
53 : LDA 7, 441(0) ; Call fareyDen
54 : LD 1, 4(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 4(5) ; Store result into caller’s return slot
58 : LDC 5, 4(0) ; Reset R5 to main frame base (DMEM[N+1])
59 : LD 1, 4(5) ; Load main return value into R1
60 : LD 6, 0(5) ; Load root return address from main frame
61 : LDA 7, 0(6) ; Return from main to runtime epilogue
62 : LD 1, 1(5) ; Load parameter 'x' into R1
63 : ST 1, 4(5) ; Spill left operand at depth 0
64 : LD 1, 2(5) ; Load parameter 'y' into R1
65 : LD 2, 4(5) ; Restore left operand from depth 0
66 : SUB 1, 2, 1 ; left - right for less-than check
67 : JLT 1, 2(7) ; If R1 < 0, jump to true
68 : LDC 1, 0(0) ; false
69 : LDA 7, 1(7) ; skip setting true
70 : LDC 1, 1(0) ; true
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LD 1, 1(5) ; Load parameter 'x' into R1
73 : ST 1, 5(5) ; Spill left operand at depth 1
74 : LD 1, 2(5) ; Load parameter 'y' into R1
75 : LD 2, 5(5) ; Restore left operand from depth 1
76 : SUB 1, 2, 1 ; left - right for equality check
77 : JEQ 1, 2(7) ; If R1 == 0, jump to true
78 : LDC 1, 0(0) ; false
79 : LDA 7, 1(7) ; skip setting true
80 : LDC 1, 1(0) ; true
81 : LD 2, 4(5) ; Restore left operand from depth 0
82 : ADD 1, 2, 1 ; R1 = left OR right
83 : LDC 2, 1(0) ; Load 1 into R2
84 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
85 : ST 1, 3(5) ; Store function result into frame return slot
86 : LD 6, 0(5) ; Load return address
87 : LDA 7, 0(6) ; Return to caller
88 : LD 1, 1(5) ; Load parameter 'x' into R1
89 : ST 1, 6(5) ; Spill left operand at depth 0
90 : LD 1, 4(5) ; Load parameter 'yd' into R1
91 : LD 2, 6(5) ; Restore left operand from depth 0
92 : MUL 1, 2, 1 ; R1 = left * right
93 : LDA 4, 7(5) ; Recompute callee base from caller size
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LD 1, 3(5) ; Load parameter 'y' into R1
96 : ST 1, 6(5) ; Spill left operand at depth 0
97 : LD 1, 2(5) ; Load parameter 'xd' into R1
98 : LD 2, 6(5) ; Restore left operand from depth 0
99 : MUL 1, 2, 1 ; R1 = left * right
100 : LDA 4, 7(5) ; Recompute callee base from caller size
101 : ST 1, 2(4) ; Store argument 1 in callee frame
102 : LDA 4, 7(5) ; Recompute callee base from caller size
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return address into callee frame
105 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
106 : LDA 7, 62(0) ; Call greater
107 : LD 1, 3(5) ; Load callee result into R1
108 : LDC 2, 6(0) ; Callee frame size
109 : SUB 5, 5, 2 ; Pop back to caller
110 : ST 1, 5(5) ; Store function result into frame return slot
111 : LD 6, 0(5) ; Load return address
112 : LDA 7, 0(6) ; Return to caller
113 : LD 1, 1(5) ; Load parameter 'x' into R1
114 : ST 1, 6(5) ; Spill left operand at depth 0
115 : LD 1, 4(5) ; Load parameter 'yd' into R1
116 : LD 2, 6(5) ; Restore left operand from depth 0
117 : MUL 1, 2, 1 ; R1 = left * right
118 : ST 1, 6(5) ; Spill left operand at depth 0
119 : LD 1, 3(5) ; Load parameter 'y' into R1
120 : ST 1, 7(5) ; Spill left operand at depth 1
121 : LD 1, 2(5) ; Load parameter 'xd' into R1
122 : LD 2, 7(5) ; Restore left operand from depth 1
123 : MUL 1, 2, 1 ; R1 = left * right
124 : LD 2, 6(5) ; Restore left operand from depth 0
125 : SUB 1, 2, 1 ; left - right for equality check
126 : JEQ 1, 2(7) ; If R1 == 0, jump to true
127 : LDC 1, 0(0) ; false
128 : LDA 7, 1(7) ; skip setting true
129 : LDC 1, 1(0) ; true
130 : ST 1, 5(5) ; Store function result into frame return slot
131 : LD 6, 0(5) ; Load return address
132 : LDA 7, 0(6) ; Return to caller
133 : LD 1, 6(5) ; Load parameter 'b' into R1
134 : LDA 4, 11(5) ; Recompute callee base from caller size
135 : ST 1, 1(4) ; Store argument 0 in callee frame
136 : LD 1, 4(5) ; Load parameter 'N' into R1
137 : LDA 4, 11(5) ; Recompute callee base from caller size
138 : ST 1, 2(4) ; Store argument 1 in callee frame
139 : LDA 4, 11(5) ; Recompute callee base from caller size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return address into callee frame
142 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
143 : LDA 7, 62(0) ; Call greater
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 6(0) ; Callee frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : ST 1, 10(5) ; Spill left operand at depth 0
148 : LD 1, 8(5) ; Load parameter 'd' into R1
149 : LDA 4, 11(5) ; Recompute callee base from caller size
150 : ST 1, 1(4) ; Store argument 0 in callee frame
151 : LD 1, 4(5) ; Load parameter 'N' into R1
152 : LDA 4, 11(5) ; Recompute callee base from caller size
153 : ST 1, 2(4) ; Store argument 1 in callee frame
154 : LDA 4, 11(5) ; Recompute callee base from caller size
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return address into callee frame
157 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
158 : LDA 7, 62(0) ; Call greater
159 : LD 1, 3(5) ; Load callee result into R1
160 : LDC 2, 6(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop back to caller
162 : LD 2, 10(5) ; Restore left operand from depth 0
163 : ADD 1, 2, 1 ; R1 = left OR right
164 : JEQ 1, 203(0) ; If condition is false, jump to ELSE
165 : LD 1, 1(5) ; Load parameter 'selector' into R1
166 : ST 1, 10(5) ; Spill left operand at depth 0
167 : LDC 1, 1(0) ; Load integer-literal into R1
168 : LD 2, 10(5) ; Restore left operand from depth 0
169 : SUB 1, 2, 1 ; left - right for equality check
170 : JEQ 1, 2(7) ; If R1 == 0, jump to true
171 : LDC 1, 0(0) ; false
172 : LDA 7, 1(7) ; skip setting true
173 : LDC 1, 1(0) ; true
174 : JEQ 1, 177(0) ; If condition is false, jump to ELSE
175 : LD 1, 5(5) ; Load parameter 'a' into R1
176 : LDA 7, 202(0) ; Skip ELSE block
177 : LD 1, 1(5) ; Load parameter 'selector' into R1
178 : ST 1, 10(5) ; Spill left operand at depth 0
179 : LDC 1, 2(0) ; Load integer-literal into R1
180 : LD 2, 10(5) ; Restore left operand from depth 0
181 : SUB 1, 2, 1 ; left - right for equality check
182 : JEQ 1, 2(7) ; If R1 == 0, jump to true
183 : LDC 1, 0(0) ; false
184 : LDA 7, 1(7) ; skip setting true
185 : LDC 1, 1(0) ; true
186 : JEQ 1, 189(0) ; If condition is false, jump to ELSE
187 : LD 1, 6(5) ; Load parameter 'b' into R1
188 : LDA 7, 202(0) ; Skip ELSE block
189 : LD 1, 1(5) ; Load parameter 'selector' into R1
190 : ST 1, 10(5) ; Spill left operand at depth 0
191 : LDC 1, 3(0) ; Load integer-literal into R1
192 : LD 2, 10(5) ; Restore left operand from depth 0
193 : SUB 1, 2, 1 ; left - right for equality check
194 : JEQ 1, 2(7) ; If R1 == 0, jump to true
195 : LDC 1, 0(0) ; false
196 : LDA 7, 1(7) ; skip setting true
197 : LDC 1, 1(0) ; true
198 : JEQ 1, 201(0) ; If condition is false, jump to ELSE
199 : LD 1, 7(5) ; Load parameter 'c' into R1
200 : LDA 7, 202(0) ; Skip ELSE block
201 : LD 1, 8(5) ; Load parameter 'd' into R1
202 : LDA 7, 396(0) ; Skip ELSE block
203 : LD 1, 2(5) ; Load parameter 'xNum' into R1
204 : LDA 4, 11(5) ; Recompute callee base from caller size
205 : ST 1, 1(4) ; Store argument 0 in callee frame
206 : LD 1, 3(5) ; Load parameter 'xDen' into R1
207 : LDA 4, 11(5) ; Recompute callee base from caller size
208 : ST 1, 2(4) ; Store argument 1 in callee frame
209 : LD 1, 5(5) ; Load parameter 'a' into R1
210 : ST 1, 10(5) ; Spill left operand at depth 0
211 : LD 1, 7(5) ; Load parameter 'c' into R1
212 : LD 2, 10(5) ; Restore left operand from depth 0
213 : ADD 1, 2, 1 ; R1 = left + right
214 : LDA 4, 11(5) ; Recompute callee base from caller size
215 : ST 1, 3(4) ; Store argument 2 in callee frame
216 : LD 1, 6(5) ; Load parameter 'b' into R1
217 : ST 1, 10(5) ; Spill left operand at depth 0
218 : LD 1, 8(5) ; Load parameter 'd' into R1
219 : LD 2, 10(5) ; Restore left operand from depth 0
220 : ADD 1, 2, 1 ; R1 = left + right
221 : LDA 4, 11(5) ; Recompute callee base from caller size
222 : ST 1, 4(4) ; Store argument 3 in callee frame
223 : LDA 4, 11(5) ; Recompute callee base from caller size
224 : LDA 6, 228(0) ; Return address
225 : ST 6, 0(4) ; Store return address into callee frame
226 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
227 : LDA 7, 113(0) ; Call fractionEqual
228 : LD 1, 5(5) ; Load callee result into R1
229 : LDC 2, 8(0) ; Callee frame size
230 : SUB 5, 5, 2 ; Pop back to caller
231 : JEQ 1, 286(0) ; If condition is false, jump to ELSE
232 : LD 1, 1(5) ; Load parameter 'selector' into R1
233 : ST 1, 10(5) ; Spill left operand at depth 0
234 : LDC 1, 1(0) ; Load integer-literal into R1
235 : LD 2, 10(5) ; Restore left operand from depth 0
236 : SUB 1, 2, 1 ; left - right for equality check
237 : JEQ 1, 2(7) ; If R1 == 0, jump to true
238 : LDC 1, 0(0) ; false
239 : LDA 7, 1(7) ; skip setting true
240 : LDC 1, 1(0) ; true
241 : JEQ 1, 248(0) ; If condition is false, jump to ELSE
242 : LD 1, 5(5) ; Load parameter 'a' into R1
243 : ST 1, 10(5) ; Spill left operand at depth 0
244 : LD 1, 7(5) ; Load parameter 'c' into R1
245 : LD 2, 10(5) ; Restore left operand from depth 0
246 : ADD 1, 2, 1 ; R1 = left + right
247 : LDA 7, 285(0) ; Skip ELSE block
248 : LD 1, 1(5) ; Load parameter 'selector' into R1
249 : ST 1, 10(5) ; Spill left operand at depth 0
250 : LDC 1, 2(0) ; Load integer-literal into R1
251 : LD 2, 10(5) ; Restore left operand from depth 0
252 : SUB 1, 2, 1 ; left - right for equality check
253 : JEQ 1, 2(7) ; If R1 == 0, jump to true
254 : LDC 1, 0(0) ; false
255 : LDA 7, 1(7) ; skip setting true
256 : LDC 1, 1(0) ; true
257 : JEQ 1, 264(0) ; If condition is false, jump to ELSE
258 : LD 1, 6(5) ; Load parameter 'b' into R1
259 : ST 1, 10(5) ; Spill left operand at depth 0
260 : LD 1, 8(5) ; Load parameter 'd' into R1
261 : LD 2, 10(5) ; Restore left operand from depth 0
262 : ADD 1, 2, 1 ; R1 = left + right
263 : LDA 7, 285(0) ; Skip ELSE block
264 : LD 1, 1(5) ; Load parameter 'selector' into R1
265 : ST 1, 10(5) ; Spill left operand at depth 0
266 : LDC 1, 3(0) ; Load integer-literal into R1
267 : LD 2, 10(5) ; Restore left operand from depth 0
268 : SUB 1, 2, 1 ; left - right for equality check
269 : JEQ 1, 2(7) ; If R1 == 0, jump to true
270 : LDC 1, 0(0) ; false
271 : LDA 7, 1(7) ; skip setting true
272 : LDC 1, 1(0) ; true
273 : JEQ 1, 280(0) ; If condition is false, jump to ELSE
274 : LD 1, 5(5) ; Load parameter 'a' into R1
275 : ST 1, 10(5) ; Spill left operand at depth 0
276 : LD 1, 7(5) ; Load parameter 'c' into R1
277 : LD 2, 10(5) ; Restore left operand from depth 0
278 : ADD 1, 2, 1 ; R1 = left + right
279 : LDA 7, 285(0) ; Skip ELSE block
280 : LD 1, 6(5) ; Load parameter 'b' into R1
281 : ST 1, 10(5) ; Spill left operand at depth 0
282 : LD 1, 8(5) ; Load parameter 'd' into R1
283 : LD 2, 10(5) ; Restore left operand from depth 0
284 : ADD 1, 2, 1 ; R1 = left + right
285 : LDA 7, 396(0) ; Skip ELSE block
286 : LD 1, 2(5) ; Load parameter 'xNum' into R1
287 : LDA 4, 11(5) ; Recompute callee base from caller size
288 : ST 1, 1(4) ; Store argument 0 in callee frame
289 : LD 1, 3(5) ; Load parameter 'xDen' into R1
290 : LDA 4, 11(5) ; Recompute callee base from caller size
291 : ST 1, 2(4) ; Store argument 1 in callee frame
292 : LD 1, 5(5) ; Load parameter 'a' into R1
293 : ST 1, 10(5) ; Spill left operand at depth 0
294 : LD 1, 7(5) ; Load parameter 'c' into R1
295 : LD 2, 10(5) ; Restore left operand from depth 0
296 : ADD 1, 2, 1 ; R1 = left + right
297 : LDA 4, 11(5) ; Recompute callee base from caller size
298 : ST 1, 3(4) ; Store argument 2 in callee frame
299 : LD 1, 6(5) ; Load parameter 'b' into R1
300 : ST 1, 10(5) ; Spill left operand at depth 0
301 : LD 1, 8(5) ; Load parameter 'd' into R1
302 : LD 2, 10(5) ; Restore left operand from depth 0
303 : ADD 1, 2, 1 ; R1 = left + right
304 : LDA 4, 11(5) ; Recompute callee base from caller size
305 : ST 1, 4(4) ; Store argument 3 in callee frame
306 : LDA 4, 11(5) ; Recompute callee base from caller size
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(4) ; Store return address into callee frame
309 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
310 : LDA 7, 88(0) ; Call fractionGreater
311 : LD 1, 5(5) ; Load callee result into R1
312 : LDC 2, 7(0) ; Callee frame size
313 : SUB 5, 5, 2 ; Pop back to caller
314 : JEQ 1, 356(0) ; If condition is false, jump to ELSE
315 : LD 1, 1(5) ; Load parameter 'selector' into R1
316 : LDA 4, 11(5) ; Recompute callee base from caller size
317 : ST 1, 1(4) ; Store argument 0 in callee frame
318 : LD 1, 2(5) ; Load parameter 'xNum' into R1
319 : LDA 4, 11(5) ; Recompute callee base from caller size
320 : ST 1, 2(4) ; Store argument 1 in callee frame
321 : LD 1, 3(5) ; Load parameter 'xDen' into R1
322 : LDA 4, 11(5) ; Recompute callee base from caller size
323 : ST 1, 3(4) ; Store argument 2 in callee frame
324 : LD 1, 4(5) ; Load parameter 'N' into R1
325 : LDA 4, 11(5) ; Recompute callee base from caller size
326 : ST 1, 4(4) ; Store argument 3 in callee frame
327 : LD 1, 5(5) ; Load parameter 'a' into R1
328 : ST 1, 10(5) ; Spill left operand at depth 0
329 : LD 1, 7(5) ; Load parameter 'c' into R1
330 : LD 2, 10(5) ; Restore left operand from depth 0
331 : ADD 1, 2, 1 ; R1 = left + right
332 : LDA 4, 11(5) ; Recompute callee base from caller size
333 : ST 1, 5(4) ; Store argument 4 in callee frame
334 : LD 1, 6(5) ; Load parameter 'b' into R1
335 : ST 1, 10(5) ; Spill left operand at depth 0
336 : LD 1, 8(5) ; Load parameter 'd' into R1
337 : LD 2, 10(5) ; Restore left operand from depth 0
338 : ADD 1, 2, 1 ; R1 = left + right
339 : LDA 4, 11(5) ; Recompute callee base from caller size
340 : ST 1, 6(4) ; Store argument 5 in callee frame
341 : LD 1, 7(5) ; Load parameter 'c' into R1
342 : LDA 4, 11(5) ; Recompute callee base from caller size
343 : ST 1, 7(4) ; Store argument 6 in callee frame
344 : LD 1, 8(5) ; Load parameter 'd' into R1
345 : LDA 4, 11(5) ; Recompute callee base from caller size
346 : ST 1, 8(4) ; Store argument 7 in callee frame
347 : LDA 4, 11(5) ; Recompute callee base from caller size
348 : LDA 6, 352(0) ; Return address
349 : ST 6, 0(4) ; Store return address into callee frame
350 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
351 : LDA 7, 133(0) ; Call whileLoopFor
352 : LD 1, 9(5) ; Load callee result into R1
353 : LDC 2, 11(0) ; Callee frame size
354 : SUB 5, 5, 2 ; Pop back to caller
355 : LDA 7, 396(0) ; Skip ELSE block
356 : LD 1, 1(5) ; Load parameter 'selector' into R1
357 : LDA 4, 11(5) ; Recompute callee base from caller size
358 : ST 1, 1(4) ; Store argument 0 in callee frame
359 : LD 1, 2(5) ; Load parameter 'xNum' into R1
360 : LDA 4, 11(5) ; Recompute callee base from caller size
361 : ST 1, 2(4) ; Store argument 1 in callee frame
362 : LD 1, 3(5) ; Load parameter 'xDen' into R1
363 : LDA 4, 11(5) ; Recompute callee base from caller size
364 : ST 1, 3(4) ; Store argument 2 in callee frame
365 : LD 1, 4(5) ; Load parameter 'N' into R1
366 : LDA 4, 11(5) ; Recompute callee base from caller size
367 : ST 1, 4(4) ; Store argument 3 in callee frame
368 : LD 1, 5(5) ; Load parameter 'a' into R1
369 : LDA 4, 11(5) ; Recompute callee base from caller size
370 : ST 1, 5(4) ; Store argument 4 in callee frame
371 : LD 1, 6(5) ; Load parameter 'b' into R1
372 : LDA 4, 11(5) ; Recompute callee base from caller size
373 : ST 1, 6(4) ; Store argument 5 in callee frame
374 : LD 1, 5(5) ; Load parameter 'a' into R1
375 : ST 1, 10(5) ; Spill left operand at depth 0
376 : LD 1, 7(5) ; Load parameter 'c' into R1
377 : LD 2, 10(5) ; Restore left operand from depth 0
378 : ADD 1, 2, 1 ; R1 = left + right
379 : LDA 4, 11(5) ; Recompute callee base from caller size
380 : ST 1, 7(4) ; Store argument 6 in callee frame
381 : LD 1, 6(5) ; Load parameter 'b' into R1
382 : ST 1, 10(5) ; Spill left operand at depth 0
383 : LD 1, 8(5) ; Load parameter 'd' into R1
384 : LD 2, 10(5) ; Restore left operand from depth 0
385 : ADD 1, 2, 1 ; R1 = left + right
386 : LDA 4, 11(5) ; Recompute callee base from caller size
387 : ST 1, 8(4) ; Store argument 7 in callee frame
388 : LDA 4, 11(5) ; Recompute callee base from caller size
389 : LDA 6, 393(0) ; Return address
390 : ST 6, 0(4) ; Store return address into callee frame
391 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
392 : LDA 7, 133(0) ; Call whileLoopFor
393 : LD 1, 9(5) ; Load callee result into R1
394 : LDC 2, 11(0) ; Callee frame size
395 : SUB 5, 5, 2 ; Pop back to caller
396 : ST 1, 9(5) ; Store function result into frame return slot
397 : LD 6, 0(5) ; Load return address
398 : LDA 7, 0(6) ; Return to caller
399 : LD 1, 3(5) ; Load parameter 'b' into R1
400 : LDA 4, 7(5) ; Recompute callee base from caller size
401 : ST 1, 1(4) ; Store argument 0 in callee frame
402 : LD 1, 1(5) ; Load parameter 'N' into R1
403 : LDA 4, 7(5) ; Recompute callee base from caller size
404 : ST 1, 2(4) ; Store argument 1 in callee frame
405 : LDA 4, 7(5) ; Recompute callee base from caller size
406 : LDA 6, 410(0) ; Return address
407 : ST 6, 0(4) ; Store return address into callee frame
408 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
409 : LDA 7, 62(0) ; Call greater
410 : LD 1, 3(5) ; Load callee result into R1
411 : LDC 2, 6(0) ; Callee frame size
412 : SUB 5, 5, 2 ; Pop back to caller
413 : JEQ 1, 416(0) ; If condition is false, jump to ELSE
414 : LD 1, 5(5) ; Load parameter 'd' into R1
415 : LDA 7, 417(0) ; Skip ELSE block
416 : LD 1, 3(5) ; Load parameter 'b' into R1
417 : ST 1, 6(5) ; Store function result into frame return slot
418 : LD 6, 0(5) ; Load return address
419 : LDA 7, 0(6) ; Return to caller
420 : LD 1, 3(5) ; Load parameter 'b' into R1
421 : LDA 4, 7(5) ; Recompute callee base from caller size
422 : ST 1, 1(4) ; Store argument 0 in callee frame
423 : LD 1, 1(5) ; Load parameter 'N' into R1
424 : LDA 4, 7(5) ; Recompute callee base from caller size
425 : ST 1, 2(4) ; Store argument 1 in callee frame
426 : LDA 4, 7(5) ; Recompute callee base from caller size
427 : LDA 6, 431(0) ; Return address
428 : ST 6, 0(4) ; Store return address into callee frame
429 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
430 : LDA 7, 62(0) ; Call greater
431 : LD 1, 3(5) ; Load callee result into R1
432 : LDC 2, 6(0) ; Callee frame size
433 : SUB 5, 5, 2 ; Pop back to caller
434 : JEQ 1, 437(0) ; If condition is false, jump to ELSE
435 : LD 1, 4(5) ; Load parameter 'c' into R1
436 : LDA 7, 438(0) ; Skip ELSE block
437 : LD 1, 2(5) ; Load parameter 'a' into R1
438 : ST 1, 6(5) ; Store function result into frame return slot
439 : LD 6, 0(5) ; Load return address
440 : LDA 7, 0(6) ; Return to caller
441 : LD 1, 3(5) ; Load parameter 'N' into R1
442 : LDA 4, 5(5) ; Recompute callee base from caller size
443 : ST 1, 1(4) ; Store argument 0 in callee frame
444 : LDC 1, 1(0) ; Load integer-literal into R1
445 : LDA 4, 5(5) ; Recompute callee base from caller size
446 : ST 1, 1(4) ; Store argument 0 in callee frame
447 : LD 1, 1(5) ; Load parameter 'xNum' into R1
448 : LDA 4, 5(5) ; Recompute callee base from caller size
449 : ST 1, 2(4) ; Store argument 1 in callee frame
450 : LD 1, 2(5) ; Load parameter 'xDen' into R1
451 : LDA 4, 5(5) ; Recompute callee base from caller size
452 : ST 1, 3(4) ; Store argument 2 in callee frame
453 : LD 1, 3(5) ; Load parameter 'N' into R1
454 : LDA 4, 5(5) ; Recompute callee base from caller size
455 : ST 1, 4(4) ; Store argument 3 in callee frame
456 : LDC 1, 0(0) ; Load integer-literal into R1
457 : LDA 4, 5(5) ; Recompute callee base from caller size
458 : ST 1, 5(4) ; Store argument 4 in callee frame
459 : LDC 1, 1(0) ; Load integer-literal into R1
460 : LDA 4, 5(5) ; Recompute callee base from caller size
461 : ST 1, 6(4) ; Store argument 5 in callee frame
462 : LDC 1, 1(0) ; Load integer-literal into R1
463 : LDA 4, 5(5) ; Recompute callee base from caller size
464 : ST 1, 7(4) ; Store argument 6 in callee frame
465 : LDC 1, 1(0) ; Load integer-literal into R1
466 : LDA 4, 5(5) ; Recompute callee base from caller size
467 : ST 1, 8(4) ; Store argument 7 in callee frame
468 : LDA 4, 5(5) ; Recompute callee base from caller size
469 : LDA 6, 473(0) ; Return address
470 : ST 6, 0(4) ; Store return address into callee frame
471 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
472 : LDA 7, 133(0) ; Call whileLoopFor
473 : LD 1, 9(5) ; Load callee result into R1
474 : LDC 2, 11(0) ; Callee frame size
475 : SUB 5, 5, 2 ; Pop back to caller
476 : LDA 4, 5(5) ; Recompute callee base from caller size
477 : ST 1, 2(4) ; Store argument 1 in callee frame
478 : LDC 1, 2(0) ; Load integer-literal into R1
479 : LDA 4, 5(5) ; Recompute callee base from caller size
480 : ST 1, 1(4) ; Store argument 0 in callee frame
481 : LD 1, 1(5) ; Load parameter 'xNum' into R1
482 : LDA 4, 5(5) ; Recompute callee base from caller size
483 : ST 1, 2(4) ; Store argument 1 in callee frame
484 : LD 1, 2(5) ; Load parameter 'xDen' into R1
485 : LDA 4, 5(5) ; Recompute callee base from caller size
486 : ST 1, 3(4) ; Store argument 2 in callee frame
487 : LD 1, 3(5) ; Load parameter 'N' into R1
488 : LDA 4, 5(5) ; Recompute callee base from caller size
489 : ST 1, 4(4) ; Store argument 3 in callee frame
490 : LDC 1, 0(0) ; Load integer-literal into R1
491 : LDA 4, 5(5) ; Recompute callee base from caller size
492 : ST 1, 5(4) ; Store argument 4 in callee frame
493 : LDC 1, 1(0) ; Load integer-literal into R1
494 : LDA 4, 5(5) ; Recompute callee base from caller size
495 : ST 1, 6(4) ; Store argument 5 in callee frame
496 : LDC 1, 1(0) ; Load integer-literal into R1
497 : LDA 4, 5(5) ; Recompute callee base from caller size
498 : ST 1, 7(4) ; Store argument 6 in callee frame
499 : LDC 1, 1(0) ; Load integer-literal into R1
500 : LDA 4, 5(5) ; Recompute callee base from caller size
501 : ST 1, 8(4) ; Store argument 7 in callee frame
502 : LDA 4, 5(5) ; Recompute callee base from caller size
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return address into callee frame
505 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
506 : LDA 7, 133(0) ; Call whileLoopFor
507 : LD 1, 9(5) ; Load callee result into R1
508 : LDC 2, 11(0) ; Callee frame size
509 : SUB 5, 5, 2 ; Pop back to caller
510 : LDA 4, 5(5) ; Recompute callee base from caller size
511 : ST 1, 3(4) ; Store argument 2 in callee frame
512 : LDC 1, 3(0) ; Load integer-literal into R1
513 : LDA 4, 5(5) ; Recompute callee base from caller size
514 : ST 1, 1(4) ; Store argument 0 in callee frame
515 : LD 1, 1(5) ; Load parameter 'xNum' into R1
516 : LDA 4, 5(5) ; Recompute callee base from caller size
517 : ST 1, 2(4) ; Store argument 1 in callee frame
518 : LD 1, 2(5) ; Load parameter 'xDen' into R1
519 : LDA 4, 5(5) ; Recompute callee base from caller size
520 : ST 1, 3(4) ; Store argument 2 in callee frame
521 : LD 1, 3(5) ; Load parameter 'N' into R1
522 : LDA 4, 5(5) ; Recompute callee base from caller size
523 : ST 1, 4(4) ; Store argument 3 in callee frame
524 : LDC 1, 0(0) ; Load integer-literal into R1
525 : LDA 4, 5(5) ; Recompute callee base from caller size
526 : ST 1, 5(4) ; Store argument 4 in callee frame
527 : LDC 1, 1(0) ; Load integer-literal into R1
528 : LDA 4, 5(5) ; Recompute callee base from caller size
529 : ST 1, 6(4) ; Store argument 5 in callee frame
530 : LDC 1, 1(0) ; Load integer-literal into R1
531 : LDA 4, 5(5) ; Recompute callee base from caller size
532 : ST 1, 7(4) ; Store argument 6 in callee frame
533 : LDC 1, 1(0) ; Load integer-literal into R1
534 : LDA 4, 5(5) ; Recompute callee base from caller size
535 : ST 1, 8(4) ; Store argument 7 in callee frame
536 : LDA 4, 5(5) ; Recompute callee base from caller size
537 : LDA 6, 541(0) ; Return address
538 : ST 6, 0(4) ; Store return address into callee frame
539 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
540 : LDA 7, 133(0) ; Call whileLoopFor
541 : LD 1, 9(5) ; Load callee result into R1
542 : LDC 2, 11(0) ; Callee frame size
543 : SUB 5, 5, 2 ; Pop back to caller
544 : LDA 4, 5(5) ; Recompute callee base from caller size
545 : ST 1, 4(4) ; Store argument 3 in callee frame
546 : LDC 1, 4(0) ; Load integer-literal into R1
547 : LDA 4, 5(5) ; Recompute callee base from caller size
548 : ST 1, 1(4) ; Store argument 0 in callee frame
549 : LD 1, 1(5) ; Load parameter 'xNum' into R1
550 : LDA 4, 5(5) ; Recompute callee base from caller size
551 : ST 1, 2(4) ; Store argument 1 in callee frame
552 : LD 1, 2(5) ; Load parameter 'xDen' into R1
553 : LDA 4, 5(5) ; Recompute callee base from caller size
554 : ST 1, 3(4) ; Store argument 2 in callee frame
555 : LD 1, 3(5) ; Load parameter 'N' into R1
556 : LDA 4, 5(5) ; Recompute callee base from caller size
557 : ST 1, 4(4) ; Store argument 3 in callee frame
558 : LDC 1, 0(0) ; Load integer-literal into R1
559 : LDA 4, 5(5) ; Recompute callee base from caller size
560 : ST 1, 5(4) ; Store argument 4 in callee frame
561 : LDC 1, 1(0) ; Load integer-literal into R1
562 : LDA 4, 5(5) ; Recompute callee base from caller size
563 : ST 1, 6(4) ; Store argument 5 in callee frame
564 : LDC 1, 1(0) ; Load integer-literal into R1
565 : LDA 4, 5(5) ; Recompute callee base from caller size
566 : ST 1, 7(4) ; Store argument 6 in callee frame
567 : LDC 1, 1(0) ; Load integer-literal into R1
568 : LDA 4, 5(5) ; Recompute callee base from caller size
569 : ST 1, 8(4) ; Store argument 7 in callee frame
570 : LDA 4, 5(5) ; Recompute callee base from caller size
571 : LDA 6, 575(0) ; Return address
572 : ST 6, 0(4) ; Store return address into callee frame
573 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
574 : LDA 7, 133(0) ; Call whileLoopFor
575 : LD 1, 9(5) ; Load callee result into R1
576 : LDC 2, 11(0) ; Callee frame size
577 : SUB 5, 5, 2 ; Pop back to caller
578 : LDA 4, 5(5) ; Recompute callee base from caller size
579 : ST 1, 5(4) ; Store argument 4 in callee frame
580 : LDA 4, 5(5) ; Recompute callee base from caller size
581 : LDA 6, 585(0) ; Return address
582 : ST 6, 0(4) ; Store return address into callee frame
583 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
584 : LDA 7, 399(0) ; Call fareySelectDen
585 : LD 1, 6(5) ; Load callee result into R1
586 : LDC 2, 7(0) ; Callee frame size
587 : SUB 5, 5, 2 ; Pop back to caller
588 : ST 1, 4(5) ; Store function result into frame return slot
589 : LD 6, 0(5) ; Load return address
590 : LDA 7, 0(6) ; Return to caller
591 : LD 1, 3(5) ; Load parameter 'N' into R1
592 : LDA 4, 5(5) ; Recompute callee base from caller size
593 : ST 1, 1(4) ; Store argument 0 in callee frame
594 : LDC 1, 1(0) ; Load integer-literal into R1
595 : LDA 4, 5(5) ; Recompute callee base from caller size
596 : ST 1, 1(4) ; Store argument 0 in callee frame
597 : LD 1, 1(5) ; Load parameter 'xNum' into R1
598 : LDA 4, 5(5) ; Recompute callee base from caller size
599 : ST 1, 2(4) ; Store argument 1 in callee frame
600 : LD 1, 2(5) ; Load parameter 'xDen' into R1
601 : LDA 4, 5(5) ; Recompute callee base from caller size
602 : ST 1, 3(4) ; Store argument 2 in callee frame
603 : LD 1, 3(5) ; Load parameter 'N' into R1
604 : LDA 4, 5(5) ; Recompute callee base from caller size
605 : ST 1, 4(4) ; Store argument 3 in callee frame
606 : LDC 1, 0(0) ; Load integer-literal into R1
607 : LDA 4, 5(5) ; Recompute callee base from caller size
608 : ST 1, 5(4) ; Store argument 4 in callee frame
609 : LDC 1, 1(0) ; Load integer-literal into R1
610 : LDA 4, 5(5) ; Recompute callee base from caller size
611 : ST 1, 6(4) ; Store argument 5 in callee frame
612 : LDC 1, 1(0) ; Load integer-literal into R1
613 : LDA 4, 5(5) ; Recompute callee base from caller size
614 : ST 1, 7(4) ; Store argument 6 in callee frame
615 : LDC 1, 1(0) ; Load integer-literal into R1
616 : LDA 4, 5(5) ; Recompute callee base from caller size
617 : ST 1, 8(4) ; Store argument 7 in callee frame
618 : LDA 4, 5(5) ; Recompute callee base from caller size
619 : LDA 6, 623(0) ; Return address
620 : ST 6, 0(4) ; Store return address into callee frame
621 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
622 : LDA 7, 133(0) ; Call whileLoopFor
623 : LD 1, 9(5) ; Load callee result into R1
624 : LDC 2, 11(0) ; Callee frame size
625 : SUB 5, 5, 2 ; Pop back to caller
626 : LDA 4, 5(5) ; Recompute callee base from caller size
627 : ST 1, 2(4) ; Store argument 1 in callee frame
628 : LDC 1, 2(0) ; Load integer-literal into R1
629 : LDA 4, 5(5) ; Recompute callee base from caller size
630 : ST 1, 1(4) ; Store argument 0 in callee frame
631 : LD 1, 1(5) ; Load parameter 'xNum' into R1
632 : LDA 4, 5(5) ; Recompute callee base from caller size
633 : ST 1, 2(4) ; Store argument 1 in callee frame
634 : LD 1, 2(5) ; Load parameter 'xDen' into R1
635 : LDA 4, 5(5) ; Recompute callee base from caller size
636 : ST 1, 3(4) ; Store argument 2 in callee frame
637 : LD 1, 3(5) ; Load parameter 'N' into R1
638 : LDA 4, 5(5) ; Recompute callee base from caller size
639 : ST 1, 4(4) ; Store argument 3 in callee frame
640 : LDC 1, 0(0) ; Load integer-literal into R1
641 : LDA 4, 5(5) ; Recompute callee base from caller size
642 : ST 1, 5(4) ; Store argument 4 in callee frame
643 : LDC 1, 1(0) ; Load integer-literal into R1
644 : LDA 4, 5(5) ; Recompute callee base from caller size
645 : ST 1, 6(4) ; Store argument 5 in callee frame
646 : LDC 1, 1(0) ; Load integer-literal into R1
647 : LDA 4, 5(5) ; Recompute callee base from caller size
648 : ST 1, 7(4) ; Store argument 6 in callee frame
649 : LDC 1, 1(0) ; Load integer-literal into R1
650 : LDA 4, 5(5) ; Recompute callee base from caller size
651 : ST 1, 8(4) ; Store argument 7 in callee frame
652 : LDA 4, 5(5) ; Recompute callee base from caller size
653 : LDA 6, 657(0) ; Return address
654 : ST 6, 0(4) ; Store return address into callee frame
655 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
656 : LDA 7, 133(0) ; Call whileLoopFor
657 : LD 1, 9(5) ; Load callee result into R1
658 : LDC 2, 11(0) ; Callee frame size
659 : SUB 5, 5, 2 ; Pop back to caller
660 : LDA 4, 5(5) ; Recompute callee base from caller size
661 : ST 1, 3(4) ; Store argument 2 in callee frame
662 : LDC 1, 3(0) ; Load integer-literal into R1
663 : LDA 4, 5(5) ; Recompute callee base from caller size
664 : ST 1, 1(4) ; Store argument 0 in callee frame
665 : LD 1, 1(5) ; Load parameter 'xNum' into R1
666 : LDA 4, 5(5) ; Recompute callee base from caller size
667 : ST 1, 2(4) ; Store argument 1 in callee frame
668 : LD 1, 2(5) ; Load parameter 'xDen' into R1
669 : LDA 4, 5(5) ; Recompute callee base from caller size
670 : ST 1, 3(4) ; Store argument 2 in callee frame
671 : LD 1, 3(5) ; Load parameter 'N' into R1
672 : LDA 4, 5(5) ; Recompute callee base from caller size
673 : ST 1, 4(4) ; Store argument 3 in callee frame
674 : LDC 1, 0(0) ; Load integer-literal into R1
675 : LDA 4, 5(5) ; Recompute callee base from caller size
676 : ST 1, 5(4) ; Store argument 4 in callee frame
677 : LDC 1, 1(0) ; Load integer-literal into R1
678 : LDA 4, 5(5) ; Recompute callee base from caller size
679 : ST 1, 6(4) ; Store argument 5 in callee frame
680 : LDC 1, 1(0) ; Load integer-literal into R1
681 : LDA 4, 5(5) ; Recompute callee base from caller size
682 : ST 1, 7(4) ; Store argument 6 in callee frame
683 : LDC 1, 1(0) ; Load integer-literal into R1
684 : LDA 4, 5(5) ; Recompute callee base from caller size
685 : ST 1, 8(4) ; Store argument 7 in callee frame
686 : LDA 4, 5(5) ; Recompute callee base from caller size
687 : LDA 6, 691(0) ; Return address
688 : ST 6, 0(4) ; Store return address into callee frame
689 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
690 : LDA 7, 133(0) ; Call whileLoopFor
691 : LD 1, 9(5) ; Load callee result into R1
692 : LDC 2, 11(0) ; Callee frame size
693 : SUB 5, 5, 2 ; Pop back to caller
694 : LDA 4, 5(5) ; Recompute callee base from caller size
695 : ST 1, 4(4) ; Store argument 3 in callee frame
696 : LDC 1, 4(0) ; Load integer-literal into R1
697 : LDA 4, 5(5) ; Recompute callee base from caller size
698 : ST 1, 1(4) ; Store argument 0 in callee frame
699 : LD 1, 1(5) ; Load parameter 'xNum' into R1
700 : LDA 4, 5(5) ; Recompute callee base from caller size
701 : ST 1, 2(4) ; Store argument 1 in callee frame
702 : LD 1, 2(5) ; Load parameter 'xDen' into R1
703 : LDA 4, 5(5) ; Recompute callee base from caller size
704 : ST 1, 3(4) ; Store argument 2 in callee frame
705 : LD 1, 3(5) ; Load parameter 'N' into R1
706 : LDA 4, 5(5) ; Recompute callee base from caller size
707 : ST 1, 4(4) ; Store argument 3 in callee frame
708 : LDC 1, 0(0) ; Load integer-literal into R1
709 : LDA 4, 5(5) ; Recompute callee base from caller size
710 : ST 1, 5(4) ; Store argument 4 in callee frame
711 : LDC 1, 1(0) ; Load integer-literal into R1
712 : LDA 4, 5(5) ; Recompute callee base from caller size
713 : ST 1, 6(4) ; Store argument 5 in callee frame
714 : LDC 1, 1(0) ; Load integer-literal into R1
715 : LDA 4, 5(5) ; Recompute callee base from caller size
716 : ST 1, 7(4) ; Store argument 6 in callee frame
717 : LDC 1, 1(0) ; Load integer-literal into R1
718 : LDA 4, 5(5) ; Recompute callee base from caller size
719 : ST 1, 8(4) ; Store argument 7 in callee frame
720 : LDA 4, 5(5) ; Recompute callee base from caller size
721 : LDA 6, 725(0) ; Return address
722 : ST 6, 0(4) ; Store return address into callee frame
723 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
724 : LDA 7, 133(0) ; Call whileLoopFor
725 : LD 1, 9(5) ; Load callee result into R1
726 : LDC 2, 11(0) ; Callee frame size
727 : SUB 5, 5, 2 ; Pop back to caller
728 : LDA 4, 5(5) ; Recompute callee base from caller size
729 : ST 1, 5(4) ; Store argument 4 in callee frame
730 : LDA 4, 5(5) ; Recompute callee base from caller size
731 : LDA 6, 735(0) ; Return address
732 : ST 6, 0(4) ; Store return address into callee frame
733 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
734 : LDA 7, 420(0) ; Call fareySelectNum
735 : LD 1, 6(5) ; Load callee result into R1
736 : LDC 2, 7(0) ; Callee frame size
737 : SUB 5, 5, 2 ; Pop back to caller
738 : ST 1, 4(5) ; Store function result into frame return slot
739 : LD 6, 0(5) ; Load return address
740 : LDA 7, 0(6) ; Return to caller
