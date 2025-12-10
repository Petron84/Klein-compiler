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
26 : LDA 7, 34(0) ;  Call add_till_n
27 : LD 1, 3(5) ;  load callee result
28 : LDC 2, 4(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ST 1, 3(4) ;  store result into caller frame (via FP)
31 : LD 1, 3(4) ;  R1 = return value (via FP)
32 : LD 6, 0(4) ;  RA from FP
33 : LDA 7, 0(6) ;  return
34 : ADD 4, 5, 0 ;  FP = SP at 34 entry
35 : LDA 6, 40(0) ;  Prepare RA label
36 : LDA 2, 3(5) ;  callee base size -> R2
37 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
38 : ST 6, 0(5) ;  store RA in callee frame
39 : LDA 7, 11(0) ;  Call print
40 : LD 1, 2(5) ;  load callee result
41 : LDC 2, 3(0) ;  size to pop
42 : SUB 5, 5, 2 ;  pop callee frame
43 : LD 1, 2(4) ;  load 'b' via FP
44 : ADD 3, 1, 0 ;  stash right in R3
45 : LD 1, 1(4) ;  load 'a' via FP
46 : ADD 2, 1, 0 ;  stash left in R2
47 : ADD 1, 3, 0 ;  restore right to R1
48 : SUB 1, 2, 1 ;  left - right
49 : JEQ 1, 2(7) ;  if 0 then true
50 : LDC 1, 0(0) ;  false
51 : LDA 7, 1(7) ;  skip
52 : LDC 1, 1(0) ;  true
53 : JEQ 1, 56(0) ;  if false -> ELSE
54 : LD 1, 1(4) ;  load 'a' via FP
55 : LDA 7, 76(0) ;  skip ELSE
56 : LDC 1, 1(0) ;  literal -> R1
57 : ADD 3, 1, 0 ;  stash right in R3
58 : LD 1, 1(4) ;  load 'a' via FP
59 : ADD 2, 1, 0 ;  stash left in R2
60 : ADD 1, 3, 0 ;  restore right to R1
61 : ADD 1, 2, 1 ;  left + right
62 : ADD 2, 1, 0 ;  Save arg0 in R2
63 : LD 1, 2(4) ;  load 'b' via FP
64 : ADD 3, 1, 0 ;  Save arg1 in R3
65 : LDA 6, 73(0) ;  Prepare RA label
66 : LDA 2, 4(5) ;  callee base size -> R2
67 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
68 : ST 6, 0(5) ;  store RA in callee frame
69 : ST 2, 1(5) ;  TEMP overwrite: fix below
70 : ST 2, 1(5) ;  store arg0 from R2
71 : ST 3, 2(5) ;  store arg1 from R3
72 : LDA 7, 34(0) ;  Call add_till_n
73 : LD 1, 3(5) ;  load callee result
74 : LDC 2, 4(0) ;  size to pop
75 : SUB 5, 5, 2 ;  pop callee frame
76 : ST 1, 3(4) ;  store result in return slot (via FP)
77 : LD 6, 0(4) ;  load RA (via FP)
78 : LDA 7, 0(6) ;  return to caller
