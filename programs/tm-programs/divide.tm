0 : LDC 5, 4(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
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
16 : ADD 4, 5, 0 ;  Set FP at 16 entry
17 : LDC 1, 0(0) ;  Load integer literal into R1
18 : ADD 3, 1, 0 ;  Stash right in R3
19 : LD 1, 3(4) ;  Load parameter 'n' via FP
20 : ADD 2, 1, 0 ;  Move left to R2
21 : ADD 1, 3, 0 ;  Restore right to R1
22 : SUB 1, 2, 1 ;  left - right
23 : JEQ 1, 2(7) ;  if 0 then true
24 : LDC 1, 0(0) ;  false
25 : LDA 7, 1(7) ;  skip setting true
26 : LDC 1, 1(0) ;  true
27 : JEQ 1, 31(0) ;  If false, jump to ELSE
28 : LD 1, 1(4) ;  Load parameter 'a' via FP
29 : ST 1, 4(4) ;  Store into current frame's return slot (via FP)
30 : LDA 7, 46(0) ;  Skip ELSE
31 : LDA 4, 5(5) ;  Compute callee frame base (temp)
32 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
33 : LD 1, 1(4) ;  Load parameter 'a' via FP
34 : ST 1, 1(5) ;  Store argument 0 in callee frame
35 : LD 1, 2(4) ;  Load parameter 'b' via FP
36 : ST 1, 2(5) ;  Store argument 1 in callee frame
37 : LD 1, 3(4) ;  Load parameter 'n' via FP
38 : ST 1, 3(5) ;  Store argument 2 in callee frame
39 : LDA 6, 42(0) ;  Return address
40 : ST 6, 0(5) ;  Store RA in callee frame
41 : LDA 7, 67(0) ;  Call printAndDivide
42 : LD 1, 4(5) ;  Load callee result
43 : LDC 2, 5(0) ;  Caller frame size
44 : SUB 5, 5, 2 ;  Pop callee frame
45 : ST 1, 4(4) ;  Store result into caller frame (via FP)
46 : LD 1, 4(4) ;  Load main return value (via FP)
47 : LD 6, 0(4) ;  Load return address (via FP)
48 : LDA 7, 0(6) ;  Return from main
49 : ADD 4, 5, 0 ;  Set FP at 49 entry
50 : LD 1, 2(4) ;  Load parameter 'n' via FP
51 : ADD 3, 1, 0 ;  Stash right in R3
52 : LD 1, 1(4) ;  Load parameter 'm' via FP
53 : ADD 2, 1, 0 ;  Move left to R2
54 : ADD 1, 3, 0 ;  Restore right to R1
55 : DIV 1, 2, 1 ;  R1 = left / right
56 : ADD 2, 1, 0 ;  Move left to R2
57 : LD 1, 2(4) ;  Load parameter 'n' via FP
58 : MUL 1, 2, 1 ;  R1 = left * right
59 : ADD 3, 1, 0 ;  Stash right in R3
60 : LD 1, 1(4) ;  Load parameter 'm' via FP
61 : ADD 2, 1, 0 ;  Move left to R2
62 : ADD 1, 3, 0 ;  Restore right to R1
63 : SUB 1, 2, 1 ;  R1 = left - right
64 : ST 1, 3(4) ;  Store function result (via FP)
65 : LD 6, 0(4) ;  Load return address (via FP)
66 : LDA 7, 0(6) ;  Return to caller
67 : ADD 4, 5, 0 ;  Set FP at 67 entry
68 : LDA 4, 3(5) ;  Compute callee frame base (temp)
69 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
70 : LD 1, 1(4) ;  Load parameter 'a' via FP
71 : ADD 3, 1, 0 ;  Stash right in R3
72 : LDC 1, 10(0) ;  Load integer literal into R1
73 : ADD 2, 1, 0 ;  Move left to R2
74 : ADD 1, 3, 0 ;  Restore right to R1
75 : MUL 1, 2, 1 ;  R1 = left * right
76 : ADD 2, 1, 0 ;  Move left to R2
77 : LD 1, 2(4) ;  Load parameter 'b' via FP
78 : DIV 1, 2, 1 ;  R1 = left / right
79 : ST 1, 1(5) ;  Store print arg in callee frame
80 : LDA 6, 83(0) ;  Return address
81 : ST 6, 0(5) ;  Store RA in callee frame
82 : LDA 7, 13(0) ;  Call print
83 : LDC 2, 3(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop callee frame
85 : LDA 4, 5(5) ;  Compute callee frame base (temp)
86 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
87 : LDA 4, 4(5) ;  Compute callee frame base (temp)
88 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
89 : LDC 1, 10(0) ;  Load integer literal into R1
90 : ADD 3, 1, 0 ;  Stash right in R3
91 : LD 1, 1(4) ;  Load parameter 'a' via FP
92 : ADD 2, 1, 0 ;  Move left to R2
93 : ADD 1, 3, 0 ;  Restore right to R1
94 : MUL 1, 2, 1 ;  R1 = left * right
95 : ST 1, 1(5) ;  Store argument 0 in callee frame
96 : LD 1, 2(4) ;  Load parameter 'b' via FP
97 : ST 1, 2(5) ;  Store argument 1 in callee frame
98 : LDA 6, 101(0) ;  Return address
99 : ST 6, 0(5) ;  Store RA in callee frame
100 : LDA 7, 49(0) ;  Call MOD
101 : LD 1, 3(5) ;  Load callee result
102 : LDC 2, 4(0) ;  Caller frame size
103 : SUB 5, 5, 2 ;  Pop callee frame
104 : ST 1, 1(5) ;  Store argument 0 in callee frame
105 : LD 1, 2(4) ;  Load parameter 'b' via FP
106 : ST 1, 2(5) ;  Store argument 1 in callee frame
107 : LDC 1, 1(0) ;  Load integer literal into R1
108 : ADD 3, 1, 0 ;  Stash right in R3
109 : LD 1, 3(4) ;  Load parameter 'n' via FP
110 : ADD 2, 1, 0 ;  Move left to R2
111 : ADD 1, 3, 0 ;  Restore right to R1
112 : SUB 1, 2, 1 ;  R1 = left - right
113 : ST 1, 3(5) ;  Store argument 2 in callee frame
114 : LDA 6, 117(0) ;  Return address
115 : ST 6, 0(5) ;  Store RA in callee frame
116 : LDA 7, 16(0) ;  Call main
117 : LD 1, 4(5) ;  Load callee result
118 : LDC 2, 5(0) ;  Caller frame size
119 : SUB 5, 5, 2 ;  Pop callee frame
120 : ST 1, 4(4) ;  Store function result (via FP)
121 : LD 6, 0(4) ;  Load return address (via FP)
122 : LDA 7, 0(6) ;  Return to caller
