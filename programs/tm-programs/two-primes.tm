0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 2(5) ;  Load parameter 'selector' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 34(0) ;  If condition is false, jump to ELSE
22 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'emirp'
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19) into callee frame
25 : LDA 6, 29(7) ;  Compute return address
26 : ST 6, 0(3) ;  Store return address in callee frame
27 : ADD  5, 3, 0 ;  Update pointer
28 : LDA 7, 307(0) ;  Call emirp
29 : LD 1, 2(5) ;  Load callee return value into R1
30 : LDC  4, 4(0) ;  Load frame size
31 : SUB  5, 5, 4 ;  Restore pointer
32 : ST 1, 6(0) ;  Store function-call result into caller's return slot
33 : LDA  7, 78(0) ;  Skip ELSE block
34 : LD   1, 2(5) ;  Load parameter 'selector' into R1
35 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
36 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
37 : SUB  1, 2, 1 ;  left - right for equality check
38 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
39 : LDC  1, 0(0) ;  false
40 : LDA  7, 1(7) ;  skip setting true
41 : LDC  1, 1(0) ;  true
42 : JEQ  1, 55(0) ;  If condition is false, jump to ELSE
43 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'snowball'
44 : LD   1, 1(5) ;  Load parameter 'n' into R1
45 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=21) into callee frame
46 : LDA 6, 50(7) ;  Compute return address
47 : ST 6, 0(3) ;  Store return address in callee frame
48 : ADD  5, 3, 0 ;  Update pointer
49 : LDA 7, 268(0) ;  Call snowball
50 : LD 1, 2(5) ;  Load callee return value into R1
51 : LDC  4, 4(0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST 1, 6(0) ;  Store function-call result into caller's return slot
54 : LDA  7, 78(0) ;  Skip ELSE block
55 : LD   1, 2(5) ;  Load parameter 'selector' into R1
56 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
57 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
58 : SUB  1, 2, 1 ;  left - right for equality check
59 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
60 : LDC  1, 0(0) ;  false
61 : LDA  7, 1(7) ;  skip setting true
62 : LDC  1, 1(0) ;  true
63 : JEQ  1, 76(0) ;  If condition is false, jump to ELSE
64 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'doBoth'
65 : LD   1, 1(5) ;  Load parameter 'n' into R1
66 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23) into callee frame
67 : LDA 6, 71(7) ;  Compute return address
68 : ST 6, 0(3) ;  Store return address in callee frame
69 : ADD  5, 3, 0 ;  Update pointer
70 : LDA 7, 237(0) ;  Call doBoth
71 : LD 1, 2(5) ;  Load callee return value into R1
72 : LDC  4, 4(0) ;  Load frame size
73 : SUB  5, 5, 4 ;  Restore pointer
74 : ST 1, 6(0) ;  Store function-call result into caller's return slot
75 : LDA  7, 78(0) ;  Skip ELSE block
76 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
77 : ST   1, 6(0) ;  Store value into return value in stack frame
78 : LD   1, 6(0) ;  Load return value into register 1
79 : LD  6, 3(0) ;  Load return address for main function into register 6
80 : LDA  7, 0(6) ;  Jump to return address of main function
81 : LD   1, 1(5) ;  Load parameter 'm' into R1
82 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
83 : LD   1, 1(5) ;  Load parameter 'm' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LD   1, 2(5) ;  Load parameter 'n' into R1
86 : DIV  1, 2, 1 ;  R1 = left / right
87 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : SUB  1, 2, 1 ;  R1 = left - right
91 : ST   1, 3(5) ;  Store function result into stack frame
92 : LD   6, 0(5) ;  Load return address
93 : LDA  7, 0(6) ;  Return to caller
94 : LD   1, 1(5) ;  Load parameter 'n' into R1
95 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
96 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
97 : SUB  1, 2, 1 ;  left - right for equality check
98 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
99 : LDC  1, 0(0) ;  false
100 : LDA  7, 1(7) ;  skip setting true
101 : LDC  1, 1(0) ;  true
102 : JEQ  1, 105(0) ;  If condition is false, jump to ELSE
103 : LD   1, 2(5) ;  Load parameter 'nR' into R1
104 : LDA  7, 137(0) ;  Skip ELSE block
105 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'reverseL'
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
108 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
109 : DIV  1, 2, 1 ;  R1 = left / right
110 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=48), Tree Node('INTEGER-LITERAL', value='10',line=48)],line=48) into callee frame
111 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
113 : LD   1, 2(5) ;  Load parameter 'nR' into R1
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
116 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=48) into callee frame
119 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
120 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=48) into callee frame
121 : LDA 6, 125(7) ;  Compute return address
122 : ST 6, 0(3) ;  Store return address in callee frame
123 : ADD  5, 3, 0 ;  Update pointer
124 : LDA 7, 81(0) ;  Call MOD
125 : LD 1, 3(5) ;  Load callee return value into R1
126 : LDC  4, 4(0) ;  Load frame size
127 : SUB  5, 5, 4 ;  Restore pointer
128 : ADD  1, 2, 1 ;  R1 = left + right
129 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='10',line=48), Tree Node('IDENTIFIER', value='nR',line=48)],line=48), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=48), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=48), Tree Node('INTEGER-LITERAL', value='10',line=48)],line=48)],line=48)],line=48) into callee frame
130 : LDA 6, 134(7) ;  Compute return address
131 : ST 6, 0(3) ;  Store return address in callee frame
132 : ADD  5, 3, 0 ;  Update pointer
133 : LDA 7, 94(0) ;  Call reverseL
134 : LD 1, 3(5) ;  Load callee return value into R1
135 : LDC  4, 4(0) ;  Load frame size
136 : SUB  5, 5, 4 ;  Restore pointer
137 : ST   1, 3(5) ;  Store function result into stack frame
138 : LD   6, 0(5) ;  Load return address
139 : LDA  7, 0(6) ;  Return to caller
140 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'reverseL'
141 : LD   1, 1(5) ;  Load parameter 'n' into R1
142 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=43) into callee frame
143 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
144 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=43) into callee frame
145 : LDA 6, 149(7) ;  Compute return address
146 : ST 6, 0(3) ;  Store return address in callee frame
147 : ADD  5, 3, 0 ;  Update pointer
148 : LDA 7, 94(0) ;  Call reverseL
149 : LD 1, 3(5) ;  Load callee return value into R1
150 : LDC  4, 3(0) ;  Load frame size
151 : SUB  5, 5, 4 ;  Restore pointer
152 : ST   1, 2(5) ;  Store function result into stack frame
153 : LD   6, 0(5) ;  Load return address
154 : LDA  7, 0(6) ;  Return to caller
155 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
156 : LD   1, 2(5) ;  Load parameter 'b' into R1
157 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='b',line=38) into callee frame
158 : LD   1, 1(5) ;  Load parameter 'a' into R1
159 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=38) into callee frame
160 : LDA 6, 164(7) ;  Compute return address
161 : ST 6, 0(3) ;  Store return address in callee frame
162 : ADD  5, 3, 0 ;  Update pointer
163 : LDA 7, 81(0) ;  Call MOD
164 : LD 1, 3(5) ;  Load callee return value into R1
165 : LDC  4, 4(0) ;  Load frame size
166 : SUB  5, 5, 4 ;  Restore pointer
167 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
168 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
169 : SUB  1, 2, 1 ;  left - right for equality check
170 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
171 : LDC  1, 0(0) ;  false
172 : LDA  7, 1(7) ;  skip setting true
173 : LDC  1, 1(0) ;  true
174 : ST   1, 3(5) ;  Store function result into stack frame
175 : LD   6, 0(5) ;  Load return address
176 : LDA  7, 0(6) ;  Return to caller
177 : LD   1, 1(5) ;  Load parameter 'i' into R1
178 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
179 : LD   1, 2(5) ;  Load parameter 'n' into R1
180 : SUB  1, 2, 1 ;  left - right for less-than check
181 : JLT  1, 2(7) ;  If R1 < 0, jump to true
182 : LDC  1, 0(0) ;  false
183 : LDA  7, 1(7) ;  skip setting true
184 : LDC  1, 1(0) ;  true
185 : JEQ  1, 216(0) ;  If condition is false, jump to ELSE
186 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
187 : LD   1, 1(5) ;  Load parameter 'i' into R1
188 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='i',line=33) into callee frame
189 : LD   1, 2(5) ;  Load parameter 'n' into R1
190 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33) into callee frame
191 : LDA 6, 195(7) ;  Compute return address
192 : ST 6, 0(3) ;  Store return address in callee frame
193 : ADD  5, 3, 0 ;  Update pointer
194 : LDA 7, 155(0) ;  Call divides
195 : LD 1, 3(5) ;  Load callee return value into R1
196 : LDC  4, 4(0) ;  Load frame size
197 : SUB  5, 5, 4 ;  Restore pointer
198 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
199 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
200 : LD   1, 1(5) ;  Load parameter 'i' into R1
201 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
202 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
203 : ADD  1, 2, 1 ;  R1 = left + right
204 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=33), Tree Node('INTEGER-LITERAL', value='1',line=33)],line=33) into callee frame
205 : LD   1, 2(5) ;  Load parameter 'n' into R1
206 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33) into callee frame
207 : LDA 6, 211(7) ;  Compute return address
208 : ST 6, 0(3) ;  Store return address in callee frame
209 : ADD  5, 3, 0 ;  Update pointer
210 : LDA 7, 177(0) ;  Call hasDivisorFrom
211 : LD 1, 3(5) ;  Load callee return value into R1
212 : LDC  4, 4(0) ;  Load frame size
213 : SUB  5, 5, 4 ;  Restore pointer
214 : ADD  1, 2, 1 ;  R1 = left OR right
215 : LDA  7, 217(0) ;  Skip ELSE block
216 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
217 : ST   1, 3(5) ;  Store function result into stack frame
218 : LD   6, 0(5) ;  Load return address
219 : LDA  7, 0(6) ;  Return to caller
220 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
221 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
222 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=29) into callee frame
223 : LD   1, 1(5) ;  Load parameter 'n' into R1
224 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29) into callee frame
225 : LDA 6, 229(7) ;  Compute return address
226 : ST 6, 0(3) ;  Store return address in callee frame
227 : ADD  5, 3, 0 ;  Update pointer
228 : LDA 7, 177(0) ;  Call hasDivisorFrom
229 : LD 1, 3(5) ;  Load callee return value into R1
230 : LDC  4, 3(0) ;  Load frame size
231 : SUB  5, 5, 4 ;  Restore pointer
232 : LDC  2, 1(0) ;  Load 1 into R2
233 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
234 : ST   1, 2(5) ;  Store function result into stack frame
235 : LD   6, 0(5) ;  Load return address
236 : LDA  7, 0(6) ;  Return to caller
237 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'emirp'
238 : LD   1, 1(5) ;  Load parameter 'n' into R1
239 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=14) into callee frame
240 : LDA 6, 244(7) ;  Compute return address
241 : ST 6, 0(3) ;  Store return address in callee frame
242 : ADD  5, 3, 0 ;  Update pointer
243 : LDA 7, 307(0) ;  Call emirp
244 : LD 1, 2(5) ;  Load callee return value into R1
245 : LDC  4, 3(0) ;  Load frame size
246 : SUB  5, 5, 4 ;  Restore pointer
247 : LDA  3, 3(5) ;  Update DMEM pointer
248 : LDA 6, 252(7) ;  Compute return address
249 : ST   6, 0(3) ;  Store return address
250 : ADD  5, 3, 0 ;  Updated Pointer
251 : LDA  7, 10(0) ; Call print
252 : LDC  4, 3(0) ;  Load frame size
253 : SUB  5, 5, 4 ;  Restore pointer
254 : ST   1, 2(5) ;  Store function result into stack frame
255 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'snowball'
256 : LD   1, 1(5) ;  Load parameter 'n' into R1
257 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=15) into callee frame
258 : LDA 6, 262(7) ;  Compute return address
259 : ST 6, 0(3) ;  Store return address in callee frame
260 : ADD  5, 3, 0 ;  Update pointer
261 : LDA 7, 268(0) ;  Call snowball
262 : LD 1, 2(5) ;  Load callee return value into R1
263 : LDC  4, 3(0) ;  Load frame size
264 : SUB  5, 5, 4 ;  Restore pointer
265 : ST   1, 2(5) ;  Store function result into stack frame
266 : LD   6, 0(5) ;  Load return address
267 : LDA  7, 0(6) ;  Return to caller
268 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isPrime'
269 : LD   1, 1(5) ;  Load parameter 'n' into R1
270 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7) into callee frame
271 : LDA 6, 275(7) ;  Compute return address
272 : ST 6, 0(3) ;  Store return address in callee frame
273 : ADD  5, 3, 0 ;  Update pointer
274 : LDA 7, 220(0) ;  Call isPrime
275 : LD 1, 2(5) ;  Load callee return value into R1
276 : LDC  4, 3(0) ;  Load frame size
277 : SUB  5, 5, 4 ;  Restore pointer
278 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
279 : LD   1, 1(5) ;  Load parameter 'n' into R1
280 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
281 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
282 : SUB  1, 2, 1 ;  left - right for less-than check
283 : JLT  1, 2(7) ;  If R1 < 0, jump to true
284 : LDC  1, 0(0) ;  false
285 : LDA  7, 1(7) ;  skip setting true
286 : LDC  1, 1(0) ;  true
287 : JEQ  1, 290(0) ;  If condition is false, jump to ELSE
288 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
289 : LDA  7, 303(0) ;  Skip ELSE block
290 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isPrime'
291 : LD   1, 1(5) ;  Load parameter 'n' into R1
292 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
293 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
294 : DIV  1, 2, 1 ;  R1 = left / right
295 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('INTEGER-LITERAL', value='10',line=9)],line=9) into callee frame
296 : LDA 6, 300(7) ;  Compute return address
297 : ST 6, 0(3) ;  Store return address in callee frame
298 : ADD  5, 3, 0 ;  Update pointer
299 : LDA 7, 220(0) ;  Call isPrime
300 : LD 1, 2(5) ;  Load callee return value into R1
301 : LDC  4, 3(0) ;  Load frame size
302 : SUB  5, 5, 4 ;  Restore pointer
303 : MUL  1, 2, 1 ;  R1 = left AND right
304 : ST   1, 2(5) ;  Store function result into stack frame
305 : LD   6, 0(5) ;  Load return address
306 : LDA  7, 0(6) ;  Return to caller
307 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isPrime'
308 : LD   1, 1(5) ;  Load parameter 'n' into R1
309 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4) into callee frame
310 : LDA 6, 314(7) ;  Compute return address
311 : ST 6, 0(3) ;  Store return address in callee frame
312 : ADD  5, 3, 0 ;  Update pointer
313 : LDA 7, 220(0) ;  Call isPrime
314 : LD 1, 2(5) ;  Load callee return value into R1
315 : LDC  4, 3(0) ;  Load frame size
316 : SUB  5, 5, 4 ;  Restore pointer
317 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
318 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'isPrime'
319 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'reverse'
320 : LD   1, 1(5) ;  Load parameter 'n' into R1
321 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4) into callee frame
322 : LDA 6, 326(7) ;  Compute return address
323 : ST 6, 0(3) ;  Store return address in callee frame
324 : ADD  5, 3, 0 ;  Update pointer
325 : LDA 7, 140(0) ;  Call reverse
326 : LD 1, 2(5) ;  Load callee return value into R1
327 : LDC  4, 3(0) ;  Load frame size
328 : SUB  5, 5, 4 ;  Restore pointer
329 : ST 1, 1(3) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='reverse',line=4), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=4)],line=4)],line=4) into callee frame
330 : LDA 6, 334(7) ;  Compute return address
331 : ST 6, 0(3) ;  Store return address in callee frame
332 : ADD  5, 3, 0 ;  Update pointer
333 : LDA 7, 220(0) ;  Call isPrime
334 : LD 1, 2(5) ;  Load callee return value into R1
335 : LDC  4, 3(0) ;  Load frame size
336 : SUB  5, 5, 4 ;  Restore pointer
337 : MUL  1, 2, 1 ;  R1 = left AND right
338 : ST   1, 2(5) ;  Store function result into stack frame
339 : LD   6, 0(5) ;  Load return address
340 : LDA  7, 0(6) ;  Return to caller
