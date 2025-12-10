0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LD   2, 2(0) ;  Load CLI arg 2 into register
5 : ST   2, 2(5) ;  Store the argument into stack frame
6 : LDA  6, 2(7) ;  Calculate return address
7 : ST   6, 0(5) ;  Store return address in main stack frame
8 : LDA  7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT  1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT  1, 0, 0 ;  Hardcoded print function
12 : LD   6, 0(5) ;  Load return addess from stack frame.
13 : LDA  7, 0(6) ;  Jump to return address.
14 : LDC  1, 0(0) ;  Load integer-literal value into register 1
15 : ST   1, 3(4) ;  Store right operand result into return value slot
16 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
17 : ADD  2, 1, 0 ;  Move left operand to register 2
18 : LD   1, 3(4) ;  Return right operand back into register 1
19 : SUB  1, 2, 1 ;  left - right for equality check
20 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
21 : LDC  1, 0(0) ;  false
22 : LDA  7, 1(7) ;  skip setting true
23 : LDC  1, 1(0) ;  true
24 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
25 : LDA 4, 4(5) ; Base of callee frame
26 : LDC  1, 2147481647(0) ;  Load integer-literal value into register 1
27 : ST 1, 1(4) ; Store argument 0 in callee
28 : LDC  1, 2047483747(0) ;  Load integer-literal value into register 1
29 : ST 1, 2(4) ; Store argument 1 in callee
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame
33 : LDA 7, 164(0) ; Call factor
34 : LD   1, 3(5) ;  Load function result
35 : LDC   2, 4(0) ;  Caller frame size
36 : SUB   5, 5, 2 ;  Pop back to caller
37 : SUB   4, 4, 2 ;  Pop back to caller
38 : ST 1, 3(5) ; Store result into caller’s frame
39 : LDA  7, 54(0) ;  Skip ELSE block
40 : LDA 4, 4(5) ; Base of callee frame
41 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
44 : ST 1, 2(4) ; Store argument 1 in callee
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame
48 : LDA 7, 164(0) ; Call factor
49 : LD   1, 3(5) ;  Load function result
50 : LDC   2, 4(0) ;  Caller frame size
51 : SUB   5, 5, 2 ;  Pop back to caller
52 : SUB   4, 4, 2 ;  Pop back to caller
53 : ST 1, 3(5) ; Store result into caller’s frame
54 : LD   1, 3(5) ;  Load return value into register 1
55 : LD  6, 0(5) ;  Load return address for main function into register 6
56 : LDA  7, 0(6) ;  Jump to return address of main function
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ST   1, 3(4) ;  Store right operand result into return value slot
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ADD  2, 1, 0 ;  Move left operand to register 2
61 : LD   1, 3(4) ;  Return right operand back into register 1
62 : SUB  1, 2, 1 ;  left - right for less-than check
63 : JLT  1, 2(7) ;  If R1 < 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
68 : LD   1, 1(5) ;  Load parameter 'a' into R1
69 : LDA  7, 88(0) ;  Skip ELSE block
70 : LDA 4, 4(5) ; Base of callee frame
71 : LD   1, 2(5) ;  Load parameter 'b' into R1
72 : ST   1, 3(4) ;  Store right operand result into return value slot
73 : LD   1, 1(5) ;  Load parameter 'a' into R1
74 : ADD  2, 1, 0 ;  Move left operand to register 2
75 : LD   1, 3(4) ;  Return right operand back into register 1
76 : SUB  1, 2, 1 ;  R1 = left - right
77 : ST 1, 1(4) ; Store argument 0 in callee
78 : LD   1, 2(5) ;  Load parameter 'b' into R1
79 : ST 1, 2(4) ; Store argument 1 in callee
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame
83 : LDA 7, 57(0) ; Call remainder
84 : LD   1, 3(5) ;  Load function result
85 : LDC   2, 4(0) ;  Caller frame size
86 : SUB   5, 5, 2 ;  Pop back to caller
87 : SUB   4, 4, 2 ;  Pop back to caller
88 : ST   1, 3(5) ;  Store function result into stack frame
89 : LD   6, 0(5) ;  Load return address
90 : LDA  7, 0(6) ;  Return to caller
91 : LDC  1, 0(0) ;  Load integer-literal value into register 1
92 : ST   1, 3(4) ;  Store right operand result into return value slot
93 : LD   1, 2(5) ;  Load parameter 'b' into R1
94 : ADD  2, 1, 0 ;  Move left operand to register 2
95 : LD   1, 3(4) ;  Return right operand back into register 1
96 : SUB  1, 2, 1 ;  left - right for equality check
97 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
98 : LDC  1, 0(0) ;  false
99 : LDA  7, 1(7) ;  skip setting true
100 : LDC  1, 1(0) ;  true
101 : JEQ  1, 104(0) ;  If condition is false, jump to ELSE
102 : LD   1, 1(5) ;  Load parameter 'a' into R1
103 : LDA  7, 129(0) ;  Skip ELSE block
104 : LDA 4, 4(5) ; Base of callee frame
105 : LD   1, 2(5) ;  Load parameter 'b' into R1
106 : ST 1, 1(4) ; Store argument 0 in callee
107 : LDA 4, 4(5) ; Base of callee frame
108 : LD   1, 1(5) ;  Load parameter 'a' into R1
109 : ST 1, 1(4) ; Store argument 0 in callee
110 : LD   1, 2(5) ;  Load parameter 'b' into R1
111 : ST 1, 2(4) ; Store argument 1 in callee
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 57(0) ; Call remainder
116 : LD   1, 3(5) ;  Load function result
117 : LDC   2, 4(0) ;  Caller frame size
118 : SUB   5, 5, 2 ;  Pop back to caller
119 : SUB   4, 4, 2 ;  Pop back to caller
120 : ST 1, 2(4) ; Store argument 1 in callee
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame
124 : LDA 7, 91(0) ; Call gcd
125 : LD   1, 3(5) ;  Load function result
126 : LDC   2, 4(0) ;  Caller frame size
127 : SUB   5, 5, 2 ;  Pop back to caller
128 : SUB   4, 4, 2 ;  Pop back to caller
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
133 : ST   1, 3(4) ;  Store right operand result into return value slot
134 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
135 : ADD  2, 1, 0 ;  Move left operand to register 2
136 : LD   1, 3(4) ;  Return right operand back into register 1
137 : DIV  1, 2, 1 ;  R1 = left / right
138 : LDA 4, 3(5) ; Base of callee frame
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return addr in callee frame
141 : ADD 5, 4, 0 ; Push new frame
142 : LDA 7, 11(0) ; Call print
143 : LDC 2, 3(0) ; Caller frame size
144 : SUB 5, 5, 2 ; Pop frame
145 : ST   1, 4(5) ;  Store function result into stack frame
146 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
147 : ST   1, 3(4) ;  Store right operand result into return value slot
148 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
149 : ADD  2, 1, 0 ;  Move left operand to register 2
150 : LD   1, 3(4) ;  Return right operand back into register 1
151 : DIV  1, 2, 1 ;  R1 = left / right
152 : LDA 4, 3(5) ; Base of callee frame
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return addr in callee frame
155 : ADD 5, 4, 0 ; Push new frame
156 : LDA 7, 11(0) ; Call print
157 : LDC 2, 3(0) ; Caller frame size
158 : SUB 5, 5, 2 ; Pop frame
159 : ST   1, 4(5) ;  Store function result into stack frame
160 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
161 : ST   1, 4(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
164 : LDA 4, 5(5) ; Base of callee frame
165 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
166 : ST 1, 1(4) ; Store argument 0 in callee
167 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
168 : ST 1, 2(4) ; Store argument 1 in callee
169 : LDA 4, 4(5) ; Base of callee frame
170 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
171 : ST 1, 1(4) ; Store argument 0 in callee
172 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
173 : ST 1, 2(4) ; Store argument 1 in callee
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return in callee frame
176 : ADD 5, 4, 0 ; Push callee frame
177 : LDA 7, 91(0) ; Call gcd
178 : LD   1, 3(5) ;  Load function result
179 : LDC   2, 4(0) ;  Caller frame size
180 : SUB   5, 5, 2 ;  Pop back to caller
181 : SUB   4, 4, 2 ;  Pop back to caller
182 : ST 1, 3(4) ; Store argument 2 in callee
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return in callee frame
185 : ADD 5, 4, 0 ; Push callee frame
186 : LDA 7, 132(0) ; Call displayAndPrint
187 : LD   1, 4(5) ;  Load function result
188 : LDC   2, 5(0) ;  Caller frame size
189 : SUB   5, 5, 2 ;  Pop back to caller
190 : SUB   4, 4, 2 ;  Pop back to caller
191 : ST   1, 3(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
