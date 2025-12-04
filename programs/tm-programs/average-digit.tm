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
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2)
13 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
14 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2)
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ST   1, 3(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2)
17 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'average_digit'
18 : LDA  6, 2(7) ;  Compute return address
19 : ST   6, 0(5) ;  Store return address in frame
20 : LDA  7, 70(0) ;  Call average_digit
21 : LD   1, 4(5) ;  Load return value into R1
22 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
23 : ST   1, 4(0) ;  Store function-call result into caller's return slot
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
44 : LDC  5, 2(0) ;  Update DMEM pointer
45 : LDA  6, 2(7) ;  Compute return address
46 : ST   6, 0(5) ;  Store return address
47 : LDA  7, 8(0) ; Call print
48 : LDC  5, 2(0) ;  Move pointer to previous stack frame
49 : ST   1, 3(5) ;  Store function result into stack frame
50 : LD   1, 1(5) ;  Load parameter 'sum' into R1
51 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='sum',line=11)
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=11)
54 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'MOD'
55 : LDA  6, 2(7) ;  Compute return address
56 : ST   6, 0(5) ;  Store return address in frame
57 : LDA  7, 27(0) ;  Call MOD
58 : LD   1, 3(5) ;  Load return value into R1
59 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
60 : LDC  5, 2(0) ;  Update DMEM pointer
61 : LDA  6, 2(7) ;  Compute return address
62 : ST   6, 0(5) ;  Store return address
63 : LDA  7, 8(0) ; Call print
64 : LDC  5, 2(0) ;  Move pointer to previous stack frame
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
79 : LD   1, 2(5) ;  Load parameter 'sum' into R1
80 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
81 : LD   1, 1(5) ;  Load parameter 'n' into R1
82 : ADD  1, 2, 1 ;  R1 = left + right
83 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=6), Tree Node('IDENTIFIER', value='n',line=6)],line=6)
84 : LD   1, 3(5) ;  Load parameter 'i' into R1
85 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
86 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
87 : ADD  1, 2, 1 ;  R1 = left + right
88 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=6), Tree Node('INTEGER-LITERAL', value='1',line=6)],line=6)
89 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'print_and_return'
90 : LDA  6, 2(7) ;  Compute return address
91 : ST   6, 0(5) ;  Store return address in frame
92 : LDA  7, 40(0) ;  Call print_and_return
93 : LD   1, 3(5) ;  Load return value into R1
94 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
95 : LDA  7, 126(0) ;  Skip ELSE block
96 : LD   1, 1(5) ;  Load parameter 'n' into R1
97 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
98 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
99 : DIV  1, 2, 1 ;  R1 = left / right
100 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7)
101 : LD   1, 2(5) ;  Load parameter 'sum' into R1
102 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
103 : LD   1, 1(5) ;  Load parameter 'n' into R1
104 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7)
105 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
106 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=7)
107 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'MOD'
108 : LDA  6, 2(7) ;  Compute return address
109 : ST   6, 0(5) ;  Store return address in frame
110 : LDA  7, 27(0) ;  Call MOD
111 : LD   1, 3(5) ;  Load return value into R1
112 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='sum',line=7), Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=7), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=7), Tree Node('INTEGER-LITERAL', value='10',line=7)],line=7)],line=7)],line=7)
115 : LD   1, 3(5) ;  Load parameter 'i' into R1
116 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
117 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
118 : ADD  1, 2, 1 ;  R1 = left + right
119 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='i',line=7), Tree Node('INTEGER-LITERAL', value='1',line=7)],line=7)
120 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'average_digit'
121 : LDA  6, 2(7) ;  Compute return address
122 : ST   6, 0(5) ;  Store return address in frame
123 : LDA  7, 70(0) ;  Call average_digit
124 : LD   1, 4(5) ;  Load return value into R1
125 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
126 : ST   1, 4(5) ;  Store function result into stack frame
127 : LD   6, 0(5) ;  Load return address
128 : LDA  7, 0(6) ;  Return to caller
