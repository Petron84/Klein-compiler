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
12 : ST   1, 3(5) ;  Spill Temporary
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
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
24 : LDA 7, 189(0) ;  Call loopToN
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
61 : LDA 7, 32(0) ;  Call remainder
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
83 : LDA 7, 32(0) ;  Call remainder
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
96 : LD   1, 2(5) ;  Load parameter 'current' into R1
97 : LDA  4, 3(5) ;  Update DMEM pointer
98 : LDA 6, 102(0) ;  Compute return address
99 : ST   6, 0(4) ;  Store return address
100 : ADD  5, 4, 0 ;  Updated Pointer
101 : LDA  7, 8(0) ; Call print
102 : LDC  4, 3(0) ;  Load frame size
103 : SUB  5, 5, 4 ;  Restore pointer
104 : ST   1, 3(5) ;  Store function result into stack frame
105 : LD   1, 1(5) ;  Load parameter 'n' into R1
106 : ST   1, 4(5) ;  Spill Temporary
107 : LD   1, 2(5) ;  Load parameter 'current' into R1
108 : ADD  3, 1, 0 ;  Save left operand
109 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
110 : ADD  2, 3, 0 ;  restore left operand
111 : ADD  1, 2, 1 ;  R1 = left + right
112 : ST   1, 5(5) ;  Spill Temporary
113 : LDA 4, 4(5) ; Restore Callee frame base
114 : LD   1, 5(5) ;  Restore Temporary
115 : ST 1, 2(4) ;  Store argument 1 into callee frame
116 : LD   1, 4(5) ;  Restore Temporary
117 : ST 1, 1(4) ;  Store argument 0 into callee frame
118 : LDA 4, 4(5) ; Restore Call frame base
119 : LDA 6, 123(0) ;  Compute return address
120 : ST 6, 0(4) ;  Store return address in callee frame
121 : ADD 5, 4, 0 ;  Update pointer
122 : LDA 7, 189(0) ;  Call loopToN
123 : LD 1, 3(5) ;  Load callee return value into R1
124 : LDC 4, 4(0) ;  Load frame size
125 : SUB 5, 5, 4 ;  Restore pointer
126 : ST   1, 3(5) ;  Store function result into stack frame
127 : LD   6, 0(5) ;  Load return address
128 : LDA  7, 0(6) ;  Return to caller
129 : LD   1, 2(5) ;  Load parameter 'current' into R1
130 : ST   1, 4(5) ;  Spill Temporary
131 : LD   1, 1(5) ;  Load parameter 'n' into R1
132 : ST   1, 5(5) ;  Spill Temporary
133 : LDA 4, 4(5) ; Restore Callee frame base
134 : LD   1, 5(5) ;  Restore Temporary
135 : ST 1, 2(4) ;  Store argument 1 into callee frame
136 : LD   1, 4(5) ;  Restore Temporary
137 : ST 1, 1(4) ;  Store argument 0 into callee frame
138 : LDA 4, 4(5) ; Restore Call frame base
139 : LDA 6, 143(0) ;  Compute return address
140 : ST 6, 0(4) ;  Store return address in callee frame
141 : ADD 5, 4, 0 ;  Update pointer
142 : LDA 7, 68(0) ;  Call divides
143 : LD 1, 3(5) ;  Load callee return value into R1
144 : LDC 4, 4(0) ;  Load frame size
145 : SUB 5, 5, 4 ;  Restore pointer
146 : JEQ  1, 165(0) ;  If condition is false, jump to ELSE
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : ST   1, 4(5) ;  Spill Temporary
149 : LD   1, 2(5) ;  Load parameter 'current' into R1
150 : ST   1, 5(5) ;  Spill Temporary
151 : LDA 4, 4(5) ; Restore Callee frame base
152 : LD   1, 5(5) ;  Restore Temporary
153 : ST 1, 2(4) ;  Store argument 1 into callee frame
154 : LD   1, 4(5) ;  Restore Temporary
155 : ST 1, 1(4) ;  Store argument 0 into callee frame
156 : LDA 4, 4(5) ; Restore Call frame base
157 : LDA 6, 161(0) ;  Compute return address
158 : ST 6, 0(4) ;  Store return address in callee frame
159 : ADD 5, 4, 0 ;  Update pointer
160 : LDA 7, 96(0) ;  Call printAndLoop
161 : LD 1, 3(5) ;  Load callee return value into R1
162 : LDC 4, 4(0) ;  Load frame size
163 : SUB 5, 5, 4 ;  Restore pointer
164 : LDA  7, 186(0) ;  Skip ELSE block
165 : LD   1, 1(5) ;  Load parameter 'n' into R1
166 : ST   1, 4(5) ;  Spill Temporary
167 : LD   1, 2(5) ;  Load parameter 'current' into R1
168 : ADD  3, 1, 0 ;  Save left operand
169 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
170 : ADD  2, 3, 0 ;  restore left operand
171 : ADD  1, 2, 1 ;  R1 = left + right
172 : ST   1, 5(5) ;  Spill Temporary
173 : LDA 4, 4(5) ; Restore Callee frame base
174 : LD   1, 5(5) ;  Restore Temporary
175 : ST 1, 2(4) ;  Store argument 1 into callee frame
176 : LD   1, 4(5) ;  Restore Temporary
177 : ST 1, 1(4) ;  Store argument 0 into callee frame
178 : LDA 4, 4(5) ; Restore Call frame base
179 : LDA 6, 183(0) ;  Compute return address
180 : ST 6, 0(4) ;  Store return address in callee frame
181 : ADD 5, 4, 0 ;  Update pointer
182 : LDA 7, 189(0) ;  Call loopToN
183 : LD 1, 3(5) ;  Load callee return value into R1
184 : LDC 4, 4(0) ;  Load frame size
185 : SUB 5, 5, 4 ;  Restore pointer
186 : ST   1, 3(5) ;  Store function result into stack frame
187 : LD   6, 0(5) ;  Load return address
188 : LDA  7, 0(6) ;  Return to caller
189 : LD   1, 1(5) ;  Load parameter 'n' into R1
190 : ADD  3, 1, 0 ;  Save left operand
191 : LD   1, 2(5) ;  Load parameter 'current' into R1
192 : ADD  2, 3, 0 ;  restore left operand
193 : SUB  1, 2, 1 ;  left - right for equality check
194 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
195 : LDC  1, 0(0) ;  false
196 : LDA  7, 1(7) ;  skip setting true
197 : LDC  1, 1(0) ;  true
198 : JEQ  1, 201(0) ;  If condition is false, jump to ELSE
199 : LD   1, 1(5) ;  Load parameter 'n' into R1
200 : LDA  7, 218(0) ;  Skip ELSE block
201 : LD   1, 1(5) ;  Load parameter 'n' into R1
202 : ST   1, 4(5) ;  Spill Temporary
203 : LD   1, 2(5) ;  Load parameter 'current' into R1
204 : ST   1, 5(5) ;  Spill Temporary
205 : LDA 4, 4(5) ; Restore Callee frame base
206 : LD   1, 5(5) ;  Restore Temporary
207 : ST 1, 2(4) ;  Store argument 1 into callee frame
208 : LD   1, 4(5) ;  Restore Temporary
209 : ST 1, 1(4) ;  Store argument 0 into callee frame
210 : LDA 4, 4(5) ; Restore Call frame base
211 : LDA 6, 215(0) ;  Compute return address
212 : ST 6, 0(4) ;  Store return address in callee frame
213 : ADD 5, 4, 0 ;  Update pointer
214 : LDA 7, 129(0) ;  Call testAndLoop
215 : LD 1, 3(5) ;  Load callee return value into R1
216 : LDC 4, 4(0) ;  Load frame size
217 : SUB 5, 5, 4 ;  Restore pointer
218 : ST   1, 3(5) ;  Store function result into stack frame
219 : LD   6, 0(5) ;  Load return address
220 : LDA  7, 0(6) ;  Return to caller
