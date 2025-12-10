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
12 : LDC 1, 10(0) ;  Load integer literal into R1
13 : ADD 3, 1, 0 ;  Stash right in R3
14 : LD 1, 1(5) ;  Load parameter 'n'
15 : ADD 2, 1, 0 ;  Move left to R2
16 : ADD 1, 3, 0 ;  Restore right to R1
17 : DIV 1, 2, 1 ;  R1 = left / right
18 : LDA 4, 4(5) ;  [JIT] callee frame base
19 : ST 1, 1(4) ;  Store arg 0 in callee frame
20 : LD 1, 1(5) ;  Load parameter 'n'
21 : LDA 4, 4(5) ;  [JIT] callee frame base
22 : ST 1, 1(4) ;  Store arg 0 in callee frame
23 : LDC 1, 10(0) ;  Load integer literal into R1
24 : LDA 4, 4(5) ;  [JIT] callee frame base
25 : ST 1, 2(4) ;  Store arg 1 in callee frame
26 : LDA 4, 4(5) ;  [JIT] callee frame base
27 : LDA 6, 31(0) ;  Return address
28 : ST 6, 0(4) ;  Store RA in callee frame
29 : ADD 5, 4, 0 ;  Push callee frame
30 : LDA 7, 48(0) ;  Call MOD
31 : LD 1, 3(5) ;  Load callee result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop callee frame
34 : LDA 4, 4(5) ;  [JIT] callee frame base
35 : ST 1, 2(4) ;  Store arg 1 in callee frame
36 : LDA 4, 4(5) ;  [JIT] callee frame base
37 : LDA 6, 41(0) ;  Return address
38 : ST 6, 0(4) ;  Store RA in callee frame
39 : ADD 5, 4, 0 ;  Push callee frame
40 : LDA 7, 143(0) ;  Call divisibleByParts
41 : LD 1, 3(5) ;  Load callee result
42 : LDC 2, 4(0) ;  Caller frame size
43 : SUB 5, 5, 2 ;  Pop callee frame
44 : ST 1, 2(5) ;  Store result into caller frame
45 : LD 1, 2(5) ;  Load main return value
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
65 : LDC 1, 7(0) ;  Load integer literal into R1
66 : ADD 3, 1, 0 ;  Stash right in R3
67 : LD 1, 1(5) ;  Load parameter 'diff'
68 : ADD 2, 1, 0 ;  Move left to R2
69 : ADD 1, 3, 0 ;  Restore right to R1
70 : SUB 1, 2, 1 ;  left - right
71 : JEQ 1, 2(7) ;  if 0 then true
72 : LDC 1, 0(0) ;  false
73 : LDA 7, 1(7) ;  skip setting true
74 : LDC 1, 1(0) ;  true
75 : ADD 2, 1, 0 ;  Move left to R2
76 : LDC 1, 0(0) ;  Load integer literal into R1
77 : ADD 3, 1, 0 ;  Stash right in R3
78 : LD 1, 1(5) ;  Load parameter 'diff'
79 : ADD 2, 1, 0 ;  Move left to R2
80 : ADD 1, 3, 0 ;  Restore right to R1
81 : SUB 1, 2, 1 ;  left - right
82 : JEQ 1, 2(7) ;  if 0 then true
83 : LDC 1, 0(0) ;  false
84 : LDA 7, 1(7) ;  skip setting true
85 : LDC 1, 1(0) ;  true
86 : ADD 1, 2, 1 ;  R1 = left OR right
87 : ADD 2, 1, 0 ;  Move left to R2
88 : LDC 1, 7(0) ;  Load integer literal into R1
89 : SUB 1, 0, 1 ;  Negate R1
90 : ADD 3, 1, 0 ;  Stash right in R3
91 : LD 1, 1(5) ;  Load parameter 'diff'
92 : ADD 2, 1, 0 ;  Move left to R2
93 : ADD 1, 3, 0 ;  Restore right to R1
94 : SUB 1, 2, 1 ;  left - right
95 : JEQ 1, 2(7) ;  if 0 then true
96 : LDC 1, 0(0) ;  false
97 : LDA 7, 1(7) ;  skip setting true
98 : LDC 1, 1(0) ;  true
99 : ADD 1, 2, 1 ;  R1 = left OR right
100 : ADD 2, 1, 0 ;  Move left to R2
101 : LDC 1, 14(0) ;  Load integer literal into R1
102 : SUB 1, 0, 1 ;  Negate R1
103 : ADD 3, 1, 0 ;  Stash right in R3
104 : LD 1, 1(5) ;  Load parameter 'diff'
105 : ADD 2, 1, 0 ;  Move left to R2
106 : ADD 1, 3, 0 ;  Restore right to R1
107 : SUB 1, 2, 1 ;  left - right
108 : JEQ 1, 2(7) ;  if 0 then true
109 : LDC 1, 0(0) ;  false
110 : LDA 7, 1(7) ;  skip setting true
111 : LDC 1, 1(0) ;  true
112 : ADD 1, 2, 1 ;  R1 = left OR right
113 : JEQ 1, 116(0) ;  If false, jump to ELSE
114 : LDC 1, 1(0) ;  Load boolean literal into R1
115 : LDA 7, 140(0) ;  Skip ELSE
116 : LDC 1, 14(0) ;  Load integer literal into R1
117 : ADD 3, 1, 0 ;  Stash right in R3
118 : LD 1, 1(5) ;  Load parameter 'diff'
119 : ADD 2, 1, 0 ;  Move left to R2
120 : ADD 1, 3, 0 ;  Restore right to R1
121 : SUB 1, 2, 1 ;  left - right
122 : JLT 1, 2(7) ;  if < 0 then true
123 : LDC 1, 0(0) ;  false
124 : LDA 7, 1(7) ;  skip setting true
125 : LDC 1, 1(0) ;  true
126 : JEQ 1, 129(0) ;  If false, jump to ELSE
127 : LDC 1, 0(0) ;  Load boolean literal into R1
128 : LDA 7, 140(0) ;  Skip ELSE
129 : LD 1, 1(5) ;  Load parameter 'diff'
130 : LDA 4, 3(5) ;  [JIT] callee frame base
131 : ST 1, 1(4) ;  Store arg 0 in callee frame
132 : LDA 4, 3(5) ;  [JIT] callee frame base
133 : LDA 6, 137(0) ;  Return address
134 : ST 6, 0(4) ;  Store RA in callee frame
135 : ADD 5, 4, 0 ;  Push callee frame
136 : LDA 7, 12(0) ;  Call main
137 : LD 1, 2(5) ;  Load callee result
138 : LDC 2, 3(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop callee frame
140 : ST 1, 2(5) ;  Store function result
141 : LD 6, 0(5) ;  Load return address
142 : LDA 7, 0(6) ;  Return to caller
143 : LDC 1, 2(0) ;  Load integer literal into R1
144 : ADD 3, 1, 0 ;  Stash right in R3
145 : LD 1, 2(5) ;  Load parameter 'right'
146 : ADD 2, 1, 0 ;  Move left to R2
147 : ADD 1, 3, 0 ;  Restore right to R1
148 : MUL 1, 2, 1 ;  R1 = left * right
149 : ADD 3, 1, 0 ;  Stash right in R3
150 : LD 1, 1(5) ;  Load parameter 'left'
151 : ADD 2, 1, 0 ;  Move left to R2
152 : ADD 1, 3, 0 ;  Restore right to R1
153 : SUB 1, 2, 1 ;  R1 = left - right
154 : LDA 4, 3(5) ;  [JIT] callee frame base
155 : ST 1, 1(4) ;  Store arg 0 in callee frame
156 : LDA 4, 3(5) ;  [JIT] callee frame base
157 : LDA 6, 161(0) ;  Return address
158 : ST 6, 0(4) ;  Store RA in callee frame
159 : ADD 5, 4, 0 ;  Push callee frame
160 : LDA 7, 65(0) ;  Call divisibleByDifference
161 : LD 1, 2(5) ;  Load callee result
162 : LDC 2, 3(0) ;  Caller frame size
163 : SUB 5, 5, 2 ;  Pop callee frame
164 : ST 1, 3(5) ;  Store function result
165 : LD 6, 0(5) ;  Load return address
166 : LDA 7, 0(6) ;  Return to caller
