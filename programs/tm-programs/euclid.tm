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
30 : LDC  1, 0(0) ;  Load integer-literal value into register 1
31 : ST   1, 3(4) ;  Store right operand result into return value slot
32 : LD   1, 2(5) ;  Load parameter 'b' into R1
33 : ADD  2, 1, 0 ;  Move left operand to register 2
34 : LD   1, 3(4) ;  Return right operand back into register 1
35 : SUB  1, 2, 1 ;  left - right for equality check
36 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
37 : LDC  1, 0(0) ;  false
38 : LDA  7, 1(7) ;  skip setting true
39 : LDC  1, 1(0) ;  true
40 : JEQ  1, 43(0) ;  If condition is false, jump to ELSE
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : LDA  7, 68(0) ;  Skip ELSE block
43 : LDA 4, 4(5) ; Base of callee frame
44 : LD   1, 2(5) ;  Load parameter 'b' into R1
45 : ST 1, 1(4) ; Store argument 0 in callee
46 : LDA 4, 4(5) ; Base of callee frame
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LD   1, 2(5) ;  Load parameter 'b' into R1
50 : ST 1, 2(4) ; Store argument 1 in callee
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame
54 : LDA 7, 71(0) ; Call remainder
55 : LD   1, 3(5) ;  Load function result
56 : LDC   2, 4(0) ;  Caller frame size
57 : SUB   5, 5, 2 ;  Pop back to caller
58 : SUB   4, 4, 2 ;  Pop back to caller
59 : ST 1, 2(4) ; Store argument 1 in callee
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame
63 : LDA 7, 30(0) ; Call gcd
64 : LD   1, 3(5) ;  Load function result
65 : LDC   2, 4(0) ;  Caller frame size
66 : SUB   5, 5, 2 ;  Pop back to caller
67 : SUB   4, 4, 2 ;  Pop back to caller
68 : ST   1, 3(5) ;  Store function result into stack frame
69 : LD   6, 0(5) ;  Load return address
70 : LDA  7, 0(6) ;  Return to caller
71 : LD   1, 2(5) ;  Load parameter 'b' into R1
72 : ST   1, 3(4) ;  Store right operand result into return value slot
73 : LD   1, 1(5) ;  Load parameter 'a' into R1
74 : ADD  2, 1, 0 ;  Move left operand to register 2
75 : LD   1, 3(4) ;  Return right operand back into register 1
76 : SUB  1, 2, 1 ;  left - right for less-than check
77 : JLT  1, 2(7) ;  If R1 < 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : JEQ  1, 84(0) ;  If condition is false, jump to ELSE
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : LDA  7, 102(0) ;  Skip ELSE block
84 : LDA 4, 4(5) ; Base of callee frame
85 : LD   1, 2(5) ;  Load parameter 'b' into R1
86 : ST   1, 3(4) ;  Store right operand result into return value slot
87 : LD   1, 1(5) ;  Load parameter 'a' into R1
88 : ADD  2, 1, 0 ;  Move left operand to register 2
89 : LD   1, 3(4) ;  Return right operand back into register 1
90 : SUB  1, 2, 1 ;  R1 = left - right
91 : ST 1, 1(4) ; Store argument 0 in callee
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : ST 1, 2(4) ; Store argument 1 in callee
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame
97 : LDA 7, 71(0) ; Call remainder
98 : LD   1, 3(5) ;  Load function result
99 : LDC   2, 4(0) ;  Caller frame size
100 : SUB   5, 5, 2 ;  Pop back to caller
101 : SUB   4, 4, 2 ;  Pop back to caller
102 : ST   1, 3(5) ;  Store function result into stack frame
103 : LD   6, 0(5) ;  Load return address
104 : LDA  7, 0(6) ;  Return to caller
