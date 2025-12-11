0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
23 : JEQ 1, 38(0) ; If condition is false, jump to ELSE
24 : LD 1, 1(5) ; Load parameter 'n' into R1
25 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
26 : LDA 4, 6(5) ; Compute future callee base from caller size
27 : LD 2, 5(5) ; Load staged arg 0 from caller frame
28 : ST 2, 1(4) ; Store arg 0 into callee frame
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 358(0) ; Call emirp
33 : LD 1, 2(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop callee frame
36 : ST 1, 3(5) ; Store result into caller’s frame
37 : LDA 7, 88(0) ; Skip ELSE block
38 : LD 1, 2(5) ; Load parameter 'selector' into R1
39 : ST 1, 4(5) ; Spill left operand at depth 0
40 : LDC 1, 5(0) ; Load integer-literal into R1
41 : LD 2, 4(5) ; Restore left operand from depth 0
42 : SUB 1, 2, 1 ; left - right for equality check
43 : JEQ 1, 2(7) ; If R1 == 0, jump to true
44 : LDC 1, 0(0) ; false
45 : LDA 7, 1(7) ; skip setting true
46 : LDC 1, 1(0) ; true
47 : JEQ 1, 62(0) ; If condition is false, jump to ELSE
48 : LD 1, 1(5) ; Load parameter 'n' into R1
49 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
50 : LDA 4, 6(5) ; Compute future callee base from caller size
51 : LD 2, 5(5) ; Load staged arg 0 from caller frame
52 : ST 2, 1(4) ; Store arg 0 into callee frame
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
56 : LDA 7, 312(0) ; Call snowball
57 : LD 1, 2(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop callee frame
60 : ST 1, 3(5) ; Store result into caller’s frame
61 : LDA 7, 88(0) ; Skip ELSE block
62 : LD 1, 2(5) ; Load parameter 'selector' into R1
63 : ST 1, 4(5) ; Spill left operand at depth 0
64 : LDC 1, 8(0) ; Load integer-literal into R1
65 : LD 2, 4(5) ; Restore left operand from depth 0
66 : SUB 1, 2, 1 ; left - right for equality check
67 : JEQ 1, 2(7) ; If R1 == 0, jump to true
68 : LDC 1, 0(0) ; false
69 : LDA 7, 1(7) ; skip setting true
70 : LDC 1, 1(0) ; true
71 : JEQ 1, 86(0) ; If condition is false, jump to ELSE
72 : LD 1, 1(5) ; Load parameter 'n' into R1
73 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
74 : LDA 4, 6(5) ; Compute future callee base from caller size
75 : LD 2, 5(5) ; Load staged arg 0 from caller frame
76 : ST 2, 1(4) ; Store arg 0 into callee frame
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return in callee frame
79 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
80 : LDA 7, 286(0) ; Call doBoth
81 : LD 1, 2(5) ; Load callee result into R1
82 : LDC 2, 3(0) ; Callee frame size
83 : SUB 5, 5, 2 ; Pop callee frame
84 : ST 1, 3(5) ; Store result into caller’s frame
85 : LDA 7, 88(0) ; Skip ELSE block
86 : LDC 1, 0(0) ; Load boolean-literal into R1
87 : ST 1, 3(5) ; Store result into current frame's return slot
88 : LD 1, 3(5) ; Load main return value into R1
89 : LD 6, 0(5) ; Load main return address
90 : LDA 7, 0(6) ; Return from main
91 : LD 1, 1(5) ; Load parameter 'm' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LD 1, 1(5) ; Load parameter 'm' into R1
94 : ST 1, 5(5) ; Spill left operand at depth 1
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : LD 2, 5(5) ; Restore left operand from depth 1
97 : DIV 1, 2, 1 ; R1 = left / right
98 : ST 1, 5(5) ; Spill left operand at depth 1
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : LD 2, 5(5) ; Restore left operand from depth 1
101 : MUL 1, 2, 1 ; R1 = left * right
102 : LD 2, 4(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; R1 = left - right
104 : ST 1, 3(5) ; Store function result into frame return slot
105 : LD 6, 0(5) ; Load return address
106 : LDA 7, 0(6) ; Return to caller
107 : LD 1, 1(5) ; Load parameter 'n' into R1
108 : ST 1, 4(5) ; Spill left operand at depth 0
109 : LDC 1, 0(0) ; Load integer-literal into R1
110 : LD 2, 4(5) ; Restore left operand from depth 0
111 : SUB 1, 2, 1 ; left - right for equality check
112 : JEQ 1, 2(7) ; If R1 == 0, jump to true
113 : LDC 1, 0(0) ; false
114 : LDA 7, 1(7) ; skip setting true
115 : LDC 1, 1(0) ; true
116 : JEQ 1, 119(0) ; If condition is false, jump to ELSE
117 : LD 1, 2(5) ; Load parameter 'nR' into R1
118 : LDA 7, 162(0) ; Skip ELSE block
119 : LD 1, 1(5) ; Load parameter 'n' into R1
120 : ST 1, 4(5) ; Spill left operand at depth 0
121 : LDC 1, 10(0) ; Load integer-literal into R1
122 : LD 2, 4(5) ; Restore left operand from depth 0
123 : DIV 1, 2, 1 ; R1 = left / right
124 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
125 : LDC 1, 10(0) ; Load integer-literal into R1
126 : ST 1, 4(5) ; Spill left operand at depth 0
127 : LD 1, 2(5) ; Load parameter 'nR' into R1
128 : LD 2, 4(5) ; Restore left operand from depth 0
129 : MUL 1, 2, 1 ; R1 = left * right
130 : ST 1, 4(5) ; Spill left operand at depth 0
131 : LD 1, 1(5) ; Load parameter 'n' into R1
132 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
133 : LDC 1, 10(0) ; Load integer-literal into R1
134 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
135 : LDA 4, 7(5) ; Compute future callee base from caller size
136 : LD 2, 5(5) ; Load staged arg 0 from caller frame
137 : ST 2, 1(4) ; Store arg 0 into callee frame
138 : LD 2, 6(5) ; Load staged arg 1 from caller frame
139 : ST 2, 2(4) ; Store arg 1 into callee frame
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
143 : LDA 7, 91(0) ; Call MOD
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 6(0) ; Callee frame size
146 : SUB 5, 5, 2 ; Pop callee frame
147 : LD 2, 4(5) ; Restore left operand from depth 0
148 : ADD 1, 2, 1 ; R1 = left + right
149 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
150 : LDA 4, 7(5) ; Compute future callee base from caller size
151 : LD 2, 5(5) ; Load staged arg 0 from caller frame
152 : ST 2, 1(4) ; Store arg 0 into callee frame
153 : LD 2, 6(5) ; Load staged arg 1 from caller frame
154 : ST 2, 2(4) ; Store arg 1 into callee frame
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
158 : LDA 7, 107(0) ; Call reverseL
159 : LD 1, 3(5) ; Load callee result into R1
160 : LDC 2, 5(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop callee frame
162 : ST 1, 3(5) ; Store function result into frame return slot
163 : LD 6, 0(5) ; Load return address
164 : LDA 7, 0(6) ; Return to caller
165 : LD 1, 1(5) ; Load parameter 'n' into R1
166 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
167 : LDC 1, 0(0) ; Load integer-literal into R1
168 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
169 : LDA 4, 5(5) ; Compute future callee base from caller size
170 : LD 2, 3(5) ; Load staged arg 0 from caller frame
171 : ST 2, 1(4) ; Store arg 0 into callee frame
172 : LD 2, 4(5) ; Load staged arg 1 from caller frame
173 : ST 2, 2(4) ; Store arg 1 into callee frame
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return in callee frame
176 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
177 : LDA 7, 107(0) ; Call reverseL
178 : LD 1, 3(5) ; Load callee result into R1
179 : LDC 2, 5(0) ; Callee frame size
180 : SUB 5, 5, 2 ; Pop callee frame
181 : ST 1, 2(5) ; Store function result into frame return slot
182 : LD 6, 0(5) ; Load return address
183 : LDA 7, 0(6) ; Return to caller
184 : LD 1, 2(5) ; Load parameter 'b' into R1
185 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
186 : LD 1, 1(5) ; Load parameter 'a' into R1
187 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
188 : LDA 4, 7(5) ; Compute future callee base from caller size
189 : LD 2, 5(5) ; Load staged arg 0 from caller frame
190 : ST 2, 1(4) ; Store arg 0 into callee frame
191 : LD 2, 6(5) ; Load staged arg 1 from caller frame
192 : ST 2, 2(4) ; Store arg 1 into callee frame
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(4) ; Store return in callee frame
195 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
196 : LDA 7, 91(0) ; Call MOD
197 : LD 1, 3(5) ; Load callee result into R1
198 : LDC 2, 6(0) ; Callee frame size
199 : SUB 5, 5, 2 ; Pop callee frame
200 : ST 1, 4(5) ; Spill left operand at depth 0
201 : LDC 1, 0(0) ; Load integer-literal into R1
202 : LD 2, 4(5) ; Restore left operand from depth 0
203 : SUB 1, 2, 1 ; left - right for equality check
204 : JEQ 1, 2(7) ; If R1 == 0, jump to true
205 : LDC 1, 0(0) ; false
206 : LDA 7, 1(7) ; skip setting true
207 : LDC 1, 1(0) ; true
208 : ST 1, 3(5) ; Store function result into frame return slot
209 : LD 6, 0(5) ; Load return address
210 : LDA 7, 0(6) ; Return to caller
211 : LD 1, 1(5) ; Load parameter 'i' into R1
212 : ST 1, 4(5) ; Spill left operand at depth 0
213 : LD 1, 2(5) ; Load parameter 'n' into R1
214 : LD 2, 4(5) ; Restore left operand from depth 0
215 : SUB 1, 2, 1 ; left - right for less-than check
216 : JLT 1, 2(7) ; If R1 < 0, jump to true
217 : LDC 1, 0(0) ; false
218 : LDA 7, 1(7) ; skip setting true
219 : LDC 1, 1(0) ; true
220 : JEQ 1, 261(0) ; If condition is false, jump to ELSE
221 : LD 1, 1(5) ; Load parameter 'i' into R1
222 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
223 : LD 1, 2(5) ; Load parameter 'n' into R1
224 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
225 : LDA 4, 8(5) ; Compute future callee base from caller size
226 : LD 2, 6(5) ; Load staged arg 0 from caller frame
227 : ST 2, 1(4) ; Store arg 0 into callee frame
228 : LD 2, 7(5) ; Load staged arg 1 from caller frame
229 : ST 2, 2(4) ; Store arg 1 into callee frame
230 : LDA 6, 234(0) ; Return address
231 : ST 6, 0(4) ; Store return in callee frame
232 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
233 : LDA 7, 184(0) ; Call divides
234 : LD 1, 3(5) ; Load callee result into R1
235 : LDC 2, 5(0) ; Callee frame size
236 : SUB 5, 5, 2 ; Pop callee frame
237 : ST 1, 4(5) ; Spill left operand at depth 0
238 : LD 1, 1(5) ; Load parameter 'i' into R1
239 : ST 1, 5(5) ; Spill left operand at depth 1
240 : LDC 1, 1(0) ; Load integer-literal into R1
241 : LD 2, 5(5) ; Restore left operand from depth 1
242 : ADD 1, 2, 1 ; R1 = left + right
243 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
244 : LD 1, 2(5) ; Load parameter 'n' into R1
245 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
246 : LDA 4, 8(5) ; Compute future callee base from caller size
247 : LD 2, 6(5) ; Load staged arg 0 from caller frame
248 : ST 2, 1(4) ; Store arg 0 into callee frame
249 : LD 2, 7(5) ; Load staged arg 1 from caller frame
250 : ST 2, 2(4) ; Store arg 1 into callee frame
251 : LDA 6, 255(0) ; Return address
252 : ST 6, 0(4) ; Store return in callee frame
253 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
254 : LDA 7, 211(0) ; Call hasDivisorFrom
255 : LD 1, 3(5) ; Load callee result into R1
256 : LDC 2, 6(0) ; Callee frame size
257 : SUB 5, 5, 2 ; Pop callee frame
258 : LD 2, 4(5) ; Restore left operand from depth 0
259 : ADD 1, 2, 1 ; R1 = left OR right
260 : LDA 7, 262(0) ; Skip ELSE block
261 : LDC 1, 0(0) ; Load boolean-literal into R1
262 : ST 1, 3(5) ; Store function result into frame return slot
263 : LD 6, 0(5) ; Load return address
264 : LDA 7, 0(6) ; Return to caller
265 : LDC 1, 2(0) ; Load integer-literal into R1
266 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
267 : LD 1, 1(5) ; Load parameter 'n' into R1
268 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
269 : LDA 4, 5(5) ; Compute future callee base from caller size
270 : LD 2, 3(5) ; Load staged arg 0 from caller frame
271 : ST 2, 1(4) ; Store arg 0 into callee frame
272 : LD 2, 4(5) ; Load staged arg 1 from caller frame
273 : ST 2, 2(4) ; Store arg 1 into callee frame
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
277 : LDA 7, 211(0) ; Call hasDivisorFrom
278 : LD 1, 3(5) ; Load callee result into R1
279 : LDC 2, 6(0) ; Callee frame size
280 : SUB 5, 5, 2 ; Pop callee frame
281 : LDC 2, 1(0) ; Load 1 into R2
282 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
283 : ST 1, 2(5) ; Store function result into frame return slot
284 : LD 6, 0(5) ; Load return address
285 : LDA 7, 0(6) ; Return to caller
286 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
287 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
288 : LDA 4, 5(5) ; Compute future callee base from caller size
289 : LD 2, 3(5) ; Load staged arg 0 from caller frame
290 : ST 2, 1(4) ; Store arg 0 into callee frame
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
294 : LDA 7, 11(0) ; Call built-in print
295 : LDC 2, 3(0) ; Callee frame size
296 : SUB 5, 5, 2 ; Pop callee frame
297 : LD 1, 1(5) ; Load parameter 'n' into R1
298 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
299 : LDA 4, 5(5) ; Compute future callee base from caller size
300 : LD 2, 3(5) ; Load staged arg 0 from caller frame
301 : ST 2, 1(4) ; Store arg 0 into callee frame
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
305 : LDA 7, 312(0) ; Call snowball
306 : LD 1, 2(5) ; Load callee result into R1
307 : LDC 2, 5(0) ; Callee frame size
308 : SUB 5, 5, 2 ; Pop callee frame
309 : ST 1, 2(5) ; Store function result into frame return slot
310 : LD 6, 0(5) ; Load return address
311 : LDA 7, 0(6) ; Return to caller
312 : LD 1, 1(5) ; Load parameter 'n' into R1
313 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
314 : LDA 4, 6(5) ; Compute future callee base from caller size
315 : LD 2, 5(5) ; Load staged arg 0 from caller frame
316 : ST 2, 1(4) ; Store arg 0 into callee frame
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return in callee frame
319 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
320 : LDA 7, 265(0) ; Call isPrime
321 : LD 1, 2(5) ; Load callee result into R1
322 : LDC 2, 3(0) ; Callee frame size
323 : SUB 5, 5, 2 ; Pop callee frame
324 : ST 1, 3(5) ; Spill left operand at depth 0
325 : LD 1, 1(5) ; Load parameter 'n' into R1
326 : ST 1, 4(5) ; Spill left operand at depth 1
327 : LDC 1, 10(0) ; Load integer-literal into R1
328 : LD 2, 4(5) ; Restore left operand from depth 1
329 : SUB 1, 2, 1 ; left - right for less-than check
330 : JLT 1, 2(7) ; If R1 < 0, jump to true
331 : LDC 1, 0(0) ; false
332 : LDA 7, 1(7) ; skip setting true
333 : LDC 1, 1(0) ; true
334 : JEQ 1, 337(0) ; If condition is false, jump to ELSE
335 : LDC 1, 1(0) ; Load boolean-literal into R1
336 : LDA 7, 353(0) ; Skip ELSE block
337 : LD 1, 1(5) ; Load parameter 'n' into R1
338 : ST 1, 4(5) ; Spill left operand at depth 1
339 : LDC 1, 10(0) ; Load integer-literal into R1
340 : LD 2, 4(5) ; Restore left operand from depth 1
341 : DIV 1, 2, 1 ; R1 = left / right
342 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
343 : LDA 4, 6(5) ; Compute future callee base from caller size
344 : LD 2, 5(5) ; Load staged arg 0 from caller frame
345 : ST 2, 1(4) ; Store arg 0 into callee frame
346 : LDA 6, 350(0) ; Return address
347 : ST 6, 0(4) ; Store return in callee frame
348 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
349 : LDA 7, 265(0) ; Call isPrime
350 : LD 1, 2(5) ; Load callee result into R1
351 : LDC 2, 3(0) ; Callee frame size
352 : SUB 5, 5, 2 ; Pop callee frame
353 : LD 2, 3(5) ; Restore left operand from depth 0
354 : MUL 1, 2, 1 ; R1 = left AND right
355 : ST 1, 2(5) ; Store function result into frame return slot
356 : LD 6, 0(5) ; Load return address
357 : LDA 7, 0(6) ; Return to caller
358 : LD 1, 1(5) ; Load parameter 'n' into R1
359 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
360 : LDA 4, 5(5) ; Compute future callee base from caller size
361 : LD 2, 4(5) ; Load staged arg 0 from caller frame
362 : ST 2, 1(4) ; Store arg 0 into callee frame
363 : LDA 6, 367(0) ; Return address
364 : ST 6, 0(4) ; Store return in callee frame
365 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
366 : LDA 7, 265(0) ; Call isPrime
367 : LD 1, 2(5) ; Load callee result into R1
368 : LDC 2, 3(0) ; Callee frame size
369 : SUB 5, 5, 2 ; Pop callee frame
370 : ST 1, 3(5) ; Spill left operand at depth 0
371 : LD 1, 1(5) ; Load parameter 'n' into R1
372 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
373 : LDA 4, 5(5) ; Compute future callee base from caller size
374 : LD 2, 4(5) ; Load staged arg 0 from caller frame
375 : ST 2, 1(4) ; Store arg 0 into callee frame
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
379 : LDA 7, 165(0) ; Call reverse
380 : LD 1, 2(5) ; Load callee result into R1
381 : LDC 2, 3(0) ; Callee frame size
382 : SUB 5, 5, 2 ; Pop callee frame
383 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
384 : LDA 4, 5(5) ; Compute future callee base from caller size
385 : LD 2, 4(5) ; Load staged arg 0 from caller frame
386 : ST 2, 1(4) ; Store arg 0 into callee frame
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return in callee frame
389 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
390 : LDA 7, 265(0) ; Call isPrime
391 : LD 1, 2(5) ; Load callee result into R1
392 : LDC 2, 3(0) ; Callee frame size
393 : SUB 5, 5, 2 ; Pop callee frame
394 : LD 2, 3(5) ; Restore left operand from depth 0
395 : MUL 1, 2, 1 ; R1 = left AND right
396 : ST 1, 2(5) ; Store function result into frame return slot
397 : LD 6, 0(5) ; Load return address
398 : LDA 7, 0(6) ; Return to caller
