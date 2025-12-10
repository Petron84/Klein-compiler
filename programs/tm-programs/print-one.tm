0 : LDC 5, 1(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LDA 6, 2(7) ;  Calculate return address
3 : ST 6, 0(5) ;  Store return address in main frame
4 : LDA 7, 10(0) ;  Branch to main
5 : OUT 1, 0, 0 ;  Print main's result
6 : HALT 0, 0, 0 ;  Terminate program
7 : OUT 1, 0, 0 ;  print(R1)
8 : LD 6, 0(5) ;  Load return address
9 : LDA 7, 0(6) ;  Return
10 : LDA 4, 3(5) ;  Compute callee frame base
11 : ADD 5, 4, 0 ;  Push callee frame
12 : LDC 1, 1(0) ;  Load integer literal into R1
13 : ST 1, 1(5) ;  Store print arg in callee frame
14 : LDA 6, 17(0) ;  Return address
15 : ST 6, 0(5) ;  Store RA in callee frame
16 : LDA 7, 7(0) ;  Call print
17 : LDC 2, 3(0) ;  Caller frame size
18 : SUB 5, 5, 2 ;  Pop callee frame
19 : LDC 1, 1(0) ;  Load integer literal into R1
20 : ST 1, 1(5) ;  Store into current frame's return slot
21 : LD 1, 1(5) ;  Load main return value
22 : LD 6, 0(5) ;  Load return address
23 : LDA 7, 0(6) ;  Return from main
