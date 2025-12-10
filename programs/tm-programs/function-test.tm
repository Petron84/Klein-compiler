0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LDA  6, 2(7) ;  Calculate return address
7 : ST   6, 0(5) ;  Store return address in main stack frame
8 : LDA  7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT  1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT  1, 0, 0 ;  Hardcoded print function
12 : LD   6, 0(5) ;  Load return addess from stack frame.
13 : LDA  7, 0(6) ;  Jump to return address.
14 : LDA 4, 4(5) ; Base of callee frame
15 : LD   1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(4) ; Store argument 1 in callee
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame
22 : LDA 7, 49(0) ; Call multiply_and_square
23 : LD   1, 3(5) ;  Load function result
24 : LDC   2, 4(0) ;  Caller frame size
25 : SUB   5, 5, 2 ;  Pop back to caller
26 : SUB   4, 4, 2 ;  Pop back to caller
27 : ST 1, 3(5) ; Store result into caller’s frame
28 : LD   1, 3(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : ST   1, 3(4) ;  Store right operand result into return value slot
33 : LD   1, 1(5) ;  Load parameter 'a' into R1
34 : ADD  2, 1, 0 ;  Move left operand to register 2
35 : LD   1, 3(4) ;  Return right operand back into register 1
36 : MUL  1, 2, 1 ;  R1 = left * right
37 : ST   1, 2(5) ;  Store function result into stack frame
38 : LD   6, 0(5) ;  Load return address
39 : LDA  7, 0(6) ;  Return to caller
40 : LD   1, 2(5) ;  Load parameter 'b' into R1
41 : ST   1, 3(4) ;  Store right operand result into return value slot
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : ADD  2, 1, 0 ;  Move left operand to register 2
44 : LD   1, 3(4) ;  Return right operand back into register 1
45 : MUL  1, 2, 1 ;  R1 = left * right
46 : ST   1, 3(5) ;  Store function result into stack frame
47 : LD   6, 0(5) ;  Load return address
48 : LDA  7, 0(6) ;  Return to caller
49 : LDA 4, 4(5) ; Base of callee frame
50 : LDA 4, 3(5) ; Base of callee frame
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : ST 1, 1(4) ; Store argument 0 in callee
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame
56 : LDA 7, 31(0) ; Call square
57 : LD   1, 2(5) ;  Load function result
58 : LDC   2, 3(0) ;  Caller frame size
59 : SUB   5, 5, 2 ;  Pop back to caller
60 : SUB   4, 4, 2 ;  Pop back to caller
61 : ST 1, 1(4) ; Store argument 0 in callee
62 : LDA 4, 3(5) ; Base of callee frame
63 : LD   1, 2(5) ;  Load parameter 'b' into R1
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame
68 : LDA 7, 31(0) ; Call square
69 : LD   1, 2(5) ;  Load function result
70 : LDC   2, 3(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ST 1, 2(4) ; Store argument 1 in callee
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame
77 : LDA 7, 40(0) ; Call multiply
78 : LD   1, 3(5) ;  Load function result
79 : LDC   2, 4(0) ;  Caller frame size
80 : SUB   5, 5, 2 ;  Pop back to caller
81 : SUB   4, 4, 2 ;  Pop back to caller
82 : ST   1, 3(5) ;  Store function result into stack frame
83 : LD   6, 0(5) ;  Load return address
84 : LDA  7, 0(6) ;  Return to caller
