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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4)
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : ST   1, 1(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=4)
15 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'loopToN'
16 : LDA  6, 2(7) ;  Compute return address
17 : ST   6, 0(5) ;  Store return address in frame
18 : LDA  7, -1(0) ;  Call loopToN
19 : LD   1, 3(5) ;  Load return value into R1
20 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
21 : ST   1, 4(0) ;  Store function-call result into caller's return slot
22 : LD   1, 4(0) ;  Load return value into register 1
23 : LD  6, 3(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
