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
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LDA 4, 5(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 28(0) ; Call isExcellent
21 : LD 1, 2(5) ; Load callee result into R1
22 : LDC 2, 5(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop callee frame
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 1(5) ; Load parameter 'n' into R1
29 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
30 : LD 1, 1(5) ; Load parameter 'n' into R1
31 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
32 : LDA 4, 5(5) ; Callee base for arg copy
33 : LD 1, 3(5) ; Load staged arg 0 from caller temp
34 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
38 : LDA 7, 225(0) ; Call length
39 : LD 1, 2(5) ; Load callee result into R1
40 : LDC 2, 5(0) ; Callee frame size
41 : SUB 5, 5, 2 ; Pop callee frame
42 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
43 : LDA 4, 6(5) ; Callee base for arg copy
44 : LD 1, 3(5) ; Load staged arg 0 from caller temp
45 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
46 : LD 1, 4(5) ; Load staged arg 1 from caller temp
47 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
51 : LDA 7, 58(0) ; Call isExcellentSwitch
52 : LD 1, 3(5) ; Load callee result into R1
53 : LDC 2, 6(0) ; Callee frame size
54 : SUB 5, 5, 2 ; Pop callee frame
55 : ST 1, 2(5) ; Store function result into frame return slot
56 : LD 6, 0(5) ; Load return address
57 : LDA 7, 0(6) ; Return to caller
58 : LD 1, 2(5) ; Load parameter 'length' into R1
59 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
60 : LDA 4, 5(5) ; Callee base for arg copy
61 : LD 1, 4(5) ; Load staged arg 0 from caller temp
62 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
66 : LDA 7, 260(0) ; Call ODD
67 : LD 1, 2(5) ; Load callee result into R1
68 : LDC 2, 5(0) ; Callee frame size
69 : SUB 5, 5, 2 ; Pop callee frame
70 : JEQ 1, 73(0) ; If condition is false, jump to ELSE
71 : LDC 1, 0(0) ; Load boolean-literal into R1
72 : LDA 7, !temp_5(0) ; Skip ELSE block
73 : LD 1, 1(5) ; Load parameter 'n' into R1
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LD 1, 1(5) ; Load parameter 'n' into R1
76 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
77 : LDA 4, 5(5) ; Callee base for arg copy
78 : LD 1, 4(5) ; Load staged arg 0 from caller temp
79 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 187(0) ; Call a
84 : LD 1, 2(5) ; Load callee result into R1
85 : LDC 2, 5(0) ; Callee frame size
86 : SUB 5, 5, 2 ; Pop callee frame
87 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
88 : LD 1, 1(5) ; Load parameter 'n' into R1
89 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
90 : LDA 4, 5(5) ; Callee base for arg copy
91 : LD 1, 4(5) ; Load staged arg 0 from caller temp
92 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 138(0) ; Call b
97 : LD 1, 2(5) ; Load callee result into R1
98 : LDC 2, 5(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
101 : LDA 4, 6(5) ; Callee base for arg copy
102 : LD 1, 4(5) ; Load staged arg 0 from caller temp
103 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
104 : LD 1, 5(5) ; Load staged arg 1 from caller temp
105 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
106 : LDA 6, 110(0) ; Return address
107 : ST 6, 0(4) ; Store return in callee frame
108 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
109 : LDA 7, 122(0) ; Call excellentDiff
110 : LD 1, 3(5) ; Load callee result into R1
111 : LDC 2, 6(0) ; Callee frame size
112 : SUB 5, 5, 2 ; Pop callee frame
113 : LD 2, 4(5) ; Restore left operand from depth 0
114 : SUB 1, 2, 1 ; left - right for equality check
115 : JEQ 1, 2(7) ; If R1 == 0, jump to true
116 : LDC 1, 0(0) ; false
117 : LDA 7, 1(7) ; skip setting true
118 : LDC 1, 1(0) ; true
119 : ST 1, 3(5) ; Store function result into frame return slot
120 : LD 6, 0(5) ; Load return address
121 : LDA 7, 0(6) ; Return to caller
122 : LD 1, 2(5) ; Load parameter 'b' into R1
123 : ST 1, 4(5) ; Spill left operand at depth 0
124 : LD 1, 2(5) ; Load parameter 'b' into R1
125 : LD 2, 4(5) ; Restore left operand from depth 0
126 : MUL 1, 2, 1 ; R1 = left * right
127 : ST 1, 4(5) ; Spill left operand at depth 0
128 : LD 1, 1(5) ; Load parameter 'a' into R1
129 : ST 1, 5(5) ; Spill left operand at depth 1
130 : LD 1, 1(5) ; Load parameter 'a' into R1
131 : LD 2, 5(5) ; Restore left operand from depth 1
132 : MUL 1, 2, 1 ; R1 = left * right
133 : LD 2, 4(5) ; Restore left operand from depth 0
134 : SUB 1, 2, 1 ; R1 = left - right
135 : ST 1, 3(5) ; Store function result into frame return slot
136 : LD 6, 0(5) ; Load return address
137 : LDA 7, 0(6) ; Return to caller
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
140 : LDC 1, 10(0) ; Load integer-literal into R1
141 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
142 : LD 1, 1(5) ; Load parameter 'n' into R1
143 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
144 : LDA 4, 5(5) ; Callee base for arg copy
145 : LD 1, 3(5) ; Load staged arg 0 from caller temp
146 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
150 : LDA 7, 225(0) ; Call length
151 : LD 1, 2(5) ; Load callee result into R1
152 : LDC 2, 5(0) ; Callee frame size
153 : SUB 5, 5, 2 ; Pop callee frame
154 : ST 1, 3(5) ; Spill left operand at depth 0
155 : LDC 1, 2(0) ; Load integer-literal into R1
156 : LD 2, 3(5) ; Restore left operand from depth 0
157 : DIV 1, 2, 1 ; R1 = left / right
158 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
159 : LDA 4, 6(5) ; Callee base for arg copy
160 : LD 1, 3(5) ; Load staged arg 0 from caller temp
161 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
162 : LD 1, 4(5) ; Load staged arg 1 from caller temp
163 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
167 : LDA 7, 304(0) ; Call EXP
168 : LD 1, 3(5) ; Load callee result into R1
169 : LDC 2, 6(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop callee frame
171 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
172 : LDA 4, 7(5) ; Callee base for arg copy
173 : LD 1, 3(5) ; Load staged arg 0 from caller temp
174 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
175 : LD 1, 4(5) ; Load staged arg 1 from caller temp
176 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(4) ; Store return in callee frame
179 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
180 : LDA 7, 343(0) ; Call MOD
181 : LD 1, 3(5) ; Load callee result into R1
182 : LDC 2, 7(0) ; Callee frame size
183 : SUB 5, 5, 2 ; Pop callee frame
184 : ST 1, 2(5) ; Store function result into frame return slot
185 : LD 6, 0(5) ; Load return address
186 : LDA 7, 0(6) ; Return to caller
187 : LD 1, 1(5) ; Load parameter 'n' into R1
188 : ST 1, 3(5) ; Spill left operand at depth 0
189 : LDC 1, 10(0) ; Load integer-literal into R1
190 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
191 : LD 1, 1(5) ; Load parameter 'n' into R1
192 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
193 : LDA 4, 5(5) ; Callee base for arg copy
194 : LD 1, 3(5) ; Load staged arg 0 from caller temp
195 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
196 : LDA 6, 200(0) ; Return address
197 : ST 6, 0(4) ; Store return in callee frame
198 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
199 : LDA 7, 225(0) ; Call length
200 : LD 1, 2(5) ; Load callee result into R1
201 : LDC 2, 5(0) ; Callee frame size
202 : SUB 5, 5, 2 ; Pop callee frame
203 : ST 1, 4(5) ; Spill left operand at depth 1
204 : LDC 1, 2(0) ; Load integer-literal into R1
205 : LD 2, 4(5) ; Restore left operand from depth 1
206 : DIV 1, 2, 1 ; R1 = left / right
207 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
208 : LDA 4, 6(5) ; Callee base for arg copy
209 : LD 1, 3(5) ; Load staged arg 0 from caller temp
210 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
211 : LD 1, 4(5) ; Load staged arg 1 from caller temp
212 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(4) ; Store return in callee frame
215 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
216 : LDA 7, 304(0) ; Call EXP
217 : LD 1, 3(5) ; Load callee result into R1
218 : LDC 2, 6(0) ; Callee frame size
219 : SUB 5, 5, 2 ; Pop callee frame
220 : LD 2, 3(5) ; Restore left operand from depth 0
221 : DIV 1, 2, 1 ; R1 = left / right
222 : ST 1, 2(5) ; Store function result into frame return slot
223 : LD 6, 0(5) ; Load return address
224 : LDA 7, 0(6) ; Return to caller
225 : LD 1, 1(5) ; Load parameter 'n' into R1
226 : ST 1, 3(5) ; Spill left operand at depth 0
227 : LDC 1, 10(0) ; Load integer-literal into R1
228 : LD 2, 3(5) ; Restore left operand from depth 0
229 : SUB 1, 2, 1 ; left - right for less-than check
230 : JLT 1, 2(7) ; If R1 < 0, jump to true
231 : LDC 1, 0(0) ; false
232 : LDA 7, 1(7) ; skip setting true
233 : LDC 1, 1(0) ; true
234 : JEQ 1, 237(0) ; If condition is false, jump to ELSE
235 : LDC 1, 1(0) ; Load integer-literal into R1
236 : LDA 7, !temp_15(0) ; Skip ELSE block
237 : LDC 1, 1(0) ; Load integer-literal into R1
238 : ST 1, 3(5) ; Spill left operand at depth 0
239 : LD 1, 1(5) ; Load parameter 'n' into R1
240 : ST 1, 4(5) ; Spill left operand at depth 1
241 : LDC 1, 10(0) ; Load integer-literal into R1
242 : LD 2, 4(5) ; Restore left operand from depth 1
243 : DIV 1, 2, 1 ; R1 = left / right
244 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
245 : LDA 4, 5(5) ; Callee base for arg copy
246 : LD 1, 3(5) ; Load staged arg 0 from caller temp
247 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
248 : LDA 6, 252(0) ; Return address
249 : ST 6, 0(4) ; Store return in callee frame
250 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
251 : LDA 7, 225(0) ; Call length
252 : LD 1, 2(5) ; Load callee result into R1
253 : LDC 2, 5(0) ; Callee frame size
254 : SUB 5, 5, 2 ; Pop callee frame
255 : LD 2, 3(5) ; Restore left operand from depth 0
256 : ADD 1, 2, 1 ; R1 = left + right
257 : ST 1, 2(5) ; Store function result into frame return slot
258 : LD 6, 0(5) ; Load return address
259 : LDA 7, 0(6) ; Return to caller
260 : LDC 1, 0(0) ; Load integer-literal into R1
261 : ST 1, 3(5) ; Spill left operand at depth 0
262 : LD 1, 1(5) ; Load parameter 'n' into R1
263 : LD 2, 3(5) ; Restore left operand from depth 0
264 : SUB 1, 2, 1 ; left - right for less-than check
265 : JLT 1, 2(7) ; If R1 < 0, jump to true
266 : LDC 1, 0(0) ; false
267 : LDA 7, 1(7) ; skip setting true
268 : LDC 1, 1(0) ; true
269 : JEQ 1, 288(0) ; If condition is false, jump to ELSE
270 : LDC 1, 2(0) ; Load integer-literal into R1
271 : ST 1, 3(5) ; Spill left operand at depth 0
272 : LD 1, 1(5) ; Load parameter 'n' into R1
273 : ST 1, 4(5) ; Spill left operand at depth 1
274 : LDC 1, 2(0) ; Load integer-literal into R1
275 : LD 2, 4(5) ; Restore left operand from depth 1
276 : DIV 1, 2, 1 ; R1 = left / right
277 : LD 2, 3(5) ; Restore left operand from depth 0
278 : MUL 1, 2, 1 ; R1 = left * right
279 : ST 1, 3(5) ; Spill left operand at depth 0
280 : LD 1, 1(5) ; Load parameter 'n' into R1
281 : LD 2, 3(5) ; Restore left operand from depth 0
282 : SUB 1, 2, 1 ; left - right for less-than check
283 : JLT 1, 2(7) ; If R1 < 0, jump to true
284 : LDC 1, 0(0) ; false
285 : LDA 7, 1(7) ; skip setting true
286 : LDC 1, 1(0) ; true
287 : LDA 7, !temp_18(0) ; Skip ELSE block
288 : LD 1, 1(5) ; Load parameter 'n' into R1
289 : SUB 1, 0, 1 ; Negate value in R1
290 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
291 : LDA 4, 5(5) ; Callee base for arg copy
292 : LD 1, 3(5) ; Load staged arg 0 from caller temp
293 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
294 : LDA 6, 298(0) ; Return address
295 : ST 6, 0(4) ; Store return in callee frame
296 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
297 : LDA 7, 260(0) ; Call ODD
298 : LD 1, 2(5) ; Load callee result into R1
299 : LDC 2, 5(0) ; Callee frame size
300 : SUB 5, 5, 2 ; Pop callee frame
301 : ST 1, 2(5) ; Store function result into frame return slot
302 : LD 6, 0(5) ; Load return address
303 : LDA 7, 0(6) ; Return to caller
304 : LD 1, 2(5) ; Load parameter 'n' into R1
305 : ST 1, 4(5) ; Spill left operand at depth 0
306 : LDC 1, 0(0) ; Load integer-literal into R1
307 : LD 2, 4(5) ; Restore left operand from depth 0
308 : SUB 1, 2, 1 ; left - right for equality check
309 : JEQ 1, 2(7) ; If R1 == 0, jump to true
310 : LDC 1, 0(0) ; false
311 : LDA 7, 1(7) ; skip setting true
312 : LDC 1, 1(0) ; true
313 : JEQ 1, 316(0) ; If condition is false, jump to ELSE
314 : LDC 1, 1(0) ; Load integer-literal into R1
315 : LDA 7, !temp_21(0) ; Skip ELSE block
316 : LD 1, 1(5) ; Load parameter 'm' into R1
317 : ST 1, 4(5) ; Spill left operand at depth 0
318 : LD 1, 1(5) ; Load parameter 'm' into R1
319 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
320 : LD 1, 2(5) ; Load parameter 'n' into R1
321 : ST 1, 5(5) ; Spill left operand at depth 1
322 : LDC 1, 1(0) ; Load integer-literal into R1
323 : LD 2, 5(5) ; Restore left operand from depth 1
324 : SUB 1, 2, 1 ; R1 = left - right
325 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
326 : LDA 4, 6(5) ; Callee base for arg copy
327 : LD 1, 4(5) ; Load staged arg 0 from caller temp
328 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
329 : LD 1, 5(5) ; Load staged arg 1 from caller temp
330 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
331 : LDA 6, 335(0) ; Return address
332 : ST 6, 0(4) ; Store return in callee frame
333 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
334 : LDA 7, 304(0) ; Call EXP
335 : LD 1, 3(5) ; Load callee result into R1
336 : LDC 2, 6(0) ; Callee frame size
337 : SUB 5, 5, 2 ; Pop callee frame
338 : LD 2, 4(5) ; Restore left operand from depth 0
339 : MUL 1, 2, 1 ; R1 = left * right
340 : ST 1, 3(5) ; Store function result into frame return slot
341 : LD 6, 0(5) ; Load return address
342 : LDA 7, 0(6) ; Return to caller
343 : LD 1, 1(5) ; Load parameter 'm' into R1
344 : ST 1, 4(5) ; Spill left operand at depth 0
345 : LD 1, 2(5) ; Load parameter 'n' into R1
346 : ST 1, 5(5) ; Spill left operand at depth 1
347 : LD 1, 1(5) ; Load parameter 'm' into R1
348 : ST 1, 6(5) ; Spill left operand at depth 2
349 : LD 1, 2(5) ; Load parameter 'n' into R1
350 : LD 2, 6(5) ; Restore left operand from depth 2
351 : DIV 1, 2, 1 ; R1 = left / right
352 : LD 2, 5(5) ; Restore left operand from depth 1
353 : MUL 1, 2, 1 ; R1 = left * right
354 : LD 2, 4(5) ; Restore left operand from depth 0
355 : SUB 1, 2, 1 ; R1 = left - right
356 : ST 1, 3(5) ; Store function result into frame return slot
357 : LD 6, 0(5) ; Load return address
358 : LDA 7, 0(6) ; Return to caller
