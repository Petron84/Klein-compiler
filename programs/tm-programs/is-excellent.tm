0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA  4, 0(5) ;  Save callee frame base
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDA 6, 21(0) ;  Compute return address
17 : ST 6, 0(4) ;  Store return address in callee frame
18 : LDA  2, 3(4) ;  Compute end of frame
19 : ADD  5, 2, 0 ;  Advance pointer to end of frame
20 : LDA 7, 28(0) ;  Call isExcellent
21 : LD 1, 2(5) ;  Load callee return value into R1
22 : LDC  4, 3(0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : ST 1, 2(5) ;  Store result into current frame's return slot
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LDA  4, 0(5) ;  Save callee frame base
29 : LD   1, 1(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(4) ;  Store argument 0 into callee frame
31 : LDA  4, 0(5) ;  Save callee frame base
32 : LD   1, 1(5) ;  Load parameter 'n' into R1
33 : ST 1, 1(4) ;  Store argument 0 into callee frame
34 : LDA 6, 39(0) ;  Compute return address
35 : ST 6, 0(4) ;  Store return address in callee frame
36 : LDA  2, 3(4) ;  Compute end of frame
37 : ADD  5, 2, 0 ;  Advance pointer to end of frame
38 : LDA 7, 212(0) ;  Call length
39 : LD 1, 2(5) ;  Load callee return value into R1
40 : LDC  4, 3(0) ;  Load frame size
41 : SUB  5, 5, 4 ;  Restore pointer
42 : LDC  2, 3(0) ;  Stores arg frame size
43 : SUB  5, 5, 2 ;  Pop frame
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LDA 6, 50(0) ;  Compute return address
46 : ST 6, 0(4) ;  Store return address in callee frame
47 : LDA  2, 4(4) ;  Compute end of frame
48 : ADD  5, 2, 0 ;  Advance pointer to end of frame
49 : LDA 7, 56(0) ;  Call isExcellentSwitch
50 : LD 1, 3(5) ;  Load callee return value into R1
51 : LDC  4, 4(0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST   1, 2(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDA  4, 0(5) ;  Save callee frame base
57 : LD   1, 2(5) ;  Load parameter 'length' into R1
58 : ST 1, 1(4) ;  Store argument 0 into callee frame
59 : LDA 6, 64(0) ;  Compute return address
60 : ST 6, 0(4) ;  Store return address in callee frame
61 : LDA  2, 3(4) ;  Compute end of frame
62 : ADD  5, 2, 0 ;  Advance pointer to end of frame
63 : LDA 7, 246(0) ;  Call ODD
64 : LD 1, 2(5) ;  Load callee return value into R1
65 : LDC  4, 3(0) ;  Load frame size
66 : SUB  5, 5, 4 ;  Restore pointer
67 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
68 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
69 : LDA  7, 115(0) ;  Skip ELSE block
70 : LD   1, 1(5) ;  Load parameter 'n' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LDA  4, 0(5) ;  Save callee frame base
73 : LDA  4, 0(5) ;  Save callee frame base
74 : LD   1, 1(5) ;  Load parameter 'n' into R1
75 : ST 1, 1(4) ;  Store argument 0 into callee frame
76 : LDA 6, 81(0) ;  Compute return address
77 : ST 6, 0(4) ;  Store return address in callee frame
78 : LDA  2, 3(4) ;  Compute end of frame
79 : ADD  5, 2, 0 ;  Advance pointer to end of frame
80 : LDA 7, 178(0) ;  Call a
81 : LD 1, 2(5) ;  Load callee return value into R1
82 : LDC  4, 3(0) ;  Load frame size
83 : SUB  5, 5, 4 ;  Restore pointer
84 : LDC  2, 3(0) ;  Stores arg frame size
85 : SUB  5, 5, 2 ;  Pop frame
86 : ST 1, 1(4) ;  Store argument 0 into callee frame
87 : LDA  4, 0(5) ;  Save callee frame base
88 : LD   1, 1(5) ;  Load parameter 'n' into R1
89 : ST 1, 1(4) ;  Store argument 0 into callee frame
90 : LDA 6, 95(0) ;  Compute return address
91 : ST 6, 0(4) ;  Store return address in callee frame
92 : LDA  2, 3(4) ;  Compute end of frame
93 : ADD  5, 2, 0 ;  Advance pointer to end of frame
94 : LDA 7, 134(0) ;  Call b
95 : LD 1, 2(5) ;  Load callee return value into R1
96 : LDC  4, 3(0) ;  Load frame size
97 : SUB  5, 5, 4 ;  Restore pointer
98 : LDC  2, 3(0) ;  Stores arg frame size
99 : SUB  5, 5, 2 ;  Pop frame
100 : ST 1, 2(4) ;  Store argument 1 into callee frame
101 : LDA 6, 106(0) ;  Compute return address
102 : ST 6, 0(4) ;  Store return address in callee frame
103 : LDA  2, 4(4) ;  Compute end of frame
104 : ADD  5, 2, 0 ;  Advance pointer to end of frame
105 : LDA 7, 118(0) ;  Call excellentDiff
106 : LD 1, 3(5) ;  Load callee return value into R1
107 : LDC  4, 4(0) ;  Load frame size
108 : SUB  5, 5, 4 ;  Restore pointer
109 : ADD  2, 3, 0 ;  Restore left operand
110 : SUB  1, 2, 1 ;  left - right for equality check
111 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
112 : LDC  1, 0(0) ;  false
113 : LDA  7, 1(7) ;  skip setting true
114 : LDC  1, 1(0) ;  true
115 : ST   1, 3(5) ;  Store function result into stack frame
116 : LD   6, 0(5) ;  Load return address
117 : LDA  7, 0(6) ;  Return to caller
118 : LD   1, 2(5) ;  Load parameter 'b' into R1
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LD   1, 2(5) ;  Load parameter 'b' into R1
121 : ADD  2, 3, 0 ;  Restore left operand
122 : MUL  1, 2, 1 ;  R1 = left * right
123 : ADD  3, 1, 0 ;  Store left operand into temporary register
124 : LD   1, 1(5) ;  Load parameter 'a' into R1
125 : ADD  3, 1, 0 ;  Store left operand into temporary register
126 : LD   1, 1(5) ;  Load parameter 'a' into R1
127 : ADD  2, 3, 0 ;  Restore left operand
128 : MUL  1, 2, 1 ;  R1 = left * right
129 : ADD  2, 3, 0 ;  Restore left operand
130 : SUB  1, 2, 1 ;  R1 = left - right
131 : ST   1, 3(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDA  4, 0(5) ;  Save callee frame base
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : ST 1, 1(4) ;  Store argument 0 into callee frame
137 : LDA  4, 0(5) ;  Save callee frame base
138 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
139 : ST 1, 1(4) ;  Store argument 0 into callee frame
140 : LDA  4, 0(5) ;  Save callee frame base
141 : LD   1, 1(5) ;  Load parameter 'n' into R1
142 : ST 1, 1(4) ;  Store argument 0 into callee frame
143 : LDA 6, 148(0) ;  Compute return address
144 : ST 6, 0(4) ;  Store return address in callee frame
145 : LDA  2, 3(4) ;  Compute end of frame
146 : ADD  5, 2, 0 ;  Advance pointer to end of frame
147 : LDA 7, 212(0) ;  Call length
148 : LD 1, 2(5) ;  Load callee return value into R1
149 : LDC  4, 3(0) ;  Load frame size
150 : SUB  5, 5, 4 ;  Restore pointer
151 : ADD  3, 1, 0 ;  Store left operand into temporary register
152 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
153 : ADD  2, 3, 0 ;  Restore left operand
154 : DIV  1, 2, 1 ;  R1 = left / right
155 : ST 1, 2(4) ;  Store argument 1 into callee frame
156 : LDA 6, 161(0) ;  Compute return address
157 : ST 6, 0(4) ;  Store return address in callee frame
158 : LDA  2, 4(4) ;  Compute end of frame
159 : ADD  5, 2, 0 ;  Advance pointer to end of frame
160 : LDA 7, 289(0) ;  Call EXP
161 : LD 1, 3(5) ;  Load callee return value into R1
162 : LDC  4, 4(0) ;  Load frame size
163 : SUB  5, 5, 4 ;  Restore pointer
164 : LDC  2, 4(0) ;  Stores arg frame size
165 : SUB  5, 5, 2 ;  Pop frame
166 : ST 1, 2(4) ;  Store argument 1 into callee frame
167 : LDA 6, 172(0) ;  Compute return address
168 : ST 6, 0(4) ;  Store return address in callee frame
169 : LDA  2, 4(4) ;  Compute end of frame
170 : ADD  5, 2, 0 ;  Advance pointer to end of frame
171 : LDA 7, 325(0) ;  Call MOD
172 : LD 1, 3(5) ;  Load callee return value into R1
173 : LDC  4, 4(0) ;  Load frame size
174 : SUB  5, 5, 4 ;  Restore pointer
175 : ST   1, 2(5) ;  Store function result into stack frame
176 : LD   6, 0(5) ;  Load return address
177 : LDA  7, 0(6) ;  Return to caller
178 : LD   1, 1(5) ;  Load parameter 'n' into R1
179 : ADD  3, 1, 0 ;  Store left operand into temporary register
180 : LDA  4, 0(5) ;  Save callee frame base
181 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
182 : ST 1, 1(4) ;  Store argument 0 into callee frame
183 : LDA  4, 0(5) ;  Save callee frame base
184 : LD   1, 1(5) ;  Load parameter 'n' into R1
185 : ST 1, 1(4) ;  Store argument 0 into callee frame
186 : LDA 6, 191(0) ;  Compute return address
187 : ST 6, 0(4) ;  Store return address in callee frame
188 : LDA  2, 3(4) ;  Compute end of frame
189 : ADD  5, 2, 0 ;  Advance pointer to end of frame
190 : LDA 7, 212(0) ;  Call length
191 : LD 1, 2(5) ;  Load callee return value into R1
192 : LDC  4, 3(0) ;  Load frame size
193 : SUB  5, 5, 4 ;  Restore pointer
194 : ADD  3, 1, 0 ;  Store left operand into temporary register
195 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
196 : ADD  2, 3, 0 ;  Restore left operand
197 : DIV  1, 2, 1 ;  R1 = left / right
198 : ST 1, 2(4) ;  Store argument 1 into callee frame
199 : LDA 6, 204(0) ;  Compute return address
200 : ST 6, 0(4) ;  Store return address in callee frame
201 : LDA  2, 4(4) ;  Compute end of frame
202 : ADD  5, 2, 0 ;  Advance pointer to end of frame
203 : LDA 7, 289(0) ;  Call EXP
204 : LD 1, 3(5) ;  Load callee return value into R1
205 : LDC  4, 4(0) ;  Load frame size
206 : SUB  5, 5, 4 ;  Restore pointer
207 : ADD  2, 3, 0 ;  Restore left operand
208 : DIV  1, 2, 1 ;  R1 = left / right
209 : ST   1, 2(5) ;  Store function result into stack frame
210 : LD   6, 0(5) ;  Load return address
211 : LDA  7, 0(6) ;  Return to caller
212 : LD   1, 1(5) ;  Load parameter 'n' into R1
213 : ADD  3, 1, 0 ;  Store left operand into temporary register
214 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
215 : ADD  2, 3, 0 ;  Restore left operand
216 : SUB  1, 2, 1 ;  left - right for less-than check
217 : JLT  1, 2(7) ;  If R1 < 0, jump to true
218 : LDC  1, 0(0) ;  false
219 : LDA  7, 1(7) ;  skip setting true
220 : LDC  1, 1(0) ;  true
221 : JEQ  1, 224(0) ;  If condition is false, jump to ELSE
222 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
223 : LDA  7, 243(0) ;  Skip ELSE block
224 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
225 : ADD  3, 1, 0 ;  Store left operand into temporary register
226 : LDA  4, 0(5) ;  Save callee frame base
227 : LD   1, 1(5) ;  Load parameter 'n' into R1
228 : ADD  3, 1, 0 ;  Store left operand into temporary register
229 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
230 : ADD  2, 3, 0 ;  Restore left operand
231 : DIV  1, 2, 1 ;  R1 = left / right
232 : ST 1, 1(4) ;  Store argument 0 into callee frame
233 : LDA 6, 238(0) ;  Compute return address
234 : ST 6, 0(4) ;  Store return address in callee frame
235 : LDA  2, 3(4) ;  Compute end of frame
236 : ADD  5, 2, 0 ;  Advance pointer to end of frame
237 : LDA 7, 212(0) ;  Call length
238 : LD 1, 2(5) ;  Load callee return value into R1
239 : LDC  4, 3(0) ;  Load frame size
240 : SUB  5, 5, 4 ;  Restore pointer
241 : ADD  2, 3, 0 ;  Restore left operand
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : ST   1, 2(5) ;  Store function result into stack frame
244 : LD   6, 0(5) ;  Load return address
245 : LDA  7, 0(6) ;  Return to caller
246 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
247 : ADD  3, 1, 0 ;  Store left operand into temporary register
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : ADD  2, 3, 0 ;  Restore left operand
250 : SUB  1, 2, 1 ;  left - right for less-than check
251 : JLT  1, 2(7) ;  If R1 < 0, jump to true
252 : LDC  1, 0(0) ;  false
253 : LDA  7, 1(7) ;  skip setting true
254 : LDC  1, 1(0) ;  true
255 : JEQ  1, 274(0) ;  If condition is false, jump to ELSE
256 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
257 : ADD  3, 1, 0 ;  Store left operand into temporary register
258 : LD   1, 1(5) ;  Load parameter 'n' into R1
259 : ADD  3, 1, 0 ;  Store left operand into temporary register
260 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
261 : ADD  2, 3, 0 ;  Restore left operand
262 : DIV  1, 2, 1 ;  R1 = left / right
263 : ADD  2, 3, 0 ;  Restore left operand
264 : MUL  1, 2, 1 ;  R1 = left * right
265 : ADD  3, 1, 0 ;  Store left operand into temporary register
266 : LD   1, 1(5) ;  Load parameter 'n' into R1
267 : ADD  2, 3, 0 ;  Restore left operand
268 : SUB  1, 2, 1 ;  left - right for less-than check
269 : JLT  1, 2(7) ;  If R1 < 0, jump to true
270 : LDC  1, 0(0) ;  false
271 : LDA  7, 1(7) ;  skip setting true
272 : LDC  1, 1(0) ;  true
273 : LDA  7, 286(0) ;  Skip ELSE block
274 : LDA  4, 0(5) ;  Save callee frame base
275 : LD   1, 1(5) ;  Load parameter 'n' into R1
276 : SUB  1, 0, 1 ;  Negate value in R1
277 : ST 1, 1(4) ;  Store argument 0 into callee frame
278 : LDA 6, 283(0) ;  Compute return address
279 : ST 6, 0(4) ;  Store return address in callee frame
280 : LDA  2, 3(4) ;  Compute end of frame
281 : ADD  5, 2, 0 ;  Advance pointer to end of frame
282 : LDA 7, 246(0) ;  Call ODD
283 : LD 1, 2(5) ;  Load callee return value into R1
284 : LDC  4, 3(0) ;  Load frame size
285 : SUB  5, 5, 4 ;  Restore pointer
286 : ST   1, 2(5) ;  Store function result into stack frame
287 : LD   6, 0(5) ;  Load return address
288 : LDA  7, 0(6) ;  Return to caller
289 : LD   1, 2(5) ;  Load parameter 'n' into R1
290 : ADD  3, 1, 0 ;  Store left operand into temporary register
291 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
292 : ADD  2, 3, 0 ;  Restore left operand
293 : SUB  1, 2, 1 ;  left - right for equality check
294 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
295 : LDC  1, 0(0) ;  false
296 : LDA  7, 1(7) ;  skip setting true
297 : LDC  1, 1(0) ;  true
298 : JEQ  1, 301(0) ;  If condition is false, jump to ELSE
299 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
300 : LDA  7, 322(0) ;  Skip ELSE block
301 : LD   1, 1(5) ;  Load parameter 'm' into R1
302 : ADD  3, 1, 0 ;  Store left operand into temporary register
303 : LDA  4, 0(5) ;  Save callee frame base
304 : LD   1, 1(5) ;  Load parameter 'm' into R1
305 : ST 1, 1(4) ;  Store argument 0 into callee frame
306 : LD   1, 2(5) ;  Load parameter 'n' into R1
307 : ADD  3, 1, 0 ;  Store left operand into temporary register
308 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
309 : ADD  2, 3, 0 ;  Restore left operand
310 : SUB  1, 2, 1 ;  R1 = left - right
311 : ST 1, 2(4) ;  Store argument 1 into callee frame
312 : LDA 6, 317(0) ;  Compute return address
313 : ST 6, 0(4) ;  Store return address in callee frame
314 : LDA  2, 4(4) ;  Compute end of frame
315 : ADD  5, 2, 0 ;  Advance pointer to end of frame
316 : LDA 7, 289(0) ;  Call EXP
317 : LD 1, 3(5) ;  Load callee return value into R1
318 : LDC  4, 4(0) ;  Load frame size
319 : SUB  5, 5, 4 ;  Restore pointer
320 : ADD  2, 3, 0 ;  Restore left operand
321 : MUL  1, 2, 1 ;  R1 = left * right
322 : ST   1, 3(5) ;  Store function result into stack frame
323 : LD   6, 0(5) ;  Load return address
324 : LDA  7, 0(6) ;  Return to caller
325 : LD   1, 1(5) ;  Load parameter 'm' into R1
326 : ADD  3, 1, 0 ;  Store left operand into temporary register
327 : LD   1, 2(5) ;  Load parameter 'n' into R1
328 : ADD  3, 1, 0 ;  Store left operand into temporary register
329 : LD   1, 1(5) ;  Load parameter 'm' into R1
330 : ADD  3, 1, 0 ;  Store left operand into temporary register
331 : LD   1, 2(5) ;  Load parameter 'n' into R1
332 : ADD  2, 3, 0 ;  Restore left operand
333 : DIV  1, 2, 1 ;  R1 = left / right
334 : ADD  2, 3, 0 ;  Restore left operand
335 : MUL  1, 2, 1 ;  R1 = left * right
336 : ADD  2, 3, 0 ;  Restore left operand
337 : SUB  1, 2, 1 ;  R1 = left - right
338 : ST   1, 3(5) ;  Store function result into stack frame
339 : LD   6, 0(5) ;  Load return address
340 : LDA  7, 0(6) ;  Return to caller
