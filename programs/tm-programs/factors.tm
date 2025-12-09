0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 3(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 161(0) ; Call loopToN
20 : LD   1, 3(5) ;  Load function result
21 : LDC   2, 3(0) ;  Caller frame size
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
33 : JLT  1, 3(7) ;  If R1 < 0, jump to true
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
52 : LDA 7, 28(0) ; Call remainder
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
68 : LDA 7, 28(0) ; Call remainder
69 : LD   1, 3(5) ;  Load function result
70 : LDC   2, 4(0) ;  Caller frame size
71 : SUB   5, 5, 2 ;  Pop back to caller
72 : SUB   4, 4, 2 ;  Pop back to caller
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 2(5) ;  Load parameter 'current' into R1
85 : LDA 4, 4(5) ; Base of callee frame
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return addr in callee frame
88 : ADD 5, 4, 0 ; Push new frame
89 : LDA 7, 8(0) ; Call print
90 : LDC 2, 4(0) ; Caller frame size
91 : SUB 5, 5, 2 ; Pop frame
92 : ST   1, 3(5) ;  Store function result into stack frame
93 : LDA 4, 4(5) ; Base of callee frame
94 : LD   1, 1(5) ;  Load parameter 'n' into R1
95 : ST 1, 1(4) ; Store argument 0 in callee
96 : LD   1, 2(5) ;  Load parameter 'current' into R1
97 : ADD  3, 1, 0 ;  Store left operand into temporary register
98 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
99 : ADD  2, 3, 0 ;  Restore left operand
100 : ADD  1, 2, 1 ;  R1 = left + right
101 : ST 1, 2(4) ; Store argument 1 in callee
102 : LDA 6, 106(0) ; Return address
103 : ST 6, 0(4) ; Store return in callee frame
104 : ADD 5, 4, 0 ; Push callee frame
105 : LDA 7, 161(0) ; Call loopToN
106 : LD   1, 3(5) ;  Load function result
107 : LDC   2, 4(0) ;  Caller frame size
108 : SUB   5, 5, 2 ;  Pop back to caller
109 : SUB   4, 4, 2 ;  Pop back to caller
110 : ST   1, 3(5) ;  Store function result into stack frame
111 : LD   6, 0(5) ;  Load return address
112 : LDA  7, 0(6) ;  Return to caller
113 : LDA 4, 4(5) ; Base of callee frame
114 : LD   1, 2(5) ;  Load parameter 'current' into R1
115 : ST 1, 1(4) ; Store argument 0 in callee
116 : LD   1, 1(5) ;  Load parameter 'n' into R1
117 : ST 1, 2(4) ; Store argument 1 in callee
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return in callee frame
120 : ADD 5, 4, 0 ; Push callee frame
121 : LDA 7, 60(0) ; Call divides
122 : LD   1, 3(5) ;  Load function result
123 : LDC   2, 4(0) ;  Caller frame size
124 : SUB   5, 5, 2 ;  Pop back to caller
125 : SUB   4, 4, 2 ;  Pop back to caller
126 : JEQ  1, 141(0) ;  If condition is false, jump to ELSE
127 : LDA 4, 4(5) ; Base of callee frame
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LD   1, 2(5) ;  Load parameter 'current' into R1
131 : ST 1, 2(4) ; Store argument 1 in callee
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return in callee frame
134 : ADD 5, 4, 0 ; Push callee frame
135 : LDA 7, 84(0) ; Call printAndLoop
136 : LD   1, 3(5) ;  Load function result
137 : LDC   2, 4(0) ;  Caller frame size
138 : SUB   5, 5, 2 ;  Pop back to caller
139 : SUB   4, 4, 2 ;  Pop back to caller
140 : LDA  7, 158(0) ;  Skip ELSE block
141 : LDA 4, 4(5) ; Base of callee frame
142 : LD   1, 1(5) ;  Load parameter 'n' into R1
143 : ST 1, 1(4) ; Store argument 0 in callee
144 : LD   1, 2(5) ;  Load parameter 'current' into R1
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
147 : ADD  2, 3, 0 ;  Restore left operand
148 : ADD  1, 2, 1 ;  R1 = left + right
149 : ST 1, 2(4) ; Store argument 1 in callee
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame
153 : LDA 7, 161(0) ; Call loopToN
154 : LD   1, 3(5) ;  Load function result
155 : LDC   2, 4(0) ;  Caller frame size
156 : SUB   5, 5, 2 ;  Pop back to caller
157 : SUB   4, 4, 2 ;  Pop back to caller
158 : ST   1, 3(5) ;  Store function result into stack frame
159 : LD   6, 0(5) ;  Load return address
160 : LDA  7, 0(6) ;  Return to caller
161 : LD   1, 1(5) ;  Load parameter 'n' into R1
162 : ADD  3, 1, 0 ;  Store left operand into temporary register
163 : LD   1, 2(5) ;  Load parameter 'current' into R1
164 : ADD  2, 3, 0 ;  Restore left operand
165 : SUB  1, 2, 1 ;  left - right for equality check
166 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
167 : LDC  1, 0(0) ;  false
168 : LDA  7, 1(7) ;  skip setting true
169 : LDC  1, 1(0) ;  true
170 : JEQ  1, 173(0) ;  If condition is false, jump to ELSE
171 : LD   1, 1(5) ;  Load parameter 'n' into R1
172 : LDA  7, 186(0) ;  Skip ELSE block
173 : LDA 4, 4(5) ; Base of callee frame
174 : LD   1, 1(5) ;  Load parameter 'n' into R1
175 : ST 1, 1(4) ; Store argument 0 in callee
176 : LD   1, 2(5) ;  Load parameter 'current' into R1
177 : ST 1, 2(4) ; Store argument 1 in callee
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame
181 : LDA 7, 113(0) ; Call testAndLoop
182 : LD   1, 3(5) ;  Load function result
183 : LDC   2, 4(0) ;  Caller frame size
184 : SUB   5, 5, 2 ;  Pop back to caller
185 : SUB   4, 4, 2 ;  Pop back to caller
186 : ST   1, 3(5) ;  Store function result into stack frame
187 : LD   6, 0(5) ;  Load return address
188 : LDA  7, 0(6) ;  Return to caller
