0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : LDA  4, 3(5) ; Restore Callee frame base
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDA  4, 3(5) ; Restore Call frame base
15 : LDA 6, 19(0) ;  Compute return address
16 : ST 6, 0(4) ;  Store return address in callee frame
17 : ADD  5, 4, 0 ;  Update pointer
18 : LDA 7, 26(0) ;  Call isExcellent
19 : LD 1, 2(5) ;  Load callee return value into R1
20 : LDC  4, 3(0) ;  Load frame size
21 : SUB  5, 5, 4 ;  Restore pointer
22 : ST 1, 2(5) ;  Store result into current frame's return slot
23 : LD   1, 2(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'n' into R1
27 : LDA  4, 4(5) ; Restore Callee frame base
28 : ST 1, 1(4) ;  Store argument 0 into callee frame
29 : LD   1, 1(5) ;  Load parameter 'n' into R1
30 : LDA  4, 3(5) ; Restore Callee frame base
31 : ST 1, 1(4) ;  Store argument 0 into callee frame
32 : LDA  4, 3(5) ; Restore Call frame base
33 : LDA 6, 37(0) ;  Compute return address
34 : ST 6, 0(4) ;  Store return address in callee frame
35 : ADD  5, 4, 0 ;  Update pointer
36 : LDA 7, 207(0) ;  Call length
37 : LD 1, 2(5) ;  Load callee return value into R1
38 : LDC  4, 3(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : LDA  4, 4(5) ; Restore Callee frame base
41 : ST 1, 2(4) ;  Store argument 1 into callee frame
42 : LDA  4, 4(5) ; Restore Call frame base
43 : LDA 6, 47(0) ;  Compute return address
44 : ST 6, 0(4) ;  Store return address in callee frame
45 : ADD  5, 4, 0 ;  Update pointer
46 : LDA 7, 53(0) ;  Call isExcellentSwitch
47 : LD 1, 3(5) ;  Load callee return value into R1
48 : LDC  4, 4(0) ;  Load frame size
49 : SUB  5, 5, 4 ;  Restore pointer
50 : ST   1, 2(5) ;  Store function result into stack frame
51 : LD   6, 0(5) ;  Load return address
52 : LDA  7, 0(6) ;  Return to caller
53 : LD   1, 2(5) ;  Load parameter 'length' into R1
54 : LDA  4, 3(5) ; Restore Callee frame base
55 : ST 1, 1(4) ;  Store argument 0 into callee frame
56 : LDA  4, 3(5) ; Restore Call frame base
57 : LDA 6, 61(0) ;  Compute return address
58 : ST 6, 0(4) ;  Store return address in callee frame
59 : ADD  5, 4, 0 ;  Update pointer
60 : LDA 7, 241(0) ;  Call ODD
61 : LD 1, 2(5) ;  Load callee return value into R1
62 : LDC  4, 3(0) ;  Load frame size
63 : SUB  5, 5, 4 ;  Restore pointer
64 : JEQ  1, 67(0) ;  If condition is false, jump to ELSE
65 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
66 : LDA  7, 109(0) ;  Skip ELSE block
67 : LD   1, 1(5) ;  Load parameter 'n' into R1
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LD   1, 1(5) ;  Load parameter 'n' into R1
70 : LDA  4, 3(5) ; Restore Callee frame base
71 : ST 1, 1(4) ;  Store argument 0 into callee frame
72 : LDA  4, 3(5) ; Restore Call frame base
73 : LDA 6, 77(0) ;  Compute return address
74 : ST 6, 0(4) ;  Store return address in callee frame
75 : ADD  5, 4, 0 ;  Update pointer
76 : LDA 7, 172(0) ;  Call a
77 : LD 1, 2(5) ;  Load callee return value into R1
78 : LDC  4, 3(0) ;  Load frame size
79 : SUB  5, 5, 4 ;  Restore pointer
80 : LDA  4, 4(5) ; Restore Callee frame base
81 : ST 1, 1(4) ;  Store argument 0 into callee frame
82 : LD   1, 1(5) ;  Load parameter 'n' into R1
83 : LDA  4, 3(5) ; Restore Callee frame base
84 : ST 1, 1(4) ;  Store argument 0 into callee frame
85 : LDA  4, 3(5) ; Restore Call frame base
86 : LDA 6, 90(0) ;  Compute return address
87 : ST 6, 0(4) ;  Store return address in callee frame
88 : ADD  5, 4, 0 ;  Update pointer
89 : LDA 7, 128(0) ;  Call b
90 : LD 1, 2(5) ;  Load callee return value into R1
91 : LDC  4, 3(0) ;  Load frame size
92 : SUB  5, 5, 4 ;  Restore pointer
93 : LDA  4, 4(5) ; Restore Callee frame base
94 : ST 1, 2(4) ;  Store argument 1 into callee frame
95 : LDA  4, 4(5) ; Restore Call frame base
96 : LDA 6, 100(0) ;  Compute return address
97 : ST 6, 0(4) ;  Store return address in callee frame
98 : ADD  5, 4, 0 ;  Update pointer
99 : LDA 7, 112(0) ;  Call excellentDiff
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC  4, 4(0) ;  Load frame size
102 : SUB  5, 5, 4 ;  Restore pointer
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : ST   1, 3(5) ;  Store function result into stack frame
110 : LD   6, 0(5) ;  Load return address
111 : LDA  7, 0(6) ;  Return to caller
112 : LD   1, 2(5) ;  Load parameter 'b' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 2(5) ;  Load parameter 'b' into R1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LD   1, 1(5) ;  Load parameter 'a' into R1
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LD   1, 1(5) ;  Load parameter 'a' into R1
121 : ADD  2, 3, 0 ;  Restore left operand
122 : MUL  1, 2, 1 ;  R1 = left * right
123 : ADD  2, 3, 0 ;  Restore left operand
124 : SUB  1, 2, 1 ;  R1 = left - right
125 : ST   1, 3(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : LDA  4, 4(5) ; Restore Callee frame base
130 : ST 1, 1(4) ;  Store argument 0 into callee frame
131 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
132 : LDA  4, 4(5) ; Restore Callee frame base
133 : ST 1, 1(4) ;  Store argument 0 into callee frame
134 : LD   1, 1(5) ;  Load parameter 'n' into R1
135 : LDA  4, 3(5) ; Restore Callee frame base
136 : ST 1, 1(4) ;  Store argument 0 into callee frame
137 : LDA  4, 3(5) ; Restore Call frame base
138 : LDA 6, 142(0) ;  Compute return address
139 : ST 6, 0(4) ;  Store return address in callee frame
140 : ADD  5, 4, 0 ;  Update pointer
141 : LDA 7, 207(0) ;  Call length
142 : LD 1, 2(5) ;  Load callee return value into R1
143 : LDC  4, 3(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
147 : ADD  2, 3, 0 ;  Restore left operand
148 : DIV  1, 2, 1 ;  R1 = left / right
149 : LDA  4, 4(5) ; Restore Callee frame base
150 : ST 1, 2(4) ;  Store argument 1 into callee frame
151 : LDA  4, 4(5) ; Restore Call frame base
152 : LDA 6, 156(0) ;  Compute return address
153 : ST 6, 0(4) ;  Store return address in callee frame
154 : ADD  5, 4, 0 ;  Update pointer
155 : LDA 7, 284(0) ;  Call EXP
156 : LD 1, 3(5) ;  Load callee return value into R1
157 : LDC  4, 4(0) ;  Load frame size
158 : SUB  5, 5, 4 ;  Restore pointer
159 : LDA  4, 4(5) ; Restore Callee frame base
160 : ST 1, 2(4) ;  Store argument 1 into callee frame
161 : LDA  4, 4(5) ; Restore Call frame base
162 : LDA 6, 166(0) ;  Compute return address
163 : ST 6, 0(4) ;  Store return address in callee frame
164 : ADD  5, 4, 0 ;  Update pointer
165 : LDA 7, 321(0) ;  Call MOD
166 : LD 1, 3(5) ;  Load callee return value into R1
167 : LDC  4, 4(0) ;  Load frame size
168 : SUB  5, 5, 4 ;  Restore pointer
169 : ST   1, 2(5) ;  Store function result into stack frame
170 : LD   6, 0(5) ;  Load return address
171 : LDA  7, 0(6) ;  Return to caller
172 : LD   1, 1(5) ;  Load parameter 'n' into R1
173 : ADD  3, 1, 0 ;  Store left operand into temporary register
174 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
175 : LDA  4, 4(5) ; Restore Callee frame base
176 : ST 1, 1(4) ;  Store argument 0 into callee frame
177 : LD   1, 1(5) ;  Load parameter 'n' into R1
178 : LDA  4, 3(5) ; Restore Callee frame base
179 : ST 1, 1(4) ;  Store argument 0 into callee frame
180 : LDA  4, 3(5) ; Restore Call frame base
181 : LDA 6, 185(0) ;  Compute return address
182 : ST 6, 0(4) ;  Store return address in callee frame
183 : ADD  5, 4, 0 ;  Update pointer
184 : LDA 7, 207(0) ;  Call length
185 : LD 1, 2(5) ;  Load callee return value into R1
186 : LDC  4, 3(0) ;  Load frame size
187 : SUB  5, 5, 4 ;  Restore pointer
188 : ADD  3, 1, 0 ;  Store left operand into temporary register
189 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
190 : ADD  2, 3, 0 ;  Restore left operand
191 : DIV  1, 2, 1 ;  R1 = left / right
192 : LDA  4, 4(5) ; Restore Callee frame base
193 : ST 1, 2(4) ;  Store argument 1 into callee frame
194 : LDA  4, 4(5) ; Restore Call frame base
195 : LDA 6, 199(0) ;  Compute return address
196 : ST 6, 0(4) ;  Store return address in callee frame
197 : ADD  5, 4, 0 ;  Update pointer
198 : LDA 7, 284(0) ;  Call EXP
199 : LD 1, 3(5) ;  Load callee return value into R1
200 : LDC  4, 4(0) ;  Load frame size
201 : SUB  5, 5, 4 ;  Restore pointer
202 : ADD  2, 3, 0 ;  Restore left operand
203 : DIV  1, 2, 1 ;  R1 = left / right
204 : ST   1, 2(5) ;  Store function result into stack frame
205 : LD   6, 0(5) ;  Load return address
206 : LDA  7, 0(6) ;  Return to caller
207 : LD   1, 1(5) ;  Load parameter 'n' into R1
208 : ADD  3, 1, 0 ;  Store left operand into temporary register
209 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
210 : ADD  2, 3, 0 ;  Restore left operand
211 : SUB  1, 2, 1 ;  left - right for less-than check
212 : JLT  1, 2(7) ;  If R1 < 0, jump to true
213 : LDC  1, 0(0) ;  false
214 : LDA  7, 1(7) ;  skip setting true
215 : LDC  1, 1(0) ;  true
216 : JEQ  1, 219(0) ;  If condition is false, jump to ELSE
217 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
218 : LDA  7, 238(0) ;  Skip ELSE block
219 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
220 : ADD  3, 1, 0 ;  Store left operand into temporary register
221 : LD   1, 1(5) ;  Load parameter 'n' into R1
222 : ADD  3, 1, 0 ;  Store left operand into temporary register
223 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
224 : ADD  2, 3, 0 ;  Restore left operand
225 : DIV  1, 2, 1 ;  R1 = left / right
226 : LDA  4, 3(5) ; Restore Callee frame base
227 : ST 1, 1(4) ;  Store argument 0 into callee frame
228 : LDA  4, 3(5) ; Restore Call frame base
229 : LDA 6, 233(0) ;  Compute return address
230 : ST 6, 0(4) ;  Store return address in callee frame
231 : ADD  5, 4, 0 ;  Update pointer
232 : LDA 7, 207(0) ;  Call length
233 : LD 1, 2(5) ;  Load callee return value into R1
234 : LDC  4, 3(0) ;  Load frame size
235 : SUB  5, 5, 4 ;  Restore pointer
236 : ADD  2, 3, 0 ;  Restore left operand
237 : ADD  1, 2, 1 ;  R1 = left + right
238 : ST   1, 2(5) ;  Store function result into stack frame
239 : LD   6, 0(5) ;  Load return address
240 : LDA  7, 0(6) ;  Return to caller
241 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
242 : ADD  3, 1, 0 ;  Store left operand into temporary register
243 : LD   1, 1(5) ;  Load parameter 'n' into R1
244 : ADD  2, 3, 0 ;  Restore left operand
245 : SUB  1, 2, 1 ;  left - right for less-than check
246 : JLT  1, 2(7) ;  If R1 < 0, jump to true
247 : LDC  1, 0(0) ;  false
248 : LDA  7, 1(7) ;  skip setting true
249 : LDC  1, 1(0) ;  true
250 : JEQ  1, 269(0) ;  If condition is false, jump to ELSE
251 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
252 : ADD  3, 1, 0 ;  Store left operand into temporary register
253 : LD   1, 1(5) ;  Load parameter 'n' into R1
254 : ADD  3, 1, 0 ;  Store left operand into temporary register
255 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
256 : ADD  2, 3, 0 ;  Restore left operand
257 : DIV  1, 2, 1 ;  R1 = left / right
258 : ADD  2, 3, 0 ;  Restore left operand
259 : MUL  1, 2, 1 ;  R1 = left * right
260 : ADD  3, 1, 0 ;  Store left operand into temporary register
261 : LD   1, 1(5) ;  Load parameter 'n' into R1
262 : ADD  2, 3, 0 ;  Restore left operand
263 : SUB  1, 2, 1 ;  left - right for less-than check
264 : JLT  1, 2(7) ;  If R1 < 0, jump to true
265 : LDC  1, 0(0) ;  false
266 : LDA  7, 1(7) ;  skip setting true
267 : LDC  1, 1(0) ;  true
268 : LDA  7, 281(0) ;  Skip ELSE block
269 : LD   1, 1(5) ;  Load parameter 'n' into R1
270 : SUB  1, 0, 1 ;  Negate value in R1
271 : LDA  4, 3(5) ; Restore Callee frame base
272 : ST 1, 1(4) ;  Store argument 0 into callee frame
273 : LDA  4, 3(5) ; Restore Call frame base
274 : LDA 6, 278(0) ;  Compute return address
275 : ST 6, 0(4) ;  Store return address in callee frame
276 : ADD  5, 4, 0 ;  Update pointer
277 : LDA 7, 241(0) ;  Call ODD
278 : LD 1, 2(5) ;  Load callee return value into R1
279 : LDC  4, 3(0) ;  Load frame size
280 : SUB  5, 5, 4 ;  Restore pointer
281 : ST   1, 2(5) ;  Store function result into stack frame
282 : LD   6, 0(5) ;  Load return address
283 : LDA  7, 0(6) ;  Return to caller
284 : LD   1, 2(5) ;  Load parameter 'n' into R1
285 : ADD  3, 1, 0 ;  Store left operand into temporary register
286 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
287 : ADD  2, 3, 0 ;  Restore left operand
288 : SUB  1, 2, 1 ;  left - right for equality check
289 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
290 : LDC  1, 0(0) ;  false
291 : LDA  7, 1(7) ;  skip setting true
292 : LDC  1, 1(0) ;  true
293 : JEQ  1, 296(0) ;  If condition is false, jump to ELSE
294 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
295 : LDA  7, 318(0) ;  Skip ELSE block
296 : LD   1, 1(5) ;  Load parameter 'm' into R1
297 : ADD  3, 1, 0 ;  Store left operand into temporary register
298 : LD   1, 1(5) ;  Load parameter 'm' into R1
299 : LDA  4, 4(5) ; Restore Callee frame base
300 : ST 1, 1(4) ;  Store argument 0 into callee frame
301 : LD   1, 2(5) ;  Load parameter 'n' into R1
302 : ADD  3, 1, 0 ;  Store left operand into temporary register
303 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
304 : ADD  2, 3, 0 ;  Restore left operand
305 : SUB  1, 2, 1 ;  R1 = left - right
306 : LDA  4, 4(5) ; Restore Callee frame base
307 : ST 1, 2(4) ;  Store argument 1 into callee frame
308 : LDA  4, 4(5) ; Restore Call frame base
309 : LDA 6, 313(0) ;  Compute return address
310 : ST 6, 0(4) ;  Store return address in callee frame
311 : ADD  5, 4, 0 ;  Update pointer
312 : LDA 7, 284(0) ;  Call EXP
313 : LD 1, 3(5) ;  Load callee return value into R1
314 : LDC  4, 4(0) ;  Load frame size
315 : SUB  5, 5, 4 ;  Restore pointer
316 : ADD  2, 3, 0 ;  Restore left operand
317 : MUL  1, 2, 1 ;  R1 = left * right
318 : ST   1, 3(5) ;  Store function result into stack frame
319 : LD   6, 0(5) ;  Load return address
320 : LDA  7, 0(6) ;  Return to caller
321 : LD   1, 1(5) ;  Load parameter 'm' into R1
322 : ADD  3, 1, 0 ;  Store left operand into temporary register
323 : LD   1, 2(5) ;  Load parameter 'n' into R1
324 : ADD  3, 1, 0 ;  Store left operand into temporary register
325 : LD   1, 1(5) ;  Load parameter 'm' into R1
326 : ADD  3, 1, 0 ;  Store left operand into temporary register
327 : LD   1, 2(5) ;  Load parameter 'n' into R1
328 : ADD  2, 3, 0 ;  Restore left operand
329 : DIV  1, 2, 1 ;  R1 = left / right
330 : ADD  2, 3, 0 ;  Restore left operand
331 : MUL  1, 2, 1 ;  R1 = left * right
332 : ADD  2, 3, 0 ;  Restore left operand
333 : SUB  1, 2, 1 ;  R1 = left - right
334 : ST   1, 3(5) ;  Store function result into stack frame
335 : LD   6, 0(5) ;  Load return address
336 : LDA  7, 0(6) ;  Return to caller
