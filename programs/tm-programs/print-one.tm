0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
10 : LDA  3, 2(5) ;  Update DMEM pointer
11 : LDA  6, 2(7) ;  Compute return address
12 : ST   6, 0(3) ;  Store return address
13 : ADD  5, 3, 0 ;  Updated Pointer
14 : LDA  7, 6(0) ; Call print
15 : LDC  4, 2(0) ;  Load frame size
16 : SUB  5, 5, 4 ;  Restore pointer
17 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
18 : ST   1, 2(0) ;  Store value into return value in stack frame
19 : LD   1, 2(0) ;  Load return value into register 1
20 : LD  6, 1(0) ;  Load return address for main function into register 6
21 : LDA  7, 0(6) ;  Jump to return address of main function
