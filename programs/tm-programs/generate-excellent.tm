0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
10 : ST   1, 0(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=124)
11 : LD   1, 1(5) ;  Load parameter 'length' into R1
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
14 : DIV  1, 2, 1 ;  R1 = left / right
15 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
16 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
17 : SUB  1, 2, 1 ;  R1 = left - right
18 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)
19 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'EXP'
20 : LDA  6, 2(7) ;  Compute return address
21 : ST   6, 0(5) ;  Store return address in frame
22 : LDA  7, -1(0) ;  Call EXP
23 : LD   1, 3(5) ;  Load return value into R1
24 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
25 : ST   1, 0(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='EXP',line=124), Tree Node('ARGUMENT-LIST', children=[Tree Node('INTEGER-LITERAL', value='10',line=124), Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124), Tree Node('INTEGER-LITERAL', value='1',line=124)],line=124)],line=124)],line=124)
26 : LD   1, 1(5) ;  Load parameter 'length' into R1
27 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
28 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
29 : DIV  1, 2, 1 ;  R1 = left / right
30 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='length',line=124), Tree Node('INTEGER-LITERAL', value='2',line=124)],line=124)
31 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'createLoop'
32 : LDA  6, 2(7) ;  Compute return address
33 : ST   6, 0(5) ;  Store return address in frame
34 : LDA  7, -1(0) ;  Call createLoop
35 : LD   1, 3(5) ;  Load return value into R1
36 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
37 : ST   1, 3(0) ;  Store function-call result into caller's return slot
38 : LD   1, 3(0) ;  Load return value into register 1
39 : LD  6, 1(0) ;  Load return address for main function into register 6
40 : LDA  7, 0(6) ;  Jump to return address of main function
