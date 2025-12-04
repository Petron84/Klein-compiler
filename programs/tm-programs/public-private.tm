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
22 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
23 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2147481647',line=6)
24 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
25 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2047483747',line=6)
26 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'factor'
27 : LDA  6, 2(7) ;  Compute return address
28 : ST   6, 0(5) ;  Store return address in frame
29 : LDA  7, 132(0) ;  Call factor
30 : LD   1, 3(5) ;  Load return value into R1
31 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
32 : ST   1, 6(0) ;  Store function-call result into caller's return slot
33 : LDA  7, 45(0) ;  Skip ELSE block
34 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
35 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=8)
36 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
37 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=8)
38 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'factor'
39 : LDA  6, 2(7) ;  Compute return address
40 : ST   6, 0(5) ;  Store return address in frame
41 : LDA  7, 132(0) ;  Call factor
42 : LD   1, 3(5) ;  Load return value into R1
43 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
44 : ST   1, 6(0) ;  Store function-call result into caller's return slot
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
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : SUB  1, 2, 1 ;  R1 = left - right
63 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='a',line=38), Tree Node('IDENTIFIER', value='b',line=38)],line=38)
64 : LD   1, 2(5) ;  Load parameter 'b' into R1
65 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=38)
66 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'remainder'
67 : LDA  6, 2(7) ;  Compute return address
68 : ST   6, 0(5) ;  Store return address in frame
69 : LDA  7, 48(0) ;  Call remainder
70 : LD   1, 3(5) ;  Load return value into R1
71 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
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
86 : LD   1, 2(5) ;  Load parameter 'b' into R1
87 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=32)
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=32)
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=32)
92 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'remainder'
93 : LDA  6, 2(7) ;  Compute return address
94 : ST   6, 0(5) ;  Store return address in frame
95 : LDA  7, 48(0) ;  Call remainder
96 : LD   1, 3(5) ;  Load return value into R1
97 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
98 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='remainder',line=32), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='a',line=32), Tree Node('IDENTIFIER', value='b',line=32)],line=32)],line=32)
99 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'gcd'
100 : LDA  6, 2(7) ;  Compute return address
101 : ST   6, 0(5) ;  Store return address in frame
102 : LDA  7, 75(0) ;  Call gcd
103 : LD   1, 3(5) ;  Load return value into R1
104 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
105 : ST   1, 3(5) ;  Store function result into stack frame
106 : LD   6, 0(5) ;  Load return address
107 : LDA  7, 0(6) ;  Return to caller
108 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
109 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
110 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
111 : DIV  1, 2, 1 ;  R1 = left / right
112 : LDC  5, 3(0) ;  Update DMEM pointer
113 : LDA  6, 2(7) ;  Compute return address
114 : ST   6, 0(5) ;  Store return address
115 : LDA  7, 10(0) ; Call print
116 : LDC  5, 3(0) ;  Move pointer to previous stack frame
117 : ST   1, 4(5) ;  Store function result into stack frame
118 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
119 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
120 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
121 : DIV  1, 2, 1 ;  R1 = left / right
122 : LDC  5, 3(0) ;  Update DMEM pointer
123 : LDA  6, 2(7) ;  Compute return address
124 : ST   6, 0(5) ;  Store return address
125 : LDA  7, 10(0) ; Call print
126 : LDC  5, 3(0) ;  Move pointer to previous stack frame
127 : ST   1, 4(5) ;  Store function result into stack frame
128 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
129 : ST   1, 4(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
133 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=15)
134 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
135 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=15)
136 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
137 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='publicKey',line=17)
138 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
139 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='privateKey',line=17)
140 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'gcd'
141 : LDA  6, 2(7) ;  Compute return address
142 : ST   6, 0(5) ;  Store return address in frame
143 : LDA  7, 75(0) ;  Call gcd
144 : LD   1, 3(5) ;  Load return value into R1
145 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
146 : ST   1, 3(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='gcd',line=16), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='publicKey',line=17), Tree Node('IDENTIFIER', value='privateKey',line=17)],line=17)],line=17)
147 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'displayAndPrint'
148 : LDA  6, 2(7) ;  Compute return address
149 : ST   6, 0(5) ;  Store return address in frame
150 : LDA  7, 108(0) ;  Call displayAndPrint
151 : LD   1, 4(5) ;  Load return value into R1
152 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
153 : ST   1, 3(5) ;  Store function result into stack frame
154 : LD   6, 0(5) ;  Load return address
155 : LDA  7, 0(6) ;  Return to caller
