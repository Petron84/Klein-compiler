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
23 : LDA 7, 31(0) ;  Call gcd
24 : LD 1, 3(5) ;  Load callee result
25 : LDC 2, 4(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop callee frame
27 : ST 1, 3(4) ;  Store result into caller frame (via FP)
28 : LD 1, 3(4) ;  Load main return value (via FP)
29 : LD 6, 0(4) ;  Load return address (via FP)
30 : LDA 7, 0(6) ;  Return from main
31 : ADD 4, 5, 0 ;  Set FP at 31 entry
32 : LDC 1, 0(0) ;  Load integer literal into R1
33 : ADD 3, 1, 0 ;  Stash right in R3
34 : LD 1, 2(4) ;  Load parameter 'b' via FP
35 : ADD 2, 1, 0 ;  Move left to R2
36 : ADD 1, 3, 0 ;  Restore right to R1
37 : SUB 1, 2, 1 ;  left - right
38 : JEQ 1, 2(7) ;  if 0 then true
39 : LDC 1, 0(0) ;  false
40 : LDA 7, 1(7) ;  skip setting true
41 : LDC 1, 1(0) ;  true
42 : JEQ 1, 45(0) ;  If false, jump to ELSE
43 : LD 1, 1(4) ;  Load parameter 'a' via FP
44 : LDA 7, 68(0) ;  Skip ELSE
45 : LDA 4, 4(5) ;  Compute callee frame base (temp)
46 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
47 : LD 1, 2(4) ;  Load parameter 'b' via FP
48 : ST 1, 1(5) ;  Store argument 0 in callee frame
49 : LDA 4, 4(5) ;  Compute callee frame base (temp)
50 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
51 : LD 1, 1(4) ;  Load parameter 'a' via FP
52 : ST 1, 1(5) ;  Store argument 0 in callee frame
53 : LD 1, 2(4) ;  Load parameter 'b' via FP
54 : ST 1, 2(5) ;  Store argument 1 in callee frame
55 : LDA 6, 58(0) ;  Return address
56 : ST 6, 0(5) ;  Store RA in callee frame
57 : LDA 7, 71(0) ;  Call remainder
58 : LD 1, 3(5) ;  Load callee result
59 : LDC 2, 4(0) ;  Caller frame size
60 : SUB 5, 5, 2 ;  Pop callee frame
61 : ST 1, 2(5) ;  Store argument 1 in callee frame
62 : LDA 6, 65(0) ;  Return address
63 : ST 6, 0(5) ;  Store RA in callee frame
64 : LDA 7, 31(0) ;  Call gcd
65 : LD 1, 3(5) ;  Load callee result
66 : LDC 2, 4(0) ;  Caller frame size
67 : SUB 5, 5, 2 ;  Pop callee frame
68 : ST 1, 3(4) ;  Store function result (via FP)
69 : LD 6, 0(4) ;  Load return address (via FP)
70 : LDA 7, 0(6) ;  Return to caller
71 : ADD 4, 5, 0 ;  Set FP at 71 entry
72 : LD 1, 2(4) ;  Load parameter 'b' via FP
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(4) ;  Load parameter 'a' via FP
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  left - right
78 : JLT 1, 2(7) ;  if < 0 then true
79 : LDC 1, 0(0) ;  false
80 : LDA 7, 1(7) ;  skip setting true
81 : LDC 1, 1(0) ;  true
82 : JEQ 1, 85(0) ;  If false, jump to ELSE
83 : LD 1, 1(4) ;  Load parameter 'a' via FP
84 : LDA 7, 102(0) ;  Skip ELSE
85 : LDA 4, 4(5) ;  Compute callee frame base (temp)
86 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
87 : LD 1, 2(4) ;  Load parameter 'b' via FP
88 : ADD 3, 1, 0 ;  Stash right in R3
89 : LD 1, 1(4) ;  Load parameter 'a' via FP
90 : ADD 2, 1, 0 ;  Move left to R2
91 : ADD 1, 3, 0 ;  Restore right to R1
92 : SUB 1, 2, 1 ;  R1 = left - right
93 : ST 1, 1(5) ;  Store argument 0 in callee frame
94 : LD 1, 2(4) ;  Load parameter 'b' via FP
95 : ST 1, 2(5) ;  Store argument 1 in callee frame
96 : LDA 6, 99(0) ;  Return address
97 : ST 6, 0(5) ;  Store RA in callee frame
98 : LDA 7, 71(0) ;  Call remainder
99 : LD 1, 3(5) ;  Load callee result
100 : LDC 2, 4(0) ;  Caller frame size
101 : SUB 5, 5, 2 ;  Pop callee frame
102 : ST 1, 3(4) ;  Store function result (via FP)
103 : LD 6, 0(4) ;  Load return address (via FP)
104 : LDA 7, 0(6) ;  Return to caller
