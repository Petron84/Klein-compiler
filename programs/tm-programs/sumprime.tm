0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
10 : LDA 4, 4(5) ; Base of callee frame
11 : ST 1, 1(4) ; Store argument 0 in callee
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : LDA 4, 4(5) ; Base of callee frame
14 : ST 1, 2(4) ; Store argument 1 in callee
15 : LDA 4, 4(5) ; Base of callee frame
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 28(0) ; Call sumPrimes
20 : LD   1, 3(5) ;  Load function result
21 : LDC   2, 4(0) ;  Caller frame size
22 : SUB   5, 5, 2 ;  Pop back to caller
23 : SUB   4, 4, 2 ;  Pop back to caller
24 : ST 1, 1(5) ; Store result into caller’s frame
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
39 : LDA  7, 96(0) ;  Skip ELSE block
40 : LD   1, 1(5) ;  Load parameter 'a' into R1
41 : LDA 4, 3(5) ; Base of callee frame
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LDA 4, 3(5) ; Base of callee frame
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 99(0) ; Call isPrime
48 : LD   1, 2(5) ;  Load function result
49 : LDC   2, 3(0) ;  Caller frame size
50 : SUB   5, 5, 2 ;  Pop back to caller
51 : SUB   4, 4, 2 ;  Pop back to caller
52 : JEQ  1, 77(0) ;  If condition is false, jump to ELSE
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ADD  3, 1, 0 ;  Store left operand into temporary register
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : ADD  1, 2, 1 ;  R1 = left + right
60 : LDA 4, 4(5) ; Base of callee frame
61 : ST 1, 1(4) ; Store argument 0 in callee
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : LDA 4, 4(5) ; Base of callee frame
64 : ST 1, 2(4) ; Store argument 1 in callee
65 : LDA 4, 4(5) ; Base of callee frame
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 28(0) ; Call sumPrimes
70 : LD   1, 3(5) ;  Load function result
71 : LDC   2, 4(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : ADD  2, 3, 0 ;  Restore left operand
75 : ADD  1, 2, 1 ;  R1 = left + right
76 : LDA  7, 96(0) ;  Skip ELSE block
77 : LD   1, 1(5) ;  Load parameter 'a' into R1
78 : ADD  3, 1, 0 ;  Store left operand into temporary register
79 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
80 : ADD  2, 3, 0 ;  Restore left operand
81 : ADD  1, 2, 1 ;  R1 = left + right
82 : LDA 4, 4(5) ; Base of callee frame
83 : ST 1, 1(4) ; Store argument 0 in callee
84 : LD   1, 2(5) ;  Load parameter 'b' into R1
85 : LDA 4, 4(5) ; Base of callee frame
86 : ST 1, 2(4) ; Store argument 1 in callee
87 : LDA 4, 4(5) ; Base of callee frame
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return in callee frame
90 : ADD 5, 4, 0 ; Push callee frame
91 : LDA 7, 28(0) ; Call sumPrimes
92 : LD   1, 3(5) ;  Load function result
93 : LDC   2, 4(0) ;  Caller frame size
94 : SUB   5, 5, 2 ;  Pop back to caller
95 : SUB   4, 4, 2 ;  Pop back to caller
96 : ST   1, 3(5) ;  Store function result into stack frame
97 : LD   6, 0(5) ;  Load return address
98 : LDA  7, 0(6) ;  Return to caller
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : SUB  1, 2, 1 ;  left - right for less-than check
104 : JLT  1, 2(7) ;  If R1 < 0, jump to true
105 : LDC  1, 0(0) ;  false
106 : LDA  7, 1(7) ;  skip setting true
107 : LDC  1, 1(0) ;  true
108 : JEQ  1, 111(0) ;  If condition is false, jump to ELSE
109 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
110 : LDA  7, 178(0) ;  Skip ELSE block
111 : LD   1, 1(5) ;  Load parameter 'n' into R1
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
114 : ADD  2, 3, 0 ;  Restore left operand
115 : SUB  1, 2, 1 ;  left - right for equality check
116 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
117 : LDC  1, 0(0) ;  false
118 : LDA  7, 1(7) ;  skip setting true
119 : LDC  1, 1(0) ;  true
120 : JEQ  1, 123(0) ;  If condition is false, jump to ELSE
121 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
122 : LDA  7, 178(0) ;  Skip ELSE block
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : LDA 4, 4(5) ; Base of callee frame
125 : ST 1, 1(4) ; Store argument 0 in callee
126 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
127 : LDA 4, 4(5) ; Base of callee frame
128 : ST 1, 2(4) ; Store argument 1 in callee
129 : LDA 4, 4(5) ; Base of callee frame
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 181(0) ; Call divisible
134 : LD   1, 3(5) ;  Load function result
135 : LDC   2, 4(0) ;  Caller frame size
136 : SUB   5, 5, 2 ;  Pop back to caller
137 : SUB   4, 4, 2 ;  Pop back to caller
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LD   1, 1(5) ;  Load parameter 'n' into R1
140 : LDA 4, 4(5) ; Base of callee frame
141 : ST 1, 1(4) ; Store argument 0 in callee
142 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
143 : LDA 4, 4(5) ; Base of callee frame
144 : ST 1, 2(4) ; Store argument 1 in callee
145 : LDA 4, 4(5) ; Base of callee frame
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return in callee frame
148 : ADD 5, 4, 0 ; Push callee frame
149 : LDA 7, 181(0) ; Call divisible
150 : LD   1, 3(5) ;  Load function result
151 : LDC   2, 4(0) ;  Caller frame size
152 : SUB   5, 5, 2 ;  Pop back to caller
153 : SUB   4, 4, 2 ;  Pop back to caller
154 : ADD  2, 3, 0 ;  Restore left operand
155 : ADD  1, 2, 1 ;  R1 = left OR right
156 : ADD  3, 1, 0 ;  Store left operand into temporary register
157 : LD   1, 1(5) ;  Load parameter 'n' into R1
158 : LDA 4, 4(5) ; Base of callee frame
159 : ST 1, 1(4) ; Store argument 0 in callee
160 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
161 : LDA 4, 4(5) ; Base of callee frame
162 : ST 1, 2(4) ; Store argument 1 in callee
163 : LDA 4, 4(5) ; Base of callee frame
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 181(0) ; Call divisible
168 : LD   1, 3(5) ;  Load function result
169 : LDC   2, 4(0) ;  Caller frame size
170 : SUB   5, 5, 2 ;  Pop back to caller
171 : SUB   4, 4, 2 ;  Pop back to caller
172 : ADD  2, 3, 0 ;  Restore left operand
173 : ADD  1, 2, 1 ;  R1 = left OR right
174 : JEQ  1, 177(0) ;  If condition is false, jump to ELSE
175 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
176 : LDA  7, 178(0) ;  Skip ELSE block
177 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
178 : ST   1, 2(5) ;  Store function result into stack frame
179 : LD   6, 0(5) ;  Load return address
180 : LDA  7, 0(6) ;  Return to caller
181 : LD   1, 1(5) ;  Load parameter 'x' into R1
182 : ADD  3, 1, 0 ;  Store left operand into temporary register
183 : LD   1, 2(5) ;  Load parameter 'y' into R1
184 : ADD  2, 3, 0 ;  Restore left operand
185 : DIV  1, 2, 1 ;  R1 = left / right
186 : ADD  3, 1, 0 ;  Store left operand into temporary register
187 : LD   1, 2(5) ;  Load parameter 'y' into R1
188 : ADD  2, 3, 0 ;  Restore left operand
189 : MUL  1, 2, 1 ;  R1 = left * right
190 : ADD  3, 1, 0 ;  Store left operand into temporary register
191 : LD   1, 1(5) ;  Load parameter 'x' into R1
192 : ADD  2, 3, 0 ;  Restore left operand
193 : SUB  1, 2, 1 ;  left - right for equality check
194 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
195 : LDC  1, 0(0) ;  false
196 : LDA  7, 1(7) ;  skip setting true
197 : LDC  1, 1(0) ;  true
198 : JEQ  1, 201(0) ;  If condition is false, jump to ELSE
199 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
200 : LDA  7, 202(0) ;  Skip ELSE block
201 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
202 : ST   1, 3(5) ;  Store function result into stack frame
203 : LD   6, 0(5) ;  Load return address
204 : LDA  7, 0(6) ;  Return to caller
