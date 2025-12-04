0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'n' into R1
10 : LDC  2, 1(0) ;  Load 1 into R2
11 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
12 : LDC  2, 1(0) ;  Load 1 into R2
13 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
14 : LDC  2, 1(0) ;  Load 1 into R2
15 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
16 : ST   1, 3(0) ;  Store unary result into return slot
17 : LD   1, 3(0) ;  Load return value into register 1
18 : LD  6, 1(0) ;  Load return address for main function into register 6
19 : LDA  7, 0(6) ;  Jump to return address of main function
