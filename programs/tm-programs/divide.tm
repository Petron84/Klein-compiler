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
16 : ADD  3, 1, 0 ;  Save left operand
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 1(5) ;  Load parameter 'a' into R1
26 : ST 1, 4(5) ;  Store result into current frame's return slot
27 : LDA  7, 50(0) ;  Skip ELSE block
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : ST   1, 5(5) ;  Spill Temporary
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : ST   1, 6(5) ;  Spill Temporary
32 : LD   1, 3(5) ;  Load parameter 'n' into R1
33 : ST   1, 7(5) ;  Spill Temporary
34 : LDA 4, 5(5) ; Restore Callee frame base
35 : LD   1, 7(5) ;  Restore Temporary
36 : ST 1, 3(4) ;  Store argument 2 into callee frame
37 : LD   1, 6(5) ;  Restore Temporary
38 : ST 1, 2(4) ;  Store argument 1 into callee frame
39 : LD   1, 5(5) ;  Restore Temporary
40 : ST 1, 1(4) ;  Store argument 0 into callee frame
41 : LDA 4, 5(5) ; Restore Call frame base
42 : LDA 6, 46(0) ;  Compute return address
43 : ST 6, 0(4) ;  Store return address in callee frame
44 : ADD 5, 4, 0 ;  Update pointer
45 : LDA 7, 69(0) ;  Call printAndDivide
46 : LD 1, 4(5) ;  Load callee return value into R1
47 : LDC 4, 5(0) ;  Load frame size
48 : SUB 5, 5, 4 ;  Restore pointer
49 : ST 1, 4(5) ;  Store result into current frame's return slot
50 : LD   1, 4(5) ;  Load return value into register 1
51 : LD  6, 0(5) ;  Load return address for main function into register 6
52 : LDA  7, 0(6) ;  Jump to return address of main function
53 : LD   1, 1(5) ;  Load parameter 'm' into R1
54 : ADD  3, 1, 0 ;  Save left operand
55 : LD   1, 1(5) ;  Load parameter 'm' into R1
56 : ADD  3, 1, 0 ;  Save left operand
57 : LD   1, 2(5) ;  Load parameter 'n' into R1
58 : ADD  2, 3, 0 ;  restore left operand
59 : DIV  1, 2, 1 ;  R1 = left / right
60 : ADD  3, 1, 0 ;  Save left operand
61 : LD   1, 2(5) ;  Load parameter 'n' into R1
62 : ADD  2, 3, 0 ;  restore left operand
63 : MUL  1, 2, 1 ;  R1 = left * right
64 : ADD  2, 3, 0 ;  restore left operand
65 : SUB  1, 2, 1 ;  R1 = left - right
66 : ST   1, 3(5) ;  Store function result into stack frame
67 : LD   6, 0(5) ;  Load return address
68 : LDA  7, 0(6) ;  Return to caller
69 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
70 : ADD  3, 1, 0 ;  Save left operand
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  2, 3, 0 ;  restore left operand
73 : MUL  1, 2, 1 ;  R1 = left * right
74 : ADD  3, 1, 0 ;  Save left operand
75 : LD   1, 2(5) ;  Load parameter 'b' into R1
76 : ADD  2, 3, 0 ;  restore left operand
77 : DIV  1, 2, 1 ;  R1 = left / right
78 : LDA  4, 3(5) ;  Update DMEM pointer
79 : LDA 6, 83(0) ;  Compute return address
80 : ST   6, 0(4) ;  Store return address
81 : ADD  5, 4, 0 ;  Updated Pointer
82 : LDA  7, 12(0) ; Call print
83 : LDC  4, 3(0) ;  Load frame size
84 : SUB  5, 5, 4 ;  Restore pointer
85 : ST   1, 4(5) ;  Store function result into stack frame
86 : LD   1, 1(5) ;  Load parameter 'a' into R1
87 : ADD  3, 1, 0 ;  Save left operand
88 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
89 : ADD  2, 3, 0 ;  restore left operand
90 : MUL  1, 2, 1 ;  R1 = left * right
91 : ST   1, 5(5) ;  Spill Temporary
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : ST   1, 6(5) ;  Spill Temporary
94 : LDA 4, 4(5) ; Restore Callee frame base
95 : LD   1, 6(5) ;  Restore Temporary
96 : ST 1, 2(4) ;  Store argument 1 into callee frame
97 : LD   1, 5(5) ;  Restore Temporary
98 : ST 1, 1(4) ;  Store argument 0 into callee frame
99 : LDA 4, 4(5) ; Restore Call frame base
100 : LDA 6, 104(0) ;  Compute return address
101 : ST 6, 0(4) ;  Store return address in callee frame
102 : ADD 5, 4, 0 ;  Update pointer
103 : LDA 7, 53(0) ;  Call MOD
104 : LD 1, 3(5) ;  Load callee return value into R1
105 : LDC 4, 4(0) ;  Load frame size
106 : SUB 5, 5, 4 ;  Restore pointer
107 : ST   1, 5(5) ;  Spill Temporary
108 : LD   1, 2(5) ;  Load parameter 'b' into R1
109 : ST   1, 6(5) ;  Spill Temporary
110 : LD   1, 3(5) ;  Load parameter 'n' into R1
111 : ADD  3, 1, 0 ;  Save left operand
112 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
113 : ADD  2, 3, 0 ;  restore left operand
114 : SUB  1, 2, 1 ;  R1 = left - right
115 : ST   1, 7(5) ;  Spill Temporary
116 : LDA 4, 5(5) ; Restore Callee frame base
117 : LD   1, 7(5) ;  Restore Temporary
118 : ST 1, 3(4) ;  Store argument 2 into callee frame
119 : LD   1, 6(5) ;  Restore Temporary
120 : ST 1, 2(4) ;  Store argument 1 into callee frame
121 : LD   1, 5(5) ;  Restore Temporary
122 : ST 1, 1(4) ;  Store argument 0 into callee frame
123 : LDA 4, 5(5) ; Restore Call frame base
124 : LDA 6, 128(0) ;  Compute return address
125 : ST 6, 0(4) ;  Store return address in callee frame
126 : ADD 5, 4, 0 ;  Update pointer
127 : LDA 7, 15(0) ;  Call main
128 : LD 1, 4(5) ;  Load callee return value into R1
129 : LDC 4, 5(0) ;  Load frame size
130 : SUB 5, 5, 4 ;  Restore pointer
131 : ST   1, 4(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
