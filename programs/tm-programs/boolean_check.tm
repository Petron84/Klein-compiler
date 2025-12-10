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
15 : LD 1, 2(4) ;  load 'b' via FP
16 : ADD 3, 1, 0 ;  stash right in R3
17 : LD 1, 1(4) ;  load 'a' via FP
18 : ADD 2, 1, 0 ;  stash left in R2
19 : ADD 1, 3, 0 ;  restore right to R1
20 : MUL 1, 2, 1 ;  left AND right
21 : ST 1, 3(4) ;  store into return slot (via FP)
22 : LD 1, 3(4) ;  R1 = return value (via FP)
23 : LD 6, 0(4) ;  RA from FP
24 : LDA 7, 0(6) ;  return
