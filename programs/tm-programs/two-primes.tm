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
21 : JEQ  1, 32(0) ;  If condition is false, jump to ELSE
22 : LD   1, 1(5) ;  Load parameter 'n' into R1
23 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19)
24 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'emirp'
25 : LDA  6, 2(7) ;  Compute return address
26 : ST   6, 0(5) ;  Store return address in frame
27 : LDA  7, 277(0) ;  Call emirp
28 : LD   1, 2(5) ;  Load return value into R1
29 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
30 : ST   1, 6(0) ;  Store function-call result into caller's return slot
31 : LDA  7, 72(0) ;  Skip ELSE block
32 : LD   1, 2(5) ;  Load parameter 'selector' into R1
33 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
34 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
35 : SUB  1, 2, 1 ;  left - right for equality check
36 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
37 : LDC  1, 0(0) ;  false
38 : LDA  7, 1(7) ;  skip setting true
39 : LDC  1, 1(0) ;  true
40 : JEQ  1, 51(0) ;  If condition is false, jump to ELSE
41 : LD   1, 1(5) ;  Load parameter 'n' into R1
42 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=21)
43 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'snowball'
44 : LDA  6, 2(7) ;  Compute return address
45 : ST   6, 0(5) ;  Store return address in frame
46 : LDA  7, 242(0) ;  Call snowball
47 : LD   1, 2(5) ;  Load return value into R1
48 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
49 : ST   1, 6(0) ;  Store function-call result into caller's return slot
50 : LDA  7, 72(0) ;  Skip ELSE block
51 : LD   1, 2(5) ;  Load parameter 'selector' into R1
52 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
53 : LDC  1, 8(0) ;  Load boolean-literal value into register 1
54 : SUB  1, 2, 1 ;  left - right for equality check
55 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
56 : LDC  1, 0(0) ;  false
57 : LDA  7, 1(7) ;  skip setting true
58 : LDC  1, 1(0) ;  true
59 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
60 : LD   1, 1(5) ;  Load parameter 'n' into R1
61 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23)
62 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'doBoth'
63 : LDA  6, 2(7) ;  Compute return address
64 : ST   6, 0(5) ;  Store return address in frame
65 : LDA  7, 217(0) ;  Call doBoth
66 : LD   1, 2(5) ;  Load return value into R1
67 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
68 : ST   1, 6(0) ;  Store function-call result into caller's return slot
69 : LDA  7, 72(0) ;  Skip ELSE block
70 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
71 : ST   1, 6(0) ;  Store value into return value in stack frame
72 : LD   1, 6(0) ;  Load return value into register 1
73 : LD  6, 3(0) ;  Load return address for main function into register 6
74 : LDA  7, 0(6) ;  Jump to return address of main function
75 : LD   1, 1(5) ;  Load parameter 'm' into R1
76 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
77 : LD   1, 1(5) ;  Load parameter 'm' into R1
78 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
79 : LD   1, 2(5) ;  Load parameter 'n' into R1
80 : DIV  1, 2, 1 ;  R1 = left / right
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LD   1, 2(5) ;  Load parameter 'n' into R1
83 : MUL  1, 2, 1 ;  R1 = left * right
84 : SUB  1, 2, 1 ;  R1 = left - right
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 1(5) ;  Load parameter 'n' into R1
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 99(0) ;  If condition is false, jump to ELSE
97 : LD   1, 2(5) ;  Load parameter 'nR' into R1
98 : LDA  7, 127(0) ;  Skip ELSE block
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
101 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
102 : DIV  1, 2, 1 ;  R1 = left / right
103 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=48), Tree Node('INTEGER-LITERAL', value='10',line=48)],line=48)
104 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
105 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
106 : LD   1, 2(5) ;  Load parameter 'nR' into R1
107 : MUL  1, 2, 1 ;  R1 = left * right
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LD   1, 1(5) ;  Load parameter 'n' into R1
110 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=48)
111 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
112 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=48)
113 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'MOD'
114 : LDA  6, 2(7) ;  Compute return address
115 : ST   6, 0(5) ;  Store return address in frame
116 : LDA  7, 75(0) ;  Call MOD
117 : LD   1, 3(5) ;  Load return value into R1
118 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
119 : ADD  1, 2, 1 ;  R1 = left + right
120 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='10',line=48), Tree Node('IDENTIFIER', value='nR',line=48)],line=48), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=48), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=48), Tree Node('INTEGER-LITERAL', value='10',line=48)],line=48)],line=48)],line=48)
121 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'reverseL'
122 : LDA  6, 2(7) ;  Compute return address
123 : ST   6, 0(5) ;  Store return address in frame
124 : LDA  7, 88(0) ;  Call reverseL
125 : LD   1, 3(5) ;  Load return value into R1
126 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
127 : ST   1, 3(5) ;  Store function result into stack frame
128 : LD   6, 0(5) ;  Load return address
129 : LDA  7, 0(6) ;  Return to caller
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=43)
132 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
133 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=43)
134 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'reverseL'
135 : LDA  6, 2(7) ;  Compute return address
136 : ST   6, 0(5) ;  Store return address in frame
137 : LDA  7, 88(0) ;  Call reverseL
138 : LD   1, 3(5) ;  Load return value into R1
139 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
140 : ST   1, 2(5) ;  Store function result into stack frame
141 : LD   6, 0(5) ;  Load return address
142 : LDA  7, 0(6) ;  Return to caller
143 : LD   1, 2(5) ;  Load parameter 'b' into R1
144 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=38)
145 : LD   1, 1(5) ;  Load parameter 'a' into R1
146 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=38)
147 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'MOD'
148 : LDA  6, 2(7) ;  Compute return address
149 : ST   6, 0(5) ;  Store return address in frame
150 : LDA  7, 75(0) ;  Call MOD
151 : LD   1, 3(5) ;  Load return value into R1
152 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
153 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
154 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
155 : SUB  1, 2, 1 ;  left - right for equality check
156 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
157 : LDC  1, 0(0) ;  false
158 : LDA  7, 1(7) ;  skip setting true
159 : LDC  1, 1(0) ;  true
160 : ST   1, 3(5) ;  Store function result into stack frame
161 : LD   6, 0(5) ;  Load return address
162 : LDA  7, 0(6) ;  Return to caller
163 : LD   1, 1(5) ;  Load parameter 'i' into R1
164 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
165 : LD   1, 2(5) ;  Load parameter 'n' into R1
166 : SUB  1, 2, 1 ;  left - right for less-than check
167 : JLT  1, 2(7) ;  If R1 < 0, jump to true
168 : LDC  1, 0(0) ;  false
169 : LDA  7, 1(7) ;  skip setting true
170 : LDC  1, 1(0) ;  true
171 : JEQ  1, 198(0) ;  If condition is false, jump to ELSE
172 : LD   1, 1(5) ;  Load parameter 'i' into R1
173 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='i',line=33)
174 : LD   1, 2(5) ;  Load parameter 'n' into R1
175 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33)
176 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'divides'
177 : LDA  6, 2(7) ;  Compute return address
178 : ST   6, 0(5) ;  Store return address in frame
179 : LDA  7, 143(0) ;  Call divides
180 : LD   1, 3(5) ;  Load return value into R1
181 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
182 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
183 : LD   1, 1(5) ;  Load parameter 'i' into R1
184 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
185 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
186 : ADD  1, 2, 1 ;  R1 = left + right
187 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=33), Tree Node('INTEGER-LITERAL', value='1',line=33)],line=33)
188 : LD   1, 2(5) ;  Load parameter 'n' into R1
189 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33)
190 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'hasDivisorFrom'
191 : LDA  6, 2(7) ;  Compute return address
192 : ST   6, 0(5) ;  Store return address in frame
193 : LDA  7, 163(0) ;  Call hasDivisorFrom
194 : LD   1, 3(5) ;  Load return value into R1
195 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
196 : ADD  1, 2, 1 ;  R1 = left OR right
197 : LDA  7, 199(0) ;  Skip ELSE block
198 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
199 : ST   1, 3(5) ;  Store function result into stack frame
200 : LD   6, 0(5) ;  Load return address
201 : LDA  7, 0(6) ;  Return to caller
202 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
203 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=29)
204 : LD   1, 1(5) ;  Load parameter 'n' into R1
205 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29)
206 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'hasDivisorFrom'
207 : LDA  6, 2(7) ;  Compute return address
208 : ST   6, 0(5) ;  Store return address in frame
209 : LDA  7, 163(0) ;  Call hasDivisorFrom
210 : LD   1, 3(5) ;  Load return value into R1
211 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
212 : LDC  2, 1(0) ;  Load 1 into R2
213 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
214 : ST   1, 2(5) ;  Store function result into stack frame
215 : LD   6, 0(5) ;  Load return address
216 : LDA  7, 0(6) ;  Return to caller
217 : LD   1, 1(5) ;  Load parameter 'n' into R1
218 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=14)
219 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'emirp'
220 : LDA  6, 2(7) ;  Compute return address
221 : ST   6, 0(5) ;  Store return address in frame
222 : LDA  7, 277(0) ;  Call emirp
223 : LD   1, 2(5) ;  Load return value into R1
224 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
225 : LDC  5, 3(0) ;  Update DMEM pointer
226 : LDA  6, 2(7) ;  Compute return address
227 : ST   6, 0(5) ;  Store return address
228 : LDA  7, 10(0) ; Call print
229 : LDC  5, 3(0) ;  Move pointer to previous stack frame
230 : ST   1, 2(5) ;  Store function result into stack frame
231 : LD   1, 1(5) ;  Load parameter 'n' into R1
232 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=15)
233 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'snowball'
234 : LDA  6, 2(7) ;  Compute return address
235 : ST   6, 0(5) ;  Store return address in frame
236 : LDA  7, 242(0) ;  Call snowball
237 : LD   1, 2(5) ;  Load return value into R1
238 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
239 : ST   1, 2(5) ;  Store function result into stack frame
240 : LD   6, 0(5) ;  Load return address
241 : LDA  7, 0(6) ;  Return to caller
242 : LD   1, 1(5) ;  Load parameter 'n' into R1
243 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7)
244 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'isPrime'
245 : LDA  6, 2(7) ;  Compute return address
246 : ST   6, 0(5) ;  Store return address in frame
247 : LDA  7, 202(0) ;  Call isPrime
248 : LD   1, 2(5) ;  Load return value into R1
249 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
250 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
251 : LD   1, 1(5) ;  Load parameter 'n' into R1
252 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
253 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
254 : SUB  1, 2, 1 ;  left - right for less-than check
255 : JLT  1, 2(7) ;  If R1 < 0, jump to true
256 : LDC  1, 0(0) ;  false
257 : LDA  7, 1(7) ;  skip setting true
258 : LDC  1, 1(0) ;  true
259 : JEQ  1, 262(0) ;  If condition is false, jump to ELSE
260 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
261 : LDA  7, 273(0) ;  Skip ELSE block
262 : LD   1, 1(5) ;  Load parameter 'n' into R1
263 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
264 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
265 : DIV  1, 2, 1 ;  R1 = left / right
266 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('INTEGER-LITERAL', value='10',line=9)],line=9)
267 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'isPrime'
268 : LDA  6, 2(7) ;  Compute return address
269 : ST   6, 0(5) ;  Store return address in frame
270 : LDA  7, 202(0) ;  Call isPrime
271 : LD   1, 2(5) ;  Load return value into R1
272 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
273 : MUL  1, 2, 1 ;  R1 = left AND right
274 : ST   1, 2(5) ;  Store function result into stack frame
275 : LD   6, 0(5) ;  Load return address
276 : LDA  7, 0(6) ;  Return to caller
277 : LD   1, 1(5) ;  Load parameter 'n' into R1
278 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4)
279 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'isPrime'
280 : LDA  6, 2(7) ;  Compute return address
281 : ST   6, 0(5) ;  Store return address in frame
282 : LDA  7, 202(0) ;  Call isPrime
283 : LD   1, 2(5) ;  Load return value into R1
284 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
285 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
286 : LD   1, 1(5) ;  Load parameter 'n' into R1
287 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4)
288 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'reverse'
289 : LDA  6, 2(7) ;  Compute return address
290 : ST   6, 0(5) ;  Store return address in frame
291 : LDA  7, 130(0) ;  Call reverse
292 : LD   1, 2(5) ;  Load return value into R1
293 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
294 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='reverse',line=4), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=4)],line=4)],line=4)
295 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'isPrime'
296 : LDA  6, 2(7) ;  Compute return address
297 : ST   6, 0(5) ;  Store return address in frame
298 : LDA  7, 202(0) ;  Call isPrime
299 : LD   1, 2(5) ;  Load return value into R1
300 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
301 : MUL  1, 2, 1 ;  R1 = left AND right
302 : ST   1, 2(5) ;  Store function result into stack frame
303 : LD   6, 0(5) ;  Load return address
304 : LDA  7, 0(6) ;  Return to caller
