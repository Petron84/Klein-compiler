0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD  4, 5, 0 ;  Set top of caller frame
2 : LD   2, 1(0) ;  Load CLI arg 1 into register
3 : ST   2, 1(5) ;  Store the argument into stack frame
4 : LDA  6, 2(7) ;  Calculate return address
5 : ST   6, 0(5) ;  Store return address in main stack frame
6 : LDA  7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT  1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT  1, 0, 0 ;  Hardcoded print function
10 : LD   6, 0(5) ;  Load return addess from stack frame.
11 : LDA  7, 0(6) ;  Jump to return address.
12 : LDA 4, 4(5) ; Base of callee frame
13 : LDC  1, 10(0) ;  Load integer-literal value into register 1
14 : ST   1, 3(4) ;  Store right operand result into return value slot
15 : LD   1, 1(5) ;  Load parameter 'n' into R1
16 : ADD  2, 1, 0 ;  Move left operand to register 2
17 : LD   1, 3(4) ;  Return right operand back into register 1
18 : DIV  1, 2, 1 ;  R1 = left / right
19 : ST 1, 1(4) ; Store argument 0 in callee
20 : LDA 4, 4(5) ; Base of callee frame
21 : LD   1, 1(5) ;  Load parameter 'n' into R1
22 : ST 1, 1(4) ; Store argument 0 in callee
23 : LDC  1, 10(0) ;  Load integer-literal value into register 1
24 : ST 1, 2(4) ; Store argument 1 in callee
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 46(0) ; Call MOD
29 : LD   1, 3(5) ;  Load function result
30 : LDC   2, 4(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : SUB   4, 4, 2 ;  Pop back to caller
33 : ST 1, 2(4) ; Store argument 1 in callee
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame
37 : LDA 7, 141(0) ; Call divisibleByParts
38 : LD   1, 3(5) ;  Load function result
39 : LDC   2, 4(0) ;  Caller frame size
40 : SUB   5, 5, 2 ;  Pop back to caller
41 : SUB   4, 4, 2 ;  Pop back to caller
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD   1, 2(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 2(5) ;  Load parameter 'n' into R1
47 : ST   1, 3(4) ;  Store right operand result into return value slot
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  2, 1, 0 ;  Move left operand to register 2
50 : LD   1, 3(4) ;  Return right operand back into register 1
51 : DIV  1, 2, 1 ;  R1 = left / right
52 : ADD  2, 1, 0 ;  Move left operand to register 2
53 : LD   1, 2(5) ;  Load parameter 'n' into R1
54 : MUL  1, 2, 1 ;  R1 = left * right
55 : ADD  3, 1, 0 ;  Move right operand to register 3
56 : LD   1, 1(5) ;  Load parameter 'm' into R1
57 : ADD  2, 1, 0 ;  Move left operand to register 2
58 : ADD  1, 3, 0 ;  Move right operand to register 1
59 : SUB  1, 2, 1 ;  R1 = left - right
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LD   6, 0(5) ;  Load return address
62 : LDA  7, 0(6) ;  Return to caller
63 : LDC  1, 7(0) ;  Load integer-literal value into register 1
64 : ST   1, 3(4) ;  Store right operand result into return value slot
65 : LD   1, 1(5) ;  Load parameter 'diff' into R1
66 : ADD  2, 1, 0 ;  Move left operand to register 2
67 : LD   1, 3(4) ;  Return right operand back into register 1
68 : SUB  1, 2, 1 ;  left - right for equality check
69 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
70 : LDC  1, 0(0) ;  false
71 : LDA  7, 1(7) ;  skip setting true
72 : LDC  1, 1(0) ;  true
73 : ADD  2, 1, 0 ;  Move left operand to register 2
74 : LDC  1, 0(0) ;  Load integer-literal value into register 1
75 : ST   1, 3(4) ;  Store right operand result into return value slot
76 : LD   1, 1(5) ;  Load parameter 'diff' into R1
77 : ADD  2, 1, 0 ;  Move left operand to register 2
78 : LD   1, 3(4) ;  Return right operand back into register 1
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : ADD  1, 2, 1 ;  R1 = left OR right
85 : ADD  2, 1, 0 ;  Move left operand to register 2
86 : LDC  1, 7(0) ;  Load integer-literal value into register 1
87 : SUB  1, 0, 1 ;  Negate value in R1
88 : ADD  3, 1, 0 ;  Move right operand to register 3
89 : LD   1, 1(5) ;  Load parameter 'diff' into R1
90 : ADD  2, 1, 0 ;  Move left operand to register 2
91 : ADD  1, 3, 0 ;  Move right operand to register 1
92 : SUB  1, 2, 1 ;  left - right for equality check
93 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
94 : LDC  1, 0(0) ;  false
95 : LDA  7, 1(7) ;  skip setting true
96 : LDC  1, 1(0) ;  true
97 : ADD  1, 2, 1 ;  R1 = left OR right
98 : ADD  2, 1, 0 ;  Move left operand to register 2
99 : LDC  1, 14(0) ;  Load integer-literal value into register 1
100 : SUB  1, 0, 1 ;  Negate value in R1
101 : ADD  3, 1, 0 ;  Move right operand to register 3
102 : LD   1, 1(5) ;  Load parameter 'diff' into R1
103 : ADD  2, 1, 0 ;  Move left operand to register 2
104 : ADD  1, 3, 0 ;  Move right operand to register 1
105 : SUB  1, 2, 1 ;  left - right for equality check
106 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
107 : LDC  1, 0(0) ;  false
108 : LDA  7, 1(7) ;  skip setting true
109 : LDC  1, 1(0) ;  true
110 : ADD  1, 2, 1 ;  R1 = left OR right
111 : JEQ  1, 114(0) ;  If condition is false, jump to ELSE
112 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
113 : LDA  7, 138(0) ;  Skip ELSE block
114 : LDC  1, 14(0) ;  Load integer-literal value into register 1
115 : ST   1, 3(4) ;  Store right operand result into return value slot
116 : LD   1, 1(5) ;  Load parameter 'diff' into R1
117 : ADD  2, 1, 0 ;  Move left operand to register 2
118 : LD   1, 3(4) ;  Return right operand back into register 1
119 : SUB  1, 2, 1 ;  left - right for less-than check
120 : JLT  1, 2(7) ;  If R1 < 0, jump to true
121 : LDC  1, 0(0) ;  false
122 : LDA  7, 1(7) ;  skip setting true
123 : LDC  1, 1(0) ;  true
124 : JEQ  1, 127(0) ;  If condition is false, jump to ELSE
125 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
126 : LDA  7, 138(0) ;  Skip ELSE block
127 : LDA 4, 3(5) ; Base of callee frame
128 : LD   1, 1(5) ;  Load parameter 'diff' into R1
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 12(0) ; Call main
134 : LD   1, 2(5) ;  Load function result
135 : LDC   2, 3(0) ;  Caller frame size
136 : SUB   5, 5, 2 ;  Pop back to caller
137 : SUB   4, 4, 2 ;  Pop back to caller
138 : ST   1, 2(5) ;  Store function result into stack frame
139 : LD   6, 0(5) ;  Load return address
140 : LDA  7, 0(6) ;  Return to caller
141 : LDA 4, 3(5) ; Base of callee frame
142 : LDC  1, 2(0) ;  Load integer-literal value into register 1
143 : ST   1, 3(4) ;  Store right operand result into return value slot
144 : LD   1, 2(5) ;  Load parameter 'right' into R1
145 : ADD  2, 1, 0 ;  Move left operand to register 2
146 : LD   1, 3(4) ;  Return right operand back into register 1
147 : MUL  1, 2, 1 ;  R1 = left * right
148 : ADD  3, 1, 0 ;  Move right operand to register 3
149 : LD   1, 1(5) ;  Load parameter 'left' into R1
150 : ADD  2, 1, 0 ;  Move left operand to register 2
151 : ADD  1, 3, 0 ;  Move right operand to register 1
152 : SUB  1, 2, 1 ;  R1 = left - right
153 : ST 1, 1(4) ; Store argument 0 in callee
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return in callee frame
156 : ADD 5, 4, 0 ; Push callee frame
157 : LDA 7, 63(0) ; Call divisibleByDifference
158 : LD   1, 2(5) ;  Load function result
159 : LDC   2, 3(0) ;  Caller frame size
160 : SUB   5, 5, 2 ;  Pop back to caller
161 : SUB   4, 4, 2 ;  Pop back to caller
162 : ST   1, 3(5) ;  Store function result into stack frame
163 : LD   6, 0(5) ;  Load return address
164 : LDA  7, 0(6) ;  Return to caller
