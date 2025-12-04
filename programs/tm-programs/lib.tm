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
11 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
12 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=4)
13 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'SQRT'
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address in frame
16 : LDA  7, -1(0) ;  Call SQRT
17 : LD   1, 2(5) ;  Load return value into R1
18 : LDC  5, 5(0) ;  Restore DMEM pointer to caller frame
19 : LDC  5, 5(0) ;  Update DMEM pointer
20 : LDA  6, 2(7) ;  Compute return address
21 : ST   6, 0(5) ;  Store return address
22 : LDA  7, 8(0) ; Call print
23 : LDC  5, 2(0) ;  zMove pointer to previous stack frame
24 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
25 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=5)
26 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'ODD'
27 : LDA  6, 2(7) ;  Compute return address
28 : ST   6, 0(5) ;  Store return address in frame
29 : LDA  7, -1(0) ;  Call ODD
30 : LD   1, 2(5) ;  Load return value into R1
31 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
32 : ST   1, 4(0) ;  Store function-call result into caller's return slot
33 : LD   1, 4(0) ;  Load return value into register 1
34 : LD  6, 2(0) ;  Load return address for main function into register 6
35 : LDA  7, 0(6) ;  Jump to return address of main function
