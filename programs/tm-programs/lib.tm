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
12 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 4, 3(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 217(0) ; Call SQRT
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : LDA 4, 3(5) ; Recompute callee base from caller size
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return address in callee frame
26 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
27 : LDA 7, 9(0) ; Call built-in print
28 : LDC 2, 3(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop back to caller
30 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
31 : LDA 4, 3(5) ; Recompute callee base from caller size
32 : ST 1, 1(4) ; Store argument 0 in callee frame
33 : LDA 4, 3(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address into callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 237(0) ; Call ODD
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s return slot
42 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
43 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
44 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
45 : LD 1, 2(5) ; Load main return value into R1
46 : LD 6, 0(5) ; Load root return address from main frame
47 : LDA 7, 0(6) ; Return from main to runtime epilogue
48 : LD 1, 4(5) ; Load parameter 'mid' into R1
49 : ST 1, 6(5) ; Spill left operand at depth 0
50 : LD 1, 4(5) ; Load parameter 'mid' into R1
51 : LD 2, 6(5) ; Restore left operand from depth 0
52 : MUL 1, 2, 1 ; R1 = left * right
53 : LDA 4, 7(5) ; Recompute callee base from caller size
54 : ST 1, 1(4) ; Store argument 0 in callee frame
55 : LD 1, 1(5) ; Load parameter 'n' into R1
56 : LDA 4, 7(5) ; Recompute callee base from caller size
57 : ST 1, 2(4) ; Store argument 1 in callee frame
58 : LDA 4, 7(5) ; Recompute callee base from caller size
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return address into callee frame
61 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
62 : LDA 7, 544(0) ; Call LE
63 : LD 1, 3(5) ; Load callee result into R1
64 : LDC 2, 5(0) ; Callee frame size
65 : SUB 5, 5, 2 ; Pop back to caller
66 : JEQ 1, 85(0) ; If condition is false, jump to ELSE
67 : LD 1, 1(5) ; Load parameter 'n' into R1
68 : LDA 4, 7(5) ; Recompute callee base from caller size
69 : ST 1, 1(4) ; Store argument 0 in callee frame
70 : LD 1, 4(5) ; Load parameter 'mid' into R1
71 : LDA 4, 7(5) ; Recompute callee base from caller size
72 : ST 1, 2(4) ; Store argument 1 in callee frame
73 : LD 1, 3(5) ; Load parameter 'high' into R1
74 : LDA 4, 7(5) ; Recompute callee base from caller size
75 : ST 1, 3(4) ; Store argument 2 in callee frame
76 : LDA 4, 7(5) ; Recompute callee base from caller size
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return address into callee frame
79 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
80 : LDA 7, 105(0) ; Call SQRTSEARCH
81 : LD 1, 4(5) ; Load callee result into R1
82 : LDC 2, 6(0) ; Callee frame size
83 : SUB 5, 5, 2 ; Pop back to caller
84 : LDA 7, 102(0) ; Skip ELSE block
85 : LD 1, 1(5) ; Load parameter 'n' into R1
86 : LDA 4, 7(5) ; Recompute callee base from caller size
87 : ST 1, 1(4) ; Store argument 0 in callee frame
88 : LD 1, 2(5) ; Load parameter 'low' into R1
89 : LDA 4, 7(5) ; Recompute callee base from caller size
90 : ST 1, 2(4) ; Store argument 1 in callee frame
91 : LD 1, 4(5) ; Load parameter 'mid' into R1
92 : LDA 4, 7(5) ; Recompute callee base from caller size
93 : ST 1, 3(4) ; Store argument 2 in callee frame
94 : LDA 4, 7(5) ; Recompute callee base from caller size
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return address into callee frame
97 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
98 : LDA 7, 105(0) ; Call SQRTSEARCH
99 : LD 1, 4(5) ; Load callee result into R1
100 : LDC 2, 6(0) ; Callee frame size
101 : SUB 5, 5, 2 ; Pop back to caller
102 : ST 1, 5(5) ; Store function result into frame return slot
103 : LD 6, 0(5) ; Load return address
104 : LDA 7, 0(6) ; Return to caller
105 : LD 1, 3(5) ; Load parameter 'high' into R1
106 : LDA 4, 6(5) ; Recompute callee base from caller size
107 : ST 1, 1(4) ; Store argument 0 in callee frame
108 : LD 1, 2(5) ; Load parameter 'low' into R1
109 : ST 1, 5(5) ; Spill left operand at depth 0
110 : LDC 1, 1(0) ; Load integer-literal into R1
111 : LD 2, 5(5) ; Restore left operand from depth 0
112 : ADD 1, 2, 1 ; R1 = left + right
113 : LDA 4, 6(5) ; Recompute callee base from caller size
114 : ST 1, 2(4) ; Store argument 1 in callee frame
115 : LDA 4, 6(5) ; Recompute callee base from caller size
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return address into callee frame
118 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
119 : LDA 7, 544(0) ; Call LE
120 : LD 1, 3(5) ; Load callee result into R1
121 : LDC 2, 5(0) ; Callee frame size
122 : SUB 5, 5, 2 ; Pop back to caller
123 : JEQ 1, 177(0) ; If condition is false, jump to ELSE
124 : LD 1, 1(5) ; Load parameter 'n' into R1
125 : ST 1, 5(5) ; Spill left operand at depth 0
126 : LD 1, 2(5) ; Load parameter 'low' into R1
127 : LDA 4, 6(5) ; Recompute callee base from caller size
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LD 1, 2(5) ; Load parameter 'low' into R1
130 : LDA 4, 6(5) ; Recompute callee base from caller size
131 : ST 1, 2(4) ; Store argument 1 in callee frame
132 : LDA 4, 6(5) ; Recompute callee base from caller size
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return address into callee frame
135 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
136 : LDA 7, 466(0) ; Call TIMES
137 : LD 1, 3(5) ; Load callee result into R1
138 : LDC 2, 5(0) ; Callee frame size
139 : SUB 5, 5, 2 ; Pop back to caller
140 : LD 2, 5(5) ; Restore left operand from depth 0
141 : SUB 1, 2, 1 ; R1 = left - right
142 : LDA 4, 6(5) ; Recompute callee base from caller size
143 : ST 1, 1(4) ; Store argument 0 in callee frame
144 : LD 1, 3(5) ; Load parameter 'high' into R1
145 : LDA 4, 6(5) ; Recompute callee base from caller size
146 : ST 1, 1(4) ; Store argument 0 in callee frame
147 : LD 1, 3(5) ; Load parameter 'high' into R1
148 : LDA 4, 6(5) ; Recompute callee base from caller size
149 : ST 1, 2(4) ; Store argument 1 in callee frame
150 : LDA 4, 6(5) ; Recompute callee base from caller size
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return address into callee frame
153 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
154 : LDA 7, 466(0) ; Call TIMES
155 : LD 1, 3(5) ; Load callee result into R1
156 : LDC 2, 5(0) ; Callee frame size
157 : SUB 5, 5, 2 ; Pop back to caller
158 : ST 1, 5(5) ; Spill left operand at depth 0
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : LD 2, 5(5) ; Restore left operand from depth 0
161 : SUB 1, 2, 1 ; R1 = left - right
162 : LDA 4, 6(5) ; Recompute callee base from caller size
163 : ST 1, 2(4) ; Store argument 1 in callee frame
164 : LDA 4, 6(5) ; Recompute callee base from caller size
165 : LDA 6, 169(0) ; Return address
166 : ST 6, 0(4) ; Store return address into callee frame
167 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
168 : LDA 7, 544(0) ; Call LE
169 : LD 1, 3(5) ; Load callee result into R1
170 : LDC 2, 5(0) ; Callee frame size
171 : SUB 5, 5, 2 ; Pop back to caller
172 : JEQ 1, 175(0) ; If condition is false, jump to ELSE
173 : LD 1, 2(5) ; Load parameter 'low' into R1
174 : LDA 7, 176(0) ; Skip ELSE block
175 : LD 1, 3(5) ; Load parameter 'high' into R1
176 : LDA 7, 214(0) ; Skip ELSE block
177 : LD 1, 1(5) ; Load parameter 'n' into R1
178 : LDA 4, 6(5) ; Recompute callee base from caller size
179 : ST 1, 1(4) ; Store argument 0 in callee frame
180 : LD 1, 2(5) ; Load parameter 'low' into R1
181 : LDA 4, 6(5) ; Recompute callee base from caller size
182 : ST 1, 2(4) ; Store argument 1 in callee frame
183 : LD 1, 3(5) ; Load parameter 'high' into R1
184 : LDA 4, 6(5) ; Recompute callee base from caller size
185 : ST 1, 3(4) ; Store argument 2 in callee frame
186 : LD 1, 2(5) ; Load parameter 'low' into R1
187 : LDA 4, 6(5) ; Recompute callee base from caller size
188 : ST 1, 1(4) ; Store argument 0 in callee frame
189 : LD 1, 3(5) ; Load parameter 'high' into R1
190 : LDA 4, 6(5) ; Recompute callee base from caller size
191 : ST 1, 2(4) ; Store argument 1 in callee frame
192 : LDA 4, 6(5) ; Recompute callee base from caller size
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(4) ; Store return address into callee frame
195 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
196 : LDA 7, 482(0) ; Call PLUS
197 : LD 1, 3(5) ; Load callee result into R1
198 : LDC 2, 5(0) ; Callee frame size
199 : SUB 5, 5, 2 ; Pop back to caller
200 : ST 1, 5(5) ; Spill left operand at depth 0
201 : LDC 1, 2(0) ; Load integer-literal into R1
202 : LD 2, 5(5) ; Restore left operand from depth 0
203 : DIV 1, 2, 1 ; R1 = left / right
204 : LDA 4, 6(5) ; Recompute callee base from caller size
205 : ST 1, 4(4) ; Store argument 3 in callee frame
206 : LDA 4, 6(5) ; Recompute callee base from caller size
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return address into callee frame
209 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
210 : LDA 7, 48(0) ; Call SQRTSPLIT
211 : LD 1, 5(5) ; Load callee result into R1
212 : LDC 2, 7(0) ; Callee frame size
213 : SUB 5, 5, 2 ; Pop back to caller
214 : ST 1, 4(5) ; Store function result into frame return slot
215 : LD 6, 0(5) ; Load return address
216 : LDA 7, 0(6) ; Return to caller
217 : LD 1, 1(5) ; Load parameter 'n' into R1
218 : LDA 4, 3(5) ; Recompute callee base from caller size
219 : ST 1, 1(4) ; Store argument 0 in callee frame
220 : LDC 1, 0(0) ; Load integer-literal into R1
221 : LDA 4, 3(5) ; Recompute callee base from caller size
222 : ST 1, 2(4) ; Store argument 1 in callee frame
223 : LD 1, 1(5) ; Load parameter 'n' into R1
224 : LDA 4, 3(5) ; Recompute callee base from caller size
225 : ST 1, 3(4) ; Store argument 2 in callee frame
226 : LDA 4, 3(5) ; Recompute callee base from caller size
227 : LDA 6, 231(0) ; Return address
228 : ST 6, 0(4) ; Store return address into callee frame
229 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
230 : LDA 7, 105(0) ; Call SQRTSEARCH
231 : LD 1, 4(5) ; Load callee result into R1
232 : LDC 2, 6(0) ; Callee frame size
233 : SUB 5, 5, 2 ; Pop back to caller
234 : ST 1, 2(5) ; Store function result into frame return slot
235 : LD 6, 0(5) ; Load return address
236 : LDA 7, 0(6) ; Return to caller
237 : LDC 1, 0(0) ; Load integer-literal into R1
238 : LDA 4, 4(5) ; Recompute callee base from caller size
239 : ST 1, 1(4) ; Store argument 0 in callee frame
240 : LD 1, 1(5) ; Load parameter 'n' into R1
241 : LDA 4, 4(5) ; Recompute callee base from caller size
242 : ST 1, 2(4) ; Store argument 1 in callee frame
243 : LDA 4, 4(5) ; Recompute callee base from caller size
244 : LDA 6, 248(0) ; Return address
245 : ST 6, 0(4) ; Store return address into callee frame
246 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
247 : LDA 7, 544(0) ; Call LE
248 : LD 1, 3(5) ; Load callee result into R1
249 : LDC 2, 5(0) ; Callee frame size
250 : SUB 5, 5, 2 ; Pop back to caller
251 : JEQ 1, 297(0) ; If condition is false, jump to ELSE
252 : LD 1, 1(5) ; Load parameter 'n' into R1
253 : LDA 4, 4(5) ; Recompute callee base from caller size
254 : ST 1, 1(4) ; Store argument 0 in callee frame
255 : LD 1, 1(5) ; Load parameter 'n' into R1
256 : LDA 4, 4(5) ; Recompute callee base from caller size
257 : ST 1, 1(4) ; Store argument 0 in callee frame
258 : LDC 1, 2(0) ; Load integer-literal into R1
259 : LDA 4, 4(5) ; Recompute callee base from caller size
260 : ST 1, 2(4) ; Store argument 1 in callee frame
261 : LDA 4, 4(5) ; Recompute callee base from caller size
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(4) ; Store return address into callee frame
264 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
265 : LDA 7, 458(0) ; Call DIV
266 : LD 1, 3(5) ; Load callee result into R1
267 : LDC 2, 5(0) ; Callee frame size
268 : SUB 5, 5, 2 ; Pop back to caller
269 : ST 1, 3(5) ; Spill left operand at depth 0
270 : LD 1, 1(5) ; Load parameter 'n' into R1
271 : LDA 4, 4(5) ; Recompute callee base from caller size
272 : ST 1, 1(4) ; Store argument 0 in callee frame
273 : LDC 1, 2(0) ; Load integer-literal into R1
274 : LDA 4, 4(5) ; Recompute callee base from caller size
275 : ST 1, 2(4) ; Store argument 1 in callee frame
276 : LDA 4, 4(5) ; Recompute callee base from caller size
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return address into callee frame
279 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
280 : LDA 7, 458(0) ; Call DIV
281 : LD 1, 3(5) ; Load callee result into R1
282 : LDC 2, 5(0) ; Callee frame size
283 : SUB 5, 5, 2 ; Pop back to caller
284 : LD 2, 3(5) ; Restore left operand from depth 0
285 : ADD 1, 2, 1 ; R1 = left + right
286 : LDA 4, 4(5) ; Recompute callee base from caller size
287 : ST 1, 2(4) ; Store argument 1 in callee frame
288 : LDA 4, 4(5) ; Recompute callee base from caller size
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return address into callee frame
291 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
292 : LDA 7, 506(0) ; Call GT
293 : LD 1, 3(5) ; Load callee result into R1
294 : LDC 2, 4(0) ; Callee frame size
295 : SUB 5, 5, 2 ; Pop back to caller
296 : LDA 7, 371(0) ; Skip ELSE block
297 : LD 1, 1(5) ; Load parameter 'n' into R1
298 : LDA 4, 4(5) ; Recompute callee base from caller size
299 : ST 1, 1(4) ; Store argument 0 in callee frame
300 : LDA 4, 4(5) ; Recompute callee base from caller size
301 : LDA 6, 305(0) ; Return address
302 : ST 6, 0(4) ; Store return address into callee frame
303 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
304 : LDA 7, 453(0) ; Call NEG
305 : LD 1, 2(5) ; Load callee result into R1
306 : LDC 2, 3(0) ; Callee frame size
307 : SUB 5, 5, 2 ; Pop back to caller
308 : LDA 4, 4(5) ; Recompute callee base from caller size
309 : ST 1, 1(4) ; Store argument 0 in callee frame
310 : LD 1, 1(5) ; Load parameter 'n' into R1
311 : LDA 4, 4(5) ; Recompute callee base from caller size
312 : ST 1, 1(4) ; Store argument 0 in callee frame
313 : LDA 4, 4(5) ; Recompute callee base from caller size
314 : LDA 6, 318(0) ; Return address
315 : ST 6, 0(4) ; Store return address into callee frame
316 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
317 : LDA 7, 453(0) ; Call NEG
318 : LD 1, 2(5) ; Load callee result into R1
319 : LDC 2, 3(0) ; Callee frame size
320 : SUB 5, 5, 2 ; Pop back to caller
321 : LDA 4, 4(5) ; Recompute callee base from caller size
322 : ST 1, 1(4) ; Store argument 0 in callee frame
323 : LDC 1, 2(0) ; Load integer-literal into R1
324 : LDA 4, 4(5) ; Recompute callee base from caller size
325 : ST 1, 2(4) ; Store argument 1 in callee frame
326 : LDA 4, 4(5) ; Recompute callee base from caller size
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return address into callee frame
329 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
330 : LDA 7, 458(0) ; Call DIV
331 : LD 1, 3(5) ; Load callee result into R1
332 : LDC 2, 5(0) ; Callee frame size
333 : SUB 5, 5, 2 ; Pop back to caller
334 : ST 1, 3(5) ; Spill left operand at depth 0
335 : LD 1, 1(5) ; Load parameter 'n' into R1
336 : LDA 4, 4(5) ; Recompute callee base from caller size
337 : ST 1, 1(4) ; Store argument 0 in callee frame
338 : LDA 4, 4(5) ; Recompute callee base from caller size
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return address into callee frame
341 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
342 : LDA 7, 453(0) ; Call NEG
343 : LD 1, 2(5) ; Load callee result into R1
344 : LDC 2, 3(0) ; Callee frame size
345 : SUB 5, 5, 2 ; Pop back to caller
346 : LDA 4, 4(5) ; Recompute callee base from caller size
347 : ST 1, 1(4) ; Store argument 0 in callee frame
348 : LDC 1, 2(0) ; Load integer-literal into R1
349 : LDA 4, 4(5) ; Recompute callee base from caller size
350 : ST 1, 2(4) ; Store argument 1 in callee frame
351 : LDA 4, 4(5) ; Recompute callee base from caller size
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return address into callee frame
354 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
355 : LDA 7, 458(0) ; Call DIV
356 : LD 1, 3(5) ; Load callee result into R1
357 : LDC 2, 5(0) ; Callee frame size
358 : SUB 5, 5, 2 ; Pop back to caller
359 : LD 2, 3(5) ; Restore left operand from depth 0
360 : ADD 1, 2, 1 ; R1 = left + right
361 : LDA 4, 4(5) ; Recompute callee base from caller size
362 : ST 1, 2(4) ; Store argument 1 in callee frame
363 : LDA 4, 4(5) ; Recompute callee base from caller size
364 : LDA 6, 368(0) ; Return address
365 : ST 6, 0(4) ; Store return address into callee frame
366 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
367 : LDA 7, 506(0) ; Call GT
368 : LD 1, 3(5) ; Load callee result into R1
369 : LDC 2, 4(0) ; Callee frame size
370 : SUB 5, 5, 2 ; Pop back to caller
371 : ST 1, 2(5) ; Store function result into frame return slot
372 : LD 6, 0(5) ; Load return address
373 : LDA 7, 0(6) ; Return to caller
374 : LD 1, 2(5) ; Load parameter 'n' into R1
375 : ST 1, 4(5) ; Spill left operand at depth 0
376 : LDC 1, 0(0) ; Load integer-literal into R1
377 : LD 2, 4(5) ; Restore left operand from depth 0
378 : SUB 1, 2, 1 ; left - right for equality check
379 : JEQ 1, 2(7) ; If R1 == 0, jump to true
380 : LDC 1, 0(0) ; false
381 : LDA 7, 1(7) ; skip setting true
382 : LDC 1, 1(0) ; true
383 : JEQ 1, 386(0) ; If condition is false, jump to ELSE
384 : LDC 1, 1(0) ; Load integer-literal into R1
385 : LDA 7, 408(0) ; Skip ELSE block
386 : LD 1, 1(5) ; Load parameter 'm' into R1
387 : ST 1, 4(5) ; Spill left operand at depth 0
388 : LD 1, 1(5) ; Load parameter 'm' into R1
389 : LDA 4, 6(5) ; Recompute callee base from caller size
390 : ST 1, 1(4) ; Store argument 0 in callee frame
391 : LD 1, 2(5) ; Load parameter 'n' into R1
392 : ST 1, 5(5) ; Spill left operand at depth 1
393 : LDC 1, 1(0) ; Load integer-literal into R1
394 : LD 2, 5(5) ; Restore left operand from depth 1
395 : SUB 1, 2, 1 ; R1 = left - right
396 : LDA 4, 6(5) ; Recompute callee base from caller size
397 : ST 1, 2(4) ; Store argument 1 in callee frame
398 : LDA 4, 6(5) ; Recompute callee base from caller size
399 : LDA 6, 403(0) ; Return address
400 : ST 6, 0(4) ; Store return address into callee frame
401 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
402 : LDA 7, 374(0) ; Call EXP
403 : LD 1, 3(5) ; Load callee result into R1
404 : LDC 2, 6(0) ; Callee frame size
405 : SUB 5, 5, 2 ; Pop back to caller
406 : LD 2, 4(5) ; Restore left operand from depth 0
407 : MUL 1, 2, 1 ; R1 = left * right
408 : ST 1, 3(5) ; Store function result into frame return slot
409 : LD 6, 0(5) ; Load return address
410 : LDA 7, 0(6) ; Return to caller
411 : LD 1, 1(5) ; Load parameter 'm' into R1
412 : ST 1, 4(5) ; Spill left operand at depth 0
413 : LD 1, 1(5) ; Load parameter 'm' into R1
414 : ST 1, 5(5) ; Spill left operand at depth 1
415 : LD 1, 2(5) ; Load parameter 'n' into R1
416 : LD 2, 5(5) ; Restore left operand from depth 1
417 : DIV 1, 2, 1 ; R1 = left / right
418 : ST 1, 5(5) ; Spill left operand at depth 1
419 : LD 1, 2(5) ; Load parameter 'n' into R1
420 : LD 2, 5(5) ; Restore left operand from depth 1
421 : MUL 1, 2, 1 ; R1 = left * right
422 : LD 2, 4(5) ; Restore left operand from depth 0
423 : SUB 1, 2, 1 ; R1 = left - right
424 : ST 1, 3(5) ; Store function result into frame return slot
425 : LD 6, 0(5) ; Load return address
426 : LDA 7, 0(6) ; Return to caller
427 : LDC 1, 0(0) ; Load integer-literal into R1
428 : ST 1, 3(5) ; Spill left operand at depth 0
429 : LD 1, 1(5) ; Load parameter 'n' into R1
430 : LD 2, 3(5) ; Restore left operand from depth 0
431 : SUB 1, 2, 1 ; left - right for less-than check
432 : JLT 1, 2(7) ; If R1 < 0, jump to true
433 : LDC 1, 0(0) ; false
434 : LDA 7, 1(7) ; skip setting true
435 : LDC 1, 1(0) ; true
436 : JEQ 1, 439(0) ; If condition is false, jump to ELSE
437 : LD 1, 1(5) ; Load parameter 'n' into R1
438 : LDA 7, 450(0) ; Skip ELSE block
439 : LD 1, 1(5) ; Load parameter 'n' into R1
440 : LDA 4, 4(5) ; Recompute callee base from caller size
441 : ST 1, 1(4) ; Store argument 0 in callee frame
442 : LDA 4, 4(5) ; Recompute callee base from caller size
443 : LDA 6, 447(0) ; Return address
444 : ST 6, 0(4) ; Store return address into callee frame
445 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
446 : LDA 7, 453(0) ; Call NEG
447 : LD 1, 2(5) ; Load callee result into R1
448 : LDC 2, 3(0) ; Callee frame size
449 : SUB 5, 5, 2 ; Pop back to caller
450 : ST 1, 2(5) ; Store function result into frame return slot
451 : LD 6, 0(5) ; Load return address
452 : LDA 7, 0(6) ; Return to caller
453 : LD 1, 1(5) ; Load parameter 'n' into R1
454 : SUB 1, 0, 1 ; Negate value in R1
455 : ST 1, 2(5) ; Store function result into frame return slot
456 : LD 6, 0(5) ; Load return address
457 : LDA 7, 0(6) ; Return to caller
458 : LD 1, 1(5) ; Load parameter 'p' into R1
459 : ST 1, 4(5) ; Spill left operand at depth 0
460 : LD 1, 2(5) ; Load parameter 'q' into R1
461 : LD 2, 4(5) ; Restore left operand from depth 0
462 : DIV 1, 2, 1 ; R1 = left / right
463 : ST 1, 3(5) ; Store function result into frame return slot
464 : LD 6, 0(5) ; Load return address
465 : LDA 7, 0(6) ; Return to caller
466 : LD 1, 1(5) ; Load parameter 'p' into R1
467 : ST 1, 4(5) ; Spill left operand at depth 0
468 : LD 1, 2(5) ; Load parameter 'q' into R1
469 : LD 2, 4(5) ; Restore left operand from depth 0
470 : MUL 1, 2, 1 ; R1 = left * right
471 : ST 1, 3(5) ; Store function result into frame return slot
472 : LD 6, 0(5) ; Load return address
473 : LDA 7, 0(6) ; Return to caller
474 : LD 1, 1(5) ; Load parameter 'p' into R1
475 : ST 1, 4(5) ; Spill left operand at depth 0
476 : LD 1, 2(5) ; Load parameter 'q' into R1
477 : LD 2, 4(5) ; Restore left operand from depth 0
478 : SUB 1, 2, 1 ; R1 = left - right
479 : ST 1, 3(5) ; Store function result into frame return slot
480 : LD 6, 0(5) ; Load return address
481 : LDA 7, 0(6) ; Return to caller
482 : LD 1, 1(5) ; Load parameter 'p' into R1
483 : ST 1, 4(5) ; Spill left operand at depth 0
484 : LD 1, 2(5) ; Load parameter 'q' into R1
485 : LD 2, 4(5) ; Restore left operand from depth 0
486 : ADD 1, 2, 1 ; R1 = left + right
487 : ST 1, 3(5) ; Store function result into frame return slot
488 : LD 6, 0(5) ; Load return address
489 : LDA 7, 0(6) ; Return to caller
490 : LD 1, 1(5) ; Load parameter 'p' into R1
491 : JEQ 1, 494(0) ; If condition is false, jump to ELSE
492 : LD 1, 2(5) ; Load parameter 'q' into R1
493 : LDA 7, 495(0) ; Skip ELSE block
494 : LDC 1, 0(0) ; Load boolean-literal into R1
495 : ST 1, 3(5) ; Store function result into frame return slot
496 : LD 6, 0(5) ; Load return address
497 : LDA 7, 0(6) ; Return to caller
498 : LD 1, 1(5) ; Load parameter 'p' into R1
499 : ST 1, 4(5) ; Spill left operand at depth 0
500 : LD 1, 2(5) ; Load parameter 'q' into R1
501 : LD 2, 4(5) ; Restore left operand from depth 0
502 : ADD 1, 2, 1 ; R1 = left OR right
503 : ST 1, 3(5) ; Store function result into frame return slot
504 : LD 6, 0(5) ; Load return address
505 : LDA 7, 0(6) ; Return to caller
506 : LD 1, 1(5) ; Load parameter 'p' into R1
507 : LDA 4, 4(5) ; Recompute callee base from caller size
508 : ST 1, 1(4) ; Store argument 0 in callee frame
509 : LD 1, 2(5) ; Load parameter 'q' into R1
510 : LDA 4, 4(5) ; Recompute callee base from caller size
511 : ST 1, 2(4) ; Store argument 1 in callee frame
512 : LDA 4, 4(5) ; Recompute callee base from caller size
513 : LDA 6, 517(0) ; Return address
514 : ST 6, 0(4) ; Store return address into callee frame
515 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
516 : LDA 7, 544(0) ; Call LE
517 : LD 1, 3(5) ; Load callee result into R1
518 : LDC 2, 5(0) ; Callee frame size
519 : SUB 5, 5, 2 ; Pop back to caller
520 : LDC 2, 1(0) ; Load 1 into R2
521 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
522 : ST 1, 3(5) ; Store function result into frame return slot
523 : LD 6, 0(5) ; Load return address
524 : LDA 7, 0(6) ; Return to caller
525 : LD 1, 1(5) ; Load parameter 'p' into R1
526 : LDA 4, 4(5) ; Recompute callee base from caller size
527 : ST 1, 1(4) ; Store argument 0 in callee frame
528 : LD 1, 2(5) ; Load parameter 'q' into R1
529 : LDA 4, 4(5) ; Recompute callee base from caller size
530 : ST 1, 2(4) ; Store argument 1 in callee frame
531 : LDA 4, 4(5) ; Recompute callee base from caller size
532 : LDA 6, 536(0) ; Return address
533 : ST 6, 0(4) ; Store return address into callee frame
534 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
535 : LDA 7, 609(0) ; Call LT
536 : LD 1, 3(5) ; Load callee result into R1
537 : LDC 2, 5(0) ; Callee frame size
538 : SUB 5, 5, 2 ; Pop back to caller
539 : LDC 2, 1(0) ; Load 1 into R2
540 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
541 : ST 1, 3(5) ; Store function result into frame return slot
542 : LD 6, 0(5) ; Load return address
543 : LDA 7, 0(6) ; Return to caller
544 : LD 1, 1(5) ; Load parameter 'p' into R1
545 : LDA 4, 5(5) ; Recompute callee base from caller size
546 : ST 1, 1(4) ; Store argument 0 in callee frame
547 : LD 1, 2(5) ; Load parameter 'q' into R1
548 : LDA 4, 5(5) ; Recompute callee base from caller size
549 : ST 1, 2(4) ; Store argument 1 in callee frame
550 : LDA 4, 5(5) ; Recompute callee base from caller size
551 : LDA 6, 555(0) ; Return address
552 : ST 6, 0(4) ; Store return address into callee frame
553 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
554 : LDA 7, 609(0) ; Call LT
555 : LD 1, 3(5) ; Load callee result into R1
556 : LDC 2, 5(0) ; Callee frame size
557 : SUB 5, 5, 2 ; Pop back to caller
558 : ST 1, 4(5) ; Spill left operand at depth 0
559 : LD 1, 1(5) ; Load parameter 'p' into R1
560 : LDA 4, 5(5) ; Recompute callee base from caller size
561 : ST 1, 1(4) ; Store argument 0 in callee frame
562 : LD 1, 2(5) ; Load parameter 'q' into R1
563 : LDA 4, 5(5) ; Recompute callee base from caller size
564 : ST 1, 2(4) ; Store argument 1 in callee frame
565 : LDA 4, 5(5) ; Recompute callee base from caller size
566 : LDA 6, 570(0) ; Return address
567 : ST 6, 0(4) ; Store return address into callee frame
568 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
569 : LDA 7, 597(0) ; Call EQ
570 : LD 1, 3(5) ; Load callee result into R1
571 : LDC 2, 5(0) ; Callee frame size
572 : SUB 5, 5, 2 ; Pop back to caller
573 : LD 2, 4(5) ; Restore left operand from depth 0
574 : ADD 1, 2, 1 ; R1 = left OR right
575 : ST 1, 3(5) ; Store function result into frame return slot
576 : LD 6, 0(5) ; Load return address
577 : LDA 7, 0(6) ; Return to caller
578 : LD 1, 1(5) ; Load parameter 'p' into R1
579 : LDA 4, 4(5) ; Recompute callee base from caller size
580 : ST 1, 1(4) ; Store argument 0 in callee frame
581 : LD 1, 2(5) ; Load parameter 'q' into R1
582 : LDA 4, 4(5) ; Recompute callee base from caller size
583 : ST 1, 2(4) ; Store argument 1 in callee frame
584 : LDA 4, 4(5) ; Recompute callee base from caller size
585 : LDA 6, 589(0) ; Return address
586 : ST 6, 0(4) ; Store return address into callee frame
587 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
588 : LDA 7, 597(0) ; Call EQ
589 : LD 1, 3(5) ; Load callee result into R1
590 : LDC 2, 5(0) ; Callee frame size
591 : SUB 5, 5, 2 ; Pop back to caller
592 : LDC 2, 1(0) ; Load 1 into R2
593 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
594 : ST 1, 3(5) ; Store function result into frame return slot
595 : LD 6, 0(5) ; Load return address
596 : LDA 7, 0(6) ; Return to caller
597 : LD 1, 1(5) ; Load parameter 'p' into R1
598 : ST 1, 4(5) ; Spill left operand at depth 0
599 : LD 1, 2(5) ; Load parameter 'q' into R1
600 : LD 2, 4(5) ; Restore left operand from depth 0
601 : SUB 1, 2, 1 ; left - right for equality check
602 : JEQ 1, 2(7) ; If R1 == 0, jump to true
603 : LDC 1, 0(0) ; false
604 : LDA 7, 1(7) ; skip setting true
605 : LDC 1, 1(0) ; true
606 : ST 1, 3(5) ; Store function result into frame return slot
607 : LD 6, 0(5) ; Load return address
608 : LDA 7, 0(6) ; Return to caller
609 : LD 1, 1(5) ; Load parameter 'p' into R1
610 : ST 1, 4(5) ; Spill left operand at depth 0
611 : LD 1, 2(5) ; Load parameter 'q' into R1
612 : LD 2, 4(5) ; Restore left operand from depth 0
613 : SUB 1, 2, 1 ; left - right for less-than check
614 : JLT 1, 2(7) ; If R1 < 0, jump to true
615 : LDC 1, 0(0) ; false
616 : LDA 7, 1(7) ; skip setting true
617 : LDC 1, 1(0) ; true
618 : ST 1, 3(5) ; Store function result into frame return slot
619 : LD 6, 0(5) ; Load return address
620 : LDA 7, 0(6) ; Return to caller
621 : LDC 1, 2147483647(0) ; Load integer-literal into R1
622 : SUB 1, 0, 1 ; Negate value in R1
623 : ST 1, 2(5) ; Spill left operand at depth 0
624 : LDC 1, 1(0) ; Load integer-literal into R1
625 : LD 2, 2(5) ; Restore left operand from depth 0
626 : SUB 1, 2, 1 ; R1 = left - right
627 : ST 1, 1(5) ; Store function result into frame return slot
628 : LD 6, 0(5) ; Load return address
629 : LDA 7, 0(6) ; Return to caller
630 : LDC 1, 2147483647(0) ; Load integer-literal into R1
631 : ST 1, 1(5) ; Store function result into frame return slot
632 : LD 6, 0(5) ; Load return address
633 : LDA 7, 0(6) ; Return to caller
