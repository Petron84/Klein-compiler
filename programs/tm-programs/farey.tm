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
17 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
18 : LDA 4, 5(5) ; Callee base for arg copy
19 : LD 1, 5(5) ; Load staged arg 0 from caller temp
20 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
21 : LD 1, 2(5) ; Load parameter 'xDen' into R1
22 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
23 : LDA 4, 5(5) ; Callee base for arg copy
24 : LD 1, 5(5) ; Load staged arg 1 from caller temp
25 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
26 : LD 1, 3(5) ; Load parameter 'N' into R1
27 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
28 : LDA 4, 5(5) ; Callee base for arg copy
29 : LD 1, 5(5) ; Load staged arg 2 from caller temp
30 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
31 : LDA 4, 5(5) ; Callee base for call
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
35 : LDA 7, 744(0) ; Call fareyNum
36 : LD 1, 4(5) ; Load callee result into R1
37 : LDC 2, 5(0) ; Callee frame size
38 : SUB 5, 5, 2 ; Pop callee frame
39 : LDA 4, 3(5) ; Callee base for built-in print
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return address in callee frame
42 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
43 : LDA 7, 13(0) ; Call built-in print
44 : LDC 2, 3(0) ; Callee frame size (print)
45 : SUB 5, 5, 2 ; Pop back to caller
46 : LD 1, 1(5) ; Load parameter 'xNum' into R1
47 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
48 : LDA 4, 5(5) ; Callee base for arg copy
49 : LD 1, 5(5) ; Load staged arg 0 from caller temp
50 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
51 : LD 1, 2(5) ; Load parameter 'xDen' into R1
52 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
53 : LDA 4, 5(5) ; Callee base for arg copy
54 : LD 1, 5(5) ; Load staged arg 1 from caller temp
55 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
56 : LD 1, 3(5) ; Load parameter 'N' into R1
57 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
58 : LDA 4, 5(5) ; Callee base for arg copy
59 : LD 1, 5(5) ; Load staged arg 2 from caller temp
60 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
61 : LDA 4, 5(5) ; Callee base for call
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
65 : LDA 7, 520(0) ; Call fareyDen
66 : LD 1, 4(5) ; Load callee result into R1
67 : LDC 2, 5(0) ; Callee frame size
68 : SUB 5, 5, 2 ; Pop callee frame
69 : ST 1, 4(5) ; Store result into caller’s frame
70 : LD 1, 4(5) ; Load main return value into R1
71 : LD 6, 0(5) ; Load main return address
72 : LDA 7, 0(6) ; Return from main
73 : LD 1, 1(5) ; Load parameter 'x' into R1
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LD 1, 2(5) ; Load parameter 'y' into R1
76 : LD 2, 4(5) ; Restore left operand from depth 0
77 : SUB 1, 2, 1 ; left - right for less-than check
78 : JLT 1, 2(7) ; If R1 < 0, jump to true
79 : LDC 1, 0(0) ; false
80 : LDA 7, 1(7) ; skip setting true
81 : LDC 1, 1(0) ; true
82 : ST 1, 4(5) ; Spill left operand at depth 0
83 : LD 1, 1(5) ; Load parameter 'x' into R1
84 : ST 1, 5(5) ; Spill left operand at depth 1
85 : LD 1, 2(5) ; Load parameter 'y' into R1
86 : LD 2, 5(5) ; Restore left operand from depth 1
87 : SUB 1, 2, 1 ; left - right for equality check
88 : JEQ 1, 2(7) ; If R1 == 0, jump to true
89 : LDC 1, 0(0) ; false
90 : LDA 7, 1(7) ; skip setting true
91 : LDC 1, 1(0) ; true
92 : LD 2, 4(5) ; Restore left operand from depth 0
93 : ADD 1, 2, 1 ; R1 = left OR right
94 : LDC 2, 1(0) ; Load 1 into R2
95 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
96 : ST 1, 3(5) ; Store function result into frame return slot
97 : LD 6, 0(5) ; Load return address
98 : LDA 7, 0(6) ; Return to caller
99 : LD 1, 1(5) ; Load parameter 'x' into R1
100 : ST 1, 6(5) ; Spill left operand at depth 0
101 : LD 1, 4(5) ; Load parameter 'yd' into R1
102 : LD 2, 6(5) ; Restore left operand from depth 0
103 : MUL 1, 2, 1 ; R1 = left * right
104 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
105 : LDA 4, 6(5) ; Callee base for arg copy
106 : LD 1, 6(5) ; Load staged arg 0 from caller temp
107 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
108 : LD 1, 3(5) ; Load parameter 'y' into R1
109 : ST 1, 6(5) ; Spill left operand at depth 0
110 : LD 1, 2(5) ; Load parameter 'xd' into R1
111 : LD 2, 6(5) ; Restore left operand from depth 0
112 : MUL 1, 2, 1 ; R1 = left * right
113 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
114 : LDA 4, 6(5) ; Callee base for arg copy
115 : LD 1, 6(5) ; Load staged arg 1 from caller temp
116 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
117 : LDA 4, 6(5) ; Callee base for call
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
121 : LDA 7, 73(0) ; Call greater
122 : LD 1, 3(5) ; Load callee result into R1
123 : LDC 2, 6(0) ; Callee frame size
124 : SUB 5, 5, 2 ; Pop callee frame
125 : ST 1, 5(5) ; Store function result into frame return slot
126 : LD 6, 0(5) ; Load return address
127 : LDA 7, 0(6) ; Return to caller
128 : LD 1, 1(5) ; Load parameter 'x' into R1
129 : ST 1, 6(5) ; Spill left operand at depth 0
130 : LD 1, 4(5) ; Load parameter 'yd' into R1
131 : LD 2, 6(5) ; Restore left operand from depth 0
132 : MUL 1, 2, 1 ; R1 = left * right
133 : ST 1, 6(5) ; Spill left operand at depth 0
134 : LD 1, 3(5) ; Load parameter 'y' into R1
135 : ST 1, 7(5) ; Spill left operand at depth 1
136 : LD 1, 2(5) ; Load parameter 'xd' into R1
137 : LD 2, 7(5) ; Restore left operand from depth 1
138 : MUL 1, 2, 1 ; R1 = left * right
139 : LD 2, 6(5) ; Restore left operand from depth 0
140 : SUB 1, 2, 1 ; left - right for equality check
141 : JEQ 1, 2(7) ; If R1 == 0, jump to true
142 : LDC 1, 0(0) ; false
143 : LDA 7, 1(7) ; skip setting true
144 : LDC 1, 1(0) ; true
145 : ST 1, 5(5) ; Store function result into frame return slot
146 : LD 6, 0(5) ; Load return address
147 : LDA 7, 0(6) ; Return to caller
148 : LD 1, 6(5) ; Load parameter 'b' into R1
149 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
150 : LDA 4, 6(5) ; Callee base for arg copy
151 : LD 1, 10(5) ; Load staged arg 0 from caller temp
152 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
153 : LD 1, 4(5) ; Load parameter 'N' into R1
154 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
155 : LDA 4, 6(5) ; Callee base for arg copy
156 : LD 1, 10(5) ; Load staged arg 1 from caller temp
157 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
158 : LDA 4, 6(5) ; Callee base for call
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return in callee frame
161 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
162 : LDA 7, 73(0) ; Call greater
163 : LD 1, 3(5) ; Load callee result into R1
164 : LDC 2, 6(0) ; Callee frame size
165 : SUB 5, 5, 2 ; Pop callee frame
166 : ST 1, 10(5) ; Spill left operand at depth 0
167 : LD 1, 8(5) ; Load parameter 'd' into R1
168 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
169 : LDA 4, 6(5) ; Callee base for arg copy
170 : LD 1, 10(5) ; Load staged arg 0 from caller temp
171 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
172 : LD 1, 4(5) ; Load parameter 'N' into R1
173 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
174 : LDA 4, 6(5) ; Callee base for arg copy
175 : LD 1, 10(5) ; Load staged arg 1 from caller temp
176 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
177 : LDA 4, 6(5) ; Callee base for call
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
181 : LDA 7, 73(0) ; Call greater
182 : LD 1, 3(5) ; Load callee result into R1
183 : LDC 2, 6(0) ; Callee frame size
184 : SUB 5, 5, 2 ; Pop callee frame
185 : LD 2, 10(5) ; Restore left operand from depth 0
186 : ADD 1, 2, 1 ; R1 = left OR right
187 : JEQ 1, 226(0) ; If condition is false, jump to ELSE
188 : LD 1, 1(5) ; Load parameter 'selector' into R1
189 : ST 1, 10(5) ; Spill left operand at depth 0
190 : LDC 1, 1(0) ; Load integer-literal into R1
191 : LD 2, 10(5) ; Restore left operand from depth 0
192 : SUB 1, 2, 1 ; left - right for equality check
193 : JEQ 1, 2(7) ; If R1 == 0, jump to true
194 : LDC 1, 0(0) ; false
195 : LDA 7, 1(7) ; skip setting true
196 : LDC 1, 1(0) ; true
197 : JEQ 1, 200(0) ; If condition is false, jump to ELSE
198 : LD 1, 5(5) ; Load parameter 'a' into R1
199 : LDA 7, 225(0) ; Skip ELSE block
200 : LD 1, 1(5) ; Load parameter 'selector' into R1
201 : ST 1, 10(5) ; Spill left operand at depth 0
202 : LDC 1, 2(0) ; Load integer-literal into R1
203 : LD 2, 10(5) ; Restore left operand from depth 0
204 : SUB 1, 2, 1 ; left - right for equality check
205 : JEQ 1, 2(7) ; If R1 == 0, jump to true
206 : LDC 1, 0(0) ; false
207 : LDA 7, 1(7) ; skip setting true
208 : LDC 1, 1(0) ; true
209 : JEQ 1, 212(0) ; If condition is false, jump to ELSE
210 : LD 1, 6(5) ; Load parameter 'b' into R1
211 : LDA 7, 225(0) ; Skip ELSE block
212 : LD 1, 1(5) ; Load parameter 'selector' into R1
213 : ST 1, 10(5) ; Spill left operand at depth 0
214 : LDC 1, 3(0) ; Load integer-literal into R1
215 : LD 2, 10(5) ; Restore left operand from depth 0
216 : SUB 1, 2, 1 ; left - right for equality check
217 : JEQ 1, 2(7) ; If R1 == 0, jump to true
218 : LDC 1, 0(0) ; false
219 : LDA 7, 1(7) ; skip setting true
220 : LDC 1, 1(0) ; true
221 : JEQ 1, 224(0) ; If condition is false, jump to ELSE
222 : LD 1, 7(5) ; Load parameter 'c' into R1
223 : LDA 7, 225(0) ; Skip ELSE block
224 : LD 1, 8(5) ; Load parameter 'd' into R1
225 : LDA 7, 467(0) ; Skip ELSE block
226 : LD 1, 2(5) ; Load parameter 'xNum' into R1
227 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
228 : LDA 4, 8(5) ; Callee base for arg copy
229 : LD 1, 10(5) ; Load staged arg 0 from caller temp
230 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
231 : LD 1, 3(5) ; Load parameter 'xDen' into R1
232 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
233 : LDA 4, 8(5) ; Callee base for arg copy
234 : LD 1, 10(5) ; Load staged arg 1 from caller temp
235 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
236 : LD 1, 5(5) ; Load parameter 'a' into R1
237 : ST 1, 10(5) ; Spill left operand at depth 0
238 : LD 1, 7(5) ; Load parameter 'c' into R1
239 : LD 2, 10(5) ; Restore left operand from depth 0
240 : ADD 1, 2, 1 ; R1 = left + right
241 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2)
242 : LDA 4, 8(5) ; Callee base for arg copy
243 : LD 1, 10(5) ; Load staged arg 2 from caller temp
244 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
245 : LD 1, 6(5) ; Load parameter 'b' into R1
246 : ST 1, 10(5) ; Spill left operand at depth 0
247 : LD 1, 8(5) ; Load parameter 'd' into R1
248 : LD 2, 10(5) ; Restore left operand from depth 0
249 : ADD 1, 2, 1 ; R1 = left + right
250 : ST 1, 10(5) ; Stage arg 3 in caller temp (P+2)
251 : LDA 4, 8(5) ; Callee base for arg copy
252 : LD 1, 10(5) ; Load staged arg 3 from caller temp
253 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
254 : LDA 4, 8(5) ; Callee base for call
255 : LDA 6, 259(0) ; Return address
256 : ST 6, 0(4) ; Store return in callee frame
257 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
258 : LDA 7, 128(0) ; Call fractionEqual
259 : LD 1, 5(5) ; Load callee result into R1
260 : LDC 2, 8(0) ; Callee frame size
261 : SUB 5, 5, 2 ; Pop callee frame
262 : JEQ 1, 317(0) ; If condition is false, jump to ELSE
263 : LD 1, 1(5) ; Load parameter 'selector' into R1
264 : ST 1, 10(5) ; Spill left operand at depth 0
265 : LDC 1, 1(0) ; Load integer-literal into R1
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
278 : LDA 7, 316(0) ; Skip ELSE block
279 : LD 1, 1(5) ; Load parameter 'selector' into R1
280 : ST 1, 10(5) ; Spill left operand at depth 0
281 : LDC 1, 2(0) ; Load integer-literal into R1
282 : LD 2, 10(5) ; Restore left operand from depth 0
283 : SUB 1, 2, 1 ; left - right for equality check
284 : JEQ 1, 2(7) ; If R1 == 0, jump to true
285 : LDC 1, 0(0) ; false
286 : LDA 7, 1(7) ; skip setting true
287 : LDC 1, 1(0) ; true
288 : JEQ 1, 295(0) ; If condition is false, jump to ELSE
289 : LD 1, 6(5) ; Load parameter 'b' into R1
290 : ST 1, 10(5) ; Spill left operand at depth 0
291 : LD 1, 8(5) ; Load parameter 'd' into R1
292 : LD 2, 10(5) ; Restore left operand from depth 0
293 : ADD 1, 2, 1 ; R1 = left + right
294 : LDA 7, 316(0) ; Skip ELSE block
295 : LD 1, 1(5) ; Load parameter 'selector' into R1
296 : ST 1, 10(5) ; Spill left operand at depth 0
297 : LDC 1, 3(0) ; Load integer-literal into R1
298 : LD 2, 10(5) ; Restore left operand from depth 0
299 : SUB 1, 2, 1 ; left - right for equality check
300 : JEQ 1, 2(7) ; If R1 == 0, jump to true
301 : LDC 1, 0(0) ; false
302 : LDA 7, 1(7) ; skip setting true
303 : LDC 1, 1(0) ; true
304 : JEQ 1, 311(0) ; If condition is false, jump to ELSE
305 : LD 1, 5(5) ; Load parameter 'a' into R1
306 : ST 1, 10(5) ; Spill left operand at depth 0
307 : LD 1, 7(5) ; Load parameter 'c' into R1
308 : LD 2, 10(5) ; Restore left operand from depth 0
309 : ADD 1, 2, 1 ; R1 = left + right
310 : LDA 7, 316(0) ; Skip ELSE block
311 : LD 1, 6(5) ; Load parameter 'b' into R1
312 : ST 1, 10(5) ; Spill left operand at depth 0
313 : LD 1, 8(5) ; Load parameter 'd' into R1
314 : LD 2, 10(5) ; Restore left operand from depth 0
315 : ADD 1, 2, 1 ; R1 = left + right
316 : LDA 7, 467(0) ; Skip ELSE block
317 : LD 1, 2(5) ; Load parameter 'xNum' into R1
318 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
319 : LDA 4, 7(5) ; Callee base for arg copy
320 : LD 1, 10(5) ; Load staged arg 0 from caller temp
321 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
322 : LD 1, 3(5) ; Load parameter 'xDen' into R1
323 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
324 : LDA 4, 7(5) ; Callee base for arg copy
325 : LD 1, 10(5) ; Load staged arg 1 from caller temp
326 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
327 : LD 1, 5(5) ; Load parameter 'a' into R1
328 : ST 1, 10(5) ; Spill left operand at depth 0
329 : LD 1, 7(5) ; Load parameter 'c' into R1
330 : LD 2, 10(5) ; Restore left operand from depth 0
331 : ADD 1, 2, 1 ; R1 = left + right
332 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2)
333 : LDA 4, 7(5) ; Callee base for arg copy
334 : LD 1, 10(5) ; Load staged arg 2 from caller temp
335 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
336 : LD 1, 6(5) ; Load parameter 'b' into R1
337 : ST 1, 10(5) ; Spill left operand at depth 0
338 : LD 1, 8(5) ; Load parameter 'd' into R1
339 : LD 2, 10(5) ; Restore left operand from depth 0
340 : ADD 1, 2, 1 ; R1 = left + right
341 : ST 1, 10(5) ; Stage arg 3 in caller temp (P+2)
342 : LDA 4, 7(5) ; Callee base for arg copy
343 : LD 1, 10(5) ; Load staged arg 3 from caller temp
344 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
345 : LDA 4, 7(5) ; Callee base for call
346 : LDA 6, 350(0) ; Return address
347 : ST 6, 0(4) ; Store return in callee frame
348 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
349 : LDA 7, 99(0) ; Call fractionGreater
350 : LD 1, 5(5) ; Load callee result into R1
351 : LDC 2, 7(0) ; Callee frame size
352 : SUB 5, 5, 2 ; Pop callee frame
353 : JEQ 1, 411(0) ; If condition is false, jump to ELSE
354 : LD 1, 1(5) ; Load parameter 'selector' into R1
355 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
356 : LDA 4, 11(5) ; Callee base for arg copy
357 : LD 1, 10(5) ; Load staged arg 0 from caller temp
358 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
359 : LD 1, 2(5) ; Load parameter 'xNum' into R1
360 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
361 : LDA 4, 11(5) ; Callee base for arg copy
362 : LD 1, 10(5) ; Load staged arg 1 from caller temp
363 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
364 : LD 1, 3(5) ; Load parameter 'xDen' into R1
365 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2)
366 : LDA 4, 11(5) ; Callee base for arg copy
367 : LD 1, 10(5) ; Load staged arg 2 from caller temp
368 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
369 : LD 1, 4(5) ; Load parameter 'N' into R1
370 : ST 1, 10(5) ; Stage arg 3 in caller temp (P+2)
371 : LDA 4, 11(5) ; Callee base for arg copy
372 : LD 1, 10(5) ; Load staged arg 3 from caller temp
373 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
374 : LD 1, 5(5) ; Load parameter 'a' into R1
375 : ST 1, 10(5) ; Spill left operand at depth 0
376 : LD 1, 7(5) ; Load parameter 'c' into R1
377 : LD 2, 10(5) ; Restore left operand from depth 0
378 : ADD 1, 2, 1 ; R1 = left + right
379 : ST 1, 10(5) ; Stage arg 4 in caller temp (P+2)
380 : LDA 4, 11(5) ; Callee base for arg copy
381 : LD 1, 10(5) ; Load staged arg 4 from caller temp
382 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
383 : LD 1, 6(5) ; Load parameter 'b' into R1
384 : ST 1, 10(5) ; Spill left operand at depth 0
385 : LD 1, 8(5) ; Load parameter 'd' into R1
386 : LD 2, 10(5) ; Restore left operand from depth 0
387 : ADD 1, 2, 1 ; R1 = left + right
388 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2)
389 : LDA 4, 11(5) ; Callee base for arg copy
390 : LD 1, 10(5) ; Load staged arg 5 from caller temp
391 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
392 : LD 1, 7(5) ; Load parameter 'c' into R1
393 : ST 1, 10(5) ; Stage arg 6 in caller temp (P+2)
394 : LDA 4, 11(5) ; Callee base for arg copy
395 : LD 1, 10(5) ; Load staged arg 6 from caller temp
396 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
397 : LD 1, 8(5) ; Load parameter 'd' into R1
398 : ST 1, 10(5) ; Stage arg 7 in caller temp (P+2)
399 : LDA 4, 11(5) ; Callee base for arg copy
400 : LD 1, 10(5) ; Load staged arg 7 from caller temp
401 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
402 : LDA 4, 11(5) ; Callee base for call
403 : LDA 6, 407(0) ; Return address
404 : ST 6, 0(4) ; Store return in callee frame
405 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
406 : LDA 7, 148(0) ; Call whileLoopFor
407 : LD 1, 9(5) ; Load callee result into R1
408 : LDC 2, 11(0) ; Callee frame size
409 : SUB 5, 5, 2 ; Pop callee frame
410 : LDA 7, 467(0) ; Skip ELSE block
411 : LD 1, 1(5) ; Load parameter 'selector' into R1
412 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2)
413 : LDA 4, 11(5) ; Callee base for arg copy
414 : LD 1, 10(5) ; Load staged arg 0 from caller temp
415 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
416 : LD 1, 2(5) ; Load parameter 'xNum' into R1
417 : ST 1, 10(5) ; Stage arg 1 in caller temp (P+2)
418 : LDA 4, 11(5) ; Callee base for arg copy
419 : LD 1, 10(5) ; Load staged arg 1 from caller temp
420 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
421 : LD 1, 3(5) ; Load parameter 'xDen' into R1
422 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2)
423 : LDA 4, 11(5) ; Callee base for arg copy
424 : LD 1, 10(5) ; Load staged arg 2 from caller temp
425 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
426 : LD 1, 4(5) ; Load parameter 'N' into R1
427 : ST 1, 10(5) ; Stage arg 3 in caller temp (P+2)
428 : LDA 4, 11(5) ; Callee base for arg copy
429 : LD 1, 10(5) ; Load staged arg 3 from caller temp
430 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
431 : LD 1, 5(5) ; Load parameter 'a' into R1
432 : ST 1, 10(5) ; Stage arg 4 in caller temp (P+2)
433 : LDA 4, 11(5) ; Callee base for arg copy
434 : LD 1, 10(5) ; Load staged arg 4 from caller temp
435 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
436 : LD 1, 6(5) ; Load parameter 'b' into R1
437 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2)
438 : LDA 4, 11(5) ; Callee base for arg copy
439 : LD 1, 10(5) ; Load staged arg 5 from caller temp
440 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
441 : LD 1, 5(5) ; Load parameter 'a' into R1
442 : ST 1, 10(5) ; Spill left operand at depth 0
443 : LD 1, 7(5) ; Load parameter 'c' into R1
444 : LD 2, 10(5) ; Restore left operand from depth 0
445 : ADD 1, 2, 1 ; R1 = left + right
446 : ST 1, 10(5) ; Stage arg 6 in caller temp (P+2)
447 : LDA 4, 11(5) ; Callee base for arg copy
448 : LD 1, 10(5) ; Load staged arg 6 from caller temp
449 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
450 : LD 1, 6(5) ; Load parameter 'b' into R1
451 : ST 1, 10(5) ; Spill left operand at depth 0
452 : LD 1, 8(5) ; Load parameter 'd' into R1
453 : LD 2, 10(5) ; Restore left operand from depth 0
454 : ADD 1, 2, 1 ; R1 = left + right
455 : ST 1, 10(5) ; Stage arg 7 in caller temp (P+2)
456 : LDA 4, 11(5) ; Callee base for arg copy
457 : LD 1, 10(5) ; Load staged arg 7 from caller temp
458 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
459 : LDA 4, 11(5) ; Callee base for call
460 : LDA 6, 464(0) ; Return address
461 : ST 6, 0(4) ; Store return in callee frame
462 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
463 : LDA 7, 148(0) ; Call whileLoopFor
464 : LD 1, 9(5) ; Load callee result into R1
465 : LDC 2, 11(0) ; Callee frame size
466 : SUB 5, 5, 2 ; Pop callee frame
467 : ST 1, 9(5) ; Store function result into frame return slot
468 : LD 6, 0(5) ; Load return address
469 : LDA 7, 0(6) ; Return to caller
470 : LD 1, 3(5) ; Load parameter 'b' into R1
471 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2)
472 : LDA 4, 6(5) ; Callee base for arg copy
473 : LD 1, 7(5) ; Load staged arg 0 from caller temp
474 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
475 : LD 1, 1(5) ; Load parameter 'N' into R1
476 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2)
477 : LDA 4, 6(5) ; Callee base for arg copy
478 : LD 1, 7(5) ; Load staged arg 1 from caller temp
479 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
480 : LDA 4, 6(5) ; Callee base for call
481 : LDA 6, 485(0) ; Return address
482 : ST 6, 0(4) ; Store return in callee frame
483 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
484 : LDA 7, 73(0) ; Call greater
485 : LD 1, 3(5) ; Load callee result into R1
486 : LDC 2, 6(0) ; Callee frame size
487 : SUB 5, 5, 2 ; Pop callee frame
488 : JEQ 1, 491(0) ; If condition is false, jump to ELSE
489 : LD 1, 5(5) ; Load parameter 'd' into R1
490 : LDA 7, 492(0) ; Skip ELSE block
491 : LD 1, 3(5) ; Load parameter 'b' into R1
492 : ST 1, 6(5) ; Store function result into frame return slot
493 : LD 6, 0(5) ; Load return address
494 : LDA 7, 0(6) ; Return to caller
495 : LD 1, 3(5) ; Load parameter 'b' into R1
496 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2)
497 : LDA 4, 6(5) ; Callee base for arg copy
498 : LD 1, 7(5) ; Load staged arg 0 from caller temp
499 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
500 : LD 1, 1(5) ; Load parameter 'N' into R1
501 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2)
502 : LDA 4, 6(5) ; Callee base for arg copy
503 : LD 1, 7(5) ; Load staged arg 1 from caller temp
504 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
505 : LDA 4, 6(5) ; Callee base for call
506 : LDA 6, 510(0) ; Return address
507 : ST 6, 0(4) ; Store return in callee frame
508 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
509 : LDA 7, 73(0) ; Call greater
510 : LD 1, 3(5) ; Load callee result into R1
511 : LDC 2, 6(0) ; Callee frame size
512 : SUB 5, 5, 2 ; Pop callee frame
513 : JEQ 1, 516(0) ; If condition is false, jump to ELSE
514 : LD 1, 4(5) ; Load parameter 'c' into R1
515 : LDA 7, 517(0) ; Skip ELSE block
516 : LD 1, 2(5) ; Load parameter 'a' into R1
517 : ST 1, 6(5) ; Store function result into frame return slot
518 : LD 6, 0(5) ; Load return address
519 : LDA 7, 0(6) ; Return to caller
520 : LD 1, 3(5) ; Load parameter 'N' into R1
521 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
522 : LDA 4, 7(5) ; Callee base for arg copy
523 : LD 1, 5(5) ; Load staged arg 0 from caller temp
524 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
525 : LDC 1, 1(0) ; Load integer-literal into R1
526 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
527 : LDA 4, 11(5) ; Callee base for arg copy
528 : LD 1, 5(5) ; Load staged arg 0 from caller temp
529 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
530 : LD 1, 1(5) ; Load parameter 'xNum' into R1
531 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
532 : LDA 4, 11(5) ; Callee base for arg copy
533 : LD 1, 5(5) ; Load staged arg 1 from caller temp
534 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
535 : LD 1, 2(5) ; Load parameter 'xDen' into R1
536 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
537 : LDA 4, 11(5) ; Callee base for arg copy
538 : LD 1, 5(5) ; Load staged arg 2 from caller temp
539 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
540 : LD 1, 3(5) ; Load parameter 'N' into R1
541 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
542 : LDA 4, 11(5) ; Callee base for arg copy
543 : LD 1, 5(5) ; Load staged arg 3 from caller temp
544 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
545 : LDC 1, 0(0) ; Load integer-literal into R1
546 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
547 : LDA 4, 11(5) ; Callee base for arg copy
548 : LD 1, 5(5) ; Load staged arg 4 from caller temp
549 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
550 : LDC 1, 1(0) ; Load integer-literal into R1
551 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
552 : LDA 4, 11(5) ; Callee base for arg copy
553 : LD 1, 5(5) ; Load staged arg 5 from caller temp
554 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
555 : LDC 1, 1(0) ; Load integer-literal into R1
556 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
557 : LDA 4, 11(5) ; Callee base for arg copy
558 : LD 1, 5(5) ; Load staged arg 6 from caller temp
559 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
560 : LDC 1, 1(0) ; Load integer-literal into R1
561 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
562 : LDA 4, 11(5) ; Callee base for arg copy
563 : LD 1, 5(5) ; Load staged arg 7 from caller temp
564 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
565 : LDA 4, 11(5) ; Callee base for call
566 : LDA 6, 570(0) ; Return address
567 : ST 6, 0(4) ; Store return in callee frame
568 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
569 : LDA 7, 148(0) ; Call whileLoopFor
570 : LD 1, 9(5) ; Load callee result into R1
571 : LDC 2, 11(0) ; Callee frame size
572 : SUB 5, 5, 2 ; Pop callee frame
573 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
574 : LDA 4, 7(5) ; Callee base for arg copy
575 : LD 1, 5(5) ; Load staged arg 1 from caller temp
576 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
577 : LDC 1, 2(0) ; Load integer-literal into R1
578 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
579 : LDA 4, 11(5) ; Callee base for arg copy
580 : LD 1, 5(5) ; Load staged arg 0 from caller temp
581 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
582 : LD 1, 1(5) ; Load parameter 'xNum' into R1
583 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
584 : LDA 4, 11(5) ; Callee base for arg copy
585 : LD 1, 5(5) ; Load staged arg 1 from caller temp
586 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
587 : LD 1, 2(5) ; Load parameter 'xDen' into R1
588 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
589 : LDA 4, 11(5) ; Callee base for arg copy
590 : LD 1, 5(5) ; Load staged arg 2 from caller temp
591 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
592 : LD 1, 3(5) ; Load parameter 'N' into R1
593 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
594 : LDA 4, 11(5) ; Callee base for arg copy
595 : LD 1, 5(5) ; Load staged arg 3 from caller temp
596 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
597 : LDC 1, 0(0) ; Load integer-literal into R1
598 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
599 : LDA 4, 11(5) ; Callee base for arg copy
600 : LD 1, 5(5) ; Load staged arg 4 from caller temp
601 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
602 : LDC 1, 1(0) ; Load integer-literal into R1
603 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
604 : LDA 4, 11(5) ; Callee base for arg copy
605 : LD 1, 5(5) ; Load staged arg 5 from caller temp
606 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
607 : LDC 1, 1(0) ; Load integer-literal into R1
608 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
609 : LDA 4, 11(5) ; Callee base for arg copy
610 : LD 1, 5(5) ; Load staged arg 6 from caller temp
611 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
612 : LDC 1, 1(0) ; Load integer-literal into R1
613 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
614 : LDA 4, 11(5) ; Callee base for arg copy
615 : LD 1, 5(5) ; Load staged arg 7 from caller temp
616 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
617 : LDA 4, 11(5) ; Callee base for call
618 : LDA 6, 622(0) ; Return address
619 : ST 6, 0(4) ; Store return in callee frame
620 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
621 : LDA 7, 148(0) ; Call whileLoopFor
622 : LD 1, 9(5) ; Load callee result into R1
623 : LDC 2, 11(0) ; Callee frame size
624 : SUB 5, 5, 2 ; Pop callee frame
625 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
626 : LDA 4, 7(5) ; Callee base for arg copy
627 : LD 1, 5(5) ; Load staged arg 2 from caller temp
628 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
629 : LDC 1, 3(0) ; Load integer-literal into R1
630 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
631 : LDA 4, 11(5) ; Callee base for arg copy
632 : LD 1, 5(5) ; Load staged arg 0 from caller temp
633 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
634 : LD 1, 1(5) ; Load parameter 'xNum' into R1
635 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
636 : LDA 4, 11(5) ; Callee base for arg copy
637 : LD 1, 5(5) ; Load staged arg 1 from caller temp
638 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
639 : LD 1, 2(5) ; Load parameter 'xDen' into R1
640 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
641 : LDA 4, 11(5) ; Callee base for arg copy
642 : LD 1, 5(5) ; Load staged arg 2 from caller temp
643 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
644 : LD 1, 3(5) ; Load parameter 'N' into R1
645 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
646 : LDA 4, 11(5) ; Callee base for arg copy
647 : LD 1, 5(5) ; Load staged arg 3 from caller temp
648 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
649 : LDC 1, 0(0) ; Load integer-literal into R1
650 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
651 : LDA 4, 11(5) ; Callee base for arg copy
652 : LD 1, 5(5) ; Load staged arg 4 from caller temp
653 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
654 : LDC 1, 1(0) ; Load integer-literal into R1
655 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
656 : LDA 4, 11(5) ; Callee base for arg copy
657 : LD 1, 5(5) ; Load staged arg 5 from caller temp
658 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
659 : LDC 1, 1(0) ; Load integer-literal into R1
660 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
661 : LDA 4, 11(5) ; Callee base for arg copy
662 : LD 1, 5(5) ; Load staged arg 6 from caller temp
663 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
664 : LDC 1, 1(0) ; Load integer-literal into R1
665 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
666 : LDA 4, 11(5) ; Callee base for arg copy
667 : LD 1, 5(5) ; Load staged arg 7 from caller temp
668 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
669 : LDA 4, 11(5) ; Callee base for call
670 : LDA 6, 674(0) ; Return address
671 : ST 6, 0(4) ; Store return in callee frame
672 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
673 : LDA 7, 148(0) ; Call whileLoopFor
674 : LD 1, 9(5) ; Load callee result into R1
675 : LDC 2, 11(0) ; Callee frame size
676 : SUB 5, 5, 2 ; Pop callee frame
677 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
678 : LDA 4, 7(5) ; Callee base for arg copy
679 : LD 1, 5(5) ; Load staged arg 3 from caller temp
680 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
681 : LDC 1, 4(0) ; Load integer-literal into R1
682 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
683 : LDA 4, 11(5) ; Callee base for arg copy
684 : LD 1, 5(5) ; Load staged arg 0 from caller temp
685 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
686 : LD 1, 1(5) ; Load parameter 'xNum' into R1
687 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
688 : LDA 4, 11(5) ; Callee base for arg copy
689 : LD 1, 5(5) ; Load staged arg 1 from caller temp
690 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
691 : LD 1, 2(5) ; Load parameter 'xDen' into R1
692 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
693 : LDA 4, 11(5) ; Callee base for arg copy
694 : LD 1, 5(5) ; Load staged arg 2 from caller temp
695 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
696 : LD 1, 3(5) ; Load parameter 'N' into R1
697 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
698 : LDA 4, 11(5) ; Callee base for arg copy
699 : LD 1, 5(5) ; Load staged arg 3 from caller temp
700 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
701 : LDC 1, 0(0) ; Load integer-literal into R1
702 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
703 : LDA 4, 11(5) ; Callee base for arg copy
704 : LD 1, 5(5) ; Load staged arg 4 from caller temp
705 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
706 : LDC 1, 1(0) ; Load integer-literal into R1
707 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
708 : LDA 4, 11(5) ; Callee base for arg copy
709 : LD 1, 5(5) ; Load staged arg 5 from caller temp
710 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
711 : LDC 1, 1(0) ; Load integer-literal into R1
712 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
713 : LDA 4, 11(5) ; Callee base for arg copy
714 : LD 1, 5(5) ; Load staged arg 6 from caller temp
715 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
716 : LDC 1, 1(0) ; Load integer-literal into R1
717 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
718 : LDA 4, 11(5) ; Callee base for arg copy
719 : LD 1, 5(5) ; Load staged arg 7 from caller temp
720 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
721 : LDA 4, 11(5) ; Callee base for call
722 : LDA 6, 726(0) ; Return address
723 : ST 6, 0(4) ; Store return in callee frame
724 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
725 : LDA 7, 148(0) ; Call whileLoopFor
726 : LD 1, 9(5) ; Load callee result into R1
727 : LDC 2, 11(0) ; Callee frame size
728 : SUB 5, 5, 2 ; Pop callee frame
729 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
730 : LDA 4, 7(5) ; Callee base for arg copy
731 : LD 1, 5(5) ; Load staged arg 4 from caller temp
732 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
733 : LDA 4, 7(5) ; Callee base for call
734 : LDA 6, 738(0) ; Return address
735 : ST 6, 0(4) ; Store return in callee frame
736 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
737 : LDA 7, 470(0) ; Call fareySelectDen
738 : LD 1, 6(5) ; Load callee result into R1
739 : LDC 2, 7(0) ; Callee frame size
740 : SUB 5, 5, 2 ; Pop callee frame
741 : ST 1, 4(5) ; Store function result into frame return slot
742 : LD 6, 0(5) ; Load return address
743 : LDA 7, 0(6) ; Return to caller
744 : LD 1, 3(5) ; Load parameter 'N' into R1
745 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
746 : LDA 4, 7(5) ; Callee base for arg copy
747 : LD 1, 5(5) ; Load staged arg 0 from caller temp
748 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
749 : LDC 1, 1(0) ; Load integer-literal into R1
750 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
751 : LDA 4, 11(5) ; Callee base for arg copy
752 : LD 1, 5(5) ; Load staged arg 0 from caller temp
753 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
754 : LD 1, 1(5) ; Load parameter 'xNum' into R1
755 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
756 : LDA 4, 11(5) ; Callee base for arg copy
757 : LD 1, 5(5) ; Load staged arg 1 from caller temp
758 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
759 : LD 1, 2(5) ; Load parameter 'xDen' into R1
760 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
761 : LDA 4, 11(5) ; Callee base for arg copy
762 : LD 1, 5(5) ; Load staged arg 2 from caller temp
763 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
764 : LD 1, 3(5) ; Load parameter 'N' into R1
765 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
766 : LDA 4, 11(5) ; Callee base for arg copy
767 : LD 1, 5(5) ; Load staged arg 3 from caller temp
768 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
769 : LDC 1, 0(0) ; Load integer-literal into R1
770 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
771 : LDA 4, 11(5) ; Callee base for arg copy
772 : LD 1, 5(5) ; Load staged arg 4 from caller temp
773 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
774 : LDC 1, 1(0) ; Load integer-literal into R1
775 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
776 : LDA 4, 11(5) ; Callee base for arg copy
777 : LD 1, 5(5) ; Load staged arg 5 from caller temp
778 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
779 : LDC 1, 1(0) ; Load integer-literal into R1
780 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
781 : LDA 4, 11(5) ; Callee base for arg copy
782 : LD 1, 5(5) ; Load staged arg 6 from caller temp
783 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
784 : LDC 1, 1(0) ; Load integer-literal into R1
785 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
786 : LDA 4, 11(5) ; Callee base for arg copy
787 : LD 1, 5(5) ; Load staged arg 7 from caller temp
788 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
789 : LDA 4, 11(5) ; Callee base for call
790 : LDA 6, 794(0) ; Return address
791 : ST 6, 0(4) ; Store return in callee frame
792 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
793 : LDA 7, 148(0) ; Call whileLoopFor
794 : LD 1, 9(5) ; Load callee result into R1
795 : LDC 2, 11(0) ; Callee frame size
796 : SUB 5, 5, 2 ; Pop callee frame
797 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
798 : LDA 4, 7(5) ; Callee base for arg copy
799 : LD 1, 5(5) ; Load staged arg 1 from caller temp
800 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
801 : LDC 1, 2(0) ; Load integer-literal into R1
802 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
803 : LDA 4, 11(5) ; Callee base for arg copy
804 : LD 1, 5(5) ; Load staged arg 0 from caller temp
805 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
806 : LD 1, 1(5) ; Load parameter 'xNum' into R1
807 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
808 : LDA 4, 11(5) ; Callee base for arg copy
809 : LD 1, 5(5) ; Load staged arg 1 from caller temp
810 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
811 : LD 1, 2(5) ; Load parameter 'xDen' into R1
812 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
813 : LDA 4, 11(5) ; Callee base for arg copy
814 : LD 1, 5(5) ; Load staged arg 2 from caller temp
815 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
816 : LD 1, 3(5) ; Load parameter 'N' into R1
817 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
818 : LDA 4, 11(5) ; Callee base for arg copy
819 : LD 1, 5(5) ; Load staged arg 3 from caller temp
820 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
821 : LDC 1, 0(0) ; Load integer-literal into R1
822 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
823 : LDA 4, 11(5) ; Callee base for arg copy
824 : LD 1, 5(5) ; Load staged arg 4 from caller temp
825 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
826 : LDC 1, 1(0) ; Load integer-literal into R1
827 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
828 : LDA 4, 11(5) ; Callee base for arg copy
829 : LD 1, 5(5) ; Load staged arg 5 from caller temp
830 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
831 : LDC 1, 1(0) ; Load integer-literal into R1
832 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
833 : LDA 4, 11(5) ; Callee base for arg copy
834 : LD 1, 5(5) ; Load staged arg 6 from caller temp
835 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
836 : LDC 1, 1(0) ; Load integer-literal into R1
837 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
838 : LDA 4, 11(5) ; Callee base for arg copy
839 : LD 1, 5(5) ; Load staged arg 7 from caller temp
840 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
841 : LDA 4, 11(5) ; Callee base for call
842 : LDA 6, 846(0) ; Return address
843 : ST 6, 0(4) ; Store return in callee frame
844 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
845 : LDA 7, 148(0) ; Call whileLoopFor
846 : LD 1, 9(5) ; Load callee result into R1
847 : LDC 2, 11(0) ; Callee frame size
848 : SUB 5, 5, 2 ; Pop callee frame
849 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
850 : LDA 4, 7(5) ; Callee base for arg copy
851 : LD 1, 5(5) ; Load staged arg 2 from caller temp
852 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
853 : LDC 1, 3(0) ; Load integer-literal into R1
854 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
855 : LDA 4, 11(5) ; Callee base for arg copy
856 : LD 1, 5(5) ; Load staged arg 0 from caller temp
857 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
858 : LD 1, 1(5) ; Load parameter 'xNum' into R1
859 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
860 : LDA 4, 11(5) ; Callee base for arg copy
861 : LD 1, 5(5) ; Load staged arg 1 from caller temp
862 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
863 : LD 1, 2(5) ; Load parameter 'xDen' into R1
864 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
865 : LDA 4, 11(5) ; Callee base for arg copy
866 : LD 1, 5(5) ; Load staged arg 2 from caller temp
867 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
868 : LD 1, 3(5) ; Load parameter 'N' into R1
869 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
870 : LDA 4, 11(5) ; Callee base for arg copy
871 : LD 1, 5(5) ; Load staged arg 3 from caller temp
872 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
873 : LDC 1, 0(0) ; Load integer-literal into R1
874 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
875 : LDA 4, 11(5) ; Callee base for arg copy
876 : LD 1, 5(5) ; Load staged arg 4 from caller temp
877 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
878 : LDC 1, 1(0) ; Load integer-literal into R1
879 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
880 : LDA 4, 11(5) ; Callee base for arg copy
881 : LD 1, 5(5) ; Load staged arg 5 from caller temp
882 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
883 : LDC 1, 1(0) ; Load integer-literal into R1
884 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
885 : LDA 4, 11(5) ; Callee base for arg copy
886 : LD 1, 5(5) ; Load staged arg 6 from caller temp
887 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
888 : LDC 1, 1(0) ; Load integer-literal into R1
889 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
890 : LDA 4, 11(5) ; Callee base for arg copy
891 : LD 1, 5(5) ; Load staged arg 7 from caller temp
892 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
893 : LDA 4, 11(5) ; Callee base for call
894 : LDA 6, 898(0) ; Return address
895 : ST 6, 0(4) ; Store return in callee frame
896 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
897 : LDA 7, 148(0) ; Call whileLoopFor
898 : LD 1, 9(5) ; Load callee result into R1
899 : LDC 2, 11(0) ; Callee frame size
900 : SUB 5, 5, 2 ; Pop callee frame
901 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
902 : LDA 4, 7(5) ; Callee base for arg copy
903 : LD 1, 5(5) ; Load staged arg 3 from caller temp
904 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
905 : LDC 1, 4(0) ; Load integer-literal into R1
906 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
907 : LDA 4, 11(5) ; Callee base for arg copy
908 : LD 1, 5(5) ; Load staged arg 0 from caller temp
909 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
910 : LD 1, 1(5) ; Load parameter 'xNum' into R1
911 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
912 : LDA 4, 11(5) ; Callee base for arg copy
913 : LD 1, 5(5) ; Load staged arg 1 from caller temp
914 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
915 : LD 1, 2(5) ; Load parameter 'xDen' into R1
916 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
917 : LDA 4, 11(5) ; Callee base for arg copy
918 : LD 1, 5(5) ; Load staged arg 2 from caller temp
919 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
920 : LD 1, 3(5) ; Load parameter 'N' into R1
921 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
922 : LDA 4, 11(5) ; Callee base for arg copy
923 : LD 1, 5(5) ; Load staged arg 3 from caller temp
924 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
925 : LDC 1, 0(0) ; Load integer-literal into R1
926 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
927 : LDA 4, 11(5) ; Callee base for arg copy
928 : LD 1, 5(5) ; Load staged arg 4 from caller temp
929 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
930 : LDC 1, 1(0) ; Load integer-literal into R1
931 : ST 1, 5(5) ; Stage arg 5 in caller temp (P+2)
932 : LDA 4, 11(5) ; Callee base for arg copy
933 : LD 1, 5(5) ; Load staged arg 5 from caller temp
934 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
935 : LDC 1, 1(0) ; Load integer-literal into R1
936 : ST 1, 5(5) ; Stage arg 6 in caller temp (P+2)
937 : LDA 4, 11(5) ; Callee base for arg copy
938 : LD 1, 5(5) ; Load staged arg 6 from caller temp
939 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
940 : LDC 1, 1(0) ; Load integer-literal into R1
941 : ST 1, 5(5) ; Stage arg 7 in caller temp (P+2)
942 : LDA 4, 11(5) ; Callee base for arg copy
943 : LD 1, 5(5) ; Load staged arg 7 from caller temp
944 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
945 : LDA 4, 11(5) ; Callee base for call
946 : LDA 6, 950(0) ; Return address
947 : ST 6, 0(4) ; Store return in callee frame
948 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
949 : LDA 7, 148(0) ; Call whileLoopFor
950 : LD 1, 9(5) ; Load callee result into R1
951 : LDC 2, 11(0) ; Callee frame size
952 : SUB 5, 5, 2 ; Pop callee frame
953 : ST 1, 5(5) ; Stage arg 4 in caller temp (P+2)
954 : LDA 4, 7(5) ; Callee base for arg copy
955 : LD 1, 5(5) ; Load staged arg 4 from caller temp
956 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
957 : LDA 4, 7(5) ; Callee base for call
958 : LDA 6, 962(0) ; Return address
959 : ST 6, 0(4) ; Store return in callee frame
960 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
961 : LDA 7, 495(0) ; Call fareySelectNum
962 : LD 1, 6(5) ; Load callee result into R1
963 : LDC 2, 7(0) ; Callee frame size
964 : SUB 5, 5, 2 ; Pop callee frame
965 : ST 1, 4(5) ; Store function result into frame return slot
966 : LD 6, 0(5) ; Load return address
967 : LDA 7, 0(6) ; Return to caller
