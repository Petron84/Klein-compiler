1 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST  6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT 1, 0, 0 ;  Hardcoded print function
9 : LD  6, 0(5) ;  Load return addess from stack frame.
10 : LDA 7, 0(6) ;  Jump to return address.
12 : LDC 1, 1(0) ;  Load boolean-literal into R1
13 : ST  1, 1(5) ;  Store result into current frame's return slot
14 : LD  1, 1(5) ;  Load return value into R1
15 : LD  6, 0(5) ;  Load return address for main function into R6
16 : LDA 7, 0(6) ;  Jump to return address of main function
