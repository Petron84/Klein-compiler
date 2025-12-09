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
13 : LDA  5, 0(5) ;  Save callee frame base
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(4) ;  Store argument 1 into callee frame
18 : LDA 6, 23(0) ;  Compute return address
19 : ST 6, 0(4) ;  Store return address in callee frame
20 : LDA  2, 4(4) ;  Compute end of frame
21 : ADD  5, 2, 0 ;  Advance pointer to end of frame
22 : LDA 7, 46(0) ;  Call multiply_and_square
23 : LD 1, 3(5) ;  Load callee return value into R1
24 : LDC  4, 4(0) ;  Load frame size
25 : SUB  5, 5, 4 ;  Restore pointer
26 : ST 1, 3(5) ;  Store result into current frame's return slot
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
46 : LDA  5, 0(5) ;  Save callee frame base
47 : LDA  5, 0(5) ;  Save callee frame base
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ST 1, 1(4) ;  Store argument 0 into callee frame
50 : LDA 6, 55(0) ;  Compute return address
51 : ST 6, 0(4) ;  Store return address in callee frame
52 : LDA  2, 3(4) ;  Compute end of frame
53 : ADD  5, 2, 0 ;  Advance pointer to end of frame
54 : LDA 7, 30(0) ;  Call square
55 : LD 1, 2(5) ;  Load callee return value into R1
56 : LDC  4, 3(0) ;  Load frame size
57 : SUB  5, 5, 4 ;  Restore pointer
58 : LDC  2, 3(0) ;  Stores arg frame size
59 : SUB  5, 5, 2 ;  Pop frame
60 : ST 1, 1(4) ;  Store argument 0 into callee frame
61 : LDA  5, 0(5) ;  Save callee frame base
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(4) ;  Store argument 0 into callee frame
64 : LDA 6, 69(0) ;  Compute return address
65 : ST 6, 0(4) ;  Store return address in callee frame
66 : LDA  2, 3(4) ;  Compute end of frame
67 : ADD  5, 2, 0 ;  Advance pointer to end of frame
68 : LDA 7, 30(0) ;  Call square
69 : LD 1, 2(5) ;  Load callee return value into R1
70 : LDC  4, 3(0) ;  Load frame size
71 : SUB  5, 5, 4 ;  Restore pointer
72 : LDC  2, 3(0) ;  Stores arg frame size
73 : SUB  5, 5, 2 ;  Pop frame
74 : ST 1, 2(4) ;  Store argument 1 into callee frame
75 : LDA 6, 80(0) ;  Compute return address
76 : ST 6, 0(4) ;  Store return address in callee frame
77 : LDA  2, 4(4) ;  Compute end of frame
78 : ADD  5, 2, 0 ;  Advance pointer to end of frame
79 : LDA 7, 38(0) ;  Call multiply
80 : LD 1, 3(5) ;  Load callee return value into R1
81 : LDC  4, 4(0) ;  Load frame size
82 : SUB  5, 5, 4 ;  Restore pointer
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
