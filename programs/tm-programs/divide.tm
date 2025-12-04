0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 3(5) ;  Load parameter 'n' into R1
16 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 27(0) ;  If condition is false, jump to ELSE
24 : LD   1, 1(5) ;  Load parameter 'a' into R1
25 : ST   1, 8(0) ;  Store identifier value into current frame's return slot
26 : LDA  7, 40(0) ;  Skip ELSE block
27 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'printAndDivide'
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=6) into callee frame
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=6) into callee frame
32 : LD   1, 3(5) ;  Load parameter 'n' into R1
33 : ST 1, 3(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=6) into callee frame
34 : LDA 6, 2(7) ;  Compute return address
35 : ST 6, 0(5) ;  Store return address in callee frame
36 : LDA 7, 56(0) ;  Call printAndDivide
37 : LD 1, 4(5) ;  Load callee return value into R1
38 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
39 : ST 1, 8(0) ;  Store function-call result into caller's return slot
40 : LD   1, 8(0) ;  Load return value into register 1
41 : LD  6, 4(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 1(5) ;  Load parameter 'm' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : DIV  1, 2, 1 ;  R1 = left / right
49 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : SUB  1, 2, 1 ;  R1 = left - right
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
57 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
58 : LD   1, 1(5) ;  Load parameter 'a' into R1
59 : MUL  1, 2, 1 ;  R1 = left * right
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : DIV  1, 2, 1 ;  R1 = left / right
63 : LDA  5, 5(5) ;  Update DMEM pointer
64 : LDA  6, 2(7) ;  Compute return address
65 : ST   6, 0(5) ;  Store return address
66 : LDA  7, 12(0) ; Call print
67 : LDC  5, -5(5) ;  Move pointer to previous stack frame
68 : ST   1, 4(5) ;  Store function result into stack frame
69 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'main'
70 : LDA 5, 5(5) ;  Advance DMEM pointer to callee frame 'MOD'
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
73 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
74 : MUL  1, 2, 1 ;  R1 = left * right
75 : ST 1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='a',line=12), Tree Node('INTEGER-LITERAL', value='10',line=12)],line=12) into callee frame
76 : LD   1, 2(5) ;  Load parameter 'b' into R1
77 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=12) into callee frame
78 : LDA 6, 2(7) ;  Compute return address
79 : ST 6, 0(5) ;  Store return address in callee frame
80 : LDA 7, 43(0) ;  Call MOD
81 : LD 1, 3(5) ;  Load callee return value into R1
82 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
83 : ST 1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=12), Tree Node('ARGUMENT-LIST', children=[Tree Node('BINARY-EXPRESSION', value='*', children=[Tree Node('IDENTIFIER', value='a',line=12), Tree Node('INTEGER-LITERAL', value='10',line=12)],line=12), Tree Node('IDENTIFIER', value='b',line=12)],line=12)],line=12) into callee frame
84 : LD   1, 2(5) ;  Load parameter 'b' into R1
85 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=12) into callee frame
86 : LD   1, 3(5) ;  Load parameter 'n' into R1
87 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
88 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
89 : SUB  1, 2, 1 ;  R1 = left - right
90 : ST 1, 3(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='n',line=12), Tree Node('INTEGER-LITERAL', value='1',line=12)],line=12) into callee frame
91 : LDA 6, 2(7) ;  Compute return address
92 : ST 6, 0(5) ;  Store return address in callee frame
93 : LDA 7, 15(0) ;  Call main
94 : LD 1, 4(5) ;  Load callee return value into R1
95 : LDA 5, -5(5) ;  Restore DMEM pointer to caller frame
96 : ST   1, 4(5) ;  Store function result into stack frame
97 : LD   6, 0(5) ;  Load return address
98 : LDA  7, 0(6) ;  Return to caller
