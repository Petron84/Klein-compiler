0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LD   2, 1(0) ;  Load CLI arg 1 into register
4 : ST   2, 1(5) ;  Store the argument into stack frame
5 : LD   2, 2(0) ;  Load CLI arg 2 into register
6 : ST   2, 2(5) ;  Store the argument into stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'a' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LD   1, 2(5) ;  Load parameter 'b' into R1
16 : MUL  1, 2, 1 ;  R1 = left AND right
17 : ST   1, 6(0) ;  Store binary result into return slot
18 : LD   1, 6(0) ;  Load return value into register 1
19 : LD  6, 5(0) ;  Load return address for main function into register 6
20 : LDA  7, 0(6) ;  Jump to return address of main function
