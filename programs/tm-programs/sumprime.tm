0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST 6, 0(5) ;  Store return address in main frame
4 : LDA 7, 10(0) ;  Branch to main
5 : OUT 1, 0, 0 ;  Print main's result
6 : HALT 0, 0, 0 ;  Terminate program
7 : OUT 1, 0, 0 ;  print(R1)
8 : LD 6, 0(5) ;  Load return address
9 : LDA 7, 0(6) ;  Return
10 : LDC 1, 2(0) ;  Load integer literal into R1
11 : LDA 4, 4(5) ;  [JIT] callee frame base
12 : ST 1, 1(4) ;  Store arg 0 in callee frame
13 : LDC 1, 20(0) ;  Load integer literal into R1
14 : LDA 4, 4(5) ;  [JIT] callee frame base
15 : ST 1, 2(4) ;  Store arg 1 in callee frame
16 : LDA 4, 4(5) ;  [JIT] callee frame base
17 : LDA 6, 21(0) ;  Return address
18 : ST 6, 0(4) ;  Store RA in callee frame
19 : ADD 5, 4, 0 ;  Push callee frame
20 : LDA 7, 28(0) ;  Call sumPrimes
21 : LD 1, 3(5) ;  Load callee result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : ST 1, 1(5) ;  Store result into caller frame
25 : LD 1, 1(5) ;  Load main return value
26 : LD 6, 0(5) ;  Load return address
27 : LDA 7, 0(6) ;  Return from main
28 : LD 1, 1(5) ;  Load parameter 'a'
29 : ADD 3, 1, 0 ;  Stash right in R3
30 : LD 1, 2(5) ;  Load parameter 'b'
31 : ADD 2, 1, 0 ;  Move left to R2
32 : ADD 1, 3, 0 ;  Restore right to R1
33 : SUB 1, 2, 1 ;  left - right
34 : JLT 1, 2(7) ;  if < 0 then true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If false, jump to ELSE
39 : LDC 1, 0(0) ;  Load integer literal into R1
40 : LDA 7, 97(0) ;  Skip ELSE
41 : LD 1, 1(5) ;  Load parameter 'a'
42 : LDA 4, 3(5) ;  [JIT] callee frame base
43 : ST 1, 1(4) ;  Store arg 0 in callee frame
44 : LDA 4, 3(5) ;  [JIT] callee frame base
45 : LDA 6, 49(0) ;  Return address
46 : ST 6, 0(4) ;  Store RA in callee frame
47 : ADD 5, 4, 0 ;  Push callee frame
48 : LDA 7, 100(0) ;  Call isPrime
49 : LD 1, 2(5) ;  Load callee result
50 : LDC 2, 3(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop callee frame
52 : JEQ 1, 78(0) ;  If false, jump to ELSE
53 : LDC 1, 1(0) ;  Load integer literal into R1
54 : ADD 3, 1, 0 ;  Stash right in R3
55 : LD 1, 1(5) ;  Load parameter 'a'
56 : ADD 2, 1, 0 ;  Move left to R2
57 : ADD 1, 3, 0 ;  Restore right to R1
58 : ADD 1, 2, 1 ;  R1 = left + right
59 : LDA 4, 4(5) ;  [JIT] callee frame base
60 : ST 1, 1(4) ;  Store arg 0 in callee frame
61 : LD 1, 2(5) ;  Load parameter 'b'
62 : LDA 4, 4(5) ;  [JIT] callee frame base
63 : ST 1, 2(4) ;  Store arg 1 in callee frame
64 : LDA 4, 4(5) ;  [JIT] callee frame base
65 : LDA 6, 69(0) ;  Return address
66 : ST 6, 0(4) ;  Store RA in callee frame
67 : ADD 5, 4, 0 ;  Push callee frame
68 : LDA 7, 28(0) ;  Call sumPrimes
69 : LD 1, 3(5) ;  Load callee result
70 : LDC 2, 4(0) ;  Caller frame size
71 : SUB 5, 5, 2 ;  Pop callee frame
72 : ADD 3, 1, 0 ;  Stash right in R3
73 : LD 1, 1(5) ;  Load parameter 'a'
74 : ADD 2, 1, 0 ;  Move left to R2
75 : ADD 1, 3, 0 ;  Restore right to R1
76 : ADD 1, 2, 1 ;  R1 = left + right
77 : LDA 7, 97(0) ;  Skip ELSE
78 : LDC 1, 1(0) ;  Load integer literal into R1
79 : ADD 3, 1, 0 ;  Stash right in R3
80 : LD 1, 1(5) ;  Load parameter 'a'
81 : ADD 2, 1, 0 ;  Move left to R2
82 : ADD 1, 3, 0 ;  Restore right to R1
83 : ADD 1, 2, 1 ;  R1 = left + right
84 : LDA 4, 4(5) ;  [JIT] callee frame base
85 : ST 1, 1(4) ;  Store arg 0 in callee frame
86 : LD 1, 2(5) ;  Load parameter 'b'
87 : LDA 4, 4(5) ;  [JIT] callee frame base
88 : ST 1, 2(4) ;  Store arg 1 in callee frame
89 : LDA 4, 4(5) ;  [JIT] callee frame base
90 : LDA 6, 94(0) ;  Return address
91 : ST 6, 0(4) ;  Store RA in callee frame
92 : ADD 5, 4, 0 ;  Push callee frame
93 : LDA 7, 28(0) ;  Call sumPrimes
94 : LD 1, 3(5) ;  Load callee result
95 : LDC 2, 4(0) ;  Caller frame size
96 : SUB 5, 5, 2 ;  Pop callee frame
97 : ST 1, 3(5) ;  Store function result
98 : LD 6, 0(5) ;  Load return address
99 : LDA 7, 0(6) ;  Return to caller
100 : LDC 1, 2(0) ;  Load integer literal into R1
101 : ADD 3, 1, 0 ;  Stash right in R3
102 : LD 1, 1(5) ;  Load parameter 'n'
103 : ADD 2, 1, 0 ;  Move left to R2
104 : ADD 1, 3, 0 ;  Restore right to R1
105 : SUB 1, 2, 1 ;  left - right
106 : JLT 1, 2(7) ;  if < 0 then true
107 : LDC 1, 0(0) ;  false
108 : LDA 7, 1(7) ;  skip setting true
109 : LDC 1, 1(0) ;  true
110 : JEQ 1, 113(0) ;  If false, jump to ELSE
111 : LDC 1, 0(0) ;  Load boolean literal into R1
112 : LDA 7, 176(0) ;  Skip ELSE
113 : LDC 1, 2(0) ;  Load integer literal into R1
114 : ADD 3, 1, 0 ;  Stash right in R3
115 : LD 1, 1(5) ;  Load parameter 'n'
116 : ADD 2, 1, 0 ;  Move left to R2
117 : ADD 1, 3, 0 ;  Restore right to R1
118 : SUB 1, 2, 1 ;  left - right
119 : JEQ 1, 2(7) ;  if 0 then true
120 : LDC 1, 0(0) ;  false
121 : LDA 7, 1(7) ;  skip setting true
122 : LDC 1, 1(0) ;  true
123 : JEQ 1, 126(0) ;  If false, jump to ELSE
124 : LDC 1, 1(0) ;  Load boolean literal into R1
125 : LDA 7, 176(0) ;  Skip ELSE
126 : LD 1, 1(5) ;  Load parameter 'n'
127 : LDA 4, 4(5) ;  [JIT] callee frame base
128 : ST 1, 1(4) ;  Store arg 0 in callee frame
129 : LDC 1, 2(0) ;  Load integer literal into R1
130 : LDA 4, 4(5) ;  [JIT] callee frame base
131 : ST 1, 2(4) ;  Store arg 1 in callee frame
132 : LDA 4, 4(5) ;  [JIT] callee frame base
133 : LDA 6, 137(0) ;  Return address
134 : ST 6, 0(4) ;  Store RA in callee frame
135 : ADD 5, 4, 0 ;  Push callee frame
136 : LDA 7, 179(0) ;  Call divisible
137 : LD 1, 3(5) ;  Load callee result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop callee frame
140 : ADD 2, 1, 0 ;  Move left to R2
141 : LD 1, 1(5) ;  Load parameter 'n'
142 : LDA 4, 4(5) ;  [JIT] callee frame base
143 : ST 1, 1(4) ;  Store arg 0 in callee frame
144 : LDC 1, 3(0) ;  Load integer literal into R1
145 : LDA 4, 4(5) ;  [JIT] callee frame base
146 : ST 1, 2(4) ;  Store arg 1 in callee frame
147 : LDA 4, 4(5) ;  [JIT] callee frame base
148 : LDA 6, 152(0) ;  Return address
149 : ST 6, 0(4) ;  Store RA in callee frame
150 : ADD 5, 4, 0 ;  Push callee frame
151 : LDA 7, 179(0) ;  Call divisible
152 : LD 1, 3(5) ;  Load callee result
153 : LDC 2, 4(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop callee frame
155 : ADD 1, 2, 1 ;  R1 = left OR right
156 : ADD 2, 1, 0 ;  Move left to R2
157 : LD 1, 1(5) ;  Load parameter 'n'
158 : LDA 4, 4(5) ;  [JIT] callee frame base
159 : ST 1, 1(4) ;  Store arg 0 in callee frame
160 : LDC 1, 5(0) ;  Load integer literal into R1
161 : LDA 4, 4(5) ;  [JIT] callee frame base
162 : ST 1, 2(4) ;  Store arg 1 in callee frame
163 : LDA 4, 4(5) ;  [JIT] callee frame base
164 : LDA 6, 168(0) ;  Return address
165 : ST 6, 0(4) ;  Store RA in callee frame
166 : ADD 5, 4, 0 ;  Push callee frame
167 : LDA 7, 179(0) ;  Call divisible
168 : LD 1, 3(5) ;  Load callee result
169 : LDC 2, 4(0) ;  Caller frame size
170 : SUB 5, 5, 2 ;  Pop callee frame
171 : ADD 1, 2, 1 ;  R1 = left OR right
172 : JEQ 1, 175(0) ;  If false, jump to ELSE
173 : LDC 1, 0(0) ;  Load boolean literal into R1
174 : LDA 7, 176(0) ;  Skip ELSE
175 : LDC 1, 1(0) ;  Load boolean literal into R1
176 : ST 1, 2(5) ;  Store function result
177 : LD 6, 0(5) ;  Load return address
178 : LDA 7, 0(6) ;  Return to caller
179 : LD 1, 2(5) ;  Load parameter 'y'
180 : ADD 3, 1, 0 ;  Stash right in R3
181 : LD 1, 1(5) ;  Load parameter 'x'
182 : ADD 2, 1, 0 ;  Move left to R2
183 : ADD 1, 3, 0 ;  Restore right to R1
184 : DIV 1, 2, 1 ;  R1 = left / right
185 : ADD 2, 1, 0 ;  Move left to R2
186 : LD 1, 2(5) ;  Load parameter 'y'
187 : MUL 1, 2, 1 ;  R1 = left * right
188 : ADD 2, 1, 0 ;  Move left to R2
189 : LD 1, 1(5) ;  Load parameter 'x'
190 : SUB 1, 2, 1 ;  left - right
191 : JEQ 1, 2(7) ;  if 0 then true
192 : LDC 1, 0(0) ;  false
193 : LDA 7, 1(7) ;  skip setting true
194 : LDC 1, 1(0) ;  true
195 : JEQ 1, 198(0) ;  If false, jump to ELSE
196 : LDC 1, 1(0) ;  Load boolean literal into R1
197 : LDA 7, 199(0) ;  Skip ELSE
198 : LDC 1, 0(0) ;  Load boolean literal into R1
199 : ST 1, 3(5) ;  Store function result
200 : LD 6, 0(5) ;  Load return address
201 : LDA 7, 0(6) ;  Return to caller
