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
13 : LDA 4, 5(5) ;  [JIT] callee frame base
14 : ST 1, 1(4) ;  Store arg 0 in callee frame
15 : LDC 1, 0(0) ;  Load integer literal into R1
16 : LDA 4, 5(5) ;  [JIT] callee frame base
17 : ST 1, 2(4) ;  Store arg 1 in callee frame
18 : LDC 1, 0(0) ;  Load integer literal into R1
19 : LDA 4, 5(5) ;  [JIT] callee frame base
20 : ST 1, 3(4) ;  Store arg 2 in callee frame
21 : LDA 4, 5(5) ;  [JIT] callee frame base
22 : LDA 6, 26(0) ;  Return address
23 : ST 6, 0(4) ;  Store RA in callee frame
24 : ADD 5, 4, 0 ;  Push callee frame
25 : LDA 7, 88(0) ;  Call average_digit
26 : LD 1, 4(5) ;  Load callee result
27 : LDC 2, 5(0) ;  Caller frame size
28 : SUB 5, 5, 2 ;  Pop callee frame
29 : ST 1, 2(5) ;  Store result into caller frame
30 : LD 1, 2(5) ;  Load main return value
31 : LD 6, 0(5) ;  Load return address
32 : LDA 7, 0(6) ;  Return from main
33 : LD 1, 2(5) ;  Load parameter 'n'
34 : ADD 3, 1, 0 ;  Stash right in R3
35 : LD 1, 1(5) ;  Load parameter 'm'
36 : ADD 2, 1, 0 ;  Move left to R2
37 : ADD 1, 3, 0 ;  Restore right to R1
38 : DIV 1, 2, 1 ;  R1 = left / right
39 : ADD 2, 1, 0 ;  Move left to R2
40 : LD 1, 2(5) ;  Load parameter 'n'
41 : MUL 1, 2, 1 ;  R1 = left * right
42 : ADD 3, 1, 0 ;  Stash right in R3
43 : LD 1, 1(5) ;  Load parameter 'm'
44 : ADD 2, 1, 0 ;  Move left to R2
45 : ADD 1, 3, 0 ;  Restore right to R1
46 : SUB 1, 2, 1 ;  R1 = left - right
47 : ST 1, 3(5) ;  Store function result
48 : LD 6, 0(5) ;  Load return address
49 : LDA 7, 0(6) ;  Return to caller
50 : LD 1, 2(5) ;  Load parameter 'n'
51 : ADD 3, 1, 0 ;  Stash right in R3
52 : LD 1, 1(5) ;  Load parameter 'sum'
53 : ADD 2, 1, 0 ;  Move left to R2
54 : ADD 1, 3, 0 ;  Restore right to R1
55 : DIV 1, 2, 1 ;  R1 = left / right
56 : LDA 4, 3(5) ;  [JIT] callee frame base
57 : LDA 6, 61(0) ;  Return address
58 : ST 6, 0(4) ;  Store RA in callee frame
59 : ADD 5, 4, 0 ;  Push callee frame
60 : LDA 7, 9(0) ;  Call print
61 : LDC 2, 3(0) ;  Caller frame size
62 : SUB 5, 5, 2 ;  Pop callee frame
63 : LD 1, 1(5) ;  Load parameter 'sum'
64 : LDA 4, 4(5) ;  [JIT] callee frame base
65 : ST 1, 1(4) ;  Store arg 0 in callee frame
66 : LD 1, 2(5) ;  Load parameter 'n'
67 : LDA 4, 4(5) ;  [JIT] callee frame base
68 : ST 1, 2(4) ;  Store arg 1 in callee frame
69 : LDA 4, 4(5) ;  [JIT] callee frame base
70 : LDA 6, 74(0) ;  Return address
71 : ST 6, 0(4) ;  Store RA in callee frame
72 : ADD 5, 4, 0 ;  Push callee frame
73 : LDA 7, 33(0) ;  Call MOD
74 : LD 1, 3(5) ;  Load callee result
75 : LDC 2, 4(0) ;  Caller frame size
76 : SUB 5, 5, 2 ;  Pop callee frame
77 : LDA 4, 3(5) ;  [JIT] callee frame base
78 : LDA 6, 82(0) ;  Return address
79 : ST 6, 0(4) ;  Store RA in callee frame
80 : ADD 5, 4, 0 ;  Push callee frame
81 : LDA 7, 9(0) ;  Call print
82 : LDC 2, 3(0) ;  Caller frame size
83 : SUB 5, 5, 2 ;  Pop callee frame
84 : LD 1, 2(5) ;  Load parameter 'n'
85 : ST 1, 3(5) ;  Store function result
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
88 : LDC 1, 10(0) ;  Load integer literal into R1
89 : ADD 3, 1, 0 ;  Stash right in R3
90 : LD 1, 1(5) ;  Load parameter 'n'
91 : ADD 2, 1, 0 ;  Move left to R2
92 : ADD 1, 3, 0 ;  Restore right to R1
93 : SUB 1, 2, 1 ;  left - right
94 : JLT 1, 2(7) ;  if < 0 then true
95 : LDC 1, 0(0) ;  false
96 : LDA 7, 1(7) ;  skip setting true
97 : LDC 1, 1(0) ;  true
98 : JEQ 1, 124(0) ;  If false, jump to ELSE
99 : LD 1, 1(5) ;  Load parameter 'n'
100 : ADD 3, 1, 0 ;  Stash right in R3
101 : LD 1, 2(5) ;  Load parameter 'sum'
102 : ADD 2, 1, 0 ;  Move left to R2
103 : ADD 1, 3, 0 ;  Restore right to R1
104 : ADD 1, 2, 1 ;  R1 = left + right
105 : LDA 4, 4(5) ;  [JIT] callee frame base
106 : ST 1, 1(4) ;  Store arg 0 in callee frame
107 : LDC 1, 1(0) ;  Load integer literal into R1
108 : ADD 3, 1, 0 ;  Stash right in R3
109 : LD 1, 3(5) ;  Load parameter 'i'
110 : ADD 2, 1, 0 ;  Move left to R2
111 : ADD 1, 3, 0 ;  Restore right to R1
112 : ADD 1, 2, 1 ;  R1 = left + right
113 : LDA 4, 4(5) ;  [JIT] callee frame base
114 : ST 1, 2(4) ;  Store arg 1 in callee frame
115 : LDA 4, 4(5) ;  [JIT] callee frame base
116 : LDA 6, 120(0) ;  Return address
117 : ST 6, 0(4) ;  Store RA in callee frame
118 : ADD 5, 4, 0 ;  Push callee frame
119 : LDA 7, 50(0) ;  Call print_and_return
120 : LD 1, 3(5) ;  Load callee result
121 : LDC 2, 4(0) ;  Caller frame size
122 : SUB 5, 5, 2 ;  Pop callee frame
123 : LDA 7, 169(0) ;  Skip ELSE
124 : LDC 1, 10(0) ;  Load integer literal into R1
125 : ADD 3, 1, 0 ;  Stash right in R3
126 : LD 1, 1(5) ;  Load parameter 'n'
127 : ADD 2, 1, 0 ;  Move left to R2
128 : ADD 1, 3, 0 ;  Restore right to R1
129 : DIV 1, 2, 1 ;  R1 = left / right
130 : LDA 4, 5(5) ;  [JIT] callee frame base
131 : ST 1, 1(4) ;  Store arg 0 in callee frame
132 : LD 1, 1(5) ;  Load parameter 'n'
133 : LDA 4, 4(5) ;  [JIT] callee frame base
134 : ST 1, 1(4) ;  Store arg 0 in callee frame
135 : LDC 1, 10(0) ;  Load integer literal into R1
136 : LDA 4, 4(5) ;  [JIT] callee frame base
137 : ST 1, 2(4) ;  Store arg 1 in callee frame
138 : LDA 4, 4(5) ;  [JIT] callee frame base
139 : LDA 6, 143(0) ;  Return address
140 : ST 6, 0(4) ;  Store RA in callee frame
141 : ADD 5, 4, 0 ;  Push callee frame
142 : LDA 7, 33(0) ;  Call MOD
143 : LD 1, 3(5) ;  Load callee result
144 : LDC 2, 4(0) ;  Caller frame size
145 : SUB 5, 5, 2 ;  Pop callee frame
146 : ADD 3, 1, 0 ;  Stash right in R3
147 : LD 1, 2(5) ;  Load parameter 'sum'
148 : ADD 2, 1, 0 ;  Move left to R2
149 : ADD 1, 3, 0 ;  Restore right to R1
150 : ADD 1, 2, 1 ;  R1 = left + right
151 : LDA 4, 5(5) ;  [JIT] callee frame base
152 : ST 1, 2(4) ;  Store arg 1 in callee frame
153 : LDC 1, 1(0) ;  Load integer literal into R1
154 : ADD 3, 1, 0 ;  Stash right in R3
155 : LD 1, 3(5) ;  Load parameter 'i'
156 : ADD 2, 1, 0 ;  Move left to R2
157 : ADD 1, 3, 0 ;  Restore right to R1
158 : ADD 1, 2, 1 ;  R1 = left + right
159 : LDA 4, 5(5) ;  [JIT] callee frame base
160 : ST 1, 3(4) ;  Store arg 2 in callee frame
161 : LDA 4, 5(5) ;  [JIT] callee frame base
162 : LDA 6, 166(0) ;  Return address
163 : ST 6, 0(4) ;  Store RA in callee frame
164 : ADD 5, 4, 0 ;  Push callee frame
165 : LDA 7, 88(0) ;  Call average_digit
166 : LD 1, 4(5) ;  Load callee result
167 : LDC 2, 5(0) ;  Caller frame size
168 : SUB 5, 5, 2 ;  Pop callee frame
169 : ST 1, 4(5) ;  Store function result
170 : LD 6, 0(5) ;  Load return address
171 : LDA 7, 0(6) ;  Return to caller
