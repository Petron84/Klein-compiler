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
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : DIV  1, 2, 1 ;  R1 = left / right
15 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)
16 : LD   1, 1(5) ;  Load parameter 'n' into R1
17 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2)
18 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
19 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=2)
20 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'MOD'
21 : LDA  6, 2(7) ;  Compute return address
22 : ST   6, 0(5) ;  Store return address in frame
23 : LDA  7, 37(0) ;  Call MOD
24 : LD   1, 3(5) ;  Load return value into R1
25 : LDC  5, 5(0) ;  Restore DMEM pointer to caller frame
26 : ST   1, 2(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=2), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)],line=2)
27 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'divisibleByParts'
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address in frame
30 : LDA  7, 115(0) ;  Call divisibleByParts
31 : LD   1, 3(5) ;  Load return value into R1
32 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
33 : ST   1, 4(0) ;  Store function-call result into caller's return slot
34 : LD   1, 4(0) ;  Load return value into register 1
35 : LD  6, 2(0) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
37 : LD   1, 1(5) ;  Load parameter 'm' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 1(5) ;  Load parameter 'm' into R1
40 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
41 : LD   1, 2(5) ;  Load parameter 'n' into R1
42 : DIV  1, 2, 1 ;  R1 = left / right
43 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
44 : LD   1, 2(5) ;  Load parameter 'n' into R1
45 : MUL  1, 2, 1 ;  R1 = left * right
46 : SUB  1, 2, 1 ;  R1 = left - right
47 : ST   1, 3(5) ;  Store function result into stack frame
48 : LD   6, 0(5) ;  Load return address
49 : LDA  7, 0(6) ;  Return to caller
50 : LD   1, 1(5) ;  Load parameter 'diff' into R1
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
53 : SUB  1, 2, 1 ;  left - right for equality check
54 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
55 : LDC  1, 0(0) ;  false
56 : LDA  7, 1(7) ;  skip setting true
57 : LDC  1, 1(0) ;  true
58 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
59 : LD   1, 1(5) ;  Load parameter 'diff' into R1
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : ADD  1, 2, 1 ;  R1 = left OR right
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LD   1, 1(5) ;  Load parameter 'diff' into R1
70 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
71 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
72 : SUB  1, 0, 1 ;  Negate value in R1
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ADD  1, 2, 1 ;  R1 = left OR right
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LD   1, 1(5) ;  Load parameter 'diff' into R1
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
83 : SUB  1, 0, 1 ;  Negate value in R1
84 : SUB  1, 2, 1 ;  left - right for equality check
85 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : ADD  1, 2, 1 ;  R1 = left OR right
90 : JEQ  1, 93(0) ;  If condition is false, jump to ELSE
91 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
92 : LDA  7, 112(0) ;  Skip ELSE block
93 : LD   1, 1(5) ;  Load parameter 'diff' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
96 : SUB  1, 2, 1 ;  left - right for less-than check
97 : JLT  1, 2(7) ;  If R1 < 0, jump to true
98 : LDC  1, 0(0) ;  false
99 : LDA  7, 1(7) ;  skip setting true
100 : LDC  1, 1(0) ;  true
101 : JEQ  1, 104(0) ;  If condition is false, jump to ELSE
102 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
103 : LDA  7, 112(0) ;  Skip ELSE block
104 : LD   1, 1(5) ;  Load parameter 'diff' into R1
105 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='diff',line=14)
106 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'main'
107 : LDA  6, 2(7) ;  Compute return address
108 : ST   6, 0(5) ;  Store return address in frame
109 : LDA  7, 11(0) ;  Call main
110 : LD   1, 2(5) ;  Load return value into R1
111 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
112 : ST   1, 2(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
115 : LD   1, 1(5) ;  Load parameter 'left' into R1
116 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
117 : LD   1, 2(5) ;  Load parameter 'right' into R1
118 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
119 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
120 : MUL  1, 2, 1 ;  R1 = left * right
121 : SUB  1, 2, 1 ;  R1 = left - right
122 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='left',line=5), Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='right',line=5), Tree Node('INTEGER-LITERAL', value='2',line=5)],line=5)],line=5)
123 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'divisibleByDifference'
124 : LDA  6, 2(7) ;  Compute return address
125 : ST   6, 0(5) ;  Store return address in frame
126 : LDA  7, 50(0) ;  Call divisibleByDifference
127 : LD   1, 2(5) ;  Load return value into R1
128 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
