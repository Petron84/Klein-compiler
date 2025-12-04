0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : MUL  1, 2, 1 ;  R1 = left * right
15 : ST   1, 4(0) ;  Store binary result into return slot
16 : LD   1, 4(0) ;  Load return value into register 1
17 : LD  6, 2(0) ;  Load return address for main function into register 6
18 : LDA  7, 0(6) ;  Jump to return address of main function
