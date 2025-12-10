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
13 : LD 1, 1(5) ; Load parameter 'x' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return address into callee frame
17 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
18 : LDA 7, 483(0) ; Call circularPrimesTo
19 : LD 1, 2(5) ; Load callee result into R1
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : ST 1, 2(5) ; Store result into caller’s return slot
23 : LD 1, 2(5) ; Load main return value into R1
24 : LD 6, 0(5) ; Load main return address
25 : LDA 7, 0(6) ; Return from main
26 : LD 1, 1(5) ; Load parameter 'num' into R1
27 : ST 1, 4(5) ; Spill left operand at depth 0
28 : LD 1, 2(5) ; Load parameter 'den' into R1
29 : LD 2, 4(5) ; Restore left operand from depth 0
30 : SUB 1, 2, 1 ; left - right for less-than check
31 : JLT 1, 2(7) ; If R1 < 0, jump to true
32 : LDC 1, 0(0) ; false
33 : LDA 7, 1(7) ; skip setting true
34 : LDC 1, 1(0) ; true
35 : JEQ 1, 38(0) ; If condition is false, jump to ELSE
36 : LD 1, 1(5) ; Load parameter 'num' into R1
37 : LDA 7, 54(0) ; Skip ELSE block
38 : LDA 4, 5(5) ; Compute callee base from caller size
39 : LD 1, 1(5) ; Load parameter 'num' into R1
40 : ST 1, 4(5) ; Spill left operand at depth 0
41 : LD 1, 2(5) ; Load parameter 'den' into R1
42 : LD 2, 4(5) ; Restore left operand from depth 0
43 : SUB 1, 2, 1 ; R1 = left - right
44 : ST 1, 1(4) ; Store argument 0 in callee frame
45 : LD 1, 2(5) ; Load parameter 'den' into R1
46 : ST 1, 2(4) ; Store argument 1 in callee frame
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address into callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 26(0) ; Call mod
51 : LD 1, 3(5) ; Load callee result into R1
52 : LDC 2, 5(0) ; Caller frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : ST 1, 3(5) ; Store function result into frame return slot
55 : LD 6, 0(5) ; Load return address
56 : LDA 7, 0(6) ; Return to caller
57 : LDA 4, 5(5) ; Compute callee base from caller size
58 : LD 1, 2(5) ; Load parameter 'b' into R1
59 : ST 1, 1(4) ; Store argument 0 in callee frame
60 : LD 1, 1(5) ; Load parameter 'a' into R1
61 : ST 1, 2(4) ; Store argument 1 in callee frame
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return address into callee frame
64 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
65 : LDA 7, 26(0) ; Call mod
66 : LD 1, 3(5) ; Load callee result into R1
67 : LDC 2, 5(0) ; Caller frame size
68 : SUB 5, 5, 2 ; Pop back to caller
69 : ST 1, 4(5) ; Spill left operand at depth 0
70 : LDC 1, 0(0) ; Load integer-literal into R1
71 : LD 2, 4(5) ; Restore left operand from depth 0
72 : SUB 1, 2, 1 ; left - right for equality check
73 : JEQ 1, 2(7) ; If R1 == 0, jump to true
74 : LDC 1, 0(0) ; false
75 : LDA 7, 1(7) ; skip setting true
76 : LDC 1, 1(0) ; true
77 : ST 1, 3(5) ; Store function result into frame return slot
78 : LD 6, 0(5) ; Load return address
79 : LDA 7, 0(6) ; Return to caller
80 : LD 1, 1(5) ; Load parameter 'i' into R1
81 : ST 1, 4(5) ; Spill left operand at depth 0
82 : LD 1, 2(5) ; Load parameter 'n' into R1
83 : LD 2, 4(5) ; Restore left operand from depth 0
84 : SUB 1, 2, 1 ; left - right for less-than check
85 : JLT 1, 2(7) ; If R1 < 0, jump to true
86 : LDC 1, 0(0) ; false
87 : LDA 7, 1(7) ; skip setting true
88 : LDC 1, 1(0) ; true
89 : JEQ 1, 122(0) ; If condition is false, jump to ELSE
90 : LDA 4, 6(5) ; Compute callee base from caller size
91 : LD 1, 1(5) ; Load parameter 'i' into R1
92 : ST 1, 1(4) ; Store argument 0 in callee frame
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : ST 1, 2(4) ; Store argument 1 in callee frame
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return address into callee frame
97 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
98 : LDA 7, 57(0) ; Call divides
99 : LD 1, 3(5) ; Load callee result into R1
100 : LDC 2, 6(0) ; Caller frame size
101 : SUB 5, 5, 2 ; Pop back to caller
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LDA 4, 6(5) ; Compute callee base from caller size
104 : LD 1, 1(5) ; Load parameter 'i' into R1
105 : ST 1, 5(5) ; Spill left operand at depth 1
106 : LDC 1, 1(0) ; Load integer-literal into R1
107 : LD 2, 5(5) ; Restore left operand from depth 1
108 : ADD 1, 2, 1 ; R1 = left + right
109 : ST 1, 1(4) ; Store argument 0 in callee frame
110 : LD 1, 2(5) ; Load parameter 'n' into R1
111 : ST 1, 2(4) ; Store argument 1 in callee frame
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return address into callee frame
114 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
115 : LDA 7, 80(0) ; Call hasDivisorFrom
116 : LD 1, 3(5) ; Load callee result into R1
117 : LDC 2, 6(0) ; Caller frame size
118 : SUB 5, 5, 2 ; Pop back to caller
119 : LD 2, 4(5) ; Restore left operand from depth 0
120 : ADD 1, 2, 1 ; R1 = left OR right
121 : LDA 7, 123(0) ; Skip ELSE block
122 : LDC 1, 0(0) ; Load boolean-literal into R1
123 : ST 1, 3(5) ; Store function result into frame return slot
124 : LD 6, 0(5) ; Load return address
125 : LDA 7, 0(6) ; Return to caller
126 : LDA 4, 3(5) ; Compute callee base from caller size
127 : LDC 1, 2(0) ; Load integer-literal into R1
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : ST 1, 2(4) ; Store argument 1 in callee frame
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return address into callee frame
133 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
134 : LDA 7, 80(0) ; Call hasDivisorFrom
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 3(0) ; Caller frame size
137 : SUB 5, 5, 2 ; Pop back to caller
138 : LDC 2, 1(0) ; Load 1 into R2
139 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
140 : ST 1, 2(5) ; Store function result into frame return slot
141 : LD 6, 0(5) ; Load return address
142 : LDA 7, 0(6) ; Return to caller
143 : LD 1, 1(5) ; Load parameter 'x' into R1
144 : ST 1, 4(5) ; Spill left operand at depth 0
145 : LDC 1, 10(0) ; Load integer-literal into R1
146 : LD 2, 4(5) ; Restore left operand from depth 0
147 : DIV 1, 2, 1 ; R1 = left / right
148 : ST 1, 4(5) ; Spill left operand at depth 0
149 : LDC 1, 0(0) ; Load integer-literal into R1
150 : LD 2, 4(5) ; Restore left operand from depth 0
151 : SUB 1, 2, 1 ; left - right for equality check
152 : JEQ 1, 2(7) ; If R1 == 0, jump to true
153 : LDC 1, 0(0) ; false
154 : LDA 7, 1(7) ; skip setting true
155 : LDC 1, 1(0) ; true
156 : JEQ 1, 159(0) ; If condition is false, jump to ELSE
157 : LD 1, 2(5) ; Load parameter 'y' into R1
158 : LDA 7, 179(0) ; Skip ELSE block
159 : LDA 4, 5(5) ; Compute callee base from caller size
160 : LD 1, 1(5) ; Load parameter 'x' into R1
161 : ST 1, 4(5) ; Spill left operand at depth 0
162 : LDC 1, 10(0) ; Load integer-literal into R1
163 : LD 2, 4(5) ; Restore left operand from depth 0
164 : DIV 1, 2, 1 ; R1 = left / right
165 : ST 1, 1(4) ; Store argument 0 in callee frame
166 : LD 1, 2(5) ; Load parameter 'y' into R1
167 : ST 1, 4(5) ; Spill left operand at depth 0
168 : LDC 1, 1(0) ; Load integer-literal into R1
169 : LD 2, 4(5) ; Restore left operand from depth 0
170 : ADD 1, 2, 1 ; R1 = left + right
171 : ST 1, 2(4) ; Store argument 1 in callee frame
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return address into callee frame
174 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
175 : LDA 7, 143(0) ; Call log10Helper
176 : LD 1, 3(5) ; Load callee result into R1
177 : LDC 2, 5(0) ; Caller frame size
178 : SUB 5, 5, 2 ; Pop back to caller
179 : ST 1, 3(5) ; Store function result into frame return slot
180 : LD 6, 0(5) ; Load return address
181 : LDA 7, 0(6) ; Return to caller
182 : LDA 4, 3(5) ; Compute callee base from caller size
183 : LD 1, 1(5) ; Load parameter 'x' into R1
184 : ST 1, 1(4) ; Store argument 0 in callee frame
185 : LDC 1, 0(0) ; Load integer-literal into R1
186 : ST 1, 2(4) ; Store argument 1 in callee frame
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return address into callee frame
189 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
190 : LDA 7, 143(0) ; Call log10Helper
191 : LD 1, 3(5) ; Load callee result into R1
192 : LDC 2, 3(0) ; Caller frame size
193 : SUB 5, 5, 2 ; Pop back to caller
194 : ST 1, 2(5) ; Store function result into frame return slot
195 : LD 6, 0(5) ; Load return address
196 : LDA 7, 0(6) ; Return to caller
197 : LD 1, 2(5) ; Load parameter 'power' into R1
198 : ST 1, 5(5) ; Spill left operand at depth 0
199 : LDC 1, 0(0) ; Load integer-literal into R1
200 : LD 2, 5(5) ; Restore left operand from depth 0
201 : SUB 1, 2, 1 ; left - right for equality check
202 : JEQ 1, 2(7) ; If R1 == 0, jump to true
203 : LDC 1, 0(0) ; false
204 : LDA 7, 1(7) ; skip setting true
205 : LDC 1, 1(0) ; true
206 : JEQ 1, 209(0) ; If condition is false, jump to ELSE
207 : LDC 1, 1(0) ; Load integer-literal into R1
208 : LDA 7, 243(0) ; Skip ELSE block
209 : LD 1, 2(5) ; Load parameter 'power' into R1
210 : ST 1, 5(5) ; Spill left operand at depth 0
211 : LDC 1, 1(0) ; Load integer-literal into R1
212 : LD 2, 5(5) ; Restore left operand from depth 0
213 : SUB 1, 2, 1 ; left - right for equality check
214 : JEQ 1, 2(7) ; If R1 == 0, jump to true
215 : LDC 1, 0(0) ; false
216 : LDA 7, 1(7) ; skip setting true
217 : LDC 1, 1(0) ; true
218 : JEQ 1, 221(0) ; If condition is false, jump to ELSE
219 : LD 1, 3(5) ; Load parameter 'total' into R1
220 : LDA 7, 243(0) ; Skip ELSE block
221 : LDA 4, 6(5) ; Compute callee base from caller size
222 : LD 1, 1(5) ; Load parameter 'base' into R1
223 : ST 1, 1(4) ; Store argument 0 in callee frame
224 : LD 1, 2(5) ; Load parameter 'power' into R1
225 : ST 1, 5(5) ; Spill left operand at depth 0
226 : LDC 1, 1(0) ; Load integer-literal into R1
227 : LD 2, 5(5) ; Restore left operand from depth 0
228 : SUB 1, 2, 1 ; R1 = left - right
229 : ST 1, 2(4) ; Store argument 1 in callee frame
230 : LD 1, 1(5) ; Load parameter 'base' into R1
231 : ST 1, 5(5) ; Spill left operand at depth 0
232 : LD 1, 3(5) ; Load parameter 'total' into R1
233 : LD 2, 5(5) ; Restore left operand from depth 0
234 : MUL 1, 2, 1 ; R1 = left * right
235 : ST 1, 3(4) ; Store argument 2 in callee frame
236 : LDA 6, 240(0) ; Return address
237 : ST 6, 0(4) ; Store return address into callee frame
238 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
239 : LDA 7, 197(0) ; Call powHelper
240 : LD 1, 4(5) ; Load callee result into R1
241 : LDC 2, 6(0) ; Caller frame size
242 : SUB 5, 5, 2 ; Pop back to caller
243 : ST 1, 4(5) ; Store function result into frame return slot
244 : LD 6, 0(5) ; Load return address
245 : LDA 7, 0(6) ; Return to caller
246 : LDA 4, 4(5) ; Compute callee base from caller size
247 : LD 1, 1(5) ; Load parameter 'x' into R1
248 : ST 1, 1(4) ; Store argument 0 in callee frame
249 : LD 1, 2(5) ; Load parameter 'y' into R1
250 : ST 1, 2(4) ; Store argument 1 in callee frame
251 : LD 1, 1(5) ; Load parameter 'x' into R1
252 : ST 1, 3(4) ; Store argument 2 in callee frame
253 : LDA 6, 257(0) ; Return address
254 : ST 6, 0(4) ; Store return address into callee frame
255 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
256 : LDA 7, 197(0) ; Call powHelper
257 : LD 1, 4(5) ; Load callee result into R1
258 : LDC 2, 4(0) ; Caller frame size
259 : SUB 5, 5, 2 ; Pop back to caller
260 : ST 1, 3(5) ; Store function result into frame return slot
261 : LD 6, 0(5) ; Load return address
262 : LDA 7, 0(6) ; Return to caller
263 : LD 1, 1(5) ; Load parameter 'x' into R1
264 : ST 1, 3(5) ; Spill left operand at depth 0
265 : LDC 1, 10(0) ; Load integer-literal into R1
266 : LD 2, 3(5) ; Restore left operand from depth 0
267 : DIV 1, 2, 1 ; R1 = left / right
268 : ST 1, 3(5) ; Spill left operand at depth 0
269 : LDA 4, 5(5) ; Compute callee base from caller size
270 : LD 1, 1(5) ; Load parameter 'x' into R1
271 : ST 1, 1(4) ; Store argument 0 in callee frame
272 : LDC 1, 10(0) ; Load integer-literal into R1
273 : ST 1, 2(4) ; Store argument 1 in callee frame
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return address into callee frame
276 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
277 : LDA 7, 26(0) ; Call mod
278 : LD 1, 3(5) ; Load callee result into R1
279 : LDC 2, 5(0) ; Caller frame size
280 : SUB 5, 5, 2 ; Pop back to caller
281 : ST 1, 4(5) ; Spill left operand at depth 1
282 : LDA 4, 5(5) ; Compute callee base from caller size
283 : LDC 1, 10(0) ; Load integer-literal into R1
284 : ST 1, 1(4) ; Store argument 0 in callee frame
285 : LDA 4, 5(5) ; Compute callee base from caller size
286 : LD 1, 1(5) ; Load parameter 'x' into R1
287 : ST 1, 1(4) ; Store argument 0 in callee frame
288 : LDA 6, 292(0) ; Return address
289 : ST 6, 0(4) ; Store return address into callee frame
290 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
291 : LDA 7, 182(0) ; Call log10
292 : LD 1, 2(5) ; Load callee result into R1
293 : LDC 2, 5(0) ; Caller frame size
294 : SUB 5, 5, 2 ; Pop back to caller
295 : ST 1, 2(4) ; Store argument 1 in callee frame
296 : LDA 6, 300(0) ; Return address
297 : ST 6, 0(4) ; Store return address into callee frame
298 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
299 : LDA 7, 246(0) ; Call pow
300 : LD 1, 3(5) ; Load callee result into R1
301 : LDC 2, 5(0) ; Caller frame size
302 : SUB 5, 5, 2 ; Pop back to caller
303 : LD 2, 4(5) ; Restore left operand from depth 1
304 : MUL 1, 2, 1 ; R1 = left * right
305 : LD 2, 3(5) ; Restore left operand from depth 0
306 : ADD 1, 2, 1 ; R1 = left + right
307 : ST 1, 2(5) ; Store function result into frame return slot
308 : LD 6, 0(5) ; Load return address
309 : LDA 7, 0(6) ; Return to caller
310 : LD 1, 1(5) ; Load parameter 'x' into R1
311 : LDA 4, 3(5) ; Compute callee base from caller size
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return address into callee frame
314 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
315 : LDA 7, 9(0) ; Call built-in print
316 : LDC 2, 3(0) ; Caller frame size
317 : SUB 5, 5, 2 ; Pop back to caller
318 : LDC 1, 1(0) ; Load boolean-literal into R1
319 : ST 1, 2(5) ; Store function result into frame return slot
320 : LD 6, 0(5) ; Load return address
321 : LDA 7, 0(6) ; Return to caller
322 : LD 1, 2(5) ; Load parameter 'turns' into R1
323 : ST 1, 4(5) ; Spill left operand at depth 0
324 : LDC 1, 0(0) ; Load integer-literal into R1
325 : LD 2, 4(5) ; Restore left operand from depth 0
326 : SUB 1, 2, 1 ; left - right for equality check
327 : JEQ 1, 2(7) ; If R1 == 0, jump to true
328 : LDC 1, 0(0) ; false
329 : LDA 7, 1(7) ; skip setting true
330 : LDC 1, 1(0) ; true
331 : JEQ 1, 334(0) ; If condition is false, jump to ELSE
332 : LDC 1, 1(0) ; Load boolean-literal into R1
333 : LDA 7, 372(0) ; Skip ELSE block
334 : LDA 4, 6(5) ; Compute callee base from caller size
335 : LD 1, 1(5) ; Load parameter 'x' into R1
336 : ST 1, 1(4) ; Store argument 0 in callee frame
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return address into callee frame
339 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
340 : LDA 7, 126(0) ; Call isPrime
341 : LD 1, 2(5) ; Load callee result into R1
342 : LDC 2, 6(0) ; Caller frame size
343 : SUB 5, 5, 2 ; Pop back to caller
344 : ST 1, 4(5) ; Spill left operand at depth 0
345 : LDA 4, 6(5) ; Compute callee base from caller size
346 : LDA 4, 6(5) ; Compute callee base from caller size
347 : LD 1, 1(5) ; Load parameter 'x' into R1
348 : ST 1, 1(4) ; Store argument 0 in callee frame
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return address into callee frame
351 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
352 : LDA 7, 263(0) ; Call rotate
353 : LD 1, 2(5) ; Load callee result into R1
354 : LDC 2, 6(0) ; Caller frame size
355 : SUB 5, 5, 2 ; Pop back to caller
356 : ST 1, 1(4) ; Store argument 0 in callee frame
357 : LD 1, 2(5) ; Load parameter 'turns' into R1
358 : ST 1, 5(5) ; Spill left operand at depth 1
359 : LDC 1, 1(0) ; Load integer-literal into R1
360 : LD 2, 5(5) ; Restore left operand from depth 1
361 : SUB 1, 2, 1 ; R1 = left - right
362 : ST 1, 2(4) ; Store argument 1 in callee frame
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return address into callee frame
365 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
366 : LDA 7, 322(0) ; Call isCircularPrimeHelper
367 : LD 1, 3(5) ; Load callee result into R1
368 : LDC 2, 6(0) ; Caller frame size
369 : SUB 5, 5, 2 ; Pop back to caller
370 : LD 2, 4(5) ; Restore left operand from depth 0
371 : MUL 1, 2, 1 ; R1 = left AND right
372 : ST 1, 3(5) ; Store function result into frame return slot
373 : LD 6, 0(5) ; Load return address
374 : LDA 7, 0(6) ; Return to caller
375 : LDA 4, 4(5) ; Compute callee base from caller size
376 : LD 1, 1(5) ; Load parameter 'x' into R1
377 : ST 1, 1(4) ; Store argument 0 in callee frame
378 : LDA 4, 4(5) ; Compute callee base from caller size
379 : LD 1, 1(5) ; Load parameter 'x' into R1
380 : ST 1, 1(4) ; Store argument 0 in callee frame
381 : LDA 6, 385(0) ; Return address
382 : ST 6, 0(4) ; Store return address into callee frame
383 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
384 : LDA 7, 182(0) ; Call log10
385 : LD 1, 2(5) ; Load callee result into R1
386 : LDC 2, 4(0) ; Caller frame size
387 : SUB 5, 5, 2 ; Pop back to caller
388 : ST 1, 3(5) ; Spill left operand at depth 0
389 : LDC 1, 1(0) ; Load integer-literal into R1
390 : LD 2, 3(5) ; Restore left operand from depth 0
391 : ADD 1, 2, 1 ; R1 = left + right
392 : ST 1, 2(4) ; Store argument 1 in callee frame
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return address into callee frame
395 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
396 : LDA 7, 322(0) ; Call isCircularPrimeHelper
397 : LD 1, 3(5) ; Load callee result into R1
398 : LDC 2, 4(0) ; Caller frame size
399 : SUB 5, 5, 2 ; Pop back to caller
400 : JEQ 1, 412(0) ; If condition is false, jump to ELSE
401 : LDA 4, 4(5) ; Compute callee base from caller size
402 : LD 1, 1(5) ; Load parameter 'x' into R1
403 : ST 1, 1(4) ; Store argument 0 in callee frame
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return address into callee frame
406 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
407 : LDA 7, 310(0) ; Call report
408 : LD 1, 2(5) ; Load callee result into R1
409 : LDC 2, 4(0) ; Caller frame size
410 : SUB 5, 5, 2 ; Pop back to caller
411 : LDA 7, 413(0) ; Skip ELSE block
412 : LDC 1, 0(0) ; Load boolean-literal into R1
413 : ST 1, 2(5) ; Store function result into frame return slot
414 : LD 6, 0(5) ; Load return address
415 : LDA 7, 0(6) ; Return to caller
416 : LD 1, 2(5) ; Load parameter 'x' into R1
417 : ST 1, 5(5) ; Spill left operand at depth 0
418 : LD 1, 1(5) ; Load parameter 'top' into R1
419 : LD 2, 5(5) ; Restore left operand from depth 0
420 : SUB 1, 2, 1 ; left - right for less-than check
421 : JLT 1, 2(7) ; If R1 < 0, jump to true
422 : LDC 1, 0(0) ; false
423 : LDA 7, 1(7) ; skip setting true
424 : LDC 1, 1(0) ; true
425 : JEQ 1, 479(0) ; If condition is false, jump to ELSE
426 : LDA 4, 6(5) ; Compute callee base from caller size
427 : LD 1, 2(5) ; Load parameter 'x' into R1
428 : ST 1, 1(4) ; Store argument 0 in callee frame
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return address into callee frame
431 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
432 : LDA 7, 375(0) ; Call isCircularPrime
433 : LD 1, 2(5) ; Load callee result into R1
434 : LDC 2, 6(0) ; Caller frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : JEQ 1, 460(0) ; If condition is false, jump to ELSE
437 : LDA 4, 6(5) ; Compute callee base from caller size
438 : LD 1, 1(5) ; Load parameter 'top' into R1
439 : ST 1, 1(4) ; Store argument 0 in callee frame
440 : LD 1, 2(5) ; Load parameter 'x' into R1
441 : ST 1, 5(5) ; Spill left operand at depth 0
442 : LDC 1, 1(0) ; Load integer-literal into R1
443 : LD 2, 5(5) ; Restore left operand from depth 0
444 : ADD 1, 2, 1 ; R1 = left + right
445 : ST 1, 2(4) ; Store argument 1 in callee frame
446 : LD 1, 3(5) ; Load parameter 'count' into R1
447 : ST 1, 5(5) ; Spill left operand at depth 0
448 : LDC 1, 1(0) ; Load integer-literal into R1
449 : LD 2, 5(5) ; Restore left operand from depth 0
450 : ADD 1, 2, 1 ; R1 = left + right
451 : ST 1, 3(4) ; Store argument 2 in callee frame
452 : LDA 6, 456(0) ; Return address
453 : ST 6, 0(4) ; Store return address into callee frame
454 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
455 : LDA 7, 416(0) ; Call circularPrimesToHelper
456 : LD 1, 4(5) ; Load callee result into R1
457 : LDC 2, 6(0) ; Caller frame size
458 : SUB 5, 5, 2 ; Pop back to caller
459 : LDA 7, 478(0) ; Skip ELSE block
460 : LDA 4, 6(5) ; Compute callee base from caller size
461 : LD 1, 1(5) ; Load parameter 'top' into R1
462 : ST 1, 1(4) ; Store argument 0 in callee frame
463 : LD 1, 2(5) ; Load parameter 'x' into R1
464 : ST 1, 5(5) ; Spill left operand at depth 0
465 : LDC 1, 1(0) ; Load integer-literal into R1
466 : LD 2, 5(5) ; Restore left operand from depth 0
467 : ADD 1, 2, 1 ; R1 = left + right
468 : ST 1, 2(4) ; Store argument 1 in callee frame
469 : LD 1, 3(5) ; Load parameter 'count' into R1
470 : ST 1, 3(4) ; Store argument 2 in callee frame
471 : LDA 6, 475(0) ; Return address
472 : ST 6, 0(4) ; Store return address into callee frame
473 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
474 : LDA 7, 416(0) ; Call circularPrimesToHelper
475 : LD 1, 4(5) ; Load callee result into R1
476 : LDC 2, 6(0) ; Caller frame size
477 : SUB 5, 5, 2 ; Pop back to caller
478 : LDA 7, 480(0) ; Skip ELSE block
479 : LD 1, 3(5) ; Load parameter 'count' into R1
480 : ST 1, 4(5) ; Store function result into frame return slot
481 : LD 6, 0(5) ; Load return address
482 : LDA 7, 0(6) ; Return to caller
483 : LDA 4, 4(5) ; Compute callee base from caller size
484 : LD 1, 1(5) ; Load parameter 'x' into R1
485 : ST 1, 3(5) ; Spill left operand at depth 0
486 : LDC 1, 1(0) ; Load integer-literal into R1
487 : LD 2, 3(5) ; Restore left operand from depth 0
488 : ADD 1, 2, 1 ; R1 = left + right
489 : ST 1, 1(4) ; Store argument 0 in callee frame
490 : LDC 1, 2(0) ; Load integer-literal into R1
491 : ST 1, 2(4) ; Store argument 1 in callee frame
492 : LDC 1, 0(0) ; Load integer-literal into R1
493 : ST 1, 3(4) ; Store argument 2 in callee frame
494 : LDA 6, 498(0) ; Return address
495 : ST 6, 0(4) ; Store return address into callee frame
496 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
497 : LDA 7, 416(0) ; Call circularPrimesToHelper
498 : LD 1, 4(5) ; Load callee result into R1
499 : LDC 2, 4(0) ; Caller frame size
500 : SUB 5, 5, 2 ; Pop back to caller
501 : ST 1, 2(5) ; Store function result into frame return slot
502 : LD 6, 0(5) ; Load return address
503 : LDA 7, 0(6) ; Return to caller
