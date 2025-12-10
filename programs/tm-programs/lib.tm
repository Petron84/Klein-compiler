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
13 : LDA 4, 3(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 4, 3(5) ; Recompute callee base from callee size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 214(0) ; Call SQRT
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : LDA 4, 3(5) ; Recompute callee base from caller size
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return address in callee frame
26 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
27 : LDA 7, 9(0) ; Call built-in print
28 : LDC 2, 3(0) ; Caller frame size
29 : SUB 5, 5, 2 ; Pop back to caller
30 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
31 : LDA 4, 4(5) ; Recompute callee base from callee size
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 4, 4(5) ; Recompute callee base from callee size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 234(0) ; Call ODD
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop callee frame
41 : ST 1, 2(5) ; Store result into caller’s frame
42 : LD 1, 2(5) ; Load main return value into R1
43 : LD 6, 0(5) ; Load main return address
44 : LDA 7, 0(6) ; Return from main
45 : LD 1, 4(5) ; Load parameter 'mid' into R1
46 : ST 1, 6(5) ; Spill left operand at depth 0
47 : LD 1, 4(5) ; Load parameter 'mid' into R1
48 : LD 2, 6(5) ; Restore left operand from depth 0
49 : MUL 1, 2, 1 ; R1 = left * right
50 : LDA 4, 5(5) ; Recompute callee base from callee size
51 : ST 1, 1(4) ; Store argument 0 in callee
52 : LD 1, 1(5) ; Load parameter 'n' into R1
53 : LDA 4, 5(5) ; Recompute callee base from callee size
54 : ST 1, 2(4) ; Store argument 1 in callee
55 : LDA 4, 5(5) ; Recompute callee base from callee size
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return in callee frame
58 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
59 : LDA 7, 541(0) ; Call LE
60 : LD 1, 3(5) ; Load callee result into R1
61 : LDC 2, 5(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop callee frame
63 : JEQ 1, 82(0) ; If condition is false, jump to ELSE
64 : LD 1, 1(5) ; Load parameter 'n' into R1
65 : LDA 4, 6(5) ; Recompute callee base from callee size
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD 1, 4(5) ; Load parameter 'mid' into R1
68 : LDA 4, 6(5) ; Recompute callee base from callee size
69 : ST 1, 2(4) ; Store argument 1 in callee
70 : LD 1, 3(5) ; Load parameter 'high' into R1
71 : LDA 4, 6(5) ; Recompute callee base from callee size
72 : ST 1, 3(4) ; Store argument 2 in callee
73 : LDA 4, 6(5) ; Recompute callee base from callee size
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
77 : LDA 7, 102(0) ; Call SQRTSEARCH
78 : LD 1, 4(5) ; Load callee result into R1
79 : LDC 2, 6(0) ; Callee frame size
80 : SUB 5, 5, 2 ; Pop callee frame
81 : LDA 7, 99(0) ; Skip ELSE block
82 : LD 1, 1(5) ; Load parameter 'n' into R1
83 : LDA 4, 6(5) ; Recompute callee base from callee size
84 : ST 1, 1(4) ; Store argument 0 in callee
85 : LD 1, 2(5) ; Load parameter 'low' into R1
86 : LDA 4, 6(5) ; Recompute callee base from callee size
87 : ST 1, 2(4) ; Store argument 1 in callee
88 : LD 1, 4(5) ; Load parameter 'mid' into R1
89 : LDA 4, 6(5) ; Recompute callee base from callee size
90 : ST 1, 3(4) ; Store argument 2 in callee
91 : LDA 4, 6(5) ; Recompute callee base from callee size
92 : LDA 6, 96(0) ; Return address
93 : ST 6, 0(4) ; Store return in callee frame
94 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
95 : LDA 7, 102(0) ; Call SQRTSEARCH
96 : LD 1, 4(5) ; Load callee result into R1
97 : LDC 2, 6(0) ; Callee frame size
98 : SUB 5, 5, 2 ; Pop callee frame
99 : ST 1, 5(5) ; Store function result into frame return slot
100 : LD 6, 0(5) ; Load return address
101 : LDA 7, 0(6) ; Return to caller
102 : LD 1, 3(5) ; Load parameter 'high' into R1
103 : LDA 4, 5(5) ; Recompute callee base from callee size
104 : ST 1, 1(4) ; Store argument 0 in callee
105 : LD 1, 2(5) ; Load parameter 'low' into R1
106 : ST 1, 5(5) ; Spill left operand at depth 0
107 : LDC 1, 1(0) ; Load integer-literal into R1
108 : LD 2, 5(5) ; Restore left operand from depth 0
109 : ADD 1, 2, 1 ; R1 = left + right
110 : LDA 4, 5(5) ; Recompute callee base from callee size
111 : ST 1, 2(4) ; Store argument 1 in callee
112 : LDA 4, 5(5) ; Recompute callee base from callee size
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 541(0) ; Call LE
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 5(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : JEQ 1, 174(0) ; If condition is false, jump to ELSE
121 : LD 1, 1(5) ; Load parameter 'n' into R1
122 : ST 1, 5(5) ; Spill left operand at depth 0
123 : LD 1, 2(5) ; Load parameter 'low' into R1
124 : LDA 4, 5(5) ; Recompute callee base from callee size
125 : ST 1, 1(4) ; Store argument 0 in callee
126 : LD 1, 2(5) ; Load parameter 'low' into R1
127 : LDA 4, 5(5) ; Recompute callee base from callee size
128 : ST 1, 2(4) ; Store argument 1 in callee
129 : LDA 4, 5(5) ; Recompute callee base from callee size
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
133 : LDA 7, 463(0) ; Call TIMES
134 : LD 1, 3(5) ; Load callee result into R1
135 : LDC 2, 5(0) ; Callee frame size
136 : SUB 5, 5, 2 ; Pop callee frame
137 : LD 2, 5(5) ; Restore left operand from depth 0
138 : SUB 1, 2, 1 ; R1 = left - right
139 : LDA 4, 5(5) ; Recompute callee base from callee size
140 : ST 1, 1(4) ; Store argument 0 in callee
141 : LD 1, 3(5) ; Load parameter 'high' into R1
142 : LDA 4, 5(5) ; Recompute callee base from callee size
143 : ST 1, 1(4) ; Store argument 0 in callee
144 : LD 1, 3(5) ; Load parameter 'high' into R1
145 : LDA 4, 5(5) ; Recompute callee base from callee size
146 : ST 1, 2(4) ; Store argument 1 in callee
147 : LDA 4, 5(5) ; Recompute callee base from callee size
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return in callee frame
150 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
151 : LDA 7, 463(0) ; Call TIMES
152 : LD 1, 3(5) ; Load callee result into R1
153 : LDC 2, 5(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop callee frame
155 : ST 1, 5(5) ; Spill left operand at depth 0
156 : LD 1, 1(5) ; Load parameter 'n' into R1
157 : LD 2, 5(5) ; Restore left operand from depth 0
158 : SUB 1, 2, 1 ; R1 = left - right
159 : LDA 4, 5(5) ; Recompute callee base from callee size
160 : ST 1, 2(4) ; Store argument 1 in callee
161 : LDA 4, 5(5) ; Recompute callee base from callee size
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return in callee frame
164 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
165 : LDA 7, 541(0) ; Call LE
166 : LD 1, 3(5) ; Load callee result into R1
167 : LDC 2, 5(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop callee frame
169 : JEQ 1, 172(0) ; If condition is false, jump to ELSE
170 : LD 1, 2(5) ; Load parameter 'low' into R1
171 : LDA 7, 173(0) ; Skip ELSE block
172 : LD 1, 3(5) ; Load parameter 'high' into R1
173 : LDA 7, 211(0) ; Skip ELSE block
174 : LD 1, 1(5) ; Load parameter 'n' into R1
175 : LDA 4, 7(5) ; Recompute callee base from callee size
176 : ST 1, 1(4) ; Store argument 0 in callee
177 : LD 1, 2(5) ; Load parameter 'low' into R1
178 : LDA 4, 7(5) ; Recompute callee base from callee size
179 : ST 1, 2(4) ; Store argument 1 in callee
180 : LD 1, 3(5) ; Load parameter 'high' into R1
181 : LDA 4, 7(5) ; Recompute callee base from callee size
182 : ST 1, 3(4) ; Store argument 2 in callee
183 : LD 1, 2(5) ; Load parameter 'low' into R1
184 : LDA 4, 5(5) ; Recompute callee base from callee size
185 : ST 1, 1(4) ; Store argument 0 in callee
186 : LD 1, 3(5) ; Load parameter 'high' into R1
187 : LDA 4, 5(5) ; Recompute callee base from callee size
188 : ST 1, 2(4) ; Store argument 1 in callee
189 : LDA 4, 5(5) ; Recompute callee base from callee size
190 : LDA 6, 194(0) ; Return address
191 : ST 6, 0(4) ; Store return in callee frame
192 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
193 : LDA 7, 479(0) ; Call PLUS
194 : LD 1, 3(5) ; Load callee result into R1
195 : LDC 2, 5(0) ; Callee frame size
196 : SUB 5, 5, 2 ; Pop callee frame
197 : ST 1, 5(5) ; Spill left operand at depth 0
198 : LDC 1, 2(0) ; Load integer-literal into R1
199 : LD 2, 5(5) ; Restore left operand from depth 0
200 : DIV 1, 2, 1 ; R1 = left / right
201 : LDA 4, 7(5) ; Recompute callee base from callee size
202 : ST 1, 4(4) ; Store argument 3 in callee
203 : LDA 4, 7(5) ; Recompute callee base from callee size
204 : LDA 6, 208(0) ; Return address
205 : ST 6, 0(4) ; Store return in callee frame
206 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
207 : LDA 7, 45(0) ; Call SQRTSPLIT
208 : LD 1, 5(5) ; Load callee result into R1
209 : LDC 2, 7(0) ; Callee frame size
210 : SUB 5, 5, 2 ; Pop callee frame
211 : ST 1, 4(5) ; Store function result into frame return slot
212 : LD 6, 0(5) ; Load return address
213 : LDA 7, 0(6) ; Return to caller
214 : LD 1, 1(5) ; Load parameter 'n' into R1
215 : LDA 4, 6(5) ; Recompute callee base from callee size
216 : ST 1, 1(4) ; Store argument 0 in callee
217 : LDC 1, 0(0) ; Load integer-literal into R1
218 : LDA 4, 6(5) ; Recompute callee base from callee size
219 : ST 1, 2(4) ; Store argument 1 in callee
220 : LD 1, 1(5) ; Load parameter 'n' into R1
221 : LDA 4, 6(5) ; Recompute callee base from callee size
222 : ST 1, 3(4) ; Store argument 2 in callee
223 : LDA 4, 6(5) ; Recompute callee base from callee size
224 : LDA 6, 228(0) ; Return address
225 : ST 6, 0(4) ; Store return in callee frame
226 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
227 : LDA 7, 102(0) ; Call SQRTSEARCH
228 : LD 1, 4(5) ; Load callee result into R1
229 : LDC 2, 6(0) ; Callee frame size
230 : SUB 5, 5, 2 ; Pop callee frame
231 : ST 1, 2(5) ; Store function result into frame return slot
232 : LD 6, 0(5) ; Load return address
233 : LDA 7, 0(6) ; Return to caller
234 : LDC 1, 0(0) ; Load integer-literal into R1
235 : LDA 4, 5(5) ; Recompute callee base from callee size
236 : ST 1, 1(4) ; Store argument 0 in callee
237 : LD 1, 1(5) ; Load parameter 'n' into R1
238 : LDA 4, 5(5) ; Recompute callee base from callee size
239 : ST 1, 2(4) ; Store argument 1 in callee
240 : LDA 4, 5(5) ; Recompute callee base from callee size
241 : LDA 6, 245(0) ; Return address
242 : ST 6, 0(4) ; Store return in callee frame
243 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
244 : LDA 7, 541(0) ; Call LE
245 : LD 1, 3(5) ; Load callee result into R1
246 : LDC 2, 5(0) ; Callee frame size
247 : SUB 5, 5, 2 ; Pop callee frame
248 : JEQ 1, 294(0) ; If condition is false, jump to ELSE
249 : LD 1, 1(5) ; Load parameter 'n' into R1
250 : LDA 4, 4(5) ; Recompute callee base from callee size
251 : ST 1, 1(4) ; Store argument 0 in callee
252 : LD 1, 1(5) ; Load parameter 'n' into R1
253 : LDA 4, 5(5) ; Recompute callee base from callee size
254 : ST 1, 1(4) ; Store argument 0 in callee
255 : LDC 1, 2(0) ; Load integer-literal into R1
256 : LDA 4, 5(5) ; Recompute callee base from callee size
257 : ST 1, 2(4) ; Store argument 1 in callee
258 : LDA 4, 5(5) ; Recompute callee base from callee size
259 : LDA 6, 263(0) ; Return address
260 : ST 6, 0(4) ; Store return in callee frame
261 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
262 : LDA 7, 455(0) ; Call DIV
263 : LD 1, 3(5) ; Load callee result into R1
264 : LDC 2, 5(0) ; Callee frame size
265 : SUB 5, 5, 2 ; Pop callee frame
266 : ST 1, 3(5) ; Spill left operand at depth 0
267 : LD 1, 1(5) ; Load parameter 'n' into R1
268 : LDA 4, 5(5) ; Recompute callee base from callee size
269 : ST 1, 1(4) ; Store argument 0 in callee
270 : LDC 1, 2(0) ; Load integer-literal into R1
271 : LDA 4, 5(5) ; Recompute callee base from callee size
272 : ST 1, 2(4) ; Store argument 1 in callee
273 : LDA 4, 5(5) ; Recompute callee base from callee size
274 : LDA 6, 278(0) ; Return address
275 : ST 6, 0(4) ; Store return in callee frame
276 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
277 : LDA 7, 455(0) ; Call DIV
278 : LD 1, 3(5) ; Load callee result into R1
279 : LDC 2, 5(0) ; Callee frame size
280 : SUB 5, 5, 2 ; Pop callee frame
281 : LD 2, 3(5) ; Restore left operand from depth 0
282 : ADD 1, 2, 1 ; R1 = left + right
283 : LDA 4, 4(5) ; Recompute callee base from callee size
284 : ST 1, 2(4) ; Store argument 1 in callee
285 : LDA 4, 4(5) ; Recompute callee base from callee size
286 : LDA 6, 290(0) ; Return address
287 : ST 6, 0(4) ; Store return in callee frame
288 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
289 : LDA 7, 503(0) ; Call GT
290 : LD 1, 3(5) ; Load callee result into R1
291 : LDC 2, 4(0) ; Callee frame size
292 : SUB 5, 5, 2 ; Pop callee frame
293 : LDA 7, 368(0) ; Skip ELSE block
294 : LD 1, 1(5) ; Load parameter 'n' into R1
295 : LDA 4, 3(5) ; Recompute callee base from callee size
296 : ST 1, 1(4) ; Store argument 0 in callee
297 : LDA 4, 3(5) ; Recompute callee base from callee size
298 : LDA 6, 302(0) ; Return address
299 : ST 6, 0(4) ; Store return in callee frame
300 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
301 : LDA 7, 450(0) ; Call NEG
302 : LD 1, 2(5) ; Load callee result into R1
303 : LDC 2, 3(0) ; Callee frame size
304 : SUB 5, 5, 2 ; Pop callee frame
305 : LDA 4, 4(5) ; Recompute callee base from callee size
306 : ST 1, 1(4) ; Store argument 0 in callee
307 : LD 1, 1(5) ; Load parameter 'n' into R1
308 : LDA 4, 3(5) ; Recompute callee base from callee size
309 : ST 1, 1(4) ; Store argument 0 in callee
310 : LDA 4, 3(5) ; Recompute callee base from callee size
311 : LDA 6, 315(0) ; Return address
312 : ST 6, 0(4) ; Store return in callee frame
313 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
314 : LDA 7, 450(0) ; Call NEG
315 : LD 1, 2(5) ; Load callee result into R1
316 : LDC 2, 3(0) ; Callee frame size
317 : SUB 5, 5, 2 ; Pop callee frame
318 : LDA 4, 5(5) ; Recompute callee base from callee size
319 : ST 1, 1(4) ; Store argument 0 in callee
320 : LDC 1, 2(0) ; Load integer-literal into R1
321 : LDA 4, 5(5) ; Recompute callee base from callee size
322 : ST 1, 2(4) ; Store argument 1 in callee
323 : LDA 4, 5(5) ; Recompute callee base from callee size
324 : LDA 6, 328(0) ; Return address
325 : ST 6, 0(4) ; Store return in callee frame
326 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
327 : LDA 7, 455(0) ; Call DIV
328 : LD 1, 3(5) ; Load callee result into R1
329 : LDC 2, 5(0) ; Callee frame size
330 : SUB 5, 5, 2 ; Pop callee frame
331 : ST 1, 3(5) ; Spill left operand at depth 0
332 : LD 1, 1(5) ; Load parameter 'n' into R1
333 : LDA 4, 3(5) ; Recompute callee base from callee size
334 : ST 1, 1(4) ; Store argument 0 in callee
335 : LDA 4, 3(5) ; Recompute callee base from callee size
336 : LDA 6, 340(0) ; Return address
337 : ST 6, 0(4) ; Store return in callee frame
338 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
339 : LDA 7, 450(0) ; Call NEG
340 : LD 1, 2(5) ; Load callee result into R1
341 : LDC 2, 3(0) ; Callee frame size
342 : SUB 5, 5, 2 ; Pop callee frame
343 : LDA 4, 5(5) ; Recompute callee base from callee size
344 : ST 1, 1(4) ; Store argument 0 in callee
345 : LDC 1, 2(0) ; Load integer-literal into R1
346 : LDA 4, 5(5) ; Recompute callee base from callee size
347 : ST 1, 2(4) ; Store argument 1 in callee
348 : LDA 4, 5(5) ; Recompute callee base from callee size
349 : LDA 6, 353(0) ; Return address
350 : ST 6, 0(4) ; Store return in callee frame
351 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
352 : LDA 7, 455(0) ; Call DIV
353 : LD 1, 3(5) ; Load callee result into R1
354 : LDC 2, 5(0) ; Callee frame size
355 : SUB 5, 5, 2 ; Pop callee frame
356 : LD 2, 3(5) ; Restore left operand from depth 0
357 : ADD 1, 2, 1 ; R1 = left + right
358 : LDA 4, 4(5) ; Recompute callee base from callee size
359 : ST 1, 2(4) ; Store argument 1 in callee
360 : LDA 4, 4(5) ; Recompute callee base from callee size
361 : LDA 6, 365(0) ; Return address
362 : ST 6, 0(4) ; Store return in callee frame
363 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
364 : LDA 7, 503(0) ; Call GT
365 : LD 1, 3(5) ; Load callee result into R1
366 : LDC 2, 4(0) ; Callee frame size
367 : SUB 5, 5, 2 ; Pop callee frame
368 : ST 1, 2(5) ; Store function result into frame return slot
369 : LD 6, 0(5) ; Load return address
370 : LDA 7, 0(6) ; Return to caller
371 : LD 1, 2(5) ; Load parameter 'n' into R1
372 : ST 1, 4(5) ; Spill left operand at depth 0
373 : LDC 1, 0(0) ; Load integer-literal into R1
374 : LD 2, 4(5) ; Restore left operand from depth 0
375 : SUB 1, 2, 1 ; left - right for equality check
376 : JEQ 1, 2(7) ; If R1 == 0, jump to true
377 : LDC 1, 0(0) ; false
378 : LDA 7, 1(7) ; skip setting true
379 : LDC 1, 1(0) ; true
380 : JEQ 1, 383(0) ; If condition is false, jump to ELSE
381 : LDC 1, 1(0) ; Load integer-literal into R1
382 : LDA 7, 405(0) ; Skip ELSE block
383 : LD 1, 1(5) ; Load parameter 'm' into R1
384 : ST 1, 4(5) ; Spill left operand at depth 0
385 : LD 1, 1(5) ; Load parameter 'm' into R1
386 : LDA 4, 6(5) ; Recompute callee base from callee size
387 : ST 1, 1(4) ; Store argument 0 in callee
388 : LD 1, 2(5) ; Load parameter 'n' into R1
389 : ST 1, 5(5) ; Spill left operand at depth 1
390 : LDC 1, 1(0) ; Load integer-literal into R1
391 : LD 2, 5(5) ; Restore left operand from depth 1
392 : SUB 1, 2, 1 ; R1 = left - right
393 : LDA 4, 6(5) ; Recompute callee base from callee size
394 : ST 1, 2(4) ; Store argument 1 in callee
395 : LDA 4, 6(5) ; Recompute callee base from callee size
396 : LDA 6, 400(0) ; Return address
397 : ST 6, 0(4) ; Store return in callee frame
398 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
399 : LDA 7, 371(0) ; Call EXP
400 : LD 1, 3(5) ; Load callee result into R1
401 : LDC 2, 6(0) ; Callee frame size
402 : SUB 5, 5, 2 ; Pop callee frame
403 : LD 2, 4(5) ; Restore left operand from depth 0
404 : MUL 1, 2, 1 ; R1 = left * right
405 : ST 1, 3(5) ; Store function result into frame return slot
406 : LD 6, 0(5) ; Load return address
407 : LDA 7, 0(6) ; Return to caller
408 : LD 1, 1(5) ; Load parameter 'm' into R1
409 : ST 1, 4(5) ; Spill left operand at depth 0
410 : LD 1, 1(5) ; Load parameter 'm' into R1
411 : ST 1, 5(5) ; Spill left operand at depth 1
412 : LD 1, 2(5) ; Load parameter 'n' into R1
413 : LD 2, 5(5) ; Restore left operand from depth 1
414 : DIV 1, 2, 1 ; R1 = left / right
415 : ST 1, 5(5) ; Spill left operand at depth 1
416 : LD 1, 2(5) ; Load parameter 'n' into R1
417 : LD 2, 5(5) ; Restore left operand from depth 1
418 : MUL 1, 2, 1 ; R1 = left * right
419 : LD 2, 4(5) ; Restore left operand from depth 0
420 : SUB 1, 2, 1 ; R1 = left - right
421 : ST 1, 3(5) ; Store function result into frame return slot
422 : LD 6, 0(5) ; Load return address
423 : LDA 7, 0(6) ; Return to caller
424 : LDC 1, 0(0) ; Load integer-literal into R1
425 : ST 1, 3(5) ; Spill left operand at depth 0
426 : LD 1, 1(5) ; Load parameter 'n' into R1
427 : LD 2, 3(5) ; Restore left operand from depth 0
428 : SUB 1, 2, 1 ; left - right for less-than check
429 : JLT 1, 2(7) ; If R1 < 0, jump to true
430 : LDC 1, 0(0) ; false
431 : LDA 7, 1(7) ; skip setting true
432 : LDC 1, 1(0) ; true
433 : JEQ 1, 436(0) ; If condition is false, jump to ELSE
434 : LD 1, 1(5) ; Load parameter 'n' into R1
435 : LDA 7, 447(0) ; Skip ELSE block
436 : LD 1, 1(5) ; Load parameter 'n' into R1
437 : LDA 4, 3(5) ; Recompute callee base from callee size
438 : ST 1, 1(4) ; Store argument 0 in callee
439 : LDA 4, 3(5) ; Recompute callee base from callee size
440 : LDA 6, 444(0) ; Return address
441 : ST 6, 0(4) ; Store return in callee frame
442 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
443 : LDA 7, 450(0) ; Call NEG
444 : LD 1, 2(5) ; Load callee result into R1
445 : LDC 2, 3(0) ; Callee frame size
446 : SUB 5, 5, 2 ; Pop callee frame
447 : ST 1, 2(5) ; Store function result into frame return slot
448 : LD 6, 0(5) ; Load return address
449 : LDA 7, 0(6) ; Return to caller
450 : LD 1, 1(5) ; Load parameter 'n' into R1
451 : SUB 1, 0, 1 ; Negate value in R1
452 : ST 1, 2(5) ; Store function result into frame return slot
453 : LD 6, 0(5) ; Load return address
454 : LDA 7, 0(6) ; Return to caller
455 : LD 1, 1(5) ; Load parameter 'p' into R1
456 : ST 1, 4(5) ; Spill left operand at depth 0
457 : LD 1, 2(5) ; Load parameter 'q' into R1
458 : LD 2, 4(5) ; Restore left operand from depth 0
459 : DIV 1, 2, 1 ; R1 = left / right
460 : ST 1, 3(5) ; Store function result into frame return slot
461 : LD 6, 0(5) ; Load return address
462 : LDA 7, 0(6) ; Return to caller
463 : LD 1, 1(5) ; Load parameter 'p' into R1
464 : ST 1, 4(5) ; Spill left operand at depth 0
465 : LD 1, 2(5) ; Load parameter 'q' into R1
466 : LD 2, 4(5) ; Restore left operand from depth 0
467 : MUL 1, 2, 1 ; R1 = left * right
468 : ST 1, 3(5) ; Store function result into frame return slot
469 : LD 6, 0(5) ; Load return address
470 : LDA 7, 0(6) ; Return to caller
471 : LD 1, 1(5) ; Load parameter 'p' into R1
472 : ST 1, 4(5) ; Spill left operand at depth 0
473 : LD 1, 2(5) ; Load parameter 'q' into R1
474 : LD 2, 4(5) ; Restore left operand from depth 0
475 : SUB 1, 2, 1 ; R1 = left - right
476 : ST 1, 3(5) ; Store function result into frame return slot
477 : LD 6, 0(5) ; Load return address
478 : LDA 7, 0(6) ; Return to caller
479 : LD 1, 1(5) ; Load parameter 'p' into R1
480 : ST 1, 4(5) ; Spill left operand at depth 0
481 : LD 1, 2(5) ; Load parameter 'q' into R1
482 : LD 2, 4(5) ; Restore left operand from depth 0
483 : ADD 1, 2, 1 ; R1 = left + right
484 : ST 1, 3(5) ; Store function result into frame return slot
485 : LD 6, 0(5) ; Load return address
486 : LDA 7, 0(6) ; Return to caller
487 : LD 1, 1(5) ; Load parameter 'p' into R1
488 : JEQ 1, 491(0) ; If condition is false, jump to ELSE
489 : LD 1, 2(5) ; Load parameter 'q' into R1
490 : LDA 7, 492(0) ; Skip ELSE block
491 : LDC 1, 0(0) ; Load boolean-literal into R1
492 : ST 1, 3(5) ; Store function result into frame return slot
493 : LD 6, 0(5) ; Load return address
494 : LDA 7, 0(6) ; Return to caller
495 : LD 1, 1(5) ; Load parameter 'p' into R1
496 : ST 1, 4(5) ; Spill left operand at depth 0
497 : LD 1, 2(5) ; Load parameter 'q' into R1
498 : LD 2, 4(5) ; Restore left operand from depth 0
499 : ADD 1, 2, 1 ; R1 = left OR right
500 : ST 1, 3(5) ; Store function result into frame return slot
501 : LD 6, 0(5) ; Load return address
502 : LDA 7, 0(6) ; Return to caller
503 : LD 1, 1(5) ; Load parameter 'p' into R1
504 : LDA 4, 5(5) ; Recompute callee base from callee size
505 : ST 1, 1(4) ; Store argument 0 in callee
506 : LD 1, 2(5) ; Load parameter 'q' into R1
507 : LDA 4, 5(5) ; Recompute callee base from callee size
508 : ST 1, 2(4) ; Store argument 1 in callee
509 : LDA 4, 5(5) ; Recompute callee base from callee size
510 : LDA 6, 514(0) ; Return address
511 : ST 6, 0(4) ; Store return in callee frame
512 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
513 : LDA 7, 541(0) ; Call LE
514 : LD 1, 3(5) ; Load callee result into R1
515 : LDC 2, 5(0) ; Callee frame size
516 : SUB 5, 5, 2 ; Pop callee frame
517 : LDC 2, 1(0) ; Load 1 into R2
518 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
519 : ST 1, 3(5) ; Store function result into frame return slot
520 : LD 6, 0(5) ; Load return address
521 : LDA 7, 0(6) ; Return to caller
522 : LD 1, 1(5) ; Load parameter 'p' into R1
523 : LDA 4, 5(5) ; Recompute callee base from callee size
524 : ST 1, 1(4) ; Store argument 0 in callee
525 : LD 1, 2(5) ; Load parameter 'q' into R1
526 : LDA 4, 5(5) ; Recompute callee base from callee size
527 : ST 1, 2(4) ; Store argument 1 in callee
528 : LDA 4, 5(5) ; Recompute callee base from callee size
529 : LDA 6, 533(0) ; Return address
530 : ST 6, 0(4) ; Store return in callee frame
531 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
532 : LDA 7, 606(0) ; Call LT
533 : LD 1, 3(5) ; Load callee result into R1
534 : LDC 2, 5(0) ; Callee frame size
535 : SUB 5, 5, 2 ; Pop callee frame
536 : LDC 2, 1(0) ; Load 1 into R2
537 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
538 : ST 1, 3(5) ; Store function result into frame return slot
539 : LD 6, 0(5) ; Load return address
540 : LDA 7, 0(6) ; Return to caller
541 : LD 1, 1(5) ; Load parameter 'p' into R1
542 : LDA 4, 5(5) ; Recompute callee base from callee size
543 : ST 1, 1(4) ; Store argument 0 in callee
544 : LD 1, 2(5) ; Load parameter 'q' into R1
545 : LDA 4, 5(5) ; Recompute callee base from callee size
546 : ST 1, 2(4) ; Store argument 1 in callee
547 : LDA 4, 5(5) ; Recompute callee base from callee size
548 : LDA 6, 552(0) ; Return address
549 : ST 6, 0(4) ; Store return in callee frame
550 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
551 : LDA 7, 606(0) ; Call LT
552 : LD 1, 3(5) ; Load callee result into R1
553 : LDC 2, 5(0) ; Callee frame size
554 : SUB 5, 5, 2 ; Pop callee frame
555 : ST 1, 4(5) ; Spill left operand at depth 0
556 : LD 1, 1(5) ; Load parameter 'p' into R1
557 : LDA 4, 5(5) ; Recompute callee base from callee size
558 : ST 1, 1(4) ; Store argument 0 in callee
559 : LD 1, 2(5) ; Load parameter 'q' into R1
560 : LDA 4, 5(5) ; Recompute callee base from callee size
561 : ST 1, 2(4) ; Store argument 1 in callee
562 : LDA 4, 5(5) ; Recompute callee base from callee size
563 : LDA 6, 567(0) ; Return address
564 : ST 6, 0(4) ; Store return in callee frame
565 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
566 : LDA 7, 594(0) ; Call EQ
567 : LD 1, 3(5) ; Load callee result into R1
568 : LDC 2, 5(0) ; Callee frame size
569 : SUB 5, 5, 2 ; Pop callee frame
570 : LD 2, 4(5) ; Restore left operand from depth 0
571 : ADD 1, 2, 1 ; R1 = left OR right
572 : ST 1, 3(5) ; Store function result into frame return slot
573 : LD 6, 0(5) ; Load return address
574 : LDA 7, 0(6) ; Return to caller
575 : LD 1, 1(5) ; Load parameter 'p' into R1
576 : LDA 4, 5(5) ; Recompute callee base from callee size
577 : ST 1, 1(4) ; Store argument 0 in callee
578 : LD 1, 2(5) ; Load parameter 'q' into R1
579 : LDA 4, 5(5) ; Recompute callee base from callee size
580 : ST 1, 2(4) ; Store argument 1 in callee
581 : LDA 4, 5(5) ; Recompute callee base from callee size
582 : LDA 6, 586(0) ; Return address
583 : ST 6, 0(4) ; Store return in callee frame
584 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
585 : LDA 7, 594(0) ; Call EQ
586 : LD 1, 3(5) ; Load callee result into R1
587 : LDC 2, 5(0) ; Callee frame size
588 : SUB 5, 5, 2 ; Pop callee frame
589 : LDC 2, 1(0) ; Load 1 into R2
590 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
591 : ST 1, 3(5) ; Store function result into frame return slot
592 : LD 6, 0(5) ; Load return address
593 : LDA 7, 0(6) ; Return to caller
594 : LD 1, 1(5) ; Load parameter 'p' into R1
595 : ST 1, 4(5) ; Spill left operand at depth 0
596 : LD 1, 2(5) ; Load parameter 'q' into R1
597 : LD 2, 4(5) ; Restore left operand from depth 0
598 : SUB 1, 2, 1 ; left - right for equality check
599 : JEQ 1, 2(7) ; If R1 == 0, jump to true
600 : LDC 1, 0(0) ; false
601 : LDA 7, 1(7) ; skip setting true
602 : LDC 1, 1(0) ; true
603 : ST 1, 3(5) ; Store function result into frame return slot
604 : LD 6, 0(5) ; Load return address
605 : LDA 7, 0(6) ; Return to caller
606 : LD 1, 1(5) ; Load parameter 'p' into R1
607 : ST 1, 4(5) ; Spill left operand at depth 0
608 : LD 1, 2(5) ; Load parameter 'q' into R1
609 : LD 2, 4(5) ; Restore left operand from depth 0
610 : SUB 1, 2, 1 ; left - right for less-than check
611 : JLT 1, 2(7) ; If R1 < 0, jump to true
612 : LDC 1, 0(0) ; false
613 : LDA 7, 1(7) ; skip setting true
614 : LDC 1, 1(0) ; true
615 : ST 1, 3(5) ; Store function result into frame return slot
616 : LD 6, 0(5) ; Load return address
617 : LDA 7, 0(6) ; Return to caller
618 : LDC 1, 2147483647(0) ; Load integer-literal into R1
619 : SUB 1, 0, 1 ; Negate value in R1
620 : ST 1, 2(5) ; Spill left operand at depth 0
621 : LDC 1, 1(0) ; Load integer-literal into R1
622 : LD 2, 2(5) ; Restore left operand from depth 0
623 : SUB 1, 2, 1 ; R1 = left - right
624 : ST 1, 1(5) ; Store function result into frame return slot
625 : LD 6, 0(5) ; Load return address
626 : LDA 7, 0(6) ; Return to caller
627 : LDC 1, 2147483647(0) ; Load integer-literal into R1
628 : ST 1, 1(5) ; Store function result into frame return slot
629 : LD 6, 0(5) ; Load return address
630 : LDA 7, 0(6) ; Return to caller
