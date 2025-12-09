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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 26(0) ;  If condition is false, jump to ELSE
23 : LD   1, 2(5) ;  Load parameter 'n' into R1
24 : ST 1, 3(5) ;  Store result into current frame's return slot
25 : LDA  7, 79(0) ;  Skip ELSE block
26 : LDA 4, 4(5) ; Base of callee frame
27 : LD   1, 2(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : ST 1, 2(4) ; Store argument 1 in callee
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 82(0) ; Call MOD
35 : LD   1, 3(5) ;  Load function result
36 : LDC   2, 4(0) ;  Caller frame size
37 : SUB   5, 5, 2 ;  Pop back to caller
38 : SUB   4, 4, 2 ;  Pop back to caller
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : SUB  1, 2, 1 ;  left - right for equality check
43 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
44 : LDC  1, 0(0) ;  false
45 : LDA  7, 1(7) ;  skip setting true
46 : LDC  1, 1(0) ;  true
47 : JEQ  1, 55(0) ;  If condition is false, jump to ELSE
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : ST 1, 3(5) ;  Store result into current frame's return slot
54 : LDA  7, 79(0) ;  Skip ELSE block
55 : LDA 4, 5(5) ; Base of callee frame
56 : LD   1, 1(5) ;  Load parameter 'm' into R1
57 : ST 1, 1(4) ; Store argument 0 in callee
58 : LD   1, 2(5) ;  Load parameter 'n' into R1
59 : ST 1, 2(4) ; Store argument 1 in callee
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ADD  3, 1, 0 ;  Store left operand into temporary register
62 : LD   1, 1(5) ;  Load parameter 'm' into R1
63 : ADD  2, 3, 0 ;  Restore left operand
64 : DIV  1, 2, 1 ;  R1 = left / right
65 : ADD  3, 1, 0 ;  Store left operand into temporary register
66 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
67 : ADD  2, 3, 0 ;  Restore left operand
68 : ADD  1, 2, 1 ;  R1 = left + right
69 : ST 1, 3(4) ; Store argument 2 in callee
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame
73 : LDA 7, 98(0) ; Call print_and_continue
74 : LD   1, 4(5) ;  Load function result
75 : LDC   2, 5(0) ;  Caller frame size
76 : SUB   5, 5, 2 ;  Pop back to caller
77 : SUB   4, 4, 2 ;  Pop back to caller
78 : ST 1, 3(5) ; Store result into caller’s frame
79 : LD   1, 3(5) ;  Load return value into register 1
80 : LD  6, 0(5) ;  Load return address for main function into register 6
81 : LDA  7, 0(6) ;  Jump to return address of main function
82 : LD   1, 1(5) ;  Load parameter 'm' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LD   1, 1(5) ;  Load parameter 'm' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : DIV  1, 2, 1 ;  R1 = left / right
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : ADD  2, 3, 0 ;  Restore left operand
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : ADD  2, 3, 0 ;  Restore left operand
94 : SUB  1, 2, 1 ;  R1 = left - right
95 : ST   1, 3(5) ;  Store function result into stack frame
96 : LD   6, 0(5) ;  Load return address
97 : LDA  7, 0(6) ;  Return to caller
98 : LD   1, 3(5) ;  Load parameter 'unit' into R1
99 : LDA 4, 3(5) ; Base of callee frame
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return addr in callee frame
102 : ADD 5, 4, 0 ; Push new frame
103 : LDA 7, 10(0) ; Call print
104 : LDC 2, 3(0) ; Caller frame size
105 : SUB 5, 5, 2 ; Pop frame
106 : ST   1, 4(5) ;  Store function result into stack frame
107 : LDA 4, 4(5) ; Base of callee frame
108 : LD   1, 3(5) ;  Load parameter 'unit' into R1
109 : ADD  3, 1, 0 ;  Store left operand into temporary register
110 : LD   1, 1(5) ;  Load parameter 'm' into R1
111 : ADD  2, 3, 0 ;  Restore left operand
112 : MUL  1, 2, 1 ;  R1 = left * right
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 2(5) ;  Load parameter 'n' into R1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : SUB  1, 2, 1 ;  R1 = left - right
117 : ST 1, 1(4) ; Store argument 0 in callee
118 : LD   1, 2(5) ;  Load parameter 'n' into R1
119 : ADD  3, 1, 0 ;  Store left operand into temporary register
120 : LD   1, 3(5) ;  Load parameter 'unit' into R1
121 : ADD  2, 3, 0 ;  Restore left operand
122 : MUL  1, 2, 1 ;  R1 = left * right
123 : ST 1, 2(4) ; Store argument 1 in callee
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame
127 : LDA 7, 13(0) ; Call main
128 : LD   1, 3(5) ;  Load function result
129 : LDC   2, 4(0) ;  Caller frame size
130 : SUB   5, 5, 2 ;  Pop back to caller
131 : SUB   4, 4, 2 ;  Pop back to caller
132 : ST   1, 4(5) ;  Store function result into stack frame
133 : LD   6, 0(5) ;  Load return address
134 : LDA  7, 0(6) ;  Return to caller
