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
14 : LDC 1, 1(0) ;  Load integer literal into R1
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 1(5) ;  Load parameter 'm'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : SUB 1, 2, 1 ;  left - right
20 : JEQ 1, 2(7) ;  if 0 then true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 28(0) ;  If false, jump to ELSE
25 : LD 1, 2(5) ;  Load parameter 'n'
26 : ST 1, 3(5) ;  Store into current frame's return slot
27 : LDA 7, 79(0) ;  Skip ELSE
28 : LDA 4, 4(5) ;  Compute callee frame base
29 : ADD 5, 4, 0 ;  Push callee frame
30 : LD 1, 2(5) ;  Load parameter 'n'
31 : ST 1, 1(5) ;  Store argument 0 in callee frame
32 : LD 1, 1(5) ;  Load parameter 'm'
33 : ST 1, 2(5) ;  Store argument 1 in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 82(0) ;  Call MOD
37 : LD 1, 3(5) ;  Load callee result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : ADD 2, 1, 0 ;  Move left to R2
41 : LDC 1, 0(0) ;  Load integer literal into R1
42 : SUB 1, 2, 1 ;  left - right
43 : JEQ 1, 2(7) ;  if 0 then true
44 : LDC 1, 0(0) ;  false
45 : LDA 7, 1(7) ;  skip setting true
46 : LDC 1, 1(0) ;  true
47 : JEQ 1, 56(0) ;  If false, jump to ELSE
48 : LD 1, 1(5) ;  Load parameter 'm'
49 : ADD 3, 1, 0 ;  Stash right in R3
50 : LD 1, 2(5) ;  Load parameter 'n'
51 : ADD 2, 1, 0 ;  Move left to R2
52 : ADD 1, 3, 0 ;  Restore right to R1
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : ST 1, 3(5) ;  Store into current frame's return slot
55 : LDA 7, 79(0) ;  Skip ELSE
56 : LDA 4, 5(5) ;  Compute callee frame base
57 : ADD 5, 4, 0 ;  Push callee frame
58 : LD 1, 1(5) ;  Load parameter 'm'
59 : ST 1, 1(5) ;  Store argument 0 in callee frame
60 : LD 1, 2(5) ;  Load parameter 'n'
61 : ST 1, 2(5) ;  Store argument 1 in callee frame
62 : LD 1, 1(5) ;  Load parameter 'm'
63 : ADD 3, 1, 0 ;  Stash right in R3
64 : LD 1, 2(5) ;  Load parameter 'n'
65 : ADD 2, 1, 0 ;  Move left to R2
66 : ADD 1, 3, 0 ;  Restore right to R1
67 : DIV 1, 2, 1 ;  R1 = left / right
68 : ADD 2, 1, 0 ;  Move left to R2
69 : LDC 1, 1(0) ;  Load integer literal into R1
70 : ADD 1, 2, 1 ;  R1 = left + right
71 : ST 1, 3(5) ;  Store argument 2 in callee frame
72 : LDA 6, 75(0) ;  Return address
73 : ST 6, 0(5) ;  Store RA in callee frame
74 : LDA 7, 99(0) ;  Call print_and_continue
75 : LD 1, 4(5) ;  Load callee result
76 : LDC 2, 5(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : ST 1, 3(5) ;  Store result into caller frame
79 : LD 1, 3(5) ;  Load main return value
80 : LD 6, 0(5) ;  Load return address
81 : LDA 7, 0(6) ;  Return from main
82 : LD 1, 2(5) ;  Load parameter 'n'
83 : ADD 3, 1, 0 ;  Stash right in R3
84 : LD 1, 1(5) ;  Load parameter 'm'
85 : ADD 2, 1, 0 ;  Move left to R2
86 : ADD 1, 3, 0 ;  Restore right to R1
87 : DIV 1, 2, 1 ;  R1 = left / right
88 : ADD 2, 1, 0 ;  Move left to R2
89 : LD 1, 2(5) ;  Load parameter 'n'
90 : MUL 1, 2, 1 ;  R1 = left * right
91 : ADD 3, 1, 0 ;  Stash right in R3
92 : LD 1, 1(5) ;  Load parameter 'm'
93 : ADD 2, 1, 0 ;  Move left to R2
94 : ADD 1, 3, 0 ;  Restore right to R1
95 : SUB 1, 2, 1 ;  R1 = left - right
96 : ST 1, 3(5) ;  Store function result
97 : LD 6, 0(5) ;  Load return address
98 : LDA 7, 0(6) ;  Return to caller
99 : LDA 4, 3(5) ;  Compute callee frame base
100 : ADD 5, 4, 0 ;  Push callee frame
101 : LD 1, 3(5) ;  Load parameter 'unit'
102 : ST 1, 1(5) ;  Store print arg in callee frame
103 : LDA 6, 106(0) ;  Return address
104 : ST 6, 0(5) ;  Store RA in callee frame
105 : LDA 7, 11(0) ;  Call print
106 : LDC 2, 3(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop callee frame
108 : LDA 4, 4(5) ;  Compute callee frame base
109 : ADD 5, 4, 0 ;  Push callee frame
110 : LD 1, 1(5) ;  Load parameter 'm'
111 : ADD 3, 1, 0 ;  Stash right in R3
112 : LD 1, 3(5) ;  Load parameter 'unit'
113 : ADD 2, 1, 0 ;  Move left to R2
114 : ADD 1, 3, 0 ;  Restore right to R1
115 : MUL 1, 2, 1 ;  R1 = left * right
116 : ADD 2, 1, 0 ;  Move left to R2
117 : LD 1, 2(5) ;  Load parameter 'n'
118 : SUB 1, 2, 1 ;  R1 = left - right
119 : ST 1, 1(5) ;  Store argument 0 in callee frame
120 : LD 1, 3(5) ;  Load parameter 'unit'
121 : ADD 3, 1, 0 ;  Stash right in R3
122 : LD 1, 2(5) ;  Load parameter 'n'
123 : ADD 2, 1, 0 ;  Move left to R2
124 : ADD 1, 3, 0 ;  Restore right to R1
125 : MUL 1, 2, 1 ;  R1 = left * right
126 : ST 1, 2(5) ;  Store argument 1 in callee frame
127 : LDA 6, 130(0) ;  Return address
128 : ST 6, 0(5) ;  Store RA in callee frame
129 : LDA 7, 14(0) ;  Call main
130 : LD 1, 3(5) ;  Load callee result
131 : LDC 2, 4(0) ;  Caller frame size
132 : SUB 5, 5, 2 ;  Pop callee frame
133 : ST 1, 4(5) ;  Store function result
134 : LD 6, 0(5) ;  Load return address
135 : LDA 7, 0(6) ;  Return to caller
