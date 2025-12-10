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
13 : LDC 1, 10(0) ;  literal -> R1
14 : ADD 3, 1, 0 ;  stash right in R3
15 : LD 1, 1(4) ;  load 'n' via FP
16 : ADD 2, 1, 0 ;  stash left in R2
17 : ADD 1, 3, 0 ;  restore right to R1
18 : DIV 1, 2, 1 ;  left / right
19 : ADD 2, 1, 0 ;  Save arg0 in R2
20 : LD 1, 1(4) ;  load 'n' via FP
21 : ADD 2, 1, 0 ;  Save arg0 in R2
22 : LDC 1, 10(0) ;  literal -> R1
23 : ADD 3, 1, 0 ;  Save arg1 in R3
24 : LDA 6, 32(0) ;  Prepare RA label
25 : LDA 2, 4(5) ;  callee base size -> R2
26 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
27 : ST 6, 0(5) ;  store RA in callee frame
28 : ST 2, 1(5) ;  TEMP overwrite: fix below
29 : ST 2, 1(5) ;  store arg0 from R2
30 : ST 3, 2(5) ;  store arg1 from R3
31 : LDA 7, 51(0) ;  Call MOD
32 : LD 1, 3(5) ;  load callee result
33 : LDC 2, 4(0) ;  size to pop
34 : SUB 5, 5, 2 ;  pop callee frame
35 : ADD 3, 1, 0 ;  Save arg1 in R3
36 : LDA 6, 44(0) ;  Prepare RA label
37 : LDA 2, 4(5) ;  callee base size -> R2
38 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
39 : ST 6, 0(5) ;  store RA in callee frame
40 : ST 2, 1(5) ;  TEMP overwrite: fix below
41 : ST 2, 1(5) ;  store arg0 from R2
42 : ST 3, 2(5) ;  store arg1 from R3
43 : LDA 7, 160(0) ;  Call divisibleByParts
44 : LD 1, 3(5) ;  load callee result
45 : LDC 2, 4(0) ;  size to pop
46 : SUB 5, 5, 2 ;  pop callee frame
47 : ST 1, 2(4) ;  store result into caller frame (via FP)
48 : LD 1, 2(4) ;  R1 = return value (via FP)
49 : LD 6, 0(4) ;  RA from FP
50 : LDA 7, 0(6) ;  return
51 : ADD 4, 5, 0 ;  FP = SP at 51 entry
52 : LD 1, 2(4) ;  load 'n' via FP
53 : ADD 3, 1, 0 ;  stash right in R3
54 : LD 1, 2(4) ;  load 'n' via FP
55 : ADD 3, 1, 0 ;  stash right in R3
56 : LD 1, 1(4) ;  load 'm' via FP
57 : ADD 2, 1, 0 ;  stash left in R2
58 : ADD 1, 3, 0 ;  restore right to R1
59 : DIV 1, 2, 1 ;  left / right
60 : ADD 2, 1, 0 ;  stash left in R2
61 : ADD 1, 3, 0 ;  restore right to R1
62 : MUL 1, 2, 1 ;  left * right
63 : ADD 3, 1, 0 ;  stash right in R3
64 : LD 1, 1(4) ;  load 'm' via FP
65 : ADD 2, 1, 0 ;  stash left in R2
66 : ADD 1, 3, 0 ;  restore right to R1
67 : SUB 1, 2, 1 ;  left - right
68 : ST 1, 3(4) ;  store result in return slot (via FP)
69 : LD 6, 0(4) ;  load RA (via FP)
70 : LDA 7, 0(6) ;  return to caller
71 : ADD 4, 5, 0 ;  FP = SP at 71 entry
72 : LDC 1, 14(0) ;  literal -> R1
73 : SUB 1, 0, 1 ;  negate
74 : ADD 3, 1, 0 ;  stash right in R3
75 : LD 1, 1(4) ;  load 'diff' via FP
76 : ADD 2, 1, 0 ;  stash left in R2
77 : ADD 1, 3, 0 ;  restore right to R1
78 : SUB 1, 2, 1 ;  left - right
79 : JEQ 1, 2(7) ;  if 0 then true
80 : LDC 1, 0(0) ;  false
81 : LDA 7, 1(7) ;  skip
82 : LDC 1, 1(0) ;  true
83 : ADD 3, 1, 0 ;  stash right in R3
84 : LDC 1, 7(0) ;  literal -> R1
85 : SUB 1, 0, 1 ;  negate
86 : ADD 3, 1, 0 ;  stash right in R3
87 : LD 1, 1(4) ;  load 'diff' via FP
88 : ADD 2, 1, 0 ;  stash left in R2
89 : ADD 1, 3, 0 ;  restore right to R1
90 : SUB 1, 2, 1 ;  left - right
91 : JEQ 1, 2(7) ;  if 0 then true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip
94 : LDC 1, 1(0) ;  true
95 : ADD 3, 1, 0 ;  stash right in R3
96 : LDC 1, 0(0) ;  literal -> R1
97 : ADD 3, 1, 0 ;  stash right in R3
98 : LD 1, 1(4) ;  load 'diff' via FP
99 : ADD 2, 1, 0 ;  stash left in R2
100 : ADD 1, 3, 0 ;  restore right to R1
101 : SUB 1, 2, 1 ;  left - right
102 : JEQ 1, 2(7) ;  if 0 then true
103 : LDC 1, 0(0) ;  false
104 : LDA 7, 1(7) ;  skip
105 : LDC 1, 1(0) ;  true
106 : ADD 3, 1, 0 ;  stash right in R3
107 : LDC 1, 7(0) ;  literal -> R1
108 : ADD 3, 1, 0 ;  stash right in R3
109 : LD 1, 1(4) ;  load 'diff' via FP
110 : ADD 2, 1, 0 ;  stash left in R2
111 : ADD 1, 3, 0 ;  restore right to R1
112 : SUB 1, 2, 1 ;  left - right
113 : JEQ 1, 2(7) ;  if 0 then true
114 : LDC 1, 0(0) ;  false
115 : LDA 7, 1(7) ;  skip
116 : LDC 1, 1(0) ;  true
117 : ADD 2, 1, 0 ;  stash left in R2
118 : ADD 1, 3, 0 ;  restore right to R1
119 : ADD 1, 2, 1 ;  left OR right
120 : ADD 2, 1, 0 ;  stash left in R2
121 : ADD 1, 3, 0 ;  restore right to R1
122 : ADD 1, 2, 1 ;  left OR right
123 : ADD 2, 1, 0 ;  stash left in R2
124 : ADD 1, 3, 0 ;  restore right to R1
125 : ADD 1, 2, 1 ;  left OR right
126 : JEQ 1, 129(0) ;  if false -> ELSE
127 : LDC 1, 1(0) ;  bool -> R1
128 : LDA 7, 157(0) ;  skip ELSE
129 : LDC 1, 14(0) ;  literal -> R1
130 : ADD 3, 1, 0 ;  stash right in R3
131 : LD 1, 1(4) ;  load 'diff' via FP
132 : ADD 2, 1, 0 ;  stash left in R2
133 : ADD 1, 3, 0 ;  restore right to R1
134 : SUB 1, 2, 1 ;  left - right
135 : JLT 1, 2(7) ;  if < 0 then true
136 : LDC 1, 0(0) ;  false
137 : LDA 7, 1(7) ;  skip
138 : LDC 1, 1(0) ;  true
139 : JEQ 1, 142(0) ;  if false -> ELSE
140 : LDC 1, 0(0) ;  bool -> R1
141 : LDA 7, 157(0) ;  skip ELSE
142 : LD 1, 1(4) ;  load 'diff' via FP
143 : ADD 2, 1, 0 ;  Save arg0 in R2
144 : LDA 6, 154(0) ;  Prepare RA label
145 : LDA 2, 3(5) ;  callee base size -> R2
146 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
147 : ST 6, 0(5) ;  store RA in callee frame
148 : ST 2, 1(5) ;  TEMP overwrite: fix below
149 : ST 2, 1(5) ; store arg0 from R2
150 : ST 2, 0(0) ;  noop slot
151 : ST 2, 0(0) ;  noop slot
152 : ST 2, 0(0) ;  noop
153 : LDA 7, 12(0) ;  Call main
154 : LD 1, 2(5) ;  load callee result
155 : LDC 2, 3(0) ;  size to pop
156 : SUB 5, 5, 2 ;  pop callee frame
157 : ST 1, 2(4) ;  store result in return slot (via FP)
158 : LD 6, 0(4) ;  load RA (via FP)
159 : LDA 7, 0(6) ;  return to caller
160 : ADD 4, 5, 0 ;  FP = SP at 160 entry
161 : LDC 1, 2(0) ;  literal -> R1
162 : ADD 3, 1, 0 ;  stash right in R3
163 : LD 1, 2(4) ;  load 'right' via FP
164 : ADD 2, 1, 0 ;  stash left in R2
165 : ADD 1, 3, 0 ;  restore right to R1
166 : MUL 1, 2, 1 ;  left * right
167 : ADD 3, 1, 0 ;  stash right in R3
168 : LD 1, 1(4) ;  load 'left' via FP
169 : ADD 2, 1, 0 ;  stash left in R2
170 : ADD 1, 3, 0 ;  restore right to R1
171 : SUB 1, 2, 1 ;  left - right
172 : ADD 2, 1, 0 ;  Save arg0 in R2
173 : LDA 6, 183(0) ;  Prepare RA label
174 : LDA 2, 3(5) ;  callee base size -> R2
175 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
176 : ST 6, 0(5) ;  store RA in callee frame
177 : ST 2, 1(5) ;  TEMP overwrite: fix below
178 : ST 2, 1(5) ; store arg0 from R2
179 : ST 2, 0(0) ;  noop slot
180 : ST 2, 0(0) ;  noop slot
181 : ST 2, 0(0) ;  noop
182 : LDA 7, 71(0) ;  Call divisibleByDifference
183 : LD 1, 2(5) ;  load callee result
184 : LDC 2, 3(0) ;  size to pop
185 : SUB 5, 5, 2 ;  pop callee frame
186 : ST 1, 3(4) ;  store result in return slot (via FP)
187 : LD 6, 0(4) ;  load RA (via FP)
188 : LDA 7, 0(6) ;  return to caller
