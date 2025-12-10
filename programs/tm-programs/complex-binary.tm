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
10 : LDA 4, 4(5) ;  Compute callee frame base
11 : ADD 5, 4, 0 ;  Push callee frame
12 : LDC 1, 2(0) ;  Load integer literal into R1
13 : ST 1, 1(5) ;  Store argument 0 in callee frame
14 : LDC 1, 2(0) ;  Load integer literal into R1
15 : ST 1, 2(5) ;  Store argument 1 in callee frame
16 : LDA 6, 19(0) ;  Return address
17 : ST 6, 0(5) ;  Store RA in callee frame
18 : LDA 7, 62(0) ;  Call MOD
19 : LD 1, 3(5) ;  Load callee result
20 : LDC 2, 4(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop callee frame
22 : ADD 2, 1, 0 ;  Move left to R2
23 : LDC 1, 3(0) ;  Load integer literal into R1
24 : MUL 1, 2, 1 ;  R1 = left * right
25 : ADD 2, 1, 0 ;  Move left to R2
26 : LDC 1, 4(0) ;  Load integer literal into R1
27 : SUB 1, 2, 1 ;  left - right
28 : JLT 1, 2(7) ;  if < 0 then true
29 : LDC 1, 0(0) ;  false
30 : LDA 7, 1(7) ;  skip setting true
31 : LDC 1, 1(0) ;  true
32 : ADD 2, 1, 0 ;  Move left to R2
33 : LDA 4, 4(5) ;  Compute callee frame base
34 : ADD 5, 4, 0 ;  Push callee frame
35 : LDC 1, 5(0) ;  Load integer literal into R1
36 : ST 1, 1(5) ;  Store argument 0 in callee frame
37 : LDC 1, 3(0) ;  Load integer literal into R1
38 : ST 1, 2(5) ;  Store argument 1 in callee frame
39 : LDA 6, 42(0) ;  Return address
40 : ST 6, 0(5) ;  Store RA in callee frame
41 : LDA 7, 62(0) ;  Call MOD
42 : LD 1, 3(5) ;  Load callee result
43 : LDC 2, 4(0) ;  Caller frame size
44 : SUB 5, 5, 2 ;  Pop callee frame
45 : ADD 2, 1, 0 ;  Move left to R2
46 : LDC 1, 2(0) ;  Load integer literal into R1
47 : MUL 1, 2, 1 ;  R1 = left * right
48 : ADD 2, 1, 0 ;  Move left to R2
49 : LDC 1, 5(0) ;  Load integer literal into R1
50 : SUB 1, 2, 1 ;  left - right
51 : JLT 1, 2(7) ;  if < 0 then true
52 : LDC 1, 0(0) ;  false
53 : LDA 7, 1(7) ;  skip setting true
54 : LDC 1, 1(0) ;  true
55 : LDC 2, 1(0) ;  Load 1 into R2
56 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
57 : ADD 1, 2, 1 ;  R1 = left OR right
58 : ST 1, 1(5) ;  Store into current frame's return slot
59 : LD 1, 1(5) ;  Load main return value
60 : LD 6, 0(5) ;  Load return address
61 : LDA 7, 0(6) ;  Return from main
62 : LD 1, 2(5) ;  Load parameter 'n'
63 : ADD 3, 1, 0 ;  Stash right in R3
64 : LD 1, 1(5) ;  Load parameter 'm'
65 : ADD 2, 1, 0 ;  Move left to R2
66 : ADD 1, 3, 0 ;  Restore right to R1
67 : DIV 1, 2, 1 ;  R1 = left / right
68 : ADD 2, 1, 0 ;  Move left to R2
69 : LD 1, 2(5) ;  Load parameter 'n'
70 : MUL 1, 2, 1 ;  R1 = left * right
71 : ADD 3, 1, 0 ;  Stash right in R3
72 : LD 1, 1(5) ;  Load parameter 'm'
73 : ADD 2, 1, 0 ;  Move left to R2
74 : ADD 1, 3, 0 ;  Restore right to R1
75 : SUB 1, 2, 1 ;  R1 = left - right
76 : ST 1, 3(5) ;  Store function result
77 : LD 6, 0(5) ;  Load return address
78 : LDA 7, 0(6) ;  Return to caller
