0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'a' into R1
10 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=2)
11 : LD   1, 2(5) ;  Load parameter 'b' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=2)
13 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'eval_and_print'
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address in frame
16 : LDA  7, -1(0) ;  Call eval_and_print
17 : LD   1, 3(5) ;  Load return value into R1
18 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
19 : ST   1, 4(0) ;  Store function-call result into caller's return slot
20 : LD   1, 4(0) ;  Load return value into register 1
21 : LD  6, 1(0) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
