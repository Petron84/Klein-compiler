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
12 : LDC 1, 10(0) ;  Load integer literal into R1
13 : ADD 3, 1, 0 ;  Stash right in R3
14 : LD 1, 1(5) ;  Load parameter 'n'
15 : ADD 2, 1, 0 ;  Move left to R2
16 : ADD 1, 3, 0 ;  Restore right to R1
17 : SUB 1, 2, 1 ;  left - right
18 : JLT 1, 2(7) ;  if < 0 then true
19 : LDC 1, 0(0) ;  false
20 : LDA 7, 1(7) ;  skip setting true
21 : LDC 1, 1(0) ;  true
22 : JEQ 1, 50(0) ;  If false, jump to ELSE
23 : LDC 1, 5(0) ;  Load integer literal into R1
24 : ADD 3, 1, 0 ;  Stash right in R3
25 : LD 1, 1(5) ;  Load parameter 'n'
26 : ADD 2, 1, 0 ;  Move left to R2
27 : ADD 1, 3, 0 ;  Restore right to R1
28 : SUB 1, 2, 1 ;  left - right
29 : JLT 1, 2(7) ;  if < 0 then true
30 : LDC 1, 0(0) ;  false
31 : LDA 7, 1(7) ;  skip setting true
32 : LDC 1, 1(0) ;  true
33 : JEQ 1, 42(0) ;  If false, jump to ELSE
34 : LDC 1, 2(0) ;  Load integer literal into R1
35 : ADD 3, 1, 0 ;  Stash right in R3
36 : LD 1, 1(5) ;  Load parameter 'n'
37 : ADD 2, 1, 0 ;  Move left to R2
38 : ADD 1, 3, 0 ;  Restore right to R1
39 : MUL 1, 2, 1 ;  R1 = left * right
40 : ST 1, 2(5) ;  Store into current frame's return slot
41 : LDA 7, 49(0) ;  Skip ELSE
42 : LDC 1, 1(0) ;  Load integer literal into R1
43 : ADD 3, 1, 0 ;  Stash right in R3
44 : LD 1, 1(5) ;  Load parameter 'n'
45 : ADD 2, 1, 0 ;  Move left to R2
46 : ADD 1, 3, 0 ;  Restore right to R1
47 : SUB 1, 2, 1 ;  R1 = left - right
48 : ST 1, 2(5) ;  Store into current frame's return slot
49 : LDA 7, 52(0) ;  Skip ELSE
50 : LDC 1, 1(0) ;  Load integer literal into R1
51 : ST 1, 2(5) ;  Store into current frame's return slot
52 : LD 1, 2(5) ;  Load main return value
53 : LD 6, 0(5) ;  Load return address
54 : LDA 7, 0(6) ;  Return from main
