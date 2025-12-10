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
12 : LDA 4, 5(5) ;  Compute callee frame base
13 : ADD 5, 4, 0 ;  Push callee frame
14 : LD 1, 1(5) ;  Load parameter 'n'
15 : ST 1, 1(5) ;  Store argument 0 in callee frame
16 : LDC 1, 0(0) ;  Load integer literal into R1
17 : ST 1, 2(5) ;  Store argument 1 in callee frame
18 : LDC 1, 0(0) ;  Load integer literal into R1
19 : ST 1, 3(5) ;  Store argument 2 in callee frame
20 : LDA 6, 23(0) ;  Return address
21 : ST 6, 0(5) ;  Store RA in callee frame
22 : LDA 7, 85(0) ;  Call average_digit
23 : LD 1, 4(5) ;  Load callee result
24 : LDC 2, 5(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop callee frame
26 : ST 1, 2(5) ;  Store result into caller frame
27 : LD 1, 2(5) ;  Load main return value
28 : LD 6, 0(5) ;  Load return address
29 : LDA 7, 0(6) ;  Return from main
30 : LD 1, 2(5) ;  Load parameter 'n'
31 : ADD 3, 1, 0 ;  Stash right in R3
32 : LD 1, 1(5) ;  Load parameter 'm'
33 : ADD 2, 1, 0 ;  Move left to R2
34 : ADD 1, 3, 0 ;  Restore right to R1
35 : DIV 1, 2, 1 ;  R1 = left / right
36 : ADD 2, 1, 0 ;  Move left to R2
37 : LD 1, 2(5) ;  Load parameter 'n'
38 : MUL 1, 2, 1 ;  R1 = left * right
39 : ADD 3, 1, 0 ;  Stash right in R3
40 : LD 1, 1(5) ;  Load parameter 'm'
41 : ADD 2, 1, 0 ;  Move left to R2
42 : ADD 1, 3, 0 ;  Restore right to R1
43 : SUB 1, 2, 1 ;  R1 = left - right
44 : ST 1, 3(5) ;  Store function result
45 : LD 6, 0(5) ;  Load return address
46 : LDA 7, 0(6) ;  Return to caller
47 : LDA 4, 3(5) ;  Compute callee frame base
48 : ADD 5, 4, 0 ;  Push callee frame
49 : LD 1, 2(5) ;  Load parameter 'n'
50 : ADD 3, 1, 0 ;  Stash right in R3
51 : LD 1, 1(5) ;  Load parameter 'sum'
52 : ADD 2, 1, 0 ;  Move left to R2
53 : ADD 1, 3, 0 ;  Restore right to R1
54 : DIV 1, 2, 1 ;  R1 = left / right
55 : ST 1, 1(5) ;  Store print arg in callee frame
56 : LDA 6, 59(0) ;  Return address
57 : ST 6, 0(5) ;  Store RA in callee frame
58 : LDA 7, 9(0) ;  Call print
59 : LDC 2, 3(0) ;  Caller frame size
60 : SUB 5, 5, 2 ;  Pop callee frame
61 : LDA 4, 3(5) ;  Compute callee frame base
62 : ADD 5, 4, 0 ;  Push callee frame
63 : LDA 4, 4(5) ;  Compute callee frame base
64 : ADD 5, 4, 0 ;  Push callee frame
65 : LD 1, 1(5) ;  Load parameter 'sum'
66 : ST 1, 1(5) ;  Store argument 0 in callee frame
67 : LD 1, 2(5) ;  Load parameter 'n'
68 : ST 1, 2(5) ;  Store argument 1 in callee frame
69 : LDA 6, 72(0) ;  Return address
70 : ST 6, 0(5) ;  Store RA in callee frame
71 : LDA 7, 30(0) ;  Call MOD
72 : LD 1, 3(5) ;  Load callee result
73 : LDC 2, 4(0) ;  Caller frame size
74 : SUB 5, 5, 2 ;  Pop callee frame
75 : ST 1, 1(5) ;  Store print arg in callee frame
76 : LDA 6, 79(0) ;  Return address
77 : ST 6, 0(5) ;  Store RA in callee frame
78 : LDA 7, 9(0) ;  Call print
79 : LDC 2, 3(0) ;  Caller frame size
80 : SUB 5, 5, 2 ;  Pop callee frame
81 : LD 1, 2(5) ;  Load parameter 'n'
82 : ST 1, 3(5) ;  Store function result
83 : LD 6, 0(5) ;  Load return address
84 : LDA 7, 0(6) ;  Return to caller
85 : LDC 1, 10(0) ;  Load integer literal into R1
86 : ADD 3, 1, 0 ;  Stash right in R3
87 : LD 1, 1(5) ;  Load parameter 'n'
88 : ADD 2, 1, 0 ;  Move left to R2
89 : ADD 1, 3, 0 ;  Restore right to R1
90 : SUB 1, 2, 1 ;  left - right
91 : JLT 1, 2(7) ;  if < 0 then true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip setting true
94 : LDC 1, 1(0) ;  true
95 : JEQ 1, 119(0) ;  If false, jump to ELSE
96 : LDA 4, 4(5) ;  Compute callee frame base
97 : ADD 5, 4, 0 ;  Push callee frame
98 : LD 1, 1(5) ;  Load parameter 'n'
99 : ADD 3, 1, 0 ;  Stash right in R3
100 : LD 1, 2(5) ;  Load parameter 'sum'
101 : ADD 2, 1, 0 ;  Move left to R2
102 : ADD 1, 3, 0 ;  Restore right to R1
103 : ADD 1, 2, 1 ;  R1 = left + right
104 : ST 1, 1(5) ;  Store argument 0 in callee frame
105 : LDC 1, 1(0) ;  Load integer literal into R1
106 : ADD 3, 1, 0 ;  Stash right in R3
107 : LD 1, 3(5) ;  Load parameter 'i'
108 : ADD 2, 1, 0 ;  Move left to R2
109 : ADD 1, 3, 0 ;  Restore right to R1
110 : ADD 1, 2, 1 ;  R1 = left + right
111 : ST 1, 2(5) ;  Store argument 1 in callee frame
112 : LDA 6, 115(0) ;  Return address
113 : ST 6, 0(5) ;  Store RA in callee frame
114 : LDA 7, 47(0) ;  Call print_and_return
115 : LD 1, 3(5) ;  Load callee result
116 : LDC 2, 4(0) ;  Caller frame size
117 : SUB 5, 5, 2 ;  Pop callee frame
118 : LDA 7, 159(0) ;  Skip ELSE
119 : LDA 4, 5(5) ;  Compute callee frame base
120 : ADD 5, 4, 0 ;  Push callee frame
121 : LDC 1, 10(0) ;  Load integer literal into R1
122 : ADD 3, 1, 0 ;  Stash right in R3
123 : LD 1, 1(5) ;  Load parameter 'n'
124 : ADD 2, 1, 0 ;  Move left to R2
125 : ADD 1, 3, 0 ;  Restore right to R1
126 : DIV 1, 2, 1 ;  R1 = left / right
127 : ST 1, 1(5) ;  Store argument 0 in callee frame
128 : LDA 4, 4(5) ;  Compute callee frame base
129 : ADD 5, 4, 0 ;  Push callee frame
130 : LD 1, 1(5) ;  Load parameter 'n'
131 : ST 1, 1(5) ;  Store argument 0 in callee frame
132 : LDC 1, 10(0) ;  Load integer literal into R1
133 : ST 1, 2(5) ;  Store argument 1 in callee frame
134 : LDA 6, 137(0) ;  Return address
135 : ST 6, 0(5) ;  Store RA in callee frame
136 : LDA 7, 30(0) ;  Call MOD
137 : LD 1, 3(5) ;  Load callee result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop callee frame
140 : ADD 3, 1, 0 ;  Stash right in R3
141 : LD 1, 2(5) ;  Load parameter 'sum'
142 : ADD 2, 1, 0 ;  Move left to R2
143 : ADD 1, 3, 0 ;  Restore right to R1
144 : ADD 1, 2, 1 ;  R1 = left + right
145 : ST 1, 2(5) ;  Store argument 1 in callee frame
146 : LDC 1, 1(0) ;  Load integer literal into R1
147 : ADD 3, 1, 0 ;  Stash right in R3
148 : LD 1, 3(5) ;  Load parameter 'i'
149 : ADD 2, 1, 0 ;  Move left to R2
150 : ADD 1, 3, 0 ;  Restore right to R1
151 : ADD 1, 2, 1 ;  R1 = left + right
152 : ST 1, 3(5) ;  Store argument 2 in callee frame
153 : LDA 6, 156(0) ;  Return address
154 : ST 6, 0(5) ;  Store RA in callee frame
155 : LDA 7, 85(0) ;  Call average_digit
156 : LD 1, 4(5) ;  Load callee result
157 : LDC 2, 5(0) ;  Caller frame size
158 : SUB 5, 5, 2 ;  Pop callee frame
159 : ST 1, 4(5) ;  Store function result
160 : LD 6, 0(5) ;  Load return address
161 : LDA 7, 0(6) ;  Return to caller
