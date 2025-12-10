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
14 : LD 1, 2(5) ;  Load parameter 'n'
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 1(5) ;  Load parameter 'm'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : DIV 1, 2, 1 ;  R1 = left / right
20 : LDA 4, 3(5) ;  [JIT] callee frame base
21 : LDA 6, 25(0) ;  Return address
22 : ST 6, 0(4) ;  Store RA in callee frame
23 : ADD 5, 4, 0 ;  Push callee frame
24 : LDA 7, 11(0) ;  Call print
25 : LDC 2, 3(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop callee frame
27 : LD 1, 1(5) ;  Load parameter 'm'
28 : LDA 4, 4(5) ;  [JIT] callee frame base
29 : ST 1, 1(4) ;  Store arg 0 in callee frame
30 : LD 1, 2(5) ;  Load parameter 'n'
31 : LDA 4, 4(5) ;  [JIT] callee frame base
32 : ST 1, 2(4) ;  Store arg 1 in callee frame
33 : LDA 4, 4(5) ;  [JIT] callee frame base
34 : LDA 6, 38(0) ;  Return address
35 : ST 6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Push callee frame
37 : LDA 7, 45(0) ;  Call mod
38 : LD 1, 3(5) ;  Load callee result
39 : LDC 2, 4(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ST 1, 3(5) ;  Store result into caller frame
42 : LD 1, 3(5) ;  Load main return value
43 : LD 6, 0(5) ;  Load return address
44 : LDA 7, 0(6) ;  Return from main
45 : LD 1, 2(5) ;  Load parameter 'n'
46 : ADD 3, 1, 0 ;  Stash right in R3
47 : LD 1, 1(5) ;  Load parameter 'm'
48 : ADD 2, 1, 0 ;  Move left to R2
49 : ADD 1, 3, 0 ;  Restore right to R1
50 : SUB 1, 2, 1 ;  left - right
51 : JLT 1, 2(7) ;  if < 0 then true
52 : LDC 1, 0(0) ;  false
53 : LDA 7, 1(7) ;  skip setting true
54 : LDC 1, 1(0) ;  true
55 : JEQ 1, 58(0) ;  If false, jump to ELSE
56 : LD 1, 1(5) ;  Load parameter 'm'
57 : LDA 7, 77(0) ;  Skip ELSE
58 : LD 1, 2(5) ;  Load parameter 'n'
59 : ADD 3, 1, 0 ;  Stash right in R3
60 : LD 1, 1(5) ;  Load parameter 'm'
61 : ADD 2, 1, 0 ;  Move left to R2
62 : ADD 1, 3, 0 ;  Restore right to R1
63 : SUB 1, 2, 1 ;  R1 = left - right
64 : LDA 4, 4(5) ;  [JIT] callee frame base
65 : ST 1, 1(4) ;  Store arg 0 in callee frame
66 : LD 1, 2(5) ;  Load parameter 'n'
67 : LDA 4, 4(5) ;  [JIT] callee frame base
68 : ST 1, 2(4) ;  Store arg 1 in callee frame
69 : LDA 4, 4(5) ;  [JIT] callee frame base
70 : LDA 6, 74(0) ;  Return address
71 : ST 6, 0(4) ;  Store RA in callee frame
72 : ADD 5, 4, 0 ;  Push callee frame
73 : LDA 7, 45(0) ;  Call mod
74 : LD 1, 3(5) ;  Load callee result
75 : LDC 2, 4(0) ;  Caller frame size
76 : SUB 5, 5, 2 ;  Pop callee frame
77 : ST 1, 3(5) ;  Store function result
78 : LD 6, 0(5) ;  Load return address
79 : LDA 7, 0(6) ;  Return to caller
