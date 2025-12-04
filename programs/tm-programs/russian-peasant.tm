0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'm' into R1
10 : LDC  5, 5(0) ;  Update DMEM pointer
11 : LDA  6, 2(7) ;  Compute return address
12 : ST   6, 0(5) ;  Store return address
13 : LDA  7, 6(0) ; Call print
14 : LDC  5, 1(0) ;  zMove pointer to previous stack frame
15 : LD   1, 1(5) ;  Load parameter 'm' into R1
16 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=18)
17 : LD   1, 2(5) ;  Load parameter 'n' into R1
18 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=18)
19 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'mult'
20 : LDA  6, 2(7) ;  Compute return address
21 : ST   6, 0(5) ;  Store return address in frame
22 : LDA  7, -1(0) ;  Call mult
23 : LD   1, 3(5) ;  Load return value into R1
24 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
25 : ST   1, 4(0) ;  Store function-call result into caller's return slot
26 : LD   1, 4(0) ;  Load return value into register 1
27 : LD  6, 1(0) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
