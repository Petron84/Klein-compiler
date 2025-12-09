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
21 : LDA 7, 30(0) ; Call gcd
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 3(5) ; Store result into caller’s frame
27 : LD   1, 3(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
33 : ADD  2, 3, 0 ;  Restore left operand
34 : SUB  1, 2, 1 ;  left - right for equality check
35 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LD   1, 1(5) ;  Load parameter 'a' into R1
41 : LDA  7, 67(0) ;  Skip ELSE block
42 : LDA 4, 4(5) ; Base of callee frame
43 : LD   1, 2(5) ;  Load parameter 'b' into R1
44 : ST 1, 1(4) ; Store argument 0 in callee
45 : LDA 4, 4(5) ; Base of callee frame
46 : LD   1, 1(5) ;  Load parameter 'a' into R1
47 : ST 1, 1(4) ; Store argument 0 in callee
48 : LD   1, 2(5) ;  Load parameter 'b' into R1
49 : ST 1, 2(4) ; Store argument 1 in callee
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 70(0) ; Call remainder
54 : LD   1, 3(5) ;  Load function result
55 : LDC   2, 4(0) ;  Caller frame size
56 : SUB   5, 5, 2 ;  Pop back to caller
57 : SUB   4, 4, 2 ;  Pop back to caller
58 : ST 1, 2(4) ; Store argument 1 in callee
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return in callee frame
61 : ADD 5, 4, 0 ; Push callee frame
62 : LDA 7, 30(0) ; Call gcd
63 : LD   1, 3(5) ;  Load function result
64 : LDC   2, 4(0) ;  Caller frame size
65 : SUB   5, 5, 2 ;  Pop back to caller
66 : SUB   4, 4, 2 ;  Pop back to caller
67 : ST   1, 3(5) ;  Store function result into stack frame
68 : LD   6, 0(5) ;  Load return address
69 : LDA  7, 0(6) ;  Return to caller
70 : LD   1, 1(5) ;  Load parameter 'a' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : SUB  1, 2, 1 ;  left - right for less-than check
75 : JLT  1, 2(7) ;  If R1 < 0, jump to true
76 : LDC  1, 0(0) ;  false
77 : LDA  7, 1(7) ;  skip setting true
78 : LDC  1, 1(0) ;  true
79 : JEQ  1, 82(0) ;  If condition is false, jump to ELSE
80 : LD   1, 1(5) ;  Load parameter 'a' into R1
81 : LDA  7, 99(0) ;  Skip ELSE block
82 : LDA 4, 4(5) ; Base of callee frame
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : ADD  3, 1, 0 ;  Store left operand into temporary register
85 : LD   1, 2(5) ;  Load parameter 'b' into R1
86 : ADD  2, 3, 0 ;  Restore left operand
87 : SUB  1, 2, 1 ;  R1 = left - right
88 : ST 1, 1(4) ; Store argument 0 in callee
89 : LD   1, 2(5) ;  Load parameter 'b' into R1
90 : ST 1, 2(4) ; Store argument 1 in callee
91 : LDA 6, 95(0) ; Return address
92 : ST 6, 0(4) ; Store return in callee frame
93 : ADD 5, 4, 0 ; Push callee frame
94 : LDA 7, 70(0) ; Call remainder
95 : LD   1, 3(5) ;  Load function result
96 : LDC   2, 4(0) ;  Caller frame size
97 : SUB   5, 5, 2 ;  Pop back to caller
98 : SUB   4, 4, 2 ;  Pop back to caller
99 : ST   1, 3(5) ;  Store function result into stack frame
100 : LD   6, 0(5) ;  Load return address
101 : LDA  7, 0(6) ;  Return to caller
