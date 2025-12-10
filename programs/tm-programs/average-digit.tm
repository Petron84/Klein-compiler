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
13 : LDA 4, 5(5) ;  Compute callee frame base (temp)
14 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
15 : LD 1, 1(4) ;  Load parameter 'n' via FP
16 : ST 1, 1(5) ;  Store argument 0 in callee frame
17 : LDC 1, 0(0) ;  Load integer literal into R1
18 : ST 1, 2(5) ;  Store argument 1 in callee frame
19 : LDC 1, 0(0) ;  Load integer literal into R1
20 : ST 1, 3(5) ;  Store argument 2 in callee frame
21 : LDA 6, 24(0) ;  Return address
22 : ST 6, 0(5) ;  Store RA in callee frame
23 : LDA 7, 88(0) ;  Call average_digit
24 : LD 1, 4(5) ;  Load callee result
25 : LDC 2, 5(0) ;  Caller frame size
26 : SUB 5, 5, 2 ;  Pop callee frame
27 : ST 1, 2(4) ;  Store result into caller frame (via FP)
28 : LD 1, 2(4) ;  Load main return value (via FP)
29 : LD 6, 0(4) ;  Load return address (via FP)
30 : LDA 7, 0(6) ;  Return from main
31 : ADD 4, 5, 0 ;  Set FP at 31 entry
32 : LD 1, 2(4) ;  Load parameter 'n' via FP
33 : ADD 3, 1, 0 ;  Stash right in R3
34 : LD 1, 1(4) ;  Load parameter 'm' via FP
35 : ADD 2, 1, 0 ;  Move left to R2
36 : ADD 1, 3, 0 ;  Restore right to R1
37 : DIV 1, 2, 1 ;  R1 = left / right
38 : ADD 2, 1, 0 ;  Move left to R2
39 : LD 1, 2(4) ;  Load parameter 'n' via FP
40 : MUL 1, 2, 1 ;  R1 = left * right
41 : ADD 3, 1, 0 ;  Stash right in R3
42 : LD 1, 1(4) ;  Load parameter 'm' via FP
43 : ADD 2, 1, 0 ;  Move left to R2
44 : ADD 1, 3, 0 ;  Restore right to R1
45 : SUB 1, 2, 1 ;  R1 = left - right
46 : ST 1, 3(4) ;  Store function result (via FP)
47 : LD 6, 0(4) ;  Load return address (via FP)
48 : LDA 7, 0(6) ;  Return to caller
49 : ADD 4, 5, 0 ;  Set FP at 49 entry
50 : LDA 4, 3(5) ;  Compute callee frame base (temp)
51 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
52 : LD 1, 2(4) ;  Load parameter 'n' via FP
53 : ADD 3, 1, 0 ;  Stash right in R3
54 : LD 1, 1(4) ;  Load parameter 'sum' via FP
55 : ADD 2, 1, 0 ;  Move left to R2
56 : ADD 1, 3, 0 ;  Restore right to R1
57 : DIV 1, 2, 1 ;  R1 = left / right
58 : ST 1, 1(5) ;  Store print arg in callee frame
59 : LDA 6, 62(0) ;  Return address
60 : ST 6, 0(5) ;  Store RA in callee frame
61 : LDA 7, 9(0) ;  Call print
62 : LDC 2, 3(0) ;  Caller frame size
63 : SUB 5, 5, 2 ;  Pop callee frame
64 : LDA 4, 3(5) ;  Compute callee frame base (temp)
65 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
66 : LDA 4, 4(5) ;  Compute callee frame base (temp)
67 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
68 : LD 1, 1(4) ;  Load parameter 'sum' via FP
69 : ST 1, 1(5) ;  Store argument 0 in callee frame
70 : LD 1, 2(4) ;  Load parameter 'n' via FP
71 : ST 1, 2(5) ;  Store argument 1 in callee frame
72 : LDA 6, 75(0) ;  Return address
73 : ST 6, 0(5) ;  Store RA in callee frame
74 : LDA 7, 31(0) ;  Call MOD
75 : LD 1, 3(5) ;  Load callee result
76 : LDC 2, 4(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop callee frame
78 : ST 1, 1(5) ;  Store print arg in callee frame
79 : LDA 6, 82(0) ;  Return address
80 : ST 6, 0(5) ;  Store RA in callee frame
81 : LDA 7, 9(0) ;  Call print
82 : LDC 2, 3(0) ;  Caller frame size
83 : SUB 5, 5, 2 ;  Pop callee frame
84 : LD 1, 2(4) ;  Load parameter 'n' via FP
85 : ST 1, 3(4) ;  Store function result (via FP)
86 : LD 6, 0(4) ;  Load return address (via FP)
87 : LDA 7, 0(6) ;  Return to caller
88 : ADD 4, 5, 0 ;  Set FP at 88 entry
89 : LDC 1, 10(0) ;  Load integer literal into R1
90 : ADD 3, 1, 0 ;  Stash right in R3
91 : LD 1, 1(4) ;  Load parameter 'n' via FP
92 : ADD 2, 1, 0 ;  Move left to R2
93 : ADD 1, 3, 0 ;  Restore right to R1
94 : SUB 1, 2, 1 ;  left - right
95 : JLT 1, 2(7) ;  if < 0 then true
96 : LDC 1, 0(0) ;  false
97 : LDA 7, 1(7) ;  skip setting true
98 : LDC 1, 1(0) ;  true
99 : JEQ 1, 123(0) ;  If false, jump to ELSE
100 : LDA 4, 4(5) ;  Compute callee frame base (temp)
101 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
102 : LD 1, 1(4) ;  Load parameter 'n' via FP
103 : ADD 3, 1, 0 ;  Stash right in R3
104 : LD 1, 2(4) ;  Load parameter 'sum' via FP
105 : ADD 2, 1, 0 ;  Move left to R2
106 : ADD 1, 3, 0 ;  Restore right to R1
107 : ADD 1, 2, 1 ;  R1 = left + right
108 : ST 1, 1(5) ;  Store argument 0 in callee frame
109 : LDC 1, 1(0) ;  Load integer literal into R1
110 : ADD 3, 1, 0 ;  Stash right in R3
111 : LD 1, 3(4) ;  Load parameter 'i' via FP
112 : ADD 2, 1, 0 ;  Move left to R2
113 : ADD 1, 3, 0 ;  Restore right to R1
114 : ADD 1, 2, 1 ;  R1 = left + right
115 : ST 1, 2(5) ;  Store argument 1 in callee frame
116 : LDA 6, 119(0) ;  Return address
117 : ST 6, 0(5) ;  Store RA in callee frame
118 : LDA 7, 49(0) ;  Call print_and_return
119 : LD 1, 3(5) ;  Load callee result
120 : LDC 2, 4(0) ;  Caller frame size
121 : SUB 5, 5, 2 ;  Pop callee frame
122 : LDA 7, 163(0) ;  Skip ELSE
123 : LDA 4, 5(5) ;  Compute callee frame base (temp)
124 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
125 : LDC 1, 10(0) ;  Load integer literal into R1
126 : ADD 3, 1, 0 ;  Stash right in R3
127 : LD 1, 1(4) ;  Load parameter 'n' via FP
128 : ADD 2, 1, 0 ;  Move left to R2
129 : ADD 1, 3, 0 ;  Restore right to R1
130 : DIV 1, 2, 1 ;  R1 = left / right
131 : ST 1, 1(5) ;  Store argument 0 in callee frame
132 : LDA 4, 4(5) ;  Compute callee frame base (temp)
133 : ADD 5, 4, 0 ;  Push callee frame (SP=callee)
134 : LD 1, 1(4) ;  Load parameter 'n' via FP
135 : ST 1, 1(5) ;  Store argument 0 in callee frame
136 : LDC 1, 10(0) ;  Load integer literal into R1
137 : ST 1, 2(5) ;  Store argument 1 in callee frame
138 : LDA 6, 141(0) ;  Return address
139 : ST 6, 0(5) ;  Store RA in callee frame
140 : LDA 7, 31(0) ;  Call MOD
141 : LD 1, 3(5) ;  Load callee result
142 : LDC 2, 4(0) ;  Caller frame size
143 : SUB 5, 5, 2 ;  Pop callee frame
144 : ADD 3, 1, 0 ;  Stash right in R3
145 : LD 1, 2(4) ;  Load parameter 'sum' via FP
146 : ADD 2, 1, 0 ;  Move left to R2
147 : ADD 1, 3, 0 ;  Restore right to R1
148 : ADD 1, 2, 1 ;  R1 = left + right
149 : ST 1, 2(5) ;  Store argument 1 in callee frame
150 : LDC 1, 1(0) ;  Load integer literal into R1
151 : ADD 3, 1, 0 ;  Stash right in R3
152 : LD 1, 3(4) ;  Load parameter 'i' via FP
153 : ADD 2, 1, 0 ;  Move left to R2
154 : ADD 1, 3, 0 ;  Restore right to R1
155 : ADD 1, 2, 1 ;  R1 = left + right
156 : ST 1, 3(5) ;  Store argument 2 in callee frame
157 : LDA 6, 160(0) ;  Return address
158 : ST 6, 0(5) ;  Store RA in callee frame
159 : LDA 7, 88(0) ;  Call average_digit
160 : LD 1, 4(5) ;  Load callee result
161 : LDC 2, 5(0) ;  Caller frame size
162 : SUB 5, 5, 2 ;  Pop callee frame
163 : ST 1, 4(4) ;  Store function result (via FP)
164 : LD 6, 0(4) ;  Load return address (via FP)
165 : LDA 7, 0(6) ;  Return to caller
