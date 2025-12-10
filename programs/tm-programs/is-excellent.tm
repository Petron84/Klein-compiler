0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDA 4, 3(5) ;  Base of callee frame
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDA 6, 19(0) ;  Return address
16 : ST 6, 0(4) ;  Store return in callee frame
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 7, 26(0) ;  Call isExcellent
19 : LD 1, 2(5) ;  Load function result
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 2(5) ;  Store result into caller’s frame
23 : LD 1, 2(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to runtime continuation
26 : LDA 4, 4(5) ;  Base of callee frame
27 : LD 1, 1(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(4) ;  Store argument 0 in callee
29 : LDA 4, 3(5) ;  Base of callee frame
30 : LD 1, 1(5) ;  Load parameter 'n' into R1
31 : ST 1, 1(4) ;  Store argument 0 in callee
32 : LDA 6, 36(0) ;  Return address
33 : ST 6, 0(4) ;  Store return in callee frame
34 : ADD 5, 4, 0 ;  Push callee frame
35 : LDA 7, 198(0) ;  Call length
36 : LD 1, 2(5) ;  Load function result
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop back to caller
39 : ST 1, 2(4) ;  Store argument 1 in callee
40 : LDA 6, 44(0) ;  Return address
41 : ST 6, 0(4) ;  Store return in callee frame
42 : ADD 5, 4, 0 ;  Push callee frame
43 : LDA 7, 51(0) ;  Call isExcellentSwitch
44 : LD 1, 3(5) ;  Load function result
45 : LDC 2, 4(0) ;  Caller frame size
46 : SUB 5, 5, 2 ;  Pop back to caller
47 : ST 1, 2(5) ;  Store result into caller’s frame
48 : ST 1, 2(5) ;  Store function result into stack frame
49 : LD 6, 0(5) ;  Load return address
50 : LDA 7, 0(6) ;  Return to caller
51 : LDA 4, 3(5) ;  Base of callee frame
52 : LD 1, 2(5) ;  Load parameter 'length' into R1
53 : ST 1, 1(4) ;  Store argument 0 in callee
54 : LDA 6, 58(0) ;  Return address
55 : ST 6, 0(4) ;  Store return in callee frame
56 : ADD 5, 4, 0 ;  Push callee frame
57 : LDA 7, 236(0) ;  Call ODD
58 : LD 1, 2(5) ;  Load function result
59 : LDC 2, 3(0) ;  Caller frame size
60 : SUB 5, 5, 2 ;  Pop back to caller
61 : JEQ 1, 65(0) ;  If condition is false, jump to ELSE
62 : LDC 1, 0(0) ;  Load boolean-literal value into R1
63 : ST 1, 3(5) ;  Store result into current frame's return slot
64 : LDA 7, 105(0) ;  Skip ELSE block
65 : LDA 4, 4(5) ;  Base of callee frame
66 : LDA 4, 3(5) ;  Base of callee frame
67 : LD 1, 1(5) ;  Load parameter 'n' into R1
68 : ST 1, 1(4) ;  Store argument 0 in callee
69 : LDA 6, 73(0) ;  Return address
70 : ST 6, 0(4) ;  Store return in callee frame
71 : ADD 5, 4, 0 ;  Push callee frame
72 : LDA 7, 165(0) ;  Call a
73 : LD 1, 2(5) ;  Load function result
74 : LDC 2, 3(0) ;  Caller frame size
75 : SUB 5, 5, 2 ;  Pop back to caller
76 : ST 1, 1(4) ;  Store argument 0 in callee
77 : LDA 4, 3(5) ;  Base of callee frame
78 : LD 1, 1(5) ;  Load parameter 'n' into R1
79 : ST 1, 1(4) ;  Store argument 0 in callee
80 : LDA 6, 84(0) ;  Return address
81 : ST 6, 0(4) ;  Store return in callee frame
82 : ADD 5, 4, 0 ;  Push callee frame
83 : LDA 7, 126(0) ;  Call b
84 : LD 1, 2(5) ;  Load function result
85 : LDC 2, 3(0) ;  Caller frame size
86 : SUB 5, 5, 2 ;  Pop back to caller
87 : ST 1, 2(4) ;  Store argument 1 in callee
88 : LDA 6, 92(0) ;  Return address
89 : ST 6, 0(4) ;  Store return in callee frame
90 : ADD 5, 4, 0 ;  Push callee frame
91 : LDA 7, 108(0) ;  Call excellentDiff
92 : LD 1, 3(5) ;  Load function result
93 : LDC 2, 4(0) ;  Caller frame size
94 : SUB 5, 5, 2 ;  Pop back to caller
95 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
96 : LD 1, 1(5) ;  Load parameter 'n' into R1
97 : ADD 2, 1, 0 ;  Move left operand to R2
98 : ADD 1, 3, 0 ;  Restore right operand into R1
99 : SUB 1, 2, 1 ;  left - right for equality check
100 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
101 : LDC 1, 0(0) ;  false
102 : LDA 7, 1(7) ;  skip setting true
103 : LDC 1, 1(0) ;  true
104 : ST 1, 3(5) ;  Store result into current frame's return slot
105 : ST 1, 3(5) ;  Store function result into stack frame
106 : LD 6, 0(5) ;  Load return address
107 : LDA 7, 0(6) ;  Return to caller
108 : LD 1, 2(5) ;  Load parameter 'b' into R1
109 : ADD 3, 1, 0 ;  Move right operand to R3
110 : LD 1, 2(5) ;  Load parameter 'b' into R1
111 : ADD 2, 1, 0 ;  Move left operand to R2
112 : ADD 1, 3, 0 ;  Restore right operand into R1
113 : MUL 1, 2, 1 ;  R1 = left * right
114 : ADD 2, 1, 0 ;  Move left operand to R2
115 : LD 1, 1(5) ;  Load parameter 'a' into R1
116 : ADD 3, 1, 0 ;  Move right operand to R3
117 : LD 1, 1(5) ;  Load parameter 'a' into R1
118 : ADD 2, 1, 0 ;  Move left operand to R2
119 : ADD 1, 3, 0 ;  Restore right operand into R1
120 : MUL 1, 2, 1 ;  R1 = left * right
121 : SUB 1, 2, 1 ;  R1 = left - right
122 : ST 1, 3(5) ;  Store result into current frame's return slot
123 : ST 1, 3(5) ;  Store function result into stack frame
124 : LD 6, 0(5) ;  Load return address
125 : LDA 7, 0(6) ;  Return to caller
126 : LDA 4, 4(5) ;  Base of callee frame
127 : LD 1, 1(5) ;  Load parameter 'n' into R1
128 : ST 1, 1(4) ;  Store argument 0 in callee
129 : LDA 4, 4(5) ;  Base of callee frame
130 : LDC 1, 10(0) ;  Load integer-literal value into R1
131 : ST 1, 1(4) ;  Store argument 0 in callee
132 : LDA 4, 3(5) ;  Base of callee frame
133 : LD 1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 1(4) ;  Store argument 0 in callee
135 : LDA 6, 139(0) ;  Return address
136 : ST 6, 0(4) ;  Store return in callee frame
137 : ADD 5, 4, 0 ;  Push callee frame
138 : LDA 7, 198(0) ;  Call length
139 : LD 1, 2(5) ;  Load function result
140 : LDC 2, 3(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop back to caller
142 : ADD 2, 1, 0 ;  Move left operand to R2
143 : LDC 1, 2(0) ;  Load integer-literal value into R1
144 : DIV 1, 2, 1 ;  R1 = left / right
145 : ST 1, 2(4) ;  Store argument 1 in callee
146 : LDA 6, 150(0) ;  Return address
147 : ST 6, 0(4) ;  Store return in callee frame
148 : ADD 5, 4, 0 ;  Push callee frame
149 : LDA 7, 282(0) ;  Call EXP
150 : LD 1, 3(5) ;  Load function result
151 : LDC 2, 4(0) ;  Caller frame size
152 : SUB 5, 5, 2 ;  Pop back to caller
153 : ST 1, 2(4) ;  Store argument 1 in callee
154 : LDA 6, 158(0) ;  Return address
155 : ST 6, 0(4) ;  Store return in callee frame
156 : ADD 5, 4, 0 ;  Push callee frame
157 : LDA 7, 322(0) ;  Call MOD
158 : LD 1, 3(5) ;  Load function result
159 : LDC 2, 4(0) ;  Caller frame size
160 : SUB 5, 5, 2 ;  Pop back to caller
161 : ST 1, 2(5) ;  Store result into caller’s frame
162 : ST 1, 2(5) ;  Store function result into stack frame
163 : LD 6, 0(5) ;  Load return address
164 : LDA 7, 0(6) ;  Return to caller
165 : LDA 4, 4(5) ;  Base of callee frame
166 : LDC 1, 10(0) ;  Load integer-literal value into R1
167 : ST 1, 1(4) ;  Store argument 0 in callee
168 : LDA 4, 3(5) ;  Base of callee frame
169 : LD 1, 1(5) ;  Load parameter 'n' into R1
170 : ST 1, 1(4) ;  Store argument 0 in callee
171 : LDA 6, 175(0) ;  Return address
172 : ST 6, 0(4) ;  Store return in callee frame
173 : ADD 5, 4, 0 ;  Push callee frame
174 : LDA 7, 198(0) ;  Call length
175 : LD 1, 2(5) ;  Load function result
176 : LDC 2, 3(0) ;  Caller frame size
177 : SUB 5, 5, 2 ;  Pop back to caller
178 : ADD 2, 1, 0 ;  Move left operand to R2
179 : LDC 1, 2(0) ;  Load integer-literal value into R1
180 : DIV 1, 2, 1 ;  R1 = left / right
181 : ST 1, 2(4) ;  Store argument 1 in callee
182 : LDA 6, 186(0) ;  Return address
183 : ST 6, 0(4) ;  Store return in callee frame
184 : ADD 5, 4, 0 ;  Push callee frame
185 : LDA 7, 282(0) ;  Call EXP
186 : LD 1, 3(5) ;  Load function result
187 : LDC 2, 4(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop back to caller
189 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
190 : LD 1, 1(5) ;  Load parameter 'n' into R1
191 : ADD 2, 1, 0 ;  Move left operand to R2
192 : ADD 1, 3, 0 ;  Restore right operand into R1
193 : DIV 1, 2, 1 ;  R1 = left / right
194 : ST 1, 2(5) ;  Store result into current frame's return slot
195 : ST 1, 2(5) ;  Store function result into stack frame
196 : LD 6, 0(5) ;  Load return address
197 : LDA 7, 0(6) ;  Return to caller
198 : LDC 1, 10(0) ;  Load integer-literal value into R1
199 : ADD 3, 1, 0 ;  Move right operand to R3
200 : LD 1, 1(5) ;  Load parameter 'n' into R1
201 : ADD 2, 1, 0 ;  Move left operand to R2
202 : ADD 1, 3, 0 ;  Restore right operand into R1
203 : SUB 1, 2, 1 ;  left - right for less-than check
204 : JLT 1, 2(7) ;  If R1 < 0, jump to true
205 : LDC 1, 0(0) ;  false
206 : LDA 7, 1(7) ;  skip setting true
207 : LDC 1, 1(0) ;  true
208 : JEQ 1, 212(0) ;  If condition is false, jump to ELSE
209 : LDC 1, 1(0) ;  Load integer-literal value into R1
210 : ST 1, 2(5) ;  Store result into current frame's return slot
211 : LDA 7, 233(0) ;  Skip ELSE block
212 : LDA 4, 3(5) ;  Base of callee frame
213 : LDC 1, 10(0) ;  Load integer-literal value into R1
214 : ADD 3, 1, 0 ;  Move right operand to R3
215 : LD 1, 1(5) ;  Load parameter 'n' into R1
216 : ADD 2, 1, 0 ;  Move left operand to R2
217 : ADD 1, 3, 0 ;  Restore right operand into R1
218 : DIV 1, 2, 1 ;  R1 = left / right
219 : ST 1, 1(4) ;  Store argument 0 in callee
220 : LDA 6, 224(0) ;  Return address
221 : ST 6, 0(4) ;  Store return in callee frame
222 : ADD 5, 4, 0 ;  Push callee frame
223 : LDA 7, 198(0) ;  Call length
224 : LD 1, 2(5) ;  Load function result
225 : LDC 2, 3(0) ;  Caller frame size
226 : SUB 5, 5, 2 ;  Pop back to caller
227 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
228 : LDC 1, 1(0) ;  Load integer-literal value into R1
229 : ADD 2, 1, 0 ;  Move left operand to R2
230 : ADD 1, 3, 0 ;  Restore right operand into R1
231 : ADD 1, 2, 1 ;  R1 = left + right
232 : ST 1, 2(5) ;  Store result into current frame's return slot
233 : ST 1, 2(5) ;  Store function result into stack frame
234 : LD 6, 0(5) ;  Load return address
235 : LDA 7, 0(6) ;  Return to caller
236 : LD 1, 1(5) ;  Load parameter 'n' into R1
237 : ADD 3, 1, 0 ;  Move right operand to R3
238 : LDC 1, 0(0) ;  Load integer-literal value into R1
239 : ADD 2, 1, 0 ;  Move left operand to R2
240 : ADD 1, 3, 0 ;  Restore right operand into R1
241 : SUB 1, 2, 1 ;  left - right for less-than check
242 : JLT 1, 2(7) ;  If R1 < 0, jump to true
243 : LDC 1, 0(0) ;  false
244 : LDA 7, 1(7) ;  skip setting true
245 : LDC 1, 1(0) ;  true
246 : JEQ 1, 267(0) ;  If condition is false, jump to ELSE
247 : LDC 1, 2(0) ;  Load integer-literal value into R1
248 : ADD 3, 1, 0 ;  Move right operand to R3
249 : LD 1, 1(5) ;  Load parameter 'n' into R1
250 : ADD 2, 1, 0 ;  Move left operand to R2
251 : ADD 1, 3, 0 ;  Restore right operand into R1
252 : DIV 1, 2, 1 ;  R1 = left / right
253 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
254 : LDC 1, 2(0) ;  Load integer-literal value into R1
255 : ADD 2, 1, 0 ;  Move left operand to R2
256 : ADD 1, 3, 0 ;  Restore right operand into R1
257 : MUL 1, 2, 1 ;  R1 = left * right
258 : ADD 2, 1, 0 ;  Move left operand to R2
259 : LD 1, 1(5) ;  Load parameter 'n' into R1
260 : SUB 1, 2, 1 ;  left - right for less-than check
261 : JLT 1, 2(7) ;  If R1 < 0, jump to true
262 : LDC 1, 0(0) ;  false
263 : LDA 7, 1(7) ;  skip setting true
264 : LDC 1, 1(0) ;  true
265 : ST 1, 2(5) ;  Store result into current frame's return slot
266 : LDA 7, 279(0) ;  Skip ELSE block
267 : LDA 4, 3(5) ;  Base of callee frame
268 : LD 1, 1(5) ;  Load parameter 'n' into R1
269 : SUB 1, 0, 1 ;  Negate value in R1
270 : ST 1, 1(4) ;  Store argument 0 in callee
271 : LDA 6, 275(0) ;  Return address
272 : ST 6, 0(4) ;  Store return in callee frame
273 : ADD 5, 4, 0 ;  Push callee frame
274 : LDA 7, 236(0) ;  Call ODD
275 : LD 1, 2(5) ;  Load function result
276 : LDC 2, 3(0) ;  Caller frame size
277 : SUB 5, 5, 2 ;  Pop back to caller
278 : ST 1, 2(5) ;  Store result into caller’s frame
279 : ST 1, 2(5) ;  Store function result into stack frame
280 : LD 6, 0(5) ;  Load return address
281 : LDA 7, 0(6) ;  Return to caller
282 : LDC 1, 0(0) ;  Load integer-literal value into R1
283 : ADD 3, 1, 0 ;  Move right operand to R3
284 : LD 1, 2(5) ;  Load parameter 'n' into R1
285 : ADD 2, 1, 0 ;  Move left operand to R2
286 : ADD 1, 3, 0 ;  Restore right operand into R1
287 : SUB 1, 2, 1 ;  left - right for equality check
288 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
289 : LDC 1, 0(0) ;  false
290 : LDA 7, 1(7) ;  skip setting true
291 : LDC 1, 1(0) ;  true
292 : JEQ 1, 296(0) ;  If condition is false, jump to ELSE
293 : LDC 1, 1(0) ;  Load integer-literal value into R1
294 : ST 1, 3(5) ;  Store result into current frame's return slot
295 : LDA 7, 319(0) ;  Skip ELSE block
296 : LDA 4, 4(5) ;  Base of callee frame
297 : LD 1, 1(5) ;  Load parameter 'm' into R1
298 : ST 1, 1(4) ;  Store argument 0 in callee
299 : LDC 1, 1(0) ;  Load integer-literal value into R1
300 : ADD 3, 1, 0 ;  Move right operand to R3
301 : LD 1, 2(5) ;  Load parameter 'n' into R1
302 : ADD 2, 1, 0 ;  Move left operand to R2
303 : ADD 1, 3, 0 ;  Restore right operand into R1
304 : SUB 1, 2, 1 ;  R1 = left - right
305 : ST 1, 2(4) ;  Store argument 1 in callee
306 : LDA 6, 310(0) ;  Return address
307 : ST 6, 0(4) ;  Store return in callee frame
308 : ADD 5, 4, 0 ;  Push callee frame
309 : LDA 7, 282(0) ;  Call EXP
310 : LD 1, 3(5) ;  Load function result
311 : LDC 2, 4(0) ;  Caller frame size
312 : SUB 5, 5, 2 ;  Pop back to caller
313 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
314 : LD 1, 1(5) ;  Load parameter 'm' into R1
315 : ADD 2, 1, 0 ;  Move left operand to R2
316 : ADD 1, 3, 0 ;  Restore right operand into R1
317 : MUL 1, 2, 1 ;  R1 = left * right
318 : ST 1, 3(5) ;  Store result into current frame's return slot
319 : ST 1, 3(5) ;  Store function result into stack frame
320 : LD 6, 0(5) ;  Load return address
321 : LDA 7, 0(6) ;  Return to caller
322 : LD 1, 2(5) ;  Load parameter 'n' into R1
323 : ADD 3, 1, 0 ;  Move right operand to R3
324 : LD 1, 1(5) ;  Load parameter 'm' into R1
325 : ADD 2, 1, 0 ;  Move left operand to R2
326 : ADD 1, 3, 0 ;  Restore right operand into R1
327 : DIV 1, 2, 1 ;  R1 = left / right
328 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
329 : LD 1, 2(5) ;  Load parameter 'n' into R1
330 : ADD 2, 1, 0 ;  Move left operand to R2
331 : ADD 1, 3, 0 ;  Restore right operand into R1
332 : MUL 1, 2, 1 ;  R1 = left * right
333 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
334 : LD 1, 1(5) ;  Load parameter 'm' into R1
335 : ADD 2, 1, 0 ;  Move left operand to R2
336 : ADD 1, 3, 0 ;  Restore right operand into R1
337 : SUB 1, 2, 1 ;  R1 = left - right
338 : ST 1, 3(5) ;  Store result into current frame's return slot
339 : ST 1, 3(5) ;  Store function result into stack frame
340 : LD 6, 0(5) ;  Load return address
341 : LDA 7, 0(6) ;  Return to caller
