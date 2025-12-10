0 : LDC 5, 1(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LDA 6, 2(7) ;  RA = next after branch
3 : ST 6, 0(5) ;  Store RA in main frame
4 : LDA 7, 10(0) ;  Jump to main
5 : OUT 1, 0, 0 ;  Print R1
6 : HALT 0, 0, 0 ;  Halt
7 : OUT 1, 0, 0 ;  print(R1)
8 : LD 6, 0(4) ;  Load RA via FP
9 : LDA 7, 0(6) ;  Return
10 : ADD 4, 5, 0 ;  FP = SP at 10 entry
11 : LDC 1, 2(0) ;  literal -> R1
12 : ADD 2, 1, 0 ;  Save arg0 in R2
13 : LDC 1, 20(0) ;  literal -> R1
14 : ADD 3, 1, 0 ;  Save arg1 in R3
15 : LDA 6, 23(0) ;  Prepare RA label
16 : LDA 2, 4(5) ;  callee base size -> R2
17 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
18 : ST 6, 0(5) ;  store RA in callee frame
19 : ST 2, 1(5) ;  TEMP overwrite: fix below
20 : ST 2, 1(5) ;  store arg0 from R2
21 : ST 3, 2(5) ;  store arg1 from R3
22 : LDA 7, 30(0) ;  Call sumPrimes
23 : LD 1, 3(5) ;  load callee result
24 : LDC 2, 4(0) ;  size to pop
25 : SUB 5, 5, 2 ;  pop callee frame
26 : ST 1, 1(4) ;  store result into caller frame (via FP)
27 : LD 1, 1(4) ;  R1 = return value (via FP)
28 : LD 6, 0(4) ;  RA from FP
29 : LDA 7, 0(6) ;  return
30 : ADD 4, 5, 0 ;  FP = SP at 30 entry
31 : LD 1, 1(4) ;  load 'a' via FP
32 : ADD 3, 1, 0 ;  stash right in R3
33 : LD 1, 2(4) ;  load 'b' via FP
34 : ADD 2, 1, 0 ;  stash left in R2
35 : ADD 1, 3, 0 ;  restore right to R1
36 : SUB 1, 2, 1 ;  left - right
37 : JLT 1, 2(7) ;  if < 0 then true
38 : LDC 1, 0(0) ;  false
39 : LDA 7, 1(7) ;  skip
40 : LDC 1, 1(0) ;  true
41 : JEQ 1, 44(0) ;  if false -> ELSE
42 : LDC 1, 0(0) ;  literal -> R1
43 : LDA 7, 106(0) ;  skip ELSE
44 : LD 1, 1(4) ;  load 'a' via FP
45 : ADD 2, 1, 0 ;  Save arg0 in R2
46 : LDA 6, 56(0) ;  Prepare RA label
47 : LDA 2, 3(5) ;  callee base size -> R2
48 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
49 : ST 6, 0(5) ;  store RA in callee frame
50 : ST 2, 1(5) ;  TEMP overwrite: fix below
51 : ST 2, 1(5) ; store arg0 from R2
52 : ST 2, 0(0) ;  noop slot
53 : ST 2, 0(0) ;  noop slot
54 : ST 2, 0(0) ;  noop
55 : LDA 7, 109(0) ;  Call isPrime
56 : LD 1, 2(5) ;  load callee result
57 : LDC 2, 3(0) ;  size to pop
58 : SUB 5, 5, 2 ;  pop callee frame
59 : JEQ 1, 86(0) ;  if false -> ELSE
60 : LDC 1, 1(0) ;  literal -> R1
61 : ADD 3, 1, 0 ;  stash right in R3
62 : LD 1, 1(4) ;  load 'a' via FP
63 : ADD 2, 1, 0 ;  stash left in R2
64 : ADD 1, 3, 0 ;  restore right to R1
65 : ADD 1, 2, 1 ;  left + right
66 : ADD 2, 1, 0 ;  Save arg0 in R2
67 : LD 1, 2(4) ;  load 'b' via FP
68 : ADD 3, 1, 0 ;  Save arg1 in R3
69 : LDA 6, 77(0) ;  Prepare RA label
70 : LDA 2, 4(5) ;  callee base size -> R2
71 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
72 : ST 6, 0(5) ;  store RA in callee frame
73 : ST 2, 1(5) ;  TEMP overwrite: fix below
74 : ST 2, 1(5) ;  store arg0 from R2
75 : ST 3, 2(5) ;  store arg1 from R3
76 : LDA 7, 30(0) ;  Call sumPrimes
77 : LD 1, 3(5) ;  load callee result
78 : LDC 2, 4(0) ;  size to pop
79 : SUB 5, 5, 2 ;  pop callee frame
80 : ADD 3, 1, 0 ;  stash right in R3
81 : LD 1, 1(4) ;  load 'a' via FP
82 : ADD 2, 1, 0 ;  stash left in R2
83 : ADD 1, 3, 0 ;  restore right to R1
84 : ADD 1, 2, 1 ;  left + right
85 : LDA 7, 106(0) ;  skip ELSE
86 : LDC 1, 1(0) ;  literal -> R1
87 : ADD 3, 1, 0 ;  stash right in R3
88 : LD 1, 1(4) ;  load 'a' via FP
89 : ADD 2, 1, 0 ;  stash left in R2
90 : ADD 1, 3, 0 ;  restore right to R1
91 : ADD 1, 2, 1 ;  left + right
92 : ADD 2, 1, 0 ;  Save arg0 in R2
93 : LD 1, 2(4) ;  load 'b' via FP
94 : ADD 3, 1, 0 ;  Save arg1 in R3
95 : LDA 6, 103(0) ;  Prepare RA label
96 : LDA 2, 4(5) ;  callee base size -> R2
97 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
98 : ST 6, 0(5) ;  store RA in callee frame
99 : ST 2, 1(5) ;  TEMP overwrite: fix below
100 : ST 2, 1(5) ;  store arg0 from R2
101 : ST 3, 2(5) ;  store arg1 from R3
102 : LDA 7, 30(0) ;  Call sumPrimes
103 : LD 1, 3(5) ;  load callee result
104 : LDC 2, 4(0) ;  size to pop
105 : SUB 5, 5, 2 ;  pop callee frame
106 : ST 1, 3(4) ;  store result in return slot (via FP)
107 : LD 6, 0(4) ;  load RA (via FP)
108 : LDA 7, 0(6) ;  return to caller
109 : ADD 4, 5, 0 ;  FP = SP at 109 entry
110 : LDC 1, 2(0) ;  literal -> R1
111 : ADD 3, 1, 0 ;  stash right in R3
112 : LD 1, 1(4) ;  load 'n' via FP
113 : ADD 2, 1, 0 ;  stash left in R2
114 : ADD 1, 3, 0 ;  restore right to R1
115 : SUB 1, 2, 1 ;  left - right
116 : JLT 1, 2(7) ;  if < 0 then true
117 : LDC 1, 0(0) ;  false
118 : LDA 7, 1(7) ;  skip
119 : LDC 1, 1(0) ;  true
120 : JEQ 1, 123(0) ;  if false -> ELSE
121 : LDC 1, 0(0) ;  bool -> R1
122 : LDA 7, 193(0) ;  skip ELSE
123 : LDC 1, 2(0) ;  literal -> R1
124 : ADD 3, 1, 0 ;  stash right in R3
125 : LD 1, 1(4) ;  load 'n' via FP
126 : ADD 2, 1, 0 ;  stash left in R2
127 : ADD 1, 3, 0 ;  restore right to R1
128 : SUB 1, 2, 1 ;  left - right
129 : JEQ 1, 2(7) ;  if 0 then true
130 : LDC 1, 0(0) ;  false
131 : LDA 7, 1(7) ;  skip
132 : LDC 1, 1(0) ;  true
133 : JEQ 1, 136(0) ;  if false -> ELSE
134 : LDC 1, 1(0) ;  bool -> R1
135 : LDA 7, 193(0) ;  skip ELSE
136 : LD 1, 1(4) ;  load 'n' via FP
137 : ADD 2, 1, 0 ;  Save arg0 in R2
138 : LDC 1, 5(0) ;  literal -> R1
139 : ADD 3, 1, 0 ;  Save arg1 in R3
140 : LDA 6, 148(0) ;  Prepare RA label
141 : LDA 2, 4(5) ;  callee base size -> R2
142 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
143 : ST 6, 0(5) ;  store RA in callee frame
144 : ST 2, 1(5) ;  TEMP overwrite: fix below
145 : ST 2, 1(5) ;  store arg0 from R2
146 : ST 3, 2(5) ;  store arg1 from R3
147 : LDA 7, 196(0) ;  Call divisible
148 : LD 1, 3(5) ;  load callee result
149 : LDC 2, 4(0) ;  size to pop
150 : SUB 5, 5, 2 ;  pop callee frame
151 : ADD 3, 1, 0 ;  stash right in R3
152 : LD 1, 1(4) ;  load 'n' via FP
153 : ADD 2, 1, 0 ;  Save arg0 in R2
154 : LDC 1, 3(0) ;  literal -> R1
155 : ADD 3, 1, 0 ;  Save arg1 in R3
156 : LDA 6, 164(0) ;  Prepare RA label
157 : LDA 2, 4(5) ;  callee base size -> R2
158 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
159 : ST 6, 0(5) ;  store RA in callee frame
160 : ST 2, 1(5) ;  TEMP overwrite: fix below
161 : ST 2, 1(5) ;  store arg0 from R2
162 : ST 3, 2(5) ;  store arg1 from R3
163 : LDA 7, 196(0) ;  Call divisible
164 : LD 1, 3(5) ;  load callee result
165 : LDC 2, 4(0) ;  size to pop
166 : SUB 5, 5, 2 ;  pop callee frame
167 : ADD 3, 1, 0 ;  stash right in R3
168 : LD 1, 1(4) ;  load 'n' via FP
169 : ADD 2, 1, 0 ;  Save arg0 in R2
170 : LDC 1, 2(0) ;  literal -> R1
171 : ADD 3, 1, 0 ;  Save arg1 in R3
172 : LDA 6, 180(0) ;  Prepare RA label
173 : LDA 2, 4(5) ;  callee base size -> R2
174 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
175 : ST 6, 0(5) ;  store RA in callee frame
176 : ST 2, 1(5) ;  TEMP overwrite: fix below
177 : ST 2, 1(5) ;  store arg0 from R2
178 : ST 3, 2(5) ;  store arg1 from R3
179 : LDA 7, 196(0) ;  Call divisible
180 : LD 1, 3(5) ;  load callee result
181 : LDC 2, 4(0) ;  size to pop
182 : SUB 5, 5, 2 ;  pop callee frame
183 : ADD 2, 1, 0 ;  stash left in R2
184 : ADD 1, 3, 0 ;  restore right to R1
185 : ADD 1, 2, 1 ;  left OR right
186 : ADD 2, 1, 0 ;  stash left in R2
187 : ADD 1, 3, 0 ;  restore right to R1
188 : ADD 1, 2, 1 ;  left OR right
189 : JEQ 1, 192(0) ;  if false -> ELSE
190 : LDC 1, 0(0) ;  bool -> R1
191 : LDA 7, 193(0) ;  skip ELSE
192 : LDC 1, 1(0) ;  bool -> R1
193 : ST 1, 2(4) ;  store result in return slot (via FP)
194 : LD 6, 0(4) ;  load RA (via FP)
195 : LDA 7, 0(6) ;  return to caller
196 : ADD 4, 5, 0 ;  FP = SP at 196 entry
197 : LD 1, 1(4) ;  load 'x' via FP
198 : ADD 3, 1, 0 ;  stash right in R3
199 : LD 1, 2(4) ;  load 'y' via FP
200 : ADD 3, 1, 0 ;  stash right in R3
201 : LD 1, 2(4) ;  load 'y' via FP
202 : ADD 3, 1, 0 ;  stash right in R3
203 : LD 1, 1(4) ;  load 'x' via FP
204 : ADD 2, 1, 0 ;  stash left in R2
205 : ADD 1, 3, 0 ;  restore right to R1
206 : DIV 1, 2, 1 ;  left / right
207 : ADD 2, 1, 0 ;  stash left in R2
208 : ADD 1, 3, 0 ;  restore right to R1
209 : MUL 1, 2, 1 ;  left * right
210 : ADD 2, 1, 0 ;  stash left in R2
211 : ADD 1, 3, 0 ;  restore right to R1
212 : SUB 1, 2, 1 ;  left - right
213 : JEQ 1, 2(7) ;  if 0 then true
214 : LDC 1, 0(0) ;  false
215 : LDA 7, 1(7) ;  skip
216 : LDC 1, 1(0) ;  true
217 : JEQ 1, 220(0) ;  if false -> ELSE
218 : LDC 1, 1(0) ;  bool -> R1
219 : LDA 7, 221(0) ;  skip ELSE
220 : LDC 1, 0(0) ;  bool -> R1
221 : ST 1, 3(4) ;  store result in return slot (via FP)
222 : LD 6, 0(4) ;  load RA (via FP)
223 : LDA 7, 0(6) ;  return to caller
