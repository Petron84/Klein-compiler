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
12 : LDC 1, 10(0) ; Load integer-literal into R1
13 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
14 : LD 1, 1(5) ; Load parameter 'length' into R1
15 : ST 1, 3(5) ; Spill left operand at depth 0
16 : LDC 1, 2(0) ; Load integer-literal into R1
17 : LD 2, 3(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : ST 1, 3(5) ; Spill left operand at depth 0
20 : LDC 1, 1(0) ; Load integer-literal into R1
21 : LD 2, 3(5) ; Restore left operand from depth 0
22 : SUB 1, 2, 1 ; R1 = left - right
23 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
24 : LDA 4, 6(5) ; Compute future callee base from caller size
25 : LD 2, 4(5) ; Load staged arg 0 from caller frame
26 : ST 2, 1(4) ; Store arg 0 into callee frame
27 : LD 2, 5(5) ; Load staged arg 1 from caller frame
28 : ST 2, 2(4) ; Store arg 1 into callee frame
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 939(0) ; Call EXP
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 6(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop callee frame
36 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
37 : LD 1, 1(5) ; Load parameter 'length' into R1
38 : ST 1, 3(5) ; Spill left operand at depth 0
39 : LDC 1, 2(0) ; Load integer-literal into R1
40 : LD 2, 3(5) ; Restore left operand from depth 0
41 : DIV 1, 2, 1 ; R1 = left / right
42 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
43 : LDA 4, 6(5) ; Compute future callee base from caller size
44 : LD 2, 4(5) ; Load staged arg 0 from caller frame
45 : ST 2, 1(4) ; Store arg 0 into callee frame
46 : LD 2, 5(5) ; Load staged arg 1 from caller frame
47 : ST 2, 2(4) ; Store arg 1 into callee frame
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
51 : LDA 7, 59(0) ; Call createLoop
52 : LD 1, 3(5) ; Load callee result into R1
53 : LDC 2, 5(0) ; Callee frame size
54 : SUB 5, 5, 2 ; Pop callee frame
55 : ST 1, 2(5) ; Store result into caller’s frame
56 : LD 1, 2(5) ; Load main return value into R1
57 : LD 6, 0(5) ; Load main return address
58 : LDA 7, 0(6) ; Return from main
59 : LD 1, 1(5) ; Load parameter 'a' into R1
60 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
63 : LDC 1, 10(0) ; Load integer-literal into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'a' into R1
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : MUL 1, 2, 1 ; R1 = left * right
68 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
69 : LDA 4, 8(5) ; Compute future callee base from caller size
70 : LD 2, 5(5) ; Load staged arg 0 from caller frame
71 : ST 2, 1(4) ; Store arg 0 into callee frame
72 : LD 2, 6(5) ; Load staged arg 1 from caller frame
73 : ST 2, 2(4) ; Store arg 1 into callee frame
74 : LD 2, 7(5) ; Load staged arg 2 from caller frame
75 : ST 2, 3(4) ; Store arg 2 into callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 86(0) ; Call aLoop
80 : LD 1, 4(5) ; Load callee result into R1
81 : LDC 2, 7(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop callee frame
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'a' into R1
87 : ST 1, 5(5) ; Spill left operand at depth 0
88 : LD 1, 3(5) ; Load parameter 'upper' into R1
89 : LD 2, 5(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
96 : LD 1, 1(5) ; Load parameter 'a' into R1
97 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
98 : LD 1, 2(5) ; Load parameter 'n' into R1
99 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
100 : LD 1, 3(5) ; Load parameter 'upper' into R1
101 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
102 : LDC 1, 4(0) ; Load integer-literal into R1
103 : ST 1, 5(5) ; Spill left operand at depth 0
104 : LD 1, 1(5) ; Load parameter 'a' into R1
105 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
106 : LDC 1, 2(0) ; Load integer-literal into R1
107 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
108 : LDA 4, 11(5) ; Compute future callee base from caller size
109 : LD 2, 7(5) ; Load staged arg 0 from caller frame
110 : ST 2, 1(4) ; Store arg 0 into callee frame
111 : LD 2, 8(5) ; Load staged arg 1 from caller frame
112 : ST 2, 2(4) ; Store arg 1 into callee frame
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 939(0) ; Call EXP
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 6(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : LD 2, 5(5) ; Restore left operand from depth 0
121 : MUL 1, 2, 1 ; R1 = left * right
122 : ST 1, 5(5) ; Spill left operand at depth 0
123 : LDC 1, 4(0) ; Load integer-literal into R1
124 : ST 1, 6(5) ; Spill left operand at depth 1
125 : LDC 1, 10(0) ; Load integer-literal into R1
126 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
127 : LD 1, 2(5) ; Load parameter 'n' into R1
128 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
129 : LDA 4, 11(5) ; Compute future callee base from caller size
130 : LD 2, 7(5) ; Load staged arg 0 from caller frame
131 : ST 2, 1(4) ; Store arg 0 into callee frame
132 : LD 2, 8(5) ; Load staged arg 1 from caller frame
133 : ST 2, 2(4) ; Store arg 1 into callee frame
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 939(0) ; Call EXP
138 : LD 1, 3(5) ; Load callee result into R1
139 : LDC 2, 6(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : LD 2, 6(5) ; Restore left operand from depth 1
142 : MUL 1, 2, 1 ; R1 = left * right
143 : ST 1, 6(5) ; Spill left operand at depth 1
144 : LD 1, 1(5) ; Load parameter 'a' into R1
145 : LD 2, 6(5) ; Restore left operand from depth 1
146 : MUL 1, 2, 1 ; R1 = left * right
147 : LD 2, 5(5) ; Restore left operand from depth 0
148 : ADD 1, 2, 1 ; R1 = left + right
149 : ST 1, 5(5) ; Spill left operand at depth 0
150 : LDC 1, 1(0) ; Load integer-literal into R1
151 : LD 2, 5(5) ; Restore left operand from depth 0
152 : ADD 1, 2, 1 ; R1 = left + right
153 : ST 1, 10(5) ; Stage arg 3 in caller frame outgoing area
154 : LDA 4, 11(5) ; Compute future callee base from caller size
155 : LD 2, 7(5) ; Load staged arg 0 from caller frame
156 : ST 2, 1(4) ; Store arg 0 into callee frame
157 : LD 2, 8(5) ; Load staged arg 1 from caller frame
158 : ST 2, 2(4) ; Store arg 1 into callee frame
159 : LD 2, 9(5) ; Load staged arg 2 from caller frame
160 : ST 2, 3(4) ; Store arg 2 into callee frame
161 : LD 2, 10(5) ; Load staged arg 3 from caller frame
162 : ST 2, 4(4) ; Store arg 3 into callee frame
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 175(0) ; Call aLoop1
167 : LD 1, 5(5) ; Load callee result into R1
168 : LDC 2, 6(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : LDA 7, 172(0) ; Skip ELSE block
171 : LDC 1, 1(0) ; Load boolean-literal into R1
172 : ST 1, 4(5) ; Store function result into frame return slot
173 : LD 6, 0(5) ; Load return address
174 : LDA 7, 0(6) ; Return to caller
175 : LD 1, 1(5) ; Load parameter 'a' into R1
176 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
177 : LD 1, 2(5) ; Load parameter 'n' into R1
178 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
179 : LD 1, 3(5) ; Load parameter 'upper' into R1
180 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
181 : LD 1, 4(5) ; Load parameter 'det' into R1
182 : ST 1, 9(5) ; Stage arg 3 in caller frame outgoing area
183 : LD 1, 4(5) ; Load parameter 'det' into R1
184 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
185 : LDA 4, 11(5) ; Compute future callee base from caller size
186 : LD 2, 6(5) ; Load staged arg 0 from caller frame
187 : ST 2, 1(4) ; Store arg 0 into callee frame
188 : LDA 6, 192(0) ; Return address
189 : ST 6, 0(4) ; Store return in callee frame
190 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
191 : LDA 7, 848(0) ; Call SQRT
192 : LD 1, 2(5) ; Load callee result into R1
193 : LDC 2, 3(0) ; Callee frame size
194 : SUB 5, 5, 2 ; Pop callee frame
195 : ST 1, 10(5) ; Stage arg 4 in caller frame outgoing area
196 : LDA 4, 11(5) ; Compute future callee base from caller size
197 : LD 2, 6(5) ; Load staged arg 0 from caller frame
198 : ST 2, 1(4) ; Store arg 0 into callee frame
199 : LD 2, 7(5) ; Load staged arg 1 from caller frame
200 : ST 2, 2(4) ; Store arg 1 into callee frame
201 : LD 2, 8(5) ; Load staged arg 2 from caller frame
202 : ST 2, 3(4) ; Store arg 2 into callee frame
203 : LD 2, 9(5) ; Load staged arg 3 from caller frame
204 : ST 2, 4(4) ; Store arg 3 into callee frame
205 : LD 2, 10(5) ; Load staged arg 4 from caller frame
206 : ST 2, 5(4) ; Store arg 4 into callee frame
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return in callee frame
209 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
210 : LDA 7, 217(0) ; Call aLoop2
211 : LD 1, 6(5) ; Load callee result into R1
212 : LDC 2, 9(0) ; Callee frame size
213 : SUB 5, 5, 2 ; Pop callee frame
214 : ST 1, 5(5) ; Store function result into frame return slot
215 : LD 6, 0(5) ; Load return address
216 : LDA 7, 0(6) ; Return to caller
217 : LD 1, 1(5) ; Load parameter 'a' into R1
218 : ST 1, 9(5) ; Stage arg 0 in caller frame outgoing area
219 : LD 1, 2(5) ; Load parameter 'n' into R1
220 : ST 1, 10(5) ; Stage arg 1 in caller frame outgoing area
221 : LD 1, 3(5) ; Load parameter 'upper' into R1
222 : ST 1, 11(5) ; Stage arg 2 in caller frame outgoing area
223 : LD 1, 4(5) ; Load parameter 'det' into R1
224 : ST 1, 12(5) ; Stage arg 3 in caller frame outgoing area
225 : LD 1, 5(5) ; Load parameter 'root' into R1
226 : ST 1, 13(5) ; Stage arg 4 in caller frame outgoing area
227 : LD 1, 1(5) ; Load parameter 'a' into R1
228 : ST 1, 7(5) ; Spill left operand at depth 0
229 : LDC 1, 10(0) ; Load integer-literal into R1
230 : ST 1, 9(5) ; Stage arg 0 in caller frame outgoing area
231 : LD 1, 2(5) ; Load parameter 'n' into R1
232 : ST 1, 10(5) ; Stage arg 1 in caller frame outgoing area
233 : LDA 4, 15(5) ; Compute future callee base from caller size
234 : LD 2, 9(5) ; Load staged arg 0 from caller frame
235 : ST 2, 1(4) ; Store arg 0 into callee frame
236 : LD 2, 10(5) ; Load staged arg 1 from caller frame
237 : ST 2, 2(4) ; Store arg 1 into callee frame
238 : LDA 6, 242(0) ; Return address
239 : ST 6, 0(4) ; Store return in callee frame
240 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
241 : LDA 7, 939(0) ; Call EXP
242 : LD 1, 3(5) ; Load callee result into R1
243 : LDC 2, 6(0) ; Callee frame size
244 : SUB 5, 5, 2 ; Pop callee frame
245 : LD 2, 7(5) ; Restore left operand from depth 0
246 : MUL 1, 2, 1 ; R1 = left * right
247 : ST 1, 7(5) ; Spill left operand at depth 0
248 : LD 1, 5(5) ; Load parameter 'root' into R1
249 : ST 1, 8(5) ; Spill left operand at depth 1
250 : LDC 1, 1(0) ; Load integer-literal into R1
251 : LD 2, 8(5) ; Restore left operand from depth 1
252 : ADD 1, 2, 1 ; R1 = left + right
253 : ST 1, 8(5) ; Spill left operand at depth 1
254 : LDC 1, 2(0) ; Load integer-literal into R1
255 : LD 2, 8(5) ; Restore left operand from depth 1
256 : DIV 1, 2, 1 ; R1 = left / right
257 : LD 2, 7(5) ; Restore left operand from depth 0
258 : ADD 1, 2, 1 ; R1 = left + right
259 : ST 1, 14(5) ; Stage arg 5 in caller frame outgoing area
260 : LDA 4, 15(5) ; Compute future callee base from caller size
261 : LD 2, 9(5) ; Load staged arg 0 from caller frame
262 : ST 2, 1(4) ; Store arg 0 into callee frame
263 : LD 2, 10(5) ; Load staged arg 1 from caller frame
264 : ST 2, 2(4) ; Store arg 1 into callee frame
265 : LD 2, 11(5) ; Load staged arg 2 from caller frame
266 : ST 2, 3(4) ; Store arg 2 into callee frame
267 : LD 2, 12(5) ; Load staged arg 3 from caller frame
268 : ST 2, 4(4) ; Store arg 3 into callee frame
269 : LD 2, 13(5) ; Load staged arg 4 from caller frame
270 : ST 2, 5(4) ; Store arg 4 into callee frame
271 : LD 2, 14(5) ; Load staged arg 5 from caller frame
272 : ST 2, 6(4) ; Store arg 5 into callee frame
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return in callee frame
275 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
276 : LDA 7, 283(0) ; Call aLoop3
277 : LD 1, 7(5) ; Load callee result into R1
278 : LDC 2, 10(0) ; Callee frame size
279 : SUB 5, 5, 2 ; Pop callee frame
280 : ST 1, 6(5) ; Store function result into frame return slot
281 : LD 6, 0(5) ; Load return address
282 : LDA 7, 0(6) ; Return to caller
283 : LD 1, 5(5) ; Load parameter 'root' into R1
284 : ST 1, 10(5) ; Stage arg 0 in caller frame outgoing area
285 : LD 1, 4(5) ; Load parameter 'det' into R1
286 : ST 1, 11(5) ; Stage arg 1 in caller frame outgoing area
287 : LDA 4, 14(5) ; Compute future callee base from caller size
288 : LD 2, 10(5) ; Load staged arg 0 from caller frame
289 : ST 2, 1(4) ; Store arg 0 into callee frame
290 : LD 2, 11(5) ; Load staged arg 1 from caller frame
291 : ST 2, 2(4) ; Store arg 1 into callee frame
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return in callee frame
294 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
295 : LDA 7, 654(0) ; Call ISROOT
296 : LD 1, 3(5) ; Load callee result into R1
297 : LDC 2, 6(0) ; Callee frame size
298 : SUB 5, 5, 2 ; Pop callee frame
299 : ST 1, 8(5) ; Spill left operand at depth 0
300 : LD 1, 5(5) ; Load parameter 'root' into R1
301 : ST 1, 9(5) ; Spill left operand at depth 1
302 : LDC 1, 1(0) ; Load integer-literal into R1
303 : LD 2, 9(5) ; Restore left operand from depth 1
304 : ADD 1, 2, 1 ; R1 = left + right
305 : ST 1, 10(5) ; Stage arg 0 in caller frame outgoing area
306 : LDA 4, 14(5) ; Compute future callee base from caller size
307 : LD 2, 10(5) ; Load staged arg 0 from caller frame
308 : ST 2, 1(4) ; Store arg 0 into callee frame
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
312 : LDA 7, 670(0) ; Call EVEN
313 : LD 1, 2(5) ; Load callee result into R1
314 : LDC 2, 6(0) ; Callee frame size
315 : SUB 5, 5, 2 ; Pop callee frame
316 : LD 2, 8(5) ; Restore left operand from depth 0
317 : MUL 1, 2, 1 ; R1 = left AND right
318 : ST 1, 8(5) ; Spill left operand at depth 0
319 : LD 1, 6(5) ; Load parameter 'candidate' into R1
320 : ST 1, 10(5) ; Stage arg 0 in caller frame outgoing area
321 : LDA 4, 14(5) ; Compute future callee base from caller size
322 : LD 2, 10(5) ; Load staged arg 0 from caller frame
323 : ST 2, 1(4) ; Store arg 0 into callee frame
324 : LDA 6, 328(0) ; Return address
325 : ST 6, 0(4) ; Store return in callee frame
326 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
327 : LDA 7, 422(0) ; Call isExcellent
328 : LD 1, 2(5) ; Load callee result into R1
329 : LDC 2, 3(0) ; Callee frame size
330 : SUB 5, 5, 2 ; Pop callee frame
331 : LD 2, 8(5) ; Restore left operand from depth 0
332 : MUL 1, 2, 1 ; R1 = left AND right
333 : JEQ 1, 359(0) ; If condition is false, jump to ELSE
334 : LD 1, 1(5) ; Load parameter 'a' into R1
335 : ST 1, 10(5) ; Stage arg 0 in caller frame outgoing area
336 : LD 1, 2(5) ; Load parameter 'n' into R1
337 : ST 1, 11(5) ; Stage arg 1 in caller frame outgoing area
338 : LD 1, 3(5) ; Load parameter 'upper' into R1
339 : ST 1, 12(5) ; Stage arg 2 in caller frame outgoing area
340 : LD 1, 6(5) ; Load parameter 'candidate' into R1
341 : ST 1, 13(5) ; Stage arg 3 in caller frame outgoing area
342 : LDA 4, 14(5) ; Compute future callee base from caller size
343 : LD 2, 10(5) ; Load staged arg 0 from caller frame
344 : ST 2, 1(4) ; Store arg 0 into callee frame
345 : LD 2, 11(5) ; Load staged arg 1 from caller frame
346 : ST 2, 2(4) ; Store arg 1 into callee frame
347 : LD 2, 12(5) ; Load staged arg 2 from caller frame
348 : ST 2, 3(4) ; Store arg 2 into callee frame
349 : LD 2, 13(5) ; Load staged arg 3 from caller frame
350 : ST 2, 4(4) ; Store arg 3 into callee frame
351 : LDA 6, 355(0) ; Return address
352 : ST 6, 0(4) ; Store return in callee frame
353 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
354 : LDA 7, 386(0) ; Call printCandidateAndContinue
355 : LD 1, 5(5) ; Load callee result into R1
356 : LDC 2, 7(0) ; Callee frame size
357 : SUB 5, 5, 2 ; Pop callee frame
358 : LDA 7, 383(0) ; Skip ELSE block
359 : LD 1, 1(5) ; Load parameter 'a' into R1
360 : ST 1, 8(5) ; Spill left operand at depth 0
361 : LDC 1, 1(0) ; Load integer-literal into R1
362 : LD 2, 8(5) ; Restore left operand from depth 0
363 : ADD 1, 2, 1 ; R1 = left + right
364 : ST 1, 10(5) ; Stage arg 0 in caller frame outgoing area
365 : LD 1, 2(5) ; Load parameter 'n' into R1
366 : ST 1, 11(5) ; Stage arg 1 in caller frame outgoing area
367 : LD 1, 3(5) ; Load parameter 'upper' into R1
368 : ST 1, 12(5) ; Stage arg 2 in caller frame outgoing area
369 : LDA 4, 14(5) ; Compute future callee base from caller size
370 : LD 2, 10(5) ; Load staged arg 0 from caller frame
371 : ST 2, 1(4) ; Store arg 0 into callee frame
372 : LD 2, 11(5) ; Load staged arg 1 from caller frame
373 : ST 2, 2(4) ; Store arg 1 into callee frame
374 : LD 2, 12(5) ; Load staged arg 2 from caller frame
375 : ST 2, 3(4) ; Store arg 2 into callee frame
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
379 : LDA 7, 86(0) ; Call aLoop
380 : LD 1, 4(5) ; Load callee result into R1
381 : LDC 2, 7(0) ; Callee frame size
382 : SUB 5, 5, 2 ; Pop callee frame
383 : ST 1, 7(5) ; Store function result into frame return slot
384 : LD 6, 0(5) ; Load return address
385 : LDA 7, 0(6) ; Return to caller
386 : LDA 4, 10(5) ; Compute future callee base from caller size
387 : LD 2, 7(5) ; Load staged arg 0 from caller frame
388 : ST 2, 1(4) ; Store arg 0 into callee frame
389 : LDA 6, 393(0) ; Return address
390 : ST 6, 0(4) ; Store return in callee frame
391 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
392 : LDA 7, 9(0) ; Call built-in print
393 : LDC 2, 3(0) ; Callee frame size
394 : SUB 5, 5, 2 ; Pop callee frame
395 : LD 1, 1(5) ; Load parameter 'a' into R1
396 : ST 1, 6(5) ; Spill left operand at depth 0
397 : LDC 1, 1(0) ; Load integer-literal into R1
398 : LD 2, 6(5) ; Restore left operand from depth 0
399 : ADD 1, 2, 1 ; R1 = left + right
400 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
401 : LD 1, 2(5) ; Load parameter 'n' into R1
402 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
403 : LD 1, 3(5) ; Load parameter 'upper' into R1
404 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
405 : LDA 4, 10(5) ; Compute future callee base from caller size
406 : LD 2, 7(5) ; Load staged arg 0 from caller frame
407 : ST 2, 1(4) ; Store arg 0 into callee frame
408 : LD 2, 8(5) ; Load staged arg 1 from caller frame
409 : ST 2, 2(4) ; Store arg 1 into callee frame
410 : LD 2, 9(5) ; Load staged arg 2 from caller frame
411 : ST 2, 3(4) ; Store arg 2 into callee frame
412 : LDA 6, 416(0) ; Return address
413 : ST 6, 0(4) ; Store return in callee frame
414 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
415 : LDA 7, 86(0) ; Call aLoop
416 : LD 1, 4(5) ; Load callee result into R1
417 : LDC 2, 7(0) ; Callee frame size
418 : SUB 5, 5, 2 ; Pop callee frame
419 : ST 1, 5(5) ; Store function result into frame return slot
420 : LD 6, 0(5) ; Load return address
421 : LDA 7, 0(6) ; Return to caller
422 : LD 1, 1(5) ; Load parameter 'n' into R1
423 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
424 : LD 1, 1(5) ; Load parameter 'n' into R1
425 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
426 : LDA 4, 5(5) ; Compute future callee base from caller size
427 : LD 2, 3(5) ; Load staged arg 0 from caller frame
428 : ST 2, 1(4) ; Store arg 0 into callee frame
429 : LDA 6, 433(0) ; Return address
430 : ST 6, 0(4) ; Store return in callee frame
431 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
432 : LDA 7, 619(0) ; Call length
433 : LD 1, 2(5) ; Load callee result into R1
434 : LDC 2, 5(0) ; Callee frame size
435 : SUB 5, 5, 2 ; Pop callee frame
436 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
437 : LDA 4, 5(5) ; Compute future callee base from caller size
438 : LD 2, 3(5) ; Load staged arg 0 from caller frame
439 : ST 2, 1(4) ; Store arg 0 into callee frame
440 : LD 2, 4(5) ; Load staged arg 1 from caller frame
441 : ST 2, 2(4) ; Store arg 1 into callee frame
442 : LDA 6, 446(0) ; Return address
443 : ST 6, 0(4) ; Store return in callee frame
444 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
445 : LDA 7, 452(0) ; Call isExcellentSwitch
446 : LD 1, 3(5) ; Load callee result into R1
447 : LDC 2, 5(0) ; Callee frame size
448 : SUB 5, 5, 2 ; Pop callee frame
449 : ST 1, 2(5) ; Store function result into frame return slot
450 : LD 6, 0(5) ; Load return address
451 : LDA 7, 0(6) ; Return to caller
452 : LD 1, 2(5) ; Load parameter 'length' into R1
453 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
454 : LDA 4, 7(5) ; Compute future callee base from caller size
455 : LD 2, 5(5) ; Load staged arg 0 from caller frame
456 : ST 2, 1(4) ; Store arg 0 into callee frame
457 : LDA 6, 461(0) ; Return address
458 : ST 6, 0(4) ; Store return in callee frame
459 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
460 : LDA 7, 895(0) ; Call ODD
461 : LD 1, 2(5) ; Load callee result into R1
462 : LDC 2, 5(0) ; Callee frame size
463 : SUB 5, 5, 2 ; Pop callee frame
464 : JEQ 1, 467(0) ; If condition is false, jump to ELSE
465 : LDC 1, 0(0) ; Load boolean-literal into R1
466 : LDA 7, 513(0) ; Skip ELSE block
467 : LD 1, 1(5) ; Load parameter 'n' into R1
468 : ST 1, 4(5) ; Spill left operand at depth 0
469 : LD 1, 1(5) ; Load parameter 'n' into R1
470 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
471 : LDA 4, 7(5) ; Compute future callee base from caller size
472 : LD 2, 5(5) ; Load staged arg 0 from caller frame
473 : ST 2, 1(4) ; Store arg 0 into callee frame
474 : LDA 6, 478(0) ; Return address
475 : ST 6, 0(4) ; Store return in callee frame
476 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
477 : LDA 7, 581(0) ; Call a
478 : LD 1, 2(5) ; Load callee result into R1
479 : LDC 2, 5(0) ; Callee frame size
480 : SUB 5, 5, 2 ; Pop callee frame
481 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
482 : LD 1, 1(5) ; Load parameter 'n' into R1
483 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
484 : LDA 4, 7(5) ; Compute future callee base from caller size
485 : LD 2, 5(5) ; Load staged arg 0 from caller frame
486 : ST 2, 1(4) ; Store arg 0 into callee frame
487 : LDA 6, 491(0) ; Return address
488 : ST 6, 0(4) ; Store return in callee frame
489 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
490 : LDA 7, 532(0) ; Call b
491 : LD 1, 2(5) ; Load callee result into R1
492 : LDC 2, 4(0) ; Callee frame size
493 : SUB 5, 5, 2 ; Pop callee frame
494 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
495 : LDA 4, 7(5) ; Compute future callee base from caller size
496 : LD 2, 5(5) ; Load staged arg 0 from caller frame
497 : ST 2, 1(4) ; Store arg 0 into callee frame
498 : LD 2, 6(5) ; Load staged arg 1 from caller frame
499 : ST 2, 2(4) ; Store arg 1 into callee frame
500 : LDA 6, 504(0) ; Return address
501 : ST 6, 0(4) ; Store return in callee frame
502 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
503 : LDA 7, 516(0) ; Call excellentDiff
504 : LD 1, 3(5) ; Load callee result into R1
505 : LDC 2, 6(0) ; Callee frame size
506 : SUB 5, 5, 2 ; Pop callee frame
507 : LD 2, 4(5) ; Restore left operand from depth 0
508 : SUB 1, 2, 1 ; left - right for equality check
509 : JEQ 1, 2(7) ; If R1 == 0, jump to true
510 : LDC 1, 0(0) ; false
511 : LDA 7, 1(7) ; skip setting true
512 : LDC 1, 1(0) ; true
513 : ST 1, 3(5) ; Store function result into frame return slot
514 : LD 6, 0(5) ; Load return address
515 : LDA 7, 0(6) ; Return to caller
516 : LD 1, 2(5) ; Load parameter 'b' into R1
517 : ST 1, 4(5) ; Spill left operand at depth 0
518 : LD 1, 2(5) ; Load parameter 'b' into R1
519 : LD 2, 4(5) ; Restore left operand from depth 0
520 : MUL 1, 2, 1 ; R1 = left * right
521 : ST 1, 4(5) ; Spill left operand at depth 0
522 : LD 1, 1(5) ; Load parameter 'a' into R1
523 : ST 1, 5(5) ; Spill left operand at depth 1
524 : LD 1, 1(5) ; Load parameter 'a' into R1
525 : LD 2, 5(5) ; Restore left operand from depth 1
526 : MUL 1, 2, 1 ; R1 = left * right
527 : LD 2, 4(5) ; Restore left operand from depth 0
528 : SUB 1, 2, 1 ; R1 = left - right
529 : ST 1, 3(5) ; Store function result into frame return slot
530 : LD 6, 0(5) ; Load return address
531 : LDA 7, 0(6) ; Return to caller
532 : LD 1, 1(5) ; Load parameter 'n' into R1
533 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
534 : LDC 1, 10(0) ; Load integer-literal into R1
535 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
536 : LD 1, 1(5) ; Load parameter 'n' into R1
537 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
538 : LDA 4, 6(5) ; Compute future callee base from caller size
539 : LD 2, 4(5) ; Load staged arg 0 from caller frame
540 : ST 2, 1(4) ; Store arg 0 into callee frame
541 : LDA 6, 545(0) ; Return address
542 : ST 6, 0(4) ; Store return in callee frame
543 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
544 : LDA 7, 619(0) ; Call length
545 : LD 1, 2(5) ; Load callee result into R1
546 : LDC 2, 5(0) ; Callee frame size
547 : SUB 5, 5, 2 ; Pop callee frame
548 : ST 1, 3(5) ; Spill left operand at depth 0
549 : LDC 1, 2(0) ; Load integer-literal into R1
550 : LD 2, 3(5) ; Restore left operand from depth 0
551 : DIV 1, 2, 1 ; R1 = left / right
552 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
553 : LDA 4, 6(5) ; Compute future callee base from caller size
554 : LD 2, 4(5) ; Load staged arg 0 from caller frame
555 : ST 2, 1(4) ; Store arg 0 into callee frame
556 : LD 2, 5(5) ; Load staged arg 1 from caller frame
557 : ST 2, 2(4) ; Store arg 1 into callee frame
558 : LDA 6, 562(0) ; Return address
559 : ST 6, 0(4) ; Store return in callee frame
560 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
561 : LDA 7, 939(0) ; Call EXP
562 : LD 1, 3(5) ; Load callee result into R1
563 : LDC 2, 6(0) ; Callee frame size
564 : SUB 5, 5, 2 ; Pop callee frame
565 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
566 : LDA 4, 6(5) ; Compute future callee base from caller size
567 : LD 2, 4(5) ; Load staged arg 0 from caller frame
568 : ST 2, 1(4) ; Store arg 0 into callee frame
569 : LD 2, 5(5) ; Load staged arg 1 from caller frame
570 : ST 2, 2(4) ; Store arg 1 into callee frame
571 : LDA 6, 575(0) ; Return address
572 : ST 6, 0(4) ; Store return in callee frame
573 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
574 : LDA 7, 978(0) ; Call MOD
575 : LD 1, 3(5) ; Load callee result into R1
576 : LDC 2, 7(0) ; Callee frame size
577 : SUB 5, 5, 2 ; Pop callee frame
578 : ST 1, 2(5) ; Store function result into frame return slot
579 : LD 6, 0(5) ; Load return address
580 : LDA 7, 0(6) ; Return to caller
581 : LD 1, 1(5) ; Load parameter 'n' into R1
582 : ST 1, 3(5) ; Spill left operand at depth 0
583 : LDC 1, 10(0) ; Load integer-literal into R1
584 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
585 : LD 1, 1(5) ; Load parameter 'n' into R1
586 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
587 : LDA 4, 7(5) ; Compute future callee base from caller size
588 : LD 2, 5(5) ; Load staged arg 0 from caller frame
589 : ST 2, 1(4) ; Store arg 0 into callee frame
590 : LDA 6, 594(0) ; Return address
591 : ST 6, 0(4) ; Store return in callee frame
592 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
593 : LDA 7, 619(0) ; Call length
594 : LD 1, 2(5) ; Load callee result into R1
595 : LDC 2, 5(0) ; Callee frame size
596 : SUB 5, 5, 2 ; Pop callee frame
597 : ST 1, 4(5) ; Spill left operand at depth 1
598 : LDC 1, 2(0) ; Load integer-literal into R1
599 : LD 2, 4(5) ; Restore left operand from depth 1
600 : DIV 1, 2, 1 ; R1 = left / right
601 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
602 : LDA 4, 7(5) ; Compute future callee base from caller size
603 : LD 2, 5(5) ; Load staged arg 0 from caller frame
604 : ST 2, 1(4) ; Store arg 0 into callee frame
605 : LD 2, 6(5) ; Load staged arg 1 from caller frame
606 : ST 2, 2(4) ; Store arg 1 into callee frame
607 : LDA 6, 611(0) ; Return address
608 : ST 6, 0(4) ; Store return in callee frame
609 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
610 : LDA 7, 939(0) ; Call EXP
611 : LD 1, 3(5) ; Load callee result into R1
612 : LDC 2, 6(0) ; Callee frame size
613 : SUB 5, 5, 2 ; Pop callee frame
614 : LD 2, 3(5) ; Restore left operand from depth 0
615 : DIV 1, 2, 1 ; R1 = left / right
616 : ST 1, 2(5) ; Store function result into frame return slot
617 : LD 6, 0(5) ; Load return address
618 : LDA 7, 0(6) ; Return to caller
619 : LD 1, 1(5) ; Load parameter 'n' into R1
620 : ST 1, 3(5) ; Spill left operand at depth 0
621 : LDC 1, 10(0) ; Load integer-literal into R1
622 : LD 2, 3(5) ; Restore left operand from depth 0
623 : SUB 1, 2, 1 ; left - right for less-than check
624 : JLT 1, 2(7) ; If R1 < 0, jump to true
625 : LDC 1, 0(0) ; false
626 : LDA 7, 1(7) ; skip setting true
627 : LDC 1, 1(0) ; true
628 : JEQ 1, 631(0) ; If condition is false, jump to ELSE
629 : LDC 1, 1(0) ; Load integer-literal into R1
630 : LDA 7, 651(0) ; Skip ELSE block
631 : LDC 1, 1(0) ; Load integer-literal into R1
632 : ST 1, 3(5) ; Spill left operand at depth 0
633 : LD 1, 1(5) ; Load parameter 'n' into R1
634 : ST 1, 4(5) ; Spill left operand at depth 1
635 : LDC 1, 10(0) ; Load integer-literal into R1
636 : LD 2, 4(5) ; Restore left operand from depth 1
637 : DIV 1, 2, 1 ; R1 = left / right
638 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
639 : LDA 4, 6(5) ; Compute future callee base from caller size
640 : LD 2, 5(5) ; Load staged arg 0 from caller frame
641 : ST 2, 1(4) ; Store arg 0 into callee frame
642 : LDA 6, 646(0) ; Return address
643 : ST 6, 0(4) ; Store return in callee frame
644 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
645 : LDA 7, 619(0) ; Call length
646 : LD 1, 2(5) ; Load callee result into R1
647 : LDC 2, 5(0) ; Callee frame size
648 : SUB 5, 5, 2 ; Pop callee frame
649 : LD 2, 3(5) ; Restore left operand from depth 0
650 : ADD 1, 2, 1 ; R1 = left + right
651 : ST 1, 2(5) ; Store function result into frame return slot
652 : LD 6, 0(5) ; Load return address
653 : LDA 7, 0(6) ; Return to caller
654 : LD 1, 2(5) ; Load parameter 'n' into R1
655 : ST 1, 4(5) ; Spill left operand at depth 0
656 : LD 1, 1(5) ; Load parameter 'r' into R1
657 : ST 1, 5(5) ; Spill left operand at depth 1
658 : LD 1, 1(5) ; Load parameter 'r' into R1
659 : LD 2, 5(5) ; Restore left operand from depth 1
660 : MUL 1, 2, 1 ; R1 = left * right
661 : LD 2, 4(5) ; Restore left operand from depth 0
662 : SUB 1, 2, 1 ; left - right for equality check
663 : JEQ 1, 2(7) ; If R1 == 0, jump to true
664 : LDC 1, 0(0) ; false
665 : LDA 7, 1(7) ; skip setting true
666 : LDC 1, 1(0) ; true
667 : ST 1, 3(5) ; Store function result into frame return slot
668 : LD 6, 0(5) ; Load return address
669 : LDA 7, 0(6) ; Return to caller
670 : LD 1, 1(5) ; Load parameter 'n' into R1
671 : ST 1, 3(5) ; Spill left operand at depth 0
672 : LDC 1, 2(0) ; Load integer-literal into R1
673 : ST 1, 4(5) ; Spill left operand at depth 1
674 : LD 1, 1(5) ; Load parameter 'n' into R1
675 : ST 1, 5(5) ; Spill left operand at depth 2
676 : LDC 1, 2(0) ; Load integer-literal into R1
677 : LD 2, 5(5) ; Restore left operand from depth 2
678 : DIV 1, 2, 1 ; R1 = left / right
679 : LD 2, 4(5) ; Restore left operand from depth 1
680 : MUL 1, 2, 1 ; R1 = left * right
681 : LD 2, 3(5) ; Restore left operand from depth 0
682 : SUB 1, 2, 1 ; left - right for equality check
683 : JEQ 1, 2(7) ; If R1 == 0, jump to true
684 : LDC 1, 0(0) ; false
685 : LDA 7, 1(7) ; skip setting true
686 : LDC 1, 1(0) ; true
687 : ST 1, 2(5) ; Store function result into frame return slot
688 : LD 6, 0(5) ; Load return address
689 : LDA 7, 0(6) ; Return to caller
690 : LD 1, 4(5) ; Load parameter 'mid' into R1
691 : ST 1, 6(5) ; Spill left operand at depth 0
692 : LD 1, 4(5) ; Load parameter 'mid' into R1
693 : LD 2, 6(5) ; Restore left operand from depth 0
694 : MUL 1, 2, 1 ; R1 = left * right
695 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
696 : LD 1, 1(5) ; Load parameter 'n' into R1
697 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
698 : LDA 4, 10(5) ; Compute future callee base from caller size
699 : LD 2, 7(5) ; Load staged arg 0 from caller frame
700 : ST 2, 1(4) ; Store arg 0 into callee frame
701 : LD 2, 8(5) ; Load staged arg 1 from caller frame
702 : ST 2, 2(4) ; Store arg 1 into callee frame
703 : LDA 6, 707(0) ; Return address
704 : ST 6, 0(4) ; Store return in callee frame
705 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
706 : LDA 7, 871(0) ; Call LE
707 : LD 1, 3(5) ; Load callee result into R1
708 : LDC 2, 6(0) ; Callee frame size
709 : SUB 5, 5, 2 ; Pop callee frame
710 : JEQ 1, 732(0) ; If condition is false, jump to ELSE
711 : LD 1, 1(5) ; Load parameter 'n' into R1
712 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
713 : LD 1, 4(5) ; Load parameter 'mid' into R1
714 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
715 : LD 1, 3(5) ; Load parameter 'high' into R1
716 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
717 : LDA 4, 10(5) ; Compute future callee base from caller size
718 : LD 2, 7(5) ; Load staged arg 0 from caller frame
719 : ST 2, 1(4) ; Store arg 0 into callee frame
720 : LD 2, 8(5) ; Load staged arg 1 from caller frame
721 : ST 2, 2(4) ; Store arg 1 into callee frame
722 : LD 2, 9(5) ; Load staged arg 2 from caller frame
723 : ST 2, 3(4) ; Store arg 2 into callee frame
724 : LDA 6, 728(0) ; Return address
725 : ST 6, 0(4) ; Store return in callee frame
726 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
727 : LDA 7, 755(0) ; Call SQRTSEARCH
728 : LD 1, 4(5) ; Load callee result into R1
729 : LDC 2, 7(0) ; Callee frame size
730 : SUB 5, 5, 2 ; Pop callee frame
731 : LDA 7, 752(0) ; Skip ELSE block
732 : LD 1, 1(5) ; Load parameter 'n' into R1
733 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
734 : LD 1, 2(5) ; Load parameter 'low' into R1
735 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
736 : LD 1, 4(5) ; Load parameter 'mid' into R1
737 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
738 : LDA 4, 10(5) ; Compute future callee base from caller size
739 : LD 2, 7(5) ; Load staged arg 0 from caller frame
740 : ST 2, 1(4) ; Store arg 0 into callee frame
741 : LD 2, 8(5) ; Load staged arg 1 from caller frame
742 : ST 2, 2(4) ; Store arg 1 into callee frame
743 : LD 2, 9(5) ; Load staged arg 2 from caller frame
744 : ST 2, 3(4) ; Store arg 2 into callee frame
745 : LDA 6, 749(0) ; Return address
746 : ST 6, 0(4) ; Store return in callee frame
747 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
748 : LDA 7, 755(0) ; Call SQRTSEARCH
749 : LD 1, 4(5) ; Load callee result into R1
750 : LDC 2, 7(0) ; Callee frame size
751 : SUB 5, 5, 2 ; Pop callee frame
752 : ST 1, 5(5) ; Store function result into frame return slot
753 : LD 6, 0(5) ; Load return address
754 : LDA 7, 0(6) ; Return to caller
755 : LD 1, 3(5) ; Load parameter 'high' into R1
756 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
757 : LD 1, 2(5) ; Load parameter 'low' into R1
758 : ST 1, 5(5) ; Spill left operand at depth 0
759 : LDC 1, 1(0) ; Load integer-literal into R1
760 : LD 2, 5(5) ; Restore left operand from depth 0
761 : ADD 1, 2, 1 ; R1 = left + right
762 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
763 : LDA 4, 11(5) ; Compute future callee base from caller size
764 : LD 2, 7(5) ; Load staged arg 0 from caller frame
765 : ST 2, 1(4) ; Store arg 0 into callee frame
766 : LD 2, 8(5) ; Load staged arg 1 from caller frame
767 : ST 2, 2(4) ; Store arg 1 into callee frame
768 : LDA 6, 772(0) ; Return address
769 : ST 6, 0(4) ; Store return in callee frame
770 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
771 : LDA 7, 871(0) ; Call LE
772 : LD 1, 3(5) ; Load callee result into R1
773 : LDC 2, 6(0) ; Callee frame size
774 : SUB 5, 5, 2 ; Pop callee frame
775 : JEQ 1, 813(0) ; If condition is false, jump to ELSE
776 : LD 1, 1(5) ; Load parameter 'n' into R1
777 : ST 1, 5(5) ; Spill left operand at depth 0
778 : LD 1, 2(5) ; Load parameter 'low' into R1
779 : ST 1, 6(5) ; Spill left operand at depth 1
780 : LD 1, 2(5) ; Load parameter 'low' into R1
781 : LD 2, 6(5) ; Restore left operand from depth 1
782 : MUL 1, 2, 1 ; R1 = left * right
783 : LD 2, 5(5) ; Restore left operand from depth 0
784 : SUB 1, 2, 1 ; R1 = left - right
785 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
786 : LD 1, 3(5) ; Load parameter 'high' into R1
787 : ST 1, 5(5) ; Spill left operand at depth 0
788 : LD 1, 3(5) ; Load parameter 'high' into R1
789 : LD 2, 5(5) ; Restore left operand from depth 0
790 : MUL 1, 2, 1 ; R1 = left * right
791 : ST 1, 5(5) ; Spill left operand at depth 0
792 : LD 1, 1(5) ; Load parameter 'n' into R1
793 : LD 2, 5(5) ; Restore left operand from depth 0
794 : SUB 1, 2, 1 ; R1 = left - right
795 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
796 : LDA 4, 11(5) ; Compute future callee base from caller size
797 : LD 2, 7(5) ; Load staged arg 0 from caller frame
798 : ST 2, 1(4) ; Store arg 0 into callee frame
799 : LD 2, 8(5) ; Load staged arg 1 from caller frame
800 : ST 2, 2(4) ; Store arg 1 into callee frame
801 : LDA 6, 805(0) ; Return address
802 : ST 6, 0(4) ; Store return in callee frame
803 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
804 : LDA 7, 871(0) ; Call LE
805 : LD 1, 3(5) ; Load callee result into R1
806 : LDC 2, 6(0) ; Callee frame size
807 : SUB 5, 5, 2 ; Pop callee frame
808 : JEQ 1, 811(0) ; If condition is false, jump to ELSE
809 : LD 1, 2(5) ; Load parameter 'low' into R1
810 : LDA 7, 812(0) ; Skip ELSE block
811 : LD 1, 3(5) ; Load parameter 'high' into R1
812 : LDA 7, 845(0) ; Skip ELSE block
813 : LD 1, 1(5) ; Load parameter 'n' into R1
814 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
815 : LD 1, 2(5) ; Load parameter 'low' into R1
816 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
817 : LD 1, 3(5) ; Load parameter 'high' into R1
818 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
819 : LD 1, 2(5) ; Load parameter 'low' into R1
820 : ST 1, 5(5) ; Spill left operand at depth 0
821 : LD 1, 3(5) ; Load parameter 'high' into R1
822 : LD 2, 5(5) ; Restore left operand from depth 0
823 : ADD 1, 2, 1 ; R1 = left + right
824 : ST 1, 5(5) ; Spill left operand at depth 0
825 : LDC 1, 2(0) ; Load integer-literal into R1
826 : LD 2, 5(5) ; Restore left operand from depth 0
827 : DIV 1, 2, 1 ; R1 = left / right
828 : ST 1, 10(5) ; Stage arg 3 in caller frame outgoing area
829 : LDA 4, 11(5) ; Compute future callee base from caller size
830 : LD 2, 7(5) ; Load staged arg 0 from caller frame
831 : ST 2, 1(4) ; Store arg 0 into callee frame
832 : LD 2, 8(5) ; Load staged arg 1 from caller frame
833 : ST 2, 2(4) ; Store arg 1 into callee frame
834 : LD 2, 9(5) ; Load staged arg 2 from caller frame
835 : ST 2, 3(4) ; Store arg 2 into callee frame
836 : LD 2, 10(5) ; Load staged arg 3 from caller frame
837 : ST 2, 4(4) ; Store arg 3 into callee frame
838 : LDA 6, 842(0) ; Return address
839 : ST 6, 0(4) ; Store return in callee frame
840 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
841 : LDA 7, 690(0) ; Call SQRTSPLIT
842 : LD 1, 5(5) ; Load callee result into R1
843 : LDC 2, 7(0) ; Callee frame size
844 : SUB 5, 5, 2 ; Pop callee frame
845 : ST 1, 4(5) ; Store function result into frame return slot
846 : LD 6, 0(5) ; Load return address
847 : LDA 7, 0(6) ; Return to caller
848 : LD 1, 1(5) ; Load parameter 'n' into R1
849 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
850 : LDC 1, 0(0) ; Load integer-literal into R1
851 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
852 : LD 1, 1(5) ; Load parameter 'n' into R1
853 : ST 1, 5(5) ; Stage arg 2 in caller frame outgoing area
854 : LDA 4, 6(5) ; Compute future callee base from caller size
855 : LD 2, 3(5) ; Load staged arg 0 from caller frame
856 : ST 2, 1(4) ; Store arg 0 into callee frame
857 : LD 2, 4(5) ; Load staged arg 1 from caller frame
858 : ST 2, 2(4) ; Store arg 1 into callee frame
859 : LD 2, 5(5) ; Load staged arg 2 from caller frame
860 : ST 2, 3(4) ; Store arg 2 into callee frame
861 : LDA 6, 865(0) ; Return address
862 : ST 6, 0(4) ; Store return in callee frame
863 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
864 : LDA 7, 755(0) ; Call SQRTSEARCH
865 : LD 1, 4(5) ; Load callee result into R1
866 : LDC 2, 7(0) ; Callee frame size
867 : SUB 5, 5, 2 ; Pop callee frame
868 : ST 1, 2(5) ; Store function result into frame return slot
869 : LD 6, 0(5) ; Load return address
870 : LDA 7, 0(6) ; Return to caller
871 : LD 1, 1(5) ; Load parameter 'p' into R1
872 : ST 1, 4(5) ; Spill left operand at depth 0
873 : LD 1, 2(5) ; Load parameter 'q' into R1
874 : LD 2, 4(5) ; Restore left operand from depth 0
875 : SUB 1, 2, 1 ; left - right for less-than check
876 : JLT 1, 2(7) ; If R1 < 0, jump to true
877 : LDC 1, 0(0) ; false
878 : LDA 7, 1(7) ; skip setting true
879 : LDC 1, 1(0) ; true
880 : ST 1, 4(5) ; Spill left operand at depth 0
881 : LD 1, 1(5) ; Load parameter 'p' into R1
882 : ST 1, 5(5) ; Spill left operand at depth 1
883 : LD 1, 2(5) ; Load parameter 'q' into R1
884 : LD 2, 5(5) ; Restore left operand from depth 1
885 : SUB 1, 2, 1 ; left - right for equality check
886 : JEQ 1, 2(7) ; If R1 == 0, jump to true
887 : LDC 1, 0(0) ; false
888 : LDA 7, 1(7) ; skip setting true
889 : LDC 1, 1(0) ; true
890 : LD 2, 4(5) ; Restore left operand from depth 0
891 : ADD 1, 2, 1 ; R1 = left OR right
892 : ST 1, 3(5) ; Store function result into frame return slot
893 : LD 6, 0(5) ; Load return address
894 : LDA 7, 0(6) ; Return to caller
895 : LDC 1, 0(0) ; Load integer-literal into R1
896 : ST 1, 3(5) ; Spill left operand at depth 0
897 : LD 1, 1(5) ; Load parameter 'n' into R1
898 : LD 2, 3(5) ; Restore left operand from depth 0
899 : SUB 1, 2, 1 ; left - right for less-than check
900 : JLT 1, 2(7) ; If R1 < 0, jump to true
901 : LDC 1, 0(0) ; false
902 : LDA 7, 1(7) ; skip setting true
903 : LDC 1, 1(0) ; true
904 : JEQ 1, 923(0) ; If condition is false, jump to ELSE
905 : LDC 1, 2(0) ; Load integer-literal into R1
906 : ST 1, 3(5) ; Spill left operand at depth 0
907 : LD 1, 1(5) ; Load parameter 'n' into R1
908 : ST 1, 4(5) ; Spill left operand at depth 1
909 : LDC 1, 2(0) ; Load integer-literal into R1
910 : LD 2, 4(5) ; Restore left operand from depth 1
911 : DIV 1, 2, 1 ; R1 = left / right
912 : LD 2, 3(5) ; Restore left operand from depth 0
913 : MUL 1, 2, 1 ; R1 = left * right
914 : ST 1, 3(5) ; Spill left operand at depth 0
915 : LD 1, 1(5) ; Load parameter 'n' into R1
916 : LD 2, 3(5) ; Restore left operand from depth 0
917 : SUB 1, 2, 1 ; left - right for less-than check
918 : JLT 1, 2(7) ; If R1 < 0, jump to true
919 : LDC 1, 0(0) ; false
920 : LDA 7, 1(7) ; skip setting true
921 : LDC 1, 1(0) ; true
922 : LDA 7, 936(0) ; Skip ELSE block
923 : LD 1, 1(5) ; Load parameter 'n' into R1
924 : SUB 1, 0, 1 ; Negate value in R1
925 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
926 : LDA 4, 6(5) ; Compute future callee base from caller size
927 : LD 2, 5(5) ; Load staged arg 0 from caller frame
928 : ST 2, 1(4) ; Store arg 0 into callee frame
929 : LDA 6, 933(0) ; Return address
930 : ST 6, 0(4) ; Store return in callee frame
931 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
932 : LDA 7, 895(0) ; Call ODD
933 : LD 1, 2(5) ; Load callee result into R1
934 : LDC 2, 5(0) ; Callee frame size
935 : SUB 5, 5, 2 ; Pop callee frame
936 : ST 1, 2(5) ; Store function result into frame return slot
937 : LD 6, 0(5) ; Load return address
938 : LDA 7, 0(6) ; Return to caller
939 : LD 1, 2(5) ; Load parameter 'n' into R1
940 : ST 1, 4(5) ; Spill left operand at depth 0
941 : LDC 1, 0(0) ; Load integer-literal into R1
942 : LD 2, 4(5) ; Restore left operand from depth 0
943 : SUB 1, 2, 1 ; left - right for equality check
944 : JEQ 1, 2(7) ; If R1 == 0, jump to true
945 : LDC 1, 0(0) ; false
946 : LDA 7, 1(7) ; skip setting true
947 : LDC 1, 1(0) ; true
948 : JEQ 1, 951(0) ; If condition is false, jump to ELSE
949 : LDC 1, 1(0) ; Load integer-literal into R1
950 : LDA 7, 975(0) ; Skip ELSE block
951 : LD 1, 1(5) ; Load parameter 'm' into R1
952 : ST 1, 4(5) ; Spill left operand at depth 0
953 : LD 1, 1(5) ; Load parameter 'm' into R1
954 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
955 : LD 1, 2(5) ; Load parameter 'n' into R1
956 : ST 1, 5(5) ; Spill left operand at depth 1
957 : LDC 1, 1(0) ; Load integer-literal into R1
958 : LD 2, 5(5) ; Restore left operand from depth 1
959 : SUB 1, 2, 1 ; R1 = left - right
960 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
961 : LDA 4, 8(5) ; Compute future callee base from caller size
962 : LD 2, 6(5) ; Load staged arg 0 from caller frame
963 : ST 2, 1(4) ; Store arg 0 into callee frame
964 : LD 2, 7(5) ; Load staged arg 1 from caller frame
965 : ST 2, 2(4) ; Store arg 1 into callee frame
966 : LDA 6, 970(0) ; Return address
967 : ST 6, 0(4) ; Store return in callee frame
968 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
969 : LDA 7, 939(0) ; Call EXP
970 : LD 1, 3(5) ; Load callee result into R1
971 : LDC 2, 6(0) ; Callee frame size
972 : SUB 5, 5, 2 ; Pop callee frame
973 : LD 2, 4(5) ; Restore left operand from depth 0
974 : MUL 1, 2, 1 ; R1 = left * right
975 : ST 1, 3(5) ; Store function result into frame return slot
976 : LD 6, 0(5) ; Load return address
977 : LDA 7, 0(6) ; Return to caller
978 : LD 1, 1(5) ; Load parameter 'm' into R1
979 : ST 1, 4(5) ; Spill left operand at depth 0
980 : LD 1, 2(5) ; Load parameter 'n' into R1
981 : ST 1, 5(5) ; Spill left operand at depth 1
982 : LD 1, 1(5) ; Load parameter 'm' into R1
983 : ST 1, 6(5) ; Spill left operand at depth 2
984 : LD 1, 2(5) ; Load parameter 'n' into R1
985 : LD 2, 6(5) ; Restore left operand from depth 2
986 : DIV 1, 2, 1 ; R1 = left / right
987 : LD 2, 5(5) ; Restore left operand from depth 1
988 : MUL 1, 2, 1 ; R1 = left * right
989 : LD 2, 4(5) ; Restore left operand from depth 0
990 : SUB 1, 2, 1 ; R1 = left - right
991 : ST 1, 3(5) ; Store function result into frame return slot
992 : LD 6, 0(5) ; Load return address
993 : LDA 7, 0(6) ; Return to caller
