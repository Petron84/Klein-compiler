0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 4(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDC  4, 2(0) ;  Load size of main stack frame
4 : ADD  5, 5, 4 ;  Advance R5 to next frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
12 : LDA  4, 3(5) ;  Update DMEM pointer
13 : LDA 6, 17(0) ;  Compute return address
14 : ST   6, 0(4) ;  Store return address
15 : ADD  5, 4, 0 ;  Updated Pointer
16 : LDA  7, 8(0) ; Call print
17 : LDC  4, 3(0) ;  Load frame size
18 : SUB  5, 5, 4 ;  Restore pointer
19 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
20 : ST 1, 1(5) ;  Store result into current frame's return slot
21 : LD   1, 1(5) ;  Load return value into register 1
22 : LD  6, 0(5) ;  Load return address for main function into register 6
23 : LDA  7, 0(6) ;  Jump to return address of main function
