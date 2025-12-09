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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ADD  3, 1, 0 ;  Store left operand into temporary register
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ADD  2, 3, 0 ;  Restore left operand
15 : DIV  1, 2, 1 ;  R1 = left / right
16 : LDA 4, 4(5) ; Base of callee frame
17 : ST 1, 1(4) ; Store argument 0 in callee
18 : LD   1, 1(5) ;  Load parameter 'n' into R1
19 : LDA 4, 4(5) ; Base of callee frame
20 : ST 1, 1(4) ; Store argument 0 in callee
21 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
22 : LDA 4, 4(5) ; Base of callee frame
23 : ST 1, 2(4) ; Store argument 1 in callee
24 : LDA 4, 4(5) ; Base of callee frame
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame
28 : LDA 7, 46(0) ; Call MOD
29 : LD   1, 3(5) ;  Load function result
30 : LDC   2, 4(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : LDA 4, 4(5) ; Base of callee frame
33 : ST 1, 2(4) ; Store argument 1 in callee
34 : LDA 4, 4(5) ; Base of callee frame
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame
38 : LDA 7, 138(0) ; Call divisibleByParts
39 : LD   1, 3(5) ;  Load function result
40 : LDC   2, 4(0) ;  Caller frame size
41 : SUB   5, 5, 2 ;  Pop back to caller
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD   1, 2(5) ;  Load return value into register 1
44 : LD  6, 0(5) ;  Load return address for main function into register 6
45 : LDA  7, 0(6) ;  Jump to return address of main function
46 : LD   1, 1(5) ;  Load parameter 'm' into R1
47 : ADD  3, 1, 0 ;  Store left operand into temporary register
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : ADD  3, 1, 0 ;  Store left operand into temporary register
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  2, 3, 0 ;  Restore left operand
56 : MUL  1, 2, 1 ;  R1 = left * right
57 : ADD  2, 3, 0 ;  Restore left operand
58 : SUB  1, 2, 1 ;  R1 = left - right
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LD   1, 1(5) ;  Load parameter 'diff' into R1
63 : ADD  3, 1, 0 ;  Store left operand into temporary register
64 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
65 : ADD  2, 3, 0 ;  Restore left operand
66 : SUB  1, 2, 1 ;  left - right for equality check
67 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
68 : LDC  1, 0(0) ;  false
69 : LDA  7, 1(7) ;  skip setting true
70 : LDC  1, 1(0) ;  true
71 : ADD  3, 1, 0 ;  Store left operand into temporary register
72 : LD   1, 1(5) ;  Load parameter 'diff' into R1
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
75 : ADD  2, 3, 0 ;  Restore left operand
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ADD  2, 3, 0 ;  Restore left operand
82 : ADD  1, 2, 1 ;  R1 = left OR right
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LD   1, 1(5) ;  Load parameter 'diff' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
87 : SUB  1, 0, 1 ;  Negate value in R1
88 : ADD  2, 3, 0 ;  Restore left operand
89 : SUB  1, 2, 1 ;  left - right for equality check
90 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
91 : LDC  1, 0(0) ;  false
92 : LDA  7, 1(7) ;  skip setting true
93 : LDC  1, 1(0) ;  true
94 : ADD  2, 3, 0 ;  Restore left operand
95 : ADD  1, 2, 1 ;  R1 = left OR right
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LD   1, 1(5) ;  Load parameter 'diff' into R1
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
100 : SUB  1, 0, 1 ;  Negate value in R1
101 : ADD  2, 3, 0 ;  Restore left operand
102 : SUB  1, 2, 1 ;  left - right for equality check
103 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
104 : LDC  1, 0(0) ;  false
105 : LDA  7, 1(7) ;  skip setting true
106 : LDC  1, 1(0) ;  true
107 : ADD  2, 3, 0 ;  Restore left operand
108 : ADD  1, 2, 1 ;  R1 = left OR right
109 : JEQ  1, 112(0) ;  If condition is false, jump to ELSE
110 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
111 : LDA  7, 135(0) ;  Skip ELSE block
112 : LD   1, 1(5) ;  Load parameter 'diff' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : SUB  1, 2, 1 ;  left - right for less-than check
117 : JLT  1, 2(7) ;  If R1 < 0, jump to true
118 : LDC  1, 0(0) ;  false
119 : LDA  7, 1(7) ;  skip setting true
120 : LDC  1, 1(0) ;  true
121 : JEQ  1, 124(0) ;  If condition is false, jump to ELSE
122 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
123 : LDA  7, 135(0) ;  Skip ELSE block
124 : LD   1, 1(5) ;  Load parameter 'diff' into R1
125 : LDA 4, 3(5) ; Base of callee frame
126 : ST 1, 1(4) ; Store argument 0 in callee
127 : LDA 4, 3(5) ; Base of callee frame
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame
131 : LDA 7, 11(0) ; Call main
132 : LD   1, 2(5) ;  Load function result
133 : LDC   2, 3(0) ;  Caller frame size
134 : SUB   5, 5, 2 ;  Pop back to caller
135 : ST   1, 2(5) ;  Store function result into stack frame
136 : LD   6, 0(5) ;  Load return address
137 : LDA  7, 0(6) ;  Return to caller
138 : LD   1, 1(5) ;  Load parameter 'left' into R1
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LD   1, 2(5) ;  Load parameter 'right' into R1
141 : ADD  3, 1, 0 ;  Store left operand into temporary register
142 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
143 : ADD  2, 3, 0 ;  Restore left operand
144 : MUL  1, 2, 1 ;  R1 = left * right
145 : ADD  2, 3, 0 ;  Restore left operand
146 : SUB  1, 2, 1 ;  R1 = left - right
147 : LDA 4, 3(5) ; Base of callee frame
148 : ST 1, 1(4) ; Store argument 0 in callee
149 : LDA 4, 3(5) ; Base of callee frame
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame
153 : LDA 7, 62(0) ; Call divisibleByDifference
154 : LD   1, 2(5) ;  Load function result
155 : LDC   2, 3(0) ;  Caller frame size
156 : SUB   5, 5, 2 ;  Pop back to caller
157 : ST   1, 3(5) ;  Store function result into stack frame
158 : LD   6, 0(5) ;  Load return address
159 : LDA  7, 0(6) ;  Return to caller
