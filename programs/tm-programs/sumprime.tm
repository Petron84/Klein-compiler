0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 4, 4(5) ; Base of callee frame
10 : LDC  1, 2(0) ;  Load integer-literal value into register 1
11 : ST 1, 1(4) ; Store argument 0 in callee
12 : LDC  1, 20(0) ;  Load integer-literal value into register 1
13 : ST 1, 2(4) ; Store argument 1 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 26(0) ; Call sumPrimes
18 : LD   1, 3(5) ;  Load function result
19 : LDC   2, 4(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 1(5) ; Store result into caller’s frame
23 : LD   1, 1(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 1(5) ;  Load parameter 'a' into R1
27 : ST   1, 3(4) ;  Store right operand result into return value slot
28 : LD   1, 2(5) ;  Load parameter 'b' into R1
29 : ADD  2, 1, 0 ;  Move left operand to register 2
30 : LD   1, 3(4) ;  Return right operand back into register 1
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LDC  1, 0(0) ;  Load integer-literal value into register 1
38 : LDA  7, 93(0) ;  Skip ELSE block
39 : LDA 4, 3(5) ; Base of callee frame
40 : LD   1, 1(5) ;  Load parameter 'a' into R1
41 : ST 1, 1(4) ; Store argument 0 in callee
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame
45 : LDA 7, 96(0) ; Call isPrime
46 : LD   1, 2(5) ;  Load function result
47 : LDC   2, 3(0) ;  Caller frame size
48 : SUB   5, 5, 2 ;  Pop back to caller
49 : SUB   4, 4, 2 ;  Pop back to caller
50 : JEQ  1, 75(0) ;  If condition is false, jump to ELSE
51 : LDA 4, 4(5) ; Base of callee frame
52 : LDC  1, 1(0) ;  Load integer-literal value into register 1
53 : ST   1, 3(4) ;  Store right operand result into return value slot
54 : LD   1, 1(5) ;  Load parameter 'a' into R1
55 : ADD  2, 1, 0 ;  Move left operand to register 2
56 : LD   1, 3(4) ;  Return right operand back into register 1
57 : ADD  1, 2, 1 ;  R1 = left + right
58 : ST 1, 1(4) ; Store argument 0 in callee
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 2(4) ; Store argument 1 in callee
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame
64 : LDA 7, 26(0) ; Call sumPrimes
65 : LD   1, 3(5) ;  Load function result
66 : LDC   2, 4(0) ;  Caller frame size
67 : SUB   5, 5, 2 ;  Pop back to caller
68 : SUB   4, 4, 2 ;  Pop back to caller
69 : ADD  3, 1, 0 ;  Move right operand to register 3
70 : LD   1, 1(5) ;  Load parameter 'a' into R1
71 : ADD  2, 1, 0 ;  Move left operand to register 2
72 : ADD  1, 3, 0 ;  Move right operand to register 1
73 : ADD  1, 2, 1 ;  R1 = left + right
74 : LDA  7, 93(0) ;  Skip ELSE block
75 : LDA 4, 4(5) ; Base of callee frame
76 : LDC  1, 1(0) ;  Load integer-literal value into register 1
77 : ST   1, 3(4) ;  Store right operand result into return value slot
78 : LD   1, 1(5) ;  Load parameter 'a' into R1
79 : ADD  2, 1, 0 ;  Move left operand to register 2
80 : LD   1, 3(4) ;  Return right operand back into register 1
81 : ADD  1, 2, 1 ;  R1 = left + right
82 : ST 1, 1(4) ; Store argument 0 in callee
83 : LD   1, 2(5) ;  Load parameter 'b' into R1
84 : ST 1, 2(4) ; Store argument 1 in callee
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame
88 : LDA 7, 26(0) ; Call sumPrimes
89 : LD   1, 3(5) ;  Load function result
90 : LDC   2, 4(0) ;  Caller frame size
91 : SUB   5, 5, 2 ;  Pop back to caller
92 : SUB   4, 4, 2 ;  Pop back to caller
93 : ST   1, 3(5) ;  Store function result into stack frame
94 : LD   6, 0(5) ;  Load return address
95 : LDA  7, 0(6) ;  Return to caller
96 : LDC  1, 2(0) ;  Load integer-literal value into register 1
97 : ST   1, 3(4) ;  Store right operand result into return value slot
98 : LD   1, 1(5) ;  Load parameter 'n' into R1
99 : ADD  2, 1, 0 ;  Move left operand to register 2
100 : LD   1, 3(4) ;  Return right operand back into register 1
101 : SUB  1, 2, 1 ;  left - right for less-than check
102 : JLT  1, 2(7) ;  If R1 < 0, jump to true
103 : LDC  1, 0(0) ;  false
104 : LDA  7, 1(7) ;  skip setting true
105 : LDC  1, 1(0) ;  true
106 : JEQ  1, 109(0) ;  If condition is false, jump to ELSE
107 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
108 : LDA  7, 169(0) ;  Skip ELSE block
109 : LDC  1, 2(0) ;  Load integer-literal value into register 1
110 : ST   1, 3(4) ;  Store right operand result into return value slot
111 : LD   1, 1(5) ;  Load parameter 'n' into R1
112 : ADD  2, 1, 0 ;  Move left operand to register 2
113 : LD   1, 3(4) ;  Return right operand back into register 1
114 : SUB  1, 2, 1 ;  left - right for equality check
115 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
116 : LDC  1, 0(0) ;  false
117 : LDA  7, 1(7) ;  skip setting true
118 : LDC  1, 1(0) ;  true
119 : JEQ  1, 122(0) ;  If condition is false, jump to ELSE
120 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
121 : LDA  7, 169(0) ;  Skip ELSE block
122 : LDA 4, 4(5) ; Base of callee frame
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ST 1, 1(4) ; Store argument 0 in callee
125 : LDC  1, 2(0) ;  Load integer-literal value into register 1
126 : ST 1, 2(4) ; Store argument 1 in callee
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame
130 : LDA 7, 172(0) ; Call divisible
131 : LD   1, 3(5) ;  Load function result
132 : LDC   2, 4(0) ;  Caller frame size
133 : SUB   5, 5, 2 ;  Pop back to caller
134 : SUB   4, 4, 2 ;  Pop back to caller
135 : ADD  2, 1, 0 ;  Move left operand to register 2
136 : LDA 4, 4(5) ; Base of callee frame
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : ST 1, 1(4) ; Store argument 0 in callee
139 : LDC  1, 3(0) ;  Load integer-literal value into register 1
140 : ST 1, 2(4) ; Store argument 1 in callee
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return in callee frame
143 : ADD 5, 4, 0 ; Push callee frame
144 : LDA 7, 172(0) ; Call divisible
145 : LD   1, 3(5) ;  Load function result
146 : LDC   2, 4(0) ;  Caller frame size
147 : SUB   5, 5, 2 ;  Pop back to caller
148 : SUB   4, 4, 2 ;  Pop back to caller
149 : ADD  1, 2, 1 ;  R1 = left OR right
150 : ADD  2, 1, 0 ;  Move left operand to register 2
151 : LDA 4, 4(5) ; Base of callee frame
152 : LD   1, 1(5) ;  Load parameter 'n' into R1
153 : ST 1, 1(4) ; Store argument 0 in callee
154 : LDC  1, 5(0) ;  Load integer-literal value into register 1
155 : ST 1, 2(4) ; Store argument 1 in callee
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame
159 : LDA 7, 172(0) ; Call divisible
160 : LD   1, 3(5) ;  Load function result
161 : LDC   2, 4(0) ;  Caller frame size
162 : SUB   5, 5, 2 ;  Pop back to caller
163 : SUB   4, 4, 2 ;  Pop back to caller
164 : ADD  1, 2, 1 ;  R1 = left OR right
165 : JEQ  1, 168(0) ;  If condition is false, jump to ELSE
166 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
167 : LDA  7, 169(0) ;  Skip ELSE block
168 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
169 : ST   1, 2(5) ;  Store function result into stack frame
170 : LD   6, 0(5) ;  Load return address
171 : LDA  7, 0(6) ;  Return to caller
172 : LD   1, 2(5) ;  Load parameter 'y' into R1
173 : ST   1, 3(4) ;  Store right operand result into return value slot
174 : LD   1, 1(5) ;  Load parameter 'x' into R1
175 : ADD  2, 1, 0 ;  Move left operand to register 2
176 : LD   1, 3(4) ;  Return right operand back into register 1
177 : DIV  1, 2, 1 ;  R1 = left / right
178 : ADD  2, 1, 0 ;  Move left operand to register 2
179 : LD   1, 2(5) ;  Load parameter 'y' into R1
180 : MUL  1, 2, 1 ;  R1 = left * right
181 : ADD  2, 1, 0 ;  Move left operand to register 2
182 : LD   1, 1(5) ;  Load parameter 'x' into R1
183 : SUB  1, 2, 1 ;  left - right for equality check
184 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
185 : LDC  1, 0(0) ;  false
186 : LDA  7, 1(7) ;  skip setting true
187 : LDC  1, 1(0) ;  true
188 : JEQ  1, 191(0) ;  If condition is false, jump to ELSE
189 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
190 : LDA  7, 192(0) ;  Skip ELSE block
191 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
192 : ST   1, 3(5) ;  Store function result into stack frame
193 : LD   6, 0(5) ;  Load return address
194 : LDA  7, 0(6) ;  Return to caller
