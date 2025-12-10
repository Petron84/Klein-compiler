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
15 : LD 1, 1(4) ;  load 'a' via FP
16 : ADD 2, 1, 0 ;  Save arg0 in R2
17 : LD 1, 2(4) ;  load 'b' via FP
18 : ADD 3, 1, 0 ;  Save arg1 in R3
19 : LDA 6, 27(0) ;  Prepare RA label
20 : LDA 2, 4(5) ;  callee base size -> R2
21 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
22 : ST 6, 0(5) ;  store RA in callee frame
23 : ST 2, 1(5) ;  TEMP overwrite: fix below
24 : ST 2, 1(5) ;  store arg0 from R2
25 : ST 3, 2(5) ;  store arg1 from R3
26 : LDA 7, 34(0) ;  Call gcd
27 : LD 1, 3(5) ;  load callee result
28 : LDC 2, 4(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ST 1, 3(4) ;  store result into caller frame (via FP)
31 : LD 1, 3(4) ;  R1 = return value (via FP)
32 : LD 6, 0(4) ;  RA from FP
33 : LDA 7, 0(6) ;  return
34 : ADD 4, 5, 0 ;  FP = SP at 34 entry
35 : LDC 1, 0(0) ;  literal -> R1
36 : ADD 3, 1, 0 ;  stash right in R3
37 : LD 1, 2(4) ;  load 'b' via FP
38 : ADD 2, 1, 0 ;  stash left in R2
39 : ADD 1, 3, 0 ;  restore right to R1
40 : SUB 1, 2, 1 ;  left - right
41 : JEQ 1, 2(7) ;  if 0 then true
42 : LDC 1, 0(0) ;  false
43 : LDA 7, 1(7) ;  skip
44 : LDC 1, 1(0) ;  true
45 : JEQ 1, 48(0) ;  if false -> ELSE
46 : LD 1, 1(4) ;  load 'a' via FP
47 : LDA 7, 77(0) ;  skip ELSE
48 : LD 1, 2(4) ;  load 'b' via FP
49 : ADD 2, 1, 0 ;  Save arg0 in R2
50 : LD 1, 1(4) ;  load 'a' via FP
51 : ADD 2, 1, 0 ;  Save arg0 in R2
52 : LD 1, 2(4) ;  load 'b' via FP
53 : ADD 3, 1, 0 ;  Save arg1 in R3
54 : LDA 6, 62(0) ;  Prepare RA label
55 : LDA 2, 4(5) ;  callee base size -> R2
56 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
57 : ST 6, 0(5) ;  store RA in callee frame
58 : ST 2, 1(5) ;  TEMP overwrite: fix below
59 : ST 2, 1(5) ;  store arg0 from R2
60 : ST 3, 2(5) ;  store arg1 from R3
61 : LDA 7, 80(0) ;  Call remainder
62 : LD 1, 3(5) ;  load callee result
63 : LDC 2, 4(0) ;  size to pop
64 : SUB 5, 5, 2 ;  pop callee frame
65 : ADD 3, 1, 0 ;  Save arg1 in R3
66 : LDA 6, 74(0) ;  Prepare RA label
67 : LDA 2, 4(5) ;  callee base size -> R2
68 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
69 : ST 6, 0(5) ;  store RA in callee frame
70 : ST 2, 1(5) ;  TEMP overwrite: fix below
71 : ST 2, 1(5) ;  store arg0 from R2
72 : ST 3, 2(5) ;  store arg1 from R3
73 : LDA 7, 34(0) ;  Call gcd
74 : LD 1, 3(5) ;  load callee result
75 : LDC 2, 4(0) ;  size to pop
76 : SUB 5, 5, 2 ;  pop callee frame
77 : ST 1, 3(4) ;  store result in return slot (via FP)
78 : LD 6, 0(4) ;  load RA (via FP)
79 : LDA 7, 0(6) ;  return to caller
80 : ADD 4, 5, 0 ;  FP = SP at 80 entry
81 : LD 1, 2(4) ;  load 'b' via FP
82 : ADD 3, 1, 0 ;  stash right in R3
83 : LD 1, 1(4) ;  load 'a' via FP
84 : ADD 2, 1, 0 ;  stash left in R2
85 : ADD 1, 3, 0 ;  restore right to R1
86 : SUB 1, 2, 1 ;  left - right
87 : JLT 1, 2(7) ;  if < 0 then true
88 : LDC 1, 0(0) ;  false
89 : LDA 7, 1(7) ;  skip
90 : LDC 1, 1(0) ;  true
91 : JEQ 1, 94(0) ;  if false -> ELSE
92 : LD 1, 1(4) ;  load 'a' via FP
93 : LDA 7, 114(0) ;  skip ELSE
94 : LD 1, 2(4) ;  load 'b' via FP
95 : ADD 3, 1, 0 ;  stash right in R3
96 : LD 1, 1(4) ;  load 'a' via FP
97 : ADD 2, 1, 0 ;  stash left in R2
98 : ADD 1, 3, 0 ;  restore right to R1
99 : SUB 1, 2, 1 ;  left - right
100 : ADD 2, 1, 0 ;  Save arg0 in R2
101 : LD 1, 2(4) ;  load 'b' via FP
102 : ADD 3, 1, 0 ;  Save arg1 in R3
103 : LDA 6, 111(0) ;  Prepare RA label
104 : LDA 2, 4(5) ;  callee base size -> R2
105 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
106 : ST 6, 0(5) ;  store RA in callee frame
107 : ST 2, 1(5) ;  TEMP overwrite: fix below
108 : ST 2, 1(5) ;  store arg0 from R2
109 : ST 3, 2(5) ;  store arg1 from R3
110 : LDA 7, 80(0) ;  Call remainder
111 : LD 1, 3(5) ;  load callee result
112 : LDC 2, 4(0) ;  size to pop
113 : SUB 5, 5, 2 ;  pop callee frame
114 : ST 1, 3(4) ;  store result in return slot (via FP)
115 : LD 6, 0(4) ;  load RA (via FP)
116 : LDA 7, 0(6) ;  return to caller
