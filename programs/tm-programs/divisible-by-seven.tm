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
15 : ST   1, 0(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)
16 : LD   1, 1(5) ;  Load parameter 'n' into R1
17 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2)
18 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
19 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=2)
20 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'MOD'
21 : LDA  6, 2(7) ;  Compute return address
22 : ST   6, 0(5) ;  Store return address in frame
23 : LDA  7, -1(0) ;  Call MOD
24 : LD   1, 3(5) ;  Load return value into R1
25 : LDC  5, 5(0) ;  Restore DMEM pointer to caller frame
26 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=2), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)],line=2)
27 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'divisibleByParts'
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address in frame
30 : LDA  7, -1(0) ;  Call divisibleByParts
31 : LD   1, 3(5) ;  Load return value into R1
32 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
33 : ST   1, 4(0) ;  Store function-call result into caller's return slot
34 : LD   1, 4(0) ;  Load return value into register 1
35 : LD  6, 2(0) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
