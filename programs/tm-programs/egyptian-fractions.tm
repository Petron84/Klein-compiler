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
13 : LDC  1, 1(0) ;  Load integer-literal value into register 1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 1(5) ;  Load parameter 'm' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 27(0) ;  If condition is false, jump to ELSE
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : ST 1, 3(5) ;  Store result into current frame's return slot
26 : LDA  7, 80(0) ;  Skip ELSE block
27 : LDA 4, 4(5) ; Base of callee frame
28 : LD   1, 2(5) ;  Load parameter 'n' into R1
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LD   1, 1(5) ;  Load parameter 'm' into R1
31 : ST 1, 2(4) ; Store argument 1 in callee
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 83(0) ; Call MOD
36 : LD   1, 3(5) ;  Load function result
37 : LDC   2, 4(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ADD  2, 1, 0 ;  Move left operand to register 2
41 : LDC  1, 0(0) ;  Load integer-literal value into register 1
42 : SUB  1, 2, 1 ;  left - right for equality check
43 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
44 : LDC  1, 0(0) ;  false
45 : LDA  7, 1(7) ;  skip setting true
46 : LDC  1, 1(0) ;  true
47 : JEQ  1, 56(0) ;  If condition is false, jump to ELSE
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ST   1, 3(4) ;  Store right operand result into return value slot
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  2, 1, 0 ;  Move left operand to register 2
52 : LD   1, 3(4) ;  Return right operand back into register 1
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : ST 1, 3(5) ;  Store result into current frame's return slot
55 : LDA  7, 80(0) ;  Skip ELSE block
56 : LDA 4, 5(5) ; Base of callee frame
57 : LD   1, 1(5) ;  Load parameter 'm' into R1
58 : ST 1, 1(4) ; Store argument 0 in callee
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ST 1, 2(4) ; Store argument 1 in callee
61 : LD   1, 1(5) ;  Load parameter 'm' into R1
62 : ST   1, 3(4) ;  Store right operand result into return value slot
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : ADD  2, 1, 0 ;  Move left operand to register 2
65 : LD   1, 3(4) ;  Return right operand back into register 1
66 : DIV  1, 2, 1 ;  R1 = left / right
67 : ADD  2, 1, 0 ;  Move left operand to register 2
68 : LDC  1, 1(0) ;  Load integer-literal value into register 1
69 : ADD  1, 2, 1 ;  R1 = left + right
70 : ST 1, 3(4) ; Store argument 2 in callee
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame
74 : LDA 7, 100(0) ; Call print_and_continue
75 : LD   1, 4(5) ;  Load function result
76 : LDC   2, 5(0) ;  Caller frame size
77 : SUB   5, 5, 2 ;  Pop back to caller
78 : SUB   4, 4, 2 ;  Pop back to caller
79 : ST 1, 3(5) ; Store result into caller’s frame
80 : LD   1, 3(5) ;  Load return value into register 1
81 : LD  6, 0(5) ;  Load return address for main function into register 6
82 : LDA  7, 0(6) ;  Jump to return address of main function
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ST   1, 3(4) ;  Store right operand result into return value slot
85 : LD   1, 1(5) ;  Load parameter 'm' into R1
86 : ADD  2, 1, 0 ;  Move left operand to register 2
87 : LD   1, 3(4) ;  Return right operand back into register 1
88 : DIV  1, 2, 1 ;  R1 = left / right
89 : ADD  2, 1, 0 ;  Move left operand to register 2
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : MUL  1, 2, 1 ;  R1 = left * right
92 : ADD  3, 1, 0 ;  Move right operand to register 3
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : ADD  2, 1, 0 ;  Move left operand to register 2
95 : ADD  1, 3, 0 ;  Move right operand to register 1
96 : SUB  1, 2, 1 ;  R1 = left - right
97 : ST   1, 3(5) ;  Store function result into stack frame
98 : LD   6, 0(5) ;  Load return address
99 : LDA  7, 0(6) ;  Return to caller
100 : LD   1, 3(5) ;  Load parameter 'unit' into R1
101 : LDA 4, 3(5) ; Base of callee frame
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return addr in callee frame
104 : ADD 5, 4, 0 ; Push new frame
105 : LDA 7, 10(0) ; Call print
106 : LDC 2, 3(0) ; Caller frame size
107 : SUB 5, 5, 2 ; Pop frame
108 : ST   1, 4(5) ;  Store function result into stack frame
109 : LDA 4, 4(5) ; Base of callee frame
110 : LD   1, 1(5) ;  Load parameter 'm' into R1
111 : ST   1, 3(4) ;  Store right operand result into return value slot
112 : LD   1, 3(5) ;  Load parameter 'unit' into R1
113 : ADD  2, 1, 0 ;  Move left operand to register 2
114 : LD   1, 3(4) ;  Return right operand back into register 1
115 : MUL  1, 2, 1 ;  R1 = left * right
116 : ADD  2, 1, 0 ;  Move left operand to register 2
117 : LD   1, 2(5) ;  Load parameter 'n' into R1
118 : SUB  1, 2, 1 ;  R1 = left - right
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD   1, 3(5) ;  Load parameter 'unit' into R1
121 : ST   1, 3(4) ;  Store right operand result into return value slot
122 : LD   1, 2(5) ;  Load parameter 'n' into R1
123 : ADD  2, 1, 0 ;  Move left operand to register 2
124 : LD   1, 3(4) ;  Return right operand back into register 1
125 : MUL  1, 2, 1 ;  R1 = left * right
126 : ST 1, 2(4) ; Store argument 1 in callee
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame
130 : LDA 7, 13(0) ; Call main
131 : LD   1, 3(5) ;  Load function result
132 : LDC   2, 4(0) ;  Caller frame size
133 : SUB   5, 5, 2 ;  Pop back to caller
134 : SUB   4, 4, 2 ;  Pop back to caller
135 : ST   1, 4(5) ;  Store function result into stack frame
136 : LD   6, 0(5) ;  Load return address
137 : LDA  7, 0(6) ;  Return to caller
