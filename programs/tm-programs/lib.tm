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
12 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
13 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
14 : LDA 4, 5(5) ; Compute future callee base from caller size
15 : LD 2, 3(5) ; Load staged arg 0 from caller frame
16 : ST 2, 1(4) ; Store arg 0 into callee frame
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 9(0) ; Call built-in print
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
24 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
25 : LDA 4, 5(5) ; Compute future callee base from caller size
26 : LD 2, 3(5) ; Load staged arg 0 from caller frame
27 : ST 2, 1(4) ; Store arg 0 into callee frame
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 253(0) ; Call ODD
32 : LD 1, 2(5) ; Load callee result into R1
33 : LDC 2, 4(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : ST 1, 2(5) ; Store result into caller’s frame
36 : LD 1, 2(5) ; Load main return value into R1
37 : LD 6, 0(5) ; Load main return address
38 : LDA 7, 0(6) ; Return from main
39 : LD 1, 4(5) ; Load parameter 'mid' into R1
40 : ST 1, 6(5) ; Spill left operand at depth 0
41 : LD 1, 4(5) ; Load parameter 'mid' into R1
42 : LD 2, 6(5) ; Restore left operand from depth 0
43 : MUL 1, 2, 1 ; R1 = left * right
44 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
45 : LD 1, 1(5) ; Load parameter 'n' into R1
46 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
47 : LDA 4, 10(5) ; Compute future callee base from caller size
48 : LD 2, 7(5) ; Load staged arg 0 from caller frame
49 : ST 2, 1(4) ; Store arg 0 into callee frame
50 : LD 2, 8(5) ; Load staged arg 1 from caller frame
51 : ST 2, 2(4) ; Store arg 1 into callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
55 : LDA 7, 584(0) ; Call LE
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 5(0) ; Callee frame size
58 : SUB 5, 5, 2 ; Pop callee frame
59 : JEQ 1, 81(0) ; If condition is false, jump to ELSE
60 : LD 1, 1(5) ; Load parameter 'n' into R1
61 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
62 : LD 1, 4(5) ; Load parameter 'mid' into R1
63 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
64 : LD 1, 3(5) ; Load parameter 'high' into R1
65 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
66 : LDA 4, 10(5) ; Compute future callee base from caller size
67 : LD 2, 7(5) ; Load staged arg 0 from caller frame
68 : ST 2, 1(4) ; Store arg 0 into callee frame
69 : LD 2, 8(5) ; Load staged arg 1 from caller frame
70 : ST 2, 2(4) ; Store arg 1 into callee frame
71 : LD 2, 9(5) ; Load staged arg 2 from caller frame
72 : ST 2, 3(4) ; Store arg 2 into callee frame
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
76 : LDA 7, 104(0) ; Call SQRTSEARCH
77 : LD 1, 4(5) ; Load callee result into R1
78 : LDC 2, 6(0) ; Callee frame size
79 : SUB 5, 5, 2 ; Pop callee frame
80 : LDA 7, 101(0) ; Skip ELSE block
81 : LD 1, 1(5) ; Load parameter 'n' into R1
82 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
83 : LD 1, 2(5) ; Load parameter 'low' into R1
84 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
85 : LD 1, 4(5) ; Load parameter 'mid' into R1
86 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
87 : LDA 4, 10(5) ; Compute future callee base from caller size
88 : LD 2, 7(5) ; Load staged arg 0 from caller frame
89 : ST 2, 1(4) ; Store arg 0 into callee frame
90 : LD 2, 8(5) ; Load staged arg 1 from caller frame
91 : ST 2, 2(4) ; Store arg 1 into callee frame
92 : LD 2, 9(5) ; Load staged arg 2 from caller frame
93 : ST 2, 3(4) ; Store arg 2 into callee frame
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
97 : LDA 7, 104(0) ; Call SQRTSEARCH
98 : LD 1, 4(5) ; Load callee result into R1
99 : LDC 2, 6(0) ; Callee frame size
100 : SUB 5, 5, 2 ; Pop callee frame
101 : ST 1, 5(5) ; Store function result into frame return slot
102 : LD 6, 0(5) ; Load return address
103 : LDA 7, 0(6) ; Return to caller
104 : LD 1, 3(5) ; Load parameter 'high' into R1
105 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
106 : LD 1, 2(5) ; Load parameter 'low' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left + right
111 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
112 : LDA 4, 10(5) ; Compute future callee base from caller size
113 : LD 2, 6(5) ; Load staged arg 0 from caller frame
114 : ST 2, 1(4) ; Store arg 0 into callee frame
115 : LD 2, 7(5) ; Load staged arg 1 from caller frame
116 : ST 2, 2(4) ; Store arg 1 into callee frame
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return in callee frame
119 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
120 : LDA 7, 584(0) ; Call LE
121 : LD 1, 3(5) ; Load callee result into R1
122 : LDC 2, 5(0) ; Callee frame size
123 : SUB 5, 5, 2 ; Pop callee frame
124 : JEQ 1, 184(0) ; If condition is false, jump to ELSE
125 : LD 1, 1(5) ; Load parameter 'n' into R1
126 : ST 1, 5(5) ; Spill left operand at depth 0
127 : LD 1, 2(5) ; Load parameter 'low' into R1
128 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
129 : LD 1, 2(5) ; Load parameter 'low' into R1
130 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
131 : LDA 4, 10(5) ; Compute future callee base from caller size
132 : LD 2, 6(5) ; Load staged arg 0 from caller frame
133 : ST 2, 1(4) ; Store arg 0 into callee frame
134 : LD 2, 7(5) ; Load staged arg 1 from caller frame
135 : ST 2, 2(4) ; Store arg 1 into callee frame
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return in callee frame
138 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
139 : LDA 7, 502(0) ; Call TIMES
140 : LD 1, 3(5) ; Load callee result into R1
141 : LDC 2, 5(0) ; Callee frame size
142 : SUB 5, 5, 2 ; Pop callee frame
143 : LD 2, 5(5) ; Restore left operand from depth 0
144 : SUB 1, 2, 1 ; R1 = left - right
145 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
146 : LD 1, 3(5) ; Load parameter 'high' into R1
147 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
148 : LD 1, 3(5) ; Load parameter 'high' into R1
149 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
150 : LDA 4, 10(5) ; Compute future callee base from caller size
151 : LD 2, 6(5) ; Load staged arg 0 from caller frame
152 : ST 2, 1(4) ; Store arg 0 into callee frame
153 : LD 2, 7(5) ; Load staged arg 1 from caller frame
154 : ST 2, 2(4) ; Store arg 1 into callee frame
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
158 : LDA 7, 502(0) ; Call TIMES
159 : LD 1, 3(5) ; Load callee result into R1
160 : LDC 2, 5(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop callee frame
162 : ST 1, 5(5) ; Spill left operand at depth 0
163 : LD 1, 1(5) ; Load parameter 'n' into R1
164 : LD 2, 5(5) ; Restore left operand from depth 0
165 : SUB 1, 2, 1 ; R1 = left - right
166 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
167 : LDA 4, 10(5) ; Compute future callee base from caller size
168 : LD 2, 6(5) ; Load staged arg 0 from caller frame
169 : ST 2, 1(4) ; Store arg 0 into callee frame
170 : LD 2, 7(5) ; Load staged arg 1 from caller frame
171 : ST 2, 2(4) ; Store arg 1 into callee frame
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return in callee frame
174 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
175 : LDA 7, 584(0) ; Call LE
176 : LD 1, 3(5) ; Load callee result into R1
177 : LDC 2, 5(0) ; Callee frame size
178 : SUB 5, 5, 2 ; Pop callee frame
179 : JEQ 1, 182(0) ; If condition is false, jump to ELSE
180 : LD 1, 2(5) ; Load parameter 'low' into R1
181 : LDA 7, 183(0) ; Skip ELSE block
182 : LD 1, 3(5) ; Load parameter 'high' into R1
183 : LDA 7, 227(0) ; Skip ELSE block
184 : LD 1, 1(5) ; Load parameter 'n' into R1
185 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
186 : LD 1, 2(5) ; Load parameter 'low' into R1
187 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
188 : LD 1, 3(5) ; Load parameter 'high' into R1
189 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
190 : LD 1, 2(5) ; Load parameter 'low' into R1
191 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
192 : LD 1, 3(5) ; Load parameter 'high' into R1
193 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
194 : LDA 4, 10(5) ; Compute future callee base from caller size
195 : LD 2, 6(5) ; Load staged arg 0 from caller frame
196 : ST 2, 1(4) ; Store arg 0 into callee frame
197 : LD 2, 7(5) ; Load staged arg 1 from caller frame
198 : ST 2, 2(4) ; Store arg 1 into callee frame
199 : LDA 6, 203(0) ; Return address
200 : ST 6, 0(4) ; Store return in callee frame
201 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
202 : LDA 7, 518(0) ; Call PLUS
203 : LD 1, 3(5) ; Load callee result into R1
204 : LDC 2, 5(0) ; Callee frame size
205 : SUB 5, 5, 2 ; Pop callee frame
206 : ST 1, 5(5) ; Spill left operand at depth 0
207 : LDC 1, 2(0) ; Load integer-literal into R1
208 : LD 2, 5(5) ; Restore left operand from depth 0
209 : DIV 1, 2, 1 ; R1 = left / right
210 : ST 1, 9(5) ; Stage arg 3 in caller frame outgoing area
211 : LDA 4, 10(5) ; Compute future callee base from caller size
212 : LD 2, 6(5) ; Load staged arg 0 from caller frame
213 : ST 2, 1(4) ; Store arg 0 into callee frame
214 : LD 2, 7(5) ; Load staged arg 1 from caller frame
215 : ST 2, 2(4) ; Store arg 1 into callee frame
216 : LD 2, 8(5) ; Load staged arg 2 from caller frame
217 : ST 2, 3(4) ; Store arg 2 into callee frame
218 : LD 2, 9(5) ; Load staged arg 3 from caller frame
219 : ST 2, 4(4) ; Store arg 3 into callee frame
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return in callee frame
222 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
223 : LDA 7, 39(0) ; Call SQRTSPLIT
224 : LD 1, 5(5) ; Load callee result into R1
225 : LDC 2, 7(0) ; Callee frame size
226 : SUB 5, 5, 2 ; Pop callee frame
227 : ST 1, 4(5) ; Store function result into frame return slot
228 : LD 6, 0(5) ; Load return address
229 : LDA 7, 0(6) ; Return to caller
230 : LD 1, 1(5) ; Load parameter 'n' into R1
231 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
232 : LDC 1, 0(0) ; Load integer-literal into R1
233 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
234 : LD 1, 1(5) ; Load parameter 'n' into R1
235 : ST 1, 5(5) ; Stage arg 2 in caller frame outgoing area
236 : LDA 4, 6(5) ; Compute future callee base from caller size
237 : LD 2, 3(5) ; Load staged arg 0 from caller frame
238 : ST 2, 1(4) ; Store arg 0 into callee frame
239 : LD 2, 4(5) ; Load staged arg 1 from caller frame
240 : ST 2, 2(4) ; Store arg 1 into callee frame
241 : LD 2, 5(5) ; Load staged arg 2 from caller frame
242 : ST 2, 3(4) ; Store arg 2 into callee frame
243 : LDA 6, 247(0) ; Return address
244 : ST 6, 0(4) ; Store return in callee frame
245 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
246 : LDA 7, 104(0) ; Call SQRTSEARCH
247 : LD 1, 4(5) ; Load callee result into R1
248 : LDC 2, 6(0) ; Callee frame size
249 : SUB 5, 5, 2 ; Pop callee frame
250 : ST 1, 2(5) ; Store function result into frame return slot
251 : LD 6, 0(5) ; Load return address
252 : LDA 7, 0(6) ; Return to caller
253 : LDC 1, 0(0) ; Load integer-literal into R1
254 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
255 : LD 1, 1(5) ; Load parameter 'n' into R1
256 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
257 : LDA 4, 6(5) ; Compute future callee base from caller size
258 : LD 2, 4(5) ; Load staged arg 0 from caller frame
259 : ST 2, 1(4) ; Store arg 0 into callee frame
260 : LD 2, 5(5) ; Load staged arg 1 from caller frame
261 : ST 2, 2(4) ; Store arg 1 into callee frame
262 : LDA 6, 266(0) ; Return address
263 : ST 6, 0(4) ; Store return in callee frame
264 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
265 : LDA 7, 584(0) ; Call LE
266 : LD 1, 3(5) ; Load callee result into R1
267 : LDC 2, 5(0) ; Callee frame size
268 : SUB 5, 5, 2 ; Pop callee frame
269 : JEQ 1, 321(0) ; If condition is false, jump to ELSE
270 : LD 1, 1(5) ; Load parameter 'n' into R1
271 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
272 : LD 1, 1(5) ; Load parameter 'n' into R1
273 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
274 : LDC 1, 2(0) ; Load integer-literal into R1
275 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
276 : LDA 4, 6(5) ; Compute future callee base from caller size
277 : LD 2, 4(5) ; Load staged arg 0 from caller frame
278 : ST 2, 1(4) ; Store arg 0 into callee frame
279 : LD 2, 5(5) ; Load staged arg 1 from caller frame
280 : ST 2, 2(4) ; Store arg 1 into callee frame
281 : LDA 6, 285(0) ; Return address
282 : ST 6, 0(4) ; Store return in callee frame
283 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
284 : LDA 7, 494(0) ; Call DIV
285 : LD 1, 3(5) ; Load callee result into R1
286 : LDC 2, 5(0) ; Callee frame size
287 : SUB 5, 5, 2 ; Pop callee frame
288 : ST 1, 3(5) ; Spill left operand at depth 0
289 : LD 1, 1(5) ; Load parameter 'n' into R1
290 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
291 : LDC 1, 2(0) ; Load integer-literal into R1
292 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
293 : LDA 4, 6(5) ; Compute future callee base from caller size
294 : LD 2, 4(5) ; Load staged arg 0 from caller frame
295 : ST 2, 1(4) ; Store arg 0 into callee frame
296 : LD 2, 5(5) ; Load staged arg 1 from caller frame
297 : ST 2, 2(4) ; Store arg 1 into callee frame
298 : LDA 6, 302(0) ; Return address
299 : ST 6, 0(4) ; Store return in callee frame
300 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
301 : LDA 7, 494(0) ; Call DIV
302 : LD 1, 3(5) ; Load callee result into R1
303 : LDC 2, 5(0) ; Callee frame size
304 : SUB 5, 5, 2 ; Pop callee frame
305 : LD 2, 3(5) ; Restore left operand from depth 0
306 : ADD 1, 2, 1 ; R1 = left + right
307 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
308 : LDA 4, 6(5) ; Compute future callee base from caller size
309 : LD 2, 4(5) ; Load staged arg 0 from caller frame
310 : ST 2, 1(4) ; Store arg 0 into callee frame
311 : LD 2, 5(5) ; Load staged arg 1 from caller frame
312 : ST 2, 2(4) ; Store arg 1 into callee frame
313 : LDA 6, 317(0) ; Return address
314 : ST 6, 0(4) ; Store return in callee frame
315 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
316 : LDA 7, 542(0) ; Call GT
317 : LD 1, 3(5) ; Load callee result into R1
318 : LDC 2, 4(0) ; Callee frame size
319 : SUB 5, 5, 2 ; Pop callee frame
320 : LDA 7, 404(0) ; Skip ELSE block
321 : LD 1, 1(5) ; Load parameter 'n' into R1
322 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
323 : LDA 4, 6(5) ; Compute future callee base from caller size
324 : LD 2, 4(5) ; Load staged arg 0 from caller frame
325 : ST 2, 1(4) ; Store arg 0 into callee frame
326 : LDA 6, 330(0) ; Return address
327 : ST 6, 0(4) ; Store return in callee frame
328 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
329 : LDA 7, 489(0) ; Call NEG
330 : LD 1, 2(5) ; Load callee result into R1
331 : LDC 2, 3(0) ; Callee frame size
332 : SUB 5, 5, 2 ; Pop callee frame
333 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
334 : LD 1, 1(5) ; Load parameter 'n' into R1
335 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
336 : LDA 4, 6(5) ; Compute future callee base from caller size
337 : LD 2, 4(5) ; Load staged arg 0 from caller frame
338 : ST 2, 1(4) ; Store arg 0 into callee frame
339 : LDA 6, 343(0) ; Return address
340 : ST 6, 0(4) ; Store return in callee frame
341 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
342 : LDA 7, 489(0) ; Call NEG
343 : LD 1, 2(5) ; Load callee result into R1
344 : LDC 2, 3(0) ; Callee frame size
345 : SUB 5, 5, 2 ; Pop callee frame
346 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
347 : LDC 1, 2(0) ; Load integer-literal into R1
348 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
349 : LDA 4, 6(5) ; Compute future callee base from caller size
350 : LD 2, 4(5) ; Load staged arg 0 from caller frame
351 : ST 2, 1(4) ; Store arg 0 into callee frame
352 : LD 2, 5(5) ; Load staged arg 1 from caller frame
353 : ST 2, 2(4) ; Store arg 1 into callee frame
354 : LDA 6, 358(0) ; Return address
355 : ST 6, 0(4) ; Store return in callee frame
356 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
357 : LDA 7, 494(0) ; Call DIV
358 : LD 1, 3(5) ; Load callee result into R1
359 : LDC 2, 5(0) ; Callee frame size
360 : SUB 5, 5, 2 ; Pop callee frame
361 : ST 1, 3(5) ; Spill left operand at depth 0
362 : LD 1, 1(5) ; Load parameter 'n' into R1
363 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
364 : LDA 4, 6(5) ; Compute future callee base from caller size
365 : LD 2, 4(5) ; Load staged arg 0 from caller frame
366 : ST 2, 1(4) ; Store arg 0 into callee frame
367 : LDA 6, 371(0) ; Return address
368 : ST 6, 0(4) ; Store return in callee frame
369 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
370 : LDA 7, 489(0) ; Call NEG
371 : LD 1, 2(5) ; Load callee result into R1
372 : LDC 2, 3(0) ; Callee frame size
373 : SUB 5, 5, 2 ; Pop callee frame
374 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
375 : LDC 1, 2(0) ; Load integer-literal into R1
376 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
377 : LDA 4, 6(5) ; Compute future callee base from caller size
378 : LD 2, 4(5) ; Load staged arg 0 from caller frame
379 : ST 2, 1(4) ; Store arg 0 into callee frame
380 : LD 2, 5(5) ; Load staged arg 1 from caller frame
381 : ST 2, 2(4) ; Store arg 1 into callee frame
382 : LDA 6, 386(0) ; Return address
383 : ST 6, 0(4) ; Store return in callee frame
384 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
385 : LDA 7, 494(0) ; Call DIV
386 : LD 1, 3(5) ; Load callee result into R1
387 : LDC 2, 5(0) ; Callee frame size
388 : SUB 5, 5, 2 ; Pop callee frame
389 : LD 2, 3(5) ; Restore left operand from depth 0
390 : ADD 1, 2, 1 ; R1 = left + right
391 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
392 : LDA 4, 6(5) ; Compute future callee base from caller size
393 : LD 2, 4(5) ; Load staged arg 0 from caller frame
394 : ST 2, 1(4) ; Store arg 0 into callee frame
395 : LD 2, 5(5) ; Load staged arg 1 from caller frame
396 : ST 2, 2(4) ; Store arg 1 into callee frame
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return in callee frame
399 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
400 : LDA 7, 542(0) ; Call GT
401 : LD 1, 3(5) ; Load callee result into R1
402 : LDC 2, 4(0) ; Callee frame size
403 : SUB 5, 5, 2 ; Pop callee frame
404 : ST 1, 2(5) ; Store function result into frame return slot
405 : LD 6, 0(5) ; Load return address
406 : LDA 7, 0(6) ; Return to caller
407 : LD 1, 2(5) ; Load parameter 'n' into R1
408 : ST 1, 4(5) ; Spill left operand at depth 0
409 : LDC 1, 0(0) ; Load integer-literal into R1
410 : LD 2, 4(5) ; Restore left operand from depth 0
411 : SUB 1, 2, 1 ; left - right for equality check
412 : JEQ 1, 2(7) ; If R1 == 0, jump to true
413 : LDC 1, 0(0) ; false
414 : LDA 7, 1(7) ; skip setting true
415 : LDC 1, 1(0) ; true
416 : JEQ 1, 419(0) ; If condition is false, jump to ELSE
417 : LDC 1, 1(0) ; Load integer-literal into R1
418 : LDA 7, 443(0) ; Skip ELSE block
419 : LD 1, 1(5) ; Load parameter 'm' into R1
420 : ST 1, 4(5) ; Spill left operand at depth 0
421 : LD 1, 1(5) ; Load parameter 'm' into R1
422 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
423 : LD 1, 2(5) ; Load parameter 'n' into R1
424 : ST 1, 5(5) ; Spill left operand at depth 1
425 : LDC 1, 1(0) ; Load integer-literal into R1
426 : LD 2, 5(5) ; Restore left operand from depth 1
427 : SUB 1, 2, 1 ; R1 = left - right
428 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
429 : LDA 4, 8(5) ; Compute future callee base from caller size
430 : LD 2, 6(5) ; Load staged arg 0 from caller frame
431 : ST 2, 1(4) ; Store arg 0 into callee frame
432 : LD 2, 7(5) ; Load staged arg 1 from caller frame
433 : ST 2, 2(4) ; Store arg 1 into callee frame
434 : LDA 6, 438(0) ; Return address
435 : ST 6, 0(4) ; Store return in callee frame
436 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
437 : LDA 7, 407(0) ; Call EXP
438 : LD 1, 3(5) ; Load callee result into R1
439 : LDC 2, 6(0) ; Callee frame size
440 : SUB 5, 5, 2 ; Pop callee frame
441 : LD 2, 4(5) ; Restore left operand from depth 0
442 : MUL 1, 2, 1 ; R1 = left * right
443 : ST 1, 3(5) ; Store function result into frame return slot
444 : LD 6, 0(5) ; Load return address
445 : LDA 7, 0(6) ; Return to caller
446 : LD 1, 1(5) ; Load parameter 'm' into R1
447 : ST 1, 4(5) ; Spill left operand at depth 0
448 : LD 1, 1(5) ; Load parameter 'm' into R1
449 : ST 1, 5(5) ; Spill left operand at depth 1
450 : LD 1, 2(5) ; Load parameter 'n' into R1
451 : LD 2, 5(5) ; Restore left operand from depth 1
452 : DIV 1, 2, 1 ; R1 = left / right
453 : ST 1, 5(5) ; Spill left operand at depth 1
454 : LD 1, 2(5) ; Load parameter 'n' into R1
455 : LD 2, 5(5) ; Restore left operand from depth 1
456 : MUL 1, 2, 1 ; R1 = left * right
457 : LD 2, 4(5) ; Restore left operand from depth 0
458 : SUB 1, 2, 1 ; R1 = left - right
459 : ST 1, 3(5) ; Store function result into frame return slot
460 : LD 6, 0(5) ; Load return address
461 : LDA 7, 0(6) ; Return to caller
462 : LDC 1, 0(0) ; Load integer-literal into R1
463 : ST 1, 3(5) ; Spill left operand at depth 0
464 : LD 1, 1(5) ; Load parameter 'n' into R1
465 : LD 2, 3(5) ; Restore left operand from depth 0
466 : SUB 1, 2, 1 ; left - right for less-than check
467 : JLT 1, 2(7) ; If R1 < 0, jump to true
468 : LDC 1, 0(0) ; false
469 : LDA 7, 1(7) ; skip setting true
470 : LDC 1, 1(0) ; true
471 : JEQ 1, 474(0) ; If condition is false, jump to ELSE
472 : LD 1, 1(5) ; Load parameter 'n' into R1
473 : LDA 7, 486(0) ; Skip ELSE block
474 : LD 1, 1(5) ; Load parameter 'n' into R1
475 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
476 : LDA 4, 5(5) ; Compute future callee base from caller size
477 : LD 2, 4(5) ; Load staged arg 0 from caller frame
478 : ST 2, 1(4) ; Store arg 0 into callee frame
479 : LDA 6, 483(0) ; Return address
480 : ST 6, 0(4) ; Store return in callee frame
481 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
482 : LDA 7, 489(0) ; Call NEG
483 : LD 1, 2(5) ; Load callee result into R1
484 : LDC 2, 3(0) ; Callee frame size
485 : SUB 5, 5, 2 ; Pop callee frame
486 : ST 1, 2(5) ; Store function result into frame return slot
487 : LD 6, 0(5) ; Load return address
488 : LDA 7, 0(6) ; Return to caller
489 : LD 1, 1(5) ; Load parameter 'n' into R1
490 : SUB 1, 0, 1 ; Negate value in R1
491 : ST 1, 2(5) ; Store function result into frame return slot
492 : LD 6, 0(5) ; Load return address
493 : LDA 7, 0(6) ; Return to caller
494 : LD 1, 1(5) ; Load parameter 'p' into R1
495 : ST 1, 4(5) ; Spill left operand at depth 0
496 : LD 1, 2(5) ; Load parameter 'q' into R1
497 : LD 2, 4(5) ; Restore left operand from depth 0
498 : DIV 1, 2, 1 ; R1 = left / right
499 : ST 1, 3(5) ; Store function result into frame return slot
500 : LD 6, 0(5) ; Load return address
501 : LDA 7, 0(6) ; Return to caller
502 : LD 1, 1(5) ; Load parameter 'p' into R1
503 : ST 1, 4(5) ; Spill left operand at depth 0
504 : LD 1, 2(5) ; Load parameter 'q' into R1
505 : LD 2, 4(5) ; Restore left operand from depth 0
506 : MUL 1, 2, 1 ; R1 = left * right
507 : ST 1, 3(5) ; Store function result into frame return slot
508 : LD 6, 0(5) ; Load return address
509 : LDA 7, 0(6) ; Return to caller
510 : LD 1, 1(5) ; Load parameter 'p' into R1
511 : ST 1, 4(5) ; Spill left operand at depth 0
512 : LD 1, 2(5) ; Load parameter 'q' into R1
513 : LD 2, 4(5) ; Restore left operand from depth 0
514 : SUB 1, 2, 1 ; R1 = left - right
515 : ST 1, 3(5) ; Store function result into frame return slot
516 : LD 6, 0(5) ; Load return address
517 : LDA 7, 0(6) ; Return to caller
518 : LD 1, 1(5) ; Load parameter 'p' into R1
519 : ST 1, 4(5) ; Spill left operand at depth 0
520 : LD 1, 2(5) ; Load parameter 'q' into R1
521 : LD 2, 4(5) ; Restore left operand from depth 0
522 : ADD 1, 2, 1 ; R1 = left + right
523 : ST 1, 3(5) ; Store function result into frame return slot
524 : LD 6, 0(5) ; Load return address
525 : LDA 7, 0(6) ; Return to caller
526 : LD 1, 1(5) ; Load parameter 'p' into R1
527 : JEQ 1, 530(0) ; If condition is false, jump to ELSE
528 : LD 1, 2(5) ; Load parameter 'q' into R1
529 : LDA 7, 531(0) ; Skip ELSE block
530 : LDC 1, 0(0) ; Load boolean-literal into R1
531 : ST 1, 3(5) ; Store function result into frame return slot
532 : LD 6, 0(5) ; Load return address
533 : LDA 7, 0(6) ; Return to caller
534 : LD 1, 1(5) ; Load parameter 'p' into R1
535 : ST 1, 4(5) ; Spill left operand at depth 0
536 : LD 1, 2(5) ; Load parameter 'q' into R1
537 : LD 2, 4(5) ; Restore left operand from depth 0
538 : ADD 1, 2, 1 ; R1 = left OR right
539 : ST 1, 3(5) ; Store function result into frame return slot
540 : LD 6, 0(5) ; Load return address
541 : LDA 7, 0(6) ; Return to caller
542 : LD 1, 1(5) ; Load parameter 'p' into R1
543 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
544 : LD 1, 2(5) ; Load parameter 'q' into R1
545 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
546 : LDA 4, 6(5) ; Compute future callee base from caller size
547 : LD 2, 4(5) ; Load staged arg 0 from caller frame
548 : ST 2, 1(4) ; Store arg 0 into callee frame
549 : LD 2, 5(5) ; Load staged arg 1 from caller frame
550 : ST 2, 2(4) ; Store arg 1 into callee frame
551 : LDA 6, 555(0) ; Return address
552 : ST 6, 0(4) ; Store return in callee frame
553 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
554 : LDA 7, 584(0) ; Call LE
555 : LD 1, 3(5) ; Load callee result into R1
556 : LDC 2, 5(0) ; Callee frame size
557 : SUB 5, 5, 2 ; Pop callee frame
558 : LDC 2, 1(0) ; Load 1 into R2
559 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
560 : ST 1, 3(5) ; Store function result into frame return slot
561 : LD 6, 0(5) ; Load return address
562 : LDA 7, 0(6) ; Return to caller
563 : LD 1, 1(5) ; Load parameter 'p' into R1
564 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
565 : LD 1, 2(5) ; Load parameter 'q' into R1
566 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
567 : LDA 4, 6(5) ; Compute future callee base from caller size
568 : LD 2, 4(5) ; Load staged arg 0 from caller frame
569 : ST 2, 1(4) ; Store arg 0 into callee frame
570 : LD 2, 5(5) ; Load staged arg 1 from caller frame
571 : ST 2, 2(4) ; Store arg 1 into callee frame
572 : LDA 6, 576(0) ; Return address
573 : ST 6, 0(4) ; Store return in callee frame
574 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
575 : LDA 7, 655(0) ; Call LT
576 : LD 1, 3(5) ; Load callee result into R1
577 : LDC 2, 5(0) ; Callee frame size
578 : SUB 5, 5, 2 ; Pop callee frame
579 : LDC 2, 1(0) ; Load 1 into R2
580 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
581 : ST 1, 3(5) ; Store function result into frame return slot
582 : LD 6, 0(5) ; Load return address
583 : LDA 7, 0(6) ; Return to caller
584 : LD 1, 1(5) ; Load parameter 'p' into R1
585 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
586 : LD 1, 2(5) ; Load parameter 'q' into R1
587 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
588 : LDA 4, 7(5) ; Compute future callee base from caller size
589 : LD 2, 5(5) ; Load staged arg 0 from caller frame
590 : ST 2, 1(4) ; Store arg 0 into callee frame
591 : LD 2, 6(5) ; Load staged arg 1 from caller frame
592 : ST 2, 2(4) ; Store arg 1 into callee frame
593 : LDA 6, 597(0) ; Return address
594 : ST 6, 0(4) ; Store return in callee frame
595 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
596 : LDA 7, 655(0) ; Call LT
597 : LD 1, 3(5) ; Load callee result into R1
598 : LDC 2, 5(0) ; Callee frame size
599 : SUB 5, 5, 2 ; Pop callee frame
600 : ST 1, 4(5) ; Spill left operand at depth 0
601 : LD 1, 1(5) ; Load parameter 'p' into R1
602 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
603 : LD 1, 2(5) ; Load parameter 'q' into R1
604 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
605 : LDA 4, 7(5) ; Compute future callee base from caller size
606 : LD 2, 5(5) ; Load staged arg 0 from caller frame
607 : ST 2, 1(4) ; Store arg 0 into callee frame
608 : LD 2, 6(5) ; Load staged arg 1 from caller frame
609 : ST 2, 2(4) ; Store arg 1 into callee frame
610 : LDA 6, 614(0) ; Return address
611 : ST 6, 0(4) ; Store return in callee frame
612 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
613 : LDA 7, 643(0) ; Call EQ
614 : LD 1, 3(5) ; Load callee result into R1
615 : LDC 2, 5(0) ; Callee frame size
616 : SUB 5, 5, 2 ; Pop callee frame
617 : LD 2, 4(5) ; Restore left operand from depth 0
618 : ADD 1, 2, 1 ; R1 = left OR right
619 : ST 1, 3(5) ; Store function result into frame return slot
620 : LD 6, 0(5) ; Load return address
621 : LDA 7, 0(6) ; Return to caller
622 : LD 1, 1(5) ; Load parameter 'p' into R1
623 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
624 : LD 1, 2(5) ; Load parameter 'q' into R1
625 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
626 : LDA 4, 6(5) ; Compute future callee base from caller size
627 : LD 2, 4(5) ; Load staged arg 0 from caller frame
628 : ST 2, 1(4) ; Store arg 0 into callee frame
629 : LD 2, 5(5) ; Load staged arg 1 from caller frame
630 : ST 2, 2(4) ; Store arg 1 into callee frame
631 : LDA 6, 635(0) ; Return address
632 : ST 6, 0(4) ; Store return in callee frame
633 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
634 : LDA 7, 643(0) ; Call EQ
635 : LD 1, 3(5) ; Load callee result into R1
636 : LDC 2, 5(0) ; Callee frame size
637 : SUB 5, 5, 2 ; Pop callee frame
638 : LDC 2, 1(0) ; Load 1 into R2
639 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
640 : ST 1, 3(5) ; Store function result into frame return slot
641 : LD 6, 0(5) ; Load return address
642 : LDA 7, 0(6) ; Return to caller
643 : LD 1, 1(5) ; Load parameter 'p' into R1
644 : ST 1, 4(5) ; Spill left operand at depth 0
645 : LD 1, 2(5) ; Load parameter 'q' into R1
646 : LD 2, 4(5) ; Restore left operand from depth 0
647 : SUB 1, 2, 1 ; left - right for equality check
648 : JEQ 1, 2(7) ; If R1 == 0, jump to true
649 : LDC 1, 0(0) ; false
650 : LDA 7, 1(7) ; skip setting true
651 : LDC 1, 1(0) ; true
652 : ST 1, 3(5) ; Store function result into frame return slot
653 : LD 6, 0(5) ; Load return address
654 : LDA 7, 0(6) ; Return to caller
655 : LD 1, 1(5) ; Load parameter 'p' into R1
656 : ST 1, 4(5) ; Spill left operand at depth 0
657 : LD 1, 2(5) ; Load parameter 'q' into R1
658 : LD 2, 4(5) ; Restore left operand from depth 0
659 : SUB 1, 2, 1 ; left - right for less-than check
660 : JLT 1, 2(7) ; If R1 < 0, jump to true
661 : LDC 1, 0(0) ; false
662 : LDA 7, 1(7) ; skip setting true
663 : LDC 1, 1(0) ; true
664 : ST 1, 3(5) ; Store function result into frame return slot
665 : LD 6, 0(5) ; Load return address
666 : LDA 7, 0(6) ; Return to caller
667 : LDC 1, 2147483647(0) ; Load integer-literal into R1
668 : SUB 1, 0, 1 ; Negate value in R1
669 : ST 1, 2(5) ; Spill left operand at depth 0
670 : LDC 1, 1(0) ; Load integer-literal into R1
671 : LD 2, 2(5) ; Restore left operand from depth 0
672 : SUB 1, 2, 1 ; R1 = left - right
673 : ST 1, 1(5) ; Store function result into frame return slot
674 : LD 6, 0(5) ; Load return address
675 : LDA 7, 0(6) ; Return to caller
676 : LDC 1, 2147483647(0) ; Load integer-literal into R1
677 : ST 1, 1(5) ; Store function result into frame return slot
678 : LD 6, 0(5) ; Load return address
679 : LDA 7, 0(6) ; Return to caller
