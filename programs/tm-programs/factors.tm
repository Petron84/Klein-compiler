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
21 : LDA 7, 163(0) ;  Call loopToN
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
53 : LDA 7, 29(0) ;  Call remainder
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
70 : LDA 7, 29(0) ;  Call remainder
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
84 : LD   1, 2(5) ;  Load parameter 'current' into R1
85 : LDA  3, 4(5) ;  Update DMEM pointer
86 : LDA 6, 90(0) ;  Compute return address
87 : ST   6, 0(3) ;  Store return address
88 : ADD  5, 3, 0 ;  Updated Pointer
89 : LDA  7, 8(0) ; Call print
90 : LDC  4, 4(0) ;  Load frame size
91 : SUB  5, 5, 4 ;  Restore pointer
92 : ST   1, 3(5) ;  Store function result into stack frame
93 : LD   1, 1(5) ;  Load parameter 'n' into R1
94 : LDA  3, 4(5) ; Restore Callee frame base
95 : ST 1, 1(3) ;  Store argument 0 into callee frame
96 : LD   1, 2(5) ;  Load parameter 'current' into R1
97 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
98 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
99 : ADD  1, 2, 1 ;  R1 = left + right
100 : LDA  3, 4(5) ; Restore Callee frame base
101 : ST 1, 2(3) ;  Store argument 1 into callee frame
102 : LDA  3, 4(5) ; Restore Call frame base
103 : LDA 6, 107(0) ;  Compute return address
104 : ST 6, 0(3) ;  Store return address in callee frame
105 : ADD  5, 3, 0 ;  Update pointer
106 : LDA 7, 163(0) ;  Call loopToN
107 : LD 1, 3(5) ;  Load callee return value into R1
108 : LDC  4, 4(0) ;  Load frame size
109 : SUB  5, 5, 4 ;  Restore pointer
110 : ST   1, 3(5) ;  Store function result into stack frame
111 : LD   6, 0(5) ;  Load return address
112 : LDA  7, 0(6) ;  Return to caller
113 : LD   1, 2(5) ;  Load parameter 'current' into R1
114 : LDA  3, 4(5) ; Restore Callee frame base
115 : ST 1, 1(3) ;  Store argument 0 into callee frame
116 : LD   1, 1(5) ;  Load parameter 'n' into R1
117 : LDA  3, 4(5) ; Restore Callee frame base
118 : ST 1, 2(3) ;  Store argument 1 into callee frame
119 : LDA  3, 4(5) ; Restore Call frame base
120 : LDA 6, 124(0) ;  Compute return address
121 : ST 6, 0(3) ;  Store return address in callee frame
122 : ADD  5, 3, 0 ;  Update pointer
123 : LDA 7, 60(0) ;  Call divides
124 : LD 1, 3(5) ;  Load callee return value into R1
125 : LDC  4, 4(0) ;  Load frame size
126 : SUB  5, 5, 4 ;  Restore pointer
127 : JEQ  1, 143(0) ;  If condition is false, jump to ELSE
128 : LD   1, 1(5) ;  Load parameter 'n' into R1
129 : LDA  3, 4(5) ; Restore Callee frame base
130 : ST 1, 1(3) ;  Store argument 0 into callee frame
131 : LD   1, 2(5) ;  Load parameter 'current' into R1
132 : LDA  3, 4(5) ; Restore Callee frame base
133 : ST 1, 2(3) ;  Store argument 1 into callee frame
134 : LDA  3, 4(5) ; Restore Call frame base
135 : LDA 6, 139(0) ;  Compute return address
136 : ST 6, 0(3) ;  Store return address in callee frame
137 : ADD  5, 3, 0 ;  Update pointer
138 : LDA 7, 84(0) ;  Call printAndLoop
139 : LD 1, 3(5) ;  Load callee return value into R1
140 : LDC  4, 4(0) ;  Load frame size
141 : SUB  5, 5, 4 ;  Restore pointer
142 : LDA  7, 160(0) ;  Skip ELSE block
143 : LD   1, 1(5) ;  Load parameter 'n' into R1
144 : LDA  3, 4(5) ; Restore Callee frame base
145 : ST 1, 1(3) ;  Store argument 0 into callee frame
146 : LD   1, 2(5) ;  Load parameter 'current' into R1
147 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
148 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
149 : ADD  1, 2, 1 ;  R1 = left + right
150 : LDA  3, 4(5) ; Restore Callee frame base
151 : ST 1, 2(3) ;  Store argument 1 into callee frame
152 : LDA  3, 4(5) ; Restore Call frame base
153 : LDA 6, 157(0) ;  Compute return address
154 : ST 6, 0(3) ;  Store return address in callee frame
155 : ADD  5, 3, 0 ;  Update pointer
156 : LDA 7, 163(0) ;  Call loopToN
157 : LD 1, 3(5) ;  Load callee return value into R1
158 : LDC  4, 4(0) ;  Load frame size
159 : SUB  5, 5, 4 ;  Restore pointer
160 : ST   1, 3(5) ;  Store function result into stack frame
161 : LD   6, 0(5) ;  Load return address
162 : LDA  7, 0(6) ;  Return to caller
163 : LD   1, 1(5) ;  Load parameter 'n' into R1
164 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
165 : LD   1, 2(5) ;  Load parameter 'current' into R1
166 : SUB  1, 2, 1 ;  left - right for equality check
167 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
168 : LDC  1, 0(0) ;  false
169 : LDA  7, 1(7) ;  skip setting true
170 : LDC  1, 1(0) ;  true
171 : JEQ  1, 174(0) ;  If condition is false, jump to ELSE
172 : LD   1, 1(5) ;  Load parameter 'n' into R1
173 : LDA  7, 188(0) ;  Skip ELSE block
174 : LD   1, 1(5) ;  Load parameter 'n' into R1
175 : LDA  3, 4(5) ; Restore Callee frame base
176 : ST 1, 1(3) ;  Store argument 0 into callee frame
177 : LD   1, 2(5) ;  Load parameter 'current' into R1
178 : LDA  3, 4(5) ; Restore Callee frame base
179 : ST 1, 2(3) ;  Store argument 1 into callee frame
180 : LDA  3, 4(5) ; Restore Call frame base
181 : LDA 6, 185(0) ;  Compute return address
182 : ST 6, 0(3) ;  Store return address in callee frame
183 : ADD  5, 3, 0 ;  Update pointer
184 : LDA 7, 113(0) ;  Call testAndLoop
185 : LD 1, 3(5) ;  Load callee return value into R1
186 : LDC  4, 4(0) ;  Load frame size
187 : SUB  5, 5, 4 ;  Restore pointer
188 : ST   1, 3(5) ;  Store function result into stack frame
189 : LD   6, 0(5) ;  Load return address
190 : LDA  7, 0(6) ;  Return to caller
