1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'n' into R1
15 : LDA 4, 3(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDA 4, 3(5) ;  Base of callee frame
18 : LDA 6, 22(0) ;  Compute return address
19 : ST  6, 0(4) ;  Store RA in callee frame
20 : ADD 5, 4, 0 ;  Update pointer (enter callee)
21 : LDA 7, 30(0) ;  Call isExcellent
22 : LD  1, 2(5) ;  Load callee return value into R1
23 : LDC 3, 3(0) ;  Load callee frame size
24 : SUB 5, 5, 3 ;  Restore pointer
25 : ST  1, 2(5) ;  Store result into current frame's return slot
26 : LD  1, 2(5) ;  Load return value into R1
27 : LD  6, 0(5) ;  Load return address for main function into R6
28 : LDA 7, 0(6) ;  Jump to return address of main function
30 : LD  1, 1(5) ;  Load parameter 'n' into R1
31 : LDA 4, 4(5) ;  Base of callee frame
32 : ST  1, 1(4) ;  Store argument 0 into callee frame
33 : LD  1, 1(5) ;  Load parameter 'n' into R1
34 : LDA 4, 3(5) ;  Base of callee frame
35 : ST  1, 1(4) ;  Store argument 0 into callee frame
36 : LDA 4, 3(5) ;  Base of callee frame
37 : LDA 6, 41(0) ;  Compute return address
38 : ST  6, 0(4) ;  Store RA in callee frame
39 : ADD 5, 4, 0 ;  Update pointer (enter callee)
40 : LDA 7, 218(0) ;  Call length
41 : LD  1, 2(5) ;  Load callee return value into R1
42 : LDC 3, 3(0) ;  Load callee frame size
43 : SUB 5, 5, 3 ;  Restore pointer
44 : LDA 4, 4(5) ;  Base of callee frame
45 : ST  1, 2(4) ;  Store argument 1 into callee frame
46 : LDA 4, 4(5) ;  Base of callee frame
47 : LDA 6, 51(0) ;  Compute return address
48 : ST  6, 0(4) ;  Store RA in callee frame
49 : ADD 5, 4, 0 ;  Update pointer (enter callee)
50 : LDA 7, 58(0) ;  Call isExcellentSwitch
51 : LD  1, 3(5) ;  Load callee return value into R1
52 : LDC 3, 4(0) ;  Load callee frame size
53 : SUB 5, 5, 3 ;  Restore pointer
54 : ST  1, 2(5) ;  Store function result into stack frame
55 : LD  6, 0(5) ;  Load return address
56 : LDA 7, 0(6) ;  Return to caller
59 : LD  1, 2(5) ;  Load parameter 'length' into R1
60 : LDA 4, 3(5) ;  Base of callee frame
61 : ST  1, 1(4) ;  Store argument 0 into callee frame
62 : LDA 4, 3(5) ;  Base of callee frame
63 : LDA 6, 67(0) ;  Compute return address
64 : ST  6, 0(4) ;  Store RA in callee frame
65 : ADD 5, 4, 0 ;  Update pointer (enter callee)
66 : LDA 7, 255(0) ;  Call ODD
67 : LD  1, 2(5) ;  Load callee return value into R1
68 : LDC 3, 3(0) ;  Load callee frame size
69 : SUB 5, 5, 3 ;  Restore pointer
70 : JEQ 1, 75(0) ;  If condition is false, jump to ELSE
72 : LDC 1, 0(0) ;  Load boolean-literal into R1
73 : LDA 7, 116(0) ;  Skip ELSE block
75 : LD  1, 1(5) ;  Load parameter 'n' into R1
76 : ADD 2, 1, 0 ;  R2 = left operand
77 : LD  1, 1(5) ;  Load parameter 'n' into R1
78 : LDA 4, 3(5) ;  Base of callee frame
79 : ST  1, 1(4) ;  Store argument 0 into callee frame
80 : LDA 4, 3(5) ;  Base of callee frame
81 : LDA 6, 85(0) ;  Compute return address
82 : ST  6, 0(4) ;  Store RA in callee frame
83 : ADD 5, 4, 0 ;  Update pointer (enter callee)
84 : LDA 7, 182(0) ;  Call a
85 : LD  1, 2(5) ;  Load callee return value into R1
86 : LDC 3, 3(0) ;  Load callee frame size
87 : SUB 5, 5, 3 ;  Restore pointer
88 : LDA 4, 4(5) ;  Base of callee frame
89 : ST  1, 1(4) ;  Store argument 0 into callee frame
90 : LD  1, 1(5) ;  Load parameter 'n' into R1
91 : LDA 4, 3(5) ;  Base of callee frame
92 : ST  1, 1(4) ;  Store argument 0 into callee frame
93 : LDA 4, 3(5) ;  Base of callee frame
94 : LDA 6, 98(0) ;  Compute return address
95 : ST  6, 0(4) ;  Store RA in callee frame
96 : ADD 5, 4, 0 ;  Update pointer (enter callee)
97 : LDA 7, 137(0) ;  Call b
98 : LD  1, 2(5) ;  Load callee return value into R1
99 : LDC 3, 3(0) ;  Load callee frame size
100 : SUB 5, 5, 3 ;  Restore pointer
101 : LDA 4, 4(5) ;  Base of callee frame
102 : ST  1, 2(4) ;  Store argument 1 into callee frame
103 : LDA 4, 4(5) ;  Base of callee frame
104 : LDA 6, 108(0) ;  Compute return address
105 : ST  6, 0(4) ;  Store RA in callee frame
106 : ADD 5, 4, 0 ;  Update pointer (enter callee)
107 : LDA 7, 120(0) ;  Call excellentDiff
108 : LD  1, 3(5) ;  Load callee return value into R1
109 : LDC 3, 4(0) ;  Load callee frame size
110 : SUB 5, 5, 3 ;  Restore pointer
111 : SUB 3, 2, 1 ;  delta = left - right
112 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
113 : LDC 1, 0(0) ;  FALSE
114 : LDA 7, 1(7) ;  Skip TRUE
115 : LDC 1, 1(0) ;  TRUE
116 : ST  1, 3(5) ;  Store function result into stack frame
117 : LD  6, 0(5) ;  Load return address
118 : LDA 7, 0(6) ;  Return to caller
120 : LD  1, 2(5) ;  Load parameter 'b' into R1
121 : ADD 2, 1, 0 ;  R2 = left operand
122 : LD  1, 2(5) ;  Load parameter 'b' into R1
123 : MUL 3, 2, 1 ;  R3 = left * right
124 : ADD 1, 3, 0 ;  R1 = R3
125 : ADD 2, 1, 0 ;  R2 = left operand
126 : LD  1, 1(5) ;  Load parameter 'a' into R1
127 : ADD 2, 1, 0 ;  R2 = left operand
128 : LD  1, 1(5) ;  Load parameter 'a' into R1
129 : MUL 3, 2, 1 ;  R3 = left * right
130 : ADD 1, 3, 0 ;  R1 = R3
131 : SUB 3, 2, 1 ;  R3 = left - right
132 : ADD 1, 3, 0 ;  R1 = R3
133 : ST  1, 3(5) ;  Store function result into stack frame
134 : LD  6, 0(5) ;  Load return address
135 : LDA 7, 0(6) ;  Return to caller
137 : LD  1, 1(5) ;  Load parameter 'n' into R1
138 : LDA 4, 4(5) ;  Base of callee frame
139 : ST  1, 1(4) ;  Store argument 0 into callee frame
140 : LDC 1, 10(0) ;  Load integer-literal into R1
141 : LDA 4, 4(5) ;  Base of callee frame
142 : ST  1, 1(4) ;  Store argument 0 into callee frame
143 : LD  1, 1(5) ;  Load parameter 'n' into R1
144 : LDA 4, 3(5) ;  Base of callee frame
145 : ST  1, 1(4) ;  Store argument 0 into callee frame
146 : LDA 4, 3(5) ;  Base of callee frame
147 : LDA 6, 151(0) ;  Compute return address
148 : ST  6, 0(4) ;  Store RA in callee frame
149 : ADD 5, 4, 0 ;  Update pointer (enter callee)
150 : LDA 7, 218(0) ;  Call length
151 : LD  1, 2(5) ;  Load callee return value into R1
152 : LDC 3, 3(0) ;  Load callee frame size
153 : SUB 5, 5, 3 ;  Restore pointer
154 : ADD 2, 1, 0 ;  R2 = left operand
155 : LDC 1, 2(0) ;  Load integer-literal into R1
156 : DIV 3, 2, 1 ;  R3 = left / right
157 : ADD 1, 3, 0 ;  R1 = R3
158 : LDA 4, 4(5) ;  Base of callee frame
159 : ST  1, 2(4) ;  Store argument 1 into callee frame
160 : LDA 4, 4(5) ;  Base of callee frame
161 : LDA 6, 165(0) ;  Compute return address
162 : ST  6, 0(4) ;  Store RA in callee frame
163 : ADD 5, 4, 0 ;  Update pointer (enter callee)
164 : LDA 7, 300(0) ;  Call EXP
165 : LD  1, 3(5) ;  Load callee return value into R1
166 : LDC 3, 4(0) ;  Load callee frame size
167 : SUB 5, 5, 3 ;  Restore pointer
168 : LDA 4, 4(5) ;  Base of callee frame
169 : ST  1, 2(4) ;  Store argument 1 into callee frame
170 : LDA 4, 4(5) ;  Base of callee frame
171 : LDA 6, 175(0) ;  Compute return address
172 : ST  6, 0(4) ;  Store RA in callee frame
173 : ADD 5, 4, 0 ;  Update pointer (enter callee)
174 : LDA 7, 340(0) ;  Call MOD
175 : LD  1, 3(5) ;  Load callee return value into R1
176 : LDC 3, 4(0) ;  Load callee frame size
177 : SUB 5, 5, 3 ;  Restore pointer
178 : ST  1, 2(5) ;  Store function result into stack frame
179 : LD  6, 0(5) ;  Load return address
180 : LDA 7, 0(6) ;  Return to caller
182 : LD  1, 1(5) ;  Load parameter 'n' into R1
183 : ADD 2, 1, 0 ;  R2 = left operand
184 : LDC 1, 10(0) ;  Load integer-literal into R1
185 : LDA 4, 4(5) ;  Base of callee frame
186 : ST  1, 1(4) ;  Store argument 0 into callee frame
187 : LD  1, 1(5) ;  Load parameter 'n' into R1
188 : LDA 4, 3(5) ;  Base of callee frame
189 : ST  1, 1(4) ;  Store argument 0 into callee frame
190 : LDA 4, 3(5) ;  Base of callee frame
191 : LDA 6, 195(0) ;  Compute return address
192 : ST  6, 0(4) ;  Store RA in callee frame
193 : ADD 5, 4, 0 ;  Update pointer (enter callee)
194 : LDA 7, 218(0) ;  Call length
195 : LD  1, 2(5) ;  Load callee return value into R1
196 : LDC 3, 3(0) ;  Load callee frame size
197 : SUB 5, 5, 3 ;  Restore pointer
198 : ADD 2, 1, 0 ;  R2 = left operand
199 : LDC 1, 2(0) ;  Load integer-literal into R1
200 : DIV 3, 2, 1 ;  R3 = left / right
201 : ADD 1, 3, 0 ;  R1 = R3
202 : LDA 4, 4(5) ;  Base of callee frame
203 : ST  1, 2(4) ;  Store argument 1 into callee frame
204 : LDA 4, 4(5) ;  Base of callee frame
205 : LDA 6, 209(0) ;  Compute return address
206 : ST  6, 0(4) ;  Store RA in callee frame
207 : ADD 5, 4, 0 ;  Update pointer (enter callee)
208 : LDA 7, 300(0) ;  Call EXP
209 : LD  1, 3(5) ;  Load callee return value into R1
210 : LDC 3, 4(0) ;  Load callee frame size
211 : SUB 5, 5, 3 ;  Restore pointer
212 : DIV 3, 2, 1 ;  R3 = left / right
213 : ADD 1, 3, 0 ;  R1 = R3
214 : ST  1, 2(5) ;  Store function result into stack frame
215 : LD  6, 0(5) ;  Load return address
216 : LDA 7, 0(6) ;  Return to caller
219 : LD  1, 1(5) ;  Load parameter 'n' into R1
220 : ADD 2, 1, 0 ;  R2 = left operand
221 : LDC 1, 10(0) ;  Load integer-literal into R1
222 : SUB 3, 2, 1 ;  delta = left - right
223 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
224 : LDC 1, 0(0) ;  FALSE
225 : LDA 7, 1(7) ;  Skip TRUE
226 : LDC 1, 1(0) ;  TRUE
227 : JEQ 1, 232(0) ;  If condition is false, jump to ELSE
229 : LDC 1, 1(0) ;  Load integer-literal into R1
230 : LDA 7, 251(0) ;  Skip ELSE block
232 : LDC 1, 1(0) ;  Load integer-literal into R1
233 : ADD 2, 1, 0 ;  R2 = left operand
234 : LD  1, 1(5) ;  Load parameter 'n' into R1
235 : ADD 2, 1, 0 ;  R2 = left operand
236 : LDC 1, 10(0) ;  Load integer-literal into R1
237 : DIV 3, 2, 1 ;  R3 = left / right
238 : ADD 1, 3, 0 ;  R1 = R3
239 : LDA 4, 3(5) ;  Base of callee frame
240 : ST  1, 1(4) ;  Store argument 0 into callee frame
241 : LDA 4, 3(5) ;  Base of callee frame
242 : LDA 6, 246(0) ;  Compute return address
243 : ST  6, 0(4) ;  Store RA in callee frame
244 : ADD 5, 4, 0 ;  Update pointer (enter callee)
245 : LDA 7, 218(0) ;  Call length
246 : LD  1, 2(5) ;  Load callee return value into R1
247 : LDC 3, 3(0) ;  Load callee frame size
248 : SUB 5, 5, 3 ;  Restore pointer
249 : ADD 3, 2, 1 ;  R3 = left + right
250 : ADD 1, 3, 0 ;  R1 = R3
251 : ST  1, 2(5) ;  Store function result into stack frame
252 : LD  6, 0(5) ;  Load return address
253 : LDA 7, 0(6) ;  Return to caller
256 : LDC 1, 0(0) ;  Load integer-literal into R1
257 : ADD 2, 1, 0 ;  R2 = left operand
258 : LD  1, 1(5) ;  Load parameter 'n' into R1
259 : SUB 3, 2, 1 ;  delta = left - right
260 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
261 : LDC 1, 0(0) ;  FALSE
262 : LDA 7, 1(7) ;  Skip TRUE
263 : LDC 1, 1(0) ;  TRUE
264 : JEQ 1, 284(0) ;  If condition is false, jump to ELSE
266 : LDC 1, 2(0) ;  Load integer-literal into R1
267 : ADD 2, 1, 0 ;  R2 = left operand
268 : LD  1, 1(5) ;  Load parameter 'n' into R1
269 : ADD 2, 1, 0 ;  R2 = left operand
270 : LDC 1, 2(0) ;  Load integer-literal into R1
271 : DIV 3, 2, 1 ;  R3 = left / right
272 : ADD 1, 3, 0 ;  R1 = R3
273 : MUL 3, 2, 1 ;  R3 = left * right
274 : ADD 1, 3, 0 ;  R1 = R3
275 : ADD 2, 1, 0 ;  R2 = left operand
276 : LD  1, 1(5) ;  Load parameter 'n' into R1
277 : SUB 3, 2, 1 ;  delta = left - right
278 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
279 : LDC 1, 0(0) ;  FALSE
280 : LDA 7, 1(7) ;  Skip TRUE
281 : LDC 1, 1(0) ;  TRUE
282 : LDA 7, 296(0) ;  Skip ELSE block
284 : LD  1, 1(5) ;  Load parameter 'n' into R1
285 : SUB 1, 0, 1 ;  Negate value in R1
286 : LDA 4, 3(5) ;  Base of callee frame
287 : ST  1, 1(4) ;  Store argument 0 into callee frame
288 : LDA 4, 3(5) ;  Base of callee frame
289 : LDA 6, 293(0) ;  Compute return address
290 : ST  6, 0(4) ;  Store RA in callee frame
291 : ADD 5, 4, 0 ;  Update pointer (enter callee)
292 : LDA 7, 255(0) ;  Call ODD
293 : LD  1, 2(5) ;  Load callee return value into R1
294 : LDC 3, 3(0) ;  Load callee frame size
295 : SUB 5, 5, 3 ;  Restore pointer
296 : ST  1, 2(5) ;  Store function result into stack frame
297 : LD  6, 0(5) ;  Load return address
298 : LDA 7, 0(6) ;  Return to caller
301 : LD  1, 2(5) ;  Load parameter 'n' into R1
302 : ADD 2, 1, 0 ;  R2 = left operand
303 : LDC 1, 0(0) ;  Load integer-literal into R1
304 : SUB 3, 2, 1 ;  delta = left - right
305 : JEQ 3, 2(7) ;  If delta == 0 jump to TRUE
306 : LDC 1, 0(0) ;  FALSE
307 : LDA 7, 1(7) ;  Skip TRUE
308 : LDC 1, 1(0) ;  TRUE
309 : JEQ 1, 314(0) ;  If condition is false, jump to ELSE
311 : LDC 1, 1(0) ;  Load integer-literal into R1
312 : LDA 7, 336(0) ;  Skip ELSE block
314 : LD  1, 1(5) ;  Load parameter 'm' into R1
315 : ADD 2, 1, 0 ;  R2 = left operand
316 : LD  1, 1(5) ;  Load parameter 'm' into R1
317 : LDA 4, 4(5) ;  Base of callee frame
318 : ST  1, 1(4) ;  Store argument 0 into callee frame
319 : LD  1, 2(5) ;  Load parameter 'n' into R1
320 : ADD 2, 1, 0 ;  R2 = left operand
321 : LDC 1, 1(0) ;  Load integer-literal into R1
322 : SUB 3, 2, 1 ;  R3 = left - right
323 : ADD 1, 3, 0 ;  R1 = R3
324 : LDA 4, 4(5) ;  Base of callee frame
325 : ST  1, 2(4) ;  Store argument 1 into callee frame
326 : LDA 4, 4(5) ;  Base of callee frame
327 : LDA 6, 331(0) ;  Compute return address
328 : ST  6, 0(4) ;  Store RA in callee frame
329 : ADD 5, 4, 0 ;  Update pointer (enter callee)
330 : LDA 7, 300(0) ;  Call EXP
331 : LD  1, 3(5) ;  Load callee return value into R1
332 : LDC 3, 4(0) ;  Load callee frame size
333 : SUB 5, 5, 3 ;  Restore pointer
334 : MUL 3, 2, 1 ;  R3 = left * right
335 : ADD 1, 3, 0 ;  R1 = R3
336 : ST  1, 3(5) ;  Store function result into stack frame
337 : LD  6, 0(5) ;  Load return address
338 : LDA 7, 0(6) ;  Return to caller
340 : LD  1, 1(5) ;  Load parameter 'm' into R1
341 : ADD 2, 1, 0 ;  R2 = left operand
342 : LD  1, 2(5) ;  Load parameter 'n' into R1
343 : ADD 2, 1, 0 ;  R2 = left operand
344 : LD  1, 1(5) ;  Load parameter 'm' into R1
345 : ADD 2, 1, 0 ;  R2 = left operand
346 : LD  1, 2(5) ;  Load parameter 'n' into R1
347 : DIV 3, 2, 1 ;  R3 = left / right
348 : ADD 1, 3, 0 ;  R1 = R3
349 : MUL 3, 2, 1 ;  R3 = left * right
350 : ADD 1, 3, 0 ;  R1 = R3
351 : SUB 3, 2, 1 ;  R3 = left - right
352 : ADD 1, 3, 0 ;  R1 = R3
353 : ST  1, 3(5) ;  Store function result into stack frame
354 : LD  6, 0(5) ;  Load return address
355 : LDA 7, 0(6) ;  Return to caller
