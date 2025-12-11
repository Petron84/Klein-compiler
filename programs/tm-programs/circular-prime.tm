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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDA 4, 6(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 565(0) ; Call circularPrimesTo
21 : LD 1, 2(5) ; Load callee result into R1
22 : LDC 2, 6(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 1(5) ; Load parameter 'num' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 2(5) ; Load parameter 'den' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LD 1, 1(5) ; Load parameter 'num' into R1
39 : LDA 7, !temp_2(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : ST 1, 4(5) ; Spill left operand at depth 0
42 : LD 1, 2(5) ; Load parameter 'den' into R1
43 : LD 2, 4(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; R1 = left - right
45 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
48 : LDA 4, 6(5) ; Callee base for arg copy
49 : LD 1, 4(5) ; Load staged arg 0 from caller temp
50 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
51 : LD 1, 5(5) ; Load staged arg 1 from caller temp
52 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
56 : LDA 7, 28(0) ; Call mod
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 6(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop callee frame
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
65 : LD 1, 1(5) ; Load parameter 'a' into R1
66 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
67 : LDA 4, 6(5) ; Callee base for arg copy
68 : LD 1, 4(5) ; Load staged arg 0 from caller temp
69 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
70 : LD 1, 5(5) ; Load staged arg 1 from caller temp
71 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
75 : LDA 7, 28(0) ; Call mod
76 : LD 1, 3(5) ; Load callee result into R1
77 : LDC 2, 6(0) ; Callee frame size
78 : SUB 5, 5, 2 ; Pop callee frame
79 : ST 1, 4(5) ; Spill left operand at depth 0
80 : LDC 1, 0(0) ; Load integer-literal into R1
81 : LD 2, 4(5) ; Restore left operand from depth 0
82 : SUB 1, 2, 1 ; left - right for equality check
83 : JEQ 1, 2(7) ; If R1 == 0, jump to true
84 : LDC 1, 0(0) ; false
85 : LDA 7, 1(7) ; skip setting true
86 : LDC 1, 1(0) ; true
87 : ST 1, 3(5) ; Store function result into frame return slot
88 : LD 6, 0(5) ; Load return address
89 : LDA 7, 0(6) ; Return to caller
90 : LD 1, 1(5) ; Load parameter 'i' into R1
91 : ST 1, 4(5) ; Spill left operand at depth 0
92 : LD 1, 2(5) ; Load parameter 'n' into R1
93 : LD 2, 4(5) ; Restore left operand from depth 0
94 : SUB 1, 2, 1 ; left - right for less-than check
95 : JLT 1, 2(7) ; If R1 < 0, jump to true
96 : LDC 1, 0(0) ; false
97 : LDA 7, 1(7) ; skip setting true
98 : LDC 1, 1(0) ; true
99 : JEQ 1, 140(0) ; If condition is false, jump to ELSE
100 : LD 1, 1(5) ; Load parameter 'i' into R1
101 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
104 : LDA 4, 6(5) ; Callee base for arg copy
105 : LD 1, 4(5) ; Load staged arg 0 from caller temp
106 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
107 : LD 1, 5(5) ; Load staged arg 1 from caller temp
108 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return in callee frame
111 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
112 : LDA 7, 63(0) ; Call divides
113 : LD 1, 3(5) ; Load callee result into R1
114 : LDC 2, 6(0) ; Callee frame size
115 : SUB 5, 5, 2 ; Pop callee frame
116 : ST 1, 4(5) ; Spill left operand at depth 0
117 : LD 1, 1(5) ; Load parameter 'i' into R1
118 : ST 1, 5(5) ; Spill left operand at depth 1
119 : LDC 1, 1(0) ; Load integer-literal into R1
120 : LD 2, 5(5) ; Restore left operand from depth 1
121 : ADD 1, 2, 1 ; R1 = left + right
122 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
123 : LD 1, 2(5) ; Load parameter 'n' into R1
124 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
125 : LDA 4, 6(5) ; Callee base for arg copy
126 : LD 1, 4(5) ; Load staged arg 0 from caller temp
127 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
128 : LD 1, 5(5) ; Load staged arg 1 from caller temp
129 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
133 : LDA 7, 90(0) ; Call hasDivisorFrom
134 : LD 1, 3(5) ; Load callee result into R1
135 : LDC 2, 6(0) ; Callee frame size
136 : SUB 5, 5, 2 ; Pop callee frame
137 : LD 2, 4(5) ; Restore left operand from depth 0
138 : ADD 1, 2, 1 ; R1 = left OR right
139 : LDA 7, !temp_8(0) ; Skip ELSE block
140 : LDC 1, 0(0) ; Load boolean-literal into R1
141 : ST 1, 3(5) ; Store function result into frame return slot
142 : LD 6, 0(5) ; Load return address
143 : LDA 7, 0(6) ; Return to caller
144 : LDC 1, 2(0) ; Load integer-literal into R1
145 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
146 : LD 1, 1(5) ; Load parameter 'n' into R1
147 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
148 : LDA 4, 6(5) ; Callee base for arg copy
149 : LD 1, 3(5) ; Load staged arg 0 from caller temp
150 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
151 : LD 1, 4(5) ; Load staged arg 1 from caller temp
152 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
156 : LDA 7, 90(0) ; Call hasDivisorFrom
157 : LD 1, 3(5) ; Load callee result into R1
158 : LDC 2, 6(0) ; Callee frame size
159 : SUB 5, 5, 2 ; Pop callee frame
160 : LDC 2, 1(0) ; Load 1 into R2
161 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
162 : ST 1, 2(5) ; Store function result into frame return slot
163 : LD 6, 0(5) ; Load return address
164 : LDA 7, 0(6) ; Return to caller
165 : LD 1, 1(5) ; Load parameter 'x' into R1
166 : ST 1, 4(5) ; Spill left operand at depth 0
167 : LDC 1, 10(0) ; Load integer-literal into R1
168 : LD 2, 4(5) ; Restore left operand from depth 0
169 : DIV 1, 2, 1 ; R1 = left / right
170 : ST 1, 4(5) ; Spill left operand at depth 0
171 : LDC 1, 0(0) ; Load integer-literal into R1
172 : LD 2, 4(5) ; Restore left operand from depth 0
173 : SUB 1, 2, 1 ; left - right for equality check
174 : JEQ 1, 2(7) ; If R1 == 0, jump to true
175 : LDC 1, 0(0) ; false
176 : LDA 7, 1(7) ; skip setting true
177 : LDC 1, 1(0) ; true
178 : JEQ 1, 181(0) ; If condition is false, jump to ELSE
179 : LD 1, 2(5) ; Load parameter 'y' into R1
180 : LDA 7, 401(0) ; Skip ELSE block
181 : LD 1, 1(5) ; Load parameter 'x' into R1
182 : ST 1, 4(5) ; Spill left operand at depth 0
183 : LDC 1, 10(0) ; Load integer-literal into R1
184 : LD 2, 4(5) ; Restore left operand from depth 0
185 : DIV 1, 2, 1 ; R1 = left / right
186 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
187 : LD 1, 2(5) ; Load parameter 'y' into R1
188 : ST 1, 4(5) ; Spill left operand at depth 0
189 : LDC 1, 1(0) ; Load integer-literal into R1
190 : LD 2, 4(5) ; Restore left operand from depth 0
191 : ADD 1, 2, 1 ; R1 = left + right
192 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
193 : LDA 4, 6(5) ; Callee base for arg copy
194 : LD 1, 4(5) ; Load staged arg 0 from caller temp
195 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
196 : LD 1, 5(5) ; Load staged arg 1 from caller temp
197 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
201 : LDA 7, 165(0) ; Call log10Helper
202 : LD 1, 3(5) ; Load callee result into R1
203 : LDC 2, 6(0) ; Callee frame size
204 : SUB 5, 5, 2 ; Pop callee frame
205 : ST 1, 3(5) ; Store function result into frame return slot
206 : LD 6, 0(5) ; Load return address
207 : LDA 7, 0(6) ; Return to caller
208 : LD 1, 1(5) ; Load parameter 'x' into R1
209 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
210 : LDC 1, 0(0) ; Load integer-literal into R1
211 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
212 : LDA 4, 6(5) ; Callee base for arg copy
213 : LD 1, 3(5) ; Load staged arg 0 from caller temp
214 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
215 : LD 1, 4(5) ; Load staged arg 1 from caller temp
216 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
217 : LDA 6, 221(0) ; Return address
218 : ST 6, 0(4) ; Store return in callee frame
219 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
220 : LDA 7, 165(0) ; Call log10Helper
221 : LD 1, 3(5) ; Load callee result into R1
222 : LDC 2, 6(0) ; Callee frame size
223 : SUB 5, 5, 2 ; Pop callee frame
224 : ST 1, 2(5) ; Store function result into frame return slot
225 : LD 6, 0(5) ; Load return address
226 : LDA 7, 0(6) ; Return to caller
227 : LD 1, 2(5) ; Load parameter 'power' into R1
228 : ST 1, 5(5) ; Spill left operand at depth 0
229 : LDC 1, 0(0) ; Load integer-literal into R1
230 : LD 2, 5(5) ; Restore left operand from depth 0
231 : SUB 1, 2, 1 ; left - right for equality check
232 : JEQ 1, 2(7) ; If R1 == 0, jump to true
233 : LDC 1, 0(0) ; false
234 : LDA 7, 1(7) ; skip setting true
235 : LDC 1, 1(0) ; true
236 : JEQ 1, 239(0) ; If condition is false, jump to ELSE
237 : LDC 1, 1(0) ; Load integer-literal into R1
238 : LDA 7, 405(0) ; Skip ELSE block
239 : LD 1, 2(5) ; Load parameter 'power' into R1
240 : ST 1, 5(5) ; Spill left operand at depth 0
241 : LDC 1, 1(0) ; Load integer-literal into R1
242 : LD 2, 5(5) ; Restore left operand from depth 0
243 : SUB 1, 2, 1 ; left - right for equality check
244 : JEQ 1, 2(7) ; If R1 == 0, jump to true
245 : LDC 1, 0(0) ; false
246 : LDA 7, 1(7) ; skip setting true
247 : LDC 1, 1(0) ; true
248 : JEQ 1, 251(0) ; If condition is false, jump to ELSE
249 : LD 1, 3(5) ; Load parameter 'total' into R1
250 : LDA 7, 407(0) ; Skip ELSE block
251 : LD 1, 1(5) ; Load parameter 'base' into R1
252 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
253 : LD 1, 2(5) ; Load parameter 'power' into R1
254 : ST 1, 5(5) ; Spill left operand at depth 0
255 : LDC 1, 1(0) ; Load integer-literal into R1
256 : LD 2, 5(5) ; Restore left operand from depth 0
257 : SUB 1, 2, 1 ; R1 = left - right
258 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
259 : LD 1, 1(5) ; Load parameter 'base' into R1
260 : ST 1, 5(5) ; Spill left operand at depth 0
261 : LD 1, 3(5) ; Load parameter 'total' into R1
262 : LD 2, 5(5) ; Restore left operand from depth 0
263 : MUL 1, 2, 1 ; R1 = left * right
264 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
265 : LDA 4, 8(5) ; Callee base for arg copy
266 : LD 1, 5(5) ; Load staged arg 0 from caller temp
267 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
268 : LD 1, 6(5) ; Load staged arg 1 from caller temp
269 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
270 : LD 1, 7(5) ; Load staged arg 2 from caller temp
271 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
272 : LDA 6, 276(0) ; Return address
273 : ST 6, 0(4) ; Store return in callee frame
274 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
275 : LDA 7, 227(0) ; Call powHelper
276 : LD 1, 4(5) ; Load callee result into R1
277 : LDC 2, 8(0) ; Callee frame size
278 : SUB 5, 5, 2 ; Pop callee frame
279 : ST 1, 4(5) ; Store function result into frame return slot
280 : LD 6, 0(5) ; Load return address
281 : LDA 7, 0(6) ; Return to caller
282 : LD 1, 1(5) ; Load parameter 'x' into R1
283 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
284 : LD 1, 2(5) ; Load parameter 'y' into R1
285 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
286 : LD 1, 1(5) ; Load parameter 'x' into R1
287 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2+i)
288 : LDA 4, 8(5) ; Callee base for arg copy
289 : LD 1, 4(5) ; Load staged arg 0 from caller temp
290 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
291 : LD 1, 5(5) ; Load staged arg 1 from caller temp
292 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
293 : LD 1, 6(5) ; Load staged arg 2 from caller temp
294 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
295 : LDA 6, 299(0) ; Return address
296 : ST 6, 0(4) ; Store return in callee frame
297 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
298 : LDA 7, 227(0) ; Call powHelper
299 : LD 1, 4(5) ; Load callee result into R1
300 : LDC 2, 8(0) ; Callee frame size
301 : SUB 5, 5, 2 ; Pop callee frame
302 : ST 1, 3(5) ; Store function result into frame return slot
303 : LD 6, 0(5) ; Load return address
304 : LDA 7, 0(6) ; Return to caller
305 : LD 1, 1(5) ; Load parameter 'x' into R1
306 : ST 1, 3(5) ; Spill left operand at depth 0
307 : LDC 1, 10(0) ; Load integer-literal into R1
308 : LD 2, 3(5) ; Restore left operand from depth 0
309 : DIV 1, 2, 1 ; R1 = left / right
310 : ST 1, 3(5) ; Spill left operand at depth 0
311 : LD 1, 1(5) ; Load parameter 'x' into R1
312 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
313 : LDC 1, 10(0) ; Load integer-literal into R1
314 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
315 : LDA 4, 6(5) ; Callee base for arg copy
316 : LD 1, 3(5) ; Load staged arg 0 from caller temp
317 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
318 : LD 1, 4(5) ; Load staged arg 1 from caller temp
319 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
320 : LDA 6, 324(0) ; Return address
321 : ST 6, 0(4) ; Store return in callee frame
322 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
323 : LDA 7, 28(0) ; Call mod
324 : LD 1, 3(5) ; Load callee result into R1
325 : LDC 2, 6(0) ; Callee frame size
326 : SUB 5, 5, 2 ; Pop callee frame
327 : ST 1, 4(5) ; Spill left operand at depth 1
328 : LDC 1, 10(0) ; Load integer-literal into R1
329 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
330 : LD 1, 1(5) ; Load parameter 'x' into R1
331 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
332 : LDA 4, 5(5) ; Callee base for arg copy
333 : LD 1, 3(5) ; Load staged arg 0 from caller temp
334 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
335 : LDA 6, 339(0) ; Return address
336 : ST 6, 0(4) ; Store return in callee frame
337 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
338 : LDA 7, 208(0) ; Call log10
339 : LD 1, 2(5) ; Load callee result into R1
340 : LDC 2, 5(0) ; Callee frame size
341 : SUB 5, 5, 2 ; Pop callee frame
342 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
343 : LDA 4, 7(5) ; Callee base for arg copy
344 : LD 1, 3(5) ; Load staged arg 0 from caller temp
345 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
346 : LD 1, 4(5) ; Load staged arg 1 from caller temp
347 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
348 : LDA 6, 352(0) ; Return address
349 : ST 6, 0(4) ; Store return in callee frame
350 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
351 : LDA 7, 282(0) ; Call pow
352 : LD 1, 3(5) ; Load callee result into R1
353 : LDC 2, 7(0) ; Callee frame size
354 : SUB 5, 5, 2 ; Pop callee frame
355 : LD 2, 4(5) ; Restore left operand from depth 1
356 : MUL 1, 2, 1 ; R1 = left * right
357 : LD 2, 3(5) ; Restore left operand from depth 0
358 : ADD 1, 2, 1 ; R1 = left + right
359 : ST 1, 2(5) ; Store function result into frame return slot
360 : LD 6, 0(5) ; Load return address
361 : LDA 7, 0(6) ; Return to caller
362 : LD 1, 1(5) ; Load parameter 'x' into R1
363 : LDA 4, 3(5) ; Callee base for built-in print
364 : LDA 6, 368(0) ; Return address
365 : ST 6, 0(4) ; Store return address in callee frame
366 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
367 : LDA 7, 9(0) ; Call built-in print
368 : LDC 2, 3(0) ; Callee frame size (print)
369 : SUB 5, 5, 2 ; Pop back to caller
370 : LDC 1, 1(0) ; Load boolean-literal into R1
371 : ST 1, 2(5) ; Store function result into frame return slot
372 : LD 6, 0(5) ; Load return address
373 : LDA 7, 0(6) ; Return to caller
374 : LD 1, 2(5) ; Load parameter 'turns' into R1
375 : ST 1, 4(5) ; Spill left operand at depth 0
376 : LDC 1, 0(0) ; Load integer-literal into R1
377 : LD 2, 4(5) ; Restore left operand from depth 0
378 : SUB 1, 2, 1 ; left - right for equality check
379 : JEQ 1, 2(7) ; If R1 == 0, jump to true
380 : LDC 1, 0(0) ; false
381 : LDA 7, 1(7) ; skip setting true
382 : LDC 1, 1(0) ; true
383 : JEQ 1, 386(0) ; If condition is false, jump to ELSE
384 : LDC 1, 1(0) ; Load boolean-literal into R1
385 : LDA 7, !temp_25(0) ; Skip ELSE block
386 : LD 1, 1(5) ; Load parameter 'x' into R1
387 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
388 : LDA 4, 5(5) ; Callee base for arg copy
389 : LD 1, 4(5) ; Load staged arg 0 from caller temp
390 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
391 : LDA 6, 395(0) ; Return address
392 : ST 6, 0(4) ; Store return in callee frame
393 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
394 : LDA 7, 144(0) ; Call isPrime
395 : LD 1, 2(5) ; Load callee result into R1
396 : LDC 2, 5(0) ; Callee frame size
397 : SUB 5, 5, 2 ; Pop callee frame
398 : ST 1, 4(5) ; Spill left operand at depth 0
399 : LD 1, 1(5) ; Load parameter 'x' into R1
400 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
401 : LDA 4, 5(5) ; Callee base for arg copy
402 : LD 1, 4(5) ; Load staged arg 0 from caller temp
403 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return in callee frame
406 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
407 : LDA 7, 305(0) ; Call rotate
408 : LD 1, 2(5) ; Load callee result into R1
409 : LDC 2, 5(0) ; Callee frame size
410 : SUB 5, 5, 2 ; Pop callee frame
411 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
412 : LD 1, 2(5) ; Load parameter 'turns' into R1
413 : ST 1, 5(5) ; Spill left operand at depth 1
414 : LDC 1, 1(0) ; Load integer-literal into R1
415 : LD 2, 5(5) ; Restore left operand from depth 1
416 : SUB 1, 2, 1 ; R1 = left - right
417 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
418 : LDA 4, 6(5) ; Callee base for arg copy
419 : LD 1, 4(5) ; Load staged arg 0 from caller temp
420 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
421 : LD 1, 5(5) ; Load staged arg 1 from caller temp
422 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
423 : LDA 6, 427(0) ; Return address
424 : ST 6, 0(4) ; Store return in callee frame
425 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
426 : LDA 7, 374(0) ; Call isCircularPrimeHelper
427 : LD 1, 3(5) ; Load callee result into R1
428 : LDC 2, 6(0) ; Callee frame size
429 : SUB 5, 5, 2 ; Pop callee frame
430 : LD 2, 4(5) ; Restore left operand from depth 0
431 : MUL 1, 2, 1 ; R1 = left AND right
432 : ST 1, 3(5) ; Store function result into frame return slot
433 : LD 6, 0(5) ; Load return address
434 : LDA 7, 0(6) ; Return to caller
435 : LD 1, 1(5) ; Load parameter 'x' into R1
436 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
437 : LD 1, 1(5) ; Load parameter 'x' into R1
438 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
439 : LDA 4, 5(5) ; Callee base for arg copy
440 : LD 1, 3(5) ; Load staged arg 0 from caller temp
441 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
442 : LDA 6, 446(0) ; Return address
443 : ST 6, 0(4) ; Store return in callee frame
444 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
445 : LDA 7, 208(0) ; Call log10
446 : LD 1, 2(5) ; Load callee result into R1
447 : LDC 2, 5(0) ; Callee frame size
448 : SUB 5, 5, 2 ; Pop callee frame
449 : ST 1, 3(5) ; Spill left operand at depth 0
450 : LDC 1, 1(0) ; Load integer-literal into R1
451 : LD 2, 3(5) ; Restore left operand from depth 0
452 : ADD 1, 2, 1 ; R1 = left + right
453 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
454 : LDA 4, 6(5) ; Callee base for arg copy
455 : LD 1, 3(5) ; Load staged arg 0 from caller temp
456 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
457 : LD 1, 4(5) ; Load staged arg 1 from caller temp
458 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
459 : LDA 6, 463(0) ; Return address
460 : ST 6, 0(4) ; Store return in callee frame
461 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
462 : LDA 7, 374(0) ; Call isCircularPrimeHelper
463 : LD 1, 3(5) ; Load callee result into R1
464 : LDC 2, 6(0) ; Callee frame size
465 : SUB 5, 5, 2 ; Pop callee frame
466 : JEQ 1, 480(0) ; If condition is false, jump to ELSE
467 : LD 1, 1(5) ; Load parameter 'x' into R1
468 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
469 : LDA 4, 3(5) ; Callee base for arg copy
470 : LD 1, 3(5) ; Load staged arg 0 from caller temp
471 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
472 : LDA 6, 476(0) ; Return address
473 : ST 6, 0(4) ; Store return in callee frame
474 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
475 : LDA 7, 362(0) ; Call report
476 : LD 1, 2(5) ; Load callee result into R1
477 : LDC 2, 3(0) ; Callee frame size
478 : SUB 5, 5, 2 ; Pop callee frame
479 : LDA 7, !temp_33(0) ; Skip ELSE block
480 : LDC 1, 0(0) ; Load boolean-literal into R1
481 : ST 1, 2(5) ; Store function result into frame return slot
482 : LD 6, 0(5) ; Load return address
483 : LDA 7, 0(6) ; Return to caller
484 : LD 1, 2(5) ; Load parameter 'x' into R1
485 : ST 1, 5(5) ; Spill left operand at depth 0
486 : LD 1, 1(5) ; Load parameter 'top' into R1
487 : LD 2, 5(5) ; Restore left operand from depth 0
488 : SUB 1, 2, 1 ; left - right for less-than check
489 : JLT 1, 2(7) ; If R1 < 0, jump to true
490 : LDC 1, 0(0) ; false
491 : LDA 7, 1(7) ; skip setting true
492 : LDC 1, 1(0) ; true
493 : JEQ 1, 561(0) ; If condition is false, jump to ELSE
494 : LD 1, 2(5) ; Load parameter 'x' into R1
495 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
496 : LDA 4, 5(5) ; Callee base for arg copy
497 : LD 1, 5(5) ; Load staged arg 0 from caller temp
498 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
499 : LDA 6, 503(0) ; Return address
500 : ST 6, 0(4) ; Store return in callee frame
501 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
502 : LDA 7, 435(0) ; Call isCircularPrime
503 : LD 1, 2(5) ; Load callee result into R1
504 : LDC 2, 5(0) ; Callee frame size
505 : SUB 5, 5, 2 ; Pop callee frame
506 : JEQ 1, 536(0) ; If condition is false, jump to ELSE
507 : LD 1, 1(5) ; Load parameter 'top' into R1
508 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
509 : LD 1, 2(5) ; Load parameter 'x' into R1
510 : ST 1, 5(5) ; Spill left operand at depth 0
511 : LDC 1, 1(0) ; Load integer-literal into R1
512 : LD 2, 5(5) ; Restore left operand from depth 0
513 : ADD 1, 2, 1 ; R1 = left + right
514 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
515 : LD 1, 3(5) ; Load parameter 'count' into R1
516 : ST 1, 5(5) ; Spill left operand at depth 0
517 : LDC 1, 1(0) ; Load integer-literal into R1
518 : LD 2, 5(5) ; Restore left operand from depth 0
519 : ADD 1, 2, 1 ; R1 = left + right
520 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
521 : LDA 4, 8(5) ; Callee base for arg copy
522 : LD 1, 5(5) ; Load staged arg 0 from caller temp
523 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
524 : LD 1, 6(5) ; Load staged arg 1 from caller temp
525 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
526 : LD 1, 7(5) ; Load staged arg 2 from caller temp
527 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
528 : LDA 6, 532(0) ; Return address
529 : ST 6, 0(4) ; Store return in callee frame
530 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
531 : LDA 7, 484(0) ; Call circularPrimesToHelper
532 : LD 1, 4(5) ; Load callee result into R1
533 : LDC 2, 8(0) ; Callee frame size
534 : SUB 5, 5, 2 ; Pop callee frame
535 : LDA 7, !temp_38(0) ; Skip ELSE block
536 : LD 1, 1(5) ; Load parameter 'top' into R1
537 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
538 : LD 1, 2(5) ; Load parameter 'x' into R1
539 : ST 1, 5(5) ; Spill left operand at depth 0
540 : LDC 1, 1(0) ; Load integer-literal into R1
541 : LD 2, 5(5) ; Restore left operand from depth 0
542 : ADD 1, 2, 1 ; R1 = left + right
543 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
544 : LD 1, 3(5) ; Load parameter 'count' into R1
545 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
546 : LDA 4, 8(5) ; Callee base for arg copy
547 : LD 1, 5(5) ; Load staged arg 0 from caller temp
548 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
549 : LD 1, 6(5) ; Load staged arg 1 from caller temp
550 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
551 : LD 1, 7(5) ; Load staged arg 2 from caller temp
552 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
553 : LDA 6, 557(0) ; Return address
554 : ST 6, 0(4) ; Store return in callee frame
555 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
556 : LDA 7, 484(0) ; Call circularPrimesToHelper
557 : LD 1, 4(5) ; Load callee result into R1
558 : LDC 2, 8(0) ; Callee frame size
559 : SUB 5, 5, 2 ; Pop callee frame
560 : LDA 7, !temp_40(0) ; Skip ELSE block
561 : LD 1, 3(5) ; Load parameter 'count' into R1
562 : ST 1, 4(5) ; Store function result into frame return slot
563 : LD 6, 0(5) ; Load return address
564 : LDA 7, 0(6) ; Return to caller
565 : LD 1, 1(5) ; Load parameter 'x' into R1
566 : ST 1, 3(5) ; Spill left operand at depth 0
567 : LDC 1, 1(0) ; Load integer-literal into R1
568 : LD 2, 3(5) ; Restore left operand from depth 0
569 : ADD 1, 2, 1 ; R1 = left + right
570 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
571 : LDC 1, 2(0) ; Load integer-literal into R1
572 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
573 : LDC 1, 0(0) ; Load integer-literal into R1
574 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2+i)
575 : LDA 4, 8(5) ; Callee base for arg copy
576 : LD 1, 3(5) ; Load staged arg 0 from caller temp
577 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
578 : LD 1, 4(5) ; Load staged arg 1 from caller temp
579 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
580 : LD 1, 5(5) ; Load staged arg 2 from caller temp
581 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
582 : LDA 6, 586(0) ; Return address
583 : ST 6, 0(4) ; Store return in callee frame
584 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
585 : LDA 7, 484(0) ; Call circularPrimesToHelper
586 : LD 1, 4(5) ; Load callee result into R1
587 : LDC 2, 8(0) ; Callee frame size
588 : SUB 5, 5, 2 ; Pop callee frame
589 : ST 1, 2(5) ; Store function result into frame return slot
590 : LD 6, 0(5) ; Load return address
591 : LDA 7, 0(6) ; Return to caller
