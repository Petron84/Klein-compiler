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
23 : JEQ 1, 39(0) ; If condition is false, jump to ELSE
24 : LD 1, 1(5) ; Load parameter 'n' into R1
25 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
26 : LDA 4, 4(5) ; Callee base for arg copy
27 : LD 1, 4(5) ; Load staged arg 0 from caller temp
28 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
29 : LDA 4, 4(5) ; Callee base for call
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
33 : LDA 7, 387(0) ; Call emirp
34 : LD 1, 2(5) ; Load callee result into R1
35 : LDC 2, 4(0) ; Callee frame size
36 : SUB 5, 5, 2 ; Pop callee frame
37 : ST 1, 3(5) ; Store result into caller’s frame
38 : LDA 7, 91(0) ; Skip ELSE block
39 : LD 1, 2(5) ; Load parameter 'selector' into R1
40 : ST 1, 4(5) ; Spill left operand at depth 0
41 : LDC 1, 5(0) ; Load integer-literal into R1
42 : LD 2, 4(5) ; Restore left operand from depth 0
43 : SUB 1, 2, 1 ; left - right for equality check
44 : JEQ 1, 2(7) ; If R1 == 0, jump to true
45 : LDC 1, 0(0) ; false
46 : LDA 7, 1(7) ; skip setting true
47 : LDC 1, 1(0) ; true
48 : JEQ 1, 64(0) ; If condition is false, jump to ELSE
49 : LD 1, 1(5) ; Load parameter 'n' into R1
50 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
51 : LDA 4, 5(5) ; Callee base for arg copy
52 : LD 1, 4(5) ; Load staged arg 0 from caller temp
53 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
54 : LDA 4, 5(5) ; Callee base for call
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
58 : LDA 7, 339(0) ; Call snowball
59 : LD 1, 2(5) ; Load callee result into R1
60 : LDC 2, 5(0) ; Callee frame size
61 : SUB 5, 5, 2 ; Pop callee frame
62 : ST 1, 3(5) ; Store result into caller’s frame
63 : LDA 7, 91(0) ; Skip ELSE block
64 : LD 1, 2(5) ; Load parameter 'selector' into R1
65 : ST 1, 4(5) ; Spill left operand at depth 0
66 : LDC 1, 8(0) ; Load integer-literal into R1
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : SUB 1, 2, 1 ; left - right for equality check
69 : JEQ 1, 2(7) ; If R1 == 0, jump to true
70 : LDC 1, 0(0) ; false
71 : LDA 7, 1(7) ; skip setting true
72 : LDC 1, 1(0) ; true
73 : JEQ 1, 89(0) ; If condition is false, jump to ELSE
74 : LD 1, 1(5) ; Load parameter 'n' into R1
75 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
76 : LDA 4, 3(5) ; Callee base for arg copy
77 : LD 1, 4(5) ; Load staged arg 0 from caller temp
78 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
79 : LDA 4, 3(5) ; Callee base for call
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 303(0) ; Call doBoth
84 : LD 1, 2(5) ; Load callee result into R1
85 : LDC 2, 3(0) ; Callee frame size
86 : SUB 5, 5, 2 ; Pop callee frame
87 : ST 1, 3(5) ; Store result into caller’s frame
88 : LDA 7, 91(0) ; Skip ELSE block
89 : LDC 1, 0(0) ; Load boolean-literal into R1
90 : ST 1, 3(5) ; Store result into current frame's return slot
91 : LD 1, 3(5) ; Load main return value into R1
92 : LD 6, 0(5) ; Load main return address
93 : LDA 7, 0(6) ; Return from main
94 : LD 1, 1(5) ; Load parameter 'm' into R1
95 : ST 1, 4(5) ; Spill left operand at depth 0
96 : LD 1, 1(5) ; Load parameter 'm' into R1
97 : ST 1, 5(5) ; Spill left operand at depth 1
98 : LD 1, 2(5) ; Load parameter 'n' into R1
99 : LD 2, 5(5) ; Restore left operand from depth 1
100 : DIV 1, 2, 1 ; R1 = left / right
101 : ST 1, 5(5) ; Spill left operand at depth 1
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : LD 2, 5(5) ; Restore left operand from depth 1
104 : MUL 1, 2, 1 ; R1 = left * right
105 : LD 2, 4(5) ; Restore left operand from depth 0
106 : SUB 1, 2, 1 ; R1 = left - right
107 : ST 1, 3(5) ; Store function result into frame return slot
108 : LD 6, 0(5) ; Load return address
109 : LDA 7, 0(6) ; Return to caller
110 : LD 1, 1(5) ; Load parameter 'n' into R1
111 : ST 1, 4(5) ; Spill left operand at depth 0
112 : LDC 1, 0(0) ; Load integer-literal into R1
113 : LD 2, 4(5) ; Restore left operand from depth 0
114 : SUB 1, 2, 1 ; left - right for equality check
115 : JEQ 1, 2(7) ; If R1 == 0, jump to true
116 : LDC 1, 0(0) ; false
117 : LDA 7, 1(7) ; skip setting true
118 : LDC 1, 1(0) ; true
119 : JEQ 1, 122(0) ; If condition is false, jump to ELSE
120 : LD 1, 2(5) ; Load parameter 'nR' into R1
121 : LDA 7, 169(0) ; Skip ELSE block
122 : LD 1, 1(5) ; Load parameter 'n' into R1
123 : ST 1, 4(5) ; Spill left operand at depth 0
124 : LDC 1, 10(0) ; Load integer-literal into R1
125 : LD 2, 4(5) ; Restore left operand from depth 0
126 : DIV 1, 2, 1 ; R1 = left / right
127 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
128 : LDA 4, 5(5) ; Callee base for arg copy
129 : LD 1, 4(5) ; Load staged arg 0 from caller temp
130 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
131 : LDC 1, 10(0) ; Load integer-literal into R1
132 : ST 1, 4(5) ; Spill left operand at depth 0
133 : LD 1, 2(5) ; Load parameter 'nR' into R1
134 : LD 2, 4(5) ; Restore left operand from depth 0
135 : MUL 1, 2, 1 ; R1 = left * right
136 : ST 1, 4(5) ; Spill left operand at depth 0
137 : LD 1, 1(5) ; Load parameter 'n' into R1
138 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
139 : LDA 4, 6(5) ; Callee base for arg copy
140 : LD 1, 4(5) ; Load staged arg 0 from caller temp
141 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
142 : LDC 1, 10(0) ; Load integer-literal into R1
143 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
144 : LDA 4, 6(5) ; Callee base for arg copy
145 : LD 1, 4(5) ; Load staged arg 1 from caller temp
146 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
147 : LDA 4, 6(5) ; Callee base for call
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
151 : LDA 7, 94(0) ; Call MOD
152 : LD 1, 3(5) ; Load callee result into R1
153 : LDC 2, 6(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop callee frame
155 : LD 2, 4(5) ; Restore left operand from depth 0
156 : ADD 1, 2, 1 ; R1 = left + right
157 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
158 : LDA 4, 5(5) ; Callee base for arg copy
159 : LD 1, 4(5) ; Load staged arg 1 from caller temp
160 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
161 : LDA 4, 5(5) ; Callee base for call
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return in callee frame
164 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
165 : LDA 7, 110(0) ; Call reverseL
166 : LD 1, 3(5) ; Load callee result into R1
167 : LDC 2, 5(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop callee frame
169 : ST 1, 3(5) ; Store function result into frame return slot
170 : LD 6, 0(5) ; Load return address
171 : LDA 7, 0(6) ; Return to caller
172 : LD 1, 1(5) ; Load parameter 'n' into R1
173 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
174 : LDA 4, 5(5) ; Callee base for arg copy
175 : LD 1, 3(5) ; Load staged arg 0 from caller temp
176 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
177 : LDC 1, 0(0) ; Load integer-literal into R1
178 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
179 : LDA 4, 5(5) ; Callee base for arg copy
180 : LD 1, 3(5) ; Load staged arg 1 from caller temp
181 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
182 : LDA 4, 5(5) ; Callee base for call
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return in callee frame
185 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
186 : LDA 7, 110(0) ; Call reverseL
187 : LD 1, 3(5) ; Load callee result into R1
188 : LDC 2, 5(0) ; Callee frame size
189 : SUB 5, 5, 2 ; Pop callee frame
190 : ST 1, 2(5) ; Store function result into frame return slot
191 : LD 6, 0(5) ; Load return address
192 : LDA 7, 0(6) ; Return to caller
193 : LD 1, 2(5) ; Load parameter 'b' into R1
194 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
195 : LDA 4, 6(5) ; Callee base for arg copy
196 : LD 1, 4(5) ; Load staged arg 0 from caller temp
197 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
198 : LD 1, 1(5) ; Load parameter 'a' into R1
199 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
200 : LDA 4, 6(5) ; Callee base for arg copy
201 : LD 1, 4(5) ; Load staged arg 1 from caller temp
202 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
203 : LDA 4, 6(5) ; Callee base for call
204 : LDA 6, 208(0) ; Return address
205 : ST 6, 0(4) ; Store return in callee frame
206 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
207 : LDA 7, 94(0) ; Call MOD
208 : LD 1, 3(5) ; Load callee result into R1
209 : LDC 2, 6(0) ; Callee frame size
210 : SUB 5, 5, 2 ; Pop callee frame
211 : ST 1, 4(5) ; Spill left operand at depth 0
212 : LDC 1, 0(0) ; Load integer-literal into R1
213 : LD 2, 4(5) ; Restore left operand from depth 0
214 : SUB 1, 2, 1 ; left - right for equality check
215 : JEQ 1, 2(7) ; If R1 == 0, jump to true
216 : LDC 1, 0(0) ; false
217 : LDA 7, 1(7) ; skip setting true
218 : LDC 1, 1(0) ; true
219 : ST 1, 3(5) ; Store function result into frame return slot
220 : LD 6, 0(5) ; Load return address
221 : LDA 7, 0(6) ; Return to caller
222 : LD 1, 1(5) ; Load parameter 'i' into R1
223 : ST 1, 4(5) ; Spill left operand at depth 0
224 : LD 1, 2(5) ; Load parameter 'n' into R1
225 : LD 2, 4(5) ; Restore left operand from depth 0
226 : SUB 1, 2, 1 ; left - right for less-than check
227 : JLT 1, 2(7) ; If R1 < 0, jump to true
228 : LDC 1, 0(0) ; false
229 : LDA 7, 1(7) ; skip setting true
230 : LDC 1, 1(0) ; true
231 : JEQ 1, 276(0) ; If condition is false, jump to ELSE
232 : LD 1, 1(5) ; Load parameter 'i' into R1
233 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
234 : LDA 4, 5(5) ; Callee base for arg copy
235 : LD 1, 4(5) ; Load staged arg 0 from caller temp
236 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
237 : LD 1, 2(5) ; Load parameter 'n' into R1
238 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
239 : LDA 4, 5(5) ; Callee base for arg copy
240 : LD 1, 4(5) ; Load staged arg 1 from caller temp
241 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
242 : LDA 4, 5(5) ; Callee base for call
243 : LDA 6, 247(0) ; Return address
244 : ST 6, 0(4) ; Store return in callee frame
245 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
246 : LDA 7, 193(0) ; Call divides
247 : LD 1, 3(5) ; Load callee result into R1
248 : LDC 2, 5(0) ; Callee frame size
249 : SUB 5, 5, 2 ; Pop callee frame
250 : ST 1, 4(5) ; Spill left operand at depth 0
251 : LD 1, 1(5) ; Load parameter 'i' into R1
252 : ST 1, 5(5) ; Spill left operand at depth 1
253 : LDC 1, 1(0) ; Load integer-literal into R1
254 : LD 2, 5(5) ; Restore left operand from depth 1
255 : ADD 1, 2, 1 ; R1 = left + right
256 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
257 : LDA 4, 6(5) ; Callee base for arg copy
258 : LD 1, 4(5) ; Load staged arg 0 from caller temp
259 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
260 : LD 1, 2(5) ; Load parameter 'n' into R1
261 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
262 : LDA 4, 6(5) ; Callee base for arg copy
263 : LD 1, 4(5) ; Load staged arg 1 from caller temp
264 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
265 : LDA 4, 6(5) ; Callee base for call
266 : LDA 6, 270(0) ; Return address
267 : ST 6, 0(4) ; Store return in callee frame
268 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
269 : LDA 7, 222(0) ; Call hasDivisorFrom
270 : LD 1, 3(5) ; Load callee result into R1
271 : LDC 2, 6(0) ; Callee frame size
272 : SUB 5, 5, 2 ; Pop callee frame
273 : LD 2, 4(5) ; Restore left operand from depth 0
274 : ADD 1, 2, 1 ; R1 = left OR right
275 : LDA 7, 277(0) ; Skip ELSE block
276 : LDC 1, 0(0) ; Load boolean-literal into R1
277 : ST 1, 3(5) ; Store function result into frame return slot
278 : LD 6, 0(5) ; Load return address
279 : LDA 7, 0(6) ; Return to caller
280 : LDC 1, 2(0) ; Load integer-literal into R1
281 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
282 : LDA 4, 6(5) ; Callee base for arg copy
283 : LD 1, 3(5) ; Load staged arg 0 from caller temp
284 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
285 : LD 1, 1(5) ; Load parameter 'n' into R1
286 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
287 : LDA 4, 6(5) ; Callee base for arg copy
288 : LD 1, 3(5) ; Load staged arg 1 from caller temp
289 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
290 : LDA 4, 6(5) ; Callee base for call
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
294 : LDA 7, 222(0) ; Call hasDivisorFrom
295 : LD 1, 3(5) ; Load callee result into R1
296 : LDC 2, 6(0) ; Callee frame size
297 : SUB 5, 5, 2 ; Pop callee frame
298 : LDC 2, 1(0) ; Load 1 into R2
299 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
300 : ST 1, 2(5) ; Store function result into frame return slot
301 : LD 6, 0(5) ; Load return address
302 : LDA 7, 0(6) ; Return to caller
303 : LD 1, 1(5) ; Load parameter 'n' into R1
304 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
305 : LDA 4, 4(5) ; Callee base for arg copy
306 : LD 1, 3(5) ; Load staged arg 0 from caller temp
307 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
308 : LDA 4, 4(5) ; Callee base for call
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
312 : LDA 7, 387(0) ; Call emirp
313 : LD 1, 2(5) ; Load callee result into R1
314 : LDC 2, 4(0) ; Callee frame size
315 : SUB 5, 5, 2 ; Pop callee frame
316 : LDA 4, 3(5) ; Callee base for built-in print
317 : LDA 6, 321(0) ; Return address
318 : ST 6, 0(4) ; Store return address in callee frame
319 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
320 : LDA 7, 11(0) ; Call built-in print
321 : LDC 2, 3(0) ; Callee frame size (print)
322 : SUB 5, 5, 2 ; Pop back to caller
323 : LD 1, 1(5) ; Load parameter 'n' into R1
324 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
325 : LDA 4, 5(5) ; Callee base for arg copy
326 : LD 1, 3(5) ; Load staged arg 0 from caller temp
327 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
328 : LDA 4, 5(5) ; Callee base for call
329 : LDA 6, 333(0) ; Return address
330 : ST 6, 0(4) ; Store return in callee frame
331 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
332 : LDA 7, 339(0) ; Call snowball
333 : LD 1, 2(5) ; Load callee result into R1
334 : LDC 2, 5(0) ; Callee frame size
335 : SUB 5, 5, 2 ; Pop callee frame
336 : ST 1, 2(5) ; Store function result into frame return slot
337 : LD 6, 0(5) ; Load return address
338 : LDA 7, 0(6) ; Return to caller
339 : LD 1, 1(5) ; Load parameter 'n' into R1
340 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
341 : LDA 4, 3(5) ; Callee base for arg copy
342 : LD 1, 3(5) ; Load staged arg 0 from caller temp
343 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
344 : LDA 4, 3(5) ; Callee base for call
345 : LDA 6, 349(0) ; Return address
346 : ST 6, 0(4) ; Store return in callee frame
347 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
348 : LDA 7, 280(0) ; Call isPrime
349 : LD 1, 2(5) ; Load callee result into R1
350 : LDC 2, 3(0) ; Callee frame size
351 : SUB 5, 5, 2 ; Pop callee frame
352 : ST 1, 3(5) ; Spill left operand at depth 0
353 : LD 1, 1(5) ; Load parameter 'n' into R1
354 : ST 1, 4(5) ; Spill left operand at depth 1
355 : LDC 1, 10(0) ; Load integer-literal into R1
356 : LD 2, 4(5) ; Restore left operand from depth 1
357 : SUB 1, 2, 1 ; left - right for less-than check
358 : JLT 1, 2(7) ; If R1 < 0, jump to true
359 : LDC 1, 0(0) ; false
360 : LDA 7, 1(7) ; skip setting true
361 : LDC 1, 1(0) ; true
362 : JEQ 1, 365(0) ; If condition is false, jump to ELSE
363 : LDC 1, 1(0) ; Load boolean-literal into R1
364 : LDA 7, 382(0) ; Skip ELSE block
365 : LD 1, 1(5) ; Load parameter 'n' into R1
366 : ST 1, 4(5) ; Spill left operand at depth 1
367 : LDC 1, 10(0) ; Load integer-literal into R1
368 : LD 2, 4(5) ; Restore left operand from depth 1
369 : DIV 1, 2, 1 ; R1 = left / right
370 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
371 : LDA 4, 3(5) ; Callee base for arg copy
372 : LD 1, 3(5) ; Load staged arg 0 from caller temp
373 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
374 : LDA 4, 3(5) ; Callee base for call
375 : LDA 6, 379(0) ; Return address
376 : ST 6, 0(4) ; Store return in callee frame
377 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
378 : LDA 7, 280(0) ; Call isPrime
379 : LD 1, 2(5) ; Load callee result into R1
380 : LDC 2, 3(0) ; Callee frame size
381 : SUB 5, 5, 2 ; Pop callee frame
382 : LD 2, 3(5) ; Restore left operand from depth 0
383 : MUL 1, 2, 1 ; R1 = left AND right
384 : ST 1, 2(5) ; Store function result into frame return slot
385 : LD 6, 0(5) ; Load return address
386 : LDA 7, 0(6) ; Return to caller
387 : LD 1, 1(5) ; Load parameter 'n' into R1
388 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
389 : LDA 4, 3(5) ; Callee base for arg copy
390 : LD 1, 3(5) ; Load staged arg 0 from caller temp
391 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
392 : LDA 4, 3(5) ; Callee base for call
393 : LDA 6, 397(0) ; Return address
394 : ST 6, 0(4) ; Store return in callee frame
395 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
396 : LDA 7, 280(0) ; Call isPrime
397 : LD 1, 2(5) ; Load callee result into R1
398 : LDC 2, 3(0) ; Callee frame size
399 : SUB 5, 5, 2 ; Pop callee frame
400 : ST 1, 3(5) ; Spill left operand at depth 0
401 : LD 1, 1(5) ; Load parameter 'n' into R1
402 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
403 : LDA 4, 3(5) ; Callee base for arg copy
404 : LD 1, 3(5) ; Load staged arg 0 from caller temp
405 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
406 : LDA 4, 3(5) ; Callee base for call
407 : LDA 6, 411(0) ; Return address
408 : ST 6, 0(4) ; Store return in callee frame
409 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
410 : LDA 7, 172(0) ; Call reverse
411 : LD 1, 2(5) ; Load callee result into R1
412 : LDC 2, 3(0) ; Callee frame size
413 : SUB 5, 5, 2 ; Pop callee frame
414 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
415 : LDA 4, 3(5) ; Callee base for arg copy
416 : LD 1, 3(5) ; Load staged arg 0 from caller temp
417 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
418 : LDA 4, 3(5) ; Callee base for call
419 : LDA 6, 423(0) ; Return address
420 : ST 6, 0(4) ; Store return in callee frame
421 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
422 : LDA 7, 280(0) ; Call isPrime
423 : LD 1, 2(5) ; Load callee result into R1
424 : LDC 2, 3(0) ; Callee frame size
425 : SUB 5, 5, 2 ; Pop callee frame
426 : LD 2, 3(5) ; Restore left operand from depth 0
427 : MUL 1, 2, 1 ; R1 = left AND right
428 : ST 1, 2(5) ; Store function result into frame return slot
429 : LD 6, 0(5) ; Load return address
430 : LDA 7, 0(6) ; Return to caller
