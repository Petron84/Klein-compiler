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
13 : LDC  4, 1(0) ;  Top of caller frame
14 : LD   1, 1(5) ;  Load parameter 'm' into R1
15 : LDA 4, 3(5) ; Base of callee frame
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return addr in callee frame
18 : ADD 5, 4, 0 ; Push new frame
19 : LDA 7, 10(0) ; Call print
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop frame
22 : LDA 4, 4(5) ; Base of callee frame
23 : LD   1, 1(5) ;  Load parameter 'm' into R1
24 : ST 1, 1(4) ; Store argument 0 in callee
25 : LD   1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 2(4) ; Store argument 1 in callee
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame
30 : LDA 7, 39(0) ; Call mult
31 : LD   1, 3(5) ;  Load function result
32 : LDC   2, 4(0) ;  Caller frame size
33 : SUB   5, 5, 2 ;  Pop back to caller
34 : SUB   4, 4, 2 ;  Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LD   1, 3(5) ;  Load return value into register 1
37 : LD  6, 0(5) ;  Load return address for main function into register 6
38 : LDA  7, 0(6) ;  Jump to return address of main function
39 : LDA 4, 5(5) ; Base of callee frame
40 : LD   1, 1(5) ;  Load parameter 'm' into R1
41 : ST 1, 1(4) ; Store argument 0 in callee
42 : LD   1, 2(5) ;  Load parameter 'n' into R1
43 : ST 1, 2(4) ; Store argument 1 in callee
44 : LDC  1, 0(0) ;  Load integer-literal value into register 1
45 : ST 1, 3(4) ; Store argument 2 in callee
46 : LDA 6, 50(0) ; Return address
47 : ST 6, 0(4) ; Store return in callee frame
48 : ADD 5, 4, 0 ; Push callee frame
49 : LDA 7, 57(0) ; Call multWithAccum
50 : LD   1, 4(5) ;  Load function result
51 : LDC   2, 5(0) ;  Caller frame size
52 : SUB   5, 5, 2 ;  Pop back to caller
53 : SUB   4, 4, 2 ;  Pop back to caller
54 : ST   1, 3(5) ;  Store function result into stack frame
55 : LD   6, 0(5) ;  Load return address
56 : LDA  7, 0(6) ;  Return to caller
57 : LDC  1, 0(0) ;  Load integer-literal value into register 1
58 : ST   1, 3(4) ;  Store right operand result into return value slot
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  2, 1, 0 ;  Move left operand to register 2
61 : LD   1, 3(4) ;  Return right operand back into register 1
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
68 : LD   1, 3(5) ;  Load parameter 'accum' into R1
69 : LDA  7, 147(0) ;  Skip ELSE block
70 : LDA 4, 4(5) ; Base of callee frame
71 : LD   1, 2(5) ;  Load parameter 'n' into R1
72 : ST 1, 1(4) ; Store argument 0 in callee
73 : LDC  1, 2(0) ;  Load integer-literal value into register 1
74 : ST 1, 2(4) ; Store argument 1 in callee
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return in callee frame
77 : ADD 5, 4, 0 ; Push callee frame
78 : LDA 7, 150(0) ; Call MOD
79 : LD   1, 3(5) ;  Load function result
80 : LDC   2, 4(0) ;  Caller frame size
81 : SUB   5, 5, 2 ;  Pop back to caller
82 : SUB   4, 4, 2 ;  Pop back to caller
83 : ADD  2, 1, 0 ;  Move left operand to register 2
84 : LDC  1, 1(0) ;  Load integer-literal value into register 1
85 : SUB  1, 2, 1 ;  left - right for equality check
86 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
87 : LDC  1, 0(0) ;  false
88 : LDA  7, 1(7) ;  skip setting true
89 : LDC  1, 1(0) ;  true
90 : JEQ  1, 122(0) ;  If condition is false, jump to ELSE
91 : LDA 4, 5(5) ; Base of callee frame
92 : LDC  1, 2(0) ;  Load integer-literal value into register 1
93 : ST   1, 3(4) ;  Store right operand result into return value slot
94 : LD   1, 1(5) ;  Load parameter 'm' into R1
95 : ADD  2, 1, 0 ;  Move left operand to register 2
96 : LD   1, 3(4) ;  Return right operand back into register 1
97 : MUL  1, 2, 1 ;  R1 = left * right
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LDC  1, 2(0) ;  Load integer-literal value into register 1
100 : ST   1, 3(4) ;  Store right operand result into return value slot
101 : LD   1, 2(5) ;  Load parameter 'n' into R1
102 : ADD  2, 1, 0 ;  Move left operand to register 2
103 : LD   1, 3(4) ;  Return right operand back into register 1
104 : DIV  1, 2, 1 ;  R1 = left / right
105 : ST 1, 2(4) ; Store argument 1 in callee
106 : LD   1, 1(5) ;  Load parameter 'm' into R1
107 : ST   1, 3(4) ;  Store right operand result into return value slot
108 : LD   1, 3(5) ;  Load parameter 'accum' into R1
109 : ADD  2, 1, 0 ;  Move left operand to register 2
110 : LD   1, 3(4) ;  Return right operand back into register 1
111 : ADD  1, 2, 1 ;  R1 = left + right
112 : ST 1, 3(4) ; Store argument 2 in callee
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame
116 : LDA 7, 57(0) ; Call multWithAccum
117 : LD   1, 4(5) ;  Load function result
118 : LDC   2, 5(0) ;  Caller frame size
119 : SUB   5, 5, 2 ;  Pop back to caller
120 : SUB   4, 4, 2 ;  Pop back to caller
121 : LDA  7, 147(0) ;  Skip ELSE block
122 : LDA 4, 5(5) ; Base of callee frame
123 : LDC  1, 2(0) ;  Load integer-literal value into register 1
124 : ST   1, 3(4) ;  Store right operand result into return value slot
125 : LD   1, 1(5) ;  Load parameter 'm' into R1
126 : ADD  2, 1, 0 ;  Move left operand to register 2
127 : LD   1, 3(4) ;  Return right operand back into register 1
128 : MUL  1, 2, 1 ;  R1 = left * right
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LDC  1, 2(0) ;  Load integer-literal value into register 1
131 : ST   1, 3(4) ;  Store right operand result into return value slot
132 : LD   1, 2(5) ;  Load parameter 'n' into R1
133 : ADD  2, 1, 0 ;  Move left operand to register 2
134 : LD   1, 3(4) ;  Return right operand back into register 1
135 : DIV  1, 2, 1 ;  R1 = left / right
136 : ST 1, 2(4) ; Store argument 1 in callee
137 : LD   1, 3(5) ;  Load parameter 'accum' into R1
138 : ST 1, 3(4) ; Store argument 2 in callee
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame
142 : LDA 7, 57(0) ; Call multWithAccum
143 : LD   1, 4(5) ;  Load function result
144 : LDC   2, 5(0) ;  Caller frame size
145 : SUB   5, 5, 2 ;  Pop back to caller
146 : SUB   4, 4, 2 ;  Pop back to caller
147 : ST   1, 4(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LD   1, 2(5) ;  Load parameter 'n' into R1
151 : ST   1, 3(4) ;  Store right operand result into return value slot
152 : LD   1, 1(5) ;  Load parameter 'm' into R1
153 : ADD  2, 1, 0 ;  Move left operand to register 2
154 : LD   1, 3(4) ;  Return right operand back into register 1
155 : DIV  1, 2, 1 ;  R1 = left / right
156 : ADD  2, 1, 0 ;  Move left operand to register 2
157 : LD   1, 2(5) ;  Load parameter 'n' into R1
158 : MUL  1, 2, 1 ;  R1 = left * right
159 : ADD  3, 1, 0 ;  Move right operand to register 3
160 : LD   1, 1(5) ;  Load parameter 'm' into R1
161 : ADD  2, 1, 0 ;  Move left operand to register 2
162 : ADD  1, 3, 0 ;  Move right operand to register 1
163 : SUB  1, 2, 1 ;  R1 = left - right
164 : ST   1, 3(5) ;  Store function result into stack frame
165 : LD   6, 0(5) ;  Load return address
166 : LDA  7, 0(6) ;  Return to caller
