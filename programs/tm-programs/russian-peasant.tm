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
14 : LDA  5, 4(5) ;  Update DMEM pointer
15 : LDA  6, 2(7) ;  Compute return address
16 : ST   6, 0(5) ;  Store return address
17 : LDA  7, 10(0) ; Call print
18 : LDC  5, -4(5) ;  Move pointer to previous stack frame
19 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'mult'
20 : LD   1, 1(5) ;  Load parameter 'm' into R1
21 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=18) into callee frame
22 : LD   1, 2(5) ;  Load parameter 'n' into R1
23 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=18) into callee frame
24 : LDA 6, 2(7) ;  Compute return address
25 : ST 6, 0(5) ;  Store return address in callee frame
26 : LDA 7, 33(0) ;  Call mult
27 : LD 1, 3(5) ;  Load callee return value into R1
28 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
29 : ST 1, 6(0) ;  Store function-call result into caller's return slot
30 : LD   1, 6(0) ;  Load return value into register 1
31 : LD  6, 3(0) ;  Load return address for main function into register 6
32 : LDA  7, 0(6) ;  Jump to return address of main function
33 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
34 : LD   1, 1(5) ;  Load parameter 'm' into R1
35 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=14) into callee frame
36 : LD   1, 2(5) ;  Load parameter 'n' into R1
37 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=14) into callee frame
38 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
39 : ST 1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=14) into callee frame
40 : LDA 6, 2(7) ;  Compute return address
41 : ST 6, 0(5) ;  Store return address in callee frame
42 : LDA 7, 48(0) ;  Call multWithAccum
43 : LD 1, 4(5) ;  Load callee return value into R1
44 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
51 : SUB  1, 2, 1 ;  left - right for equality check
52 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
53 : LDC  1, 0(0) ;  false
54 : LDA  7, 1(7) ;  skip setting true
55 : LDC  1, 1(0) ;  true
56 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
57 : LD   1, 3(5) ;  Load parameter 'accum' into R1
58 : LDA  7, 117(0) ;  Skip ELSE block
59 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'MOD'
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=8) into callee frame
62 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
63 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='2',line=8) into callee frame
64 : LDA 6, 2(7) ;  Compute return address
65 : ST 6, 0(5) ;  Store return address in callee frame
66 : LDA 7, 120(0) ;  Call MOD
67 : LD 1, 3(5) ;  Load callee return value into R1
68 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
69 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
70 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
71 : SUB  1, 2, 1 ;  left - right for equality check
72 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
73 : LDC  1, 0(0) ;  false
74 : LDA  7, 1(7) ;  skip setting true
75 : LDC  1, 1(0) ;  true
76 : JEQ  1, 99(0) ;  If condition is false, jump to ELSE
77 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
78 : LD   1, 1(5) ;  Load parameter 'm' into R1
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
81 : MUL  1, 2, 1 ;  R1 = left * right
82 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='m',line=9), Tree Node('INTEGER-LITERAL', value='2',line=9)],line=9) into callee frame
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
86 : DIV  1, 2, 1 ;  R1 = left / right
87 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('INTEGER-LITERAL', value='2',line=9)],line=9) into callee frame
88 : LD   1, 3(5) ;  Load parameter 'accum' into R1
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LD   1, 1(5) ;  Load parameter 'm' into R1
91 : ADD  1, 2, 1 ;  R1 = left + right
92 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='accum',line=9), Tree Node('IDENTIFIER', value='m',line=9)],line=9) into callee frame
93 : LDA 6, 2(7) ;  Compute return address
94 : ST 6, 0(5) ;  Store return address in callee frame
95 : LDA 7, 48(0) ;  Call multWithAccum
96 : LD 1, 4(5) ;  Load callee return value into R1
97 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
98 : LDA  7, 117(0) ;  Skip ELSE block
99 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'multWithAccum'
100 : LD   1, 1(5) ;  Load parameter 'm' into R1
101 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
102 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
103 : MUL  1, 2, 1 ;  R1 = left * right
104 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='m',line=11), Tree Node('INTEGER-LITERAL', value='2',line=11)],line=11) into callee frame
105 : LD   1, 2(5) ;  Load parameter 'n' into R1
106 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
107 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
108 : DIV  1, 2, 1 ;  R1 = left / right
109 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=11), Tree Node('INTEGER-LITERAL', value='2',line=11)],line=11) into callee frame
110 : LD   1, 3(5) ;  Load parameter 'accum' into R1
111 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='accum',line=11) into callee frame
112 : LDA 6, 2(7) ;  Compute return address
113 : ST 6, 0(5) ;  Store return address in callee frame
114 : LDA 7, 48(0) ;  Call multWithAccum
115 : LD 1, 4(5) ;  Load callee return value into R1
116 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
117 : ST   1, 4(5) ;  Store function result into stack frame
118 : LD   6, 0(5) ;  Load return address
119 : LDA  7, 0(6) ;  Return to caller
120 : LD   1, 1(5) ;  Load parameter 'm' into R1
121 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
122 : LD   1, 1(5) ;  Load parameter 'm' into R1
123 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
124 : LD   1, 2(5) ;  Load parameter 'n' into R1
125 : DIV  1, 2, 1 ;  R1 = left / right
126 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
127 : LD   1, 2(5) ;  Load parameter 'n' into R1
128 : MUL  1, 2, 1 ;  R1 = left * right
129 : SUB  1, 2, 1 ;  R1 = left - right
130 : ST   1, 3(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
