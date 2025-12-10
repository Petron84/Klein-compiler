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
11 : LDC 1, 1(0) ;  bool -> R1
12 : ST 1, 1(4) ;  store into return slot (via FP)
13 : LD 1, 1(4) ;  R1 = return value (via FP)
14 : LD 6, 0(4) ;  RA from FP
15 : LDA 7, 0(6) ;  return
