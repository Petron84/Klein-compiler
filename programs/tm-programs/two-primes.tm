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
31 : LDA 7, 348(0) ; Call emirp
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
54 : LDA 7, 304(0) ; Call snowball
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
77 : LDA 7, 272(0) ; Call doBoth
78 : LD 1, 2(5) ; Load callee result into R1
79 : LDC 2, 3(0) ; Callee frame size
80 : SUB 5, 5, 2 ; Pop back to caller
81 : ST 1, 3(5) ; Store result into caller’s return slot
82 : LDA 7, 85(0) ; Skip ELSE block
83 : LDC 1, 0(0) ; Load boolean-literal into R1
84 : ST 1, 3(5) ; Store result into current frame's return slot
85 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
86 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
87 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
88 : LD 1, 3(5) ; Load main return value into R1
89 : LD 6, 0(5) ; Load root return address from main frame
90 : LDA 7, 0(6) ; Return from main to runtime epilogue
91 : LD 1, 1(5) ; Load parameter 'm' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LD 1, 1(5) ; Load parameter 'm' into R1
94 : ST 1, 5(5) ; Spill left operand at depth 1
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : LD 2, 5(5) ; Restore left operand from depth 1
97 : DIV 1, 2, 1 ; R1 = left / right
98 : ST 1, 5(5) ; Spill left operand at depth 1
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : LD 2, 5(5) ; Restore left operand from depth 1
101 : MUL 1, 2, 1 ; R1 = left * right
102 : LD 2, 4(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; R1 = left - right
104 : ST 1, 3(5) ; Store function result into frame return slot
105 : LD 6, 0(5) ; Load return address
106 : LDA 7, 0(6) ; Return to caller
107 : LD 1, 1(5) ; Load parameter 'n' into R1
108 : ST 1, 4(5) ; Spill left operand at depth 0
109 : LDC 1, 0(0) ; Load integer-literal into R1
110 : LD 2, 4(5) ; Restore left operand from depth 0
111 : SUB 1, 2, 1 ; left - right for equality check
112 : JEQ 1, 2(7) ; If R1 == 0, jump to true
113 : LDC 1, 0(0) ; false
114 : LDA 7, 1(7) ; skip setting true
115 : LDC 1, 1(0) ; true
116 : JEQ 1, 119(0) ; If condition is false, jump to ELSE
117 : LD 1, 2(5) ; Load parameter 'nR' into R1
118 : LDA 7, 158(0) ; Skip ELSE block
119 : LD 1, 1(5) ; Load parameter 'n' into R1
120 : ST 1, 4(5) ; Spill left operand at depth 0
121 : LDC 1, 10(0) ; Load integer-literal into R1
122 : LD 2, 4(5) ; Restore left operand from depth 0
123 : DIV 1, 2, 1 ; R1 = left / right
124 : LDA 4, 5(5) ; Recompute callee base from caller size
125 : ST 1, 1(4) ; Store argument 0 in callee frame
126 : LDC 1, 10(0) ; Load integer-literal into R1
127 : ST 1, 4(5) ; Spill left operand at depth 0
128 : LD 1, 2(5) ; Load parameter 'nR' into R1
129 : LD 2, 4(5) ; Restore left operand from depth 0
130 : MUL 1, 2, 1 ; R1 = left * right
131 : ST 1, 4(5) ; Spill left operand at depth 0
132 : LD 1, 1(5) ; Load parameter 'n' into R1
133 : LDA 4, 5(5) ; Recompute callee base from caller size
134 : ST 1, 1(4) ; Store argument 0 in callee frame
135 : LDC 1, 10(0) ; Load integer-literal into R1
136 : LDA 4, 5(5) ; Recompute callee base from caller size
137 : ST 1, 2(4) ; Store argument 1 in callee frame
138 : LDA 4, 5(5) ; Recompute callee base from caller size
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return address into callee frame
141 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
142 : LDA 7, 91(0) ; Call MOD
143 : LD 1, 3(5) ; Load callee result into R1
144 : LDC 2, 6(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop back to caller
146 : LD 2, 4(5) ; Restore left operand from depth 0
147 : ADD 1, 2, 1 ; R1 = left + right
148 : LDA 4, 5(5) ; Recompute callee base from caller size
149 : ST 1, 2(4) ; Store argument 1 in callee frame
150 : LDA 4, 5(5) ; Recompute callee base from caller size
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return address into callee frame
153 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
154 : LDA 7, 107(0) ; Call reverseL
155 : LD 1, 3(5) ; Load callee result into R1
156 : LDC 2, 5(0) ; Callee frame size
157 : SUB 5, 5, 2 ; Pop back to caller
158 : ST 1, 3(5) ; Store function result into frame return slot
159 : LD 6, 0(5) ; Load return address
160 : LDA 7, 0(6) ; Return to caller
161 : LD 1, 1(5) ; Load parameter 'n' into R1
162 : LDA 4, 3(5) ; Recompute callee base from caller size
163 : ST 1, 1(4) ; Store argument 0 in callee frame
164 : LDC 1, 0(0) ; Load integer-literal into R1
165 : LDA 4, 3(5) ; Recompute callee base from caller size
166 : ST 1, 2(4) ; Store argument 1 in callee frame
167 : LDA 4, 3(5) ; Recompute callee base from caller size
168 : LDA 6, 172(0) ; Return address
169 : ST 6, 0(4) ; Store return address into callee frame
170 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
171 : LDA 7, 107(0) ; Call reverseL
172 : LD 1, 3(5) ; Load callee result into R1
173 : LDC 2, 5(0) ; Callee frame size
174 : SUB 5, 5, 2 ; Pop back to caller
175 : ST 1, 2(5) ; Store function result into frame return slot
176 : LD 6, 0(5) ; Load return address
177 : LDA 7, 0(6) ; Return to caller
178 : LD 1, 2(5) ; Load parameter 'b' into R1
179 : LDA 4, 5(5) ; Recompute callee base from caller size
180 : ST 1, 1(4) ; Store argument 0 in callee frame
181 : LD 1, 1(5) ; Load parameter 'a' into R1
182 : LDA 4, 5(5) ; Recompute callee base from caller size
183 : ST 1, 2(4) ; Store argument 1 in callee frame
184 : LDA 4, 5(5) ; Recompute callee base from caller size
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return address into callee frame
187 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
188 : LDA 7, 91(0) ; Call MOD
189 : LD 1, 3(5) ; Load callee result into R1
190 : LDC 2, 6(0) ; Callee frame size
191 : SUB 5, 5, 2 ; Pop back to caller
192 : ST 1, 4(5) ; Spill left operand at depth 0
193 : LDC 1, 0(0) ; Load integer-literal into R1
194 : LD 2, 4(5) ; Restore left operand from depth 0
195 : SUB 1, 2, 1 ; left - right for equality check
196 : JEQ 1, 2(7) ; If R1 == 0, jump to true
197 : LDC 1, 0(0) ; false
198 : LDA 7, 1(7) ; skip setting true
199 : LDC 1, 1(0) ; true
200 : ST 1, 3(5) ; Store function result into frame return slot
201 : LD 6, 0(5) ; Load return address
202 : LDA 7, 0(6) ; Return to caller
203 : LD 1, 1(5) ; Load parameter 'i' into R1
204 : ST 1, 4(5) ; Spill left operand at depth 0
205 : LD 1, 2(5) ; Load parameter 'n' into R1
206 : LD 2, 4(5) ; Restore left operand from depth 0
207 : SUB 1, 2, 1 ; left - right for less-than check
208 : JLT 1, 2(7) ; If R1 < 0, jump to true
209 : LDC 1, 0(0) ; false
210 : LDA 7, 1(7) ; skip setting true
211 : LDC 1, 1(0) ; true
212 : JEQ 1, 249(0) ; If condition is false, jump to ELSE
213 : LD 1, 1(5) ; Load parameter 'i' into R1
214 : LDA 4, 6(5) ; Recompute callee base from caller size
215 : ST 1, 1(4) ; Store argument 0 in callee frame
216 : LD 1, 2(5) ; Load parameter 'n' into R1
217 : LDA 4, 6(5) ; Recompute callee base from caller size
218 : ST 1, 2(4) ; Store argument 1 in callee frame
219 : LDA 4, 6(5) ; Recompute callee base from caller size
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return address into callee frame
222 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
223 : LDA 7, 178(0) ; Call divides
224 : LD 1, 3(5) ; Load callee result into R1
225 : LDC 2, 5(0) ; Callee frame size
226 : SUB 5, 5, 2 ; Pop back to caller
227 : ST 1, 4(5) ; Spill left operand at depth 0
228 : LD 1, 1(5) ; Load parameter 'i' into R1
229 : ST 1, 5(5) ; Spill left operand at depth 1
230 : LDC 1, 1(0) ; Load integer-literal into R1
231 : LD 2, 5(5) ; Restore left operand from depth 1
232 : ADD 1, 2, 1 ; R1 = left + right
233 : LDA 4, 6(5) ; Recompute callee base from caller size
234 : ST 1, 1(4) ; Store argument 0 in callee frame
235 : LD 1, 2(5) ; Load parameter 'n' into R1
236 : LDA 4, 6(5) ; Recompute callee base from caller size
237 : ST 1, 2(4) ; Store argument 1 in callee frame
238 : LDA 4, 6(5) ; Recompute callee base from caller size
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return address into callee frame
241 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
242 : LDA 7, 203(0) ; Call hasDivisorFrom
243 : LD 1, 3(5) ; Load callee result into R1
244 : LDC 2, 6(0) ; Callee frame size
245 : SUB 5, 5, 2 ; Pop back to caller
246 : LD 2, 4(5) ; Restore left operand from depth 0
247 : ADD 1, 2, 1 ; R1 = left OR right
248 : LDA 7, 250(0) ; Skip ELSE block
249 : LDC 1, 0(0) ; Load boolean-literal into R1
250 : ST 1, 3(5) ; Store function result into frame return slot
251 : LD 6, 0(5) ; Load return address
252 : LDA 7, 0(6) ; Return to caller
253 : LDC 1, 2(0) ; Load integer-literal into R1
254 : LDA 4, 3(5) ; Recompute callee base from caller size
255 : ST 1, 1(4) ; Store argument 0 in callee frame
256 : LD 1, 1(5) ; Load parameter 'n' into R1
257 : LDA 4, 3(5) ; Recompute callee base from caller size
258 : ST 1, 2(4) ; Store argument 1 in callee frame
259 : LDA 4, 3(5) ; Recompute callee base from caller size
260 : LDA 6, 264(0) ; Return address
261 : ST 6, 0(4) ; Store return address into callee frame
262 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
263 : LDA 7, 203(0) ; Call hasDivisorFrom
264 : LD 1, 3(5) ; Load callee result into R1
265 : LDC 2, 6(0) ; Callee frame size
266 : SUB 5, 5, 2 ; Pop back to caller
267 : LDC 2, 1(0) ; Load 1 into R2
268 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
269 : ST 1, 2(5) ; Store function result into frame return slot
270 : LD 6, 0(5) ; Load return address
271 : LDA 7, 0(6) ; Return to caller
272 : LD 1, 1(5) ; Load parameter 'n' into R1
273 : LDA 4, 3(5) ; Recompute callee base from caller size
274 : ST 1, 1(4) ; Store argument 0 in callee frame
275 : LDA 4, 3(5) ; Recompute callee base from caller size
276 : LDA 6, 280(0) ; Return address
277 : ST 6, 0(4) ; Store return address into callee frame
278 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
279 : LDA 7, 348(0) ; Call emirp
280 : LD 1, 2(5) ; Load callee result into R1
281 : LDC 2, 4(0) ; Callee frame size
282 : SUB 5, 5, 2 ; Pop back to caller
283 : LDA 4, 3(5) ; Recompute callee base from caller size
284 : LDA 6, 288(0) ; Return address
285 : ST 6, 0(4) ; Store return address in callee frame
286 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
287 : LDA 7, 11(0) ; Call built-in print
288 : LDC 2, 3(0) ; Callee frame size
289 : SUB 5, 5, 2 ; Pop back to caller
290 : LD 1, 1(5) ; Load parameter 'n' into R1
291 : LDA 4, 3(5) ; Recompute callee base from caller size
292 : ST 1, 1(4) ; Store argument 0 in callee frame
293 : LDA 4, 3(5) ; Recompute callee base from caller size
294 : LDA 6, 298(0) ; Return address
295 : ST 6, 0(4) ; Store return address into callee frame
296 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
297 : LDA 7, 304(0) ; Call snowball
298 : LD 1, 2(5) ; Load callee result into R1
299 : LDC 2, 5(0) ; Callee frame size
300 : SUB 5, 5, 2 ; Pop back to caller
301 : ST 1, 2(5) ; Store function result into frame return slot
302 : LD 6, 0(5) ; Load return address
303 : LDA 7, 0(6) ; Return to caller
304 : LD 1, 1(5) ; Load parameter 'n' into R1
305 : LDA 4, 5(5) ; Recompute callee base from caller size
306 : ST 1, 1(4) ; Store argument 0 in callee frame
307 : LDA 4, 5(5) ; Recompute callee base from caller size
308 : LDA 6, 312(0) ; Return address
309 : ST 6, 0(4) ; Store return address into callee frame
310 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
311 : LDA 7, 253(0) ; Call isPrime
312 : LD 1, 2(5) ; Load callee result into R1
313 : LDC 2, 3(0) ; Callee frame size
314 : SUB 5, 5, 2 ; Pop back to caller
315 : ST 1, 3(5) ; Spill left operand at depth 0
316 : LD 1, 1(5) ; Load parameter 'n' into R1
317 : ST 1, 4(5) ; Spill left operand at depth 1
318 : LDC 1, 10(0) ; Load integer-literal into R1
319 : LD 2, 4(5) ; Restore left operand from depth 1
320 : SUB 1, 2, 1 ; left - right for less-than check
321 : JLT 1, 2(7) ; If R1 < 0, jump to true
322 : LDC 1, 0(0) ; false
323 : LDA 7, 1(7) ; skip setting true
324 : LDC 1, 1(0) ; true
325 : JEQ 1, 328(0) ; If condition is false, jump to ELSE
326 : LDC 1, 1(0) ; Load boolean-literal into R1
327 : LDA 7, 343(0) ; Skip ELSE block
328 : LD 1, 1(5) ; Load parameter 'n' into R1
329 : ST 1, 4(5) ; Spill left operand at depth 1
330 : LDC 1, 10(0) ; Load integer-literal into R1
331 : LD 2, 4(5) ; Restore left operand from depth 1
332 : DIV 1, 2, 1 ; R1 = left / right
333 : LDA 4, 5(5) ; Recompute callee base from caller size
334 : ST 1, 1(4) ; Store argument 0 in callee frame
335 : LDA 4, 5(5) ; Recompute callee base from caller size
336 : LDA 6, 340(0) ; Return address
337 : ST 6, 0(4) ; Store return address into callee frame
338 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
339 : LDA 7, 253(0) ; Call isPrime
340 : LD 1, 2(5) ; Load callee result into R1
341 : LDC 2, 3(0) ; Callee frame size
342 : SUB 5, 5, 2 ; Pop back to caller
343 : LD 2, 3(5) ; Restore left operand from depth 0
344 : MUL 1, 2, 1 ; R1 = left AND right
345 : ST 1, 2(5) ; Store function result into frame return slot
346 : LD 6, 0(5) ; Load return address
347 : LDA 7, 0(6) ; Return to caller
348 : LD 1, 1(5) ; Load parameter 'n' into R1
349 : LDA 4, 4(5) ; Recompute callee base from caller size
350 : ST 1, 1(4) ; Store argument 0 in callee frame
351 : LDA 4, 4(5) ; Recompute callee base from caller size
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return address into callee frame
354 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
355 : LDA 7, 253(0) ; Call isPrime
356 : LD 1, 2(5) ; Load callee result into R1
357 : LDC 2, 3(0) ; Callee frame size
358 : SUB 5, 5, 2 ; Pop back to caller
359 : ST 1, 3(5) ; Spill left operand at depth 0
360 : LD 1, 1(5) ; Load parameter 'n' into R1
361 : LDA 4, 4(5) ; Recompute callee base from caller size
362 : ST 1, 1(4) ; Store argument 0 in callee frame
363 : LDA 4, 4(5) ; Recompute callee base from caller size
364 : LDA 6, 368(0) ; Return address
365 : ST 6, 0(4) ; Store return address into callee frame
366 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
367 : LDA 7, 161(0) ; Call reverse
368 : LD 1, 2(5) ; Load callee result into R1
369 : LDC 2, 3(0) ; Callee frame size
370 : SUB 5, 5, 2 ; Pop back to caller
371 : LDA 4, 4(5) ; Recompute callee base from caller size
372 : ST 1, 1(4) ; Store argument 0 in callee frame
373 : LDA 4, 4(5) ; Recompute callee base from caller size
374 : LDA 6, 378(0) ; Return address
375 : ST 6, 0(4) ; Store return address into callee frame
376 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
377 : LDA 7, 253(0) ; Call isPrime
378 : LD 1, 2(5) ; Load callee result into R1
379 : LDC 2, 3(0) ; Callee frame size
380 : SUB 5, 5, 2 ; Pop back to caller
381 : LD 2, 3(5) ; Restore left operand from depth 0
382 : MUL 1, 2, 1 ; R1 = left AND right
383 : ST 1, 2(5) ; Store function result into frame return slot
384 : LD 6, 0(5) ; Load return address
385 : LDA 7, 0(6) ; Return to caller
