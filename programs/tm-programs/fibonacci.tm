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
25 : LDA 7, 47(0) ;  Skip ELSE
26 : LDC 1, 1(0) ;  Load integer literal into R1
27 : LDA 4, 6(5) ;  [JIT] callee frame base
28 : ST 1, 1(4) ;  Store arg 0 in callee frame
29 : LD 1, 1(5) ;  Load parameter 'elementWanted'
30 : LDA 4, 6(5) ;  [JIT] callee frame base
31 : ST 1, 2(4) ;  Store arg 1 in callee frame
32 : LDC 1, 0(0) ;  Load integer literal into R1
33 : LDA 4, 6(5) ;  [JIT] callee frame base
34 : ST 1, 3(4) ;  Store arg 2 in callee frame
35 : LDC 1, 1(0) ;  Load integer literal into R1
36 : LDA 4, 6(5) ;  [JIT] callee frame base
37 : ST 1, 4(4) ;  Store arg 3 in callee frame
38 : LDA 4, 6(5) ;  [JIT] callee frame base
39 : LDA 6, 43(0) ;  Return address
40 : ST 6, 0(4) ;  Store RA in callee frame
41 : ADD 5, 4, 0 ;  Push callee frame
42 : LDA 7, 50(0) ;  Call addNext
43 : LD 1, 5(5) ;  Load callee result
44 : LDC 2, 6(0) ;  Caller frame size
45 : SUB 5, 5, 2 ;  Pop callee frame
46 : ST 1, 2(5) ;  Store result into caller frame
47 : LD 1, 2(5) ;  Load main return value
48 : LD 6, 0(5) ;  Load return address
49 : LDA 7, 0(6) ;  Return from main
50 : LD 1, 1(5) ;  Load parameter 'currentElement'
51 : ADD 3, 1, 0 ;  Stash right in R3
52 : LD 1, 2(5) ;  Load parameter 'elementWanted'
53 : ADD 2, 1, 0 ;  Move left to R2
54 : ADD 1, 3, 0 ;  Restore right to R1
55 : SUB 1, 2, 1 ;  left - right
56 : JEQ 1, 2(7) ;  if 0 then true
57 : LDC 1, 0(0) ;  false
58 : LDA 7, 1(7) ;  skip setting true
59 : LDC 1, 1(0) ;  true
60 : JEQ 1, 63(0) ;  If false, jump to ELSE
61 : LD 1, 4(5) ;  Load parameter 'currentSum'
62 : LDA 7, 93(0) ;  Skip ELSE
63 : LDC 1, 1(0) ;  Load integer literal into R1
64 : ADD 3, 1, 0 ;  Stash right in R3
65 : LD 1, 1(5) ;  Load parameter 'currentElement'
66 : ADD 2, 1, 0 ;  Move left to R2
67 : ADD 1, 3, 0 ;  Restore right to R1
68 : ADD 1, 2, 1 ;  R1 = left + right
69 : LDA 4, 6(5) ;  [JIT] callee frame base
70 : ST 1, 1(4) ;  Store arg 0 in callee frame
71 : LD 1, 2(5) ;  Load parameter 'elementWanted'
72 : LDA 4, 6(5) ;  [JIT] callee frame base
73 : ST 1, 2(4) ;  Store arg 1 in callee frame
74 : LD 1, 4(5) ;  Load parameter 'currentSum'
75 : LDA 4, 6(5) ;  [JIT] callee frame base
76 : ST 1, 3(4) ;  Store arg 2 in callee frame
77 : LD 1, 4(5) ;  Load parameter 'currentSum'
78 : ADD 3, 1, 0 ;  Stash right in R3
79 : LD 1, 3(5) ;  Load parameter 'previousSum'
80 : ADD 2, 1, 0 ;  Move left to R2
81 : ADD 1, 3, 0 ;  Restore right to R1
82 : ADD 1, 2, 1 ;  R1 = left + right
83 : LDA 4, 6(5) ;  [JIT] callee frame base
84 : ST 1, 4(4) ;  Store arg 3 in callee frame
85 : LDA 4, 6(5) ;  [JIT] callee frame base
86 : LDA 6, 90(0) ;  Return address
87 : ST 6, 0(4) ;  Store RA in callee frame
88 : ADD 5, 4, 0 ;  Push callee frame
89 : LDA 7, 50(0) ;  Call addNext
90 : LD 1, 5(5) ;  Load callee result
91 : LDC 2, 6(0) ;  Caller frame size
92 : SUB 5, 5, 2 ;  Pop callee frame
93 : ST 1, 5(5) ;  Store function result
94 : LD 6, 0(5) ;  Load return address
95 : LDA 7, 0(6) ;  Return to caller
