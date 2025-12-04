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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'createLoop'
12 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=124) into callee frame
15 : LD   1, 1(5) ;  Load parameter 'length' into R1
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
20 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
21 : SUB  1, 2, 1 ;  R1 = left - right
22 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124) into callee frame
23 : LDA 6, 2(7) ;  Compute return address
24 : ST 6, 0(5) ;  Store return address in callee frame
25 : LDA 7, 655(0) ;  Call EXP
26 : LD 1, 3(5) ;  Load callee return value into R1
27 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
28 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=124), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=124), Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)],line=124)],line=124) into callee frame
29 : LD   1, 1(5) ;  Load parameter 'length' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
32 : DIV  1, 2, 1 ;  R1 = left / right
33 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124) into callee frame
34 : LDA 6, 2(7) ;  Compute return address
35 : ST 6, 0(5) ;  Store return address in callee frame
36 : LDA 7, 43(0) ;  Call createLoop
37 : LD 1, 3(5) ;  Load callee return value into R1
38 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
39 : ST 1, 4(0) ;  Store function-call result into caller's return slot
40 : LD   1, 4(0) ;  Load return value into register 1
41 : LD  6, 2(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'aLoop'
44 : LD   1, 1(5) ;  Load parameter 'a' into R1
45 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=119) into callee frame
46 : LD   1, 2(5) ;  Load parameter 'n' into R1
47 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=119) into callee frame
48 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='10',line=119), Tree Node('IDENTIFIER', value='a',line=119)],line=119) into callee frame
53 : LDA 6, 2(7) ;  Compute return address
54 : ST 6, 0(5) ;  Store return address in callee frame
55 : LDA 7, 61(0) ;  Call aLoop
56 : LD 1, 4(5) ;  Load callee return value into R1
57 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
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
70 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'aLoop1'
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115) into callee frame
73 : LD   1, 2(5) ;  Load parameter 'n' into R1
74 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115) into callee frame
75 : LD   1, 3(5) ;  Load parameter 'upper' into R1
76 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=115) into callee frame
77 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
78 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
79 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'EXP'
80 : LD   1, 1(5) ;  Load parameter 'a' into R1
81 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=115) into callee frame
82 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
83 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=115) into callee frame
84 : LDA 6, 2(7) ;  Compute return address
85 : ST 6, 0(5) ;  Store return address in callee frame
86 : LDA 7, 655(0) ;  Call EXP
87 : LD 1, 3(5) ;  Load callee return value into R1
88 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
91 : LDC  1, 4(0) ;  Load boolean-literal value into register 1
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'EXP'
94 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
95 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=115) into callee frame
96 : LD   1, 2(5) ;  Load parameter 'n' into R1
97 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=115) into callee frame
98 : LDA 6, 2(7) ;  Compute return address
99 : ST 6, 0(5) ;  Store return address in callee frame
100 : LDA 7, 655(0) ;  Call EXP
101 : LD 1, 3(5) ;  Load callee return value into R1
102 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
103 : MUL  1, 2, 1 ;  R1 = left * right
104 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
105 : LD   1, 1(5) ;  Load parameter 'a' into R1
106 : MUL  1, 2, 1 ;  R1 = left * right
107 : ADD  1, 2, 1 ;  R1 = left + right
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
110 : ADD  1, 2, 1 ;  R1 = left + right
111 : ST 1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=115), Tree Node('INTEGER-LITERAL', value='2',line=115)],line=115)],line=115)],line=115), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('INTEGER-LITERAL', value='4',line=115), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=115), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=115), Tree Node('IDENTIFIER', value='n',line=115)],line=115)],line=115)],line=115), Tree Node('IDENTIFIER', value='a',line=115)],line=115)],line=115), Tree Node('INTEGER-LITERAL', value='1',line=115)],line=115) into callee frame
112 : LDA 6, 2(7) ;  Compute return address
113 : ST 6, 0(5) ;  Store return address in callee frame
114 : LDA 7, 122(0) ;  Call aLoop1
115 : LD 1, 5(5) ;  Load callee return value into R1
116 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
117 : LDA  7, 119(0) ;  Skip ELSE block
118 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
119 : ST   1, 4(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
122 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'aLoop2'
123 : LD   1, 1(5) ;  Load parameter 'a' into R1
124 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=111) into callee frame
125 : LD   1, 2(5) ;  Load parameter 'n' into R1
126 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=111) into callee frame
127 : LD   1, 3(5) ;  Load parameter 'upper' into R1
128 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=111) into callee frame
129 : LD   1, 4(5) ;  Load parameter 'det' into R1
130 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111) into callee frame
131 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'SQRT'
132 : LD   1, 4(5) ;  Load parameter 'det' into R1
133 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=111) into callee frame
134 : LDA 6, 2(7) ;  Compute return address
135 : ST 6, 0(5) ;  Store return address in callee frame
136 : LDA 7, 583(0) ;  Call SQRT
137 : LD 1, 2(5) ;  Load callee return value into R1
138 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
139 : ST 1, 5(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='SQRT',line=111), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='det',line=111)],line=111)],line=111) into callee frame
140 : LDA 6, 2(7) ;  Compute return address
141 : ST 6, 0(5) ;  Store return address in callee frame
142 : LDA 7, 148(0) ;  Call aLoop2
143 : LD 1, 6(5) ;  Load callee return value into R1
144 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
145 : ST   1, 5(5) ;  Store function result into stack frame
146 : LD   6, 0(5) ;  Load return address
147 : LDA  7, 0(6) ;  Return to caller
148 : LDA 5, 7(5) ;  Advance DMEM pointer to callee frame 'aLoop3'
149 : LD   1, 1(5) ;  Load parameter 'a' into R1
150 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=105) into callee frame
151 : LD   1, 2(5) ;  Load parameter 'n' into R1
152 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105) into callee frame
153 : LD   1, 3(5) ;  Load parameter 'upper' into R1
154 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=105) into callee frame
155 : LD   1, 4(5) ;  Load parameter 'det' into R1
156 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=105) into callee frame
157 : LD   1, 5(5) ;  Load parameter 'root' into R1
158 : ST 1, 5(5) ;  Store argument Tree Node('IDENTIFIER', value='root',line=105) into callee frame
159 : LD   1, 1(5) ;  Load parameter 'a' into R1
160 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
161 : LDA 5, 7(5) ;  Advance DMEM pointer to callee frame 'EXP'
162 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
163 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=105) into callee frame
164 : LD   1, 2(5) ;  Load parameter 'n' into R1
165 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=105) into callee frame
166 : LDA 6, 2(7) ;  Compute return address
167 : ST 6, 0(5) ;  Store return address in callee frame
168 : LDA 7, 655(0) ;  Call EXP
169 : LD 1, 3(5) ;  Load callee return value into R1
170 : LDA 5, -7(5) ;  Restore DMEM pointer to caller frame
171 : MUL  1, 2, 1 ;  R1 = left * right
172 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
173 : LD   1, 5(5) ;  Load parameter 'root' into R1
174 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
175 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
176 : ADD  1, 2, 1 ;  R1 = left + right
177 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
178 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
179 : DIV  1, 2, 1 ;  R1 = left / right
180 : ADD  1, 2, 1 ;  R1 = left + right
181 : ST 1, 6(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='a',line=105), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=105), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=105), Tree Node('IDENTIFIER', value='n',line=105)],line=105)],line=105)],line=105), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=105), Tree Node('INTEGER-LITERAL', value='1',line=105)],line=105), Tree Node('INTEGER-LITERAL', value='2',line=105)],line=105)],line=105) into callee frame
182 : LDA 6, 2(7) ;  Compute return address
183 : ST 6, 0(5) ;  Store return address in callee frame
184 : LDA 7, 190(0) ;  Call aLoop3
185 : LD 1, 7(5) ;  Load callee return value into R1
186 : LDA 5, -7(5) ;  Restore DMEM pointer to caller frame
187 : ST   1, 6(5) ;  Store function result into stack frame
188 : LD   6, 0(5) ;  Load return address
189 : LDA  7, 0(6) ;  Return to caller
190 : LDA 5, 8(5) ;  Advance DMEM pointer to callee frame 'ISROOT'
191 : LD   1, 5(5) ;  Load parameter 'root' into R1
192 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='root',line=96) into callee frame
193 : LD   1, 4(5) ;  Load parameter 'det' into R1
194 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='det',line=96) into callee frame
195 : LDA 6, 2(7) ;  Compute return address
196 : ST 6, 0(5) ;  Store return address in callee frame
197 : LDA 7, 446(0) ;  Call ISROOT
198 : LD 1, 3(5) ;  Load callee return value into R1
199 : LDA 5, -8(5) ;  Restore DMEM pointer to caller frame
200 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
201 : LDA 5, 8(5) ;  Advance DMEM pointer to callee frame 'EVEN'
202 : LD   1, 5(5) ;  Load parameter 'root' into R1
203 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
204 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
205 : ADD  1, 2, 1 ;  R1 = left + right
206 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='root',line=96), Tree Node('INTEGER-LITERAL', value='1',line=96)],line=96) into callee frame
207 : LDA 6, 2(7) ;  Compute return address
208 : ST 6, 0(5) ;  Store return address in callee frame
209 : LDA 7, 460(0) ;  Call EVEN
210 : LD 1, 2(5) ;  Load callee return value into R1
211 : LDA 5, -8(5) ;  Restore DMEM pointer to caller frame
212 : MUL  1, 2, 1 ;  R1 = left AND right
213 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
214 : LDA 5, 8(5) ;  Advance DMEM pointer to callee frame 'isExcellent'
215 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
216 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=96) into callee frame
217 : LDA 6, 2(7) ;  Compute return address
218 : ST 6, 0(5) ;  Store return address in callee frame
219 : LDA 7, 282(0) ;  Call isExcellent
220 : LD 1, 2(5) ;  Load callee return value into R1
221 : LDA 5, -8(5) ;  Restore DMEM pointer to caller frame
222 : MUL  1, 2, 1 ;  R1 = left AND right
223 : JEQ  1, 239(0) ;  If condition is false, jump to ELSE
224 : LDA 5, 8(5) ;  Advance DMEM pointer to callee frame 'printCandidateAndContinue'
225 : LD   1, 1(5) ;  Load parameter 'a' into R1
226 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=97) into callee frame
227 : LD   1, 2(5) ;  Load parameter 'n' into R1
228 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=97) into callee frame
229 : LD   1, 3(5) ;  Load parameter 'upper' into R1
230 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=97) into callee frame
231 : LD   1, 6(5) ;  Load parameter 'candidate' into R1
232 : ST 1, 4(5) ;  Store argument Tree Node('IDENTIFIER', value='candidate',line=97) into callee frame
233 : LDA 6, 2(7) ;  Compute return address
234 : ST 6, 0(5) ;  Store return address in callee frame
235 : LDA 7, 257(0) ;  Call printCandidateAndContinue
236 : LD 1, 5(5) ;  Load callee return value into R1
237 : LDA 5, -8(5) ;  Restore DMEM pointer to caller frame
238 : LDA  7, 254(0) ;  Skip ELSE block
239 : LDA 5, 8(5) ;  Advance DMEM pointer to callee frame 'aLoop'
240 : LD   1, 1(5) ;  Load parameter 'a' into R1
241 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
242 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
243 : ADD  1, 2, 1 ;  R1 = left + right
244 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=98), Tree Node('INTEGER-LITERAL', value='1',line=98)],line=98) into callee frame
245 : LD   1, 2(5) ;  Load parameter 'n' into R1
246 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=98) into callee frame
247 : LD   1, 3(5) ;  Load parameter 'upper' into R1
248 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=98) into callee frame
249 : LDA 6, 2(7) ;  Compute return address
250 : ST 6, 0(5) ;  Store return address in callee frame
251 : LDA 7, 61(0) ;  Call aLoop
252 : LD 1, 4(5) ;  Load callee return value into R1
253 : LDA 5, -8(5) ;  Restore DMEM pointer to caller frame
254 : ST   1, 7(5) ;  Store function result into stack frame
255 : LD   6, 0(5) ;  Load return address
256 : LDA  7, 0(6) ;  Return to caller
257 : LD   1, 4(5) ;  Load parameter 'candidate' into R1
258 : LDA  5, 6(5) ;  Update DMEM pointer
259 : LDA  6, 2(7) ;  Compute return address
260 : ST   6, 0(5) ;  Store return address
261 : LDA  7, 8(0) ; Call print
262 : LDC  5, -6(5) ;  Move pointer to previous stack frame
263 : ST   1, 5(5) ;  Store function result into stack frame
264 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'aLoop'
265 : LD   1, 1(5) ;  Load parameter 'a' into R1
266 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
267 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
268 : ADD  1, 2, 1 ;  R1 = left + right
269 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=88), Tree Node('INTEGER-LITERAL', value='1',line=88)],line=88) into callee frame
270 : LD   1, 2(5) ;  Load parameter 'n' into R1
271 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=88) into callee frame
272 : LD   1, 3(5) ;  Load parameter 'upper' into R1
273 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='upper',line=88) into callee frame
274 : LDA 6, 2(7) ;  Compute return address
275 : ST 6, 0(5) ;  Store return address in callee frame
276 : LDA 7, 61(0) ;  Call aLoop
277 : LD 1, 4(5) ;  Load callee return value into R1
278 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
279 : ST   1, 5(5) ;  Store function result into stack frame
280 : LD   6, 0(5) ;  Load return address
281 : LDA  7, 0(6) ;  Return to caller
282 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'isExcellentSwitch'
283 : LD   1, 1(5) ;  Load parameter 'n' into R1
284 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78) into callee frame
285 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
286 : LD   1, 1(5) ;  Load parameter 'n' into R1
287 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=78) into callee frame
288 : LDA 6, 2(7) ;  Compute return address
289 : ST 6, 0(5) ;  Store return address in callee frame
290 : LDA 7, 418(0) ;  Call length
291 : LD 1, 2(5) ;  Load callee return value into R1
292 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
293 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=78), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=78)],line=78)],line=78) into callee frame
294 : LDA 6, 2(7) ;  Compute return address
295 : ST 6, 0(5) ;  Store return address in callee frame
296 : LDA 7, 302(0) ;  Call isExcellentSwitch
297 : LD 1, 3(5) ;  Load callee return value into R1
298 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
299 : ST   1, 2(5) ;  Store function result into stack frame
300 : LD   6, 0(5) ;  Load return address
301 : LDA  7, 0(6) ;  Return to caller
302 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'ODD'
303 : LD   1, 2(5) ;  Load parameter 'length' into R1
304 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='length',line=73) into callee frame
305 : LDA 6, 2(7) ;  Compute return address
306 : ST 6, 0(5) ;  Store return address in callee frame
307 : LDA 7, 619(0) ;  Call ODD
308 : LD 1, 2(5) ;  Load callee return value into R1
309 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
310 : JEQ  1, 313(0) ;  If condition is false, jump to ELSE
311 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
312 : LDA  7, 344(0) ;  Skip ELSE block
313 : LD   1, 1(5) ;  Load parameter 'n' into R1
314 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
315 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'excellentDiff'
316 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'a'
317 : LD   1, 1(5) ;  Load parameter 'n' into R1
318 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
319 : LDA 6, 2(7) ;  Compute return address
320 : ST 6, 0(5) ;  Store return address in callee frame
321 : LDA 7, 392(0) ;  Call a
322 : LD 1, 2(5) ;  Load callee return value into R1
323 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
324 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='a',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75) into callee frame
325 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'b'
326 : LD   1, 1(5) ;  Load parameter 'n' into R1
327 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
328 : LDA 6, 2(7) ;  Compute return address
329 : ST 6, 0(5) ;  Store return address in callee frame
330 : LDA 7, 360(0) ;  Call b
331 : LD 1, 2(5) ;  Load callee return value into R1
332 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
333 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='b',line=75), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=75)],line=75)],line=75) into callee frame
334 : LDA 6, 2(7) ;  Compute return address
335 : ST 6, 0(5) ;  Store return address in callee frame
336 : LDA 7, 347(0) ;  Call excellentDiff
337 : LD 1, 3(5) ;  Load callee return value into R1
338 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
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
360 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'MOD'
361 : LD   1, 1(5) ;  Load parameter 'n' into R1
362 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67) into callee frame
363 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
364 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
365 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=67) into callee frame
366 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
367 : LD   1, 1(5) ;  Load parameter 'n' into R1
368 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67) into callee frame
369 : LDA 6, 2(7) ;  Compute return address
370 : ST 6, 0(5) ;  Store return address in callee frame
371 : LDA 7, 418(0) ;  Call length
372 : LD 1, 2(5) ;  Load callee return value into R1
373 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
374 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
375 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
376 : DIV  1, 2, 1 ;  R1 = left / right
377 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67) into callee frame
378 : LDA 6, 2(7) ;  Compute return address
379 : ST 6, 0(5) ;  Store return address in callee frame
380 : LDA 7, 655(0) ;  Call EXP
381 : LD 1, 3(5) ;  Load callee return value into R1
382 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
383 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=67), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=67), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=67)],line=67)],line=67), Tree Node('INTEGER-LITERAL', value='2',line=67)],line=67)],line=67)],line=67) into callee frame
384 : LDA 6, 2(7) ;  Compute return address
385 : ST 6, 0(5) ;  Store return address in callee frame
386 : LDA 7, 685(0) ;  Call MOD
387 : LD 1, 3(5) ;  Load callee return value into R1
388 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
389 : ST   1, 2(5) ;  Store function result into stack frame
390 : LD   6, 0(5) ;  Load return address
391 : LDA  7, 0(6) ;  Return to caller
392 : LD   1, 1(5) ;  Load parameter 'n' into R1
393 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
394 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
395 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
396 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=63) into callee frame
397 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
398 : LD   1, 1(5) ;  Load parameter 'n' into R1
399 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=63) into callee frame
400 : LDA 6, 2(7) ;  Compute return address
401 : ST 6, 0(5) ;  Store return address in callee frame
402 : LDA 7, 418(0) ;  Call length
403 : LD 1, 2(5) ;  Load callee return value into R1
404 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
405 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
406 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
407 : DIV  1, 2, 1 ;  R1 = left / right
408 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=63), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=63)],line=63)],line=63), Tree Node('INTEGER-LITERAL', value='2',line=63)],line=63) into callee frame
409 : LDA 6, 2(7) ;  Compute return address
410 : ST 6, 0(5) ;  Store return address in callee frame
411 : LDA 7, 655(0) ;  Call EXP
412 : LD 1, 3(5) ;  Load callee return value into R1
413 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
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
431 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
432 : LD   1, 1(5) ;  Load parameter 'n' into R1
433 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
434 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
435 : DIV  1, 2, 1 ;  R1 = left / right
436 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=59), Tree Node('INTEGER-LITERAL', value='10',line=59)],line=59) into callee frame
437 : LDA 6, 2(7) ;  Compute return address
438 : ST 6, 0(5) ;  Store return address in callee frame
439 : LDA 7, 418(0) ;  Call length
440 : LD 1, 2(5) ;  Load callee return value into R1
441 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
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
477 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'LE'
478 : LD   1, 4(5) ;  Load parameter 'mid' into R1
479 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
480 : LD   1, 4(5) ;  Load parameter 'mid' into R1
481 : MUL  1, 2, 1 ;  R1 = left * right
482 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='mid',line=37), Tree Node('IDENTIFIER', value='mid',line=37)],line=37) into callee frame
483 : LD   1, 1(5) ;  Load parameter 'n' into R1
484 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=37) into callee frame
485 : LDA 6, 2(7) ;  Compute return address
486 : ST 6, 0(5) ;  Store return address in callee frame
487 : LDA 7, 598(0) ;  Call LE
488 : LD 1, 3(5) ;  Load callee return value into R1
489 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
490 : JEQ  1, 504(0) ;  If condition is false, jump to ELSE
491 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
492 : LD   1, 1(5) ;  Load parameter 'n' into R1
493 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=38) into callee frame
494 : LD   1, 4(5) ;  Load parameter 'mid' into R1
495 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=38) into callee frame
496 : LD   1, 3(5) ;  Load parameter 'high' into R1
497 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=38) into callee frame
498 : LDA 6, 2(7) ;  Compute return address
499 : ST 6, 0(5) ;  Store return address in callee frame
500 : LDA 7, 519(0) ;  Call SQRTSEARCH
501 : LD 1, 4(5) ;  Load callee return value into R1
502 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
503 : LDA  7, 516(0) ;  Skip ELSE block
504 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
505 : LD   1, 1(5) ;  Load parameter 'n' into R1
506 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=40) into callee frame
507 : LD   1, 2(5) ;  Load parameter 'low' into R1
508 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=40) into callee frame
509 : LD   1, 4(5) ;  Load parameter 'mid' into R1
510 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=40) into callee frame
511 : LDA 6, 2(7) ;  Compute return address
512 : ST 6, 0(5) ;  Store return address in callee frame
513 : LDA 7, 519(0) ;  Call SQRTSEARCH
514 : LD 1, 4(5) ;  Load callee return value into R1
515 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
516 : ST   1, 5(5) ;  Store function result into stack frame
517 : LD   6, 0(5) ;  Load return address
518 : LDA  7, 0(6) ;  Return to caller
519 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
520 : LD   1, 3(5) ;  Load parameter 'high' into R1
521 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=27) into callee frame
522 : LD   1, 2(5) ;  Load parameter 'low' into R1
523 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
524 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
525 : ADD  1, 2, 1 ;  R1 = left + right
526 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=27), Tree Node('INTEGER-LITERAL', value='1',line=27)],line=27) into callee frame
527 : LDA 6, 2(7) ;  Compute return address
528 : ST 6, 0(5) ;  Store return address in callee frame
529 : LDA 7, 598(0) ;  Call LE
530 : LD 1, 3(5) ;  Load callee return value into R1
531 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
532 : JEQ  1, 560(0) ;  If condition is false, jump to ELSE
533 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
534 : LD   1, 1(5) ;  Load parameter 'n' into R1
535 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
536 : LD   1, 2(5) ;  Load parameter 'low' into R1
537 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
538 : LD   1, 2(5) ;  Load parameter 'low' into R1
539 : MUL  1, 2, 1 ;  R1 = left * right
540 : SUB  1, 2, 1 ;  R1 = left - right
541 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=28), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='low',line=28), Tree Node('IDENTIFIER', value='low',line=28)],line=28)],line=28) into callee frame
542 : LD   1, 3(5) ;  Load parameter 'high' into R1
543 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
544 : LD   1, 3(5) ;  Load parameter 'high' into R1
545 : MUL  1, 2, 1 ;  R1 = left * right
546 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
547 : LD   1, 1(5) ;  Load parameter 'n' into R1
548 : SUB  1, 2, 1 ;  R1 = left - right
549 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='high',line=28), Tree Node('IDENTIFIER', value='high',line=28)],line=28), Tree Node('IDENTIFIER', value='n',line=28)],line=28) into callee frame
550 : LDA 6, 2(7) ;  Compute return address
551 : ST 6, 0(5) ;  Store return address in callee frame
552 : LDA 7, 598(0) ;  Call LE
553 : LD 1, 3(5) ;  Load callee return value into R1
554 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
555 : JEQ  1, 558(0) ;  If condition is false, jump to ELSE
556 : LD   1, 2(5) ;  Load parameter 'low' into R1
557 : LDA  7, 559(0) ;  Skip ELSE block
558 : LD   1, 3(5) ;  Load parameter 'high' into R1
559 : LDA  7, 580(0) ;  Skip ELSE block
560 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'SQRTSPLIT'
561 : LD   1, 1(5) ;  Load parameter 'n' into R1
562 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=33) into callee frame
563 : LD   1, 2(5) ;  Load parameter 'low' into R1
564 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=33) into callee frame
565 : LD   1, 3(5) ;  Load parameter 'high' into R1
566 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=33) into callee frame
567 : LD   1, 2(5) ;  Load parameter 'low' into R1
568 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
569 : LD   1, 3(5) ;  Load parameter 'high' into R1
570 : ADD  1, 2, 1 ;  R1 = left + right
571 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
572 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
573 : DIV  1, 2, 1 ;  R1 = left / right
574 : ST 1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=33), Tree Node('IDENTIFIER', value='high',line=33)],line=33), Tree Node('INTEGER-LITERAL', value='2',line=33)],line=33) into callee frame
575 : LDA 6, 2(7) ;  Compute return address
576 : ST 6, 0(5) ;  Store return address in callee frame
577 : LDA 7, 477(0) ;  Call SQRTSPLIT
578 : LD 1, 5(5) ;  Load callee return value into R1
579 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
580 : ST   1, 4(5) ;  Store function result into stack frame
581 : LD   6, 0(5) ;  Load return address
582 : LDA  7, 0(6) ;  Return to caller
583 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
584 : LD   1, 1(5) ;  Load parameter 'n' into R1
585 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24) into callee frame
586 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
587 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=24) into callee frame
588 : LD   1, 1(5) ;  Load parameter 'n' into R1
589 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=24) into callee frame
590 : LDA 6, 2(7) ;  Compute return address
591 : ST 6, 0(5) ;  Store return address in callee frame
592 : LDA 7, 519(0) ;  Call SQRTSEARCH
593 : LD 1, 4(5) ;  Load callee return value into R1
594 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
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
643 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
644 : LD   1, 1(5) ;  Load parameter 'n' into R1
645 : SUB  1, 0, 1 ;  Negate value in R1
646 : ST 1, 1(5) ;  Store argument Tree Node('UNARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=18)],line=18) into callee frame
647 : LDA 6, 2(7) ;  Compute return address
648 : ST 6, 0(5) ;  Store return address in callee frame
649 : LDA 7, 619(0) ;  Call ODD
650 : LD 1, 2(5) ;  Load callee return value into R1
651 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
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
668 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
669 : LD   1, 1(5) ;  Load parameter 'm' into R1
670 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=13) into callee frame
671 : LD   1, 2(5) ;  Load parameter 'n' into R1
672 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
673 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
674 : SUB  1, 2, 1 ;  R1 = left - right
675 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=13), Tree Node('INTEGER-LITERAL', value='1',line=13)],line=13) into callee frame
676 : LDA 6, 2(7) ;  Compute return address
677 : ST 6, 0(5) ;  Store return address in callee frame
678 : LDA 7, 655(0) ;  Call EXP
679 : LD 1, 3(5) ;  Load callee return value into R1
680 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
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
