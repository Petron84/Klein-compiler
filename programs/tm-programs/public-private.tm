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
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
23 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
24 : LDA  4, 4(5) ; Restore Callee frame base
25 : ST 1, 1(4) ;  Store argument 0 into callee frame
26 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
27 : LDA  4, 4(5) ; Restore Callee frame base
28 : ST 1, 2(4) ;  Store argument 1 into callee frame
29 : LDA  4, 4(5) ; Restore Call frame base
30 : LDA 6, 34(0) ;  Compute return address
31 : ST 6, 0(4) ;  Store return address in callee frame
32 : ADD  5, 4, 0 ;  Update pointer
33 : LDA 7, 162(0) ;  Call factor
34 : LD 1, 3(5) ;  Load callee return value into R1
35 : LDC  4, 4(0) ;  Load frame size
36 : SUB  5, 5, 4 ;  Restore pointer
37 : ST 1, 3(5) ;  Store result into current frame's return slot
38 : LDA  7, 54(0) ;  Skip ELSE block
39 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
40 : LDA  4, 4(5) ; Restore Callee frame base
41 : ST 1, 1(4) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
43 : LDA  4, 4(5) ; Restore Callee frame base
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LDA  4, 4(5) ; Restore Call frame base
46 : LDA 6, 50(0) ;  Compute return address
47 : ST 6, 0(4) ;  Store return address in callee frame
48 : ADD  5, 4, 0 ;  Update pointer
49 : LDA 7, 162(0) ;  Call factor
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
68 : LDA  7, 87(0) ;  Skip ELSE block
69 : LD   1, 1(5) ;  Load parameter 'a' into R1
70 : ADD  3, 1, 0 ;  Store left operand into temporary register
71 : LD   1, 2(5) ;  Load parameter 'b' into R1
72 : ADD  2, 3, 0 ;  Restore left operand
73 : SUB  1, 2, 1 ;  R1 = left - right
74 : LDA  4, 4(5) ; Restore Callee frame base
75 : ST 1, 1(4) ;  Store argument 0 into callee frame
76 : LD   1, 2(5) ;  Load parameter 'b' into R1
77 : LDA  4, 4(5) ; Restore Callee frame base
78 : ST 1, 2(4) ;  Store argument 1 into callee frame
79 : LDA  4, 4(5) ; Restore Call frame base
80 : LDA 6, 84(0) ;  Compute return address
81 : ST 6, 0(4) ;  Store return address in callee frame
82 : ADD  5, 4, 0 ;  Update pointer
83 : LDA 7, 57(0) ;  Call remainder
84 : LD 1, 3(5) ;  Load callee return value into R1
85 : LDC  4, 4(0) ;  Load frame size
86 : SUB  5, 5, 4 ;  Restore pointer
87 : ST   1, 3(5) ;  Store function result into stack frame
88 : LD   6, 0(5) ;  Load return address
89 : LDA  7, 0(6) ;  Return to caller
90 : LD   1, 2(5) ;  Load parameter 'b' into R1
91 : ADD  3, 1, 0 ;  Store left operand into temporary register
92 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
93 : ADD  2, 3, 0 ;  Restore left operand
94 : SUB  1, 2, 1 ;  left - right for equality check
95 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
96 : LDC  1, 0(0) ;  false
97 : LDA  7, 1(7) ;  skip setting true
98 : LDC  1, 1(0) ;  true
99 : JEQ  1, 102(0) ;  If condition is false, jump to ELSE
100 : LD   1, 1(5) ;  Load parameter 'a' into R1
101 : LDA  7, 129(0) ;  Skip ELSE block
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : LDA  4, 4(5) ; Restore Callee frame base
104 : ST 1, 1(4) ;  Store argument 0 into callee frame
105 : LD   1, 1(5) ;  Load parameter 'a' into R1
106 : LDA  4, 4(5) ; Restore Callee frame base
107 : ST 1, 1(4) ;  Store argument 0 into callee frame
108 : LD   1, 2(5) ;  Load parameter 'b' into R1
109 : LDA  4, 4(5) ; Restore Callee frame base
110 : ST 1, 2(4) ;  Store argument 1 into callee frame
111 : LDA  4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD  5, 4, 0 ;  Update pointer
115 : LDA 7, 57(0) ;  Call remainder
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC  4, 4(0) ;  Load frame size
118 : SUB  5, 5, 4 ;  Restore pointer
119 : LDA  4, 4(5) ; Restore Callee frame base
120 : ST 1, 2(4) ;  Store argument 1 into callee frame
121 : LDA  4, 4(5) ; Restore Call frame base
122 : LDA 6, 126(0) ;  Compute return address
123 : ST 6, 0(4) ;  Store return address in callee frame
124 : ADD  5, 4, 0 ;  Update pointer
125 : LDA 7, 90(0) ;  Call gcd
126 : LD 1, 3(5) ;  Load callee return value into R1
127 : LDC  4, 4(0) ;  Load frame size
128 : SUB  5, 5, 4 ;  Restore pointer
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
133 : ADD  3, 1, 0 ;  Store left operand into temporary register
134 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
135 : ADD  2, 3, 0 ;  Restore left operand
136 : DIV  1, 2, 1 ;  R1 = left / right
137 : LDA  4, 3(5) ;  Update DMEM pointer
138 : LDA 6, 142(0) ;  Compute return address
139 : ST   6, 0(4) ;  Store return address
140 : ADD  5, 4, 0 ;  Updated Pointer
141 : LDA  7, 10(0) ; Call print
142 : LDC  4, 3(0) ;  Load frame size
143 : SUB  5, 5, 4 ;  Restore pointer
144 : ST   1, 4(5) ;  Store function result into stack frame
145 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
146 : ADD  3, 1, 0 ;  Store left operand into temporary register
147 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
148 : ADD  2, 3, 0 ;  Restore left operand
149 : DIV  1, 2, 1 ;  R1 = left / right
150 : LDA  4, 3(5) ;  Update DMEM pointer
151 : LDA 6, 155(0) ;  Compute return address
152 : ST   6, 0(4) ;  Store return address
153 : ADD  5, 4, 0 ;  Updated Pointer
154 : LDA  7, 10(0) ; Call print
155 : LDC  4, 3(0) ;  Load frame size
156 : SUB  5, 5, 4 ;  Restore pointer
157 : ST   1, 4(5) ;  Store function result into stack frame
158 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
159 : ST   1, 4(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
162 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
163 : LDA  4, 5(5) ; Restore Callee frame base
164 : ST 1, 1(4) ;  Store argument 0 into callee frame
165 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
166 : LDA  4, 5(5) ; Restore Callee frame base
167 : ST 1, 2(4) ;  Store argument 1 into callee frame
168 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
169 : LDA  4, 4(5) ; Restore Callee frame base
170 : ST 1, 1(4) ;  Store argument 0 into callee frame
171 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
172 : LDA  4, 4(5) ; Restore Callee frame base
173 : ST 1, 2(4) ;  Store argument 1 into callee frame
174 : LDA  4, 4(5) ; Restore Call frame base
175 : LDA 6, 179(0) ;  Compute return address
176 : ST 6, 0(4) ;  Store return address in callee frame
177 : ADD  5, 4, 0 ;  Update pointer
178 : LDA 7, 90(0) ;  Call gcd
179 : LD 1, 3(5) ;  Load callee return value into R1
180 : LDC  4, 4(0) ;  Load frame size
181 : SUB  5, 5, 4 ;  Restore pointer
182 : LDA  4, 5(5) ; Restore Callee frame base
183 : ST 1, 3(4) ;  Store argument 2 into callee frame
184 : LDA  4, 5(5) ; Restore Call frame base
185 : LDA 6, 189(0) ;  Compute return address
186 : ST 6, 0(4) ;  Store return address in callee frame
187 : ADD  5, 4, 0 ;  Update pointer
188 : LDA 7, 132(0) ;  Call displayAndPrint
189 : LD 1, 4(5) ;  Load callee return value into R1
190 : LDC  4, 5(0) ;  Load frame size
191 : SUB  5, 5, 4 ;  Restore pointer
192 : ST   1, 3(5) ;  Store function result into stack frame
193 : LD   6, 0(5) ;  Load return address
194 : LDA  7, 0(6) ;  Return to caller
