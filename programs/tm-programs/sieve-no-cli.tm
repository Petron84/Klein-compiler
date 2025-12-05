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
11 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
15 : LDA  3, 3(5) ; Restore Callee frame base
16 : ST 1, 2(3) ;  Store argument 1 into callee frame
17 : LDA  3, 3(5) ; Restore Call frame base
18 : LDA 6, 22(0) ;  Compute return address
19 : ST 6, 0(3) ;  Store return address in callee frame
20 : ADD  5, 3, 0 ;  Update pointer
21 : LDA 7, 193(0) ;  Call sieveAt
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 3(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 2(5) ;  Store result into current frame's return slot
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'num' into R1
30 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
31 : LD   1, 2(5) ;  Load parameter 'den' into R1
32 : SUB  1, 2, 1 ;  left - right for less-than check
33 : JLT  1, 2(7) ;  If R1 < 0, jump to true
34 : LDC  1, 0(0) ;  false
35 : LDA  7, 1(7) ;  skip setting true
36 : LDC  1, 1(0) ;  true
37 : JEQ  1, 40(0) ;  If condition is false, jump to ELSE
38 : LD   1, 1(5) ;  Load parameter 'num' into R1
39 : LDA  7, 57(0) ;  Skip ELSE block
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : SUB  1, 2, 1 ;  R1 = left - right
44 : LDA  3, 4(5) ; Restore Callee frame base
45 : ST 1, 1(3) ;  Store argument 0 into callee frame
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : LDA  3, 4(5) ; Restore Callee frame base
48 : ST 1, 2(3) ;  Store argument 1 into callee frame
49 : LDA  3, 4(5) ; Restore Call frame base
50 : LDA 6, 54(0) ;  Compute return address
51 : ST 6, 0(3) ;  Store return address in callee frame
52 : ADD  5, 3, 0 ;  Update pointer
53 : LDA 7, 29(0) ;  Call rem
54 : LD 1, 3(5) ;  Load callee return value into R1
55 : LDC  4, 4(0) ;  Load frame size
56 : SUB  5, 5, 4 ;  Restore pointer
57 : ST   1, 3(5) ;  Store function result into stack frame
58 : LD   6, 0(5) ;  Load return address
59 : LDA  7, 0(6) ;  Return to caller
60 : LD   1, 2(5) ;  Load parameter 'b' into R1
61 : LDA  3, 4(5) ; Restore Callee frame base
62 : ST 1, 1(3) ;  Store argument 0 into callee frame
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : LDA  3, 4(5) ; Restore Callee frame base
65 : ST 1, 2(3) ;  Store argument 1 into callee frame
66 : LDA  3, 4(5) ; Restore Call frame base
67 : LDA 6, 71(0) ;  Compute return address
68 : ST 6, 0(3) ;  Store return address in callee frame
69 : ADD  5, 3, 0 ;  Update pointer
70 : LDA 7, 29(0) ;  Call rem
71 : LD 1, 3(5) ;  Load callee return value into R1
72 : LDC  4, 4(0) ;  Load frame size
73 : SUB  5, 5, 4 ;  Restore pointer
74 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
75 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
76 : SUB  1, 2, 1 ;  left - right for equality check
77 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
78 : LDC  1, 0(0) ;  false
79 : LDA  7, 1(7) ;  skip setting true
80 : LDC  1, 1(0) ;  true
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 1(5) ;  Load parameter 'i' into R1
85 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
86 : LD   1, 2(5) ;  Load parameter 'n' into R1
87 : SUB  1, 2, 1 ;  left - right for less-than check
88 : JLT  1, 2(7) ;  If R1 < 0, jump to true
89 : LDC  1, 0(0) ;  false
90 : LDA  7, 1(7) ;  skip setting true
91 : LDC  1, 1(0) ;  true
92 : JEQ  1, 127(0) ;  If condition is false, jump to ELSE
93 : LD   1, 1(5) ;  Load parameter 'i' into R1
94 : LDA  3, 4(5) ; Restore Callee frame base
95 : ST 1, 1(3) ;  Store argument 0 into callee frame
96 : LD   1, 2(5) ;  Load parameter 'n' into R1
97 : LDA  3, 4(5) ; Restore Callee frame base
98 : ST 1, 2(3) ;  Store argument 1 into callee frame
99 : LDA  3, 4(5) ; Restore Call frame base
100 : LDA 6, 104(0) ;  Compute return address
101 : ST 6, 0(3) ;  Store return address in callee frame
102 : ADD  5, 3, 0 ;  Update pointer
103 : LDA 7, 60(0) ;  Call divides
104 : LD 1, 3(5) ;  Load callee return value into R1
105 : LDC  4, 4(0) ;  Load frame size
106 : SUB  5, 5, 4 ;  Restore pointer
107 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
108 : LD   1, 1(5) ;  Load parameter 'i' into R1
109 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
110 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
111 : ADD  1, 2, 1 ;  R1 = left + right
112 : LDA  3, 4(5) ; Restore Callee frame base
113 : ST 1, 1(3) ;  Store argument 0 into callee frame
114 : LD   1, 2(5) ;  Load parameter 'n' into R1
115 : LDA  3, 4(5) ; Restore Callee frame base
116 : ST 1, 2(3) ;  Store argument 1 into callee frame
117 : LDA  3, 4(5) ; Restore Call frame base
118 : LDA 6, 122(0) ;  Compute return address
119 : ST 6, 0(3) ;  Store return address in callee frame
120 : ADD  5, 3, 0 ;  Update pointer
121 : LDA 7, 84(0) ;  Call hasDivisorFrom
122 : LD 1, 3(5) ;  Load callee return value into R1
123 : LDC  4, 4(0) ;  Load frame size
124 : SUB  5, 5, 4 ;  Restore pointer
125 : ADD  1, 2, 1 ;  R1 = left OR right
126 : LDA  7, 128(0) ;  Skip ELSE block
127 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
128 : ST   1, 3(5) ;  Store function result into stack frame
129 : LD   6, 0(5) ;  Load return address
130 : LDA  7, 0(6) ;  Return to caller
131 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
132 : LDA  3, 3(5) ; Restore Callee frame base
133 : ST 1, 1(3) ;  Store argument 0 into callee frame
134 : LD   1, 1(5) ;  Load parameter 'n' into R1
135 : LDA  3, 3(5) ; Restore Callee frame base
136 : ST 1, 2(3) ;  Store argument 1 into callee frame
137 : LDA  3, 3(5) ; Restore Call frame base
138 : LDA 6, 142(0) ;  Compute return address
139 : ST 6, 0(3) ;  Store return address in callee frame
140 : ADD  5, 3, 0 ;  Update pointer
141 : LDA 7, 84(0) ;  Call hasDivisorFrom
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC  4, 3(0) ;  Load frame size
144 : SUB  5, 5, 4 ;  Restore pointer
145 : LDC  2, 1(0) ;  Load 1 into R2
146 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
147 : ST   1, 2(5) ;  Store function result into stack frame
148 : LD   6, 0(5) ;  Load return address
149 : LDA  7, 0(6) ;  Return to caller
150 : LD   1, 1(5) ;  Load parameter 'current' into R1
151 : LDA  3, 4(5) ; Restore Callee frame base
152 : ST 1, 1(3) ;  Store argument 0 into callee frame
153 : LDA  3, 4(5) ; Restore Call frame base
154 : LDA 6, 158(0) ;  Compute return address
155 : ST 6, 0(3) ;  Store return address in callee frame
156 : ADD  5, 3, 0 ;  Update pointer
157 : LDA 7, 131(0) ;  Call isPrime
158 : LD 1, 2(5) ;  Load callee return value into R1
159 : LDC  4, 4(0) ;  Load frame size
160 : SUB  5, 5, 4 ;  Restore pointer
161 : JEQ  1, 164(0) ;  If condition is false, jump to ELSE
162 : LD   1, 1(5) ;  Load parameter 'current' into R1
163 : LDA  7, 165(0) ;  Skip ELSE block
164 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
165 : LDA  3, 4(5) ;  Update DMEM pointer
166 : LDA 6, 170(0) ;  Compute return address
167 : ST   6, 0(3) ;  Store return address
168 : ADD  5, 3, 0 ;  Updated Pointer
169 : LDA  7, 8(0) ; Call print
170 : LDC  4, 4(0) ;  Load frame size
171 : SUB  5, 5, 4 ;  Restore pointer
172 : ST   1, 3(5) ;  Store function result into stack frame
173 : LD   1, 1(5) ;  Load parameter 'current' into R1
174 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
175 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
176 : ADD  1, 2, 1 ;  R1 = left + right
177 : LDA  3, 4(5) ; Restore Callee frame base
178 : ST 1, 1(3) ;  Store argument 0 into callee frame
179 : LD   1, 2(5) ;  Load parameter 'max' into R1
180 : LDA  3, 4(5) ; Restore Callee frame base
181 : ST 1, 2(3) ;  Store argument 1 into callee frame
182 : LDA  3, 4(5) ; Restore Call frame base
183 : LDA 6, 187(0) ;  Compute return address
184 : ST 6, 0(3) ;  Store return address in callee frame
185 : ADD  5, 3, 0 ;  Update pointer
186 : LDA 7, 193(0) ;  Call sieveAt
187 : LD 1, 3(5) ;  Load callee return value into R1
188 : LDC  4, 4(0) ;  Load frame size
189 : SUB  5, 5, 4 ;  Restore pointer
190 : ST   1, 3(5) ;  Store function result into stack frame
191 : LD   6, 0(5) ;  Load return address
192 : LDA  7, 0(6) ;  Return to caller
193 : LD   1, 2(5) ;  Load parameter 'max' into R1
194 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
195 : LD   1, 1(5) ;  Load parameter 'current' into R1
196 : SUB  1, 2, 1 ;  left - right for less-than check
197 : JLT  1, 2(7) ;  If R1 < 0, jump to true
198 : LDC  1, 0(0) ;  false
199 : LDA  7, 1(7) ;  skip setting true
200 : LDC  1, 1(0) ;  true
201 : JEQ  1, 204(0) ;  If condition is false, jump to ELSE
202 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
203 : LDA  7, 218(0) ;  Skip ELSE block
204 : LD   1, 1(5) ;  Load parameter 'current' into R1
205 : LDA  3, 4(5) ; Restore Callee frame base
206 : ST 1, 1(3) ;  Store argument 0 into callee frame
207 : LD   1, 2(5) ;  Load parameter 'max' into R1
208 : LDA  3, 4(5) ; Restore Callee frame base
209 : ST 1, 2(3) ;  Store argument 1 into callee frame
210 : LDA  3, 4(5) ; Restore Call frame base
211 : LDA 6, 215(0) ;  Compute return address
212 : ST 6, 0(3) ;  Store return address in callee frame
213 : ADD  5, 3, 0 ;  Update pointer
214 : LDA 7, 150(0) ;  Call doSieveAt
215 : LD 1, 3(5) ;  Load callee return value into R1
216 : LDC  4, 4(0) ;  Load frame size
217 : SUB  5, 5, 4 ;  Restore pointer
218 : ST   1, 3(5) ;  Store function result into stack frame
219 : LD   6, 0(5) ;  Load return address
220 : LDA  7, 0(6) ;  Return to caller
