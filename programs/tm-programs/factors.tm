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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : LDA 4, 4(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
15 : LDA 4, 4(5) ; Base of callee frame
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDA 4, 4(5) ; Base of callee frame
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 168(0) ; Call loopToN
22 : LD   1, 3(5) ;  Load function result
23 : LDC   2, 4(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : ST 1, 2(5) ; Store result into caller’s frame
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'num' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LD   1, 2(5) ;  Load parameter 'den' into R1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : SUB  1, 2, 1 ;  left - right for less-than check
34 : JLT  1, 2(7) ;  If R1 < 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 41(0) ;  If condition is false, jump to ELSE
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : LDA  7, 59(0) ;  Skip ELSE block
41 : LD   1, 1(5) ;  Load parameter 'num' into R1
42 : ADD  3, 1, 0 ;  Store left operand into temporary register
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : LDA 4, 4(5) ; Base of callee frame
47 : ST 1, 1(4) ; Store argument 0 in callee
48 : LD   1, 2(5) ;  Load parameter 'den' into R1
49 : LDA 4, 4(5) ; Base of callee frame
50 : ST 1, 2(4) ; Store argument 1 in callee
51 : LDA 4, 4(5) ; Base of callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame
55 : LDA 7, 29(0) ; Call remainder
56 : LD   1, 3(5) ;  Load function result
57 : LDC   2, 4(0) ;  Caller frame size
58 : SUB   5, 5, 2 ;  Pop back to caller
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : LDA 4, 4(5) ; Base of callee frame
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : LDA 4, 4(5) ; Base of callee frame
67 : ST 1, 2(4) ; Store argument 1 in callee
68 : LDA 4, 4(5) ; Base of callee frame
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame
72 : LDA 7, 29(0) ; Call remainder
73 : LD   1, 3(5) ;  Load function result
74 : LDC   2, 4(0) ;  Caller frame size
75 : SUB   5, 5, 2 ;  Pop back to caller
76 : ADD  3, 1, 0 ;  Store left operand into temporary register
77 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
78 : ADD  2, 3, 0 ;  Restore left operand
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 2(5) ;  Load parameter 'current' into R1
88 : LDA 4, 3(5) ; Base of callee frame
89 : LDA 6, 93(0) ; Return address
90 : ST 6, 0(4) ; Store return addr in callee frame
91 : ADD 5, 4, 0 ; Push new frame
92 : LDA 7, 8(0) ; Call print
93 : LDC 2, 3(0) ; Caller frame size
94 : SUB 5, 5, 2 ; Pop frame
95 : ST   1, 3(5) ;  Store function result into stack frame
96 : LD   1, 1(5) ;  Load parameter 'n' into R1
97 : LDA 4, 4(5) ; Base of callee frame
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LD   1, 2(5) ;  Load parameter 'current' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : LDA 4, 4(5) ; Base of callee frame
105 : ST 1, 2(4) ; Store argument 1 in callee
106 : LDA 4, 4(5) ; Base of callee frame
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 168(0) ; Call loopToN
111 : LD   1, 3(5) ;  Load function result
112 : LDC   2, 4(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : ST   1, 3(5) ;  Store function result into stack frame
115 : LD   6, 0(5) ;  Load return address
116 : LDA  7, 0(6) ;  Return to caller
117 : LD   1, 2(5) ;  Load parameter 'current' into R1
118 : LDA 4, 4(5) ; Base of callee frame
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : LDA 4, 4(5) ; Base of callee frame
122 : ST 1, 2(4) ; Store argument 1 in callee
123 : LDA 4, 4(5) ; Base of callee frame
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame
127 : LDA 7, 62(0) ; Call divides
128 : LD   1, 3(5) ;  Load function result
129 : LDC   2, 4(0) ;  Caller frame size
130 : SUB   5, 5, 2 ;  Pop back to caller
131 : JEQ  1, 147(0) ;  If condition is false, jump to ELSE
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : LDA 4, 4(5) ; Base of callee frame
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD   1, 2(5) ;  Load parameter 'current' into R1
136 : LDA 4, 4(5) ; Base of callee frame
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 4, 4(5) ; Base of callee frame
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame
142 : LDA 7, 87(0) ; Call printAndLoop
143 : LD   1, 3(5) ;  Load function result
144 : LDC   2, 4(0) ;  Caller frame size
145 : SUB   5, 5, 2 ;  Pop back to caller
146 : LDA  7, 165(0) ;  Skip ELSE block
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : LDA 4, 4(5) ; Base of callee frame
149 : ST 1, 1(4) ; Store argument 0 in callee
150 : LD   1, 2(5) ;  Load parameter 'current' into R1
151 : ADD  3, 1, 0 ;  Store left operand into temporary register
152 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
153 : ADD  2, 3, 0 ;  Restore left operand
154 : ADD  1, 2, 1 ;  R1 = left + right
155 : LDA 4, 4(5) ; Base of callee frame
156 : ST 1, 2(4) ; Store argument 1 in callee
157 : LDA 4, 4(5) ; Base of callee frame
158 : LDA 6, 162(0) ; Return address
159 : ST 6, 0(4) ; Store return in callee frame
160 : ADD 5, 4, 0 ; Push callee frame
161 : LDA 7, 168(0) ; Call loopToN
162 : LD   1, 3(5) ;  Load function result
163 : LDC   2, 4(0) ;  Caller frame size
164 : SUB   5, 5, 2 ;  Pop back to caller
165 : ST   1, 3(5) ;  Store function result into stack frame
166 : LD   6, 0(5) ;  Load return address
167 : LDA  7, 0(6) ;  Return to caller
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ADD  3, 1, 0 ;  Store left operand into temporary register
170 : LD   1, 2(5) ;  Load parameter 'current' into R1
171 : ADD  2, 3, 0 ;  Restore left operand
172 : SUB  1, 2, 1 ;  left - right for equality check
173 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
174 : LDC  1, 0(0) ;  false
175 : LDA  7, 1(7) ;  skip setting true
176 : LDC  1, 1(0) ;  true
177 : JEQ  1, 180(0) ;  If condition is false, jump to ELSE
178 : LD   1, 1(5) ;  Load parameter 'n' into R1
179 : LDA  7, 194(0) ;  Skip ELSE block
180 : LD   1, 1(5) ;  Load parameter 'n' into R1
181 : LDA 4, 4(5) ; Base of callee frame
182 : ST 1, 1(4) ; Store argument 0 in callee
183 : LD   1, 2(5) ;  Load parameter 'current' into R1
184 : LDA 4, 4(5) ; Base of callee frame
185 : ST 1, 2(4) ; Store argument 1 in callee
186 : LDA 4, 4(5) ; Base of callee frame
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame
190 : LDA 7, 117(0) ; Call testAndLoop
191 : LD   1, 3(5) ;  Load function result
192 : LDC   2, 4(0) ;  Caller frame size
193 : SUB   5, 5, 2 ;  Pop back to caller
194 : ST   1, 3(5) ;  Store function result into stack frame
195 : LD   6, 0(5) ;  Load return address
196 : LDA  7, 0(6) ;  Return to caller
