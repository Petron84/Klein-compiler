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
13 : LDA 4, 4(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 524(0) ; Call circularPrimesTo
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 4(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD 1, 2(5) ; Load main return value into R1
25 : LD 6, 0(5) ; Load main return address
26 : LDA 7, 0(6) ; Return from main
27 : LD 1, 1(5) ; Load parameter 'num' into R1
28 : ST 1, 4(5) ; Spill left operand at depth 0
29 : LD 1, 2(5) ; Load parameter 'den' into R1
30 : LD 2, 4(5) ; Restore left operand from depth 0
31 : SUB 1, 2, 1 ; left - right for less-than check
32 : JLT 1, 3(7) ; If R1 < 0, jump to true
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
44 : LDA 4, 5(5) ; Recompute callee base from callee size
45 : ST 1, 1(4) ; Store argument 0 in callee
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : LDA 4, 5(5) ; Recompute callee base from callee size
48 : ST 1, 2(4) ; Store argument 1 in callee
49 : LDA 4, 5(5) ; Recompute callee base from callee size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
53 : LDA 7, 27(0) ; Call mod
54 : LD 1, 3(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop callee frame
57 : ST 1, 3(5) ; Store function result into frame return slot
58 : LD 6, 0(5) ; Load return address
59 : LDA 7, 0(6) ; Return to caller
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : LDA 4, 5(5) ; Recompute callee base from callee size
62 : ST 1, 1(4) ; Store argument 0 in callee
63 : LD 1, 1(5) ; Load parameter 'a' into R1
64 : LDA 4, 5(5) ; Recompute callee base from callee size
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LDA 4, 5(5) ; Recompute callee base from callee size
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
70 : LDA 7, 27(0) ; Call mod
71 : LD 1, 3(5) ; Load callee result into R1
72 : LDC 2, 5(0) ; Callee frame size
73 : SUB 5, 5, 2 ; Pop callee frame
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LDC 1, 0(0) ; Load integer-literal into R1
76 : LD 2, 4(5) ; Restore left operand from depth 0
77 : SUB 1, 2, 1 ; left - right for equality check
78 : JEQ 1, 3(7) ; If R1 == 0, jump to true
79 : LDC 1, 0(0) ; false
80 : LDA 7, 1(7) ; skip setting true
81 : LDC 1, 1(0) ; true
82 : ST 1, 3(5) ; Store function result into frame return slot
83 : LD 6, 0(5) ; Load return address
84 : LDA 7, 0(6) ; Return to caller
85 : LD 1, 1(5) ; Load parameter 'i' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LD 1, 2(5) ; Load parameter 'n' into R1
88 : LD 2, 4(5) ; Restore left operand from depth 0
89 : SUB 1, 2, 1 ; left - right for less-than check
90 : JLT 1, 3(7) ; If R1 < 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : JEQ 1, 131(0) ; If condition is false, jump to ELSE
95 : LD 1, 1(5) ; Load parameter 'i' into R1
96 : LDA 4, 5(5) ; Recompute callee base from callee size
97 : ST 1, 1(4) ; Store argument 0 in callee
98 : LD 1, 2(5) ; Load parameter 'n' into R1
99 : LDA 4, 5(5) ; Recompute callee base from callee size
100 : ST 1, 2(4) ; Store argument 1 in callee
101 : LDA 4, 5(5) ; Recompute callee base from callee size
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
105 : LDA 7, 60(0) ; Call divides
106 : LD 1, 3(5) ; Load callee result into R1
107 : LDC 2, 5(0) ; Callee frame size
108 : SUB 5, 5, 2 ; Pop callee frame
109 : ST 1, 4(5) ; Spill left operand at depth 0
110 : LD 1, 1(5) ; Load parameter 'i' into R1
111 : ST 1, 5(5) ; Spill left operand at depth 1
112 : LDC 1, 1(0) ; Load integer-literal into R1
113 : LD 2, 5(5) ; Restore left operand from depth 1
114 : ADD 1, 2, 1 ; R1 = left + right
115 : LDA 4, 6(5) ; Recompute callee base from callee size
116 : ST 1, 1(4) ; Store argument 0 in callee
117 : LD 1, 2(5) ; Load parameter 'n' into R1
118 : LDA 4, 6(5) ; Recompute callee base from callee size
119 : ST 1, 2(4) ; Store argument 1 in callee
120 : LDA 4, 6(5) ; Recompute callee base from callee size
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
124 : LDA 7, 85(0) ; Call hasDivisorFrom
125 : LD 1, 3(5) ; Load callee result into R1
126 : LDC 2, 6(0) ; Callee frame size
127 : SUB 5, 5, 2 ; Pop callee frame
128 : LD 2, 4(5) ; Restore left operand from depth 0
129 : ADD 1, 2, 1 ; R1 = left OR right
130 : LDA 7, 132(0) ; Skip ELSE block
131 : LDC 1, 0(0) ; Load boolean-literal into R1
132 : ST 1, 3(5) ; Store function result into frame return slot
133 : LD 6, 0(5) ; Load return address
134 : LDA 7, 0(6) ; Return to caller
135 : LDC 1, 2(0) ; Load integer-literal into R1
136 : LDA 4, 6(5) ; Recompute callee base from callee size
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : LDA 4, 6(5) ; Recompute callee base from callee size
140 : ST 1, 2(4) ; Store argument 1 in callee
141 : LDA 4, 6(5) ; Recompute callee base from callee size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return in callee frame
144 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
145 : LDA 7, 85(0) ; Call hasDivisorFrom
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 6(0) ; Callee frame size
148 : SUB 5, 5, 2 ; Pop callee frame
149 : LDC 2, 1(0) ; Load 1 into R2
150 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
151 : ST 1, 2(5) ; Store function result into frame return slot
152 : LD 6, 0(5) ; Load return address
153 : LDA 7, 0(6) ; Return to caller
154 : LD 1, 1(5) ; Load parameter 'x' into R1
155 : ST 1, 4(5) ; Spill left operand at depth 0
156 : LDC 1, 10(0) ; Load integer-literal into R1
157 : LD 2, 4(5) ; Restore left operand from depth 0
158 : DIV 1, 2, 1 ; R1 = left / right
159 : ST 1, 4(5) ; Spill left operand at depth 0
160 : LDC 1, 0(0) ; Load integer-literal into R1
161 : LD 2, 4(5) ; Restore left operand from depth 0
162 : SUB 1, 2, 1 ; left - right for equality check
163 : JEQ 1, 3(7) ; If R1 == 0, jump to true
164 : LDC 1, 0(0) ; false
165 : LDA 7, 1(7) ; skip setting true
166 : LDC 1, 1(0) ; true
167 : JEQ 1, 170(0) ; If condition is false, jump to ELSE
168 : LD 1, 2(5) ; Load parameter 'y' into R1
169 : LDA 7, 192(0) ; Skip ELSE block
170 : LD 1, 1(5) ; Load parameter 'x' into R1
171 : ST 1, 4(5) ; Spill left operand at depth 0
172 : LDC 1, 10(0) ; Load integer-literal into R1
173 : LD 2, 4(5) ; Restore left operand from depth 0
174 : DIV 1, 2, 1 ; R1 = left / right
175 : LDA 4, 5(5) ; Recompute callee base from callee size
176 : ST 1, 1(4) ; Store argument 0 in callee
177 : LD 1, 2(5) ; Load parameter 'y' into R1
178 : ST 1, 4(5) ; Spill left operand at depth 0
179 : LDC 1, 1(0) ; Load integer-literal into R1
180 : LD 2, 4(5) ; Restore left operand from depth 0
181 : ADD 1, 2, 1 ; R1 = left + right
182 : LDA 4, 5(5) ; Recompute callee base from callee size
183 : ST 1, 2(4) ; Store argument 1 in callee
184 : LDA 4, 5(5) ; Recompute callee base from callee size
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return in callee frame
187 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
188 : LDA 7, 154(0) ; Call log10Helper
189 : LD 1, 3(5) ; Load callee result into R1
190 : LDC 2, 5(0) ; Callee frame size
191 : SUB 5, 5, 2 ; Pop callee frame
192 : ST 1, 3(5) ; Store function result into frame return slot
193 : LD 6, 0(5) ; Load return address
194 : LDA 7, 0(6) ; Return to caller
195 : LD 1, 1(5) ; Load parameter 'x' into R1
196 : LDA 4, 5(5) ; Recompute callee base from callee size
197 : ST 1, 1(4) ; Store argument 0 in callee
198 : LDC 1, 0(0) ; Load integer-literal into R1
199 : LDA 4, 5(5) ; Recompute callee base from callee size
200 : ST 1, 2(4) ; Store argument 1 in callee
201 : LDA 4, 5(5) ; Recompute callee base from callee size
202 : LDA 6, 206(0) ; Return address
203 : ST 6, 0(4) ; Store return in callee frame
204 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
205 : LDA 7, 154(0) ; Call log10Helper
206 : LD 1, 3(5) ; Load callee result into R1
207 : LDC 2, 5(0) ; Callee frame size
208 : SUB 5, 5, 2 ; Pop callee frame
209 : ST 1, 2(5) ; Store function result into frame return slot
210 : LD 6, 0(5) ; Load return address
211 : LDA 7, 0(6) ; Return to caller
212 : LD 1, 2(5) ; Load parameter 'power' into R1
213 : ST 1, 5(5) ; Spill left operand at depth 0
214 : LDC 1, 0(0) ; Load integer-literal into R1
215 : LD 2, 5(5) ; Restore left operand from depth 0
216 : SUB 1, 2, 1 ; left - right for equality check
217 : JEQ 1, 3(7) ; If R1 == 0, jump to true
218 : LDC 1, 0(0) ; false
219 : LDA 7, 1(7) ; skip setting true
220 : LDC 1, 1(0) ; true
221 : JEQ 1, 224(0) ; If condition is false, jump to ELSE
222 : LDC 1, 1(0) ; Load integer-literal into R1
223 : LDA 7, 261(0) ; Skip ELSE block
224 : LD 1, 2(5) ; Load parameter 'power' into R1
225 : ST 1, 5(5) ; Spill left operand at depth 0
226 : LDC 1, 1(0) ; Load integer-literal into R1
227 : LD 2, 5(5) ; Restore left operand from depth 0
228 : SUB 1, 2, 1 ; left - right for equality check
229 : JEQ 1, 3(7) ; If R1 == 0, jump to true
230 : LDC 1, 0(0) ; false
231 : LDA 7, 1(7) ; skip setting true
232 : LDC 1, 1(0) ; true
233 : JEQ 1, 236(0) ; If condition is false, jump to ELSE
234 : LD 1, 3(5) ; Load parameter 'total' into R1
235 : LDA 7, 261(0) ; Skip ELSE block
236 : LD 1, 1(5) ; Load parameter 'base' into R1
237 : LDA 4, 6(5) ; Recompute callee base from callee size
238 : ST 1, 1(4) ; Store argument 0 in callee
239 : LD 1, 2(5) ; Load parameter 'power' into R1
240 : ST 1, 5(5) ; Spill left operand at depth 0
241 : LDC 1, 1(0) ; Load integer-literal into R1
242 : LD 2, 5(5) ; Restore left operand from depth 0
243 : SUB 1, 2, 1 ; R1 = left - right
244 : LDA 4, 6(5) ; Recompute callee base from callee size
245 : ST 1, 2(4) ; Store argument 1 in callee
246 : LD 1, 1(5) ; Load parameter 'base' into R1
247 : ST 1, 5(5) ; Spill left operand at depth 0
248 : LD 1, 3(5) ; Load parameter 'total' into R1
249 : LD 2, 5(5) ; Restore left operand from depth 0
250 : MUL 1, 2, 1 ; R1 = left * right
251 : LDA 4, 6(5) ; Recompute callee base from callee size
252 : ST 1, 3(4) ; Store argument 2 in callee
253 : LDA 4, 6(5) ; Recompute callee base from callee size
254 : LDA 6, 258(0) ; Return address
255 : ST 6, 0(4) ; Store return in callee frame
256 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
257 : LDA 7, 212(0) ; Call powHelper
258 : LD 1, 4(5) ; Load callee result into R1
259 : LDC 2, 6(0) ; Callee frame size
260 : SUB 5, 5, 2 ; Pop callee frame
261 : ST 1, 4(5) ; Store function result into frame return slot
262 : LD 6, 0(5) ; Load return address
263 : LDA 7, 0(6) ; Return to caller
264 : LD 1, 1(5) ; Load parameter 'x' into R1
265 : LDA 4, 6(5) ; Recompute callee base from callee size
266 : ST 1, 1(4) ; Store argument 0 in callee
267 : LD 1, 2(5) ; Load parameter 'y' into R1
268 : LDA 4, 6(5) ; Recompute callee base from callee size
269 : ST 1, 2(4) ; Store argument 1 in callee
270 : LD 1, 1(5) ; Load parameter 'x' into R1
271 : LDA 4, 6(5) ; Recompute callee base from callee size
272 : ST 1, 3(4) ; Store argument 2 in callee
273 : LDA 4, 6(5) ; Recompute callee base from callee size
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
277 : LDA 7, 212(0) ; Call powHelper
278 : LD 1, 4(5) ; Load callee result into R1
279 : LDC 2, 6(0) ; Callee frame size
280 : SUB 5, 5, 2 ; Pop callee frame
281 : ST 1, 3(5) ; Store function result into frame return slot
282 : LD 6, 0(5) ; Load return address
283 : LDA 7, 0(6) ; Return to caller
284 : LD 1, 1(5) ; Load parameter 'x' into R1
285 : ST 1, 3(5) ; Spill left operand at depth 0
286 : LDC 1, 10(0) ; Load integer-literal into R1
287 : LD 2, 3(5) ; Restore left operand from depth 0
288 : DIV 1, 2, 1 ; R1 = left / right
289 : ST 1, 3(5) ; Spill left operand at depth 0
290 : LD 1, 1(5) ; Load parameter 'x' into R1
291 : LDA 4, 5(5) ; Recompute callee base from callee size
292 : ST 1, 1(4) ; Store argument 0 in callee
293 : LDC 1, 10(0) ; Load integer-literal into R1
294 : LDA 4, 5(5) ; Recompute callee base from callee size
295 : ST 1, 2(4) ; Store argument 1 in callee
296 : LDA 4, 5(5) ; Recompute callee base from callee size
297 : LDA 6, 301(0) ; Return address
298 : ST 6, 0(4) ; Store return in callee frame
299 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
300 : LDA 7, 27(0) ; Call mod
301 : LD 1, 3(5) ; Load callee result into R1
302 : LDC 2, 5(0) ; Callee frame size
303 : SUB 5, 5, 2 ; Pop callee frame
304 : ST 1, 4(5) ; Spill left operand at depth 1
305 : LDC 1, 10(0) ; Load integer-literal into R1
306 : LDA 4, 4(5) ; Recompute callee base from callee size
307 : ST 1, 1(4) ; Store argument 0 in callee
308 : LD 1, 1(5) ; Load parameter 'x' into R1
309 : LDA 4, 3(5) ; Recompute callee base from callee size
310 : ST 1, 1(4) ; Store argument 0 in callee
311 : LDA 4, 3(5) ; Recompute callee base from callee size
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return in callee frame
314 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
315 : LDA 7, 195(0) ; Call log10
316 : LD 1, 2(5) ; Load callee result into R1
317 : LDC 2, 3(0) ; Callee frame size
318 : SUB 5, 5, 2 ; Pop callee frame
319 : LDA 4, 4(5) ; Recompute callee base from callee size
320 : ST 1, 2(4) ; Store argument 1 in callee
321 : LDA 4, 4(5) ; Recompute callee base from callee size
322 : LDA 6, 326(0) ; Return address
323 : ST 6, 0(4) ; Store return in callee frame
324 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
325 : LDA 7, 264(0) ; Call pow
326 : LD 1, 3(5) ; Load callee result into R1
327 : LDC 2, 4(0) ; Callee frame size
328 : SUB 5, 5, 2 ; Pop callee frame
329 : LD 2, 4(5) ; Restore left operand from depth 1
330 : MUL 1, 2, 1 ; R1 = left * right
331 : LD 2, 3(5) ; Restore left operand from depth 0
332 : ADD 1, 2, 1 ; R1 = left + right
333 : ST 1, 2(5) ; Store function result into frame return slot
334 : LD 6, 0(5) ; Load return address
335 : LDA 7, 0(6) ; Return to caller
336 : LD 1, 1(5) ; Load parameter 'x' into R1
337 : LDA 4, 3(5) ; Recompute callee base from caller size
338 : LDA 6, 342(0) ; Return address
339 : ST 6, 0(4) ; Store return address in callee frame
340 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
341 : LDA 7, 9(0) ; Call built-in print
342 : LDC 2, 3(0) ; Caller frame size
343 : SUB 5, 5, 2 ; Pop back to caller
344 : LDC 1, 1(0) ; Load boolean-literal into R1
345 : ST 1, 2(5) ; Store function result into frame return slot
346 : LD 6, 0(5) ; Load return address
347 : LDA 7, 0(6) ; Return to caller
348 : LD 1, 2(5) ; Load parameter 'turns' into R1
349 : ST 1, 4(5) ; Spill left operand at depth 0
350 : LDC 1, 0(0) ; Load integer-literal into R1
351 : LD 2, 4(5) ; Restore left operand from depth 0
352 : SUB 1, 2, 1 ; left - right for equality check
353 : JEQ 1, 3(7) ; If R1 == 0, jump to true
354 : LDC 1, 0(0) ; false
355 : LDA 7, 1(7) ; skip setting true
356 : LDC 1, 1(0) ; true
357 : JEQ 1, 360(0) ; If condition is false, jump to ELSE
358 : LDC 1, 1(0) ; Load boolean-literal into R1
359 : LDA 7, 402(0) ; Skip ELSE block
360 : LD 1, 1(5) ; Load parameter 'x' into R1
361 : LDA 4, 3(5) ; Recompute callee base from callee size
362 : ST 1, 1(4) ; Store argument 0 in callee
363 : LDA 4, 3(5) ; Recompute callee base from callee size
364 : LDA 6, 368(0) ; Return address
365 : ST 6, 0(4) ; Store return in callee frame
366 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
367 : LDA 7, 135(0) ; Call isPrime
368 : LD 1, 2(5) ; Load callee result into R1
369 : LDC 2, 3(0) ; Callee frame size
370 : SUB 5, 5, 2 ; Pop callee frame
371 : ST 1, 4(5) ; Spill left operand at depth 0
372 : LD 1, 1(5) ; Load parameter 'x' into R1
373 : LDA 4, 5(5) ; Recompute callee base from callee size
374 : ST 1, 1(4) ; Store argument 0 in callee
375 : LDA 4, 5(5) ; Recompute callee base from callee size
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
379 : LDA 7, 284(0) ; Call rotate
380 : LD 1, 2(5) ; Load callee result into R1
381 : LDC 2, 5(0) ; Callee frame size
382 : SUB 5, 5, 2 ; Pop callee frame
383 : LDA 4, 6(5) ; Recompute callee base from callee size
384 : ST 1, 1(4) ; Store argument 0 in callee
385 : LD 1, 2(5) ; Load parameter 'turns' into R1
386 : ST 1, 5(5) ; Spill left operand at depth 1
387 : LDC 1, 1(0) ; Load integer-literal into R1
388 : LD 2, 5(5) ; Restore left operand from depth 1
389 : SUB 1, 2, 1 ; R1 = left - right
390 : LDA 4, 6(5) ; Recompute callee base from callee size
391 : ST 1, 2(4) ; Store argument 1 in callee
392 : LDA 4, 6(5) ; Recompute callee base from callee size
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return in callee frame
395 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
396 : LDA 7, 348(0) ; Call isCircularPrimeHelper
397 : LD 1, 3(5) ; Load callee result into R1
398 : LDC 2, 6(0) ; Callee frame size
399 : SUB 5, 5, 2 ; Pop callee frame
400 : LD 2, 4(5) ; Restore left operand from depth 0
401 : MUL 1, 2, 1 ; R1 = left AND right
402 : ST 1, 3(5) ; Store function result into frame return slot
403 : LD 6, 0(5) ; Load return address
404 : LDA 7, 0(6) ; Return to caller
405 : LD 1, 1(5) ; Load parameter 'x' into R1
406 : LDA 4, 6(5) ; Recompute callee base from callee size
407 : ST 1, 1(4) ; Store argument 0 in callee
408 : LD 1, 1(5) ; Load parameter 'x' into R1
409 : LDA 4, 3(5) ; Recompute callee base from callee size
410 : ST 1, 1(4) ; Store argument 0 in callee
411 : LDA 4, 3(5) ; Recompute callee base from callee size
412 : LDA 6, 416(0) ; Return address
413 : ST 6, 0(4) ; Store return in callee frame
414 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
415 : LDA 7, 195(0) ; Call log10
416 : LD 1, 2(5) ; Load callee result into R1
417 : LDC 2, 3(0) ; Callee frame size
418 : SUB 5, 5, 2 ; Pop callee frame
419 : ST 1, 3(5) ; Spill left operand at depth 0
420 : LDC 1, 1(0) ; Load integer-literal into R1
421 : LD 2, 3(5) ; Restore left operand from depth 0
422 : ADD 1, 2, 1 ; R1 = left + right
423 : LDA 4, 6(5) ; Recompute callee base from callee size
424 : ST 1, 2(4) ; Store argument 1 in callee
425 : LDA 4, 6(5) ; Recompute callee base from callee size
426 : LDA 6, 430(0) ; Return address
427 : ST 6, 0(4) ; Store return in callee frame
428 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
429 : LDA 7, 348(0) ; Call isCircularPrimeHelper
430 : LD 1, 3(5) ; Load callee result into R1
431 : LDC 2, 6(0) ; Callee frame size
432 : SUB 5, 5, 2 ; Pop callee frame
433 : JEQ 1, 446(0) ; If condition is false, jump to ELSE
434 : LD 1, 1(5) ; Load parameter 'x' into R1
435 : LDA 4, 3(5) ; Recompute callee base from callee size
436 : ST 1, 1(4) ; Store argument 0 in callee
437 : LDA 4, 3(5) ; Recompute callee base from callee size
438 : LDA 6, 442(0) ; Return address
439 : ST 6, 0(4) ; Store return in callee frame
440 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
441 : LDA 7, 336(0) ; Call report
442 : LD 1, 2(5) ; Load callee result into R1
443 : LDC 2, 3(0) ; Callee frame size
444 : SUB 5, 5, 2 ; Pop callee frame
445 : LDA 7, 447(0) ; Skip ELSE block
446 : LDC 1, 0(0) ; Load boolean-literal into R1
447 : ST 1, 2(5) ; Store function result into frame return slot
448 : LD 6, 0(5) ; Load return address
449 : LDA 7, 0(6) ; Return to caller
450 : LD 1, 2(5) ; Load parameter 'x' into R1
451 : ST 1, 5(5) ; Spill left operand at depth 0
452 : LD 1, 1(5) ; Load parameter 'top' into R1
453 : LD 2, 5(5) ; Restore left operand from depth 0
454 : SUB 1, 2, 1 ; left - right for less-than check
455 : JLT 1, 3(7) ; If R1 < 0, jump to true
456 : LDC 1, 0(0) ; false
457 : LDA 7, 1(7) ; skip setting true
458 : LDC 1, 1(0) ; true
459 : JEQ 1, 520(0) ; If condition is false, jump to ELSE
460 : LD 1, 2(5) ; Load parameter 'x' into R1
461 : LDA 4, 4(5) ; Recompute callee base from callee size
462 : ST 1, 1(4) ; Store argument 0 in callee
463 : LDA 4, 4(5) ; Recompute callee base from callee size
464 : LDA 6, 468(0) ; Return address
465 : ST 6, 0(4) ; Store return in callee frame
466 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
467 : LDA 7, 405(0) ; Call isCircularPrime
468 : LD 1, 2(5) ; Load callee result into R1
469 : LDC 2, 4(0) ; Callee frame size
470 : SUB 5, 5, 2 ; Pop callee frame
471 : JEQ 1, 498(0) ; If condition is false, jump to ELSE
472 : LD 1, 1(5) ; Load parameter 'top' into R1
473 : LDA 4, 6(5) ; Recompute callee base from callee size
474 : ST 1, 1(4) ; Store argument 0 in callee
475 : LD 1, 2(5) ; Load parameter 'x' into R1
476 : ST 1, 5(5) ; Spill left operand at depth 0
477 : LDC 1, 1(0) ; Load integer-literal into R1
478 : LD 2, 5(5) ; Restore left operand from depth 0
479 : ADD 1, 2, 1 ; R1 = left + right
480 : LDA 4, 6(5) ; Recompute callee base from callee size
481 : ST 1, 2(4) ; Store argument 1 in callee
482 : LD 1, 3(5) ; Load parameter 'count' into R1
483 : ST 1, 5(5) ; Spill left operand at depth 0
484 : LDC 1, 1(0) ; Load integer-literal into R1
485 : LD 2, 5(5) ; Restore left operand from depth 0
486 : ADD 1, 2, 1 ; R1 = left + right
487 : LDA 4, 6(5) ; Recompute callee base from callee size
488 : ST 1, 3(4) ; Store argument 2 in callee
489 : LDA 4, 6(5) ; Recompute callee base from callee size
490 : LDA 6, 494(0) ; Return address
491 : ST 6, 0(4) ; Store return in callee frame
492 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
493 : LDA 7, 450(0) ; Call circularPrimesToHelper
494 : LD 1, 4(5) ; Load callee result into R1
495 : LDC 2, 6(0) ; Callee frame size
496 : SUB 5, 5, 2 ; Pop callee frame
497 : LDA 7, 519(0) ; Skip ELSE block
498 : LD 1, 1(5) ; Load parameter 'top' into R1
499 : LDA 4, 6(5) ; Recompute callee base from callee size
500 : ST 1, 1(4) ; Store argument 0 in callee
501 : LD 1, 2(5) ; Load parameter 'x' into R1
502 : ST 1, 5(5) ; Spill left operand at depth 0
503 : LDC 1, 1(0) ; Load integer-literal into R1
504 : LD 2, 5(5) ; Restore left operand from depth 0
505 : ADD 1, 2, 1 ; R1 = left + right
506 : LDA 4, 6(5) ; Recompute callee base from callee size
507 : ST 1, 2(4) ; Store argument 1 in callee
508 : LD 1, 3(5) ; Load parameter 'count' into R1
509 : LDA 4, 6(5) ; Recompute callee base from callee size
510 : ST 1, 3(4) ; Store argument 2 in callee
511 : LDA 4, 6(5) ; Recompute callee base from callee size
512 : LDA 6, 516(0) ; Return address
513 : ST 6, 0(4) ; Store return in callee frame
514 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
515 : LDA 7, 450(0) ; Call circularPrimesToHelper
516 : LD 1, 4(5) ; Load callee result into R1
517 : LDC 2, 6(0) ; Callee frame size
518 : SUB 5, 5, 2 ; Pop callee frame
519 : LDA 7, 521(0) ; Skip ELSE block
520 : LD 1, 3(5) ; Load parameter 'count' into R1
521 : ST 1, 4(5) ; Store function result into frame return slot
522 : LD 6, 0(5) ; Load return address
523 : LDA 7, 0(6) ; Return to caller
524 : LD 1, 1(5) ; Load parameter 'x' into R1
525 : ST 1, 3(5) ; Spill left operand at depth 0
526 : LDC 1, 1(0) ; Load integer-literal into R1
527 : LD 2, 3(5) ; Restore left operand from depth 0
528 : ADD 1, 2, 1 ; R1 = left + right
529 : LDA 4, 6(5) ; Recompute callee base from callee size
530 : ST 1, 1(4) ; Store argument 0 in callee
531 : LDC 1, 2(0) ; Load integer-literal into R1
532 : LDA 4, 6(5) ; Recompute callee base from callee size
533 : ST 1, 2(4) ; Store argument 1 in callee
534 : LDC 1, 0(0) ; Load integer-literal into R1
535 : LDA 4, 6(5) ; Recompute callee base from callee size
536 : ST 1, 3(4) ; Store argument 2 in callee
537 : LDA 4, 6(5) ; Recompute callee base from callee size
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return in callee frame
540 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
541 : LDA 7, 450(0) ; Call circularPrimesToHelper
542 : LD 1, 4(5) ; Load callee result into R1
543 : LDC 2, 6(0) ; Callee frame size
544 : SUB 5, 5, 2 ; Pop callee frame
545 : ST 1, 2(5) ; Store function result into frame return slot
546 : LD 6, 0(5) ; Load return address
547 : LDA 7, 0(6) ; Return to caller
