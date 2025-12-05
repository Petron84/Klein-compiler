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
14 : ST   1, 3(5) ;  Store left operand into temporary register
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : LD   2, 3(5) ; Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 26(0) ;  If condition is false, jump to ELSE
23 : LD   1, 2(5) ;  Load parameter 'n' into R1
24 : ST 1, 3(5) ;  Store result into current frame's return slot
25 : LDA  7, 82(0) ;  Skip ELSE block
26 : LD   1, 2(5) ;  Load parameter 'n' into R1
27 : LDA  4, 4(5) ; Restore Callee frame base
28 : ST 1, 1(4) ;  Store argument 0 into callee frame
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : LDA  4, 4(5) ; Restore Callee frame base
31 : ST 1, 2(4) ;  Store argument 1 into callee frame
32 : LDA  4, 4(5) ; Restore Call frame base
33 : LDA 6, 37(0) ;  Compute return address
34 : ST 6, 0(4) ;  Store return address in callee frame
35 : ADD  5, 4, 0 ;  Update pointer
36 : LDA 7, 85(0) ;  Call MOD
37 : LD 1, 3(5) ;  Load callee return value into R1
38 : LDC  4, 4(0) ;  Load frame size
39 : SUB  5, 5, 4 ;  Restore pointer
40 : ST   1, 3(5) ;  Store left operand into temporary register
41 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
42 : LD   2, 3(5) ; Restore left operand
43 : SUB  1, 2, 1 ;  left - right for equality check
44 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
45 : LDC  1, 0(0) ;  false
46 : LDA  7, 1(7) ;  skip setting true
47 : LDC  1, 1(0) ;  true
48 : JEQ  1, 56(0) ;  If condition is false, jump to ELSE
49 : LD   1, 2(5) ;  Load parameter 'n' into R1
50 : ST   1, 3(5) ;  Store left operand into temporary register
51 : LD   1, 1(5) ;  Load parameter 'm' into R1
52 : LD   2, 3(5) ; Restore left operand
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : ST 1, 3(5) ;  Store result into current frame's return slot
55 : LDA  7, 82(0) ;  Skip ELSE block
56 : LD   1, 1(5) ;  Load parameter 'm' into R1
57 : LDA  4, 5(5) ; Restore Callee frame base
58 : ST 1, 1(4) ;  Store argument 0 into callee frame
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : LDA  4, 5(5) ; Restore Callee frame base
61 : ST 1, 2(4) ;  Store argument 1 into callee frame
62 : LD   1, 2(5) ;  Load parameter 'n' into R1
63 : ST   1, 3(5) ;  Store left operand into temporary register
64 : LD   1, 1(5) ;  Load parameter 'm' into R1
65 : LD   2, 3(5) ; Restore left operand
66 : DIV  1, 2, 1 ;  R1 = left / right
67 : ST   1, 3(5) ;  Store left operand into temporary register
68 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
69 : LD   2, 3(5) ; Restore left operand
70 : ADD  1, 2, 1 ;  R1 = left + right
71 : LDA  4, 5(5) ; Restore Callee frame base
72 : ST 1, 3(4) ;  Store argument 2 into callee frame
73 : LDA  4, 5(5) ; Restore Call frame base
74 : LDA 6, 78(0) ;  Compute return address
75 : ST 6, 0(4) ;  Store return address in callee frame
76 : ADD  5, 4, 0 ;  Update pointer
77 : LDA 7, 101(0) ;  Call print_and_continue
78 : LD 1, 4(5) ;  Load callee return value into R1
79 : LDC  4, 5(0) ;  Load frame size
80 : SUB  5, 5, 4 ;  Restore pointer
81 : ST 1, 3(5) ;  Store result into current frame's return slot
82 : LD   1, 3(5) ;  Load return value into register 1
83 : LD  6, 0(5) ;  Load return address for main function into register 6
84 : LDA  7, 0(6) ;  Jump to return address of main function
85 : LD   1, 1(5) ;  Load parameter 'm' into R1
86 : ST   1, 3(5) ;  Store left operand into temporary register
87 : LD   1, 1(5) ;  Load parameter 'm' into R1
88 : ST   1, 3(5) ;  Store left operand into temporary register
89 : LD   1, 2(5) ;  Load parameter 'n' into R1
90 : LD   2, 3(5) ; Restore left operand
91 : DIV  1, 2, 1 ;  R1 = left / right
92 : ST   1, 3(5) ;  Store left operand into temporary register
93 : LD   1, 2(5) ;  Load parameter 'n' into R1
94 : LD   2, 3(5) ; Restore left operand
95 : MUL  1, 2, 1 ;  R1 = left * right
96 : LD   2, 3(5) ; Restore left operand
97 : SUB  1, 2, 1 ;  R1 = left - right
98 : ST   1, 3(5) ;  Store function result into stack frame
99 : LD   6, 0(5) ;  Load return address
100 : LDA  7, 0(6) ;  Return to caller
101 : LD   1, 3(5) ;  Load parameter 'unit' into R1
102 : LDA  4, 3(5) ;  Update DMEM pointer
103 : LDA 6, 107(0) ;  Compute return address
104 : ST   6, 0(4) ;  Store return address
105 : ADD  5, 4, 0 ;  Updated Pointer
106 : LDA  7, 10(0) ; Call print
107 : LDC  4, 3(0) ;  Load frame size
108 : SUB  5, 5, 4 ;  Restore pointer
109 : ST   1, 4(5) ;  Store function result into stack frame
110 : LD   1, 3(5) ;  Load parameter 'unit' into R1
111 : ST   1, 4(5) ;  Store left operand into temporary register
112 : LD   1, 1(5) ;  Load parameter 'm' into R1
113 : LD   2, 4(5) ; Restore left operand
114 : MUL  1, 2, 1 ;  R1 = left * right
115 : ST   1, 4(5) ;  Store left operand into temporary register
116 : LD   1, 2(5) ;  Load parameter 'n' into R1
117 : LD   2, 4(5) ; Restore left operand
118 : SUB  1, 2, 1 ;  R1 = left - right
119 : LDA  4, 4(5) ; Restore Callee frame base
120 : ST 1, 1(4) ;  Store argument 0 into callee frame
121 : LD   1, 2(5) ;  Load parameter 'n' into R1
122 : ST   1, 4(5) ;  Store left operand into temporary register
123 : LD   1, 3(5) ;  Load parameter 'unit' into R1
124 : LD   2, 4(5) ; Restore left operand
125 : MUL  1, 2, 1 ;  R1 = left * right
126 : LDA  4, 4(5) ; Restore Callee frame base
127 : ST 1, 2(4) ;  Store argument 1 into callee frame
128 : LDA  4, 4(5) ; Restore Call frame base
129 : LDA 6, 133(0) ;  Compute return address
130 : ST 6, 0(4) ;  Store return address in callee frame
131 : ADD  5, 4, 0 ;  Update pointer
132 : LDA 7, 13(0) ;  Call main
133 : LD 1, 3(5) ;  Load callee return value into R1
134 : LDC  4, 4(0) ;  Load frame size
135 : SUB  5, 5, 4 ;  Restore pointer
136 : ST   1, 4(5) ;  Store function result into stack frame
137 : LD   6, 0(5) ;  Load return address
138 : LDA  7, 0(6) ;  Return to caller
