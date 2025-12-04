0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address for main function
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LD   1, 1(5) ;  Load parameter 'm' into R1
10 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
11 : LD   1, 2(5) ;  Load parameter 'n' into R1
12 : DIV  1, 2, 1 ;  R1 = left / right
13 : LDC  5, 5(0) ;  Update DMEM pointer
14 : LDA  6, 2(7) ;  Compute return address
15 : ST   6, 0(5) ;  Store return address
16 : LDA  7, 6(0) ; Call print
17 : LDC  5, 1(0) ;  zMove pointer to previous stack frame
18 : LD   1, 1(5) ;  Load parameter 'm' into R1
19 : ST   1, 0(5) ;  Store argument Tree Node('IDENTIFIER', value='m',line=9)
20 : LD   1, 2(5) ;  Load parameter 'n' into R1
21 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=9)
22 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'mod'
23 : LDA  6, 2(7) ;  Compute return address
24 : ST   6, 0(5) ;  Store return address in frame
25 : LDA  7, -1(0) ;  Call mod
26 : LD   1, 3(5) ;  Load return value into R1
27 : LDC  5, 1(0) ;  Restore DMEM pointer to caller frame
28 : ST   1, 4(0) ;  Store function-call result into caller's return slot
29 : LD   1, 4(0) ;  Load return value into register 1
30 : LD  6, 1(0) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
