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
14 : LDA 4, 3(5) ;  Compute callee frame base
15 : ADD 5, 4, 0 ;  Push callee frame
16 : LD 1, 1(5) ;  Load parameter 'm'
17 : ST 1, 1(5) ;  Store print arg in callee frame
18 : LDA 6, 21(0) ;  Return address
19 : ST 6, 0(5) ;  Store RA in callee frame
20 : LDA 7, 11(0) ;  Call print
21 : LDC 2, 3(0) ;  Caller frame size
22 : SUB 5, 5, 2 ;  Pop callee frame
23 : LDA 4, 4(5) ;  Compute callee frame base
24 : ADD 5, 4, 0 ;  Push callee frame
25 : LD 1, 1(5) ;  Load parameter 'm'
26 : ST 1, 1(5) ;  Store argument 0 in callee frame
27 : LD 1, 2(5) ;  Load parameter 'n'
28 : ST 1, 2(5) ;  Store argument 1 in callee frame
29 : LDA 6, 32(0) ;  Return address
30 : ST 6, 0(5) ;  Store RA in callee frame
31 : LDA 7, 39(0) ;  Call mult
32 : LD 1, 3(5) ;  Load callee result
33 : LDC 2, 4(0) ;  Caller frame size
34 : SUB 5, 5, 2 ;  Pop callee frame
35 : ST 1, 3(5) ;  Store result into caller frame
36 : LD 1, 3(5) ;  Load main return value
37 : LD 6, 0(5) ;  Load return address
38 : LDA 7, 0(6) ;  Return from main
39 : LDA 4, 5(5) ;  Compute callee frame base
40 : ADD 5, 4, 0 ;  Push callee frame
41 : LD 1, 1(5) ;  Load parameter 'm'
42 : ST 1, 1(5) ;  Store argument 0 in callee frame
43 : LD 1, 2(5) ;  Load parameter 'n'
44 : ST 1, 2(5) ;  Store argument 1 in callee frame
45 : LDC 1, 0(0) ;  Load integer literal into R1
46 : ST 1, 3(5) ;  Store argument 2 in callee frame
47 : LDA 6, 50(0) ;  Return address
48 : ST 6, 0(5) ;  Store RA in callee frame
49 : LDA 7, 56(0) ;  Call multWithAccum
50 : LD 1, 4(5) ;  Load callee result
51 : LDC 2, 5(0) ;  Caller frame size
52 : SUB 5, 5, 2 ;  Pop callee frame
53 : ST 1, 3(5) ;  Store function result
54 : LD 6, 0(5) ;  Load return address
55 : LDA 7, 0(6) ;  Return to caller
56 : LDC 1, 0(0) ;  Load integer literal into R1
57 : ADD 3, 1, 0 ;  Stash right in R3
58 : LD 1, 2(5) ;  Load parameter 'n'
59 : ADD 2, 1, 0 ;  Move left to R2
60 : ADD 1, 3, 0 ;  Restore right to R1
61 : SUB 1, 2, 1 ;  left - right
62 : JEQ 1, 2(7) ;  if 0 then true
63 : LDC 1, 0(0) ;  false
64 : LDA 7, 1(7) ;  skip setting true
65 : LDC 1, 1(0) ;  true
66 : JEQ 1, 69(0) ;  If false, jump to ELSE
67 : LD 1, 3(5) ;  Load parameter 'accum'
68 : LDA 7, 143(0) ;  Skip ELSE
69 : LDA 4, 4(5) ;  Compute callee frame base
70 : ADD 5, 4, 0 ;  Push callee frame
71 : LD 1, 2(5) ;  Load parameter 'n'
72 : ST 1, 1(5) ;  Store argument 0 in callee frame
73 : LDC 1, 2(0) ;  Load integer literal into R1
74 : ST 1, 2(5) ;  Store argument 1 in callee frame
75 : LDA 6, 78(0) ;  Return address
76 : ST 6, 0(5) ;  Store RA in callee frame
77 : LDA 7, 146(0) ;  Call MOD
78 : LD 1, 3(5) ;  Load callee result
79 : LDC 2, 4(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop callee frame
81 : ADD 2, 1, 0 ;  Move left to R2
82 : LDC 1, 1(0) ;  Load integer literal into R1
83 : SUB 1, 2, 1 ;  left - right
84 : JEQ 1, 2(7) ;  if 0 then true
85 : LDC 1, 0(0) ;  false
86 : LDA 7, 1(7) ;  skip setting true
87 : LDC 1, 1(0) ;  true
88 : JEQ 1, 119(0) ;  If false, jump to ELSE
89 : LDA 4, 5(5) ;  Compute callee frame base
90 : ADD 5, 4, 0 ;  Push callee frame
91 : LDC 1, 2(0) ;  Load integer literal into R1
92 : ADD 3, 1, 0 ;  Stash right in R3
93 : LD 1, 1(5) ;  Load parameter 'm'
94 : ADD 2, 1, 0 ;  Move left to R2
95 : ADD 1, 3, 0 ;  Restore right to R1
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ST 1, 1(5) ;  Store argument 0 in callee frame
98 : LDC 1, 2(0) ;  Load integer literal into R1
99 : ADD 3, 1, 0 ;  Stash right in R3
100 : LD 1, 2(5) ;  Load parameter 'n'
101 : ADD 2, 1, 0 ;  Move left to R2
102 : ADD 1, 3, 0 ;  Restore right to R1
103 : DIV 1, 2, 1 ;  R1 = left / right
104 : ST 1, 2(5) ;  Store argument 1 in callee frame
105 : LD 1, 1(5) ;  Load parameter 'm'
106 : ADD 3, 1, 0 ;  Stash right in R3
107 : LD 1, 3(5) ;  Load parameter 'accum'
108 : ADD 2, 1, 0 ;  Move left to R2
109 : ADD 1, 3, 0 ;  Restore right to R1
110 : ADD 1, 2, 1 ;  R1 = left + right
111 : ST 1, 3(5) ;  Store argument 2 in callee frame
112 : LDA 6, 115(0) ;  Return address
113 : ST 6, 0(5) ;  Store RA in callee frame
114 : LDA 7, 56(0) ;  Call multWithAccum
115 : LD 1, 4(5) ;  Load callee result
116 : LDC 2, 5(0) ;  Caller frame size
117 : SUB 5, 5, 2 ;  Pop callee frame
118 : LDA 7, 143(0) ;  Skip ELSE
119 : LDA 4, 5(5) ;  Compute callee frame base
120 : ADD 5, 4, 0 ;  Push callee frame
121 : LDC 1, 2(0) ;  Load integer literal into R1
122 : ADD 3, 1, 0 ;  Stash right in R3
123 : LD 1, 1(5) ;  Load parameter 'm'
124 : ADD 2, 1, 0 ;  Move left to R2
125 : ADD 1, 3, 0 ;  Restore right to R1
126 : MUL 1, 2, 1 ;  R1 = left * right
127 : ST 1, 1(5) ;  Store argument 0 in callee frame
128 : LDC 1, 2(0) ;  Load integer literal into R1
129 : ADD 3, 1, 0 ;  Stash right in R3
130 : LD 1, 2(5) ;  Load parameter 'n'
131 : ADD 2, 1, 0 ;  Move left to R2
132 : ADD 1, 3, 0 ;  Restore right to R1
133 : DIV 1, 2, 1 ;  R1 = left / right
134 : ST 1, 2(5) ;  Store argument 1 in callee frame
135 : LD 1, 3(5) ;  Load parameter 'accum'
136 : ST 1, 3(5) ;  Store argument 2 in callee frame
137 : LDA 6, 140(0) ;  Return address
138 : ST 6, 0(5) ;  Store RA in callee frame
139 : LDA 7, 56(0) ;  Call multWithAccum
140 : LD 1, 4(5) ;  Load callee result
141 : LDC 2, 5(0) ;  Caller frame size
142 : SUB 5, 5, 2 ;  Pop callee frame
143 : ST 1, 4(5) ;  Store function result
144 : LD 6, 0(5) ;  Load return address
145 : LDA 7, 0(6) ;  Return to caller
146 : LD 1, 2(5) ;  Load parameter 'n'
147 : ADD 3, 1, 0 ;  Stash right in R3
148 : LD 1, 1(5) ;  Load parameter 'm'
149 : ADD 2, 1, 0 ;  Move left to R2
150 : ADD 1, 3, 0 ;  Restore right to R1
151 : DIV 1, 2, 1 ;  R1 = left / right
152 : ADD 2, 1, 0 ;  Move left to R2
153 : LD 1, 2(5) ;  Load parameter 'n'
154 : MUL 1, 2, 1 ;  R1 = left * right
155 : ADD 3, 1, 0 ;  Stash right in R3
156 : LD 1, 1(5) ;  Load parameter 'm'
157 : ADD 2, 1, 0 ;  Move left to R2
158 : ADD 1, 3, 0 ;  Restore right to R1
159 : SUB 1, 2, 1 ;  R1 = left - right
160 : ST 1, 3(5) ;  Store function result
161 : LD 6, 0(5) ;  Load return address
162 : LDA 7, 0(6) ;  Return to caller
