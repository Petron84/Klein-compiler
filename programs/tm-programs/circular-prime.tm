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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'circularPrimesTo'
12 : LD   1, 1(5) ;  Load parameter 'x' into R1
13 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=4) into callee frame
14 : LDA 6, 2(7) ;  Compute return address
15 : ST 6, 0(5) ;  Store return address in callee frame
16 : LDA 7, 412(0) ;  Call circularPrimesTo
17 : LD 1, 2(5) ;  Load callee return value into R1
18 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
19 : ST 1, 4(0) ;  Store function-call result into caller's return slot
20 : LD   1, 4(0) ;  Load return value into register 1
21 : LD  6, 2(0) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
23 : LD   1, 1(5) ;  Load parameter 'num' into R1
24 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
25 : LD   1, 2(5) ;  Load parameter 'den' into R1
26 : SUB  1, 2, 1 ;  left - right for less-than check
27 : JLT  1, 2(7) ;  If R1 < 0, jump to true
28 : LDC  1, 0(0) ;  false
29 : LDA  7, 1(7) ;  skip setting true
30 : LDC  1, 1(0) ;  true
31 : JEQ  1, 34(0) ;  If condition is false, jump to ELSE
32 : LD   1, 1(5) ;  Load parameter 'num' into R1
33 : LDA  7, 47(0) ;  Skip ELSE block
34 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
35 : LD   1, 1(5) ;  Load parameter 'num' into R1
36 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
37 : LD   1, 2(5) ;  Load parameter 'den' into R1
38 : SUB  1, 2, 1 ;  R1 = left - right
39 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=75), Tree Node('IDENTIFIER', value='den',line=75)],line=75) into callee frame
40 : LD   1, 2(5) ;  Load parameter 'den' into R1
41 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='den',line=75) into callee frame
42 : LDA 6, 2(7) ;  Compute return address
43 : ST 6, 0(5) ;  Store return address in callee frame
44 : LDA 7, 23(0) ;  Call mod
45 : LD 1, 3(5) ;  Load callee return value into R1
46 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
47 : ST   1, 3(5) ;  Store function result into stack frame
48 : LD   6, 0(5) ;  Load return address
49 : LDA  7, 0(6) ;  Return to caller
50 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'mod'
51 : LD   1, 2(5) ;  Load parameter 'b' into R1
52 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=69) into callee frame
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=69) into callee frame
55 : LDA 6, 2(7) ;  Compute return address
56 : ST 6, 0(5) ;  Store return address in callee frame
57 : LDA 7, 23(0) ;  Call mod
58 : LD 1, 3(5) ;  Load callee return value into R1
59 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : ST   1, 3(5) ;  Store function result into stack frame
68 : LD   6, 0(5) ;  Load return address
69 : LDA  7, 0(6) ;  Return to caller
70 : LD   1, 1(5) ;  Load parameter 'i' into R1
71 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
72 : LD   1, 2(5) ;  Load parameter 'n' into R1
73 : SUB  1, 2, 1 ;  left - right for less-than check
74 : JLT  1, 2(7) ;  If R1 < 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : JEQ  1, 105(0) ;  If condition is false, jump to ELSE
79 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
80 : LD   1, 1(5) ;  Load parameter 'i' into R1
81 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='i',line=64) into callee frame
82 : LD   1, 2(5) ;  Load parameter 'n' into R1
83 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64) into callee frame
84 : LDA 6, 2(7) ;  Compute return address
85 : ST 6, 0(5) ;  Store return address in callee frame
86 : LDA 7, 50(0) ;  Call divides
87 : LD 1, 3(5) ;  Load callee return value into R1
88 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
91 : LD   1, 1(5) ;  Load parameter 'i' into R1
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
94 : ADD  1, 2, 1 ;  R1 = left + right
95 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=64), Tree Node('INTEGER-LITERAL', value='1',line=64)],line=64) into callee frame
96 : LD   1, 2(5) ;  Load parameter 'n' into R1
97 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64) into callee frame
98 : LDA 6, 2(7) ;  Compute return address
99 : ST 6, 0(5) ;  Store return address in callee frame
100 : LDA 7, 70(0) ;  Call hasDivisorFrom
101 : LD 1, 3(5) ;  Load callee return value into R1
102 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
103 : ADD  1, 2, 1 ;  R1 = left OR right
104 : LDA  7, 106(0) ;  Skip ELSE block
105 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
106 : ST   1, 3(5) ;  Store function result into stack frame
107 : LD   6, 0(5) ;  Load return address
108 : LDA  7, 0(6) ;  Return to caller
109 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
110 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
111 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=60) into callee frame
112 : LD   1, 1(5) ;  Load parameter 'n' into R1
113 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=60) into callee frame
114 : LDA 6, 2(7) ;  Compute return address
115 : ST 6, 0(5) ;  Store return address in callee frame
116 : LDA 7, 70(0) ;  Call hasDivisorFrom
117 : LD 1, 3(5) ;  Load callee return value into R1
118 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
119 : LDC  2, 1(0) ;  Load 1 into R2
120 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
121 : ST   1, 2(5) ;  Store function result into stack frame
122 : LD   6, 0(5) ;  Load return address
123 : LDA  7, 0(6) ;  Return to caller
124 : LD   1, 1(5) ;  Load parameter 'x' into R1
125 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
126 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
127 : DIV  1, 2, 1 ;  R1 = left / right
128 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
129 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
130 : SUB  1, 2, 1 ;  left - right for equality check
131 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
132 : LDC  1, 0(0) ;  false
133 : LDA  7, 1(7) ;  skip setting true
134 : LDC  1, 1(0) ;  true
135 : JEQ  1, 138(0) ;  If condition is false, jump to ELSE
136 : LD   1, 2(5) ;  Load parameter 'y' into R1
137 : LDA  7, 154(0) ;  Skip ELSE block
138 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'log10Helper'
139 : LD   1, 1(5) ;  Load parameter 'x' into R1
140 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
141 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
142 : DIV  1, 2, 1 ;  R1 = left / right
143 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='x',line=55), Tree Node('INTEGER-LITERAL', value='10',line=55)],line=55) into callee frame
144 : LD   1, 2(5) ;  Load parameter 'y' into R1
145 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
146 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
147 : ADD  1, 2, 1 ;  R1 = left + right
148 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='y',line=55), Tree Node('INTEGER-LITERAL', value='1',line=55)],line=55) into callee frame
149 : LDA 6, 2(7) ;  Compute return address
150 : ST 6, 0(5) ;  Store return address in callee frame
151 : LDA 7, 124(0) ;  Call log10Helper
152 : LD 1, 3(5) ;  Load callee return value into R1
153 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
154 : ST   1, 3(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'log10Helper'
158 : LD   1, 1(5) ;  Load parameter 'x' into R1
159 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=49) into callee frame
160 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
161 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=49) into callee frame
162 : LDA 6, 2(7) ;  Compute return address
163 : ST 6, 0(5) ;  Store return address in callee frame
164 : LDA 7, 124(0) ;  Call log10Helper
165 : LD 1, 3(5) ;  Load callee return value into R1
166 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
167 : ST   1, 2(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
170 : LD   1, 2(5) ;  Load parameter 'power' into R1
171 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
172 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
173 : SUB  1, 2, 1 ;  left - right for equality check
174 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
175 : LDC  1, 0(0) ;  false
176 : LDA  7, 1(7) ;  skip setting true
177 : LDC  1, 1(0) ;  true
178 : JEQ  1, 181(0) ;  If condition is false, jump to ELSE
179 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
180 : LDA  7, 210(0) ;  Skip ELSE block
181 : LD   1, 2(5) ;  Load parameter 'power' into R1
182 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
183 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
184 : SUB  1, 2, 1 ;  left - right for equality check
185 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
186 : LDC  1, 0(0) ;  false
187 : LDA  7, 1(7) ;  skip setting true
188 : LDC  1, 1(0) ;  true
189 : JEQ  1, 192(0) ;  If condition is false, jump to ELSE
190 : LD   1, 3(5) ;  Load parameter 'total' into R1
191 : LDA  7, 210(0) ;  Skip ELSE block
192 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'powHelper'
193 : LD   1, 1(5) ;  Load parameter 'base' into R1
194 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='base',line=46) into callee frame
195 : LD   1, 2(5) ;  Load parameter 'power' into R1
196 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
197 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
198 : SUB  1, 2, 1 ;  R1 = left - right
199 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='power',line=46), Tree Node('INTEGER-LITERAL', value='1',line=46)],line=46) into callee frame
200 : LD   1, 1(5) ;  Load parameter 'base' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LD   1, 3(5) ;  Load parameter 'total' into R1
203 : MUL  1, 2, 1 ;  R1 = left * right
204 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='base',line=46), Tree Node('IDENTIFIER', value='total',line=46)],line=46) into callee frame
205 : LDA 6, 2(7) ;  Compute return address
206 : ST 6, 0(5) ;  Store return address in callee frame
207 : LDA 7, 170(0) ;  Call powHelper
208 : LD 1, 4(5) ;  Load callee return value into R1
209 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
210 : ST   1, 4(5) ;  Store function result into stack frame
211 : LD   6, 0(5) ;  Load return address
212 : LDA  7, 0(6) ;  Return to caller
213 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'powHelper'
214 : LD   1, 1(5) ;  Load parameter 'x' into R1
215 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38) into callee frame
216 : LD   1, 2(5) ;  Load parameter 'y' into R1
217 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='y',line=38) into callee frame
218 : LD   1, 1(5) ;  Load parameter 'x' into R1
219 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38) into callee frame
220 : LDA 6, 2(7) ;  Compute return address
221 : ST 6, 0(5) ;  Store return address in callee frame
222 : LDA 7, 170(0) ;  Call powHelper
223 : LD 1, 4(5) ;  Load callee return value into R1
224 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
225 : ST   1, 3(5) ;  Store function result into stack frame
226 : LD   6, 0(5) ;  Load return address
227 : LDA  7, 0(6) ;  Return to caller
228 : LD   1, 1(5) ;  Load parameter 'x' into R1
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
231 : DIV  1, 2, 1 ;  R1 = left / right
232 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
233 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'mod'
234 : LD   1, 1(5) ;  Load parameter 'x' into R1
235 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35) into callee frame
236 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
237 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35) into callee frame
238 : LDA 6, 2(7) ;  Compute return address
239 : ST 6, 0(5) ;  Store return address in callee frame
240 : LDA 7, 23(0) ;  Call mod
241 : LD 1, 3(5) ;  Load callee return value into R1
242 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
243 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
244 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'pow'
245 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
246 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35) into callee frame
247 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'log10'
248 : LD   1, 1(5) ;  Load parameter 'x' into R1
249 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35) into callee frame
250 : LDA 6, 2(7) ;  Compute return address
251 : ST 6, 0(5) ;  Store return address in callee frame
252 : LDA 7, 157(0) ;  Call log10
253 : LD 1, 2(5) ;  Load callee return value into R1
254 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
255 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=35), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=35)],line=35)],line=35) into callee frame
256 : LDA 6, 2(7) ;  Compute return address
257 : ST 6, 0(5) ;  Store return address in callee frame
258 : LDA 7, 213(0) ;  Call pow
259 : LD 1, 3(5) ;  Load callee return value into R1
260 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
261 : MUL  1, 2, 1 ;  R1 = left * right
262 : ADD  1, 2, 1 ;  R1 = left + right
263 : ST   1, 2(5) ;  Store function result into stack frame
264 : LD   6, 0(5) ;  Load return address
265 : LDA  7, 0(6) ;  Return to caller
266 : LD   1, 1(5) ;  Load parameter 'x' into R1
267 : LDA  5, 3(5) ;  Update DMEM pointer
268 : LDA  6, 2(7) ;  Compute return address
269 : ST   6, 0(5) ;  Store return address
270 : LDA  7, 8(0) ; Call print
271 : LDC  5, -3(5) ;  Move pointer to previous stack frame
272 : ST   1, 2(5) ;  Store function result into stack frame
273 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
274 : ST   1, 2(5) ;  Store function result into stack frame
275 : LD   6, 0(5) ;  Load return address
276 : LDA  7, 0(6) ;  Return to caller
277 : LD   1, 2(5) ;  Load parameter 'turns' into R1
278 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
279 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
280 : SUB  1, 2, 1 ;  left - right for equality check
281 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
282 : LDC  1, 0(0) ;  false
283 : LDA  7, 1(7) ;  skip setting true
284 : LDC  1, 1(0) ;  true
285 : JEQ  1, 288(0) ;  If condition is false, jump to ELSE
286 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
287 : LDA  7, 318(0) ;  Skip ELSE block
288 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
289 : LD   1, 1(5) ;  Load parameter 'x' into R1
290 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28) into callee frame
291 : LDA 6, 2(7) ;  Compute return address
292 : ST 6, 0(5) ;  Store return address in callee frame
293 : LDA 7, 109(0) ;  Call isPrime
294 : LD 1, 2(5) ;  Load callee return value into R1
295 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
296 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
297 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'isCircularPrimeHelper'
298 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'rotate'
299 : LD   1, 1(5) ;  Load parameter 'x' into R1
300 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28) into callee frame
301 : LDA 6, 2(7) ;  Compute return address
302 : ST 6, 0(5) ;  Store return address in callee frame
303 : LDA 7, 228(0) ;  Call rotate
304 : LD 1, 2(5) ;  Load callee return value into R1
305 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
306 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='rotate',line=28), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=28)],line=28)],line=28) into callee frame
307 : LD   1, 2(5) ;  Load parameter 'turns' into R1
308 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
309 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
310 : SUB  1, 2, 1 ;  R1 = left - right
311 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='turns',line=28), Tree Node('INTEGER-LITERAL', value='1',line=28)],line=28) into callee frame
312 : LDA 6, 2(7) ;  Compute return address
313 : ST 6, 0(5) ;  Store return address in callee frame
314 : LDA 7, 277(0) ;  Call isCircularPrimeHelper
315 : LD 1, 3(5) ;  Load callee return value into R1
316 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
317 : MUL  1, 2, 1 ;  R1 = left AND right
318 : ST   1, 3(5) ;  Store function result into stack frame
319 : LD   6, 0(5) ;  Load return address
320 : LDA  7, 0(6) ;  Return to caller
321 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'isCircularPrimeHelper'
322 : LD   1, 1(5) ;  Load parameter 'x' into R1
323 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19) into callee frame
324 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'log10'
325 : LD   1, 1(5) ;  Load parameter 'x' into R1
326 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19) into callee frame
327 : LDA 6, 2(7) ;  Compute return address
328 : ST 6, 0(5) ;  Store return address in callee frame
329 : LDA 7, 157(0) ;  Call log10
330 : LD 1, 2(5) ;  Load callee return value into R1
331 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
332 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
333 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
334 : ADD  1, 2, 1 ;  R1 = left + right
335 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=19), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=19)],line=19)],line=19), Tree Node('INTEGER-LITERAL', value='1',line=19)],line=19) into callee frame
336 : LDA 6, 2(7) ;  Compute return address
337 : ST 6, 0(5) ;  Store return address in callee frame
338 : LDA 7, 277(0) ;  Call isCircularPrimeHelper
339 : LD 1, 3(5) ;  Load callee return value into R1
340 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
341 : JEQ  1, 351(0) ;  If condition is false, jump to ELSE
342 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'report'
343 : LD   1, 1(5) ;  Load parameter 'x' into R1
344 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=20) into callee frame
345 : LDA 6, 2(7) ;  Compute return address
346 : ST 6, 0(5) ;  Store return address in callee frame
347 : LDA 7, 266(0) ;  Call report
348 : LD 1, 2(5) ;  Load callee return value into R1
349 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
350 : LDA  7, 352(0) ;  Skip ELSE block
351 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
352 : ST   1, 2(5) ;  Store function result into stack frame
353 : LD   6, 0(5) ;  Load return address
354 : LDA  7, 0(6) ;  Return to caller
355 : LD   1, 2(5) ;  Load parameter 'x' into R1
356 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
357 : LD   1, 1(5) ;  Load parameter 'top' into R1
358 : SUB  1, 2, 1 ;  left - right for less-than check
359 : JLT  1, 2(7) ;  If R1 < 0, jump to true
360 : LDC  1, 0(0) ;  false
361 : LDA  7, 1(7) ;  skip setting true
362 : LDC  1, 1(0) ;  true
363 : JEQ  1, 408(0) ;  If condition is false, jump to ELSE
364 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'isCircularPrime'
365 : LD   1, 2(5) ;  Load parameter 'x' into R1
366 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=11) into callee frame
367 : LDA 6, 2(7) ;  Compute return address
368 : ST 6, 0(5) ;  Store return address in callee frame
369 : LDA 7, 321(0) ;  Call isCircularPrime
370 : LD 1, 2(5) ;  Load callee return value into R1
371 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
372 : JEQ  1, 392(0) ;  If condition is false, jump to ELSE
373 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
374 : LD   1, 1(5) ;  Load parameter 'top' into R1
375 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='top',line=12) into callee frame
376 : LD   1, 2(5) ;  Load parameter 'x' into R1
377 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
378 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
379 : ADD  1, 2, 1 ;  R1 = left + right
380 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12) into callee frame
381 : LD   1, 3(5) ;  Load parameter 'count' into R1
382 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
383 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
384 : ADD  1, 2, 1 ;  R1 = left + right
385 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='count',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12) into callee frame
386 : LDA 6, 2(7) ;  Compute return address
387 : ST 6, 0(5) ;  Store return address in callee frame
388 : LDA 7, 355(0) ;  Call circularPrimesToHelper
389 : LD 1, 4(5) ;  Load callee return value into R1
390 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
391 : LDA  7, 407(0) ;  Skip ELSE block
392 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
393 : LD   1, 1(5) ;  Load parameter 'top' into R1
394 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='top',line=14) into callee frame
395 : LD   1, 2(5) ;  Load parameter 'x' into R1
396 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
397 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
398 : ADD  1, 2, 1 ;  R1 = left + right
399 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=14), Tree Node('INTEGER-LITERAL', value='1',line=14)],line=14) into callee frame
400 : LD   1, 3(5) ;  Load parameter 'count' into R1
401 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='count',line=14) into callee frame
402 : LDA 6, 2(7) ;  Compute return address
403 : ST 6, 0(5) ;  Store return address in callee frame
404 : LDA 7, 355(0) ;  Call circularPrimesToHelper
405 : LD 1, 4(5) ;  Load callee return value into R1
406 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
407 : LDA  7, 409(0) ;  Skip ELSE block
408 : LD   1, 3(5) ;  Load parameter 'count' into R1
409 : ST   1, 4(5) ;  Store function result into stack frame
410 : LD   6, 0(5) ;  Load return address
411 : LDA  7, 0(6) ;  Return to caller
412 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'circularPrimesToHelper'
413 : LD   1, 1(5) ;  Load parameter 'x' into R1
414 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
415 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
416 : ADD  1, 2, 1 ;  R1 = left + right
417 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7) into callee frame
418 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
419 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=7) into callee frame
420 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
421 : ST 1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7) into callee frame
422 : LDA 6, 2(7) ;  Compute return address
423 : ST 6, 0(5) ;  Store return address in callee frame
424 : LDA 7, 355(0) ;  Call circularPrimesToHelper
425 : LD 1, 4(5) ;  Load callee return value into R1
426 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
427 : ST   1, 2(5) ;  Store function result into stack frame
428 : LD   6, 0(5) ;  Load return address
429 : LDA  7, 0(6) ;  Return to caller
