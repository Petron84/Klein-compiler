0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into R2
5 : ST 2, 2(5) ;  Store arg 2 into main frame
6 : LD 2, 3(0) ;  Load CLI arg 3 into R2
7 : ST 2, 3(5) ;  Store arg 3 into main frame
8 : LDA 6, 2(7) ;  Calculate return address
9 : ST 6, 0(5) ;  Store return address in main frame
10 : LDA 7, 16(0) ;  Branch to main
11 : OUT 1, 0, 0 ;  Print main's result
12 : HALT 0, 0, 0 ;  Terminate program
13 : OUT 1, 0, 0 ;  print(R1)
14 : LD 6, 0(5) ;  Load return address
15 : LDA 7, 0(6) ;  Return
16 : LDC 1, 0(0) ;  Load integer literal into R1
17 : ADD 3, 1, 0 ;  Stash right in R3
18 : LD 1, 3(5) ;  Load parameter 'n'
19 : ADD 2, 1, 0 ;  Move left to R2
20 : ADD 1, 3, 0 ;  Restore right to R1
21 : SUB 1, 2, 1 ;  left - right
22 : JEQ 1, 2(7) ;  if 0 then true
23 : LDC 1, 0(0) ;  false
24 : LDA 7, 1(7) ;  skip setting true
25 : LDC 1, 1(0) ;  true
26 : JEQ 1, 30(0) ;  If false, jump to ELSE
27 : LD 1, 1(5) ;  Load parameter 'a'
28 : ST 1, 4(5) ;  Store into current frame's return slot
29 : LDA 7, 45(0) ;  Skip ELSE
30 : LDA 4, 5(5) ;  Compute callee frame base
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LD 1, 1(5) ;  Load parameter 'a'
33 : ST 1, 1(5) ;  Store argument 0 in callee frame
34 : LD 1, 2(5) ;  Load parameter 'b'
35 : ST 1, 2(5) ;  Store argument 1 in callee frame
36 : LD 1, 3(5) ;  Load parameter 'n'
37 : ST 1, 3(5) ;  Store argument 2 in callee frame
38 : LDA 6, 41(0) ;  Return address
39 : ST 6, 0(5) ;  Store RA in callee frame
40 : LDA 7, 65(0) ;  Call printAndDivide
41 : LD 1, 4(5) ;  Load callee result
42 : LDC 2, 5(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop callee frame
44 : ST 1, 4(5) ;  Store result into caller frame
45 : LD 1, 4(5) ;  Load main return value
46 : LD 6, 0(5) ;  Load return address
47 : LDA 7, 0(6) ;  Return from main
48 : LD 1, 2(5) ;  Load parameter 'n'
49 : ADD 3, 1, 0 ;  Stash right in R3
50 : LD 1, 1(5) ;  Load parameter 'm'
51 : ADD 2, 1, 0 ;  Move left to R2
52 : ADD 1, 3, 0 ;  Restore right to R1
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : ADD 2, 1, 0 ;  Move left to R2
55 : LD 1, 2(5) ;  Load parameter 'n'
56 : MUL 1, 2, 1 ;  R1 = left * right
57 : ADD 3, 1, 0 ;  Stash right in R3
58 : LD 1, 1(5) ;  Load parameter 'm'
59 : ADD 2, 1, 0 ;  Move left to R2
60 : ADD 1, 3, 0 ;  Restore right to R1
61 : SUB 1, 2, 1 ;  R1 = left - right
62 : ST 1, 3(5) ;  Store function result
63 : LD 6, 0(5) ;  Load return address
64 : LDA 7, 0(6) ;  Return to caller
65 : LDA 4, 3(5) ;  Compute callee frame base
66 : ADD 5, 4, 0 ;  Push callee frame
67 : LD 1, 1(5) ;  Load parameter 'a'
68 : ADD 3, 1, 0 ;  Stash right in R3
69 : LDC 1, 10(0) ;  Load integer literal into R1
70 : ADD 2, 1, 0 ;  Move left to R2
71 : ADD 1, 3, 0 ;  Restore right to R1
72 : MUL 1, 2, 1 ;  R1 = left * right
73 : ADD 2, 1, 0 ;  Move left to R2
74 : LD 1, 2(5) ;  Load parameter 'b'
75 : DIV 1, 2, 1 ;  R1 = left / right
76 : ST 1, 1(5) ;  Store print arg in callee frame
77 : LDA 6, 80(0) ;  Return address
78 : ST 6, 0(5) ;  Store RA in callee frame
79 : LDA 7, 13(0) ;  Call print
80 : LDC 2, 3(0) ;  Caller frame size
81 : SUB 5, 5, 2 ;  Pop callee frame
82 : LDA 4, 5(5) ;  Compute callee frame base
83 : ADD 5, 4, 0 ;  Push callee frame
84 : LDA 4, 4(5) ;  Compute callee frame base
85 : ADD 5, 4, 0 ;  Push callee frame
86 : LDC 1, 10(0) ;  Load integer literal into R1
87 : ADD 3, 1, 0 ;  Stash right in R3
88 : LD 1, 1(5) ;  Load parameter 'a'
89 : ADD 2, 1, 0 ;  Move left to R2
90 : ADD 1, 3, 0 ;  Restore right to R1
91 : MUL 1, 2, 1 ;  R1 = left * right
92 : ST 1, 1(5) ;  Store argument 0 in callee frame
93 : LD 1, 2(5) ;  Load parameter 'b'
94 : ST 1, 2(5) ;  Store argument 1 in callee frame
95 : LDA 6, 98(0) ;  Return address
96 : ST 6, 0(5) ;  Store RA in callee frame
97 : LDA 7, 48(0) ;  Call MOD
98 : LD 1, 3(5) ;  Load callee result
99 : LDC 2, 4(0) ;  Caller frame size
100 : SUB 5, 5, 2 ;  Pop callee frame
101 : ST 1, 1(5) ;  Store argument 0 in callee frame
102 : LD 1, 2(5) ;  Load parameter 'b'
103 : ST 1, 2(5) ;  Store argument 1 in callee frame
104 : LDC 1, 1(0) ;  Load integer literal into R1
105 : ADD 3, 1, 0 ;  Stash right in R3
106 : LD 1, 3(5) ;  Load parameter 'n'
107 : ADD 2, 1, 0 ;  Move left to R2
108 : ADD 1, 3, 0 ;  Restore right to R1
109 : SUB 1, 2, 1 ;  R1 = left - right
110 : ST 1, 3(5) ;  Store argument 2 in callee frame
111 : LDA 6, 114(0) ;  Return address
112 : ST 6, 0(5) ;  Store RA in callee frame
113 : LDA 7, 16(0) ;  Call main
114 : LD 1, 4(5) ;  Load callee result
115 : LDC 2, 5(0) ;  Caller frame size
116 : SUB 5, 5, 2 ;  Pop callee frame
117 : ST 1, 4(5) ;  Store function result
118 : LD 6, 0(5) ;  Load return address
119 : LDA 7, 0(6) ;  Return to caller
