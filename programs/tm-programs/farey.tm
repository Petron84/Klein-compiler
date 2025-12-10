0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
17 : LDA 4, 5(5) ; Compute future callee base using caller_size
18 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
19 : LD 1, 2(5) ; Load parameter 'xDen' into R1
20 : LDA 4, 5(5) ; Compute future callee base using caller_size
21 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
22 : LD 1, 3(5) ; Load parameter 'N' into R1
23 : LDA 4, 5(5) ; Compute future callee base using caller_size
24 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
25 : LDA 4, 5(5) ; Compute future callee base (caller_size)
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
29 : LDA 7, 568(0) ; Call fareyNum
30 : LD 1, 4(5) ; Load callee result into R1
31 : LDC 2, 5(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop callee frame
33 : LDA 4, 5(5) ; Compute future callee base (caller_size)
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 13(0) ; Call built-in print
38 : LDC 2, 5(0) ; Caller frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : LD 1, 1(5) ; Load parameter 'xNum' into R1
41 : LDA 4, 5(5) ; Compute future callee base using caller_size
42 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
43 : LD 1, 2(5) ; Load parameter 'xDen' into R1
44 : LDA 4, 5(5) ; Compute future callee base using caller_size
45 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
46 : LD 1, 3(5) ; Load parameter 'N' into R1
47 : LDA 4, 5(5) ; Compute future callee base using caller_size
48 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
49 : LDA 4, 5(5) ; Compute future callee base (caller_size)
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
53 : LDA 7, 418(0) ; Call fareyDen
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
88 : ST 1, 4(5) ; Spill left operand at depth 0
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : MUL 1, 2, 1 ; R1 = left * right
91 : LDA 4, 7(5) ; Compute future callee base using caller_size
92 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
93 : LD 1, 2(5) ; Load parameter 'y' into R1
94 : ST 1, 4(5) ; Spill left operand at depth 0
95 : LD 2, 4(5) ; Restore left operand from depth 0
96 : MUL 1, 2, 1 ; R1 = left * right
97 : LDA 4, 7(5) ; Compute future callee base using caller_size
98 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
99 : LDA 4, 7(5) ; Compute future callee base (caller_size)
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return in callee frame
102 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
103 : LDA 7, 61(0) ; Call greater
104 : LD 1, 3(5) ; Load callee result into R1
105 : LDC 2, 6(0) ; Callee frame size
106 : SUB 5, 5, 2 ; Pop callee frame
107 : ST 1, 5(5) ; Store function result into frame return slot
108 : LD 6, 0(5) ; Load return address
109 : LDA 7, 0(6) ; Return to caller
110 : LD 1, 1(5) ; Load parameter 'x' into R1
111 : ST 1, 6(5) ; Spill left operand at depth 0
112 : LD 1, 4(5) ; Load parameter 'yd' into R1
113 : LD 2, 6(5) ; Restore left operand from depth 0
114 : MUL 1, 2, 1 ; R1 = left * right
115 : ST 1, 6(5) ; Spill left operand at depth 0
116 : LD 1, 3(5) ; Load parameter 'y' into R1
117 : ST 1, 7(5) ; Spill left operand at depth 1
118 : LD 1, 2(5) ; Load parameter 'xd' into R1
119 : LD 2, 7(5) ; Restore left operand from depth 1
120 : MUL 1, 2, 1 ; R1 = left * right
121 : LD 2, 6(5) ; Restore left operand from depth 0
122 : SUB 1, 2, 1 ; left - right for equality check
123 : JEQ 1, 2(7) ; If R1 == 0, jump to true
124 : LDC 1, 0(0) ; false
125 : LDA 7, 1(7) ; skip setting true
126 : LDC 1, 1(0) ; true
127 : ST 1, 5(5) ; Store function result into frame return slot
128 : LD 6, 0(5) ; Load return address
129 : LDA 7, 0(6) ; Return to caller
130 : LDA 4, 11(5) ; Compute future callee base using caller_size
131 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
132 : LDA 4, 11(5) ; Compute future callee base using caller_size
133 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
134 : LDA 4, 11(5) ; Compute future callee base (caller_size)
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
138 : LDA 7, 61(0) ; Call greater
139 : LD 1, 3(5) ; Load callee result into R1
140 : LDC 2, 6(0) ; Callee frame size
141 : SUB 5, 5, 2 ; Pop callee frame
142 : ST 1, 10(5) ; Spill left operand at depth 0
143 : LDA 4, 11(5) ; Compute future callee base using caller_size
144 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
145 : LDA 4, 11(5) ; Compute future callee base using caller_size
146 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
147 : LDA 4, 11(5) ; Compute future callee base (caller_size)
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
151 : LDA 7, 61(0) ; Call greater
152 : LD 1, 3(5) ; Load callee result into R1
153 : LDC 2, 6(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop callee frame
155 : LD 2, 10(5) ; Restore left operand from depth 0
156 : ADD 1, 2, 1 ; R1 = left OR right
157 : JEQ 1, 196(0) ; If condition is false, jump to ELSE
158 : LD 1, 1(5) ; Load parameter 'selector' into R1
159 : ST 1, 10(5) ; Spill left operand at depth 0
160 : LDC 1, 1(0) ; Load integer-literal into R1
161 : LD 2, 10(5) ; Restore left operand from depth 0
162 : SUB 1, 2, 1 ; left - right for equality check
163 : JEQ 1, 2(7) ; If R1 == 0, jump to true
164 : LDC 1, 0(0) ; false
165 : LDA 7, 1(7) ; skip setting true
166 : LDC 1, 1(0) ; true
167 : JEQ 1, 170(0) ; If condition is false, jump to ELSE
168 : LD 1, 5(5) ; Load parameter 'a' into R1
169 : LDA 7, 195(0) ; Skip ELSE block
170 : LD 1, 1(5) ; Load parameter 'selector' into R1
171 : ST 1, 10(5) ; Spill left operand at depth 0
172 : LDC 1, 2(0) ; Load integer-literal into R1
173 : LD 2, 10(5) ; Restore left operand from depth 0
174 : SUB 1, 2, 1 ; left - right for equality check
175 : JEQ 1, 2(7) ; If R1 == 0, jump to true
176 : LDC 1, 0(0) ; false
177 : LDA 7, 1(7) ; skip setting true
178 : LDC 1, 1(0) ; true
179 : JEQ 1, 182(0) ; If condition is false, jump to ELSE
180 : LD 1, 6(5) ; Load parameter 'b' into R1
181 : LDA 7, 195(0) ; Skip ELSE block
182 : LD 1, 1(5) ; Load parameter 'selector' into R1
183 : ST 1, 10(5) ; Spill left operand at depth 0
184 : LDC 1, 3(0) ; Load integer-literal into R1
185 : LD 2, 10(5) ; Restore left operand from depth 0
186 : SUB 1, 2, 1 ; left - right for equality check
187 : JEQ 1, 2(7) ; If R1 == 0, jump to true
188 : LDC 1, 0(0) ; false
189 : LDA 7, 1(7) ; skip setting true
190 : LDC 1, 1(0) ; true
191 : JEQ 1, 194(0) ; If condition is false, jump to ELSE
192 : LD 1, 7(5) ; Load parameter 'c' into R1
193 : LDA 7, 195(0) ; Skip ELSE block
194 : LD 1, 8(5) ; Load parameter 'd' into R1
195 : LDA 7, 377(0) ; Skip ELSE block
196 : LDA 4, 11(5) ; Compute future callee base using caller_size
197 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
198 : LDA 4, 11(5) ; Compute future callee base using caller_size
199 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
200 : ST 1, 6(5) ; Spill left operand at depth 0
201 : LD 2, 6(5) ; Restore left operand from depth 0
202 : ADD 1, 2, 1 ; R1 = left + right
203 : LDA 4, 11(5) ; Compute future callee base using caller_size
204 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
205 : ST 1, 6(5) ; Spill left operand at depth 0
206 : LD 2, 6(5) ; Restore left operand from depth 0
207 : ADD 1, 2, 1 ; R1 = left + right
208 : LDA 4, 11(5) ; Compute future callee base using caller_size
209 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
210 : LDA 4, 11(5) ; Compute future callee base (caller_size)
211 : LDA 6, 215(0) ; Return address
212 : ST 6, 0(4) ; Store return in callee frame
213 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
214 : LDA 7, 110(0) ; Call fractionEqual
215 : LD 1, 5(5) ; Load callee result into R1
216 : LDC 2, 8(0) ; Callee frame size
217 : SUB 5, 5, 2 ; Pop callee frame
218 : JEQ 1, 273(0) ; If condition is false, jump to ELSE
219 : LD 1, 1(5) ; Load parameter 'selector' into R1
220 : ST 1, 10(5) ; Spill left operand at depth 0
221 : LDC 1, 1(0) ; Load integer-literal into R1
222 : LD 2, 10(5) ; Restore left operand from depth 0
223 : SUB 1, 2, 1 ; left - right for equality check
224 : JEQ 1, 2(7) ; If R1 == 0, jump to true
225 : LDC 1, 0(0) ; false
226 : LDA 7, 1(7) ; skip setting true
227 : LDC 1, 1(0) ; true
228 : JEQ 1, 235(0) ; If condition is false, jump to ELSE
229 : LD 1, 5(5) ; Load parameter 'a' into R1
230 : ST 1, 10(5) ; Spill left operand at depth 0
231 : LD 1, 7(5) ; Load parameter 'c' into R1
232 : LD 2, 10(5) ; Restore left operand from depth 0
233 : ADD 1, 2, 1 ; R1 = left + right
234 : LDA 7, 272(0) ; Skip ELSE block
235 : LD 1, 1(5) ; Load parameter 'selector' into R1
236 : ST 1, 10(5) ; Spill left operand at depth 0
237 : LDC 1, 2(0) ; Load integer-literal into R1
238 : LD 2, 10(5) ; Restore left operand from depth 0
239 : SUB 1, 2, 1 ; left - right for equality check
240 : JEQ 1, 2(7) ; If R1 == 0, jump to true
241 : LDC 1, 0(0) ; false
242 : LDA 7, 1(7) ; skip setting true
243 : LDC 1, 1(0) ; true
244 : JEQ 1, 251(0) ; If condition is false, jump to ELSE
245 : LD 1, 6(5) ; Load parameter 'b' into R1
246 : ST 1, 10(5) ; Spill left operand at depth 0
247 : LD 1, 8(5) ; Load parameter 'd' into R1
248 : LD 2, 10(5) ; Restore left operand from depth 0
249 : ADD 1, 2, 1 ; R1 = left + right
250 : LDA 7, 272(0) ; Skip ELSE block
251 : LD 1, 1(5) ; Load parameter 'selector' into R1
252 : ST 1, 10(5) ; Spill left operand at depth 0
253 : LDC 1, 3(0) ; Load integer-literal into R1
254 : LD 2, 10(5) ; Restore left operand from depth 0
255 : SUB 1, 2, 1 ; left - right for equality check
256 : JEQ 1, 2(7) ; If R1 == 0, jump to true
257 : LDC 1, 0(0) ; false
258 : LDA 7, 1(7) ; skip setting true
259 : LDC 1, 1(0) ; true
260 : JEQ 1, 267(0) ; If condition is false, jump to ELSE
261 : LD 1, 5(5) ; Load parameter 'a' into R1
262 : ST 1, 10(5) ; Spill left operand at depth 0
263 : LD 1, 7(5) ; Load parameter 'c' into R1
264 : LD 2, 10(5) ; Restore left operand from depth 0
265 : ADD 1, 2, 1 ; R1 = left + right
266 : LDA 7, 272(0) ; Skip ELSE block
267 : LD 1, 6(5) ; Load parameter 'b' into R1
268 : ST 1, 10(5) ; Spill left operand at depth 0
269 : LD 1, 8(5) ; Load parameter 'd' into R1
270 : LD 2, 10(5) ; Restore left operand from depth 0
271 : ADD 1, 2, 1 ; R1 = left + right
272 : LDA 7, 377(0) ; Skip ELSE block
273 : LDA 4, 11(5) ; Compute future callee base using caller_size
274 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
275 : LDA 4, 11(5) ; Compute future callee base using caller_size
276 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
277 : ST 1, 6(5) ; Spill left operand at depth 0
278 : LD 2, 6(5) ; Restore left operand from depth 0
279 : ADD 1, 2, 1 ; R1 = left + right
280 : LDA 4, 11(5) ; Compute future callee base using caller_size
281 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
282 : ST 1, 6(5) ; Spill left operand at depth 0
283 : LD 2, 6(5) ; Restore left operand from depth 0
284 : ADD 1, 2, 1 ; R1 = left + right
285 : LDA 4, 11(5) ; Compute future callee base using caller_size
286 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
287 : LDA 4, 11(5) ; Compute future callee base (caller_size)
288 : LDA 6, 292(0) ; Return address
289 : ST 6, 0(4) ; Store return in callee frame
290 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
291 : LDA 7, 87(0) ; Call fractionGreater
292 : LD 1, 5(5) ; Load callee result into R1
293 : LDC 2, 7(0) ; Callee frame size
294 : SUB 5, 5, 2 ; Pop callee frame
295 : JEQ 1, 337(0) ; If condition is false, jump to ELSE
296 : LD 1, 1(5) ; Load parameter 'selector' into R1
297 : LDA 4, 11(5) ; Compute future callee base using caller_size
298 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
299 : LD 1, 2(5) ; Load parameter 'xNum' into R1
300 : LDA 4, 11(5) ; Compute future callee base using caller_size
301 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
302 : LD 1, 3(5) ; Load parameter 'xDen' into R1
303 : LDA 4, 11(5) ; Compute future callee base using caller_size
304 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
305 : LD 1, 4(5) ; Load parameter 'N' into R1
306 : LDA 4, 11(5) ; Compute future callee base using caller_size
307 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
308 : LD 1, 5(5) ; Load parameter 'a' into R1
309 : ST 1, 10(5) ; Spill left operand at depth 0
310 : LD 1, 7(5) ; Load parameter 'c' into R1
311 : LD 2, 10(5) ; Restore left operand from depth 0
312 : ADD 1, 2, 1 ; R1 = left + right
313 : LDA 4, 11(5) ; Compute future callee base using caller_size
314 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
315 : LD 1, 6(5) ; Load parameter 'b' into R1
316 : ST 1, 10(5) ; Spill left operand at depth 0
317 : LD 1, 8(5) ; Load parameter 'd' into R1
318 : LD 2, 10(5) ; Restore left operand from depth 0
319 : ADD 1, 2, 1 ; R1 = left + right
320 : LDA 4, 11(5) ; Compute future callee base using caller_size
321 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
322 : LD 1, 7(5) ; Load parameter 'c' into R1
323 : LDA 4, 11(5) ; Compute future callee base using caller_size
324 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
325 : LD 1, 8(5) ; Load parameter 'd' into R1
326 : LDA 4, 11(5) ; Compute future callee base using caller_size
327 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
328 : LDA 4, 11(5) ; Compute future callee base (caller_size)
329 : LDA 6, 333(0) ; Return address
330 : ST 6, 0(4) ; Store return in callee frame
331 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
332 : LDA 7, 130(0) ; Call whileLoopFor
333 : LD 1, 9(5) ; Load callee result into R1
334 : LDC 2, 11(0) ; Callee frame size
335 : SUB 5, 5, 2 ; Pop callee frame
336 : LDA 7, 377(0) ; Skip ELSE block
337 : LD 1, 1(5) ; Load parameter 'selector' into R1
338 : LDA 4, 11(5) ; Compute future callee base using caller_size
339 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
340 : LD 1, 2(5) ; Load parameter 'xNum' into R1
341 : LDA 4, 11(5) ; Compute future callee base using caller_size
342 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
343 : LD 1, 3(5) ; Load parameter 'xDen' into R1
344 : LDA 4, 11(5) ; Compute future callee base using caller_size
345 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
346 : LD 1, 4(5) ; Load parameter 'N' into R1
347 : LDA 4, 11(5) ; Compute future callee base using caller_size
348 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
349 : LD 1, 5(5) ; Load parameter 'a' into R1
350 : LDA 4, 11(5) ; Compute future callee base using caller_size
351 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
352 : LD 1, 6(5) ; Load parameter 'b' into R1
353 : LDA 4, 11(5) ; Compute future callee base using caller_size
354 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
355 : LD 1, 5(5) ; Load parameter 'a' into R1
356 : ST 1, 10(5) ; Spill left operand at depth 0
357 : LD 1, 7(5) ; Load parameter 'c' into R1
358 : LD 2, 10(5) ; Restore left operand from depth 0
359 : ADD 1, 2, 1 ; R1 = left + right
360 : LDA 4, 11(5) ; Compute future callee base using caller_size
361 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
362 : LD 1, 6(5) ; Load parameter 'b' into R1
363 : ST 1, 10(5) ; Spill left operand at depth 0
364 : LD 1, 8(5) ; Load parameter 'd' into R1
365 : LD 2, 10(5) ; Restore left operand from depth 0
366 : ADD 1, 2, 1 ; R1 = left + right
367 : LDA 4, 11(5) ; Compute future callee base using caller_size
368 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
369 : LDA 4, 11(5) ; Compute future callee base (caller_size)
370 : LDA 6, 374(0) ; Return address
371 : ST 6, 0(4) ; Store return in callee frame
372 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
373 : LDA 7, 130(0) ; Call whileLoopFor
374 : LD 1, 9(5) ; Load callee result into R1
375 : LDC 2, 11(0) ; Callee frame size
376 : SUB 5, 5, 2 ; Pop callee frame
377 : ST 1, 9(5) ; Store function result into frame return slot
378 : LD 6, 0(5) ; Load return address
379 : LDA 7, 0(6) ; Return to caller
380 : LDA 4, 7(5) ; Compute future callee base using caller_size
381 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
382 : LDA 4, 7(5) ; Compute future callee base using caller_size
383 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
384 : LDA 4, 7(5) ; Compute future callee base (caller_size)
385 : LDA 6, 389(0) ; Return address
386 : ST 6, 0(4) ; Store return in callee frame
387 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
388 : LDA 7, 61(0) ; Call greater
389 : LD 1, 3(5) ; Load callee result into R1
390 : LDC 2, 6(0) ; Callee frame size
391 : SUB 5, 5, 2 ; Pop callee frame
392 : JEQ 1, 395(0) ; If condition is false, jump to ELSE
393 : LD 1, 5(5) ; Load parameter 'd' into R1
394 : LDA 7, 396(0) ; Skip ELSE block
395 : LD 1, 3(5) ; Load parameter 'b' into R1
396 : ST 1, 6(5) ; Store function result into frame return slot
397 : LD 6, 0(5) ; Load return address
398 : LDA 7, 0(6) ; Return to caller
399 : LDA 4, 7(5) ; Compute future callee base using caller_size
400 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
401 : LDA 4, 7(5) ; Compute future callee base using caller_size
402 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
403 : LDA 4, 7(5) ; Compute future callee base (caller_size)
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return in callee frame
406 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
407 : LDA 7, 61(0) ; Call greater
408 : LD 1, 3(5) ; Load callee result into R1
409 : LDC 2, 6(0) ; Callee frame size
410 : SUB 5, 5, 2 ; Pop callee frame
411 : JEQ 1, 414(0) ; If condition is false, jump to ELSE
412 : LD 1, 4(5) ; Load parameter 'c' into R1
413 : LDA 7, 415(0) ; Skip ELSE block
414 : LD 1, 2(5) ; Load parameter 'a' into R1
415 : ST 1, 6(5) ; Store function result into frame return slot
416 : LD 6, 0(5) ; Load return address
417 : LDA 7, 0(6) ; Return to caller
418 : LD 1, 1(5) ; Load parameter 'N' into R1
419 : LDA 4, 5(5) ; Compute future callee base using caller_size
420 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
421 : LDC 1, 1(0) ; Load integer-literal into R1
422 : LDA 4, 7(5) ; Compute future callee base using caller_size
423 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
424 : LD 1, 2(5) ; Load parameter 'xNum' into R1
425 : LDA 4, 7(5) ; Compute future callee base using caller_size
426 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
427 : LD 1, 3(5) ; Load parameter 'xDen' into R1
428 : LDA 4, 7(5) ; Compute future callee base using caller_size
429 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
430 : LD 1, 4(5) ; Load parameter 'N' into R1
431 : LDA 4, 7(5) ; Compute future callee base using caller_size
432 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
433 : LDC 1, 0(0) ; Load integer-literal into R1
434 : LDA 4, 7(5) ; Compute future callee base using caller_size
435 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
436 : LDC 1, 1(0) ; Load integer-literal into R1
437 : LDA 4, 7(5) ; Compute future callee base using caller_size
438 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
439 : LDC 1, 1(0) ; Load integer-literal into R1
440 : LDA 4, 7(5) ; Compute future callee base using caller_size
441 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
442 : LDC 1, 1(0) ; Load integer-literal into R1
443 : LDA 4, 7(5) ; Compute future callee base using caller_size
444 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
445 : LDA 4, 7(5) ; Compute future callee base (caller_size)
446 : LDA 6, 450(0) ; Return address
447 : ST 6, 0(4) ; Store return in callee frame
448 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
449 : LDA 7, 130(0) ; Call whileLoopFor
450 : LD 1, 9(5) ; Load callee result into R1
451 : LDC 2, 11(0) ; Callee frame size
452 : SUB 5, 5, 2 ; Pop callee frame
453 : LDA 4, 5(5) ; Compute future callee base using caller_size
454 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
455 : LDC 1, 2(0) ; Load integer-literal into R1
456 : LDA 4, 7(5) ; Compute future callee base using caller_size
457 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
458 : LD 1, 2(5) ; Load parameter 'xNum' into R1
459 : LDA 4, 7(5) ; Compute future callee base using caller_size
460 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
461 : LD 1, 3(5) ; Load parameter 'xDen' into R1
462 : LDA 4, 7(5) ; Compute future callee base using caller_size
463 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
464 : LD 1, 4(5) ; Load parameter 'N' into R1
465 : LDA 4, 7(5) ; Compute future callee base using caller_size
466 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
467 : LDC 1, 0(0) ; Load integer-literal into R1
468 : LDA 4, 7(5) ; Compute future callee base using caller_size
469 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
470 : LDC 1, 1(0) ; Load integer-literal into R1
471 : LDA 4, 7(5) ; Compute future callee base using caller_size
472 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
473 : LDC 1, 1(0) ; Load integer-literal into R1
474 : LDA 4, 7(5) ; Compute future callee base using caller_size
475 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
476 : LDC 1, 1(0) ; Load integer-literal into R1
477 : LDA 4, 7(5) ; Compute future callee base using caller_size
478 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
479 : LDA 4, 7(5) ; Compute future callee base (caller_size)
480 : LDA 6, 484(0) ; Return address
481 : ST 6, 0(4) ; Store return in callee frame
482 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
483 : LDA 7, 130(0) ; Call whileLoopFor
484 : LD 1, 9(5) ; Load callee result into R1
485 : LDC 2, 11(0) ; Callee frame size
486 : SUB 5, 5, 2 ; Pop callee frame
487 : LDA 4, 5(5) ; Compute future callee base using caller_size
488 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
489 : LDC 1, 3(0) ; Load integer-literal into R1
490 : LDA 4, 7(5) ; Compute future callee base using caller_size
491 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
492 : LD 1, 2(5) ; Load parameter 'xNum' into R1
493 : LDA 4, 7(5) ; Compute future callee base using caller_size
494 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
495 : LD 1, 3(5) ; Load parameter 'xDen' into R1
496 : LDA 4, 7(5) ; Compute future callee base using caller_size
497 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
498 : LD 1, 4(5) ; Load parameter 'N' into R1
499 : LDA 4, 7(5) ; Compute future callee base using caller_size
500 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
501 : LDC 1, 0(0) ; Load integer-literal into R1
502 : LDA 4, 7(5) ; Compute future callee base using caller_size
503 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
504 : LDC 1, 1(0) ; Load integer-literal into R1
505 : LDA 4, 7(5) ; Compute future callee base using caller_size
506 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
507 : LDC 1, 1(0) ; Load integer-literal into R1
508 : LDA 4, 7(5) ; Compute future callee base using caller_size
509 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
510 : LDC 1, 1(0) ; Load integer-literal into R1
511 : LDA 4, 7(5) ; Compute future callee base using caller_size
512 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
513 : LDA 4, 7(5) ; Compute future callee base (caller_size)
514 : LDA 6, 518(0) ; Return address
515 : ST 6, 0(4) ; Store return in callee frame
516 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
517 : LDA 7, 130(0) ; Call whileLoopFor
518 : LD 1, 9(5) ; Load callee result into R1
519 : LDC 2, 11(0) ; Callee frame size
520 : SUB 5, 5, 2 ; Pop callee frame
521 : LDA 4, 5(5) ; Compute future callee base using caller_size
522 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
523 : LDC 1, 4(0) ; Load integer-literal into R1
524 : LDA 4, 7(5) ; Compute future callee base using caller_size
525 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
526 : LD 1, 2(5) ; Load parameter 'xNum' into R1
527 : LDA 4, 7(5) ; Compute future callee base using caller_size
528 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
529 : LD 1, 3(5) ; Load parameter 'xDen' into R1
530 : LDA 4, 7(5) ; Compute future callee base using caller_size
531 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
532 : LD 1, 4(5) ; Load parameter 'N' into R1
533 : LDA 4, 7(5) ; Compute future callee base using caller_size
534 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
535 : LDC 1, 0(0) ; Load integer-literal into R1
536 : LDA 4, 7(5) ; Compute future callee base using caller_size
537 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
538 : LDC 1, 1(0) ; Load integer-literal into R1
539 : LDA 4, 7(5) ; Compute future callee base using caller_size
540 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
541 : LDC 1, 1(0) ; Load integer-literal into R1
542 : LDA 4, 7(5) ; Compute future callee base using caller_size
543 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
544 : LDC 1, 1(0) ; Load integer-literal into R1
545 : LDA 4, 7(5) ; Compute future callee base using caller_size
546 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
547 : LDA 4, 7(5) ; Compute future callee base (caller_size)
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return in callee frame
550 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
551 : LDA 7, 130(0) ; Call whileLoopFor
552 : LD 1, 9(5) ; Load callee result into R1
553 : LDC 2, 11(0) ; Callee frame size
554 : SUB 5, 5, 2 ; Pop callee frame
555 : LDA 4, 5(5) ; Compute future callee base using caller_size
556 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
557 : LDA 4, 5(5) ; Compute future callee base (caller_size)
558 : LDA 6, 562(0) ; Return address
559 : ST 6, 0(4) ; Store return in callee frame
560 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
561 : LDA 7, 380(0) ; Call fareySelectDen
562 : LD 1, 6(5) ; Load callee result into R1
563 : LDC 2, 7(0) ; Callee frame size
564 : SUB 5, 5, 2 ; Pop callee frame
565 : ST 1, 4(5) ; Store function result into frame return slot
566 : LD 6, 0(5) ; Load return address
567 : LDA 7, 0(6) ; Return to caller
568 : LD 1, 1(5) ; Load parameter 'N' into R1
569 : LDA 4, 5(5) ; Compute future callee base using caller_size
570 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
571 : LDC 1, 1(0) ; Load integer-literal into R1
572 : LDA 4, 7(5) ; Compute future callee base using caller_size
573 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
574 : LD 1, 2(5) ; Load parameter 'xNum' into R1
575 : LDA 4, 7(5) ; Compute future callee base using caller_size
576 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
577 : LD 1, 3(5) ; Load parameter 'xDen' into R1
578 : LDA 4, 7(5) ; Compute future callee base using caller_size
579 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
580 : LD 1, 4(5) ; Load parameter 'N' into R1
581 : LDA 4, 7(5) ; Compute future callee base using caller_size
582 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
583 : LDC 1, 0(0) ; Load integer-literal into R1
584 : LDA 4, 7(5) ; Compute future callee base using caller_size
585 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
586 : LDC 1, 1(0) ; Load integer-literal into R1
587 : LDA 4, 7(5) ; Compute future callee base using caller_size
588 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
589 : LDC 1, 1(0) ; Load integer-literal into R1
590 : LDA 4, 7(5) ; Compute future callee base using caller_size
591 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
592 : LDC 1, 1(0) ; Load integer-literal into R1
593 : LDA 4, 7(5) ; Compute future callee base using caller_size
594 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
595 : LDA 4, 7(5) ; Compute future callee base (caller_size)
596 : LDA 6, 600(0) ; Return address
597 : ST 6, 0(4) ; Store return in callee frame
598 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
599 : LDA 7, 130(0) ; Call whileLoopFor
600 : LD 1, 9(5) ; Load callee result into R1
601 : LDC 2, 11(0) ; Callee frame size
602 : SUB 5, 5, 2 ; Pop callee frame
603 : LDA 4, 5(5) ; Compute future callee base using caller_size
604 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
605 : LDC 1, 2(0) ; Load integer-literal into R1
606 : LDA 4, 7(5) ; Compute future callee base using caller_size
607 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
608 : LD 1, 2(5) ; Load parameter 'xNum' into R1
609 : LDA 4, 7(5) ; Compute future callee base using caller_size
610 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
611 : LD 1, 3(5) ; Load parameter 'xDen' into R1
612 : LDA 4, 7(5) ; Compute future callee base using caller_size
613 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
614 : LD 1, 4(5) ; Load parameter 'N' into R1
615 : LDA 4, 7(5) ; Compute future callee base using caller_size
616 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
617 : LDC 1, 0(0) ; Load integer-literal into R1
618 : LDA 4, 7(5) ; Compute future callee base using caller_size
619 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
620 : LDC 1, 1(0) ; Load integer-literal into R1
621 : LDA 4, 7(5) ; Compute future callee base using caller_size
622 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
623 : LDC 1, 1(0) ; Load integer-literal into R1
624 : LDA 4, 7(5) ; Compute future callee base using caller_size
625 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
626 : LDC 1, 1(0) ; Load integer-literal into R1
627 : LDA 4, 7(5) ; Compute future callee base using caller_size
628 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
629 : LDA 4, 7(5) ; Compute future callee base (caller_size)
630 : LDA 6, 634(0) ; Return address
631 : ST 6, 0(4) ; Store return in callee frame
632 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
633 : LDA 7, 130(0) ; Call whileLoopFor
634 : LD 1, 9(5) ; Load callee result into R1
635 : LDC 2, 11(0) ; Callee frame size
636 : SUB 5, 5, 2 ; Pop callee frame
637 : LDA 4, 5(5) ; Compute future callee base using caller_size
638 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
639 : LDC 1, 3(0) ; Load integer-literal into R1
640 : LDA 4, 7(5) ; Compute future callee base using caller_size
641 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
642 : LD 1, 2(5) ; Load parameter 'xNum' into R1
643 : LDA 4, 7(5) ; Compute future callee base using caller_size
644 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
645 : LD 1, 3(5) ; Load parameter 'xDen' into R1
646 : LDA 4, 7(5) ; Compute future callee base using caller_size
647 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
648 : LD 1, 4(5) ; Load parameter 'N' into R1
649 : LDA 4, 7(5) ; Compute future callee base using caller_size
650 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
651 : LDC 1, 0(0) ; Load integer-literal into R1
652 : LDA 4, 7(5) ; Compute future callee base using caller_size
653 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
654 : LDC 1, 1(0) ; Load integer-literal into R1
655 : LDA 4, 7(5) ; Compute future callee base using caller_size
656 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
657 : LDC 1, 1(0) ; Load integer-literal into R1
658 : LDA 4, 7(5) ; Compute future callee base using caller_size
659 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
660 : LDC 1, 1(0) ; Load integer-literal into R1
661 : LDA 4, 7(5) ; Compute future callee base using caller_size
662 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
663 : LDA 4, 7(5) ; Compute future callee base (caller_size)
664 : LDA 6, 668(0) ; Return address
665 : ST 6, 0(4) ; Store return in callee frame
666 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
667 : LDA 7, 130(0) ; Call whileLoopFor
668 : LD 1, 9(5) ; Load callee result into R1
669 : LDC 2, 11(0) ; Callee frame size
670 : SUB 5, 5, 2 ; Pop callee frame
671 : LDA 4, 5(5) ; Compute future callee base using caller_size
672 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
673 : LDC 1, 4(0) ; Load integer-literal into R1
674 : LDA 4, 7(5) ; Compute future callee base using caller_size
675 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
676 : LD 1, 2(5) ; Load parameter 'xNum' into R1
677 : LDA 4, 7(5) ; Compute future callee base using caller_size
678 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
679 : LD 1, 3(5) ; Load parameter 'xDen' into R1
680 : LDA 4, 7(5) ; Compute future callee base using caller_size
681 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
682 : LD 1, 4(5) ; Load parameter 'N' into R1
683 : LDA 4, 7(5) ; Compute future callee base using caller_size
684 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
685 : LDC 1, 0(0) ; Load integer-literal into R1
686 : LDA 4, 7(5) ; Compute future callee base using caller_size
687 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
688 : LDC 1, 1(0) ; Load integer-literal into R1
689 : LDA 4, 7(5) ; Compute future callee base using caller_size
690 : ST 1, 6(4) ; Store argument 5 into callee's param slot (future frame)
691 : LDC 1, 1(0) ; Load integer-literal into R1
692 : LDA 4, 7(5) ; Compute future callee base using caller_size
693 : ST 1, 7(4) ; Store argument 6 into callee's param slot (future frame)
694 : LDC 1, 1(0) ; Load integer-literal into R1
695 : LDA 4, 7(5) ; Compute future callee base using caller_size
696 : ST 1, 8(4) ; Store argument 7 into callee's param slot (future frame)
697 : LDA 4, 7(5) ; Compute future callee base (caller_size)
698 : LDA 6, 702(0) ; Return address
699 : ST 6, 0(4) ; Store return in callee frame
700 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
701 : LDA 7, 130(0) ; Call whileLoopFor
702 : LD 1, 9(5) ; Load callee result into R1
703 : LDC 2, 11(0) ; Callee frame size
704 : SUB 5, 5, 2 ; Pop callee frame
705 : LDA 4, 5(5) ; Compute future callee base using caller_size
706 : ST 1, 5(4) ; Store argument 4 into callee's param slot (future frame)
707 : LDA 4, 5(5) ; Compute future callee base (caller_size)
708 : LDA 6, 712(0) ; Return address
709 : ST 6, 0(4) ; Store return in callee frame
710 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
711 : LDA 7, 399(0) ; Call fareySelectNum
712 : LD 1, 6(5) ; Load callee result into R1
713 : LDC 2, 7(0) ; Callee frame size
714 : SUB 5, 5, 2 ; Pop callee frame
715 : ST 1, 4(5) ; Store function result into frame return slot
716 : LD 6, 0(5) ; Load return address
717 : LDA 7, 0(6) ; Return to caller
