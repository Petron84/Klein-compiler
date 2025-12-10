0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LDA  6, 2(7) ;  Calculate return address
5 : ST   6, 0(5) ;  Store return address in main stack frame
6 : LDA  7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT  1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT  1, 0, 0 ;  Hardcoded print function
10 : LD   6, 0(5) ;  Load return addess from stack frame.
11 : LDA  7, 0(6) ;  Jump to return address.
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST   1, 3(4) ;  Store right operand result into return value slot
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ADD  2, 1, 0 ;  Move left operand to register 2
16 : LD   1, 3(4) ;  Return right operand back into register 1
17 : MUL  1, 2, 1 ;  R1 = left * right
18 : ST 1, 2(5) ;  Store result into current frame's return slot
19 : LD   1, 2(5) ;  Load return value into register 1
20 : LD  6, 0(5) ;  Load return address for main function into register 6
21 : LDA  7, 0(6) ;  Jump to return address of main function
