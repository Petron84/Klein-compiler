0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : LDA  3, 4(5) ;  Update DMEM pointer
15 : LDA 6, 19(0) ;  Compute return address
16 : ST   6, 0(3) ;  Store return address
17 : ADD  5, 3, 0 ;  Updated Pointer
18 : LDA  7, 10(0) ; Call print
19 : LDC  4, 4(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : LD   1, 1(5) ;  Load parameter 'm' into R1
22 : LDA  3, 4(5) ; Restore Callee frame base
23 : ST 1, 1(3) ;  Store argument 0 into callee frame
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : LDA  3, 4(5) ; Restore Callee frame base
26 : ST 1, 2(3) ;  Store argument 1 into callee frame
27 : LDA  3, 4(5) ; Restore Call frame base
28 : LDA 6, 32(0) ;  Compute return address
29 : ST 6, 0(3) ;  Store return address in callee frame
30 : ADD  5, 3, 0 ;  Update pointer
31 : LDA 7, 39(0) ;  Call mult
32 : LD 1, 3(5) ;  Load callee return value into R1
33 : LDC  4, 4(0) ;  Load frame size
34 : SUB  5, 5, 4 ;  Restore pointer
35 : ST 1, 3(5) ;  Store result into current frame's return slot
36 : LD   1, 3(5) ;  Load return value into register 1
37 : LD  6, 0(5) ;  Load return address for main function into register 6
38 : LDA  7, 0(6) ;  Jump to return address of main function
39 : LD   1, 1(5) ;  Load parameter 'm' into R1
40 : LDA  3, 4(5) ; Restore Callee frame base
41 : ST 1, 1(3) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'n' into R1
43 : LDA  3, 4(5) ; Restore Callee frame base
44 : ST 1, 2(3) ;  Store argument 1 into callee frame
45 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
46 : LDA  3, 4(5) ; Restore Callee frame base
47 : ST 1, 3(3) ;  Store argument 2 into callee frame
48 : LDA  3, 4(5) ; Restore Call frame base
49 : LDA 6, 53(0) ;  Compute return address
50 : ST 6, 0(3) ;  Store return address in callee frame
51 : ADD  5, 3, 0 ;  Update pointer
52 : LDA 7, 59(0) ;  Call multWithAccum
53 : LD 1, 4(5) ;  Load callee return value into R1
54 : LDC  4, 4(0) ;  Load frame size
55 : SUB  5, 5, 4 ;  Restore pointer
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   6, 0(5) ;  Load return address
58 : LDA  7, 0(6) ;  Return to caller
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
61 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
62 : SUB  1, 2, 1 ;  left - right for equality check
63 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
64 : LDC  1, 0(0) ;  false
65 : LDA  7, 1(7) ;  skip setting true
66 : LDC  1, 1(0) ;  true
67 : JEQ  1, 70(0) ;  If condition is false, jump to ELSE
68 : LD   1, 3(5) ;  Load parameter 'accum' into R1
69 : LDA  7, 142(0) ;  Skip ELSE block
70 : LD   1, 2(5) ;  Load parameter 'n' into R1
71 : LDA  3, 5(5) ; Restore Callee frame base
72 : ST 1, 1(3) ;  Store argument 0 into callee frame
73 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
74 : LDA  3, 5(5) ; Restore Callee frame base
75 : ST 1, 2(3) ;  Store argument 1 into callee frame
76 : LDA  3, 5(5) ; Restore Call frame base
77 : LDA 6, 81(0) ;  Compute return address
78 : ST 6, 0(3) ;  Store return address in callee frame
79 : ADD  5, 3, 0 ;  Update pointer
80 : LDA 7, 145(0) ;  Call MOD
81 : LD 1, 3(5) ;  Load callee return value into R1
82 : LDC  4, 5(0) ;  Load frame size
83 : SUB  5, 5, 4 ;  Restore pointer
84 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
85 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
86 : SUB  1, 2, 1 ;  left - right for equality check
87 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
88 : LDC  1, 0(0) ;  false
89 : LDA  7, 1(7) ;  skip setting true
90 : LDC  1, 1(0) ;  true
91 : JEQ  1, 119(0) ;  If condition is false, jump to ELSE
92 : LD   1, 1(5) ;  Load parameter 'm' into R1
93 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
94 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
95 : MUL  1, 2, 1 ;  R1 = left * right
96 : LDA  3, 5(5) ; Restore Callee frame base
97 : ST 1, 1(3) ;  Store argument 0 into callee frame
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
100 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
101 : DIV  1, 2, 1 ;  R1 = left / right
102 : LDA  3, 5(5) ; Restore Callee frame base
103 : ST 1, 2(3) ;  Store argument 1 into callee frame
104 : LD   1, 3(5) ;  Load parameter 'accum' into R1
105 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
106 : LD   1, 1(5) ;  Load parameter 'm' into R1
107 : ADD  1, 2, 1 ;  R1 = left + right
108 : LDA  3, 5(5) ; Restore Callee frame base
109 : ST 1, 3(3) ;  Store argument 2 into callee frame
110 : LDA  3, 5(5) ; Restore Call frame base
111 : LDA 6, 115(0) ;  Compute return address
112 : ST 6, 0(3) ;  Store return address in callee frame
113 : ADD  5, 3, 0 ;  Update pointer
114 : LDA 7, 59(0) ;  Call multWithAccum
115 : LD 1, 4(5) ;  Load callee return value into R1
116 : LDC  4, 5(0) ;  Load frame size
117 : SUB  5, 5, 4 ;  Restore pointer
118 : LDA  7, 142(0) ;  Skip ELSE block
119 : LD   1, 1(5) ;  Load parameter 'm' into R1
120 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
121 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
122 : MUL  1, 2, 1 ;  R1 = left * right
123 : LDA  3, 5(5) ; Restore Callee frame base
124 : ST 1, 1(3) ;  Store argument 0 into callee frame
125 : LD   1, 2(5) ;  Load parameter 'n' into R1
126 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
127 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
128 : DIV  1, 2, 1 ;  R1 = left / right
129 : LDA  3, 5(5) ; Restore Callee frame base
130 : ST 1, 2(3) ;  Store argument 1 into callee frame
131 : LD   1, 3(5) ;  Load parameter 'accum' into R1
132 : LDA  3, 5(5) ; Restore Callee frame base
133 : ST 1, 3(3) ;  Store argument 2 into callee frame
134 : LDA  3, 5(5) ; Restore Call frame base
135 : LDA 6, 139(0) ;  Compute return address
136 : ST 6, 0(3) ;  Store return address in callee frame
137 : ADD  5, 3, 0 ;  Update pointer
138 : LDA 7, 59(0) ;  Call multWithAccum
139 : LD 1, 4(5) ;  Load callee return value into R1
140 : LDC  4, 5(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : ST   1, 4(5) ;  Store function result into stack frame
143 : LD   6, 0(5) ;  Load return address
144 : LDA  7, 0(6) ;  Return to caller
145 : LD   1, 1(5) ;  Load parameter 'm' into R1
146 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
147 : LD   1, 1(5) ;  Load parameter 'm' into R1
148 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
149 : LD   1, 2(5) ;  Load parameter 'n' into R1
150 : DIV  1, 2, 1 ;  R1 = left / right
151 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
152 : LD   1, 2(5) ;  Load parameter 'n' into R1
153 : MUL  1, 2, 1 ;  R1 = left * right
154 : SUB  1, 2, 1 ;  R1 = left - right
155 : ST   1, 3(5) ;  Store function result into stack frame
156 : LD   6, 0(5) ;  Load return address
157 : LDA  7, 0(6) ;  Return to caller
