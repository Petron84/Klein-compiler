1 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST  6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LD  6, 0(5) ;  Load return addess from stack frame.
14 : LDA 7, 0(6) ;  Jump to return address.
16 : LD  1, 1(5) ;  Load parameter 'x' into R1
17 : ADD 2, 1, 0 ;  R2 = left operand
18 : LD  1, 2(5) ;  Load parameter 'y' into R1
19 : MUL 3, 2, 1 ;  R3 = left * right
20 : ADD 1, 3, 0 ;  R1 = R3
21 : ST  1, 3(5) ;  Store result into current frame's return slot
22 : LD  1, 3(5) ;  Load return value into R1
23 : LD  6, 0(5) ;  Load return address for main function into R6
24 : LDA 7, 0(6) ;  Jump to return address of main function
