0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
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
14 : ADD 4, 5, 0 ;  Set FP at 14 entry
15 : LDA 4, 4(5) ;  Compute callee frame base (temp)
16 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
17 : LD 1, 1(4) ;  Load parameter 'a' via FP
18 : ST 1, 1(5) ;  Store argument 0 in callee frame
19 : LD 1, 2(4) ;  Load parameter 'b' via FP
20 : ST 1, 2(5) ;  Store argument 1 in callee frame
21 : LDA 6, 24(0) ;  Return address
22 : ST 6, 0(5) ;  Store RA in callee frame
23 : LDA 7, 31(0) ;  Call add_till_n
24 : LD 1, 3(5) ;  Load callee result
25 : LDC 2, 4(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop callee frame
27 : ST 1, 3(4) ;  Store result into caller frame (via FP)
28 : LD 1, 3(4) ;  Load main return value (via FP)
29 : LD 6, 0(4) ;  Load return address (via FP)
30 : LDA 7, 0(6) ;  Return from main
31 : ADD 4, 5, 0 ;  Set FP at 31 entry
32 : LDA 4, 3(5) ;  Compute callee frame base (temp)
33 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
34 : LD 1, 1(4) ;  Load parameter 'a' via FP
35 : ST 1, 1(5) ;  Store print arg in callee frame
36 : LDA 6, 39(0) ;  Return address
37 : ST 6, 0(5) ;  Store RA in callee frame
38 : LDA 7, 11(0) ;  Call print
39 : LDC 2, 3(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : LD 1, 2(4) ;  Load parameter 'b' via FP
42 : ADD 3, 1, 0 ;  Stash right in R3
43 : LD 1, 1(4) ;  Load parameter 'a' via FP
44 : ADD 2, 1, 0 ;  Move left to R2
45 : ADD 1, 3, 0 ;  Restore right to R1
46 : SUB 1, 2, 1 ;  left - right
47 : JEQ 1, 2(7) ;  if 0 then true
48 : LDC 1, 0(0) ;  false
49 : LDA 7, 1(7) ;  skip setting true
50 : LDC 1, 1(0) ;  true
51 : JEQ 1, 54(0) ;  If false, jump to ELSE
52 : LD 1, 1(4) ;  Load parameter 'a' via FP
53 : LDA 7, 71(0) ;  Skip ELSE
54 : LDA 4, 4(5) ;  Compute callee frame base (temp)
55 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
56 : LDC 1, 1(0) ;  Load integer literal into R1
57 : ADD 3, 1, 0 ;  Stash right in R3
58 : LD 1, 1(4) ;  Load parameter 'a' via FP
59 : ADD 2, 1, 0 ;  Move left to R2
60 : ADD 1, 3, 0 ;  Restore right to R1
61 : ADD 1, 2, 1 ;  R1 = left + right
62 : ST 1, 1(5) ;  Store argument 0 in callee frame
63 : LD 1, 2(4) ;  Load parameter 'b' via FP
64 : ST 1, 2(5) ;  Store argument 1 in callee frame
65 : LDA 6, 68(0) ;  Return address
66 : ST 6, 0(5) ;  Store RA in callee frame
67 : LDA 7, 31(0) ;  Call add_till_n
68 : LD 1, 3(5) ;  Load callee result
69 : LDC 2, 4(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop callee frame
71 : ST 1, 3(4) ;  Store function result (via FP)
72 : LD 6, 0(4) ;  Load return address (via FP)
73 : LDA 7, 0(6) ;  Return to caller
