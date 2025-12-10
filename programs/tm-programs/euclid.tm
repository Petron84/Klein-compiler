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
24 : LDA 7, 32(0) ;  Call gcd
25 : LD 1, 3(5) ;  Load callee result
26 : LDC 2, 4(0) ;  Caller frame size
27 : SUB 5, 5, 2 ;  Pop callee frame
28 : ST 1, 3(5) ;  Store result into caller frame
29 : LD 1, 3(5) ;  Load main return value
30 : LD 6, 0(5) ;  Load return address
31 : LDA 7, 0(6) ;  Return from main
32 : LDC 1, 0(0) ;  Load integer literal into R1
33 : ADD 3, 1, 0 ;  Stash right in R3
34 : LD 1, 2(5) ;  Load parameter 'b'
35 : ADD 2, 1, 0 ;  Move left to R2
36 : ADD 1, 3, 0 ;  Restore right to R1
37 : SUB 1, 2, 1 ;  left - right
38 : JEQ 1, 2(7) ;  if 0 then true
39 : LDC 1, 0(0) ;  false
40 : LDA 7, 1(7) ;  skip setting true
41 : LDC 1, 1(0) ;  true
42 : JEQ 1, 45(0) ;  If false, jump to ELSE
43 : LD 1, 1(5) ;  Load parameter 'a'
44 : LDA 7, 72(0) ;  Skip ELSE
45 : LD 1, 2(5) ;  Load parameter 'b'
46 : LDA 4, 4(5) ;  [JIT] callee frame base
47 : ST 1, 1(4) ;  Store arg 0 in callee frame
48 : LD 1, 1(5) ;  Load parameter 'a'
49 : LDA 4, 4(5) ;  [JIT] callee frame base
50 : ST 1, 1(4) ;  Store arg 0 in callee frame
51 : LD 1, 2(5) ;  Load parameter 'b'
52 : LDA 4, 4(5) ;  [JIT] callee frame base
53 : ST 1, 2(4) ;  Store arg 1 in callee frame
54 : LDA 4, 4(5) ;  [JIT] callee frame base
55 : LDA 6, 59(0) ;  Return address
56 : ST 6, 0(4) ;  Store RA in callee frame
57 : ADD 5, 4, 0 ;  Push callee frame
58 : LDA 7, 75(0) ;  Call remainder
59 : LD 1, 3(5) ;  Load callee result
60 : LDC 2, 4(0) ;  Caller frame size
61 : SUB 5, 5, 2 ;  Pop callee frame
62 : LDA 4, 4(5) ;  [JIT] callee frame base
63 : ST 1, 2(4) ;  Store arg 1 in callee frame
64 : LDA 4, 4(5) ;  [JIT] callee frame base
65 : LDA 6, 69(0) ;  Return address
66 : ST 6, 0(4) ;  Store RA in callee frame
67 : ADD 5, 4, 0 ;  Push callee frame
68 : LDA 7, 32(0) ;  Call gcd
69 : LD 1, 3(5) ;  Load callee result
70 : LDC 2, 4(0) ;  Caller frame size
71 : SUB 5, 5, 2 ;  Pop callee frame
72 : ST 1, 3(5) ;  Store function result
73 : LD 6, 0(5) ;  Load return address
74 : LDA 7, 0(6) ;  Return to caller
75 : LD 1, 2(5) ;  Load parameter 'b'
76 : ADD 3, 1, 0 ;  Stash right in R3
77 : LD 1, 1(5) ;  Load parameter 'a'
78 : ADD 2, 1, 0 ;  Move left to R2
79 : ADD 1, 3, 0 ;  Restore right to R1
80 : SUB 1, 2, 1 ;  left - right
81 : JLT 1, 2(7) ;  if < 0 then true
82 : LDC 1, 0(0) ;  false
83 : LDA 7, 1(7) ;  skip setting true
84 : LDC 1, 1(0) ;  true
85 : JEQ 1, 88(0) ;  If false, jump to ELSE
86 : LD 1, 1(5) ;  Load parameter 'a'
87 : LDA 7, 107(0) ;  Skip ELSE
88 : LD 1, 2(5) ;  Load parameter 'b'
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(5) ;  Load parameter 'a'
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : SUB 1, 2, 1 ;  R1 = left - right
94 : LDA 4, 4(5) ;  [JIT] callee frame base
95 : ST 1, 1(4) ;  Store arg 0 in callee frame
96 : LD 1, 2(5) ;  Load parameter 'b'
97 : LDA 4, 4(5) ;  [JIT] callee frame base
98 : ST 1, 2(4) ;  Store arg 1 in callee frame
99 : LDA 4, 4(5) ;  [JIT] callee frame base
100 : LDA 6, 104(0) ;  Return address
101 : ST 6, 0(4) ;  Store RA in callee frame
102 : ADD 5, 4, 0 ;  Push callee frame
103 : LDA 7, 75(0) ;  Call remainder
104 : LD 1, 3(5) ;  Load callee result
105 : LDC 2, 4(0) ;  Caller frame size
106 : SUB 5, 5, 2 ;  Pop callee frame
107 : ST 1, 3(5) ;  Store function result
108 : LD 6, 0(5) ;  Load return address
109 : LDA 7, 0(6) ;  Return to caller
