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
13 : LDC  1, 0(0) ;  Load integer-literal value into register 1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : SUB  1, 2, 1 ;  left - right for equality check
19 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
20 : LDC  1, 0(0) ;  false
21 : LDA  7, 1(7) ;  skip setting true
22 : LDC  1, 1(0) ;  true
23 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
24 : LDA 4, 4(5) ; Base of callee frame
25 : LDC  1, 2147481647(0) ;  Load integer-literal value into register 1
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LDC  1, 2047483747(0) ;  Load integer-literal value into register 1
28 : ST 1, 2(4) ; Store argument 1 in callee
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame
32 : LDA 7, 163(0) ; Call factor
33 : LD   1, 3(5) ;  Load function result
34 : LDC   2, 4(0) ;  Caller frame size
35 : SUB   5, 5, 2 ;  Pop back to caller
36 : SUB   4, 4, 2 ;  Pop back to caller
37 : ST 1, 3(5) ; Store result into caller’s frame
38 : LDA  7, 53(0) ;  Skip ELSE block
39 : LDA 4, 4(5) ; Base of callee frame
40 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
41 : ST 1, 1(4) ; Store argument 0 in callee
42 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
43 : ST 1, 2(4) ; Store argument 1 in callee
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 163(0) ; Call factor
48 : LD   1, 3(5) ;  Load function result
49 : LDC   2, 4(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : ST 1, 3(5) ; Store result into caller’s frame
53 : LD   1, 3(5) ;  Load return value into register 1
54 : LD  6, 0(5) ;  Load return address for main function into register 6
55 : LDA  7, 0(6) ;  Jump to return address of main function
56 : LD   1, 2(5) ;  Load parameter 'b' into R1
57 : ST   1, 3(4) ;  Store right operand result into return value slot
58 : LD   1, 1(5) ;  Load parameter 'a' into R1
59 : ADD  2, 1, 0 ;  Move left operand to register 2
60 : LD   1, 3(4) ;  Return right operand back into register 1
61 : SUB  1, 2, 1 ;  left - right for less-than check
62 : JLT  1, 2(7) ;  If R1 < 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : JEQ  1, 69(0) ;  If condition is false, jump to ELSE
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : LDA  7, 87(0) ;  Skip ELSE block
69 : LDA 4, 4(5) ; Base of callee frame
70 : LD   1, 2(5) ;  Load parameter 'b' into R1
71 : ST   1, 3(4) ;  Store right operand result into return value slot
72 : LD   1, 1(5) ;  Load parameter 'a' into R1
73 : ADD  2, 1, 0 ;  Move left operand to register 2
74 : LD   1, 3(4) ;  Return right operand back into register 1
75 : SUB  1, 2, 1 ;  R1 = left - right
76 : ST 1, 1(4) ; Store argument 0 in callee
77 : LD   1, 2(5) ;  Load parameter 'b' into R1
78 : ST 1, 2(4) ; Store argument 1 in callee
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return in callee frame
81 : ADD 5, 4, 0 ; Push callee frame
82 : LDA 7, 56(0) ; Call remainder
83 : LD   1, 3(5) ;  Load function result
84 : LDC   2, 4(0) ;  Caller frame size
85 : SUB   5, 5, 2 ;  Pop back to caller
86 : SUB   4, 4, 2 ;  Pop back to caller
87 : ST   1, 3(5) ;  Store function result into stack frame
88 : LD   6, 0(5) ;  Load return address
89 : LDA  7, 0(6) ;  Return to caller
90 : LDC  1, 0(0) ;  Load integer-literal value into register 1
91 : ST   1, 3(4) ;  Store right operand result into return value slot
92 : LD   1, 2(5) ;  Load parameter 'b' into R1
93 : ADD  2, 1, 0 ;  Move left operand to register 2
94 : LD   1, 3(4) ;  Return right operand back into register 1
95 : SUB  1, 2, 1 ;  left - right for equality check
96 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
97 : LDC  1, 0(0) ;  false
98 : LDA  7, 1(7) ;  skip setting true
99 : LDC  1, 1(0) ;  true
100 : JEQ  1, 103(0) ;  If condition is false, jump to ELSE
101 : LD   1, 1(5) ;  Load parameter 'a' into R1
102 : LDA  7, 128(0) ;  Skip ELSE block
103 : LDA 4, 4(5) ; Base of callee frame
104 : LD   1, 2(5) ;  Load parameter 'b' into R1
105 : ST 1, 1(4) ; Store argument 0 in callee
106 : LDA 4, 4(5) ; Base of callee frame
107 : LD   1, 1(5) ;  Load parameter 'a' into R1
108 : ST 1, 1(4) ; Store argument 0 in callee
109 : LD   1, 2(5) ;  Load parameter 'b' into R1
110 : ST 1, 2(4) ; Store argument 1 in callee
111 : LDA 6, 115(0) ; Return address
112 : ST 6, 0(4) ; Store return in callee frame
113 : ADD 5, 4, 0 ; Push callee frame
114 : LDA 7, 56(0) ; Call remainder
115 : LD   1, 3(5) ;  Load function result
116 : LDC   2, 4(0) ;  Caller frame size
117 : SUB   5, 5, 2 ;  Pop back to caller
118 : SUB   4, 4, 2 ;  Pop back to caller
119 : ST 1, 2(4) ; Store argument 1 in callee
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return in callee frame
122 : ADD 5, 4, 0 ; Push callee frame
123 : LDA 7, 90(0) ; Call gcd
124 : LD   1, 3(5) ;  Load function result
125 : LDC   2, 4(0) ;  Caller frame size
126 : SUB   5, 5, 2 ;  Pop back to caller
127 : SUB   4, 4, 2 ;  Pop back to caller
128 : ST   1, 3(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
132 : ST   1, 3(4) ;  Store right operand result into return value slot
133 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
134 : ADD  2, 1, 0 ;  Move left operand to register 2
135 : LD   1, 3(4) ;  Return right operand back into register 1
136 : DIV  1, 2, 1 ;  R1 = left / right
137 : LDA 4, 3(5) ; Base of callee frame
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return addr in callee frame
140 : ADD 5, 4, 0 ; Push new frame
141 : LDA 7, 10(0) ; Call print
142 : LDC 2, 3(0) ; Caller frame size
143 : SUB 5, 5, 2 ; Pop frame
144 : ST   1, 4(5) ;  Store function result into stack frame
145 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
146 : ST   1, 3(4) ;  Store right operand result into return value slot
147 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
148 : ADD  2, 1, 0 ;  Move left operand to register 2
149 : LD   1, 3(4) ;  Return right operand back into register 1
150 : DIV  1, 2, 1 ;  R1 = left / right
151 : LDA 4, 3(5) ; Base of callee frame
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return addr in callee frame
154 : ADD 5, 4, 0 ; Push new frame
155 : LDA 7, 10(0) ; Call print
156 : LDC 2, 3(0) ; Caller frame size
157 : SUB 5, 5, 2 ; Pop frame
158 : ST   1, 4(5) ;  Store function result into stack frame
159 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
160 : ST   1, 4(5) ;  Store function result into stack frame
161 : LD   6, 0(5) ;  Load return address
162 : LDA  7, 0(6) ;  Return to caller
163 : LDA 4, 5(5) ; Base of callee frame
164 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
165 : ST 1, 1(4) ; Store argument 0 in callee
166 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
167 : ST 1, 2(4) ; Store argument 1 in callee
168 : LDA 4, 4(5) ; Base of callee frame
169 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
170 : ST 1, 1(4) ; Store argument 0 in callee
171 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
172 : ST 1, 2(4) ; Store argument 1 in callee
173 : LDA 6, 177(0) ; Return address
174 : ST 6, 0(4) ; Store return in callee frame
175 : ADD 5, 4, 0 ; Push callee frame
176 : LDA 7, 90(0) ; Call gcd
177 : LD   1, 3(5) ;  Load function result
178 : LDC   2, 4(0) ;  Caller frame size
179 : SUB   5, 5, 2 ;  Pop back to caller
180 : SUB   4, 4, 2 ;  Pop back to caller
181 : ST 1, 3(4) ; Store argument 2 in callee
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 131(0) ; Call displayAndPrint
186 : LD   1, 4(5) ;  Load function result
187 : LDC   2, 5(0) ;  Caller frame size
188 : SUB   5, 5, 2 ;  Pop back to caller
189 : SUB   4, 4, 2 ;  Pop back to caller
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
