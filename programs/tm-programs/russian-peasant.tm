0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : LDC  5, 7(0) ;  Update DMEM pointer
15 : LDA  6, 2(7) ;  Compute return address
16 : ST   6, 0(5) ;  Store return address
17 : LDA  7, 10(0) ; Call print
18 : LDC  5, 3(0) ;  zMove pointer to previous stack frame
19 : LD   1, 1(5) ;  Load parameter 'm' into R1
20 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=18)
21 : LD   1, 2(5) ;  Load parameter 'n' into R1
22 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=18)
23 : LDC  5, 7(0) ;  Set DMEM pointer to callee frame 'mult'
24 : LDA  6, 2(7) ;  Compute return address
25 : ST   6, 0(5) ;  Store return address in frame
26 : LDA  7, -1(0) ;  Call mult
27 : LD   1, 3(5) ;  Load return value into R1
28 : LDC  5, 3(0) ;  Restore DMEM pointer to caller frame
29 : ST   1, 6(0) ;  Store function-call result into caller's return slot
30 : LD   1, 6(0) ;  Load return value into register 1
31 : LD  6, 5(0) ;  Load return address for main function into register 6
32 : LDA  7, 0(6) ;  Jump to return address of main function
