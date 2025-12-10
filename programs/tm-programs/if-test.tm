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
13 : LDC 1, 10(0) ;  Load integer literal into R1
14 : ADD 3, 1, 0 ;  Stash right in R3
15 : LD 1, 1(4) ;  Load parameter 'n' via FP
16 : ADD 2, 1, 0 ;  Move left to R2
17 : ADD 1, 3, 0 ;  Restore right to R1
18 : SUB 1, 2, 1 ;  left - right
19 : JLT 1, 2(7) ;  if < 0 then true
20 : LDC 1, 0(0) ;  false
21 : LDA 7, 1(7) ;  skip setting true
22 : LDC 1, 1(0) ;  true
23 : JEQ 1, 51(0) ;  If false, jump to ELSE
24 : LDC 1, 5(0) ;  Load integer literal into R1
25 : ADD 3, 1, 0 ;  Stash right in R3
26 : LD 1, 1(4) ;  Load parameter 'n' via FP
27 : ADD 2, 1, 0 ;  Move left to R2
28 : ADD 1, 3, 0 ;  Restore right to R1
29 : SUB 1, 2, 1 ;  left - right
30 : JLT 1, 2(7) ;  if < 0 then true
31 : LDC 1, 0(0) ;  false
32 : LDA 7, 1(7) ;  skip setting true
33 : LDC 1, 1(0) ;  true
34 : JEQ 1, 43(0) ;  If false, jump to ELSE
35 : LDC 1, 2(0) ;  Load integer literal into R1
36 : ADD 3, 1, 0 ;  Stash right in R3
37 : LD 1, 1(4) ;  Load parameter 'n' via FP
38 : ADD 2, 1, 0 ;  Move left to R2
39 : ADD 1, 3, 0 ;  Restore right to R1
40 : MUL 1, 2, 1 ;  R1 = left * right
41 : ST 1, 2(4) ;  Store into current frame's return slot (via FP)
42 : LDA 7, 50(0) ;  Skip ELSE
43 : LDC 1, 1(0) ;  Load integer literal into R1
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(4) ;  Load parameter 'n' via FP
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : ST 1, 2(4) ;  Store into current frame's return slot (via FP)
50 : LDA 7, 53(0) ;  Skip ELSE
51 : LDC 1, 1(0) ;  Load integer literal into R1
52 : ST 1, 2(4) ;  Store into current frame's return slot (via FP)
53 : LD 1, 2(4) ;  Load main return value (via FP)
54 : LD 6, 0(4) ;  Load return address (via FP)
55 : LDA 7, 0(6) ;  Return from main
