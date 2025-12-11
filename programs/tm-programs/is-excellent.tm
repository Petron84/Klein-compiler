0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
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
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 3(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 4, 3(5) ; Callee base for call
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
21 : LDA 7, 29(0) ; Call isExcellent
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 3(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : ST 1, 2(5) ; Store result into caller’s frame
26 : LD 1, 2(5) ; Load main return value into R1
27 : LD 6, 0(5) ; Load main return address
28 : LDA 7, 0(6) ; Return from main
29 : LD 1, 1(5) ; Load parameter 'n' into R1
30 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
31 : LDA 4, 5(5) ; Callee base for arg copy
32 : LD 1, 3(5) ; Load staged arg 0 from caller temp
33 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
34 : LD 1, 1(5) ; Load parameter 'n' into R1
35 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
36 : LDA 4, 5(5) ; Callee base for arg copy
37 : LD 1, 3(5) ; Load staged arg 0 from caller temp
38 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
39 : LDA 4, 5(5) ; Callee base for call
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
43 : LDA 7, 242(0) ; Call length
44 : LD 1, 2(5) ; Load callee result into R1
45 : LDC 2, 5(0) ; Callee frame size
46 : SUB 5, 5, 2 ; Pop callee frame
47 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
48 : LDA 4, 5(5) ; Callee base for arg copy
49 : LD 1, 3(5) ; Load staged arg 1 from caller temp
50 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
51 : LDA 4, 5(5) ; Callee base for call
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
55 : LDA 7, 62(0) ; Call isExcellentSwitch
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 5(0) ; Callee frame size
58 : SUB 5, 5, 2 ; Pop callee frame
59 : ST 1, 2(5) ; Store function result into frame return slot
60 : LD 6, 0(5) ; Load return address
61 : LDA 7, 0(6) ; Return to caller
62 : LD 1, 2(5) ; Load parameter 'length' into R1
63 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
64 : LDA 4, 5(5) ; Callee base for arg copy
65 : LD 1, 4(5) ; Load staged arg 0 from caller temp
66 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
67 : LDA 4, 5(5) ; Callee base for call
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
71 : LDA 7, 278(0) ; Call ODD
72 : LD 1, 2(5) ; Load callee result into R1
73 : LDC 2, 5(0) ; Callee frame size
74 : SUB 5, 5, 2 ; Pop callee frame
75 : JEQ 1, 78(0) ; If condition is false, jump to ELSE
76 : LDC 1, 0(0) ; Load boolean-literal into R1
77 : LDA 7, 128(0) ; Skip ELSE block
78 : LD 1, 1(5) ; Load parameter 'n' into R1
79 : ST 1, 4(5) ; Spill left operand at depth 0
80 : LD 1, 1(5) ; Load parameter 'n' into R1
81 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
82 : LDA 4, 5(5) ; Callee base for arg copy
83 : LD 1, 4(5) ; Load staged arg 0 from caller temp
84 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
85 : LDA 4, 5(5) ; Callee base for call
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
89 : LDA 7, 201(0) ; Call a
90 : LD 1, 2(5) ; Load callee result into R1
91 : LDC 2, 5(0) ; Callee frame size
92 : SUB 5, 5, 2 ; Pop callee frame
93 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
94 : LDA 4, 6(5) ; Callee base for arg copy
95 : LD 1, 4(5) ; Load staged arg 0 from caller temp
96 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
97 : LD 1, 1(5) ; Load parameter 'n' into R1
98 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
99 : LDA 4, 4(5) ; Callee base for arg copy
100 : LD 1, 4(5) ; Load staged arg 0 from caller temp
101 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
102 : LDA 4, 4(5) ; Callee base for call
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return in callee frame
105 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
106 : LDA 7, 147(0) ; Call b
107 : LD 1, 2(5) ; Load callee result into R1
108 : LDC 2, 4(0) ; Callee frame size
109 : SUB 5, 5, 2 ; Pop callee frame
110 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
111 : LDA 4, 6(5) ; Callee base for arg copy
112 : LD 1, 4(5) ; Load staged arg 1 from caller temp
113 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
114 : LDA 4, 6(5) ; Callee base for call
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(4) ; Store return in callee frame
117 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
118 : LDA 7, 131(0) ; Call excellentDiff
119 : LD 1, 3(5) ; Load callee result into R1
120 : LDC 2, 6(0) ; Callee frame size
121 : SUB 5, 5, 2 ; Pop callee frame
122 : LD 2, 4(5) ; Restore left operand from depth 0
123 : SUB 1, 2, 1 ; left - right for equality check
124 : JEQ 1, 2(7) ; If R1 == 0, jump to true
125 : LDC 1, 0(0) ; false
126 : LDA 7, 1(7) ; skip setting true
127 : LDC 1, 1(0) ; true
128 : ST 1, 3(5) ; Store function result into frame return slot
129 : LD 6, 0(5) ; Load return address
130 : LDA 7, 0(6) ; Return to caller
131 : LD 1, 2(5) ; Load parameter 'b' into R1
132 : ST 1, 4(5) ; Spill left operand at depth 0
133 : LD 1, 2(5) ; Load parameter 'b' into R1
134 : LD 2, 4(5) ; Restore left operand from depth 0
135 : MUL 1, 2, 1 ; R1 = left * right
136 : ST 1, 4(5) ; Spill left operand at depth 0
137 : LD 1, 1(5) ; Load parameter 'a' into R1
138 : ST 1, 5(5) ; Spill left operand at depth 1
139 : LD 1, 1(5) ; Load parameter 'a' into R1
140 : LD 2, 5(5) ; Restore left operand from depth 1
141 : MUL 1, 2, 1 ; R1 = left * right
142 : LD 2, 4(5) ; Restore left operand from depth 0
143 : SUB 1, 2, 1 ; R1 = left - right
144 : ST 1, 3(5) ; Store function result into frame return slot
145 : LD 6, 0(5) ; Load return address
146 : LDA 7, 0(6) ; Return to caller
147 : LD 1, 1(5) ; Load parameter 'n' into R1
148 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
149 : LDA 4, 7(5) ; Callee base for arg copy
150 : LD 1, 3(5) ; Load staged arg 0 from caller temp
151 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
152 : LDC 1, 10(0) ; Load integer-literal into R1
153 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
154 : LDA 4, 6(5) ; Callee base for arg copy
155 : LD 1, 3(5) ; Load staged arg 0 from caller temp
156 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
157 : LD 1, 1(5) ; Load parameter 'n' into R1
158 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
159 : LDA 4, 5(5) ; Callee base for arg copy
160 : LD 1, 3(5) ; Load staged arg 0 from caller temp
161 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
162 : LDA 4, 5(5) ; Callee base for call
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 242(0) ; Call length
167 : LD 1, 2(5) ; Load callee result into R1
168 : LDC 2, 5(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : ST 1, 3(5) ; Spill left operand at depth 0
171 : LDC 1, 2(0) ; Load integer-literal into R1
172 : LD 2, 3(5) ; Restore left operand from depth 0
173 : DIV 1, 2, 1 ; R1 = left / right
174 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
175 : LDA 4, 6(5) ; Callee base for arg copy
176 : LD 1, 3(5) ; Load staged arg 1 from caller temp
177 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
178 : LDA 4, 6(5) ; Callee base for call
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return in callee frame
181 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
182 : LDA 7, 323(0) ; Call EXP
183 : LD 1, 3(5) ; Load callee result into R1
184 : LDC 2, 6(0) ; Callee frame size
185 : SUB 5, 5, 2 ; Pop callee frame
186 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
187 : LDA 4, 7(5) ; Callee base for arg copy
188 : LD 1, 3(5) ; Load staged arg 1 from caller temp
189 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
190 : LDA 4, 7(5) ; Callee base for call
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return in callee frame
193 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
194 : LDA 7, 364(0) ; Call MOD
195 : LD 1, 3(5) ; Load callee result into R1
196 : LDC 2, 7(0) ; Callee frame size
197 : SUB 5, 5, 2 ; Pop callee frame
198 : ST 1, 2(5) ; Store function result into frame return slot
199 : LD 6, 0(5) ; Load return address
200 : LDA 7, 0(6) ; Return to caller
201 : LD 1, 1(5) ; Load parameter 'n' into R1
202 : ST 1, 3(5) ; Spill left operand at depth 0
203 : LDC 1, 10(0) ; Load integer-literal into R1
204 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
205 : LDA 4, 6(5) ; Callee base for arg copy
206 : LD 1, 3(5) ; Load staged arg 0 from caller temp
207 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
208 : LD 1, 1(5) ; Load parameter 'n' into R1
209 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
210 : LDA 4, 5(5) ; Callee base for arg copy
211 : LD 1, 3(5) ; Load staged arg 0 from caller temp
212 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
213 : LDA 4, 5(5) ; Callee base for call
214 : LDA 6, 218(0) ; Return address
215 : ST 6, 0(4) ; Store return in callee frame
216 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
217 : LDA 7, 242(0) ; Call length
218 : LD 1, 2(5) ; Load callee result into R1
219 : LDC 2, 5(0) ; Callee frame size
220 : SUB 5, 5, 2 ; Pop callee frame
221 : ST 1, 4(5) ; Spill left operand at depth 1
222 : LDC 1, 2(0) ; Load integer-literal into R1
223 : LD 2, 4(5) ; Restore left operand from depth 1
224 : DIV 1, 2, 1 ; R1 = left / right
225 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
226 : LDA 4, 6(5) ; Callee base for arg copy
227 : LD 1, 3(5) ; Load staged arg 1 from caller temp
228 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
229 : LDA 4, 6(5) ; Callee base for call
230 : LDA 6, 234(0) ; Return address
231 : ST 6, 0(4) ; Store return in callee frame
232 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
233 : LDA 7, 323(0) ; Call EXP
234 : LD 1, 3(5) ; Load callee result into R1
235 : LDC 2, 6(0) ; Callee frame size
236 : SUB 5, 5, 2 ; Pop callee frame
237 : LD 2, 3(5) ; Restore left operand from depth 0
238 : DIV 1, 2, 1 ; R1 = left / right
239 : ST 1, 2(5) ; Store function result into frame return slot
240 : LD 6, 0(5) ; Load return address
241 : LDA 7, 0(6) ; Return to caller
242 : LD 1, 1(5) ; Load parameter 'n' into R1
243 : ST 1, 3(5) ; Spill left operand at depth 0
244 : LDC 1, 10(0) ; Load integer-literal into R1
245 : LD 2, 3(5) ; Restore left operand from depth 0
246 : SUB 1, 2, 1 ; left - right for less-than check
247 : JLT 1, 2(7) ; If R1 < 0, jump to true
248 : LDC 1, 0(0) ; false
249 : LDA 7, 1(7) ; skip setting true
250 : LDC 1, 1(0) ; true
251 : JEQ 1, 254(0) ; If condition is false, jump to ELSE
252 : LDC 1, 1(0) ; Load integer-literal into R1
253 : LDA 7, 275(0) ; Skip ELSE block
254 : LDC 1, 1(0) ; Load integer-literal into R1
255 : ST 1, 3(5) ; Spill left operand at depth 0
256 : LD 1, 1(5) ; Load parameter 'n' into R1
257 : ST 1, 4(5) ; Spill left operand at depth 1
258 : LDC 1, 10(0) ; Load integer-literal into R1
259 : LD 2, 4(5) ; Restore left operand from depth 1
260 : DIV 1, 2, 1 ; R1 = left / right
261 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
262 : LDA 4, 5(5) ; Callee base for arg copy
263 : LD 1, 3(5) ; Load staged arg 0 from caller temp
264 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
265 : LDA 4, 5(5) ; Callee base for call
266 : LDA 6, 270(0) ; Return address
267 : ST 6, 0(4) ; Store return in callee frame
268 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
269 : LDA 7, 242(0) ; Call length
270 : LD 1, 2(5) ; Load callee result into R1
271 : LDC 2, 5(0) ; Callee frame size
272 : SUB 5, 5, 2 ; Pop callee frame
273 : LD 2, 3(5) ; Restore left operand from depth 0
274 : ADD 1, 2, 1 ; R1 = left + right
275 : ST 1, 2(5) ; Store function result into frame return slot
276 : LD 6, 0(5) ; Load return address
277 : LDA 7, 0(6) ; Return to caller
278 : LDC 1, 0(0) ; Load integer-literal into R1
279 : ST 1, 3(5) ; Spill left operand at depth 0
280 : LD 1, 1(5) ; Load parameter 'n' into R1
281 : LD 2, 3(5) ; Restore left operand from depth 0
282 : SUB 1, 2, 1 ; left - right for less-than check
283 : JLT 1, 2(7) ; If R1 < 0, jump to true
284 : LDC 1, 0(0) ; false
285 : LDA 7, 1(7) ; skip setting true
286 : LDC 1, 1(0) ; true
287 : JEQ 1, 306(0) ; If condition is false, jump to ELSE
288 : LDC 1, 2(0) ; Load integer-literal into R1
289 : ST 1, 3(5) ; Spill left operand at depth 0
290 : LD 1, 1(5) ; Load parameter 'n' into R1
291 : ST 1, 4(5) ; Spill left operand at depth 1
292 : LDC 1, 2(0) ; Load integer-literal into R1
293 : LD 2, 4(5) ; Restore left operand from depth 1
294 : DIV 1, 2, 1 ; R1 = left / right
295 : LD 2, 3(5) ; Restore left operand from depth 0
296 : MUL 1, 2, 1 ; R1 = left * right
297 : ST 1, 3(5) ; Spill left operand at depth 0
298 : LD 1, 1(5) ; Load parameter 'n' into R1
299 : LD 2, 3(5) ; Restore left operand from depth 0
300 : SUB 1, 2, 1 ; left - right for less-than check
301 : JLT 1, 2(7) ; If R1 < 0, jump to true
302 : LDC 1, 0(0) ; false
303 : LDA 7, 1(7) ; skip setting true
304 : LDC 1, 1(0) ; true
305 : LDA 7, 320(0) ; Skip ELSE block
306 : LD 1, 1(5) ; Load parameter 'n' into R1
307 : SUB 1, 0, 1 ; Negate value in R1
308 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
309 : LDA 4, 5(5) ; Callee base for arg copy
310 : LD 1, 3(5) ; Load staged arg 0 from caller temp
311 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
312 : LDA 4, 5(5) ; Callee base for call
313 : LDA 6, 317(0) ; Return address
314 : ST 6, 0(4) ; Store return in callee frame
315 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
316 : LDA 7, 278(0) ; Call ODD
317 : LD 1, 2(5) ; Load callee result into R1
318 : LDC 2, 5(0) ; Callee frame size
319 : SUB 5, 5, 2 ; Pop callee frame
320 : ST 1, 2(5) ; Store function result into frame return slot
321 : LD 6, 0(5) ; Load return address
322 : LDA 7, 0(6) ; Return to caller
323 : LD 1, 2(5) ; Load parameter 'n' into R1
324 : ST 1, 4(5) ; Spill left operand at depth 0
325 : LDC 1, 0(0) ; Load integer-literal into R1
326 : LD 2, 4(5) ; Restore left operand from depth 0
327 : SUB 1, 2, 1 ; left - right for equality check
328 : JEQ 1, 2(7) ; If R1 == 0, jump to true
329 : LDC 1, 0(0) ; false
330 : LDA 7, 1(7) ; skip setting true
331 : LDC 1, 1(0) ; true
332 : JEQ 1, 335(0) ; If condition is false, jump to ELSE
333 : LDC 1, 1(0) ; Load integer-literal into R1
334 : LDA 7, 361(0) ; Skip ELSE block
335 : LD 1, 1(5) ; Load parameter 'm' into R1
336 : ST 1, 4(5) ; Spill left operand at depth 0
337 : LD 1, 1(5) ; Load parameter 'm' into R1
338 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
339 : LDA 4, 6(5) ; Callee base for arg copy
340 : LD 1, 4(5) ; Load staged arg 0 from caller temp
341 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
342 : LD 1, 2(5) ; Load parameter 'n' into R1
343 : ST 1, 5(5) ; Spill left operand at depth 1
344 : LDC 1, 1(0) ; Load integer-literal into R1
345 : LD 2, 5(5) ; Restore left operand from depth 1
346 : SUB 1, 2, 1 ; R1 = left - right
347 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
348 : LDA 4, 6(5) ; Callee base for arg copy
349 : LD 1, 4(5) ; Load staged arg 1 from caller temp
350 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
351 : LDA 4, 6(5) ; Callee base for call
352 : LDA 6, 356(0) ; Return address
353 : ST 6, 0(4) ; Store return in callee frame
354 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
355 : LDA 7, 323(0) ; Call EXP
356 : LD 1, 3(5) ; Load callee result into R1
357 : LDC 2, 6(0) ; Callee frame size
358 : SUB 5, 5, 2 ; Pop callee frame
359 : LD 2, 4(5) ; Restore left operand from depth 0
360 : MUL 1, 2, 1 ; R1 = left * right
361 : ST 1, 3(5) ; Store function result into frame return slot
362 : LD 6, 0(5) ; Load return address
363 : LDA 7, 0(6) ; Return to caller
364 : LD 1, 1(5) ; Load parameter 'm' into R1
365 : ST 1, 4(5) ; Spill left operand at depth 0
366 : LD 1, 2(5) ; Load parameter 'n' into R1
367 : ST 1, 5(5) ; Spill left operand at depth 1
368 : LD 1, 1(5) ; Load parameter 'm' into R1
369 : ST 1, 6(5) ; Spill left operand at depth 2
370 : LD 1, 2(5) ; Load parameter 'n' into R1
371 : LD 2, 6(5) ; Restore left operand from depth 2
372 : DIV 1, 2, 1 ; R1 = left / right
373 : LD 2, 5(5) ; Restore left operand from depth 1
374 : MUL 1, 2, 1 ; R1 = left * right
375 : LD 2, 4(5) ; Restore left operand from depth 0
376 : SUB 1, 2, 1 ; R1 = left - right
377 : ST 1, 3(5) ; Store function result into frame return slot
378 : LD 6, 0(5) ; Load return address
379 : LDA 7, 0(6) ; Return to caller
