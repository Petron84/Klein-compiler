0 : LDC  3, 2(7) ;  Calculate return address for main function
1 : ST   3, 1(0) ;  Store return address for main function in DMEM
2 : LDA  7, 7(0) ;  Load address of main IMEM block - branch to function
3 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
4 :  OUT  1, 0, 0 ;  Hardcoded print function
5 :  LD   6, 0(5) ;  Load return addess from previous function call/stack frame.
6 :  LDA  7, 0(6) ;  Load address of previous function call into register 7.
7 : LDA  6, 11(0) ;  Load return address into R6
8 : ST   6, 0(5) ;  Store current return address into DMEM
9 : LDC  1, 1(0) ;  Load integer-literal value into register 1
10 : LDA  7, 4(0) ;  Load address of print IMEM block - branch to function
11 : LDC  1, 1(0) ;  Load integer-literal value into register 1
12 : LD  6, 1(0) ;  Load return address for main function into register 6
13 : LDA  7, 0(6) ;  Jump to return address of main function
