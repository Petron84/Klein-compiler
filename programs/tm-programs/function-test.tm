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
13 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'eval_and_print'
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(3) ;  Store argument Tree Node('IDENTIFIER', value='a',line=2) into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(3) ;  Store argument Tree Node('IDENTIFIER', value='b',line=2) into callee frame
18 : LDA 6, 2(7) ;  Compute return address
19 : ST 6, 0(3) ;  Store return address in callee frame
20 : ADD  5, 3, 0 ;  Update pointer
21 : LDA 7, 29(0) ;  Call eval_and_print
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 4(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 6(0) ;  Store function-call result into caller's return slot
26 : LD   1, 6(0) ;  Load return value into register 1
27 : LD  6, 3(0) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : MUL  1, 2, 1 ;  R1 = left * right
33 : LDA  3, 4(5) ;  Update DMEM pointer
34 : LDA  6, 2(7) ;  Compute return address
35 : ST   6, 0(3) ;  Store return address
36 : ADD  5, 3, 0 ;  Updated Pointer
37 : LDA  7, 10(0) ; Call print
38 : LDC  4, 4)0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : ST   1, 3(5) ;  Store function result into stack frame
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
43 : LD   1, 2(5) ;  Load parameter 'b' into R1
44 : MUL  1, 2, 1 ;  R1 = left * right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
