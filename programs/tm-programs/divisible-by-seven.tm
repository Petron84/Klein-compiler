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
12 : LDC  1, 10(0) ;  Load integer-literal value into register 1
13 : ST   1, 3(4) ;  Store right operand result into return value slot
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ADD  2, 1, 0 ;  Move left operand to register 2
16 : LD   1, 3(4) ;  Return right operand back into register 1
17 : DIV  1, 2, 1 ;  R1 = left / right
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LDA 4, 4(5) ; Base of callee frame
20 : LD   1, 1(5) ;  Load parameter 'n' into R1
21 : ST 1, 1(4) ; Store argument 0 in callee
22 : LDC  1, 10(0) ;  Load integer-literal value into register 1
23 : ST 1, 2(4) ; Store argument 1 in callee
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return in callee frame
26 : ADD 5, 4, 0 ; Push callee frame
27 : LDA 7, 45(0) ; Call MOD
28 : LD   1, 3(5) ;  Load function result
29 : LDC   2, 4(0) ;  Caller frame size
30 : SUB   5, 5, 2 ;  Pop back to caller
31 : SUB   4, 4, 2 ;  Pop back to caller
32 : ST 1, 2(4) ; Store argument 1 in callee
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame
36 : LDA 7, 140(0) ; Call divisibleByParts
37 : LD   1, 3(5) ;  Load function result
38 : LDC   2, 4(0) ;  Caller frame size
39 : SUB   5, 5, 2 ;  Pop back to caller
40 : SUB   4, 4, 2 ;  Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s frame
42 : LD   1, 2(5) ;  Load return value into register 1
43 : LD  6, 0(5) ;  Load return address for main function into register 6
44 : LDA  7, 0(6) ;  Jump to return address of main function
45 : LD   1, 2(5) ;  Load parameter 'n' into R1
46 : ST   1, 3(4) ;  Store right operand result into return value slot
47 : LD   1, 1(5) ;  Load parameter 'm' into R1
48 : ADD  2, 1, 0 ;  Move left operand to register 2
49 : LD   1, 3(4) ;  Return right operand back into register 1
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : ADD  2, 1, 0 ;  Move left operand to register 2
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : MUL  1, 2, 1 ;  R1 = left * right
54 : ADD  3, 1, 0 ;  Move right operand to register 3
55 : LD   1, 1(5) ;  Load parameter 'm' into R1
56 : ADD  2, 1, 0 ;  Move left operand to register 2
57 : ADD  1, 3, 0 ;  Move right operand to register 1
58 : SUB  1, 2, 1 ;  R1 = left - right
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LDC  1, 7(0) ;  Load integer-literal value into register 1
63 : ST   1, 3(4) ;  Store right operand result into return value slot
64 : LD   1, 1(5) ;  Load parameter 'diff' into R1
65 : ADD  2, 1, 0 ;  Move left operand to register 2
66 : LD   1, 3(4) ;  Return right operand back into register 1
67 : SUB  1, 2, 1 ;  left - right for equality check
68 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
69 : LDC  1, 0(0) ;  false
70 : LDA  7, 1(7) ;  skip setting true
71 : LDC  1, 1(0) ;  true
72 : ADD  2, 1, 0 ;  Move left operand to register 2
73 : LDC  1, 0(0) ;  Load integer-literal value into register 1
74 : ST   1, 3(4) ;  Store right operand result into return value slot
75 : LD   1, 1(5) ;  Load parameter 'diff' into R1
76 : ADD  2, 1, 0 ;  Move left operand to register 2
77 : LD   1, 3(4) ;  Return right operand back into register 1
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : ADD  1, 2, 1 ;  R1 = left OR right
84 : ADD  2, 1, 0 ;  Move left operand to register 2
85 : LDC  1, 7(0) ;  Load integer-literal value into register 1
86 : SUB  1, 0, 1 ;  Negate value in R1
87 : ADD  3, 1, 0 ;  Move right operand to register 3
88 : LD   1, 1(5) ;  Load parameter 'diff' into R1
89 : ADD  2, 1, 0 ;  Move left operand to register 2
90 : ADD  1, 3, 0 ;  Move right operand to register 1
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : ADD  1, 2, 1 ;  R1 = left OR right
97 : ADD  2, 1, 0 ;  Move left operand to register 2
98 : LDC  1, 14(0) ;  Load integer-literal value into register 1
99 : SUB  1, 0, 1 ;  Negate value in R1
100 : ADD  3, 1, 0 ;  Move right operand to register 3
101 : LD   1, 1(5) ;  Load parameter 'diff' into R1
102 : ADD  2, 1, 0 ;  Move left operand to register 2
103 : ADD  1, 3, 0 ;  Move right operand to register 1
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : ADD  1, 2, 1 ;  R1 = left OR right
110 : JEQ  1, 113(0) ;  If condition is false, jump to ELSE
111 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
112 : LDA  7, 137(0) ;  Skip ELSE block
113 : LDC  1, 14(0) ;  Load integer-literal value into register 1
114 : ST   1, 3(4) ;  Store right operand result into return value slot
115 : LD   1, 1(5) ;  Load parameter 'diff' into R1
116 : ADD  2, 1, 0 ;  Move left operand to register 2
117 : LD   1, 3(4) ;  Return right operand back into register 1
118 : SUB  1, 2, 1 ;  left - right for less-than check
119 : JLT  1, 2(7) ;  If R1 < 0, jump to true
120 : LDC  1, 0(0) ;  false
121 : LDA  7, 1(7) ;  skip setting true
122 : LDC  1, 1(0) ;  true
123 : JEQ  1, 126(0) ;  If condition is false, jump to ELSE
124 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
125 : LDA  7, 137(0) ;  Skip ELSE block
126 : LDA 4, 3(5) ; Base of callee frame
127 : LD   1, 1(5) ;  Load parameter 'diff' into R1
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return in callee frame
131 : ADD 5, 4, 0 ; Push callee frame
132 : LDA 7, 11(0) ; Call main
133 : LD   1, 2(5) ;  Load function result
134 : LDC   2, 3(0) ;  Caller frame size
135 : SUB   5, 5, 2 ;  Pop back to caller
136 : SUB   4, 4, 2 ;  Pop back to caller
137 : ST   1, 2(5) ;  Store function result into stack frame
138 : LD   6, 0(5) ;  Load return address
139 : LDA  7, 0(6) ;  Return to caller
140 : LDA 4, 3(5) ; Base of callee frame
141 : LDC  1, 2(0) ;  Load integer-literal value into register 1
142 : ST   1, 3(4) ;  Store right operand result into return value slot
143 : LD   1, 2(5) ;  Load parameter 'right' into R1
144 : ADD  2, 1, 0 ;  Move left operand to register 2
145 : LD   1, 3(4) ;  Return right operand back into register 1
146 : MUL  1, 2, 1 ;  R1 = left * right
147 : ADD  3, 1, 0 ;  Move right operand to register 3
148 : LD   1, 1(5) ;  Load parameter 'left' into R1
149 : ADD  2, 1, 0 ;  Move left operand to register 2
150 : ADD  1, 3, 0 ;  Move right operand to register 1
151 : SUB  1, 2, 1 ;  R1 = left - right
152 : ST 1, 1(4) ; Store argument 0 in callee
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 62(0) ; Call divisibleByDifference
157 : LD   1, 2(5) ;  Load function result
158 : LDC   2, 3(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : SUB   4, 4, 2 ;  Pop back to caller
161 : ST   1, 3(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
