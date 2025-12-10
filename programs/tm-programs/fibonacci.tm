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
13 : LDC 1, 1(0) ;  literal -> R1
14 : ADD 3, 1, 0 ;  stash right in R3
15 : LD 1, 1(4) ;  load 'elementWanted' via FP
16 : ADD 2, 1, 0 ;  stash left in R2
17 : ADD 1, 3, 0 ;  restore right to R1
18 : SUB 1, 2, 1 ;  left - right
19 : JLT 1, 2(7) ;  if < 0 then true
20 : LDC 1, 0(0) ;  false
21 : LDA 7, 1(7) ;  skip
22 : LDC 1, 1(0) ;  true
23 : JEQ 1, 27(0) ;  if false -> ELSE
24 : LDC 1, 0(0) ;  literal -> R1
25 : ST 1, 2(4) ;  store into return slot (via FP)
26 : LDA 7, 37(0) ;  skip ELSE
27 : LDA 6, 33(0) ;  Prepare RA label
28 : LDA 2, 6(5) ;  callee base size -> R2
29 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
30 : ST 6, 0(5) ;  store RA in callee frame
31 : ST 2, 1(5) ;  TEMP overwrite: fix below
32 : LDA 7, 40(0) ;  Call addNext
33 : LD 1, 5(5) ;  load callee result
34 : LDC 2, 6(0) ;  size to pop
35 : SUB 5, 5, 2 ;  pop callee frame
36 : ST 1, 2(4) ;  store result into caller frame (via FP)
37 : LD 1, 2(4) ;  R1 = return value (via FP)
38 : LD 6, 0(4) ;  RA from FP
39 : LDA 7, 0(6) ;  return
40 : ADD 4, 5, 0 ;  FP = SP at 40 entry
41 : LD 1, 1(4) ;  load 'currentElement' via FP
42 : ADD 3, 1, 0 ;  stash right in R3
43 : LD 1, 2(4) ;  load 'elementWanted' via FP
44 : ADD 2, 1, 0 ;  stash left in R2
45 : ADD 1, 3, 0 ;  restore right to R1
46 : SUB 1, 2, 1 ;  left - right
47 : JEQ 1, 2(7) ;  if 0 then true
48 : LDC 1, 0(0) ;  false
49 : LDA 7, 1(7) ;  skip
50 : LDC 1, 1(0) ;  true
51 : JEQ 1, 54(0) ;  if false -> ELSE
52 : LD 1, 4(4) ;  load 'currentSum' via FP
53 : LDA 7, 63(0) ;  skip ELSE
54 : LDA 6, 60(0) ;  Prepare RA label
55 : LDA 2, 6(5) ;  callee base size -> R2
56 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
57 : ST 6, 0(5) ;  store RA in callee frame
58 : ST 2, 1(5) ;  TEMP overwrite: fix below
59 : LDA 7, 40(0) ;  Call addNext
60 : LD 1, 5(5) ;  load callee result
61 : LDC 2, 6(0) ;  size to pop
62 : SUB 5, 5, 2 ;  pop callee frame
63 : ST 1, 5(4) ;  store result in return slot (via FP)
64 : LD 6, 0(4) ;  load RA (via FP)
65 : LDA 7, 0(6) ;  return to caller
