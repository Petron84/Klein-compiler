0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 4(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDC  4, 4(0) ;  Load size of main stack frame
8 : ADD  5, 5, 4 ;  Advance R5 to next frame
9 : LDA  7, 15(0) ;  Load address of main IMEM block - branch to function
10 : OUT  1, 0, 0 ;  Return result
11 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
12 : OUT  1, 0, 0 ;  Hardcoded print function
13 : LD   6, 0(5) ;  Load return addess from stack frame.
14 : LDA  7, 0(6) ;  Jump to return address.
15 : LD   1, 1(5) ;  Load parameter 'm' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 28(0) ;  If condition is false, jump to ELSE
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 3(5) ;  Store result into current frame's return slot
27 : LDA  7, 81(0) ;  Skip ELSE block
28 : LDA  4, 0(5) ;  Save callee frame base
29 : LD   1, 2(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(4) ;  Store argument 0 into callee frame
31 : LD   1, 1(5) ;  Load parameter 'm' into R1
32 : ST 1, 2(4) ;  Store argument 1 into callee frame
33 : LDA 6, 38(0) ;  Compute return address
34 : ST 6, 0(4) ;  Store return address in callee frame
35 : LDA  2, 4(4) ;  Compute end of frame
36 : ADD  5, 2, 0 ;  Advance pointer to end of frame
37 : LDA 7, 84(0) ;  Call MOD
38 : LD 1, 3(5) ;  Load callee return value into R1
39 : LDC  4, 4(0) ;  Load frame size
40 : SUB  5, 5, 4 ;  Restore pointer
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
56 : LDA  7, 81(0) ;  Skip ELSE block
57 : LDA  4, 0(5) ;  Save callee frame base
58 : LD   1, 1(5) ;  Load parameter 'm' into R1
59 : ST 1, 1(4) ;  Store argument 0 into callee frame
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ST 1, 2(4) ;  Store argument 1 into callee frame
62 : LD   1, 2(5) ;  Load parameter 'n' into R1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LD   1, 1(5) ;  Load parameter 'm' into R1
65 : ADD  2, 3, 0 ;  Restore left operand
66 : DIV  1, 2, 1 ;  R1 = left / right
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
69 : ADD  2, 3, 0 ;  Restore left operand
70 : ADD  1, 2, 1 ;  R1 = left + right
71 : ST 1, 3(4) ;  Store argument 2 into callee frame
72 : LDA 6, 77(0) ;  Compute return address
73 : ST 6, 0(4) ;  Store return address in callee frame
74 : LDA  2, 5(4) ;  Compute end of frame
75 : ADD  5, 2, 0 ;  Advance pointer to end of frame
76 : LDA 7, 100(0) ;  Call print_and_continue
77 : LD 1, 4(5) ;  Load callee return value into R1
78 : LDC  4, 5(0) ;  Load frame size
79 : SUB  5, 5, 4 ;  Restore pointer
80 : ST 1, 3(5) ;  Store result into current frame's return slot
81 : LD   1, 3(5) ;  Load return value into register 1
82 : LD  6, 0(5) ;  Load return address for main function into register 6
83 : LDA  7, 0(6) ;  Jump to return address of main function
84 : LD   1, 1(5) ;  Load parameter 'm' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 1(5) ;  Load parameter 'm' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : DIV  1, 2, 1 ;  R1 = left / right
91 : ADD  3, 1, 0 ;  Store left operand into temporary register
92 : LD   1, 2(5) ;  Load parameter 'n' into R1
93 : ADD  2, 3, 0 ;  Restore left operand
94 : MUL  1, 2, 1 ;  R1 = left * right
95 : ADD  2, 3, 0 ;  Restore left operand
96 : SUB  1, 2, 1 ;  R1 = left - right
97 : ST   1, 3(5) ;  Store function result into stack frame
98 : LD   6, 0(5) ;  Load return address
99 : LDA  7, 0(6) ;  Return to caller
100 : LD   1, 3(5) ;  Load parameter 'unit' into R1
101 : LDA  4, 3(5) ;  Update DMEM pointer
102 : LDA 6, 106(0) ;  Compute return address
103 : ST   6, 0(4) ;  Store return address
104 : ADD  5, 4, 0 ;  Updated Pointer
105 : LDA  7, 12(0) ; Call print
106 : LDC  4, 3(0) ;  Load frame size
107 : SUB  5, 5, 4 ;  Restore pointer
108 : ST   1, 4(5) ;  Store function result into stack frame
109 : LDA  4, 0(5) ;  Save callee frame base
110 : LD   1, 3(5) ;  Load parameter 'unit' into R1
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 1(5) ;  Load parameter 'm' into R1
113 : ADD  2, 3, 0 ;  Restore left operand
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : SUB  1, 2, 1 ;  R1 = left - right
119 : ST 1, 1(4) ;  Store argument 0 into callee frame
120 : LD   1, 2(5) ;  Load parameter 'n' into R1
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LD   1, 3(5) ;  Load parameter 'unit' into R1
123 : ADD  2, 3, 0 ;  Restore left operand
124 : MUL  1, 2, 1 ;  R1 = left * right
125 : ST 1, 2(4) ;  Store argument 1 into callee frame
126 : LDA 6, 131(0) ;  Compute return address
127 : ST 6, 0(4) ;  Store return address in callee frame
128 : LDA  2, 4(4) ;  Compute end of frame
129 : ADD  5, 2, 0 ;  Advance pointer to end of frame
130 : LDA 7, 15(0) ;  Call main
131 : LD 1, 3(5) ;  Load callee return value into R1
132 : LDC  4, 4(0) ;  Load frame size
133 : SUB  5, 5, 4 ;  Restore pointer
134 : ST   1, 4(5) ;  Store function result into stack frame
135 : LD   6, 0(5) ;  Load return address
136 : LDA  7, 0(6) ;  Return to caller
