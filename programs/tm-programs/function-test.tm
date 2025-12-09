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
13 : LDA 4, 4(5) ;  Base of callee frame (target)
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : LDA 4, 4(5) ;  Recompute callee frame base
16 : ST 1, 1(4) ;  Store argument 0 into callee frame
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : LDA 4, 4(5) ;  Recompute callee frame base
19 : ST 1, 2(4) ;  Store argument 1 into callee frame
20 : LDA 6, 24(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : ADD 5, 4, 0 ;  Switch frame pointer to callee
23 : LDA 7, 46(0) ;  Call multiply_and_square
24 : LD 1, 3(5) ;  Load callee return value into R1
25 : LDC 2, 4(0) ;  Load caller frame size
26 : SUB 5, 5, 2 ;  Restore frame pointer to caller base
27 : LD   1, 3(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LD   1, 1(5) ;  Load parameter 'a' into R1
33 : ADD  2, 3, 0 ;  Restore left operand
34 : MUL  1, 2, 1 ;  R1 = left * right
35 : ST   1, 2(5) ;  Store function result into stack frame
36 : LD   6, 0(5) ;  Load return address
37 : LDA  7, 0(6) ;  Return to caller
38 : LD   1, 1(5) ;  Load parameter 'a' into R1
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'b' into R1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : MUL  1, 2, 1 ;  R1 = left * right
43 : ST   1, 3(5) ;  Store function result into stack frame
44 : LD   6, 0(5) ;  Load return address
45 : LDA  7, 0(6) ;  Return to caller
46 : LDA 4, 4(5) ;  Base of callee frame (target)
47 : LDA 4, 4(5) ;  Base of callee frame (target)
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : LDA 4, 4(5) ;  Recompute callee frame base
50 : ST 1, 1(4) ;  Store argument 0 into callee frame
51 : LDA 6, 55(0) ;  Compute return address
52 : ST 6, 0(4) ;  Store return address in callee frame
53 : ADD 5, 4, 0 ;  Switch frame pointer to callee
54 : LDA 7, 30(0) ;  Call square
55 : LD 1, 2(5) ;  Load callee return value into R1
56 : LDC 2, 4(0) ;  Load caller frame size
57 : SUB 5, 5, 2 ;  Restore frame pointer to caller base
58 : LDA 4, 4(5) ;  Recompute callee frame base
59 : ST 1, 1(4) ;  Store argument 0 into callee frame
60 : LDA 4, 4(5) ;  Base of callee frame (target)
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : LDA 4, 4(5) ;  Recompute callee frame base
63 : ST 1, 1(4) ;  Store argument 0 into callee frame
64 : LDA 6, 68(0) ;  Compute return address
65 : ST 6, 0(4) ;  Store return address in callee frame
66 : ADD 5, 4, 0 ;  Switch frame pointer to callee
67 : LDA 7, 30(0) ;  Call square
68 : LD 1, 2(5) ;  Load callee return value into R1
69 : LDC 2, 4(0) ;  Load caller frame size
70 : SUB 5, 5, 2 ;  Restore frame pointer to caller base
71 : LDA 4, 4(5) ;  Recompute callee frame base
72 : ST 1, 2(4) ;  Store argument 1 into callee frame
73 : LDA 6, 77(0) ;  Compute return address
74 : ST 6, 0(4) ;  Store return address in callee frame
75 : ADD 5, 4, 0 ;  Switch frame pointer to callee
76 : LDA 7, 38(0) ;  Call multiply
77 : LD 1, 3(5) ;  Load callee return value into R1
78 : LDC 2, 4(0) ;  Load caller frame size
79 : SUB 5, 5, 2 ;  Restore frame pointer to caller base
80 : ST   1, 3(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
