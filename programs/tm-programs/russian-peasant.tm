0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return address from stack frame
13 : LDA 7, 0(6) ;  Jump to return address
14 : LD 1, 1(5) ;  Load parameter 'm' into R1
15 : LDA 4, 3(5) ;  Base of callee frame
16 : LDA 6, 20(0) ;  Return address
17 : ST 6, 0(4) ;  Store return addr in callee frame
18 : ADD 5, 4, 0 ;  Push new frame
19 : LDA 7, 11(0) ;  Call print
20 : LDC 2, 3(0) ;  Caller frame size
21 : SUB 5, 5, 2 ;  Pop frame
22 : LDA 4, 4(5) ;  Base of callee frame
23 : LD 1, 1(5) ;  Load parameter 'm' into R1
24 : ST 1, 1(4) ;  Store argument 0 in callee
25 : LD 1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 2(4) ;  Store argument 1 in callee
27 : LDA 6, 31(0) ;  Return address
28 : ST 6, 0(4) ;  Store return in callee frame
29 : ADD 5, 4, 0 ;  Push callee frame
30 : LDA 7, 38(0) ;  Call mult
31 : LD 1, 3(5) ;  Load function result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop back to caller
34 : ST 1, 3(5) ;  Store result into caller’s frame
35 : LD 1, 3(5) ;  Load return value into register 1
36 : LD 6, 0(5) ;  Load return address for main function into register 6
37 : LDA 7, 0(6) ;  Jump to runtime continuation
38 : LDA 4, 5(5) ;  Base of callee frame
39 : LD 1, 1(5) ;  Load parameter 'm' into R1
40 : ST 1, 1(4) ;  Store argument 0 in callee
41 : LD 1, 2(5) ;  Load parameter 'n' into R1
42 : ST 1, 2(4) ;  Store argument 1 in callee
43 : LDC 1, 0(0) ;  Load integer-literal value into R1
44 : ST 1, 3(4) ;  Store argument 2 in callee
45 : LDA 6, 49(0) ;  Return address
46 : ST 6, 0(4) ;  Store return in callee frame
47 : ADD 5, 4, 0 ;  Push callee frame
48 : LDA 7, 56(0) ;  Call multWithAccum
49 : LD 1, 4(5) ;  Load function result
50 : LDC 2, 5(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop back to caller
52 : ST 1, 3(5) ;  Store result into caller’s frame
53 : ST 1, 3(5) ;  Store function result into stack frame
54 : LD 6, 0(5) ;  Load return address
55 : LDA 7, 0(6) ;  Return to caller
56 : LDC 1, 0(0) ;  Load integer-literal value into R1
57 : ADD 3, 1, 0 ;  Move right operand to R3
58 : LD 1, 2(5) ;  Load parameter 'n' into R1
59 : ADD 2, 1, 0 ;  Move left operand to R2
60 : ADD 1, 3, 0 ;  Restore right operand into R1
61 : SUB 1, 2, 1 ;  left - right for equality check
62 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
63 : LDC 1, 0(0) ;  false
64 : LDA 7, 1(7) ;  skip setting true
65 : LDC 1, 1(0) ;  true
66 : JEQ 1, 70(0) ;  If condition is false, jump to ELSE
67 : LD 1, 3(5) ;  Load parameter 'accum' into R1
68 : ST 1, 4(5) ;  Store result into current frame's return slot
69 : LDA 7, 146(0) ;  Skip ELSE block
70 : LDA 4, 4(5) ;  Base of callee frame
71 : LD 1, 2(5) ;  Load parameter 'n' into R1
72 : ST 1, 1(4) ;  Store argument 0 in callee
73 : LDC 1, 2(0) ;  Load integer-literal value into R1
74 : ST 1, 2(4) ;  Store argument 1 in callee
75 : LDA 6, 79(0) ;  Return address
76 : ST 6, 0(4) ;  Store return in callee frame
77 : ADD 5, 4, 0 ;  Push callee frame
78 : LDA 7, 149(0) ;  Call MOD
79 : LD 1, 3(5) ;  Load function result
80 : LDC 2, 4(0) ;  Caller frame size
81 : SUB 5, 5, 2 ;  Pop back to caller
82 : ADD 2, 1, 0 ;  Move left operand to R2
83 : LDC 1, 1(0) ;  Load integer-literal value into R1
84 : SUB 1, 2, 1 ;  left - right for equality check
85 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
86 : LDC 1, 0(0) ;  false
87 : LDA 7, 1(7) ;  skip setting true
88 : LDC 1, 1(0) ;  true
89 : JEQ 1, 121(0) ;  If condition is false, jump to ELSE
90 : LDA 4, 5(5) ;  Base of callee frame
91 : LDC 1, 2(0) ;  Load integer-literal value into R1
92 : ADD 3, 1, 0 ;  Move right operand to R3
93 : LD 1, 1(5) ;  Load parameter 'm' into R1
94 : ADD 2, 1, 0 ;  Move left operand to R2
95 : ADD 1, 3, 0 ;  Restore right operand into R1
96 : MUL 1, 2, 1 ;  R1 = left * right
97 : ST 1, 1(4) ;  Store argument 0 in callee
98 : LDC 1, 2(0) ;  Load integer-literal value into R1
99 : ADD 3, 1, 0 ;  Move right operand to R3
100 : LD 1, 2(5) ;  Load parameter 'n' into R1
101 : ADD 2, 1, 0 ;  Move left operand to R2
102 : ADD 1, 3, 0 ;  Restore right operand into R1
103 : DIV 1, 2, 1 ;  R1 = left / right
104 : ST 1, 2(4) ;  Store argument 1 in callee
105 : LD 1, 1(5) ;  Load parameter 'm' into R1
106 : ADD 3, 1, 0 ;  Move right operand to R3
107 : LD 1, 3(5) ;  Load parameter 'accum' into R1
108 : ADD 2, 1, 0 ;  Move left operand to R2
109 : ADD 1, 3, 0 ;  Restore right operand into R1
110 : ADD 1, 2, 1 ;  R1 = left + right
111 : ST 1, 3(4) ;  Store argument 2 in callee
112 : LDA 6, 116(0) ;  Return address
113 : ST 6, 0(4) ;  Store return in callee frame
114 : ADD 5, 4, 0 ;  Push callee frame
115 : LDA 7, 56(0) ;  Call multWithAccum
116 : LD 1, 4(5) ;  Load function result
117 : LDC 2, 5(0) ;  Caller frame size
118 : SUB 5, 5, 2 ;  Pop back to caller
119 : ST 1, 4(5) ;  Store result into caller’s frame
120 : LDA 7, 146(0) ;  Skip ELSE block
121 : LDA 4, 5(5) ;  Base of callee frame
122 : LDC 1, 2(0) ;  Load integer-literal value into R1
123 : ADD 3, 1, 0 ;  Move right operand to R3
124 : LD 1, 1(5) ;  Load parameter 'm' into R1
125 : ADD 2, 1, 0 ;  Move left operand to R2
126 : ADD 1, 3, 0 ;  Restore right operand into R1
127 : MUL 1, 2, 1 ;  R1 = left * right
128 : ST 1, 1(4) ;  Store argument 0 in callee
129 : LDC 1, 2(0) ;  Load integer-literal value into R1
130 : ADD 3, 1, 0 ;  Move right operand to R3
131 : LD 1, 2(5) ;  Load parameter 'n' into R1
132 : ADD 2, 1, 0 ;  Move left operand to R2
133 : ADD 1, 3, 0 ;  Restore right operand into R1
134 : DIV 1, 2, 1 ;  R1 = left / right
135 : ST 1, 2(4) ;  Store argument 1 in callee
136 : LD 1, 3(5) ;  Load parameter 'accum' into R1
137 : ST 1, 3(4) ;  Store argument 2 in callee
138 : LDA 6, 142(0) ;  Return address
139 : ST 6, 0(4) ;  Store return in callee frame
140 : ADD 5, 4, 0 ;  Push callee frame
141 : LDA 7, 56(0) ;  Call multWithAccum
142 : LD 1, 4(5) ;  Load function result
143 : LDC 2, 5(0) ;  Caller frame size
144 : SUB 5, 5, 2 ;  Pop back to caller
145 : ST 1, 4(5) ;  Store result into caller’s frame
146 : ST 1, 4(5) ;  Store function result into stack frame
147 : LD 6, 0(5) ;  Load return address
148 : LDA 7, 0(6) ;  Return to caller
149 : LD 1, 2(5) ;  Load parameter 'n' into R1
150 : ADD 3, 1, 0 ;  Move right operand to R3
151 : LD 1, 1(5) ;  Load parameter 'm' into R1
152 : ADD 2, 1, 0 ;  Move left operand to R2
153 : ADD 1, 3, 0 ;  Restore right operand into R1
154 : DIV 1, 2, 1 ;  R1 = left / right
155 : ADD 2, 1, 0 ;  Move left operand to R2
156 : LD 1, 2(5) ;  Load parameter 'n' into R1
157 : MUL 1, 2, 1 ;  R1 = left * right
158 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
159 : LD 1, 1(5) ;  Load parameter 'm' into R1
160 : ADD 2, 1, 0 ;  Move left operand to R2
161 : ADD 1, 3, 0 ;  Restore right operand into R1
162 : SUB 1, 2, 1 ;  R1 = left - right
163 : ST 1, 3(5) ;  Store result into current frame's return slot
164 : ST 1, 3(5) ;  Store function result into stack frame
165 : LD 6, 0(5) ;  Load return address
166 : LDA 7, 0(6) ;  Return to caller
