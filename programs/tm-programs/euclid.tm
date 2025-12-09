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
23 : LDA 7, 32(0) ; Call gcd
24 : LD   1, 3(5) ;  Load function result
25 : LDC   2, 4(0) ;  Caller frame size
26 : SUB   5, 5, 2 ;  Pop back to caller
27 : SUB   4, 4, 2 ;  Pop back to caller
28 : ST 1, 3(5) ; Store result into caller’s frame
29 : LD   1, 3(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 2(5) ;  Load parameter 'b' into R1
33 : ADD  3, 1, 0 ;  Store left operand into temporary register
34 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
35 : ADD  2, 3, 0 ;  Restore left operand
36 : SUB  1, 2, 1 ;  left - right for equality check
37 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
38 : LDC  1, 0(0) ;  false
39 : LDA  7, 1(7) ;  skip setting true
40 : LDC  1, 1(0) ;  true
41 : JEQ  1, 44(0) ;  If condition is false, jump to ELSE
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : LDA  7, 73(0) ;  Skip ELSE block
44 : LD   1, 2(5) ;  Load parameter 'b' into R1
45 : LDA 4, 4(5) ; Base of callee frame
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : LDA 4, 4(5) ; Base of callee frame
49 : ST 1, 1(4) ; Store argument 0 in callee
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : LDA 4, 4(5) ; Base of callee frame
52 : ST 1, 2(4) ; Store argument 1 in callee
53 : LDA 4, 4(5) ; Base of callee frame
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return in callee frame
56 : ADD 5, 4, 0 ; Push callee frame
57 : LDA 7, 76(0) ; Call remainder
58 : LD   1, 3(5) ;  Load function result
59 : LDC   2, 4(0) ;  Caller frame size
60 : SUB   5, 5, 2 ;  Pop back to caller
61 : SUB   4, 4, 2 ;  Pop back to caller
62 : LDA 4, 4(5) ; Base of callee frame
63 : ST 1, 2(4) ; Store argument 1 in callee
64 : LDA 4, 4(5) ; Base of callee frame
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame
68 : LDA 7, 32(0) ; Call gcd
69 : LD   1, 3(5) ;  Load function result
70 : LDC   2, 4(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ST   1, 3(5) ;  Store function result into stack frame
74 : LD   6, 0(5) ;  Load return address
75 : LDA  7, 0(6) ;  Return to caller
76 : LD   1, 1(5) ;  Load parameter 'a' into R1
77 : ADD  3, 1, 0 ;  Store left operand into temporary register
78 : LD   1, 2(5) ;  Load parameter 'b' into R1
79 : ADD  2, 3, 0 ;  Restore left operand
80 : SUB  1, 2, 1 ;  left - right for less-than check
81 : JLT  1, 2(7) ;  If R1 < 0, jump to true
82 : LDC  1, 0(0) ;  false
83 : LDA  7, 1(7) ;  skip setting true
84 : LDC  1, 1(0) ;  true
85 : JEQ  1, 88(0) ;  If condition is false, jump to ELSE
86 : LD   1, 1(5) ;  Load parameter 'a' into R1
87 : LDA  7, 107(0) ;  Skip ELSE block
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : ADD  2, 3, 0 ;  Restore left operand
92 : SUB  1, 2, 1 ;  R1 = left - right
93 : LDA 4, 4(5) ; Base of callee frame
94 : ST 1, 1(4) ; Store argument 0 in callee
95 : LD   1, 2(5) ;  Load parameter 'b' into R1
96 : LDA 4, 4(5) ; Base of callee frame
97 : ST 1, 2(4) ; Store argument 1 in callee
98 : LDA 4, 4(5) ; Base of callee frame
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 76(0) ; Call remainder
103 : LD   1, 3(5) ;  Load function result
104 : LDC   2, 4(0) ;  Caller frame size
105 : SUB   5, 5, 2 ;  Pop back to caller
106 : SUB   4, 4, 2 ;  Pop back to caller
107 : ST   1, 3(5) ;  Store function result into stack frame
108 : LD   6, 0(5) ;  Load return address
109 : LDA  7, 0(6) ;  Return to caller
