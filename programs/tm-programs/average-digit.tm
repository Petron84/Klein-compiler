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
12 : LDA 4, 5(5) ;  Base of callee frame
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(4) ;  Store argument 0 in callee
15 : LDC 1, 0(0) ;  Load integer-literal value into R1
16 : ST 1, 2(4) ;  Store argument 1 in callee
17 : LDC 1, 0(0) ;  Load integer-literal value into R1
18 : ST 1, 3(4) ;  Store argument 2 in callee
19 : LDA 6, 23(0) ;  Return address
20 : ST 6, 0(4) ;  Store return in callee frame
21 : ADD 5, 4, 0 ;  Push callee frame
22 : LDA 7, 85(0) ;  Call average_digit
23 : LD 1, 4(5) ;  Load function result
24 : LDC 2, 5(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop back to caller
26 : ST 1, 2(5) ;  Store result into caller’s frame
27 : LD 1, 2(5) ;  Load return value into register 1
28 : LD 6, 0(5) ;  Load return address for main function into register 6
29 : LDA 7, 0(6) ;  Jump to runtime continuation
30 : LD 1, 2(5) ;  Load parameter 'n' into R1
31 : ADD 3, 1, 0 ;  Move right operand to R3
32 : LD 1, 1(5) ;  Load parameter 'm' into R1
33 : ADD 2, 1, 0 ;  Move left operand to R2
34 : ADD 1, 3, 0 ;  Restore right operand into R1
35 : DIV 1, 2, 1 ;  R1 = left / right
36 : ADD 2, 1, 0 ;  Move left operand to R2
37 : LD 1, 2(5) ;  Load parameter 'n' into R1
38 : MUL 1, 2, 1 ;  R1 = left * right
39 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
40 : LD 1, 1(5) ;  Load parameter 'm' into R1
41 : ADD 2, 1, 0 ;  Move left operand to R2
42 : ADD 1, 3, 0 ;  Restore right operand into R1
43 : SUB 1, 2, 1 ;  R1 = left - right
44 : ST 1, 3(5) ;  Store result into current frame's return slot
45 : ST 1, 3(5) ;  Store function result into stack frame
46 : LD 6, 0(5) ;  Load return address
47 : LDA 7, 0(6) ;  Return to caller
48 : LD 1, 2(5) ;  Load parameter 'n' into R1
49 : ADD 3, 1, 0 ;  Move right operand to R3
50 : LD 1, 1(5) ;  Load parameter 'sum' into R1
51 : ADD 2, 1, 0 ;  Move left operand to R2
52 : ADD 1, 3, 0 ;  Restore right operand into R1
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : LDA 4, 3(5) ;  Base of callee frame
55 : LDA 6, 59(0) ;  Return address
56 : ST 6, 0(4) ;  Store return addr in callee frame
57 : ADD 5, 4, 0 ;  Push new frame
58 : LDA 7, 9(0) ;  Call print
59 : LDC 2, 3(0) ;  Caller frame size
60 : SUB 5, 5, 2 ;  Pop frame
61 : LDA 4, 4(5) ;  Base of callee frame
62 : LD 1, 1(5) ;  Load parameter 'sum' into R1
63 : ST 1, 1(4) ;  Store argument 0 in callee
64 : LD 1, 2(5) ;  Load parameter 'n' into R1
65 : ST 1, 2(4) ;  Store argument 1 in callee
66 : LDA 6, 70(0) ;  Return address
67 : ST 6, 0(4) ;  Store return in callee frame
68 : ADD 5, 4, 0 ;  Push callee frame
69 : LDA 7, 30(0) ;  Call MOD
70 : LD 1, 3(5) ;  Load function result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop back to caller
73 : LDA 4, 3(5) ;  Base of callee frame
74 : LDA 6, 78(0) ;  Return address
75 : ST 6, 0(4) ;  Store return addr in callee frame
76 : ADD 5, 4, 0 ;  Push new frame
77 : LDA 7, 9(0) ;  Call print
78 : LDC 2, 3(0) ;  Caller frame size
79 : SUB 5, 5, 2 ;  Pop frame
80 : LD 1, 2(5) ;  Load parameter 'n' into R1
81 : ST 1, 3(5) ;  Store result into current frame's return slot
82 : ST 1, 3(5) ;  Store function result into stack frame
83 : LD 6, 0(5) ;  Load return address
84 : LDA 7, 0(6) ;  Return to caller
85 : LDC 1, 10(0) ;  Load integer-literal value into R1
86 : ADD 3, 1, 0 ;  Move right operand to R3
87 : LD 1, 1(5) ;  Load parameter 'n' into R1
88 : ADD 2, 1, 0 ;  Move left operand to R2
89 : ADD 1, 3, 0 ;  Restore right operand into R1
90 : SUB 1, 2, 1 ;  left - right for less-than check
91 : JLT 1, 2(7) ;  If R1 < 0, jump to true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip setting true
94 : LDC 1, 1(0) ;  true
95 : JEQ 1, 120(0) ;  If condition is false, jump to ELSE
96 : LDA 4, 4(5) ;  Base of callee frame
97 : LD 1, 1(5) ;  Load parameter 'n' into R1
98 : ADD 3, 1, 0 ;  Move right operand to R3
99 : LD 1, 2(5) ;  Load parameter 'sum' into R1
100 : ADD 2, 1, 0 ;  Move left operand to R2
101 : ADD 1, 3, 0 ;  Restore right operand into R1
102 : ADD 1, 2, 1 ;  R1 = left + right
103 : ST 1, 1(4) ;  Store argument 0 in callee
104 : LDC 1, 1(0) ;  Load integer-literal value into R1
105 : ADD 3, 1, 0 ;  Move right operand to R3
106 : LD 1, 3(5) ;  Load parameter 'i' into R1
107 : ADD 2, 1, 0 ;  Move left operand to R2
108 : ADD 1, 3, 0 ;  Restore right operand into R1
109 : ADD 1, 2, 1 ;  R1 = left + right
110 : ST 1, 2(4) ;  Store argument 1 in callee
111 : LDA 6, 115(0) ;  Return address
112 : ST 6, 0(4) ;  Store return in callee frame
113 : ADD 5, 4, 0 ;  Push callee frame
114 : LDA 7, 48(0) ;  Call print_and_return
115 : LD 1, 3(5) ;  Load function result
116 : LDC 2, 4(0) ;  Caller frame size
117 : SUB 5, 5, 2 ;  Pop back to caller
118 : ST 1, 4(5) ;  Store result into caller’s frame
119 : LDA 7, 161(0) ;  Skip ELSE block
120 : LDA 4, 5(5) ;  Base of callee frame
121 : LDC 1, 10(0) ;  Load integer-literal value into R1
122 : ADD 3, 1, 0 ;  Move right operand to R3
123 : LD 1, 1(5) ;  Load parameter 'n' into R1
124 : ADD 2, 1, 0 ;  Move left operand to R2
125 : ADD 1, 3, 0 ;  Restore right operand into R1
126 : DIV 1, 2, 1 ;  R1 = left / right
127 : ST 1, 1(4) ;  Store argument 0 in callee
128 : LDA 4, 4(5) ;  Base of callee frame
129 : LD 1, 1(5) ;  Load parameter 'n' into R1
130 : ST 1, 1(4) ;  Store argument 0 in callee
131 : LDC 1, 10(0) ;  Load integer-literal value into R1
132 : ST 1, 2(4) ;  Store argument 1 in callee
133 : LDA 6, 137(0) ;  Return address
134 : ST 6, 0(4) ;  Store return in callee frame
135 : ADD 5, 4, 0 ;  Push callee frame
136 : LDA 7, 30(0) ;  Call MOD
137 : LD 1, 3(5) ;  Load function result
138 : LDC 2, 4(0) ;  Caller frame size
139 : SUB 5, 5, 2 ;  Pop back to caller
140 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
141 : LD 1, 2(5) ;  Load parameter 'sum' into R1
142 : ADD 2, 1, 0 ;  Move left operand to R2
143 : ADD 1, 3, 0 ;  Restore right operand into R1
144 : ADD 1, 2, 1 ;  R1 = left + right
145 : ST 1, 2(4) ;  Store argument 1 in callee
146 : LDC 1, 1(0) ;  Load integer-literal value into R1
147 : ADD 3, 1, 0 ;  Move right operand to R3
148 : LD 1, 3(5) ;  Load parameter 'i' into R1
149 : ADD 2, 1, 0 ;  Move left operand to R2
150 : ADD 1, 3, 0 ;  Restore right operand into R1
151 : ADD 1, 2, 1 ;  R1 = left + right
152 : ST 1, 3(4) ;  Store argument 2 in callee
153 : LDA 6, 157(0) ;  Return address
154 : ST 6, 0(4) ;  Store return in callee frame
155 : ADD 5, 4, 0 ;  Push callee frame
156 : LDA 7, 85(0) ;  Call average_digit
157 : LD 1, 4(5) ;  Load function result
158 : LDC 2, 5(0) ;  Caller frame size
159 : SUB 5, 5, 2 ;  Pop back to caller
160 : ST 1, 4(5) ;  Store result into caller’s frame
161 : ST 1, 4(5) ;  Store function result into stack frame
162 : LD 6, 0(5) ;  Load return address
163 : LDA 7, 0(6) ;  Return to caller
