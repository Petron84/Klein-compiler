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
11 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=4)
13 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'SQRT'
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address in frame
16 : LDA  7, 160(0) ;  Call SQRT
17 : LD   1, 2(5) ;  Load return value into R1
18 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
19 : LDC  5, 2(0) ;  Update DMEM pointer
20 : LDA  6, 2(7) ;  Compute return address
21 : ST   6, 0(5) ;  Store return address
22 : LDA  7, 8(0) ; Call print
23 : LDC  5, 2(0) ;  Move pointer to previous stack frame
24 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
25 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=5)
26 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ODD'
27 : LDA  6, 2(7) ;  Compute return address
28 : ST   6, 0(5) ;  Store return address in frame
29 : LDA  7, 175(0) ;  Call ODD
30 : LD   1, 2(5) ;  Load return value into R1
31 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
32 : ST   1, 4(0) ;  Store function-call result into caller's return slot
33 : LD   1, 4(0) ;  Load return value into register 1
34 : LD  6, 2(0) ;  Load return address for main function into register 6
35 : LDA  7, 0(6) ;  Jump to return address of main function
36 : LD   1, 4(5) ;  Load parameter 'mid' into R1
37 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
38 : LD   1, 4(5) ;  Load parameter 'mid' into R1
39 : MUL  1, 2, 1 ;  R1 = left * right
40 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='mid',line=88), Tree Node('IDENTIFIER', value='mid',line=88)],line=88)
41 : LD   1, 1(5) ;  Load parameter 'n' into R1
42 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=88)
43 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
44 : LDA  6, 2(7) ;  Compute return address
45 : ST   6, 0(5) ;  Store return address in frame
46 : LDA  7, 416(0) ;  Call LE
47 : LD   1, 3(5) ;  Load return value into R1
48 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
49 : JEQ  1, 63(0) ;  If condition is false, jump to ELSE
50 : LD   1, 1(5) ;  Load parameter 'n' into R1
51 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=89)
52 : LD   1, 4(5) ;  Load parameter 'mid' into R1
53 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=89)
54 : LD   1, 3(5) ;  Load parameter 'high' into R1
55 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=89)
56 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
57 : LDA  6, 2(7) ;  Compute return address
58 : ST   6, 0(5) ;  Store return address in frame
59 : LDA  7, 78(0) ;  Call SQRTSEARCH
60 : LD   1, 4(5) ;  Load return value into R1
61 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
62 : LDA  7, 75(0) ;  Skip ELSE block
63 : LD   1, 1(5) ;  Load parameter 'n' into R1
64 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=91)
65 : LD   1, 2(5) ;  Load parameter 'low' into R1
66 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=91)
67 : LD   1, 4(5) ;  Load parameter 'mid' into R1
68 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='mid',line=91)
69 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
70 : LDA  6, 2(7) ;  Compute return address
71 : ST   6, 0(5) ;  Store return address in frame
72 : LDA  7, 78(0) ;  Call SQRTSEARCH
73 : LD   1, 4(5) ;  Load return value into R1
74 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
75 : ST   1, 5(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 3(5) ;  Load parameter 'high' into R1
79 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=78)
80 : LD   1, 2(5) ;  Load parameter 'low' into R1
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
83 : ADD  1, 2, 1 ;  R1 = left + right
84 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='low',line=78), Tree Node('INTEGER-LITERAL', value='1',line=78)],line=78)
85 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
86 : LDA  6, 2(7) ;  Compute return address
87 : ST   6, 0(5) ;  Store return address in frame
88 : LDA  7, 416(0) ;  Call LE
89 : LD   1, 3(5) ;  Load return value into R1
90 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
91 : JEQ  1, 131(0) ;  If condition is false, jump to ELSE
92 : LD   1, 1(5) ;  Load parameter 'n' into R1
93 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
94 : LD   1, 2(5) ;  Load parameter 'low' into R1
95 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=79)
96 : LD   1, 2(5) ;  Load parameter 'low' into R1
97 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=79)
98 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'TIMES'
99 : LDA  6, 2(7) ;  Compute return address
100 : ST   6, 0(5) ;  Store return address in frame
101 : LDA  7, 350(0) ;  Call TIMES
102 : LD   1, 3(5) ;  Load return value into R1
103 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
104 : SUB  1, 2, 1 ;  R1 = left - right
105 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=79), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='TIMES',line=79), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='low',line=79), Tree Node('IDENTIFIER', value='low',line=79)],line=79)],line=79)],line=79)
106 : LD   1, 3(5) ;  Load parameter 'high' into R1
107 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=79)
108 : LD   1, 3(5) ;  Load parameter 'high' into R1
109 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=79)
110 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'TIMES'
111 : LDA  6, 2(7) ;  Compute return address
112 : ST   6, 0(5) ;  Store return address in frame
113 : LDA  7, 350(0) ;  Call TIMES
114 : LD   1, 3(5) ;  Load return value into R1
115 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
116 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : SUB  1, 2, 1 ;  R1 = left - right
119 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='TIMES',line=79), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='high',line=79), Tree Node('IDENTIFIER', value='high',line=79)],line=79)],line=79), Tree Node('IDENTIFIER', value='n',line=79)],line=79)
120 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
121 : LDA  6, 2(7) ;  Compute return address
122 : ST   6, 0(5) ;  Store return address in frame
123 : LDA  7, 416(0) ;  Call LE
124 : LD   1, 3(5) ;  Load return value into R1
125 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
126 : JEQ  1, 129(0) ;  If condition is false, jump to ELSE
127 : LD   1, 2(5) ;  Load parameter 'low' into R1
128 : LDA  7, 130(0) ;  Skip ELSE block
129 : LD   1, 3(5) ;  Load parameter 'high' into R1
130 : LDA  7, 157(0) ;  Skip ELSE block
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=84)
133 : LD   1, 2(5) ;  Load parameter 'low' into R1
134 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=84)
135 : LD   1, 3(5) ;  Load parameter 'high' into R1
136 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=84)
137 : LD   1, 2(5) ;  Load parameter 'low' into R1
138 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='low',line=84)
139 : LD   1, 3(5) ;  Load parameter 'high' into R1
140 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='high',line=84)
141 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'PLUS'
142 : LDA  6, 2(7) ;  Compute return address
143 : ST   6, 0(5) ;  Store return address in frame
144 : LDA  7, 364(0) ;  Call PLUS
145 : LD   1, 3(5) ;  Load return value into R1
146 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
147 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
148 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
149 : DIV  1, 2, 1 ;  R1 = left / right
150 : ST   1, 4(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='PLUS',line=84), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='low',line=84), Tree Node('IDENTIFIER', value='high',line=84)],line=84)],line=84), Tree Node('INTEGER-LITERAL', value='2',line=84)],line=84)
151 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSPLIT'
152 : LDA  6, 2(7) ;  Compute return address
153 : ST   6, 0(5) ;  Store return address in frame
154 : LDA  7, 36(0) ;  Call SQRTSPLIT
155 : LD   1, 5(5) ;  Load return value into R1
156 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
157 : ST   1, 4(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
160 : LD   1, 1(5) ;  Load parameter 'n' into R1
161 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75)
162 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
163 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=75)
164 : LD   1, 1(5) ;  Load parameter 'n' into R1
165 : ST   1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=75)
166 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'SQRTSEARCH'
167 : LDA  6, 2(7) ;  Compute return address
168 : ST   6, 0(5) ;  Store return address in frame
169 : LDA  7, 78(0) ;  Call SQRTSEARCH
170 : LD   1, 4(5) ;  Load return value into R1
171 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
172 : ST   1, 2(5) ;  Store function result into stack frame
173 : LD   6, 0(5) ;  Load return address
174 : LDA  7, 0(6) ;  Return to caller
175 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
176 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=67)
177 : LD   1, 1(5) ;  Load parameter 'n' into R1
178 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=67)
179 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
180 : LDA  6, 2(7) ;  Compute return address
181 : ST   6, 0(5) ;  Store return address in frame
182 : LDA  7, 416(0) ;  Call LE
183 : LD   1, 3(5) ;  Load return value into R1
184 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
185 : JEQ  1, 218(0) ;  If condition is false, jump to ELSE
186 : LD   1, 1(5) ;  Load parameter 'n' into R1
187 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68)
188 : LD   1, 1(5) ;  Load parameter 'n' into R1
189 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68)
190 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
191 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=68)
192 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'DIV'
193 : LDA  6, 2(7) ;  Compute return address
194 : ST   6, 0(5) ;  Store return address in frame
195 : LDA  7, 343(0) ;  Call DIV
196 : LD   1, 3(5) ;  Load return value into R1
197 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
198 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
199 : LD   1, 1(5) ;  Load parameter 'n' into R1
200 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=68)
201 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
202 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=68)
203 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'DIV'
204 : LDA  6, 2(7) ;  Compute return address
205 : ST   6, 0(5) ;  Store return address in frame
206 : LDA  7, 343(0) ;  Call DIV
207 : LD   1, 3(5) ;  Load return value into R1
208 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
209 : ADD  1, 2, 1 ;  R1 = left + right
210 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=68), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=68), Tree Node('INTEGER-LITERAL', value='2',line=68)],line=68)],line=68), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=68), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=68), Tree Node('INTEGER-LITERAL', value='2',line=68)],line=68)],line=68)],line=68)
211 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'GT'
212 : LDA  6, 2(7) ;  Compute return address
213 : ST   6, 0(5) ;  Store return address in frame
214 : LDA  7, 386(0) ;  Call GT
215 : LD   1, 3(5) ;  Load return value into R1
216 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
217 : LDA  7, 270(0) ;  Skip ELSE block
218 : LD   1, 1(5) ;  Load parameter 'n' into R1
219 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70)
220 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'NEG'
221 : LDA  6, 2(7) ;  Compute return address
222 : ST   6, 0(5) ;  Store return address in frame
223 : LDA  7, 338(0) ;  Call NEG
224 : LD   1, 2(5) ;  Load return value into R1
225 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
226 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70)
227 : LD   1, 1(5) ;  Load parameter 'n' into R1
228 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70)
229 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'NEG'
230 : LDA  6, 2(7) ;  Compute return address
231 : ST   6, 0(5) ;  Store return address in frame
232 : LDA  7, 338(0) ;  Call NEG
233 : LD   1, 2(5) ;  Load return value into R1
234 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
235 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70)
236 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
237 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=70)
238 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'DIV'
239 : LDA  6, 2(7) ;  Compute return address
240 : ST   6, 0(5) ;  Store return address in frame
241 : LDA  7, 343(0) ;  Call DIV
242 : LD   1, 3(5) ;  Load return value into R1
243 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
244 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
245 : LD   1, 1(5) ;  Load parameter 'n' into R1
246 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=70)
247 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'NEG'
248 : LDA  6, 2(7) ;  Compute return address
249 : ST   6, 0(5) ;  Store return address in frame
250 : LDA  7, 338(0) ;  Call NEG
251 : LD   1, 2(5) ;  Load return value into R1
252 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
253 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70)
254 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
255 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=70)
256 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'DIV'
257 : LDA  6, 2(7) ;  Compute return address
258 : ST   6, 0(5) ;  Store return address in frame
259 : LDA  7, 343(0) ;  Call DIV
260 : LD   1, 3(5) ;  Load return value into R1
261 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
262 : ADD  1, 2, 1 ;  R1 = left + right
263 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70), Tree Node('INTEGER-LITERAL', value='2',line=70)],line=70)],line=70), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='DIV',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='NEG',line=70), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=70)],line=70)],line=70), Tree Node('INTEGER-LITERAL', value='2',line=70)],line=70)],line=70)],line=70)
264 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'GT'
265 : LDA  6, 2(7) ;  Compute return address
266 : ST   6, 0(5) ;  Store return address in frame
267 : LDA  7, 386(0) ;  Call GT
268 : LD   1, 3(5) ;  Load return value into R1
269 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
286 : LD   1, 1(5) ;  Load parameter 'm' into R1
287 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=62)
288 : LD   1, 2(5) ;  Load parameter 'n' into R1
289 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
290 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
291 : SUB  1, 2, 1 ;  R1 = left - right
292 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=62), Tree Node('INTEGER-LITERAL', value='1',line=62)],line=62)
293 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
294 : LDA  6, 2(7) ;  Compute return address
295 : ST   6, 0(5) ;  Store return address in frame
296 : LDA  7, 273(0) ;  Call EXP
297 : LD   1, 3(5) ;  Load return value into R1
298 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
327 : LD   1, 1(5) ;  Load parameter 'n' into R1
328 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=56)
329 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'NEG'
330 : LDA  6, 2(7) ;  Compute return address
331 : ST   6, 0(5) ;  Store return address in frame
332 : LDA  7, 338(0) ;  Call NEG
333 : LD   1, 2(5) ;  Load return value into R1
334 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
386 : LD   1, 1(5) ;  Load parameter 'p' into R1
387 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=30)
388 : LD   1, 2(5) ;  Load parameter 'q' into R1
389 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=30)
390 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LE'
391 : LDA  6, 2(7) ;  Compute return address
392 : ST   6, 0(5) ;  Store return address in frame
393 : LDA  7, 416(0) ;  Call LE
394 : LD   1, 3(5) ;  Load return value into R1
395 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
396 : LDC  2, 1(0) ;  Load 1 into R2
397 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
398 : ST   1, 3(5) ;  Store function result into stack frame
399 : LD   6, 0(5) ;  Load return address
400 : LDA  7, 0(6) ;  Return to caller
401 : LD   1, 1(5) ;  Load parameter 'p' into R1
402 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=27)
403 : LD   1, 2(5) ;  Load parameter 'q' into R1
404 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=27)
405 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LT'
406 : LDA  6, 2(7) ;  Compute return address
407 : ST   6, 0(5) ;  Store return address in frame
408 : LDA  7, 467(0) ;  Call LT
409 : LD   1, 3(5) ;  Load return value into R1
410 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
411 : LDC  2, 1(0) ;  Load 1 into R2
412 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
413 : ST   1, 3(5) ;  Store function result into stack frame
414 : LD   6, 0(5) ;  Load return address
415 : LDA  7, 0(6) ;  Return to caller
416 : LD   1, 1(5) ;  Load parameter 'p' into R1
417 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=24)
418 : LD   1, 2(5) ;  Load parameter 'q' into R1
419 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=24)
420 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'LT'
421 : LDA  6, 2(7) ;  Compute return address
422 : ST   6, 0(5) ;  Store return address in frame
423 : LDA  7, 467(0) ;  Call LT
424 : LD   1, 3(5) ;  Load return value into R1
425 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
426 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
427 : LD   1, 1(5) ;  Load parameter 'p' into R1
428 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=24)
429 : LD   1, 2(5) ;  Load parameter 'q' into R1
430 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=24)
431 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EQ'
432 : LDA  6, 2(7) ;  Compute return address
433 : ST   6, 0(5) ;  Store return address in frame
434 : LDA  7, 456(0) ;  Call EQ
435 : LD   1, 3(5) ;  Load return value into R1
436 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
437 : ADD  1, 2, 1 ;  R1 = left OR right
438 : ST   1, 3(5) ;  Store function result into stack frame
439 : LD   6, 0(5) ;  Load return address
440 : LDA  7, 0(6) ;  Return to caller
441 : LD   1, 1(5) ;  Load parameter 'p' into R1
442 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='p',line=21)
443 : LD   1, 2(5) ;  Load parameter 'q' into R1
444 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='q',line=21)
445 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EQ'
446 : LDA  6, 2(7) ;  Compute return address
447 : ST   6, 0(5) ;  Store return address in frame
448 : LDA  7, 456(0) ;  Call EQ
449 : LD   1, 3(5) ;  Load return value into R1
450 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
