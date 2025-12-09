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
18 : LDA  4, 3(4) ;  Push additional call frame for nested function calls
19 : LDA 4, 3(5) ; Base of callee frame
20 : LD   1, 1(5) ;  Load parameter 'n' into R1
21 : ST 1, 1(4) ; Argument 0
22 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
23 : ST 1, 2(4) ; Argument 1
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return in callee frame
26 : ADD 5, 4, 0 ; Push callee frame
27 : LDA 7, 43(0) ; Call MOD
28 : LD 1, 3(5) ; Load function result
29 : LDC 2, 3(0) ; Caller frame size
30 : SUB 5, 5, 2 ; Pop back to caller
31 : ST 1, 2(4) ; Argument 1
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame
35 : LDA 7, 134(0) ; Call divisibleByParts
36 : LD 1, 3(5) ; Load function result
37 : LDC 2, 3(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 2(5) ; Store result into caller’s frame
40 : LD   1, 2(5) ;  Load return value into register 1
41 : LD  6, 0(5) ;  Load return address for main function into register 6
42 : LDA  7, 0(6) ;  Jump to return address of main function
43 : LD   1, 1(5) ;  Load parameter 'm' into R1
44 : ADD  3, 1, 0 ;  Store left operand into temporary register
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ADD  3, 1, 0 ;  Store left operand into temporary register
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ADD  2, 3, 0 ;  Restore left operand
49 : DIV  1, 2, 1 ;  R1 = left / right
50 : ADD  3, 1, 0 ;  Store left operand into temporary register
51 : LD   1, 2(5) ;  Load parameter 'n' into R1
52 : ADD  2, 3, 0 ;  Restore left operand
53 : MUL  1, 2, 1 ;  R1 = left * right
54 : ADD  2, 3, 0 ;  Restore left operand
55 : SUB  1, 2, 1 ;  R1 = left - right
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   6, 0(5) ;  Load return address
58 : LDA  7, 0(6) ;  Return to caller
59 : LD   1, 1(5) ;  Load parameter 'diff' into R1
60 : ADD  3, 1, 0 ;  Store left operand into temporary register
61 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
62 : ADD  2, 3, 0 ;  Restore left operand
63 : SUB  1, 2, 1 ;  left - right for equality check
64 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : ADD  3, 1, 0 ;  Store left operand into temporary register
69 : LD   1, 1(5) ;  Load parameter 'diff' into R1
70 : ADD  3, 1, 0 ;  Store left operand into temporary register
71 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
72 : ADD  2, 3, 0 ;  Restore left operand
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ADD  2, 3, 0 ;  Restore left operand
79 : ADD  1, 2, 1 ;  R1 = left OR right
80 : ADD  3, 1, 0 ;  Store left operand into temporary register
81 : LD   1, 1(5) ;  Load parameter 'diff' into R1
82 : ADD  3, 1, 0 ;  Store left operand into temporary register
83 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
84 : SUB  1, 0, 1 ;  Negate value in R1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : SUB  1, 2, 1 ;  left - right for equality check
87 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : ADD  2, 3, 0 ;  Restore left operand
92 : ADD  1, 2, 1 ;  R1 = left OR right
93 : ADD  3, 1, 0 ;  Store left operand into temporary register
94 : LD   1, 1(5) ;  Load parameter 'diff' into R1
95 : ADD  3, 1, 0 ;  Store left operand into temporary register
96 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
97 : SUB  1, 0, 1 ;  Negate value in R1
98 : ADD  2, 3, 0 ;  Restore left operand
99 : SUB  1, 2, 1 ;  left - right for equality check
100 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
101 : LDC  1, 0(0) ;  false
102 : LDA  7, 1(7) ;  skip setting true
103 : LDC  1, 1(0) ;  true
104 : ADD  2, 3, 0 ;  Restore left operand
105 : ADD  1, 2, 1 ;  R1 = left OR right
106 : JEQ  1, 109(0) ;  If condition is false, jump to ELSE
107 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
108 : LDA  7, 131(0) ;  Skip ELSE block
109 : LD   1, 1(5) ;  Load parameter 'diff' into R1
110 : ADD  3, 1, 0 ;  Store left operand into temporary register
111 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
112 : ADD  2, 3, 0 ;  Restore left operand
113 : SUB  1, 2, 1 ;  left - right for less-than check
114 : JLT  1, 2(7) ;  If R1 < 0, jump to true
115 : LDC  1, 0(0) ;  false
116 : LDA  7, 1(7) ;  skip setting true
117 : LDC  1, 1(0) ;  true
118 : JEQ  1, 121(0) ;  If condition is false, jump to ELSE
119 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
120 : LDA  7, 131(0) ;  Skip ELSE block
121 : LDA 4, 3(5) ; Base of callee frame
122 : LD   1, 1(5) ;  Load parameter 'diff' into R1
123 : ST 1, 1(4) ; Argument 0
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame
127 : LDA 7, 11(0) ; Call main
128 : LD 1, 2(5) ; Load function result
129 : LDC 2, 3(0) ; Caller frame size
130 : SUB 5, 5, 2 ; Pop back to caller
131 : ST   1, 2(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDA 4, 4(5) ; Base of callee frame
135 : LD   1, 1(5) ;  Load parameter 'left' into R1
136 : ADD  3, 1, 0 ;  Store left operand into temporary register
137 : LD   1, 2(5) ;  Load parameter 'right' into R1
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
140 : ADD  2, 3, 0 ;  Restore left operand
141 : MUL  1, 2, 1 ;  R1 = left * right
142 : ADD  2, 3, 0 ;  Restore left operand
143 : SUB  1, 2, 1 ;  R1 = left - right
144 : ST 1, 1(4) ; Argument 0
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame
148 : LDA 7, 59(0) ; Call divisibleByDifference
149 : LD 1, 2(5) ; Load function result
150 : LDC 2, 4(0) ; Caller frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : ST   1, 3(5) ;  Store function result into stack frame
153 : LD   6, 0(5) ;  Load return address
154 : LDA  7, 0(6) ;  Return to caller
