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
14 : LDA 4, 4(5) ; Base of callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return addr in callee frame
17 : ADD 5, 4, 0 ; Push new frame
18 : LDA 7, 10(0) ; Call print
19 : LDC 2, 4(0) ; Caller frame size
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
38 : LDA 4, 4(5) ; Base of callee frame
39 : LD   1, 1(5) ;  Load parameter 'm' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee
41 : LD   1, 2(5) ;  Load parameter 'n' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
44 : ST 1, 3(4) ; Store argument 2 in callee
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame
48 : LDA 7, 56(0) ; Call multWithAccum
49 : LD   1, 4(5) ;  Load function result
50 : LDC   2, 4(0) ;  Caller frame size
51 : SUB   5, 5, 2 ;  Pop back to caller
52 : SUB   4, 4, 2 ;  Pop back to caller
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  3, 1, 0 ;  Store left operand into temporary register
58 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
59 : ADD  2, 3, 0 ;  Restore left operand
60 : SUB  1, 2, 1 ;  left - right for equality check
61 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
62 : LDC  1, 0(0) ;  false
63 : LDA  7, 1(7) ;  skip setting true
64 : LDC  1, 1(0) ;  true
65 : JEQ  1, 68(0) ;  If condition is false, jump to ELSE
66 : LD   1, 3(5) ;  Load parameter 'accum' into R1
67 : LDA  7, 141(0) ;  Skip ELSE block
68 : LDA 4, 5(5) ; Base of callee frame
69 : LD   1, 2(5) ;  Load parameter 'n' into R1
70 : ST 1, 1(4) ; Store argument 0 in callee
71 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
72 : ST 1, 2(4) ; Store argument 1 in callee
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return in callee frame
75 : ADD 5, 4, 0 ; Push callee frame
76 : LDA 7, 144(0) ; Call MOD
77 : LD   1, 3(5) ;  Load function result
78 : LDC   2, 5(0) ;  Caller frame size
79 : SUB   5, 5, 2 ;  Pop back to caller
80 : SUB   4, 4, 2 ;  Pop back to caller
81 : ADD  3, 1, 0 ;  Store left operand into temporary register
82 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
83 : ADD  2, 3, 0 ;  Restore left operand
84 : SUB  1, 2, 1 ;  left - right for equality check
85 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
86 : LDC  1, 0(0) ;  false
87 : LDA  7, 1(7) ;  skip setting true
88 : LDC  1, 1(0) ;  true
89 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
90 : LDA 4, 5(5) ; Base of callee frame
91 : LD   1, 1(5) ;  Load parameter 'm' into R1
92 : ADD  3, 1, 0 ;  Store left operand into temporary register
93 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
94 : ADD  2, 3, 0 ;  Restore left operand
95 : MUL  1, 2, 1 ;  R1 = left * right
96 : ST 1, 1(4) ; Store argument 0 in callee
97 : LD   1, 2(5) ;  Load parameter 'n' into R1
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
100 : ADD  2, 3, 0 ;  Restore left operand
101 : DIV  1, 2, 1 ;  R1 = left / right
102 : ST 1, 2(4) ; Store argument 1 in callee
103 : LD   1, 3(5) ;  Load parameter 'accum' into R1
104 : ADD  3, 1, 0 ;  Store left operand into temporary register
105 : LD   1, 1(5) ;  Load parameter 'm' into R1
106 : ADD  2, 3, 0 ;  Restore left operand
107 : ADD  1, 2, 1 ;  R1 = left + right
108 : ST 1, 3(4) ; Store argument 2 in callee
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return in callee frame
111 : ADD 5, 4, 0 ; Push callee frame
112 : LDA 7, 56(0) ; Call multWithAccum
113 : LD   1, 4(5) ;  Load function result
114 : LDC   2, 5(0) ;  Caller frame size
115 : SUB   5, 5, 2 ;  Pop back to caller
116 : SUB   4, 4, 2 ;  Pop back to caller
117 : LDA  7, 141(0) ;  Skip ELSE block
118 : LDA 4, 5(5) ; Base of callee frame
119 : LD   1, 1(5) ;  Load parameter 'm' into R1
120 : ADD  3, 1, 0 ;  Store left operand into temporary register
121 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
122 : ADD  2, 3, 0 ;  Restore left operand
123 : MUL  1, 2, 1 ;  R1 = left * right
124 : ST 1, 1(4) ; Store argument 0 in callee
125 : LD   1, 2(5) ;  Load parameter 'n' into R1
126 : ADD  3, 1, 0 ;  Store left operand into temporary register
127 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
128 : ADD  2, 3, 0 ;  Restore left operand
129 : DIV  1, 2, 1 ;  R1 = left / right
130 : ST 1, 2(4) ; Store argument 1 in callee
131 : LD   1, 3(5) ;  Load parameter 'accum' into R1
132 : ST 1, 3(4) ; Store argument 2 in callee
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame
136 : LDA 7, 56(0) ; Call multWithAccum
137 : LD   1, 4(5) ;  Load function result
138 : LDC   2, 5(0) ;  Caller frame size
139 : SUB   5, 5, 2 ;  Pop back to caller
140 : SUB   4, 4, 2 ;  Pop back to caller
141 : ST   1, 4(5) ;  Store function result into stack frame
142 : LD   6, 0(5) ;  Load return address
143 : LDA  7, 0(6) ;  Return to caller
144 : LD   1, 1(5) ;  Load parameter 'm' into R1
145 : ADD  3, 1, 0 ;  Store left operand into temporary register
146 : LD   1, 1(5) ;  Load parameter 'm' into R1
147 : ADD  3, 1, 0 ;  Store left operand into temporary register
148 : LD   1, 2(5) ;  Load parameter 'n' into R1
149 : ADD  2, 3, 0 ;  Restore left operand
150 : DIV  1, 2, 1 ;  R1 = left / right
151 : ADD  3, 1, 0 ;  Store left operand into temporary register
152 : LD   1, 2(5) ;  Load parameter 'n' into R1
153 : ADD  2, 3, 0 ;  Restore left operand
154 : MUL  1, 2, 1 ;  R1 = left * right
155 : ADD  2, 3, 0 ;  Restore left operand
156 : SUB  1, 2, 1 ;  R1 = left - right
157 : ST   1, 3(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
