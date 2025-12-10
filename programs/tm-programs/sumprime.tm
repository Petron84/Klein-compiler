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
10 : LDA 4, 4(5) ;  Compute callee frame base
11 : ADD 5, 4, 0 ;  Push callee frame
12 : LDC 1, 2(0) ;  Load integer literal into R1
13 : ST 1, 1(5) ;  Store argument 0 in callee frame
14 : LDC 1, 20(0) ;  Load integer literal into R1
15 : ST 1, 2(5) ;  Store argument 1 in callee frame
16 : LDA 6, 19(0) ;  Return address
17 : ST 6, 0(5) ;  Store RA in callee frame
18 : LDA 7, 26(0) ;  Call sumPrimes
19 : LD 1, 3(5) ;  Load callee result
20 : LDC 2, 4(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop callee frame
22 : ST 1, 1(5) ;  Store result into caller frame
23 : LD 1, 1(5) ;  Load main return value
24 : LD 6, 0(5) ;  Load return address
25 : LDA 7, 0(6) ;  Return from main
26 : LD 1, 1(5) ;  Load parameter 'a'
27 : ADD 3, 1, 0 ;  Stash right in R3
28 : LD 1, 2(5) ;  Load parameter 'b'
29 : ADD 2, 1, 0 ;  Move left to R2
30 : ADD 1, 3, 0 ;  Restore right to R1
31 : SUB 1, 2, 1 ;  left - right
32 : JLT 1, 2(7) ;  if < 0 then true
33 : LDC 1, 0(0) ;  false
34 : LDA 7, 1(7) ;  skip setting true
35 : LDC 1, 1(0) ;  true
36 : JEQ 1, 39(0) ;  If false, jump to ELSE
37 : LDC 1, 0(0) ;  Load integer literal into R1
38 : LDA 7, 90(0) ;  Skip ELSE
39 : LDA 4, 3(5) ;  Compute callee frame base
40 : ADD 5, 4, 0 ;  Push callee frame
41 : LD 1, 1(5) ;  Load parameter 'a'
42 : ST 1, 1(5) ;  Store argument 0 in callee frame
43 : LDA 6, 46(0) ;  Return address
44 : ST 6, 0(5) ;  Store RA in callee frame
45 : LDA 7, 93(0) ;  Call isPrime
46 : LD 1, 2(5) ;  Load callee result
47 : LDC 2, 3(0) ;  Caller frame size
48 : SUB 5, 5, 2 ;  Pop callee frame
49 : JEQ 1, 73(0) ;  If false, jump to ELSE
50 : LDA 4, 4(5) ;  Compute callee frame base
51 : ADD 5, 4, 0 ;  Push callee frame
52 : LDC 1, 1(0) ;  Load integer literal into R1
53 : ADD 3, 1, 0 ;  Stash right in R3
54 : LD 1, 1(5) ;  Load parameter 'a'
55 : ADD 2, 1, 0 ;  Move left to R2
56 : ADD 1, 3, 0 ;  Restore right to R1
57 : ADD 1, 2, 1 ;  R1 = left + right
58 : ST 1, 1(5) ;  Store argument 0 in callee frame
59 : LD 1, 2(5) ;  Load parameter 'b'
60 : ST 1, 2(5) ;  Store argument 1 in callee frame
61 : LDA 6, 64(0) ;  Return address
62 : ST 6, 0(5) ;  Store RA in callee frame
63 : LDA 7, 26(0) ;  Call sumPrimes
64 : LD 1, 3(5) ;  Load callee result
65 : LDC 2, 4(0) ;  Caller frame size
66 : SUB 5, 5, 2 ;  Pop callee frame
67 : ADD 3, 1, 0 ;  Stash right in R3
68 : LD 1, 1(5) ;  Load parameter 'a'
69 : ADD 2, 1, 0 ;  Move left to R2
70 : ADD 1, 3, 0 ;  Restore right to R1
71 : ADD 1, 2, 1 ;  R1 = left + right
72 : LDA 7, 90(0) ;  Skip ELSE
73 : LDA 4, 4(5) ;  Compute callee frame base
74 : ADD 5, 4, 0 ;  Push callee frame
75 : LDC 1, 1(0) ;  Load integer literal into R1
76 : ADD 3, 1, 0 ;  Stash right in R3
77 : LD 1, 1(5) ;  Load parameter 'a'
78 : ADD 2, 1, 0 ;  Move left to R2
79 : ADD 1, 3, 0 ;  Restore right to R1
80 : ADD 1, 2, 1 ;  R1 = left + right
81 : ST 1, 1(5) ;  Store argument 0 in callee frame
82 : LD 1, 2(5) ;  Load parameter 'b'
83 : ST 1, 2(5) ;  Store argument 1 in callee frame
84 : LDA 6, 87(0) ;  Return address
85 : ST 6, 0(5) ;  Store RA in callee frame
86 : LDA 7, 26(0) ;  Call sumPrimes
87 : LD 1, 3(5) ;  Load callee result
88 : LDC 2, 4(0) ;  Caller frame size
89 : SUB 5, 5, 2 ;  Pop callee frame
90 : ST 1, 3(5) ;  Store function result
91 : LD 6, 0(5) ;  Load return address
92 : LDA 7, 0(6) ;  Return to caller
93 : LDC 1, 2(0) ;  Load integer literal into R1
94 : ADD 3, 1, 0 ;  Stash right in R3
95 : LD 1, 1(5) ;  Load parameter 'n'
96 : ADD 2, 1, 0 ;  Move left to R2
97 : ADD 1, 3, 0 ;  Restore right to R1
98 : SUB 1, 2, 1 ;  left - right
99 : JLT 1, 2(7) ;  if < 0 then true
100 : LDC 1, 0(0) ;  false
101 : LDA 7, 1(7) ;  skip setting true
102 : LDC 1, 1(0) ;  true
103 : JEQ 1, 106(0) ;  If false, jump to ELSE
104 : LDC 1, 0(0) ;  Load boolean literal into R1
105 : LDA 7, 163(0) ;  Skip ELSE
106 : LDC 1, 2(0) ;  Load integer literal into R1
107 : ADD 3, 1, 0 ;  Stash right in R3
108 : LD 1, 1(5) ;  Load parameter 'n'
109 : ADD 2, 1, 0 ;  Move left to R2
110 : ADD 1, 3, 0 ;  Restore right to R1
111 : SUB 1, 2, 1 ;  left - right
112 : JEQ 1, 2(7) ;  if 0 then true
113 : LDC 1, 0(0) ;  false
114 : LDA 7, 1(7) ;  skip setting true
115 : LDC 1, 1(0) ;  true
116 : JEQ 1, 119(0) ;  If false, jump to ELSE
117 : LDC 1, 1(0) ;  Load boolean literal into R1
118 : LDA 7, 163(0) ;  Skip ELSE
119 : LDA 4, 4(5) ;  Compute callee frame base
120 : ADD 5, 4, 0 ;  Push callee frame
121 : LD 1, 1(5) ;  Load parameter 'n'
122 : ST 1, 1(5) ;  Store argument 0 in callee frame
123 : LDC 1, 2(0) ;  Load integer literal into R1
124 : ST 1, 2(5) ;  Store argument 1 in callee frame
125 : LDA 6, 128(0) ;  Return address
126 : ST 6, 0(5) ;  Store RA in callee frame
127 : LDA 7, 166(0) ;  Call divisible
128 : LD 1, 3(5) ;  Load callee result
129 : LDC 2, 4(0) ;  Caller frame size
130 : SUB 5, 5, 2 ;  Pop callee frame
131 : ADD 2, 1, 0 ;  Move left to R2
132 : LDA 4, 4(5) ;  Compute callee frame base
133 : ADD 5, 4, 0 ;  Push callee frame
134 : LD 1, 1(5) ;  Load parameter 'n'
135 : ST 1, 1(5) ;  Store argument 0 in callee frame
136 : LDC 1, 3(0) ;  Load integer literal into R1
137 : ST 1, 2(5) ;  Store argument 1 in callee frame
138 : LDA 6, 141(0) ;  Return address
139 : ST 6, 0(5) ;  Store RA in callee frame
140 : LDA 7, 166(0) ;  Call divisible
141 : LD 1, 3(5) ;  Load callee result
142 : LDC 2, 4(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop callee frame
144 : ADD 1, 2, 1 ;  R1 = left OR right
145 : ADD 2, 1, 0 ;  Move left to R2
146 : LDA 4, 4(5) ;  Compute callee frame base
147 : ADD 5, 4, 0 ;  Push callee frame
148 : LD 1, 1(5) ;  Load parameter 'n'
149 : ST 1, 1(5) ;  Store argument 0 in callee frame
150 : LDC 1, 5(0) ;  Load integer literal into R1
151 : ST 1, 2(5) ;  Store argument 1 in callee frame
152 : LDA 6, 155(0) ;  Return address
153 : ST 6, 0(5) ;  Store RA in callee frame
154 : LDA 7, 166(0) ;  Call divisible
155 : LD 1, 3(5) ;  Load callee result
156 : LDC 2, 4(0) ;  Caller frame size
157 : SUB 5, 5, 2 ;  Pop callee frame
158 : ADD 1, 2, 1 ;  R1 = left OR right
159 : JEQ 1, 162(0) ;  If false, jump to ELSE
160 : LDC 1, 0(0) ;  Load boolean literal into R1
161 : LDA 7, 163(0) ;  Skip ELSE
162 : LDC 1, 1(0) ;  Load boolean literal into R1
163 : ST 1, 2(5) ;  Store function result
164 : LD 6, 0(5) ;  Load return address
165 : LDA 7, 0(6) ;  Return to caller
166 : LD 1, 2(5) ;  Load parameter 'y'
167 : ADD 3, 1, 0 ;  Stash right in R3
168 : LD 1, 1(5) ;  Load parameter 'x'
169 : ADD 2, 1, 0 ;  Move left to R2
170 : ADD 1, 3, 0 ;  Restore right to R1
171 : DIV 1, 2, 1 ;  R1 = left / right
172 : ADD 2, 1, 0 ;  Move left to R2
173 : LD 1, 2(5) ;  Load parameter 'y'
174 : MUL 1, 2, 1 ;  R1 = left * right
175 : ADD 2, 1, 0 ;  Move left to R2
176 : LD 1, 1(5) ;  Load parameter 'x'
177 : SUB 1, 2, 1 ;  left - right
178 : JEQ 1, 2(7) ;  if 0 then true
179 : LDC 1, 0(0) ;  false
180 : LDA 7, 1(7) ;  skip setting true
181 : LDC 1, 1(0) ;  true
182 : JEQ 1, 185(0) ;  If false, jump to ELSE
183 : LDC 1, 1(0) ;  Load boolean literal into R1
184 : LDA 7, 186(0) ;  Skip ELSE
185 : LDC 1, 0(0) ;  Load boolean literal into R1
186 : ST 1, 3(5) ;  Store function result
187 : LD 6, 0(5) ;  Load return address
188 : LDA 7, 0(6) ;  Return to caller
