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
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 4, 3(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 527(0) ; Call circularPrimesTo
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 4(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s return slot
24 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
25 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
26 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
27 : LD 1, 2(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load root return address from main frame
29 : LDA 7, 0(6) ; Return from main to runtime epilogue
30 : LD 1, 1(5) ; Load parameter 'num' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LD 1, 2(5) ; Load parameter 'den' into R1
33 : LD 2, 4(5) ; Restore left operand from depth 0
34 : SUB 1, 2, 1 ; left - right for less-than check
35 : JLT 1, 2(7) ; If R1 < 0, jump to true
36 : LDC 1, 0(0) ; false
37 : LDA 7, 1(7) ; skip setting true
38 : LDC 1, 1(0) ; true
39 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : LDA 7, 60(0) ; Skip ELSE block
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 1, 2(5) ; Load parameter 'den' into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; R1 = left - right
47 : LDA 4, 5(5) ; Recompute callee base from caller size
48 : ST 1, 1(4) ; Store argument 0 in callee frame
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LDA 4, 5(5) ; Recompute callee base from caller size
51 : ST 1, 2(4) ; Store argument 1 in callee frame
52 : LDA 4, 5(5) ; Recompute callee base from caller size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return address into callee frame
55 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
56 : LDA 7, 30(0) ; Call mod
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : LDA 4, 5(5) ; Recompute callee base from caller size
65 : ST 1, 1(4) ; Store argument 0 in callee frame
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : ST 1, 2(4) ; Store argument 1 in callee frame
69 : LDA 4, 5(5) ; Recompute callee base from caller size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return address into callee frame
72 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
73 : LDA 7, 30(0) ; Call mod
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 5(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 4(5) ; Spill left operand at depth 0
78 : LDC 1, 0(0) ; Load integer-literal into R1
79 : LD 2, 4(5) ; Restore left operand from depth 0
80 : SUB 1, 2, 1 ; left - right for equality check
81 : JEQ 1, 2(7) ; If R1 == 0, jump to true
82 : LDC 1, 0(0) ; false
83 : LDA 7, 1(7) ; skip setting true
84 : LDC 1, 1(0) ; true
85 : ST 1, 3(5) ; Store function result into frame return slot
86 : LD 6, 0(5) ; Load return address
87 : LDA 7, 0(6) ; Return to caller
88 : LD 1, 1(5) ; Load parameter 'i' into R1
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LD 1, 2(5) ; Load parameter 'n' into R1
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; left - right for less-than check
93 : JLT 1, 2(7) ; If R1 < 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : JEQ 1, 134(0) ; If condition is false, jump to ELSE
98 : LD 1, 1(5) ; Load parameter 'i' into R1
99 : LDA 4, 6(5) ; Recompute callee base from caller size
100 : ST 1, 1(4) ; Store argument 0 in callee frame
101 : LD 1, 2(5) ; Load parameter 'n' into R1
102 : LDA 4, 6(5) ; Recompute callee base from caller size
103 : ST 1, 2(4) ; Store argument 1 in callee frame
104 : LDA 4, 6(5) ; Recompute callee base from caller size
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return address into callee frame
107 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
108 : LDA 7, 63(0) ; Call divides
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 5(0) ; Callee frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 4(5) ; Spill left operand at depth 0
113 : LD 1, 1(5) ; Load parameter 'i' into R1
114 : ST 1, 5(5) ; Spill left operand at depth 1
115 : LDC 1, 1(0) ; Load integer-literal into R1
116 : LD 2, 5(5) ; Restore left operand from depth 1
117 : ADD 1, 2, 1 ; R1 = left + right
118 : LDA 4, 6(5) ; Recompute callee base from caller size
119 : ST 1, 1(4) ; Store argument 0 in callee frame
120 : LD 1, 2(5) ; Load parameter 'n' into R1
121 : LDA 4, 6(5) ; Recompute callee base from caller size
122 : ST 1, 2(4) ; Store argument 1 in callee frame
123 : LDA 4, 6(5) ; Recompute callee base from caller size
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return address into callee frame
126 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
127 : LDA 7, 88(0) ; Call hasDivisorFrom
128 : LD 1, 3(5) ; Load callee result into R1
129 : LDC 2, 6(0) ; Callee frame size
130 : SUB 5, 5, 2 ; Pop back to caller
131 : LD 2, 4(5) ; Restore left operand from depth 0
132 : ADD 1, 2, 1 ; R1 = left OR right
133 : LDA 7, 135(0) ; Skip ELSE block
134 : LDC 1, 0(0) ; Load boolean-literal into R1
135 : ST 1, 3(5) ; Store function result into frame return slot
136 : LD 6, 0(5) ; Load return address
137 : LDA 7, 0(6) ; Return to caller
138 : LDC 1, 2(0) ; Load integer-literal into R1
139 : LDA 4, 3(5) ; Recompute callee base from caller size
140 : ST 1, 1(4) ; Store argument 0 in callee frame
141 : LD 1, 1(5) ; Load parameter 'n' into R1
142 : LDA 4, 3(5) ; Recompute callee base from caller size
143 : ST 1, 2(4) ; Store argument 1 in callee frame
144 : LDA 4, 3(5) ; Recompute callee base from caller size
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return address into callee frame
147 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
148 : LDA 7, 88(0) ; Call hasDivisorFrom
149 : LD 1, 3(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Callee frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : LDC 2, 1(0) ; Load 1 into R2
153 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
154 : ST 1, 2(5) ; Store function result into frame return slot
155 : LD 6, 0(5) ; Load return address
156 : LDA 7, 0(6) ; Return to caller
157 : LD 1, 1(5) ; Load parameter 'x' into R1
158 : ST 1, 4(5) ; Spill left operand at depth 0
159 : LDC 1, 10(0) ; Load integer-literal into R1
160 : LD 2, 4(5) ; Restore left operand from depth 0
161 : DIV 1, 2, 1 ; R1 = left / right
162 : ST 1, 4(5) ; Spill left operand at depth 0
163 : LDC 1, 0(0) ; Load integer-literal into R1
164 : LD 2, 4(5) ; Restore left operand from depth 0
165 : SUB 1, 2, 1 ; left - right for equality check
166 : JEQ 1, 2(7) ; If R1 == 0, jump to true
167 : LDC 1, 0(0) ; false
168 : LDA 7, 1(7) ; skip setting true
169 : LDC 1, 1(0) ; true
170 : JEQ 1, 173(0) ; If condition is false, jump to ELSE
171 : LD 1, 2(5) ; Load parameter 'y' into R1
172 : LDA 7, 195(0) ; Skip ELSE block
173 : LD 1, 1(5) ; Load parameter 'x' into R1
174 : ST 1, 4(5) ; Spill left operand at depth 0
175 : LDC 1, 10(0) ; Load integer-literal into R1
176 : LD 2, 4(5) ; Restore left operand from depth 0
177 : DIV 1, 2, 1 ; R1 = left / right
178 : LDA 4, 5(5) ; Recompute callee base from caller size
179 : ST 1, 1(4) ; Store argument 0 in callee frame
180 : LD 1, 2(5) ; Load parameter 'y' into R1
181 : ST 1, 4(5) ; Spill left operand at depth 0
182 : LDC 1, 1(0) ; Load integer-literal into R1
183 : LD 2, 4(5) ; Restore left operand from depth 0
184 : ADD 1, 2, 1 ; R1 = left + right
185 : LDA 4, 5(5) ; Recompute callee base from caller size
186 : ST 1, 2(4) ; Store argument 1 in callee frame
187 : LDA 4, 5(5) ; Recompute callee base from caller size
188 : LDA 6, 192(0) ; Return address
189 : ST 6, 0(4) ; Store return address into callee frame
190 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
191 : LDA 7, 157(0) ; Call log10Helper
192 : LD 1, 3(5) ; Load callee result into R1
193 : LDC 2, 5(0) ; Callee frame size
194 : SUB 5, 5, 2 ; Pop back to caller
195 : ST 1, 3(5) ; Store function result into frame return slot
196 : LD 6, 0(5) ; Load return address
197 : LDA 7, 0(6) ; Return to caller
198 : LD 1, 1(5) ; Load parameter 'x' into R1
199 : LDA 4, 3(5) ; Recompute callee base from caller size
200 : ST 1, 1(4) ; Store argument 0 in callee frame
201 : LDC 1, 0(0) ; Load integer-literal into R1
202 : LDA 4, 3(5) ; Recompute callee base from caller size
203 : ST 1, 2(4) ; Store argument 1 in callee frame
204 : LDA 4, 3(5) ; Recompute callee base from caller size
205 : LDA 6, 209(0) ; Return address
206 : ST 6, 0(4) ; Store return address into callee frame
207 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
208 : LDA 7, 157(0) ; Call log10Helper
209 : LD 1, 3(5) ; Load callee result into R1
210 : LDC 2, 5(0) ; Callee frame size
211 : SUB 5, 5, 2 ; Pop back to caller
212 : ST 1, 2(5) ; Store function result into frame return slot
213 : LD 6, 0(5) ; Load return address
214 : LDA 7, 0(6) ; Return to caller
215 : LD 1, 2(5) ; Load parameter 'power' into R1
216 : ST 1, 5(5) ; Spill left operand at depth 0
217 : LDC 1, 0(0) ; Load integer-literal into R1
218 : LD 2, 5(5) ; Restore left operand from depth 0
219 : SUB 1, 2, 1 ; left - right for equality check
220 : JEQ 1, 2(7) ; If R1 == 0, jump to true
221 : LDC 1, 0(0) ; false
222 : LDA 7, 1(7) ; skip setting true
223 : LDC 1, 1(0) ; true
224 : JEQ 1, 227(0) ; If condition is false, jump to ELSE
225 : LDC 1, 1(0) ; Load integer-literal into R1
226 : LDA 7, 264(0) ; Skip ELSE block
227 : LD 1, 2(5) ; Load parameter 'power' into R1
228 : ST 1, 5(5) ; Spill left operand at depth 0
229 : LDC 1, 1(0) ; Load integer-literal into R1
230 : LD 2, 5(5) ; Restore left operand from depth 0
231 : SUB 1, 2, 1 ; left - right for equality check
232 : JEQ 1, 2(7) ; If R1 == 0, jump to true
233 : LDC 1, 0(0) ; false
234 : LDA 7, 1(7) ; skip setting true
235 : LDC 1, 1(0) ; true
236 : JEQ 1, 239(0) ; If condition is false, jump to ELSE
237 : LD 1, 3(5) ; Load parameter 'total' into R1
238 : LDA 7, 264(0) ; Skip ELSE block
239 : LD 1, 1(5) ; Load parameter 'base' into R1
240 : LDA 4, 6(5) ; Recompute callee base from caller size
241 : ST 1, 1(4) ; Store argument 0 in callee frame
242 : LD 1, 2(5) ; Load parameter 'power' into R1
243 : ST 1, 5(5) ; Spill left operand at depth 0
244 : LDC 1, 1(0) ; Load integer-literal into R1
245 : LD 2, 5(5) ; Restore left operand from depth 0
246 : SUB 1, 2, 1 ; R1 = left - right
247 : LDA 4, 6(5) ; Recompute callee base from caller size
248 : ST 1, 2(4) ; Store argument 1 in callee frame
249 : LD 1, 1(5) ; Load parameter 'base' into R1
250 : ST 1, 5(5) ; Spill left operand at depth 0
251 : LD 1, 3(5) ; Load parameter 'total' into R1
252 : LD 2, 5(5) ; Restore left operand from depth 0
253 : MUL 1, 2, 1 ; R1 = left * right
254 : LDA 4, 6(5) ; Recompute callee base from caller size
255 : ST 1, 3(4) ; Store argument 2 in callee frame
256 : LDA 4, 6(5) ; Recompute callee base from caller size
257 : LDA 6, 261(0) ; Return address
258 : ST 6, 0(4) ; Store return address into callee frame
259 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
260 : LDA 7, 215(0) ; Call powHelper
261 : LD 1, 4(5) ; Load callee result into R1
262 : LDC 2, 6(0) ; Callee frame size
263 : SUB 5, 5, 2 ; Pop back to caller
264 : ST 1, 4(5) ; Store function result into frame return slot
265 : LD 6, 0(5) ; Load return address
266 : LDA 7, 0(6) ; Return to caller
267 : LD 1, 1(5) ; Load parameter 'x' into R1
268 : LDA 4, 4(5) ; Recompute callee base from caller size
269 : ST 1, 1(4) ; Store argument 0 in callee frame
270 : LD 1, 2(5) ; Load parameter 'y' into R1
271 : LDA 4, 4(5) ; Recompute callee base from caller size
272 : ST 1, 2(4) ; Store argument 1 in callee frame
273 : LD 1, 1(5) ; Load parameter 'x' into R1
274 : LDA 4, 4(5) ; Recompute callee base from caller size
275 : ST 1, 3(4) ; Store argument 2 in callee frame
276 : LDA 4, 4(5) ; Recompute callee base from caller size
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return address into callee frame
279 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
280 : LDA 7, 215(0) ; Call powHelper
281 : LD 1, 4(5) ; Load callee result into R1
282 : LDC 2, 6(0) ; Callee frame size
283 : SUB 5, 5, 2 ; Pop back to caller
284 : ST 1, 3(5) ; Store function result into frame return slot
285 : LD 6, 0(5) ; Load return address
286 : LDA 7, 0(6) ; Return to caller
287 : LD 1, 1(5) ; Load parameter 'x' into R1
288 : ST 1, 3(5) ; Spill left operand at depth 0
289 : LDC 1, 10(0) ; Load integer-literal into R1
290 : LD 2, 3(5) ; Restore left operand from depth 0
291 : DIV 1, 2, 1 ; R1 = left / right
292 : ST 1, 3(5) ; Spill left operand at depth 0
293 : LD 1, 1(5) ; Load parameter 'x' into R1
294 : LDA 4, 5(5) ; Recompute callee base from caller size
295 : ST 1, 1(4) ; Store argument 0 in callee frame
296 : LDC 1, 10(0) ; Load integer-literal into R1
297 : LDA 4, 5(5) ; Recompute callee base from caller size
298 : ST 1, 2(4) ; Store argument 1 in callee frame
299 : LDA 4, 5(5) ; Recompute callee base from caller size
300 : LDA 6, 304(0) ; Return address
301 : ST 6, 0(4) ; Store return address into callee frame
302 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
303 : LDA 7, 30(0) ; Call mod
304 : LD 1, 3(5) ; Load callee result into R1
305 : LDC 2, 5(0) ; Callee frame size
306 : SUB 5, 5, 2 ; Pop back to caller
307 : ST 1, 4(5) ; Spill left operand at depth 1
308 : LDC 1, 10(0) ; Load integer-literal into R1
309 : LDA 4, 5(5) ; Recompute callee base from caller size
310 : ST 1, 1(4) ; Store argument 0 in callee frame
311 : LD 1, 1(5) ; Load parameter 'x' into R1
312 : LDA 4, 5(5) ; Recompute callee base from caller size
313 : ST 1, 1(4) ; Store argument 0 in callee frame
314 : LDA 4, 5(5) ; Recompute callee base from caller size
315 : LDA 6, 319(0) ; Return address
316 : ST 6, 0(4) ; Store return address into callee frame
317 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
318 : LDA 7, 198(0) ; Call log10
319 : LD 1, 2(5) ; Load callee result into R1
320 : LDC 2, 3(0) ; Callee frame size
321 : SUB 5, 5, 2 ; Pop back to caller
322 : LDA 4, 5(5) ; Recompute callee base from caller size
323 : ST 1, 2(4) ; Store argument 1 in callee frame
324 : LDA 4, 5(5) ; Recompute callee base from caller size
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return address into callee frame
327 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
328 : LDA 7, 267(0) ; Call pow
329 : LD 1, 3(5) ; Load callee result into R1
330 : LDC 2, 4(0) ; Callee frame size
331 : SUB 5, 5, 2 ; Pop back to caller
332 : LD 2, 4(5) ; Restore left operand from depth 1
333 : MUL 1, 2, 1 ; R1 = left * right
334 : LD 2, 3(5) ; Restore left operand from depth 0
335 : ADD 1, 2, 1 ; R1 = left + right
336 : ST 1, 2(5) ; Store function result into frame return slot
337 : LD 6, 0(5) ; Load return address
338 : LDA 7, 0(6) ; Return to caller
339 : LD 1, 1(5) ; Load parameter 'x' into R1
340 : LDA 4, 3(5) ; Recompute callee base from caller size
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return address in callee frame
343 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
344 : LDA 7, 9(0) ; Call built-in print
345 : LDC 2, 3(0) ; Callee frame size
346 : SUB 5, 5, 2 ; Pop back to caller
347 : LDC 1, 1(0) ; Load boolean-literal into R1
348 : ST 1, 2(5) ; Store function result into frame return slot
349 : LD 6, 0(5) ; Load return address
350 : LDA 7, 0(6) ; Return to caller
351 : LD 1, 2(5) ; Load parameter 'turns' into R1
352 : ST 1, 4(5) ; Spill left operand at depth 0
353 : LDC 1, 0(0) ; Load integer-literal into R1
354 : LD 2, 4(5) ; Restore left operand from depth 0
355 : SUB 1, 2, 1 ; left - right for equality check
356 : JEQ 1, 2(7) ; If R1 == 0, jump to true
357 : LDC 1, 0(0) ; false
358 : LDA 7, 1(7) ; skip setting true
359 : LDC 1, 1(0) ; true
360 : JEQ 1, 363(0) ; If condition is false, jump to ELSE
361 : LDC 1, 1(0) ; Load boolean-literal into R1
362 : LDA 7, 405(0) ; Skip ELSE block
363 : LD 1, 1(5) ; Load parameter 'x' into R1
364 : LDA 4, 6(5) ; Recompute callee base from caller size
365 : ST 1, 1(4) ; Store argument 0 in callee frame
366 : LDA 4, 6(5) ; Recompute callee base from caller size
367 : LDA 6, 371(0) ; Return address
368 : ST 6, 0(4) ; Store return address into callee frame
369 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
370 : LDA 7, 138(0) ; Call isPrime
371 : LD 1, 2(5) ; Load callee result into R1
372 : LDC 2, 3(0) ; Callee frame size
373 : SUB 5, 5, 2 ; Pop back to caller
374 : ST 1, 4(5) ; Spill left operand at depth 0
375 : LD 1, 1(5) ; Load parameter 'x' into R1
376 : LDA 4, 6(5) ; Recompute callee base from caller size
377 : ST 1, 1(4) ; Store argument 0 in callee frame
378 : LDA 4, 6(5) ; Recompute callee base from caller size
379 : LDA 6, 383(0) ; Return address
380 : ST 6, 0(4) ; Store return address into callee frame
381 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
382 : LDA 7, 287(0) ; Call rotate
383 : LD 1, 2(5) ; Load callee result into R1
384 : LDC 2, 5(0) ; Callee frame size
385 : SUB 5, 5, 2 ; Pop back to caller
386 : LDA 4, 6(5) ; Recompute callee base from caller size
387 : ST 1, 1(4) ; Store argument 0 in callee frame
388 : LD 1, 2(5) ; Load parameter 'turns' into R1
389 : ST 1, 5(5) ; Spill left operand at depth 1
390 : LDC 1, 1(0) ; Load integer-literal into R1
391 : LD 2, 5(5) ; Restore left operand from depth 1
392 : SUB 1, 2, 1 ; R1 = left - right
393 : LDA 4, 6(5) ; Recompute callee base from caller size
394 : ST 1, 2(4) ; Store argument 1 in callee frame
395 : LDA 4, 6(5) ; Recompute callee base from caller size
396 : LDA 6, 400(0) ; Return address
397 : ST 6, 0(4) ; Store return address into callee frame
398 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
399 : LDA 7, 351(0) ; Call isCircularPrimeHelper
400 : LD 1, 3(5) ; Load callee result into R1
401 : LDC 2, 6(0) ; Callee frame size
402 : SUB 5, 5, 2 ; Pop back to caller
403 : LD 2, 4(5) ; Restore left operand from depth 0
404 : MUL 1, 2, 1 ; R1 = left AND right
405 : ST 1, 3(5) ; Store function result into frame return slot
406 : LD 6, 0(5) ; Load return address
407 : LDA 7, 0(6) ; Return to caller
408 : LD 1, 1(5) ; Load parameter 'x' into R1
409 : LDA 4, 4(5) ; Recompute callee base from caller size
410 : ST 1, 1(4) ; Store argument 0 in callee frame
411 : LD 1, 1(5) ; Load parameter 'x' into R1
412 : LDA 4, 4(5) ; Recompute callee base from caller size
413 : ST 1, 1(4) ; Store argument 0 in callee frame
414 : LDA 4, 4(5) ; Recompute callee base from caller size
415 : LDA 6, 419(0) ; Return address
416 : ST 6, 0(4) ; Store return address into callee frame
417 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
418 : LDA 7, 198(0) ; Call log10
419 : LD 1, 2(5) ; Load callee result into R1
420 : LDC 2, 3(0) ; Callee frame size
421 : SUB 5, 5, 2 ; Pop back to caller
422 : ST 1, 3(5) ; Spill left operand at depth 0
423 : LDC 1, 1(0) ; Load integer-literal into R1
424 : LD 2, 3(5) ; Restore left operand from depth 0
425 : ADD 1, 2, 1 ; R1 = left + right
426 : LDA 4, 4(5) ; Recompute callee base from caller size
427 : ST 1, 2(4) ; Store argument 1 in callee frame
428 : LDA 4, 4(5) ; Recompute callee base from caller size
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return address into callee frame
431 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
432 : LDA 7, 351(0) ; Call isCircularPrimeHelper
433 : LD 1, 3(5) ; Load callee result into R1
434 : LDC 2, 6(0) ; Callee frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : JEQ 1, 449(0) ; If condition is false, jump to ELSE
437 : LD 1, 1(5) ; Load parameter 'x' into R1
438 : LDA 4, 4(5) ; Recompute callee base from caller size
439 : ST 1, 1(4) ; Store argument 0 in callee frame
440 : LDA 4, 4(5) ; Recompute callee base from caller size
441 : LDA 6, 445(0) ; Return address
442 : ST 6, 0(4) ; Store return address into callee frame
443 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
444 : LDA 7, 339(0) ; Call report
445 : LD 1, 2(5) ; Load callee result into R1
446 : LDC 2, 3(0) ; Callee frame size
447 : SUB 5, 5, 2 ; Pop back to caller
448 : LDA 7, 450(0) ; Skip ELSE block
449 : LDC 1, 0(0) ; Load boolean-literal into R1
450 : ST 1, 2(5) ; Store function result into frame return slot
451 : LD 6, 0(5) ; Load return address
452 : LDA 7, 0(6) ; Return to caller
453 : LD 1, 2(5) ; Load parameter 'x' into R1
454 : ST 1, 5(5) ; Spill left operand at depth 0
455 : LD 1, 1(5) ; Load parameter 'top' into R1
456 : LD 2, 5(5) ; Restore left operand from depth 0
457 : SUB 1, 2, 1 ; left - right for less-than check
458 : JLT 1, 2(7) ; If R1 < 0, jump to true
459 : LDC 1, 0(0) ; false
460 : LDA 7, 1(7) ; skip setting true
461 : LDC 1, 1(0) ; true
462 : JEQ 1, 523(0) ; If condition is false, jump to ELSE
463 : LD 1, 2(5) ; Load parameter 'x' into R1
464 : LDA 4, 6(5) ; Recompute callee base from caller size
465 : ST 1, 1(4) ; Store argument 0 in callee frame
466 : LDA 4, 6(5) ; Recompute callee base from caller size
467 : LDA 6, 471(0) ; Return address
468 : ST 6, 0(4) ; Store return address into callee frame
469 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
470 : LDA 7, 408(0) ; Call isCircularPrime
471 : LD 1, 2(5) ; Load callee result into R1
472 : LDC 2, 4(0) ; Callee frame size
473 : SUB 5, 5, 2 ; Pop back to caller
474 : JEQ 1, 501(0) ; If condition is false, jump to ELSE
475 : LD 1, 1(5) ; Load parameter 'top' into R1
476 : LDA 4, 6(5) ; Recompute callee base from caller size
477 : ST 1, 1(4) ; Store argument 0 in callee frame
478 : LD 1, 2(5) ; Load parameter 'x' into R1
479 : ST 1, 5(5) ; Spill left operand at depth 0
480 : LDC 1, 1(0) ; Load integer-literal into R1
481 : LD 2, 5(5) ; Restore left operand from depth 0
482 : ADD 1, 2, 1 ; R1 = left + right
483 : LDA 4, 6(5) ; Recompute callee base from caller size
484 : ST 1, 2(4) ; Store argument 1 in callee frame
485 : LD 1, 3(5) ; Load parameter 'count' into R1
486 : ST 1, 5(5) ; Spill left operand at depth 0
487 : LDC 1, 1(0) ; Load integer-literal into R1
488 : LD 2, 5(5) ; Restore left operand from depth 0
489 : ADD 1, 2, 1 ; R1 = left + right
490 : LDA 4, 6(5) ; Recompute callee base from caller size
491 : ST 1, 3(4) ; Store argument 2 in callee frame
492 : LDA 4, 6(5) ; Recompute callee base from caller size
493 : LDA 6, 497(0) ; Return address
494 : ST 6, 0(4) ; Store return address into callee frame
495 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
496 : LDA 7, 453(0) ; Call circularPrimesToHelper
497 : LD 1, 4(5) ; Load callee result into R1
498 : LDC 2, 6(0) ; Callee frame size
499 : SUB 5, 5, 2 ; Pop back to caller
500 : LDA 7, 522(0) ; Skip ELSE block
501 : LD 1, 1(5) ; Load parameter 'top' into R1
502 : LDA 4, 6(5) ; Recompute callee base from caller size
503 : ST 1, 1(4) ; Store argument 0 in callee frame
504 : LD 1, 2(5) ; Load parameter 'x' into R1
505 : ST 1, 5(5) ; Spill left operand at depth 0
506 : LDC 1, 1(0) ; Load integer-literal into R1
507 : LD 2, 5(5) ; Restore left operand from depth 0
508 : ADD 1, 2, 1 ; R1 = left + right
509 : LDA 4, 6(5) ; Recompute callee base from caller size
510 : ST 1, 2(4) ; Store argument 1 in callee frame
511 : LD 1, 3(5) ; Load parameter 'count' into R1
512 : LDA 4, 6(5) ; Recompute callee base from caller size
513 : ST 1, 3(4) ; Store argument 2 in callee frame
514 : LDA 4, 6(5) ; Recompute callee base from caller size
515 : LDA 6, 519(0) ; Return address
516 : ST 6, 0(4) ; Store return address into callee frame
517 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
518 : LDA 7, 453(0) ; Call circularPrimesToHelper
519 : LD 1, 4(5) ; Load callee result into R1
520 : LDC 2, 6(0) ; Callee frame size
521 : SUB 5, 5, 2 ; Pop back to caller
522 : LDA 7, 524(0) ; Skip ELSE block
523 : LD 1, 3(5) ; Load parameter 'count' into R1
524 : ST 1, 4(5) ; Store function result into frame return slot
525 : LD 6, 0(5) ; Load return address
526 : LDA 7, 0(6) ; Return to caller
527 : LD 1, 1(5) ; Load parameter 'x' into R1
528 : ST 1, 3(5) ; Spill left operand at depth 0
529 : LDC 1, 1(0) ; Load integer-literal into R1
530 : LD 2, 3(5) ; Restore left operand from depth 0
531 : ADD 1, 2, 1 ; R1 = left + right
532 : LDA 4, 4(5) ; Recompute callee base from caller size
533 : ST 1, 1(4) ; Store argument 0 in callee frame
534 : LDC 1, 2(0) ; Load integer-literal into R1
535 : LDA 4, 4(5) ; Recompute callee base from caller size
536 : ST 1, 2(4) ; Store argument 1 in callee frame
537 : LDC 1, 0(0) ; Load integer-literal into R1
538 : LDA 4, 4(5) ; Recompute callee base from caller size
539 : ST 1, 3(4) ; Store argument 2 in callee frame
540 : LDA 4, 4(5) ; Recompute callee base from caller size
541 : LDA 6, 545(0) ; Return address
542 : ST 6, 0(4) ; Store return address into callee frame
543 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
544 : LDA 7, 453(0) ; Call circularPrimesToHelper
545 : LD 1, 4(5) ; Load callee result into R1
546 : LDC 2, 6(0) ; Callee frame size
547 : SUB 5, 5, 2 ; Pop back to caller
548 : ST 1, 2(5) ; Store function result into frame return slot
549 : LD 6, 0(5) ; Load return address
550 : LDA 7, 0(6) ; Return to caller
