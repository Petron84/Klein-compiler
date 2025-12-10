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
11 : LDA 4, 4(5) ; Base of callee frame
12 : LDC  1, 2(0) ;  Load integer-literal value into register 1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 196(0) ; Call sieveAt
20 : LD   1, 3(5) ;  Load function result
21 : LDC   2, 4(0) ;  Caller frame size
22 : SUB   5, 5, 2 ;  Pop back to caller
23 : SUB   4, 4, 2 ;  Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 2(5) ;  Load parameter 'den' into R1
29 : ST   1, 3(4) ;  Store right operand result into return value slot
30 : LD   1, 1(5) ;  Load parameter 'num' into R1
31 : ADD  2, 1, 0 ;  Move left operand to register 2
32 : LD   1, 3(4) ;  Return right operand back into register 1
33 : SUB  1, 2, 1 ;  left - right for less-than check
34 : JLT  1, 2(7) ;  If R1 < 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 41(0) ;  If condition is false, jump to ELSE
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : LDA  7, 59(0) ;  Skip ELSE block
41 : LDA 4, 4(5) ; Base of callee frame
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ST   1, 3(4) ;  Store right operand result into return value slot
44 : LD   1, 1(5) ;  Load parameter 'num' into R1
45 : ADD  2, 1, 0 ;  Move left operand to register 2
46 : LD   1, 3(4) ;  Return right operand back into register 1
47 : SUB  1, 2, 1 ;  R1 = left - right
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LD   1, 2(5) ;  Load parameter 'den' into R1
50 : ST 1, 2(4) ; Store argument 1 in callee
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame
54 : LDA 7, 28(0) ; Call rem
55 : LD   1, 3(5) ;  Load function result
56 : LDC   2, 4(0) ;  Caller frame size
57 : SUB   5, 5, 2 ;  Pop back to caller
58 : SUB   4, 4, 2 ;  Pop back to caller
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LDA 4, 4(5) ; Base of callee frame
63 : LD   1, 2(5) ;  Load parameter 'b' into R1
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : ST 1, 2(4) ; Store argument 1 in callee
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame
70 : LDA 7, 28(0) ; Call rem
71 : LD   1, 3(5) ;  Load function result
72 : LDC   2, 4(0) ;  Caller frame size
73 : SUB   5, 5, 2 ;  Pop back to caller
74 : SUB   4, 4, 2 ;  Pop back to caller
75 : ADD  2, 1, 0 ;  Move left operand to register 2
76 : LDC  1, 0(0) ;  Load integer-literal value into register 1
77 : SUB  1, 2, 1 ;  left - right for equality check
78 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
79 : LDC  1, 0(0) ;  false
80 : LDA  7, 1(7) ;  skip setting true
81 : LDC  1, 1(0) ;  true
82 : ST   1, 3(5) ;  Store function result into stack frame
83 : LD   6, 0(5) ;  Load return address
84 : LDA  7, 0(6) ;  Return to caller
85 : LD   1, 2(5) ;  Load parameter 'n' into R1
86 : ST   1, 3(4) ;  Store right operand result into return value slot
87 : LD   1, 1(5) ;  Load parameter 'i' into R1
88 : ADD  2, 1, 0 ;  Move left operand to register 2
89 : LD   1, 3(4) ;  Return right operand back into register 1
90 : SUB  1, 2, 1 ;  left - right for less-than check
91 : JLT  1, 2(7) ;  If R1 < 0, jump to true
92 : LDC  1, 0(0) ;  false
93 : LDA  7, 1(7) ;  skip setting true
94 : LDC  1, 1(0) ;  true
95 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
96 : LDA 4, 4(5) ; Base of callee frame
97 : LD   1, 1(5) ;  Load parameter 'i' into R1
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LD   1, 2(5) ;  Load parameter 'n' into R1
100 : ST 1, 2(4) ; Store argument 1 in callee
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(4) ; Store return in callee frame
103 : ADD 5, 4, 0 ; Push callee frame
104 : LDA 7, 62(0) ; Call divides
105 : LD   1, 3(5) ;  Load function result
106 : LDC   2, 4(0) ;  Caller frame size
107 : SUB   5, 5, 2 ;  Pop back to caller
108 : SUB   4, 4, 2 ;  Pop back to caller
109 : ADD  2, 1, 0 ;  Move left operand to register 2
110 : LDA 4, 4(5) ; Base of callee frame
111 : LDC  1, 1(0) ;  Load integer-literal value into register 1
112 : ST   1, 3(4) ;  Store right operand result into return value slot
113 : LD   1, 1(5) ;  Load parameter 'i' into R1
114 : ADD  2, 1, 0 ;  Move left operand to register 2
115 : LD   1, 3(4) ;  Return right operand back into register 1
116 : ADD  1, 2, 1 ;  R1 = left + right
117 : ST 1, 1(4) ; Store argument 0 in callee
118 : LD   1, 2(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ; Store argument 1 in callee
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return in callee frame
122 : ADD 5, 4, 0 ; Push callee frame
123 : LDA 7, 85(0) ; Call hasDivisorFrom
124 : LD   1, 3(5) ;  Load function result
125 : LDC   2, 4(0) ;  Caller frame size
126 : SUB   5, 5, 2 ;  Pop back to caller
127 : SUB   4, 4, 2 ;  Pop back to caller
128 : ADD  1, 2, 1 ;  R1 = left OR right
129 : LDA  7, 131(0) ;  Skip ELSE block
130 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
131 : ST   1, 3(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDA 4, 4(5) ; Base of callee frame
135 : LDC  1, 2(0) ;  Load integer-literal value into register 1
136 : ST 1, 1(4) ; Store argument 0 in callee
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : ST 1, 2(4) ; Store argument 1 in callee
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame
142 : LDA 7, 85(0) ; Call hasDivisorFrom
143 : LD   1, 3(5) ;  Load function result
144 : LDC   2, 4(0) ;  Caller frame size
145 : SUB   5, 5, 2 ;  Pop back to caller
146 : SUB   4, 4, 2 ;  Pop back to caller
147 : LDC  2, 1(0) ;  Load 1 into R2
148 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
149 : ST   1, 2(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LDA 4, 3(5) ; Base of callee frame
153 : LD   1, 1(5) ;  Load parameter 'current' into R1
154 : ST 1, 1(4) ; Store argument 0 in callee
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame
158 : LDA 7, 134(0) ; Call isPrime
159 : LD   1, 2(5) ;  Load function result
160 : LDC   2, 3(0) ;  Caller frame size
161 : SUB   5, 5, 2 ;  Pop back to caller
162 : SUB   4, 4, 2 ;  Pop back to caller
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LD   1, 1(5) ;  Load parameter 'current' into R1
165 : LDA  7, 167(0) ;  Skip ELSE block
166 : LDC  1, 0(0) ;  Load integer-literal value into register 1
167 : LDA 4, 3(5) ; Base of callee frame
168 : LDA 6, 172(0) ; Return address
169 : ST 6, 0(4) ; Store return addr in callee frame
170 : ADD 5, 4, 0 ; Push new frame
171 : LDA 7, 8(0) ; Call print
172 : LDC 2, 3(0) ; Caller frame size
173 : SUB 5, 5, 2 ; Pop frame
174 : ST   1, 3(5) ;  Store function result into stack frame
175 : LDA 4, 4(5) ; Base of callee frame
176 : LDC  1, 1(0) ;  Load integer-literal value into register 1
177 : ST   1, 3(4) ;  Store right operand result into return value slot
178 : LD   1, 1(5) ;  Load parameter 'current' into R1
179 : ADD  2, 1, 0 ;  Move left operand to register 2
180 : LD   1, 3(4) ;  Return right operand back into register 1
181 : ADD  1, 2, 1 ;  R1 = left + right
182 : ST 1, 1(4) ; Store argument 0 in callee
183 : LD   1, 2(5) ;  Load parameter 'max' into R1
184 : ST 1, 2(4) ; Store argument 1 in callee
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return in callee frame
187 : ADD 5, 4, 0 ; Push callee frame
188 : LDA 7, 196(0) ; Call sieveAt
189 : LD   1, 3(5) ;  Load function result
190 : LDC   2, 4(0) ;  Caller frame size
191 : SUB   5, 5, 2 ;  Pop back to caller
192 : SUB   4, 4, 2 ;  Pop back to caller
193 : ST   1, 3(5) ;  Store function result into stack frame
194 : LD   6, 0(5) ;  Load return address
195 : LDA  7, 0(6) ;  Return to caller
196 : LD   1, 1(5) ;  Load parameter 'current' into R1
197 : ST   1, 3(4) ;  Store right operand result into return value slot
198 : LD   1, 2(5) ;  Load parameter 'max' into R1
199 : ADD  2, 1, 0 ;  Move left operand to register 2
200 : LD   1, 3(4) ;  Return right operand back into register 1
201 : SUB  1, 2, 1 ;  left - right for less-than check
202 : JLT  1, 2(7) ;  If R1 < 0, jump to true
203 : LDC  1, 0(0) ;  false
204 : LDA  7, 1(7) ;  skip setting true
205 : LDC  1, 1(0) ;  true
206 : JEQ  1, 209(0) ;  If condition is false, jump to ELSE
207 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
208 : LDA  7, 222(0) ;  Skip ELSE block
209 : LDA 4, 4(5) ; Base of callee frame
210 : LD   1, 1(5) ;  Load parameter 'current' into R1
211 : ST 1, 1(4) ; Store argument 0 in callee
212 : LD   1, 2(5) ;  Load parameter 'max' into R1
213 : ST 1, 2(4) ; Store argument 1 in callee
214 : LDA 6, 218(0) ; Return address
215 : ST 6, 0(4) ; Store return in callee frame
216 : ADD 5, 4, 0 ; Push callee frame
217 : LDA 7, 152(0) ; Call doSieveAt
218 : LD   1, 3(5) ;  Load function result
219 : LDC   2, 4(0) ;  Caller frame size
220 : SUB   5, 5, 2 ;  Pop back to caller
221 : SUB   4, 4, 2 ;  Pop back to caller
222 : ST   1, 3(5) ;  Store function result into stack frame
223 : LD   6, 0(5) ;  Load return address
224 : LDA  7, 0(6) ;  Return to caller
