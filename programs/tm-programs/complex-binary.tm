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
10 : LDC 1, 2(0) ;  Load integer literal into R1
11 : LDA 4, 4(5) ;  [JIT] callee frame base
12 : ST 1, 1(4) ;  Store arg 0 in callee frame
13 : LDC 1, 2(0) ;  Load integer literal into R1
14 : LDA 4, 4(5) ;  [JIT] callee frame base
15 : ST 1, 2(4) ;  Store arg 1 in callee frame
16 : LDA 4, 4(5) ;  [JIT] callee frame base
17 : LDA 6, 21(0) ;  Return address
18 : ST 6, 0(4) ;  Store RA in callee frame
19 : ADD 5, 4, 0 ;  Push callee frame
20 : LDA 7, 66(0) ;  Call MOD
21 : LD 1, 3(5) ;  Load callee result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : ADD 2, 1, 0 ;  Move left to R2
25 : LDC 1, 3(0) ;  Load integer literal into R1
26 : MUL 1, 2, 1 ;  R1 = left * right
27 : ADD 2, 1, 0 ;  Move left to R2
28 : LDC 1, 4(0) ;  Load integer literal into R1
29 : SUB 1, 2, 1 ;  left - right
30 : JLT 1, 2(7) ;  if < 0 then true
31 : LDC 1, 0(0) ;  false
32 : LDA 7, 1(7) ;  skip setting true
33 : LDC 1, 1(0) ;  true
34 : ADD 2, 1, 0 ;  Move left to R2
35 : LDC 1, 5(0) ;  Load integer literal into R1
36 : LDA 4, 4(5) ;  [JIT] callee frame base
37 : ST 1, 1(4) ;  Store arg 0 in callee frame
38 : LDC 1, 3(0) ;  Load integer literal into R1
39 : LDA 4, 4(5) ;  [JIT] callee frame base
40 : ST 1, 2(4) ;  Store arg 1 in callee frame
41 : LDA 4, 4(5) ;  [JIT] callee frame base
42 : LDA 6, 46(0) ;  Return address
43 : ST 6, 0(4) ;  Store RA in callee frame
44 : ADD 5, 4, 0 ;  Push callee frame
45 : LDA 7, 66(0) ;  Call MOD
46 : LD 1, 3(5) ;  Load callee result
47 : LDC 2, 4(0) ;  Caller frame size
48 : SUB 5, 5, 2 ;  Pop callee frame
49 : ADD 2, 1, 0 ;  Move left to R2
50 : LDC 1, 2(0) ;  Load integer literal into R1
51 : MUL 1, 2, 1 ;  R1 = left * right
52 : ADD 2, 1, 0 ;  Move left to R2
53 : LDC 1, 5(0) ;  Load integer literal into R1
54 : SUB 1, 2, 1 ;  left - right
55 : JLT 1, 2(7) ;  if < 0 then true
56 : LDC 1, 0(0) ;  false
57 : LDA 7, 1(7) ;  skip setting true
58 : LDC 1, 1(0) ;  true
59 : LDC 2, 1(0) ;  Load 1 into R2
60 : SUB 1, 2, 1 ;  R1 = 1 - R1 (logical NOT)
61 : ADD 1, 2, 1 ;  R1 = left OR right
62 : ST 1, 1(5) ;  Store into current frame's return slot
63 : LD 1, 1(5) ;  Load main return value
64 : LD 6, 0(5) ;  Load return address
65 : LDA 7, 0(6) ;  Return from main
66 : LD 1, 2(5) ;  Load parameter 'n'
67 : ADD 3, 1, 0 ;  Stash right in R3
68 : LD 1, 1(5) ;  Load parameter 'm'
69 : ADD 2, 1, 0 ;  Move left to R2
70 : ADD 1, 3, 0 ;  Restore right to R1
71 : DIV 1, 2, 1 ;  R1 = left / right
72 : ADD 2, 1, 0 ;  Move left to R2
73 : LD 1, 2(5) ;  Load parameter 'n'
74 : MUL 1, 2, 1 ;  R1 = left * right
75 : ADD 3, 1, 0 ;  Stash right in R3
76 : LD 1, 1(5) ;  Load parameter 'm'
77 : ADD 2, 1, 0 ;  Move left to R2
78 : ADD 1, 3, 0 ;  Restore right to R1
79 : SUB 1, 2, 1 ;  R1 = left - right
80 : ST 1, 3(5) ;  Store function result
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
