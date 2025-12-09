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
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : LDA 4, 3(5) ; Base of callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return addr in callee frame
17 : ADD 5, 4, 0 ; Push new frame
18 : LDA 7, 10(0) ; Call print
19 : LDC 2, 3(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop frame
21 : LD   1, 1(5) ;  Load parameter 'm' into R1
22 : LDA 4, 4(5) ; Base of callee frame
23 : ST 1, 1(4) ; Store argument 0 in callee
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : LDA 4, 4(5) ; Base of callee frame
26 : ST 1, 2(4) ; Store argument 1 in callee
27 : LDA 4, 4(5) ; Base of callee frame
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame
31 : LDA 7, 40(0) ; Call mult
32 : LD   1, 3(5) ;  Load function result
33 : LDC   2, 4(0) ;  Caller frame size
34 : SUB   5, 5, 2 ;  Pop back to caller
35 : SUB   4, 4, 2 ;  Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s frame
37 : LD   1, 3(5) ;  Load return value into register 1
38 : LD  6, 0(5) ;  Load return address for main function into register 6
39 : LDA  7, 0(6) ;  Jump to return address of main function
40 : LD   1, 1(5) ;  Load parameter 'm' into R1
41 : LDA 4, 5(5) ; Base of callee frame
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD   1, 2(5) ;  Load parameter 'n' into R1
44 : LDA 4, 5(5) ; Base of callee frame
45 : ST 1, 2(4) ; Store argument 1 in callee
46 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
47 : LDA 4, 5(5) ; Base of callee frame
48 : ST 1, 3(4) ; Store argument 2 in callee
49 : LDA 4, 5(5) ; Base of callee frame
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return in callee frame
52 : ADD 5, 4, 0 ; Push callee frame
53 : LDA 7, 61(0) ; Call multWithAccum
54 : LD   1, 4(5) ;  Load function result
55 : LDC   2, 5(0) ;  Caller frame size
56 : SUB   5, 5, 2 ;  Pop back to caller
57 : SUB   4, 4, 2 ;  Pop back to caller
58 : ST   1, 3(5) ;  Store function result into stack frame
59 : LD   6, 0(5) ;  Load return address
60 : LDA  7, 0(6) ;  Return to caller
61 : LD   1, 2(5) ;  Load parameter 'n' into R1
62 : ADD  3, 1, 0 ;  Store left operand into temporary register
63 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
64 : ADD  2, 3, 0 ;  Restore left operand
65 : SUB  1, 2, 1 ;  left - right for equality check
66 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
67 : LDC  1, 0(0) ;  false
68 : LDA  7, 1(7) ;  skip setting true
69 : LDC  1, 1(0) ;  true
70 : JEQ  1, 73(0) ;  If condition is false, jump to ELSE
71 : LD   1, 3(5) ;  Load parameter 'accum' into R1
72 : LDA  7, 154(0) ;  Skip ELSE block
73 : LD   1, 2(5) ;  Load parameter 'n' into R1
74 : LDA 4, 4(5) ; Base of callee frame
75 : ST 1, 1(4) ; Store argument 0 in callee
76 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
77 : LDA 4, 4(5) ; Base of callee frame
78 : ST 1, 2(4) ; Store argument 1 in callee
79 : LDA 4, 4(5) ; Base of callee frame
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame
83 : LDA 7, 157(0) ; Call MOD
84 : LD   1, 3(5) ;  Load function result
85 : LDC   2, 4(0) ;  Caller frame size
86 : SUB   5, 5, 2 ;  Pop back to caller
87 : SUB   4, 4, 2 ;  Pop back to caller
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 128(0) ;  If condition is false, jump to ELSE
97 : LD   1, 1(5) ;  Load parameter 'm' into R1
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
100 : ADD  2, 3, 0 ;  Restore left operand
101 : MUL  1, 2, 1 ;  R1 = left * right
102 : LDA 4, 5(5) ; Base of callee frame
103 : ST 1, 1(4) ; Store argument 0 in callee
104 : LD   1, 2(5) ;  Load parameter 'n' into R1
105 : ADD  3, 1, 0 ;  Store left operand into temporary register
106 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
107 : ADD  2, 3, 0 ;  Restore left operand
108 : DIV  1, 2, 1 ;  R1 = left / right
109 : LDA 4, 5(5) ; Base of callee frame
110 : ST 1, 2(4) ; Store argument 1 in callee
111 : LD   1, 3(5) ;  Load parameter 'accum' into R1
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LD   1, 1(5) ;  Load parameter 'm' into R1
114 : ADD  2, 3, 0 ;  Restore left operand
115 : ADD  1, 2, 1 ;  R1 = left + right
116 : LDA 4, 5(5) ; Base of callee frame
117 : ST 1, 3(4) ; Store argument 2 in callee
118 : LDA 4, 5(5) ; Base of callee frame
119 : LDA 6, 123(0) ; Return address
120 : ST 6, 0(4) ; Store return in callee frame
121 : ADD 5, 4, 0 ; Push callee frame
122 : LDA 7, 61(0) ; Call multWithAccum
123 : LD   1, 4(5) ;  Load function result
124 : LDC   2, 5(0) ;  Caller frame size
125 : SUB   5, 5, 2 ;  Pop back to caller
126 : SUB   4, 4, 2 ;  Pop back to caller
127 : LDA  7, 154(0) ;  Skip ELSE block
128 : LD   1, 1(5) ;  Load parameter 'm' into R1
129 : ADD  3, 1, 0 ;  Store left operand into temporary register
130 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
131 : ADD  2, 3, 0 ;  Restore left operand
132 : MUL  1, 2, 1 ;  R1 = left * right
133 : LDA 4, 5(5) ; Base of callee frame
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD   1, 2(5) ;  Load parameter 'n' into R1
136 : ADD  3, 1, 0 ;  Store left operand into temporary register
137 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
138 : ADD  2, 3, 0 ;  Restore left operand
139 : DIV  1, 2, 1 ;  R1 = left / right
140 : LDA 4, 5(5) ; Base of callee frame
141 : ST 1, 2(4) ; Store argument 1 in callee
142 : LD   1, 3(5) ;  Load parameter 'accum' into R1
143 : LDA 4, 5(5) ; Base of callee frame
144 : ST 1, 3(4) ; Store argument 2 in callee
145 : LDA 4, 5(5) ; Base of callee frame
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return in callee frame
148 : ADD 5, 4, 0 ; Push callee frame
149 : LDA 7, 61(0) ; Call multWithAccum
150 : LD   1, 4(5) ;  Load function result
151 : LDC   2, 5(0) ;  Caller frame size
152 : SUB   5, 5, 2 ;  Pop back to caller
153 : SUB   4, 4, 2 ;  Pop back to caller
154 : ST   1, 4(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
157 : LD   1, 1(5) ;  Load parameter 'm' into R1
158 : ADD  3, 1, 0 ;  Store left operand into temporary register
159 : LD   1, 1(5) ;  Load parameter 'm' into R1
160 : ADD  3, 1, 0 ;  Store left operand into temporary register
161 : LD   1, 2(5) ;  Load parameter 'n' into R1
162 : ADD  2, 3, 0 ;  Restore left operand
163 : DIV  1, 2, 1 ;  R1 = left / right
164 : ADD  3, 1, 0 ;  Store left operand into temporary register
165 : LD   1, 2(5) ;  Load parameter 'n' into R1
166 : ADD  2, 3, 0 ;  Restore left operand
167 : MUL  1, 2, 1 ;  R1 = left * right
168 : ADD  2, 3, 0 ;  Restore left operand
169 : SUB  1, 2, 1 ;  R1 = left - right
170 : ST   1, 3(5) ;  Store function result into stack frame
171 : LD   6, 0(5) ;  Load return address
172 : LDA  7, 0(6) ;  Return to caller
