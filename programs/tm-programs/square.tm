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
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : MUL  1, 2, 1 ;  R1 = left * right
13 : ST   1, 3(0) ;  Store binary result into return slot
14 : LD   1, 3(0) ;  Load return value into register 1
15 : LD  6, 1(0) ;  Load return address for main function into register 6
16 : LDA  7, 0(6) ;  Jump to return address of main function
