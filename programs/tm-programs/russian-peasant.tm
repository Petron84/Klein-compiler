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
22 : ST   1, 4(5) ;  Spill Temporary
23 : LD   1, 2(5) ;  Load parameter 'n' into R1
24 : ST   1, 5(5) ;  Spill Temporary
25 : LDA 4, 4(5) ; Restore Callee frame base
26 : LD   1, 5(5) ;  Restore Temporary
27 : ST 1, 2(4) ;  Store argument 1 into callee frame
28 : LD   1, 4(5) ;  Restore Temporary
29 : ST 1, 1(4) ;  Store argument 0 into callee frame
30 : LDA 4, 4(5) ; Restore Call frame base
31 : LDA 6, 35(0) ;  Compute return address
32 : ST 6, 0(4) ;  Store return address in callee frame
33 : ADD 5, 4, 0 ;  Update pointer
34 : LDA 7, 42(0) ;  Call mult
35 : LD 1, 3(5) ;  Load callee return value into R1
36 : LDC 4, 4(0) ;  Load frame size
37 : SUB 5, 5, 4 ;  Restore pointer
38 : ST 1, 3(5) ;  Store result into current frame's return slot
39 : LD   1, 3(5) ;  Load return value into register 1
40 : LD  6, 0(5) ;  Load return address for main function into register 6
41 : LDA  7, 0(6) ;  Jump to return address of main function
42 : LD   1, 1(5) ;  Load parameter 'm' into R1
43 : ST   1, 4(5) ;  Spill Temporary
44 : LD   1, 2(5) ;  Load parameter 'n' into R1
45 : ST   1, 5(5) ;  Spill Temporary
46 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
47 : ST   1, 6(5) ;  Spill Temporary
48 : LDA 4, 5(5) ; Restore Callee frame base
49 : LD   1, 6(5) ;  Restore Temporary
50 : ST 1, 3(4) ;  Store argument 2 into callee frame
51 : LD   1, 5(5) ;  Restore Temporary
52 : ST 1, 2(4) ;  Store argument 1 into callee frame
53 : LD   1, 4(5) ;  Restore Temporary
54 : ST 1, 1(4) ;  Store argument 0 into callee frame
55 : LDA 4, 5(5) ; Restore Call frame base
56 : LDA 6, 60(0) ;  Compute return address
57 : ST 6, 0(4) ;  Store return address in callee frame
58 : ADD 5, 4, 0 ;  Update pointer
59 : LDA 7, 66(0) ;  Call multWithAccum
60 : LD 1, 4(5) ;  Load callee return value into R1
61 : LDC 4, 5(0) ;  Load frame size
62 : SUB 5, 5, 4 ;  Restore pointer
63 : ST   1, 3(5) ;  Store function result into stack frame
64 : LD   6, 0(5) ;  Load return address
65 : LDA  7, 0(6) ;  Return to caller
66 : LD   1, 2(5) ;  Load parameter 'n' into R1
67 : ADD  3, 1, 0 ;  Save left operand
68 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
69 : ADD  2, 3, 0 ;  restore left operand
70 : SUB  1, 2, 1 ;  left - right for equality check
71 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : JEQ  1, 78(0) ;  If condition is false, jump to ELSE
76 : LD   1, 3(5) ;  Load parameter 'accum' into R1
77 : LDA  7, 167(0) ;  Skip ELSE block
78 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
79 : ADD  3, 1, 0 ;  Save right operand
80 : LD   1, 2(5) ;  Load parameter 'n' into R1
81 : ST   1, 5(5) ;  Spill Temporary
82 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
83 : ST   1, 6(5) ;  Spill Temporary
84 : LDA 4, 4(5) ; Restore Callee frame base
85 : LD   1, 6(5) ;  Restore Temporary
86 : ST 1, 2(4) ;  Store argument 1 into callee frame
87 : LD   1, 5(5) ;  Restore Temporary
88 : ST 1, 1(4) ;  Store argument 0 into callee frame
89 : LDA 4, 4(5) ; Restore Call frame base
90 : LDA 6, 94(0) ;  Compute return address
91 : ST 6, 0(4) ;  Store return address in callee frame
92 : ADD 5, 4, 0 ;  Update pointer
93 : LDA 7, 170(0) ;  Call MOD
94 : LD 1, 3(5) ;  Load callee return value into R1
95 : LDC 4, 4(0) ;  Load frame size
96 : SUB 5, 5, 4 ;  Restore pointer
97 : ADD  2, 3, 0 ;  Restore right operand
98 : SUB  1, 2, 1 ;  left - right for equality check
99 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
100 : LDC  1, 0(0) ;  false
101 : LDA  7, 1(7) ;  skip setting true
102 : LDC  1, 1(0) ;  true
103 : JEQ  1, 138(0) ;  If condition is false, jump to ELSE
104 : LD   1, 1(5) ;  Load parameter 'm' into R1
105 : ADD  3, 1, 0 ;  Save left operand
106 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
107 : ADD  2, 3, 0 ;  restore left operand
108 : MUL  1, 2, 1 ;  R1 = left * right
109 : ST   1, 5(5) ;  Spill Temporary
110 : LD   1, 2(5) ;  Load parameter 'n' into R1
111 : ADD  3, 1, 0 ;  Save left operand
112 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
113 : ADD  2, 3, 0 ;  restore left operand
114 : DIV  1, 2, 1 ;  R1 = left / right
115 : ST   1, 6(5) ;  Spill Temporary
116 : LD   1, 3(5) ;  Load parameter 'accum' into R1
117 : ADD  3, 1, 0 ;  Save left operand
118 : LD   1, 1(5) ;  Load parameter 'm' into R1
119 : ADD  2, 3, 0 ;  restore left operand
120 : ADD  1, 2, 1 ;  R1 = left + right
121 : ST   1, 7(5) ;  Spill Temporary
122 : LDA 4, 5(5) ; Restore Callee frame base
123 : LD   1, 7(5) ;  Restore Temporary
124 : ST 1, 3(4) ;  Store argument 2 into callee frame
125 : LD   1, 6(5) ;  Restore Temporary
126 : ST 1, 2(4) ;  Store argument 1 into callee frame
127 : LD   1, 5(5) ;  Restore Temporary
128 : ST 1, 1(4) ;  Store argument 0 into callee frame
129 : LDA 4, 5(5) ; Restore Call frame base
130 : LDA 6, 134(0) ;  Compute return address
131 : ST 6, 0(4) ;  Store return address in callee frame
132 : ADD 5, 4, 0 ;  Update pointer
133 : LDA 7, 66(0) ;  Call multWithAccum
134 : LD 1, 4(5) ;  Load callee return value into R1
135 : LDC 4, 5(0) ;  Load frame size
136 : SUB 5, 5, 4 ;  Restore pointer
137 : LDA  7, 167(0) ;  Skip ELSE block
138 : LD   1, 1(5) ;  Load parameter 'm' into R1
139 : ADD  3, 1, 0 ;  Save left operand
140 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
141 : ADD  2, 3, 0 ;  restore left operand
142 : MUL  1, 2, 1 ;  R1 = left * right
143 : ST   1, 5(5) ;  Spill Temporary
144 : LD   1, 2(5) ;  Load parameter 'n' into R1
145 : ADD  3, 1, 0 ;  Save left operand
146 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
147 : ADD  2, 3, 0 ;  restore left operand
148 : DIV  1, 2, 1 ;  R1 = left / right
149 : ST   1, 6(5) ;  Spill Temporary
150 : LD   1, 3(5) ;  Load parameter 'accum' into R1
151 : ST   1, 7(5) ;  Spill Temporary
152 : LDA 4, 5(5) ; Restore Callee frame base
153 : LD   1, 7(5) ;  Restore Temporary
154 : ST 1, 3(4) ;  Store argument 2 into callee frame
155 : LD   1, 6(5) ;  Restore Temporary
156 : ST 1, 2(4) ;  Store argument 1 into callee frame
157 : LD   1, 5(5) ;  Restore Temporary
158 : ST 1, 1(4) ;  Store argument 0 into callee frame
159 : LDA 4, 5(5) ; Restore Call frame base
160 : LDA 6, 164(0) ;  Compute return address
161 : ST 6, 0(4) ;  Store return address in callee frame
162 : ADD 5, 4, 0 ;  Update pointer
163 : LDA 7, 66(0) ;  Call multWithAccum
164 : LD 1, 4(5) ;  Load callee return value into R1
165 : LDC 4, 5(0) ;  Load frame size
166 : SUB 5, 5, 4 ;  Restore pointer
167 : ST   1, 4(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
170 : LD   1, 1(5) ;  Load parameter 'm' into R1
171 : ADD  3, 1, 0 ;  Save left operand
172 : LD   1, 1(5) ;  Load parameter 'm' into R1
173 : ADD  3, 1, 0 ;  Save left operand
174 : LD   1, 2(5) ;  Load parameter 'n' into R1
175 : ADD  2, 3, 0 ;  restore left operand
176 : DIV  1, 2, 1 ;  R1 = left / right
177 : ADD  3, 1, 0 ;  Save left operand
178 : LD   1, 2(5) ;  Load parameter 'n' into R1
179 : ADD  2, 3, 0 ;  restore left operand
180 : MUL  1, 2, 1 ;  R1 = left * right
181 : ADD  2, 3, 0 ;  restore left operand
182 : SUB  1, 2, 1 ;  R1 = left - right
183 : ST   1, 3(5) ;  Store function result into stack frame
184 : LD   6, 0(5) ;  Load return address
185 : LDA  7, 0(6) ;  Return to caller
