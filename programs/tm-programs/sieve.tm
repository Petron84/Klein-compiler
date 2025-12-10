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
12 : LDC 1, 2(0) ;  Load integer literal into R1
13 : LDA 4, 4(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LD 1, 1(5) ;  Load parameter 'n'
16 : LDA 4, 4(5) ;  [JIT] callee frame base
17 : ST 1, 2(4) ;  Store arg 1 in callee frame
18 : LDA 4, 4(5) ;  [JIT] callee frame base
19 : LDA 6, 23(0) ;  Return address
20 : ST 6, 0(4) ;  Store RA in callee frame
21 : ADD 5, 4, 0 ;  Push callee frame
22 : LDA 7, 203(0) ;  Call sieveAt
23 : LD 1, 3(5) ;  Load callee result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 2(5) ;  Store result into caller frame
27 : LD 1, 2(5) ;  Load main return value
28 : LD 6, 0(5) ;  Load return address
29 : LDA 7, 0(6) ;  Return from main
30 : LD 1, 2(5) ;  Load parameter 'den'
31 : ADD 3, 1, 0 ;  Stash right in R3
32 : LD 1, 1(5) ;  Load parameter 'num'
33 : ADD 2, 1, 0 ;  Move left to R2
34 : ADD 1, 3, 0 ;  Restore right to R1
35 : SUB 1, 2, 1 ;  left - right
36 : JLT 1, 2(7) ;  if < 0 then true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 43(0) ;  If false, jump to ELSE
41 : LD 1, 1(5) ;  Load parameter 'num'
42 : LDA 7, 62(0) ;  Skip ELSE
43 : LD 1, 2(5) ;  Load parameter 'den'
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(5) ;  Load parameter 'num'
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : LDA 4, 4(5) ;  [JIT] callee frame base
50 : ST 1, 1(4) ;  Store arg 0 in callee frame
51 : LD 1, 2(5) ;  Load parameter 'den'
52 : LDA 4, 4(5) ;  [JIT] callee frame base
53 : ST 1, 2(4) ;  Store arg 1 in callee frame
54 : LDA 4, 4(5) ;  [JIT] callee frame base
55 : LDA 6, 59(0) ;  Return address
56 : ST 6, 0(4) ;  Store RA in callee frame
57 : ADD 5, 4, 0 ;  Push callee frame
58 : LDA 7, 30(0) ;  Call rem
59 : LD 1, 3(5) ;  Load callee result
60 : LDC 2, 4(0) ;  Caller frame size
61 : SUB 5, 5, 2 ;  Pop callee frame
62 : ST 1, 3(5) ;  Store function result
63 : LD 6, 0(5) ;  Load return address
64 : LDA 7, 0(6) ;  Return to caller
65 : LD 1, 2(5) ;  Load parameter 'b'
66 : LDA 4, 4(5) ;  [JIT] callee frame base
67 : ST 1, 1(4) ;  Store arg 0 in callee frame
68 : LD 1, 1(5) ;  Load parameter 'a'
69 : LDA 4, 4(5) ;  [JIT] callee frame base
70 : ST 1, 2(4) ;  Store arg 1 in callee frame
71 : LDA 4, 4(5) ;  [JIT] callee frame base
72 : LDA 6, 76(0) ;  Return address
73 : ST 6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Push callee frame
75 : LDA 7, 30(0) ;  Call rem
76 : LD 1, 3(5) ;  Load callee result
77 : LDC 2, 4(0) ;  Caller frame size
78 : SUB 5, 5, 2 ;  Pop callee frame
79 : ADD 2, 1, 0 ;  Move left to R2
80 : LDC 1, 0(0) ;  Load integer literal into R1
81 : SUB 1, 2, 1 ;  left - right
82 : JEQ 1, 2(7) ;  if 0 then true
83 : LDC 1, 0(0) ;  false
84 : LDA 7, 1(7) ;  skip setting true
85 : LDC 1, 1(0) ;  true
86 : ST 1, 3(5) ;  Store function result
87 : LD 6, 0(5) ;  Load return address
88 : LDA 7, 0(6) ;  Return to caller
89 : LD 1, 2(5) ;  Load parameter 'n'
90 : ADD 3, 1, 0 ;  Stash right in R3
91 : LD 1, 1(5) ;  Load parameter 'i'
92 : ADD 2, 1, 0 ;  Move left to R2
93 : ADD 1, 3, 0 ;  Restore right to R1
94 : SUB 1, 2, 1 ;  left - right
95 : JLT 1, 2(7) ;  if < 0 then true
96 : LDC 1, 0(0) ;  false
97 : LDA 7, 1(7) ;  skip setting true
98 : LDC 1, 1(0) ;  true
99 : JEQ 1, 136(0) ;  If false, jump to ELSE
100 : LD 1, 1(5) ;  Load parameter 'i'
101 : LDA 4, 4(5) ;  [JIT] callee frame base
102 : ST 1, 1(4) ;  Store arg 0 in callee frame
103 : LD 1, 2(5) ;  Load parameter 'n'
104 : LDA 4, 4(5) ;  [JIT] callee frame base
105 : ST 1, 2(4) ;  Store arg 1 in callee frame
106 : LDA 4, 4(5) ;  [JIT] callee frame base
107 : LDA 6, 111(0) ;  Return address
108 : ST 6, 0(4) ;  Store RA in callee frame
109 : ADD 5, 4, 0 ;  Push callee frame
110 : LDA 7, 65(0) ;  Call divides
111 : LD 1, 3(5) ;  Load callee result
112 : LDC 2, 4(0) ;  Caller frame size
113 : SUB 5, 5, 2 ;  Pop callee frame
114 : ADD 2, 1, 0 ;  Move left to R2
115 : LDC 1, 1(0) ;  Load integer literal into R1
116 : ADD 3, 1, 0 ;  Stash right in R3
117 : LD 1, 1(5) ;  Load parameter 'i'
118 : ADD 2, 1, 0 ;  Move left to R2
119 : ADD 1, 3, 0 ;  Restore right to R1
120 : ADD 1, 2, 1 ;  R1 = left + right
121 : LDA 4, 4(5) ;  [JIT] callee frame base
122 : ST 1, 1(4) ;  Store arg 0 in callee frame
123 : LD 1, 2(5) ;  Load parameter 'n'
124 : LDA 4, 4(5) ;  [JIT] callee frame base
125 : ST 1, 2(4) ;  Store arg 1 in callee frame
126 : LDA 4, 4(5) ;  [JIT] callee frame base
127 : LDA 6, 131(0) ;  Return address
128 : ST 6, 0(4) ;  Store RA in callee frame
129 : ADD 5, 4, 0 ;  Push callee frame
130 : LDA 7, 89(0) ;  Call hasDivisorFrom
131 : LD 1, 3(5) ;  Load callee result
132 : LDC 2, 4(0) ;  Caller frame size
133 : SUB 5, 5, 2 ;  Pop callee frame
134 : ADD 1, 2, 1 ;  R1 = left OR right
135 : LDA 7, 137(0) ;  Skip ELSE
136 : LDC 1, 0(0) ;  Load boolean literal into R1
137 : ST 1, 3(5) ;  Store function result
138 : LD 6, 0(5) ;  Load return address
139 : LDA 7, 0(6) ;  Return to caller
140 : LDC 1, 2(0) ;  Load integer literal into R1
141 : LDA 4, 4(5) ;  [JIT] callee frame base
142 : ST 1, 1(4) ;  Store arg 0 in callee frame
143 : LD 1, 1(5) ;  Load parameter 'n'
144 : LDA 4, 4(5) ;  [JIT] callee frame base
145 : ST 1, 2(4) ;  Store arg 1 in callee frame
146 : LDA 4, 4(5) ;  [JIT] callee frame base
147 : LDA 6, 151(0) ;  Return address
148 : ST 6, 0(4) ;  Store RA in callee frame
149 : ADD 5, 4, 0 ;  Push callee frame
150 : LDA 7, 89(0) ;  Call hasDivisorFrom
151 : LD 1, 3(5) ;  Load callee result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop callee frame
154 : LDC 2, 1(0) ;  Load 1 into R2
155 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
156 : ST 1, 2(5) ;  Store function result
157 : LD 6, 0(5) ;  Load return address
158 : LDA 7, 0(6) ;  Return to caller
159 : LD 1, 1(5) ;  Load parameter 'current'
160 : LDA 4, 3(5) ;  [JIT] callee frame base
161 : ST 1, 1(4) ;  Store arg 0 in callee frame
162 : LDA 4, 3(5) ;  [JIT] callee frame base
163 : LDA 6, 167(0) ;  Return address
164 : ST 6, 0(4) ;  Store RA in callee frame
165 : ADD 5, 4, 0 ;  Push callee frame
166 : LDA 7, 140(0) ;  Call isPrime
167 : LD 1, 2(5) ;  Load callee result
168 : LDC 2, 3(0) ;  Caller frame size
169 : SUB 5, 5, 2 ;  Pop callee frame
170 : JEQ 1, 173(0) ;  If false, jump to ELSE
171 : LD 1, 1(5) ;  Load parameter 'current'
172 : LDA 7, 174(0) ;  Skip ELSE
173 : LDC 1, 0(0) ;  Load integer literal into R1
174 : LDA 4, 3(5) ;  [JIT] callee frame base
175 : LDA 6, 179(0) ;  Return address
176 : ST 6, 0(4) ;  Store RA in callee frame
177 : ADD 5, 4, 0 ;  Push callee frame
178 : LDA 7, 9(0) ;  Call print
179 : LDC 2, 3(0) ;  Caller frame size
180 : SUB 5, 5, 2 ;  Pop callee frame
181 : LDC 1, 1(0) ;  Load integer literal into R1
182 : ADD 3, 1, 0 ;  Stash right in R3
183 : LD 1, 1(5) ;  Load parameter 'current'
184 : ADD 2, 1, 0 ;  Move left to R2
185 : ADD 1, 3, 0 ;  Restore right to R1
186 : ADD 1, 2, 1 ;  R1 = left + right
187 : LDA 4, 4(5) ;  [JIT] callee frame base
188 : ST 1, 1(4) ;  Store arg 0 in callee frame
189 : LD 1, 2(5) ;  Load parameter 'max'
190 : LDA 4, 4(5) ;  [JIT] callee frame base
191 : ST 1, 2(4) ;  Store arg 1 in callee frame
192 : LDA 4, 4(5) ;  [JIT] callee frame base
193 : LDA 6, 197(0) ;  Return address
194 : ST 6, 0(4) ;  Store RA in callee frame
195 : ADD 5, 4, 0 ;  Push callee frame
196 : LDA 7, 203(0) ;  Call sieveAt
197 : LD 1, 3(5) ;  Load callee result
198 : LDC 2, 4(0) ;  Caller frame size
199 : SUB 5, 5, 2 ;  Pop callee frame
200 : ST 1, 3(5) ;  Store function result
201 : LD 6, 0(5) ;  Load return address
202 : LDA 7, 0(6) ;  Return to caller
203 : LD 1, 1(5) ;  Load parameter 'current'
204 : ADD 3, 1, 0 ;  Stash right in R3
205 : LD 1, 2(5) ;  Load parameter 'max'
206 : ADD 2, 1, 0 ;  Move left to R2
207 : ADD 1, 3, 0 ;  Restore right to R1
208 : SUB 1, 2, 1 ;  left - right
209 : JLT 1, 2(7) ;  if < 0 then true
210 : LDC 1, 0(0) ;  false
211 : LDA 7, 1(7) ;  skip setting true
212 : LDC 1, 1(0) ;  true
213 : JEQ 1, 216(0) ;  If false, jump to ELSE
214 : LDC 1, 1(0) ;  Load boolean literal into R1
215 : LDA 7, 230(0) ;  Skip ELSE
216 : LD 1, 1(5) ;  Load parameter 'current'
217 : LDA 4, 4(5) ;  [JIT] callee frame base
218 : ST 1, 1(4) ;  Store arg 0 in callee frame
219 : LD 1, 2(5) ;  Load parameter 'max'
220 : LDA 4, 4(5) ;  [JIT] callee frame base
221 : ST 1, 2(4) ;  Store arg 1 in callee frame
222 : LDA 4, 4(5) ;  [JIT] callee frame base
223 : LDA 6, 227(0) ;  Return address
224 : ST 6, 0(4) ;  Store RA in callee frame
225 : ADD 5, 4, 0 ;  Push callee frame
226 : LDA 7, 159(0) ;  Call doSieveAt
227 : LD 1, 3(5) ;  Load callee result
228 : LDC 2, 4(0) ;  Caller frame size
229 : SUB 5, 5, 2 ;  Pop callee frame
230 : ST 1, 3(5) ;  Store function result
231 : LD 6, 0(5) ;  Load return address
232 : LDA 7, 0(6) ;  Return to caller
