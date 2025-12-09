0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LDA  4, 0(5) ;  Save callee frame base
16 : LD   1, 1(5) ;  Load parameter 'a' into R1
17 : ST 1, 1(4) ;  Store argument 0 into callee frame
18 : LD   1, 2(5) ;  Load parameter 'b' into R1
19 : ST 1, 2(4) ;  Store argument 1 into callee frame
20 : LDA 6, 25(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : LDA  2, 4(4) ;  Compute end of frame
23 : ADD  5, 2, 0 ;  Advance pointer to end of frame
24 : LDA 7, 48(0) ;  Call multiply_and_square
25 : LD 1, 3(5) ;  Load callee return value into R1
26 : LDC  4, 4(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : ST 1, 3(5) ;  Store result into current frame's return slot
29 : LD   1, 3(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 1(5) ;  Load parameter 'a' into R1
33 : ADD  3, 1, 0 ;  Store left operand into temporary register
34 : LD   1, 1(5) ;  Load parameter 'a' into R1
35 : ADD  2, 3, 0 ;  Restore left operand
36 : MUL  1, 2, 1 ;  R1 = left * right
37 : ST   1, 2(5) ;  Store function result into stack frame
38 : LD   6, 0(5) ;  Load return address
39 : LDA  7, 0(6) ;  Return to caller
40 : LD   1, 1(5) ;  Load parameter 'a' into R1
41 : ADD  3, 1, 0 ;  Store left operand into temporary register
42 : LD   1, 2(5) ;  Load parameter 'b' into R1
43 : ADD  2, 3, 0 ;  Restore left operand
44 : MUL  1, 2, 1 ;  R1 = left * right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LDA  4, 0(5) ;  Save callee frame base
49 : LDA  4, 0(5) ;  Save callee frame base
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : ST 1, 1(4) ;  Store argument 0 into callee frame
52 : LDA 6, 57(0) ;  Compute return address
53 : ST 6, 0(4) ;  Store return address in callee frame
54 : LDA  2, 3(4) ;  Compute end of frame
55 : ADD  5, 2, 0 ;  Advance pointer to end of frame
56 : LDA 7, 32(0) ;  Call square
57 : LD 1, 2(5) ;  Load callee return value into R1
58 : LDC  4, 3(0) ;  Load frame size
59 : SUB  5, 5, 4 ;  Restore pointer
60 : LDC  2, 3(0) ;  Stores arg frame size
61 : SUB  5, 5, 2 ;  Pop frame
62 : ST 1, 1(4) ;  Store argument 0 into callee frame
63 : LDA  4, 0(5) ;  Save callee frame base
64 : LD   1, 2(5) ;  Load parameter 'b' into R1
65 : ST 1, 1(4) ;  Store argument 0 into callee frame
66 : LDA 6, 71(0) ;  Compute return address
67 : ST 6, 0(4) ;  Store return address in callee frame
68 : LDA  2, 3(4) ;  Compute end of frame
69 : ADD  5, 2, 0 ;  Advance pointer to end of frame
70 : LDA 7, 32(0) ;  Call square
71 : LD 1, 2(5) ;  Load callee return value into R1
72 : LDC  4, 3(0) ;  Load frame size
73 : SUB  5, 5, 4 ;  Restore pointer
74 : LDC  2, 3(0) ;  Stores arg frame size
75 : SUB  5, 5, 2 ;  Pop frame
76 : ST 1, 2(4) ;  Store argument 1 into callee frame
77 : LDA 6, 82(0) ;  Compute return address
78 : ST 6, 0(4) ;  Store return address in callee frame
79 : LDA  2, 4(4) ;  Compute end of frame
80 : ADD  5, 2, 0 ;  Advance pointer to end of frame
81 : LDA 7, 40(0) ;  Call multiply
82 : LD 1, 3(5) ;  Load callee return value into R1
83 : LDC  4, 4(0) ;  Load frame size
84 : SUB  5, 5, 4 ;  Restore pointer
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
