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
13 : LDA 5, 4(5) ;  Advance DMEM pointer to callee frame 'eval_and_print'
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=2) into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=2) into callee frame
18 : LDA 6, 2(7) ;  Compute return address
19 : ST 6, 0(5) ;  Store return address in callee frame
20 : LDA 7, 27(0) ;  Call eval_and_print
21 : LD 1, 3(5) ;  Load callee return value into R1
22 : LDA 5, -4(5) ;  Restore DMEM pointer to caller frame
23 : ST 1, 6(0) ;  Store function-call result into caller's return slot
24 : LD   1, 6(0) ;  Load return value into register 1
25 : LD  6, 3(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LD   1, 2(5) ;  Load parameter 'b' into R1
30 : MUL  1, 2, 1 ;  R1 = left * right
31 : LDA  5, 4(5) ;  Update DMEM pointer
32 : LDA  6, 2(7) ;  Compute return address
33 : ST   6, 0(5) ;  Store return address
34 : LDA  7, 10(0) ; Call print
35 : LDC  5, -4(5) ;  Move pointer to previous stack frame
36 : ST   1, 3(5) ;  Store function result into stack frame
37 : LD   1, 1(5) ;  Load parameter 'a' into R1
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : MUL  1, 2, 1 ;  R1 = left * right
41 : ST   1, 3(5) ;  Store function result into stack frame
42 : LD   6, 0(5) ;  Load return address
43 : LDA  7, 0(6) ;  Return to caller
