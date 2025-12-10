0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LDA  6, 2(7) ;  Calculate return address
7 : ST   6, 0(5) ;  Store return address in main stack frame
8 : LDA  7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT  1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT  1, 0, 0 ;  Hardcoded print function
12 : LD   6, 0(5) ;  Load return addess from stack frame.
13 : LDA  7, 0(6) ;  Jump to return address.
14 : LD   1, 2(5) ;  Load parameter 'b' into R1
15 : ST   1, 3(4) ;  Store right operand result into return value slot
16 : LD   1, 1(5) ;  Load parameter 'a' into R1
17 : ADD  2, 1, 0 ;  Move left operand to register 2
18 : LD   1, 3(4) ;  Return right operand back into register 1
19 : MUL  1, 2, 1 ;  R1 = left AND right
20 : ST 1, 3(5) ;  Store result into current frame's return slot
21 : LD   1, 3(5) ;  Load return value into register 1
22 : LD  6, 0(5) ;  Load return address for main function into register 6
23 : LDA  7, 0(6) ;  Jump to return address of main function
