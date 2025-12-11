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
12 : LD 1, 1(5) ; Load parameter 'x' into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 4(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 4, 4(5) ; Callee base for call
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
21 : LDA 7, 606(0) ; Call circularPrimesTo
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 4(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : ST 1, 2(5) ; Store result into caller’s frame
26 : LD 1, 2(5) ; Load main return value into R1
27 : LD 6, 0(5) ; Load main return address
28 : LDA 7, 0(6) ; Return from main
29 : LD 1, 1(5) ; Load parameter 'num' into R1
30 : ST 1, 4(5) ; Spill left operand at depth 0
31 : LD 1, 2(5) ; Load parameter 'den' into R1
32 : LD 2, 4(5) ; Restore left operand from depth 0
33 : SUB 1, 2, 1 ; left - right for less-than check
34 : JLT 1, 2(7) ; If R1 < 0, jump to true
35 : LDC 1, 0(0) ; false
36 : LDA 7, 1(7) ; skip setting true
37 : LDC 1, 1(0) ; true
38 : JEQ 1, 41(0) ; If condition is false, jump to ELSE
39 : LD 1, 1(5) ; Load parameter 'num' into R1
40 : LDA 7, 63(0) ; Skip ELSE block
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : ST 1, 4(5) ; Spill left operand at depth 0
43 : LD 1, 2(5) ; Load parameter 'den' into R1
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
47 : LDA 4, 5(5) ; Callee base for arg copy
48 : LD 1, 4(5) ; Load staged arg 0 from caller temp
49 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
50 : LD 1, 2(5) ; Load parameter 'den' into R1
51 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
52 : LDA 4, 5(5) ; Callee base for arg copy
53 : LD 1, 4(5) ; Load staged arg 1 from caller temp
54 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
55 : LDA 4, 5(5) ; Callee base for call
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return in callee frame
58 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
59 : LDA 7, 29(0) ; Call mod
60 : LD 1, 3(5) ; Load callee result into R1
61 : LDC 2, 5(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop callee frame
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LD 1, 2(5) ; Load parameter 'b' into R1
67 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
68 : LDA 4, 5(5) ; Callee base for arg copy
69 : LD 1, 4(5) ; Load staged arg 0 from caller temp
70 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
73 : LDA 4, 5(5) ; Callee base for arg copy
74 : LD 1, 4(5) ; Load staged arg 1 from caller temp
75 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
76 : LDA 4, 5(5) ; Callee base for call
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return in callee frame
79 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
80 : LDA 7, 29(0) ; Call mod
81 : LD 1, 3(5) ; Load callee result into R1
82 : LDC 2, 5(0) ; Callee frame size
83 : SUB 5, 5, 2 ; Pop callee frame
84 : ST 1, 4(5) ; Spill left operand at depth 0
85 : LDC 1, 0(0) ; Load integer-literal into R1
86 : LD 2, 4(5) ; Restore left operand from depth 0
87 : SUB 1, 2, 1 ; left - right for equality check
88 : JEQ 1, 2(7) ; If R1 == 0, jump to true
89 : LDC 1, 0(0) ; false
90 : LDA 7, 1(7) ; skip setting true
91 : LDC 1, 1(0) ; true
92 : ST 1, 3(5) ; Store function result into frame return slot
93 : LD 6, 0(5) ; Load return address
94 : LDA 7, 0(6) ; Return to caller
95 : LD 1, 1(5) ; Load parameter 'i' into R1
96 : ST 1, 4(5) ; Spill left operand at depth 0
97 : LD 1, 2(5) ; Load parameter 'n' into R1
98 : LD 2, 4(5) ; Restore left operand from depth 0
99 : SUB 1, 2, 1 ; left - right for less-than check
100 : JLT 1, 2(7) ; If R1 < 0, jump to true
101 : LDC 1, 0(0) ; false
102 : LDA 7, 1(7) ; skip setting true
103 : LDC 1, 1(0) ; true
104 : JEQ 1, 149(0) ; If condition is false, jump to ELSE
105 : LD 1, 1(5) ; Load parameter 'i' into R1
106 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
107 : LDA 4, 5(5) ; Callee base for arg copy
108 : LD 1, 4(5) ; Load staged arg 0 from caller temp
109 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
110 : LD 1, 2(5) ; Load parameter 'n' into R1
111 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
112 : LDA 4, 5(5) ; Callee base for arg copy
113 : LD 1, 4(5) ; Load staged arg 1 from caller temp
114 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
115 : LDA 4, 5(5) ; Callee base for call
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return in callee frame
118 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
119 : LDA 7, 66(0) ; Call divides
120 : LD 1, 3(5) ; Load callee result into R1
121 : LDC 2, 5(0) ; Callee frame size
122 : SUB 5, 5, 2 ; Pop callee frame
123 : ST 1, 4(5) ; Spill left operand at depth 0
124 : LD 1, 1(5) ; Load parameter 'i' into R1
125 : ST 1, 5(5) ; Spill left operand at depth 1
126 : LDC 1, 1(0) ; Load integer-literal into R1
127 : LD 2, 5(5) ; Restore left operand from depth 1
128 : ADD 1, 2, 1 ; R1 = left + right
129 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
130 : LDA 4, 6(5) ; Callee base for arg copy
131 : LD 1, 4(5) ; Load staged arg 0 from caller temp
132 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
133 : LD 1, 2(5) ; Load parameter 'n' into R1
134 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
135 : LDA 4, 6(5) ; Callee base for arg copy
136 : LD 1, 4(5) ; Load staged arg 1 from caller temp
137 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
138 : LDA 4, 6(5) ; Callee base for call
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 95(0) ; Call hasDivisorFrom
143 : LD 1, 3(5) ; Load callee result into R1
144 : LDC 2, 6(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : LD 2, 4(5) ; Restore left operand from depth 0
147 : ADD 1, 2, 1 ; R1 = left OR right
148 : LDA 7, 150(0) ; Skip ELSE block
149 : LDC 1, 0(0) ; Load boolean-literal into R1
150 : ST 1, 3(5) ; Store function result into frame return slot
151 : LD 6, 0(5) ; Load return address
152 : LDA 7, 0(6) ; Return to caller
153 : LDC 1, 2(0) ; Load integer-literal into R1
154 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
155 : LDA 4, 6(5) ; Callee base for arg copy
156 : LD 1, 3(5) ; Load staged arg 0 from caller temp
157 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
158 : LD 1, 1(5) ; Load parameter 'n' into R1
159 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
160 : LDA 4, 6(5) ; Callee base for arg copy
161 : LD 1, 3(5) ; Load staged arg 1 from caller temp
162 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
163 : LDA 4, 6(5) ; Callee base for call
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
167 : LDA 7, 95(0) ; Call hasDivisorFrom
168 : LD 1, 3(5) ; Load callee result into R1
169 : LDC 2, 6(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop callee frame
171 : LDC 2, 1(0) ; Load 1 into R2
172 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
173 : ST 1, 2(5) ; Store function result into frame return slot
174 : LD 6, 0(5) ; Load return address
175 : LDA 7, 0(6) ; Return to caller
176 : LD 1, 1(5) ; Load parameter 'x' into R1
177 : ST 1, 4(5) ; Spill left operand at depth 0
178 : LDC 1, 10(0) ; Load integer-literal into R1
179 : LD 2, 4(5) ; Restore left operand from depth 0
180 : DIV 1, 2, 1 ; R1 = left / right
181 : ST 1, 4(5) ; Spill left operand at depth 0
182 : LDC 1, 0(0) ; Load integer-literal into R1
183 : LD 2, 4(5) ; Restore left operand from depth 0
184 : SUB 1, 2, 1 ; left - right for equality check
185 : JEQ 1, 2(7) ; If R1 == 0, jump to true
186 : LDC 1, 0(0) ; false
187 : LDA 7, 1(7) ; skip setting true
188 : LDC 1, 1(0) ; true
189 : JEQ 1, 192(0) ; If condition is false, jump to ELSE
190 : LD 1, 2(5) ; Load parameter 'y' into R1
191 : LDA 7, 218(0) ; Skip ELSE block
192 : LD 1, 1(5) ; Load parameter 'x' into R1
193 : ST 1, 4(5) ; Spill left operand at depth 0
194 : LDC 1, 10(0) ; Load integer-literal into R1
195 : LD 2, 4(5) ; Restore left operand from depth 0
196 : DIV 1, 2, 1 ; R1 = left / right
197 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
198 : LDA 4, 5(5) ; Callee base for arg copy
199 : LD 1, 4(5) ; Load staged arg 0 from caller temp
200 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
201 : LD 1, 2(5) ; Load parameter 'y' into R1
202 : ST 1, 4(5) ; Spill left operand at depth 0
203 : LDC 1, 1(0) ; Load integer-literal into R1
204 : LD 2, 4(5) ; Restore left operand from depth 0
205 : ADD 1, 2, 1 ; R1 = left + right
206 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
207 : LDA 4, 5(5) ; Callee base for arg copy
208 : LD 1, 4(5) ; Load staged arg 1 from caller temp
209 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
210 : LDA 4, 5(5) ; Callee base for call
211 : LDA 6, 215(0) ; Return address
212 : ST 6, 0(4) ; Store return in callee frame
213 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
214 : LDA 7, 176(0) ; Call log10Helper
215 : LD 1, 3(5) ; Load callee result into R1
216 : LDC 2, 5(0) ; Callee frame size
217 : SUB 5, 5, 2 ; Pop callee frame
218 : ST 1, 3(5) ; Store function result into frame return slot
219 : LD 6, 0(5) ; Load return address
220 : LDA 7, 0(6) ; Return to caller
221 : LD 1, 1(5) ; Load parameter 'x' into R1
222 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
223 : LDA 4, 5(5) ; Callee base for arg copy
224 : LD 1, 3(5) ; Load staged arg 0 from caller temp
225 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
226 : LDC 1, 0(0) ; Load integer-literal into R1
227 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
228 : LDA 4, 5(5) ; Callee base for arg copy
229 : LD 1, 3(5) ; Load staged arg 1 from caller temp
230 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
231 : LDA 4, 5(5) ; Callee base for call
232 : LDA 6, 236(0) ; Return address
233 : ST 6, 0(4) ; Store return in callee frame
234 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
235 : LDA 7, 176(0) ; Call log10Helper
236 : LD 1, 3(5) ; Load callee result into R1
237 : LDC 2, 5(0) ; Callee frame size
238 : SUB 5, 5, 2 ; Pop callee frame
239 : ST 1, 2(5) ; Store function result into frame return slot
240 : LD 6, 0(5) ; Load return address
241 : LDA 7, 0(6) ; Return to caller
242 : LD 1, 2(5) ; Load parameter 'power' into R1
243 : ST 1, 5(5) ; Spill left operand at depth 0
244 : LDC 1, 0(0) ; Load integer-literal into R1
245 : LD 2, 5(5) ; Restore left operand from depth 0
246 : SUB 1, 2, 1 ; left - right for equality check
247 : JEQ 1, 2(7) ; If R1 == 0, jump to true
248 : LDC 1, 0(0) ; false
249 : LDA 7, 1(7) ; skip setting true
250 : LDC 1, 1(0) ; true
251 : JEQ 1, 254(0) ; If condition is false, jump to ELSE
252 : LDC 1, 1(0) ; Load integer-literal into R1
253 : LDA 7, 297(0) ; Skip ELSE block
254 : LD 1, 2(5) ; Load parameter 'power' into R1
255 : ST 1, 5(5) ; Spill left operand at depth 0
256 : LDC 1, 1(0) ; Load integer-literal into R1
257 : LD 2, 5(5) ; Restore left operand from depth 0
258 : SUB 1, 2, 1 ; left - right for equality check
259 : JEQ 1, 2(7) ; If R1 == 0, jump to true
260 : LDC 1, 0(0) ; false
261 : LDA 7, 1(7) ; skip setting true
262 : LDC 1, 1(0) ; true
263 : JEQ 1, 266(0) ; If condition is false, jump to ELSE
264 : LD 1, 3(5) ; Load parameter 'total' into R1
265 : LDA 7, 297(0) ; Skip ELSE block
266 : LD 1, 1(5) ; Load parameter 'base' into R1
267 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
268 : LDA 4, 6(5) ; Callee base for arg copy
269 : LD 1, 5(5) ; Load staged arg 0 from caller temp
270 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
271 : LD 1, 2(5) ; Load parameter 'power' into R1
272 : ST 1, 5(5) ; Spill left operand at depth 0
273 : LDC 1, 1(0) ; Load integer-literal into R1
274 : LD 2, 5(5) ; Restore left operand from depth 0
275 : SUB 1, 2, 1 ; R1 = left - right
276 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
277 : LDA 4, 6(5) ; Callee base for arg copy
278 : LD 1, 5(5) ; Load staged arg 1 from caller temp
279 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
280 : LD 1, 1(5) ; Load parameter 'base' into R1
281 : ST 1, 5(5) ; Spill left operand at depth 0
282 : LD 1, 3(5) ; Load parameter 'total' into R1
283 : LD 2, 5(5) ; Restore left operand from depth 0
284 : MUL 1, 2, 1 ; R1 = left * right
285 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
286 : LDA 4, 6(5) ; Callee base for arg copy
287 : LD 1, 5(5) ; Load staged arg 2 from caller temp
288 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
289 : LDA 4, 6(5) ; Callee base for call
290 : LDA 6, 294(0) ; Return address
291 : ST 6, 0(4) ; Store return in callee frame
292 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
293 : LDA 7, 242(0) ; Call powHelper
294 : LD 1, 4(5) ; Load callee result into R1
295 : LDC 2, 6(0) ; Callee frame size
296 : SUB 5, 5, 2 ; Pop callee frame
297 : ST 1, 4(5) ; Store function result into frame return slot
298 : LD 6, 0(5) ; Load return address
299 : LDA 7, 0(6) ; Return to caller
300 : LD 1, 1(5) ; Load parameter 'x' into R1
301 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
302 : LDA 4, 6(5) ; Callee base for arg copy
303 : LD 1, 4(5) ; Load staged arg 0 from caller temp
304 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
305 : LD 1, 2(5) ; Load parameter 'y' into R1
306 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
307 : LDA 4, 6(5) ; Callee base for arg copy
308 : LD 1, 4(5) ; Load staged arg 1 from caller temp
309 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
310 : LD 1, 1(5) ; Load parameter 'x' into R1
311 : ST 1, 4(5) ; Stage arg 2 in caller temp (P+2)
312 : LDA 4, 6(5) ; Callee base for arg copy
313 : LD 1, 4(5) ; Load staged arg 2 from caller temp
314 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
315 : LDA 4, 6(5) ; Callee base for call
316 : LDA 6, 320(0) ; Return address
317 : ST 6, 0(4) ; Store return in callee frame
318 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
319 : LDA 7, 242(0) ; Call powHelper
320 : LD 1, 4(5) ; Load callee result into R1
321 : LDC 2, 6(0) ; Callee frame size
322 : SUB 5, 5, 2 ; Pop callee frame
323 : ST 1, 3(5) ; Store function result into frame return slot
324 : LD 6, 0(5) ; Load return address
325 : LDA 7, 0(6) ; Return to caller
326 : LD 1, 1(5) ; Load parameter 'x' into R1
327 : ST 1, 3(5) ; Spill left operand at depth 0
328 : LDC 1, 10(0) ; Load integer-literal into R1
329 : LD 2, 3(5) ; Restore left operand from depth 0
330 : DIV 1, 2, 1 ; R1 = left / right
331 : ST 1, 3(5) ; Spill left operand at depth 0
332 : LD 1, 1(5) ; Load parameter 'x' into R1
333 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
334 : LDA 4, 5(5) ; Callee base for arg copy
335 : LD 1, 3(5) ; Load staged arg 0 from caller temp
336 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
337 : LDC 1, 10(0) ; Load integer-literal into R1
338 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
339 : LDA 4, 5(5) ; Callee base for arg copy
340 : LD 1, 3(5) ; Load staged arg 1 from caller temp
341 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
342 : LDA 4, 5(5) ; Callee base for call
343 : LDA 6, 347(0) ; Return address
344 : ST 6, 0(4) ; Store return in callee frame
345 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
346 : LDA 7, 29(0) ; Call mod
347 : LD 1, 3(5) ; Load callee result into R1
348 : LDC 2, 5(0) ; Callee frame size
349 : SUB 5, 5, 2 ; Pop callee frame
350 : ST 1, 4(5) ; Spill left operand at depth 1
351 : LDC 1, 10(0) ; Load integer-literal into R1
352 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
353 : LDA 4, 4(5) ; Callee base for arg copy
354 : LD 1, 3(5) ; Load staged arg 0 from caller temp
355 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
356 : LD 1, 1(5) ; Load parameter 'x' into R1
357 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
358 : LDA 4, 3(5) ; Callee base for arg copy
359 : LD 1, 3(5) ; Load staged arg 0 from caller temp
360 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
361 : LDA 4, 3(5) ; Callee base for call
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return in callee frame
364 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
365 : LDA 7, 221(0) ; Call log10
366 : LD 1, 2(5) ; Load callee result into R1
367 : LDC 2, 3(0) ; Callee frame size
368 : SUB 5, 5, 2 ; Pop callee frame
369 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
370 : LDA 4, 4(5) ; Callee base for arg copy
371 : LD 1, 3(5) ; Load staged arg 1 from caller temp
372 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
373 : LDA 4, 4(5) ; Callee base for call
374 : LDA 6, 378(0) ; Return address
375 : ST 6, 0(4) ; Store return in callee frame
376 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
377 : LDA 7, 300(0) ; Call pow
378 : LD 1, 3(5) ; Load callee result into R1
379 : LDC 2, 4(0) ; Callee frame size
380 : SUB 5, 5, 2 ; Pop callee frame
381 : LD 2, 4(5) ; Restore left operand from depth 1
382 : MUL 1, 2, 1 ; R1 = left * right
383 : LD 2, 3(5) ; Restore left operand from depth 0
384 : ADD 1, 2, 1 ; R1 = left + right
385 : ST 1, 2(5) ; Store function result into frame return slot
386 : LD 6, 0(5) ; Load return address
387 : LDA 7, 0(6) ; Return to caller
388 : LD 1, 1(5) ; Load parameter 'x' into R1
389 : LDA 4, 3(5) ; Callee base for built-in print
390 : LDA 6, 394(0) ; Return address
391 : ST 6, 0(4) ; Store return address in callee frame
392 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
393 : LDA 7, 9(0) ; Call built-in print
394 : LDC 2, 3(0) ; Callee frame size (print)
395 : SUB 5, 5, 2 ; Pop back to caller
396 : LDC 1, 1(0) ; Load boolean-literal into R1
397 : ST 1, 2(5) ; Store function result into frame return slot
398 : LD 6, 0(5) ; Load return address
399 : LDA 7, 0(6) ; Return to caller
400 : LD 1, 2(5) ; Load parameter 'turns' into R1
401 : ST 1, 4(5) ; Spill left operand at depth 0
402 : LDC 1, 0(0) ; Load integer-literal into R1
403 : LD 2, 4(5) ; Restore left operand from depth 0
404 : SUB 1, 2, 1 ; left - right for equality check
405 : JEQ 1, 2(7) ; If R1 == 0, jump to true
406 : LDC 1, 0(0) ; false
407 : LDA 7, 1(7) ; skip setting true
408 : LDC 1, 1(0) ; true
409 : JEQ 1, 412(0) ; If condition is false, jump to ELSE
410 : LDC 1, 1(0) ; Load boolean-literal into R1
411 : LDA 7, 462(0) ; Skip ELSE block
412 : LD 1, 1(5) ; Load parameter 'x' into R1
413 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
414 : LDA 4, 3(5) ; Callee base for arg copy
415 : LD 1, 4(5) ; Load staged arg 0 from caller temp
416 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
417 : LDA 4, 3(5) ; Callee base for call
418 : LDA 6, 422(0) ; Return address
419 : ST 6, 0(4) ; Store return in callee frame
420 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
421 : LDA 7, 153(0) ; Call isPrime
422 : LD 1, 2(5) ; Load callee result into R1
423 : LDC 2, 3(0) ; Callee frame size
424 : SUB 5, 5, 2 ; Pop callee frame
425 : ST 1, 4(5) ; Spill left operand at depth 0
426 : LD 1, 1(5) ; Load parameter 'x' into R1
427 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
428 : LDA 4, 5(5) ; Callee base for arg copy
429 : LD 1, 4(5) ; Load staged arg 0 from caller temp
430 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
431 : LDA 4, 5(5) ; Callee base for call
432 : LDA 6, 436(0) ; Return address
433 : ST 6, 0(4) ; Store return in callee frame
434 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
435 : LDA 7, 326(0) ; Call rotate
436 : LD 1, 2(5) ; Load callee result into R1
437 : LDC 2, 5(0) ; Callee frame size
438 : SUB 5, 5, 2 ; Pop callee frame
439 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
440 : LDA 4, 6(5) ; Callee base for arg copy
441 : LD 1, 4(5) ; Load staged arg 0 from caller temp
442 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
443 : LD 1, 2(5) ; Load parameter 'turns' into R1
444 : ST 1, 5(5) ; Spill left operand at depth 1
445 : LDC 1, 1(0) ; Load integer-literal into R1
446 : LD 2, 5(5) ; Restore left operand from depth 1
447 : SUB 1, 2, 1 ; R1 = left - right
448 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
449 : LDA 4, 6(5) ; Callee base for arg copy
450 : LD 1, 4(5) ; Load staged arg 1 from caller temp
451 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
452 : LDA 4, 6(5) ; Callee base for call
453 : LDA 6, 457(0) ; Return address
454 : ST 6, 0(4) ; Store return in callee frame
455 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
456 : LDA 7, 400(0) ; Call isCircularPrimeHelper
457 : LD 1, 3(5) ; Load callee result into R1
458 : LDC 2, 6(0) ; Callee frame size
459 : SUB 5, 5, 2 ; Pop callee frame
460 : LD 2, 4(5) ; Restore left operand from depth 0
461 : MUL 1, 2, 1 ; R1 = left AND right
462 : ST 1, 3(5) ; Store function result into frame return slot
463 : LD 6, 0(5) ; Load return address
464 : LDA 7, 0(6) ; Return to caller
465 : LD 1, 1(5) ; Load parameter 'x' into R1
466 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
467 : LDA 4, 6(5) ; Callee base for arg copy
468 : LD 1, 3(5) ; Load staged arg 0 from caller temp
469 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
470 : LD 1, 1(5) ; Load parameter 'x' into R1
471 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
472 : LDA 4, 3(5) ; Callee base for arg copy
473 : LD 1, 3(5) ; Load staged arg 0 from caller temp
474 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
475 : LDA 4, 3(5) ; Callee base for call
476 : LDA 6, 480(0) ; Return address
477 : ST 6, 0(4) ; Store return in callee frame
478 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
479 : LDA 7, 221(0) ; Call log10
480 : LD 1, 2(5) ; Load callee result into R1
481 : LDC 2, 3(0) ; Callee frame size
482 : SUB 5, 5, 2 ; Pop callee frame
483 : ST 1, 3(5) ; Spill left operand at depth 0
484 : LDC 1, 1(0) ; Load integer-literal into R1
485 : LD 2, 3(5) ; Restore left operand from depth 0
486 : ADD 1, 2, 1 ; R1 = left + right
487 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
488 : LDA 4, 6(5) ; Callee base for arg copy
489 : LD 1, 3(5) ; Load staged arg 1 from caller temp
490 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
491 : LDA 4, 6(5) ; Callee base for call
492 : LDA 6, 496(0) ; Return address
493 : ST 6, 0(4) ; Store return in callee frame
494 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
495 : LDA 7, 400(0) ; Call isCircularPrimeHelper
496 : LD 1, 3(5) ; Load callee result into R1
497 : LDC 2, 6(0) ; Callee frame size
498 : SUB 5, 5, 2 ; Pop callee frame
499 : JEQ 1, 514(0) ; If condition is false, jump to ELSE
500 : LD 1, 1(5) ; Load parameter 'x' into R1
501 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
502 : LDA 4, 3(5) ; Callee base for arg copy
503 : LD 1, 3(5) ; Load staged arg 0 from caller temp
504 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
505 : LDA 4, 3(5) ; Callee base for call
506 : LDA 6, 510(0) ; Return address
507 : ST 6, 0(4) ; Store return in callee frame
508 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
509 : LDA 7, 388(0) ; Call report
510 : LD 1, 2(5) ; Load callee result into R1
511 : LDC 2, 3(0) ; Callee frame size
512 : SUB 5, 5, 2 ; Pop callee frame
513 : LDA 7, 515(0) ; Skip ELSE block
514 : LDC 1, 0(0) ; Load boolean-literal into R1
515 : ST 1, 2(5) ; Store function result into frame return slot
516 : LD 6, 0(5) ; Load return address
517 : LDA 7, 0(6) ; Return to caller
518 : LD 1, 2(5) ; Load parameter 'x' into R1
519 : ST 1, 5(5) ; Spill left operand at depth 0
520 : LD 1, 1(5) ; Load parameter 'top' into R1
521 : LD 2, 5(5) ; Restore left operand from depth 0
522 : SUB 1, 2, 1 ; left - right for less-than check
523 : JLT 1, 2(7) ; If R1 < 0, jump to true
524 : LDC 1, 0(0) ; false
525 : LDA 7, 1(7) ; skip setting true
526 : LDC 1, 1(0) ; true
527 : JEQ 1, 602(0) ; If condition is false, jump to ELSE
528 : LD 1, 2(5) ; Load parameter 'x' into R1
529 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
530 : LDA 4, 4(5) ; Callee base for arg copy
531 : LD 1, 5(5) ; Load staged arg 0 from caller temp
532 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
533 : LDA 4, 4(5) ; Callee base for call
534 : LDA 6, 538(0) ; Return address
535 : ST 6, 0(4) ; Store return in callee frame
536 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
537 : LDA 7, 465(0) ; Call isCircularPrime
538 : LD 1, 2(5) ; Load callee result into R1
539 : LDC 2, 4(0) ; Callee frame size
540 : SUB 5, 5, 2 ; Pop callee frame
541 : JEQ 1, 574(0) ; If condition is false, jump to ELSE
542 : LD 1, 1(5) ; Load parameter 'top' into R1
543 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
544 : LDA 4, 6(5) ; Callee base for arg copy
545 : LD 1, 5(5) ; Load staged arg 0 from caller temp
546 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
547 : LD 1, 2(5) ; Load parameter 'x' into R1
548 : ST 1, 5(5) ; Spill left operand at depth 0
549 : LDC 1, 1(0) ; Load integer-literal into R1
550 : LD 2, 5(5) ; Restore left operand from depth 0
551 : ADD 1, 2, 1 ; R1 = left + right
552 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
553 : LDA 4, 6(5) ; Callee base for arg copy
554 : LD 1, 5(5) ; Load staged arg 1 from caller temp
555 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
556 : LD 1, 3(5) ; Load parameter 'count' into R1
557 : ST 1, 5(5) ; Spill left operand at depth 0
558 : LDC 1, 1(0) ; Load integer-literal into R1
559 : LD 2, 5(5) ; Restore left operand from depth 0
560 : ADD 1, 2, 1 ; R1 = left + right
561 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
562 : LDA 4, 6(5) ; Callee base for arg copy
563 : LD 1, 5(5) ; Load staged arg 2 from caller temp
564 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
565 : LDA 4, 6(5) ; Callee base for call
566 : LDA 6, 570(0) ; Return address
567 : ST 6, 0(4) ; Store return in callee frame
568 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
569 : LDA 7, 518(0) ; Call circularPrimesToHelper
570 : LD 1, 4(5) ; Load callee result into R1
571 : LDC 2, 6(0) ; Callee frame size
572 : SUB 5, 5, 2 ; Pop callee frame
573 : LDA 7, 601(0) ; Skip ELSE block
574 : LD 1, 1(5) ; Load parameter 'top' into R1
575 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
576 : LDA 4, 6(5) ; Callee base for arg copy
577 : LD 1, 5(5) ; Load staged arg 0 from caller temp
578 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
579 : LD 1, 2(5) ; Load parameter 'x' into R1
580 : ST 1, 5(5) ; Spill left operand at depth 0
581 : LDC 1, 1(0) ; Load integer-literal into R1
582 : LD 2, 5(5) ; Restore left operand from depth 0
583 : ADD 1, 2, 1 ; R1 = left + right
584 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
585 : LDA 4, 6(5) ; Callee base for arg copy
586 : LD 1, 5(5) ; Load staged arg 1 from caller temp
587 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
588 : LD 1, 3(5) ; Load parameter 'count' into R1
589 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
590 : LDA 4, 6(5) ; Callee base for arg copy
591 : LD 1, 5(5) ; Load staged arg 2 from caller temp
592 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
593 : LDA 4, 6(5) ; Callee base for call
594 : LDA 6, 598(0) ; Return address
595 : ST 6, 0(4) ; Store return in callee frame
596 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
597 : LDA 7, 518(0) ; Call circularPrimesToHelper
598 : LD 1, 4(5) ; Load callee result into R1
599 : LDC 2, 6(0) ; Callee frame size
600 : SUB 5, 5, 2 ; Pop callee frame
601 : LDA 7, 603(0) ; Skip ELSE block
602 : LD 1, 3(5) ; Load parameter 'count' into R1
603 : ST 1, 4(5) ; Store function result into frame return slot
604 : LD 6, 0(5) ; Load return address
605 : LDA 7, 0(6) ; Return to caller
606 : LD 1, 1(5) ; Load parameter 'x' into R1
607 : ST 1, 3(5) ; Spill left operand at depth 0
608 : LDC 1, 1(0) ; Load integer-literal into R1
609 : LD 2, 3(5) ; Restore left operand from depth 0
610 : ADD 1, 2, 1 ; R1 = left + right
611 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
612 : LDA 4, 6(5) ; Callee base for arg copy
613 : LD 1, 3(5) ; Load staged arg 0 from caller temp
614 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
615 : LDC 1, 2(0) ; Load integer-literal into R1
616 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
617 : LDA 4, 6(5) ; Callee base for arg copy
618 : LD 1, 3(5) ; Load staged arg 1 from caller temp
619 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
620 : LDC 1, 0(0) ; Load integer-literal into R1
621 : ST 1, 3(5) ; Stage arg 2 in caller temp (P+2)
622 : LDA 4, 6(5) ; Callee base for arg copy
623 : LD 1, 3(5) ; Load staged arg 2 from caller temp
624 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
625 : LDA 4, 6(5) ; Callee base for call
626 : LDA 6, 630(0) ; Return address
627 : ST 6, 0(4) ; Store return in callee frame
628 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
629 : LDA 7, 518(0) ; Call circularPrimesToHelper
630 : LD 1, 4(5) ; Load callee result into R1
631 : LDC 2, 6(0) ; Callee frame size
632 : SUB 5, 5, 2 ; Pop callee frame
633 : ST 1, 2(5) ; Store function result into frame return slot
634 : LD 6, 0(5) ; Load return address
635 : LDA 7, 0(6) ; Return to caller
