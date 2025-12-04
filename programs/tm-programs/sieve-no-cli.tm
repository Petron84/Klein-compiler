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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'sieveAt'
12 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
13 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=4) into callee frame
14 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='40',line=4) into callee frame
16 : LDA 6, 2(7) ;  Compute return address
17 : ST 6, 0(5) ;  Store return address in callee frame
18 : LDA 7, 160(0) ;  Call sieveAt
19 : LD 1, 3(5) ;  Load callee return value into R1
20 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
21 : ST 1, 4(0) ;  Store function-call result into caller's return slot
22 : LD   1, 4(0) ;  Load return value into register 1
23 : LD  6, 2(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 1(5) ;  Load parameter 'num' into R1
26 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
27 : LD   1, 2(5) ;  Load parameter 'den' into R1
28 : SUB  1, 2, 1 ;  left - right for less-than check
29 : JLT  1, 2(7) ;  If R1 < 0, jump to true
30 : LDC  1, 0(0) ;  false
31 : LDA  7, 1(7) ;  skip setting true
32 : LDC  1, 1(0) ;  true
33 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
34 : LD   1, 1(5) ;  Load parameter 'num' into R1
35 : LDA  7, 49(0) ;  Skip ELSE block
36 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'rem'
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 2(5) ;  Load parameter 'den' into R1
40 : SUB  1, 2, 1 ;  R1 = left - right
41 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=34), Tree Node('IDENTIFIER', value='den',line=34)],line=34) into callee frame
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='den',line=34) into callee frame
44 : LDA 6, 2(7) ;  Compute return address
45 : ST 6, 0(5) ;  Store return address in callee frame
46 : LDA 7, 25(0) ;  Call rem
47 : LD 1, 3(5) ;  Load callee return value into R1
48 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
49 : ST   1, 3(5) ;  Store function result into stack frame
50 : LD   6, 0(5) ;  Load return address
51 : LDA  7, 0(6) ;  Return to caller
52 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'rem'
53 : LD   1, 2(5) ;  Load parameter 'b' into R1
54 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=28) into callee frame
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=28) into callee frame
57 : LDA 6, 2(7) ;  Compute return address
58 : ST 6, 0(5) ;  Store return address in callee frame
59 : LDA 7, 25(0) ;  Call rem
60 : LD 1, 3(5) ;  Load callee return value into R1
61 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
64 : SUB  1, 2, 1 ;  left - right for equality check
65 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
72 : LD   1, 1(5) ;  Load parameter 'i' into R1
73 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
74 : LD   1, 2(5) ;  Load parameter 'n' into R1
75 : SUB  1, 2, 1 ;  left - right for less-than check
76 : JLT  1, 2(7) ;  If R1 < 0, jump to true
77 : LDC  1, 0(0) ;  false
78 : LDA  7, 1(7) ;  skip setting true
79 : LDC  1, 1(0) ;  true
80 : JEQ  1, 107(0) ;  If condition is false, jump to ELSE
81 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
82 : LD   1, 1(5) ;  Load parameter 'i' into R1
83 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='i',line=23) into callee frame
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23) into callee frame
86 : LDA 6, 2(7) ;  Compute return address
87 : ST 6, 0(5) ;  Store return address in callee frame
88 : LDA 7, 52(0) ;  Call divides
89 : LD 1, 3(5) ;  Load callee return value into R1
90 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
91 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
92 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
93 : LD   1, 1(5) ;  Load parameter 'i' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
96 : ADD  1, 2, 1 ;  R1 = left + right
97 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=23), Tree Node('INTEGER-LITERAL', value='1',line=23)],line=23) into callee frame
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=23) into callee frame
100 : LDA 6, 2(7) ;  Compute return address
101 : ST 6, 0(5) ;  Store return address in callee frame
102 : LDA 7, 72(0) ;  Call hasDivisorFrom
103 : LD 1, 3(5) ;  Load callee return value into R1
104 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
105 : ADD  1, 2, 1 ;  R1 = left OR right
106 : LDA  7, 108(0) ;  Skip ELSE block
107 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
108 : ST   1, 3(5) ;  Store function result into stack frame
109 : LD   6, 0(5) ;  Load return address
110 : LDA  7, 0(6) ;  Return to caller
111 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'hasDivisorFrom'
112 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
113 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=19) into callee frame
114 : LD   1, 1(5) ;  Load parameter 'n' into R1
115 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=19) into callee frame
116 : LDA 6, 2(7) ;  Compute return address
117 : ST 6, 0(5) ;  Store return address in callee frame
118 : LDA 7, 72(0) ;  Call hasDivisorFrom
119 : LD 1, 3(5) ;  Load callee return value into R1
120 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
121 : LDC  2, 1(0) ;  Load 1 into R2
122 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
123 : ST   1, 2(5) ;  Store function result into stack frame
124 : LD   6, 0(5) ;  Load return address
125 : LDA  7, 0(6) ;  Return to caller
126 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
127 : LD   1, 1(5) ;  Load parameter 'current' into R1
128 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='current',line=15) into callee frame
129 : LDA 6, 2(7) ;  Compute return address
130 : ST 6, 0(5) ;  Store return address in callee frame
131 : LDA 7, 111(0) ;  Call isPrime
132 : LD 1, 2(5) ;  Load callee return value into R1
133 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
134 : JEQ  1, 137(0) ;  If condition is false, jump to ELSE
135 : LD   1, 1(5) ;  Load parameter 'current' into R1
136 : LDA  7, 138(0) ;  Skip ELSE block
137 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
138 : LDA  5, 4(5) ;  Update DMEM pointer
139 : LDA  6, 2(7) ;  Compute return address
140 : ST   6, 0(5) ;  Store return address
141 : LDA  7, 8(0) ; Call print
142 : LDC  5, -4(5) ;  Move pointer to previous stack frame
143 : ST   1, 3(5) ;  Store function result into stack frame
144 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'sieveAt'
145 : LD   1, 1(5) ;  Load parameter 'current' into R1
146 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
147 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
148 : ADD  1, 2, 1 ;  R1 = left + right
149 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='current',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16) into callee frame
150 : LD   1, 2(5) ;  Load parameter 'max' into R1
151 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='max',line=16) into callee frame
152 : LDA 6, 2(7) ;  Compute return address
153 : ST 6, 0(5) ;  Store return address in callee frame
154 : LDA 7, 160(0) ;  Call sieveAt
155 : LD 1, 3(5) ;  Load callee return value into R1
156 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
157 : ST   1, 3(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
160 : LD   1, 2(5) ;  Load parameter 'max' into R1
161 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
162 : LD   1, 1(5) ;  Load parameter 'current' into R1
163 : SUB  1, 2, 1 ;  left - right for less-than check
164 : JLT  1, 2(7) ;  If R1 < 0, jump to true
165 : LDC  1, 0(0) ;  false
166 : LDA  7, 1(7) ;  skip setting true
167 : LDC  1, 1(0) ;  true
168 : JEQ  1, 171(0) ;  If condition is false, jump to ELSE
169 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
170 : LDA  7, 181(0) ;  Skip ELSE block
171 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'doSieveAt'
172 : LD   1, 1(5) ;  Load parameter 'current' into R1
173 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='current',line=10) into callee frame
174 : LD   1, 2(5) ;  Load parameter 'max' into R1
175 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='max',line=10) into callee frame
176 : LDA 6, 2(7) ;  Compute return address
177 : ST 6, 0(5) ;  Store return address in callee frame
178 : LDA 7, 126(0) ;  Call doSieveAt
179 : LD 1, 3(5) ;  Load callee return value into R1
180 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
181 : ST   1, 3(5) ;  Store function result into stack frame
182 : LD   6, 0(5) ;  Load return address
183 : LDA  7, 0(6) ;  Return to caller
