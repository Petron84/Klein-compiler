0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return addess from stack frame.
13 : LDA 7, 0(6) ;  Jump to return address.
14 : LDA 3, 4(5) ; Base of callee frame (stable)
15 : LDA 3, 3(5) ; Base of callee frame (stable)
16 : LD 1, 1(5) ;  Load parameter 'x' into R1
17 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(3) ; Store return in callee frame (via R3)
20 : ADD 5, 3, 0 ; Push callee frame
21 : LDA 7, 81(0) ; Call double
22 : LD 1, 2(5) ;  Load function result
23 : LDC 2, 3(0) ;  Caller frame size
24 : SUB 5, 5, 2 ;  Pop back to caller
25 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
26 : LDA 3, 3(5) ; Base of callee frame (stable)
27 : LD 1, 2(5) ;  Load parameter 'y' into R1
28 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(3) ; Store return in callee frame (via R3)
31 : ADD 5, 3, 0 ; Push callee frame
32 : LDA 7, 57(0) ; Call triple
33 : LD 1, 2(5) ;  Load function result
34 : LDC 2, 3(0) ;  Caller frame size
35 : SUB 5, 5, 2 ;  Pop back to caller
36 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(3) ; Store return in callee frame (via R3)
39 : ADD 5, 3, 0 ; Push callee frame
40 : LDA 7, 94(0) ; Call add
41 : LD 1, 3(5) ;  Load function result
42 : LDC 2, 4(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop back to caller
44 : ST 1, 3(5) ; Store result into caller’s frame
45 : LD 1, 3(5) ;  Load return value into register 1
46 : LD 6, 0(5) ;  Load return address for main function into register 6
47 : LDA 7, 0(6) ;  Jump to return address of main function
48 : LDC 1, 2(0) ;  Load integer-literal value into register 1
49 : ADD 3, 1, 0 ;  Stash right operand in R3
50 : LD 1, 1(5) ;  Load parameter 'k' into R1
51 : ADD 2, 1, 0 ;  Move left operand to register 2
52 : ADD 1, 3, 0 ;  Restore right operand from R3
53 : MUL 1, 2, 1 ;  R1 = left * right
54 : ST 1, 2(5) ;  Store function result into stack frame
55 : LD 6, 0(5) ;  Load return address
56 : LDA 7, 0(6) ;  Return to caller
57 : LDA 3, 4(5) ; Base of callee frame (stable)
58 : LD 1, 1(5) ;  Load parameter 'n' into R1
59 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
60 : LDA 3, 3(5) ; Base of callee frame (stable)
61 : LD 1, 1(5) ;  Load parameter 'n' into R1
62 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(3) ; Store return in callee frame (via R3)
65 : ADD 5, 3, 0 ; Push callee frame
66 : LDA 7, 48(0) ; Call mul2
67 : LD 1, 2(5) ;  Load function result
68 : LDC 2, 3(0) ;  Caller frame size
69 : SUB 5, 5, 2 ;  Pop back to caller
70 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(3) ; Store return in callee frame (via R3)
73 : ADD 5, 3, 0 ; Push callee frame
74 : LDA 7, 94(0) ; Call add
75 : LD 1, 3(5) ;  Load function result
76 : LDC 2, 4(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop back to caller
78 : ST 1, 2(5) ;  Store function result into stack frame
79 : LD 6, 0(5) ;  Load return address
80 : LDA 7, 0(6) ;  Return to caller
81 : LDA 3, 3(5) ; Base of callee frame (stable)
82 : LD 1, 1(5) ;  Load parameter 'n' into R1
83 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
84 : LDA 6, 88(0) ; Return address
85 : ST 6, 0(3) ; Store return in callee frame (via R3)
86 : ADD 5, 3, 0 ; Push callee frame
87 : LDA 7, 48(0) ; Call mul2
88 : LD 1, 2(5) ;  Load function result
89 : LDC 2, 3(0) ;  Caller frame size
90 : SUB 5, 5, 2 ;  Pop back to caller
91 : ST 1, 2(5) ;  Store function result into stack frame
92 : LD 6, 0(5) ;  Load return address
93 : LDA 7, 0(6) ;  Return to caller
94 : LD 1, 2(5) ;  Load parameter 'b' into R1
95 : ADD 3, 1, 0 ;  Stash right operand in R3
96 : LD 1, 1(5) ;  Load parameter 'a' into R1
97 : ADD 2, 1, 0 ;  Move left operand to register 2
98 : ADD 1, 3, 0 ;  Restore right operand from R3
99 : ADD 1, 2, 1 ;  R1 = left + right
100 : ST 1, 3(5) ;  Store function result into stack frame
101 : LD 6, 0(5) ;  Load return address
102 : LDA 7, 0(6) ;  Return to caller
