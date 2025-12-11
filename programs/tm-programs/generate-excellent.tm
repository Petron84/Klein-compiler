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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
14 : LD 1, 1(5) ; Load parameter 'length' into R1
15 : ST 1, 3(5) ; Spill left operand at depth 0
16 : LDC 1, 2(0) ; Load integer-literal into R1
17 : LD 2, 3(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : ST 1, 3(5) ; Spill left operand at depth 0
20 : LDC 1, 1(0) ; Load integer-literal into R1
21 : LD 2, 3(5) ; Restore left operand from depth 0
22 : SUB 1, 2, 1 ; R1 = left - right
23 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
24 : LDA 4, 6(5) ; Callee base for arg copy
25 : LD 1, 3(5) ; Load staged arg 0 from caller temp
26 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
27 : LD 1, 4(5) ; Load staged arg 1 from caller temp
28 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 938(0) ; Call EXP
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 6(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop callee frame
36 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
37 : LD 1, 1(5) ; Load parameter 'length' into R1
38 : ST 1, 3(5) ; Spill left operand at depth 0
39 : LDC 1, 2(0) ; Load integer-literal into R1
40 : LD 2, 3(5) ; Restore left operand from depth 0
41 : DIV 1, 2, 1 ; R1 = left / right
42 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
43 : LDA 4, 7(5) ; Callee base for arg copy
44 : LD 1, 3(5) ; Load staged arg 0 from caller temp
45 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
46 : LD 1, 4(5) ; Load staged arg 1 from caller temp
47 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
51 : LDA 7, 59(0) ; Call createLoop
52 : LD 1, 3(5) ; Load callee result into R1
53 : LDC 2, 7(0) ; Callee frame size
54 : SUB 5, 5, 2 ; Pop callee frame
55 : ST 1, 2(5) ; Store result into caller’s frame
56 : LD 1, 2(5) ; Load main return value into R1
57 : LD 6, 0(5) ; Load main return address
58 : LDA 7, 0(6) ; Return from main
59 : LD 1, 1(5) ; Load parameter 'a' into R1
60 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
63 : LDC 1, 10(0) ; Load integer-literal into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'a' into R1
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : MUL 1, 2, 1 ; R1 = left * right
68 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2+i)
69 : LDA 4, 9(5) ; Callee base for arg copy
70 : LD 1, 4(5) ; Load staged arg 0 from caller temp
71 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
72 : LD 1, 5(5) ; Load staged arg 1 from caller temp
73 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
74 : LD 1, 6(5) ; Load staged arg 2 from caller temp
75 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 86(0) ; Call aLoop
80 : LD 1, 4(5) ; Load callee result into R1
81 : LDC 2, 9(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop callee frame
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'a' into R1
87 : ST 1, 5(5) ; Spill left operand at depth 0
88 : LD 1, 3(5) ; Load parameter 'upper' into R1
89 : LD 2, 5(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
96 : LD 1, 1(5) ; Load parameter 'a' into R1
97 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
98 : LD 1, 2(5) ; Load parameter 'n' into R1
99 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
100 : LD 1, 3(5) ; Load parameter 'upper' into R1
101 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
102 : LDC 1, 4(0) ; Load integer-literal into R1
103 : ST 1, 5(5) ; Spill left operand at depth 0
104 : LD 1, 1(5) ; Load parameter 'a' into R1
105 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
106 : LDC 1, 2(0) ; Load integer-literal into R1
107 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
108 : LDA 4, 6(5) ; Callee base for arg copy
109 : LD 1, 5(5) ; Load staged arg 0 from caller temp
110 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
111 : LD 1, 6(5) ; Load staged arg 1 from caller temp
112 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 938(0) ; Call EXP
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 6(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : LD 2, 5(5) ; Restore left operand from depth 0
121 : MUL 1, 2, 1 ; R1 = left * right
122 : ST 1, 5(5) ; Spill left operand at depth 0
123 : LDC 1, 4(0) ; Load integer-literal into R1
124 : ST 1, 6(5) ; Spill left operand at depth 1
125 : LDC 1, 10(0) ; Load integer-literal into R1
126 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
127 : LD 1, 2(5) ; Load parameter 'n' into R1
128 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
129 : LDA 4, 6(5) ; Callee base for arg copy
130 : LD 1, 5(5) ; Load staged arg 0 from caller temp
131 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
132 : LD 1, 6(5) ; Load staged arg 1 from caller temp
133 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 938(0) ; Call EXP
138 : LD 1, 3(5) ; Load callee result into R1
139 : LDC 2, 6(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : LD 2, 6(5) ; Restore left operand from depth 1
142 : MUL 1, 2, 1 ; R1 = left * right
143 : ST 1, 6(5) ; Spill left operand at depth 1
144 : LD 1, 1(5) ; Load parameter 'a' into R1
145 : LD 2, 6(5) ; Restore left operand from depth 1
146 : MUL 1, 2, 1 ; R1 = left * right
147 : LD 2, 5(5) ; Restore left operand from depth 0
148 : ADD 1, 2, 1 ; R1 = left + right
149 : ST 1, 5(5) ; Spill left operand at depth 0
150 : LDC 1, 1(0) ; Load integer-literal into R1
151 : LD 2, 5(5) ; Restore left operand from depth 0
152 : ADD 1, 2, 1 ; R1 = left + right
153 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
154 : LDA 4, 11(5) ; Callee base for arg copy
155 : LD 1, 5(5) ; Load staged arg 0 from caller temp
156 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
157 : LD 1, 6(5) ; Load staged arg 1 from caller temp
158 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
159 : LD 1, 7(5) ; Load staged arg 2 from caller temp
160 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
161 : LD 1, 8(5) ; Load staged arg 3 from caller temp
162 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 175(0) ; Call aLoop1
167 : LD 1, 5(5) ; Load callee result into R1
168 : LDC 2, 11(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : LDA 7, 172(0) ; Skip ELSE block
171 : LDC 1, 1(0) ; Load boolean-literal into R1
172 : ST 1, 4(5) ; Store function result into frame return slot
173 : LD 6, 0(5) ; Load return address
174 : LDA 7, 0(6) ; Return to caller
175 : LD 1, 1(5) ; Load parameter 'a' into R1
176 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
177 : LD 1, 2(5) ; Load parameter 'n' into R1
178 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
179 : LD 1, 3(5) ; Load parameter 'upper' into R1
180 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
181 : LD 1, 4(5) ; Load parameter 'det' into R1
182 : ST 1, 9(5) ; Stage arg 3 in caller temp (P+2+i)
183 : LD 1, 4(5) ; Load parameter 'det' into R1
184 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
185 : LDA 4, 6(5) ; Callee base for arg copy
186 : LD 1, 6(5) ; Load staged arg 0 from caller temp
187 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
188 : LDA 6, 192(0) ; Return address
189 : ST 6, 0(4) ; Store return in callee frame
190 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
191 : LDA 7, 847(0) ; Call SQRT
192 : LD 1, 2(5) ; Load callee result into R1
193 : LDC 2, 6(0) ; Callee frame size
194 : SUB 5, 5, 2 ; Pop callee frame
195 : ST 1, 10(5) ; Stage arg 4 in caller temp (P+2+i)
196 : LDA 4, 13(5) ; Callee base for arg copy
197 : LD 1, 6(5) ; Load staged arg 0 from caller temp
198 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
199 : LD 1, 7(5) ; Load staged arg 1 from caller temp
200 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
201 : LD 1, 8(5) ; Load staged arg 2 from caller temp
202 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
203 : LD 1, 9(5) ; Load staged arg 3 from caller temp
204 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
205 : LD 1, 10(5) ; Load staged arg 4 from caller temp
206 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
207 : LDA 6, 211(0) ; Return address
208 : ST 6, 0(4) ; Store return in callee frame
209 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
210 : LDA 7, 217(0) ; Call aLoop2
211 : LD 1, 6(5) ; Load callee result into R1
212 : LDC 2, 13(0) ; Callee frame size
213 : SUB 5, 5, 2 ; Pop callee frame
214 : ST 1, 5(5) ; Store function result into frame return slot
215 : LD 6, 0(5) ; Load return address
216 : LDA 7, 0(6) ; Return to caller
217 : LD 1, 1(5) ; Load parameter 'a' into R1
218 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2+i)
219 : LD 1, 2(5) ; Load parameter 'n' into R1
220 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2+i)
221 : LD 1, 3(5) ; Load parameter 'upper' into R1
222 : ST 1, 9(5) ; Stage arg 2 in caller temp (P+2+i)
223 : LD 1, 4(5) ; Load parameter 'det' into R1
224 : ST 1, 10(5) ; Stage arg 3 in caller temp (P+2+i)
225 : LD 1, 5(5) ; Load parameter 'root' into R1
226 : ST 1, 11(5) ; Stage arg 4 in caller temp (P+2+i)
227 : LD 1, 1(5) ; Load parameter 'a' into R1
228 : ST 1, 7(5) ; Spill left operand at depth 0
229 : LDC 1, 10(0) ; Load integer-literal into R1
230 : ST 1, 7(5) ; Stage arg 0 in caller temp (P+2+i)
231 : LD 1, 2(5) ; Load parameter 'n' into R1
232 : ST 1, 8(5) ; Stage arg 1 in caller temp (P+2+i)
233 : LDA 4, 6(5) ; Callee base for arg copy
234 : LD 1, 7(5) ; Load staged arg 0 from caller temp
235 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
236 : LD 1, 8(5) ; Load staged arg 1 from caller temp
237 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
238 : LDA 6, 242(0) ; Return address
239 : ST 6, 0(4) ; Store return in callee frame
240 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
241 : LDA 7, 938(0) ; Call EXP
242 : LD 1, 3(5) ; Load callee result into R1
243 : LDC 2, 6(0) ; Callee frame size
244 : SUB 5, 5, 2 ; Pop callee frame
245 : LD 2, 7(5) ; Restore left operand from depth 0
246 : MUL 1, 2, 1 ; R1 = left * right
247 : ST 1, 7(5) ; Spill left operand at depth 0
248 : LD 1, 5(5) ; Load parameter 'root' into R1
249 : ST 1, 8(5) ; Spill left operand at depth 1
250 : LDC 1, 1(0) ; Load integer-literal into R1
251 : LD 2, 8(5) ; Restore left operand from depth 1
252 : ADD 1, 2, 1 ; R1 = left + right
253 : ST 1, 8(5) ; Spill left operand at depth 1
254 : LDC 1, 2(0) ; Load integer-literal into R1
255 : LD 2, 8(5) ; Restore left operand from depth 1
256 : DIV 1, 2, 1 ; R1 = left / right
257 : LD 2, 7(5) ; Restore left operand from depth 0
258 : ADD 1, 2, 1 ; R1 = left + right
259 : ST 1, 12(5) ; Stage arg 5 in caller temp (P+2+i)
260 : LDA 4, 12(5) ; Callee base for arg copy
261 : LD 1, 7(5) ; Load staged arg 0 from caller temp
262 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
263 : LD 1, 8(5) ; Load staged arg 1 from caller temp
264 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
265 : LD 1, 9(5) ; Load staged arg 2 from caller temp
266 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
267 : LD 1, 10(5) ; Load staged arg 3 from caller temp
268 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
269 : LD 1, 11(5) ; Load staged arg 4 from caller temp
270 : ST 1, 5(4) ; Copy arg 4 into callee param slot 5
271 : LD 1, 12(5) ; Load staged arg 5 from caller temp
272 : ST 1, 6(4) ; Copy arg 5 into callee param slot 6
273 : LDA 6, 277(0) ; Return address
274 : ST 6, 0(4) ; Store return in callee frame
275 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
276 : LDA 7, 283(0) ; Call aLoop3
277 : LD 1, 7(5) ; Load callee result into R1
278 : LDC 2, 12(0) ; Callee frame size
279 : SUB 5, 5, 2 ; Pop callee frame
280 : ST 1, 6(5) ; Store function result into frame return slot
281 : LD 6, 0(5) ; Load return address
282 : LDA 7, 0(6) ; Return to caller
283 : LD 1, 5(5) ; Load parameter 'root' into R1
284 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2+i)
285 : LD 1, 4(5) ; Load parameter 'det' into R1
286 : ST 1, 9(5) ; Stage arg 1 in caller temp (P+2+i)
287 : LDA 4, 6(5) ; Callee base for arg copy
288 : LD 1, 8(5) ; Load staged arg 0 from caller temp
289 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
290 : LD 1, 9(5) ; Load staged arg 1 from caller temp
291 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
292 : LDA 6, 296(0) ; Return address
293 : ST 6, 0(4) ; Store return in callee frame
294 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
295 : LDA 7, 653(0) ; Call ISROOT
296 : LD 1, 3(5) ; Load callee result into R1
297 : LDC 2, 6(0) ; Callee frame size
298 : SUB 5, 5, 2 ; Pop callee frame
299 : ST 1, 8(5) ; Spill left operand at depth 0
300 : LD 1, 5(5) ; Load parameter 'root' into R1
301 : ST 1, 9(5) ; Spill left operand at depth 1
302 : LDC 1, 1(0) ; Load integer-literal into R1
303 : LD 2, 9(5) ; Restore left operand from depth 1
304 : ADD 1, 2, 1 ; R1 = left + right
305 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2+i)
306 : LDA 4, 6(5) ; Callee base for arg copy
307 : LD 1, 8(5) ; Load staged arg 0 from caller temp
308 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
309 : LDA 6, 313(0) ; Return address
310 : ST 6, 0(4) ; Store return in callee frame
311 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
312 : LDA 7, 669(0) ; Call EVEN
313 : LD 1, 2(5) ; Load callee result into R1
314 : LDC 2, 6(0) ; Callee frame size
315 : SUB 5, 5, 2 ; Pop callee frame
316 : LD 2, 8(5) ; Restore left operand from depth 0
317 : MUL 1, 2, 1 ; R1 = left AND right
318 : ST 1, 8(5) ; Spill left operand at depth 0
319 : LD 1, 6(5) ; Load parameter 'candidate' into R1
320 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2+i)
321 : LDA 4, 5(5) ; Callee base for arg copy
322 : LD 1, 8(5) ; Load staged arg 0 from caller temp
323 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
324 : LDA 6, 328(0) ; Return address
325 : ST 6, 0(4) ; Store return in callee frame
326 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
327 : LDA 7, 421(0) ; Call isExcellent
328 : LD 1, 2(5) ; Load callee result into R1
329 : LDC 2, 5(0) ; Callee frame size
330 : SUB 5, 5, 2 ; Pop callee frame
331 : LD 2, 8(5) ; Restore left operand from depth 0
332 : MUL 1, 2, 1 ; R1 = left AND right
333 : JEQ 1, 359(0) ; If condition is false, jump to ELSE
334 : LD 1, 1(5) ; Load parameter 'a' into R1
335 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2+i)
336 : LD 1, 2(5) ; Load parameter 'n' into R1
337 : ST 1, 9(5) ; Stage arg 1 in caller temp (P+2+i)
338 : LD 1, 3(5) ; Load parameter 'upper' into R1
339 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2+i)
340 : LD 1, 6(5) ; Load parameter 'candidate' into R1
341 : ST 1, 11(5) ; Stage arg 3 in caller temp (P+2+i)
342 : LDA 4, 9(5) ; Callee base for arg copy
343 : LD 1, 8(5) ; Load staged arg 0 from caller temp
344 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
345 : LD 1, 9(5) ; Load staged arg 1 from caller temp
346 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
347 : LD 1, 10(5) ; Load staged arg 2 from caller temp
348 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
349 : LD 1, 11(5) ; Load staged arg 3 from caller temp
350 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
351 : LDA 6, 355(0) ; Return address
352 : ST 6, 0(4) ; Store return in callee frame
353 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
354 : LDA 7, 386(0) ; Call printCandidateAndContinue
355 : LD 1, 5(5) ; Load callee result into R1
356 : LDC 2, 9(0) ; Callee frame size
357 : SUB 5, 5, 2 ; Pop callee frame
358 : LDA 7, 383(0) ; Skip ELSE block
359 : LD 1, 1(5) ; Load parameter 'a' into R1
360 : ST 1, 8(5) ; Spill left operand at depth 0
361 : LDC 1, 1(0) ; Load integer-literal into R1
362 : LD 2, 8(5) ; Restore left operand from depth 0
363 : ADD 1, 2, 1 ; R1 = left + right
364 : ST 1, 8(5) ; Stage arg 0 in caller temp (P+2+i)
365 : LD 1, 2(5) ; Load parameter 'n' into R1
366 : ST 1, 9(5) ; Stage arg 1 in caller temp (P+2+i)
367 : LD 1, 3(5) ; Load parameter 'upper' into R1
368 : ST 1, 10(5) ; Stage arg 2 in caller temp (P+2+i)
369 : LDA 4, 9(5) ; Callee base for arg copy
370 : LD 1, 8(5) ; Load staged arg 0 from caller temp
371 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
372 : LD 1, 9(5) ; Load staged arg 1 from caller temp
373 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
374 : LD 1, 10(5) ; Load staged arg 2 from caller temp
375 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
376 : LDA 6, 380(0) ; Return address
377 : ST 6, 0(4) ; Store return in callee frame
378 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
379 : LDA 7, 86(0) ; Call aLoop
380 : LD 1, 4(5) ; Load callee result into R1
381 : LDC 2, 9(0) ; Callee frame size
382 : SUB 5, 5, 2 ; Pop callee frame
383 : ST 1, 7(5) ; Store function result into frame return slot
384 : LD 6, 0(5) ; Load return address
385 : LDA 7, 0(6) ; Return to caller
386 : LD 1, 4(5) ; Load parameter 'candidate' into R1
387 : LDA 4, 3(5) ; Callee base for built-in print
388 : LDA 6, 392(0) ; Return address
389 : ST 6, 0(4) ; Store return address in callee frame
390 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
391 : LDA 7, 9(0) ; Call built-in print
392 : LDC 2, 3(0) ; Callee frame size (print)
393 : SUB 5, 5, 2 ; Pop back to caller
394 : LD 1, 1(5) ; Load parameter 'a' into R1
395 : ST 1, 6(5) ; Spill left operand at depth 0
396 : LDC 1, 1(0) ; Load integer-literal into R1
397 : LD 2, 6(5) ; Restore left operand from depth 0
398 : ADD 1, 2, 1 ; R1 = left + right
399 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
400 : LD 1, 2(5) ; Load parameter 'n' into R1
401 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
402 : LD 1, 3(5) ; Load parameter 'upper' into R1
403 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
404 : LDA 4, 9(5) ; Callee base for arg copy
405 : LD 1, 6(5) ; Load staged arg 0 from caller temp
406 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
407 : LD 1, 7(5) ; Load staged arg 1 from caller temp
408 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
409 : LD 1, 8(5) ; Load staged arg 2 from caller temp
410 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
411 : LDA 6, 415(0) ; Return address
412 : ST 6, 0(4) ; Store return in callee frame
413 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
414 : LDA 7, 86(0) ; Call aLoop
415 : LD 1, 4(5) ; Load callee result into R1
416 : LDC 2, 9(0) ; Callee frame size
417 : SUB 5, 5, 2 ; Pop callee frame
418 : ST 1, 5(5) ; Store function result into frame return slot
419 : LD 6, 0(5) ; Load return address
420 : LDA 7, 0(6) ; Return to caller
421 : LD 1, 1(5) ; Load parameter 'n' into R1
422 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
423 : LD 1, 1(5) ; Load parameter 'n' into R1
424 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
425 : LDA 4, 5(5) ; Callee base for arg copy
426 : LD 1, 3(5) ; Load staged arg 0 from caller temp
427 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
428 : LDA 6, 432(0) ; Return address
429 : ST 6, 0(4) ; Store return in callee frame
430 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
431 : LDA 7, 618(0) ; Call length
432 : LD 1, 2(5) ; Load callee result into R1
433 : LDC 2, 5(0) ; Callee frame size
434 : SUB 5, 5, 2 ; Pop callee frame
435 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
436 : LDA 4, 6(5) ; Callee base for arg copy
437 : LD 1, 3(5) ; Load staged arg 0 from caller temp
438 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
439 : LD 1, 4(5) ; Load staged arg 1 from caller temp
440 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
441 : LDA 6, 445(0) ; Return address
442 : ST 6, 0(4) ; Store return in callee frame
443 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
444 : LDA 7, 451(0) ; Call isExcellentSwitch
445 : LD 1, 3(5) ; Load callee result into R1
446 : LDC 2, 6(0) ; Callee frame size
447 : SUB 5, 5, 2 ; Pop callee frame
448 : ST 1, 2(5) ; Store function result into frame return slot
449 : LD 6, 0(5) ; Load return address
450 : LDA 7, 0(6) ; Return to caller
451 : LD 1, 2(5) ; Load parameter 'length' into R1
452 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
453 : LDA 4, 5(5) ; Callee base for arg copy
454 : LD 1, 4(5) ; Load staged arg 0 from caller temp
455 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
456 : LDA 6, 460(0) ; Return address
457 : ST 6, 0(4) ; Store return in callee frame
458 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
459 : LDA 7, 894(0) ; Call ODD
460 : LD 1, 2(5) ; Load callee result into R1
461 : LDC 2, 5(0) ; Callee frame size
462 : SUB 5, 5, 2 ; Pop callee frame
463 : JEQ 1, 466(0) ; If condition is false, jump to ELSE
464 : LDC 1, 0(0) ; Load boolean-literal into R1
465 : LDA 7, 512(0) ; Skip ELSE block
466 : LD 1, 1(5) ; Load parameter 'n' into R1
467 : ST 1, 4(5) ; Spill left operand at depth 0
468 : LD 1, 1(5) ; Load parameter 'n' into R1
469 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
470 : LDA 4, 5(5) ; Callee base for arg copy
471 : LD 1, 4(5) ; Load staged arg 0 from caller temp
472 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
473 : LDA 6, 477(0) ; Return address
474 : ST 6, 0(4) ; Store return in callee frame
475 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
476 : LDA 7, 580(0) ; Call a
477 : LD 1, 2(5) ; Load callee result into R1
478 : LDC 2, 5(0) ; Callee frame size
479 : SUB 5, 5, 2 ; Pop callee frame
480 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
481 : LD 1, 1(5) ; Load parameter 'n' into R1
482 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
483 : LDA 4, 5(5) ; Callee base for arg copy
484 : LD 1, 4(5) ; Load staged arg 0 from caller temp
485 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
486 : LDA 6, 490(0) ; Return address
487 : ST 6, 0(4) ; Store return in callee frame
488 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
489 : LDA 7, 531(0) ; Call b
490 : LD 1, 2(5) ; Load callee result into R1
491 : LDC 2, 5(0) ; Callee frame size
492 : SUB 5, 5, 2 ; Pop callee frame
493 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
494 : LDA 4, 6(5) ; Callee base for arg copy
495 : LD 1, 4(5) ; Load staged arg 0 from caller temp
496 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
497 : LD 1, 5(5) ; Load staged arg 1 from caller temp
498 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
499 : LDA 6, 503(0) ; Return address
500 : ST 6, 0(4) ; Store return in callee frame
501 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
502 : LDA 7, 515(0) ; Call excellentDiff
503 : LD 1, 3(5) ; Load callee result into R1
504 : LDC 2, 6(0) ; Callee frame size
505 : SUB 5, 5, 2 ; Pop callee frame
506 : LD 2, 4(5) ; Restore left operand from depth 0
507 : SUB 1, 2, 1 ; left - right for equality check
508 : JEQ 1, 2(7) ; If R1 == 0, jump to true
509 : LDC 1, 0(0) ; false
510 : LDA 7, 1(7) ; skip setting true
511 : LDC 1, 1(0) ; true
512 : ST 1, 3(5) ; Store function result into frame return slot
513 : LD 6, 0(5) ; Load return address
514 : LDA 7, 0(6) ; Return to caller
515 : LD 1, 2(5) ; Load parameter 'b' into R1
516 : ST 1, 4(5) ; Spill left operand at depth 0
517 : LD 1, 2(5) ; Load parameter 'b' into R1
518 : LD 2, 4(5) ; Restore left operand from depth 0
519 : MUL 1, 2, 1 ; R1 = left * right
520 : ST 1, 4(5) ; Spill left operand at depth 0
521 : LD 1, 1(5) ; Load parameter 'a' into R1
522 : ST 1, 5(5) ; Spill left operand at depth 1
523 : LD 1, 1(5) ; Load parameter 'a' into R1
524 : LD 2, 5(5) ; Restore left operand from depth 1
525 : MUL 1, 2, 1 ; R1 = left * right
526 : LD 2, 4(5) ; Restore left operand from depth 0
527 : SUB 1, 2, 1 ; R1 = left - right
528 : ST 1, 3(5) ; Store function result into frame return slot
529 : LD 6, 0(5) ; Load return address
530 : LDA 7, 0(6) ; Return to caller
531 : LD 1, 1(5) ; Load parameter 'n' into R1
532 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
533 : LDC 1, 10(0) ; Load integer-literal into R1
534 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
535 : LD 1, 1(5) ; Load parameter 'n' into R1
536 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
537 : LDA 4, 5(5) ; Callee base for arg copy
538 : LD 1, 3(5) ; Load staged arg 0 from caller temp
539 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
540 : LDA 6, 544(0) ; Return address
541 : ST 6, 0(4) ; Store return in callee frame
542 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
543 : LDA 7, 618(0) ; Call length
544 : LD 1, 2(5) ; Load callee result into R1
545 : LDC 2, 5(0) ; Callee frame size
546 : SUB 5, 5, 2 ; Pop callee frame
547 : ST 1, 3(5) ; Spill left operand at depth 0
548 : LDC 1, 2(0) ; Load integer-literal into R1
549 : LD 2, 3(5) ; Restore left operand from depth 0
550 : DIV 1, 2, 1 ; R1 = left / right
551 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
552 : LDA 4, 6(5) ; Callee base for arg copy
553 : LD 1, 3(5) ; Load staged arg 0 from caller temp
554 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
555 : LD 1, 4(5) ; Load staged arg 1 from caller temp
556 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
557 : LDA 6, 561(0) ; Return address
558 : ST 6, 0(4) ; Store return in callee frame
559 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
560 : LDA 7, 938(0) ; Call EXP
561 : LD 1, 3(5) ; Load callee result into R1
562 : LDC 2, 6(0) ; Callee frame size
563 : SUB 5, 5, 2 ; Pop callee frame
564 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
565 : LDA 4, 7(5) ; Callee base for arg copy
566 : LD 1, 3(5) ; Load staged arg 0 from caller temp
567 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
568 : LD 1, 4(5) ; Load staged arg 1 from caller temp
569 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
570 : LDA 6, 574(0) ; Return address
571 : ST 6, 0(4) ; Store return in callee frame
572 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
573 : LDA 7, 977(0) ; Call MOD
574 : LD 1, 3(5) ; Load callee result into R1
575 : LDC 2, 7(0) ; Callee frame size
576 : SUB 5, 5, 2 ; Pop callee frame
577 : ST 1, 2(5) ; Store function result into frame return slot
578 : LD 6, 0(5) ; Load return address
579 : LDA 7, 0(6) ; Return to caller
580 : LD 1, 1(5) ; Load parameter 'n' into R1
581 : ST 1, 3(5) ; Spill left operand at depth 0
582 : LDC 1, 10(0) ; Load integer-literal into R1
583 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
584 : LD 1, 1(5) ; Load parameter 'n' into R1
585 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
586 : LDA 4, 5(5) ; Callee base for arg copy
587 : LD 1, 3(5) ; Load staged arg 0 from caller temp
588 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
589 : LDA 6, 593(0) ; Return address
590 : ST 6, 0(4) ; Store return in callee frame
591 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
592 : LDA 7, 618(0) ; Call length
593 : LD 1, 2(5) ; Load callee result into R1
594 : LDC 2, 5(0) ; Callee frame size
595 : SUB 5, 5, 2 ; Pop callee frame
596 : ST 1, 4(5) ; Spill left operand at depth 1
597 : LDC 1, 2(0) ; Load integer-literal into R1
598 : LD 2, 4(5) ; Restore left operand from depth 1
599 : DIV 1, 2, 1 ; R1 = left / right
600 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
601 : LDA 4, 6(5) ; Callee base for arg copy
602 : LD 1, 3(5) ; Load staged arg 0 from caller temp
603 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
604 : LD 1, 4(5) ; Load staged arg 1 from caller temp
605 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
606 : LDA 6, 610(0) ; Return address
607 : ST 6, 0(4) ; Store return in callee frame
608 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
609 : LDA 7, 938(0) ; Call EXP
610 : LD 1, 3(5) ; Load callee result into R1
611 : LDC 2, 6(0) ; Callee frame size
612 : SUB 5, 5, 2 ; Pop callee frame
613 : LD 2, 3(5) ; Restore left operand from depth 0
614 : DIV 1, 2, 1 ; R1 = left / right
615 : ST 1, 2(5) ; Store function result into frame return slot
616 : LD 6, 0(5) ; Load return address
617 : LDA 7, 0(6) ; Return to caller
618 : LD 1, 1(5) ; Load parameter 'n' into R1
619 : ST 1, 3(5) ; Spill left operand at depth 0
620 : LDC 1, 10(0) ; Load integer-literal into R1
621 : LD 2, 3(5) ; Restore left operand from depth 0
622 : SUB 1, 2, 1 ; left - right for less-than check
623 : JLT 1, 2(7) ; If R1 < 0, jump to true
624 : LDC 1, 0(0) ; false
625 : LDA 7, 1(7) ; skip setting true
626 : LDC 1, 1(0) ; true
627 : JEQ 1, 630(0) ; If condition is false, jump to ELSE
628 : LDC 1, 1(0) ; Load integer-literal into R1
629 : LDA 7, 650(0) ; Skip ELSE block
630 : LDC 1, 1(0) ; Load integer-literal into R1
631 : ST 1, 3(5) ; Spill left operand at depth 0
632 : LD 1, 1(5) ; Load parameter 'n' into R1
633 : ST 1, 4(5) ; Spill left operand at depth 1
634 : LDC 1, 10(0) ; Load integer-literal into R1
635 : LD 2, 4(5) ; Restore left operand from depth 1
636 : DIV 1, 2, 1 ; R1 = left / right
637 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
638 : LDA 4, 5(5) ; Callee base for arg copy
639 : LD 1, 3(5) ; Load staged arg 0 from caller temp
640 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
641 : LDA 6, 645(0) ; Return address
642 : ST 6, 0(4) ; Store return in callee frame
643 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
644 : LDA 7, 618(0) ; Call length
645 : LD 1, 2(5) ; Load callee result into R1
646 : LDC 2, 5(0) ; Callee frame size
647 : SUB 5, 5, 2 ; Pop callee frame
648 : LD 2, 3(5) ; Restore left operand from depth 0
649 : ADD 1, 2, 1 ; R1 = left + right
650 : ST 1, 2(5) ; Store function result into frame return slot
651 : LD 6, 0(5) ; Load return address
652 : LDA 7, 0(6) ; Return to caller
653 : LD 1, 2(5) ; Load parameter 'n' into R1
654 : ST 1, 4(5) ; Spill left operand at depth 0
655 : LD 1, 1(5) ; Load parameter 'r' into R1
656 : ST 1, 5(5) ; Spill left operand at depth 1
657 : LD 1, 1(5) ; Load parameter 'r' into R1
658 : LD 2, 5(5) ; Restore left operand from depth 1
659 : MUL 1, 2, 1 ; R1 = left * right
660 : LD 2, 4(5) ; Restore left operand from depth 0
661 : SUB 1, 2, 1 ; left - right for equality check
662 : JEQ 1, 2(7) ; If R1 == 0, jump to true
663 : LDC 1, 0(0) ; false
664 : LDA 7, 1(7) ; skip setting true
665 : LDC 1, 1(0) ; true
666 : ST 1, 3(5) ; Store function result into frame return slot
667 : LD 6, 0(5) ; Load return address
668 : LDA 7, 0(6) ; Return to caller
669 : LD 1, 1(5) ; Load parameter 'n' into R1
670 : ST 1, 3(5) ; Spill left operand at depth 0
671 : LDC 1, 2(0) ; Load integer-literal into R1
672 : ST 1, 4(5) ; Spill left operand at depth 1
673 : LD 1, 1(5) ; Load parameter 'n' into R1
674 : ST 1, 5(5) ; Spill left operand at depth 2
675 : LDC 1, 2(0) ; Load integer-literal into R1
676 : LD 2, 5(5) ; Restore left operand from depth 2
677 : DIV 1, 2, 1 ; R1 = left / right
678 : LD 2, 4(5) ; Restore left operand from depth 1
679 : MUL 1, 2, 1 ; R1 = left * right
680 : LD 2, 3(5) ; Restore left operand from depth 0
681 : SUB 1, 2, 1 ; left - right for equality check
682 : JEQ 1, 2(7) ; If R1 == 0, jump to true
683 : LDC 1, 0(0) ; false
684 : LDA 7, 1(7) ; skip setting true
685 : LDC 1, 1(0) ; true
686 : ST 1, 2(5) ; Store function result into frame return slot
687 : LD 6, 0(5) ; Load return address
688 : LDA 7, 0(6) ; Return to caller
689 : LD 1, 4(5) ; Load parameter 'mid' into R1
690 : ST 1, 6(5) ; Spill left operand at depth 0
691 : LD 1, 4(5) ; Load parameter 'mid' into R1
692 : LD 2, 6(5) ; Restore left operand from depth 0
693 : MUL 1, 2, 1 ; R1 = left * right
694 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
695 : LD 1, 1(5) ; Load parameter 'n' into R1
696 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
697 : LDA 4, 6(5) ; Callee base for arg copy
698 : LD 1, 6(5) ; Load staged arg 0 from caller temp
699 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
700 : LD 1, 7(5) ; Load staged arg 1 from caller temp
701 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
702 : LDA 6, 706(0) ; Return address
703 : ST 6, 0(4) ; Store return in callee frame
704 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
705 : LDA 7, 870(0) ; Call LE
706 : LD 1, 3(5) ; Load callee result into R1
707 : LDC 2, 6(0) ; Callee frame size
708 : SUB 5, 5, 2 ; Pop callee frame
709 : JEQ 1, 731(0) ; If condition is false, jump to ELSE
710 : LD 1, 1(5) ; Load parameter 'n' into R1
711 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
712 : LD 1, 4(5) ; Load parameter 'mid' into R1
713 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
714 : LD 1, 3(5) ; Load parameter 'high' into R1
715 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
716 : LDA 4, 9(5) ; Callee base for arg copy
717 : LD 1, 6(5) ; Load staged arg 0 from caller temp
718 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
719 : LD 1, 7(5) ; Load staged arg 1 from caller temp
720 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
721 : LD 1, 8(5) ; Load staged arg 2 from caller temp
722 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
723 : LDA 6, 727(0) ; Return address
724 : ST 6, 0(4) ; Store return in callee frame
725 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
726 : LDA 7, 754(0) ; Call SQRTSEARCH
727 : LD 1, 4(5) ; Load callee result into R1
728 : LDC 2, 9(0) ; Callee frame size
729 : SUB 5, 5, 2 ; Pop callee frame
730 : LDA 7, 751(0) ; Skip ELSE block
731 : LD 1, 1(5) ; Load parameter 'n' into R1
732 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2+i)
733 : LD 1, 2(5) ; Load parameter 'low' into R1
734 : ST 1, 7(5) ; Stage arg 1 in caller temp (P+2+i)
735 : LD 1, 4(5) ; Load parameter 'mid' into R1
736 : ST 1, 8(5) ; Stage arg 2 in caller temp (P+2+i)
737 : LDA 4, 9(5) ; Callee base for arg copy
738 : LD 1, 6(5) ; Load staged arg 0 from caller temp
739 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
740 : LD 1, 7(5) ; Load staged arg 1 from caller temp
741 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
742 : LD 1, 8(5) ; Load staged arg 2 from caller temp
743 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
744 : LDA 6, 748(0) ; Return address
745 : ST 6, 0(4) ; Store return in callee frame
746 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
747 : LDA 7, 754(0) ; Call SQRTSEARCH
748 : LD 1, 4(5) ; Load callee result into R1
749 : LDC 2, 9(0) ; Callee frame size
750 : SUB 5, 5, 2 ; Pop callee frame
751 : ST 1, 5(5) ; Store function result into frame return slot
752 : LD 6, 0(5) ; Load return address
753 : LDA 7, 0(6) ; Return to caller
754 : LD 1, 3(5) ; Load parameter 'high' into R1
755 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
756 : LD 1, 2(5) ; Load parameter 'low' into R1
757 : ST 1, 5(5) ; Spill left operand at depth 0
758 : LDC 1, 1(0) ; Load integer-literal into R1
759 : LD 2, 5(5) ; Restore left operand from depth 0
760 : ADD 1, 2, 1 ; R1 = left + right
761 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
762 : LDA 4, 6(5) ; Callee base for arg copy
763 : LD 1, 5(5) ; Load staged arg 0 from caller temp
764 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
765 : LD 1, 6(5) ; Load staged arg 1 from caller temp
766 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
767 : LDA 6, 771(0) ; Return address
768 : ST 6, 0(4) ; Store return in callee frame
769 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
770 : LDA 7, 870(0) ; Call LE
771 : LD 1, 3(5) ; Load callee result into R1
772 : LDC 2, 6(0) ; Callee frame size
773 : SUB 5, 5, 2 ; Pop callee frame
774 : JEQ 1, 812(0) ; If condition is false, jump to ELSE
775 : LD 1, 1(5) ; Load parameter 'n' into R1
776 : ST 1, 5(5) ; Spill left operand at depth 0
777 : LD 1, 2(5) ; Load parameter 'low' into R1
778 : ST 1, 6(5) ; Spill left operand at depth 1
779 : LD 1, 2(5) ; Load parameter 'low' into R1
780 : LD 2, 6(5) ; Restore left operand from depth 1
781 : MUL 1, 2, 1 ; R1 = left * right
782 : LD 2, 5(5) ; Restore left operand from depth 0
783 : SUB 1, 2, 1 ; R1 = left - right
784 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
785 : LD 1, 3(5) ; Load parameter 'high' into R1
786 : ST 1, 5(5) ; Spill left operand at depth 0
787 : LD 1, 3(5) ; Load parameter 'high' into R1
788 : LD 2, 5(5) ; Restore left operand from depth 0
789 : MUL 1, 2, 1 ; R1 = left * right
790 : ST 1, 5(5) ; Spill left operand at depth 0
791 : LD 1, 1(5) ; Load parameter 'n' into R1
792 : LD 2, 5(5) ; Restore left operand from depth 0
793 : SUB 1, 2, 1 ; R1 = left - right
794 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
795 : LDA 4, 6(5) ; Callee base for arg copy
796 : LD 1, 5(5) ; Load staged arg 0 from caller temp
797 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
798 : LD 1, 6(5) ; Load staged arg 1 from caller temp
799 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
800 : LDA 6, 804(0) ; Return address
801 : ST 6, 0(4) ; Store return in callee frame
802 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
803 : LDA 7, 870(0) ; Call LE
804 : LD 1, 3(5) ; Load callee result into R1
805 : LDC 2, 6(0) ; Callee frame size
806 : SUB 5, 5, 2 ; Pop callee frame
807 : JEQ 1, 810(0) ; If condition is false, jump to ELSE
808 : LD 1, 2(5) ; Load parameter 'low' into R1
809 : LDA 7, 811(0) ; Skip ELSE block
810 : LD 1, 3(5) ; Load parameter 'high' into R1
811 : LDA 7, 844(0) ; Skip ELSE block
812 : LD 1, 1(5) ; Load parameter 'n' into R1
813 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
814 : LD 1, 2(5) ; Load parameter 'low' into R1
815 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
816 : LD 1, 3(5) ; Load parameter 'high' into R1
817 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
818 : LD 1, 2(5) ; Load parameter 'low' into R1
819 : ST 1, 5(5) ; Spill left operand at depth 0
820 : LD 1, 3(5) ; Load parameter 'high' into R1
821 : LD 2, 5(5) ; Restore left operand from depth 0
822 : ADD 1, 2, 1 ; R1 = left + right
823 : ST 1, 5(5) ; Spill left operand at depth 0
824 : LDC 1, 2(0) ; Load integer-literal into R1
825 : LD 2, 5(5) ; Restore left operand from depth 0
826 : DIV 1, 2, 1 ; R1 = left / right
827 : ST 1, 8(5) ; Stage arg 3 in caller temp (P+2+i)
828 : LDA 4, 9(5) ; Callee base for arg copy
829 : LD 1, 5(5) ; Load staged arg 0 from caller temp
830 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
831 : LD 1, 6(5) ; Load staged arg 1 from caller temp
832 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
833 : LD 1, 7(5) ; Load staged arg 2 from caller temp
834 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
835 : LD 1, 8(5) ; Load staged arg 3 from caller temp
836 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
837 : LDA 6, 841(0) ; Return address
838 : ST 6, 0(4) ; Store return in callee frame
839 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
840 : LDA 7, 689(0) ; Call SQRTSPLIT
841 : LD 1, 5(5) ; Load callee result into R1
842 : LDC 2, 9(0) ; Callee frame size
843 : SUB 5, 5, 2 ; Pop callee frame
844 : ST 1, 4(5) ; Store function result into frame return slot
845 : LD 6, 0(5) ; Load return address
846 : LDA 7, 0(6) ; Return to caller
847 : LD 1, 1(5) ; Load parameter 'n' into R1
848 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
849 : LDC 1, 0(0) ; Load integer-literal into R1
850 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2+i)
851 : LD 1, 1(5) ; Load parameter 'n' into R1
852 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2+i)
853 : LDA 4, 9(5) ; Callee base for arg copy
854 : LD 1, 3(5) ; Load staged arg 0 from caller temp
855 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
856 : LD 1, 4(5) ; Load staged arg 1 from caller temp
857 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
858 : LD 1, 5(5) ; Load staged arg 2 from caller temp
859 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
860 : LDA 6, 864(0) ; Return address
861 : ST 6, 0(4) ; Store return in callee frame
862 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
863 : LDA 7, 754(0) ; Call SQRTSEARCH
864 : LD 1, 4(5) ; Load callee result into R1
865 : LDC 2, 9(0) ; Callee frame size
866 : SUB 5, 5, 2 ; Pop callee frame
867 : ST 1, 2(5) ; Store function result into frame return slot
868 : LD 6, 0(5) ; Load return address
869 : LDA 7, 0(6) ; Return to caller
870 : LD 1, 1(5) ; Load parameter 'p' into R1
871 : ST 1, 4(5) ; Spill left operand at depth 0
872 : LD 1, 2(5) ; Load parameter 'q' into R1
873 : LD 2, 4(5) ; Restore left operand from depth 0
874 : SUB 1, 2, 1 ; left - right for less-than check
875 : JLT 1, 2(7) ; If R1 < 0, jump to true
876 : LDC 1, 0(0) ; false
877 : LDA 7, 1(7) ; skip setting true
878 : LDC 1, 1(0) ; true
879 : ST 1, 4(5) ; Spill left operand at depth 0
880 : LD 1, 1(5) ; Load parameter 'p' into R1
881 : ST 1, 5(5) ; Spill left operand at depth 1
882 : LD 1, 2(5) ; Load parameter 'q' into R1
883 : LD 2, 5(5) ; Restore left operand from depth 1
884 : SUB 1, 2, 1 ; left - right for equality check
885 : JEQ 1, 2(7) ; If R1 == 0, jump to true
886 : LDC 1, 0(0) ; false
887 : LDA 7, 1(7) ; skip setting true
888 : LDC 1, 1(0) ; true
889 : LD 2, 4(5) ; Restore left operand from depth 0
890 : ADD 1, 2, 1 ; R1 = left OR right
891 : ST 1, 3(5) ; Store function result into frame return slot
892 : LD 6, 0(5) ; Load return address
893 : LDA 7, 0(6) ; Return to caller
894 : LDC 1, 0(0) ; Load integer-literal into R1
895 : ST 1, 3(5) ; Spill left operand at depth 0
896 : LD 1, 1(5) ; Load parameter 'n' into R1
897 : LD 2, 3(5) ; Restore left operand from depth 0
898 : SUB 1, 2, 1 ; left - right for less-than check
899 : JLT 1, 2(7) ; If R1 < 0, jump to true
900 : LDC 1, 0(0) ; false
901 : LDA 7, 1(7) ; skip setting true
902 : LDC 1, 1(0) ; true
903 : JEQ 1, 922(0) ; If condition is false, jump to ELSE
904 : LDC 1, 2(0) ; Load integer-literal into R1
905 : ST 1, 3(5) ; Spill left operand at depth 0
906 : LD 1, 1(5) ; Load parameter 'n' into R1
907 : ST 1, 4(5) ; Spill left operand at depth 1
908 : LDC 1, 2(0) ; Load integer-literal into R1
909 : LD 2, 4(5) ; Restore left operand from depth 1
910 : DIV 1, 2, 1 ; R1 = left / right
911 : LD 2, 3(5) ; Restore left operand from depth 0
912 : MUL 1, 2, 1 ; R1 = left * right
913 : ST 1, 3(5) ; Spill left operand at depth 0
914 : LD 1, 1(5) ; Load parameter 'n' into R1
915 : LD 2, 3(5) ; Restore left operand from depth 0
916 : SUB 1, 2, 1 ; left - right for less-than check
917 : JLT 1, 2(7) ; If R1 < 0, jump to true
918 : LDC 1, 0(0) ; false
919 : LDA 7, 1(7) ; skip setting true
920 : LDC 1, 1(0) ; true
921 : LDA 7, 935(0) ; Skip ELSE block
922 : LD 1, 1(5) ; Load parameter 'n' into R1
923 : SUB 1, 0, 1 ; Negate value in R1
924 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
925 : LDA 4, 5(5) ; Callee base for arg copy
926 : LD 1, 3(5) ; Load staged arg 0 from caller temp
927 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
928 : LDA 6, 932(0) ; Return address
929 : ST 6, 0(4) ; Store return in callee frame
930 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
931 : LDA 7, 894(0) ; Call ODD
932 : LD 1, 2(5) ; Load callee result into R1
933 : LDC 2, 5(0) ; Callee frame size
934 : SUB 5, 5, 2 ; Pop callee frame
935 : ST 1, 2(5) ; Store function result into frame return slot
936 : LD 6, 0(5) ; Load return address
937 : LDA 7, 0(6) ; Return to caller
938 : LD 1, 2(5) ; Load parameter 'n' into R1
939 : ST 1, 4(5) ; Spill left operand at depth 0
940 : LDC 1, 0(0) ; Load integer-literal into R1
941 : LD 2, 4(5) ; Restore left operand from depth 0
942 : SUB 1, 2, 1 ; left - right for equality check
943 : JEQ 1, 2(7) ; If R1 == 0, jump to true
944 : LDC 1, 0(0) ; false
945 : LDA 7, 1(7) ; skip setting true
946 : LDC 1, 1(0) ; true
947 : JEQ 1, 950(0) ; If condition is false, jump to ELSE
948 : LDC 1, 1(0) ; Load integer-literal into R1
949 : LDA 7, 974(0) ; Skip ELSE block
950 : LD 1, 1(5) ; Load parameter 'm' into R1
951 : ST 1, 4(5) ; Spill left operand at depth 0
952 : LD 1, 1(5) ; Load parameter 'm' into R1
953 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
954 : LD 1, 2(5) ; Load parameter 'n' into R1
955 : ST 1, 5(5) ; Spill left operand at depth 1
956 : LDC 1, 1(0) ; Load integer-literal into R1
957 : LD 2, 5(5) ; Restore left operand from depth 1
958 : SUB 1, 2, 1 ; R1 = left - right
959 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
960 : LDA 4, 6(5) ; Callee base for arg copy
961 : LD 1, 4(5) ; Load staged arg 0 from caller temp
962 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
963 : LD 1, 5(5) ; Load staged arg 1 from caller temp
964 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
965 : LDA 6, 969(0) ; Return address
966 : ST 6, 0(4) ; Store return in callee frame
967 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
968 : LDA 7, 938(0) ; Call EXP
969 : LD 1, 3(5) ; Load callee result into R1
970 : LDC 2, 6(0) ; Callee frame size
971 : SUB 5, 5, 2 ; Pop callee frame
972 : LD 2, 4(5) ; Restore left operand from depth 0
973 : MUL 1, 2, 1 ; R1 = left * right
974 : ST 1, 3(5) ; Store function result into frame return slot
975 : LD 6, 0(5) ; Load return address
976 : LDA 7, 0(6) ; Return to caller
977 : LD 1, 1(5) ; Load parameter 'm' into R1
978 : ST 1, 4(5) ; Spill left operand at depth 0
979 : LD 1, 2(5) ; Load parameter 'n' into R1
980 : ST 1, 5(5) ; Spill left operand at depth 1
981 : LD 1, 1(5) ; Load parameter 'm' into R1
982 : ST 1, 6(5) ; Spill left operand at depth 2
983 : LD 1, 2(5) ; Load parameter 'n' into R1
984 : LD 2, 6(5) ; Restore left operand from depth 2
985 : DIV 1, 2, 1 ; R1 = left / right
986 : LD 2, 5(5) ; Restore left operand from depth 1
987 : MUL 1, 2, 1 ; R1 = left * right
988 : LD 2, 4(5) ; Restore left operand from depth 0
989 : SUB 1, 2, 1 ; R1 = left - right
990 : ST 1, 3(5) ; Store function result into frame return slot
991 : LD 6, 0(5) ; Load return address
992 : LDA 7, 0(6) ; Return to caller
