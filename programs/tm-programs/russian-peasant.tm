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
15 : LDA 6, 20(0) ;  Prepare RA label
16 : LDA 2, 3(5) ;  callee base size -> R2
17 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
18 : ST 6, 0(5) ;  store RA in callee frame
19 : LDA 7, 11(0) ;  Call print
20 : LD 1, 2(5) ;  load callee result
21 : LDC 2, 3(0) ;  size to pop
22 : SUB 5, 5, 2 ;  pop callee frame
23 : ST 1, 3(4) ;  store result into caller frame (via FP)
24 : LD 1, 1(4) ;  load 'm' via FP
25 : ADD 2, 1, 0 ;  Save arg0 in R2
26 : LD 1, 2(4) ;  load 'n' via FP
27 : ADD 3, 1, 0 ;  Save arg1 in R3
28 : LDA 6, 36(0) ;  Prepare RA label
29 : LDA 2, 4(5) ;  callee base size -> R2
30 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
31 : ST 6, 0(5) ;  store RA in callee frame
32 : ST 2, 1(5) ;  TEMP overwrite: fix below
33 : ST 2, 1(5) ;  store arg0 from R2
34 : ST 3, 2(5) ;  store arg1 from R3
35 : LDA 7, 43(0) ;  Call mult
36 : LD 1, 3(5) ;  load callee result
37 : LDC 2, 4(0) ;  size to pop
38 : SUB 5, 5, 2 ;  pop callee frame
39 : ST 1, 3(4) ;  store result into caller frame (via FP)
40 : LD 1, 3(4) ;  R1 = return value (via FP)
41 : LD 6, 0(4) ;  RA from FP
42 : LDA 7, 0(6) ;  return
43 : ADD 4, 5, 0 ;  FP = SP at 43 entry
44 : LDA 6, 50(0) ;  Prepare RA label
45 : LDA 2, 5(5) ;  callee base size -> R2
46 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
47 : ST 6, 0(5) ;  store RA in callee frame
48 : ST 2, 1(5) ;  TEMP overwrite: fix below
49 : LDA 7, 56(0) ;  Call multWithAccum
50 : LD 1, 4(5) ;  load callee result
51 : LDC 2, 5(0) ;  size to pop
52 : SUB 5, 5, 2 ;  pop callee frame
53 : ST 1, 3(4) ;  store result in return slot (via FP)
54 : LD 6, 0(4) ;  load RA (via FP)
55 : LDA 7, 0(6) ;  return to caller
56 : ADD 4, 5, 0 ;  FP = SP at 56 entry
57 : LDC 1, 0(0) ;  literal -> R1
58 : ADD 3, 1, 0 ;  stash right in R3
59 : LD 1, 2(4) ;  load 'n' via FP
60 : ADD 2, 1, 0 ;  stash left in R2
61 : ADD 1, 3, 0 ;  restore right to R1
62 : SUB 1, 2, 1 ;  left - right
63 : JEQ 1, 2(7) ;  if 0 then true
64 : LDC 1, 0(0) ;  false
65 : LDA 7, 1(7) ;  skip
66 : LDC 1, 1(0) ;  true
67 : JEQ 1, 70(0) ;  if false -> ELSE
68 : LD 1, 3(4) ;  load 'accum' via FP
69 : LDA 7, 114(0) ;  skip ELSE
70 : LDC 1, 1(0) ;  literal -> R1
71 : ADD 3, 1, 0 ;  stash right in R3
72 : LD 1, 2(4) ;  load 'n' via FP
73 : ADD 2, 1, 0 ;  Save arg0 in R2
74 : LDC 1, 2(0) ;  literal -> R1
75 : ADD 3, 1, 0 ;  Save arg1 in R3
76 : LDA 6, 84(0) ;  Prepare RA label
77 : LDA 2, 4(5) ;  callee base size -> R2
78 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
79 : ST 6, 0(5) ;  store RA in callee frame
80 : ST 2, 1(5) ;  TEMP overwrite: fix below
81 : ST 2, 1(5) ;  store arg0 from R2
82 : ST 3, 2(5) ;  store arg1 from R3
83 : LDA 7, 117(0) ;  Call MOD
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
94 : JEQ 1, 105(0) ;  if false -> ELSE
95 : LDA 6, 101(0) ;  Prepare RA label
96 : LDA 2, 5(5) ;  callee base size -> R2
97 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
98 : ST 6, 0(5) ;  store RA in callee frame
99 : ST 2, 1(5) ;  TEMP overwrite: fix below
100 : LDA 7, 56(0) ;  Call multWithAccum
101 : LD 1, 4(5) ;  load callee result
102 : LDC 2, 5(0) ;  size to pop
103 : SUB 5, 5, 2 ;  pop callee frame
104 : LDA 7, 114(0) ;  skip ELSE
105 : LDA 6, 111(0) ;  Prepare RA label
106 : LDA 2, 5(5) ;  callee base size -> R2
107 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
108 : ST 6, 0(5) ;  store RA in callee frame
109 : ST 2, 1(5) ;  TEMP overwrite: fix below
110 : LDA 7, 56(0) ;  Call multWithAccum
111 : LD 1, 4(5) ;  load callee result
112 : LDC 2, 5(0) ;  size to pop
113 : SUB 5, 5, 2 ;  pop callee frame
114 : ST 1, 4(4) ;  store result in return slot (via FP)
115 : LD 6, 0(4) ;  load RA (via FP)
116 : LDA 7, 0(6) ;  return to caller
117 : ADD 4, 5, 0 ;  FP = SP at 117 entry
118 : LD 1, 2(4) ;  load 'n' via FP
119 : ADD 3, 1, 0 ;  stash right in R3
120 : LD 1, 2(4) ;  load 'n' via FP
121 : ADD 3, 1, 0 ;  stash right in R3
122 : LD 1, 1(4) ;  load 'm' via FP
123 : ADD 2, 1, 0 ;  stash left in R2
124 : ADD 1, 3, 0 ;  restore right to R1
125 : DIV 1, 2, 1 ;  left / right
126 : ADD 2, 1, 0 ;  stash left in R2
127 : ADD 1, 3, 0 ;  restore right to R1
128 : MUL 1, 2, 1 ;  left * right
129 : ADD 3, 1, 0 ;  stash right in R3
130 : LD 1, 1(4) ;  load 'm' via FP
131 : ADD 2, 1, 0 ;  stash left in R2
132 : ADD 1, 3, 0 ;  restore right to R1
133 : SUB 1, 2, 1 ;  left - right
134 : ST 1, 3(4) ;  store result in return slot (via FP)
135 : LD 6, 0(4) ;  load RA (via FP)
136 : LDA 7, 0(6) ;  return to caller
