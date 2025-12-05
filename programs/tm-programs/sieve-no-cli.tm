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
12 : LDA  4, 4(5) ; Restore Callee frame base
13 : ST 1, 1(4) ;  Store argument 0 into callee frame
14 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
15 : LDA  4, 4(5) ; Restore Callee frame base
16 : ST 1, 2(4) ;  Store argument 1 into callee frame
17 : LDA  4, 4(5) ; Restore Call frame base
18 : LDA 6, 22(0) ;  Compute return address
19 : ST 6, 0(4) ;  Store return address in callee frame
20 : ADD  5, 4, 0 ;  Update pointer
21 : LDA 7, 200(0) ;  Call sieveAt
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 4(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 2(5) ;  Store result into current frame's return slot
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'num' into R1
30 : ADD  3, 1, 0 ;  Store left operand into temporary register
31 : LD   1, 2(5) ;  Load parameter 'den' into R1
32 : ADD  2, 3, 0 ;  Restore left operand
33 : SUB  1, 2, 1 ;  left - right for less-than check
34 : JLT  1, 2(7) ;  If R1 < 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 41(0) ;  If condition is false, jump to ELSE
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : LDA  7, 59(0) ;  Skip ELSE block
41 : LD   1, 1(5) ;  Load parameter 'num' into R1
42 : ADD  3, 1, 0 ;  Store left operand into temporary register
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : ADD  2, 3, 0 ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : LDA  4, 4(5) ; Restore Callee frame base
47 : ST 1, 1(4) ;  Store argument 0 into callee frame
48 : LD   1, 2(5) ;  Load parameter 'den' into R1
49 : LDA  4, 4(5) ; Restore Callee frame base
50 : ST 1, 2(4) ;  Store argument 1 into callee frame
51 : LDA  4, 4(5) ; Restore Call frame base
52 : LDA 6, 56(0) ;  Compute return address
53 : ST 6, 0(4) ;  Store return address in callee frame
54 : ADD  5, 4, 0 ;  Update pointer
55 : LDA 7, 29(0) ;  Call rem
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDC  4, 4(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : LDA  4, 4(5) ; Restore Callee frame base
64 : ST 1, 1(4) ;  Store argument 0 into callee frame
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : LDA  4, 4(5) ; Restore Callee frame base
67 : ST 1, 2(4) ;  Store argument 1 into callee frame
68 : LDA  4, 4(5) ; Restore Call frame base
69 : LDA 6, 73(0) ;  Compute return address
70 : ST 6, 0(4) ;  Store return address in callee frame
71 : ADD  5, 4, 0 ;  Update pointer
72 : LDA 7, 29(0) ;  Call rem
73 : LD 1, 3(5) ;  Load callee return value into R1
74 : LDC  4, 4(0) ;  Load frame size
75 : SUB  5, 5, 4 ;  Restore pointer
76 : ADD  3, 1, 0 ;  Store left operand into temporary register
77 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
78 : ADD  2, 3, 0 ;  Restore left operand
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 1(5) ;  Load parameter 'i' into R1
88 : ADD  3, 1, 0 ;  Store left operand into temporary register
89 : LD   1, 2(5) ;  Load parameter 'n' into R1
90 : ADD  2, 3, 0 ;  Restore left operand
91 : SUB  1, 2, 1 ;  left - right for less-than check
92 : JLT  1, 2(7) ;  If R1 < 0, jump to true
93 : LDC  1, 0(0) ;  false
94 : LDA  7, 1(7) ;  skip setting true
95 : LDC  1, 1(0) ;  true
96 : JEQ  1, 133(0) ;  If condition is false, jump to ELSE
97 : LD   1, 1(5) ;  Load parameter 'i' into R1
98 : LDA  4, 4(5) ; Restore Callee frame base
99 : ST 1, 1(4) ;  Store argument 0 into callee frame
100 : LD   1, 2(5) ;  Load parameter 'n' into R1
101 : LDA  4, 4(5) ; Restore Callee frame base
102 : ST 1, 2(4) ;  Store argument 1 into callee frame
103 : LDA  4, 4(5) ; Restore Call frame base
104 : LDA 6, 108(0) ;  Compute return address
105 : ST 6, 0(4) ;  Store return address in callee frame
106 : ADD  5, 4, 0 ;  Update pointer
107 : LDA 7, 62(0) ;  Call divides
108 : LD 1, 3(5) ;  Load callee return value into R1
109 : LDC  4, 4(0) ;  Load frame size
110 : SUB  5, 5, 4 ;  Restore pointer
111 : ADD  3, 1, 0 ;  Store left operand into temporary register
112 : LD   1, 1(5) ;  Load parameter 'i' into R1
113 : ADD  3, 1, 0 ;  Store left operand into temporary register
114 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
115 : ADD  2, 3, 0 ;  Restore left operand
116 : ADD  1, 2, 1 ;  R1 = left + right
117 : LDA  4, 4(5) ; Restore Callee frame base
118 : ST 1, 1(4) ;  Store argument 0 into callee frame
119 : LD   1, 2(5) ;  Load parameter 'n' into R1
120 : LDA  4, 4(5) ; Restore Callee frame base
121 : ST 1, 2(4) ;  Store argument 1 into callee frame
122 : LDA  4, 4(5) ; Restore Call frame base
123 : LDA 6, 127(0) ;  Compute return address
124 : ST 6, 0(4) ;  Store return address in callee frame
125 : ADD  5, 4, 0 ;  Update pointer
126 : LDA 7, 87(0) ;  Call hasDivisorFrom
127 : LD 1, 3(5) ;  Load callee return value into R1
128 : LDC  4, 4(0) ;  Load frame size
129 : SUB  5, 5, 4 ;  Restore pointer
130 : ADD  2, 3, 0 ;  Restore left operand
131 : ADD  1, 2, 1 ;  R1 = left OR right
132 : LDA  7, 134(0) ;  Skip ELSE block
133 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
134 : ST   1, 3(5) ;  Store function result into stack frame
135 : LD   6, 0(5) ;  Load return address
136 : LDA  7, 0(6) ;  Return to caller
137 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
138 : LDA  4, 4(5) ; Restore Callee frame base
139 : ST 1, 1(4) ;  Store argument 0 into callee frame
140 : LD   1, 1(5) ;  Load parameter 'n' into R1
141 : LDA  4, 4(5) ; Restore Callee frame base
142 : ST 1, 2(4) ;  Store argument 1 into callee frame
143 : LDA  4, 4(5) ; Restore Call frame base
144 : LDA 6, 148(0) ;  Compute return address
145 : ST 6, 0(4) ;  Store return address in callee frame
146 : ADD  5, 4, 0 ;  Update pointer
147 : LDA 7, 87(0) ;  Call hasDivisorFrom
148 : LD 1, 3(5) ;  Load callee return value into R1
149 : LDC  4, 4(0) ;  Load frame size
150 : SUB  5, 5, 4 ;  Restore pointer
151 : LDC  2, 1(0) ;  Load 1 into R2
152 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
153 : ST   1, 2(5) ;  Store function result into stack frame
154 : LD   6, 0(5) ;  Load return address
155 : LDA  7, 0(6) ;  Return to caller
156 : LD   1, 1(5) ;  Load parameter 'current' into R1
157 : LDA  4, 3(5) ; Restore Callee frame base
158 : ST 1, 1(4) ;  Store argument 0 into callee frame
159 : LDA  4, 3(5) ; Restore Call frame base
160 : LDA 6, 164(0) ;  Compute return address
161 : ST 6, 0(4) ;  Store return address in callee frame
162 : ADD  5, 4, 0 ;  Update pointer
163 : LDA 7, 137(0) ;  Call isPrime
164 : LD 1, 2(5) ;  Load callee return value into R1
165 : LDC  4, 3(0) ;  Load frame size
166 : SUB  5, 5, 4 ;  Restore pointer
167 : JEQ  1, 170(0) ;  If condition is false, jump to ELSE
168 : LD   1, 1(5) ;  Load parameter 'current' into R1
169 : LDA  7, 171(0) ;  Skip ELSE block
170 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
171 : LDA  4, 3(5) ;  Update DMEM pointer
172 : LDA 6, 176(0) ;  Compute return address
173 : ST   6, 0(4) ;  Store return address
174 : ADD  5, 4, 0 ;  Updated Pointer
175 : LDA  7, 8(0) ; Call print
176 : LDC  4, 3(0) ;  Load frame size
177 : SUB  5, 5, 4 ;  Restore pointer
178 : ST   1, 3(5) ;  Store function result into stack frame
179 : LD   1, 1(5) ;  Load parameter 'current' into R1
180 : ADD  3, 1, 0 ;  Store left operand into temporary register
181 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
182 : ADD  2, 3, 0 ;  Restore left operand
183 : ADD  1, 2, 1 ;  R1 = left + right
184 : LDA  4, 4(5) ; Restore Callee frame base
185 : ST 1, 1(4) ;  Store argument 0 into callee frame
186 : LD   1, 2(5) ;  Load parameter 'max' into R1
187 : LDA  4, 4(5) ; Restore Callee frame base
188 : ST 1, 2(4) ;  Store argument 1 into callee frame
189 : LDA  4, 4(5) ; Restore Call frame base
190 : LDA 6, 194(0) ;  Compute return address
191 : ST 6, 0(4) ;  Store return address in callee frame
192 : ADD  5, 4, 0 ;  Update pointer
193 : LDA 7, 200(0) ;  Call sieveAt
194 : LD 1, 3(5) ;  Load callee return value into R1
195 : LDC  4, 4(0) ;  Load frame size
196 : SUB  5, 5, 4 ;  Restore pointer
197 : ST   1, 3(5) ;  Store function result into stack frame
198 : LD   6, 0(5) ;  Load return address
199 : LDA  7, 0(6) ;  Return to caller
200 : LD   1, 2(5) ;  Load parameter 'max' into R1
201 : ADD  3, 1, 0 ;  Store left operand into temporary register
202 : LD   1, 1(5) ;  Load parameter 'current' into R1
203 : ADD  2, 3, 0 ;  Restore left operand
204 : SUB  1, 2, 1 ;  left - right for less-than check
205 : JLT  1, 2(7) ;  If R1 < 0, jump to true
206 : LDC  1, 0(0) ;  false
207 : LDA  7, 1(7) ;  skip setting true
208 : LDC  1, 1(0) ;  true
209 : JEQ  1, 212(0) ;  If condition is false, jump to ELSE
210 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
211 : LDA  7, 226(0) ;  Skip ELSE block
212 : LD   1, 1(5) ;  Load parameter 'current' into R1
213 : LDA  4, 4(5) ; Restore Callee frame base
214 : ST 1, 1(4) ;  Store argument 0 into callee frame
215 : LD   1, 2(5) ;  Load parameter 'max' into R1
216 : LDA  4, 4(5) ; Restore Callee frame base
217 : ST 1, 2(4) ;  Store argument 1 into callee frame
218 : LDA  4, 4(5) ; Restore Call frame base
219 : LDA 6, 223(0) ;  Compute return address
220 : ST 6, 0(4) ;  Store return address in callee frame
221 : ADD  5, 4, 0 ;  Update pointer
222 : LDA 7, 156(0) ;  Call doSieveAt
223 : LD 1, 3(5) ;  Load callee return value into R1
224 : LDC  4, 4(0) ;  Load frame size
225 : SUB  5, 5, 4 ;  Restore pointer
226 : ST   1, 3(5) ;  Store function result into stack frame
227 : LD   6, 0(5) ;  Load return address
228 : LDA  7, 0(6) ;  Return to caller
