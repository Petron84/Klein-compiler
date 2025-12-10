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
21 : LDA 4, 4(5) ; Base of callee frame
22 : LD   1, 1(5) ;  Load parameter 'm' into R1
23 : ST 1, 1(4) ; Store argument 0 in callee
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : ST 1, 2(4) ; Store argument 1 in callee
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 38(0) ; Call mult
30 : LD   1, 3(5) ;  Load function result
31 : LDC   2, 4(0) ;  Caller frame size
32 : SUB   5, 5, 2 ;  Pop back to caller
33 : SUB   4, 4, 2 ;  Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s frame
35 : LD   1, 3(5) ;  Load return value into register 1
36 : LD  6, 0(5) ;  Load return address for main function into register 6
37 : LDA  7, 0(6) ;  Jump to return address of main function
38 : LDA 4, 5(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'm' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee
41 : LD   1, 2(5) ;  Load parameter 'n' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDC  1, 0(0) ;  Load integer-literal value into register 1
44 : ST 1, 3(4) ; Store argument 2 in callee
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame
48 : LDA 7, 56(0) ; Call multWithAccum
49 : LD   1, 4(5) ;  Load function result
50 : LDC   2, 5(0) ;  Caller frame size
51 : SUB   5, 5, 2 ;  Pop back to caller
52 : SUB   4, 4, 2 ;  Pop back to caller
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDC  1, 0(0) ;  Load integer-literal value into register 1
57 : ST   1, 3(4) ;  Store right operand result into return value slot
58 : LD   1, 2(5) ;  Load parameter 'n' into R1
59 : ADD  2, 1, 0 ;  Move left operand to register 2
60 : LD   1, 3(4) ;  Return right operand back into register 1
61 : SUB  1, 2, 1 ;  left - right for equality check
62 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : JEQ  1, 69(0) ;  If condition is false, jump to ELSE
67 : LD   1, 3(5) ;  Load parameter 'accum' into R1
68 : LDA  7, 146(0) ;  Skip ELSE block
69 : LDA 4, 4(5) ; Base of callee frame
70 : LD   1, 2(5) ;  Load parameter 'n' into R1
71 : ST 1, 1(4) ; Store argument 0 in callee
72 : LDC  1, 2(0) ;  Load integer-literal value into register 1
73 : ST 1, 2(4) ; Store argument 1 in callee
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame
77 : LDA 7, 149(0) ; Call MOD
78 : LD   1, 3(5) ;  Load function result
79 : LDC   2, 4(0) ;  Caller frame size
80 : SUB   5, 5, 2 ;  Pop back to caller
81 : SUB   4, 4, 2 ;  Pop back to caller
82 : ADD  2, 1, 0 ;  Move left operand to register 2
83 : LDC  1, 1(0) ;  Load integer-literal value into register 1
84 : SUB  1, 2, 1 ;  left - right for equality check
85 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
90 : LDA 4, 5(5) ; Base of callee frame
91 : LDC  1, 2(0) ;  Load integer-literal value into register 1
92 : ST   1, 3(4) ;  Store right operand result into return value slot
93 : LD   1, 1(5) ;  Load parameter 'm' into R1
94 : ADD  2, 1, 0 ;  Move left operand to register 2
95 : LD   1, 3(4) ;  Return right operand back into register 1
96 : MUL  1, 2, 1 ;  R1 = left * right
97 : ST 1, 1(4) ; Store argument 0 in callee
98 : LDC  1, 2(0) ;  Load integer-literal value into register 1
99 : ST   1, 3(4) ;  Store right operand result into return value slot
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : ADD  2, 1, 0 ;  Move left operand to register 2
102 : LD   1, 3(4) ;  Return right operand back into register 1
103 : DIV  1, 2, 1 ;  R1 = left / right
104 : ST 1, 2(4) ; Store argument 1 in callee
105 : LD   1, 1(5) ;  Load parameter 'm' into R1
106 : ST   1, 3(4) ;  Store right operand result into return value slot
107 : LD   1, 3(5) ;  Load parameter 'accum' into R1
108 : ADD  2, 1, 0 ;  Move left operand to register 2
109 : LD   1, 3(4) ;  Return right operand back into register 1
110 : ADD  1, 2, 1 ;  R1 = left + right
111 : ST 1, 3(4) ; Store argument 2 in callee
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 56(0) ; Call multWithAccum
116 : LD   1, 4(5) ;  Load function result
117 : LDC   2, 5(0) ;  Caller frame size
118 : SUB   5, 5, 2 ;  Pop back to caller
119 : SUB   4, 4, 2 ;  Pop back to caller
120 : LDA  7, 146(0) ;  Skip ELSE block
121 : LDA 4, 5(5) ; Base of callee frame
122 : LDC  1, 2(0) ;  Load integer-literal value into register 1
123 : ST   1, 3(4) ;  Store right operand result into return value slot
124 : LD   1, 1(5) ;  Load parameter 'm' into R1
125 : ADD  2, 1, 0 ;  Move left operand to register 2
126 : LD   1, 3(4) ;  Return right operand back into register 1
127 : MUL  1, 2, 1 ;  R1 = left * right
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LDC  1, 2(0) ;  Load integer-literal value into register 1
130 : ST   1, 3(4) ;  Store right operand result into return value slot
131 : LD   1, 2(5) ;  Load parameter 'n' into R1
132 : ADD  2, 1, 0 ;  Move left operand to register 2
133 : LD   1, 3(4) ;  Return right operand back into register 1
134 : DIV  1, 2, 1 ;  R1 = left / right
135 : ST 1, 2(4) ; Store argument 1 in callee
136 : LD   1, 3(5) ;  Load parameter 'accum' into R1
137 : ST 1, 3(4) ; Store argument 2 in callee
138 : LDA 6, 142(0) ; Return address
139 : ST 6, 0(4) ; Store return in callee frame
140 : ADD 5, 4, 0 ; Push callee frame
141 : LDA 7, 56(0) ; Call multWithAccum
142 : LD   1, 4(5) ;  Load function result
143 : LDC   2, 5(0) ;  Caller frame size
144 : SUB   5, 5, 2 ;  Pop back to caller
145 : SUB   4, 4, 2 ;  Pop back to caller
146 : ST   1, 4(5) ;  Store function result into stack frame
147 : LD   6, 0(5) ;  Load return address
148 : LDA  7, 0(6) ;  Return to caller
149 : LD   1, 2(5) ;  Load parameter 'n' into R1
150 : ST   1, 3(4) ;  Store right operand result into return value slot
151 : LD   1, 1(5) ;  Load parameter 'm' into R1
152 : ADD  2, 1, 0 ;  Move left operand to register 2
153 : LD   1, 3(4) ;  Return right operand back into register 1
154 : DIV  1, 2, 1 ;  R1 = left / right
155 : ADD  2, 1, 0 ;  Move left operand to register 2
156 : LD   1, 2(5) ;  Load parameter 'n' into R1
157 : MUL  1, 2, 1 ;  R1 = left * right
158 : ADD  3, 1, 0 ;  Move right operand to register 3
159 : LD   1, 1(5) ;  Load parameter 'm' into R1
160 : ADD  2, 1, 0 ;  Move left operand to register 2
161 : ADD  1, 3, 0 ;  Move right operand to register 1
162 : SUB  1, 2, 1 ;  R1 = left - right
163 : ST   1, 3(5) ;  Store function result into stack frame
164 : LD   6, 0(5) ;  Load return address
165 : LDA  7, 0(6) ;  Return to caller
