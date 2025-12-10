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
14 : LD 1, 1(5) ;  Load parameter 'a'
15 : LDA 4, 4(5) ;  [JIT] callee frame base
16 : ST 1, 1(4) ;  Store arg 0 in callee frame
17 : LD 1, 2(5) ;  Load parameter 'b'
18 : LDA 4, 4(5) ;  [JIT] callee frame base
19 : ST 1, 2(4) ;  Store arg 1 in callee frame
20 : LDA 4, 4(5) ;  [JIT] callee frame base
21 : LDA 6, 25(0) ;  Return address
22 : ST 6, 0(4) ;  Store RA in callee frame
23 : ADD 5, 4, 0 ;  Push callee frame
24 : LDA 7, 32(0) ;  Call add_till_n
25 : LD 1, 3(5) ;  Load callee result
26 : LDC 2, 4(0) ;  Caller frame size
27 : SUB 5, 5, 2 ;  Pop callee frame
28 : ST 1, 3(5) ;  Store result into caller frame
29 : LD 1, 3(5) ;  Load main return value
30 : LD 6, 0(5) ;  Load return address
31 : LDA 7, 0(6) ;  Return from main
32 : LD 1, 1(5) ;  Load parameter 'a'
33 : LDA 4, 3(5) ;  [JIT] callee frame base
34 : LDA 6, 38(0) ;  Return address
35 : ST 6, 0(4) ;  Store RA in callee frame
36 : ADD 5, 4, 0 ;  Push callee frame
37 : LDA 7, 11(0) ;  Call print
38 : LDC 2, 3(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : LD 1, 2(5) ;  Load parameter 'b'
41 : ADD 3, 1, 0 ;  Stash right in R3
42 : LD 1, 1(5) ;  Load parameter 'a'
43 : ADD 2, 1, 0 ;  Move left to R2
44 : ADD 1, 3, 0 ;  Restore right to R1
45 : SUB 1, 2, 1 ;  left - right
46 : JEQ 1, 2(7) ;  if 0 then true
47 : LDC 1, 0(0) ;  false
48 : LDA 7, 1(7) ;  skip setting true
49 : LDC 1, 1(0) ;  true
50 : JEQ 1, 53(0) ;  If false, jump to ELSE
51 : LD 1, 1(5) ;  Load parameter 'a'
52 : LDA 7, 72(0) ;  Skip ELSE
53 : LDC 1, 1(0) ;  Load integer literal into R1
54 : ADD 3, 1, 0 ;  Stash right in R3
55 : LD 1, 1(5) ;  Load parameter 'a'
56 : ADD 2, 1, 0 ;  Move left to R2
57 : ADD 1, 3, 0 ;  Restore right to R1
58 : ADD 1, 2, 1 ;  R1 = left + right
59 : LDA 4, 4(5) ;  [JIT] callee frame base
60 : ST 1, 1(4) ;  Store arg 0 in callee frame
61 : LD 1, 2(5) ;  Load parameter 'b'
62 : LDA 4, 4(5) ;  [JIT] callee frame base
63 : ST 1, 2(4) ;  Store arg 1 in callee frame
64 : LDA 4, 4(5) ;  [JIT] callee frame base
65 : LDA 6, 69(0) ;  Return address
66 : ST 6, 0(4) ;  Store RA in callee frame
67 : ADD 5, 4, 0 ;  Push callee frame
68 : LDA 7, 32(0) ;  Call add_till_n
69 : LD 1, 3(5) ;  Load callee result
70 : LDC 2, 4(0) ;  Caller frame size
71 : SUB 5, 5, 2 ;  Pop callee frame
72 : ST 1, 3(5) ;  Store function result
73 : LD 6, 0(5) ;  Load return address
74 : LDA 7, 0(6) ;  Return to caller
