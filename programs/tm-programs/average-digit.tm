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
11 : LDA 5, 3(5) ;  Advance DMEM pointer to callee frame 'average_digit'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2) into callee frame
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2) into callee frame
16 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
17 : ST 1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2) into callee frame
18 : LDA 6, 2(7) ;  Compute return address
19 : ST 6, 0(5) ;  Store return address in callee frame
20 : LDA 7, 70(0) ;  Call average_digit
21 : LD 1, 4(5) ;  Load callee return value into R1
22 : LDA 5, -3(5) ;  Restore DMEM pointer to caller frame
23 : ST 1, 4(0) ;  Store function-call result into caller's return slot
24 : LD   1, 4(0) ;  Load return value into register 1
25 : LD  6, 2(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'm' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LD   1, 2(5) ;  Load parameter 'n' into R1
32 : DIV  1, 2, 1 ;  R1 = left / right
33 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
34 : LD   1, 2(5) ;  Load parameter 'n' into R1
35 : MUL  1, 2, 1 ;  R1 = left * right
36 : SUB  1, 2, 1 ;  R1 = left - right
37 : ST   1, 3(5) ;  Store function result into stack frame
38 : LD   6, 0(5) ;  Load return address
39 : LDA  7, 0(6) ;  Return to caller
40 : LD   1, 1(5) ;  Load parameter 'sum' into R1
41 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
42 : LD   1, 2(5) ;  Load parameter 'n' into R1
43 : DIV  1, 2, 1 ;  R1 = left / right
44 : LDA  5, 4(5) ;  Update DMEM pointer
45 : LDA  6, 2(7) ;  Compute return address
46 : ST   6, 0(5) ;  Store return address
47 : LDA  7, 8(0) ; Call print
48 : LDC  5, -4(5) ;  Move pointer to previous stack frame
49 : ST   1, 3(5) ;  Store function result into stack frame
50 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
51 : LD   1, 1(5) ;  Load parameter 'sum' into R1
52 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='sum',line=11) into callee frame
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=11) into callee frame
55 : LDA 6, 2(7) ;  Compute return address
56 : ST 6, 0(5) ;  Store return address in callee frame
57 : LDA 7, 27(0) ;  Call MOD
58 : LD 1, 3(5) ;  Load callee return value into R1
59 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
60 : LDA  5, 4(5) ;  Update DMEM pointer
61 : LDA  6, 2(7) ;  Compute return address
62 : ST   6, 0(5) ;  Store return address
63 : LDA  7, 8(0) ; Call print
64 : LDC  5, -4(5) ;  Move pointer to previous stack frame
65 : ST   1, 3(5) ;  Store function result into stack frame
66 : LD   1, 2(5) ;  Load parameter 'n' into R1
67 : ST   1, 3(5) ;  Store function result into stack frame
68 : LD   6, 0(5) ;  Load return address
69 : LDA  7, 0(6) ;  Return to caller
70 : LD   1, 1(5) ;  Load parameter 'n' into R1
71 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
72 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
73 : SUB  1, 2, 1 ;  left - right for less-than check
74 : JLT  1, 2(7) ;  If R1 < 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : JEQ  1, 96(0) ;  If condition is false, jump to ELSE
79 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'print_and_return'
80 : LD   1, 2(5) ;  Load parameter 'sum' into R1
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LD   1, 1(5) ;  Load parameter 'n' into R1
83 : ADD  1, 2, 1 ;  R1 = left + right
84 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=6), Tree Node('IDENTIFIER', value='n',line=6)],line=6) into callee frame
85 : LD   1, 3(5) ;  Load parameter 'i' into R1
86 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
87 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
88 : ADD  1, 2, 1 ;  R1 = left + right
89 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=6), Tree Node('INTEGER-LITERAL', value='1',line=6)],line=6) into callee frame
90 : LDA 6, 2(7) ;  Compute return address
91 : ST 6, 0(5) ;  Store return address in callee frame
92 : LDA 7, 40(0) ;  Call print_and_return
93 : LD 1, 3(5) ;  Load callee return value into R1
94 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
95 : LDA  7, 126(0) ;  Skip ELSE block
96 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'average_digit'
97 : LD   1, 1(5) ;  Load parameter 'n' into R1
98 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
99 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
100 : DIV  1, 2, 1 ;  R1 = left / right
101 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7) into callee frame
102 : LD   1, 2(5) ;  Load parameter 'sum' into R1
103 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
104 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'MOD'
105 : LD   1, 1(5) ;  Load parameter 'n' into R1
106 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7) into callee frame
107 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
108 : ST 1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=7) into callee frame
109 : LDA 6, 2(7) ;  Compute return address
110 : ST 6, 0(5) ;  Store return address in callee frame
111 : LDA 7, 27(0) ;  Call MOD
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
114 : ADD  1, 2, 1 ;  R1 = left + right
115 : ST 1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=7), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=7), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7)],line=7)],line=7) into callee frame
116 : LD   1, 3(5) ;  Load parameter 'i' into R1
117 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
118 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
119 : ADD  1, 2, 1 ;  R1 = left + right
120 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7) into callee frame
121 : LDA 6, 2(7) ;  Compute return address
122 : ST 6, 0(5) ;  Store return address in callee frame
123 : LDA 7, 70(0) ;  Call average_digit
124 : LD 1, 4(5) ;  Load callee return value into R1
125 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
126 : ST   1, 4(5) ;  Store function result into stack frame
127 : LD   6, 0(5) ;  Load return address
128 : LDA  7, 0(6) ;  Return to caller
