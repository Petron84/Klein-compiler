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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'sieveAt'
12 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
13 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=4) into callee frame
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4) into callee frame
16 : LDA 6, 2(7) ;  Compute return address
17 : ST 6, 0(3) ;  Store return address in callee frame
18 : ADD  5, 3, 0 ;  Update pointer
19 : LDA 7, 178(0) ;  Call sieveAt
20 : LD 1, 3(5) ;  Load callee return value into R1
21 : LDC  4, 3(0) ;  Load frame size
22 : SUB  5, 5, 4 ;  Restore pointer
23 : ST 1, 4(0) ;  Store function-call result into caller's return slot
24 : LD   1, 4(0) ;  Load return value into register 1
25 : LD  6, 2(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'num' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : LDA  7, 53(0) ;  Skip ELSE block
38 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'rem'
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=34), Tree Node('IDENTIFIER', value='den',line=34)],line=34) into callee frame
44 : LD   1, 2(5) ;  Load parameter 'den' into R1
45 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='den',line=34) into callee frame
46 : LDA 6, 2(7) ;  Compute return address
47 : ST 6, 0(3) ;  Store return address in callee frame
48 : ADD  5, 3, 0 ;  Update pointer
49 : LDA 7, 27(0) ;  Call rem
50 : LD 1, 3(5) ;  Load callee return value into R1
51 : LDC  4, 4(0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'rem'
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='b',line=28) into callee frame
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=28) into callee frame
61 : LDA 6, 2(7) ;  Compute return address
62 : ST 6, 0(3) ;  Store return address in callee frame
63 : ADD  5, 3, 0 ;  Update pointer
64 : LDA 7, 27(0) ;  Call rem
65 : LD 1, 3(5) ;  Load callee return value into R1
66 : LDC  4, 4(0) ;  Load frame size
67 : SUB  5, 5, 4 ;  Restore pointer
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
70 : SUB  1, 2, 1 ;  left - right for equality check
71 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 1(5) ;  Load parameter 'i' into R1
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LD   1, 2(5) ;  Load parameter 'n' into R1
81 : SUB  1, 2, 1 ;  left - right for less-than check
82 : JLT  1, 2(7) ;  If R1 < 0, jump to true
83 : LDC  1, 0(0) ;  false
84 : LDA  7, 1(7) ;  skip setting true
85 : LDC  1, 1(0) ;  true
86 : JEQ  1, 117(0) ;  If condition is false, jump to ELSE
87 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
88 : LD   1, 1(5) ;  Load parameter 'i' into R1
89 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='i',line=23) into callee frame
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23) into callee frame
92 : LDA 6, 2(7) ;  Compute return address
93 : ST 6, 0(3) ;  Store return address in callee frame
94 : ADD  5, 3, 0 ;  Update pointer
95 : LDA 7, 56(0) ;  Call divides
96 : LD 1, 3(5) ;  Load callee return value into R1
97 : LDC  4, 4(0) ;  Load frame size
98 : SUB  5, 5, 4 ;  Restore pointer
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
101 : LD   1, 1(5) ;  Load parameter 'i' into R1
102 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
103 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
104 : ADD  1, 2, 1 ;  R1 = left + right
105 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=23), Tree Node('INTEGER-LITERAL', value='1',line=23)],line=23) into callee frame
106 : LD   1, 2(5) ;  Load parameter 'n' into R1
107 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23) into callee frame
108 : LDA 6, 2(7) ;  Compute return address
109 : ST 6, 0(3) ;  Store return address in callee frame
110 : ADD  5, 3, 0 ;  Update pointer
111 : LDA 7, 78(0) ;  Call hasDivisorFrom
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDC  4, 4(0) ;  Load frame size
114 : SUB  5, 5, 4 ;  Restore pointer
115 : ADD  1, 2, 1 ;  R1 = left OR right
116 : LDA  7, 118(0) ;  Skip ELSE block
117 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
118 : ST   1, 3(5) ;  Store function result into stack frame
119 : LD   6, 0(5) ;  Load return address
120 : LDA  7, 0(6) ;  Return to caller
121 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
122 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
123 : ST 1, 1(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=19) into callee frame
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19) into callee frame
126 : LDA 6, 2(7) ;  Compute return address
127 : ST 6, 0(3) ;  Store return address in callee frame
128 : ADD  5, 3, 0 ;  Update pointer
129 : LDA 7, 78(0) ;  Call hasDivisorFrom
130 : LD 1, 3(5) ;  Load callee return value into R1
131 : LDC  4, 3(0) ;  Load frame size
132 : SUB  5, 5, 4 ;  Restore pointer
133 : LDC  2, 1(0) ;  Load 1 into R2
134 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
135 : ST   1, 2(5) ;  Store function result into stack frame
136 : LD   6, 0(5) ;  Load return address
137 : LDA  7, 0(6) ;  Return to caller
138 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
139 : LD   1, 1(5) ;  Load parameter 'current' into R1
140 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='current',line=15) into callee frame
141 : LDA 6, 2(7) ;  Compute return address
142 : ST 6, 0(3) ;  Store return address in callee frame
143 : ADD  5, 3, 0 ;  Update pointer
144 : LDA 7, 121(0) ;  Call isPrime
145 : LD 1, 2(5) ;  Load callee return value into R1
146 : LDC  4, 4(0) ;  Load frame size
147 : SUB  5, 5, 4 ;  Restore pointer
148 : JEQ  1, 151(0) ;  If condition is false, jump to ELSE
149 : LD   1, 1(5) ;  Load parameter 'current' into R1
150 : LDA  7, 152(0) ;  Skip ELSE block
151 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
152 : LDA  3, 4(5) ;  Update DMEM pointer
153 : LDA  6, 2(7) ;  Compute return address
154 : ST   6, 0(3) ;  Store return address
155 : ADD  5, 3, 0 ;  Updated Pointer
156 : LDA  7, 8(0) ; Call print
157 : LDC  4, 4)0) ;  Load frame size
158 : SUB  5, 5, 4 ;  Restore pointer
159 : ST   1, 3(5) ;  Store function result into stack frame
160 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'sieveAt'
161 : LD   1, 1(5) ;  Load parameter 'current' into R1
162 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
163 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
164 : ADD  1, 2, 1 ;  R1 = left + right
165 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='current',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16) into callee frame
166 : LD   1, 2(5) ;  Load parameter 'max' into R1
167 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='max',line=16) into callee frame
168 : LDA 6, 2(7) ;  Compute return address
169 : ST 6, 0(3) ;  Store return address in callee frame
170 : ADD  5, 3, 0 ;  Update pointer
171 : LDA 7, 178(0) ;  Call sieveAt
172 : LD 1, 3(5) ;  Load callee return value into R1
173 : LDC  4, 4(0) ;  Load frame size
174 : SUB  5, 5, 4 ;  Restore pointer
175 : ST   1, 3(5) ;  Store function result into stack frame
176 : LD   6, 0(5) ;  Load return address
177 : LDA  7, 0(6) ;  Return to caller
178 : LD   1, 2(5) ;  Load parameter 'max' into R1
179 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
180 : LD   1, 1(5) ;  Load parameter 'current' into R1
181 : SUB  1, 2, 1 ;  left - right for less-than check
182 : JLT  1, 2(7) ;  If R1 < 0, jump to true
183 : LDC  1, 0(0) ;  false
184 : LDA  7, 1(7) ;  skip setting true
185 : LDC  1, 1(0) ;  true
186 : JEQ  1, 189(0) ;  If condition is false, jump to ELSE
187 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
188 : LDA  7, 201(0) ;  Skip ELSE block
189 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'doSieveAt'
190 : LD   1, 1(5) ;  Load parameter 'current' into R1
191 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='current',line=10) into callee frame
192 : LD   1, 2(5) ;  Load parameter 'max' into R1
193 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='max',line=10) into callee frame
194 : LDA 6, 2(7) ;  Compute return address
195 : ST 6, 0(3) ;  Store return address in callee frame
196 : ADD  5, 3, 0 ;  Update pointer
197 : LDA 7, 138(0) ;  Call doSieveAt
198 : LD 1, 3(5) ;  Load callee return value into R1
199 : LDC  4, 4(0) ;  Load frame size
200 : SUB  5, 5, 4 ;  Restore pointer
201 : ST   1, 3(5) ;  Store function result into stack frame
202 : LD   6, 0(5) ;  Load return address
203 : LDA  7, 0(6) ;  Return to caller
