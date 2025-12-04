0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LD   2, 1(0) ;  Load CLI arg 1 into register
4 : ST   2, 1(5) ;  Store the argument into stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=124)
13 : LD   1, 1(5) ;  Load parameter 'length' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
16 : DIV  1, 2, 1 ;  R1 = left / right
17 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
18 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
19 : SUB  1, 2, 1 ;  R1 = left - right
20 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)
21 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'EXP'
22 : LDA  6, 2(7) ;  Compute return address
23 : ST   6, 0(5) ;  Store return address in frame
24 : LDA  7, -1(0) ;  Call EXP
25 : LD   1, 3(5) ;  Load return value into R1
26 : LDC  5, 5(0) ;  Restore DMEM pointer to caller frame
27 : ST   1, 0(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=124), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=124), Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)],line=124)],line=124)
28 : LD   1, 1(5) ;  Load parameter 'length' into R1
29 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
30 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
31 : DIV  1, 2, 1 ;  R1 = left / right
32 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124)
33 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'createLoop'
34 : LDA  6, 2(7) ;  Compute return address
35 : ST   6, 0(5) ;  Store return address in frame
36 : LDA  7, -1(0) ;  Call createLoop
37 : LD   1, 3(5) ;  Load return value into R1
38 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
39 : ST   1, 4(0) ;  Store function-call result into caller's return slot
40 : LD   1, 4(0) ;  Load return value into register 1
41 : LD  6, 3(0) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
