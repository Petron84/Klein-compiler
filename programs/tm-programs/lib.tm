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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDA 4, 6(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 238(0) ; Call SQRT
21 : LD 1, 2(5) ; Load callee result into R1
22 : LDC 2, 6(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : LDA 4, 3(5) ; Callee base for built-in print
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return address in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 9(0) ; Call built-in print
29 : LDC 2, 3(0) ; Callee frame size (print)
30 : SUB 5, 5, 2 ; Pop back to caller
31 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
32 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
33 : LDA 4, 5(5) ; Callee base for arg copy
34 : LD 1, 3(5) ; Load staged arg 0 from caller temp
35 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return in callee frame
38 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
39 : LDA 7, 261(0) ; Call ODD
40 : LD 1, 2(5) ; Load callee result into R1
41 : LDC 2, 5(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop callee frame
43 : ST 1, 2(5) ; Store result into caller’s frame
44 : LD 1, 2(5) ; Load main return value into R1
45 : LD 6, 0(5) ; Load main return address
46 : LDA 7, 0(6) ; Return from main
47 : LD 1, 4(5) ; Load parameter 'mid' into R1
48 : ST 1, 6(5) ; Spill left operand at depth 0
49 : LD 1, 4(5) ; Load parameter 'mid' into R1
50 : LD 2, 6(5) ; Restore left operand from depth 0
51 : MUL 1, 2, 1 ; R1 = left * right
52 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
53 : LD 1, 1(5) ; Load parameter 'n' into R1
54 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
55 : LDA 4, 6(5) ; Callee base for arg copy
56 : LD 1, 6(5) ; Load staged arg 0 from caller temp
57 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
58 : LD 1, 7(5) ; Load staged arg 1 from caller temp
59 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
63 : LDA 7, 592(0) ; Call LE
64 : LD 1, 3(5) ; Load callee result into R1
65 : LDC 2, 6(0) ; Callee frame size
66 : SUB 5, 5, 2 ; Pop callee frame
67 : JEQ 1, 89(0) ; If condition is false, jump to ELSE
68 : LD 1, 1(5) ; Load parameter 'n' into R1
69 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
70 : LD 1, 4(5) ; Load parameter 'mid' into R1
71 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
72 : LD 1, 3(5) ; Load parameter 'high' into R1
73 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
74 : LDA 4, 9(5) ; Callee base for arg copy
75 : LD 1, 6(5) ; Load staged arg 0 from caller temp
76 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
77 : LD 1, 7(5) ; Load staged arg 1 from caller temp
78 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
79 : LD 1, 8(5) ; Load staged arg 2 from caller temp
80 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
84 : LDA 7, 112(0) ; Call SQRTSEARCH
85 : LD 1, 4(5) ; Load callee result into R1
86 : LDC 2, 9(0) ; Callee frame size
87 : SUB 5, 5, 2 ; Pop callee frame
88 : LDA 7, !temp_6(0) ; Skip ELSE block
89 : LD 1, 1(5) ; Load parameter 'n' into R1
90 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
91 : LD 1, 2(5) ; Load parameter 'low' into R1
92 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
93 : LD 1, 4(5) ; Load parameter 'mid' into R1
94 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
95 : LDA 4, 9(5) ; Callee base for arg copy
96 : LD 1, 6(5) ; Load staged arg 0 from caller temp
97 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
98 : LD 1, 7(5) ; Load staged arg 1 from caller temp
99 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
100 : LD 1, 8(5) ; Load staged arg 2 from caller temp
101 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
105 : LDA 7, 112(0) ; Call SQRTSEARCH
106 : LD 1, 4(5) ; Load callee result into R1
107 : LDC 2, 9(0) ; Callee frame size
108 : SUB 5, 5, 2 ; Pop callee frame
109 : ST 1, 5(5) ; Store function result into frame return slot
110 : LD 6, 0(5) ; Load return address
111 : LDA 7, 0(6) ; Return to caller
112 : LD 1, 3(5) ; Load parameter 'high' into R1
113 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
114 : LD 1, 2(5) ; Load parameter 'low' into R1
115 : ST 1, 5(5) ; Spill left operand at depth 0
116 : LDC 1, 1(0) ; Load integer-literal into R1
117 : LD 2, 5(5) ; Restore left operand from depth 0
118 : ADD 1, 2, 1 ; R1 = left + right
119 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
120 : LDA 4, 6(5) ; Callee base for arg copy
121 : LD 1, 5(5) ; Load staged arg 0 from caller temp
122 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
123 : LD 1, 6(5) ; Load staged arg 1 from caller temp
124 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return in callee frame
127 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
128 : LDA 7, 592(0) ; Call LE
129 : LD 1, 3(5) ; Load callee result into R1
130 : LDC 2, 6(0) ; Callee frame size
131 : SUB 5, 5, 2 ; Pop callee frame
132 : JEQ 1, 192(0) ; If condition is false, jump to ELSE
133 : LD 1, 1(5) ; Load parameter 'n' into R1
134 : ST 1, 5(5) ; Spill left operand at depth 0
135 : LD 1, 2(5) ; Load parameter 'low' into R1
136 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
137 : LD 1, 2(5) ; Load parameter 'low' into R1
138 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
139 : LDA 4, 5(5) ; Callee base for arg copy
140 : LD 1, 5(5) ; Load staged arg 0 from caller temp
141 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
142 : LD 1, 6(5) ; Load staged arg 1 from caller temp
143 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
147 : LDA 7, 510(0) ; Call TIMES
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 5(0) ; Callee frame size
150 : SUB 5, 5, 2 ; Pop callee frame
151 : LD 2, 5(5) ; Restore left operand from depth 0
152 : SUB 1, 2, 1 ; R1 = left - right
153 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
154 : LD 1, 3(5) ; Load parameter 'high' into R1
155 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
156 : LD 1, 3(5) ; Load parameter 'high' into R1
157 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
158 : LDA 4, 5(5) ; Callee base for arg copy
159 : LD 1, 5(5) ; Load staged arg 0 from caller temp
160 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
161 : LD 1, 6(5) ; Load staged arg 1 from caller temp
162 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 510(0) ; Call TIMES
167 : LD 1, 3(5) ; Load callee result into R1
168 : LDC 2, 5(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : ST 1, 5(5) ; Spill left operand at depth 0
171 : LD 1, 1(5) ; Load parameter 'n' into R1
172 : LD 2, 5(5) ; Restore left operand from depth 0
173 : SUB 1, 2, 1 ; R1 = left - right
174 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
175 : LDA 4, 6(5) ; Callee base for arg copy
176 : LD 1, 5(5) ; Load staged arg 0 from caller temp
177 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
178 : LD 1, 6(5) ; Load staged arg 1 from caller temp
179 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
180 : LDA 6, 184(0) ; Return address
181 : ST 6, 0(4) ; Store return in callee frame
182 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
183 : LDA 7, 592(0) ; Call LE
184 : LD 1, 3(5) ; Load callee result into R1
185 : LDC 2, 6(0) ; Callee frame size
186 : SUB 5, 5, 2 ; Pop callee frame
187 : JEQ 1, 190(0) ; If condition is false, jump to ELSE
188 : LD 1, 2(5) ; Load parameter 'low' into R1
189 : LDA 7, !temp_14(0) ; Skip ELSE block
190 : LD 1, 3(5) ; Load parameter 'high' into R1
191 : LDA 7, !temp_15(0) ; Skip ELSE block
192 : LD 1, 1(5) ; Load parameter 'n' into R1
193 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
194 : LD 1, 2(5) ; Load parameter 'low' into R1
195 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
196 : LD 1, 3(5) ; Load parameter 'high' into R1
197 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
198 : LD 1, 2(5) ; Load parameter 'low' into R1
199 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
200 : LD 1, 3(5) ; Load parameter 'high' into R1
201 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
202 : LDA 4, 5(5) ; Callee base for arg copy
203 : LD 1, 5(5) ; Load staged arg 0 from caller temp
204 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
205 : LD 1, 6(5) ; Load staged arg 1 from caller temp
206 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return in callee frame
209 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
210 : LDA 7, 526(0) ; Call PLUS
211 : LD 1, 3(5) ; Load callee result into R1
212 : LDC 2, 5(0) ; Callee frame size
213 : SUB 5, 5, 2 ; Pop callee frame
214 : ST 1, 5(5) ; Spill left operand at depth 0
215 : LDC 1, 2(0) ; Load integer-literal into R1
216 : LD 2, 5(5) ; Restore left operand from depth 0
217 : DIV 1, 2, 1 ; R1 = left / right
218 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
219 : LDA 4, 9(5) ; Callee base for arg copy
220 : LD 1, 5(5) ; Load staged arg 0 from caller temp
221 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
222 : LD 1, 6(5) ; Load staged arg 1 from caller temp
223 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
224 : LD 1, 7(5) ; Load staged arg 2 from caller temp
225 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
226 : LD 1, 8(5) ; Load staged arg 3 from caller temp
227 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
228 : LDA 6, 232(0) ; Return address
229 : ST 6, 0(4) ; Store return in callee frame
230 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
231 : LDA 7, 47(0) ; Call SQRTSPLIT
232 : LD 1, 5(5) ; Load callee result into R1
233 : LDC 2, 9(0) ; Callee frame size
234 : SUB 5, 5, 2 ; Pop callee frame
235 : ST 1, 4(5) ; Store function result into frame return slot
236 : LD 6, 0(5) ; Load return address
237 : LDA 7, 0(6) ; Return to caller
238 : LD 1, 1(5) ; Load parameter 'n' into R1
239 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
240 : LDC 1, 0(0) ; Load integer-literal into R1
241 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
242 : LD 1, 1(5) ; Load parameter 'n' into R1
243 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2+i)
244 : LDA 4, 9(5) ; Callee base for arg copy
245 : LD 1, 3(5) ; Load staged arg 0 from caller temp
246 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
247 : LD 1, 4(5) ; Load staged arg 1 from caller temp
248 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
249 : LD 1, 5(5) ; Load staged arg 2 from caller temp
250 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
251 : LDA 6, 255(0) ; Return address
252 : ST 6, 0(4) ; Store return in callee frame
253 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
254 : LDA 7, 112(0) ; Call SQRTSEARCH
255 : LD 1, 4(5) ; Load callee result into R1
256 : LDC 2, 9(0) ; Callee frame size
257 : SUB 5, 5, 2 ; Pop callee frame
258 : ST 1, 2(5) ; Store function result into frame return slot
259 : LD 6, 0(5) ; Load return address
260 : LDA 7, 0(6) ; Return to caller
261 : LDC 1, 0(0) ; Load integer-literal into R1
262 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
263 : LD 1, 1(5) ; Load parameter 'n' into R1
264 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
265 : LDA 4, 6(5) ; Callee base for arg copy
266 : LD 1, 3(5) ; Load staged arg 0 from caller temp
267 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
268 : LD 1, 4(5) ; Load staged arg 1 from caller temp
269 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
270 : LDA 6, 274(0) ; Return address
271 : ST 6, 0(4) ; Store return in callee frame
272 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
273 : LDA 7, 592(0) ; Call LE
274 : LD 1, 3(5) ; Load callee result into R1
275 : LDC 2, 6(0) ; Callee frame size
276 : SUB 5, 5, 2 ; Pop callee frame
277 : JEQ 1, 329(0) ; If condition is false, jump to ELSE
278 : LD 1, 1(5) ; Load parameter 'n' into R1
279 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
280 : LD 1, 1(5) ; Load parameter 'n' into R1
281 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
282 : LDC 1, 2(0) ; Load integer-literal into R1
283 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
284 : LDA 4, 5(5) ; Callee base for arg copy
285 : LD 1, 3(5) ; Load staged arg 0 from caller temp
286 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
287 : LD 1, 4(5) ; Load staged arg 1 from caller temp
288 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
289 : LDA 6, 293(0) ; Return address
290 : ST 6, 0(4) ; Store return in callee frame
291 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
292 : LDA 7, 502(0) ; Call DIV
293 : LD 1, 3(5) ; Load callee result into R1
294 : LDC 2, 5(0) ; Callee frame size
295 : SUB 5, 5, 2 ; Pop callee frame
296 : ST 1, 3(5) ; Spill left operand at depth 0
297 : LD 1, 1(5) ; Load parameter 'n' into R1
298 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
299 : LDC 1, 2(0) ; Load integer-literal into R1
300 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
301 : LDA 4, 5(5) ; Callee base for arg copy
302 : LD 1, 3(5) ; Load staged arg 0 from caller temp
303 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
304 : LD 1, 4(5) ; Load staged arg 1 from caller temp
305 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
306 : LDA 6, 310(0) ; Return address
307 : ST 6, 0(4) ; Store return in callee frame
308 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
309 : LDA 7, 502(0) ; Call DIV
310 : LD 1, 3(5) ; Load callee result into R1
311 : LDC 2, 5(0) ; Callee frame size
312 : SUB 5, 5, 2 ; Pop callee frame
313 : LD 2, 3(5) ; Restore left operand from depth 0
314 : ADD 1, 2, 1 ; R1 = left + right
315 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
316 : LDA 4, 6(5) ; Callee base for arg copy
317 : LD 1, 3(5) ; Load staged arg 0 from caller temp
318 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
319 : LD 1, 4(5) ; Load staged arg 1 from caller temp
320 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
321 : LDA 6, 325(0) ; Return address
322 : ST 6, 0(4) ; Store return in callee frame
323 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
324 : LDA 7, 550(0) ; Call GT
325 : LD 1, 3(5) ; Load callee result into R1
326 : LDC 2, 6(0) ; Callee frame size
327 : SUB 5, 5, 2 ; Pop callee frame
328 : LDA 7, !temp_24(0) ; Skip ELSE block
329 : LD 1, 1(5) ; Load parameter 'n' into R1
330 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
331 : LDA 4, 3(5) ; Callee base for arg copy
332 : LD 1, 3(5) ; Load staged arg 0 from caller temp
333 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
334 : LDA 6, 338(0) ; Return address
335 : ST 6, 0(4) ; Store return in callee frame
336 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
337 : LDA 7, 497(0) ; Call NEG
338 : LD 1, 2(5) ; Load callee result into R1
339 : LDC 2, 3(0) ; Callee frame size
340 : SUB 5, 5, 2 ; Pop callee frame
341 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
342 : LD 1, 1(5) ; Load parameter 'n' into R1
343 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
344 : LDA 4, 3(5) ; Callee base for arg copy
345 : LD 1, 3(5) ; Load staged arg 0 from caller temp
346 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
347 : LDA 6, 351(0) ; Return address
348 : ST 6, 0(4) ; Store return in callee frame
349 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
350 : LDA 7, 497(0) ; Call NEG
351 : LD 1, 2(5) ; Load callee result into R1
352 : LDC 2, 3(0) ; Callee frame size
353 : SUB 5, 5, 2 ; Pop callee frame
354 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
355 : LDC 1, 2(0) ; Load integer-literal into R1
356 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
357 : LDA 4, 5(5) ; Callee base for arg copy
358 : LD 1, 3(5) ; Load staged arg 0 from caller temp
359 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
360 : LD 1, 4(5) ; Load staged arg 1 from caller temp
361 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
362 : LDA 6, 366(0) ; Return address
363 : ST 6, 0(4) ; Store return in callee frame
364 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
365 : LDA 7, 502(0) ; Call DIV
366 : LD 1, 3(5) ; Load callee result into R1
367 : LDC 2, 5(0) ; Callee frame size
368 : SUB 5, 5, 2 ; Pop callee frame
369 : ST 1, 3(5) ; Spill left operand at depth 0
370 : LD 1, 1(5) ; Load parameter 'n' into R1
371 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
372 : LDA 4, 3(5) ; Callee base for arg copy
373 : LD 1, 3(5) ; Load staged arg 0 from caller temp
374 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
375 : LDA 6, 379(0) ; Return address
376 : ST 6, 0(4) ; Store return in callee frame
377 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
378 : LDA 7, 497(0) ; Call NEG
379 : LD 1, 2(5) ; Load callee result into R1
380 : LDC 2, 3(0) ; Callee frame size
381 : SUB 5, 5, 2 ; Pop callee frame
382 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
383 : LDC 1, 2(0) ; Load integer-literal into R1
384 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
385 : LDA 4, 5(5) ; Callee base for arg copy
386 : LD 1, 3(5) ; Load staged arg 0 from caller temp
387 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
388 : LD 1, 4(5) ; Load staged arg 1 from caller temp
389 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
390 : LDA 6, 394(0) ; Return address
391 : ST 6, 0(4) ; Store return in callee frame
392 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
393 : LDA 7, 502(0) ; Call DIV
394 : LD 1, 3(5) ; Load callee result into R1
395 : LDC 2, 5(0) ; Callee frame size
396 : SUB 5, 5, 2 ; Pop callee frame
397 : LD 2, 3(5) ; Restore left operand from depth 0
398 : ADD 1, 2, 1 ; R1 = left + right
399 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
400 : LDA 4, 6(5) ; Callee base for arg copy
401 : LD 1, 3(5) ; Load staged arg 0 from caller temp
402 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
403 : LD 1, 4(5) ; Load staged arg 1 from caller temp
404 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
405 : LDA 6, 409(0) ; Return address
406 : ST 6, 0(4) ; Store return in callee frame
407 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
408 : LDA 7, 550(0) ; Call GT
409 : LD 1, 3(5) ; Load callee result into R1
410 : LDC 2, 6(0) ; Callee frame size
411 : SUB 5, 5, 2 ; Pop callee frame
412 : ST 1, 2(5) ; Store function result into frame return slot
413 : LD 6, 0(5) ; Load return address
414 : LDA 7, 0(6) ; Return to caller
415 : LD 1, 2(5) ; Load parameter 'n' into R1
416 : ST 1, 4(5) ; Spill left operand at depth 0
417 : LDC 1, 0(0) ; Load integer-literal into R1
418 : LD 2, 4(5) ; Restore left operand from depth 0
419 : SUB 1, 2, 1 ; left - right for equality check
420 : JEQ 1, 2(7) ; If R1 == 0, jump to true
421 : LDC 1, 0(0) ; false
422 : LDA 7, 1(7) ; skip setting true
423 : LDC 1, 1(0) ; true
424 : JEQ 1, 427(0) ; If condition is false, jump to ELSE
425 : LDC 1, 1(0) ; Load integer-literal into R1
426 : LDA 7, !temp_32(0) ; Skip ELSE block
427 : LD 1, 1(5) ; Load parameter 'm' into R1
428 : ST 1, 4(5) ; Spill left operand at depth 0
429 : LD 1, 1(5) ; Load parameter 'm' into R1
430 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
431 : LD 1, 2(5) ; Load parameter 'n' into R1
432 : ST 1, 5(5) ; Spill left operand at depth 1
433 : LDC 1, 1(0) ; Load integer-literal into R1
434 : LD 2, 5(5) ; Restore left operand from depth 1
435 : SUB 1, 2, 1 ; R1 = left - right
436 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
437 : LDA 4, 6(5) ; Callee base for arg copy
438 : LD 1, 4(5) ; Load staged arg 0 from caller temp
439 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
440 : LD 1, 5(5) ; Load staged arg 1 from caller temp
441 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
442 : LDA 6, 446(0) ; Return address
443 : ST 6, 0(4) ; Store return in callee frame
444 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
445 : LDA 7, 415(0) ; Call EXP
446 : LD 1, 3(5) ; Load callee result into R1
447 : LDC 2, 6(0) ; Callee frame size
448 : SUB 5, 5, 2 ; Pop callee frame
449 : LD 2, 4(5) ; Restore left operand from depth 0
450 : MUL 1, 2, 1 ; R1 = left * right
451 : ST 1, 3(5) ; Store function result into frame return slot
452 : LD 6, 0(5) ; Load return address
453 : LDA 7, 0(6) ; Return to caller
454 : LD 1, 1(5) ; Load parameter 'm' into R1
455 : ST 1, 4(5) ; Spill left operand at depth 0
456 : LD 1, 1(5) ; Load parameter 'm' into R1
457 : ST 1, 5(5) ; Spill left operand at depth 1
458 : LD 1, 2(5) ; Load parameter 'n' into R1
459 : LD 2, 5(5) ; Restore left operand from depth 1
460 : DIV 1, 2, 1 ; R1 = left / right
461 : ST 1, 5(5) ; Spill left operand at depth 1
462 : LD 1, 2(5) ; Load parameter 'n' into R1
463 : LD 2, 5(5) ; Restore left operand from depth 1
464 : MUL 1, 2, 1 ; R1 = left * right
465 : LD 2, 4(5) ; Restore left operand from depth 0
466 : SUB 1, 2, 1 ; R1 = left - right
467 : ST 1, 3(5) ; Store function result into frame return slot
468 : LD 6, 0(5) ; Load return address
469 : LDA 7, 0(6) ; Return to caller
470 : LDC 1, 0(0) ; Load integer-literal into R1
471 : ST 1, 3(5) ; Spill left operand at depth 0
472 : LD 1, 1(5) ; Load parameter 'n' into R1
473 : LD 2, 3(5) ; Restore left operand from depth 0
474 : SUB 1, 2, 1 ; left - right for less-than check
475 : JLT 1, 2(7) ; If R1 < 0, jump to true
476 : LDC 1, 0(0) ; false
477 : LDA 7, 1(7) ; skip setting true
478 : LDC 1, 1(0) ; true
479 : JEQ 1, 482(0) ; If condition is false, jump to ELSE
480 : LD 1, 1(5) ; Load parameter 'n' into R1
481 : LDA 7, !temp_35(0) ; Skip ELSE block
482 : LD 1, 1(5) ; Load parameter 'n' into R1
483 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
484 : LDA 4, 3(5) ; Callee base for arg copy
485 : LD 1, 3(5) ; Load staged arg 0 from caller temp
486 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
487 : LDA 6, 491(0) ; Return address
488 : ST 6, 0(4) ; Store return in callee frame
489 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
490 : LDA 7, 497(0) ; Call NEG
491 : LD 1, 2(5) ; Load callee result into R1
492 : LDC 2, 3(0) ; Callee frame size
493 : SUB 5, 5, 2 ; Pop callee frame
494 : ST 1, 2(5) ; Store function result into frame return slot
495 : LD 6, 0(5) ; Load return address
496 : LDA 7, 0(6) ; Return to caller
497 : LD 1, 1(5) ; Load parameter 'n' into R1
498 : SUB 1, 0, 1 ; Negate value in R1
499 : ST 1, 2(5) ; Store function result into frame return slot
500 : LD 6, 0(5) ; Load return address
501 : LDA 7, 0(6) ; Return to caller
502 : LD 1, 1(5) ; Load parameter 'p' into R1
503 : ST 1, 4(5) ; Spill left operand at depth 0
504 : LD 1, 2(5) ; Load parameter 'q' into R1
505 : LD 2, 4(5) ; Restore left operand from depth 0
506 : DIV 1, 2, 1 ; R1 = left / right
507 : ST 1, 3(5) ; Store function result into frame return slot
508 : LD 6, 0(5) ; Load return address
509 : LDA 7, 0(6) ; Return to caller
510 : LD 1, 1(5) ; Load parameter 'p' into R1
511 : ST 1, 4(5) ; Spill left operand at depth 0
512 : LD 1, 2(5) ; Load parameter 'q' into R1
513 : LD 2, 4(5) ; Restore left operand from depth 0
514 : MUL 1, 2, 1 ; R1 = left * right
515 : ST 1, 3(5) ; Store function result into frame return slot
516 : LD 6, 0(5) ; Load return address
517 : LDA 7, 0(6) ; Return to caller
518 : LD 1, 1(5) ; Load parameter 'p' into R1
519 : ST 1, 4(5) ; Spill left operand at depth 0
520 : LD 1, 2(5) ; Load parameter 'q' into R1
521 : LD 2, 4(5) ; Restore left operand from depth 0
522 : SUB 1, 2, 1 ; R1 = left - right
523 : ST 1, 3(5) ; Store function result into frame return slot
524 : LD 6, 0(5) ; Load return address
525 : LDA 7, 0(6) ; Return to caller
526 : LD 1, 1(5) ; Load parameter 'p' into R1
527 : ST 1, 4(5) ; Spill left operand at depth 0
528 : LD 1, 2(5) ; Load parameter 'q' into R1
529 : LD 2, 4(5) ; Restore left operand from depth 0
530 : ADD 1, 2, 1 ; R1 = left + right
531 : ST 1, 3(5) ; Store function result into frame return slot
532 : LD 6, 0(5) ; Load return address
533 : LDA 7, 0(6) ; Return to caller
534 : LD 1, 1(5) ; Load parameter 'p' into R1
535 : JEQ 1, 538(0) ; If condition is false, jump to ELSE
536 : LD 1, 2(5) ; Load parameter 'q' into R1
537 : LDA 7, !temp_38(0) ; Skip ELSE block
538 : LDC 1, 0(0) ; Load boolean-literal into R1
539 : ST 1, 3(5) ; Store function result into frame return slot
540 : LD 6, 0(5) ; Load return address
541 : LDA 7, 0(6) ; Return to caller
542 : LD 1, 1(5) ; Load parameter 'p' into R1
543 : ST 1, 4(5) ; Spill left operand at depth 0
544 : LD 1, 2(5) ; Load parameter 'q' into R1
545 : LD 2, 4(5) ; Restore left operand from depth 0
546 : ADD 1, 2, 1 ; R1 = left OR right
547 : ST 1, 3(5) ; Store function result into frame return slot
548 : LD 6, 0(5) ; Load return address
549 : LDA 7, 0(6) ; Return to caller
550 : LD 1, 1(5) ; Load parameter 'p' into R1
551 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
552 : LD 1, 2(5) ; Load parameter 'q' into R1
553 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
554 : LDA 4, 6(5) ; Callee base for arg copy
555 : LD 1, 4(5) ; Load staged arg 0 from caller temp
556 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
557 : LD 1, 5(5) ; Load staged arg 1 from caller temp
558 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
559 : LDA 6, 563(0) ; Return address
560 : ST 6, 0(4) ; Store return in callee frame
561 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
562 : LDA 7, 592(0) ; Call LE
563 : LD 1, 3(5) ; Load callee result into R1
564 : LDC 2, 6(0) ; Callee frame size
565 : SUB 5, 5, 2 ; Pop callee frame
566 : LDC 2, 1(0) ; Load 1 into R2
567 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
568 : ST 1, 3(5) ; Store function result into frame return slot
569 : LD 6, 0(5) ; Load return address
570 : LDA 7, 0(6) ; Return to caller
571 : LD 1, 1(5) ; Load parameter 'p' into R1
572 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
573 : LD 1, 2(5) ; Load parameter 'q' into R1
574 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
575 : LDA 4, 5(5) ; Callee base for arg copy
576 : LD 1, 4(5) ; Load staged arg 0 from caller temp
577 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
578 : LD 1, 5(5) ; Load staged arg 1 from caller temp
579 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
580 : LDA 6, 584(0) ; Return address
581 : ST 6, 0(4) ; Store return in callee frame
582 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
583 : LDA 7, 663(0) ; Call LT
584 : LD 1, 3(5) ; Load callee result into R1
585 : LDC 2, 5(0) ; Callee frame size
586 : SUB 5, 5, 2 ; Pop callee frame
587 : LDC 2, 1(0) ; Load 1 into R2
588 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
589 : ST 1, 3(5) ; Store function result into frame return slot
590 : LD 6, 0(5) ; Load return address
591 : LDA 7, 0(6) ; Return to caller
592 : LD 1, 1(5) ; Load parameter 'p' into R1
593 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
594 : LD 1, 2(5) ; Load parameter 'q' into R1
595 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
596 : LDA 4, 5(5) ; Callee base for arg copy
597 : LD 1, 4(5) ; Load staged arg 0 from caller temp
598 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
599 : LD 1, 5(5) ; Load staged arg 1 from caller temp
600 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
601 : LDA 6, 605(0) ; Return address
602 : ST 6, 0(4) ; Store return in callee frame
603 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
604 : LDA 7, 663(0) ; Call LT
605 : LD 1, 3(5) ; Load callee result into R1
606 : LDC 2, 5(0) ; Callee frame size
607 : SUB 5, 5, 2 ; Pop callee frame
608 : ST 1, 4(5) ; Spill left operand at depth 0
609 : LD 1, 1(5) ; Load parameter 'p' into R1
610 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
611 : LD 1, 2(5) ; Load parameter 'q' into R1
612 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
613 : LDA 4, 5(5) ; Callee base for arg copy
614 : LD 1, 4(5) ; Load staged arg 0 from caller temp
615 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
616 : LD 1, 5(5) ; Load staged arg 1 from caller temp
617 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
618 : LDA 6, 622(0) ; Return address
619 : ST 6, 0(4) ; Store return in callee frame
620 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
621 : LDA 7, 651(0) ; Call EQ
622 : LD 1, 3(5) ; Load callee result into R1
623 : LDC 2, 5(0) ; Callee frame size
624 : SUB 5, 5, 2 ; Pop callee frame
625 : LD 2, 4(5) ; Restore left operand from depth 0
626 : ADD 1, 2, 1 ; R1 = left OR right
627 : ST 1, 3(5) ; Store function result into frame return slot
628 : LD 6, 0(5) ; Load return address
629 : LDA 7, 0(6) ; Return to caller
630 : LD 1, 1(5) ; Load parameter 'p' into R1
631 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
632 : LD 1, 2(5) ; Load parameter 'q' into R1
633 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
634 : LDA 4, 5(5) ; Callee base for arg copy
635 : LD 1, 4(5) ; Load staged arg 0 from caller temp
636 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
637 : LD 1, 5(5) ; Load staged arg 1 from caller temp
638 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
639 : LDA 6, 643(0) ; Return address
640 : ST 6, 0(4) ; Store return in callee frame
641 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
642 : LDA 7, 651(0) ; Call EQ
643 : LD 1, 3(5) ; Load callee result into R1
644 : LDC 2, 5(0) ; Callee frame size
645 : SUB 5, 5, 2 ; Pop callee frame
646 : LDC 2, 1(0) ; Load 1 into R2
647 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
648 : ST 1, 3(5) ; Store function result into frame return slot
649 : LD 6, 0(5) ; Load return address
650 : LDA 7, 0(6) ; Return to caller
651 : LD 1, 1(5) ; Load parameter 'p' into R1
652 : ST 1, 4(5) ; Spill left operand at depth 0
653 : LD 1, 2(5) ; Load parameter 'q' into R1
654 : LD 2, 4(5) ; Restore left operand from depth 0
655 : SUB 1, 2, 1 ; left - right for equality check
656 : JEQ 1, 2(7) ; If R1 == 0, jump to true
657 : LDC 1, 0(0) ; false
658 : LDA 7, 1(7) ; skip setting true
659 : LDC 1, 1(0) ; true
660 : ST 1, 3(5) ; Store function result into frame return slot
661 : LD 6, 0(5) ; Load return address
662 : LDA 7, 0(6) ; Return to caller
663 : LD 1, 1(5) ; Load parameter 'p' into R1
664 : ST 1, 4(5) ; Spill left operand at depth 0
665 : LD 1, 2(5) ; Load parameter 'q' into R1
666 : LD 2, 4(5) ; Restore left operand from depth 0
667 : SUB 1, 2, 1 ; left - right for less-than check
668 : JLT 1, 2(7) ; If R1 < 0, jump to true
669 : LDC 1, 0(0) ; false
670 : LDA 7, 1(7) ; skip setting true
671 : LDC 1, 1(0) ; true
672 : ST 1, 3(5) ; Store function result into frame return slot
673 : LD 6, 0(5) ; Load return address
674 : LDA 7, 0(6) ; Return to caller
675 : LDC 1, 2147483647(0) ; Load integer-literal into R1
676 : SUB 1, 0, 1 ; Negate value in R1
677 : ST 1, 2(5) ; Spill left operand at depth 0
678 : LDC 1, 1(0) ; Load integer-literal into R1
679 : LD 2, 2(5) ; Restore left operand from depth 0
680 : SUB 1, 2, 1 ; R1 = left - right
681 : ST 1, 1(5) ; Store function result into frame return slot
682 : LD 6, 0(5) ; Load return address
683 : LDA 7, 0(6) ; Return to caller
684 : LDC 1, 2147483647(0) ; Load integer-literal into R1
685 : ST 1, 1(5) ; Store function result into frame return slot
686 : LD 6, 0(5) ; Load return address
687 : LDA 7, 0(6) ; Return to caller
