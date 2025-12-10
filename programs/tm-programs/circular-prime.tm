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
19 : LDA 7, 525(0) ; Call circularPrimesTo
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 4(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s return slot
24 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load root return address from main frame
27 : LDA 7, 0(6) ; Return from main to runtime epilogue
28 : LD 1, 1(5) ; Load parameter 'num' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 2(5) ; Load parameter 'den' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LD 1, 1(5) ; Load parameter 'num' into R1
39 : LDA 7, 58(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : ST 1, 4(5) ; Spill left operand at depth 0
42 : LD 1, 2(5) ; Load parameter 'den' into R1
43 : LD 2, 4(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; R1 = left - right
45 : LDA 4, 5(5) ; Recompute callee base from caller size
46 : ST 1, 1(4) ; Store argument 0 in callee frame
47 : LD 1, 2(5) ; Load parameter 'den' into R1
48 : LDA 4, 5(5) ; Recompute callee base from caller size
49 : ST 1, 2(4) ; Store argument 1 in callee frame
50 : LDA 4, 5(5) ; Recompute callee base from caller size
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return address into callee frame
53 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
54 : LDA 7, 28(0) ; Call mod
55 : LD 1, 3(5) ; Load callee result into R1
56 : LDC 2, 5(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop back to caller
58 : ST 1, 3(5) ; Store function result into frame return slot
59 : LD 6, 0(5) ; Load return address
60 : LDA 7, 0(6) ; Return to caller
61 : LD 1, 2(5) ; Load parameter 'b' into R1
62 : LDA 4, 5(5) ; Recompute callee base from caller size
63 : ST 1, 1(4) ; Store argument 0 in callee frame
64 : LD 1, 1(5) ; Load parameter 'a' into R1
65 : LDA 4, 5(5) ; Recompute callee base from caller size
66 : ST 1, 2(4) ; Store argument 1 in callee frame
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return address into callee frame
70 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
71 : LDA 7, 28(0) ; Call mod
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 5(0) ; Callee frame size
74 : SUB 5, 5, 2 ; Pop back to caller
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LDC 1, 0(0) ; Load integer-literal into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'i' into R1
87 : ST 1, 4(5) ; Spill left operand at depth 0
88 : LD 1, 2(5) ; Load parameter 'n' into R1
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 132(0) ; If condition is false, jump to ELSE
96 : LD 1, 1(5) ; Load parameter 'i' into R1
97 : LDA 4, 6(5) ; Recompute callee base from caller size
98 : ST 1, 1(4) ; Store argument 0 in callee frame
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : LDA 4, 6(5) ; Recompute callee base from caller size
101 : ST 1, 2(4) ; Store argument 1 in callee frame
102 : LDA 4, 6(5) ; Recompute callee base from caller size
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return address into callee frame
105 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
106 : LDA 7, 61(0) ; Call divides
107 : LD 1, 3(5) ; Load callee result into R1
108 : LDC 2, 5(0) ; Callee frame size
109 : SUB 5, 5, 2 ; Pop back to caller
110 : ST 1, 4(5) ; Spill left operand at depth 0
111 : LD 1, 1(5) ; Load parameter 'i' into R1
112 : ST 1, 5(5) ; Spill left operand at depth 1
113 : LDC 1, 1(0) ; Load integer-literal into R1
114 : LD 2, 5(5) ; Restore left operand from depth 1
115 : ADD 1, 2, 1 ; R1 = left + right
116 : LDA 4, 6(5) ; Recompute callee base from caller size
117 : ST 1, 1(4) ; Store argument 0 in callee frame
118 : LD 1, 2(5) ; Load parameter 'n' into R1
119 : LDA 4, 6(5) ; Recompute callee base from caller size
120 : ST 1, 2(4) ; Store argument 1 in callee frame
121 : LDA 4, 6(5) ; Recompute callee base from caller size
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return address into callee frame
124 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
125 : LDA 7, 86(0) ; Call hasDivisorFrom
126 : LD 1, 3(5) ; Load callee result into R1
127 : LDC 2, 6(0) ; Callee frame size
128 : SUB 5, 5, 2 ; Pop back to caller
129 : LD 2, 4(5) ; Restore left operand from depth 0
130 : ADD 1, 2, 1 ; R1 = left OR right
131 : LDA 7, 133(0) ; Skip ELSE block
132 : LDC 1, 0(0) ; Load boolean-literal into R1
133 : ST 1, 3(5) ; Store function result into frame return slot
134 : LD 6, 0(5) ; Load return address
135 : LDA 7, 0(6) ; Return to caller
136 : LDC 1, 2(0) ; Load integer-literal into R1
137 : LDA 4, 3(5) ; Recompute callee base from caller size
138 : ST 1, 1(4) ; Store argument 0 in callee frame
139 : LD 1, 1(5) ; Load parameter 'n' into R1
140 : LDA 4, 3(5) ; Recompute callee base from caller size
141 : ST 1, 2(4) ; Store argument 1 in callee frame
142 : LDA 4, 3(5) ; Recompute callee base from caller size
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return address into callee frame
145 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
146 : LDA 7, 86(0) ; Call hasDivisorFrom
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 6(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop back to caller
150 : LDC 2, 1(0) ; Load 1 into R2
151 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
152 : ST 1, 2(5) ; Store function result into frame return slot
153 : LD 6, 0(5) ; Load return address
154 : LDA 7, 0(6) ; Return to caller
155 : LD 1, 1(5) ; Load parameter 'x' into R1
156 : ST 1, 4(5) ; Spill left operand at depth 0
157 : LDC 1, 10(0) ; Load integer-literal into R1
158 : LD 2, 4(5) ; Restore left operand from depth 0
159 : DIV 1, 2, 1 ; R1 = left / right
160 : ST 1, 4(5) ; Spill left operand at depth 0
161 : LDC 1, 0(0) ; Load integer-literal into R1
162 : LD 2, 4(5) ; Restore left operand from depth 0
163 : SUB 1, 2, 1 ; left - right for equality check
164 : JEQ 1, 2(7) ; If R1 == 0, jump to true
165 : LDC 1, 0(0) ; false
166 : LDA 7, 1(7) ; skip setting true
167 : LDC 1, 1(0) ; true
168 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
169 : LD 1, 2(5) ; Load parameter 'y' into R1
170 : LDA 7, 193(0) ; Skip ELSE block
171 : LD 1, 1(5) ; Load parameter 'x' into R1
172 : ST 1, 4(5) ; Spill left operand at depth 0
173 : LDC 1, 10(0) ; Load integer-literal into R1
174 : LD 2, 4(5) ; Restore left operand from depth 0
175 : DIV 1, 2, 1 ; R1 = left / right
176 : LDA 4, 5(5) ; Recompute callee base from caller size
177 : ST 1, 1(4) ; Store argument 0 in callee frame
178 : LD 1, 2(5) ; Load parameter 'y' into R1
179 : ST 1, 4(5) ; Spill left operand at depth 0
180 : LDC 1, 1(0) ; Load integer-literal into R1
181 : LD 2, 4(5) ; Restore left operand from depth 0
182 : ADD 1, 2, 1 ; R1 = left + right
183 : LDA 4, 5(5) ; Recompute callee base from caller size
184 : ST 1, 2(4) ; Store argument 1 in callee frame
185 : LDA 4, 5(5) ; Recompute callee base from caller size
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return address into callee frame
188 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
189 : LDA 7, 155(0) ; Call log10Helper
190 : LD 1, 3(5) ; Load callee result into R1
191 : LDC 2, 5(0) ; Callee frame size
192 : SUB 5, 5, 2 ; Pop back to caller
193 : ST 1, 3(5) ; Store function result into frame return slot
194 : LD 6, 0(5) ; Load return address
195 : LDA 7, 0(6) ; Return to caller
196 : LD 1, 1(5) ; Load parameter 'x' into R1
197 : LDA 4, 3(5) ; Recompute callee base from caller size
198 : ST 1, 1(4) ; Store argument 0 in callee frame
199 : LDC 1, 0(0) ; Load integer-literal into R1
200 : LDA 4, 3(5) ; Recompute callee base from caller size
201 : ST 1, 2(4) ; Store argument 1 in callee frame
202 : LDA 4, 3(5) ; Recompute callee base from caller size
203 : LDA 6, 207(0) ; Return address
204 : ST 6, 0(4) ; Store return address into callee frame
205 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
206 : LDA 7, 155(0) ; Call log10Helper
207 : LD 1, 3(5) ; Load callee result into R1
208 : LDC 2, 5(0) ; Callee frame size
209 : SUB 5, 5, 2 ; Pop back to caller
210 : ST 1, 2(5) ; Store function result into frame return slot
211 : LD 6, 0(5) ; Load return address
212 : LDA 7, 0(6) ; Return to caller
213 : LD 1, 2(5) ; Load parameter 'power' into R1
214 : ST 1, 5(5) ; Spill left operand at depth 0
215 : LDC 1, 0(0) ; Load integer-literal into R1
216 : LD 2, 5(5) ; Restore left operand from depth 0
217 : SUB 1, 2, 1 ; left - right for equality check
218 : JEQ 1, 2(7) ; If R1 == 0, jump to true
219 : LDC 1, 0(0) ; false
220 : LDA 7, 1(7) ; skip setting true
221 : LDC 1, 1(0) ; true
222 : JEQ 1, 225(0) ; If condition is false, jump to ELSE
223 : LDC 1, 1(0) ; Load integer-literal into R1
224 : LDA 7, 262(0) ; Skip ELSE block
225 : LD 1, 2(5) ; Load parameter 'power' into R1
226 : ST 1, 5(5) ; Spill left operand at depth 0
227 : LDC 1, 1(0) ; Load integer-literal into R1
228 : LD 2, 5(5) ; Restore left operand from depth 0
229 : SUB 1, 2, 1 ; left - right for equality check
230 : JEQ 1, 2(7) ; If R1 == 0, jump to true
231 : LDC 1, 0(0) ; false
232 : LDA 7, 1(7) ; skip setting true
233 : LDC 1, 1(0) ; true
234 : JEQ 1, 237(0) ; If condition is false, jump to ELSE
235 : LD 1, 3(5) ; Load parameter 'total' into R1
236 : LDA 7, 262(0) ; Skip ELSE block
237 : LD 1, 1(5) ; Load parameter 'base' into R1
238 : LDA 4, 6(5) ; Recompute callee base from caller size
239 : ST 1, 1(4) ; Store argument 0 in callee frame
240 : LD 1, 2(5) ; Load parameter 'power' into R1
241 : ST 1, 5(5) ; Spill left operand at depth 0
242 : LDC 1, 1(0) ; Load integer-literal into R1
243 : LD 2, 5(5) ; Restore left operand from depth 0
244 : SUB 1, 2, 1 ; R1 = left - right
245 : LDA 4, 6(5) ; Recompute callee base from caller size
246 : ST 1, 2(4) ; Store argument 1 in callee frame
247 : LD 1, 1(5) ; Load parameter 'base' into R1
248 : ST 1, 5(5) ; Spill left operand at depth 0
249 : LD 1, 3(5) ; Load parameter 'total' into R1
250 : LD 2, 5(5) ; Restore left operand from depth 0
251 : MUL 1, 2, 1 ; R1 = left * right
252 : LDA 4, 6(5) ; Recompute callee base from caller size
253 : ST 1, 3(4) ; Store argument 2 in callee frame
254 : LDA 4, 6(5) ; Recompute callee base from caller size
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return address into callee frame
257 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
258 : LDA 7, 213(0) ; Call powHelper
259 : LD 1, 4(5) ; Load callee result into R1
260 : LDC 2, 6(0) ; Callee frame size
261 : SUB 5, 5, 2 ; Pop back to caller
262 : ST 1, 4(5) ; Store function result into frame return slot
263 : LD 6, 0(5) ; Load return address
264 : LDA 7, 0(6) ; Return to caller
265 : LD 1, 1(5) ; Load parameter 'x' into R1
266 : LDA 4, 4(5) ; Recompute callee base from caller size
267 : ST 1, 1(4) ; Store argument 0 in callee frame
268 : LD 1, 2(5) ; Load parameter 'y' into R1
269 : LDA 4, 4(5) ; Recompute callee base from caller size
270 : ST 1, 2(4) ; Store argument 1 in callee frame
271 : LD 1, 1(5) ; Load parameter 'x' into R1
272 : LDA 4, 4(5) ; Recompute callee base from caller size
273 : ST 1, 3(4) ; Store argument 2 in callee frame
274 : LDA 4, 4(5) ; Recompute callee base from caller size
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(4) ; Store return address into callee frame
277 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
278 : LDA 7, 213(0) ; Call powHelper
279 : LD 1, 4(5) ; Load callee result into R1
280 : LDC 2, 6(0) ; Callee frame size
281 : SUB 5, 5, 2 ; Pop back to caller
282 : ST 1, 3(5) ; Store function result into frame return slot
283 : LD 6, 0(5) ; Load return address
284 : LDA 7, 0(6) ; Return to caller
285 : LD 1, 1(5) ; Load parameter 'x' into R1
286 : ST 1, 3(5) ; Spill left operand at depth 0
287 : LDC 1, 10(0) ; Load integer-literal into R1
288 : LD 2, 3(5) ; Restore left operand from depth 0
289 : DIV 1, 2, 1 ; R1 = left / right
290 : ST 1, 3(5) ; Spill left operand at depth 0
291 : LD 1, 1(5) ; Load parameter 'x' into R1
292 : LDA 4, 5(5) ; Recompute callee base from caller size
293 : ST 1, 1(4) ; Store argument 0 in callee frame
294 : LDC 1, 10(0) ; Load integer-literal into R1
295 : LDA 4, 5(5) ; Recompute callee base from caller size
296 : ST 1, 2(4) ; Store argument 1 in callee frame
297 : LDA 4, 5(5) ; Recompute callee base from caller size
298 : LDA 6, 302(0) ; Return address
299 : ST 6, 0(4) ; Store return address into callee frame
300 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
301 : LDA 7, 28(0) ; Call mod
302 : LD 1, 3(5) ; Load callee result into R1
303 : LDC 2, 5(0) ; Callee frame size
304 : SUB 5, 5, 2 ; Pop back to caller
305 : ST 1, 4(5) ; Spill left operand at depth 1
306 : LDC 1, 10(0) ; Load integer-literal into R1
307 : LDA 4, 5(5) ; Recompute callee base from caller size
308 : ST 1, 1(4) ; Store argument 0 in callee frame
309 : LD 1, 1(5) ; Load parameter 'x' into R1
310 : LDA 4, 5(5) ; Recompute callee base from caller size
311 : ST 1, 1(4) ; Store argument 0 in callee frame
312 : LDA 4, 5(5) ; Recompute callee base from caller size
313 : LDA 6, 317(0) ; Return address
314 : ST 6, 0(4) ; Store return address into callee frame
315 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
316 : LDA 7, 196(0) ; Call log10
317 : LD 1, 2(5) ; Load callee result into R1
318 : LDC 2, 3(0) ; Callee frame size
319 : SUB 5, 5, 2 ; Pop back to caller
320 : LDA 4, 5(5) ; Recompute callee base from caller size
321 : ST 1, 2(4) ; Store argument 1 in callee frame
322 : LDA 4, 5(5) ; Recompute callee base from caller size
323 : LDA 6, 327(0) ; Return address
324 : ST 6, 0(4) ; Store return address into callee frame
325 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
326 : LDA 7, 265(0) ; Call pow
327 : LD 1, 3(5) ; Load callee result into R1
328 : LDC 2, 4(0) ; Callee frame size
329 : SUB 5, 5, 2 ; Pop back to caller
330 : LD 2, 4(5) ; Restore left operand from depth 1
331 : MUL 1, 2, 1 ; R1 = left * right
332 : LD 2, 3(5) ; Restore left operand from depth 0
333 : ADD 1, 2, 1 ; R1 = left + right
334 : ST 1, 2(5) ; Store function result into frame return slot
335 : LD 6, 0(5) ; Load return address
336 : LDA 7, 0(6) ; Return to caller
337 : LD 1, 1(5) ; Load parameter 'x' into R1
338 : LDA 4, 3(5) ; Recompute callee base from caller size
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return address in callee frame
341 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
342 : LDA 7, 9(0) ; Call built-in print
343 : LDC 2, 3(0) ; Callee frame size
344 : SUB 5, 5, 2 ; Pop back to caller
345 : LDC 1, 1(0) ; Load boolean-literal into R1
346 : ST 1, 2(5) ; Store function result into frame return slot
347 : LD 6, 0(5) ; Load return address
348 : LDA 7, 0(6) ; Return to caller
349 : LD 1, 2(5) ; Load parameter 'turns' into R1
350 : ST 1, 4(5) ; Spill left operand at depth 0
351 : LDC 1, 0(0) ; Load integer-literal into R1
352 : LD 2, 4(5) ; Restore left operand from depth 0
353 : SUB 1, 2, 1 ; left - right for equality check
354 : JEQ 1, 2(7) ; If R1 == 0, jump to true
355 : LDC 1, 0(0) ; false
356 : LDA 7, 1(7) ; skip setting true
357 : LDC 1, 1(0) ; true
358 : JEQ 1, 361(0) ; If condition is false, jump to ELSE
359 : LDC 1, 1(0) ; Load boolean-literal into R1
360 : LDA 7, 403(0) ; Skip ELSE block
361 : LD 1, 1(5) ; Load parameter 'x' into R1
362 : LDA 4, 6(5) ; Recompute callee base from caller size
363 : ST 1, 1(4) ; Store argument 0 in callee frame
364 : LDA 4, 6(5) ; Recompute callee base from caller size
365 : LDA 6, 369(0) ; Return address
366 : ST 6, 0(4) ; Store return address into callee frame
367 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
368 : LDA 7, 136(0) ; Call isPrime
369 : LD 1, 2(5) ; Load callee result into R1
370 : LDC 2, 3(0) ; Callee frame size
371 : SUB 5, 5, 2 ; Pop back to caller
372 : ST 1, 4(5) ; Spill left operand at depth 0
373 : LD 1, 1(5) ; Load parameter 'x' into R1
374 : LDA 4, 6(5) ; Recompute callee base from caller size
375 : ST 1, 1(4) ; Store argument 0 in callee frame
376 : LDA 4, 6(5) ; Recompute callee base from caller size
377 : LDA 6, 381(0) ; Return address
378 : ST 6, 0(4) ; Store return address into callee frame
379 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
380 : LDA 7, 285(0) ; Call rotate
381 : LD 1, 2(5) ; Load callee result into R1
382 : LDC 2, 5(0) ; Callee frame size
383 : SUB 5, 5, 2 ; Pop back to caller
384 : LDA 4, 6(5) ; Recompute callee base from caller size
385 : ST 1, 1(4) ; Store argument 0 in callee frame
386 : LD 1, 2(5) ; Load parameter 'turns' into R1
387 : ST 1, 5(5) ; Spill left operand at depth 1
388 : LDC 1, 1(0) ; Load integer-literal into R1
389 : LD 2, 5(5) ; Restore left operand from depth 1
390 : SUB 1, 2, 1 ; R1 = left - right
391 : LDA 4, 6(5) ; Recompute callee base from caller size
392 : ST 1, 2(4) ; Store argument 1 in callee frame
393 : LDA 4, 6(5) ; Recompute callee base from caller size
394 : LDA 6, 398(0) ; Return address
395 : ST 6, 0(4) ; Store return address into callee frame
396 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
397 : LDA 7, 349(0) ; Call isCircularPrimeHelper
398 : LD 1, 3(5) ; Load callee result into R1
399 : LDC 2, 6(0) ; Callee frame size
400 : SUB 5, 5, 2 ; Pop back to caller
401 : LD 2, 4(5) ; Restore left operand from depth 0
402 : MUL 1, 2, 1 ; R1 = left AND right
403 : ST 1, 3(5) ; Store function result into frame return slot
404 : LD 6, 0(5) ; Load return address
405 : LDA 7, 0(6) ; Return to caller
406 : LD 1, 1(5) ; Load parameter 'x' into R1
407 : LDA 4, 4(5) ; Recompute callee base from caller size
408 : ST 1, 1(4) ; Store argument 0 in callee frame
409 : LD 1, 1(5) ; Load parameter 'x' into R1
410 : LDA 4, 4(5) ; Recompute callee base from caller size
411 : ST 1, 1(4) ; Store argument 0 in callee frame
412 : LDA 4, 4(5) ; Recompute callee base from caller size
413 : LDA 6, 417(0) ; Return address
414 : ST 6, 0(4) ; Store return address into callee frame
415 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
416 : LDA 7, 196(0) ; Call log10
417 : LD 1, 2(5) ; Load callee result into R1
418 : LDC 2, 3(0) ; Callee frame size
419 : SUB 5, 5, 2 ; Pop back to caller
420 : ST 1, 3(5) ; Spill left operand at depth 0
421 : LDC 1, 1(0) ; Load integer-literal into R1
422 : LD 2, 3(5) ; Restore left operand from depth 0
423 : ADD 1, 2, 1 ; R1 = left + right
424 : LDA 4, 4(5) ; Recompute callee base from caller size
425 : ST 1, 2(4) ; Store argument 1 in callee frame
426 : LDA 4, 4(5) ; Recompute callee base from caller size
427 : LDA 6, 431(0) ; Return address
428 : ST 6, 0(4) ; Store return address into callee frame
429 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
430 : LDA 7, 349(0) ; Call isCircularPrimeHelper
431 : LD 1, 3(5) ; Load callee result into R1
432 : LDC 2, 6(0) ; Callee frame size
433 : SUB 5, 5, 2 ; Pop back to caller
434 : JEQ 1, 447(0) ; If condition is false, jump to ELSE
435 : LD 1, 1(5) ; Load parameter 'x' into R1
436 : LDA 4, 4(5) ; Recompute callee base from caller size
437 : ST 1, 1(4) ; Store argument 0 in callee frame
438 : LDA 4, 4(5) ; Recompute callee base from caller size
439 : LDA 6, 443(0) ; Return address
440 : ST 6, 0(4) ; Store return address into callee frame
441 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
442 : LDA 7, 337(0) ; Call report
443 : LD 1, 2(5) ; Load callee result into R1
444 : LDC 2, 3(0) ; Callee frame size
445 : SUB 5, 5, 2 ; Pop back to caller
446 : LDA 7, 448(0) ; Skip ELSE block
447 : LDC 1, 0(0) ; Load boolean-literal into R1
448 : ST 1, 2(5) ; Store function result into frame return slot
449 : LD 6, 0(5) ; Load return address
450 : LDA 7, 0(6) ; Return to caller
451 : LD 1, 2(5) ; Load parameter 'x' into R1
452 : ST 1, 5(5) ; Spill left operand at depth 0
453 : LD 1, 1(5) ; Load parameter 'top' into R1
454 : LD 2, 5(5) ; Restore left operand from depth 0
455 : SUB 1, 2, 1 ; left - right for less-than check
456 : JLT 1, 2(7) ; If R1 < 0, jump to true
457 : LDC 1, 0(0) ; false
458 : LDA 7, 1(7) ; skip setting true
459 : LDC 1, 1(0) ; true
460 : JEQ 1, 521(0) ; If condition is false, jump to ELSE
461 : LD 1, 2(5) ; Load parameter 'x' into R1
462 : LDA 4, 6(5) ; Recompute callee base from caller size
463 : ST 1, 1(4) ; Store argument 0 in callee frame
464 : LDA 4, 6(5) ; Recompute callee base from caller size
465 : LDA 6, 469(0) ; Return address
466 : ST 6, 0(4) ; Store return address into callee frame
467 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
468 : LDA 7, 406(0) ; Call isCircularPrime
469 : LD 1, 2(5) ; Load callee result into R1
470 : LDC 2, 4(0) ; Callee frame size
471 : SUB 5, 5, 2 ; Pop back to caller
472 : JEQ 1, 499(0) ; If condition is false, jump to ELSE
473 : LD 1, 1(5) ; Load parameter 'top' into R1
474 : LDA 4, 6(5) ; Recompute callee base from caller size
475 : ST 1, 1(4) ; Store argument 0 in callee frame
476 : LD 1, 2(5) ; Load parameter 'x' into R1
477 : ST 1, 5(5) ; Spill left operand at depth 0
478 : LDC 1, 1(0) ; Load integer-literal into R1
479 : LD 2, 5(5) ; Restore left operand from depth 0
480 : ADD 1, 2, 1 ; R1 = left + right
481 : LDA 4, 6(5) ; Recompute callee base from caller size
482 : ST 1, 2(4) ; Store argument 1 in callee frame
483 : LD 1, 3(5) ; Load parameter 'count' into R1
484 : ST 1, 5(5) ; Spill left operand at depth 0
485 : LDC 1, 1(0) ; Load integer-literal into R1
486 : LD 2, 5(5) ; Restore left operand from depth 0
487 : ADD 1, 2, 1 ; R1 = left + right
488 : LDA 4, 6(5) ; Recompute callee base from caller size
489 : ST 1, 3(4) ; Store argument 2 in callee frame
490 : LDA 4, 6(5) ; Recompute callee base from caller size
491 : LDA 6, 495(0) ; Return address
492 : ST 6, 0(4) ; Store return address into callee frame
493 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
494 : LDA 7, 451(0) ; Call circularPrimesToHelper
495 : LD 1, 4(5) ; Load callee result into R1
496 : LDC 2, 6(0) ; Callee frame size
497 : SUB 5, 5, 2 ; Pop back to caller
498 : LDA 7, 520(0) ; Skip ELSE block
499 : LD 1, 1(5) ; Load parameter 'top' into R1
500 : LDA 4, 6(5) ; Recompute callee base from caller size
501 : ST 1, 1(4) ; Store argument 0 in callee frame
502 : LD 1, 2(5) ; Load parameter 'x' into R1
503 : ST 1, 5(5) ; Spill left operand at depth 0
504 : LDC 1, 1(0) ; Load integer-literal into R1
505 : LD 2, 5(5) ; Restore left operand from depth 0
506 : ADD 1, 2, 1 ; R1 = left + right
507 : LDA 4, 6(5) ; Recompute callee base from caller size
508 : ST 1, 2(4) ; Store argument 1 in callee frame
509 : LD 1, 3(5) ; Load parameter 'count' into R1
510 : LDA 4, 6(5) ; Recompute callee base from caller size
511 : ST 1, 3(4) ; Store argument 2 in callee frame
512 : LDA 4, 6(5) ; Recompute callee base from caller size
513 : LDA 6, 517(0) ; Return address
514 : ST 6, 0(4) ; Store return address into callee frame
515 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
516 : LDA 7, 451(0) ; Call circularPrimesToHelper
517 : LD 1, 4(5) ; Load callee result into R1
518 : LDC 2, 6(0) ; Callee frame size
519 : SUB 5, 5, 2 ; Pop back to caller
520 : LDA 7, 522(0) ; Skip ELSE block
521 : LD 1, 3(5) ; Load parameter 'count' into R1
522 : ST 1, 4(5) ; Store function result into frame return slot
523 : LD 6, 0(5) ; Load return address
524 : LDA 7, 0(6) ; Return to caller
525 : LD 1, 1(5) ; Load parameter 'x' into R1
526 : ST 1, 3(5) ; Spill left operand at depth 0
527 : LDC 1, 1(0) ; Load integer-literal into R1
528 : LD 2, 3(5) ; Restore left operand from depth 0
529 : ADD 1, 2, 1 ; R1 = left + right
530 : LDA 4, 4(5) ; Recompute callee base from caller size
531 : ST 1, 1(4) ; Store argument 0 in callee frame
532 : LDC 1, 2(0) ; Load integer-literal into R1
533 : LDA 4, 4(5) ; Recompute callee base from caller size
534 : ST 1, 2(4) ; Store argument 1 in callee frame
535 : LDC 1, 0(0) ; Load integer-literal into R1
536 : LDA 4, 4(5) ; Recompute callee base from caller size
537 : ST 1, 3(4) ; Store argument 2 in callee frame
538 : LDA 4, 4(5) ; Recompute callee base from caller size
539 : LDA 6, 543(0) ; Return address
540 : ST 6, 0(4) ; Store return address into callee frame
541 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
542 : LDA 7, 451(0) ; Call circularPrimesToHelper
543 : LD 1, 4(5) ; Load callee result into R1
544 : LDC 2, 6(0) ; Callee frame size
545 : SUB 5, 5, 2 ; Pop back to caller
546 : ST 1, 2(5) ; Store function result into frame return slot
547 : LD 6, 0(5) ; Load return address
548 : LDA 7, 0(6) ; Return to caller
