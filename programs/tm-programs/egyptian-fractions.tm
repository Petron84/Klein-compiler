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
14 : ADD  3, 1, 0 ;  Save left operand
15 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 26(0) ;  If condition is false, jump to ELSE
23 : LD   1, 2(5) ;  Load parameter 'n' into R1
24 : ST 1, 3(5) ;  Store result into current frame's return slot
25 : LDA  7, 89(0) ;  Skip ELSE block
26 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
27 : ADD  3, 1, 0 ;  Save right operand
28 : LD   1, 2(5) ;  Load parameter 'n' into R1
29 : ST   1, 4(5) ;  Spill Temporary
30 : LD   1, 1(5) ;  Load parameter 'm' into R1
31 : ST   1, 5(5) ;  Spill Temporary
32 : LDA 4, 4(5) ; Restore Callee frame base
33 : LD   1, 5(5) ;  Restore Temporary
34 : ST 1, 2(4) ;  Store argument 1 into callee frame
35 : LD   1, 4(5) ;  Restore Temporary
36 : ST 1, 1(4) ;  Store argument 0 into callee frame
37 : LDA 4, 4(5) ; Restore Call frame base
38 : LDA 6, 42(0) ;  Compute return address
39 : ST 6, 0(4) ;  Store return address in callee frame
40 : ADD 5, 4, 0 ;  Update pointer
41 : LDA 7, 92(0) ;  Call MOD
42 : LD 1, 3(5) ;  Load callee return value into R1
43 : LDC 4, 4(0) ;  Load frame size
44 : SUB 5, 5, 4 ;  Restore pointer
45 : ADD  2, 3, 0 ;  Restore right operand
46 : SUB  1, 2, 1 ;  left - right for equality check
47 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
48 : LDC  1, 0(0) ;  false
49 : LDA  7, 1(7) ;  skip setting true
50 : LDC  1, 1(0) ;  true
51 : JEQ  1, 59(0) ;  If condition is false, jump to ELSE
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : ADD  3, 1, 0 ;  Save left operand
54 : LD   1, 1(5) ;  Load parameter 'm' into R1
55 : ADD  2, 3, 0 ;  restore left operand
56 : DIV  1, 2, 1 ;  R1 = left / right
57 : ST 1, 3(5) ;  Store result into current frame's return slot
58 : LDA  7, 89(0) ;  Skip ELSE block
59 : LD   1, 1(5) ;  Load parameter 'm' into R1
60 : ST   1, 4(5) ;  Spill Temporary
61 : LD   1, 2(5) ;  Load parameter 'n' into R1
62 : ST   1, 5(5) ;  Spill Temporary
63 : LD   1, 2(5) ;  Load parameter 'n' into R1
64 : ADD  3, 1, 0 ;  Save left operand
65 : LD   1, 1(5) ;  Load parameter 'm' into R1
66 : ADD  2, 3, 0 ;  restore left operand
67 : DIV  1, 2, 1 ;  R1 = left / right
68 : ADD  3, 1, 0 ;  Save left operand
69 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
70 : ADD  2, 3, 0 ;  restore left operand
71 : ADD  1, 2, 1 ;  R1 = left + right
72 : ST   1, 6(5) ;  Spill Temporary
73 : LDA 4, 5(5) ; Restore Callee frame base
74 : LD   1, 6(5) ;  Restore Temporary
75 : ST 1, 3(4) ;  Store argument 2 into callee frame
76 : LD   1, 5(5) ;  Restore Temporary
77 : ST 1, 2(4) ;  Store argument 1 into callee frame
78 : LD   1, 4(5) ;  Restore Temporary
79 : ST 1, 1(4) ;  Store argument 0 into callee frame
80 : LDA 4, 5(5) ; Restore Call frame base
81 : LDA 6, 85(0) ;  Compute return address
82 : ST 6, 0(4) ;  Store return address in callee frame
83 : ADD 5, 4, 0 ;  Update pointer
84 : LDA 7, 108(0) ;  Call print_and_continue
85 : LD 1, 4(5) ;  Load callee return value into R1
86 : LDC 4, 5(0) ;  Load frame size
87 : SUB 5, 5, 4 ;  Restore pointer
88 : ST 1, 3(5) ;  Store result into current frame's return slot
89 : LD   1, 3(5) ;  Load return value into register 1
90 : LD  6, 0(5) ;  Load return address for main function into register 6
91 : LDA  7, 0(6) ;  Jump to return address of main function
92 : LD   1, 1(5) ;  Load parameter 'm' into R1
93 : ADD  3, 1, 0 ;  Save left operand
94 : LD   1, 1(5) ;  Load parameter 'm' into R1
95 : ADD  3, 1, 0 ;  Save left operand
96 : LD   1, 2(5) ;  Load parameter 'n' into R1
97 : ADD  2, 3, 0 ;  restore left operand
98 : DIV  1, 2, 1 ;  R1 = left / right
99 : ADD  3, 1, 0 ;  Save left operand
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : ADD  2, 3, 0 ;  restore left operand
102 : MUL  1, 2, 1 ;  R1 = left * right
103 : ADD  2, 3, 0 ;  restore left operand
104 : SUB  1, 2, 1 ;  R1 = left - right
105 : ST   1, 3(5) ;  Store function result into stack frame
106 : LD   6, 0(5) ;  Load return address
107 : LDA  7, 0(6) ;  Return to caller
108 : LD   1, 3(5) ;  Load parameter 'unit' into R1
109 : LDA  4, 3(5) ;  Update DMEM pointer
110 : LDA 6, 114(0) ;  Compute return address
111 : ST   6, 0(4) ;  Store return address
112 : ADD  5, 4, 0 ;  Updated Pointer
113 : LDA  7, 10(0) ; Call print
114 : LDC  4, 3(0) ;  Load frame size
115 : SUB  5, 5, 4 ;  Restore pointer
116 : ST   1, 4(5) ;  Store function result into stack frame
117 : LD   1, 3(5) ;  Load parameter 'unit' into R1
118 : ADD  3, 1, 0 ;  Save left operand
119 : LD   1, 1(5) ;  Load parameter 'm' into R1
120 : ADD  2, 3, 0 ;  restore left operand
121 : MUL  1, 2, 1 ;  R1 = left * right
122 : ADD  3, 1, 0 ;  Save left operand
123 : LD   1, 2(5) ;  Load parameter 'n' into R1
124 : ADD  2, 3, 0 ;  restore left operand
125 : SUB  1, 2, 1 ;  R1 = left - right
126 : ST   1, 5(5) ;  Spill Temporary
127 : LD   1, 2(5) ;  Load parameter 'n' into R1
128 : ADD  3, 1, 0 ;  Save left operand
129 : LD   1, 3(5) ;  Load parameter 'unit' into R1
130 : ADD  2, 3, 0 ;  restore left operand
131 : MUL  1, 2, 1 ;  R1 = left * right
132 : ST   1, 6(5) ;  Spill Temporary
133 : LDA 4, 4(5) ; Restore Callee frame base
134 : LD   1, 6(5) ;  Restore Temporary
135 : ST 1, 2(4) ;  Store argument 1 into callee frame
136 : LD   1, 5(5) ;  Restore Temporary
137 : ST 1, 1(4) ;  Store argument 0 into callee frame
138 : LDA 4, 4(5) ; Restore Call frame base
139 : LDA 6, 143(0) ;  Compute return address
140 : ST 6, 0(4) ;  Store return address in callee frame
141 : ADD 5, 4, 0 ;  Update pointer
142 : LDA 7, 13(0) ;  Call main
143 : LD 1, 3(5) ;  Load callee return value into R1
144 : LDC 4, 4(0) ;  Load frame size
145 : SUB 5, 5, 4 ;  Restore pointer
146 : ST   1, 4(5) ;  Store function result into stack frame
147 : LD   6, 0(5) ;  Load return address
148 : LDA  7, 0(6) ;  Return to caller
