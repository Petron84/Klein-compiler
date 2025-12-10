0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDC  4, 0(5) ;  Set top of caller frame
2 : LDA  6, 2(7) ;  Calculate return address
3 : ST   6, 0(5) ;  Store return address in main stack frame
4 : LDA  7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT  1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
7 : OUT  1, 0, 0 ;  Hardcoded print function
8 : LD   6, 0(5) ;  Load return addess from stack frame.
9 : LDA  7, 0(6) ;  Jump to return address.
10 : LDA 4, 4(5) ; Base of callee frame
11 : LDC  1, 2(0) ;  Load integer-literal value into register 1
12 : ST 1, 1(4) ; Store argument 0 in callee
13 : LDC  1, 20(0) ;  Load integer-literal value into register 1
14 : ST 1, 2(4) ; Store argument 1 in callee
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return in callee frame
17 : ADD 5, 4, 0 ; Push callee frame
18 : LDA 7, 27(0) ; Call sumPrimes
19 : LD   1, 3(5) ;  Load function result
20 : LDC   2, 4(0) ;  Caller frame size
21 : SUB   5, 5, 2 ;  Pop back to caller
22 : SUB   4, 4, 2 ;  Pop back to caller
23 : ST 1, 1(5) ; Store result into caller’s frame
24 : LD   1, 1(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : ST   1, 3(4) ;  Store right operand result into return value slot
29 : LD   1, 2(5) ;  Load parameter 'b' into R1
30 : ADD  2, 1, 0 ;  Move left operand to register 2
31 : LD   1, 3(4) ;  Return right operand back into register 1
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LDC  1, 0(0) ;  Load integer-literal value into register 1
39 : LDA  7, 94(0) ;  Skip ELSE block
40 : LDA 4, 3(5) ; Base of callee frame
41 : LD   1, 1(5) ;  Load parameter 'a' into R1
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return in callee frame
45 : ADD 5, 4, 0 ; Push callee frame
46 : LDA 7, 97(0) ; Call isPrime
47 : LD   1, 2(5) ;  Load function result
48 : LDC   2, 3(0) ;  Caller frame size
49 : SUB   5, 5, 2 ;  Pop back to caller
50 : SUB   4, 4, 2 ;  Pop back to caller
51 : JEQ  1, 76(0) ;  If condition is false, jump to ELSE
52 : LDA 4, 4(5) ; Base of callee frame
53 : LDC  1, 1(0) ;  Load integer-literal value into register 1
54 : ST   1, 3(4) ;  Store right operand result into return value slot
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ADD  2, 1, 0 ;  Move left operand to register 2
57 : LD   1, 3(4) ;  Return right operand back into register 1
58 : ADD  1, 2, 1 ;  R1 = left + right
59 : ST 1, 1(4) ; Store argument 0 in callee
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : ST 1, 2(4) ; Store argument 1 in callee
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame
65 : LDA 7, 27(0) ; Call sumPrimes
66 : LD   1, 3(5) ;  Load function result
67 : LDC   2, 4(0) ;  Caller frame size
68 : SUB   5, 5, 2 ;  Pop back to caller
69 : SUB   4, 4, 2 ;  Pop back to caller
70 : ADD  3, 1, 0 ;  Move right operand to register 3
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  2, 1, 0 ;  Move left operand to register 2
73 : ADD  1, 3, 0 ;  Move right operand to register 1
74 : ADD  1, 2, 1 ;  R1 = left + right
75 : LDA  7, 94(0) ;  Skip ELSE block
76 : LDA 4, 4(5) ; Base of callee frame
77 : LDC  1, 1(0) ;  Load integer-literal value into register 1
78 : ST   1, 3(4) ;  Store right operand result into return value slot
79 : LD   1, 1(5) ;  Load parameter 'a' into R1
80 : ADD  2, 1, 0 ;  Move left operand to register 2
81 : LD   1, 3(4) ;  Return right operand back into register 1
82 : ADD  1, 2, 1 ;  R1 = left + right
83 : ST 1, 1(4) ; Store argument 0 in callee
84 : LD   1, 2(5) ;  Load parameter 'b' into R1
85 : ST 1, 2(4) ; Store argument 1 in callee
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame
89 : LDA 7, 27(0) ; Call sumPrimes
90 : LD   1, 3(5) ;  Load function result
91 : LDC   2, 4(0) ;  Caller frame size
92 : SUB   5, 5, 2 ;  Pop back to caller
93 : SUB   4, 4, 2 ;  Pop back to caller
94 : ST   1, 3(5) ;  Store function result into stack frame
95 : LD   6, 0(5) ;  Load return address
96 : LDA  7, 0(6) ;  Return to caller
97 : LDC  1, 2(0) ;  Load integer-literal value into register 1
98 : ST   1, 3(4) ;  Store right operand result into return value slot
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ADD  2, 1, 0 ;  Move left operand to register 2
101 : LD   1, 3(4) ;  Return right operand back into register 1
102 : SUB  1, 2, 1 ;  left - right for less-than check
103 : JLT  1, 2(7) ;  If R1 < 0, jump to true
104 : LDC  1, 0(0) ;  false
105 : LDA  7, 1(7) ;  skip setting true
106 : LDC  1, 1(0) ;  true
107 : JEQ  1, 110(0) ;  If condition is false, jump to ELSE
108 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
109 : LDA  7, 170(0) ;  Skip ELSE block
110 : LDC  1, 2(0) ;  Load integer-literal value into register 1
111 : ST   1, 3(4) ;  Store right operand result into return value slot
112 : LD   1, 1(5) ;  Load parameter 'n' into R1
113 : ADD  2, 1, 0 ;  Move left operand to register 2
114 : LD   1, 3(4) ;  Return right operand back into register 1
115 : SUB  1, 2, 1 ;  left - right for equality check
116 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
117 : LDC  1, 0(0) ;  false
118 : LDA  7, 1(7) ;  skip setting true
119 : LDC  1, 1(0) ;  true
120 : JEQ  1, 123(0) ;  If condition is false, jump to ELSE
121 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
122 : LDA  7, 170(0) ;  Skip ELSE block
123 : LDA 4, 4(5) ; Base of callee frame
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : ST 1, 1(4) ; Store argument 0 in callee
126 : LDC  1, 2(0) ;  Load integer-literal value into register 1
127 : ST 1, 2(4) ; Store argument 1 in callee
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 173(0) ; Call divisible
132 : LD   1, 3(5) ;  Load function result
133 : LDC   2, 4(0) ;  Caller frame size
134 : SUB   5, 5, 2 ;  Pop back to caller
135 : SUB   4, 4, 2 ;  Pop back to caller
136 : ADD  2, 1, 0 ;  Move left operand to register 2
137 : LDA 4, 4(5) ; Base of callee frame
138 : LD   1, 1(5) ;  Load parameter 'n' into R1
139 : ST 1, 1(4) ; Store argument 0 in callee
140 : LDC  1, 3(0) ;  Load integer-literal value into register 1
141 : ST 1, 2(4) ; Store argument 1 in callee
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return in callee frame
144 : ADD 5, 4, 0 ; Push callee frame
145 : LDA 7, 173(0) ; Call divisible
146 : LD   1, 3(5) ;  Load function result
147 : LDC   2, 4(0) ;  Caller frame size
148 : SUB   5, 5, 2 ;  Pop back to caller
149 : SUB   4, 4, 2 ;  Pop back to caller
150 : ADD  1, 2, 1 ;  R1 = left OR right
151 : ADD  2, 1, 0 ;  Move left operand to register 2
152 : LDA 4, 4(5) ; Base of callee frame
153 : LD   1, 1(5) ;  Load parameter 'n' into R1
154 : ST 1, 1(4) ; Store argument 0 in callee
155 : LDC  1, 5(0) ;  Load integer-literal value into register 1
156 : ST 1, 2(4) ; Store argument 1 in callee
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame
160 : LDA 7, 173(0) ; Call divisible
161 : LD   1, 3(5) ;  Load function result
162 : LDC   2, 4(0) ;  Caller frame size
163 : SUB   5, 5, 2 ;  Pop back to caller
164 : SUB   4, 4, 2 ;  Pop back to caller
165 : ADD  1, 2, 1 ;  R1 = left OR right
166 : JEQ  1, 169(0) ;  If condition is false, jump to ELSE
167 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
168 : LDA  7, 170(0) ;  Skip ELSE block
169 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
170 : ST   1, 2(5) ;  Store function result into stack frame
171 : LD   6, 0(5) ;  Load return address
172 : LDA  7, 0(6) ;  Return to caller
173 : LD   1, 2(5) ;  Load parameter 'y' into R1
174 : ST   1, 3(4) ;  Store right operand result into return value slot
175 : LD   1, 1(5) ;  Load parameter 'x' into R1
176 : ADD  2, 1, 0 ;  Move left operand to register 2
177 : LD   1, 3(4) ;  Return right operand back into register 1
178 : DIV  1, 2, 1 ;  R1 = left / right
179 : ADD  2, 1, 0 ;  Move left operand to register 2
180 : LD   1, 2(5) ;  Load parameter 'y' into R1
181 : MUL  1, 2, 1 ;  R1 = left * right
182 : ADD  2, 1, 0 ;  Move left operand to register 2
183 : LD   1, 1(5) ;  Load parameter 'x' into R1
184 : SUB  1, 2, 1 ;  left - right for equality check
185 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
186 : LDC  1, 0(0) ;  false
187 : LDA  7, 1(7) ;  skip setting true
188 : LDC  1, 1(0) ;  true
189 : JEQ  1, 192(0) ;  If condition is false, jump to ELSE
190 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
191 : LDA  7, 193(0) ;  Skip ELSE block
192 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
193 : ST   1, 3(5) ;  Store function result into stack frame
194 : LD   6, 0(5) ;  Load return address
195 : LDA  7, 0(6) ;  Return to caller
