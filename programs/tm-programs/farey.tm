0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
10 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=4)
11 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=4)
13 : LD   1, 3(5) ;  Load parameter 'N' into R1
14 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=4)
15 : LDC  5, 6(0) ;  Set DMEM pointer to callee frame 'fareyNum'
16 : LDA  6, 2(7) ;  Compute return address
17 : ST   6, 0(5) ;  Store return address in frame
18 : LDA  7, -1(0) ;  Call fareyNum
19 : LD   1, 4(5) ;  Load return value into R1
20 : LDC  5, 6(0) ;  Restore DMEM pointer to caller frame
21 : LDC  5, 6(0) ;  Update DMEM pointer
22 : LDA  6, 2(7) ;  Compute return address
23 : ST   6, 0(5) ;  Store return address
24 : LDA  7, 6(0) ; Call print
25 : LDC  5, 1(0) ;  zMove pointer to previous stack frame
26 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
27 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=5)
28 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
29 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=5)
30 : LD   1, 3(5) ;  Load parameter 'N' into R1
31 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=5)
32 : LDC  5, 6(0) ;  Set DMEM pointer to callee frame 'fareyDen'
33 : LDA  6, 2(7) ;  Compute return address
34 : ST   6, 0(5) ;  Store return address in frame
35 : LDA  7, -1(0) ;  Call fareyDen
36 : LD   1, 4(5) ;  Load return value into R1
37 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
38 : ST   1, 5(0) ;  Store function-call result into caller's return slot
39 : LD   1, 5(0) ;  Load return value into register 1
40 : LD  6, 1(0) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
