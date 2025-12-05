1 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST  6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT 1, 0, 0 ;  Hardcoded print function
9 : LD  6, 0(5) ;  Load return addess from stack frame.
10 : LDA 7, 0(6) ;  Jump to return address.
12 : LDC 1, 1(0) ;  Load integer-literal into R1
13 : LDA 4, 3(5) ;  Base of callee frame (print)
14 : LDA 6, 18(0) ;  Compute return address
15 : ST  6, 0(4) ;  Store RA in callee frame
16 : ADD 5, 4, 0 ;  Update pointer (enter callee)
17 : LDA 7, 8(0) ;  Call print
18 : LDC 3, 3(0) ;  Load callee frame size
19 : SUB 5, 5, 3 ;  Restore pointer
20 : LDC 1, 1(0) ;  Load integer-literal into R1
21 : ST  1, 1(5) ;  Store result into current frame's return slot
22 : LD  1, 1(5) ;  Load return value into R1
23 : LD  6, 0(5) ;  Load return address for main function into R6
24 : LDA 7, 0(6) ;  Jump to return address of main function
