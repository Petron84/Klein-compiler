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
11 : LDA 4, 5(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 0(0) ;  Load integer-literal value into register 1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDC  1, 0(0) ;  Load integer-literal value into register 1
17 : ST 1, 3(4) ; Store argument 2 in callee
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 86(0) ; Call average_digit
22 : LD   1, 4(5) ;  Load function result
23 : LDC   2, 5(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s frame
27 : LD   1, 2(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 2(5) ;  Load parameter 'n' into R1
31 : ST   1, 3(4) ;  Store right operand result into return value slot
32 : LD   1, 1(5) ;  Load parameter 'm' into R1
33 : ADD  2, 1, 0 ;  Move left operand to register 2
34 : LD   1, 3(4) ;  Return right operand back into register 1
35 : DIV  1, 2, 1 ;  R1 = left / right
36 : ADD  2, 1, 0 ;  Move left operand to register 2
37 : LD   1, 2(5) ;  Load parameter 'n' into R1
38 : MUL  1, 2, 1 ;  R1 = left * right
39 : ADD  3, 1, 0 ;  Move right operand to register 3
40 : LD   1, 1(5) ;  Load parameter 'm' into R1
41 : ADD  2, 1, 0 ;  Move left operand to register 2
42 : ADD  1, 3, 0 ;  Move right operand to register 1
43 : SUB  1, 2, 1 ;  R1 = left - right
44 : ST   1, 3(5) ;  Store function result into stack frame
45 : LD   6, 0(5) ;  Load return address
46 : LDA  7, 0(6) ;  Return to caller
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ST   1, 3(4) ;  Store right operand result into return value slot
49 : LD   1, 1(5) ;  Load parameter 'sum' into R1
50 : ADD  2, 1, 0 ;  Move left operand to register 2
51 : LD   1, 3(4) ;  Return right operand back into register 1
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : LDA 4, 3(5) ; Base of callee frame
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return addr in callee frame
56 : ADD 5, 4, 0 ; Push new frame
57 : LDA 7, 8(0) ; Call print
58 : LDC 2, 3(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop frame
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LDA 4, 4(5) ; Base of callee frame
62 : LD   1, 1(5) ;  Load parameter 'sum' into R1
63 : ST 1, 1(4) ; Store argument 0 in callee
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : ST 1, 2(4) ; Store argument 1 in callee
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame
69 : LDA 7, 30(0) ; Call MOD
70 : LD   1, 3(5) ;  Load function result
71 : LDC   2, 4(0) ;  Caller frame size
72 : SUB   5, 5, 2 ;  Pop back to caller
73 : SUB   4, 4, 2 ;  Pop back to caller
74 : LDA 4, 3(5) ; Base of callee frame
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return addr in callee frame
77 : ADD 5, 4, 0 ; Push new frame
78 : LDA 7, 8(0) ; Call print
79 : LDC 2, 3(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop frame
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   1, 2(5) ;  Load parameter 'n' into R1
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LDC  1, 10(0) ;  Load integer-literal value into register 1
87 : ST   1, 3(4) ;  Store right operand result into return value slot
88 : LD   1, 1(5) ;  Load parameter 'n' into R1
89 : ADD  2, 1, 0 ;  Move left operand to register 2
90 : LD   1, 3(4) ;  Return right operand back into register 1
91 : SUB  1, 2, 1 ;  left - right for less-than check
92 : JLT  1, 2(7) ;  If R1 < 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
97 : LDA 4, 4(5) ; Base of callee frame
98 : LD   1, 1(5) ;  Load parameter 'n' into R1
99 : ST   1, 3(4) ;  Store right operand result into return value slot
100 : LD   1, 2(5) ;  Load parameter 'sum' into R1
101 : ADD  2, 1, 0 ;  Move left operand to register 2
102 : LD   1, 3(4) ;  Return right operand back into register 1
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : ST 1, 1(4) ; Store argument 0 in callee
105 : LDC  1, 1(0) ;  Load integer-literal value into register 1
106 : ST   1, 3(4) ;  Store right operand result into return value slot
107 : LD   1, 3(5) ;  Load parameter 'i' into R1
108 : ADD  2, 1, 0 ;  Move left operand to register 2
109 : LD   1, 3(4) ;  Return right operand back into register 1
110 : ADD  1, 2, 1 ;  R1 = left + right
111 : ST 1, 2(4) ; Store argument 1 in callee
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 47(0) ; Call print_and_return
116 : LD   1, 3(5) ;  Load function result
117 : LDC   2, 4(0) ;  Caller frame size
118 : SUB   5, 5, 2 ;  Pop back to caller
119 : SUB   4, 4, 2 ;  Pop back to caller
120 : LDA  7, 163(0) ;  Skip ELSE block
121 : LDA 4, 5(5) ; Base of callee frame
122 : LDC  1, 10(0) ;  Load integer-literal value into register 1
123 : ST   1, 3(4) ;  Store right operand result into return value slot
124 : LD   1, 1(5) ;  Load parameter 'n' into R1
125 : ADD  2, 1, 0 ;  Move left operand to register 2
126 : LD   1, 3(4) ;  Return right operand back into register 1
127 : DIV  1, 2, 1 ;  R1 = left / right
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LDA 4, 4(5) ; Base of callee frame
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 1(4) ; Store argument 0 in callee
132 : LDC  1, 10(0) ;  Load integer-literal value into register 1
133 : ST 1, 2(4) ; Store argument 1 in callee
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame
137 : LDA 7, 30(0) ; Call MOD
138 : LD   1, 3(5) ;  Load function result
139 : LDC   2, 4(0) ;  Caller frame size
140 : SUB   5, 5, 2 ;  Pop back to caller
141 : SUB   4, 4, 2 ;  Pop back to caller
142 : ADD  3, 1, 0 ;  Move right operand to register 3
143 : LD   1, 2(5) ;  Load parameter 'sum' into R1
144 : ADD  2, 1, 0 ;  Move left operand to register 2
145 : ADD  1, 3, 0 ;  Move right operand to register 1
146 : ADD  1, 2, 1 ;  R1 = left + right
147 : ST 1, 2(4) ; Store argument 1 in callee
148 : LDC  1, 1(0) ;  Load integer-literal value into register 1
149 : ST   1, 3(4) ;  Store right operand result into return value slot
150 : LD   1, 3(5) ;  Load parameter 'i' into R1
151 : ADD  2, 1, 0 ;  Move left operand to register 2
152 : LD   1, 3(4) ;  Return right operand back into register 1
153 : ADD  1, 2, 1 ;  R1 = left + right
154 : ST 1, 3(4) ; Store argument 2 in callee
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame
158 : LDA 7, 86(0) ; Call average_digit
159 : LD   1, 4(5) ;  Load function result
160 : LDC   2, 5(0) ;  Caller frame size
161 : SUB   5, 5, 2 ;  Pop back to caller
162 : SUB   4, 4, 2 ;  Pop back to caller
163 : ST   1, 4(5) ;  Store function result into stack frame
164 : LD   6, 0(5) ;  Load return address
165 : LDA  7, 0(6) ;  Return to caller
