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
13 : LDC 1, 1(0) ;  Load integer literal into R1
14 : ADD 3, 1, 0 ;  Stash right in R3
15 : LD 1, 1(4) ;  Load parameter 'elementWanted' via FP
16 : ADD 2, 1, 0 ;  Move left to R2
17 : ADD 1, 3, 0 ;  Restore right to R1
18 : SUB 1, 2, 1 ;  left - right
19 : JLT 1, 2(7) ;  if < 0 then true
20 : LDC 1, 0(0) ;  false
21 : LDA 7, 1(7) ;  skip setting true
22 : LDC 1, 1(0) ;  true
23 : JEQ 1, 27(0) ;  If false, jump to ELSE
24 : LDC 1, 0(0) ;  Load integer literal into R1
25 : ST 1, 2(4) ;  Store into current frame's return slot (via FP)
26 : LDA 7, 44(0) ;  Skip ELSE
27 : LDA 4, 6(5) ;  Compute callee frame base (temp)
28 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
29 : LDC 1, 1(0) ;  Load integer literal into R1
30 : ST 1, 1(5) ;  Store argument 0 in callee frame
31 : LD 1, 1(4) ;  Load parameter 'elementWanted' via FP
32 : ST 1, 2(5) ;  Store argument 1 in callee frame
33 : LDC 1, 0(0) ;  Load integer literal into R1
34 : ST 1, 3(5) ;  Store argument 2 in callee frame
35 : LDC 1, 1(0) ;  Load integer literal into R1
36 : ST 1, 4(5) ;  Store argument 3 in callee frame
37 : LDA 6, 40(0) ;  Return address
38 : ST 6, 0(5) ;  Store RA in callee frame
39 : LDA 7, 47(0) ;  Call addNext
40 : LD 1, 5(5) ;  Load callee result
41 : LDC 2, 6(0) ;  Caller frame size
42 : SUB 5, 5, 2 ;  Pop callee frame
43 : ST 1, 2(4) ;  Store result into caller frame (via FP)
44 : LD 1, 2(4) ;  Load main return value (via FP)
45 : LD 6, 0(4) ;  Load return address (via FP)
46 : LDA 7, 0(6) ;  Return from main
47 : ADD 4, 5, 0 ;  Set FP at 47 entry
48 : LD 1, 1(4) ;  Load parameter 'currentElement' via FP
49 : ADD 3, 1, 0 ;  Stash right in R3
50 : LD 1, 2(4) ;  Load parameter 'elementWanted' via FP
51 : ADD 2, 1, 0 ;  Move left to R2
52 : ADD 1, 3, 0 ;  Restore right to R1
53 : SUB 1, 2, 1 ;  left - right
54 : JEQ 1, 2(7) ;  if 0 then true
55 : LDC 1, 0(0) ;  false
56 : LDA 7, 1(7) ;  skip setting true
57 : LDC 1, 1(0) ;  true
58 : JEQ 1, 61(0) ;  If false, jump to ELSE
59 : LD 1, 4(4) ;  Load parameter 'currentSum' via FP
60 : LDA 7, 87(0) ;  Skip ELSE
61 : LDA 4, 6(5) ;  Compute callee frame base (temp)
62 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
63 : LDC 1, 1(0) ;  Load integer literal into R1
64 : ADD 3, 1, 0 ;  Stash right in R3
65 : LD 1, 1(4) ;  Load parameter 'currentElement' via FP
66 : ADD 2, 1, 0 ;  Move left to R2
67 : ADD 1, 3, 0 ;  Restore right to R1
68 : ADD 1, 2, 1 ;  R1 = left + right
69 : ST 1, 1(5) ;  Store argument 0 in callee frame
70 : LD 1, 2(4) ;  Load parameter 'elementWanted' via FP
71 : ST 1, 2(5) ;  Store argument 1 in callee frame
72 : LD 1, 4(4) ;  Load parameter 'currentSum' via FP
73 : ST 1, 3(5) ;  Store argument 2 in callee frame
74 : LD 1, 4(4) ;  Load parameter 'currentSum' via FP
75 : ADD 3, 1, 0 ;  Stash right in R3
76 : LD 1, 3(4) ;  Load parameter 'previousSum' via FP
77 : ADD 2, 1, 0 ;  Move left to R2
78 : ADD 1, 3, 0 ;  Restore right to R1
79 : ADD 1, 2, 1 ;  R1 = left + right
80 : ST 1, 4(5) ;  Store argument 3 in callee frame
81 : LDA 6, 84(0) ;  Return address
82 : ST 6, 0(5) ;  Store RA in callee frame
83 : LDA 7, 47(0) ;  Call addNext
84 : LD 1, 5(5) ;  Load callee result
85 : LDC 2, 6(0) ;  Caller frame size
86 : SUB 5, 5, 2 ;  Pop callee frame
87 : ST 1, 5(4) ;  Store function result (via FP)
88 : LD 6, 0(4) ;  Load return address (via FP)
89 : LDA 7, 0(6) ;  Return to caller
