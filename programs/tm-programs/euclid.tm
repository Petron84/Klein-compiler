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
22 : LDA 7, 30(0) ;  Call gcd
23 : LD 1, 3(5) ;  Load callee result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 3(5) ;  Store result into caller frame
27 : LD 1, 3(5) ;  Load main return value
28 : LD 6, 0(5) ;  Load return address
29 : LDA 7, 0(6) ;  Return from main
30 : LDC 1, 0(0) ;  Load integer literal into R1
31 : ADD 3, 1, 0 ;  Stash right in R3
32 : LD 1, 2(5) ;  Load parameter 'b'
33 : ADD 2, 1, 0 ;  Move left to R2
34 : ADD 1, 3, 0 ;  Restore right to R1
35 : SUB 1, 2, 1 ;  left - right
36 : JEQ 1, 2(7) ;  if 0 then true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 43(0) ;  If false, jump to ELSE
41 : LD 1, 1(5) ;  Load parameter 'a'
42 : LDA 7, 66(0) ;  Skip ELSE
43 : LDA 4, 4(5) ;  Compute callee frame base
44 : ADD 5, 4, 0 ;  Push callee frame
45 : LD 1, 2(5) ;  Load parameter 'b'
46 : ST 1, 1(5) ;  Store argument 0 in callee frame
47 : LDA 4, 4(5) ;  Compute callee frame base
48 : ADD 5, 4, 0 ;  Push callee frame
49 : LD 1, 1(5) ;  Load parameter 'a'
50 : ST 1, 1(5) ;  Store argument 0 in callee frame
51 : LD 1, 2(5) ;  Load parameter 'b'
52 : ST 1, 2(5) ;  Store argument 1 in callee frame
53 : LDA 6, 56(0) ;  Return address
54 : ST 6, 0(5) ;  Store RA in callee frame
55 : LDA 7, 69(0) ;  Call remainder
56 : LD 1, 3(5) ;  Load callee result
57 : LDC 2, 4(0) ;  Caller frame size
58 : SUB 5, 5, 2 ;  Pop callee frame
59 : ST 1, 2(5) ;  Store argument 1 in callee frame
60 : LDA 6, 63(0) ;  Return address
61 : ST 6, 0(5) ;  Store RA in callee frame
62 : LDA 7, 30(0) ;  Call gcd
63 : LD 1, 3(5) ;  Load callee result
64 : LDC 2, 4(0) ;  Caller frame size
65 : SUB 5, 5, 2 ;  Pop callee frame
66 : ST 1, 3(5) ;  Store function result
67 : LD 6, 0(5) ;  Load return address
68 : LDA 7, 0(6) ;  Return to caller
69 : LD 1, 2(5) ;  Load parameter 'b'
70 : ADD 3, 1, 0 ;  Stash right in R3
71 : LD 1, 1(5) ;  Load parameter 'a'
72 : ADD 2, 1, 0 ;  Move left to R2
73 : ADD 1, 3, 0 ;  Restore right to R1
74 : SUB 1, 2, 1 ;  left - right
75 : JLT 1, 2(7) ;  if < 0 then true
76 : LDC 1, 0(0) ;  false
77 : LDA 7, 1(7) ;  skip setting true
78 : LDC 1, 1(0) ;  true
79 : JEQ 1, 82(0) ;  If false, jump to ELSE
80 : LD 1, 1(5) ;  Load parameter 'a'
81 : LDA 7, 99(0) ;  Skip ELSE
82 : LDA 4, 4(5) ;  Compute callee frame base
83 : ADD 5, 4, 0 ;  Push callee frame
84 : LD 1, 2(5) ;  Load parameter 'b'
85 : ADD 3, 1, 0 ;  Stash right in R3
86 : LD 1, 1(5) ;  Load parameter 'a'
87 : ADD 2, 1, 0 ;  Move left to R2
88 : ADD 1, 3, 0 ;  Restore right to R1
89 : SUB 1, 2, 1 ;  R1 = left - right
90 : ST 1, 1(5) ;  Store argument 0 in callee frame
91 : LD 1, 2(5) ;  Load parameter 'b'
92 : ST 1, 2(5) ;  Store argument 1 in callee frame
93 : LDA 6, 96(0) ;  Return address
94 : ST 6, 0(5) ;  Store RA in callee frame
95 : LDA 7, 69(0) ;  Call remainder
96 : LD 1, 3(5) ;  Load callee result
97 : LDC 2, 4(0) ;  Caller frame size
98 : SUB 5, 5, 2 ;  Pop callee frame
99 : ST 1, 3(5) ;  Store function result
100 : LD 6, 0(5) ;  Load return address
101 : LDA 7, 0(6) ;  Return to caller
