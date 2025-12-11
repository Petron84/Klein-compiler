0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 3(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : LDA 6, 23(0) ; Return address
18 : ST 6, 0(2) ; Store return in callee frame
19 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
20 : LDC 3, 3(0) ; Callee frame size
21 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
22 : LDA 7, 32(0) ; Call isExcellent
23 : LD 1, 2(5) ; Load callee result into R1
24 : LDC 2, 3(0) ; Callee frame size
25 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
26 : LDC 3, 3(0) ; Caller frame size
27 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
28 : ST 1, 2(5) ; Store result into caller’s frame
29 : LD 1, 2(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 1(5) ; Load parameter 'n' into R1
33 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
34 : ST 1, 1(2) ; Store argument 0 in callee
35 : LD 1, 1(5) ; Load parameter 'n' into R1
36 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
37 : ST 1, 1(2) ; Store argument 0 in callee
38 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
39 : LDA 6, 45(0) ; Return address
40 : ST 6, 0(2) ; Store return in callee frame
41 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
42 : LDC 3, 5(0) ; Callee frame size
43 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
44 : LDA 7, 257(0) ; Call length
45 : LD 1, 2(5) ; Load callee result into R1
46 : LDC 2, 5(0) ; Callee frame size
47 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
48 : LDC 3, 3(0) ; Caller frame size
49 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
50 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
51 : ST 1, 2(2) ; Store argument 1 in callee
52 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
53 : LDA 6, 59(0) ; Return address
54 : ST 6, 0(2) ; Store return in callee frame
55 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
56 : LDC 3, 5(0) ; Callee frame size
57 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
58 : LDA 7, 67(0) ; Call isExcellentSwitch
59 : LD 1, 3(5) ; Load callee result into R1
60 : LDC 2, 5(0) ; Callee frame size
61 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
62 : LDC 3, 3(0) ; Caller frame size
63 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
64 : ST 1, 2(5) ; Store function result into frame return slot
65 : LD 6, 0(5) ; Load return address
66 : LDA 7, 0(6) ; Return to caller
67 : LD 1, 2(5) ; Load parameter 'length' into R1
68 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
69 : ST 1, 1(2) ; Store argument 0 in callee
70 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
71 : LDA 6, 77(0) ; Return address
72 : ST 6, 0(2) ; Store return in callee frame
73 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
74 : LDC 3, 5(0) ; Callee frame size
75 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
76 : LDA 7, 295(0) ; Call ODD
77 : LD 1, 2(5) ; Load callee result into R1
78 : LDC 2, 5(0) ; Callee frame size
79 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
80 : LDC 3, 5(0) ; Caller frame size
81 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
82 : JEQ 1, 85(0) ; If condition is false, jump to ELSE
83 : LDC 1, 0(0) ; Load boolean-literal into R1
84 : LDA 7, 139(0) ; Skip ELSE block
85 : LD 1, 1(5) ; Load parameter 'n' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LD 1, 1(5) ; Load parameter 'n' into R1
88 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
89 : ST 1, 1(2) ; Store argument 0 in callee
90 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
91 : LDA 6, 97(0) ; Return address
92 : ST 6, 0(2) ; Store return in callee frame
93 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
94 : LDC 3, 5(0) ; Callee frame size
95 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
96 : LDA 7, 214(0) ; Call a
97 : LD 1, 2(5) ; Load callee result into R1
98 : LDC 2, 5(0) ; Callee frame size
99 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
100 : LDC 3, 5(0) ; Caller frame size
101 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
102 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
103 : ST 1, 1(2) ; Store argument 0 in callee
104 : LD 1, 1(5) ; Load parameter 'n' into R1
105 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
106 : ST 1, 1(2) ; Store argument 0 in callee
107 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
108 : LDA 6, 114(0) ; Return address
109 : ST 6, 0(2) ; Store return in callee frame
110 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
111 : LDC 3, 4(0) ; Callee frame size
112 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
113 : LDA 7, 158(0) ; Call b
114 : LD 1, 2(5) ; Load callee result into R1
115 : LDC 2, 4(0) ; Callee frame size
116 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
117 : LDC 3, 5(0) ; Caller frame size
118 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
119 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
120 : ST 1, 2(2) ; Store argument 1 in callee
121 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
122 : LDA 6, 128(0) ; Return address
123 : ST 6, 0(2) ; Store return in callee frame
124 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
125 : LDC 3, 6(0) ; Callee frame size
126 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
127 : LDA 7, 142(0) ; Call excellentDiff
128 : LD 1, 3(5) ; Load callee result into R1
129 : LDC 2, 6(0) ; Callee frame size
130 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
131 : LDC 3, 5(0) ; Caller frame size
132 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
133 : LD 2, 4(5) ; Restore left operand from depth 0
134 : SUB 1, 2, 1 ; left - right for equality check
135 : JEQ 1, 2(7) ; If R1 == 0, jump to true
136 : LDC 1, 0(0) ; false
137 : LDA 7, 1(7) ; skip setting true
138 : LDC 1, 1(0) ; true
139 : ST 1, 3(5) ; Store function result into frame return slot
140 : LD 6, 0(5) ; Load return address
141 : LDA 7, 0(6) ; Return to caller
142 : LD 1, 2(5) ; Load parameter 'b' into R1
143 : ST 1, 4(5) ; Spill left operand at depth 0
144 : LD 1, 2(5) ; Load parameter 'b' into R1
145 : LD 2, 4(5) ; Restore left operand from depth 0
146 : MUL 1, 2, 1 ; R1 = left * right
147 : ST 1, 4(5) ; Spill left operand at depth 0
148 : LD 1, 1(5) ; Load parameter 'a' into R1
149 : ST 1, 5(5) ; Spill left operand at depth 1
150 : LD 1, 1(5) ; Load parameter 'a' into R1
151 : LD 2, 5(5) ; Restore left operand from depth 1
152 : MUL 1, 2, 1 ; R1 = left * right
153 : LD 2, 4(5) ; Restore left operand from depth 0
154 : SUB 1, 2, 1 ; R1 = left - right
155 : ST 1, 3(5) ; Store function result into frame return slot
156 : LD 6, 0(5) ; Load return address
157 : LDA 7, 0(6) ; Return to caller
158 : LD 1, 1(5) ; Load parameter 'n' into R1
159 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
160 : ST 1, 1(2) ; Store argument 0 in callee
161 : LDC 1, 10(0) ; Load integer-literal into R1
162 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
163 : ST 1, 1(2) ; Store argument 0 in callee
164 : LD 1, 1(5) ; Load parameter 'n' into R1
165 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
166 : ST 1, 1(2) ; Store argument 0 in callee
167 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
168 : LDA 6, 174(0) ; Return address
169 : ST 6, 0(2) ; Store return in callee frame
170 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
171 : LDC 3, 5(0) ; Callee frame size
172 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
173 : LDA 7, 257(0) ; Call length
174 : LD 1, 2(5) ; Load callee result into R1
175 : LDC 2, 5(0) ; Callee frame size
176 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
177 : LDC 3, 4(0) ; Caller frame size
178 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
179 : ST 1, 3(5) ; Spill left operand at depth 0
180 : LDC 1, 2(0) ; Load integer-literal into R1
181 : LD 2, 3(5) ; Restore left operand from depth 0
182 : DIV 1, 2, 1 ; R1 = left / right
183 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
184 : ST 1, 2(2) ; Store argument 1 in callee
185 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
186 : LDA 6, 192(0) ; Return address
187 : ST 6, 0(2) ; Store return in callee frame
188 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
189 : LDC 3, 6(0) ; Callee frame size
190 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
191 : LDA 7, 342(0) ; Call EXP
192 : LD 1, 3(5) ; Load callee result into R1
193 : LDC 2, 6(0) ; Callee frame size
194 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
195 : LDC 3, 4(0) ; Caller frame size
196 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
197 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
198 : ST 1, 2(2) ; Store argument 1 in callee
199 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
200 : LDA 6, 206(0) ; Return address
201 : ST 6, 0(2) ; Store return in callee frame
202 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
203 : LDC 3, 7(0) ; Callee frame size
204 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
205 : LDA 7, 383(0) ; Call MOD
206 : LD 1, 3(5) ; Load callee result into R1
207 : LDC 2, 7(0) ; Callee frame size
208 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
209 : LDC 3, 4(0) ; Caller frame size
210 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
211 : ST 1, 2(5) ; Store function result into frame return slot
212 : LD 6, 0(5) ; Load return address
213 : LDA 7, 0(6) ; Return to caller
214 : LD 1, 1(5) ; Load parameter 'n' into R1
215 : ST 1, 3(5) ; Spill left operand at depth 0
216 : LDC 1, 10(0) ; Load integer-literal into R1
217 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
218 : ST 1, 1(2) ; Store argument 0 in callee
219 : LD 1, 1(5) ; Load parameter 'n' into R1
220 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
221 : ST 1, 1(2) ; Store argument 0 in callee
222 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
223 : LDA 6, 229(0) ; Return address
224 : ST 6, 0(2) ; Store return in callee frame
225 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
226 : LDC 3, 5(0) ; Callee frame size
227 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
228 : LDA 7, 257(0) ; Call length
229 : LD 1, 2(5) ; Load callee result into R1
230 : LDC 2, 5(0) ; Callee frame size
231 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
232 : LDC 3, 5(0) ; Caller frame size
233 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
234 : ST 1, 4(5) ; Spill left operand at depth 1
235 : LDC 1, 2(0) ; Load integer-literal into R1
236 : LD 2, 4(5) ; Restore left operand from depth 1
237 : DIV 1, 2, 1 ; R1 = left / right
238 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
239 : ST 1, 2(2) ; Store argument 1 in callee
240 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
241 : LDA 6, 247(0) ; Return address
242 : ST 6, 0(2) ; Store return in callee frame
243 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
244 : LDC 3, 6(0) ; Callee frame size
245 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
246 : LDA 7, 342(0) ; Call EXP
247 : LD 1, 3(5) ; Load callee result into R1
248 : LDC 2, 6(0) ; Callee frame size
249 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
250 : LDC 3, 5(0) ; Caller frame size
251 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
252 : LD 2, 3(5) ; Restore left operand from depth 0
253 : DIV 1, 2, 1 ; R1 = left / right
254 : ST 1, 2(5) ; Store function result into frame return slot
255 : LD 6, 0(5) ; Load return address
256 : LDA 7, 0(6) ; Return to caller
257 : LD 1, 1(5) ; Load parameter 'n' into R1
258 : ST 1, 3(5) ; Spill left operand at depth 0
259 : LDC 1, 10(0) ; Load integer-literal into R1
260 : LD 2, 3(5) ; Restore left operand from depth 0
261 : SUB 1, 2, 1 ; left - right for less-than check
262 : JLT 1, 2(7) ; If R1 < 0, jump to true
263 : LDC 1, 0(0) ; false
264 : LDA 7, 1(7) ; skip setting true
265 : LDC 1, 1(0) ; true
266 : JEQ 1, 269(0) ; If condition is false, jump to ELSE
267 : LDC 1, 1(0) ; Load integer-literal into R1
268 : LDA 7, 292(0) ; Skip ELSE block
269 : LDC 1, 1(0) ; Load integer-literal into R1
270 : ST 1, 3(5) ; Spill left operand at depth 0
271 : LD 1, 1(5) ; Load parameter 'n' into R1
272 : ST 1, 4(5) ; Spill left operand at depth 1
273 : LDC 1, 10(0) ; Load integer-literal into R1
274 : LD 2, 4(5) ; Restore left operand from depth 1
275 : DIV 1, 2, 1 ; R1 = left / right
276 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
277 : ST 1, 1(2) ; Store argument 0 in callee
278 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
279 : LDA 6, 285(0) ; Return address
280 : ST 6, 0(2) ; Store return in callee frame
281 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
282 : LDC 3, 5(0) ; Callee frame size
283 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
284 : LDA 7, 257(0) ; Call length
285 : LD 1, 2(5) ; Load callee result into R1
286 : LDC 2, 5(0) ; Callee frame size
287 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
288 : LDC 3, 5(0) ; Caller frame size
289 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
290 : LD 2, 3(5) ; Restore left operand from depth 0
291 : ADD 1, 2, 1 ; R1 = left + right
292 : ST 1, 2(5) ; Store function result into frame return slot
293 : LD 6, 0(5) ; Load return address
294 : LDA 7, 0(6) ; Return to caller
295 : LDC 1, 0(0) ; Load integer-literal into R1
296 : ST 1, 3(5) ; Spill left operand at depth 0
297 : LD 1, 1(5) ; Load parameter 'n' into R1
298 : LD 2, 3(5) ; Restore left operand from depth 0
299 : SUB 1, 2, 1 ; left - right for less-than check
300 : JLT 1, 2(7) ; If R1 < 0, jump to true
301 : LDC 1, 0(0) ; false
302 : LDA 7, 1(7) ; skip setting true
303 : LDC 1, 1(0) ; true
304 : JEQ 1, 323(0) ; If condition is false, jump to ELSE
305 : LDC 1, 2(0) ; Load integer-literal into R1
306 : ST 1, 3(5) ; Spill left operand at depth 0
307 : LD 1, 1(5) ; Load parameter 'n' into R1
308 : ST 1, 4(5) ; Spill left operand at depth 1
309 : LDC 1, 2(0) ; Load integer-literal into R1
310 : LD 2, 4(5) ; Restore left operand from depth 1
311 : DIV 1, 2, 1 ; R1 = left / right
312 : LD 2, 3(5) ; Restore left operand from depth 0
313 : MUL 1, 2, 1 ; R1 = left * right
314 : ST 1, 3(5) ; Spill left operand at depth 0
315 : LD 1, 1(5) ; Load parameter 'n' into R1
316 : LD 2, 3(5) ; Restore left operand from depth 0
317 : SUB 1, 2, 1 ; left - right for less-than check
318 : JLT 1, 2(7) ; If R1 < 0, jump to true
319 : LDC 1, 0(0) ; false
320 : LDA 7, 1(7) ; skip setting true
321 : LDC 1, 1(0) ; true
322 : LDA 7, 339(0) ; Skip ELSE block
323 : LD 1, 1(5) ; Load parameter 'n' into R1
324 : SUB 1, 0, 1 ; Negate value in R1
325 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
326 : ST 1, 1(2) ; Store argument 0 in callee
327 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
328 : LDA 6, 334(0) ; Return address
329 : ST 6, 0(2) ; Store return in callee frame
330 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
331 : LDC 3, 5(0) ; Callee frame size
332 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
333 : LDA 7, 295(0) ; Call ODD
334 : LD 1, 2(5) ; Load callee result into R1
335 : LDC 2, 5(0) ; Callee frame size
336 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
337 : LDC 3, 5(0) ; Caller frame size
338 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
339 : ST 1, 2(5) ; Store function result into frame return slot
340 : LD 6, 0(5) ; Load return address
341 : LDA 7, 0(6) ; Return to caller
342 : LD 1, 2(5) ; Load parameter 'n' into R1
343 : ST 1, 4(5) ; Spill left operand at depth 0
344 : LDC 1, 0(0) ; Load integer-literal into R1
345 : LD 2, 4(5) ; Restore left operand from depth 0
346 : SUB 1, 2, 1 ; left - right for equality check
347 : JEQ 1, 2(7) ; If R1 == 0, jump to true
348 : LDC 1, 0(0) ; false
349 : LDA 7, 1(7) ; skip setting true
350 : LDC 1, 1(0) ; true
351 : JEQ 1, 354(0) ; If condition is false, jump to ELSE
352 : LDC 1, 1(0) ; Load integer-literal into R1
353 : LDA 7, 380(0) ; Skip ELSE block
354 : LD 1, 1(5) ; Load parameter 'm' into R1
355 : ST 1, 4(5) ; Spill left operand at depth 0
356 : LD 1, 1(5) ; Load parameter 'm' into R1
357 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
358 : ST 1, 1(2) ; Store argument 0 in callee
359 : LD 1, 2(5) ; Load parameter 'n' into R1
360 : ST 1, 5(5) ; Spill left operand at depth 1
361 : LDC 1, 1(0) ; Load integer-literal into R1
362 : LD 2, 5(5) ; Restore left operand from depth 1
363 : SUB 1, 2, 1 ; R1 = left - right
364 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
365 : ST 1, 2(2) ; Store argument 1 in callee
366 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
367 : LDA 6, 373(0) ; Return address
368 : ST 6, 0(2) ; Store return in callee frame
369 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
370 : LDC 3, 6(0) ; Callee frame size
371 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
372 : LDA 7, 342(0) ; Call EXP
373 : LD 1, 3(5) ; Load callee result into R1
374 : LDC 2, 6(0) ; Callee frame size
375 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
376 : LDC 3, 6(0) ; Caller frame size
377 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
378 : LD 2, 4(5) ; Restore left operand from depth 0
379 : MUL 1, 2, 1 ; R1 = left * right
380 : ST 1, 3(5) ; Store function result into frame return slot
381 : LD 6, 0(5) ; Load return address
382 : LDA 7, 0(6) ; Return to caller
383 : LD 1, 1(5) ; Load parameter 'm' into R1
384 : ST 1, 4(5) ; Spill left operand at depth 0
385 : LD 1, 2(5) ; Load parameter 'n' into R1
386 : ST 1, 5(5) ; Spill left operand at depth 1
387 : LD 1, 1(5) ; Load parameter 'm' into R1
388 : ST 1, 6(5) ; Spill left operand at depth 2
389 : LD 1, 2(5) ; Load parameter 'n' into R1
390 : LD 2, 6(5) ; Restore left operand from depth 2
391 : DIV 1, 2, 1 ; R1 = left / right
392 : LD 2, 5(5) ; Restore left operand from depth 1
393 : MUL 1, 2, 1 ; R1 = left * right
394 : LD 2, 4(5) ; Restore left operand from depth 0
395 : SUB 1, 2, 1 ; R1 = left - right
396 : ST 1, 3(5) ; Store function result into frame return slot
397 : LD 6, 0(5) ; Load return address
398 : LDA 7, 0(6) ; Return to caller
