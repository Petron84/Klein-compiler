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
15 : LD   1, 3(5) ;  Load parameter 'n' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 1(5) ;  Load parameter 'a' into R1
26 : ST 1, 4(5) ;  Store result into current frame's return slot
27 : LDA  7, 47(0) ;  Skip ELSE block
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : LDA 4, 5(5) ; Base of callee frame
30 : ST 1, 1(4) ; Store argument 0 in callee
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : LDA 4, 5(5) ; Base of callee frame
33 : ST 1, 2(4) ; Store argument 1 in callee
34 : LD   1, 3(5) ;  Load parameter 'n' into R1
35 : LDA 4, 5(5) ; Base of callee frame
36 : ST 1, 3(4) ; Store argument 2 in callee
37 : LDA 4, 5(5) ; Base of callee frame
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame
41 : LDA 7, 66(0) ; Call printAndDivide
42 : LD   1, 4(5) ;  Load function result
43 : LDC   2, 5(0) ;  Caller frame size
44 : SUB   5, 5, 2 ;  Pop back to caller
45 : SUB   4, 4, 2 ;  Pop back to caller
46 : ST 1, 4(5) ; Store result into caller’s frame
47 : LD   1, 4(5) ;  Load return value into register 1
48 : LD  6, 0(5) ;  Load return address for main function into register 6
49 : LDA  7, 0(6) ;  Jump to return address of main function
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LD   1, 1(5) ;  Load parameter 'm' into R1
53 : ADD  3, 1, 0 ;  Store left operand into temporary register
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  2, 3, 0 ;  Restore left operand
56 : DIV  1, 2, 1 ;  R1 = left / right
57 : ADD  3, 1, 0 ;  Store left operand into temporary register
58 : LD   1, 2(5) ;  Load parameter 'n' into R1
59 : ADD  2, 3, 0 ;  Restore left operand
60 : MUL  1, 2, 1 ;  R1 = left * right
61 : ADD  2, 3, 0 ;  Restore left operand
62 : SUB  1, 2, 1 ;  R1 = left - right
63 : ST   1, 3(5) ;  Store function result into stack frame
64 : LD   6, 0(5) ;  Load return address
65 : LDA  7, 0(6) ;  Return to caller
66 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 1(5) ;  Load parameter 'a' into R1
69 : ADD  2, 3, 0 ;  Restore left operand
70 : MUL  1, 2, 1 ;  R1 = left * right
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : DIV  1, 2, 1 ;  R1 = left / right
75 : LDA 4, 3(5) ; Base of callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return addr in callee frame
78 : ADD 5, 4, 0 ; Push new frame
79 : LDA 7, 12(0) ; Call print
80 : LDC 2, 3(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop frame
82 : ST   1, 4(5) ;  Store function result into stack frame
83 : LD   1, 1(5) ;  Load parameter 'a' into R1
84 : ADD  3, 1, 0 ;  Store left operand into temporary register
85 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
86 : ADD  2, 3, 0 ;  Restore left operand
87 : MUL  1, 2, 1 ;  R1 = left * right
88 : LDA 4, 4(5) ; Base of callee frame
89 : ST 1, 1(4) ; Store argument 0 in callee
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : LDA 4, 4(5) ; Base of callee frame
92 : ST 1, 2(4) ; Store argument 1 in callee
93 : LDA 4, 4(5) ; Base of callee frame
94 : LDA 6, 98(0) ; Return address
95 : ST 6, 0(4) ; Store return in callee frame
96 : ADD 5, 4, 0 ; Push callee frame
97 : LDA 7, 50(0) ; Call MOD
98 : LD   1, 3(5) ;  Load function result
99 : LDC   2, 4(0) ;  Caller frame size
100 : SUB   5, 5, 2 ;  Pop back to caller
101 : SUB   4, 4, 2 ;  Pop back to caller
102 : LDA 4, 5(5) ; Base of callee frame
103 : ST 1, 1(4) ; Store argument 0 in callee
104 : LD   1, 2(5) ;  Load parameter 'b' into R1
105 : LDA 4, 5(5) ; Base of callee frame
106 : ST 1, 2(4) ; Store argument 1 in callee
107 : LD   1, 3(5) ;  Load parameter 'n' into R1
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
110 : ADD  2, 3, 0 ;  Restore left operand
111 : SUB  1, 2, 1 ;  R1 = left - right
112 : LDA 4, 5(5) ; Base of callee frame
113 : ST 1, 3(4) ; Store argument 2 in callee
114 : LDA 4, 5(5) ; Base of callee frame
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(4) ; Store return in callee frame
117 : ADD 5, 4, 0 ; Push callee frame
118 : LDA 7, 15(0) ; Call main
119 : LD   1, 4(5) ;  Load function result
120 : LDC   2, 5(0) ;  Caller frame size
121 : SUB   5, 5, 2 ;  Pop back to caller
122 : SUB   4, 4, 2 ;  Pop back to caller
123 : ST   1, 4(5) ;  Store function result into stack frame
124 : LD   6, 0(5) ;  Load return address
125 : LDA  7, 0(6) ;  Return to caller
