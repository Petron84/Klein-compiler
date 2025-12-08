0 : LDC  5, 1(0) ;  Set DMEM pointer to main stack frame
1 : LDA  6, 2(7) ;  Calculate return address
2 : ST   6, 0(5) ;  Store return address in main stack frame
3 : LDA  7, 9(0) ;  Load address of main IMEM block - branch to function
4 : OUT  1, 0, 0 ;  Return result
5 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
6 : OUT  1, 0, 0 ;  Hardcoded print function
7 : LD   6, 0(5) ;  Load return addess from stack frame.
8 : LDA  7, 0(6) ;  Jump to return address.
9 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
10 : LDA  4, 2(5) ; Restore Callee frame base
11 : ST 1, 1(5) ;  Store argument 0 into callee frame
12 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
13 : LDA  4, 2(5) ; Restore Callee frame base
14 : ST 1, 2(5) ;  Store argument 1 into callee frame
15 : LDA  4, 2(5) ; Restore Call frame base
16 : LDA 6, 20(0) ;  Compute return address
17 : ST 6, 0(4) ;  Store return address in callee frame
18 : ADD  5, 4, 0 ;  Update pointer
19 : LDA 7, 27(0) ;  Call sumPrimes
20 : LD 1, 3(5) ;  Load callee return value into R1
21 : LDC  4, 2(0) ;  Load frame size
22 : SUB  5, 5, 4 ;  Restore pointer
23 : ST 1, 1(5) ;  Store result into current frame's return slot
24 : LD   1, 1(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 2(5) ;  Load parameter 'b' into R1
28 : ADD  3, 1, 0 ;  Store left operand into temporary register
29 : LD   1, 1(5) ;  Load parameter 'a' into R1
30 : ADD  2, 3, 0 ;  Restore left operand
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
38 : LDA  7, 92(0) ;  Skip ELSE block
39 : LD   1, 1(5) ;  Load parameter 'a' into R1
40 : LDA  4, 4(5) ; Restore Callee frame base
41 : ST 1, 1(5) ;  Store argument 0 into callee frame
42 : LDA  4, 4(5) ; Restore Call frame base
43 : LDA 6, 47(0) ;  Compute return address
44 : ST 6, 0(4) ;  Store return address in callee frame
45 : ADD  5, 4, 0 ;  Update pointer
46 : LDA 7, 95(0) ;  Call isPrime
47 : LD 1, 2(5) ;  Load callee return value into R1
48 : LDC  4, 4(0) ;  Load frame size
49 : SUB  5, 5, 4 ;  Restore pointer
50 : JEQ  1, 74(0) ;  If condition is false, jump to ELSE
51 : LD   1, 1(5) ;  Load parameter 'a' into R1
52 : ADD  3, 1, 0 ;  Store left operand into temporary register
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ADD  3, 1, 0 ;  Store left operand into temporary register
55 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
56 : ADD  2, 3, 0 ;  Restore left operand
57 : ADD  1, 2, 1 ;  R1 = left + right
58 : LDA  4, 4(5) ; Restore Callee frame base
59 : ST 1, 1(5) ;  Store argument 0 into callee frame
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : LDA  4, 4(5) ; Restore Callee frame base
62 : ST 1, 2(5) ;  Store argument 1 into callee frame
63 : LDA  4, 4(5) ; Restore Call frame base
64 : LDA 6, 68(0) ;  Compute return address
65 : ST 6, 0(4) ;  Store return address in callee frame
66 : ADD  5, 4, 0 ;  Update pointer
67 : LDA 7, 27(0) ;  Call sumPrimes
68 : LD 1, 3(5) ;  Load callee return value into R1
69 : LDC  4, 4(0) ;  Load frame size
70 : SUB  5, 5, 4 ;  Restore pointer
71 : ADD  2, 3, 0 ;  Restore left operand
72 : ADD  1, 2, 1 ;  R1 = left + right
73 : LDA  7, 92(0) ;  Skip ELSE block
74 : LD   1, 1(5) ;  Load parameter 'a' into R1
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : ADD  1, 2, 1 ;  R1 = left + right
79 : LDA  4, 4(5) ; Restore Callee frame base
80 : ST 1, 1(5) ;  Store argument 0 into callee frame
81 : LD   1, 2(5) ;  Load parameter 'b' into R1
82 : LDA  4, 4(5) ; Restore Callee frame base
83 : ST 1, 2(5) ;  Store argument 1 into callee frame
84 : LDA  4, 4(5) ; Restore Call frame base
85 : LDA 6, 89(0) ;  Compute return address
86 : ST 6, 0(4) ;  Store return address in callee frame
87 : ADD  5, 4, 0 ;  Update pointer
88 : LDA 7, 27(0) ;  Call sumPrimes
89 : LD 1, 3(5) ;  Load callee return value into R1
90 : LDC  4, 4(0) ;  Load frame size
91 : SUB  5, 5, 4 ;  Restore pointer
92 : ST   1, 3(5) ;  Store function result into stack frame
93 : LD   6, 0(5) ;  Load return address
94 : LDA  7, 0(6) ;  Return to caller
95 : LD   1, 1(5) ;  Load parameter 'n' into R1
96 : ADD  3, 1, 0 ;  Store left operand into temporary register
97 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
98 : ADD  2, 3, 0 ;  Restore left operand
99 : SUB  1, 2, 1 ;  left - right for less-than check
100 : JLT  1, 2(7) ;  If R1 < 0, jump to true
101 : LDC  1, 0(0) ;  false
102 : LDA  7, 1(7) ;  skip setting true
103 : LDC  1, 1(0) ;  true
104 : JEQ  1, 107(0) ;  If condition is false, jump to ELSE
105 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
106 : LDA  7, 171(0) ;  Skip ELSE block
107 : LD   1, 1(5) ;  Load parameter 'n' into R1
108 : ADD  3, 1, 0 ;  Store left operand into temporary register
109 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
110 : ADD  2, 3, 0 ;  Restore left operand
111 : SUB  1, 2, 1 ;  left - right for equality check
112 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
113 : LDC  1, 0(0) ;  false
114 : LDA  7, 1(7) ;  skip setting true
115 : LDC  1, 1(0) ;  true
116 : JEQ  1, 119(0) ;  If condition is false, jump to ELSE
117 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
118 : LDA  7, 171(0) ;  Skip ELSE block
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : LDA  4, 3(5) ; Restore Callee frame base
121 : ST 1, 1(5) ;  Store argument 0 into callee frame
122 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
123 : LDA  4, 3(5) ; Restore Callee frame base
124 : ST 1, 2(5) ;  Store argument 1 into callee frame
125 : LDA  4, 3(5) ; Restore Call frame base
126 : LDA 6, 130(0) ;  Compute return address
127 : ST 6, 0(4) ;  Store return address in callee frame
128 : ADD  5, 4, 0 ;  Update pointer
129 : LDA 7, 174(0) ;  Call divisible
130 : LD 1, 3(5) ;  Load callee return value into R1
131 : LDC  4, 3(0) ;  Load frame size
132 : SUB  5, 5, 4 ;  Restore pointer
133 : ADD  3, 1, 0 ;  Store left operand into temporary register
134 : LD   1, 1(5) ;  Load parameter 'n' into R1
135 : LDA  4, 3(5) ; Restore Callee frame base
136 : ST 1, 1(5) ;  Store argument 0 into callee frame
137 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
138 : LDA  4, 3(5) ; Restore Callee frame base
139 : ST 1, 2(5) ;  Store argument 1 into callee frame
140 : LDA  4, 3(5) ; Restore Call frame base
141 : LDA 6, 145(0) ;  Compute return address
142 : ST 6, 0(4) ;  Store return address in callee frame
143 : ADD  5, 4, 0 ;  Update pointer
144 : LDA 7, 174(0) ;  Call divisible
145 : LD 1, 3(5) ;  Load callee return value into R1
146 : LDC  4, 3(0) ;  Load frame size
147 : SUB  5, 5, 4 ;  Restore pointer
148 : ADD  2, 3, 0 ;  Restore left operand
149 : ADD  1, 2, 1 ;  R1 = left OR right
150 : ADD  3, 1, 0 ;  Store left operand into temporary register
151 : LD   1, 1(5) ;  Load parameter 'n' into R1
152 : LDA  4, 3(5) ; Restore Callee frame base
153 : ST 1, 1(5) ;  Store argument 0 into callee frame
154 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
155 : LDA  4, 3(5) ; Restore Callee frame base
156 : ST 1, 2(5) ;  Store argument 1 into callee frame
157 : LDA  4, 3(5) ; Restore Call frame base
158 : LDA 6, 162(0) ;  Compute return address
159 : ST 6, 0(4) ;  Store return address in callee frame
160 : ADD  5, 4, 0 ;  Update pointer
161 : LDA 7, 174(0) ;  Call divisible
162 : LD 1, 3(5) ;  Load callee return value into R1
163 : LDC  4, 3(0) ;  Load frame size
164 : SUB  5, 5, 4 ;  Restore pointer
165 : ADD  2, 3, 0 ;  Restore left operand
166 : ADD  1, 2, 1 ;  R1 = left OR right
167 : JEQ  1, 170(0) ;  If condition is false, jump to ELSE
168 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
169 : LDA  7, 171(0) ;  Skip ELSE block
170 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
171 : ST   1, 2(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
174 : LD   1, 1(5) ;  Load parameter 'x' into R1
175 : ADD  3, 1, 0 ;  Store left operand into temporary register
176 : LD   1, 2(5) ;  Load parameter 'y' into R1
177 : ADD  2, 3, 0 ;  Restore left operand
178 : DIV  1, 2, 1 ;  R1 = left / right
179 : ADD  3, 1, 0 ;  Store left operand into temporary register
180 : LD   1, 2(5) ;  Load parameter 'y' into R1
181 : ADD  2, 3, 0 ;  Restore left operand
182 : MUL  1, 2, 1 ;  R1 = left * right
183 : ADD  3, 1, 0 ;  Store left operand into temporary register
184 : LD   1, 1(5) ;  Load parameter 'x' into R1
185 : ADD  2, 3, 0 ;  Restore left operand
186 : SUB  1, 2, 1 ;  left - right for equality check
187 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
188 : LDC  1, 0(0) ;  false
189 : LDA  7, 1(7) ;  skip setting true
190 : LDC  1, 1(0) ;  true
191 : JEQ  1, 194(0) ;  If condition is false, jump to ELSE
192 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
193 : LDA  7, 195(0) ;  Skip ELSE block
194 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
195 : ST   1, 3(5) ;  Store function result into stack frame
196 : LD   6, 0(5) ;  Load return address
197 : LDA  7, 0(6) ;  Return to caller
