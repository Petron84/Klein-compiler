0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LDC 1, 10(0) ; Load integer-literal into R1
13 : LDA 4, 4(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LD 1, 1(5) ; Load parameter 'length' into R1
16 : ST 1, 3(5) ; Spill left operand at depth 0
17 : LDC 1, 2(0) ; Load integer-literal into R1
18 : LD 2, 3(5) ; Restore left operand from depth 0
19 : DIV 1, 2, 1 ; R1 = left / right
20 : ST 1, 3(5) ; Spill left operand at depth 0
21 : LDC 1, 1(0) ; Load integer-literal into R1
22 : LD 2, 3(5) ; Restore left operand from depth 0
23 : SUB 1, 2, 1 ; R1 = left - right
24 : LDA 4, 4(5) ; Recompute callee base from caller size
25 : ST 1, 2(4) ; Store argument 1 in callee frame
26 : LDA 4, 4(5) ; Recompute callee base from caller size
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return address into callee frame
29 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
30 : LDA 7, 861(0) ; Call EXP
31 : LD 1, 3(5) ; Load callee result into R1
32 : LDC 2, 6(0) ; Callee frame size
33 : SUB 5, 5, 2 ; Pop back to caller
34 : LDA 4, 4(5) ; Recompute callee base from caller size
35 : ST 1, 1(4) ; Store argument 0 in callee frame
36 : LD 1, 1(5) ; Load parameter 'length' into R1
37 : ST 1, 3(5) ; Spill left operand at depth 0
38 : LDC 1, 2(0) ; Load integer-literal into R1
39 : LD 2, 3(5) ; Restore left operand from depth 0
40 : DIV 1, 2, 1 ; R1 = left / right
41 : LDA 4, 4(5) ; Recompute callee base from caller size
42 : ST 1, 2(4) ; Store argument 1 in callee frame
43 : LDA 4, 4(5) ; Recompute callee base from caller size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return address into callee frame
46 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
47 : LDA 7, 58(0) ; Call createLoop
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop back to caller
51 : ST 1, 2(5) ; Store result into caller’s return slot
52 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
53 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
54 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
55 : LD 1, 2(5) ; Load main return value into R1
56 : LD 6, 0(5) ; Load root return address from main frame
57 : LDA 7, 0(6) ; Return from main to runtime epilogue
58 : LD 1, 1(5) ; Load parameter 'a' into R1
59 : LDA 4, 5(5) ; Recompute callee base from caller size
60 : ST 1, 1(4) ; Store argument 0 in callee frame
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : LDA 4, 5(5) ; Recompute callee base from caller size
63 : ST 1, 2(4) ; Store argument 1 in callee frame
64 : LDC 1, 10(0) ; Load integer-literal into R1
65 : ST 1, 4(5) ; Spill left operand at depth 0
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : MUL 1, 2, 1 ; R1 = left * right
69 : LDA 4, 5(5) ; Recompute callee base from caller size
70 : ST 1, 3(4) ; Store argument 2 in callee frame
71 : LDA 4, 5(5) ; Recompute callee base from caller size
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return address into callee frame
74 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
75 : LDA 7, 82(0) ; Call aLoop
76 : LD 1, 4(5) ; Load callee result into R1
77 : LDC 2, 7(0) ; Callee frame size
78 : SUB 5, 5, 2 ; Pop back to caller
79 : ST 1, 3(5) ; Store function result into frame return slot
80 : LD 6, 0(5) ; Load return address
81 : LDA 7, 0(6) ; Return to caller
82 : LD 1, 1(5) ; Load parameter 'a' into R1
83 : ST 1, 5(5) ; Spill left operand at depth 0
84 : LD 1, 3(5) ; Load parameter 'upper' into R1
85 : LD 2, 5(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; left - right for less-than check
87 : JLT 1, 2(7) ; If R1 < 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : JEQ 1, 159(0) ; If condition is false, jump to ELSE
92 : LD 1, 1(5) ; Load parameter 'a' into R1
93 : LDA 4, 7(5) ; Recompute callee base from caller size
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : LDA 4, 7(5) ; Recompute callee base from caller size
97 : ST 1, 2(4) ; Store argument 1 in callee frame
98 : LD 1, 3(5) ; Load parameter 'upper' into R1
99 : LDA 4, 7(5) ; Recompute callee base from caller size
100 : ST 1, 3(4) ; Store argument 2 in callee frame
101 : LDC 1, 4(0) ; Load integer-literal into R1
102 : ST 1, 5(5) ; Spill left operand at depth 0
103 : LD 1, 1(5) ; Load parameter 'a' into R1
104 : LDA 4, 7(5) ; Recompute callee base from caller size
105 : ST 1, 1(4) ; Store argument 0 in callee frame
106 : LDC 1, 2(0) ; Load integer-literal into R1
107 : LDA 4, 7(5) ; Recompute callee base from caller size
108 : ST 1, 2(4) ; Store argument 1 in callee frame
109 : LDA 4, 7(5) ; Recompute callee base from caller size
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(4) ; Store return address into callee frame
112 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
113 : LDA 7, 861(0) ; Call EXP
114 : LD 1, 3(5) ; Load callee result into R1
115 : LDC 2, 6(0) ; Callee frame size
116 : SUB 5, 5, 2 ; Pop back to caller
117 : LD 2, 5(5) ; Restore left operand from depth 0
118 : MUL 1, 2, 1 ; R1 = left * right
119 : ST 1, 5(5) ; Spill left operand at depth 0
120 : LDC 1, 4(0) ; Load integer-literal into R1
121 : ST 1, 6(5) ; Spill left operand at depth 1
122 : LDC 1, 10(0) ; Load integer-literal into R1
123 : LDA 4, 7(5) ; Recompute callee base from caller size
124 : ST 1, 1(4) ; Store argument 0 in callee frame
125 : LD 1, 2(5) ; Load parameter 'n' into R1
126 : LDA 4, 7(5) ; Recompute callee base from caller size
127 : ST 1, 2(4) ; Store argument 1 in callee frame
128 : LDA 4, 7(5) ; Recompute callee base from caller size
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return address into callee frame
131 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
132 : LDA 7, 861(0) ; Call EXP
133 : LD 1, 3(5) ; Load callee result into R1
134 : LDC 2, 6(0) ; Callee frame size
135 : SUB 5, 5, 2 ; Pop back to caller
136 : LD 2, 6(5) ; Restore left operand from depth 1
137 : MUL 1, 2, 1 ; R1 = left * right
138 : ST 1, 6(5) ; Spill left operand at depth 1
139 : LD 1, 1(5) ; Load parameter 'a' into R1
140 : LD 2, 6(5) ; Restore left operand from depth 1
141 : MUL 1, 2, 1 ; R1 = left * right
142 : LD 2, 5(5) ; Restore left operand from depth 0
143 : ADD 1, 2, 1 ; R1 = left + right
144 : ST 1, 5(5) ; Spill left operand at depth 0
145 : LDC 1, 1(0) ; Load integer-literal into R1
146 : LD 2, 5(5) ; Restore left operand from depth 0
147 : ADD 1, 2, 1 ; R1 = left + right
148 : LDA 4, 7(5) ; Recompute callee base from caller size
149 : ST 1, 4(4) ; Store argument 3 in callee frame
150 : LDA 4, 7(5) ; Recompute callee base from caller size
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return address into callee frame
153 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
154 : LDA 7, 163(0) ; Call aLoop1
155 : LD 1, 5(5) ; Load callee result into R1
156 : LDC 2, 6(0) ; Callee frame size
157 : SUB 5, 5, 2 ; Pop back to caller
158 : LDA 7, 160(0) ; Skip ELSE block
159 : LDC 1, 1(0) ; Load boolean-literal into R1
160 : ST 1, 4(5) ; Store function result into frame return slot
161 : LD 6, 0(5) ; Load return address
162 : LDA 7, 0(6) ; Return to caller
163 : LD 1, 1(5) ; Load parameter 'a' into R1
164 : LDA 4, 6(5) ; Recompute callee base from caller size
165 : ST 1, 1(4) ; Store argument 0 in callee frame
166 : LD 1, 2(5) ; Load parameter 'n' into R1
167 : LDA 4, 6(5) ; Recompute callee base from caller size
168 : ST 1, 2(4) ; Store argument 1 in callee frame
169 : LD 1, 3(5) ; Load parameter 'upper' into R1
170 : LDA 4, 6(5) ; Recompute callee base from caller size
171 : ST 1, 3(4) ; Store argument 2 in callee frame
172 : LD 1, 4(5) ; Load parameter 'det' into R1
173 : LDA 4, 6(5) ; Recompute callee base from caller size
174 : ST 1, 4(4) ; Store argument 3 in callee frame
175 : LD 1, 4(5) ; Load parameter 'det' into R1
176 : LDA 4, 6(5) ; Recompute callee base from caller size
177 : ST 1, 1(4) ; Store argument 0 in callee frame
178 : LDA 4, 6(5) ; Recompute callee base from caller size
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return address into callee frame
181 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
182 : LDA 7, 774(0) ; Call SQRT
183 : LD 1, 2(5) ; Load callee result into R1
184 : LDC 2, 3(0) ; Callee frame size
185 : SUB 5, 5, 2 ; Pop back to caller
186 : LDA 4, 6(5) ; Recompute callee base from caller size
187 : ST 1, 5(4) ; Store argument 4 in callee frame
188 : LDA 4, 6(5) ; Recompute callee base from caller size
189 : LDA 6, 193(0) ; Return address
190 : ST 6, 0(4) ; Store return address into callee frame
191 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
192 : LDA 7, 199(0) ; Call aLoop2
193 : LD 1, 6(5) ; Load callee result into R1
194 : LDC 2, 9(0) ; Callee frame size
195 : SUB 5, 5, 2 ; Pop back to caller
196 : ST 1, 5(5) ; Store function result into frame return slot
197 : LD 6, 0(5) ; Load return address
198 : LDA 7, 0(6) ; Return to caller
199 : LD 1, 1(5) ; Load parameter 'a' into R1
200 : LDA 4, 9(5) ; Recompute callee base from caller size
201 : ST 1, 1(4) ; Store argument 0 in callee frame
202 : LD 1, 2(5) ; Load parameter 'n' into R1
203 : LDA 4, 9(5) ; Recompute callee base from caller size
204 : ST 1, 2(4) ; Store argument 1 in callee frame
205 : LD 1, 3(5) ; Load parameter 'upper' into R1
206 : LDA 4, 9(5) ; Recompute callee base from caller size
207 : ST 1, 3(4) ; Store argument 2 in callee frame
208 : LD 1, 4(5) ; Load parameter 'det' into R1
209 : LDA 4, 9(5) ; Recompute callee base from caller size
210 : ST 1, 4(4) ; Store argument 3 in callee frame
211 : LD 1, 5(5) ; Load parameter 'root' into R1
212 : LDA 4, 9(5) ; Recompute callee base from caller size
213 : ST 1, 5(4) ; Store argument 4 in callee frame
214 : LD 1, 1(5) ; Load parameter 'a' into R1
215 : ST 1, 7(5) ; Spill left operand at depth 0
216 : LDC 1, 10(0) ; Load integer-literal into R1
217 : LDA 4, 9(5) ; Recompute callee base from caller size
218 : ST 1, 1(4) ; Store argument 0 in callee frame
219 : LD 1, 2(5) ; Load parameter 'n' into R1
220 : LDA 4, 9(5) ; Recompute callee base from caller size
221 : ST 1, 2(4) ; Store argument 1 in callee frame
222 : LDA 4, 9(5) ; Recompute callee base from caller size
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return address into callee frame
225 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
226 : LDA 7, 861(0) ; Call EXP
227 : LD 1, 3(5) ; Load callee result into R1
228 : LDC 2, 6(0) ; Callee frame size
229 : SUB 5, 5, 2 ; Pop back to caller
230 : LD 2, 7(5) ; Restore left operand from depth 0
231 : MUL 1, 2, 1 ; R1 = left * right
232 : ST 1, 7(5) ; Spill left operand at depth 0
233 : LD 1, 5(5) ; Load parameter 'root' into R1
234 : ST 1, 8(5) ; Spill left operand at depth 1
235 : LDC 1, 1(0) ; Load integer-literal into R1
236 : LD 2, 8(5) ; Restore left operand from depth 1
237 : ADD 1, 2, 1 ; R1 = left + right
238 : ST 1, 8(5) ; Spill left operand at depth 1
239 : LDC 1, 2(0) ; Load integer-literal into R1
240 : LD 2, 8(5) ; Restore left operand from depth 1
241 : DIV 1, 2, 1 ; R1 = left / right
242 : LD 2, 7(5) ; Restore left operand from depth 0
243 : ADD 1, 2, 1 ; R1 = left + right
244 : LDA 4, 9(5) ; Recompute callee base from caller size
245 : ST 1, 6(4) ; Store argument 5 in callee frame
246 : LDA 4, 9(5) ; Recompute callee base from caller size
247 : LDA 6, 251(0) ; Return address
248 : ST 6, 0(4) ; Store return address into callee frame
249 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
250 : LDA 7, 257(0) ; Call aLoop3
251 : LD 1, 7(5) ; Load callee result into R1
252 : LDC 2, 10(0) ; Callee frame size
253 : SUB 5, 5, 2 ; Pop back to caller
254 : ST 1, 6(5) ; Store function result into frame return slot
255 : LD 6, 0(5) ; Load return address
256 : LDA 7, 0(6) ; Return to caller
257 : LD 1, 5(5) ; Load parameter 'root' into R1
258 : LDA 4, 10(5) ; Recompute callee base from caller size
259 : ST 1, 1(4) ; Store argument 0 in callee frame
260 : LD 1, 4(5) ; Load parameter 'det' into R1
261 : LDA 4, 10(5) ; Recompute callee base from caller size
262 : ST 1, 2(4) ; Store argument 1 in callee frame
263 : LDA 4, 10(5) ; Recompute callee base from caller size
264 : LDA 6, 268(0) ; Return address
265 : ST 6, 0(4) ; Store return address into callee frame
266 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
267 : LDA 7, 596(0) ; Call ISROOT
268 : LD 1, 3(5) ; Load callee result into R1
269 : LDC 2, 6(0) ; Callee frame size
270 : SUB 5, 5, 2 ; Pop back to caller
271 : ST 1, 8(5) ; Spill left operand at depth 0
272 : LD 1, 5(5) ; Load parameter 'root' into R1
273 : ST 1, 9(5) ; Spill left operand at depth 1
274 : LDC 1, 1(0) ; Load integer-literal into R1
275 : LD 2, 9(5) ; Restore left operand from depth 1
276 : ADD 1, 2, 1 ; R1 = left + right
277 : LDA 4, 10(5) ; Recompute callee base from caller size
278 : ST 1, 1(4) ; Store argument 0 in callee frame
279 : LDA 4, 10(5) ; Recompute callee base from caller size
280 : LDA 6, 284(0) ; Return address
281 : ST 6, 0(4) ; Store return address into callee frame
282 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
283 : LDA 7, 612(0) ; Call EVEN
284 : LD 1, 2(5) ; Load callee result into R1
285 : LDC 2, 6(0) ; Callee frame size
286 : SUB 5, 5, 2 ; Pop back to caller
287 : LD 2, 8(5) ; Restore left operand from depth 0
288 : MUL 1, 2, 1 ; R1 = left AND right
289 : ST 1, 8(5) ; Spill left operand at depth 0
290 : LD 1, 6(5) ; Load parameter 'candidate' into R1
291 : LDA 4, 10(5) ; Recompute callee base from caller size
292 : ST 1, 1(4) ; Store argument 0 in callee frame
293 : LDA 4, 10(5) ; Recompute callee base from caller size
294 : LDA 6, 298(0) ; Return address
295 : ST 6, 0(4) ; Store return address into callee frame
296 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
297 : LDA 7, 381(0) ; Call isExcellent
298 : LD 1, 2(5) ; Load callee result into R1
299 : LDC 2, 3(0) ; Callee frame size
300 : SUB 5, 5, 2 ; Pop back to caller
301 : LD 2, 8(5) ; Restore left operand from depth 0
302 : MUL 1, 2, 1 ; R1 = left AND right
303 : JEQ 1, 325(0) ; If condition is false, jump to ELSE
304 : LD 1, 1(5) ; Load parameter 'a' into R1
305 : LDA 4, 10(5) ; Recompute callee base from caller size
306 : ST 1, 1(4) ; Store argument 0 in callee frame
307 : LD 1, 2(5) ; Load parameter 'n' into R1
308 : LDA 4, 10(5) ; Recompute callee base from caller size
309 : ST 1, 2(4) ; Store argument 1 in callee frame
310 : LD 1, 3(5) ; Load parameter 'upper' into R1
311 : LDA 4, 10(5) ; Recompute callee base from caller size
312 : ST 1, 3(4) ; Store argument 2 in callee frame
313 : LD 1, 6(5) ; Load parameter 'candidate' into R1
314 : LDA 4, 10(5) ; Recompute callee base from caller size
315 : ST 1, 4(4) ; Store argument 3 in callee frame
316 : LDA 4, 10(5) ; Recompute callee base from caller size
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return address into callee frame
319 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
320 : LDA 7, 349(0) ; Call printCandidateAndContinue
321 : LD 1, 5(5) ; Load callee result into R1
322 : LDC 2, 7(0) ; Callee frame size
323 : SUB 5, 5, 2 ; Pop back to caller
324 : LDA 7, 346(0) ; Skip ELSE block
325 : LD 1, 1(5) ; Load parameter 'a' into R1
326 : ST 1, 8(5) ; Spill left operand at depth 0
327 : LDC 1, 1(0) ; Load integer-literal into R1
328 : LD 2, 8(5) ; Restore left operand from depth 0
329 : ADD 1, 2, 1 ; R1 = left + right
330 : LDA 4, 10(5) ; Recompute callee base from caller size
331 : ST 1, 1(4) ; Store argument 0 in callee frame
332 : LD 1, 2(5) ; Load parameter 'n' into R1
333 : LDA 4, 10(5) ; Recompute callee base from caller size
334 : ST 1, 2(4) ; Store argument 1 in callee frame
335 : LD 1, 3(5) ; Load parameter 'upper' into R1
336 : LDA 4, 10(5) ; Recompute callee base from caller size
337 : ST 1, 3(4) ; Store argument 2 in callee frame
338 : LDA 4, 10(5) ; Recompute callee base from caller size
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return address into callee frame
341 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
342 : LDA 7, 82(0) ; Call aLoop
343 : LD 1, 4(5) ; Load callee result into R1
344 : LDC 2, 7(0) ; Callee frame size
345 : SUB 5, 5, 2 ; Pop back to caller
346 : ST 1, 7(5) ; Store function result into frame return slot
347 : LD 6, 0(5) ; Load return address
348 : LDA 7, 0(6) ; Return to caller
349 : LD 1, 4(5) ; Load parameter 'candidate' into R1
350 : LDA 4, 7(5) ; Recompute callee base from caller size
351 : LDA 6, 355(0) ; Return address
352 : ST 6, 0(4) ; Store return address in callee frame
353 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
354 : LDA 7, 9(0) ; Call built-in print
355 : LDC 2, 3(0) ; Callee frame size
356 : SUB 5, 5, 2 ; Pop back to caller
357 : LD 1, 1(5) ; Load parameter 'a' into R1
358 : ST 1, 6(5) ; Spill left operand at depth 0
359 : LDC 1, 1(0) ; Load integer-literal into R1
360 : LD 2, 6(5) ; Restore left operand from depth 0
361 : ADD 1, 2, 1 ; R1 = left + right
362 : LDA 4, 7(5) ; Recompute callee base from caller size
363 : ST 1, 1(4) ; Store argument 0 in callee frame
364 : LD 1, 2(5) ; Load parameter 'n' into R1
365 : LDA 4, 7(5) ; Recompute callee base from caller size
366 : ST 1, 2(4) ; Store argument 1 in callee frame
367 : LD 1, 3(5) ; Load parameter 'upper' into R1
368 : LDA 4, 7(5) ; Recompute callee base from caller size
369 : ST 1, 3(4) ; Store argument 2 in callee frame
370 : LDA 4, 7(5) ; Recompute callee base from caller size
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return address into callee frame
373 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
374 : LDA 7, 82(0) ; Call aLoop
375 : LD 1, 4(5) ; Load callee result into R1
376 : LDC 2, 7(0) ; Callee frame size
377 : SUB 5, 5, 2 ; Pop back to caller
378 : ST 1, 5(5) ; Store function result into frame return slot
379 : LD 6, 0(5) ; Load return address
380 : LDA 7, 0(6) ; Return to caller
381 : LD 1, 1(5) ; Load parameter 'n' into R1
382 : LDA 4, 3(5) ; Recompute callee base from caller size
383 : ST 1, 1(4) ; Store argument 0 in callee frame
384 : LD 1, 1(5) ; Load parameter 'n' into R1
385 : LDA 4, 3(5) ; Recompute callee base from caller size
386 : ST 1, 1(4) ; Store argument 0 in callee frame
387 : LDA 4, 3(5) ; Recompute callee base from caller size
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(4) ; Store return address into callee frame
390 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
391 : LDA 7, 562(0) ; Call length
392 : LD 1, 2(5) ; Load callee result into R1
393 : LDC 2, 5(0) ; Callee frame size
394 : SUB 5, 5, 2 ; Pop back to caller
395 : LDA 4, 3(5) ; Recompute callee base from caller size
396 : ST 1, 2(4) ; Store argument 1 in callee frame
397 : LDA 4, 3(5) ; Recompute callee base from caller size
398 : LDA 6, 402(0) ; Return address
399 : ST 6, 0(4) ; Store return address into callee frame
400 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
401 : LDA 7, 408(0) ; Call isExcellentSwitch
402 : LD 1, 3(5) ; Load callee result into R1
403 : LDC 2, 5(0) ; Callee frame size
404 : SUB 5, 5, 2 ; Pop back to caller
405 : ST 1, 2(5) ; Store function result into frame return slot
406 : LD 6, 0(5) ; Load return address
407 : LDA 7, 0(6) ; Return to caller
408 : LD 1, 2(5) ; Load parameter 'length' into R1
409 : LDA 4, 5(5) ; Recompute callee base from caller size
410 : ST 1, 1(4) ; Store argument 0 in callee frame
411 : LDA 4, 5(5) ; Recompute callee base from caller size
412 : LDA 6, 416(0) ; Return address
413 : ST 6, 0(4) ; Store return address into callee frame
414 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
415 : LDA 7, 818(0) ; Call ODD
416 : LD 1, 2(5) ; Load callee result into R1
417 : LDC 2, 5(0) ; Callee frame size
418 : SUB 5, 5, 2 ; Pop back to caller
419 : JEQ 1, 422(0) ; If condition is false, jump to ELSE
420 : LDC 1, 0(0) ; Load boolean-literal into R1
421 : LDA 7, 464(0) ; Skip ELSE block
422 : LD 1, 1(5) ; Load parameter 'n' into R1
423 : ST 1, 4(5) ; Spill left operand at depth 0
424 : LD 1, 1(5) ; Load parameter 'n' into R1
425 : LDA 4, 5(5) ; Recompute callee base from caller size
426 : ST 1, 1(4) ; Store argument 0 in callee frame
427 : LDA 4, 5(5) ; Recompute callee base from caller size
428 : LDA 6, 432(0) ; Return address
429 : ST 6, 0(4) ; Store return address into callee frame
430 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
431 : LDA 7, 527(0) ; Call a
432 : LD 1, 2(5) ; Load callee result into R1
433 : LDC 2, 5(0) ; Callee frame size
434 : SUB 5, 5, 2 ; Pop back to caller
435 : LDA 4, 5(5) ; Recompute callee base from caller size
436 : ST 1, 1(4) ; Store argument 0 in callee frame
437 : LD 1, 1(5) ; Load parameter 'n' into R1
438 : LDA 4, 5(5) ; Recompute callee base from caller size
439 : ST 1, 1(4) ; Store argument 0 in callee frame
440 : LDA 4, 5(5) ; Recompute callee base from caller size
441 : LDA 6, 445(0) ; Return address
442 : ST 6, 0(4) ; Store return address into callee frame
443 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
444 : LDA 7, 483(0) ; Call b
445 : LD 1, 2(5) ; Load callee result into R1
446 : LDC 2, 4(0) ; Callee frame size
447 : SUB 5, 5, 2 ; Pop back to caller
448 : LDA 4, 5(5) ; Recompute callee base from caller size
449 : ST 1, 2(4) ; Store argument 1 in callee frame
450 : LDA 4, 5(5) ; Recompute callee base from caller size
451 : LDA 6, 455(0) ; Return address
452 : ST 6, 0(4) ; Store return address into callee frame
453 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
454 : LDA 7, 467(0) ; Call excellentDiff
455 : LD 1, 3(5) ; Load callee result into R1
456 : LDC 2, 6(0) ; Callee frame size
457 : SUB 5, 5, 2 ; Pop back to caller
458 : LD 2, 4(5) ; Restore left operand from depth 0
459 : SUB 1, 2, 1 ; left - right for equality check
460 : JEQ 1, 2(7) ; If R1 == 0, jump to true
461 : LDC 1, 0(0) ; false
462 : LDA 7, 1(7) ; skip setting true
463 : LDC 1, 1(0) ; true
464 : ST 1, 3(5) ; Store function result into frame return slot
465 : LD 6, 0(5) ; Load return address
466 : LDA 7, 0(6) ; Return to caller
467 : LD 1, 2(5) ; Load parameter 'b' into R1
468 : ST 1, 4(5) ; Spill left operand at depth 0
469 : LD 1, 2(5) ; Load parameter 'b' into R1
470 : LD 2, 4(5) ; Restore left operand from depth 0
471 : MUL 1, 2, 1 ; R1 = left * right
472 : ST 1, 4(5) ; Spill left operand at depth 0
473 : LD 1, 1(5) ; Load parameter 'a' into R1
474 : ST 1, 5(5) ; Spill left operand at depth 1
475 : LD 1, 1(5) ; Load parameter 'a' into R1
476 : LD 2, 5(5) ; Restore left operand from depth 1
477 : MUL 1, 2, 1 ; R1 = left * right
478 : LD 2, 4(5) ; Restore left operand from depth 0
479 : SUB 1, 2, 1 ; R1 = left - right
480 : ST 1, 3(5) ; Store function result into frame return slot
481 : LD 6, 0(5) ; Load return address
482 : LDA 7, 0(6) ; Return to caller
483 : LD 1, 1(5) ; Load parameter 'n' into R1
484 : LDA 4, 4(5) ; Recompute callee base from caller size
485 : ST 1, 1(4) ; Store argument 0 in callee frame
486 : LDC 1, 10(0) ; Load integer-literal into R1
487 : LDA 4, 4(5) ; Recompute callee base from caller size
488 : ST 1, 1(4) ; Store argument 0 in callee frame
489 : LD 1, 1(5) ; Load parameter 'n' into R1
490 : LDA 4, 4(5) ; Recompute callee base from caller size
491 : ST 1, 1(4) ; Store argument 0 in callee frame
492 : LDA 4, 4(5) ; Recompute callee base from caller size
493 : LDA 6, 497(0) ; Return address
494 : ST 6, 0(4) ; Store return address into callee frame
495 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
496 : LDA 7, 562(0) ; Call length
497 : LD 1, 2(5) ; Load callee result into R1
498 : LDC 2, 5(0) ; Callee frame size
499 : SUB 5, 5, 2 ; Pop back to caller
500 : ST 1, 3(5) ; Spill left operand at depth 0
501 : LDC 1, 2(0) ; Load integer-literal into R1
502 : LD 2, 3(5) ; Restore left operand from depth 0
503 : DIV 1, 2, 1 ; R1 = left / right
504 : LDA 4, 4(5) ; Recompute callee base from caller size
505 : ST 1, 2(4) ; Store argument 1 in callee frame
506 : LDA 4, 4(5) ; Recompute callee base from caller size
507 : LDA 6, 511(0) ; Return address
508 : ST 6, 0(4) ; Store return address into callee frame
509 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
510 : LDA 7, 861(0) ; Call EXP
511 : LD 1, 3(5) ; Load callee result into R1
512 : LDC 2, 6(0) ; Callee frame size
513 : SUB 5, 5, 2 ; Pop back to caller
514 : LDA 4, 4(5) ; Recompute callee base from caller size
515 : ST 1, 2(4) ; Store argument 1 in callee frame
516 : LDA 4, 4(5) ; Recompute callee base from caller size
517 : LDA 6, 521(0) ; Return address
518 : ST 6, 0(4) ; Store return address into callee frame
519 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
520 : LDA 7, 898(0) ; Call MOD
521 : LD 1, 3(5) ; Load callee result into R1
522 : LDC 2, 7(0) ; Callee frame size
523 : SUB 5, 5, 2 ; Pop back to caller
524 : ST 1, 2(5) ; Store function result into frame return slot
525 : LD 6, 0(5) ; Load return address
526 : LDA 7, 0(6) ; Return to caller
527 : LD 1, 1(5) ; Load parameter 'n' into R1
528 : ST 1, 3(5) ; Spill left operand at depth 0
529 : LDC 1, 10(0) ; Load integer-literal into R1
530 : LDA 4, 5(5) ; Recompute callee base from caller size
531 : ST 1, 1(4) ; Store argument 0 in callee frame
532 : LD 1, 1(5) ; Load parameter 'n' into R1
533 : LDA 4, 5(5) ; Recompute callee base from caller size
534 : ST 1, 1(4) ; Store argument 0 in callee frame
535 : LDA 4, 5(5) ; Recompute callee base from caller size
536 : LDA 6, 540(0) ; Return address
537 : ST 6, 0(4) ; Store return address into callee frame
538 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
539 : LDA 7, 562(0) ; Call length
540 : LD 1, 2(5) ; Load callee result into R1
541 : LDC 2, 5(0) ; Callee frame size
542 : SUB 5, 5, 2 ; Pop back to caller
543 : ST 1, 4(5) ; Spill left operand at depth 1
544 : LDC 1, 2(0) ; Load integer-literal into R1
545 : LD 2, 4(5) ; Restore left operand from depth 1
546 : DIV 1, 2, 1 ; R1 = left / right
547 : LDA 4, 5(5) ; Recompute callee base from caller size
548 : ST 1, 2(4) ; Store argument 1 in callee frame
549 : LDA 4, 5(5) ; Recompute callee base from caller size
550 : LDA 6, 554(0) ; Return address
551 : ST 6, 0(4) ; Store return address into callee frame
552 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
553 : LDA 7, 861(0) ; Call EXP
554 : LD 1, 3(5) ; Load callee result into R1
555 : LDC 2, 6(0) ; Callee frame size
556 : SUB 5, 5, 2 ; Pop back to caller
557 : LD 2, 3(5) ; Restore left operand from depth 0
558 : DIV 1, 2, 1 ; R1 = left / right
559 : ST 1, 2(5) ; Store function result into frame return slot
560 : LD 6, 0(5) ; Load return address
561 : LDA 7, 0(6) ; Return to caller
562 : LD 1, 1(5) ; Load parameter 'n' into R1
563 : ST 1, 3(5) ; Spill left operand at depth 0
564 : LDC 1, 10(0) ; Load integer-literal into R1
565 : LD 2, 3(5) ; Restore left operand from depth 0
566 : SUB 1, 2, 1 ; left - right for less-than check
567 : JLT 1, 2(7) ; If R1 < 0, jump to true
568 : LDC 1, 0(0) ; false
569 : LDA 7, 1(7) ; skip setting true
570 : LDC 1, 1(0) ; true
571 : JEQ 1, 574(0) ; If condition is false, jump to ELSE
572 : LDC 1, 1(0) ; Load integer-literal into R1
573 : LDA 7, 593(0) ; Skip ELSE block
574 : LDC 1, 1(0) ; Load integer-literal into R1
575 : ST 1, 3(5) ; Spill left operand at depth 0
576 : LD 1, 1(5) ; Load parameter 'n' into R1
577 : ST 1, 4(5) ; Spill left operand at depth 1
578 : LDC 1, 10(0) ; Load integer-literal into R1
579 : LD 2, 4(5) ; Restore left operand from depth 1
580 : DIV 1, 2, 1 ; R1 = left / right
581 : LDA 4, 5(5) ; Recompute callee base from caller size
582 : ST 1, 1(4) ; Store argument 0 in callee frame
583 : LDA 4, 5(5) ; Recompute callee base from caller size
584 : LDA 6, 588(0) ; Return address
585 : ST 6, 0(4) ; Store return address into callee frame
586 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
587 : LDA 7, 562(0) ; Call length
588 : LD 1, 2(5) ; Load callee result into R1
589 : LDC 2, 5(0) ; Callee frame size
590 : SUB 5, 5, 2 ; Pop back to caller
591 : LD 2, 3(5) ; Restore left operand from depth 0
592 : ADD 1, 2, 1 ; R1 = left + right
593 : ST 1, 2(5) ; Store function result into frame return slot
594 : LD 6, 0(5) ; Load return address
595 : LDA 7, 0(6) ; Return to caller
596 : LD 1, 2(5) ; Load parameter 'n' into R1
597 : ST 1, 4(5) ; Spill left operand at depth 0
598 : LD 1, 1(5) ; Load parameter 'r' into R1
599 : ST 1, 5(5) ; Spill left operand at depth 1
600 : LD 1, 1(5) ; Load parameter 'r' into R1
601 : LD 2, 5(5) ; Restore left operand from depth 1
602 : MUL 1, 2, 1 ; R1 = left * right
603 : LD 2, 4(5) ; Restore left operand from depth 0
604 : SUB 1, 2, 1 ; left - right for equality check
605 : JEQ 1, 2(7) ; If R1 == 0, jump to true
606 : LDC 1, 0(0) ; false
607 : LDA 7, 1(7) ; skip setting true
608 : LDC 1, 1(0) ; true
609 : ST 1, 3(5) ; Store function result into frame return slot
610 : LD 6, 0(5) ; Load return address
611 : LDA 7, 0(6) ; Return to caller
612 : LD 1, 1(5) ; Load parameter 'n' into R1
613 : ST 1, 3(5) ; Spill left operand at depth 0
614 : LDC 1, 2(0) ; Load integer-literal into R1
615 : ST 1, 4(5) ; Spill left operand at depth 1
616 : LD 1, 1(5) ; Load parameter 'n' into R1
617 : ST 1, 5(5) ; Spill left operand at depth 2
618 : LDC 1, 2(0) ; Load integer-literal into R1
619 : LD 2, 5(5) ; Restore left operand from depth 2
620 : DIV 1, 2, 1 ; R1 = left / right
621 : LD 2, 4(5) ; Restore left operand from depth 1
622 : MUL 1, 2, 1 ; R1 = left * right
623 : LD 2, 3(5) ; Restore left operand from depth 0
624 : SUB 1, 2, 1 ; left - right for equality check
625 : JEQ 1, 2(7) ; If R1 == 0, jump to true
626 : LDC 1, 0(0) ; false
627 : LDA 7, 1(7) ; skip setting true
628 : LDC 1, 1(0) ; true
629 : ST 1, 2(5) ; Store function result into frame return slot
630 : LD 6, 0(5) ; Load return address
631 : LDA 7, 0(6) ; Return to caller
632 : LD 1, 4(5) ; Load parameter 'mid' into R1
633 : ST 1, 6(5) ; Spill left operand at depth 0
634 : LD 1, 4(5) ; Load parameter 'mid' into R1
635 : LD 2, 6(5) ; Restore left operand from depth 0
636 : MUL 1, 2, 1 ; R1 = left * right
637 : LDA 4, 7(5) ; Recompute callee base from caller size
638 : ST 1, 1(4) ; Store argument 0 in callee frame
639 : LD 1, 1(5) ; Load parameter 'n' into R1
640 : LDA 4, 7(5) ; Recompute callee base from caller size
641 : ST 1, 2(4) ; Store argument 1 in callee frame
642 : LDA 4, 7(5) ; Recompute callee base from caller size
643 : LDA 6, 647(0) ; Return address
644 : ST 6, 0(4) ; Store return address into callee frame
645 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
646 : LDA 7, 794(0) ; Call LE
647 : LD 1, 3(5) ; Load callee result into R1
648 : LDC 2, 6(0) ; Callee frame size
649 : SUB 5, 5, 2 ; Pop back to caller
650 : JEQ 1, 669(0) ; If condition is false, jump to ELSE
651 : LD 1, 1(5) ; Load parameter 'n' into R1
652 : LDA 4, 7(5) ; Recompute callee base from caller size
653 : ST 1, 1(4) ; Store argument 0 in callee frame
654 : LD 1, 4(5) ; Load parameter 'mid' into R1
655 : LDA 4, 7(5) ; Recompute callee base from caller size
656 : ST 1, 2(4) ; Store argument 1 in callee frame
657 : LD 1, 3(5) ; Load parameter 'high' into R1
658 : LDA 4, 7(5) ; Recompute callee base from caller size
659 : ST 1, 3(4) ; Store argument 2 in callee frame
660 : LDA 4, 7(5) ; Recompute callee base from caller size
661 : LDA 6, 665(0) ; Return address
662 : ST 6, 0(4) ; Store return address into callee frame
663 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
664 : LDA 7, 689(0) ; Call SQRTSEARCH
665 : LD 1, 4(5) ; Load callee result into R1
666 : LDC 2, 7(0) ; Callee frame size
667 : SUB 5, 5, 2 ; Pop back to caller
668 : LDA 7, 686(0) ; Skip ELSE block
669 : LD 1, 1(5) ; Load parameter 'n' into R1
670 : LDA 4, 7(5) ; Recompute callee base from caller size
671 : ST 1, 1(4) ; Store argument 0 in callee frame
672 : LD 1, 2(5) ; Load parameter 'low' into R1
673 : LDA 4, 7(5) ; Recompute callee base from caller size
674 : ST 1, 2(4) ; Store argument 1 in callee frame
675 : LD 1, 4(5) ; Load parameter 'mid' into R1
676 : LDA 4, 7(5) ; Recompute callee base from caller size
677 : ST 1, 3(4) ; Store argument 2 in callee frame
678 : LDA 4, 7(5) ; Recompute callee base from caller size
679 : LDA 6, 683(0) ; Return address
680 : ST 6, 0(4) ; Store return address into callee frame
681 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
682 : LDA 7, 689(0) ; Call SQRTSEARCH
683 : LD 1, 4(5) ; Load callee result into R1
684 : LDC 2, 7(0) ; Callee frame size
685 : SUB 5, 5, 2 ; Pop back to caller
686 : ST 1, 5(5) ; Store function result into frame return slot
687 : LD 6, 0(5) ; Load return address
688 : LDA 7, 0(6) ; Return to caller
689 : LD 1, 3(5) ; Load parameter 'high' into R1
690 : LDA 4, 7(5) ; Recompute callee base from caller size
691 : ST 1, 1(4) ; Store argument 0 in callee frame
692 : LD 1, 2(5) ; Load parameter 'low' into R1
693 : ST 1, 5(5) ; Spill left operand at depth 0
694 : LDC 1, 1(0) ; Load integer-literal into R1
695 : LD 2, 5(5) ; Restore left operand from depth 0
696 : ADD 1, 2, 1 ; R1 = left + right
697 : LDA 4, 7(5) ; Recompute callee base from caller size
698 : ST 1, 2(4) ; Store argument 1 in callee frame
699 : LDA 4, 7(5) ; Recompute callee base from caller size
700 : LDA 6, 704(0) ; Return address
701 : ST 6, 0(4) ; Store return address into callee frame
702 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
703 : LDA 7, 794(0) ; Call LE
704 : LD 1, 3(5) ; Load callee result into R1
705 : LDC 2, 6(0) ; Callee frame size
706 : SUB 5, 5, 2 ; Pop back to caller
707 : JEQ 1, 743(0) ; If condition is false, jump to ELSE
708 : LD 1, 1(5) ; Load parameter 'n' into R1
709 : ST 1, 5(5) ; Spill left operand at depth 0
710 : LD 1, 2(5) ; Load parameter 'low' into R1
711 : ST 1, 6(5) ; Spill left operand at depth 1
712 : LD 1, 2(5) ; Load parameter 'low' into R1
713 : LD 2, 6(5) ; Restore left operand from depth 1
714 : MUL 1, 2, 1 ; R1 = left * right
715 : LD 2, 5(5) ; Restore left operand from depth 0
716 : SUB 1, 2, 1 ; R1 = left - right
717 : LDA 4, 7(5) ; Recompute callee base from caller size
718 : ST 1, 1(4) ; Store argument 0 in callee frame
719 : LD 1, 3(5) ; Load parameter 'high' into R1
720 : ST 1, 5(5) ; Spill left operand at depth 0
721 : LD 1, 3(5) ; Load parameter 'high' into R1
722 : LD 2, 5(5) ; Restore left operand from depth 0
723 : MUL 1, 2, 1 ; R1 = left * right
724 : ST 1, 5(5) ; Spill left operand at depth 0
725 : LD 1, 1(5) ; Load parameter 'n' into R1
726 : LD 2, 5(5) ; Restore left operand from depth 0
727 : SUB 1, 2, 1 ; R1 = left - right
728 : LDA 4, 7(5) ; Recompute callee base from caller size
729 : ST 1, 2(4) ; Store argument 1 in callee frame
730 : LDA 4, 7(5) ; Recompute callee base from caller size
731 : LDA 6, 735(0) ; Return address
732 : ST 6, 0(4) ; Store return address into callee frame
733 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
734 : LDA 7, 794(0) ; Call LE
735 : LD 1, 3(5) ; Load callee result into R1
736 : LDC 2, 6(0) ; Callee frame size
737 : SUB 5, 5, 2 ; Pop back to caller
738 : JEQ 1, 741(0) ; If condition is false, jump to ELSE
739 : LD 1, 2(5) ; Load parameter 'low' into R1
740 : LDA 7, 742(0) ; Skip ELSE block
741 : LD 1, 3(5) ; Load parameter 'high' into R1
742 : LDA 7, 771(0) ; Skip ELSE block
743 : LD 1, 1(5) ; Load parameter 'n' into R1
744 : LDA 4, 7(5) ; Recompute callee base from caller size
745 : ST 1, 1(4) ; Store argument 0 in callee frame
746 : LD 1, 2(5) ; Load parameter 'low' into R1
747 : LDA 4, 7(5) ; Recompute callee base from caller size
748 : ST 1, 2(4) ; Store argument 1 in callee frame
749 : LD 1, 3(5) ; Load parameter 'high' into R1
750 : LDA 4, 7(5) ; Recompute callee base from caller size
751 : ST 1, 3(4) ; Store argument 2 in callee frame
752 : LD 1, 2(5) ; Load parameter 'low' into R1
753 : ST 1, 5(5) ; Spill left operand at depth 0
754 : LD 1, 3(5) ; Load parameter 'high' into R1
755 : LD 2, 5(5) ; Restore left operand from depth 0
756 : ADD 1, 2, 1 ; R1 = left + right
757 : ST 1, 5(5) ; Spill left operand at depth 0
758 : LDC 1, 2(0) ; Load integer-literal into R1
759 : LD 2, 5(5) ; Restore left operand from depth 0
760 : DIV 1, 2, 1 ; R1 = left / right
761 : LDA 4, 7(5) ; Recompute callee base from caller size
762 : ST 1, 4(4) ; Store argument 3 in callee frame
763 : LDA 4, 7(5) ; Recompute callee base from caller size
764 : LDA 6, 768(0) ; Return address
765 : ST 6, 0(4) ; Store return address into callee frame
766 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
767 : LDA 7, 632(0) ; Call SQRTSPLIT
768 : LD 1, 5(5) ; Load callee result into R1
769 : LDC 2, 7(0) ; Callee frame size
770 : SUB 5, 5, 2 ; Pop back to caller
771 : ST 1, 4(5) ; Store function result into frame return slot
772 : LD 6, 0(5) ; Load return address
773 : LDA 7, 0(6) ; Return to caller
774 : LD 1, 1(5) ; Load parameter 'n' into R1
775 : LDA 4, 3(5) ; Recompute callee base from caller size
776 : ST 1, 1(4) ; Store argument 0 in callee frame
777 : LDC 1, 0(0) ; Load integer-literal into R1
778 : LDA 4, 3(5) ; Recompute callee base from caller size
779 : ST 1, 2(4) ; Store argument 1 in callee frame
780 : LD 1, 1(5) ; Load parameter 'n' into R1
781 : LDA 4, 3(5) ; Recompute callee base from caller size
782 : ST 1, 3(4) ; Store argument 2 in callee frame
783 : LDA 4, 3(5) ; Recompute callee base from caller size
784 : LDA 6, 788(0) ; Return address
785 : ST 6, 0(4) ; Store return address into callee frame
786 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
787 : LDA 7, 689(0) ; Call SQRTSEARCH
788 : LD 1, 4(5) ; Load callee result into R1
789 : LDC 2, 7(0) ; Callee frame size
790 : SUB 5, 5, 2 ; Pop back to caller
791 : ST 1, 2(5) ; Store function result into frame return slot
792 : LD 6, 0(5) ; Load return address
793 : LDA 7, 0(6) ; Return to caller
794 : LD 1, 1(5) ; Load parameter 'p' into R1
795 : ST 1, 4(5) ; Spill left operand at depth 0
796 : LD 1, 2(5) ; Load parameter 'q' into R1
797 : LD 2, 4(5) ; Restore left operand from depth 0
798 : SUB 1, 2, 1 ; left - right for less-than check
799 : JLT 1, 2(7) ; If R1 < 0, jump to true
800 : LDC 1, 0(0) ; false
801 : LDA 7, 1(7) ; skip setting true
802 : LDC 1, 1(0) ; true
803 : ST 1, 4(5) ; Spill left operand at depth 0
804 : LD 1, 1(5) ; Load parameter 'p' into R1
805 : ST 1, 5(5) ; Spill left operand at depth 1
806 : LD 1, 2(5) ; Load parameter 'q' into R1
807 : LD 2, 5(5) ; Restore left operand from depth 1
808 : SUB 1, 2, 1 ; left - right for equality check
809 : JEQ 1, 2(7) ; If R1 == 0, jump to true
810 : LDC 1, 0(0) ; false
811 : LDA 7, 1(7) ; skip setting true
812 : LDC 1, 1(0) ; true
813 : LD 2, 4(5) ; Restore left operand from depth 0
814 : ADD 1, 2, 1 ; R1 = left OR right
815 : ST 1, 3(5) ; Store function result into frame return slot
816 : LD 6, 0(5) ; Load return address
817 : LDA 7, 0(6) ; Return to caller
818 : LDC 1, 0(0) ; Load integer-literal into R1
819 : ST 1, 3(5) ; Spill left operand at depth 0
820 : LD 1, 1(5) ; Load parameter 'n' into R1
821 : LD 2, 3(5) ; Restore left operand from depth 0
822 : SUB 1, 2, 1 ; left - right for less-than check
823 : JLT 1, 2(7) ; If R1 < 0, jump to true
824 : LDC 1, 0(0) ; false
825 : LDA 7, 1(7) ; skip setting true
826 : LDC 1, 1(0) ; true
827 : JEQ 1, 846(0) ; If condition is false, jump to ELSE
828 : LDC 1, 2(0) ; Load integer-literal into R1
829 : ST 1, 3(5) ; Spill left operand at depth 0
830 : LD 1, 1(5) ; Load parameter 'n' into R1
831 : ST 1, 4(5) ; Spill left operand at depth 1
832 : LDC 1, 2(0) ; Load integer-literal into R1
833 : LD 2, 4(5) ; Restore left operand from depth 1
834 : DIV 1, 2, 1 ; R1 = left / right
835 : LD 2, 3(5) ; Restore left operand from depth 0
836 : MUL 1, 2, 1 ; R1 = left * right
837 : ST 1, 3(5) ; Spill left operand at depth 0
838 : LD 1, 1(5) ; Load parameter 'n' into R1
839 : LD 2, 3(5) ; Restore left operand from depth 0
840 : SUB 1, 2, 1 ; left - right for less-than check
841 : JLT 1, 2(7) ; If R1 < 0, jump to true
842 : LDC 1, 0(0) ; false
843 : LDA 7, 1(7) ; skip setting true
844 : LDC 1, 1(0) ; true
845 : LDA 7, 858(0) ; Skip ELSE block
846 : LD 1, 1(5) ; Load parameter 'n' into R1
847 : SUB 1, 0, 1 ; Negate value in R1
848 : LDA 4, 5(5) ; Recompute callee base from caller size
849 : ST 1, 1(4) ; Store argument 0 in callee frame
850 : LDA 4, 5(5) ; Recompute callee base from caller size
851 : LDA 6, 855(0) ; Return address
852 : ST 6, 0(4) ; Store return address into callee frame
853 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
854 : LDA 7, 818(0) ; Call ODD
855 : LD 1, 2(5) ; Load callee result into R1
856 : LDC 2, 5(0) ; Callee frame size
857 : SUB 5, 5, 2 ; Pop back to caller
858 : ST 1, 2(5) ; Store function result into frame return slot
859 : LD 6, 0(5) ; Load return address
860 : LDA 7, 0(6) ; Return to caller
861 : LD 1, 2(5) ; Load parameter 'n' into R1
862 : ST 1, 4(5) ; Spill left operand at depth 0
863 : LDC 1, 0(0) ; Load integer-literal into R1
864 : LD 2, 4(5) ; Restore left operand from depth 0
865 : SUB 1, 2, 1 ; left - right for equality check
866 : JEQ 1, 2(7) ; If R1 == 0, jump to true
867 : LDC 1, 0(0) ; false
868 : LDA 7, 1(7) ; skip setting true
869 : LDC 1, 1(0) ; true
870 : JEQ 1, 873(0) ; If condition is false, jump to ELSE
871 : LDC 1, 1(0) ; Load integer-literal into R1
872 : LDA 7, 895(0) ; Skip ELSE block
873 : LD 1, 1(5) ; Load parameter 'm' into R1
874 : ST 1, 4(5) ; Spill left operand at depth 0
875 : LD 1, 1(5) ; Load parameter 'm' into R1
876 : LDA 4, 6(5) ; Recompute callee base from caller size
877 : ST 1, 1(4) ; Store argument 0 in callee frame
878 : LD 1, 2(5) ; Load parameter 'n' into R1
879 : ST 1, 5(5) ; Spill left operand at depth 1
880 : LDC 1, 1(0) ; Load integer-literal into R1
881 : LD 2, 5(5) ; Restore left operand from depth 1
882 : SUB 1, 2, 1 ; R1 = left - right
883 : LDA 4, 6(5) ; Recompute callee base from caller size
884 : ST 1, 2(4) ; Store argument 1 in callee frame
885 : LDA 4, 6(5) ; Recompute callee base from caller size
886 : LDA 6, 890(0) ; Return address
887 : ST 6, 0(4) ; Store return address into callee frame
888 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
889 : LDA 7, 861(0) ; Call EXP
890 : LD 1, 3(5) ; Load callee result into R1
891 : LDC 2, 6(0) ; Callee frame size
892 : SUB 5, 5, 2 ; Pop back to caller
893 : LD 2, 4(5) ; Restore left operand from depth 0
894 : MUL 1, 2, 1 ; R1 = left * right
895 : ST 1, 3(5) ; Store function result into frame return slot
896 : LD 6, 0(5) ; Load return address
897 : LDA 7, 0(6) ; Return to caller
898 : LD 1, 1(5) ; Load parameter 'm' into R1
899 : ST 1, 4(5) ; Spill left operand at depth 0
900 : LD 1, 2(5) ; Load parameter 'n' into R1
901 : ST 1, 5(5) ; Spill left operand at depth 1
902 : LD 1, 1(5) ; Load parameter 'm' into R1
903 : ST 1, 6(5) ; Spill left operand at depth 2
904 : LD 1, 2(5) ; Load parameter 'n' into R1
905 : LD 2, 6(5) ; Restore left operand from depth 2
906 : DIV 1, 2, 1 ; R1 = left / right
907 : LD 2, 5(5) ; Restore left operand from depth 1
908 : MUL 1, 2, 1 ; R1 = left * right
909 : LD 2, 4(5) ; Restore left operand from depth 0
910 : SUB 1, 2, 1 ; R1 = left - right
911 : ST 1, 3(5) ; Store function result into frame return slot
912 : LD 6, 0(5) ; Load return address
913 : LDA 7, 0(6) ; Return to caller
