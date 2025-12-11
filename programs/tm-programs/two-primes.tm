0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 5(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LDA 6, 2(7) ; Calculate return address (PC + 2)
8 : ST 6, 0(5) ; Store return address in main frame
9 : LDA 7, 15(0) ; Branch to main function
10 : OUT 1, 0, 0 ; Return/print result from main in R1
11 : HALT 0, 0, 0 ; Terminate program
12 : OUT 1, 0, 0 ; Hardcoded print: output R1
13 : LD 6, 0(5) ; Load return address from current frame
14 : LDA 7, 0(6) ; Jump back to caller
15 : LD 1, 2(5) ; Load parameter 'selector' into R1
16 : ST 1, 4(5) ; Spill left operand at depth 0
17 : LDC 1, 3(0) ; Load integer-literal into R1
18 : LD 2, 4(5) ; Restore left operand from depth 0
19 : SUB 1, 2, 1 ; left - right for equality check
20 : JEQ 1, 2(7) ; If R1 == 0, jump to true
21 : LDC 1, 0(0) ; false
22 : LDA 7, 1(7) ; skip setting true
23 : LDC 1, 1(0) ; true
24 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
25 : LD 1, 1(5) ; Load parameter 'n' into R1
26 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
27 : ST 1, 1(2) ; Store argument 0 in callee
28 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
29 : LDA 6, 35(0) ; Return address
30 : ST 6, 0(2) ; Store return in callee frame
31 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
32 : LDC 3, 4(0) ; Callee frame size
33 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
34 : LDA 7, 406(0) ; Call emirp
35 : LD 1, 2(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Callee frame size
37 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
38 : LDC 3, 5(0) ; Caller frame size
39 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
40 : ST 1, 3(5) ; Store result into caller’s frame
41 : LDA 7, 98(0) ; Skip ELSE block
42 : LD 1, 2(5) ; Load parameter 'selector' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LDC 1, 5(0) ; Load integer-literal into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; left - right for equality check
47 : JEQ 1, 2(7) ; If R1 == 0, jump to true
48 : LDC 1, 0(0) ; false
49 : LDA 7, 1(7) ; skip setting true
50 : LDC 1, 1(0) ; true
51 : JEQ 1, 69(0) ; If condition is false, jump to ELSE
52 : LD 1, 1(5) ; Load parameter 'n' into R1
53 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
54 : ST 1, 1(2) ; Store argument 0 in callee
55 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
56 : LDA 6, 62(0) ; Return address
57 : ST 6, 0(2) ; Store return in callee frame
58 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
59 : LDC 3, 5(0) ; Callee frame size
60 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
61 : LDA 7, 354(0) ; Call snowball
62 : LD 1, 2(5) ; Load callee result into R1
63 : LDC 2, 5(0) ; Callee frame size
64 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
65 : LDC 3, 5(0) ; Caller frame size
66 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
67 : ST 1, 3(5) ; Store result into caller’s frame
68 : LDA 7, 98(0) ; Skip ELSE block
69 : LD 1, 2(5) ; Load parameter 'selector' into R1
70 : ST 1, 4(5) ; Spill left operand at depth 0
71 : LDC 1, 8(0) ; Load integer-literal into R1
72 : LD 2, 4(5) ; Restore left operand from depth 0
73 : SUB 1, 2, 1 ; left - right for equality check
74 : JEQ 1, 2(7) ; If R1 == 0, jump to true
75 : LDC 1, 0(0) ; false
76 : LDA 7, 1(7) ; skip setting true
77 : LDC 1, 1(0) ; true
78 : JEQ 1, 96(0) ; If condition is false, jump to ELSE
79 : LD 1, 1(5) ; Load parameter 'n' into R1
80 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
81 : ST 1, 1(2) ; Store argument 0 in callee
82 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
83 : LDA 6, 89(0) ; Return address
84 : ST 6, 0(2) ; Store return in callee frame
85 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
86 : LDC 3, 3(0) ; Callee frame size
87 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
88 : LDA 7, 310(0) ; Call doBoth
89 : LD 1, 2(5) ; Load callee result into R1
90 : LDC 2, 3(0) ; Callee frame size
91 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
92 : LDC 3, 5(0) ; Caller frame size
93 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
94 : ST 1, 3(5) ; Store result into caller’s frame
95 : LDA 7, 98(0) ; Skip ELSE block
96 : LDC 1, 0(0) ; Load boolean-literal into R1
97 : ST 1, 3(5) ; Store result into current frame's return slot
98 : LD 1, 3(5) ; Load main return value into R1
99 : LD 6, 0(5) ; Load main return address
100 : LDA 7, 0(6) ; Return from main
101 : LD 1, 1(5) ; Load parameter 'm' into R1
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LD 1, 1(5) ; Load parameter 'm' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 1
105 : LD 1, 2(5) ; Load parameter 'n' into R1
106 : LD 2, 5(5) ; Restore left operand from depth 1
107 : DIV 1, 2, 1 ; R1 = left / right
108 : ST 1, 5(5) ; Spill left operand at depth 1
109 : LD 1, 2(5) ; Load parameter 'n' into R1
110 : LD 2, 5(5) ; Restore left operand from depth 1
111 : MUL 1, 2, 1 ; R1 = left * right
112 : LD 2, 4(5) ; Restore left operand from depth 0
113 : SUB 1, 2, 1 ; R1 = left - right
114 : ST 1, 3(5) ; Store function result into frame return slot
115 : LD 6, 0(5) ; Load return address
116 : LDA 7, 0(6) ; Return to caller
117 : LD 1, 1(5) ; Load parameter 'n' into R1
118 : ST 1, 4(5) ; Spill left operand at depth 0
119 : LDC 1, 0(0) ; Load integer-literal into R1
120 : LD 2, 4(5) ; Restore left operand from depth 0
121 : SUB 1, 2, 1 ; left - right for equality check
122 : JEQ 1, 2(7) ; If R1 == 0, jump to true
123 : LDC 1, 0(0) ; false
124 : LDA 7, 1(7) ; skip setting true
125 : LDC 1, 1(0) ; true
126 : JEQ 1, 129(0) ; If condition is false, jump to ELSE
127 : LD 1, 2(5) ; Load parameter 'nR' into R1
128 : LDA 7, 176(0) ; Skip ELSE block
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : ST 1, 4(5) ; Spill left operand at depth 0
131 : LDC 1, 10(0) ; Load integer-literal into R1
132 : LD 2, 4(5) ; Restore left operand from depth 0
133 : DIV 1, 2, 1 ; R1 = left / right
134 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
135 : ST 1, 1(2) ; Store argument 0 in callee
136 : LDC 1, 10(0) ; Load integer-literal into R1
137 : ST 1, 4(5) ; Spill left operand at depth 0
138 : LD 1, 2(5) ; Load parameter 'nR' into R1
139 : LD 2, 4(5) ; Restore left operand from depth 0
140 : MUL 1, 2, 1 ; R1 = left * right
141 : ST 1, 4(5) ; Spill left operand at depth 0
142 : LD 1, 1(5) ; Load parameter 'n' into R1
143 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
144 : ST 1, 1(2) ; Store argument 0 in callee
145 : LDC 1, 10(0) ; Load integer-literal into R1
146 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
147 : ST 1, 2(2) ; Store argument 1 in callee
148 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
149 : LDA 6, 155(0) ; Return address
150 : ST 6, 0(2) ; Store return in callee frame
151 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
152 : LDC 3, 6(0) ; Callee frame size
153 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
154 : LDA 7, 101(0) ; Call MOD
155 : LD 1, 3(5) ; Load callee result into R1
156 : LDC 2, 6(0) ; Callee frame size
157 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
158 : LDC 3, 5(0) ; Caller frame size
159 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
160 : LD 2, 4(5) ; Restore left operand from depth 0
161 : ADD 1, 2, 1 ; R1 = left + right
162 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
163 : ST 1, 2(2) ; Store argument 1 in callee
164 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
165 : LDA 6, 171(0) ; Return address
166 : ST 6, 0(2) ; Store return in callee frame
167 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
168 : LDC 3, 5(0) ; Callee frame size
169 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
170 : LDA 7, 117(0) ; Call reverseL
171 : LD 1, 3(5) ; Load callee result into R1
172 : LDC 2, 5(0) ; Callee frame size
173 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
174 : LDC 3, 5(0) ; Caller frame size
175 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
176 : ST 1, 3(5) ; Store function result into frame return slot
177 : LD 6, 0(5) ; Load return address
178 : LDA 7, 0(6) ; Return to caller
179 : LD 1, 1(5) ; Load parameter 'n' into R1
180 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
181 : ST 1, 1(2) ; Store argument 0 in callee
182 : LDC 1, 0(0) ; Load integer-literal into R1
183 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
184 : ST 1, 2(2) ; Store argument 1 in callee
185 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
186 : LDA 6, 192(0) ; Return address
187 : ST 6, 0(2) ; Store return in callee frame
188 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
189 : LDC 3, 5(0) ; Callee frame size
190 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
191 : LDA 7, 117(0) ; Call reverseL
192 : LD 1, 3(5) ; Load callee result into R1
193 : LDC 2, 5(0) ; Callee frame size
194 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
195 : LDC 3, 3(0) ; Caller frame size
196 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
197 : ST 1, 2(5) ; Store function result into frame return slot
198 : LD 6, 0(5) ; Load return address
199 : LDA 7, 0(6) ; Return to caller
200 : LD 1, 2(5) ; Load parameter 'b' into R1
201 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
202 : ST 1, 1(2) ; Store argument 0 in callee
203 : LD 1, 1(5) ; Load parameter 'a' into R1
204 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
205 : ST 1, 2(2) ; Store argument 1 in callee
206 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
207 : LDA 6, 213(0) ; Return address
208 : ST 6, 0(2) ; Store return in callee frame
209 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
210 : LDC 3, 6(0) ; Callee frame size
211 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
212 : LDA 7, 101(0) ; Call MOD
213 : LD 1, 3(5) ; Load callee result into R1
214 : LDC 2, 6(0) ; Callee frame size
215 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
216 : LDC 3, 5(0) ; Caller frame size
217 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
218 : ST 1, 4(5) ; Spill left operand at depth 0
219 : LDC 1, 0(0) ; Load integer-literal into R1
220 : LD 2, 4(5) ; Restore left operand from depth 0
221 : SUB 1, 2, 1 ; left - right for equality check
222 : JEQ 1, 2(7) ; If R1 == 0, jump to true
223 : LDC 1, 0(0) ; false
224 : LDA 7, 1(7) ; skip setting true
225 : LDC 1, 1(0) ; true
226 : ST 1, 3(5) ; Store function result into frame return slot
227 : LD 6, 0(5) ; Load return address
228 : LDA 7, 0(6) ; Return to caller
229 : LD 1, 1(5) ; Load parameter 'i' into R1
230 : ST 1, 4(5) ; Spill left operand at depth 0
231 : LD 1, 2(5) ; Load parameter 'n' into R1
232 : LD 2, 4(5) ; Restore left operand from depth 0
233 : SUB 1, 2, 1 ; left - right for less-than check
234 : JLT 1, 2(7) ; If R1 < 0, jump to true
235 : LDC 1, 0(0) ; false
236 : LDA 7, 1(7) ; skip setting true
237 : LDC 1, 1(0) ; true
238 : JEQ 1, 283(0) ; If condition is false, jump to ELSE
239 : LD 1, 1(5) ; Load parameter 'i' into R1
240 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
241 : ST 1, 1(2) ; Store argument 0 in callee
242 : LD 1, 2(5) ; Load parameter 'n' into R1
243 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
244 : ST 1, 2(2) ; Store argument 1 in callee
245 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
246 : LDA 6, 252(0) ; Return address
247 : ST 6, 0(2) ; Store return in callee frame
248 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
249 : LDC 3, 5(0) ; Callee frame size
250 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
251 : LDA 7, 200(0) ; Call divides
252 : LD 1, 3(5) ; Load callee result into R1
253 : LDC 2, 5(0) ; Callee frame size
254 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
255 : LDC 3, 6(0) ; Caller frame size
256 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
257 : ST 1, 4(5) ; Spill left operand at depth 0
258 : LD 1, 1(5) ; Load parameter 'i' into R1
259 : ST 1, 5(5) ; Spill left operand at depth 1
260 : LDC 1, 1(0) ; Load integer-literal into R1
261 : LD 2, 5(5) ; Restore left operand from depth 1
262 : ADD 1, 2, 1 ; R1 = left + right
263 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
264 : ST 1, 1(2) ; Store argument 0 in callee
265 : LD 1, 2(5) ; Load parameter 'n' into R1
266 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
267 : ST 1, 2(2) ; Store argument 1 in callee
268 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
269 : LDA 6, 275(0) ; Return address
270 : ST 6, 0(2) ; Store return in callee frame
271 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
272 : LDC 3, 6(0) ; Callee frame size
273 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
274 : LDA 7, 229(0) ; Call hasDivisorFrom
275 : LD 1, 3(5) ; Load callee result into R1
276 : LDC 2, 6(0) ; Callee frame size
277 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
278 : LDC 3, 6(0) ; Caller frame size
279 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
280 : LD 2, 4(5) ; Restore left operand from depth 0
281 : ADD 1, 2, 1 ; R1 = left OR right
282 : LDA 7, 284(0) ; Skip ELSE block
283 : LDC 1, 0(0) ; Load boolean-literal into R1
284 : ST 1, 3(5) ; Store function result into frame return slot
285 : LD 6, 0(5) ; Load return address
286 : LDA 7, 0(6) ; Return to caller
287 : LDC 1, 2(0) ; Load integer-literal into R1
288 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
289 : ST 1, 1(2) ; Store argument 0 in callee
290 : LD 1, 1(5) ; Load parameter 'n' into R1
291 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
292 : ST 1, 2(2) ; Store argument 1 in callee
293 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
294 : LDA 6, 300(0) ; Return address
295 : ST 6, 0(2) ; Store return in callee frame
296 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
297 : LDC 3, 6(0) ; Callee frame size
298 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
299 : LDA 7, 229(0) ; Call hasDivisorFrom
300 : LD 1, 3(5) ; Load callee result into R1
301 : LDC 2, 6(0) ; Callee frame size
302 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
303 : LDC 3, 3(0) ; Caller frame size
304 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
305 : LDC 2, 1(0) ; Load 1 into R2
306 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
307 : ST 1, 2(5) ; Store function result into frame return slot
308 : LD 6, 0(5) ; Load return address
309 : LDA 7, 0(6) ; Return to caller
310 : LD 1, 1(5) ; Load parameter 'n' into R1
311 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
312 : ST 1, 1(2) ; Store argument 0 in callee
313 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
314 : LDA 6, 320(0) ; Return address
315 : ST 6, 0(2) ; Store return in callee frame
316 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
317 : LDC 3, 4(0) ; Callee frame size
318 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
319 : LDA 7, 406(0) ; Call emirp
320 : LD 1, 2(5) ; Load callee result into R1
321 : LDC 2, 4(0) ; Callee frame size
322 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
323 : LDC 3, 3(0) ; Caller frame size
324 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
325 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
326 : LDA 6, 332(0) ; Return address
327 : ST 6, 0(2) ; Store return address in callee frame
328 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
329 : LDC 3, 3(0) ; Callee frame size
330 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
331 : LDA 7, 12(0) ; Call built-in print
332 : LDC 2, 3(0) ; Callee frame size
333 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
334 : LDC 3, 3(0) ; Caller frame size
335 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
336 : LD 1, 1(5) ; Load parameter 'n' into R1
337 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
338 : ST 1, 1(2) ; Store argument 0 in callee
339 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
340 : LDA 6, 346(0) ; Return address
341 : ST 6, 0(2) ; Store return in callee frame
342 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
343 : LDC 3, 5(0) ; Callee frame size
344 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
345 : LDA 7, 354(0) ; Call snowball
346 : LD 1, 2(5) ; Load callee result into R1
347 : LDC 2, 5(0) ; Callee frame size
348 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
349 : LDC 3, 3(0) ; Caller frame size
350 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
351 : ST 1, 2(5) ; Store function result into frame return slot
352 : LD 6, 0(5) ; Load return address
353 : LDA 7, 0(6) ; Return to caller
354 : LD 1, 1(5) ; Load parameter 'n' into R1
355 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
356 : ST 1, 1(2) ; Store argument 0 in callee
357 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
358 : LDA 6, 364(0) ; Return address
359 : ST 6, 0(2) ; Store return in callee frame
360 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
361 : LDC 3, 3(0) ; Callee frame size
362 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
363 : LDA 7, 287(0) ; Call isPrime
364 : LD 1, 2(5) ; Load callee result into R1
365 : LDC 2, 3(0) ; Callee frame size
366 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
367 : LDC 3, 5(0) ; Caller frame size
368 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
369 : ST 1, 3(5) ; Spill left operand at depth 0
370 : LD 1, 1(5) ; Load parameter 'n' into R1
371 : ST 1, 4(5) ; Spill left operand at depth 1
372 : LDC 1, 10(0) ; Load integer-literal into R1
373 : LD 2, 4(5) ; Restore left operand from depth 1
374 : SUB 1, 2, 1 ; left - right for less-than check
375 : JLT 1, 2(7) ; If R1 < 0, jump to true
376 : LDC 1, 0(0) ; false
377 : LDA 7, 1(7) ; skip setting true
378 : LDC 1, 1(0) ; true
379 : JEQ 1, 382(0) ; If condition is false, jump to ELSE
380 : LDC 1, 1(0) ; Load boolean-literal into R1
381 : LDA 7, 401(0) ; Skip ELSE block
382 : LD 1, 1(5) ; Load parameter 'n' into R1
383 : ST 1, 4(5) ; Spill left operand at depth 1
384 : LDC 1, 10(0) ; Load integer-literal into R1
385 : LD 2, 4(5) ; Restore left operand from depth 1
386 : DIV 1, 2, 1 ; R1 = left / right
387 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
388 : ST 1, 1(2) ; Store argument 0 in callee
389 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
390 : LDA 6, 396(0) ; Return address
391 : ST 6, 0(2) ; Store return in callee frame
392 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
393 : LDC 3, 3(0) ; Callee frame size
394 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
395 : LDA 7, 287(0) ; Call isPrime
396 : LD 1, 2(5) ; Load callee result into R1
397 : LDC 2, 3(0) ; Callee frame size
398 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
399 : LDC 3, 5(0) ; Caller frame size
400 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
401 : LD 2, 3(5) ; Restore left operand from depth 0
402 : MUL 1, 2, 1 ; R1 = left AND right
403 : ST 1, 2(5) ; Store function result into frame return slot
404 : LD 6, 0(5) ; Load return address
405 : LDA 7, 0(6) ; Return to caller
406 : LD 1, 1(5) ; Load parameter 'n' into R1
407 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
408 : ST 1, 1(2) ; Store argument 0 in callee
409 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
410 : LDA 6, 416(0) ; Return address
411 : ST 6, 0(2) ; Store return in callee frame
412 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
413 : LDC 3, 3(0) ; Callee frame size
414 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
415 : LDA 7, 287(0) ; Call isPrime
416 : LD 1, 2(5) ; Load callee result into R1
417 : LDC 2, 3(0) ; Callee frame size
418 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
419 : LDC 3, 4(0) ; Caller frame size
420 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
421 : ST 1, 3(5) ; Spill left operand at depth 0
422 : LD 1, 1(5) ; Load parameter 'n' into R1
423 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
424 : ST 1, 1(2) ; Store argument 0 in callee
425 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
426 : LDA 6, 432(0) ; Return address
427 : ST 6, 0(2) ; Store return in callee frame
428 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
429 : LDC 3, 3(0) ; Callee frame size
430 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
431 : LDA 7, 179(0) ; Call reverse
432 : LD 1, 2(5) ; Load callee result into R1
433 : LDC 2, 3(0) ; Callee frame size
434 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
435 : LDC 3, 4(0) ; Caller frame size
436 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
437 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
438 : ST 1, 1(2) ; Store argument 0 in callee
439 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
440 : LDA 6, 446(0) ; Return address
441 : ST 6, 0(2) ; Store return in callee frame
442 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
443 : LDC 3, 3(0) ; Callee frame size
444 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
445 : LDA 7, 287(0) ; Call isPrime
446 : LD 1, 2(5) ; Load callee result into R1
447 : LDC 2, 3(0) ; Callee frame size
448 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
449 : LDC 3, 4(0) ; Caller frame size
450 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
451 : LD 2, 3(5) ; Restore left operand from depth 0
452 : MUL 1, 2, 1 ; R1 = left AND right
453 : ST 1, 2(5) ; Store function result into frame return slot
454 : LD 6, 0(5) ; Load return address
455 : LDA 7, 0(6) ; Return to caller
