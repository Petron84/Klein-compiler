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
14 : LDC 1, 0(0) ;  Load integer literal into R1
15 : ADD 3, 1, 0 ;  Stash right in R3
16 : LD 1, 1(5) ;  Load parameter 'publicKey'
17 : ADD 2, 1, 0 ;  Move left to R2
18 : ADD 1, 3, 0 ;  Restore right to R1
19 : SUB 1, 2, 1 ;  left - right
20 : JEQ 1, 2(7) ;  if 0 then true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 39(0) ;  If false, jump to ELSE
25 : LDA 4, 4(5) ;  Compute callee frame base
26 : ADD 5, 4, 0 ;  Push callee frame
27 : LDC 1, 2147481647(0) ;  Load integer literal into R1
28 : ST 1, 1(5) ;  Store argument 0 in callee frame
29 : LDC 1, 2047483747(0) ;  Load integer literal into R1
30 : ST 1, 2(5) ;  Store argument 1 in callee frame
31 : LDA 6, 34(0) ;  Return address
32 : ST 6, 0(5) ;  Store RA in callee frame
33 : LDA 7, 159(0) ;  Call factor
34 : LD 1, 3(5) ;  Load callee result
35 : LDC 2, 4(0) ;  Caller frame size
36 : SUB 5, 5, 2 ;  Pop callee frame
37 : ST 1, 3(5) ;  Store result into caller frame
38 : LDA 7, 52(0) ;  Skip ELSE
39 : LDA 4, 4(5) ;  Compute callee frame base
40 : ADD 5, 4, 0 ;  Push callee frame
41 : LD 1, 1(5) ;  Load parameter 'publicKey'
42 : ST 1, 1(5) ;  Store argument 0 in callee frame
43 : LD 1, 2(5) ;  Load parameter 'privateKey'
44 : ST 1, 2(5) ;  Store argument 1 in callee frame
45 : LDA 6, 48(0) ;  Return address
46 : ST 6, 0(5) ;  Store RA in callee frame
47 : LDA 7, 159(0) ;  Call factor
48 : LD 1, 3(5) ;  Load callee result
49 : LDC 2, 4(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop callee frame
51 : ST 1, 3(5) ;  Store result into caller frame
52 : LD 1, 3(5) ;  Load main return value
53 : LD 6, 0(5) ;  Load return address
54 : LDA 7, 0(6) ;  Return from main
55 : LD 1, 2(5) ;  Load parameter 'b'
56 : ADD 3, 1, 0 ;  Stash right in R3
57 : LD 1, 1(5) ;  Load parameter 'a'
58 : ADD 2, 1, 0 ;  Move left to R2
59 : ADD 1, 3, 0 ;  Restore right to R1
60 : SUB 1, 2, 1 ;  left - right
61 : JLT 1, 2(7) ;  if < 0 then true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : JEQ 1, 68(0) ;  If false, jump to ELSE
66 : LD 1, 1(5) ;  Load parameter 'a'
67 : LDA 7, 85(0) ;  Skip ELSE
68 : LDA 4, 4(5) ;  Compute callee frame base
69 : ADD 5, 4, 0 ;  Push callee frame
70 : LD 1, 2(5) ;  Load parameter 'b'
71 : ADD 3, 1, 0 ;  Stash right in R3
72 : LD 1, 1(5) ;  Load parameter 'a'
73 : ADD 2, 1, 0 ;  Move left to R2
74 : ADD 1, 3, 0 ;  Restore right to R1
75 : SUB 1, 2, 1 ;  R1 = left - right
76 : ST 1, 1(5) ;  Store argument 0 in callee frame
77 : LD 1, 2(5) ;  Load parameter 'b'
78 : ST 1, 2(5) ;  Store argument 1 in callee frame
79 : LDA 6, 82(0) ;  Return address
80 : ST 6, 0(5) ;  Store RA in callee frame
81 : LDA 7, 55(0) ;  Call remainder
82 : LD 1, 3(5) ;  Load callee result
83 : LDC 2, 4(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop callee frame
85 : ST 1, 3(5) ;  Store function result
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
88 : LDC 1, 0(0) ;  Load integer literal into R1
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 2(5) ;  Load parameter 'b'
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : SUB 1, 2, 1 ;  left - right
94 : JEQ 1, 2(7) ;  if 0 then true
95 : LDC 1, 0(0) ;  false
96 : LDA 7, 1(7) ;  skip setting true
97 : LDC 1, 1(0) ;  true
98 : JEQ 1, 101(0) ;  If false, jump to ELSE
99 : LD 1, 1(5) ;  Load parameter 'a'
100 : LDA 7, 124(0) ;  Skip ELSE
101 : LDA 4, 4(5) ;  Compute callee frame base
102 : ADD 5, 4, 0 ;  Push callee frame
103 : LD 1, 2(5) ;  Load parameter 'b'
104 : ST 1, 1(5) ;  Store argument 0 in callee frame
105 : LDA 4, 4(5) ;  Compute callee frame base
106 : ADD 5, 4, 0 ;  Push callee frame
107 : LD 1, 1(5) ;  Load parameter 'a'
108 : ST 1, 1(5) ;  Store argument 0 in callee frame
109 : LD 1, 2(5) ;  Load parameter 'b'
110 : ST 1, 2(5) ;  Store argument 1 in callee frame
111 : LDA 6, 114(0) ;  Return address
112 : ST 6, 0(5) ;  Store RA in callee frame
113 : LDA 7, 55(0) ;  Call remainder
114 : LD 1, 3(5) ;  Load callee result
115 : LDC 2, 4(0) ;  Caller frame size
116 : SUB 5, 5, 2 ;  Pop callee frame
117 : ST 1, 2(5) ;  Store argument 1 in callee frame
118 : LDA 6, 121(0) ;  Return address
119 : ST 6, 0(5) ;  Store RA in callee frame
120 : LDA 7, 88(0) ;  Call gcd
121 : LD 1, 3(5) ;  Load callee result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop callee frame
124 : ST 1, 3(5) ;  Store function result
125 : LD 6, 0(5) ;  Load return address
126 : LDA 7, 0(6) ;  Return to caller
127 : LDA 4, 3(5) ;  Compute callee frame base
128 : ADD 5, 4, 0 ;  Push callee frame
129 : LD 1, 3(5) ;  Load parameter 'commonFactor'
130 : ADD 3, 1, 0 ;  Stash right in R3
131 : LD 1, 1(5) ;  Load parameter 'publicKey'
132 : ADD 2, 1, 0 ;  Move left to R2
133 : ADD 1, 3, 0 ;  Restore right to R1
134 : DIV 1, 2, 1 ;  R1 = left / right
135 : ST 1, 1(5) ;  Store print arg in callee frame
136 : LDA 6, 139(0) ;  Return address
137 : ST 6, 0(5) ;  Store RA in callee frame
138 : LDA 7, 11(0) ;  Call print
139 : LDC 2, 3(0) ;  Caller frame size
140 : SUB 5, 5, 2 ;  Pop callee frame
141 : LDA 4, 3(5) ;  Compute callee frame base
142 : ADD 5, 4, 0 ;  Push callee frame
143 : LD 1, 3(5) ;  Load parameter 'commonFactor'
144 : ADD 3, 1, 0 ;  Stash right in R3
145 : LD 1, 2(5) ;  Load parameter 'privateKey'
146 : ADD 2, 1, 0 ;  Move left to R2
147 : ADD 1, 3, 0 ;  Restore right to R1
148 : DIV 1, 2, 1 ;  R1 = left / right
149 : ST 1, 1(5) ;  Store print arg in callee frame
150 : LDA 6, 153(0) ;  Return address
151 : ST 6, 0(5) ;  Store RA in callee frame
152 : LDA 7, 11(0) ;  Call print
153 : LDC 2, 3(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop callee frame
155 : LD 1, 3(5) ;  Load parameter 'commonFactor'
156 : ST 1, 4(5) ;  Store function result
157 : LD 6, 0(5) ;  Load return address
158 : LDA 7, 0(6) ;  Return to caller
159 : LDA 4, 5(5) ;  Compute callee frame base
160 : ADD 5, 4, 0 ;  Push callee frame
161 : LD 1, 1(5) ;  Load parameter 'publicKey'
162 : ST 1, 1(5) ;  Store argument 0 in callee frame
163 : LD 1, 2(5) ;  Load parameter 'privateKey'
164 : ST 1, 2(5) ;  Store argument 1 in callee frame
165 : LDA 4, 4(5) ;  Compute callee frame base
166 : ADD 5, 4, 0 ;  Push callee frame
167 : LD 1, 1(5) ;  Load parameter 'publicKey'
168 : ST 1, 1(5) ;  Store argument 0 in callee frame
169 : LD 1, 2(5) ;  Load parameter 'privateKey'
170 : ST 1, 2(5) ;  Store argument 1 in callee frame
171 : LDA 6, 174(0) ;  Return address
172 : ST 6, 0(5) ;  Store RA in callee frame
173 : LDA 7, 88(0) ;  Call gcd
174 : LD 1, 3(5) ;  Load callee result
175 : LDC 2, 4(0) ;  Caller frame size
176 : SUB 5, 5, 2 ;  Pop callee frame
177 : ST 1, 3(5) ;  Store argument 2 in callee frame
178 : LDA 6, 181(0) ;  Return address
179 : ST 6, 0(5) ;  Store RA in callee frame
180 : LDA 7, 127(0) ;  Call displayAndPrint
181 : LD 1, 4(5) ;  Load callee result
182 : LDC 2, 5(0) ;  Caller frame size
183 : SUB 5, 5, 2 ;  Pop callee frame
184 : ST 1, 3(5) ;  Store function result
185 : LD 6, 0(5) ;  Load return address
186 : LDA 7, 0(6) ;  Return to caller
