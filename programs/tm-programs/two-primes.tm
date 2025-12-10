0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 2(5) ; Load parameter 'selector' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 3(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 37(0) ; If condition is false, jump to ELSE
24 : LD 1, 1(5) ; Load parameter 'n' into R1
25 : LDA 4, 5(5) ; Recompute callee base from caller size
26 : ST 1, 1(4) ; Store argument 0 in callee frame
27 : LDA 4, 5(5) ; Recompute callee base from caller size
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return address into callee frame
30 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
31 : LDA 7, 346(0) ; Call emirp
32 : LD 1, 2(5) ; Load callee result into R1
33 : LDC 2, 4(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s return slot
36 : LDA 7, 85(0) ; Skip ELSE block
37 : LD 1, 2(5) ; Load parameter 'selector' into R1
38 : ST 1, 4(5) ; Spill left operand at depth 0
39 : LDC 1, 5(0) ; Load integer-literal into R1
40 : LD 2, 4(5) ; Restore left operand from depth 0
41 : SUB 1, 2, 1 ; left - right for equality check
42 : JEQ 1, 2(7) ; If R1 == 0, jump to true
43 : LDC 1, 0(0) ; false
44 : LDA 7, 1(7) ; skip setting true
45 : LDC 1, 1(0) ; true
46 : JEQ 1, 60(0) ; If condition is false, jump to ELSE
47 : LD 1, 1(5) ; Load parameter 'n' into R1
48 : LDA 4, 5(5) ; Recompute callee base from caller size
49 : ST 1, 1(4) ; Store argument 0 in callee frame
50 : LDA 4, 5(5) ; Recompute callee base from caller size
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return address into callee frame
53 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
54 : LDA 7, 302(0) ; Call snowball
55 : LD 1, 2(5) ; Load callee result into R1
56 : LDC 2, 5(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop back to caller
58 : ST 1, 3(5) ; Store result into caller’s return slot
59 : LDA 7, 85(0) ; Skip ELSE block
60 : LD 1, 2(5) ; Load parameter 'selector' into R1
61 : ST 1, 4(5) ; Spill left operand at depth 0
62 : LDC 1, 8(0) ; Load integer-literal into R1
63 : LD 2, 4(5) ; Restore left operand from depth 0
64 : SUB 1, 2, 1 ; left - right for equality check
65 : JEQ 1, 2(7) ; If R1 == 0, jump to true
66 : LDC 1, 0(0) ; false
67 : LDA 7, 1(7) ; skip setting true
68 : LDC 1, 1(0) ; true
69 : JEQ 1, 83(0) ; If condition is false, jump to ELSE
70 : LD 1, 1(5) ; Load parameter 'n' into R1
71 : LDA 4, 5(5) ; Recompute callee base from caller size
72 : ST 1, 1(4) ; Store argument 0 in callee frame
73 : LDA 4, 5(5) ; Recompute callee base from caller size
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return address into callee frame
76 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
77 : LDA 7, 270(0) ; Call doBoth
78 : LD 1, 2(5) ; Load callee result into R1
79 : LDC 2, 3(0) ; Callee frame size
80 : SUB 5, 5, 2 ; Pop back to caller
81 : ST 1, 3(5) ; Store result into caller’s return slot
82 : LDA 7, 85(0) ; Skip ELSE block
83 : LDC 1, 0(0) ; Load boolean-literal into R1
84 : ST 1, 3(5) ; Store result into current frame's return slot
85 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
86 : LD 1, 3(5) ; Load main return value into R1
87 : LD 6, 0(5) ; Load root return address from main frame
88 : LDA 7, 0(6) ; Return from main to runtime epilogue
89 : LD 1, 1(5) ; Load parameter 'm' into R1
90 : ST 1, 4(5) ; Spill left operand at depth 0
91 : LD 1, 1(5) ; Load parameter 'm' into R1
92 : ST 1, 5(5) ; Spill left operand at depth 1
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : LD 2, 5(5) ; Restore left operand from depth 1
95 : DIV 1, 2, 1 ; R1 = left / right
96 : ST 1, 5(5) ; Spill left operand at depth 1
97 : LD 1, 2(5) ; Load parameter 'n' into R1
98 : LD 2, 5(5) ; Restore left operand from depth 1
99 : MUL 1, 2, 1 ; R1 = left * right
100 : LD 2, 4(5) ; Restore left operand from depth 0
101 : SUB 1, 2, 1 ; R1 = left - right
102 : ST 1, 3(5) ; Store function result into frame return slot
103 : LD 6, 0(5) ; Load return address
104 : LDA 7, 0(6) ; Return to caller
105 : LD 1, 1(5) ; Load parameter 'n' into R1
106 : ST 1, 4(5) ; Spill left operand at depth 0
107 : LDC 1, 0(0) ; Load integer-literal into R1
108 : LD 2, 4(5) ; Restore left operand from depth 0
109 : SUB 1, 2, 1 ; left - right for equality check
110 : JEQ 1, 2(7) ; If R1 == 0, jump to true
111 : LDC 1, 0(0) ; false
112 : LDA 7, 1(7) ; skip setting true
113 : LDC 1, 1(0) ; true
114 : JEQ 1, 117(0) ; If condition is false, jump to ELSE
115 : LD 1, 2(5) ; Load parameter 'nR' into R1
116 : LDA 7, 156(0) ; Skip ELSE block
117 : LD 1, 1(5) ; Load parameter 'n' into R1
118 : ST 1, 4(5) ; Spill left operand at depth 0
119 : LDC 1, 10(0) ; Load integer-literal into R1
120 : LD 2, 4(5) ; Restore left operand from depth 0
121 : DIV 1, 2, 1 ; R1 = left / right
122 : LDA 4, 5(5) ; Recompute callee base from caller size
123 : ST 1, 1(4) ; Store argument 0 in callee frame
124 : LDC 1, 10(0) ; Load integer-literal into R1
125 : ST 1, 4(5) ; Spill left operand at depth 0
126 : LD 1, 2(5) ; Load parameter 'nR' into R1
127 : LD 2, 4(5) ; Restore left operand from depth 0
128 : MUL 1, 2, 1 ; R1 = left * right
129 : ST 1, 4(5) ; Spill left operand at depth 0
130 : LD 1, 1(5) ; Load parameter 'n' into R1
131 : LDA 4, 5(5) ; Recompute callee base from caller size
132 : ST 1, 1(4) ; Store argument 0 in callee frame
133 : LDC 1, 10(0) ; Load integer-literal into R1
134 : LDA 4, 5(5) ; Recompute callee base from caller size
135 : ST 1, 2(4) ; Store argument 1 in callee frame
136 : LDA 4, 5(5) ; Recompute callee base from caller size
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return address into callee frame
139 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
140 : LDA 7, 89(0) ; Call MOD
141 : LD 1, 3(5) ; Load callee result into R1
142 : LDC 2, 6(0) ; Callee frame size
143 : SUB 5, 5, 2 ; Pop back to caller
144 : LD 2, 4(5) ; Restore left operand from depth 0
145 : ADD 1, 2, 1 ; R1 = left + right
146 : LDA 4, 5(5) ; Recompute callee base from caller size
147 : ST 1, 2(4) ; Store argument 1 in callee frame
148 : LDA 4, 5(5) ; Recompute callee base from caller size
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return address into callee frame
151 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
152 : LDA 7, 105(0) ; Call reverseL
153 : LD 1, 3(5) ; Load callee result into R1
154 : LDC 2, 5(0) ; Callee frame size
155 : SUB 5, 5, 2 ; Pop back to caller
156 : ST 1, 3(5) ; Store function result into frame return slot
157 : LD 6, 0(5) ; Load return address
158 : LDA 7, 0(6) ; Return to caller
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : LDA 4, 3(5) ; Recompute callee base from caller size
161 : ST 1, 1(4) ; Store argument 0 in callee frame
162 : LDC 1, 0(0) ; Load integer-literal into R1
163 : LDA 4, 3(5) ; Recompute callee base from caller size
164 : ST 1, 2(4) ; Store argument 1 in callee frame
165 : LDA 4, 3(5) ; Recompute callee base from caller size
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return address into callee frame
168 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
169 : LDA 7, 105(0) ; Call reverseL
170 : LD 1, 3(5) ; Load callee result into R1
171 : LDC 2, 5(0) ; Callee frame size
172 : SUB 5, 5, 2 ; Pop back to caller
173 : ST 1, 2(5) ; Store function result into frame return slot
174 : LD 6, 0(5) ; Load return address
175 : LDA 7, 0(6) ; Return to caller
176 : LD 1, 2(5) ; Load parameter 'b' into R1
177 : LDA 4, 5(5) ; Recompute callee base from caller size
178 : ST 1, 1(4) ; Store argument 0 in callee frame
179 : LD 1, 1(5) ; Load parameter 'a' into R1
180 : LDA 4, 5(5) ; Recompute callee base from caller size
181 : ST 1, 2(4) ; Store argument 1 in callee frame
182 : LDA 4, 5(5) ; Recompute callee base from caller size
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return address into callee frame
185 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
186 : LDA 7, 89(0) ; Call MOD
187 : LD 1, 3(5) ; Load callee result into R1
188 : LDC 2, 6(0) ; Callee frame size
189 : SUB 5, 5, 2 ; Pop back to caller
190 : ST 1, 4(5) ; Spill left operand at depth 0
191 : LDC 1, 0(0) ; Load integer-literal into R1
192 : LD 2, 4(5) ; Restore left operand from depth 0
193 : SUB 1, 2, 1 ; left - right for equality check
194 : JEQ 1, 2(7) ; If R1 == 0, jump to true
195 : LDC 1, 0(0) ; false
196 : LDA 7, 1(7) ; skip setting true
197 : LDC 1, 1(0) ; true
198 : ST 1, 3(5) ; Store function result into frame return slot
199 : LD 6, 0(5) ; Load return address
200 : LDA 7, 0(6) ; Return to caller
201 : LD 1, 1(5) ; Load parameter 'i' into R1
202 : ST 1, 4(5) ; Spill left operand at depth 0
203 : LD 1, 2(5) ; Load parameter 'n' into R1
204 : LD 2, 4(5) ; Restore left operand from depth 0
205 : SUB 1, 2, 1 ; left - right for less-than check
206 : JLT 1, 2(7) ; If R1 < 0, jump to true
207 : LDC 1, 0(0) ; false
208 : LDA 7, 1(7) ; skip setting true
209 : LDC 1, 1(0) ; true
210 : JEQ 1, 247(0) ; If condition is false, jump to ELSE
211 : LD 1, 1(5) ; Load parameter 'i' into R1
212 : LDA 4, 6(5) ; Recompute callee base from caller size
213 : ST 1, 1(4) ; Store argument 0 in callee frame
214 : LD 1, 2(5) ; Load parameter 'n' into R1
215 : LDA 4, 6(5) ; Recompute callee base from caller size
216 : ST 1, 2(4) ; Store argument 1 in callee frame
217 : LDA 4, 6(5) ; Recompute callee base from caller size
218 : LDA 6, 222(0) ; Return address
219 : ST 6, 0(4) ; Store return address into callee frame
220 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
221 : LDA 7, 176(0) ; Call divides
222 : LD 1, 3(5) ; Load callee result into R1
223 : LDC 2, 5(0) ; Callee frame size
224 : SUB 5, 5, 2 ; Pop back to caller
225 : ST 1, 4(5) ; Spill left operand at depth 0
226 : LD 1, 1(5) ; Load parameter 'i' into R1
227 : ST 1, 5(5) ; Spill left operand at depth 1
228 : LDC 1, 1(0) ; Load integer-literal into R1
229 : LD 2, 5(5) ; Restore left operand from depth 1
230 : ADD 1, 2, 1 ; R1 = left + right
231 : LDA 4, 6(5) ; Recompute callee base from caller size
232 : ST 1, 1(4) ; Store argument 0 in callee frame
233 : LD 1, 2(5) ; Load parameter 'n' into R1
234 : LDA 4, 6(5) ; Recompute callee base from caller size
235 : ST 1, 2(4) ; Store argument 1 in callee frame
236 : LDA 4, 6(5) ; Recompute callee base from caller size
237 : LDA 6, 241(0) ; Return address
238 : ST 6, 0(4) ; Store return address into callee frame
239 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
240 : LDA 7, 201(0) ; Call hasDivisorFrom
241 : LD 1, 3(5) ; Load callee result into R1
242 : LDC 2, 6(0) ; Callee frame size
243 : SUB 5, 5, 2 ; Pop back to caller
244 : LD 2, 4(5) ; Restore left operand from depth 0
245 : ADD 1, 2, 1 ; R1 = left OR right
246 : LDA 7, 248(0) ; Skip ELSE block
247 : LDC 1, 0(0) ; Load boolean-literal into R1
248 : ST 1, 3(5) ; Store function result into frame return slot
249 : LD 6, 0(5) ; Load return address
250 : LDA 7, 0(6) ; Return to caller
251 : LDC 1, 2(0) ; Load integer-literal into R1
252 : LDA 4, 3(5) ; Recompute callee base from caller size
253 : ST 1, 1(4) ; Store argument 0 in callee frame
254 : LD 1, 1(5) ; Load parameter 'n' into R1
255 : LDA 4, 3(5) ; Recompute callee base from caller size
256 : ST 1, 2(4) ; Store argument 1 in callee frame
257 : LDA 4, 3(5) ; Recompute callee base from caller size
258 : LDA 6, 262(0) ; Return address
259 : ST 6, 0(4) ; Store return address into callee frame
260 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
261 : LDA 7, 201(0) ; Call hasDivisorFrom
262 : LD 1, 3(5) ; Load callee result into R1
263 : LDC 2, 6(0) ; Callee frame size
264 : SUB 5, 5, 2 ; Pop back to caller
265 : LDC 2, 1(0) ; Load 1 into R2
266 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
267 : ST 1, 2(5) ; Store function result into frame return slot
268 : LD 6, 0(5) ; Load return address
269 : LDA 7, 0(6) ; Return to caller
270 : LD 1, 1(5) ; Load parameter 'n' into R1
271 : LDA 4, 3(5) ; Recompute callee base from caller size
272 : ST 1, 1(4) ; Store argument 0 in callee frame
273 : LDA 4, 3(5) ; Recompute callee base from caller size
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return address into callee frame
276 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
277 : LDA 7, 346(0) ; Call emirp
278 : LD 1, 2(5) ; Load callee result into R1
279 : LDC 2, 4(0) ; Callee frame size
280 : SUB 5, 5, 2 ; Pop back to caller
281 : LDA 4, 3(5) ; Recompute callee base from caller size
282 : LDA 6, 286(0) ; Return address
283 : ST 6, 0(4) ; Store return address in callee frame
284 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
285 : LDA 7, 11(0) ; Call built-in print
286 : LDC 2, 3(0) ; Callee frame size
287 : SUB 5, 5, 2 ; Pop back to caller
288 : LD 1, 1(5) ; Load parameter 'n' into R1
289 : LDA 4, 3(5) ; Recompute callee base from caller size
290 : ST 1, 1(4) ; Store argument 0 in callee frame
291 : LDA 4, 3(5) ; Recompute callee base from caller size
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return address into callee frame
294 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
295 : LDA 7, 302(0) ; Call snowball
296 : LD 1, 2(5) ; Load callee result into R1
297 : LDC 2, 5(0) ; Callee frame size
298 : SUB 5, 5, 2 ; Pop back to caller
299 : ST 1, 2(5) ; Store function result into frame return slot
300 : LD 6, 0(5) ; Load return address
301 : LDA 7, 0(6) ; Return to caller
302 : LD 1, 1(5) ; Load parameter 'n' into R1
303 : LDA 4, 5(5) ; Recompute callee base from caller size
304 : ST 1, 1(4) ; Store argument 0 in callee frame
305 : LDA 4, 5(5) ; Recompute callee base from caller size
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return address into callee frame
308 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
309 : LDA 7, 251(0) ; Call isPrime
310 : LD 1, 2(5) ; Load callee result into R1
311 : LDC 2, 3(0) ; Callee frame size
312 : SUB 5, 5, 2 ; Pop back to caller
313 : ST 1, 3(5) ; Spill left operand at depth 0
314 : LD 1, 1(5) ; Load parameter 'n' into R1
315 : ST 1, 4(5) ; Spill left operand at depth 1
316 : LDC 1, 10(0) ; Load integer-literal into R1
317 : LD 2, 4(5) ; Restore left operand from depth 1
318 : SUB 1, 2, 1 ; left - right for less-than check
319 : JLT 1, 2(7) ; If R1 < 0, jump to true
320 : LDC 1, 0(0) ; false
321 : LDA 7, 1(7) ; skip setting true
322 : LDC 1, 1(0) ; true
323 : JEQ 1, 326(0) ; If condition is false, jump to ELSE
324 : LDC 1, 1(0) ; Load boolean-literal into R1
325 : LDA 7, 341(0) ; Skip ELSE block
326 : LD 1, 1(5) ; Load parameter 'n' into R1
327 : ST 1, 4(5) ; Spill left operand at depth 1
328 : LDC 1, 10(0) ; Load integer-literal into R1
329 : LD 2, 4(5) ; Restore left operand from depth 1
330 : DIV 1, 2, 1 ; R1 = left / right
331 : LDA 4, 5(5) ; Recompute callee base from caller size
332 : ST 1, 1(4) ; Store argument 0 in callee frame
333 : LDA 4, 5(5) ; Recompute callee base from caller size
334 : LDA 6, 338(0) ; Return address
335 : ST 6, 0(4) ; Store return address into callee frame
336 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
337 : LDA 7, 251(0) ; Call isPrime
338 : LD 1, 2(5) ; Load callee result into R1
339 : LDC 2, 3(0) ; Callee frame size
340 : SUB 5, 5, 2 ; Pop back to caller
341 : LD 2, 3(5) ; Restore left operand from depth 0
342 : MUL 1, 2, 1 ; R1 = left AND right
343 : ST 1, 2(5) ; Store function result into frame return slot
344 : LD 6, 0(5) ; Load return address
345 : LDA 7, 0(6) ; Return to caller
346 : LD 1, 1(5) ; Load parameter 'n' into R1
347 : LDA 4, 4(5) ; Recompute callee base from caller size
348 : ST 1, 1(4) ; Store argument 0 in callee frame
349 : LDA 4, 4(5) ; Recompute callee base from caller size
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return address into callee frame
352 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
353 : LDA 7, 251(0) ; Call isPrime
354 : LD 1, 2(5) ; Load callee result into R1
355 : LDC 2, 3(0) ; Callee frame size
356 : SUB 5, 5, 2 ; Pop back to caller
357 : ST 1, 3(5) ; Spill left operand at depth 0
358 : LD 1, 1(5) ; Load parameter 'n' into R1
359 : LDA 4, 4(5) ; Recompute callee base from caller size
360 : ST 1, 1(4) ; Store argument 0 in callee frame
361 : LDA 4, 4(5) ; Recompute callee base from caller size
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return address into callee frame
364 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
365 : LDA 7, 159(0) ; Call reverse
366 : LD 1, 2(5) ; Load callee result into R1
367 : LDC 2, 3(0) ; Callee frame size
368 : SUB 5, 5, 2 ; Pop back to caller
369 : LDA 4, 4(5) ; Recompute callee base from caller size
370 : ST 1, 1(4) ; Store argument 0 in callee frame
371 : LDA 4, 4(5) ; Recompute callee base from caller size
372 : LDA 6, 376(0) ; Return address
373 : ST 6, 0(4) ; Store return address into callee frame
374 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
375 : LDA 7, 251(0) ; Call isPrime
376 : LD 1, 2(5) ; Load callee result into R1
377 : LDC 2, 3(0) ; Callee frame size
378 : SUB 5, 5, 2 ; Pop back to caller
379 : LD 2, 3(5) ; Restore left operand from depth 0
380 : MUL 1, 2, 1 ; R1 = left AND right
381 : ST 1, 2(5) ; Store function result into frame return slot
382 : LD 6, 0(5) ; Load return address
383 : LDA 7, 0(6) ; Return to caller
