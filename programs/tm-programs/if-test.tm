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
18 : SUB 1, 2, 1 ;  left - right
19 : JLT 1, 2(7) ;  if < 0 then true
20 : LDC 1, 0(0) ;  false
21 : LDA 7, 1(7) ;  skip
22 : LDC 1, 1(0) ;  true
23 : JEQ 1, 51(0) ;  if false -> ELSE
24 : LDC 1, 5(0) ;  literal -> R1
25 : ADD 3, 1, 0 ;  stash right in R3
26 : LD 1, 1(4) ;  load 'n' via FP
27 : ADD 2, 1, 0 ;  stash left in R2
28 : ADD 1, 3, 0 ;  restore right to R1
29 : SUB 1, 2, 1 ;  left - right
30 : JLT 1, 2(7) ;  if < 0 then true
31 : LDC 1, 0(0) ;  false
32 : LDA 7, 1(7) ;  skip
33 : LDC 1, 1(0) ;  true
34 : JEQ 1, 43(0) ;  if false -> ELSE
35 : LDC 1, 2(0) ;  literal -> R1
36 : ADD 3, 1, 0 ;  stash right in R3
37 : LD 1, 1(4) ;  load 'n' via FP
38 : ADD 2, 1, 0 ;  stash left in R2
39 : ADD 1, 3, 0 ;  restore right to R1
40 : MUL 1, 2, 1 ;  left * right
41 : ST 1, 2(4) ;  store into return slot (via FP)
42 : LDA 7, 50(0) ;  skip ELSE
43 : LDC 1, 1(0) ;  literal -> R1
44 : ADD 3, 1, 0 ;  stash right in R3
45 : LD 1, 1(4) ;  load 'n' via FP
46 : ADD 2, 1, 0 ;  stash left in R2
47 : ADD 1, 3, 0 ;  restore right to R1
48 : SUB 1, 2, 1 ;  left - right
49 : ST 1, 2(4) ;  store into return slot (via FP)
50 : LDA 7, 53(0) ;  skip ELSE
51 : LDC 1, 1(0) ;  literal -> R1
52 : ST 1, 2(4) ;  store into return slot (via FP)
53 : LD 1, 2(4) ;  R1 = return value (via FP)
54 : LD 6, 0(4) ;  RA from FP
55 : LDA 7, 0(6) ;  return
