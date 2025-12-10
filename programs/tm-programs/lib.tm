0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
12 : LDA 4, 3(5) ; Compute future callee base using caller_size
13 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
14 : LDA 4, 3(5) ; Compute future callee base (caller_size)
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
18 : LDA 7, 197(0) ; Call SQRT
19 : LD 1, 2(5) ; Load callee result into R1
20 : LDC 2, 3(0) ; Callee frame size
21 : SUB 5, 5, 2 ; Pop callee frame
22 : LDA 4, 3(5) ; Compute future callee base (caller_size)
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return address in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
26 : LDA 7, 9(0) ; Call built-in print
27 : LDC 2, 3(0) ; Caller frame size
28 : SUB 5, 5, 2 ; Pop back to caller
29 : LDA 4, 3(5) ; Compute future callee base using caller_size
30 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
31 : LDA 4, 3(5) ; Compute future callee base (caller_size)
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
35 : LDA 7, 217(0) ; Call ODD
36 : LD 1, 2(5) ; Load callee result into R1
37 : LDC 2, 4(0) ; Callee frame size
38 : SUB 5, 5, 2 ; Pop callee frame
39 : ST 1, 2(5) ; Store result into caller’s frame
40 : LD 1, 2(5) ; Load main return value into R1
41 : LD 6, 0(5) ; Load main return address
42 : LDA 7, 0(6) ; Return from main
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : MUL 1, 2, 1 ; R1 = left * right
46 : LDA 4, 7(5) ; Compute future callee base using caller_size
47 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
48 : LDA 4, 7(5) ; Compute future callee base using caller_size
49 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
50 : LDA 4, 7(5) ; Compute future callee base (caller_size)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
54 : LDA 7, 520(0) ; Call LE
55 : LD 1, 3(5) ; Load callee result into R1
56 : LDC 2, 5(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop callee frame
58 : JEQ 1, 76(0) ; If condition is false, jump to ELSE
59 : LD 1, 1(5) ; Load parameter 'n' into R1
60 : LDA 4, 7(5) ; Compute future callee base using caller_size
61 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
62 : LDA 4, 7(5) ; Compute future callee base using caller_size
63 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
64 : LD 1, 3(5) ; Load parameter 'high' into R1
65 : LDA 4, 7(5) ; Compute future callee base using caller_size
66 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
67 : LDA 4, 7(5) ; Compute future callee base (caller_size)
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
71 : LDA 7, 95(0) ; Call SQRTSEARCH
72 : LD 1, 4(5) ; Load callee result into R1
73 : LDC 2, 6(0) ; Callee frame size
74 : SUB 5, 5, 2 ; Pop callee frame
75 : LDA 7, 92(0) ; Skip ELSE block
76 : LD 1, 1(5) ; Load parameter 'n' into R1
77 : LDA 4, 7(5) ; Compute future callee base using caller_size
78 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
79 : LD 1, 2(5) ; Load parameter 'low' into R1
80 : LDA 4, 7(5) ; Compute future callee base using caller_size
81 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
82 : LDA 4, 7(5) ; Compute future callee base using caller_size
83 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
84 : LDA 4, 7(5) ; Compute future callee base (caller_size)
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
88 : LDA 7, 95(0) ; Call SQRTSEARCH
89 : LD 1, 4(5) ; Load callee result into R1
90 : LDC 2, 6(0) ; Callee frame size
91 : SUB 5, 5, 2 ; Pop callee frame
92 : ST 1, 5(5) ; Store function result into frame return slot
93 : LD 6, 0(5) ; Load return address
94 : LDA 7, 0(6) ; Return to caller
95 : LDA 4, 6(5) ; Compute future callee base using caller_size
96 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
97 : ST 1, 4(5) ; Spill left operand at depth 0
98 : LDC 1, 1(0) ; Load integer-literal into R1
99 : LD 2, 4(5) ; Restore left operand from depth 0
100 : ADD 1, 2, 1 ; R1 = left + right
101 : LDA 4, 6(5) ; Compute future callee base using caller_size
102 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
103 : LDA 4, 6(5) ; Compute future callee base (caller_size)
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return in callee frame
106 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
107 : LDA 7, 520(0) ; Call LE
108 : LD 1, 3(5) ; Load callee result into R1
109 : LDC 2, 5(0) ; Callee frame size
110 : SUB 5, 5, 2 ; Pop callee frame
111 : JEQ 1, 159(0) ; If condition is false, jump to ELSE
112 : ST 1, 4(5) ; Spill left operand at depth 0
113 : LDA 4, 5(5) ; Compute future callee base using caller_size
114 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
115 : LDA 4, 5(5) ; Compute future callee base using caller_size
116 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
117 : LDA 4, 5(5) ; Compute future callee base (caller_size)
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
121 : LDA 7, 442(0) ; Call TIMES
122 : LD 1, 3(5) ; Load callee result into R1
123 : LDC 2, 5(0) ; Callee frame size
124 : SUB 5, 5, 2 ; Pop callee frame
125 : LD 2, 4(5) ; Restore left operand from depth 0
126 : SUB 1, 2, 1 ; R1 = left - right
127 : LDA 4, 6(5) ; Compute future callee base using caller_size
128 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
129 : LDA 4, 5(5) ; Compute future callee base using caller_size
130 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
131 : LDA 4, 5(5) ; Compute future callee base using caller_size
132 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
133 : LDA 4, 5(5) ; Compute future callee base (caller_size)
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 442(0) ; Call TIMES
138 : LD 1, 3(5) ; Load callee result into R1
139 : LDC 2, 5(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : ST 1, 4(5) ; Spill left operand at depth 0
142 : LD 2, 4(5) ; Restore left operand from depth 0
143 : SUB 1, 2, 1 ; R1 = left - right
144 : LDA 4, 6(5) ; Compute future callee base using caller_size
145 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
146 : LDA 4, 6(5) ; Compute future callee base (caller_size)
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
150 : LDA 7, 520(0) ; Call LE
151 : LD 1, 3(5) ; Load callee result into R1
152 : LDC 2, 5(0) ; Callee frame size
153 : SUB 5, 5, 2 ; Pop callee frame
154 : JEQ 1, 157(0) ; If condition is false, jump to ELSE
155 : LD 1, 2(5) ; Load parameter 'low' into R1
156 : LDA 7, 158(0) ; Skip ELSE block
157 : LD 1, 3(5) ; Load parameter 'high' into R1
158 : LDA 7, 194(0) ; Skip ELSE block
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : LDA 4, 6(5) ; Compute future callee base using caller_size
161 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
162 : LD 1, 2(5) ; Load parameter 'low' into R1
163 : LDA 4, 6(5) ; Compute future callee base using caller_size
164 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
165 : LD 1, 3(5) ; Load parameter 'high' into R1
166 : LDA 4, 6(5) ; Compute future callee base using caller_size
167 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
168 : LDA 4, 7(5) ; Compute future callee base using caller_size
169 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
170 : LDA 4, 7(5) ; Compute future callee base using caller_size
171 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
172 : LDA 4, 7(5) ; Compute future callee base (caller_size)
173 : LDA 6, 177(0) ; Return address
174 : ST 6, 0(4) ; Store return in callee frame
175 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
176 : LDA 7, 458(0) ; Call PLUS
177 : LD 1, 3(5) ; Load callee result into R1
178 : LDC 2, 5(0) ; Callee frame size
179 : SUB 5, 5, 2 ; Pop callee frame
180 : ST 1, 6(5) ; Spill left operand at depth 0
181 : LDC 1, 2(0) ; Load integer-literal into R1
182 : LD 2, 6(5) ; Restore left operand from depth 0
183 : DIV 1, 2, 1 ; R1 = left / right
184 : LDA 4, 6(5) ; Compute future callee base using caller_size
185 : ST 1, 4(4) ; Store argument 3 into callee's param slot (future frame)
186 : LDA 4, 6(5) ; Compute future callee base (caller_size)
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
190 : LDA 7, 43(0) ; Call SQRTSPLIT
191 : LD 1, 5(5) ; Load callee result into R1
192 : LDC 2, 7(0) ; Callee frame size
193 : SUB 5, 5, 2 ; Pop callee frame
194 : ST 1, 4(5) ; Store function result into frame return slot
195 : LD 6, 0(5) ; Load return address
196 : LDA 7, 0(6) ; Return to caller
197 : LD 1, 1(5) ; Load parameter 'n' into R1
198 : LDA 4, 3(5) ; Compute future callee base using caller_size
199 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
200 : LDC 1, 0(0) ; Load integer-literal into R1
201 : LDA 4, 3(5) ; Compute future callee base using caller_size
202 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
203 : LD 1, 1(5) ; Load parameter 'n' into R1
204 : LDA 4, 3(5) ; Compute future callee base using caller_size
205 : ST 1, 3(4) ; Store argument 2 into callee's param slot (future frame)
206 : LDA 4, 3(5) ; Compute future callee base (caller_size)
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return in callee frame
209 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
210 : LDA 7, 95(0) ; Call SQRTSEARCH
211 : LD 1, 4(5) ; Load callee result into R1
212 : LDC 2, 6(0) ; Callee frame size
213 : SUB 5, 5, 2 ; Pop callee frame
214 : ST 1, 2(5) ; Store function result into frame return slot
215 : LD 6, 0(5) ; Load return address
216 : LDA 7, 0(6) ; Return to caller
217 : LDC 1, 0(0) ; Load integer-literal into R1
218 : LDA 4, 4(5) ; Compute future callee base using caller_size
219 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
220 : LDA 4, 4(5) ; Compute future callee base using caller_size
221 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
222 : LDA 4, 4(5) ; Compute future callee base (caller_size)
223 : LDA 6, 227(0) ; Return address
224 : ST 6, 0(4) ; Store return in callee frame
225 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
226 : LDA 7, 520(0) ; Call LE
227 : LD 1, 3(5) ; Load callee result into R1
228 : LDC 2, 5(0) ; Callee frame size
229 : SUB 5, 5, 2 ; Pop callee frame
230 : JEQ 1, 273(0) ; If condition is false, jump to ELSE
231 : LDA 4, 4(5) ; Compute future callee base using caller_size
232 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
233 : LDA 4, 4(5) ; Compute future callee base using caller_size
234 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
235 : LDC 1, 2(0) ; Load integer-literal into R1
236 : LDA 4, 4(5) ; Compute future callee base using caller_size
237 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
238 : LDA 4, 4(5) ; Compute future callee base (caller_size)
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return in callee frame
241 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
242 : LDA 7, 434(0) ; Call DIV
243 : LD 1, 3(5) ; Load callee result into R1
244 : LDC 2, 5(0) ; Callee frame size
245 : SUB 5, 5, 2 ; Pop callee frame
246 : ST 1, 4(5) ; Spill left operand at depth 0
247 : LDA 4, 4(5) ; Compute future callee base using caller_size
248 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
249 : LDC 1, 2(0) ; Load integer-literal into R1
250 : LDA 4, 4(5) ; Compute future callee base using caller_size
251 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
252 : LDA 4, 4(5) ; Compute future callee base (caller_size)
253 : LDA 6, 257(0) ; Return address
254 : ST 6, 0(4) ; Store return in callee frame
255 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
256 : LDA 7, 434(0) ; Call DIV
257 : LD 1, 3(5) ; Load callee result into R1
258 : LDC 2, 5(0) ; Callee frame size
259 : SUB 5, 5, 2 ; Pop callee frame
260 : LD 2, 4(5) ; Restore left operand from depth 0
261 : ADD 1, 2, 1 ; R1 = left + right
262 : LDA 4, 4(5) ; Compute future callee base using caller_size
263 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
264 : LDA 4, 4(5) ; Compute future callee base (caller_size)
265 : LDA 6, 269(0) ; Return address
266 : ST 6, 0(4) ; Store return in callee frame
267 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
268 : LDA 7, 482(0) ; Call GT
269 : LD 1, 3(5) ; Load callee result into R1
270 : LDC 2, 4(0) ; Callee frame size
271 : SUB 5, 5, 2 ; Pop callee frame
272 : LDA 7, 347(0) ; Skip ELSE block
273 : LD 1, 1(5) ; Load parameter 'n' into R1
274 : LDA 4, 4(5) ; Compute future callee base using caller_size
275 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
276 : LDA 4, 4(5) ; Compute future callee base (caller_size)
277 : LDA 6, 281(0) ; Return address
278 : ST 6, 0(4) ; Store return in callee frame
279 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
280 : LDA 7, 429(0) ; Call NEG
281 : LD 1, 2(5) ; Load callee result into R1
282 : LDC 2, 3(0) ; Callee frame size
283 : SUB 5, 5, 2 ; Pop callee frame
284 : LDA 4, 4(5) ; Compute future callee base using caller_size
285 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
286 : LD 1, 1(5) ; Load parameter 'n' into R1
287 : LDA 4, 5(5) ; Compute future callee base using caller_size
288 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
289 : LDA 4, 5(5) ; Compute future callee base (caller_size)
290 : LDA 6, 294(0) ; Return address
291 : ST 6, 0(4) ; Store return in callee frame
292 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
293 : LDA 7, 429(0) ; Call NEG
294 : LD 1, 2(5) ; Load callee result into R1
295 : LDC 2, 3(0) ; Callee frame size
296 : SUB 5, 5, 2 ; Pop callee frame
297 : LDA 4, 4(5) ; Compute future callee base using caller_size
298 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
299 : LDC 1, 2(0) ; Load integer-literal into R1
300 : LDA 4, 4(5) ; Compute future callee base using caller_size
301 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
302 : LDA 4, 4(5) ; Compute future callee base (caller_size)
303 : LDA 6, 307(0) ; Return address
304 : ST 6, 0(4) ; Store return in callee frame
305 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
306 : LDA 7, 434(0) ; Call DIV
307 : LD 1, 3(5) ; Load callee result into R1
308 : LDC 2, 5(0) ; Callee frame size
309 : SUB 5, 5, 2 ; Pop callee frame
310 : ST 1, 4(5) ; Spill left operand at depth 0
311 : LD 1, 1(5) ; Load parameter 'n' into R1
312 : LDA 4, 5(5) ; Compute future callee base using caller_size
313 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
314 : LDA 4, 5(5) ; Compute future callee base (caller_size)
315 : LDA 6, 319(0) ; Return address
316 : ST 6, 0(4) ; Store return in callee frame
317 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
318 : LDA 7, 429(0) ; Call NEG
319 : LD 1, 2(5) ; Load callee result into R1
320 : LDC 2, 3(0) ; Callee frame size
321 : SUB 5, 5, 2 ; Pop callee frame
322 : LDA 4, 4(5) ; Compute future callee base using caller_size
323 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
324 : LDC 1, 2(0) ; Load integer-literal into R1
325 : LDA 4, 4(5) ; Compute future callee base using caller_size
326 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
327 : LDA 4, 4(5) ; Compute future callee base (caller_size)
328 : LDA 6, 332(0) ; Return address
329 : ST 6, 0(4) ; Store return in callee frame
330 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
331 : LDA 7, 434(0) ; Call DIV
332 : LD 1, 3(5) ; Load callee result into R1
333 : LDC 2, 5(0) ; Callee frame size
334 : SUB 5, 5, 2 ; Pop callee frame
335 : LD 2, 4(5) ; Restore left operand from depth 0
336 : ADD 1, 2, 1 ; R1 = left + right
337 : LDA 4, 4(5) ; Compute future callee base using caller_size
338 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
339 : LDA 4, 4(5) ; Compute future callee base (caller_size)
340 : LDA 6, 344(0) ; Return address
341 : ST 6, 0(4) ; Store return in callee frame
342 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
343 : LDA 7, 482(0) ; Call GT
344 : LD 1, 3(5) ; Load callee result into R1
345 : LDC 2, 4(0) ; Callee frame size
346 : SUB 5, 5, 2 ; Pop callee frame
347 : ST 1, 2(5) ; Store function result into frame return slot
348 : LD 6, 0(5) ; Load return address
349 : LDA 7, 0(6) ; Return to caller
350 : LD 1, 2(5) ; Load parameter 'n' into R1
351 : ST 1, 4(5) ; Spill left operand at depth 0
352 : LDC 1, 0(0) ; Load integer-literal into R1
353 : LD 2, 4(5) ; Restore left operand from depth 0
354 : SUB 1, 2, 1 ; left - right for equality check
355 : JEQ 1, 2(7) ; If R1 == 0, jump to true
356 : LDC 1, 0(0) ; false
357 : LDA 7, 1(7) ; skip setting true
358 : LDC 1, 1(0) ; true
359 : JEQ 1, 362(0) ; If condition is false, jump to ELSE
360 : LDC 1, 1(0) ; Load integer-literal into R1
361 : LDA 7, 384(0) ; Skip ELSE block
362 : LD 1, 1(5) ; Load parameter 'm' into R1
363 : ST 1, 4(5) ; Spill left operand at depth 0
364 : LD 1, 1(5) ; Load parameter 'm' into R1
365 : LDA 4, 6(5) ; Compute future callee base using caller_size
366 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
367 : LD 1, 2(5) ; Load parameter 'n' into R1
368 : ST 1, 5(5) ; Spill left operand at depth 1
369 : LDC 1, 1(0) ; Load integer-literal into R1
370 : LD 2, 5(5) ; Restore left operand from depth 1
371 : SUB 1, 2, 1 ; R1 = left - right
372 : LDA 4, 6(5) ; Compute future callee base using caller_size
373 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
374 : LDA 4, 6(5) ; Compute future callee base (caller_size)
375 : LDA 6, 379(0) ; Return address
376 : ST 6, 0(4) ; Store return in callee frame
377 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
378 : LDA 7, 350(0) ; Call EXP
379 : LD 1, 3(5) ; Load callee result into R1
380 : LDC 2, 6(0) ; Callee frame size
381 : SUB 5, 5, 2 ; Pop callee frame
382 : LD 2, 4(5) ; Restore left operand from depth 0
383 : MUL 1, 2, 1 ; R1 = left * right
384 : ST 1, 3(5) ; Store function result into frame return slot
385 : LD 6, 0(5) ; Load return address
386 : LDA 7, 0(6) ; Return to caller
387 : LD 1, 1(5) ; Load parameter 'm' into R1
388 : ST 1, 4(5) ; Spill left operand at depth 0
389 : LD 1, 1(5) ; Load parameter 'm' into R1
390 : ST 1, 5(5) ; Spill left operand at depth 1
391 : LD 1, 2(5) ; Load parameter 'n' into R1
392 : LD 2, 5(5) ; Restore left operand from depth 1
393 : DIV 1, 2, 1 ; R1 = left / right
394 : ST 1, 5(5) ; Spill left operand at depth 1
395 : LD 1, 2(5) ; Load parameter 'n' into R1
396 : LD 2, 5(5) ; Restore left operand from depth 1
397 : MUL 1, 2, 1 ; R1 = left * right
398 : LD 2, 4(5) ; Restore left operand from depth 0
399 : SUB 1, 2, 1 ; R1 = left - right
400 : ST 1, 3(5) ; Store function result into frame return slot
401 : LD 6, 0(5) ; Load return address
402 : LDA 7, 0(6) ; Return to caller
403 : LDC 1, 0(0) ; Load integer-literal into R1
404 : ST 1, 3(5) ; Spill left operand at depth 0
405 : LD 1, 1(5) ; Load parameter 'n' into R1
406 : LD 2, 3(5) ; Restore left operand from depth 0
407 : SUB 1, 2, 1 ; left - right for less-than check
408 : JLT 1, 2(7) ; If R1 < 0, jump to true
409 : LDC 1, 0(0) ; false
410 : LDA 7, 1(7) ; skip setting true
411 : LDC 1, 1(0) ; true
412 : JEQ 1, 415(0) ; If condition is false, jump to ELSE
413 : LD 1, 1(5) ; Load parameter 'n' into R1
414 : LDA 7, 426(0) ; Skip ELSE block
415 : LD 1, 1(5) ; Load parameter 'n' into R1
416 : LDA 4, 4(5) ; Compute future callee base using caller_size
417 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
418 : LDA 4, 4(5) ; Compute future callee base (caller_size)
419 : LDA 6, 423(0) ; Return address
420 : ST 6, 0(4) ; Store return in callee frame
421 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
422 : LDA 7, 429(0) ; Call NEG
423 : LD 1, 2(5) ; Load callee result into R1
424 : LDC 2, 3(0) ; Callee frame size
425 : SUB 5, 5, 2 ; Pop callee frame
426 : ST 1, 2(5) ; Store function result into frame return slot
427 : LD 6, 0(5) ; Load return address
428 : LDA 7, 0(6) ; Return to caller
429 : LD 1, 1(5) ; Load parameter 'n' into R1
430 : SUB 1, 0, 1 ; Negate value in R1
431 : ST 1, 2(5) ; Store function result into frame return slot
432 : LD 6, 0(5) ; Load return address
433 : LDA 7, 0(6) ; Return to caller
434 : LD 1, 1(5) ; Load parameter 'p' into R1
435 : ST 1, 4(5) ; Spill left operand at depth 0
436 : LD 1, 2(5) ; Load parameter 'q' into R1
437 : LD 2, 4(5) ; Restore left operand from depth 0
438 : DIV 1, 2, 1 ; R1 = left / right
439 : ST 1, 3(5) ; Store function result into frame return slot
440 : LD 6, 0(5) ; Load return address
441 : LDA 7, 0(6) ; Return to caller
442 : LD 1, 1(5) ; Load parameter 'p' into R1
443 : ST 1, 4(5) ; Spill left operand at depth 0
444 : LD 1, 2(5) ; Load parameter 'q' into R1
445 : LD 2, 4(5) ; Restore left operand from depth 0
446 : MUL 1, 2, 1 ; R1 = left * right
447 : ST 1, 3(5) ; Store function result into frame return slot
448 : LD 6, 0(5) ; Load return address
449 : LDA 7, 0(6) ; Return to caller
450 : LD 1, 1(5) ; Load parameter 'p' into R1
451 : ST 1, 4(5) ; Spill left operand at depth 0
452 : LD 1, 2(5) ; Load parameter 'q' into R1
453 : LD 2, 4(5) ; Restore left operand from depth 0
454 : SUB 1, 2, 1 ; R1 = left - right
455 : ST 1, 3(5) ; Store function result into frame return slot
456 : LD 6, 0(5) ; Load return address
457 : LDA 7, 0(6) ; Return to caller
458 : LD 1, 1(5) ; Load parameter 'p' into R1
459 : ST 1, 4(5) ; Spill left operand at depth 0
460 : LD 1, 2(5) ; Load parameter 'q' into R1
461 : LD 2, 4(5) ; Restore left operand from depth 0
462 : ADD 1, 2, 1 ; R1 = left + right
463 : ST 1, 3(5) ; Store function result into frame return slot
464 : LD 6, 0(5) ; Load return address
465 : LDA 7, 0(6) ; Return to caller
466 : LD 1, 1(5) ; Load parameter 'p' into R1
467 : JEQ 1, 470(0) ; If condition is false, jump to ELSE
468 : LD 1, 2(5) ; Load parameter 'q' into R1
469 : LDA 7, 471(0) ; Skip ELSE block
470 : LDC 1, 0(0) ; Load boolean-literal into R1
471 : ST 1, 3(5) ; Store function result into frame return slot
472 : LD 6, 0(5) ; Load return address
473 : LDA 7, 0(6) ; Return to caller
474 : LD 1, 1(5) ; Load parameter 'p' into R1
475 : ST 1, 4(5) ; Spill left operand at depth 0
476 : LD 1, 2(5) ; Load parameter 'q' into R1
477 : LD 2, 4(5) ; Restore left operand from depth 0
478 : ADD 1, 2, 1 ; R1 = left OR right
479 : ST 1, 3(5) ; Store function result into frame return slot
480 : LD 6, 0(5) ; Load return address
481 : LDA 7, 0(6) ; Return to caller
482 : LD 1, 1(5) ; Load parameter 'p' into R1
483 : LDA 4, 4(5) ; Compute future callee base using caller_size
484 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
485 : LD 1, 2(5) ; Load parameter 'q' into R1
486 : LDA 4, 4(5) ; Compute future callee base using caller_size
487 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
488 : LDA 4, 4(5) ; Compute future callee base (caller_size)
489 : LDA 6, 493(0) ; Return address
490 : ST 6, 0(4) ; Store return in callee frame
491 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
492 : LDA 7, 520(0) ; Call LE
493 : LD 1, 3(5) ; Load callee result into R1
494 : LDC 2, 5(0) ; Callee frame size
495 : SUB 5, 5, 2 ; Pop callee frame
496 : LDC 2, 1(0) ; Load 1 into R2
497 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
498 : ST 1, 3(5) ; Store function result into frame return slot
499 : LD 6, 0(5) ; Load return address
500 : LDA 7, 0(6) ; Return to caller
501 : LD 1, 1(5) ; Load parameter 'p' into R1
502 : LDA 4, 4(5) ; Compute future callee base using caller_size
503 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
504 : LD 1, 2(5) ; Load parameter 'q' into R1
505 : LDA 4, 4(5) ; Compute future callee base using caller_size
506 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
507 : LDA 4, 4(5) ; Compute future callee base (caller_size)
508 : LDA 6, 512(0) ; Return address
509 : ST 6, 0(4) ; Store return in callee frame
510 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
511 : LDA 7, 585(0) ; Call LT
512 : LD 1, 3(5) ; Load callee result into R1
513 : LDC 2, 5(0) ; Callee frame size
514 : SUB 5, 5, 2 ; Pop callee frame
515 : LDC 2, 1(0) ; Load 1 into R2
516 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
517 : ST 1, 3(5) ; Store function result into frame return slot
518 : LD 6, 0(5) ; Load return address
519 : LDA 7, 0(6) ; Return to caller
520 : LD 1, 1(5) ; Load parameter 'p' into R1
521 : LDA 4, 5(5) ; Compute future callee base using caller_size
522 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
523 : LD 1, 2(5) ; Load parameter 'q' into R1
524 : LDA 4, 5(5) ; Compute future callee base using caller_size
525 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
526 : LDA 4, 5(5) ; Compute future callee base (caller_size)
527 : LDA 6, 531(0) ; Return address
528 : ST 6, 0(4) ; Store return in callee frame
529 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
530 : LDA 7, 585(0) ; Call LT
531 : LD 1, 3(5) ; Load callee result into R1
532 : LDC 2, 5(0) ; Callee frame size
533 : SUB 5, 5, 2 ; Pop callee frame
534 : ST 1, 4(5) ; Spill left operand at depth 0
535 : LD 1, 1(5) ; Load parameter 'p' into R1
536 : LDA 4, 5(5) ; Compute future callee base using caller_size
537 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
538 : LD 1, 2(5) ; Load parameter 'q' into R1
539 : LDA 4, 5(5) ; Compute future callee base using caller_size
540 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
541 : LDA 4, 5(5) ; Compute future callee base (caller_size)
542 : LDA 6, 546(0) ; Return address
543 : ST 6, 0(4) ; Store return in callee frame
544 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
545 : LDA 7, 573(0) ; Call EQ
546 : LD 1, 3(5) ; Load callee result into R1
547 : LDC 2, 5(0) ; Callee frame size
548 : SUB 5, 5, 2 ; Pop callee frame
549 : LD 2, 4(5) ; Restore left operand from depth 0
550 : ADD 1, 2, 1 ; R1 = left OR right
551 : ST 1, 3(5) ; Store function result into frame return slot
552 : LD 6, 0(5) ; Load return address
553 : LDA 7, 0(6) ; Return to caller
554 : LD 1, 1(5) ; Load parameter 'p' into R1
555 : LDA 4, 4(5) ; Compute future callee base using caller_size
556 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
557 : LD 1, 2(5) ; Load parameter 'q' into R1
558 : LDA 4, 4(5) ; Compute future callee base using caller_size
559 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
560 : LDA 4, 4(5) ; Compute future callee base (caller_size)
561 : LDA 6, 565(0) ; Return address
562 : ST 6, 0(4) ; Store return in callee frame
563 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
564 : LDA 7, 573(0) ; Call EQ
565 : LD 1, 3(5) ; Load callee result into R1
566 : LDC 2, 5(0) ; Callee frame size
567 : SUB 5, 5, 2 ; Pop callee frame
568 : LDC 2, 1(0) ; Load 1 into R2
569 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
570 : ST 1, 3(5) ; Store function result into frame return slot
571 : LD 6, 0(5) ; Load return address
572 : LDA 7, 0(6) ; Return to caller
573 : LD 1, 1(5) ; Load parameter 'p' into R1
574 : ST 1, 4(5) ; Spill left operand at depth 0
575 : LD 1, 2(5) ; Load parameter 'q' into R1
576 : LD 2, 4(5) ; Restore left operand from depth 0
577 : SUB 1, 2, 1 ; left - right for equality check
578 : JEQ 1, 2(7) ; If R1 == 0, jump to true
579 : LDC 1, 0(0) ; false
580 : LDA 7, 1(7) ; skip setting true
581 : LDC 1, 1(0) ; true
582 : ST 1, 3(5) ; Store function result into frame return slot
583 : LD 6, 0(5) ; Load return address
584 : LDA 7, 0(6) ; Return to caller
585 : LD 1, 1(5) ; Load parameter 'p' into R1
586 : ST 1, 4(5) ; Spill left operand at depth 0
587 : LD 1, 2(5) ; Load parameter 'q' into R1
588 : LD 2, 4(5) ; Restore left operand from depth 0
589 : SUB 1, 2, 1 ; left - right for less-than check
590 : JLT 1, 2(7) ; If R1 < 0, jump to true
591 : LDC 1, 0(0) ; false
592 : LDA 7, 1(7) ; skip setting true
593 : LDC 1, 1(0) ; true
594 : ST 1, 3(5) ; Store function result into frame return slot
595 : LD 6, 0(5) ; Load return address
596 : LDA 7, 0(6) ; Return to caller
597 : LDC 1, 2147483647(0) ; Load integer-literal into R1
598 : SUB 1, 0, 1 ; Negate value in R1
599 : ST 1, 2(5) ; Spill left operand at depth 0
600 : LDC 1, 1(0) ; Load integer-literal into R1
601 : LD 2, 2(5) ; Restore left operand from depth 0
602 : SUB 1, 2, 1 ; R1 = left - right
603 : ST 1, 1(5) ; Store function result into frame return slot
604 : LD 6, 0(5) ; Load return address
605 : LDA 7, 0(6) ; Return to caller
606 : LDC 1, 2147483647(0) ; Load integer-literal into R1
607 : ST 1, 1(5) ; Store function result into frame return slot
608 : LD 6, 0(5) ; Load return address
609 : LDA 7, 0(6) ; Return to caller
