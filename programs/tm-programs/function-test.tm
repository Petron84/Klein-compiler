1 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LD  2, 2(0) ;  Load CLI arg 2 into R2
5 : ST  2, 2(5) ;  Store the argument 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST  6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 16(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT 1, 0, 0 ;  Hardcoded print function
13 : LD  6, 0(5) ;  Load return addess from stack frame.
14 : LDA 7, 0(6) ;  Jump to return address.
16 : LD  1, 1(5) ;  Load parameter 'a' into R1
17 : LDA 4, 4(5) ;  Base of callee frame
18 : ST  1, 1(4) ;  Store argument 0 into callee frame
19 : LD  1, 2(5) ;  Load parameter 'b' into R1
20 : LDA 4, 4(5) ;  Base of callee frame
21 : ST  1, 2(4) ;  Store argument 1 into callee frame
22 : LDA 4, 4(5) ;  Base of callee frame
23 : LDA 6, 27(0) ;  Compute return address
24 : ST  6, 0(4) ;  Store RA in callee frame
25 : ADD 5, 4, 0 ;  Update pointer (enter callee)
26 : LDA 7, 35(0) ;  Call eval_and_print
27 : LD  1, 3(5) ;  Load callee return value into R1
28 : LDC 3, 4(0) ;  Load callee frame size
29 : SUB 5, 5, 3 ;  Restore pointer
30 : ST  1, 3(5) ;  Store result into current frame's return slot
31 : LD  1, 3(5) ;  Load return value into R1
32 : LD  6, 0(5) ;  Load return address for main function into R6
33 : LDA 7, 0(6) ;  Jump to return address of main function
35 : LD  1, 1(5) ;  Load parameter 'a' into R1
36 : ADD 2, 1, 0 ;  R2 = left operand
37 : LD  1, 2(5) ;  Load parameter 'b' into R1
38 : MUL 3, 2, 1 ;  R3 = left * right
39 : ADD 1, 3, 0 ;  R1 = R3
40 : LDA 4, 3(5) ;  Base of callee frame (print)
41 : LDA 6, 45(0) ;  Compute return address
42 : ST  6, 0(4) ;  Store RA in callee frame
43 : ADD 5, 4, 0 ;  Update pointer (enter callee)
44 : LDA 7, 12(0) ;  Call print
45 : LDC 3, 3(0) ;  Load callee frame size
46 : SUB 5, 5, 3 ;  Restore pointer
47 : LD  1, 1(5) ;  Load parameter 'a' into R1
48 : ADD 2, 1, 0 ;  R2 = left operand
49 : LD  1, 2(5) ;  Load parameter 'b' into R1
50 : MUL 3, 2, 1 ;  R3 = left * right
51 : ADD 1, 3, 0 ;  R1 = R3
52 : ST  1, 3(5) ;  Store function result into stack frame
53 : LD  6, 0(5) ;  Load return address
54 : LDA 7, 0(6) ;  Return to caller
