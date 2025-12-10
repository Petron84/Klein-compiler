0 : LDC 5, 3(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LD 2, 2(0) ;  Load CLI arg 2 -> R2
5 : ST 2, 2(5) ;  Store arg 2 at main frame
6 : LDA 6, 2(7) ;  RA = next after branch
7 : ST 6, 0(5) ;  Store RA in main frame
8 : LDA 7, 14(0) ;  Jump to main
9 : OUT 1, 0, 0 ;  Print R1
10 : HALT 0, 0, 0 ;  Halt
11 : OUT 1, 0, 0 ;  print(R1)
12 : LD 6, 0(4) ;  Load RA via FP
13 : LDA 7, 0(6) ;  Return
14 : ADD 4, 5, 0 ;  FP = SP at 14 entry
15 : LD 1, 1(4) ;  load 'x' via FP
16 : ADD 2, 1, 0 ;  Save arg0 in R2
17 : LDA 6, 27(0) ;  Prepare RA label
18 : LDA 2, 3(5) ;  callee base size -> R2
19 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
20 : ST 6, 0(5) ;  store RA in callee frame
21 : ST 2, 1(5) ;  TEMP overwrite: fix below
22 : ST 2, 1(5) ; store arg0 from R2
23 : ST 2, 0(0) ;  noop slot
24 : ST 2, 0(0) ;  noop slot
25 : ST 2, 0(0) ;  noop
26 : LDA 7, 105(0) ;  Call double
27 : LD 1, 2(5) ;  load callee result
28 : LDC 2, 3(0) ;  size to pop
29 : SUB 5, 5, 2 ;  pop callee frame
30 : ADD 2, 1, 0 ;  Save arg0 in R2
31 : LD 1, 2(4) ;  load 'y' via FP
32 : ADD 2, 1, 0 ;  Save arg0 in R2
33 : LDA 6, 43(0) ;  Prepare RA label
34 : LDA 2, 3(5) ;  callee base size -> R2
35 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
36 : ST 6, 0(5) ;  store RA in callee frame
37 : ST 2, 1(5) ;  TEMP overwrite: fix below
38 : ST 2, 1(5) ; store arg0 from R2
39 : ST 2, 0(0) ;  noop slot
40 : ST 2, 0(0) ;  noop slot
41 : ST 2, 0(0) ;  noop
42 : LDA 7, 72(0) ;  Call triple
43 : LD 1, 2(5) ;  load callee result
44 : LDC 2, 3(0) ;  size to pop
45 : SUB 5, 5, 2 ;  pop callee frame
46 : ADD 3, 1, 0 ;  Save arg1 in R3
47 : LDA 6, 55(0) ;  Prepare RA label
48 : LDA 2, 4(5) ;  callee base size -> R2
49 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
50 : ST 6, 0(5) ;  store RA in callee frame
51 : ST 2, 1(5) ;  TEMP overwrite: fix below
52 : ST 2, 1(5) ;  store arg0 from R2
53 : ST 3, 2(5) ;  store arg1 from R3
54 : LDA 7, 124(0) ;  Call add
55 : LD 1, 3(5) ;  load callee result
56 : LDC 2, 4(0) ;  size to pop
57 : SUB 5, 5, 2 ;  pop callee frame
58 : ST 1, 3(4) ;  store result into caller frame (via FP)
59 : LD 1, 3(4) ;  R1 = return value (via FP)
60 : LD 6, 0(4) ;  RA from FP
61 : LDA 7, 0(6) ;  return
62 : ADD 4, 5, 0 ;  FP = SP at 62 entry
63 : LDC 1, 2(0) ;  literal -> R1
64 : ADD 3, 1, 0 ;  stash right in R3
65 : LD 1, 1(4) ;  load 'k' via FP
66 : ADD 2, 1, 0 ;  stash left in R2
67 : ADD 1, 3, 0 ;  restore right to R1
68 : MUL 1, 2, 1 ;  left * right
69 : ST 1, 2(4) ;  store result in return slot (via FP)
70 : LD 6, 0(4) ;  load RA (via FP)
71 : LDA 7, 0(6) ;  return to caller
72 : ADD 4, 5, 0 ;  FP = SP at 72 entry
73 : LD 1, 1(4) ;  load 'n' via FP
74 : ADD 2, 1, 0 ;  Save arg0 in R2
75 : LD 1, 1(4) ;  load 'n' via FP
76 : ADD 2, 1, 0 ;  Save arg0 in R2
77 : LDA 6, 87(0) ;  Prepare RA label
78 : LDA 2, 3(5) ;  callee base size -> R2
79 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
80 : ST 6, 0(5) ;  store RA in callee frame
81 : ST 2, 1(5) ;  TEMP overwrite: fix below
82 : ST 2, 1(5) ; store arg0 from R2
83 : ST 2, 0(0) ;  noop slot
84 : ST 2, 0(0) ;  noop slot
85 : ST 2, 0(0) ;  noop
86 : LDA 7, 62(0) ;  Call mul2
87 : LD 1, 2(5) ;  load callee result
88 : LDC 2, 3(0) ;  size to pop
89 : SUB 5, 5, 2 ;  pop callee frame
90 : ADD 3, 1, 0 ;  Save arg1 in R3
91 : LDA 6, 99(0) ;  Prepare RA label
92 : LDA 2, 4(5) ;  callee base size -> R2
93 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
94 : ST 6, 0(5) ;  store RA in callee frame
95 : ST 2, 1(5) ;  TEMP overwrite: fix below
96 : ST 2, 1(5) ;  store arg0 from R2
97 : ST 3, 2(5) ;  store arg1 from R3
98 : LDA 7, 124(0) ;  Call add
99 : LD 1, 3(5) ;  load callee result
100 : LDC 2, 4(0) ;  size to pop
101 : SUB 5, 5, 2 ;  pop callee frame
102 : ST 1, 2(4) ;  store result in return slot (via FP)
103 : LD 6, 0(4) ;  load RA (via FP)
104 : LDA 7, 0(6) ;  return to caller
105 : ADD 4, 5, 0 ;  FP = SP at 105 entry
106 : LD 1, 1(4) ;  load 'n' via FP
107 : ADD 2, 1, 0 ;  Save arg0 in R2
108 : LDA 6, 118(0) ;  Prepare RA label
109 : LDA 2, 3(5) ;  callee base size -> R2
110 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
111 : ST 6, 0(5) ;  store RA in callee frame
112 : ST 2, 1(5) ;  TEMP overwrite: fix below
113 : ST 2, 1(5) ; store arg0 from R2
114 : ST 2, 0(0) ;  noop slot
115 : ST 2, 0(0) ;  noop slot
116 : ST 2, 0(0) ;  noop
117 : LDA 7, 62(0) ;  Call mul2
118 : LD 1, 2(5) ;  load callee result
119 : LDC 2, 3(0) ;  size to pop
120 : SUB 5, 5, 2 ;  pop callee frame
121 : ST 1, 2(4) ;  store result in return slot (via FP)
122 : LD 6, 0(4) ;  load RA (via FP)
123 : LDA 7, 0(6) ;  return to caller
124 : ADD 4, 5, 0 ;  FP = SP at 124 entry
125 : LD 1, 2(4) ;  load 'b' via FP
126 : ADD 3, 1, 0 ;  stash right in R3
127 : LD 1, 1(4) ;  load 'a' via FP
128 : ADD 2, 1, 0 ;  stash left in R2
129 : ADD 1, 3, 0 ;  restore right to R1
130 : ADD 1, 2, 1 ;  left + right
131 : ST 1, 3(4) ;  store result in return slot (via FP)
132 : LD 6, 0(4) ;  load RA (via FP)
133 : LDA 7, 0(6) ;  return to caller
