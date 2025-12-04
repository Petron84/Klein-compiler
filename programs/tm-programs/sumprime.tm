0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 5, 2(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
10 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
11 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=30) into callee frame
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='20',line=30) into callee frame
14 : LDA 6, 2(7) ;  Compute return address
15 : ST 6, 0(5) ;  Store return address in callee frame
16 : LDA 7, 23(0) ;  Call sumPrimes
17 : LD 1, 3(5) ;  Load callee return value into R1
18 : LDA 5, -2(5) ;  Restore DMEM pointer to caller frame
19 : ST 1, 2(0) ;  Store function-call result into caller's return slot
20 : LD   1, 2(0) ;  Load return value into register 1
21 : LD  6, 1(0) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
23 : LD   1, 2(5) ;  Load parameter 'b' into R1
24 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
25 : LD   1, 1(5) ;  Load parameter 'a' into R1
26 : SUB  1, 2, 1 ;  left - right for less-than check
27 : JLT  1, 2(7) ;  If R1 < 0, jump to true
28 : LDC  1, 0(0) ;  false
29 : LDA  7, 1(7) ;  skip setting true
30 : LDC  1, 1(0) ;  true
31 : JEQ  1, 34(0) ;  If condition is false, jump to ELSE
32 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
33 : LDA  7, 73(0) ;  Skip ELSE block
34 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
35 : LD   1, 1(5) ;  Load parameter 'a' into R1
36 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=24) into callee frame
37 : LDA 6, 2(7) ;  Compute return address
38 : ST 6, 0(5) ;  Store return address in callee frame
39 : LDA 7, 76(0) ;  Call isPrime
40 : LD 1, 2(5) ;  Load callee return value into R1
41 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
42 : JEQ  1, 60(0) ;  If condition is false, jump to ELSE
43 : LD   1, 1(5) ;  Load parameter 'a' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
48 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
49 : ADD  1, 2, 1 ;  R1 = left + right
50 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=25), Tree Node('INTEGER-LITERAL', value='1',line=25)],line=25) into callee frame
51 : LD   1, 2(5) ;  Load parameter 'b' into R1
52 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=25) into callee frame
53 : LDA 6, 2(7) ;  Compute return address
54 : ST 6, 0(5) ;  Store return address in callee frame
55 : LDA 7, 23(0) ;  Call sumPrimes
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
58 : ADD  1, 2, 1 ;  R1 = left + right
59 : LDA  7, 73(0) ;  Skip ELSE block
60 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
64 : ADD  1, 2, 1 ;  R1 = left + right
65 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='a',line=27), Tree Node('INTEGER-LITERAL', value='1',line=27)],line=27) into callee frame
66 : LD   1, 2(5) ;  Load parameter 'b' into R1
67 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=27) into callee frame
68 : LDA 6, 2(7) ;  Compute return address
69 : ST 6, 0(5) ;  Store return address in callee frame
70 : LDA 7, 23(0) ;  Call sumPrimes
71 : LD 1, 3(5) ;  Load callee return value into R1
72 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
76 : LD   1, 1(5) ;  Load parameter 'n' into R1
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
79 : SUB  1, 2, 1 ;  left - right for less-than check
80 : JLT  1, 2(7) ;  If R1 < 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : JEQ  1, 87(0) ;  If condition is false, jump to ELSE
85 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
86 : LDA  7, 136(0) ;  Skip ELSE block
87 : LD   1, 1(5) ;  Load parameter 'n' into R1
88 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
89 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
90 : SUB  1, 2, 1 ;  left - right for equality check
91 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
92 : LDC  1, 0(0) ;  false
93 : LDA  7, 1(7) ;  skip setting true
94 : LDC  1, 1(0) ;  true
95 : JEQ  1, 98(0) ;  If condition is false, jump to ELSE
96 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
97 : LDA  7, 136(0) ;  Skip ELSE block
98 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=15) into callee frame
101 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
102 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=15) into callee frame
103 : LDA 6, 2(7) ;  Compute return address
104 : ST 6, 0(5) ;  Store return address in callee frame
105 : LDA 7, 139(0) ;  Call divisible
106 : LD 1, 3(5) ;  Load callee return value into R1
107 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
110 : LD   1, 1(5) ;  Load parameter 'n' into R1
111 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=15) into callee frame
112 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
113 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='3',line=15) into callee frame
114 : LDA 6, 2(7) ;  Compute return address
115 : ST 6, 0(5) ;  Store return address in callee frame
116 : LDA 7, 139(0) ;  Call divisible
117 : LD 1, 3(5) ;  Load callee return value into R1
118 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
119 : ADD  1, 2, 1 ;  R1 = left OR right
120 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
121 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
122 : LD   1, 1(5) ;  Load parameter 'n' into R1
123 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=15) into callee frame
124 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
125 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='5',line=15) into callee frame
126 : LDA 6, 2(7) ;  Compute return address
127 : ST 6, 0(5) ;  Store return address in callee frame
128 : LDA 7, 139(0) ;  Call divisible
129 : LD 1, 3(5) ;  Load callee return value into R1
130 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
131 : ADD  1, 2, 1 ;  R1 = left OR right
132 : JEQ  1, 135(0) ;  If condition is false, jump to ELSE
133 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
134 : LDA  7, 136(0) ;  Skip ELSE block
135 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
136 : ST   1, 2(5) ;  Store function result into stack frame
137 : LD   6, 0(5) ;  Load return address
138 : LDA  7, 0(6) ;  Return to caller
139 : LD   1, 1(5) ;  Load parameter 'x' into R1
140 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
141 : LD   1, 2(5) ;  Load parameter 'y' into R1
142 : DIV  1, 2, 1 ;  R1 = left / right
143 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
144 : LD   1, 2(5) ;  Load parameter 'y' into R1
145 : MUL  1, 2, 1 ;  R1 = left * right
146 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
147 : LD   1, 1(5) ;  Load parameter 'x' into R1
148 : SUB  1, 2, 1 ;  left - right for equality check
149 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
150 : LDC  1, 0(0) ;  false
151 : LDA  7, 1(7) ;  skip setting true
152 : LDC  1, 1(0) ;  true
153 : JEQ  1, 156(0) ;  If condition is false, jump to ELSE
154 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
155 : LDA  7, 157(0) ;  Skip ELSE block
156 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
157 : ST   1, 3(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
