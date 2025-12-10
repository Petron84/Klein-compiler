0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
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
12 : ADD 4, 5, 0 ;  Set FP at 12 entry
13 : LD 1, 1(4) ;  Load parameter 'n' via FP
14 : ADD 3, 1, 0 ;  Stash right in R3
15 : LD 1, 1(4) ;  Load parameter 'n' via FP
16 : ADD 2, 1, 0 ;  Move left to R2
17 : ADD 1, 3, 0 ;  Restore right to R1
18 : MUL 1, 2, 1 ;  R1 = left * right
19 : ST 1, 2(4) ;  Store into current frame's return slot (via FP)
20 : LD 1, 2(4) ;  Load main return value (via FP)
21 : LD 6, 0(4) ;  Load return address (via FP)
22 : LDA 7, 0(6) ;  Return from main
