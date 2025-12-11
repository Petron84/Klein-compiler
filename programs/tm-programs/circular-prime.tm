0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
13 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
14 : LDA 4, 4(5) ; Compute future callee base from caller size
15 : LD 2, 3(5) ; Load staged arg 0 from caller frame
16 : ST 2, 1(4) ; Store arg 0 into callee frame
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 566(0) ; Call circularPrimesTo
21 : LD 1, 2(5) ; Load callee result into R1
22 : LDC 2, 4(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
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
39 : LDA 7, 60(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : ST 1, 4(5) ; Spill left operand at depth 0
42 : LD 1, 2(5) ; Load parameter 'den' into R1
43 : LD 2, 4(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; R1 = left - right
45 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
48 : LDA 4, 7(5) ; Compute future callee base from caller size
49 : LD 2, 5(5) ; Load staged arg 0 from caller frame
50 : ST 2, 1(4) ; Store arg 0 into callee frame
51 : LD 2, 6(5) ; Load staged arg 1 from caller frame
52 : ST 2, 2(4) ; Store arg 1 into callee frame
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
56 : LDA 7, 28(0) ; Call mod
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop callee frame
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
65 : LD 1, 1(5) ; Load parameter 'a' into R1
66 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
67 : LDA 4, 7(5) ; Compute future callee base from caller size
68 : LD 2, 5(5) ; Load staged arg 0 from caller frame
69 : ST 2, 1(4) ; Store arg 0 into callee frame
70 : LD 2, 6(5) ; Load staged arg 1 from caller frame
71 : ST 2, 2(4) ; Store arg 1 into callee frame
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
75 : LDA 7, 28(0) ; Call mod
76 : LD 1, 3(5) ; Load callee result into R1
77 : LDC 2, 5(0) ; Callee frame size
78 : SUB 5, 5, 2 ; Pop callee frame
79 : ST 1, 4(5) ; Spill left operand at depth 0
80 : LDC 1, 0(0) ; Load integer-literal into R1
81 : LD 2, 4(5) ; Restore left operand from depth 0
82 : SUB 1, 2, 1 ; left - right for equality check
83 : JEQ 1, 2(7) ; If R1 == 0, jump to true
84 : LDC 1, 0(0) ; false
85 : LDA 7, 1(7) ; skip setting true
86 : LDC 1, 1(0) ; true
87 : ST 1, 3(5) ; Store function result into frame return slot
88 : LD 6, 0(5) ; Load return address
89 : LDA 7, 0(6) ; Return to caller
90 : LD 1, 1(5) ; Load parameter 'i' into R1
91 : ST 1, 4(5) ; Spill left operand at depth 0
92 : LD 1, 2(5) ; Load parameter 'n' into R1
93 : LD 2, 4(5) ; Restore left operand from depth 0
94 : SUB 1, 2, 1 ; left - right for less-than check
95 : JLT 1, 2(7) ; If R1 < 0, jump to true
96 : LDC 1, 0(0) ; false
97 : LDA 7, 1(7) ; skip setting true
98 : LDC 1, 1(0) ; true
99 : JEQ 1, 140(0) ; If condition is false, jump to ELSE
100 : LD 1, 1(5) ; Load parameter 'i' into R1
101 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
104 : LDA 4, 8(5) ; Compute future callee base from caller size
105 : LD 2, 6(5) ; Load staged arg 0 from caller frame
106 : ST 2, 1(4) ; Store arg 0 into callee frame
107 : LD 2, 7(5) ; Load staged arg 1 from caller frame
108 : ST 2, 2(4) ; Store arg 1 into callee frame
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return in callee frame
111 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
112 : LDA 7, 63(0) ; Call divides
113 : LD 1, 3(5) ; Load callee result into R1
114 : LDC 2, 5(0) ; Callee frame size
115 : SUB 5, 5, 2 ; Pop callee frame
116 : ST 1, 4(5) ; Spill left operand at depth 0
117 : LD 1, 1(5) ; Load parameter 'i' into R1
118 : ST 1, 5(5) ; Spill left operand at depth 1
119 : LDC 1, 1(0) ; Load integer-literal into R1
120 : LD 2, 5(5) ; Restore left operand from depth 1
121 : ADD 1, 2, 1 ; R1 = left + right
122 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
123 : LD 1, 2(5) ; Load parameter 'n' into R1
124 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
125 : LDA 4, 8(5) ; Compute future callee base from caller size
126 : LD 2, 6(5) ; Load staged arg 0 from caller frame
127 : ST 2, 1(4) ; Store arg 0 into callee frame
128 : LD 2, 7(5) ; Load staged arg 1 from caller frame
129 : ST 2, 2(4) ; Store arg 1 into callee frame
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
133 : LDA 7, 90(0) ; Call hasDivisorFrom
134 : LD 1, 3(5) ; Load callee result into R1
135 : LDC 2, 6(0) ; Callee frame size
136 : SUB 5, 5, 2 ; Pop callee frame
137 : LD 2, 4(5) ; Restore left operand from depth 0
138 : ADD 1, 2, 1 ; R1 = left OR right
139 : LDA 7, 141(0) ; Skip ELSE block
140 : LDC 1, 0(0) ; Load boolean-literal into R1
141 : ST 1, 3(5) ; Store function result into frame return slot
142 : LD 6, 0(5) ; Load return address
143 : LDA 7, 0(6) ; Return to caller
144 : LDC 1, 2(0) ; Load integer-literal into R1
145 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
146 : LD 1, 1(5) ; Load parameter 'n' into R1
147 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
148 : LDA 4, 5(5) ; Compute future callee base from caller size
149 : LD 2, 3(5) ; Load staged arg 0 from caller frame
150 : ST 2, 1(4) ; Store arg 0 into callee frame
151 : LD 2, 4(5) ; Load staged arg 1 from caller frame
152 : ST 2, 2(4) ; Store arg 1 into callee frame
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
156 : LDA 7, 90(0) ; Call hasDivisorFrom
157 : LD 1, 3(5) ; Load callee result into R1
158 : LDC 2, 6(0) ; Callee frame size
159 : SUB 5, 5, 2 ; Pop callee frame
160 : LDC 2, 1(0) ; Load 1 into R2
161 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
162 : ST 1, 2(5) ; Store function result into frame return slot
163 : LD 6, 0(5) ; Load return address
164 : LDA 7, 0(6) ; Return to caller
165 : LD 1, 1(5) ; Load parameter 'x' into R1
166 : ST 1, 4(5) ; Spill left operand at depth 0
167 : LDC 1, 10(0) ; Load integer-literal into R1
168 : LD 2, 4(5) ; Restore left operand from depth 0
169 : DIV 1, 2, 1 ; R1 = left / right
170 : ST 1, 4(5) ; Spill left operand at depth 0
171 : LDC 1, 0(0) ; Load integer-literal into R1
172 : LD 2, 4(5) ; Restore left operand from depth 0
173 : SUB 1, 2, 1 ; left - right for equality check
174 : JEQ 1, 2(7) ; If R1 == 0, jump to true
175 : LDC 1, 0(0) ; false
176 : LDA 7, 1(7) ; skip setting true
177 : LDC 1, 1(0) ; true
178 : JEQ 1, 181(0) ; If condition is false, jump to ELSE
179 : LD 1, 2(5) ; Load parameter 'y' into R1
180 : LDA 7, 205(0) ; Skip ELSE block
181 : LD 1, 1(5) ; Load parameter 'x' into R1
182 : ST 1, 4(5) ; Spill left operand at depth 0
183 : LDC 1, 10(0) ; Load integer-literal into R1
184 : LD 2, 4(5) ; Restore left operand from depth 0
185 : DIV 1, 2, 1 ; R1 = left / right
186 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
187 : LD 1, 2(5) ; Load parameter 'y' into R1
188 : ST 1, 4(5) ; Spill left operand at depth 0
189 : LDC 1, 1(0) ; Load integer-literal into R1
190 : LD 2, 4(5) ; Restore left operand from depth 0
191 : ADD 1, 2, 1 ; R1 = left + right
192 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
193 : LDA 4, 7(5) ; Compute future callee base from caller size
194 : LD 2, 5(5) ; Load staged arg 0 from caller frame
195 : ST 2, 1(4) ; Store arg 0 into callee frame
196 : LD 2, 6(5) ; Load staged arg 1 from caller frame
197 : ST 2, 2(4) ; Store arg 1 into callee frame
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
201 : LDA 7, 165(0) ; Call log10Helper
202 : LD 1, 3(5) ; Load callee result into R1
203 : LDC 2, 5(0) ; Callee frame size
204 : SUB 5, 5, 2 ; Pop callee frame
205 : ST 1, 3(5) ; Store function result into frame return slot
206 : LD 6, 0(5) ; Load return address
207 : LDA 7, 0(6) ; Return to caller
208 : LD 1, 1(5) ; Load parameter 'x' into R1
209 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
210 : LDC 1, 0(0) ; Load integer-literal into R1
211 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
212 : LDA 4, 5(5) ; Compute future callee base from caller size
213 : LD 2, 3(5) ; Load staged arg 0 from caller frame
214 : ST 2, 1(4) ; Store arg 0 into callee frame
215 : LD 2, 4(5) ; Load staged arg 1 from caller frame
216 : ST 2, 2(4) ; Store arg 1 into callee frame
217 : LDA 6, 221(0) ; Return address
218 : ST 6, 0(4) ; Store return in callee frame
219 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
220 : LDA 7, 165(0) ; Call log10Helper
221 : LD 1, 3(5) ; Load callee result into R1
222 : LDC 2, 5(0) ; Callee frame size
223 : SUB 5, 5, 2 ; Pop callee frame
224 : ST 1, 2(5) ; Store function result into frame return slot
225 : LD 6, 0(5) ; Load return address
226 : LDA 7, 0(6) ; Return to caller
227 : LD 1, 2(5) ; Load parameter 'power' into R1
228 : ST 1, 5(5) ; Spill left operand at depth 0
229 : LDC 1, 0(0) ; Load integer-literal into R1
230 : LD 2, 5(5) ; Restore left operand from depth 0
231 : SUB 1, 2, 1 ; left - right for equality check
232 : JEQ 1, 2(7) ; If R1 == 0, jump to true
233 : LDC 1, 0(0) ; false
234 : LDA 7, 1(7) ; skip setting true
235 : LDC 1, 1(0) ; true
236 : JEQ 1, 239(0) ; If condition is false, jump to ELSE
237 : LDC 1, 1(0) ; Load integer-literal into R1
238 : LDA 7, 279(0) ; Skip ELSE block
239 : LD 1, 2(5) ; Load parameter 'power' into R1
240 : ST 1, 5(5) ; Spill left operand at depth 0
241 : LDC 1, 1(0) ; Load integer-literal into R1
242 : LD 2, 5(5) ; Restore left operand from depth 0
243 : SUB 1, 2, 1 ; left - right for equality check
244 : JEQ 1, 2(7) ; If R1 == 0, jump to true
245 : LDC 1, 0(0) ; false
246 : LDA 7, 1(7) ; skip setting true
247 : LDC 1, 1(0) ; true
248 : JEQ 1, 251(0) ; If condition is false, jump to ELSE
249 : LD 1, 3(5) ; Load parameter 'total' into R1
250 : LDA 7, 279(0) ; Skip ELSE block
251 : LD 1, 1(5) ; Load parameter 'base' into R1
252 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
253 : LD 1, 2(5) ; Load parameter 'power' into R1
254 : ST 1, 5(5) ; Spill left operand at depth 0
255 : LDC 1, 1(0) ; Load integer-literal into R1
256 : LD 2, 5(5) ; Restore left operand from depth 0
257 : SUB 1, 2, 1 ; R1 = left - right
258 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
259 : LD 1, 1(5) ; Load parameter 'base' into R1
260 : ST 1, 5(5) ; Spill left operand at depth 0
261 : LD 1, 3(5) ; Load parameter 'total' into R1
262 : LD 2, 5(5) ; Restore left operand from depth 0
263 : MUL 1, 2, 1 ; R1 = left * right
264 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
265 : LDA 4, 9(5) ; Compute future callee base from caller size
266 : LD 2, 6(5) ; Load staged arg 0 from caller frame
267 : ST 2, 1(4) ; Store arg 0 into callee frame
268 : LD 2, 7(5) ; Load staged arg 1 from caller frame
269 : ST 2, 2(4) ; Store arg 1 into callee frame
270 : LD 2, 8(5) ; Load staged arg 2 from caller frame
271 : ST 2, 3(4) ; Store arg 2 into callee frame
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return in callee frame
274 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
275 : LDA 7, 227(0) ; Call powHelper
276 : LD 1, 4(5) ; Load callee result into R1
277 : LDC 2, 6(0) ; Callee frame size
278 : SUB 5, 5, 2 ; Pop callee frame
279 : ST 1, 4(5) ; Store function result into frame return slot
280 : LD 6, 0(5) ; Load return address
281 : LDA 7, 0(6) ; Return to caller
282 : LD 1, 1(5) ; Load parameter 'x' into R1
283 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
284 : LD 1, 2(5) ; Load parameter 'y' into R1
285 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
286 : LD 1, 1(5) ; Load parameter 'x' into R1
287 : ST 1, 6(5) ; Stage arg 2 in caller frame outgoing area
288 : LDA 4, 7(5) ; Compute future callee base from caller size
289 : LD 2, 4(5) ; Load staged arg 0 from caller frame
290 : ST 2, 1(4) ; Store arg 0 into callee frame
291 : LD 2, 5(5) ; Load staged arg 1 from caller frame
292 : ST 2, 2(4) ; Store arg 1 into callee frame
293 : LD 2, 6(5) ; Load staged arg 2 from caller frame
294 : ST 2, 3(4) ; Store arg 2 into callee frame
295 : LDA 6, 299(0) ; Return address
296 : ST 6, 0(4) ; Store return in callee frame
297 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
298 : LDA 7, 227(0) ; Call powHelper
299 : LD 1, 4(5) ; Load callee result into R1
300 : LDC 2, 6(0) ; Callee frame size
301 : SUB 5, 5, 2 ; Pop callee frame
302 : ST 1, 3(5) ; Store function result into frame return slot
303 : LD 6, 0(5) ; Load return address
304 : LDA 7, 0(6) ; Return to caller
305 : LD 1, 1(5) ; Load parameter 'x' into R1
306 : ST 1, 3(5) ; Spill left operand at depth 0
307 : LDC 1, 10(0) ; Load integer-literal into R1
308 : LD 2, 3(5) ; Restore left operand from depth 0
309 : DIV 1, 2, 1 ; R1 = left / right
310 : ST 1, 3(5) ; Spill left operand at depth 0
311 : LD 1, 1(5) ; Load parameter 'x' into R1
312 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
313 : LDC 1, 10(0) ; Load integer-literal into R1
314 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
315 : LDA 4, 7(5) ; Compute future callee base from caller size
316 : LD 2, 5(5) ; Load staged arg 0 from caller frame
317 : ST 2, 1(4) ; Store arg 0 into callee frame
318 : LD 2, 6(5) ; Load staged arg 1 from caller frame
319 : ST 2, 2(4) ; Store arg 1 into callee frame
320 : LDA 6, 324(0) ; Return address
321 : ST 6, 0(4) ; Store return in callee frame
322 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
323 : LDA 7, 28(0) ; Call mod
324 : LD 1, 3(5) ; Load callee result into R1
325 : LDC 2, 5(0) ; Callee frame size
326 : SUB 5, 5, 2 ; Pop callee frame
327 : ST 1, 4(5) ; Spill left operand at depth 1
328 : LDC 1, 10(0) ; Load integer-literal into R1
329 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
330 : LD 1, 1(5) ; Load parameter 'x' into R1
331 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
332 : LDA 4, 7(5) ; Compute future callee base from caller size
333 : LD 2, 5(5) ; Load staged arg 0 from caller frame
334 : ST 2, 1(4) ; Store arg 0 into callee frame
335 : LDA 6, 339(0) ; Return address
336 : ST 6, 0(4) ; Store return in callee frame
337 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
338 : LDA 7, 208(0) ; Call log10
339 : LD 1, 2(5) ; Load callee result into R1
340 : LDC 2, 3(0) ; Callee frame size
341 : SUB 5, 5, 2 ; Pop callee frame
342 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
343 : LDA 4, 7(5) ; Compute future callee base from caller size
344 : LD 2, 5(5) ; Load staged arg 0 from caller frame
345 : ST 2, 1(4) ; Store arg 0 into callee frame
346 : LD 2, 6(5) ; Load staged arg 1 from caller frame
347 : ST 2, 2(4) ; Store arg 1 into callee frame
348 : LDA 6, 352(0) ; Return address
349 : ST 6, 0(4) ; Store return in callee frame
350 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
351 : LDA 7, 282(0) ; Call pow
352 : LD 1, 3(5) ; Load callee result into R1
353 : LDC 2, 4(0) ; Callee frame size
354 : SUB 5, 5, 2 ; Pop callee frame
355 : LD 2, 4(5) ; Restore left operand from depth 1
356 : MUL 1, 2, 1 ; R1 = left * right
357 : LD 2, 3(5) ; Restore left operand from depth 0
358 : ADD 1, 2, 1 ; R1 = left + right
359 : ST 1, 2(5) ; Store function result into frame return slot
360 : LD 6, 0(5) ; Load return address
361 : LDA 7, 0(6) ; Return to caller
362 : LDA 4, 3(5) ; Compute future callee base from caller size
363 : LD 2, 3(5) ; Load staged arg 0 from caller frame
364 : ST 2, 1(4) ; Store arg 0 into callee frame
365 : LDA 6, 369(0) ; Return address
366 : ST 6, 0(4) ; Store return in callee frame
367 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
368 : LDA 7, 9(0) ; Call built-in print
369 : LDC 2, 3(0) ; Callee frame size
370 : SUB 5, 5, 2 ; Pop callee frame
371 : LDC 1, 1(0) ; Load boolean-literal into R1
372 : ST 1, 2(5) ; Store function result into frame return slot
373 : LD 6, 0(5) ; Load return address
374 : LDA 7, 0(6) ; Return to caller
375 : LD 1, 2(5) ; Load parameter 'turns' into R1
376 : ST 1, 4(5) ; Spill left operand at depth 0
377 : LDC 1, 0(0) ; Load integer-literal into R1
378 : LD 2, 4(5) ; Restore left operand from depth 0
379 : SUB 1, 2, 1 ; left - right for equality check
380 : JEQ 1, 2(7) ; If R1 == 0, jump to true
381 : LDC 1, 0(0) ; false
382 : LDA 7, 1(7) ; skip setting true
383 : LDC 1, 1(0) ; true
384 : JEQ 1, 387(0) ; If condition is false, jump to ELSE
385 : LDC 1, 1(0) ; Load boolean-literal into R1
386 : LDA 7, 433(0) ; Skip ELSE block
387 : LD 1, 1(5) ; Load parameter 'x' into R1
388 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
389 : LDA 4, 8(5) ; Compute future callee base from caller size
390 : LD 2, 6(5) ; Load staged arg 0 from caller frame
391 : ST 2, 1(4) ; Store arg 0 into callee frame
392 : LDA 6, 396(0) ; Return address
393 : ST 6, 0(4) ; Store return in callee frame
394 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
395 : LDA 7, 144(0) ; Call isPrime
396 : LD 1, 2(5) ; Load callee result into R1
397 : LDC 2, 3(0) ; Callee frame size
398 : SUB 5, 5, 2 ; Pop callee frame
399 : ST 1, 4(5) ; Spill left operand at depth 0
400 : LD 1, 1(5) ; Load parameter 'x' into R1
401 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
402 : LDA 4, 8(5) ; Compute future callee base from caller size
403 : LD 2, 6(5) ; Load staged arg 0 from caller frame
404 : ST 2, 1(4) ; Store arg 0 into callee frame
405 : LDA 6, 409(0) ; Return address
406 : ST 6, 0(4) ; Store return in callee frame
407 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
408 : LDA 7, 305(0) ; Call rotate
409 : LD 1, 2(5) ; Load callee result into R1
410 : LDC 2, 5(0) ; Callee frame size
411 : SUB 5, 5, 2 ; Pop callee frame
412 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
413 : LD 1, 2(5) ; Load parameter 'turns' into R1
414 : ST 1, 5(5) ; Spill left operand at depth 1
415 : LDC 1, 1(0) ; Load integer-literal into R1
416 : LD 2, 5(5) ; Restore left operand from depth 1
417 : SUB 1, 2, 1 ; R1 = left - right
418 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
419 : LDA 4, 8(5) ; Compute future callee base from caller size
420 : LD 2, 6(5) ; Load staged arg 0 from caller frame
421 : ST 2, 1(4) ; Store arg 0 into callee frame
422 : LD 2, 7(5) ; Load staged arg 1 from caller frame
423 : ST 2, 2(4) ; Store arg 1 into callee frame
424 : LDA 6, 428(0) ; Return address
425 : ST 6, 0(4) ; Store return in callee frame
426 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
427 : LDA 7, 375(0) ; Call isCircularPrimeHelper
428 : LD 1, 3(5) ; Load callee result into R1
429 : LDC 2, 6(0) ; Callee frame size
430 : SUB 5, 5, 2 ; Pop callee frame
431 : LD 2, 4(5) ; Restore left operand from depth 0
432 : MUL 1, 2, 1 ; R1 = left AND right
433 : ST 1, 3(5) ; Store function result into frame return slot
434 : LD 6, 0(5) ; Load return address
435 : LDA 7, 0(6) ; Return to caller
436 : LD 1, 1(5) ; Load parameter 'x' into R1
437 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
438 : LD 1, 1(5) ; Load parameter 'x' into R1
439 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
440 : LDA 4, 6(5) ; Compute future callee base from caller size
441 : LD 2, 4(5) ; Load staged arg 0 from caller frame
442 : ST 2, 1(4) ; Store arg 0 into callee frame
443 : LDA 6, 447(0) ; Return address
444 : ST 6, 0(4) ; Store return in callee frame
445 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
446 : LDA 7, 208(0) ; Call log10
447 : LD 1, 2(5) ; Load callee result into R1
448 : LDC 2, 3(0) ; Callee frame size
449 : SUB 5, 5, 2 ; Pop callee frame
450 : ST 1, 3(5) ; Spill left operand at depth 0
451 : LDC 1, 1(0) ; Load integer-literal into R1
452 : LD 2, 3(5) ; Restore left operand from depth 0
453 : ADD 1, 2, 1 ; R1 = left + right
454 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
455 : LDA 4, 6(5) ; Compute future callee base from caller size
456 : LD 2, 4(5) ; Load staged arg 0 from caller frame
457 : ST 2, 1(4) ; Store arg 0 into callee frame
458 : LD 2, 5(5) ; Load staged arg 1 from caller frame
459 : ST 2, 2(4) ; Store arg 1 into callee frame
460 : LDA 6, 464(0) ; Return address
461 : ST 6, 0(4) ; Store return in callee frame
462 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
463 : LDA 7, 375(0) ; Call isCircularPrimeHelper
464 : LD 1, 3(5) ; Load callee result into R1
465 : LDC 2, 6(0) ; Callee frame size
466 : SUB 5, 5, 2 ; Pop callee frame
467 : JEQ 1, 481(0) ; If condition is false, jump to ELSE
468 : LD 1, 1(5) ; Load parameter 'x' into R1
469 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
470 : LDA 4, 6(5) ; Compute future callee base from caller size
471 : LD 2, 4(5) ; Load staged arg 0 from caller frame
472 : ST 2, 1(4) ; Store arg 0 into callee frame
473 : LDA 6, 477(0) ; Return address
474 : ST 6, 0(4) ; Store return in callee frame
475 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
476 : LDA 7, 362(0) ; Call report
477 : LD 1, 2(5) ; Load callee result into R1
478 : LDC 2, 3(0) ; Callee frame size
479 : SUB 5, 5, 2 ; Pop callee frame
480 : LDA 7, 482(0) ; Skip ELSE block
481 : LDC 1, 0(0) ; Load boolean-literal into R1
482 : ST 1, 2(5) ; Store function result into frame return slot
483 : LD 6, 0(5) ; Load return address
484 : LDA 7, 0(6) ; Return to caller
485 : LD 1, 2(5) ; Load parameter 'x' into R1
486 : ST 1, 5(5) ; Spill left operand at depth 0
487 : LD 1, 1(5) ; Load parameter 'top' into R1
488 : LD 2, 5(5) ; Restore left operand from depth 0
489 : SUB 1, 2, 1 ; left - right for less-than check
490 : JLT 1, 2(7) ; If R1 < 0, jump to true
491 : LDC 1, 0(0) ; false
492 : LDA 7, 1(7) ; skip setting true
493 : LDC 1, 1(0) ; true
494 : JEQ 1, 562(0) ; If condition is false, jump to ELSE
495 : LD 1, 2(5) ; Load parameter 'x' into R1
496 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
497 : LDA 4, 9(5) ; Compute future callee base from caller size
498 : LD 2, 6(5) ; Load staged arg 0 from caller frame
499 : ST 2, 1(4) ; Store arg 0 into callee frame
500 : LDA 6, 504(0) ; Return address
501 : ST 6, 0(4) ; Store return in callee frame
502 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
503 : LDA 7, 436(0) ; Call isCircularPrime
504 : LD 1, 2(5) ; Load callee result into R1
505 : LDC 2, 4(0) ; Callee frame size
506 : SUB 5, 5, 2 ; Pop callee frame
507 : JEQ 1, 537(0) ; If condition is false, jump to ELSE
508 : LD 1, 1(5) ; Load parameter 'top' into R1
509 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
510 : LD 1, 2(5) ; Load parameter 'x' into R1
511 : ST 1, 5(5) ; Spill left operand at depth 0
512 : LDC 1, 1(0) ; Load integer-literal into R1
513 : LD 2, 5(5) ; Restore left operand from depth 0
514 : ADD 1, 2, 1 ; R1 = left + right
515 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
516 : LD 1, 3(5) ; Load parameter 'count' into R1
517 : ST 1, 5(5) ; Spill left operand at depth 0
518 : LDC 1, 1(0) ; Load integer-literal into R1
519 : LD 2, 5(5) ; Restore left operand from depth 0
520 : ADD 1, 2, 1 ; R1 = left + right
521 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
522 : LDA 4, 9(5) ; Compute future callee base from caller size
523 : LD 2, 6(5) ; Load staged arg 0 from caller frame
524 : ST 2, 1(4) ; Store arg 0 into callee frame
525 : LD 2, 7(5) ; Load staged arg 1 from caller frame
526 : ST 2, 2(4) ; Store arg 1 into callee frame
527 : LD 2, 8(5) ; Load staged arg 2 from caller frame
528 : ST 2, 3(4) ; Store arg 2 into callee frame
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return in callee frame
531 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
532 : LDA 7, 485(0) ; Call circularPrimesToHelper
533 : LD 1, 4(5) ; Load callee result into R1
534 : LDC 2, 6(0) ; Callee frame size
535 : SUB 5, 5, 2 ; Pop callee frame
536 : LDA 7, 561(0) ; Skip ELSE block
537 : LD 1, 1(5) ; Load parameter 'top' into R1
538 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
539 : LD 1, 2(5) ; Load parameter 'x' into R1
540 : ST 1, 5(5) ; Spill left operand at depth 0
541 : LDC 1, 1(0) ; Load integer-literal into R1
542 : LD 2, 5(5) ; Restore left operand from depth 0
543 : ADD 1, 2, 1 ; R1 = left + right
544 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
545 : LD 1, 3(5) ; Load parameter 'count' into R1
546 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
547 : LDA 4, 9(5) ; Compute future callee base from caller size
548 : LD 2, 6(5) ; Load staged arg 0 from caller frame
549 : ST 2, 1(4) ; Store arg 0 into callee frame
550 : LD 2, 7(5) ; Load staged arg 1 from caller frame
551 : ST 2, 2(4) ; Store arg 1 into callee frame
552 : LD 2, 8(5) ; Load staged arg 2 from caller frame
553 : ST 2, 3(4) ; Store arg 2 into callee frame
554 : LDA 6, 558(0) ; Return address
555 : ST 6, 0(4) ; Store return in callee frame
556 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
557 : LDA 7, 485(0) ; Call circularPrimesToHelper
558 : LD 1, 4(5) ; Load callee result into R1
559 : LDC 2, 6(0) ; Callee frame size
560 : SUB 5, 5, 2 ; Pop callee frame
561 : LDA 7, 563(0) ; Skip ELSE block
562 : LD 1, 3(5) ; Load parameter 'count' into R1
563 : ST 1, 4(5) ; Store function result into frame return slot
564 : LD 6, 0(5) ; Load return address
565 : LDA 7, 0(6) ; Return to caller
566 : LD 1, 1(5) ; Load parameter 'x' into R1
567 : ST 1, 3(5) ; Spill left operand at depth 0
568 : LDC 1, 1(0) ; Load integer-literal into R1
569 : LD 2, 3(5) ; Restore left operand from depth 0
570 : ADD 1, 2, 1 ; R1 = left + right
571 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
572 : LDC 1, 2(0) ; Load integer-literal into R1
573 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
574 : LDC 1, 0(0) ; Load integer-literal into R1
575 : ST 1, 6(5) ; Stage arg 2 in caller frame outgoing area
576 : LDA 4, 7(5) ; Compute future callee base from caller size
577 : LD 2, 4(5) ; Load staged arg 0 from caller frame
578 : ST 2, 1(4) ; Store arg 0 into callee frame
579 : LD 2, 5(5) ; Load staged arg 1 from caller frame
580 : ST 2, 2(4) ; Store arg 1 into callee frame
581 : LD 2, 6(5) ; Load staged arg 2 from caller frame
582 : ST 2, 3(4) ; Store arg 2 into callee frame
583 : LDA 6, 587(0) ; Return address
584 : ST 6, 0(4) ; Store return in callee frame
585 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
586 : LDA 7, 485(0) ; Call circularPrimesToHelper
587 : LD 1, 4(5) ; Load callee result into R1
588 : LDC 2, 6(0) ; Callee frame size
589 : SUB 5, 5, 2 ; Pop callee frame
590 : ST 1, 2(5) ; Store function result into frame return slot
591 : LD 6, 0(5) ; Load return address
592 : LDA 7, 0(6) ; Return to caller
