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
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  3, 1, 0 ;  Save left operand
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
23 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
24 : ST   1, 4(5) ;  Spill Temporary
25 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
26 : ST   1, 5(5) ;  Spill Temporary
27 : LDA 4, 4(5) ; Restore Callee frame base
28 : LD   1, 5(5) ;  Restore Temporary
29 : ST 1, 2(4) ;  Store argument 1 into callee frame
30 : LD   1, 4(5) ;  Restore Temporary
31 : ST 1, 1(4) ;  Store argument 0 into callee frame
32 : LDA 4, 4(5) ; Restore Call frame base
33 : LDA 6, 37(0) ;  Compute return address
34 : ST 6, 0(4) ;  Store return address in callee frame
35 : ADD 5, 4, 0 ;  Update pointer
36 : LDA 7, 177(0) ;  Call factor
37 : LD 1, 3(5) ;  Load callee return value into R1
38 : LDC 4, 4(0) ;  Load frame size
39 : SUB 5, 5, 4 ;  Restore pointer
40 : ST 1, 3(5) ;  Store result into current frame's return slot
41 : LDA  7, 60(0) ;  Skip ELSE block
42 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
43 : ST   1, 4(5) ;  Spill Temporary
44 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
45 : ST   1, 5(5) ;  Spill Temporary
46 : LDA 4, 4(5) ; Restore Callee frame base
47 : LD   1, 5(5) ;  Restore Temporary
48 : ST 1, 2(4) ;  Store argument 1 into callee frame
49 : LD   1, 4(5) ;  Restore Temporary
50 : ST 1, 1(4) ;  Store argument 0 into callee frame
51 : LDA 4, 4(5) ; Restore Call frame base
52 : LDA 6, 56(0) ;  Compute return address
53 : ST 6, 0(4) ;  Store return address in callee frame
54 : ADD 5, 4, 0 ;  Update pointer
55 : LDA 7, 177(0) ;  Call factor
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDC 4, 4(0) ;  Load frame size
58 : SUB 5, 5, 4 ;  Restore pointer
59 : ST 1, 3(5) ;  Store result into current frame's return slot
60 : LD   1, 3(5) ;  Load return value into register 1
61 : LD  6, 0(5) ;  Load return address for main function into register 6
62 : LDA  7, 0(6) ;  Jump to return address of main function
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : ADD  3, 1, 0 ;  Save left operand
65 : LD   1, 2(5) ;  Load parameter 'b' into R1
66 : ADD  2, 3, 0 ;  restore left operand
67 : SUB  1, 2, 1 ;  left - right for less-than check
68 : JLT  1, 2(7) ;  If R1 < 0, jump to true
69 : LDC  1, 0(0) ;  false
70 : LDA  7, 1(7) ;  skip setting true
71 : LDC  1, 1(0) ;  true
72 : JEQ  1, 75(0) ;  If condition is false, jump to ELSE
73 : LD   1, 1(5) ;  Load parameter 'a' into R1
74 : LDA  7, 96(0) ;  Skip ELSE block
75 : LD   1, 1(5) ;  Load parameter 'a' into R1
76 : ADD  3, 1, 0 ;  Save left operand
77 : LD   1, 2(5) ;  Load parameter 'b' into R1
78 : ADD  2, 3, 0 ;  restore left operand
79 : SUB  1, 2, 1 ;  R1 = left - right
80 : ST   1, 4(5) ;  Spill Temporary
81 : LD   1, 2(5) ;  Load parameter 'b' into R1
82 : ST   1, 5(5) ;  Spill Temporary
83 : LDA 4, 4(5) ; Restore Callee frame base
84 : LD   1, 5(5) ;  Restore Temporary
85 : ST 1, 2(4) ;  Store argument 1 into callee frame
86 : LD   1, 4(5) ;  Restore Temporary
87 : ST 1, 1(4) ;  Store argument 0 into callee frame
88 : LDA 4, 4(5) ; Restore Call frame base
89 : LDA 6, 93(0) ;  Compute return address
90 : ST 6, 0(4) ;  Store return address in callee frame
91 : ADD 5, 4, 0 ;  Update pointer
92 : LDA 7, 63(0) ;  Call remainder
93 : LD 1, 3(5) ;  Load callee return value into R1
94 : LDC 4, 4(0) ;  Load frame size
95 : SUB 5, 5, 4 ;  Restore pointer
96 : ST   1, 3(5) ;  Store function result into stack frame
97 : LD   6, 0(5) ;  Load return address
98 : LDA  7, 0(6) ;  Return to caller
99 : LD   1, 2(5) ;  Load parameter 'b' into R1
100 : ADD  3, 1, 0 ;  Save left operand
101 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
102 : ADD  2, 3, 0 ;  restore left operand
103 : SUB  1, 2, 1 ;  left - right for equality check
104 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
105 : LDC  1, 0(0) ;  false
106 : LDA  7, 1(7) ;  skip setting true
107 : LDC  1, 1(0) ;  true
108 : JEQ  1, 111(0) ;  If condition is false, jump to ELSE
109 : LD   1, 1(5) ;  Load parameter 'a' into R1
110 : LDA  7, 144(0) ;  Skip ELSE block
111 : LD   1, 2(5) ;  Load parameter 'b' into R1
112 : ST   1, 4(5) ;  Spill Temporary
113 : LD   1, 1(5) ;  Load parameter 'a' into R1
114 : ST   1, 5(5) ;  Spill Temporary
115 : LD   1, 2(5) ;  Load parameter 'b' into R1
116 : ST   1, 6(5) ;  Spill Temporary
117 : LDA 4, 4(5) ; Restore Callee frame base
118 : LD   1, 6(5) ;  Restore Temporary
119 : ST 1, 2(4) ;  Store argument 1 into callee frame
120 : LD   1, 5(5) ;  Restore Temporary
121 : ST 1, 1(4) ;  Store argument 0 into callee frame
122 : LDA 4, 4(5) ; Restore Call frame base
123 : LDA 6, 127(0) ;  Compute return address
124 : ST 6, 0(4) ;  Store return address in callee frame
125 : ADD 5, 4, 0 ;  Update pointer
126 : LDA 7, 63(0) ;  Call remainder
127 : LD 1, 3(5) ;  Load callee return value into R1
128 : LDC 4, 4(0) ;  Load frame size
129 : SUB 5, 5, 4 ;  Restore pointer
130 : ST   1, 5(5) ;  Spill Temporary
131 : LDA 4, 4(5) ; Restore Callee frame base
132 : LD   1, 5(5) ;  Restore Temporary
133 : ST 1, 2(4) ;  Store argument 1 into callee frame
134 : LD   1, 4(5) ;  Restore Temporary
135 : ST 1, 1(4) ;  Store argument 0 into callee frame
136 : LDA 4, 4(5) ; Restore Call frame base
137 : LDA 6, 141(0) ;  Compute return address
138 : ST 6, 0(4) ;  Store return address in callee frame
139 : ADD 5, 4, 0 ;  Update pointer
140 : LDA 7, 99(0) ;  Call gcd
141 : LD 1, 3(5) ;  Load callee return value into R1
142 : LDC 4, 4(0) ;  Load frame size
143 : SUB 5, 5, 4 ;  Restore pointer
144 : ST   1, 3(5) ;  Store function result into stack frame
145 : LD   6, 0(5) ;  Load return address
146 : LDA  7, 0(6) ;  Return to caller
147 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
148 : ADD  3, 1, 0 ;  Save left operand
149 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
150 : ADD  2, 3, 0 ;  restore left operand
151 : DIV  1, 2, 1 ;  R1 = left / right
152 : LDA  4, 3(5) ;  Update DMEM pointer
153 : LDA 6, 157(0) ;  Compute return address
154 : ST   6, 0(4) ;  Store return address
155 : ADD  5, 4, 0 ;  Updated Pointer
156 : LDA  7, 10(0) ; Call print
157 : LDC  4, 3(0) ;  Load frame size
158 : SUB  5, 5, 4 ;  Restore pointer
159 : ST   1, 4(5) ;  Store function result into stack frame
160 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
161 : ADD  3, 1, 0 ;  Save left operand
162 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
163 : ADD  2, 3, 0 ;  restore left operand
164 : DIV  1, 2, 1 ;  R1 = left / right
165 : LDA  4, 3(5) ;  Update DMEM pointer
166 : LDA 6, 170(0) ;  Compute return address
167 : ST   6, 0(4) ;  Store return address
168 : ADD  5, 4, 0 ;  Updated Pointer
169 : LDA  7, 10(0) ; Call print
170 : LDC  4, 3(0) ;  Load frame size
171 : SUB  5, 5, 4 ;  Restore pointer
172 : ST   1, 4(5) ;  Store function result into stack frame
173 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
174 : ST   1, 4(5) ;  Store function result into stack frame
175 : LD   6, 0(5) ;  Load return address
176 : LDA  7, 0(6) ;  Return to caller
177 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
178 : ST   1, 4(5) ;  Spill Temporary
179 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
180 : ST   1, 5(5) ;  Spill Temporary
181 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
182 : ST   1, 6(5) ;  Spill Temporary
183 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
184 : ST   1, 7(5) ;  Spill Temporary
185 : LDA 4, 4(5) ; Restore Callee frame base
186 : LD   1, 7(5) ;  Restore Temporary
187 : ST 1, 2(4) ;  Store argument 1 into callee frame
188 : LD   1, 6(5) ;  Restore Temporary
189 : ST 1, 1(4) ;  Store argument 0 into callee frame
190 : LDA 4, 4(5) ; Restore Call frame base
191 : LDA 6, 195(0) ;  Compute return address
192 : ST 6, 0(4) ;  Store return address in callee frame
193 : ADD 5, 4, 0 ;  Update pointer
194 : LDA 7, 99(0) ;  Call gcd
195 : LD 1, 3(5) ;  Load callee return value into R1
196 : LDC 4, 4(0) ;  Load frame size
197 : SUB 5, 5, 4 ;  Restore pointer
198 : ST   1, 6(5) ;  Spill Temporary
199 : LDA 4, 5(5) ; Restore Callee frame base
200 : LD   1, 6(5) ;  Restore Temporary
201 : ST 1, 3(4) ;  Store argument 2 into callee frame
202 : LD   1, 5(5) ;  Restore Temporary
203 : ST 1, 2(4) ;  Store argument 1 into callee frame
204 : LD   1, 4(5) ;  Restore Temporary
205 : ST 1, 1(4) ;  Store argument 0 into callee frame
206 : LDA 4, 5(5) ; Restore Call frame base
207 : LDA 6, 211(0) ;  Compute return address
208 : ST 6, 0(4) ;  Store return address in callee frame
209 : ADD 5, 4, 0 ;  Update pointer
210 : LDA 7, 147(0) ;  Call displayAndPrint
211 : LD 1, 4(5) ;  Load callee return value into R1
212 : LDC 4, 5(0) ;  Load frame size
213 : SUB 5, 5, 4 ;  Restore pointer
214 : ST   1, 3(5) ;  Store function result into stack frame
215 : LD   6, 0(5) ;  Load return address
216 : LDA  7, 0(6) ;  Return to caller
