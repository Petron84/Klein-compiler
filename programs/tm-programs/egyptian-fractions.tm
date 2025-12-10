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
27 : LDA 7, 84(0) ;  Skip ELSE
28 : LD 1, 2(5) ;  Load parameter 'n'
29 : LDA 4, 4(5) ;  [JIT] callee frame base
30 : ST 1, 1(4) ;  Store arg 0 in callee frame
31 : LD 1, 1(5) ;  Load parameter 'm'
32 : LDA 4, 4(5) ;  [JIT] callee frame base
33 : ST 1, 2(4) ;  Store arg 1 in callee frame
34 : LDA 4, 4(5) ;  [JIT] callee frame base
35 : LDA 6, 39(0) ;  Return address
36 : ST 6, 0(4) ;  Store RA in callee frame
37 : ADD 5, 4, 0 ;  Push callee frame
38 : LDA 7, 87(0) ;  Call MOD
39 : LD 1, 3(5) ;  Load callee result
40 : LDC 2, 4(0) ;  Caller frame size
41 : SUB 5, 5, 2 ;  Pop callee frame
42 : ADD 2, 1, 0 ;  Move left to R2
43 : LDC 1, 0(0) ;  Load integer literal into R1
44 : SUB 1, 2, 1 ;  left - right
45 : JEQ 1, 2(7) ;  if 0 then true
46 : LDC 1, 0(0) ;  false
47 : LDA 7, 1(7) ;  skip setting true
48 : LDC 1, 1(0) ;  true
49 : JEQ 1, 58(0) ;  If false, jump to ELSE
50 : LD 1, 1(5) ;  Load parameter 'm'
51 : ADD 3, 1, 0 ;  Stash right in R3
52 : LD 1, 2(5) ;  Load parameter 'n'
53 : ADD 2, 1, 0 ;  Move left to R2
54 : ADD 1, 3, 0 ;  Restore right to R1
55 : DIV 1, 2, 1 ;  R1 = left / right
56 : ST 1, 3(5) ;  Store into current frame's return slot
57 : LDA 7, 84(0) ;  Skip ELSE
58 : LD 1, 1(5) ;  Load parameter 'm'
59 : LDA 4, 5(5) ;  [JIT] callee frame base
60 : ST 1, 1(4) ;  Store arg 0 in callee frame
61 : LD 1, 2(5) ;  Load parameter 'n'
62 : LDA 4, 5(5) ;  [JIT] callee frame base
63 : ST 1, 2(4) ;  Store arg 1 in callee frame
64 : LD 1, 1(5) ;  Load parameter 'm'
65 : ADD 3, 1, 0 ;  Stash right in R3
66 : LD 1, 2(5) ;  Load parameter 'n'
67 : ADD 2, 1, 0 ;  Move left to R2
68 : ADD 1, 3, 0 ;  Restore right to R1
69 : DIV 1, 2, 1 ;  R1 = left / right
70 : ADD 2, 1, 0 ;  Move left to R2
71 : LDC 1, 1(0) ;  Load integer literal into R1
72 : ADD 1, 2, 1 ;  R1 = left + right
73 : LDA 4, 5(5) ;  [JIT] callee frame base
74 : ST 1, 3(4) ;  Store arg 2 in callee frame
75 : LDA 4, 5(5) ;  [JIT] callee frame base
76 : LDA 6, 80(0) ;  Return address
77 : ST 6, 0(4) ;  Store RA in callee frame
78 : ADD 5, 4, 0 ;  Push callee frame
79 : LDA 7, 104(0) ;  Call print_and_continue
80 : LD 1, 4(5) ;  Load callee result
81 : LDC 2, 5(0) ;  Caller frame size
82 : SUB 5, 5, 2 ;  Pop callee frame
83 : ST 1, 3(5) ;  Store result into caller frame
84 : LD 1, 3(5) ;  Load main return value
85 : LD 6, 0(5) ;  Load return address
86 : LDA 7, 0(6) ;  Return from main
87 : LD 1, 2(5) ;  Load parameter 'n'
88 : ADD 3, 1, 0 ;  Stash right in R3
89 : LD 1, 1(5) ;  Load parameter 'm'
90 : ADD 2, 1, 0 ;  Move left to R2
91 : ADD 1, 3, 0 ;  Restore right to R1
92 : DIV 1, 2, 1 ;  R1 = left / right
93 : ADD 2, 1, 0 ;  Move left to R2
94 : LD 1, 2(5) ;  Load parameter 'n'
95 : MUL 1, 2, 1 ;  R1 = left * right
96 : ADD 3, 1, 0 ;  Stash right in R3
97 : LD 1, 1(5) ;  Load parameter 'm'
98 : ADD 2, 1, 0 ;  Move left to R2
99 : ADD 1, 3, 0 ;  Restore right to R1
100 : SUB 1, 2, 1 ;  R1 = left - right
101 : ST 1, 3(5) ;  Store function result
102 : LD 6, 0(5) ;  Load return address
103 : LDA 7, 0(6) ;  Return to caller
104 : LD 1, 3(5) ;  Load parameter 'unit'
105 : LDA 4, 3(5) ;  [JIT] callee frame base
106 : LDA 6, 110(0) ;  Return address
107 : ST 6, 0(4) ;  Store RA in callee frame
108 : ADD 5, 4, 0 ;  Push callee frame
109 : LDA 7, 11(0) ;  Call print
110 : LDC 2, 3(0) ;  Caller frame size
111 : SUB 5, 5, 2 ;  Pop callee frame
112 : LD 1, 1(5) ;  Load parameter 'm'
113 : ADD 3, 1, 0 ;  Stash right in R3
114 : LD 1, 3(5) ;  Load parameter 'unit'
115 : ADD 2, 1, 0 ;  Move left to R2
116 : ADD 1, 3, 0 ;  Restore right to R1
117 : MUL 1, 2, 1 ;  R1 = left * right
118 : ADD 2, 1, 0 ;  Move left to R2
119 : LD 1, 2(5) ;  Load parameter 'n'
120 : SUB 1, 2, 1 ;  R1 = left - right
121 : LDA 4, 4(5) ;  [JIT] callee frame base
122 : ST 1, 1(4) ;  Store arg 0 in callee frame
123 : LD 1, 3(5) ;  Load parameter 'unit'
124 : ADD 3, 1, 0 ;  Stash right in R3
125 : LD 1, 2(5) ;  Load parameter 'n'
126 : ADD 2, 1, 0 ;  Move left to R2
127 : ADD 1, 3, 0 ;  Restore right to R1
128 : MUL 1, 2, 1 ;  R1 = left * right
129 : LDA 4, 4(5) ;  [JIT] callee frame base
130 : ST 1, 2(4) ;  Store arg 1 in callee frame
131 : LDA 4, 4(5) ;  [JIT] callee frame base
132 : LDA 6, 136(0) ;  Return address
133 : ST 6, 0(4) ;  Store RA in callee frame
134 : ADD 5, 4, 0 ;  Push callee frame
135 : LDA 7, 14(0) ;  Call main
136 : LD 1, 3(5) ;  Load callee result
137 : LDC 2, 4(0) ;  Caller frame size
138 : SUB 5, 5, 2 ;  Pop callee frame
139 : ST 1, 4(5) ;  Store function result
140 : LD 6, 0(5) ;  Load return address
141 : LDA 7, 0(6) ;  Return to caller
