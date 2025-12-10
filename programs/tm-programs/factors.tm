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
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 1(0) ;  Load integer-literal value into register 1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 164(0) ; Call loopToN
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
54 : LDA 7, 28(0) ; Call remainder
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
70 : LDA 7, 28(0) ; Call remainder
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
85 : LD   1, 2(5) ;  Load parameter 'current' into R1
86 : LDA 4, 3(5) ; Base of callee frame
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return addr in callee frame
89 : ADD 5, 4, 0 ; Push new frame
90 : LDA 7, 8(0) ; Call print
91 : LDC 2, 3(0) ; Caller frame size
92 : SUB 5, 5, 2 ; Pop frame
93 : ST   1, 3(5) ;  Store function result into stack frame
94 : LDA 4, 4(5) ; Base of callee frame
95 : LD   1, 1(5) ;  Load parameter 'n' into R1
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LDC  1, 1(0) ;  Load integer-literal value into register 1
98 : ST   1, 3(4) ;  Store right operand result into return value slot
99 : LD   1, 2(5) ;  Load parameter 'current' into R1
100 : ADD  2, 1, 0 ;  Move left operand to register 2
101 : LD   1, 3(4) ;  Return right operand back into register 1
102 : ADD  1, 2, 1 ;  R1 = left + right
103 : ST 1, 2(4) ; Store argument 1 in callee
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return in callee frame
106 : ADD 5, 4, 0 ; Push callee frame
107 : LDA 7, 164(0) ; Call loopToN
108 : LD   1, 3(5) ;  Load function result
109 : LDC   2, 4(0) ;  Caller frame size
110 : SUB   5, 5, 2 ;  Pop back to caller
111 : SUB   4, 4, 2 ;  Pop back to caller
112 : ST   1, 3(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
115 : LDA 4, 4(5) ; Base of callee frame
116 : LD   1, 2(5) ;  Load parameter 'current' into R1
117 : ST 1, 1(4) ; Store argument 0 in callee
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ; Store argument 1 in callee
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return in callee frame
122 : ADD 5, 4, 0 ; Push callee frame
123 : LDA 7, 62(0) ; Call divides
124 : LD   1, 3(5) ;  Load function result
125 : LDC   2, 4(0) ;  Caller frame size
126 : SUB   5, 5, 2 ;  Pop back to caller
127 : SUB   4, 4, 2 ;  Pop back to caller
128 : JEQ  1, 143(0) ;  If condition is false, jump to ELSE
129 : LDA 4, 4(5) ; Base of callee frame
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LD   1, 2(5) ;  Load parameter 'current' into R1
133 : ST 1, 2(4) ; Store argument 1 in callee
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame
137 : LDA 7, 85(0) ; Call printAndLoop
138 : LD   1, 3(5) ;  Load function result
139 : LDC   2, 4(0) ;  Caller frame size
140 : SUB   5, 5, 2 ;  Pop back to caller
141 : SUB   4, 4, 2 ;  Pop back to caller
142 : LDA  7, 161(0) ;  Skip ELSE block
143 : LDA 4, 4(5) ; Base of callee frame
144 : LD   1, 1(5) ;  Load parameter 'n' into R1
145 : ST 1, 1(4) ; Store argument 0 in callee
146 : LDC  1, 1(0) ;  Load integer-literal value into register 1
147 : ST   1, 3(4) ;  Store right operand result into return value slot
148 : LD   1, 2(5) ;  Load parameter 'current' into R1
149 : ADD  2, 1, 0 ;  Move left operand to register 2
150 : LD   1, 3(4) ;  Return right operand back into register 1
151 : ADD  1, 2, 1 ;  R1 = left + right
152 : ST 1, 2(4) ; Store argument 1 in callee
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 164(0) ; Call loopToN
157 : LD   1, 3(5) ;  Load function result
158 : LDC   2, 4(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : SUB   4, 4, 2 ;  Pop back to caller
161 : ST   1, 3(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
164 : LD   1, 2(5) ;  Load parameter 'current' into R1
165 : ST   1, 3(4) ;  Store right operand result into return value slot
166 : LD   1, 1(5) ;  Load parameter 'n' into R1
167 : ADD  2, 1, 0 ;  Move left operand to register 2
168 : LD   1, 3(4) ;  Return right operand back into register 1
169 : SUB  1, 2, 1 ;  left - right for equality check
170 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
171 : LDC  1, 0(0) ;  false
172 : LDA  7, 1(7) ;  skip setting true
173 : LDC  1, 1(0) ;  true
174 : JEQ  1, 177(0) ;  If condition is false, jump to ELSE
175 : LD   1, 1(5) ;  Load parameter 'n' into R1
176 : LDA  7, 190(0) ;  Skip ELSE block
177 : LDA 4, 4(5) ; Base of callee frame
178 : LD   1, 1(5) ;  Load parameter 'n' into R1
179 : ST 1, 1(4) ; Store argument 0 in callee
180 : LD   1, 2(5) ;  Load parameter 'current' into R1
181 : ST 1, 2(4) ; Store argument 1 in callee
182 : LDA 6, 186(0) ; Return address
183 : ST 6, 0(4) ; Store return in callee frame
184 : ADD 5, 4, 0 ; Push callee frame
185 : LDA 7, 115(0) ; Call testAndLoop
186 : LD   1, 3(5) ;  Load function result
187 : LDC   2, 4(0) ;  Caller frame size
188 : SUB   5, 5, 2 ;  Pop back to caller
189 : SUB   4, 4, 2 ;  Pop back to caller
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
