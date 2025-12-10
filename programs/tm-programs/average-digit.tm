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
12 : LDA 4, 5(5) ; Base of callee frame
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC  1, 0(0) ;  Load integer-literal value into register 1
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDC  1, 0(0) ;  Load integer-literal value into register 1
18 : ST 1, 3(4) ; Store argument 2 in callee
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame
22 : LDA 7, 87(0) ; Call average_digit
23 : LD   1, 4(5) ;  Load function result
24 : LDC   2, 5(0) ;  Caller frame size
25 : SUB   5, 5, 2 ;  Pop back to caller
26 : SUB   4, 4, 2 ;  Pop back to caller
27 : ST 1, 2(5) ; Store result into caller’s frame
28 : LD   1, 2(5) ;  Load return value into register 1
29 : LD  6, 0(5) ;  Load return address for main function into register 6
30 : LDA  7, 0(6) ;  Jump to return address of main function
31 : LD   1, 2(5) ;  Load parameter 'n' into R1
32 : ST   1, 3(4) ;  Store right operand result into return value slot
33 : LD   1, 1(5) ;  Load parameter 'm' into R1
34 : ADD  2, 1, 0 ;  Move left operand to register 2
35 : LD   1, 3(4) ;  Return right operand back into register 1
36 : DIV  1, 2, 1 ;  R1 = left / right
37 : ADD  2, 1, 0 ;  Move left operand to register 2
38 : LD   1, 2(5) ;  Load parameter 'n' into R1
39 : MUL  1, 2, 1 ;  R1 = left * right
40 : ADD  3, 1, 0 ;  Move right operand to register 3
41 : LD   1, 1(5) ;  Load parameter 'm' into R1
42 : ADD  2, 1, 0 ;  Move left operand to register 2
43 : ADD  1, 3, 0 ;  Move right operand to register 1
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ST   1, 3(4) ;  Store right operand result into return value slot
50 : LD   1, 1(5) ;  Load parameter 'sum' into R1
51 : ADD  2, 1, 0 ;  Move left operand to register 2
52 : LD   1, 3(4) ;  Return right operand back into register 1
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : LDA 4, 3(5) ; Base of callee frame
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return addr in callee frame
57 : ADD 5, 4, 0 ; Push new frame
58 : LDA 7, 9(0) ; Call print
59 : LDC 2, 3(0) ; Caller frame size
60 : SUB 5, 5, 2 ; Pop frame
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LDA 4, 4(5) ; Base of callee frame
63 : LD   1, 1(5) ;  Load parameter 'sum' into R1
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LD   1, 2(5) ;  Load parameter 'n' into R1
66 : ST 1, 2(4) ; Store argument 1 in callee
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame
70 : LDA 7, 31(0) ; Call MOD
71 : LD   1, 3(5) ;  Load function result
72 : LDC   2, 4(0) ;  Caller frame size
73 : SUB   5, 5, 2 ;  Pop back to caller
74 : SUB   4, 4, 2 ;  Pop back to caller
75 : LDA 4, 3(5) ; Base of callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return addr in callee frame
78 : ADD 5, 4, 0 ; Push new frame
79 : LDA 7, 9(0) ; Call print
80 : LDC 2, 3(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop frame
82 : ST   1, 3(5) ;  Store function result into stack frame
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LDC  1, 10(0) ;  Load integer-literal value into register 1
88 : ST   1, 3(4) ;  Store right operand result into return value slot
89 : LD   1, 1(5) ;  Load parameter 'n' into R1
90 : ADD  2, 1, 0 ;  Move left operand to register 2
91 : LD   1, 3(4) ;  Return right operand back into register 1
92 : SUB  1, 2, 1 ;  left - right for less-than check
93 : JLT  1, 2(7) ;  If R1 < 0, jump to true
94 : LDC  1, 0(0) ;  false
95 : LDA  7, 1(7) ;  skip setting true
96 : LDC  1, 1(0) ;  true
97 : JEQ  1, 122(0) ;  If condition is false, jump to ELSE
98 : LDA 4, 4(5) ; Base of callee frame
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : ST   1, 3(4) ;  Store right operand result into return value slot
101 : LD   1, 2(5) ;  Load parameter 'sum' into R1
102 : ADD  2, 1, 0 ;  Move left operand to register 2
103 : LD   1, 3(4) ;  Return right operand back into register 1
104 : ADD  1, 2, 1 ;  R1 = left + right
105 : ST 1, 1(4) ; Store argument 0 in callee
106 : LDC  1, 1(0) ;  Load integer-literal value into register 1
107 : ST   1, 3(4) ;  Store right operand result into return value slot
108 : LD   1, 3(5) ;  Load parameter 'i' into R1
109 : ADD  2, 1, 0 ;  Move left operand to register 2
110 : LD   1, 3(4) ;  Return right operand back into register 1
111 : ADD  1, 2, 1 ;  R1 = left + right
112 : ST 1, 2(4) ; Store argument 1 in callee
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame
116 : LDA 7, 48(0) ; Call print_and_return
117 : LD   1, 3(5) ;  Load function result
118 : LDC   2, 4(0) ;  Caller frame size
119 : SUB   5, 5, 2 ;  Pop back to caller
120 : SUB   4, 4, 2 ;  Pop back to caller
121 : LDA  7, 164(0) ;  Skip ELSE block
122 : LDA 4, 5(5) ; Base of callee frame
123 : LDC  1, 10(0) ;  Load integer-literal value into register 1
124 : ST   1, 3(4) ;  Store right operand result into return value slot
125 : LD   1, 1(5) ;  Load parameter 'n' into R1
126 : ADD  2, 1, 0 ;  Move left operand to register 2
127 : LD   1, 3(4) ;  Return right operand back into register 1
128 : DIV  1, 2, 1 ;  R1 = left / right
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LDA 4, 4(5) ; Base of callee frame
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST 1, 1(4) ; Store argument 0 in callee
133 : LDC  1, 10(0) ;  Load integer-literal value into register 1
134 : ST 1, 2(4) ; Store argument 1 in callee
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame
138 : LDA 7, 31(0) ; Call MOD
139 : LD   1, 3(5) ;  Load function result
140 : LDC   2, 4(0) ;  Caller frame size
141 : SUB   5, 5, 2 ;  Pop back to caller
142 : SUB   4, 4, 2 ;  Pop back to caller
143 : ADD  3, 1, 0 ;  Move right operand to register 3
144 : LD   1, 2(5) ;  Load parameter 'sum' into R1
145 : ADD  2, 1, 0 ;  Move left operand to register 2
146 : ADD  1, 3, 0 ;  Move right operand to register 1
147 : ADD  1, 2, 1 ;  R1 = left + right
148 : ST 1, 2(4) ; Store argument 1 in callee
149 : LDC  1, 1(0) ;  Load integer-literal value into register 1
150 : ST   1, 3(4) ;  Store right operand result into return value slot
151 : LD   1, 3(5) ;  Load parameter 'i' into R1
152 : ADD  2, 1, 0 ;  Move left operand to register 2
153 : LD   1, 3(4) ;  Return right operand back into register 1
154 : ADD  1, 2, 1 ;  R1 = left + right
155 : ST 1, 3(4) ; Store argument 2 in callee
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame
159 : LDA 7, 87(0) ; Call average_digit
160 : LD   1, 4(5) ;  Load function result
161 : LDC   2, 5(0) ;  Caller frame size
162 : SUB   5, 5, 2 ;  Pop back to caller
163 : SUB   4, 4, 2 ;  Pop back to caller
164 : ST   1, 4(5) ;  Store function result into stack frame
165 : LD   6, 0(5) ;  Load return address
166 : LDA  7, 0(6) ;  Return to caller
