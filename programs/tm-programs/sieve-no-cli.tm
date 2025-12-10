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
15 : LDC 1, 2(0) ;  Load integer literal into R1
16 : ST 1, 1(5) ;  Store argument 0 in callee frame
17 : LDC 1, 40(0) ;  Load integer literal into R1
18 : ST 1, 2(5) ;  Store argument 1 in callee frame
19 : LDA 6, 22(0) ;  Return address
20 : ST 6, 0(5) ;  Store RA in callee frame
21 : LDA 7, 195(0) ;  Call sieveAt
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
56 : LDA 7, 29(0) ;  Call rem
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
72 : LDA 7, 29(0) ;  Call rem
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
87 : LD 1, 2(4) ;  Load parameter 'n' via FP
88 : ADD 3, 1, 0 ;  Stash right in R3
89 : LD 1, 1(4) ;  Load parameter 'i' via FP
90 : ADD 2, 1, 0 ;  Move left to R2
91 : ADD 1, 3, 0 ;  Restore right to R1
92 : SUB 1, 2, 1 ;  left - right
93 : JLT 1, 2(7) ;  if < 0 then true
94 : LDC 1, 0(0) ;  false
95 : LDA 7, 1(7) ;  skip setting true
96 : LDC 1, 1(0) ;  true
97 : JEQ 1, 130(0) ;  If false, jump to ELSE
98 : LDA 4, 4(5) ;  Compute callee frame base (temp)
99 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
100 : LD 1, 1(4) ;  Load parameter 'i' via FP
101 : ST 1, 1(5) ;  Store argument 0 in callee frame
102 : LD 1, 2(4) ;  Load parameter 'n' via FP
103 : ST 1, 2(5) ;  Store argument 1 in callee frame
104 : LDA 6, 107(0) ;  Return address
105 : ST 6, 0(5) ;  Store RA in callee frame
106 : LDA 7, 63(0) ;  Call divides
107 : LD 1, 3(5) ;  Load callee result
108 : LDC 2, 4(0) ;  Caller frame size
109 : SUB 5, 5, 2 ;  Pop callee frame
110 : ADD 2, 1, 0 ;  Move left to R2
111 : LDA 4, 4(5) ;  Compute callee frame base (temp)
112 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
113 : LDC 1, 1(0) ;  Load integer literal into R1
114 : ADD 3, 1, 0 ;  Stash right in R3
115 : LD 1, 1(4) ;  Load parameter 'i' via FP
116 : ADD 2, 1, 0 ;  Move left to R2
117 : ADD 1, 3, 0 ;  Restore right to R1
118 : ADD 1, 2, 1 ;  R1 = left + right
119 : ST 1, 1(5) ;  Store argument 0 in callee frame
120 : LD 1, 2(4) ;  Load parameter 'n' via FP
121 : ST 1, 2(5) ;  Store argument 1 in callee frame
122 : LDA 6, 125(0) ;  Return address
123 : ST 6, 0(5) ;  Store RA in callee frame
124 : LDA 7, 86(0) ;  Call hasDivisorFrom
125 : LD 1, 3(5) ;  Load callee result
126 : LDC 2, 4(0) ;  Caller frame size
127 : SUB 5, 5, 2 ;  Pop callee frame
128 : ADD 1, 2, 1 ;  R1 = left OR right
129 : LDA 7, 131(0) ;  Skip ELSE
130 : LDC 1, 0(0) ;  Load boolean literal into R1
131 : ST 1, 3(4) ;  Store function result (via FP)
132 : LD 6, 0(4) ;  Load return address (via FP)
133 : LDA 7, 0(6) ;  Return to caller
134 : ADD 4, 5, 0 ;  Set FP at 134 entry
135 : LDA 4, 4(5) ;  Compute callee frame base (temp)
136 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
137 : LDC 1, 2(0) ;  Load integer literal into R1
138 : ST 1, 1(5) ;  Store argument 0 in callee frame
139 : LD 1, 1(4) ;  Load parameter 'n' via FP
140 : ST 1, 2(5) ;  Store argument 1 in callee frame
141 : LDA 6, 144(0) ;  Return address
142 : ST 6, 0(5) ;  Store RA in callee frame
143 : LDA 7, 86(0) ;  Call hasDivisorFrom
144 : LD 1, 3(5) ;  Load callee result
145 : LDC 2, 4(0) ;  Caller frame size
146 : SUB 5, 5, 2 ;  Pop callee frame
147 : LDC 2, 1(0) ;  Load 1 into R2
148 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
149 : ST 1, 2(4) ;  Store function result (via FP)
150 : LD 6, 0(4) ;  Load return address (via FP)
151 : LDA 7, 0(6) ;  Return to caller
152 : ADD 4, 5, 0 ;  Set FP at 152 entry
153 : LDA 4, 3(5) ;  Compute callee frame base (temp)
154 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
155 : LDA 4, 3(5) ;  Compute callee frame base (temp)
156 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
157 : LD 1, 1(4) ;  Load parameter 'current' via FP
158 : ST 1, 1(5) ;  Store argument 0 in callee frame
159 : LDA 6, 162(0) ;  Return address
160 : ST 6, 0(5) ;  Store RA in callee frame
161 : LDA 7, 134(0) ;  Call isPrime
162 : LD 1, 2(5) ;  Load callee result
163 : LDC 2, 3(0) ;  Caller frame size
164 : SUB 5, 5, 2 ;  Pop callee frame
165 : JEQ 1, 168(0) ;  If false, jump to ELSE
166 : LD 1, 1(4) ;  Load parameter 'current' via FP
167 : LDA 7, 169(0) ;  Skip ELSE
168 : LDC 1, 0(0) ;  Load integer literal into R1
169 : ST 1, 1(5) ;  Store print arg in callee frame
170 : LDA 6, 173(0) ;  Return address
171 : ST 6, 0(5) ;  Store RA in callee frame
172 : LDA 7, 9(0) ;  Call print
173 : LDC 2, 3(0) ;  Caller frame size
174 : SUB 5, 5, 2 ;  Pop callee frame
175 : LDA 4, 4(5) ;  Compute callee frame base (temp)
176 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
177 : LDC 1, 1(0) ;  Load integer literal into R1
178 : ADD 3, 1, 0 ;  Stash right in R3
179 : LD 1, 1(4) ;  Load parameter 'current' via FP
180 : ADD 2, 1, 0 ;  Move left to R2
181 : ADD 1, 3, 0 ;  Restore right to R1
182 : ADD 1, 2, 1 ;  R1 = left + right
183 : ST 1, 1(5) ;  Store argument 0 in callee frame
184 : LD 1, 2(4) ;  Load parameter 'max' via FP
185 : ST 1, 2(5) ;  Store argument 1 in callee frame
186 : LDA 6, 189(0) ;  Return address
187 : ST 6, 0(5) ;  Store RA in callee frame
188 : LDA 7, 195(0) ;  Call sieveAt
189 : LD 1, 3(5) ;  Load callee result
190 : LDC 2, 4(0) ;  Caller frame size
191 : SUB 5, 5, 2 ;  Pop callee frame
192 : ST 1, 3(4) ;  Store function result (via FP)
193 : LD 6, 0(4) ;  Load return address (via FP)
194 : LDA 7, 0(6) ;  Return to caller
195 : ADD 4, 5, 0 ;  Set FP at 195 entry
196 : LD 1, 1(4) ;  Load parameter 'current' via FP
197 : ADD 3, 1, 0 ;  Stash right in R3
198 : LD 1, 2(4) ;  Load parameter 'max' via FP
199 : ADD 2, 1, 0 ;  Move left to R2
200 : ADD 1, 3, 0 ;  Restore right to R1
201 : SUB 1, 2, 1 ;  left - right
202 : JLT 1, 2(7) ;  if < 0 then true
203 : LDC 1, 0(0) ;  false
204 : LDA 7, 1(7) ;  skip setting true
205 : LDC 1, 1(0) ;  true
206 : JEQ 1, 209(0) ;  If false, jump to ELSE
207 : LDC 1, 1(0) ;  Load boolean literal into R1
208 : LDA 7, 221(0) ;  Skip ELSE
209 : LDA 4, 4(5) ;  Compute callee frame base (temp)
210 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
211 : LD 1, 1(4) ;  Load parameter 'current' via FP
212 : ST 1, 1(5) ;  Store argument 0 in callee frame
213 : LD 1, 2(4) ;  Load parameter 'max' via FP
214 : ST 1, 2(5) ;  Store argument 1 in callee frame
215 : LDA 6, 218(0) ;  Return address
216 : ST 6, 0(5) ;  Store RA in callee frame
217 : LDA 7, 152(0) ;  Call doSieveAt
218 : LD 1, 3(5) ;  Load callee result
219 : LDC 2, 4(0) ;  Caller frame size
220 : SUB 5, 5, 2 ;  Pop callee frame
221 : ST 1, 3(4) ;  Store function result (via FP)
222 : LD 6, 0(4) ;  Load return address (via FP)
223 : LDA 7, 0(6) ;  Return to caller
