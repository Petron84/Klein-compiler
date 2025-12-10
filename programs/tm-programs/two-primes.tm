0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 2(5) ; Load parameter 'selector' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 3(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 36(0) ; If condition is false, jump to ELSE
24 : LDA 4, 5(5) ; Compute callee base from caller size
25 : LD 1, 1(5) ; Load parameter 'n' into R1
26 : ST 1, 1(4) ; Store argument 0 in callee frame
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return address into callee frame
29 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
30 : LDA 7, 324(0) ; Call emirp
31 : LD 1, 2(5) ; Load callee result into R1
32 : LDC 2, 5(0) ; Caller frame size
33 : SUB 5, 5, 2 ; Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s return slot
35 : LDA 7, 82(0) ; Skip ELSE block
36 : LD 1, 2(5) ; Load parameter 'selector' into R1
37 : ST 1, 4(5) ; Spill left operand at depth 0
38 : LDC 1, 5(0) ; Load integer-literal into R1
39 : LD 2, 4(5) ; Restore left operand from depth 0
40 : SUB 1, 2, 1 ; left - right for equality check
41 : JEQ 1, 2(7) ; If R1 == 0, jump to true
42 : LDC 1, 0(0) ; false
43 : LDA 7, 1(7) ; skip setting true
44 : LDC 1, 1(0) ; true
45 : JEQ 1, 58(0) ; If condition is false, jump to ELSE
46 : LDA 4, 5(5) ; Compute callee base from caller size
47 : LD 1, 1(5) ; Load parameter 'n' into R1
48 : ST 1, 1(4) ; Store argument 0 in callee frame
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return address into callee frame
51 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
52 : LDA 7, 282(0) ; Call snowball
53 : LD 1, 2(5) ; Load callee result into R1
54 : LDC 2, 5(0) ; Caller frame size
55 : SUB 5, 5, 2 ; Pop back to caller
56 : ST 1, 3(5) ; Store result into caller’s return slot
57 : LDA 7, 82(0) ; Skip ELSE block
58 : LD 1, 2(5) ; Load parameter 'selector' into R1
59 : ST 1, 4(5) ; Spill left operand at depth 0
60 : LDC 1, 8(0) ; Load integer-literal into R1
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; left - right for equality check
63 : JEQ 1, 2(7) ; If R1 == 0, jump to true
64 : LDC 1, 0(0) ; false
65 : LDA 7, 1(7) ; skip setting true
66 : LDC 1, 1(0) ; true
67 : JEQ 1, 80(0) ; If condition is false, jump to ELSE
68 : LDA 4, 5(5) ; Compute callee base from caller size
69 : LD 1, 1(5) ; Load parameter 'n' into R1
70 : ST 1, 1(4) ; Store argument 0 in callee frame
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return address into callee frame
73 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
74 : LDA 7, 252(0) ; Call doBoth
75 : LD 1, 2(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Caller frame size
77 : SUB 5, 5, 2 ; Pop back to caller
78 : ST 1, 3(5) ; Store result into caller’s return slot
79 : LDA 7, 82(0) ; Skip ELSE block
80 : LDC 1, 0(0) ; Load boolean-literal into R1
81 : ST 1, 3(5) ; Store result into current frame's return slot
82 : LD 1, 3(5) ; Load main return value into R1
83 : LD 6, 0(5) ; Load main return address
84 : LDA 7, 0(6) ; Return from main
85 : LD 1, 1(5) ; Load parameter 'm' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LD 1, 1(5) ; Load parameter 'm' into R1
88 : ST 1, 5(5) ; Spill left operand at depth 1
89 : LD 1, 2(5) ; Load parameter 'n' into R1
90 : LD 2, 5(5) ; Restore left operand from depth 1
91 : DIV 1, 2, 1 ; R1 = left / right
92 : ST 1, 5(5) ; Spill left operand at depth 1
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : LD 2, 5(5) ; Restore left operand from depth 1
95 : MUL 1, 2, 1 ; R1 = left * right
96 : LD 2, 4(5) ; Restore left operand from depth 0
97 : SUB 1, 2, 1 ; R1 = left - right
98 : ST 1, 3(5) ; Store function result into frame return slot
99 : LD 6, 0(5) ; Load return address
100 : LDA 7, 0(6) ; Return to caller
101 : LD 1, 1(5) ; Load parameter 'n' into R1
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LDC 1, 0(0) ; Load integer-literal into R1
104 : LD 2, 4(5) ; Restore left operand from depth 0
105 : SUB 1, 2, 1 ; left - right for equality check
106 : JEQ 1, 2(7) ; If R1 == 0, jump to true
107 : LDC 1, 0(0) ; false
108 : LDA 7, 1(7) ; skip setting true
109 : LDC 1, 1(0) ; true
110 : JEQ 1, 113(0) ; If condition is false, jump to ELSE
111 : LD 1, 2(5) ; Load parameter 'nR' into R1
112 : LDA 7, 148(0) ; Skip ELSE block
113 : LDA 4, 5(5) ; Compute callee base from caller size
114 : LD 1, 1(5) ; Load parameter 'n' into R1
115 : ST 1, 4(5) ; Spill left operand at depth 0
116 : LDC 1, 10(0) ; Load integer-literal into R1
117 : LD 2, 4(5) ; Restore left operand from depth 0
118 : DIV 1, 2, 1 ; R1 = left / right
119 : ST 1, 1(4) ; Store argument 0 in callee frame
120 : LDC 1, 10(0) ; Load integer-literal into R1
121 : ST 1, 4(5) ; Spill left operand at depth 0
122 : LD 1, 2(5) ; Load parameter 'nR' into R1
123 : LD 2, 4(5) ; Restore left operand from depth 0
124 : MUL 1, 2, 1 ; R1 = left * right
125 : ST 1, 4(5) ; Spill left operand at depth 0
126 : LDA 4, 5(5) ; Compute callee base from caller size
127 : LD 1, 1(5) ; Load parameter 'n' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LDC 1, 10(0) ; Load integer-literal into R1
130 : ST 1, 2(4) ; Store argument 1 in callee frame
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return address into callee frame
133 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
134 : LDA 7, 85(0) ; Call MOD
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 5(0) ; Caller frame size
137 : SUB 5, 5, 2 ; Pop back to caller
138 : LD 2, 4(5) ; Restore left operand from depth 0
139 : ADD 1, 2, 1 ; R1 = left + right
140 : ST 1, 2(4) ; Store argument 1 in callee frame
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return address into callee frame
143 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
144 : LDA 7, 101(0) ; Call reverseL
145 : LD 1, 3(5) ; Load callee result into R1
146 : LDC 2, 5(0) ; Caller frame size
147 : SUB 5, 5, 2 ; Pop back to caller
148 : ST 1, 3(5) ; Store function result into frame return slot
149 : LD 6, 0(5) ; Load return address
150 : LDA 7, 0(6) ; Return to caller
151 : LDA 4, 3(5) ; Compute callee base from caller size
152 : LD 1, 1(5) ; Load parameter 'n' into R1
153 : ST 1, 1(4) ; Store argument 0 in callee frame
154 : LDC 1, 0(0) ; Load integer-literal into R1
155 : ST 1, 2(4) ; Store argument 1 in callee frame
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return address into callee frame
158 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
159 : LDA 7, 101(0) ; Call reverseL
160 : LD 1, 3(5) ; Load callee result into R1
161 : LDC 2, 3(0) ; Caller frame size
162 : SUB 5, 5, 2 ; Pop back to caller
163 : ST 1, 2(5) ; Store function result into frame return slot
164 : LD 6, 0(5) ; Load return address
165 : LDA 7, 0(6) ; Return to caller
166 : LDA 4, 5(5) ; Compute callee base from caller size
167 : LD 1, 2(5) ; Load parameter 'b' into R1
168 : ST 1, 1(4) ; Store argument 0 in callee frame
169 : LD 1, 1(5) ; Load parameter 'a' into R1
170 : ST 1, 2(4) ; Store argument 1 in callee frame
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return address into callee frame
173 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
174 : LDA 7, 85(0) ; Call MOD
175 : LD 1, 3(5) ; Load callee result into R1
176 : LDC 2, 5(0) ; Caller frame size
177 : SUB 5, 5, 2 ; Pop back to caller
178 : ST 1, 4(5) ; Spill left operand at depth 0
179 : LDC 1, 0(0) ; Load integer-literal into R1
180 : LD 2, 4(5) ; Restore left operand from depth 0
181 : SUB 1, 2, 1 ; left - right for equality check
182 : JEQ 1, 2(7) ; If R1 == 0, jump to true
183 : LDC 1, 0(0) ; false
184 : LDA 7, 1(7) ; skip setting true
185 : LDC 1, 1(0) ; true
186 : ST 1, 3(5) ; Store function result into frame return slot
187 : LD 6, 0(5) ; Load return address
188 : LDA 7, 0(6) ; Return to caller
189 : LD 1, 1(5) ; Load parameter 'i' into R1
190 : ST 1, 4(5) ; Spill left operand at depth 0
191 : LD 1, 2(5) ; Load parameter 'n' into R1
192 : LD 2, 4(5) ; Restore left operand from depth 0
193 : SUB 1, 2, 1 ; left - right for less-than check
194 : JLT 1, 2(7) ; If R1 < 0, jump to true
195 : LDC 1, 0(0) ; false
196 : LDA 7, 1(7) ; skip setting true
197 : LDC 1, 1(0) ; true
198 : JEQ 1, 231(0) ; If condition is false, jump to ELSE
199 : LDA 4, 6(5) ; Compute callee base from caller size
200 : LD 1, 1(5) ; Load parameter 'i' into R1
201 : ST 1, 1(4) ; Store argument 0 in callee frame
202 : LD 1, 2(5) ; Load parameter 'n' into R1
203 : ST 1, 2(4) ; Store argument 1 in callee frame
204 : LDA 6, 208(0) ; Return address
205 : ST 6, 0(4) ; Store return address into callee frame
206 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
207 : LDA 7, 166(0) ; Call divides
208 : LD 1, 3(5) ; Load callee result into R1
209 : LDC 2, 6(0) ; Caller frame size
210 : SUB 5, 5, 2 ; Pop back to caller
211 : ST 1, 4(5) ; Spill left operand at depth 0
212 : LDA 4, 6(5) ; Compute callee base from caller size
213 : LD 1, 1(5) ; Load parameter 'i' into R1
214 : ST 1, 5(5) ; Spill left operand at depth 1
215 : LDC 1, 1(0) ; Load integer-literal into R1
216 : LD 2, 5(5) ; Restore left operand from depth 1
217 : ADD 1, 2, 1 ; R1 = left + right
218 : ST 1, 1(4) ; Store argument 0 in callee frame
219 : LD 1, 2(5) ; Load parameter 'n' into R1
220 : ST 1, 2(4) ; Store argument 1 in callee frame
221 : LDA 6, 225(0) ; Return address
222 : ST 6, 0(4) ; Store return address into callee frame
223 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
224 : LDA 7, 189(0) ; Call hasDivisorFrom
225 : LD 1, 3(5) ; Load callee result into R1
226 : LDC 2, 6(0) ; Caller frame size
227 : SUB 5, 5, 2 ; Pop back to caller
228 : LD 2, 4(5) ; Restore left operand from depth 0
229 : ADD 1, 2, 1 ; R1 = left OR right
230 : LDA 7, 232(0) ; Skip ELSE block
231 : LDC 1, 0(0) ; Load boolean-literal into R1
232 : ST 1, 3(5) ; Store function result into frame return slot
233 : LD 6, 0(5) ; Load return address
234 : LDA 7, 0(6) ; Return to caller
235 : LDA 4, 3(5) ; Compute callee base from caller size
236 : LDC 1, 2(0) ; Load integer-literal into R1
237 : ST 1, 1(4) ; Store argument 0 in callee frame
238 : LD 1, 1(5) ; Load parameter 'n' into R1
239 : ST 1, 2(4) ; Store argument 1 in callee frame
240 : LDA 6, 244(0) ; Return address
241 : ST 6, 0(4) ; Store return address into callee frame
242 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
243 : LDA 7, 189(0) ; Call hasDivisorFrom
244 : LD 1, 3(5) ; Load callee result into R1
245 : LDC 2, 3(0) ; Caller frame size
246 : SUB 5, 5, 2 ; Pop back to caller
247 : LDC 2, 1(0) ; Load 1 into R2
248 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
249 : ST 1, 2(5) ; Store function result into frame return slot
250 : LD 6, 0(5) ; Load return address
251 : LDA 7, 0(6) ; Return to caller
252 : LDA 4, 3(5) ; Compute callee base from caller size
253 : LD 1, 1(5) ; Load parameter 'n' into R1
254 : ST 1, 1(4) ; Store argument 0 in callee frame
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return address into callee frame
257 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
258 : LDA 7, 324(0) ; Call emirp
259 : LD 1, 2(5) ; Load callee result into R1
260 : LDC 2, 3(0) ; Caller frame size
261 : SUB 5, 5, 2 ; Pop back to caller
262 : LDA 4, 3(5) ; Compute callee base from caller size
263 : LDA 6, 267(0) ; Return address
264 : ST 6, 0(4) ; Store return address into callee frame
265 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
266 : LDA 7, 11(0) ; Call built-in print
267 : LDC 2, 3(0) ; Caller frame size
268 : SUB 5, 5, 2 ; Pop back to caller
269 : LDA 4, 3(5) ; Compute callee base from caller size
270 : LD 1, 1(5) ; Load parameter 'n' into R1
271 : ST 1, 1(4) ; Store argument 0 in callee frame
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return address into callee frame
274 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
275 : LDA 7, 282(0) ; Call snowball
276 : LD 1, 2(5) ; Load callee result into R1
277 : LDC 2, 3(0) ; Caller frame size
278 : SUB 5, 5, 2 ; Pop back to caller
279 : ST 1, 2(5) ; Store function result into frame return slot
280 : LD 6, 0(5) ; Load return address
281 : LDA 7, 0(6) ; Return to caller
282 : LDA 4, 5(5) ; Compute callee base from caller size
283 : LD 1, 1(5) ; Load parameter 'n' into R1
284 : ST 1, 1(4) ; Store argument 0 in callee frame
285 : LDA 6, 289(0) ; Return address
286 : ST 6, 0(4) ; Store return address into callee frame
287 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
288 : LDA 7, 235(0) ; Call isPrime
289 : LD 1, 2(5) ; Load callee result into R1
290 : LDC 2, 5(0) ; Caller frame size
291 : SUB 5, 5, 2 ; Pop back to caller
292 : ST 1, 3(5) ; Spill left operand at depth 0
293 : LD 1, 1(5) ; Load parameter 'n' into R1
294 : ST 1, 4(5) ; Spill left operand at depth 1
295 : LDC 1, 10(0) ; Load integer-literal into R1
296 : LD 2, 4(5) ; Restore left operand from depth 1
297 : SUB 1, 2, 1 ; left - right for less-than check
298 : JLT 1, 2(7) ; If R1 < 0, jump to true
299 : LDC 1, 0(0) ; false
300 : LDA 7, 1(7) ; skip setting true
301 : LDC 1, 1(0) ; true
302 : JEQ 1, 305(0) ; If condition is false, jump to ELSE
303 : LDC 1, 1(0) ; Load boolean-literal into R1
304 : LDA 7, 319(0) ; Skip ELSE block
305 : LDA 4, 5(5) ; Compute callee base from caller size
306 : LD 1, 1(5) ; Load parameter 'n' into R1
307 : ST 1, 4(5) ; Spill left operand at depth 1
308 : LDC 1, 10(0) ; Load integer-literal into R1
309 : LD 2, 4(5) ; Restore left operand from depth 1
310 : DIV 1, 2, 1 ; R1 = left / right
311 : ST 1, 1(4) ; Store argument 0 in callee frame
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return address into callee frame
314 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
315 : LDA 7, 235(0) ; Call isPrime
316 : LD 1, 2(5) ; Load callee result into R1
317 : LDC 2, 5(0) ; Caller frame size
318 : SUB 5, 5, 2 ; Pop back to caller
319 : LD 2, 3(5) ; Restore left operand from depth 0
320 : MUL 1, 2, 1 ; R1 = left AND right
321 : ST 1, 2(5) ; Store function result into frame return slot
322 : LD 6, 0(5) ; Load return address
323 : LDA 7, 0(6) ; Return to caller
324 : LDA 4, 4(5) ; Compute callee base from caller size
325 : LD 1, 1(5) ; Load parameter 'n' into R1
326 : ST 1, 1(4) ; Store argument 0 in callee frame
327 : LDA 6, 331(0) ; Return address
328 : ST 6, 0(4) ; Store return address into callee frame
329 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
330 : LDA 7, 235(0) ; Call isPrime
331 : LD 1, 2(5) ; Load callee result into R1
332 : LDC 2, 4(0) ; Caller frame size
333 : SUB 5, 5, 2 ; Pop back to caller
334 : ST 1, 3(5) ; Spill left operand at depth 0
335 : LDA 4, 4(5) ; Compute callee base from caller size
336 : LDA 4, 4(5) ; Compute callee base from caller size
337 : LD 1, 1(5) ; Load parameter 'n' into R1
338 : ST 1, 1(4) ; Store argument 0 in callee frame
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return address into callee frame
341 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
342 : LDA 7, 151(0) ; Call reverse
343 : LD 1, 2(5) ; Load callee result into R1
344 : LDC 2, 4(0) ; Caller frame size
345 : SUB 5, 5, 2 ; Pop back to caller
346 : ST 1, 1(4) ; Store argument 0 in callee frame
347 : LDA 6, 351(0) ; Return address
348 : ST 6, 0(4) ; Store return address into callee frame
349 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
350 : LDA 7, 235(0) ; Call isPrime
351 : LD 1, 2(5) ; Load callee result into R1
352 : LDC 2, 4(0) ; Caller frame size
353 : SUB 5, 5, 2 ; Pop back to caller
354 : LD 2, 3(5) ; Restore left operand from depth 0
355 : MUL 1, 2, 1 ; R1 = left AND right
356 : ST 1, 2(5) ; Store function result into frame return slot
357 : LD 6, 0(5) ; Load return address
358 : LDA 7, 0(6) ; Return to caller
