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
12 : LDC 1, 10(0) ; Load integer-literal into R1
13 : LDA 4, 6(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LD 1, 1(5) ; Load parameter 'length' into R1
16 : ST 1, 3(5) ; Spill left operand at depth 0
17 : LDC 1, 2(0) ; Load integer-literal into R1
18 : LD 2, 3(5) ; Restore left operand from depth 0
19 : DIV 1, 2, 1 ; R1 = left / right
20 : ST 1, 3(5) ; Spill left operand at depth 0
21 : LDC 1, 1(0) ; Load integer-literal into R1
22 : LD 2, 3(5) ; Restore left operand from depth 0
23 : SUB 1, 2, 1 ; R1 = left - right
24 : LDA 4, 6(5) ; Recompute callee base from callee size
25 : ST 1, 2(4) ; Store argument 1 in callee
26 : LDA 4, 6(5) ; Recompute callee base from callee size
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
30 : LDA 7, 858(0) ; Call EXP
31 : LD 1, 3(5) ; Load callee result into R1
32 : LDC 2, 6(0) ; Callee frame size
33 : SUB 5, 5, 2 ; Pop callee frame
34 : LDA 4, 5(5) ; Recompute callee base from callee size
35 : ST 1, 1(4) ; Store argument 0 in callee
36 : LD 1, 1(5) ; Load parameter 'length' into R1
37 : ST 1, 3(5) ; Spill left operand at depth 0
38 : LDC 1, 2(0) ; Load integer-literal into R1
39 : LD 2, 3(5) ; Restore left operand from depth 0
40 : DIV 1, 2, 1 ; R1 = left / right
41 : LDA 4, 5(5) ; Recompute callee base from callee size
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDA 4, 5(5) ; Recompute callee base from callee size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 55(0) ; Call createLoop
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop callee frame
51 : ST 1, 2(5) ; Store result into caller’s frame
52 : LD 1, 2(5) ; Load main return value into R1
53 : LD 6, 0(5) ; Load main return address
54 : LDA 7, 0(6) ; Return from main
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : LDA 4, 7(5) ; Recompute callee base from callee size
57 : ST 1, 1(4) ; Store argument 0 in callee
58 : LD 1, 2(5) ; Load parameter 'n' into R1
59 : LDA 4, 7(5) ; Recompute callee base from callee size
60 : ST 1, 2(4) ; Store argument 1 in callee
61 : LDC 1, 10(0) ; Load integer-literal into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LD 1, 1(5) ; Load parameter 'a' into R1
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : MUL 1, 2, 1 ; R1 = left * right
66 : LDA 4, 7(5) ; Recompute callee base from callee size
67 : ST 1, 3(4) ; Store argument 2 in callee
68 : LDA 4, 7(5) ; Recompute callee base from callee size
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
72 : LDA 7, 79(0) ; Call aLoop
73 : LD 1, 4(5) ; Load callee result into R1
74 : LDC 2, 7(0) ; Callee frame size
75 : SUB 5, 5, 2 ; Pop callee frame
76 : ST 1, 3(5) ; Store function result into frame return slot
77 : LD 6, 0(5) ; Load return address
78 : LDA 7, 0(6) ; Return to caller
79 : LD 1, 1(5) ; Load parameter 'a' into R1
80 : ST 1, 5(5) ; Spill left operand at depth 0
81 : LD 1, 3(5) ; Load parameter 'upper' into R1
82 : LD 2, 5(5) ; Restore left operand from depth 0
83 : SUB 1, 2, 1 ; left - right for less-than check
84 : JLT 1, 2(7) ; If R1 < 0, jump to true
85 : LDC 1, 0(0) ; false
86 : LDA 7, 1(7) ; skip setting true
87 : LDC 1, 1(0) ; true
88 : JEQ 1, 156(0) ; If condition is false, jump to ELSE
89 : LD 1, 1(5) ; Load parameter 'a' into R1
90 : LDA 4, 6(5) ; Recompute callee base from callee size
91 : ST 1, 1(4) ; Store argument 0 in callee
92 : LD 1, 2(5) ; Load parameter 'n' into R1
93 : LDA 4, 6(5) ; Recompute callee base from callee size
94 : ST 1, 2(4) ; Store argument 1 in callee
95 : LD 1, 3(5) ; Load parameter 'upper' into R1
96 : LDA 4, 6(5) ; Recompute callee base from callee size
97 : ST 1, 3(4) ; Store argument 2 in callee
98 : LDC 1, 4(0) ; Load integer-literal into R1
99 : ST 1, 5(5) ; Spill left operand at depth 0
100 : LD 1, 1(5) ; Load parameter 'a' into R1
101 : LDA 4, 6(5) ; Recompute callee base from callee size
102 : ST 1, 1(4) ; Store argument 0 in callee
103 : LDC 1, 2(0) ; Load integer-literal into R1
104 : LDA 4, 6(5) ; Recompute callee base from callee size
105 : ST 1, 2(4) ; Store argument 1 in callee
106 : LDA 4, 6(5) ; Recompute callee base from callee size
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
110 : LDA 7, 858(0) ; Call EXP
111 : LD 1, 3(5) ; Load callee result into R1
112 : LDC 2, 6(0) ; Callee frame size
113 : SUB 5, 5, 2 ; Pop callee frame
114 : LD 2, 5(5) ; Restore left operand from depth 0
115 : MUL 1, 2, 1 ; R1 = left * right
116 : ST 1, 5(5) ; Spill left operand at depth 0
117 : LDC 1, 4(0) ; Load integer-literal into R1
118 : ST 1, 6(5) ; Spill left operand at depth 1
119 : LDC 1, 10(0) ; Load integer-literal into R1
120 : LDA 4, 6(5) ; Recompute callee base from callee size
121 : ST 1, 1(4) ; Store argument 0 in callee
122 : LD 1, 2(5) ; Load parameter 'n' into R1
123 : LDA 4, 6(5) ; Recompute callee base from callee size
124 : ST 1, 2(4) ; Store argument 1 in callee
125 : LDA 4, 6(5) ; Recompute callee base from callee size
126 : LDA 6, 130(0) ; Return address
127 : ST 6, 0(4) ; Store return in callee frame
128 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
129 : LDA 7, 858(0) ; Call EXP
130 : LD 1, 3(5) ; Load callee result into R1
131 : LDC 2, 6(0) ; Callee frame size
132 : SUB 5, 5, 2 ; Pop callee frame
133 : LD 2, 6(5) ; Restore left operand from depth 1
134 : MUL 1, 2, 1 ; R1 = left * right
135 : ST 1, 6(5) ; Spill left operand at depth 1
136 : LD 1, 1(5) ; Load parameter 'a' into R1
137 : LD 2, 6(5) ; Restore left operand from depth 1
138 : MUL 1, 2, 1 ; R1 = left * right
139 : LD 2, 5(5) ; Restore left operand from depth 0
140 : ADD 1, 2, 1 ; R1 = left + right
141 : ST 1, 5(5) ; Spill left operand at depth 0
142 : LDC 1, 1(0) ; Load integer-literal into R1
143 : LD 2, 5(5) ; Restore left operand from depth 0
144 : ADD 1, 2, 1 ; R1 = left + right
145 : LDA 4, 6(5) ; Recompute callee base from callee size
146 : ST 1, 4(4) ; Store argument 3 in callee
147 : LDA 4, 6(5) ; Recompute callee base from callee size
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
151 : LDA 7, 160(0) ; Call aLoop1
152 : LD 1, 5(5) ; Load callee result into R1
153 : LDC 2, 6(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop callee frame
155 : LDA 7, 157(0) ; Skip ELSE block
156 : LDC 1, 1(0) ; Load boolean-literal into R1
157 : ST 1, 4(5) ; Store function result into frame return slot
158 : LD 6, 0(5) ; Load return address
159 : LDA 7, 0(6) ; Return to caller
160 : LD 1, 1(5) ; Load parameter 'a' into R1
161 : LDA 4, 9(5) ; Recompute callee base from callee size
162 : ST 1, 1(4) ; Store argument 0 in callee
163 : LD 1, 2(5) ; Load parameter 'n' into R1
164 : LDA 4, 9(5) ; Recompute callee base from callee size
165 : ST 1, 2(4) ; Store argument 1 in callee
166 : LD 1, 3(5) ; Load parameter 'upper' into R1
167 : LDA 4, 9(5) ; Recompute callee base from callee size
168 : ST 1, 3(4) ; Store argument 2 in callee
169 : LD 1, 4(5) ; Load parameter 'det' into R1
170 : LDA 4, 9(5) ; Recompute callee base from callee size
171 : ST 1, 4(4) ; Store argument 3 in callee
172 : LD 1, 4(5) ; Load parameter 'det' into R1
173 : LDA 4, 3(5) ; Recompute callee base from callee size
174 : ST 1, 1(4) ; Store argument 0 in callee
175 : LDA 4, 3(5) ; Recompute callee base from callee size
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
179 : LDA 7, 771(0) ; Call SQRT
180 : LD 1, 2(5) ; Load callee result into R1
181 : LDC 2, 3(0) ; Callee frame size
182 : SUB 5, 5, 2 ; Pop callee frame
183 : LDA 4, 9(5) ; Recompute callee base from callee size
184 : ST 1, 5(4) ; Store argument 4 in callee
185 : LDA 4, 9(5) ; Recompute callee base from callee size
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return in callee frame
188 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
189 : LDA 7, 196(0) ; Call aLoop2
190 : LD 1, 6(5) ; Load callee result into R1
191 : LDC 2, 9(0) ; Callee frame size
192 : SUB 5, 5, 2 ; Pop callee frame
193 : ST 1, 5(5) ; Store function result into frame return slot
194 : LD 6, 0(5) ; Load return address
195 : LDA 7, 0(6) ; Return to caller
196 : LD 1, 1(5) ; Load parameter 'a' into R1
197 : LDA 4, 10(5) ; Recompute callee base from callee size
198 : ST 1, 1(4) ; Store argument 0 in callee
199 : LD 1, 2(5) ; Load parameter 'n' into R1
200 : LDA 4, 10(5) ; Recompute callee base from callee size
201 : ST 1, 2(4) ; Store argument 1 in callee
202 : LD 1, 3(5) ; Load parameter 'upper' into R1
203 : LDA 4, 10(5) ; Recompute callee base from callee size
204 : ST 1, 3(4) ; Store argument 2 in callee
205 : LD 1, 4(5) ; Load parameter 'det' into R1
206 : LDA 4, 10(5) ; Recompute callee base from callee size
207 : ST 1, 4(4) ; Store argument 3 in callee
208 : LD 1, 5(5) ; Load parameter 'root' into R1
209 : LDA 4, 10(5) ; Recompute callee base from callee size
210 : ST 1, 5(4) ; Store argument 4 in callee
211 : LD 1, 1(5) ; Load parameter 'a' into R1
212 : ST 1, 7(5) ; Spill left operand at depth 0
213 : LDC 1, 10(0) ; Load integer-literal into R1
214 : LDA 4, 6(5) ; Recompute callee base from callee size
215 : ST 1, 1(4) ; Store argument 0 in callee
216 : LD 1, 2(5) ; Load parameter 'n' into R1
217 : LDA 4, 6(5) ; Recompute callee base from callee size
218 : ST 1, 2(4) ; Store argument 1 in callee
219 : LDA 4, 6(5) ; Recompute callee base from callee size
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return in callee frame
222 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
223 : LDA 7, 858(0) ; Call EXP
224 : LD 1, 3(5) ; Load callee result into R1
225 : LDC 2, 6(0) ; Callee frame size
226 : SUB 5, 5, 2 ; Pop callee frame
227 : LD 2, 7(5) ; Restore left operand from depth 0
228 : MUL 1, 2, 1 ; R1 = left * right
229 : ST 1, 7(5) ; Spill left operand at depth 0
230 : LD 1, 5(5) ; Load parameter 'root' into R1
231 : ST 1, 8(5) ; Spill left operand at depth 1
232 : LDC 1, 1(0) ; Load integer-literal into R1
233 : LD 2, 8(5) ; Restore left operand from depth 1
234 : ADD 1, 2, 1 ; R1 = left + right
235 : ST 1, 8(5) ; Spill left operand at depth 1
236 : LDC 1, 2(0) ; Load integer-literal into R1
237 : LD 2, 8(5) ; Restore left operand from depth 1
238 : DIV 1, 2, 1 ; R1 = left / right
239 : LD 2, 7(5) ; Restore left operand from depth 0
240 : ADD 1, 2, 1 ; R1 = left + right
241 : LDA 4, 10(5) ; Recompute callee base from callee size
242 : ST 1, 6(4) ; Store argument 5 in callee
243 : LDA 4, 10(5) ; Recompute callee base from callee size
244 : LDA 6, 248(0) ; Return address
245 : ST 6, 0(4) ; Store return in callee frame
246 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
247 : LDA 7, 254(0) ; Call aLoop3
248 : LD 1, 7(5) ; Load callee result into R1
249 : LDC 2, 10(0) ; Callee frame size
250 : SUB 5, 5, 2 ; Pop callee frame
251 : ST 1, 6(5) ; Store function result into frame return slot
252 : LD 6, 0(5) ; Load return address
253 : LDA 7, 0(6) ; Return to caller
254 : LD 1, 5(5) ; Load parameter 'root' into R1
255 : LDA 4, 6(5) ; Recompute callee base from callee size
256 : ST 1, 1(4) ; Store argument 0 in callee
257 : LD 1, 4(5) ; Load parameter 'det' into R1
258 : LDA 4, 6(5) ; Recompute callee base from callee size
259 : ST 1, 2(4) ; Store argument 1 in callee
260 : LDA 4, 6(5) ; Recompute callee base from callee size
261 : LDA 6, 265(0) ; Return address
262 : ST 6, 0(4) ; Store return in callee frame
263 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
264 : LDA 7, 593(0) ; Call ISROOT
265 : LD 1, 3(5) ; Load callee result into R1
266 : LDC 2, 6(0) ; Callee frame size
267 : SUB 5, 5, 2 ; Pop callee frame
268 : ST 1, 8(5) ; Spill left operand at depth 0
269 : LD 1, 5(5) ; Load parameter 'root' into R1
270 : ST 1, 9(5) ; Spill left operand at depth 1
271 : LDC 1, 1(0) ; Load integer-literal into R1
272 : LD 2, 9(5) ; Restore left operand from depth 1
273 : ADD 1, 2, 1 ; R1 = left + right
274 : LDA 4, 6(5) ; Recompute callee base from callee size
275 : ST 1, 1(4) ; Store argument 0 in callee
276 : LDA 4, 6(5) ; Recompute callee base from callee size
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return in callee frame
279 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
280 : LDA 7, 609(0) ; Call EVEN
281 : LD 1, 2(5) ; Load callee result into R1
282 : LDC 2, 6(0) ; Callee frame size
283 : SUB 5, 5, 2 ; Pop callee frame
284 : LD 2, 8(5) ; Restore left operand from depth 0
285 : MUL 1, 2, 1 ; R1 = left AND right
286 : ST 1, 8(5) ; Spill left operand at depth 0
287 : LD 1, 6(5) ; Load parameter 'candidate' into R1
288 : LDA 4, 3(5) ; Recompute callee base from callee size
289 : ST 1, 1(4) ; Store argument 0 in callee
290 : LDA 4, 3(5) ; Recompute callee base from callee size
291 : LDA 6, 295(0) ; Return address
292 : ST 6, 0(4) ; Store return in callee frame
293 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
294 : LDA 7, 378(0) ; Call isExcellent
295 : LD 1, 2(5) ; Load callee result into R1
296 : LDC 2, 3(0) ; Callee frame size
297 : SUB 5, 5, 2 ; Pop callee frame
298 : LD 2, 8(5) ; Restore left operand from depth 0
299 : MUL 1, 2, 1 ; R1 = left AND right
300 : JEQ 1, 322(0) ; If condition is false, jump to ELSE
301 : LD 1, 1(5) ; Load parameter 'a' into R1
302 : LDA 4, 7(5) ; Recompute callee base from callee size
303 : ST 1, 1(4) ; Store argument 0 in callee
304 : LD 1, 2(5) ; Load parameter 'n' into R1
305 : LDA 4, 7(5) ; Recompute callee base from callee size
306 : ST 1, 2(4) ; Store argument 1 in callee
307 : LD 1, 3(5) ; Load parameter 'upper' into R1
308 : LDA 4, 7(5) ; Recompute callee base from callee size
309 : ST 1, 3(4) ; Store argument 2 in callee
310 : LD 1, 6(5) ; Load parameter 'candidate' into R1
311 : LDA 4, 7(5) ; Recompute callee base from callee size
312 : ST 1, 4(4) ; Store argument 3 in callee
313 : LDA 4, 7(5) ; Recompute callee base from callee size
314 : LDA 6, 318(0) ; Return address
315 : ST 6, 0(4) ; Store return in callee frame
316 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
317 : LDA 7, 346(0) ; Call printCandidateAndContinue
318 : LD 1, 5(5) ; Load callee result into R1
319 : LDC 2, 7(0) ; Callee frame size
320 : SUB 5, 5, 2 ; Pop callee frame
321 : LDA 7, 343(0) ; Skip ELSE block
322 : LD 1, 1(5) ; Load parameter 'a' into R1
323 : ST 1, 8(5) ; Spill left operand at depth 0
324 : LDC 1, 1(0) ; Load integer-literal into R1
325 : LD 2, 8(5) ; Restore left operand from depth 0
326 : ADD 1, 2, 1 ; R1 = left + right
327 : LDA 4, 7(5) ; Recompute callee base from callee size
328 : ST 1, 1(4) ; Store argument 0 in callee
329 : LD 1, 2(5) ; Load parameter 'n' into R1
330 : LDA 4, 7(5) ; Recompute callee base from callee size
331 : ST 1, 2(4) ; Store argument 1 in callee
332 : LD 1, 3(5) ; Load parameter 'upper' into R1
333 : LDA 4, 7(5) ; Recompute callee base from callee size
334 : ST 1, 3(4) ; Store argument 2 in callee
335 : LDA 4, 7(5) ; Recompute callee base from callee size
336 : LDA 6, 340(0) ; Return address
337 : ST 6, 0(4) ; Store return in callee frame
338 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
339 : LDA 7, 79(0) ; Call aLoop
340 : LD 1, 4(5) ; Load callee result into R1
341 : LDC 2, 7(0) ; Callee frame size
342 : SUB 5, 5, 2 ; Pop callee frame
343 : ST 1, 7(5) ; Store function result into frame return slot
344 : LD 6, 0(5) ; Load return address
345 : LDA 7, 0(6) ; Return to caller
346 : LD 1, 4(5) ; Load parameter 'candidate' into R1
347 : LDA 4, 8(5) ; Recompute callee base from caller size
348 : LDA 6, 352(0) ; Return address
349 : ST 6, 0(4) ; Store return address in callee frame
350 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
351 : LDA 7, 9(0) ; Call built-in print
352 : LDC 2, 7(0) ; Caller frame size
353 : SUB 5, 5, 2 ; Pop back to caller
354 : LD 1, 1(5) ; Load parameter 'a' into R1
355 : ST 1, 6(5) ; Spill left operand at depth 0
356 : LDC 1, 1(0) ; Load integer-literal into R1
357 : LD 2, 6(5) ; Restore left operand from depth 0
358 : ADD 1, 2, 1 ; R1 = left + right
359 : LDA 4, 7(5) ; Recompute callee base from callee size
360 : ST 1, 1(4) ; Store argument 0 in callee
361 : LD 1, 2(5) ; Load parameter 'n' into R1
362 : LDA 4, 7(5) ; Recompute callee base from callee size
363 : ST 1, 2(4) ; Store argument 1 in callee
364 : LD 1, 3(5) ; Load parameter 'upper' into R1
365 : LDA 4, 7(5) ; Recompute callee base from callee size
366 : ST 1, 3(4) ; Store argument 2 in callee
367 : LDA 4, 7(5) ; Recompute callee base from callee size
368 : LDA 6, 372(0) ; Return address
369 : ST 6, 0(4) ; Store return in callee frame
370 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
371 : LDA 7, 79(0) ; Call aLoop
372 : LD 1, 4(5) ; Load callee result into R1
373 : LDC 2, 7(0) ; Callee frame size
374 : SUB 5, 5, 2 ; Pop callee frame
375 : ST 1, 5(5) ; Store function result into frame return slot
376 : LD 6, 0(5) ; Load return address
377 : LDA 7, 0(6) ; Return to caller
378 : LD 1, 1(5) ; Load parameter 'n' into R1
379 : LDA 4, 5(5) ; Recompute callee base from callee size
380 : ST 1, 1(4) ; Store argument 0 in callee
381 : LD 1, 1(5) ; Load parameter 'n' into R1
382 : LDA 4, 5(5) ; Recompute callee base from callee size
383 : ST 1, 1(4) ; Store argument 0 in callee
384 : LDA 4, 5(5) ; Recompute callee base from callee size
385 : LDA 6, 389(0) ; Return address
386 : ST 6, 0(4) ; Store return in callee frame
387 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
388 : LDA 7, 559(0) ; Call length
389 : LD 1, 2(5) ; Load callee result into R1
390 : LDC 2, 5(0) ; Callee frame size
391 : SUB 5, 5, 2 ; Pop callee frame
392 : LDA 4, 5(5) ; Recompute callee base from callee size
393 : ST 1, 2(4) ; Store argument 1 in callee
394 : LDA 4, 5(5) ; Recompute callee base from callee size
395 : LDA 6, 399(0) ; Return address
396 : ST 6, 0(4) ; Store return in callee frame
397 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
398 : LDA 7, 405(0) ; Call isExcellentSwitch
399 : LD 1, 3(5) ; Load callee result into R1
400 : LDC 2, 5(0) ; Callee frame size
401 : SUB 5, 5, 2 ; Pop callee frame
402 : ST 1, 2(5) ; Store function result into frame return slot
403 : LD 6, 0(5) ; Load return address
404 : LDA 7, 0(6) ; Return to caller
405 : LD 1, 2(5) ; Load parameter 'length' into R1
406 : LDA 4, 5(5) ; Recompute callee base from callee size
407 : ST 1, 1(4) ; Store argument 0 in callee
408 : LDA 4, 5(5) ; Recompute callee base from callee size
409 : LDA 6, 413(0) ; Return address
410 : ST 6, 0(4) ; Store return in callee frame
411 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
412 : LDA 7, 815(0) ; Call ODD
413 : LD 1, 2(5) ; Load callee result into R1
414 : LDC 2, 5(0) ; Callee frame size
415 : SUB 5, 5, 2 ; Pop callee frame
416 : JEQ 1, 419(0) ; If condition is false, jump to ELSE
417 : LDC 1, 0(0) ; Load boolean-literal into R1
418 : LDA 7, 461(0) ; Skip ELSE block
419 : LD 1, 1(5) ; Load parameter 'n' into R1
420 : ST 1, 4(5) ; Spill left operand at depth 0
421 : LD 1, 1(5) ; Load parameter 'n' into R1
422 : LDA 4, 5(5) ; Recompute callee base from callee size
423 : ST 1, 1(4) ; Store argument 0 in callee
424 : LDA 4, 5(5) ; Recompute callee base from callee size
425 : LDA 6, 429(0) ; Return address
426 : ST 6, 0(4) ; Store return in callee frame
427 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
428 : LDA 7, 524(0) ; Call a
429 : LD 1, 2(5) ; Load callee result into R1
430 : LDC 2, 5(0) ; Callee frame size
431 : SUB 5, 5, 2 ; Pop callee frame
432 : LDA 4, 6(5) ; Recompute callee base from callee size
433 : ST 1, 1(4) ; Store argument 0 in callee
434 : LD 1, 1(5) ; Load parameter 'n' into R1
435 : LDA 4, 4(5) ; Recompute callee base from callee size
436 : ST 1, 1(4) ; Store argument 0 in callee
437 : LDA 4, 4(5) ; Recompute callee base from callee size
438 : LDA 6, 442(0) ; Return address
439 : ST 6, 0(4) ; Store return in callee frame
440 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
441 : LDA 7, 480(0) ; Call b
442 : LD 1, 2(5) ; Load callee result into R1
443 : LDC 2, 4(0) ; Callee frame size
444 : SUB 5, 5, 2 ; Pop callee frame
445 : LDA 4, 6(5) ; Recompute callee base from callee size
446 : ST 1, 2(4) ; Store argument 1 in callee
447 : LDA 4, 6(5) ; Recompute callee base from callee size
448 : LDA 6, 452(0) ; Return address
449 : ST 6, 0(4) ; Store return in callee frame
450 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
451 : LDA 7, 464(0) ; Call excellentDiff
452 : LD 1, 3(5) ; Load callee result into R1
453 : LDC 2, 6(0) ; Callee frame size
454 : SUB 5, 5, 2 ; Pop callee frame
455 : LD 2, 4(5) ; Restore left operand from depth 0
456 : SUB 1, 2, 1 ; left - right for equality check
457 : JEQ 1, 2(7) ; If R1 == 0, jump to true
458 : LDC 1, 0(0) ; false
459 : LDA 7, 1(7) ; skip setting true
460 : LDC 1, 1(0) ; true
461 : ST 1, 3(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 2(5) ; Load parameter 'b' into R1
465 : ST 1, 4(5) ; Spill left operand at depth 0
466 : LD 1, 2(5) ; Load parameter 'b' into R1
467 : LD 2, 4(5) ; Restore left operand from depth 0
468 : MUL 1, 2, 1 ; R1 = left * right
469 : ST 1, 4(5) ; Spill left operand at depth 0
470 : LD 1, 1(5) ; Load parameter 'a' into R1
471 : ST 1, 5(5) ; Spill left operand at depth 1
472 : LD 1, 1(5) ; Load parameter 'a' into R1
473 : LD 2, 5(5) ; Restore left operand from depth 1
474 : MUL 1, 2, 1 ; R1 = left * right
475 : LD 2, 4(5) ; Restore left operand from depth 0
476 : SUB 1, 2, 1 ; R1 = left - right
477 : ST 1, 3(5) ; Store function result into frame return slot
478 : LD 6, 0(5) ; Load return address
479 : LDA 7, 0(6) ; Return to caller
480 : LD 1, 1(5) ; Load parameter 'n' into R1
481 : LDA 4, 7(5) ; Recompute callee base from callee size
482 : ST 1, 1(4) ; Store argument 0 in callee
483 : LDC 1, 10(0) ; Load integer-literal into R1
484 : LDA 4, 6(5) ; Recompute callee base from callee size
485 : ST 1, 1(4) ; Store argument 0 in callee
486 : LD 1, 1(5) ; Load parameter 'n' into R1
487 : LDA 4, 5(5) ; Recompute callee base from callee size
488 : ST 1, 1(4) ; Store argument 0 in callee
489 : LDA 4, 5(5) ; Recompute callee base from callee size
490 : LDA 6, 494(0) ; Return address
491 : ST 6, 0(4) ; Store return in callee frame
492 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
493 : LDA 7, 559(0) ; Call length
494 : LD 1, 2(5) ; Load callee result into R1
495 : LDC 2, 5(0) ; Callee frame size
496 : SUB 5, 5, 2 ; Pop callee frame
497 : ST 1, 3(5) ; Spill left operand at depth 0
498 : LDC 1, 2(0) ; Load integer-literal into R1
499 : LD 2, 3(5) ; Restore left operand from depth 0
500 : DIV 1, 2, 1 ; R1 = left / right
501 : LDA 4, 6(5) ; Recompute callee base from callee size
502 : ST 1, 2(4) ; Store argument 1 in callee
503 : LDA 4, 6(5) ; Recompute callee base from callee size
504 : LDA 6, 508(0) ; Return address
505 : ST 6, 0(4) ; Store return in callee frame
506 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
507 : LDA 7, 858(0) ; Call EXP
508 : LD 1, 3(5) ; Load callee result into R1
509 : LDC 2, 6(0) ; Callee frame size
510 : SUB 5, 5, 2 ; Pop callee frame
511 : LDA 4, 7(5) ; Recompute callee base from callee size
512 : ST 1, 2(4) ; Store argument 1 in callee
513 : LDA 4, 7(5) ; Recompute callee base from callee size
514 : LDA 6, 518(0) ; Return address
515 : ST 6, 0(4) ; Store return in callee frame
516 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
517 : LDA 7, 895(0) ; Call MOD
518 : LD 1, 3(5) ; Load callee result into R1
519 : LDC 2, 7(0) ; Callee frame size
520 : SUB 5, 5, 2 ; Pop callee frame
521 : ST 1, 2(5) ; Store function result into frame return slot
522 : LD 6, 0(5) ; Load return address
523 : LDA 7, 0(6) ; Return to caller
524 : LD 1, 1(5) ; Load parameter 'n' into R1
525 : ST 1, 3(5) ; Spill left operand at depth 0
526 : LDC 1, 10(0) ; Load integer-literal into R1
527 : LDA 4, 6(5) ; Recompute callee base from callee size
528 : ST 1, 1(4) ; Store argument 0 in callee
529 : LD 1, 1(5) ; Load parameter 'n' into R1
530 : LDA 4, 5(5) ; Recompute callee base from callee size
531 : ST 1, 1(4) ; Store argument 0 in callee
532 : LDA 4, 5(5) ; Recompute callee base from callee size
533 : LDA 6, 537(0) ; Return address
534 : ST 6, 0(4) ; Store return in callee frame
535 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
536 : LDA 7, 559(0) ; Call length
537 : LD 1, 2(5) ; Load callee result into R1
538 : LDC 2, 5(0) ; Callee frame size
539 : SUB 5, 5, 2 ; Pop callee frame
540 : ST 1, 4(5) ; Spill left operand at depth 1
541 : LDC 1, 2(0) ; Load integer-literal into R1
542 : LD 2, 4(5) ; Restore left operand from depth 1
543 : DIV 1, 2, 1 ; R1 = left / right
544 : LDA 4, 6(5) ; Recompute callee base from callee size
545 : ST 1, 2(4) ; Store argument 1 in callee
546 : LDA 4, 6(5) ; Recompute callee base from callee size
547 : LDA 6, 551(0) ; Return address
548 : ST 6, 0(4) ; Store return in callee frame
549 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
550 : LDA 7, 858(0) ; Call EXP
551 : LD 1, 3(5) ; Load callee result into R1
552 : LDC 2, 6(0) ; Callee frame size
553 : SUB 5, 5, 2 ; Pop callee frame
554 : LD 2, 3(5) ; Restore left operand from depth 0
555 : DIV 1, 2, 1 ; R1 = left / right
556 : ST 1, 2(5) ; Store function result into frame return slot
557 : LD 6, 0(5) ; Load return address
558 : LDA 7, 0(6) ; Return to caller
559 : LD 1, 1(5) ; Load parameter 'n' into R1
560 : ST 1, 3(5) ; Spill left operand at depth 0
561 : LDC 1, 10(0) ; Load integer-literal into R1
562 : LD 2, 3(5) ; Restore left operand from depth 0
563 : SUB 1, 2, 1 ; left - right for less-than check
564 : JLT 1, 2(7) ; If R1 < 0, jump to true
565 : LDC 1, 0(0) ; false
566 : LDA 7, 1(7) ; skip setting true
567 : LDC 1, 1(0) ; true
568 : JEQ 1, 571(0) ; If condition is false, jump to ELSE
569 : LDC 1, 1(0) ; Load integer-literal into R1
570 : LDA 7, 590(0) ; Skip ELSE block
571 : LDC 1, 1(0) ; Load integer-literal into R1
572 : ST 1, 3(5) ; Spill left operand at depth 0
573 : LD 1, 1(5) ; Load parameter 'n' into R1
574 : ST 1, 4(5) ; Spill left operand at depth 1
575 : LDC 1, 10(0) ; Load integer-literal into R1
576 : LD 2, 4(5) ; Restore left operand from depth 1
577 : DIV 1, 2, 1 ; R1 = left / right
578 : LDA 4, 5(5) ; Recompute callee base from callee size
579 : ST 1, 1(4) ; Store argument 0 in callee
580 : LDA 4, 5(5) ; Recompute callee base from callee size
581 : LDA 6, 585(0) ; Return address
582 : ST 6, 0(4) ; Store return in callee frame
583 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
584 : LDA 7, 559(0) ; Call length
585 : LD 1, 2(5) ; Load callee result into R1
586 : LDC 2, 5(0) ; Callee frame size
587 : SUB 5, 5, 2 ; Pop callee frame
588 : LD 2, 3(5) ; Restore left operand from depth 0
589 : ADD 1, 2, 1 ; R1 = left + right
590 : ST 1, 2(5) ; Store function result into frame return slot
591 : LD 6, 0(5) ; Load return address
592 : LDA 7, 0(6) ; Return to caller
593 : LD 1, 2(5) ; Load parameter 'n' into R1
594 : ST 1, 4(5) ; Spill left operand at depth 0
595 : LD 1, 1(5) ; Load parameter 'r' into R1
596 : ST 1, 5(5) ; Spill left operand at depth 1
597 : LD 1, 1(5) ; Load parameter 'r' into R1
598 : LD 2, 5(5) ; Restore left operand from depth 1
599 : MUL 1, 2, 1 ; R1 = left * right
600 : LD 2, 4(5) ; Restore left operand from depth 0
601 : SUB 1, 2, 1 ; left - right for equality check
602 : JEQ 1, 2(7) ; If R1 == 0, jump to true
603 : LDC 1, 0(0) ; false
604 : LDA 7, 1(7) ; skip setting true
605 : LDC 1, 1(0) ; true
606 : ST 1, 3(5) ; Store function result into frame return slot
607 : LD 6, 0(5) ; Load return address
608 : LDA 7, 0(6) ; Return to caller
609 : LD 1, 1(5) ; Load parameter 'n' into R1
610 : ST 1, 3(5) ; Spill left operand at depth 0
611 : LDC 1, 2(0) ; Load integer-literal into R1
612 : ST 1, 4(5) ; Spill left operand at depth 1
613 : LD 1, 1(5) ; Load parameter 'n' into R1
614 : ST 1, 5(5) ; Spill left operand at depth 2
615 : LDC 1, 2(0) ; Load integer-literal into R1
616 : LD 2, 5(5) ; Restore left operand from depth 2
617 : DIV 1, 2, 1 ; R1 = left / right
618 : LD 2, 4(5) ; Restore left operand from depth 1
619 : MUL 1, 2, 1 ; R1 = left * right
620 : LD 2, 3(5) ; Restore left operand from depth 0
621 : SUB 1, 2, 1 ; left - right for equality check
622 : JEQ 1, 2(7) ; If R1 == 0, jump to true
623 : LDC 1, 0(0) ; false
624 : LDA 7, 1(7) ; skip setting true
625 : LDC 1, 1(0) ; true
626 : ST 1, 2(5) ; Store function result into frame return slot
627 : LD 6, 0(5) ; Load return address
628 : LDA 7, 0(6) ; Return to caller
629 : LD 1, 4(5) ; Load parameter 'mid' into R1
630 : ST 1, 6(5) ; Spill left operand at depth 0
631 : LD 1, 4(5) ; Load parameter 'mid' into R1
632 : LD 2, 6(5) ; Restore left operand from depth 0
633 : MUL 1, 2, 1 ; R1 = left * right
634 : LDA 4, 6(5) ; Recompute callee base from callee size
635 : ST 1, 1(4) ; Store argument 0 in callee
636 : LD 1, 1(5) ; Load parameter 'n' into R1
637 : LDA 4, 6(5) ; Recompute callee base from callee size
638 : ST 1, 2(4) ; Store argument 1 in callee
639 : LDA 4, 6(5) ; Recompute callee base from callee size
640 : LDA 6, 644(0) ; Return address
641 : ST 6, 0(4) ; Store return in callee frame
642 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
643 : LDA 7, 791(0) ; Call LE
644 : LD 1, 3(5) ; Load callee result into R1
645 : LDC 2, 6(0) ; Callee frame size
646 : SUB 5, 5, 2 ; Pop callee frame
647 : JEQ 1, 666(0) ; If condition is false, jump to ELSE
648 : LD 1, 1(5) ; Load parameter 'n' into R1
649 : LDA 4, 7(5) ; Recompute callee base from callee size
650 : ST 1, 1(4) ; Store argument 0 in callee
651 : LD 1, 4(5) ; Load parameter 'mid' into R1
652 : LDA 4, 7(5) ; Recompute callee base from callee size
653 : ST 1, 2(4) ; Store argument 1 in callee
654 : LD 1, 3(5) ; Load parameter 'high' into R1
655 : LDA 4, 7(5) ; Recompute callee base from callee size
656 : ST 1, 3(4) ; Store argument 2 in callee
657 : LDA 4, 7(5) ; Recompute callee base from callee size
658 : LDA 6, 662(0) ; Return address
659 : ST 6, 0(4) ; Store return in callee frame
660 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
661 : LDA 7, 686(0) ; Call SQRTSEARCH
662 : LD 1, 4(5) ; Load callee result into R1
663 : LDC 2, 7(0) ; Callee frame size
664 : SUB 5, 5, 2 ; Pop callee frame
665 : LDA 7, 683(0) ; Skip ELSE block
666 : LD 1, 1(5) ; Load parameter 'n' into R1
667 : LDA 4, 7(5) ; Recompute callee base from callee size
668 : ST 1, 1(4) ; Store argument 0 in callee
669 : LD 1, 2(5) ; Load parameter 'low' into R1
670 : LDA 4, 7(5) ; Recompute callee base from callee size
671 : ST 1, 2(4) ; Store argument 1 in callee
672 : LD 1, 4(5) ; Load parameter 'mid' into R1
673 : LDA 4, 7(5) ; Recompute callee base from callee size
674 : ST 1, 3(4) ; Store argument 2 in callee
675 : LDA 4, 7(5) ; Recompute callee base from callee size
676 : LDA 6, 680(0) ; Return address
677 : ST 6, 0(4) ; Store return in callee frame
678 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
679 : LDA 7, 686(0) ; Call SQRTSEARCH
680 : LD 1, 4(5) ; Load callee result into R1
681 : LDC 2, 7(0) ; Callee frame size
682 : SUB 5, 5, 2 ; Pop callee frame
683 : ST 1, 5(5) ; Store function result into frame return slot
684 : LD 6, 0(5) ; Load return address
685 : LDA 7, 0(6) ; Return to caller
686 : LD 1, 3(5) ; Load parameter 'high' into R1
687 : LDA 4, 6(5) ; Recompute callee base from callee size
688 : ST 1, 1(4) ; Store argument 0 in callee
689 : LD 1, 2(5) ; Load parameter 'low' into R1
690 : ST 1, 5(5) ; Spill left operand at depth 0
691 : LDC 1, 1(0) ; Load integer-literal into R1
692 : LD 2, 5(5) ; Restore left operand from depth 0
693 : ADD 1, 2, 1 ; R1 = left + right
694 : LDA 4, 6(5) ; Recompute callee base from callee size
695 : ST 1, 2(4) ; Store argument 1 in callee
696 : LDA 4, 6(5) ; Recompute callee base from callee size
697 : LDA 6, 701(0) ; Return address
698 : ST 6, 0(4) ; Store return in callee frame
699 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
700 : LDA 7, 791(0) ; Call LE
701 : LD 1, 3(5) ; Load callee result into R1
702 : LDC 2, 6(0) ; Callee frame size
703 : SUB 5, 5, 2 ; Pop callee frame
704 : JEQ 1, 740(0) ; If condition is false, jump to ELSE
705 : LD 1, 1(5) ; Load parameter 'n' into R1
706 : ST 1, 5(5) ; Spill left operand at depth 0
707 : LD 1, 2(5) ; Load parameter 'low' into R1
708 : ST 1, 6(5) ; Spill left operand at depth 1
709 : LD 1, 2(5) ; Load parameter 'low' into R1
710 : LD 2, 6(5) ; Restore left operand from depth 1
711 : MUL 1, 2, 1 ; R1 = left * right
712 : LD 2, 5(5) ; Restore left operand from depth 0
713 : SUB 1, 2, 1 ; R1 = left - right
714 : LDA 4, 6(5) ; Recompute callee base from callee size
715 : ST 1, 1(4) ; Store argument 0 in callee
716 : LD 1, 3(5) ; Load parameter 'high' into R1
717 : ST 1, 5(5) ; Spill left operand at depth 0
718 : LD 1, 3(5) ; Load parameter 'high' into R1
719 : LD 2, 5(5) ; Restore left operand from depth 0
720 : MUL 1, 2, 1 ; R1 = left * right
721 : ST 1, 5(5) ; Spill left operand at depth 0
722 : LD 1, 1(5) ; Load parameter 'n' into R1
723 : LD 2, 5(5) ; Restore left operand from depth 0
724 : SUB 1, 2, 1 ; R1 = left - right
725 : LDA 4, 6(5) ; Recompute callee base from callee size
726 : ST 1, 2(4) ; Store argument 1 in callee
727 : LDA 4, 6(5) ; Recompute callee base from callee size
728 : LDA 6, 732(0) ; Return address
729 : ST 6, 0(4) ; Store return in callee frame
730 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
731 : LDA 7, 791(0) ; Call LE
732 : LD 1, 3(5) ; Load callee result into R1
733 : LDC 2, 6(0) ; Callee frame size
734 : SUB 5, 5, 2 ; Pop callee frame
735 : JEQ 1, 738(0) ; If condition is false, jump to ELSE
736 : LD 1, 2(5) ; Load parameter 'low' into R1
737 : LDA 7, 739(0) ; Skip ELSE block
738 : LD 1, 3(5) ; Load parameter 'high' into R1
739 : LDA 7, 768(0) ; Skip ELSE block
740 : LD 1, 1(5) ; Load parameter 'n' into R1
741 : LDA 4, 7(5) ; Recompute callee base from callee size
742 : ST 1, 1(4) ; Store argument 0 in callee
743 : LD 1, 2(5) ; Load parameter 'low' into R1
744 : LDA 4, 7(5) ; Recompute callee base from callee size
745 : ST 1, 2(4) ; Store argument 1 in callee
746 : LD 1, 3(5) ; Load parameter 'high' into R1
747 : LDA 4, 7(5) ; Recompute callee base from callee size
748 : ST 1, 3(4) ; Store argument 2 in callee
749 : LD 1, 2(5) ; Load parameter 'low' into R1
750 : ST 1, 5(5) ; Spill left operand at depth 0
751 : LD 1, 3(5) ; Load parameter 'high' into R1
752 : LD 2, 5(5) ; Restore left operand from depth 0
753 : ADD 1, 2, 1 ; R1 = left + right
754 : ST 1, 5(5) ; Spill left operand at depth 0
755 : LDC 1, 2(0) ; Load integer-literal into R1
756 : LD 2, 5(5) ; Restore left operand from depth 0
757 : DIV 1, 2, 1 ; R1 = left / right
758 : LDA 4, 7(5) ; Recompute callee base from callee size
759 : ST 1, 4(4) ; Store argument 3 in callee
760 : LDA 4, 7(5) ; Recompute callee base from callee size
761 : LDA 6, 765(0) ; Return address
762 : ST 6, 0(4) ; Store return in callee frame
763 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
764 : LDA 7, 629(0) ; Call SQRTSPLIT
765 : LD 1, 5(5) ; Load callee result into R1
766 : LDC 2, 7(0) ; Callee frame size
767 : SUB 5, 5, 2 ; Pop callee frame
768 : ST 1, 4(5) ; Store function result into frame return slot
769 : LD 6, 0(5) ; Load return address
770 : LDA 7, 0(6) ; Return to caller
771 : LD 1, 1(5) ; Load parameter 'n' into R1
772 : LDA 4, 7(5) ; Recompute callee base from callee size
773 : ST 1, 1(4) ; Store argument 0 in callee
774 : LDC 1, 0(0) ; Load integer-literal into R1
775 : LDA 4, 7(5) ; Recompute callee base from callee size
776 : ST 1, 2(4) ; Store argument 1 in callee
777 : LD 1, 1(5) ; Load parameter 'n' into R1
778 : LDA 4, 7(5) ; Recompute callee base from callee size
779 : ST 1, 3(4) ; Store argument 2 in callee
780 : LDA 4, 7(5) ; Recompute callee base from callee size
781 : LDA 6, 785(0) ; Return address
782 : ST 6, 0(4) ; Store return in callee frame
783 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
784 : LDA 7, 686(0) ; Call SQRTSEARCH
785 : LD 1, 4(5) ; Load callee result into R1
786 : LDC 2, 7(0) ; Callee frame size
787 : SUB 5, 5, 2 ; Pop callee frame
788 : ST 1, 2(5) ; Store function result into frame return slot
789 : LD 6, 0(5) ; Load return address
790 : LDA 7, 0(6) ; Return to caller
791 : LD 1, 1(5) ; Load parameter 'p' into R1
792 : ST 1, 4(5) ; Spill left operand at depth 0
793 : LD 1, 2(5) ; Load parameter 'q' into R1
794 : LD 2, 4(5) ; Restore left operand from depth 0
795 : SUB 1, 2, 1 ; left - right for less-than check
796 : JLT 1, 2(7) ; If R1 < 0, jump to true
797 : LDC 1, 0(0) ; false
798 : LDA 7, 1(7) ; skip setting true
799 : LDC 1, 1(0) ; true
800 : ST 1, 4(5) ; Spill left operand at depth 0
801 : LD 1, 1(5) ; Load parameter 'p' into R1
802 : ST 1, 5(5) ; Spill left operand at depth 1
803 : LD 1, 2(5) ; Load parameter 'q' into R1
804 : LD 2, 5(5) ; Restore left operand from depth 1
805 : SUB 1, 2, 1 ; left - right for equality check
806 : JEQ 1, 2(7) ; If R1 == 0, jump to true
807 : LDC 1, 0(0) ; false
808 : LDA 7, 1(7) ; skip setting true
809 : LDC 1, 1(0) ; true
810 : LD 2, 4(5) ; Restore left operand from depth 0
811 : ADD 1, 2, 1 ; R1 = left OR right
812 : ST 1, 3(5) ; Store function result into frame return slot
813 : LD 6, 0(5) ; Load return address
814 : LDA 7, 0(6) ; Return to caller
815 : LDC 1, 0(0) ; Load integer-literal into R1
816 : ST 1, 3(5) ; Spill left operand at depth 0
817 : LD 1, 1(5) ; Load parameter 'n' into R1
818 : LD 2, 3(5) ; Restore left operand from depth 0
819 : SUB 1, 2, 1 ; left - right for less-than check
820 : JLT 1, 2(7) ; If R1 < 0, jump to true
821 : LDC 1, 0(0) ; false
822 : LDA 7, 1(7) ; skip setting true
823 : LDC 1, 1(0) ; true
824 : JEQ 1, 843(0) ; If condition is false, jump to ELSE
825 : LDC 1, 2(0) ; Load integer-literal into R1
826 : ST 1, 3(5) ; Spill left operand at depth 0
827 : LD 1, 1(5) ; Load parameter 'n' into R1
828 : ST 1, 4(5) ; Spill left operand at depth 1
829 : LDC 1, 2(0) ; Load integer-literal into R1
830 : LD 2, 4(5) ; Restore left operand from depth 1
831 : DIV 1, 2, 1 ; R1 = left / right
832 : LD 2, 3(5) ; Restore left operand from depth 0
833 : MUL 1, 2, 1 ; R1 = left * right
834 : ST 1, 3(5) ; Spill left operand at depth 0
835 : LD 1, 1(5) ; Load parameter 'n' into R1
836 : LD 2, 3(5) ; Restore left operand from depth 0
837 : SUB 1, 2, 1 ; left - right for less-than check
838 : JLT 1, 2(7) ; If R1 < 0, jump to true
839 : LDC 1, 0(0) ; false
840 : LDA 7, 1(7) ; skip setting true
841 : LDC 1, 1(0) ; true
842 : LDA 7, 855(0) ; Skip ELSE block
843 : LD 1, 1(5) ; Load parameter 'n' into R1
844 : SUB 1, 0, 1 ; Negate value in R1
845 : LDA 4, 5(5) ; Recompute callee base from callee size
846 : ST 1, 1(4) ; Store argument 0 in callee
847 : LDA 4, 5(5) ; Recompute callee base from callee size
848 : LDA 6, 852(0) ; Return address
849 : ST 6, 0(4) ; Store return in callee frame
850 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
851 : LDA 7, 815(0) ; Call ODD
852 : LD 1, 2(5) ; Load callee result into R1
853 : LDC 2, 5(0) ; Callee frame size
854 : SUB 5, 5, 2 ; Pop callee frame
855 : ST 1, 2(5) ; Store function result into frame return slot
856 : LD 6, 0(5) ; Load return address
857 : LDA 7, 0(6) ; Return to caller
858 : LD 1, 2(5) ; Load parameter 'n' into R1
859 : ST 1, 4(5) ; Spill left operand at depth 0
860 : LDC 1, 0(0) ; Load integer-literal into R1
861 : LD 2, 4(5) ; Restore left operand from depth 0
862 : SUB 1, 2, 1 ; left - right for equality check
863 : JEQ 1, 2(7) ; If R1 == 0, jump to true
864 : LDC 1, 0(0) ; false
865 : LDA 7, 1(7) ; skip setting true
866 : LDC 1, 1(0) ; true
867 : JEQ 1, 870(0) ; If condition is false, jump to ELSE
868 : LDC 1, 1(0) ; Load integer-literal into R1
869 : LDA 7, 892(0) ; Skip ELSE block
870 : LD 1, 1(5) ; Load parameter 'm' into R1
871 : ST 1, 4(5) ; Spill left operand at depth 0
872 : LD 1, 1(5) ; Load parameter 'm' into R1
873 : LDA 4, 6(5) ; Recompute callee base from callee size
874 : ST 1, 1(4) ; Store argument 0 in callee
875 : LD 1, 2(5) ; Load parameter 'n' into R1
876 : ST 1, 5(5) ; Spill left operand at depth 1
877 : LDC 1, 1(0) ; Load integer-literal into R1
878 : LD 2, 5(5) ; Restore left operand from depth 1
879 : SUB 1, 2, 1 ; R1 = left - right
880 : LDA 4, 6(5) ; Recompute callee base from callee size
881 : ST 1, 2(4) ; Store argument 1 in callee
882 : LDA 4, 6(5) ; Recompute callee base from callee size
883 : LDA 6, 887(0) ; Return address
884 : ST 6, 0(4) ; Store return in callee frame
885 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
886 : LDA 7, 858(0) ; Call EXP
887 : LD 1, 3(5) ; Load callee result into R1
888 : LDC 2, 6(0) ; Callee frame size
889 : SUB 5, 5, 2 ; Pop callee frame
890 : LD 2, 4(5) ; Restore left operand from depth 0
891 : MUL 1, 2, 1 ; R1 = left * right
892 : ST 1, 3(5) ; Store function result into frame return slot
893 : LD 6, 0(5) ; Load return address
894 : LDA 7, 0(6) ; Return to caller
895 : LD 1, 1(5) ; Load parameter 'm' into R1
896 : ST 1, 4(5) ; Spill left operand at depth 0
897 : LD 1, 2(5) ; Load parameter 'n' into R1
898 : ST 1, 5(5) ; Spill left operand at depth 1
899 : LD 1, 1(5) ; Load parameter 'm' into R1
900 : ST 1, 6(5) ; Spill left operand at depth 2
901 : LD 1, 2(5) ; Load parameter 'n' into R1
902 : LD 2, 6(5) ; Restore left operand from depth 2
903 : DIV 1, 2, 1 ; R1 = left / right
904 : LD 2, 5(5) ; Restore left operand from depth 1
905 : MUL 1, 2, 1 ; R1 = left * right
906 : LD 2, 4(5) ; Restore left operand from depth 0
907 : SUB 1, 2, 1 ; R1 = left - right
908 : ST 1, 3(5) ; Store function result into frame return slot
909 : LD 6, 0(5) ; Load return address
910 : LDA 7, 0(6) ; Return to caller
