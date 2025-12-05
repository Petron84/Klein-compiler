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
12 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : DIV  1, 2, 1 ;  R1 = left / right
15 : LDA  3, 3(5) ; Restore Callee frame base
16 : ST 1, 1(3) ;  Store argument 0 into callee frame
17 : LD   1, 1(5) ;  Load parameter 'n' into R1
18 : LDA  3, 3(5) ; Restore Callee frame base
19 : ST 1, 1(3) ;  Store argument 0 into callee frame
20 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
21 : LDA  3, 3(5) ; Restore Callee frame base
22 : ST 1, 2(3) ;  Store argument 1 into callee frame
23 : LDA  3, 3(5) ; Restore Call frame base
24 : LDA 6, 28(0)) ;  Compute return address
25 : ST 6, 0(3) ;  Store return address in callee frame
26 : ADD  5, 3, 0 ;  Update pointer
27 : LDA 7, 45(0) ;  Call MOD
28 : LD 1, 3(5) ;  Load callee return value into R1
29 : LDC  4, 3(0) ;  Load frame size
30 : SUB  5, 5, 4 ;  Restore pointer
31 : LDA  3, 3(5) ; Restore Callee frame base
32 : ST 1, 2(3) ;  Store argument 1 into callee frame
33 : LDA  3, 3(5) ; Restore Call frame base
34 : LDA 6, 38(0)) ;  Compute return address
35 : ST 6, 0(3) ;  Store return address in callee frame
36 : ADD  5, 3, 0 ;  Update pointer
37 : LDA 7, 126(0) ;  Call divisibleByParts
38 : LD 1, 3(5) ;  Load callee return value into R1
39 : LDC  4, 3(0) ;  Load frame size
40 : SUB  5, 5, 4 ;  Restore pointer
41 : ST 1, 4(0) ;  Store function-call result into caller's return slot
42 : LD   1, 4(0) ;  Load return value into register 1
43 : LD  6, 2(0) ;  Load return address for main function into register 6
44 : LDA  7, 0(6) ;  Jump to return address of main function
45 : LD   1, 1(5) ;  Load parameter 'm' into R1
46 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
47 : LD   1, 1(5) ;  Load parameter 'm' into R1
48 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
49 : LD   1, 2(5) ;  Load parameter 'n' into R1
50 : DIV  1, 2, 1 ;  R1 = left / right
51 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
52 : LD   1, 2(5) ;  Load parameter 'n' into R1
53 : MUL  1, 2, 1 ;  R1 = left * right
54 : SUB  1, 2, 1 ;  R1 = left - right
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LD   1, 1(5) ;  Load parameter 'diff' into R1
59 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
60 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
61 : SUB  1, 2, 1 ;  left - right for equality check
62 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
63 : LDC  1, 0(0) ;  false
64 : LDA  7, 1(7) ;  skip setting true
65 : LDC  1, 1(0) ;  true
66 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
67 : LD   1, 1(5) ;  Load parameter 'diff' into R1
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
70 : SUB  1, 2, 1 ;  left - right for equality check
71 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : ADD  1, 2, 1 ;  R1 = left OR right
76 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
77 : LD   1, 1(5) ;  Load parameter 'diff' into R1
78 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
79 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
80 : SUB  1, 0, 1 ;  Negate value in R1
81 : SUB  1, 2, 1 ;  left - right for equality check
82 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
83 : LDC  1, 0(0) ;  false
84 : LDA  7, 1(7) ;  skip setting true
85 : LDC  1, 1(0) ;  true
86 : ADD  1, 2, 1 ;  R1 = left OR right
87 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
88 : LD   1, 1(5) ;  Load parameter 'diff' into R1
89 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
90 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
91 : SUB  1, 0, 1 ;  Negate value in R1
92 : SUB  1, 2, 1 ;  left - right for equality check
93 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
94 : LDC  1, 0(0) ;  false
95 : LDA  7, 1(7) ;  skip setting true
96 : LDC  1, 1(0) ;  true
97 : ADD  1, 2, 1 ;  R1 = left OR right
98 : JEQ  1, 101(0) ;  If condition is false, jump to ELSE
99 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
100 : LDA  7, 123(0) ;  Skip ELSE block
101 : LD   1, 1(5) ;  Load parameter 'diff' into R1
102 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
103 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
104 : SUB  1, 2, 1 ;  left - right for less-than check
105 : JLT  1, 2(7) ;  If R1 < 0, jump to true
106 : LDC  1, 0(0) ;  false
107 : LDA  7, 1(7) ;  skip setting true
108 : LDC  1, 1(0) ;  true
109 : JEQ  1, 112(0) ;  If condition is false, jump to ELSE
110 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
111 : LDA  7, 123(0) ;  Skip ELSE block
112 : LD   1, 1(5) ;  Load parameter 'diff' into R1
113 : LDA  3, 3(5) ; Restore Callee frame base
114 : ST 1, 1(3) ;  Store argument 0 into callee frame
115 : LDA  3, 3(5) ; Restore Call frame base
116 : LDA 6, 120(0)) ;  Compute return address
117 : ST 6, 0(3) ;  Store return address in callee frame
118 : ADD  5, 3, 0 ;  Update pointer
119 : LDA 7, 11(0) ;  Call main
120 : LD 1, 2(5) ;  Load callee return value into R1
121 : LDC  4, 3(0) ;  Load frame size
122 : SUB  5, 5, 4 ;  Restore pointer
123 : ST   1, 2(5) ;  Store function result into stack frame
124 : LD   6, 0(5) ;  Load return address
125 : LDA  7, 0(6) ;  Return to caller
126 : LD   1, 1(5) ;  Load parameter 'left' into R1
127 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
128 : LD   1, 2(5) ;  Load parameter 'right' into R1
129 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
130 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
131 : MUL  1, 2, 1 ;  R1 = left * right
132 : SUB  1, 2, 1 ;  R1 = left - right
133 : LDA  3, 4(5) ; Restore Callee frame base
134 : ST 1, 1(3) ;  Store argument 0 into callee frame
135 : LDA  3, 4(5) ; Restore Call frame base
136 : LDA 6, 140(0)) ;  Compute return address
137 : ST 6, 0(3) ;  Store return address in callee frame
138 : ADD  5, 3, 0 ;  Update pointer
139 : LDA 7, 58(0) ;  Call divisibleByDifference
140 : LD 1, 2(5) ;  Load callee return value into R1
141 : LDC  4, 4(0) ;  Load frame size
142 : SUB  5, 5, 4 ;  Restore pointer
143 : ST   1, 3(5) ;  Store function result into stack frame
144 : LD   6, 0(5) ;  Load return address
145 : LDA  7, 0(6) ;  Return to caller
