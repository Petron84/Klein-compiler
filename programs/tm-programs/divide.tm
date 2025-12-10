0 : LDC  5, 4(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LD   2, 3(0) ;  Load CLI arg 3 into register
6 : ST   2, 3(5) ;  Store the argument into stack frame
7 : LDA  6, 2(7) ;  Calculate return address
8 : ST   6, 0(5) ;  Store return address in main stack frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LDC  1, 0(0) ;  Load integer-literal value into register 1
16 : ST   1, 3(4) ;  Store right operand result into return value slot
17 : LD   1, 3(5) ;  Load parameter 'n' into R1
18 : ADD  2, 1, 0 ;  Move left operand to register 2
19 : LD   1, 3(4) ;  Return right operand back into register 1
20 : SUB  1, 2, 1 ;  left - right for equality check
21 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
22 : LDC  1, 0(0) ;  false
23 : LDA  7, 1(7) ;  skip setting true
24 : LDC  1, 1(0) ;  true
25 : JEQ  1, 29(0) ;  If condition is false, jump to ELSE
26 : LD   1, 1(5) ;  Load parameter 'a' into R1
27 : ST 1, 4(5) ;  Store result into current frame's return slot
28 : LDA  7, 45(0) ;  Skip ELSE block
29 : LDA 4, 5(5) ; Base of callee frame
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LD   1, 2(5) ;  Load parameter 'b' into R1
33 : ST 1, 2(4) ; Store argument 1 in callee
34 : LD   1, 3(5) ;  Load parameter 'n' into R1
35 : ST 1, 3(4) ; Store argument 2 in callee
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return in callee frame
38 : ADD 5, 4, 0 ; Push callee frame
39 : LDA 7, 65(0) ; Call printAndDivide
40 : LD   1, 4(5) ;  Load function result
41 : LDC   2, 5(0) ;  Caller frame size
42 : SUB   5, 5, 2 ;  Pop back to caller
43 : SUB   4, 4, 2 ;  Pop back to caller
44 : ST 1, 4(5) ; Store result into caller’s frame
45 : LD   1, 4(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ST   1, 3(4) ;  Store right operand result into return value slot
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  2, 1, 0 ;  Move left operand to register 2
52 : LD   1, 3(4) ;  Return right operand back into register 1
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : ADD  2, 1, 0 ;  Move left operand to register 2
55 : LD   1, 2(5) ;  Load parameter 'n' into R1
56 : MUL  1, 2, 1 ;  R1 = left * right
57 : ADD  3, 1, 0 ;  Move right operand to register 3
58 : LD   1, 1(5) ;  Load parameter 'm' into R1
59 : ADD  2, 1, 0 ;  Move left operand to register 2
60 : ADD  1, 3, 0 ;  Move right operand to register 1
61 : SUB  1, 2, 1 ;  R1 = left - right
62 : ST   1, 3(5) ;  Store function result into stack frame
63 : LD   6, 0(5) ;  Load return address
64 : LDA  7, 0(6) ;  Return to caller
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : ST   1, 3(4) ;  Store right operand result into return value slot
67 : LDC  1, 10(0) ;  Load integer-literal value into register 1
68 : ADD  2, 1, 0 ;  Move left operand to register 2
69 : LD   1, 3(4) ;  Return right operand back into register 1
70 : MUL  1, 2, 1 ;  R1 = left * right
71 : ADD  2, 1, 0 ;  Move left operand to register 2
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : DIV  1, 2, 1 ;  R1 = left / right
74 : LDA 4, 3(5) ; Base of callee frame
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return addr in callee frame
77 : ADD 5, 4, 0 ; Push new frame
78 : LDA 7, 12(0) ; Call print
79 : LDC 2, 3(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop frame
81 : ST   1, 4(5) ;  Store function result into stack frame
82 : LDA 4, 5(5) ; Base of callee frame
83 : LDA 4, 4(5) ; Base of callee frame
84 : LDC  1, 10(0) ;  Load integer-literal value into register 1
85 : ST   1, 3(4) ;  Store right operand result into return value slot
86 : LD   1, 1(5) ;  Load parameter 'a' into R1
87 : ADD  2, 1, 0 ;  Move left operand to register 2
88 : LD   1, 3(4) ;  Return right operand back into register 1
89 : MUL  1, 2, 1 ;  R1 = left * right
90 : ST 1, 1(4) ; Store argument 0 in callee
91 : LD   1, 2(5) ;  Load parameter 'b' into R1
92 : ST 1, 2(4) ; Store argument 1 in callee
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame
96 : LDA 7, 48(0) ; Call MOD
97 : LD   1, 3(5) ;  Load function result
98 : LDC   2, 4(0) ;  Caller frame size
99 : SUB   5, 5, 2 ;  Pop back to caller
100 : SUB   4, 4, 2 ;  Pop back to caller
101 : ST 1, 1(4) ; Store argument 0 in callee
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : ST 1, 2(4) ; Store argument 1 in callee
104 : LDC  1, 1(0) ;  Load integer-literal value into register 1
105 : ST   1, 3(4) ;  Store right operand result into return value slot
106 : LD   1, 3(5) ;  Load parameter 'n' into R1
107 : ADD  2, 1, 0 ;  Move left operand to register 2
108 : LD   1, 3(4) ;  Return right operand back into register 1
109 : SUB  1, 2, 1 ;  R1 = left - right
110 : ST 1, 3(4) ; Store argument 2 in callee
111 : LDA 6, 115(0) ; Return address
112 : ST 6, 0(4) ; Store return in callee frame
113 : ADD 5, 4, 0 ; Push callee frame
114 : LDA 7, 15(0) ; Call main
115 : LD   1, 4(5) ;  Load function result
116 : LDC   2, 5(0) ;  Caller frame size
117 : SUB   5, 5, 2 ;  Pop back to caller
118 : SUB   4, 4, 2 ;  Pop back to caller
119 : ST   1, 4(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
