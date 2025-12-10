0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDA 4, 4(5) ;  Base of callee frame
13 : LDC 1, 2(0) ;  Load integer-literal value into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDC 1, 40(0) ;  Load integer-literal value into R1
16 : ST 1, 2(4) ;  Store argument 1 in callee
17 : LDA 6, 21(0) ;  Return address
18 : ST 6, 0(4) ;  Store return in callee frame
19 : ADD 5, 4, 0 ;  Push callee frame
20 : LDA 7, 195(0) ;  Call sieveAt
21 : LD 1, 3(5) ;  Load function result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop back to caller
24 : ST 1, 2(5) ;  Store result into caller’s frame
25 : LD 1, 2(5) ;  Load return value into register 1
26 : LD 6, 0(5) ;  Load return address for main function into register 6
27 : LDA 7, 0(6) ;  Jump to runtime continuation
28 : LD 1, 2(5) ;  Load parameter 'den' into R1
29 : ADD 3, 1, 0 ;  Move right operand to R3
30 : LD 1, 1(5) ;  Load parameter 'num' into R1
31 : ADD 2, 1, 0 ;  Move left operand to R2
32 : ADD 1, 3, 0 ;  Restore right operand into R1
33 : SUB 1, 2, 1 ;  left - right for less-than check
34 : JLT 1, 2(7) ;  If R1 < 0, jump to true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 42(0) ;  If condition is false, jump to ELSE
39 : LD 1, 1(5) ;  Load parameter 'num' into R1
40 : ST 1, 3(5) ;  Store result into current frame's return slot
41 : LDA 7, 60(0) ;  Skip ELSE block
42 : LDA 4, 4(5) ;  Base of callee frame
43 : LD 1, 2(5) ;  Load parameter 'den' into R1
44 : ADD 3, 1, 0 ;  Move right operand to R3
45 : LD 1, 1(5) ;  Load parameter 'num' into R1
46 : ADD 2, 1, 0 ;  Move left operand to R2
47 : ADD 1, 3, 0 ;  Restore right operand into R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : ST 1, 1(4) ;  Store argument 0 in callee
50 : LD 1, 2(5) ;  Load parameter 'den' into R1
51 : ST 1, 2(4) ;  Store argument 1 in callee
52 : LDA 6, 56(0) ;  Return address
53 : ST 6, 0(4) ;  Store return in callee frame
54 : ADD 5, 4, 0 ;  Push callee frame
55 : LDA 7, 28(0) ;  Call rem
56 : LD 1, 3(5) ;  Load function result
57 : LDC 2, 4(0) ;  Caller frame size
58 : SUB 5, 5, 2 ;  Pop back to caller
59 : ST 1, 3(5) ;  Store result into caller’s frame
60 : ST 1, 3(5) ;  Store function result into stack frame
61 : LD 6, 0(5) ;  Load return address
62 : LDA 7, 0(6) ;  Return to caller
63 : LDA 4, 4(5) ;  Base of callee frame
64 : LD 1, 2(5) ;  Load parameter 'b' into R1
65 : ST 1, 1(4) ;  Store argument 0 in callee
66 : LD 1, 1(5) ;  Load parameter 'a' into R1
67 : ST 1, 2(4) ;  Store argument 1 in callee
68 : LDA 6, 72(0) ;  Return address
69 : ST 6, 0(4) ;  Store return in callee frame
70 : ADD 5, 4, 0 ;  Push callee frame
71 : LDA 7, 28(0) ;  Call rem
72 : LD 1, 3(5) ;  Load function result
73 : LDC 2, 4(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop back to caller
75 : ADD 2, 1, 0 ;  Move left operand to R2
76 : LDC 1, 0(0) ;  Load integer-literal value into R1
77 : SUB 1, 2, 1 ;  left - right for equality check
78 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
79 : LDC 1, 0(0) ;  false
80 : LDA 7, 1(7) ;  skip setting true
81 : LDC 1, 1(0) ;  true
82 : ST 1, 3(5) ;  Store result into current frame's return slot
83 : ST 1, 3(5) ;  Store function result into stack frame
84 : LD 6, 0(5) ;  Load return address
85 : LDA 7, 0(6) ;  Return to caller
86 : LD 1, 2(5) ;  Load parameter 'n' into R1
87 : ADD 3, 1, 0 ;  Move right operand to R3
88 : LD 1, 1(5) ;  Load parameter 'i' into R1
89 : ADD 2, 1, 0 ;  Move left operand to R2
90 : ADD 1, 3, 0 ;  Restore right operand into R1
91 : SUB 1, 2, 1 ;  left - right for less-than check
92 : JLT 1, 2(7) ;  If R1 < 0, jump to true
93 : LDC 1, 0(0) ;  false
94 : LDA 7, 1(7) ;  skip setting true
95 : LDC 1, 1(0) ;  true
96 : JEQ 1, 130(0) ;  If condition is false, jump to ELSE
97 : LDA 4, 4(5) ;  Base of callee frame
98 : LD 1, 1(5) ;  Load parameter 'i' into R1
99 : ST 1, 1(4) ;  Store argument 0 in callee
100 : LD 1, 2(5) ;  Load parameter 'n' into R1
101 : ST 1, 2(4) ;  Store argument 1 in callee
102 : LDA 6, 106(0) ;  Return address
103 : ST 6, 0(4) ;  Store return in callee frame
104 : ADD 5, 4, 0 ;  Push callee frame
105 : LDA 7, 63(0) ;  Call divides
106 : LD 1, 3(5) ;  Load function result
107 : LDC 2, 4(0) ;  Caller frame size
108 : SUB 5, 5, 2 ;  Pop back to caller
109 : ADD 2, 1, 0 ;  Move left operand to R2
110 : LDA 4, 4(5) ;  Base of callee frame
111 : LDC 1, 1(0) ;  Load integer-literal value into R1
112 : ADD 3, 1, 0 ;  Move right operand to R3
113 : LD 1, 1(5) ;  Load parameter 'i' into R1
114 : ADD 2, 1, 0 ;  Move left operand to R2
115 : ADD 1, 3, 0 ;  Restore right operand into R1
116 : ADD 1, 2, 1 ;  R1 = left + right
117 : ST 1, 1(4) ;  Store argument 0 in callee
118 : LD 1, 2(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ;  Store argument 1 in callee
120 : LDA 6, 124(0) ;  Return address
121 : ST 6, 0(4) ;  Store return in callee frame
122 : ADD 5, 4, 0 ;  Push callee frame
123 : LDA 7, 86(0) ;  Call hasDivisorFrom
124 : LD 1, 3(5) ;  Load function result
125 : LDC 2, 4(0) ;  Caller frame size
126 : SUB 5, 5, 2 ;  Pop back to caller
127 : ADD 1, 2, 1 ;  R1 = left OR right
128 : ST 1, 3(5) ;  Store result into current frame's return slot
129 : LDA 7, 132(0) ;  Skip ELSE block
130 : LDC 1, 0(0) ;  Load boolean-literal value into R1
131 : ST 1, 3(5) ;  Store result into current frame's return slot
132 : ST 1, 3(5) ;  Store function result into stack frame
133 : LD 6, 0(5) ;  Load return address
134 : LDA 7, 0(6) ;  Return to caller
135 : LDA 4, 4(5) ;  Base of callee frame
136 : LDC 1, 2(0) ;  Load integer-literal value into R1
137 : ST 1, 1(4) ;  Store argument 0 in callee
138 : LD 1, 1(5) ;  Load parameter 'n' into R1
139 : ST 1, 2(4) ;  Store argument 1 in callee
140 : LDA 6, 144(0) ;  Return address
141 : ST 6, 0(4) ;  Store return in callee frame
142 : ADD 5, 4, 0 ;  Push callee frame
143 : LDA 7, 86(0) ;  Call hasDivisorFrom
144 : LD 1, 3(5) ;  Load function result
145 : LDC 2, 4(0) ;  Caller frame size
146 : SUB 5, 5, 2 ;  Pop back to caller
147 : LDC 2, 1(0) ;  Load 1 into R2
148 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
149 : ST 1, 2(5) ;  Store result into current frame's return slot
150 : ST 1, 2(5) ;  Store function result into stack frame
151 : LD 6, 0(5) ;  Load return address
152 : LDA 7, 0(6) ;  Return to caller
153 : LDA 4, 3(5) ;  Base of callee frame
154 : LD 1, 1(5) ;  Load parameter 'current' into R1
155 : ST 1, 1(4) ;  Store argument 0 in callee
156 : LDA 6, 160(0) ;  Return address
157 : ST 6, 0(4) ;  Store return in callee frame
158 : ADD 5, 4, 0 ;  Push callee frame
159 : LDA 7, 135(0) ;  Call isPrime
160 : LD 1, 2(5) ;  Load function result
161 : LDC 2, 3(0) ;  Caller frame size
162 : SUB 5, 5, 2 ;  Pop back to caller
163 : JEQ 1, 166(0) ;  If condition is false, jump to ELSE
164 : LD 1, 1(5) ;  Load parameter 'current' into R1
165 : LDA 7, 167(0) ;  Skip ELSE block
166 : LDC 1, 0(0) ;  Load integer-literal value into R1
167 : LDA 4, 3(5) ;  Base of callee frame
168 : LDA 6, 172(0) ;  Return address
169 : ST 6, 0(4) ;  Store return addr in callee frame
170 : ADD 5, 4, 0 ;  Push new frame
171 : LDA 7, 9(0) ;  Call print
172 : LDC 2, 3(0) ;  Caller frame size
173 : SUB 5, 5, 2 ;  Pop frame
174 : LDA 4, 4(5) ;  Base of callee frame
175 : LDC 1, 1(0) ;  Load integer-literal value into R1
176 : ADD 3, 1, 0 ;  Move right operand to R3
177 : LD 1, 1(5) ;  Load parameter 'current' into R1
178 : ADD 2, 1, 0 ;  Move left operand to R2
179 : ADD 1, 3, 0 ;  Restore right operand into R1
180 : ADD 1, 2, 1 ;  R1 = left + right
181 : ST 1, 1(4) ;  Store argument 0 in callee
182 : LD 1, 2(5) ;  Load parameter 'max' into R1
183 : ST 1, 2(4) ;  Store argument 1 in callee
184 : LDA 6, 188(0) ;  Return address
185 : ST 6, 0(4) ;  Store return in callee frame
186 : ADD 5, 4, 0 ;  Push callee frame
187 : LDA 7, 195(0) ;  Call sieveAt
188 : LD 1, 3(5) ;  Load function result
189 : LDC 2, 4(0) ;  Caller frame size
190 : SUB 5, 5, 2 ;  Pop back to caller
191 : ST 1, 3(5) ;  Store result into caller’s frame
192 : ST 1, 3(5) ;  Store function result into stack frame
193 : LD 6, 0(5) ;  Load return address
194 : LDA 7, 0(6) ;  Return to caller
195 : LD 1, 1(5) ;  Load parameter 'current' into R1
196 : ADD 3, 1, 0 ;  Move right operand to R3
197 : LD 1, 2(5) ;  Load parameter 'max' into R1
198 : ADD 2, 1, 0 ;  Move left operand to R2
199 : ADD 1, 3, 0 ;  Restore right operand into R1
200 : SUB 1, 2, 1 ;  left - right for less-than check
201 : JLT 1, 2(7) ;  If R1 < 0, jump to true
202 : LDC 1, 0(0) ;  false
203 : LDA 7, 1(7) ;  skip setting true
204 : LDC 1, 1(0) ;  true
205 : JEQ 1, 209(0) ;  If condition is false, jump to ELSE
206 : LDC 1, 1(0) ;  Load boolean-literal value into R1
207 : ST 1, 3(5) ;  Store result into current frame's return slot
208 : LDA 7, 222(0) ;  Skip ELSE block
209 : LDA 4, 4(5) ;  Base of callee frame
210 : LD 1, 1(5) ;  Load parameter 'current' into R1
211 : ST 1, 1(4) ;  Store argument 0 in callee
212 : LD 1, 2(5) ;  Load parameter 'max' into R1
213 : ST 1, 2(4) ;  Store argument 1 in callee
214 : LDA 6, 218(0) ;  Return address
215 : ST 6, 0(4) ;  Store return in callee frame
216 : ADD 5, 4, 0 ;  Push callee frame
217 : LDA 7, 153(0) ;  Call doSieveAt
218 : LD 1, 3(5) ;  Load function result
219 : LDC 2, 4(0) ;  Caller frame size
220 : SUB 5, 5, 2 ;  Pop back to caller
221 : ST 1, 3(5) ;  Store result into caller’s frame
222 : ST 1, 3(5) ;  Store function result into stack frame
223 : LD 6, 0(5) ;  Load return address
224 : LDA 7, 0(6) ;  Return to caller
