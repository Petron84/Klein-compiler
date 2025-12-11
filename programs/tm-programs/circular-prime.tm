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
13 : LD 1, 1(5) ; Load parameter 'x' into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : LDA 6, 23(0) ; Return address
18 : ST 6, 0(2) ; Store return in callee frame
19 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
20 : LDC 3, 4(0) ; Callee frame size
21 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
22 : LDA 7, 617(0) ; Call circularPrimesTo
23 : LD 1, 2(5) ; Load callee result into R1
24 : LDC 2, 4(0) ; Callee frame size
25 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
26 : LDC 3, 3(0) ; Caller frame size
27 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
28 : ST 1, 2(5) ; Store result into caller’s frame
29 : LD 1, 2(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 1(5) ; Load parameter 'num' into R1
33 : ST 1, 4(5) ; Spill left operand at depth 0
34 : LD 1, 2(5) ; Load parameter 'den' into R1
35 : LD 2, 4(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for less-than check
37 : JLT 1, 2(7) ; If R1 < 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : LDA 7, 66(0) ; Skip ELSE block
44 : LD 1, 1(5) ; Load parameter 'num' into R1
45 : ST 1, 4(5) ; Spill left operand at depth 0
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; R1 = left - right
49 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
50 : ST 1, 1(2) ; Store argument 0 in callee
51 : LD 1, 2(5) ; Load parameter 'den' into R1
52 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
53 : ST 1, 2(2) ; Store argument 1 in callee
54 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
55 : LDA 6, 61(0) ; Return address
56 : ST 6, 0(2) ; Store return in callee frame
57 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
58 : LDC 3, 5(0) ; Callee frame size
59 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
60 : LDA 7, 32(0) ; Call mod
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 5(0) ; Callee frame size
63 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
64 : LDC 3, 5(0) ; Caller frame size
65 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
66 : ST 1, 3(5) ; Store function result into frame return slot
67 : LD 6, 0(5) ; Load return address
68 : LDA 7, 0(6) ; Return to caller
69 : LD 1, 2(5) ; Load parameter 'b' into R1
70 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
71 : ST 1, 1(2) ; Store argument 0 in callee
72 : LD 1, 1(5) ; Load parameter 'a' into R1
73 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
74 : ST 1, 2(2) ; Store argument 1 in callee
75 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
76 : LDA 6, 82(0) ; Return address
77 : ST 6, 0(2) ; Store return in callee frame
78 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
79 : LDC 3, 5(0) ; Callee frame size
80 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
81 : LDA 7, 32(0) ; Call mod
82 : LD 1, 3(5) ; Load callee result into R1
83 : LDC 2, 5(0) ; Callee frame size
84 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
85 : LDC 3, 5(0) ; Caller frame size
86 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
87 : ST 1, 4(5) ; Spill left operand at depth 0
88 : LDC 1, 0(0) ; Load integer-literal into R1
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for equality check
91 : JEQ 1, 2(7) ; If R1 == 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : ST 1, 3(5) ; Store function result into frame return slot
96 : LD 6, 0(5) ; Load return address
97 : LDA 7, 0(6) ; Return to caller
98 : LD 1, 1(5) ; Load parameter 'i' into R1
99 : ST 1, 4(5) ; Spill left operand at depth 0
100 : LD 1, 2(5) ; Load parameter 'n' into R1
101 : LD 2, 4(5) ; Restore left operand from depth 0
102 : SUB 1, 2, 1 ; left - right for less-than check
103 : JLT 1, 2(7) ; If R1 < 0, jump to true
104 : LDC 1, 0(0) ; false
105 : LDA 7, 1(7) ; skip setting true
106 : LDC 1, 1(0) ; true
107 : JEQ 1, 152(0) ; If condition is false, jump to ELSE
108 : LD 1, 1(5) ; Load parameter 'i' into R1
109 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
110 : ST 1, 1(2) ; Store argument 0 in callee
111 : LD 1, 2(5) ; Load parameter 'n' into R1
112 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
113 : ST 1, 2(2) ; Store argument 1 in callee
114 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
115 : LDA 6, 121(0) ; Return address
116 : ST 6, 0(2) ; Store return in callee frame
117 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
118 : LDC 3, 5(0) ; Callee frame size
119 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
120 : LDA 7, 69(0) ; Call divides
121 : LD 1, 3(5) ; Load callee result into R1
122 : LDC 2, 5(0) ; Callee frame size
123 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
124 : LDC 3, 6(0) ; Caller frame size
125 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
126 : ST 1, 4(5) ; Spill left operand at depth 0
127 : LD 1, 1(5) ; Load parameter 'i' into R1
128 : ST 1, 5(5) ; Spill left operand at depth 1
129 : LDC 1, 1(0) ; Load integer-literal into R1
130 : LD 2, 5(5) ; Restore left operand from depth 1
131 : ADD 1, 2, 1 ; R1 = left + right
132 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
133 : ST 1, 1(2) ; Store argument 0 in callee
134 : LD 1, 2(5) ; Load parameter 'n' into R1
135 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
136 : ST 1, 2(2) ; Store argument 1 in callee
137 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
138 : LDA 6, 144(0) ; Return address
139 : ST 6, 0(2) ; Store return in callee frame
140 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
141 : LDC 3, 6(0) ; Callee frame size
142 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
143 : LDA 7, 98(0) ; Call hasDivisorFrom
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 6(0) ; Callee frame size
146 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
147 : LDC 3, 6(0) ; Caller frame size
148 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
149 : LD 2, 4(5) ; Restore left operand from depth 0
150 : ADD 1, 2, 1 ; R1 = left OR right
151 : LDA 7, 153(0) ; Skip ELSE block
152 : LDC 1, 0(0) ; Load boolean-literal into R1
153 : ST 1, 3(5) ; Store function result into frame return slot
154 : LD 6, 0(5) ; Load return address
155 : LDA 7, 0(6) ; Return to caller
156 : LDC 1, 2(0) ; Load integer-literal into R1
157 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
158 : ST 1, 1(2) ; Store argument 0 in callee
159 : LD 1, 1(5) ; Load parameter 'n' into R1
160 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
161 : ST 1, 2(2) ; Store argument 1 in callee
162 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
163 : LDA 6, 169(0) ; Return address
164 : ST 6, 0(2) ; Store return in callee frame
165 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
166 : LDC 3, 6(0) ; Callee frame size
167 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
168 : LDA 7, 98(0) ; Call hasDivisorFrom
169 : LD 1, 3(5) ; Load callee result into R1
170 : LDC 2, 6(0) ; Callee frame size
171 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
172 : LDC 3, 3(0) ; Caller frame size
173 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
174 : LDC 2, 1(0) ; Load 1 into R2
175 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
176 : ST 1, 2(5) ; Store function result into frame return slot
177 : LD 6, 0(5) ; Load return address
178 : LDA 7, 0(6) ; Return to caller
179 : LD 1, 1(5) ; Load parameter 'x' into R1
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LDC 1, 10(0) ; Load integer-literal into R1
182 : LD 2, 4(5) ; Restore left operand from depth 0
183 : DIV 1, 2, 1 ; R1 = left / right
184 : ST 1, 4(5) ; Spill left operand at depth 0
185 : LDC 1, 0(0) ; Load integer-literal into R1
186 : LD 2, 4(5) ; Restore left operand from depth 0
187 : SUB 1, 2, 1 ; left - right for equality check
188 : JEQ 1, 2(7) ; If R1 == 0, jump to true
189 : LDC 1, 0(0) ; false
190 : LDA 7, 1(7) ; skip setting true
191 : LDC 1, 1(0) ; true
192 : JEQ 1, 195(0) ; If condition is false, jump to ELSE
193 : LD 1, 2(5) ; Load parameter 'y' into R1
194 : LDA 7, 221(0) ; Skip ELSE block
195 : LD 1, 1(5) ; Load parameter 'x' into R1
196 : ST 1, 4(5) ; Spill left operand at depth 0
197 : LDC 1, 10(0) ; Load integer-literal into R1
198 : LD 2, 4(5) ; Restore left operand from depth 0
199 : DIV 1, 2, 1 ; R1 = left / right
200 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
201 : ST 1, 1(2) ; Store argument 0 in callee
202 : LD 1, 2(5) ; Load parameter 'y' into R1
203 : ST 1, 4(5) ; Spill left operand at depth 0
204 : LDC 1, 1(0) ; Load integer-literal into R1
205 : LD 2, 4(5) ; Restore left operand from depth 0
206 : ADD 1, 2, 1 ; R1 = left + right
207 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
208 : ST 1, 2(2) ; Store argument 1 in callee
209 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
210 : LDA 6, 216(0) ; Return address
211 : ST 6, 0(2) ; Store return in callee frame
212 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
213 : LDC 3, 5(0) ; Callee frame size
214 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
215 : LDA 7, 179(0) ; Call log10Helper
216 : LD 1, 3(5) ; Load callee result into R1
217 : LDC 2, 5(0) ; Callee frame size
218 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
219 : LDC 3, 5(0) ; Caller frame size
220 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
221 : ST 1, 3(5) ; Store function result into frame return slot
222 : LD 6, 0(5) ; Load return address
223 : LDA 7, 0(6) ; Return to caller
224 : LD 1, 1(5) ; Load parameter 'x' into R1
225 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
226 : ST 1, 1(2) ; Store argument 0 in callee
227 : LDC 1, 0(0) ; Load integer-literal into R1
228 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
229 : ST 1, 2(2) ; Store argument 1 in callee
230 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
231 : LDA 6, 237(0) ; Return address
232 : ST 6, 0(2) ; Store return in callee frame
233 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
234 : LDC 3, 5(0) ; Callee frame size
235 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
236 : LDA 7, 179(0) ; Call log10Helper
237 : LD 1, 3(5) ; Load callee result into R1
238 : LDC 2, 5(0) ; Callee frame size
239 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
240 : LDC 3, 3(0) ; Caller frame size
241 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
242 : ST 1, 2(5) ; Store function result into frame return slot
243 : LD 6, 0(5) ; Load return address
244 : LDA 7, 0(6) ; Return to caller
245 : LD 1, 2(5) ; Load parameter 'power' into R1
246 : ST 1, 5(5) ; Spill left operand at depth 0
247 : LDC 1, 0(0) ; Load integer-literal into R1
248 : LD 2, 5(5) ; Restore left operand from depth 0
249 : SUB 1, 2, 1 ; left - right for equality check
250 : JEQ 1, 2(7) ; If R1 == 0, jump to true
251 : LDC 1, 0(0) ; false
252 : LDA 7, 1(7) ; skip setting true
253 : LDC 1, 1(0) ; true
254 : JEQ 1, 257(0) ; If condition is false, jump to ELSE
255 : LDC 1, 1(0) ; Load integer-literal into R1
256 : LDA 7, 298(0) ; Skip ELSE block
257 : LD 1, 2(5) ; Load parameter 'power' into R1
258 : ST 1, 5(5) ; Spill left operand at depth 0
259 : LDC 1, 1(0) ; Load integer-literal into R1
260 : LD 2, 5(5) ; Restore left operand from depth 0
261 : SUB 1, 2, 1 ; left - right for equality check
262 : JEQ 1, 2(7) ; If R1 == 0, jump to true
263 : LDC 1, 0(0) ; false
264 : LDA 7, 1(7) ; skip setting true
265 : LDC 1, 1(0) ; true
266 : JEQ 1, 269(0) ; If condition is false, jump to ELSE
267 : LD 1, 3(5) ; Load parameter 'total' into R1
268 : LDA 7, 298(0) ; Skip ELSE block
269 : LD 1, 1(5) ; Load parameter 'base' into R1
270 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
271 : ST 1, 1(2) ; Store argument 0 in callee
272 : LD 1, 2(5) ; Load parameter 'power' into R1
273 : ST 1, 5(5) ; Spill left operand at depth 0
274 : LDC 1, 1(0) ; Load integer-literal into R1
275 : LD 2, 5(5) ; Restore left operand from depth 0
276 : SUB 1, 2, 1 ; R1 = left - right
277 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
278 : ST 1, 2(2) ; Store argument 1 in callee
279 : LD 1, 1(5) ; Load parameter 'base' into R1
280 : ST 1, 5(5) ; Spill left operand at depth 0
281 : LD 1, 3(5) ; Load parameter 'total' into R1
282 : LD 2, 5(5) ; Restore left operand from depth 0
283 : MUL 1, 2, 1 ; R1 = left * right
284 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
285 : ST 1, 3(2) ; Store argument 2 in callee
286 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
287 : LDA 6, 293(0) ; Return address
288 : ST 6, 0(2) ; Store return in callee frame
289 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
290 : LDC 3, 6(0) ; Callee frame size
291 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
292 : LDA 7, 245(0) ; Call powHelper
293 : LD 1, 4(5) ; Load callee result into R1
294 : LDC 2, 6(0) ; Callee frame size
295 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
296 : LDC 3, 6(0) ; Caller frame size
297 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
298 : ST 1, 4(5) ; Store function result into frame return slot
299 : LD 6, 0(5) ; Load return address
300 : LDA 7, 0(6) ; Return to caller
301 : LD 1, 1(5) ; Load parameter 'x' into R1
302 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
303 : ST 1, 1(2) ; Store argument 0 in callee
304 : LD 1, 2(5) ; Load parameter 'y' into R1
305 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
306 : ST 1, 2(2) ; Store argument 1 in callee
307 : LD 1, 1(5) ; Load parameter 'x' into R1
308 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
309 : ST 1, 3(2) ; Store argument 2 in callee
310 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
311 : LDA 6, 317(0) ; Return address
312 : ST 6, 0(2) ; Store return in callee frame
313 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
314 : LDC 3, 6(0) ; Callee frame size
315 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
316 : LDA 7, 245(0) ; Call powHelper
317 : LD 1, 4(5) ; Load callee result into R1
318 : LDC 2, 6(0) ; Callee frame size
319 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
320 : LDC 3, 4(0) ; Caller frame size
321 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
322 : ST 1, 3(5) ; Store function result into frame return slot
323 : LD 6, 0(5) ; Load return address
324 : LDA 7, 0(6) ; Return to caller
325 : LD 1, 1(5) ; Load parameter 'x' into R1
326 : ST 1, 3(5) ; Spill left operand at depth 0
327 : LDC 1, 10(0) ; Load integer-literal into R1
328 : LD 2, 3(5) ; Restore left operand from depth 0
329 : DIV 1, 2, 1 ; R1 = left / right
330 : ST 1, 3(5) ; Spill left operand at depth 0
331 : LD 1, 1(5) ; Load parameter 'x' into R1
332 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
333 : ST 1, 1(2) ; Store argument 0 in callee
334 : LDC 1, 10(0) ; Load integer-literal into R1
335 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
336 : ST 1, 2(2) ; Store argument 1 in callee
337 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
338 : LDA 6, 344(0) ; Return address
339 : ST 6, 0(2) ; Store return in callee frame
340 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
341 : LDC 3, 5(0) ; Callee frame size
342 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
343 : LDA 7, 32(0) ; Call mod
344 : LD 1, 3(5) ; Load callee result into R1
345 : LDC 2, 5(0) ; Callee frame size
346 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
347 : LDC 3, 5(0) ; Caller frame size
348 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
349 : ST 1, 4(5) ; Spill left operand at depth 1
350 : LDC 1, 10(0) ; Load integer-literal into R1
351 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
352 : ST 1, 1(2) ; Store argument 0 in callee
353 : LD 1, 1(5) ; Load parameter 'x' into R1
354 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
355 : ST 1, 1(2) ; Store argument 0 in callee
356 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
357 : LDA 6, 363(0) ; Return address
358 : ST 6, 0(2) ; Store return in callee frame
359 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
360 : LDC 3, 3(0) ; Callee frame size
361 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
362 : LDA 7, 224(0) ; Call log10
363 : LD 1, 2(5) ; Load callee result into R1
364 : LDC 2, 3(0) ; Callee frame size
365 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
366 : LDC 3, 5(0) ; Caller frame size
367 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
368 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
369 : ST 1, 2(2) ; Store argument 1 in callee
370 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
371 : LDA 6, 377(0) ; Return address
372 : ST 6, 0(2) ; Store return in callee frame
373 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
374 : LDC 3, 4(0) ; Callee frame size
375 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
376 : LDA 7, 301(0) ; Call pow
377 : LD 1, 3(5) ; Load callee result into R1
378 : LDC 2, 4(0) ; Callee frame size
379 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
380 : LDC 3, 5(0) ; Caller frame size
381 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
382 : LD 2, 4(5) ; Restore left operand from depth 1
383 : MUL 1, 2, 1 ; R1 = left * right
384 : LD 2, 3(5) ; Restore left operand from depth 0
385 : ADD 1, 2, 1 ; R1 = left + right
386 : ST 1, 2(5) ; Store function result into frame return slot
387 : LD 6, 0(5) ; Load return address
388 : LDA 7, 0(6) ; Return to caller
389 : LD 1, 1(5) ; Load parameter 'x' into R1
390 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
391 : LDA 6, 397(0) ; Return address
392 : ST 6, 0(2) ; Store return address in callee frame
393 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
394 : LDC 3, 3(0) ; Callee frame size
395 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
396 : LDA 7, 10(0) ; Call built-in print
397 : LDC 2, 3(0) ; Callee frame size
398 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
399 : LDC 3, 3(0) ; Caller frame size
400 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
401 : LDC 1, 1(0) ; Load boolean-literal into R1
402 : ST 1, 2(5) ; Store function result into frame return slot
403 : LD 6, 0(5) ; Load return address
404 : LDA 7, 0(6) ; Return to caller
405 : LD 1, 2(5) ; Load parameter 'turns' into R1
406 : ST 1, 4(5) ; Spill left operand at depth 0
407 : LDC 1, 0(0) ; Load integer-literal into R1
408 : LD 2, 4(5) ; Restore left operand from depth 0
409 : SUB 1, 2, 1 ; left - right for equality check
410 : JEQ 1, 2(7) ; If R1 == 0, jump to true
411 : LDC 1, 0(0) ; false
412 : LDA 7, 1(7) ; skip setting true
413 : LDC 1, 1(0) ; true
414 : JEQ 1, 417(0) ; If condition is false, jump to ELSE
415 : LDC 1, 1(0) ; Load boolean-literal into R1
416 : LDA 7, 471(0) ; Skip ELSE block
417 : LD 1, 1(5) ; Load parameter 'x' into R1
418 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
419 : ST 1, 1(2) ; Store argument 0 in callee
420 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
421 : LDA 6, 427(0) ; Return address
422 : ST 6, 0(2) ; Store return in callee frame
423 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
424 : LDC 3, 3(0) ; Callee frame size
425 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
426 : LDA 7, 156(0) ; Call isPrime
427 : LD 1, 2(5) ; Load callee result into R1
428 : LDC 2, 3(0) ; Callee frame size
429 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
430 : LDC 3, 6(0) ; Caller frame size
431 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
432 : ST 1, 4(5) ; Spill left operand at depth 0
433 : LD 1, 1(5) ; Load parameter 'x' into R1
434 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
435 : ST 1, 1(2) ; Store argument 0 in callee
436 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
437 : LDA 6, 443(0) ; Return address
438 : ST 6, 0(2) ; Store return in callee frame
439 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
440 : LDC 3, 5(0) ; Callee frame size
441 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
442 : LDA 7, 325(0) ; Call rotate
443 : LD 1, 2(5) ; Load callee result into R1
444 : LDC 2, 5(0) ; Callee frame size
445 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
446 : LDC 3, 6(0) ; Caller frame size
447 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
448 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
449 : ST 1, 1(2) ; Store argument 0 in callee
450 : LD 1, 2(5) ; Load parameter 'turns' into R1
451 : ST 1, 5(5) ; Spill left operand at depth 1
452 : LDC 1, 1(0) ; Load integer-literal into R1
453 : LD 2, 5(5) ; Restore left operand from depth 1
454 : SUB 1, 2, 1 ; R1 = left - right
455 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
456 : ST 1, 2(2) ; Store argument 1 in callee
457 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
458 : LDA 6, 464(0) ; Return address
459 : ST 6, 0(2) ; Store return in callee frame
460 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
461 : LDC 3, 6(0) ; Callee frame size
462 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
463 : LDA 7, 405(0) ; Call isCircularPrimeHelper
464 : LD 1, 3(5) ; Load callee result into R1
465 : LDC 2, 6(0) ; Callee frame size
466 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
467 : LDC 3, 6(0) ; Caller frame size
468 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
469 : LD 2, 4(5) ; Restore left operand from depth 0
470 : MUL 1, 2, 1 ; R1 = left AND right
471 : ST 1, 3(5) ; Store function result into frame return slot
472 : LD 6, 0(5) ; Load return address
473 : LDA 7, 0(6) ; Return to caller
474 : LD 1, 1(5) ; Load parameter 'x' into R1
475 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
476 : ST 1, 1(2) ; Store argument 0 in callee
477 : LD 1, 1(5) ; Load parameter 'x' into R1
478 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
479 : ST 1, 1(2) ; Store argument 0 in callee
480 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
481 : LDA 6, 487(0) ; Return address
482 : ST 6, 0(2) ; Store return in callee frame
483 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
484 : LDC 3, 3(0) ; Callee frame size
485 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
486 : LDA 7, 224(0) ; Call log10
487 : LD 1, 2(5) ; Load callee result into R1
488 : LDC 2, 3(0) ; Callee frame size
489 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
490 : LDC 3, 4(0) ; Caller frame size
491 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
492 : ST 1, 3(5) ; Spill left operand at depth 0
493 : LDC 1, 1(0) ; Load integer-literal into R1
494 : LD 2, 3(5) ; Restore left operand from depth 0
495 : ADD 1, 2, 1 ; R1 = left + right
496 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
497 : ST 1, 2(2) ; Store argument 1 in callee
498 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
499 : LDA 6, 505(0) ; Return address
500 : ST 6, 0(2) ; Store return in callee frame
501 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
502 : LDC 3, 6(0) ; Callee frame size
503 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
504 : LDA 7, 405(0) ; Call isCircularPrimeHelper
505 : LD 1, 3(5) ; Load callee result into R1
506 : LDC 2, 6(0) ; Callee frame size
507 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
508 : LDC 3, 4(0) ; Caller frame size
509 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
510 : JEQ 1, 527(0) ; If condition is false, jump to ELSE
511 : LD 1, 1(5) ; Load parameter 'x' into R1
512 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
513 : ST 1, 1(2) ; Store argument 0 in callee
514 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
515 : LDA 6, 521(0) ; Return address
516 : ST 6, 0(2) ; Store return in callee frame
517 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
518 : LDC 3, 3(0) ; Callee frame size
519 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
520 : LDA 7, 389(0) ; Call report
521 : LD 1, 2(5) ; Load callee result into R1
522 : LDC 2, 3(0) ; Callee frame size
523 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
524 : LDC 3, 4(0) ; Caller frame size
525 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
526 : LDA 7, 528(0) ; Skip ELSE block
527 : LDC 1, 0(0) ; Load boolean-literal into R1
528 : ST 1, 2(5) ; Store function result into frame return slot
529 : LD 6, 0(5) ; Load return address
530 : LDA 7, 0(6) ; Return to caller
531 : LD 1, 2(5) ; Load parameter 'x' into R1
532 : ST 1, 5(5) ; Spill left operand at depth 0
533 : LD 1, 1(5) ; Load parameter 'top' into R1
534 : LD 2, 5(5) ; Restore left operand from depth 0
535 : SUB 1, 2, 1 ; left - right for less-than check
536 : JLT 1, 2(7) ; If R1 < 0, jump to true
537 : LDC 1, 0(0) ; false
538 : LDA 7, 1(7) ; skip setting true
539 : LDC 1, 1(0) ; true
540 : JEQ 1, 613(0) ; If condition is false, jump to ELSE
541 : LD 1, 2(5) ; Load parameter 'x' into R1
542 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
543 : ST 1, 1(2) ; Store argument 0 in callee
544 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
545 : LDA 6, 551(0) ; Return address
546 : ST 6, 0(2) ; Store return in callee frame
547 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
548 : LDC 3, 4(0) ; Callee frame size
549 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
550 : LDA 7, 474(0) ; Call isCircularPrime
551 : LD 1, 2(5) ; Load callee result into R1
552 : LDC 2, 4(0) ; Callee frame size
553 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
554 : LDC 3, 6(0) ; Caller frame size
555 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
556 : JEQ 1, 587(0) ; If condition is false, jump to ELSE
557 : LD 1, 1(5) ; Load parameter 'top' into R1
558 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
559 : ST 1, 1(2) ; Store argument 0 in callee
560 : LD 1, 2(5) ; Load parameter 'x' into R1
561 : ST 1, 5(5) ; Spill left operand at depth 0
562 : LDC 1, 1(0) ; Load integer-literal into R1
563 : LD 2, 5(5) ; Restore left operand from depth 0
564 : ADD 1, 2, 1 ; R1 = left + right
565 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
566 : ST 1, 2(2) ; Store argument 1 in callee
567 : LD 1, 3(5) ; Load parameter 'count' into R1
568 : ST 1, 5(5) ; Spill left operand at depth 0
569 : LDC 1, 1(0) ; Load integer-literal into R1
570 : LD 2, 5(5) ; Restore left operand from depth 0
571 : ADD 1, 2, 1 ; R1 = left + right
572 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
573 : ST 1, 3(2) ; Store argument 2 in callee
574 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
575 : LDA 6, 581(0) ; Return address
576 : ST 6, 0(2) ; Store return in callee frame
577 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
578 : LDC 3, 6(0) ; Callee frame size
579 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
580 : LDA 7, 531(0) ; Call circularPrimesToHelper
581 : LD 1, 4(5) ; Load callee result into R1
582 : LDC 2, 6(0) ; Callee frame size
583 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
584 : LDC 3, 6(0) ; Caller frame size
585 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
586 : LDA 7, 612(0) ; Skip ELSE block
587 : LD 1, 1(5) ; Load parameter 'top' into R1
588 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
589 : ST 1, 1(2) ; Store argument 0 in callee
590 : LD 1, 2(5) ; Load parameter 'x' into R1
591 : ST 1, 5(5) ; Spill left operand at depth 0
592 : LDC 1, 1(0) ; Load integer-literal into R1
593 : LD 2, 5(5) ; Restore left operand from depth 0
594 : ADD 1, 2, 1 ; R1 = left + right
595 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
596 : ST 1, 2(2) ; Store argument 1 in callee
597 : LD 1, 3(5) ; Load parameter 'count' into R1
598 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
599 : ST 1, 3(2) ; Store argument 2 in callee
600 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
601 : LDA 6, 607(0) ; Return address
602 : ST 6, 0(2) ; Store return in callee frame
603 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
604 : LDC 3, 6(0) ; Callee frame size
605 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
606 : LDA 7, 531(0) ; Call circularPrimesToHelper
607 : LD 1, 4(5) ; Load callee result into R1
608 : LDC 2, 6(0) ; Callee frame size
609 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
610 : LDC 3, 6(0) ; Caller frame size
611 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
612 : LDA 7, 614(0) ; Skip ELSE block
613 : LD 1, 3(5) ; Load parameter 'count' into R1
614 : ST 1, 4(5) ; Store function result into frame return slot
615 : LD 6, 0(5) ; Load return address
616 : LDA 7, 0(6) ; Return to caller
617 : LD 1, 1(5) ; Load parameter 'x' into R1
618 : ST 1, 3(5) ; Spill left operand at depth 0
619 : LDC 1, 1(0) ; Load integer-literal into R1
620 : LD 2, 3(5) ; Restore left operand from depth 0
621 : ADD 1, 2, 1 ; R1 = left + right
622 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
623 : ST 1, 1(2) ; Store argument 0 in callee
624 : LDC 1, 2(0) ; Load integer-literal into R1
625 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
626 : ST 1, 2(2) ; Store argument 1 in callee
627 : LDC 1, 0(0) ; Load integer-literal into R1
628 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
629 : ST 1, 3(2) ; Store argument 2 in callee
630 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
631 : LDA 6, 637(0) ; Return address
632 : ST 6, 0(2) ; Store return in callee frame
633 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
634 : LDC 3, 6(0) ; Callee frame size
635 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
636 : LDA 7, 531(0) ; Call circularPrimesToHelper
637 : LD 1, 4(5) ; Load callee result into R1
638 : LDC 2, 6(0) ; Callee frame size
639 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
640 : LDC 3, 4(0) ; Caller frame size
641 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
642 : ST 1, 2(5) ; Store function result into frame return slot
643 : LD 6, 0(5) ; Load return address
644 : LDA 7, 0(6) ; Return to caller
