0 : LDC 5, 3(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 -> R2
5 : ST 2, 2(5) ;  Store arg 2 at main frame
6 : LDA 6, 2(7) ;  RA = next after branch
7 : ST 6, 0(5) ;  Store RA in main frame
8 : LDA 7, 14(0) ;  Jump to main
9 : OUT 1, 0, 0 ;  Print R1
10 : HALT 0, 0, 0 ;  Halt
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(4) ;  Load RA via FP
13 : LDA 7, 0(6) ;  Return
14 : ADD 4, 5, 0 ;  FP = SP at 14 entry
15 : LDC 1, 0(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  stash right in R3
17 : LD 1, 1(4) ;  load 'publicKey' via FP
18 : ADD 2, 1, 0 ;  stash left in R2
19 : ADD 1, 3, 0 ;  restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 43(0) ;  if false -> ELSE
26 : LDC 1, 2147481647(0) ;  literal -> R1
27 : ADD 2, 1, 0 ;  Save arg0 in R2
28 : LDC 1, 2047483747(0) ;  literal -> R1
29 : ADD 3, 1, 0 ;  Save arg1 in R3
30 : LDA 6, 38(0) ;  Prepare RA label
31 : LDA 2, 4(5) ;  callee base size -> R2
32 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
33 : ST 6, 0(5) ;  store RA in callee frame
34 : ST 2, 1(5) ;  TEMP overwrite: fix below
35 : ST 2, 1(5) ;  store arg0 from R2
36 : ST 3, 2(5) ;  store arg1 from R3
37 : LDA 7, 180(0) ;  Call factor
38 : LD 1, 3(5) ;  load callee result
39 : LDC 2, 4(0) ;  size to pop
40 : SUB 5, 5, 2 ;  pop callee frame
41 : ST 1, 3(4) ;  store result into caller frame (via FP)
42 : LDA 7, 59(0) ;  skip ELSE
43 : LD 1, 1(4) ;  load 'publicKey' via FP
44 : ADD 2, 1, 0 ;  Save arg0 in R2
45 : LD 1, 2(4) ;  load 'privateKey' via FP
46 : ADD 3, 1, 0 ;  Save arg1 in R3
47 : LDA 6, 55(0) ;  Prepare RA label
48 : LDA 2, 4(5) ;  callee base size -> R2
49 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
50 : ST 6, 0(5) ;  store RA in callee frame
51 : ST 2, 1(5) ;  TEMP overwrite: fix below
52 : ST 2, 1(5) ;  store arg0 from R2
53 : ST 3, 2(5) ;  store arg1 from R3
54 : LDA 7, 180(0) ;  Call factor
55 : LD 1, 3(5) ;  load callee result
56 : LDC 2, 4(0) ;  size to pop
57 : SUB 5, 5, 2 ;  pop callee frame
58 : ST 1, 3(4) ;  store result into caller frame (via FP)
59 : LD 1, 3(4) ;  R1 = return value (via FP)
60 : LD 6, 0(4) ;  RA from FP
61 : LDA 7, 0(6) ;  return
62 : ADD 4, 5, 0 ;  FP = SP at 62 entry
63 : LD 1, 2(4) ;  load 'b' via FP
64 : ADD 3, 1, 0 ;  stash right in R3
65 : LD 1, 1(4) ;  load 'a' via FP
66 : ADD 2, 1, 0 ;  stash left in R2
67 : ADD 1, 3, 0 ;  restore right to R1
68 : SUB 1, 2, 1 ;  left - right
69 : JLT 1, 2(7) ;  if < 0 then true
70 : LDC 1, 0(0) ;  false
71 : LDA 7, 1(7) ;  skip
72 : LDC 1, 1(0) ;  true
73 : JEQ 1, 76(0) ;  if false -> ELSE
74 : LD 1, 1(4) ;  load 'a' via FP
75 : LDA 7, 96(0) ;  skip ELSE
76 : LD 1, 2(4) ;  load 'b' via FP
77 : ADD 3, 1, 0 ;  stash right in R3
78 : LD 1, 1(4) ;  load 'a' via FP
79 : ADD 2, 1, 0 ;  stash left in R2
80 : ADD 1, 3, 0 ;  restore right to R1
81 : SUB 1, 2, 1 ;  left - right
82 : ADD 2, 1, 0 ;  Save arg0 in R2
83 : LD 1, 2(4) ;  load 'b' via FP
84 : ADD 3, 1, 0 ;  Save arg1 in R3
85 : LDA 6, 93(0) ;  Prepare RA label
86 : LDA 2, 4(5) ;  callee base size -> R2
87 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
88 : ST 6, 0(5) ;  store RA in callee frame
89 : ST 2, 1(5) ;  TEMP overwrite: fix below
90 : ST 2, 1(5) ;  store arg0 from R2
91 : ST 3, 2(5) ;  store arg1 from R3
92 : LDA 7, 62(0) ;  Call remainder
93 : LD 1, 3(5) ;  load callee result
94 : LDC 2, 4(0) ;  size to pop
95 : SUB 5, 5, 2 ;  pop callee frame
96 : ST 1, 3(4) ;  store result in return slot (via FP)
97 : LD 6, 0(4) ;  load RA (via FP)
98 : LDA 7, 0(6) ;  return to caller
99 : ADD 4, 5, 0 ;  FP = SP at 99 entry
100 : LDC 1, 0(0) ;  literal -> R1
101 : ADD 3, 1, 0 ;  stash right in R3
102 : LD 1, 2(4) ;  load 'b' via FP
103 : ADD 2, 1, 0 ;  stash left in R2
104 : ADD 1, 3, 0 ;  restore right to R1
105 : SUB 1, 2, 1 ;  left - right
106 : JEQ 1, 2(7) ;  if 0 then true
107 : LDC 1, 0(0) ;  false
108 : LDA 7, 1(7) ;  skip
109 : LDC 1, 1(0) ;  true
110 : JEQ 1, 113(0) ;  if false -> ELSE
111 : LD 1, 1(4) ;  load 'a' via FP
112 : LDA 7, 142(0) ;  skip ELSE
113 : LD 1, 2(4) ;  load 'b' via FP
114 : ADD 2, 1, 0 ;  Save arg0 in R2
115 : LD 1, 1(4) ;  load 'a' via FP
116 : ADD 2, 1, 0 ;  Save arg0 in R2
117 : LD 1, 2(4) ;  load 'b' via FP
118 : ADD 3, 1, 0 ;  Save arg1 in R3
119 : LDA 6, 127(0) ;  Prepare RA label
120 : LDA 2, 4(5) ;  callee base size -> R2
121 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
122 : ST 6, 0(5) ;  store RA in callee frame
123 : ST 2, 1(5) ;  TEMP overwrite: fix below
124 : ST 2, 1(5) ;  store arg0 from R2
125 : ST 3, 2(5) ;  store arg1 from R3
126 : LDA 7, 62(0) ;  Call remainder
127 : LD 1, 3(5) ;  load callee result
128 : LDC 2, 4(0) ;  size to pop
129 : SUB 5, 5, 2 ;  pop callee frame
130 : ADD 3, 1, 0 ;  Save arg1 in R3
131 : LDA 6, 139(0) ;  Prepare RA label
132 : LDA 2, 4(5) ;  callee base size -> R2
133 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
134 : ST 6, 0(5) ;  store RA in callee frame
135 : ST 2, 1(5) ;  TEMP overwrite: fix below
136 : ST 2, 1(5) ;  store arg0 from R2
137 : ST 3, 2(5) ;  store arg1 from R3
138 : LDA 7, 99(0) ;  Call gcd
139 : LD 1, 3(5) ;  load callee result
140 : LDC 2, 4(0) ;  size to pop
141 : SUB 5, 5, 2 ;  pop callee frame
142 : ST 1, 3(4) ;  store result in return slot (via FP)
143 : LD 6, 0(4) ;  load RA (via FP)
144 : LDA 7, 0(6) ;  return to caller
145 : ADD 4, 5, 0 ;  FP = SP at 145 entry
146 : LD 1, 1(4) ;  load 'publicKey' via FP
147 : ADD 2, 1, 0 ;  Save arg0 in R2
148 : LD 1, 3(4) ;  load 'commonFactor' via FP
149 : ADD 3, 1, 0 ;  Save arg1 in R3
150 : LDA 6, 158(0) ;  Prepare RA label
151 : LDA 2, 3(5) ;  callee base size -> R2
152 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
153 : ST 6, 0(5) ;  store RA in callee frame
154 : ST 2, 1(5) ;  TEMP overwrite: fix below
155 : ST 2, 1(5) ;  store arg0 from R2
156 : ST 3, 2(5) ;  store arg1 from R3
157 : LDA 7, 11(0) ;  Call print
158 : LD 1, 2(5) ;  load callee result
159 : LDC 2, 3(0) ;  size to pop
160 : SUB 5, 5, 2 ;  pop callee frame
161 : LD 1, 2(4) ;  load 'privateKey' via FP
162 : ADD 2, 1, 0 ;  Save arg0 in R2
163 : LD 1, 3(4) ;  load 'commonFactor' via FP
164 : ADD 3, 1, 0 ;  Save arg1 in R3
165 : LDA 6, 173(0) ;  Prepare RA label
166 : LDA 2, 3(5) ;  callee base size -> R2
167 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
168 : ST 6, 0(5) ;  store RA in callee frame
169 : ST 2, 1(5) ;  TEMP overwrite: fix below
170 : ST 2, 1(5) ;  store arg0 from R2
171 : ST 3, 2(5) ;  store arg1 from R3
172 : LDA 7, 11(0) ;  Call print
173 : LD 1, 2(5) ;  load callee result
174 : LDC 2, 3(0) ;  size to pop
175 : SUB 5, 5, 2 ;  pop callee frame
176 : LD 1, 3(4) ;  load 'commonFactor' via FP
177 : ST 1, 4(4) ;  store result in return slot (via FP)
178 : LD 6, 0(4) ;  load RA (via FP)
179 : LDA 7, 0(6) ;  return to caller
180 : ADD 4, 5, 0 ;  FP = SP at 180 entry
181 : LDA 6, 187(0) ;  Prepare RA label
182 : LDA 2, 5(5) ;  callee base size -> R2
183 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
184 : ST 6, 0(5) ;  store RA in callee frame
185 : ST 2, 1(5) ;  TEMP overwrite: fix below
186 : LDA 7, 145(0) ;  Call displayAndPrint
187 : LD 1, 4(5) ;  load callee result
188 : LDC 2, 5(0) ;  size to pop
189 : SUB 5, 5, 2 ;  pop callee frame
190 : ST 1, 3(4) ;  store result in return slot (via FP)
191 : LD 6, 0(4) ;  load RA (via FP)
192 : LDA 7, 0(6) ;  return to caller
