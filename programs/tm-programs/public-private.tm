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
15 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
16 : ADD  3, 1, 0 ;  Store left operand into temporary register
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : ADD  2, 3, 0 ;  Restore left operand
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
25 : LDA  4, 0(5) ;  Save callee frame base
26 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
27 : ST 1, 1(4) ;  Store argument 0 into callee frame
28 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
29 : ST 1, 2(4) ;  Store argument 1 into callee frame
30 : LDA 6, 35(0) ;  Compute return address
31 : ST 6, 0(4) ;  Store return address in callee frame
32 : LDA  2, 4(4) ;  Compute end of frame
33 : ADD  5, 2, 0 ;  Advance pointer to end of frame
34 : LDA 7, 161(0) ;  Call factor
35 : LD 1, 3(5) ;  Load callee return value into R1
36 : LDC  4, 4(0) ;  Load frame size
37 : SUB  5, 5, 4 ;  Restore pointer
38 : ST 1, 3(5) ;  Store result into current frame's return slot
39 : LDA  7, 54(0) ;  Skip ELSE block
40 : LDA  4, 0(5) ;  Save callee frame base
41 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
42 : ST 1, 1(4) ;  Store argument 0 into callee frame
43 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LDA 6, 50(0) ;  Compute return address
46 : ST 6, 0(4) ;  Store return address in callee frame
47 : LDA  2, 4(4) ;  Compute end of frame
48 : ADD  5, 2, 0 ;  Advance pointer to end of frame
49 : LDA 7, 161(0) ;  Call factor
50 : LD 1, 3(5) ;  Load callee return value into R1
51 : LDC  4, 4(0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST 1, 3(5) ;  Store result into current frame's return slot
54 : LD   1, 3(5) ;  Load return value into register 1
55 : LD  6, 0(5) ;  Load return address for main function into register 6
56 : LDA  7, 0(6) ;  Jump to return address of main function
57 : LD   1, 1(5) ;  Load parameter 'a' into R1
58 : ADD  3, 1, 0 ;  Store left operand into temporary register
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : ADD  2, 3, 0 ;  Restore left operand
61 : SUB  1, 2, 1 ;  left - right for less-than check
62 : JLT  1, 2(7) ;  If R1 < 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : JEQ  1, 69(0) ;  If condition is false, jump to ELSE
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : LDA  7, 86(0) ;  Skip ELSE block
69 : LDA  4, 0(5) ;  Save callee frame base
70 : LD   1, 1(5) ;  Load parameter 'a' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : SUB  1, 2, 1 ;  R1 = left - right
75 : ST 1, 1(4) ;  Store argument 0 into callee frame
76 : LD   1, 2(5) ;  Load parameter 'b' into R1
77 : ST 1, 2(4) ;  Store argument 1 into callee frame
78 : LDA 6, 83(0) ;  Compute return address
79 : ST 6, 0(4) ;  Store return address in callee frame
80 : LDA  2, 4(4) ;  Compute end of frame
81 : ADD  5, 2, 0 ;  Advance pointer to end of frame
82 : LDA 7, 57(0) ;  Call remainder
83 : LD 1, 3(5) ;  Load callee return value into R1
84 : LDC  4, 4(0) ;  Load frame size
85 : SUB  5, 5, 4 ;  Restore pointer
86 : ST   1, 3(5) ;  Store function result into stack frame
87 : LD   6, 0(5) ;  Load return address
88 : LDA  7, 0(6) ;  Return to caller
89 : LD   1, 2(5) ;  Load parameter 'b' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : SUB  1, 2, 1 ;  left - right for equality check
94 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
95 : LDC  1, 0(0) ;  false
96 : LDA  7, 1(7) ;  skip setting true
97 : LDC  1, 1(0) ;  true
98 : JEQ  1, 101(0) ;  If condition is false, jump to ELSE
99 : LD   1, 1(5) ;  Load parameter 'a' into R1
100 : LDA  7, 128(0) ;  Skip ELSE block
101 : LDA  4, 0(5) ;  Save callee frame base
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : ST 1, 1(4) ;  Store argument 0 into callee frame
104 : LDA  4, 0(5) ;  Save callee frame base
105 : LD   1, 1(5) ;  Load parameter 'a' into R1
106 : ST 1, 1(4) ;  Store argument 0 into callee frame
107 : LD   1, 2(5) ;  Load parameter 'b' into R1
108 : ST 1, 2(4) ;  Store argument 1 into callee frame
109 : LDA 6, 114(0) ;  Compute return address
110 : ST 6, 0(4) ;  Store return address in callee frame
111 : LDA  2, 4(4) ;  Compute end of frame
112 : ADD  5, 2, 0 ;  Advance pointer to end of frame
113 : LDA 7, 57(0) ;  Call remainder
114 : LD 1, 3(5) ;  Load callee return value into R1
115 : LDC  4, 4(0) ;  Load frame size
116 : SUB  5, 5, 4 ;  Restore pointer
117 : LDC  2, 4(0) ;  Stores arg frame size
118 : SUB  5, 5, 2 ;  Pop frame
119 : ST 1, 2(4) ;  Store argument 1 into callee frame
120 : LDA 6, 125(0) ;  Compute return address
121 : ST 6, 0(4) ;  Store return address in callee frame
122 : LDA  2, 4(4) ;  Compute end of frame
123 : ADD  5, 2, 0 ;  Advance pointer to end of frame
124 : LDA 7, 89(0) ;  Call gcd
125 : LD 1, 3(5) ;  Load callee return value into R1
126 : LDC  4, 4(0) ;  Load frame size
127 : SUB  5, 5, 4 ;  Restore pointer
128 : ST   1, 3(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
132 : ADD  3, 1, 0 ;  Store left operand into temporary register
133 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
134 : ADD  2, 3, 0 ;  Restore left operand
135 : DIV  1, 2, 1 ;  R1 = left / right
136 : LDA  4, 3(5) ;  Update DMEM pointer
137 : LDA 6, 141(0) ;  Compute return address
138 : ST   6, 0(4) ;  Store return address
139 : ADD  5, 4, 0 ;  Updated Pointer
140 : LDA  7, 12(0) ; Call print
141 : LDC  4, 3(0) ;  Load frame size
142 : SUB  5, 5, 4 ;  Restore pointer
143 : ST   1, 4(5) ;  Store function result into stack frame
144 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
147 : ADD  2, 3, 0 ;  Restore left operand
148 : DIV  1, 2, 1 ;  R1 = left / right
149 : LDA  4, 3(5) ;  Update DMEM pointer
150 : LDA 6, 154(0) ;  Compute return address
151 : ST   6, 0(4) ;  Store return address
152 : ADD  5, 4, 0 ;  Updated Pointer
153 : LDA  7, 12(0) ; Call print
154 : LDC  4, 3(0) ;  Load frame size
155 : SUB  5, 5, 4 ;  Restore pointer
156 : ST   1, 4(5) ;  Store function result into stack frame
157 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
158 : ST   1, 4(5) ;  Store function result into stack frame
159 : LD   6, 0(5) ;  Load return address
160 : LDA  7, 0(6) ;  Return to caller
161 : LDA  4, 0(5) ;  Save callee frame base
162 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
163 : ST 1, 1(4) ;  Store argument 0 into callee frame
164 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
165 : ST 1, 2(4) ;  Store argument 1 into callee frame
166 : LDA  4, 0(5) ;  Save callee frame base
167 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
168 : ST 1, 1(4) ;  Store argument 0 into callee frame
169 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
170 : ST 1, 2(4) ;  Store argument 1 into callee frame
171 : LDA 6, 176(0) ;  Compute return address
172 : ST 6, 0(4) ;  Store return address in callee frame
173 : LDA  2, 4(4) ;  Compute end of frame
174 : ADD  5, 2, 0 ;  Advance pointer to end of frame
175 : LDA 7, 89(0) ;  Call gcd
176 : LD 1, 3(5) ;  Load callee return value into R1
177 : LDC  4, 4(0) ;  Load frame size
178 : SUB  5, 5, 4 ;  Restore pointer
179 : LDC  2, 4(0) ;  Stores arg frame size
180 : SUB  5, 5, 2 ;  Pop frame
181 : ST 1, 3(4) ;  Store argument 2 into callee frame
182 : LDA 6, 187(0) ;  Compute return address
183 : ST 6, 0(4) ;  Store return address in callee frame
184 : LDA  2, 5(4) ;  Compute end of frame
185 : ADD  5, 2, 0 ;  Advance pointer to end of frame
186 : LDA 7, 131(0) ;  Call displayAndPrint
187 : LD 1, 4(5) ;  Load callee return value into R1
188 : LDC  4, 5(0) ;  Load frame size
189 : SUB  5, 5, 4 ;  Restore pointer
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
