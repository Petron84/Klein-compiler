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
16 : LDA 4, 5(5) ; Compute callee base from caller size
17 : LD 1, 1(5) ; Load parameter 'xNum' into R1
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LD 1, 2(5) ; Load parameter 'xDen' into R1
20 : ST 1, 2(4) ; Store argument 1 in callee frame
21 : LD 1, 3(5) ; Load parameter 'N' into R1
22 : ST 1, 3(4) ; Store argument 2 in callee frame
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return address into callee frame
25 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
26 : LDA 7, 513(0) ; Call fareyNum
27 : LD 1, 4(5) ; Load callee result into R1
28 : LDC 2, 5(0) ; Caller frame size
29 : SUB 5, 5, 2 ; Pop back to caller
30 : LDA 4, 5(5) ; Compute callee base from caller size
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return address into callee frame
33 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
34 : LDA 7, 13(0) ; Call built-in print
35 : LDC 2, 5(0) ; Caller frame size
36 : SUB 5, 5, 2 ; Pop back to caller
37 : LDA 4, 5(5) ; Compute callee base from caller size
38 : LD 1, 1(5) ; Load parameter 'xNum' into R1
39 : ST 1, 1(4) ; Store argument 0 in callee frame
40 : LD 1, 2(5) ; Load parameter 'xDen' into R1
41 : ST 1, 2(4) ; Store argument 1 in callee frame
42 : LD 1, 3(5) ; Load parameter 'N' into R1
43 : ST 1, 3(4) ; Store argument 2 in callee frame
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return address into callee frame
46 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
47 : LDA 7, 400(0) ; Call fareyDen
48 : LD 1, 4(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Caller frame size
50 : SUB 5, 5, 2 ; Pop back to caller
51 : ST 1, 4(5) ; Store result into caller’s return slot
52 : LD 1, 4(5) ; Load main return value into R1
53 : LD 6, 0(5) ; Load main return address
54 : LDA 7, 0(6) ; Return from main
55 : LD 1, 1(5) ; Load parameter 'x' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 2(5) ; Load parameter 'y' into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : SUB 1, 2, 1 ; left - right for less-than check
60 : JLT 1, 2(7) ; If R1 < 0, jump to true
61 : LDC 1, 0(0) ; false
62 : LDA 7, 1(7) ; skip setting true
63 : LDC 1, 1(0) ; true
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'x' into R1
66 : ST 1, 5(5) ; Spill left operand at depth 1
67 : LD 1, 2(5) ; Load parameter 'y' into R1
68 : LD 2, 5(5) ; Restore left operand from depth 1
69 : SUB 1, 2, 1 ; left - right for equality check
70 : JEQ 1, 2(7) ; If R1 == 0, jump to true
71 : LDC 1, 0(0) ; false
72 : LDA 7, 1(7) ; skip setting true
73 : LDC 1, 1(0) ; true
74 : LD 2, 4(5) ; Restore left operand from depth 0
75 : ADD 1, 2, 1 ; R1 = left OR right
76 : LDC 2, 1(0) ; Load 1 into R2
77 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
78 : ST 1, 3(5) ; Store function result into frame return slot
79 : LD 6, 0(5) ; Load return address
80 : LDA 7, 0(6) ; Return to caller
81 : LDA 4, 7(5) ; Compute callee base from caller size
82 : LD 1, 1(5) ; Load parameter 'x' into R1
83 : ST 1, 6(5) ; Spill left operand at depth 0
84 : LD 1, 4(5) ; Load parameter 'yd' into R1
85 : LD 2, 6(5) ; Restore left operand from depth 0
86 : MUL 1, 2, 1 ; R1 = left * right
87 : ST 1, 1(4) ; Store argument 0 in callee frame
88 : LD 1, 3(5) ; Load parameter 'y' into R1
89 : ST 1, 6(5) ; Spill left operand at depth 0
90 : LD 1, 2(5) ; Load parameter 'xd' into R1
91 : LD 2, 6(5) ; Restore left operand from depth 0
92 : MUL 1, 2, 1 ; R1 = left * right
93 : ST 1, 2(4) ; Store argument 1 in callee frame
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return address into callee frame
96 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
97 : LDA 7, 55(0) ; Call greater
98 : LD 1, 3(5) ; Load callee result into R1
99 : LDC 2, 7(0) ; Caller frame size
100 : SUB 5, 5, 2 ; Pop back to caller
101 : ST 1, 5(5) ; Store function result into frame return slot
102 : LD 6, 0(5) ; Load return address
103 : LDA 7, 0(6) ; Return to caller
104 : LD 1, 1(5) ; Load parameter 'x' into R1
105 : ST 1, 6(5) ; Spill left operand at depth 0
106 : LD 1, 4(5) ; Load parameter 'yd' into R1
107 : LD 2, 6(5) ; Restore left operand from depth 0
108 : MUL 1, 2, 1 ; R1 = left * right
109 : ST 1, 6(5) ; Spill left operand at depth 0
110 : LD 1, 3(5) ; Load parameter 'y' into R1
111 : ST 1, 7(5) ; Spill left operand at depth 1
112 : LD 1, 2(5) ; Load parameter 'xd' into R1
113 : LD 2, 7(5) ; Restore left operand from depth 1
114 : MUL 1, 2, 1 ; R1 = left * right
115 : LD 2, 6(5) ; Restore left operand from depth 0
116 : SUB 1, 2, 1 ; left - right for equality check
117 : JEQ 1, 2(7) ; If R1 == 0, jump to true
118 : LDC 1, 0(0) ; false
119 : LDA 7, 1(7) ; skip setting true
120 : LDC 1, 1(0) ; true
121 : ST 1, 5(5) ; Store function result into frame return slot
122 : LD 6, 0(5) ; Load return address
123 : LDA 7, 0(6) ; Return to caller
124 : LDA 4, 11(5) ; Compute callee base from caller size
125 : LD 1, 6(5) ; Load parameter 'b' into R1
126 : ST 1, 1(4) ; Store argument 0 in callee frame
127 : LD 1, 4(5) ; Load parameter 'N' into R1
128 : ST 1, 2(4) ; Store argument 1 in callee frame
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return address into callee frame
131 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
132 : LDA 7, 55(0) ; Call greater
133 : LD 1, 3(5) ; Load callee result into R1
134 : LDC 2, 11(0) ; Caller frame size
135 : SUB 5, 5, 2 ; Pop back to caller
136 : ST 1, 10(5) ; Spill left operand at depth 0
137 : LDA 4, 11(5) ; Compute callee base from caller size
138 : LD 1, 8(5) ; Load parameter 'd' into R1
139 : ST 1, 1(4) ; Store argument 0 in callee frame
140 : LD 1, 4(5) ; Load parameter 'N' into R1
141 : ST 1, 2(4) ; Store argument 1 in callee frame
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address into callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 55(0) ; Call greater
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 11(0) ; Caller frame size
148 : SUB 5, 5, 2 ; Pop back to caller
149 : LD 2, 10(5) ; Restore left operand from depth 0
150 : ADD 1, 2, 1 ; R1 = left OR right
151 : JEQ 1, 190(0) ; If condition is false, jump to ELSE
152 : LD 1, 1(5) ; Load parameter 'selector' into R1
153 : ST 1, 10(5) ; Spill left operand at depth 0
154 : LDC 1, 1(0) ; Load integer-literal into R1
155 : LD 2, 10(5) ; Restore left operand from depth 0
156 : SUB 1, 2, 1 ; left - right for equality check
157 : JEQ 1, 2(7) ; If R1 == 0, jump to true
158 : LDC 1, 0(0) ; false
159 : LDA 7, 1(7) ; skip setting true
160 : LDC 1, 1(0) ; true
161 : JEQ 1, 164(0) ; If condition is false, jump to ELSE
162 : LD 1, 5(5) ; Load parameter 'a' into R1
163 : LDA 7, 189(0) ; Skip ELSE block
164 : LD 1, 1(5) ; Load parameter 'selector' into R1
165 : ST 1, 10(5) ; Spill left operand at depth 0
166 : LDC 1, 2(0) ; Load integer-literal into R1
167 : LD 2, 10(5) ; Restore left operand from depth 0
168 : SUB 1, 2, 1 ; left - right for equality check
169 : JEQ 1, 2(7) ; If R1 == 0, jump to true
170 : LDC 1, 0(0) ; false
171 : LDA 7, 1(7) ; skip setting true
172 : LDC 1, 1(0) ; true
173 : JEQ 1, 176(0) ; If condition is false, jump to ELSE
174 : LD 1, 6(5) ; Load parameter 'b' into R1
175 : LDA 7, 189(0) ; Skip ELSE block
176 : LD 1, 1(5) ; Load parameter 'selector' into R1
177 : ST 1, 10(5) ; Spill left operand at depth 0
178 : LDC 1, 3(0) ; Load integer-literal into R1
179 : LD 2, 10(5) ; Restore left operand from depth 0
180 : SUB 1, 2, 1 ; left - right for equality check
181 : JEQ 1, 2(7) ; If R1 == 0, jump to true
182 : LDC 1, 0(0) ; false
183 : LDA 7, 1(7) ; skip setting true
184 : LDC 1, 1(0) ; true
185 : JEQ 1, 188(0) ; If condition is false, jump to ELSE
186 : LD 1, 7(5) ; Load parameter 'c' into R1
187 : LDA 7, 189(0) ; Skip ELSE block
188 : LD 1, 8(5) ; Load parameter 'd' into R1
189 : LDA 7, 359(0) ; Skip ELSE block
190 : LDA 4, 11(5) ; Compute callee base from caller size
191 : LD 1, 2(5) ; Load parameter 'xNum' into R1
192 : ST 1, 1(4) ; Store argument 0 in callee frame
193 : LD 1, 3(5) ; Load parameter 'xDen' into R1
194 : ST 1, 2(4) ; Store argument 1 in callee frame
195 : LD 1, 5(5) ; Load parameter 'a' into R1
196 : ST 1, 10(5) ; Spill left operand at depth 0
197 : LD 1, 7(5) ; Load parameter 'c' into R1
198 : LD 2, 10(5) ; Restore left operand from depth 0
199 : ADD 1, 2, 1 ; R1 = left + right
200 : ST 1, 3(4) ; Store argument 2 in callee frame
201 : LD 1, 6(5) ; Load parameter 'b' into R1
202 : ST 1, 10(5) ; Spill left operand at depth 0
203 : LD 1, 8(5) ; Load parameter 'd' into R1
204 : LD 2, 10(5) ; Restore left operand from depth 0
205 : ADD 1, 2, 1 ; R1 = left + right
206 : ST 1, 4(4) ; Store argument 3 in callee frame
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return address into callee frame
209 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
210 : LDA 7, 104(0) ; Call fractionEqual
211 : LD 1, 5(5) ; Load callee result into R1
212 : LDC 2, 11(0) ; Caller frame size
213 : SUB 5, 5, 2 ; Pop back to caller
214 : JEQ 1, 269(0) ; If condition is false, jump to ELSE
215 : LD 1, 1(5) ; Load parameter 'selector' into R1
216 : ST 1, 10(5) ; Spill left operand at depth 0
217 : LDC 1, 1(0) ; Load integer-literal into R1
218 : LD 2, 10(5) ; Restore left operand from depth 0
219 : SUB 1, 2, 1 ; left - right for equality check
220 : JEQ 1, 2(7) ; If R1 == 0, jump to true
221 : LDC 1, 0(0) ; false
222 : LDA 7, 1(7) ; skip setting true
223 : LDC 1, 1(0) ; true
224 : JEQ 1, 231(0) ; If condition is false, jump to ELSE
225 : LD 1, 5(5) ; Load parameter 'a' into R1
226 : ST 1, 10(5) ; Spill left operand at depth 0
227 : LD 1, 7(5) ; Load parameter 'c' into R1
228 : LD 2, 10(5) ; Restore left operand from depth 0
229 : ADD 1, 2, 1 ; R1 = left + right
230 : LDA 7, 268(0) ; Skip ELSE block
231 : LD 1, 1(5) ; Load parameter 'selector' into R1
232 : ST 1, 10(5) ; Spill left operand at depth 0
233 : LDC 1, 2(0) ; Load integer-literal into R1
234 : LD 2, 10(5) ; Restore left operand from depth 0
235 : SUB 1, 2, 1 ; left - right for equality check
236 : JEQ 1, 2(7) ; If R1 == 0, jump to true
237 : LDC 1, 0(0) ; false
238 : LDA 7, 1(7) ; skip setting true
239 : LDC 1, 1(0) ; true
240 : JEQ 1, 247(0) ; If condition is false, jump to ELSE
241 : LD 1, 6(5) ; Load parameter 'b' into R1
242 : ST 1, 10(5) ; Spill left operand at depth 0
243 : LD 1, 8(5) ; Load parameter 'd' into R1
244 : LD 2, 10(5) ; Restore left operand from depth 0
245 : ADD 1, 2, 1 ; R1 = left + right
246 : LDA 7, 268(0) ; Skip ELSE block
247 : LD 1, 1(5) ; Load parameter 'selector' into R1
248 : ST 1, 10(5) ; Spill left operand at depth 0
249 : LDC 1, 3(0) ; Load integer-literal into R1
250 : LD 2, 10(5) ; Restore left operand from depth 0
251 : SUB 1, 2, 1 ; left - right for equality check
252 : JEQ 1, 2(7) ; If R1 == 0, jump to true
253 : LDC 1, 0(0) ; false
254 : LDA 7, 1(7) ; skip setting true
255 : LDC 1, 1(0) ; true
256 : JEQ 1, 263(0) ; If condition is false, jump to ELSE
257 : LD 1, 5(5) ; Load parameter 'a' into R1
258 : ST 1, 10(5) ; Spill left operand at depth 0
259 : LD 1, 7(5) ; Load parameter 'c' into R1
260 : LD 2, 10(5) ; Restore left operand from depth 0
261 : ADD 1, 2, 1 ; R1 = left + right
262 : LDA 7, 268(0) ; Skip ELSE block
263 : LD 1, 6(5) ; Load parameter 'b' into R1
264 : ST 1, 10(5) ; Spill left operand at depth 0
265 : LD 1, 8(5) ; Load parameter 'd' into R1
266 : LD 2, 10(5) ; Restore left operand from depth 0
267 : ADD 1, 2, 1 ; R1 = left + right
268 : LDA 7, 359(0) ; Skip ELSE block
269 : LDA 4, 11(5) ; Compute callee base from caller size
270 : LD 1, 2(5) ; Load parameter 'xNum' into R1
271 : ST 1, 1(4) ; Store argument 0 in callee frame
272 : LD 1, 3(5) ; Load parameter 'xDen' into R1
273 : ST 1, 2(4) ; Store argument 1 in callee frame
274 : LD 1, 5(5) ; Load parameter 'a' into R1
275 : ST 1, 10(5) ; Spill left operand at depth 0
276 : LD 1, 7(5) ; Load parameter 'c' into R1
277 : LD 2, 10(5) ; Restore left operand from depth 0
278 : ADD 1, 2, 1 ; R1 = left + right
279 : ST 1, 3(4) ; Store argument 2 in callee frame
280 : LD 1, 6(5) ; Load parameter 'b' into R1
281 : ST 1, 10(5) ; Spill left operand at depth 0
282 : LD 1, 8(5) ; Load parameter 'd' into R1
283 : LD 2, 10(5) ; Restore left operand from depth 0
284 : ADD 1, 2, 1 ; R1 = left + right
285 : ST 1, 4(4) ; Store argument 3 in callee frame
286 : LDA 6, 290(0) ; Return address
287 : ST 6, 0(4) ; Store return address into callee frame
288 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
289 : LDA 7, 81(0) ; Call fractionGreater
290 : LD 1, 5(5) ; Load callee result into R1
291 : LDC 2, 11(0) ; Caller frame size
292 : SUB 5, 5, 2 ; Pop back to caller
293 : JEQ 1, 327(0) ; If condition is false, jump to ELSE
294 : LDA 4, 11(5) ; Compute callee base from caller size
295 : LD 1, 1(5) ; Load parameter 'selector' into R1
296 : ST 1, 1(4) ; Store argument 0 in callee frame
297 : LD 1, 2(5) ; Load parameter 'xNum' into R1
298 : ST 1, 2(4) ; Store argument 1 in callee frame
299 : LD 1, 3(5) ; Load parameter 'xDen' into R1
300 : ST 1, 3(4) ; Store argument 2 in callee frame
301 : LD 1, 4(5) ; Load parameter 'N' into R1
302 : ST 1, 4(4) ; Store argument 3 in callee frame
303 : LD 1, 5(5) ; Load parameter 'a' into R1
304 : ST 1, 10(5) ; Spill left operand at depth 0
305 : LD 1, 7(5) ; Load parameter 'c' into R1
306 : LD 2, 10(5) ; Restore left operand from depth 0
307 : ADD 1, 2, 1 ; R1 = left + right
308 : ST 1, 5(4) ; Store argument 4 in callee frame
309 : LD 1, 6(5) ; Load parameter 'b' into R1
310 : ST 1, 10(5) ; Spill left operand at depth 0
311 : LD 1, 8(5) ; Load parameter 'd' into R1
312 : LD 2, 10(5) ; Restore left operand from depth 0
313 : ADD 1, 2, 1 ; R1 = left + right
314 : ST 1, 6(4) ; Store argument 5 in callee frame
315 : LD 1, 7(5) ; Load parameter 'c' into R1
316 : ST 1, 7(4) ; Store argument 6 in callee frame
317 : LD 1, 8(5) ; Load parameter 'd' into R1
318 : ST 1, 8(4) ; Store argument 7 in callee frame
319 : LDA 6, 323(0) ; Return address
320 : ST 6, 0(4) ; Store return address into callee frame
321 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
322 : LDA 7, 124(0) ; Call whileLoopFor
323 : LD 1, 9(5) ; Load callee result into R1
324 : LDC 2, 11(0) ; Caller frame size
325 : SUB 5, 5, 2 ; Pop back to caller
326 : LDA 7, 359(0) ; Skip ELSE block
327 : LDA 4, 11(5) ; Compute callee base from caller size
328 : LD 1, 1(5) ; Load parameter 'selector' into R1
329 : ST 1, 1(4) ; Store argument 0 in callee frame
330 : LD 1, 2(5) ; Load parameter 'xNum' into R1
331 : ST 1, 2(4) ; Store argument 1 in callee frame
332 : LD 1, 3(5) ; Load parameter 'xDen' into R1
333 : ST 1, 3(4) ; Store argument 2 in callee frame
334 : LD 1, 4(5) ; Load parameter 'N' into R1
335 : ST 1, 4(4) ; Store argument 3 in callee frame
336 : LD 1, 5(5) ; Load parameter 'a' into R1
337 : ST 1, 5(4) ; Store argument 4 in callee frame
338 : LD 1, 6(5) ; Load parameter 'b' into R1
339 : ST 1, 6(4) ; Store argument 5 in callee frame
340 : LD 1, 5(5) ; Load parameter 'a' into R1
341 : ST 1, 10(5) ; Spill left operand at depth 0
342 : LD 1, 7(5) ; Load parameter 'c' into R1
343 : LD 2, 10(5) ; Restore left operand from depth 0
344 : ADD 1, 2, 1 ; R1 = left + right
345 : ST 1, 7(4) ; Store argument 6 in callee frame
346 : LD 1, 6(5) ; Load parameter 'b' into R1
347 : ST 1, 10(5) ; Spill left operand at depth 0
348 : LD 1, 8(5) ; Load parameter 'd' into R1
349 : LD 2, 10(5) ; Restore left operand from depth 0
350 : ADD 1, 2, 1 ; R1 = left + right
351 : ST 1, 8(4) ; Store argument 7 in callee frame
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return address into callee frame
354 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
355 : LDA 7, 124(0) ; Call whileLoopFor
356 : LD 1, 9(5) ; Load callee result into R1
357 : LDC 2, 11(0) ; Caller frame size
358 : SUB 5, 5, 2 ; Pop back to caller
359 : ST 1, 9(5) ; Store function result into frame return slot
360 : LD 6, 0(5) ; Load return address
361 : LDA 7, 0(6) ; Return to caller
362 : LDA 4, 7(5) ; Compute callee base from caller size
363 : LD 1, 3(5) ; Load parameter 'b' into R1
364 : ST 1, 1(4) ; Store argument 0 in callee frame
365 : LD 1, 1(5) ; Load parameter 'N' into R1
366 : ST 1, 2(4) ; Store argument 1 in callee frame
367 : LDA 6, 371(0) ; Return address
368 : ST 6, 0(4) ; Store return address into callee frame
369 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
370 : LDA 7, 55(0) ; Call greater
371 : LD 1, 3(5) ; Load callee result into R1
372 : LDC 2, 7(0) ; Caller frame size
373 : SUB 5, 5, 2 ; Pop back to caller
374 : JEQ 1, 377(0) ; If condition is false, jump to ELSE
375 : LD 1, 5(5) ; Load parameter 'd' into R1
376 : LDA 7, 378(0) ; Skip ELSE block
377 : LD 1, 3(5) ; Load parameter 'b' into R1
378 : ST 1, 6(5) ; Store function result into frame return slot
379 : LD 6, 0(5) ; Load return address
380 : LDA 7, 0(6) ; Return to caller
381 : LDA 4, 7(5) ; Compute callee base from caller size
382 : LD 1, 3(5) ; Load parameter 'b' into R1
383 : ST 1, 1(4) ; Store argument 0 in callee frame
384 : LD 1, 1(5) ; Load parameter 'N' into R1
385 : ST 1, 2(4) ; Store argument 1 in callee frame
386 : LDA 6, 390(0) ; Return address
387 : ST 6, 0(4) ; Store return address into callee frame
388 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
389 : LDA 7, 55(0) ; Call greater
390 : LD 1, 3(5) ; Load callee result into R1
391 : LDC 2, 7(0) ; Caller frame size
392 : SUB 5, 5, 2 ; Pop back to caller
393 : JEQ 1, 396(0) ; If condition is false, jump to ELSE
394 : LD 1, 4(5) ; Load parameter 'c' into R1
395 : LDA 7, 397(0) ; Skip ELSE block
396 : LD 1, 2(5) ; Load parameter 'a' into R1
397 : ST 1, 6(5) ; Store function result into frame return slot
398 : LD 6, 0(5) ; Load return address
399 : LDA 7, 0(6) ; Return to caller
400 : LDA 4, 5(5) ; Compute callee base from caller size
401 : LD 1, 3(5) ; Load parameter 'N' into R1
402 : ST 1, 1(4) ; Store argument 0 in callee frame
403 : LDA 4, 5(5) ; Compute callee base from caller size
404 : LDC 1, 1(0) ; Load integer-literal into R1
405 : ST 1, 1(4) ; Store argument 0 in callee frame
406 : LD 1, 1(5) ; Load parameter 'xNum' into R1
407 : ST 1, 2(4) ; Store argument 1 in callee frame
408 : LD 1, 2(5) ; Load parameter 'xDen' into R1
409 : ST 1, 3(4) ; Store argument 2 in callee frame
410 : LD 1, 3(5) ; Load parameter 'N' into R1
411 : ST 1, 4(4) ; Store argument 3 in callee frame
412 : LDC 1, 0(0) ; Load integer-literal into R1
413 : ST 1, 5(4) ; Store argument 4 in callee frame
414 : LDC 1, 1(0) ; Load integer-literal into R1
415 : ST 1, 6(4) ; Store argument 5 in callee frame
416 : LDC 1, 1(0) ; Load integer-literal into R1
417 : ST 1, 7(4) ; Store argument 6 in callee frame
418 : LDC 1, 1(0) ; Load integer-literal into R1
419 : ST 1, 8(4) ; Store argument 7 in callee frame
420 : LDA 6, 424(0) ; Return address
421 : ST 6, 0(4) ; Store return address into callee frame
422 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
423 : LDA 7, 124(0) ; Call whileLoopFor
424 : LD 1, 9(5) ; Load callee result into R1
425 : LDC 2, 5(0) ; Caller frame size
426 : SUB 5, 5, 2 ; Pop back to caller
427 : ST 1, 2(4) ; Store argument 1 in callee frame
428 : LDA 4, 5(5) ; Compute callee base from caller size
429 : LDC 1, 2(0) ; Load integer-literal into R1
430 : ST 1, 1(4) ; Store argument 0 in callee frame
431 : LD 1, 1(5) ; Load parameter 'xNum' into R1
432 : ST 1, 2(4) ; Store argument 1 in callee frame
433 : LD 1, 2(5) ; Load parameter 'xDen' into R1
434 : ST 1, 3(4) ; Store argument 2 in callee frame
435 : LD 1, 3(5) ; Load parameter 'N' into R1
436 : ST 1, 4(4) ; Store argument 3 in callee frame
437 : LDC 1, 0(0) ; Load integer-literal into R1
438 : ST 1, 5(4) ; Store argument 4 in callee frame
439 : LDC 1, 1(0) ; Load integer-literal into R1
440 : ST 1, 6(4) ; Store argument 5 in callee frame
441 : LDC 1, 1(0) ; Load integer-literal into R1
442 : ST 1, 7(4) ; Store argument 6 in callee frame
443 : LDC 1, 1(0) ; Load integer-literal into R1
444 : ST 1, 8(4) ; Store argument 7 in callee frame
445 : LDA 6, 449(0) ; Return address
446 : ST 6, 0(4) ; Store return address into callee frame
447 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
448 : LDA 7, 124(0) ; Call whileLoopFor
449 : LD 1, 9(5) ; Load callee result into R1
450 : LDC 2, 5(0) ; Caller frame size
451 : SUB 5, 5, 2 ; Pop back to caller
452 : ST 1, 3(4) ; Store argument 2 in callee frame
453 : LDA 4, 5(5) ; Compute callee base from caller size
454 : LDC 1, 3(0) ; Load integer-literal into R1
455 : ST 1, 1(4) ; Store argument 0 in callee frame
456 : LD 1, 1(5) ; Load parameter 'xNum' into R1
457 : ST 1, 2(4) ; Store argument 1 in callee frame
458 : LD 1, 2(5) ; Load parameter 'xDen' into R1
459 : ST 1, 3(4) ; Store argument 2 in callee frame
460 : LD 1, 3(5) ; Load parameter 'N' into R1
461 : ST 1, 4(4) ; Store argument 3 in callee frame
462 : LDC 1, 0(0) ; Load integer-literal into R1
463 : ST 1, 5(4) ; Store argument 4 in callee frame
464 : LDC 1, 1(0) ; Load integer-literal into R1
465 : ST 1, 6(4) ; Store argument 5 in callee frame
466 : LDC 1, 1(0) ; Load integer-literal into R1
467 : ST 1, 7(4) ; Store argument 6 in callee frame
468 : LDC 1, 1(0) ; Load integer-literal into R1
469 : ST 1, 8(4) ; Store argument 7 in callee frame
470 : LDA 6, 474(0) ; Return address
471 : ST 6, 0(4) ; Store return address into callee frame
472 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
473 : LDA 7, 124(0) ; Call whileLoopFor
474 : LD 1, 9(5) ; Load callee result into R1
475 : LDC 2, 5(0) ; Caller frame size
476 : SUB 5, 5, 2 ; Pop back to caller
477 : ST 1, 4(4) ; Store argument 3 in callee frame
478 : LDA 4, 5(5) ; Compute callee base from caller size
479 : LDC 1, 4(0) ; Load integer-literal into R1
480 : ST 1, 1(4) ; Store argument 0 in callee frame
481 : LD 1, 1(5) ; Load parameter 'xNum' into R1
482 : ST 1, 2(4) ; Store argument 1 in callee frame
483 : LD 1, 2(5) ; Load parameter 'xDen' into R1
484 : ST 1, 3(4) ; Store argument 2 in callee frame
485 : LD 1, 3(5) ; Load parameter 'N' into R1
486 : ST 1, 4(4) ; Store argument 3 in callee frame
487 : LDC 1, 0(0) ; Load integer-literal into R1
488 : ST 1, 5(4) ; Store argument 4 in callee frame
489 : LDC 1, 1(0) ; Load integer-literal into R1
490 : ST 1, 6(4) ; Store argument 5 in callee frame
491 : LDC 1, 1(0) ; Load integer-literal into R1
492 : ST 1, 7(4) ; Store argument 6 in callee frame
493 : LDC 1, 1(0) ; Load integer-literal into R1
494 : ST 1, 8(4) ; Store argument 7 in callee frame
495 : LDA 6, 499(0) ; Return address
496 : ST 6, 0(4) ; Store return address into callee frame
497 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
498 : LDA 7, 124(0) ; Call whileLoopFor
499 : LD 1, 9(5) ; Load callee result into R1
500 : LDC 2, 5(0) ; Caller frame size
501 : SUB 5, 5, 2 ; Pop back to caller
502 : ST 1, 5(4) ; Store argument 4 in callee frame
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return address into callee frame
505 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
506 : LDA 7, 362(0) ; Call fareySelectDen
507 : LD 1, 6(5) ; Load callee result into R1
508 : LDC 2, 5(0) ; Caller frame size
509 : SUB 5, 5, 2 ; Pop back to caller
510 : ST 1, 4(5) ; Store function result into frame return slot
511 : LD 6, 0(5) ; Load return address
512 : LDA 7, 0(6) ; Return to caller
513 : LDA 4, 5(5) ; Compute callee base from caller size
514 : LD 1, 3(5) ; Load parameter 'N' into R1
515 : ST 1, 1(4) ; Store argument 0 in callee frame
516 : LDA 4, 5(5) ; Compute callee base from caller size
517 : LDC 1, 1(0) ; Load integer-literal into R1
518 : ST 1, 1(4) ; Store argument 0 in callee frame
519 : LD 1, 1(5) ; Load parameter 'xNum' into R1
520 : ST 1, 2(4) ; Store argument 1 in callee frame
521 : LD 1, 2(5) ; Load parameter 'xDen' into R1
522 : ST 1, 3(4) ; Store argument 2 in callee frame
523 : LD 1, 3(5) ; Load parameter 'N' into R1
524 : ST 1, 4(4) ; Store argument 3 in callee frame
525 : LDC 1, 0(0) ; Load integer-literal into R1
526 : ST 1, 5(4) ; Store argument 4 in callee frame
527 : LDC 1, 1(0) ; Load integer-literal into R1
528 : ST 1, 6(4) ; Store argument 5 in callee frame
529 : LDC 1, 1(0) ; Load integer-literal into R1
530 : ST 1, 7(4) ; Store argument 6 in callee frame
531 : LDC 1, 1(0) ; Load integer-literal into R1
532 : ST 1, 8(4) ; Store argument 7 in callee frame
533 : LDA 6, 537(0) ; Return address
534 : ST 6, 0(4) ; Store return address into callee frame
535 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
536 : LDA 7, 124(0) ; Call whileLoopFor
537 : LD 1, 9(5) ; Load callee result into R1
538 : LDC 2, 5(0) ; Caller frame size
539 : SUB 5, 5, 2 ; Pop back to caller
540 : ST 1, 2(4) ; Store argument 1 in callee frame
541 : LDA 4, 5(5) ; Compute callee base from caller size
542 : LDC 1, 2(0) ; Load integer-literal into R1
543 : ST 1, 1(4) ; Store argument 0 in callee frame
544 : LD 1, 1(5) ; Load parameter 'xNum' into R1
545 : ST 1, 2(4) ; Store argument 1 in callee frame
546 : LD 1, 2(5) ; Load parameter 'xDen' into R1
547 : ST 1, 3(4) ; Store argument 2 in callee frame
548 : LD 1, 3(5) ; Load parameter 'N' into R1
549 : ST 1, 4(4) ; Store argument 3 in callee frame
550 : LDC 1, 0(0) ; Load integer-literal into R1
551 : ST 1, 5(4) ; Store argument 4 in callee frame
552 : LDC 1, 1(0) ; Load integer-literal into R1
553 : ST 1, 6(4) ; Store argument 5 in callee frame
554 : LDC 1, 1(0) ; Load integer-literal into R1
555 : ST 1, 7(4) ; Store argument 6 in callee frame
556 : LDC 1, 1(0) ; Load integer-literal into R1
557 : ST 1, 8(4) ; Store argument 7 in callee frame
558 : LDA 6, 562(0) ; Return address
559 : ST 6, 0(4) ; Store return address into callee frame
560 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
561 : LDA 7, 124(0) ; Call whileLoopFor
562 : LD 1, 9(5) ; Load callee result into R1
563 : LDC 2, 5(0) ; Caller frame size
564 : SUB 5, 5, 2 ; Pop back to caller
565 : ST 1, 3(4) ; Store argument 2 in callee frame
566 : LDA 4, 5(5) ; Compute callee base from caller size
567 : LDC 1, 3(0) ; Load integer-literal into R1
568 : ST 1, 1(4) ; Store argument 0 in callee frame
569 : LD 1, 1(5) ; Load parameter 'xNum' into R1
570 : ST 1, 2(4) ; Store argument 1 in callee frame
571 : LD 1, 2(5) ; Load parameter 'xDen' into R1
572 : ST 1, 3(4) ; Store argument 2 in callee frame
573 : LD 1, 3(5) ; Load parameter 'N' into R1
574 : ST 1, 4(4) ; Store argument 3 in callee frame
575 : LDC 1, 0(0) ; Load integer-literal into R1
576 : ST 1, 5(4) ; Store argument 4 in callee frame
577 : LDC 1, 1(0) ; Load integer-literal into R1
578 : ST 1, 6(4) ; Store argument 5 in callee frame
579 : LDC 1, 1(0) ; Load integer-literal into R1
580 : ST 1, 7(4) ; Store argument 6 in callee frame
581 : LDC 1, 1(0) ; Load integer-literal into R1
582 : ST 1, 8(4) ; Store argument 7 in callee frame
583 : LDA 6, 587(0) ; Return address
584 : ST 6, 0(4) ; Store return address into callee frame
585 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
586 : LDA 7, 124(0) ; Call whileLoopFor
587 : LD 1, 9(5) ; Load callee result into R1
588 : LDC 2, 5(0) ; Caller frame size
589 : SUB 5, 5, 2 ; Pop back to caller
590 : ST 1, 4(4) ; Store argument 3 in callee frame
591 : LDA 4, 5(5) ; Compute callee base from caller size
592 : LDC 1, 4(0) ; Load integer-literal into R1
593 : ST 1, 1(4) ; Store argument 0 in callee frame
594 : LD 1, 1(5) ; Load parameter 'xNum' into R1
595 : ST 1, 2(4) ; Store argument 1 in callee frame
596 : LD 1, 2(5) ; Load parameter 'xDen' into R1
597 : ST 1, 3(4) ; Store argument 2 in callee frame
598 : LD 1, 3(5) ; Load parameter 'N' into R1
599 : ST 1, 4(4) ; Store argument 3 in callee frame
600 : LDC 1, 0(0) ; Load integer-literal into R1
601 : ST 1, 5(4) ; Store argument 4 in callee frame
602 : LDC 1, 1(0) ; Load integer-literal into R1
603 : ST 1, 6(4) ; Store argument 5 in callee frame
604 : LDC 1, 1(0) ; Load integer-literal into R1
605 : ST 1, 7(4) ; Store argument 6 in callee frame
606 : LDC 1, 1(0) ; Load integer-literal into R1
607 : ST 1, 8(4) ; Store argument 7 in callee frame
608 : LDA 6, 612(0) ; Return address
609 : ST 6, 0(4) ; Store return address into callee frame
610 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
611 : LDA 7, 124(0) ; Call whileLoopFor
612 : LD 1, 9(5) ; Load callee result into R1
613 : LDC 2, 5(0) ; Caller frame size
614 : SUB 5, 5, 2 ; Pop back to caller
615 : ST 1, 5(4) ; Store argument 4 in callee frame
616 : LDA 6, 620(0) ; Return address
617 : ST 6, 0(4) ; Store return address into callee frame
618 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
619 : LDA 7, 381(0) ; Call fareySelectNum
620 : LD 1, 6(5) ; Load callee result into R1
621 : LDC 2, 5(0) ; Caller frame size
622 : SUB 5, 5, 2 ; Pop back to caller
623 : ST 1, 4(5) ; Store function result into frame return slot
624 : LD 6, 0(5) ; Load return address
625 : LDA 7, 0(6) ; Return to caller
