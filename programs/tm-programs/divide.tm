0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LD   2, 3(0) ;  Load CLI arg 3 into register
7 : ST   2, 3(5) ;  Store the argument into stack frame
8 : LDA  6, 2(7) ;  Calculate return address
9 : ST   6, 0(5) ;  Store return address in main stack frame
10 : LDA  7, 16(0) ;  Load address of main IMEM block - branch to function
11 : OUT  1, 0, 0 ;  Return result
12 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
13 : OUT  1, 0, 0 ;  Hardcoded print function
14 : LD   6, 0(5) ;  Load return addess from stack frame.
15 : LDA  7, 0(6) ;  Jump to return address.
16 : LDC  1, 0(0) ;  Load integer-literal value into register 1
17 : ST   1, 3(4) ;  Store right operand result into return value slot
18 : LD   1, 3(5) ;  Load parameter 'n' into R1
19 : ADD  2, 1, 0 ;  Move left operand to register 2
20 : LD   1, 3(4) ;  Return right operand back into register 1
21 : SUB  1, 2, 1 ;  left - right for equality check
22 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
23 : LDC  1, 0(0) ;  false
24 : LDA  7, 1(7) ;  skip setting true
25 : LDC  1, 1(0) ;  true
26 : JEQ  1, 30(0) ;  If condition is false, jump to ELSE
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : ST 1, 4(5) ;  Store result into current frame's return slot
29 : LDA  7, 46(0) ;  Skip ELSE block
30 : LDA 4, 5(5) ; Base of callee frame
31 : LD   1, 1(5) ;  Load parameter 'a' into R1
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LD   1, 2(5) ;  Load parameter 'b' into R1
34 : ST 1, 2(4) ; Store argument 1 in callee
35 : LD   1, 3(5) ;  Load parameter 'n' into R1
36 : ST 1, 3(4) ; Store argument 2 in callee
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return in callee frame
39 : ADD 5, 4, 0 ; Push callee frame
40 : LDA 7, 66(0) ; Call printAndDivide
41 : LD   1, 4(5) ;  Load function result
42 : LDC   2, 5(0) ;  Caller frame size
43 : SUB   5, 5, 2 ;  Pop back to caller
44 : SUB   4, 4, 2 ;  Pop back to caller
45 : ST 1, 4(5) ; Store result into caller’s frame
46 : LD   1, 4(5) ;  Load return value into register 1
47 : LD  6, 0(5) ;  Load return address for main function into register 6
48 : LDA  7, 0(6) ;  Jump to return address of main function
49 : LD   1, 2(5) ;  Load parameter 'n' into R1
50 : ST   1, 3(4) ;  Store right operand result into return value slot
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : ADD  2, 1, 0 ;  Move left operand to register 2
53 : LD   1, 3(4) ;  Return right operand back into register 1
54 : DIV  1, 2, 1 ;  R1 = left / right
55 : ADD  2, 1, 0 ;  Move left operand to register 2
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : MUL  1, 2, 1 ;  R1 = left * right
58 : ADD  3, 1, 0 ;  Move right operand to register 3
59 : LD   1, 1(5) ;  Load parameter 'm' into R1
60 : ADD  2, 1, 0 ;  Move left operand to register 2
61 : ADD  1, 3, 0 ;  Move right operand to register 1
62 : SUB  1, 2, 1 ;  R1 = left - right
63 : ST   1, 3(5) ;  Store function result into stack frame
64 : LD   6, 0(5) ;  Load return address
65 : LDA  7, 0(6) ;  Return to caller
66 : LD   1, 1(5) ;  Load parameter 'a' into R1
67 : ST   1, 3(4) ;  Store right operand result into return value slot
68 : LDC  1, 10(0) ;  Load integer-literal value into register 1
69 : ADD  2, 1, 0 ;  Move left operand to register 2
70 : LD   1, 3(4) ;  Return right operand back into register 1
71 : MUL  1, 2, 1 ;  R1 = left * right
72 : ADD  2, 1, 0 ;  Move left operand to register 2
73 : LD   1, 2(5) ;  Load parameter 'b' into R1
74 : DIV  1, 2, 1 ;  R1 = left / right
75 : LDA 4, 3(5) ; Base of callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return addr in callee frame
78 : ADD 5, 4, 0 ; Push new frame
79 : LDA 7, 13(0) ; Call print
80 : LDC 2, 3(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop frame
82 : ST   1, 4(5) ;  Store function result into stack frame
83 : LDA 4, 5(5) ; Base of callee frame
84 : LDA 4, 4(5) ; Base of callee frame
85 : LDC  1, 10(0) ;  Load integer-literal value into register 1
86 : ST   1, 3(4) ;  Store right operand result into return value slot
87 : LD   1, 1(5) ;  Load parameter 'a' into R1
88 : ADD  2, 1, 0 ;  Move left operand to register 2
89 : LD   1, 3(4) ;  Return right operand back into register 1
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : ST 1, 1(4) ; Store argument 0 in callee
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : ST 1, 2(4) ; Store argument 1 in callee
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame
97 : LDA 7, 49(0) ; Call MOD
98 : LD   1, 3(5) ;  Load function result
99 : LDC   2, 4(0) ;  Caller frame size
100 : SUB   5, 5, 2 ;  Pop back to caller
101 : SUB   4, 4, 2 ;  Pop back to caller
102 : ST 1, 1(4) ; Store argument 0 in callee
103 : LD   1, 2(5) ;  Load parameter 'b' into R1
104 : ST 1, 2(4) ; Store argument 1 in callee
105 : LDC  1, 1(0) ;  Load integer-literal value into register 1
106 : ST   1, 3(4) ;  Store right operand result into return value slot
107 : LD   1, 3(5) ;  Load parameter 'n' into R1
108 : ADD  2, 1, 0 ;  Move left operand to register 2
109 : LD   1, 3(4) ;  Return right operand back into register 1
110 : SUB  1, 2, 1 ;  R1 = left - right
111 : ST 1, 3(4) ; Store argument 2 in callee
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 16(0) ; Call main
116 : LD   1, 4(5) ;  Load function result
117 : LDC   2, 5(0) ;  Caller frame size
118 : SUB   5, 5, 2 ;  Pop back to caller
119 : SUB   4, 4, 2 ;  Pop back to caller
120 : ST   1, 4(5) ;  Store function result into stack frame
121 : LD   6, 0(5) ;  Load return address
122 : LDA  7, 0(6) ;  Return to caller
