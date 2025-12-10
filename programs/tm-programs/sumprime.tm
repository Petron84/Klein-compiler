0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST 6, 0(5) ;  Store return address in main frame
4 : LDA 7, 10(0) ;  Branch to main
5 : OUT 1, 0, 0 ;  Print main's result
6 : HALT 0, 0, 0 ;  Terminate program
7 : OUT 1, 0, 0 ;  print(R1)
8 : LD 6, 0(5) ;  Load return address
9 : LDA 7, 0(6) ;  Return
10 : ADD 4, 5, 0 ;  Set FP at 10 entry
11 : LDA 4, 4(5) ;  Compute callee frame base (temp)
12 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
13 : LDC 1, 2(0) ;  Load integer literal into R1
14 : ST 1, 1(5) ;  Store argument 0 in callee frame
15 : LDC 1, 20(0) ;  Load integer literal into R1
16 : ST 1, 2(5) ;  Store argument 1 in callee frame
17 : LDA 6, 20(0) ;  Return address
18 : ST 6, 0(5) ;  Store RA in callee frame
19 : LDA 7, 27(0) ;  Call sumPrimes
20 : LD 1, 3(5) ;  Load callee result
21 : LDC 2, 4(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ST 1, 1(4) ;  Store result into caller frame (via FP)
24 : LD 1, 1(4) ;  Load main return value (via FP)
25 : LD 6, 0(4) ;  Load return address (via FP)
26 : LDA 7, 0(6) ;  Return from main
27 : ADD 4, 5, 0 ;  Set FP at 27 entry
28 : LD 1, 1(4) ;  Load parameter 'a' via FP
29 : ADD 3, 1, 0 ;  Stash right in R3
30 : LD 1, 2(4) ;  Load parameter 'b' via FP
31 : ADD 2, 1, 0 ;  Move left to R2
32 : ADD 1, 3, 0 ;  Restore right to R1
33 : SUB 1, 2, 1 ;  left - right
34 : JLT 1, 2(7) ;  if < 0 then true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If false, jump to ELSE
39 : LDC 1, 0(0) ;  Load integer literal into R1
40 : LDA 7, 92(0) ;  Skip ELSE
41 : LDA 4, 3(5) ;  Compute callee frame base (temp)
42 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
43 : LD 1, 1(4) ;  Load parameter 'a' via FP
44 : ST 1, 1(5) ;  Store argument 0 in callee frame
45 : LDA 6, 48(0) ;  Return address
46 : ST 6, 0(5) ;  Store RA in callee frame
47 : LDA 7, 95(0) ;  Call isPrime
48 : LD 1, 2(5) ;  Load callee result
49 : LDC 2, 3(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop callee frame
51 : JEQ 1, 75(0) ;  If false, jump to ELSE
52 : LDA 4, 4(5) ;  Compute callee frame base (temp)
53 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
54 : LDC 1, 1(0) ;  Load integer literal into R1
55 : ADD 3, 1, 0 ;  Stash right in R3
56 : LD 1, 1(4) ;  Load parameter 'a' via FP
57 : ADD 2, 1, 0 ;  Move left to R2
58 : ADD 1, 3, 0 ;  Restore right to R1
59 : ADD 1, 2, 1 ;  R1 = left + right
60 : ST 1, 1(5) ;  Store argument 0 in callee frame
61 : LD 1, 2(4) ;  Load parameter 'b' via FP
62 : ST 1, 2(5) ;  Store argument 1 in callee frame
63 : LDA 6, 66(0) ;  Return address
64 : ST 6, 0(5) ;  Store RA in callee frame
65 : LDA 7, 27(0) ;  Call sumPrimes
66 : LD 1, 3(5) ;  Load callee result
67 : LDC 2, 4(0) ;  Caller frame size
68 : SUB 5, 5, 2 ;  Pop callee frame
69 : ADD 3, 1, 0 ;  Stash right in R3
70 : LD 1, 1(4) ;  Load parameter 'a' via FP
71 : ADD 2, 1, 0 ;  Move left to R2
72 : ADD 1, 3, 0 ;  Restore right to R1
73 : ADD 1, 2, 1 ;  R1 = left + right
74 : LDA 7, 92(0) ;  Skip ELSE
75 : LDA 4, 4(5) ;  Compute callee frame base (temp)
76 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
77 : LDC 1, 1(0) ;  Load integer literal into R1
78 : ADD 3, 1, 0 ;  Stash right in R3
79 : LD 1, 1(4) ;  Load parameter 'a' via FP
80 : ADD 2, 1, 0 ;  Move left to R2
81 : ADD 1, 3, 0 ;  Restore right to R1
82 : ADD 1, 2, 1 ;  R1 = left + right
83 : ST 1, 1(5) ;  Store argument 0 in callee frame
84 : LD 1, 2(4) ;  Load parameter 'b' via FP
85 : ST 1, 2(5) ;  Store argument 1 in callee frame
86 : LDA 6, 89(0) ;  Return address
87 : ST 6, 0(5) ;  Store RA in callee frame
88 : LDA 7, 27(0) ;  Call sumPrimes
89 : LD 1, 3(5) ;  Load callee result
90 : LDC 2, 4(0) ;  Caller frame size
91 : SUB 5, 5, 2 ;  Pop callee frame
92 : ST 1, 3(4) ;  Store function result (via FP)
93 : LD 6, 0(4) ;  Load return address (via FP)
94 : LDA 7, 0(6) ;  Return to caller
95 : ADD 4, 5, 0 ;  Set FP at 95 entry
96 : LDC 1, 2(0) ;  Load integer literal into R1
97 : ADD 3, 1, 0 ;  Stash right in R3
98 : LD 1, 1(4) ;  Load parameter 'n' via FP
99 : ADD 2, 1, 0 ;  Move left to R2
100 : ADD 1, 3, 0 ;  Restore right to R1
101 : SUB 1, 2, 1 ;  left - right
102 : JLT 1, 2(7) ;  if < 0 then true
103 : LDC 1, 0(0) ;  false
104 : LDA 7, 1(7) ;  skip setting true
105 : LDC 1, 1(0) ;  true
106 : JEQ 1, 109(0) ;  If false, jump to ELSE
107 : LDC 1, 0(0) ;  Load boolean literal into R1
108 : LDA 7, 166(0) ;  Skip ELSE
109 : LDC 1, 2(0) ;  Load integer literal into R1
110 : ADD 3, 1, 0 ;  Stash right in R3
111 : LD 1, 1(4) ;  Load parameter 'n' via FP
112 : ADD 2, 1, 0 ;  Move left to R2
113 : ADD 1, 3, 0 ;  Restore right to R1
114 : SUB 1, 2, 1 ;  left - right
115 : JEQ 1, 2(7) ;  if 0 then true
116 : LDC 1, 0(0) ;  false
117 : LDA 7, 1(7) ;  skip setting true
118 : LDC 1, 1(0) ;  true
119 : JEQ 1, 122(0) ;  If false, jump to ELSE
120 : LDC 1, 1(0) ;  Load boolean literal into R1
121 : LDA 7, 166(0) ;  Skip ELSE
122 : LDA 4, 4(5) ;  Compute callee frame base (temp)
123 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
124 : LD 1, 1(4) ;  Load parameter 'n' via FP
125 : ST 1, 1(5) ;  Store argument 0 in callee frame
126 : LDC 1, 2(0) ;  Load integer literal into R1
127 : ST 1, 2(5) ;  Store argument 1 in callee frame
128 : LDA 6, 131(0) ;  Return address
129 : ST 6, 0(5) ;  Store RA in callee frame
130 : LDA 7, 169(0) ;  Call divisible
131 : LD 1, 3(5) ;  Load callee result
132 : LDC 2, 4(0) ;  Caller frame size
133 : SUB 5, 5, 2 ;  Pop callee frame
134 : ADD 2, 1, 0 ;  Move left to R2
135 : LDA 4, 4(5) ;  Compute callee frame base (temp)
136 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
137 : LD 1, 1(4) ;  Load parameter 'n' via FP
138 : ST 1, 1(5) ;  Store argument 0 in callee frame
139 : LDC 1, 3(0) ;  Load integer literal into R1
140 : ST 1, 2(5) ;  Store argument 1 in callee frame
141 : LDA 6, 144(0) ;  Return address
142 : ST 6, 0(5) ;  Store RA in callee frame
143 : LDA 7, 169(0) ;  Call divisible
144 : LD 1, 3(5) ;  Load callee result
145 : LDC 2, 4(0) ;  Caller frame size
146 : SUB 5, 5, 2 ;  Pop callee frame
147 : ADD 1, 2, 1 ;  R1 = left OR right
148 : ADD 2, 1, 0 ;  Move left to R2
149 : LDA 4, 4(5) ;  Compute callee frame base (temp)
150 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
151 : LD 1, 1(4) ;  Load parameter 'n' via FP
152 : ST 1, 1(5) ;  Store argument 0 in callee frame
153 : LDC 1, 5(0) ;  Load integer literal into R1
154 : ST 1, 2(5) ;  Store argument 1 in callee frame
155 : LDA 6, 158(0) ;  Return address
156 : ST 6, 0(5) ;  Store RA in callee frame
157 : LDA 7, 169(0) ;  Call divisible
158 : LD 1, 3(5) ;  Load callee result
159 : LDC 2, 4(0) ;  Caller frame size
160 : SUB 5, 5, 2 ;  Pop callee frame
161 : ADD 1, 2, 1 ;  R1 = left OR right
162 : JEQ 1, 165(0) ;  If false, jump to ELSE
163 : LDC 1, 0(0) ;  Load boolean literal into R1
164 : LDA 7, 166(0) ;  Skip ELSE
165 : LDC 1, 1(0) ;  Load boolean literal into R1
166 : ST 1, 2(4) ;  Store function result (via FP)
167 : LD 6, 0(4) ;  Load return address (via FP)
168 : LDA 7, 0(6) ;  Return to caller
169 : ADD 4, 5, 0 ;  Set FP at 169 entry
170 : LD 1, 2(4) ;  Load parameter 'y' via FP
171 : ADD 3, 1, 0 ;  Stash right in R3
172 : LD 1, 1(4) ;  Load parameter 'x' via FP
173 : ADD 2, 1, 0 ;  Move left to R2
174 : ADD 1, 3, 0 ;  Restore right to R1
175 : DIV 1, 2, 1 ;  R1 = left / right
176 : ADD 2, 1, 0 ;  Move left to R2
177 : LD 1, 2(4) ;  Load parameter 'y' via FP
178 : MUL 1, 2, 1 ;  R1 = left * right
179 : ADD 2, 1, 0 ;  Move left to R2
180 : LD 1, 1(4) ;  Load parameter 'x' via FP
181 : SUB 1, 2, 1 ;  left - right
182 : JEQ 1, 2(7) ;  if 0 then true
183 : LDC 1, 0(0) ;  false
184 : LDA 7, 1(7) ;  skip setting true
185 : LDC 1, 1(0) ;  true
186 : JEQ 1, 189(0) ;  If false, jump to ELSE
187 : LDC 1, 1(0) ;  Load boolean literal into R1
188 : LDA 7, 190(0) ;  Skip ELSE
189 : LDC 1, 0(0) ;  Load boolean literal into R1
190 : ST 1, 3(4) ;  Store function result (via FP)
191 : LD 6, 0(4) ;  Load return address (via FP)
192 : LDA 7, 0(6) ;  Return to caller
