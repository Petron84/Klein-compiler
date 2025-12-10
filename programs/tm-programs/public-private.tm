0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LDC 1, 0(0) ;  Load integer-literal value into R1
15 : ADD 3, 1, 0 ;  Move right operand to R3
16 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
17 : ADD 2, 1, 0 ;  Move left operand to R2
18 : ADD 1, 3, 0 ;  Restore right operand into R1
19 : SUB 1, 2, 1 ;  left - right for equality check
20 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 39(0) ;  If condition is false, jump to ELSE
25 : LDA 4, 4(5) ;  Base of callee frame
26 : LDC 1, 2147481647(0) ;  Load integer-literal value into R1
27 : ST 1, 1(4) ;  Store argument 0 in callee
28 : LDC 1, 2047483747(0) ;  Load integer-literal value into R1
29 : ST 1, 2(4) ;  Store argument 1 in callee
30 : LDA 6, 34(0) ;  Return address
31 : ST 6, 0(4) ;  Store return in callee frame
32 : ADD 5, 4, 0 ;  Push callee frame
33 : LDA 7, 162(0) ;  Call factor
34 : LD 1, 3(5) ;  Load function result
35 : LDC 2, 4(0) ;  Caller frame size
36 : SUB 5, 5, 2 ;  Pop back to caller
37 : ST 1, 3(5) ;  Store result into caller’s frame
38 : LDA 7, 52(0) ;  Skip ELSE block
39 : LDA 4, 4(5) ;  Base of callee frame
40 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
41 : ST 1, 1(4) ;  Store argument 0 in callee
42 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
43 : ST 1, 2(4) ;  Store argument 1 in callee
44 : LDA 6, 48(0) ;  Return address
45 : ST 6, 0(4) ;  Store return in callee frame
46 : ADD 5, 4, 0 ;  Push callee frame
47 : LDA 7, 162(0) ;  Call factor
48 : LD 1, 3(5) ;  Load function result
49 : LDC 2, 4(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop back to caller
51 : ST 1, 3(5) ;  Store result into caller’s frame
52 : LD 1, 3(5) ;  Load return value into register 1
53 : LD 6, 0(5) ;  Load return address for main function into register 6
54 : LDA 7, 0(6) ;  Jump to runtime continuation
55 : LD 1, 2(5) ;  Load parameter 'b' into R1
56 : ADD 3, 1, 0 ;  Move right operand to R3
57 : LD 1, 1(5) ;  Load parameter 'a' into R1
58 : ADD 2, 1, 0 ;  Move left operand to R2
59 : ADD 1, 3, 0 ;  Restore right operand into R1
60 : SUB 1, 2, 1 ;  left - right for less-than check
61 : JLT 1, 2(7) ;  If R1 < 0, jump to true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : JEQ 1, 69(0) ;  If condition is false, jump to ELSE
66 : LD 1, 1(5) ;  Load parameter 'a' into R1
67 : ST 1, 3(5) ;  Store result into current frame's return slot
68 : LDA 7, 87(0) ;  Skip ELSE block
69 : LDA 4, 4(5) ;  Base of callee frame
70 : LD 1, 2(5) ;  Load parameter 'b' into R1
71 : ADD 3, 1, 0 ;  Move right operand to R3
72 : LD 1, 1(5) ;  Load parameter 'a' into R1
73 : ADD 2, 1, 0 ;  Move left operand to R2
74 : ADD 1, 3, 0 ;  Restore right operand into R1
75 : SUB 1, 2, 1 ;  R1 = left - right
76 : ST 1, 1(4) ;  Store argument 0 in callee
77 : LD 1, 2(5) ;  Load parameter 'b' into R1
78 : ST 1, 2(4) ;  Store argument 1 in callee
79 : LDA 6, 83(0) ;  Return address
80 : ST 6, 0(4) ;  Store return in callee frame
81 : ADD 5, 4, 0 ;  Push callee frame
82 : LDA 7, 55(0) ;  Call remainder
83 : LD 1, 3(5) ;  Load function result
84 : LDC 2, 4(0) ;  Caller frame size
85 : SUB 5, 5, 2 ;  Pop back to caller
86 : ST 1, 3(5) ;  Store result into caller’s frame
87 : ST 1, 3(5) ;  Store function result into stack frame
88 : LD 6, 0(5) ;  Load return address
89 : LDA 7, 0(6) ;  Return to caller
90 : LDC 1, 0(0) ;  Load integer-literal value into R1
91 : ADD 3, 1, 0 ;  Move right operand to R3
92 : LD 1, 2(5) ;  Load parameter 'b' into R1
93 : ADD 2, 1, 0 ;  Move left operand to R2
94 : ADD 1, 3, 0 ;  Restore right operand into R1
95 : SUB 1, 2, 1 ;  left - right for equality check
96 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
97 : LDC 1, 0(0) ;  false
98 : LDA 7, 1(7) ;  skip setting true
99 : LDC 1, 1(0) ;  true
100 : JEQ 1, 104(0) ;  If condition is false, jump to ELSE
101 : LD 1, 1(5) ;  Load parameter 'a' into R1
102 : ST 1, 3(5) ;  Store result into current frame's return slot
103 : LDA 7, 128(0) ;  Skip ELSE block
104 : LDA 4, 4(5) ;  Base of callee frame
105 : LD 1, 2(5) ;  Load parameter 'b' into R1
106 : ST 1, 1(4) ;  Store argument 0 in callee
107 : LDA 4, 4(5) ;  Base of callee frame
108 : LD 1, 1(5) ;  Load parameter 'a' into R1
109 : ST 1, 1(4) ;  Store argument 0 in callee
110 : LD 1, 2(5) ;  Load parameter 'b' into R1
111 : ST 1, 2(4) ;  Store argument 1 in callee
112 : LDA 6, 116(0) ;  Return address
113 : ST 6, 0(4) ;  Store return in callee frame
114 : ADD 5, 4, 0 ;  Push callee frame
115 : LDA 7, 55(0) ;  Call remainder
116 : LD 1, 3(5) ;  Load function result
117 : LDC 2, 4(0) ;  Caller frame size
118 : SUB 5, 5, 2 ;  Pop back to caller
119 : ST 1, 2(4) ;  Store argument 1 in callee
120 : LDA 6, 124(0) ;  Return address
121 : ST 6, 0(4) ;  Store return in callee frame
122 : ADD 5, 4, 0 ;  Push callee frame
123 : LDA 7, 90(0) ;  Call gcd
124 : LD 1, 3(5) ;  Load function result
125 : LDC 2, 4(0) ;  Caller frame size
126 : SUB 5, 5, 2 ;  Pop back to caller
127 : ST 1, 3(5) ;  Store result into caller’s frame
128 : ST 1, 3(5) ;  Store function result into stack frame
129 : LD 6, 0(5) ;  Load return address
130 : LDA 7, 0(6) ;  Return to caller
131 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
132 : ADD 3, 1, 0 ;  Move right operand to R3
133 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
134 : ADD 2, 1, 0 ;  Move left operand to R2
135 : ADD 1, 3, 0 ;  Restore right operand into R1
136 : DIV 1, 2, 1 ;  R1 = left / right
137 : LDA 4, 3(5) ;  Base of callee frame
138 : LDA 6, 142(0) ;  Return address
139 : ST 6, 0(4) ;  Store return addr in callee frame
140 : ADD 5, 4, 0 ;  Push new frame
141 : LDA 7, 11(0) ;  Call print
142 : LDC 2, 3(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop frame
144 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
145 : ADD 3, 1, 0 ;  Move right operand to R3
146 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
147 : ADD 2, 1, 0 ;  Move left operand to R2
148 : ADD 1, 3, 0 ;  Restore right operand into R1
149 : DIV 1, 2, 1 ;  R1 = left / right
150 : LDA 4, 3(5) ;  Base of callee frame
151 : LDA 6, 155(0) ;  Return address
152 : ST 6, 0(4) ;  Store return addr in callee frame
153 : ADD 5, 4, 0 ;  Push new frame
154 : LDA 7, 11(0) ;  Call print
155 : LDC 2, 3(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop frame
157 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
158 : ST 1, 4(5) ;  Store result into current frame's return slot
159 : ST 1, 4(5) ;  Store function result into stack frame
160 : LD 6, 0(5) ;  Load return address
161 : LDA 7, 0(6) ;  Return to caller
162 : LDA 4, 5(5) ;  Base of callee frame
163 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
164 : ST 1, 1(4) ;  Store argument 0 in callee
165 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
166 : ST 1, 2(4) ;  Store argument 1 in callee
167 : LDA 4, 4(5) ;  Base of callee frame
168 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
169 : ST 1, 1(4) ;  Store argument 0 in callee
170 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
171 : ST 1, 2(4) ;  Store argument 1 in callee
172 : LDA 6, 176(0) ;  Return address
173 : ST 6, 0(4) ;  Store return in callee frame
174 : ADD 5, 4, 0 ;  Push callee frame
175 : LDA 7, 90(0) ;  Call gcd
176 : LD 1, 3(5) ;  Load function result
177 : LDC 2, 4(0) ;  Caller frame size
178 : SUB 5, 5, 2 ;  Pop back to caller
179 : ST 1, 3(4) ;  Store argument 2 in callee
180 : LDA 6, 184(0) ;  Return address
181 : ST 6, 0(4) ;  Store return in callee frame
182 : ADD 5, 4, 0 ;  Push callee frame
183 : LDA 7, 131(0) ;  Call displayAndPrint
184 : LD 1, 4(5) ;  Load function result
185 : LDC 2, 5(0) ;  Caller frame size
186 : SUB 5, 5, 2 ;  Pop back to caller
187 : ST 1, 3(5) ;  Store result into caller’s frame
188 : ST 1, 3(5) ;  Store function result into stack frame
189 : LD 6, 0(5) ;  Load return address
190 : LDA 7, 0(6) ;  Return to caller
