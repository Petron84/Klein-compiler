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
13 : LDA  4, 4(5) ;  Compute callee frame size
14 : ADD  5, 4, 0 ;  Reserve callee frame on DMEM
15 : LD   1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(5) ;  Store argument 0 into callee frame
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(5) ;  Store argument 1 into callee frame
19 : LDA 6, 22(0) ;  Compute return address
20 : ST 6, 0(5) ;  Store return address in callee frame
21 : LDA 7, 45(0) ;  Call multiply_and_square
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 4(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 3(5) ;  Store result into current frame's return slot
26 : LD   1, 3(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : MUL  1, 2, 1 ;  R1 = left * right
34 : ST   1, 2(5) ;  Store function result into stack frame
35 : LD   6, 0(5) ;  Load return address
36 : LDA  7, 0(6) ;  Return to caller
37 : LD   1, 1(5) ;  Load parameter 'a' into R1
38 : ADD  3, 1, 0 ;  Store left operand into temporary register
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : ADD  2, 3, 0 ;  Restore left operand
41 : MUL  1, 2, 1 ;  R1 = left * right
42 : ST   1, 3(5) ;  Store function result into stack frame
43 : LD   6, 0(5) ;  Load return address
44 : LDA  7, 0(6) ;  Return to caller
45 : LDA  4, 4(5) ;  Compute callee frame size
46 : ADD  5, 4, 0 ;  Reserve callee frame on DMEM
47 : LDA  4, 4(5) ;  Compute callee frame size
48 : ADD  5, 4, 0 ;  Reserve callee frame on DMEM
49 : LD   1, 1(5) ;  Load parameter 'a' into R1
50 : ST 1, 1(5) ;  Store argument 0 into callee frame
51 : LDA 6, 54(0) ;  Compute return address
52 : ST 6, 0(5) ;  Store return address in callee frame
53 : LDA 7, 29(0) ;  Call square
54 : LD 1, 2(5) ;  Load callee return value into R1
55 : LDC  4, 4(0) ;  Load frame size
56 : SUB  5, 5, 4 ;  Restore pointer
57 : ST 1, 1(5) ;  Store argument 0 into callee frame
58 : LDA  4, 4(5) ;  Compute callee frame size
59 : ADD  5, 4, 0 ;  Reserve callee frame on DMEM
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : ST 1, 1(5) ;  Store argument 0 into callee frame
62 : LDA 6, 65(0) ;  Compute return address
63 : ST 6, 0(5) ;  Store return address in callee frame
64 : LDA 7, 29(0) ;  Call square
65 : LD 1, 2(5) ;  Load callee return value into R1
66 : LDC  4, 4(0) ;  Load frame size
67 : SUB  5, 5, 4 ;  Restore pointer
68 : ST 1, 2(5) ;  Store argument 1 into callee frame
69 : LDA 6, 72(0) ;  Compute return address
70 : ST 6, 0(5) ;  Store return address in callee frame
71 : LDA 7, 37(0) ;  Call multiply
72 : LD 1, 3(5) ;  Load callee return value into R1
73 : LDC  4, 4(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
