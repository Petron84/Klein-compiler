0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
23 : JEQ 1, 37(0) ; If condition is false, jump to ELSE
24 : LD 1, 1(5) ; Load parameter 'n' into R1
25 : LDA 4, 5(5) ; Compute future callee base using caller_size
26 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
27 : LDA 4, 5(5) ; Compute future callee base (caller_size)
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 341(0) ; Call emirp
32 : LD 1, 2(5) ; Load callee result into R1
33 : LDC 2, 4(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LDA 7, 85(0) ; Skip ELSE block
37 : LD 1, 2(5) ; Load parameter 'selector' into R1
38 : ST 1, 4(5) ; Spill left operand at depth 0
39 : LDC 1, 5(0) ; Load integer-literal into R1
40 : LD 2, 4(5) ; Restore left operand from depth 0
41 : SUB 1, 2, 1 ; left - right for equality check
42 : JEQ 1, 2(7) ; If R1 == 0, jump to true
43 : LDC 1, 0(0) ; false
44 : LDA 7, 1(7) ; skip setting true
45 : LDC 1, 1(0) ; true
46 : JEQ 1, 60(0) ; If condition is false, jump to ELSE
47 : LD 1, 1(5) ; Load parameter 'n' into R1
48 : LDA 4, 5(5) ; Compute future callee base using caller_size
49 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
50 : LDA 4, 5(5) ; Compute future callee base (caller_size)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
54 : LDA 7, 297(0) ; Call snowball
55 : LD 1, 2(5) ; Load callee result into R1
56 : LDC 2, 5(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop callee frame
58 : ST 1, 3(5) ; Store result into caller’s frame
59 : LDA 7, 85(0) ; Skip ELSE block
60 : LD 1, 2(5) ; Load parameter 'selector' into R1
61 : ST 1, 4(5) ; Spill left operand at depth 0
62 : LDC 1, 8(0) ; Load integer-literal into R1
63 : LD 2, 4(5) ; Restore left operand from depth 0
64 : SUB 1, 2, 1 ; left - right for equality check
65 : JEQ 1, 2(7) ; If R1 == 0, jump to true
66 : LDC 1, 0(0) ; false
67 : LDA 7, 1(7) ; skip setting true
68 : LDC 1, 1(0) ; true
69 : JEQ 1, 83(0) ; If condition is false, jump to ELSE
70 : LD 1, 1(5) ; Load parameter 'n' into R1
71 : LDA 4, 5(5) ; Compute future callee base using caller_size
72 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
73 : LDA 4, 5(5) ; Compute future callee base (caller_size)
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
77 : LDA 7, 265(0) ; Call doBoth
78 : LD 1, 2(5) ; Load callee result into R1
79 : LDC 2, 3(0) ; Callee frame size
80 : SUB 5, 5, 2 ; Pop callee frame
81 : ST 1, 3(5) ; Store result into caller’s frame
82 : LDA 7, 85(0) ; Skip ELSE block
83 : LDC 1, 0(0) ; Load boolean-literal into R1
84 : ST 1, 3(5) ; Store result into current frame's return slot
85 : LD 1, 3(5) ; Load main return value into R1
86 : LD 6, 0(5) ; Load main return address
87 : LDA 7, 0(6) ; Return from main
88 : LD 1, 1(5) ; Load parameter 'm' into R1
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LD 1, 1(5) ; Load parameter 'm' into R1
91 : ST 1, 5(5) ; Spill left operand at depth 1
92 : LD 1, 2(5) ; Load parameter 'n' into R1
93 : LD 2, 5(5) ; Restore left operand from depth 1
94 : DIV 1, 2, 1 ; R1 = left / right
95 : ST 1, 5(5) ; Spill left operand at depth 1
96 : LD 1, 2(5) ; Load parameter 'n' into R1
97 : LD 2, 5(5) ; Restore left operand from depth 1
98 : MUL 1, 2, 1 ; R1 = left * right
99 : LD 2, 4(5) ; Restore left operand from depth 0
100 : SUB 1, 2, 1 ; R1 = left - right
101 : ST 1, 3(5) ; Store function result into frame return slot
102 : LD 6, 0(5) ; Load return address
103 : LDA 7, 0(6) ; Return to caller
104 : LD 1, 1(5) ; Load parameter 'n' into R1
105 : ST 1, 4(5) ; Spill left operand at depth 0
106 : LDC 1, 0(0) ; Load integer-literal into R1
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : SUB 1, 2, 1 ; left - right for equality check
109 : JEQ 1, 2(7) ; If R1 == 0, jump to true
110 : LDC 1, 0(0) ; false
111 : LDA 7, 1(7) ; skip setting true
112 : LDC 1, 1(0) ; true
113 : JEQ 1, 116(0) ; If condition is false, jump to ELSE
114 : LD 1, 2(5) ; Load parameter 'nR' into R1
115 : LDA 7, 155(0) ; Skip ELSE block
116 : LD 1, 1(5) ; Load parameter 'n' into R1
117 : ST 1, 4(5) ; Spill left operand at depth 0
118 : LDC 1, 10(0) ; Load integer-literal into R1
119 : LD 2, 4(5) ; Restore left operand from depth 0
120 : DIV 1, 2, 1 ; R1 = left / right
121 : LDA 4, 5(5) ; Compute future callee base using caller_size
122 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
123 : LDC 1, 10(0) ; Load integer-literal into R1
124 : ST 1, 4(5) ; Spill left operand at depth 0
125 : LD 1, 2(5) ; Load parameter 'nR' into R1
126 : LD 2, 4(5) ; Restore left operand from depth 0
127 : MUL 1, 2, 1 ; R1 = left * right
128 : ST 1, 4(5) ; Spill left operand at depth 0
129 : LD 1, 2(5) ; Load parameter 'n' into R1
130 : LDA 4, 5(5) ; Compute future callee base using caller_size
131 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
132 : LDC 1, 10(0) ; Load integer-literal into R1
133 : LDA 4, 5(5) ; Compute future callee base using caller_size
134 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
135 : LDA 4, 5(5) ; Compute future callee base (caller_size)
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return in callee frame
138 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
139 : LDA 7, 88(0) ; Call MOD
140 : LD 1, 3(5) ; Load callee result into R1
141 : LDC 2, 6(0) ; Callee frame size
142 : SUB 5, 5, 2 ; Pop callee frame
143 : LD 2, 4(5) ; Restore left operand from depth 0
144 : ADD 1, 2, 1 ; R1 = left + right
145 : LDA 4, 5(5) ; Compute future callee base using caller_size
146 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
147 : LDA 4, 5(5) ; Compute future callee base (caller_size)
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
151 : LDA 7, 104(0) ; Call reverseL
152 : LD 1, 3(5) ; Load callee result into R1
153 : LDC 2, 5(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop callee frame
155 : ST 1, 3(5) ; Store function result into frame return slot
156 : LD 6, 0(5) ; Load return address
157 : LDA 7, 0(6) ; Return to caller
158 : LD 1, 1(5) ; Load parameter 'n' into R1
159 : LDA 4, 3(5) ; Compute future callee base using caller_size
160 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
161 : LDC 1, 0(0) ; Load integer-literal into R1
162 : LDA 4, 3(5) ; Compute future callee base using caller_size
163 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
164 : LDA 4, 3(5) ; Compute future callee base (caller_size)
165 : LDA 6, 169(0) ; Return address
166 : ST 6, 0(4) ; Store return in callee frame
167 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
168 : LDA 7, 104(0) ; Call reverseL
169 : LD 1, 3(5) ; Load callee result into R1
170 : LDC 2, 5(0) ; Callee frame size
171 : SUB 5, 5, 2 ; Pop callee frame
172 : ST 1, 2(5) ; Store function result into frame return slot
173 : LD 6, 0(5) ; Load return address
174 : LDA 7, 0(6) ; Return to caller
175 : LDA 4, 5(5) ; Compute future callee base using caller_size
176 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
177 : LDA 4, 5(5) ; Compute future callee base using caller_size
178 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
179 : LDA 4, 5(5) ; Compute future callee base (caller_size)
180 : LDA 6, 184(0) ; Return address
181 : ST 6, 0(4) ; Store return in callee frame
182 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
183 : LDA 7, 88(0) ; Call MOD
184 : LD 1, 3(5) ; Load callee result into R1
185 : LDC 2, 6(0) ; Callee frame size
186 : SUB 5, 5, 2 ; Pop callee frame
187 : ST 1, 4(5) ; Spill left operand at depth 0
188 : LDC 1, 0(0) ; Load integer-literal into R1
189 : LD 2, 4(5) ; Restore left operand from depth 0
190 : SUB 1, 2, 1 ; left - right for equality check
191 : JEQ 1, 2(7) ; If R1 == 0, jump to true
192 : LDC 1, 0(0) ; false
193 : LDA 7, 1(7) ; skip setting true
194 : LDC 1, 1(0) ; true
195 : ST 1, 3(5) ; Store function result into frame return slot
196 : LD 6, 0(5) ; Load return address
197 : LDA 7, 0(6) ; Return to caller
198 : LD 1, 1(5) ; Load parameter 'i' into R1
199 : ST 1, 4(5) ; Spill left operand at depth 0
200 : LD 1, 2(5) ; Load parameter 'n' into R1
201 : LD 2, 4(5) ; Restore left operand from depth 0
202 : SUB 1, 2, 1 ; left - right for less-than check
203 : JLT 1, 2(7) ; If R1 < 0, jump to true
204 : LDC 1, 0(0) ; false
205 : LDA 7, 1(7) ; skip setting true
206 : LDC 1, 1(0) ; true
207 : JEQ 1, 242(0) ; If condition is false, jump to ELSE
208 : LDA 4, 6(5) ; Compute future callee base using caller_size
209 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
210 : LDA 4, 6(5) ; Compute future callee base using caller_size
211 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
212 : LDA 4, 6(5) ; Compute future callee base (caller_size)
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(4) ; Store return in callee frame
215 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
216 : LDA 7, 175(0) ; Call divides
217 : LD 1, 3(5) ; Load callee result into R1
218 : LDC 2, 5(0) ; Callee frame size
219 : SUB 5, 5, 2 ; Pop callee frame
220 : ST 1, 4(5) ; Spill left operand at depth 0
221 : LD 1, 1(5) ; Load parameter 'i' into R1
222 : ST 1, 5(5) ; Spill left operand at depth 1
223 : LDC 1, 1(0) ; Load integer-literal into R1
224 : LD 2, 5(5) ; Restore left operand from depth 1
225 : ADD 1, 2, 1 ; R1 = left + right
226 : LDA 4, 6(5) ; Compute future callee base using caller_size
227 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
228 : LD 1, 2(5) ; Load parameter 'n' into R1
229 : LDA 4, 6(5) ; Compute future callee base using caller_size
230 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
231 : LDA 4, 6(5) ; Compute future callee base (caller_size)
232 : LDA 6, 236(0) ; Return address
233 : ST 6, 0(4) ; Store return in callee frame
234 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
235 : LDA 7, 198(0) ; Call hasDivisorFrom
236 : LD 1, 3(5) ; Load callee result into R1
237 : LDC 2, 6(0) ; Callee frame size
238 : SUB 5, 5, 2 ; Pop callee frame
239 : LD 2, 4(5) ; Restore left operand from depth 0
240 : ADD 1, 2, 1 ; R1 = left OR right
241 : LDA 7, 243(0) ; Skip ELSE block
242 : LDC 1, 0(0) ; Load boolean-literal into R1
243 : ST 1, 3(5) ; Store function result into frame return slot
244 : LD 6, 0(5) ; Load return address
245 : LDA 7, 0(6) ; Return to caller
246 : LDC 1, 2(0) ; Load integer-literal into R1
247 : LDA 4, 3(5) ; Compute future callee base using caller_size
248 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
249 : LD 1, 2(5) ; Load parameter 'n' into R1
250 : LDA 4, 3(5) ; Compute future callee base using caller_size
251 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
252 : LDA 4, 3(5) ; Compute future callee base (caller_size)
253 : LDA 6, 257(0) ; Return address
254 : ST 6, 0(4) ; Store return in callee frame
255 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
256 : LDA 7, 198(0) ; Call hasDivisorFrom
257 : LD 1, 3(5) ; Load callee result into R1
258 : LDC 2, 6(0) ; Callee frame size
259 : SUB 5, 5, 2 ; Pop callee frame
260 : LDC 2, 1(0) ; Load 1 into R2
261 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
262 : ST 1, 2(5) ; Store function result into frame return slot
263 : LD 6, 0(5) ; Load return address
264 : LDA 7, 0(6) ; Return to caller
265 : LD 1, 1(5) ; Load parameter 'n' into R1
266 : LDA 4, 3(5) ; Compute future callee base using caller_size
267 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
268 : LDA 4, 3(5) ; Compute future callee base (caller_size)
269 : LDA 6, 273(0) ; Return address
270 : ST 6, 0(4) ; Store return in callee frame
271 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
272 : LDA 7, 341(0) ; Call emirp
273 : LD 1, 2(5) ; Load callee result into R1
274 : LDC 2, 4(0) ; Callee frame size
275 : SUB 5, 5, 2 ; Pop callee frame
276 : LDA 4, 3(5) ; Compute future callee base (caller_size)
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return address in callee frame
279 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
280 : LDA 7, 11(0) ; Call built-in print
281 : LDC 2, 3(0) ; Caller frame size
282 : SUB 5, 5, 2 ; Pop back to caller
283 : LD 1, 1(5) ; Load parameter 'n' into R1
284 : LDA 4, 3(5) ; Compute future callee base using caller_size
285 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
286 : LDA 4, 3(5) ; Compute future callee base (caller_size)
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return in callee frame
289 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
290 : LDA 7, 297(0) ; Call snowball
291 : LD 1, 2(5) ; Load callee result into R1
292 : LDC 2, 5(0) ; Callee frame size
293 : SUB 5, 5, 2 ; Pop callee frame
294 : ST 1, 2(5) ; Store function result into frame return slot
295 : LD 6, 0(5) ; Load return address
296 : LDA 7, 0(6) ; Return to caller
297 : LD 1, 1(5) ; Load parameter 'n' into R1
298 : LDA 4, 5(5) ; Compute future callee base using caller_size
299 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
300 : LDA 4, 5(5) ; Compute future callee base (caller_size)
301 : LDA 6, 305(0) ; Return address
302 : ST 6, 0(4) ; Store return in callee frame
303 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
304 : LDA 7, 246(0) ; Call isPrime
305 : LD 1, 2(5) ; Load callee result into R1
306 : LDC 2, 3(0) ; Callee frame size
307 : SUB 5, 5, 2 ; Pop callee frame
308 : ST 1, 3(5) ; Spill left operand at depth 0
309 : LD 1, 1(5) ; Load parameter 'n' into R1
310 : ST 1, 4(5) ; Spill left operand at depth 1
311 : LDC 1, 10(0) ; Load integer-literal into R1
312 : LD 2, 4(5) ; Restore left operand from depth 1
313 : SUB 1, 2, 1 ; left - right for less-than check
314 : JLT 1, 2(7) ; If R1 < 0, jump to true
315 : LDC 1, 0(0) ; false
316 : LDA 7, 1(7) ; skip setting true
317 : LDC 1, 1(0) ; true
318 : JEQ 1, 321(0) ; If condition is false, jump to ELSE
319 : LDC 1, 1(0) ; Load boolean-literal into R1
320 : LDA 7, 336(0) ; Skip ELSE block
321 : LD 1, 1(5) ; Load parameter 'n' into R1
322 : ST 1, 4(5) ; Spill left operand at depth 1
323 : LDC 1, 10(0) ; Load integer-literal into R1
324 : LD 2, 4(5) ; Restore left operand from depth 1
325 : DIV 1, 2, 1 ; R1 = left / right
326 : LDA 4, 5(5) ; Compute future callee base using caller_size
327 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
328 : LDA 4, 5(5) ; Compute future callee base (caller_size)
329 : LDA 6, 333(0) ; Return address
330 : ST 6, 0(4) ; Store return in callee frame
331 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
332 : LDA 7, 246(0) ; Call isPrime
333 : LD 1, 2(5) ; Load callee result into R1
334 : LDC 2, 3(0) ; Callee frame size
335 : SUB 5, 5, 2 ; Pop callee frame
336 : LD 2, 3(5) ; Restore left operand from depth 0
337 : MUL 1, 2, 1 ; R1 = left AND right
338 : ST 1, 2(5) ; Store function result into frame return slot
339 : LD 6, 0(5) ; Load return address
340 : LDA 7, 0(6) ; Return to caller
341 : LD 1, 1(5) ; Load parameter 'n' into R1
342 : LDA 4, 4(5) ; Compute future callee base using caller_size
343 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
344 : LDA 4, 4(5) ; Compute future callee base (caller_size)
345 : LDA 6, 349(0) ; Return address
346 : ST 6, 0(4) ; Store return in callee frame
347 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
348 : LDA 7, 246(0) ; Call isPrime
349 : LD 1, 2(5) ; Load callee result into R1
350 : LDC 2, 3(0) ; Callee frame size
351 : SUB 5, 5, 2 ; Pop callee frame
352 : ST 1, 3(5) ; Spill left operand at depth 0
353 : LD 1, 1(5) ; Load parameter 'n' into R1
354 : LDA 4, 3(5) ; Compute future callee base using caller_size
355 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
356 : LDA 4, 3(5) ; Compute future callee base (caller_size)
357 : LDA 6, 361(0) ; Return address
358 : ST 6, 0(4) ; Store return in callee frame
359 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
360 : LDA 7, 158(0) ; Call reverse
361 : LD 1, 2(5) ; Load callee result into R1
362 : LDC 2, 3(0) ; Callee frame size
363 : SUB 5, 5, 2 ; Pop callee frame
364 : LDA 4, 4(5) ; Compute future callee base using caller_size
365 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
366 : LDA 4, 4(5) ; Compute future callee base (caller_size)
367 : LDA 6, 371(0) ; Return address
368 : ST 6, 0(4) ; Store return in callee frame
369 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
370 : LDA 7, 246(0) ; Call isPrime
371 : LD 1, 2(5) ; Load callee result into R1
372 : LDC 2, 3(0) ; Callee frame size
373 : SUB 5, 5, 2 ; Pop callee frame
374 : LD 2, 3(5) ; Restore left operand from depth 0
375 : MUL 1, 2, 1 ; R1 = left AND right
376 : ST 1, 2(5) ; Store function result into frame return slot
377 : LD 6, 0(5) ; Load return address
378 : LDA 7, 0(6) ; Return to caller
