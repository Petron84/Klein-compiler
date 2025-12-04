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
11 : LD   1, 1(5) ;  Load parameter 'x' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=4)
13 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'circularPrimesTo'
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address in frame
16 : LDA  7, 412(0) ;  Call circularPrimesTo
17 : LD   1, 2(5) ;  Load return value into R1
18 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
19 : ST   1, 4(0) ;  Store function-call result into caller's return slot
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
34 : LD   1, 1(5) ;  Load parameter 'num' into R1
35 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
36 : LD   1, 2(5) ;  Load parameter 'den' into R1
37 : SUB  1, 2, 1 ;  R1 = left - right
38 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=75), Tree Node('IDENTIFIER', value='den',line=75)],line=75)
39 : LD   1, 2(5) ;  Load parameter 'den' into R1
40 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='den',line=75)
41 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'mod'
42 : LDA  6, 2(7) ;  Compute return address
43 : ST   6, 0(5) ;  Store return address in frame
44 : LDA  7, 23(0) ;  Call mod
45 : LD   1, 3(5) ;  Load return value into R1
46 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
47 : ST   1, 3(5) ;  Store function result into stack frame
48 : LD   6, 0(5) ;  Load return address
49 : LDA  7, 0(6) ;  Return to caller
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=69)
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=69)
54 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'mod'
55 : LDA  6, 2(7) ;  Compute return address
56 : ST   6, 0(5) ;  Store return address in frame
57 : LDA  7, 23(0) ;  Call mod
58 : LD   1, 3(5) ;  Load return value into R1
59 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
79 : LD   1, 1(5) ;  Load parameter 'i' into R1
80 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='i',line=64)
81 : LD   1, 2(5) ;  Load parameter 'n' into R1
82 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64)
83 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'divides'
84 : LDA  6, 2(7) ;  Compute return address
85 : ST   6, 0(5) ;  Store return address in frame
86 : LDA  7, 50(0) ;  Call divides
87 : LD   1, 3(5) ;  Load return value into R1
88 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LD   1, 1(5) ;  Load parameter 'i' into R1
91 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
92 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
93 : ADD  1, 2, 1 ;  R1 = left + right
94 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=64), Tree Node('INTEGER-LITERAL', value='1',line=64)],line=64)
95 : LD   1, 2(5) ;  Load parameter 'n' into R1
96 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=64)
97 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'hasDivisorFrom'
98 : LDA  6, 2(7) ;  Compute return address
99 : ST   6, 0(5) ;  Store return address in frame
100 : LDA  7, 70(0) ;  Call hasDivisorFrom
101 : LD   1, 3(5) ;  Load return value into R1
102 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
103 : ADD  1, 2, 1 ;  R1 = left OR right
104 : LDA  7, 106(0) ;  Skip ELSE block
105 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
106 : ST   1, 3(5) ;  Store function result into stack frame
107 : LD   6, 0(5) ;  Load return address
108 : LDA  7, 0(6) ;  Return to caller
109 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
110 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=60)
111 : LD   1, 1(5) ;  Load parameter 'n' into R1
112 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=60)
113 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'hasDivisorFrom'
114 : LDA  6, 2(7) ;  Compute return address
115 : ST   6, 0(5) ;  Store return address in frame
116 : LDA  7, 70(0) ;  Call hasDivisorFrom
117 : LD   1, 3(5) ;  Load return value into R1
118 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
138 : LD   1, 1(5) ;  Load parameter 'x' into R1
139 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
140 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
141 : DIV  1, 2, 1 ;  R1 = left / right
142 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='x',line=55), Tree Node('INTEGER-LITERAL', value='10',line=55)],line=55)
143 : LD   1, 2(5) ;  Load parameter 'y' into R1
144 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
145 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
146 : ADD  1, 2, 1 ;  R1 = left + right
147 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='y',line=55), Tree Node('INTEGER-LITERAL', value='1',line=55)],line=55)
148 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'log10Helper'
149 : LDA  6, 2(7) ;  Compute return address
150 : ST   6, 0(5) ;  Store return address in frame
151 : LDA  7, 124(0) ;  Call log10Helper
152 : LD   1, 3(5) ;  Load return value into R1
153 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
154 : ST   1, 3(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LD   1, 1(5) ;  Load parameter 'x' into R1
158 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=49)
159 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
160 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=49)
161 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'log10Helper'
162 : LDA  6, 2(7) ;  Compute return address
163 : ST   6, 0(5) ;  Store return address in frame
164 : LDA  7, 124(0) ;  Call log10Helper
165 : LD   1, 3(5) ;  Load return value into R1
166 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
192 : LD   1, 1(5) ;  Load parameter 'base' into R1
193 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='base',line=46)
194 : LD   1, 2(5) ;  Load parameter 'power' into R1
195 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
196 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
197 : SUB  1, 2, 1 ;  R1 = left - right
198 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='power',line=46), Tree Node('INTEGER-LITERAL', value='1',line=46)],line=46)
199 : LD   1, 1(5) ;  Load parameter 'base' into R1
200 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
201 : LD   1, 3(5) ;  Load parameter 'total' into R1
202 : MUL  1, 2, 1 ;  R1 = left * right
203 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='base',line=46), Tree Node('IDENTIFIER', value='total',line=46)],line=46)
204 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'powHelper'
205 : LDA  6, 2(7) ;  Compute return address
206 : ST   6, 0(5) ;  Store return address in frame
207 : LDA  7, 170(0) ;  Call powHelper
208 : LD   1, 4(5) ;  Load return value into R1
209 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
210 : ST   1, 4(5) ;  Store function result into stack frame
211 : LD   6, 0(5) ;  Load return address
212 : LDA  7, 0(6) ;  Return to caller
213 : LD   1, 1(5) ;  Load parameter 'x' into R1
214 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38)
215 : LD   1, 2(5) ;  Load parameter 'y' into R1
216 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='y',line=38)
217 : LD   1, 1(5) ;  Load parameter 'x' into R1
218 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=38)
219 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'powHelper'
220 : LDA  6, 2(7) ;  Compute return address
221 : ST   6, 0(5) ;  Store return address in frame
222 : LDA  7, 170(0) ;  Call powHelper
223 : LD   1, 4(5) ;  Load return value into R1
224 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
225 : ST   1, 3(5) ;  Store function result into stack frame
226 : LD   6, 0(5) ;  Load return address
227 : LDA  7, 0(6) ;  Return to caller
228 : LD   1, 1(5) ;  Load parameter 'x' into R1
229 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
230 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
231 : DIV  1, 2, 1 ;  R1 = left / right
232 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
233 : LD   1, 1(5) ;  Load parameter 'x' into R1
234 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35)
235 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
236 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35)
237 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'mod'
238 : LDA  6, 2(7) ;  Compute return address
239 : ST   6, 0(5) ;  Store return address in frame
240 : LDA  7, 23(0) ;  Call mod
241 : LD   1, 3(5) ;  Load return value into R1
242 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
243 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
244 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
245 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=35)
246 : LD   1, 1(5) ;  Load parameter 'x' into R1
247 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=35)
248 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'log10'
249 : LDA  6, 2(7) ;  Compute return address
250 : ST   6, 0(5) ;  Store return address in frame
251 : LDA  7, 157(0) ;  Call log10
252 : LD   1, 2(5) ;  Load return value into R1
253 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
254 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=35), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=35)],line=35)],line=35)
255 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'pow'
256 : LDA  6, 2(7) ;  Compute return address
257 : ST   6, 0(5) ;  Store return address in frame
258 : LDA  7, 213(0) ;  Call pow
259 : LD   1, 3(5) ;  Load return value into R1
260 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
261 : MUL  1, 2, 1 ;  R1 = left * right
262 : ADD  1, 2, 1 ;  R1 = left + right
263 : ST   1, 2(5) ;  Store function result into stack frame
264 : LD   6, 0(5) ;  Load return address
265 : LDA  7, 0(6) ;  Return to caller
266 : LD   1, 1(5) ;  Load parameter 'x' into R1
267 : LDC  5, 2(0) ;  Update DMEM pointer
268 : LDA  6, 2(7) ;  Compute return address
269 : ST   6, 0(5) ;  Store return address
270 : LDA  7, 8(0) ; Call print
271 : LDC  5, 2(0) ;  Move pointer to previous stack frame
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
288 : LD   1, 1(5) ;  Load parameter 'x' into R1
289 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28)
290 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isPrime'
291 : LDA  6, 2(7) ;  Compute return address
292 : ST   6, 0(5) ;  Store return address in frame
293 : LDA  7, 109(0) ;  Call isPrime
294 : LD   1, 2(5) ;  Load return value into R1
295 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
296 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
297 : LD   1, 1(5) ;  Load parameter 'x' into R1
298 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=28)
299 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'rotate'
300 : LDA  6, 2(7) ;  Compute return address
301 : ST   6, 0(5) ;  Store return address in frame
302 : LDA  7, 228(0) ;  Call rotate
303 : LD   1, 2(5) ;  Load return value into R1
304 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
305 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='rotate',line=28), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=28)],line=28)],line=28)
306 : LD   1, 2(5) ;  Load parameter 'turns' into R1
307 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
308 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
309 : SUB  1, 2, 1 ;  R1 = left - right
310 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='turns',line=28), Tree Node('INTEGER-LITERAL', value='1',line=28)],line=28)
311 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isCircularPrimeHelper'
312 : LDA  6, 2(7) ;  Compute return address
313 : ST   6, 0(5) ;  Store return address in frame
314 : LDA  7, 277(0) ;  Call isCircularPrimeHelper
315 : LD   1, 3(5) ;  Load return value into R1
316 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
317 : MUL  1, 2, 1 ;  R1 = left AND right
318 : ST   1, 3(5) ;  Store function result into stack frame
319 : LD   6, 0(5) ;  Load return address
320 : LDA  7, 0(6) ;  Return to caller
321 : LD   1, 1(5) ;  Load parameter 'x' into R1
322 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19)
323 : LD   1, 1(5) ;  Load parameter 'x' into R1
324 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=19)
325 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'log10'
326 : LDA  6, 2(7) ;  Compute return address
327 : ST   6, 0(5) ;  Store return address in frame
328 : LDA  7, 157(0) ;  Call log10
329 : LD   1, 2(5) ;  Load return value into R1
330 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
331 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
332 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
333 : ADD  1, 2, 1 ;  R1 = left + right
334 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='log10',line=19), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='x',line=19)],line=19)],line=19), Tree Node('INTEGER-LITERAL', value='1',line=19)],line=19)
335 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isCircularPrimeHelper'
336 : LDA  6, 2(7) ;  Compute return address
337 : ST   6, 0(5) ;  Store return address in frame
338 : LDA  7, 277(0) ;  Call isCircularPrimeHelper
339 : LD   1, 3(5) ;  Load return value into R1
340 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
341 : JEQ  1, 351(0) ;  If condition is false, jump to ELSE
342 : LD   1, 1(5) ;  Load parameter 'x' into R1
343 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=20)
344 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'report'
345 : LDA  6, 2(7) ;  Compute return address
346 : ST   6, 0(5) ;  Store return address in frame
347 : LDA  7, 266(0) ;  Call report
348 : LD   1, 2(5) ;  Load return value into R1
349 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
364 : LD   1, 2(5) ;  Load parameter 'x' into R1
365 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='x',line=11)
366 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isCircularPrime'
367 : LDA  6, 2(7) ;  Compute return address
368 : ST   6, 0(5) ;  Store return address in frame
369 : LDA  7, 321(0) ;  Call isCircularPrime
370 : LD   1, 2(5) ;  Load return value into R1
371 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
372 : JEQ  1, 392(0) ;  If condition is false, jump to ELSE
373 : LD   1, 1(5) ;  Load parameter 'top' into R1
374 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='top',line=12)
375 : LD   1, 2(5) ;  Load parameter 'x' into R1
376 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
377 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
378 : ADD  1, 2, 1 ;  R1 = left + right
379 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12)
380 : LD   1, 3(5) ;  Load parameter 'count' into R1
381 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
382 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
383 : ADD  1, 2, 1 ;  R1 = left + right
384 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='count',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12)
385 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'circularPrimesToHelper'
386 : LDA  6, 2(7) ;  Compute return address
387 : ST   6, 0(5) ;  Store return address in frame
388 : LDA  7, 355(0) ;  Call circularPrimesToHelper
389 : LD   1, 4(5) ;  Load return value into R1
390 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
391 : LDA  7, 407(0) ;  Skip ELSE block
392 : LD   1, 1(5) ;  Load parameter 'top' into R1
393 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='top',line=14)
394 : LD   1, 2(5) ;  Load parameter 'x' into R1
395 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
396 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
397 : ADD  1, 2, 1 ;  R1 = left + right
398 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=14), Tree Node('INTEGER-LITERAL', value='1',line=14)],line=14)
399 : LD   1, 3(5) ;  Load parameter 'count' into R1
400 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='count',line=14)
401 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'circularPrimesToHelper'
402 : LDA  6, 2(7) ;  Compute return address
403 : ST   6, 0(5) ;  Store return address in frame
404 : LDA  7, 355(0) ;  Call circularPrimesToHelper
405 : LD   1, 4(5) ;  Load return value into R1
406 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
407 : LDA  7, 409(0) ;  Skip ELSE block
408 : LD   1, 3(5) ;  Load parameter 'count' into R1
409 : ST   1, 4(5) ;  Store function result into stack frame
410 : LD   6, 0(5) ;  Load return address
411 : LDA  7, 0(6) ;  Return to caller
412 : LD   1, 1(5) ;  Load parameter 'x' into R1
413 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
414 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
415 : ADD  1, 2, 1 ;  R1 = left + right
416 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='x',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7)
417 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
418 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=7)
419 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
420 : ST   1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=7)
421 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'circularPrimesToHelper'
422 : LDA  6, 2(7) ;  Compute return address
423 : ST   6, 0(5) ;  Store return address in frame
424 : LDA  7, 355(0) ;  Call circularPrimesToHelper
425 : LD   1, 4(5) ;  Load return value into R1
426 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
427 : ST   1, 2(5) ;  Store function result into stack frame
428 : LD   6, 0(5) ;  Load return address
429 : LDA  7, 0(6) ;  Return to caller
