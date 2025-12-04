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
10 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=2)
11 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
12 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2)
13 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
14 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='0',line=2)
15 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'average_digit'
16 : LDA  6, 2(7) ;  Compute return address
17 : ST   6, 0(5) ;  Store return address in frame
18 : LDA  7, -1(0) ;  Call average_digit
19 : LD   1, 4(5) ;  Load return value into R1
20 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
21 : ST   1, 3(0) ;  Store function-call result into caller's return slot
22 : LD   1, 3(0) ;  Load return value into register 1
23 : LD  6, 1(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
