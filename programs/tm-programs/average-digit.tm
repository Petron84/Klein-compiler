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
12 : LDA  4, 5(5) ; Restore Callee frame base
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
15 : LDA  4, 5(5) ; Restore Callee frame base
16 : ST 1, 2(4) ;  Store argument 1 into callee frame
17 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
18 : LDA  4, 5(5) ; Restore Callee frame base
19 : ST 1, 3(4) ;  Store argument 2 into callee frame
20 : LDA  4, 5(5) ; Restore Call frame base
21 : LDA 6, 25(0) ;  Compute return address
22 : ST 6, 0(4) ;  Store return address in callee frame
23 : ADD  5, 4, 0 ;  Update pointer
24 : LDA 7, 87(0) ;  Call average_digit
25 : LD 1, 4(5) ;  Load callee return value into R1
26 : LDC  4, 5(0) ;  Load frame size
27 : SUB  5, 5, 4 ;  Restore pointer
28 : ST 1, 2(5) ;  Store result into current frame's return slot
29 : LD   1, 2(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 1(5) ;  Load parameter 'm' into R1
33 : LDC  3, 0(1) ; Store left operand into temporary register
34 : LD   1, 1(5) ;  Load parameter 'm' into R1
35 : LDC  3, 0(1) ; Store left operand into temporary register
36 : LD   1, 2(5) ;  Load parameter 'n' into R1
37 : LDC  2, 0(3) ;  Restore left operand
38 : DIV  1, 2, 1 ;  R1 = left / right
39 : LDC  3, 0(1) ; Store left operand into temporary register
40 : LD   1, 2(5) ;  Load parameter 'n' into R1
41 : LDC  2, 0(3) ;  Restore left operand
42 : MUL  1, 2, 1 ;  R1 = left * right
43 : LDC  2, 0(3) ;  Restore left operand
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST   1, 3(5) ;  Store function result into stack frame
46 : LD   6, 0(5) ;  Load return address
47 : LDA  7, 0(6) ;  Return to caller
48 : LD   1, 1(5) ;  Load parameter 'sum' into R1
49 : LDC  3, 0(1) ; Store left operand into temporary register
50 : LD   1, 2(5) ;  Load parameter 'n' into R1
51 : LDC  2, 0(3) ;  Restore left operand
52 : DIV  1, 2, 1 ;  R1 = left / right
53 : LDA  4, 3(5) ;  Update DMEM pointer
54 : LDA 6, 58(0) ;  Compute return address
55 : ST   6, 0(4) ;  Store return address
56 : ADD  5, 4, 0 ;  Updated Pointer
57 : LDA  7, 8(0) ; Call print
58 : LDC  4, 3(0) ;  Load frame size
59 : SUB  5, 5, 4 ;  Restore pointer
60 : ST   1, 3(5) ;  Store function result into stack frame
61 : LD   1, 1(5) ;  Load parameter 'sum' into R1
62 : LDA  4, 4(5) ; Restore Callee frame base
63 : ST 1, 1(4) ;  Store argument 0 into callee frame
64 : LD   1, 2(5) ;  Load parameter 'n' into R1
65 : LDA  4, 4(5) ; Restore Callee frame base
66 : ST 1, 2(4) ;  Store argument 1 into callee frame
67 : LDA  4, 4(5) ; Restore Call frame base
68 : LDA 6, 72(0) ;  Compute return address
69 : ST 6, 0(4) ;  Store return address in callee frame
70 : ADD  5, 4, 0 ;  Update pointer
71 : LDA 7, 32(0) ;  Call MOD
72 : LD 1, 3(5) ;  Load callee return value into R1
73 : LDC  4, 4(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : LDA  4, 3(5) ;  Update DMEM pointer
76 : LDA 6, 80(0) ;  Compute return address
77 : ST   6, 0(4) ;  Store return address
78 : ADD  5, 4, 0 ;  Updated Pointer
79 : LDA  7, 8(0) ; Call print
80 : LDC  4, 3(0) ;  Load frame size
81 : SUB  5, 5, 4 ;  Restore pointer
82 : ST   1, 3(5) ;  Store function result into stack frame
83 : LD   1, 2(5) ;  Load parameter 'n' into R1
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 1(5) ;  Load parameter 'n' into R1
88 : LDC  3, 0(1) ; Store left operand into temporary register
89 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
90 : LDC  2, 0(3) ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for less-than check
92 : JLT  1, 2(7) ;  If R1 < 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 120(0) ;  If condition is false, jump to ELSE
97 : LD   1, 2(5) ;  Load parameter 'sum' into R1
98 : LDC  3, 0(1) ; Store left operand into temporary register
99 : LD   1, 1(5) ;  Load parameter 'n' into R1
100 : LDC  2, 0(3) ;  Restore left operand
101 : ADD  1, 2, 1 ;  R1 = left + right
102 : LDA  4, 4(5) ; Restore Callee frame base
103 : ST 1, 1(4) ;  Store argument 0 into callee frame
104 : LD   1, 3(5) ;  Load parameter 'i' into R1
105 : LDC  3, 0(1) ; Store left operand into temporary register
106 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
107 : LDC  2, 0(3) ;  Restore left operand
108 : ADD  1, 2, 1 ;  R1 = left + right
109 : LDA  4, 4(5) ; Restore Callee frame base
110 : ST 1, 2(4) ;  Store argument 1 into callee frame
111 : LDA  4, 4(5) ; Restore Call frame base
112 : LDA 6, 116(0) ;  Compute return address
113 : ST 6, 0(4) ;  Store return address in callee frame
114 : ADD  5, 4, 0 ;  Update pointer
115 : LDA 7, 48(0) ;  Call print_and_return
116 : LD 1, 3(5) ;  Load callee return value into R1
117 : LDC  4, 4(0) ;  Load frame size
118 : SUB  5, 5, 4 ;  Restore pointer
119 : LDA  7, 162(0) ;  Skip ELSE block
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : LDC  3, 0(1) ; Store left operand into temporary register
122 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
123 : LDC  2, 0(3) ;  Restore left operand
124 : DIV  1, 2, 1 ;  R1 = left / right
125 : LDA  4, 5(5) ; Restore Callee frame base
126 : ST 1, 1(4) ;  Store argument 0 into callee frame
127 : LD   1, 2(5) ;  Load parameter 'sum' into R1
128 : LDC  3, 0(1) ; Store left operand into temporary register
129 : LD   1, 1(5) ;  Load parameter 'n' into R1
130 : LDA  4, 4(5) ; Restore Callee frame base
131 : ST 1, 1(4) ;  Store argument 0 into callee frame
132 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
133 : LDA  4, 4(5) ; Restore Callee frame base
134 : ST 1, 2(4) ;  Store argument 1 into callee frame
135 : LDA  4, 4(5) ; Restore Call frame base
136 : LDA 6, 140(0) ;  Compute return address
137 : ST 6, 0(4) ;  Store return address in callee frame
138 : ADD  5, 4, 0 ;  Update pointer
139 : LDA 7, 32(0) ;  Call MOD
140 : LD 1, 3(5) ;  Load callee return value into R1
141 : LDC  4, 4(0) ;  Load frame size
142 : SUB  5, 5, 4 ;  Restore pointer
143 : LDC  2, 0(3) ;  Restore left operand
144 : ADD  1, 2, 1 ;  R1 = left + right
145 : LDA  4, 5(5) ; Restore Callee frame base
146 : ST 1, 2(4) ;  Store argument 1 into callee frame
147 : LD   1, 3(5) ;  Load parameter 'i' into R1
148 : LDC  3, 0(1) ; Store left operand into temporary register
149 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
150 : LDC  2, 0(3) ;  Restore left operand
151 : ADD  1, 2, 1 ;  R1 = left + right
152 : LDA  4, 5(5) ; Restore Callee frame base
153 : ST 1, 3(4) ;  Store argument 2 into callee frame
154 : LDA  4, 5(5) ; Restore Call frame base
155 : LDA 6, 159(0) ;  Compute return address
156 : ST 6, 0(4) ;  Store return address in callee frame
157 : ADD  5, 4, 0 ;  Update pointer
158 : LDA 7, 87(0) ;  Call average_digit
159 : LD 1, 4(5) ;  Load callee return value into R1
160 : LDC  4, 5(0) ;  Load frame size
161 : SUB  5, 5, 4 ;  Restore pointer
162 : ST   1, 4(5) ;  Store function result into stack frame
163 : LD   6, 0(5) ;  Load return address
164 : LDA  7, 0(6) ;  Return to caller
