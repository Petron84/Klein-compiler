0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
10 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=4)
11 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'SQRT'
12 : LDA  6, 2(7) ;  Compute return address
13 : ST   6, 0(5) ;  Store return address in frame
14 : LDA  7, -1(0) ;  Call SQRT
15 : LD   1, 2(5) ;  Load return value into R1
16 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
17 : LDC  5, 4(0) ;  Update DMEM pointer
18 : LDA  6, 2(7) ;  Compute return address
19 : ST   6, 0(5) ;  Store return address
20 : LDA  7, 6(0) ; Call print
21 : LDC  5, 1(0) ;  zMove pointer to previous stack frame
22 : LD   1, 1(5) ;  Load parameter 'testArgument' into R1
23 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='testArgument',line=5)
24 : LDC  5, 4(0) ;  Set DMEM pointer to callee frame 'ODD'
25 : LDA  6, 2(7) ;  Compute return address
26 : ST   6, 0(5) ;  Store return address in frame
27 : LDA  7, -1(0) ;  Call ODD
28 : LD   1, 2(5) ;  Load return value into R1
29 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
30 : ST   1, 3(0) ;  Store function-call result into caller's return slot
31 : LD   1, 3(0) ;  Load return value into register 1
32 : LD  6, 1(0) ;  Load return address for main function into register 6
33 : LDA  7, 0(6) ;  Jump to return address of main function
