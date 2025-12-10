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
15 : LDC 1, 1(0) ;  Load integer literal into R1
16 : ADD 3, 1, 0 ;  Stash right in R3
17 : LD 1, 1(4) ;  Load parameter 'm' via FP
18 : ADD 2, 1, 0 ;  Move left to R2
19 : ADD 1, 3, 0 ;  Restore right to R1
20 : SUB 1, 2, 1 ;  left - right
21 : JEQ 1, 2(7) ;  if 0 then true
22 : LDC 1, 0(0) ;  false
23 : LDA 7, 1(7) ;  skip setting true
24 : LDC 1, 1(0) ;  true
25 : JEQ 1, 29(0) ;  If false, jump to ELSE
26 : LD 1, 2(4) ;  Load parameter 'n' via FP
27 : ST 1, 3(4) ;  Store into current frame's return slot (via FP)
28 : LDA 7, 80(0) ;  Skip ELSE
29 : LDA 4, 4(5) ;  Compute callee frame base (temp)
30 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
31 : LD 1, 2(4) ;  Load parameter 'n' via FP
32 : ST 1, 1(5) ;  Store argument 0 in callee frame
33 : LD 1, 1(4) ;  Load parameter 'm' via FP
34 : ST 1, 2(5) ;  Store argument 1 in callee frame
35 : LDA 6, 38(0) ;  Return address
36 : ST 6, 0(5) ;  Store RA in callee frame
37 : LDA 7, 83(0) ;  Call MOD
38 : LD 1, 3(5) ;  Load callee result
39 : LDC 2, 4(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ADD 2, 1, 0 ;  Move left to R2
42 : LDC 1, 0(0) ;  Load integer literal into R1
43 : SUB 1, 2, 1 ;  left - right
44 : JEQ 1, 2(7) ;  if 0 then true
45 : LDC 1, 0(0) ;  false
46 : LDA 7, 1(7) ;  skip setting true
47 : LDC 1, 1(0) ;  true
48 : JEQ 1, 57(0) ;  If false, jump to ELSE
49 : LD 1, 1(4) ;  Load parameter 'm' via FP
50 : ADD 3, 1, 0 ;  Stash right in R3
51 : LD 1, 2(4) ;  Load parameter 'n' via FP
52 : ADD 2, 1, 0 ;  Move left to R2
53 : ADD 1, 3, 0 ;  Restore right to R1
54 : DIV 1, 2, 1 ;  R1 = left / right
55 : ST 1, 3(4) ;  Store into current frame's return slot (via FP)
56 : LDA 7, 80(0) ;  Skip ELSE
57 : LDA 4, 5(5) ;  Compute callee frame base (temp)
58 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
59 : LD 1, 1(4) ;  Load parameter 'm' via FP
60 : ST 1, 1(5) ;  Store argument 0 in callee frame
61 : LD 1, 2(4) ;  Load parameter 'n' via FP
62 : ST 1, 2(5) ;  Store argument 1 in callee frame
63 : LD 1, 1(4) ;  Load parameter 'm' via FP
64 : ADD 3, 1, 0 ;  Stash right in R3
65 : LD 1, 2(4) ;  Load parameter 'n' via FP
66 : ADD 2, 1, 0 ;  Move left to R2
67 : ADD 1, 3, 0 ;  Restore right to R1
68 : DIV 1, 2, 1 ;  R1 = left / right
69 : ADD 2, 1, 0 ;  Move left to R2
70 : LDC 1, 1(0) ;  Load integer literal into R1
71 : ADD 1, 2, 1 ;  R1 = left + right
72 : ST 1, 3(5) ;  Store argument 2 in callee frame
73 : LDA 6, 76(0) ;  Return address
74 : ST 6, 0(5) ;  Store RA in callee frame
75 : LDA 7, 101(0) ;  Call print_and_continue
76 : LD 1, 4(5) ;  Load callee result
77 : LDC 2, 5(0) ;  Caller frame size
78 : SUB 5, 5, 2 ;  Pop callee frame
79 : ST 1, 3(4) ;  Store result into caller frame (via FP)
80 : LD 1, 3(4) ;  Load main return value (via FP)
81 : LD 6, 0(4) ;  Load return address (via FP)
82 : LDA 7, 0(6) ;  Return from main
83 : ADD 4, 5, 0 ;  Set FP at 83 entry
84 : LD 1, 2(4) ;  Load parameter 'n' via FP
85 : ADD 3, 1, 0 ;  Stash right in R3
86 : LD 1, 1(4) ;  Load parameter 'm' via FP
87 : ADD 2, 1, 0 ;  Move left to R2
88 : ADD 1, 3, 0 ;  Restore right to R1
89 : DIV 1, 2, 1 ;  R1 = left / right
90 : ADD 2, 1, 0 ;  Move left to R2
91 : LD 1, 2(4) ;  Load parameter 'n' via FP
92 : MUL 1, 2, 1 ;  R1 = left * right
93 : ADD 3, 1, 0 ;  Stash right in R3
94 : LD 1, 1(4) ;  Load parameter 'm' via FP
95 : ADD 2, 1, 0 ;  Move left to R2
96 : ADD 1, 3, 0 ;  Restore right to R1
97 : SUB 1, 2, 1 ;  R1 = left - right
98 : ST 1, 3(4) ;  Store function result (via FP)
99 : LD 6, 0(4) ;  Load return address (via FP)
100 : LDA 7, 0(6) ;  Return to caller
101 : ADD 4, 5, 0 ;  Set FP at 101 entry
102 : LDA 4, 3(5) ;  Compute callee frame base (temp)
103 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
104 : LD 1, 3(4) ;  Load parameter 'unit' via FP
105 : ST 1, 1(5) ;  Store print arg in callee frame
106 : LDA 6, 109(0) ;  Return address
107 : ST 6, 0(5) ;  Store RA in callee frame
108 : LDA 7, 11(0) ;  Call print
109 : LDC 2, 3(0) ;  Caller frame size
110 : SUB 5, 5, 2 ;  Pop callee frame
111 : LDA 4, 4(5) ;  Compute callee frame base (temp)
112 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
113 : LD 1, 1(4) ;  Load parameter 'm' via FP
114 : ADD 3, 1, 0 ;  Stash right in R3
115 : LD 1, 3(4) ;  Load parameter 'unit' via FP
116 : ADD 2, 1, 0 ;  Move left to R2
117 : ADD 1, 3, 0 ;  Restore right to R1
118 : MUL 1, 2, 1 ;  R1 = left * right
119 : ADD 2, 1, 0 ;  Move left to R2
120 : LD 1, 2(4) ;  Load parameter 'n' via FP
121 : SUB 1, 2, 1 ;  R1 = left - right
122 : ST 1, 1(5) ;  Store argument 0 in callee frame
123 : LD 1, 3(4) ;  Load parameter 'unit' via FP
124 : ADD 3, 1, 0 ;  Stash right in R3
125 : LD 1, 2(4) ;  Load parameter 'n' via FP
126 : ADD 2, 1, 0 ;  Move left to R2
127 : ADD 1, 3, 0 ;  Restore right to R1
128 : MUL 1, 2, 1 ;  R1 = left * right
129 : ST 1, 2(5) ;  Store argument 1 in callee frame
130 : LDA 6, 133(0) ;  Return address
131 : ST 6, 0(5) ;  Store RA in callee frame
132 : LDA 7, 14(0) ;  Call main
133 : LD 1, 3(5) ;  Load callee result
134 : LDC 2, 4(0) ;  Caller frame size
135 : SUB 5, 5, 2 ;  Pop callee frame
136 : ST 1, 4(4) ;  Store function result (via FP)
137 : LD 6, 0(4) ;  Load return address (via FP)
138 : LDA 7, 0(6) ;  Return to caller
