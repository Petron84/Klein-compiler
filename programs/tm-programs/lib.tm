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
12 : LDA 4, 3(5) ; Compute callee base from caller size
13 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return address into callee frame
17 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
18 : LDA 7, 190(0) ; Call SQRT
19 : LD 1, 2(5) ; Load callee result into R1
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LDA 4, 3(5) ; Compute callee base from caller size
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return address into callee frame
25 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
26 : LDA 7, 9(0) ; Call built-in print
27 : LDC 2, 3(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop back to caller
29 : LDA 4, 3(5) ; Compute callee base from caller size
30 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return address into callee frame
34 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
35 : LDA 7, 207(0) ; Call ODD
36 : LD 1, 2(5) ; Load callee result into R1
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 2(5) ; Store result into caller’s return slot
40 : LD 1, 2(5) ; Load main return value into R1
41 : LD 6, 0(5) ; Load main return address
42 : LDA 7, 0(6) ; Return from main
43 : LDA 4, 7(5) ; Compute callee base from caller size
44 : LD 1, 4(5) ; Load parameter 'mid' into R1
45 : ST 1, 6(5) ; Spill left operand at depth 0
46 : LD 1, 4(5) ; Load parameter 'mid' into R1
47 : LD 2, 6(5) ; Restore left operand from depth 0
48 : MUL 1, 2, 1 ; R1 = left * right
49 : ST 1, 1(4) ; Store argument 0 in callee frame
50 : LD 1, 1(5) ; Load parameter 'n' into R1
51 : ST 1, 2(4) ; Store argument 1 in callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return address into callee frame
54 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
55 : LDA 7, 490(0) ; Call LE
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 7(0) ; Caller frame size
58 : SUB 5, 5, 2 ; Pop back to caller
59 : JEQ 1, 75(0) ; If condition is false, jump to ELSE
60 : LDA 4, 7(5) ; Compute callee base from caller size
61 : LD 1, 1(5) ; Load parameter 'n' into R1
62 : ST 1, 1(4) ; Store argument 0 in callee frame
63 : LD 1, 4(5) ; Load parameter 'mid' into R1
64 : ST 1, 2(4) ; Store argument 1 in callee frame
65 : LD 1, 3(5) ; Load parameter 'high' into R1
66 : ST 1, 3(4) ; Store argument 2 in callee frame
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return address into callee frame
69 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
70 : LDA 7, 92(0) ; Call SQRTSEARCH
71 : LD 1, 4(5) ; Load callee result into R1
72 : LDC 2, 7(0) ; Caller frame size
73 : SUB 5, 5, 2 ; Pop back to caller
74 : LDA 7, 89(0) ; Skip ELSE block
75 : LDA 4, 7(5) ; Compute callee base from caller size
76 : LD 1, 1(5) ; Load parameter 'n' into R1
77 : ST 1, 1(4) ; Store argument 0 in callee frame
78 : LD 1, 2(5) ; Load parameter 'low' into R1
79 : ST 1, 2(4) ; Store argument 1 in callee frame
80 : LD 1, 4(5) ; Load parameter 'mid' into R1
81 : ST 1, 3(4) ; Store argument 2 in callee frame
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return address into callee frame
84 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
85 : LDA 7, 92(0) ; Call SQRTSEARCH
86 : LD 1, 4(5) ; Load callee result into R1
87 : LDC 2, 7(0) ; Caller frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : ST 1, 5(5) ; Store function result into frame return slot
90 : LD 6, 0(5) ; Load return address
91 : LDA 7, 0(6) ; Return to caller
92 : LDA 4, 6(5) ; Compute callee base from caller size
93 : LD 1, 3(5) ; Load parameter 'high' into R1
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LD 1, 2(5) ; Load parameter 'low' into R1
96 : ST 1, 5(5) ; Spill left operand at depth 0
97 : LDC 1, 1(0) ; Load integer-literal into R1
98 : LD 2, 5(5) ; Restore left operand from depth 0
99 : ADD 1, 2, 1 ; R1 = left + right
100 : ST 1, 2(4) ; Store argument 1 in callee frame
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(4) ; Store return address into callee frame
103 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
104 : LDA 7, 490(0) ; Call LE
105 : LD 1, 3(5) ; Load callee result into R1
106 : LDC 2, 6(0) ; Caller frame size
107 : SUB 5, 5, 2 ; Pop back to caller
108 : JEQ 1, 156(0) ; If condition is false, jump to ELSE
109 : LDA 4, 6(5) ; Compute callee base from caller size
110 : LD 1, 1(5) ; Load parameter 'n' into R1
111 : ST 1, 5(5) ; Spill left operand at depth 0
112 : LDA 4, 6(5) ; Compute callee base from caller size
113 : LD 1, 2(5) ; Load parameter 'low' into R1
114 : ST 1, 1(4) ; Store argument 0 in callee frame
115 : LD 1, 2(5) ; Load parameter 'low' into R1
116 : ST 1, 2(4) ; Store argument 1 in callee frame
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return address into callee frame
119 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
120 : LDA 7, 416(0) ; Call TIMES
121 : LD 1, 3(5) ; Load callee result into R1
122 : LDC 2, 6(0) ; Caller frame size
123 : SUB 5, 5, 2 ; Pop back to caller
124 : LD 2, 5(5) ; Restore left operand from depth 0
125 : SUB 1, 2, 1 ; R1 = left - right
126 : ST 1, 1(4) ; Store argument 0 in callee frame
127 : LDA 4, 6(5) ; Compute callee base from caller size
128 : LD 1, 3(5) ; Load parameter 'high' into R1
129 : ST 1, 1(4) ; Store argument 0 in callee frame
130 : LD 1, 3(5) ; Load parameter 'high' into R1
131 : ST 1, 2(4) ; Store argument 1 in callee frame
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return address into callee frame
134 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
135 : LDA 7, 416(0) ; Call TIMES
136 : LD 1, 3(5) ; Load callee result into R1
137 : LDC 2, 6(0) ; Caller frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : ST 1, 5(5) ; Spill left operand at depth 0
140 : LD 1, 1(5) ; Load parameter 'n' into R1
141 : LD 2, 5(5) ; Restore left operand from depth 0
142 : SUB 1, 2, 1 ; R1 = left - right
143 : ST 1, 2(4) ; Store argument 1 in callee frame
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return address into callee frame
146 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
147 : LDA 7, 490(0) ; Call LE
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 6(0) ; Caller frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : JEQ 1, 154(0) ; If condition is false, jump to ELSE
152 : LD 1, 2(5) ; Load parameter 'low' into R1
153 : LDA 7, 155(0) ; Skip ELSE block
154 : LD 1, 3(5) ; Load parameter 'high' into R1
155 : LDA 7, 187(0) ; Skip ELSE block
156 : LDA 4, 6(5) ; Compute callee base from caller size
157 : LD 1, 1(5) ; Load parameter 'n' into R1
158 : ST 1, 1(4) ; Store argument 0 in callee frame
159 : LD 1, 2(5) ; Load parameter 'low' into R1
160 : ST 1, 2(4) ; Store argument 1 in callee frame
161 : LD 1, 3(5) ; Load parameter 'high' into R1
162 : ST 1, 3(4) ; Store argument 2 in callee frame
163 : LDA 4, 6(5) ; Compute callee base from caller size
164 : LD 1, 2(5) ; Load parameter 'low' into R1
165 : ST 1, 1(4) ; Store argument 0 in callee frame
166 : LD 1, 3(5) ; Load parameter 'high' into R1
167 : ST 1, 2(4) ; Store argument 1 in callee frame
168 : LDA 6, 172(0) ; Return address
169 : ST 6, 0(4) ; Store return address into callee frame
170 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
171 : LDA 7, 432(0) ; Call PLUS
172 : LD 1, 3(5) ; Load callee result into R1
173 : LDC 2, 6(0) ; Caller frame size
174 : SUB 5, 5, 2 ; Pop back to caller
175 : ST 1, 5(5) ; Spill left operand at depth 0
176 : LDC 1, 2(0) ; Load integer-literal into R1
177 : LD 2, 5(5) ; Restore left operand from depth 0
178 : DIV 1, 2, 1 ; R1 = left / right
179 : ST 1, 4(4) ; Store argument 3 in callee frame
180 : LDA 6, 184(0) ; Return address
181 : ST 6, 0(4) ; Store return address into callee frame
182 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
183 : LDA 7, 43(0) ; Call SQRTSPLIT
184 : LD 1, 5(5) ; Load callee result into R1
185 : LDC 2, 6(0) ; Caller frame size
186 : SUB 5, 5, 2 ; Pop back to caller
187 : ST 1, 4(5) ; Store function result into frame return slot
188 : LD 6, 0(5) ; Load return address
189 : LDA 7, 0(6) ; Return to caller
190 : LDA 4, 3(5) ; Compute callee base from caller size
191 : LD 1, 1(5) ; Load parameter 'n' into R1
192 : ST 1, 1(4) ; Store argument 0 in callee frame
193 : LDC 1, 0(0) ; Load integer-literal into R1
194 : ST 1, 2(4) ; Store argument 1 in callee frame
195 : LD 1, 1(5) ; Load parameter 'n' into R1
196 : ST 1, 3(4) ; Store argument 2 in callee frame
197 : LDA 6, 201(0) ; Return address
198 : ST 6, 0(4) ; Store return address into callee frame
199 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
200 : LDA 7, 92(0) ; Call SQRTSEARCH
201 : LD 1, 4(5) ; Load callee result into R1
202 : LDC 2, 3(0) ; Caller frame size
203 : SUB 5, 5, 2 ; Pop back to caller
204 : ST 1, 2(5) ; Store function result into frame return slot
205 : LD 6, 0(5) ; Load return address
206 : LDA 7, 0(6) ; Return to caller
207 : LDA 4, 4(5) ; Compute callee base from caller size
208 : LDC 1, 0(0) ; Load integer-literal into R1
209 : ST 1, 1(4) ; Store argument 0 in callee frame
210 : LD 1, 1(5) ; Load parameter 'n' into R1
211 : ST 1, 2(4) ; Store argument 1 in callee frame
212 : LDA 6, 216(0) ; Return address
213 : ST 6, 0(4) ; Store return address into callee frame
214 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
215 : LDA 7, 490(0) ; Call LE
216 : LD 1, 3(5) ; Load callee result into R1
217 : LDC 2, 4(0) ; Caller frame size
218 : SUB 5, 5, 2 ; Pop back to caller
219 : JEQ 1, 259(0) ; If condition is false, jump to ELSE
220 : LDA 4, 4(5) ; Compute callee base from caller size
221 : LD 1, 1(5) ; Load parameter 'n' into R1
222 : ST 1, 1(4) ; Store argument 0 in callee frame
223 : LDA 4, 4(5) ; Compute callee base from caller size
224 : LD 1, 1(5) ; Load parameter 'n' into R1
225 : ST 1, 1(4) ; Store argument 0 in callee frame
226 : LDC 1, 2(0) ; Load integer-literal into R1
227 : ST 1, 2(4) ; Store argument 1 in callee frame
228 : LDA 6, 232(0) ; Return address
229 : ST 6, 0(4) ; Store return address into callee frame
230 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
231 : LDA 7, 408(0) ; Call DIV
232 : LD 1, 3(5) ; Load callee result into R1
233 : LDC 2, 4(0) ; Caller frame size
234 : SUB 5, 5, 2 ; Pop back to caller
235 : ST 1, 3(5) ; Spill left operand at depth 0
236 : LDA 4, 4(5) ; Compute callee base from caller size
237 : LD 1, 1(5) ; Load parameter 'n' into R1
238 : ST 1, 1(4) ; Store argument 0 in callee frame
239 : LDC 1, 2(0) ; Load integer-literal into R1
240 : ST 1, 2(4) ; Store argument 1 in callee frame
241 : LDA 6, 245(0) ; Return address
242 : ST 6, 0(4) ; Store return address into callee frame
243 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
244 : LDA 7, 408(0) ; Call DIV
245 : LD 1, 3(5) ; Load callee result into R1
246 : LDC 2, 4(0) ; Caller frame size
247 : SUB 5, 5, 2 ; Pop back to caller
248 : LD 2, 3(5) ; Restore left operand from depth 0
249 : ADD 1, 2, 1 ; R1 = left + right
250 : ST 1, 2(4) ; Store argument 1 in callee frame
251 : LDA 6, 255(0) ; Return address
252 : ST 6, 0(4) ; Store return address into callee frame
253 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
254 : LDA 7, 456(0) ; Call GT
255 : LD 1, 3(5) ; Load callee result into R1
256 : LDC 2, 4(0) ; Caller frame size
257 : SUB 5, 5, 2 ; Pop back to caller
258 : LDA 7, 324(0) ; Skip ELSE block
259 : LDA 4, 4(5) ; Compute callee base from caller size
260 : LDA 4, 4(5) ; Compute callee base from caller size
261 : LD 1, 1(5) ; Load parameter 'n' into R1
262 : ST 1, 1(4) ; Store argument 0 in callee frame
263 : LDA 6, 267(0) ; Return address
264 : ST 6, 0(4) ; Store return address into callee frame
265 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
266 : LDA 7, 403(0) ; Call NEG
267 : LD 1, 2(5) ; Load callee result into R1
268 : LDC 2, 4(0) ; Caller frame size
269 : SUB 5, 5, 2 ; Pop back to caller
270 : ST 1, 1(4) ; Store argument 0 in callee frame
271 : LDA 4, 4(5) ; Compute callee base from caller size
272 : LDA 4, 4(5) ; Compute callee base from caller size
273 : LD 1, 1(5) ; Load parameter 'n' into R1
274 : ST 1, 1(4) ; Store argument 0 in callee frame
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(4) ; Store return address into callee frame
277 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
278 : LDA 7, 403(0) ; Call NEG
279 : LD 1, 2(5) ; Load callee result into R1
280 : LDC 2, 4(0) ; Caller frame size
281 : SUB 5, 5, 2 ; Pop back to caller
282 : ST 1, 1(4) ; Store argument 0 in callee frame
283 : LDC 1, 2(0) ; Load integer-literal into R1
284 : ST 1, 2(4) ; Store argument 1 in callee frame
285 : LDA 6, 289(0) ; Return address
286 : ST 6, 0(4) ; Store return address into callee frame
287 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
288 : LDA 7, 408(0) ; Call DIV
289 : LD 1, 3(5) ; Load callee result into R1
290 : LDC 2, 4(0) ; Caller frame size
291 : SUB 5, 5, 2 ; Pop back to caller
292 : ST 1, 3(5) ; Spill left operand at depth 0
293 : LDA 4, 4(5) ; Compute callee base from caller size
294 : LDA 4, 4(5) ; Compute callee base from caller size
295 : LD 1, 1(5) ; Load parameter 'n' into R1
296 : ST 1, 1(4) ; Store argument 0 in callee frame
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(4) ; Store return address into callee frame
299 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
300 : LDA 7, 403(0) ; Call NEG
301 : LD 1, 2(5) ; Load callee result into R1
302 : LDC 2, 4(0) ; Caller frame size
303 : SUB 5, 5, 2 ; Pop back to caller
304 : ST 1, 1(4) ; Store argument 0 in callee frame
305 : LDC 1, 2(0) ; Load integer-literal into R1
306 : ST 1, 2(4) ; Store argument 1 in callee frame
307 : LDA 6, 311(0) ; Return address
308 : ST 6, 0(4) ; Store return address into callee frame
309 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
310 : LDA 7, 408(0) ; Call DIV
311 : LD 1, 3(5) ; Load callee result into R1
312 : LDC 2, 4(0) ; Caller frame size
313 : SUB 5, 5, 2 ; Pop back to caller
314 : LD 2, 3(5) ; Restore left operand from depth 0
315 : ADD 1, 2, 1 ; R1 = left + right
316 : ST 1, 2(4) ; Store argument 1 in callee frame
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return address into callee frame
319 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
320 : LDA 7, 456(0) ; Call GT
321 : LD 1, 3(5) ; Load callee result into R1
322 : LDC 2, 4(0) ; Caller frame size
323 : SUB 5, 5, 2 ; Pop back to caller
324 : ST 1, 2(5) ; Store function result into frame return slot
325 : LD 6, 0(5) ; Load return address
326 : LDA 7, 0(6) ; Return to caller
327 : LD 1, 2(5) ; Load parameter 'n' into R1
328 : ST 1, 4(5) ; Spill left operand at depth 0
329 : LDC 1, 0(0) ; Load integer-literal into R1
330 : LD 2, 4(5) ; Restore left operand from depth 0
331 : SUB 1, 2, 1 ; left - right for equality check
332 : JEQ 1, 2(7) ; If R1 == 0, jump to true
333 : LDC 1, 0(0) ; false
334 : LDA 7, 1(7) ; skip setting true
335 : LDC 1, 1(0) ; true
336 : JEQ 1, 339(0) ; If condition is false, jump to ELSE
337 : LDC 1, 1(0) ; Load integer-literal into R1
338 : LDA 7, 359(0) ; Skip ELSE block
339 : LD 1, 1(5) ; Load parameter 'm' into R1
340 : ST 1, 4(5) ; Spill left operand at depth 0
341 : LDA 4, 6(5) ; Compute callee base from caller size
342 : LD 1, 1(5) ; Load parameter 'm' into R1
343 : ST 1, 1(4) ; Store argument 0 in callee frame
344 : LD 1, 2(5) ; Load parameter 'n' into R1
345 : ST 1, 5(5) ; Spill left operand at depth 1
346 : LDC 1, 1(0) ; Load integer-literal into R1
347 : LD 2, 5(5) ; Restore left operand from depth 1
348 : SUB 1, 2, 1 ; R1 = left - right
349 : ST 1, 2(4) ; Store argument 1 in callee frame
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return address into callee frame
352 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
353 : LDA 7, 327(0) ; Call EXP
354 : LD 1, 3(5) ; Load callee result into R1
355 : LDC 2, 6(0) ; Caller frame size
356 : SUB 5, 5, 2 ; Pop back to caller
357 : LD 2, 4(5) ; Restore left operand from depth 0
358 : MUL 1, 2, 1 ; R1 = left * right
359 : ST 1, 3(5) ; Store function result into frame return slot
360 : LD 6, 0(5) ; Load return address
361 : LDA 7, 0(6) ; Return to caller
362 : LD 1, 1(5) ; Load parameter 'm' into R1
363 : ST 1, 4(5) ; Spill left operand at depth 0
364 : LD 1, 1(5) ; Load parameter 'm' into R1
365 : ST 1, 5(5) ; Spill left operand at depth 1
366 : LD 1, 2(5) ; Load parameter 'n' into R1
367 : LD 2, 5(5) ; Restore left operand from depth 1
368 : DIV 1, 2, 1 ; R1 = left / right
369 : ST 1, 5(5) ; Spill left operand at depth 1
370 : LD 1, 2(5) ; Load parameter 'n' into R1
371 : LD 2, 5(5) ; Restore left operand from depth 1
372 : MUL 1, 2, 1 ; R1 = left * right
373 : LD 2, 4(5) ; Restore left operand from depth 0
374 : SUB 1, 2, 1 ; R1 = left - right
375 : ST 1, 3(5) ; Store function result into frame return slot
376 : LD 6, 0(5) ; Load return address
377 : LDA 7, 0(6) ; Return to caller
378 : LDC 1, 0(0) ; Load integer-literal into R1
379 : ST 1, 3(5) ; Spill left operand at depth 0
380 : LD 1, 1(5) ; Load parameter 'n' into R1
381 : LD 2, 3(5) ; Restore left operand from depth 0
382 : SUB 1, 2, 1 ; left - right for less-than check
383 : JLT 1, 2(7) ; If R1 < 0, jump to true
384 : LDC 1, 0(0) ; false
385 : LDA 7, 1(7) ; skip setting true
386 : LDC 1, 1(0) ; true
387 : JEQ 1, 390(0) ; If condition is false, jump to ELSE
388 : LD 1, 1(5) ; Load parameter 'n' into R1
389 : LDA 7, 400(0) ; Skip ELSE block
390 : LDA 4, 4(5) ; Compute callee base from caller size
391 : LD 1, 1(5) ; Load parameter 'n' into R1
392 : ST 1, 1(4) ; Store argument 0 in callee frame
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return address into callee frame
395 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
396 : LDA 7, 403(0) ; Call NEG
397 : LD 1, 2(5) ; Load callee result into R1
398 : LDC 2, 4(0) ; Caller frame size
399 : SUB 5, 5, 2 ; Pop back to caller
400 : ST 1, 2(5) ; Store function result into frame return slot
401 : LD 6, 0(5) ; Load return address
402 : LDA 7, 0(6) ; Return to caller
403 : LD 1, 1(5) ; Load parameter 'n' into R1
404 : SUB 1, 0, 1 ; Negate value in R1
405 : ST 1, 2(5) ; Store function result into frame return slot
406 : LD 6, 0(5) ; Load return address
407 : LDA 7, 0(6) ; Return to caller
408 : LD 1, 1(5) ; Load parameter 'p' into R1
409 : ST 1, 4(5) ; Spill left operand at depth 0
410 : LD 1, 2(5) ; Load parameter 'q' into R1
411 : LD 2, 4(5) ; Restore left operand from depth 0
412 : DIV 1, 2, 1 ; R1 = left / right
413 : ST 1, 3(5) ; Store function result into frame return slot
414 : LD 6, 0(5) ; Load return address
415 : LDA 7, 0(6) ; Return to caller
416 : LD 1, 1(5) ; Load parameter 'p' into R1
417 : ST 1, 4(5) ; Spill left operand at depth 0
418 : LD 1, 2(5) ; Load parameter 'q' into R1
419 : LD 2, 4(5) ; Restore left operand from depth 0
420 : MUL 1, 2, 1 ; R1 = left * right
421 : ST 1, 3(5) ; Store function result into frame return slot
422 : LD 6, 0(5) ; Load return address
423 : LDA 7, 0(6) ; Return to caller
424 : LD 1, 1(5) ; Load parameter 'p' into R1
425 : ST 1, 4(5) ; Spill left operand at depth 0
426 : LD 1, 2(5) ; Load parameter 'q' into R1
427 : LD 2, 4(5) ; Restore left operand from depth 0
428 : SUB 1, 2, 1 ; R1 = left - right
429 : ST 1, 3(5) ; Store function result into frame return slot
430 : LD 6, 0(5) ; Load return address
431 : LDA 7, 0(6) ; Return to caller
432 : LD 1, 1(5) ; Load parameter 'p' into R1
433 : ST 1, 4(5) ; Spill left operand at depth 0
434 : LD 1, 2(5) ; Load parameter 'q' into R1
435 : LD 2, 4(5) ; Restore left operand from depth 0
436 : ADD 1, 2, 1 ; R1 = left + right
437 : ST 1, 3(5) ; Store function result into frame return slot
438 : LD 6, 0(5) ; Load return address
439 : LDA 7, 0(6) ; Return to caller
440 : LD 1, 1(5) ; Load parameter 'p' into R1
441 : JEQ 1, 444(0) ; If condition is false, jump to ELSE
442 : LD 1, 2(5) ; Load parameter 'q' into R1
443 : LDA 7, 445(0) ; Skip ELSE block
444 : LDC 1, 0(0) ; Load boolean-literal into R1
445 : ST 1, 3(5) ; Store function result into frame return slot
446 : LD 6, 0(5) ; Load return address
447 : LDA 7, 0(6) ; Return to caller
448 : LD 1, 1(5) ; Load parameter 'p' into R1
449 : ST 1, 4(5) ; Spill left operand at depth 0
450 : LD 1, 2(5) ; Load parameter 'q' into R1
451 : LD 2, 4(5) ; Restore left operand from depth 0
452 : ADD 1, 2, 1 ; R1 = left OR right
453 : ST 1, 3(5) ; Store function result into frame return slot
454 : LD 6, 0(5) ; Load return address
455 : LDA 7, 0(6) ; Return to caller
456 : LDA 4, 4(5) ; Compute callee base from caller size
457 : LD 1, 1(5) ; Load parameter 'p' into R1
458 : ST 1, 1(4) ; Store argument 0 in callee frame
459 : LD 1, 2(5) ; Load parameter 'q' into R1
460 : ST 1, 2(4) ; Store argument 1 in callee frame
461 : LDA 6, 465(0) ; Return address
462 : ST 6, 0(4) ; Store return address into callee frame
463 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
464 : LDA 7, 490(0) ; Call LE
465 : LD 1, 3(5) ; Load callee result into R1
466 : LDC 2, 4(0) ; Caller frame size
467 : SUB 5, 5, 2 ; Pop back to caller
468 : LDC 2, 1(0) ; Load 1 into R2
469 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
470 : ST 1, 3(5) ; Store function result into frame return slot
471 : LD 6, 0(5) ; Load return address
472 : LDA 7, 0(6) ; Return to caller
473 : LDA 4, 4(5) ; Compute callee base from caller size
474 : LD 1, 1(5) ; Load parameter 'p' into R1
475 : ST 1, 1(4) ; Store argument 0 in callee frame
476 : LD 1, 2(5) ; Load parameter 'q' into R1
477 : ST 1, 2(4) ; Store argument 1 in callee frame
478 : LDA 6, 482(0) ; Return address
479 : ST 6, 0(4) ; Store return address into callee frame
480 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
481 : LDA 7, 549(0) ; Call LT
482 : LD 1, 3(5) ; Load callee result into R1
483 : LDC 2, 4(0) ; Caller frame size
484 : SUB 5, 5, 2 ; Pop back to caller
485 : LDC 2, 1(0) ; Load 1 into R2
486 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
487 : ST 1, 3(5) ; Store function result into frame return slot
488 : LD 6, 0(5) ; Load return address
489 : LDA 7, 0(6) ; Return to caller
490 : LDA 4, 5(5) ; Compute callee base from caller size
491 : LD 1, 1(5) ; Load parameter 'p' into R1
492 : ST 1, 1(4) ; Store argument 0 in callee frame
493 : LD 1, 2(5) ; Load parameter 'q' into R1
494 : ST 1, 2(4) ; Store argument 1 in callee frame
495 : LDA 6, 499(0) ; Return address
496 : ST 6, 0(4) ; Store return address into callee frame
497 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
498 : LDA 7, 549(0) ; Call LT
499 : LD 1, 3(5) ; Load callee result into R1
500 : LDC 2, 5(0) ; Caller frame size
501 : SUB 5, 5, 2 ; Pop back to caller
502 : ST 1, 4(5) ; Spill left operand at depth 0
503 : LDA 4, 5(5) ; Compute callee base from caller size
504 : LD 1, 1(5) ; Load parameter 'p' into R1
505 : ST 1, 1(4) ; Store argument 0 in callee frame
506 : LD 1, 2(5) ; Load parameter 'q' into R1
507 : ST 1, 2(4) ; Store argument 1 in callee frame
508 : LDA 6, 512(0) ; Return address
509 : ST 6, 0(4) ; Store return address into callee frame
510 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
511 : LDA 7, 537(0) ; Call EQ
512 : LD 1, 3(5) ; Load callee result into R1
513 : LDC 2, 5(0) ; Caller frame size
514 : SUB 5, 5, 2 ; Pop back to caller
515 : LD 2, 4(5) ; Restore left operand from depth 0
516 : ADD 1, 2, 1 ; R1 = left OR right
517 : ST 1, 3(5) ; Store function result into frame return slot
518 : LD 6, 0(5) ; Load return address
519 : LDA 7, 0(6) ; Return to caller
520 : LDA 4, 4(5) ; Compute callee base from caller size
521 : LD 1, 1(5) ; Load parameter 'p' into R1
522 : ST 1, 1(4) ; Store argument 0 in callee frame
523 : LD 1, 2(5) ; Load parameter 'q' into R1
524 : ST 1, 2(4) ; Store argument 1 in callee frame
525 : LDA 6, 529(0) ; Return address
526 : ST 6, 0(4) ; Store return address into callee frame
527 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
528 : LDA 7, 537(0) ; Call EQ
529 : LD 1, 3(5) ; Load callee result into R1
530 : LDC 2, 4(0) ; Caller frame size
531 : SUB 5, 5, 2 ; Pop back to caller
532 : LDC 2, 1(0) ; Load 1 into R2
533 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
534 : ST 1, 3(5) ; Store function result into frame return slot
535 : LD 6, 0(5) ; Load return address
536 : LDA 7, 0(6) ; Return to caller
537 : LD 1, 1(5) ; Load parameter 'p' into R1
538 : ST 1, 4(5) ; Spill left operand at depth 0
539 : LD 1, 2(5) ; Load parameter 'q' into R1
540 : LD 2, 4(5) ; Restore left operand from depth 0
541 : SUB 1, 2, 1 ; left - right for equality check
542 : JEQ 1, 2(7) ; If R1 == 0, jump to true
543 : LDC 1, 0(0) ; false
544 : LDA 7, 1(7) ; skip setting true
545 : LDC 1, 1(0) ; true
546 : ST 1, 3(5) ; Store function result into frame return slot
547 : LD 6, 0(5) ; Load return address
548 : LDA 7, 0(6) ; Return to caller
549 : LD 1, 1(5) ; Load parameter 'p' into R1
550 : ST 1, 4(5) ; Spill left operand at depth 0
551 : LD 1, 2(5) ; Load parameter 'q' into R1
552 : LD 2, 4(5) ; Restore left operand from depth 0
553 : SUB 1, 2, 1 ; left - right for less-than check
554 : JLT 1, 2(7) ; If R1 < 0, jump to true
555 : LDC 1, 0(0) ; false
556 : LDA 7, 1(7) ; skip setting true
557 : LDC 1, 1(0) ; true
558 : ST 1, 3(5) ; Store function result into frame return slot
559 : LD 6, 0(5) ; Load return address
560 : LDA 7, 0(6) ; Return to caller
561 : LDC 1, 2147483647(0) ; Load integer-literal into R1
562 : SUB 1, 0, 1 ; Negate value in R1
563 : ST 1, 2(5) ; Spill left operand at depth 0
564 : LDC 1, 1(0) ; Load integer-literal into R1
565 : LD 2, 2(5) ; Restore left operand from depth 0
566 : SUB 1, 2, 1 ; R1 = left - right
567 : ST 1, 1(5) ; Store function result into frame return slot
568 : LD 6, 0(5) ; Load return address
569 : LDA 7, 0(6) ; Return to caller
570 : LDC 1, 2147483647(0) ; Load integer-literal into R1
571 : ST 1, 1(5) ; Store function result into frame return slot
572 : LD 6, 0(5) ; Load return address
573 : LDA 7, 0(6) ; Return to caller
