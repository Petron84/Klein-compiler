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
12 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDA 4, 3(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 215(0) ; Call SQRT
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : LDA 4, 3(5) ; Recompute callee base from caller size
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return address in callee frame
26 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
27 : LDA 7, 9(0) ; Call built-in print
28 : LDC 2, 3(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop back to caller
30 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
31 : LDA 4, 3(5) ; Recompute callee base from caller size
32 : ST 1, 1(4) ; Store argument 0 in callee frame
33 : LDA 4, 3(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address into callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 235(0) ; Call ODD
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s return slot
42 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
43 : LD 1, 2(5) ; Load main return value into R1
44 : LD 6, 0(5) ; Load root return address from main frame
45 : LDA 7, 0(6) ; Return from main to runtime epilogue
46 : LD 1, 4(5) ; Load parameter 'mid' into R1
47 : ST 1, 6(5) ; Spill left operand at depth 0
48 : LD 1, 4(5) ; Load parameter 'mid' into R1
49 : LD 2, 6(5) ; Restore left operand from depth 0
50 : MUL 1, 2, 1 ; R1 = left * right
51 : LDA 4, 7(5) ; Recompute callee base from caller size
52 : ST 1, 1(4) ; Store argument 0 in callee frame
53 : LD 1, 1(5) ; Load parameter 'n' into R1
54 : LDA 4, 7(5) ; Recompute callee base from caller size
55 : ST 1, 2(4) ; Store argument 1 in callee frame
56 : LDA 4, 7(5) ; Recompute callee base from caller size
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return address into callee frame
59 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
60 : LDA 7, 542(0) ; Call LE
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 5(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop back to caller
64 : JEQ 1, 83(0) ; If condition is false, jump to ELSE
65 : LD 1, 1(5) ; Load parameter 'n' into R1
66 : LDA 4, 7(5) ; Recompute callee base from caller size
67 : ST 1, 1(4) ; Store argument 0 in callee frame
68 : LD 1, 4(5) ; Load parameter 'mid' into R1
69 : LDA 4, 7(5) ; Recompute callee base from caller size
70 : ST 1, 2(4) ; Store argument 1 in callee frame
71 : LD 1, 3(5) ; Load parameter 'high' into R1
72 : LDA 4, 7(5) ; Recompute callee base from caller size
73 : ST 1, 3(4) ; Store argument 2 in callee frame
74 : LDA 4, 7(5) ; Recompute callee base from caller size
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return address into callee frame
77 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
78 : LDA 7, 103(0) ; Call SQRTSEARCH
79 : LD 1, 4(5) ; Load callee result into R1
80 : LDC 2, 6(0) ; Callee frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : LDA 7, 100(0) ; Skip ELSE block
83 : LD 1, 1(5) ; Load parameter 'n' into R1
84 : LDA 4, 7(5) ; Recompute callee base from caller size
85 : ST 1, 1(4) ; Store argument 0 in callee frame
86 : LD 1, 2(5) ; Load parameter 'low' into R1
87 : LDA 4, 7(5) ; Recompute callee base from caller size
88 : ST 1, 2(4) ; Store argument 1 in callee frame
89 : LD 1, 4(5) ; Load parameter 'mid' into R1
90 : LDA 4, 7(5) ; Recompute callee base from caller size
91 : ST 1, 3(4) ; Store argument 2 in callee frame
92 : LDA 4, 7(5) ; Recompute callee base from caller size
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return address into callee frame
95 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
96 : LDA 7, 103(0) ; Call SQRTSEARCH
97 : LD 1, 4(5) ; Load callee result into R1
98 : LDC 2, 6(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop back to caller
100 : ST 1, 5(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
103 : LD 1, 3(5) ; Load parameter 'high' into R1
104 : LDA 4, 6(5) ; Recompute callee base from caller size
105 : ST 1, 1(4) ; Store argument 0 in callee frame
106 : LD 1, 2(5) ; Load parameter 'low' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left + right
111 : LDA 4, 6(5) ; Recompute callee base from caller size
112 : ST 1, 2(4) ; Store argument 1 in callee frame
113 : LDA 4, 6(5) ; Recompute callee base from caller size
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 542(0) ; Call LE
118 : LD 1, 3(5) ; Load callee result into R1
119 : LDC 2, 5(0) ; Callee frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : JEQ 1, 175(0) ; If condition is false, jump to ELSE
122 : LD 1, 1(5) ; Load parameter 'n' into R1
123 : ST 1, 5(5) ; Spill left operand at depth 0
124 : LD 1, 2(5) ; Load parameter 'low' into R1
125 : LDA 4, 6(5) ; Recompute callee base from caller size
126 : ST 1, 1(4) ; Store argument 0 in callee frame
127 : LD 1, 2(5) ; Load parameter 'low' into R1
128 : LDA 4, 6(5) ; Recompute callee base from caller size
129 : ST 1, 2(4) ; Store argument 1 in callee frame
130 : LDA 4, 6(5) ; Recompute callee base from caller size
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return address into callee frame
133 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
134 : LDA 7, 464(0) ; Call TIMES
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 5(0) ; Callee frame size
137 : SUB 5, 5, 2 ; Pop back to caller
138 : LD 2, 5(5) ; Restore left operand from depth 0
139 : SUB 1, 2, 1 ; R1 = left - right
140 : LDA 4, 6(5) ; Recompute callee base from caller size
141 : ST 1, 1(4) ; Store argument 0 in callee frame
142 : LD 1, 3(5) ; Load parameter 'high' into R1
143 : LDA 4, 6(5) ; Recompute callee base from caller size
144 : ST 1, 1(4) ; Store argument 0 in callee frame
145 : LD 1, 3(5) ; Load parameter 'high' into R1
146 : LDA 4, 6(5) ; Recompute callee base from caller size
147 : ST 1, 2(4) ; Store argument 1 in callee frame
148 : LDA 4, 6(5) ; Recompute callee base from caller size
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return address into callee frame
151 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
152 : LDA 7, 464(0) ; Call TIMES
153 : LD 1, 3(5) ; Load callee result into R1
154 : LDC 2, 5(0) ; Callee frame size
155 : SUB 5, 5, 2 ; Pop back to caller
156 : ST 1, 5(5) ; Spill left operand at depth 0
157 : LD 1, 1(5) ; Load parameter 'n' into R1
158 : LD 2, 5(5) ; Restore left operand from depth 0
159 : SUB 1, 2, 1 ; R1 = left - right
160 : LDA 4, 6(5) ; Recompute callee base from caller size
161 : ST 1, 2(4) ; Store argument 1 in callee frame
162 : LDA 4, 6(5) ; Recompute callee base from caller size
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return address into callee frame
165 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
166 : LDA 7, 542(0) ; Call LE
167 : LD 1, 3(5) ; Load callee result into R1
168 : LDC 2, 5(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop back to caller
170 : JEQ 1, 173(0) ; If condition is false, jump to ELSE
171 : LD 1, 2(5) ; Load parameter 'low' into R1
172 : LDA 7, 174(0) ; Skip ELSE block
173 : LD 1, 3(5) ; Load parameter 'high' into R1
174 : LDA 7, 212(0) ; Skip ELSE block
175 : LD 1, 1(5) ; Load parameter 'n' into R1
176 : LDA 4, 6(5) ; Recompute callee base from caller size
177 : ST 1, 1(4) ; Store argument 0 in callee frame
178 : LD 1, 2(5) ; Load parameter 'low' into R1
179 : LDA 4, 6(5) ; Recompute callee base from caller size
180 : ST 1, 2(4) ; Store argument 1 in callee frame
181 : LD 1, 3(5) ; Load parameter 'high' into R1
182 : LDA 4, 6(5) ; Recompute callee base from caller size
183 : ST 1, 3(4) ; Store argument 2 in callee frame
184 : LD 1, 2(5) ; Load parameter 'low' into R1
185 : LDA 4, 6(5) ; Recompute callee base from caller size
186 : ST 1, 1(4) ; Store argument 0 in callee frame
187 : LD 1, 3(5) ; Load parameter 'high' into R1
188 : LDA 4, 6(5) ; Recompute callee base from caller size
189 : ST 1, 2(4) ; Store argument 1 in callee frame
190 : LDA 4, 6(5) ; Recompute callee base from caller size
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return address into callee frame
193 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
194 : LDA 7, 480(0) ; Call PLUS
195 : LD 1, 3(5) ; Load callee result into R1
196 : LDC 2, 5(0) ; Callee frame size
197 : SUB 5, 5, 2 ; Pop back to caller
198 : ST 1, 5(5) ; Spill left operand at depth 0
199 : LDC 1, 2(0) ; Load integer-literal into R1
200 : LD 2, 5(5) ; Restore left operand from depth 0
201 : DIV 1, 2, 1 ; R1 = left / right
202 : LDA 4, 6(5) ; Recompute callee base from caller size
203 : ST 1, 4(4) ; Store argument 3 in callee frame
204 : LDA 4, 6(5) ; Recompute callee base from caller size
205 : LDA 6, 209(0) ; Return address
206 : ST 6, 0(4) ; Store return address into callee frame
207 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
208 : LDA 7, 46(0) ; Call SQRTSPLIT
209 : LD 1, 5(5) ; Load callee result into R1
210 : LDC 2, 7(0) ; Callee frame size
211 : SUB 5, 5, 2 ; Pop back to caller
212 : ST 1, 4(5) ; Store function result into frame return slot
213 : LD 6, 0(5) ; Load return address
214 : LDA 7, 0(6) ; Return to caller
215 : LD 1, 1(5) ; Load parameter 'n' into R1
216 : LDA 4, 3(5) ; Recompute callee base from caller size
217 : ST 1, 1(4) ; Store argument 0 in callee frame
218 : LDC 1, 0(0) ; Load integer-literal into R1
219 : LDA 4, 3(5) ; Recompute callee base from caller size
220 : ST 1, 2(4) ; Store argument 1 in callee frame
221 : LD 1, 1(5) ; Load parameter 'n' into R1
222 : LDA 4, 3(5) ; Recompute callee base from caller size
223 : ST 1, 3(4) ; Store argument 2 in callee frame
224 : LDA 4, 3(5) ; Recompute callee base from caller size
225 : LDA 6, 229(0) ; Return address
226 : ST 6, 0(4) ; Store return address into callee frame
227 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
228 : LDA 7, 103(0) ; Call SQRTSEARCH
229 : LD 1, 4(5) ; Load callee result into R1
230 : LDC 2, 6(0) ; Callee frame size
231 : SUB 5, 5, 2 ; Pop back to caller
232 : ST 1, 2(5) ; Store function result into frame return slot
233 : LD 6, 0(5) ; Load return address
234 : LDA 7, 0(6) ; Return to caller
235 : LDC 1, 0(0) ; Load integer-literal into R1
236 : LDA 4, 4(5) ; Recompute callee base from caller size
237 : ST 1, 1(4) ; Store argument 0 in callee frame
238 : LD 1, 1(5) ; Load parameter 'n' into R1
239 : LDA 4, 4(5) ; Recompute callee base from caller size
240 : ST 1, 2(4) ; Store argument 1 in callee frame
241 : LDA 4, 4(5) ; Recompute callee base from caller size
242 : LDA 6, 246(0) ; Return address
243 : ST 6, 0(4) ; Store return address into callee frame
244 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
245 : LDA 7, 542(0) ; Call LE
246 : LD 1, 3(5) ; Load callee result into R1
247 : LDC 2, 5(0) ; Callee frame size
248 : SUB 5, 5, 2 ; Pop back to caller
249 : JEQ 1, 295(0) ; If condition is false, jump to ELSE
250 : LD 1, 1(5) ; Load parameter 'n' into R1
251 : LDA 4, 4(5) ; Recompute callee base from caller size
252 : ST 1, 1(4) ; Store argument 0 in callee frame
253 : LD 1, 1(5) ; Load parameter 'n' into R1
254 : LDA 4, 4(5) ; Recompute callee base from caller size
255 : ST 1, 1(4) ; Store argument 0 in callee frame
256 : LDC 1, 2(0) ; Load integer-literal into R1
257 : LDA 4, 4(5) ; Recompute callee base from caller size
258 : ST 1, 2(4) ; Store argument 1 in callee frame
259 : LDA 4, 4(5) ; Recompute callee base from caller size
260 : LDA 6, 264(0) ; Return address
261 : ST 6, 0(4) ; Store return address into callee frame
262 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
263 : LDA 7, 456(0) ; Call DIV
264 : LD 1, 3(5) ; Load callee result into R1
265 : LDC 2, 5(0) ; Callee frame size
266 : SUB 5, 5, 2 ; Pop back to caller
267 : ST 1, 3(5) ; Spill left operand at depth 0
268 : LD 1, 1(5) ; Load parameter 'n' into R1
269 : LDA 4, 4(5) ; Recompute callee base from caller size
270 : ST 1, 1(4) ; Store argument 0 in callee frame
271 : LDC 1, 2(0) ; Load integer-literal into R1
272 : LDA 4, 4(5) ; Recompute callee base from caller size
273 : ST 1, 2(4) ; Store argument 1 in callee frame
274 : LDA 4, 4(5) ; Recompute callee base from caller size
275 : LDA 6, 279(0) ; Return address
276 : ST 6, 0(4) ; Store return address into callee frame
277 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
278 : LDA 7, 456(0) ; Call DIV
279 : LD 1, 3(5) ; Load callee result into R1
280 : LDC 2, 5(0) ; Callee frame size
281 : SUB 5, 5, 2 ; Pop back to caller
282 : LD 2, 3(5) ; Restore left operand from depth 0
283 : ADD 1, 2, 1 ; R1 = left + right
284 : LDA 4, 4(5) ; Recompute callee base from caller size
285 : ST 1, 2(4) ; Store argument 1 in callee frame
286 : LDA 4, 4(5) ; Recompute callee base from caller size
287 : LDA 6, 291(0) ; Return address
288 : ST 6, 0(4) ; Store return address into callee frame
289 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
290 : LDA 7, 504(0) ; Call GT
291 : LD 1, 3(5) ; Load callee result into R1
292 : LDC 2, 4(0) ; Callee frame size
293 : SUB 5, 5, 2 ; Pop back to caller
294 : LDA 7, 369(0) ; Skip ELSE block
295 : LD 1, 1(5) ; Load parameter 'n' into R1
296 : LDA 4, 4(5) ; Recompute callee base from caller size
297 : ST 1, 1(4) ; Store argument 0 in callee frame
298 : LDA 4, 4(5) ; Recompute callee base from caller size
299 : LDA 6, 303(0) ; Return address
300 : ST 6, 0(4) ; Store return address into callee frame
301 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
302 : LDA 7, 451(0) ; Call NEG
303 : LD 1, 2(5) ; Load callee result into R1
304 : LDC 2, 3(0) ; Callee frame size
305 : SUB 5, 5, 2 ; Pop back to caller
306 : LDA 4, 4(5) ; Recompute callee base from caller size
307 : ST 1, 1(4) ; Store argument 0 in callee frame
308 : LD 1, 1(5) ; Load parameter 'n' into R1
309 : LDA 4, 4(5) ; Recompute callee base from caller size
310 : ST 1, 1(4) ; Store argument 0 in callee frame
311 : LDA 4, 4(5) ; Recompute callee base from caller size
312 : LDA 6, 316(0) ; Return address
313 : ST 6, 0(4) ; Store return address into callee frame
314 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
315 : LDA 7, 451(0) ; Call NEG
316 : LD 1, 2(5) ; Load callee result into R1
317 : LDC 2, 3(0) ; Callee frame size
318 : SUB 5, 5, 2 ; Pop back to caller
319 : LDA 4, 4(5) ; Recompute callee base from caller size
320 : ST 1, 1(4) ; Store argument 0 in callee frame
321 : LDC 1, 2(0) ; Load integer-literal into R1
322 : LDA 4, 4(5) ; Recompute callee base from caller size
323 : ST 1, 2(4) ; Store argument 1 in callee frame
324 : LDA 4, 4(5) ; Recompute callee base from caller size
325 : LDA 6, 329(0) ; Return address
326 : ST 6, 0(4) ; Store return address into callee frame
327 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
328 : LDA 7, 456(0) ; Call DIV
329 : LD 1, 3(5) ; Load callee result into R1
330 : LDC 2, 5(0) ; Callee frame size
331 : SUB 5, 5, 2 ; Pop back to caller
332 : ST 1, 3(5) ; Spill left operand at depth 0
333 : LD 1, 1(5) ; Load parameter 'n' into R1
334 : LDA 4, 4(5) ; Recompute callee base from caller size
335 : ST 1, 1(4) ; Store argument 0 in callee frame
336 : LDA 4, 4(5) ; Recompute callee base from caller size
337 : LDA 6, 341(0) ; Return address
338 : ST 6, 0(4) ; Store return address into callee frame
339 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
340 : LDA 7, 451(0) ; Call NEG
341 : LD 1, 2(5) ; Load callee result into R1
342 : LDC 2, 3(0) ; Callee frame size
343 : SUB 5, 5, 2 ; Pop back to caller
344 : LDA 4, 4(5) ; Recompute callee base from caller size
345 : ST 1, 1(4) ; Store argument 0 in callee frame
346 : LDC 1, 2(0) ; Load integer-literal into R1
347 : LDA 4, 4(5) ; Recompute callee base from caller size
348 : ST 1, 2(4) ; Store argument 1 in callee frame
349 : LDA 4, 4(5) ; Recompute callee base from caller size
350 : LDA 6, 354(0) ; Return address
351 : ST 6, 0(4) ; Store return address into callee frame
352 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
353 : LDA 7, 456(0) ; Call DIV
354 : LD 1, 3(5) ; Load callee result into R1
355 : LDC 2, 5(0) ; Callee frame size
356 : SUB 5, 5, 2 ; Pop back to caller
357 : LD 2, 3(5) ; Restore left operand from depth 0
358 : ADD 1, 2, 1 ; R1 = left + right
359 : LDA 4, 4(5) ; Recompute callee base from caller size
360 : ST 1, 2(4) ; Store argument 1 in callee frame
361 : LDA 4, 4(5) ; Recompute callee base from caller size
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return address into callee frame
364 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
365 : LDA 7, 504(0) ; Call GT
366 : LD 1, 3(5) ; Load callee result into R1
367 : LDC 2, 4(0) ; Callee frame size
368 : SUB 5, 5, 2 ; Pop back to caller
369 : ST 1, 2(5) ; Store function result into frame return slot
370 : LD 6, 0(5) ; Load return address
371 : LDA 7, 0(6) ; Return to caller
372 : LD 1, 2(5) ; Load parameter 'n' into R1
373 : ST 1, 4(5) ; Spill left operand at depth 0
374 : LDC 1, 0(0) ; Load integer-literal into R1
375 : LD 2, 4(5) ; Restore left operand from depth 0
376 : SUB 1, 2, 1 ; left - right for equality check
377 : JEQ 1, 2(7) ; If R1 == 0, jump to true
378 : LDC 1, 0(0) ; false
379 : LDA 7, 1(7) ; skip setting true
380 : LDC 1, 1(0) ; true
381 : JEQ 1, 384(0) ; If condition is false, jump to ELSE
382 : LDC 1, 1(0) ; Load integer-literal into R1
383 : LDA 7, 406(0) ; Skip ELSE block
384 : LD 1, 1(5) ; Load parameter 'm' into R1
385 : ST 1, 4(5) ; Spill left operand at depth 0
386 : LD 1, 1(5) ; Load parameter 'm' into R1
387 : LDA 4, 6(5) ; Recompute callee base from caller size
388 : ST 1, 1(4) ; Store argument 0 in callee frame
389 : LD 1, 2(5) ; Load parameter 'n' into R1
390 : ST 1, 5(5) ; Spill left operand at depth 1
391 : LDC 1, 1(0) ; Load integer-literal into R1
392 : LD 2, 5(5) ; Restore left operand from depth 1
393 : SUB 1, 2, 1 ; R1 = left - right
394 : LDA 4, 6(5) ; Recompute callee base from caller size
395 : ST 1, 2(4) ; Store argument 1 in callee frame
396 : LDA 4, 6(5) ; Recompute callee base from caller size
397 : LDA 6, 401(0) ; Return address
398 : ST 6, 0(4) ; Store return address into callee frame
399 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
400 : LDA 7, 372(0) ; Call EXP
401 : LD 1, 3(5) ; Load callee result into R1
402 : LDC 2, 6(0) ; Callee frame size
403 : SUB 5, 5, 2 ; Pop back to caller
404 : LD 2, 4(5) ; Restore left operand from depth 0
405 : MUL 1, 2, 1 ; R1 = left * right
406 : ST 1, 3(5) ; Store function result into frame return slot
407 : LD 6, 0(5) ; Load return address
408 : LDA 7, 0(6) ; Return to caller
409 : LD 1, 1(5) ; Load parameter 'm' into R1
410 : ST 1, 4(5) ; Spill left operand at depth 0
411 : LD 1, 1(5) ; Load parameter 'm' into R1
412 : ST 1, 5(5) ; Spill left operand at depth 1
413 : LD 1, 2(5) ; Load parameter 'n' into R1
414 : LD 2, 5(5) ; Restore left operand from depth 1
415 : DIV 1, 2, 1 ; R1 = left / right
416 : ST 1, 5(5) ; Spill left operand at depth 1
417 : LD 1, 2(5) ; Load parameter 'n' into R1
418 : LD 2, 5(5) ; Restore left operand from depth 1
419 : MUL 1, 2, 1 ; R1 = left * right
420 : LD 2, 4(5) ; Restore left operand from depth 0
421 : SUB 1, 2, 1 ; R1 = left - right
422 : ST 1, 3(5) ; Store function result into frame return slot
423 : LD 6, 0(5) ; Load return address
424 : LDA 7, 0(6) ; Return to caller
425 : LDC 1, 0(0) ; Load integer-literal into R1
426 : ST 1, 3(5) ; Spill left operand at depth 0
427 : LD 1, 1(5) ; Load parameter 'n' into R1
428 : LD 2, 3(5) ; Restore left operand from depth 0
429 : SUB 1, 2, 1 ; left - right for less-than check
430 : JLT 1, 2(7) ; If R1 < 0, jump to true
431 : LDC 1, 0(0) ; false
432 : LDA 7, 1(7) ; skip setting true
433 : LDC 1, 1(0) ; true
434 : JEQ 1, 437(0) ; If condition is false, jump to ELSE
435 : LD 1, 1(5) ; Load parameter 'n' into R1
436 : LDA 7, 448(0) ; Skip ELSE block
437 : LD 1, 1(5) ; Load parameter 'n' into R1
438 : LDA 4, 4(5) ; Recompute callee base from caller size
439 : ST 1, 1(4) ; Store argument 0 in callee frame
440 : LDA 4, 4(5) ; Recompute callee base from caller size
441 : LDA 6, 445(0) ; Return address
442 : ST 6, 0(4) ; Store return address into callee frame
443 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
444 : LDA 7, 451(0) ; Call NEG
445 : LD 1, 2(5) ; Load callee result into R1
446 : LDC 2, 3(0) ; Callee frame size
447 : SUB 5, 5, 2 ; Pop back to caller
448 : ST 1, 2(5) ; Store function result into frame return slot
449 : LD 6, 0(5) ; Load return address
450 : LDA 7, 0(6) ; Return to caller
451 : LD 1, 1(5) ; Load parameter 'n' into R1
452 : SUB 1, 0, 1 ; Negate value in R1
453 : ST 1, 2(5) ; Store function result into frame return slot
454 : LD 6, 0(5) ; Load return address
455 : LDA 7, 0(6) ; Return to caller
456 : LD 1, 1(5) ; Load parameter 'p' into R1
457 : ST 1, 4(5) ; Spill left operand at depth 0
458 : LD 1, 2(5) ; Load parameter 'q' into R1
459 : LD 2, 4(5) ; Restore left operand from depth 0
460 : DIV 1, 2, 1 ; R1 = left / right
461 : ST 1, 3(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 1(5) ; Load parameter 'p' into R1
465 : ST 1, 4(5) ; Spill left operand at depth 0
466 : LD 1, 2(5) ; Load parameter 'q' into R1
467 : LD 2, 4(5) ; Restore left operand from depth 0
468 : MUL 1, 2, 1 ; R1 = left * right
469 : ST 1, 3(5) ; Store function result into frame return slot
470 : LD 6, 0(5) ; Load return address
471 : LDA 7, 0(6) ; Return to caller
472 : LD 1, 1(5) ; Load parameter 'p' into R1
473 : ST 1, 4(5) ; Spill left operand at depth 0
474 : LD 1, 2(5) ; Load parameter 'q' into R1
475 : LD 2, 4(5) ; Restore left operand from depth 0
476 : SUB 1, 2, 1 ; R1 = left - right
477 : ST 1, 3(5) ; Store function result into frame return slot
478 : LD 6, 0(5) ; Load return address
479 : LDA 7, 0(6) ; Return to caller
480 : LD 1, 1(5) ; Load parameter 'p' into R1
481 : ST 1, 4(5) ; Spill left operand at depth 0
482 : LD 1, 2(5) ; Load parameter 'q' into R1
483 : LD 2, 4(5) ; Restore left operand from depth 0
484 : ADD 1, 2, 1 ; R1 = left + right
485 : ST 1, 3(5) ; Store function result into frame return slot
486 : LD 6, 0(5) ; Load return address
487 : LDA 7, 0(6) ; Return to caller
488 : LD 1, 1(5) ; Load parameter 'p' into R1
489 : JEQ 1, 492(0) ; If condition is false, jump to ELSE
490 : LD 1, 2(5) ; Load parameter 'q' into R1
491 : LDA 7, 493(0) ; Skip ELSE block
492 : LDC 1, 0(0) ; Load boolean-literal into R1
493 : ST 1, 3(5) ; Store function result into frame return slot
494 : LD 6, 0(5) ; Load return address
495 : LDA 7, 0(6) ; Return to caller
496 : LD 1, 1(5) ; Load parameter 'p' into R1
497 : ST 1, 4(5) ; Spill left operand at depth 0
498 : LD 1, 2(5) ; Load parameter 'q' into R1
499 : LD 2, 4(5) ; Restore left operand from depth 0
500 : ADD 1, 2, 1 ; R1 = left OR right
501 : ST 1, 3(5) ; Store function result into frame return slot
502 : LD 6, 0(5) ; Load return address
503 : LDA 7, 0(6) ; Return to caller
504 : LD 1, 1(5) ; Load parameter 'p' into R1
505 : LDA 4, 4(5) ; Recompute callee base from caller size
506 : ST 1, 1(4) ; Store argument 0 in callee frame
507 : LD 1, 2(5) ; Load parameter 'q' into R1
508 : LDA 4, 4(5) ; Recompute callee base from caller size
509 : ST 1, 2(4) ; Store argument 1 in callee frame
510 : LDA 4, 4(5) ; Recompute callee base from caller size
511 : LDA 6, 515(0) ; Return address
512 : ST 6, 0(4) ; Store return address into callee frame
513 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
514 : LDA 7, 542(0) ; Call LE
515 : LD 1, 3(5) ; Load callee result into R1
516 : LDC 2, 5(0) ; Callee frame size
517 : SUB 5, 5, 2 ; Pop back to caller
518 : LDC 2, 1(0) ; Load 1 into R2
519 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
520 : ST 1, 3(5) ; Store function result into frame return slot
521 : LD 6, 0(5) ; Load return address
522 : LDA 7, 0(6) ; Return to caller
523 : LD 1, 1(5) ; Load parameter 'p' into R1
524 : LDA 4, 4(5) ; Recompute callee base from caller size
525 : ST 1, 1(4) ; Store argument 0 in callee frame
526 : LD 1, 2(5) ; Load parameter 'q' into R1
527 : LDA 4, 4(5) ; Recompute callee base from caller size
528 : ST 1, 2(4) ; Store argument 1 in callee frame
529 : LDA 4, 4(5) ; Recompute callee base from caller size
530 : LDA 6, 534(0) ; Return address
531 : ST 6, 0(4) ; Store return address into callee frame
532 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
533 : LDA 7, 607(0) ; Call LT
534 : LD 1, 3(5) ; Load callee result into R1
535 : LDC 2, 5(0) ; Callee frame size
536 : SUB 5, 5, 2 ; Pop back to caller
537 : LDC 2, 1(0) ; Load 1 into R2
538 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
539 : ST 1, 3(5) ; Store function result into frame return slot
540 : LD 6, 0(5) ; Load return address
541 : LDA 7, 0(6) ; Return to caller
542 : LD 1, 1(5) ; Load parameter 'p' into R1
543 : LDA 4, 5(5) ; Recompute callee base from caller size
544 : ST 1, 1(4) ; Store argument 0 in callee frame
545 : LD 1, 2(5) ; Load parameter 'q' into R1
546 : LDA 4, 5(5) ; Recompute callee base from caller size
547 : ST 1, 2(4) ; Store argument 1 in callee frame
548 : LDA 4, 5(5) ; Recompute callee base from caller size
549 : LDA 6, 553(0) ; Return address
550 : ST 6, 0(4) ; Store return address into callee frame
551 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
552 : LDA 7, 607(0) ; Call LT
553 : LD 1, 3(5) ; Load callee result into R1
554 : LDC 2, 5(0) ; Callee frame size
555 : SUB 5, 5, 2 ; Pop back to caller
556 : ST 1, 4(5) ; Spill left operand at depth 0
557 : LD 1, 1(5) ; Load parameter 'p' into R1
558 : LDA 4, 5(5) ; Recompute callee base from caller size
559 : ST 1, 1(4) ; Store argument 0 in callee frame
560 : LD 1, 2(5) ; Load parameter 'q' into R1
561 : LDA 4, 5(5) ; Recompute callee base from caller size
562 : ST 1, 2(4) ; Store argument 1 in callee frame
563 : LDA 4, 5(5) ; Recompute callee base from caller size
564 : LDA 6, 568(0) ; Return address
565 : ST 6, 0(4) ; Store return address into callee frame
566 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
567 : LDA 7, 595(0) ; Call EQ
568 : LD 1, 3(5) ; Load callee result into R1
569 : LDC 2, 5(0) ; Callee frame size
570 : SUB 5, 5, 2 ; Pop back to caller
571 : LD 2, 4(5) ; Restore left operand from depth 0
572 : ADD 1, 2, 1 ; R1 = left OR right
573 : ST 1, 3(5) ; Store function result into frame return slot
574 : LD 6, 0(5) ; Load return address
575 : LDA 7, 0(6) ; Return to caller
576 : LD 1, 1(5) ; Load parameter 'p' into R1
577 : LDA 4, 4(5) ; Recompute callee base from caller size
578 : ST 1, 1(4) ; Store argument 0 in callee frame
579 : LD 1, 2(5) ; Load parameter 'q' into R1
580 : LDA 4, 4(5) ; Recompute callee base from caller size
581 : ST 1, 2(4) ; Store argument 1 in callee frame
582 : LDA 4, 4(5) ; Recompute callee base from caller size
583 : LDA 6, 587(0) ; Return address
584 : ST 6, 0(4) ; Store return address into callee frame
585 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
586 : LDA 7, 595(0) ; Call EQ
587 : LD 1, 3(5) ; Load callee result into R1
588 : LDC 2, 5(0) ; Callee frame size
589 : SUB 5, 5, 2 ; Pop back to caller
590 : LDC 2, 1(0) ; Load 1 into R2
591 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
592 : ST 1, 3(5) ; Store function result into frame return slot
593 : LD 6, 0(5) ; Load return address
594 : LDA 7, 0(6) ; Return to caller
595 : LD 1, 1(5) ; Load parameter 'p' into R1
596 : ST 1, 4(5) ; Spill left operand at depth 0
597 : LD 1, 2(5) ; Load parameter 'q' into R1
598 : LD 2, 4(5) ; Restore left operand from depth 0
599 : SUB 1, 2, 1 ; left - right for equality check
600 : JEQ 1, 2(7) ; If R1 == 0, jump to true
601 : LDC 1, 0(0) ; false
602 : LDA 7, 1(7) ; skip setting true
603 : LDC 1, 1(0) ; true
604 : ST 1, 3(5) ; Store function result into frame return slot
605 : LD 6, 0(5) ; Load return address
606 : LDA 7, 0(6) ; Return to caller
607 : LD 1, 1(5) ; Load parameter 'p' into R1
608 : ST 1, 4(5) ; Spill left operand at depth 0
609 : LD 1, 2(5) ; Load parameter 'q' into R1
610 : LD 2, 4(5) ; Restore left operand from depth 0
611 : SUB 1, 2, 1 ; left - right for less-than check
612 : JLT 1, 2(7) ; If R1 < 0, jump to true
613 : LDC 1, 0(0) ; false
614 : LDA 7, 1(7) ; skip setting true
615 : LDC 1, 1(0) ; true
616 : ST 1, 3(5) ; Store function result into frame return slot
617 : LD 6, 0(5) ; Load return address
618 : LDA 7, 0(6) ; Return to caller
619 : LDC 1, 2147483647(0) ; Load integer-literal into R1
620 : SUB 1, 0, 1 ; Negate value in R1
621 : ST 1, 2(5) ; Spill left operand at depth 0
622 : LDC 1, 1(0) ; Load integer-literal into R1
623 : LD 2, 2(5) ; Restore left operand from depth 0
624 : SUB 1, 2, 1 ; R1 = left - right
625 : ST 1, 1(5) ; Store function result into frame return slot
626 : LD 6, 0(5) ; Load return address
627 : LDA 7, 0(6) ; Return to caller
628 : LDC 1, 2147483647(0) ; Load integer-literal into R1
629 : ST 1, 1(5) ; Store function result into frame return slot
630 : LD 6, 0(5) ; Load return address
631 : LDA 7, 0(6) ; Return to caller
