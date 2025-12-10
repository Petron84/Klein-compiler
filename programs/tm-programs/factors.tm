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
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC  1, 1(0) ;  Load integer-literal value into register 1
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame
20 : LDA 7, 165(0) ; Call loopToN
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
55 : LDA 7, 29(0) ; Call remainder
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
71 : LDA 7, 29(0) ; Call remainder
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
86 : LD   1, 2(5) ;  Load parameter 'current' into R1
87 : LDA 4, 3(5) ; Base of callee frame
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return addr in callee frame
90 : ADD 5, 4, 0 ; Push new frame
91 : LDA 7, 8(0) ; Call print
92 : LDC 2, 3(0) ; Caller frame size
93 : SUB 5, 5, 2 ; Pop frame
94 : ST   1, 3(5) ;  Store function result into stack frame
95 : LDA 4, 4(5) ; Base of callee frame
96 : LD   1, 1(5) ;  Load parameter 'n' into R1
97 : ST 1, 1(4) ; Store argument 0 in callee
98 : LDC  1, 1(0) ;  Load integer-literal value into register 1
99 : ST   1, 3(4) ;  Store right operand result into return value slot
100 : LD   1, 2(5) ;  Load parameter 'current' into R1
101 : ADD  2, 1, 0 ;  Move left operand to register 2
102 : LD   1, 3(4) ;  Return right operand back into register 1
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : ST 1, 2(4) ; Store argument 1 in callee
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame
108 : LDA 7, 165(0) ; Call loopToN
109 : LD   1, 3(5) ;  Load function result
110 : LDC   2, 4(0) ;  Caller frame size
111 : SUB   5, 5, 2 ;  Pop back to caller
112 : SUB   4, 4, 2 ;  Pop back to caller
113 : ST   1, 3(5) ;  Store function result into stack frame
114 : LD   6, 0(5) ;  Load return address
115 : LDA  7, 0(6) ;  Return to caller
116 : LDA 4, 4(5) ; Base of callee frame
117 : LD   1, 2(5) ;  Load parameter 'current' into R1
118 : ST 1, 1(4) ; Store argument 0 in callee
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : ST 1, 2(4) ; Store argument 1 in callee
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame
124 : LDA 7, 63(0) ; Call divides
125 : LD   1, 3(5) ;  Load function result
126 : LDC   2, 4(0) ;  Caller frame size
127 : SUB   5, 5, 2 ;  Pop back to caller
128 : SUB   4, 4, 2 ;  Pop back to caller
129 : JEQ  1, 144(0) ;  If condition is false, jump to ELSE
130 : LDA 4, 4(5) ; Base of callee frame
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LD   1, 2(5) ;  Load parameter 'current' into R1
134 : ST 1, 2(4) ; Store argument 1 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 86(0) ; Call printAndLoop
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 4(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : LDA  7, 162(0) ;  Skip ELSE block
144 : LDA 4, 4(5) ; Base of callee frame
145 : LD   1, 1(5) ;  Load parameter 'n' into R1
146 : ST 1, 1(4) ; Store argument 0 in callee
147 : LDC  1, 1(0) ;  Load integer-literal value into register 1
148 : ST   1, 3(4) ;  Store right operand result into return value slot
149 : LD   1, 2(5) ;  Load parameter 'current' into R1
150 : ADD  2, 1, 0 ;  Move left operand to register 2
151 : LD   1, 3(4) ;  Return right operand back into register 1
152 : ADD  1, 2, 1 ;  R1 = left + right
153 : ST 1, 2(4) ; Store argument 1 in callee
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame
157 : LDA 7, 165(0) ; Call loopToN
158 : LD   1, 3(5) ;  Load function result
159 : LDC   2, 4(0) ;  Caller frame size
160 : SUB   5, 5, 2 ;  Pop back to caller
161 : SUB   4, 4, 2 ;  Pop back to caller
162 : ST   1, 3(5) ;  Store function result into stack frame
163 : LD   6, 0(5) ;  Load return address
164 : LDA  7, 0(6) ;  Return to caller
165 : LD   1, 2(5) ;  Load parameter 'current' into R1
166 : ST   1, 3(4) ;  Store right operand result into return value slot
167 : LD   1, 1(5) ;  Load parameter 'n' into R1
168 : ADD  2, 1, 0 ;  Move left operand to register 2
169 : LD   1, 3(4) ;  Return right operand back into register 1
170 : SUB  1, 2, 1 ;  left - right for equality check
171 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
172 : LDC  1, 0(0) ;  false
173 : LDA  7, 1(7) ;  skip setting true
174 : LDC  1, 1(0) ;  true
175 : JEQ  1, 178(0) ;  If condition is false, jump to ELSE
176 : LD   1, 1(5) ;  Load parameter 'n' into R1
177 : LDA  7, 191(0) ;  Skip ELSE block
178 : LDA 4, 4(5) ; Base of callee frame
179 : LD   1, 1(5) ;  Load parameter 'n' into R1
180 : ST 1, 1(4) ; Store argument 0 in callee
181 : LD   1, 2(5) ;  Load parameter 'current' into R1
182 : ST 1, 2(4) ; Store argument 1 in callee
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return in callee frame
185 : ADD 5, 4, 0 ; Push callee frame
186 : LDA 7, 116(0) ; Call testAndLoop
187 : LD   1, 3(5) ;  Load function result
188 : LDC   2, 4(0) ;  Caller frame size
189 : SUB   5, 5, 2 ;  Pop back to caller
190 : SUB   4, 4, 2 ;  Pop back to caller
191 : ST   1, 3(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
