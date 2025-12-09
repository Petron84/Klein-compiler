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
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ADD  3, 1, 0 ;  Store left operand into temporary register
14 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
15 : ADD  2, 3, 0 ;  Restore left operand
16 : DIV  1, 2, 1 ;  R1 = left / right
17 : ST 1, 1(4) ; Argument 0
18 : LDA 4, 3(5) ; Base of callee frame
19 : LD   1, 1(5) ;  Load parameter 'n' into R1
20 : ST 1, 1(4) ; Argument 0
21 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
22 : ST 1, 2(4) ; Argument 1
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame
26 : LDA 7, 42(0) ; Call MOD
27 : LD 1, 3(5) ; Load function result
28 : LDC 2, 3(0) ; Caller frame size
29 : SUB 5, 5, 2 ; Pop back to caller
30 : ST 1, 2(4) ; Argument 1
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame
34 : LDA 7, 133(0) ; Call divisibleByParts
35 : LD 1, 3(5) ; Load function result
36 : LDC 2, 3(0) ; Caller frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 2(5) ; Store result into caller’s frame
39 : LD   1, 2(5) ;  Load return value into register 1
40 : LD  6, 0(5) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
42 : LD   1, 1(5) ;  Load parameter 'm' into R1
43 : ADD  3, 1, 0 ;  Store left operand into temporary register
44 : LD   1, 1(5) ;  Load parameter 'm' into R1
45 : ADD  3, 1, 0 ;  Store left operand into temporary register
46 : LD   1, 2(5) ;  Load parameter 'n' into R1
47 : ADD  2, 3, 0 ;  Restore left operand
48 : DIV  1, 2, 1 ;  R1 = left / right
49 : ADD  3, 1, 0 ;  Store left operand into temporary register
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : ADD  2, 3, 0 ;  Restore left operand
52 : MUL  1, 2, 1 ;  R1 = left * right
53 : ADD  2, 3, 0 ;  Restore left operand
54 : SUB  1, 2, 1 ;  R1 = left - right
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LD   1, 1(5) ;  Load parameter 'diff' into R1
59 : ADD  3, 1, 0 ;  Store left operand into temporary register
60 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
61 : ADD  2, 3, 0 ;  Restore left operand
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 1(5) ;  Load parameter 'diff' into R1
69 : ADD  3, 1, 0 ;  Store left operand into temporary register
70 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
71 : ADD  2, 3, 0 ;  Restore left operand
72 : SUB  1, 2, 1 ;  left - right for equality check
73 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  2, 3, 0 ;  Restore left operand
78 : ADD  1, 2, 1 ;  R1 = left OR right
79 : ADD  3, 1, 0 ;  Store left operand into temporary register
80 : LD   1, 1(5) ;  Load parameter 'diff' into R1
81 : ADD  3, 1, 0 ;  Store left operand into temporary register
82 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
83 : SUB  1, 0, 1 ;  Negate value in R1
84 : ADD  2, 3, 0 ;  Restore left operand
85 : SUB  1, 2, 1 ;  left - right for equality check
86 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
87 : LDC  1, 0(0) ;  false
88 : LDA  7, 1(7) ;  skip setting true
89 : LDC  1, 1(0) ;  true
90 : ADD  2, 3, 0 ;  Restore left operand
91 : ADD  1, 2, 1 ;  R1 = left OR right
92 : ADD  3, 1, 0 ;  Store left operand into temporary register
93 : LD   1, 1(5) ;  Load parameter 'diff' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
96 : SUB  1, 0, 1 ;  Negate value in R1
97 : ADD  2, 3, 0 ;  Restore left operand
98 : SUB  1, 2, 1 ;  left - right for equality check
99 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : ADD  2, 3, 0 ;  Restore left operand
104 : ADD  1, 2, 1 ;  R1 = left OR right
105 : JEQ  1, 108(0) ;  If condition is false, jump to ELSE
106 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
107 : LDA  7, 130(0) ;  Skip ELSE block
108 : LD   1, 1(5) ;  Load parameter 'diff' into R1
109 : ADD  3, 1, 0 ;  Store left operand into temporary register
110 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
111 : ADD  2, 3, 0 ;  Restore left operand
112 : SUB  1, 2, 1 ;  left - right for less-than check
113 : JLT  1, 2(7) ;  If R1 < 0, jump to true
114 : LDC  1, 0(0) ;  false
115 : LDA  7, 1(7) ;  skip setting true
116 : LDC  1, 1(0) ;  true
117 : JEQ  1, 120(0) ;  If condition is false, jump to ELSE
118 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
119 : LDA  7, 130(0) ;  Skip ELSE block
120 : LDA 4, 3(5) ; Base of callee frame
121 : LD   1, 1(5) ;  Load parameter 'diff' into R1
122 : ST 1, 1(4) ; Argument 0
123 : LDA 6, 127(0) ; Return address
124 : ST 6, 0(4) ; Store return in callee frame
125 : ADD 5, 4, 0 ; Push callee frame
126 : LDA 7, 11(0) ; Call main
127 : LD 1, 2(5) ; Load function result
128 : LDC 2, 3(0) ; Caller frame size
129 : SUB 5, 5, 2 ; Pop back to caller
130 : ST   1, 2(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
133 : LDA 4, 4(5) ; Base of callee frame
134 : LD   1, 1(5) ;  Load parameter 'left' into R1
135 : ADD  3, 1, 0 ;  Store left operand into temporary register
136 : LD   1, 2(5) ;  Load parameter 'right' into R1
137 : ADD  3, 1, 0 ;  Store left operand into temporary register
138 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
139 : ADD  2, 3, 0 ;  Restore left operand
140 : MUL  1, 2, 1 ;  R1 = left * right
141 : ADD  2, 3, 0 ;  Restore left operand
142 : SUB  1, 2, 1 ;  R1 = left - right
143 : ST 1, 1(4) ; Argument 0
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame
147 : LDA 7, 58(0) ; Call divisibleByDifference
148 : LD 1, 2(5) ; Load function result
149 : LDC 2, 4(0) ; Caller frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : ST   1, 3(5) ;  Store function result into stack frame
152 : LD   6, 0(5) ;  Load return address
153 : LDA  7, 0(6) ;  Return to caller
