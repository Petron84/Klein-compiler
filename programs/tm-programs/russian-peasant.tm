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
15 : LDA 4, 3(5) ;  Compute callee frame base (temp)
16 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
17 : LD 1, 1(4) ;  Load parameter 'm' via FP
18 : ST 1, 1(5) ;  Store print arg in callee frame
19 : LDA 6, 22(0) ;  Return address
20 : ST 6, 0(5) ;  Store RA in callee frame
21 : LDA 7, 11(0) ;  Call print
22 : LDC 2, 3(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : LDA 4, 4(5) ;  Compute callee frame base (temp)
25 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
26 : LD 1, 1(4) ;  Load parameter 'm' via FP
27 : ST 1, 1(5) ;  Store argument 0 in callee frame
28 : LD 1, 2(4) ;  Load parameter 'n' via FP
29 : ST 1, 2(5) ;  Store argument 1 in callee frame
30 : LDA 6, 33(0) ;  Return address
31 : ST 6, 0(5) ;  Store RA in callee frame
32 : LDA 7, 40(0) ;  Call mult
33 : LD 1, 3(5) ;  Load callee result
34 : LDC 2, 4(0) ;  Caller frame size
35 : SUB 5, 5, 2 ;  Pop callee frame
36 : ST 1, 3(4) ;  Store result into caller frame (via FP)
37 : LD 1, 3(4) ;  Load main return value (via FP)
38 : LD 6, 0(4) ;  Load return address (via FP)
39 : LDA 7, 0(6) ;  Return from main
40 : ADD 4, 5, 0 ;  Set FP at 40 entry
41 : LDA 4, 5(5) ;  Compute callee frame base (temp)
42 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
43 : LD 1, 1(4) ;  Load parameter 'm' via FP
44 : ST 1, 1(5) ;  Store argument 0 in callee frame
45 : LD 1, 2(4) ;  Load parameter 'n' via FP
46 : ST 1, 2(5) ;  Store argument 1 in callee frame
47 : LDC 1, 0(0) ;  Load integer literal into R1
48 : ST 1, 3(5) ;  Store argument 2 in callee frame
49 : LDA 6, 52(0) ;  Return address
50 : ST 6, 0(5) ;  Store RA in callee frame
51 : LDA 7, 58(0) ;  Call multWithAccum
52 : LD 1, 4(5) ;  Load callee result
53 : LDC 2, 5(0) ;  Caller frame size
54 : SUB 5, 5, 2 ;  Pop callee frame
55 : ST 1, 3(4) ;  Store function result (via FP)
56 : LD 6, 0(4) ;  Load return address (via FP)
57 : LDA 7, 0(6) ;  Return to caller
58 : ADD 4, 5, 0 ;  Set FP at 58 entry
59 : LDC 1, 0(0) ;  Load integer literal into R1
60 : ADD 3, 1, 0 ;  Stash right in R3
61 : LD 1, 2(4) ;  Load parameter 'n' via FP
62 : ADD 2, 1, 0 ;  Move left to R2
63 : ADD 1, 3, 0 ;  Restore right to R1
64 : SUB 1, 2, 1 ;  left - right
65 : JEQ 1, 2(7) ;  if 0 then true
66 : LDC 1, 0(0) ;  false
67 : LDA 7, 1(7) ;  skip setting true
68 : LDC 1, 1(0) ;  true
69 : JEQ 1, 72(0) ;  If false, jump to ELSE
70 : LD 1, 3(4) ;  Load parameter 'accum' via FP
71 : LDA 7, 146(0) ;  Skip ELSE
72 : LDA 4, 4(5) ;  Compute callee frame base (temp)
73 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
74 : LD 1, 2(4) ;  Load parameter 'n' via FP
75 : ST 1, 1(5) ;  Store argument 0 in callee frame
76 : LDC 1, 2(0) ;  Load integer literal into R1
77 : ST 1, 2(5) ;  Store argument 1 in callee frame
78 : LDA 6, 81(0) ;  Return address
79 : ST 6, 0(5) ;  Store RA in callee frame
80 : LDA 7, 149(0) ;  Call MOD
81 : LD 1, 3(5) ;  Load callee result
82 : LDC 2, 4(0) ;  Caller frame size
83 : SUB 5, 5, 2 ;  Pop callee frame
84 : ADD 2, 1, 0 ;  Move left to R2
85 : LDC 1, 1(0) ;  Load integer literal into R1
86 : SUB 1, 2, 1 ;  left - right
87 : JEQ 1, 2(7) ;  if 0 then true
88 : LDC 1, 0(0) ;  false
89 : LDA 7, 1(7) ;  skip setting true
90 : LDC 1, 1(0) ;  true
91 : JEQ 1, 122(0) ;  If false, jump to ELSE
92 : LDA 4, 5(5) ;  Compute callee frame base (temp)
93 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
94 : LDC 1, 2(0) ;  Load integer literal into R1
95 : ADD 3, 1, 0 ;  Stash right in R3
96 : LD 1, 1(4) ;  Load parameter 'm' via FP
97 : ADD 2, 1, 0 ;  Move left to R2
98 : ADD 1, 3, 0 ;  Restore right to R1
99 : MUL 1, 2, 1 ;  R1 = left * right
100 : ST 1, 1(5) ;  Store argument 0 in callee frame
101 : LDC 1, 2(0) ;  Load integer literal into R1
102 : ADD 3, 1, 0 ;  Stash right in R3
103 : LD 1, 2(4) ;  Load parameter 'n' via FP
104 : ADD 2, 1, 0 ;  Move left to R2
105 : ADD 1, 3, 0 ;  Restore right to R1
106 : DIV 1, 2, 1 ;  R1 = left / right
107 : ST 1, 2(5) ;  Store argument 1 in callee frame
108 : LD 1, 1(4) ;  Load parameter 'm' via FP
109 : ADD 3, 1, 0 ;  Stash right in R3
110 : LD 1, 3(4) ;  Load parameter 'accum' via FP
111 : ADD 2, 1, 0 ;  Move left to R2
112 : ADD 1, 3, 0 ;  Restore right to R1
113 : ADD 1, 2, 1 ;  R1 = left + right
114 : ST 1, 3(5) ;  Store argument 2 in callee frame
115 : LDA 6, 118(0) ;  Return address
116 : ST 6, 0(5) ;  Store RA in callee frame
117 : LDA 7, 58(0) ;  Call multWithAccum
118 : LD 1, 4(5) ;  Load callee result
119 : LDC 2, 5(0) ;  Caller frame size
120 : SUB 5, 5, 2 ;  Pop callee frame
121 : LDA 7, 146(0) ;  Skip ELSE
122 : LDA 4, 5(5) ;  Compute callee frame base (temp)
123 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
124 : LDC 1, 2(0) ;  Load integer literal into R1
125 : ADD 3, 1, 0 ;  Stash right in R3
126 : LD 1, 1(4) ;  Load parameter 'm' via FP
127 : ADD 2, 1, 0 ;  Move left to R2
128 : ADD 1, 3, 0 ;  Restore right to R1
129 : MUL 1, 2, 1 ;  R1 = left * right
130 : ST 1, 1(5) ;  Store argument 0 in callee frame
131 : LDC 1, 2(0) ;  Load integer literal into R1
132 : ADD 3, 1, 0 ;  Stash right in R3
133 : LD 1, 2(4) ;  Load parameter 'n' via FP
134 : ADD 2, 1, 0 ;  Move left to R2
135 : ADD 1, 3, 0 ;  Restore right to R1
136 : DIV 1, 2, 1 ;  R1 = left / right
137 : ST 1, 2(5) ;  Store argument 1 in callee frame
138 : LD 1, 3(4) ;  Load parameter 'accum' via FP
139 : ST 1, 3(5) ;  Store argument 2 in callee frame
140 : LDA 6, 143(0) ;  Return address
141 : ST 6, 0(5) ;  Store RA in callee frame
142 : LDA 7, 58(0) ;  Call multWithAccum
143 : LD 1, 4(5) ;  Load callee result
144 : LDC 2, 5(0) ;  Caller frame size
145 : SUB 5, 5, 2 ;  Pop callee frame
146 : ST 1, 4(4) ;  Store function result (via FP)
147 : LD 6, 0(4) ;  Load return address (via FP)
148 : LDA 7, 0(6) ;  Return to caller
149 : ADD 4, 5, 0 ;  Set FP at 149 entry
150 : LD 1, 2(4) ;  Load parameter 'n' via FP
151 : ADD 3, 1, 0 ;  Stash right in R3
152 : LD 1, 1(4) ;  Load parameter 'm' via FP
153 : ADD 2, 1, 0 ;  Move left to R2
154 : ADD 1, 3, 0 ;  Restore right to R1
155 : DIV 1, 2, 1 ;  R1 = left / right
156 : ADD 2, 1, 0 ;  Move left to R2
157 : LD 1, 2(4) ;  Load parameter 'n' via FP
158 : MUL 1, 2, 1 ;  R1 = left * right
159 : ADD 3, 1, 0 ;  Stash right in R3
160 : LD 1, 1(4) ;  Load parameter 'm' via FP
161 : ADD 2, 1, 0 ;  Move left to R2
162 : ADD 1, 3, 0 ;  Restore right to R1
163 : SUB 1, 2, 1 ;  R1 = left - right
164 : ST 1, 3(4) ;  Store function result (via FP)
165 : LD 6, 0(4) ;  Load return address (via FP)
166 : LDA 7, 0(6) ;  Return to caller
