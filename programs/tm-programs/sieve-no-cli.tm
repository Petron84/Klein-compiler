0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDC  4, 1(0) ;  Top of caller frame
12 : LDA 4, 4(5) ; Base of callee frame
13 : LDC  1, 2(0) ;  Load integer-literal value into register 1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC  1, 40(0) ;  Load integer-literal value into register 1
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame
20 : LDA 7, 197(0) ; Call sieveAt
21 : LD   1, 3(5) ;  Load function result
22 : LDC   2, 4(0) ;  Caller frame size
23 : SUB   5, 5, 2 ;  Pop back to caller
24 : SUB   4, 4, 2 ;  Pop back to caller
25 : ST 1, 2(5) ; Store result into caller’s frame
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : ST   1, 3(4) ;  Store right operand result into return value slot
31 : LD   1, 1(5) ;  Load parameter 'num' into R1
32 : ADD  2, 1, 0 ;  Move left operand to register 2
33 : LD   1, 3(4) ;  Return right operand back into register 1
34 : SUB  1, 2, 1 ;  left - right for less-than check
35 : JLT  1, 2(7) ;  If R1 < 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : LDA  7, 60(0) ;  Skip ELSE block
42 : LDA 4, 4(5) ; Base of callee frame
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : ST   1, 3(4) ;  Store right operand result into return value slot
45 : LD   1, 1(5) ;  Load parameter 'num' into R1
46 : ADD  2, 1, 0 ;  Move left operand to register 2
47 : LD   1, 3(4) ;  Return right operand back into register 1
48 : SUB  1, 2, 1 ;  R1 = left - right
49 : ST 1, 1(4) ; Store argument 0 in callee
50 : LD   1, 2(5) ;  Load parameter 'den' into R1
51 : ST 1, 2(4) ; Store argument 1 in callee
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 29(0) ; Call rem
56 : LD   1, 3(5) ;  Load function result
57 : LDC   2, 4(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : SUB   4, 4, 2 ;  Pop back to caller
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LD   6, 0(5) ;  Load return address
62 : LDA  7, 0(6) ;  Return to caller
63 : LDA 4, 4(5) ; Base of callee frame
64 : LD   1, 2(5) ;  Load parameter 'b' into R1
65 : ST 1, 1(4) ; Store argument 0 in callee
66 : LD   1, 1(5) ;  Load parameter 'a' into R1
67 : ST 1, 2(4) ; Store argument 1 in callee
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame
71 : LDA 7, 29(0) ; Call rem
72 : LD   1, 3(5) ;  Load function result
73 : LDC   2, 4(0) ;  Caller frame size
74 : SUB   5, 5, 2 ;  Pop back to caller
75 : SUB   4, 4, 2 ;  Pop back to caller
76 : ADD  2, 1, 0 ;  Move left operand to register 2
77 : LDC  1, 0(0) ;  Load integer-literal value into register 1
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : ST   1, 3(4) ;  Store right operand result into return value slot
88 : LD   1, 1(5) ;  Load parameter 'i' into R1
89 : ADD  2, 1, 0 ;  Move left operand to register 2
90 : LD   1, 3(4) ;  Return right operand back into register 1
91 : SUB  1, 2, 1 ;  left - right for less-than check
92 : JLT  1, 2(7) ;  If R1 < 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 131(0) ;  If condition is false, jump to ELSE
97 : LDA 4, 4(5) ; Base of callee frame
98 : LD   1, 1(5) ;  Load parameter 'i' into R1
99 : ST 1, 1(4) ; Store argument 0 in callee
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : ST 1, 2(4) ; Store argument 1 in callee
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame
105 : LDA 7, 63(0) ; Call divides
106 : LD   1, 3(5) ;  Load function result
107 : LDC   2, 4(0) ;  Caller frame size
108 : SUB   5, 5, 2 ;  Pop back to caller
109 : SUB   4, 4, 2 ;  Pop back to caller
110 : ADD  2, 1, 0 ;  Move left operand to register 2
111 : LDA 4, 4(5) ; Base of callee frame
112 : LDC  1, 1(0) ;  Load integer-literal value into register 1
113 : ST   1, 3(4) ;  Store right operand result into return value slot
114 : LD   1, 1(5) ;  Load parameter 'i' into R1
115 : ADD  2, 1, 0 ;  Move left operand to register 2
116 : LD   1, 3(4) ;  Return right operand back into register 1
117 : ADD  1, 2, 1 ;  R1 = left + right
118 : ST 1, 1(4) ; Store argument 0 in callee
119 : LD   1, 2(5) ;  Load parameter 'n' into R1
120 : ST 1, 2(4) ; Store argument 1 in callee
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame
124 : LDA 7, 86(0) ; Call hasDivisorFrom
125 : LD   1, 3(5) ;  Load function result
126 : LDC   2, 4(0) ;  Caller frame size
127 : SUB   5, 5, 2 ;  Pop back to caller
128 : SUB   4, 4, 2 ;  Pop back to caller
129 : ADD  1, 2, 1 ;  R1 = left OR right
130 : LDA  7, 132(0) ;  Skip ELSE block
131 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
132 : ST   1, 3(5) ;  Store function result into stack frame
133 : LD   6, 0(5) ;  Load return address
134 : LDA  7, 0(6) ;  Return to caller
135 : LDA 4, 4(5) ; Base of callee frame
136 : LDC  1, 2(0) ;  Load integer-literal value into register 1
137 : ST 1, 1(4) ; Store argument 0 in callee
138 : LD   1, 1(5) ;  Load parameter 'n' into R1
139 : ST 1, 2(4) ; Store argument 1 in callee
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame
143 : LDA 7, 86(0) ; Call hasDivisorFrom
144 : LD   1, 3(5) ;  Load function result
145 : LDC   2, 4(0) ;  Caller frame size
146 : SUB   5, 5, 2 ;  Pop back to caller
147 : SUB   4, 4, 2 ;  Pop back to caller
148 : LDC  2, 1(0) ;  Load 1 into R2
149 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
150 : ST   1, 2(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LDA 4, 3(5) ; Base of callee frame
154 : LD   1, 1(5) ;  Load parameter 'current' into R1
155 : ST 1, 1(4) ; Store argument 0 in callee
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame
159 : LDA 7, 135(0) ; Call isPrime
160 : LD   1, 2(5) ;  Load function result
161 : LDC   2, 3(0) ;  Caller frame size
162 : SUB   5, 5, 2 ;  Pop back to caller
163 : SUB   4, 4, 2 ;  Pop back to caller
164 : JEQ  1, 167(0) ;  If condition is false, jump to ELSE
165 : LD   1, 1(5) ;  Load parameter 'current' into R1
166 : LDA  7, 168(0) ;  Skip ELSE block
167 : LDC  1, 0(0) ;  Load integer-literal value into register 1
168 : LDA 4, 3(5) ; Base of callee frame
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return addr in callee frame
171 : ADD 5, 4, 0 ; Push new frame
172 : LDA 7, 8(0) ; Call print
173 : LDC 2, 3(0) ; Caller frame size
174 : SUB 5, 5, 2 ; Pop frame
175 : ST   1, 3(5) ;  Store function result into stack frame
176 : LDA 4, 4(5) ; Base of callee frame
177 : LDC  1, 1(0) ;  Load integer-literal value into register 1
178 : ST   1, 3(4) ;  Store right operand result into return value slot
179 : LD   1, 1(5) ;  Load parameter 'current' into R1
180 : ADD  2, 1, 0 ;  Move left operand to register 2
181 : LD   1, 3(4) ;  Return right operand back into register 1
182 : ADD  1, 2, 1 ;  R1 = left + right
183 : ST 1, 1(4) ; Store argument 0 in callee
184 : LD   1, 2(5) ;  Load parameter 'max' into R1
185 : ST 1, 2(4) ; Store argument 1 in callee
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return in callee frame
188 : ADD 5, 4, 0 ; Push callee frame
189 : LDA 7, 197(0) ; Call sieveAt
190 : LD   1, 3(5) ;  Load function result
191 : LDC   2, 4(0) ;  Caller frame size
192 : SUB   5, 5, 2 ;  Pop back to caller
193 : SUB   4, 4, 2 ;  Pop back to caller
194 : ST   1, 3(5) ;  Store function result into stack frame
195 : LD   6, 0(5) ;  Load return address
196 : LDA  7, 0(6) ;  Return to caller
197 : LD   1, 1(5) ;  Load parameter 'current' into R1
198 : ST   1, 3(4) ;  Store right operand result into return value slot
199 : LD   1, 2(5) ;  Load parameter 'max' into R1
200 : ADD  2, 1, 0 ;  Move left operand to register 2
201 : LD   1, 3(4) ;  Return right operand back into register 1
202 : SUB  1, 2, 1 ;  left - right for less-than check
203 : JLT  1, 2(7) ;  If R1 < 0, jump to true
204 : LDC  1, 0(0) ;  false
205 : LDA  7, 1(7) ;  skip setting true
206 : LDC  1, 1(0) ;  true
207 : JEQ  1, 210(0) ;  If condition is false, jump to ELSE
208 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
209 : LDA  7, 223(0) ;  Skip ELSE block
210 : LDA 4, 4(5) ; Base of callee frame
211 : LD   1, 1(5) ;  Load parameter 'current' into R1
212 : ST 1, 1(4) ; Store argument 0 in callee
213 : LD   1, 2(5) ;  Load parameter 'max' into R1
214 : ST 1, 2(4) ; Store argument 1 in callee
215 : LDA 6, 219(0) ; Return address
216 : ST 6, 0(4) ; Store return in callee frame
217 : ADD 5, 4, 0 ; Push callee frame
218 : LDA 7, 153(0) ; Call doSieveAt
219 : LD   1, 3(5) ;  Load function result
220 : LDC   2, 4(0) ;  Caller frame size
221 : SUB   5, 5, 2 ;  Pop back to caller
222 : SUB   4, 4, 2 ;  Pop back to caller
223 : ST   1, 3(5) ;  Store function result into stack frame
224 : LD   6, 0(5) ;  Load return address
225 : LDA  7, 0(6) ;  Return to caller
