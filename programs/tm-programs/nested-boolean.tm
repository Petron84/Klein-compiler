0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LD 1, 1(5) ;  Load parameter 'n' into R1
13 : LDC 2, 1(0) ;  Load 1 into R2
14 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
15 : LDC 2, 1(0) ;  Load 1 into R2
16 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
17 : LDC 2, 1(0) ;  Load 1 into R2
18 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
19 : ST 1, 2(5) ;  Store result into current frame's return slot
20 : LD 1, 2(5) ;  Load return value into register 1
21 : LD 6, 0(5) ;  Load return address for main function into register 6
22 : LDA 7, 0(6) ;  Jump to runtime continuation
