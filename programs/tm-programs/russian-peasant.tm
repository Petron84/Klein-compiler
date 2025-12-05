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
14 : LDA  4, 3(5) ;  Update DMEM pointer
15 : LDA 6, 19(0) ;  Compute return address
16 : ST   6, 0(4) ;  Store return address
17 : ADD  5, 4, 0 ;  Updated Pointer
18 : LDA  7, 10(0) ; Call print
19 : LDC  4, 3(0) ;  Load frame size
20 : SUB  5, 5, 4 ;  Restore pointer
21 : LD   1, 1(5) ;  Load parameter 'm' into R1
22 : LDA  4, 4(5) ; Restore Callee frame base
23 : ST 1, 1(4) ;  Store argument 0 into callee frame
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : LDA  4, 4(5) ; Restore Callee frame base
26 : ST 1, 2(4) ;  Store argument 1 into callee frame
27 : LDA  4, 4(5) ; Restore Call frame base
28 : LDA 6, 32(0) ;  Compute return address
29 : ST 6, 0(4) ;  Store return address in callee frame
30 : ADD  5, 4, 0 ;  Update pointer
31 : LDA 7, 39(0) ;  Call mult
32 : LD 1, 3(5) ;  Load callee return value into R1
33 : LDC  4, 4(0) ;  Load frame size
34 : SUB  5, 5, 4 ;  Restore pointer
35 : ST 1, 3(5) ;  Store result into current frame's return slot
36 : LD   1, 3(5) ;  Load return value into register 1
37 : LD  6, 0(5) ;  Load return address for main function into register 6
38 : LDA  7, 0(6) ;  Jump to return address of main function
39 : LD   1, 1(5) ;  Load parameter 'm' into R1
40 : LDA  4, 5(5) ; Restore Callee frame base
41 : ST 1, 1(4) ;  Store argument 0 into callee frame
42 : LD   1, 2(5) ;  Load parameter 'n' into R1
43 : LDA  4, 5(5) ; Restore Callee frame base
44 : ST 1, 2(4) ;  Store argument 1 into callee frame
45 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
46 : LDA  4, 5(5) ; Restore Callee frame base
47 : ST 1, 3(4) ;  Store argument 2 into callee frame
48 : LDA  4, 5(5) ; Restore Call frame base
49 : LDA 6, 53(0) ;  Compute return address
50 : ST 6, 0(4) ;  Store return address in callee frame
51 : ADD  5, 4, 0 ;  Update pointer
52 : LDA 7, 59(0) ;  Call multWithAccum
53 : LD 1, 4(5) ;  Load callee return value into R1
54 : LDC  4, 5(0) ;  Load frame size
55 : SUB  5, 5, 4 ;  Restore pointer
56 : ST   1, 3(5) ;  Store function result into stack frame
57 : LD   6, 0(5) ;  Load return address
58 : LDA  7, 0(6) ;  Return to caller
59 : LD   1, 2(5) ;  Load parameter 'n' into R1
60 : ADD  3, 1, 0 ;  Save left operand
61 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
62 : ADD  2, 3, 0 ;  restore left operand
63 : SUB  1, 2, 1 ;  left - right for equality check
64 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
65 : LDC  1, 0(0) ;  false
66 : LDA  7, 1(7) ;  skip setting true
67 : LDC  1, 1(0) ;  true
68 : JEQ  1, 71(0) ;  If condition is false, jump to ELSE
69 : LD   1, 3(5) ;  Load parameter 'accum' into R1
70 : LDA  7, 149(0) ;  Skip ELSE block
71 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
72 : ADD  3, 1, 0 ;  Save right operand
73 : LD   1, 2(5) ;  Load parameter 'n' into R1
74 : LDA  4, 4(5) ; Restore Callee frame base
75 : ST 1, 1(4) ;  Store argument 0 into callee frame
76 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
77 : LDA  4, 4(5) ; Restore Callee frame base
78 : ST 1, 2(4) ;  Store argument 1 into callee frame
79 : LDA  4, 4(5) ; Restore Call frame base
80 : LDA 6, 84(0) ;  Compute return address
81 : ST 6, 0(4) ;  Store return address in callee frame
82 : ADD  5, 4, 0 ;  Update pointer
83 : LDA 7, 152(0) ;  Call MOD
84 : LD 1, 3(5) ;  Load callee return value into R1
85 : LDC  4, 4(0) ;  Load frame size
86 : SUB  5, 5, 4 ;  Restore pointer
87 : ADD  2, 3, 0 ;  Restore right operand
88 : SUB  1, 2, 1 ;  left - right for equality check
89 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 124(0) ;  If condition is false, jump to ELSE
94 : LD   1, 1(5) ;  Load parameter 'm' into R1
95 : ADD  3, 1, 0 ;  Save left operand
96 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
97 : ADD  2, 3, 0 ;  restore left operand
98 : MUL  1, 2, 1 ;  R1 = left * right
99 : LDA  4, 5(5) ; Restore Callee frame base
100 : ST 1, 1(4) ;  Store argument 0 into callee frame
101 : LD   1, 2(5) ;  Load parameter 'n' into R1
102 : ADD  3, 1, 0 ;  Save left operand
103 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
104 : ADD  2, 3, 0 ;  restore left operand
105 : DIV  1, 2, 1 ;  R1 = left / right
106 : LDA  4, 5(5) ; Restore Callee frame base
107 : ST 1, 2(4) ;  Store argument 1 into callee frame
108 : LD   1, 3(5) ;  Load parameter 'accum' into R1
109 : ADD  3, 1, 0 ;  Save left operand
110 : LD   1, 1(5) ;  Load parameter 'm' into R1
111 : ADD  2, 3, 0 ;  restore left operand
112 : ADD  1, 2, 1 ;  R1 = left + right
113 : LDA  4, 5(5) ; Restore Callee frame base
114 : ST 1, 3(4) ;  Store argument 2 into callee frame
115 : LDA  4, 5(5) ; Restore Call frame base
116 : LDA 6, 120(0) ;  Compute return address
117 : ST 6, 0(4) ;  Store return address in callee frame
118 : ADD  5, 4, 0 ;  Update pointer
119 : LDA 7, 59(0) ;  Call multWithAccum
120 : LD 1, 4(5) ;  Load callee return value into R1
121 : LDC  4, 5(0) ;  Load frame size
122 : SUB  5, 5, 4 ;  Restore pointer
123 : LDA  7, 149(0) ;  Skip ELSE block
124 : LD   1, 1(5) ;  Load parameter 'm' into R1
125 : ADD  3, 1, 0 ;  Save left operand
126 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
127 : ADD  2, 3, 0 ;  restore left operand
128 : MUL  1, 2, 1 ;  R1 = left * right
129 : LDA  4, 5(5) ; Restore Callee frame base
130 : ST 1, 1(4) ;  Store argument 0 into callee frame
131 : LD   1, 2(5) ;  Load parameter 'n' into R1
132 : ADD  3, 1, 0 ;  Save left operand
133 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
134 : ADD  2, 3, 0 ;  restore left operand
135 : DIV  1, 2, 1 ;  R1 = left / right
136 : LDA  4, 5(5) ; Restore Callee frame base
137 : ST 1, 2(4) ;  Store argument 1 into callee frame
138 : LD   1, 3(5) ;  Load parameter 'accum' into R1
139 : LDA  4, 5(5) ; Restore Callee frame base
140 : ST 1, 3(4) ;  Store argument 2 into callee frame
141 : LDA  4, 5(5) ; Restore Call frame base
142 : LDA 6, 146(0) ;  Compute return address
143 : ST 6, 0(4) ;  Store return address in callee frame
144 : ADD  5, 4, 0 ;  Update pointer
145 : LDA 7, 59(0) ;  Call multWithAccum
146 : LD 1, 4(5) ;  Load callee return value into R1
147 : LDC  4, 5(0) ;  Load frame size
148 : SUB  5, 5, 4 ;  Restore pointer
149 : ST   1, 4(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LD   1, 1(5) ;  Load parameter 'm' into R1
153 : ADD  3, 1, 0 ;  Save left operand
154 : LD   1, 1(5) ;  Load parameter 'm' into R1
155 : ADD  3, 1, 0 ;  Save left operand
156 : LD   1, 2(5) ;  Load parameter 'n' into R1
157 : ADD  2, 3, 0 ;  restore left operand
158 : DIV  1, 2, 1 ;  R1 = left / right
159 : ADD  3, 1, 0 ;  Save left operand
160 : LD   1, 2(5) ;  Load parameter 'n' into R1
161 : ADD  2, 3, 0 ;  restore left operand
162 : MUL  1, 2, 1 ;  R1 = left * right
163 : ADD  2, 3, 0 ;  restore left operand
164 : SUB  1, 2, 1 ;  R1 = left - right
165 : ST   1, 3(5) ;  Store function result into stack frame
166 : LD   6, 0(5) ;  Load return address
167 : LDA  7, 0(6) ;  Return to caller
