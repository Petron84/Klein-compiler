0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA  4, 0(5) ;  Save callee frame base
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
17 : ST 1, 2(4) ;  Store argument 1 into callee frame
18 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
19 : ST 1, 3(4) ;  Store argument 2 into callee frame
20 : LDA 6, 25(0) ;  Compute return address
21 : ST 6, 0(4) ;  Store return address in callee frame
22 : LDA  2, 5(4) ;  Compute end of frame
23 : ADD  5, 2, 0 ;  Advance pointer to end of frame
24 : LDA 7, 86(0) ;  Call average_digit
25 : LD 1, 4(5) ;  Load callee return value into R1
26 : LDC  4, 5(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : ST 1, 2(5) ;  Store result into current frame's return slot
29 : LD   1, 2(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 1(5) ;  Load parameter 'm' into R1
33 : ADD  3, 1, 0 ;  Store left operand into temporary register
34 : LD   1, 1(5) ;  Load parameter 'm' into R1
35 : ADD  3, 1, 0 ;  Store left operand into temporary register
36 : LD   1, 2(5) ;  Load parameter 'n' into R1
37 : ADD  2, 3, 0 ;  Restore left operand
38 : DIV  1, 2, 1 ;  R1 = left / right
39 : ADD  3, 1, 0 ;  Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'n' into R1
41 : ADD  2, 3, 0 ;  Restore left operand
42 : MUL  1, 2, 1 ;  R1 = left * right
43 : ADD  2, 3, 0 ;  Restore left operand
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LD   1, 1(5) ;  Load parameter 'sum' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : LDA  4, 3(5) ;  Update DMEM pointer
54 : LDA 6, 58(0) ;  Compute return address
55 : ST   6, 0(4) ;  Store return address
56 : ADD  5, 4, 0 ;  Updated Pointer
57 : LDA  7, 10(0) ; Call print
58 : LDC  4, 3(0) ;  Load frame size
59 : SUB  5, 5, 4 ;  Restore pointer
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LDA  4, 0(5) ;  Save callee frame base
62 : LD   1, 1(5) ;  Load parameter 'sum' into R1
63 : ST 1, 1(4) ;  Store argument 0 into callee frame
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ST 1, 2(4) ;  Store argument 1 into callee frame
66 : LDA 6, 71(0) ;  Compute return address
67 : ST 6, 0(4) ;  Store return address in callee frame
68 : LDA  2, 4(4) ;  Compute end of frame
69 : ADD  5, 2, 0 ;  Advance pointer to end of frame
70 : LDA 7, 32(0) ;  Call MOD
71 : LD 1, 3(5) ;  Load callee return value into R1
72 : LDC  4, 4(0) ;  Load frame size
73 : SUB  5, 5, 4 ;  Restore pointer
74 : LDA  4, 3(5) ;  Update DMEM pointer
75 : LDA 6, 79(0) ;  Compute return address
76 : ST   6, 0(4) ;  Store return address
77 : ADD  5, 4, 0 ;  Updated Pointer
78 : LDA  7, 10(0) ; Call print
79 : LDC  4, 3(0) ;  Load frame size
80 : SUB  5, 5, 4 ;  Restore pointer
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   1, 2(5) ;  Load parameter 'n' into R1
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LD   1, 1(5) ;  Load parameter 'n' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : SUB  1, 2, 1 ;  left - right for less-than check
91 : JLT  1, 2(7) ;  If R1 < 0, jump to true
92 : LDC  1, 0(0) ;  false
93 : LDA  7, 1(7) ;  skip setting true
94 : LDC  1, 1(0) ;  true
95 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
96 : LDA  4, 0(5) ;  Save callee frame base
97 : LD   1, 2(5) ;  Load parameter 'sum' into R1
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ADD  2, 3, 0 ;  Restore left operand
101 : ADD  1, 2, 1 ;  R1 = left + right
102 : ST 1, 1(4) ;  Store argument 0 into callee frame
103 : LD   1, 3(5) ;  Load parameter 'i' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : ADD  1, 2, 1 ;  R1 = left + right
108 : ST 1, 2(4) ;  Store argument 1 into callee frame
109 : LDA 6, 114(0) ;  Compute return address
110 : ST 6, 0(4) ;  Store return address in callee frame
111 : LDA  2, 4(4) ;  Compute end of frame
112 : ADD  5, 2, 0 ;  Advance pointer to end of frame
113 : LDA 7, 48(0) ;  Call print_and_return
114 : LD 1, 3(5) ;  Load callee return value into R1
115 : LDC  4, 4(0) ;  Load frame size
116 : SUB  5, 5, 4 ;  Restore pointer
117 : LDA  7, 157(0) ;  Skip ELSE block
118 : LDA  4, 0(5) ;  Save callee frame base
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : ADD  3, 1, 0 ;  Store left operand into temporary register
121 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
122 : ADD  2, 3, 0 ;  Restore left operand
123 : DIV  1, 2, 1 ;  R1 = left / right
124 : ST 1, 1(4) ;  Store argument 0 into callee frame
125 : LD   1, 2(5) ;  Load parameter 'sum' into R1
126 : ADD  3, 1, 0 ;  Store left operand into temporary register
127 : LDA  4, 0(5) ;  Save callee frame base
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : ST 1, 1(4) ;  Store argument 0 into callee frame
130 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
131 : ST 1, 2(4) ;  Store argument 1 into callee frame
132 : LDA 6, 137(0) ;  Compute return address
133 : ST 6, 0(4) ;  Store return address in callee frame
134 : LDA  2, 4(4) ;  Compute end of frame
135 : ADD  5, 2, 0 ;  Advance pointer to end of frame
136 : LDA 7, 32(0) ;  Call MOD
137 : LD 1, 3(5) ;  Load callee return value into R1
138 : LDC  4, 4(0) ;  Load frame size
139 : SUB  5, 5, 4 ;  Restore pointer
140 : ADD  2, 3, 0 ;  Restore left operand
141 : ADD  1, 2, 1 ;  R1 = left + right
142 : ST 1, 2(4) ;  Store argument 1 into callee frame
143 : LD   1, 3(5) ;  Load parameter 'i' into R1
144 : ADD  3, 1, 0 ;  Store left operand into temporary register
145 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
146 : ADD  2, 3, 0 ;  Restore left operand
147 : ADD  1, 2, 1 ;  R1 = left + right
148 : ST 1, 3(4) ;  Store argument 2 into callee frame
149 : LDA 6, 154(0) ;  Compute return address
150 : ST 6, 0(4) ;  Store return address in callee frame
151 : LDA  2, 5(4) ;  Compute end of frame
152 : ADD  5, 2, 0 ;  Advance pointer to end of frame
153 : LDA 7, 86(0) ;  Call average_digit
154 : LD 1, 4(5) ;  Load callee return value into R1
155 : LDC  4, 5(0) ;  Load frame size
156 : SUB  5, 5, 4 ;  Restore pointer
157 : ST   1, 4(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
