0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 3(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ADD  3, 1, 0 ;  Store left operand into temporary register
14 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
15 : ADD  2, 3, 0 ;  Restore left operand
16 : DIV  1, 2, 1 ;  R1 = left / right
17 : ST 1, 1(4) ; Store argument 0 in callee
18 : LDA 4, 3(5) ; Base of callee frame
19 : LD   1, 1(5) ;  Load parameter 'n' into R1
20 : ST 1, 1(4) ; Store argument 0 in callee
21 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
22 : ST 1, 2(4) ; Store argument 1 in callee
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame
26 : LDA 7, 44(0) ; Call MOD
27 : LD   1, 3(5) ;  Load function result
28 : LDC   2, 3(0) ;  Caller frame size
29 : SUB   5, 5, 2 ;  Pop back to caller
30 : SUB   4, 4, 2 ;  Pop back to caller
31 : ST 1, 2(4) ; Store argument 1 in callee
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 136(0) ; Call divisibleByParts
36 : LD   1, 3(5) ;  Load function result
37 : LDC   2, 3(0) ;  Caller frame size
38 : SUB   5, 5, 2 ;  Pop back to caller
39 : SUB   4, 4, 2 ;  Pop back to caller
40 : ST 1, 2(5) ; Store result into caller’s frame
41 : LD   1, 2(5) ;  Load return value into register 1
42 : LD  6, 0(5) ;  Load return address for main function into register 6
43 : LDA  7, 0(6) ;  Jump to return address of main function
44 : LD   1, 1(5) ;  Load parameter 'm' into R1
45 : ADD  3, 1, 0 ;  Store left operand into temporary register
46 : LD   1, 1(5) ;  Load parameter 'm' into R1
47 : ADD  3, 1, 0 ;  Store left operand into temporary register
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ADD  2, 3, 0 ;  Restore left operand
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : ADD  2, 3, 0 ;  Restore left operand
54 : MUL  1, 2, 1 ;  R1 = left * right
55 : ADD  2, 3, 0 ;  Restore left operand
56 : SUB  1, 2, 1 ;  R1 = left - right
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LD   1, 1(5) ;  Load parameter 'diff' into R1
61 : ADD  3, 1, 0 ;  Store left operand into temporary register
62 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
63 : ADD  2, 3, 0 ;  Restore left operand
64 : SUB  1, 2, 1 ;  left - right for equality check
65 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LD   1, 1(5) ;  Load parameter 'diff' into R1
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
73 : ADD  2, 3, 0 ;  Restore left operand
74 : SUB  1, 2, 1 ;  left - right for equality check
75 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
76 : LDC  1, 0(0) ;  false
77 : LDA  7, 1(7) ;  skip setting true
78 : LDC  1, 1(0) ;  true
79 : ADD  2, 3, 0 ;  Restore left operand
80 : ADD  1, 2, 1 ;  R1 = left OR right
81 : ADD  3, 1, 0 ;  Store left operand into temporary register
82 : LD   1, 1(5) ;  Load parameter 'diff' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
85 : SUB  1, 0, 1 ;  Negate value in R1
86 : ADD  2, 3, 0 ;  Restore left operand
87 : SUB  1, 2, 1 ;  left - right for equality check
88 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
89 : LDC  1, 0(0) ;  false
90 : LDA  7, 1(7) ;  skip setting true
91 : LDC  1, 1(0) ;  true
92 : ADD  2, 3, 0 ;  Restore left operand
93 : ADD  1, 2, 1 ;  R1 = left OR right
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 1(5) ;  Load parameter 'diff' into R1
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
98 : SUB  1, 0, 1 ;  Negate value in R1
99 : ADD  2, 3, 0 ;  Restore left operand
100 : SUB  1, 2, 1 ;  left - right for equality check
101 : JEQ  1, 3(7) ;  If R1 == 0, jump to true
102 : LDC  1, 0(0) ;  false
103 : LDA  7, 1(7) ;  skip setting true
104 : LDC  1, 1(0) ;  true
105 : ADD  2, 3, 0 ;  Restore left operand
106 : ADD  1, 2, 1 ;  R1 = left OR right
107 : JEQ  1, 110(0) ;  If condition is false, jump to ELSE
108 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
109 : LDA  7, 133(0) ;  Skip ELSE block
110 : LD   1, 1(5) ;  Load parameter 'diff' into R1
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
113 : ADD  2, 3, 0 ;  Restore left operand
114 : SUB  1, 2, 1 ;  left - right for less-than check
115 : JLT  1, 3(7) ;  If R1 < 0, jump to true
116 : LDC  1, 0(0) ;  false
117 : LDA  7, 1(7) ;  skip setting true
118 : LDC  1, 1(0) ;  true
119 : JEQ  1, 122(0) ;  If condition is false, jump to ELSE
120 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
121 : LDA  7, 133(0) ;  Skip ELSE block
122 : LDA 4, 3(5) ; Base of callee frame
123 : LD   1, 1(5) ;  Load parameter 'diff' into R1
124 : ST 1, 1(4) ; Store argument 0 in callee
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return in callee frame
127 : ADD 5, 4, 0 ; Push callee frame
128 : LDA 7, 11(0) ; Call main
129 : LD   1, 2(5) ;  Load function result
130 : LDC   2, 3(0) ;  Caller frame size
131 : SUB   5, 5, 2 ;  Pop back to caller
132 : SUB   4, 4, 2 ;  Pop back to caller
133 : ST   1, 2(5) ;  Store function result into stack frame
134 : LD   6, 0(5) ;  Load return address
135 : LDA  7, 0(6) ;  Return to caller
136 : LDA 4, 4(5) ; Base of callee frame
137 : LD   1, 1(5) ;  Load parameter 'left' into R1
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LD   1, 2(5) ;  Load parameter 'right' into R1
140 : ADD  3, 1, 0 ;  Store left operand into temporary register
141 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
142 : ADD  2, 3, 0 ;  Restore left operand
143 : MUL  1, 2, 1 ;  R1 = left * right
144 : ADD  2, 3, 0 ;  Restore left operand
145 : SUB  1, 2, 1 ;  R1 = left - right
146 : ST 1, 1(4) ; Store argument 0 in callee
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame
150 : LDA 7, 60(0) ; Call divisibleByDifference
151 : LD   1, 2(5) ;  Load function result
152 : LDC   2, 4(0) ;  Caller frame size
153 : SUB   5, 5, 2 ;  Pop back to caller
154 : SUB   4, 4, 2 ;  Pop back to caller
155 : ST   1, 3(5) ;  Store function result into stack frame
156 : LD   6, 0(5) ;  Load return address
157 : LDA  7, 0(6) ;  Return to caller
