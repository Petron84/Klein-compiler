0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'n' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
12 : DIV  1, 2, 1 ;  R1 = left / right
13 : ST   1, 0(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='/', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2)
16 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
17 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='10',line=2)
18 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'MOD'
19 : LDA  6, 2(7) ;  Compute return address
20 : ST   6, 0(5) ;  Store return address in frame
21 : LDA  7, -1(0) ;  Call MOD
22 : LD   1, 3(5) ;  Load return value into R1
23 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
24 : ST   1, 1(5) ;  Store argument Tree Node('FUNCTION-CALL', children=[Tree Node('IDENTIFIER', value='MOD',line=2), Tree Node('ARGUMENT-LIST', children=[Tree Node('IDENTIFIER', value='n',line=2), Tree Node('INTEGER-LITERAL', value='10',line=2)],line=2)],line=2)
25 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'divisibleByParts'
26 : LDA  6, 2(7) ;  Compute return address
27 : ST   6, 0(5) ;  Store return address in frame
28 : LDA  7, -1(0) ;  Call divisibleByParts
29 : LD   1, 3(5) ;  Load return value into R1
30 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
31 : ST   1, 3(0) ;  Store function-call result into caller's return slot
32 : LD   1, 3(0) ;  Load return value into register 1
33 : LD  6, 1(0) ;  Load return address for main function into register 6
34 : LDA  7, 0(6) ;  Jump to return address of main function
