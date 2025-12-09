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
25 : LDA  7, 84(0) ;  Skip ELSE block
26 : LD   1, 2(5) ;  Load parameter 'n' into R1
27 : LDA 4, 4(5) ; Base of callee frame
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : LDA 4, 4(5) ; Base of callee frame
31 : ST 1, 2(4) ; Store argument 1 in callee
32 : LDA 4, 4(5) ; Base of callee frame
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 87(0) ; Call MOD
37 : LD   1, 3(5) ;  Load function result
38 : LDC   2, 4(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ADD  3, 1, 0 ;  Store left operand into temporary register
42 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
43 : ADD  2, 3, 0 ;  Restore left operand
44 : SUB  1, 2, 1 ;  left - right for equality check
45 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
46 : LDC  1, 0(0) ;  false
47 : LDA  7, 1(7) ;  skip setting true
48 : LDC  1, 1(0) ;  true
49 : JEQ  1, 57(0) ;  If condition is false, jump to ELSE
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LD   1, 1(5) ;  Load parameter 'm' into R1
53 : ADD  2, 3, 0 ;  Restore left operand
54 : DIV  1, 2, 1 ;  R1 = left / right
55 : ST 1, 3(5) ;  Store result into current frame's return slot
56 : LDA  7, 84(0) ;  Skip ELSE block
57 : LD   1, 1(5) ;  Load parameter 'm' into R1
58 : LDA 4, 5(5) ; Base of callee frame
59 : ST 1, 1(4) ; Store argument 0 in callee
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : LDA 4, 5(5) ; Base of callee frame
62 : ST 1, 2(4) ; Store argument 1 in callee
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : ADD  3, 1, 0 ;  Store left operand into temporary register
65 : LD   1, 1(5) ;  Load parameter 'm' into R1
66 : ADD  2, 3, 0 ;  Restore left operand
67 : DIV  1, 2, 1 ;  R1 = left / right
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
70 : ADD  2, 3, 0 ;  Restore left operand
71 : ADD  1, 2, 1 ;  R1 = left + right
72 : LDA 4, 5(5) ; Base of callee frame
73 : ST 1, 3(4) ; Store argument 2 in callee
74 : LDA 4, 5(5) ; Base of callee frame
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame
78 : LDA 7, 103(0) ; Call print_and_continue
79 : LD   1, 4(5) ;  Load function result
80 : LDC   2, 5(0) ;  Caller frame size
81 : SUB   5, 5, 2 ;  Pop back to caller
82 : SUB   4, 4, 2 ;  Pop back to caller
83 : ST 1, 3(5) ; Store result into caller’s frame
84 : LD   1, 3(5) ;  Load return value into register 1
85 : LD  6, 0(5) ;  Load return address for main function into register 6
86 : LDA  7, 0(6) ;  Jump to return address of main function
87 : LD   1, 1(5) ;  Load parameter 'm' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 1(5) ;  Load parameter 'm' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LD   1, 2(5) ;  Load parameter 'n' into R1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : DIV  1, 2, 1 ;  R1 = left / right
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 2(5) ;  Load parameter 'n' into R1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ADD  2, 3, 0 ;  Restore left operand
99 : SUB  1, 2, 1 ;  R1 = left - right
100 : ST   1, 3(5) ;  Store function result into stack frame
101 : LD   6, 0(5) ;  Load return address
102 : LDA  7, 0(6) ;  Return to caller
103 : LD   1, 3(5) ;  Load parameter 'unit' into R1
104 : LDA 4, 3(5) ; Base of callee frame
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return addr in callee frame
107 : ADD 5, 4, 0 ; Push new frame
108 : LDA 7, 10(0) ; Call print
109 : LDC 2, 3(0) ; Caller frame size
110 : SUB 5, 5, 2 ; Pop frame
111 : ST   1, 4(5) ;  Store function result into stack frame
112 : LD   1, 3(5) ;  Load parameter 'unit' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LD   1, 1(5) ;  Load parameter 'm' into R1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : MUL  1, 2, 1 ;  R1 = left * right
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LD   1, 2(5) ;  Load parameter 'n' into R1
119 : ADD  2, 3, 0 ;  Restore left operand
120 : SUB  1, 2, 1 ;  R1 = left - right
121 : LDA 4, 4(5) ; Base of callee frame
122 : ST 1, 1(4) ; Store argument 0 in callee
123 : LD   1, 2(5) ;  Load parameter 'n' into R1
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LD   1, 3(5) ;  Load parameter 'unit' into R1
126 : ADD  2, 3, 0 ;  Restore left operand
127 : MUL  1, 2, 1 ;  R1 = left * right
128 : LDA 4, 4(5) ; Base of callee frame
129 : ST 1, 2(4) ; Store argument 1 in callee
130 : LDA 4, 4(5) ; Base of callee frame
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame
134 : LDA 7, 13(0) ; Call main
135 : LD   1, 3(5) ;  Load function result
136 : LDC   2, 4(0) ;  Caller frame size
137 : SUB   5, 5, 2 ;  Pop back to caller
138 : SUB   4, 4, 2 ;  Pop back to caller
139 : ST   1, 4(5) ;  Store function result into stack frame
140 : LD   6, 0(5) ;  Load return address
141 : LDA  7, 0(6) ;  Return to caller
