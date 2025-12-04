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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'divisibleByParts'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
14 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
15 : DIV  1, 2, 1 ;  R1 = left / right
16 : ST 1, 1(3) ;  Store argument 0 into callee frame
17 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'MOD'
18 : LD   1, 1(5) ;  Load parameter 'n' into R1
19 : ST 1, 1(3) ;  Store argument 0 into callee frame
20 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
21 : ST 1, 2(3) ;  Store argument 1 into callee frame
22 : LDA 6, 26(0)) ;  Compute return address
23 : ST 6, 0(3) ;  Store return address in callee frame
24 : ADD  5, 3, 0 ;  Update pointer
25 : LDA 7, 41(0) ;  Call MOD
26 : LD 1, 3(5) ;  Load callee return value into R1
27 : LDC  4, 3(0) ;  Load frame size
28 : SUB  5, 5, 4 ;  Restore pointer
29 : ST 1, 2(3) ;  Store argument 1 into callee frame
30 : LDA 6, 34(0)) ;  Compute return address
31 : ST 6, 0(3) ;  Store return address in callee frame
32 : ADD  5, 3, 0 ;  Update pointer
33 : LDA 7, 121(0) ;  Call divisibleByParts
34 : LD 1, 3(5) ;  Load callee return value into R1
35 : LDC  4, 3(0) ;  Load frame size
36 : SUB  5, 5, 4 ;  Restore pointer
37 : ST 1, 4(0) ;  Store function-call result into caller's return slot
38 : LD   1, 4(0) ;  Load return value into register 1
39 : LD  6, 2(0) ;  Load return address for main function into register 6
40 : LDA  7, 0(6) ;  Jump to return address of main function
41 : LD   1, 1(5) ;  Load parameter 'm' into R1
42 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
43 : LD   1, 1(5) ;  Load parameter 'm' into R1
44 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
45 : LD   1, 2(5) ;  Load parameter 'n' into R1
46 : DIV  1, 2, 1 ;  R1 = left / right
47 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
48 : LD   1, 2(5) ;  Load parameter 'n' into R1
49 : MUL  1, 2, 1 ;  R1 = left * right
50 : SUB  1, 2, 1 ;  R1 = left - right
51 : ST   1, 3(5) ;  Store function result into stack frame
52 : LD   6, 0(5) ;  Load return address
53 : LDA  7, 0(6) ;  Return to caller
54 : LD   1, 1(5) ;  Load parameter 'diff' into R1
55 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
56 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
57 : SUB  1, 2, 1 ;  left - right for equality check
58 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
59 : LDC  1, 0(0) ;  false
60 : LDA  7, 1(7) ;  skip setting true
61 : LDC  1, 1(0) ;  true
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LD   1, 1(5) ;  Load parameter 'diff' into R1
64 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
65 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
66 : SUB  1, 2, 1 ;  left - right for equality check
67 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
68 : LDC  1, 0(0) ;  false
69 : LDA  7, 1(7) ;  skip setting true
70 : LDC  1, 1(0) ;  true
71 : ADD  1, 2, 1 ;  R1 = left OR right
72 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
73 : LD   1, 1(5) ;  Load parameter 'diff' into R1
74 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
75 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
76 : SUB  1, 0, 1 ;  Negate value in R1
77 : SUB  1, 2, 1 ;  left - right for equality check
78 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
79 : LDC  1, 0(0) ;  false
80 : LDA  7, 1(7) ;  skip setting true
81 : LDC  1, 1(0) ;  true
82 : ADD  1, 2, 1 ;  R1 = left OR right
83 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
84 : LD   1, 1(5) ;  Load parameter 'diff' into R1
85 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
86 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
87 : SUB  1, 0, 1 ;  Negate value in R1
88 : SUB  1, 2, 1 ;  left - right for equality check
89 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : ADD  1, 2, 1 ;  R1 = left OR right
94 : JEQ  1, 97(0) ;  If condition is false, jump to ELSE
95 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
96 : LDA  7, 118(0) ;  Skip ELSE block
97 : LD   1, 1(5) ;  Load parameter 'diff' into R1
98 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
99 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
100 : SUB  1, 2, 1 ;  left - right for less-than check
101 : JLT  1, 2(7) ;  If R1 < 0, jump to true
102 : LDC  1, 0(0) ;  false
103 : LDA  7, 1(7) ;  skip setting true
104 : LDC  1, 1(0) ;  true
105 : JEQ  1, 108(0) ;  If condition is false, jump to ELSE
106 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
107 : LDA  7, 118(0) ;  Skip ELSE block
108 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'main'
109 : LD   1, 1(5) ;  Load parameter 'diff' into R1
110 : ST 1, 1(3) ;  Store argument 0 into callee frame
111 : LDA 6, 115(0)) ;  Compute return address
112 : ST 6, 0(3) ;  Store return address in callee frame
113 : ADD  5, 3, 0 ;  Update pointer
114 : LDA 7, 11(0) ;  Call main
115 : LD 1, 2(5) ;  Load callee return value into R1
116 : LDC  4, 3(0) ;  Load frame size
117 : SUB  5, 5, 4 ;  Restore pointer
118 : ST   1, 2(5) ;  Store function result into stack frame
119 : LD   6, 0(5) ;  Load return address
120 : LDA  7, 0(6) ;  Return to caller
121 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'divisibleByDifference'
122 : LD   1, 1(5) ;  Load parameter 'left' into R1
123 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
124 : LD   1, 2(5) ;  Load parameter 'right' into R1
125 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
126 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
127 : MUL  1, 2, 1 ;  R1 = left * right
128 : SUB  1, 2, 1 ;  R1 = left - right
129 : ST 1, 1(3) ;  Store argument 0 into callee frame
130 : LDA 6, 134(0)) ;  Compute return address
131 : ST 6, 0(3) ;  Store return address in callee frame
132 : ADD  5, 3, 0 ;  Update pointer
133 : LDA 7, 54(0) ;  Call divisibleByDifference
134 : LD 1, 2(5) ;  Load callee return value into R1
135 : LDC  4, 4(0) ;  Load frame size
136 : SUB  5, 5, 4 ;  Restore pointer
137 : ST   1, 3(5) ;  Store function result into stack frame
138 : LD   6, 0(5) ;  Load return address
139 : LDA  7, 0(6) ;  Return to caller
