0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 2(5) ;  Load parameter 'y' into R1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 1(5) ;  Load parameter 'x' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : MUL  1, 2, 1 ;  R1 = left * right
19 : ST 1, 3(5) ;  Store result into current frame's return slot
20 : LD   1, 3(5) ;  Load return value into register 1
21 : LD  6, 0(5) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
