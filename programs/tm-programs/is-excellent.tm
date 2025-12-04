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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=45)
13 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'isExcellent'
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address in frame
16 : LDA  7, 23(0) ;  Call isExcellent
17 : LD   1, 2(5) ;  Load return value into R1
18 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
19 : ST   1, 4(0) ;  Store function-call result into caller's return slot
20 : LD   1, 4(0) ;  Load return value into register 1
21 : LD  6, 2(0) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
23 : LD   1, 1(5) ;  Load parameter 'n' into R1
24 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=42)
25 : LD   1, 1(5) ;  Load parameter 'n' into R1
26 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=42)
27 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address in frame
30 : LDA  7, 159(0) ;  Call length
31 : LD   1, 2(5) ;  Load return value into R1
32 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
33 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=42), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=42)],line=42)],line=42)
34 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'isExcellentSwitch'
35 : LDA  6, 2(7) ;  Compute return address
36 : ST   6, 0(5) ;  Store return address in frame
37 : LDA  7, 43(0) ;  Call isExcellentSwitch
38 : LD   1, 3(5) ;  Load return value into R1
39 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
40 : ST   1, 2(5) ;  Store function result into stack frame
41 : LD   6, 0(5) ;  Load return address
42 : LDA  7, 0(6) ;  Return to caller
43 : LD   1, 2(5) ;  Load parameter 'length' into R1
44 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='length',line=37)
45 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ODD'
46 : LDA  6, 2(7) ;  Compute return address
47 : ST   6, 0(5) ;  Store return address in frame
48 : LDA  7, 187(0) ;  Call ODD
49 : LD   1, 2(5) ;  Load return value into R1
50 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
51 : JEQ  1, 54(0) ;  If condition is false, jump to ELSE
52 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
53 : LDA  7, 85(0) ;  Skip ELSE block
54 : LD   1, 1(5) ;  Load parameter 'n' into R1
55 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
56 : LD   1, 1(5) ;  Load parameter 'n' into R1
57 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=39)
58 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'a'
59 : LDA  6, 2(7) ;  Compute return address
60 : ST   6, 0(5) ;  Store return address in frame
61 : LDA  7, 133(0) ;  Call a
62 : LD   1, 2(5) ;  Load return value into R1
63 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
64 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='a',line=39), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=39)],line=39)],line=39)
65 : LD   1, 1(5) ;  Load parameter 'n' into R1
66 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=39)
67 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'b'
68 : LDA  6, 2(7) ;  Compute return address
69 : ST   6, 0(5) ;  Store return address in frame
70 : LDA  7, 101(0) ;  Call b
71 : LD   1, 2(5) ;  Load return value into R1
72 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
73 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='b',line=39), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=39)],line=39)],line=39)
74 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'excellentDiff'
75 : LDA  6, 2(7) ;  Compute return address
76 : ST   6, 0(5) ;  Store return address in frame
77 : LDA  7, 88(0) ;  Call excellentDiff
78 : LD   1, 3(5) ;  Load return value into R1
79 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
101 : LD   1, 1(5) ;  Load parameter 'n' into R1
102 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29)
103 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
104 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=29)
105 : LD   1, 1(5) ;  Load parameter 'n' into R1
106 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=29)
107 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
108 : LDA  6, 2(7) ;  Compute return address
109 : ST   6, 0(5) ;  Store return address in frame
110 : LDA  7, 159(0) ;  Call length
111 : LD   1, 2(5) ;  Load return value into R1
112 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
113 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
114 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
115 : DIV  1, 2, 1 ;  R1 = left / right
116 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=29)],line=29)],line=29), Tree Node('INTEGER-LITERAL', value='2',line=29)],line=29)
117 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
118 : LDA  6, 2(7) ;  Compute return address
119 : ST   6, 0(5) ;  Store return address in frame
120 : LDA  7, 223(0) ;  Call EXP
121 : LD   1, 3(5) ;  Load return value into R1
122 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
123 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=29), Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=29), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=29)],line=29)],line=29), Tree Node('INTEGER-LITERAL', value='2',line=29)],line=29)],line=29)],line=29)
124 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'MOD'
125 : LDA  6, 2(7) ;  Compute return address
126 : ST   6, 0(5) ;  Store return address in frame
127 : LDA  7, 253(0) ;  Call MOD
128 : LD   1, 3(5) ;  Load return value into R1
129 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
130 : ST   1, 2(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
135 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
136 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=26)
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=26)
139 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
140 : LDA  6, 2(7) ;  Compute return address
141 : ST   6, 0(5) ;  Store return address in frame
142 : LDA  7, 159(0) ;  Call length
143 : LD   1, 2(5) ;  Load return value into R1
144 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
145 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
146 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
147 : DIV  1, 2, 1 ;  R1 = left / right
148 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='length',line=26), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=26)],line=26)],line=26), Tree Node('INTEGER-LITERAL', value='2',line=26)],line=26)
149 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
150 : LDA  6, 2(7) ;  Compute return address
151 : ST   6, 0(5) ;  Store return address in frame
152 : LDA  7, 223(0) ;  Call EXP
153 : LD   1, 3(5) ;  Load return value into R1
154 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
172 : LD   1, 1(5) ;  Load parameter 'n' into R1
173 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
174 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
175 : DIV  1, 2, 1 ;  R1 = left / right
176 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=23), Tree Node('INTEGER-LITERAL', value='10',line=23)],line=23)
177 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'length'
178 : LDA  6, 2(7) ;  Compute return address
179 : ST   6, 0(5) ;  Store return address in frame
180 : LDA  7, 159(0) ;  Call length
181 : LD   1, 2(5) ;  Load return value into R1
182 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
211 : LD   1, 1(5) ;  Load parameter 'n' into R1
212 : SUB  1, 0, 1 ;  Negate value in R1
213 : ST   1, 1(5) ;  Store argument Tree Node('UNARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=16)],line=16)
214 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'ODD'
215 : LDA  6, 2(7) ;  Compute return address
216 : ST   6, 0(5) ;  Store return address in frame
217 : LDA  7, 187(0) ;  Call ODD
218 : LD   1, 2(5) ;  Load return value into R1
219 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
236 : LD   1, 1(5) ;  Load parameter 'm' into R1
237 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=11)
238 : LD   1, 2(5) ;  Load parameter 'n' into R1
239 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
240 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
241 : SUB  1, 2, 1 ;  R1 = left - right
242 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=11), Tree Node('INTEGER-LITERAL', value='1',line=11)],line=11)
243 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'EXP'
244 : LDA  6, 2(7) ;  Compute return address
245 : ST   6, 0(5) ;  Store return address in frame
246 : LDA  7, 223(0) ;  Call EXP
247 : LD   1, 3(5) ;  Load return value into R1
248 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
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
