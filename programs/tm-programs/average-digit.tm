0 : LDC 5, 2(0) ;  SP = main frame base
1 : ADD 4, 5, 0 ;  FP = SP (enter main)
2 : LD 2, 1(0) ;  Load CLI arg 1 -> R2
3 : ST 2, 1(5) ;  Store arg 1 at main frame
4 : LDA 6, 2(7) ;  RA = next after branch
5 : ST 6, 0(5) ;  Store RA in main frame
6 : LDA 7, 12(0) ;  Jump to main
7 : OUT 1, 0, 0 ;  Print R1
8 : HALT 0, 0, 0 ;  Halt
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(4) ;  Load RA via FP
11 : LDA 7, 0(6) ;  Return
12 : ADD 4, 5, 0 ;  FP = SP at 12 entry
13 : LDA 6, 19(0) ;  Prepare RA label
14 : LDA 2, 5(5) ;  callee base size -> R2
15 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
16 : ST 6, 0(5) ;  store RA in callee frame
17 : ST 2, 1(5) ;  TEMP overwrite: fix below
18 : LDA 7, 79(0) ;  Call average_digit
19 : LD 1, 4(5) ;  load callee result
20 : LDC 2, 5(0) ;  size to pop
21 : SUB 5, 5, 2 ;  pop callee frame
22 : ST 1, 2(4) ;  store result into caller frame (via FP)
23 : LD 1, 2(4) ;  R1 = return value (via FP)
24 : LD 6, 0(4) ;  RA from FP
25 : LDA 7, 0(6) ;  return
26 : ADD 4, 5, 0 ;  FP = SP at 26 entry
27 : LD 1, 2(4) ;  load 'n' via FP
28 : ADD 3, 1, 0 ;  stash right in R3
29 : LD 1, 2(4) ;  load 'n' via FP
30 : ADD 3, 1, 0 ;  stash right in R3
31 : LD 1, 1(4) ;  load 'm' via FP
32 : ADD 2, 1, 0 ;  stash left in R2
33 : ADD 1, 3, 0 ;  restore right to R1
34 : DIV 1, 2, 1 ;  left / right
35 : ADD 2, 1, 0 ;  stash left in R2
36 : ADD 1, 3, 0 ;  restore right to R1
37 : MUL 1, 2, 1 ;  left * right
38 : ADD 3, 1, 0 ;  stash right in R3
39 : LD 1, 1(4) ;  load 'm' via FP
40 : ADD 2, 1, 0 ;  stash left in R2
41 : ADD 1, 3, 0 ;  restore right to R1
42 : SUB 1, 2, 1 ;  left - right
43 : ST 1, 3(4) ;  store result in return slot (via FP)
44 : LD 6, 0(4) ;  load RA (via FP)
45 : LDA 7, 0(6) ;  return to caller
46 : ADD 4, 5, 0 ;  FP = SP at 46 entry
47 : LD 1, 1(4) ;  load 'sum' via FP
48 : ADD 2, 1, 0 ;  Save arg0 in R2
49 : LD 1, 2(4) ;  load 'n' via FP
50 : ADD 3, 1, 0 ;  Save arg1 in R3
51 : LDA 6, 59(0) ;  Prepare RA label
52 : LDA 2, 3(5) ;  callee base size -> R2
53 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
54 : ST 6, 0(5) ;  store RA in callee frame
55 : ST 2, 1(5) ;  TEMP overwrite: fix below
56 : ST 2, 1(5) ;  store arg0 from R2
57 : ST 3, 2(5) ;  store arg1 from R3
58 : LDA 7, 9(0) ;  Call print
59 : LD 1, 2(5) ;  load callee result
60 : LDC 2, 3(0) ;  size to pop
61 : SUB 5, 5, 2 ;  pop callee frame
62 : ADD 2, 1, 0 ;  Save arg0 in R2
63 : ADD 3, 1, 0 ;  Save arg1 in R3
64 : LDA 6, 72(0) ;  Prepare RA label
65 : LDA 2, 3(5) ;  callee base size -> R2
66 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
67 : ST 6, 0(5) ;  store RA in callee frame
68 : ST 2, 1(5) ;  TEMP overwrite: fix below
69 : ST 2, 1(5) ;  store arg0 from R2
70 : ST 3, 2(5) ;  store arg1 from R3
71 : LDA 7, 9(0) ;  Call print
72 : LD 1, 2(5) ;  load callee result
73 : LDC 2, 3(0) ;  size to pop
74 : SUB 5, 5, 2 ;  pop callee frame
75 : LD 1, 2(4) ;  load 'n' via FP
76 : ST 1, 3(4) ;  store result in return slot (via FP)
77 : LD 6, 0(4) ;  load RA (via FP)
78 : LDA 7, 0(6) ;  return to caller
79 : ADD 4, 5, 0 ;  FP = SP at 79 entry
80 : LDC 1, 10(0) ;  literal -> R1
81 : ADD 3, 1, 0 ;  stash right in R3
82 : LD 1, 1(4) ;  load 'n' via FP
83 : ADD 2, 1, 0 ;  stash left in R2
84 : ADD 1, 3, 0 ;  restore right to R1
85 : SUB 1, 2, 1 ;  left - right
86 : JLT 1, 2(7) ;  if < 0 then true
87 : LDC 1, 0(0) ;  false
88 : LDA 7, 1(7) ;  skip
89 : LDC 1, 1(0) ;  true
90 : JEQ 1, 117(0) ;  if false -> ELSE
91 : LD 1, 1(4) ;  load 'n' via FP
92 : ADD 3, 1, 0 ;  stash right in R3
93 : LD 1, 2(4) ;  load 'sum' via FP
94 : ADD 2, 1, 0 ;  stash left in R2
95 : ADD 1, 3, 0 ;  restore right to R1
96 : ADD 1, 2, 1 ;  left + right
97 : ADD 2, 1, 0 ;  Save arg0 in R2
98 : LDC 1, 1(0) ;  literal -> R1
99 : ADD 3, 1, 0 ;  stash right in R3
100 : LD 1, 3(4) ;  load 'i' via FP
101 : ADD 2, 1, 0 ;  stash left in R2
102 : ADD 1, 3, 0 ;  restore right to R1
103 : ADD 1, 2, 1 ;  left + right
104 : ADD 3, 1, 0 ;  Save arg1 in R3
105 : LDA 6, 113(0) ;  Prepare RA label
106 : LDA 2, 4(5) ;  callee base size -> R2
107 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
108 : ST 6, 0(5) ;  store RA in callee frame
109 : ST 2, 1(5) ;  TEMP overwrite: fix below
110 : ST 2, 1(5) ;  store arg0 from R2
111 : ST 3, 2(5) ;  store arg1 from R3
112 : LDA 7, 46(0) ;  Call print_and_return
113 : LD 1, 3(5) ;  load callee result
114 : LDC 2, 4(0) ;  size to pop
115 : SUB 5, 5, 2 ;  pop callee frame
116 : LDA 7, 126(0) ;  skip ELSE
117 : LDA 6, 123(0) ;  Prepare RA label
118 : LDA 2, 5(5) ;  callee base size -> R2
119 : ADD 5, 2, 0 ;  push callee frame (SP = callee)
120 : ST 6, 0(5) ;  store RA in callee frame
121 : ST 2, 1(5) ;  TEMP overwrite: fix below
122 : LDA 7, 79(0) ;  Call average_digit
123 : LD 1, 4(5) ;  load callee result
124 : LDC 2, 5(0) ;  size to pop
125 : SUB 5, 5, 2 ;  pop callee frame
126 : ST 1, 4(4) ;  store result in return slot (via FP)
127 : LD 6, 0(4) ;  load RA (via FP)
128 : LDA 7, 0(6) ;  return to caller
