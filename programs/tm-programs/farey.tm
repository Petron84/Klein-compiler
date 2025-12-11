0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
16 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
17 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
18 : LDA 4, 8(5) ; Compute future callee base from caller size
19 : LD 2, 5(5) ; Load staged arg 0 from caller frame
20 : ST 2, 1(4) ; Store arg 0 into callee frame
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 13(0) ; Call built-in print
25 : LDC 2, 3(0) ; Callee frame size
26 : SUB 5, 5, 2 ; Pop callee frame
27 : LD 1, 1(5) ; Load parameter 'xNum' into R1
28 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
29 : LD 1, 2(5) ; Load parameter 'xDen' into R1
30 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
31 : LD 1, 3(5) ; Load parameter 'N' into R1
32 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
33 : LDA 4, 8(5) ; Compute future callee base from caller size
34 : LD 2, 5(5) ; Load staged arg 0 from caller frame
35 : ST 2, 1(4) ; Store arg 0 into callee frame
36 : LD 2, 6(5) ; Load staged arg 1 from caller frame
37 : ST 2, 2(4) ; Store arg 1 into callee frame
38 : LD 2, 7(5) ; Load staged arg 2 from caller frame
39 : ST 2, 3(4) ; Store arg 2 into callee frame
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
43 : LDA 7, 464(0) ; Call fareyDen
44 : LD 1, 4(5) ; Load callee result into R1
45 : LDC 2, 5(0) ; Callee frame size
46 : SUB 5, 5, 2 ; Pop callee frame
47 : ST 1, 4(5) ; Store result into caller’s frame
48 : LD 1, 4(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load main return address
50 : LDA 7, 0(6) ; Return from main
51 : LD 1, 1(5) ; Load parameter 'x' into R1
52 : ST 1, 4(5) ; Spill left operand at depth 0
53 : LD 1, 2(5) ; Load parameter 'y' into R1
54 : LD 2, 4(5) ; Restore left operand from depth 0
55 : SUB 1, 2, 1 ; left - right for less-than check
56 : JLT 1, 2(7) ; If R1 < 0, jump to true
57 : LDC 1, 0(0) ; false
58 : LDA 7, 1(7) ; skip setting true
59 : LDC 1, 1(0) ; true
60 : ST 1, 4(5) ; Spill left operand at depth 0
61 : LD 1, 1(5) ; Load parameter 'x' into R1
62 : ST 1, 5(5) ; Spill left operand at depth 1
63 : LD 1, 2(5) ; Load parameter 'y' into R1
64 : LD 2, 5(5) ; Restore left operand from depth 1
65 : SUB 1, 2, 1 ; left - right for equality check
66 : JEQ 1, 2(7) ; If R1 == 0, jump to true
67 : LDC 1, 0(0) ; false
68 : LDA 7, 1(7) ; skip setting true
69 : LDC 1, 1(0) ; true
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : ADD 1, 2, 1 ; R1 = left OR right
72 : LDC 2, 1(0) ; Load 1 into R2
73 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
74 : ST 1, 3(5) ; Store function result into frame return slot
75 : LD 6, 0(5) ; Load return address
76 : LDA 7, 0(6) ; Return to caller
77 : LD 1, 1(5) ; Load parameter 'x' into R1
78 : ST 1, 6(5) ; Spill left operand at depth 0
79 : LD 1, 4(5) ; Load parameter 'yd' into R1
80 : LD 2, 6(5) ; Restore left operand from depth 0
81 : MUL 1, 2, 1 ; R1 = left * right
82 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
83 : LD 1, 3(5) ; Load parameter 'y' into R1
84 : ST 1, 6(5) ; Spill left operand at depth 0
85 : LD 1, 2(5) ; Load parameter 'xd' into R1
86 : LD 2, 6(5) ; Restore left operand from depth 0
87 : MUL 1, 2, 1 ; R1 = left * right
88 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
89 : LDA 4, 9(5) ; Compute future callee base from caller size
90 : LD 2, 7(5) ; Load staged arg 0 from caller frame
91 : ST 2, 1(4) ; Store arg 0 into callee frame
92 : LD 2, 8(5) ; Load staged arg 1 from caller frame
93 : ST 2, 2(4) ; Store arg 1 into callee frame
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
97 : LDA 7, 51(0) ; Call greater
98 : LD 1, 3(5) ; Load callee result into R1
99 : LDC 2, 6(0) ; Callee frame size
100 : SUB 5, 5, 2 ; Pop callee frame
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
124 : LD 1, 6(5) ; Load parameter 'b' into R1
125 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
126 : LD 1, 4(5) ; Load parameter 'N' into R1
127 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
128 : LDA 4, 19(5) ; Compute future callee base from caller size
129 : LD 2, 11(5) ; Load staged arg 0 from caller frame
130 : ST 2, 1(4) ; Store arg 0 into callee frame
131 : LD 2, 12(5) ; Load staged arg 1 from caller frame
132 : ST 2, 2(4) ; Store arg 1 into callee frame
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
136 : LDA 7, 51(0) ; Call greater
137 : LD 1, 3(5) ; Load callee result into R1
138 : LDC 2, 6(0) ; Callee frame size
139 : SUB 5, 5, 2 ; Pop callee frame
140 : ST 1, 10(5) ; Spill left operand at depth 0
141 : LD 1, 8(5) ; Load parameter 'd' into R1
142 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
143 : LD 1, 4(5) ; Load parameter 'N' into R1
144 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
145 : LDA 4, 19(5) ; Compute future callee base from caller size
146 : LD 2, 11(5) ; Load staged arg 0 from caller frame
147 : ST 2, 1(4) ; Store arg 0 into callee frame
148 : LD 2, 12(5) ; Load staged arg 1 from caller frame
149 : ST 2, 2(4) ; Store arg 1 into callee frame
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
153 : LDA 7, 51(0) ; Call greater
154 : LD 1, 3(5) ; Load callee result into R1
155 : LDC 2, 6(0) ; Callee frame size
156 : SUB 5, 5, 2 ; Pop callee frame
157 : LD 2, 10(5) ; Restore left operand from depth 0
158 : ADD 1, 2, 1 ; R1 = left OR right
159 : JEQ 1, 198(0) ; If condition is false, jump to ELSE
160 : LD 1, 1(5) ; Load parameter 'selector' into R1
161 : ST 1, 10(5) ; Spill left operand at depth 0
162 : LDC 1, 1(0) ; Load integer-literal into R1
163 : LD 2, 10(5) ; Restore left operand from depth 0
164 : SUB 1, 2, 1 ; left - right for equality check
165 : JEQ 1, 2(7) ; If R1 == 0, jump to true
166 : LDC 1, 0(0) ; false
167 : LDA 7, 1(7) ; skip setting true
168 : LDC 1, 1(0) ; true
169 : JEQ 1, 172(0) ; If condition is false, jump to ELSE
170 : LD 1, 5(5) ; Load parameter 'a' into R1
171 : LDA 7, 197(0) ; Skip ELSE block
172 : LD 1, 1(5) ; Load parameter 'selector' into R1
173 : ST 1, 10(5) ; Spill left operand at depth 0
174 : LDC 1, 2(0) ; Load integer-literal into R1
175 : LD 2, 10(5) ; Restore left operand from depth 0
176 : SUB 1, 2, 1 ; left - right for equality check
177 : JEQ 1, 2(7) ; If R1 == 0, jump to true
178 : LDC 1, 0(0) ; false
179 : LDA 7, 1(7) ; skip setting true
180 : LDC 1, 1(0) ; true
181 : JEQ 1, 184(0) ; If condition is false, jump to ELSE
182 : LD 1, 6(5) ; Load parameter 'b' into R1
183 : LDA 7, 197(0) ; Skip ELSE block
184 : LD 1, 1(5) ; Load parameter 'selector' into R1
185 : ST 1, 10(5) ; Spill left operand at depth 0
186 : LDC 1, 3(0) ; Load integer-literal into R1
187 : LD 2, 10(5) ; Restore left operand from depth 0
188 : SUB 1, 2, 1 ; left - right for equality check
189 : JEQ 1, 2(7) ; If R1 == 0, jump to true
190 : LDC 1, 0(0) ; false
191 : LDA 7, 1(7) ; skip setting true
192 : LDC 1, 1(0) ; true
193 : JEQ 1, 196(0) ; If condition is false, jump to ELSE
194 : LD 1, 7(5) ; Load parameter 'c' into R1
195 : LDA 7, 197(0) ; Skip ELSE block
196 : LD 1, 8(5) ; Load parameter 'd' into R1
197 : LDA 7, 415(0) ; Skip ELSE block
198 : LD 1, 2(5) ; Load parameter 'xNum' into R1
199 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
200 : LD 1, 3(5) ; Load parameter 'xDen' into R1
201 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
202 : LD 1, 5(5) ; Load parameter 'a' into R1
203 : ST 1, 10(5) ; Spill left operand at depth 0
204 : LD 1, 7(5) ; Load parameter 'c' into R1
205 : LD 2, 10(5) ; Restore left operand from depth 0
206 : ADD 1, 2, 1 ; R1 = left + right
207 : ST 1, 13(5) ; Stage arg 2 in caller frame outgoing area
208 : LD 1, 6(5) ; Load parameter 'b' into R1
209 : ST 1, 10(5) ; Spill left operand at depth 0
210 : LD 1, 8(5) ; Load parameter 'd' into R1
211 : LD 2, 10(5) ; Restore left operand from depth 0
212 : ADD 1, 2, 1 ; R1 = left + right
213 : ST 1, 14(5) ; Stage arg 3 in caller frame outgoing area
214 : LDA 4, 19(5) ; Compute future callee base from caller size
215 : LD 2, 11(5) ; Load staged arg 0 from caller frame
216 : ST 2, 1(4) ; Store arg 0 into callee frame
217 : LD 2, 12(5) ; Load staged arg 1 from caller frame
218 : ST 2, 2(4) ; Store arg 1 into callee frame
219 : LD 2, 13(5) ; Load staged arg 2 from caller frame
220 : ST 2, 3(4) ; Store arg 2 into callee frame
221 : LD 2, 14(5) ; Load staged arg 3 from caller frame
222 : ST 2, 4(4) ; Store arg 3 into callee frame
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
226 : LDA 7, 104(0) ; Call fractionEqual
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
284 : LDA 7, 415(0) ; Skip ELSE block
285 : LD 1, 2(5) ; Load parameter 'xNum' into R1
286 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
287 : LD 1, 3(5) ; Load parameter 'xDen' into R1
288 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
289 : LD 1, 5(5) ; Load parameter 'a' into R1
290 : ST 1, 10(5) ; Spill left operand at depth 0
291 : LD 1, 7(5) ; Load parameter 'c' into R1
292 : LD 2, 10(5) ; Restore left operand from depth 0
293 : ADD 1, 2, 1 ; R1 = left + right
294 : ST 1, 13(5) ; Stage arg 2 in caller frame outgoing area
295 : LD 1, 6(5) ; Load parameter 'b' into R1
296 : ST 1, 10(5) ; Spill left operand at depth 0
297 : LD 1, 8(5) ; Load parameter 'd' into R1
298 : LD 2, 10(5) ; Restore left operand from depth 0
299 : ADD 1, 2, 1 ; R1 = left + right
300 : ST 1, 14(5) ; Stage arg 3 in caller frame outgoing area
301 : LDA 4, 19(5) ; Compute future callee base from caller size
302 : LD 2, 11(5) ; Load staged arg 0 from caller frame
303 : ST 2, 1(4) ; Store arg 0 into callee frame
304 : LD 2, 12(5) ; Load staged arg 1 from caller frame
305 : ST 2, 2(4) ; Store arg 1 into callee frame
306 : LD 2, 13(5) ; Load staged arg 2 from caller frame
307 : ST 2, 3(4) ; Store arg 2 into callee frame
308 : LD 2, 14(5) ; Load staged arg 3 from caller frame
309 : ST 2, 4(4) ; Store arg 3 into callee frame
310 : LDA 6, 314(0) ; Return address
311 : ST 6, 0(4) ; Store return in callee frame
312 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
313 : LDA 7, 77(0) ; Call fractionGreater
314 : LD 1, 5(5) ; Load callee result into R1
315 : LDC 2, 7(0) ; Callee frame size
316 : SUB 5, 5, 2 ; Pop callee frame
317 : JEQ 1, 367(0) ; If condition is false, jump to ELSE
318 : LD 1, 1(5) ; Load parameter 'selector' into R1
319 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
320 : LD 1, 2(5) ; Load parameter 'xNum' into R1
321 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
322 : LD 1, 3(5) ; Load parameter 'xDen' into R1
323 : ST 1, 13(5) ; Stage arg 2 in caller frame outgoing area
324 : LD 1, 4(5) ; Load parameter 'N' into R1
325 : ST 1, 14(5) ; Stage arg 3 in caller frame outgoing area
326 : LD 1, 5(5) ; Load parameter 'a' into R1
327 : ST 1, 10(5) ; Spill left operand at depth 0
328 : LD 1, 7(5) ; Load parameter 'c' into R1
329 : LD 2, 10(5) ; Restore left operand from depth 0
330 : ADD 1, 2, 1 ; R1 = left + right
331 : ST 1, 15(5) ; Stage arg 4 in caller frame outgoing area
332 : LD 1, 6(5) ; Load parameter 'b' into R1
333 : ST 1, 10(5) ; Spill left operand at depth 0
334 : LD 1, 8(5) ; Load parameter 'd' into R1
335 : LD 2, 10(5) ; Restore left operand from depth 0
336 : ADD 1, 2, 1 ; R1 = left + right
337 : ST 1, 16(5) ; Stage arg 5 in caller frame outgoing area
338 : LD 1, 7(5) ; Load parameter 'c' into R1
339 : ST 1, 17(5) ; Stage arg 6 in caller frame outgoing area
340 : LD 1, 8(5) ; Load parameter 'd' into R1
341 : ST 1, 18(5) ; Stage arg 7 in caller frame outgoing area
342 : LDA 4, 19(5) ; Compute future callee base from caller size
343 : LD 2, 11(5) ; Load staged arg 0 from caller frame
344 : ST 2, 1(4) ; Store arg 0 into callee frame
345 : LD 2, 12(5) ; Load staged arg 1 from caller frame
346 : ST 2, 2(4) ; Store arg 1 into callee frame
347 : LD 2, 13(5) ; Load staged arg 2 from caller frame
348 : ST 2, 3(4) ; Store arg 2 into callee frame
349 : LD 2, 14(5) ; Load staged arg 3 from caller frame
350 : ST 2, 4(4) ; Store arg 3 into callee frame
351 : LD 2, 15(5) ; Load staged arg 4 from caller frame
352 : ST 2, 5(4) ; Store arg 4 into callee frame
353 : LD 2, 16(5) ; Load staged arg 5 from caller frame
354 : ST 2, 6(4) ; Store arg 5 into callee frame
355 : LD 2, 17(5) ; Load staged arg 6 from caller frame
356 : ST 2, 7(4) ; Store arg 6 into callee frame
357 : LD 2, 18(5) ; Load staged arg 7 from caller frame
358 : ST 2, 8(4) ; Store arg 7 into callee frame
359 : LDA 6, 363(0) ; Return address
360 : ST 6, 0(4) ; Store return in callee frame
361 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
362 : LDA 7, 124(0) ; Call whileLoopFor
363 : LD 1, 9(5) ; Load callee result into R1
364 : LDC 2, 11(0) ; Callee frame size
365 : SUB 5, 5, 2 ; Pop callee frame
366 : LDA 7, 415(0) ; Skip ELSE block
367 : LD 1, 1(5) ; Load parameter 'selector' into R1
368 : ST 1, 11(5) ; Stage arg 0 in caller frame outgoing area
369 : LD 1, 2(5) ; Load parameter 'xNum' into R1
370 : ST 1, 12(5) ; Stage arg 1 in caller frame outgoing area
371 : LD 1, 3(5) ; Load parameter 'xDen' into R1
372 : ST 1, 13(5) ; Stage arg 2 in caller frame outgoing area
373 : LD 1, 4(5) ; Load parameter 'N' into R1
374 : ST 1, 14(5) ; Stage arg 3 in caller frame outgoing area
375 : LD 1, 5(5) ; Load parameter 'a' into R1
376 : ST 1, 15(5) ; Stage arg 4 in caller frame outgoing area
377 : LD 1, 6(5) ; Load parameter 'b' into R1
378 : ST 1, 16(5) ; Stage arg 5 in caller frame outgoing area
379 : LD 1, 5(5) ; Load parameter 'a' into R1
380 : ST 1, 10(5) ; Spill left operand at depth 0
381 : LD 1, 7(5) ; Load parameter 'c' into R1
382 : LD 2, 10(5) ; Restore left operand from depth 0
383 : ADD 1, 2, 1 ; R1 = left + right
384 : ST 1, 17(5) ; Stage arg 6 in caller frame outgoing area
385 : LD 1, 6(5) ; Load parameter 'b' into R1
386 : ST 1, 10(5) ; Spill left operand at depth 0
387 : LD 1, 8(5) ; Load parameter 'd' into R1
388 : LD 2, 10(5) ; Restore left operand from depth 0
389 : ADD 1, 2, 1 ; R1 = left + right
390 : ST 1, 18(5) ; Stage arg 7 in caller frame outgoing area
391 : LDA 4, 19(5) ; Compute future callee base from caller size
392 : LD 2, 11(5) ; Load staged arg 0 from caller frame
393 : ST 2, 1(4) ; Store arg 0 into callee frame
394 : LD 2, 12(5) ; Load staged arg 1 from caller frame
395 : ST 2, 2(4) ; Store arg 1 into callee frame
396 : LD 2, 13(5) ; Load staged arg 2 from caller frame
397 : ST 2, 3(4) ; Store arg 2 into callee frame
398 : LD 2, 14(5) ; Load staged arg 3 from caller frame
399 : ST 2, 4(4) ; Store arg 3 into callee frame
400 : LD 2, 15(5) ; Load staged arg 4 from caller frame
401 : ST 2, 5(4) ; Store arg 4 into callee frame
402 : LD 2, 16(5) ; Load staged arg 5 from caller frame
403 : ST 2, 6(4) ; Store arg 5 into callee frame
404 : LD 2, 17(5) ; Load staged arg 6 from caller frame
405 : ST 2, 7(4) ; Store arg 6 into callee frame
406 : LD 2, 18(5) ; Load staged arg 7 from caller frame
407 : ST 2, 8(4) ; Store arg 7 into callee frame
408 : LDA 6, 412(0) ; Return address
409 : ST 6, 0(4) ; Store return in callee frame
410 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
411 : LDA 7, 124(0) ; Call whileLoopFor
412 : LD 1, 9(5) ; Load callee result into R1
413 : LDC 2, 11(0) ; Callee frame size
414 : SUB 5, 5, 2 ; Pop callee frame
415 : ST 1, 9(5) ; Store function result into frame return slot
416 : LD 6, 0(5) ; Load return address
417 : LDA 7, 0(6) ; Return to caller
418 : LD 1, 3(5) ; Load parameter 'b' into R1
419 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
420 : LD 1, 1(5) ; Load parameter 'N' into R1
421 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
422 : LDA 4, 9(5) ; Compute future callee base from caller size
423 : LD 2, 7(5) ; Load staged arg 0 from caller frame
424 : ST 2, 1(4) ; Store arg 0 into callee frame
425 : LD 2, 8(5) ; Load staged arg 1 from caller frame
426 : ST 2, 2(4) ; Store arg 1 into callee frame
427 : LDA 6, 431(0) ; Return address
428 : ST 6, 0(4) ; Store return in callee frame
429 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
430 : LDA 7, 51(0) ; Call greater
431 : LD 1, 3(5) ; Load callee result into R1
432 : LDC 2, 6(0) ; Callee frame size
433 : SUB 5, 5, 2 ; Pop callee frame
434 : JEQ 1, 437(0) ; If condition is false, jump to ELSE
435 : LD 1, 5(5) ; Load parameter 'd' into R1
436 : LDA 7, 438(0) ; Skip ELSE block
437 : LD 1, 3(5) ; Load parameter 'b' into R1
438 : ST 1, 6(5) ; Store function result into frame return slot
439 : LD 6, 0(5) ; Load return address
440 : LDA 7, 0(6) ; Return to caller
441 : LD 1, 3(5) ; Load parameter 'b' into R1
442 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
443 : LD 1, 1(5) ; Load parameter 'N' into R1
444 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
445 : LDA 4, 9(5) ; Compute future callee base from caller size
446 : LD 2, 7(5) ; Load staged arg 0 from caller frame
447 : ST 2, 1(4) ; Store arg 0 into callee frame
448 : LD 2, 8(5) ; Load staged arg 1 from caller frame
449 : ST 2, 2(4) ; Store arg 1 into callee frame
450 : LDA 6, 454(0) ; Return address
451 : ST 6, 0(4) ; Store return in callee frame
452 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
453 : LDA 7, 51(0) ; Call greater
454 : LD 1, 3(5) ; Load callee result into R1
455 : LDC 2, 6(0) ; Callee frame size
456 : SUB 5, 5, 2 ; Pop callee frame
457 : JEQ 1, 460(0) ; If condition is false, jump to ELSE
458 : LD 1, 4(5) ; Load parameter 'c' into R1
459 : LDA 7, 461(0) ; Skip ELSE block
460 : LD 1, 2(5) ; Load parameter 'a' into R1
461 : ST 1, 6(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 3(5) ; Load parameter 'N' into R1
465 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
466 : LDC 1, 1(0) ; Load integer-literal into R1
467 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
468 : LD 1, 1(5) ; Load parameter 'xNum' into R1
469 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
470 : LD 1, 2(5) ; Load parameter 'xDen' into R1
471 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
472 : LD 1, 3(5) ; Load parameter 'N' into R1
473 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
474 : LDC 1, 0(0) ; Load integer-literal into R1
475 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
476 : LDC 1, 1(0) ; Load integer-literal into R1
477 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
478 : LDC 1, 1(0) ; Load integer-literal into R1
479 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
480 : LDC 1, 1(0) ; Load integer-literal into R1
481 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
482 : LDA 4, 13(5) ; Compute future callee base from caller size
483 : LD 2, 5(5) ; Load staged arg 0 from caller frame
484 : ST 2, 1(4) ; Store arg 0 into callee frame
485 : LD 2, 6(5) ; Load staged arg 1 from caller frame
486 : ST 2, 2(4) ; Store arg 1 into callee frame
487 : LD 2, 7(5) ; Load staged arg 2 from caller frame
488 : ST 2, 3(4) ; Store arg 2 into callee frame
489 : LD 2, 8(5) ; Load staged arg 3 from caller frame
490 : ST 2, 4(4) ; Store arg 3 into callee frame
491 : LD 2, 9(5) ; Load staged arg 4 from caller frame
492 : ST 2, 5(4) ; Store arg 4 into callee frame
493 : LD 2, 10(5) ; Load staged arg 5 from caller frame
494 : ST 2, 6(4) ; Store arg 5 into callee frame
495 : LD 2, 11(5) ; Load staged arg 6 from caller frame
496 : ST 2, 7(4) ; Store arg 6 into callee frame
497 : LD 2, 12(5) ; Load staged arg 7 from caller frame
498 : ST 2, 8(4) ; Store arg 7 into callee frame
499 : LDA 6, 503(0) ; Return address
500 : ST 6, 0(4) ; Store return in callee frame
501 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
502 : LDA 7, 124(0) ; Call whileLoopFor
503 : LD 1, 9(5) ; Load callee result into R1
504 : LDC 2, 11(0) ; Callee frame size
505 : SUB 5, 5, 2 ; Pop callee frame
506 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
507 : LDC 1, 2(0) ; Load integer-literal into R1
508 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
509 : LD 1, 1(5) ; Load parameter 'xNum' into R1
510 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
511 : LD 1, 2(5) ; Load parameter 'xDen' into R1
512 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
513 : LD 1, 3(5) ; Load parameter 'N' into R1
514 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
515 : LDC 1, 0(0) ; Load integer-literal into R1
516 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
517 : LDC 1, 1(0) ; Load integer-literal into R1
518 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
519 : LDC 1, 1(0) ; Load integer-literal into R1
520 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
521 : LDC 1, 1(0) ; Load integer-literal into R1
522 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
523 : LDA 4, 13(5) ; Compute future callee base from caller size
524 : LD 2, 5(5) ; Load staged arg 0 from caller frame
525 : ST 2, 1(4) ; Store arg 0 into callee frame
526 : LD 2, 6(5) ; Load staged arg 1 from caller frame
527 : ST 2, 2(4) ; Store arg 1 into callee frame
528 : LD 2, 7(5) ; Load staged arg 2 from caller frame
529 : ST 2, 3(4) ; Store arg 2 into callee frame
530 : LD 2, 8(5) ; Load staged arg 3 from caller frame
531 : ST 2, 4(4) ; Store arg 3 into callee frame
532 : LD 2, 9(5) ; Load staged arg 4 from caller frame
533 : ST 2, 5(4) ; Store arg 4 into callee frame
534 : LD 2, 10(5) ; Load staged arg 5 from caller frame
535 : ST 2, 6(4) ; Store arg 5 into callee frame
536 : LD 2, 11(5) ; Load staged arg 6 from caller frame
537 : ST 2, 7(4) ; Store arg 6 into callee frame
538 : LD 2, 12(5) ; Load staged arg 7 from caller frame
539 : ST 2, 8(4) ; Store arg 7 into callee frame
540 : LDA 6, 544(0) ; Return address
541 : ST 6, 0(4) ; Store return in callee frame
542 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
543 : LDA 7, 124(0) ; Call whileLoopFor
544 : LD 1, 9(5) ; Load callee result into R1
545 : LDC 2, 11(0) ; Callee frame size
546 : SUB 5, 5, 2 ; Pop callee frame
547 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
548 : LDC 1, 3(0) ; Load integer-literal into R1
549 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
550 : LD 1, 1(5) ; Load parameter 'xNum' into R1
551 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
552 : LD 1, 2(5) ; Load parameter 'xDen' into R1
553 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
554 : LD 1, 3(5) ; Load parameter 'N' into R1
555 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
556 : LDC 1, 0(0) ; Load integer-literal into R1
557 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
558 : LDC 1, 1(0) ; Load integer-literal into R1
559 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
560 : LDC 1, 1(0) ; Load integer-literal into R1
561 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
562 : LDC 1, 1(0) ; Load integer-literal into R1
563 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
564 : LDA 4, 13(5) ; Compute future callee base from caller size
565 : LD 2, 5(5) ; Load staged arg 0 from caller frame
566 : ST 2, 1(4) ; Store arg 0 into callee frame
567 : LD 2, 6(5) ; Load staged arg 1 from caller frame
568 : ST 2, 2(4) ; Store arg 1 into callee frame
569 : LD 2, 7(5) ; Load staged arg 2 from caller frame
570 : ST 2, 3(4) ; Store arg 2 into callee frame
571 : LD 2, 8(5) ; Load staged arg 3 from caller frame
572 : ST 2, 4(4) ; Store arg 3 into callee frame
573 : LD 2, 9(5) ; Load staged arg 4 from caller frame
574 : ST 2, 5(4) ; Store arg 4 into callee frame
575 : LD 2, 10(5) ; Load staged arg 5 from caller frame
576 : ST 2, 6(4) ; Store arg 5 into callee frame
577 : LD 2, 11(5) ; Load staged arg 6 from caller frame
578 : ST 2, 7(4) ; Store arg 6 into callee frame
579 : LD 2, 12(5) ; Load staged arg 7 from caller frame
580 : ST 2, 8(4) ; Store arg 7 into callee frame
581 : LDA 6, 585(0) ; Return address
582 : ST 6, 0(4) ; Store return in callee frame
583 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
584 : LDA 7, 124(0) ; Call whileLoopFor
585 : LD 1, 9(5) ; Load callee result into R1
586 : LDC 2, 11(0) ; Callee frame size
587 : SUB 5, 5, 2 ; Pop callee frame
588 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
589 : LDC 1, 4(0) ; Load integer-literal into R1
590 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
591 : LD 1, 1(5) ; Load parameter 'xNum' into R1
592 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
593 : LD 1, 2(5) ; Load parameter 'xDen' into R1
594 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
595 : LD 1, 3(5) ; Load parameter 'N' into R1
596 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
597 : LDC 1, 0(0) ; Load integer-literal into R1
598 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
599 : LDC 1, 1(0) ; Load integer-literal into R1
600 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
601 : LDC 1, 1(0) ; Load integer-literal into R1
602 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
603 : LDC 1, 1(0) ; Load integer-literal into R1
604 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
605 : LDA 4, 13(5) ; Compute future callee base from caller size
606 : LD 2, 5(5) ; Load staged arg 0 from caller frame
607 : ST 2, 1(4) ; Store arg 0 into callee frame
608 : LD 2, 6(5) ; Load staged arg 1 from caller frame
609 : ST 2, 2(4) ; Store arg 1 into callee frame
610 : LD 2, 7(5) ; Load staged arg 2 from caller frame
611 : ST 2, 3(4) ; Store arg 2 into callee frame
612 : LD 2, 8(5) ; Load staged arg 3 from caller frame
613 : ST 2, 4(4) ; Store arg 3 into callee frame
614 : LD 2, 9(5) ; Load staged arg 4 from caller frame
615 : ST 2, 5(4) ; Store arg 4 into callee frame
616 : LD 2, 10(5) ; Load staged arg 5 from caller frame
617 : ST 2, 6(4) ; Store arg 5 into callee frame
618 : LD 2, 11(5) ; Load staged arg 6 from caller frame
619 : ST 2, 7(4) ; Store arg 6 into callee frame
620 : LD 2, 12(5) ; Load staged arg 7 from caller frame
621 : ST 2, 8(4) ; Store arg 7 into callee frame
622 : LDA 6, 626(0) ; Return address
623 : ST 6, 0(4) ; Store return in callee frame
624 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
625 : LDA 7, 124(0) ; Call whileLoopFor
626 : LD 1, 9(5) ; Load callee result into R1
627 : LDC 2, 11(0) ; Callee frame size
628 : SUB 5, 5, 2 ; Pop callee frame
629 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
630 : LDA 4, 13(5) ; Compute future callee base from caller size
631 : LD 2, 5(5) ; Load staged arg 0 from caller frame
632 : ST 2, 1(4) ; Store arg 0 into callee frame
633 : LD 2, 6(5) ; Load staged arg 1 from caller frame
634 : ST 2, 2(4) ; Store arg 1 into callee frame
635 : LD 2, 7(5) ; Load staged arg 2 from caller frame
636 : ST 2, 3(4) ; Store arg 2 into callee frame
637 : LD 2, 8(5) ; Load staged arg 3 from caller frame
638 : ST 2, 4(4) ; Store arg 3 into callee frame
639 : LD 2, 9(5) ; Load staged arg 4 from caller frame
640 : ST 2, 5(4) ; Store arg 4 into callee frame
641 : LDA 6, 645(0) ; Return address
642 : ST 6, 0(4) ; Store return in callee frame
643 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
644 : LDA 7, 418(0) ; Call fareySelectDen
645 : LD 1, 6(5) ; Load callee result into R1
646 : LDC 2, 7(0) ; Callee frame size
647 : SUB 5, 5, 2 ; Pop callee frame
648 : ST 1, 4(5) ; Store function result into frame return slot
649 : LD 6, 0(5) ; Load return address
650 : LDA 7, 0(6) ; Return to caller
651 : LD 1, 3(5) ; Load parameter 'N' into R1
652 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
653 : LDC 1, 1(0) ; Load integer-literal into R1
654 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
655 : LD 1, 1(5) ; Load parameter 'xNum' into R1
656 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
657 : LD 1, 2(5) ; Load parameter 'xDen' into R1
658 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
659 : LD 1, 3(5) ; Load parameter 'N' into R1
660 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
661 : LDC 1, 0(0) ; Load integer-literal into R1
662 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
663 : LDC 1, 1(0) ; Load integer-literal into R1
664 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
665 : LDC 1, 1(0) ; Load integer-literal into R1
666 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
667 : LDC 1, 1(0) ; Load integer-literal into R1
668 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
669 : LDA 4, 13(5) ; Compute future callee base from caller size
670 : LD 2, 5(5) ; Load staged arg 0 from caller frame
671 : ST 2, 1(4) ; Store arg 0 into callee frame
672 : LD 2, 6(5) ; Load staged arg 1 from caller frame
673 : ST 2, 2(4) ; Store arg 1 into callee frame
674 : LD 2, 7(5) ; Load staged arg 2 from caller frame
675 : ST 2, 3(4) ; Store arg 2 into callee frame
676 : LD 2, 8(5) ; Load staged arg 3 from caller frame
677 : ST 2, 4(4) ; Store arg 3 into callee frame
678 : LD 2, 9(5) ; Load staged arg 4 from caller frame
679 : ST 2, 5(4) ; Store arg 4 into callee frame
680 : LD 2, 10(5) ; Load staged arg 5 from caller frame
681 : ST 2, 6(4) ; Store arg 5 into callee frame
682 : LD 2, 11(5) ; Load staged arg 6 from caller frame
683 : ST 2, 7(4) ; Store arg 6 into callee frame
684 : LD 2, 12(5) ; Load staged arg 7 from caller frame
685 : ST 2, 8(4) ; Store arg 7 into callee frame
686 : LDA 6, 690(0) ; Return address
687 : ST 6, 0(4) ; Store return in callee frame
688 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
689 : LDA 7, 124(0) ; Call whileLoopFor
690 : LD 1, 9(5) ; Load callee result into R1
691 : LDC 2, 11(0) ; Callee frame size
692 : SUB 5, 5, 2 ; Pop callee frame
693 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
694 : LDC 1, 2(0) ; Load integer-literal into R1
695 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
696 : LD 1, 1(5) ; Load parameter 'xNum' into R1
697 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
698 : LD 1, 2(5) ; Load parameter 'xDen' into R1
699 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
700 : LD 1, 3(5) ; Load parameter 'N' into R1
701 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
702 : LDC 1, 0(0) ; Load integer-literal into R1
703 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
704 : LDC 1, 1(0) ; Load integer-literal into R1
705 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
706 : LDC 1, 1(0) ; Load integer-literal into R1
707 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
708 : LDC 1, 1(0) ; Load integer-literal into R1
709 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
710 : LDA 4, 13(5) ; Compute future callee base from caller size
711 : LD 2, 5(5) ; Load staged arg 0 from caller frame
712 : ST 2, 1(4) ; Store arg 0 into callee frame
713 : LD 2, 6(5) ; Load staged arg 1 from caller frame
714 : ST 2, 2(4) ; Store arg 1 into callee frame
715 : LD 2, 7(5) ; Load staged arg 2 from caller frame
716 : ST 2, 3(4) ; Store arg 2 into callee frame
717 : LD 2, 8(5) ; Load staged arg 3 from caller frame
718 : ST 2, 4(4) ; Store arg 3 into callee frame
719 : LD 2, 9(5) ; Load staged arg 4 from caller frame
720 : ST 2, 5(4) ; Store arg 4 into callee frame
721 : LD 2, 10(5) ; Load staged arg 5 from caller frame
722 : ST 2, 6(4) ; Store arg 5 into callee frame
723 : LD 2, 11(5) ; Load staged arg 6 from caller frame
724 : ST 2, 7(4) ; Store arg 6 into callee frame
725 : LD 2, 12(5) ; Load staged arg 7 from caller frame
726 : ST 2, 8(4) ; Store arg 7 into callee frame
727 : LDA 6, 731(0) ; Return address
728 : ST 6, 0(4) ; Store return in callee frame
729 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
730 : LDA 7, 124(0) ; Call whileLoopFor
731 : LD 1, 9(5) ; Load callee result into R1
732 : LDC 2, 11(0) ; Callee frame size
733 : SUB 5, 5, 2 ; Pop callee frame
734 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
735 : LDC 1, 3(0) ; Load integer-literal into R1
736 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
737 : LD 1, 1(5) ; Load parameter 'xNum' into R1
738 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
739 : LD 1, 2(5) ; Load parameter 'xDen' into R1
740 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
741 : LD 1, 3(5) ; Load parameter 'N' into R1
742 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
743 : LDC 1, 0(0) ; Load integer-literal into R1
744 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
745 : LDC 1, 1(0) ; Load integer-literal into R1
746 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
747 : LDC 1, 1(0) ; Load integer-literal into R1
748 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
749 : LDC 1, 1(0) ; Load integer-literal into R1
750 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
751 : LDA 4, 13(5) ; Compute future callee base from caller size
752 : LD 2, 5(5) ; Load staged arg 0 from caller frame
753 : ST 2, 1(4) ; Store arg 0 into callee frame
754 : LD 2, 6(5) ; Load staged arg 1 from caller frame
755 : ST 2, 2(4) ; Store arg 1 into callee frame
756 : LD 2, 7(5) ; Load staged arg 2 from caller frame
757 : ST 2, 3(4) ; Store arg 2 into callee frame
758 : LD 2, 8(5) ; Load staged arg 3 from caller frame
759 : ST 2, 4(4) ; Store arg 3 into callee frame
760 : LD 2, 9(5) ; Load staged arg 4 from caller frame
761 : ST 2, 5(4) ; Store arg 4 into callee frame
762 : LD 2, 10(5) ; Load staged arg 5 from caller frame
763 : ST 2, 6(4) ; Store arg 5 into callee frame
764 : LD 2, 11(5) ; Load staged arg 6 from caller frame
765 : ST 2, 7(4) ; Store arg 6 into callee frame
766 : LD 2, 12(5) ; Load staged arg 7 from caller frame
767 : ST 2, 8(4) ; Store arg 7 into callee frame
768 : LDA 6, 772(0) ; Return address
769 : ST 6, 0(4) ; Store return in callee frame
770 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
771 : LDA 7, 124(0) ; Call whileLoopFor
772 : LD 1, 9(5) ; Load callee result into R1
773 : LDC 2, 11(0) ; Callee frame size
774 : SUB 5, 5, 2 ; Pop callee frame
775 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
776 : LDC 1, 4(0) ; Load integer-literal into R1
777 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
778 : LD 1, 1(5) ; Load parameter 'xNum' into R1
779 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
780 : LD 1, 2(5) ; Load parameter 'xDen' into R1
781 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
782 : LD 1, 3(5) ; Load parameter 'N' into R1
783 : ST 1, 8(5) ; Stage arg 3 in caller frame outgoing area
784 : LDC 1, 0(0) ; Load integer-literal into R1
785 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
786 : LDC 1, 1(0) ; Load integer-literal into R1
787 : ST 1, 10(5) ; Stage arg 5 in caller frame outgoing area
788 : LDC 1, 1(0) ; Load integer-literal into R1
789 : ST 1, 11(5) ; Stage arg 6 in caller frame outgoing area
790 : LDC 1, 1(0) ; Load integer-literal into R1
791 : ST 1, 12(5) ; Stage arg 7 in caller frame outgoing area
792 : LDA 4, 13(5) ; Compute future callee base from caller size
793 : LD 2, 5(5) ; Load staged arg 0 from caller frame
794 : ST 2, 1(4) ; Store arg 0 into callee frame
795 : LD 2, 6(5) ; Load staged arg 1 from caller frame
796 : ST 2, 2(4) ; Store arg 1 into callee frame
797 : LD 2, 7(5) ; Load staged arg 2 from caller frame
798 : ST 2, 3(4) ; Store arg 2 into callee frame
799 : LD 2, 8(5) ; Load staged arg 3 from caller frame
800 : ST 2, 4(4) ; Store arg 3 into callee frame
801 : LD 2, 9(5) ; Load staged arg 4 from caller frame
802 : ST 2, 5(4) ; Store arg 4 into callee frame
803 : LD 2, 10(5) ; Load staged arg 5 from caller frame
804 : ST 2, 6(4) ; Store arg 5 into callee frame
805 : LD 2, 11(5) ; Load staged arg 6 from caller frame
806 : ST 2, 7(4) ; Store arg 6 into callee frame
807 : LD 2, 12(5) ; Load staged arg 7 from caller frame
808 : ST 2, 8(4) ; Store arg 7 into callee frame
809 : LDA 6, 813(0) ; Return address
810 : ST 6, 0(4) ; Store return in callee frame
811 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
812 : LDA 7, 124(0) ; Call whileLoopFor
813 : LD 1, 9(5) ; Load callee result into R1
814 : LDC 2, 11(0) ; Callee frame size
815 : SUB 5, 5, 2 ; Pop callee frame
816 : ST 1, 9(5) ; Stage arg 4 in caller frame outgoing area
817 : LDA 4, 13(5) ; Compute future callee base from caller size
818 : LD 2, 5(5) ; Load staged arg 0 from caller frame
819 : ST 2, 1(4) ; Store arg 0 into callee frame
820 : LD 2, 6(5) ; Load staged arg 1 from caller frame
821 : ST 2, 2(4) ; Store arg 1 into callee frame
822 : LD 2, 7(5) ; Load staged arg 2 from caller frame
823 : ST 2, 3(4) ; Store arg 2 into callee frame
824 : LD 2, 8(5) ; Load staged arg 3 from caller frame
825 : ST 2, 4(4) ; Store arg 3 into callee frame
826 : LD 2, 9(5) ; Load staged arg 4 from caller frame
827 : ST 2, 5(4) ; Store arg 4 into callee frame
828 : LDA 6, 832(0) ; Return address
829 : ST 6, 0(4) ; Store return in callee frame
830 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
831 : LDA 7, 441(0) ; Call fareySelectNum
832 : LD 1, 6(5) ; Load callee result into R1
833 : LDC 2, 7(0) ; Callee frame size
834 : SUB 5, 5, 2 ; Pop callee frame
835 : ST 1, 4(5) ; Store function result into frame return slot
836 : LD 6, 0(5) ; Load return address
837 : LDA 7, 0(6) ; Return to caller
