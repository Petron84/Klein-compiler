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
12 : ST   1, 3(5) ;  Spill Temporary
13 : LD   1, 1(5) ;  Load parameter 'n' into R1
14 : ST   1, 4(5) ;  Spill Temporary
15 : LDA 4, 4(5) ; Restore Callee frame base
16 : LD   1, 4(5) ;  Restore Temporary
17 : ST 1, 2(4) ;  Store argument 1 into callee frame
18 : LD   1, 3(5) ;  Restore Temporary
19 : ST 1, 1(4) ;  Store argument 0 into callee frame
20 : LDA 4, 4(5) ; Restore Call frame base
21 : LDA 6, 25(0) ;  Compute return address
22 : ST 6, 0(4) ;  Store return address in callee frame
23 : ADD 5, 4, 0 ;  Update pointer
24 : LDA 7, 223(0) ;  Call sieveAt
25 : LD 1, 3(5) ;  Load callee return value into R1
26 : LDC 4, 4(0) ;  Load frame size
27 : SUB 5, 5, 4 ;  Restore pointer
28 : ST 1, 2(5) ;  Store result into current frame's return slot
29 : LD   1, 2(5) ;  Load return value into register 1
30 : LD  6, 0(5) ;  Load return address for main function into register 6
31 : LDA  7, 0(6) ;  Jump to return address of main function
32 : LD   1, 1(5) ;  Load parameter 'num' into R1
33 : ADD  3, 1, 0 ;  Save left operand
34 : LD   1, 2(5) ;  Load parameter 'den' into R1
35 : ADD  2, 3, 0 ;  restore left operand
36 : SUB  1, 2, 1 ;  left - right for less-than check
37 : JLT  1, 2(7) ;  If R1 < 0, jump to true
38 : LDC  1, 0(0) ;  false
39 : LDA  7, 1(7) ;  skip setting true
40 : LDC  1, 1(0) ;  true
41 : JEQ  1, 44(0) ;  If condition is false, jump to ELSE
42 : LD   1, 1(5) ;  Load parameter 'num' into R1
43 : LDA  7, 65(0) ;  Skip ELSE block
44 : LD   1, 1(5) ;  Load parameter 'num' into R1
45 : ADD  3, 1, 0 ;  Save left operand
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : ADD  2, 3, 0 ;  restore left operand
48 : SUB  1, 2, 1 ;  R1 = left - right
49 : ST   1, 4(5) ;  Spill Temporary
50 : LD   1, 2(5) ;  Load parameter 'den' into R1
51 : ST   1, 5(5) ;  Spill Temporary
52 : LDA 4, 4(5) ; Restore Callee frame base
53 : LD   1, 5(5) ;  Restore Temporary
54 : ST 1, 2(4) ;  Store argument 1 into callee frame
55 : LD   1, 4(5) ;  Restore Temporary
56 : ST 1, 1(4) ;  Store argument 0 into callee frame
57 : LDA 4, 4(5) ; Restore Call frame base
58 : LDA 6, 62(0) ;  Compute return address
59 : ST 6, 0(4) ;  Store return address in callee frame
60 : ADD 5, 4, 0 ;  Update pointer
61 : LDA 7, 32(0) ;  Call rem
62 : LD 1, 3(5) ;  Load callee return value into R1
63 : LDC 4, 4(0) ;  Load frame size
64 : SUB 5, 5, 4 ;  Restore pointer
65 : ST   1, 3(5) ;  Store function result into stack frame
66 : LD   6, 0(5) ;  Load return address
67 : LDA  7, 0(6) ;  Return to caller
68 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
69 : ADD  3, 1, 0 ;  Save right operand
70 : LD   1, 2(5) ;  Load parameter 'b' into R1
71 : ST   1, 4(5) ;  Spill Temporary
72 : LD   1, 1(5) ;  Load parameter 'a' into R1
73 : ST   1, 5(5) ;  Spill Temporary
74 : LDA 4, 4(5) ; Restore Callee frame base
75 : LD   1, 5(5) ;  Restore Temporary
76 : ST 1, 2(4) ;  Store argument 1 into callee frame
77 : LD   1, 4(5) ;  Restore Temporary
78 : ST 1, 1(4) ;  Store argument 0 into callee frame
79 : LDA 4, 4(5) ; Restore Call frame base
80 : LDA 6, 84(0) ;  Compute return address
81 : ST 6, 0(4) ;  Store return address in callee frame
82 : ADD 5, 4, 0 ;  Update pointer
83 : LDA 7, 32(0) ;  Call rem
84 : LD 1, 3(5) ;  Load callee return value into R1
85 : LDC 4, 4(0) ;  Load frame size
86 : SUB 5, 5, 4 ;  Restore pointer
87 : ADD  2, 3, 0 ;  Restore right operand
88 : SUB  1, 2, 1 ;  left - right for equality check
89 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : ST   1, 3(5) ;  Store function result into stack frame
94 : LD   6, 0(5) ;  Load return address
95 : LDA  7, 0(6) ;  Return to caller
96 : LD   1, 1(5) ;  Load parameter 'i' into R1
97 : ADD  3, 1, 0 ;  Save left operand
98 : LD   1, 2(5) ;  Load parameter 'n' into R1
99 : ADD  2, 3, 0 ;  restore left operand
100 : SUB  1, 2, 1 ;  left - right for less-than check
101 : JLT  1, 2(7) ;  If R1 < 0, jump to true
102 : LDC  1, 0(0) ;  false
103 : LDA  7, 1(7) ;  skip setting true
104 : LDC  1, 1(0) ;  true
105 : JEQ  1, 148(0) ;  If condition is false, jump to ELSE
106 : LD   1, 1(5) ;  Load parameter 'i' into R1
107 : ST   1, 4(5) ;  Spill Temporary
108 : LD   1, 2(5) ;  Load parameter 'n' into R1
109 : ST   1, 5(5) ;  Spill Temporary
110 : LDA 4, 4(5) ; Restore Callee frame base
111 : LD   1, 5(5) ;  Restore Temporary
112 : ST 1, 2(4) ;  Store argument 1 into callee frame
113 : LD   1, 4(5) ;  Restore Temporary
114 : ST 1, 1(4) ;  Store argument 0 into callee frame
115 : LDA 4, 4(5) ; Restore Call frame base
116 : LDA 6, 120(0) ;  Compute return address
117 : ST 6, 0(4) ;  Store return address in callee frame
118 : ADD 5, 4, 0 ;  Update pointer
119 : LDA 7, 68(0) ;  Call divides
120 : LD 1, 3(5) ;  Load callee return value into R1
121 : LDC 4, 4(0) ;  Load frame size
122 : SUB 5, 5, 4 ;  Restore pointer
123 : ST   1, 4(5) ;  Spill Temporary
124 : LD   1, 1(5) ;  Load parameter 'i' into R1
125 : ADD  3, 1, 0 ;  Save left operand
126 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
127 : ADD  2, 3, 0 ;  restore left operand
128 : ADD  1, 2, 1 ;  R1 = left + right
129 : ST   1, 5(5) ;  Spill Temporary
130 : LD   1, 2(5) ;  Load parameter 'n' into R1
131 : ST   1, 6(5) ;  Spill Temporary
132 : LDA 4, 4(5) ; Restore Callee frame base
133 : LD   1, 6(5) ;  Restore Temporary
134 : ST 1, 2(4) ;  Store argument 1 into callee frame
135 : LD   1, 5(5) ;  Restore Temporary
136 : ST 1, 1(4) ;  Store argument 0 into callee frame
137 : LDA 4, 4(5) ; Restore Call frame base
138 : LDA 6, 142(0) ;  Compute return address
139 : ST 6, 0(4) ;  Store return address in callee frame
140 : ADD 5, 4, 0 ;  Update pointer
141 : LDA 7, 96(0) ;  Call hasDivisorFrom
142 : LD 1, 3(5) ;  Load callee return value into R1
143 : LDC 4, 4(0) ;  Load frame size
144 : SUB 5, 5, 4 ;  Restore pointer
145 : LD   2, 4(5) ;  Restore Temporary
146 : ADD  1, 2, 1 ;  R1 = left OR right
147 : LDA  7, 149(0) ;  Skip ELSE block
148 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
149 : ST   1, 3(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
153 : ST   1, 3(5) ;  Spill Temporary
154 : LD   1, 1(5) ;  Load parameter 'n' into R1
155 : ST   1, 4(5) ;  Spill Temporary
156 : LDA 4, 4(5) ; Restore Callee frame base
157 : LD   1, 4(5) ;  Restore Temporary
158 : ST 1, 2(4) ;  Store argument 1 into callee frame
159 : LD   1, 3(5) ;  Restore Temporary
160 : ST 1, 1(4) ;  Store argument 0 into callee frame
161 : LDA 4, 4(5) ; Restore Call frame base
162 : LDA 6, 166(0) ;  Compute return address
163 : ST 6, 0(4) ;  Store return address in callee frame
164 : ADD 5, 4, 0 ;  Update pointer
165 : LDA 7, 96(0) ;  Call hasDivisorFrom
166 : LD 1, 3(5) ;  Load callee return value into R1
167 : LDC 4, 4(0) ;  Load frame size
168 : SUB 5, 5, 4 ;  Restore pointer
169 : LDC  2, 1(0) ;  Load 1 into R2
170 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
171 : ST   1, 2(5) ;  Store function result into stack frame
172 : LD   6, 0(5) ;  Load return address
173 : LDA  7, 0(6) ;  Return to caller
174 : LD   1, 1(5) ;  Load parameter 'current' into R1
175 : ST   1, 4(5) ;  Spill Temporary
176 : LDA 4, 3(5) ; Restore Callee frame base
177 : LD   1, 4(5) ;  Restore Temporary
178 : ST 1, 1(4) ;  Store argument 0 into callee frame
179 : LDA 4, 3(5) ; Restore Call frame base
180 : LDA 6, 184(0) ;  Compute return address
181 : ST 6, 0(4) ;  Store return address in callee frame
182 : ADD 5, 4, 0 ;  Update pointer
183 : LDA 7, 152(0) ;  Call isPrime
184 : LD 1, 2(5) ;  Load callee return value into R1
185 : LDC 4, 3(0) ;  Load frame size
186 : SUB 5, 5, 4 ;  Restore pointer
187 : JEQ  1, 190(0) ;  If condition is false, jump to ELSE
188 : LD   1, 1(5) ;  Load parameter 'current' into R1
189 : LDA  7, 191(0) ;  Skip ELSE block
190 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
191 : LDA  4, 3(5) ;  Update DMEM pointer
192 : LDA 6, 196(0) ;  Compute return address
193 : ST   6, 0(4) ;  Store return address
194 : ADD  5, 4, 0 ;  Updated Pointer
195 : LDA  7, 8(0) ; Call print
196 : LDC  4, 3(0) ;  Load frame size
197 : SUB  5, 5, 4 ;  Restore pointer
198 : ST   1, 3(5) ;  Store function result into stack frame
199 : LD   1, 1(5) ;  Load parameter 'current' into R1
200 : ADD  3, 1, 0 ;  Save left operand
201 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
202 : ADD  2, 3, 0 ;  restore left operand
203 : ADD  1, 2, 1 ;  R1 = left + right
204 : ST   1, 4(5) ;  Spill Temporary
205 : LD   1, 2(5) ;  Load parameter 'max' into R1
206 : ST   1, 5(5) ;  Spill Temporary
207 : LDA 4, 4(5) ; Restore Callee frame base
208 : LD   1, 5(5) ;  Restore Temporary
209 : ST 1, 2(4) ;  Store argument 1 into callee frame
210 : LD   1, 4(5) ;  Restore Temporary
211 : ST 1, 1(4) ;  Store argument 0 into callee frame
212 : LDA 4, 4(5) ; Restore Call frame base
213 : LDA 6, 217(0) ;  Compute return address
214 : ST 6, 0(4) ;  Store return address in callee frame
215 : ADD 5, 4, 0 ;  Update pointer
216 : LDA 7, 223(0) ;  Call sieveAt
217 : LD 1, 3(5) ;  Load callee return value into R1
218 : LDC 4, 4(0) ;  Load frame size
219 : SUB 5, 5, 4 ;  Restore pointer
220 : ST   1, 3(5) ;  Store function result into stack frame
221 : LD   6, 0(5) ;  Load return address
222 : LDA  7, 0(6) ;  Return to caller
223 : LD   1, 2(5) ;  Load parameter 'max' into R1
224 : ADD  3, 1, 0 ;  Save left operand
225 : LD   1, 1(5) ;  Load parameter 'current' into R1
226 : ADD  2, 3, 0 ;  restore left operand
227 : SUB  1, 2, 1 ;  left - right for less-than check
228 : JLT  1, 2(7) ;  If R1 < 0, jump to true
229 : LDC  1, 0(0) ;  false
230 : LDA  7, 1(7) ;  skip setting true
231 : LDC  1, 1(0) ;  true
232 : JEQ  1, 235(0) ;  If condition is false, jump to ELSE
233 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
234 : LDA  7, 252(0) ;  Skip ELSE block
235 : LD   1, 1(5) ;  Load parameter 'current' into R1
236 : ST   1, 4(5) ;  Spill Temporary
237 : LD   1, 2(5) ;  Load parameter 'max' into R1
238 : ST   1, 5(5) ;  Spill Temporary
239 : LDA 4, 4(5) ; Restore Callee frame base
240 : LD   1, 5(5) ;  Restore Temporary
241 : ST 1, 2(4) ;  Store argument 1 into callee frame
242 : LD   1, 4(5) ;  Restore Temporary
243 : ST 1, 1(4) ;  Store argument 0 into callee frame
244 : LDA 4, 4(5) ; Restore Call frame base
245 : LDA 6, 249(0) ;  Compute return address
246 : ST 6, 0(4) ;  Store return address in callee frame
247 : ADD 5, 4, 0 ;  Update pointer
248 : LDA 7, 174(0) ;  Call doSieveAt
249 : LD 1, 3(5) ;  Load callee return value into R1
250 : LDC 4, 4(0) ;  Load frame size
251 : SUB 5, 5, 4 ;  Restore pointer
252 : ST   1, 3(5) ;  Store function result into stack frame
253 : LD   6, 0(5) ;  Load return address
254 : LDA  7, 0(6) ;  Return to caller
