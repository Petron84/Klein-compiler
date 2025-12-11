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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 6(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LD 1, 1(5) ; Load parameter 'length' into R1
18 : ST 1, 3(5) ; Spill left operand at depth 0
19 : LDC 1, 2(0) ; Load integer-literal into R1
20 : LD 2, 3(5) ; Restore left operand from depth 0
21 : DIV 1, 2, 1 ; R1 = left / right
22 : ST 1, 3(5) ; Spill left operand at depth 0
23 : LDC 1, 1(0) ; Load integer-literal into R1
24 : LD 2, 3(5) ; Restore left operand from depth 0
25 : SUB 1, 2, 1 ; R1 = left - right
26 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
27 : LDA 4, 6(5) ; Callee base for arg copy
28 : LD 1, 3(5) ; Load staged arg 1 from caller temp
29 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
30 : LDA 4, 6(5) ; Callee base for call
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
34 : LDA 7, 1018(0) ; Call EXP
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 6(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop callee frame
38 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
39 : LDA 4, 5(5) ; Callee base for arg copy
40 : LD 1, 3(5) ; Load staged arg 0 from caller temp
41 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
42 : LD 1, 1(5) ; Load parameter 'length' into R1
43 : ST 1, 3(5) ; Spill left operand at depth 0
44 : LDC 1, 2(0) ; Load integer-literal into R1
45 : LD 2, 3(5) ; Restore left operand from depth 0
46 : DIV 1, 2, 1 ; R1 = left / right
47 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
48 : LDA 4, 5(5) ; Callee base for arg copy
49 : LD 1, 3(5) ; Load staged arg 1 from caller temp
50 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
51 : LDA 4, 5(5) ; Callee base for call
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
55 : LDA 7, 63(0) ; Call createLoop
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 5(0) ; Callee frame size
58 : SUB 5, 5, 2 ; Pop callee frame
59 : ST 1, 2(5) ; Store result into caller’s frame
60 : LD 1, 2(5) ; Load main return value into R1
61 : LD 6, 0(5) ; Load main return address
62 : LDA 7, 0(6) ; Return from main
63 : LD 1, 1(5) ; Load parameter 'a' into R1
64 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
65 : LDA 4, 7(5) ; Callee base for arg copy
66 : LD 1, 4(5) ; Load staged arg 0 from caller temp
67 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
68 : LD 1, 2(5) ; Load parameter 'n' into R1
69 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
70 : LDA 4, 7(5) ; Callee base for arg copy
71 : LD 1, 4(5) ; Load staged arg 1 from caller temp
72 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
73 : LDC 1, 10(0) ; Load integer-literal into R1
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LD 1, 1(5) ; Load parameter 'a' into R1
76 : LD 2, 4(5) ; Restore left operand from depth 0
77 : MUL 1, 2, 1 ; R1 = left * right
78 : ST 1, 4(5) ; Stage arg 2 in caller temp (P+2)
79 : LDA 4, 7(5) ; Callee base for arg copy
80 : LD 1, 4(5) ; Load staged arg 2 from caller temp
81 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
82 : LDA 4, 7(5) ; Callee base for call
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(4) ; Store return in callee frame
85 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
86 : LDA 7, 93(0) ; Call aLoop
87 : LD 1, 4(5) ; Load callee result into R1
88 : LDC 2, 7(0) ; Callee frame size
89 : SUB 5, 5, 2 ; Pop callee frame
90 : ST 1, 3(5) ; Store function result into frame return slot
91 : LD 6, 0(5) ; Load return address
92 : LDA 7, 0(6) ; Return to caller
93 : LD 1, 1(5) ; Load parameter 'a' into R1
94 : ST 1, 5(5) ; Spill left operand at depth 0
95 : LD 1, 3(5) ; Load parameter 'upper' into R1
96 : LD 2, 5(5) ; Restore left operand from depth 0
97 : SUB 1, 2, 1 ; left - right for less-than check
98 : JLT 1, 2(7) ; If R1 < 0, jump to true
99 : LDC 1, 0(0) ; false
100 : LDA 7, 1(7) ; skip setting true
101 : LDC 1, 1(0) ; true
102 : JEQ 1, 186(0) ; If condition is false, jump to ELSE
103 : LD 1, 1(5) ; Load parameter 'a' into R1
104 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
105 : LDA 4, 6(5) ; Callee base for arg copy
106 : LD 1, 5(5) ; Load staged arg 0 from caller temp
107 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
108 : LD 1, 2(5) ; Load parameter 'n' into R1
109 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
110 : LDA 4, 6(5) ; Callee base for arg copy
111 : LD 1, 5(5) ; Load staged arg 1 from caller temp
112 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
113 : LD 1, 3(5) ; Load parameter 'upper' into R1
114 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
115 : LDA 4, 6(5) ; Callee base for arg copy
116 : LD 1, 5(5) ; Load staged arg 2 from caller temp
117 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
118 : LDC 1, 4(0) ; Load integer-literal into R1
119 : ST 1, 5(5) ; Spill left operand at depth 0
120 : LD 1, 1(5) ; Load parameter 'a' into R1
121 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
122 : LDA 4, 6(5) ; Callee base for arg copy
123 : LD 1, 5(5) ; Load staged arg 0 from caller temp
124 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
125 : LDC 1, 2(0) ; Load integer-literal into R1
126 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
127 : LDA 4, 6(5) ; Callee base for arg copy
128 : LD 1, 5(5) ; Load staged arg 1 from caller temp
129 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
130 : LDA 4, 6(5) ; Callee base for call
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
134 : LDA 7, 1018(0) ; Call EXP
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 6(0) ; Callee frame size
137 : SUB 5, 5, 2 ; Pop callee frame
138 : LD 2, 5(5) ; Restore left operand from depth 0
139 : MUL 1, 2, 1 ; R1 = left * right
140 : ST 1, 5(5) ; Spill left operand at depth 0
141 : LDC 1, 4(0) ; Load integer-literal into R1
142 : ST 1, 6(5) ; Spill left operand at depth 1
143 : LDC 1, 10(0) ; Load integer-literal into R1
144 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
145 : LDA 4, 6(5) ; Callee base for arg copy
146 : LD 1, 5(5) ; Load staged arg 0 from caller temp
147 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
148 : LD 1, 2(5) ; Load parameter 'n' into R1
149 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
150 : LDA 4, 6(5) ; Callee base for arg copy
151 : LD 1, 5(5) ; Load staged arg 1 from caller temp
152 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
153 : LDA 4, 6(5) ; Callee base for call
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
157 : LDA 7, 1018(0) ; Call EXP
158 : LD 1, 3(5) ; Load callee result into R1
159 : LDC 2, 6(0) ; Callee frame size
160 : SUB 5, 5, 2 ; Pop callee frame
161 : LD 2, 6(5) ; Restore left operand from depth 1
162 : MUL 1, 2, 1 ; R1 = left * right
163 : ST 1, 6(5) ; Spill left operand at depth 1
164 : LD 1, 1(5) ; Load parameter 'a' into R1
165 : LD 2, 6(5) ; Restore left operand from depth 1
166 : MUL 1, 2, 1 ; R1 = left * right
167 : LD 2, 5(5) ; Restore left operand from depth 0
168 : ADD 1, 2, 1 ; R1 = left + right
169 : ST 1, 5(5) ; Spill left operand at depth 0
170 : LDC 1, 1(0) ; Load integer-literal into R1
171 : LD 2, 5(5) ; Restore left operand from depth 0
172 : ADD 1, 2, 1 ; R1 = left + right
173 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
174 : LDA 4, 6(5) ; Callee base for arg copy
175 : LD 1, 5(5) ; Load staged arg 3 from caller temp
176 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
177 : LDA 4, 6(5) ; Callee base for call
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
181 : LDA 7, 190(0) ; Call aLoop1
182 : LD 1, 5(5) ; Load callee result into R1
183 : LDC 2, 6(0) ; Callee frame size
184 : SUB 5, 5, 2 ; Pop callee frame
185 : LDA 7, 187(0) ; Skip ELSE block
186 : LDC 1, 1(0) ; Load boolean-literal into R1
187 : ST 1, 4(5) ; Store function result into frame return slot
188 : LD 6, 0(5) ; Load return address
189 : LDA 7, 0(6) ; Return to caller
190 : LD 1, 1(5) ; Load parameter 'a' into R1
191 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
192 : LDA 4, 9(5) ; Callee base for arg copy
193 : LD 1, 6(5) ; Load staged arg 0 from caller temp
194 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
195 : LD 1, 2(5) ; Load parameter 'n' into R1
196 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
197 : LDA 4, 9(5) ; Callee base for arg copy
198 : LD 1, 6(5) ; Load staged arg 1 from caller temp
199 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
200 : LD 1, 3(5) ; Load parameter 'upper' into R1
201 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
202 : LDA 4, 9(5) ; Callee base for arg copy
203 : LD 1, 6(5) ; Load staged arg 2 from caller temp
204 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
205 : LD 1, 4(5) ; Load parameter 'det' into R1
206 : ST 1, 6(5) ; Stage arg 3 in caller temp (P+2)
207 : LDA 4, 9(5) ; Callee base for arg copy
208 : LD 1, 6(5) ; Load staged arg 3 from caller temp
209 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
210 : LD 1, 4(5) ; Load parameter 'det' into R1
211 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
212 : LDA 4, 3(5) ; Callee base for arg copy
213 : LD 1, 6(5) ; Load staged arg 0 from caller temp
214 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
215 : LDA 4, 3(5) ; Callee base for call
216 : LDA 6, 220(0) ; Return address
217 : ST 6, 0(4) ; Store return in callee frame
218 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
219 : LDA 7, 923(0) ; Call SQRT
220 : LD 1, 2(5) ; Load callee result into R1
221 : LDC 2, 3(0) ; Callee frame size
222 : SUB 5, 5, 2 ; Pop callee frame
223 : ST 1, 6(5) ; Stage arg 4 in caller temp (P+2)
224 : LDA 4, 9(5) ; Callee base for arg copy
225 : LD 1, 6(5) ; Load staged arg 4 from caller temp
226 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
227 : LDA 4, 9(5) ; Callee base for call
228 : LDA 6, 232(0) ; Return address
229 : ST 6, 0(4) ; Store return in callee frame
230 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
231 : LDA 7, 238(0) ; Call aLoop2
232 : LD 1, 6(5) ; Load callee result into R1
233 : LDC 2, 9(0) ; Callee frame size
234 : SUB 5, 5, 2 ; Pop callee frame
235 : ST 1, 5(5) ; Store function result into frame return slot
236 : LD 6, 0(5) ; Load return address
237 : LDA 7, 0(6) ; Return to caller
238 : LD 1, 1(5) ; Load parameter 'a' into R1
239 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2)
240 : LDA 4, 10(5) ; Callee base for arg copy
241 : LD 1, 7(5) ; Load staged arg 0 from caller temp
242 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
243 : LD 1, 2(5) ; Load parameter 'n' into R1
244 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2)
245 : LDA 4, 10(5) ; Callee base for arg copy
246 : LD 1, 7(5) ; Load staged arg 1 from caller temp
247 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
248 : LD 1, 3(5) ; Load parameter 'upper' into R1
249 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2)
250 : LDA 4, 10(5) ; Callee base for arg copy
251 : LD 1, 7(5) ; Load staged arg 2 from caller temp
252 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
253 : LD 1, 4(5) ; Load parameter 'det' into R1
254 : ST 1, 7(5) ; Stage arg 3 in caller temp (P+2)
255 : LDA 4, 10(5) ; Callee base for arg copy
256 : LD 1, 7(5) ; Load staged arg 3 from caller temp
257 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
258 : LD 1, 5(5) ; Load parameter 'root' into R1
259 : ST 1, 7(5) ; Stage arg 4 in caller temp (P+2)
260 : LDA 4, 10(5) ; Callee base for arg copy
261 : LD 1, 7(5) ; Load staged arg 4 from caller temp
262 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
263 : LD 1, 1(5) ; Load parameter 'a' into R1
264 : ST 1, 7(5) ; Spill left operand at depth 0
265 : LDC 1, 10(0) ; Load integer-literal into R1
266 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2)
267 : LDA 4, 6(5) ; Callee base for arg copy
268 : LD 1, 7(5) ; Load staged arg 0 from caller temp
269 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
270 : LD 1, 2(5) ; Load parameter 'n' into R1
271 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2)
272 : LDA 4, 6(5) ; Callee base for arg copy
273 : LD 1, 7(5) ; Load staged arg 1 from caller temp
274 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
275 : LDA 4, 6(5) ; Callee base for call
276 : LDA 6, 280(0) ; Return address
277 : ST 6, 0(4) ; Store return in callee frame
278 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
279 : LDA 7, 1018(0) ; Call EXP
280 : LD 1, 3(5) ; Load callee result into R1
281 : LDC 2, 6(0) ; Callee frame size
282 : SUB 5, 5, 2 ; Pop callee frame
283 : LD 2, 7(5) ; Restore left operand from depth 0
284 : MUL 1, 2, 1 ; R1 = left * right
285 : ST 1, 7(5) ; Spill left operand at depth 0
286 : LD 1, 5(5) ; Load parameter 'root' into R1
287 : ST 1, 8(5) ; Spill left operand at depth 1
288 : LDC 1, 1(0) ; Load integer-literal into R1
289 : LD 2, 8(5) ; Restore left operand from depth 1
290 : ADD 1, 2, 1 ; R1 = left + right
291 : ST 1, 8(5) ; Spill left operand at depth 1
292 : LDC 1, 2(0) ; Load integer-literal into R1
293 : LD 2, 8(5) ; Restore left operand from depth 1
294 : DIV 1, 2, 1 ; R1 = left / right
295 : LD 2, 7(5) ; Restore left operand from depth 0
296 : ADD 1, 2, 1 ; R1 = left + right
297 : ST 1, 7(5) ; Stage arg 5 in caller temp (P+2)
298 : LDA 4, 10(5) ; Callee base for arg copy
299 : LD 1, 7(5) ; Load staged arg 5 from caller temp
300 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
301 : LDA 4, 10(5) ; Callee base for call
302 : LDA 6, 306(0) ; Return address
303 : ST 6, 0(4) ; Store return in callee frame
304 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
305 : LDA 7, 312(0) ; Call aLoop3
306 : LD 1, 7(5) ; Load callee result into R1
307 : LDC 2, 10(0) ; Callee frame size
308 : SUB 5, 5, 2 ; Pop callee frame
309 : ST 1, 6(5) ; Store function result into frame return slot
310 : LD 6, 0(5) ; Load return address
311 : LDA 7, 0(6) ; Return to caller
312 : LD 1, 5(5) ; Load parameter 'root' into R1
313 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2)
314 : LDA 4, 6(5) ; Callee base for arg copy
315 : LD 1, 8(5) ; Load staged arg 0 from caller temp
316 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
317 : LD 1, 4(5) ; Load parameter 'det' into R1
318 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2)
319 : LDA 4, 6(5) ; Callee base for arg copy
320 : LD 1, 8(5) ; Load staged arg 1 from caller temp
321 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
322 : LDA 4, 6(5) ; Callee base for call
323 : LDA 6, 327(0) ; Return address
324 : ST 6, 0(4) ; Store return in callee frame
325 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
326 : LDA 7, 713(0) ; Call ISROOT
327 : LD 1, 3(5) ; Load callee result into R1
328 : LDC 2, 6(0) ; Callee frame size
329 : SUB 5, 5, 2 ; Pop callee frame
330 : ST 1, 8(5) ; Spill left operand at depth 0
331 : LD 1, 5(5) ; Load parameter 'root' into R1
332 : ST 1, 9(5) ; Spill left operand at depth 1
333 : LDC 1, 1(0) ; Load integer-literal into R1
334 : LD 2, 9(5) ; Restore left operand from depth 1
335 : ADD 1, 2, 1 ; R1 = left + right
336 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2)
337 : LDA 4, 6(5) ; Callee base for arg copy
338 : LD 1, 8(5) ; Load staged arg 0 from caller temp
339 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
340 : LDA 4, 6(5) ; Callee base for call
341 : LDA 6, 345(0) ; Return address
342 : ST 6, 0(4) ; Store return in callee frame
343 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
344 : LDA 7, 729(0) ; Call EVEN
345 : LD 1, 2(5) ; Load callee result into R1
346 : LDC 2, 6(0) ; Callee frame size
347 : SUB 5, 5, 2 ; Pop callee frame
348 : LD 2, 8(5) ; Restore left operand from depth 0
349 : MUL 1, 2, 1 ; R1 = left AND right
350 : ST 1, 8(5) ; Spill left operand at depth 0
351 : LD 1, 6(5) ; Load parameter 'candidate' into R1
352 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2)
353 : LDA 4, 3(5) ; Callee base for arg copy
354 : LD 1, 8(5) ; Load staged arg 0 from caller temp
355 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
356 : LDA 4, 3(5) ; Callee base for call
357 : LDA 6, 361(0) ; Return address
358 : ST 6, 0(4) ; Store return in callee frame
359 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
360 : LDA 7, 464(0) ; Call isExcellent
361 : LD 1, 2(5) ; Load callee result into R1
362 : LDC 2, 3(0) ; Callee frame size
363 : SUB 5, 5, 2 ; Pop callee frame
364 : LD 2, 8(5) ; Restore left operand from depth 0
365 : MUL 1, 2, 1 ; R1 = left AND right
366 : JEQ 1, 396(0) ; If condition is false, jump to ELSE
367 : LD 1, 1(5) ; Load parameter 'a' into R1
368 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2)
369 : LDA 4, 7(5) ; Callee base for arg copy
370 : LD 1, 8(5) ; Load staged arg 0 from caller temp
371 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
372 : LD 1, 2(5) ; Load parameter 'n' into R1
373 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2)
374 : LDA 4, 7(5) ; Callee base for arg copy
375 : LD 1, 8(5) ; Load staged arg 1 from caller temp
376 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
377 : LD 1, 3(5) ; Load parameter 'upper' into R1
378 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2)
379 : LDA 4, 7(5) ; Callee base for arg copy
380 : LD 1, 8(5) ; Load staged arg 2 from caller temp
381 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
382 : LD 1, 6(5) ; Load parameter 'candidate' into R1
383 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2)
384 : LDA 4, 7(5) ; Callee base for arg copy
385 : LD 1, 8(5) ; Load staged arg 3 from caller temp
386 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
387 : LDA 4, 7(5) ; Callee base for call
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(4) ; Store return in callee frame
390 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
391 : LDA 7, 426(0) ; Call printCandidateAndContinue
392 : LD 1, 5(5) ; Load callee result into R1
393 : LDC 2, 7(0) ; Callee frame size
394 : SUB 5, 5, 2 ; Pop callee frame
395 : LDA 7, 423(0) ; Skip ELSE block
396 : LD 1, 1(5) ; Load parameter 'a' into R1
397 : ST 1, 8(5) ; Spill left operand at depth 0
398 : LDC 1, 1(0) ; Load integer-literal into R1
399 : LD 2, 8(5) ; Restore left operand from depth 0
400 : ADD 1, 2, 1 ; R1 = left + right
401 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2)
402 : LDA 4, 7(5) ; Callee base for arg copy
403 : LD 1, 8(5) ; Load staged arg 0 from caller temp
404 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
405 : LD 1, 2(5) ; Load parameter 'n' into R1
406 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2)
407 : LDA 4, 7(5) ; Callee base for arg copy
408 : LD 1, 8(5) ; Load staged arg 1 from caller temp
409 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
410 : LD 1, 3(5) ; Load parameter 'upper' into R1
411 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2)
412 : LDA 4, 7(5) ; Callee base for arg copy
413 : LD 1, 8(5) ; Load staged arg 2 from caller temp
414 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
415 : LDA 4, 7(5) ; Callee base for call
416 : LDA 6, 420(0) ; Return address
417 : ST 6, 0(4) ; Store return in callee frame
418 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
419 : LDA 7, 93(0) ; Call aLoop
420 : LD 1, 4(5) ; Load callee result into R1
421 : LDC 2, 7(0) ; Callee frame size
422 : SUB 5, 5, 2 ; Pop callee frame
423 : ST 1, 7(5) ; Store function result into frame return slot
424 : LD 6, 0(5) ; Load return address
425 : LDA 7, 0(6) ; Return to caller
426 : LD 1, 4(5) ; Load parameter 'candidate' into R1
427 : LDA 4, 3(5) ; Callee base for built-in print
428 : LDA 6, 432(0) ; Return address
429 : ST 6, 0(4) ; Store return address in callee frame
430 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
431 : LDA 7, 9(0) ; Call built-in print
432 : LDC 2, 3(0) ; Callee frame size (print)
433 : SUB 5, 5, 2 ; Pop back to caller
434 : LD 1, 1(5) ; Load parameter 'a' into R1
435 : ST 1, 6(5) ; Spill left operand at depth 0
436 : LDC 1, 1(0) ; Load integer-literal into R1
437 : LD 2, 6(5) ; Restore left operand from depth 0
438 : ADD 1, 2, 1 ; R1 = left + right
439 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
440 : LDA 4, 7(5) ; Callee base for arg copy
441 : LD 1, 6(5) ; Load staged arg 0 from caller temp
442 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
443 : LD 1, 2(5) ; Load parameter 'n' into R1
444 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
445 : LDA 4, 7(5) ; Callee base for arg copy
446 : LD 1, 6(5) ; Load staged arg 1 from caller temp
447 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
448 : LD 1, 3(5) ; Load parameter 'upper' into R1
449 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
450 : LDA 4, 7(5) ; Callee base for arg copy
451 : LD 1, 6(5) ; Load staged arg 2 from caller temp
452 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
453 : LDA 4, 7(5) ; Callee base for call
454 : LDA 6, 458(0) ; Return address
455 : ST 6, 0(4) ; Store return in callee frame
456 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
457 : LDA 7, 93(0) ; Call aLoop
458 : LD 1, 4(5) ; Load callee result into R1
459 : LDC 2, 7(0) ; Callee frame size
460 : SUB 5, 5, 2 ; Pop callee frame
461 : ST 1, 5(5) ; Store function result into frame return slot
462 : LD 6, 0(5) ; Load return address
463 : LDA 7, 0(6) ; Return to caller
464 : LD 1, 1(5) ; Load parameter 'n' into R1
465 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
466 : LDA 4, 5(5) ; Callee base for arg copy
467 : LD 1, 3(5) ; Load staged arg 0 from caller temp
468 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
469 : LD 1, 1(5) ; Load parameter 'n' into R1
470 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
471 : LDA 4, 5(5) ; Callee base for arg copy
472 : LD 1, 3(5) ; Load staged arg 0 from caller temp
473 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
474 : LDA 4, 5(5) ; Callee base for call
475 : LDA 6, 479(0) ; Return address
476 : ST 6, 0(4) ; Store return in callee frame
477 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
478 : LDA 7, 677(0) ; Call length
479 : LD 1, 2(5) ; Load callee result into R1
480 : LDC 2, 5(0) ; Callee frame size
481 : SUB 5, 5, 2 ; Pop callee frame
482 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
483 : LDA 4, 5(5) ; Callee base for arg copy
484 : LD 1, 3(5) ; Load staged arg 1 from caller temp
485 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
486 : LDA 4, 5(5) ; Callee base for call
487 : LDA 6, 491(0) ; Return address
488 : ST 6, 0(4) ; Store return in callee frame
489 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
490 : LDA 7, 497(0) ; Call isExcellentSwitch
491 : LD 1, 3(5) ; Load callee result into R1
492 : LDC 2, 5(0) ; Callee frame size
493 : SUB 5, 5, 2 ; Pop callee frame
494 : ST 1, 2(5) ; Store function result into frame return slot
495 : LD 6, 0(5) ; Load return address
496 : LDA 7, 0(6) ; Return to caller
497 : LD 1, 2(5) ; Load parameter 'length' into R1
498 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
499 : LDA 4, 5(5) ; Callee base for arg copy
500 : LD 1, 4(5) ; Load staged arg 0 from caller temp
501 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
502 : LDA 4, 5(5) ; Callee base for call
503 : LDA 6, 507(0) ; Return address
504 : ST 6, 0(4) ; Store return in callee frame
505 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
506 : LDA 7, 973(0) ; Call ODD
507 : LD 1, 2(5) ; Load callee result into R1
508 : LDC 2, 5(0) ; Callee frame size
509 : SUB 5, 5, 2 ; Pop callee frame
510 : JEQ 1, 513(0) ; If condition is false, jump to ELSE
511 : LDC 1, 0(0) ; Load boolean-literal into R1
512 : LDA 7, 563(0) ; Skip ELSE block
513 : LD 1, 1(5) ; Load parameter 'n' into R1
514 : ST 1, 4(5) ; Spill left operand at depth 0
515 : LD 1, 1(5) ; Load parameter 'n' into R1
516 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
517 : LDA 4, 5(5) ; Callee base for arg copy
518 : LD 1, 4(5) ; Load staged arg 0 from caller temp
519 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
520 : LDA 4, 5(5) ; Callee base for call
521 : LDA 6, 525(0) ; Return address
522 : ST 6, 0(4) ; Store return in callee frame
523 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
524 : LDA 7, 636(0) ; Call a
525 : LD 1, 2(5) ; Load callee result into R1
526 : LDC 2, 5(0) ; Callee frame size
527 : SUB 5, 5, 2 ; Pop callee frame
528 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
529 : LDA 4, 6(5) ; Callee base for arg copy
530 : LD 1, 4(5) ; Load staged arg 0 from caller temp
531 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
532 : LD 1, 1(5) ; Load parameter 'n' into R1
533 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
534 : LDA 4, 4(5) ; Callee base for arg copy
535 : LD 1, 4(5) ; Load staged arg 0 from caller temp
536 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
537 : LDA 4, 4(5) ; Callee base for call
538 : LDA 6, 542(0) ; Return address
539 : ST 6, 0(4) ; Store return in callee frame
540 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
541 : LDA 7, 582(0) ; Call b
542 : LD 1, 2(5) ; Load callee result into R1
543 : LDC 2, 4(0) ; Callee frame size
544 : SUB 5, 5, 2 ; Pop callee frame
545 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
546 : LDA 4, 6(5) ; Callee base for arg copy
547 : LD 1, 4(5) ; Load staged arg 1 from caller temp
548 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
549 : LDA 4, 6(5) ; Callee base for call
550 : LDA 6, 554(0) ; Return address
551 : ST 6, 0(4) ; Store return in callee frame
552 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
553 : LDA 7, 566(0) ; Call excellentDiff
554 : LD 1, 3(5) ; Load callee result into R1
555 : LDC 2, 6(0) ; Callee frame size
556 : SUB 5, 5, 2 ; Pop callee frame
557 : LD 2, 4(5) ; Restore left operand from depth 0
558 : SUB 1, 2, 1 ; left - right for equality check
559 : JEQ 1, 2(7) ; If R1 == 0, jump to true
560 : LDC 1, 0(0) ; false
561 : LDA 7, 1(7) ; skip setting true
562 : LDC 1, 1(0) ; true
563 : ST 1, 3(5) ; Store function result into frame return slot
564 : LD 6, 0(5) ; Load return address
565 : LDA 7, 0(6) ; Return to caller
566 : LD 1, 2(5) ; Load parameter 'b' into R1
567 : ST 1, 4(5) ; Spill left operand at depth 0
568 : LD 1, 2(5) ; Load parameter 'b' into R1
569 : LD 2, 4(5) ; Restore left operand from depth 0
570 : MUL 1, 2, 1 ; R1 = left * right
571 : ST 1, 4(5) ; Spill left operand at depth 0
572 : LD 1, 1(5) ; Load parameter 'a' into R1
573 : ST 1, 5(5) ; Spill left operand at depth 1
574 : LD 1, 1(5) ; Load parameter 'a' into R1
575 : LD 2, 5(5) ; Restore left operand from depth 1
576 : MUL 1, 2, 1 ; R1 = left * right
577 : LD 2, 4(5) ; Restore left operand from depth 0
578 : SUB 1, 2, 1 ; R1 = left - right
579 : ST 1, 3(5) ; Store function result into frame return slot
580 : LD 6, 0(5) ; Load return address
581 : LDA 7, 0(6) ; Return to caller
582 : LD 1, 1(5) ; Load parameter 'n' into R1
583 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
584 : LDA 4, 7(5) ; Callee base for arg copy
585 : LD 1, 3(5) ; Load staged arg 0 from caller temp
586 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
587 : LDC 1, 10(0) ; Load integer-literal into R1
588 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
589 : LDA 4, 6(5) ; Callee base for arg copy
590 : LD 1, 3(5) ; Load staged arg 0 from caller temp
591 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
592 : LD 1, 1(5) ; Load parameter 'n' into R1
593 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
594 : LDA 4, 5(5) ; Callee base for arg copy
595 : LD 1, 3(5) ; Load staged arg 0 from caller temp
596 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
597 : LDA 4, 5(5) ; Callee base for call
598 : LDA 6, 602(0) ; Return address
599 : ST 6, 0(4) ; Store return in callee frame
600 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
601 : LDA 7, 677(0) ; Call length
602 : LD 1, 2(5) ; Load callee result into R1
603 : LDC 2, 5(0) ; Callee frame size
604 : SUB 5, 5, 2 ; Pop callee frame
605 : ST 1, 3(5) ; Spill left operand at depth 0
606 : LDC 1, 2(0) ; Load integer-literal into R1
607 : LD 2, 3(5) ; Restore left operand from depth 0
608 : DIV 1, 2, 1 ; R1 = left / right
609 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
610 : LDA 4, 6(5) ; Callee base for arg copy
611 : LD 1, 3(5) ; Load staged arg 1 from caller temp
612 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
613 : LDA 4, 6(5) ; Callee base for call
614 : LDA 6, 618(0) ; Return address
615 : ST 6, 0(4) ; Store return in callee frame
616 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
617 : LDA 7, 1018(0) ; Call EXP
618 : LD 1, 3(5) ; Load callee result into R1
619 : LDC 2, 6(0) ; Callee frame size
620 : SUB 5, 5, 2 ; Pop callee frame
621 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
622 : LDA 4, 7(5) ; Callee base for arg copy
623 : LD 1, 3(5) ; Load staged arg 1 from caller temp
624 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
625 : LDA 4, 7(5) ; Callee base for call
626 : LDA 6, 630(0) ; Return address
627 : ST 6, 0(4) ; Store return in callee frame
628 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
629 : LDA 7, 1059(0) ; Call MOD
630 : LD 1, 3(5) ; Load callee result into R1
631 : LDC 2, 7(0) ; Callee frame size
632 : SUB 5, 5, 2 ; Pop callee frame
633 : ST 1, 2(5) ; Store function result into frame return slot
634 : LD 6, 0(5) ; Load return address
635 : LDA 7, 0(6) ; Return to caller
636 : LD 1, 1(5) ; Load parameter 'n' into R1
637 : ST 1, 3(5) ; Spill left operand at depth 0
638 : LDC 1, 10(0) ; Load integer-literal into R1
639 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
640 : LDA 4, 6(5) ; Callee base for arg copy
641 : LD 1, 3(5) ; Load staged arg 0 from caller temp
642 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
643 : LD 1, 1(5) ; Load parameter 'n' into R1
644 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
645 : LDA 4, 5(5) ; Callee base for arg copy
646 : LD 1, 3(5) ; Load staged arg 0 from caller temp
647 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
648 : LDA 4, 5(5) ; Callee base for call
649 : LDA 6, 653(0) ; Return address
650 : ST 6, 0(4) ; Store return in callee frame
651 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
652 : LDA 7, 677(0) ; Call length
653 : LD 1, 2(5) ; Load callee result into R1
654 : LDC 2, 5(0) ; Callee frame size
655 : SUB 5, 5, 2 ; Pop callee frame
656 : ST 1, 4(5) ; Spill left operand at depth 1
657 : LDC 1, 2(0) ; Load integer-literal into R1
658 : LD 2, 4(5) ; Restore left operand from depth 1
659 : DIV 1, 2, 1 ; R1 = left / right
660 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
661 : LDA 4, 6(5) ; Callee base for arg copy
662 : LD 1, 3(5) ; Load staged arg 1 from caller temp
663 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
664 : LDA 4, 6(5) ; Callee base for call
665 : LDA 6, 669(0) ; Return address
666 : ST 6, 0(4) ; Store return in callee frame
667 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
668 : LDA 7, 1018(0) ; Call EXP
669 : LD 1, 3(5) ; Load callee result into R1
670 : LDC 2, 6(0) ; Callee frame size
671 : SUB 5, 5, 2 ; Pop callee frame
672 : LD 2, 3(5) ; Restore left operand from depth 0
673 : DIV 1, 2, 1 ; R1 = left / right
674 : ST 1, 2(5) ; Store function result into frame return slot
675 : LD 6, 0(5) ; Load return address
676 : LDA 7, 0(6) ; Return to caller
677 : LD 1, 1(5) ; Load parameter 'n' into R1
678 : ST 1, 3(5) ; Spill left operand at depth 0
679 : LDC 1, 10(0) ; Load integer-literal into R1
680 : LD 2, 3(5) ; Restore left operand from depth 0
681 : SUB 1, 2, 1 ; left - right for less-than check
682 : JLT 1, 2(7) ; If R1 < 0, jump to true
683 : LDC 1, 0(0) ; false
684 : LDA 7, 1(7) ; skip setting true
685 : LDC 1, 1(0) ; true
686 : JEQ 1, 689(0) ; If condition is false, jump to ELSE
687 : LDC 1, 1(0) ; Load integer-literal into R1
688 : LDA 7, 710(0) ; Skip ELSE block
689 : LDC 1, 1(0) ; Load integer-literal into R1
690 : ST 1, 3(5) ; Spill left operand at depth 0
691 : LD 1, 1(5) ; Load parameter 'n' into R1
692 : ST 1, 4(5) ; Spill left operand at depth 1
693 : LDC 1, 10(0) ; Load integer-literal into R1
694 : LD 2, 4(5) ; Restore left operand from depth 1
695 : DIV 1, 2, 1 ; R1 = left / right
696 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
697 : LDA 4, 5(5) ; Callee base for arg copy
698 : LD 1, 3(5) ; Load staged arg 0 from caller temp
699 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
700 : LDA 4, 5(5) ; Callee base for call
701 : LDA 6, 705(0) ; Return address
702 : ST 6, 0(4) ; Store return in callee frame
703 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
704 : LDA 7, 677(0) ; Call length
705 : LD 1, 2(5) ; Load callee result into R1
706 : LDC 2, 5(0) ; Callee frame size
707 : SUB 5, 5, 2 ; Pop callee frame
708 : LD 2, 3(5) ; Restore left operand from depth 0
709 : ADD 1, 2, 1 ; R1 = left + right
710 : ST 1, 2(5) ; Store function result into frame return slot
711 : LD 6, 0(5) ; Load return address
712 : LDA 7, 0(6) ; Return to caller
713 : LD 1, 2(5) ; Load parameter 'n' into R1
714 : ST 1, 4(5) ; Spill left operand at depth 0
715 : LD 1, 1(5) ; Load parameter 'r' into R1
716 : ST 1, 5(5) ; Spill left operand at depth 1
717 : LD 1, 1(5) ; Load parameter 'r' into R1
718 : LD 2, 5(5) ; Restore left operand from depth 1
719 : MUL 1, 2, 1 ; R1 = left * right
720 : LD 2, 4(5) ; Restore left operand from depth 0
721 : SUB 1, 2, 1 ; left - right for equality check
722 : JEQ 1, 2(7) ; If R1 == 0, jump to true
723 : LDC 1, 0(0) ; false
724 : LDA 7, 1(7) ; skip setting true
725 : LDC 1, 1(0) ; true
726 : ST 1, 3(5) ; Store function result into frame return slot
727 : LD 6, 0(5) ; Load return address
728 : LDA 7, 0(6) ; Return to caller
729 : LD 1, 1(5) ; Load parameter 'n' into R1
730 : ST 1, 3(5) ; Spill left operand at depth 0
731 : LDC 1, 2(0) ; Load integer-literal into R1
732 : ST 1, 4(5) ; Spill left operand at depth 1
733 : LD 1, 1(5) ; Load parameter 'n' into R1
734 : ST 1, 5(5) ; Spill left operand at depth 2
735 : LDC 1, 2(0) ; Load integer-literal into R1
736 : LD 2, 5(5) ; Restore left operand from depth 2
737 : DIV 1, 2, 1 ; R1 = left / right
738 : LD 2, 4(5) ; Restore left operand from depth 1
739 : MUL 1, 2, 1 ; R1 = left * right
740 : LD 2, 3(5) ; Restore left operand from depth 0
741 : SUB 1, 2, 1 ; left - right for equality check
742 : JEQ 1, 2(7) ; If R1 == 0, jump to true
743 : LDC 1, 0(0) ; false
744 : LDA 7, 1(7) ; skip setting true
745 : LDC 1, 1(0) ; true
746 : ST 1, 2(5) ; Store function result into frame return slot
747 : LD 6, 0(5) ; Load return address
748 : LDA 7, 0(6) ; Return to caller
749 : LD 1, 4(5) ; Load parameter 'mid' into R1
750 : ST 1, 6(5) ; Spill left operand at depth 0
751 : LD 1, 4(5) ; Load parameter 'mid' into R1
752 : LD 2, 6(5) ; Restore left operand from depth 0
753 : MUL 1, 2, 1 ; R1 = left * right
754 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
755 : LDA 4, 6(5) ; Callee base for arg copy
756 : LD 1, 6(5) ; Load staged arg 0 from caller temp
757 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
758 : LD 1, 1(5) ; Load parameter 'n' into R1
759 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
760 : LDA 4, 6(5) ; Callee base for arg copy
761 : LD 1, 6(5) ; Load staged arg 1 from caller temp
762 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
763 : LDA 4, 6(5) ; Callee base for call
764 : LDA 6, 768(0) ; Return address
765 : ST 6, 0(4) ; Store return in callee frame
766 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
767 : LDA 7, 949(0) ; Call LE
768 : LD 1, 3(5) ; Load callee result into R1
769 : LDC 2, 6(0) ; Callee frame size
770 : SUB 5, 5, 2 ; Pop callee frame
771 : JEQ 1, 796(0) ; If condition is false, jump to ELSE
772 : LD 1, 1(5) ; Load parameter 'n' into R1
773 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
774 : LDA 4, 7(5) ; Callee base for arg copy
775 : LD 1, 6(5) ; Load staged arg 0 from caller temp
776 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
777 : LD 1, 4(5) ; Load parameter 'mid' into R1
778 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
779 : LDA 4, 7(5) ; Callee base for arg copy
780 : LD 1, 6(5) ; Load staged arg 1 from caller temp
781 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
782 : LD 1, 3(5) ; Load parameter 'high' into R1
783 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
784 : LDA 4, 7(5) ; Callee base for arg copy
785 : LD 1, 6(5) ; Load staged arg 2 from caller temp
786 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
787 : LDA 4, 7(5) ; Callee base for call
788 : LDA 6, 792(0) ; Return address
789 : ST 6, 0(4) ; Store return in callee frame
790 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
791 : LDA 7, 822(0) ; Call SQRTSEARCH
792 : LD 1, 4(5) ; Load callee result into R1
793 : LDC 2, 7(0) ; Callee frame size
794 : SUB 5, 5, 2 ; Pop callee frame
795 : LDA 7, 819(0) ; Skip ELSE block
796 : LD 1, 1(5) ; Load parameter 'n' into R1
797 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
798 : LDA 4, 7(5) ; Callee base for arg copy
799 : LD 1, 6(5) ; Load staged arg 0 from caller temp
800 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
801 : LD 1, 2(5) ; Load parameter 'low' into R1
802 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
803 : LDA 4, 7(5) ; Callee base for arg copy
804 : LD 1, 6(5) ; Load staged arg 1 from caller temp
805 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
806 : LD 1, 4(5) ; Load parameter 'mid' into R1
807 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
808 : LDA 4, 7(5) ; Callee base for arg copy
809 : LD 1, 6(5) ; Load staged arg 2 from caller temp
810 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
811 : LDA 4, 7(5) ; Callee base for call
812 : LDA 6, 816(0) ; Return address
813 : ST 6, 0(4) ; Store return in callee frame
814 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
815 : LDA 7, 822(0) ; Call SQRTSEARCH
816 : LD 1, 4(5) ; Load callee result into R1
817 : LDC 2, 7(0) ; Callee frame size
818 : SUB 5, 5, 2 ; Pop callee frame
819 : ST 1, 5(5) ; Store function result into frame return slot
820 : LD 6, 0(5) ; Load return address
821 : LDA 7, 0(6) ; Return to caller
822 : LD 1, 3(5) ; Load parameter 'high' into R1
823 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
824 : LDA 4, 6(5) ; Callee base for arg copy
825 : LD 1, 5(5) ; Load staged arg 0 from caller temp
826 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
827 : LD 1, 2(5) ; Load parameter 'low' into R1
828 : ST 1, 5(5) ; Spill left operand at depth 0
829 : LDC 1, 1(0) ; Load integer-literal into R1
830 : LD 2, 5(5) ; Restore left operand from depth 0
831 : ADD 1, 2, 1 ; R1 = left + right
832 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
833 : LDA 4, 6(5) ; Callee base for arg copy
834 : LD 1, 5(5) ; Load staged arg 1 from caller temp
835 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
836 : LDA 4, 6(5) ; Callee base for call
837 : LDA 6, 841(0) ; Return address
838 : ST 6, 0(4) ; Store return in callee frame
839 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
840 : LDA 7, 949(0) ; Call LE
841 : LD 1, 3(5) ; Load callee result into R1
842 : LDC 2, 6(0) ; Callee frame size
843 : SUB 5, 5, 2 ; Pop callee frame
844 : JEQ 1, 884(0) ; If condition is false, jump to ELSE
845 : LD 1, 1(5) ; Load parameter 'n' into R1
846 : ST 1, 5(5) ; Spill left operand at depth 0
847 : LD 1, 2(5) ; Load parameter 'low' into R1
848 : ST 1, 6(5) ; Spill left operand at depth 1
849 : LD 1, 2(5) ; Load parameter 'low' into R1
850 : LD 2, 6(5) ; Restore left operand from depth 1
851 : MUL 1, 2, 1 ; R1 = left * right
852 : LD 2, 5(5) ; Restore left operand from depth 0
853 : SUB 1, 2, 1 ; R1 = left - right
854 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
855 : LDA 4, 6(5) ; Callee base for arg copy
856 : LD 1, 5(5) ; Load staged arg 0 from caller temp
857 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
858 : LD 1, 3(5) ; Load parameter 'high' into R1
859 : ST 1, 5(5) ; Spill left operand at depth 0
860 : LD 1, 3(5) ; Load parameter 'high' into R1
861 : LD 2, 5(5) ; Restore left operand from depth 0
862 : MUL 1, 2, 1 ; R1 = left * right
863 : ST 1, 5(5) ; Spill left operand at depth 0
864 : LD 1, 1(5) ; Load parameter 'n' into R1
865 : LD 2, 5(5) ; Restore left operand from depth 0
866 : SUB 1, 2, 1 ; R1 = left - right
867 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
868 : LDA 4, 6(5) ; Callee base for arg copy
869 : LD 1, 5(5) ; Load staged arg 1 from caller temp
870 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
871 : LDA 4, 6(5) ; Callee base for call
872 : LDA 6, 876(0) ; Return address
873 : ST 6, 0(4) ; Store return in callee frame
874 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
875 : LDA 7, 949(0) ; Call LE
876 : LD 1, 3(5) ; Load callee result into R1
877 : LDC 2, 6(0) ; Callee frame size
878 : SUB 5, 5, 2 ; Pop callee frame
879 : JEQ 1, 882(0) ; If condition is false, jump to ELSE
880 : LD 1, 2(5) ; Load parameter 'low' into R1
881 : LDA 7, 883(0) ; Skip ELSE block
882 : LD 1, 3(5) ; Load parameter 'high' into R1
883 : LDA 7, 920(0) ; Skip ELSE block
884 : LD 1, 1(5) ; Load parameter 'n' into R1
885 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
886 : LDA 4, 7(5) ; Callee base for arg copy
887 : LD 1, 5(5) ; Load staged arg 0 from caller temp
888 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
889 : LD 1, 2(5) ; Load parameter 'low' into R1
890 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
891 : LDA 4, 7(5) ; Callee base for arg copy
892 : LD 1, 5(5) ; Load staged arg 1 from caller temp
893 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
894 : LD 1, 3(5) ; Load parameter 'high' into R1
895 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
896 : LDA 4, 7(5) ; Callee base for arg copy
897 : LD 1, 5(5) ; Load staged arg 2 from caller temp
898 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
899 : LD 1, 2(5) ; Load parameter 'low' into R1
900 : ST 1, 5(5) ; Spill left operand at depth 0
901 : LD 1, 3(5) ; Load parameter 'high' into R1
902 : LD 2, 5(5) ; Restore left operand from depth 0
903 : ADD 1, 2, 1 ; R1 = left + right
904 : ST 1, 5(5) ; Spill left operand at depth 0
905 : LDC 1, 2(0) ; Load integer-literal into R1
906 : LD 2, 5(5) ; Restore left operand from depth 0
907 : DIV 1, 2, 1 ; R1 = left / right
908 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
909 : LDA 4, 7(5) ; Callee base for arg copy
910 : LD 1, 5(5) ; Load staged arg 3 from caller temp
911 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
912 : LDA 4, 7(5) ; Callee base for call
913 : LDA 6, 917(0) ; Return address
914 : ST 6, 0(4) ; Store return in callee frame
915 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
916 : LDA 7, 749(0) ; Call SQRTSPLIT
917 : LD 1, 5(5) ; Load callee result into R1
918 : LDC 2, 7(0) ; Callee frame size
919 : SUB 5, 5, 2 ; Pop callee frame
920 : ST 1, 4(5) ; Store function result into frame return slot
921 : LD 6, 0(5) ; Load return address
922 : LDA 7, 0(6) ; Return to caller
923 : LD 1, 1(5) ; Load parameter 'n' into R1
924 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
925 : LDA 4, 7(5) ; Callee base for arg copy
926 : LD 1, 3(5) ; Load staged arg 0 from caller temp
927 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
928 : LDC 1, 0(0) ; Load integer-literal into R1
929 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
930 : LDA 4, 7(5) ; Callee base for arg copy
931 : LD 1, 3(5) ; Load staged arg 1 from caller temp
932 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
933 : LD 1, 1(5) ; Load parameter 'n' into R1
934 : ST 1, 3(5) ; Stage arg 2 in caller temp (P+2)
935 : LDA 4, 7(5) ; Callee base for arg copy
936 : LD 1, 3(5) ; Load staged arg 2 from caller temp
937 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
938 : LDA 4, 7(5) ; Callee base for call
939 : LDA 6, 943(0) ; Return address
940 : ST 6, 0(4) ; Store return in callee frame
941 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
942 : LDA 7, 822(0) ; Call SQRTSEARCH
943 : LD 1, 4(5) ; Load callee result into R1
944 : LDC 2, 7(0) ; Callee frame size
945 : SUB 5, 5, 2 ; Pop callee frame
946 : ST 1, 2(5) ; Store function result into frame return slot
947 : LD 6, 0(5) ; Load return address
948 : LDA 7, 0(6) ; Return to caller
949 : LD 1, 1(5) ; Load parameter 'p' into R1
950 : ST 1, 4(5) ; Spill left operand at depth 0
951 : LD 1, 2(5) ; Load parameter 'q' into R1
952 : LD 2, 4(5) ; Restore left operand from depth 0
953 : SUB 1, 2, 1 ; left - right for less-than check
954 : JLT 1, 2(7) ; If R1 < 0, jump to true
955 : LDC 1, 0(0) ; false
956 : LDA 7, 1(7) ; skip setting true
957 : LDC 1, 1(0) ; true
958 : ST 1, 4(5) ; Spill left operand at depth 0
959 : LD 1, 1(5) ; Load parameter 'p' into R1
960 : ST 1, 5(5) ; Spill left operand at depth 1
961 : LD 1, 2(5) ; Load parameter 'q' into R1
962 : LD 2, 5(5) ; Restore left operand from depth 1
963 : SUB 1, 2, 1 ; left - right for equality check
964 : JEQ 1, 2(7) ; If R1 == 0, jump to true
965 : LDC 1, 0(0) ; false
966 : LDA 7, 1(7) ; skip setting true
967 : LDC 1, 1(0) ; true
968 : LD 2, 4(5) ; Restore left operand from depth 0
969 : ADD 1, 2, 1 ; R1 = left OR right
970 : ST 1, 3(5) ; Store function result into frame return slot
971 : LD 6, 0(5) ; Load return address
972 : LDA 7, 0(6) ; Return to caller
973 : LDC 1, 0(0) ; Load integer-literal into R1
974 : ST 1, 3(5) ; Spill left operand at depth 0
975 : LD 1, 1(5) ; Load parameter 'n' into R1
976 : LD 2, 3(5) ; Restore left operand from depth 0
977 : SUB 1, 2, 1 ; left - right for less-than check
978 : JLT 1, 2(7) ; If R1 < 0, jump to true
979 : LDC 1, 0(0) ; false
980 : LDA 7, 1(7) ; skip setting true
981 : LDC 1, 1(0) ; true
982 : JEQ 1, 1001(0) ; If condition is false, jump to ELSE
983 : LDC 1, 2(0) ; Load integer-literal into R1
984 : ST 1, 3(5) ; Spill left operand at depth 0
985 : LD 1, 1(5) ; Load parameter 'n' into R1
986 : ST 1, 4(5) ; Spill left operand at depth 1
987 : LDC 1, 2(0) ; Load integer-literal into R1
988 : LD 2, 4(5) ; Restore left operand from depth 1
989 : DIV 1, 2, 1 ; R1 = left / right
990 : LD 2, 3(5) ; Restore left operand from depth 0
991 : MUL 1, 2, 1 ; R1 = left * right
992 : ST 1, 3(5) ; Spill left operand at depth 0
993 : LD 1, 1(5) ; Load parameter 'n' into R1
994 : LD 2, 3(5) ; Restore left operand from depth 0
995 : SUB 1, 2, 1 ; left - right for less-than check
996 : JLT 1, 2(7) ; If R1 < 0, jump to true
997 : LDC 1, 0(0) ; false
998 : LDA 7, 1(7) ; skip setting true
999 : LDC 1, 1(0) ; true
1000 : LDA 7, 1015(0) ; Skip ELSE block
1001 : LD 1, 1(5) ; Load parameter 'n' into R1
1002 : SUB 1, 0, 1 ; Negate value in R1
1003 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
1004 : LDA 4, 5(5) ; Callee base for arg copy
1005 : LD 1, 3(5) ; Load staged arg 0 from caller temp
1006 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
1007 : LDA 4, 5(5) ; Callee base for call
1008 : LDA 6, 1012(0) ; Return address
1009 : ST 6, 0(4) ; Store return in callee frame
1010 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
1011 : LDA 7, 973(0) ; Call ODD
1012 : LD 1, 2(5) ; Load callee result into R1
1013 : LDC 2, 5(0) ; Callee frame size
1014 : SUB 5, 5, 2 ; Pop callee frame
1015 : ST 1, 2(5) ; Store function result into frame return slot
1016 : LD 6, 0(5) ; Load return address
1017 : LDA 7, 0(6) ; Return to caller
1018 : LD 1, 2(5) ; Load parameter 'n' into R1
1019 : ST 1, 4(5) ; Spill left operand at depth 0
1020 : LDC 1, 0(0) ; Load integer-literal into R1
1021 : LD 2, 4(5) ; Restore left operand from depth 0
1022 : SUB 1, 2, 1 ; left - right for equality check
1023 : JEQ 1, 2(7) ; If R1 == 0, jump to true
1024 : LDC 1, 0(0) ; false
1025 : LDA 7, 1(7) ; skip setting true
1026 : LDC 1, 1(0) ; true
1027 : JEQ 1, 1030(0) ; If condition is false, jump to ELSE
1028 : LDC 1, 1(0) ; Load integer-literal into R1
1029 : LDA 7, 1056(0) ; Skip ELSE block
1030 : LD 1, 1(5) ; Load parameter 'm' into R1
1031 : ST 1, 4(5) ; Spill left operand at depth 0
1032 : LD 1, 1(5) ; Load parameter 'm' into R1
1033 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
1034 : LDA 4, 6(5) ; Callee base for arg copy
1035 : LD 1, 4(5) ; Load staged arg 0 from caller temp
1036 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
1037 : LD 1, 2(5) ; Load parameter 'n' into R1
1038 : ST 1, 5(5) ; Spill left operand at depth 1
1039 : LDC 1, 1(0) ; Load integer-literal into R1
1040 : LD 2, 5(5) ; Restore left operand from depth 1
1041 : SUB 1, 2, 1 ; R1 = left - right
1042 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
1043 : LDA 4, 6(5) ; Callee base for arg copy
1044 : LD 1, 4(5) ; Load staged arg 1 from caller temp
1045 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
1046 : LDA 4, 6(5) ; Callee base for call
1047 : LDA 6, 1051(0) ; Return address
1048 : ST 6, 0(4) ; Store return in callee frame
1049 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
1050 : LDA 7, 1018(0) ; Call EXP
1051 : LD 1, 3(5) ; Load callee result into R1
1052 : LDC 2, 6(0) ; Callee frame size
1053 : SUB 5, 5, 2 ; Pop callee frame
1054 : LD 2, 4(5) ; Restore left operand from depth 0
1055 : MUL 1, 2, 1 ; R1 = left * right
1056 : ST 1, 3(5) ; Store function result into frame return slot
1057 : LD 6, 0(5) ; Load return address
1058 : LDA 7, 0(6) ; Return to caller
1059 : LD 1, 1(5) ; Load parameter 'm' into R1
1060 : ST 1, 4(5) ; Spill left operand at depth 0
1061 : LD 1, 2(5) ; Load parameter 'n' into R1
1062 : ST 1, 5(5) ; Spill left operand at depth 1
1063 : LD 1, 1(5) ; Load parameter 'm' into R1
1064 : ST 1, 6(5) ; Spill left operand at depth 2
1065 : LD 1, 2(5) ; Load parameter 'n' into R1
1066 : LD 2, 6(5) ; Restore left operand from depth 2
1067 : DIV 1, 2, 1 ; R1 = left / right
1068 : LD 2, 5(5) ; Restore left operand from depth 1
1069 : MUL 1, 2, 1 ; R1 = left * right
1070 : LD 2, 4(5) ; Restore left operand from depth 0
1071 : SUB 1, 2, 1 ; R1 = left - right
1072 : ST 1, 3(5) ; Store function result into frame return slot
1073 : LD 6, 0(5) ; Load return address
1074 : LDA 7, 0(6) ; Return to caller
