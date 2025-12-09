0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 4(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDC  4, 2(0) ;  Load size of main stack frame
4 : ADD  5, 5, 4 ;  Advance R5 to next frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA  4, 0(5) ;  Save callee frame base
12 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ;  Store argument 1 into callee frame
16 : LDA 6, 21(0) ;  Compute return address
17 : ST 6, 0(4) ;  Store return address in callee frame
18 : LDA  2, 4(4) ;  Compute end of frame
19 : ADD  5, 2, 0 ;  Advance pointer to end of frame
20 : LDA 7, 28(0) ;  Call sumPrimes
21 : LD 1, 3(5) ;  Load callee return value into R1
22 : LDC  4, 4(0) ;  Load frame size
23 : SUB  5, 5, 4 ;  Restore pointer
24 : ST 1, 1(5) ;  Store result into current frame's return slot
25 : LD   1, 1(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 2(5) ;  Load parameter 'b' into R1
29 : ADD  3, 1, 0 ;  Store left operand into temporary register
30 : LD   1, 1(5) ;  Load parameter 'a' into R1
31 : ADD  2, 3, 0 ;  Restore left operand
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
39 : LDA  7, 91(0) ;  Skip ELSE block
40 : LDA  4, 0(5) ;  Save callee frame base
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : ST 1, 1(4) ;  Store argument 0 into callee frame
43 : LDA 6, 48(0) ;  Compute return address
44 : ST 6, 0(4) ;  Store return address in callee frame
45 : LDA  2, 3(4) ;  Compute end of frame
46 : ADD  5, 2, 0 ;  Advance pointer to end of frame
47 : LDA 7, 94(0) ;  Call isPrime
48 : LD 1, 2(5) ;  Load callee return value into R1
49 : LDC  4, 3(0) ;  Load frame size
50 : SUB  5, 5, 4 ;  Restore pointer
51 : JEQ  1, 74(0) ;  If condition is false, jump to ELSE
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ADD  3, 1, 0 ;  Store left operand into temporary register
54 : LDA  4, 0(5) ;  Save callee frame base
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : ADD  1, 2, 1 ;  R1 = left + right
60 : ST 1, 1(4) ;  Store argument 0 into callee frame
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ST 1, 2(4) ;  Store argument 1 into callee frame
63 : LDA 6, 68(0) ;  Compute return address
64 : ST 6, 0(4) ;  Store return address in callee frame
65 : LDA  2, 4(4) ;  Compute end of frame
66 : ADD  5, 2, 0 ;  Advance pointer to end of frame
67 : LDA 7, 28(0) ;  Call sumPrimes
68 : LD 1, 3(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ADD  2, 3, 0 ;  Restore left operand
72 : ADD  1, 2, 1 ;  R1 = left + right
73 : LDA  7, 91(0) ;  Skip ELSE block
74 : LDA  4, 0(5) ;  Save callee frame base
75 : LD   1, 1(5) ;  Load parameter 'a' into R1
76 : ADD  3, 1, 0 ;  Store left operand into temporary register
77 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
78 : ADD  2, 3, 0 ;  Restore left operand
79 : ADD  1, 2, 1 ;  R1 = left + right
80 : ST 1, 1(4) ;  Store argument 0 into callee frame
81 : LD   1, 2(5) ;  Load parameter 'b' into R1
82 : ST 1, 2(4) ;  Store argument 1 into callee frame
83 : LDA 6, 88(0) ;  Compute return address
84 : ST 6, 0(4) ;  Store return address in callee frame
85 : LDA  2, 4(4) ;  Compute end of frame
86 : ADD  5, 2, 0 ;  Advance pointer to end of frame
87 : LDA 7, 28(0) ;  Call sumPrimes
88 : LD 1, 3(5) ;  Load callee return value into R1
89 : LDC  4, 4(0) ;  Load frame size
90 : SUB  5, 5, 4 ;  Restore pointer
91 : ST   1, 3(5) ;  Store function result into stack frame
92 : LD   6, 0(5) ;  Load return address
93 : LDA  7, 0(6) ;  Return to caller
94 : LD   1, 1(5) ;  Load parameter 'n' into R1
95 : ADD  3, 1, 0 ;  Store left operand into temporary register
96 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
97 : ADD  2, 3, 0 ;  Restore left operand
98 : SUB  1, 2, 1 ;  left - right for less-than check
99 : JLT  1, 2(7) ;  If R1 < 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : JEQ  1, 106(0) ;  If condition is false, jump to ELSE
104 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
105 : LDA  7, 167(0) ;  Skip ELSE block
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : SUB  1, 2, 1 ;  left - right for equality check
111 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
112 : LDC  1, 0(0) ;  false
113 : LDA  7, 1(7) ;  skip setting true
114 : LDC  1, 1(0) ;  true
115 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
116 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
117 : LDA  7, 167(0) ;  Skip ELSE block
118 : LDA  4, 0(5) ;  Save callee frame base
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : ST 1, 1(4) ;  Store argument 0 into callee frame
121 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
122 : ST 1, 2(4) ;  Store argument 1 into callee frame
123 : LDA 6, 128(0) ;  Compute return address
124 : ST 6, 0(4) ;  Store return address in callee frame
125 : LDA  2, 4(4) ;  Compute end of frame
126 : ADD  5, 2, 0 ;  Advance pointer to end of frame
127 : LDA 7, 170(0) ;  Call divisible
128 : LD 1, 3(5) ;  Load callee return value into R1
129 : LDC  4, 4(0) ;  Load frame size
130 : SUB  5, 5, 4 ;  Restore pointer
131 : ADD  3, 1, 0 ;  Store left operand into temporary register
132 : LDA  4, 0(5) ;  Save callee frame base
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 1(4) ;  Store argument 0 into callee frame
135 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
136 : ST 1, 2(4) ;  Store argument 1 into callee frame
137 : LDA 6, 142(0) ;  Compute return address
138 : ST 6, 0(4) ;  Store return address in callee frame
139 : LDA  2, 4(4) ;  Compute end of frame
140 : ADD  5, 2, 0 ;  Advance pointer to end of frame
141 : LDA 7, 170(0) ;  Call divisible
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC  4, 4(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : ADD  2, 3, 0 ;  Restore left operand
146 : ADD  1, 2, 1 ;  R1 = left OR right
147 : ADD  3, 1, 0 ;  Store left operand into temporary register
148 : LDA  4, 0(5) ;  Save callee frame base
149 : LD   1, 1(5) ;  Load parameter 'n' into R1
150 : ST 1, 1(4) ;  Store argument 0 into callee frame
151 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
152 : ST 1, 2(4) ;  Store argument 1 into callee frame
153 : LDA 6, 158(0) ;  Compute return address
154 : ST 6, 0(4) ;  Store return address in callee frame
155 : LDA  2, 4(4) ;  Compute end of frame
156 : ADD  5, 2, 0 ;  Advance pointer to end of frame
157 : LDA 7, 170(0) ;  Call divisible
158 : LD 1, 3(5) ;  Load callee return value into R1
159 : LDC  4, 4(0) ;  Load frame size
160 : SUB  5, 5, 4 ;  Restore pointer
161 : ADD  2, 3, 0 ;  Restore left operand
162 : ADD  1, 2, 1 ;  R1 = left OR right
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
165 : LDA  7, 167(0) ;  Skip ELSE block
166 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
167 : ST   1, 2(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
170 : LD   1, 1(5) ;  Load parameter 'x' into R1
171 : ADD  3, 1, 0 ;  Store left operand into temporary register
172 : LD   1, 2(5) ;  Load parameter 'y' into R1
173 : ADD  2, 3, 0 ;  Restore left operand
174 : DIV  1, 2, 1 ;  R1 = left / right
175 : ADD  3, 1, 0 ;  Store left operand into temporary register
176 : LD   1, 2(5) ;  Load parameter 'y' into R1
177 : ADD  2, 3, 0 ;  Restore left operand
178 : MUL  1, 2, 1 ;  R1 = left * right
179 : ADD  3, 1, 0 ;  Store left operand into temporary register
180 : LD   1, 1(5) ;  Load parameter 'x' into R1
181 : ADD  2, 3, 0 ;  Restore left operand
182 : SUB  1, 2, 1 ;  left - right for equality check
183 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
184 : LDC  1, 0(0) ;  false
185 : LDA  7, 1(7) ;  skip setting true
186 : LDC  1, 1(0) ;  true
187 : JEQ  1, 190(0) ;  If condition is false, jump to ELSE
188 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
189 : LDA  7, 191(0) ;  Skip ELSE block
190 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
191 : ST   1, 3(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
