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
14 : LDA 4, 3(5) ;  Compute callee frame base
15 : ADD 5, 4, 0 ;  Push callee frame
16 : LD 1, 2(5) ;  Load parameter 'n'
17 : ADD 3, 1, 0 ;  Stash right in R3
18 : LD 1, 1(5) ;  Load parameter 'm'
19 : ADD 2, 1, 0 ;  Move left to R2
20 : ADD 1, 3, 0 ;  Restore right to R1
21 : DIV 1, 2, 1 ;  R1 = left / right
22 : ST 1, 1(5) ;  Store print arg in callee frame
23 : LDA 6, 26(0) ;  Return address
24 : ST 6, 0(5) ;  Store RA in callee frame
25 : LDA 7, 11(0) ;  Call print
26 : LDC 2, 3(0) ;  Caller frame size
27 : SUB 5, 5, 2 ;  Pop callee frame
28 : LDA 4, 4(5) ;  Compute callee frame base
29 : ADD 5, 4, 0 ;  Push callee frame
30 : LD 1, 1(5) ;  Load parameter 'm'
31 : ST 1, 1(5) ;  Store argument 0 in callee frame
32 : LD 1, 2(5) ;  Load parameter 'n'
33 : ST 1, 2(5) ;  Store argument 1 in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 44(0) ;  Call mod
37 : LD 1, 3(5) ;  Load callee result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : ST 1, 3(5) ;  Store result into caller frame
41 : LD 1, 3(5) ;  Load main return value
42 : LD 6, 0(5) ;  Load return address
43 : LDA 7, 0(6) ;  Return from main
44 : LD 1, 2(5) ;  Load parameter 'n'
45 : ADD 3, 1, 0 ;  Stash right in R3
46 : LD 1, 1(5) ;  Load parameter 'm'
47 : ADD 2, 1, 0 ;  Move left to R2
48 : ADD 1, 3, 0 ;  Restore right to R1
49 : SUB 1, 2, 1 ;  left - right
50 : JLT 1, 2(7) ;  if < 0 then true
51 : LDC 1, 0(0) ;  false
52 : LDA 7, 1(7) ;  skip setting true
53 : LDC 1, 1(0) ;  true
54 : JEQ 1, 57(0) ;  If false, jump to ELSE
55 : LD 1, 1(5) ;  Load parameter 'm'
56 : LDA 7, 74(0) ;  Skip ELSE
57 : LDA 4, 4(5) ;  Compute callee frame base
58 : ADD 5, 4, 0 ;  Push callee frame
59 : LD 1, 2(5) ;  Load parameter 'n'
60 : ADD 3, 1, 0 ;  Stash right in R3
61 : LD 1, 1(5) ;  Load parameter 'm'
62 : ADD 2, 1, 0 ;  Move left to R2
63 : ADD 1, 3, 0 ;  Restore right to R1
64 : SUB 1, 2, 1 ;  R1 = left - right
65 : ST 1, 1(5) ;  Store argument 0 in callee frame
66 : LD 1, 2(5) ;  Load parameter 'n'
67 : ST 1, 2(5) ;  Store argument 1 in callee frame
68 : LDA 6, 71(0) ;  Return address
69 : ST 6, 0(5) ;  Store RA in callee frame
70 : LDA 7, 44(0) ;  Call mod
71 : LD 1, 3(5) ;  Load callee result
72 : LDC 2, 4(0) ;  Caller frame size
73 : SUB 5, 5, 2 ;  Pop callee frame
74 : ST 1, 3(5) ;  Store function result
75 : LD 6, 0(5) ;  Load return address
76 : LDA 7, 0(6) ;  Return to caller
