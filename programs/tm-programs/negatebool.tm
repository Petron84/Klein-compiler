0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main frame
6 : LDA 7, 12(0) ;  Branch to main
7 : OUT 1, 0, 0 ;  Print main's result
8 : HALT 0, 0, 0 ;  Terminate program
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(5) ;  Load return address
11 : LDA 7, 0(6) ;  Return
12 : LD 1, 1(5) ;  Load parameter 'n'
13 : LDC 2, 1(0) ;  Load 1 into R2
14 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
15 : ST 1, 2(5) ;  Store into current frame's return slot
16 : LD 1, 2(5) ;  Load main return value
17 : LD 6, 0(5) ;  Load return address
18 : LDA 7, 0(6) ;  Return from main
