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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : LDA  3, 4(5) ;  Update DMEM pointer
15 : LDA  6, 2(7) ;  Compute return address
16 : ST   6, 0(3) ;  Store return address
17 : ADD  5, 3, 0 ;  Updated Pointer
18 : LDA  7, 10(0) ; Call print
19 : LDC  4, 4(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'mult'
22 : LD   1, 1(5) ;  Load parameter 'm' into R1
23 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=18) into callee frame
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=18) into callee frame
26 : LDA 6, 2(7) ;  Compute return address
27 : ST 6, 0(3) ;  Store return address in callee frame
28 : ADD  5, 3, 0 ;  Update pointer
29 : LDA 7, 37(0) ;  Call mult
30 : LD 1, 3(5) ;  Load callee return value into R1
31 : LDC  4, 4(0) ;  Load frame size
32 : SUB  5, 5, 4 ;  Restore pointer
33 : ST 1, 6(0) ;  Store function-call result into caller's return slot
34 : LD   1, 6(0) ;  Load return value into register 1
35 : LD  6, 3(0) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
37 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
38 : LD   1, 1(5) ;  Load parameter 'm' into R1
39 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=14) into callee frame
40 : LD   1, 2(5) ;  Load parameter 'n' into R1
41 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=14) into callee frame
42 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
43 : ST 1, 3(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=14) into callee frame
44 : LDA 6, 2(7) ;  Compute return address
45 : ST 6, 0(3) ;  Store return address in callee frame
46 : ADD  5, 3, 0 ;  Update pointer
47 : LDA 7, 54(0) ;  Call multWithAccum
48 : LD 1, 4(5) ;  Load callee return value into R1
49 : LDC  4, 4(0) ;  Load frame size
50 : SUB  5, 5, 4 ;  Restore pointer
51 : ST   1, 3(5) ;  Store function result into stack frame
52 : LD   6, 0(5) ;  Load return address
53 : LDA  7, 0(6) ;  Return to caller
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
56 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
57 : SUB  1, 2, 1 ;  left - right for equality check
58 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
59 : LDC  1, 0(0) ;  false
60 : LDA  7, 1(7) ;  skip setting true
61 : LDC  1, 1(0) ;  true
62 : JEQ  1, 65(0) ;  If condition is false, jump to ELSE
63 : LD   1, 3(5) ;  Load parameter 'accum' into R1
64 : LDA  7, 129(0) ;  Skip ELSE block
65 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'MOD'
66 : LD   1, 2(5) ;  Load parameter 'n' into R1
67 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=8) into callee frame
68 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
69 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=8) into callee frame
70 : LDA 6, 2(7) ;  Compute return address
71 : ST 6, 0(3) ;  Store return address in callee frame
72 : ADD  5, 3, 0 ;  Update pointer
73 : LDA 7, 132(0) ;  Call MOD
74 : LD 1, 3(5) ;  Load callee return value into R1
75 : LDC  4, 5(0) ;  Load frame size
76 : SUB  5, 5, 4 ;  Restore pointer
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : JEQ  1, 109(0) ;  If condition is false, jump to ELSE
85 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
86 : LD   1, 1(5) ;  Load parameter 'm' into R1
87 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
88 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='m',line=9), Tree Node('INTEGER-LITERAL', value='2',line=9)],line=9) into callee frame
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
94 : DIV  1, 2, 1 ;  R1 = left / right
95 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('INTEGER-LITERAL', value='2',line=9)],line=9) into callee frame
96 : LD   1, 3(5) ;  Load parameter 'accum' into R1
97 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
98 : LD   1, 1(5) ;  Load parameter 'm' into R1
99 : ADD  1, 2, 1 ;  R1 = left + right
100 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='accum',line=9), Tree Node('IDENTIFIER', value='m',line=9)],line=9) into callee frame
101 : LDA 6, 2(7) ;  Compute return address
102 : ST 6, 0(3) ;  Store return address in callee frame
103 : ADD  5, 3, 0 ;  Update pointer
104 : LDA 7, 54(0) ;  Call multWithAccum
105 : LD 1, 4(5) ;  Load callee return value into R1
106 : LDC  4, 5(0) ;  Load frame size
107 : SUB  5, 5, 4 ;  Restore pointer
108 : LDA  7, 129(0) ;  Skip ELSE block
109 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
110 : LD   1, 1(5) ;  Load parameter 'm' into R1
111 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
112 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
113 : MUL  1, 2, 1 ;  R1 = left * right
114 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='m',line=11), Tree Node('INTEGER-LITERAL', value='2',line=11)],line=11) into callee frame
115 : LD   1, 2(5) ;  Load parameter 'n' into R1
116 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
117 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
118 : DIV  1, 2, 1 ;  R1 = left / right
119 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=11), Tree Node('INTEGER-LITERAL', value='2',line=11)],line=11) into callee frame
120 : LD   1, 3(5) ;  Load parameter 'accum' into R1
121 : ST 1, 3(3) ;  Store argument Tree Node('IDENTIFIER', value='accum',line=11) into callee frame
122 : LDA 6, 2(7) ;  Compute return address
123 : ST 6, 0(3) ;  Store return address in callee frame
124 : ADD  5, 3, 0 ;  Update pointer
125 : LDA 7, 54(0) ;  Call multWithAccum
126 : LD 1, 4(5) ;  Load callee return value into R1
127 : LDC  4, 5(0) ;  Load frame size
128 : SUB  5, 5, 4 ;  Restore pointer
129 : ST   1, 4(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LD   1, 1(5) ;  Load parameter 'm' into R1
133 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
134 : LD   1, 1(5) ;  Load parameter 'm' into R1
135 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
136 : LD   1, 2(5) ;  Load parameter 'n' into R1
137 : DIV  1, 2, 1 ;  R1 = left / right
138 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
139 : LD   1, 2(5) ;  Load parameter 'n' into R1
140 : MUL  1, 2, 1 ;  R1 = left * right
141 : SUB  1, 2, 1 ;  R1 = left - right
142 : ST   1, 3(5) ;  Store function result into stack frame
143 : LD   6, 0(5) ;  Load return address
144 : LDA  7, 0(6) ;  Return to caller
