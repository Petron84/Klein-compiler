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
22 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
23 : LDA 4, 4(5) ; Base of callee frame
24 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
25 : ST 1, 1(4) ; Store argument 0 in callee
26 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
27 : ST 1, 2(4) ; Store argument 1 in callee
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame
31 : LDA 7, 157(0) ; Call factor
32 : LD   1, 3(5) ;  Load function result
33 : LDC   2, 4(0) ;  Caller frame size
34 : SUB   5, 5, 2 ;  Pop back to caller
35 : SUB   4, 4, 2 ;  Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s frame
37 : LDA  7, 52(0) ;  Skip ELSE block
38 : LDA 4, 4(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee
41 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return in callee frame
45 : ADD 5, 4, 0 ; Push callee frame
46 : LDA 7, 157(0) ; Call factor
47 : LD   1, 3(5) ;  Load function result
48 : LDC   2, 4(0) ;  Caller frame size
49 : SUB   5, 5, 2 ;  Pop back to caller
50 : SUB   4, 4, 2 ;  Pop back to caller
51 : ST 1, 3(5) ; Store result into caller’s frame
52 : LD   1, 3(5) ;  Load return value into register 1
53 : LD  6, 0(5) ;  Load return address for main function into register 6
54 : LDA  7, 0(6) ;  Jump to return address of main function
55 : LD   1, 1(5) ;  Load parameter 'a' into R1
56 : ADD  3, 1, 0 ;  Store left operand into temporary register
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ADD  2, 3, 0 ;  Restore left operand
59 : SUB  1, 2, 1 ;  left - right for less-than check
60 : JLT  1, 2(7) ;  If R1 < 0, jump to true
61 : LDC  1, 0(0) ;  false
62 : LDA  7, 1(7) ;  skip setting true
63 : LDC  1, 1(0) ;  true
64 : JEQ  1, 67(0) ;  If condition is false, jump to ELSE
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : LDA  7, 84(0) ;  Skip ELSE block
67 : LDA 4, 4(5) ; Base of callee frame
68 : LD   1, 1(5) ;  Load parameter 'a' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 2(5) ;  Load parameter 'b' into R1
71 : ADD  2, 3, 0 ;  Restore left operand
72 : SUB  1, 2, 1 ;  R1 = left - right
73 : ST 1, 1(4) ; Store argument 0 in callee
74 : LD   1, 2(5) ;  Load parameter 'b' into R1
75 : ST 1, 2(4) ; Store argument 1 in callee
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame
79 : LDA 7, 55(0) ; Call remainder
80 : LD   1, 3(5) ;  Load function result
81 : LDC   2, 4(0) ;  Caller frame size
82 : SUB   5, 5, 2 ;  Pop back to caller
83 : SUB   4, 4, 2 ;  Pop back to caller
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 2(5) ;  Load parameter 'b' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 99(0) ;  If condition is false, jump to ELSE
97 : LD   1, 1(5) ;  Load parameter 'a' into R1
98 : LDA  7, 124(0) ;  Skip ELSE block
99 : LDA 4, 4(5) ; Base of callee frame
100 : LD   1, 2(5) ;  Load parameter 'b' into R1
101 : ST 1, 1(4) ; Store argument 0 in callee
102 : LDA 4, 4(5) ; Base of callee frame
103 : LD   1, 1(5) ;  Load parameter 'a' into R1
104 : ST 1, 1(4) ; Store argument 0 in callee
105 : LD   1, 2(5) ;  Load parameter 'b' into R1
106 : ST 1, 2(4) ; Store argument 1 in callee
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 55(0) ; Call remainder
111 : LD   1, 3(5) ;  Load function result
112 : LDC   2, 4(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : SUB   4, 4, 2 ;  Pop back to caller
115 : ST 1, 2(4) ; Store argument 1 in callee
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return in callee frame
118 : ADD 5, 4, 0 ; Push callee frame
119 : LDA 7, 87(0) ; Call gcd
120 : LD   1, 3(5) ;  Load function result
121 : LDC   2, 4(0) ;  Caller frame size
122 : SUB   5, 5, 2 ;  Pop back to caller
123 : SUB   4, 4, 2 ;  Pop back to caller
124 : ST   1, 3(5) ;  Store function result into stack frame
125 : LD   6, 0(5) ;  Load return address
126 : LDA  7, 0(6) ;  Return to caller
127 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
128 : ADD  3, 1, 0 ;  Store left operand into temporary register
129 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
130 : ADD  2, 3, 0 ;  Restore left operand
131 : DIV  1, 2, 1 ;  R1 = left / right
132 : LDA 4, 5(5) ; Base of callee frame
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return addr in callee frame
135 : ADD 5, 4, 0 ; Push new frame
136 : LDA 7, 10(0) ; Call print
137 : LDC 2, 5(0) ; Caller frame size
138 : SUB 5, 5, 2 ; Pop frame
139 : ST   1, 4(5) ;  Store function result into stack frame
140 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
141 : ADD  3, 1, 0 ;  Store left operand into temporary register
142 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
143 : ADD  2, 3, 0 ;  Restore left operand
144 : DIV  1, 2, 1 ;  R1 = left / right
145 : LDA 4, 5(5) ; Base of callee frame
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return addr in callee frame
148 : ADD 5, 4, 0 ; Push new frame
149 : LDA 7, 10(0) ; Call print
150 : LDC 2, 5(0) ; Caller frame size
151 : SUB 5, 5, 2 ; Pop frame
152 : ST   1, 4(5) ;  Store function result into stack frame
153 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
154 : ST   1, 4(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LDA 4, 4(5) ; Base of callee frame
158 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
159 : ST 1, 1(4) ; Store argument 0 in callee
160 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
161 : ST 1, 2(4) ; Store argument 1 in callee
162 : LDA 4, 4(5) ; Base of callee frame
163 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
164 : ST 1, 1(4) ; Store argument 0 in callee
165 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
166 : ST 1, 2(4) ; Store argument 1 in callee
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(4) ; Store return in callee frame
169 : ADD 5, 4, 0 ; Push callee frame
170 : LDA 7, 87(0) ; Call gcd
171 : LD   1, 3(5) ;  Load function result
172 : LDC   2, 4(0) ;  Caller frame size
173 : SUB   5, 5, 2 ;  Pop back to caller
174 : SUB   4, 4, 2 ;  Pop back to caller
175 : ST 1, 3(4) ; Store argument 2 in callee
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return in callee frame
178 : ADD 5, 4, 0 ; Push callee frame
179 : LDA 7, 127(0) ; Call displayAndPrint
180 : LD   1, 4(5) ;  Load function result
181 : LDC   2, 4(0) ;  Caller frame size
182 : SUB   5, 5, 2 ;  Pop back to caller
183 : SUB   4, 4, 2 ;  Pop back to caller
184 : ST   1, 3(5) ;  Store function result into stack frame
185 : LD   6, 0(5) ;  Load return address
186 : LDA  7, 0(6) ;  Return to caller
