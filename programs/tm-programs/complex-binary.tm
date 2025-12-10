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
11 : LDC 1, 5(0) ;  literal -> R1
12 : ADD 3, 1, 0 ;  stash right in R3
13 : LDC 1, 2(0) ;  literal -> R1
14 : ADD 3, 1, 0 ;  stash right in R3
15 : LDC 1, 5(0) ;  literal -> R1
16 : ADD 2, 1, 0 ;  Save arg0 in R2
17 : LDC 1, 3(0) ;  literal -> R1
18 : ADD 3, 1, 0 ;  Save arg1 in R3
19 : LDA 6, 27(0) ;  Prepare RA label
20 : LDA 2, 4(5) ;  callee base size -> R2
21 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
22 : ST 6, 0(5) ;  store RA in callee frame
23 : ST 2, 1(5) ;  TEMP overwrite: fix below
24 : ST 2, 1(5) ;  store arg0 from R2
25 : ST 3, 2(5) ;  store arg1 from R3
26 : LDA 7, 79(0) ;  Call MOD
27 : LD 1, 3(5) ;  load callee result
28 : LDC 2, 4(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ADD 2, 1, 0 ;  stash left in R2
31 : ADD 1, 3, 0 ;  restore right to R1
32 : MUL 1, 2, 1 ;  left * right
33 : ADD 2, 1, 0 ;  stash left in R2
34 : ADD 1, 3, 0 ;  restore right to R1
35 : SUB 1, 2, 1 ;  left - right
36 : JLT 1, 2(7) ;  if < 0 then true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip
39 : LDC 1, 1(0) ;  true
40 : LDC 2, 1(0) ;  load 1
41 : SUB 1, 2, 1 ;  1 - R1
42 : ADD 3, 1, 0 ;  stash right in R3
43 : LDC 1, 4(0) ;  literal -> R1
44 : ADD 3, 1, 0 ;  stash right in R3
45 : LDC 1, 3(0) ;  literal -> R1
46 : ADD 3, 1, 0 ;  stash right in R3
47 : LDC 1, 2(0) ;  literal -> R1
48 : ADD 2, 1, 0 ;  Save arg0 in R2
49 : LDC 1, 2(0) ;  literal -> R1
50 : ADD 3, 1, 0 ;  Save arg1 in R3
51 : LDA 6, 59(0) ;  Prepare RA label
52 : LDA 2, 4(5) ;  callee base size -> R2
53 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
54 : ST 6, 0(5) ;  store RA in callee frame
55 : ST 2, 1(5) ;  TEMP overwrite: fix below
56 : ST 2, 1(5) ;  store arg0 from R2
57 : ST 3, 2(5) ;  store arg1 from R3
58 : LDA 7, 79(0) ;  Call MOD
59 : LD 1, 3(5) ;  load callee result
60 : LDC 2, 4(0) ;  size to pop
61 : SUB 5, 5, 2 ;  pop callee frame
62 : ADD 2, 1, 0 ;  stash left in R2
63 : ADD 1, 3, 0 ;  restore right to R1
64 : MUL 1, 2, 1 ;  left * right
65 : ADD 2, 1, 0 ;  stash left in R2
66 : ADD 1, 3, 0 ;  restore right to R1
67 : SUB 1, 2, 1 ;  left - right
68 : JLT 1, 2(7) ;  if < 0 then true
69 : LDC 1, 0(0) ;  false
70 : LDA 7, 1(7) ;  skip
71 : LDC 1, 1(0) ;  true
72 : ADD 2, 1, 0 ;  stash left in R2
73 : ADD 1, 3, 0 ;  restore right to R1
74 : ADD 1, 2, 1 ;  left OR right
75 : ST 1, 1(4) ;  store into return slot (via FP)
76 : LD 1, 1(4) ;  R1 = return value (via FP)
77 : LD 6, 0(4) ;  RA from FP
78 : LDA 7, 0(6) ;  return
79 : ADD 4, 5, 0 ;  FP = SP at 79 entry
80 : LD 1, 2(4) ;  load 'n' via FP
81 : ADD 3, 1, 0 ;  stash right in R3
82 : LD 1, 2(4) ;  load 'n' via FP
83 : ADD 3, 1, 0 ;  stash right in R3
84 : LD 1, 1(4) ;  load 'm' via FP
85 : ADD 2, 1, 0 ;  stash left in R2
86 : ADD 1, 3, 0 ;  restore right to R1
87 : DIV 1, 2, 1 ;  left / right
88 : ADD 2, 1, 0 ;  stash left in R2
89 : ADD 1, 3, 0 ;  restore right to R1
90 : MUL 1, 2, 1 ;  left * right
91 : ADD 3, 1, 0 ;  stash right in R3
92 : LD 1, 1(4) ;  load 'm' via FP
93 : ADD 2, 1, 0 ;  stash left in R2
94 : ADD 1, 3, 0 ;  restore right to R1
95 : SUB 1, 2, 1 ;  left - right
96 : ST 1, 3(4) ;  store result in return slot (via FP)
97 : LD 6, 0(4) ;  load RA (via FP)
98 : LDA 7, 0(6) ;  return to caller
