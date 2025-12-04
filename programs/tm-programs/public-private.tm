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
14 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : SUB  1, 2, 1 ;  left - right for equality check
17 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
18 : LDC  1, 0(0) ;  false
19 : LDA  7, 1(7) ;  skip setting true
20 : LDC  1, 1(0) ;  true
21 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
22 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'factor'
23 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
24 : ST 1, 1(3) ;  Store argument 0 into callee frame
25 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
26 : ST 1, 2(3) ;  Store argument 1 into callee frame
27 : LDA 6, 31(0)) ;  Compute return address
28 : ST 6, 0(3) ;  Store return address in callee frame
29 : ADD  5, 3, 0 ;  Update pointer
30 : LDA 7, 146(0) ;  Call factor
31 : LD 1, 3(5) ;  Load callee return value into R1
32 : LDC  4, 4(0) ;  Load frame size
33 : SUB  5, 5, 4 ;  Restore pointer
34 : ST 1, 6(0) ;  Store function-call result into caller's return slot
35 : LDA  7, 49(0) ;  Skip ELSE block
36 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'factor'
37 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
38 : ST 1, 1(3) ;  Store argument 0 into callee frame
39 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
40 : ST 1, 2(3) ;  Store argument 1 into callee frame
41 : LDA 6, 45(0)) ;  Compute return address
42 : ST 6, 0(3) ;  Store return address in callee frame
43 : ADD  5, 3, 0 ;  Update pointer
44 : LDA 7, 146(0) ;  Call factor
45 : LD 1, 3(5) ;  Load callee return value into R1
46 : LDC  4, 4(0) ;  Load frame size
47 : SUB  5, 5, 4 ;  Restore pointer
48 : ST 1, 6(0) ;  Store function-call result into caller's return slot
49 : LD   1, 6(0) ;  Load return value into register 1
50 : LD  6, 3(0) ;  Load return address for main function into register 6
51 : LDA  7, 0(6) ;  Jump to return address of main function
52 : LD   1, 1(5) ;  Load parameter 'a' into R1
53 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
54 : LD   1, 2(5) ;  Load parameter 'b' into R1
55 : SUB  1, 2, 1 ;  left - right for less-than check
56 : JLT  1, 2(7) ;  If R1 < 0, jump to true
57 : LDC  1, 0(0) ;  false
58 : LDA  7, 1(7) ;  skip setting true
59 : LDC  1, 1(0) ;  true
60 : JEQ  1, 63(0) ;  If condition is false, jump to ELSE
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : LDA  7, 78(0) ;  Skip ELSE block
63 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
64 : LD   1, 1(5) ;  Load parameter 'a' into R1
65 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
66 : LD   1, 2(5) ;  Load parameter 'b' into R1
67 : SUB  1, 2, 1 ;  R1 = left - right
68 : ST 1, 1(3) ;  Store argument 0 into callee frame
69 : LD   1, 2(5) ;  Load parameter 'b' into R1
70 : ST 1, 2(3) ;  Store argument 1 into callee frame
71 : LDA 6, 75(0)) ;  Compute return address
72 : ST 6, 0(3) ;  Store return address in callee frame
73 : ADD  5, 3, 0 ;  Update pointer
74 : LDA 7, 52(0) ;  Call remainder
75 : LD 1, 3(5) ;  Load callee return value into R1
76 : LDC  4, 4(0) ;  Load frame size
77 : SUB  5, 5, 4 ;  Restore pointer
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
81 : LD   1, 2(5) ;  Load parameter 'b' into R1
82 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
83 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
84 : SUB  1, 2, 1 ;  left - right for equality check
85 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : JEQ  1, 92(0) ;  If condition is false, jump to ELSE
90 : LD   1, 1(5) ;  Load parameter 'a' into R1
91 : LDA  7, 115(0) ;  Skip ELSE block
92 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
93 : LD   1, 2(5) ;  Load parameter 'b' into R1
94 : ST 1, 1(3) ;  Store argument 0 into callee frame
95 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
96 : LD   1, 1(5) ;  Load parameter 'a' into R1
97 : ST 1, 1(3) ;  Store argument 0 into callee frame
98 : LD   1, 2(5) ;  Load parameter 'b' into R1
99 : ST 1, 2(3) ;  Store argument 1 into callee frame
100 : LDA 6, 104(0)) ;  Compute return address
101 : ST 6, 0(3) ;  Store return address in callee frame
102 : ADD  5, 3, 0 ;  Update pointer
103 : LDA 7, 52(0) ;  Call remainder
104 : LD 1, 3(5) ;  Load callee return value into R1
105 : LDC  4, 4(0) ;  Load frame size
106 : SUB  5, 5, 4 ;  Restore pointer
107 : ST 1, 2(3) ;  Store argument 1 into callee frame
108 : LDA 6, 112(0)) ;  Compute return address
109 : ST 6, 0(3) ;  Store return address in callee frame
110 : ADD  5, 3, 0 ;  Update pointer
111 : LDA 7, 81(0) ;  Call gcd
112 : LD 1, 3(5) ;  Load callee return value into R1
113 : LDC  4, 4(0) ;  Load frame size
114 : SUB  5, 5, 4 ;  Restore pointer
115 : ST   1, 3(5) ;  Store function result into stack frame
116 : LD   6, 0(5) ;  Load return address
117 : LDA  7, 0(6) ;  Return to caller
118 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
119 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
120 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
121 : DIV  1, 2, 1 ;  R1 = left / right
122 : LDA  3, 5(5) ;  Update DMEM pointer
123 : LDA 6, 127(0) ;  Compute return address
124 : ST   6, 0(3) ;  Store return address
125 : ADD  5, 3, 0 ;  Updated Pointer
126 : LDA  7, 10(0) ; Call print
127 : LDC  4, 5(0) ;  Load frame size
128 : SUB  5, 5, 4 ;  Restore pointer
129 : ST   1, 4(5) ;  Store function result into stack frame
130 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
131 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
132 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
133 : DIV  1, 2, 1 ;  R1 = left / right
134 : LDA  3, 5(5) ;  Update DMEM pointer
135 : LDA 6, 139(0) ;  Compute return address
136 : ST   6, 0(3) ;  Store return address
137 : ADD  5, 3, 0 ;  Updated Pointer
138 : LDA  7, 10(0) ; Call print
139 : LDC  4, 5(0) ;  Load frame size
140 : SUB  5, 5, 4 ;  Restore pointer
141 : ST   1, 4(5) ;  Store function result into stack frame
142 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
143 : ST   1, 4(5) ;  Store function result into stack frame
144 : LD   6, 0(5) ;  Load return address
145 : LDA  7, 0(6) ;  Return to caller
146 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'displayAndPrint'
147 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
148 : ST 1, 1(3) ;  Store argument 0 into callee frame
149 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
150 : ST 1, 2(3) ;  Store argument 1 into callee frame
151 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'gcd'
152 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
153 : ST 1, 1(3) ;  Store argument 0 into callee frame
154 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
155 : ST 1, 2(3) ;  Store argument 1 into callee frame
156 : LDA 6, 160(0)) ;  Compute return address
157 : ST 6, 0(3) ;  Store return address in callee frame
158 : ADD  5, 3, 0 ;  Update pointer
159 : LDA 7, 81(0) ;  Call gcd
160 : LD 1, 3(5) ;  Load callee return value into R1
161 : LDC  4, 4(0) ;  Load frame size
162 : SUB  5, 5, 4 ;  Restore pointer
163 : ST 1, 3(3) ;  Store argument 2 into callee frame
164 : LDA 6, 168(0)) ;  Compute return address
165 : ST 6, 0(3) ;  Store return address in callee frame
166 : ADD  5, 3, 0 ;  Update pointer
167 : LDA 7, 118(0) ;  Call displayAndPrint
168 : LD 1, 4(5) ;  Load callee return value into R1
169 : LDC  4, 4(0) ;  Load frame size
170 : SUB  5, 5, 4 ;  Restore pointer
171 : ST   1, 3(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
