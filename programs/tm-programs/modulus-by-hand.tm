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
15 : LDA 4, 3(5) ;  Compute callee frame base (temp)
16 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
17 : LD 1, 2(4) ;  Load parameter 'n' via FP
18 : ADD 3, 1, 0 ;  Stash right in R3
19 : LD 1, 1(4) ;  Load parameter 'm' via FP
20 : ADD 2, 1, 0 ;  Move left to R2
21 : ADD 1, 3, 0 ;  Restore right to R1
22 : DIV 1, 2, 1 ;  R1 = left / right
23 : ST 1, 1(5) ;  Store print arg in callee frame
24 : LDA 6, 27(0) ;  Return address
25 : ST 6, 0(5) ;  Store RA in callee frame
26 : LDA 7, 11(0) ;  Call print
27 : LDC 2, 3(0) ;  Caller frame size
28 : SUB 5, 5, 2 ;  Pop callee frame
29 : LDA 4, 4(5) ;  Compute callee frame base (temp)
30 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
31 : LD 1, 1(4) ;  Load parameter 'm' via FP
32 : ST 1, 1(5) ;  Store argument 0 in callee frame
33 : LD 1, 2(4) ;  Load parameter 'n' via FP
34 : ST 1, 2(5) ;  Store argument 1 in callee frame
35 : LDA 6, 38(0) ;  Return address
36 : ST 6, 0(5) ;  Store RA in callee frame
37 : LDA 7, 45(0) ;  Call mod
38 : LD 1, 3(5) ;  Load callee result
39 : LDC 2, 4(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ST 1, 3(4) ;  Store result into caller frame (via FP)
42 : LD 1, 3(4) ;  Load main return value (via FP)
43 : LD 6, 0(4) ;  Load return address (via FP)
44 : LDA 7, 0(6) ;  Return from main
45 : ADD 4, 5, 0 ;  Set FP at 45 entry
46 : LD 1, 2(4) ;  Load parameter 'n' via FP
47 : ADD 3, 1, 0 ;  Stash right in R3
48 : LD 1, 1(4) ;  Load parameter 'm' via FP
49 : ADD 2, 1, 0 ;  Move left to R2
50 : ADD 1, 3, 0 ;  Restore right to R1
51 : SUB 1, 2, 1 ;  left - right
52 : JLT 1, 2(7) ;  if < 0 then true
53 : LDC 1, 0(0) ;  false
54 : LDA 7, 1(7) ;  skip setting true
55 : LDC 1, 1(0) ;  true
56 : JEQ 1, 59(0) ;  If false, jump to ELSE
57 : LD 1, 1(4) ;  Load parameter 'm' via FP
58 : LDA 7, 76(0) ;  Skip ELSE
59 : LDA 4, 4(5) ;  Compute callee frame base (temp)
60 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
61 : LD 1, 2(4) ;  Load parameter 'n' via FP
62 : ADD 3, 1, 0 ;  Stash right in R3
63 : LD 1, 1(4) ;  Load parameter 'm' via FP
64 : ADD 2, 1, 0 ;  Move left to R2
65 : ADD 1, 3, 0 ;  Restore right to R1
66 : SUB 1, 2, 1 ;  R1 = left - right
67 : ST 1, 1(5) ;  Store argument 0 in callee frame
68 : LD 1, 2(4) ;  Load parameter 'n' via FP
69 : ST 1, 2(5) ;  Store argument 1 in callee frame
70 : LDA 6, 73(0) ;  Return address
71 : ST 6, 0(5) ;  Store RA in callee frame
72 : LDA 7, 45(0) ;  Call mod
73 : LD 1, 3(5) ;  Load callee result
74 : LDC 2, 4(0) ;  Caller frame size
75 : SUB 5, 5, 2 ;  Pop callee frame
76 : ST 1, 3(4) ;  Store function result (via FP)
77 : LD 6, 0(4) ;  Load return address (via FP)
78 : LDA 7, 0(6) ;  Return to caller
