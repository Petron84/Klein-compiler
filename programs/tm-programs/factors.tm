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
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDC 1, 1(0) ;  Load integer-literal value into R1
16 : ST 1, 2(4) ;  Store argument 1 in callee
17 : LDA 6, 21(0) ;  Return address
18 : ST 6, 0(4) ;  Store return in callee frame
19 : ADD 5, 4, 0 ;  Push callee frame
20 : LDA 7, 163(0) ;  Call loopToN
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
55 : LDA 7, 28(0) ;  Call remainder
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
71 : LDA 7, 28(0) ;  Call remainder
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
86 : LD 1, 2(5) ;  Load parameter 'current' into R1
87 : LDA 4, 3(5) ;  Base of callee frame
88 : LDA 6, 92(0) ;  Return address
89 : ST 6, 0(4) ;  Store return addr in callee frame
90 : ADD 5, 4, 0 ;  Push new frame
91 : LDA 7, 9(0) ;  Call print
92 : LDC 2, 3(0) ;  Caller frame size
93 : SUB 5, 5, 2 ;  Pop frame
94 : LDA 4, 4(5) ;  Base of callee frame
95 : LD 1, 1(5) ;  Load parameter 'n' into R1
96 : ST 1, 1(4) ;  Store argument 0 in callee
97 : LDC 1, 1(0) ;  Load integer-literal value into R1
98 : ADD 3, 1, 0 ;  Move right operand to R3
99 : LD 1, 2(5) ;  Load parameter 'current' into R1
100 : ADD 2, 1, 0 ;  Move left operand to R2
101 : ADD 1, 3, 0 ;  Restore right operand into R1
102 : ADD 1, 2, 1 ;  R1 = left + right
103 : ST 1, 2(4) ;  Store argument 1 in callee
104 : LDA 6, 108(0) ;  Return address
105 : ST 6, 0(4) ;  Store return in callee frame
106 : ADD 5, 4, 0 ;  Push callee frame
107 : LDA 7, 163(0) ;  Call loopToN
108 : LD 1, 3(5) ;  Load function result
109 : LDC 2, 4(0) ;  Caller frame size
110 : SUB 5, 5, 2 ;  Pop back to caller
111 : ST 1, 3(5) ;  Store result into caller’s frame
112 : ST 1, 3(5) ;  Store function result into stack frame
113 : LD 6, 0(5) ;  Load return address
114 : LDA 7, 0(6) ;  Return to caller
115 : LDA 4, 4(5) ;  Base of callee frame
116 : LD 1, 2(5) ;  Load parameter 'current' into R1
117 : ST 1, 1(4) ;  Store argument 0 in callee
118 : LD 1, 1(5) ;  Load parameter 'n' into R1
119 : ST 1, 2(4) ;  Store argument 1 in callee
120 : LDA 6, 124(0) ;  Return address
121 : ST 6, 0(4) ;  Store return in callee frame
122 : ADD 5, 4, 0 ;  Push callee frame
123 : LDA 7, 63(0) ;  Call divides
124 : LD 1, 3(5) ;  Load function result
125 : LDC 2, 4(0) ;  Caller frame size
126 : SUB 5, 5, 2 ;  Pop back to caller
127 : JEQ 1, 142(0) ;  If condition is false, jump to ELSE
128 : LDA 4, 4(5) ;  Base of callee frame
129 : LD 1, 1(5) ;  Load parameter 'n' into R1
130 : ST 1, 1(4) ;  Store argument 0 in callee
131 : LD 1, 2(5) ;  Load parameter 'current' into R1
132 : ST 1, 2(4) ;  Store argument 1 in callee
133 : LDA 6, 137(0) ;  Return address
134 : ST 6, 0(4) ;  Store return in callee frame
135 : ADD 5, 4, 0 ;  Push callee frame
136 : LDA 7, 86(0) ;  Call printAndLoop
137 : LD 1, 3(5) ;  Load function result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop back to caller
140 : ST 1, 3(5) ;  Store result into caller’s frame
141 : LDA 7, 160(0) ;  Skip ELSE block
142 : LDA 4, 4(5) ;  Base of callee frame
143 : LD 1, 1(5) ;  Load parameter 'n' into R1
144 : ST 1, 1(4) ;  Store argument 0 in callee
145 : LDC 1, 1(0) ;  Load integer-literal value into R1
146 : ADD 3, 1, 0 ;  Move right operand to R3
147 : LD 1, 2(5) ;  Load parameter 'current' into R1
148 : ADD 2, 1, 0 ;  Move left operand to R2
149 : ADD 1, 3, 0 ;  Restore right operand into R1
150 : ADD 1, 2, 1 ;  R1 = left + right
151 : ST 1, 2(4) ;  Store argument 1 in callee
152 : LDA 6, 156(0) ;  Return address
153 : ST 6, 0(4) ;  Store return in callee frame
154 : ADD 5, 4, 0 ;  Push callee frame
155 : LDA 7, 163(0) ;  Call loopToN
156 : LD 1, 3(5) ;  Load function result
157 : LDC 2, 4(0) ;  Caller frame size
158 : SUB 5, 5, 2 ;  Pop back to caller
159 : ST 1, 3(5) ;  Store result into caller’s frame
160 : ST 1, 3(5) ;  Store function result into stack frame
161 : LD 6, 0(5) ;  Load return address
162 : LDA 7, 0(6) ;  Return to caller
163 : LD 1, 2(5) ;  Load parameter 'current' into R1
164 : ADD 3, 1, 0 ;  Move right operand to R3
165 : LD 1, 1(5) ;  Load parameter 'n' into R1
166 : ADD 2, 1, 0 ;  Move left operand to R2
167 : ADD 1, 3, 0 ;  Restore right operand into R1
168 : SUB 1, 2, 1 ;  left - right for equality check
169 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
170 : LDC 1, 0(0) ;  false
171 : LDA 7, 1(7) ;  skip setting true
172 : LDC 1, 1(0) ;  true
173 : JEQ 1, 177(0) ;  If condition is false, jump to ELSE
174 : LD 1, 1(5) ;  Load parameter 'n' into R1
175 : ST 1, 3(5) ;  Store result into current frame's return slot
176 : LDA 7, 190(0) ;  Skip ELSE block
177 : LDA 4, 4(5) ;  Base of callee frame
178 : LD 1, 1(5) ;  Load parameter 'n' into R1
179 : ST 1, 1(4) ;  Store argument 0 in callee
180 : LD 1, 2(5) ;  Load parameter 'current' into R1
181 : ST 1, 2(4) ;  Store argument 1 in callee
182 : LDA 6, 186(0) ;  Return address
183 : ST 6, 0(4) ;  Store return in callee frame
184 : ADD 5, 4, 0 ;  Push callee frame
185 : LDA 7, 115(0) ;  Call testAndLoop
186 : LD 1, 3(5) ;  Load function result
187 : LDC 2, 4(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop back to caller
189 : ST 1, 3(5) ;  Store result into caller’s frame
190 : ST 1, 3(5) ;  Store function result into stack frame
191 : LD 6, 0(5) ;  Load return address
192 : LDA 7, 0(6) ;  Return to caller
