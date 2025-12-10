0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main frame
8 : LDA 7, 14(0) ;  Branch to main
9 : OUT 1, 0, 0 ;  Print main's result
10 : HALT 0, 0, 0 ;  Terminate program
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(5) ;  Load return address
13 : LDA 7, 0(6) ;  Return
14 : LD 1, 2(5) ;  Load parameter 'b'
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 1(5) ;  Load parameter 'a'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : MUL 1, 2, 1 ;  R1 = left AND right
20 : ST 1, 3(5) ;  Store into current frame's return slot
21 : LD 1, 3(5) ;  Load main return value
22 : LD 6, 0(5) ;  Load return address
23 : LDA 7, 0(6) ;  Return from main
