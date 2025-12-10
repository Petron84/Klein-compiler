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
17 : LDA 4, 3(5) ;  Compute callee frame base (temp)
18 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
19 : LD 1, 1(4) ;  Load parameter 'x' via FP
20 : ST 1, 1(5) ;  Store argument 0 in callee frame
21 : LDA 6, 24(0) ;  Return address
22 : ST 6, 0(5) ;  Store RA in callee frame
23 : LDA 7, 84(0) ;  Call double
24 : LD 1, 2(5) ;  Load callee result
25 : LDC 2, 3(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop callee frame
27 : ST 1, 1(5) ;  Store argument 0 in callee frame
28 : LDA 4, 3(5) ;  Compute callee frame base (temp)
29 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
30 : LD 1, 2(4) ;  Load parameter 'y' via FP
31 : ST 1, 1(5) ;  Store argument 0 in callee frame
32 : LDA 6, 35(0) ;  Return address
33 : ST 6, 0(5) ;  Store RA in callee frame
34 : LDA 7, 59(0) ;  Call triple
35 : LD 1, 2(5) ;  Load callee result
36 : LDC 2, 3(0) ;  Caller frame size
37 : SUB 5, 5, 2 ;  Pop callee frame
38 : ST 1, 2(5) ;  Store argument 1 in callee frame
39 : LDA 6, 42(0) ;  Return address
40 : ST 6, 0(5) ;  Store RA in callee frame
41 : LDA 7, 98(0) ;  Call add
42 : LD 1, 3(5) ;  Load callee result
43 : LDC 2, 4(0) ;  Caller frame size
44 : SUB 5, 5, 2 ;  Pop callee frame
45 : ST 1, 3(4) ;  Store result into caller frame (via FP)
46 : LD 1, 3(4) ;  Load main return value (via FP)
47 : LD 6, 0(4) ;  Load return address (via FP)
48 : LDA 7, 0(6) ;  Return from main
49 : ADD 4, 5, 0 ;  Set FP at 49 entry
50 : LDC 1, 2(0) ;  Load integer literal into R1
51 : ADD 3, 1, 0 ;  Stash right in R3
52 : LD 1, 1(4) ;  Load parameter 'k' via FP
53 : ADD 2, 1, 0 ;  Move left to R2
54 : ADD 1, 3, 0 ;  Restore right to R1
55 : MUL 1, 2, 1 ;  R1 = left * right
56 : ST 1, 2(4) ;  Store function result (via FP)
57 : LD 6, 0(4) ;  Load return address (via FP)
58 : LDA 7, 0(6) ;  Return to caller
59 : ADD 4, 5, 0 ;  Set FP at 59 entry
60 : LDA 4, 4(5) ;  Compute callee frame base (temp)
61 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
62 : LD 1, 1(4) ;  Load parameter 'n' via FP
63 : ST 1, 1(5) ;  Store argument 0 in callee frame
64 : LDA 4, 3(5) ;  Compute callee frame base (temp)
65 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
66 : LD 1, 1(4) ;  Load parameter 'n' via FP
67 : ST 1, 1(5) ;  Store argument 0 in callee frame
68 : LDA 6, 71(0) ;  Return address
69 : ST 6, 0(5) ;  Store RA in callee frame
70 : LDA 7, 49(0) ;  Call mul2
71 : LD 1, 2(5) ;  Load callee result
72 : LDC 2, 3(0) ;  Caller frame size
73 : SUB 5, 5, 2 ;  Pop callee frame
74 : ST 1, 2(5) ;  Store argument 1 in callee frame
75 : LDA 6, 78(0) ;  Return address
76 : ST 6, 0(5) ;  Store RA in callee frame
77 : LDA 7, 98(0) ;  Call add
78 : LD 1, 3(5) ;  Load callee result
79 : LDC 2, 4(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop callee frame
81 : ST 1, 2(4) ;  Store function result (via FP)
82 : LD 6, 0(4) ;  Load return address (via FP)
83 : LDA 7, 0(6) ;  Return to caller
84 : ADD 4, 5, 0 ;  Set FP at 84 entry
85 : LDA 4, 3(5) ;  Compute callee frame base (temp)
86 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
87 : LD 1, 1(4) ;  Load parameter 'n' via FP
88 : ST 1, 1(5) ;  Store argument 0 in callee frame
89 : LDA 6, 92(0) ;  Return address
90 : ST 6, 0(5) ;  Store RA in callee frame
91 : LDA 7, 49(0) ;  Call mul2
92 : LD 1, 2(5) ;  Load callee result
93 : LDC 2, 3(0) ;  Caller frame size
94 : SUB 5, 5, 2 ;  Pop callee frame
95 : ST 1, 2(4) ;  Store function result (via FP)
96 : LD 6, 0(4) ;  Load return address (via FP)
97 : LDA 7, 0(6) ;  Return to caller
98 : ADD 4, 5, 0 ;  Set FP at 98 entry
99 : LD 1, 2(4) ;  Load parameter 'b' via FP
100 : ADD 3, 1, 0 ;  Stash right in R3
101 : LD 1, 1(4) ;  Load parameter 'a' via FP
102 : ADD 2, 1, 0 ;  Move left to R2
103 : ADD 1, 3, 0 ;  Restore right to R1
104 : ADD 1, 2, 1 ;  R1 = left + right
105 : ST 1, 3(4) ;  Store function result (via FP)
106 : LD 6, 0(4) ;  Load return address (via FP)
107 : LDA 7, 0(6) ;  Return to caller
