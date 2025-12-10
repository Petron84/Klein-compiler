0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST 6, 0(5) ;  Store return address in main frame
4 : LDA 7, 10(0) ;  Branch to main
5 : OUT 1, 0, 0 ;  Print main's result
6 : HALT 0, 0, 0 ;  Terminate program
7 : OUT 1, 0, 0 ;  print(R1)
8 : LD 6, 0(5) ;  Load return address
9 : LDA 7, 0(6) ;  Return
10 : ADD 4, 5, 0 ;  Set FP at 10 entry
11 : LDC 1, 1(0) ;  Load boolean literal into R1
12 : ST 1, 1(4) ;  Store into current frame's return slot (via FP)
13 : LD 1, 1(4) ;  Load main return value (via FP)
14 : LD 6, 0(4) ;  Load return address (via FP)
15 : LDA 7, 0(6) ;  Return from main
