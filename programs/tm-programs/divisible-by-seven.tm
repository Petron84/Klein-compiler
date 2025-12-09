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
28 : LDA 7, 48(0) ; Call MOD
29 : LD   1, 3(5) ;  Load function result
30 : LDC   2, 4(0) ;  Caller frame size
31 : SUB   5, 5, 2 ;  Pop back to caller
32 : SUB   4, 4, 2 ;  Pop back to caller
33 : LDA 4, 4(5) ; Base of callee frame
34 : ST 1, 2(4) ; Store argument 1 in callee
35 : LDA 4, 4(5) ; Base of callee frame
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return in callee frame
38 : ADD 5, 4, 0 ; Push callee frame
39 : LDA 7, 141(0) ; Call divisibleByParts
40 : LD   1, 3(5) ;  Load function result
41 : LDC   2, 4(0) ;  Caller frame size
42 : SUB   5, 5, 2 ;  Pop back to caller
43 : SUB   4, 4, 2 ;  Pop back to caller
44 : ST 1, 2(5) ; Store result into caller’s frame
45 : LD   1, 2(5) ;  Load return value into register 1
46 : LD  6, 0(5) ;  Load return address for main function into register 6
47 : LDA  7, 0(6) ;  Jump to return address of main function
48 : LD   1, 1(5) ;  Load parameter 'm' into R1
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 1(5) ;  Load parameter 'm' into R1
51 : ADD  3, 1, 0 ;  Store left operand into temporary register
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : ADD  2, 3, 0 ;  Restore left operand
54 : DIV  1, 2, 1 ;  R1 = left / right
55 : ADD  3, 1, 0 ;  Store left operand into temporary register
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  2, 3, 0 ;  Restore left operand
58 : MUL  1, 2, 1 ;  R1 = left * right
59 : ADD  2, 3, 0 ;  Restore left operand
60 : SUB  1, 2, 1 ;  R1 = left - right
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LD   6, 0(5) ;  Load return address
63 : LDA  7, 0(6) ;  Return to caller
64 : LD   1, 1(5) ;  Load parameter 'diff' into R1
65 : ADD  3, 1, 0 ;  Store left operand into temporary register
66 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
67 : ADD  2, 3, 0 ;  Restore left operand
68 : SUB  1, 2, 1 ;  left - right for equality check
69 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
70 : LDC  1, 0(0) ;  false
71 : LDA  7, 1(7) ;  skip setting true
72 : LDC  1, 1(0) ;  true
73 : ADD  3, 1, 0 ;  Store left operand into temporary register
74 : LD   1, 1(5) ;  Load parameter 'diff' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : ADD  2, 3, 0 ;  Restore left operand
84 : ADD  1, 2, 1 ;  R1 = left OR right
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LD   1, 1(5) ;  Load parameter 'diff' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
89 : SUB  1, 0, 1 ;  Negate value in R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for equality check
92 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : ADD  2, 3, 0 ;  Restore left operand
97 : ADD  1, 2, 1 ;  R1 = left OR right
98 : ADD  3, 1, 0 ;  Store left operand into temporary register
99 : LD   1, 1(5) ;  Load parameter 'diff' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
102 : SUB  1, 0, 1 ;  Negate value in R1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : SUB  1, 2, 1 ;  left - right for equality check
105 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : ADD  2, 3, 0 ;  Restore left operand
110 : ADD  1, 2, 1 ;  R1 = left OR right
111 : JEQ  1, 114(0) ;  If condition is false, jump to ELSE
112 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
113 : LDA  7, 138(0) ;  Skip ELSE block
114 : LD   1, 1(5) ;  Load parameter 'diff' into R1
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : SUB  1, 2, 1 ;  left - right for less-than check
119 : JLT  1, 2(7) ;  If R1 < 0, jump to true
120 : LDC  1, 0(0) ;  false
121 : LDA  7, 1(7) ;  skip setting true
122 : LDC  1, 1(0) ;  true
123 : JEQ  1, 126(0) ;  If condition is false, jump to ELSE
124 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
125 : LDA  7, 138(0) ;  Skip ELSE block
126 : LD   1, 1(5) ;  Load parameter 'diff' into R1
127 : LDA 4, 3(5) ; Base of callee frame
128 : ST 1, 1(4) ; Store argument 0 in callee
129 : LDA 4, 3(5) ; Base of callee frame
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 11(0) ; Call main
134 : LD   1, 2(5) ;  Load function result
135 : LDC   2, 3(0) ;  Caller frame size
136 : SUB   5, 5, 2 ;  Pop back to caller
137 : SUB   4, 4, 2 ;  Pop back to caller
138 : ST   1, 2(5) ;  Store function result into stack frame
139 : LD   6, 0(5) ;  Load return address
140 : LDA  7, 0(6) ;  Return to caller
141 : LD   1, 1(5) ;  Load parameter 'left' into R1
142 : ADD  3, 1, 0 ;  Store left operand into temporary register
143 : LD   1, 2(5) ;  Load parameter 'right' into R1
144 : ADD  3, 1, 0 ;  Store left operand into temporary register
145 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
146 : ADD  2, 3, 0 ;  Restore left operand
147 : MUL  1, 2, 1 ;  R1 = left * right
148 : ADD  2, 3, 0 ;  Restore left operand
149 : SUB  1, 2, 1 ;  R1 = left - right
150 : LDA 4, 3(5) ; Base of callee frame
151 : ST 1, 1(4) ; Store argument 0 in callee
152 : LDA 4, 3(5) ; Base of callee frame
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame
156 : LDA 7, 64(0) ; Call divisibleByDifference
157 : LD   1, 2(5) ;  Load function result
158 : LDC   2, 3(0) ;  Caller frame size
159 : SUB   5, 5, 2 ;  Pop back to caller
160 : SUB   4, 4, 2 ;  Pop back to caller
161 : ST   1, 3(5) ;  Store function result into stack frame
162 : LD   6, 0(5) ;  Load return address
163 : LDA  7, 0(6) ;  Return to caller
