0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
10 : LDA  3, 2(5) ; Restore Callee frame base
11 : ST 1, 1(3) ;  Store argument 0 into callee frame
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : LDA  3, 2(5) ; Restore Callee frame base
14 : ST 1, 2(3) ;  Store argument 1 into callee frame
15 : LDA  3, 2(5) ; Restore Call frame base
16 : LDA 6, 20(0)) ;  Compute return address
17 : ST 6, 0(3) ;  Store return address in callee frame
18 : ADD  5, 3, 0 ;  Update pointer
19 : LDA 7, 27(0) ;  Call sumPrimes
20 : LD 1, 3(5) ;  Load callee return value into R1
21 : LDC  4, 2(0) ;  Load frame size
22 : SUB  5, 5, 4 ;  Restore pointer
23 : ST 1, 2(0) ;  Store function-call result into caller's return slot
24 : LD   1, 2(0) ;  Load return value into register 1
25 : LD  6, 1(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 2(5) ;  Load parameter 'b' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
37 : LDA  7, 88(0) ;  Skip ELSE block
38 : LD   1, 1(5) ;  Load parameter 'a' into R1
39 : LDA  3, 4(5) ; Restore Callee frame base
40 : ST 1, 1(3) ;  Store argument 0 into callee frame
41 : LDA  3, 4(5) ; Restore Call frame base
42 : LDA 6, 46(0)) ;  Compute return address
43 : ST 6, 0(3) ;  Store return address in callee frame
44 : ADD  5, 3, 0 ;  Update pointer
45 : LDA 7, 91(0) ;  Call isPrime
46 : LD 1, 2(5) ;  Load callee return value into R1
47 : LDC  4, 4(0) ;  Load frame size
48 : SUB  5, 5, 4 ;  Restore pointer
49 : JEQ  1, 71(0) ;  If condition is false, jump to ELSE
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
55 : ADD  1, 2, 1 ;  R1 = left + right
56 : LDA  3, 4(5) ; Restore Callee frame base
57 : ST 1, 1(3) ;  Store argument 0 into callee frame
58 : LD   1, 2(5) ;  Load parameter 'b' into R1
59 : LDA  3, 4(5) ; Restore Callee frame base
60 : ST 1, 2(3) ;  Store argument 1 into callee frame
61 : LDA  3, 4(5) ; Restore Call frame base
62 : LDA 6, 66(0)) ;  Compute return address
63 : ST 6, 0(3) ;  Store return address in callee frame
64 : ADD  5, 3, 0 ;  Update pointer
65 : LDA 7, 27(0) ;  Call sumPrimes
66 : LD 1, 3(5) ;  Load callee return value into R1
67 : LDC  4, 4(0) ;  Load frame size
68 : SUB  5, 5, 4 ;  Restore pointer
69 : ADD  1, 2, 1 ;  R1 = left + right
70 : LDA  7, 88(0) ;  Skip ELSE block
71 : LD   1, 1(5) ;  Load parameter 'a' into R1
72 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
73 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
74 : ADD  1, 2, 1 ;  R1 = left + right
75 : LDA  3, 4(5) ; Restore Callee frame base
76 : ST 1, 1(3) ;  Store argument 0 into callee frame
77 : LD   1, 2(5) ;  Load parameter 'b' into R1
78 : LDA  3, 4(5) ; Restore Callee frame base
79 : ST 1, 2(3) ;  Store argument 1 into callee frame
80 : LDA  3, 4(5) ; Restore Call frame base
81 : LDA 6, 85(0)) ;  Compute return address
82 : ST 6, 0(3) ;  Store return address in callee frame
83 : ADD  5, 3, 0 ;  Update pointer
84 : LDA 7, 27(0) ;  Call sumPrimes
85 : LD 1, 3(5) ;  Load callee return value into R1
86 : LDC  4, 4(0) ;  Load frame size
87 : SUB  5, 5, 4 ;  Restore pointer
88 : ST   1, 3(5) ;  Store function result into stack frame
89 : LD   6, 0(5) ;  Load return address
90 : LDA  7, 0(6) ;  Return to caller
91 : LD   1, 1(5) ;  Load parameter 'n' into R1
92 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
93 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
94 : SUB  1, 2, 1 ;  left - right for less-than check
95 : JLT  1, 2(7) ;  If R1 < 0, jump to true
96 : LDC  1, 0(0) ;  false
97 : LDA  7, 1(7) ;  skip setting true
98 : LDC  1, 1(0) ;  true
99 : JEQ  1, 102(0) ;  If condition is false, jump to ELSE
100 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
101 : LDA  7, 163(0) ;  Skip ELSE block
102 : LD   1, 1(5) ;  Load parameter 'n' into R1
103 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
104 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
105 : SUB  1, 2, 1 ;  left - right for equality check
106 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
107 : LDC  1, 0(0) ;  false
108 : LDA  7, 1(7) ;  skip setting true
109 : LDC  1, 1(0) ;  true
110 : JEQ  1, 113(0) ;  If condition is false, jump to ELSE
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : LDA  7, 163(0) ;  Skip ELSE block
113 : LD   1, 1(5) ;  Load parameter 'n' into R1
114 : LDA  3, 3(5) ; Restore Callee frame base
115 : ST 1, 1(3) ;  Store argument 0 into callee frame
116 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
117 : LDA  3, 3(5) ; Restore Callee frame base
118 : ST 1, 2(3) ;  Store argument 1 into callee frame
119 : LDA  3, 3(5) ; Restore Call frame base
120 : LDA 6, 124(0)) ;  Compute return address
121 : ST 6, 0(3) ;  Store return address in callee frame
122 : ADD  5, 3, 0 ;  Update pointer
123 : LDA 7, 166(0) ;  Call divisible
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDC  4, 3(0) ;  Load frame size
126 : SUB  5, 5, 4 ;  Restore pointer
127 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : LDA  3, 3(5) ; Restore Callee frame base
130 : ST 1, 1(3) ;  Store argument 0 into callee frame
131 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
132 : LDA  3, 3(5) ; Restore Callee frame base
133 : ST 1, 2(3) ;  Store argument 1 into callee frame
134 : LDA  3, 3(5) ; Restore Call frame base
135 : LDA 6, 139(0)) ;  Compute return address
136 : ST 6, 0(3) ;  Store return address in callee frame
137 : ADD  5, 3, 0 ;  Update pointer
138 : LDA 7, 166(0) ;  Call divisible
139 : LD 1, 3(5) ;  Load callee return value into R1
140 : LDC  4, 3(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : ADD  1, 2, 1 ;  R1 = left OR right
143 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
144 : LD   1, 1(5) ;  Load parameter 'n' into R1
145 : LDA  3, 3(5) ; Restore Callee frame base
146 : ST 1, 1(3) ;  Store argument 0 into callee frame
147 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
148 : LDA  3, 3(5) ; Restore Callee frame base
149 : ST 1, 2(3) ;  Store argument 1 into callee frame
150 : LDA  3, 3(5) ; Restore Call frame base
151 : LDA 6, 155(0)) ;  Compute return address
152 : ST 6, 0(3) ;  Store return address in callee frame
153 : ADD  5, 3, 0 ;  Update pointer
154 : LDA 7, 166(0) ;  Call divisible
155 : LD 1, 3(5) ;  Load callee return value into R1
156 : LDC  4, 3(0) ;  Load frame size
157 : SUB  5, 5, 4 ;  Restore pointer
158 : ADD  1, 2, 1 ;  R1 = left OR right
159 : JEQ  1, 162(0) ;  If condition is false, jump to ELSE
160 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
161 : LDA  7, 163(0) ;  Skip ELSE block
162 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
163 : ST   1, 2(5) ;  Store function result into stack frame
164 : LD   6, 0(5) ;  Load return address
165 : LDA  7, 0(6) ;  Return to caller
166 : LD   1, 1(5) ;  Load parameter 'x' into R1
167 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
168 : LD   1, 2(5) ;  Load parameter 'y' into R1
169 : DIV  1, 2, 1 ;  R1 = left / right
170 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
171 : LD   1, 2(5) ;  Load parameter 'y' into R1
172 : MUL  1, 2, 1 ;  R1 = left * right
173 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
174 : LD   1, 1(5) ;  Load parameter 'x' into R1
175 : SUB  1, 2, 1 ;  left - right for equality check
176 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
177 : LDC  1, 0(0) ;  false
178 : LDA  7, 1(7) ;  skip setting true
179 : LDC  1, 1(0) ;  true
180 : JEQ  1, 183(0) ;  If condition is false, jump to ELSE
181 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
182 : LDA  7, 184(0) ;  Skip ELSE block
183 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
184 : ST   1, 3(5) ;  Store function result into stack frame
185 : LD   6, 0(5) ;  Load return address
186 : LDA  7, 0(6) ;  Return to caller
