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
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=124)
13 : LD   1, 1(5) ;  Load parameter 'length' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
16 : DIV  1, 2, 1 ;  R1 = left / right
17 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
18 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
19 : SUB  1, 2, 1 ;  R1 = left - right
20 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)
21 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'EXP'
22 : LDA  6, 2(7) ;  Compute return address
23 : ST   6, 0(5) ;  Store return address in frame
24 : LDA  7, 655(0) ;  Call EXP
25 : LD   1, 3(5) ;  Load return value into R1
26 : LDC  5, 5(0) ;  Restore DMEM pointer to caller frame
27 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=124), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=124), Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)],line=124)],line=124)
28 : LD   1, 1(5) ;  Load parameter 'length' into R1
29 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
30 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
31 : DIV  1, 2, 1 ;  R1 = left / right
32 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124)
33 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'createLoop'
34 : LDA  6, 2(7) ;  Compute return address
35 : ST   6, 0(5) ;  Store return address in frame
36 : LDA  7, 43(0) ;  Call createLoop
37 : LD   1, 3(5) ;  Load return value into R1
38 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
39 : ST   1, 4(0) ;  Store function-call result into caller's return slot
40 : LD   1, 4(0) ;  Load return value into register 1
41 : LD  6, 2(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 1(5) ;  Load parameter 'a' into R1
44 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=119)
45 : LD   1, 2(5) ;  Load parameter 'n' into R1
46 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=119)
47 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LD   1, 1(5) ;  Load parameter 'a' into R1
50 : MUL  1, 2, 1 ;  R1 = left * right
51 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='10',line=119), Tree Node('IDENTIFIER', value='a',line=119)],line=119)
52 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop'
53 : LDA  6, 2(7) ;  Compute return address
54 : ST   6, 0(5) ;  Store return address in frame
55 : LDA  7, 61(0) ;  Call aLoop
56 : LD   1, 4(5) ;  Load return value into R1
57 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
58 : ST   1, 3(5) ;  Store function result into stack frame
59 : LD   6, 0(5) ;  Load return address
60 : LDA  7, 0(6) ;  Return to caller
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 3(5) ;  Load parameter 'upper' into R1
64 : SUB  1, 2, 1 ;  left - right for less-than check
65 : JLT  1, 2(7) ;  If R1 < 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
70 : LD   1, 1(5) ;  Load parameter 'a' into R1
71 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115)
72 : LD   1, 2(5) ;  Load parameter 'n' into R1
73 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115)
74 : LD   1, 3(5) ;  Load parameter 'upper' into R1
75 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=115)
76 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115)
80 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
81 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=115)
82 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
83 : LDA  6, 2(7) ;  Compute return address
84 : ST   6, 0(5) ;  Store return address in frame
85 : LDA  7, 655(0) ;  Call EXP
86 : LD   1, 3(5) ;  Load return value into R1
87 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
88 : MUL  1, 2, 1 ;  R1 = left * right
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
91 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
92 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
93 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=115)
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115)
96 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
97 : LDA  6, 2(7) ;  Compute return address
98 : ST   6, 0(5) ;  Store return address in frame
99 : LDA  7, 655(0) ;  Call EXP
100 : LD   1, 3(5) ;  Load return value into R1
101 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
102 : MUL  1, 2, 1 ;  R1 = left * right
103 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
104 : LD   1, 1(5) ;  Load parameter 'a' into R1
105 : MUL  1, 2, 1 ;  R1 = left * right
106 : ADD  1, 2, 1 ;  R1 = left + right
107 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
108 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
109 : ADD  1, 2, 1 ;  R1 = left + right
110 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=115), Tree Node('INTEGER-LITERAL', value='2',line=115)],line=115)],line=115)],line=115), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=115), Tree Node('IDENTIFIER', value='n',line=115)],line=115)],line=115)],line=115), Tree Node('IDENTIFIER', value='a',line=115)],line=115)],line=115), Tree Node('INTEGER-LITERAL', value='1',line=115)],line=115)
111 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop1'
112 : LDA  6, 2(7) ;  Compute return address
113 : ST   6, 0(5) ;  Store return address in frame
114 : LDA  7, 122(0) ;  Call aLoop1
115 : LD   1, 5(5) ;  Load return value into R1
116 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
117 : LDA  7, 119(0) ;  Skip ELSE block
118 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
119 : ST   1, 4(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
122 : LD   1, 1(5) ;  Load parameter 'a' into R1
123 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=111)
124 : LD   1, 2(5) ;  Load parameter 'n' into R1
125 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=111)
126 : LD   1, 3(5) ;  Load parameter 'upper' into R1
127 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=111)
128 : LD   1, 4(5) ;  Load parameter 'det' into R1
129 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111)
130 : LD   1, 4(5) ;  Load parameter 'det' into R1
131 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111)
132 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRT'
133 : LDA  6, 2(7) ;  Compute return address
134 : ST   6, 0(5) ;  Store return address in frame
135 : LDA  7, 583(0) ;  Call SQRT
136 : LD   1, 2(5) ;  Load return value into R1
137 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
138 : ST   1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='SQRT',line=111), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='det',line=111)],line=111)],line=111)
139 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop2'
140 : LDA  6, 2(7) ;  Compute return address
141 : ST   6, 0(5) ;  Store return address in frame
142 : LDA  7, 148(0) ;  Call aLoop2
143 : LD   1, 6(5) ;  Load return value into R1
144 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
145 : ST   1, 5(5) ;  Store function result into stack frame
146 : LD   6, 0(5) ;  Load return address
147 : LDA  7, 0(6) ;  Return to caller
148 : LD   1, 1(5) ;  Load parameter 'a' into R1
149 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=105)
150 : LD   1, 2(5) ;  Load parameter 'n' into R1
151 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105)
152 : LD   1, 3(5) ;  Load parameter 'upper' into R1
153 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=105)
154 : LD   1, 4(5) ;  Load parameter 'det' into R1
155 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=105)
156 : LD   1, 5(5) ;  Load parameter 'root' into R1
157 : ST   1, 5(5) ;  Store argument Tree Node('IDENTIFIER', value='root',line=105)
158 : LD   1, 1(5) ;  Load parameter 'a' into R1
159 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
160 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
161 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=105)
162 : LD   1, 2(5) ;  Load parameter 'n' into R1
163 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105)
164 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
165 : LDA  6, 2(7) ;  Compute return address
166 : ST   6, 0(5) ;  Store return address in frame
167 : LDA  7, 655(0) ;  Call EXP
168 : LD   1, 3(5) ;  Load return value into R1
169 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
170 : MUL  1, 2, 1 ;  R1 = left * right
171 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
172 : LD   1, 5(5) ;  Load parameter 'root' into R1
173 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
174 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
175 : ADD  1, 2, 1 ;  R1 = left + right
176 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
177 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
178 : DIV  1, 2, 1 ;  R1 = left / right
179 : ADD  1, 2, 1 ;  R1 = left + right
180 : ST   1, 6(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='a',line=105), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=105), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=105), Tree Node('IDENTIFIER', value='n',line=105)],line=105)],line=105)],line=105), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=105), Tree Node('INTEGER-LITERAL', value='1',line=105)],line=105), Tree Node('INTEGER-LITERAL', value='2',line=105)],line=105)],line=105)
181 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop3'
182 : LDA  6, 2(7) ;  Compute return address
183 : ST   6, 0(5) ;  Store return address in frame
184 : LDA  7, 190(0) ;  Call aLoop3
185 : LD   1, 7(5) ;  Load return value into R1
186 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
187 : ST   1, 6(5) ;  Store function result into stack frame
188 : LD   6, 0(5) ;  Load return address
189 : LDA  7, 0(6) ;  Return to caller
190 : LD   1, 5(5) ;  Load parameter 'root' into R1
191 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='root',line=96)
192 : LD   1, 4(5) ;  Load parameter 'det' into R1
193 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=96)
194 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ISROOT'
195 : LDA  6, 2(7) ;  Compute return address
196 : ST   6, 0(5) ;  Store return address in frame
197 : LDA  7, 446(0) ;  Call ISROOT
198 : LD   1, 3(5) ;  Load return value into R1
199 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
200 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
201 : LD   1, 5(5) ;  Load parameter 'root' into R1
202 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
203 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
204 : ADD  1, 2, 1 ;  R1 = left + right
205 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=96), Tree Node('INTEGER-LITERAL', value='1',line=96)],line=96)
206 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EVEN'
207 : LDA  6, 2(7) ;  Compute return address
208 : ST   6, 0(5) ;  Store return address in frame
209 : LDA  7, 460(0) ;  Call EVEN
210 : LD   1, 2(5) ;  Load return value into R1
211 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
212 : MUL  1, 2, 1 ;  R1 = left AND right
213 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
214 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
215 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=96)
216 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isExcellent'
217 : LDA  6, 2(7) ;  Compute return address
218 : ST   6, 0(5) ;  Store return address in frame
219 : LDA  7, 282(0) ;  Call isExcellent
220 : LD   1, 2(5) ;  Load return value into R1
221 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
222 : MUL  1, 2, 1 ;  R1 = left AND right
223 : JEQ  1, 239(0) ;  If condition is false, jump to ELSE
224 : LD   1, 1(5) ;  Load parameter 'a' into R1
225 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=97)
226 : LD   1, 2(5) ;  Load parameter 'n' into R1
227 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=97)
228 : LD   1, 3(5) ;  Load parameter 'upper' into R1
229 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=97)
230 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
231 : ST   1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=97)
232 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'printCandidateAndContinue'
233 : LDA  6, 2(7) ;  Compute return address
234 : ST   6, 0(5) ;  Store return address in frame
235 : LDA  7, 257(0) ;  Call printCandidateAndContinue
236 : LD   1, 5(5) ;  Load return value into R1
237 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
238 : LDA  7, 254(0) ;  Skip ELSE block
239 : LD   1, 1(5) ;  Load parameter 'a' into R1
240 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
241 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
242 : ADD  1, 2, 1 ;  R1 = left + right
243 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=98), Tree Node('INTEGER-LITERAL', value='1',line=98)],line=98)
244 : LD   1, 2(5) ;  Load parameter 'n' into R1
245 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=98)
246 : LD   1, 3(5) ;  Load parameter 'upper' into R1
247 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=98)
248 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop'
249 : LDA  6, 2(7) ;  Compute return address
250 : ST   6, 0(5) ;  Store return address in frame
251 : LDA  7, 61(0) ;  Call aLoop
252 : LD   1, 4(5) ;  Load return value into R1
253 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
254 : ST   1, 7(5) ;  Store function result into stack frame
255 : LD   6, 0(5) ;  Load return address
256 : LDA  7, 0(6) ;  Return to caller
257 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
258 : LDC  5, 2(0) ;  Update DMEM pointer
259 : LDA  6, 2(7) ;  Compute return address
260 : ST   6, 0(5) ;  Store return address
261 : LDA  7, 8(0) ; Call print
262 : LDC  5, 2(0) ;  Move pointer to previous stack frame
263 : ST   1, 5(5) ;  Store function result into stack frame
264 : LD   1, 1(5) ;  Load parameter 'a' into R1
265 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
266 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
267 : ADD  1, 2, 1 ;  R1 = left + right
268 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=88), Tree Node('INTEGER-LITERAL', value='1',line=88)],line=88)
269 : LD   1, 2(5) ;  Load parameter 'n' into R1
270 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=88)
271 : LD   1, 3(5) ;  Load parameter 'upper' into R1
272 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=88)
273 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'aLoop'
274 : LDA  6, 2(7) ;  Compute return address
275 : ST   6, 0(5) ;  Store return address in frame
276 : LDA  7, 61(0) ;  Call aLoop
277 : LD   1, 4(5) ;  Load return value into R1
278 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
279 : ST   1, 5(5) ;  Store function result into stack frame
280 : LD   6, 0(5) ;  Load return address
281 : LDA  7, 0(6) ;  Return to caller
282 : LD   1, 1(5) ;  Load parameter 'n' into R1
283 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78)
284 : LD   1, 1(5) ;  Load parameter 'n' into R1
285 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78)
286 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
287 : LDA  6, 2(7) ;  Compute return address
288 : ST   6, 0(5) ;  Store return address in frame
289 : LDA  7, 418(0) ;  Call length
290 : LD   1, 2(5) ;  Load return value into R1
291 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
292 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=78), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=78)],line=78)],line=78)
293 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isExcellentSwitch'
294 : LDA  6, 2(7) ;  Compute return address
295 : ST   6, 0(5) ;  Store return address in frame
296 : LDA  7, 302(0) ;  Call isExcellentSwitch
297 : LD   1, 3(5) ;  Load return value into R1
298 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
299 : ST   1, 2(5) ;  Store function result into stack frame
300 : LD   6, 0(5) ;  Load return address
301 : LDA  7, 0(6) ;  Return to caller
302 : LD   1, 2(5) ;  Load parameter 'length' into R1
303 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='length',line=73)
304 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ODD'
305 : LDA  6, 2(7) ;  Compute return address
306 : ST   6, 0(5) ;  Store return address in frame
307 : LDA  7, 619(0) ;  Call ODD
308 : LD   1, 2(5) ;  Load return value into R1
309 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
310 : JEQ  1, 313(0) ;  If condition is false, jump to ELSE
311 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
312 : LDA  7, 344(0) ;  Skip ELSE block
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
315 : LD   1, 1(5) ;  Load parameter 'n' into R1
316 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75)
317 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'a'
318 : LDA  6, 2(7) ;  Compute return address
319 : ST   6, 0(5) ;  Store return address in frame
320 : LDA  7, 392(0) ;  Call a
321 : LD   1, 2(5) ;  Load return value into R1
322 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
323 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='a',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75)
324 : LD   1, 1(5) ;  Load parameter 'n' into R1
325 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75)
326 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'b'
327 : LDA  6, 2(7) ;  Compute return address
328 : ST   6, 0(5) ;  Store return address in frame
329 : LDA  7, 360(0) ;  Call b
330 : LD   1, 2(5) ;  Load return value into R1
331 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
332 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='b',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75)
333 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'excellentDiff'
334 : LDA  6, 2(7) ;  Compute return address
335 : ST   6, 0(5) ;  Store return address in frame
336 : LDA  7, 347(0) ;  Call excellentDiff
337 : LD   1, 3(5) ;  Load return value into R1
338 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
339 : SUB  1, 2, 1 ;  left - right for equality check
340 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
341 : LDC  1, 0(0) ;  false
342 : LDA  7, 1(7) ;  skip setting true
343 : LDC  1, 1(0) ;  true
344 : ST   1, 3(5) ;  Store function result into stack frame
345 : LD   6, 0(5) ;  Load return address
346 : LDA  7, 0(6) ;  Return to caller
347 : LD   1, 2(5) ;  Load parameter 'b' into R1
348 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
349 : LD   1, 2(5) ;  Load parameter 'b' into R1
350 : MUL  1, 2, 1 ;  R1 = left * right
351 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
352 : LD   1, 1(5) ;  Load parameter 'a' into R1
353 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
354 : LD   1, 1(5) ;  Load parameter 'a' into R1
355 : MUL  1, 2, 1 ;  R1 = left * right
356 : SUB  1, 2, 1 ;  R1 = left - right
357 : ST   1, 3(5) ;  Store function result into stack frame
358 : LD   6, 0(5) ;  Load return address
359 : LDA  7, 0(6) ;  Return to caller
360 : LD   1, 1(5) ;  Load parameter 'n' into R1
361 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67)
362 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
363 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=67)
364 : LD   1, 1(5) ;  Load parameter 'n' into R1
365 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67)
366 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
367 : LDA  6, 2(7) ;  Compute return address
368 : ST   6, 0(5) ;  Store return address in frame
369 : LDA  7, 418(0) ;  Call length
370 : LD   1, 2(5) ;  Load return value into R1
371 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
372 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
373 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
374 : DIV  1, 2, 1 ;  R1 = left / right
375 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67)
376 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
377 : LDA  6, 2(7) ;  Compute return address
378 : ST   6, 0(5) ;  Store return address in frame
379 : LDA  7, 655(0) ;  Call EXP
380 : LD   1, 3(5) ;  Load return value into R1
381 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
382 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=67), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67)],line=67)],line=67)
383 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'MOD'
384 : LDA  6, 2(7) ;  Compute return address
385 : ST   6, 0(5) ;  Store return address in frame
386 : LDA  7, 685(0) ;  Call MOD
387 : LD   1, 3(5) ;  Load return value into R1
388 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
389 : ST   1, 2(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LD   1, 1(5) ;  Load parameter 'n' into R1
393 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
394 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
395 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=63)
396 : LD   1, 1(5) ;  Load parameter 'n' into R1
397 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=63)
398 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
399 : LDA  6, 2(7) ;  Compute return address
400 : ST   6, 0(5) ;  Store return address in frame
401 : LDA  7, 418(0) ;  Call length
402 : LD   1, 2(5) ;  Load return value into R1
403 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
404 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
405 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
406 : DIV  1, 2, 1 ;  R1 = left / right
407 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=63), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=63)],line=63)],line=63), Tree Node('INTEGER-LITERAL', value='2',line=63)],line=63)
408 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
409 : LDA  6, 2(7) ;  Compute return address
410 : ST   6, 0(5) ;  Store return address in frame
411 : LDA  7, 655(0) ;  Call EXP
412 : LD   1, 3(5) ;  Load return value into R1
413 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
414 : DIV  1, 2, 1 ;  R1 = left / right
415 : ST   1, 2(5) ;  Store function result into stack frame
416 : LD   6, 0(5) ;  Load return address
417 : LDA  7, 0(6) ;  Return to caller
418 : LD   1, 1(5) ;  Load parameter 'n' into R1
419 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
420 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
421 : SUB  1, 2, 1 ;  left - right for less-than check
422 : JLT  1, 2(7) ;  If R1 < 0, jump to true
423 : LDC  1, 0(0) ;  false
424 : LDA  7, 1(7) ;  skip setting true
425 : LDC  1, 1(0) ;  true
426 : JEQ  1, 429(0) ;  If condition is false, jump to ELSE
427 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
428 : LDA  7, 443(0) ;  Skip ELSE block
429 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
430 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
431 : LD   1, 1(5) ;  Load parameter 'n' into R1
432 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
433 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
434 : DIV  1, 2, 1 ;  R1 = left / right
435 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=59), Tree Node('INTEGER-LITERAL', value='10',line=59)],line=59)
436 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
437 : LDA  6, 2(7) ;  Compute return address
438 : ST   6, 0(5) ;  Store return address in frame
439 : LDA  7, 418(0) ;  Call length
440 : LD   1, 2(5) ;  Load return value into R1
441 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
442 : ADD  1, 2, 1 ;  R1 = left + right
443 : ST   1, 2(5) ;  Store function result into stack frame
444 : LD   6, 0(5) ;  Load return address
445 : LDA  7, 0(6) ;  Return to caller
446 : LD   1, 2(5) ;  Load parameter 'n' into R1
447 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
448 : LD   1, 1(5) ;  Load parameter 'r' into R1
449 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
450 : LD   1, 1(5) ;  Load parameter 'r' into R1
451 : MUL  1, 2, 1 ;  R1 = left * right
452 : SUB  1, 2, 1 ;  left - right for equality check
453 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
454 : LDC  1, 0(0) ;  false
455 : LDA  7, 1(7) ;  skip setting true
456 : LDC  1, 1(0) ;  true
457 : ST   1, 3(5) ;  Store function result into stack frame
458 : LD   6, 0(5) ;  Load return address
459 : LDA  7, 0(6) ;  Return to caller
460 : LD   1, 1(5) ;  Load parameter 'n' into R1
461 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
462 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
463 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
464 : LD   1, 1(5) ;  Load parameter 'n' into R1
465 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
466 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
467 : DIV  1, 2, 1 ;  R1 = left / right
468 : MUL  1, 2, 1 ;  R1 = left * right
469 : SUB  1, 2, 1 ;  left - right for equality check
470 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
471 : LDC  1, 0(0) ;  false
472 : LDA  7, 1(7) ;  skip setting true
473 : LDC  1, 1(0) ;  true
474 : ST   1, 2(5) ;  Store function result into stack frame
475 : LD   6, 0(5) ;  Load return address
476 : LDA  7, 0(6) ;  Return to caller
477 : LD   1, 4(5) ;  Load parameter 'mid' into R1
478 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
479 : LD   1, 4(5) ;  Load parameter 'mid' into R1
480 : MUL  1, 2, 1 ;  R1 = left * right
481 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='mid',line=37), Tree Node('IDENTIFIER', value='mid',line=37)],line=37)
482 : LD   1, 1(5) ;  Load parameter 'n' into R1
483 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=37)
484 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
485 : LDA  6, 2(7) ;  Compute return address
486 : ST   6, 0(5) ;  Store return address in frame
487 : LDA  7, 598(0) ;  Call LE
488 : LD   1, 3(5) ;  Load return value into R1
489 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
490 : JEQ  1, 504(0) ;  If condition is false, jump to ELSE
491 : LD   1, 1(5) ;  Load parameter 'n' into R1
492 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=38)
493 : LD   1, 4(5) ;  Load parameter 'mid' into R1
494 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=38)
495 : LD   1, 3(5) ;  Load parameter 'high' into R1
496 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=38)
497 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
498 : LDA  6, 2(7) ;  Compute return address
499 : ST   6, 0(5) ;  Store return address in frame
500 : LDA  7, 519(0) ;  Call SQRTSEARCH
501 : LD   1, 4(5) ;  Load return value into R1
502 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
503 : LDA  7, 516(0) ;  Skip ELSE block
504 : LD   1, 1(5) ;  Load parameter 'n' into R1
505 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=40)
506 : LD   1, 2(5) ;  Load parameter 'low' into R1
507 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=40)
508 : LD   1, 4(5) ;  Load parameter 'mid' into R1
509 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=40)
510 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
511 : LDA  6, 2(7) ;  Compute return address
512 : ST   6, 0(5) ;  Store return address in frame
513 : LDA  7, 519(0) ;  Call SQRTSEARCH
514 : LD   1, 4(5) ;  Load return value into R1
515 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
516 : ST   1, 5(5) ;  Store function result into stack frame
517 : LD   6, 0(5) ;  Load return address
518 : LDA  7, 0(6) ;  Return to caller
519 : LD   1, 3(5) ;  Load parameter 'high' into R1
520 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=27)
521 : LD   1, 2(5) ;  Load parameter 'low' into R1
522 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
523 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
524 : ADD  1, 2, 1 ;  R1 = left + right
525 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=27), Tree Node('INTEGER-LITERAL', value='1',line=27)],line=27)
526 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
527 : LDA  6, 2(7) ;  Compute return address
528 : ST   6, 0(5) ;  Store return address in frame
529 : LDA  7, 598(0) ;  Call LE
530 : LD   1, 3(5) ;  Load return value into R1
531 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
532 : JEQ  1, 560(0) ;  If condition is false, jump to ELSE
533 : LD   1, 1(5) ;  Load parameter 'n' into R1
534 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
535 : LD   1, 2(5) ;  Load parameter 'low' into R1
536 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
537 : LD   1, 2(5) ;  Load parameter 'low' into R1
538 : MUL  1, 2, 1 ;  R1 = left * right
539 : SUB  1, 2, 1 ;  R1 = left - right
540 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=28), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='low',line=28), Tree Node('IDENTIFIER', value='low',line=28)],line=28)],line=28)
541 : LD   1, 3(5) ;  Load parameter 'high' into R1
542 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
543 : LD   1, 3(5) ;  Load parameter 'high' into R1
544 : MUL  1, 2, 1 ;  R1 = left * right
545 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
546 : LD   1, 1(5) ;  Load parameter 'n' into R1
547 : SUB  1, 2, 1 ;  R1 = left - right
548 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='high',line=28), Tree Node('IDENTIFIER', value='high',line=28)],line=28), Tree Node('IDENTIFIER', value='n',line=28)],line=28)
549 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
550 : LDA  6, 2(7) ;  Compute return address
551 : ST   6, 0(5) ;  Store return address in frame
552 : LDA  7, 598(0) ;  Call LE
553 : LD   1, 3(5) ;  Load return value into R1
554 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
555 : JEQ  1, 558(0) ;  If condition is false, jump to ELSE
556 : LD   1, 2(5) ;  Load parameter 'low' into R1
557 : LDA  7, 559(0) ;  Skip ELSE block
558 : LD   1, 3(5) ;  Load parameter 'high' into R1
559 : LDA  7, 580(0) ;  Skip ELSE block
560 : LD   1, 1(5) ;  Load parameter 'n' into R1
561 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33)
562 : LD   1, 2(5) ;  Load parameter 'low' into R1
563 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=33)
564 : LD   1, 3(5) ;  Load parameter 'high' into R1
565 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=33)
566 : LD   1, 2(5) ;  Load parameter 'low' into R1
567 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
568 : LD   1, 3(5) ;  Load parameter 'high' into R1
569 : ADD  1, 2, 1 ;  R1 = left + right
570 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
571 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
572 : DIV  1, 2, 1 ;  R1 = left / right
573 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=33), Tree Node('IDENTIFIER', value='high',line=33)],line=33), Tree Node('INTEGER-LITERAL', value='2',line=33)],line=33)
574 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSPLIT'
575 : LDA  6, 2(7) ;  Compute return address
576 : ST   6, 0(5) ;  Store return address in frame
577 : LDA  7, 477(0) ;  Call SQRTSPLIT
578 : LD   1, 5(5) ;  Load return value into R1
579 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
580 : ST   1, 4(5) ;  Store function result into stack frame
581 : LD   6, 0(5) ;  Load return address
582 : LDA  7, 0(6) ;  Return to caller
583 : LD   1, 1(5) ;  Load parameter 'n' into R1
584 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24)
585 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
586 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=24)
587 : LD   1, 1(5) ;  Load parameter 'n' into R1
588 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24)
589 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
590 : LDA  6, 2(7) ;  Compute return address
591 : ST   6, 0(5) ;  Store return address in frame
592 : LDA  7, 519(0) ;  Call SQRTSEARCH
593 : LD   1, 4(5) ;  Load return value into R1
594 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
595 : ST   1, 2(5) ;  Store function result into stack frame
596 : LD   6, 0(5) ;  Load return address
597 : LDA  7, 0(6) ;  Return to caller
598 : LD   1, 1(5) ;  Load parameter 'p' into R1
599 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
600 : LD   1, 2(5) ;  Load parameter 'q' into R1
601 : SUB  1, 2, 1 ;  left - right for less-than check
602 : JLT  1, 2(7) ;  If R1 < 0, jump to true
603 : LDC  1, 0(0) ;  false
604 : LDA  7, 1(7) ;  skip setting true
605 : LDC  1, 1(0) ;  true
606 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
607 : LD   1, 1(5) ;  Load parameter 'p' into R1
608 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
609 : LD   1, 2(5) ;  Load parameter 'q' into R1
610 : SUB  1, 2, 1 ;  left - right for equality check
611 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
612 : LDC  1, 0(0) ;  false
613 : LDA  7, 1(7) ;  skip setting true
614 : LDC  1, 1(0) ;  true
615 : ADD  1, 2, 1 ;  R1 = left OR right
616 : ST   1, 3(5) ;  Store function result into stack frame
617 : LD   6, 0(5) ;  Load return address
618 : LDA  7, 0(6) ;  Return to caller
619 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
620 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
621 : LD   1, 1(5) ;  Load parameter 'n' into R1
622 : SUB  1, 2, 1 ;  left - right for less-than check
623 : JLT  1, 2(7) ;  If R1 < 0, jump to true
624 : LDC  1, 0(0) ;  false
625 : LDA  7, 1(7) ;  skip setting true
626 : LDC  1, 1(0) ;  true
627 : JEQ  1, 643(0) ;  If condition is false, jump to ELSE
628 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
629 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
630 : LD   1, 1(5) ;  Load parameter 'n' into R1
631 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
632 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
633 : DIV  1, 2, 1 ;  R1 = left / right
634 : MUL  1, 2, 1 ;  R1 = left * right
635 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
636 : LD   1, 1(5) ;  Load parameter 'n' into R1
637 : SUB  1, 2, 1 ;  left - right for less-than check
638 : JLT  1, 2(7) ;  If R1 < 0, jump to true
639 : LDC  1, 0(0) ;  false
640 : LDA  7, 1(7) ;  skip setting true
641 : LDC  1, 1(0) ;  true
642 : LDA  7, 652(0) ;  Skip ELSE block
643 : LD   1, 1(5) ;  Load parameter 'n' into R1
644 : SUB  1, 0, 1 ;  Negate value in R1
645 : ST   1, 1(5) ;  Store argument Tree Node('UNARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=18)],line=18)
646 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ODD'
647 : LDA  6, 2(7) ;  Compute return address
648 : ST   6, 0(5) ;  Store return address in frame
649 : LDA  7, 619(0) ;  Call ODD
650 : LD   1, 2(5) ;  Load return value into R1
651 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
652 : ST   1, 2(5) ;  Store function result into stack frame
653 : LD   6, 0(5) ;  Load return address
654 : LDA  7, 0(6) ;  Return to caller
655 : LD   1, 2(5) ;  Load parameter 'n' into R1
656 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
657 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
658 : SUB  1, 2, 1 ;  left - right for equality check
659 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
660 : LDC  1, 0(0) ;  false
661 : LDA  7, 1(7) ;  skip setting true
662 : LDC  1, 1(0) ;  true
663 : JEQ  1, 666(0) ;  If condition is false, jump to ELSE
664 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
665 : LDA  7, 682(0) ;  Skip ELSE block
666 : LD   1, 1(5) ;  Load parameter 'm' into R1
667 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
668 : LD   1, 1(5) ;  Load parameter 'm' into R1
669 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=13)
670 : LD   1, 2(5) ;  Load parameter 'n' into R1
671 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
672 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
673 : SUB  1, 2, 1 ;  R1 = left - right
674 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=13), Tree Node('INTEGER-LITERAL', value='1',line=13)],line=13)
675 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
676 : LDA  6, 2(7) ;  Compute return address
677 : ST   6, 0(5) ;  Store return address in frame
678 : LDA  7, 655(0) ;  Call EXP
679 : LD   1, 3(5) ;  Load return value into R1
680 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
681 : MUL  1, 2, 1 ;  R1 = left * right
682 : ST   1, 3(5) ;  Store function result into stack frame
683 : LD   6, 0(5) ;  Load return address
684 : LDA  7, 0(6) ;  Return to caller
685 : LD   1, 1(5) ;  Load parameter 'm' into R1
686 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
687 : LD   1, 2(5) ;  Load parameter 'n' into R1
688 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
689 : LD   1, 1(5) ;  Load parameter 'm' into R1
690 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
691 : LD   1, 2(5) ;  Load parameter 'n' into R1
692 : DIV  1, 2, 1 ;  R1 = left / right
693 : MUL  1, 2, 1 ;  R1 = left * right
694 : SUB  1, 2, 1 ;  R1 = left - right
695 : ST   1, 3(5) ;  Store function result into stack frame
696 : LD   6, 0(5) ;  Load return address
697 : LDA  7, 0(6) ;  Return to caller
