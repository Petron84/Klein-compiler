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
27 : LDA  7, 46(0) ;  Skip ELSE block
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : LDA  4, 5(5) ; Restore Callee frame base
30 : ST 1, 1(4) ;  Store argument 0 into callee frame
31 : LD   1, 2(5) ;  Load parameter 'b' into R1
32 : LDA  4, 5(5) ; Restore Callee frame base
33 : ST 1, 2(4) ;  Store argument 1 into callee frame
34 : LD   1, 3(5) ;  Load parameter 'n' into R1
35 : LDA  4, 5(5) ; Restore Callee frame base
36 : ST 1, 3(4) ;  Store argument 2 into callee frame
37 : LDA  4, 5(5) ; Restore Call frame base
38 : LDA 6, 42(0) ;  Compute return address
39 : ST 6, 0(4) ;  Store return address in callee frame
40 : ADD  5, 4, 0 ;  Update pointer
41 : LDA 7, 65(0) ;  Call printAndDivide
42 : LD 1, 4(5) ;  Load callee return value into R1
43 : LDC  4, 5(0) ;  Load frame size
44 : SUB  5, 5, 4 ;  Restore pointer
45 : ST 1, 4(5) ;  Store result into current frame's return slot
46 : LD   1, 4(5) ;  Load return value into register 1
47 : LD  6, 0(5) ;  Load return address for main function into register 6
48 : LDA  7, 0(6) ;  Jump to return address of main function
49 : LD   1, 1(5) ;  Load parameter 'm' into R1
50 : ADD  3, 1, 0 ;  Store left operand into temporary register
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : ADD  3, 1, 0 ;  Store left operand into temporary register
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : ADD  2, 3, 0 ;  Restore left operand
55 : DIV  1, 2, 1 ;  R1 = left / right
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : MUL  1, 2, 1 ;  R1 = left * right
60 : ADD  2, 3, 0 ;  Restore left operand
61 : SUB  1, 2, 1 ;  R1 = left - right
62 : ST   1, 3(5) ;  Store function result into stack frame
63 : LD   6, 0(5) ;  Load return address
64 : LDA  7, 0(6) ;  Return to caller
65 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
66 : ADD  3, 1, 0 ;  Store left operand into temporary register
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : ADD  2, 3, 0 ;  Restore left operand
69 : MUL  1, 2, 1 ;  R1 = left * right
70 : ADD  3, 1, 0 ;  Store left operand into temporary register
71 : LD   1, 2(5) ;  Load parameter 'b' into R1
72 : ADD  2, 3, 0 ;  Restore left operand
73 : DIV  1, 2, 1 ;  R1 = left / right
74 : LDA  4, 5(5) ;  Update DMEM pointer
75 : LDA 6, 79(0) ;  Compute return address
76 : ST   6, 0(4) ;  Store return address
77 : ADD  5, 4, 0 ;  Updated Pointer
78 : LDA  7, 12(0) ; Call print
79 : LDC  4, 5(0) ;  Load frame size
80 : SUB  5, 5, 4 ;  Restore pointer
81 : ST   1, 4(5) ;  Store function result into stack frame
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : MUL  1, 2, 1 ;  R1 = left * right
87 : LDA  4, 5(5) ; Restore Callee frame base
88 : ST 1, 1(4) ;  Store argument 0 into callee frame
89 : LD   1, 2(5) ;  Load parameter 'b' into R1
90 : LDA  4, 5(5) ; Restore Callee frame base
91 : ST 1, 2(4) ;  Store argument 1 into callee frame
92 : LDA  4, 5(5) ; Restore Call frame base
93 : LDA 6, 97(0) ;  Compute return address
94 : ST 6, 0(4) ;  Store return address in callee frame
95 : ADD  5, 4, 0 ;  Update pointer
96 : LDA 7, 49(0) ;  Call MOD
97 : LD 1, 3(5) ;  Load callee return value into R1
98 : LDC  4, 5(0) ;  Load frame size
99 : SUB  5, 5, 4 ;  Restore pointer
100 : LDA  4, 5(5) ; Restore Callee frame base
101 : ST 1, 1(4) ;  Store argument 0 into callee frame
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : LDA  4, 5(5) ; Restore Callee frame base
104 : ST 1, 2(4) ;  Store argument 1 into callee frame
105 : LD   1, 3(5) ;  Load parameter 'n' into R1
106 : ADD  3, 1, 0 ;  Store left operand into temporary register
107 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
108 : ADD  2, 3, 0 ;  Restore left operand
109 : SUB  1, 2, 1 ;  R1 = left - right
110 : LDA  4, 5(5) ; Restore Callee frame base
111 : ST 1, 3(4) ;  Store argument 2 into callee frame
112 : LDA  4, 5(5) ; Restore Call frame base
113 : LDA 6, 117(0) ;  Compute return address
114 : ST 6, 0(4) ;  Store return address in callee frame
115 : ADD  5, 4, 0 ;  Update pointer
116 : LDA 7, 15(0) ;  Call main
117 : LD 1, 4(5) ;  Load callee return value into R1
118 : LDC  4, 5(0) ;  Load frame size
119 : SUB  5, 5, 4 ;  Restore pointer
120 : ST   1, 4(5) ;  Store function result into stack frame
121 : LD   6, 0(5) ;  Load return address
122 : LDA  7, 0(6) ;  Return to caller
