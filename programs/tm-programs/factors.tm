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
12 : LDA  3, 3(5) ; Restore Callee frame base
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
15 : LDA  3, 3(5) ; Restore Callee frame base
16 : ST 1, 2(3) ;  Store argument 1 into callee frame
17 : LDA  3, 3(5) ; Restore Call frame base
18 : LDA 6, 22(0) ;  Compute return address
19 : ST 6, 0(3) ;  Store return address in callee frame
20 : ADD  5, 3, 0 ;  Update pointer
21 : LDA 7, 168(0) ;  Call loopToN
22 : LD 1, 3(5) ;  Load callee return value into R1
23 : LDC  4, 3(0) ;  Load frame size
24 : SUB  5, 5, 4 ;  Restore pointer
25 : ST 1, 2(5) ;  Store result into current frame's return slot
26 : LD   1, 2(5) ;  Load return value into register 1
27 : LD  6, 0(5) ;  Load return address for main function into register 6
28 : LDA  7, 0(6) ;  Jump to return address of main function
29 : LD   1, 1(5) ;  Load parameter 'num' into R1
30 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
31 : LD   1, 2(5) ;  Load parameter 'den' into R1
32 : LD  2, 3(5) ;  Restore left operand
33 : SUB  1, 2, 1 ;  left - right for less-than check
34 : JLT  1, 2(7) ;  If R1 < 0, jump to true
35 : LDC  1, 0(0) ;  false
36 : LDA  7, 1(7) ;  skip setting true
37 : LDC  1, 1(0) ;  true
38 : JEQ  1, 41(0) ;  If condition is false, jump to ELSE
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : LDA  7, 59(0) ;  Skip ELSE block
41 : LD   1, 1(5) ;  Load parameter 'num' into R1
42 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
43 : LD   1, 2(5) ;  Load parameter 'den' into R1
44 : LD  2, 3(5) ;  Restore left operand
45 : SUB  1, 2, 1 ;  R1 = left - right
46 : LDA  3, 4(5) ; Restore Callee frame base
47 : ST 1, 1(3) ;  Store argument 0 into callee frame
48 : LD   1, 2(5) ;  Load parameter 'den' into R1
49 : LDA  3, 4(5) ; Restore Callee frame base
50 : ST 1, 2(3) ;  Store argument 1 into callee frame
51 : LDA  3, 4(5) ; Restore Call frame base
52 : LDA 6, 56(0) ;  Compute return address
53 : ST 6, 0(3) ;  Store return address in callee frame
54 : ADD  5, 3, 0 ;  Update pointer
55 : LDA 7, 29(0) ;  Call remainder
56 : LD 1, 3(5) ;  Load callee return value into R1
57 : LDC  4, 4(0) ;  Load frame size
58 : SUB  5, 5, 4 ;  Restore pointer
59 : ST   1, 3(5) ;  Store function result into stack frame
60 : LD   6, 0(5) ;  Load return address
61 : LDA  7, 0(6) ;  Return to caller
62 : LD   1, 2(5) ;  Load parameter 'b' into R1
63 : LDA  3, 4(5) ; Restore Callee frame base
64 : ST 1, 1(3) ;  Store argument 0 into callee frame
65 : LD   1, 1(5) ;  Load parameter 'a' into R1
66 : LDA  3, 4(5) ; Restore Callee frame base
67 : ST 1, 2(3) ;  Store argument 1 into callee frame
68 : LDA  3, 4(5) ; Restore Call frame base
69 : LDA 6, 73(0) ;  Compute return address
70 : ST 6, 0(3) ;  Store return address in callee frame
71 : ADD  5, 3, 0 ;  Update pointer
72 : LDA 7, 29(0) ;  Call remainder
73 : LD 1, 3(5) ;  Load callee return value into R1
74 : LDC  4, 4(0) ;  Load frame size
75 : SUB  5, 5, 4 ;  Restore pointer
76 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
77 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
78 : LD  2, 3(5) ;  Restore left operand
79 : SUB  1, 2, 1 ;  left - right for equality check
80 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
81 : LDC  1, 0(0) ;  false
82 : LDA  7, 1(7) ;  skip setting true
83 : LDC  1, 1(0) ;  true
84 : ST   1, 3(5) ;  Store function result into stack frame
85 : LD   6, 0(5) ;  Load return address
86 : LDA  7, 0(6) ;  Return to caller
87 : LD   1, 2(5) ;  Load parameter 'current' into R1
88 : LDA  3, 4(5) ;  Update DMEM pointer
89 : LDA 6, 93(0) ;  Compute return address
90 : ST   6, 0(3) ;  Store return address
91 : ADD  5, 3, 0 ;  Updated Pointer
92 : LDA  7, 8(0) ; Call print
93 : LDC  4, 4(0) ;  Load frame size
94 : SUB  5, 5, 4 ;  Restore pointer
95 : ST   1, 3(5) ;  Store function result into stack frame
96 : LD   1, 1(5) ;  Load parameter 'n' into R1
97 : LDA  3, 4(5) ; Restore Callee frame base
98 : ST 1, 1(3) ;  Store argument 0 into callee frame
99 : LD   1, 2(5) ;  Load parameter 'current' into R1
100 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
101 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
102 : LD  2, 3(5) ;  Restore left operand
103 : ADD  1, 2, 1 ;  R1 = left + right
104 : LDA  3, 4(5) ; Restore Callee frame base
105 : ST 1, 2(3) ;  Store argument 1 into callee frame
106 : LDA  3, 4(5) ; Restore Call frame base
107 : LDA 6, 111(0) ;  Compute return address
108 : ST 6, 0(3) ;  Store return address in callee frame
109 : ADD  5, 3, 0 ;  Update pointer
110 : LDA 7, 168(0) ;  Call loopToN
111 : LD 1, 3(5) ;  Load callee return value into R1
112 : LDC  4, 4(0) ;  Load frame size
113 : SUB  5, 5, 4 ;  Restore pointer
114 : ST   1, 3(5) ;  Store function result into stack frame
115 : LD   6, 0(5) ;  Load return address
116 : LDA  7, 0(6) ;  Return to caller
117 : LD   1, 2(5) ;  Load parameter 'current' into R1
118 : LDA  3, 4(5) ; Restore Callee frame base
119 : ST 1, 1(3) ;  Store argument 0 into callee frame
120 : LD   1, 1(5) ;  Load parameter 'n' into R1
121 : LDA  3, 4(5) ; Restore Callee frame base
122 : ST 1, 2(3) ;  Store argument 1 into callee frame
123 : LDA  3, 4(5) ; Restore Call frame base
124 : LDA 6, 128(0) ;  Compute return address
125 : ST 6, 0(3) ;  Store return address in callee frame
126 : ADD  5, 3, 0 ;  Update pointer
127 : LDA 7, 62(0) ;  Call divides
128 : LD 1, 3(5) ;  Load callee return value into R1
129 : LDC  4, 4(0) ;  Load frame size
130 : SUB  5, 5, 4 ;  Restore pointer
131 : JEQ  1, 147(0) ;  If condition is false, jump to ELSE
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : LDA  3, 4(5) ; Restore Callee frame base
134 : ST 1, 1(3) ;  Store argument 0 into callee frame
135 : LD   1, 2(5) ;  Load parameter 'current' into R1
136 : LDA  3, 4(5) ; Restore Callee frame base
137 : ST 1, 2(3) ;  Store argument 1 into callee frame
138 : LDA  3, 4(5) ; Restore Call frame base
139 : LDA 6, 143(0) ;  Compute return address
140 : ST 6, 0(3) ;  Store return address in callee frame
141 : ADD  5, 3, 0 ;  Update pointer
142 : LDA 7, 87(0) ;  Call printAndLoop
143 : LD 1, 3(5) ;  Load callee return value into R1
144 : LDC  4, 4(0) ;  Load frame size
145 : SUB  5, 5, 4 ;  Restore pointer
146 : LDA  7, 165(0) ;  Skip ELSE block
147 : LD   1, 1(5) ;  Load parameter 'n' into R1
148 : LDA  3, 4(5) ; Restore Callee frame base
149 : ST 1, 1(3) ;  Store argument 0 into callee frame
150 : LD   1, 2(5) ;  Load parameter 'current' into R1
151 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
152 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
153 : LD  2, 3(5) ;  Restore left operand
154 : ADD  1, 2, 1 ;  R1 = left + right
155 : LDA  3, 4(5) ; Restore Callee frame base
156 : ST 1, 2(3) ;  Store argument 1 into callee frame
157 : LDA  3, 4(5) ; Restore Call frame base
158 : LDA 6, 162(0) ;  Compute return address
159 : ST 6, 0(3) ;  Store return address in callee frame
160 : ADD  5, 3, 0 ;  Update pointer
161 : LDA 7, 168(0) ;  Call loopToN
162 : LD 1, 3(5) ;  Load callee return value into R1
163 : LDC  4, 4(0) ;  Load frame size
164 : SUB  5, 5, 4 ;  Restore pointer
165 : ST   1, 3(5) ;  Store function result into stack frame
166 : LD   6, 0(5) ;  Load return address
167 : LDA  7, 0(6) ;  Return to caller
168 : LD   1, 1(5) ;  Load parameter 'n' into R1
169 : ST  1, 3(5) ;  Store left operand into return slot. Safeguard for recursion
170 : LD   1, 2(5) ;  Load parameter 'current' into R1
171 : LD  2, 3(5) ;  Restore left operand
172 : SUB  1, 2, 1 ;  left - right for equality check
173 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
174 : LDC  1, 0(0) ;  false
175 : LDA  7, 1(7) ;  skip setting true
176 : LDC  1, 1(0) ;  true
177 : JEQ  1, 180(0) ;  If condition is false, jump to ELSE
178 : LD   1, 1(5) ;  Load parameter 'n' into R1
179 : LDA  7, 194(0) ;  Skip ELSE block
180 : LD   1, 1(5) ;  Load parameter 'n' into R1
181 : LDA  3, 4(5) ; Restore Callee frame base
182 : ST 1, 1(3) ;  Store argument 0 into callee frame
183 : LD   1, 2(5) ;  Load parameter 'current' into R1
184 : LDA  3, 4(5) ; Restore Callee frame base
185 : ST 1, 2(3) ;  Store argument 1 into callee frame
186 : LDA  3, 4(5) ; Restore Call frame base
187 : LDA 6, 191(0) ;  Compute return address
188 : ST 6, 0(3) ;  Store return address in callee frame
189 : ADD  5, 3, 0 ;  Update pointer
190 : LDA 7, 117(0) ;  Call testAndLoop
191 : LD 1, 3(5) ;  Load callee return value into R1
192 : LDC  4, 4(0) ;  Load frame size
193 : SUB  5, 5, 4 ;  Restore pointer
194 : ST   1, 3(5) ;  Store function result into stack frame
195 : LD   6, 0(5) ;  Load return address
196 : LDA  7, 0(6) ;  Return to caller
