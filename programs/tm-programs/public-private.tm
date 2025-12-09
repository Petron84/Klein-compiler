0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
23 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
24 : LDA 4, 4(5) ; Base of callee frame
25 : ST 1, 1(4) ; Store argument 0 in callee
26 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
27 : LDA 4, 4(5) ; Base of callee frame
28 : ST 1, 2(4) ; Store argument 1 in callee
29 : LDA 4, 4(5) ; Base of callee frame
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame
33 : LDA 7, 167(0) ; Call factor
34 : LD   1, 3(5) ;  Load function result
35 : LDC   2, 4(0) ;  Caller frame size
36 : SUB   5, 5, 2 ;  Pop back to caller
37 : SUB   4, 4, 2 ;  Pop back to caller
38 : ST 1, 3(5) ; Store result into caller’s frame
39 : LDA  7, 56(0) ;  Skip ELSE block
40 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
41 : LDA 4, 4(5) ; Base of callee frame
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
44 : LDA 4, 4(5) ; Base of callee frame
45 : ST 1, 2(4) ; Store argument 1 in callee
46 : LDA 4, 4(5) ; Base of callee frame
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return in callee frame
49 : ADD 5, 4, 0 ; Push callee frame
50 : LDA 7, 167(0) ; Call factor
51 : LD   1, 3(5) ;  Load function result
52 : LDC   2, 4(0) ;  Caller frame size
53 : SUB   5, 5, 2 ;  Pop back to caller
54 : SUB   4, 4, 2 ;  Pop back to caller
55 : ST 1, 3(5) ; Store result into caller’s frame
56 : LD   1, 3(5) ;  Load return value into register 1
57 : LD  6, 0(5) ;  Load return address for main function into register 6
58 : LDA  7, 0(6) ;  Jump to return address of main function
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ADD  3, 1, 0 ;  Store left operand into temporary register
61 : LD   1, 2(5) ;  Load parameter 'b' into R1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : SUB  1, 2, 1 ;  left - right for less-than check
64 : JLT  1, 2(7) ;  If R1 < 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : JEQ  1, 71(0) ;  If condition is false, jump to ELSE
69 : LD   1, 1(5) ;  Load parameter 'a' into R1
70 : LDA  7, 90(0) ;  Skip ELSE block
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  3, 1, 0 ;  Store left operand into temporary register
73 : LD   1, 2(5) ;  Load parameter 'b' into R1
74 : ADD  2, 3, 0 ;  Restore left operand
75 : SUB  1, 2, 1 ;  R1 = left - right
76 : LDA 4, 4(5) ; Base of callee frame
77 : ST 1, 1(4) ; Store argument 0 in callee
78 : LD   1, 2(5) ;  Load parameter 'b' into R1
79 : LDA 4, 4(5) ; Base of callee frame
80 : ST 1, 2(4) ; Store argument 1 in callee
81 : LDA 4, 4(5) ; Base of callee frame
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame
85 : LDA 7, 59(0) ; Call remainder
86 : LD   1, 3(5) ;  Load function result
87 : LDC   2, 4(0) ;  Caller frame size
88 : SUB   5, 5, 2 ;  Pop back to caller
89 : SUB   4, 4, 2 ;  Pop back to caller
90 : ST   1, 3(5) ;  Store function result into stack frame
91 : LD   6, 0(5) ;  Load return address
92 : LDA  7, 0(6) ;  Return to caller
93 : LD   1, 2(5) ;  Load parameter 'b' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : SUB  1, 2, 1 ;  left - right for equality check
98 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
99 : LDC  1, 0(0) ;  false
100 : LDA  7, 1(7) ;  skip setting true
101 : LDC  1, 1(0) ;  true
102 : JEQ  1, 105(0) ;  If condition is false, jump to ELSE
103 : LD   1, 1(5) ;  Load parameter 'a' into R1
104 : LDA  7, 134(0) ;  Skip ELSE block
105 : LD   1, 2(5) ;  Load parameter 'b' into R1
106 : LDA 4, 4(5) ; Base of callee frame
107 : ST 1, 1(4) ; Store argument 0 in callee
108 : LD   1, 1(5) ;  Load parameter 'a' into R1
109 : LDA 4, 4(5) ; Base of callee frame
110 : ST 1, 1(4) ; Store argument 0 in callee
111 : LD   1, 2(5) ;  Load parameter 'b' into R1
112 : LDA 4, 4(5) ; Base of callee frame
113 : ST 1, 2(4) ; Store argument 1 in callee
114 : LDA 4, 4(5) ; Base of callee frame
115 : LDA 6, 119(0) ; Return address
116 : ST 6, 0(4) ; Store return in callee frame
117 : ADD 5, 4, 0 ; Push callee frame
118 : LDA 7, 59(0) ; Call remainder
119 : LD   1, 3(5) ;  Load function result
120 : LDC   2, 4(0) ;  Caller frame size
121 : SUB   5, 5, 2 ;  Pop back to caller
122 : SUB   4, 4, 2 ;  Pop back to caller
123 : LDA 4, 4(5) ; Base of callee frame
124 : ST 1, 2(4) ; Store argument 1 in callee
125 : LDA 4, 4(5) ; Base of callee frame
126 : LDA 6, 130(0) ; Return address
127 : ST 6, 0(4) ; Store return in callee frame
128 : ADD 5, 4, 0 ; Push callee frame
129 : LDA 7, 93(0) ; Call gcd
130 : LD   1, 3(5) ;  Load function result
131 : LDC   2, 4(0) ;  Caller frame size
132 : SUB   5, 5, 2 ;  Pop back to caller
133 : SUB   4, 4, 2 ;  Pop back to caller
134 : ST   1, 3(5) ;  Store function result into stack frame
135 : LD   6, 0(5) ;  Load return address
136 : LDA  7, 0(6) ;  Return to caller
137 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
140 : ADD  2, 3, 0 ;  Restore left operand
141 : DIV  1, 2, 1 ;  R1 = left / right
142 : LDA 4, 3(5) ; Base of callee frame
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return addr in callee frame
145 : ADD 5, 4, 0 ; Push new frame
146 : LDA 7, 10(0) ; Call print
147 : LDC 2, 3(0) ; Caller frame size
148 : SUB 5, 5, 2 ; Pop frame
149 : ST   1, 4(5) ;  Store function result into stack frame
150 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
151 : ADD  3, 1, 0 ;  Store left operand into temporary register
152 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
153 : ADD  2, 3, 0 ;  Restore left operand
154 : DIV  1, 2, 1 ;  R1 = left / right
155 : LDA 4, 3(5) ; Base of callee frame
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return addr in callee frame
158 : ADD 5, 4, 0 ; Push new frame
159 : LDA 7, 10(0) ; Call print
160 : LDC 2, 3(0) ; Caller frame size
161 : SUB 5, 5, 2 ; Pop frame
162 : ST   1, 4(5) ;  Store function result into stack frame
163 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
164 : ST   1, 4(5) ;  Store function result into stack frame
165 : LD   6, 0(5) ;  Load return address
166 : LDA  7, 0(6) ;  Return to caller
167 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
168 : LDA 4, 5(5) ; Base of callee frame
169 : ST 1, 1(4) ; Store argument 0 in callee
170 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
171 : LDA 4, 5(5) ; Base of callee frame
172 : ST 1, 2(4) ; Store argument 1 in callee
173 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
174 : LDA 4, 4(5) ; Base of callee frame
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
177 : LDA 4, 4(5) ; Base of callee frame
178 : ST 1, 2(4) ; Store argument 1 in callee
179 : LDA 4, 4(5) ; Base of callee frame
180 : LDA 6, 184(0) ; Return address
181 : ST 6, 0(4) ; Store return in callee frame
182 : ADD 5, 4, 0 ; Push callee frame
183 : LDA 7, 93(0) ; Call gcd
184 : LD   1, 3(5) ;  Load function result
185 : LDC   2, 4(0) ;  Caller frame size
186 : SUB   5, 5, 2 ;  Pop back to caller
187 : SUB   4, 4, 2 ;  Pop back to caller
188 : LDA 4, 5(5) ; Base of callee frame
189 : ST 1, 3(4) ; Store argument 2 in callee
190 : LDA 4, 5(5) ; Base of callee frame
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return in callee frame
193 : ADD 5, 4, 0 ; Push callee frame
194 : LDA 7, 137(0) ; Call displayAndPrint
195 : LD   1, 4(5) ;  Load function result
196 : LDC   2, 5(0) ;  Caller frame size
197 : SUB   5, 5, 2 ;  Pop back to caller
198 : SUB   4, 4, 2 ;  Pop back to caller
199 : ST   1, 3(5) ;  Store function result into stack frame
200 : LD   6, 0(5) ;  Load return address
201 : LDA  7, 0(6) ;  Return to caller
