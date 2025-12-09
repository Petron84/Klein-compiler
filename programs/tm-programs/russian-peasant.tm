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
16 : LDA  4, 3(5) ;  Update DMEM pointer
17 : LDA 6, 21(0) ;  Compute return address
18 : ST   6, 0(4) ;  Store return address
19 : ADD  5, 4, 0 ;  Updated Pointer
20 : LDA  7, 12(0) ; Call print
21 : LDC  4, 3(0) ;  Load frame size
22 : SUB  5, 5, 4 ;  Restore pointer
23 : LDA  4, 0(5) ;  Save callee frame base
24 : LD   1, 1(5) ;  Load parameter 'm' into R1
25 : ST 1, 1(4) ;  Store argument 0 into callee frame
26 : LD   1, 2(5) ;  Load parameter 'n' into R1
27 : ST 1, 2(4) ;  Store argument 1 into callee frame
28 : LDA 6, 33(0) ;  Compute return address
29 : ST 6, 0(4) ;  Store return address in callee frame
30 : LDA  2, 4(4) ;  Compute end of frame
31 : ADD  5, 2, 0 ;  Advance pointer to end of frame
32 : LDA 7, 40(0) ;  Call mult
33 : LD 1, 3(5) ;  Load callee return value into R1
34 : LDC  4, 4(0) ;  Load frame size
35 : SUB  5, 5, 4 ;  Restore pointer
36 : ST 1, 3(5) ;  Store result into current frame's return slot
37 : LD   1, 3(5) ;  Load return value into register 1
38 : LD  6, 0(5) ;  Load return address for main function into register 6
39 : LDA  7, 0(6) ;  Jump to return address of main function
40 : LDA  4, 0(5) ;  Save callee frame base
41 : LD   1, 1(5) ;  Load parameter 'm' into R1
42 : ST 1, 1(4) ;  Store argument 0 into callee frame
43 : LD   1, 2(5) ;  Load parameter 'n' into R1
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
46 : ST 1, 3(4) ;  Store argument 2 into callee frame
47 : LDA 6, 52(0) ;  Compute return address
48 : ST 6, 0(4) ;  Store return address in callee frame
49 : LDA  2, 5(4) ;  Compute end of frame
50 : ADD  5, 2, 0 ;  Advance pointer to end of frame
51 : LDA 7, 58(0) ;  Call multWithAccum
52 : LD 1, 4(5) ;  Load callee return value into R1
53 : LDC  4, 5(0) ;  Load frame size
54 : SUB  5, 5, 4 ;  Restore pointer
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LD   1, 2(5) ;  Load parameter 'n' into R1
59 : ADD  3, 1, 0 ;  Store left operand into temporary register
60 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
61 : ADD  2, 3, 0 ;  Restore left operand
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
68 : LD   1, 3(5) ;  Load parameter 'accum' into R1
69 : LDA  7, 143(0) ;  Skip ELSE block
70 : LDA  4, 0(5) ;  Save callee frame base
71 : LD   1, 2(5) ;  Load parameter 'n' into R1
72 : ST 1, 1(4) ;  Store argument 0 into callee frame
73 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
74 : ST 1, 2(4) ;  Store argument 1 into callee frame
75 : LDA 6, 80(0) ;  Compute return address
76 : ST 6, 0(4) ;  Store return address in callee frame
77 : LDA  2, 4(4) ;  Compute end of frame
78 : ADD  5, 2, 0 ;  Advance pointer to end of frame
79 : LDA 7, 146(0) ;  Call MOD
80 : LD 1, 3(5) ;  Load callee return value into R1
81 : LDC  4, 4(0) ;  Load frame size
82 : SUB  5, 5, 4 ;  Restore pointer
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : SUB  1, 2, 1 ;  left - right for equality check
87 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 120(0) ;  If condition is false, jump to ELSE
92 : LDA  4, 0(5) ;  Save callee frame base
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ST 1, 1(4) ;  Store argument 0 into callee frame
99 : LD   1, 2(5) ;  Load parameter 'n' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : DIV  1, 2, 1 ;  R1 = left / right
104 : ST 1, 2(4) ;  Store argument 1 into callee frame
105 : LD   1, 3(5) ;  Load parameter 'accum' into R1
106 : ADD  3, 1, 0 ;  Store left operand into temporary register
107 : LD   1, 1(5) ;  Load parameter 'm' into R1
108 : ADD  2, 3, 0 ;  Restore left operand
109 : ADD  1, 2, 1 ;  R1 = left + right
110 : ST 1, 3(4) ;  Store argument 2 into callee frame
111 : LDA 6, 116(0) ;  Compute return address
112 : ST 6, 0(4) ;  Store return address in callee frame
113 : LDA  2, 5(4) ;  Compute end of frame
114 : ADD  5, 2, 0 ;  Advance pointer to end of frame
115 : LDA 7, 58(0) ;  Call multWithAccum
116 : LD 1, 4(5) ;  Load callee return value into R1
117 : LDC  4, 5(0) ;  Load frame size
118 : SUB  5, 5, 4 ;  Restore pointer
119 : LDA  7, 143(0) ;  Skip ELSE block
120 : LDA  4, 0(5) ;  Save callee frame base
121 : LD   1, 1(5) ;  Load parameter 'm' into R1
122 : ADD  3, 1, 0 ;  Store left operand into temporary register
123 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
124 : ADD  2, 3, 0 ;  Restore left operand
125 : MUL  1, 2, 1 ;  R1 = left * right
126 : ST 1, 1(4) ;  Store argument 0 into callee frame
127 : LD   1, 2(5) ;  Load parameter 'n' into R1
128 : ADD  3, 1, 0 ;  Store left operand into temporary register
129 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
130 : ADD  2, 3, 0 ;  Restore left operand
131 : DIV  1, 2, 1 ;  R1 = left / right
132 : ST 1, 2(4) ;  Store argument 1 into callee frame
133 : LD   1, 3(5) ;  Load parameter 'accum' into R1
134 : ST 1, 3(4) ;  Store argument 2 into callee frame
135 : LDA 6, 140(0) ;  Compute return address
136 : ST 6, 0(4) ;  Store return address in callee frame
137 : LDA  2, 5(4) ;  Compute end of frame
138 : ADD  5, 2, 0 ;  Advance pointer to end of frame
139 : LDA 7, 58(0) ;  Call multWithAccum
140 : LD 1, 4(5) ;  Load callee return value into R1
141 : LDC  4, 5(0) ;  Load frame size
142 : SUB  5, 5, 4 ;  Restore pointer
143 : ST   1, 4(5) ;  Store function result into stack frame
144 : LD   6, 0(5) ;  Load return address
145 : LDA  7, 0(6) ;  Return to caller
146 : LD   1, 1(5) ;  Load parameter 'm' into R1
147 : ADD  3, 1, 0 ;  Store left operand into temporary register
148 : LD   1, 1(5) ;  Load parameter 'm' into R1
149 : ADD  3, 1, 0 ;  Store left operand into temporary register
150 : LD   1, 2(5) ;  Load parameter 'n' into R1
151 : ADD  2, 3, 0 ;  Restore left operand
152 : DIV  1, 2, 1 ;  R1 = left / right
153 : ADD  3, 1, 0 ;  Store left operand into temporary register
154 : LD   1, 2(5) ;  Load parameter 'n' into R1
155 : ADD  2, 3, 0 ;  Restore left operand
156 : MUL  1, 2, 1 ;  R1 = left * right
157 : ADD  2, 3, 0 ;  Restore left operand
158 : SUB  1, 2, 1 ;  R1 = left - right
159 : ST   1, 3(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
