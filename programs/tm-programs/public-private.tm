0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main frame
8 : LDA 7, 14(0) ;  Branch to main
9 : OUT 1, 0, 0 ;  Print main's result
10 : HALT 0, 0, 0 ;  Terminate program
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(5) ;  Load return address
13 : LDA 7, 0(6) ;  Return
14 : ADD 4, 5, 0 ;  Set FP at 14 entry
15 : LDC 1, 0(0) ;  Load integer literal into R1
16 : ADD 3, 1, 0 ;  Stash right in R3
17 : LD 1, 1(4) ;  Load parameter 'publicKey' via FP
18 : ADD 2, 1, 0 ;  Move left to R2
19 : ADD 1, 3, 0 ;  Restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip setting true
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 40(0) ;  If false, jump to ELSE
26 : LDA 4, 4(5) ;  Compute callee frame base (temp)
27 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
28 : LDC 1, 2147481647(0) ;  Load integer literal into R1
29 : ST 1, 1(5) ;  Store argument 0 in callee frame
30 : LDC 1, 2047483747(0) ;  Load integer literal into R1
31 : ST 1, 2(5) ;  Store argument 1 in callee frame
32 : LDA 6, 35(0) ;  Return address
33 : ST 6, 0(5) ;  Store RA in callee frame
34 : LDA 7, 163(0) ;  Call factor
35 : LD 1, 3(5) ;  Load callee result
36 : LDC 2, 4(0) ;  Caller frame size
37 : SUB 5, 5, 2 ;  Pop callee frame
38 : ST 1, 3(4) ;  Store result into caller frame (via FP)
39 : LDA 7, 53(0) ;  Skip ELSE
40 : LDA 4, 4(5) ;  Compute callee frame base (temp)
41 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
42 : LD 1, 1(4) ;  Load parameter 'publicKey' via FP
43 : ST 1, 1(5) ;  Store argument 0 in callee frame
44 : LD 1, 2(4) ;  Load parameter 'privateKey' via FP
45 : ST 1, 2(5) ;  Store argument 1 in callee frame
46 : LDA 6, 49(0) ;  Return address
47 : ST 6, 0(5) ;  Store RA in callee frame
48 : LDA 7, 163(0) ;  Call factor
49 : LD 1, 3(5) ;  Load callee result
50 : LDC 2, 4(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop callee frame
52 : ST 1, 3(4) ;  Store result into caller frame (via FP)
53 : LD 1, 3(4) ;  Load main return value (via FP)
54 : LD 6, 0(4) ;  Load return address (via FP)
55 : LDA 7, 0(6) ;  Return from main
56 : ADD 4, 5, 0 ;  Set FP at 56 entry
57 : LD 1, 2(4) ;  Load parameter 'b' via FP
58 : ADD 3, 1, 0 ;  Stash right in R3
59 : LD 1, 1(4) ;  Load parameter 'a' via FP
60 : ADD 2, 1, 0 ;  Move left to R2
61 : ADD 1, 3, 0 ;  Restore right to R1
62 : SUB 1, 2, 1 ;  left - right
63 : JLT 1, 2(7) ;  if < 0 then true
64 : LDC 1, 0(0) ;  false
65 : LDA 7, 1(7) ;  skip setting true
66 : LDC 1, 1(0) ;  true
67 : JEQ 1, 70(0) ;  If false, jump to ELSE
68 : LD 1, 1(4) ;  Load parameter 'a' via FP
69 : LDA 7, 87(0) ;  Skip ELSE
70 : LDA 4, 4(5) ;  Compute callee frame base (temp)
71 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
72 : LD 1, 2(4) ;  Load parameter 'b' via FP
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(4) ;  Load parameter 'a' via FP
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  R1 = left - right
78 : ST 1, 1(5) ;  Store argument 0 in callee frame
79 : LD 1, 2(4) ;  Load parameter 'b' via FP
80 : ST 1, 2(5) ;  Store argument 1 in callee frame
81 : LDA 6, 84(0) ;  Return address
82 : ST 6, 0(5) ;  Store RA in callee frame
83 : LDA 7, 56(0) ;  Call remainder
84 : LD 1, 3(5) ;  Load callee result
85 : LDC 2, 4(0) ;  Caller frame size
86 : SUB 5, 5, 2 ;  Pop callee frame
87 : ST 1, 3(4) ;  Store function result (via FP)
88 : LD 6, 0(4) ;  Load return address (via FP)
89 : LDA 7, 0(6) ;  Return to caller
90 : ADD 4, 5, 0 ;  Set FP at 90 entry
91 : LDC 1, 0(0) ;  Load integer literal into R1
92 : ADD 3, 1, 0 ;  Stash right in R3
93 : LD 1, 2(4) ;  Load parameter 'b' via FP
94 : ADD 2, 1, 0 ;  Move left to R2
95 : ADD 1, 3, 0 ;  Restore right to R1
96 : SUB 1, 2, 1 ;  left - right
97 : JEQ 1, 2(7) ;  if 0 then true
98 : LDC 1, 0(0) ;  false
99 : LDA 7, 1(7) ;  skip setting true
100 : LDC 1, 1(0) ;  true
101 : JEQ 1, 104(0) ;  If false, jump to ELSE
102 : LD 1, 1(4) ;  Load parameter 'a' via FP
103 : LDA 7, 127(0) ;  Skip ELSE
104 : LDA 4, 4(5) ;  Compute callee frame base (temp)
105 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
106 : LD 1, 2(4) ;  Load parameter 'b' via FP
107 : ST 1, 1(5) ;  Store argument 0 in callee frame
108 : LDA 4, 4(5) ;  Compute callee frame base (temp)
109 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
110 : LD 1, 1(4) ;  Load parameter 'a' via FP
111 : ST 1, 1(5) ;  Store argument 0 in callee frame
112 : LD 1, 2(4) ;  Load parameter 'b' via FP
113 : ST 1, 2(5) ;  Store argument 1 in callee frame
114 : LDA 6, 117(0) ;  Return address
115 : ST 6, 0(5) ;  Store RA in callee frame
116 : LDA 7, 56(0) ;  Call remainder
117 : LD 1, 3(5) ;  Load callee result
118 : LDC 2, 4(0) ;  Caller frame size
119 : SUB 5, 5, 2 ;  Pop callee frame
120 : ST 1, 2(5) ;  Store argument 1 in callee frame
121 : LDA 6, 124(0) ;  Return address
122 : ST 6, 0(5) ;  Store RA in callee frame
123 : LDA 7, 90(0) ;  Call gcd
124 : LD 1, 3(5) ;  Load callee result
125 : LDC 2, 4(0) ;  Caller frame size
126 : SUB 5, 5, 2 ;  Pop callee frame
127 : ST 1, 3(4) ;  Store function result (via FP)
128 : LD 6, 0(4) ;  Load return address (via FP)
129 : LDA 7, 0(6) ;  Return to caller
130 : ADD 4, 5, 0 ;  Set FP at 130 entry
131 : LDA 4, 3(5) ;  Compute callee frame base (temp)
132 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
133 : LD 1, 3(4) ;  Load parameter 'commonFactor' via FP
134 : ADD 3, 1, 0 ;  Stash right in R3
135 : LD 1, 1(4) ;  Load parameter 'publicKey' via FP
136 : ADD 2, 1, 0 ;  Move left to R2
137 : ADD 1, 3, 0 ;  Restore right to R1
138 : DIV 1, 2, 1 ;  R1 = left / right
139 : ST 1, 1(5) ;  Store print arg in callee frame
140 : LDA 6, 143(0) ;  Return address
141 : ST 6, 0(5) ;  Store RA in callee frame
142 : LDA 7, 11(0) ;  Call print
143 : LDC 2, 3(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop callee frame
145 : LDA 4, 3(5) ;  Compute callee frame base (temp)
146 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
147 : LD 1, 3(4) ;  Load parameter 'commonFactor' via FP
148 : ADD 3, 1, 0 ;  Stash right in R3
149 : LD 1, 2(4) ;  Load parameter 'privateKey' via FP
150 : ADD 2, 1, 0 ;  Move left to R2
151 : ADD 1, 3, 0 ;  Restore right to R1
152 : DIV 1, 2, 1 ;  R1 = left / right
153 : ST 1, 1(5) ;  Store print arg in callee frame
154 : LDA 6, 157(0) ;  Return address
155 : ST 6, 0(5) ;  Store RA in callee frame
156 : LDA 7, 11(0) ;  Call print
157 : LDC 2, 3(0) ;  Caller frame size
158 : SUB 5, 5, 2 ;  Pop callee frame
159 : LD 1, 3(4) ;  Load parameter 'commonFactor' via FP
160 : ST 1, 4(4) ;  Store function result (via FP)
161 : LD 6, 0(4) ;  Load return address (via FP)
162 : LDA 7, 0(6) ;  Return to caller
163 : ADD 4, 5, 0 ;  Set FP at 163 entry
164 : LDA 4, 5(5) ;  Compute callee frame base (temp)
165 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
166 : LD 1, 1(4) ;  Load parameter 'publicKey' via FP
167 : ST 1, 1(5) ;  Store argument 0 in callee frame
168 : LD 1, 2(4) ;  Load parameter 'privateKey' via FP
169 : ST 1, 2(5) ;  Store argument 1 in callee frame
170 : LDA 4, 4(5) ;  Compute callee frame base (temp)
171 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
172 : LD 1, 1(4) ;  Load parameter 'publicKey' via FP
173 : ST 1, 1(5) ;  Store argument 0 in callee frame
174 : LD 1, 2(4) ;  Load parameter 'privateKey' via FP
175 : ST 1, 2(5) ;  Store argument 1 in callee frame
176 : LDA 6, 179(0) ;  Return address
177 : ST 6, 0(5) ;  Store RA in callee frame
178 : LDA 7, 90(0) ;  Call gcd
179 : LD 1, 3(5) ;  Load callee result
180 : LDC 2, 4(0) ;  Caller frame size
181 : SUB 5, 5, 2 ;  Pop callee frame
182 : ST 1, 3(5) ;  Store argument 2 in callee frame
183 : LDA 6, 186(0) ;  Return address
184 : ST 6, 0(5) ;  Store RA in callee frame
185 : LDA 7, 130(0) ;  Call displayAndPrint
186 : LD 1, 4(5) ;  Load callee result
187 : LDC 2, 5(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop callee frame
189 : ST 1, 3(4) ;  Store function result (via FP)
190 : LD 6, 0(4) ;  Load return address (via FP)
191 : LDA 7, 0(6) ;  Return to caller
