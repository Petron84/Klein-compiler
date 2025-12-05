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
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : LDA  3, 3(5) ; Restore Callee frame base
16 : ST 1, 2(3) ;  Store argument 1 into callee frame
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : LDA  3, 3(5) ; Restore Callee frame base
19 : ST 1, 3(3) ;  Store argument 2 into callee frame
20 : LDA  3, 3(5) ; Restore Call frame base
21 : LDA 6, 25(0)) ;  Compute return address
22 : ST 6, 0(3) ;  Store return address in callee frame
23 : ADD  5, 3, 0 ;  Update pointer
24 : LDA 7, 83(0) ;  Call average_digit
25 : LD 1, 4(5) ;  Load callee return value into R1
26 : LDC  4, 3(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : ST 1, 4(0) ;  Store function-call result into caller's return slot
29 : LD   1, 4(0) ;  Load return value into register 1
30 : LD  6, 2(0) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 1(5) ;  Load parameter 'm' into R1
33 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
34 : LD   1, 1(5) ;  Load parameter 'm' into R1
35 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
36 : LD   1, 2(5) ;  Load parameter 'n' into R1
37 : DIV  1, 2, 1 ;  R1 = left / right
38 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
39 : LD   1, 2(5) ;  Load parameter 'n' into R1
40 : MUL  1, 2, 1 ;  R1 = left * right
41 : SUB  1, 2, 1 ;  R1 = left - right
42 : ST   1, 3(5) ;  Store function result into stack frame
43 : LD   6, 0(5) ;  Load return address
44 : LDA  7, 0(6) ;  Return to caller
45 : LD   1, 1(5) ;  Load parameter 'sum' into R1
46 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
47 : LD   1, 2(5) ;  Load parameter 'n' into R1
48 : DIV  1, 2, 1 ;  R1 = left / right
49 : LDA  3, 4(5) ;  Update DMEM pointer
50 : LDA 6, 54(0) ;  Compute return address
51 : ST   6, 0(3) ;  Store return address
52 : ADD  5, 3, 0 ;  Updated Pointer
53 : LDA  7, 8(0) ; Call print
54 : LDC  4, 4(0) ;  Load frame size
55 : SUB  5, 5, 4 ;  Restore pointer
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   1, 1(5) ;  Load parameter 'sum' into R1
58 : LDA  3, 4(5) ; Restore Callee frame base
59 : ST 1, 1(3) ;  Store argument 0 into callee frame
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : LDA  3, 4(5) ; Restore Callee frame base
62 : ST 1, 2(3) ;  Store argument 1 into callee frame
63 : LDA  3, 4(5) ; Restore Call frame base
64 : LDA 6, 68(0)) ;  Compute return address
65 : ST 6, 0(3) ;  Store return address in callee frame
66 : ADD  5, 3, 0 ;  Update pointer
67 : LDA 7, 32(0) ;  Call MOD
68 : LD 1, 3(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : LDA  3, 4(5) ;  Update DMEM pointer
72 : LDA 6, 76(0) ;  Compute return address
73 : ST   6, 0(3) ;  Store return address
74 : ADD  5, 3, 0 ;  Updated Pointer
75 : LDA  7, 8(0) ; Call print
76 : LDC  4, 4(0) ;  Load frame size
77 : SUB  5, 5, 4 ;  Restore pointer
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   1, 2(5) ;  Load parameter 'n' into R1
80 : ST   1, 3(5) ;  Store function result into stack frame
81 : LD   6, 0(5) ;  Load return address
82 : LDA  7, 0(6) ;  Return to caller
83 : LD   1, 1(5) ;  Load parameter 'n' into R1
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
86 : SUB  1, 2, 1 ;  left - right for less-than check
87 : JLT  1, 2(7) ;  If R1 < 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 113(0) ;  If condition is false, jump to ELSE
92 : LD   1, 2(5) ;  Load parameter 'sum' into R1
93 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
94 : LD   1, 1(5) ;  Load parameter 'n' into R1
95 : ADD  1, 2, 1 ;  R1 = left + right
96 : LDA  3, 5(5) ; Restore Callee frame base
97 : ST 1, 1(3) ;  Store argument 0 into callee frame
98 : LD   1, 3(5) ;  Load parameter 'i' into R1
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
101 : ADD  1, 2, 1 ;  R1 = left + right
102 : LDA  3, 5(5) ; Restore Callee frame base
103 : ST 1, 2(3) ;  Store argument 1 into callee frame
104 : LDA  3, 5(5) ; Restore Call frame base
105 : LDA 6, 109(0)) ;  Compute return address
106 : ST 6, 0(3) ;  Store return address in callee frame
107 : ADD  5, 3, 0 ;  Update pointer
108 : LDA 7, 45(0) ;  Call print_and_return
109 : LD 1, 3(5) ;  Load callee return value into R1
110 : LDC  4, 5(0) ;  Load frame size
111 : SUB  5, 5, 4 ;  Restore pointer
112 : LDA  7, 152(0) ;  Skip ELSE block
113 : LD   1, 1(5) ;  Load parameter 'n' into R1
114 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
115 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
116 : DIV  1, 2, 1 ;  R1 = left / right
117 : LDA  3, 5(5) ; Restore Callee frame base
118 : ST 1, 1(3) ;  Store argument 0 into callee frame
119 : LD   1, 2(5) ;  Load parameter 'sum' into R1
120 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
121 : LD   1, 1(5) ;  Load parameter 'n' into R1
122 : LDA  3, 5(5) ; Restore Callee frame base
123 : ST 1, 1(3) ;  Store argument 0 into callee frame
124 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
125 : LDA  3, 5(5) ; Restore Callee frame base
126 : ST 1, 2(3) ;  Store argument 1 into callee frame
127 : LDA  3, 5(5) ; Restore Call frame base
128 : LDA 6, 132(0)) ;  Compute return address
129 : ST 6, 0(3) ;  Store return address in callee frame
130 : ADD  5, 3, 0 ;  Update pointer
131 : LDA 7, 32(0) ;  Call MOD
132 : LD 1, 3(5) ;  Load callee return value into R1
133 : LDC  4, 5(0) ;  Load frame size
134 : SUB  5, 5, 4 ;  Restore pointer
135 : ADD  1, 2, 1 ;  R1 = left + right
136 : LDA  3, 5(5) ; Restore Callee frame base
137 : ST 1, 2(3) ;  Store argument 1 into callee frame
138 : LD   1, 3(5) ;  Load parameter 'i' into R1
139 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
140 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
141 : ADD  1, 2, 1 ;  R1 = left + right
142 : LDA  3, 5(5) ; Restore Callee frame base
143 : ST 1, 3(3) ;  Store argument 2 into callee frame
144 : LDA  3, 5(5) ; Restore Call frame base
145 : LDA 6, 149(0)) ;  Compute return address
146 : ST 6, 0(3) ;  Store return address in callee frame
147 : ADD  5, 3, 0 ;  Update pointer
148 : LDA 7, 83(0) ;  Call average_digit
149 : LD 1, 4(5) ;  Load callee return value into R1
150 : LDC  4, 5(0) ;  Load frame size
151 : SUB  5, 5, 4 ;  Restore pointer
152 : ST   1, 4(5) ;  Store function result into stack frame
153 : LD   6, 0(5) ;  Load return address
154 : LDA  7, 0(6) ;  Return to caller
