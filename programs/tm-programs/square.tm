1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'n' into R1
15 : ADD 2, 1, 0 ;  R2 = left operand
16 : LD  1, 1(5) ;  Load parameter 'n' into R1
17 : MUL 3, 2, 1 ;  R3 = left * right
18 : ADD 1, 3, 0 ;  R1 = R3
19 : ST  1, 2(5) ;  Store result into current frame's return slot
20 : LD  1, 2(5) ;  Load return value into R1
21 : LD  6, 0(5) ;  Load return address for main function into R6
22 : LDA 7, 0(6) ;  Jump to return address of main function
