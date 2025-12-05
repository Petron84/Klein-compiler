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
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
14 : ST   1, 4(5) ;  Spill Temporary
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ST   1, 5(5) ;  Spill Temporary
17 : LDA 4, 5(5) ; Restore Callee frame base
18 : LD   1, 5(5) ;  Restore Temporary
19 : ST 1, 3(4) ;  Store argument 2 into callee frame
20 : LD   1, 4(5) ;  Restore Temporary
21 : ST 1, 2(4) ;  Store argument 1 into callee frame
22 : LD   1, 3(5) ;  Restore Temporary
23 : ST 1, 1(4) ;  Store argument 0 into callee frame
24 : LDA 4, 5(5) ; Restore Call frame base
25 : LDA 6, 29(0) ;  Compute return address
26 : ST 6, 0(4) ;  Store return address in callee frame
27 : ADD 5, 4, 0 ;  Update pointer
28 : LDA 7, 94(0) ;  Call average_digit
29 : LD 1, 4(5) ;  Load callee return value into R1
30 : LDC 4, 5(0) ;  Load frame size
31 : SUB 5, 5, 4 ;  Restore pointer
32 : ST 1, 2(5) ;  Store result into current frame's return slot
33 : LD   1, 2(5) ;  Load return value into register 1
34 : LD  6, 0(5) ;  Load return address for main function into register 6
35 : LDA  7, 0(6) ;  Jump to return address of main function
36 : LD   1, 1(5) ;  Load parameter 'm' into R1
37 : ADD  3, 1, 0 ;  Save left operand
38 : LD   1, 1(5) ;  Load parameter 'm' into R1
39 : ADD  3, 1, 0 ;  Save left operand
40 : LD   1, 2(5) ;  Load parameter 'n' into R1
41 : ADD  2, 3, 0 ;  restore left operand
42 : DIV  1, 2, 1 ;  R1 = left / right
43 : ADD  3, 1, 0 ;  Save left operand
44 : LD   1, 2(5) ;  Load parameter 'n' into R1
45 : ADD  2, 3, 0 ;  restore left operand
46 : MUL  1, 2, 1 ;  R1 = left * right
47 : ADD  2, 3, 0 ;  restore left operand
48 : SUB  1, 2, 1 ;  R1 = left - right
49 : ST   1, 3(5) ;  Store function result into stack frame
50 : LD   6, 0(5) ;  Load return address
51 : LDA  7, 0(6) ;  Return to caller
52 : LD   1, 1(5) ;  Load parameter 'sum' into R1
53 : ADD  3, 1, 0 ;  Save left operand
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  2, 3, 0 ;  restore left operand
56 : DIV  1, 2, 1 ;  R1 = left / right
57 : LDA  4, 3(5) ;  Update DMEM pointer
58 : LDA 6, 62(0) ;  Compute return address
59 : ST   6, 0(4) ;  Store return address
60 : ADD  5, 4, 0 ;  Updated Pointer
61 : LDA  7, 8(0) ; Call print
62 : LDC  4, 3(0) ;  Load frame size
63 : SUB  5, 5, 4 ;  Restore pointer
64 : ST   1, 3(5) ;  Store function result into stack frame
65 : LD   1, 1(5) ;  Load parameter 'sum' into R1
66 : ST   1, 4(5) ;  Spill Temporary
67 : LD   1, 2(5) ;  Load parameter 'n' into R1
68 : ST   1, 5(5) ;  Spill Temporary
69 : LDA 4, 4(5) ; Restore Callee frame base
70 : LD   1, 5(5) ;  Restore Temporary
71 : ST 1, 2(4) ;  Store argument 1 into callee frame
72 : LD   1, 4(5) ;  Restore Temporary
73 : ST 1, 1(4) ;  Store argument 0 into callee frame
74 : LDA 4, 4(5) ; Restore Call frame base
75 : LDA 6, 79(0) ;  Compute return address
76 : ST 6, 0(4) ;  Store return address in callee frame
77 : ADD 5, 4, 0 ;  Update pointer
78 : LDA 7, 36(0) ;  Call MOD
79 : LD 1, 3(5) ;  Load callee return value into R1
80 : LDC 4, 4(0) ;  Load frame size
81 : SUB 5, 5, 4 ;  Restore pointer
82 : LDA  4, 3(5) ;  Update DMEM pointer
83 : LDA 6, 87(0) ;  Compute return address
84 : ST   6, 0(4) ;  Store return address
85 : ADD  5, 4, 0 ;  Updated Pointer
86 : LDA  7, 8(0) ; Call print
87 : LDC  4, 3(0) ;  Load frame size
88 : SUB  5, 5, 4 ;  Restore pointer
89 : ST   1, 3(5) ;  Store function result into stack frame
90 : LD   1, 2(5) ;  Load parameter 'n' into R1
91 : ST   1, 3(5) ;  Store function result into stack frame
92 : LD   6, 0(5) ;  Load return address
93 : LDA  7, 0(6) ;  Return to caller
94 : LD   1, 1(5) ;  Load parameter 'n' into R1
95 : ADD  3, 1, 0 ;  Save left operand
96 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
97 : ADD  2, 3, 0 ;  restore left operand
98 : SUB  1, 2, 1 ;  left - right for less-than check
99 : JLT  1, 2(7) ;  If R1 < 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
104 : LD   1, 2(5) ;  Load parameter 'sum' into R1
105 : ADD  3, 1, 0 ;  Save left operand
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ADD  2, 3, 0 ;  restore left operand
108 : ADD  1, 2, 1 ;  R1 = left + right
109 : ST   1, 5(5) ;  Spill Temporary
110 : LD   1, 3(5) ;  Load parameter 'i' into R1
111 : ADD  3, 1, 0 ;  Save left operand
112 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
113 : ADD  2, 3, 0 ;  restore left operand
114 : ADD  1, 2, 1 ;  R1 = left + right
115 : ST   1, 6(5) ;  Spill Temporary
116 : LDA 4, 4(5) ; Restore Callee frame base
117 : LD   1, 6(5) ;  Restore Temporary
118 : ST 1, 2(4) ;  Store argument 1 into callee frame
119 : LD   1, 5(5) ;  Restore Temporary
120 : ST 1, 1(4) ;  Store argument 0 into callee frame
121 : LDA 4, 4(5) ; Restore Call frame base
122 : LDA 6, 126(0) ;  Compute return address
123 : ST 6, 0(4) ;  Store return address in callee frame
124 : ADD 5, 4, 0 ;  Update pointer
125 : LDA 7, 52(0) ;  Call print_and_return
126 : LD 1, 3(5) ;  Load callee return value into R1
127 : LDC 4, 4(0) ;  Load frame size
128 : SUB 5, 5, 4 ;  Restore pointer
129 : LDA  7, 179(0) ;  Skip ELSE block
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ADD  3, 1, 0 ;  Save left operand
132 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
133 : ADD  2, 3, 0 ;  restore left operand
134 : DIV  1, 2, 1 ;  R1 = left / right
135 : ST   1, 5(5) ;  Spill Temporary
136 : LD   1, 2(5) ;  Load parameter 'sum' into R1
137 : ST   1, 6(5) ;  Spill Temporary
138 : LD   1, 1(5) ;  Load parameter 'n' into R1
139 : ST   1, 7(5) ;  Spill Temporary
140 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
141 : ST   1, 8(5) ;  Spill Temporary
142 : LDA 4, 4(5) ; Restore Callee frame base
143 : LD   1, 8(5) ;  Restore Temporary
144 : ST 1, 2(4) ;  Store argument 1 into callee frame
145 : LD   1, 7(5) ;  Restore Temporary
146 : ST 1, 1(4) ;  Store argument 0 into callee frame
147 : LDA 4, 4(5) ; Restore Call frame base
148 : LDA 6, 152(0) ;  Compute return address
149 : ST 6, 0(4) ;  Store return address in callee frame
150 : ADD 5, 4, 0 ;  Update pointer
151 : LDA 7, 36(0) ;  Call MOD
152 : LD 1, 3(5) ;  Load callee return value into R1
153 : LDC 4, 4(0) ;  Load frame size
154 : SUB 5, 5, 4 ;  Restore pointer
155 : LD   2, 6(5) ;  Restore Temporary
156 : ADD  1, 2, 1 ;  R1 = left + right
157 : ST   1, 6(5) ;  Spill Temporary
158 : LD   1, 3(5) ;  Load parameter 'i' into R1
159 : ADD  3, 1, 0 ;  Save left operand
160 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
161 : ADD  2, 3, 0 ;  restore left operand
162 : ADD  1, 2, 1 ;  R1 = left + right
163 : ST   1, 7(5) ;  Spill Temporary
164 : LDA 4, 5(5) ; Restore Callee frame base
165 : LD   1, 7(5) ;  Restore Temporary
166 : ST 1, 3(4) ;  Store argument 2 into callee frame
167 : LD   1, 6(5) ;  Restore Temporary
168 : ST 1, 2(4) ;  Store argument 1 into callee frame
169 : LD   1, 5(5) ;  Restore Temporary
170 : ST 1, 1(4) ;  Store argument 0 into callee frame
171 : LDA 4, 5(5) ; Restore Call frame base
172 : LDA 6, 176(0) ;  Compute return address
173 : ST 6, 0(4) ;  Store return address in callee frame
174 : ADD 5, 4, 0 ;  Update pointer
175 : LDA 7, 94(0) ;  Call average_digit
176 : LD 1, 4(5) ;  Load callee return value into R1
177 : LDC 4, 5(0) ;  Load frame size
178 : SUB 5, 5, 4 ;  Restore pointer
179 : ST   1, 4(5) ;  Store function result into stack frame
180 : LD   6, 0(5) ;  Load return address
181 : LDA  7, 0(6) ;  Return to caller
