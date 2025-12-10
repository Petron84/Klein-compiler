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
31 : LDA 7, 345(0) ; Call emirp
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
54 : LDA 7, 301(0) ; Call snowball
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
77 : LDA 7, 269(0) ; Call doBoth
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
129 : LD 1, 1(5) ; Load parameter 'n' into R1
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
175 : LD 1, 2(5) ; Load parameter 'b' into R1
176 : LDA 4, 5(5) ; Compute future callee base using caller_size
177 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
178 : LD 1, 1(5) ; Load parameter 'a' into R1
179 : LDA 4, 5(5) ; Compute future callee base using caller_size
180 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
181 : LDA 4, 5(5) ; Compute future callee base (caller_size)
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
185 : LDA 7, 88(0) ; Call MOD
186 : LD 1, 3(5) ; Load callee result into R1
187 : LDC 2, 6(0) ; Callee frame size
188 : SUB 5, 5, 2 ; Pop callee frame
189 : ST 1, 4(5) ; Spill left operand at depth 0
190 : LDC 1, 0(0) ; Load integer-literal into R1
191 : LD 2, 4(5) ; Restore left operand from depth 0
192 : SUB 1, 2, 1 ; left - right for equality check
193 : JEQ 1, 2(7) ; If R1 == 0, jump to true
194 : LDC 1, 0(0) ; false
195 : LDA 7, 1(7) ; skip setting true
196 : LDC 1, 1(0) ; true
197 : ST 1, 3(5) ; Store function result into frame return slot
198 : LD 6, 0(5) ; Load return address
199 : LDA 7, 0(6) ; Return to caller
200 : LD 1, 1(5) ; Load parameter 'i' into R1
201 : ST 1, 4(5) ; Spill left operand at depth 0
202 : LD 1, 2(5) ; Load parameter 'n' into R1
203 : LD 2, 4(5) ; Restore left operand from depth 0
204 : SUB 1, 2, 1 ; left - right for less-than check
205 : JLT 1, 2(7) ; If R1 < 0, jump to true
206 : LDC 1, 0(0) ; false
207 : LDA 7, 1(7) ; skip setting true
208 : LDC 1, 1(0) ; true
209 : JEQ 1, 246(0) ; If condition is false, jump to ELSE
210 : LD 1, 1(5) ; Load parameter 'i' into R1
211 : LDA 4, 6(5) ; Compute future callee base using caller_size
212 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
213 : LD 1, 2(5) ; Load parameter 'n' into R1
214 : LDA 4, 6(5) ; Compute future callee base using caller_size
215 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
216 : LDA 4, 6(5) ; Compute future callee base (caller_size)
217 : LDA 6, 221(0) ; Return address
218 : ST 6, 0(4) ; Store return in callee frame
219 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
220 : LDA 7, 175(0) ; Call divides
221 : LD 1, 3(5) ; Load callee result into R1
222 : LDC 2, 5(0) ; Callee frame size
223 : SUB 5, 5, 2 ; Pop callee frame
224 : ST 1, 4(5) ; Spill left operand at depth 0
225 : LD 1, 1(5) ; Load parameter 'i' into R1
226 : ST 1, 5(5) ; Spill left operand at depth 1
227 : LDC 1, 1(0) ; Load integer-literal into R1
228 : LD 2, 5(5) ; Restore left operand from depth 1
229 : ADD 1, 2, 1 ; R1 = left + right
230 : LDA 4, 6(5) ; Compute future callee base using caller_size
231 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
232 : LD 1, 2(5) ; Load parameter 'n' into R1
233 : LDA 4, 6(5) ; Compute future callee base using caller_size
234 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
235 : LDA 4, 6(5) ; Compute future callee base (caller_size)
236 : LDA 6, 240(0) ; Return address
237 : ST 6, 0(4) ; Store return in callee frame
238 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
239 : LDA 7, 200(0) ; Call hasDivisorFrom
240 : LD 1, 3(5) ; Load callee result into R1
241 : LDC 2, 6(0) ; Callee frame size
242 : SUB 5, 5, 2 ; Pop callee frame
243 : LD 2, 4(5) ; Restore left operand from depth 0
244 : ADD 1, 2, 1 ; R1 = left OR right
245 : LDA 7, 247(0) ; Skip ELSE block
246 : LDC 1, 0(0) ; Load boolean-literal into R1
247 : ST 1, 3(5) ; Store function result into frame return slot
248 : LD 6, 0(5) ; Load return address
249 : LDA 7, 0(6) ; Return to caller
250 : LDC 1, 2(0) ; Load integer-literal into R1
251 : LDA 4, 3(5) ; Compute future callee base using caller_size
252 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
253 : LD 1, 1(5) ; Load parameter 'n' into R1
254 : LDA 4, 3(5) ; Compute future callee base using caller_size
255 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
256 : LDA 4, 3(5) ; Compute future callee base (caller_size)
257 : LDA 6, 261(0) ; Return address
258 : ST 6, 0(4) ; Store return in callee frame
259 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
260 : LDA 7, 200(0) ; Call hasDivisorFrom
261 : LD 1, 3(5) ; Load callee result into R1
262 : LDC 2, 6(0) ; Callee frame size
263 : SUB 5, 5, 2 ; Pop callee frame
264 : LDC 2, 1(0) ; Load 1 into R2
265 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
266 : ST 1, 2(5) ; Store function result into frame return slot
267 : LD 6, 0(5) ; Load return address
268 : LDA 7, 0(6) ; Return to caller
269 : LD 1, 1(5) ; Load parameter 'n' into R1
270 : LDA 4, 3(5) ; Compute future callee base using caller_size
271 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
272 : LDA 4, 3(5) ; Compute future callee base (caller_size)
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return in callee frame
275 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
276 : LDA 7, 345(0) ; Call emirp
277 : LD 1, 2(5) ; Load callee result into R1
278 : LDC 2, 4(0) ; Callee frame size
279 : SUB 5, 5, 2 ; Pop callee frame
280 : LDA 4, 3(5) ; Compute future callee base (caller_size)
281 : LDA 6, 285(0) ; Return address
282 : ST 6, 0(4) ; Store return address in callee frame
283 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
284 : LDA 7, 11(0) ; Call built-in print
285 : LDC 2, 3(0) ; Caller frame size
286 : SUB 5, 5, 2 ; Pop back to caller
287 : LD 1, 1(5) ; Load parameter 'n' into R1
288 : LDA 4, 3(5) ; Compute future callee base using caller_size
289 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
290 : LDA 4, 3(5) ; Compute future callee base (caller_size)
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
294 : LDA 7, 301(0) ; Call snowball
295 : LD 1, 2(5) ; Load callee result into R1
296 : LDC 2, 5(0) ; Callee frame size
297 : SUB 5, 5, 2 ; Pop callee frame
298 : ST 1, 2(5) ; Store function result into frame return slot
299 : LD 6, 0(5) ; Load return address
300 : LDA 7, 0(6) ; Return to caller
301 : LD 1, 1(5) ; Load parameter 'n' into R1
302 : LDA 4, 5(5) ; Compute future callee base using caller_size
303 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
304 : LDA 4, 5(5) ; Compute future callee base (caller_size)
305 : LDA 6, 309(0) ; Return address
306 : ST 6, 0(4) ; Store return in callee frame
307 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
308 : LDA 7, 250(0) ; Call isPrime
309 : LD 1, 2(5) ; Load callee result into R1
310 : LDC 2, 3(0) ; Callee frame size
311 : SUB 5, 5, 2 ; Pop callee frame
312 : ST 1, 3(5) ; Spill left operand at depth 0
313 : LD 1, 1(5) ; Load parameter 'n' into R1
314 : ST 1, 4(5) ; Spill left operand at depth 1
315 : LDC 1, 10(0) ; Load integer-literal into R1
316 : LD 2, 4(5) ; Restore left operand from depth 1
317 : SUB 1, 2, 1 ; left - right for less-than check
318 : JLT 1, 2(7) ; If R1 < 0, jump to true
319 : LDC 1, 0(0) ; false
320 : LDA 7, 1(7) ; skip setting true
321 : LDC 1, 1(0) ; true
322 : JEQ 1, 325(0) ; If condition is false, jump to ELSE
323 : LDC 1, 1(0) ; Load boolean-literal into R1
324 : LDA 7, 340(0) ; Skip ELSE block
325 : LD 1, 1(5) ; Load parameter 'n' into R1
326 : ST 1, 4(5) ; Spill left operand at depth 1
327 : LDC 1, 10(0) ; Load integer-literal into R1
328 : LD 2, 4(5) ; Restore left operand from depth 1
329 : DIV 1, 2, 1 ; R1 = left / right
330 : LDA 4, 5(5) ; Compute future callee base using caller_size
331 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
332 : LDA 4, 5(5) ; Compute future callee base (caller_size)
333 : LDA 6, 337(0) ; Return address
334 : ST 6, 0(4) ; Store return in callee frame
335 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
336 : LDA 7, 250(0) ; Call isPrime
337 : LD 1, 2(5) ; Load callee result into R1
338 : LDC 2, 3(0) ; Callee frame size
339 : SUB 5, 5, 2 ; Pop callee frame
340 : LD 2, 3(5) ; Restore left operand from depth 0
341 : MUL 1, 2, 1 ; R1 = left AND right
342 : ST 1, 2(5) ; Store function result into frame return slot
343 : LD 6, 0(5) ; Load return address
344 : LDA 7, 0(6) ; Return to caller
345 : LD 1, 1(5) ; Load parameter 'n' into R1
346 : LDA 4, 4(5) ; Compute future callee base using caller_size
347 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
348 : LDA 4, 4(5) ; Compute future callee base (caller_size)
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
352 : LDA 7, 250(0) ; Call isPrime
353 : LD 1, 2(5) ; Load callee result into R1
354 : LDC 2, 3(0) ; Callee frame size
355 : SUB 5, 5, 2 ; Pop callee frame
356 : ST 1, 3(5) ; Spill left operand at depth 0
357 : LD 1, 1(5) ; Load parameter 'n' into R1
358 : LDA 4, 4(5) ; Compute future callee base using caller_size
359 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
360 : LDA 4, 4(5) ; Compute future callee base (caller_size)
361 : LDA 6, 365(0) ; Return address
362 : ST 6, 0(4) ; Store return in callee frame
363 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
364 : LDA 7, 158(0) ; Call reverse
365 : LD 1, 2(5) ; Load callee result into R1
366 : LDC 2, 3(0) ; Callee frame size
367 : SUB 5, 5, 2 ; Pop callee frame
368 : LDA 4, 4(5) ; Compute future callee base using caller_size
369 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
370 : LDA 4, 4(5) ; Compute future callee base (caller_size)
371 : LDA 6, 375(0) ; Return address
372 : ST 6, 0(4) ; Store return in callee frame
373 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
374 : LDA 7, 250(0) ; Call isPrime
375 : LD 1, 2(5) ; Load callee result into R1
376 : LDC 2, 3(0) ; Callee frame size
377 : SUB 5, 5, 2 ; Pop callee frame
378 : LD 2, 3(5) ; Restore left operand from depth 0
379 : MUL 1, 2, 1 ; R1 = left AND right
380 : ST 1, 2(5) ; Store function result into frame return slot
381 : LD 6, 0(5) ; Load return address
382 : LDA 7, 0(6) ; Return to caller
