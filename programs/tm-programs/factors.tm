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
13 : LD 1, 1(4) ;  load 'n' via FP
14 : ADD 2, 1, 0 ;  Save arg0 in R2
15 : LDC 1, 1(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  Save arg1 in R3
17 : LDA 6, 25(0) ;  Prepare RA label
18 : LDA 2, 4(5) ;  callee base size -> R2
19 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
20 : ST 6, 0(5) ;  store RA in callee frame
21 : ST 2, 1(5) ;  TEMP overwrite: fix below
22 : ST 2, 1(5) ;  store arg0 from R2
23 : ST 3, 2(5) ;  store arg1 from R3
24 : LDA 7, 185(0) ;  Call loopToN
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
62 : LDA 7, 32(0) ;  Call remainder
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
83 : LDA 7, 32(0) ;  Call remainder
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
98 : LDA 6, 103(0) ;  Prepare RA label
99 : LDA 2, 3(5) ;  callee base size -> R2
100 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
101 : ST 6, 0(5) ;  store RA in callee frame
102 : LDA 7, 9(0) ;  Call print
103 : LD 1, 2(5) ;  load callee result
104 : LDC 2, 3(0) ;  size to pop
105 : SUB 5, 5, 2 ;  pop callee frame
106 : LD 1, 1(4) ;  load 'n' via FP
107 : ADD 2, 1, 0 ;  Save arg0 in R2
108 : LDC 1, 1(0) ;  literal -> R1
109 : ADD 3, 1, 0 ;  stash right in R3
110 : LD 1, 2(4) ;  load 'current' via FP
111 : ADD 2, 1, 0 ;  stash left in R2
112 : ADD 1, 3, 0 ;  restore right to R1
113 : ADD 1, 2, 1 ;  left + right
114 : ADD 3, 1, 0 ;  Save arg1 in R3
115 : LDA 6, 123(0) ;  Prepare RA label
116 : LDA 2, 4(5) ;  callee base size -> R2
117 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
118 : ST 6, 0(5) ;  store RA in callee frame
119 : ST 2, 1(5) ;  TEMP overwrite: fix below
120 : ST 2, 1(5) ;  store arg0 from R2
121 : ST 3, 2(5) ;  store arg1 from R3
122 : LDA 7, 185(0) ;  Call loopToN
123 : LD 1, 3(5) ;  load callee result
124 : LDC 2, 4(0) ;  size to pop
125 : SUB 5, 5, 2 ;  pop callee frame
126 : ST 1, 3(4) ;  store result in return slot (via FP)
127 : LD 6, 0(4) ;  load RA (via FP)
128 : LDA 7, 0(6) ;  return to caller
129 : ADD 4, 5, 0 ;  FP = SP at 129 entry
130 : LD 1, 2(4) ;  load 'current' via FP
131 : ADD 2, 1, 0 ;  Save arg0 in R2
132 : LD 1, 1(4) ;  load 'n' via FP
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
145 : JEQ 1, 162(0) ;  if false -> ELSE
146 : LD 1, 1(4) ;  load 'n' via FP
147 : ADD 2, 1, 0 ;  Save arg0 in R2
148 : LD 1, 2(4) ;  load 'current' via FP
149 : ADD 3, 1, 0 ;  Save arg1 in R3
150 : LDA 6, 158(0) ;  Prepare RA label
151 : LDA 2, 4(5) ;  callee base size -> R2
152 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
153 : ST 6, 0(5) ;  store RA in callee frame
154 : ST 2, 1(5) ;  TEMP overwrite: fix below
155 : ST 2, 1(5) ;  store arg0 from R2
156 : ST 3, 2(5) ;  store arg1 from R3
157 : LDA 7, 97(0) ;  Call printAndLoop
158 : LD 1, 3(5) ;  load callee result
159 : LDC 2, 4(0) ;  size to pop
160 : SUB 5, 5, 2 ;  pop callee frame
161 : LDA 7, 182(0) ;  skip ELSE
162 : LD 1, 1(4) ;  load 'n' via FP
163 : ADD 2, 1, 0 ;  Save arg0 in R2
164 : LDC 1, 1(0) ;  literal -> R1
165 : ADD 3, 1, 0 ;  stash right in R3
166 : LD 1, 2(4) ;  load 'current' via FP
167 : ADD 2, 1, 0 ;  stash left in R2
168 : ADD 1, 3, 0 ;  restore right to R1
169 : ADD 1, 2, 1 ;  left + right
170 : ADD 3, 1, 0 ;  Save arg1 in R3
171 : LDA 6, 179(0) ;  Prepare RA label
172 : LDA 2, 4(5) ;  callee base size -> R2
173 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
174 : ST 6, 0(5) ;  store RA in callee frame
175 : ST 2, 1(5) ;  TEMP overwrite: fix below
176 : ST 2, 1(5) ;  store arg0 from R2
177 : ST 3, 2(5) ;  store arg1 from R3
178 : LDA 7, 185(0) ;  Call loopToN
179 : LD 1, 3(5) ;  load callee result
180 : LDC 2, 4(0) ;  size to pop
181 : SUB 5, 5, 2 ;  pop callee frame
182 : ST 1, 3(4) ;  store result in return slot (via FP)
183 : LD 6, 0(4) ;  load RA (via FP)
184 : LDA 7, 0(6) ;  return to caller
185 : ADD 4, 5, 0 ;  FP = SP at 185 entry
186 : LD 1, 2(4) ;  load 'current' via FP
187 : ADD 3, 1, 0 ;  stash right in R3
188 : LD 1, 1(4) ;  load 'n' via FP
189 : ADD 2, 1, 0 ;  stash left in R2
190 : ADD 1, 3, 0 ;  restore right to R1
191 : SUB 1, 2, 1 ;  left - right
192 : JEQ 1, 2(7) ;  if 0 then true
193 : LDC 1, 0(0) ;  false
194 : LDA 7, 1(7) ;  skip
195 : LDC 1, 1(0) ;  true
196 : JEQ 1, 199(0) ;  if false -> ELSE
197 : LD 1, 1(4) ;  load 'n' via FP
198 : LDA 7, 214(0) ;  skip ELSE
199 : LD 1, 1(4) ;  load 'n' via FP
200 : ADD 2, 1, 0 ;  Save arg0 in R2
201 : LD 1, 2(4) ;  load 'current' via FP
202 : ADD 3, 1, 0 ;  Save arg1 in R3
203 : LDA 6, 211(0) ;  Prepare RA label
204 : LDA 2, 4(5) ;  callee base size -> R2
205 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
206 : ST 6, 0(5) ;  store RA in callee frame
207 : ST 2, 1(5) ;  TEMP overwrite: fix below
208 : ST 2, 1(5) ;  store arg0 from R2
209 : ST 3, 2(5) ;  store arg1 from R3
210 : LDA 7, 129(0) ;  Call testAndLoop
211 : LD 1, 3(5) ;  load callee result
212 : LDC 2, 4(0) ;  size to pop
213 : SUB 5, 5, 2 ;  pop callee frame
214 : ST 1, 3(4) ;  store result in return slot (via FP)
215 : LD 6, 0(4) ;  load RA (via FP)
216 : LDA 7, 0(6) ;  return to caller
