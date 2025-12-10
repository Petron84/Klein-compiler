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
12 : LD 1, 1(5) ; Load parameter 'x' into R1
13 : LDA 4, 4(5) ; Compute callee base
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 515(0) ; Call circularPrimesTo
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 4(0) ; Caller frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s return slot
24 : LD 1, 2(5) ; Load main return value into R1
25 : LD 6, 0(5) ; Load main return address
26 : LDA 7, 0(6) ; Return from main
27 : LD 1, 1(5) ; Load parameter 'num' into R1
28 : ST 1, 4(5) ; Spill left operand at depth 0
29 : LD 1, 2(5) ; Load parameter 'den' into R1
30 : LD 2, 4(5) ; Restore left operand from depth 0
31 : SUB 1, 2, 1 ; left - right for less-than check
32 : JLT 1, 2(7) ; If R1 < 0, jump to true
33 : LDC 1, 0(0) ; false
34 : LDA 7, 1(7) ; skip setting true
35 : LDC 1, 1(0) ; true
36 : JEQ 1, 39(0) ; If condition is false, jump to ELSE
37 : LD 1, 1(5) ; Load parameter 'num' into R1
38 : LDA 7, 57(0) ; Skip ELSE block
39 : LD 1, 1(5) ; Load parameter 'num' into R1
40 : ST 1, 4(5) ; Spill left operand at depth 0
41 : LD 1, 2(5) ; Load parameter 'den' into R1
42 : LD 2, 4(5) ; Restore left operand from depth 0
43 : SUB 1, 2, 1 ; R1 = left - right
44 : LDA 4, 5(5) ; Compute callee base
45 : ST 1, 1(4) ; Store argument 0 in callee frame
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : LDA 4, 5(5) ; Compute callee base
48 : ST 1, 2(4) ; Store argument 1 in callee frame
49 : LDA 4, 5(5) ; Recompute callee base from callee size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return address into callee frame
52 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
53 : LDA 7, 27(0) ; Call mod
54 : LD 1, 3(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Caller frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 3(5) ; Store function result into frame return slot
58 : LD 6, 0(5) ; Load return address
59 : LDA 7, 0(6) ; Return to caller
60 : LDA 4, 5(5) ; Compute callee base
61 : ST 1, 1(4) ; Store argument 0 in callee frame
62 : LDA 4, 5(5) ; Compute callee base
63 : ST 1, 2(4) ; Store argument 1 in callee frame
64 : LDA 4, 5(5) ; Recompute callee base from callee size
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return address into callee frame
67 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
68 : LDA 7, 27(0) ; Call mod
69 : LD 1, 3(5) ; Load callee result into R1
70 : LDC 2, 5(0) ; Caller frame size
71 : SUB 5, 5, 2 ; Pop back to caller
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LDC 1, 0(0) ; Load integer-literal into R1
74 : LD 2, 4(5) ; Restore left operand from depth 0
75 : SUB 1, 2, 1 ; left - right for equality check
76 : JEQ 1, 2(7) ; If R1 == 0, jump to true
77 : LDC 1, 0(0) ; false
78 : LDA 7, 1(7) ; skip setting true
79 : LDC 1, 1(0) ; true
80 : ST 1, 3(5) ; Store function result into frame return slot
81 : LD 6, 0(5) ; Load return address
82 : LDA 7, 0(6) ; Return to caller
83 : LD 1, 1(5) ; Load parameter 'i' into R1
84 : ST 1, 4(5) ; Spill left operand at depth 0
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : LD 2, 4(5) ; Restore left operand from depth 0
87 : SUB 1, 2, 1 ; left - right for less-than check
88 : JLT 1, 2(7) ; If R1 < 0, jump to true
89 : LDC 1, 0(0) ; false
90 : LDA 7, 1(7) ; skip setting true
91 : LDC 1, 1(0) ; true
92 : JEQ 1, 127(0) ; If condition is false, jump to ELSE
93 : LDA 4, 5(5) ; Compute callee base
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LDA 4, 5(5) ; Compute callee base
96 : ST 1, 2(4) ; Store argument 1 in callee frame
97 : LDA 4, 5(5) ; Recompute callee base from callee size
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return address into callee frame
100 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
101 : LDA 7, 60(0) ; Call divides
102 : LD 1, 3(5) ; Load callee result into R1
103 : LDC 2, 5(0) ; Caller frame size
104 : SUB 5, 5, 2 ; Pop back to caller
105 : ST 1, 4(5) ; Spill left operand at depth 0
106 : LD 1, 1(5) ; Load parameter 'i' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 1
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 1
110 : ADD 1, 2, 1 ; R1 = left + right
111 : LDA 4, 6(5) ; Compute callee base
112 : ST 1, 1(4) ; Store argument 0 in callee frame
113 : LD 1, 2(5) ; Load parameter 'n' into R1
114 : LDA 4, 6(5) ; Compute callee base
115 : ST 1, 2(4) ; Store argument 1 in callee frame
116 : LDA 4, 6(5) ; Recompute callee base from callee size
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return address into callee frame
119 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
120 : LDA 7, 83(0) ; Call hasDivisorFrom
121 : LD 1, 3(5) ; Load callee result into R1
122 : LDC 2, 6(0) ; Caller frame size
123 : SUB 5, 5, 2 ; Pop back to caller
124 : LD 2, 4(5) ; Restore left operand from depth 0
125 : ADD 1, 2, 1 ; R1 = left OR right
126 : LDA 7, 128(0) ; Skip ELSE block
127 : LDC 1, 0(0) ; Load boolean-literal into R1
128 : ST 1, 3(5) ; Store function result into frame return slot
129 : LD 6, 0(5) ; Load return address
130 : LDA 7, 0(6) ; Return to caller
131 : LDC 1, 2(0) ; Load integer-literal into R1
132 : LDA 4, 6(5) ; Compute callee base
133 : ST 1, 1(4) ; Store argument 0 in callee frame
134 : LD 1, 2(5) ; Load parameter 'n' into R1
135 : LDA 4, 6(5) ; Compute callee base
136 : ST 1, 2(4) ; Store argument 1 in callee frame
137 : LDA 4, 6(5) ; Recompute callee base from callee size
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return address into callee frame
140 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
141 : LDA 7, 83(0) ; Call hasDivisorFrom
142 : LD 1, 3(5) ; Load callee result into R1
143 : LDC 2, 6(0) ; Caller frame size
144 : SUB 5, 5, 2 ; Pop back to caller
145 : LDC 2, 1(0) ; Load 1 into R2
146 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
147 : ST 1, 2(5) ; Store function result into frame return slot
148 : LD 6, 0(5) ; Load return address
149 : LDA 7, 0(6) ; Return to caller
150 : LD 1, 1(5) ; Load parameter 'x' into R1
151 : ST 1, 4(5) ; Spill left operand at depth 0
152 : LDC 1, 10(0) ; Load integer-literal into R1
153 : LD 2, 4(5) ; Restore left operand from depth 0
154 : DIV 1, 2, 1 ; R1 = left / right
155 : ST 1, 4(5) ; Spill left operand at depth 0
156 : LDC 1, 0(0) ; Load integer-literal into R1
157 : LD 2, 4(5) ; Restore left operand from depth 0
158 : SUB 1, 2, 1 ; left - right for equality check
159 : JEQ 1, 2(7) ; If R1 == 0, jump to true
160 : LDC 1, 0(0) ; false
161 : LDA 7, 1(7) ; skip setting true
162 : LDC 1, 1(0) ; true
163 : JEQ 1, 166(0) ; If condition is false, jump to ELSE
164 : LD 1, 2(5) ; Load parameter 'y' into R1
165 : LDA 7, 188(0) ; Skip ELSE block
166 : LD 1, 1(5) ; Load parameter 'x' into R1
167 : ST 1, 4(5) ; Spill left operand at depth 0
168 : LDC 1, 10(0) ; Load integer-literal into R1
169 : LD 2, 4(5) ; Restore left operand from depth 0
170 : DIV 1, 2, 1 ; R1 = left / right
171 : LDA 4, 5(5) ; Compute callee base
172 : ST 1, 1(4) ; Store argument 0 in callee frame
173 : LD 1, 2(5) ; Load parameter 'y' into R1
174 : ST 1, 4(5) ; Spill left operand at depth 0
175 : LDC 1, 1(0) ; Load integer-literal into R1
176 : LD 2, 4(5) ; Restore left operand from depth 0
177 : ADD 1, 2, 1 ; R1 = left + right
178 : LDA 4, 5(5) ; Compute callee base
179 : ST 1, 2(4) ; Store argument 1 in callee frame
180 : LDA 4, 5(5) ; Recompute callee base from callee size
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return address into callee frame
183 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
184 : LDA 7, 150(0) ; Call log10Helper
185 : LD 1, 3(5) ; Load callee result into R1
186 : LDC 2, 5(0) ; Caller frame size
187 : SUB 5, 5, 2 ; Pop back to caller
188 : ST 1, 3(5) ; Store function result into frame return slot
189 : LD 6, 0(5) ; Load return address
190 : LDA 7, 0(6) ; Return to caller
191 : LD 1, 1(5) ; Load parameter 'x' into R1
192 : LDA 4, 5(5) ; Compute callee base
193 : ST 1, 1(4) ; Store argument 0 in callee frame
194 : LDC 1, 0(0) ; Load integer-literal into R1
195 : LDA 4, 5(5) ; Compute callee base
196 : ST 1, 2(4) ; Store argument 1 in callee frame
197 : LDA 4, 5(5) ; Recompute callee base from callee size
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return address into callee frame
200 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
201 : LDA 7, 150(0) ; Call log10Helper
202 : LD 1, 3(5) ; Load callee result into R1
203 : LDC 2, 5(0) ; Caller frame size
204 : SUB 5, 5, 2 ; Pop back to caller
205 : ST 1, 2(5) ; Store function result into frame return slot
206 : LD 6, 0(5) ; Load return address
207 : LDA 7, 0(6) ; Return to caller
208 : LD 1, 2(5) ; Load parameter 'power' into R1
209 : ST 1, 5(5) ; Spill left operand at depth 0
210 : LDC 1, 0(0) ; Load integer-literal into R1
211 : LD 2, 5(5) ; Restore left operand from depth 0
212 : SUB 1, 2, 1 ; left - right for equality check
213 : JEQ 1, 2(7) ; If R1 == 0, jump to true
214 : LDC 1, 0(0) ; false
215 : LDA 7, 1(7) ; skip setting true
216 : LDC 1, 1(0) ; true
217 : JEQ 1, 220(0) ; If condition is false, jump to ELSE
218 : LDC 1, 1(0) ; Load integer-literal into R1
219 : LDA 7, 257(0) ; Skip ELSE block
220 : LD 1, 2(5) ; Load parameter 'power' into R1
221 : ST 1, 5(5) ; Spill left operand at depth 0
222 : LDC 1, 1(0) ; Load integer-literal into R1
223 : LD 2, 5(5) ; Restore left operand from depth 0
224 : SUB 1, 2, 1 ; left - right for equality check
225 : JEQ 1, 2(7) ; If R1 == 0, jump to true
226 : LDC 1, 0(0) ; false
227 : LDA 7, 1(7) ; skip setting true
228 : LDC 1, 1(0) ; true
229 : JEQ 1, 232(0) ; If condition is false, jump to ELSE
230 : LD 1, 3(5) ; Load parameter 'total' into R1
231 : LDA 7, 257(0) ; Skip ELSE block
232 : LD 1, 1(5) ; Load parameter 'base' into R1
233 : LDA 4, 6(5) ; Compute callee base
234 : ST 1, 1(4) ; Store argument 0 in callee frame
235 : LD 1, 2(5) ; Load parameter 'power' into R1
236 : ST 1, 5(5) ; Spill left operand at depth 0
237 : LDC 1, 1(0) ; Load integer-literal into R1
238 : LD 2, 5(5) ; Restore left operand from depth 0
239 : SUB 1, 2, 1 ; R1 = left - right
240 : LDA 4, 6(5) ; Compute callee base
241 : ST 1, 2(4) ; Store argument 1 in callee frame
242 : LD 1, 1(5) ; Load parameter 'base' into R1
243 : ST 1, 5(5) ; Spill left operand at depth 0
244 : LD 1, 3(5) ; Load parameter 'total' into R1
245 : LD 2, 5(5) ; Restore left operand from depth 0
246 : MUL 1, 2, 1 ; R1 = left * right
247 : LDA 4, 6(5) ; Compute callee base
248 : ST 1, 3(4) ; Store argument 2 in callee frame
249 : LDA 4, 6(5) ; Recompute callee base from callee size
250 : LDA 6, 254(0) ; Return address
251 : ST 6, 0(4) ; Store return address into callee frame
252 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
253 : LDA 7, 208(0) ; Call powHelper
254 : LD 1, 4(5) ; Load callee result into R1
255 : LDC 2, 6(0) ; Caller frame size
256 : SUB 5, 5, 2 ; Pop back to caller
257 : ST 1, 4(5) ; Store function result into frame return slot
258 : LD 6, 0(5) ; Load return address
259 : LDA 7, 0(6) ; Return to caller
260 : LDA 4, 6(5) ; Compute callee base
261 : ST 1, 1(4) ; Store argument 0 in callee frame
262 : LDA 4, 6(5) ; Compute callee base
263 : ST 1, 2(4) ; Store argument 1 in callee frame
264 : LDA 4, 6(5) ; Compute callee base
265 : ST 1, 3(4) ; Store argument 2 in callee frame
266 : LDA 4, 6(5) ; Recompute callee base from callee size
267 : LDA 6, 271(0) ; Return address
268 : ST 6, 0(4) ; Store return address into callee frame
269 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
270 : LDA 7, 208(0) ; Call powHelper
271 : LD 1, 4(5) ; Load callee result into R1
272 : LDC 2, 6(0) ; Caller frame size
273 : SUB 5, 5, 2 ; Pop back to caller
274 : ST 1, 3(5) ; Store function result into frame return slot
275 : LD 6, 0(5) ; Load return address
276 : LDA 7, 0(6) ; Return to caller
277 : LD 1, 1(5) ; Load parameter 'x' into R1
278 : ST 1, 3(5) ; Spill left operand at depth 0
279 : LDC 1, 10(0) ; Load integer-literal into R1
280 : LD 2, 3(5) ; Restore left operand from depth 0
281 : DIV 1, 2, 1 ; R1 = left / right
282 : ST 1, 3(5) ; Spill left operand at depth 0
283 : LDA 4, 5(5) ; Compute callee base
284 : ST 1, 1(4) ; Store argument 0 in callee frame
285 : LDC 1, 10(0) ; Load integer-literal into R1
286 : LDA 4, 5(5) ; Compute callee base
287 : ST 1, 2(4) ; Store argument 1 in callee frame
288 : LDA 4, 5(5) ; Recompute callee base from callee size
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return address into callee frame
291 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
292 : LDA 7, 27(0) ; Call mod
293 : LD 1, 3(5) ; Load callee result into R1
294 : LDC 2, 5(0) ; Caller frame size
295 : SUB 5, 5, 2 ; Pop back to caller
296 : ST 1, 4(5) ; Spill left operand at depth 1
297 : LDC 1, 10(0) ; Load integer-literal into R1
298 : LDA 4, 4(5) ; Compute callee base
299 : ST 1, 1(4) ; Store argument 0 in callee frame
300 : LD 1, 1(5) ; Load parameter 'x' into R1
301 : LDA 4, 3(5) ; Compute callee base
302 : ST 1, 1(4) ; Store argument 0 in callee frame
303 : LDA 4, 3(5) ; Recompute callee base from callee size
304 : LDA 6, 308(0) ; Return address
305 : ST 6, 0(4) ; Store return address into callee frame
306 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
307 : LDA 7, 191(0) ; Call log10
308 : LD 1, 2(5) ; Load callee result into R1
309 : LDC 2, 3(0) ; Caller frame size
310 : SUB 5, 5, 2 ; Pop back to caller
311 : LDA 4, 4(5) ; Compute callee base
312 : ST 1, 2(4) ; Store argument 1 in callee frame
313 : LDA 4, 4(5) ; Recompute callee base from callee size
314 : LDA 6, 318(0) ; Return address
315 : ST 6, 0(4) ; Store return address into callee frame
316 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
317 : LDA 7, 260(0) ; Call pow
318 : LD 1, 3(5) ; Load callee result into R1
319 : LDC 2, 4(0) ; Caller frame size
320 : SUB 5, 5, 2 ; Pop back to caller
321 : LD 2, 4(5) ; Restore left operand from depth 1
322 : MUL 1, 2, 1 ; R1 = left * right
323 : LD 2, 3(5) ; Restore left operand from depth 0
324 : ADD 1, 2, 1 ; R1 = left + right
325 : ST 1, 2(5) ; Store function result into frame return slot
326 : LD 6, 0(5) ; Load return address
327 : LDA 7, 0(6) ; Return to caller
328 : LD 1, 1(5) ; Load parameter 'x' into R1
329 : LDA 4, 3(5) ; Recompute callee base from caller size
330 : LDA 6, 334(0) ; Return address
331 : ST 6, 0(4) ; Store return address in callee frame
332 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
333 : LDA 7, 9(0) ; Call built-in print
334 : LDC 2, 3(0) ; Caller frame size
335 : SUB 5, 5, 2 ; Pop back to caller
336 : LDC 1, 1(0) ; Load boolean-literal into R1
337 : ST 1, 2(5) ; Store function result into frame return slot
338 : LD 6, 0(5) ; Load return address
339 : LDA 7, 0(6) ; Return to caller
340 : LD 1, 2(5) ; Load parameter 'turns' into R1
341 : ST 1, 4(5) ; Spill left operand at depth 0
342 : LDC 1, 0(0) ; Load integer-literal into R1
343 : LD 2, 4(5) ; Restore left operand from depth 0
344 : SUB 1, 2, 1 ; left - right for equality check
345 : JEQ 1, 2(7) ; If R1 == 0, jump to true
346 : LDC 1, 0(0) ; false
347 : LDA 7, 1(7) ; skip setting true
348 : LDC 1, 1(0) ; true
349 : JEQ 1, 352(0) ; If condition is false, jump to ELSE
350 : LDC 1, 1(0) ; Load boolean-literal into R1
351 : LDA 7, 393(0) ; Skip ELSE block
352 : LDA 4, 3(5) ; Compute callee base
353 : ST 1, 1(4) ; Store argument 0 in callee frame
354 : LDA 4, 3(5) ; Recompute callee base from callee size
355 : LDA 6, 359(0) ; Return address
356 : ST 6, 0(4) ; Store return address into callee frame
357 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
358 : LDA 7, 131(0) ; Call isPrime
359 : LD 1, 2(5) ; Load callee result into R1
360 : LDC 2, 3(0) ; Caller frame size
361 : SUB 5, 5, 2 ; Pop back to caller
362 : ST 1, 4(5) ; Spill left operand at depth 0
363 : LD 1, 1(5) ; Load parameter 'x' into R1
364 : LDA 4, 5(5) ; Compute callee base
365 : ST 1, 1(4) ; Store argument 0 in callee frame
366 : LDA 4, 5(5) ; Recompute callee base from callee size
367 : LDA 6, 371(0) ; Return address
368 : ST 6, 0(4) ; Store return address into callee frame
369 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
370 : LDA 7, 277(0) ; Call rotate
371 : LD 1, 2(5) ; Load callee result into R1
372 : LDC 2, 5(0) ; Caller frame size
373 : SUB 5, 5, 2 ; Pop back to caller
374 : LDA 4, 6(5) ; Compute callee base
375 : ST 1, 1(4) ; Store argument 0 in callee frame
376 : LD 1, 2(5) ; Load parameter 'turns' into R1
377 : ST 1, 5(5) ; Spill left operand at depth 1
378 : LDC 1, 1(0) ; Load integer-literal into R1
379 : LD 2, 5(5) ; Restore left operand from depth 1
380 : SUB 1, 2, 1 ; R1 = left - right
381 : LDA 4, 6(5) ; Compute callee base
382 : ST 1, 2(4) ; Store argument 1 in callee frame
383 : LDA 4, 6(5) ; Recompute callee base from callee size
384 : LDA 6, 388(0) ; Return address
385 : ST 6, 0(4) ; Store return address into callee frame
386 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
387 : LDA 7, 340(0) ; Call isCircularPrimeHelper
388 : LD 1, 3(5) ; Load callee result into R1
389 : LDC 2, 6(0) ; Caller frame size
390 : SUB 5, 5, 2 ; Pop back to caller
391 : LD 2, 4(5) ; Restore left operand from depth 0
392 : MUL 1, 2, 1 ; R1 = left AND right
393 : ST 1, 3(5) ; Store function result into frame return slot
394 : LD 6, 0(5) ; Load return address
395 : LDA 7, 0(6) ; Return to caller
396 : LD 1, 1(5) ; Load parameter 'x' into R1
397 : LDA 4, 6(5) ; Compute callee base
398 : ST 1, 1(4) ; Store argument 0 in callee frame
399 : LD 1, 1(5) ; Load parameter 'x' into R1
400 : LDA 4, 3(5) ; Compute callee base
401 : ST 1, 1(4) ; Store argument 0 in callee frame
402 : LDA 4, 3(5) ; Recompute callee base from callee size
403 : LDA 6, 407(0) ; Return address
404 : ST 6, 0(4) ; Store return address into callee frame
405 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
406 : LDA 7, 191(0) ; Call log10
407 : LD 1, 2(5) ; Load callee result into R1
408 : LDC 2, 3(0) ; Caller frame size
409 : SUB 5, 5, 2 ; Pop back to caller
410 : ST 1, 4(5) ; Spill left operand at depth 0
411 : LDC 1, 1(0) ; Load integer-literal into R1
412 : LD 2, 4(5) ; Restore left operand from depth 0
413 : ADD 1, 2, 1 ; R1 = left + right
414 : LDA 4, 6(5) ; Compute callee base
415 : ST 1, 2(4) ; Store argument 1 in callee frame
416 : LDA 4, 6(5) ; Recompute callee base from callee size
417 : LDA 6, 421(0) ; Return address
418 : ST 6, 0(4) ; Store return address into callee frame
419 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
420 : LDA 7, 340(0) ; Call isCircularPrimeHelper
421 : LD 1, 3(5) ; Load callee result into R1
422 : LDC 2, 6(0) ; Caller frame size
423 : SUB 5, 5, 2 ; Pop back to caller
424 : JEQ 1, 437(0) ; If condition is false, jump to ELSE
425 : LD 1, 1(5) ; Load parameter 'x' into R1
426 : LDA 4, 3(5) ; Compute callee base
427 : ST 1, 1(4) ; Store argument 0 in callee frame
428 : LDA 4, 3(5) ; Recompute callee base from callee size
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return address into callee frame
431 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
432 : LDA 7, 328(0) ; Call report
433 : LD 1, 2(5) ; Load callee result into R1
434 : LDC 2, 3(0) ; Caller frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : LDA 7, 438(0) ; Skip ELSE block
437 : LDC 1, 0(0) ; Load boolean-literal into R1
438 : ST 1, 2(5) ; Store function result into frame return slot
439 : LD 6, 0(5) ; Load return address
440 : LDA 7, 0(6) ; Return to caller
441 : LD 1, 2(5) ; Load parameter 'x' into R1
442 : ST 1, 5(5) ; Spill left operand at depth 0
443 : LD 1, 1(5) ; Load parameter 'top' into R1
444 : LD 2, 5(5) ; Restore left operand from depth 0
445 : SUB 1, 2, 1 ; left - right for less-than check
446 : JLT 1, 2(7) ; If R1 < 0, jump to true
447 : LDC 1, 0(0) ; false
448 : LDA 7, 1(7) ; skip setting true
449 : LDC 1, 1(0) ; true
450 : JEQ 1, 511(0) ; If condition is false, jump to ELSE
451 : LD 1, 1(5) ; Load parameter 'x' into R1
452 : LDA 4, 4(5) ; Compute callee base
453 : ST 1, 1(4) ; Store argument 0 in callee frame
454 : LDA 4, 4(5) ; Recompute callee base from callee size
455 : LDA 6, 459(0) ; Return address
456 : ST 6, 0(4) ; Store return address into callee frame
457 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
458 : LDA 7, 396(0) ; Call isCircularPrime
459 : LD 1, 2(5) ; Load callee result into R1
460 : LDC 2, 4(0) ; Caller frame size
461 : SUB 5, 5, 2 ; Pop back to caller
462 : JEQ 1, 489(0) ; If condition is false, jump to ELSE
463 : LD 1, 1(5) ; Load parameter 'top' into R1
464 : LDA 4, 6(5) ; Compute callee base
465 : ST 1, 1(4) ; Store argument 0 in callee frame
466 : LD 1, 2(5) ; Load parameter 'x' into R1
467 : ST 1, 5(5) ; Spill left operand at depth 0
468 : LDC 1, 1(0) ; Load integer-literal into R1
469 : LD 2, 5(5) ; Restore left operand from depth 0
470 : ADD 1, 2, 1 ; R1 = left + right
471 : LDA 4, 6(5) ; Compute callee base
472 : ST 1, 2(4) ; Store argument 1 in callee frame
473 : LD 1, 3(5) ; Load parameter 'count' into R1
474 : ST 1, 5(5) ; Spill left operand at depth 0
475 : LDC 1, 1(0) ; Load integer-literal into R1
476 : LD 2, 5(5) ; Restore left operand from depth 0
477 : ADD 1, 2, 1 ; R1 = left + right
478 : LDA 4, 6(5) ; Compute callee base
479 : ST 1, 3(4) ; Store argument 2 in callee frame
480 : LDA 4, 6(5) ; Recompute callee base from callee size
481 : LDA 6, 485(0) ; Return address
482 : ST 6, 0(4) ; Store return address into callee frame
483 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
484 : LDA 7, 441(0) ; Call circularPrimesToHelper
485 : LD 1, 4(5) ; Load callee result into R1
486 : LDC 2, 6(0) ; Caller frame size
487 : SUB 5, 5, 2 ; Pop back to caller
488 : LDA 7, 510(0) ; Skip ELSE block
489 : LD 1, 1(5) ; Load parameter 'top' into R1
490 : LDA 4, 6(5) ; Compute callee base
491 : ST 1, 1(4) ; Store argument 0 in callee frame
492 : LD 1, 2(5) ; Load parameter 'x' into R1
493 : ST 1, 5(5) ; Spill left operand at depth 0
494 : LDC 1, 1(0) ; Load integer-literal into R1
495 : LD 2, 5(5) ; Restore left operand from depth 0
496 : ADD 1, 2, 1 ; R1 = left + right
497 : LDA 4, 6(5) ; Compute callee base
498 : ST 1, 2(4) ; Store argument 1 in callee frame
499 : LD 1, 3(5) ; Load parameter 'count' into R1
500 : LDA 4, 6(5) ; Compute callee base
501 : ST 1, 3(4) ; Store argument 2 in callee frame
502 : LDA 4, 6(5) ; Recompute callee base from callee size
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return address into callee frame
505 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
506 : LDA 7, 441(0) ; Call circularPrimesToHelper
507 : LD 1, 4(5) ; Load callee result into R1
508 : LDC 2, 6(0) ; Caller frame size
509 : SUB 5, 5, 2 ; Pop back to caller
510 : LDA 7, 512(0) ; Skip ELSE block
511 : LD 1, 3(5) ; Load parameter 'count' into R1
512 : ST 1, 4(5) ; Store function result into frame return slot
513 : LD 6, 0(5) ; Load return address
514 : LDA 7, 0(6) ; Return to caller
515 : LD 1, 2(5) ; Load parameter 'x' into R1
516 : ST 1, 5(5) ; Spill left operand at depth 0
517 : LDC 1, 1(0) ; Load integer-literal into R1
518 : LD 2, 5(5) ; Restore left operand from depth 0
519 : ADD 1, 2, 1 ; R1 = left + right
520 : LDA 4, 6(5) ; Compute callee base
521 : ST 1, 1(4) ; Store argument 0 in callee frame
522 : LDC 1, 2(0) ; Load integer-literal into R1
523 : LDA 4, 6(5) ; Compute callee base
524 : ST 1, 2(4) ; Store argument 1 in callee frame
525 : LDC 1, 0(0) ; Load integer-literal into R1
526 : LDA 4, 6(5) ; Compute callee base
527 : ST 1, 3(4) ; Store argument 2 in callee frame
528 : LDA 4, 6(5) ; Recompute callee base from callee size
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return address into callee frame
531 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
532 : LDA 7, 441(0) ; Call circularPrimesToHelper
533 : LD 1, 4(5) ; Load callee result into R1
534 : LDC 2, 6(0) ; Caller frame size
535 : SUB 5, 5, 2 ; Pop back to caller
536 : ST 1, 2(5) ; Store function result into frame return slot
537 : LD 6, 0(5) ; Load return address
538 : LDA 7, 0(6) ; Return to caller
