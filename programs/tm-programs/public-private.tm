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
24 : JEQ 1, 41(0) ;  If false, jump to ELSE
25 : LDC 1, 2147481647(0) ;  Load integer literal into R1
26 : LDA 4, 4(5) ;  [JIT] callee frame base
27 : ST 1, 1(4) ;  Store arg 0 in callee frame
28 : LDC 1, 2047483747(0) ;  Load integer literal into R1
29 : LDA 4, 4(5) ;  [JIT] callee frame base
30 : ST 1, 2(4) ;  Store arg 1 in callee frame
31 : LDA 4, 4(5) ;  [JIT] callee frame base
32 : LDA 6, 36(0) ;  Return address
33 : ST 6, 0(4) ;  Store RA in callee frame
34 : ADD 5, 4, 0 ;  Push callee frame
35 : LDA 7, 167(0) ;  Call factor
36 : LD 1, 3(5) ;  Load callee result
37 : LDC 2, 4(0) ;  Caller frame size
38 : SUB 5, 5, 2 ;  Pop callee frame
39 : ST 1, 3(5) ;  Store result into caller frame
40 : LDA 7, 56(0) ;  Skip ELSE
41 : LD 1, 1(5) ;  Load parameter 'publicKey'
42 : LDA 4, 4(5) ;  [JIT] callee frame base
43 : ST 1, 1(4) ;  Store arg 0 in callee frame
44 : LD 1, 2(5) ;  Load parameter 'privateKey'
45 : LDA 4, 4(5) ;  [JIT] callee frame base
46 : ST 1, 2(4) ;  Store arg 1 in callee frame
47 : LDA 4, 4(5) ;  [JIT] callee frame base
48 : LDA 6, 52(0) ;  Return address
49 : ST 6, 0(4) ;  Store RA in callee frame
50 : ADD 5, 4, 0 ;  Push callee frame
51 : LDA 7, 167(0) ;  Call factor
52 : LD 1, 3(5) ;  Load callee result
53 : LDC 2, 4(0) ;  Caller frame size
54 : SUB 5, 5, 2 ;  Pop callee frame
55 : ST 1, 3(5) ;  Store result into caller frame
56 : LD 1, 3(5) ;  Load main return value
57 : LD 6, 0(5) ;  Load return address
58 : LDA 7, 0(6) ;  Return from main
59 : LD 1, 2(5) ;  Load parameter 'b'
60 : ADD 3, 1, 0 ;  Stash right in R3
61 : LD 1, 1(5) ;  Load parameter 'a'
62 : ADD 2, 1, 0 ;  Move left to R2
63 : ADD 1, 3, 0 ;  Restore right to R1
64 : SUB 1, 2, 1 ;  left - right
65 : JLT 1, 2(7) ;  if < 0 then true
66 : LDC 1, 0(0) ;  false
67 : LDA 7, 1(7) ;  skip setting true
68 : LDC 1, 1(0) ;  true
69 : JEQ 1, 72(0) ;  If false, jump to ELSE
70 : LD 1, 1(5) ;  Load parameter 'a'
71 : LDA 7, 91(0) ;  Skip ELSE
72 : LD 1, 2(5) ;  Load parameter 'b'
73 : ADD 3, 1, 0 ;  Stash right in R3
74 : LD 1, 1(5) ;  Load parameter 'a'
75 : ADD 2, 1, 0 ;  Move left to R2
76 : ADD 1, 3, 0 ;  Restore right to R1
77 : SUB 1, 2, 1 ;  R1 = left - right
78 : LDA 4, 4(5) ;  [JIT] callee frame base
79 : ST 1, 1(4) ;  Store arg 0 in callee frame
80 : LD 1, 2(5) ;  Load parameter 'b'
81 : LDA 4, 4(5) ;  [JIT] callee frame base
82 : ST 1, 2(4) ;  Store arg 1 in callee frame
83 : LDA 4, 4(5) ;  [JIT] callee frame base
84 : LDA 6, 88(0) ;  Return address
85 : ST 6, 0(4) ;  Store RA in callee frame
86 : ADD 5, 4, 0 ;  Push callee frame
87 : LDA 7, 59(0) ;  Call remainder
88 : LD 1, 3(5) ;  Load callee result
89 : LDC 2, 4(0) ;  Caller frame size
90 : SUB 5, 5, 2 ;  Pop callee frame
91 : ST 1, 3(5) ;  Store function result
92 : LD 6, 0(5) ;  Load return address
93 : LDA 7, 0(6) ;  Return to caller
94 : LDC 1, 0(0) ;  Load integer literal into R1
95 : ADD 3, 1, 0 ;  Stash right in R3
96 : LD 1, 2(5) ;  Load parameter 'b'
97 : ADD 2, 1, 0 ;  Move left to R2
98 : ADD 1, 3, 0 ;  Restore right to R1
99 : SUB 1, 2, 1 ;  left - right
100 : JEQ 1, 2(7) ;  if 0 then true
101 : LDC 1, 0(0) ;  false
102 : LDA 7, 1(7) ;  skip setting true
103 : LDC 1, 1(0) ;  true
104 : JEQ 1, 107(0) ;  If false, jump to ELSE
105 : LD 1, 1(5) ;  Load parameter 'a'
106 : LDA 7, 134(0) ;  Skip ELSE
107 : LD 1, 2(5) ;  Load parameter 'b'
108 : LDA 4, 4(5) ;  [JIT] callee frame base
109 : ST 1, 1(4) ;  Store arg 0 in callee frame
110 : LD 1, 1(5) ;  Load parameter 'a'
111 : LDA 4, 4(5) ;  [JIT] callee frame base
112 : ST 1, 1(4) ;  Store arg 0 in callee frame
113 : LD 1, 2(5) ;  Load parameter 'b'
114 : LDA 4, 4(5) ;  [JIT] callee frame base
115 : ST 1, 2(4) ;  Store arg 1 in callee frame
116 : LDA 4, 4(5) ;  [JIT] callee frame base
117 : LDA 6, 121(0) ;  Return address
118 : ST 6, 0(4) ;  Store RA in callee frame
119 : ADD 5, 4, 0 ;  Push callee frame
120 : LDA 7, 59(0) ;  Call remainder
121 : LD 1, 3(5) ;  Load callee result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop callee frame
124 : LDA 4, 4(5) ;  [JIT] callee frame base
125 : ST 1, 2(4) ;  Store arg 1 in callee frame
126 : LDA 4, 4(5) ;  [JIT] callee frame base
127 : LDA 6, 131(0) ;  Return address
128 : ST 6, 0(4) ;  Store RA in callee frame
129 : ADD 5, 4, 0 ;  Push callee frame
130 : LDA 7, 94(0) ;  Call gcd
131 : LD 1, 3(5) ;  Load callee result
132 : LDC 2, 4(0) ;  Caller frame size
133 : SUB 5, 5, 2 ;  Pop callee frame
134 : ST 1, 3(5) ;  Store function result
135 : LD 6, 0(5) ;  Load return address
136 : LDA 7, 0(6) ;  Return to caller
137 : LD 1, 3(5) ;  Load parameter 'commonFactor'
138 : ADD 3, 1, 0 ;  Stash right in R3
139 : LD 1, 1(5) ;  Load parameter 'publicKey'
140 : ADD 2, 1, 0 ;  Move left to R2
141 : ADD 1, 3, 0 ;  Restore right to R1
142 : DIV 1, 2, 1 ;  R1 = left / right
143 : LDA 4, 3(5) ;  [JIT] callee frame base
144 : LDA 6, 148(0) ;  Return address
145 : ST 6, 0(4) ;  Store RA in callee frame
146 : ADD 5, 4, 0 ;  Push callee frame
147 : LDA 7, 11(0) ;  Call print
148 : LDC 2, 3(0) ;  Caller frame size
149 : SUB 5, 5, 2 ;  Pop callee frame
150 : LD 1, 3(5) ;  Load parameter 'commonFactor'
151 : ADD 3, 1, 0 ;  Stash right in R3
152 : LD 1, 2(5) ;  Load parameter 'privateKey'
153 : ADD 2, 1, 0 ;  Move left to R2
154 : ADD 1, 3, 0 ;  Restore right to R1
155 : DIV 1, 2, 1 ;  R1 = left / right
156 : LDA 4, 3(5) ;  [JIT] callee frame base
157 : LDA 6, 161(0) ;  Return address
158 : ST 6, 0(4) ;  Store RA in callee frame
159 : ADD 5, 4, 0 ;  Push callee frame
160 : LDA 7, 11(0) ;  Call print
161 : LDC 2, 3(0) ;  Caller frame size
162 : SUB 5, 5, 2 ;  Pop callee frame
163 : LD 1, 3(5) ;  Load parameter 'commonFactor'
164 : ST 1, 4(5) ;  Store function result
165 : LD 6, 0(5) ;  Load return address
166 : LDA 7, 0(6) ;  Return to caller
167 : LD 1, 1(5) ;  Load parameter 'publicKey'
168 : LDA 4, 5(5) ;  [JIT] callee frame base
169 : ST 1, 1(4) ;  Store arg 0 in callee frame
170 : LD 1, 2(5) ;  Load parameter 'privateKey'
171 : LDA 4, 5(5) ;  [JIT] callee frame base
172 : ST 1, 2(4) ;  Store arg 1 in callee frame
173 : LD 1, 1(5) ;  Load parameter 'publicKey'
174 : LDA 4, 4(5) ;  [JIT] callee frame base
175 : ST 1, 1(4) ;  Store arg 0 in callee frame
176 : LD 1, 2(5) ;  Load parameter 'privateKey'
177 : LDA 4, 4(5) ;  [JIT] callee frame base
178 : ST 1, 2(4) ;  Store arg 1 in callee frame
179 : LDA 4, 4(5) ;  [JIT] callee frame base
180 : LDA 6, 184(0) ;  Return address
181 : ST 6, 0(4) ;  Store RA in callee frame
182 : ADD 5, 4, 0 ;  Push callee frame
183 : LDA 7, 94(0) ;  Call gcd
184 : LD 1, 3(5) ;  Load callee result
185 : LDC 2, 4(0) ;  Caller frame size
186 : SUB 5, 5, 2 ;  Pop callee frame
187 : LDA 4, 5(5) ;  [JIT] callee frame base
188 : ST 1, 3(4) ;  Store arg 2 in callee frame
189 : LDA 4, 5(5) ;  [JIT] callee frame base
190 : LDA 6, 194(0) ;  Return address
191 : ST 6, 0(4) ;  Store RA in callee frame
192 : ADD 5, 4, 0 ;  Push callee frame
193 : LDA 7, 137(0) ;  Call displayAndPrint
194 : LD 1, 4(5) ;  Load callee result
195 : LDC 2, 5(0) ;  Caller frame size
196 : SUB 5, 5, 2 ;  Pop callee frame
197 : ST 1, 3(5) ;  Store function result
198 : LD 6, 0(5) ;  Load return address
199 : LDA 7, 0(6) ;  Return to caller
