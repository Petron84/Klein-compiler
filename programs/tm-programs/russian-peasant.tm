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
14 : LD 1, 1(5) ;  Load parameter 'm'
15 : LDA 4, 3(5) ;  [JIT] callee frame base
16 : LDA 6, 20(0) ;  Return address
17 : ST 6, 0(4) ;  Store RA in callee frame
18 : ADD 5, 4, 0 ;  Push callee frame
19 : LDA 7, 11(0) ;  Call print
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop callee frame
22 : LD 1, 1(5) ;  Load parameter 'm'
23 : LDA 4, 4(5) ;  [JIT] callee frame base
24 : ST 1, 1(4) ;  Store arg 0 in callee frame
25 : LD 1, 2(5) ;  Load parameter 'n'
26 : LDA 4, 4(5) ;  [JIT] callee frame base
27 : ST 1, 2(4) ;  Store arg 1 in callee frame
28 : LDA 4, 4(5) ;  [JIT] callee frame base
29 : LDA 6, 33(0) ;  Return address
30 : ST 6, 0(4) ;  Store RA in callee frame
31 : ADD 5, 4, 0 ;  Push callee frame
32 : LDA 7, 40(0) ;  Call mult
33 : LD 1, 3(5) ;  Load callee result
34 : LDC 2, 4(0) ;  Caller frame size
35 : SUB 5, 5, 2 ;  Pop callee frame
36 : ST 1, 3(5) ;  Store result into caller frame
37 : LD 1, 3(5) ;  Load main return value
38 : LD 6, 0(5) ;  Load return address
39 : LDA 7, 0(6) ;  Return from main
40 : LD 1, 1(5) ;  Load parameter 'm'
41 : LDA 4, 5(5) ;  [JIT] callee frame base
42 : ST 1, 1(4) ;  Store arg 0 in callee frame
43 : LD 1, 2(5) ;  Load parameter 'n'
44 : LDA 4, 5(5) ;  [JIT] callee frame base
45 : ST 1, 2(4) ;  Store arg 1 in callee frame
46 : LDC 1, 0(0) ;  Load integer literal into R1
47 : LDA 4, 5(5) ;  [JIT] callee frame base
48 : ST 1, 3(4) ;  Store arg 2 in callee frame
49 : LDA 4, 5(5) ;  [JIT] callee frame base
50 : LDA 6, 54(0) ;  Return address
51 : ST 6, 0(4) ;  Store RA in callee frame
52 : ADD 5, 4, 0 ;  Push callee frame
53 : LDA 7, 60(0) ;  Call multWithAccum
54 : LD 1, 4(5) ;  Load callee result
55 : LDC 2, 5(0) ;  Caller frame size
56 : SUB 5, 5, 2 ;  Pop callee frame
57 : ST 1, 3(5) ;  Store function result
58 : LD 6, 0(5) ;  Load return address
59 : LDA 7, 0(6) ;  Return to caller
60 : LDC 1, 0(0) ;  Load integer literal into R1
61 : ADD 3, 1, 0 ;  Stash right in R3
62 : LD 1, 2(5) ;  Load parameter 'n'
63 : ADD 2, 1, 0 ;  Move left to R2
64 : ADD 1, 3, 0 ;  Restore right to R1
65 : SUB 1, 2, 1 ;  left - right
66 : JEQ 1, 2(7) ;  if 0 then true
67 : LDC 1, 0(0) ;  false
68 : LDA 7, 1(7) ;  skip setting true
69 : LDC 1, 1(0) ;  true
70 : JEQ 1, 73(0) ;  If false, jump to ELSE
71 : LD 1, 3(5) ;  Load parameter 'accum'
72 : LDA 7, 155(0) ;  Skip ELSE
73 : LD 1, 2(5) ;  Load parameter 'n'
74 : LDA 4, 4(5) ;  [JIT] callee frame base
75 : ST 1, 1(4) ;  Store arg 0 in callee frame
76 : LDC 1, 2(0) ;  Load integer literal into R1
77 : LDA 4, 4(5) ;  [JIT] callee frame base
78 : ST 1, 2(4) ;  Store arg 1 in callee frame
79 : LDA 4, 4(5) ;  [JIT] callee frame base
80 : LDA 6, 84(0) ;  Return address
81 : ST 6, 0(4) ;  Store RA in callee frame
82 : ADD 5, 4, 0 ;  Push callee frame
83 : LDA 7, 158(0) ;  Call MOD
84 : LD 1, 3(5) ;  Load callee result
85 : LDC 2, 4(0) ;  Caller frame size
86 : SUB 5, 5, 2 ;  Pop callee frame
87 : ADD 2, 1, 0 ;  Move left to R2
88 : LDC 1, 1(0) ;  Load integer literal into R1
89 : SUB 1, 2, 1 ;  left - right
90 : JEQ 1, 2(7) ;  if 0 then true
91 : LDC 1, 0(0) ;  false
92 : LDA 7, 1(7) ;  skip setting true
93 : LDC 1, 1(0) ;  true
94 : JEQ 1, 128(0) ;  If false, jump to ELSE
95 : LDC 1, 2(0) ;  Load integer literal into R1
96 : ADD 3, 1, 0 ;  Stash right in R3
97 : LD 1, 1(5) ;  Load parameter 'm'
98 : ADD 2, 1, 0 ;  Move left to R2
99 : ADD 1, 3, 0 ;  Restore right to R1
100 : MUL 1, 2, 1 ;  R1 = left * right
101 : LDA 4, 5(5) ;  [JIT] callee frame base
102 : ST 1, 1(4) ;  Store arg 0 in callee frame
103 : LDC 1, 2(0) ;  Load integer literal into R1
104 : ADD 3, 1, 0 ;  Stash right in R3
105 : LD 1, 2(5) ;  Load parameter 'n'
106 : ADD 2, 1, 0 ;  Move left to R2
107 : ADD 1, 3, 0 ;  Restore right to R1
108 : DIV 1, 2, 1 ;  R1 = left / right
109 : LDA 4, 5(5) ;  [JIT] callee frame base
110 : ST 1, 2(4) ;  Store arg 1 in callee frame
111 : LD 1, 1(5) ;  Load parameter 'm'
112 : ADD 3, 1, 0 ;  Stash right in R3
113 : LD 1, 3(5) ;  Load parameter 'accum'
114 : ADD 2, 1, 0 ;  Move left to R2
115 : ADD 1, 3, 0 ;  Restore right to R1
116 : ADD 1, 2, 1 ;  R1 = left + right
117 : LDA 4, 5(5) ;  [JIT] callee frame base
118 : ST 1, 3(4) ;  Store arg 2 in callee frame
119 : LDA 4, 5(5) ;  [JIT] callee frame base
120 : LDA 6, 124(0) ;  Return address
121 : ST 6, 0(4) ;  Store RA in callee frame
122 : ADD 5, 4, 0 ;  Push callee frame
123 : LDA 7, 60(0) ;  Call multWithAccum
124 : LD 1, 4(5) ;  Load callee result
125 : LDC 2, 5(0) ;  Caller frame size
126 : SUB 5, 5, 2 ;  Pop callee frame
127 : LDA 7, 155(0) ;  Skip ELSE
128 : LDC 1, 2(0) ;  Load integer literal into R1
129 : ADD 3, 1, 0 ;  Stash right in R3
130 : LD 1, 1(5) ;  Load parameter 'm'
131 : ADD 2, 1, 0 ;  Move left to R2
132 : ADD 1, 3, 0 ;  Restore right to R1
133 : MUL 1, 2, 1 ;  R1 = left * right
134 : LDA 4, 5(5) ;  [JIT] callee frame base
135 : ST 1, 1(4) ;  Store arg 0 in callee frame
136 : LDC 1, 2(0) ;  Load integer literal into R1
137 : ADD 3, 1, 0 ;  Stash right in R3
138 : LD 1, 2(5) ;  Load parameter 'n'
139 : ADD 2, 1, 0 ;  Move left to R2
140 : ADD 1, 3, 0 ;  Restore right to R1
141 : DIV 1, 2, 1 ;  R1 = left / right
142 : LDA 4, 5(5) ;  [JIT] callee frame base
143 : ST 1, 2(4) ;  Store arg 1 in callee frame
144 : LD 1, 3(5) ;  Load parameter 'accum'
145 : LDA 4, 5(5) ;  [JIT] callee frame base
146 : ST 1, 3(4) ;  Store arg 2 in callee frame
147 : LDA 4, 5(5) ;  [JIT] callee frame base
148 : LDA 6, 152(0) ;  Return address
149 : ST 6, 0(4) ;  Store RA in callee frame
150 : ADD 5, 4, 0 ;  Push callee frame
151 : LDA 7, 60(0) ;  Call multWithAccum
152 : LD 1, 4(5) ;  Load callee result
153 : LDC 2, 5(0) ;  Caller frame size
154 : SUB 5, 5, 2 ;  Pop callee frame
155 : ST 1, 4(5) ;  Store function result
156 : LD 6, 0(5) ;  Load return address
157 : LDA 7, 0(6) ;  Return to caller
158 : LD 1, 2(5) ;  Load parameter 'n'
159 : ADD 3, 1, 0 ;  Stash right in R3
160 : LD 1, 1(5) ;  Load parameter 'm'
161 : ADD 2, 1, 0 ;  Move left to R2
162 : ADD 1, 3, 0 ;  Restore right to R1
163 : DIV 1, 2, 1 ;  R1 = left / right
164 : ADD 2, 1, 0 ;  Move left to R2
165 : LD 1, 2(5) ;  Load parameter 'n'
166 : MUL 1, 2, 1 ;  R1 = left * right
167 : ADD 3, 1, 0 ;  Stash right in R3
168 : LD 1, 1(5) ;  Load parameter 'm'
169 : ADD 2, 1, 0 ;  Move left to R2
170 : ADD 1, 3, 0 ;  Restore right to R1
171 : SUB 1, 2, 1 ;  R1 = left - right
172 : ST 1, 3(5) ;  Store function result
173 : LD 6, 0(5) ;  Load return address
174 : LDA 7, 0(6) ;  Return to caller
