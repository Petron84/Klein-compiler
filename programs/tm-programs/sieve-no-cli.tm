0 : LDC 5, 2(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LDA 6, 2(7) ;  RA = next after branch
5 : ST 6, 0(5) ;  Store RA in main frame
6 : LDA 7, 12(0) ;  Jump to main
7 : OUT 1, 0, 0 ;  Print R1
8 : HALT 0, 0, 0 ;  Halt
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(4) ;  Load RA via FP
11 : LDA 7, 0(6) ;  Return
12 : ADD 4, 5, 0 ;  FP = SP at 12 entry
13 : LDC 1, 2(0) ;  literal -> R1
14 : ADD 2, 1, 0 ;  Save arg0 in R2
15 : LDC 1, 40(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  Save arg1 in R3
17 : LDA 6, 25(0) ;  Prepare RA label
18 : LDA 2, 4(5) ;  callee base size -> R2
19 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
20 : ST 6, 0(5) ;  store RA in callee frame
21 : ST 2, 1(5) ;  TEMP overwrite: fix below
22 : ST 2, 1(5) ;  store arg0 from R2
23 : ST 3, 2(5) ;  store arg1 from R3
24 : LDA 7, 207(0) ;  Call sieveAt
25 : LD 1, 3(5) ;  load callee result
26 : LDC 2, 4(0) ;  size to pop
27 : SUB 5, 5, 2 ;  pop callee frame
28 : ST 1, 2(4) ;  store result into caller frame (via FP)
29 : LD 1, 2(4) ;  R1 = return value (via FP)
30 : LD 6, 0(4) ;  RA from FP
31 : LDA 7, 0(6) ;  return
32 : ADD 4, 5, 0 ;  FP = SP at 32 entry
33 : LD 1, 2(4) ;  load 'den' via FP
34 : ADD 3, 1, 0 ;  stash right in R3
35 : LD 1, 1(4) ;  load 'num' via FP
36 : ADD 2, 1, 0 ;  stash left in R2
37 : ADD 1, 3, 0 ;  restore right to R1
38 : SUB 1, 2, 1 ;  left - right
39 : JLT 1, 2(7) ;  if < 0 then true
40 : LDC 1, 0(0) ;  false
41 : LDA 7, 1(7) ;  skip
42 : LDC 1, 1(0) ;  true
43 : JEQ 1, 46(0) ;  if false -> ELSE
44 : LD 1, 1(4) ;  load 'num' via FP
45 : LDA 7, 66(0) ;  skip ELSE
46 : LD 1, 2(4) ;  load 'den' via FP
47 : ADD 3, 1, 0 ;  stash right in R3
48 : LD 1, 1(4) ;  load 'num' via FP
49 : ADD 2, 1, 0 ;  stash left in R2
50 : ADD 1, 3, 0 ;  restore right to R1
51 : SUB 1, 2, 1 ;  left - right
52 : ADD 2, 1, 0 ;  Save arg0 in R2
53 : LD 1, 2(4) ;  load 'den' via FP
54 : ADD 3, 1, 0 ;  Save arg1 in R3
55 : LDA 6, 63(0) ;  Prepare RA label
56 : LDA 2, 4(5) ;  callee base size -> R2
57 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
58 : ST 6, 0(5) ;  store RA in callee frame
59 : ST 2, 1(5) ;  TEMP overwrite: fix below
60 : ST 2, 1(5) ;  store arg0 from R2
61 : ST 3, 2(5) ;  store arg1 from R3
62 : LDA 7, 32(0) ;  Call rem
63 : LD 1, 3(5) ;  load callee result
64 : LDC 2, 4(0) ;  size to pop
65 : SUB 5, 5, 2 ;  pop callee frame
66 : ST 1, 3(4) ;  store result in return slot (via FP)
67 : LD 6, 0(4) ;  load RA (via FP)
68 : LDA 7, 0(6) ;  return to caller
69 : ADD 4, 5, 0 ;  FP = SP at 69 entry
70 : LDC 1, 0(0) ;  literal -> R1
71 : ADD 3, 1, 0 ;  stash right in R3
72 : LD 1, 2(4) ;  load 'b' via FP
73 : ADD 2, 1, 0 ;  Save arg0 in R2
74 : LD 1, 1(4) ;  load 'a' via FP
75 : ADD 3, 1, 0 ;  Save arg1 in R3
76 : LDA 6, 84(0) ;  Prepare RA label
77 : LDA 2, 4(5) ;  callee base size -> R2
78 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
79 : ST 6, 0(5) ;  store RA in callee frame
80 : ST 2, 1(5) ;  TEMP overwrite: fix below
81 : ST 2, 1(5) ;  store arg0 from R2
82 : ST 3, 2(5) ;  store arg1 from R3
83 : LDA 7, 32(0) ;  Call rem
84 : LD 1, 3(5) ;  load callee result
85 : LDC 2, 4(0) ;  size to pop
86 : SUB 5, 5, 2 ;  pop callee frame
87 : ADD 2, 1, 0 ;  stash left in R2
88 : ADD 1, 3, 0 ;  restore right to R1
89 : SUB 1, 2, 1 ;  left - right
90 : JEQ 1, 2(7) ;  if 0 then true
91 : LDC 1, 0(0) ;  false
92 : LDA 7, 1(7) ;  skip
93 : LDC 1, 1(0) ;  true
94 : ST 1, 3(4) ;  store result in return slot (via FP)
95 : LD 6, 0(4) ;  load RA (via FP)
96 : LDA 7, 0(6) ;  return to caller
97 : ADD 4, 5, 0 ;  FP = SP at 97 entry
98 : LD 1, 2(4) ;  load 'n' via FP
99 : ADD 3, 1, 0 ;  stash right in R3
100 : LD 1, 1(4) ;  load 'i' via FP
101 : ADD 2, 1, 0 ;  stash left in R2
102 : ADD 1, 3, 0 ;  restore right to R1
103 : SUB 1, 2, 1 ;  left - right
104 : JLT 1, 2(7) ;  if < 0 then true
105 : LDC 1, 0(0) ;  false
106 : LDA 7, 1(7) ;  skip
107 : LDC 1, 1(0) ;  true
108 : JEQ 1, 149(0) ;  if false -> ELSE
109 : LDC 1, 1(0) ;  literal -> R1
110 : ADD 3, 1, 0 ;  stash right in R3
111 : LD 1, 1(4) ;  load 'i' via FP
112 : ADD 2, 1, 0 ;  stash left in R2
113 : ADD 1, 3, 0 ;  restore right to R1
114 : ADD 1, 2, 1 ;  left + right
115 : ADD 2, 1, 0 ;  Save arg0 in R2
116 : LD 1, 2(4) ;  load 'n' via FP
117 : ADD 3, 1, 0 ;  Save arg1 in R3
118 : LDA 6, 126(0) ;  Prepare RA label
119 : LDA 2, 4(5) ;  callee base size -> R2
120 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
121 : ST 6, 0(5) ;  store RA in callee frame
122 : ST 2, 1(5) ;  TEMP overwrite: fix below
123 : ST 2, 1(5) ;  store arg0 from R2
124 : ST 3, 2(5) ;  store arg1 from R3
125 : LDA 7, 97(0) ;  Call hasDivisorFrom
126 : LD 1, 3(5) ;  load callee result
127 : LDC 2, 4(0) ;  size to pop
128 : SUB 5, 5, 2 ;  pop callee frame
129 : ADD 3, 1, 0 ;  stash right in R3
130 : LD 1, 1(4) ;  load 'i' via FP
131 : ADD 2, 1, 0 ;  Save arg0 in R2
132 : LD 1, 2(4) ;  load 'n' via FP
133 : ADD 3, 1, 0 ;  Save arg1 in R3
134 : LDA 6, 142(0) ;  Prepare RA label
135 : LDA 2, 4(5) ;  callee base size -> R2
136 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
137 : ST 6, 0(5) ;  store RA in callee frame
138 : ST 2, 1(5) ;  TEMP overwrite: fix below
139 : ST 2, 1(5) ;  store arg0 from R2
140 : ST 3, 2(5) ;  store arg1 from R3
141 : LDA 7, 69(0) ;  Call divides
142 : LD 1, 3(5) ;  load callee result
143 : LDC 2, 4(0) ;  size to pop
144 : SUB 5, 5, 2 ;  pop callee frame
145 : ADD 2, 1, 0 ;  stash left in R2
146 : ADD 1, 3, 0 ;  restore right to R1
147 : ADD 1, 2, 1 ;  left OR right
148 : LDA 7, 150(0) ;  skip ELSE
149 : LDC 1, 0(0) ;  bool -> R1
150 : ST 1, 3(4) ;  store result in return slot (via FP)
151 : LD 6, 0(4) ;  load RA (via FP)
152 : LDA 7, 0(6) ;  return to caller
153 : ADD 4, 5, 0 ;  FP = SP at 153 entry
154 : LDC 1, 2(0) ;  literal -> R1
155 : ADD 2, 1, 0 ;  Save arg0 in R2
156 : LD 1, 1(4) ;  load 'n' via FP
157 : ADD 3, 1, 0 ;  Save arg1 in R3
158 : LDA 6, 166(0) ;  Prepare RA label
159 : LDA 2, 4(5) ;  callee base size -> R2
160 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
161 : ST 6, 0(5) ;  store RA in callee frame
162 : ST 2, 1(5) ;  TEMP overwrite: fix below
163 : ST 2, 1(5) ;  store arg0 from R2
164 : ST 3, 2(5) ;  store arg1 from R3
165 : LDA 7, 97(0) ;  Call hasDivisorFrom
166 : LD 1, 3(5) ;  load callee result
167 : LDC 2, 4(0) ;  size to pop
168 : SUB 5, 5, 2 ;  pop callee frame
169 : LDC 2, 1(0) ;  load 1
170 : SUB 1, 2, 1 ;  1 - R1
171 : ST 1, 2(4) ;  store result in return slot (via FP)
172 : LD 6, 0(4) ;  load RA (via FP)
173 : LDA 7, 0(6) ;  return to caller
174 : ADD 4, 5, 0 ;  FP = SP at 174 entry
175 : LDA 6, 181(0) ;  Prepare RA label
176 : LDA 2, 3(5) ;  callee base size -> R2
177 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
178 : ST 6, 0(5) ;  store RA in callee frame
179 : ST 2, 1(5) ;  TEMP overwrite: fix below
180 : LDA 7, 9(0) ;  Call print
181 : LD 1, 2(5) ;  load callee result
182 : LDC 2, 3(0) ;  size to pop
183 : SUB 5, 5, 2 ;  pop callee frame
184 : LDC 1, 1(0) ;  literal -> R1
185 : ADD 3, 1, 0 ;  stash right in R3
186 : LD 1, 1(4) ;  load 'current' via FP
187 : ADD 2, 1, 0 ;  stash left in R2
188 : ADD 1, 3, 0 ;  restore right to R1
189 : ADD 1, 2, 1 ;  left + right
190 : ADD 2, 1, 0 ;  Save arg0 in R2
191 : LD 1, 2(4) ;  load 'max' via FP
192 : ADD 3, 1, 0 ;  Save arg1 in R3
193 : LDA 6, 201(0) ;  Prepare RA label
194 : LDA 2, 4(5) ;  callee base size -> R2
195 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
196 : ST 6, 0(5) ;  store RA in callee frame
197 : ST 2, 1(5) ;  TEMP overwrite: fix below
198 : ST 2, 1(5) ;  store arg0 from R2
199 : ST 3, 2(5) ;  store arg1 from R3
200 : LDA 7, 207(0) ;  Call sieveAt
201 : LD 1, 3(5) ;  load callee result
202 : LDC 2, 4(0) ;  size to pop
203 : SUB 5, 5, 2 ;  pop callee frame
204 : ST 1, 3(4) ;  store result in return slot (via FP)
205 : LD 6, 0(4) ;  load RA (via FP)
206 : LDA 7, 0(6) ;  return to caller
207 : ADD 4, 5, 0 ;  FP = SP at 207 entry
208 : LD 1, 1(4) ;  load 'current' via FP
209 : ADD 3, 1, 0 ;  stash right in R3
210 : LD 1, 2(4) ;  load 'max' via FP
211 : ADD 2, 1, 0 ;  stash left in R2
212 : ADD 1, 3, 0 ;  restore right to R1
213 : SUB 1, 2, 1 ;  left - right
214 : JLT 1, 2(7) ;  if < 0 then true
215 : LDC 1, 0(0) ;  false
216 : LDA 7, 1(7) ;  skip
217 : LDC 1, 1(0) ;  true
218 : JEQ 1, 221(0) ;  if false -> ELSE
219 : LDC 1, 1(0) ;  bool -> R1
220 : LDA 7, 236(0) ;  skip ELSE
221 : LD 1, 1(4) ;  load 'current' via FP
222 : ADD 2, 1, 0 ;  Save arg0 in R2
223 : LD 1, 2(4) ;  load 'max' via FP
224 : ADD 3, 1, 0 ;  Save arg1 in R3
225 : LDA 6, 233(0) ;  Prepare RA label
226 : LDA 2, 4(5) ;  callee base size -> R2
227 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
228 : ST 6, 0(5) ;  store RA in callee frame
229 : ST 2, 1(5) ;  TEMP overwrite: fix below
230 : ST 2, 1(5) ;  store arg0 from R2
231 : ST 3, 2(5) ;  store arg1 from R3
232 : LDA 7, 174(0) ;  Call doSieveAt
233 : LD 1, 3(5) ;  load callee result
234 : LDC 2, 4(0) ;  size to pop
235 : SUB 5, 5, 2 ;  pop callee frame
236 : ST 1, 3(4) ;  store result in return slot (via FP)
237 : LD 6, 0(4) ;  load RA (via FP)
238 : LDA 7, 0(6) ;  return to caller
