0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDA 3, 2(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
10 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
11 : ST 1, 1(3) ;  Store argument 0 into callee frame
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : ST 1, 2(3) ;  Store argument 1 into callee frame
14 : LDA 6, 18(0)) ;  Compute return address
15 : ST 6, 0(3) ;  Store return address in callee frame
16 : ADD  5, 3, 0 ;  Update pointer
17 : LDA 7, 25(0) ;  Call sumPrimes
18 : LD 1, 3(5) ;  Load callee return value into R1
19 : LDC  4, 2(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : ST 1, 2(0) ;  Store function-call result into caller's return slot
22 : LD   1, 2(0) ;  Load return value into register 1
23 : LD  6, 1(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 2(5) ;  Load parameter 'b' into R1
26 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
27 : LD   1, 1(5) ;  Load parameter 'a' into R1
28 : SUB  1, 2, 1 ;  left - right for less-than check
29 : JLT  1, 2(7) ;  If R1 < 0, jump to true
30 : LDC  1, 0(0) ;  false
31 : LDA  7, 1(7) ;  skip setting true
32 : LDC  1, 1(0) ;  true
33 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
34 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
35 : LDA  7, 81(0) ;  Skip ELSE block
36 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'isPrime'
37 : LD   1, 1(5) ;  Load parameter 'a' into R1
38 : ST 1, 1(3) ;  Store argument 0 into callee frame
39 : LDA 6, 43(0)) ;  Compute return address
40 : ST 6, 0(3) ;  Store return address in callee frame
41 : ADD  5, 3, 0 ;  Update pointer
42 : LDA 7, 84(0) ;  Call isPrime
43 : LD 1, 2(5) ;  Load callee return value into R1
44 : LDC  4, 4(0) ;  Load frame size
45 : SUB  5, 5, 4 ;  Restore pointer
46 : JEQ  1, 66(0) ;  If condition is false, jump to ELSE
47 : LD   1, 1(5) ;  Load parameter 'a' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
50 : LD   1, 1(5) ;  Load parameter 'a' into R1
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
53 : ADD  1, 2, 1 ;  R1 = left + right
54 : ST 1, 1(3) ;  Store argument 0 into callee frame
55 : LD   1, 2(5) ;  Load parameter 'b' into R1
56 : ST 1, 2(3) ;  Store argument 1 into callee frame
57 : LDA 6, 61(0)) ;  Compute return address
58 : ST 6, 0(3) ;  Store return address in callee frame
59 : ADD  5, 3, 0 ;  Update pointer
60 : LDA 7, 25(0) ;  Call sumPrimes
61 : LD 1, 3(5) ;  Load callee return value into R1
62 : LDC  4, 4(0) ;  Load frame size
63 : SUB  5, 5, 4 ;  Restore pointer
64 : ADD  1, 2, 1 ;  R1 = left + right
65 : LDA  7, 81(0) ;  Skip ELSE block
66 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'sumPrimes'
67 : LD   1, 1(5) ;  Load parameter 'a' into R1
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
70 : ADD  1, 2, 1 ;  R1 = left + right
71 : ST 1, 1(3) ;  Store argument 0 into callee frame
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ST 1, 2(3) ;  Store argument 1 into callee frame
74 : LDA 6, 78(0)) ;  Compute return address
75 : ST 6, 0(3) ;  Store return address in callee frame
76 : ADD  5, 3, 0 ;  Update pointer
77 : LDA 7, 25(0) ;  Call sumPrimes
78 : LD 1, 3(5) ;  Load callee return value into R1
79 : LDC  4, 4(0) ;  Load frame size
80 : SUB  5, 5, 4 ;  Restore pointer
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'n' into R1
85 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
86 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
87 : SUB  1, 2, 1 ;  left - right for less-than check
88 : JLT  1, 2(7) ;  If R1 < 0, jump to true
89 : LDC  1, 0(0) ;  false
90 : LDA  7, 1(7) ;  skip setting true
91 : LDC  1, 1(0) ;  true
92 : JEQ  1, 95(0) ;  If condition is false, jump to ELSE
93 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
94 : LDA  7, 150(0) ;  Skip ELSE block
95 : LD   1, 1(5) ;  Load parameter 'n' into R1
96 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
97 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
98 : SUB  1, 2, 1 ;  left - right for equality check
99 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : JEQ  1, 106(0) ;  If condition is false, jump to ELSE
104 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
105 : LDA  7, 150(0) ;  Skip ELSE block
106 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
107 : LD   1, 1(5) ;  Load parameter 'n' into R1
108 : ST 1, 1(3) ;  Store argument 0 into callee frame
109 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
110 : ST 1, 2(3) ;  Store argument 1 into callee frame
111 : LDA 6, 115(0)) ;  Compute return address
112 : ST 6, 0(3) ;  Store return address in callee frame
113 : ADD  5, 3, 0 ;  Update pointer
114 : LDA 7, 153(0) ;  Call divisible
115 : LD 1, 3(5) ;  Load callee return value into R1
116 : LDC  4, 3(0) ;  Load frame size
117 : SUB  5, 5, 4 ;  Restore pointer
118 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
119 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : ST 1, 1(3) ;  Store argument 0 into callee frame
122 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
123 : ST 1, 2(3) ;  Store argument 1 into callee frame
124 : LDA 6, 128(0)) ;  Compute return address
125 : ST 6, 0(3) ;  Store return address in callee frame
126 : ADD  5, 3, 0 ;  Update pointer
127 : LDA 7, 153(0) ;  Call divisible
128 : LD 1, 3(5) ;  Load callee return value into R1
129 : LDC  4, 3(0) ;  Load frame size
130 : SUB  5, 5, 4 ;  Restore pointer
131 : ADD  1, 2, 1 ;  R1 = left OR right
132 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
133 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'divisible'
134 : LD   1, 1(5) ;  Load parameter 'n' into R1
135 : ST 1, 1(3) ;  Store argument 0 into callee frame
136 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
137 : ST 1, 2(3) ;  Store argument 1 into callee frame
138 : LDA 6, 142(0)) ;  Compute return address
139 : ST 6, 0(3) ;  Store return address in callee frame
140 : ADD  5, 3, 0 ;  Update pointer
141 : LDA 7, 153(0) ;  Call divisible
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC  4, 3(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : ADD  1, 2, 1 ;  R1 = left OR right
146 : JEQ  1, 149(0) ;  If condition is false, jump to ELSE
147 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
148 : LDA  7, 150(0) ;  Skip ELSE block
149 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
150 : ST   1, 2(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LD   1, 1(5) ;  Load parameter 'x' into R1
154 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
155 : LD   1, 2(5) ;  Load parameter 'y' into R1
156 : DIV  1, 2, 1 ;  R1 = left / right
157 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
158 : LD   1, 2(5) ;  Load parameter 'y' into R1
159 : MUL  1, 2, 1 ;  R1 = left * right
160 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
161 : LD   1, 1(5) ;  Load parameter 'x' into R1
162 : SUB  1, 2, 1 ;  left - right for equality check
163 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
164 : LDC  1, 0(0) ;  false
165 : LDA  7, 1(7) ;  skip setting true
166 : LDC  1, 1(0) ;  true
167 : JEQ  1, 170(0) ;  If condition is false, jump to ELSE
168 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
169 : LDA  7, 171(0) ;  Skip ELSE block
170 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
171 : ST   1, 3(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
