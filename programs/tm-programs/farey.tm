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
17 : LDA 4, 5(5) ; Recompute callee base from callee size
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LD 1, 2(5) ; Load parameter 'xDen' into R1
20 : LDA 4, 5(5) ; Recompute callee base from callee size
21 : ST 1, 2(4) ; Store argument 1 in callee
22 : LD 1, 3(5) ; Load parameter 'N' into R1
23 : LDA 4, 5(5) ; Recompute callee base from callee size
24 : ST 1, 3(4) ; Store argument 2 in callee
25 : LDA 4, 5(5) ; Recompute callee base from callee size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
29 : LDA 7, 590(0) ; Call fareyNum
30 : LD 1, 4(5) ; Load callee result into R1
31 : LDC 2, 5(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop callee frame
33 : LDA 4, 5(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 13(0) ; Call built-in print
38 : LDC 2, 5(0) ; Caller frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : LD 1, 1(5) ; Load parameter 'xNum' into R1
41 : LDA 4, 5(5) ; Recompute callee base from callee size
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD 1, 2(5) ; Load parameter 'xDen' into R1
44 : LDA 4, 5(5) ; Recompute callee base from callee size
45 : ST 1, 2(4) ; Store argument 1 in callee
46 : LD 1, 3(5) ; Load parameter 'N' into R1
47 : LDA 4, 5(5) ; Recompute callee base from callee size
48 : ST 1, 3(4) ; Store argument 2 in callee
49 : LDA 4, 5(5) ; Recompute callee base from callee size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
53 : LDA 7, 440(0) ; Call fareyDen
54 : LD 1, 4(5) ; Load callee result into R1
55 : LDC 2, 5(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop callee frame
57 : ST 1, 4(5) ; Store result into caller’s frame
58 : LD 1, 4(5) ; Load main return value into R1
59 : LD 6, 0(5) ; Load main return address
60 : LDA 7, 0(6) ; Return from main
61 : LD 1, 1(5) ; Load parameter 'x' into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LD 1, 2(5) ; Load parameter 'y' into R1
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : SUB 1, 2, 1 ; left - right for less-than check
66 : JLT 1, 2(7) ; If R1 < 0, jump to true
67 : LDC 1, 0(0) ; false
68 : LDA 7, 1(7) ; skip setting true
69 : LDC 1, 1(0) ; true
70 : ST 1, 4(5) ; Spill left operand at depth 0
71 : LD 1, 1(5) ; Load parameter 'x' into R1
72 : ST 1, 5(5) ; Spill left operand at depth 1
73 : LD 1, 2(5) ; Load parameter 'y' into R1
74 : LD 2, 5(5) ; Restore left operand from depth 1
75 : SUB 1, 2, 1 ; left - right for equality check
76 : JEQ 1, 2(7) ; If R1 == 0, jump to true
77 : LDC 1, 0(0) ; false
78 : LDA 7, 1(7) ; skip setting true
79 : LDC 1, 1(0) ; true
80 : LD 2, 4(5) ; Restore left operand from depth 0
81 : ADD 1, 2, 1 ; R1 = left OR right
82 : LDC 2, 1(0) ; Load 1 into R2
83 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
84 : ST 1, 3(5) ; Store function result into frame return slot
85 : LD 6, 0(5) ; Load return address
86 : LDA 7, 0(6) ; Return to caller
87 : LD 1, 1(5) ; Load parameter 'x' into R1
88 : ST 1, 6(5) ; Spill left operand at depth 0
89 : LD 1, 4(5) ; Load parameter 'yd' into R1
90 : LD 2, 6(5) ; Restore left operand from depth 0
91 : MUL 1, 2, 1 ; R1 = left * right
92 : LDA 4, 6(5) ; Recompute callee base from callee size
93 : ST 1, 1(4) ; Store argument 0 in callee
94 : LD 1, 3(5) ; Load parameter 'y' into R1
95 : ST 1, 6(5) ; Spill left operand at depth 0
96 : LD 1, 2(5) ; Load parameter 'xd' into R1
97 : LD 2, 6(5) ; Restore left operand from depth 0
98 : MUL 1, 2, 1 ; R1 = left * right
99 : LDA 4, 6(5) ; Recompute callee base from callee size
100 : ST 1, 2(4) ; Store argument 1 in callee
101 : LDA 4, 6(5) ; Recompute callee base from callee size
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
105 : LDA 7, 61(0) ; Call greater
106 : LD 1, 3(5) ; Load callee result into R1
107 : LDC 2, 6(0) ; Callee frame size
108 : SUB 5, 5, 2 ; Pop callee frame
109 : ST 1, 5(5) ; Store function result into frame return slot
110 : LD 6, 0(5) ; Load return address
111 : LDA 7, 0(6) ; Return to caller
112 : LD 1, 1(5) ; Load parameter 'x' into R1
113 : ST 1, 6(5) ; Spill left operand at depth 0
114 : LD 1, 4(5) ; Load parameter 'yd' into R1
115 : LD 2, 6(5) ; Restore left operand from depth 0
116 : MUL 1, 2, 1 ; R1 = left * right
117 : ST 1, 6(5) ; Spill left operand at depth 0
118 : LD 1, 3(5) ; Load parameter 'y' into R1
119 : ST 1, 7(5) ; Spill left operand at depth 1
120 : LD 1, 2(5) ; Load parameter 'xd' into R1
121 : LD 2, 7(5) ; Restore left operand from depth 1
122 : MUL 1, 2, 1 ; R1 = left * right
123 : LD 2, 6(5) ; Restore left operand from depth 0
124 : SUB 1, 2, 1 ; left - right for equality check
125 : JEQ 1, 2(7) ; If R1 == 0, jump to true
126 : LDC 1, 0(0) ; false
127 : LDA 7, 1(7) ; skip setting true
128 : LDC 1, 1(0) ; true
129 : ST 1, 5(5) ; Store function result into frame return slot
130 : LD 6, 0(5) ; Load return address
131 : LDA 7, 0(6) ; Return to caller
132 : LD 1, 6(5) ; Load parameter 'b' into R1
133 : LDA 4, 6(5) ; Recompute callee base from callee size
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD 1, 4(5) ; Load parameter 'N' into R1
136 : LDA 4, 6(5) ; Recompute callee base from callee size
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 4, 6(5) ; Recompute callee base from callee size
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 61(0) ; Call greater
143 : LD 1, 3(5) ; Load callee result into R1
144 : LDC 2, 6(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : ST 1, 10(5) ; Spill left operand at depth 0
147 : LD 1, 8(5) ; Load parameter 'd' into R1
148 : LDA 4, 6(5) ; Recompute callee base from callee size
149 : ST 1, 1(4) ; Store argument 0 in callee
150 : LD 1, 4(5) ; Load parameter 'N' into R1
151 : LDA 4, 6(5) ; Recompute callee base from callee size
152 : ST 1, 2(4) ; Store argument 1 in callee
153 : LDA 4, 6(5) ; Recompute callee base from callee size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
157 : LDA 7, 61(0) ; Call greater
158 : LD 1, 3(5) ; Load callee result into R1
159 : LDC 2, 6(0) ; Callee frame size
160 : SUB 5, 5, 2 ; Pop callee frame
161 : LD 2, 10(5) ; Restore left operand from depth 0
162 : ADD 1, 2, 1 ; R1 = left OR right
163 : JEQ 1, 202(0) ; If condition is false, jump to ELSE
164 : LD 1, 1(5) ; Load parameter 'selector' into R1
165 : ST 1, 10(5) ; Spill left operand at depth 0
166 : LDC 1, 1(0) ; Load integer-literal into R1
167 : LD 2, 10(5) ; Restore left operand from depth 0
168 : SUB 1, 2, 1 ; left - right for equality check
169 : JEQ 1, 2(7) ; If R1 == 0, jump to true
170 : LDC 1, 0(0) ; false
171 : LDA 7, 1(7) ; skip setting true
172 : LDC 1, 1(0) ; true
173 : JEQ 1, 176(0) ; If condition is false, jump to ELSE
174 : LD 1, 5(5) ; Load parameter 'a' into R1
175 : LDA 7, 201(0) ; Skip ELSE block
176 : LD 1, 1(5) ; Load parameter 'selector' into R1
177 : ST 1, 10(5) ; Spill left operand at depth 0
178 : LDC 1, 2(0) ; Load integer-literal into R1
179 : LD 2, 10(5) ; Restore left operand from depth 0
180 : SUB 1, 2, 1 ; left - right for equality check
181 : JEQ 1, 2(7) ; If R1 == 0, jump to true
182 : LDC 1, 0(0) ; false
183 : LDA 7, 1(7) ; skip setting true
184 : LDC 1, 1(0) ; true
185 : JEQ 1, 188(0) ; If condition is false, jump to ELSE
186 : LD 1, 6(5) ; Load parameter 'b' into R1
187 : LDA 7, 201(0) ; Skip ELSE block
188 : LD 1, 1(5) ; Load parameter 'selector' into R1
189 : ST 1, 10(5) ; Spill left operand at depth 0
190 : LDC 1, 3(0) ; Load integer-literal into R1
191 : LD 2, 10(5) ; Restore left operand from depth 0
192 : SUB 1, 2, 1 ; left - right for equality check
193 : JEQ 1, 2(7) ; If R1 == 0, jump to true
194 : LDC 1, 0(0) ; false
195 : LDA 7, 1(7) ; skip setting true
196 : LDC 1, 1(0) ; true
197 : JEQ 1, 200(0) ; If condition is false, jump to ELSE
198 : LD 1, 7(5) ; Load parameter 'c' into R1
199 : LDA 7, 201(0) ; Skip ELSE block
200 : LD 1, 8(5) ; Load parameter 'd' into R1
201 : LDA 7, 395(0) ; Skip ELSE block
202 : LD 1, 2(5) ; Load parameter 'xNum' into R1
203 : LDA 4, 8(5) ; Recompute callee base from callee size
204 : ST 1, 1(4) ; Store argument 0 in callee
205 : LD 1, 3(5) ; Load parameter 'xDen' into R1
206 : LDA 4, 8(5) ; Recompute callee base from callee size
207 : ST 1, 2(4) ; Store argument 1 in callee
208 : LD 1, 5(5) ; Load parameter 'a' into R1
209 : ST 1, 10(5) ; Spill left operand at depth 0
210 : LD 1, 7(5) ; Load parameter 'c' into R1
211 : LD 2, 10(5) ; Restore left operand from depth 0
212 : ADD 1, 2, 1 ; R1 = left + right
213 : LDA 4, 8(5) ; Recompute callee base from callee size
214 : ST 1, 3(4) ; Store argument 2 in callee
215 : LD 1, 6(5) ; Load parameter 'b' into R1
216 : ST 1, 10(5) ; Spill left operand at depth 0
217 : LD 1, 8(5) ; Load parameter 'd' into R1
218 : LD 2, 10(5) ; Restore left operand from depth 0
219 : ADD 1, 2, 1 ; R1 = left + right
220 : LDA 4, 8(5) ; Recompute callee base from callee size
221 : ST 1, 4(4) ; Store argument 3 in callee
222 : LDA 4, 8(5) ; Recompute callee base from callee size
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
226 : LDA 7, 112(0) ; Call fractionEqual
227 : LD 1, 5(5) ; Load callee result into R1
228 : LDC 2, 8(0) ; Callee frame size
229 : SUB 5, 5, 2 ; Pop callee frame
230 : JEQ 1, 285(0) ; If condition is false, jump to ELSE
231 : LD 1, 1(5) ; Load parameter 'selector' into R1
232 : ST 1, 10(5) ; Spill left operand at depth 0
233 : LDC 1, 1(0) ; Load integer-literal into R1
234 : LD 2, 10(5) ; Restore left operand from depth 0
235 : SUB 1, 2, 1 ; left - right for equality check
236 : JEQ 1, 2(7) ; If R1 == 0, jump to true
237 : LDC 1, 0(0) ; false
238 : LDA 7, 1(7) ; skip setting true
239 : LDC 1, 1(0) ; true
240 : JEQ 1, 247(0) ; If condition is false, jump to ELSE
241 : LD 1, 5(5) ; Load parameter 'a' into R1
242 : ST 1, 10(5) ; Spill left operand at depth 0
243 : LD 1, 7(5) ; Load parameter 'c' into R1
244 : LD 2, 10(5) ; Restore left operand from depth 0
245 : ADD 1, 2, 1 ; R1 = left + right
246 : LDA 7, 284(0) ; Skip ELSE block
247 : LD 1, 1(5) ; Load parameter 'selector' into R1
248 : ST 1, 10(5) ; Spill left operand at depth 0
249 : LDC 1, 2(0) ; Load integer-literal into R1
250 : LD 2, 10(5) ; Restore left operand from depth 0
251 : SUB 1, 2, 1 ; left - right for equality check
252 : JEQ 1, 2(7) ; If R1 == 0, jump to true
253 : LDC 1, 0(0) ; false
254 : LDA 7, 1(7) ; skip setting true
255 : LDC 1, 1(0) ; true
256 : JEQ 1, 263(0) ; If condition is false, jump to ELSE
257 : LD 1, 6(5) ; Load parameter 'b' into R1
258 : ST 1, 10(5) ; Spill left operand at depth 0
259 : LD 1, 8(5) ; Load parameter 'd' into R1
260 : LD 2, 10(5) ; Restore left operand from depth 0
261 : ADD 1, 2, 1 ; R1 = left + right
262 : LDA 7, 284(0) ; Skip ELSE block
263 : LD 1, 1(5) ; Load parameter 'selector' into R1
264 : ST 1, 10(5) ; Spill left operand at depth 0
265 : LDC 1, 3(0) ; Load integer-literal into R1
266 : LD 2, 10(5) ; Restore left operand from depth 0
267 : SUB 1, 2, 1 ; left - right for equality check
268 : JEQ 1, 2(7) ; If R1 == 0, jump to true
269 : LDC 1, 0(0) ; false
270 : LDA 7, 1(7) ; skip setting true
271 : LDC 1, 1(0) ; true
272 : JEQ 1, 279(0) ; If condition is false, jump to ELSE
273 : LD 1, 5(5) ; Load parameter 'a' into R1
274 : ST 1, 10(5) ; Spill left operand at depth 0
275 : LD 1, 7(5) ; Load parameter 'c' into R1
276 : LD 2, 10(5) ; Restore left operand from depth 0
277 : ADD 1, 2, 1 ; R1 = left + right
278 : LDA 7, 284(0) ; Skip ELSE block
279 : LD 1, 6(5) ; Load parameter 'b' into R1
280 : ST 1, 10(5) ; Spill left operand at depth 0
281 : LD 1, 8(5) ; Load parameter 'd' into R1
282 : LD 2, 10(5) ; Restore left operand from depth 0
283 : ADD 1, 2, 1 ; R1 = left + right
284 : LDA 7, 395(0) ; Skip ELSE block
285 : LD 1, 2(5) ; Load parameter 'xNum' into R1
286 : LDA 4, 7(5) ; Recompute callee base from callee size
287 : ST 1, 1(4) ; Store argument 0 in callee
288 : LD 1, 3(5) ; Load parameter 'xDen' into R1
289 : LDA 4, 7(5) ; Recompute callee base from callee size
290 : ST 1, 2(4) ; Store argument 1 in callee
291 : LD 1, 5(5) ; Load parameter 'a' into R1
292 : ST 1, 10(5) ; Spill left operand at depth 0
293 : LD 1, 7(5) ; Load parameter 'c' into R1
294 : LD 2, 10(5) ; Restore left operand from depth 0
295 : ADD 1, 2, 1 ; R1 = left + right
296 : LDA 4, 7(5) ; Recompute callee base from callee size
297 : ST 1, 3(4) ; Store argument 2 in callee
298 : LD 1, 6(5) ; Load parameter 'b' into R1
299 : ST 1, 10(5) ; Spill left operand at depth 0
300 : LD 1, 8(5) ; Load parameter 'd' into R1
301 : LD 2, 10(5) ; Restore left operand from depth 0
302 : ADD 1, 2, 1 ; R1 = left + right
303 : LDA 4, 7(5) ; Recompute callee base from callee size
304 : ST 1, 4(4) ; Store argument 3 in callee
305 : LDA 4, 7(5) ; Recompute callee base from callee size
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return in callee frame
308 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
309 : LDA 7, 87(0) ; Call fractionGreater
310 : LD 1, 5(5) ; Load callee result into R1
311 : LDC 2, 7(0) ; Callee frame size
312 : SUB 5, 5, 2 ; Pop callee frame
313 : JEQ 1, 355(0) ; If condition is false, jump to ELSE
314 : LD 1, 1(5) ; Load parameter 'selector' into R1
315 : LDA 4, 11(5) ; Recompute callee base from callee size
316 : ST 1, 1(4) ; Store argument 0 in callee
317 : LD 1, 2(5) ; Load parameter 'xNum' into R1
318 : LDA 4, 11(5) ; Recompute callee base from callee size
319 : ST 1, 2(4) ; Store argument 1 in callee
320 : LD 1, 3(5) ; Load parameter 'xDen' into R1
321 : LDA 4, 11(5) ; Recompute callee base from callee size
322 : ST 1, 3(4) ; Store argument 2 in callee
323 : LD 1, 4(5) ; Load parameter 'N' into R1
324 : LDA 4, 11(5) ; Recompute callee base from callee size
325 : ST 1, 4(4) ; Store argument 3 in callee
326 : LD 1, 5(5) ; Load parameter 'a' into R1
327 : ST 1, 10(5) ; Spill left operand at depth 0
328 : LD 1, 7(5) ; Load parameter 'c' into R1
329 : LD 2, 10(5) ; Restore left operand from depth 0
330 : ADD 1, 2, 1 ; R1 = left + right
331 : LDA 4, 11(5) ; Recompute callee base from callee size
332 : ST 1, 5(4) ; Store argument 4 in callee
333 : LD 1, 6(5) ; Load parameter 'b' into R1
334 : ST 1, 10(5) ; Spill left operand at depth 0
335 : LD 1, 8(5) ; Load parameter 'd' into R1
336 : LD 2, 10(5) ; Restore left operand from depth 0
337 : ADD 1, 2, 1 ; R1 = left + right
338 : LDA 4, 11(5) ; Recompute callee base from callee size
339 : ST 1, 6(4) ; Store argument 5 in callee
340 : LD 1, 7(5) ; Load parameter 'c' into R1
341 : LDA 4, 11(5) ; Recompute callee base from callee size
342 : ST 1, 7(4) ; Store argument 6 in callee
343 : LD 1, 8(5) ; Load parameter 'd' into R1
344 : LDA 4, 11(5) ; Recompute callee base from callee size
345 : ST 1, 8(4) ; Store argument 7 in callee
346 : LDA 4, 11(5) ; Recompute callee base from callee size
347 : LDA 6, 351(0) ; Return address
348 : ST 6, 0(4) ; Store return in callee frame
349 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
350 : LDA 7, 132(0) ; Call whileLoopFor
351 : LD 1, 9(5) ; Load callee result into R1
352 : LDC 2, 11(0) ; Callee frame size
353 : SUB 5, 5, 2 ; Pop callee frame
354 : LDA 7, 395(0) ; Skip ELSE block
355 : LD 1, 1(5) ; Load parameter 'selector' into R1
356 : LDA 4, 11(5) ; Recompute callee base from callee size
357 : ST 1, 1(4) ; Store argument 0 in callee
358 : LD 1, 2(5) ; Load parameter 'xNum' into R1
359 : LDA 4, 11(5) ; Recompute callee base from callee size
360 : ST 1, 2(4) ; Store argument 1 in callee
361 : LD 1, 3(5) ; Load parameter 'xDen' into R1
362 : LDA 4, 11(5) ; Recompute callee base from callee size
363 : ST 1, 3(4) ; Store argument 2 in callee
364 : LD 1, 4(5) ; Load parameter 'N' into R1
365 : LDA 4, 11(5) ; Recompute callee base from callee size
366 : ST 1, 4(4) ; Store argument 3 in callee
367 : LD 1, 5(5) ; Load parameter 'a' into R1
368 : LDA 4, 11(5) ; Recompute callee base from callee size
369 : ST 1, 5(4) ; Store argument 4 in callee
370 : LD 1, 6(5) ; Load parameter 'b' into R1
371 : LDA 4, 11(5) ; Recompute callee base from callee size
372 : ST 1, 6(4) ; Store argument 5 in callee
373 : LD 1, 5(5) ; Load parameter 'a' into R1
374 : ST 1, 10(5) ; Spill left operand at depth 0
375 : LD 1, 7(5) ; Load parameter 'c' into R1
376 : LD 2, 10(5) ; Restore left operand from depth 0
377 : ADD 1, 2, 1 ; R1 = left + right
378 : LDA 4, 11(5) ; Recompute callee base from callee size
379 : ST 1, 7(4) ; Store argument 6 in callee
380 : LD 1, 6(5) ; Load parameter 'b' into R1
381 : ST 1, 10(5) ; Spill left operand at depth 0
382 : LD 1, 8(5) ; Load parameter 'd' into R1
383 : LD 2, 10(5) ; Restore left operand from depth 0
384 : ADD 1, 2, 1 ; R1 = left + right
385 : LDA 4, 11(5) ; Recompute callee base from callee size
386 : ST 1, 8(4) ; Store argument 7 in callee
387 : LDA 4, 11(5) ; Recompute callee base from callee size
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(4) ; Store return in callee frame
390 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
391 : LDA 7, 132(0) ; Call whileLoopFor
392 : LD 1, 9(5) ; Load callee result into R1
393 : LDC 2, 11(0) ; Callee frame size
394 : SUB 5, 5, 2 ; Pop callee frame
395 : ST 1, 9(5) ; Store function result into frame return slot
396 : LD 6, 0(5) ; Load return address
397 : LDA 7, 0(6) ; Return to caller
398 : LD 1, 3(5) ; Load parameter 'b' into R1
399 : LDA 4, 6(5) ; Recompute callee base from callee size
400 : ST 1, 1(4) ; Store argument 0 in callee
401 : LD 1, 1(5) ; Load parameter 'N' into R1
402 : LDA 4, 6(5) ; Recompute callee base from callee size
403 : ST 1, 2(4) ; Store argument 1 in callee
404 : LDA 4, 6(5) ; Recompute callee base from callee size
405 : LDA 6, 409(0) ; Return address
406 : ST 6, 0(4) ; Store return in callee frame
407 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
408 : LDA 7, 61(0) ; Call greater
409 : LD 1, 3(5) ; Load callee result into R1
410 : LDC 2, 6(0) ; Callee frame size
411 : SUB 5, 5, 2 ; Pop callee frame
412 : JEQ 1, 415(0) ; If condition is false, jump to ELSE
413 : LD 1, 5(5) ; Load parameter 'd' into R1
414 : LDA 7, 416(0) ; Skip ELSE block
415 : LD 1, 3(5) ; Load parameter 'b' into R1
416 : ST 1, 6(5) ; Store function result into frame return slot
417 : LD 6, 0(5) ; Load return address
418 : LDA 7, 0(6) ; Return to caller
419 : LD 1, 3(5) ; Load parameter 'b' into R1
420 : LDA 4, 6(5) ; Recompute callee base from callee size
421 : ST 1, 1(4) ; Store argument 0 in callee
422 : LD 1, 1(5) ; Load parameter 'N' into R1
423 : LDA 4, 6(5) ; Recompute callee base from callee size
424 : ST 1, 2(4) ; Store argument 1 in callee
425 : LDA 4, 6(5) ; Recompute callee base from callee size
426 : LDA 6, 430(0) ; Return address
427 : ST 6, 0(4) ; Store return in callee frame
428 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
429 : LDA 7, 61(0) ; Call greater
430 : LD 1, 3(5) ; Load callee result into R1
431 : LDC 2, 6(0) ; Callee frame size
432 : SUB 5, 5, 2 ; Pop callee frame
433 : JEQ 1, 436(0) ; If condition is false, jump to ELSE
434 : LD 1, 4(5) ; Load parameter 'c' into R1
435 : LDA 7, 437(0) ; Skip ELSE block
436 : LD 1, 2(5) ; Load parameter 'a' into R1
437 : ST 1, 6(5) ; Store function result into frame return slot
438 : LD 6, 0(5) ; Load return address
439 : LDA 7, 0(6) ; Return to caller
440 : LD 1, 3(5) ; Load parameter 'N' into R1
441 : LDA 4, 7(5) ; Recompute callee base from callee size
442 : ST 1, 1(4) ; Store argument 0 in callee
443 : LDC 1, 1(0) ; Load integer-literal into R1
444 : LDA 4, 11(5) ; Recompute callee base from callee size
445 : ST 1, 1(4) ; Store argument 0 in callee
446 : LD 1, 1(5) ; Load parameter 'xNum' into R1
447 : LDA 4, 11(5) ; Recompute callee base from callee size
448 : ST 1, 2(4) ; Store argument 1 in callee
449 : LD 1, 2(5) ; Load parameter 'xDen' into R1
450 : LDA 4, 11(5) ; Recompute callee base from callee size
451 : ST 1, 3(4) ; Store argument 2 in callee
452 : LD 1, 3(5) ; Load parameter 'N' into R1
453 : LDA 4, 11(5) ; Recompute callee base from callee size
454 : ST 1, 4(4) ; Store argument 3 in callee
455 : LDC 1, 0(0) ; Load integer-literal into R1
456 : LDA 4, 11(5) ; Recompute callee base from callee size
457 : ST 1, 5(4) ; Store argument 4 in callee
458 : LDC 1, 1(0) ; Load integer-literal into R1
459 : LDA 4, 11(5) ; Recompute callee base from callee size
460 : ST 1, 6(4) ; Store argument 5 in callee
461 : LDC 1, 1(0) ; Load integer-literal into R1
462 : LDA 4, 11(5) ; Recompute callee base from callee size
463 : ST 1, 7(4) ; Store argument 6 in callee
464 : LDC 1, 1(0) ; Load integer-literal into R1
465 : LDA 4, 11(5) ; Recompute callee base from callee size
466 : ST 1, 8(4) ; Store argument 7 in callee
467 : LDA 4, 11(5) ; Recompute callee base from callee size
468 : LDA 6, 472(0) ; Return address
469 : ST 6, 0(4) ; Store return in callee frame
470 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
471 : LDA 7, 132(0) ; Call whileLoopFor
472 : LD 1, 9(5) ; Load callee result into R1
473 : LDC 2, 11(0) ; Callee frame size
474 : SUB 5, 5, 2 ; Pop callee frame
475 : LDA 4, 7(5) ; Recompute callee base from callee size
476 : ST 1, 2(4) ; Store argument 1 in callee
477 : LDC 1, 2(0) ; Load integer-literal into R1
478 : LDA 4, 11(5) ; Recompute callee base from callee size
479 : ST 1, 1(4) ; Store argument 0 in callee
480 : LD 1, 1(5) ; Load parameter 'xNum' into R1
481 : LDA 4, 11(5) ; Recompute callee base from callee size
482 : ST 1, 2(4) ; Store argument 1 in callee
483 : LD 1, 2(5) ; Load parameter 'xDen' into R1
484 : LDA 4, 11(5) ; Recompute callee base from callee size
485 : ST 1, 3(4) ; Store argument 2 in callee
486 : LD 1, 3(5) ; Load parameter 'N' into R1
487 : LDA 4, 11(5) ; Recompute callee base from callee size
488 : ST 1, 4(4) ; Store argument 3 in callee
489 : LDC 1, 0(0) ; Load integer-literal into R1
490 : LDA 4, 11(5) ; Recompute callee base from callee size
491 : ST 1, 5(4) ; Store argument 4 in callee
492 : LDC 1, 1(0) ; Load integer-literal into R1
493 : LDA 4, 11(5) ; Recompute callee base from callee size
494 : ST 1, 6(4) ; Store argument 5 in callee
495 : LDC 1, 1(0) ; Load integer-literal into R1
496 : LDA 4, 11(5) ; Recompute callee base from callee size
497 : ST 1, 7(4) ; Store argument 6 in callee
498 : LDC 1, 1(0) ; Load integer-literal into R1
499 : LDA 4, 11(5) ; Recompute callee base from callee size
500 : ST 1, 8(4) ; Store argument 7 in callee
501 : LDA 4, 11(5) ; Recompute callee base from callee size
502 : LDA 6, 506(0) ; Return address
503 : ST 6, 0(4) ; Store return in callee frame
504 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
505 : LDA 7, 132(0) ; Call whileLoopFor
506 : LD 1, 9(5) ; Load callee result into R1
507 : LDC 2, 11(0) ; Callee frame size
508 : SUB 5, 5, 2 ; Pop callee frame
509 : LDA 4, 7(5) ; Recompute callee base from callee size
510 : ST 1, 3(4) ; Store argument 2 in callee
511 : LDC 1, 3(0) ; Load integer-literal into R1
512 : LDA 4, 11(5) ; Recompute callee base from callee size
513 : ST 1, 1(4) ; Store argument 0 in callee
514 : LD 1, 1(5) ; Load parameter 'xNum' into R1
515 : LDA 4, 11(5) ; Recompute callee base from callee size
516 : ST 1, 2(4) ; Store argument 1 in callee
517 : LD 1, 2(5) ; Load parameter 'xDen' into R1
518 : LDA 4, 11(5) ; Recompute callee base from callee size
519 : ST 1, 3(4) ; Store argument 2 in callee
520 : LD 1, 3(5) ; Load parameter 'N' into R1
521 : LDA 4, 11(5) ; Recompute callee base from callee size
522 : ST 1, 4(4) ; Store argument 3 in callee
523 : LDC 1, 0(0) ; Load integer-literal into R1
524 : LDA 4, 11(5) ; Recompute callee base from callee size
525 : ST 1, 5(4) ; Store argument 4 in callee
526 : LDC 1, 1(0) ; Load integer-literal into R1
527 : LDA 4, 11(5) ; Recompute callee base from callee size
528 : ST 1, 6(4) ; Store argument 5 in callee
529 : LDC 1, 1(0) ; Load integer-literal into R1
530 : LDA 4, 11(5) ; Recompute callee base from callee size
531 : ST 1, 7(4) ; Store argument 6 in callee
532 : LDC 1, 1(0) ; Load integer-literal into R1
533 : LDA 4, 11(5) ; Recompute callee base from callee size
534 : ST 1, 8(4) ; Store argument 7 in callee
535 : LDA 4, 11(5) ; Recompute callee base from callee size
536 : LDA 6, 540(0) ; Return address
537 : ST 6, 0(4) ; Store return in callee frame
538 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
539 : LDA 7, 132(0) ; Call whileLoopFor
540 : LD 1, 9(5) ; Load callee result into R1
541 : LDC 2, 11(0) ; Callee frame size
542 : SUB 5, 5, 2 ; Pop callee frame
543 : LDA 4, 7(5) ; Recompute callee base from callee size
544 : ST 1, 4(4) ; Store argument 3 in callee
545 : LDC 1, 4(0) ; Load integer-literal into R1
546 : LDA 4, 11(5) ; Recompute callee base from callee size
547 : ST 1, 1(4) ; Store argument 0 in callee
548 : LD 1, 1(5) ; Load parameter 'xNum' into R1
549 : LDA 4, 11(5) ; Recompute callee base from callee size
550 : ST 1, 2(4) ; Store argument 1 in callee
551 : LD 1, 2(5) ; Load parameter 'xDen' into R1
552 : LDA 4, 11(5) ; Recompute callee base from callee size
553 : ST 1, 3(4) ; Store argument 2 in callee
554 : LD 1, 3(5) ; Load parameter 'N' into R1
555 : LDA 4, 11(5) ; Recompute callee base from callee size
556 : ST 1, 4(4) ; Store argument 3 in callee
557 : LDC 1, 0(0) ; Load integer-literal into R1
558 : LDA 4, 11(5) ; Recompute callee base from callee size
559 : ST 1, 5(4) ; Store argument 4 in callee
560 : LDC 1, 1(0) ; Load integer-literal into R1
561 : LDA 4, 11(5) ; Recompute callee base from callee size
562 : ST 1, 6(4) ; Store argument 5 in callee
563 : LDC 1, 1(0) ; Load integer-literal into R1
564 : LDA 4, 11(5) ; Recompute callee base from callee size
565 : ST 1, 7(4) ; Store argument 6 in callee
566 : LDC 1, 1(0) ; Load integer-literal into R1
567 : LDA 4, 11(5) ; Recompute callee base from callee size
568 : ST 1, 8(4) ; Store argument 7 in callee
569 : LDA 4, 11(5) ; Recompute callee base from callee size
570 : LDA 6, 574(0) ; Return address
571 : ST 6, 0(4) ; Store return in callee frame
572 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
573 : LDA 7, 132(0) ; Call whileLoopFor
574 : LD 1, 9(5) ; Load callee result into R1
575 : LDC 2, 11(0) ; Callee frame size
576 : SUB 5, 5, 2 ; Pop callee frame
577 : LDA 4, 7(5) ; Recompute callee base from callee size
578 : ST 1, 5(4) ; Store argument 4 in callee
579 : LDA 4, 7(5) ; Recompute callee base from callee size
580 : LDA 6, 584(0) ; Return address
581 : ST 6, 0(4) ; Store return in callee frame
582 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
583 : LDA 7, 398(0) ; Call fareySelectDen
584 : LD 1, 6(5) ; Load callee result into R1
585 : LDC 2, 7(0) ; Callee frame size
586 : SUB 5, 5, 2 ; Pop callee frame
587 : ST 1, 4(5) ; Store function result into frame return slot
588 : LD 6, 0(5) ; Load return address
589 : LDA 7, 0(6) ; Return to caller
590 : LD 1, 3(5) ; Load parameter 'N' into R1
591 : LDA 4, 7(5) ; Recompute callee base from callee size
592 : ST 1, 1(4) ; Store argument 0 in callee
593 : LDC 1, 1(0) ; Load integer-literal into R1
594 : LDA 4, 11(5) ; Recompute callee base from callee size
595 : ST 1, 1(4) ; Store argument 0 in callee
596 : LD 1, 1(5) ; Load parameter 'xNum' into R1
597 : LDA 4, 11(5) ; Recompute callee base from callee size
598 : ST 1, 2(4) ; Store argument 1 in callee
599 : LD 1, 2(5) ; Load parameter 'xDen' into R1
600 : LDA 4, 11(5) ; Recompute callee base from callee size
601 : ST 1, 3(4) ; Store argument 2 in callee
602 : LD 1, 3(5) ; Load parameter 'N' into R1
603 : LDA 4, 11(5) ; Recompute callee base from callee size
604 : ST 1, 4(4) ; Store argument 3 in callee
605 : LDC 1, 0(0) ; Load integer-literal into R1
606 : LDA 4, 11(5) ; Recompute callee base from callee size
607 : ST 1, 5(4) ; Store argument 4 in callee
608 : LDC 1, 1(0) ; Load integer-literal into R1
609 : LDA 4, 11(5) ; Recompute callee base from callee size
610 : ST 1, 6(4) ; Store argument 5 in callee
611 : LDC 1, 1(0) ; Load integer-literal into R1
612 : LDA 4, 11(5) ; Recompute callee base from callee size
613 : ST 1, 7(4) ; Store argument 6 in callee
614 : LDC 1, 1(0) ; Load integer-literal into R1
615 : LDA 4, 11(5) ; Recompute callee base from callee size
616 : ST 1, 8(4) ; Store argument 7 in callee
617 : LDA 4, 11(5) ; Recompute callee base from callee size
618 : LDA 6, 622(0) ; Return address
619 : ST 6, 0(4) ; Store return in callee frame
620 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
621 : LDA 7, 132(0) ; Call whileLoopFor
622 : LD 1, 9(5) ; Load callee result into R1
623 : LDC 2, 11(0) ; Callee frame size
624 : SUB 5, 5, 2 ; Pop callee frame
625 : LDA 4, 7(5) ; Recompute callee base from callee size
626 : ST 1, 2(4) ; Store argument 1 in callee
627 : LDC 1, 2(0) ; Load integer-literal into R1
628 : LDA 4, 11(5) ; Recompute callee base from callee size
629 : ST 1, 1(4) ; Store argument 0 in callee
630 : LD 1, 1(5) ; Load parameter 'xNum' into R1
631 : LDA 4, 11(5) ; Recompute callee base from callee size
632 : ST 1, 2(4) ; Store argument 1 in callee
633 : LD 1, 2(5) ; Load parameter 'xDen' into R1
634 : LDA 4, 11(5) ; Recompute callee base from callee size
635 : ST 1, 3(4) ; Store argument 2 in callee
636 : LD 1, 3(5) ; Load parameter 'N' into R1
637 : LDA 4, 11(5) ; Recompute callee base from callee size
638 : ST 1, 4(4) ; Store argument 3 in callee
639 : LDC 1, 0(0) ; Load integer-literal into R1
640 : LDA 4, 11(5) ; Recompute callee base from callee size
641 : ST 1, 5(4) ; Store argument 4 in callee
642 : LDC 1, 1(0) ; Load integer-literal into R1
643 : LDA 4, 11(5) ; Recompute callee base from callee size
644 : ST 1, 6(4) ; Store argument 5 in callee
645 : LDC 1, 1(0) ; Load integer-literal into R1
646 : LDA 4, 11(5) ; Recompute callee base from callee size
647 : ST 1, 7(4) ; Store argument 6 in callee
648 : LDC 1, 1(0) ; Load integer-literal into R1
649 : LDA 4, 11(5) ; Recompute callee base from callee size
650 : ST 1, 8(4) ; Store argument 7 in callee
651 : LDA 4, 11(5) ; Recompute callee base from callee size
652 : LDA 6, 656(0) ; Return address
653 : ST 6, 0(4) ; Store return in callee frame
654 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
655 : LDA 7, 132(0) ; Call whileLoopFor
656 : LD 1, 9(5) ; Load callee result into R1
657 : LDC 2, 11(0) ; Callee frame size
658 : SUB 5, 5, 2 ; Pop callee frame
659 : LDA 4, 7(5) ; Recompute callee base from callee size
660 : ST 1, 3(4) ; Store argument 2 in callee
661 : LDC 1, 3(0) ; Load integer-literal into R1
662 : LDA 4, 11(5) ; Recompute callee base from callee size
663 : ST 1, 1(4) ; Store argument 0 in callee
664 : LD 1, 1(5) ; Load parameter 'xNum' into R1
665 : LDA 4, 11(5) ; Recompute callee base from callee size
666 : ST 1, 2(4) ; Store argument 1 in callee
667 : LD 1, 2(5) ; Load parameter 'xDen' into R1
668 : LDA 4, 11(5) ; Recompute callee base from callee size
669 : ST 1, 3(4) ; Store argument 2 in callee
670 : LD 1, 3(5) ; Load parameter 'N' into R1
671 : LDA 4, 11(5) ; Recompute callee base from callee size
672 : ST 1, 4(4) ; Store argument 3 in callee
673 : LDC 1, 0(0) ; Load integer-literal into R1
674 : LDA 4, 11(5) ; Recompute callee base from callee size
675 : ST 1, 5(4) ; Store argument 4 in callee
676 : LDC 1, 1(0) ; Load integer-literal into R1
677 : LDA 4, 11(5) ; Recompute callee base from callee size
678 : ST 1, 6(4) ; Store argument 5 in callee
679 : LDC 1, 1(0) ; Load integer-literal into R1
680 : LDA 4, 11(5) ; Recompute callee base from callee size
681 : ST 1, 7(4) ; Store argument 6 in callee
682 : LDC 1, 1(0) ; Load integer-literal into R1
683 : LDA 4, 11(5) ; Recompute callee base from callee size
684 : ST 1, 8(4) ; Store argument 7 in callee
685 : LDA 4, 11(5) ; Recompute callee base from callee size
686 : LDA 6, 690(0) ; Return address
687 : ST 6, 0(4) ; Store return in callee frame
688 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
689 : LDA 7, 132(0) ; Call whileLoopFor
690 : LD 1, 9(5) ; Load callee result into R1
691 : LDC 2, 11(0) ; Callee frame size
692 : SUB 5, 5, 2 ; Pop callee frame
693 : LDA 4, 7(5) ; Recompute callee base from callee size
694 : ST 1, 4(4) ; Store argument 3 in callee
695 : LDC 1, 4(0) ; Load integer-literal into R1
696 : LDA 4, 11(5) ; Recompute callee base from callee size
697 : ST 1, 1(4) ; Store argument 0 in callee
698 : LD 1, 1(5) ; Load parameter 'xNum' into R1
699 : LDA 4, 11(5) ; Recompute callee base from callee size
700 : ST 1, 2(4) ; Store argument 1 in callee
701 : LD 1, 2(5) ; Load parameter 'xDen' into R1
702 : LDA 4, 11(5) ; Recompute callee base from callee size
703 : ST 1, 3(4) ; Store argument 2 in callee
704 : LD 1, 3(5) ; Load parameter 'N' into R1
705 : LDA 4, 11(5) ; Recompute callee base from callee size
706 : ST 1, 4(4) ; Store argument 3 in callee
707 : LDC 1, 0(0) ; Load integer-literal into R1
708 : LDA 4, 11(5) ; Recompute callee base from callee size
709 : ST 1, 5(4) ; Store argument 4 in callee
710 : LDC 1, 1(0) ; Load integer-literal into R1
711 : LDA 4, 11(5) ; Recompute callee base from callee size
712 : ST 1, 6(4) ; Store argument 5 in callee
713 : LDC 1, 1(0) ; Load integer-literal into R1
714 : LDA 4, 11(5) ; Recompute callee base from callee size
715 : ST 1, 7(4) ; Store argument 6 in callee
716 : LDC 1, 1(0) ; Load integer-literal into R1
717 : LDA 4, 11(5) ; Recompute callee base from callee size
718 : ST 1, 8(4) ; Store argument 7 in callee
719 : LDA 4, 11(5) ; Recompute callee base from callee size
720 : LDA 6, 724(0) ; Return address
721 : ST 6, 0(4) ; Store return in callee frame
722 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
723 : LDA 7, 132(0) ; Call whileLoopFor
724 : LD 1, 9(5) ; Load callee result into R1
725 : LDC 2, 11(0) ; Callee frame size
726 : SUB 5, 5, 2 ; Pop callee frame
727 : LDA 4, 7(5) ; Recompute callee base from callee size
728 : ST 1, 5(4) ; Store argument 4 in callee
729 : LDA 4, 7(5) ; Recompute callee base from callee size
730 : LDA 6, 734(0) ; Return address
731 : ST 6, 0(4) ; Store return in callee frame
732 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
733 : LDA 7, 419(0) ; Call fareySelectNum
734 : LD 1, 6(5) ; Load callee result into R1
735 : LDC 2, 7(0) ; Callee frame size
736 : SUB 5, 5, 2 ; Pop callee frame
737 : ST 1, 4(5) ; Store function result into frame return slot
738 : LD 6, 0(5) ; Load return address
739 : LDA 7, 0(6) ; Return to caller
