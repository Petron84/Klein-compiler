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
12 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 193(0) ; Call sieveAt
20 : LD   1, 3(5) ;  Load function result
21 : LDC   2, 4(0) ;  Caller frame size
22 : SUB   5, 5, 2 ;  Pop back to caller
23 : SUB   4, 4, 2 ;  Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD   1, 2(5) ;  Load return value into register 1
26 : LD  6, 0(5) ;  Load return address for main function into register 6
27 : LDA  7, 0(6) ;  Jump to return address of main function
28 : LD   1, 1(5) ;  Load parameter 'num' into R1
29 : ADD  3, 1, 0 ;  Store left operand into temporary register
30 : LD   1, 2(5) ;  Load parameter 'den' into R1
31 : ADD  2, 3, 0 ;  Restore left operand
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDA  7, 57(0) ;  Skip ELSE block
40 : LDA 4, 4(5) ; Base of callee frame
41 : LD   1, 1(5) ;  Load parameter 'num' into R1
42 : ADD  3, 1, 0 ;  Store left operand into temporary register
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LD   1, 2(5) ;  Load parameter 'den' into R1
48 : ST 1, 2(4) ; Store argument 1 in callee
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return in callee frame
51 : ADD 5, 4, 0 ; Push callee frame
52 : LDA 7, 28(0) ; Call rem
53 : LD   1, 3(5) ;  Load function result
54 : LDC   2, 4(0) ;  Caller frame size
55 : SUB   5, 5, 2 ;  Pop back to caller
56 : SUB   4, 4, 2 ;  Pop back to caller
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LDA 4, 4(5) ; Base of callee frame
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ST 1, 1(4) ; Store argument 0 in callee
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : ST 1, 2(4) ; Store argument 1 in callee
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame
68 : LDA 7, 28(0) ; Call rem
69 : LD   1, 3(5) ;  Load function result
70 : LDC   2, 4(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'i' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 128(0) ;  If condition is false, jump to ELSE
94 : LDA 4, 4(5) ; Base of callee frame
95 : LD   1, 1(5) ;  Load parameter 'i' into R1
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ST 1, 2(4) ; Store argument 1 in callee
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 60(0) ; Call divides
103 : LD   1, 3(5) ;  Load function result
104 : LDC   2, 4(0) ;  Caller frame size
105 : SUB   5, 5, 2 ;  Pop back to caller
106 : SUB   4, 4, 2 ;  Pop back to caller
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDA 4, 4(5) ; Base of callee frame
109 : LD   1, 1(5) ;  Load parameter 'i' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : ADD  1, 2, 1 ;  R1 = left + right
114 : ST 1, 1(4) ; Store argument 0 in callee
115 : LD   1, 2(5) ;  Load parameter 'n' into R1
116 : ST 1, 2(4) ; Store argument 1 in callee
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return in callee frame
119 : ADD 5, 4, 0 ; Push callee frame
120 : LDA 7, 84(0) ; Call hasDivisorFrom
121 : LD   1, 3(5) ;  Load function result
122 : LDC   2, 4(0) ;  Caller frame size
123 : SUB   5, 5, 2 ;  Pop back to caller
124 : SUB   4, 4, 2 ;  Pop back to caller
125 : ADD  2, 3, 0 ;  Restore left operand
126 : ADD  1, 2, 1 ;  R1 = left OR right
127 : LDA  7, 129(0) ;  Skip ELSE block
128 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
129 : ST   1, 3(5) ;  Store function result into stack frame
130 : LD   6, 0(5) ;  Load return address
131 : LDA  7, 0(6) ;  Return to caller
132 : LDA 4, 4(5) ; Base of callee frame
133 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD   1, 1(5) ;  Load parameter 'n' into R1
136 : ST 1, 2(4) ; Store argument 1 in callee
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame
140 : LDA 7, 84(0) ; Call hasDivisorFrom
141 : LD   1, 3(5) ;  Load function result
142 : LDC   2, 4(0) ;  Caller frame size
143 : SUB   5, 5, 2 ;  Pop back to caller
144 : SUB   4, 4, 2 ;  Pop back to caller
145 : LDC  2, 1(0) ;  Load 1 into R2
146 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
147 : ST   1, 2(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LDA 4, 3(5) ; Base of callee frame
151 : LD   1, 1(5) ;  Load parameter 'current' into R1
152 : ST 1, 1(4) ; Store argument 0 in callee
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 132(0) ; Call isPrime
157 : LD   1, 2(5) ;  Load function result
158 : LDC   2, 3(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : SUB   4, 4, 2 ;  Pop back to caller
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 1(5) ;  Load parameter 'current' into R1
163 : LDA  7, 165(0) ;  Skip ELSE block
164 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
165 : LDA 4, 3(5) ; Base of callee frame
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return addr in callee frame
168 : ADD 5, 4, 0 ; Push new frame
169 : LDA 7, 8(0) ; Call print
170 : LDC 2, 3(0) ; Caller frame size
171 : SUB 5, 5, 2 ; Pop frame
172 : ST   1, 3(5) ;  Store function result into stack frame
173 : LDA 4, 4(5) ; Base of callee frame
174 : LD   1, 1(5) ;  Load parameter 'current' into R1
175 : ADD  3, 1, 0 ;  Store left operand into temporary register
176 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
177 : ADD  2, 3, 0 ;  Restore left operand
178 : ADD  1, 2, 1 ;  R1 = left + right
179 : ST 1, 1(4) ; Store argument 0 in callee
180 : LD   1, 2(5) ;  Load parameter 'max' into R1
181 : ST 1, 2(4) ; Store argument 1 in callee
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 193(0) ; Call sieveAt
186 : LD   1, 3(5) ;  Load function result
187 : LDC   2, 4(0) ;  Caller frame size
188 : SUB   5, 5, 2 ;  Pop back to caller
189 : SUB   4, 4, 2 ;  Pop back to caller
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
193 : LD   1, 2(5) ;  Load parameter 'max' into R1
194 : ADD  3, 1, 0 ;  Store left operand into temporary register
195 : LD   1, 1(5) ;  Load parameter 'current' into R1
196 : ADD  2, 3, 0 ;  Restore left operand
197 : SUB  1, 2, 1 ;  left - right for less-than check
198 : JLT  1, 2(7) ;  If R1 < 0, jump to true
199 : LDC  1, 0(0) ;  false
200 : LDA  7, 1(7) ;  skip setting true
201 : LDC  1, 1(0) ;  true
202 : JEQ  1, 205(0) ;  If condition is false, jump to ELSE
203 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
204 : LDA  7, 218(0) ;  Skip ELSE block
205 : LDA 4, 4(5) ; Base of callee frame
206 : LD   1, 1(5) ;  Load parameter 'current' into R1
207 : ST 1, 1(4) ; Store argument 0 in callee
208 : LD   1, 2(5) ;  Load parameter 'max' into R1
209 : ST 1, 2(4) ; Store argument 1 in callee
210 : LDA 6, 214(0) ; Return address
211 : ST 6, 0(4) ; Store return in callee frame
212 : ADD 5, 4, 0 ; Push callee frame
213 : LDA 7, 150(0) ; Call doSieveAt
214 : LD   1, 3(5) ;  Load function result
215 : LDC   2, 4(0) ;  Caller frame size
216 : SUB   5, 5, 2 ;  Pop back to caller
217 : SUB   4, 4, 2 ;  Pop back to caller
218 : ST   1, 3(5) ;  Store function result into stack frame
219 : LD   6, 0(5) ;  Load return address
220 : LDA  7, 0(6) ;  Return to caller
