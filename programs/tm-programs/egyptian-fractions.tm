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
24 : LDA  7, 72(0) ;  Skip ELSE block
25 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'MOD'
26 : LD   1, 2(5) ;  Load parameter 'n' into R1
27 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=7) into callee frame
28 : LD   1, 1(5) ;  Load parameter 'm' into R1
29 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=7) into callee frame
30 : LDA 6, 34(7) ;  Compute return address
31 : ST 6, 0(3) ;  Store return address in callee frame
32 : ADD  5, 3, 0 ;  Update pointer
33 : LDA 7, 75(0) ;  Call MOD
34 : LD 1, 3(5) ;  Load callee return value into R1
35 : LDC  4, 4(0) ;  Load frame size
36 : SUB  5, 5, 4 ;  Restore pointer
37 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
38 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
39 : SUB  1, 2, 1 ;  left - right for equality check
40 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
41 : LDC  1, 0(0) ;  false
42 : LDA  7, 1(7) ;  skip setting true
43 : LDC  1, 1(0) ;  true
44 : JEQ  1, 51(0) ;  If condition is false, jump to ELSE
45 : LD   1, 2(5) ;  Load parameter 'n' into R1
46 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
47 : LD   1, 1(5) ;  Load parameter 'm' into R1
48 : DIV  1, 2, 1 ;  R1 = left / right
49 : ST   1, 6(0) ;  Store binary result into return slot
50 : LDA  7, 72(0) ;  Skip ELSE block
51 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'print_and_continue'
52 : LD   1, 1(5) ;  Load parameter 'm' into R1
53 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9) into callee frame
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9) into callee frame
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
58 : LD   1, 1(5) ;  Load parameter 'm' into R1
59 : DIV  1, 2, 1 ;  R1 = left / right
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
62 : ADD  1, 2, 1 ;  R1 = left + right
63 : ST 1, 3(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=9), Tree Node('IDENTIFIER', value='m',line=9)],line=9), Tree Node('INTEGER-LITERAL', value='1',line=9)],line=9) into callee frame
64 : LDA 6, 68(7) ;  Compute return address
65 : ST 6, 0(3) ;  Store return address in callee frame
66 : ADD  5, 3, 0 ;  Update pointer
67 : LDA 7, 88(0) ;  Call print_and_continue
68 : LD 1, 4(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ST 1, 6(0) ;  Store function-call result into caller's return slot
72 : LD   1, 6(0) ;  Load return value into register 1
73 : LD  6, 3(0) ;  Load return address for main function into register 6
74 : LDA  7, 0(6) ;  Jump to return address of main function
75 : LD   1, 1(5) ;  Load parameter 'm' into R1
76 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
77 : LD   1, 1(5) ;  Load parameter 'm' into R1
78 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
79 : LD   1, 2(5) ;  Load parameter 'n' into R1
80 : DIV  1, 2, 1 ;  R1 = left / right
81 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
82 : LD   1, 2(5) ;  Load parameter 'n' into R1
83 : MUL  1, 2, 1 ;  R1 = left * right
84 : SUB  1, 2, 1 ;  R1 = left - right
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 3(5) ;  Load parameter 'unit' into R1
89 : LDA  3, 5(5) ;  Update DMEM pointer
90 : LDA 6, 94(7) ;  Compute return address
91 : ST   6, 0(3) ;  Store return address
92 : ADD  5, 3, 0 ;  Updated Pointer
93 : LDA  7, 10(0) ; Call print
94 : LDC  4, 5(0) ;  Load frame size
95 : SUB  5, 5, 4 ;  Restore pointer
96 : ST   1, 4(5) ;  Store function result into stack frame
97 : LDA 3, 5(5) ;  Advance DMEM pointer to callee frame 'main'
98 : LD   1, 3(5) ;  Load parameter 'unit' into R1
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LD   1, 1(5) ;  Load parameter 'm' into R1
101 : MUL  1, 2, 1 ;  R1 = left * right
102 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
103 : LD   1, 2(5) ;  Load parameter 'n' into R1
104 : SUB  1, 2, 1 ;  R1 = left - right
105 : ST 1, 1(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='unit',line=16), Tree Node('IDENTIFIER', value='m',line=16)],line=16), Tree Node('IDENTIFIER', value='n',line=16)],line=16) into callee frame
106 : LD   1, 2(5) ;  Load parameter 'n' into R1
107 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
108 : LD   1, 3(5) ;  Load parameter 'unit' into R1
109 : MUL  1, 2, 1 ;  R1 = left * right
110 : ST 1, 2(3) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='n',line=16), Tree Node('IDENTIFIER', value='unit',line=16)],line=16) into callee frame
111 : LDA 6, 115(7) ;  Compute return address
112 : ST 6, 0(3) ;  Store return address in callee frame
113 : ADD  5, 3, 0 ;  Update pointer
114 : LDA 7, 13(0) ;  Call main
115 : LD 1, 3(5) ;  Load callee return value into R1
116 : LDC  4, 5(0) ;  Load frame size
117 : SUB  5, 5, 4 ;  Restore pointer
118 : ST   1, 4(5) ;  Store function result into stack frame
119 : LD   6, 0(5) ;  Load return address
120 : LDA  7, 0(6) ;  Return to caller
