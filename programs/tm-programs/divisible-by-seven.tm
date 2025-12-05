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
12 : ADD  3, 1, 0 ;  Save left operand
13 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
14 : ADD  2, 3, 0 ;  restore left operand
15 : DIV  1, 2, 1 ;  R1 = left / right
16 : ST   1, 3(5) ;  Spill Temporary
17 : LD   1, 1(5) ;  Load parameter 'n' into R1
18 : ST   1, 4(5) ;  Spill Temporary
19 : LDC  1, 10(0) ;  Load boolean-literal value into register 1
20 : ST   1, 5(5) ;  Spill Temporary
21 : LDA 4, 4(5) ; Restore Callee frame base
22 : LD   1, 5(5) ;  Restore Temporary
23 : ST 1, 2(4) ;  Store argument 1 into callee frame
24 : LD   1, 4(5) ;  Restore Temporary
25 : ST 1, 1(4) ;  Store argument 0 into callee frame
26 : LDA 4, 4(5) ; Restore Call frame base
27 : LDA 6, 31(0) ;  Compute return address
28 : ST 6, 0(4) ;  Store return address in callee frame
29 : ADD 5, 4, 0 ;  Update pointer
30 : LDA 7, 52(0) ;  Call MOD
31 : LD 1, 3(5) ;  Load callee return value into R1
32 : LDC 4, 4(0) ;  Load frame size
33 : SUB 5, 5, 4 ;  Restore pointer
34 : ST   1, 4(5) ;  Spill Temporary
35 : LDA 4, 4(5) ; Restore Callee frame base
36 : LD   1, 4(5) ;  Restore Temporary
37 : ST 1, 2(4) ;  Store argument 1 into callee frame
38 : LD   1, 3(5) ;  Restore Temporary
39 : ST 1, 1(4) ;  Store argument 0 into callee frame
40 : LDA 4, 4(5) ; Restore Call frame base
41 : LDA 6, 45(0) ;  Compute return address
42 : ST 6, 0(4) ;  Store return address in callee frame
43 : ADD 5, 4, 0 ;  Update pointer
44 : LDA 7, 146(0) ;  Call divisibleByParts
45 : LD 1, 3(5) ;  Load callee return value into R1
46 : LDC 4, 4(0) ;  Load frame size
47 : SUB 5, 5, 4 ;  Restore pointer
48 : ST 1, 2(5) ;  Store result into current frame's return slot
49 : LD   1, 2(5) ;  Load return value into register 1
50 : LD  6, 0(5) ;  Load return address for main function into register 6
51 : LDA  7, 0(6) ;  Jump to return address of main function
52 : LD   1, 1(5) ;  Load parameter 'm' into R1
53 : ADD  3, 1, 0 ;  Save left operand
54 : LD   1, 1(5) ;  Load parameter 'm' into R1
55 : ADD  3, 1, 0 ;  Save left operand
56 : LD   1, 2(5) ;  Load parameter 'n' into R1
57 : ADD  2, 3, 0 ;  restore left operand
58 : DIV  1, 2, 1 ;  R1 = left / right
59 : ADD  3, 1, 0 ;  Save left operand
60 : LD   1, 2(5) ;  Load parameter 'n' into R1
61 : ADD  2, 3, 0 ;  restore left operand
62 : MUL  1, 2, 1 ;  R1 = left * right
63 : ADD  2, 3, 0 ;  restore left operand
64 : SUB  1, 2, 1 ;  R1 = left - right
65 : ST   1, 3(5) ;  Store function result into stack frame
66 : LD   6, 0(5) ;  Load return address
67 : LDA  7, 0(6) ;  Return to caller
68 : LD   1, 1(5) ;  Load parameter 'diff' into R1
69 : ADD  3, 1, 0 ;  Save left operand
70 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
71 : ADD  2, 3, 0 ;  restore left operand
72 : SUB  1, 2, 1 ;  left - right for equality check
73 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
74 : LDC  1, 0(0) ;  false
75 : LDA  7, 1(7) ;  skip setting true
76 : LDC  1, 1(0) ;  true
77 : ADD  3, 1, 0 ;  Save left operand
78 : LD   1, 1(5) ;  Load parameter 'diff' into R1
79 : ADD  3, 1, 0 ;  Save left operand
80 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
81 : ADD  2, 3, 0 ;  restore left operand
82 : SUB  1, 2, 1 ;  left - right for equality check
83 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
84 : LDC  1, 0(0) ;  false
85 : LDA  7, 1(7) ;  skip setting true
86 : LDC  1, 1(0) ;  true
87 : ADD  2, 3, 0 ;  restore left operand
88 : ADD  1, 2, 1 ;  R1 = left OR right
89 : ADD  3, 1, 0 ;  Save left operand
90 : LD   1, 1(5) ;  Load parameter 'diff' into R1
91 : ADD  3, 1, 0 ;  Save left operand
92 : LDC  1, 7(0) ;  Load boolean-literal value into register 1
93 : SUB  1, 0, 1 ;  Negate value in R1
94 : ADD  2, 3, 0 ;  restore left operand
95 : SUB  1, 2, 1 ;  left - right for equality check
96 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
97 : LDC  1, 0(0) ;  false
98 : LDA  7, 1(7) ;  skip setting true
99 : LDC  1, 1(0) ;  true
100 : ADD  2, 3, 0 ;  restore left operand
101 : ADD  1, 2, 1 ;  R1 = left OR right
102 : ADD  3, 1, 0 ;  Save left operand
103 : LD   1, 1(5) ;  Load parameter 'diff' into R1
104 : ADD  3, 1, 0 ;  Save left operand
105 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
106 : SUB  1, 0, 1 ;  Negate value in R1
107 : ADD  2, 3, 0 ;  restore left operand
108 : SUB  1, 2, 1 ;  left - right for equality check
109 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
110 : LDC  1, 0(0) ;  false
111 : LDA  7, 1(7) ;  skip setting true
112 : LDC  1, 1(0) ;  true
113 : ADD  2, 3, 0 ;  restore left operand
114 : ADD  1, 2, 1 ;  R1 = left OR right
115 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
116 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
117 : LDA  7, 143(0) ;  Skip ELSE block
118 : LD   1, 1(5) ;  Load parameter 'diff' into R1
119 : ADD  3, 1, 0 ;  Save left operand
120 : LDC  1, 14(0) ;  Load boolean-literal value into register 1
121 : ADD  2, 3, 0 ;  restore left operand
122 : SUB  1, 2, 1 ;  left - right for less-than check
123 : JLT  1, 2(7) ;  If R1 < 0, jump to true
124 : LDC  1, 0(0) ;  false
125 : LDA  7, 1(7) ;  skip setting true
126 : LDC  1, 1(0) ;  true
127 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
128 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
129 : LDA  7, 143(0) ;  Skip ELSE block
130 : LD   1, 1(5) ;  Load parameter 'diff' into R1
131 : ST   1, 3(5) ;  Spill Temporary
132 : LDA 4, 3(5) ; Restore Callee frame base
133 : LD   1, 3(5) ;  Restore Temporary
134 : ST 1, 1(4) ;  Store argument 0 into callee frame
135 : LDA 4, 3(5) ; Restore Call frame base
136 : LDA 6, 140(0) ;  Compute return address
137 : ST 6, 0(4) ;  Store return address in callee frame
138 : ADD 5, 4, 0 ;  Update pointer
139 : LDA 7, 11(0) ;  Call main
140 : LD 1, 2(5) ;  Load callee return value into R1
141 : LDC 4, 3(0) ;  Load frame size
142 : SUB 5, 5, 4 ;  Restore pointer
143 : ST   1, 2(5) ;  Store function result into stack frame
144 : LD   6, 0(5) ;  Load return address
145 : LDA  7, 0(6) ;  Return to caller
146 : LD   1, 1(5) ;  Load parameter 'left' into R1
147 : ADD  3, 1, 0 ;  Save left operand
148 : LD   1, 2(5) ;  Load parameter 'right' into R1
149 : ADD  3, 1, 0 ;  Save left operand
150 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
151 : ADD  2, 3, 0 ;  restore left operand
152 : MUL  1, 2, 1 ;  R1 = left * right
153 : ADD  2, 3, 0 ;  restore left operand
154 : SUB  1, 2, 1 ;  R1 = left - right
155 : ST   1, 4(5) ;  Spill Temporary
156 : LDA 4, 3(5) ; Restore Callee frame base
157 : LD   1, 4(5) ;  Restore Temporary
158 : ST 1, 1(4) ;  Store argument 0 into callee frame
159 : LDA 4, 3(5) ; Restore Call frame base
160 : LDA 6, 164(0) ;  Compute return address
161 : ST 6, 0(4) ;  Store return address in callee frame
162 : ADD 5, 4, 0 ;  Update pointer
163 : LDA 7, 68(0) ;  Call divisibleByDifference
164 : LD 1, 2(5) ;  Load callee return value into R1
165 : LDC 4, 3(0) ;  Load frame size
166 : SUB 5, 5, 4 ;  Restore pointer
167 : ST   1, 3(5) ;  Store function result into stack frame
168 : LD   6, 0(5) ;  Load return address
169 : LDA  7, 0(6) ;  Return to caller
