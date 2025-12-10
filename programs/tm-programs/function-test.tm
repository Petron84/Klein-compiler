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
13 : LDA 4, 4(5) ; Base of callee frame
14 : LD   1, 1(5) ;  Load parameter 'a' into R1
15 : ST 1, 1(4) ; Store argument 0 in callee
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 48(0) ; Call multiply_and_square
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s frame
27 : LD   1, 3(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ST   1, 3(4) ;  Store right operand result into return value slot
32 : LD   1, 1(5) ;  Load parameter 'a' into R1
33 : ADD  2, 1, 0 ;  Move left operand to register 2
34 : LD   1, 3(4) ;  Return right operand back into register 1
35 : MUL  1, 2, 1 ;  R1 = left * right
36 : ST   1, 2(5) ;  Store function result into stack frame
37 : LD   6, 0(5) ;  Load return address
38 : LDA  7, 0(6) ;  Return to caller
39 : LD   1, 2(5) ;  Load parameter 'b' into R1
40 : ST   1, 3(4) ;  Store right operand result into return value slot
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : ADD  2, 1, 0 ;  Move left operand to register 2
43 : LD   1, 3(4) ;  Return right operand back into register 1
44 : MUL  1, 2, 1 ;  R1 = left * right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LDA 4, 4(5) ; Base of callee frame
49 : LDA 4, 3(5) ; Base of callee frame
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : ST 1, 1(4) ; Store argument 0 in callee
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 30(0) ; Call square
56 : LD   1, 2(5) ;  Load function result
57 : LDC   2, 3(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : SUB   4, 4, 2 ;  Pop back to caller
60 : ST 1, 1(4) ; Store argument 0 in callee
61 : LDA 4, 3(5) ; Base of callee frame
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame
67 : LDA 7, 30(0) ; Call square
68 : LD   1, 2(5) ;  Load function result
69 : LDC   2, 3(0) ;  Caller frame size
70 : SUB   5, 5, 2 ;  Pop back to caller
71 : SUB   4, 4, 2 ;  Pop back to caller
72 : ST 1, 2(4) ; Store argument 1 in callee
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame
76 : LDA 7, 39(0) ; Call multiply
77 : LD   1, 3(5) ;  Load function result
78 : LDC   2, 4(0) ;  Caller frame size
79 : SUB   5, 5, 2 ;  Pop back to caller
80 : SUB   4, 4, 2 ;  Pop back to caller
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
