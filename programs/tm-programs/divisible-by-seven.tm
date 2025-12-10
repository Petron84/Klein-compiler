0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set FP (R4) = current frame base
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
12 : ADD 4, 5, 0 ;  Set FP at 12 entry
13 : LDA 4, 4(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LDC 1, 10(0) ;  Load integer literal into R1
16 : ADD 3, 1, 0 ;  Stash right in R3
17 : LD 1, 1(4) ;  Load parameter 'n' via FP
18 : ADD 2, 1, 0 ;  Move left to R2
19 : ADD 1, 3, 0 ;  Restore right to R1
20 : DIV 1, 2, 1 ;  R1 = left / right
21 : ST 1, 1(5) ;  Store argument 0 in callee frame
22 : LDA 4, 4(5) ;  Compute callee frame base (temp)
23 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
24 : LD 1, 1(4) ;  Load parameter 'n' via FP
25 : ST 1, 1(5) ;  Store argument 0 in callee frame
26 : LDC 1, 10(0) ;  Load integer literal into R1
27 : ST 1, 2(5) ;  Store argument 1 in callee frame
28 : LDA 6, 31(0) ;  Return address
29 : ST 6, 0(5) ;  Store RA in callee frame
30 : LDA 7, 45(0) ;  Call MOD
31 : LD 1, 3(5) ;  Load callee result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop callee frame
34 : ST 1, 2(5) ;  Store argument 1 in callee frame
35 : LDA 6, 38(0) ;  Return address
36 : ST 6, 0(5) ;  Store RA in callee frame
37 : LDA 7, 141(0) ;  Call divisibleByParts
38 : LD 1, 3(5) ;  Load callee result
39 : LDC 2, 4(0) ;  Caller frame size
40 : SUB 5, 5, 2 ;  Pop callee frame
41 : ST 1, 2(4) ;  Store result into caller frame (via FP)
42 : LD 1, 2(4) ;  Load main return value (via FP)
43 : LD 6, 0(4) ;  Load return address (via FP)
44 : LDA 7, 0(6) ;  Return from main
45 : ADD 4, 5, 0 ;  Set FP at 45 entry
46 : LD 1, 2(4) ;  Load parameter 'n' via FP
47 : ADD 3, 1, 0 ;  Stash right in R3
48 : LD 1, 1(4) ;  Load parameter 'm' via FP
49 : ADD 2, 1, 0 ;  Move left to R2
50 : ADD 1, 3, 0 ;  Restore right to R1
51 : DIV 1, 2, 1 ;  R1 = left / right
52 : ADD 2, 1, 0 ;  Move left to R2
53 : LD 1, 2(4) ;  Load parameter 'n' via FP
54 : MUL 1, 2, 1 ;  R1 = left * right
55 : ADD 3, 1, 0 ;  Stash right in R3
56 : LD 1, 1(4) ;  Load parameter 'm' via FP
57 : ADD 2, 1, 0 ;  Move left to R2
58 : ADD 1, 3, 0 ;  Restore right to R1
59 : SUB 1, 2, 1 ;  R1 = left - right
60 : ST 1, 3(4) ;  Store function result (via FP)
61 : LD 6, 0(4) ;  Load return address (via FP)
62 : LDA 7, 0(6) ;  Return to caller
63 : ADD 4, 5, 0 ;  Set FP at 63 entry
64 : LDC 1, 7(0) ;  Load integer literal into R1
65 : ADD 3, 1, 0 ;  Stash right in R3
66 : LD 1, 1(4) ;  Load parameter 'diff' via FP
67 : ADD 2, 1, 0 ;  Move left to R2
68 : ADD 1, 3, 0 ;  Restore right to R1
69 : SUB 1, 2, 1 ;  left - right
70 : JEQ 1, 2(7) ;  if 0 then true
71 : LDC 1, 0(0) ;  false
72 : LDA 7, 1(7) ;  skip setting true
73 : LDC 1, 1(0) ;  true
74 : ADD 2, 1, 0 ;  Move left to R2
75 : LDC 1, 0(0) ;  Load integer literal into R1
76 : ADD 3, 1, 0 ;  Stash right in R3
77 : LD 1, 1(4) ;  Load parameter 'diff' via FP
78 : ADD 2, 1, 0 ;  Move left to R2
79 : ADD 1, 3, 0 ;  Restore right to R1
80 : SUB 1, 2, 1 ;  left - right
81 : JEQ 1, 2(7) ;  if 0 then true
82 : LDC 1, 0(0) ;  false
83 : LDA 7, 1(7) ;  skip setting true
84 : LDC 1, 1(0) ;  true
85 : ADD 1, 2, 1 ;  R1 = left OR right
86 : ADD 2, 1, 0 ;  Move left to R2
87 : LDC 1, 7(0) ;  Load integer literal into R1
88 : SUB 1, 0, 1 ;  Negate R1
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(4) ;  Load parameter 'diff' via FP
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : SUB 1, 2, 1 ;  left - right
94 : JEQ 1, 2(7) ;  if 0 then true
95 : LDC 1, 0(0) ;  false
96 : LDA 7, 1(7) ;  skip setting true
97 : LDC 1, 1(0) ;  true
98 : ADD 1, 2, 1 ;  R1 = left OR right
99 : ADD 2, 1, 0 ;  Move left to R2
100 : LDC 1, 14(0) ;  Load integer literal into R1
101 : SUB 1, 0, 1 ;  Negate R1
102 : ADD 3, 1, 0 ;  Stash right in R3
103 : LD 1, 1(4) ;  Load parameter 'diff' via FP
104 : ADD 2, 1, 0 ;  Move left to R2
105 : ADD 1, 3, 0 ;  Restore right to R1
106 : SUB 1, 2, 1 ;  left - right
107 : JEQ 1, 2(7) ;  if 0 then true
108 : LDC 1, 0(0) ;  false
109 : LDA 7, 1(7) ;  skip setting true
110 : LDC 1, 1(0) ;  true
111 : ADD 1, 2, 1 ;  R1 = left OR right
112 : JEQ 1, 115(0) ;  If false, jump to ELSE
113 : LDC 1, 1(0) ;  Load boolean literal into R1
114 : LDA 7, 138(0) ;  Skip ELSE
115 : LDC 1, 14(0) ;  Load integer literal into R1
116 : ADD 3, 1, 0 ;  Stash right in R3
117 : LD 1, 1(4) ;  Load parameter 'diff' via FP
118 : ADD 2, 1, 0 ;  Move left to R2
119 : ADD 1, 3, 0 ;  Restore right to R1
120 : SUB 1, 2, 1 ;  left - right
121 : JLT 1, 2(7) ;  if < 0 then true
122 : LDC 1, 0(0) ;  false
123 : LDA 7, 1(7) ;  skip setting true
124 : LDC 1, 1(0) ;  true
125 : JEQ 1, 128(0) ;  If false, jump to ELSE
126 : LDC 1, 0(0) ;  Load boolean literal into R1
127 : LDA 7, 138(0) ;  Skip ELSE
128 : LDA 4, 3(5) ;  Compute callee frame base (temp)
129 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
130 : LD 1, 1(4) ;  Load parameter 'diff' via FP
131 : ST 1, 1(5) ;  Store argument 0 in callee frame
132 : LDA 6, 135(0) ;  Return address
133 : ST 6, 0(5) ;  Store RA in callee frame
134 : LDA 7, 12(0) ;  Call main
135 : LD 1, 2(5) ;  Load callee result
136 : LDC 2, 3(0) ;  Caller frame size
137 : SUB 5, 5, 2 ;  Pop callee frame
138 : ST 1, 2(4) ;  Store function result (via FP)
139 : LD 6, 0(4) ;  Load return address (via FP)
140 : LDA 7, 0(6) ;  Return to caller
141 : ADD 4, 5, 0 ;  Set FP at 141 entry
142 : LDA 4, 3(5) ;  Compute callee frame base (temp)
143 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
144 : LDC 1, 2(0) ;  Load integer literal into R1
145 : ADD 3, 1, 0 ;  Stash right in R3
146 : LD 1, 2(4) ;  Load parameter 'right' via FP
147 : ADD 2, 1, 0 ;  Move left to R2
148 : ADD 1, 3, 0 ;  Restore right to R1
149 : MUL 1, 2, 1 ;  R1 = left * right
150 : ADD 3, 1, 0 ;  Stash right in R3
151 : LD 1, 1(4) ;  Load parameter 'left' via FP
152 : ADD 2, 1, 0 ;  Move left to R2
153 : ADD 1, 3, 0 ;  Restore right to R1
154 : SUB 1, 2, 1 ;  R1 = left - right
155 : ST 1, 1(5) ;  Store argument 0 in callee frame
156 : LDA 6, 159(0) ;  Return address
157 : ST 6, 0(5) ;  Store RA in callee frame
158 : LDA 7, 63(0) ;  Call divisibleByDifference
159 : LD 1, 2(5) ;  Load callee result
160 : LDC 2, 3(0) ;  Caller frame size
161 : SUB 5, 5, 2 ;  Pop callee frame
162 : ST 1, 3(4) ;  Store function result (via FP)
163 : LD 6, 0(4) ;  Load return address (via FP)
164 : LDA 7, 0(6) ;  Return to caller
