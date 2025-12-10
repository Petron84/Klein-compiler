0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
3 : ST 6, 0(5) ;  Store return address in main stack frame
4 : LDA 7, 10(0) ;  Load address of main IMEM block - branch to function
5 : OUT 1, 0, 0 ;  Return result
6 : HALT 0, 0, 0 ;  Terminate program execution
7 : OUT 1, 0, 0 ;  Hardcoded print function
8 : LD 6, 0(5) ;  Load return address from stack frame
9 : LDA 7, 0(6) ;  Jump to return address
10 : LDA 4, 4(5) ;  Base of callee frame
11 : LDC 1, 2(0) ;  Load integer-literal value into R1
12 : ST 1, 1(4) ;  Store argument 0 in callee
13 : LDC 1, 20(0) ;  Load integer-literal value into R1
14 : ST 1, 2(4) ;  Store argument 1 in callee
15 : LDA 6, 19(0) ;  Return address
16 : ST 6, 0(4) ;  Store return in callee frame
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LDA 7, 26(0) ;  Call sumPrimes
19 : LD 1, 3(5) ;  Load function result
20 : LDC 2, 4(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop back to caller
22 : ST 1, 1(5) ;  Store result into caller’s frame
23 : LD 1, 1(5) ;  Load return value into register 1
24 : LD 6, 0(5) ;  Load return address for main function into register 6
25 : LDA 7, 0(6) ;  Jump to runtime continuation
26 : LD 1, 1(5) ;  Load parameter 'a' into R1
27 : ADD 3, 1, 0 ;  Move right operand to R3
28 : LD 1, 2(5) ;  Load parameter 'b' into R1
29 : ADD 2, 1, 0 ;  Move left operand to R2
30 : ADD 1, 3, 0 ;  Restore right operand into R1
31 : SUB 1, 2, 1 ;  left - right for less-than check
32 : JLT 1, 2(7) ;  If R1 < 0, jump to true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 40(0) ;  If condition is false, jump to ELSE
37 : LDC 1, 0(0) ;  Load integer-literal value into R1
38 : ST 1, 3(5) ;  Store result into current frame's return slot
39 : LDA 7, 93(0) ;  Skip ELSE block
40 : LDA 4, 3(5) ;  Base of callee frame
41 : LD 1, 1(5) ;  Load parameter 'a' into R1
42 : ST 1, 1(4) ;  Store argument 0 in callee
43 : LDA 6, 47(0) ;  Return address
44 : ST 6, 0(4) ;  Store return in callee frame
45 : ADD 5, 4, 0 ;  Push callee frame
46 : LDA 7, 96(0) ;  Call isPrime
47 : LD 1, 2(5) ;  Load function result
48 : LDC 2, 3(0) ;  Caller frame size
49 : SUB 5, 5, 2 ;  Pop back to caller
50 : JEQ 1, 75(0) ;  If condition is false, jump to ELSE
51 : LDA 4, 4(5) ;  Base of callee frame
52 : LDC 1, 1(0) ;  Load integer-literal value into R1
53 : ADD 3, 1, 0 ;  Move right operand to R3
54 : LD 1, 1(5) ;  Load parameter 'a' into R1
55 : ADD 2, 1, 0 ;  Move left operand to R2
56 : ADD 1, 3, 0 ;  Restore right operand into R1
57 : ADD 1, 2, 1 ;  R1 = left + right
58 : ST 1, 1(4) ;  Store argument 0 in callee
59 : LD 1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 2(4) ;  Store argument 1 in callee
61 : LDA 6, 65(0) ;  Return address
62 : ST 6, 0(4) ;  Store return in callee frame
63 : ADD 5, 4, 0 ;  Push callee frame
64 : LDA 7, 26(0) ;  Call sumPrimes
65 : LD 1, 3(5) ;  Load function result
66 : LDC 2, 4(0) ;  Caller frame size
67 : SUB 5, 5, 2 ;  Pop back to caller
68 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
69 : LD 1, 1(5) ;  Load parameter 'a' into R1
70 : ADD 2, 1, 0 ;  Move left operand to R2
71 : ADD 1, 3, 0 ;  Restore right operand into R1
72 : ADD 1, 2, 1 ;  R1 = left + right
73 : ST 1, 3(5) ;  Store result into current frame's return slot
74 : LDA 7, 93(0) ;  Skip ELSE block
75 : LDA 4, 4(5) ;  Base of callee frame
76 : LDC 1, 1(0) ;  Load integer-literal value into R1
77 : ADD 3, 1, 0 ;  Move right operand to R3
78 : LD 1, 1(5) ;  Load parameter 'a' into R1
79 : ADD 2, 1, 0 ;  Move left operand to R2
80 : ADD 1, 3, 0 ;  Restore right operand into R1
81 : ADD 1, 2, 1 ;  R1 = left + right
82 : ST 1, 1(4) ;  Store argument 0 in callee
83 : LD 1, 2(5) ;  Load parameter 'b' into R1
84 : ST 1, 2(4) ;  Store argument 1 in callee
85 : LDA 6, 89(0) ;  Return address
86 : ST 6, 0(4) ;  Store return in callee frame
87 : ADD 5, 4, 0 ;  Push callee frame
88 : LDA 7, 26(0) ;  Call sumPrimes
89 : LD 1, 3(5) ;  Load function result
90 : LDC 2, 4(0) ;  Caller frame size
91 : SUB 5, 5, 2 ;  Pop back to caller
92 : ST 1, 3(5) ;  Store result into caller’s frame
93 : ST 1, 3(5) ;  Store function result into stack frame
94 : LD 6, 0(5) ;  Load return address
95 : LDA 7, 0(6) ;  Return to caller
96 : LDC 1, 2(0) ;  Load integer-literal value into R1
97 : ADD 3, 1, 0 ;  Move right operand to R3
98 : LD 1, 1(5) ;  Load parameter 'n' into R1
99 : ADD 2, 1, 0 ;  Move left operand to R2
100 : ADD 1, 3, 0 ;  Restore right operand into R1
101 : SUB 1, 2, 1 ;  left - right for less-than check
102 : JLT 1, 2(7) ;  If R1 < 0, jump to true
103 : LDC 1, 0(0) ;  false
104 : LDA 7, 1(7) ;  skip setting true
105 : LDC 1, 1(0) ;  true
106 : JEQ 1, 110(0) ;  If condition is false, jump to ELSE
107 : LDC 1, 0(0) ;  Load boolean-literal value into R1
108 : ST 1, 2(5) ;  Store result into current frame's return slot
109 : LDA 7, 170(0) ;  Skip ELSE block
110 : LDC 1, 2(0) ;  Load integer-literal value into R1
111 : ADD 3, 1, 0 ;  Move right operand to R3
112 : LD 1, 1(5) ;  Load parameter 'n' into R1
113 : ADD 2, 1, 0 ;  Move left operand to R2
114 : ADD 1, 3, 0 ;  Restore right operand into R1
115 : SUB 1, 2, 1 ;  left - right for equality check
116 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
117 : LDC 1, 0(0) ;  false
118 : LDA 7, 1(7) ;  skip setting true
119 : LDC 1, 1(0) ;  true
120 : JEQ 1, 124(0) ;  If condition is false, jump to ELSE
121 : LDC 1, 1(0) ;  Load boolean-literal value into R1
122 : ST 1, 2(5) ;  Store result into current frame's return slot
123 : LDA 7, 170(0) ;  Skip ELSE block
124 : LDA 4, 4(5) ;  Base of callee frame
125 : LD 1, 1(5) ;  Load parameter 'n' into R1
126 : ST 1, 1(4) ;  Store argument 0 in callee
127 : LDC 1, 2(0) ;  Load integer-literal value into R1
128 : ST 1, 2(4) ;  Store argument 1 in callee
129 : LDA 6, 133(0) ;  Return address
130 : ST 6, 0(4) ;  Store return in callee frame
131 : ADD 5, 4, 0 ;  Push callee frame
132 : LDA 7, 173(0) ;  Call divisible
133 : LD 1, 3(5) ;  Load function result
134 : LDC 2, 4(0) ;  Caller frame size
135 : SUB 5, 5, 2 ;  Pop back to caller
136 : ADD 2, 1, 0 ;  Move left operand to R2
137 : LDA 4, 4(5) ;  Base of callee frame
138 : LD 1, 1(5) ;  Load parameter 'n' into R1
139 : ST 1, 1(4) ;  Store argument 0 in callee
140 : LDC 1, 3(0) ;  Load integer-literal value into R1
141 : ST 1, 2(4) ;  Store argument 1 in callee
142 : LDA 6, 146(0) ;  Return address
143 : ST 6, 0(4) ;  Store return in callee frame
144 : ADD 5, 4, 0 ;  Push callee frame
145 : LDA 7, 173(0) ;  Call divisible
146 : LD 1, 3(5) ;  Load function result
147 : LDC 2, 4(0) ;  Caller frame size
148 : SUB 5, 5, 2 ;  Pop back to caller
149 : ADD 1, 2, 1 ;  R1 = left OR right
150 : ADD 2, 1, 0 ;  Move left operand to R2
151 : LDA 4, 4(5) ;  Base of callee frame
152 : LD 1, 1(5) ;  Load parameter 'n' into R1
153 : ST 1, 1(4) ;  Store argument 0 in callee
154 : LDC 1, 5(0) ;  Load integer-literal value into R1
155 : ST 1, 2(4) ;  Store argument 1 in callee
156 : LDA 6, 160(0) ;  Return address
157 : ST 6, 0(4) ;  Store return in callee frame
158 : ADD 5, 4, 0 ;  Push callee frame
159 : LDA 7, 173(0) ;  Call divisible
160 : LD 1, 3(5) ;  Load function result
161 : LDC 2, 4(0) ;  Caller frame size
162 : SUB 5, 5, 2 ;  Pop back to caller
163 : ADD 1, 2, 1 ;  R1 = left OR right
164 : JEQ 1, 168(0) ;  If condition is false, jump to ELSE
165 : LDC 1, 0(0) ;  Load boolean-literal value into R1
166 : ST 1, 2(5) ;  Store result into current frame's return slot
167 : LDA 7, 170(0) ;  Skip ELSE block
168 : LDC 1, 1(0) ;  Load boolean-literal value into R1
169 : ST 1, 2(5) ;  Store result into current frame's return slot
170 : ST 1, 2(5) ;  Store function result into stack frame
171 : LD 6, 0(5) ;  Load return address
172 : LDA 7, 0(6) ;  Return to caller
173 : LD 1, 2(5) ;  Load parameter 'y' into R1
174 : ADD 3, 1, 0 ;  Move right operand to R3
175 : LD 1, 1(5) ;  Load parameter 'x' into R1
176 : ADD 2, 1, 0 ;  Move left operand to R2
177 : ADD 1, 3, 0 ;  Restore right operand into R1
178 : DIV 1, 2, 1 ;  R1 = left / right
179 : ADD 2, 1, 0 ;  Move left operand to R2
180 : LD 1, 2(5) ;  Load parameter 'y' into R1
181 : MUL 1, 2, 1 ;  R1 = left * right
182 : ADD 2, 1, 0 ;  Move left operand to R2
183 : LD 1, 1(5) ;  Load parameter 'x' into R1
184 : SUB 1, 2, 1 ;  left - right for equality check
185 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
186 : LDC 1, 0(0) ;  false
187 : LDA 7, 1(7) ;  skip setting true
188 : LDC 1, 1(0) ;  true
189 : JEQ 1, 193(0) ;  If condition is false, jump to ELSE
190 : LDC 1, 1(0) ;  Load boolean-literal value into R1
191 : ST 1, 3(5) ;  Store result into current frame's return slot
192 : LDA 7, 195(0) ;  Skip ELSE block
193 : LDC 1, 0(0) ;  Load boolean-literal value into R1
194 : ST 1, 3(5) ;  Store result into current frame's return slot
195 : ST 1, 3(5) ;  Store function result into stack frame
196 : LD 6, 0(5) ;  Load return address
197 : LDA 7, 0(6) ;  Return to caller
