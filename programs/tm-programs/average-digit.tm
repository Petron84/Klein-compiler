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
13 : ST 1, 1(4) ; Argument 0
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ; Argument 1
16 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
17 : ST 1, 3(4) ; Argument 2
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame
21 : LDA 7, 82(0) ; Call average_digit
22 : LD 1, 4(5) ; Load function result
23 : LDC 2, 3(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop back to caller
25 : ST 1, 2(5) ; Store result into caller’s frame
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'm' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LD   1, 1(5) ;  Load parameter 'm' into R1
32 : ADD  3, 1, 0 ;  Store left operand into temporary register
33 : LD   1, 2(5) ;  Load parameter 'n' into R1
34 : ADD  2, 3, 0 ;  Restore left operand
35 : DIV  1, 2, 1 ;  R1 = left / right
36 : ADD  3, 1, 0 ;  Store left operand into temporary register
37 : LD   1, 2(5) ;  Load parameter 'n' into R1
38 : ADD  2, 3, 0 ;  Restore left operand
39 : MUL  1, 2, 1 ;  R1 = left * right
40 : ADD  2, 3, 0 ;  Restore left operand
41 : SUB  1, 2, 1 ;  R1 = left - right
42 : ST   1, 3(5) ;  Store function result into stack frame
43 : LD   6, 0(5) ;  Load return address
44 : LDA  7, 0(6) ;  Return to caller
45 : LD   1, 1(5) ;  Load parameter 'sum' into R1
46 : ADD  3, 1, 0 ;  Store left operand into temporary register
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : ADD  2, 3, 0 ;  Restore left operand
49 : DIV  1, 2, 1 ;  R1 = left / right
50 : LDA 4, 4(5) ; Base of callee frame
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return addr in callee frame
53 : ADD 5, 4, 0 ; Push new frame
54 : LDA 7, 8(0) ; Call print
55 : LDC 2, 4(0) ; Caller frame size
56 : SUB 5, 5, 2 ; Pop frame
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LDA 4, 4(5) ; Base of callee frame
59 : LD   1, 1(5) ;  Load parameter 'sum' into R1
60 : ST 1, 1(4) ; Argument 0
61 : LD   1, 2(5) ;  Load parameter 'n' into R1
62 : ST 1, 2(4) ; Argument 1
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 29(0) ; Call MOD
67 : LD 1, 3(5) ; Load function result
68 : LDC 2, 4(0) ; Caller frame size
69 : SUB 5, 5, 2 ; Pop back to caller
70 : LDA 4, 4(5) ; Base of callee frame
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return addr in callee frame
73 : ADD 5, 4, 0 ; Push new frame
74 : LDA 7, 8(0) ; Call print
75 : LDC 2, 4(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop frame
77 : ST   1, 3(5) ;  Store function result into stack frame
78 : LD   1, 2(5) ;  Load parameter 'n' into R1
79 : ST   1, 3(5) ;  Store function result into stack frame
80 : LD   6, 0(5) ;  Load return address
81 : LDA  7, 0(6) ;  Return to caller
82 : LD   1, 1(5) ;  Load parameter 'n' into R1
83 : ADD  3, 1, 0 ;  Store left operand into temporary register
84 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  Restore left operand
86 : SUB  1, 2, 1 ;  left - right for less-than check
87 : JLT  1, 2(7) ;  If R1 < 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 113(0) ;  If condition is false, jump to ELSE
92 : LDA 4, 5(5) ; Base of callee frame
93 : LD   1, 2(5) ;  Load parameter 'sum' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LD   1, 1(5) ;  Load parameter 'n' into R1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : ADD  1, 2, 1 ;  R1 = left + right
98 : ST 1, 1(4) ; Argument 0
99 : LD   1, 3(5) ;  Load parameter 'i' into R1
100 : ADD  3, 1, 0 ;  Store left operand into temporary register
101 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  Restore left operand
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : ST 1, 2(4) ; Argument 1
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame
108 : LDA 7, 45(0) ; Call print_and_return
109 : LD 1, 3(5) ; Load function result
110 : LDC 2, 5(0) ; Caller frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : LDA  7, 150(0) ;  Skip ELSE block
113 : LDA 4, 5(5) ; Base of callee frame
114 : LD   1, 1(5) ;  Load parameter 'n' into R1
115 : ADD  3, 1, 0 ;  Store left operand into temporary register
116 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
117 : ADD  2, 3, 0 ;  Restore left operand
118 : DIV  1, 2, 1 ;  R1 = left / right
119 : ST 1, 1(4) ; Argument 0
120 : LD   1, 2(5) ;  Load parameter 'sum' into R1
121 : ADD  3, 1, 0 ;  Store left operand into temporary register
122 : LDA 4, 5(5) ; Base of callee frame
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ST 1, 1(4) ; Argument 0
125 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
126 : ST 1, 2(4) ; Argument 1
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame
130 : LDA 7, 29(0) ; Call MOD
131 : LD 1, 3(5) ; Load function result
132 : LDC 2, 5(0) ; Caller frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : ADD  2, 3, 0 ;  Restore left operand
135 : ADD  1, 2, 1 ;  R1 = left + right
136 : ST 1, 2(4) ; Argument 1
137 : LD   1, 3(5) ;  Load parameter 'i' into R1
138 : ADD  3, 1, 0 ;  Store left operand into temporary register
139 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
140 : ADD  2, 3, 0 ;  Restore left operand
141 : ADD  1, 2, 1 ;  R1 = left + right
142 : ST 1, 3(4) ; Argument 2
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return in callee frame
145 : ADD 5, 4, 0 ; Push callee frame
146 : LDA 7, 82(0) ; Call average_digit
147 : LD 1, 4(5) ; Load function result
148 : LDC 2, 5(0) ; Caller frame size
149 : SUB 5, 5, 2 ; Pop back to caller
150 : ST   1, 4(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
