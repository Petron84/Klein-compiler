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
15 : LD 1, 1(4) ;  load 'm' via FP
16 : ADD 2, 1, 0 ;  Save arg0 in R2
17 : LD 1, 2(4) ;  load 'n' via FP
18 : ADD 3, 1, 0 ;  Save arg1 in R3
19 : LDA 6, 27(0) ;  Prepare RA label
20 : LDA 2, 3(5) ;  callee base size -> R2
21 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
22 : ST 6, 0(5) ;  store RA in callee frame
23 : ST 2, 1(5) ;  TEMP overwrite: fix below
24 : ST 2, 1(5) ;  store arg0 from R2
25 : ST 3, 2(5) ;  store arg1 from R3
26 : LDA 7, 11(0) ;  Call print
27 : LD 1, 2(5) ;  load callee result
28 : LDC 2, 3(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ST 1, 3(4) ;  store result into caller frame (via FP)
31 : LD 1, 1(4) ;  load 'm' via FP
32 : ADD 2, 1, 0 ;  Save arg0 in R2
33 : LD 1, 2(4) ;  load 'n' via FP
34 : ADD 3, 1, 0 ;  Save arg1 in R3
35 : LDA 6, 43(0) ;  Prepare RA label
36 : LDA 2, 4(5) ;  callee base size -> R2
37 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
38 : ST 6, 0(5) ;  store RA in callee frame
39 : ST 2, 1(5) ;  TEMP overwrite: fix below
40 : ST 2, 1(5) ;  store arg0 from R2
41 : ST 3, 2(5) ;  store arg1 from R3
42 : LDA 7, 50(0) ;  Call mod
43 : LD 1, 3(5) ;  load callee result
44 : LDC 2, 4(0) ;  size to pop
45 : SUB 5, 5, 2 ;  pop callee frame
46 : ST 1, 3(4) ;  store result into caller frame (via FP)
47 : LD 1, 3(4) ;  R1 = return value (via FP)
48 : LD 6, 0(4) ;  RA from FP
49 : LDA 7, 0(6) ;  return
50 : ADD 4, 5, 0 ;  FP = SP at 50 entry
51 : LD 1, 2(4) ;  load 'n' via FP
52 : ADD 3, 1, 0 ;  stash right in R3
53 : LD 1, 1(4) ;  load 'm' via FP
54 : ADD 2, 1, 0 ;  stash left in R2
55 : ADD 1, 3, 0 ;  restore right to R1
56 : SUB 1, 2, 1 ;  left - right
57 : JLT 1, 2(7) ;  if < 0 then true
58 : LDC 1, 0(0) ;  false
59 : LDA 7, 1(7) ;  skip
60 : LDC 1, 1(0) ;  true
61 : JEQ 1, 64(0) ;  if false -> ELSE
62 : LD 1, 1(4) ;  load 'm' via FP
63 : LDA 7, 84(0) ;  skip ELSE
64 : LD 1, 2(4) ;  load 'n' via FP
65 : ADD 3, 1, 0 ;  stash right in R3
66 : LD 1, 1(4) ;  load 'm' via FP
67 : ADD 2, 1, 0 ;  stash left in R2
68 : ADD 1, 3, 0 ;  restore right to R1
69 : SUB 1, 2, 1 ;  left - right
70 : ADD 2, 1, 0 ;  Save arg0 in R2
71 : LD 1, 2(4) ;  load 'n' via FP
72 : ADD 3, 1, 0 ;  Save arg1 in R3
73 : LDA 6, 81(0) ;  Prepare RA label
74 : LDA 2, 4(5) ;  callee base size -> R2
75 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
76 : ST 6, 0(5) ;  store RA in callee frame
77 : ST 2, 1(5) ;  TEMP overwrite: fix below
78 : ST 2, 1(5) ;  store arg0 from R2
79 : ST 3, 2(5) ;  store arg1 from R3
80 : LDA 7, 50(0) ;  Call mod
81 : LD 1, 3(5) ;  load callee result
82 : LDC 2, 4(0) ;  size to pop
83 : SUB 5, 5, 2 ;  pop callee frame
84 : ST 1, 3(4) ;  store result in return slot (via FP)
85 : LD 6, 0(4) ;  load RA (via FP)
86 : LDA 7, 0(6) ;  return to caller
