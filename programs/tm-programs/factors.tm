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
14 : LD 1, 1(5) ;  Load parameter 'n'
15 : ST 1, 1(5) ;  Store argument 0 in callee frame
16 : LDC 1, 1(0) ;  Load integer literal into R1
17 : ST 1, 2(5) ;  Store argument 1 in callee frame
18 : LDA 6, 21(0) ;  Return address
19 : ST 6, 0(5) ;  Store RA in callee frame
20 : LDA 7, 158(0) ;  Call loopToN
21 : LD 1, 3(5) ;  Load callee result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop callee frame
24 : ST 1, 2(5) ;  Store result into caller frame
25 : LD 1, 2(5) ;  Load main return value
26 : LD 6, 0(5) ;  Load return address
27 : LDA 7, 0(6) ;  Return from main
28 : LD 1, 2(5) ;  Load parameter 'den'
29 : ADD 3, 1, 0 ;  Stash right in R3
30 : LD 1, 1(5) ;  Load parameter 'num'
31 : ADD 2, 1, 0 ;  Move left to R2
32 : ADD 1, 3, 0 ;  Restore right to R1
33 : SUB 1, 2, 1 ;  left - right
34 : JLT 1, 2(7) ;  if < 0 then true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If false, jump to ELSE
39 : LD 1, 1(5) ;  Load parameter 'num'
40 : LDA 7, 58(0) ;  Skip ELSE
41 : LDA 4, 4(5) ;  Compute callee frame base
42 : ADD 5, 4, 0 ;  Push callee frame
43 : LD 1, 2(5) ;  Load parameter 'den'
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(5) ;  Load parameter 'num'
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : ST 1, 1(5) ;  Store argument 0 in callee frame
50 : LD 1, 2(5) ;  Load parameter 'den'
51 : ST 1, 2(5) ;  Store argument 1 in callee frame
52 : LDA 6, 55(0) ;  Return address
53 : ST 6, 0(5) ;  Store RA in callee frame
54 : LDA 7, 28(0) ;  Call remainder
55 : LD 1, 3(5) ;  Load callee result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop callee frame
58 : ST 1, 3(5) ;  Store function result
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDA 4, 4(5) ;  Compute callee frame base
62 : ADD 5, 4, 0 ;  Push callee frame
63 : LD 1, 2(5) ;  Load parameter 'b'
64 : ST 1, 1(5) ;  Store argument 0 in callee frame
65 : LD 1, 1(5) ;  Load parameter 'a'
66 : ST 1, 2(5) ;  Store argument 1 in callee frame
67 : LDA 6, 70(0) ;  Return address
68 : ST 6, 0(5) ;  Store RA in callee frame
69 : LDA 7, 28(0) ;  Call remainder
70 : LD 1, 3(5) ;  Load callee result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop callee frame
73 : ADD 2, 1, 0 ;  Move left to R2
74 : LDC 1, 0(0) ;  Load integer literal into R1
75 : SUB 1, 2, 1 ;  left - right
76 : JEQ 1, 2(7) ;  if 0 then true
77 : LDC 1, 0(0) ;  false
78 : LDA 7, 1(7) ;  skip setting true
79 : LDC 1, 1(0) ;  true
80 : ST 1, 3(5) ;  Store function result
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LDA 4, 3(5) ;  Compute callee frame base
84 : ADD 5, 4, 0 ;  Push callee frame
85 : LD 1, 2(5) ;  Load parameter 'current'
86 : ST 1, 1(5) ;  Store print arg in callee frame
87 : LDA 6, 90(0) ;  Return address
88 : ST 6, 0(5) ;  Store RA in callee frame
89 : LDA 7, 9(0) ;  Call print
90 : LDC 2, 3(0) ;  Caller frame size
91 : SUB 5, 5, 2 ;  Pop callee frame
92 : LDA 4, 4(5) ;  Compute callee frame base
93 : ADD 5, 4, 0 ;  Push callee frame
94 : LD 1, 1(5) ;  Load parameter 'n'
95 : ST 1, 1(5) ;  Store argument 0 in callee frame
96 : LDC 1, 1(0) ;  Load integer literal into R1
97 : ADD 3, 1, 0 ;  Stash right in R3
98 : LD 1, 2(5) ;  Load parameter 'current'
99 : ADD 2, 1, 0 ;  Move left to R2
100 : ADD 1, 3, 0 ;  Restore right to R1
101 : ADD 1, 2, 1 ;  R1 = left + right
102 : ST 1, 2(5) ;  Store argument 1 in callee frame
103 : LDA 6, 106(0) ;  Return address
104 : ST 6, 0(5) ;  Store RA in callee frame
105 : LDA 7, 158(0) ;  Call loopToN
106 : LD 1, 3(5) ;  Load callee result
107 : LDC 2, 4(0) ;  Caller frame size
108 : SUB 5, 5, 2 ;  Pop callee frame
109 : ST 1, 3(5) ;  Store function result
110 : LD 6, 0(5) ;  Load return address
111 : LDA 7, 0(6) ;  Return to caller
112 : LDA 4, 4(5) ;  Compute callee frame base
113 : ADD 5, 4, 0 ;  Push callee frame
114 : LD 1, 2(5) ;  Load parameter 'current'
115 : ST 1, 1(5) ;  Store argument 0 in callee frame
116 : LD 1, 1(5) ;  Load parameter 'n'
117 : ST 1, 2(5) ;  Store argument 1 in callee frame
118 : LDA 6, 121(0) ;  Return address
119 : ST 6, 0(5) ;  Store RA in callee frame
120 : LDA 7, 61(0) ;  Call divides
121 : LD 1, 3(5) ;  Load callee result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop callee frame
124 : JEQ 1, 138(0) ;  If false, jump to ELSE
125 : LDA 4, 4(5) ;  Compute callee frame base
126 : ADD 5, 4, 0 ;  Push callee frame
127 : LD 1, 1(5) ;  Load parameter 'n'
128 : ST 1, 1(5) ;  Store argument 0 in callee frame
129 : LD 1, 2(5) ;  Load parameter 'current'
130 : ST 1, 2(5) ;  Store argument 1 in callee frame
131 : LDA 6, 134(0) ;  Return address
132 : ST 6, 0(5) ;  Store RA in callee frame
133 : LDA 7, 83(0) ;  Call printAndLoop
134 : LD 1, 3(5) ;  Load callee result
135 : LDC 2, 4(0) ;  Caller frame size
136 : SUB 5, 5, 2 ;  Pop callee frame
137 : LDA 7, 155(0) ;  Skip ELSE
138 : LDA 4, 4(5) ;  Compute callee frame base
139 : ADD 5, 4, 0 ;  Push callee frame
140 : LD 1, 1(5) ;  Load parameter 'n'
141 : ST 1, 1(5) ;  Store argument 0 in callee frame
142 : LDC 1, 1(0) ;  Load integer literal into R1
143 : ADD 3, 1, 0 ;  Stash right in R3
144 : LD 1, 2(5) ;  Load parameter 'current'
145 : ADD 2, 1, 0 ;  Move left to R2
146 : ADD 1, 3, 0 ;  Restore right to R1
147 : ADD 1, 2, 1 ;  R1 = left + right
148 : ST 1, 2(5) ;  Store argument 1 in callee frame
149 : LDA 6, 152(0) ;  Return address
150 : ST 6, 0(5) ;  Store RA in callee frame
151 : LDA 7, 158(0) ;  Call loopToN
152 : LD 1, 3(5) ;  Load callee result
153 : LDC 2, 4(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop callee frame
155 : ST 1, 3(5) ;  Store function result
156 : LD 6, 0(5) ;  Load return address
157 : LDA 7, 0(6) ;  Return to caller
158 : LD 1, 2(5) ;  Load parameter 'current'
159 : ADD 3, 1, 0 ;  Stash right in R3
160 : LD 1, 1(5) ;  Load parameter 'n'
161 : ADD 2, 1, 0 ;  Move left to R2
162 : ADD 1, 3, 0 ;  Restore right to R1
163 : SUB 1, 2, 1 ;  left - right
164 : JEQ 1, 2(7) ;  if 0 then true
165 : LDC 1, 0(0) ;  false
166 : LDA 7, 1(7) ;  skip setting true
167 : LDC 1, 1(0) ;  true
168 : JEQ 1, 171(0) ;  If false, jump to ELSE
169 : LD 1, 1(5) ;  Load parameter 'n'
170 : LDA 7, 183(0) ;  Skip ELSE
171 : LDA 4, 4(5) ;  Compute callee frame base
172 : ADD 5, 4, 0 ;  Push callee frame
173 : LD 1, 1(5) ;  Load parameter 'n'
174 : ST 1, 1(5) ;  Store argument 0 in callee frame
175 : LD 1, 2(5) ;  Load parameter 'current'
176 : ST 1, 2(5) ;  Store argument 1 in callee frame
177 : LDA 6, 180(0) ;  Return address
178 : ST 6, 0(5) ;  Store RA in callee frame
179 : LDA 7, 112(0) ;  Call testAndLoop
180 : LD 1, 3(5) ;  Load callee result
181 : LDC 2, 4(0) ;  Caller frame size
182 : SUB 5, 5, 2 ;  Pop callee frame
183 : ST 1, 3(5) ;  Store function result
184 : LD 6, 0(5) ;  Load return address
185 : LDA 7, 0(6) ;  Return to caller
