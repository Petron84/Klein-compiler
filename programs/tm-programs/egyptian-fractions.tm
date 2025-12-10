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
14 : LDC  1, 1(0) ;  Load integer-literal value into register 1
15 : ST   1, 3(4) ;  Store right operand result into return value slot
16 : LD   1, 1(5) ;  Load parameter 'm' into R1
17 : ADD  2, 1, 0 ;  Move left operand to register 2
18 : LD   1, 3(4) ;  Return right operand back into register 1
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 3(5) ;  Store result into current frame's return slot
27 : LDA  7, 81(0) ;  Skip ELSE block
28 : LDA 4, 4(5) ; Base of callee frame
29 : LD   1, 2(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(4) ; Store argument 0 in callee
31 : LD   1, 1(5) ;  Load parameter 'm' into R1
32 : ST 1, 2(4) ; Store argument 1 in callee
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 84(0) ; Call MOD
37 : LD   1, 3(5) ;  Load function result
38 : LDC   2, 4(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ADD  2, 1, 0 ;  Move left operand to register 2
42 : LDC  1, 0(0) ;  Load integer-literal value into register 1
43 : SUB  1, 2, 1 ;  left - right for equality check
44 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
45 : LDC  1, 0(0) ;  false
46 : LDA  7, 1(7) ;  skip setting true
47 : LDC  1, 1(0) ;  true
48 : JEQ  1, 57(0) ;  If condition is false, jump to ELSE
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : ST   1, 3(4) ;  Store right operand result into return value slot
51 : LD   1, 2(5) ;  Load parameter 'n' into R1
52 : ADD  2, 1, 0 ;  Move left operand to register 2
53 : LD   1, 3(4) ;  Return right operand back into register 1
54 : DIV  1, 2, 1 ;  R1 = left / right
55 : ST 1, 3(5) ;  Store result into current frame's return slot
56 : LDA  7, 81(0) ;  Skip ELSE block
57 : LDA 4, 5(5) ; Base of callee frame
58 : LD   1, 1(5) ;  Load parameter 'm' into R1
59 : ST 1, 1(4) ; Store argument 0 in callee
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ST 1, 2(4) ; Store argument 1 in callee
62 : LD   1, 1(5) ;  Load parameter 'm' into R1
63 : ST   1, 3(4) ;  Store right operand result into return value slot
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ADD  2, 1, 0 ;  Move left operand to register 2
66 : LD   1, 3(4) ;  Return right operand back into register 1
67 : DIV  1, 2, 1 ;  R1 = left / right
68 : ADD  2, 1, 0 ;  Move left operand to register 2
69 : LDC  1, 1(0) ;  Load integer-literal value into register 1
70 : ADD  1, 2, 1 ;  R1 = left + right
71 : ST 1, 3(4) ; Store argument 2 in callee
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame
75 : LDA 7, 101(0) ; Call print_and_continue
76 : LD   1, 4(5) ;  Load function result
77 : LDC   2, 5(0) ;  Caller frame size
78 : SUB   5, 5, 2 ;  Pop back to caller
79 : SUB   4, 4, 2 ;  Pop back to caller
80 : ST 1, 3(5) ; Store result into caller’s frame
81 : LD   1, 3(5) ;  Load return value into register 1
82 : LD  6, 0(5) ;  Load return address for main function into register 6
83 : LDA  7, 0(6) ;  Jump to return address of main function
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ST   1, 3(4) ;  Store right operand result into return value slot
86 : LD   1, 1(5) ;  Load parameter 'm' into R1
87 : ADD  2, 1, 0 ;  Move left operand to register 2
88 : LD   1, 3(4) ;  Return right operand back into register 1
89 : DIV  1, 2, 1 ;  R1 = left / right
90 : ADD  2, 1, 0 ;  Move left operand to register 2
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : ADD  3, 1, 0 ;  Move right operand to register 3
94 : LD   1, 1(5) ;  Load parameter 'm' into R1
95 : ADD  2, 1, 0 ;  Move left operand to register 2
96 : ADD  1, 3, 0 ;  Move right operand to register 1
97 : SUB  1, 2, 1 ;  R1 = left - right
98 : ST   1, 3(5) ;  Store function result into stack frame
99 : LD   6, 0(5) ;  Load return address
100 : LDA  7, 0(6) ;  Return to caller
101 : LD   1, 3(5) ;  Load parameter 'unit' into R1
102 : LDA 4, 3(5) ; Base of callee frame
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return addr in callee frame
105 : ADD 5, 4, 0 ; Push new frame
106 : LDA 7, 10(0) ; Call print
107 : LDC 2, 3(0) ; Caller frame size
108 : SUB 5, 5, 2 ; Pop frame
109 : ST   1, 4(5) ;  Store function result into stack frame
110 : LDA 4, 4(5) ; Base of callee frame
111 : LD   1, 1(5) ;  Load parameter 'm' into R1
112 : ST   1, 3(4) ;  Store right operand result into return value slot
113 : LD   1, 3(5) ;  Load parameter 'unit' into R1
114 : ADD  2, 1, 0 ;  Move left operand to register 2
115 : LD   1, 3(4) ;  Return right operand back into register 1
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  2, 1, 0 ;  Move left operand to register 2
118 : LD   1, 2(5) ;  Load parameter 'n' into R1
119 : SUB  1, 2, 1 ;  R1 = left - right
120 : ST 1, 1(4) ; Store argument 0 in callee
121 : LD   1, 3(5) ;  Load parameter 'unit' into R1
122 : ST   1, 3(4) ;  Store right operand result into return value slot
123 : LD   1, 2(5) ;  Load parameter 'n' into R1
124 : ADD  2, 1, 0 ;  Move left operand to register 2
125 : LD   1, 3(4) ;  Return right operand back into register 1
126 : MUL  1, 2, 1 ;  R1 = left * right
127 : ST 1, 2(4) ; Store argument 1 in callee
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 13(0) ; Call main
132 : LD   1, 3(5) ;  Load function result
133 : LDC   2, 4(0) ;  Caller frame size
134 : SUB   5, 5, 2 ;  Pop back to caller
135 : SUB   4, 4, 2 ;  Pop back to caller
136 : ST   1, 4(5) ;  Store function result into stack frame
137 : LD   6, 0(5) ;  Load return address
138 : LDA  7, 0(6) ;  Return to caller
