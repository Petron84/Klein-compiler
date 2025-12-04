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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'average_digit'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2) into callee frame
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2) into callee frame
16 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
17 : ST 1, 3(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2) into callee frame
18 : LDA 6, 2(7) ;  Compute return address
19 : ST 6, 0(3) ;  Store return address in callee frame
20 : ADD  5, 3, 0 ;  Update pointer
21 : LDA 7, 78(0) ;  Call average_digit
22 : LD 1, 4(5) ;  Load callee return value into R1
23 : LDC  4, 3(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 4(0) ;  Store function-call result into caller's return slot
26 : LD   1, 4(0) ;  Load return value into register 1
27 : LD  6, 2(0) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LD   1, 1(5) ;  Load parameter 'm' into R1
32 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
33 : LD   1, 2(5) ;  Load parameter 'n' into R1
34 : DIV  1, 2, 1 ;  R1 = left / right
35 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
36 : LD   1, 2(5) ;  Load parameter 'n' into R1
37 : MUL  1, 2, 1 ;  R1 = left * right
38 : SUB  1, 2, 1 ;  R1 = left - right
39 : ST   1, 3(5) ;  Store function result into stack frame
40 : LD   6, 0(5) ;  Load return address
41 : LDA  7, 0(6) ;  Return to caller
42 : LD   1, 1(5) ;  Load parameter 'sum' into R1
43 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
44 : LD   1, 2(5) ;  Load parameter 'n' into R1
45 : DIV  1, 2, 1 ;  R1 = left / right
46 : LDA  3, 4(5) ;  Update DMEM pointer
47 : LDA  6, 2(7) ;  Compute return address
48 : ST   6, 0(3) ;  Store return address
49 : ADD  5, 3, 0 ;  Updated Pointer
50 : LDA  7, 8(0) ; Call print
51 : LDC  4, 4)0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
55 : LD   1, 1(5) ;  Load parameter 'sum' into R1
56 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='sum',line=11) into callee frame
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=11) into callee frame
59 : LDA 6, 2(7) ;  Compute return address
60 : ST 6, 0(3) ;  Store return address in callee frame
61 : ADD  5, 3, 0 ;  Update pointer
62 : LDA 7, 29(0) ;  Call MOD
63 : LD 1, 3(5) ;  Load callee return value into R1
64 : LDC  4, 4(0) ;  Load frame size
65 : SUB  5, 5, 4 ;  Restore pointer
66 : LDA  3, 4(5) ;  Update DMEM pointer
67 : LDA  6, 2(7) ;  Compute return address
68 : ST   6, 0(3) ;  Store return address
69 : ADD  5, 3, 0 ;  Updated Pointer
70 : LDA  7, 8(0) ; Call print
71 : LDC  4, 4)0) ;  Load frame size
72 : SUB  5, 5, 4 ;  Restore pointer
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   1, 2(5) ;  Load parameter 'n' into R1
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 1(5) ;  Load parameter 'n' into R1
79 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
80 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
81 : SUB  1, 2, 1 ;  left - right for less-than check
82 : JLT  1, 2(7) ;  If R1 < 0, jump to true
83 : LDC  1, 0(0) ;  false
84 : LDA  7, 1(7) ;  skip setting true
85 : LDC  1, 1(0) ;  true
86 : JEQ  1, 106(0) ;  If condition is false, jump to ELSE
87 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'print_and_return'
88 : LD   1, 2(5) ;  Load parameter 'sum' into R1
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LD   1, 1(5) ;  Load parameter 'n' into R1
91 : ADD  1, 2, 1 ;  R1 = left + right
92 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=6), Tree Node('IDENTIFIER', value='n',line=6)],line=6) into callee frame
93 : LD   1, 3(5) ;  Load parameter 'i' into R1
94 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
95 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
96 : ADD  1, 2, 1 ;  R1 = left + right
97 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=6), Tree Node('INTEGER-LITERAL', value='1',line=6)],line=6) into callee frame
98 : LDA 6, 2(7) ;  Compute return address
99 : ST 6, 0(3) ;  Store return address in callee frame
100 : ADD  5, 3, 0 ;  Update pointer
101 : LDA 7, 42(0) ;  Call print_and_return
102 : LD 1, 3(5) ;  Load callee return value into R1
103 : LDC  4, 5(0) ;  Load frame size
104 : SUB  5, 5, 4 ;  Restore pointer
105 : LDA  7, 140(0) ;  Skip ELSE block
106 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'average_digit'
107 : LD   1, 1(5) ;  Load parameter 'n' into R1
108 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
109 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
110 : DIV  1, 2, 1 ;  R1 = left / right
111 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7) into callee frame
112 : LD   1, 2(5) ;  Load parameter 'sum' into R1
113 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
114 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'MOD'
115 : LD   1, 1(5) ;  Load parameter 'n' into R1
116 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7) into callee frame
117 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
118 : ST 1, 2(3) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=7) into callee frame
119 : LDA 6, 2(7) ;  Compute return address
120 : ST 6, 0(3) ;  Store return address in callee frame
121 : ADD  5, 3, 0 ;  Update pointer
122 : LDA 7, 29(0) ;  Call MOD
123 : LD 1, 3(5) ;  Load callee return value into R1
124 : LDC  4, 5(0) ;  Load frame size
125 : SUB  5, 5, 4 ;  Restore pointer
126 : ADD  1, 2, 1 ;  R1 = left + right
127 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=7), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=7), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7)],line=7)],line=7) into callee frame
128 : LD   1, 3(5) ;  Load parameter 'i' into R1
129 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
130 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
131 : ADD  1, 2, 1 ;  R1 = left + right
132 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7) into callee frame
133 : LDA 6, 2(7) ;  Compute return address
134 : ST 6, 0(3) ;  Store return address in callee frame
135 : ADD  5, 3, 0 ;  Update pointer
136 : LDA 7, 78(0) ;  Call average_digit
137 : LD 1, 4(5) ;  Load callee return value into R1
138 : LDC  4, 5(0) ;  Load frame size
139 : SUB  5, 5, 4 ;  Restore pointer
140 : ST   1, 4(5) ;  Store function result into stack frame
141 : LD   6, 0(5) ;  Load return address
142 : LDA  7, 0(6) ;  Return to caller
