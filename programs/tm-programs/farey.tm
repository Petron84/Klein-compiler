0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 1(5) ; Load parameter 'xNum' into R1
17 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
18 : LD 1, 2(5) ; Load parameter 'xDen' into R1
19 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
20 : LD 1, 3(5) ; Load parameter 'N' into R1
21 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
22 : LDA 4, 13(5) ; Callee base for arg copy
23 : LD 1, 5(5) ; Load staged arg 0 from caller temp
24 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
25 : LD 1, 6(5) ; Load staged arg 1 from caller temp
26 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
27 : LD 1, 7(5) ; Load staged arg 2 from caller temp
28 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 667(0) ; Call fareyNum
33 : LD 1, 4(5) ; Load callee result into R1
34 : LDC 2, 13(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop callee frame
36 : LDA 4, 3(5) ; Callee base for built-in print
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return address in callee frame
39 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
40 : LDA 7, 13(0) ; Call built-in print
41 : LDC 2, 3(0) ; Callee frame size (print)
42 : SUB 5, 5, 2 ; Pop back to caller
43 : LD 1, 1(5) ; Load parameter 'xNum' into R1
44 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
45 : LD 1, 2(5) ; Load parameter 'xDen' into R1
46 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
47 : LD 1, 3(5) ; Load parameter 'N' into R1
48 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
49 : LDA 4, 13(5) ; Callee base for arg copy
50 : LD 1, 5(5) ; Load staged arg 0 from caller temp
51 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
52 : LD 1, 6(5) ; Load staged arg 1 from caller temp
53 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
54 : LD 1, 7(5) ; Load staged arg 2 from caller temp
55 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return in callee frame
58 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
59 : LDA 7, 480(0) ; Call fareyDen
60 : LD 1, 4(5) ; Load callee result into R1
61 : LDC 2, 13(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop callee frame
63 : ST 1, 4(5) ; Store result into caller’s frame
64 : LD 1, 4(5) ; Load main return value into R1
65 : LD 6, 0(5) ; Load main return address
66 : LDA 7, 0(6) ; Return from main
67 : LD 1, 1(5) ; Load parameter 'x' into R1
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LD 1, 2(5) ; Load parameter 'y' into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : SUB 1, 2, 1 ; left - right for less-than check
72 : JLT 1, 2(7) ; If R1 < 0, jump to true
73 : LDC 1, 0(0) ; false
74 : LDA 7, 1(7) ; skip setting true
75 : LDC 1, 1(0) ; true
76 : ST 1, 4(5) ; Spill left operand at depth 0
77 : LD 1, 1(5) ; Load parameter 'x' into R1
78 : ST 1, 5(5) ; Spill left operand at depth 1
79 : LD 1, 2(5) ; Load parameter 'y' into R1
80 : LD 2, 5(5) ; Restore left operand from depth 1
81 : SUB 1, 2, 1 ; left - right for equality check
82 : JEQ 1, 2(7) ; If R1 == 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : LD 2, 4(5) ; Restore left operand from depth 0
87 : ADD 1, 2, 1 ; R1 = left OR right
88 : LDC 2, 1(0) ; Load 1 into R2
89 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
90 : ST 1, 3(5) ; Store function result into frame return slot
91 : LD 6, 0(5) ; Load return address
92 : LDA 7, 0(6) ; Return to caller
93 : LD 1, 1(5) ; Load parameter 'x' into R1
94 : ST 1, 6(5) ; Spill left operand at depth 0
95 : LD 1, 4(5) ; Load parameter 'yd' into R1
96 : LD 2, 6(5) ; Restore left operand from depth 0
97 : MUL 1, 2, 1 ; R1 = left * right
98 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
99 : LD 1, 3(5) ; Load parameter 'y' into R1
100 : ST 1, 6(5) ; Spill left operand at depth 0
101 : LD 1, 2(5) ; Load parameter 'xd' into R1
102 : LD 2, 6(5) ; Restore left operand from depth 0
103 : MUL 1, 2, 1 ; R1 = left * right
104 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
105 : LDA 4, 6(5) ; Callee base for arg copy
106 : LD 1, 6(5) ; Load staged arg 0 from caller temp
107 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
108 : LD 1, 7(5) ; Load staged arg 1 from caller temp
109 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(4) ; Store return in callee frame
112 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
113 : LDA 7, 67(0) ; Call greater
114 : LD 1, 3(5) ; Load callee result into R1
115 : LDC 2, 6(0) ; Callee frame size
116 : SUB 5, 5, 2 ; Pop callee frame
117 : ST 1, 5(5) ; Store function result into frame return slot
118 : LD 6, 0(5) ; Load return address
119 : LDA 7, 0(6) ; Return to caller
120 : LD 1, 1(5) ; Load parameter 'x' into R1
121 : ST 1, 6(5) ; Spill left operand at depth 0
122 : LD 1, 4(5) ; Load parameter 'yd' into R1
123 : LD 2, 6(5) ; Restore left operand from depth 0
124 : MUL 1, 2, 1 ; R1 = left * right
125 : ST 1, 6(5) ; Spill left operand at depth 0
126 : LD 1, 3(5) ; Load parameter 'y' into R1
127 : ST 1, 7(5) ; Spill left operand at depth 1
128 : LD 1, 2(5) ; Load parameter 'xd' into R1
129 : LD 2, 7(5) ; Restore left operand from depth 1
130 : MUL 1, 2, 1 ; R1 = left * right
131 : LD 2, 6(5) ; Restore left operand from depth 0
132 : SUB 1, 2, 1 ; left - right for equality check
133 : JEQ 1, 2(7) ; If R1 == 0, jump to true
134 : LDC 1, 0(0) ; false
135 : LDA 7, 1(7) ; skip setting true
136 : LDC 1, 1(0) ; true
137 : ST 1, 5(5) ; Store function result into frame return slot
138 : LD 6, 0(5) ; Load return address
139 : LDA 7, 0(6) ; Return to caller
140 : LD 1, 6(5) ; Load parameter 'b' into R1
141 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
142 : LD 1, 4(5) ; Load parameter 'N' into R1
143 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
144 : LDA 4, 6(5) ; Callee base for arg copy
145 : LD 1, 10(5) ; Load staged arg 0 from caller temp
146 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
147 : LD 1, 11(5) ; Load staged arg 1 from caller temp
148 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return in callee frame
151 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
152 : LDA 7, 67(0) ; Call greater
153 : LD 1, 3(5) ; Load callee result into R1
154 : LDC 2, 6(0) ; Callee frame size
155 : SUB 5, 5, 2 ; Pop callee frame
156 : ST 1, 10(5) ; Spill left operand at depth 0
157 : LD 1, 8(5) ; Load parameter 'd' into R1
158 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
159 : LD 1, 4(5) ; Load parameter 'N' into R1
160 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
161 : LDA 4, 6(5) ; Callee base for arg copy
162 : LD 1, 10(5) ; Load staged arg 0 from caller temp
163 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
164 : LD 1, 11(5) ; Load staged arg 1 from caller temp
165 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
169 : LDA 7, 67(0) ; Call greater
170 : LD 1, 3(5) ; Load callee result into R1
171 : LDC 2, 6(0) ; Callee frame size
172 : SUB 5, 5, 2 ; Pop callee frame
173 : LD 2, 10(5) ; Restore left operand from depth 0
174 : ADD 1, 2, 1 ; R1 = left OR right
175 : JEQ 1, 214(0) ; If condition is false, jump to ELSE
176 : LD 1, 1(5) ; Load parameter 'selector' into R1
177 : ST 1, 10(5) ; Spill left operand at depth 0
178 : LDC 1, 1(0) ; Load integer-literal into R1
179 : LD 2, 10(5) ; Restore left operand from depth 0
180 : SUB 1, 2, 1 ; left - right for equality check
181 : JEQ 1, 2(7) ; If R1 == 0, jump to true
182 : LDC 1, 0(0) ; false
183 : LDA 7, 1(7) ; skip setting true
184 : LDC 1, 1(0) ; true
185 : JEQ 1, 188(0) ; If condition is false, jump to ELSE
186 : LD 1, 5(5) ; Load parameter 'a' into R1
187 : LDA 7, !temp_8(0) ; Skip ELSE block
188 : LD 1, 1(5) ; Load parameter 'selector' into R1
189 : ST 1, 10(5) ; Spill left operand at depth 0
190 : LDC 1, 2(0) ; Load integer-literal into R1
191 : LD 2, 10(5) ; Restore left operand from depth 0
192 : SUB 1, 2, 1 ; left - right for equality check
193 : JEQ 1, 2(7) ; If R1 == 0, jump to true
194 : LDC 1, 0(0) ; false
195 : LDA 7, 1(7) ; skip setting true
196 : LDC 1, 1(0) ; true
197 : JEQ 1, 200(0) ; If condition is false, jump to ELSE
198 : LD 1, 6(5) ; Load parameter 'b' into R1
199 : LDA 7, !temp_10(0) ; Skip ELSE block
200 : LD 1, 1(5) ; Load parameter 'selector' into R1
201 : ST 1, 10(5) ; Spill left operand at depth 0
202 : LDC 1, 3(0) ; Load integer-literal into R1
203 : LD 2, 10(5) ; Restore left operand from depth 0
204 : SUB 1, 2, 1 ; left - right for equality check
205 : JEQ 1, 2(7) ; If R1 == 0, jump to true
206 : LDC 1, 0(0) ; false
207 : LDA 7, 1(7) ; skip setting true
208 : LDC 1, 1(0) ; true
209 : JEQ 1, 212(0) ; If condition is false, jump to ELSE
210 : LD 1, 7(5) ; Load parameter 'c' into R1
211 : LDA 7, !temp_12(0) ; Skip ELSE block
212 : LD 1, 8(5) ; Load parameter 'd' into R1
213 : LDA 7, !temp_13(0) ; Skip ELSE block
214 : LD 1, 2(5) ; Load parameter 'xNum' into R1
215 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
216 : LD 1, 3(5) ; Load parameter 'xDen' into R1
217 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
218 : LD 1, 5(5) ; Load parameter 'a' into R1
219 : ST 1, 10(5) ; Spill left operand at depth 0
220 : LD 1, 7(5) ; Load parameter 'c' into R1
221 : LD 2, 10(5) ; Restore left operand from depth 0
222 : ADD 1, 2, 1 ; R1 = left + right
223 : ST 1, 12(5) ; Stage arg 2 in caller temp (P+2+i)
224 : LD 1, 6(5) ; Load parameter 'b' into R1
225 : ST 1, 10(5) ; Spill left operand at depth 0
226 : LD 1, 8(5) ; Load parameter 'd' into R1
227 : LD 2, 10(5) ; Restore left operand from depth 0
228 : ADD 1, 2, 1 ; R1 = left + right
229 : ST 1, 13(5) ; Stage arg 3 in caller temp (P+2+i)
230 : LDA 4, 8(5) ; Callee base for arg copy
231 : LD 1, 10(5) ; Load staged arg 0 from caller temp
232 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
233 : LD 1, 11(5) ; Load staged arg 1 from caller temp
234 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
235 : LD 1, 12(5) ; Load staged arg 2 from caller temp
236 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
237 : LD 1, 13(5) ; Load staged arg 3 from caller temp
238 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return in callee frame
241 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
242 : LDA 7, 120(0) ; Call fractionEqual
243 : LD 1, 5(5) ; Load callee result into R1
244 : LDC 2, 8(0) ; Callee frame size
245 : SUB 5, 5, 2 ; Pop callee frame
246 : JEQ 1, 301(0) ; If condition is false, jump to ELSE
247 : LD 1, 1(5) ; Load parameter 'selector' into R1
248 : ST 1, 10(5) ; Spill left operand at depth 0
249 : LDC 1, 1(0) ; Load integer-literal into R1
250 : LD 2, 10(5) ; Restore left operand from depth 0
251 : SUB 1, 2, 1 ; left - right for equality check
252 : JEQ 1, 2(7) ; If R1 == 0, jump to true
253 : LDC 1, 0(0) ; false
254 : LDA 7, 1(7) ; skip setting true
255 : LDC 1, 1(0) ; true
256 : JEQ 1, 263(0) ; If condition is false, jump to ELSE
257 : LD 1, 5(5) ; Load parameter 'a' into R1
258 : ST 1, 10(5) ; Spill left operand at depth 0
259 : LD 1, 7(5) ; Load parameter 'c' into R1
260 : LD 2, 10(5) ; Restore left operand from depth 0
261 : ADD 1, 2, 1 ; R1 = left + right
262 : LDA 7, !temp_17(0) ; Skip ELSE block
263 : LD 1, 1(5) ; Load parameter 'selector' into R1
264 : ST 1, 10(5) ; Spill left operand at depth 0
265 : LDC 1, 2(0) ; Load integer-literal into R1
266 : LD 2, 10(5) ; Restore left operand from depth 0
267 : SUB 1, 2, 1 ; left - right for equality check
268 : JEQ 1, 2(7) ; If R1 == 0, jump to true
269 : LDC 1, 0(0) ; false
270 : LDA 7, 1(7) ; skip setting true
271 : LDC 1, 1(0) ; true
272 : JEQ 1, 279(0) ; If condition is false, jump to ELSE
273 : LD 1, 6(5) ; Load parameter 'b' into R1
274 : ST 1, 10(5) ; Spill left operand at depth 0
275 : LD 1, 8(5) ; Load parameter 'd' into R1
276 : LD 2, 10(5) ; Restore left operand from depth 0
277 : ADD 1, 2, 1 ; R1 = left + right
278 : LDA 7, !temp_19(0) ; Skip ELSE block
279 : LD 1, 1(5) ; Load parameter 'selector' into R1
280 : ST 1, 10(5) ; Spill left operand at depth 0
281 : LDC 1, 3(0) ; Load integer-literal into R1
282 : LD 2, 10(5) ; Restore left operand from depth 0
283 : SUB 1, 2, 1 ; left - right for equality check
284 : JEQ 1, 2(7) ; If R1 == 0, jump to true
285 : LDC 1, 0(0) ; false
286 : LDA 7, 1(7) ; skip setting true
287 : LDC 1, 1(0) ; true
288 : JEQ 1, 295(0) ; If condition is false, jump to ELSE
289 : LD 1, 5(5) ; Load parameter 'a' into R1
290 : ST 1, 10(5) ; Spill left operand at depth 0
291 : LD 1, 7(5) ; Load parameter 'c' into R1
292 : LD 2, 10(5) ; Restore left operand from depth 0
293 : ADD 1, 2, 1 ; R1 = left + right
294 : LDA 7, !temp_21(0) ; Skip ELSE block
295 : LD 1, 6(5) ; Load parameter 'b' into R1
296 : ST 1, 10(5) ; Spill left operand at depth 0
297 : LD 1, 8(5) ; Load parameter 'd' into R1
298 : LD 2, 10(5) ; Restore left operand from depth 0
299 : ADD 1, 2, 1 ; R1 = left + right
300 : LDA 7, !temp_22(0) ; Skip ELSE block
301 : LD 1, 2(5) ; Load parameter 'xNum' into R1
302 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
303 : LD 1, 3(5) ; Load parameter 'xDen' into R1
304 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
305 : LD 1, 5(5) ; Load parameter 'a' into R1
306 : ST 1, 10(5) ; Spill left operand at depth 0
307 : LD 1, 7(5) ; Load parameter 'c' into R1
308 : LD 2, 10(5) ; Restore left operand from depth 0
309 : ADD 1, 2, 1 ; R1 = left + right
310 : ST 1, 12(5) ; Stage arg 2 in caller temp (P+2+i)
311 : LD 1, 6(5) ; Load parameter 'b' into R1
312 : ST 1, 10(5) ; Spill left operand at depth 0
313 : LD 1, 8(5) ; Load parameter 'd' into R1
314 : LD 2, 10(5) ; Restore left operand from depth 0
315 : ADD 1, 2, 1 ; R1 = left + right
316 : ST 1, 13(5) ; Stage arg 3 in caller temp (P+2+i)
317 : LDA 4, 8(5) ; Callee base for arg copy
318 : LD 1, 10(5) ; Load staged arg 0 from caller temp
319 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
320 : LD 1, 11(5) ; Load staged arg 1 from caller temp
321 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
322 : LD 1, 12(5) ; Load staged arg 2 from caller temp
323 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
324 : LD 1, 13(5) ; Load staged arg 3 from caller temp
325 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
326 : LDA 6, 330(0) ; Return address
327 : ST 6, 0(4) ; Store return in callee frame
328 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
329 : LDA 7, 93(0) ; Call fractionGreater
330 : LD 1, 5(5) ; Load callee result into R1
331 : LDC 2, 8(0) ; Callee frame size
332 : SUB 5, 5, 2 ; Pop callee frame
333 : JEQ 1, 383(0) ; If condition is false, jump to ELSE
334 : LD 1, 1(5) ; Load parameter 'selector' into R1
335 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
336 : LD 1, 2(5) ; Load parameter 'xNum' into R1
337 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
338 : LD 1, 3(5) ; Load parameter 'xDen' into R1
339 : ST 1, 12(5) ; Stage arg 2 in caller temp (P+2+i)
340 : LD 1, 4(5) ; Load parameter 'N' into R1
341 : ST 1, 13(5) ; Stage arg 3 in caller temp (P+2+i)
342 : LD 1, 5(5) ; Load parameter 'a' into R1
343 : ST 1, 10(5) ; Spill left operand at depth 0
344 : LD 1, 7(5) ; Load parameter 'c' into R1
345 : LD 2, 10(5) ; Restore left operand from depth 0
346 : ADD 1, 2, 1 ; R1 = left + right
347 : ST 1, 14(5) ; Stage arg 4 in caller temp (P+2+i)
348 : LD 1, 6(5) ; Load parameter 'b' into R1
349 : ST 1, 10(5) ; Spill left operand at depth 0
350 : LD 1, 8(5) ; Load parameter 'd' into R1
351 : LD 2, 10(5) ; Restore left operand from depth 0
352 : ADD 1, 2, 1 ; R1 = left + right
353 : ST 1, 15(5) ; Stage arg 5 in caller temp (P+2+i)
354 : LD 1, 7(5) ; Load parameter 'c' into R1
355 : ST 1, 16(5) ; Stage arg 6 in caller temp (P+2+i)
356 : LD 1, 8(5) ; Load parameter 'd' into R1
357 : ST 1, 17(5) ; Stage arg 7 in caller temp (P+2+i)
358 : LDA 4, 18(5) ; Callee base for arg copy
359 : LD 1, 10(5) ; Load staged arg 0 from caller temp
360 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
361 : LD 1, 11(5) ; Load staged arg 1 from caller temp
362 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
363 : LD 1, 12(5) ; Load staged arg 2 from caller temp
364 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
365 : LD 1, 13(5) ; Load staged arg 3 from caller temp
366 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
367 : LD 1, 14(5) ; Load staged arg 4 from caller temp
368 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
369 : LD 1, 15(5) ; Load staged arg 5 from caller temp
370 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
371 : LD 1, 16(5) ; Load staged arg 6 from caller temp
372 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
373 : LD 1, 17(5) ; Load staged arg 7 from caller temp
374 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
375 : LDA 6, 379(0) ; Return address
376 : ST 6, 0(4) ; Store return in callee frame
377 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
378 : LDA 7, 140(0) ; Call whileLoopFor
379 : LD 1, 9(5) ; Load callee result into R1
380 : LDC 2, 18(0) ; Callee frame size
381 : SUB 5, 5, 2 ; Pop callee frame
382 : LDA 7, !temp_26(0) ; Skip ELSE block
383 : LD 1, 1(5) ; Load parameter 'selector' into R1
384 : ST 1, 10(5) ; Stage arg 0 in caller temp (P+2+i)
385 : LD 1, 2(5) ; Load parameter 'xNum' into R1
386 : ST 1, 11(5) ; Stage arg 1 in caller temp (P+2+i)
387 : LD 1, 3(5) ; Load parameter 'xDen' into R1
388 : ST 1, 12(5) ; Stage arg 2 in caller temp (P+2+i)
389 : LD 1, 4(5) ; Load parameter 'N' into R1
390 : ST 1, 13(5) ; Stage arg 3 in caller temp (P+2+i)
391 : LD 1, 5(5) ; Load parameter 'a' into R1
392 : ST 1, 14(5) ; Stage arg 4 in caller temp (P+2+i)
393 : LD 1, 6(5) ; Load parameter 'b' into R1
394 : ST 1, 15(5) ; Stage arg 5 in caller temp (P+2+i)
395 : LD 1, 5(5) ; Load parameter 'a' into R1
396 : ST 1, 10(5) ; Spill left operand at depth 0
397 : LD 1, 7(5) ; Load parameter 'c' into R1
398 : LD 2, 10(5) ; Restore left operand from depth 0
399 : ADD 1, 2, 1 ; R1 = left + right
400 : ST 1, 16(5) ; Stage arg 6 in caller temp (P+2+i)
401 : LD 1, 6(5) ; Load parameter 'b' into R1
402 : ST 1, 10(5) ; Spill left operand at depth 0
403 : LD 1, 8(5) ; Load parameter 'd' into R1
404 : LD 2, 10(5) ; Restore left operand from depth 0
405 : ADD 1, 2, 1 ; R1 = left + right
406 : ST 1, 17(5) ; Stage arg 7 in caller temp (P+2+i)
407 : LDA 4, 18(5) ; Callee base for arg copy
408 : LD 1, 10(5) ; Load staged arg 0 from caller temp
409 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
410 : LD 1, 11(5) ; Load staged arg 1 from caller temp
411 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
412 : LD 1, 12(5) ; Load staged arg 2 from caller temp
413 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
414 : LD 1, 13(5) ; Load staged arg 3 from caller temp
415 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
416 : LD 1, 14(5) ; Load staged arg 4 from caller temp
417 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
418 : LD 1, 15(5) ; Load staged arg 5 from caller temp
419 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
420 : LD 1, 16(5) ; Load staged arg 6 from caller temp
421 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
422 : LD 1, 17(5) ; Load staged arg 7 from caller temp
423 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
424 : LDA 6, 428(0) ; Return address
425 : ST 6, 0(4) ; Store return in callee frame
426 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
427 : LDA 7, 140(0) ; Call whileLoopFor
428 : LD 1, 9(5) ; Load callee result into R1
429 : LDC 2, 18(0) ; Callee frame size
430 : SUB 5, 5, 2 ; Pop callee frame
431 : ST 1, 9(5) ; Store function result into frame return slot
432 : LD 6, 0(5) ; Load return address
433 : LDA 7, 0(6) ; Return to caller
434 : LD 1, 3(5) ; Load parameter 'b' into R1
435 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2+i)
436 : LD 1, 1(5) ; Load parameter 'N' into R1
437 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2+i)
438 : LDA 4, 6(5) ; Callee base for arg copy
439 : LD 1, 7(5) ; Load staged arg 0 from caller temp
440 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
441 : LD 1, 8(5) ; Load staged arg 1 from caller temp
442 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
443 : LDA 6, 447(0) ; Return address
444 : ST 6, 0(4) ; Store return in callee frame
445 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
446 : LDA 7, 67(0) ; Call greater
447 : LD 1, 3(5) ; Load callee result into R1
448 : LDC 2, 6(0) ; Callee frame size
449 : SUB 5, 5, 2 ; Pop callee frame
450 : JEQ 1, 453(0) ; If condition is false, jump to ELSE
451 : LD 1, 5(5) ; Load parameter 'd' into R1
452 : LDA 7, !temp_30(0) ; Skip ELSE block
453 : LD 1, 3(5) ; Load parameter 'b' into R1
454 : ST 1, 6(5) ; Store function result into frame return slot
455 : LD 6, 0(5) ; Load return address
456 : LDA 7, 0(6) ; Return to caller
457 : LD 1, 3(5) ; Load parameter 'b' into R1
458 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2+i)
459 : LD 1, 1(5) ; Load parameter 'N' into R1
460 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2+i)
461 : LDA 4, 6(5) ; Callee base for arg copy
462 : LD 1, 7(5) ; Load staged arg 0 from caller temp
463 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
464 : LD 1, 8(5) ; Load staged arg 1 from caller temp
465 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
466 : LDA 6, 470(0) ; Return address
467 : ST 6, 0(4) ; Store return in callee frame
468 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
469 : LDA 7, 67(0) ; Call greater
470 : LD 1, 3(5) ; Load callee result into R1
471 : LDC 2, 6(0) ; Callee frame size
472 : SUB 5, 5, 2 ; Pop callee frame
473 : JEQ 1, 476(0) ; If condition is false, jump to ELSE
474 : LD 1, 4(5) ; Load parameter 'c' into R1
475 : LDA 7, !temp_33(0) ; Skip ELSE block
476 : LD 1, 2(5) ; Load parameter 'a' into R1
477 : ST 1, 6(5) ; Store function result into frame return slot
478 : LD 6, 0(5) ; Load return address
479 : LDA 7, 0(6) ; Return to caller
480 : LD 1, 3(5) ; Load parameter 'N' into R1
481 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
482 : LDC 1, 1(0) ; Load integer-literal into R1
483 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
484 : LD 1, 1(5) ; Load parameter 'xNum' into R1
485 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
486 : LD 1, 2(5) ; Load parameter 'xDen' into R1
487 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
488 : LD 1, 3(5) ; Load parameter 'N' into R1
489 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
490 : LDC 1, 0(0) ; Load integer-literal into R1
491 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
492 : LDC 1, 1(0) ; Load integer-literal into R1
493 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
494 : LDC 1, 1(0) ; Load integer-literal into R1
495 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
496 : LDC 1, 1(0) ; Load integer-literal into R1
497 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
498 : LDA 4, 18(5) ; Callee base for arg copy
499 : LD 1, 5(5) ; Load staged arg 0 from caller temp
500 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
501 : LD 1, 6(5) ; Load staged arg 1 from caller temp
502 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
503 : LD 1, 7(5) ; Load staged arg 2 from caller temp
504 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
505 : LD 1, 8(5) ; Load staged arg 3 from caller temp
506 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
507 : LD 1, 9(5) ; Load staged arg 4 from caller temp
508 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
509 : LD 1, 10(5) ; Load staged arg 5 from caller temp
510 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
511 : LD 1, 11(5) ; Load staged arg 6 from caller temp
512 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
513 : LD 1, 12(5) ; Load staged arg 7 from caller temp
514 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
515 : LDA 6, 519(0) ; Return address
516 : ST 6, 0(4) ; Store return in callee frame
517 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
518 : LDA 7, 140(0) ; Call whileLoopFor
519 : LD 1, 9(5) ; Load callee result into R1
520 : LDC 2, 18(0) ; Callee frame size
521 : SUB 5, 5, 2 ; Pop callee frame
522 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
523 : LDC 1, 2(0) ; Load integer-literal into R1
524 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
525 : LD 1, 1(5) ; Load parameter 'xNum' into R1
526 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
527 : LD 1, 2(5) ; Load parameter 'xDen' into R1
528 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
529 : LD 1, 3(5) ; Load parameter 'N' into R1
530 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
531 : LDC 1, 0(0) ; Load integer-literal into R1
532 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
533 : LDC 1, 1(0) ; Load integer-literal into R1
534 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
535 : LDC 1, 1(0) ; Load integer-literal into R1
536 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
537 : LDC 1, 1(0) ; Load integer-literal into R1
538 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
539 : LDA 4, 18(5) ; Callee base for arg copy
540 : LD 1, 5(5) ; Load staged arg 0 from caller temp
541 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
542 : LD 1, 6(5) ; Load staged arg 1 from caller temp
543 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
544 : LD 1, 7(5) ; Load staged arg 2 from caller temp
545 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
546 : LD 1, 8(5) ; Load staged arg 3 from caller temp
547 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
548 : LD 1, 9(5) ; Load staged arg 4 from caller temp
549 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
550 : LD 1, 10(5) ; Load staged arg 5 from caller temp
551 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
552 : LD 1, 11(5) ; Load staged arg 6 from caller temp
553 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
554 : LD 1, 12(5) ; Load staged arg 7 from caller temp
555 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
556 : LDA 6, 560(0) ; Return address
557 : ST 6, 0(4) ; Store return in callee frame
558 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
559 : LDA 7, 140(0) ; Call whileLoopFor
560 : LD 1, 9(5) ; Load callee result into R1
561 : LDC 2, 18(0) ; Callee frame size
562 : SUB 5, 5, 2 ; Pop callee frame
563 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
564 : LDC 1, 3(0) ; Load integer-literal into R1
565 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
566 : LD 1, 1(5) ; Load parameter 'xNum' into R1
567 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
568 : LD 1, 2(5) ; Load parameter 'xDen' into R1
569 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
570 : LD 1, 3(5) ; Load parameter 'N' into R1
571 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
572 : LDC 1, 0(0) ; Load integer-literal into R1
573 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
574 : LDC 1, 1(0) ; Load integer-literal into R1
575 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
576 : LDC 1, 1(0) ; Load integer-literal into R1
577 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
578 : LDC 1, 1(0) ; Load integer-literal into R1
579 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
580 : LDA 4, 18(5) ; Callee base for arg copy
581 : LD 1, 5(5) ; Load staged arg 0 from caller temp
582 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
583 : LD 1, 6(5) ; Load staged arg 1 from caller temp
584 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
585 : LD 1, 7(5) ; Load staged arg 2 from caller temp
586 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
587 : LD 1, 8(5) ; Load staged arg 3 from caller temp
588 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
589 : LD 1, 9(5) ; Load staged arg 4 from caller temp
590 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
591 : LD 1, 10(5) ; Load staged arg 5 from caller temp
592 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
593 : LD 1, 11(5) ; Load staged arg 6 from caller temp
594 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
595 : LD 1, 12(5) ; Load staged arg 7 from caller temp
596 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
597 : LDA 6, 601(0) ; Return address
598 : ST 6, 0(4) ; Store return in callee frame
599 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
600 : LDA 7, 140(0) ; Call whileLoopFor
601 : LD 1, 9(5) ; Load callee result into R1
602 : LDC 2, 18(0) ; Callee frame size
603 : SUB 5, 5, 2 ; Pop callee frame
604 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
605 : LDC 1, 4(0) ; Load integer-literal into R1
606 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
607 : LD 1, 1(5) ; Load parameter 'xNum' into R1
608 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
609 : LD 1, 2(5) ; Load parameter 'xDen' into R1
610 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
611 : LD 1, 3(5) ; Load parameter 'N' into R1
612 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
613 : LDC 1, 0(0) ; Load integer-literal into R1
614 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
615 : LDC 1, 1(0) ; Load integer-literal into R1
616 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
617 : LDC 1, 1(0) ; Load integer-literal into R1
618 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
619 : LDC 1, 1(0) ; Load integer-literal into R1
620 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
621 : LDA 4, 18(5) ; Callee base for arg copy
622 : LD 1, 5(5) ; Load staged arg 0 from caller temp
623 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
624 : LD 1, 6(5) ; Load staged arg 1 from caller temp
625 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
626 : LD 1, 7(5) ; Load staged arg 2 from caller temp
627 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
628 : LD 1, 8(5) ; Load staged arg 3 from caller temp
629 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
630 : LD 1, 9(5) ; Load staged arg 4 from caller temp
631 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
632 : LD 1, 10(5) ; Load staged arg 5 from caller temp
633 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
634 : LD 1, 11(5) ; Load staged arg 6 from caller temp
635 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
636 : LD 1, 12(5) ; Load staged arg 7 from caller temp
637 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
638 : LDA 6, 642(0) ; Return address
639 : ST 6, 0(4) ; Store return in callee frame
640 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
641 : LDA 7, 140(0) ; Call whileLoopFor
642 : LD 1, 9(5) ; Load callee result into R1
643 : LDC 2, 18(0) ; Callee frame size
644 : SUB 5, 5, 2 ; Pop callee frame
645 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
646 : LDA 4, 9(5) ; Callee base for arg copy
647 : LD 1, 5(5) ; Load staged arg 0 from caller temp
648 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
649 : LD 1, 6(5) ; Load staged arg 1 from caller temp
650 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
651 : LD 1, 7(5) ; Load staged arg 2 from caller temp
652 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
653 : LD 1, 8(5) ; Load staged arg 3 from caller temp
654 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
655 : LD 1, 9(5) ; Load staged arg 4 from caller temp
656 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
657 : LDA 6, 661(0) ; Return address
658 : ST 6, 0(4) ; Store return in callee frame
659 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
660 : LDA 7, 434(0) ; Call fareySelectDen
661 : LD 1, 6(5) ; Load callee result into R1
662 : LDC 2, 9(0) ; Callee frame size
663 : SUB 5, 5, 2 ; Pop callee frame
664 : ST 1, 4(5) ; Store function result into frame return slot
665 : LD 6, 0(5) ; Load return address
666 : LDA 7, 0(6) ; Return to caller
667 : LD 1, 3(5) ; Load parameter 'N' into R1
668 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
669 : LDC 1, 1(0) ; Load integer-literal into R1
670 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
671 : LD 1, 1(5) ; Load parameter 'xNum' into R1
672 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
673 : LD 1, 2(5) ; Load parameter 'xDen' into R1
674 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
675 : LD 1, 3(5) ; Load parameter 'N' into R1
676 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
677 : LDC 1, 0(0) ; Load integer-literal into R1
678 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
679 : LDC 1, 1(0) ; Load integer-literal into R1
680 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
681 : LDC 1, 1(0) ; Load integer-literal into R1
682 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
683 : LDC 1, 1(0) ; Load integer-literal into R1
684 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
685 : LDA 4, 18(5) ; Callee base for arg copy
686 : LD 1, 5(5) ; Load staged arg 0 from caller temp
687 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
688 : LD 1, 6(5) ; Load staged arg 1 from caller temp
689 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
690 : LD 1, 7(5) ; Load staged arg 2 from caller temp
691 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
692 : LD 1, 8(5) ; Load staged arg 3 from caller temp
693 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
694 : LD 1, 9(5) ; Load staged arg 4 from caller temp
695 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
696 : LD 1, 10(5) ; Load staged arg 5 from caller temp
697 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
698 : LD 1, 11(5) ; Load staged arg 6 from caller temp
699 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
700 : LD 1, 12(5) ; Load staged arg 7 from caller temp
701 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
702 : LDA 6, 706(0) ; Return address
703 : ST 6, 0(4) ; Store return in callee frame
704 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
705 : LDA 7, 140(0) ; Call whileLoopFor
706 : LD 1, 9(5) ; Load callee result into R1
707 : LDC 2, 18(0) ; Callee frame size
708 : SUB 5, 5, 2 ; Pop callee frame
709 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
710 : LDC 1, 2(0) ; Load integer-literal into R1
711 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
712 : LD 1, 1(5) ; Load parameter 'xNum' into R1
713 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
714 : LD 1, 2(5) ; Load parameter 'xDen' into R1
715 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
716 : LD 1, 3(5) ; Load parameter 'N' into R1
717 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
718 : LDC 1, 0(0) ; Load integer-literal into R1
719 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
720 : LDC 1, 1(0) ; Load integer-literal into R1
721 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
722 : LDC 1, 1(0) ; Load integer-literal into R1
723 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
724 : LDC 1, 1(0) ; Load integer-literal into R1
725 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
726 : LDA 4, 18(5) ; Callee base for arg copy
727 : LD 1, 5(5) ; Load staged arg 0 from caller temp
728 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
729 : LD 1, 6(5) ; Load staged arg 1 from caller temp
730 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
731 : LD 1, 7(5) ; Load staged arg 2 from caller temp
732 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
733 : LD 1, 8(5) ; Load staged arg 3 from caller temp
734 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
735 : LD 1, 9(5) ; Load staged arg 4 from caller temp
736 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
737 : LD 1, 10(5) ; Load staged arg 5 from caller temp
738 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
739 : LD 1, 11(5) ; Load staged arg 6 from caller temp
740 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
741 : LD 1, 12(5) ; Load staged arg 7 from caller temp
742 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
743 : LDA 6, 747(0) ; Return address
744 : ST 6, 0(4) ; Store return in callee frame
745 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
746 : LDA 7, 140(0) ; Call whileLoopFor
747 : LD 1, 9(5) ; Load callee result into R1
748 : LDC 2, 18(0) ; Callee frame size
749 : SUB 5, 5, 2 ; Pop callee frame
750 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
751 : LDC 1, 3(0) ; Load integer-literal into R1
752 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
753 : LD 1, 1(5) ; Load parameter 'xNum' into R1
754 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
755 : LD 1, 2(5) ; Load parameter 'xDen' into R1
756 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
757 : LD 1, 3(5) ; Load parameter 'N' into R1
758 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
759 : LDC 1, 0(0) ; Load integer-literal into R1
760 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
761 : LDC 1, 1(0) ; Load integer-literal into R1
762 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
763 : LDC 1, 1(0) ; Load integer-literal into R1
764 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
765 : LDC 1, 1(0) ; Load integer-literal into R1
766 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
767 : LDA 4, 18(5) ; Callee base for arg copy
768 : LD 1, 5(5) ; Load staged arg 0 from caller temp
769 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
770 : LD 1, 6(5) ; Load staged arg 1 from caller temp
771 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
772 : LD 1, 7(5) ; Load staged arg 2 from caller temp
773 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
774 : LD 1, 8(5) ; Load staged arg 3 from caller temp
775 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
776 : LD 1, 9(5) ; Load staged arg 4 from caller temp
777 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
778 : LD 1, 10(5) ; Load staged arg 5 from caller temp
779 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
780 : LD 1, 11(5) ; Load staged arg 6 from caller temp
781 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
782 : LD 1, 12(5) ; Load staged arg 7 from caller temp
783 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
784 : LDA 6, 788(0) ; Return address
785 : ST 6, 0(4) ; Store return in callee frame
786 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
787 : LDA 7, 140(0) ; Call whileLoopFor
788 : LD 1, 9(5) ; Load callee result into R1
789 : LDC 2, 18(0) ; Callee frame size
790 : SUB 5, 5, 2 ; Pop callee frame
791 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
792 : LDC 1, 4(0) ; Load integer-literal into R1
793 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
794 : LD 1, 1(5) ; Load parameter 'xNum' into R1
795 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
796 : LD 1, 2(5) ; Load parameter 'xDen' into R1
797 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
798 : LD 1, 3(5) ; Load parameter 'N' into R1
799 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
800 : LDC 1, 0(0) ; Load integer-literal into R1
801 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
802 : LDC 1, 1(0) ; Load integer-literal into R1
803 : ST 1, 10(5) ; Stage arg 5 in caller temp (P+2+i)
804 : LDC 1, 1(0) ; Load integer-literal into R1
805 : ST 1, 11(5) ; Stage arg 6 in caller temp (P+2+i)
806 : LDC 1, 1(0) ; Load integer-literal into R1
807 : ST 1, 12(5) ; Stage arg 7 in caller temp (P+2+i)
808 : LDA 4, 18(5) ; Callee base for arg copy
809 : LD 1, 5(5) ; Load staged arg 0 from caller temp
810 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
811 : LD 1, 6(5) ; Load staged arg 1 from caller temp
812 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
813 : LD 1, 7(5) ; Load staged arg 2 from caller temp
814 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
815 : LD 1, 8(5) ; Load staged arg 3 from caller temp
816 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
817 : LD 1, 9(5) ; Load staged arg 4 from caller temp
818 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
819 : LD 1, 10(5) ; Load staged arg 5 from caller temp
820 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
821 : LD 1, 11(5) ; Load staged arg 6 from caller temp
822 : ST 1, 7(4) ; Copy arg 6 into callee param slot 7
823 : LD 1, 12(5) ; Load staged arg 7 from caller temp
824 : ST 1, 8(4) ; Copy arg 7 into callee param slot 8
825 : LDA 6, 829(0) ; Return address
826 : ST 6, 0(4) ; Store return in callee frame
827 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
828 : LDA 7, 140(0) ; Call whileLoopFor
829 : LD 1, 9(5) ; Load callee result into R1
830 : LDC 2, 18(0) ; Callee frame size
831 : SUB 5, 5, 2 ; Pop callee frame
832 : ST 1, 9(5) ; Stage arg 4 in caller temp (P+2+i)
833 : LDA 4, 9(5) ; Callee base for arg copy
834 : LD 1, 5(5) ; Load staged arg 0 from caller temp
835 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
836 : LD 1, 6(5) ; Load staged arg 1 from caller temp
837 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
838 : LD 1, 7(5) ; Load staged arg 2 from caller temp
839 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
840 : LD 1, 8(5) ; Load staged arg 3 from caller temp
841 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
842 : LD 1, 9(5) ; Load staged arg 4 from caller temp
843 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
844 : LDA 6, 848(0) ; Return address
845 : ST 6, 0(4) ; Store return in callee frame
846 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
847 : LDA 7, 457(0) ; Call fareySelectNum
848 : LD 1, 6(5) ; Load callee result into R1
849 : LDC 2, 9(0) ; Callee frame size
850 : SUB 5, 5, 2 ; Pop callee frame
851 : ST 1, 4(5) ; Store function result into frame return slot
852 : LD 6, 0(5) ; Load return address
853 : LDA 7, 0(6) ; Return to caller
