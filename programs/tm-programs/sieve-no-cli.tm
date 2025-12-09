0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 4(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDC  4, 3(0) ;  Load size of main stack frame
6 : ADD  5, 5, 4 ;  Advance R5 to next frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LDA  4, 0(5) ;  Save callee frame base
14 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDC  1, 40(0) ;  Load boolean-literal value into register 1
17 : ST 1, 2(4) ;  Store argument 1 into callee frame
18 : LDA 6, 23(0) ;  Compute return address
19 : ST 6, 0(4) ;  Store return address in callee frame
20 : LDA  2, 4(4) ;  Compute end of frame
21 : ADD  5, 2, 0 ;  Advance pointer to end of frame
22 : LDA 7, 195(0) ;  Call sieveAt
23 : LD 1, 3(5) ;  Load callee return value into R1
24 : LDC  4, 4(0) ;  Load frame size
25 : SUB  5, 5, 4 ;  Restore pointer
26 : ST 1, 2(5) ;  Store result into current frame's return slot
27 : LD   1, 2(5) ;  Load return value into register 1
28 : LD  6, 0(5) ;  Load return address for main function into register 6
29 : LDA  7, 0(6) ;  Jump to return address of main function
30 : LD   1, 1(5) ;  Load parameter 'num' into R1
31 : ADD  3, 1, 0 ;  Store left operand into temporary register
32 : LD   1, 2(5) ;  Load parameter 'den' into R1
33 : ADD  2, 3, 0 ;  Restore left operand
34 : SUB  1, 2, 1 ;  left - right for less-than check
35 : JLT  1, 2(7) ;  If R1 < 0, jump to true
36 : LDC  1, 0(0) ;  false
37 : LDA  7, 1(7) ;  skip setting true
38 : LDC  1, 1(0) ;  true
39 : JEQ  1, 42(0) ;  If condition is false, jump to ELSE
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : LDA  7, 59(0) ;  Skip ELSE block
42 : LDA  4, 0(5) ;  Save callee frame base
43 : LD   1, 1(5) ;  Load parameter 'num' into R1
44 : ADD  3, 1, 0 ;  Store left operand into temporary register
45 : LD   1, 2(5) ;  Load parameter 'den' into R1
46 : ADD  2, 3, 0 ;  Restore left operand
47 : SUB  1, 2, 1 ;  R1 = left - right
48 : ST 1, 1(4) ;  Store argument 0 into callee frame
49 : LD   1, 2(5) ;  Load parameter 'den' into R1
50 : ST 1, 2(4) ;  Store argument 1 into callee frame
51 : LDA 6, 56(0) ;  Compute return address
52 : ST 6, 0(4) ;  Store return address in callee frame
53 : LDA  2, 4(4) ;  Compute end of frame
54 : ADD  5, 2, 0 ;  Advance pointer to end of frame
55 : LDA 7, 30(0) ;  Call rem
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDC  4, 4(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LDA  4, 0(5) ;  Save callee frame base
63 : LD   1, 2(5) ;  Load parameter 'b' into R1
64 : ST 1, 1(4) ;  Store argument 0 into callee frame
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : ST 1, 2(4) ;  Store argument 1 into callee frame
67 : LDA 6, 72(0) ;  Compute return address
68 : ST 6, 0(4) ;  Store return address in callee frame
69 : LDA  2, 4(4) ;  Compute end of frame
70 : ADD  5, 2, 0 ;  Advance pointer to end of frame
71 : LDA 7, 30(0) ;  Call rem
72 : LD 1, 3(5) ;  Load callee return value into R1
73 : LDC  4, 4(0) ;  Load frame size
74 : SUB  5, 5, 4 ;  Restore pointer
75 : ADD  3, 1, 0 ;  Store left operand into temporary register
76 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
77 : ADD  2, 3, 0 ;  Restore left operand
78 : SUB  1, 2, 1 ;  left - right for equality check
79 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
80 : LDC  1, 0(0) ;  false
81 : LDA  7, 1(7) ;  skip setting true
82 : LDC  1, 1(0) ;  true
83 : ST   1, 3(5) ;  Store function result into stack frame
84 : LD   6, 0(5) ;  Load return address
85 : LDA  7, 0(6) ;  Return to caller
86 : LD   1, 1(5) ;  Load parameter 'i' into R1
87 : ADD  3, 1, 0 ;  Store left operand into temporary register
88 : LD   1, 2(5) ;  Load parameter 'n' into R1
89 : ADD  2, 3, 0 ;  Restore left operand
90 : SUB  1, 2, 1 ;  left - right for less-than check
91 : JLT  1, 2(7) ;  If R1 < 0, jump to true
92 : LDC  1, 0(0) ;  false
93 : LDA  7, 1(7) ;  skip setting true
94 : LDC  1, 1(0) ;  true
95 : JEQ  1, 130(0) ;  If condition is false, jump to ELSE
96 : LDA  4, 0(5) ;  Save callee frame base
97 : LD   1, 1(5) ;  Load parameter 'i' into R1
98 : ST 1, 1(4) ;  Store argument 0 into callee frame
99 : LD   1, 2(5) ;  Load parameter 'n' into R1
100 : ST 1, 2(4) ;  Store argument 1 into callee frame
101 : LDA 6, 106(0) ;  Compute return address
102 : ST 6, 0(4) ;  Store return address in callee frame
103 : LDA  2, 4(4) ;  Compute end of frame
104 : ADD  5, 2, 0 ;  Advance pointer to end of frame
105 : LDA 7, 62(0) ;  Call divides
106 : LD 1, 3(5) ;  Load callee return value into R1
107 : LDC  4, 4(0) ;  Load frame size
108 : SUB  5, 5, 4 ;  Restore pointer
109 : ADD  3, 1, 0 ;  Store left operand into temporary register
110 : LDA  4, 0(5) ;  Save callee frame base
111 : LD   1, 1(5) ;  Load parameter 'i' into R1
112 : ADD  3, 1, 0 ;  Store left operand into temporary register
113 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
114 : ADD  2, 3, 0 ;  Restore left operand
115 : ADD  1, 2, 1 ;  R1 = left + right
116 : ST 1, 1(4) ;  Store argument 0 into callee frame
117 : LD   1, 2(5) ;  Load parameter 'n' into R1
118 : ST 1, 2(4) ;  Store argument 1 into callee frame
119 : LDA 6, 124(0) ;  Compute return address
120 : ST 6, 0(4) ;  Store return address in callee frame
121 : LDA  2, 4(4) ;  Compute end of frame
122 : ADD  5, 2, 0 ;  Advance pointer to end of frame
123 : LDA 7, 86(0) ;  Call hasDivisorFrom
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDC  4, 4(0) ;  Load frame size
126 : SUB  5, 5, 4 ;  Restore pointer
127 : ADD  2, 3, 0 ;  Restore left operand
128 : ADD  1, 2, 1 ;  R1 = left OR right
129 : LDA  7, 131(0) ;  Skip ELSE block
130 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
131 : ST   1, 3(5) ;  Store function result into stack frame
132 : LD   6, 0(5) ;  Load return address
133 : LDA  7, 0(6) ;  Return to caller
134 : LDA  4, 0(5) ;  Save callee frame base
135 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
136 : ST 1, 1(4) ;  Store argument 0 into callee frame
137 : LD   1, 1(5) ;  Load parameter 'n' into R1
138 : ST 1, 2(4) ;  Store argument 1 into callee frame
139 : LDA 6, 144(0) ;  Compute return address
140 : ST 6, 0(4) ;  Store return address in callee frame
141 : LDA  2, 4(4) ;  Compute end of frame
142 : ADD  5, 2, 0 ;  Advance pointer to end of frame
143 : LDA 7, 86(0) ;  Call hasDivisorFrom
144 : LD 1, 3(5) ;  Load callee return value into R1
145 : LDC  4, 4(0) ;  Load frame size
146 : SUB  5, 5, 4 ;  Restore pointer
147 : LDC  2, 1(0) ;  Load 1 into R2
148 : SUB  1, 2, 1 ;  Logical NOT: 1 - R1
149 : ST   1, 2(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LDA  4, 0(5) ;  Save callee frame base
153 : LD   1, 1(5) ;  Load parameter 'current' into R1
154 : ST 1, 1(4) ;  Store argument 0 into callee frame
155 : LDA 6, 160(0) ;  Compute return address
156 : ST 6, 0(4) ;  Store return address in callee frame
157 : LDA  2, 3(4) ;  Compute end of frame
158 : ADD  5, 2, 0 ;  Advance pointer to end of frame
159 : LDA 7, 134(0) ;  Call isPrime
160 : LD 1, 2(5) ;  Load callee return value into R1
161 : LDC  4, 3(0) ;  Load frame size
162 : SUB  5, 5, 4 ;  Restore pointer
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LD   1, 1(5) ;  Load parameter 'current' into R1
165 : LDA  7, 167(0) ;  Skip ELSE block
166 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
167 : LDA  4, 3(5) ;  Update DMEM pointer
168 : LDA 6, 172(0) ;  Compute return address
169 : ST   6, 0(4) ;  Store return address
170 : ADD  5, 4, 0 ;  Updated Pointer
171 : LDA  7, 10(0) ; Call print
172 : LDC  4, 3(0) ;  Load frame size
173 : SUB  5, 5, 4 ;  Restore pointer
174 : ST   1, 3(5) ;  Store function result into stack frame
175 : LDA  4, 0(5) ;  Save callee frame base
176 : LD   1, 1(5) ;  Load parameter 'current' into R1
177 : ADD  3, 1, 0 ;  Store left operand into temporary register
178 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
179 : ADD  2, 3, 0 ;  Restore left operand
180 : ADD  1, 2, 1 ;  R1 = left + right
181 : ST 1, 1(4) ;  Store argument 0 into callee frame
182 : LD   1, 2(5) ;  Load parameter 'max' into R1
183 : ST 1, 2(4) ;  Store argument 1 into callee frame
184 : LDA 6, 189(0) ;  Compute return address
185 : ST 6, 0(4) ;  Store return address in callee frame
186 : LDA  2, 4(4) ;  Compute end of frame
187 : ADD  5, 2, 0 ;  Advance pointer to end of frame
188 : LDA 7, 195(0) ;  Call sieveAt
189 : LD 1, 3(5) ;  Load callee return value into R1
190 : LDC  4, 4(0) ;  Load frame size
191 : SUB  5, 5, 4 ;  Restore pointer
192 : ST   1, 3(5) ;  Store function result into stack frame
193 : LD   6, 0(5) ;  Load return address
194 : LDA  7, 0(6) ;  Return to caller
195 : LD   1, 2(5) ;  Load parameter 'max' into R1
196 : ADD  3, 1, 0 ;  Store left operand into temporary register
197 : LD   1, 1(5) ;  Load parameter 'current' into R1
198 : ADD  2, 3, 0 ;  Restore left operand
199 : SUB  1, 2, 1 ;  left - right for less-than check
200 : JLT  1, 2(7) ;  If R1 < 0, jump to true
201 : LDC  1, 0(0) ;  false
202 : LDA  7, 1(7) ;  skip setting true
203 : LDC  1, 1(0) ;  true
204 : JEQ  1, 207(0) ;  If condition is false, jump to ELSE
205 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
206 : LDA  7, 220(0) ;  Skip ELSE block
207 : LDA  4, 0(5) ;  Save callee frame base
208 : LD   1, 1(5) ;  Load parameter 'current' into R1
209 : ST 1, 1(4) ;  Store argument 0 into callee frame
210 : LD   1, 2(5) ;  Load parameter 'max' into R1
211 : ST 1, 2(4) ;  Store argument 1 into callee frame
212 : LDA 6, 217(0) ;  Compute return address
213 : ST 6, 0(4) ;  Store return address in callee frame
214 : LDA  2, 4(4) ;  Compute end of frame
215 : ADD  5, 2, 0 ;  Advance pointer to end of frame
216 : LDA 7, 152(0) ;  Call doSieveAt
217 : LD 1, 3(5) ;  Load callee return value into R1
218 : LDC  4, 4(0) ;  Load frame size
219 : SUB  5, 5, 4 ;  Restore pointer
220 : ST   1, 3(5) ;  Store function result into stack frame
221 : LD   6, 0(5) ;  Load return address
222 : LDA  7, 0(6) ;  Return to caller
