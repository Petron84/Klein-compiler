0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDA 3, 4(5) ; Base of callee frame (stable)
13 : LDC 1, 2(0) ;  Load integer-literal value into register 1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LD 1, 1(5) ;  Load parameter 'n' into R1
16 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(3) ; Store return in callee frame (via R3)
19 : ADD 5, 3, 0 ; Push callee frame
20 : LDA 7, 188(0) ; Call sieveAt
21 : LD 1, 3(5) ;  Load function result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD 1, 2(5) ;  Load return value into register 1
26 : LD 6, 0(5) ;  Load return address for main function into register 6
27 : LDA 7, 0(6) ;  Jump to return address of main function
28 : LD 1, 2(5) ;  Load parameter 'den' into R1
29 : ADD 3, 1, 0 ;  Stash right operand in R3
30 : LD 1, 1(5) ;  Load parameter 'num' into R1
31 : ADD 2, 1, 0 ;  Move left operand to register 2
32 : ADD 1, 3, 0 ;  Restore right operand from R3
33 : SUB 1, 2, 1 ;  left - right for less-than check
34 : JLT 1, 2(7) ;  If R1 < 0, jump to true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If condition is false, jump to ELSE
39 : LD 1, 1(5) ;  Load parameter 'num' into R1
40 : LDA 7, 58(0) ;  Skip ELSE block
41 : LDA 3, 4(5) ; Base of callee frame (stable)
42 : LD 1, 2(5) ;  Load parameter 'den' into R1
43 : ADD 3, 1, 0 ;  Stash right operand in R3
44 : LD 1, 1(5) ;  Load parameter 'num' into R1
45 : ADD 2, 1, 0 ;  Move left operand to register 2
46 : ADD 1, 3, 0 ;  Restore right operand from R3
47 : SUB 1, 2, 1 ;  R1 = left - right
48 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
49 : LD 1, 2(5) ;  Load parameter 'den' into R1
50 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(3) ; Store return in callee frame (via R3)
53 : ADD 5, 3, 0 ; Push callee frame
54 : LDA 7, 28(0) ; Call rem
55 : LD 1, 3(5) ;  Load function result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop back to caller
58 : ST 1, 3(5) ;  Store function result into stack frame
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDA 3, 4(5) ; Base of callee frame (stable)
62 : LD 1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
64 : LD 1, 1(5) ;  Load parameter 'a' into R1
65 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(3) ; Store return in callee frame (via R3)
68 : ADD 5, 3, 0 ; Push callee frame
69 : LDA 7, 28(0) ; Call rem
70 : LD 1, 3(5) ;  Load function result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop back to caller
73 : ADD 2, 1, 0 ;  Move left operand to register 2
74 : LDC 1, 0(0) ;  Load integer-literal value into register 1
75 : SUB 1, 2, 1 ;  left - right for equality check
76 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
77 : LDC 1, 0(0) ;  false
78 : LDA 7, 1(7) ;  skip setting true
79 : LDC 1, 1(0) ;  true
80 : ST 1, 3(5) ;  Store function result into stack frame
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LD 1, 2(5) ;  Load parameter 'n' into R1
84 : ADD 3, 1, 0 ;  Stash right operand in R3
85 : LD 1, 1(5) ;  Load parameter 'i' into R1
86 : ADD 2, 1, 0 ;  Move left operand to register 2
87 : ADD 1, 3, 0 ;  Restore right operand from R3
88 : SUB 1, 2, 1 ;  left - right for less-than check
89 : JLT 1, 2(7) ;  If R1 < 0, jump to true
90 : LDC 1, 0(0) ;  false
91 : LDA 7, 1(7) ;  skip setting true
92 : LDC 1, 1(0) ;  true
93 : JEQ 1, 126(0) ;  If condition is false, jump to ELSE
94 : LDA 3, 4(5) ; Base of callee frame (stable)
95 : LD 1, 1(5) ;  Load parameter 'i' into R1
96 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
97 : LD 1, 2(5) ;  Load parameter 'n' into R1
98 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(3) ; Store return in callee frame (via R3)
101 : ADD 5, 3, 0 ; Push callee frame
102 : LDA 7, 61(0) ; Call divides
103 : LD 1, 3(5) ;  Load function result
104 : LDC 2, 4(0) ;  Caller frame size
105 : SUB 5, 5, 2 ;  Pop back to caller
106 : ADD 2, 1, 0 ;  Move left operand to register 2
107 : LDA 3, 4(5) ; Base of callee frame (stable)
108 : LDC 1, 1(0) ;  Load integer-literal value into register 1
109 : ADD 3, 1, 0 ;  Stash right operand in R3
110 : LD 1, 1(5) ;  Load parameter 'i' into R1
111 : ADD 2, 1, 0 ;  Move left operand to register 2
112 : ADD 1, 3, 0 ;  Restore right operand from R3
113 : ADD 1, 2, 1 ;  R1 = left + right
114 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
115 : LD 1, 2(5) ;  Load parameter 'n' into R1
116 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(3) ; Store return in callee frame (via R3)
119 : ADD 5, 3, 0 ; Push callee frame
120 : LDA 7, 83(0) ; Call hasDivisorFrom
121 : LD 1, 3(5) ;  Load function result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop back to caller
124 : ADD 1, 2, 1 ;  R1 = left OR right
125 : LDA 7, 127(0) ;  Skip ELSE block
126 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
127 : ST 1, 3(5) ;  Store function result into stack frame
128 : LD 6, 0(5) ;  Load return address
129 : LDA 7, 0(6) ;  Return to caller
130 : LDA 3, 4(5) ; Base of callee frame (stable)
131 : LDC 1, 2(0) ;  Load integer-literal value into register 1
132 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
133 : LD 1, 1(5) ;  Load parameter 'n' into R1
134 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(3) ; Store return in callee frame (via R3)
137 : ADD 5, 3, 0 ; Push callee frame
138 : LDA 7, 83(0) ; Call hasDivisorFrom
139 : LD 1, 3(5) ;  Load function result
140 : LDC 2, 4(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop back to caller
142 : LDC 2, 1(0) ;  Load 1 into R2
143 : SUB 1, 2, 1 ;  Logical NOT: 1 - R1
144 : ST 1, 2(5) ;  Store function result into stack frame
145 : LD 6, 0(5) ;  Load return address
146 : LDA 7, 0(6) ;  Return to caller
147 : LDA 3, 3(5) ; Base of callee frame (stable)
148 : LD 1, 1(5) ;  Load parameter 'current' into R1
149 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(3) ; Store return in callee frame (via R3)
152 : ADD 5, 3, 0 ; Push callee frame
153 : LDA 7, 130(0) ; Call isPrime
154 : LD 1, 2(5) ;  Load function result
155 : LDC 2, 3(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop back to caller
157 : JEQ 1, 160(0) ;  If condition is false, jump to ELSE
158 : LD 1, 1(5) ;  Load parameter 'current' into R1
159 : LDA 7, 161(0) ;  Skip ELSE block
160 : LDC 1, 0(0) ;  Load integer-literal value into register 1
161 : LDA 3, 3(5) ; Base of callee frame (stable)
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(3) ; Store return addr in callee frame
164 : ADD 5, 3, 0 ; Push new frame
165 : LDA 7, 9(0) ; Call print
166 : LDC 2, 3(0) ; Caller frame size
167 : SUB 5, 5, 2 ; Pop frame
168 : LDA 3, 4(5) ; Base of callee frame (stable)
169 : LDC 1, 1(0) ;  Load integer-literal value into register 1
170 : ADD 3, 1, 0 ;  Stash right operand in R3
171 : LD 1, 1(5) ;  Load parameter 'current' into R1
172 : ADD 2, 1, 0 ;  Move left operand to register 2
173 : ADD 1, 3, 0 ;  Restore right operand from R3
174 : ADD 1, 2, 1 ;  R1 = left + right
175 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
176 : LD 1, 2(5) ;  Load parameter 'max' into R1
177 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(3) ; Store return in callee frame (via R3)
180 : ADD 5, 3, 0 ; Push callee frame
181 : LDA 7, 188(0) ; Call sieveAt
182 : LD 1, 3(5) ;  Load function result
183 : LDC 2, 4(0) ;  Caller frame size
184 : SUB 5, 5, 2 ;  Pop back to caller
185 : ST 1, 3(5) ;  Store function result into stack frame
186 : LD 6, 0(5) ;  Load return address
187 : LDA 7, 0(6) ;  Return to caller
188 : LD 1, 1(5) ;  Load parameter 'current' into R1
189 : ADD 3, 1, 0 ;  Stash right operand in R3
190 : LD 1, 2(5) ;  Load parameter 'max' into R1
191 : ADD 2, 1, 0 ;  Move left operand to register 2
192 : ADD 1, 3, 0 ;  Restore right operand from R3
193 : SUB 1, 2, 1 ;  left - right for less-than check
194 : JLT 1, 2(7) ;  If R1 < 0, jump to true
195 : LDC 1, 0(0) ;  false
196 : LDA 7, 1(7) ;  skip setting true
197 : LDC 1, 1(0) ;  true
198 : JEQ 1, 201(0) ;  If condition is false, jump to ELSE
199 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
200 : LDA 7, 213(0) ;  Skip ELSE block
201 : LDA 3, 4(5) ; Base of callee frame (stable)
202 : LD 1, 1(5) ;  Load parameter 'current' into R1
203 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
204 : LD 1, 2(5) ;  Load parameter 'max' into R1
205 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
206 : LDA 6, 210(0) ; Return address
207 : ST 6, 0(3) ; Store return in callee frame (via R3)
208 : ADD 5, 3, 0 ; Push callee frame
209 : LDA 7, 147(0) ; Call doSieveAt
210 : LD 1, 3(5) ;  Load function result
211 : LDC 2, 4(0) ;  Caller frame size
212 : SUB 5, 5, 2 ;  Pop back to caller
213 : ST 1, 3(5) ;  Store function result into stack frame
214 : LD 6, 0(5) ;  Load return address
215 : LDA 7, 0(6) ;  Return to caller
