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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 3(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDA 4, 3(5) ; Callee base for call
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
21 : LDA 7, 262(0) ; Call SQRT
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 3(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : LDA 4, 3(5) ; Callee base for built-in print
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address in callee frame
28 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
29 : LDA 7, 9(0) ; Call built-in print
30 : LDC 2, 3(0) ; Callee frame size (print)
31 : SUB 5, 5, 2 ; Pop back to caller
32 : LD 1, 1(5) ; Load parameter 'testArgument' into R1
33 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
34 : LDA 4, 4(5) ; Callee base for arg copy
35 : LD 1, 3(5) ; Load staged arg 0 from caller temp
36 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
37 : LDA 4, 4(5) ; Callee base for call
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 288(0) ; Call ODD
42 : LD 1, 2(5) ; Load callee result into R1
43 : LDC 2, 4(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop callee frame
45 : ST 1, 2(5) ; Store result into caller’s frame
46 : LD 1, 2(5) ; Load main return value into R1
47 : LD 6, 0(5) ; Load main return address
48 : LDA 7, 0(6) ; Return from main
49 : LD 1, 4(5) ; Load parameter 'mid' into R1
50 : ST 1, 6(5) ; Spill left operand at depth 0
51 : LD 1, 4(5) ; Load parameter 'mid' into R1
52 : LD 2, 6(5) ; Restore left operand from depth 0
53 : MUL 1, 2, 1 ; R1 = left * right
54 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
55 : LDA 4, 5(5) ; Callee base for arg copy
56 : LD 1, 6(5) ; Load staged arg 0 from caller temp
57 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
58 : LD 1, 1(5) ; Load parameter 'n' into R1
59 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
60 : LDA 4, 5(5) ; Callee base for arg copy
61 : LD 1, 6(5) ; Load staged arg 1 from caller temp
62 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
63 : LDA 4, 5(5) ; Callee base for call
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
67 : LDA 7, 643(0) ; Call LE
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 5(0) ; Callee frame size
70 : SUB 5, 5, 2 ; Pop callee frame
71 : JEQ 1, 96(0) ; If condition is false, jump to ELSE
72 : LD 1, 1(5) ; Load parameter 'n' into R1
73 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
74 : LDA 4, 6(5) ; Callee base for arg copy
75 : LD 1, 6(5) ; Load staged arg 0 from caller temp
76 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
77 : LD 1, 4(5) ; Load parameter 'mid' into R1
78 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
79 : LDA 4, 6(5) ; Callee base for arg copy
80 : LD 1, 6(5) ; Load staged arg 1 from caller temp
81 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
82 : LD 1, 3(5) ; Load parameter 'high' into R1
83 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
84 : LDA 4, 6(5) ; Callee base for arg copy
85 : LD 1, 6(5) ; Load staged arg 2 from caller temp
86 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
87 : LDA 4, 6(5) ; Callee base for call
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return in callee frame
90 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
91 : LDA 7, 122(0) ; Call SQRTSEARCH
92 : LD 1, 4(5) ; Load callee result into R1
93 : LDC 2, 6(0) ; Callee frame size
94 : SUB 5, 5, 2 ; Pop callee frame
95 : LDA 7, 119(0) ; Skip ELSE block
96 : LD 1, 1(5) ; Load parameter 'n' into R1
97 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
98 : LDA 4, 6(5) ; Callee base for arg copy
99 : LD 1, 6(5) ; Load staged arg 0 from caller temp
100 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
101 : LD 1, 2(5) ; Load parameter 'low' into R1
102 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
103 : LDA 4, 6(5) ; Callee base for arg copy
104 : LD 1, 6(5) ; Load staged arg 1 from caller temp
105 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
106 : LD 1, 4(5) ; Load parameter 'mid' into R1
107 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
108 : LDA 4, 6(5) ; Callee base for arg copy
109 : LD 1, 6(5) ; Load staged arg 2 from caller temp
110 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
111 : LDA 4, 6(5) ; Callee base for call
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
115 : LDA 7, 122(0) ; Call SQRTSEARCH
116 : LD 1, 4(5) ; Load callee result into R1
117 : LDC 2, 6(0) ; Callee frame size
118 : SUB 5, 5, 2 ; Pop callee frame
119 : ST 1, 5(5) ; Store function result into frame return slot
120 : LD 6, 0(5) ; Load return address
121 : LDA 7, 0(6) ; Return to caller
122 : LD 1, 3(5) ; Load parameter 'high' into R1
123 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
124 : LDA 4, 5(5) ; Callee base for arg copy
125 : LD 1, 5(5) ; Load staged arg 0 from caller temp
126 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
127 : LD 1, 2(5) ; Load parameter 'low' into R1
128 : ST 1, 5(5) ; Spill left operand at depth 0
129 : LDC 1, 1(0) ; Load integer-literal into R1
130 : LD 2, 5(5) ; Restore left operand from depth 0
131 : ADD 1, 2, 1 ; R1 = left + right
132 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
133 : LDA 4, 5(5) ; Callee base for arg copy
134 : LD 1, 5(5) ; Load staged arg 1 from caller temp
135 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
136 : LDA 4, 5(5) ; Callee base for call
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
140 : LDA 7, 643(0) ; Call LE
141 : LD 1, 3(5) ; Load callee result into R1
142 : LDC 2, 5(0) ; Callee frame size
143 : SUB 5, 5, 2 ; Pop callee frame
144 : JEQ 1, 210(0) ; If condition is false, jump to ELSE
145 : LD 1, 1(5) ; Load parameter 'n' into R1
146 : ST 1, 5(5) ; Spill left operand at depth 0
147 : LD 1, 2(5) ; Load parameter 'low' into R1
148 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
149 : LDA 4, 5(5) ; Callee base for arg copy
150 : LD 1, 5(5) ; Load staged arg 0 from caller temp
151 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
152 : LD 1, 2(5) ; Load parameter 'low' into R1
153 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
154 : LDA 4, 5(5) ; Callee base for arg copy
155 : LD 1, 5(5) ; Load staged arg 1 from caller temp
156 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
157 : LDA 4, 5(5) ; Callee base for call
158 : LDA 6, 162(0) ; Return address
159 : ST 6, 0(4) ; Store return in callee frame
160 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
161 : LDA 7, 557(0) ; Call TIMES
162 : LD 1, 3(5) ; Load callee result into R1
163 : LDC 2, 5(0) ; Callee frame size
164 : SUB 5, 5, 2 ; Pop callee frame
165 : LD 2, 5(5) ; Restore left operand from depth 0
166 : SUB 1, 2, 1 ; R1 = left - right
167 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
168 : LDA 4, 5(5) ; Callee base for arg copy
169 : LD 1, 5(5) ; Load staged arg 0 from caller temp
170 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
171 : LD 1, 3(5) ; Load parameter 'high' into R1
172 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
173 : LDA 4, 5(5) ; Callee base for arg copy
174 : LD 1, 5(5) ; Load staged arg 0 from caller temp
175 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
176 : LD 1, 3(5) ; Load parameter 'high' into R1
177 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
178 : LDA 4, 5(5) ; Callee base for arg copy
179 : LD 1, 5(5) ; Load staged arg 1 from caller temp
180 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
181 : LDA 4, 5(5) ; Callee base for call
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
185 : LDA 7, 557(0) ; Call TIMES
186 : LD 1, 3(5) ; Load callee result into R1
187 : LDC 2, 5(0) ; Callee frame size
188 : SUB 5, 5, 2 ; Pop callee frame
189 : ST 1, 5(5) ; Spill left operand at depth 0
190 : LD 1, 1(5) ; Load parameter 'n' into R1
191 : LD 2, 5(5) ; Restore left operand from depth 0
192 : SUB 1, 2, 1 ; R1 = left - right
193 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
194 : LDA 4, 5(5) ; Callee base for arg copy
195 : LD 1, 5(5) ; Load staged arg 1 from caller temp
196 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
197 : LDA 4, 5(5) ; Callee base for call
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
201 : LDA 7, 643(0) ; Call LE
202 : LD 1, 3(5) ; Load callee result into R1
203 : LDC 2, 5(0) ; Callee frame size
204 : SUB 5, 5, 2 ; Pop callee frame
205 : JEQ 1, 208(0) ; If condition is false, jump to ELSE
206 : LD 1, 2(5) ; Load parameter 'low' into R1
207 : LDA 7, 209(0) ; Skip ELSE block
208 : LD 1, 3(5) ; Load parameter 'high' into R1
209 : LDA 7, 259(0) ; Skip ELSE block
210 : LD 1, 1(5) ; Load parameter 'n' into R1
211 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
212 : LDA 4, 7(5) ; Callee base for arg copy
213 : LD 1, 5(5) ; Load staged arg 0 from caller temp
214 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
215 : LD 1, 2(5) ; Load parameter 'low' into R1
216 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
217 : LDA 4, 7(5) ; Callee base for arg copy
218 : LD 1, 5(5) ; Load staged arg 1 from caller temp
219 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
220 : LD 1, 3(5) ; Load parameter 'high' into R1
221 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
222 : LDA 4, 7(5) ; Callee base for arg copy
223 : LD 1, 5(5) ; Load staged arg 2 from caller temp
224 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
225 : LD 1, 2(5) ; Load parameter 'low' into R1
226 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
227 : LDA 4, 5(5) ; Callee base for arg copy
228 : LD 1, 5(5) ; Load staged arg 0 from caller temp
229 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
230 : LD 1, 3(5) ; Load parameter 'high' into R1
231 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
232 : LDA 4, 5(5) ; Callee base for arg copy
233 : LD 1, 5(5) ; Load staged arg 1 from caller temp
234 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
235 : LDA 4, 5(5) ; Callee base for call
236 : LDA 6, 240(0) ; Return address
237 : ST 6, 0(4) ; Store return in callee frame
238 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
239 : LDA 7, 573(0) ; Call PLUS
240 : LD 1, 3(5) ; Load callee result into R1
241 : LDC 2, 5(0) ; Callee frame size
242 : SUB 5, 5, 2 ; Pop callee frame
243 : ST 1, 5(5) ; Spill left operand at depth 0
244 : LDC 1, 2(0) ; Load integer-literal into R1
245 : LD 2, 5(5) ; Restore left operand from depth 0
246 : DIV 1, 2, 1 ; R1 = left / right
247 : ST 1, 5(5) ; Stage arg 3 in caller temp (P+2)
248 : LDA 4, 7(5) ; Callee base for arg copy
249 : LD 1, 5(5) ; Load staged arg 3 from caller temp
250 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
251 : LDA 4, 7(5) ; Callee base for call
252 : LDA 6, 256(0) ; Return address
253 : ST 6, 0(4) ; Store return in callee frame
254 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
255 : LDA 7, 49(0) ; Call SQRTSPLIT
256 : LD 1, 5(5) ; Load callee result into R1
257 : LDC 2, 7(0) ; Callee frame size
258 : SUB 5, 5, 2 ; Pop callee frame
259 : ST 1, 4(5) ; Store function result into frame return slot
260 : LD 6, 0(5) ; Load return address
261 : LDA 7, 0(6) ; Return to caller
262 : LD 1, 1(5) ; Load parameter 'n' into R1
263 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
264 : LDA 4, 6(5) ; Callee base for arg copy
265 : LD 1, 3(5) ; Load staged arg 0 from caller temp
266 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
267 : LDC 1, 0(0) ; Load integer-literal into R1
268 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
269 : LDA 4, 6(5) ; Callee base for arg copy
270 : LD 1, 3(5) ; Load staged arg 1 from caller temp
271 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
272 : LD 1, 1(5) ; Load parameter 'n' into R1
273 : ST 1, 3(5) ; Stage arg 2 in caller temp (P+2)
274 : LDA 4, 6(5) ; Callee base for arg copy
275 : LD 1, 3(5) ; Load staged arg 2 from caller temp
276 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
277 : LDA 4, 6(5) ; Callee base for call
278 : LDA 6, 282(0) ; Return address
279 : ST 6, 0(4) ; Store return in callee frame
280 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
281 : LDA 7, 122(0) ; Call SQRTSEARCH
282 : LD 1, 4(5) ; Load callee result into R1
283 : LDC 2, 6(0) ; Callee frame size
284 : SUB 5, 5, 2 ; Pop callee frame
285 : ST 1, 2(5) ; Store function result into frame return slot
286 : LD 6, 0(5) ; Load return address
287 : LDA 7, 0(6) ; Return to caller
288 : LDC 1, 0(0) ; Load integer-literal into R1
289 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
290 : LDA 4, 5(5) ; Callee base for arg copy
291 : LD 1, 3(5) ; Load staged arg 0 from caller temp
292 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
293 : LD 1, 1(5) ; Load parameter 'n' into R1
294 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
295 : LDA 4, 5(5) ; Callee base for arg copy
296 : LD 1, 3(5) ; Load staged arg 1 from caller temp
297 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
298 : LDA 4, 5(5) ; Callee base for call
299 : LDA 6, 303(0) ; Return address
300 : ST 6, 0(4) ; Store return in callee frame
301 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
302 : LDA 7, 643(0) ; Call LE
303 : LD 1, 3(5) ; Load callee result into R1
304 : LDC 2, 5(0) ; Callee frame size
305 : SUB 5, 5, 2 ; Pop callee frame
306 : JEQ 1, 364(0) ; If condition is false, jump to ELSE
307 : LD 1, 1(5) ; Load parameter 'n' into R1
308 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
309 : LDA 4, 4(5) ; Callee base for arg copy
310 : LD 1, 3(5) ; Load staged arg 0 from caller temp
311 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
312 : LD 1, 1(5) ; Load parameter 'n' into R1
313 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
314 : LDA 4, 5(5) ; Callee base for arg copy
315 : LD 1, 3(5) ; Load staged arg 0 from caller temp
316 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
317 : LDC 1, 2(0) ; Load integer-literal into R1
318 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
319 : LDA 4, 5(5) ; Callee base for arg copy
320 : LD 1, 3(5) ; Load staged arg 1 from caller temp
321 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
322 : LDA 4, 5(5) ; Callee base for call
323 : LDA 6, 327(0) ; Return address
324 : ST 6, 0(4) ; Store return in callee frame
325 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
326 : LDA 7, 549(0) ; Call DIV
327 : LD 1, 3(5) ; Load callee result into R1
328 : LDC 2, 5(0) ; Callee frame size
329 : SUB 5, 5, 2 ; Pop callee frame
330 : ST 1, 3(5) ; Spill left operand at depth 0
331 : LD 1, 1(5) ; Load parameter 'n' into R1
332 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
333 : LDA 4, 5(5) ; Callee base for arg copy
334 : LD 1, 3(5) ; Load staged arg 0 from caller temp
335 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
336 : LDC 1, 2(0) ; Load integer-literal into R1
337 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
338 : LDA 4, 5(5) ; Callee base for arg copy
339 : LD 1, 3(5) ; Load staged arg 1 from caller temp
340 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
341 : LDA 4, 5(5) ; Callee base for call
342 : LDA 6, 346(0) ; Return address
343 : ST 6, 0(4) ; Store return in callee frame
344 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
345 : LDA 7, 549(0) ; Call DIV
346 : LD 1, 3(5) ; Load callee result into R1
347 : LDC 2, 5(0) ; Callee frame size
348 : SUB 5, 5, 2 ; Pop callee frame
349 : LD 2, 3(5) ; Restore left operand from depth 0
350 : ADD 1, 2, 1 ; R1 = left + right
351 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
352 : LDA 4, 4(5) ; Callee base for arg copy
353 : LD 1, 3(5) ; Load staged arg 1 from caller temp
354 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
355 : LDA 4, 4(5) ; Callee base for call
356 : LDA 6, 360(0) ; Return address
357 : ST 6, 0(4) ; Store return in callee frame
358 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
359 : LDA 7, 597(0) ; Call GT
360 : LD 1, 3(5) ; Load callee result into R1
361 : LDC 2, 4(0) ; Callee frame size
362 : SUB 5, 5, 2 ; Pop callee frame
363 : LDA 7, 456(0) ; Skip ELSE block
364 : LD 1, 1(5) ; Load parameter 'n' into R1
365 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
366 : LDA 4, 3(5) ; Callee base for arg copy
367 : LD 1, 3(5) ; Load staged arg 0 from caller temp
368 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
369 : LDA 4, 3(5) ; Callee base for call
370 : LDA 6, 374(0) ; Return address
371 : ST 6, 0(4) ; Store return in callee frame
372 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
373 : LDA 7, 544(0) ; Call NEG
374 : LD 1, 2(5) ; Load callee result into R1
375 : LDC 2, 3(0) ; Callee frame size
376 : SUB 5, 5, 2 ; Pop callee frame
377 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
378 : LDA 4, 4(5) ; Callee base for arg copy
379 : LD 1, 3(5) ; Load staged arg 0 from caller temp
380 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
381 : LD 1, 1(5) ; Load parameter 'n' into R1
382 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
383 : LDA 4, 3(5) ; Callee base for arg copy
384 : LD 1, 3(5) ; Load staged arg 0 from caller temp
385 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
386 : LDA 4, 3(5) ; Callee base for call
387 : LDA 6, 391(0) ; Return address
388 : ST 6, 0(4) ; Store return in callee frame
389 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
390 : LDA 7, 544(0) ; Call NEG
391 : LD 1, 2(5) ; Load callee result into R1
392 : LDC 2, 3(0) ; Callee frame size
393 : SUB 5, 5, 2 ; Pop callee frame
394 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
395 : LDA 4, 5(5) ; Callee base for arg copy
396 : LD 1, 3(5) ; Load staged arg 0 from caller temp
397 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
398 : LDC 1, 2(0) ; Load integer-literal into R1
399 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
400 : LDA 4, 5(5) ; Callee base for arg copy
401 : LD 1, 3(5) ; Load staged arg 1 from caller temp
402 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
403 : LDA 4, 5(5) ; Callee base for call
404 : LDA 6, 408(0) ; Return address
405 : ST 6, 0(4) ; Store return in callee frame
406 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
407 : LDA 7, 549(0) ; Call DIV
408 : LD 1, 3(5) ; Load callee result into R1
409 : LDC 2, 5(0) ; Callee frame size
410 : SUB 5, 5, 2 ; Pop callee frame
411 : ST 1, 3(5) ; Spill left operand at depth 0
412 : LD 1, 1(5) ; Load parameter 'n' into R1
413 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
414 : LDA 4, 3(5) ; Callee base for arg copy
415 : LD 1, 3(5) ; Load staged arg 0 from caller temp
416 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
417 : LDA 4, 3(5) ; Callee base for call
418 : LDA 6, 422(0) ; Return address
419 : ST 6, 0(4) ; Store return in callee frame
420 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
421 : LDA 7, 544(0) ; Call NEG
422 : LD 1, 2(5) ; Load callee result into R1
423 : LDC 2, 3(0) ; Callee frame size
424 : SUB 5, 5, 2 ; Pop callee frame
425 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
426 : LDA 4, 5(5) ; Callee base for arg copy
427 : LD 1, 3(5) ; Load staged arg 0 from caller temp
428 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
429 : LDC 1, 2(0) ; Load integer-literal into R1
430 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
431 : LDA 4, 5(5) ; Callee base for arg copy
432 : LD 1, 3(5) ; Load staged arg 1 from caller temp
433 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
434 : LDA 4, 5(5) ; Callee base for call
435 : LDA 6, 439(0) ; Return address
436 : ST 6, 0(4) ; Store return in callee frame
437 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
438 : LDA 7, 549(0) ; Call DIV
439 : LD 1, 3(5) ; Load callee result into R1
440 : LDC 2, 5(0) ; Callee frame size
441 : SUB 5, 5, 2 ; Pop callee frame
442 : LD 2, 3(5) ; Restore left operand from depth 0
443 : ADD 1, 2, 1 ; R1 = left + right
444 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
445 : LDA 4, 4(5) ; Callee base for arg copy
446 : LD 1, 3(5) ; Load staged arg 1 from caller temp
447 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
448 : LDA 4, 4(5) ; Callee base for call
449 : LDA 6, 453(0) ; Return address
450 : ST 6, 0(4) ; Store return in callee frame
451 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
452 : LDA 7, 597(0) ; Call GT
453 : LD 1, 3(5) ; Load callee result into R1
454 : LDC 2, 4(0) ; Callee frame size
455 : SUB 5, 5, 2 ; Pop callee frame
456 : ST 1, 2(5) ; Store function result into frame return slot
457 : LD 6, 0(5) ; Load return address
458 : LDA 7, 0(6) ; Return to caller
459 : LD 1, 2(5) ; Load parameter 'n' into R1
460 : ST 1, 4(5) ; Spill left operand at depth 0
461 : LDC 1, 0(0) ; Load integer-literal into R1
462 : LD 2, 4(5) ; Restore left operand from depth 0
463 : SUB 1, 2, 1 ; left - right for equality check
464 : JEQ 1, 2(7) ; If R1 == 0, jump to true
465 : LDC 1, 0(0) ; false
466 : LDA 7, 1(7) ; skip setting true
467 : LDC 1, 1(0) ; true
468 : JEQ 1, 471(0) ; If condition is false, jump to ELSE
469 : LDC 1, 1(0) ; Load integer-literal into R1
470 : LDA 7, 497(0) ; Skip ELSE block
471 : LD 1, 1(5) ; Load parameter 'm' into R1
472 : ST 1, 4(5) ; Spill left operand at depth 0
473 : LD 1, 1(5) ; Load parameter 'm' into R1
474 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
475 : LDA 4, 6(5) ; Callee base for arg copy
476 : LD 1, 4(5) ; Load staged arg 0 from caller temp
477 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
478 : LD 1, 2(5) ; Load parameter 'n' into R1
479 : ST 1, 5(5) ; Spill left operand at depth 1
480 : LDC 1, 1(0) ; Load integer-literal into R1
481 : LD 2, 5(5) ; Restore left operand from depth 1
482 : SUB 1, 2, 1 ; R1 = left - right
483 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
484 : LDA 4, 6(5) ; Callee base for arg copy
485 : LD 1, 4(5) ; Load staged arg 1 from caller temp
486 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
487 : LDA 4, 6(5) ; Callee base for call
488 : LDA 6, 492(0) ; Return address
489 : ST 6, 0(4) ; Store return in callee frame
490 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
491 : LDA 7, 459(0) ; Call EXP
492 : LD 1, 3(5) ; Load callee result into R1
493 : LDC 2, 6(0) ; Callee frame size
494 : SUB 5, 5, 2 ; Pop callee frame
495 : LD 2, 4(5) ; Restore left operand from depth 0
496 : MUL 1, 2, 1 ; R1 = left * right
497 : ST 1, 3(5) ; Store function result into frame return slot
498 : LD 6, 0(5) ; Load return address
499 : LDA 7, 0(6) ; Return to caller
500 : LD 1, 1(5) ; Load parameter 'm' into R1
501 : ST 1, 4(5) ; Spill left operand at depth 0
502 : LD 1, 1(5) ; Load parameter 'm' into R1
503 : ST 1, 5(5) ; Spill left operand at depth 1
504 : LD 1, 2(5) ; Load parameter 'n' into R1
505 : LD 2, 5(5) ; Restore left operand from depth 1
506 : DIV 1, 2, 1 ; R1 = left / right
507 : ST 1, 5(5) ; Spill left operand at depth 1
508 : LD 1, 2(5) ; Load parameter 'n' into R1
509 : LD 2, 5(5) ; Restore left operand from depth 1
510 : MUL 1, 2, 1 ; R1 = left * right
511 : LD 2, 4(5) ; Restore left operand from depth 0
512 : SUB 1, 2, 1 ; R1 = left - right
513 : ST 1, 3(5) ; Store function result into frame return slot
514 : LD 6, 0(5) ; Load return address
515 : LDA 7, 0(6) ; Return to caller
516 : LDC 1, 0(0) ; Load integer-literal into R1
517 : ST 1, 3(5) ; Spill left operand at depth 0
518 : LD 1, 1(5) ; Load parameter 'n' into R1
519 : LD 2, 3(5) ; Restore left operand from depth 0
520 : SUB 1, 2, 1 ; left - right for less-than check
521 : JLT 1, 2(7) ; If R1 < 0, jump to true
522 : LDC 1, 0(0) ; false
523 : LDA 7, 1(7) ; skip setting true
524 : LDC 1, 1(0) ; true
525 : JEQ 1, 528(0) ; If condition is false, jump to ELSE
526 : LD 1, 1(5) ; Load parameter 'n' into R1
527 : LDA 7, 541(0) ; Skip ELSE block
528 : LD 1, 1(5) ; Load parameter 'n' into R1
529 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
530 : LDA 4, 3(5) ; Callee base for arg copy
531 : LD 1, 3(5) ; Load staged arg 0 from caller temp
532 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
533 : LDA 4, 3(5) ; Callee base for call
534 : LDA 6, 538(0) ; Return address
535 : ST 6, 0(4) ; Store return in callee frame
536 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
537 : LDA 7, 544(0) ; Call NEG
538 : LD 1, 2(5) ; Load callee result into R1
539 : LDC 2, 3(0) ; Callee frame size
540 : SUB 5, 5, 2 ; Pop callee frame
541 : ST 1, 2(5) ; Store function result into frame return slot
542 : LD 6, 0(5) ; Load return address
543 : LDA 7, 0(6) ; Return to caller
544 : LD 1, 1(5) ; Load parameter 'n' into R1
545 : SUB 1, 0, 1 ; Negate value in R1
546 : ST 1, 2(5) ; Store function result into frame return slot
547 : LD 6, 0(5) ; Load return address
548 : LDA 7, 0(6) ; Return to caller
549 : LD 1, 1(5) ; Load parameter 'p' into R1
550 : ST 1, 4(5) ; Spill left operand at depth 0
551 : LD 1, 2(5) ; Load parameter 'q' into R1
552 : LD 2, 4(5) ; Restore left operand from depth 0
553 : DIV 1, 2, 1 ; R1 = left / right
554 : ST 1, 3(5) ; Store function result into frame return slot
555 : LD 6, 0(5) ; Load return address
556 : LDA 7, 0(6) ; Return to caller
557 : LD 1, 1(5) ; Load parameter 'p' into R1
558 : ST 1, 4(5) ; Spill left operand at depth 0
559 : LD 1, 2(5) ; Load parameter 'q' into R1
560 : LD 2, 4(5) ; Restore left operand from depth 0
561 : MUL 1, 2, 1 ; R1 = left * right
562 : ST 1, 3(5) ; Store function result into frame return slot
563 : LD 6, 0(5) ; Load return address
564 : LDA 7, 0(6) ; Return to caller
565 : LD 1, 1(5) ; Load parameter 'p' into R1
566 : ST 1, 4(5) ; Spill left operand at depth 0
567 : LD 1, 2(5) ; Load parameter 'q' into R1
568 : LD 2, 4(5) ; Restore left operand from depth 0
569 : SUB 1, 2, 1 ; R1 = left - right
570 : ST 1, 3(5) ; Store function result into frame return slot
571 : LD 6, 0(5) ; Load return address
572 : LDA 7, 0(6) ; Return to caller
573 : LD 1, 1(5) ; Load parameter 'p' into R1
574 : ST 1, 4(5) ; Spill left operand at depth 0
575 : LD 1, 2(5) ; Load parameter 'q' into R1
576 : LD 2, 4(5) ; Restore left operand from depth 0
577 : ADD 1, 2, 1 ; R1 = left + right
578 : ST 1, 3(5) ; Store function result into frame return slot
579 : LD 6, 0(5) ; Load return address
580 : LDA 7, 0(6) ; Return to caller
581 : LD 1, 1(5) ; Load parameter 'p' into R1
582 : JEQ 1, 585(0) ; If condition is false, jump to ELSE
583 : LD 1, 2(5) ; Load parameter 'q' into R1
584 : LDA 7, 586(0) ; Skip ELSE block
585 : LDC 1, 0(0) ; Load boolean-literal into R1
586 : ST 1, 3(5) ; Store function result into frame return slot
587 : LD 6, 0(5) ; Load return address
588 : LDA 7, 0(6) ; Return to caller
589 : LD 1, 1(5) ; Load parameter 'p' into R1
590 : ST 1, 4(5) ; Spill left operand at depth 0
591 : LD 1, 2(5) ; Load parameter 'q' into R1
592 : LD 2, 4(5) ; Restore left operand from depth 0
593 : ADD 1, 2, 1 ; R1 = left OR right
594 : ST 1, 3(5) ; Store function result into frame return slot
595 : LD 6, 0(5) ; Load return address
596 : LDA 7, 0(6) ; Return to caller
597 : LD 1, 1(5) ; Load parameter 'p' into R1
598 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
599 : LDA 4, 5(5) ; Callee base for arg copy
600 : LD 1, 4(5) ; Load staged arg 0 from caller temp
601 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
602 : LD 1, 2(5) ; Load parameter 'q' into R1
603 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
604 : LDA 4, 5(5) ; Callee base for arg copy
605 : LD 1, 4(5) ; Load staged arg 1 from caller temp
606 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
607 : LDA 4, 5(5) ; Callee base for call
608 : LDA 6, 612(0) ; Return address
609 : ST 6, 0(4) ; Store return in callee frame
610 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
611 : LDA 7, 643(0) ; Call LE
612 : LD 1, 3(5) ; Load callee result into R1
613 : LDC 2, 5(0) ; Callee frame size
614 : SUB 5, 5, 2 ; Pop callee frame
615 : LDC 2, 1(0) ; Load 1 into R2
616 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
617 : ST 1, 3(5) ; Store function result into frame return slot
618 : LD 6, 0(5) ; Load return address
619 : LDA 7, 0(6) ; Return to caller
620 : LD 1, 1(5) ; Load parameter 'p' into R1
621 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
622 : LDA 4, 5(5) ; Callee base for arg copy
623 : LD 1, 4(5) ; Load staged arg 0 from caller temp
624 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
625 : LD 1, 2(5) ; Load parameter 'q' into R1
626 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
627 : LDA 4, 5(5) ; Callee base for arg copy
628 : LD 1, 4(5) ; Load staged arg 1 from caller temp
629 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
630 : LDA 4, 5(5) ; Callee base for call
631 : LDA 6, 635(0) ; Return address
632 : ST 6, 0(4) ; Store return in callee frame
633 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
634 : LDA 7, 720(0) ; Call LT
635 : LD 1, 3(5) ; Load callee result into R1
636 : LDC 2, 5(0) ; Callee frame size
637 : SUB 5, 5, 2 ; Pop callee frame
638 : LDC 2, 1(0) ; Load 1 into R2
639 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
640 : ST 1, 3(5) ; Store function result into frame return slot
641 : LD 6, 0(5) ; Load return address
642 : LDA 7, 0(6) ; Return to caller
643 : LD 1, 1(5) ; Load parameter 'p' into R1
644 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
645 : LDA 4, 5(5) ; Callee base for arg copy
646 : LD 1, 4(5) ; Load staged arg 0 from caller temp
647 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
648 : LD 1, 2(5) ; Load parameter 'q' into R1
649 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
650 : LDA 4, 5(5) ; Callee base for arg copy
651 : LD 1, 4(5) ; Load staged arg 1 from caller temp
652 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
653 : LDA 4, 5(5) ; Callee base for call
654 : LDA 6, 658(0) ; Return address
655 : ST 6, 0(4) ; Store return in callee frame
656 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
657 : LDA 7, 720(0) ; Call LT
658 : LD 1, 3(5) ; Load callee result into R1
659 : LDC 2, 5(0) ; Callee frame size
660 : SUB 5, 5, 2 ; Pop callee frame
661 : ST 1, 4(5) ; Spill left operand at depth 0
662 : LD 1, 1(5) ; Load parameter 'p' into R1
663 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
664 : LDA 4, 5(5) ; Callee base for arg copy
665 : LD 1, 4(5) ; Load staged arg 0 from caller temp
666 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
667 : LD 1, 2(5) ; Load parameter 'q' into R1
668 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
669 : LDA 4, 5(5) ; Callee base for arg copy
670 : LD 1, 4(5) ; Load staged arg 1 from caller temp
671 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
672 : LDA 4, 5(5) ; Callee base for call
673 : LDA 6, 677(0) ; Return address
674 : ST 6, 0(4) ; Store return in callee frame
675 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
676 : LDA 7, 708(0) ; Call EQ
677 : LD 1, 3(5) ; Load callee result into R1
678 : LDC 2, 5(0) ; Callee frame size
679 : SUB 5, 5, 2 ; Pop callee frame
680 : LD 2, 4(5) ; Restore left operand from depth 0
681 : ADD 1, 2, 1 ; R1 = left OR right
682 : ST 1, 3(5) ; Store function result into frame return slot
683 : LD 6, 0(5) ; Load return address
684 : LDA 7, 0(6) ; Return to caller
685 : LD 1, 1(5) ; Load parameter 'p' into R1
686 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
687 : LDA 4, 5(5) ; Callee base for arg copy
688 : LD 1, 4(5) ; Load staged arg 0 from caller temp
689 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
690 : LD 1, 2(5) ; Load parameter 'q' into R1
691 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
692 : LDA 4, 5(5) ; Callee base for arg copy
693 : LD 1, 4(5) ; Load staged arg 1 from caller temp
694 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
695 : LDA 4, 5(5) ; Callee base for call
696 : LDA 6, 700(0) ; Return address
697 : ST 6, 0(4) ; Store return in callee frame
698 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
699 : LDA 7, 708(0) ; Call EQ
700 : LD 1, 3(5) ; Load callee result into R1
701 : LDC 2, 5(0) ; Callee frame size
702 : SUB 5, 5, 2 ; Pop callee frame
703 : LDC 2, 1(0) ; Load 1 into R2
704 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
705 : ST 1, 3(5) ; Store function result into frame return slot
706 : LD 6, 0(5) ; Load return address
707 : LDA 7, 0(6) ; Return to caller
708 : LD 1, 1(5) ; Load parameter 'p' into R1
709 : ST 1, 4(5) ; Spill left operand at depth 0
710 : LD 1, 2(5) ; Load parameter 'q' into R1
711 : LD 2, 4(5) ; Restore left operand from depth 0
712 : SUB 1, 2, 1 ; left - right for equality check
713 : JEQ 1, 2(7) ; If R1 == 0, jump to true
714 : LDC 1, 0(0) ; false
715 : LDA 7, 1(7) ; skip setting true
716 : LDC 1, 1(0) ; true
717 : ST 1, 3(5) ; Store function result into frame return slot
718 : LD 6, 0(5) ; Load return address
719 : LDA 7, 0(6) ; Return to caller
720 : LD 1, 1(5) ; Load parameter 'p' into R1
721 : ST 1, 4(5) ; Spill left operand at depth 0
722 : LD 1, 2(5) ; Load parameter 'q' into R1
723 : LD 2, 4(5) ; Restore left operand from depth 0
724 : SUB 1, 2, 1 ; left - right for less-than check
725 : JLT 1, 2(7) ; If R1 < 0, jump to true
726 : LDC 1, 0(0) ; false
727 : LDA 7, 1(7) ; skip setting true
728 : LDC 1, 1(0) ; true
729 : ST 1, 3(5) ; Store function result into frame return slot
730 : LD 6, 0(5) ; Load return address
731 : LDA 7, 0(6) ; Return to caller
732 : LDC 1, 2147483647(0) ; Load integer-literal into R1
733 : SUB 1, 0, 1 ; Negate value in R1
734 : ST 1, 2(5) ; Spill left operand at depth 0
735 : LDC 1, 1(0) ; Load integer-literal into R1
736 : LD 2, 2(5) ; Restore left operand from depth 0
737 : SUB 1, 2, 1 ; R1 = left - right
738 : ST 1, 1(5) ; Store function result into frame return slot
739 : LD 6, 0(5) ; Load return address
740 : LDA 7, 0(6) ; Return to caller
741 : LDC 1, 2147483647(0) ; Load integer-literal into R1
742 : ST 1, 1(5) ; Store function result into frame return slot
743 : LD 6, 0(5) ; Load return address
744 : LDA 7, 0(6) ; Return to caller
