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
11 : LDA 4, 4(5) ;  Compute callee frame base (temp)
12 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
13 : LDC 1, 2(0) ;  Load integer literal into R1
14 : ST 1, 1(5) ;  Store argument 0 in callee frame
15 : LDC 1, 2(0) ;  Load integer literal into R1
16 : ST 1, 2(5) ;  Store argument 1 in callee frame
17 : LDA 6, 20(0) ;  Return address
18 : ST 6, 0(5) ;  Store RA in callee frame
19 : LDA 7, 63(0) ;  Call MOD
20 : LD 1, 3(5) ;  Load callee result
21 : LDC 2, 4(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : ADD 2, 1, 0 ;  Move left to R2
24 : LDC 1, 3(0) ;  Load integer literal into R1
25 : MUL 1, 2, 1 ;  R1 = left * right
26 : ADD 2, 1, 0 ;  Move left to R2
27 : LDC 1, 4(0) ;  Load integer literal into R1
28 : SUB 1, 2, 1 ;  left - right
29 : JLT 1, 2(7) ;  if < 0 then true
30 : LDC 1, 0(0) ;  false
31 : LDA 7, 1(7) ;  skip setting true
32 : LDC 1, 1(0) ;  true
33 : ADD 2, 1, 0 ;  Move left to R2
34 : LDA 4, 4(5) ;  Compute callee frame base (temp)
35 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
36 : LDC 1, 5(0) ;  Load integer literal into R1
37 : ST 1, 1(5) ;  Store argument 0 in callee frame
38 : LDC 1, 3(0) ;  Load integer literal into R1
39 : ST 1, 2(5) ;  Store argument 1 in callee frame
40 : LDA 6, 43(0) ;  Return address
41 : ST 6, 0(5) ;  Store RA in callee frame
42 : LDA 7, 63(0) ;  Call MOD
43 : LD 1, 3(5) ;  Load callee result
44 : LDC 2, 4(0) ;  Caller frame size
45 : SUB 5, 5, 2 ;  Pop callee frame
46 : ADD 2, 1, 0 ;  Move left to R2
47 : LDC 1, 2(0) ;  Load integer literal into R1
48 : MUL 1, 2, 1 ;  R1 = left * right
49 : ADD 2, 1, 0 ;  Move left to R2
50 : LDC 1, 5(0) ;  Load integer literal into R1
51 : SUB 1, 2, 1 ;  left - right
52 : JLT 1, 2(7) ;  if < 0 then true
53 : LDC 1, 0(0) ;  false
54 : LDA 7, 1(7) ;  skip setting true
55 : LDC 1, 1(0) ;  true
56 : LDC 2, 1(0) ;  Load 1 into R2
57 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
58 : ADD 1, 2, 1 ;  R1 = left OR right
59 : ST 1, 1(4) ;  Store into current frame's return slot (via FP)
60 : LD 1, 1(4) ;  Load main return value (via FP)
61 : LD 6, 0(4) ;  Load return address (via FP)
62 : LDA 7, 0(6) ;  Return from main
63 : ADD 4, 5, 0 ;  Set FP at 63 entry
64 : LD 1, 2(4) ;  Load parameter 'n' via FP
65 : ADD 3, 1, 0 ;  Stash right in R3
66 : LD 1, 1(4) ;  Load parameter 'm' via FP
67 : ADD 2, 1, 0 ;  Move left to R2
68 : ADD 1, 3, 0 ;  Restore right to R1
69 : DIV 1, 2, 1 ;  R1 = left / right
70 : ADD 2, 1, 0 ;  Move left to R2
71 : LD 1, 2(4) ;  Load parameter 'n' via FP
72 : MUL 1, 2, 1 ;  R1 = left * right
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(4) ;  Load parameter 'm' via FP
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  R1 = left - right
78 : ST 1, 3(4) ;  Store function result (via FP)
79 : LD 6, 0(4) ;  Load return address (via FP)
80 : LDA 7, 0(6) ;  Return to caller
