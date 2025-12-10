0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame (scratch)
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address (two lines ahead)
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return address from stack frame
11 : LDA 7, 0(6) ;  Jump to return address
12 : LDA 4, 4(5) ;  Base of callee frame
13 : LDC 1, 10(0) ;  Load integer-literal value into R1
14 : ADD 3, 1, 0 ;  Move right operand to R3
15 : LD 1, 1(5) ;  Load parameter 'n' into R1
16 : ADD 2, 1, 0 ;  Move left operand to R2
17 : ADD 1, 3, 0 ;  Restore right operand into R1
18 : DIV 1, 2, 1 ;  R1 = left / right
19 : ST 1, 1(4) ;  Store argument 0 in callee
20 : LDA 4, 4(5) ;  Base of callee frame
21 : LD 1, 1(5) ;  Load parameter 'n' into R1
22 : ST 1, 1(4) ;  Store argument 0 in callee
23 : LDC 1, 10(0) ;  Load integer-literal value into R1
24 : ST 1, 2(4) ;  Store argument 1 in callee
25 : LDA 6, 29(0) ;  Return address
26 : ST 6, 0(4) ;  Store return in callee frame
27 : ADD 5, 4, 0 ;  Push callee frame
28 : LDA 7, 44(0) ;  Call MOD
29 : LD 1, 3(5) ;  Load function result
30 : LDC 2, 4(0) ;  Caller frame size
31 : SUB 5, 5, 2 ;  Pop back to caller
32 : ST 1, 2(4) ;  Store argument 1 in callee
33 : LDA 6, 37(0) ;  Return address
34 : ST 6, 0(4) ;  Store return in callee frame
35 : ADD 5, 4, 0 ;  Push callee frame
36 : LDA 7, 142(0) ;  Call divisibleByParts
37 : LD 1, 3(5) ;  Load function result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop back to caller
40 : ST 1, 2(5) ;  Store result into caller’s frame
41 : LD 1, 2(5) ;  Load return value into register 1
42 : LD 6, 0(5) ;  Load return address for main function into register 6
43 : LDA 7, 0(6) ;  Jump to runtime continuation
44 : LD 1, 2(5) ;  Load parameter 'n' into R1
45 : ADD 3, 1, 0 ;  Move right operand to R3
46 : LD 1, 1(5) ;  Load parameter 'm' into R1
47 : ADD 2, 1, 0 ;  Move left operand to R2
48 : ADD 1, 3, 0 ;  Restore right operand into R1
49 : DIV 1, 2, 1 ;  R1 = left / right
50 : ADD 2, 1, 0 ;  Move left operand to R2
51 : LD 1, 2(5) ;  Load parameter 'n' into R1
52 : MUL 1, 2, 1 ;  R1 = left * right
53 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
54 : LD 1, 1(5) ;  Load parameter 'm' into R1
55 : ADD 2, 1, 0 ;  Move left operand to R2
56 : ADD 1, 3, 0 ;  Restore right operand into R1
57 : SUB 1, 2, 1 ;  R1 = left - right
58 : ST 1, 3(5) ;  Store result into current frame's return slot
59 : ST 1, 3(5) ;  Store function result into stack frame
60 : LD 6, 0(5) ;  Load return address
61 : LDA 7, 0(6) ;  Return to caller
62 : LDC 1, 7(0) ;  Load integer-literal value into R1
63 : ADD 3, 1, 0 ;  Move right operand to R3
64 : LD 1, 1(5) ;  Load parameter 'diff' into R1
65 : ADD 2, 1, 0 ;  Move left operand to R2
66 : ADD 1, 3, 0 ;  Restore right operand into R1
67 : SUB 1, 2, 1 ;  left - right for equality check
68 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
69 : LDC 1, 0(0) ;  false
70 : LDA 7, 1(7) ;  skip setting true
71 : LDC 1, 1(0) ;  true
72 : ADD 2, 1, 0 ;  Move left operand to R2
73 : LDC 1, 0(0) ;  Load integer-literal value into R1
74 : ADD 3, 1, 0 ;  Move right operand to R3
75 : LD 1, 1(5) ;  Load parameter 'diff' into R1
76 : ADD 2, 1, 0 ;  Move left operand to R2
77 : ADD 1, 3, 0 ;  Restore right operand into R1
78 : SUB 1, 2, 1 ;  left - right for equality check
79 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
80 : LDC 1, 0(0) ;  false
81 : LDA 7, 1(7) ;  skip setting true
82 : LDC 1, 1(0) ;  true
83 : ADD 1, 2, 1 ;  R1 = left OR right
84 : ADD 2, 1, 0 ;  Move left operand to R2
85 : LDC 1, 7(0) ;  Load integer-literal value into R1
86 : SUB 1, 0, 1 ;  Negate value in R1
87 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
88 : LD 1, 1(5) ;  Load parameter 'diff' into R1
89 : ADD 2, 1, 0 ;  Move left operand to R2
90 : ADD 1, 3, 0 ;  Restore right operand into R1
91 : SUB 1, 2, 1 ;  left - right for equality check
92 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
93 : LDC 1, 0(0) ;  false
94 : LDA 7, 1(7) ;  skip setting true
95 : LDC 1, 1(0) ;  true
96 : ADD 1, 2, 1 ;  R1 = left OR right
97 : ADD 2, 1, 0 ;  Move left operand to R2
98 : LDC 1, 14(0) ;  Load integer-literal value into R1
99 : SUB 1, 0, 1 ;  Negate value in R1
100 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
101 : LD 1, 1(5) ;  Load parameter 'diff' into R1
102 : ADD 2, 1, 0 ;  Move left operand to R2
103 : ADD 1, 3, 0 ;  Restore right operand into R1
104 : SUB 1, 2, 1 ;  left - right for equality check
105 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
106 : LDC 1, 0(0) ;  false
107 : LDA 7, 1(7) ;  skip setting true
108 : LDC 1, 1(0) ;  true
109 : ADD 1, 2, 1 ;  R1 = left OR right
110 : JEQ 1, 114(0) ;  If condition is false, jump to ELSE
111 : LDC 1, 1(0) ;  Load boolean-literal value into R1
112 : ST 1, 2(5) ;  Store result into current frame's return slot
113 : LDA 7, 139(0) ;  Skip ELSE block
114 : LDC 1, 14(0) ;  Load integer-literal value into R1
115 : ADD 3, 1, 0 ;  Move right operand to R3
116 : LD 1, 1(5) ;  Load parameter 'diff' into R1
117 : ADD 2, 1, 0 ;  Move left operand to R2
118 : ADD 1, 3, 0 ;  Restore right operand into R1
119 : SUB 1, 2, 1 ;  left - right for less-than check
120 : JLT 1, 2(7) ;  If R1 < 0, jump to true
121 : LDC 1, 0(0) ;  false
122 : LDA 7, 1(7) ;  skip setting true
123 : LDC 1, 1(0) ;  true
124 : JEQ 1, 128(0) ;  If condition is false, jump to ELSE
125 : LDC 1, 0(0) ;  Load boolean-literal value into R1
126 : ST 1, 2(5) ;  Store result into current frame's return slot
127 : LDA 7, 139(0) ;  Skip ELSE block
128 : LDA 4, 3(5) ;  Base of callee frame
129 : LD 1, 1(5) ;  Load parameter 'diff' into R1
130 : ST 1, 1(4) ;  Store argument 0 in callee
131 : LDA 6, 135(0) ;  Return address
132 : ST 6, 0(4) ;  Store return in callee frame
133 : ADD 5, 4, 0 ;  Push callee frame
134 : LDA 7, 12(0) ;  Call main
135 : LD 1, 2(5) ;  Load function result
136 : LDC 2, 3(0) ;  Caller frame size
137 : SUB 5, 5, 2 ;  Pop back to caller
138 : ST 1, 2(5) ;  Store result into caller’s frame
139 : ST 1, 2(5) ;  Store function result into stack frame
140 : LD 6, 0(5) ;  Load return address
141 : LDA 7, 0(6) ;  Return to caller
142 : LDA 4, 3(5) ;  Base of callee frame
143 : LDC 1, 2(0) ;  Load integer-literal value into R1
144 : ADD 3, 1, 0 ;  Move right operand to R3
145 : LD 1, 2(5) ;  Load parameter 'right' into R1
146 : ADD 2, 1, 0 ;  Move left operand to R2
147 : ADD 1, 3, 0 ;  Restore right operand into R1
148 : MUL 1, 2, 1 ;  R1 = left * right
149 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
150 : LD 1, 1(5) ;  Load parameter 'left' into R1
151 : ADD 2, 1, 0 ;  Move left operand to R2
152 : ADD 1, 3, 0 ;  Restore right operand into R1
153 : SUB 1, 2, 1 ;  R1 = left - right
154 : ST 1, 1(4) ;  Store argument 0 in callee
155 : LDA 6, 159(0) ;  Return address
156 : ST 6, 0(4) ;  Store return in callee frame
157 : ADD 5, 4, 0 ;  Push callee frame
158 : LDA 7, 62(0) ;  Call divisibleByDifference
159 : LD 1, 2(5) ;  Load function result
160 : LDC 2, 3(0) ;  Caller frame size
161 : SUB 5, 5, 2 ;  Pop back to caller
162 : ST 1, 3(5) ;  Store result into caller’s frame
163 : ST 1, 3(5) ;  Store function result into stack frame
164 : LD 6, 0(5) ;  Load return address
165 : LDA 7, 0(6) ;  Return to caller
