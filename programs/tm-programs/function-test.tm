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
16 : LDA 4, 3(5) ;  Compute callee frame base
17 : ADD 5, 4, 0 ;  Push callee frame
18 : LD 1, 1(5) ;  Load parameter 'x'
19 : ST 1, 1(5) ;  Store argument 0 in callee frame
20 : LDA 6, 23(0) ;  Return address
21 : ST 6, 0(5) ;  Store RA in callee frame
22 : LDA 7, 81(0) ;  Call double
23 : LD 1, 2(5) ;  Load callee result
24 : LDC 2, 3(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 1(5) ;  Store argument 0 in callee frame
27 : LDA 4, 3(5) ;  Compute callee frame base
28 : ADD 5, 4, 0 ;  Push callee frame
29 : LD 1, 2(5) ;  Load parameter 'y'
30 : ST 1, 1(5) ;  Store argument 0 in callee frame
31 : LDA 6, 34(0) ;  Return address
32 : ST 6, 0(5) ;  Store RA in callee frame
33 : LDA 7, 57(0) ;  Call triple
34 : LD 1, 2(5) ;  Load callee result
35 : LDC 2, 3(0) ;  Caller frame size
36 : SUB 5, 5, 2 ;  Pop callee frame
37 : ST 1, 2(5) ;  Store argument 1 in callee frame
38 : LDA 6, 41(0) ;  Return address
39 : ST 6, 0(5) ;  Store RA in callee frame
40 : LDA 7, 94(0) ;  Call add
41 : LD 1, 3(5) ;  Load callee result
42 : LDC 2, 4(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop callee frame
44 : ST 1, 3(5) ;  Store result into caller frame
45 : LD 1, 3(5) ;  Load main return value
46 : LD 6, 0(5) ;  Load return address
47 : LDA 7, 0(6) ;  Return from main
48 : LDC 1, 2(0) ;  Load integer literal into R1
49 : ADD 3, 1, 0 ;  Stash right in R3
50 : LD 1, 1(5) ;  Load parameter 'k'
51 : ADD 2, 1, 0 ;  Move left to R2
52 : ADD 1, 3, 0 ;  Restore right to R1
53 : MUL 1, 2, 1 ;  R1 = left * right
54 : ST 1, 2(5) ;  Store function result
55 : LD 6, 0(5) ;  Load return address
56 : LDA 7, 0(6) ;  Return to caller
57 : LDA 4, 4(5) ;  Compute callee frame base
58 : ADD 5, 4, 0 ;  Push callee frame
59 : LD 1, 1(5) ;  Load parameter 'n'
60 : ST 1, 1(5) ;  Store argument 0 in callee frame
61 : LDA 4, 3(5) ;  Compute callee frame base
62 : ADD 5, 4, 0 ;  Push callee frame
63 : LD 1, 1(5) ;  Load parameter 'n'
64 : ST 1, 1(5) ;  Store argument 0 in callee frame
65 : LDA 6, 68(0) ;  Return address
66 : ST 6, 0(5) ;  Store RA in callee frame
67 : LDA 7, 48(0) ;  Call mul2
68 : LD 1, 2(5) ;  Load callee result
69 : LDC 2, 3(0) ;  Caller frame size
70 : SUB 5, 5, 2 ;  Pop callee frame
71 : ST 1, 2(5) ;  Store argument 1 in callee frame
72 : LDA 6, 75(0) ;  Return address
73 : ST 6, 0(5) ;  Store RA in callee frame
74 : LDA 7, 94(0) ;  Call add
75 : LD 1, 3(5) ;  Load callee result
76 : LDC 2, 4(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : ST 1, 2(5) ;  Store function result
79 : LD 6, 0(5) ;  Load return address
80 : LDA 7, 0(6) ;  Return to caller
81 : LDA 4, 3(5) ;  Compute callee frame base
82 : ADD 5, 4, 0 ;  Push callee frame
83 : LD 1, 1(5) ;  Load parameter 'n'
84 : ST 1, 1(5) ;  Store argument 0 in callee frame
85 : LDA 6, 88(0) ;  Return address
86 : ST 6, 0(5) ;  Store RA in callee frame
87 : LDA 7, 48(0) ;  Call mul2
88 : LD 1, 2(5) ;  Load callee result
89 : LDC 2, 3(0) ;  Caller frame size
90 : SUB 5, 5, 2 ;  Pop callee frame
91 : ST 1, 2(5) ;  Store function result
92 : LD 6, 0(5) ;  Load return address
93 : LDA 7, 0(6) ;  Return to caller
94 : LD 1, 2(5) ;  Load parameter 'b'
95 : ADD 3, 1, 0 ;  Stash right in R3
96 : LD 1, 1(5) ;  Load parameter 'a'
97 : ADD 2, 1, 0 ;  Move left to R2
98 : ADD 1, 3, 0 ;  Restore right to R1
99 : ADD 1, 2, 1 ;  R1 = left + right
100 : ST 1, 3(5) ;  Store function result
101 : LD 6, 0(5) ;  Load return address
102 : LDA 7, 0(6) ;  Return to caller
