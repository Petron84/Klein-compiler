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
13 : LDC  4, 1(0) ;  Top of caller frame
14 : LDA 4, 4(5) ; Base of callee frame
15 : LD   1, 1(5) ;  Load parameter 'a' into R1
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD   1, 2(5) ;  Load parameter 'b' into R1
18 : ST 1, 2(4) ; Store argument 1 in callee
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame
22 : LDA 7, 31(0) ; Call gcd
23 : LD   1, 3(5) ;  Load function result
24 : LDC   2, 4(0) ;  Caller frame size
25 : SUB   5, 5, 2 ;  Pop back to caller
26 : SUB   4, 4, 2 ;  Pop back to caller
27 : ST 1, 3(5) ; Store result into caller’s frame
28 : LD   1, 3(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LDC  1, 0(0) ;  Load integer-literal value into register 1
32 : ST   1, 3(4) ;  Store right operand result into return value slot
33 : LD   1, 2(5) ;  Load parameter 'b' into R1
34 : ADD  2, 1, 0 ;  Move left operand to register 2
35 : LD   1, 3(4) ;  Return right operand back into register 1
36 : SUB  1, 2, 1 ;  left - right for equality check
37 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
38 : LDC  1, 0(0) ;  false
39 : LDA  7, 1(7) ;  skip setting true
40 : LDC  1, 1(0) ;  true
41 : JEQ  1, 44(0) ;  If condition is false, jump to ELSE
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : LDA  7, 69(0) ;  Skip ELSE block
44 : LDA 4, 4(5) ; Base of callee frame
45 : LD   1, 2(5) ;  Load parameter 'b' into R1
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LDA 4, 4(5) ; Base of callee frame
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ST 1, 1(4) ; Store argument 0 in callee
50 : LD   1, 2(5) ;  Load parameter 'b' into R1
51 : ST 1, 2(4) ; Store argument 1 in callee
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 72(0) ; Call remainder
56 : LD   1, 3(5) ;  Load function result
57 : LDC   2, 4(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : SUB   4, 4, 2 ;  Pop back to caller
60 : ST 1, 2(4) ; Store argument 1 in callee
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame
64 : LDA 7, 31(0) ; Call gcd
65 : LD   1, 3(5) ;  Load function result
66 : LDC   2, 4(0) ;  Caller frame size
67 : SUB   5, 5, 2 ;  Pop back to caller
68 : SUB   4, 4, 2 ;  Pop back to caller
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ST   1, 3(4) ;  Store right operand result into return value slot
74 : LD   1, 1(5) ;  Load parameter 'a' into R1
75 : ADD  2, 1, 0 ;  Move left operand to register 2
76 : LD   1, 3(4) ;  Return right operand back into register 1
77 : SUB  1, 2, 1 ;  left - right for less-than check
78 : JLT  1, 2(7) ;  If R1 < 0, jump to true
79 : LDC  1, 0(0) ;  false
80 : LDA  7, 1(7) ;  skip setting true
81 : LDC  1, 1(0) ;  true
82 : JEQ  1, 85(0) ;  If condition is false, jump to ELSE
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : LDA  7, 103(0) ;  Skip ELSE block
85 : LDA 4, 4(5) ; Base of callee frame
86 : LD   1, 2(5) ;  Load parameter 'b' into R1
87 : ST   1, 3(4) ;  Store right operand result into return value slot
88 : LD   1, 1(5) ;  Load parameter 'a' into R1
89 : ADD  2, 1, 0 ;  Move left operand to register 2
90 : LD   1, 3(4) ;  Return right operand back into register 1
91 : SUB  1, 2, 1 ;  R1 = left - right
92 : ST 1, 1(4) ; Store argument 0 in callee
93 : LD   1, 2(5) ;  Load parameter 'b' into R1
94 : ST 1, 2(4) ; Store argument 1 in callee
95 : LDA 6, 99(0) ; Return address
96 : ST 6, 0(4) ; Store return in callee frame
97 : ADD 5, 4, 0 ; Push callee frame
98 : LDA 7, 72(0) ; Call remainder
99 : LD   1, 3(5) ;  Load function result
100 : LDC   2, 4(0) ;  Caller frame size
101 : SUB   5, 5, 2 ;  Pop back to caller
102 : SUB   4, 4, 2 ;  Pop back to caller
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
