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
13 : LDA 4, 6(5) ; Compute callee base
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 2(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : ST 1, 4(5) ; Spill left operand at depth 0
20 : LDC 1, 1(0) ; Load integer-literal into R1
21 : LD 2, 4(5) ; Restore left operand from depth 0
22 : SUB 1, 2, 1 ; R1 = left - right
23 : LDA 4, 6(5) ; Compute callee base
24 : ST 1, 2(4) ; Store argument 1 in callee frame
25 : LDA 4, 6(5) ; Recompute callee base from callee size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 836(0) ; Call EXP
30 : LD 1, 3(5) ; Load callee result into R1
31 : LDC 2, 6(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 5(5) ; Compute callee base
34 : ST 1, 1(4) ; Store argument 0 in callee frame
35 : ST 1, 4(5) ; Spill left operand at depth 0
36 : LDC 1, 2(0) ; Load integer-literal into R1
37 : LD 2, 4(5) ; Restore left operand from depth 0
38 : DIV 1, 2, 1 ; R1 = left / right
39 : LDA 4, 5(5) ; Compute callee base
40 : ST 1, 2(4) ; Store argument 1 in callee frame
41 : LDA 4, 5(5) ; Recompute callee base from callee size
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return address into callee frame
44 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
45 : LDA 7, 53(0) ; Call createLoop
46 : LD 1, 3(5) ; Load callee result into R1
47 : LDC 2, 5(0) ; Caller frame size
48 : SUB 5, 5, 2 ; Pop back to caller
49 : ST 1, 2(5) ; Store result into caller’s return slot
50 : LD 1, 2(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 1(5) ; Load parameter 'a' into R1
54 : LDA 4, 7(5) ; Compute callee base
55 : ST 1, 1(4) ; Store argument 0 in callee frame
56 : LD 1, 2(5) ; Load parameter 'n' into R1
57 : LDA 4, 7(5) ; Compute callee base
58 : ST 1, 2(4) ; Store argument 1 in callee frame
59 : LDC 1, 10(0) ; Load integer-literal into R1
60 : ST 1, 5(5) ; Spill left operand at depth 0
61 : LD 1, 1(5) ; Load parameter 'a' into R1
62 : LD 2, 5(5) ; Restore left operand from depth 0
63 : MUL 1, 2, 1 ; R1 = left * right
64 : LDA 4, 7(5) ; Compute callee base
65 : ST 1, 3(4) ; Store argument 2 in callee frame
66 : LDA 4, 7(5) ; Recompute callee base from callee size
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return address into callee frame
69 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
70 : LDA 7, 77(0) ; Call aLoop
71 : LD 1, 4(5) ; Load callee result into R1
72 : LDC 2, 7(0) ; Caller frame size
73 : SUB 5, 5, 2 ; Pop back to caller
74 : ST 1, 3(5) ; Store function result into frame return slot
75 : LD 6, 0(5) ; Load return address
76 : LDA 7, 0(6) ; Return to caller
77 : LD 1, 1(5) ; Load parameter 'a' into R1
78 : ST 1, 5(5) ; Spill left operand at depth 0
79 : LD 1, 3(5) ; Load parameter 'upper' into R1
80 : LD 2, 5(5) ; Restore left operand from depth 0
81 : SUB 1, 2, 1 ; left - right for less-than check
82 : JLT 1, 2(7) ; If R1 < 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : JEQ 1, 153(0) ; If condition is false, jump to ELSE
87 : LD 1, 1(5) ; Load parameter 'a' into R1
88 : LDA 4, 6(5) ; Compute callee base
89 : ST 1, 1(4) ; Store argument 0 in callee frame
90 : LD 1, 2(5) ; Load parameter 'n' into R1
91 : LDA 4, 6(5) ; Compute callee base
92 : ST 1, 2(4) ; Store argument 1 in callee frame
93 : LD 1, 3(5) ; Load parameter 'upper' into R1
94 : LDA 4, 6(5) ; Compute callee base
95 : ST 1, 3(4) ; Store argument 2 in callee frame
96 : LDC 1, 4(0) ; Load integer-literal into R1
97 : ST 1, 6(5) ; Spill left operand at depth 0
98 : LDA 4, 6(5) ; Compute callee base
99 : ST 1, 1(4) ; Store argument 0 in callee frame
100 : LDC 1, 2(0) ; Load integer-literal into R1
101 : LDA 4, 6(5) ; Compute callee base
102 : ST 1, 2(4) ; Store argument 1 in callee frame
103 : LDA 4, 6(5) ; Recompute callee base from callee size
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return address into callee frame
106 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
107 : LDA 7, 836(0) ; Call EXP
108 : LD 1, 3(5) ; Load callee result into R1
109 : LDC 2, 6(0) ; Caller frame size
110 : SUB 5, 5, 2 ; Pop back to caller
111 : LD 2, 6(5) ; Restore left operand from depth 0
112 : MUL 1, 2, 1 ; R1 = left * right
113 : ST 1, 6(5) ; Spill left operand at depth 0
114 : LDC 1, 4(0) ; Load integer-literal into R1
115 : ST 1, 7(5) ; Spill left operand at depth 1
116 : LDC 1, 10(0) ; Load integer-literal into R1
117 : LDA 4, 6(5) ; Compute callee base
118 : ST 1, 1(4) ; Store argument 0 in callee frame
119 : LD 1, 2(5) ; Load parameter 'n' into R1
120 : LDA 4, 6(5) ; Compute callee base
121 : ST 1, 2(4) ; Store argument 1 in callee frame
122 : LDA 4, 6(5) ; Recompute callee base from callee size
123 : LDA 6, 127(0) ; Return address
124 : ST 6, 0(4) ; Store return address into callee frame
125 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
126 : LDA 7, 836(0) ; Call EXP
127 : LD 1, 3(5) ; Load callee result into R1
128 : LDC 2, 6(0) ; Caller frame size
129 : SUB 5, 5, 2 ; Pop back to caller
130 : LD 2, 7(5) ; Restore left operand from depth 1
131 : MUL 1, 2, 1 ; R1 = left * right
132 : ST 1, 7(5) ; Spill left operand at depth 1
133 : LD 1, 1(5) ; Load parameter 'a' into R1
134 : LD 2, 7(5) ; Restore left operand from depth 1
135 : MUL 1, 2, 1 ; R1 = left * right
136 : LD 2, 6(5) ; Restore left operand from depth 0
137 : ADD 1, 2, 1 ; R1 = left + right
138 : ST 1, 6(5) ; Spill left operand at depth 0
139 : LDC 1, 1(0) ; Load integer-literal into R1
140 : LD 2, 6(5) ; Restore left operand from depth 0
141 : ADD 1, 2, 1 ; R1 = left + right
142 : LDA 4, 6(5) ; Compute callee base
143 : ST 1, 4(4) ; Store argument 3 in callee frame
144 : LDA 4, 6(5) ; Recompute callee base from callee size
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return address into callee frame
147 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
148 : LDA 7, 157(0) ; Call aLoop1
149 : LD 1, 5(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Caller frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : LDA 7, 154(0) ; Skip ELSE block
153 : LDC 1, 1(0) ; Load boolean-literal into R1
154 : ST 1, 4(5) ; Store function result into frame return slot
155 : LD 6, 0(5) ; Load return address
156 : LDA 7, 0(6) ; Return to caller
157 : LD 1, 1(5) ; Load parameter 'a' into R1
158 : LDA 4, 9(5) ; Compute callee base
159 : ST 1, 1(4) ; Store argument 0 in callee frame
160 : LD 1, 2(5) ; Load parameter 'n' into R1
161 : LDA 4, 9(5) ; Compute callee base
162 : ST 1, 2(4) ; Store argument 1 in callee frame
163 : LD 1, 3(5) ; Load parameter 'upper' into R1
164 : LDA 4, 9(5) ; Compute callee base
165 : ST 1, 3(4) ; Store argument 2 in callee frame
166 : LD 1, 4(5) ; Load parameter 'det' into R1
167 : LDA 4, 9(5) ; Compute callee base
168 : ST 1, 4(4) ; Store argument 3 in callee frame
169 : LDA 4, 3(5) ; Compute callee base
170 : ST 1, 1(4) ; Store argument 0 in callee frame
171 : LDA 4, 3(5) ; Recompute callee base from callee size
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return address into callee frame
174 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
175 : LDA 7, 749(0) ; Call SQRT
176 : LD 1, 2(5) ; Load callee result into R1
177 : LDC 2, 3(0) ; Caller frame size
178 : SUB 5, 5, 2 ; Pop back to caller
179 : LDA 4, 9(5) ; Compute callee base
180 : ST 1, 5(4) ; Store argument 4 in callee frame
181 : LDA 4, 9(5) ; Recompute callee base from callee size
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return address into callee frame
184 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
185 : LDA 7, 192(0) ; Call aLoop2
186 : LD 1, 6(5) ; Load callee result into R1
187 : LDC 2, 9(0) ; Caller frame size
188 : SUB 5, 5, 2 ; Pop back to caller
189 : ST 1, 5(5) ; Store function result into frame return slot
190 : LD 6, 0(5) ; Load return address
191 : LDA 7, 0(6) ; Return to caller
192 : LD 1, 1(5) ; Load parameter 'a' into R1
193 : LDA 4, 10(5) ; Compute callee base
194 : ST 1, 1(4) ; Store argument 0 in callee frame
195 : LD 1, 2(5) ; Load parameter 'n' into R1
196 : LDA 4, 10(5) ; Compute callee base
197 : ST 1, 2(4) ; Store argument 1 in callee frame
198 : LD 1, 3(5) ; Load parameter 'upper' into R1
199 : LDA 4, 10(5) ; Compute callee base
200 : ST 1, 3(4) ; Store argument 2 in callee frame
201 : LD 1, 4(5) ; Load parameter 'det' into R1
202 : LDA 4, 10(5) ; Compute callee base
203 : ST 1, 4(4) ; Store argument 3 in callee frame
204 : LD 1, 5(5) ; Load parameter 'root' into R1
205 : LDA 4, 10(5) ; Compute callee base
206 : ST 1, 5(4) ; Store argument 4 in callee frame
207 : LD 1, 1(5) ; Load parameter 'a' into R1
208 : ST 1, 8(5) ; Spill left operand at depth 0
209 : LDC 1, 10(0) ; Load integer-literal into R1
210 : LDA 4, 6(5) ; Compute callee base
211 : ST 1, 1(4) ; Store argument 0 in callee frame
212 : LD 1, 2(5) ; Load parameter 'n' into R1
213 : LDA 4, 6(5) ; Compute callee base
214 : ST 1, 2(4) ; Store argument 1 in callee frame
215 : LDA 4, 6(5) ; Recompute callee base from callee size
216 : LDA 6, 220(0) ; Return address
217 : ST 6, 0(4) ; Store return address into callee frame
218 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
219 : LDA 7, 836(0) ; Call EXP
220 : LD 1, 3(5) ; Load callee result into R1
221 : LDC 2, 6(0) ; Caller frame size
222 : SUB 5, 5, 2 ; Pop back to caller
223 : LD 2, 8(5) ; Restore left operand from depth 0
224 : MUL 1, 2, 1 ; R1 = left * right
225 : ST 1, 8(5) ; Spill left operand at depth 0
226 : LD 1, 5(5) ; Load parameter 'root' into R1
227 : ST 1, 9(5) ; Spill left operand at depth 1
228 : LDC 1, 1(0) ; Load integer-literal into R1
229 : LD 2, 9(5) ; Restore left operand from depth 1
230 : ADD 1, 2, 1 ; R1 = left + right
231 : ST 1, 9(5) ; Spill left operand at depth 1
232 : LDC 1, 2(0) ; Load integer-literal into R1
233 : LD 2, 9(5) ; Restore left operand from depth 1
234 : DIV 1, 2, 1 ; R1 = left / right
235 : LD 2, 8(5) ; Restore left operand from depth 0
236 : ADD 1, 2, 1 ; R1 = left + right
237 : LDA 4, 10(5) ; Compute callee base
238 : ST 1, 6(4) ; Store argument 5 in callee frame
239 : LDA 4, 10(5) ; Recompute callee base from callee size
240 : LDA 6, 244(0) ; Return address
241 : ST 6, 0(4) ; Store return address into callee frame
242 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
243 : LDA 7, 250(0) ; Call aLoop3
244 : LD 1, 7(5) ; Load callee result into R1
245 : LDC 2, 10(0) ; Caller frame size
246 : SUB 5, 5, 2 ; Pop back to caller
247 : ST 1, 6(5) ; Store function result into frame return slot
248 : LD 6, 0(5) ; Load return address
249 : LDA 7, 0(6) ; Return to caller
250 : LDA 4, 6(5) ; Compute callee base
251 : ST 1, 1(4) ; Store argument 0 in callee frame
252 : LDA 4, 6(5) ; Compute callee base
253 : ST 1, 2(4) ; Store argument 1 in callee frame
254 : LDA 4, 6(5) ; Recompute callee base from callee size
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return address into callee frame
257 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
258 : LDA 7, 584(0) ; Call ISROOT
259 : LD 1, 3(5) ; Load callee result into R1
260 : LDC 2, 6(0) ; Caller frame size
261 : SUB 5, 5, 2 ; Pop back to caller
262 : ST 1, 8(5) ; Spill left operand at depth 0
263 : ST 1, 4(5) ; Spill left operand at depth 1
264 : LDC 1, 1(0) ; Load integer-literal into R1
265 : LD 2, 4(5) ; Restore left operand from depth 1
266 : ADD 1, 2, 1 ; R1 = left + right
267 : LDA 4, 6(5) ; Compute callee base
268 : ST 1, 1(4) ; Store argument 0 in callee frame
269 : LDA 4, 6(5) ; Recompute callee base from callee size
270 : LDA 6, 274(0) ; Return address
271 : ST 6, 0(4) ; Store return address into callee frame
272 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
273 : LDA 7, 600(0) ; Call EVEN
274 : LD 1, 2(5) ; Load callee result into R1
275 : LDC 2, 6(0) ; Caller frame size
276 : SUB 5, 5, 2 ; Pop back to caller
277 : LD 2, 8(5) ; Restore left operand from depth 0
278 : MUL 1, 2, 1 ; R1 = left AND right
279 : ST 1, 8(5) ; Spill left operand at depth 0
280 : LDA 4, 3(5) ; Compute callee base
281 : ST 1, 1(4) ; Store argument 0 in callee frame
282 : LDA 4, 3(5) ; Recompute callee base from callee size
283 : LDA 6, 287(0) ; Return address
284 : ST 6, 0(4) ; Store return address into callee frame
285 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
286 : LDA 7, 370(0) ; Call isExcellent
287 : LD 1, 2(5) ; Load callee result into R1
288 : LDC 2, 3(0) ; Caller frame size
289 : SUB 5, 5, 2 ; Pop back to caller
290 : LD 2, 8(5) ; Restore left operand from depth 0
291 : MUL 1, 2, 1 ; R1 = left AND right
292 : JEQ 1, 314(0) ; If condition is false, jump to ELSE
293 : LD 1, 1(5) ; Load parameter 'a' into R1
294 : LDA 4, 7(5) ; Compute callee base
295 : ST 1, 1(4) ; Store argument 0 in callee frame
296 : LD 1, 2(5) ; Load parameter 'n' into R1
297 : LDA 4, 7(5) ; Compute callee base
298 : ST 1, 2(4) ; Store argument 1 in callee frame
299 : LD 1, 3(5) ; Load parameter 'upper' into R1
300 : LDA 4, 7(5) ; Compute callee base
301 : ST 1, 3(4) ; Store argument 2 in callee frame
302 : LD 1, 4(5) ; Load parameter 'candidate' into R1
303 : LDA 4, 7(5) ; Compute callee base
304 : ST 1, 4(4) ; Store argument 3 in callee frame
305 : LDA 4, 7(5) ; Recompute callee base from callee size
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return address into callee frame
308 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
309 : LDA 7, 338(0) ; Call printCandidateAndContinue
310 : LD 1, 5(5) ; Load callee result into R1
311 : LDC 2, 7(0) ; Caller frame size
312 : SUB 5, 5, 2 ; Pop back to caller
313 : LDA 7, 335(0) ; Skip ELSE block
314 : LD 1, 1(5) ; Load parameter 'a' into R1
315 : ST 1, 5(5) ; Spill left operand at depth 0
316 : LDC 1, 1(0) ; Load integer-literal into R1
317 : LD 2, 5(5) ; Restore left operand from depth 0
318 : ADD 1, 2, 1 ; R1 = left + right
319 : LDA 4, 7(5) ; Compute callee base
320 : ST 1, 1(4) ; Store argument 0 in callee frame
321 : LD 1, 2(5) ; Load parameter 'n' into R1
322 : LDA 4, 7(5) ; Compute callee base
323 : ST 1, 2(4) ; Store argument 1 in callee frame
324 : LD 1, 3(5) ; Load parameter 'upper' into R1
325 : LDA 4, 7(5) ; Compute callee base
326 : ST 1, 3(4) ; Store argument 2 in callee frame
327 : LDA 4, 7(5) ; Recompute callee base from callee size
328 : LDA 6, 332(0) ; Return address
329 : ST 6, 0(4) ; Store return address into callee frame
330 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
331 : LDA 7, 77(0) ; Call aLoop
332 : LD 1, 4(5) ; Load callee result into R1
333 : LDC 2, 7(0) ; Caller frame size
334 : SUB 5, 5, 2 ; Pop back to caller
335 : ST 1, 7(5) ; Store function result into frame return slot
336 : LD 6, 0(5) ; Load return address
337 : LDA 7, 0(6) ; Return to caller
338 : LD 1, 4(5) ; Load parameter 'candidate' into R1
339 : LDA 4, 7(5) ; Recompute callee base from caller size
340 : LDA 6, 344(0) ; Return address
341 : ST 6, 0(4) ; Store return address in callee frame
342 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
343 : LDA 7, 9(0) ; Call built-in print
344 : LDC 2, 7(0) ; Caller frame size
345 : SUB 5, 5, 2 ; Pop back to caller
346 : LD 1, 1(5) ; Load parameter 'a' into R1
347 : ST 1, 5(5) ; Spill left operand at depth 0
348 : LDC 1, 1(0) ; Load integer-literal into R1
349 : LD 2, 5(5) ; Restore left operand from depth 0
350 : ADD 1, 2, 1 ; R1 = left + right
351 : LDA 4, 7(5) ; Compute callee base
352 : ST 1, 1(4) ; Store argument 0 in callee frame
353 : LD 1, 2(5) ; Load parameter 'n' into R1
354 : LDA 4, 7(5) ; Compute callee base
355 : ST 1, 2(4) ; Store argument 1 in callee frame
356 : LD 1, 3(5) ; Load parameter 'upper' into R1
357 : LDA 4, 7(5) ; Compute callee base
358 : ST 1, 3(4) ; Store argument 2 in callee frame
359 : LDA 4, 7(5) ; Recompute callee base from callee size
360 : LDA 6, 364(0) ; Return address
361 : ST 6, 0(4) ; Store return address into callee frame
362 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
363 : LDA 7, 77(0) ; Call aLoop
364 : LD 1, 4(5) ; Load callee result into R1
365 : LDC 2, 7(0) ; Caller frame size
366 : SUB 5, 5, 2 ; Pop back to caller
367 : ST 1, 5(5) ; Store function result into frame return slot
368 : LD 6, 0(5) ; Load return address
369 : LDA 7, 0(6) ; Return to caller
370 : LD 1, 1(5) ; Load parameter 'n' into R1
371 : LDA 4, 5(5) ; Compute callee base
372 : ST 1, 1(4) ; Store argument 0 in callee frame
373 : LD 1, 1(5) ; Load parameter 'n' into R1
374 : LDA 4, 5(5) ; Compute callee base
375 : ST 1, 1(4) ; Store argument 0 in callee frame
376 : LDA 4, 5(5) ; Recompute callee base from callee size
377 : LDA 6, 381(0) ; Return address
378 : ST 6, 0(4) ; Store return address into callee frame
379 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
380 : LDA 7, 550(0) ; Call length
381 : LD 1, 2(5) ; Load callee result into R1
382 : LDC 2, 5(0) ; Caller frame size
383 : SUB 5, 5, 2 ; Pop back to caller
384 : LDA 4, 5(5) ; Compute callee base
385 : ST 1, 2(4) ; Store argument 1 in callee frame
386 : LDA 4, 5(5) ; Recompute callee base from callee size
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return address into callee frame
389 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
390 : LDA 7, 397(0) ; Call isExcellentSwitch
391 : LD 1, 3(5) ; Load callee result into R1
392 : LDC 2, 5(0) ; Caller frame size
393 : SUB 5, 5, 2 ; Pop back to caller
394 : ST 1, 2(5) ; Store function result into frame return slot
395 : LD 6, 0(5) ; Load return address
396 : LDA 7, 0(6) ; Return to caller
397 : LDA 4, 5(5) ; Compute callee base
398 : ST 1, 1(4) ; Store argument 0 in callee frame
399 : LDA 4, 5(5) ; Recompute callee base from callee size
400 : LDA 6, 404(0) ; Return address
401 : ST 6, 0(4) ; Store return address into callee frame
402 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
403 : LDA 7, 793(0) ; Call ODD
404 : LD 1, 2(5) ; Load callee result into R1
405 : LDC 2, 5(0) ; Caller frame size
406 : SUB 5, 5, 2 ; Pop back to caller
407 : JEQ 1, 410(0) ; If condition is false, jump to ELSE
408 : LDC 1, 0(0) ; Load boolean-literal into R1
409 : LDA 7, 452(0) ; Skip ELSE block
410 : LD 1, 1(5) ; Load parameter 'n' into R1
411 : ST 1, 4(5) ; Spill left operand at depth 0
412 : LD 1, 1(5) ; Load parameter 'n' into R1
413 : LDA 4, 5(5) ; Compute callee base
414 : ST 1, 1(4) ; Store argument 0 in callee frame
415 : LDA 4, 5(5) ; Recompute callee base from callee size
416 : LDA 6, 420(0) ; Return address
417 : ST 6, 0(4) ; Store return address into callee frame
418 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
419 : LDA 7, 515(0) ; Call a
420 : LD 1, 2(5) ; Load callee result into R1
421 : LDC 2, 5(0) ; Caller frame size
422 : SUB 5, 5, 2 ; Pop back to caller
423 : LDA 4, 6(5) ; Compute callee base
424 : ST 1, 1(4) ; Store argument 0 in callee frame
425 : LD 1, 1(5) ; Load parameter 'n' into R1
426 : LDA 4, 4(5) ; Compute callee base
427 : ST 1, 1(4) ; Store argument 0 in callee frame
428 : LDA 4, 4(5) ; Recompute callee base from callee size
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return address into callee frame
431 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
432 : LDA 7, 471(0) ; Call b
433 : LD 1, 2(5) ; Load callee result into R1
434 : LDC 2, 4(0) ; Caller frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : LDA 4, 6(5) ; Compute callee base
437 : ST 1, 2(4) ; Store argument 1 in callee frame
438 : LDA 4, 6(5) ; Recompute callee base from callee size
439 : LDA 6, 443(0) ; Return address
440 : ST 6, 0(4) ; Store return address into callee frame
441 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
442 : LDA 7, 455(0) ; Call excellentDiff
443 : LD 1, 3(5) ; Load callee result into R1
444 : LDC 2, 6(0) ; Caller frame size
445 : SUB 5, 5, 2 ; Pop back to caller
446 : LD 2, 4(5) ; Restore left operand from depth 0
447 : SUB 1, 2, 1 ; left - right for equality check
448 : JEQ 1, 2(7) ; If R1 == 0, jump to true
449 : LDC 1, 0(0) ; false
450 : LDA 7, 1(7) ; skip setting true
451 : LDC 1, 1(0) ; true
452 : ST 1, 3(5) ; Store function result into frame return slot
453 : LD 6, 0(5) ; Load return address
454 : LDA 7, 0(6) ; Return to caller
455 : LD 1, 2(5) ; Load parameter 'b' into R1
456 : ST 1, 4(5) ; Spill left operand at depth 0
457 : LD 1, 2(5) ; Load parameter 'b' into R1
458 : LD 2, 4(5) ; Restore left operand from depth 0
459 : MUL 1, 2, 1 ; R1 = left * right
460 : ST 1, 4(5) ; Spill left operand at depth 0
461 : LD 1, 1(5) ; Load parameter 'a' into R1
462 : ST 1, 5(5) ; Spill left operand at depth 1
463 : LD 1, 1(5) ; Load parameter 'a' into R1
464 : LD 2, 5(5) ; Restore left operand from depth 1
465 : MUL 1, 2, 1 ; R1 = left * right
466 : LD 2, 4(5) ; Restore left operand from depth 0
467 : SUB 1, 2, 1 ; R1 = left - right
468 : ST 1, 3(5) ; Store function result into frame return slot
469 : LD 6, 0(5) ; Load return address
470 : LDA 7, 0(6) ; Return to caller
471 : LD 1, 2(5) ; Load parameter 'n' into R1
472 : LDA 4, 7(5) ; Compute callee base
473 : ST 1, 1(4) ; Store argument 0 in callee frame
474 : LDC 1, 10(0) ; Load integer-literal into R1
475 : LDA 4, 6(5) ; Compute callee base
476 : ST 1, 1(4) ; Store argument 0 in callee frame
477 : LD 1, 1(5) ; Load parameter 'n' into R1
478 : LDA 4, 5(5) ; Compute callee base
479 : ST 1, 1(4) ; Store argument 0 in callee frame
480 : LDA 4, 5(5) ; Recompute callee base from callee size
481 : LDA 6, 485(0) ; Return address
482 : ST 6, 0(4) ; Store return address into callee frame
483 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
484 : LDA 7, 550(0) ; Call length
485 : LD 1, 2(5) ; Load callee result into R1
486 : LDC 2, 5(0) ; Caller frame size
487 : SUB 5, 5, 2 ; Pop back to caller
488 : ST 1, 4(5) ; Spill left operand at depth 0
489 : LDC 1, 2(0) ; Load integer-literal into R1
490 : LD 2, 4(5) ; Restore left operand from depth 0
491 : DIV 1, 2, 1 ; R1 = left / right
492 : LDA 4, 6(5) ; Compute callee base
493 : ST 1, 2(4) ; Store argument 1 in callee frame
494 : LDA 4, 6(5) ; Recompute callee base from callee size
495 : LDA 6, 499(0) ; Return address
496 : ST 6, 0(4) ; Store return address into callee frame
497 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
498 : LDA 7, 836(0) ; Call EXP
499 : LD 1, 3(5) ; Load callee result into R1
500 : LDC 2, 6(0) ; Caller frame size
501 : SUB 5, 5, 2 ; Pop back to caller
502 : LDA 4, 7(5) ; Compute callee base
503 : ST 1, 2(4) ; Store argument 1 in callee frame
504 : LDA 4, 7(5) ; Recompute callee base from callee size
505 : LDA 6, 509(0) ; Return address
506 : ST 6, 0(4) ; Store return address into callee frame
507 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
508 : LDA 7, 873(0) ; Call MOD
509 : LD 1, 3(5) ; Load callee result into R1
510 : LDC 2, 7(0) ; Caller frame size
511 : SUB 5, 5, 2 ; Pop back to caller
512 : ST 1, 2(5) ; Store function result into frame return slot
513 : LD 6, 0(5) ; Load return address
514 : LDA 7, 0(6) ; Return to caller
515 : LD 1, 1(5) ; Load parameter 'n' into R1
516 : ST 1, 3(5) ; Spill left operand at depth 0
517 : LDC 1, 10(0) ; Load integer-literal into R1
518 : LDA 4, 6(5) ; Compute callee base
519 : ST 1, 1(4) ; Store argument 0 in callee frame
520 : LD 1, 1(5) ; Load parameter 'n' into R1
521 : LDA 4, 5(5) ; Compute callee base
522 : ST 1, 1(4) ; Store argument 0 in callee frame
523 : LDA 4, 5(5) ; Recompute callee base from callee size
524 : LDA 6, 528(0) ; Return address
525 : ST 6, 0(4) ; Store return address into callee frame
526 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
527 : LDA 7, 550(0) ; Call length
528 : LD 1, 2(5) ; Load callee result into R1
529 : LDC 2, 5(0) ; Caller frame size
530 : SUB 5, 5, 2 ; Pop back to caller
531 : ST 1, 5(5) ; Spill left operand at depth 1
532 : LDC 1, 2(0) ; Load integer-literal into R1
533 : LD 2, 5(5) ; Restore left operand from depth 1
534 : DIV 1, 2, 1 ; R1 = left / right
535 : LDA 4, 6(5) ; Compute callee base
536 : ST 1, 2(4) ; Store argument 1 in callee frame
537 : LDA 4, 6(5) ; Recompute callee base from callee size
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return address into callee frame
540 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
541 : LDA 7, 836(0) ; Call EXP
542 : LD 1, 3(5) ; Load callee result into R1
543 : LDC 2, 6(0) ; Caller frame size
544 : SUB 5, 5, 2 ; Pop back to caller
545 : LD 2, 3(5) ; Restore left operand from depth 0
546 : DIV 1, 2, 1 ; R1 = left / right
547 : ST 1, 2(5) ; Store function result into frame return slot
548 : LD 6, 0(5) ; Load return address
549 : LDA 7, 0(6) ; Return to caller
550 : LD 1, 1(5) ; Load parameter 'n' into R1
551 : ST 1, 3(5) ; Spill left operand at depth 0
552 : LDC 1, 10(0) ; Load integer-literal into R1
553 : LD 2, 3(5) ; Restore left operand from depth 0
554 : SUB 1, 2, 1 ; left - right for less-than check
555 : JLT 1, 2(7) ; If R1 < 0, jump to true
556 : LDC 1, 0(0) ; false
557 : LDA 7, 1(7) ; skip setting true
558 : LDC 1, 1(0) ; true
559 : JEQ 1, 562(0) ; If condition is false, jump to ELSE
560 : LDC 1, 1(0) ; Load integer-literal into R1
561 : LDA 7, 581(0) ; Skip ELSE block
562 : LDC 1, 1(0) ; Load integer-literal into R1
563 : ST 1, 3(5) ; Spill left operand at depth 0
564 : LD 1, 1(5) ; Load parameter 'n' into R1
565 : ST 1, 4(5) ; Spill left operand at depth 1
566 : LDC 1, 10(0) ; Load integer-literal into R1
567 : LD 2, 4(5) ; Restore left operand from depth 1
568 : DIV 1, 2, 1 ; R1 = left / right
569 : LDA 4, 5(5) ; Compute callee base
570 : ST 1, 1(4) ; Store argument 0 in callee frame
571 : LDA 4, 5(5) ; Recompute callee base from callee size
572 : LDA 6, 576(0) ; Return address
573 : ST 6, 0(4) ; Store return address into callee frame
574 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
575 : LDA 7, 550(0) ; Call length
576 : LD 1, 2(5) ; Load callee result into R1
577 : LDC 2, 5(0) ; Caller frame size
578 : SUB 5, 5, 2 ; Pop back to caller
579 : LD 2, 3(5) ; Restore left operand from depth 0
580 : ADD 1, 2, 1 ; R1 = left + right
581 : ST 1, 2(5) ; Store function result into frame return slot
582 : LD 6, 0(5) ; Load return address
583 : LDA 7, 0(6) ; Return to caller
584 : LD 1, 2(5) ; Load parameter 'n' into R1
585 : ST 1, 4(5) ; Spill left operand at depth 0
586 : LD 1, 1(5) ; Load parameter 'r' into R1
587 : ST 1, 5(5) ; Spill left operand at depth 1
588 : LD 1, 1(5) ; Load parameter 'r' into R1
589 : LD 2, 5(5) ; Restore left operand from depth 1
590 : MUL 1, 2, 1 ; R1 = left * right
591 : LD 2, 4(5) ; Restore left operand from depth 0
592 : SUB 1, 2, 1 ; left - right for equality check
593 : JEQ 1, 2(7) ; If R1 == 0, jump to true
594 : LDC 1, 0(0) ; false
595 : LDA 7, 1(7) ; skip setting true
596 : LDC 1, 1(0) ; true
597 : ST 1, 3(5) ; Store function result into frame return slot
598 : LD 6, 0(5) ; Load return address
599 : LDA 7, 0(6) ; Return to caller
600 : LD 1, 1(5) ; Load parameter 'n' into R1
601 : ST 1, 3(5) ; Spill left operand at depth 0
602 : LDC 1, 2(0) ; Load integer-literal into R1
603 : ST 1, 4(5) ; Spill left operand at depth 1
604 : LD 1, 1(5) ; Load parameter 'n' into R1
605 : ST 1, 5(5) ; Spill left operand at depth 2
606 : LDC 1, 2(0) ; Load integer-literal into R1
607 : LD 2, 5(5) ; Restore left operand from depth 2
608 : DIV 1, 2, 1 ; R1 = left / right
609 : LD 2, 4(5) ; Restore left operand from depth 1
610 : MUL 1, 2, 1 ; R1 = left * right
611 : LD 2, 3(5) ; Restore left operand from depth 0
612 : SUB 1, 2, 1 ; left - right for equality check
613 : JEQ 1, 2(7) ; If R1 == 0, jump to true
614 : LDC 1, 0(0) ; false
615 : LDA 7, 1(7) ; skip setting true
616 : LDC 1, 1(0) ; true
617 : ST 1, 2(5) ; Store function result into frame return slot
618 : LD 6, 0(5) ; Load return address
619 : LDA 7, 0(6) ; Return to caller
620 : ST 1, 4(5) ; Spill left operand at depth 0
621 : LD 2, 4(5) ; Restore left operand from depth 0
622 : MUL 1, 2, 1 ; R1 = left * right
623 : LDA 4, 6(5) ; Compute callee base
624 : ST 1, 1(4) ; Store argument 0 in callee frame
625 : LDA 4, 6(5) ; Compute callee base
626 : ST 1, 2(4) ; Store argument 1 in callee frame
627 : LDA 4, 6(5) ; Recompute callee base from callee size
628 : LDA 6, 632(0) ; Return address
629 : ST 6, 0(4) ; Store return address into callee frame
630 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
631 : LDA 7, 769(0) ; Call LE
632 : LD 1, 3(5) ; Load callee result into R1
633 : LDC 2, 6(0) ; Caller frame size
634 : SUB 5, 5, 2 ; Pop back to caller
635 : JEQ 1, 653(0) ; If condition is false, jump to ELSE
636 : LD 1, 1(5) ; Load parameter 'n' into R1
637 : LDA 4, 7(5) ; Compute callee base
638 : ST 1, 1(4) ; Store argument 0 in callee frame
639 : LDA 4, 7(5) ; Compute callee base
640 : ST 1, 2(4) ; Store argument 1 in callee frame
641 : LD 1, 3(5) ; Load parameter 'high' into R1
642 : LDA 4, 7(5) ; Compute callee base
643 : ST 1, 3(4) ; Store argument 2 in callee frame
644 : LDA 4, 7(5) ; Recompute callee base from callee size
645 : LDA 6, 649(0) ; Return address
646 : ST 6, 0(4) ; Store return address into callee frame
647 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
648 : LDA 7, 672(0) ; Call SQRTSEARCH
649 : LD 1, 4(5) ; Load callee result into R1
650 : LDC 2, 7(0) ; Caller frame size
651 : SUB 5, 5, 2 ; Pop back to caller
652 : LDA 7, 669(0) ; Skip ELSE block
653 : LD 1, 1(5) ; Load parameter 'n' into R1
654 : LDA 4, 7(5) ; Compute callee base
655 : ST 1, 1(4) ; Store argument 0 in callee frame
656 : LD 1, 2(5) ; Load parameter 'low' into R1
657 : LDA 4, 7(5) ; Compute callee base
658 : ST 1, 2(4) ; Store argument 1 in callee frame
659 : LDA 4, 7(5) ; Compute callee base
660 : ST 1, 3(4) ; Store argument 2 in callee frame
661 : LDA 4, 7(5) ; Recompute callee base from callee size
662 : LDA 6, 666(0) ; Return address
663 : ST 6, 0(4) ; Store return address into callee frame
664 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
665 : LDA 7, 672(0) ; Call SQRTSEARCH
666 : LD 1, 4(5) ; Load callee result into R1
667 : LDC 2, 7(0) ; Caller frame size
668 : SUB 5, 5, 2 ; Pop back to caller
669 : ST 1, 5(5) ; Store function result into frame return slot
670 : LD 6, 0(5) ; Load return address
671 : LDA 7, 0(6) ; Return to caller
672 : LDA 4, 6(5) ; Compute callee base
673 : ST 1, 1(4) ; Store argument 0 in callee frame
674 : ST 1, 4(5) ; Spill left operand at depth 0
675 : LDC 1, 1(0) ; Load integer-literal into R1
676 : LD 2, 4(5) ; Restore left operand from depth 0
677 : ADD 1, 2, 1 ; R1 = left + right
678 : LDA 4, 6(5) ; Compute callee base
679 : ST 1, 2(4) ; Store argument 1 in callee frame
680 : LDA 4, 6(5) ; Recompute callee base from callee size
681 : LDA 6, 685(0) ; Return address
682 : ST 6, 0(4) ; Store return address into callee frame
683 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
684 : LDA 7, 769(0) ; Call LE
685 : LD 1, 3(5) ; Load callee result into R1
686 : LDC 2, 6(0) ; Caller frame size
687 : SUB 5, 5, 2 ; Pop back to caller
688 : JEQ 1, 718(0) ; If condition is false, jump to ELSE
689 : ST 1, 4(5) ; Spill left operand at depth 0
690 : ST 1, 5(5) ; Spill left operand at depth 1
691 : LD 2, 5(5) ; Restore left operand from depth 1
692 : MUL 1, 2, 1 ; R1 = left * right
693 : LD 2, 4(5) ; Restore left operand from depth 0
694 : SUB 1, 2, 1 ; R1 = left - right
695 : LDA 4, 6(5) ; Compute callee base
696 : ST 1, 1(4) ; Store argument 0 in callee frame
697 : ST 1, 4(5) ; Spill left operand at depth 0
698 : LD 2, 4(5) ; Restore left operand from depth 0
699 : MUL 1, 2, 1 ; R1 = left * right
700 : ST 1, 4(5) ; Spill left operand at depth 0
701 : LD 2, 4(5) ; Restore left operand from depth 0
702 : SUB 1, 2, 1 ; R1 = left - right
703 : LDA 4, 6(5) ; Compute callee base
704 : ST 1, 2(4) ; Store argument 1 in callee frame
705 : LDA 4, 6(5) ; Recompute callee base from callee size
706 : LDA 6, 710(0) ; Return address
707 : ST 6, 0(4) ; Store return address into callee frame
708 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
709 : LDA 7, 769(0) ; Call LE
710 : LD 1, 3(5) ; Load callee result into R1
711 : LDC 2, 6(0) ; Caller frame size
712 : SUB 5, 5, 2 ; Pop back to caller
713 : JEQ 1, 716(0) ; If condition is false, jump to ELSE
714 : LD 1, 2(5) ; Load parameter 'low' into R1
715 : LDA 7, 717(0) ; Skip ELSE block
716 : LD 1, 3(5) ; Load parameter 'high' into R1
717 : LDA 7, 746(0) ; Skip ELSE block
718 : LD 1, 1(5) ; Load parameter 'n' into R1
719 : LDA 4, 7(5) ; Compute callee base
720 : ST 1, 1(4) ; Store argument 0 in callee frame
721 : LD 1, 2(5) ; Load parameter 'low' into R1
722 : LDA 4, 7(5) ; Compute callee base
723 : ST 1, 2(4) ; Store argument 1 in callee frame
724 : LD 1, 3(5) ; Load parameter 'high' into R1
725 : LDA 4, 7(5) ; Compute callee base
726 : ST 1, 3(4) ; Store argument 2 in callee frame
727 : LD 1, 2(5) ; Load parameter 'low' into R1
728 : ST 1, 6(5) ; Spill left operand at depth 0
729 : LD 1, 3(5) ; Load parameter 'high' into R1
730 : LD 2, 6(5) ; Restore left operand from depth 0
731 : ADD 1, 2, 1 ; R1 = left + right
732 : ST 1, 6(5) ; Spill left operand at depth 0
733 : LDC 1, 2(0) ; Load integer-literal into R1
734 : LD 2, 6(5) ; Restore left operand from depth 0
735 : DIV 1, 2, 1 ; R1 = left / right
736 : LDA 4, 7(5) ; Compute callee base
737 : ST 1, 4(4) ; Store argument 3 in callee frame
738 : LDA 4, 7(5) ; Recompute callee base from callee size
739 : LDA 6, 743(0) ; Return address
740 : ST 6, 0(4) ; Store return address into callee frame
741 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
742 : LDA 7, 620(0) ; Call SQRTSPLIT
743 : LD 1, 5(5) ; Load callee result into R1
744 : LDC 2, 7(0) ; Caller frame size
745 : SUB 5, 5, 2 ; Pop back to caller
746 : ST 1, 4(5) ; Store function result into frame return slot
747 : LD 6, 0(5) ; Load return address
748 : LDA 7, 0(6) ; Return to caller
749 : LD 1, 1(5) ; Load parameter 'n' into R1
750 : LDA 4, 7(5) ; Compute callee base
751 : ST 1, 1(4) ; Store argument 0 in callee frame
752 : LDC 1, 0(0) ; Load integer-literal into R1
753 : LDA 4, 7(5) ; Compute callee base
754 : ST 1, 2(4) ; Store argument 1 in callee frame
755 : LD 1, 1(5) ; Load parameter 'n' into R1
756 : LDA 4, 7(5) ; Compute callee base
757 : ST 1, 3(4) ; Store argument 2 in callee frame
758 : LDA 4, 7(5) ; Recompute callee base from callee size
759 : LDA 6, 763(0) ; Return address
760 : ST 6, 0(4) ; Store return address into callee frame
761 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
762 : LDA 7, 672(0) ; Call SQRTSEARCH
763 : LD 1, 4(5) ; Load callee result into R1
764 : LDC 2, 7(0) ; Caller frame size
765 : SUB 5, 5, 2 ; Pop back to caller
766 : ST 1, 2(5) ; Store function result into frame return slot
767 : LD 6, 0(5) ; Load return address
768 : LDA 7, 0(6) ; Return to caller
769 : LD 1, 1(5) ; Load parameter 'p' into R1
770 : ST 1, 4(5) ; Spill left operand at depth 0
771 : LD 1, 2(5) ; Load parameter 'q' into R1
772 : LD 2, 4(5) ; Restore left operand from depth 0
773 : SUB 1, 2, 1 ; left - right for less-than check
774 : JLT 1, 2(7) ; If R1 < 0, jump to true
775 : LDC 1, 0(0) ; false
776 : LDA 7, 1(7) ; skip setting true
777 : LDC 1, 1(0) ; true
778 : ST 1, 4(5) ; Spill left operand at depth 0
779 : LD 1, 1(5) ; Load parameter 'p' into R1
780 : ST 1, 5(5) ; Spill left operand at depth 1
781 : LD 1, 2(5) ; Load parameter 'q' into R1
782 : LD 2, 5(5) ; Restore left operand from depth 1
783 : SUB 1, 2, 1 ; left - right for equality check
784 : JEQ 1, 2(7) ; If R1 == 0, jump to true
785 : LDC 1, 0(0) ; false
786 : LDA 7, 1(7) ; skip setting true
787 : LDC 1, 1(0) ; true
788 : LD 2, 4(5) ; Restore left operand from depth 0
789 : ADD 1, 2, 1 ; R1 = left OR right
790 : ST 1, 3(5) ; Store function result into frame return slot
791 : LD 6, 0(5) ; Load return address
792 : LDA 7, 0(6) ; Return to caller
793 : LDC 1, 0(0) ; Load integer-literal into R1
794 : ST 1, 3(5) ; Spill left operand at depth 0
795 : LD 1, 1(5) ; Load parameter 'n' into R1
796 : LD 2, 3(5) ; Restore left operand from depth 0
797 : SUB 1, 2, 1 ; left - right for less-than check
798 : JLT 1, 2(7) ; If R1 < 0, jump to true
799 : LDC 1, 0(0) ; false
800 : LDA 7, 1(7) ; skip setting true
801 : LDC 1, 1(0) ; true
802 : JEQ 1, 821(0) ; If condition is false, jump to ELSE
803 : LDC 1, 2(0) ; Load integer-literal into R1
804 : ST 1, 3(5) ; Spill left operand at depth 0
805 : LD 1, 1(5) ; Load parameter 'n' into R1
806 : ST 1, 4(5) ; Spill left operand at depth 1
807 : LDC 1, 2(0) ; Load integer-literal into R1
808 : LD 2, 4(5) ; Restore left operand from depth 1
809 : DIV 1, 2, 1 ; R1 = left / right
810 : LD 2, 3(5) ; Restore left operand from depth 0
811 : MUL 1, 2, 1 ; R1 = left * right
812 : ST 1, 3(5) ; Spill left operand at depth 0
813 : LD 1, 1(5) ; Load parameter 'n' into R1
814 : LD 2, 3(5) ; Restore left operand from depth 0
815 : SUB 1, 2, 1 ; left - right for less-than check
816 : JLT 1, 2(7) ; If R1 < 0, jump to true
817 : LDC 1, 0(0) ; false
818 : LDA 7, 1(7) ; skip setting true
819 : LDC 1, 1(0) ; true
820 : LDA 7, 833(0) ; Skip ELSE block
821 : LD 1, 1(5) ; Load parameter 'n' into R1
822 : SUB 1, 0, 1 ; Negate value in R1
823 : LDA 4, 5(5) ; Compute callee base
824 : ST 1, 1(4) ; Store argument 0 in callee frame
825 : LDA 4, 5(5) ; Recompute callee base from callee size
826 : LDA 6, 830(0) ; Return address
827 : ST 6, 0(4) ; Store return address into callee frame
828 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
829 : LDA 7, 793(0) ; Call ODD
830 : LD 1, 2(5) ; Load callee result into R1
831 : LDC 2, 5(0) ; Caller frame size
832 : SUB 5, 5, 2 ; Pop back to caller
833 : ST 1, 2(5) ; Store function result into frame return slot
834 : LD 6, 0(5) ; Load return address
835 : LDA 7, 0(6) ; Return to caller
836 : LD 1, 2(5) ; Load parameter 'n' into R1
837 : ST 1, 4(5) ; Spill left operand at depth 0
838 : LDC 1, 0(0) ; Load integer-literal into R1
839 : LD 2, 4(5) ; Restore left operand from depth 0
840 : SUB 1, 2, 1 ; left - right for equality check
841 : JEQ 1, 2(7) ; If R1 == 0, jump to true
842 : LDC 1, 0(0) ; false
843 : LDA 7, 1(7) ; skip setting true
844 : LDC 1, 1(0) ; true
845 : JEQ 1, 848(0) ; If condition is false, jump to ELSE
846 : LDC 1, 1(0) ; Load integer-literal into R1
847 : LDA 7, 870(0) ; Skip ELSE block
848 : LD 1, 1(5) ; Load parameter 'm' into R1
849 : ST 1, 4(5) ; Spill left operand at depth 0
850 : LD 1, 1(5) ; Load parameter 'm' into R1
851 : LDA 4, 6(5) ; Compute callee base
852 : ST 1, 1(4) ; Store argument 0 in callee frame
853 : LD 1, 2(5) ; Load parameter 'n' into R1
854 : ST 1, 5(5) ; Spill left operand at depth 1
855 : LDC 1, 1(0) ; Load integer-literal into R1
856 : LD 2, 5(5) ; Restore left operand from depth 1
857 : SUB 1, 2, 1 ; R1 = left - right
858 : LDA 4, 6(5) ; Compute callee base
859 : ST 1, 2(4) ; Store argument 1 in callee frame
860 : LDA 4, 6(5) ; Recompute callee base from callee size
861 : LDA 6, 865(0) ; Return address
862 : ST 6, 0(4) ; Store return address into callee frame
863 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
864 : LDA 7, 836(0) ; Call EXP
865 : LD 1, 3(5) ; Load callee result into R1
866 : LDC 2, 6(0) ; Caller frame size
867 : SUB 5, 5, 2 ; Pop back to caller
868 : LD 2, 4(5) ; Restore left operand from depth 0
869 : MUL 1, 2, 1 ; R1 = left * right
870 : ST 1, 3(5) ; Store function result into frame return slot
871 : LD 6, 0(5) ; Load return address
872 : LDA 7, 0(6) ; Return to caller
873 : LD 1, 1(5) ; Load parameter 'm' into R1
874 : ST 1, 4(5) ; Spill left operand at depth 0
875 : LD 1, 2(5) ; Load parameter 'n' into R1
876 : ST 1, 5(5) ; Spill left operand at depth 1
877 : LD 1, 1(5) ; Load parameter 'm' into R1
878 : ST 1, 6(5) ; Spill left operand at depth 2
879 : LD 1, 2(5) ; Load parameter 'n' into R1
880 : LD 2, 6(5) ; Restore left operand from depth 2
881 : DIV 1, 2, 1 ; R1 = left / right
882 : LD 2, 5(5) ; Restore left operand from depth 1
883 : MUL 1, 2, 1 ; R1 = left * right
884 : LD 2, 4(5) ; Restore left operand from depth 0
885 : SUB 1, 2, 1 ; R1 = left - right
886 : ST 1, 3(5) ; Store function result into frame return slot
887 : LD 6, 0(5) ; Load return address
888 : LDA 7, 0(6) ; Return to caller
