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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'circularPrimesTo'
12 : LD   1, 1(5) ;  Load parameter 'x' into R1
13 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=4) into callee frame
14 : LDA 6, 2(7) ;  Compute return address
15 : ST 6, 0(3) ;  Store return address in callee frame
16 : ADD  5, 3, 0 ;  Update pointer
17 : LDA 7, 458(0) ;  Call circularPrimesTo
18 : LD 1, 2(5) ;  Load callee return value into R1
19 : LDC  4, 3(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : ST 1, 4(0) ;  Store function-call result into caller's return slot
22 : LD   1, 4(0) ;  Load return value into register 1
23 : LD  6, 2(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 1(5) ;  Load parameter 'num' into R1
26 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
27 : LD   1, 2(5) ;  Load parameter 'den' into R1
28 : SUB  1, 2, 1 ;  left - right for less-than check
29 : JLT  1, 2(7) ;  If R1 < 0, jump to true
30 : LDC  1, 0(0) ;  false
31 : LDA  7, 1(7) ;  skip setting true
32 : LDC  1, 1(0) ;  true
33 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
34 : LD   1, 1(5) ;  Load parameter 'num' into R1
35 : LDA  7, 51(0) ;  Skip ELSE block
36 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 2(5) ;  Load parameter 'den' into R1
40 : SUB  1, 2, 1 ;  R1 = left - right
41 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=75), Tree Node('IDENTIFIER', value='den',line=75)],line=75) into callee frame
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='den',line=75) into callee frame
44 : LDA 6, 2(7) ;  Compute return address
45 : ST 6, 0(3) ;  Store return address in callee frame
46 : ADD  5, 3, 0 ;  Update pointer
47 : LDA 7, 25(0) ;  Call mod
48 : LD 1, 3(5) ;  Load callee return value into R1
49 : LDC  4, 4(0) ;  Load frame size
50 : SUB  5, 5, 4 ;  Restore pointer
51 : ST   1, 3(5) ;  Store function result into stack frame
52 : LD   6, 0(5) ;  Load return address
53 : LDA  7, 0(6) ;  Return to caller
54 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
55 : LD   1, 2(5) ;  Load parameter 'b' into R1
56 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='b',line=69) into callee frame
57 : LD   1, 1(5) ;  Load parameter 'a' into R1
58 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=69) into callee frame
59 : LDA 6, 2(7) ;  Compute return address
60 : ST 6, 0(3) ;  Store return address in callee frame
61 : ADD  5, 3, 0 ;  Update pointer
62 : LDA 7, 25(0) ;  Call mod
63 : LD 1, 3(5) ;  Load callee return value into R1
64 : LDC  4, 4(0) ;  Load frame size
65 : SUB  5, 5, 4 ;  Restore pointer
66 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
67 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
68 : SUB  1, 2, 1 ;  left - right for equality check
69 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
70 : LDC  1, 0(0) ;  false
71 : LDA  7, 1(7) ;  skip setting true
72 : LDC  1, 1(0) ;  true
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
76 : LD   1, 1(5) ;  Load parameter 'i' into R1
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LD   1, 2(5) ;  Load parameter 'n' into R1
79 : SUB  1, 2, 1 ;  left - right for less-than check
80 : JLT  1, 2(7) ;  If R1 < 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : JEQ  1, 115(0) ;  If condition is false, jump to ELSE
85 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
86 : LD   1, 1(5) ;  Load parameter 'i' into R1
87 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='i',line=64) into callee frame
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64) into callee frame
90 : LDA 6, 2(7) ;  Compute return address
91 : ST 6, 0(3) ;  Store return address in callee frame
92 : ADD  5, 3, 0 ;  Update pointer
93 : LDA 7, 54(0) ;  Call divides
94 : LD 1, 3(5) ;  Load callee return value into R1
95 : LDC  4, 4(0) ;  Load frame size
96 : SUB  5, 5, 4 ;  Restore pointer
97 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
98 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
99 : LD   1, 1(5) ;  Load parameter 'i' into R1
100 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
101 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
102 : ADD  1, 2, 1 ;  R1 = left + right
103 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=64), Tree Node('INTEGER-LITERAL', value='1',line=64)],line=64) into callee frame
104 : LD   1, 2(5) ;  Load parameter 'n' into R1
105 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64) into callee frame
106 : LDA 6, 2(7) ;  Compute return address
107 : ST 6, 0(3) ;  Store return address in callee frame
108 : ADD  5, 3, 0 ;  Update pointer
109 : LDA 7, 76(0) ;  Call hasDivisorFrom
110 : LD 1, 3(5) ;  Load callee return value into R1
111 : LDC  4, 4(0) ;  Load frame size
112 : SUB  5, 5, 4 ;  Restore pointer
113 : ADD  1, 2, 1 ;  R1 = left OR right
114 : LDA  7, 116(0) ;  Skip ELSE block
115 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
116 : ST   1, 3(5) ;  Store function result into stack frame
117 : LD   6, 0(5) ;  Load return address
118 : LDA  7, 0(6) ;  Return to caller
119 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
120 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
121 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=60) into callee frame
122 : LD   1, 1(5) ;  Load parameter 'n' into R1
123 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=60) into callee frame
124 : LDA 6, 2(7) ;  Compute return address
125 : ST 6, 0(3) ;  Store return address in callee frame
126 : ADD  5, 3, 0 ;  Update pointer
127 : LDA 7, 76(0) ;  Call hasDivisorFrom
128 : LD 1, 3(5) ;  Load callee return value into R1
129 : LDC  4, 3(0) ;  Load frame size
130 : SUB  5, 5, 4 ;  Restore pointer
131 : LDC  2, 1(0) ;  Load 1 into R2
132 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
133 : ST   1, 2(5) ;  Store function result into stack frame
134 : LD   6, 0(5) ;  Load return address
135 : LDA  7, 0(6) ;  Return to caller
136 : LD   1, 1(5) ;  Load parameter 'x' into R1
137 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
138 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
139 : DIV  1, 2, 1 ;  R1 = left / right
140 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
141 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
142 : SUB  1, 2, 1 ;  left - right for equality check
143 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
144 : LDC  1, 0(0) ;  false
145 : LDA  7, 1(7) ;  skip setting true
146 : LDC  1, 1(0) ;  true
147 : JEQ  1, 150(0) ;  If condition is false, jump to ELSE
148 : LD   1, 2(5) ;  Load parameter 'y' into R1
149 : LDA  7, 168(0) ;  Skip ELSE block
150 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'log10Helper'
151 : LD   1, 1(5) ;  Load parameter 'x' into R1
152 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
153 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
154 : DIV  1, 2, 1 ;  R1 = left / right
155 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='x',line=55), Tree Node('INTEGER-LITERAL', value='10',line=55)],line=55) into callee frame
156 : LD   1, 2(5) ;  Load parameter 'y' into R1
157 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
158 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
159 : ADD  1, 2, 1 ;  R1 = left + right
160 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='y',line=55), Tree Node('INTEGER-LITERAL', value='1',line=55)],line=55) into callee frame
161 : LDA 6, 2(7) ;  Compute return address
162 : ST 6, 0(3) ;  Store return address in callee frame
163 : ADD  5, 3, 0 ;  Update pointer
164 : LDA 7, 136(0) ;  Call log10Helper
165 : LD 1, 3(5) ;  Load callee return value into R1
166 : LDC  4, 4(0) ;  Load frame size
167 : SUB  5, 5, 4 ;  Restore pointer
168 : ST   1, 3(5) ;  Store function result into stack frame
169 : LD   6, 0(5) ;  Load return address
170 : LDA  7, 0(6) ;  Return to caller
171 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'log10Helper'
172 : LD   1, 1(5) ;  Load parameter 'x' into R1
173 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=49) into callee frame
174 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
175 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=49) into callee frame
176 : LDA 6, 2(7) ;  Compute return address
177 : ST 6, 0(3) ;  Store return address in callee frame
178 : ADD  5, 3, 0 ;  Update pointer
179 : LDA 7, 136(0) ;  Call log10Helper
180 : LD 1, 3(5) ;  Load callee return value into R1
181 : LDC  4, 3(0) ;  Load frame size
182 : SUB  5, 5, 4 ;  Restore pointer
183 : ST   1, 2(5) ;  Store function result into stack frame
184 : LD   6, 0(5) ;  Load return address
185 : LDA  7, 0(6) ;  Return to caller
186 : LD   1, 2(5) ;  Load parameter 'power' into R1
187 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
188 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
189 : SUB  1, 2, 1 ;  left - right for equality check
190 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
191 : LDC  1, 0(0) ;  false
192 : LDA  7, 1(7) ;  skip setting true
193 : LDC  1, 1(0) ;  true
194 : JEQ  1, 197(0) ;  If condition is false, jump to ELSE
195 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
196 : LDA  7, 228(0) ;  Skip ELSE block
197 : LD   1, 2(5) ;  Load parameter 'power' into R1
198 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
199 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
200 : SUB  1, 2, 1 ;  left - right for equality check
201 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
202 : LDC  1, 0(0) ;  false
203 : LDA  7, 1(7) ;  skip setting true
204 : LDC  1, 1(0) ;  true
205 : JEQ  1, 208(0) ;  If condition is false, jump to ELSE
206 : LD   1, 3(5) ;  Load parameter 'total' into R1
207 : LDA  7, 228(0) ;  Skip ELSE block
208 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'powHelper'
209 : LD   1, 1(5) ;  Load parameter 'base' into R1
210 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='base',line=46) into callee frame
211 : LD   1, 2(5) ;  Load parameter 'power' into R1
212 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
213 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
214 : SUB  1, 2, 1 ;  R1 = left - right
215 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='power',line=46), Tree Node('INTEGER-LITERAL', value='1',line=46)],line=46) into callee frame
216 : LD   1, 1(5) ;  Load parameter 'base' into R1
217 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
218 : LD   1, 3(5) ;  Load parameter 'total' into R1
219 : MUL  1, 2, 1 ;  R1 = left * right
220 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='base',line=46), Tree Node('IDENTIFIER', value='total',line=46)],line=46) into callee frame
221 : LDA 6, 2(7) ;  Compute return address
222 : ST 6, 0(3) ;  Store return address in callee frame
223 : ADD  5, 3, 0 ;  Update pointer
224 : LDA 7, 186(0) ;  Call powHelper
225 : LD 1, 4(5) ;  Load callee return value into R1
226 : LDC  4, 5(0) ;  Load frame size
227 : SUB  5, 5, 4 ;  Restore pointer
228 : ST   1, 4(5) ;  Store function result into stack frame
229 : LD   6, 0(5) ;  Load return address
230 : LDA  7, 0(6) ;  Return to caller
231 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'powHelper'
232 : LD   1, 1(5) ;  Load parameter 'x' into R1
233 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38) into callee frame
234 : LD   1, 2(5) ;  Load parameter 'y' into R1
235 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='y',line=38) into callee frame
236 : LD   1, 1(5) ;  Load parameter 'x' into R1
237 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38) into callee frame
238 : LDA 6, 2(7) ;  Compute return address
239 : ST 6, 0(3) ;  Store return address in callee frame
240 : ADD  5, 3, 0 ;  Update pointer
241 : LDA 7, 186(0) ;  Call powHelper
242 : LD 1, 4(5) ;  Load callee return value into R1
243 : LDC  4, 4(0) ;  Load frame size
244 : SUB  5, 5, 4 ;  Restore pointer
245 : ST   1, 3(5) ;  Store function result into stack frame
246 : LD   6, 0(5) ;  Load return address
247 : LDA  7, 0(6) ;  Return to caller
248 : LD   1, 1(5) ;  Load parameter 'x' into R1
249 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
250 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
251 : DIV  1, 2, 1 ;  R1 = left / right
252 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
253 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'mod'
254 : LD   1, 1(5) ;  Load parameter 'x' into R1
255 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35) into callee frame
256 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
257 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35) into callee frame
258 : LDA 6, 2(7) ;  Compute return address
259 : ST 6, 0(3) ;  Store return address in callee frame
260 : ADD  5, 3, 0 ;  Update pointer
261 : LDA 7, 25(0) ;  Call mod
262 : LD 1, 3(5) ;  Load callee return value into R1
263 : LDC  4, 3(0) ;  Load frame size
264 : SUB  5, 5, 4 ;  Restore pointer
265 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
266 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'pow'
267 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
268 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35) into callee frame
269 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'log10'
270 : LD   1, 1(5) ;  Load parameter 'x' into R1
271 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35) into callee frame
272 : LDA 6, 2(7) ;  Compute return address
273 : ST 6, 0(3) ;  Store return address in callee frame
274 : ADD  5, 3, 0 ;  Update pointer
275 : LDA 7, 171(0) ;  Call log10
276 : LD 1, 2(5) ;  Load callee return value into R1
277 : LDC  4, 3(0) ;  Load frame size
278 : SUB  5, 5, 4 ;  Restore pointer
279 : ST 1, 2(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=35), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=35)],line=35)],line=35) into callee frame
280 : LDA 6, 2(7) ;  Compute return address
281 : ST 6, 0(3) ;  Store return address in callee frame
282 : ADD  5, 3, 0 ;  Update pointer
283 : LDA 7, 231(0) ;  Call pow
284 : LD 1, 3(5) ;  Load callee return value into R1
285 : LDC  4, 3(0) ;  Load frame size
286 : SUB  5, 5, 4 ;  Restore pointer
287 : MUL  1, 2, 1 ;  R1 = left * right
288 : ADD  1, 2, 1 ;  R1 = left + right
289 : ST   1, 2(5) ;  Store function result into stack frame
290 : LD   6, 0(5) ;  Load return address
291 : LDA  7, 0(6) ;  Return to caller
292 : LD   1, 1(5) ;  Load parameter 'x' into R1
293 : LDA  3, 3(5) ;  Update DMEM pointer
294 : LDA  6, 2(7) ;  Compute return address
295 : ST   6, 0(3) ;  Store return address
296 : ADD  5, 3, 0 ;  Updated Pointer
297 : LDA  7, 8(0) ; Call print
298 : LDC  4, 3)0) ;  Load frame size
299 : SUB  5, 5, 4 ;  Restore pointer
300 : ST   1, 2(5) ;  Store function result into stack frame
301 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
302 : ST   1, 2(5) ;  Store function result into stack frame
303 : LD   6, 0(5) ;  Load return address
304 : LDA  7, 0(6) ;  Return to caller
305 : LD   1, 2(5) ;  Load parameter 'turns' into R1
306 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
307 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
308 : SUB  1, 2, 1 ;  left - right for equality check
309 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
310 : LDC  1, 0(0) ;  false
311 : LDA  7, 1(7) ;  skip setting true
312 : LDC  1, 1(0) ;  true
313 : JEQ  1, 316(0) ;  If condition is false, jump to ELSE
314 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
315 : LDA  7, 352(0) ;  Skip ELSE block
316 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
317 : LD   1, 1(5) ;  Load parameter 'x' into R1
318 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28) into callee frame
319 : LDA 6, 2(7) ;  Compute return address
320 : ST 6, 0(3) ;  Store return address in callee frame
321 : ADD  5, 3, 0 ;  Update pointer
322 : LDA 7, 119(0) ;  Call isPrime
323 : LD 1, 2(5) ;  Load callee return value into R1
324 : LDC  4, 4(0) ;  Load frame size
325 : SUB  5, 5, 4 ;  Restore pointer
326 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
327 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'isCircularPrimeHelper'
328 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'rotate'
329 : LD   1, 1(5) ;  Load parameter 'x' into R1
330 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28) into callee frame
331 : LDA 6, 2(7) ;  Compute return address
332 : ST 6, 0(3) ;  Store return address in callee frame
333 : ADD  5, 3, 0 ;  Update pointer
334 : LDA 7, 248(0) ;  Call rotate
335 : LD 1, 2(5) ;  Load callee return value into R1
336 : LDC  4, 4(0) ;  Load frame size
337 : SUB  5, 5, 4 ;  Restore pointer
338 : ST 1, 1(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='rotate',line=28), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=28)],line=28)],line=28) into callee frame
339 : LD   1, 2(5) ;  Load parameter 'turns' into R1
340 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
341 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
342 : SUB  1, 2, 1 ;  R1 = left - right
343 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='turns',line=28), Tree Node('INTEGER-LITERAL', value='1',line=28)],line=28) into callee frame
344 : LDA 6, 2(7) ;  Compute return address
345 : ST 6, 0(3) ;  Store return address in callee frame
346 : ADD  5, 3, 0 ;  Update pointer
347 : LDA 7, 305(0) ;  Call isCircularPrimeHelper
348 : LD 1, 3(5) ;  Load callee return value into R1
349 : LDC  4, 4(0) ;  Load frame size
350 : SUB  5, 5, 4 ;  Restore pointer
351 : MUL  1, 2, 1 ;  R1 = left AND right
352 : ST   1, 3(5) ;  Store function result into stack frame
353 : LD   6, 0(5) ;  Load return address
354 : LDA  7, 0(6) ;  Return to caller
355 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isCircularPrimeHelper'
356 : LD   1, 1(5) ;  Load parameter 'x' into R1
357 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19) into callee frame
358 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'log10'
359 : LD   1, 1(5) ;  Load parameter 'x' into R1
360 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19) into callee frame
361 : LDA 6, 2(7) ;  Compute return address
362 : ST 6, 0(3) ;  Store return address in callee frame
363 : ADD  5, 3, 0 ;  Update pointer
364 : LDA 7, 171(0) ;  Call log10
365 : LD 1, 2(5) ;  Load callee return value into R1
366 : LDC  4, 3(0) ;  Load frame size
367 : SUB  5, 5, 4 ;  Restore pointer
368 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
369 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
370 : ADD  1, 2, 1 ;  R1 = left + right
371 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=19), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=19)],line=19)],line=19), Tree Node('INTEGER-LITERAL', value='1',line=19)],line=19) into callee frame
372 : LDA 6, 2(7) ;  Compute return address
373 : ST 6, 0(3) ;  Store return address in callee frame
374 : ADD  5, 3, 0 ;  Update pointer
375 : LDA 7, 305(0) ;  Call isCircularPrimeHelper
376 : LD 1, 3(5) ;  Load callee return value into R1
377 : LDC  4, 3(0) ;  Load frame size
378 : SUB  5, 5, 4 ;  Restore pointer
379 : JEQ  1, 391(0) ;  If condition is false, jump to ELSE
380 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'report'
381 : LD   1, 1(5) ;  Load parameter 'x' into R1
382 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=20) into callee frame
383 : LDA 6, 2(7) ;  Compute return address
384 : ST 6, 0(3) ;  Store return address in callee frame
385 : ADD  5, 3, 0 ;  Update pointer
386 : LDA 7, 292(0) ;  Call report
387 : LD 1, 2(5) ;  Load callee return value into R1
388 : LDC  4, 3(0) ;  Load frame size
389 : SUB  5, 5, 4 ;  Restore pointer
390 : LDA  7, 392(0) ;  Skip ELSE block
391 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
392 : ST   1, 2(5) ;  Store function result into stack frame
393 : LD   6, 0(5) ;  Load return address
394 : LDA  7, 0(6) ;  Return to caller
395 : LD   1, 2(5) ;  Load parameter 'x' into R1
396 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
397 : LD   1, 1(5) ;  Load parameter 'top' into R1
398 : SUB  1, 2, 1 ;  left - right for less-than check
399 : JLT  1, 2(7) ;  If R1 < 0, jump to true
400 : LDC  1, 0(0) ;  false
401 : LDA  7, 1(7) ;  skip setting true
402 : LDC  1, 1(0) ;  true
403 : JEQ  1, 454(0) ;  If condition is false, jump to ELSE
404 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'isCircularPrime'
405 : LD   1, 2(5) ;  Load parameter 'x' into R1
406 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='x',line=11) into callee frame
407 : LDA 6, 2(7) ;  Compute return address
408 : ST 6, 0(3) ;  Store return address in callee frame
409 : ADD  5, 3, 0 ;  Update pointer
410 : LDA 7, 355(0) ;  Call isCircularPrime
411 : LD 1, 2(5) ;  Load callee return value into R1
412 : LDC  4, 5(0) ;  Load frame size
413 : SUB  5, 5, 4 ;  Restore pointer
414 : JEQ  1, 436(0) ;  If condition is false, jump to ELSE
415 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
416 : LD   1, 1(5) ;  Load parameter 'top' into R1
417 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='top',line=12) into callee frame
418 : LD   1, 2(5) ;  Load parameter 'x' into R1
419 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
420 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
421 : ADD  1, 2, 1 ;  R1 = left + right
422 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12) into callee frame
423 : LD   1, 3(5) ;  Load parameter 'count' into R1
424 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
425 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
426 : ADD  1, 2, 1 ;  R1 = left + right
427 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='count',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12) into callee frame
428 : LDA 6, 2(7) ;  Compute return address
429 : ST 6, 0(3) ;  Store return address in callee frame
430 : ADD  5, 3, 0 ;  Update pointer
431 : LDA 7, 395(0) ;  Call circularPrimesToHelper
432 : LD 1, 4(5) ;  Load callee return value into R1
433 : LDC  4, 5(0) ;  Load frame size
434 : SUB  5, 5, 4 ;  Restore pointer
435 : LDA  7, 453(0) ;  Skip ELSE block
436 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
437 : LD   1, 1(5) ;  Load parameter 'top' into R1
438 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='top',line=14) into callee frame
439 : LD   1, 2(5) ;  Load parameter 'x' into R1
440 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
441 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
442 : ADD  1, 2, 1 ;  R1 = left + right
443 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=14), Tree Node('INTEGER-LITERAL', value='1',line=14)],line=14) into callee frame
444 : LD   1, 3(5) ;  Load parameter 'count' into R1
445 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='count',line=14) into callee frame
446 : LDA 6, 2(7) ;  Compute return address
447 : ST 6, 0(3) ;  Store return address in callee frame
448 : ADD  5, 3, 0 ;  Update pointer
449 : LDA 7, 395(0) ;  Call circularPrimesToHelper
450 : LD 1, 4(5) ;  Load callee return value into R1
451 : LDC  4, 5(0) ;  Load frame size
452 : SUB  5, 5, 4 ;  Restore pointer
453 : LDA  7, 455(0) ;  Skip ELSE block
454 : LD   1, 3(5) ;  Load parameter 'count' into R1
455 : ST   1, 4(5) ;  Store function result into stack frame
456 : LD   6, 0(5) ;  Load return address
457 : LDA  7, 0(6) ;  Return to caller
458 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
459 : LD   1, 1(5) ;  Load parameter 'x' into R1
460 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
461 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
462 : ADD  1, 2, 1 ;  R1 = left + right
463 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7) into callee frame
464 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
465 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=7) into callee frame
466 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
467 : ST 1, 3(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7) into callee frame
468 : LDA 6, 2(7) ;  Compute return address
469 : ST 6, 0(3) ;  Store return address in callee frame
470 : ADD  5, 3, 0 ;  Update pointer
471 : LDA 7, 395(0) ;  Call circularPrimesToHelper
472 : LD 1, 4(5) ;  Load callee return value into R1
473 : LDC  4, 3(0) ;  Load frame size
474 : SUB  5, 5, 4 ;  Restore pointer
475 : ST   1, 2(5) ;  Store function result into stack frame
476 : LD   6, 0(5) ;  Load return address
477 : LDA  7, 0(6) ;  Return to caller
