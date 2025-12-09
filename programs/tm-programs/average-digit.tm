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
12 : LDA 4, 5(5) ; Base of callee frame
13 : ST 1, 1(4) ; Store argument 0 in callee
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : LDA 4, 5(5) ; Base of callee frame
16 : ST 1, 2(4) ; Store argument 1 in callee
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : LDA 4, 5(5) ; Base of callee frame
19 : ST 1, 3(4) ; Store argument 2 in callee
20 : LDA 4, 5(5) ; Base of callee frame
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame
24 : LDA 7, 89(0) ; Call average_digit
25 : LD   1, 4(5) ;  Load function result
26 : LDC   2, 5(0) ;  Caller frame size
27 : SUB   5, 5, 2 ;  Pop back to caller
28 : SUB   4, 4, 2 ;  Pop back to caller
29 : ST 1, 2(5) ; Store result into caller’s frame
30 : LD   1, 2(5) ;  Load return value into register 1
31 : LD  6, 0(5) ;  Load return address for main function into register 6
32 : LDA  7, 0(6) ;  Jump to return address of main function
33 : LD   1, 1(5) ;  Load parameter 'm' into R1
34 : ADD  3, 1, 0 ;  Store left operand into temporary register
35 : LD   1, 1(5) ;  Load parameter 'm' into R1
36 : ADD  3, 1, 0 ;  Store left operand into temporary register
37 : LD   1, 2(5) ;  Load parameter 'n' into R1
38 : ADD  2, 3, 0 ;  Restore left operand
39 : DIV  1, 2, 1 ;  R1 = left / right
40 : ADD  3, 1, 0 ;  Store left operand into temporary register
41 : LD   1, 2(5) ;  Load parameter 'n' into R1
42 : ADD  2, 3, 0 ;  Restore left operand
43 : MUL  1, 2, 1 ;  R1 = left * right
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : ST   1, 3(5) ;  Store function result into stack frame
47 : LD   6, 0(5) ;  Load return address
48 : LDA  7, 0(6) ;  Return to caller
49 : LD   1, 1(5) ;  Load parameter 'sum' into R1
50 : ADD  3, 1, 0 ;  Store left operand into temporary register
51 : LD   1, 2(5) ;  Load parameter 'n' into R1
52 : ADD  2, 3, 0 ;  Restore left operand
53 : DIV  1, 2, 1 ;  R1 = left / right
54 : LDA 4, 3(5) ; Base of callee frame
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return addr in callee frame
57 : ADD 5, 4, 0 ; Push new frame
58 : LDA 7, 8(0) ; Call print
59 : LDC 2, 3(0) ; Caller frame size
60 : SUB 5, 5, 2 ; Pop frame
61 : ST   1, 3(5) ;  Store function result into stack frame
62 : LD   1, 1(5) ;  Load parameter 'sum' into R1
63 : LDA 4, 4(5) ; Base of callee frame
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LD   1, 2(5) ;  Load parameter 'n' into R1
66 : LDA 4, 4(5) ; Base of callee frame
67 : ST 1, 2(4) ; Store argument 1 in callee
68 : LDA 4, 4(5) ; Base of callee frame
69 : LDA 6, 73(0) ; Return address
70 : ST 6, 0(4) ; Store return in callee frame
71 : ADD 5, 4, 0 ; Push callee frame
72 : LDA 7, 33(0) ; Call MOD
73 : LD   1, 3(5) ;  Load function result
74 : LDC   2, 4(0) ;  Caller frame size
75 : SUB   5, 5, 2 ;  Pop back to caller
76 : SUB   4, 4, 2 ;  Pop back to caller
77 : LDA 4, 3(5) ; Base of callee frame
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(4) ; Store return addr in callee frame
80 : ADD 5, 4, 0 ; Push new frame
81 : LDA 7, 8(0) ; Call print
82 : LDC 2, 3(0) ; Caller frame size
83 : SUB 5, 5, 2 ; Pop frame
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   1, 2(5) ;  Load parameter 'n' into R1
86 : ST   1, 3(5) ;  Store function result into stack frame
87 : LD   6, 0(5) ;  Load return address
88 : LDA  7, 0(6) ;  Return to caller
89 : LD   1, 1(5) ;  Load parameter 'n' into R1
90 : ADD  3, 1, 0 ;  Store left operand into temporary register
91 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
92 : ADD  2, 3, 0 ;  Restore left operand
93 : SUB  1, 2, 1 ;  left - right for less-than check
94 : JLT  1, 2(7) ;  If R1 < 0, jump to true
95 : LDC  1, 0(0) ;  false
96 : LDA  7, 1(7) ;  skip setting true
97 : LDC  1, 1(0) ;  true
98 : JEQ  1, 123(0) ;  If condition is false, jump to ELSE
99 : LD   1, 2(5) ;  Load parameter 'sum' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LD   1, 1(5) ;  Load parameter 'n' into R1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : LDA 4, 4(5) ; Base of callee frame
105 : ST 1, 1(4) ; Store argument 0 in callee
106 : LD   1, 3(5) ;  Load parameter 'i' into R1
107 : ADD  3, 1, 0 ;  Store left operand into temporary register
108 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
109 : ADD  2, 3, 0 ;  Restore left operand
110 : ADD  1, 2, 1 ;  R1 = left + right
111 : LDA 4, 4(5) ; Base of callee frame
112 : ST 1, 2(4) ; Store argument 1 in callee
113 : LDA 4, 4(5) ; Base of callee frame
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return in callee frame
116 : ADD 5, 4, 0 ; Push callee frame
117 : LDA 7, 49(0) ; Call print_and_return
118 : LD   1, 3(5) ;  Load function result
119 : LDC   2, 4(0) ;  Caller frame size
120 : SUB   5, 5, 2 ;  Pop back to caller
121 : SUB   4, 4, 2 ;  Pop back to caller
122 : LDA  7, 167(0) ;  Skip ELSE block
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
126 : ADD  2, 3, 0 ;  Restore left operand
127 : DIV  1, 2, 1 ;  R1 = left / right
128 : LDA 4, 5(5) ; Base of callee frame
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LD   1, 2(5) ;  Load parameter 'sum' into R1
131 : ADD  3, 1, 0 ;  Store left operand into temporary register
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : LDA 4, 4(5) ; Base of callee frame
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
136 : LDA 4, 4(5) ; Base of callee frame
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 4, 4(5) ; Base of callee frame
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame
142 : LDA 7, 33(0) ; Call MOD
143 : LD   1, 3(5) ;  Load function result
144 : LDC   2, 4(0) ;  Caller frame size
145 : SUB   5, 5, 2 ;  Pop back to caller
146 : SUB   4, 4, 2 ;  Pop back to caller
147 : ADD  2, 3, 0 ;  Restore left operand
148 : ADD  1, 2, 1 ;  R1 = left + right
149 : LDA 4, 5(5) ; Base of callee frame
150 : ST 1, 2(4) ; Store argument 1 in callee
151 : LD   1, 3(5) ;  Load parameter 'i' into R1
152 : ADD  3, 1, 0 ;  Store left operand into temporary register
153 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
154 : ADD  2, 3, 0 ;  Restore left operand
155 : ADD  1, 2, 1 ;  R1 = left + right
156 : LDA 4, 5(5) ; Base of callee frame
157 : ST 1, 3(4) ; Store argument 2 in callee
158 : LDA 4, 5(5) ; Base of callee frame
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return in callee frame
161 : ADD 5, 4, 0 ; Push callee frame
162 : LDA 7, 89(0) ; Call average_digit
163 : LD   1, 4(5) ;  Load function result
164 : LDC   2, 5(0) ;  Caller frame size
165 : SUB   5, 5, 2 ;  Pop back to caller
166 : SUB   4, 4, 2 ;  Pop back to caller
167 : ST   1, 4(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
