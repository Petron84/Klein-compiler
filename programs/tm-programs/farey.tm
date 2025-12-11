0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 5(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LD 2, 3(0) ; Load CLI arg 3 into R2
8 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
9 : LDA 6, 2(7) ; Calculate return address (PC + 2)
10 : ST 6, 0(5) ; Store return address in main frame
11 : LDA 7, 17(0) ; Branch to main function
12 : OUT 1, 0, 0 ; Return/print result from main in R1
13 : HALT 0, 0, 0 ; Terminate program
14 : OUT 1, 0, 0 ; Hardcoded print: output R1
15 : LD 6, 0(5) ; Load return address from current frame
16 : LDA 7, 0(6) ; Jump back to caller
17 : LD 1, 1(5) ; Load parameter 'xNum' into R1
18 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
19 : ST 1, 1(2) ; Store argument 0 in callee
20 : LD 1, 2(5) ; Load parameter 'xDen' into R1
21 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
22 : ST 1, 2(2) ; Store argument 1 in callee
23 : LD 1, 3(5) ; Load parameter 'N' into R1
24 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
25 : ST 1, 3(2) ; Store argument 2 in callee
26 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
27 : LDA 6, 33(0) ; Return address
28 : ST 6, 0(2) ; Store return in callee frame
29 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
30 : LDC 3, 5(0) ; Callee frame size
31 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
32 : LDA 7, 659(0) ; Call fareyNum
33 : LD 1, 4(5) ; Load callee result into R1
34 : LDC 2, 5(0) ; Callee frame size
35 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
36 : LDC 3, 5(0) ; Caller frame size
37 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
38 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
39 : LDA 6, 45(0) ; Return address
40 : ST 6, 0(2) ; Store return address in callee frame
41 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
42 : LDC 3, 3(0) ; Callee frame size
43 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
44 : LDA 7, 14(0) ; Call built-in print
45 : LDC 2, 3(0) ; Callee frame size
46 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
47 : LDC 3, 5(0) ; Caller frame size
48 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
49 : LD 1, 1(5) ; Load parameter 'xNum' into R1
50 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
51 : ST 1, 1(2) ; Store argument 0 in callee
52 : LD 1, 2(5) ; Load parameter 'xDen' into R1
53 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
54 : ST 1, 2(2) ; Store argument 1 in callee
55 : LD 1, 3(5) ; Load parameter 'N' into R1
56 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
57 : ST 1, 3(2) ; Store argument 2 in callee
58 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
59 : LDA 6, 65(0) ; Return address
60 : ST 6, 0(2) ; Store return in callee frame
61 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
62 : LDC 3, 5(0) ; Callee frame size
63 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
64 : LDA 7, 489(0) ; Call fareyDen
65 : LD 1, 4(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Callee frame size
67 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
68 : LDC 3, 5(0) ; Caller frame size
69 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
70 : ST 1, 4(5) ; Store result into caller’s frame
71 : LD 1, 4(5) ; Load main return value into R1
72 : LD 6, 0(5) ; Load main return address
73 : LDA 7, 0(6) ; Return from main
74 : LD 1, 1(5) ; Load parameter 'x' into R1
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LD 1, 2(5) ; Load parameter 'y' into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for less-than check
79 : JLT 1, 2(7) ; If R1 < 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : ST 1, 4(5) ; Spill left operand at depth 0
84 : LD 1, 1(5) ; Load parameter 'x' into R1
85 : ST 1, 5(5) ; Spill left operand at depth 1
86 : LD 1, 2(5) ; Load parameter 'y' into R1
87 : LD 2, 5(5) ; Restore left operand from depth 1
88 : SUB 1, 2, 1 ; left - right for equality check
89 : JEQ 1, 2(7) ; If R1 == 0, jump to true
90 : LDC 1, 0(0) ; false
91 : LDA 7, 1(7) ; skip setting true
92 : LDC 1, 1(0) ; true
93 : LD 2, 4(5) ; Restore left operand from depth 0
94 : ADD 1, 2, 1 ; R1 = left OR right
95 : LDC 2, 1(0) ; Load 1 into R2
96 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
97 : ST 1, 3(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
100 : LD 1, 1(5) ; Load parameter 'x' into R1
101 : ST 1, 6(5) ; Spill left operand at depth 0
102 : LD 1, 4(5) ; Load parameter 'yd' into R1
103 : LD 2, 6(5) ; Restore left operand from depth 0
104 : MUL 1, 2, 1 ; R1 = left * right
105 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
106 : ST 1, 1(2) ; Store argument 0 in callee
107 : LD 1, 3(5) ; Load parameter 'y' into R1
108 : ST 1, 6(5) ; Spill left operand at depth 0
109 : LD 1, 2(5) ; Load parameter 'xd' into R1
110 : LD 2, 6(5) ; Restore left operand from depth 0
111 : MUL 1, 2, 1 ; R1 = left * right
112 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
113 : ST 1, 2(2) ; Store argument 1 in callee
114 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
115 : LDA 6, 121(0) ; Return address
116 : ST 6, 0(2) ; Store return in callee frame
117 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
118 : LDC 3, 6(0) ; Callee frame size
119 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
120 : LDA 7, 74(0) ; Call greater
121 : LD 1, 3(5) ; Load callee result into R1
122 : LDC 2, 6(0) ; Callee frame size
123 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
124 : LDC 3, 7(0) ; Caller frame size
125 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
126 : ST 1, 5(5) ; Store function result into frame return slot
127 : LD 6, 0(5) ; Load return address
128 : LDA 7, 0(6) ; Return to caller
129 : LD 1, 1(5) ; Load parameter 'x' into R1
130 : ST 1, 6(5) ; Spill left operand at depth 0
131 : LD 1, 4(5) ; Load parameter 'yd' into R1
132 : LD 2, 6(5) ; Restore left operand from depth 0
133 : MUL 1, 2, 1 ; R1 = left * right
134 : ST 1, 6(5) ; Spill left operand at depth 0
135 : LD 1, 3(5) ; Load parameter 'y' into R1
136 : ST 1, 7(5) ; Spill left operand at depth 1
137 : LD 1, 2(5) ; Load parameter 'xd' into R1
138 : LD 2, 7(5) ; Restore left operand from depth 1
139 : MUL 1, 2, 1 ; R1 = left * right
140 : LD 2, 6(5) ; Restore left operand from depth 0
141 : SUB 1, 2, 1 ; left - right for equality check
142 : JEQ 1, 2(7) ; If R1 == 0, jump to true
143 : LDC 1, 0(0) ; false
144 : LDA 7, 1(7) ; skip setting true
145 : LDC 1, 1(0) ; true
146 : ST 1, 5(5) ; Store function result into frame return slot
147 : LD 6, 0(5) ; Load return address
148 : LDA 7, 0(6) ; Return to caller
149 : LD 1, 6(5) ; Load parameter 'b' into R1
150 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
151 : ST 1, 1(2) ; Store argument 0 in callee
152 : LD 1, 4(5) ; Load parameter 'N' into R1
153 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
154 : ST 1, 2(2) ; Store argument 1 in callee
155 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
156 : LDA 6, 162(0) ; Return address
157 : ST 6, 0(2) ; Store return in callee frame
158 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
159 : LDC 3, 6(0) ; Callee frame size
160 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
161 : LDA 7, 74(0) ; Call greater
162 : LD 1, 3(5) ; Load callee result into R1
163 : LDC 2, 6(0) ; Callee frame size
164 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
165 : LDC 3, 11(0) ; Caller frame size
166 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
167 : ST 1, 10(5) ; Spill left operand at depth 0
168 : LD 1, 8(5) ; Load parameter 'd' into R1
169 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
170 : ST 1, 1(2) ; Store argument 0 in callee
171 : LD 1, 4(5) ; Load parameter 'N' into R1
172 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
173 : ST 1, 2(2) ; Store argument 1 in callee
174 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
175 : LDA 6, 181(0) ; Return address
176 : ST 6, 0(2) ; Store return in callee frame
177 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
178 : LDC 3, 6(0) ; Callee frame size
179 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
180 : LDA 7, 74(0) ; Call greater
181 : LD 1, 3(5) ; Load callee result into R1
182 : LDC 2, 6(0) ; Callee frame size
183 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
184 : LDC 3, 11(0) ; Caller frame size
185 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
186 : LD 2, 10(5) ; Restore left operand from depth 0
187 : ADD 1, 2, 1 ; R1 = left OR right
188 : JEQ 1, 227(0) ; If condition is false, jump to ELSE
189 : LD 1, 1(5) ; Load parameter 'selector' into R1
190 : ST 1, 10(5) ; Spill left operand at depth 0
191 : LDC 1, 1(0) ; Load integer-literal into R1
192 : LD 2, 10(5) ; Restore left operand from depth 0
193 : SUB 1, 2, 1 ; left - right for equality check
194 : JEQ 1, 2(7) ; If R1 == 0, jump to true
195 : LDC 1, 0(0) ; false
196 : LDA 7, 1(7) ; skip setting true
197 : LDC 1, 1(0) ; true
198 : JEQ 1, 201(0) ; If condition is false, jump to ELSE
199 : LD 1, 5(5) ; Load parameter 'a' into R1
200 : LDA 7, 226(0) ; Skip ELSE block
201 : LD 1, 1(5) ; Load parameter 'selector' into R1
202 : ST 1, 10(5) ; Spill left operand at depth 0
203 : LDC 1, 2(0) ; Load integer-literal into R1
204 : LD 2, 10(5) ; Restore left operand from depth 0
205 : SUB 1, 2, 1 ; left - right for equality check
206 : JEQ 1, 2(7) ; If R1 == 0, jump to true
207 : LDC 1, 0(0) ; false
208 : LDA 7, 1(7) ; skip setting true
209 : LDC 1, 1(0) ; true
210 : JEQ 1, 213(0) ; If condition is false, jump to ELSE
211 : LD 1, 6(5) ; Load parameter 'b' into R1
212 : LDA 7, 226(0) ; Skip ELSE block
213 : LD 1, 1(5) ; Load parameter 'selector' into R1
214 : ST 1, 10(5) ; Spill left operand at depth 0
215 : LDC 1, 3(0) ; Load integer-literal into R1
216 : LD 2, 10(5) ; Restore left operand from depth 0
217 : SUB 1, 2, 1 ; left - right for equality check
218 : JEQ 1, 2(7) ; If R1 == 0, jump to true
219 : LDC 1, 0(0) ; false
220 : LDA 7, 1(7) ; skip setting true
221 : LDC 1, 1(0) ; true
222 : JEQ 1, 225(0) ; If condition is false, jump to ELSE
223 : LD 1, 7(5) ; Load parameter 'c' into R1
224 : LDA 7, 226(0) ; Skip ELSE block
225 : LD 1, 8(5) ; Load parameter 'd' into R1
226 : LDA 7, 436(0) ; Skip ELSE block
227 : LD 1, 2(5) ; Load parameter 'xNum' into R1
228 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
229 : ST 1, 1(2) ; Store argument 0 in callee
230 : LD 1, 3(5) ; Load parameter 'xDen' into R1
231 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
232 : ST 1, 2(2) ; Store argument 1 in callee
233 : LD 1, 5(5) ; Load parameter 'a' into R1
234 : ST 1, 10(5) ; Spill left operand at depth 0
235 : LD 1, 7(5) ; Load parameter 'c' into R1
236 : LD 2, 10(5) ; Restore left operand from depth 0
237 : ADD 1, 2, 1 ; R1 = left + right
238 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
239 : ST 1, 3(2) ; Store argument 2 in callee
240 : LD 1, 6(5) ; Load parameter 'b' into R1
241 : ST 1, 10(5) ; Spill left operand at depth 0
242 : LD 1, 8(5) ; Load parameter 'd' into R1
243 : LD 2, 10(5) ; Restore left operand from depth 0
244 : ADD 1, 2, 1 ; R1 = left + right
245 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
246 : ST 1, 4(2) ; Store argument 3 in callee
247 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
248 : LDA 6, 254(0) ; Return address
249 : ST 6, 0(2) ; Store return in callee frame
250 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
251 : LDC 3, 8(0) ; Callee frame size
252 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
253 : LDA 7, 129(0) ; Call fractionEqual
254 : LD 1, 5(5) ; Load callee result into R1
255 : LDC 2, 8(0) ; Callee frame size
256 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
257 : LDC 3, 11(0) ; Caller frame size
258 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
259 : JEQ 1, 314(0) ; If condition is false, jump to ELSE
260 : LD 1, 1(5) ; Load parameter 'selector' into R1
261 : ST 1, 10(5) ; Spill left operand at depth 0
262 : LDC 1, 1(0) ; Load integer-literal into R1
263 : LD 2, 10(5) ; Restore left operand from depth 0
264 : SUB 1, 2, 1 ; left - right for equality check
265 : JEQ 1, 2(7) ; If R1 == 0, jump to true
266 : LDC 1, 0(0) ; false
267 : LDA 7, 1(7) ; skip setting true
268 : LDC 1, 1(0) ; true
269 : JEQ 1, 276(0) ; If condition is false, jump to ELSE
270 : LD 1, 5(5) ; Load parameter 'a' into R1
271 : ST 1, 10(5) ; Spill left operand at depth 0
272 : LD 1, 7(5) ; Load parameter 'c' into R1
273 : LD 2, 10(5) ; Restore left operand from depth 0
274 : ADD 1, 2, 1 ; R1 = left + right
275 : LDA 7, 313(0) ; Skip ELSE block
276 : LD 1, 1(5) ; Load parameter 'selector' into R1
277 : ST 1, 10(5) ; Spill left operand at depth 0
278 : LDC 1, 2(0) ; Load integer-literal into R1
279 : LD 2, 10(5) ; Restore left operand from depth 0
280 : SUB 1, 2, 1 ; left - right for equality check
281 : JEQ 1, 2(7) ; If R1 == 0, jump to true
282 : LDC 1, 0(0) ; false
283 : LDA 7, 1(7) ; skip setting true
284 : LDC 1, 1(0) ; true
285 : JEQ 1, 292(0) ; If condition is false, jump to ELSE
286 : LD 1, 6(5) ; Load parameter 'b' into R1
287 : ST 1, 10(5) ; Spill left operand at depth 0
288 : LD 1, 8(5) ; Load parameter 'd' into R1
289 : LD 2, 10(5) ; Restore left operand from depth 0
290 : ADD 1, 2, 1 ; R1 = left + right
291 : LDA 7, 313(0) ; Skip ELSE block
292 : LD 1, 1(5) ; Load parameter 'selector' into R1
293 : ST 1, 10(5) ; Spill left operand at depth 0
294 : LDC 1, 3(0) ; Load integer-literal into R1
295 : LD 2, 10(5) ; Restore left operand from depth 0
296 : SUB 1, 2, 1 ; left - right for equality check
297 : JEQ 1, 2(7) ; If R1 == 0, jump to true
298 : LDC 1, 0(0) ; false
299 : LDA 7, 1(7) ; skip setting true
300 : LDC 1, 1(0) ; true
301 : JEQ 1, 308(0) ; If condition is false, jump to ELSE
302 : LD 1, 5(5) ; Load parameter 'a' into R1
303 : ST 1, 10(5) ; Spill left operand at depth 0
304 : LD 1, 7(5) ; Load parameter 'c' into R1
305 : LD 2, 10(5) ; Restore left operand from depth 0
306 : ADD 1, 2, 1 ; R1 = left + right
307 : LDA 7, 313(0) ; Skip ELSE block
308 : LD 1, 6(5) ; Load parameter 'b' into R1
309 : ST 1, 10(5) ; Spill left operand at depth 0
310 : LD 1, 8(5) ; Load parameter 'd' into R1
311 : LD 2, 10(5) ; Restore left operand from depth 0
312 : ADD 1, 2, 1 ; R1 = left + right
313 : LDA 7, 436(0) ; Skip ELSE block
314 : LD 1, 2(5) ; Load parameter 'xNum' into R1
315 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
316 : ST 1, 1(2) ; Store argument 0 in callee
317 : LD 1, 3(5) ; Load parameter 'xDen' into R1
318 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
319 : ST 1, 2(2) ; Store argument 1 in callee
320 : LD 1, 5(5) ; Load parameter 'a' into R1
321 : ST 1, 10(5) ; Spill left operand at depth 0
322 : LD 1, 7(5) ; Load parameter 'c' into R1
323 : LD 2, 10(5) ; Restore left operand from depth 0
324 : ADD 1, 2, 1 ; R1 = left + right
325 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
326 : ST 1, 3(2) ; Store argument 2 in callee
327 : LD 1, 6(5) ; Load parameter 'b' into R1
328 : ST 1, 10(5) ; Spill left operand at depth 0
329 : LD 1, 8(5) ; Load parameter 'd' into R1
330 : LD 2, 10(5) ; Restore left operand from depth 0
331 : ADD 1, 2, 1 ; R1 = left + right
332 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
333 : ST 1, 4(2) ; Store argument 3 in callee
334 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
335 : LDA 6, 341(0) ; Return address
336 : ST 6, 0(2) ; Store return in callee frame
337 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
338 : LDC 3, 7(0) ; Callee frame size
339 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
340 : LDA 7, 100(0) ; Call fractionGreater
341 : LD 1, 5(5) ; Load callee result into R1
342 : LDC 2, 7(0) ; Callee frame size
343 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
344 : LDC 3, 11(0) ; Caller frame size
345 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
346 : JEQ 1, 392(0) ; If condition is false, jump to ELSE
347 : LD 1, 1(5) ; Load parameter 'selector' into R1
348 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
349 : ST 1, 1(2) ; Store argument 0 in callee
350 : LD 1, 2(5) ; Load parameter 'xNum' into R1
351 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
352 : ST 1, 2(2) ; Store argument 1 in callee
353 : LD 1, 3(5) ; Load parameter 'xDen' into R1
354 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
355 : ST 1, 3(2) ; Store argument 2 in callee
356 : LD 1, 4(5) ; Load parameter 'N' into R1
357 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
358 : ST 1, 4(2) ; Store argument 3 in callee
359 : LD 1, 5(5) ; Load parameter 'a' into R1
360 : ST 1, 10(5) ; Spill left operand at depth 0
361 : LD 1, 7(5) ; Load parameter 'c' into R1
362 : LD 2, 10(5) ; Restore left operand from depth 0
363 : ADD 1, 2, 1 ; R1 = left + right
364 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
365 : ST 1, 5(2) ; Store argument 4 in callee
366 : LD 1, 6(5) ; Load parameter 'b' into R1
367 : ST 1, 10(5) ; Spill left operand at depth 0
368 : LD 1, 8(5) ; Load parameter 'd' into R1
369 : LD 2, 10(5) ; Restore left operand from depth 0
370 : ADD 1, 2, 1 ; R1 = left + right
371 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
372 : ST 1, 6(2) ; Store argument 5 in callee
373 : LD 1, 7(5) ; Load parameter 'c' into R1
374 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
375 : ST 1, 7(2) ; Store argument 6 in callee
376 : LD 1, 8(5) ; Load parameter 'd' into R1
377 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
378 : ST 1, 8(2) ; Store argument 7 in callee
379 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
380 : LDA 6, 386(0) ; Return address
381 : ST 6, 0(2) ; Store return in callee frame
382 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
383 : LDC 3, 11(0) ; Callee frame size
384 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
385 : LDA 7, 149(0) ; Call whileLoopFor
386 : LD 1, 9(5) ; Load callee result into R1
387 : LDC 2, 11(0) ; Callee frame size
388 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
389 : LDC 3, 11(0) ; Caller frame size
390 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
391 : LDA 7, 436(0) ; Skip ELSE block
392 : LD 1, 1(5) ; Load parameter 'selector' into R1
393 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
394 : ST 1, 1(2) ; Store argument 0 in callee
395 : LD 1, 2(5) ; Load parameter 'xNum' into R1
396 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
397 : ST 1, 2(2) ; Store argument 1 in callee
398 : LD 1, 3(5) ; Load parameter 'xDen' into R1
399 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
400 : ST 1, 3(2) ; Store argument 2 in callee
401 : LD 1, 4(5) ; Load parameter 'N' into R1
402 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
403 : ST 1, 4(2) ; Store argument 3 in callee
404 : LD 1, 5(5) ; Load parameter 'a' into R1
405 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
406 : ST 1, 5(2) ; Store argument 4 in callee
407 : LD 1, 6(5) ; Load parameter 'b' into R1
408 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
409 : ST 1, 6(2) ; Store argument 5 in callee
410 : LD 1, 5(5) ; Load parameter 'a' into R1
411 : ST 1, 10(5) ; Spill left operand at depth 0
412 : LD 1, 7(5) ; Load parameter 'c' into R1
413 : LD 2, 10(5) ; Restore left operand from depth 0
414 : ADD 1, 2, 1 ; R1 = left + right
415 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
416 : ST 1, 7(2) ; Store argument 6 in callee
417 : LD 1, 6(5) ; Load parameter 'b' into R1
418 : ST 1, 10(5) ; Spill left operand at depth 0
419 : LD 1, 8(5) ; Load parameter 'd' into R1
420 : LD 2, 10(5) ; Restore left operand from depth 0
421 : ADD 1, 2, 1 ; R1 = left + right
422 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
423 : ST 1, 8(2) ; Store argument 7 in callee
424 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
425 : LDA 6, 431(0) ; Return address
426 : ST 6, 0(2) ; Store return in callee frame
427 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
428 : LDC 3, 11(0) ; Callee frame size
429 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
430 : LDA 7, 149(0) ; Call whileLoopFor
431 : LD 1, 9(5) ; Load callee result into R1
432 : LDC 2, 11(0) ; Callee frame size
433 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
434 : LDC 3, 11(0) ; Caller frame size
435 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
436 : ST 1, 9(5) ; Store function result into frame return slot
437 : LD 6, 0(5) ; Load return address
438 : LDA 7, 0(6) ; Return to caller
439 : LD 1, 3(5) ; Load parameter 'b' into R1
440 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
441 : ST 1, 1(2) ; Store argument 0 in callee
442 : LD 1, 1(5) ; Load parameter 'N' into R1
443 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
444 : ST 1, 2(2) ; Store argument 1 in callee
445 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
446 : LDA 6, 452(0) ; Return address
447 : ST 6, 0(2) ; Store return in callee frame
448 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
449 : LDC 3, 6(0) ; Callee frame size
450 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
451 : LDA 7, 74(0) ; Call greater
452 : LD 1, 3(5) ; Load callee result into R1
453 : LDC 2, 6(0) ; Callee frame size
454 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
455 : LDC 3, 7(0) ; Caller frame size
456 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
457 : JEQ 1, 460(0) ; If condition is false, jump to ELSE
458 : LD 1, 5(5) ; Load parameter 'd' into R1
459 : LDA 7, 461(0) ; Skip ELSE block
460 : LD 1, 3(5) ; Load parameter 'b' into R1
461 : ST 1, 6(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 3(5) ; Load parameter 'b' into R1
465 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
466 : ST 1, 1(2) ; Store argument 0 in callee
467 : LD 1, 1(5) ; Load parameter 'N' into R1
468 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
469 : ST 1, 2(2) ; Store argument 1 in callee
470 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
471 : LDA 6, 477(0) ; Return address
472 : ST 6, 0(2) ; Store return in callee frame
473 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
474 : LDC 3, 6(0) ; Callee frame size
475 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
476 : LDA 7, 74(0) ; Call greater
477 : LD 1, 3(5) ; Load callee result into R1
478 : LDC 2, 6(0) ; Callee frame size
479 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
480 : LDC 3, 7(0) ; Caller frame size
481 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
482 : JEQ 1, 485(0) ; If condition is false, jump to ELSE
483 : LD 1, 4(5) ; Load parameter 'c' into R1
484 : LDA 7, 486(0) ; Skip ELSE block
485 : LD 1, 2(5) ; Load parameter 'a' into R1
486 : ST 1, 6(5) ; Store function result into frame return slot
487 : LD 6, 0(5) ; Load return address
488 : LDA 7, 0(6) ; Return to caller
489 : LD 1, 3(5) ; Load parameter 'N' into R1
490 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
491 : ST 1, 1(2) ; Store argument 0 in callee
492 : LDC 1, 1(0) ; Load integer-literal into R1
493 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
494 : ST 1, 1(2) ; Store argument 0 in callee
495 : LD 1, 1(5) ; Load parameter 'xNum' into R1
496 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
497 : ST 1, 2(2) ; Store argument 1 in callee
498 : LD 1, 2(5) ; Load parameter 'xDen' into R1
499 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
500 : ST 1, 3(2) ; Store argument 2 in callee
501 : LD 1, 3(5) ; Load parameter 'N' into R1
502 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
503 : ST 1, 4(2) ; Store argument 3 in callee
504 : LDC 1, 0(0) ; Load integer-literal into R1
505 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
506 : ST 1, 5(2) ; Store argument 4 in callee
507 : LDC 1, 1(0) ; Load integer-literal into R1
508 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
509 : ST 1, 6(2) ; Store argument 5 in callee
510 : LDC 1, 1(0) ; Load integer-literal into R1
511 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
512 : ST 1, 7(2) ; Store argument 6 in callee
513 : LDC 1, 1(0) ; Load integer-literal into R1
514 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
515 : ST 1, 8(2) ; Store argument 7 in callee
516 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
517 : LDA 6, 523(0) ; Return address
518 : ST 6, 0(2) ; Store return in callee frame
519 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
520 : LDC 3, 11(0) ; Callee frame size
521 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
522 : LDA 7, 149(0) ; Call whileLoopFor
523 : LD 1, 9(5) ; Load callee result into R1
524 : LDC 2, 11(0) ; Callee frame size
525 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
526 : LDC 3, 5(0) ; Caller frame size
527 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
528 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
529 : ST 1, 2(2) ; Store argument 1 in callee
530 : LDC 1, 2(0) ; Load integer-literal into R1
531 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
532 : ST 1, 1(2) ; Store argument 0 in callee
533 : LD 1, 1(5) ; Load parameter 'xNum' into R1
534 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
535 : ST 1, 2(2) ; Store argument 1 in callee
536 : LD 1, 2(5) ; Load parameter 'xDen' into R1
537 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
538 : ST 1, 3(2) ; Store argument 2 in callee
539 : LD 1, 3(5) ; Load parameter 'N' into R1
540 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
541 : ST 1, 4(2) ; Store argument 3 in callee
542 : LDC 1, 0(0) ; Load integer-literal into R1
543 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
544 : ST 1, 5(2) ; Store argument 4 in callee
545 : LDC 1, 1(0) ; Load integer-literal into R1
546 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
547 : ST 1, 6(2) ; Store argument 5 in callee
548 : LDC 1, 1(0) ; Load integer-literal into R1
549 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
550 : ST 1, 7(2) ; Store argument 6 in callee
551 : LDC 1, 1(0) ; Load integer-literal into R1
552 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
553 : ST 1, 8(2) ; Store argument 7 in callee
554 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
555 : LDA 6, 561(0) ; Return address
556 : ST 6, 0(2) ; Store return in callee frame
557 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
558 : LDC 3, 11(0) ; Callee frame size
559 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
560 : LDA 7, 149(0) ; Call whileLoopFor
561 : LD 1, 9(5) ; Load callee result into R1
562 : LDC 2, 11(0) ; Callee frame size
563 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
564 : LDC 3, 5(0) ; Caller frame size
565 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
566 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
567 : ST 1, 3(2) ; Store argument 2 in callee
568 : LDC 1, 3(0) ; Load integer-literal into R1
569 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
570 : ST 1, 1(2) ; Store argument 0 in callee
571 : LD 1, 1(5) ; Load parameter 'xNum' into R1
572 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
573 : ST 1, 2(2) ; Store argument 1 in callee
574 : LD 1, 2(5) ; Load parameter 'xDen' into R1
575 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
576 : ST 1, 3(2) ; Store argument 2 in callee
577 : LD 1, 3(5) ; Load parameter 'N' into R1
578 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
579 : ST 1, 4(2) ; Store argument 3 in callee
580 : LDC 1, 0(0) ; Load integer-literal into R1
581 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
582 : ST 1, 5(2) ; Store argument 4 in callee
583 : LDC 1, 1(0) ; Load integer-literal into R1
584 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
585 : ST 1, 6(2) ; Store argument 5 in callee
586 : LDC 1, 1(0) ; Load integer-literal into R1
587 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
588 : ST 1, 7(2) ; Store argument 6 in callee
589 : LDC 1, 1(0) ; Load integer-literal into R1
590 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
591 : ST 1, 8(2) ; Store argument 7 in callee
592 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
593 : LDA 6, 599(0) ; Return address
594 : ST 6, 0(2) ; Store return in callee frame
595 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
596 : LDC 3, 11(0) ; Callee frame size
597 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
598 : LDA 7, 149(0) ; Call whileLoopFor
599 : LD 1, 9(5) ; Load callee result into R1
600 : LDC 2, 11(0) ; Callee frame size
601 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
602 : LDC 3, 5(0) ; Caller frame size
603 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
604 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
605 : ST 1, 4(2) ; Store argument 3 in callee
606 : LDC 1, 4(0) ; Load integer-literal into R1
607 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
608 : ST 1, 1(2) ; Store argument 0 in callee
609 : LD 1, 1(5) ; Load parameter 'xNum' into R1
610 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
611 : ST 1, 2(2) ; Store argument 1 in callee
612 : LD 1, 2(5) ; Load parameter 'xDen' into R1
613 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
614 : ST 1, 3(2) ; Store argument 2 in callee
615 : LD 1, 3(5) ; Load parameter 'N' into R1
616 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
617 : ST 1, 4(2) ; Store argument 3 in callee
618 : LDC 1, 0(0) ; Load integer-literal into R1
619 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
620 : ST 1, 5(2) ; Store argument 4 in callee
621 : LDC 1, 1(0) ; Load integer-literal into R1
622 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
623 : ST 1, 6(2) ; Store argument 5 in callee
624 : LDC 1, 1(0) ; Load integer-literal into R1
625 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
626 : ST 1, 7(2) ; Store argument 6 in callee
627 : LDC 1, 1(0) ; Load integer-literal into R1
628 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
629 : ST 1, 8(2) ; Store argument 7 in callee
630 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
631 : LDA 6, 637(0) ; Return address
632 : ST 6, 0(2) ; Store return in callee frame
633 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
634 : LDC 3, 11(0) ; Callee frame size
635 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
636 : LDA 7, 149(0) ; Call whileLoopFor
637 : LD 1, 9(5) ; Load callee result into R1
638 : LDC 2, 11(0) ; Callee frame size
639 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
640 : LDC 3, 5(0) ; Caller frame size
641 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
642 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
643 : ST 1, 5(2) ; Store argument 4 in callee
644 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
645 : LDA 6, 651(0) ; Return address
646 : ST 6, 0(2) ; Store return in callee frame
647 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
648 : LDC 3, 7(0) ; Callee frame size
649 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
650 : LDA 7, 439(0) ; Call fareySelectDen
651 : LD 1, 6(5) ; Load callee result into R1
652 : LDC 2, 7(0) ; Callee frame size
653 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
654 : LDC 3, 5(0) ; Caller frame size
655 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
656 : ST 1, 4(5) ; Store function result into frame return slot
657 : LD 6, 0(5) ; Load return address
658 : LDA 7, 0(6) ; Return to caller
659 : LD 1, 3(5) ; Load parameter 'N' into R1
660 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
661 : ST 1, 1(2) ; Store argument 0 in callee
662 : LDC 1, 1(0) ; Load integer-literal into R1
663 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
664 : ST 1, 1(2) ; Store argument 0 in callee
665 : LD 1, 1(5) ; Load parameter 'xNum' into R1
666 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
667 : ST 1, 2(2) ; Store argument 1 in callee
668 : LD 1, 2(5) ; Load parameter 'xDen' into R1
669 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
670 : ST 1, 3(2) ; Store argument 2 in callee
671 : LD 1, 3(5) ; Load parameter 'N' into R1
672 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
673 : ST 1, 4(2) ; Store argument 3 in callee
674 : LDC 1, 0(0) ; Load integer-literal into R1
675 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
676 : ST 1, 5(2) ; Store argument 4 in callee
677 : LDC 1, 1(0) ; Load integer-literal into R1
678 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
679 : ST 1, 6(2) ; Store argument 5 in callee
680 : LDC 1, 1(0) ; Load integer-literal into R1
681 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
682 : ST 1, 7(2) ; Store argument 6 in callee
683 : LDC 1, 1(0) ; Load integer-literal into R1
684 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
685 : ST 1, 8(2) ; Store argument 7 in callee
686 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
687 : LDA 6, 693(0) ; Return address
688 : ST 6, 0(2) ; Store return in callee frame
689 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
690 : LDC 3, 11(0) ; Callee frame size
691 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
692 : LDA 7, 149(0) ; Call whileLoopFor
693 : LD 1, 9(5) ; Load callee result into R1
694 : LDC 2, 11(0) ; Callee frame size
695 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
696 : LDC 3, 5(0) ; Caller frame size
697 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
698 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
699 : ST 1, 2(2) ; Store argument 1 in callee
700 : LDC 1, 2(0) ; Load integer-literal into R1
701 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
702 : ST 1, 1(2) ; Store argument 0 in callee
703 : LD 1, 1(5) ; Load parameter 'xNum' into R1
704 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
705 : ST 1, 2(2) ; Store argument 1 in callee
706 : LD 1, 2(5) ; Load parameter 'xDen' into R1
707 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
708 : ST 1, 3(2) ; Store argument 2 in callee
709 : LD 1, 3(5) ; Load parameter 'N' into R1
710 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
711 : ST 1, 4(2) ; Store argument 3 in callee
712 : LDC 1, 0(0) ; Load integer-literal into R1
713 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
714 : ST 1, 5(2) ; Store argument 4 in callee
715 : LDC 1, 1(0) ; Load integer-literal into R1
716 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
717 : ST 1, 6(2) ; Store argument 5 in callee
718 : LDC 1, 1(0) ; Load integer-literal into R1
719 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
720 : ST 1, 7(2) ; Store argument 6 in callee
721 : LDC 1, 1(0) ; Load integer-literal into R1
722 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
723 : ST 1, 8(2) ; Store argument 7 in callee
724 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
725 : LDA 6, 731(0) ; Return address
726 : ST 6, 0(2) ; Store return in callee frame
727 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
728 : LDC 3, 11(0) ; Callee frame size
729 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
730 : LDA 7, 149(0) ; Call whileLoopFor
731 : LD 1, 9(5) ; Load callee result into R1
732 : LDC 2, 11(0) ; Callee frame size
733 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
734 : LDC 3, 5(0) ; Caller frame size
735 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
736 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
737 : ST 1, 3(2) ; Store argument 2 in callee
738 : LDC 1, 3(0) ; Load integer-literal into R1
739 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
740 : ST 1, 1(2) ; Store argument 0 in callee
741 : LD 1, 1(5) ; Load parameter 'xNum' into R1
742 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
743 : ST 1, 2(2) ; Store argument 1 in callee
744 : LD 1, 2(5) ; Load parameter 'xDen' into R1
745 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
746 : ST 1, 3(2) ; Store argument 2 in callee
747 : LD 1, 3(5) ; Load parameter 'N' into R1
748 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
749 : ST 1, 4(2) ; Store argument 3 in callee
750 : LDC 1, 0(0) ; Load integer-literal into R1
751 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
752 : ST 1, 5(2) ; Store argument 4 in callee
753 : LDC 1, 1(0) ; Load integer-literal into R1
754 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
755 : ST 1, 6(2) ; Store argument 5 in callee
756 : LDC 1, 1(0) ; Load integer-literal into R1
757 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
758 : ST 1, 7(2) ; Store argument 6 in callee
759 : LDC 1, 1(0) ; Load integer-literal into R1
760 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
761 : ST 1, 8(2) ; Store argument 7 in callee
762 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
763 : LDA 6, 769(0) ; Return address
764 : ST 6, 0(2) ; Store return in callee frame
765 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
766 : LDC 3, 11(0) ; Callee frame size
767 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
768 : LDA 7, 149(0) ; Call whileLoopFor
769 : LD 1, 9(5) ; Load callee result into R1
770 : LDC 2, 11(0) ; Callee frame size
771 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
772 : LDC 3, 5(0) ; Caller frame size
773 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
774 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
775 : ST 1, 4(2) ; Store argument 3 in callee
776 : LDC 1, 4(0) ; Load integer-literal into R1
777 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
778 : ST 1, 1(2) ; Store argument 0 in callee
779 : LD 1, 1(5) ; Load parameter 'xNum' into R1
780 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
781 : ST 1, 2(2) ; Store argument 1 in callee
782 : LD 1, 2(5) ; Load parameter 'xDen' into R1
783 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
784 : ST 1, 3(2) ; Store argument 2 in callee
785 : LD 1, 3(5) ; Load parameter 'N' into R1
786 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
787 : ST 1, 4(2) ; Store argument 3 in callee
788 : LDC 1, 0(0) ; Load integer-literal into R1
789 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
790 : ST 1, 5(2) ; Store argument 4 in callee
791 : LDC 1, 1(0) ; Load integer-literal into R1
792 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
793 : ST 1, 6(2) ; Store argument 5 in callee
794 : LDC 1, 1(0) ; Load integer-literal into R1
795 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
796 : ST 1, 7(2) ; Store argument 6 in callee
797 : LDC 1, 1(0) ; Load integer-literal into R1
798 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
799 : ST 1, 8(2) ; Store argument 7 in callee
800 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
801 : LDA 6, 807(0) ; Return address
802 : ST 6, 0(2) ; Store return in callee frame
803 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
804 : LDC 3, 11(0) ; Callee frame size
805 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
806 : LDA 7, 149(0) ; Call whileLoopFor
807 : LD 1, 9(5) ; Load callee result into R1
808 : LDC 2, 11(0) ; Callee frame size
809 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
810 : LDC 3, 5(0) ; Caller frame size
811 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
812 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
813 : ST 1, 5(2) ; Store argument 4 in callee
814 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
815 : LDA 6, 821(0) ; Return address
816 : ST 6, 0(2) ; Store return in callee frame
817 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
818 : LDC 3, 7(0) ; Callee frame size
819 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
820 : LDA 7, 464(0) ; Call fareySelectNum
821 : LD 1, 6(5) ; Load callee result into R1
822 : LDC 2, 7(0) ; Callee frame size
823 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
824 : LDC 3, 5(0) ; Caller frame size
825 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
826 : ST 1, 4(5) ; Store function result into frame return slot
827 : LD 6, 0(5) ; Load return address
828 : LDA 7, 0(6) ; Return to caller
