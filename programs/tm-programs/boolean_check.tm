0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 1(5) ;  Load parameter 'a' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : MUL  1, 2, 1 ;  R1 = left AND right
20 : ST 1, 3(5) ;  Store result into current frame's return slot
21 : LD   1, 3(5) ;  Load return value into register 1
22 : LD  6, 0(5) ;  Load return address for main function into register 6
23 : LDA  7, 0(6) ;  Jump to return address of main function
