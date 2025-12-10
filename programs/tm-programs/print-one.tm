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
11 : LDA 6, 16(0) ;  Prepare RA label
12 : LDA 2, 3(5) ;  callee base size -> R2
13 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
14 : ST 6, 0(5) ;  store RA in callee frame
15 : LDA 7, 7(0) ;  Call print
16 : LD 1, 2(5) ;  load callee result
17 : LDC 2, 3(0) ;  size to pop
18 : SUB 5, 5, 2 ;  pop callee frame
19 : ST 1, 1(4) ;  store result into caller frame (via FP)
20 : LDC 1, 1(0) ;  literal -> R1
21 : ST 1, 1(4) ;  store into return slot (via FP)
22 : LD 1, 1(4) ;  R1 = return value (via FP)
23 : LD 6, 0(4) ;  RA from FP
24 : LDA 7, 0(6) ;  return
