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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'SQRT'
12 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
13 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=4) into callee frame
14 : LDA 6, 2(7) ;  Compute return address
15 : ST 6, 0(5) ;  Store return address in callee frame
16 : LDA 7, 160(0) ;  Call SQRT
17 : LD 1, 2(5) ;  Load callee return value into R1
18 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
19 : LDA  5, 3(5) ;  Update DMEM pointer
20 : LDA  6, 2(7) ;  Compute return address
21 : ST   6, 0(5) ;  Store return address
22 : LDA  7, 8(0) ; Call print
23 : LDC  5, -3(5) ;  Move pointer to previous stack frame
24 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
25 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
26 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=5) into callee frame
27 : LDA 6, 2(7) ;  Compute return address
28 : ST 6, 0(5) ;  Store return address in callee frame
29 : LDA 7, 175(0) ;  Call ODD
30 : LD 1, 2(5) ;  Load callee return value into R1
31 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
32 : ST 1, 4(0) ;  Store function-call result into caller's return slot
33 : LD   1, 4(0) ;  Load return value into register 1
34 : LD  6, 2(0) ;  Load return address for main function into register 6
35 : LDA  7, 0(6) ;  Jump to return address of main function
36 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'LE'
37 : LD   1, 4(5) ;  Load parameter 'mid' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 4(5) ;  Load parameter 'mid' into R1
40 : MUL  1, 2, 1 ;  R1 = left * right
41 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='mid',line=88), Tree Node('IDENTIFIER', value='mid',line=88)],line=88) into callee frame
42 : LD   1, 1(5) ;  Load parameter 'n' into R1
43 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=88) into callee frame
44 : LDA 6, 2(7) ;  Compute return address
45 : ST 6, 0(5) ;  Store return address in callee frame
46 : LDA 7, 416(0) ;  Call LE
47 : LD 1, 3(5) ;  Load callee return value into R1
48 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
49 : JEQ  1, 63(0) ;  If condition is false, jump to ELSE
50 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
51 : LD   1, 1(5) ;  Load parameter 'n' into R1
52 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=89) into callee frame
53 : LD   1, 4(5) ;  Load parameter 'mid' into R1
54 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=89) into callee frame
55 : LD   1, 3(5) ;  Load parameter 'high' into R1
56 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=89) into callee frame
57 : LDA 6, 2(7) ;  Compute return address
58 : ST 6, 0(5) ;  Store return address in callee frame
59 : LDA 7, 78(0) ;  Call SQRTSEARCH
60 : LD 1, 4(5) ;  Load callee return value into R1
61 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
62 : LDA  7, 75(0) ;  Skip ELSE block
63 : LDA 5, 6(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
64 : LD   1, 1(5) ;  Load parameter 'n' into R1
65 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=91) into callee frame
66 : LD   1, 2(5) ;  Load parameter 'low' into R1
67 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=91) into callee frame
68 : LD   1, 4(5) ;  Load parameter 'mid' into R1
69 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=91) into callee frame
70 : LDA 6, 2(7) ;  Compute return address
71 : ST 6, 0(5) ;  Store return address in callee frame
72 : LDA 7, 78(0) ;  Call SQRTSEARCH
73 : LD 1, 4(5) ;  Load callee return value into R1
74 : LDA 5, -6(5) ;  Restore DMEM pointer to caller frame
75 : ST   1, 5(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
79 : LD   1, 3(5) ;  Load parameter 'high' into R1
80 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=78) into callee frame
81 : LD   1, 2(5) ;  Load parameter 'low' into R1
82 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
83 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
84 : ADD  1, 2, 1 ;  R1 = left + right
85 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=78), Tree Node('INTEGER-LITERAL', value='1',line=78)],line=78) into callee frame
86 : LDA 6, 2(7) ;  Compute return address
87 : ST 6, 0(5) ;  Store return address in callee frame
88 : LDA 7, 416(0) ;  Call LE
89 : LD 1, 3(5) ;  Load callee return value into R1
90 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
91 : JEQ  1, 131(0) ;  If condition is false, jump to ELSE
92 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'LE'
93 : LD   1, 1(5) ;  Load parameter 'n' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'TIMES'
96 : LD   1, 2(5) ;  Load parameter 'low' into R1
97 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=79) into callee frame
98 : LD   1, 2(5) ;  Load parameter 'low' into R1
99 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=79) into callee frame
100 : LDA 6, 2(7) ;  Compute return address
101 : ST 6, 0(5) ;  Store return address in callee frame
102 : LDA 7, 350(0) ;  Call TIMES
103 : LD 1, 3(5) ;  Load callee return value into R1
104 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
105 : SUB  1, 2, 1 ;  R1 = left - right
106 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=79), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='TIMES',line=79), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='low',line=79), Tree Node('IDENTIFIER', value='low',line=79)],line=79)],line=79)],line=79) into callee frame
107 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'TIMES'
108 : LD   1, 3(5) ;  Load parameter 'high' into R1
109 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=79) into callee frame
110 : LD   1, 3(5) ;  Load parameter 'high' into R1
111 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=79) into callee frame
112 : LDA 6, 2(7) ;  Compute return address
113 : ST 6, 0(5) ;  Store return address in callee frame
114 : LDA 7, 350(0) ;  Call TIMES
115 : LD 1, 3(5) ;  Load callee return value into R1
116 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
117 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : SUB  1, 2, 1 ;  R1 = left - right
120 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='TIMES',line=79), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='high',line=79), Tree Node('IDENTIFIER', value='high',line=79)],line=79)],line=79), Tree Node('IDENTIFIER', value='n',line=79)],line=79) into callee frame
121 : LDA 6, 2(7) ;  Compute return address
122 : ST 6, 0(5) ;  Store return address in callee frame
123 : LDA 7, 416(0) ;  Call LE
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
126 : JEQ  1, 129(0) ;  If condition is false, jump to ELSE
127 : LD   1, 2(5) ;  Load parameter 'low' into R1
128 : LDA  7, 130(0) ;  Skip ELSE block
129 : LD   1, 3(5) ;  Load parameter 'high' into R1
130 : LDA  7, 157(0) ;  Skip ELSE block
131 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'SQRTSPLIT'
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=84) into callee frame
134 : LD   1, 2(5) ;  Load parameter 'low' into R1
135 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=84) into callee frame
136 : LD   1, 3(5) ;  Load parameter 'high' into R1
137 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=84) into callee frame
138 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'PLUS'
139 : LD   1, 2(5) ;  Load parameter 'low' into R1
140 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=84) into callee frame
141 : LD   1, 3(5) ;  Load parameter 'high' into R1
142 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=84) into callee frame
143 : LDA 6, 2(7) ;  Compute return address
144 : ST 6, 0(5) ;  Store return address in callee frame
145 : LDA 7, 364(0) ;  Call PLUS
146 : LD 1, 3(5) ;  Load callee return value into R1
147 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
148 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
149 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
150 : DIV  1, 2, 1 ;  R1 = left / right
151 : ST 1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='PLUS',line=84), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='low',line=84), Tree Node('IDENTIFIER', value='high',line=84)],line=84)],line=84), Tree Node('INTEGER-LITERAL', value='2',line=84)],line=84) into callee frame
152 : LDA 6, 2(7) ;  Compute return address
153 : ST 6, 0(5) ;  Store return address in callee frame
154 : LDA 7, 36(0) ;  Call SQRTSPLIT
155 : LD 1, 5(5) ;  Load callee return value into R1
156 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
157 : ST   1, 4(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
160 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'SQRTSEARCH'
161 : LD   1, 1(5) ;  Load parameter 'n' into R1
162 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
163 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
164 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=75) into callee frame
165 : LD   1, 1(5) ;  Load parameter 'n' into R1
166 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75) into callee frame
167 : LDA 6, 2(7) ;  Compute return address
168 : ST 6, 0(5) ;  Store return address in callee frame
169 : LDA 7, 78(0) ;  Call SQRTSEARCH
170 : LD 1, 4(5) ;  Load callee return value into R1
171 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
172 : ST   1, 2(5) ;  Store function result into stack frame
173 : LD   6, 0(5) ;  Load return address
174 : LDA  7, 0(6) ;  Return to caller
175 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'LE'
176 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
177 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=67) into callee frame
178 : LD   1, 1(5) ;  Load parameter 'n' into R1
179 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67) into callee frame
180 : LDA 6, 2(7) ;  Compute return address
181 : ST 6, 0(5) ;  Store return address in callee frame
182 : LDA 7, 416(0) ;  Call LE
183 : LD 1, 3(5) ;  Load callee return value into R1
184 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
185 : JEQ  1, 218(0) ;  If condition is false, jump to ELSE
186 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'GT'
187 : LD   1, 1(5) ;  Load parameter 'n' into R1
188 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68) into callee frame
189 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
190 : LD   1, 1(5) ;  Load parameter 'n' into R1
191 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68) into callee frame
192 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
193 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=68) into callee frame
194 : LDA 6, 2(7) ;  Compute return address
195 : ST 6, 0(5) ;  Store return address in callee frame
196 : LDA 7, 343(0) ;  Call DIV
197 : LD 1, 3(5) ;  Load callee return value into R1
198 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
199 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
200 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
201 : LD   1, 1(5) ;  Load parameter 'n' into R1
202 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68) into callee frame
203 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
204 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=68) into callee frame
205 : LDA 6, 2(7) ;  Compute return address
206 : ST 6, 0(5) ;  Store return address in callee frame
207 : LDA 7, 343(0) ;  Call DIV
208 : LD 1, 3(5) ;  Load callee return value into R1
209 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
210 : ADD  1, 2, 1 ;  R1 = left + right
211 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=68), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=68), Tree Node('INTEGER-LITERAL', value='2',line=68)],line=68)],line=68), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=68), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=68), Tree Node('INTEGER-LITERAL', value='2',line=68)],line=68)],line=68)],line=68) into callee frame
212 : LDA 6, 2(7) ;  Compute return address
213 : ST 6, 0(5) ;  Store return address in callee frame
214 : LDA 7, 386(0) ;  Call GT
215 : LD 1, 3(5) ;  Load callee return value into R1
216 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
217 : LDA  7, 270(0) ;  Skip ELSE block
218 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'GT'
219 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
220 : LD   1, 1(5) ;  Load parameter 'n' into R1
221 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70) into callee frame
222 : LDA 6, 2(7) ;  Compute return address
223 : ST 6, 0(5) ;  Store return address in callee frame
224 : LDA 7, 338(0) ;  Call NEG
225 : LD 1, 2(5) ;  Load callee return value into R1
226 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
227 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70) into callee frame
228 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
229 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
230 : LD   1, 1(5) ;  Load parameter 'n' into R1
231 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70) into callee frame
232 : LDA 6, 2(7) ;  Compute return address
233 : ST 6, 0(5) ;  Store return address in callee frame
234 : LDA 7, 338(0) ;  Call NEG
235 : LD 1, 2(5) ;  Load callee return value into R1
236 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
237 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70) into callee frame
238 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
239 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=70) into callee frame
240 : LDA 6, 2(7) ;  Compute return address
241 : ST 6, 0(5) ;  Store return address in callee frame
242 : LDA 7, 343(0) ;  Call DIV
243 : LD 1, 3(5) ;  Load callee return value into R1
244 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
245 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
246 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'DIV'
247 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
248 : LD   1, 1(5) ;  Load parameter 'n' into R1
249 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70) into callee frame
250 : LDA 6, 2(7) ;  Compute return address
251 : ST 6, 0(5) ;  Store return address in callee frame
252 : LDA 7, 338(0) ;  Call NEG
253 : LD 1, 2(5) ;  Load callee return value into R1
254 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
255 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70) into callee frame
256 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
257 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=70) into callee frame
258 : LDA 6, 2(7) ;  Compute return address
259 : ST 6, 0(5) ;  Store return address in callee frame
260 : LDA 7, 343(0) ;  Call DIV
261 : LD 1, 3(5) ;  Load callee return value into R1
262 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
263 : ADD  1, 2, 1 ;  R1 = left + right
264 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70), Tree Node('INTEGER-LITERAL', value='2',line=70)],line=70)],line=70), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70), Tree Node('INTEGER-LITERAL', value='2',line=70)],line=70)],line=70)],line=70) into callee frame
265 : LDA 6, 2(7) ;  Compute return address
266 : ST 6, 0(5) ;  Store return address in callee frame
267 : LDA 7, 386(0) ;  Call GT
268 : LD 1, 3(5) ;  Load callee return value into R1
269 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
270 : ST   1, 2(5) ;  Store function result into stack frame
271 : LD   6, 0(5) ;  Load return address
272 : LDA  7, 0(6) ;  Return to caller
273 : LD   1, 2(5) ;  Load parameter 'n' into R1
274 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
275 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
276 : SUB  1, 2, 1 ;  left - right for equality check
277 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
278 : LDC  1, 0(0) ;  false
279 : LDA  7, 1(7) ;  skip setting true
280 : LDC  1, 1(0) ;  true
281 : JEQ  1, 284(0) ;  If condition is false, jump to ELSE
282 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
283 : LDA  7, 300(0) ;  Skip ELSE block
284 : LD   1, 1(5) ;  Load parameter 'm' into R1
285 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
286 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
287 : LD   1, 1(5) ;  Load parameter 'm' into R1
288 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=62) into callee frame
289 : LD   1, 2(5) ;  Load parameter 'n' into R1
290 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
291 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
292 : SUB  1, 2, 1 ;  R1 = left - right
293 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=62), Tree Node('INTEGER-LITERAL', value='1',line=62)],line=62) into callee frame
294 : LDA 6, 2(7) ;  Compute return address
295 : ST 6, 0(5) ;  Store return address in callee frame
296 : LDA 7, 273(0) ;  Call EXP
297 : LD 1, 3(5) ;  Load callee return value into R1
298 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
299 : MUL  1, 2, 1 ;  R1 = left * right
300 : ST   1, 3(5) ;  Store function result into stack frame
301 : LD   6, 0(5) ;  Load return address
302 : LDA  7, 0(6) ;  Return to caller
303 : LD   1, 1(5) ;  Load parameter 'm' into R1
304 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
305 : LD   1, 1(5) ;  Load parameter 'm' into R1
306 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
307 : LD   1, 2(5) ;  Load parameter 'n' into R1
308 : DIV  1, 2, 1 ;  R1 = left / right
309 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
310 : LD   1, 2(5) ;  Load parameter 'n' into R1
311 : MUL  1, 2, 1 ;  R1 = left * right
312 : SUB  1, 2, 1 ;  R1 = left - right
313 : ST   1, 3(5) ;  Store function result into stack frame
314 : LD   6, 0(5) ;  Load return address
315 : LDA  7, 0(6) ;  Return to caller
316 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
317 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
318 : LD   1, 1(5) ;  Load parameter 'n' into R1
319 : SUB  1, 2, 1 ;  left - right for less-than check
320 : JLT  1, 2(7) ;  If R1 < 0, jump to true
321 : LDC  1, 0(0) ;  false
322 : LDA  7, 1(7) ;  skip setting true
323 : LDC  1, 1(0) ;  true
324 : JEQ  1, 327(0) ;  If condition is false, jump to ELSE
325 : LD   1, 1(5) ;  Load parameter 'n' into R1
326 : LDA  7, 335(0) ;  Skip ELSE block
327 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'NEG'
328 : LD   1, 1(5) ;  Load parameter 'n' into R1
329 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=56) into callee frame
330 : LDA 6, 2(7) ;  Compute return address
331 : ST 6, 0(5) ;  Store return address in callee frame
332 : LDA 7, 338(0) ;  Call NEG
333 : LD 1, 2(5) ;  Load callee return value into R1
334 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
335 : ST   1, 2(5) ;  Store function result into stack frame
336 : LD   6, 0(5) ;  Load return address
337 : LDA  7, 0(6) ;  Return to caller
338 : LD   1, 1(5) ;  Load parameter 'n' into R1
339 : SUB  1, 0, 1 ;  Negate value in R1
340 : ST   1, 2(5) ;  Store function result into stack frame
341 : LD   6, 0(5) ;  Load return address
342 : LDA  7, 0(6) ;  Return to caller
343 : LD   1, 1(5) ;  Load parameter 'p' into R1
344 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
345 : LD   1, 2(5) ;  Load parameter 'q' into R1
346 : DIV  1, 2, 1 ;  R1 = left / right
347 : ST   1, 3(5) ;  Store function result into stack frame
348 : LD   6, 0(5) ;  Load return address
349 : LDA  7, 0(6) ;  Return to caller
350 : LD   1, 1(5) ;  Load parameter 'p' into R1
351 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
352 : LD   1, 2(5) ;  Load parameter 'q' into R1
353 : MUL  1, 2, 1 ;  R1 = left * right
354 : ST   1, 3(5) ;  Store function result into stack frame
355 : LD   6, 0(5) ;  Load return address
356 : LDA  7, 0(6) ;  Return to caller
357 : LD   1, 1(5) ;  Load parameter 'p' into R1
358 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
359 : LD   1, 2(5) ;  Load parameter 'q' into R1
360 : SUB  1, 2, 1 ;  R1 = left - right
361 : ST   1, 3(5) ;  Store function result into stack frame
362 : LD   6, 0(5) ;  Load return address
363 : LDA  7, 0(6) ;  Return to caller
364 : LD   1, 1(5) ;  Load parameter 'p' into R1
365 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
366 : LD   1, 2(5) ;  Load parameter 'q' into R1
367 : ADD  1, 2, 1 ;  R1 = left + right
368 : ST   1, 3(5) ;  Store function result into stack frame
369 : LD   6, 0(5) ;  Load return address
370 : LDA  7, 0(6) ;  Return to caller
371 : LD   1, 1(5) ;  Load parameter 'p' into R1
372 : JEQ  1, 375(0) ;  If condition is false, jump to ELSE
373 : LD   1, 2(5) ;  Load parameter 'q' into R1
374 : LDA  7, 376(0) ;  Skip ELSE block
375 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
376 : ST   1, 3(5) ;  Store function result into stack frame
377 : LD   6, 0(5) ;  Load return address
378 : LDA  7, 0(6) ;  Return to caller
379 : LD   1, 1(5) ;  Load parameter 'p' into R1
380 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
381 : LD   1, 2(5) ;  Load parameter 'q' into R1
382 : ADD  1, 2, 1 ;  R1 = left OR right
383 : ST   1, 3(5) ;  Store function result into stack frame
384 : LD   6, 0(5) ;  Load return address
385 : LDA  7, 0(6) ;  Return to caller
386 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'LE'
387 : LD   1, 1(5) ;  Load parameter 'p' into R1
388 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=30) into callee frame
389 : LD   1, 2(5) ;  Load parameter 'q' into R1
390 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=30) into callee frame
391 : LDA 6, 2(7) ;  Compute return address
392 : ST 6, 0(5) ;  Store return address in callee frame
393 : LDA 7, 416(0) ;  Call LE
394 : LD 1, 3(5) ;  Load callee return value into R1
395 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
396 : LDC  2, 1(0) ;  Load 1 into R2
397 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
398 : ST   1, 3(5) ;  Store function result into stack frame
399 : LD   6, 0(5) ;  Load return address
400 : LDA  7, 0(6) ;  Return to caller
401 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'LT'
402 : LD   1, 1(5) ;  Load parameter 'p' into R1
403 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=27) into callee frame
404 : LD   1, 2(5) ;  Load parameter 'q' into R1
405 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=27) into callee frame
406 : LDA 6, 2(7) ;  Compute return address
407 : ST 6, 0(5) ;  Store return address in callee frame
408 : LDA 7, 467(0) ;  Call LT
409 : LD 1, 3(5) ;  Load callee return value into R1
410 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
411 : LDC  2, 1(0) ;  Load 1 into R2
412 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
413 : ST   1, 3(5) ;  Store function result into stack frame
414 : LD   6, 0(5) ;  Load return address
415 : LDA  7, 0(6) ;  Return to caller
416 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'LT'
417 : LD   1, 1(5) ;  Load parameter 'p' into R1
418 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=24) into callee frame
419 : LD   1, 2(5) ;  Load parameter 'q' into R1
420 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=24) into callee frame
421 : LDA 6, 2(7) ;  Compute return address
422 : ST 6, 0(5) ;  Store return address in callee frame
423 : LDA 7, 467(0) ;  Call LT
424 : LD 1, 3(5) ;  Load callee return value into R1
425 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
426 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
427 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'EQ'
428 : LD   1, 1(5) ;  Load parameter 'p' into R1
429 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=24) into callee frame
430 : LD   1, 2(5) ;  Load parameter 'q' into R1
431 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=24) into callee frame
432 : LDA 6, 2(7) ;  Compute return address
433 : ST 6, 0(5) ;  Store return address in callee frame
434 : LDA 7, 456(0) ;  Call EQ
435 : LD 1, 3(5) ;  Load callee return value into R1
436 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
437 : ADD  1, 2, 1 ;  R1 = left OR right
438 : ST   1, 3(5) ;  Store function result into stack frame
439 : LD   6, 0(5) ;  Load return address
440 : LDA  7, 0(6) ;  Return to caller
441 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'EQ'
442 : LD   1, 1(5) ;  Load parameter 'p' into R1
443 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=21) into callee frame
444 : LD   1, 2(5) ;  Load parameter 'q' into R1
445 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=21) into callee frame
446 : LDA 6, 2(7) ;  Compute return address
447 : ST 6, 0(5) ;  Store return address in callee frame
448 : LDA 7, 456(0) ;  Call EQ
449 : LD 1, 3(5) ;  Load callee return value into R1
450 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
451 : LDC  2, 1(0) ;  Load 1 into R2
452 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
453 : ST   1, 3(5) ;  Store function result into stack frame
454 : LD   6, 0(5) ;  Load return address
455 : LDA  7, 0(6) ;  Return to caller
456 : LD   1, 1(5) ;  Load parameter 'p' into R1
457 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
458 : LD   1, 2(5) ;  Load parameter 'q' into R1
459 : SUB  1, 2, 1 ;  left - right for equality check
460 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
461 : LDC  1, 0(0) ;  false
462 : LDA  7, 1(7) ;  skip setting true
463 : LDC  1, 1(0) ;  true
464 : ST   1, 3(5) ;  Store function result into stack frame
465 : LD   6, 0(5) ;  Load return address
466 : LDA  7, 0(6) ;  Return to caller
467 : LD   1, 1(5) ;  Load parameter 'p' into R1
468 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
469 : LD   1, 2(5) ;  Load parameter 'q' into R1
470 : SUB  1, 2, 1 ;  left - right for less-than check
471 : JLT  1, 2(7) ;  If R1 < 0, jump to true
472 : LDC  1, 0(0) ;  false
473 : LDA  7, 1(7) ;  skip setting true
474 : LDC  1, 1(0) ;  true
475 : ST   1, 3(5) ;  Store function result into stack frame
476 : LD   6, 0(5) ;  Load return address
477 : LDA  7, 0(6) ;  Return to caller
478 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
479 : SUB  1, 0, 1 ;  Negate value in R1
480 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
481 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
482 : SUB  1, 2, 1 ;  R1 = left - right
483 : ST   1, 1(5) ;  Store function result into stack frame
484 : LD   6, 0(5) ;  Load return address
485 : LDA  7, 0(6) ;  Return to caller
486 : LDC  1, 2147483647(0) ;  Load boolean-literal value into register 1
487 : ST   1, 1(5) ;  Store function result into stack frame
488 : LD   6, 0(5) ;  Load return address
489 : LDA  7, 0(6) ;  Return to caller
