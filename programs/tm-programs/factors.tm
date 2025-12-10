0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main frame
6 : LDA 7, 12(0) ;  Branch to main
7 : OUT 1, 0, 0 ;  Print main's result
8 : HALT 0, 0, 0 ;  Terminate program
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(5) ;  Load return address
11 : LDA 7, 0(6) ;  Return
12 : ADD 4, 5, 0 ;  Set FP at 12 entry
13 : LDA 4, 4(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LD 1, 1(4) ;  Load parameter 'n' via FP
16 : ST 1, 1(5) ;  Store argument 0 in callee frame
17 : LDC 1, 1(0) ;  Load integer literal into R1
18 : ST 1, 2(5) ;  Store argument 1 in callee frame
19 : LDA 6, 22(0) ;  Return address
20 : ST 6, 0(5) ;  Store RA in callee frame
21 : LDA 7, 163(0) ;  Call loopToN
22 : LD 1, 3(5) ;  Load callee result
23 : LDC 2, 4(0) ;  Caller frame size
24 : SUB 5, 5, 2 ;  Pop callee frame
25 : ST 1, 2(4) ;  Store result into caller frame (via FP)
26 : LD 1, 2(4) ;  Load main return value (via FP)
27 : LD 6, 0(4) ;  Load return address (via FP)
28 : LDA 7, 0(6) ;  Return from main
29 : ADD 4, 5, 0 ;  Set FP at 29 entry
30 : LD 1, 2(4) ;  Load parameter 'den' via FP
31 : ADD 3, 1, 0 ;  Stash right in R3
32 : LD 1, 1(4) ;  Load parameter 'num' via FP
33 : ADD 2, 1, 0 ;  Move left to R2
34 : ADD 1, 3, 0 ;  Restore right to R1
35 : SUB 1, 2, 1 ;  left - right
36 : JLT 1, 2(7) ;  if < 0 then true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 43(0) ;  If false, jump to ELSE
41 : LD 1, 1(4) ;  Load parameter 'num' via FP
42 : LDA 7, 60(0) ;  Skip ELSE
43 : LDA 4, 4(5) ;  Compute callee frame base (temp)
44 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
45 : LD 1, 2(4) ;  Load parameter 'den' via FP
46 : ADD 3, 1, 0 ;  Stash right in R3
47 : LD 1, 1(4) ;  Load parameter 'num' via FP
48 : ADD 2, 1, 0 ;  Move left to R2
49 : ADD 1, 3, 0 ;  Restore right to R1
50 : SUB 1, 2, 1 ;  R1 = left - right
51 : ST 1, 1(5) ;  Store argument 0 in callee frame
52 : LD 1, 2(4) ;  Load parameter 'den' via FP
53 : ST 1, 2(5) ;  Store argument 1 in callee frame
54 : LDA 6, 57(0) ;  Return address
55 : ST 6, 0(5) ;  Store RA in callee frame
56 : LDA 7, 29(0) ;  Call remainder
57 : LD 1, 3(5) ;  Load callee result
58 : LDC 2, 4(0) ;  Caller frame size
59 : SUB 5, 5, 2 ;  Pop callee frame
60 : ST 1, 3(4) ;  Store function result (via FP)
61 : LD 6, 0(4) ;  Load return address (via FP)
62 : LDA 7, 0(6) ;  Return to caller
63 : ADD 4, 5, 0 ;  Set FP at 63 entry
64 : LDA 4, 4(5) ;  Compute callee frame base (temp)
65 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
66 : LD 1, 2(4) ;  Load parameter 'b' via FP
67 : ST 1, 1(5) ;  Store argument 0 in callee frame
68 : LD 1, 1(4) ;  Load parameter 'a' via FP
69 : ST 1, 2(5) ;  Store argument 1 in callee frame
70 : LDA 6, 73(0) ;  Return address
71 : ST 6, 0(5) ;  Store RA in callee frame
72 : LDA 7, 29(0) ;  Call remainder
73 : LD 1, 3(5) ;  Load callee result
74 : LDC 2, 4(0) ;  Caller frame size
75 : SUB 5, 5, 2 ;  Pop callee frame
76 : ADD 2, 1, 0 ;  Move left to R2
77 : LDC 1, 0(0) ;  Load integer literal into R1
78 : SUB 1, 2, 1 ;  left - right
79 : JEQ 1, 2(7) ;  if 0 then true
80 : LDC 1, 0(0) ;  false
81 : LDA 7, 1(7) ;  skip setting true
82 : LDC 1, 1(0) ;  true
83 : ST 1, 3(4) ;  Store function result (via FP)
84 : LD 6, 0(4) ;  Load return address (via FP)
85 : LDA 7, 0(6) ;  Return to caller
86 : ADD 4, 5, 0 ;  Set FP at 86 entry
87 : LDA 4, 3(5) ;  Compute callee frame base (temp)
88 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
89 : LD 1, 2(4) ;  Load parameter 'current' via FP
90 : ST 1, 1(5) ;  Store print arg in callee frame
91 : LDA 6, 94(0) ;  Return address
92 : ST 6, 0(5) ;  Store RA in callee frame
93 : LDA 7, 9(0) ;  Call print
94 : LDC 2, 3(0) ;  Caller frame size
95 : SUB 5, 5, 2 ;  Pop callee frame
96 : LDA 4, 4(5) ;  Compute callee frame base (temp)
97 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
98 : LD 1, 1(4) ;  Load parameter 'n' via FP
99 : ST 1, 1(5) ;  Store argument 0 in callee frame
100 : LDC 1, 1(0) ;  Load integer literal into R1
101 : ADD 3, 1, 0 ;  Stash right in R3
102 : LD 1, 2(4) ;  Load parameter 'current' via FP
103 : ADD 2, 1, 0 ;  Move left to R2
104 : ADD 1, 3, 0 ;  Restore right to R1
105 : ADD 1, 2, 1 ;  R1 = left + right
106 : ST 1, 2(5) ;  Store argument 1 in callee frame
107 : LDA 6, 110(0) ;  Return address
108 : ST 6, 0(5) ;  Store RA in callee frame
109 : LDA 7, 163(0) ;  Call loopToN
110 : LD 1, 3(5) ;  Load callee result
111 : LDC 2, 4(0) ;  Caller frame size
112 : SUB 5, 5, 2 ;  Pop callee frame
113 : ST 1, 3(4) ;  Store function result (via FP)
114 : LD 6, 0(4) ;  Load return address (via FP)
115 : LDA 7, 0(6) ;  Return to caller
116 : ADD 4, 5, 0 ;  Set FP at 116 entry
117 : LDA 4, 4(5) ;  Compute callee frame base (temp)
118 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
119 : LD 1, 2(4) ;  Load parameter 'current' via FP
120 : ST 1, 1(5) ;  Store argument 0 in callee frame
121 : LD 1, 1(4) ;  Load parameter 'n' via FP
122 : ST 1, 2(5) ;  Store argument 1 in callee frame
123 : LDA 6, 126(0) ;  Return address
124 : ST 6, 0(5) ;  Store RA in callee frame
125 : LDA 7, 63(0) ;  Call divides
126 : LD 1, 3(5) ;  Load callee result
127 : LDC 2, 4(0) ;  Caller frame size
128 : SUB 5, 5, 2 ;  Pop callee frame
129 : JEQ 1, 143(0) ;  If false, jump to ELSE
130 : LDA 4, 4(5) ;  Compute callee frame base (temp)
131 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
132 : LD 1, 1(4) ;  Load parameter 'n' via FP
133 : ST 1, 1(5) ;  Store argument 0 in callee frame
134 : LD 1, 2(4) ;  Load parameter 'current' via FP
135 : ST 1, 2(5) ;  Store argument 1 in callee frame
136 : LDA 6, 139(0) ;  Return address
137 : ST 6, 0(5) ;  Store RA in callee frame
138 : LDA 7, 86(0) ;  Call printAndLoop
139 : LD 1, 3(5) ;  Load callee result
140 : LDC 2, 4(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop callee frame
142 : LDA 7, 160(0) ;  Skip ELSE
143 : LDA 4, 4(5) ;  Compute callee frame base (temp)
144 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
145 : LD 1, 1(4) ;  Load parameter 'n' via FP
146 : ST 1, 1(5) ;  Store argument 0 in callee frame
147 : LDC 1, 1(0) ;  Load integer literal into R1
148 : ADD 3, 1, 0 ;  Stash right in R3
149 : LD 1, 2(4) ;  Load parameter 'current' via FP
150 : ADD 2, 1, 0 ;  Move left to R2
151 : ADD 1, 3, 0 ;  Restore right to R1
152 : ADD 1, 2, 1 ;  R1 = left + right
153 : ST 1, 2(5) ;  Store argument 1 in callee frame
154 : LDA 6, 157(0) ;  Return address
155 : ST 6, 0(5) ;  Store RA in callee frame
156 : LDA 7, 163(0) ;  Call loopToN
157 : LD 1, 3(5) ;  Load callee result
158 : LDC 2, 4(0) ;  Caller frame size
159 : SUB 5, 5, 2 ;  Pop callee frame
160 : ST 1, 3(4) ;  Store function result (via FP)
161 : LD 6, 0(4) ;  Load return address (via FP)
162 : LDA 7, 0(6) ;  Return to caller
163 : ADD 4, 5, 0 ;  Set FP at 163 entry
164 : LD 1, 2(4) ;  Load parameter 'current' via FP
165 : ADD 3, 1, 0 ;  Stash right in R3
166 : LD 1, 1(4) ;  Load parameter 'n' via FP
167 : ADD 2, 1, 0 ;  Move left to R2
168 : ADD 1, 3, 0 ;  Restore right to R1
169 : SUB 1, 2, 1 ;  left - right
170 : JEQ 1, 2(7) ;  if 0 then true
171 : LDC 1, 0(0) ;  false
172 : LDA 7, 1(7) ;  skip setting true
173 : LDC 1, 1(0) ;  true
174 : JEQ 1, 177(0) ;  If false, jump to ELSE
175 : LD 1, 1(4) ;  Load parameter 'n' via FP
176 : LDA 7, 189(0) ;  Skip ELSE
177 : LDA 4, 4(5) ;  Compute callee frame base (temp)
178 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
179 : LD 1, 1(4) ;  Load parameter 'n' via FP
180 : ST 1, 1(5) ;  Store argument 0 in callee frame
181 : LD 1, 2(4) ;  Load parameter 'current' via FP
182 : ST 1, 2(5) ;  Store argument 1 in callee frame
183 : LDA 6, 186(0) ;  Return address
184 : ST 6, 0(5) ;  Store RA in callee frame
185 : LDA 7, 116(0) ;  Call testAndLoop
186 : LD 1, 3(5) ;  Load callee result
187 : LDC 2, 4(0) ;  Caller frame size
188 : SUB 5, 5, 2 ;  Pop callee frame
189 : ST 1, 3(4) ;  Store function result (via FP)
190 : LD 6, 0(4) ;  Load return address (via FP)
191 : LDA 7, 0(6) ;  Return to caller
