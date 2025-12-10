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
14 : LDA 4, 4(5) ;  Compute callee frame base
15 : ADD 5, 4, 0 ;  Push callee frame
16 : LD 1, 1(5) ;  Load parameter 'a'
17 : ST 1, 1(5) ;  Store argument 0 in callee frame
18 : LD 1, 2(5) ;  Load parameter 'b'
19 : ST 1, 2(5) ;  Store argument 1 in callee frame
20 : LDA 6, 23(0) ;  Return address
21 : ST 6, 0(5) ;  Store RA in callee frame
22 : LDA 7, 30(0) ;  Call add_till_n
23 : LD 1, 3(5) ;  Load callee result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 3(5) ;  Store result into caller frame
27 : LD 1, 3(5) ;  Load main return value
28 : LD 6, 0(5) ;  Load return address
29 : LDA 7, 0(6) ;  Return from main
30 : LDA 4, 3(5) ;  Compute callee frame base
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LD 1, 1(5) ;  Load parameter 'a'
33 : ST 1, 1(5) ;  Store print arg in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 11(0) ;  Call print
37 : LDC 2, 3(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop callee frame
39 : LD 1, 2(5) ;  Load parameter 'b'
40 : ADD 3, 1, 0 ;  Stash right in R3
41 : LD 1, 1(5) ;  Load parameter 'a'
42 : ADD 2, 1, 0 ;  Move left to R2
43 : ADD 1, 3, 0 ;  Restore right to R1
44 : SUB 1, 2, 1 ;  left - right
45 : JEQ 1, 2(7) ;  if 0 then true
46 : LDC 1, 0(0) ;  false
47 : LDA 7, 1(7) ;  skip setting true
48 : LDC 1, 1(0) ;  true
49 : JEQ 1, 52(0) ;  If false, jump to ELSE
50 : LD 1, 1(5) ;  Load parameter 'a'
51 : LDA 7, 69(0) ;  Skip ELSE
52 : LDA 4, 4(5) ;  Compute callee frame base
53 : ADD 5, 4, 0 ;  Push callee frame
54 : LDC 1, 1(0) ;  Load integer literal into R1
55 : ADD 3, 1, 0 ;  Stash right in R3
56 : LD 1, 1(5) ;  Load parameter 'a'
57 : ADD 2, 1, 0 ;  Move left to R2
58 : ADD 1, 3, 0 ;  Restore right to R1
59 : ADD 1, 2, 1 ;  R1 = left + right
60 : ST 1, 1(5) ;  Store argument 0 in callee frame
61 : LD 1, 2(5) ;  Load parameter 'b'
62 : ST 1, 2(5) ;  Store argument 1 in callee frame
63 : LDA 6, 66(0) ;  Return address
64 : ST 6, 0(5) ;  Store RA in callee frame
65 : LDA 7, 30(0) ;  Call add_till_n
66 : LD 1, 3(5) ;  Load callee result
67 : LDC 2, 4(0) ;  Caller frame size
68 : SUB 5, 5, 2 ;  Pop callee frame
69 : ST 1, 3(5) ;  Store function result
70 : LD 6, 0(5) ;  Load return address
71 : LDA 7, 0(6) ;  Return to caller
