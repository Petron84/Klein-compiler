0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : LD   1, 1(5) ;  Load return value into register 1
7 : OUT  1, 0, 0 ;  Hardcoded print function
8 : LD   6, 0(5) ;  Load return addess from stack frame.
9 : LDA  7, 0(6) ;  Jump to return address.
10 : LDC  5, 3(0) ;  Update DMEM pointer
11 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
12 : ST   1, 5(0)) ;  Store value into return value in stack frame
13 : LDA  6, 2(7) ;  Compute return address
14 : ST   6, 0(5) ;  Store return address
15 : LDA  7, 6(0) ; Call print
16 : LDC  5, 1(0) ;  Push pointer to previous stack frame
17 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
18 : ST   1, 2(0)) ;  Store value into return value in stack frame
19 : LD   1, 2(0)) ;  Load return value into register 1
20 : LD  6, 1(0) ;  Load return address for main function into register 6
21 : LDA  7, 0(6) ;  Jump to return address of main function
