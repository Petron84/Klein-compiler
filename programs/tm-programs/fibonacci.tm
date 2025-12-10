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
12 : LDC 1, 1(0) ;  Load integer literal into R1
13 : ADD 3, 1, 0 ;  Stash right in R3
14 : LD 1, 1(5) ;  Load parameter 'elementWanted'
15 : ADD 2, 1, 0 ;  Move left to R2
16 : ADD 1, 3, 0 ;  Restore right to R1
17 : SUB 1, 2, 1 ;  left - right
18 : JLT 1, 2(7) ;  if < 0 then true
19 : LDC 1, 0(0) ;  false
20 : LDA 7, 1(7) ;  skip setting true
21 : LDC 1, 1(0) ;  true
22 : JEQ 1, 26(0) ;  If false, jump to ELSE
23 : LDC 1, 0(0) ;  Load integer literal into R1
24 : ST 1, 2(5) ;  Store into current frame's return slot
25 : LDA 7, 43(0) ;  Skip ELSE
26 : LDA 4, 6(5) ;  Compute callee frame base
27 : ADD 5, 4, 0 ;  Push callee frame
28 : LDC 1, 1(0) ;  Load integer literal into R1
29 : ST 1, 1(5) ;  Store argument 0 in callee frame
30 : LD 1, 1(5) ;  Load parameter 'elementWanted'
31 : ST 1, 2(5) ;  Store argument 1 in callee frame
32 : LDC 1, 0(0) ;  Load integer literal into R1
33 : ST 1, 3(5) ;  Store argument 2 in callee frame
34 : LDC 1, 1(0) ;  Load integer literal into R1
35 : ST 1, 4(5) ;  Store argument 3 in callee frame
36 : LDA 6, 39(0) ;  Return address
37 : ST 6, 0(5) ;  Store RA in callee frame
38 : LDA 7, 46(0) ;  Call addNext
39 : LD 1, 5(5) ;  Load callee result
40 : LDC 2, 6(0) ;  Caller frame size
41 : SUB 5, 5, 2 ;  Pop callee frame
42 : ST 1, 2(5) ;  Store result into caller frame
43 : LD 1, 2(5) ;  Load main return value
44 : LD 6, 0(5) ;  Load return address
45 : LDA 7, 0(6) ;  Return from main
46 : LD 1, 1(5) ;  Load parameter 'currentElement'
47 : ADD 3, 1, 0 ;  Stash right in R3
48 : LD 1, 2(5) ;  Load parameter 'elementWanted'
49 : ADD 2, 1, 0 ;  Move left to R2
50 : ADD 1, 3, 0 ;  Restore right to R1
51 : SUB 1, 2, 1 ;  left - right
52 : JEQ 1, 2(7) ;  if 0 then true
53 : LDC 1, 0(0) ;  false
54 : LDA 7, 1(7) ;  skip setting true
55 : LDC 1, 1(0) ;  true
56 : JEQ 1, 59(0) ;  If false, jump to ELSE
57 : LD 1, 4(5) ;  Load parameter 'currentSum'
58 : LDA 7, 85(0) ;  Skip ELSE
59 : LDA 4, 6(5) ;  Compute callee frame base
60 : ADD 5, 4, 0 ;  Push callee frame
61 : LDC 1, 1(0) ;  Load integer literal into R1
62 : ADD 3, 1, 0 ;  Stash right in R3
63 : LD 1, 1(5) ;  Load parameter 'currentElement'
64 : ADD 2, 1, 0 ;  Move left to R2
65 : ADD 1, 3, 0 ;  Restore right to R1
66 : ADD 1, 2, 1 ;  R1 = left + right
67 : ST 1, 1(5) ;  Store argument 0 in callee frame
68 : LD 1, 2(5) ;  Load parameter 'elementWanted'
69 : ST 1, 2(5) ;  Store argument 1 in callee frame
70 : LD 1, 4(5) ;  Load parameter 'currentSum'
71 : ST 1, 3(5) ;  Store argument 2 in callee frame
72 : LD 1, 4(5) ;  Load parameter 'currentSum'
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 3(5) ;  Load parameter 'previousSum'
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : ADD 1, 2, 1 ;  R1 = left + right
78 : ST 1, 4(5) ;  Store argument 3 in callee frame
79 : LDA 6, 82(0) ;  Return address
80 : ST 6, 0(5) ;  Store RA in callee frame
81 : LDA 7, 46(0) ;  Call addNext
82 : LD 1, 5(5) ;  Load callee result
83 : LDC 2, 6(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop callee frame
85 : ST 1, 5(5) ;  Store function result
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
