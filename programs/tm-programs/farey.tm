0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 1(5) ; Load parameter 'xNum' into R1
17 : LDA 4, 5(5) ; Recompute callee base from caller size
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LD 1, 2(5) ; Load parameter 'xDen' into R1
20 : LDA 4, 5(5) ; Recompute callee base from caller size
21 : ST 1, 2(4) ; Store argument 1 in callee frame
22 : LD 1, 3(5) ; Load parameter 'N' into R1
23 : LDA 4, 5(5) ; Recompute callee base from caller size
24 : ST 1, 3(4) ; Store argument 2 in callee frame
25 : LDA 4, 5(5) ; Recompute callee base from caller size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 593(0) ; Call fareyNum
30 : LD 1, 4(5) ; Load callee result into R1
31 : LDC 2, 5(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 5(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 13(0) ; Call built-in print
38 : LDC 2, 3(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : LD 1, 1(5) ; Load parameter 'xNum' into R1
41 : LDA 4, 5(5) ; Recompute callee base from caller size
42 : ST 1, 1(4) ; Store argument 0 in callee frame
43 : LD 1, 2(5) ; Load parameter 'xDen' into R1
44 : LDA 4, 5(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LD 1, 3(5) ; Load parameter 'N' into R1
47 : LDA 4, 5(5) ; Recompute callee base from caller size
48 : ST 1, 3(4) ; Store argument 2 in callee frame
49 : LDA 4, 5(5) ; Recompute callee base from caller size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return address into callee frame
52 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
53 : LDA 7, 443(0) ; Call fareyDen
54 : LD 1, 4(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 4(5) ; Store result into caller’s return slot
58 : LDC 5, 4(0) ; Anchor R5 to main frame base (DMEM[N+1])
59 : ST 1, 4(5) ; Store final result into MAIN frame's return slot
60 : LDC 5, 4(0) ; Reset R5 to main frame base (DMEM[N+1])
61 : LD 1, 4(5) ; Load main return value into R1
62 : LD 6, 0(5) ; Load root return address from main frame
63 : LDA 7, 0(6) ; Return from main to runtime epilogue
64 : LD 1, 1(5) ; Load parameter 'x' into R1
65 : ST 1, 4(5) ; Spill left operand at depth 0
66 : LD 1, 2(5) ; Load parameter 'y' into R1
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : SUB 1, 2, 1 ; left - right for less-than check
69 : JLT 1, 2(7) ; If R1 < 0, jump to true
70 : LDC 1, 0(0) ; false
71 : LDA 7, 1(7) ; skip setting true
72 : LDC 1, 1(0) ; true
73 : ST 1, 4(5) ; Spill left operand at depth 0
74 : LD 1, 1(5) ; Load parameter 'x' into R1
75 : ST 1, 5(5) ; Spill left operand at depth 1
76 : LD 1, 2(5) ; Load parameter 'y' into R1
77 : LD 2, 5(5) ; Restore left operand from depth 1
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : LD 2, 4(5) ; Restore left operand from depth 0
84 : ADD 1, 2, 1 ; R1 = left OR right
85 : LDC 2, 1(0) ; Load 1 into R2
86 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
87 : ST 1, 3(5) ; Store function result into frame return slot
88 : LD 6, 0(5) ; Load return address
89 : LDA 7, 0(6) ; Return to caller
90 : LD 1, 1(5) ; Load parameter 'x' into R1
91 : ST 1, 6(5) ; Spill left operand at depth 0
92 : LD 1, 4(5) ; Load parameter 'yd' into R1
93 : LD 2, 6(5) ; Restore left operand from depth 0
94 : MUL 1, 2, 1 ; R1 = left * right
95 : LDA 4, 7(5) ; Recompute callee base from caller size
96 : ST 1, 1(4) ; Store argument 0 in callee frame
97 : LD 1, 3(5) ; Load parameter 'y' into R1
98 : ST 1, 6(5) ; Spill left operand at depth 0
99 : LD 1, 2(5) ; Load parameter 'xd' into R1
100 : LD 2, 6(5) ; Restore left operand from depth 0
101 : MUL 1, 2, 1 ; R1 = left * right
102 : LDA 4, 7(5) ; Recompute callee base from caller size
103 : ST 1, 2(4) ; Store argument 1 in callee frame
104 : LDA 4, 7(5) ; Recompute callee base from caller size
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return address into callee frame
107 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
108 : LDA 7, 64(0) ; Call greater
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 6(0) ; Callee frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 5(5) ; Store function result into frame return slot
113 : LD 6, 0(5) ; Load return address
114 : LDA 7, 0(6) ; Return to caller
115 : LD 1, 1(5) ; Load parameter 'x' into R1
116 : ST 1, 6(5) ; Spill left operand at depth 0
117 : LD 1, 4(5) ; Load parameter 'yd' into R1
118 : LD 2, 6(5) ; Restore left operand from depth 0
119 : MUL 1, 2, 1 ; R1 = left * right
120 : ST 1, 6(5) ; Spill left operand at depth 0
121 : LD 1, 3(5) ; Load parameter 'y' into R1
122 : ST 1, 7(5) ; Spill left operand at depth 1
123 : LD 1, 2(5) ; Load parameter 'xd' into R1
124 : LD 2, 7(5) ; Restore left operand from depth 1
125 : MUL 1, 2, 1 ; R1 = left * right
126 : LD 2, 6(5) ; Restore left operand from depth 0
127 : SUB 1, 2, 1 ; left - right for equality check
128 : JEQ 1, 2(7) ; If R1 == 0, jump to true
129 : LDC 1, 0(0) ; false
130 : LDA 7, 1(7) ; skip setting true
131 : LDC 1, 1(0) ; true
132 : ST 1, 5(5) ; Store function result into frame return slot
133 : LD 6, 0(5) ; Load return address
134 : LDA 7, 0(6) ; Return to caller
135 : LD 1, 6(5) ; Load parameter 'b' into R1
136 : LDA 4, 11(5) ; Recompute callee base from caller size
137 : ST 1, 1(4) ; Store argument 0 in callee frame
138 : LD 1, 4(5) ; Load parameter 'N' into R1
139 : LDA 4, 11(5) ; Recompute callee base from caller size
140 : ST 1, 2(4) ; Store argument 1 in callee frame
141 : LDA 4, 11(5) ; Recompute callee base from caller size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address into callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 64(0) ; Call greater
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 6(0) ; Callee frame size
148 : SUB 5, 5, 2 ; Pop back to caller
149 : ST 1, 10(5) ; Spill left operand at depth 0
150 : LD 1, 8(5) ; Load parameter 'd' into R1
151 : LDA 4, 11(5) ; Recompute callee base from caller size
152 : ST 1, 1(4) ; Store argument 0 in callee frame
153 : LD 1, 4(5) ; Load parameter 'N' into R1
154 : LDA 4, 11(5) ; Recompute callee base from caller size
155 : ST 1, 2(4) ; Store argument 1 in callee frame
156 : LDA 4, 11(5) ; Recompute callee base from caller size
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return address into callee frame
159 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
160 : LDA 7, 64(0) ; Call greater
161 : LD 1, 3(5) ; Load callee result into R1
162 : LDC 2, 6(0) ; Callee frame size
163 : SUB 5, 5, 2 ; Pop back to caller
164 : LD 2, 10(5) ; Restore left operand from depth 0
165 : ADD 1, 2, 1 ; R1 = left OR right
166 : JEQ 1, 205(0) ; If condition is false, jump to ELSE
167 : LD 1, 1(5) ; Load parameter 'selector' into R1
168 : ST 1, 10(5) ; Spill left operand at depth 0
169 : LDC 1, 1(0) ; Load integer-literal into R1
170 : LD 2, 10(5) ; Restore left operand from depth 0
171 : SUB 1, 2, 1 ; left - right for equality check
172 : JEQ 1, 2(7) ; If R1 == 0, jump to true
173 : LDC 1, 0(0) ; false
174 : LDA 7, 1(7) ; skip setting true
175 : LDC 1, 1(0) ; true
176 : JEQ 1, 179(0) ; If condition is false, jump to ELSE
177 : LD 1, 5(5) ; Load parameter 'a' into R1
178 : LDA 7, 204(0) ; Skip ELSE block
179 : LD 1, 1(5) ; Load parameter 'selector' into R1
180 : ST 1, 10(5) ; Spill left operand at depth 0
181 : LDC 1, 2(0) ; Load integer-literal into R1
182 : LD 2, 10(5) ; Restore left operand from depth 0
183 : SUB 1, 2, 1 ; left - right for equality check
184 : JEQ 1, 2(7) ; If R1 == 0, jump to true
185 : LDC 1, 0(0) ; false
186 : LDA 7, 1(7) ; skip setting true
187 : LDC 1, 1(0) ; true
188 : JEQ 1, 191(0) ; If condition is false, jump to ELSE
189 : LD 1, 6(5) ; Load parameter 'b' into R1
190 : LDA 7, 204(0) ; Skip ELSE block
191 : LD 1, 1(5) ; Load parameter 'selector' into R1
192 : ST 1, 10(5) ; Spill left operand at depth 0
193 : LDC 1, 3(0) ; Load integer-literal into R1
194 : LD 2, 10(5) ; Restore left operand from depth 0
195 : SUB 1, 2, 1 ; left - right for equality check
196 : JEQ 1, 2(7) ; If R1 == 0, jump to true
197 : LDC 1, 0(0) ; false
198 : LDA 7, 1(7) ; skip setting true
199 : LDC 1, 1(0) ; true
200 : JEQ 1, 203(0) ; If condition is false, jump to ELSE
201 : LD 1, 7(5) ; Load parameter 'c' into R1
202 : LDA 7, 204(0) ; Skip ELSE block
203 : LD 1, 8(5) ; Load parameter 'd' into R1
204 : LDA 7, 398(0) ; Skip ELSE block
205 : LD 1, 2(5) ; Load parameter 'xNum' into R1
206 : LDA 4, 11(5) ; Recompute callee base from caller size
207 : ST 1, 1(4) ; Store argument 0 in callee frame
208 : LD 1, 3(5) ; Load parameter 'xDen' into R1
209 : LDA 4, 11(5) ; Recompute callee base from caller size
210 : ST 1, 2(4) ; Store argument 1 in callee frame
211 : LD 1, 5(5) ; Load parameter 'a' into R1
212 : ST 1, 10(5) ; Spill left operand at depth 0
213 : LD 1, 7(5) ; Load parameter 'c' into R1
214 : LD 2, 10(5) ; Restore left operand from depth 0
215 : ADD 1, 2, 1 ; R1 = left + right
216 : LDA 4, 11(5) ; Recompute callee base from caller size
217 : ST 1, 3(4) ; Store argument 2 in callee frame
218 : LD 1, 6(5) ; Load parameter 'b' into R1
219 : ST 1, 10(5) ; Spill left operand at depth 0
220 : LD 1, 8(5) ; Load parameter 'd' into R1
221 : LD 2, 10(5) ; Restore left operand from depth 0
222 : ADD 1, 2, 1 ; R1 = left + right
223 : LDA 4, 11(5) ; Recompute callee base from caller size
224 : ST 1, 4(4) ; Store argument 3 in callee frame
225 : LDA 4, 11(5) ; Recompute callee base from caller size
226 : LDA 6, 230(0) ; Return address
227 : ST 6, 0(4) ; Store return address into callee frame
228 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
229 : LDA 7, 115(0) ; Call fractionEqual
230 : LD 1, 5(5) ; Load callee result into R1
231 : LDC 2, 8(0) ; Callee frame size
232 : SUB 5, 5, 2 ; Pop back to caller
233 : JEQ 1, 288(0) ; If condition is false, jump to ELSE
234 : LD 1, 1(5) ; Load parameter 'selector' into R1
235 : ST 1, 10(5) ; Spill left operand at depth 0
236 : LDC 1, 1(0) ; Load integer-literal into R1
237 : LD 2, 10(5) ; Restore left operand from depth 0
238 : SUB 1, 2, 1 ; left - right for equality check
239 : JEQ 1, 2(7) ; If R1 == 0, jump to true
240 : LDC 1, 0(0) ; false
241 : LDA 7, 1(7) ; skip setting true
242 : LDC 1, 1(0) ; true
243 : JEQ 1, 250(0) ; If condition is false, jump to ELSE
244 : LD 1, 5(5) ; Load parameter 'a' into R1
245 : ST 1, 10(5) ; Spill left operand at depth 0
246 : LD 1, 7(5) ; Load parameter 'c' into R1
247 : LD 2, 10(5) ; Restore left operand from depth 0
248 : ADD 1, 2, 1 ; R1 = left + right
249 : LDA 7, 287(0) ; Skip ELSE block
250 : LD 1, 1(5) ; Load parameter 'selector' into R1
251 : ST 1, 10(5) ; Spill left operand at depth 0
252 : LDC 1, 2(0) ; Load integer-literal into R1
253 : LD 2, 10(5) ; Restore left operand from depth 0
254 : SUB 1, 2, 1 ; left - right for equality check
255 : JEQ 1, 2(7) ; If R1 == 0, jump to true
256 : LDC 1, 0(0) ; false
257 : LDA 7, 1(7) ; skip setting true
258 : LDC 1, 1(0) ; true
259 : JEQ 1, 266(0) ; If condition is false, jump to ELSE
260 : LD 1, 6(5) ; Load parameter 'b' into R1
261 : ST 1, 10(5) ; Spill left operand at depth 0
262 : LD 1, 8(5) ; Load parameter 'd' into R1
263 : LD 2, 10(5) ; Restore left operand from depth 0
264 : ADD 1, 2, 1 ; R1 = left + right
265 : LDA 7, 287(0) ; Skip ELSE block
266 : LD 1, 1(5) ; Load parameter 'selector' into R1
267 : ST 1, 10(5) ; Spill left operand at depth 0
268 : LDC 1, 3(0) ; Load integer-literal into R1
269 : LD 2, 10(5) ; Restore left operand from depth 0
270 : SUB 1, 2, 1 ; left - right for equality check
271 : JEQ 1, 2(7) ; If R1 == 0, jump to true
272 : LDC 1, 0(0) ; false
273 : LDA 7, 1(7) ; skip setting true
274 : LDC 1, 1(0) ; true
275 : JEQ 1, 282(0) ; If condition is false, jump to ELSE
276 : LD 1, 5(5) ; Load parameter 'a' into R1
277 : ST 1, 10(5) ; Spill left operand at depth 0
278 : LD 1, 7(5) ; Load parameter 'c' into R1
279 : LD 2, 10(5) ; Restore left operand from depth 0
280 : ADD 1, 2, 1 ; R1 = left + right
281 : LDA 7, 287(0) ; Skip ELSE block
282 : LD 1, 6(5) ; Load parameter 'b' into R1
283 : ST 1, 10(5) ; Spill left operand at depth 0
284 : LD 1, 8(5) ; Load parameter 'd' into R1
285 : LD 2, 10(5) ; Restore left operand from depth 0
286 : ADD 1, 2, 1 ; R1 = left + right
287 : LDA 7, 398(0) ; Skip ELSE block
288 : LD 1, 2(5) ; Load parameter 'xNum' into R1
289 : LDA 4, 11(5) ; Recompute callee base from caller size
290 : ST 1, 1(4) ; Store argument 0 in callee frame
291 : LD 1, 3(5) ; Load parameter 'xDen' into R1
292 : LDA 4, 11(5) ; Recompute callee base from caller size
293 : ST 1, 2(4) ; Store argument 1 in callee frame
294 : LD 1, 5(5) ; Load parameter 'a' into R1
295 : ST 1, 10(5) ; Spill left operand at depth 0
296 : LD 1, 7(5) ; Load parameter 'c' into R1
297 : LD 2, 10(5) ; Restore left operand from depth 0
298 : ADD 1, 2, 1 ; R1 = left + right
299 : LDA 4, 11(5) ; Recompute callee base from caller size
300 : ST 1, 3(4) ; Store argument 2 in callee frame
301 : LD 1, 6(5) ; Load parameter 'b' into R1
302 : ST 1, 10(5) ; Spill left operand at depth 0
303 : LD 1, 8(5) ; Load parameter 'd' into R1
304 : LD 2, 10(5) ; Restore left operand from depth 0
305 : ADD 1, 2, 1 ; R1 = left + right
306 : LDA 4, 11(5) ; Recompute callee base from caller size
307 : ST 1, 4(4) ; Store argument 3 in callee frame
308 : LDA 4, 11(5) ; Recompute callee base from caller size
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return address into callee frame
311 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
312 : LDA 7, 90(0) ; Call fractionGreater
313 : LD 1, 5(5) ; Load callee result into R1
314 : LDC 2, 7(0) ; Callee frame size
315 : SUB 5, 5, 2 ; Pop back to caller
316 : JEQ 1, 358(0) ; If condition is false, jump to ELSE
317 : LD 1, 1(5) ; Load parameter 'selector' into R1
318 : LDA 4, 11(5) ; Recompute callee base from caller size
319 : ST 1, 1(4) ; Store argument 0 in callee frame
320 : LD 1, 2(5) ; Load parameter 'xNum' into R1
321 : LDA 4, 11(5) ; Recompute callee base from caller size
322 : ST 1, 2(4) ; Store argument 1 in callee frame
323 : LD 1, 3(5) ; Load parameter 'xDen' into R1
324 : LDA 4, 11(5) ; Recompute callee base from caller size
325 : ST 1, 3(4) ; Store argument 2 in callee frame
326 : LD 1, 4(5) ; Load parameter 'N' into R1
327 : LDA 4, 11(5) ; Recompute callee base from caller size
328 : ST 1, 4(4) ; Store argument 3 in callee frame
329 : LD 1, 5(5) ; Load parameter 'a' into R1
330 : ST 1, 10(5) ; Spill left operand at depth 0
331 : LD 1, 7(5) ; Load parameter 'c' into R1
332 : LD 2, 10(5) ; Restore left operand from depth 0
333 : ADD 1, 2, 1 ; R1 = left + right
334 : LDA 4, 11(5) ; Recompute callee base from caller size
335 : ST 1, 5(4) ; Store argument 4 in callee frame
336 : LD 1, 6(5) ; Load parameter 'b' into R1
337 : ST 1, 10(5) ; Spill left operand at depth 0
338 : LD 1, 8(5) ; Load parameter 'd' into R1
339 : LD 2, 10(5) ; Restore left operand from depth 0
340 : ADD 1, 2, 1 ; R1 = left + right
341 : LDA 4, 11(5) ; Recompute callee base from caller size
342 : ST 1, 6(4) ; Store argument 5 in callee frame
343 : LD 1, 7(5) ; Load parameter 'c' into R1
344 : LDA 4, 11(5) ; Recompute callee base from caller size
345 : ST 1, 7(4) ; Store argument 6 in callee frame
346 : LD 1, 8(5) ; Load parameter 'd' into R1
347 : LDA 4, 11(5) ; Recompute callee base from caller size
348 : ST 1, 8(4) ; Store argument 7 in callee frame
349 : LDA 4, 11(5) ; Recompute callee base from caller size
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return address into callee frame
352 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
353 : LDA 7, 135(0) ; Call whileLoopFor
354 : LD 1, 9(5) ; Load callee result into R1
355 : LDC 2, 11(0) ; Callee frame size
356 : SUB 5, 5, 2 ; Pop back to caller
357 : LDA 7, 398(0) ; Skip ELSE block
358 : LD 1, 1(5) ; Load parameter 'selector' into R1
359 : LDA 4, 11(5) ; Recompute callee base from caller size
360 : ST 1, 1(4) ; Store argument 0 in callee frame
361 : LD 1, 2(5) ; Load parameter 'xNum' into R1
362 : LDA 4, 11(5) ; Recompute callee base from caller size
363 : ST 1, 2(4) ; Store argument 1 in callee frame
364 : LD 1, 3(5) ; Load parameter 'xDen' into R1
365 : LDA 4, 11(5) ; Recompute callee base from caller size
366 : ST 1, 3(4) ; Store argument 2 in callee frame
367 : LD 1, 4(5) ; Load parameter 'N' into R1
368 : LDA 4, 11(5) ; Recompute callee base from caller size
369 : ST 1, 4(4) ; Store argument 3 in callee frame
370 : LD 1, 5(5) ; Load parameter 'a' into R1
371 : LDA 4, 11(5) ; Recompute callee base from caller size
372 : ST 1, 5(4) ; Store argument 4 in callee frame
373 : LD 1, 6(5) ; Load parameter 'b' into R1
374 : LDA 4, 11(5) ; Recompute callee base from caller size
375 : ST 1, 6(4) ; Store argument 5 in callee frame
376 : LD 1, 5(5) ; Load parameter 'a' into R1
377 : ST 1, 10(5) ; Spill left operand at depth 0
378 : LD 1, 7(5) ; Load parameter 'c' into R1
379 : LD 2, 10(5) ; Restore left operand from depth 0
380 : ADD 1, 2, 1 ; R1 = left + right
381 : LDA 4, 11(5) ; Recompute callee base from caller size
382 : ST 1, 7(4) ; Store argument 6 in callee frame
383 : LD 1, 6(5) ; Load parameter 'b' into R1
384 : ST 1, 10(5) ; Spill left operand at depth 0
385 : LD 1, 8(5) ; Load parameter 'd' into R1
386 : LD 2, 10(5) ; Restore left operand from depth 0
387 : ADD 1, 2, 1 ; R1 = left + right
388 : LDA 4, 11(5) ; Recompute callee base from caller size
389 : ST 1, 8(4) ; Store argument 7 in callee frame
390 : LDA 4, 11(5) ; Recompute callee base from caller size
391 : LDA 6, 395(0) ; Return address
392 : ST 6, 0(4) ; Store return address into callee frame
393 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
394 : LDA 7, 135(0) ; Call whileLoopFor
395 : LD 1, 9(5) ; Load callee result into R1
396 : LDC 2, 11(0) ; Callee frame size
397 : SUB 5, 5, 2 ; Pop back to caller
398 : ST 1, 9(5) ; Store function result into frame return slot
399 : LD 6, 0(5) ; Load return address
400 : LDA 7, 0(6) ; Return to caller
401 : LD 1, 3(5) ; Load parameter 'b' into R1
402 : LDA 4, 7(5) ; Recompute callee base from caller size
403 : ST 1, 1(4) ; Store argument 0 in callee frame
404 : LD 1, 1(5) ; Load parameter 'N' into R1
405 : LDA 4, 7(5) ; Recompute callee base from caller size
406 : ST 1, 2(4) ; Store argument 1 in callee frame
407 : LDA 4, 7(5) ; Recompute callee base from caller size
408 : LDA 6, 412(0) ; Return address
409 : ST 6, 0(4) ; Store return address into callee frame
410 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
411 : LDA 7, 64(0) ; Call greater
412 : LD 1, 3(5) ; Load callee result into R1
413 : LDC 2, 6(0) ; Callee frame size
414 : SUB 5, 5, 2 ; Pop back to caller
415 : JEQ 1, 418(0) ; If condition is false, jump to ELSE
416 : LD 1, 5(5) ; Load parameter 'd' into R1
417 : LDA 7, 419(0) ; Skip ELSE block
418 : LD 1, 3(5) ; Load parameter 'b' into R1
419 : ST 1, 6(5) ; Store function result into frame return slot
420 : LD 6, 0(5) ; Load return address
421 : LDA 7, 0(6) ; Return to caller
422 : LD 1, 3(5) ; Load parameter 'b' into R1
423 : LDA 4, 7(5) ; Recompute callee base from caller size
424 : ST 1, 1(4) ; Store argument 0 in callee frame
425 : LD 1, 1(5) ; Load parameter 'N' into R1
426 : LDA 4, 7(5) ; Recompute callee base from caller size
427 : ST 1, 2(4) ; Store argument 1 in callee frame
428 : LDA 4, 7(5) ; Recompute callee base from caller size
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return address into callee frame
431 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
432 : LDA 7, 64(0) ; Call greater
433 : LD 1, 3(5) ; Load callee result into R1
434 : LDC 2, 6(0) ; Callee frame size
435 : SUB 5, 5, 2 ; Pop back to caller
436 : JEQ 1, 439(0) ; If condition is false, jump to ELSE
437 : LD 1, 4(5) ; Load parameter 'c' into R1
438 : LDA 7, 440(0) ; Skip ELSE block
439 : LD 1, 2(5) ; Load parameter 'a' into R1
440 : ST 1, 6(5) ; Store function result into frame return slot
441 : LD 6, 0(5) ; Load return address
442 : LDA 7, 0(6) ; Return to caller
443 : LD 1, 3(5) ; Load parameter 'N' into R1
444 : LDA 4, 5(5) ; Recompute callee base from caller size
445 : ST 1, 1(4) ; Store argument 0 in callee frame
446 : LDC 1, 1(0) ; Load integer-literal into R1
447 : LDA 4, 5(5) ; Recompute callee base from caller size
448 : ST 1, 1(4) ; Store argument 0 in callee frame
449 : LD 1, 1(5) ; Load parameter 'xNum' into R1
450 : LDA 4, 5(5) ; Recompute callee base from caller size
451 : ST 1, 2(4) ; Store argument 1 in callee frame
452 : LD 1, 2(5) ; Load parameter 'xDen' into R1
453 : LDA 4, 5(5) ; Recompute callee base from caller size
454 : ST 1, 3(4) ; Store argument 2 in callee frame
455 : LD 1, 3(5) ; Load parameter 'N' into R1
456 : LDA 4, 5(5) ; Recompute callee base from caller size
457 : ST 1, 4(4) ; Store argument 3 in callee frame
458 : LDC 1, 0(0) ; Load integer-literal into R1
459 : LDA 4, 5(5) ; Recompute callee base from caller size
460 : ST 1, 5(4) ; Store argument 4 in callee frame
461 : LDC 1, 1(0) ; Load integer-literal into R1
462 : LDA 4, 5(5) ; Recompute callee base from caller size
463 : ST 1, 6(4) ; Store argument 5 in callee frame
464 : LDC 1, 1(0) ; Load integer-literal into R1
465 : LDA 4, 5(5) ; Recompute callee base from caller size
466 : ST 1, 7(4) ; Store argument 6 in callee frame
467 : LDC 1, 1(0) ; Load integer-literal into R1
468 : LDA 4, 5(5) ; Recompute callee base from caller size
469 : ST 1, 8(4) ; Store argument 7 in callee frame
470 : LDA 4, 5(5) ; Recompute callee base from caller size
471 : LDA 6, 475(0) ; Return address
472 : ST 6, 0(4) ; Store return address into callee frame
473 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
474 : LDA 7, 135(0) ; Call whileLoopFor
475 : LD 1, 9(5) ; Load callee result into R1
476 : LDC 2, 11(0) ; Callee frame size
477 : SUB 5, 5, 2 ; Pop back to caller
478 : LDA 4, 5(5) ; Recompute callee base from caller size
479 : ST 1, 2(4) ; Store argument 1 in callee frame
480 : LDC 1, 2(0) ; Load integer-literal into R1
481 : LDA 4, 5(5) ; Recompute callee base from caller size
482 : ST 1, 1(4) ; Store argument 0 in callee frame
483 : LD 1, 1(5) ; Load parameter 'xNum' into R1
484 : LDA 4, 5(5) ; Recompute callee base from caller size
485 : ST 1, 2(4) ; Store argument 1 in callee frame
486 : LD 1, 2(5) ; Load parameter 'xDen' into R1
487 : LDA 4, 5(5) ; Recompute callee base from caller size
488 : ST 1, 3(4) ; Store argument 2 in callee frame
489 : LD 1, 3(5) ; Load parameter 'N' into R1
490 : LDA 4, 5(5) ; Recompute callee base from caller size
491 : ST 1, 4(4) ; Store argument 3 in callee frame
492 : LDC 1, 0(0) ; Load integer-literal into R1
493 : LDA 4, 5(5) ; Recompute callee base from caller size
494 : ST 1, 5(4) ; Store argument 4 in callee frame
495 : LDC 1, 1(0) ; Load integer-literal into R1
496 : LDA 4, 5(5) ; Recompute callee base from caller size
497 : ST 1, 6(4) ; Store argument 5 in callee frame
498 : LDC 1, 1(0) ; Load integer-literal into R1
499 : LDA 4, 5(5) ; Recompute callee base from caller size
500 : ST 1, 7(4) ; Store argument 6 in callee frame
501 : LDC 1, 1(0) ; Load integer-literal into R1
502 : LDA 4, 5(5) ; Recompute callee base from caller size
503 : ST 1, 8(4) ; Store argument 7 in callee frame
504 : LDA 4, 5(5) ; Recompute callee base from caller size
505 : LDA 6, 509(0) ; Return address
506 : ST 6, 0(4) ; Store return address into callee frame
507 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
508 : LDA 7, 135(0) ; Call whileLoopFor
509 : LD 1, 9(5) ; Load callee result into R1
510 : LDC 2, 11(0) ; Callee frame size
511 : SUB 5, 5, 2 ; Pop back to caller
512 : LDA 4, 5(5) ; Recompute callee base from caller size
513 : ST 1, 3(4) ; Store argument 2 in callee frame
514 : LDC 1, 3(0) ; Load integer-literal into R1
515 : LDA 4, 5(5) ; Recompute callee base from caller size
516 : ST 1, 1(4) ; Store argument 0 in callee frame
517 : LD 1, 1(5) ; Load parameter 'xNum' into R1
518 : LDA 4, 5(5) ; Recompute callee base from caller size
519 : ST 1, 2(4) ; Store argument 1 in callee frame
520 : LD 1, 2(5) ; Load parameter 'xDen' into R1
521 : LDA 4, 5(5) ; Recompute callee base from caller size
522 : ST 1, 3(4) ; Store argument 2 in callee frame
523 : LD 1, 3(5) ; Load parameter 'N' into R1
524 : LDA 4, 5(5) ; Recompute callee base from caller size
525 : ST 1, 4(4) ; Store argument 3 in callee frame
526 : LDC 1, 0(0) ; Load integer-literal into R1
527 : LDA 4, 5(5) ; Recompute callee base from caller size
528 : ST 1, 5(4) ; Store argument 4 in callee frame
529 : LDC 1, 1(0) ; Load integer-literal into R1
530 : LDA 4, 5(5) ; Recompute callee base from caller size
531 : ST 1, 6(4) ; Store argument 5 in callee frame
532 : LDC 1, 1(0) ; Load integer-literal into R1
533 : LDA 4, 5(5) ; Recompute callee base from caller size
534 : ST 1, 7(4) ; Store argument 6 in callee frame
535 : LDC 1, 1(0) ; Load integer-literal into R1
536 : LDA 4, 5(5) ; Recompute callee base from caller size
537 : ST 1, 8(4) ; Store argument 7 in callee frame
538 : LDA 4, 5(5) ; Recompute callee base from caller size
539 : LDA 6, 543(0) ; Return address
540 : ST 6, 0(4) ; Store return address into callee frame
541 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
542 : LDA 7, 135(0) ; Call whileLoopFor
543 : LD 1, 9(5) ; Load callee result into R1
544 : LDC 2, 11(0) ; Callee frame size
545 : SUB 5, 5, 2 ; Pop back to caller
546 : LDA 4, 5(5) ; Recompute callee base from caller size
547 : ST 1, 4(4) ; Store argument 3 in callee frame
548 : LDC 1, 4(0) ; Load integer-literal into R1
549 : LDA 4, 5(5) ; Recompute callee base from caller size
550 : ST 1, 1(4) ; Store argument 0 in callee frame
551 : LD 1, 1(5) ; Load parameter 'xNum' into R1
552 : LDA 4, 5(5) ; Recompute callee base from caller size
553 : ST 1, 2(4) ; Store argument 1 in callee frame
554 : LD 1, 2(5) ; Load parameter 'xDen' into R1
555 : LDA 4, 5(5) ; Recompute callee base from caller size
556 : ST 1, 3(4) ; Store argument 2 in callee frame
557 : LD 1, 3(5) ; Load parameter 'N' into R1
558 : LDA 4, 5(5) ; Recompute callee base from caller size
559 : ST 1, 4(4) ; Store argument 3 in callee frame
560 : LDC 1, 0(0) ; Load integer-literal into R1
561 : LDA 4, 5(5) ; Recompute callee base from caller size
562 : ST 1, 5(4) ; Store argument 4 in callee frame
563 : LDC 1, 1(0) ; Load integer-literal into R1
564 : LDA 4, 5(5) ; Recompute callee base from caller size
565 : ST 1, 6(4) ; Store argument 5 in callee frame
566 : LDC 1, 1(0) ; Load integer-literal into R1
567 : LDA 4, 5(5) ; Recompute callee base from caller size
568 : ST 1, 7(4) ; Store argument 6 in callee frame
569 : LDC 1, 1(0) ; Load integer-literal into R1
570 : LDA 4, 5(5) ; Recompute callee base from caller size
571 : ST 1, 8(4) ; Store argument 7 in callee frame
572 : LDA 4, 5(5) ; Recompute callee base from caller size
573 : LDA 6, 577(0) ; Return address
574 : ST 6, 0(4) ; Store return address into callee frame
575 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
576 : LDA 7, 135(0) ; Call whileLoopFor
577 : LD 1, 9(5) ; Load callee result into R1
578 : LDC 2, 11(0) ; Callee frame size
579 : SUB 5, 5, 2 ; Pop back to caller
580 : LDA 4, 5(5) ; Recompute callee base from caller size
581 : ST 1, 5(4) ; Store argument 4 in callee frame
582 : LDA 4, 5(5) ; Recompute callee base from caller size
583 : LDA 6, 587(0) ; Return address
584 : ST 6, 0(4) ; Store return address into callee frame
585 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
586 : LDA 7, 401(0) ; Call fareySelectDen
587 : LD 1, 6(5) ; Load callee result into R1
588 : LDC 2, 7(0) ; Callee frame size
589 : SUB 5, 5, 2 ; Pop back to caller
590 : ST 1, 4(5) ; Store function result into frame return slot
591 : LD 6, 0(5) ; Load return address
592 : LDA 7, 0(6) ; Return to caller
593 : LD 1, 3(5) ; Load parameter 'N' into R1
594 : LDA 4, 5(5) ; Recompute callee base from caller size
595 : ST 1, 1(4) ; Store argument 0 in callee frame
596 : LDC 1, 1(0) ; Load integer-literal into R1
597 : LDA 4, 5(5) ; Recompute callee base from caller size
598 : ST 1, 1(4) ; Store argument 0 in callee frame
599 : LD 1, 1(5) ; Load parameter 'xNum' into R1
600 : LDA 4, 5(5) ; Recompute callee base from caller size
601 : ST 1, 2(4) ; Store argument 1 in callee frame
602 : LD 1, 2(5) ; Load parameter 'xDen' into R1
603 : LDA 4, 5(5) ; Recompute callee base from caller size
604 : ST 1, 3(4) ; Store argument 2 in callee frame
605 : LD 1, 3(5) ; Load parameter 'N' into R1
606 : LDA 4, 5(5) ; Recompute callee base from caller size
607 : ST 1, 4(4) ; Store argument 3 in callee frame
608 : LDC 1, 0(0) ; Load integer-literal into R1
609 : LDA 4, 5(5) ; Recompute callee base from caller size
610 : ST 1, 5(4) ; Store argument 4 in callee frame
611 : LDC 1, 1(0) ; Load integer-literal into R1
612 : LDA 4, 5(5) ; Recompute callee base from caller size
613 : ST 1, 6(4) ; Store argument 5 in callee frame
614 : LDC 1, 1(0) ; Load integer-literal into R1
615 : LDA 4, 5(5) ; Recompute callee base from caller size
616 : ST 1, 7(4) ; Store argument 6 in callee frame
617 : LDC 1, 1(0) ; Load integer-literal into R1
618 : LDA 4, 5(5) ; Recompute callee base from caller size
619 : ST 1, 8(4) ; Store argument 7 in callee frame
620 : LDA 4, 5(5) ; Recompute callee base from caller size
621 : LDA 6, 625(0) ; Return address
622 : ST 6, 0(4) ; Store return address into callee frame
623 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
624 : LDA 7, 135(0) ; Call whileLoopFor
625 : LD 1, 9(5) ; Load callee result into R1
626 : LDC 2, 11(0) ; Callee frame size
627 : SUB 5, 5, 2 ; Pop back to caller
628 : LDA 4, 5(5) ; Recompute callee base from caller size
629 : ST 1, 2(4) ; Store argument 1 in callee frame
630 : LDC 1, 2(0) ; Load integer-literal into R1
631 : LDA 4, 5(5) ; Recompute callee base from caller size
632 : ST 1, 1(4) ; Store argument 0 in callee frame
633 : LD 1, 1(5) ; Load parameter 'xNum' into R1
634 : LDA 4, 5(5) ; Recompute callee base from caller size
635 : ST 1, 2(4) ; Store argument 1 in callee frame
636 : LD 1, 2(5) ; Load parameter 'xDen' into R1
637 : LDA 4, 5(5) ; Recompute callee base from caller size
638 : ST 1, 3(4) ; Store argument 2 in callee frame
639 : LD 1, 3(5) ; Load parameter 'N' into R1
640 : LDA 4, 5(5) ; Recompute callee base from caller size
641 : ST 1, 4(4) ; Store argument 3 in callee frame
642 : LDC 1, 0(0) ; Load integer-literal into R1
643 : LDA 4, 5(5) ; Recompute callee base from caller size
644 : ST 1, 5(4) ; Store argument 4 in callee frame
645 : LDC 1, 1(0) ; Load integer-literal into R1
646 : LDA 4, 5(5) ; Recompute callee base from caller size
647 : ST 1, 6(4) ; Store argument 5 in callee frame
648 : LDC 1, 1(0) ; Load integer-literal into R1
649 : LDA 4, 5(5) ; Recompute callee base from caller size
650 : ST 1, 7(4) ; Store argument 6 in callee frame
651 : LDC 1, 1(0) ; Load integer-literal into R1
652 : LDA 4, 5(5) ; Recompute callee base from caller size
653 : ST 1, 8(4) ; Store argument 7 in callee frame
654 : LDA 4, 5(5) ; Recompute callee base from caller size
655 : LDA 6, 659(0) ; Return address
656 : ST 6, 0(4) ; Store return address into callee frame
657 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
658 : LDA 7, 135(0) ; Call whileLoopFor
659 : LD 1, 9(5) ; Load callee result into R1
660 : LDC 2, 11(0) ; Callee frame size
661 : SUB 5, 5, 2 ; Pop back to caller
662 : LDA 4, 5(5) ; Recompute callee base from caller size
663 : ST 1, 3(4) ; Store argument 2 in callee frame
664 : LDC 1, 3(0) ; Load integer-literal into R1
665 : LDA 4, 5(5) ; Recompute callee base from caller size
666 : ST 1, 1(4) ; Store argument 0 in callee frame
667 : LD 1, 1(5) ; Load parameter 'xNum' into R1
668 : LDA 4, 5(5) ; Recompute callee base from caller size
669 : ST 1, 2(4) ; Store argument 1 in callee frame
670 : LD 1, 2(5) ; Load parameter 'xDen' into R1
671 : LDA 4, 5(5) ; Recompute callee base from caller size
672 : ST 1, 3(4) ; Store argument 2 in callee frame
673 : LD 1, 3(5) ; Load parameter 'N' into R1
674 : LDA 4, 5(5) ; Recompute callee base from caller size
675 : ST 1, 4(4) ; Store argument 3 in callee frame
676 : LDC 1, 0(0) ; Load integer-literal into R1
677 : LDA 4, 5(5) ; Recompute callee base from caller size
678 : ST 1, 5(4) ; Store argument 4 in callee frame
679 : LDC 1, 1(0) ; Load integer-literal into R1
680 : LDA 4, 5(5) ; Recompute callee base from caller size
681 : ST 1, 6(4) ; Store argument 5 in callee frame
682 : LDC 1, 1(0) ; Load integer-literal into R1
683 : LDA 4, 5(5) ; Recompute callee base from caller size
684 : ST 1, 7(4) ; Store argument 6 in callee frame
685 : LDC 1, 1(0) ; Load integer-literal into R1
686 : LDA 4, 5(5) ; Recompute callee base from caller size
687 : ST 1, 8(4) ; Store argument 7 in callee frame
688 : LDA 4, 5(5) ; Recompute callee base from caller size
689 : LDA 6, 693(0) ; Return address
690 : ST 6, 0(4) ; Store return address into callee frame
691 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
692 : LDA 7, 135(0) ; Call whileLoopFor
693 : LD 1, 9(5) ; Load callee result into R1
694 : LDC 2, 11(0) ; Callee frame size
695 : SUB 5, 5, 2 ; Pop back to caller
696 : LDA 4, 5(5) ; Recompute callee base from caller size
697 : ST 1, 4(4) ; Store argument 3 in callee frame
698 : LDC 1, 4(0) ; Load integer-literal into R1
699 : LDA 4, 5(5) ; Recompute callee base from caller size
700 : ST 1, 1(4) ; Store argument 0 in callee frame
701 : LD 1, 1(5) ; Load parameter 'xNum' into R1
702 : LDA 4, 5(5) ; Recompute callee base from caller size
703 : ST 1, 2(4) ; Store argument 1 in callee frame
704 : LD 1, 2(5) ; Load parameter 'xDen' into R1
705 : LDA 4, 5(5) ; Recompute callee base from caller size
706 : ST 1, 3(4) ; Store argument 2 in callee frame
707 : LD 1, 3(5) ; Load parameter 'N' into R1
708 : LDA 4, 5(5) ; Recompute callee base from caller size
709 : ST 1, 4(4) ; Store argument 3 in callee frame
710 : LDC 1, 0(0) ; Load integer-literal into R1
711 : LDA 4, 5(5) ; Recompute callee base from caller size
712 : ST 1, 5(4) ; Store argument 4 in callee frame
713 : LDC 1, 1(0) ; Load integer-literal into R1
714 : LDA 4, 5(5) ; Recompute callee base from caller size
715 : ST 1, 6(4) ; Store argument 5 in callee frame
716 : LDC 1, 1(0) ; Load integer-literal into R1
717 : LDA 4, 5(5) ; Recompute callee base from caller size
718 : ST 1, 7(4) ; Store argument 6 in callee frame
719 : LDC 1, 1(0) ; Load integer-literal into R1
720 : LDA 4, 5(5) ; Recompute callee base from caller size
721 : ST 1, 8(4) ; Store argument 7 in callee frame
722 : LDA 4, 5(5) ; Recompute callee base from caller size
723 : LDA 6, 727(0) ; Return address
724 : ST 6, 0(4) ; Store return address into callee frame
725 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
726 : LDA 7, 135(0) ; Call whileLoopFor
727 : LD 1, 9(5) ; Load callee result into R1
728 : LDC 2, 11(0) ; Callee frame size
729 : SUB 5, 5, 2 ; Pop back to caller
730 : LDA 4, 5(5) ; Recompute callee base from caller size
731 : ST 1, 5(4) ; Store argument 4 in callee frame
732 : LDA 4, 5(5) ; Recompute callee base from caller size
733 : LDA 6, 737(0) ; Return address
734 : ST 6, 0(4) ; Store return address into callee frame
735 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
736 : LDA 7, 422(0) ; Call fareySelectNum
737 : LD 1, 6(5) ; Load callee result into R1
738 : LDC 2, 7(0) ; Callee frame size
739 : SUB 5, 5, 2 ; Pop back to caller
740 : ST 1, 4(5) ; Store function result into frame return slot
741 : LD 6, 0(5) ; Load return address
742 : LDA 7, 0(6) ; Return to caller
