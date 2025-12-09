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
21 : LDA 7, 175(0) ; Call loopToN
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
56 : LDA 7, 30(0) ; Call remainder
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
74 : LDA 7, 30(0) ; Call remainder
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
90 : LD   1, 2(5) ;  Load parameter 'current' into R1
91 : LDA 4, 3(5) ; Base of callee frame
92 : LDA 6, 96(0) ; Return address
93 : ST 6, 0(4) ; Store return addr in callee frame
94 : ADD 5, 4, 0 ; Push new frame
95 : LDA 7, 8(0) ; Call print
96 : LDC 2, 3(0) ; Caller frame size
97 : SUB 5, 5, 2 ; Pop frame
98 : ST   1, 3(5) ;  Store function result into stack frame
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : LDA 4, 4(5) ; Base of callee frame
101 : ST 1, 1(4) ; Store argument 0 in callee
102 : LD   1, 2(5) ;  Load parameter 'current' into R1
103 : ADD  3, 1, 0 ;  Store left operand into temporary register
104 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
105 : ADD  2, 3, 0 ;  Restore left operand
106 : ADD  1, 2, 1 ;  R1 = left + right
107 : LDA 4, 4(5) ; Base of callee frame
108 : ST 1, 2(4) ; Store argument 1 in callee
109 : LDA 4, 4(5) ; Base of callee frame
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(4) ; Store return in callee frame
112 : ADD 5, 4, 0 ; Push callee frame
113 : LDA 7, 175(0) ; Call loopToN
114 : LD   1, 3(5) ;  Load function result
115 : LDC   2, 4(0) ;  Caller frame size
116 : SUB   5, 5, 2 ;  Pop back to caller
117 : SUB   4, 4, 2 ;  Pop back to caller
118 : ST   1, 3(5) ;  Store function result into stack frame
119 : LD   6, 0(5) ;  Load return address
120 : LDA  7, 0(6) ;  Return to caller
121 : LD   1, 2(5) ;  Load parameter 'current' into R1
122 : LDA 4, 4(5) ; Base of callee frame
123 : ST 1, 1(4) ; Store argument 0 in callee
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : LDA 4, 4(5) ; Base of callee frame
126 : ST 1, 2(4) ; Store argument 1 in callee
127 : LDA 4, 4(5) ; Base of callee frame
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 64(0) ; Call divides
132 : LD   1, 3(5) ;  Load function result
133 : LDC   2, 4(0) ;  Caller frame size
134 : SUB   5, 5, 2 ;  Pop back to caller
135 : SUB   4, 4, 2 ;  Pop back to caller
136 : JEQ  1, 153(0) ;  If condition is false, jump to ELSE
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : LDA 4, 4(5) ; Base of callee frame
139 : ST 1, 1(4) ; Store argument 0 in callee
140 : LD   1, 2(5) ;  Load parameter 'current' into R1
141 : LDA 4, 4(5) ; Base of callee frame
142 : ST 1, 2(4) ; Store argument 1 in callee
143 : LDA 4, 4(5) ; Base of callee frame
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame
147 : LDA 7, 90(0) ; Call printAndLoop
148 : LD   1, 3(5) ;  Load function result
149 : LDC   2, 4(0) ;  Caller frame size
150 : SUB   5, 5, 2 ;  Pop back to caller
151 : SUB   4, 4, 2 ;  Pop back to caller
152 : LDA  7, 172(0) ;  Skip ELSE block
153 : LD   1, 1(5) ;  Load parameter 'n' into R1
154 : LDA 4, 4(5) ; Base of callee frame
155 : ST 1, 1(4) ; Store argument 0 in callee
156 : LD   1, 2(5) ;  Load parameter 'current' into R1
157 : ADD  3, 1, 0 ;  Store left operand into temporary register
158 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
159 : ADD  2, 3, 0 ;  Restore left operand
160 : ADD  1, 2, 1 ;  R1 = left + right
161 : LDA 4, 4(5) ; Base of callee frame
162 : ST 1, 2(4) ; Store argument 1 in callee
163 : LDA 4, 4(5) ; Base of callee frame
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 175(0) ; Call loopToN
168 : LD   1, 3(5) ;  Load function result
169 : LDC   2, 4(0) ;  Caller frame size
170 : SUB   5, 5, 2 ;  Pop back to caller
171 : SUB   4, 4, 2 ;  Pop back to caller
172 : ST   1, 3(5) ;  Store function result into stack frame
173 : LD   6, 0(5) ;  Load return address
174 : LDA  7, 0(6) ;  Return to caller
175 : LD   1, 1(5) ;  Load parameter 'n' into R1
176 : ADD  3, 1, 0 ;  Store left operand into temporary register
177 : LD   1, 2(5) ;  Load parameter 'current' into R1
178 : ADD  2, 3, 0 ;  Restore left operand
179 : SUB  1, 2, 1 ;  left - right for equality check
180 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
181 : LDC  1, 0(0) ;  false
182 : LDA  7, 1(7) ;  skip setting true
183 : LDC  1, 1(0) ;  true
184 : JEQ  1, 187(0) ;  If condition is false, jump to ELSE
185 : LD   1, 1(5) ;  Load parameter 'n' into R1
186 : LDA  7, 202(0) ;  Skip ELSE block
187 : LD   1, 1(5) ;  Load parameter 'n' into R1
188 : LDA 4, 4(5) ; Base of callee frame
189 : ST 1, 1(4) ; Store argument 0 in callee
190 : LD   1, 2(5) ;  Load parameter 'current' into R1
191 : LDA 4, 4(5) ; Base of callee frame
192 : ST 1, 2(4) ; Store argument 1 in callee
193 : LDA 4, 4(5) ; Base of callee frame
194 : LDA 6, 198(0) ; Return address
195 : ST 6, 0(4) ; Store return in callee frame
196 : ADD 5, 4, 0 ; Push callee frame
197 : LDA 7, 121(0) ; Call testAndLoop
198 : LD   1, 3(5) ;  Load function result
199 : LDC   2, 4(0) ;  Caller frame size
200 : SUB   5, 5, 2 ;  Pop back to caller
201 : SUB   4, 4, 2 ;  Pop back to caller
202 : ST   1, 3(5) ;  Store function result into stack frame
203 : LD   6, 0(5) ;  Load return address
204 : LDA  7, 0(6) ;  Return to caller
