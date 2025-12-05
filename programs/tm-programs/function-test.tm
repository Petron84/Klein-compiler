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
13 : LD   1, 1(5) ;  Load parameter 'a' into R1
14 : ST   1, 4(5) ;  Spill Temporary
15 : LD   1, 2(5) ;  Load parameter 'b' into R1
16 : ST   1, 5(5) ;  Spill Temporary
17 : LDA 4, 4(5) ; Restore Callee frame base
18 : LD   1, 5(5) ;  Restore Temporary
19 : ST 1, 2(4) ;  Store argument 1 into callee frame
20 : LD   1, 4(5) ;  Restore Temporary
21 : ST 1, 1(4) ;  Store argument 0 into callee frame
22 : LDA 4, 4(5) ; Restore Call frame base
23 : LDA 6, 27(0) ;  Compute return address
24 : ST 6, 0(4) ;  Store return address in callee frame
25 : ADD 5, 4, 0 ;  Update pointer
26 : LDA 7, 34(0) ;  Call eval_and_print
27 : LD 1, 3(5) ;  Load callee return value into R1
28 : LDC 4, 4(0) ;  Load frame size
29 : SUB 5, 5, 4 ;  Restore pointer
30 : ST 1, 3(5) ;  Store result into current frame's return slot
31 : LD   1, 3(5) ;  Load return value into register 1
32 : LD  6, 0(5) ;  Load return address for main function into register 6
33 : LDA  7, 0(6) ;  Jump to return address of main function
34 : LD   1, 1(5) ;  Load parameter 'a' into R1
35 : ADD  3, 1, 0 ;  Save left operand
36 : LD   1, 2(5) ;  Load parameter 'b' into R1
37 : ADD  2, 3, 0 ;  restore left operand
38 : MUL  1, 2, 1 ;  R1 = left * right
39 : LDA  4, 3(5) ;  Update DMEM pointer
40 : LDA 6, 44(0) ;  Compute return address
41 : ST   6, 0(4) ;  Store return address
42 : ADD  5, 4, 0 ;  Updated Pointer
43 : LDA  7, 10(0) ; Call print
44 : LDC  4, 3(0) ;  Load frame size
45 : SUB  5, 5, 4 ;  Restore pointer
46 : ST   1, 3(5) ;  Store function result into stack frame
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : ADD  3, 1, 0 ;  Save left operand
49 : LD   1, 2(5) ;  Load parameter 'b' into R1
50 : ADD  2, 3, 0 ;  restore left operand
51 : MUL  1, 2, 1 ;  R1 = left * right
52 : ST   1, 3(5) ;  Store function result into stack frame
53 : LD   6, 0(5) ;  Load return address
54 : LDA  7, 0(6) ;  Return to caller
