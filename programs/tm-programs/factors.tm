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
14 : LD   1, 1(5) ;  Load parameter 'n' into R1
15 : ST 1, 1(4) ;  Store argument 0 into callee frame
16 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
17 : ST 1, 2(4) ;  Store argument 1 into callee frame
18 : LDA 6, 23(0) ;  Compute return address
19 : ST 6, 0(4) ;  Store return address in callee frame
20 : LDA  2, 4(4) ;  Compute end of frame
21 : ADD  5, 2, 0 ;  Advance pointer to end of frame
22 : LDA 7, 163(0) ;  Call loopToN
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
55 : LDA 7, 30(0) ;  Call remainder
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
71 : LDA 7, 30(0) ;  Call remainder
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
86 : LD   1, 2(5) ;  Load parameter 'current' into R1
87 : LDA  4, 3(5) ;  Update DMEM pointer
88 : LDA 6, 92(0) ;  Compute return address
89 : ST   6, 0(4) ;  Store return address
90 : ADD  5, 4, 0 ;  Updated Pointer
91 : LDA  7, 10(0) ; Call print
92 : LDC  4, 3(0) ;  Load frame size
93 : SUB  5, 5, 4 ;  Restore pointer
94 : ST   1, 3(5) ;  Store function result into stack frame
95 : LDA  4, 0(5) ;  Save callee frame base
96 : LD   1, 1(5) ;  Load parameter 'n' into R1
97 : ST 1, 1(4) ;  Store argument 0 into callee frame
98 : LD   1, 2(5) ;  Load parameter 'current' into R1
99 : ADD  3, 1, 0 ;  Store left operand into temporary register
100 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
101 : ADD  2, 3, 0 ;  Restore left operand
102 : ADD  1, 2, 1 ;  R1 = left + right
103 : ST 1, 2(4) ;  Store argument 1 into callee frame
104 : LDA 6, 109(0) ;  Compute return address
105 : ST 6, 0(4) ;  Store return address in callee frame
106 : LDA  2, 4(4) ;  Compute end of frame
107 : ADD  5, 2, 0 ;  Advance pointer to end of frame
108 : LDA 7, 163(0) ;  Call loopToN
109 : LD 1, 3(5) ;  Load callee return value into R1
110 : LDC  4, 4(0) ;  Load frame size
111 : SUB  5, 5, 4 ;  Restore pointer
112 : ST   1, 3(5) ;  Store function result into stack frame
113 : LD   6, 0(5) ;  Load return address
114 : LDA  7, 0(6) ;  Return to caller
115 : LDA  4, 0(5) ;  Save callee frame base
116 : LD   1, 2(5) ;  Load parameter 'current' into R1
117 : ST 1, 1(4) ;  Store argument 0 into callee frame
118 : LD   1, 1(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ;  Store argument 1 into callee frame
120 : LDA 6, 125(0) ;  Compute return address
121 : ST 6, 0(4) ;  Store return address in callee frame
122 : LDA  2, 4(4) ;  Compute end of frame
123 : ADD  5, 2, 0 ;  Advance pointer to end of frame
124 : LDA 7, 62(0) ;  Call divides
125 : LD 1, 3(5) ;  Load callee return value into R1
126 : LDC  4, 4(0) ;  Load frame size
127 : SUB  5, 5, 4 ;  Restore pointer
128 : JEQ  1, 143(0) ;  If condition is false, jump to ELSE
129 : LDA  4, 0(5) ;  Save callee frame base
130 : LD   1, 1(5) ;  Load parameter 'n' into R1
131 : ST 1, 1(4) ;  Store argument 0 into callee frame
132 : LD   1, 2(5) ;  Load parameter 'current' into R1
133 : ST 1, 2(4) ;  Store argument 1 into callee frame
134 : LDA 6, 139(0) ;  Compute return address
135 : ST 6, 0(4) ;  Store return address in callee frame
136 : LDA  2, 4(4) ;  Compute end of frame
137 : ADD  5, 2, 0 ;  Advance pointer to end of frame
138 : LDA 7, 86(0) ;  Call printAndLoop
139 : LD 1, 3(5) ;  Load callee return value into R1
140 : LDC  4, 4(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : LDA  7, 160(0) ;  Skip ELSE block
143 : LDA  4, 0(5) ;  Save callee frame base
144 : LD   1, 1(5) ;  Load parameter 'n' into R1
145 : ST 1, 1(4) ;  Store argument 0 into callee frame
146 : LD   1, 2(5) ;  Load parameter 'current' into R1
147 : ADD  3, 1, 0 ;  Store left operand into temporary register
148 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
149 : ADD  2, 3, 0 ;  Restore left operand
150 : ADD  1, 2, 1 ;  R1 = left + right
151 : ST 1, 2(4) ;  Store argument 1 into callee frame
152 : LDA 6, 157(0) ;  Compute return address
153 : ST 6, 0(4) ;  Store return address in callee frame
154 : LDA  2, 4(4) ;  Compute end of frame
155 : ADD  5, 2, 0 ;  Advance pointer to end of frame
156 : LDA 7, 163(0) ;  Call loopToN
157 : LD 1, 3(5) ;  Load callee return value into R1
158 : LDC  4, 4(0) ;  Load frame size
159 : SUB  5, 5, 4 ;  Restore pointer
160 : ST   1, 3(5) ;  Store function result into stack frame
161 : LD   6, 0(5) ;  Load return address
162 : LDA  7, 0(6) ;  Return to caller
163 : LD   1, 1(5) ;  Load parameter 'n' into R1
164 : ADD  3, 1, 0 ;  Store left operand into temporary register
165 : LD   1, 2(5) ;  Load parameter 'current' into R1
166 : ADD  2, 3, 0 ;  Restore left operand
167 : SUB  1, 2, 1 ;  left - right for equality check
168 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
169 : LDC  1, 0(0) ;  false
170 : LDA  7, 1(7) ;  skip setting true
171 : LDC  1, 1(0) ;  true
172 : JEQ  1, 175(0) ;  If condition is false, jump to ELSE
173 : LD   1, 1(5) ;  Load parameter 'n' into R1
174 : LDA  7, 188(0) ;  Skip ELSE block
175 : LDA  4, 0(5) ;  Save callee frame base
176 : LD   1, 1(5) ;  Load parameter 'n' into R1
177 : ST 1, 1(4) ;  Store argument 0 into callee frame
178 : LD   1, 2(5) ;  Load parameter 'current' into R1
179 : ST 1, 2(4) ;  Store argument 1 into callee frame
180 : LDA 6, 185(0) ;  Compute return address
181 : ST 6, 0(4) ;  Store return address in callee frame
182 : LDA  2, 4(4) ;  Compute end of frame
183 : ADD  5, 2, 0 ;  Advance pointer to end of frame
184 : LDA 7, 115(0) ;  Call testAndLoop
185 : LD 1, 3(5) ;  Load callee return value into R1
186 : LDC  4, 4(0) ;  Load frame size
187 : SUB  5, 5, 4 ;  Restore pointer
188 : ST   1, 3(5) ;  Store function result into stack frame
189 : LD   6, 0(5) ;  Load return address
190 : LDA  7, 0(6) ;  Return to caller
