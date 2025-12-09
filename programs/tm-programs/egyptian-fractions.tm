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
25 : LDA  7, 77(0) ;  Skip ELSE block
26 : LDA 4, 4(5) ; Base of callee frame
27 : LD   1, 2(5) ;  Load parameter 'n' into R1
28 : ST 1, 1(4) ; Argument 0
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : ST 1, 2(4) ; Argument 1
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 80(0) ; Call MOD
35 : LD 1, 3(5) ; Load function result
36 : LDC 2, 4(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ADD  3, 1, 0 ;  Store left operand into temporary register
39 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
40 : ADD  2, 3, 0 ;  Restore left operand
41 : SUB  1, 2, 1 ;  left - right for equality check
42 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
43 : LDC  1, 0(0) ;  false
44 : LDA  7, 1(7) ;  skip setting true
45 : LDC  1, 1(0) ;  true
46 : JEQ  1, 54(0) ;  If condition is false, jump to ELSE
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ADD  3, 1, 0 ;  Store left operand into temporary register
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : ADD  2, 3, 0 ;  Restore left operand
51 : DIV  1, 2, 1 ;  R1 = left / right
52 : ST 1, 3(5) ;  Store result into current frame's return slot
53 : LDA  7, 77(0) ;  Skip ELSE block
54 : LDA 4, 4(5) ; Base of callee frame
55 : LD   1, 1(5) ;  Load parameter 'm' into R1
56 : ST 1, 1(4) ; Argument 0
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ST 1, 2(4) ; Argument 1
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  3, 1, 0 ;  Store left operand into temporary register
61 : LD   1, 1(5) ;  Load parameter 'm' into R1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : DIV  1, 2, 1 ;  R1 = left / right
64 : ADD  3, 1, 0 ;  Store left operand into temporary register
65 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
66 : ADD  2, 3, 0 ;  Restore left operand
67 : ADD  1, 2, 1 ;  R1 = left + right
68 : ST 1, 3(4) ; Argument 2
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame
72 : LDA 7, 96(0) ; Call print_and_continue
73 : LD 1, 4(5) ; Load function result
74 : LDC 2, 4(0) ; Caller frame size
75 : SUB 5, 5, 2 ; Pop back to caller
76 : ST 1, 3(5) ; Store result into caller’s frame
77 : LD   1, 3(5) ;  Load return value into register 1
78 : LD  6, 0(5) ;  Load return address for main function into register 6
79 : LDA  7, 0(6) ;  Jump to return address of main function
80 : LD   1, 1(5) ;  Load parameter 'm' into R1
81 : ADD  3, 1, 0 ;  Store left operand into temporary register
82 : LD   1, 1(5) ;  Load parameter 'm' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LD   1, 2(5) ;  Load parameter 'n' into R1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : DIV  1, 2, 1 ;  R1 = left / right
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : ADD  2, 3, 0 ;  Restore left operand
92 : SUB  1, 2, 1 ;  R1 = left - right
93 : ST   1, 3(5) ;  Store function result into stack frame
94 : LD   6, 0(5) ;  Load return address
95 : LDA  7, 0(6) ;  Return to caller
96 : LD   1, 3(5) ;  Load parameter 'unit' into R1
97 : LDA 4, 5(5) ; Base of callee frame
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return addr in callee frame
100 : ADD 5, 4, 0 ; Push new frame
101 : LDA 7, 10(0) ; Call print
102 : LDC 2, 5(0) ; Caller frame size
103 : SUB 5, 5, 2 ; Pop frame
104 : ST   1, 4(5) ;  Store function result into stack frame
105 : LDA 4, 5(5) ; Base of callee frame
106 : LD   1, 3(5) ;  Load parameter 'unit' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LD   1, 1(5) ;  Load parameter 'm' into R1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : MUL  1, 2, 1 ;  R1 = left * right
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 2(5) ;  Load parameter 'n' into R1
113 : ADD  2, 3, 0 ;  Restore left operand
114 : SUB  1, 2, 1 ;  R1 = left - right
115 : ST 1, 1(4) ; Argument 0
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LD   1, 3(5) ;  Load parameter 'unit' into R1
119 : ADD  2, 3, 0 ;  Restore left operand
120 : MUL  1, 2, 1 ;  R1 = left * right
121 : ST 1, 2(4) ; Argument 1
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return in callee frame
124 : ADD 5, 4, 0 ; Push callee frame
125 : LDA 7, 13(0) ; Call main
126 : LD 1, 3(5) ; Load function result
127 : LDC 2, 5(0) ; Caller frame size
128 : SUB 5, 5, 2 ; Pop back to caller
129 : ST   1, 4(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
