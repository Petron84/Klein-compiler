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
15 : ADD  3, 1, 0 ;  Store left operand into temporary register
16 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
17 : ADD  2, 3, 0 ;  Restore left operand
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ST 1, 1(4) ;  Store argument 0 into callee frame
20 : LDA  4, 0(5) ;  Save callee frame base
21 : LD   1, 1(5) ;  Load parameter 'n' into R1
22 : ST 1, 1(4) ;  Store argument 0 into callee frame
23 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
24 : ST 1, 2(4) ;  Store argument 1 into callee frame
25 : LDA 6, 30(0) ;  Compute return address
26 : ST 6, 0(4) ;  Store return address in callee frame
27 : LDA  2, 4(4) ;  Compute end of frame
28 : ADD  5, 2, 0 ;  Advance pointer to end of frame
29 : LDA 7, 48(0) ;  Call MOD
30 : LD 1, 3(5) ;  Load callee return value into R1
31 : LDC  4, 4(0) ;  Load frame size
32 : SUB  5, 5, 4 ;  Restore pointer
33 : LDC  2, 4(0) ;  Stores arg frame size
34 : SUB  5, 5, 2 ;  Pop frame
35 : ST 1, 2(4) ;  Store argument 1 into callee frame
36 : LDA 6, 41(0) ;  Compute return address
37 : ST 6, 0(4) ;  Store return address in callee frame
38 : LDA  2, 4(4) ;  Compute end of frame
39 : ADD  5, 2, 0 ;  Advance pointer to end of frame
40 : LDA 7, 140(0) ;  Call divisibleByParts
41 : LD 1, 3(5) ;  Load callee return value into R1
42 : LDC  4, 4(0) ;  Load frame size
43 : SUB  5, 5, 4 ;  Restore pointer
44 : ST 1, 2(5) ;  Store result into current frame's return slot
45 : LD   1, 2(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : ADD  2, 3, 0 ;  Restore left operand
54 : DIV  1, 2, 1 ;  R1 = left / right
55 : ADD  3, 1, 0 ;  Store left operand into temporary register
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  2, 3, 0 ;  Restore left operand
58 : MUL  1, 2, 1 ;  R1 = left * right
59 : ADD  2, 3, 0 ;  Restore left operand
60 : SUB  1, 2, 1 ;  R1 = left - right
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LD   6, 0(5) ;  Load return address
63 : LDA  7, 0(6) ;  Return to caller
64 : LD   1, 1(5) ;  Load parameter 'diff' into R1
65 : ADD  3, 1, 0 ;  Store left operand into temporary register
66 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
67 : ADD  2, 3, 0 ;  Restore left operand
68 : SUB  1, 2, 1 ;  left - right for equality check
69 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
70 : LDC  1, 0(0) ;  false
71 : LDA  7, 1(7) ;  skip setting true
72 : LDC  1, 1(0) ;  true
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LD   1, 1(5) ;  Load parameter 'diff' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : ADD  2, 3, 0 ;  Restore left operand
84 : ADD  1, 2, 1 ;  R1 = left OR right
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 1(5) ;  Load parameter 'diff' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
89 : SUB  1, 0, 1 ;  Negate value in R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : ADD  2, 3, 0 ;  Restore left operand
97 : ADD  1, 2, 1 ;  R1 = left OR right
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LD   1, 1(5) ;  Load parameter 'diff' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
102 : SUB  1, 0, 1 ;  Negate value in R1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : ADD  2, 3, 0 ;  Restore left operand
110 : ADD  1, 2, 1 ;  R1 = left OR right
111 : JEQ  1, 114(0) ;  If condition is false, jump to ELSE
112 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
113 : LDA  7, 137(0) ;  Skip ELSE block
114 : LD   1, 1(5) ;  Load parameter 'diff' into R1
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : SUB  1, 2, 1 ;  left - right for less-than check
119 : JLT  1, 2(7) ;  If R1 < 0, jump to true
120 : LDC  1, 0(0) ;  false
121 : LDA  7, 1(7) ;  skip setting true
122 : LDC  1, 1(0) ;  true
123 : JEQ  1, 126(0) ;  If condition is false, jump to ELSE
124 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
125 : LDA  7, 137(0) ;  Skip ELSE block
126 : LDA  4, 0(5) ;  Save callee frame base
127 : LD   1, 1(5) ;  Load parameter 'diff' into R1
128 : ST 1, 1(4) ;  Store argument 0 into callee frame
129 : LDA 6, 134(0) ;  Compute return address
130 : ST 6, 0(4) ;  Store return address in callee frame
131 : LDA  2, 3(4) ;  Compute end of frame
132 : ADD  5, 2, 0 ;  Advance pointer to end of frame
133 : LDA 7, 13(0) ;  Call main
134 : LD 1, 2(5) ;  Load callee return value into R1
135 : LDC  4, 3(0) ;  Load frame size
136 : SUB  5, 5, 4 ;  Restore pointer
137 : ST   1, 2(5) ;  Store function result into stack frame
138 : LD   6, 0(5) ;  Load return address
139 : LDA  7, 0(6) ;  Return to caller
140 : LDA  4, 0(5) ;  Save callee frame base
141 : LD   1, 1(5) ;  Load parameter 'left' into R1
142 : ADD  3, 1, 0 ;  Store left operand into temporary register
143 : LD   1, 2(5) ;  Load parameter 'right' into R1
144 : ADD  3, 1, 0 ;  Store left operand into temporary register
145 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
146 : ADD  2, 3, 0 ;  Restore left operand
147 : MUL  1, 2, 1 ;  R1 = left * right
148 : ADD  2, 3, 0 ;  Restore left operand
149 : SUB  1, 2, 1 ;  R1 = left - right
150 : ST 1, 1(4) ;  Store argument 0 into callee frame
151 : LDA 6, 156(0) ;  Compute return address
152 : ST 6, 0(4) ;  Store return address in callee frame
153 : LDA  2, 3(4) ;  Compute end of frame
154 : ADD  5, 2, 0 ;  Advance pointer to end of frame
155 : LDA 7, 64(0) ;  Call divisibleByDifference
156 : LD 1, 2(5) ;  Load callee return value into R1
157 : LDC  4, 3(0) ;  Load frame size
158 : SUB  5, 5, 4 ;  Restore pointer
159 : ST   1, 3(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
