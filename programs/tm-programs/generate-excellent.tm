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
30 : LDA 7, 859(0) ; Call EXP
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
47 : LDA 7, 56(0) ; Call createLoop
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop back to caller
51 : ST 1, 2(5) ; Store result into caller’s return slot
52 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
53 : LD 1, 2(5) ; Load main return value into R1
54 : LD 6, 0(5) ; Load root return address from main frame
55 : LDA 7, 0(6) ; Return from main to runtime epilogue
56 : LD 1, 1(5) ; Load parameter 'a' into R1
57 : LDA 4, 5(5) ; Recompute callee base from caller size
58 : ST 1, 1(4) ; Store argument 0 in callee frame
59 : LD 1, 2(5) ; Load parameter 'n' into R1
60 : LDA 4, 5(5) ; Recompute callee base from caller size
61 : ST 1, 2(4) ; Store argument 1 in callee frame
62 : LDC 1, 10(0) ; Load integer-literal into R1
63 : ST 1, 4(5) ; Spill left operand at depth 0
64 : LD 1, 1(5) ; Load parameter 'a' into R1
65 : LD 2, 4(5) ; Restore left operand from depth 0
66 : MUL 1, 2, 1 ; R1 = left * right
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : ST 1, 3(4) ; Store argument 2 in callee frame
69 : LDA 4, 5(5) ; Recompute callee base from caller size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return address into callee frame
72 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
73 : LDA 7, 80(0) ; Call aLoop
74 : LD 1, 4(5) ; Load callee result into R1
75 : LDC 2, 7(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 3(5) ; Store function result into frame return slot
78 : LD 6, 0(5) ; Load return address
79 : LDA 7, 0(6) ; Return to caller
80 : LD 1, 1(5) ; Load parameter 'a' into R1
81 : ST 1, 5(5) ; Spill left operand at depth 0
82 : LD 1, 3(5) ; Load parameter 'upper' into R1
83 : LD 2, 5(5) ; Restore left operand from depth 0
84 : SUB 1, 2, 1 ; left - right for less-than check
85 : JLT 1, 2(7) ; If R1 < 0, jump to true
86 : LDC 1, 0(0) ; false
87 : LDA 7, 1(7) ; skip setting true
88 : LDC 1, 1(0) ; true
89 : JEQ 1, 157(0) ; If condition is false, jump to ELSE
90 : LD 1, 1(5) ; Load parameter 'a' into R1
91 : LDA 4, 7(5) ; Recompute callee base from caller size
92 : ST 1, 1(4) ; Store argument 0 in callee frame
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : LDA 4, 7(5) ; Recompute callee base from caller size
95 : ST 1, 2(4) ; Store argument 1 in callee frame
96 : LD 1, 3(5) ; Load parameter 'upper' into R1
97 : LDA 4, 7(5) ; Recompute callee base from caller size
98 : ST 1, 3(4) ; Store argument 2 in callee frame
99 : LDC 1, 4(0) ; Load integer-literal into R1
100 : ST 1, 5(5) ; Spill left operand at depth 0
101 : LD 1, 1(5) ; Load parameter 'a' into R1
102 : LDA 4, 7(5) ; Recompute callee base from caller size
103 : ST 1, 1(4) ; Store argument 0 in callee frame
104 : LDC 1, 2(0) ; Load integer-literal into R1
105 : LDA 4, 7(5) ; Recompute callee base from caller size
106 : ST 1, 2(4) ; Store argument 1 in callee frame
107 : LDA 4, 7(5) ; Recompute callee base from caller size
108 : LDA 6, 112(0) ; Return address
109 : ST 6, 0(4) ; Store return address into callee frame
110 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
111 : LDA 7, 859(0) ; Call EXP
112 : LD 1, 3(5) ; Load callee result into R1
113 : LDC 2, 6(0) ; Callee frame size
114 : SUB 5, 5, 2 ; Pop back to caller
115 : LD 2, 5(5) ; Restore left operand from depth 0
116 : MUL 1, 2, 1 ; R1 = left * right
117 : ST 1, 5(5) ; Spill left operand at depth 0
118 : LDC 1, 4(0) ; Load integer-literal into R1
119 : ST 1, 6(5) ; Spill left operand at depth 1
120 : LDC 1, 10(0) ; Load integer-literal into R1
121 : LDA 4, 7(5) ; Recompute callee base from caller size
122 : ST 1, 1(4) ; Store argument 0 in callee frame
123 : LD 1, 2(5) ; Load parameter 'n' into R1
124 : LDA 4, 7(5) ; Recompute callee base from caller size
125 : ST 1, 2(4) ; Store argument 1 in callee frame
126 : LDA 4, 7(5) ; Recompute callee base from caller size
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return address into callee frame
129 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
130 : LDA 7, 859(0) ; Call EXP
131 : LD 1, 3(5) ; Load callee result into R1
132 : LDC 2, 6(0) ; Callee frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : LD 2, 6(5) ; Restore left operand from depth 1
135 : MUL 1, 2, 1 ; R1 = left * right
136 : ST 1, 6(5) ; Spill left operand at depth 1
137 : LD 1, 1(5) ; Load parameter 'a' into R1
138 : LD 2, 6(5) ; Restore left operand from depth 1
139 : MUL 1, 2, 1 ; R1 = left * right
140 : LD 2, 5(5) ; Restore left operand from depth 0
141 : ADD 1, 2, 1 ; R1 = left + right
142 : ST 1, 5(5) ; Spill left operand at depth 0
143 : LDC 1, 1(0) ; Load integer-literal into R1
144 : LD 2, 5(5) ; Restore left operand from depth 0
145 : ADD 1, 2, 1 ; R1 = left + right
146 : LDA 4, 7(5) ; Recompute callee base from caller size
147 : ST 1, 4(4) ; Store argument 3 in callee frame
148 : LDA 4, 7(5) ; Recompute callee base from caller size
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return address into callee frame
151 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
152 : LDA 7, 161(0) ; Call aLoop1
153 : LD 1, 5(5) ; Load callee result into R1
154 : LDC 2, 6(0) ; Callee frame size
155 : SUB 5, 5, 2 ; Pop back to caller
156 : LDA 7, 158(0) ; Skip ELSE block
157 : LDC 1, 1(0) ; Load boolean-literal into R1
158 : ST 1, 4(5) ; Store function result into frame return slot
159 : LD 6, 0(5) ; Load return address
160 : LDA 7, 0(6) ; Return to caller
161 : LD 1, 1(5) ; Load parameter 'a' into R1
162 : LDA 4, 6(5) ; Recompute callee base from caller size
163 : ST 1, 1(4) ; Store argument 0 in callee frame
164 : LD 1, 2(5) ; Load parameter 'n' into R1
165 : LDA 4, 6(5) ; Recompute callee base from caller size
166 : ST 1, 2(4) ; Store argument 1 in callee frame
167 : LD 1, 3(5) ; Load parameter 'upper' into R1
168 : LDA 4, 6(5) ; Recompute callee base from caller size
169 : ST 1, 3(4) ; Store argument 2 in callee frame
170 : LD 1, 4(5) ; Load parameter 'det' into R1
171 : LDA 4, 6(5) ; Recompute callee base from caller size
172 : ST 1, 4(4) ; Store argument 3 in callee frame
173 : LD 1, 4(5) ; Load parameter 'det' into R1
174 : LDA 4, 6(5) ; Recompute callee base from caller size
175 : ST 1, 1(4) ; Store argument 0 in callee frame
176 : LDA 4, 6(5) ; Recompute callee base from caller size
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(4) ; Store return address into callee frame
179 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
180 : LDA 7, 772(0) ; Call SQRT
181 : LD 1, 2(5) ; Load callee result into R1
182 : LDC 2, 3(0) ; Callee frame size
183 : SUB 5, 5, 2 ; Pop back to caller
184 : LDA 4, 6(5) ; Recompute callee base from caller size
185 : ST 1, 5(4) ; Store argument 4 in callee frame
186 : LDA 4, 6(5) ; Recompute callee base from caller size
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return address into callee frame
189 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
190 : LDA 7, 197(0) ; Call aLoop2
191 : LD 1, 6(5) ; Load callee result into R1
192 : LDC 2, 9(0) ; Callee frame size
193 : SUB 5, 5, 2 ; Pop back to caller
194 : ST 1, 5(5) ; Store function result into frame return slot
195 : LD 6, 0(5) ; Load return address
196 : LDA 7, 0(6) ; Return to caller
197 : LD 1, 1(5) ; Load parameter 'a' into R1
198 : LDA 4, 9(5) ; Recompute callee base from caller size
199 : ST 1, 1(4) ; Store argument 0 in callee frame
200 : LD 1, 2(5) ; Load parameter 'n' into R1
201 : LDA 4, 9(5) ; Recompute callee base from caller size
202 : ST 1, 2(4) ; Store argument 1 in callee frame
203 : LD 1, 3(5) ; Load parameter 'upper' into R1
204 : LDA 4, 9(5) ; Recompute callee base from caller size
205 : ST 1, 3(4) ; Store argument 2 in callee frame
206 : LD 1, 4(5) ; Load parameter 'det' into R1
207 : LDA 4, 9(5) ; Recompute callee base from caller size
208 : ST 1, 4(4) ; Store argument 3 in callee frame
209 : LD 1, 5(5) ; Load parameter 'root' into R1
210 : LDA 4, 9(5) ; Recompute callee base from caller size
211 : ST 1, 5(4) ; Store argument 4 in callee frame
212 : LD 1, 1(5) ; Load parameter 'a' into R1
213 : ST 1, 7(5) ; Spill left operand at depth 0
214 : LDC 1, 10(0) ; Load integer-literal into R1
215 : LDA 4, 9(5) ; Recompute callee base from caller size
216 : ST 1, 1(4) ; Store argument 0 in callee frame
217 : LD 1, 2(5) ; Load parameter 'n' into R1
218 : LDA 4, 9(5) ; Recompute callee base from caller size
219 : ST 1, 2(4) ; Store argument 1 in callee frame
220 : LDA 4, 9(5) ; Recompute callee base from caller size
221 : LDA 6, 225(0) ; Return address
222 : ST 6, 0(4) ; Store return address into callee frame
223 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
224 : LDA 7, 859(0) ; Call EXP
225 : LD 1, 3(5) ; Load callee result into R1
226 : LDC 2, 6(0) ; Callee frame size
227 : SUB 5, 5, 2 ; Pop back to caller
228 : LD 2, 7(5) ; Restore left operand from depth 0
229 : MUL 1, 2, 1 ; R1 = left * right
230 : ST 1, 7(5) ; Spill left operand at depth 0
231 : LD 1, 5(5) ; Load parameter 'root' into R1
232 : ST 1, 8(5) ; Spill left operand at depth 1
233 : LDC 1, 1(0) ; Load integer-literal into R1
234 : LD 2, 8(5) ; Restore left operand from depth 1
235 : ADD 1, 2, 1 ; R1 = left + right
236 : ST 1, 8(5) ; Spill left operand at depth 1
237 : LDC 1, 2(0) ; Load integer-literal into R1
238 : LD 2, 8(5) ; Restore left operand from depth 1
239 : DIV 1, 2, 1 ; R1 = left / right
240 : LD 2, 7(5) ; Restore left operand from depth 0
241 : ADD 1, 2, 1 ; R1 = left + right
242 : LDA 4, 9(5) ; Recompute callee base from caller size
243 : ST 1, 6(4) ; Store argument 5 in callee frame
244 : LDA 4, 9(5) ; Recompute callee base from caller size
245 : LDA 6, 249(0) ; Return address
246 : ST 6, 0(4) ; Store return address into callee frame
247 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
248 : LDA 7, 255(0) ; Call aLoop3
249 : LD 1, 7(5) ; Load callee result into R1
250 : LDC 2, 10(0) ; Callee frame size
251 : SUB 5, 5, 2 ; Pop back to caller
252 : ST 1, 6(5) ; Store function result into frame return slot
253 : LD 6, 0(5) ; Load return address
254 : LDA 7, 0(6) ; Return to caller
255 : LD 1, 5(5) ; Load parameter 'root' into R1
256 : LDA 4, 10(5) ; Recompute callee base from caller size
257 : ST 1, 1(4) ; Store argument 0 in callee frame
258 : LD 1, 4(5) ; Load parameter 'det' into R1
259 : LDA 4, 10(5) ; Recompute callee base from caller size
260 : ST 1, 2(4) ; Store argument 1 in callee frame
261 : LDA 4, 10(5) ; Recompute callee base from caller size
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(4) ; Store return address into callee frame
264 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
265 : LDA 7, 594(0) ; Call ISROOT
266 : LD 1, 3(5) ; Load callee result into R1
267 : LDC 2, 6(0) ; Callee frame size
268 : SUB 5, 5, 2 ; Pop back to caller
269 : ST 1, 8(5) ; Spill left operand at depth 0
270 : LD 1, 5(5) ; Load parameter 'root' into R1
271 : ST 1, 9(5) ; Spill left operand at depth 1
272 : LDC 1, 1(0) ; Load integer-literal into R1
273 : LD 2, 9(5) ; Restore left operand from depth 1
274 : ADD 1, 2, 1 ; R1 = left + right
275 : LDA 4, 10(5) ; Recompute callee base from caller size
276 : ST 1, 1(4) ; Store argument 0 in callee frame
277 : LDA 4, 10(5) ; Recompute callee base from caller size
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return address into callee frame
280 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
281 : LDA 7, 610(0) ; Call EVEN
282 : LD 1, 2(5) ; Load callee result into R1
283 : LDC 2, 6(0) ; Callee frame size
284 : SUB 5, 5, 2 ; Pop back to caller
285 : LD 2, 8(5) ; Restore left operand from depth 0
286 : MUL 1, 2, 1 ; R1 = left AND right
287 : ST 1, 8(5) ; Spill left operand at depth 0
288 : LD 1, 6(5) ; Load parameter 'candidate' into R1
289 : LDA 4, 10(5) ; Recompute callee base from caller size
290 : ST 1, 1(4) ; Store argument 0 in callee frame
291 : LDA 4, 10(5) ; Recompute callee base from caller size
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return address into callee frame
294 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
295 : LDA 7, 379(0) ; Call isExcellent
296 : LD 1, 2(5) ; Load callee result into R1
297 : LDC 2, 3(0) ; Callee frame size
298 : SUB 5, 5, 2 ; Pop back to caller
299 : LD 2, 8(5) ; Restore left operand from depth 0
300 : MUL 1, 2, 1 ; R1 = left AND right
301 : JEQ 1, 323(0) ; If condition is false, jump to ELSE
302 : LD 1, 1(5) ; Load parameter 'a' into R1
303 : LDA 4, 10(5) ; Recompute callee base from caller size
304 : ST 1, 1(4) ; Store argument 0 in callee frame
305 : LD 1, 2(5) ; Load parameter 'n' into R1
306 : LDA 4, 10(5) ; Recompute callee base from caller size
307 : ST 1, 2(4) ; Store argument 1 in callee frame
308 : LD 1, 3(5) ; Load parameter 'upper' into R1
309 : LDA 4, 10(5) ; Recompute callee base from caller size
310 : ST 1, 3(4) ; Store argument 2 in callee frame
311 : LD 1, 6(5) ; Load parameter 'candidate' into R1
312 : LDA 4, 10(5) ; Recompute callee base from caller size
313 : ST 1, 4(4) ; Store argument 3 in callee frame
314 : LDA 4, 10(5) ; Recompute callee base from caller size
315 : LDA 6, 319(0) ; Return address
316 : ST 6, 0(4) ; Store return address into callee frame
317 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
318 : LDA 7, 347(0) ; Call printCandidateAndContinue
319 : LD 1, 5(5) ; Load callee result into R1
320 : LDC 2, 7(0) ; Callee frame size
321 : SUB 5, 5, 2 ; Pop back to caller
322 : LDA 7, 344(0) ; Skip ELSE block
323 : LD 1, 1(5) ; Load parameter 'a' into R1
324 : ST 1, 8(5) ; Spill left operand at depth 0
325 : LDC 1, 1(0) ; Load integer-literal into R1
326 : LD 2, 8(5) ; Restore left operand from depth 0
327 : ADD 1, 2, 1 ; R1 = left + right
328 : LDA 4, 10(5) ; Recompute callee base from caller size
329 : ST 1, 1(4) ; Store argument 0 in callee frame
330 : LD 1, 2(5) ; Load parameter 'n' into R1
331 : LDA 4, 10(5) ; Recompute callee base from caller size
332 : ST 1, 2(4) ; Store argument 1 in callee frame
333 : LD 1, 3(5) ; Load parameter 'upper' into R1
334 : LDA 4, 10(5) ; Recompute callee base from caller size
335 : ST 1, 3(4) ; Store argument 2 in callee frame
336 : LDA 4, 10(5) ; Recompute callee base from caller size
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return address into callee frame
339 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
340 : LDA 7, 80(0) ; Call aLoop
341 : LD 1, 4(5) ; Load callee result into R1
342 : LDC 2, 7(0) ; Callee frame size
343 : SUB 5, 5, 2 ; Pop back to caller
344 : ST 1, 7(5) ; Store function result into frame return slot
345 : LD 6, 0(5) ; Load return address
346 : LDA 7, 0(6) ; Return to caller
347 : LD 1, 4(5) ; Load parameter 'candidate' into R1
348 : LDA 4, 7(5) ; Recompute callee base from caller size
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return address in callee frame
351 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
352 : LDA 7, 9(0) ; Call built-in print
353 : LDC 2, 3(0) ; Callee frame size
354 : SUB 5, 5, 2 ; Pop back to caller
355 : LD 1, 1(5) ; Load parameter 'a' into R1
356 : ST 1, 6(5) ; Spill left operand at depth 0
357 : LDC 1, 1(0) ; Load integer-literal into R1
358 : LD 2, 6(5) ; Restore left operand from depth 0
359 : ADD 1, 2, 1 ; R1 = left + right
360 : LDA 4, 7(5) ; Recompute callee base from caller size
361 : ST 1, 1(4) ; Store argument 0 in callee frame
362 : LD 1, 2(5) ; Load parameter 'n' into R1
363 : LDA 4, 7(5) ; Recompute callee base from caller size
364 : ST 1, 2(4) ; Store argument 1 in callee frame
365 : LD 1, 3(5) ; Load parameter 'upper' into R1
366 : LDA 4, 7(5) ; Recompute callee base from caller size
367 : ST 1, 3(4) ; Store argument 2 in callee frame
368 : LDA 4, 7(5) ; Recompute callee base from caller size
369 : LDA 6, 373(0) ; Return address
370 : ST 6, 0(4) ; Store return address into callee frame
371 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
372 : LDA 7, 80(0) ; Call aLoop
373 : LD 1, 4(5) ; Load callee result into R1
374 : LDC 2, 7(0) ; Callee frame size
375 : SUB 5, 5, 2 ; Pop back to caller
376 : ST 1, 5(5) ; Store function result into frame return slot
377 : LD 6, 0(5) ; Load return address
378 : LDA 7, 0(6) ; Return to caller
379 : LD 1, 1(5) ; Load parameter 'n' into R1
380 : LDA 4, 3(5) ; Recompute callee base from caller size
381 : ST 1, 1(4) ; Store argument 0 in callee frame
382 : LD 1, 1(5) ; Load parameter 'n' into R1
383 : LDA 4, 3(5) ; Recompute callee base from caller size
384 : ST 1, 1(4) ; Store argument 0 in callee frame
385 : LDA 4, 3(5) ; Recompute callee base from caller size
386 : LDA 6, 390(0) ; Return address
387 : ST 6, 0(4) ; Store return address into callee frame
388 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
389 : LDA 7, 560(0) ; Call length
390 : LD 1, 2(5) ; Load callee result into R1
391 : LDC 2, 5(0) ; Callee frame size
392 : SUB 5, 5, 2 ; Pop back to caller
393 : LDA 4, 3(5) ; Recompute callee base from caller size
394 : ST 1, 2(4) ; Store argument 1 in callee frame
395 : LDA 4, 3(5) ; Recompute callee base from caller size
396 : LDA 6, 400(0) ; Return address
397 : ST 6, 0(4) ; Store return address into callee frame
398 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
399 : LDA 7, 406(0) ; Call isExcellentSwitch
400 : LD 1, 3(5) ; Load callee result into R1
401 : LDC 2, 5(0) ; Callee frame size
402 : SUB 5, 5, 2 ; Pop back to caller
403 : ST 1, 2(5) ; Store function result into frame return slot
404 : LD 6, 0(5) ; Load return address
405 : LDA 7, 0(6) ; Return to caller
406 : LD 1, 2(5) ; Load parameter 'length' into R1
407 : LDA 4, 5(5) ; Recompute callee base from caller size
408 : ST 1, 1(4) ; Store argument 0 in callee frame
409 : LDA 4, 5(5) ; Recompute callee base from caller size
410 : LDA 6, 414(0) ; Return address
411 : ST 6, 0(4) ; Store return address into callee frame
412 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
413 : LDA 7, 816(0) ; Call ODD
414 : LD 1, 2(5) ; Load callee result into R1
415 : LDC 2, 5(0) ; Callee frame size
416 : SUB 5, 5, 2 ; Pop back to caller
417 : JEQ 1, 420(0) ; If condition is false, jump to ELSE
418 : LDC 1, 0(0) ; Load boolean-literal into R1
419 : LDA 7, 462(0) ; Skip ELSE block
420 : LD 1, 1(5) ; Load parameter 'n' into R1
421 : ST 1, 4(5) ; Spill left operand at depth 0
422 : LD 1, 1(5) ; Load parameter 'n' into R1
423 : LDA 4, 5(5) ; Recompute callee base from caller size
424 : ST 1, 1(4) ; Store argument 0 in callee frame
425 : LDA 4, 5(5) ; Recompute callee base from caller size
426 : LDA 6, 430(0) ; Return address
427 : ST 6, 0(4) ; Store return address into callee frame
428 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
429 : LDA 7, 525(0) ; Call a
430 : LD 1, 2(5) ; Load callee result into R1
431 : LDC 2, 5(0) ; Callee frame size
432 : SUB 5, 5, 2 ; Pop back to caller
433 : LDA 4, 5(5) ; Recompute callee base from caller size
434 : ST 1, 1(4) ; Store argument 0 in callee frame
435 : LD 1, 1(5) ; Load parameter 'n' into R1
436 : LDA 4, 5(5) ; Recompute callee base from caller size
437 : ST 1, 1(4) ; Store argument 0 in callee frame
438 : LDA 4, 5(5) ; Recompute callee base from caller size
439 : LDA 6, 443(0) ; Return address
440 : ST 6, 0(4) ; Store return address into callee frame
441 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
442 : LDA 7, 481(0) ; Call b
443 : LD 1, 2(5) ; Load callee result into R1
444 : LDC 2, 4(0) ; Callee frame size
445 : SUB 5, 5, 2 ; Pop back to caller
446 : LDA 4, 5(5) ; Recompute callee base from caller size
447 : ST 1, 2(4) ; Store argument 1 in callee frame
448 : LDA 4, 5(5) ; Recompute callee base from caller size
449 : LDA 6, 453(0) ; Return address
450 : ST 6, 0(4) ; Store return address into callee frame
451 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
452 : LDA 7, 465(0) ; Call excellentDiff
453 : LD 1, 3(5) ; Load callee result into R1
454 : LDC 2, 6(0) ; Callee frame size
455 : SUB 5, 5, 2 ; Pop back to caller
456 : LD 2, 4(5) ; Restore left operand from depth 0
457 : SUB 1, 2, 1 ; left - right for equality check
458 : JEQ 1, 2(7) ; If R1 == 0, jump to true
459 : LDC 1, 0(0) ; false
460 : LDA 7, 1(7) ; skip setting true
461 : LDC 1, 1(0) ; true
462 : ST 1, 3(5) ; Store function result into frame return slot
463 : LD 6, 0(5) ; Load return address
464 : LDA 7, 0(6) ; Return to caller
465 : LD 1, 2(5) ; Load parameter 'b' into R1
466 : ST 1, 4(5) ; Spill left operand at depth 0
467 : LD 1, 2(5) ; Load parameter 'b' into R1
468 : LD 2, 4(5) ; Restore left operand from depth 0
469 : MUL 1, 2, 1 ; R1 = left * right
470 : ST 1, 4(5) ; Spill left operand at depth 0
471 : LD 1, 1(5) ; Load parameter 'a' into R1
472 : ST 1, 5(5) ; Spill left operand at depth 1
473 : LD 1, 1(5) ; Load parameter 'a' into R1
474 : LD 2, 5(5) ; Restore left operand from depth 1
475 : MUL 1, 2, 1 ; R1 = left * right
476 : LD 2, 4(5) ; Restore left operand from depth 0
477 : SUB 1, 2, 1 ; R1 = left - right
478 : ST 1, 3(5) ; Store function result into frame return slot
479 : LD 6, 0(5) ; Load return address
480 : LDA 7, 0(6) ; Return to caller
481 : LD 1, 1(5) ; Load parameter 'n' into R1
482 : LDA 4, 4(5) ; Recompute callee base from caller size
483 : ST 1, 1(4) ; Store argument 0 in callee frame
484 : LDC 1, 10(0) ; Load integer-literal into R1
485 : LDA 4, 4(5) ; Recompute callee base from caller size
486 : ST 1, 1(4) ; Store argument 0 in callee frame
487 : LD 1, 1(5) ; Load parameter 'n' into R1
488 : LDA 4, 4(5) ; Recompute callee base from caller size
489 : ST 1, 1(4) ; Store argument 0 in callee frame
490 : LDA 4, 4(5) ; Recompute callee base from caller size
491 : LDA 6, 495(0) ; Return address
492 : ST 6, 0(4) ; Store return address into callee frame
493 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
494 : LDA 7, 560(0) ; Call length
495 : LD 1, 2(5) ; Load callee result into R1
496 : LDC 2, 5(0) ; Callee frame size
497 : SUB 5, 5, 2 ; Pop back to caller
498 : ST 1, 3(5) ; Spill left operand at depth 0
499 : LDC 1, 2(0) ; Load integer-literal into R1
500 : LD 2, 3(5) ; Restore left operand from depth 0
501 : DIV 1, 2, 1 ; R1 = left / right
502 : LDA 4, 4(5) ; Recompute callee base from caller size
503 : ST 1, 2(4) ; Store argument 1 in callee frame
504 : LDA 4, 4(5) ; Recompute callee base from caller size
505 : LDA 6, 509(0) ; Return address
506 : ST 6, 0(4) ; Store return address into callee frame
507 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
508 : LDA 7, 859(0) ; Call EXP
509 : LD 1, 3(5) ; Load callee result into R1
510 : LDC 2, 6(0) ; Callee frame size
511 : SUB 5, 5, 2 ; Pop back to caller
512 : LDA 4, 4(5) ; Recompute callee base from caller size
513 : ST 1, 2(4) ; Store argument 1 in callee frame
514 : LDA 4, 4(5) ; Recompute callee base from caller size
515 : LDA 6, 519(0) ; Return address
516 : ST 6, 0(4) ; Store return address into callee frame
517 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
518 : LDA 7, 896(0) ; Call MOD
519 : LD 1, 3(5) ; Load callee result into R1
520 : LDC 2, 7(0) ; Callee frame size
521 : SUB 5, 5, 2 ; Pop back to caller
522 : ST 1, 2(5) ; Store function result into frame return slot
523 : LD 6, 0(5) ; Load return address
524 : LDA 7, 0(6) ; Return to caller
525 : LD 1, 1(5) ; Load parameter 'n' into R1
526 : ST 1, 3(5) ; Spill left operand at depth 0
527 : LDC 1, 10(0) ; Load integer-literal into R1
528 : LDA 4, 5(5) ; Recompute callee base from caller size
529 : ST 1, 1(4) ; Store argument 0 in callee frame
530 : LD 1, 1(5) ; Load parameter 'n' into R1
531 : LDA 4, 5(5) ; Recompute callee base from caller size
532 : ST 1, 1(4) ; Store argument 0 in callee frame
533 : LDA 4, 5(5) ; Recompute callee base from caller size
534 : LDA 6, 538(0) ; Return address
535 : ST 6, 0(4) ; Store return address into callee frame
536 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
537 : LDA 7, 560(0) ; Call length
538 : LD 1, 2(5) ; Load callee result into R1
539 : LDC 2, 5(0) ; Callee frame size
540 : SUB 5, 5, 2 ; Pop back to caller
541 : ST 1, 4(5) ; Spill left operand at depth 1
542 : LDC 1, 2(0) ; Load integer-literal into R1
543 : LD 2, 4(5) ; Restore left operand from depth 1
544 : DIV 1, 2, 1 ; R1 = left / right
545 : LDA 4, 5(5) ; Recompute callee base from caller size
546 : ST 1, 2(4) ; Store argument 1 in callee frame
547 : LDA 4, 5(5) ; Recompute callee base from caller size
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return address into callee frame
550 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
551 : LDA 7, 859(0) ; Call EXP
552 : LD 1, 3(5) ; Load callee result into R1
553 : LDC 2, 6(0) ; Callee frame size
554 : SUB 5, 5, 2 ; Pop back to caller
555 : LD 2, 3(5) ; Restore left operand from depth 0
556 : DIV 1, 2, 1 ; R1 = left / right
557 : ST 1, 2(5) ; Store function result into frame return slot
558 : LD 6, 0(5) ; Load return address
559 : LDA 7, 0(6) ; Return to caller
560 : LD 1, 1(5) ; Load parameter 'n' into R1
561 : ST 1, 3(5) ; Spill left operand at depth 0
562 : LDC 1, 10(0) ; Load integer-literal into R1
563 : LD 2, 3(5) ; Restore left operand from depth 0
564 : SUB 1, 2, 1 ; left - right for less-than check
565 : JLT 1, 2(7) ; If R1 < 0, jump to true
566 : LDC 1, 0(0) ; false
567 : LDA 7, 1(7) ; skip setting true
568 : LDC 1, 1(0) ; true
569 : JEQ 1, 572(0) ; If condition is false, jump to ELSE
570 : LDC 1, 1(0) ; Load integer-literal into R1
571 : LDA 7, 591(0) ; Skip ELSE block
572 : LDC 1, 1(0) ; Load integer-literal into R1
573 : ST 1, 3(5) ; Spill left operand at depth 0
574 : LD 1, 1(5) ; Load parameter 'n' into R1
575 : ST 1, 4(5) ; Spill left operand at depth 1
576 : LDC 1, 10(0) ; Load integer-literal into R1
577 : LD 2, 4(5) ; Restore left operand from depth 1
578 : DIV 1, 2, 1 ; R1 = left / right
579 : LDA 4, 5(5) ; Recompute callee base from caller size
580 : ST 1, 1(4) ; Store argument 0 in callee frame
581 : LDA 4, 5(5) ; Recompute callee base from caller size
582 : LDA 6, 586(0) ; Return address
583 : ST 6, 0(4) ; Store return address into callee frame
584 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
585 : LDA 7, 560(0) ; Call length
586 : LD 1, 2(5) ; Load callee result into R1
587 : LDC 2, 5(0) ; Callee frame size
588 : SUB 5, 5, 2 ; Pop back to caller
589 : LD 2, 3(5) ; Restore left operand from depth 0
590 : ADD 1, 2, 1 ; R1 = left + right
591 : ST 1, 2(5) ; Store function result into frame return slot
592 : LD 6, 0(5) ; Load return address
593 : LDA 7, 0(6) ; Return to caller
594 : LD 1, 2(5) ; Load parameter 'n' into R1
595 : ST 1, 4(5) ; Spill left operand at depth 0
596 : LD 1, 1(5) ; Load parameter 'r' into R1
597 : ST 1, 5(5) ; Spill left operand at depth 1
598 : LD 1, 1(5) ; Load parameter 'r' into R1
599 : LD 2, 5(5) ; Restore left operand from depth 1
600 : MUL 1, 2, 1 ; R1 = left * right
601 : LD 2, 4(5) ; Restore left operand from depth 0
602 : SUB 1, 2, 1 ; left - right for equality check
603 : JEQ 1, 2(7) ; If R1 == 0, jump to true
604 : LDC 1, 0(0) ; false
605 : LDA 7, 1(7) ; skip setting true
606 : LDC 1, 1(0) ; true
607 : ST 1, 3(5) ; Store function result into frame return slot
608 : LD 6, 0(5) ; Load return address
609 : LDA 7, 0(6) ; Return to caller
610 : LD 1, 1(5) ; Load parameter 'n' into R1
611 : ST 1, 3(5) ; Spill left operand at depth 0
612 : LDC 1, 2(0) ; Load integer-literal into R1
613 : ST 1, 4(5) ; Spill left operand at depth 1
614 : LD 1, 1(5) ; Load parameter 'n' into R1
615 : ST 1, 5(5) ; Spill left operand at depth 2
616 : LDC 1, 2(0) ; Load integer-literal into R1
617 : LD 2, 5(5) ; Restore left operand from depth 2
618 : DIV 1, 2, 1 ; R1 = left / right
619 : LD 2, 4(5) ; Restore left operand from depth 1
620 : MUL 1, 2, 1 ; R1 = left * right
621 : LD 2, 3(5) ; Restore left operand from depth 0
622 : SUB 1, 2, 1 ; left - right for equality check
623 : JEQ 1, 2(7) ; If R1 == 0, jump to true
624 : LDC 1, 0(0) ; false
625 : LDA 7, 1(7) ; skip setting true
626 : LDC 1, 1(0) ; true
627 : ST 1, 2(5) ; Store function result into frame return slot
628 : LD 6, 0(5) ; Load return address
629 : LDA 7, 0(6) ; Return to caller
630 : LD 1, 4(5) ; Load parameter 'mid' into R1
631 : ST 1, 6(5) ; Spill left operand at depth 0
632 : LD 1, 4(5) ; Load parameter 'mid' into R1
633 : LD 2, 6(5) ; Restore left operand from depth 0
634 : MUL 1, 2, 1 ; R1 = left * right
635 : LDA 4, 7(5) ; Recompute callee base from caller size
636 : ST 1, 1(4) ; Store argument 0 in callee frame
637 : LD 1, 1(5) ; Load parameter 'n' into R1
638 : LDA 4, 7(5) ; Recompute callee base from caller size
639 : ST 1, 2(4) ; Store argument 1 in callee frame
640 : LDA 4, 7(5) ; Recompute callee base from caller size
641 : LDA 6, 645(0) ; Return address
642 : ST 6, 0(4) ; Store return address into callee frame
643 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
644 : LDA 7, 792(0) ; Call LE
645 : LD 1, 3(5) ; Load callee result into R1
646 : LDC 2, 6(0) ; Callee frame size
647 : SUB 5, 5, 2 ; Pop back to caller
648 : JEQ 1, 667(0) ; If condition is false, jump to ELSE
649 : LD 1, 1(5) ; Load parameter 'n' into R1
650 : LDA 4, 7(5) ; Recompute callee base from caller size
651 : ST 1, 1(4) ; Store argument 0 in callee frame
652 : LD 1, 4(5) ; Load parameter 'mid' into R1
653 : LDA 4, 7(5) ; Recompute callee base from caller size
654 : ST 1, 2(4) ; Store argument 1 in callee frame
655 : LD 1, 3(5) ; Load parameter 'high' into R1
656 : LDA 4, 7(5) ; Recompute callee base from caller size
657 : ST 1, 3(4) ; Store argument 2 in callee frame
658 : LDA 4, 7(5) ; Recompute callee base from caller size
659 : LDA 6, 663(0) ; Return address
660 : ST 6, 0(4) ; Store return address into callee frame
661 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
662 : LDA 7, 687(0) ; Call SQRTSEARCH
663 : LD 1, 4(5) ; Load callee result into R1
664 : LDC 2, 7(0) ; Callee frame size
665 : SUB 5, 5, 2 ; Pop back to caller
666 : LDA 7, 684(0) ; Skip ELSE block
667 : LD 1, 1(5) ; Load parameter 'n' into R1
668 : LDA 4, 7(5) ; Recompute callee base from caller size
669 : ST 1, 1(4) ; Store argument 0 in callee frame
670 : LD 1, 2(5) ; Load parameter 'low' into R1
671 : LDA 4, 7(5) ; Recompute callee base from caller size
672 : ST 1, 2(4) ; Store argument 1 in callee frame
673 : LD 1, 4(5) ; Load parameter 'mid' into R1
674 : LDA 4, 7(5) ; Recompute callee base from caller size
675 : ST 1, 3(4) ; Store argument 2 in callee frame
676 : LDA 4, 7(5) ; Recompute callee base from caller size
677 : LDA 6, 681(0) ; Return address
678 : ST 6, 0(4) ; Store return address into callee frame
679 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
680 : LDA 7, 687(0) ; Call SQRTSEARCH
681 : LD 1, 4(5) ; Load callee result into R1
682 : LDC 2, 7(0) ; Callee frame size
683 : SUB 5, 5, 2 ; Pop back to caller
684 : ST 1, 5(5) ; Store function result into frame return slot
685 : LD 6, 0(5) ; Load return address
686 : LDA 7, 0(6) ; Return to caller
687 : LD 1, 3(5) ; Load parameter 'high' into R1
688 : LDA 4, 7(5) ; Recompute callee base from caller size
689 : ST 1, 1(4) ; Store argument 0 in callee frame
690 : LD 1, 2(5) ; Load parameter 'low' into R1
691 : ST 1, 5(5) ; Spill left operand at depth 0
692 : LDC 1, 1(0) ; Load integer-literal into R1
693 : LD 2, 5(5) ; Restore left operand from depth 0
694 : ADD 1, 2, 1 ; R1 = left + right
695 : LDA 4, 7(5) ; Recompute callee base from caller size
696 : ST 1, 2(4) ; Store argument 1 in callee frame
697 : LDA 4, 7(5) ; Recompute callee base from caller size
698 : LDA 6, 702(0) ; Return address
699 : ST 6, 0(4) ; Store return address into callee frame
700 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
701 : LDA 7, 792(0) ; Call LE
702 : LD 1, 3(5) ; Load callee result into R1
703 : LDC 2, 6(0) ; Callee frame size
704 : SUB 5, 5, 2 ; Pop back to caller
705 : JEQ 1, 741(0) ; If condition is false, jump to ELSE
706 : LD 1, 1(5) ; Load parameter 'n' into R1
707 : ST 1, 5(5) ; Spill left operand at depth 0
708 : LD 1, 2(5) ; Load parameter 'low' into R1
709 : ST 1, 6(5) ; Spill left operand at depth 1
710 : LD 1, 2(5) ; Load parameter 'low' into R1
711 : LD 2, 6(5) ; Restore left operand from depth 1
712 : MUL 1, 2, 1 ; R1 = left * right
713 : LD 2, 5(5) ; Restore left operand from depth 0
714 : SUB 1, 2, 1 ; R1 = left - right
715 : LDA 4, 7(5) ; Recompute callee base from caller size
716 : ST 1, 1(4) ; Store argument 0 in callee frame
717 : LD 1, 3(5) ; Load parameter 'high' into R1
718 : ST 1, 5(5) ; Spill left operand at depth 0
719 : LD 1, 3(5) ; Load parameter 'high' into R1
720 : LD 2, 5(5) ; Restore left operand from depth 0
721 : MUL 1, 2, 1 ; R1 = left * right
722 : ST 1, 5(5) ; Spill left operand at depth 0
723 : LD 1, 1(5) ; Load parameter 'n' into R1
724 : LD 2, 5(5) ; Restore left operand from depth 0
725 : SUB 1, 2, 1 ; R1 = left - right
726 : LDA 4, 7(5) ; Recompute callee base from caller size
727 : ST 1, 2(4) ; Store argument 1 in callee frame
728 : LDA 4, 7(5) ; Recompute callee base from caller size
729 : LDA 6, 733(0) ; Return address
730 : ST 6, 0(4) ; Store return address into callee frame
731 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
732 : LDA 7, 792(0) ; Call LE
733 : LD 1, 3(5) ; Load callee result into R1
734 : LDC 2, 6(0) ; Callee frame size
735 : SUB 5, 5, 2 ; Pop back to caller
736 : JEQ 1, 739(0) ; If condition is false, jump to ELSE
737 : LD 1, 2(5) ; Load parameter 'low' into R1
738 : LDA 7, 740(0) ; Skip ELSE block
739 : LD 1, 3(5) ; Load parameter 'high' into R1
740 : LDA 7, 769(0) ; Skip ELSE block
741 : LD 1, 1(5) ; Load parameter 'n' into R1
742 : LDA 4, 7(5) ; Recompute callee base from caller size
743 : ST 1, 1(4) ; Store argument 0 in callee frame
744 : LD 1, 2(5) ; Load parameter 'low' into R1
745 : LDA 4, 7(5) ; Recompute callee base from caller size
746 : ST 1, 2(4) ; Store argument 1 in callee frame
747 : LD 1, 3(5) ; Load parameter 'high' into R1
748 : LDA 4, 7(5) ; Recompute callee base from caller size
749 : ST 1, 3(4) ; Store argument 2 in callee frame
750 : LD 1, 2(5) ; Load parameter 'low' into R1
751 : ST 1, 5(5) ; Spill left operand at depth 0
752 : LD 1, 3(5) ; Load parameter 'high' into R1
753 : LD 2, 5(5) ; Restore left operand from depth 0
754 : ADD 1, 2, 1 ; R1 = left + right
755 : ST 1, 5(5) ; Spill left operand at depth 0
756 : LDC 1, 2(0) ; Load integer-literal into R1
757 : LD 2, 5(5) ; Restore left operand from depth 0
758 : DIV 1, 2, 1 ; R1 = left / right
759 : LDA 4, 7(5) ; Recompute callee base from caller size
760 : ST 1, 4(4) ; Store argument 3 in callee frame
761 : LDA 4, 7(5) ; Recompute callee base from caller size
762 : LDA 6, 766(0) ; Return address
763 : ST 6, 0(4) ; Store return address into callee frame
764 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
765 : LDA 7, 630(0) ; Call SQRTSPLIT
766 : LD 1, 5(5) ; Load callee result into R1
767 : LDC 2, 7(0) ; Callee frame size
768 : SUB 5, 5, 2 ; Pop back to caller
769 : ST 1, 4(5) ; Store function result into frame return slot
770 : LD 6, 0(5) ; Load return address
771 : LDA 7, 0(6) ; Return to caller
772 : LD 1, 1(5) ; Load parameter 'n' into R1
773 : LDA 4, 3(5) ; Recompute callee base from caller size
774 : ST 1, 1(4) ; Store argument 0 in callee frame
775 : LDC 1, 0(0) ; Load integer-literal into R1
776 : LDA 4, 3(5) ; Recompute callee base from caller size
777 : ST 1, 2(4) ; Store argument 1 in callee frame
778 : LD 1, 1(5) ; Load parameter 'n' into R1
779 : LDA 4, 3(5) ; Recompute callee base from caller size
780 : ST 1, 3(4) ; Store argument 2 in callee frame
781 : LDA 4, 3(5) ; Recompute callee base from caller size
782 : LDA 6, 786(0) ; Return address
783 : ST 6, 0(4) ; Store return address into callee frame
784 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
785 : LDA 7, 687(0) ; Call SQRTSEARCH
786 : LD 1, 4(5) ; Load callee result into R1
787 : LDC 2, 7(0) ; Callee frame size
788 : SUB 5, 5, 2 ; Pop back to caller
789 : ST 1, 2(5) ; Store function result into frame return slot
790 : LD 6, 0(5) ; Load return address
791 : LDA 7, 0(6) ; Return to caller
792 : LD 1, 1(5) ; Load parameter 'p' into R1
793 : ST 1, 4(5) ; Spill left operand at depth 0
794 : LD 1, 2(5) ; Load parameter 'q' into R1
795 : LD 2, 4(5) ; Restore left operand from depth 0
796 : SUB 1, 2, 1 ; left - right for less-than check
797 : JLT 1, 2(7) ; If R1 < 0, jump to true
798 : LDC 1, 0(0) ; false
799 : LDA 7, 1(7) ; skip setting true
800 : LDC 1, 1(0) ; true
801 : ST 1, 4(5) ; Spill left operand at depth 0
802 : LD 1, 1(5) ; Load parameter 'p' into R1
803 : ST 1, 5(5) ; Spill left operand at depth 1
804 : LD 1, 2(5) ; Load parameter 'q' into R1
805 : LD 2, 5(5) ; Restore left operand from depth 1
806 : SUB 1, 2, 1 ; left - right for equality check
807 : JEQ 1, 2(7) ; If R1 == 0, jump to true
808 : LDC 1, 0(0) ; false
809 : LDA 7, 1(7) ; skip setting true
810 : LDC 1, 1(0) ; true
811 : LD 2, 4(5) ; Restore left operand from depth 0
812 : ADD 1, 2, 1 ; R1 = left OR right
813 : ST 1, 3(5) ; Store function result into frame return slot
814 : LD 6, 0(5) ; Load return address
815 : LDA 7, 0(6) ; Return to caller
816 : LDC 1, 0(0) ; Load integer-literal into R1
817 : ST 1, 3(5) ; Spill left operand at depth 0
818 : LD 1, 1(5) ; Load parameter 'n' into R1
819 : LD 2, 3(5) ; Restore left operand from depth 0
820 : SUB 1, 2, 1 ; left - right for less-than check
821 : JLT 1, 2(7) ; If R1 < 0, jump to true
822 : LDC 1, 0(0) ; false
823 : LDA 7, 1(7) ; skip setting true
824 : LDC 1, 1(0) ; true
825 : JEQ 1, 844(0) ; If condition is false, jump to ELSE
826 : LDC 1, 2(0) ; Load integer-literal into R1
827 : ST 1, 3(5) ; Spill left operand at depth 0
828 : LD 1, 1(5) ; Load parameter 'n' into R1
829 : ST 1, 4(5) ; Spill left operand at depth 1
830 : LDC 1, 2(0) ; Load integer-literal into R1
831 : LD 2, 4(5) ; Restore left operand from depth 1
832 : DIV 1, 2, 1 ; R1 = left / right
833 : LD 2, 3(5) ; Restore left operand from depth 0
834 : MUL 1, 2, 1 ; R1 = left * right
835 : ST 1, 3(5) ; Spill left operand at depth 0
836 : LD 1, 1(5) ; Load parameter 'n' into R1
837 : LD 2, 3(5) ; Restore left operand from depth 0
838 : SUB 1, 2, 1 ; left - right for less-than check
839 : JLT 1, 2(7) ; If R1 < 0, jump to true
840 : LDC 1, 0(0) ; false
841 : LDA 7, 1(7) ; skip setting true
842 : LDC 1, 1(0) ; true
843 : LDA 7, 856(0) ; Skip ELSE block
844 : LD 1, 1(5) ; Load parameter 'n' into R1
845 : SUB 1, 0, 1 ; Negate value in R1
846 : LDA 4, 5(5) ; Recompute callee base from caller size
847 : ST 1, 1(4) ; Store argument 0 in callee frame
848 : LDA 4, 5(5) ; Recompute callee base from caller size
849 : LDA 6, 853(0) ; Return address
850 : ST 6, 0(4) ; Store return address into callee frame
851 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
852 : LDA 7, 816(0) ; Call ODD
853 : LD 1, 2(5) ; Load callee result into R1
854 : LDC 2, 5(0) ; Callee frame size
855 : SUB 5, 5, 2 ; Pop back to caller
856 : ST 1, 2(5) ; Store function result into frame return slot
857 : LD 6, 0(5) ; Load return address
858 : LDA 7, 0(6) ; Return to caller
859 : LD 1, 2(5) ; Load parameter 'n' into R1
860 : ST 1, 4(5) ; Spill left operand at depth 0
861 : LDC 1, 0(0) ; Load integer-literal into R1
862 : LD 2, 4(5) ; Restore left operand from depth 0
863 : SUB 1, 2, 1 ; left - right for equality check
864 : JEQ 1, 2(7) ; If R1 == 0, jump to true
865 : LDC 1, 0(0) ; false
866 : LDA 7, 1(7) ; skip setting true
867 : LDC 1, 1(0) ; true
868 : JEQ 1, 871(0) ; If condition is false, jump to ELSE
869 : LDC 1, 1(0) ; Load integer-literal into R1
870 : LDA 7, 893(0) ; Skip ELSE block
871 : LD 1, 1(5) ; Load parameter 'm' into R1
872 : ST 1, 4(5) ; Spill left operand at depth 0
873 : LD 1, 1(5) ; Load parameter 'm' into R1
874 : LDA 4, 6(5) ; Recompute callee base from caller size
875 : ST 1, 1(4) ; Store argument 0 in callee frame
876 : LD 1, 2(5) ; Load parameter 'n' into R1
877 : ST 1, 5(5) ; Spill left operand at depth 1
878 : LDC 1, 1(0) ; Load integer-literal into R1
879 : LD 2, 5(5) ; Restore left operand from depth 1
880 : SUB 1, 2, 1 ; R1 = left - right
881 : LDA 4, 6(5) ; Recompute callee base from caller size
882 : ST 1, 2(4) ; Store argument 1 in callee frame
883 : LDA 4, 6(5) ; Recompute callee base from caller size
884 : LDA 6, 888(0) ; Return address
885 : ST 6, 0(4) ; Store return address into callee frame
886 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
887 : LDA 7, 859(0) ; Call EXP
888 : LD 1, 3(5) ; Load callee result into R1
889 : LDC 2, 6(0) ; Callee frame size
890 : SUB 5, 5, 2 ; Pop back to caller
891 : LD 2, 4(5) ; Restore left operand from depth 0
892 : MUL 1, 2, 1 ; R1 = left * right
893 : ST 1, 3(5) ; Store function result into frame return slot
894 : LD 6, 0(5) ; Load return address
895 : LDA 7, 0(6) ; Return to caller
896 : LD 1, 1(5) ; Load parameter 'm' into R1
897 : ST 1, 4(5) ; Spill left operand at depth 0
898 : LD 1, 2(5) ; Load parameter 'n' into R1
899 : ST 1, 5(5) ; Spill left operand at depth 1
900 : LD 1, 1(5) ; Load parameter 'm' into R1
901 : ST 1, 6(5) ; Spill left operand at depth 2
902 : LD 1, 2(5) ; Load parameter 'n' into R1
903 : LD 2, 6(5) ; Restore left operand from depth 2
904 : DIV 1, 2, 1 ; R1 = left / right
905 : LD 2, 5(5) ; Restore left operand from depth 1
906 : MUL 1, 2, 1 ; R1 = left * right
907 : LD 2, 4(5) ; Restore left operand from depth 0
908 : SUB 1, 2, 1 ; R1 = left - right
909 : ST 1, 3(5) ; Store function result into frame return slot
910 : LD 6, 0(5) ; Load return address
911 : LDA 7, 0(6) ; Return to caller
