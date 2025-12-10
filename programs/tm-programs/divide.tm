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
29 : LDA 7, 48(0) ;  Skip ELSE
30 : LD 1, 1(5) ;  Load parameter 'a'
31 : LDA 4, 5(5) ;  [JIT] callee frame base
32 : ST 1, 1(4) ;  Store arg 0 in callee frame
33 : LD 1, 2(5) ;  Load parameter 'b'
34 : LDA 4, 5(5) ;  [JIT] callee frame base
35 : ST 1, 2(4) ;  Store arg 1 in callee frame
36 : LD 1, 3(5) ;  Load parameter 'n'
37 : LDA 4, 5(5) ;  [JIT] callee frame base
38 : ST 1, 3(4) ;  Store arg 2 in callee frame
39 : LDA 4, 5(5) ;  [JIT] callee frame base
40 : LDA 6, 44(0) ;  Return address
41 : ST 6, 0(4) ;  Store RA in callee frame
42 : ADD 5, 4, 0 ;  Push callee frame
43 : LDA 7, 68(0) ;  Call printAndDivide
44 : LD 1, 4(5) ;  Load callee result
45 : LDC 2, 5(0) ;  Caller frame size
46 : SUB 5, 5, 2 ;  Pop callee frame
47 : ST 1, 4(5) ;  Store result into caller frame
48 : LD 1, 4(5) ;  Load main return value
49 : LD 6, 0(5) ;  Load return address
50 : LDA 7, 0(6) ;  Return from main
51 : LD 1, 2(5) ;  Load parameter 'n'
52 : ADD 3, 1, 0 ;  Stash right in R3
53 : LD 1, 1(5) ;  Load parameter 'm'
54 : ADD 2, 1, 0 ;  Move left to R2
55 : ADD 1, 3, 0 ;  Restore right to R1
56 : DIV 1, 2, 1 ;  R1 = left / right
57 : ADD 2, 1, 0 ;  Move left to R2
58 : LD 1, 2(5) ;  Load parameter 'n'
59 : MUL 1, 2, 1 ;  R1 = left * right
60 : ADD 3, 1, 0 ;  Stash right in R3
61 : LD 1, 1(5) ;  Load parameter 'm'
62 : ADD 2, 1, 0 ;  Move left to R2
63 : ADD 1, 3, 0 ;  Restore right to R1
64 : SUB 1, 2, 1 ;  R1 = left - right
65 : ST 1, 3(5) ;  Store function result
66 : LD 6, 0(5) ;  Load return address
67 : LDA 7, 0(6) ;  Return to caller
68 : LD 1, 1(5) ;  Load parameter 'a'
69 : ADD 3, 1, 0 ;  Stash right in R3
70 : LDC 1, 10(0) ;  Load integer literal into R1
71 : ADD 2, 1, 0 ;  Move left to R2
72 : ADD 1, 3, 0 ;  Restore right to R1
73 : MUL 1, 2, 1 ;  R1 = left * right
74 : ADD 2, 1, 0 ;  Move left to R2
75 : LD 1, 2(5) ;  Load parameter 'b'
76 : DIV 1, 2, 1 ;  R1 = left / right
77 : LDA 4, 3(5) ;  [JIT] callee frame base
78 : LDA 6, 82(0) ;  Return address
79 : ST 6, 0(4) ;  Store RA in callee frame
80 : ADD 5, 4, 0 ;  Push callee frame
81 : LDA 7, 13(0) ;  Call print
82 : LDC 2, 3(0) ;  Caller frame size
83 : SUB 5, 5, 2 ;  Pop callee frame
84 : LDC 1, 10(0) ;  Load integer literal into R1
85 : ADD 3, 1, 0 ;  Stash right in R3
86 : LD 1, 1(5) ;  Load parameter 'a'
87 : ADD 2, 1, 0 ;  Move left to R2
88 : ADD 1, 3, 0 ;  Restore right to R1
89 : MUL 1, 2, 1 ;  R1 = left * right
90 : LDA 4, 4(5) ;  [JIT] callee frame base
91 : ST 1, 1(4) ;  Store arg 0 in callee frame
92 : LD 1, 2(5) ;  Load parameter 'b'
93 : LDA 4, 4(5) ;  [JIT] callee frame base
94 : ST 1, 2(4) ;  Store arg 1 in callee frame
95 : LDA 4, 4(5) ;  [JIT] callee frame base
96 : LDA 6, 100(0) ;  Return address
97 : ST 6, 0(4) ;  Store RA in callee frame
98 : ADD 5, 4, 0 ;  Push callee frame
99 : LDA 7, 51(0) ;  Call MOD
100 : LD 1, 3(5) ;  Load callee result
101 : LDC 2, 4(0) ;  Caller frame size
102 : SUB 5, 5, 2 ;  Pop callee frame
103 : LDA 4, 5(5) ;  [JIT] callee frame base
104 : ST 1, 1(4) ;  Store arg 0 in callee frame
105 : LD 1, 2(5) ;  Load parameter 'b'
106 : LDA 4, 5(5) ;  [JIT] callee frame base
107 : ST 1, 2(4) ;  Store arg 1 in callee frame
108 : LDC 1, 1(0) ;  Load integer literal into R1
109 : ADD 3, 1, 0 ;  Stash right in R3
110 : LD 1, 3(5) ;  Load parameter 'n'
111 : ADD 2, 1, 0 ;  Move left to R2
112 : ADD 1, 3, 0 ;  Restore right to R1
113 : SUB 1, 2, 1 ;  R1 = left - right
114 : LDA 4, 5(5) ;  [JIT] callee frame base
115 : ST 1, 3(4) ;  Store arg 2 in callee frame
116 : LDA 4, 5(5) ;  [JIT] callee frame base
117 : LDA 6, 121(0) ;  Return address
118 : ST 6, 0(4) ;  Store RA in callee frame
119 : ADD 5, 4, 0 ;  Push callee frame
120 : LDA 7, 16(0) ;  Call main
121 : LD 1, 4(5) ;  Load callee result
122 : LDC 2, 5(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop callee frame
124 : ST 1, 4(5) ;  Store function result
125 : LD 6, 0(5) ;  Load return address
126 : LDA 7, 0(6) ;  Return to caller
