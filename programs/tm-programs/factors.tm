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
12 : LD 1, 1(5) ;  Load parameter 'n'
13 : LDA 4, 4(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDC 1, 1(0) ;  Load integer literal into R1
16 : LDA 4, 4(5) ;  [JIT] callee frame base
17 : ST 1, 2(4) ;  Store arg 1 in callee frame
18 : LDA 4, 4(5) ;  [JIT] callee frame base
19 : LDA 6, 23(0) ;  Return address
20 : ST 6, 0(4) ;  Store RA in callee frame
21 : ADD 5, 4, 0 ;  Push callee frame
22 : LDA 7, 171(0) ;  Call loopToN
23 : LD 1, 3(5) ;  Load callee result
24 : LDC 2, 4(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 2(5) ;  Store result into caller frame
27 : LD 1, 2(5) ;  Load main return value
28 : LD 6, 0(5) ;  Load return address
29 : LDA 7, 0(6) ;  Return from main
30 : LD 1, 2(5) ;  Load parameter 'den'
31 : ADD 3, 1, 0 ;  Stash right in R3
32 : LD 1, 1(5) ;  Load parameter 'num'
33 : ADD 2, 1, 0 ;  Move left to R2
34 : ADD 1, 3, 0 ;  Restore right to R1
35 : SUB 1, 2, 1 ;  left - right
36 : JLT 1, 2(7) ;  if < 0 then true
37 : LDC 1, 0(0) ;  false
38 : LDA 7, 1(7) ;  skip setting true
39 : LDC 1, 1(0) ;  true
40 : JEQ 1, 43(0) ;  If false, jump to ELSE
41 : LD 1, 1(5) ;  Load parameter 'num'
42 : LDA 7, 62(0) ;  Skip ELSE
43 : LD 1, 2(5) ;  Load parameter 'den'
44 : ADD 3, 1, 0 ;  Stash right in R3
45 : LD 1, 1(5) ;  Load parameter 'num'
46 : ADD 2, 1, 0 ;  Move left to R2
47 : ADD 1, 3, 0 ;  Restore right to R1
48 : SUB 1, 2, 1 ;  R1 = left - right
49 : LDA 4, 4(5) ;  [JIT] callee frame base
50 : ST 1, 1(4) ;  Store arg 0 in callee frame
51 : LD 1, 2(5) ;  Load parameter 'den'
52 : LDA 4, 4(5) ;  [JIT] callee frame base
53 : ST 1, 2(4) ;  Store arg 1 in callee frame
54 : LDA 4, 4(5) ;  [JIT] callee frame base
55 : LDA 6, 59(0) ;  Return address
56 : ST 6, 0(4) ;  Store RA in callee frame
57 : ADD 5, 4, 0 ;  Push callee frame
58 : LDA 7, 30(0) ;  Call remainder
59 : LD 1, 3(5) ;  Load callee result
60 : LDC 2, 4(0) ;  Caller frame size
61 : SUB 5, 5, 2 ;  Pop callee frame
62 : ST 1, 3(5) ;  Store function result
63 : LD 6, 0(5) ;  Load return address
64 : LDA 7, 0(6) ;  Return to caller
65 : LD 1, 2(5) ;  Load parameter 'b'
66 : LDA 4, 4(5) ;  [JIT] callee frame base
67 : ST 1, 1(4) ;  Store arg 0 in callee frame
68 : LD 1, 1(5) ;  Load parameter 'a'
69 : LDA 4, 4(5) ;  [JIT] callee frame base
70 : ST 1, 2(4) ;  Store arg 1 in callee frame
71 : LDA 4, 4(5) ;  [JIT] callee frame base
72 : LDA 6, 76(0) ;  Return address
73 : ST 6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Push callee frame
75 : LDA 7, 30(0) ;  Call remainder
76 : LD 1, 3(5) ;  Load callee result
77 : LDC 2, 4(0) ;  Caller frame size
78 : SUB 5, 5, 2 ;  Pop callee frame
79 : ADD 2, 1, 0 ;  Move left to R2
80 : LDC 1, 0(0) ;  Load integer literal into R1
81 : SUB 1, 2, 1 ;  left - right
82 : JEQ 1, 2(7) ;  if 0 then true
83 : LDC 1, 0(0) ;  false
84 : LDA 7, 1(7) ;  skip setting true
85 : LDC 1, 1(0) ;  true
86 : ST 1, 3(5) ;  Store function result
87 : LD 6, 0(5) ;  Load return address
88 : LDA 7, 0(6) ;  Return to caller
89 : LD 1, 2(5) ;  Load parameter 'current'
90 : LDA 4, 3(5) ;  [JIT] callee frame base
91 : LDA 6, 95(0) ;  Return address
92 : ST 6, 0(4) ;  Store RA in callee frame
93 : ADD 5, 4, 0 ;  Push callee frame
94 : LDA 7, 9(0) ;  Call print
95 : LDC 2, 3(0) ;  Caller frame size
96 : SUB 5, 5, 2 ;  Pop callee frame
97 : LD 1, 1(5) ;  Load parameter 'n'
98 : LDA 4, 4(5) ;  [JIT] callee frame base
99 : ST 1, 1(4) ;  Store arg 0 in callee frame
100 : LDC 1, 1(0) ;  Load integer literal into R1
101 : ADD 3, 1, 0 ;  Stash right in R3
102 : LD 1, 2(5) ;  Load parameter 'current'
103 : ADD 2, 1, 0 ;  Move left to R2
104 : ADD 1, 3, 0 ;  Restore right to R1
105 : ADD 1, 2, 1 ;  R1 = left + right
106 : LDA 4, 4(5) ;  [JIT] callee frame base
107 : ST 1, 2(4) ;  Store arg 1 in callee frame
108 : LDA 4, 4(5) ;  [JIT] callee frame base
109 : LDA 6, 113(0) ;  Return address
110 : ST 6, 0(4) ;  Store RA in callee frame
111 : ADD 5, 4, 0 ;  Push callee frame
112 : LDA 7, 171(0) ;  Call loopToN
113 : LD 1, 3(5) ;  Load callee result
114 : LDC 2, 4(0) ;  Caller frame size
115 : SUB 5, 5, 2 ;  Pop callee frame
116 : ST 1, 3(5) ;  Store function result
117 : LD 6, 0(5) ;  Load return address
118 : LDA 7, 0(6) ;  Return to caller
119 : LD 1, 2(5) ;  Load parameter 'current'
120 : LDA 4, 4(5) ;  [JIT] callee frame base
121 : ST 1, 1(4) ;  Store arg 0 in callee frame
122 : LD 1, 1(5) ;  Load parameter 'n'
123 : LDA 4, 4(5) ;  [JIT] callee frame base
124 : ST 1, 2(4) ;  Store arg 1 in callee frame
125 : LDA 4, 4(5) ;  [JIT] callee frame base
126 : LDA 6, 130(0) ;  Return address
127 : ST 6, 0(4) ;  Store RA in callee frame
128 : ADD 5, 4, 0 ;  Push callee frame
129 : LDA 7, 65(0) ;  Call divides
130 : LD 1, 3(5) ;  Load callee result
131 : LDC 2, 4(0) ;  Caller frame size
132 : SUB 5, 5, 2 ;  Pop callee frame
133 : JEQ 1, 149(0) ;  If false, jump to ELSE
134 : LD 1, 1(5) ;  Load parameter 'n'
135 : LDA 4, 4(5) ;  [JIT] callee frame base
136 : ST 1, 1(4) ;  Store arg 0 in callee frame
137 : LD 1, 2(5) ;  Load parameter 'current'
138 : LDA 4, 4(5) ;  [JIT] callee frame base
139 : ST 1, 2(4) ;  Store arg 1 in callee frame
140 : LDA 4, 4(5) ;  [JIT] callee frame base
141 : LDA 6, 145(0) ;  Return address
142 : ST 6, 0(4) ;  Store RA in callee frame
143 : ADD 5, 4, 0 ;  Push callee frame
144 : LDA 7, 89(0) ;  Call printAndLoop
145 : LD 1, 3(5) ;  Load callee result
146 : LDC 2, 4(0) ;  Caller frame size
147 : SUB 5, 5, 2 ;  Pop callee frame
148 : LDA 7, 168(0) ;  Skip ELSE
149 : LD 1, 1(5) ;  Load parameter 'n'
150 : LDA 4, 4(5) ;  [JIT] callee frame base
151 : ST 1, 1(4) ;  Store arg 0 in callee frame
152 : LDC 1, 1(0) ;  Load integer literal into R1
153 : ADD 3, 1, 0 ;  Stash right in R3
154 : LD 1, 2(5) ;  Load parameter 'current'
155 : ADD 2, 1, 0 ;  Move left to R2
156 : ADD 1, 3, 0 ;  Restore right to R1
157 : ADD 1, 2, 1 ;  R1 = left + right
158 : LDA 4, 4(5) ;  [JIT] callee frame base
159 : ST 1, 2(4) ;  Store arg 1 in callee frame
160 : LDA 4, 4(5) ;  [JIT] callee frame base
161 : LDA 6, 165(0) ;  Return address
162 : ST 6, 0(4) ;  Store RA in callee frame
163 : ADD 5, 4, 0 ;  Push callee frame
164 : LDA 7, 171(0) ;  Call loopToN
165 : LD 1, 3(5) ;  Load callee result
166 : LDC 2, 4(0) ;  Caller frame size
167 : SUB 5, 5, 2 ;  Pop callee frame
168 : ST 1, 3(5) ;  Store function result
169 : LD 6, 0(5) ;  Load return address
170 : LDA 7, 0(6) ;  Return to caller
171 : LD 1, 2(5) ;  Load parameter 'current'
172 : ADD 3, 1, 0 ;  Stash right in R3
173 : LD 1, 1(5) ;  Load parameter 'n'
174 : ADD 2, 1, 0 ;  Move left to R2
175 : ADD 1, 3, 0 ;  Restore right to R1
176 : SUB 1, 2, 1 ;  left - right
177 : JEQ 1, 2(7) ;  if 0 then true
178 : LDC 1, 0(0) ;  false
179 : LDA 7, 1(7) ;  skip setting true
180 : LDC 1, 1(0) ;  true
181 : JEQ 1, 184(0) ;  If false, jump to ELSE
182 : LD 1, 1(5) ;  Load parameter 'n'
183 : LDA 7, 198(0) ;  Skip ELSE
184 : LD 1, 1(5) ;  Load parameter 'n'
185 : LDA 4, 4(5) ;  [JIT] callee frame base
186 : ST 1, 1(4) ;  Store arg 0 in callee frame
187 : LD 1, 2(5) ;  Load parameter 'current'
188 : LDA 4, 4(5) ;  [JIT] callee frame base
189 : ST 1, 2(4) ;  Store arg 1 in callee frame
190 : LDA 4, 4(5) ;  [JIT] callee frame base
191 : LDA 6, 195(0) ;  Return address
192 : ST 6, 0(4) ;  Store RA in callee frame
193 : ADD 5, 4, 0 ;  Push callee frame
194 : LDA 7, 119(0) ;  Call testAndLoop
195 : LD 1, 3(5) ;  Load callee result
196 : LDC 2, 4(0) ;  Caller frame size
197 : SUB 5, 5, 2 ;  Pop callee frame
198 : ST 1, 3(5) ;  Store function result
199 : LD 6, 0(5) ;  Load return address
200 : LDA 7, 0(6) ;  Return to caller
