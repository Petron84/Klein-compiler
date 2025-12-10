0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LDA  6, 2(7) ;  Calculate return address
3 : ST   6, 0(5) ;  Store return address in main stack frame
4 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT  1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
7 : OUT  1, 0, 0 ;  Hardcoded print function
8 : LD   6, 0(5) ;  Load return addess from stack frame.
9 : LDA  7, 0(6) ;  Jump to return address.
10 : LDC  1, 1(0) ;  Load integer-literal value into register 1
11 : LDA 4, 3(5) ; Base of callee frame
12 : LDA 6, 16(0) ; Return address
13 : ST 6, 0(4) ; Store return addr in callee frame
14 : ADD 5, 4, 0 ; Push new frame
15 : LDA 7, 7(0) ; Call print
16 : LDC 2, 3(0) ; Caller frame size
17 : SUB 5, 5, 2 ; Pop frame
18 : LDC  1, 1(0) ;  Load integer-literal value into register 1
19 : ST 1, 1(5) ;  Store result into current frame's return slot
20 : LD   1, 1(5) ;  Load return value into register 1
21 : LD  6, 0(5) ;  Load return address for main function into register 6
22 : LDA  7, 0(6) ;  Jump to return address of main function
