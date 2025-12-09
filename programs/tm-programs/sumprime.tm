0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 4, 2(5) ; Base of callee frame
10 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
11 : ST 1, 1(4) ; Argument 0
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : ST 1, 2(4) ; Argument 1
14 : LDA 6, 18(0) ; Return address
15 : ST 6, 0(4) ; Store return in callee frame
16 : ADD 5, 4, 0 ; Push callee frame
17 : LDA 7, 25(0) ; Call sumPrimes
18 : LD 1, 3(5) ; Load function result
19 : LDC 2, 2(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop back to caller
21 : ST 1, 1(5) ; Store result into caller’s frame
22 : LD   1, 1(5) ;  Load return value into register 1
23 : LD  6, 0(5) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 2(5) ;  Load parameter 'b' into R1
26 : ADD  3, 1, 0 ;  Store left operand into temporary register
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : ADD  2, 3, 0 ;  Restore left operand
29 : SUB  1, 2, 1 ;  left - right for less-than check
30 : JLT  1, 2(7) ;  If R1 < 0, jump to true
31 : LDC  1, 0(0) ;  false
32 : LDA  7, 1(7) ;  skip setting true
33 : LDC  1, 1(0) ;  true
34 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
35 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
36 : LDA  7, 85(0) ;  Skip ELSE block
37 : LDA 4, 4(5) ; Base of callee frame
38 : LD   1, 1(5) ;  Load parameter 'a' into R1
39 : ST 1, 1(4) ; Argument 0
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame
43 : LDA 7, 88(0) ; Call isPrime
44 : LD 1, 2(5) ; Load function result
45 : LDC 2, 4(0) ; Caller frame size
46 : SUB 5, 5, 2 ; Pop back to caller
47 : JEQ  1, 69(0) ;  If condition is false, jump to ELSE
48 : LD   1, 1(5) ;  Load parameter 'a' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LDA 4, 4(5) ; Base of callee frame
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : ADD  3, 1, 0 ;  Store left operand into temporary register
53 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
54 : ADD  2, 3, 0 ;  Restore left operand
55 : ADD  1, 2, 1 ;  R1 = left + right
56 : ST 1, 1(4) ; Argument 0
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ST 1, 2(4) ; Argument 1
59 : LDA 6, 63(0) ; Return address
60 : ST 6, 0(4) ; Store return in callee frame
61 : ADD 5, 4, 0 ; Push callee frame
62 : LDA 7, 25(0) ; Call sumPrimes
63 : LD 1, 3(5) ; Load function result
64 : LDC 2, 4(0) ; Caller frame size
65 : SUB 5, 5, 2 ; Pop back to caller
66 : ADD  2, 3, 0 ;  Restore left operand
67 : ADD  1, 2, 1 ;  R1 = left + right
68 : LDA  7, 85(0) ;  Skip ELSE block
69 : LDA 4, 4(5) ; Base of callee frame
70 : LD   1, 1(5) ;  Load parameter 'a' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : ADD  1, 2, 1 ;  R1 = left + right
75 : ST 1, 1(4) ; Argument 0
76 : LD   1, 2(5) ;  Load parameter 'b' into R1
77 : ST 1, 2(4) ; Argument 1
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(4) ; Store return in callee frame
80 : ADD 5, 4, 0 ; Push callee frame
81 : LDA 7, 25(0) ; Call sumPrimes
82 : LD 1, 3(5) ; Load function result
83 : LDC 2, 4(0) ; Caller frame size
84 : SUB 5, 5, 2 ; Pop back to caller
85 : ST   1, 3(5) ;  Store function result into stack frame
86 : LD   6, 0(5) ;  Load return address
87 : LDA  7, 0(6) ;  Return to caller
88 : LD   1, 1(5) ;  Load parameter 'n' into R1
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
91 : ADD  2, 3, 0 ;  Restore left operand
92 : SUB  1, 2, 1 ;  left - right for less-than check
93 : JLT  1, 2(7) ;  If R1 < 0, jump to true
94 : LDC  1, 0(0) ;  false
95 : LDA  7, 1(7) ;  skip setting true
96 : LDC  1, 1(0) ;  true
97 : JEQ  1, 100(0) ;  If condition is false, jump to ELSE
98 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
99 : LDA  7, 158(0) ;  Skip ELSE block
100 : LD   1, 1(5) ;  Load parameter 'n' into R1
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : JEQ  1, 112(0) ;  If condition is false, jump to ELSE
110 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
111 : LDA  7, 158(0) ;  Skip ELSE block
112 : LDA 4, 3(5) ; Base of callee frame
113 : LD   1, 1(5) ;  Load parameter 'n' into R1
114 : ST 1, 1(4) ; Argument 0
115 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
116 : ST 1, 2(4) ; Argument 1
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return in callee frame
119 : ADD 5, 4, 0 ; Push callee frame
120 : LDA 7, 161(0) ; Call divisible
121 : LD 1, 3(5) ; Load function result
122 : LDC 2, 3(0) ; Caller frame size
123 : SUB 5, 5, 2 ; Pop back to caller
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LDA 4, 3(5) ; Base of callee frame
126 : LD   1, 1(5) ;  Load parameter 'n' into R1
127 : ST 1, 1(4) ; Argument 0
128 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
129 : ST 1, 2(4) ; Argument 1
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 161(0) ; Call divisible
134 : LD 1, 3(5) ; Load function result
135 : LDC 2, 3(0) ; Caller frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : ADD  2, 3, 0 ;  Restore left operand
138 : ADD  1, 2, 1 ;  R1 = left OR right
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LDA 4, 3(5) ; Base of callee frame
141 : LD   1, 1(5) ;  Load parameter 'n' into R1
142 : ST 1, 1(4) ; Argument 0
143 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
144 : ST 1, 2(4) ; Argument 1
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame
148 : LDA 7, 161(0) ; Call divisible
149 : LD 1, 3(5) ; Load function result
150 : LDC 2, 3(0) ; Caller frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : ADD  2, 3, 0 ;  Restore left operand
153 : ADD  1, 2, 1 ;  R1 = left OR right
154 : JEQ  1, 157(0) ;  If condition is false, jump to ELSE
155 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
156 : LDA  7, 158(0) ;  Skip ELSE block
157 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
158 : ST   1, 2(5) ;  Store function result into stack frame
159 : LD   6, 0(5) ;  Load return address
160 : LDA  7, 0(6) ;  Return to caller
161 : LD   1, 1(5) ;  Load parameter 'x' into R1
162 : ADD  3, 1, 0 ;  Store left operand into temporary register
163 : LD   1, 2(5) ;  Load parameter 'y' into R1
164 : ADD  2, 3, 0 ;  Restore left operand
165 : DIV  1, 2, 1 ;  R1 = left / right
166 : ADD  3, 1, 0 ;  Store left operand into temporary register
167 : LD   1, 2(5) ;  Load parameter 'y' into R1
168 : ADD  2, 3, 0 ;  Restore left operand
169 : MUL  1, 2, 1 ;  R1 = left * right
170 : ADD  3, 1, 0 ;  Store left operand into temporary register
171 : LD   1, 1(5) ;  Load parameter 'x' into R1
172 : ADD  2, 3, 0 ;  Restore left operand
173 : SUB  1, 2, 1 ;  left - right for equality check
174 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
175 : LDC  1, 0(0) ;  false
176 : LDA  7, 1(7) ;  skip setting true
177 : LDC  1, 1(0) ;  true
178 : JEQ  1, 181(0) ;  If condition is false, jump to ELSE
179 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
180 : LDA  7, 182(0) ;  Skip ELSE block
181 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
182 : ST   1, 3(5) ;  Store function result into stack frame
183 : LD   6, 0(5) ;  Load return address
184 : LDA  7, 0(6) ;  Return to caller
