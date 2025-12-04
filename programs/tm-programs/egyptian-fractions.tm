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
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 25(0) ;  If condition is false, jump to ELSE
22 : LD   1, 2(5) ;  Load parameter 'n' into R1
23 : ST   1, 6(0) ;  Store identifier value into current frame's return slot
24 : LDA  7, 68(0) ;  Skip ELSE block
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7)
27 : LD   1, 1(5) ;  Load parameter 'm' into R1
28 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=7)
29 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'MOD'
30 : LDA  6, 2(7) ;  Compute return address
31 : ST   6, 0(5) ;  Store return address in frame
32 : LDA  7, 71(0) ;  Call MOD
33 : LD   1, 3(5) ;  Load return value into R1
34 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
35 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
36 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
37 : SUB  1, 2, 1 ;  left - right for equality check
38 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
39 : LDC  1, 0(0) ;  false
40 : LDA  7, 1(7) ;  skip setting true
41 : LDC  1, 1(0) ;  true
42 : JEQ  1, 49(0) ;  If condition is false, jump to ELSE
43 : LD   1, 2(5) ;  Load parameter 'n' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : DIV  1, 2, 1 ;  R1 = left / right
47 : ST   1, 6(0) ;  Store binary result into return slot
48 : LDA  7, 68(0) ;  Skip ELSE block
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9)
51 : LD   1, 2(5) ;  Load parameter 'n' into R1
52 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9)
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
55 : LD   1, 1(5) ;  Load parameter 'm' into R1
56 : DIV  1, 2, 1 ;  R1 = left / right
57 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
58 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
59 : ADD  1, 2, 1 ;  R1 = left + right
60 : ST   1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('IDENTIFIER', value='m',line=9)],line=9), Tree Node('INTEGER-LITERAL', value='1',line=9)],line=9)
61 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'print_and_continue'
62 : LDA  6, 2(7) ;  Compute return address
63 : ST   6, 0(5) ;  Store return address in frame
64 : LDA  7, 84(0) ;  Call print_and_continue
65 : LD   1, 4(5) ;  Load return value into R1
66 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
67 : ST   1, 6(0) ;  Store function-call result into caller's return slot
68 : LD   1, 6(0) ;  Load return value into register 1
69 : LD  6, 3(0) ;  Load return address for main function into register 6
70 : LDA  7, 0(6) ;  Jump to return address of main function
71 : LD   1, 1(5) ;  Load parameter 'm' into R1
72 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
73 : LD   1, 1(5) ;  Load parameter 'm' into R1
74 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
75 : LD   1, 2(5) ;  Load parameter 'n' into R1
76 : DIV  1, 2, 1 ;  R1 = left / right
77 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
78 : LD   1, 2(5) ;  Load parameter 'n' into R1
79 : MUL  1, 2, 1 ;  R1 = left * right
80 : SUB  1, 2, 1 ;  R1 = left - right
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 3(5) ;  Load parameter 'unit' into R1
85 : LDC  5, 3(0) ;  Update DMEM pointer
86 : LDA  6, 2(7) ;  Compute return address
87 : ST   6, 0(5) ;  Store return address
88 : LDA  7, 10(0) ; Call print
89 : LDC  5, 3(0) ;  Move pointer to previous stack frame
90 : ST   1, 4(5) ;  Store function result into stack frame
91 : LD   1, 3(5) ;  Load parameter 'unit' into R1
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : MUL  1, 2, 1 ;  R1 = left * right
95 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
96 : LD   1, 2(5) ;  Load parameter 'n' into R1
97 : SUB  1, 2, 1 ;  R1 = left - right
98 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='unit',line=16), Tree Node('IDENTIFIER', value='m',line=16)],line=16), Tree Node('IDENTIFIER', value='n',line=16)],line=16)
99 : LD   1, 2(5) ;  Load parameter 'n' into R1
100 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
101 : LD   1, 3(5) ;  Load parameter 'unit' into R1
102 : MUL  1, 2, 1 ;  R1 = left * right
103 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='n',line=16), Tree Node('IDENTIFIER', value='unit',line=16)],line=16)
104 : LDC  5, 3(0) ;  Set DMEM pointer to callee frame 'main'
105 : LDA  6, 2(7) ;  Compute return address
106 : ST   6, 0(5) ;  Store return address in frame
107 : LDA  7, 13(0) ;  Call main
108 : LD   1, 3(5) ;  Load return value into R1
109 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
110 : ST   1, 4(5) ;  Store function result into stack frame
111 : LD   6, 0(5) ;  Load return address
112 : LDA  7, 0(6) ;  Return to caller
