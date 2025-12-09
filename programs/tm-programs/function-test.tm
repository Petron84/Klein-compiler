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
14 : LDA 4, 4(5) ; Base of callee frame
15 : ST 1, 1(4) ; Store argument 0 in callee
16 : LD   1, 2(5) ;  Load parameter 'b' into R1
17 : LDA 4, 4(5) ; Base of callee frame
18 : ST 1, 2(4) ; Store argument 1 in callee
19 : LDA 4, 4(5) ; Base of callee frame
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return in callee frame
22 : ADD 5, 4, 0 ; Push callee frame
23 : LDA 7, 48(0) ; Call multiply_and_square
24 : LD   1, 3(5) ;  Load function result
25 : LDC   2, 4(0) ;  Caller frame size
26 : SUB   5, 5, 2 ;  Pop back to caller
27 : SUB   4, 4, 2 ;  Pop back to caller
28 : ST 1, 3(5) ; Store result into caller’s frame
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
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : LDA 4, 3(5) ; Base of callee frame
50 : ST 1, 1(4) ; Store argument 0 in callee
51 : LDA 4, 3(5) ; Base of callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 32(0) ; Call square
56 : LD   1, 2(5) ;  Load function result
57 : LDC   2, 3(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : SUB   4, 4, 2 ;  Pop back to caller
60 : LDA 4, 4(5) ; Base of callee frame
61 : ST 1, 1(4) ; Store argument 0 in callee
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : LDA 4, 3(5) ; Base of callee frame
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LDA 4, 3(5) ; Base of callee frame
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 32(0) ; Call square
70 : LD   1, 2(5) ;  Load function result
71 : LDC   2, 3(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : LDA 4, 4(5) ; Base of callee frame
75 : ST 1, 2(4) ; Store argument 1 in callee
76 : LDA 4, 4(5) ; Base of callee frame
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return in callee frame
79 : ADD 5, 4, 0 ; Push callee frame
80 : LDA 7, 40(0) ; Call multiply
81 : LD   1, 3(5) ;  Load function result
82 : LDC   2, 4(0) ;  Caller frame size
83 : SUB   5, 5, 2 ;  Pop back to caller
84 : SUB   4, 4, 2 ;  Pop back to caller
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
