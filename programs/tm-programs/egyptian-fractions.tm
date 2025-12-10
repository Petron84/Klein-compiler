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
15 : LDC 1, 1(0) ;  literal -> R1
16 : ADD 3, 1, 0 ;  stash right in R3
17 : LD 1, 1(4) ;  load 'm' via FP
18 : ADD 2, 1, 0 ;  stash left in R2
19 : ADD 1, 3, 0 ;  restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 29(0) ;  if false -> ELSE
26 : LD 1, 2(4) ;  load 'n' via FP
27 : ST 1, 3(4) ;  store into return slot (via FP)
28 : LDA 7, 72(0) ;  skip ELSE
29 : LDC 1, 0(0) ;  literal -> R1
30 : ADD 3, 1, 0 ;  stash right in R3
31 : LD 1, 2(4) ;  load 'n' via FP
32 : ADD 2, 1, 0 ;  Save arg0 in R2
33 : LD 1, 1(4) ;  load 'm' via FP
34 : ADD 3, 1, 0 ;  Save arg1 in R3
35 : LDA 6, 43(0) ;  Prepare RA label
36 : LDA 2, 4(5) ;  callee base size -> R2
37 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
38 : ST 6, 0(5) ;  store RA in callee frame
39 : ST 2, 1(5) ;  TEMP overwrite: fix below
40 : ST 2, 1(5) ;  store arg0 from R2
41 : ST 3, 2(5) ;  store arg1 from R3
42 : LDA 7, 75(0) ;  Call MOD
43 : LD 1, 3(5) ;  load callee result
44 : LDC 2, 4(0) ;  size to pop
45 : SUB 5, 5, 2 ;  pop callee frame
46 : ADD 2, 1, 0 ;  stash left in R2
47 : ADD 1, 3, 0 ;  restore right to R1
48 : SUB 1, 2, 1 ;  left - right
49 : JEQ 1, 2(7) ;  if 0 then true
50 : LDC 1, 0(0) ;  false
51 : LDA 7, 1(7) ;  skip
52 : LDC 1, 1(0) ;  true
53 : JEQ 1, 62(0) ;  if false -> ELSE
54 : LD 1, 1(4) ;  load 'm' via FP
55 : ADD 3, 1, 0 ;  stash right in R3
56 : LD 1, 2(4) ;  load 'n' via FP
57 : ADD 2, 1, 0 ;  stash left in R2
58 : ADD 1, 3, 0 ;  restore right to R1
59 : DIV 1, 2, 1 ;  left / right
60 : ST 1, 3(4) ;  store into return slot (via FP)
61 : LDA 7, 72(0) ;  skip ELSE
62 : LDA 6, 68(0) ;  Prepare RA label
63 : LDA 2, 5(5) ;  callee base size -> R2
64 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
65 : ST 6, 0(5) ;  store RA in callee frame
66 : ST 2, 1(5) ;  TEMP overwrite: fix below
67 : LDA 7, 95(0) ;  Call print_and_continue
68 : LD 1, 4(5) ;  load callee result
69 : LDC 2, 5(0) ;  size to pop
70 : SUB 5, 5, 2 ;  pop callee frame
71 : ST 1, 3(4) ;  store result into caller frame (via FP)
72 : LD 1, 3(4) ;  R1 = return value (via FP)
73 : LD 6, 0(4) ;  RA from FP
74 : LDA 7, 0(6) ;  return
75 : ADD 4, 5, 0 ;  FP = SP at 75 entry
76 : LD 1, 2(4) ;  load 'n' via FP
77 : ADD 3, 1, 0 ;  stash right in R3
78 : LD 1, 2(4) ;  load 'n' via FP
79 : ADD 3, 1, 0 ;  stash right in R3
80 : LD 1, 1(4) ;  load 'm' via FP
81 : ADD 2, 1, 0 ;  stash left in R2
82 : ADD 1, 3, 0 ;  restore right to R1
83 : DIV 1, 2, 1 ;  left / right
84 : ADD 2, 1, 0 ;  stash left in R2
85 : ADD 1, 3, 0 ;  restore right to R1
86 : MUL 1, 2, 1 ;  left * right
87 : ADD 3, 1, 0 ;  stash right in R3
88 : LD 1, 1(4) ;  load 'm' via FP
89 : ADD 2, 1, 0 ;  stash left in R2
90 : ADD 1, 3, 0 ;  restore right to R1
91 : SUB 1, 2, 1 ;  left - right
92 : ST 1, 3(4) ;  store result in return slot (via FP)
93 : LD 6, 0(4) ;  load RA (via FP)
94 : LDA 7, 0(6) ;  return to caller
95 : ADD 4, 5, 0 ;  FP = SP at 95 entry
96 : LDA 6, 101(0) ;  Prepare RA label
97 : LDA 2, 3(5) ;  callee base size -> R2
98 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
99 : ST 6, 0(5) ;  store RA in callee frame
100 : LDA 7, 11(0) ;  Call print
101 : LD 1, 2(5) ;  load callee result
102 : LDC 2, 3(0) ;  size to pop
103 : SUB 5, 5, 2 ;  pop callee frame
104 : LD 1, 2(4) ;  load 'n' via FP
105 : ADD 3, 1, 0 ;  stash right in R3
106 : LD 1, 1(4) ;  load 'm' via FP
107 : ADD 3, 1, 0 ;  stash right in R3
108 : LD 1, 3(4) ;  load 'unit' via FP
109 : ADD 2, 1, 0 ;  stash left in R2
110 : ADD 1, 3, 0 ;  restore right to R1
111 : MUL 1, 2, 1 ;  left * right
112 : ADD 2, 1, 0 ;  stash left in R2
113 : ADD 1, 3, 0 ;  restore right to R1
114 : SUB 1, 2, 1 ;  left - right
115 : ADD 2, 1, 0 ;  Save arg0 in R2
116 : LD 1, 3(4) ;  load 'unit' via FP
117 : ADD 3, 1, 0 ;  stash right in R3
118 : LD 1, 2(4) ;  load 'n' via FP
119 : ADD 2, 1, 0 ;  stash left in R2
120 : ADD 1, 3, 0 ;  restore right to R1
121 : MUL 1, 2, 1 ;  left * right
122 : ADD 3, 1, 0 ;  Save arg1 in R3
123 : LDA 6, 131(0) ;  Prepare RA label
124 : LDA 2, 4(5) ;  callee base size -> R2
125 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
126 : ST 6, 0(5) ;  store RA in callee frame
127 : ST 2, 1(5) ;  TEMP overwrite: fix below
128 : ST 2, 1(5) ;  store arg0 from R2
129 : ST 3, 2(5) ;  store arg1 from R3
130 : LDA 7, 14(0) ;  Call main
131 : LD 1, 3(5) ;  load callee result
132 : LDC 2, 4(0) ;  size to pop
133 : SUB 5, 5, 2 ;  pop callee frame
134 : ST 1, 4(4) ;  store result in return slot (via FP)
135 : LD 6, 0(4) ;  load RA (via FP)
136 : LDA 7, 0(6) ;  return to caller
