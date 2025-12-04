0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
16 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=4)
17 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
18 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=4)
19 : LD   1, 3(5) ;  Load parameter 'N' into R1
20 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=4)
21 : LDC  5, 9(0) ;  Set DMEM pointer to callee frame 'fareyNum'
22 : LDA  6, 2(7) ;  Compute return address
23 : ST   6, 0(5) ;  Store return address in frame
24 : LDA  7, -1(0) ;  Call fareyNum
25 : LD   1, 4(5) ;  Load return value into R1
26 : LDC  5, 9(0) ;  Restore DMEM pointer to caller frame
27 : LDC  5, 9(0) ;  Update DMEM pointer
28 : LDA  6, 2(7) ;  Compute return address
29 : ST   6, 0(5) ;  Store return address
30 : LDA  7, 12(0) ; Call print
31 : LDC  5, 4(0) ;  zMove pointer to previous stack frame
32 : LD   1, 1(5) ;  Load parameter 'xNum' into R1
33 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='xNum',line=5)
34 : LD   1, 2(5) ;  Load parameter 'xDen' into R1
35 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='xDen',line=5)
36 : LD   1, 3(5) ;  Load parameter 'N' into R1
37 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='N',line=5)
38 : LDC  5, 9(0) ;  Set DMEM pointer to callee frame 'fareyDen'
39 : LDA  6, 2(7) ;  Compute return address
40 : ST   6, 0(5) ;  Store return address in frame
41 : LDA  7, -1(0) ;  Call fareyDen
42 : LD   1, 4(5) ;  Load return value into R1
43 : LDC  5, 4(0) ;  Restore DMEM pointer to caller frame
44 : ST   1, 8(0) ;  Store function-call result into caller's return slot
45 : LD   1, 8(0) ;  Load return value into register 1
46 : LD  6, 4(0) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
