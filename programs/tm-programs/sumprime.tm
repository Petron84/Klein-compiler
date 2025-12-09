0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 4, 2(5) ; Base of callee frame
10 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
11 : ST 1, 1(4) ; Store argument 0 in callee
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : ST 1, 2(4) ; Store argument 1 in callee
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 26(0) ; Call sumPrimes
18 : LD   1, 3(5) ;  Load function result
19 : LDC   2, 2(0) ;  Caller frame size
20 : SUB   5, 5, 2 ;  Pop back to caller
21 : SUB   4, 4, 2 ;  Pop back to caller
22 : ST 1, 1(5) ; Store result into caller’s frame
23 : LD   1, 1(5) ;  Load return value into register 1
24 : LD  6, 0(5) ;  Load return address for main function into register 6
25 : LDA  7, 0(6) ;  Jump to return address of main function
26 : LD   1, 2(5) ;  Load parameter 'b' into R1
27 : ADD  3, 1, 0 ;  Store left operand into temporary register
28 : LD   1, 1(5) ;  Load parameter 'a' into R1
29 : ADD  2, 3, 0 ;  Restore left operand
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
37 : LDA  7, 89(0) ;  Skip ELSE block
38 : LDA 4, 4(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'a' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return in callee frame
43 : ADD 5, 4, 0 ; Push callee frame
44 : LDA 7, 92(0) ; Call isPrime
45 : LD   1, 2(5) ;  Load function result
46 : LDC   2, 4(0) ;  Caller frame size
47 : SUB   5, 5, 2 ;  Pop back to caller
48 : SUB   4, 4, 2 ;  Pop back to caller
49 : JEQ  1, 72(0) ;  If condition is false, jump to ELSE
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LDA 4, 4(5) ; Base of callee frame
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ADD  3, 1, 0 ;  Store left operand into temporary register
55 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
56 : ADD  2, 3, 0 ;  Restore left operand
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
69 : ADD  2, 3, 0 ;  Restore left operand
70 : ADD  1, 2, 1 ;  R1 = left + right
71 : LDA  7, 89(0) ;  Skip ELSE block
72 : LDA 4, 4(5) ; Base of callee frame
73 : LD   1, 1(5) ;  Load parameter 'a' into R1
74 : ADD  3, 1, 0 ;  Store left operand into temporary register
75 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
76 : ADD  2, 3, 0 ;  Restore left operand
77 : ADD  1, 2, 1 ;  R1 = left + right
78 : ST 1, 1(4) ; Store argument 0 in callee
79 : LD   1, 2(5) ;  Load parameter 'b' into R1
80 : ST 1, 2(4) ; Store argument 1 in callee
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame
84 : LDA 7, 26(0) ; Call sumPrimes
85 : LD   1, 3(5) ;  Load function result
86 : LDC   2, 4(0) ;  Caller frame size
87 : SUB   5, 5, 2 ;  Pop back to caller
88 : SUB   4, 4, 2 ;  Pop back to caller
89 : ST   1, 3(5) ;  Store function result into stack frame
90 : LD   6, 0(5) ;  Load return address
91 : LDA  7, 0(6) ;  Return to caller
92 : LD   1, 1(5) ;  Load parameter 'n' into R1
93 : ADD  3, 1, 0 ;  Store left operand into temporary register
94 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
95 : ADD  2, 3, 0 ;  Restore left operand
96 : SUB  1, 2, 1 ;  left - right for less-than check
97 : JLT  1, 2(7) ;  If R1 < 0, jump to true
98 : LDC  1, 0(0) ;  false
99 : LDA  7, 1(7) ;  skip setting true
100 : LDC  1, 1(0) ;  true
101 : JEQ  1, 104(0) ;  If condition is false, jump to ELSE
102 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
103 : LDA  7, 165(0) ;  Skip ELSE block
104 : LD   1, 1(5) ;  Load parameter 'n' into R1
105 : ADD  3, 1, 0 ;  Store left operand into temporary register
106 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
107 : ADD  2, 3, 0 ;  Restore left operand
108 : SUB  1, 2, 1 ;  left - right for equality check
109 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
110 : LDC  1, 0(0) ;  false
111 : LDA  7, 1(7) ;  skip setting true
112 : LDC  1, 1(0) ;  true
113 : JEQ  1, 116(0) ;  If condition is false, jump to ELSE
114 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
115 : LDA  7, 165(0) ;  Skip ELSE block
116 : LDA 4, 3(5) ; Base of callee frame
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : ST 1, 1(4) ; Store argument 0 in callee
119 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
120 : ST 1, 2(4) ; Store argument 1 in callee
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame
124 : LDA 7, 168(0) ; Call divisible
125 : LD   1, 3(5) ;  Load function result
126 : LDC   2, 3(0) ;  Caller frame size
127 : SUB   5, 5, 2 ;  Pop back to caller
128 : SUB   4, 4, 2 ;  Pop back to caller
129 : ADD  3, 1, 0 ;  Store left operand into temporary register
130 : LDA 4, 3(5) ; Base of callee frame
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
134 : ST 1, 2(4) ; Store argument 1 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 168(0) ; Call divisible
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 3(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : ADD  2, 3, 0 ;  Restore left operand
144 : ADD  1, 2, 1 ;  R1 = left OR right
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LDA 4, 3(5) ; Base of callee frame
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : ST 1, 1(4) ; Store argument 0 in callee
149 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
150 : ST 1, 2(4) ; Store argument 1 in callee
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return in callee frame
153 : ADD 5, 4, 0 ; Push callee frame
154 : LDA 7, 168(0) ; Call divisible
155 : LD   1, 3(5) ;  Load function result
156 : LDC   2, 3(0) ;  Caller frame size
157 : SUB   5, 5, 2 ;  Pop back to caller
158 : SUB   4, 4, 2 ;  Pop back to caller
159 : ADD  2, 3, 0 ;  Restore left operand
160 : ADD  1, 2, 1 ;  R1 = left OR right
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
163 : LDA  7, 165(0) ;  Skip ELSE block
164 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
165 : ST   1, 2(5) ;  Store function result into stack frame
166 : LD   6, 0(5) ;  Load return address
167 : LDA  7, 0(6) ;  Return to caller
168 : LD   1, 1(5) ;  Load parameter 'x' into R1
169 : ADD  3, 1, 0 ;  Store left operand into temporary register
170 : LD   1, 2(5) ;  Load parameter 'y' into R1
171 : ADD  2, 3, 0 ;  Restore left operand
172 : DIV  1, 2, 1 ;  R1 = left / right
173 : ADD  3, 1, 0 ;  Store left operand into temporary register
174 : LD   1, 2(5) ;  Load parameter 'y' into R1
175 : ADD  2, 3, 0 ;  Restore left operand
176 : MUL  1, 2, 1 ;  R1 = left * right
177 : ADD  3, 1, 0 ;  Store left operand into temporary register
178 : LD   1, 1(5) ;  Load parameter 'x' into R1
179 : ADD  2, 3, 0 ;  Restore left operand
180 : SUB  1, 2, 1 ;  left - right for equality check
181 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
182 : LDC  1, 0(0) ;  false
183 : LDA  7, 1(7) ;  skip setting true
184 : LDC  1, 1(0) ;  true
185 : JEQ  1, 188(0) ;  If condition is false, jump to ELSE
186 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
187 : LDA  7, 189(0) ;  Skip ELSE block
188 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
189 : ST   1, 3(5) ;  Store function result into stack frame
190 : LD   6, 0(5) ;  Load return address
191 : LDA  7, 0(6) ;  Return to caller
