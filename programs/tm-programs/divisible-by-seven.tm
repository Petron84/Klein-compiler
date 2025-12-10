0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Mirror caller frame top (optional)
2 : LD 2, 1(0) ;  Load CLI arg 1 into R2
3 : ST 2, 1(5) ;  Store arg 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main frame
6 : LDA 7, 12(0) ;  Branch to main
7 : OUT 1, 0, 0 ;  Print main's result
8 : HALT 0, 0, 0 ;  Terminate program
9 : OUT 1, 0, 0 ;  print(R1)
10 : LD 6, 0(5) ;  Load return address
11 : LDA 7, 0(6) ;  Return
12 : LDA 4, 4(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LDC 1, 10(0) ;  Load integer literal into R1
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 1(5) ;  Load parameter 'n'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : DIV 1, 2, 1 ;  R1 = left / right
20 : ST 1, 1(5) ;  Store argument 0 in callee frame
21 : LDA 4, 4(5) ;  Compute callee frame base
22 : ADD 5, 4, 0 ;  Push callee frame
23 : LD 1, 1(5) ;  Load parameter 'n'
24 : ST 1, 1(5) ;  Store argument 0 in callee frame
25 : LDC 1, 10(0) ;  Load integer literal into R1
26 : ST 1, 2(5) ;  Store argument 1 in callee frame
27 : LDA 6, 30(0) ;  Return address
28 : ST 6, 0(5) ;  Store RA in callee frame
29 : LDA 7, 44(0) ;  Call MOD
30 : LD 1, 3(5) ;  Load callee result
31 : LDC 2, 4(0) ;  Caller frame size
32 : SUB 5, 5, 2 ;  Pop callee frame
33 : ST 1, 2(5) ;  Store argument 1 in callee frame
34 : LDA 6, 37(0) ;  Return address
35 : ST 6, 0(5) ;  Store RA in callee frame
36 : LDA 7, 138(0) ;  Call divisibleByParts
37 : LD 1, 3(5) ;  Load callee result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop callee frame
40 : ST 1, 2(5) ;  Store result into caller frame
41 : LD 1, 2(5) ;  Load main return value
42 : LD 6, 0(5) ;  Load return address
43 : LDA 7, 0(6) ;  Return from main
44 : LD 1, 2(5) ;  Load parameter 'n'
45 : ADD 3, 1, 0 ;  Stash right in R3
46 : LD 1, 1(5) ;  Load parameter 'm'
47 : ADD 2, 1, 0 ;  Move left to R2
48 : ADD 1, 3, 0 ;  Restore right to R1
49 : DIV 1, 2, 1 ;  R1 = left / right
50 : ADD 2, 1, 0 ;  Move left to R2
51 : LD 1, 2(5) ;  Load parameter 'n'
52 : MUL 1, 2, 1 ;  R1 = left * right
53 : ADD 3, 1, 0 ;  Stash right in R3
54 : LD 1, 1(5) ;  Load parameter 'm'
55 : ADD 2, 1, 0 ;  Move left to R2
56 : ADD 1, 3, 0 ;  Restore right to R1
57 : SUB 1, 2, 1 ;  R1 = left - right
58 : ST 1, 3(5) ;  Store function result
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDC 1, 7(0) ;  Load integer literal into R1
62 : ADD 3, 1, 0 ;  Stash right in R3
63 : LD 1, 1(5) ;  Load parameter 'diff'
64 : ADD 2, 1, 0 ;  Move left to R2
65 : ADD 1, 3, 0 ;  Restore right to R1
66 : SUB 1, 2, 1 ;  left - right
67 : JEQ 1, 2(7) ;  if 0 then true
68 : LDC 1, 0(0) ;  false
69 : LDA 7, 1(7) ;  skip setting true
70 : LDC 1, 1(0) ;  true
71 : ADD 2, 1, 0 ;  Move left to R2
72 : LDC 1, 0(0) ;  Load integer literal into R1
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(5) ;  Load parameter 'diff'
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  left - right
78 : JEQ 1, 2(7) ;  if 0 then true
79 : LDC 1, 0(0) ;  false
80 : LDA 7, 1(7) ;  skip setting true
81 : LDC 1, 1(0) ;  true
82 : ADD 1, 2, 1 ;  R1 = left OR right
83 : ADD 2, 1, 0 ;  Move left to R2
84 : LDC 1, 7(0) ;  Load integer literal into R1
85 : SUB 1, 0, 1 ;  Negate R1
86 : ADD 3, 1, 0 ;  Stash right in R3
87 : LD 1, 1(5) ;  Load parameter 'diff'
88 : ADD 2, 1, 0 ;  Move left to R2
89 : ADD 1, 3, 0 ;  Restore right to R1
90 : SUB 1, 2, 1 ;  left - right
91 : JEQ 1, 2(7) ;  if 0 then true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip setting true
94 : LDC 1, 1(0) ;  true
95 : ADD 1, 2, 1 ;  R1 = left OR right
96 : ADD 2, 1, 0 ;  Move left to R2
97 : LDC 1, 14(0) ;  Load integer literal into R1
98 : SUB 1, 0, 1 ;  Negate R1
99 : ADD 3, 1, 0 ;  Stash right in R3
100 : LD 1, 1(5) ;  Load parameter 'diff'
101 : ADD 2, 1, 0 ;  Move left to R2
102 : ADD 1, 3, 0 ;  Restore right to R1
103 : SUB 1, 2, 1 ;  left - right
104 : JEQ 1, 2(7) ;  if 0 then true
105 : LDC 1, 0(0) ;  false
106 : LDA 7, 1(7) ;  skip setting true
107 : LDC 1, 1(0) ;  true
108 : ADD 1, 2, 1 ;  R1 = left OR right
109 : JEQ 1, 112(0) ;  If false, jump to ELSE
110 : LDC 1, 1(0) ;  Load boolean literal into R1
111 : LDA 7, 135(0) ;  Skip ELSE
112 : LDC 1, 14(0) ;  Load integer literal into R1
113 : ADD 3, 1, 0 ;  Stash right in R3
114 : LD 1, 1(5) ;  Load parameter 'diff'
115 : ADD 2, 1, 0 ;  Move left to R2
116 : ADD 1, 3, 0 ;  Restore right to R1
117 : SUB 1, 2, 1 ;  left - right
118 : JLT 1, 2(7) ;  if < 0 then true
119 : LDC 1, 0(0) ;  false
120 : LDA 7, 1(7) ;  skip setting true
121 : LDC 1, 1(0) ;  true
122 : JEQ 1, 125(0) ;  If false, jump to ELSE
123 : LDC 1, 0(0) ;  Load boolean literal into R1
124 : LDA 7, 135(0) ;  Skip ELSE
125 : LDA 4, 3(5) ;  Compute callee frame base
126 : ADD 5, 4, 0 ;  Push callee frame
127 : LD 1, 1(5) ;  Load parameter 'diff'
128 : ST 1, 1(5) ;  Store argument 0 in callee frame
129 : LDA 6, 132(0) ;  Return address
130 : ST 6, 0(5) ;  Store RA in callee frame
131 : LDA 7, 12(0) ;  Call main
132 : LD 1, 2(5) ;  Load callee result
133 : LDC 2, 3(0) ;  Caller frame size
134 : SUB 5, 5, 2 ;  Pop callee frame
135 : ST 1, 2(5) ;  Store function result
136 : LD 6, 0(5) ;  Load return address
137 : LDA 7, 0(6) ;  Return to caller
138 : LDA 4, 3(5) ;  Compute callee frame base
139 : ADD 5, 4, 0 ;  Push callee frame
140 : LDC 1, 2(0) ;  Load integer literal into R1
141 : ADD 3, 1, 0 ;  Stash right in R3
142 : LD 1, 2(5) ;  Load parameter 'right'
143 : ADD 2, 1, 0 ;  Move left to R2
144 : ADD 1, 3, 0 ;  Restore right to R1
145 : MUL 1, 2, 1 ;  R1 = left * right
146 : ADD 3, 1, 0 ;  Stash right in R3
147 : LD 1, 1(5) ;  Load parameter 'left'
148 : ADD 2, 1, 0 ;  Move left to R2
149 : ADD 1, 3, 0 ;  Restore right to R1
150 : SUB 1, 2, 1 ;  R1 = left - right
151 : ST 1, 1(5) ;  Store argument 0 in callee frame
152 : LDA 6, 155(0) ;  Return address
153 : ST 6, 0(5) ;  Store RA in callee frame
154 : LDA 7, 61(0) ;  Call divisibleByDifference
155 : LD 1, 2(5) ;  Load callee result
156 : LDC 2, 3(0) ;  Caller frame size
157 : SUB 5, 5, 2 ;  Pop callee frame
158 : ST 1, 3(5) ;  Store function result
159 : LD 6, 0(5) ;  Load return address
160 : LDA 7, 0(6) ;  Return to caller
