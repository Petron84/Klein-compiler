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
13 : LD 1, 1(4) ;  load 'n' via FP
14 : ADD 3, 1, 0 ;  stash right in R3
15 : LD 1, 1(4) ;  load 'n' via FP
16 : ADD 2, 1, 0 ;  stash left in R2
17 : ADD 1, 3, 0 ;  restore right to R1
18 : MUL 1, 2, 1 ;  left * right
19 : ST 1, 2(4) ;  store into return slot (via FP)
20 : LD 1, 2(4) ;  R1 = return value (via FP)
21 : LD 6, 0(4) ;  RA from FP
22 : LDA 7, 0(6) ;  return
