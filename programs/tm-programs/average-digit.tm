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
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ; Store argument 1 in callee
16 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
17 : ST 1, 3(4) ; Store argument 2 in callee
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 84(0) ; Call average_digit
22 : LD   1, 4(5) ;  Load function result
23 : LDC   2, 5(0) ;  Caller frame size
24 : SUB   5, 5, 2 ;  Pop back to caller
25 : SUB   4, 4, 2 ;  Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s frame
27 : LD   1, 2(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'm' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LD   1, 1(5) ;  Load parameter 'm' into R1
33 : ADD  3, 1, 0 ;  Store left operand into temporary register
34 : LD   1, 2(5) ;  Load parameter 'n' into R1
35 : ADD  2, 3, 0 ;  Restore left operand
36 : DIV  1, 2, 1 ;  R1 = left / right
37 : ADD  3, 1, 0 ;  Store left operand into temporary register
38 : LD   1, 2(5) ;  Load parameter 'n' into R1
39 : ADD  2, 3, 0 ;  Restore left operand
40 : MUL  1, 2, 1 ;  R1 = left * right
41 : ADD  2, 3, 0 ;  Restore left operand
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : ST   1, 3(5) ;  Store function result into stack frame
44 : LD   6, 0(5) ;  Load return address
45 : LDA  7, 0(6) ;  Return to caller
46 : LD   1, 1(5) ;  Load parameter 'sum' into R1
47 : ADD  3, 1, 0 ;  Store left operand into temporary register
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : ADD  2, 3, 0 ;  Restore left operand
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : LDA 4, 3(5) ; Base of callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return addr in callee frame
54 : ADD 5, 4, 0 ; Push new frame
55 : LDA 7, 8(0) ; Call print
56 : LDC 2, 3(0) ; Caller frame size
57 : SUB 5, 5, 2 ; Pop frame
58 : ST   1, 3(5) ;  Store function result into stack frame
59 : LDA 4, 4(5) ; Base of callee frame
60 : LD   1, 1(5) ;  Load parameter 'sum' into R1
61 : ST 1, 1(4) ; Store argument 0 in callee
62 : LD   1, 2(5) ;  Load parameter 'n' into R1
63 : ST 1, 2(4) ; Store argument 1 in callee
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame
67 : LDA 7, 30(0) ; Call MOD
68 : LD   1, 3(5) ;  Load function result
69 : LDC   2, 4(0) ;  Caller frame size
70 : SUB   5, 5, 2 ;  Pop back to caller
71 : SUB   4, 4, 2 ;  Pop back to caller
72 : LDA 4, 3(5) ; Base of callee frame
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return addr in callee frame
75 : ADD 5, 4, 0 ; Push new frame
76 : LDA 7, 8(0) ; Call print
77 : LDC 2, 3(0) ; Caller frame size
78 : SUB 5, 5, 2 ; Pop frame
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   1, 2(5) ;  Load parameter 'n' into R1
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'n' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for less-than check
89 : JLT  1, 2(7) ;  If R1 < 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 116(0) ;  If condition is false, jump to ELSE
94 : LDA 4, 4(5) ; Base of callee frame
95 : LD   1, 2(5) ;  Load parameter 'sum' into R1
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LD   1, 1(5) ;  Load parameter 'n' into R1
98 : ADD  2, 3, 0 ;  Restore left operand
99 : ADD  1, 2, 1 ;  R1 = left + right
100 : ST 1, 1(4) ; Store argument 0 in callee
101 : LD   1, 3(5) ;  Load parameter 'i' into R1
102 : ADD  3, 1, 0 ;  Store left operand into temporary register
103 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
104 : ADD  2, 3, 0 ;  Restore left operand
105 : ADD  1, 2, 1 ;  R1 = left + right
106 : ST 1, 2(4) ; Store argument 1 in callee
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame
110 : LDA 7, 46(0) ; Call print_and_return
111 : LD   1, 3(5) ;  Load function result
112 : LDC   2, 4(0) ;  Caller frame size
113 : SUB   5, 5, 2 ;  Pop back to caller
114 : SUB   4, 4, 2 ;  Pop back to caller
115 : LDA  7, 155(0) ;  Skip ELSE block
116 : LDA 4, 5(5) ; Base of callee frame
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : ADD  3, 1, 0 ;  Store left operand into temporary register
119 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
120 : ADD  2, 3, 0 ;  Restore left operand
121 : DIV  1, 2, 1 ;  R1 = left / right
122 : ST 1, 1(4) ; Store argument 0 in callee
123 : LD   1, 2(5) ;  Load parameter 'sum' into R1
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LDA 4, 4(5) ; Base of callee frame
126 : LD   1, 1(5) ;  Load parameter 'n' into R1
127 : ST 1, 1(4) ; Store argument 0 in callee
128 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
129 : ST 1, 2(4) ; Store argument 1 in callee
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return in callee frame
132 : ADD 5, 4, 0 ; Push callee frame
133 : LDA 7, 30(0) ; Call MOD
134 : LD   1, 3(5) ;  Load function result
135 : LDC   2, 4(0) ;  Caller frame size
136 : SUB   5, 5, 2 ;  Pop back to caller
137 : SUB   4, 4, 2 ;  Pop back to caller
138 : ADD  2, 3, 0 ;  Restore left operand
139 : ADD  1, 2, 1 ;  R1 = left + right
140 : ST 1, 2(4) ; Store argument 1 in callee
141 : LD   1, 3(5) ;  Load parameter 'i' into R1
142 : ADD  3, 1, 0 ;  Store left operand into temporary register
143 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
144 : ADD  2, 3, 0 ;  Restore left operand
145 : ADD  1, 2, 1 ;  R1 = left + right
146 : ST 1, 3(4) ; Store argument 2 in callee
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame
150 : LDA 7, 84(0) ; Call average_digit
151 : LD   1, 4(5) ;  Load function result
152 : LDC   2, 5(0) ;  Caller frame size
153 : SUB   5, 5, 2 ;  Pop back to caller
154 : SUB   4, 4, 2 ;  Pop back to caller
155 : ST   1, 4(5) ;  Store function result into stack frame
156 : LD   6, 0(5) ;  Load return address
157 : LDA  7, 0(6) ;  Return to caller
