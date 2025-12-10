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
12 : LDA 4, 4(5) ; Compute callee base from caller size
13 : LDA 4, 4(5) ; Compute callee base from caller size
14 : LDC 1, 10(0) ; Load integer-literal into R1
15 : ST 1, 1(4) ; Store argument 0 in callee frame
16 : LD 1, 1(5) ; Load parameter 'length' into R1
17 : ST 1, 3(5) ; Spill left operand at depth 0
18 : LDC 1, 2(0) ; Load integer-literal into R1
19 : LD 2, 3(5) ; Restore left operand from depth 0
20 : DIV 1, 2, 1 ; R1 = left / right
21 : ST 1, 3(5) ; Spill left operand at depth 0
22 : LDC 1, 1(0) ; Load integer-literal into R1
23 : LD 2, 3(5) ; Restore left operand from depth 0
24 : SUB 1, 2, 1 ; R1 = left - right
25 : ST 1, 2(4) ; Store argument 1 in callee frame
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 778(0) ; Call EXP
30 : LD 1, 3(5) ; Load callee result into R1
31 : LDC 2, 4(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : ST 1, 1(4) ; Store argument 0 in callee frame
34 : LD 1, 1(5) ; Load parameter 'length' into R1
35 : ST 1, 3(5) ; Spill left operand at depth 0
36 : LDC 1, 2(0) ; Load integer-literal into R1
37 : LD 2, 3(5) ; Restore left operand from depth 0
38 : DIV 1, 2, 1 ; R1 = left / right
39 : ST 1, 2(4) ; Store argument 1 in callee frame
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return address into callee frame
42 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
43 : LDA 7, 51(0) ; Call createLoop
44 : LD 1, 3(5) ; Load callee result into R1
45 : LDC 2, 4(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : ST 1, 2(5) ; Store result into caller’s return slot
48 : LD 1, 2(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load main return address
50 : LDA 7, 0(6) ; Return from main
51 : LDA 4, 5(5) ; Compute callee base from caller size
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : ST 1, 1(4) ; Store argument 0 in callee frame
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : ST 1, 2(4) ; Store argument 1 in callee frame
56 : LDC 1, 10(0) ; Load integer-literal into R1
57 : ST 1, 4(5) ; Spill left operand at depth 0
58 : LD 1, 1(5) ; Load parameter 'a' into R1
59 : LD 2, 4(5) ; Restore left operand from depth 0
60 : MUL 1, 2, 1 ; R1 = left * right
61 : ST 1, 3(4) ; Store argument 2 in callee frame
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return address into callee frame
64 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
65 : LDA 7, 72(0) ; Call aLoop
66 : LD 1, 4(5) ; Load callee result into R1
67 : LDC 2, 5(0) ; Caller frame size
68 : SUB 5, 5, 2 ; Pop back to caller
69 : ST 1, 3(5) ; Store function result into frame return slot
70 : LD 6, 0(5) ; Load return address
71 : LDA 7, 0(6) ; Return to caller
72 : LD 1, 1(5) ; Load parameter 'a' into R1
73 : ST 1, 5(5) ; Spill left operand at depth 0
74 : LD 1, 3(5) ; Load parameter 'upper' into R1
75 : LD 2, 5(5) ; Restore left operand from depth 0
76 : SUB 1, 2, 1 ; left - right for less-than check
77 : JLT 1, 2(7) ; If R1 < 0, jump to true
78 : LDC 1, 0(0) ; false
79 : LDA 7, 1(7) ; skip setting true
80 : LDC 1, 1(0) ; true
81 : JEQ 1, 141(0) ; If condition is false, jump to ELSE
82 : LDA 4, 7(5) ; Compute callee base from caller size
83 : LD 1, 1(5) ; Load parameter 'a' into R1
84 : ST 1, 1(4) ; Store argument 0 in callee frame
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : ST 1, 2(4) ; Store argument 1 in callee frame
87 : LD 1, 3(5) ; Load parameter 'upper' into R1
88 : ST 1, 3(4) ; Store argument 2 in callee frame
89 : LDC 1, 4(0) ; Load integer-literal into R1
90 : ST 1, 5(5) ; Spill left operand at depth 0
91 : LDA 4, 7(5) ; Compute callee base from caller size
92 : LD 1, 1(5) ; Load parameter 'a' into R1
93 : ST 1, 1(4) ; Store argument 0 in callee frame
94 : LDC 1, 2(0) ; Load integer-literal into R1
95 : ST 1, 2(4) ; Store argument 1 in callee frame
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return address into callee frame
98 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
99 : LDA 7, 778(0) ; Call EXP
100 : LD 1, 3(5) ; Load callee result into R1
101 : LDC 2, 7(0) ; Caller frame size
102 : SUB 5, 5, 2 ; Pop back to caller
103 : LD 2, 5(5) ; Restore left operand from depth 0
104 : MUL 1, 2, 1 ; R1 = left * right
105 : ST 1, 5(5) ; Spill left operand at depth 0
106 : LDC 1, 4(0) ; Load integer-literal into R1
107 : ST 1, 6(5) ; Spill left operand at depth 1
108 : LDA 4, 7(5) ; Compute callee base from caller size
109 : LDC 1, 10(0) ; Load integer-literal into R1
110 : ST 1, 1(4) ; Store argument 0 in callee frame
111 : LD 1, 2(5) ; Load parameter 'n' into R1
112 : ST 1, 2(4) ; Store argument 1 in callee frame
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return address into callee frame
115 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
116 : LDA 7, 778(0) ; Call EXP
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 7(0) ; Caller frame size
119 : SUB 5, 5, 2 ; Pop back to caller
120 : LD 2, 6(5) ; Restore left operand from depth 1
121 : MUL 1, 2, 1 ; R1 = left * right
122 : ST 1, 6(5) ; Spill left operand at depth 1
123 : LD 1, 1(5) ; Load parameter 'a' into R1
124 : LD 2, 6(5) ; Restore left operand from depth 1
125 : MUL 1, 2, 1 ; R1 = left * right
126 : LD 2, 5(5) ; Restore left operand from depth 0
127 : ADD 1, 2, 1 ; R1 = left + right
128 : ST 1, 5(5) ; Spill left operand at depth 0
129 : LDC 1, 1(0) ; Load integer-literal into R1
130 : LD 2, 5(5) ; Restore left operand from depth 0
131 : ADD 1, 2, 1 ; R1 = left + right
132 : ST 1, 4(4) ; Store argument 3 in callee frame
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return address into callee frame
135 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
136 : LDA 7, 145(0) ; Call aLoop1
137 : LD 1, 5(5) ; Load callee result into R1
138 : LDC 2, 7(0) ; Caller frame size
139 : SUB 5, 5, 2 ; Pop back to caller
140 : LDA 7, 142(0) ; Skip ELSE block
141 : LDC 1, 1(0) ; Load boolean-literal into R1
142 : ST 1, 4(5) ; Store function result into frame return slot
143 : LD 6, 0(5) ; Load return address
144 : LDA 7, 0(6) ; Return to caller
145 : LDA 4, 6(5) ; Compute callee base from caller size
146 : LD 1, 1(5) ; Load parameter 'a' into R1
147 : ST 1, 1(4) ; Store argument 0 in callee frame
148 : LD 1, 2(5) ; Load parameter 'n' into R1
149 : ST 1, 2(4) ; Store argument 1 in callee frame
150 : LD 1, 3(5) ; Load parameter 'upper' into R1
151 : ST 1, 3(4) ; Store argument 2 in callee frame
152 : LD 1, 4(5) ; Load parameter 'det' into R1
153 : ST 1, 4(4) ; Store argument 3 in callee frame
154 : LDA 4, 6(5) ; Compute callee base from caller size
155 : LD 1, 4(5) ; Load parameter 'det' into R1
156 : ST 1, 1(4) ; Store argument 0 in callee frame
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return address into callee frame
159 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
160 : LDA 7, 695(0) ; Call SQRT
161 : LD 1, 2(5) ; Load callee result into R1
162 : LDC 2, 6(0) ; Caller frame size
163 : SUB 5, 5, 2 ; Pop back to caller
164 : ST 1, 5(4) ; Store argument 4 in callee frame
165 : LDA 6, 169(0) ; Return address
166 : ST 6, 0(4) ; Store return address into callee frame
167 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
168 : LDA 7, 175(0) ; Call aLoop2
169 : LD 1, 6(5) ; Load callee result into R1
170 : LDC 2, 6(0) ; Caller frame size
171 : SUB 5, 5, 2 ; Pop back to caller
172 : ST 1, 5(5) ; Store function result into frame return slot
173 : LD 6, 0(5) ; Load return address
174 : LDA 7, 0(6) ; Return to caller
175 : LDA 4, 9(5) ; Compute callee base from caller size
176 : LD 1, 1(5) ; Load parameter 'a' into R1
177 : ST 1, 1(4) ; Store argument 0 in callee frame
178 : LD 1, 2(5) ; Load parameter 'n' into R1
179 : ST 1, 2(4) ; Store argument 1 in callee frame
180 : LD 1, 3(5) ; Load parameter 'upper' into R1
181 : ST 1, 3(4) ; Store argument 2 in callee frame
182 : LD 1, 4(5) ; Load parameter 'det' into R1
183 : ST 1, 4(4) ; Store argument 3 in callee frame
184 : LD 1, 5(5) ; Load parameter 'root' into R1
185 : ST 1, 5(4) ; Store argument 4 in callee frame
186 : LD 1, 1(5) ; Load parameter 'a' into R1
187 : ST 1, 7(5) ; Spill left operand at depth 0
188 : LDA 4, 9(5) ; Compute callee base from caller size
189 : LDC 1, 10(0) ; Load integer-literal into R1
190 : ST 1, 1(4) ; Store argument 0 in callee frame
191 : LD 1, 2(5) ; Load parameter 'n' into R1
192 : ST 1, 2(4) ; Store argument 1 in callee frame
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(4) ; Store return address into callee frame
195 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
196 : LDA 7, 778(0) ; Call EXP
197 : LD 1, 3(5) ; Load callee result into R1
198 : LDC 2, 9(0) ; Caller frame size
199 : SUB 5, 5, 2 ; Pop back to caller
200 : LD 2, 7(5) ; Restore left operand from depth 0
201 : MUL 1, 2, 1 ; R1 = left * right
202 : ST 1, 7(5) ; Spill left operand at depth 0
203 : LD 1, 5(5) ; Load parameter 'root' into R1
204 : ST 1, 8(5) ; Spill left operand at depth 1
205 : LDC 1, 1(0) ; Load integer-literal into R1
206 : LD 2, 8(5) ; Restore left operand from depth 1
207 : ADD 1, 2, 1 ; R1 = left + right
208 : ST 1, 8(5) ; Spill left operand at depth 1
209 : LDC 1, 2(0) ; Load integer-literal into R1
210 : LD 2, 8(5) ; Restore left operand from depth 1
211 : DIV 1, 2, 1 ; R1 = left / right
212 : LD 2, 7(5) ; Restore left operand from depth 0
213 : ADD 1, 2, 1 ; R1 = left + right
214 : ST 1, 6(4) ; Store argument 5 in callee frame
215 : LDA 6, 219(0) ; Return address
216 : ST 6, 0(4) ; Store return address into callee frame
217 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
218 : LDA 7, 225(0) ; Call aLoop3
219 : LD 1, 7(5) ; Load callee result into R1
220 : LDC 2, 9(0) ; Caller frame size
221 : SUB 5, 5, 2 ; Pop back to caller
222 : ST 1, 6(5) ; Store function result into frame return slot
223 : LD 6, 0(5) ; Load return address
224 : LDA 7, 0(6) ; Return to caller
225 : LDA 4, 10(5) ; Compute callee base from caller size
226 : LD 1, 5(5) ; Load parameter 'root' into R1
227 : ST 1, 1(4) ; Store argument 0 in callee frame
228 : LD 1, 4(5) ; Load parameter 'det' into R1
229 : ST 1, 2(4) ; Store argument 1 in callee frame
230 : LDA 6, 234(0) ; Return address
231 : ST 6, 0(4) ; Store return address into callee frame
232 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
233 : LDA 7, 533(0) ; Call ISROOT
234 : LD 1, 3(5) ; Load callee result into R1
235 : LDC 2, 10(0) ; Caller frame size
236 : SUB 5, 5, 2 ; Pop back to caller
237 : ST 1, 8(5) ; Spill left operand at depth 0
238 : LDA 4, 10(5) ; Compute callee base from caller size
239 : LD 1, 5(5) ; Load parameter 'root' into R1
240 : ST 1, 9(5) ; Spill left operand at depth 1
241 : LDC 1, 1(0) ; Load integer-literal into R1
242 : LD 2, 9(5) ; Restore left operand from depth 1
243 : ADD 1, 2, 1 ; R1 = left + right
244 : ST 1, 1(4) ; Store argument 0 in callee frame
245 : LDA 6, 249(0) ; Return address
246 : ST 6, 0(4) ; Store return address into callee frame
247 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
248 : LDA 7, 549(0) ; Call EVEN
249 : LD 1, 2(5) ; Load callee result into R1
250 : LDC 2, 10(0) ; Caller frame size
251 : SUB 5, 5, 2 ; Pop back to caller
252 : LD 2, 8(5) ; Restore left operand from depth 0
253 : MUL 1, 2, 1 ; R1 = left AND right
254 : ST 1, 8(5) ; Spill left operand at depth 0
255 : LDA 4, 10(5) ; Compute callee base from caller size
256 : LD 1, 6(5) ; Load parameter 'candidate' into R1
257 : ST 1, 1(4) ; Store argument 0 in callee frame
258 : LDA 6, 262(0) ; Return address
259 : ST 6, 0(4) ; Store return address into callee frame
260 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
261 : LDA 7, 335(0) ; Call isExcellent
262 : LD 1, 2(5) ; Load callee result into R1
263 : LDC 2, 10(0) ; Caller frame size
264 : SUB 5, 5, 2 ; Pop back to caller
265 : LD 2, 8(5) ; Restore left operand from depth 0
266 : MUL 1, 2, 1 ; R1 = left AND right
267 : JEQ 1, 285(0) ; If condition is false, jump to ELSE
268 : LDA 4, 10(5) ; Compute callee base from caller size
269 : LD 1, 1(5) ; Load parameter 'a' into R1
270 : ST 1, 1(4) ; Store argument 0 in callee frame
271 : LD 1, 2(5) ; Load parameter 'n' into R1
272 : ST 1, 2(4) ; Store argument 1 in callee frame
273 : LD 1, 3(5) ; Load parameter 'upper' into R1
274 : ST 1, 3(4) ; Store argument 2 in callee frame
275 : LD 1, 6(5) ; Load parameter 'candidate' into R1
276 : ST 1, 4(4) ; Store argument 3 in callee frame
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return address into callee frame
279 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
280 : LDA 7, 306(0) ; Call printCandidateAndContinue
281 : LD 1, 5(5) ; Load callee result into R1
282 : LDC 2, 10(0) ; Caller frame size
283 : SUB 5, 5, 2 ; Pop back to caller
284 : LDA 7, 303(0) ; Skip ELSE block
285 : LDA 4, 10(5) ; Compute callee base from caller size
286 : LD 1, 1(5) ; Load parameter 'a' into R1
287 : ST 1, 8(5) ; Spill left operand at depth 0
288 : LDC 1, 1(0) ; Load integer-literal into R1
289 : LD 2, 8(5) ; Restore left operand from depth 0
290 : ADD 1, 2, 1 ; R1 = left + right
291 : ST 1, 1(4) ; Store argument 0 in callee frame
292 : LD 1, 2(5) ; Load parameter 'n' into R1
293 : ST 1, 2(4) ; Store argument 1 in callee frame
294 : LD 1, 3(5) ; Load parameter 'upper' into R1
295 : ST 1, 3(4) ; Store argument 2 in callee frame
296 : LDA 6, 300(0) ; Return address
297 : ST 6, 0(4) ; Store return address into callee frame
298 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
299 : LDA 7, 72(0) ; Call aLoop
300 : LD 1, 4(5) ; Load callee result into R1
301 : LDC 2, 10(0) ; Caller frame size
302 : SUB 5, 5, 2 ; Pop back to caller
303 : ST 1, 7(5) ; Store function result into frame return slot
304 : LD 6, 0(5) ; Load return address
305 : LDA 7, 0(6) ; Return to caller
306 : LD 1, 4(5) ; Load parameter 'candidate' into R1
307 : LDA 4, 7(5) ; Compute callee base from caller size
308 : LDA 6, 312(0) ; Return address
309 : ST 6, 0(4) ; Store return address into callee frame
310 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
311 : LDA 7, 9(0) ; Call built-in print
312 : LDC 2, 7(0) ; Caller frame size
313 : SUB 5, 5, 2 ; Pop back to caller
314 : LDA 4, 7(5) ; Compute callee base from caller size
315 : LD 1, 1(5) ; Load parameter 'a' into R1
316 : ST 1, 6(5) ; Spill left operand at depth 0
317 : LDC 1, 1(0) ; Load integer-literal into R1
318 : LD 2, 6(5) ; Restore left operand from depth 0
319 : ADD 1, 2, 1 ; R1 = left + right
320 : ST 1, 1(4) ; Store argument 0 in callee frame
321 : LD 1, 2(5) ; Load parameter 'n' into R1
322 : ST 1, 2(4) ; Store argument 1 in callee frame
323 : LD 1, 3(5) ; Load parameter 'upper' into R1
324 : ST 1, 3(4) ; Store argument 2 in callee frame
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return address into callee frame
327 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
328 : LDA 7, 72(0) ; Call aLoop
329 : LD 1, 4(5) ; Load callee result into R1
330 : LDC 2, 7(0) ; Caller frame size
331 : SUB 5, 5, 2 ; Pop back to caller
332 : ST 1, 5(5) ; Store function result into frame return slot
333 : LD 6, 0(5) ; Load return address
334 : LDA 7, 0(6) ; Return to caller
335 : LDA 4, 3(5) ; Compute callee base from caller size
336 : LD 1, 1(5) ; Load parameter 'n' into R1
337 : ST 1, 1(4) ; Store argument 0 in callee frame
338 : LDA 4, 3(5) ; Compute callee base from caller size
339 : LD 1, 1(5) ; Load parameter 'n' into R1
340 : ST 1, 1(4) ; Store argument 0 in callee frame
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return address into callee frame
343 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
344 : LDA 7, 500(0) ; Call length
345 : LD 1, 2(5) ; Load callee result into R1
346 : LDC 2, 3(0) ; Caller frame size
347 : SUB 5, 5, 2 ; Pop back to caller
348 : ST 1, 2(4) ; Store argument 1 in callee frame
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return address into callee frame
351 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
352 : LDA 7, 359(0) ; Call isExcellentSwitch
353 : LD 1, 3(5) ; Load callee result into R1
354 : LDC 2, 3(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop back to caller
356 : ST 1, 2(5) ; Store function result into frame return slot
357 : LD 6, 0(5) ; Load return address
358 : LDA 7, 0(6) ; Return to caller
359 : LDA 4, 5(5) ; Compute callee base from caller size
360 : LD 1, 2(5) ; Load parameter 'length' into R1
361 : ST 1, 1(4) ; Store argument 0 in callee frame
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return address into callee frame
364 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
365 : LDA 7, 736(0) ; Call ODD
366 : LD 1, 2(5) ; Load callee result into R1
367 : LDC 2, 5(0) ; Caller frame size
368 : SUB 5, 5, 2 ; Pop back to caller
369 : JEQ 1, 372(0) ; If condition is false, jump to ELSE
370 : LDC 1, 0(0) ; Load boolean-literal into R1
371 : LDA 7, 410(0) ; Skip ELSE block
372 : LD 1, 1(5) ; Load parameter 'n' into R1
373 : ST 1, 4(5) ; Spill left operand at depth 0
374 : LDA 4, 5(5) ; Compute callee base from caller size
375 : LDA 4, 5(5) ; Compute callee base from caller size
376 : LD 1, 1(5) ; Load parameter 'n' into R1
377 : ST 1, 1(4) ; Store argument 0 in callee frame
378 : LDA 6, 382(0) ; Return address
379 : ST 6, 0(4) ; Store return address into callee frame
380 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
381 : LDA 7, 468(0) ; Call a
382 : LD 1, 2(5) ; Load callee result into R1
383 : LDC 2, 5(0) ; Caller frame size
384 : SUB 5, 5, 2 ; Pop back to caller
385 : ST 1, 1(4) ; Store argument 0 in callee frame
386 : LDA 4, 5(5) ; Compute callee base from caller size
387 : LD 1, 1(5) ; Load parameter 'n' into R1
388 : ST 1, 1(4) ; Store argument 0 in callee frame
389 : LDA 6, 393(0) ; Return address
390 : ST 6, 0(4) ; Store return address into callee frame
391 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
392 : LDA 7, 429(0) ; Call b
393 : LD 1, 2(5) ; Load callee result into R1
394 : LDC 2, 5(0) ; Caller frame size
395 : SUB 5, 5, 2 ; Pop back to caller
396 : ST 1, 2(4) ; Store argument 1 in callee frame
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return address into callee frame
399 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
400 : LDA 7, 413(0) ; Call excellentDiff
401 : LD 1, 3(5) ; Load callee result into R1
402 : LDC 2, 5(0) ; Caller frame size
403 : SUB 5, 5, 2 ; Pop back to caller
404 : LD 2, 4(5) ; Restore left operand from depth 0
405 : SUB 1, 2, 1 ; left - right for equality check
406 : JEQ 1, 2(7) ; If R1 == 0, jump to true
407 : LDC 1, 0(0) ; false
408 : LDA 7, 1(7) ; skip setting true
409 : LDC 1, 1(0) ; true
410 : ST 1, 3(5) ; Store function result into frame return slot
411 : LD 6, 0(5) ; Load return address
412 : LDA 7, 0(6) ; Return to caller
413 : LD 1, 2(5) ; Load parameter 'b' into R1
414 : ST 1, 4(5) ; Spill left operand at depth 0
415 : LD 1, 2(5) ; Load parameter 'b' into R1
416 : LD 2, 4(5) ; Restore left operand from depth 0
417 : MUL 1, 2, 1 ; R1 = left * right
418 : ST 1, 4(5) ; Spill left operand at depth 0
419 : LD 1, 1(5) ; Load parameter 'a' into R1
420 : ST 1, 5(5) ; Spill left operand at depth 1
421 : LD 1, 1(5) ; Load parameter 'a' into R1
422 : LD 2, 5(5) ; Restore left operand from depth 1
423 : MUL 1, 2, 1 ; R1 = left * right
424 : LD 2, 4(5) ; Restore left operand from depth 0
425 : SUB 1, 2, 1 ; R1 = left - right
426 : ST 1, 3(5) ; Store function result into frame return slot
427 : LD 6, 0(5) ; Load return address
428 : LDA 7, 0(6) ; Return to caller
429 : LDA 4, 4(5) ; Compute callee base from caller size
430 : LD 1, 1(5) ; Load parameter 'n' into R1
431 : ST 1, 1(4) ; Store argument 0 in callee frame
432 : LDA 4, 4(5) ; Compute callee base from caller size
433 : LDC 1, 10(0) ; Load integer-literal into R1
434 : ST 1, 1(4) ; Store argument 0 in callee frame
435 : LDA 4, 4(5) ; Compute callee base from caller size
436 : LD 1, 1(5) ; Load parameter 'n' into R1
437 : ST 1, 1(4) ; Store argument 0 in callee frame
438 : LDA 6, 442(0) ; Return address
439 : ST 6, 0(4) ; Store return address into callee frame
440 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
441 : LDA 7, 500(0) ; Call length
442 : LD 1, 2(5) ; Load callee result into R1
443 : LDC 2, 4(0) ; Caller frame size
444 : SUB 5, 5, 2 ; Pop back to caller
445 : ST 1, 3(5) ; Spill left operand at depth 0
446 : LDC 1, 2(0) ; Load integer-literal into R1
447 : LD 2, 3(5) ; Restore left operand from depth 0
448 : DIV 1, 2, 1 ; R1 = left / right
449 : ST 1, 2(4) ; Store argument 1 in callee frame
450 : LDA 6, 454(0) ; Return address
451 : ST 6, 0(4) ; Store return address into callee frame
452 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
453 : LDA 7, 778(0) ; Call EXP
454 : LD 1, 3(5) ; Load callee result into R1
455 : LDC 2, 4(0) ; Caller frame size
456 : SUB 5, 5, 2 ; Pop back to caller
457 : ST 1, 2(4) ; Store argument 1 in callee frame
458 : LDA 6, 462(0) ; Return address
459 : ST 6, 0(4) ; Store return address into callee frame
460 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
461 : LDA 7, 813(0) ; Call MOD
462 : LD 1, 3(5) ; Load callee result into R1
463 : LDC 2, 4(0) ; Caller frame size
464 : SUB 5, 5, 2 ; Pop back to caller
465 : ST 1, 2(5) ; Store function result into frame return slot
466 : LD 6, 0(5) ; Load return address
467 : LDA 7, 0(6) ; Return to caller
468 : LD 1, 1(5) ; Load parameter 'n' into R1
469 : ST 1, 3(5) ; Spill left operand at depth 0
470 : LDA 4, 5(5) ; Compute callee base from caller size
471 : LDC 1, 10(0) ; Load integer-literal into R1
472 : ST 1, 1(4) ; Store argument 0 in callee frame
473 : LDA 4, 5(5) ; Compute callee base from caller size
474 : LD 1, 1(5) ; Load parameter 'n' into R1
475 : ST 1, 1(4) ; Store argument 0 in callee frame
476 : LDA 6, 480(0) ; Return address
477 : ST 6, 0(4) ; Store return address into callee frame
478 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
479 : LDA 7, 500(0) ; Call length
480 : LD 1, 2(5) ; Load callee result into R1
481 : LDC 2, 5(0) ; Caller frame size
482 : SUB 5, 5, 2 ; Pop back to caller
483 : ST 1, 4(5) ; Spill left operand at depth 1
484 : LDC 1, 2(0) ; Load integer-literal into R1
485 : LD 2, 4(5) ; Restore left operand from depth 1
486 : DIV 1, 2, 1 ; R1 = left / right
487 : ST 1, 2(4) ; Store argument 1 in callee frame
488 : LDA 6, 492(0) ; Return address
489 : ST 6, 0(4) ; Store return address into callee frame
490 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
491 : LDA 7, 778(0) ; Call EXP
492 : LD 1, 3(5) ; Load callee result into R1
493 : LDC 2, 5(0) ; Caller frame size
494 : SUB 5, 5, 2 ; Pop back to caller
495 : LD 2, 3(5) ; Restore left operand from depth 0
496 : DIV 1, 2, 1 ; R1 = left / right
497 : ST 1, 2(5) ; Store function result into frame return slot
498 : LD 6, 0(5) ; Load return address
499 : LDA 7, 0(6) ; Return to caller
500 : LD 1, 1(5) ; Load parameter 'n' into R1
501 : ST 1, 3(5) ; Spill left operand at depth 0
502 : LDC 1, 10(0) ; Load integer-literal into R1
503 : LD 2, 3(5) ; Restore left operand from depth 0
504 : SUB 1, 2, 1 ; left - right for less-than check
505 : JLT 1, 2(7) ; If R1 < 0, jump to true
506 : LDC 1, 0(0) ; false
507 : LDA 7, 1(7) ; skip setting true
508 : LDC 1, 1(0) ; true
509 : JEQ 1, 512(0) ; If condition is false, jump to ELSE
510 : LDC 1, 1(0) ; Load integer-literal into R1
511 : LDA 7, 530(0) ; Skip ELSE block
512 : LDC 1, 1(0) ; Load integer-literal into R1
513 : ST 1, 3(5) ; Spill left operand at depth 0
514 : LDA 4, 5(5) ; Compute callee base from caller size
515 : LD 1, 1(5) ; Load parameter 'n' into R1
516 : ST 1, 4(5) ; Spill left operand at depth 1
517 : LDC 1, 10(0) ; Load integer-literal into R1
518 : LD 2, 4(5) ; Restore left operand from depth 1
519 : DIV 1, 2, 1 ; R1 = left / right
520 : ST 1, 1(4) ; Store argument 0 in callee frame
521 : LDA 6, 525(0) ; Return address
522 : ST 6, 0(4) ; Store return address into callee frame
523 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
524 : LDA 7, 500(0) ; Call length
525 : LD 1, 2(5) ; Load callee result into R1
526 : LDC 2, 5(0) ; Caller frame size
527 : SUB 5, 5, 2 ; Pop back to caller
528 : LD 2, 3(5) ; Restore left operand from depth 0
529 : ADD 1, 2, 1 ; R1 = left + right
530 : ST 1, 2(5) ; Store function result into frame return slot
531 : LD 6, 0(5) ; Load return address
532 : LDA 7, 0(6) ; Return to caller
533 : LD 1, 2(5) ; Load parameter 'n' into R1
534 : ST 1, 4(5) ; Spill left operand at depth 0
535 : LD 1, 1(5) ; Load parameter 'r' into R1
536 : ST 1, 5(5) ; Spill left operand at depth 1
537 : LD 1, 1(5) ; Load parameter 'r' into R1
538 : LD 2, 5(5) ; Restore left operand from depth 1
539 : MUL 1, 2, 1 ; R1 = left * right
540 : LD 2, 4(5) ; Restore left operand from depth 0
541 : SUB 1, 2, 1 ; left - right for equality check
542 : JEQ 1, 2(7) ; If R1 == 0, jump to true
543 : LDC 1, 0(0) ; false
544 : LDA 7, 1(7) ; skip setting true
545 : LDC 1, 1(0) ; true
546 : ST 1, 3(5) ; Store function result into frame return slot
547 : LD 6, 0(5) ; Load return address
548 : LDA 7, 0(6) ; Return to caller
549 : LD 1, 1(5) ; Load parameter 'n' into R1
550 : ST 1, 3(5) ; Spill left operand at depth 0
551 : LDC 1, 2(0) ; Load integer-literal into R1
552 : ST 1, 4(5) ; Spill left operand at depth 1
553 : LD 1, 1(5) ; Load parameter 'n' into R1
554 : ST 1, 5(5) ; Spill left operand at depth 2
555 : LDC 1, 2(0) ; Load integer-literal into R1
556 : LD 2, 5(5) ; Restore left operand from depth 2
557 : DIV 1, 2, 1 ; R1 = left / right
558 : LD 2, 4(5) ; Restore left operand from depth 1
559 : MUL 1, 2, 1 ; R1 = left * right
560 : LD 2, 3(5) ; Restore left operand from depth 0
561 : SUB 1, 2, 1 ; left - right for equality check
562 : JEQ 1, 2(7) ; If R1 == 0, jump to true
563 : LDC 1, 0(0) ; false
564 : LDA 7, 1(7) ; skip setting true
565 : LDC 1, 1(0) ; true
566 : ST 1, 2(5) ; Store function result into frame return slot
567 : LD 6, 0(5) ; Load return address
568 : LDA 7, 0(6) ; Return to caller
569 : LDA 4, 7(5) ; Compute callee base from caller size
570 : LD 1, 4(5) ; Load parameter 'mid' into R1
571 : ST 1, 6(5) ; Spill left operand at depth 0
572 : LD 1, 4(5) ; Load parameter 'mid' into R1
573 : LD 2, 6(5) ; Restore left operand from depth 0
574 : MUL 1, 2, 1 ; R1 = left * right
575 : ST 1, 1(4) ; Store argument 0 in callee frame
576 : LD 1, 1(5) ; Load parameter 'n' into R1
577 : ST 1, 2(4) ; Store argument 1 in callee frame
578 : LDA 6, 582(0) ; Return address
579 : ST 6, 0(4) ; Store return address into callee frame
580 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
581 : LDA 7, 712(0) ; Call LE
582 : LD 1, 3(5) ; Load callee result into R1
583 : LDC 2, 7(0) ; Caller frame size
584 : SUB 5, 5, 2 ; Pop back to caller
585 : JEQ 1, 601(0) ; If condition is false, jump to ELSE
586 : LDA 4, 7(5) ; Compute callee base from caller size
587 : LD 1, 1(5) ; Load parameter 'n' into R1
588 : ST 1, 1(4) ; Store argument 0 in callee frame
589 : LD 1, 4(5) ; Load parameter 'mid' into R1
590 : ST 1, 2(4) ; Store argument 1 in callee frame
591 : LD 1, 3(5) ; Load parameter 'high' into R1
592 : ST 1, 3(4) ; Store argument 2 in callee frame
593 : LDA 6, 597(0) ; Return address
594 : ST 6, 0(4) ; Store return address into callee frame
595 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
596 : LDA 7, 618(0) ; Call SQRTSEARCH
597 : LD 1, 4(5) ; Load callee result into R1
598 : LDC 2, 7(0) ; Caller frame size
599 : SUB 5, 5, 2 ; Pop back to caller
600 : LDA 7, 615(0) ; Skip ELSE block
601 : LDA 4, 7(5) ; Compute callee base from caller size
602 : LD 1, 1(5) ; Load parameter 'n' into R1
603 : ST 1, 1(4) ; Store argument 0 in callee frame
604 : LD 1, 2(5) ; Load parameter 'low' into R1
605 : ST 1, 2(4) ; Store argument 1 in callee frame
606 : LD 1, 4(5) ; Load parameter 'mid' into R1
607 : ST 1, 3(4) ; Store argument 2 in callee frame
608 : LDA 6, 612(0) ; Return address
609 : ST 6, 0(4) ; Store return address into callee frame
610 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
611 : LDA 7, 618(0) ; Call SQRTSEARCH
612 : LD 1, 4(5) ; Load callee result into R1
613 : LDC 2, 7(0) ; Caller frame size
614 : SUB 5, 5, 2 ; Pop back to caller
615 : ST 1, 5(5) ; Store function result into frame return slot
616 : LD 6, 0(5) ; Load return address
617 : LDA 7, 0(6) ; Return to caller
618 : LDA 4, 7(5) ; Compute callee base from caller size
619 : LD 1, 3(5) ; Load parameter 'high' into R1
620 : ST 1, 1(4) ; Store argument 0 in callee frame
621 : LD 1, 2(5) ; Load parameter 'low' into R1
622 : ST 1, 5(5) ; Spill left operand at depth 0
623 : LDC 1, 1(0) ; Load integer-literal into R1
624 : LD 2, 5(5) ; Restore left operand from depth 0
625 : ADD 1, 2, 1 ; R1 = left + right
626 : ST 1, 2(4) ; Store argument 1 in callee frame
627 : LDA 6, 631(0) ; Return address
628 : ST 6, 0(4) ; Store return address into callee frame
629 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
630 : LDA 7, 712(0) ; Call LE
631 : LD 1, 3(5) ; Load callee result into R1
632 : LDC 2, 7(0) ; Caller frame size
633 : SUB 5, 5, 2 ; Pop back to caller
634 : JEQ 1, 668(0) ; If condition is false, jump to ELSE
635 : LDA 4, 7(5) ; Compute callee base from caller size
636 : LD 1, 1(5) ; Load parameter 'n' into R1
637 : ST 1, 5(5) ; Spill left operand at depth 0
638 : LD 1, 2(5) ; Load parameter 'low' into R1
639 : ST 1, 6(5) ; Spill left operand at depth 1
640 : LD 1, 2(5) ; Load parameter 'low' into R1
641 : LD 2, 6(5) ; Restore left operand from depth 1
642 : MUL 1, 2, 1 ; R1 = left * right
643 : LD 2, 5(5) ; Restore left operand from depth 0
644 : SUB 1, 2, 1 ; R1 = left - right
645 : ST 1, 1(4) ; Store argument 0 in callee frame
646 : LD 1, 3(5) ; Load parameter 'high' into R1
647 : ST 1, 5(5) ; Spill left operand at depth 0
648 : LD 1, 3(5) ; Load parameter 'high' into R1
649 : LD 2, 5(5) ; Restore left operand from depth 0
650 : MUL 1, 2, 1 ; R1 = left * right
651 : ST 1, 5(5) ; Spill left operand at depth 0
652 : LD 1, 1(5) ; Load parameter 'n' into R1
653 : LD 2, 5(5) ; Restore left operand from depth 0
654 : SUB 1, 2, 1 ; R1 = left - right
655 : ST 1, 2(4) ; Store argument 1 in callee frame
656 : LDA 6, 660(0) ; Return address
657 : ST 6, 0(4) ; Store return address into callee frame
658 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
659 : LDA 7, 712(0) ; Call LE
660 : LD 1, 3(5) ; Load callee result into R1
661 : LDC 2, 7(0) ; Caller frame size
662 : SUB 5, 5, 2 ; Pop back to caller
663 : JEQ 1, 666(0) ; If condition is false, jump to ELSE
664 : LD 1, 2(5) ; Load parameter 'low' into R1
665 : LDA 7, 667(0) ; Skip ELSE block
666 : LD 1, 3(5) ; Load parameter 'high' into R1
667 : LDA 7, 692(0) ; Skip ELSE block
668 : LDA 4, 7(5) ; Compute callee base from caller size
669 : LD 1, 1(5) ; Load parameter 'n' into R1
670 : ST 1, 1(4) ; Store argument 0 in callee frame
671 : LD 1, 2(5) ; Load parameter 'low' into R1
672 : ST 1, 2(4) ; Store argument 1 in callee frame
673 : LD 1, 3(5) ; Load parameter 'high' into R1
674 : ST 1, 3(4) ; Store argument 2 in callee frame
675 : LD 1, 2(5) ; Load parameter 'low' into R1
676 : ST 1, 5(5) ; Spill left operand at depth 0
677 : LD 1, 3(5) ; Load parameter 'high' into R1
678 : LD 2, 5(5) ; Restore left operand from depth 0
679 : ADD 1, 2, 1 ; R1 = left + right
680 : ST 1, 5(5) ; Spill left operand at depth 0
681 : LDC 1, 2(0) ; Load integer-literal into R1
682 : LD 2, 5(5) ; Restore left operand from depth 0
683 : DIV 1, 2, 1 ; R1 = left / right
684 : ST 1, 4(4) ; Store argument 3 in callee frame
685 : LDA 6, 689(0) ; Return address
686 : ST 6, 0(4) ; Store return address into callee frame
687 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
688 : LDA 7, 569(0) ; Call SQRTSPLIT
689 : LD 1, 5(5) ; Load callee result into R1
690 : LDC 2, 7(0) ; Caller frame size
691 : SUB 5, 5, 2 ; Pop back to caller
692 : ST 1, 4(5) ; Store function result into frame return slot
693 : LD 6, 0(5) ; Load return address
694 : LDA 7, 0(6) ; Return to caller
695 : LDA 4, 3(5) ; Compute callee base from caller size
696 : LD 1, 1(5) ; Load parameter 'n' into R1
697 : ST 1, 1(4) ; Store argument 0 in callee frame
698 : LDC 1, 0(0) ; Load integer-literal into R1
699 : ST 1, 2(4) ; Store argument 1 in callee frame
700 : LD 1, 1(5) ; Load parameter 'n' into R1
701 : ST 1, 3(4) ; Store argument 2 in callee frame
702 : LDA 6, 706(0) ; Return address
703 : ST 6, 0(4) ; Store return address into callee frame
704 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
705 : LDA 7, 618(0) ; Call SQRTSEARCH
706 : LD 1, 4(5) ; Load callee result into R1
707 : LDC 2, 3(0) ; Caller frame size
708 : SUB 5, 5, 2 ; Pop back to caller
709 : ST 1, 2(5) ; Store function result into frame return slot
710 : LD 6, 0(5) ; Load return address
711 : LDA 7, 0(6) ; Return to caller
712 : LD 1, 1(5) ; Load parameter 'p' into R1
713 : ST 1, 4(5) ; Spill left operand at depth 0
714 : LD 1, 2(5) ; Load parameter 'q' into R1
715 : LD 2, 4(5) ; Restore left operand from depth 0
716 : SUB 1, 2, 1 ; left - right for less-than check
717 : JLT 1, 2(7) ; If R1 < 0, jump to true
718 : LDC 1, 0(0) ; false
719 : LDA 7, 1(7) ; skip setting true
720 : LDC 1, 1(0) ; true
721 : ST 1, 4(5) ; Spill left operand at depth 0
722 : LD 1, 1(5) ; Load parameter 'p' into R1
723 : ST 1, 5(5) ; Spill left operand at depth 1
724 : LD 1, 2(5) ; Load parameter 'q' into R1
725 : LD 2, 5(5) ; Restore left operand from depth 1
726 : SUB 1, 2, 1 ; left - right for equality check
727 : JEQ 1, 2(7) ; If R1 == 0, jump to true
728 : LDC 1, 0(0) ; false
729 : LDA 7, 1(7) ; skip setting true
730 : LDC 1, 1(0) ; true
731 : LD 2, 4(5) ; Restore left operand from depth 0
732 : ADD 1, 2, 1 ; R1 = left OR right
733 : ST 1, 3(5) ; Store function result into frame return slot
734 : LD 6, 0(5) ; Load return address
735 : LDA 7, 0(6) ; Return to caller
736 : LDC 1, 0(0) ; Load integer-literal into R1
737 : ST 1, 3(5) ; Spill left operand at depth 0
738 : LD 1, 1(5) ; Load parameter 'n' into R1
739 : LD 2, 3(5) ; Restore left operand from depth 0
740 : SUB 1, 2, 1 ; left - right for less-than check
741 : JLT 1, 2(7) ; If R1 < 0, jump to true
742 : LDC 1, 0(0) ; false
743 : LDA 7, 1(7) ; skip setting true
744 : LDC 1, 1(0) ; true
745 : JEQ 1, 764(0) ; If condition is false, jump to ELSE
746 : LDC 1, 2(0) ; Load integer-literal into R1
747 : ST 1, 3(5) ; Spill left operand at depth 0
748 : LD 1, 1(5) ; Load parameter 'n' into R1
749 : ST 1, 4(5) ; Spill left operand at depth 1
750 : LDC 1, 2(0) ; Load integer-literal into R1
751 : LD 2, 4(5) ; Restore left operand from depth 1
752 : DIV 1, 2, 1 ; R1 = left / right
753 : LD 2, 3(5) ; Restore left operand from depth 0
754 : MUL 1, 2, 1 ; R1 = left * right
755 : ST 1, 3(5) ; Spill left operand at depth 0
756 : LD 1, 1(5) ; Load parameter 'n' into R1
757 : LD 2, 3(5) ; Restore left operand from depth 0
758 : SUB 1, 2, 1 ; left - right for less-than check
759 : JLT 1, 2(7) ; If R1 < 0, jump to true
760 : LDC 1, 0(0) ; false
761 : LDA 7, 1(7) ; skip setting true
762 : LDC 1, 1(0) ; true
763 : LDA 7, 775(0) ; Skip ELSE block
764 : LDA 4, 5(5) ; Compute callee base from caller size
765 : LD 1, 1(5) ; Load parameter 'n' into R1
766 : SUB 1, 0, 1 ; Negate value in R1
767 : ST 1, 1(4) ; Store argument 0 in callee frame
768 : LDA 6, 772(0) ; Return address
769 : ST 6, 0(4) ; Store return address into callee frame
770 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
771 : LDA 7, 736(0) ; Call ODD
772 : LD 1, 2(5) ; Load callee result into R1
773 : LDC 2, 5(0) ; Caller frame size
774 : SUB 5, 5, 2 ; Pop back to caller
775 : ST 1, 2(5) ; Store function result into frame return slot
776 : LD 6, 0(5) ; Load return address
777 : LDA 7, 0(6) ; Return to caller
778 : LD 1, 2(5) ; Load parameter 'n' into R1
779 : ST 1, 4(5) ; Spill left operand at depth 0
780 : LDC 1, 0(0) ; Load integer-literal into R1
781 : LD 2, 4(5) ; Restore left operand from depth 0
782 : SUB 1, 2, 1 ; left - right for equality check
783 : JEQ 1, 2(7) ; If R1 == 0, jump to true
784 : LDC 1, 0(0) ; false
785 : LDA 7, 1(7) ; skip setting true
786 : LDC 1, 1(0) ; true
787 : JEQ 1, 790(0) ; If condition is false, jump to ELSE
788 : LDC 1, 1(0) ; Load integer-literal into R1
789 : LDA 7, 810(0) ; Skip ELSE block
790 : LD 1, 1(5) ; Load parameter 'm' into R1
791 : ST 1, 4(5) ; Spill left operand at depth 0
792 : LDA 4, 6(5) ; Compute callee base from caller size
793 : LD 1, 1(5) ; Load parameter 'm' into R1
794 : ST 1, 1(4) ; Store argument 0 in callee frame
795 : LD 1, 2(5) ; Load parameter 'n' into R1
796 : ST 1, 5(5) ; Spill left operand at depth 1
797 : LDC 1, 1(0) ; Load integer-literal into R1
798 : LD 2, 5(5) ; Restore left operand from depth 1
799 : SUB 1, 2, 1 ; R1 = left - right
800 : ST 1, 2(4) ; Store argument 1 in callee frame
801 : LDA 6, 805(0) ; Return address
802 : ST 6, 0(4) ; Store return address into callee frame
803 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
804 : LDA 7, 778(0) ; Call EXP
805 : LD 1, 3(5) ; Load callee result into R1
806 : LDC 2, 6(0) ; Caller frame size
807 : SUB 5, 5, 2 ; Pop back to caller
808 : LD 2, 4(5) ; Restore left operand from depth 0
809 : MUL 1, 2, 1 ; R1 = left * right
810 : ST 1, 3(5) ; Store function result into frame return slot
811 : LD 6, 0(5) ; Load return address
812 : LDA 7, 0(6) ; Return to caller
813 : LD 1, 1(5) ; Load parameter 'm' into R1
814 : ST 1, 4(5) ; Spill left operand at depth 0
815 : LD 1, 2(5) ; Load parameter 'n' into R1
816 : ST 1, 5(5) ; Spill left operand at depth 1
817 : LD 1, 1(5) ; Load parameter 'm' into R1
818 : ST 1, 6(5) ; Spill left operand at depth 2
819 : LD 1, 2(5) ; Load parameter 'n' into R1
820 : LD 2, 6(5) ; Restore left operand from depth 2
821 : DIV 1, 2, 1 ; R1 = left / right
822 : LD 2, 5(5) ; Restore left operand from depth 1
823 : MUL 1, 2, 1 ; R1 = left * right
824 : LD 2, 4(5) ; Restore left operand from depth 0
825 : SUB 1, 2, 1 ; R1 = left - right
826 : ST 1, 3(5) ; Store function result into frame return slot
827 : LD 6, 0(5) ; Load return address
828 : LDA 7, 0(6) ; Return to caller
