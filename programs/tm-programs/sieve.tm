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
11 : LDA 4, 3(5) ; Base of callee frame
12 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
13 : ST 1, 1(4) ; Argument 0
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 2(4) ; Argument 1
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 185(0) ; Call sieveAt
20 : LD 1, 3(5) ; Load function result
21 : LDC 2, 3(0) ; Caller frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD   1, 2(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'num' into R1
28 : ADD  3, 1, 0 ;  Store left operand into temporary register
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : ADD  2, 3, 0 ;  Restore left operand
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : LDA  7, 55(0) ;  Skip ELSE block
39 : LDA 4, 4(5) ; Base of callee frame
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : ADD  3, 1, 0 ;  Store left operand into temporary register
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ADD  2, 3, 0 ;  Restore left operand
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST 1, 1(4) ; Argument 0
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : ST 1, 2(4) ; Argument 1
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame
51 : LDA 7, 27(0) ; Call rem
52 : LD 1, 3(5) ; Load function result
53 : LDC 2, 4(0) ; Caller frame size
54 : SUB 5, 5, 2 ; Pop back to caller
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LDA 4, 4(5) ; Base of callee frame
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 1(4) ; Argument 0
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : ST 1, 2(4) ; Argument 1
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 27(0) ; Call rem
67 : LD 1, 3(5) ; Load function result
68 : LDC 2, 4(0) ; Caller frame size
69 : SUB 5, 5, 2 ; Pop back to caller
70 : ADD  3, 1, 0 ;  Store left operand into temporary register
71 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
72 : ADD  2, 3, 0 ;  Restore left operand
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
81 : LD   1, 1(5) ;  Load parameter 'i' into R1
82 : ADD  3, 1, 0 ;  Store left operand into temporary register
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ADD  2, 3, 0 ;  Restore left operand
85 : SUB  1, 2, 1 ;  left - right for less-than check
86 : JLT  1, 2(7) ;  If R1 < 0, jump to true
87 : LDC  1, 0(0) ;  false
88 : LDA  7, 1(7) ;  skip setting true
89 : LDC  1, 1(0) ;  true
90 : JEQ  1, 123(0) ;  If condition is false, jump to ELSE
91 : LDA 4, 4(5) ; Base of callee frame
92 : LD   1, 1(5) ;  Load parameter 'i' into R1
93 : ST 1, 1(4) ; Argument 0
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : ST 1, 2(4) ; Argument 1
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return in callee frame
98 : ADD 5, 4, 0 ; Push callee frame
99 : LDA 7, 58(0) ; Call divides
100 : LD 1, 3(5) ; Load function result
101 : LDC 2, 4(0) ; Caller frame size
102 : SUB 5, 5, 2 ; Pop back to caller
103 : ADD  3, 1, 0 ;  Store left operand into temporary register
104 : LDA 4, 4(5) ; Base of callee frame
105 : LD   1, 1(5) ;  Load parameter 'i' into R1
106 : ADD  3, 1, 0 ;  Store left operand into temporary register
107 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
108 : ADD  2, 3, 0 ;  Restore left operand
109 : ADD  1, 2, 1 ;  R1 = left + right
110 : ST 1, 1(4) ; Argument 0
111 : LD   1, 2(5) ;  Load parameter 'n' into R1
112 : ST 1, 2(4) ; Argument 1
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame
116 : LDA 7, 81(0) ; Call hasDivisorFrom
117 : LD 1, 3(5) ; Load function result
118 : LDC 2, 4(0) ; Caller frame size
119 : SUB 5, 5, 2 ; Pop back to caller
120 : ADD  2, 3, 0 ;  Restore left operand
121 : ADD  1, 2, 1 ;  R1 = left OR right
122 : LDA  7, 124(0) ;  Skip ELSE block
123 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
124 : ST   1, 3(5) ;  Store function result into stack frame
125 : LD   6, 0(5) ;  Load return address
126 : LDA  7, 0(6) ;  Return to caller
127 : LDA 4, 3(5) ; Base of callee frame
128 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
129 : ST 1, 1(4) ; Argument 0
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 2(4) ; Argument 1
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return in callee frame
134 : ADD 5, 4, 0 ; Push callee frame
135 : LDA 7, 81(0) ; Call hasDivisorFrom
136 : LD 1, 3(5) ; Load function result
137 : LDC 2, 3(0) ; Caller frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : LDC  2, 1(0) ;  Load 1 into R2
140 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
141 : ST   1, 2(5) ;  Store function result into stack frame
142 : LD   6, 0(5) ;  Load return address
143 : LDA  7, 0(6) ;  Return to caller
144 : LDA 4, 4(5) ; Base of callee frame
145 : LD   1, 1(5) ;  Load parameter 'current' into R1
146 : ST 1, 1(4) ; Argument 0
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame
150 : LDA 7, 127(0) ; Call isPrime
151 : LD 1, 2(5) ; Load function result
152 : LDC 2, 4(0) ; Caller frame size
153 : SUB 5, 5, 2 ; Pop back to caller
154 : JEQ  1, 157(0) ;  If condition is false, jump to ELSE
155 : LD   1, 1(5) ;  Load parameter 'current' into R1
156 : LDA  7, 158(0) ;  Skip ELSE block
157 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
158 : LDA 4, 4(5) ; Base of callee frame
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return addr in callee frame
161 : ADD 5, 4, 0 ; Push new frame
162 : LDA 7, 8(0) ; Call print
163 : LDC 2, 4(0) ; Caller frame size
164 : SUB 5, 5, 2 ; Pop frame
165 : ST   1, 3(5) ;  Store function result into stack frame
166 : LDA 4, 4(5) ; Base of callee frame
167 : LD   1, 1(5) ;  Load parameter 'current' into R1
168 : ADD  3, 1, 0 ;  Store left operand into temporary register
169 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
170 : ADD  2, 3, 0 ;  Restore left operand
171 : ADD  1, 2, 1 ;  R1 = left + right
172 : ST 1, 1(4) ; Argument 0
173 : LD   1, 2(5) ;  Load parameter 'max' into R1
174 : ST 1, 2(4) ; Argument 1
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(4) ; Store return in callee frame
177 : ADD 5, 4, 0 ; Push callee frame
178 : LDA 7, 185(0) ; Call sieveAt
179 : LD 1, 3(5) ; Load function result
180 : LDC 2, 4(0) ; Caller frame size
181 : SUB 5, 5, 2 ; Pop back to caller
182 : ST   1, 3(5) ;  Store function result into stack frame
183 : LD   6, 0(5) ;  Load return address
184 : LDA  7, 0(6) ;  Return to caller
185 : LD   1, 2(5) ;  Load parameter 'max' into R1
186 : ADD  3, 1, 0 ;  Store left operand into temporary register
187 : LD   1, 1(5) ;  Load parameter 'current' into R1
188 : ADD  2, 3, 0 ;  Restore left operand
189 : SUB  1, 2, 1 ;  left - right for less-than check
190 : JLT  1, 2(7) ;  If R1 < 0, jump to true
191 : LDC  1, 0(0) ;  false
192 : LDA  7, 1(7) ;  skip setting true
193 : LDC  1, 1(0) ;  true
194 : JEQ  1, 197(0) ;  If condition is false, jump to ELSE
195 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
196 : LDA  7, 209(0) ;  Skip ELSE block
197 : LDA 4, 4(5) ; Base of callee frame
198 : LD   1, 1(5) ;  Load parameter 'current' into R1
199 : ST 1, 1(4) ; Argument 0
200 : LD   1, 2(5) ;  Load parameter 'max' into R1
201 : ST 1, 2(4) ; Argument 1
202 : LDA 6, 206(0) ; Return address
203 : ST 6, 0(4) ; Store return in callee frame
204 : ADD 5, 4, 0 ; Push callee frame
205 : LDA 7, 144(0) ; Call doSieveAt
206 : LD 1, 3(5) ; Load function result
207 : LDC 2, 4(0) ; Caller frame size
208 : SUB 5, 5, 2 ; Pop back to caller
209 : ST   1, 3(5) ;  Store function result into stack frame
210 : LD   6, 0(5) ;  Load return address
211 : LDA  7, 0(6) ;  Return to caller
