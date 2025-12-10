0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
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
12 : LDA 4, 4(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LDC 1, 2(0) ;  Load integer literal into R1
15 : ST 1, 1(5) ;  Store argument 0 in callee frame
16 : LDC 1, 40(0) ;  Load integer literal into R1
17 : ST 1, 2(5) ;  Store argument 1 in callee frame
18 : LDA 6, 21(0) ;  Return address
19 : ST 6, 0(5) ;  Store RA in callee frame
20 : LDA 7, 189(0) ;  Call sieveAt
21 : LD 1, 3(5) ;  Load callee result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : ST 1, 2(5) ;  Store result into caller frame
25 : LD 1, 2(5) ;  Load main return value
26 : LD 6, 0(5) ;  Load return address
27 : LDA 7, 0(6) ;  Return from main
28 : LD 1, 2(5) ;  Load parameter 'den'
29 : ADD 3, 1, 0 ;  Stash right in R3
30 : LD 1, 1(5) ;  Load parameter 'num'
31 : ADD 2, 1, 0 ;  Move left to R2
32 : ADD 1, 3, 0 ;  Restore right to R1
33 : SUB 1, 2, 1 ;  left - right
34 : JLT 1, 2(7) ;  if < 0 then true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If false, jump to ELSE
39 : LD 1, 1(5) ;  Load parameter 'num'
40 : LDA 7, 58(0) ;  Skip ELSE
41 : LDA 4, 4(5) ;  Compute callee frame base
42 : ADD 5, 4, 0 ;  Push callee frame
43 : LD 1, 2(5) ;  Load parameter 'den'
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(5) ;  Load parameter 'num'
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : ST 1, 1(5) ;  Store argument 0 in callee frame
50 : LD 1, 2(5) ;  Load parameter 'den'
51 : ST 1, 2(5) ;  Store argument 1 in callee frame
52 : LDA 6, 55(0) ;  Return address
53 : ST 6, 0(5) ;  Store RA in callee frame
54 : LDA 7, 28(0) ;  Call rem
55 : LD 1, 3(5) ;  Load callee result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop callee frame
58 : ST 1, 3(5) ;  Store function result
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDA 4, 4(5) ;  Compute callee frame base
62 : ADD 5, 4, 0 ;  Push callee frame
63 : LD 1, 2(5) ;  Load parameter 'b'
64 : ST 1, 1(5) ;  Store argument 0 in callee frame
65 : LD 1, 1(5) ;  Load parameter 'a'
66 : ST 1, 2(5) ;  Store argument 1 in callee frame
67 : LDA 6, 70(0) ;  Return address
68 : ST 6, 0(5) ;  Store RA in callee frame
69 : LDA 7, 28(0) ;  Call rem
70 : LD 1, 3(5) ;  Load callee result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop callee frame
73 : ADD 2, 1, 0 ;  Move left to R2
74 : LDC 1, 0(0) ;  Load integer literal into R1
75 : SUB 1, 2, 1 ;  left - right
76 : JEQ 1, 2(7) ;  if 0 then true
77 : LDC 1, 0(0) ;  false
78 : LDA 7, 1(7) ;  skip setting true
79 : LDC 1, 1(0) ;  true
80 : ST 1, 3(5) ;  Store function result
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LD 1, 2(5) ;  Load parameter 'n'
84 : ADD 3, 1, 0 ;  Stash right in R3
85 : LD 1, 1(5) ;  Load parameter 'i'
86 : ADD 2, 1, 0 ;  Move left to R2
87 : ADD 1, 3, 0 ;  Restore right to R1
88 : SUB 1, 2, 1 ;  left - right
89 : JLT 1, 2(7) ;  if < 0 then true
90 : LDC 1, 0(0) ;  false
91 : LDA 7, 1(7) ;  skip setting true
92 : LDC 1, 1(0) ;  true
93 : JEQ 1, 126(0) ;  If false, jump to ELSE
94 : LDA 4, 4(5) ;  Compute callee frame base
95 : ADD 5, 4, 0 ;  Push callee frame
96 : LD 1, 1(5) ;  Load parameter 'i'
97 : ST 1, 1(5) ;  Store argument 0 in callee frame
98 : LD 1, 2(5) ;  Load parameter 'n'
99 : ST 1, 2(5) ;  Store argument 1 in callee frame
100 : LDA 6, 103(0) ;  Return address
101 : ST 6, 0(5) ;  Store RA in callee frame
102 : LDA 7, 61(0) ;  Call divides
103 : LD 1, 3(5) ;  Load callee result
104 : LDC 2, 4(0) ;  Caller frame size
105 : SUB 5, 5, 2 ;  Pop callee frame
106 : ADD 2, 1, 0 ;  Move left to R2
107 : LDA 4, 4(5) ;  Compute callee frame base
108 : ADD 5, 4, 0 ;  Push callee frame
109 : LDC 1, 1(0) ;  Load integer literal into R1
110 : ADD 3, 1, 0 ;  Stash right in R3
111 : LD 1, 1(5) ;  Load parameter 'i'
112 : ADD 2, 1, 0 ;  Move left to R2
113 : ADD 1, 3, 0 ;  Restore right to R1
114 : ADD 1, 2, 1 ;  R1 = left + right
115 : ST 1, 1(5) ;  Store argument 0 in callee frame
116 : LD 1, 2(5) ;  Load parameter 'n'
117 : ST 1, 2(5) ;  Store argument 1 in callee frame
118 : LDA 6, 121(0) ;  Return address
119 : ST 6, 0(5) ;  Store RA in callee frame
120 : LDA 7, 83(0) ;  Call hasDivisorFrom
121 : LD 1, 3(5) ;  Load callee result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop callee frame
124 : ADD 1, 2, 1 ;  R1 = left OR right
125 : LDA 7, 127(0) ;  Skip ELSE
126 : LDC 1, 0(0) ;  Load boolean literal into R1
127 : ST 1, 3(5) ;  Store function result
128 : LD 6, 0(5) ;  Load return address
129 : LDA 7, 0(6) ;  Return to caller
130 : LDA 4, 4(5) ;  Compute callee frame base
131 : ADD 5, 4, 0 ;  Push callee frame
132 : LDC 1, 2(0) ;  Load integer literal into R1
133 : ST 1, 1(5) ;  Store argument 0 in callee frame
134 : LD 1, 1(5) ;  Load parameter 'n'
135 : ST 1, 2(5) ;  Store argument 1 in callee frame
136 : LDA 6, 139(0) ;  Return address
137 : ST 6, 0(5) ;  Store RA in callee frame
138 : LDA 7, 83(0) ;  Call hasDivisorFrom
139 : LD 1, 3(5) ;  Load callee result
140 : LDC 2, 4(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop callee frame
142 : LDC 2, 1(0) ;  Load 1 into R2
143 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
144 : ST 1, 2(5) ;  Store function result
145 : LD 6, 0(5) ;  Load return address
146 : LDA 7, 0(6) ;  Return to caller
147 : LDA 4, 3(5) ;  Compute callee frame base
148 : ADD 5, 4, 0 ;  Push callee frame
149 : LDA 4, 3(5) ;  Compute callee frame base
150 : ADD 5, 4, 0 ;  Push callee frame
151 : LD 1, 1(5) ;  Load parameter 'current'
152 : ST 1, 1(5) ;  Store argument 0 in callee frame
153 : LDA 6, 156(0) ;  Return address
154 : ST 6, 0(5) ;  Store RA in callee frame
155 : LDA 7, 130(0) ;  Call isPrime
156 : LD 1, 2(5) ;  Load callee result
157 : LDC 2, 3(0) ;  Caller frame size
158 : SUB 5, 5, 2 ;  Pop callee frame
159 : JEQ 1, 162(0) ;  If false, jump to ELSE
160 : LD 1, 1(5) ;  Load parameter 'current'
161 : LDA 7, 163(0) ;  Skip ELSE
162 : LDC 1, 0(0) ;  Load integer literal into R1
163 : ST 1, 1(5) ;  Store print arg in callee frame
164 : LDA 6, 167(0) ;  Return address
165 : ST 6, 0(5) ;  Store RA in callee frame
166 : LDA 7, 9(0) ;  Call print
167 : LDC 2, 3(0) ;  Caller frame size
168 : SUB 5, 5, 2 ;  Pop callee frame
169 : LDA 4, 4(5) ;  Compute callee frame base
170 : ADD 5, 4, 0 ;  Push callee frame
171 : LDC 1, 1(0) ;  Load integer literal into R1
172 : ADD 3, 1, 0 ;  Stash right in R3
173 : LD 1, 1(5) ;  Load parameter 'current'
174 : ADD 2, 1, 0 ;  Move left to R2
175 : ADD 1, 3, 0 ;  Restore right to R1
176 : ADD 1, 2, 1 ;  R1 = left + right
177 : ST 1, 1(5) ;  Store argument 0 in callee frame
178 : LD 1, 2(5) ;  Load parameter 'max'
179 : ST 1, 2(5) ;  Store argument 1 in callee frame
180 : LDA 6, 183(0) ;  Return address
181 : ST 6, 0(5) ;  Store RA in callee frame
182 : LDA 7, 189(0) ;  Call sieveAt
183 : LD 1, 3(5) ;  Load callee result
184 : LDC 2, 4(0) ;  Caller frame size
185 : SUB 5, 5, 2 ;  Pop callee frame
186 : ST 1, 3(5) ;  Store function result
187 : LD 6, 0(5) ;  Load return address
188 : LDA 7, 0(6) ;  Return to caller
189 : LD 1, 1(5) ;  Load parameter 'current'
190 : ADD 3, 1, 0 ;  Stash right in R3
191 : LD 1, 2(5) ;  Load parameter 'max'
192 : ADD 2, 1, 0 ;  Move left to R2
193 : ADD 1, 3, 0 ;  Restore right to R1
194 : SUB 1, 2, 1 ;  left - right
195 : JLT 1, 2(7) ;  if < 0 then true
196 : LDC 1, 0(0) ;  false
197 : LDA 7, 1(7) ;  skip setting true
198 : LDC 1, 1(0) ;  true
199 : JEQ 1, 202(0) ;  If false, jump to ELSE
200 : LDC 1, 1(0) ;  Load boolean literal into R1
201 : LDA 7, 214(0) ;  Skip ELSE
202 : LDA 4, 4(5) ;  Compute callee frame base
203 : ADD 5, 4, 0 ;  Push callee frame
204 : LD 1, 1(5) ;  Load parameter 'current'
205 : ST 1, 1(5) ;  Store argument 0 in callee frame
206 : LD 1, 2(5) ;  Load parameter 'max'
207 : ST 1, 2(5) ;  Store argument 1 in callee frame
208 : LDA 6, 211(0) ;  Return address
209 : ST 6, 0(5) ;  Store RA in callee frame
210 : LDA 7, 147(0) ;  Call doSieveAt
211 : LD 1, 3(5) ;  Load callee result
212 : LDC 2, 4(0) ;  Caller frame size
213 : SUB 5, 5, 2 ;  Pop callee frame
214 : ST 1, 3(5) ;  Store function result
215 : LD 6, 0(5) ;  Load return address
216 : LDA 7, 0(6) ;  Return to caller
