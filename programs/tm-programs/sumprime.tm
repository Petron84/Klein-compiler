0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST 6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
7 : OUT 1, 0, 0 ;  Hardcoded print function
8 : LD 6, 0(5) ;  Load return addess from stack frame.
9 : LDA 7, 0(6) ;  Jump to return address.
10 : LDA 3, 4(5) ; Base of callee frame (stable)
11 : LDC 1, 2(0) ;  Load integer-literal value into register 1
12 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
13 : LDC 1, 20(0) ;  Load integer-literal value into register 1
14 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(3) ; Store return in callee frame (via R3)
17 : ADD 5, 3, 0 ; Push callee frame
18 : LDA 7, 26(0) ; Call sumPrimes
19 : LD 1, 3(5) ;  Load function result
20 : LDC 2, 4(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 1(5) ; Store result into caller’s frame
23 : LD 1, 1(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to return address of main function
26 : LD 1, 1(5) ;  Load parameter 'a' into R1
27 : ADD 3, 1, 0 ;  Stash right operand in R3
28 : LD 1, 2(5) ;  Load parameter 'b' into R1
29 : ADD 2, 1, 0 ;  Move left operand to register 2
30 : ADD 1, 3, 0 ;  Restore right operand from R3
31 : SUB 1, 2, 1 ;  left - right for less-than check
32 : JLT 1, 2(7) ;  If R1 < 0, jump to true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 39(0) ;  If condition is false, jump to ELSE
37 : LDC 1, 0(0) ;  Load integer-literal value into register 1
38 : LDA 7, 90(0) ;  Skip ELSE block
39 : LDA 3, 3(5) ; Base of callee frame (stable)
40 : LD 1, 1(5) ;  Load parameter 'a' into R1
41 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(3) ; Store return in callee frame (via R3)
44 : ADD 5, 3, 0 ; Push callee frame
45 : LDA 7, 93(0) ; Call isPrime
46 : LD 1, 2(5) ;  Load function result
47 : LDC 2, 3(0) ;  Caller frame size
48 : SUB 5, 5, 2 ;  Pop back to caller
49 : JEQ 1, 73(0) ;  If condition is false, jump to ELSE
50 : LDA 3, 4(5) ; Base of callee frame (stable)
51 : LDC 1, 1(0) ;  Load integer-literal value into register 1
52 : ADD 3, 1, 0 ;  Stash right operand in R3
53 : LD 1, 1(5) ;  Load parameter 'a' into R1
54 : ADD 2, 1, 0 ;  Move left operand to register 2
55 : ADD 1, 3, 0 ;  Restore right operand from R3
56 : ADD 1, 2, 1 ;  R1 = left + right
57 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
58 : LD 1, 2(5) ;  Load parameter 'b' into R1
59 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(3) ; Store return in callee frame (via R3)
62 : ADD 5, 3, 0 ; Push callee frame
63 : LDA 7, 26(0) ; Call sumPrimes
64 : LD 1, 3(5) ;  Load function result
65 : LDC 2, 4(0) ;  Caller frame size
66 : SUB 5, 5, 2 ;  Pop back to caller
67 : ADD 3, 1, 0 ;  Move right operand to register 3
68 : LD 1, 1(5) ;  Load parameter 'a' into R1
69 : ADD 2, 1, 0 ;  Move left operand to register 2
70 : ADD 1, 3, 0 ;  Move right operand to register 1
71 : ADD 1, 2, 1 ;  R1 = left + right
72 : LDA 7, 90(0) ;  Skip ELSE block
73 : LDA 3, 4(5) ; Base of callee frame (stable)
74 : LDC 1, 1(0) ;  Load integer-literal value into register 1
75 : ADD 3, 1, 0 ;  Stash right operand in R3
76 : LD 1, 1(5) ;  Load parameter 'a' into R1
77 : ADD 2, 1, 0 ;  Move left operand to register 2
78 : ADD 1, 3, 0 ;  Restore right operand from R3
79 : ADD 1, 2, 1 ;  R1 = left + right
80 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
81 : LD 1, 2(5) ;  Load parameter 'b' into R1
82 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(3) ; Store return in callee frame (via R3)
85 : ADD 5, 3, 0 ; Push callee frame
86 : LDA 7, 26(0) ; Call sumPrimes
87 : LD 1, 3(5) ;  Load function result
88 : LDC 2, 4(0) ;  Caller frame size
89 : SUB 5, 5, 2 ;  Pop back to caller
90 : ST 1, 3(5) ;  Store function result into stack frame
91 : LD 6, 0(5) ;  Load return address
92 : LDA 7, 0(6) ;  Return to caller
93 : LDC 1, 2(0) ;  Load integer-literal value into register 1
94 : ADD 3, 1, 0 ;  Stash right operand in R3
95 : LD 1, 1(5) ;  Load parameter 'n' into R1
96 : ADD 2, 1, 0 ;  Move left operand to register 2
97 : ADD 1, 3, 0 ;  Restore right operand from R3
98 : SUB 1, 2, 1 ;  left - right for less-than check
99 : JLT 1, 2(7) ;  If R1 < 0, jump to true
100 : LDC 1, 0(0) ;  false
101 : LDA 7, 1(7) ;  skip setting true
102 : LDC 1, 1(0) ;  true
103 : JEQ 1, 106(0) ;  If condition is false, jump to ELSE
104 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
105 : LDA 7, 163(0) ;  Skip ELSE block
106 : LDC 1, 2(0) ;  Load integer-literal value into register 1
107 : ADD 3, 1, 0 ;  Stash right operand in R3
108 : LD 1, 1(5) ;  Load parameter 'n' into R1
109 : ADD 2, 1, 0 ;  Move left operand to register 2
110 : ADD 1, 3, 0 ;  Restore right operand from R3
111 : SUB 1, 2, 1 ;  left - right for equality check
112 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
113 : LDC 1, 0(0) ;  false
114 : LDA 7, 1(7) ;  skip setting true
115 : LDC 1, 1(0) ;  true
116 : JEQ 1, 119(0) ;  If condition is false, jump to ELSE
117 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
118 : LDA 7, 163(0) ;  Skip ELSE block
119 : LDA 3, 4(5) ; Base of callee frame (stable)
120 : LD 1, 1(5) ;  Load parameter 'n' into R1
121 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
122 : LDC 1, 2(0) ;  Load integer-literal value into register 1
123 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(3) ; Store return in callee frame (via R3)
126 : ADD 5, 3, 0 ; Push callee frame
127 : LDA 7, 166(0) ; Call divisible
128 : LD 1, 3(5) ;  Load function result
129 : LDC 2, 4(0) ;  Caller frame size
130 : SUB 5, 5, 2 ;  Pop back to caller
131 : ADD 2, 1, 0 ;  Move left operand to register 2
132 : LDA 3, 4(5) ; Base of callee frame (stable)
133 : LD 1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
135 : LDC 1, 3(0) ;  Load integer-literal value into register 1
136 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(3) ; Store return in callee frame (via R3)
139 : ADD 5, 3, 0 ; Push callee frame
140 : LDA 7, 166(0) ; Call divisible
141 : LD 1, 3(5) ;  Load function result
142 : LDC 2, 4(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop back to caller
144 : ADD 1, 2, 1 ;  R1 = left OR right
145 : ADD 2, 1, 0 ;  Move left operand to register 2
146 : LDA 3, 4(5) ; Base of callee frame (stable)
147 : LD 1, 1(5) ;  Load parameter 'n' into R1
148 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
149 : LDC 1, 5(0) ;  Load integer-literal value into register 1
150 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(3) ; Store return in callee frame (via R3)
153 : ADD 5, 3, 0 ; Push callee frame
154 : LDA 7, 166(0) ; Call divisible
155 : LD 1, 3(5) ;  Load function result
156 : LDC 2, 4(0) ;  Caller frame size
157 : SUB 5, 5, 2 ;  Pop back to caller
158 : ADD 1, 2, 1 ;  R1 = left OR right
159 : JEQ 1, 162(0) ;  If condition is false, jump to ELSE
160 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
161 : LDA 7, 163(0) ;  Skip ELSE block
162 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
163 : ST 1, 2(5) ;  Store function result into stack frame
164 : LD 6, 0(5) ;  Load return address
165 : LDA 7, 0(6) ;  Return to caller
166 : LD 1, 2(5) ;  Load parameter 'y' into R1
167 : ADD 3, 1, 0 ;  Stash right operand in R3
168 : LD 1, 1(5) ;  Load parameter 'x' into R1
169 : ADD 2, 1, 0 ;  Move left operand to register 2
170 : ADD 1, 3, 0 ;  Restore right operand from R3
171 : DIV 1, 2, 1 ;  R1 = left / right
172 : ADD 2, 1, 0 ;  Move left operand to register 2
173 : LD 1, 2(5) ;  Load parameter 'y' into R1
174 : MUL 1, 2, 1 ;  R1 = left * right
175 : ADD 2, 1, 0 ;  Move left operand to register 2
176 : LD 1, 1(5) ;  Load parameter 'x' into R1
177 : SUB 1, 2, 1 ;  left - right for equality check
178 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
179 : LDC 1, 0(0) ;  false
180 : LDA 7, 1(7) ;  skip setting true
181 : LDC 1, 1(0) ;  true
182 : JEQ 1, 185(0) ;  If condition is false, jump to ELSE
183 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
184 : LDA 7, 186(0) ;  Skip ELSE block
185 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
186 : ST 1, 3(5) ;  Store function result into stack frame
187 : LD 6, 0(5) ;  Load return address
188 : LDA 7, 0(6) ;  Return to caller
