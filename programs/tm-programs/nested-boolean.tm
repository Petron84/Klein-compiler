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
14 : LDC 2, 1(0) ;  load 1
15 : SUB 1, 2, 1 ;  1 - R1
16 : LDC 2, 1(0) ;  load 1
17 : SUB 1, 2, 1 ;  1 - R1
18 : LDC 2, 1(0) ;  load 1
19 : SUB 1, 2, 1 ;  1 - R1
20 : ST 1, 2(4) ;  store into return slot (via FP)
21 : LD 1, 2(4) ;  R1 = return value (via FP)
22 : LD 6, 0(4) ;  RA from FP
23 : LDA 7, 0(6) ;  return
