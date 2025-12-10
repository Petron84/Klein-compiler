0 : LDC 5, 4(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 -> R2
5 : ST 2, 2(5) ;  Store arg 2 at main frame
6 : LD 2, 3(0) ;  Load CLI arg 3 -> R2
7 : ST 2, 3(5) ;  Store arg 3 at main frame
8 : LDA 6, 2(7) ;  RA = next after branch
9 : ST 6, 0(5) ;  Store RA in main frame
10 : LDA 7, 16(0) ;  Jump to main
11 : OUT 1, 0, 0 ;  Print R1
12 : HALT 0, 0, 0 ;  Halt
13 : OUT 1, 0, 0 ;  print(R1)
14 : LD 6, 0(4) ;  Load RA via FP
15 : LDA 7, 0(6) ;  Return
16 : ADD 4, 5, 0 ;  FP = SP at 16 entry
17 : LDC 1, 0(0) ;  literal -> R1
18 : ADD 3, 1, 0 ;  stash right in R3
19 : LD 1, 3(4) ;  load 'n' via FP
20 : ADD 2, 1, 0 ;  stash left in R2
21 : ADD 1, 3, 0 ;  restore right to R1
22 : SUB 1, 2, 1 ;  left - right
23 : JEQ 1, 2(7) ;  if 0 then true
24 : LDC 1, 0(0) ;  false
25 : LDA 7, 1(7) ;  skip
26 : LDC 1, 1(0) ;  true
27 : JEQ 1, 31(0) ;  if false -> ELSE
28 : LD 1, 1(4) ;  load 'a' via FP
29 : ST 1, 4(4) ;  store into return slot (via FP)
30 : LDA 7, 41(0) ;  skip ELSE
31 : LDA 6, 37(0) ;  Prepare RA label
32 : LDA 2, 5(5) ;  callee base size -> R2
33 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
34 : ST 6, 0(5) ;  store RA in callee frame
35 : ST 2, 1(5) ;  TEMP overwrite: fix below
36 : LDA 7, 64(0) ;  Call printAndDivide
37 : LD 1, 4(5) ;  load callee result
38 : LDC 2, 5(0) ;  size to pop
39 : SUB 5, 5, 2 ;  pop callee frame
40 : ST 1, 4(4) ;  store result into caller frame (via FP)
41 : LD 1, 4(4) ;  R1 = return value (via FP)
42 : LD 6, 0(4) ;  RA from FP
43 : LDA 7, 0(6) ;  return
44 : ADD 4, 5, 0 ;  FP = SP at 44 entry
45 : LD 1, 2(4) ;  load 'n' via FP
46 : ADD 3, 1, 0 ;  stash right in R3
47 : LD 1, 2(4) ;  load 'n' via FP
48 : ADD 3, 1, 0 ;  stash right in R3
49 : LD 1, 1(4) ;  load 'm' via FP
50 : ADD 2, 1, 0 ;  stash left in R2
51 : ADD 1, 3, 0 ;  restore right to R1
52 : DIV 1, 2, 1 ;  left / right
53 : ADD 2, 1, 0 ;  stash left in R2
54 : ADD 1, 3, 0 ;  restore right to R1
55 : MUL 1, 2, 1 ;  left * right
56 : ADD 3, 1, 0 ;  stash right in R3
57 : LD 1, 1(4) ;  load 'm' via FP
58 : ADD 2, 1, 0 ;  stash left in R2
59 : ADD 1, 3, 0 ;  restore right to R1
60 : SUB 1, 2, 1 ;  left - right
61 : ST 1, 3(4) ;  store result in return slot (via FP)
62 : LD 6, 0(4) ;  load RA (via FP)
63 : LDA 7, 0(6) ;  return to caller
64 : ADD 4, 5, 0 ;  FP = SP at 64 entry
65 : LD 1, 1(4) ;  load 'a' via FP
66 : ADD 3, 1, 0 ;  stash right in R3
67 : LDC 1, 10(0) ;  literal -> R1
68 : ADD 2, 1, 0 ;  stash left in R2
69 : ADD 1, 3, 0 ;  restore right to R1
70 : MUL 1, 2, 1 ;  left * right
71 : ADD 2, 1, 0 ;  Save arg0 in R2
72 : LD 1, 2(4) ;  load 'b' via FP
73 : ADD 3, 1, 0 ;  Save arg1 in R3
74 : LDA 6, 82(0) ;  Prepare RA label
75 : LDA 2, 3(5) ;  callee base size -> R2
76 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
77 : ST 6, 0(5) ;  store RA in callee frame
78 : ST 2, 1(5) ;  TEMP overwrite: fix below
79 : ST 2, 1(5) ;  store arg0 from R2
80 : ST 3, 2(5) ;  store arg1 from R3
81 : LDA 7, 13(0) ;  Call print
82 : LD 1, 2(5) ;  load callee result
83 : LDC 2, 3(0) ;  size to pop
84 : SUB 5, 5, 2 ;  pop callee frame
85 : LDA 6, 91(0) ;  Prepare RA label
86 : LDA 2, 5(5) ;  callee base size -> R2
87 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
88 : ST 6, 0(5) ;  store RA in callee frame
89 : ST 2, 1(5) ;  TEMP overwrite: fix below
90 : LDA 7, 16(0) ;  Call main
91 : LD 1, 4(5) ;  load callee result
92 : LDC 2, 5(0) ;  size to pop
93 : SUB 5, 5, 2 ;  pop callee frame
94 : ST 1, 4(4) ;  store result in return slot (via FP)
95 : LD 6, 0(4) ;  load RA (via FP)
96 : LDA 7, 0(6) ;  return to caller
