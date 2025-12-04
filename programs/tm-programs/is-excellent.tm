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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'isExcellent'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=45) into callee frame
14 : LDA 6, 2(7) ;  Compute return address
15 : ST 6, 0(5) ;  Store return address in callee frame
16 : LDA 7, 23(0) ;  Call isExcellent
17 : LD 1, 2(5) ;  Load callee return value into R1
18 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
19 : ST 1, 4(0) ;  Store function-call result into caller's return slot
20 : LD   1, 4(0) ;  Load return value into register 1
21 : LD  6, 2(0) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
23 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'isExcellentSwitch'
24 : LD   1, 1(5) ;  Load parameter 'n' into R1
25 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=42) into callee frame
26 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
27 : LD   1, 1(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=42) into callee frame
29 : LDA 6, 2(7) ;  Compute return address
30 : ST 6, 0(5) ;  Store return address in callee frame
31 : LDA 7, 159(0) ;  Call length
32 : LD 1, 2(5) ;  Load callee return value into R1
33 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
34 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=42), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=42)],line=42)],line=42) into callee frame
35 : LDA 6, 2(7) ;  Compute return address
36 : ST 6, 0(5) ;  Store return address in callee frame
37 : LDA 7, 43(0) ;  Call isExcellentSwitch
38 : LD 1, 3(5) ;  Load callee return value into R1
39 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
40 : ST   1, 2(5) ;  Store function result into stack frame
41 : LD   6, 0(5) ;  Load return address
42 : LDA  7, 0(6) ;  Return to caller
43 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'ODD'
44 : LD   1, 2(5) ;  Load parameter 'length' into R1
45 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='length',line=37) into callee frame
46 : LDA 6, 2(7) ;  Compute return address
47 : ST 6, 0(5) ;  Store return address in callee frame
48 : LDA 7, 187(0) ;  Call ODD
49 : LD 1, 2(5) ;  Load callee return value into R1
50 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
51 : JEQ  1, 54(0) ;  If condition is false, jump to ELSE
52 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
53 : LDA  7, 85(0) ;  Skip ELSE block
54 : LD   1, 1(5) ;  Load parameter 'n' into R1
55 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
56 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'excellentDiff'
57 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'a'
58 : LD   1, 1(5) ;  Load parameter 'n' into R1
59 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=39) into callee frame
60 : LDA 6, 2(7) ;  Compute return address
61 : ST 6, 0(5) ;  Store return address in callee frame
62 : LDA 7, 133(0) ;  Call a
63 : LD 1, 2(5) ;  Load callee return value into R1
64 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
65 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='a',line=39), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=39)],line=39)],line=39) into callee frame
66 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'b'
67 : LD   1, 1(5) ;  Load parameter 'n' into R1
68 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=39) into callee frame
69 : LDA 6, 2(7) ;  Compute return address
70 : ST 6, 0(5) ;  Store return address in callee frame
71 : LDA 7, 101(0) ;  Call b
72 : LD 1, 2(5) ;  Load callee return value into R1
73 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
74 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='b',line=39), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=39)],line=39)],line=39) into callee frame
75 : LDA 6, 2(7) ;  Compute return address
76 : ST 6, 0(5) ;  Store return address in callee frame
77 : LDA 7, 88(0) ;  Call excellentDiff
78 : LD 1, 3(5) ;  Load callee return value into R1
79 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
80 : SUB  1, 2, 1 ;  left - right for equality check
81 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
82 : LDC  1, 0(0) ;  false
83 : LDA  7, 1(7) ;  skip setting true
84 : LDC  1, 1(0) ;  true
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 2(5) ;  Load parameter 'b' into R1
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : MUL  1, 2, 1 ;  R1 = left * right
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LD   1, 1(5) ;  Load parameter 'a' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LD   1, 1(5) ;  Load parameter 'a' into R1
96 : MUL  1, 2, 1 ;  R1 = left * right
97 : SUB  1, 2, 1 ;  R1 = left - right
98 : ST   1, 3(5) ;  Store function result into stack frame
99 : LD   6, 0(5) ;  Load return address
100 : LDA  7, 0(6) ;  Return to caller
101 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'MOD'
102 : LD   1, 1(5) ;  Load parameter 'n' into R1
103 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29) into callee frame
104 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
105 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
106 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=29) into callee frame
107 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
108 : LD   1, 1(5) ;  Load parameter 'n' into R1
109 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29) into callee frame
110 : LDA 6, 2(7) ;  Compute return address
111 : ST 6, 0(5) ;  Store return address in callee frame
112 : LDA 7, 159(0) ;  Call length
113 : LD 1, 2(5) ;  Load callee return value into R1
114 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
115 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
116 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
117 : DIV  1, 2, 1 ;  R1 = left / right
118 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=29)],line=29)],line=29), Tree Node('INTEGER-LITERAL', value='2',line=29)],line=29) into callee frame
119 : LDA 6, 2(7) ;  Compute return address
120 : ST 6, 0(5) ;  Store return address in callee frame
121 : LDA 7, 223(0) ;  Call EXP
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
124 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=29), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=29)],line=29)],line=29), Tree Node('INTEGER-LITERAL', value='2',line=29)],line=29)],line=29)],line=29) into callee frame
125 : LDA 6, 2(7) ;  Compute return address
126 : ST 6, 0(5) ;  Store return address in callee frame
127 : LDA 7, 253(0) ;  Call MOD
128 : LD 1, 3(5) ;  Load callee return value into R1
129 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
130 : ST   1, 2(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
135 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'EXP'
136 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
137 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=26) into callee frame
138 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
139 : LD   1, 1(5) ;  Load parameter 'n' into R1
140 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=26) into callee frame
141 : LDA 6, 2(7) ;  Compute return address
142 : ST 6, 0(5) ;  Store return address in callee frame
143 : LDA 7, 159(0) ;  Call length
144 : LD 1, 2(5) ;  Load callee return value into R1
145 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
146 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
147 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
148 : DIV  1, 2, 1 ;  R1 = left / right
149 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=26), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=26)],line=26)],line=26), Tree Node('INTEGER-LITERAL', value='2',line=26)],line=26) into callee frame
150 : LDA 6, 2(7) ;  Compute return address
151 : ST 6, 0(5) ;  Store return address in callee frame
152 : LDA 7, 223(0) ;  Call EXP
153 : LD 1, 3(5) ;  Load callee return value into R1
154 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
155 : DIV  1, 2, 1 ;  R1 = left / right
156 : ST   1, 2(5) ;  Store function result into stack frame
157 : LD   6, 0(5) ;  Load return address
158 : LDA  7, 0(6) ;  Return to caller
159 : LD   1, 1(5) ;  Load parameter 'n' into R1
160 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
161 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
162 : SUB  1, 2, 1 ;  left - right for less-than check
163 : JLT  1, 2(7) ;  If R1 < 0, jump to true
164 : LDC  1, 0(0) ;  false
165 : LDA  7, 1(7) ;  skip setting true
166 : LDC  1, 1(0) ;  true
167 : JEQ  1, 170(0) ;  If condition is false, jump to ELSE
168 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
169 : LDA  7, 184(0) ;  Skip ELSE block
170 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
171 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
172 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'length'
173 : LD   1, 1(5) ;  Load parameter 'n' into R1
174 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
175 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
176 : DIV  1, 2, 1 ;  R1 = left / right
177 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=23), Tree Node('INTEGER-LITERAL', value='10',line=23)],line=23) into callee frame
178 : LDA 6, 2(7) ;  Compute return address
179 : ST 6, 0(5) ;  Store return address in callee frame
180 : LDA 7, 159(0) ;  Call length
181 : LD 1, 2(5) ;  Load callee return value into R1
182 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
183 : ADD  1, 2, 1 ;  R1 = left + right
184 : ST   1, 2(5) ;  Store function result into stack frame
185 : LD   6, 0(5) ;  Load return address
186 : LDA  7, 0(6) ;  Return to caller
187 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
188 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
189 : LD   1, 1(5) ;  Load parameter 'n' into R1
190 : SUB  1, 2, 1 ;  left - right for less-than check
191 : JLT  1, 2(7) ;  If R1 < 0, jump to true
192 : LDC  1, 0(0) ;  false
193 : LDA  7, 1(7) ;  skip setting true
194 : LDC  1, 1(0) ;  true
195 : JEQ  1, 211(0) ;  If condition is false, jump to ELSE
196 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
197 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
198 : LD   1, 1(5) ;  Load parameter 'n' into R1
199 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
200 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
201 : DIV  1, 2, 1 ;  R1 = left / right
202 : MUL  1, 2, 1 ;  R1 = left * right
203 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
204 : LD   1, 1(5) ;  Load parameter 'n' into R1
205 : SUB  1, 2, 1 ;  left - right for less-than check
206 : JLT  1, 2(7) ;  If R1 < 0, jump to true
207 : LDC  1, 0(0) ;  false
208 : LDA  7, 1(7) ;  skip setting true
209 : LDC  1, 1(0) ;  true
210 : LDA  7, 220(0) ;  Skip ELSE block
211 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'ODD'
212 : LD   1, 1(5) ;  Load parameter 'n' into R1
213 : SUB  1, 0, 1 ;  Negate value in R1
214 : ST 1, 1(5) ;  Store argument Tree Node('UNARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=16)],line=16) into callee frame
215 : LDA 6, 2(7) ;  Compute return address
216 : ST 6, 0(5) ;  Store return address in callee frame
217 : LDA 7, 187(0) ;  Call ODD
218 : LD 1, 2(5) ;  Load callee return value into R1
219 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
220 : ST   1, 2(5) ;  Store function result into stack frame
221 : LD   6, 0(5) ;  Load return address
222 : LDA  7, 0(6) ;  Return to caller
223 : LD   1, 2(5) ;  Load parameter 'n' into R1
224 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
225 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
226 : SUB  1, 2, 1 ;  left - right for equality check
227 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
228 : LDC  1, 0(0) ;  false
229 : LDA  7, 1(7) ;  skip setting true
230 : LDC  1, 1(0) ;  true
231 : JEQ  1, 234(0) ;  If condition is false, jump to ELSE
232 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
233 : LDA  7, 250(0) ;  Skip ELSE block
234 : LD   1, 1(5) ;  Load parameter 'm' into R1
235 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
236 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'EXP'
237 : LD   1, 1(5) ;  Load parameter 'm' into R1
238 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=11) into callee frame
239 : LD   1, 2(5) ;  Load parameter 'n' into R1
240 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
241 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
242 : SUB  1, 2, 1 ;  R1 = left - right
243 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11)],line=11) into callee frame
244 : LDA 6, 2(7) ;  Compute return address
245 : ST 6, 0(5) ;  Store return address in callee frame
246 : LDA 7, 223(0) ;  Call EXP
247 : LD 1, 3(5) ;  Load callee return value into R1
248 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
249 : MUL  1, 2, 1 ;  R1 = left * right
250 : ST   1, 3(5) ;  Store function result into stack frame
251 : LD   6, 0(5) ;  Load return address
252 : LDA  7, 0(6) ;  Return to caller
253 : LD   1, 1(5) ;  Load parameter 'm' into R1
254 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
255 : LD   1, 2(5) ;  Load parameter 'n' into R1
256 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
257 : LD   1, 1(5) ;  Load parameter 'm' into R1
258 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
259 : LD   1, 2(5) ;  Load parameter 'n' into R1
260 : DIV  1, 2, 1 ;  R1 = left / right
261 : MUL  1, 2, 1 ;  R1 = left * right
262 : SUB  1, 2, 1 ;  R1 = left - right
263 : ST   1, 3(5) ;  Store function result into stack frame
264 : LD   6, 0(5) ;  Load return address
265 : LDA  7, 0(6) ;  Return to caller
