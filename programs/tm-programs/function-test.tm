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
14 : LD 1, 1(5) ;  Load parameter 'x'
15 : LDA 4, 3(5) ;  [JIT] callee frame base
16 : ST 1, 1(4) ;  Store arg 0 in callee frame
17 : LDA 4, 3(5) ;  [JIT] callee frame base
18 : LDA 6, 22(0) ;  Return address
19 : ST 6, 0(4) ;  Store RA in callee frame
20 : ADD 5, 4, 0 ;  Push callee frame
21 : LDA 7, 88(0) ;  Call double
22 : LD 1, 2(5) ;  Load callee result
23 : LDC 2, 3(0) ;  Caller frame size
24 : SUB 5, 5, 2 ;  Pop callee frame
25 : LDA 4, 4(5) ;  [JIT] callee frame base
26 : ST 1, 1(4) ;  Store arg 0 in callee frame
27 : LD 1, 2(5) ;  Load parameter 'y'
28 : LDA 4, 3(5) ;  [JIT] callee frame base
29 : ST 1, 1(4) ;  Store arg 0 in callee frame
30 : LDA 4, 3(5) ;  [JIT] callee frame base
31 : LDA 6, 35(0) ;  Return address
32 : ST 6, 0(4) ;  Store RA in callee frame
33 : ADD 5, 4, 0 ;  Push callee frame
34 : LDA 7, 61(0) ;  Call triple
35 : LD 1, 2(5) ;  Load callee result
36 : LDC 2, 3(0) ;  Caller frame size
37 : SUB 5, 5, 2 ;  Pop callee frame
38 : LDA 4, 4(5) ;  [JIT] callee frame base
39 : ST 1, 2(4) ;  Store arg 1 in callee frame
40 : LDA 4, 4(5) ;  [JIT] callee frame base
41 : LDA 6, 45(0) ;  Return address
42 : ST 6, 0(4) ;  Store RA in callee frame
43 : ADD 5, 4, 0 ;  Push callee frame
44 : LDA 7, 102(0) ;  Call add
45 : LD 1, 3(5) ;  Load callee result
46 : LDC 2, 4(0) ;  Caller frame size
47 : SUB 5, 5, 2 ;  Pop callee frame
48 : ST 1, 3(5) ;  Store result into caller frame
49 : LD 1, 3(5) ;  Load main return value
50 : LD 6, 0(5) ;  Load return address
51 : LDA 7, 0(6) ;  Return from main
52 : LDC 1, 2(0) ;  Load integer literal into R1
53 : ADD 3, 1, 0 ;  Stash right in R3
54 : LD 1, 1(5) ;  Load parameter 'k'
55 : ADD 2, 1, 0 ;  Move left to R2
56 : ADD 1, 3, 0 ;  Restore right to R1
57 : MUL 1, 2, 1 ;  R1 = left * right
58 : ST 1, 2(5) ;  Store function result
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LD 1, 1(5) ;  Load parameter 'n'
62 : LDA 4, 4(5) ;  [JIT] callee frame base
63 : ST 1, 1(4) ;  Store arg 0 in callee frame
64 : LD 1, 1(5) ;  Load parameter 'n'
65 : LDA 4, 3(5) ;  [JIT] callee frame base
66 : ST 1, 1(4) ;  Store arg 0 in callee frame
67 : LDA 4, 3(5) ;  [JIT] callee frame base
68 : LDA 6, 72(0) ;  Return address
69 : ST 6, 0(4) ;  Store RA in callee frame
70 : ADD 5, 4, 0 ;  Push callee frame
71 : LDA 7, 52(0) ;  Call mul2
72 : LD 1, 2(5) ;  Load callee result
73 : LDC 2, 3(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop callee frame
75 : LDA 4, 4(5) ;  [JIT] callee frame base
76 : ST 1, 2(4) ;  Store arg 1 in callee frame
77 : LDA 4, 4(5) ;  [JIT] callee frame base
78 : LDA 6, 82(0) ;  Return address
79 : ST 6, 0(4) ;  Store RA in callee frame
80 : ADD 5, 4, 0 ;  Push callee frame
81 : LDA 7, 102(0) ;  Call add
82 : LD 1, 3(5) ;  Load callee result
83 : LDC 2, 4(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop callee frame
85 : ST 1, 2(5) ;  Store function result
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
88 : LD 1, 1(5) ;  Load parameter 'n'
89 : LDA 4, 3(5) ;  [JIT] callee frame base
90 : ST 1, 1(4) ;  Store arg 0 in callee frame
91 : LDA 4, 3(5) ;  [JIT] callee frame base
92 : LDA 6, 96(0) ;  Return address
93 : ST 6, 0(4) ;  Store RA in callee frame
94 : ADD 5, 4, 0 ;  Push callee frame
95 : LDA 7, 52(0) ;  Call mul2
96 : LD 1, 2(5) ;  Load callee result
97 : LDC 2, 3(0) ;  Caller frame size
98 : SUB 5, 5, 2 ;  Pop callee frame
99 : ST 1, 2(5) ;  Store function result
100 : LD 6, 0(5) ;  Load return address
101 : LDA 7, 0(6) ;  Return to caller
102 : LD 1, 2(5) ;  Load parameter 'b'
103 : ADD 3, 1, 0 ;  Stash right in R3
104 : LD 1, 1(5) ;  Load parameter 'a'
105 : ADD 2, 1, 0 ;  Move left to R2
106 : ADD 1, 3, 0 ;  Restore right to R1
107 : ADD 1, 2, 1 ;  R1 = left + right
108 : ST 1, 3(5) ;  Store function result
109 : LD 6, 0(5) ;  Load return address
110 : LDA 7, 0(6) ;  Return to caller
