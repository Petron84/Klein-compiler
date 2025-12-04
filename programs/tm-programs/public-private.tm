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
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 34(0) ;  If condition is false, jump to ELSE
22 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'factor'
23 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
24 : ST 1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2147481647',line=6) into callee frame
25 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
26 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2047483747',line=6) into callee frame
27 : LDA 6, 2(7) ;  Compute return address
28 : ST 6, 0(5) ;  Store return address in callee frame
29 : LDA 7, 132(0) ;  Call factor
30 : LD 1, 3(5) ;  Load callee return value into R1
31 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
32 : ST 1, 6(0) ;  Store function-call result into caller's return slot
33 : LDA  7, 45(0) ;  Skip ELSE block
34 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'factor'
35 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
36 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=8) into callee frame
37 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
38 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=8) into callee frame
39 : LDA 6, 2(7) ;  Compute return address
40 : ST 6, 0(5) ;  Store return address in callee frame
41 : LDA 7, 132(0) ;  Call factor
42 : LD 1, 3(5) ;  Load callee return value into R1
43 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
44 : ST 1, 6(0) ;  Store function-call result into caller's return slot
45 : LD   1, 6(0) ;  Load return value into register 1
46 : LD  6, 3(0) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : SUB  1, 2, 1 ;  left - right for less-than check
52 : JLT  1, 2(7) ;  If R1 < 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
57 : LD   1, 1(5) ;  Load parameter 'a' into R1
58 : LDA  7, 72(0) ;  Skip ELSE block
59 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
60 : LD   1, 1(5) ;  Load parameter 'a' into R1
61 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : SUB  1, 2, 1 ;  R1 = left - right
64 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='a',line=38), Tree Node('IDENTIFIER', value='b',line=38)],line=38) into callee frame
65 : LD   1, 2(5) ;  Load parameter 'b' into R1
66 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=38) into callee frame
67 : LDA 6, 2(7) ;  Compute return address
68 : ST 6, 0(5) ;  Store return address in callee frame
69 : LDA 7, 48(0) ;  Call remainder
70 : LD 1, 3(5) ;  Load callee return value into R1
71 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
72 : ST   1, 3(5) ;  Store function result into stack frame
73 : LD   6, 0(5) ;  Load return address
74 : LDA  7, 0(6) ;  Return to caller
75 : LD   1, 2(5) ;  Load parameter 'b' into R1
76 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
77 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : JEQ  1, 86(0) ;  If condition is false, jump to ELSE
84 : LD   1, 1(5) ;  Load parameter 'a' into R1
85 : LDA  7, 105(0) ;  Skip ELSE block
86 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
87 : LD   1, 2(5) ;  Load parameter 'b' into R1
88 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=32) into callee frame
89 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
90 : LD   1, 1(5) ;  Load parameter 'a' into R1
91 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=32) into callee frame
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=32) into callee frame
94 : LDA 6, 2(7) ;  Compute return address
95 : ST 6, 0(5) ;  Store return address in callee frame
96 : LDA 7, 48(0) ;  Call remainder
97 : LD 1, 3(5) ;  Load callee return value into R1
98 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
99 : ST 1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='remainder',line=32), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=32), Tree Node('IDENTIFIER', value='b',line=32)],line=32)],line=32) into callee frame
100 : LDA 6, 2(7) ;  Compute return address
101 : ST 6, 0(5) ;  Store return address in callee frame
102 : LDA 7, 75(0) ;  Call gcd
103 : LD 1, 3(5) ;  Load callee return value into R1
104 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
105 : ST   1, 3(5) ;  Store function result into stack frame
106 : LD   6, 0(5) ;  Load return address
107 : LDA  7, 0(6) ;  Return to caller
108 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
109 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
110 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
111 : DIV  1, 2, 1 ;  R1 = left / right
112 : LDA  5, 5(5) ;  Update DMEM pointer
113 : LDA  6, 2(7) ;  Compute return address
114 : ST   6, 0(5) ;  Store return address
115 : LDA  7, 10(0) ; Call print
116 : LDC  5, -5(5) ;  Move pointer to previous stack frame
117 : ST   1, 4(5) ;  Store function result into stack frame
118 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
119 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
120 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
121 : DIV  1, 2, 1 ;  R1 = left / right
122 : LDA  5, 5(5) ;  Update DMEM pointer
123 : LDA  6, 2(7) ;  Compute return address
124 : ST   6, 0(5) ;  Store return address
125 : LDA  7, 10(0) ; Call print
126 : LDC  5, -5(5) ;  Move pointer to previous stack frame
127 : ST   1, 4(5) ;  Store function result into stack frame
128 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
129 : ST   1, 4(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'displayAndPrint'
133 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
134 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=15) into callee frame
135 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
136 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=15) into callee frame
137 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
138 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
139 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=17) into callee frame
140 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
141 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=17) into callee frame
142 : LDA 6, 2(7) ;  Compute return address
143 : ST 6, 0(5) ;  Store return address in callee frame
144 : LDA 7, 75(0) ;  Call gcd
145 : LD 1, 3(5) ;  Load callee return value into R1
146 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
147 : ST 1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='gcd',line=16), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='publicKey',line=17), Tree Node('IDENTIFIER', value='privateKey',line=17)],line=17)],line=17) into callee frame
148 : LDA 6, 2(7) ;  Compute return address
149 : ST 6, 0(5) ;  Store return address in callee frame
150 : LDA 7, 108(0) ;  Call displayAndPrint
151 : LD 1, 4(5) ;  Load callee return value into R1
152 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
153 : ST   1, 3(5) ;  Store function result into stack frame
154 : LD   6, 0(5) ;  Load return address
155 : LDA  7, 0(6) ;  Return to caller
