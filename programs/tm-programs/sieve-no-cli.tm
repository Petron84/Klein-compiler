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
11 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
12 : LDA 4, 4(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
15 : LDA 4, 4(5) ; Base of callee frame
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDA 4, 4(5) ; Base of callee frame
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 208(0) ; Call sieveAt
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s frame
27 : LD   1, 2(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'num' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LD   1, 2(5) ;  Load parameter 'den' into R1
33 : ADD  2, 3, 0 ;  Restore left operand
34 : SUB  1, 2, 1 ;  left - right for less-than check
35 : JLT  1, 2(7) ;  If R1 < 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : LDA  7, 61(0) ;  Skip ELSE block
42 : LD   1, 1(5) ;  Load parameter 'num' into R1
43 : ADD  3, 1, 0 ;  Store left operand into temporary register
44 : LD   1, 2(5) ;  Load parameter 'den' into R1
45 : ADD  2, 3, 0 ;  Restore left operand
46 : SUB  1, 2, 1 ;  R1 = left - right
47 : LDA 4, 4(5) ; Base of callee frame
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LD   1, 2(5) ;  Load parameter 'den' into R1
50 : LDA 4, 4(5) ; Base of callee frame
51 : ST 1, 2(4) ; Store argument 1 in callee
52 : LDA 4, 4(5) ; Base of callee frame
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame
56 : LDA 7, 30(0) ; Call rem
57 : LD   1, 3(5) ;  Load function result
58 : LDC   2, 4(0) ;  Caller frame size
59 : SUB   5, 5, 2 ;  Pop back to caller
60 : SUB   4, 4, 2 ;  Pop back to caller
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LD   6, 0(5) ;  Load return address
63 : LDA  7, 0(6) ;  Return to caller
64 : LD   1, 2(5) ;  Load parameter 'b' into R1
65 : LDA 4, 4(5) ; Base of callee frame
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : LDA 4, 4(5) ; Base of callee frame
69 : ST 1, 2(4) ; Store argument 1 in callee
70 : LDA 4, 4(5) ; Base of callee frame
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame
74 : LDA 7, 30(0) ; Call rem
75 : LD   1, 3(5) ;  Load function result
76 : LDC   2, 4(0) ;  Caller frame size
77 : SUB   5, 5, 2 ;  Pop back to caller
78 : SUB   4, 4, 2 ;  Pop back to caller
79 : ADD  3, 1, 0 ;  Store left operand into temporary register
80 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
81 : ADD  2, 3, 0 ;  Restore left operand
82 : SUB  1, 2, 1 ;  left - right for equality check
83 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : ST   1, 3(5) ;  Store function result into stack frame
88 : LD   6, 0(5) ;  Load return address
89 : LDA  7, 0(6) ;  Return to caller
90 : LD   1, 1(5) ;  Load parameter 'i' into R1
91 : ADD  3, 1, 0 ;  Store left operand into temporary register
92 : LD   1, 2(5) ;  Load parameter 'n' into R1
93 : ADD  2, 3, 0 ;  Restore left operand
94 : SUB  1, 2, 1 ;  left - right for less-than check
95 : JLT  1, 2(7) ;  If R1 < 0, jump to true
96 : LDC  1, 0(0) ;  false
97 : LDA  7, 1(7) ;  skip setting true
98 : LDC  1, 1(0) ;  true
99 : JEQ  1, 138(0) ;  If condition is false, jump to ELSE
100 : LD   1, 1(5) ;  Load parameter 'i' into R1
101 : LDA 4, 4(5) ; Base of callee frame
102 : ST 1, 1(4) ; Store argument 0 in callee
103 : LD   1, 2(5) ;  Load parameter 'n' into R1
104 : LDA 4, 4(5) ; Base of callee frame
105 : ST 1, 2(4) ; Store argument 1 in callee
106 : LDA 4, 4(5) ; Base of callee frame
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 64(0) ; Call divides
111 : LD   1, 3(5) ;  Load function result
112 : LDC   2, 4(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : SUB   4, 4, 2 ;  Pop back to caller
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LD   1, 1(5) ;  Load parameter 'i' into R1
117 : ADD  3, 1, 0 ;  Store left operand into temporary register
118 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
119 : ADD  2, 3, 0 ;  Restore left operand
120 : ADD  1, 2, 1 ;  R1 = left + right
121 : LDA 4, 4(5) ; Base of callee frame
122 : ST 1, 1(4) ; Store argument 0 in callee
123 : LD   1, 2(5) ;  Load parameter 'n' into R1
124 : LDA 4, 4(5) ; Base of callee frame
125 : ST 1, 2(4) ; Store argument 1 in callee
126 : LDA 4, 4(5) ; Base of callee frame
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame
130 : LDA 7, 90(0) ; Call hasDivisorFrom
131 : LD   1, 3(5) ;  Load function result
132 : LDC   2, 4(0) ;  Caller frame size
133 : SUB   5, 5, 2 ;  Pop back to caller
134 : SUB   4, 4, 2 ;  Pop back to caller
135 : ADD  2, 3, 0 ;  Restore left operand
136 : ADD  1, 2, 1 ;  R1 = left OR right
137 : LDA  7, 139(0) ;  Skip ELSE block
138 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
139 : ST   1, 3(5) ;  Store function result into stack frame
140 : LD   6, 0(5) ;  Load return address
141 : LDA  7, 0(6) ;  Return to caller
142 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
143 : LDA 4, 4(5) ; Base of callee frame
144 : ST 1, 1(4) ; Store argument 0 in callee
145 : LD   1, 1(5) ;  Load parameter 'n' into R1
146 : LDA 4, 4(5) ; Base of callee frame
147 : ST 1, 2(4) ; Store argument 1 in callee
148 : LDA 4, 4(5) ; Base of callee frame
149 : LDA 6, 153(0) ; Return address
150 : ST 6, 0(4) ; Store return in callee frame
151 : ADD 5, 4, 0 ; Push callee frame
152 : LDA 7, 90(0) ; Call hasDivisorFrom
153 : LD   1, 3(5) ;  Load function result
154 : LDC   2, 4(0) ;  Caller frame size
155 : SUB   5, 5, 2 ;  Pop back to caller
156 : SUB   4, 4, 2 ;  Pop back to caller
157 : LDC  2, 1(0) ;  Load 1 into R2
158 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
159 : ST   1, 2(5) ;  Store function result into stack frame
160 : LD   6, 0(5) ;  Load return address
161 : LDA  7, 0(6) ;  Return to caller
162 : LD   1, 1(5) ;  Load parameter 'current' into R1
163 : LDA 4, 3(5) ; Base of callee frame
164 : ST 1, 1(4) ; Store argument 0 in callee
165 : LDA 4, 3(5) ; Base of callee frame
166 : LDA 6, 170(0) ; Return address
167 : ST 6, 0(4) ; Store return in callee frame
168 : ADD 5, 4, 0 ; Push callee frame
169 : LDA 7, 142(0) ; Call isPrime
170 : LD   1, 2(5) ;  Load function result
171 : LDC   2, 3(0) ;  Caller frame size
172 : SUB   5, 5, 2 ;  Pop back to caller
173 : SUB   4, 4, 2 ;  Pop back to caller
174 : JEQ  1, 177(0) ;  If condition is false, jump to ELSE
175 : LD   1, 1(5) ;  Load parameter 'current' into R1
176 : LDA  7, 178(0) ;  Skip ELSE block
177 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
178 : LDA 4, 3(5) ; Base of callee frame
179 : LDA 6, 183(0) ; Return address
180 : ST 6, 0(4) ; Store return addr in callee frame
181 : ADD 5, 4, 0 ; Push new frame
182 : LDA 7, 8(0) ; Call print
183 : LDC 2, 3(0) ; Caller frame size
184 : SUB 5, 5, 2 ; Pop frame
185 : ST   1, 3(5) ;  Store function result into stack frame
186 : LD   1, 1(5) ;  Load parameter 'current' into R1
187 : ADD  3, 1, 0 ;  Store left operand into temporary register
188 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
189 : ADD  2, 3, 0 ;  Restore left operand
190 : ADD  1, 2, 1 ;  R1 = left + right
191 : LDA 4, 4(5) ; Base of callee frame
192 : ST 1, 1(4) ; Store argument 0 in callee
193 : LD   1, 2(5) ;  Load parameter 'max' into R1
194 : LDA 4, 4(5) ; Base of callee frame
195 : ST 1, 2(4) ; Store argument 1 in callee
196 : LDA 4, 4(5) ; Base of callee frame
197 : LDA 6, 201(0) ; Return address
198 : ST 6, 0(4) ; Store return in callee frame
199 : ADD 5, 4, 0 ; Push callee frame
200 : LDA 7, 208(0) ; Call sieveAt
201 : LD   1, 3(5) ;  Load function result
202 : LDC   2, 4(0) ;  Caller frame size
203 : SUB   5, 5, 2 ;  Pop back to caller
204 : SUB   4, 4, 2 ;  Pop back to caller
205 : ST   1, 3(5) ;  Store function result into stack frame
206 : LD   6, 0(5) ;  Load return address
207 : LDA  7, 0(6) ;  Return to caller
208 : LD   1, 2(5) ;  Load parameter 'max' into R1
209 : ADD  3, 1, 0 ;  Store left operand into temporary register
210 : LD   1, 1(5) ;  Load parameter 'current' into R1
211 : ADD  2, 3, 0 ;  Restore left operand
212 : SUB  1, 2, 1 ;  left - right for less-than check
213 : JLT  1, 2(7) ;  If R1 < 0, jump to true
214 : LDC  1, 0(0) ;  false
215 : LDA  7, 1(7) ;  skip setting true
216 : LDC  1, 1(0) ;  true
217 : JEQ  1, 220(0) ;  If condition is false, jump to ELSE
218 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
219 : LDA  7, 235(0) ;  Skip ELSE block
220 : LD   1, 1(5) ;  Load parameter 'current' into R1
221 : LDA 4, 4(5) ; Base of callee frame
222 : ST 1, 1(4) ; Store argument 0 in callee
223 : LD   1, 2(5) ;  Load parameter 'max' into R1
224 : LDA 4, 4(5) ; Base of callee frame
225 : ST 1, 2(4) ; Store argument 1 in callee
226 : LDA 4, 4(5) ; Base of callee frame
227 : LDA 6, 231(0) ; Return address
228 : ST 6, 0(4) ; Store return in callee frame
229 : ADD 5, 4, 0 ; Push callee frame
230 : LDA 7, 162(0) ; Call doSieveAt
231 : LD   1, 3(5) ;  Load function result
232 : LDC   2, 4(0) ;  Caller frame size
233 : SUB   5, 5, 2 ;  Pop back to caller
234 : SUB   4, 4, 2 ;  Pop back to caller
235 : ST   1, 3(5) ;  Store function result into stack frame
236 : LD   6, 0(5) ;  Load return address
237 : LDA  7, 0(6) ;  Return to caller
