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
10 : ST   1, 2(5) ;  Spill Temporary
11 : LDC  1, 20(0) ;  Load boolean-literal value into register 1
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDA 4, 4(5) ; Restore Callee frame base
14 : LD   1, 3(5) ;  Restore Temporary
15 : ST 1, 2(4) ;  Store argument 1 into callee frame
16 : LD   1, 2(5) ;  Restore Temporary
17 : ST 1, 1(4) ;  Store argument 0 into callee frame
18 : LDA 4, 4(5) ; Restore Call frame base
19 : LDA 6, 23(0) ;  Compute return address
20 : ST 6, 0(4) ;  Store return address in callee frame
21 : ADD 5, 4, 0 ;  Update pointer
22 : LDA 7, 30(0) ;  Call sumPrimes
23 : LD 1, 3(5) ;  Load callee return value into R1
24 : LDC 4, 4(0) ;  Load frame size
25 : SUB 5, 5, 4 ;  Restore pointer
26 : ST 1, 1(5) ;  Store result into current frame's return slot
27 : LD   1, 1(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 2(5) ;  Load parameter 'b' into R1
31 : ADD  3, 1, 0 ;  Save left operand
32 : LD   1, 1(5) ;  Load parameter 'a' into R1
33 : ADD  2, 3, 0 ;  restore left operand
34 : SUB  1, 2, 1 ;  left - right for less-than check
35 : JLT  1, 2(7) ;  If R1 < 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
41 : LDA  7, 103(0) ;  Skip ELSE block
42 : LD   1, 1(5) ;  Load parameter 'a' into R1
43 : ST   1, 4(5) ;  Spill Temporary
44 : LDA 4, 3(5) ; Restore Callee frame base
45 : LD   1, 4(5) ;  Restore Temporary
46 : ST 1, 1(4) ;  Store argument 0 into callee frame
47 : LDA 4, 3(5) ; Restore Call frame base
48 : LDA 6, 52(0) ;  Compute return address
49 : ST 6, 0(4) ;  Store return address in callee frame
50 : ADD 5, 4, 0 ;  Update pointer
51 : LDA 7, 106(0) ;  Call isPrime
52 : LD 1, 2(5) ;  Load callee return value into R1
53 : LDC 4, 3(0) ;  Load frame size
54 : SUB 5, 5, 4 ;  Restore pointer
55 : JEQ  1, 82(0) ;  If condition is false, jump to ELSE
56 : LD   1, 1(5) ;  Load parameter 'a' into R1
57 : ST   1, 4(5) ;  Spill Temporary
58 : LD   1, 1(5) ;  Load parameter 'a' into R1
59 : ADD  3, 1, 0 ;  Save left operand
60 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
61 : ADD  2, 3, 0 ;  restore left operand
62 : ADD  1, 2, 1 ;  R1 = left + right
63 : ST   1, 5(5) ;  Spill Temporary
64 : LD   1, 2(5) ;  Load parameter 'b' into R1
65 : ST   1, 6(5) ;  Spill Temporary
66 : LDA 4, 4(5) ; Restore Callee frame base
67 : LD   1, 6(5) ;  Restore Temporary
68 : ST 1, 2(4) ;  Store argument 1 into callee frame
69 : LD   1, 5(5) ;  Restore Temporary
70 : ST 1, 1(4) ;  Store argument 0 into callee frame
71 : LDA 4, 4(5) ; Restore Call frame base
72 : LDA 6, 76(0) ;  Compute return address
73 : ST 6, 0(4) ;  Store return address in callee frame
74 : ADD 5, 4, 0 ;  Update pointer
75 : LDA 7, 30(0) ;  Call sumPrimes
76 : LD 1, 3(5) ;  Load callee return value into R1
77 : LDC 4, 4(0) ;  Load frame size
78 : SUB 5, 5, 4 ;  Restore pointer
79 : LD   2, 4(5) ;  Restore Temporary
80 : ADD  1, 2, 1 ;  R1 = left + right
81 : LDA  7, 103(0) ;  Skip ELSE block
82 : LD   1, 1(5) ;  Load parameter 'a' into R1
83 : ADD  3, 1, 0 ;  Save left operand
84 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
85 : ADD  2, 3, 0 ;  restore left operand
86 : ADD  1, 2, 1 ;  R1 = left + right
87 : ST   1, 4(5) ;  Spill Temporary
88 : LD   1, 2(5) ;  Load parameter 'b' into R1
89 : ST   1, 5(5) ;  Spill Temporary
90 : LDA 4, 4(5) ; Restore Callee frame base
91 : LD   1, 5(5) ;  Restore Temporary
92 : ST 1, 2(4) ;  Store argument 1 into callee frame
93 : LD   1, 4(5) ;  Restore Temporary
94 : ST 1, 1(4) ;  Store argument 0 into callee frame
95 : LDA 4, 4(5) ; Restore Call frame base
96 : LDA 6, 100(0) ;  Compute return address
97 : ST 6, 0(4) ;  Store return address in callee frame
98 : ADD 5, 4, 0 ;  Update pointer
99 : LDA 7, 30(0) ;  Call sumPrimes
100 : LD 1, 3(5) ;  Load callee return value into R1
101 : LDC 4, 4(0) ;  Load frame size
102 : SUB 5, 5, 4 ;  Restore pointer
103 : ST   1, 3(5) ;  Store function result into stack frame
104 : LD   6, 0(5) ;  Load return address
105 : LDA  7, 0(6) ;  Return to caller
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ADD  3, 1, 0 ;  Save left operand
108 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
109 : ADD  2, 3, 0 ;  restore left operand
110 : SUB  1, 2, 1 ;  left - right for less-than check
111 : JLT  1, 2(7) ;  If R1 < 0, jump to true
112 : LDC  1, 0(0) ;  false
113 : LDA  7, 1(7) ;  skip setting true
114 : LDC  1, 1(0) ;  true
115 : JEQ  1, 118(0) ;  If condition is false, jump to ELSE
116 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
117 : LDA  7, 191(0) ;  Skip ELSE block
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ADD  3, 1, 0 ;  Save left operand
120 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
121 : ADD  2, 3, 0 ;  restore left operand
122 : SUB  1, 2, 1 ;  left - right for equality check
123 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
124 : LDC  1, 0(0) ;  false
125 : LDA  7, 1(7) ;  skip setting true
126 : LDC  1, 1(0) ;  true
127 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
128 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
129 : LDA  7, 191(0) ;  Skip ELSE block
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST   1, 3(5) ;  Spill Temporary
132 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
133 : ST   1, 4(5) ;  Spill Temporary
134 : LDA 4, 4(5) ; Restore Callee frame base
135 : LD   1, 4(5) ;  Restore Temporary
136 : ST 1, 2(4) ;  Store argument 1 into callee frame
137 : LD   1, 3(5) ;  Restore Temporary
138 : ST 1, 1(4) ;  Store argument 0 into callee frame
139 : LDA 4, 4(5) ; Restore Call frame base
140 : LDA 6, 144(0) ;  Compute return address
141 : ST 6, 0(4) ;  Store return address in callee frame
142 : ADD 5, 4, 0 ;  Update pointer
143 : LDA 7, 194(0) ;  Call divisible
144 : LD 1, 3(5) ;  Load callee return value into R1
145 : LDC 4, 4(0) ;  Load frame size
146 : SUB 5, 5, 4 ;  Restore pointer
147 : ST   1, 3(5) ;  Spill Temporary
148 : LD   1, 1(5) ;  Load parameter 'n' into R1
149 : ST   1, 4(5) ;  Spill Temporary
150 : LDC  1, 3(0) ;  Load boolean-literal value into register 1
151 : ST   1, 5(5) ;  Spill Temporary
152 : LDA 4, 4(5) ; Restore Callee frame base
153 : LD   1, 5(5) ;  Restore Temporary
154 : ST 1, 2(4) ;  Store argument 1 into callee frame
155 : LD   1, 4(5) ;  Restore Temporary
156 : ST 1, 1(4) ;  Store argument 0 into callee frame
157 : LDA 4, 4(5) ; Restore Call frame base
158 : LDA 6, 162(0) ;  Compute return address
159 : ST 6, 0(4) ;  Store return address in callee frame
160 : ADD 5, 4, 0 ;  Update pointer
161 : LDA 7, 194(0) ;  Call divisible
162 : LD 1, 3(5) ;  Load callee return value into R1
163 : LDC 4, 4(0) ;  Load frame size
164 : SUB 5, 5, 4 ;  Restore pointer
165 : LD   2, 3(5) ;  Restore Temporary
166 : ADD  1, 2, 1 ;  R1 = left OR right
167 : ST   1, 3(5) ;  Spill Temporary
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ST   1, 4(5) ;  Spill Temporary
170 : LDC  1, 5(0) ;  Load boolean-literal value into register 1
171 : ST   1, 5(5) ;  Spill Temporary
172 : LDA 4, 4(5) ; Restore Callee frame base
173 : LD   1, 5(5) ;  Restore Temporary
174 : ST 1, 2(4) ;  Store argument 1 into callee frame
175 : LD   1, 4(5) ;  Restore Temporary
176 : ST 1, 1(4) ;  Store argument 0 into callee frame
177 : LDA 4, 4(5) ; Restore Call frame base
178 : LDA 6, 182(0) ;  Compute return address
179 : ST 6, 0(4) ;  Store return address in callee frame
180 : ADD 5, 4, 0 ;  Update pointer
181 : LDA 7, 194(0) ;  Call divisible
182 : LD 1, 3(5) ;  Load callee return value into R1
183 : LDC 4, 4(0) ;  Load frame size
184 : SUB 5, 5, 4 ;  Restore pointer
185 : LD   2, 3(5) ;  Restore Temporary
186 : ADD  1, 2, 1 ;  R1 = left OR right
187 : JEQ  1, 190(0) ;  If condition is false, jump to ELSE
188 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
189 : LDA  7, 191(0) ;  Skip ELSE block
190 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
191 : ST   1, 2(5) ;  Store function result into stack frame
192 : LD   6, 0(5) ;  Load return address
193 : LDA  7, 0(6) ;  Return to caller
194 : LD   1, 1(5) ;  Load parameter 'x' into R1
195 : ADD  3, 1, 0 ;  Save left operand
196 : LD   1, 2(5) ;  Load parameter 'y' into R1
197 : ADD  2, 3, 0 ;  restore left operand
198 : DIV  1, 2, 1 ;  R1 = left / right
199 : ADD  3, 1, 0 ;  Save left operand
200 : LD   1, 2(5) ;  Load parameter 'y' into R1
201 : ADD  2, 3, 0 ;  restore left operand
202 : MUL  1, 2, 1 ;  R1 = left * right
203 : ADD  3, 1, 0 ;  Save left operand
204 : LD   1, 1(5) ;  Load parameter 'x' into R1
205 : ADD  2, 3, 0 ;  restore left operand
206 : SUB  1, 2, 1 ;  left - right for equality check
207 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
208 : LDC  1, 0(0) ;  false
209 : LDA  7, 1(7) ;  skip setting true
210 : LDC  1, 1(0) ;  true
211 : JEQ  1, 214(0) ;  If condition is false, jump to ELSE
212 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
213 : LDA  7, 215(0) ;  Skip ELSE block
214 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
215 : ST   1, 3(5) ;  Store function result into stack frame
216 : LD   6, 0(5) ;  Load return address
217 : LDA  7, 0(6) ;  Return to caller
