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
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
22 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
23 : LDA  3, 4(5) ; Restore Callee frame base
24 : ST 1, 1(3) ;  Store argument 0 into callee frame
25 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
26 : LDA  3, 4(5) ; Restore Callee frame base
27 : ST 1, 2(3) ;  Store argument 1 into callee frame
28 : LDA  3, 4(5) ; Restore Call frame base
29 : LDA 6, 33(0) ;  Compute return address
30 : ST 6, 0(3) ;  Store return address in callee frame
31 : ADD  5, 3, 0 ;  Update pointer
32 : LDA 7, 156(0) ;  Call factor
33 : LD 1, 3(5) ;  Load callee return value into R1
34 : LDC  4, 4(0) ;  Load frame size
35 : SUB  5, 5, 4 ;  Restore pointer
36 : ST 1, 3(5) ;  Store result into current frame's return slot
37 : LDA  7, 53(0) ;  Skip ELSE block
38 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
39 : LDA  3, 4(5) ; Restore Callee frame base
40 : ST 1, 1(3) ;  Store argument 0 into callee frame
41 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
42 : LDA  3, 4(5) ; Restore Callee frame base
43 : ST 1, 2(3) ;  Store argument 1 into callee frame
44 : LDA  3, 4(5) ; Restore Call frame base
45 : LDA 6, 49(0) ;  Compute return address
46 : ST 6, 0(3) ;  Store return address in callee frame
47 : ADD  5, 3, 0 ;  Update pointer
48 : LDA 7, 156(0) ;  Call factor
49 : LD 1, 3(5) ;  Load callee return value into R1
50 : LDC  4, 4(0) ;  Load frame size
51 : SUB  5, 5, 4 ;  Restore pointer
52 : ST 1, 3(5) ;  Store result into current frame's return slot
53 : LD   1, 3(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LD   1, 1(5) ;  Load parameter 'a' into R1
57 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
58 : LD   1, 2(5) ;  Load parameter 'b' into R1
59 : SUB  1, 2, 1 ;  left - right for less-than check
60 : JLT  1, 2(7) ;  If R1 < 0, jump to true
61 : LDC  1, 0(0) ;  false
62 : LDA  7, 1(7) ;  skip setting true
63 : LDC  1, 1(0) ;  true
64 : JEQ  1, 67(0) ;  If condition is false, jump to ELSE
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : LDA  7, 84(0) ;  Skip ELSE block
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LD   1, 2(5) ;  Load parameter 'b' into R1
70 : SUB  1, 2, 1 ;  R1 = left - right
71 : LDA  3, 4(5) ; Restore Callee frame base
72 : ST 1, 1(3) ;  Store argument 0 into callee frame
73 : LD   1, 2(5) ;  Load parameter 'b' into R1
74 : LDA  3, 4(5) ; Restore Callee frame base
75 : ST 1, 2(3) ;  Store argument 1 into callee frame
76 : LDA  3, 4(5) ; Restore Call frame base
77 : LDA 6, 81(0) ;  Compute return address
78 : ST 6, 0(3) ;  Store return address in callee frame
79 : ADD  5, 3, 0 ;  Update pointer
80 : LDA 7, 56(0) ;  Call remainder
81 : LD 1, 3(5) ;  Load callee return value into R1
82 : LDC  4, 4(0) ;  Load frame size
83 : SUB  5, 5, 4 ;  Restore pointer
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 2(5) ;  Load parameter 'b' into R1
88 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
89 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
90 : SUB  1, 2, 1 ;  left - right for equality check
91 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
92 : LDC  1, 0(0) ;  false
93 : LDA  7, 1(7) ;  skip setting true
94 : LDC  1, 1(0) ;  true
95 : JEQ  1, 98(0) ;  If condition is false, jump to ELSE
96 : LD   1, 1(5) ;  Load parameter 'a' into R1
97 : LDA  7, 125(0) ;  Skip ELSE block
98 : LD   1, 2(5) ;  Load parameter 'b' into R1
99 : LDA  3, 4(5) ; Restore Callee frame base
100 : ST 1, 1(3) ;  Store argument 0 into callee frame
101 : LD   1, 1(5) ;  Load parameter 'a' into R1
102 : LDA  3, 4(5) ; Restore Callee frame base
103 : ST 1, 1(3) ;  Store argument 0 into callee frame
104 : LD   1, 2(5) ;  Load parameter 'b' into R1
105 : LDA  3, 4(5) ; Restore Callee frame base
106 : ST 1, 2(3) ;  Store argument 1 into callee frame
107 : LDA  3, 4(5) ; Restore Call frame base
108 : LDA 6, 112(0) ;  Compute return address
109 : ST 6, 0(3) ;  Store return address in callee frame
110 : ADD  5, 3, 0 ;  Update pointer
111 : LDA 7, 56(0) ;  Call remainder
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDC  4, 4(0) ;  Load frame size
114 : SUB  5, 5, 4 ;  Restore pointer
115 : LDA  3, 4(5) ; Restore Callee frame base
116 : ST 1, 2(3) ;  Store argument 1 into callee frame
117 : LDA  3, 4(5) ; Restore Call frame base
118 : LDA 6, 122(0) ;  Compute return address
119 : ST 6, 0(3) ;  Store return address in callee frame
120 : ADD  5, 3, 0 ;  Update pointer
121 : LDA 7, 87(0) ;  Call gcd
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDC  4, 4(0) ;  Load frame size
124 : SUB  5, 5, 4 ;  Restore pointer
125 : ST   1, 3(5) ;  Store function result into stack frame
126 : LD   6, 0(5) ;  Load return address
127 : LDA  7, 0(6) ;  Return to caller
128 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
129 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
130 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
131 : DIV  1, 2, 1 ;  R1 = left / right
132 : LDA  3, 5(5) ;  Update DMEM pointer
133 : LDA 6, 137(0) ;  Compute return address
134 : ST   6, 0(3) ;  Store return address
135 : ADD  5, 3, 0 ;  Updated Pointer
136 : LDA  7, 10(0) ; Call print
137 : LDC  4, 5(0) ;  Load frame size
138 : SUB  5, 5, 4 ;  Restore pointer
139 : ST   1, 4(5) ;  Store function result into stack frame
140 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
141 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
142 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
143 : DIV  1, 2, 1 ;  R1 = left / right
144 : LDA  3, 5(5) ;  Update DMEM pointer
145 : LDA 6, 149(0) ;  Compute return address
146 : ST   6, 0(3) ;  Store return address
147 : ADD  5, 3, 0 ;  Updated Pointer
148 : LDA  7, 10(0) ; Call print
149 : LDC  4, 5(0) ;  Load frame size
150 : SUB  5, 5, 4 ;  Restore pointer
151 : ST   1, 4(5) ;  Store function result into stack frame
152 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
153 : ST   1, 4(5) ;  Store function result into stack frame
154 : LD   6, 0(5) ;  Load return address
155 : LDA  7, 0(6) ;  Return to caller
156 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
157 : LDA  3, 4(5) ; Restore Callee frame base
158 : ST 1, 1(3) ;  Store argument 0 into callee frame
159 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
160 : LDA  3, 4(5) ; Restore Callee frame base
161 : ST 1, 2(3) ;  Store argument 1 into callee frame
162 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
163 : LDA  3, 4(5) ; Restore Callee frame base
164 : ST 1, 1(3) ;  Store argument 0 into callee frame
165 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
166 : LDA  3, 4(5) ; Restore Callee frame base
167 : ST 1, 2(3) ;  Store argument 1 into callee frame
168 : LDA  3, 4(5) ; Restore Call frame base
169 : LDA 6, 173(0) ;  Compute return address
170 : ST 6, 0(3) ;  Store return address in callee frame
171 : ADD  5, 3, 0 ;  Update pointer
172 : LDA 7, 87(0) ;  Call gcd
173 : LD 1, 3(5) ;  Load callee return value into R1
174 : LDC  4, 4(0) ;  Load frame size
175 : SUB  5, 5, 4 ;  Restore pointer
176 : LDA  3, 4(5) ; Restore Callee frame base
177 : ST 1, 3(3) ;  Store argument 2 into callee frame
178 : LDA  3, 4(5) ; Restore Call frame base
179 : LDA 6, 183(0) ;  Compute return address
180 : ST 6, 0(3) ;  Store return address in callee frame
181 : ADD  5, 3, 0 ;  Update pointer
182 : LDA 7, 128(0) ;  Call displayAndPrint
183 : LD 1, 4(5) ;  Load callee return value into R1
184 : LDC  4, 4(0) ;  Load frame size
185 : SUB  5, 5, 4 ;  Restore pointer
186 : ST   1, 3(5) ;  Store function result into stack frame
187 : LD   6, 0(5) ;  Load return address
188 : LDA  7, 0(6) ;  Return to caller
