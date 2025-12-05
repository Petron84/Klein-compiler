1 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
2 : LD  2, 1(0) ;  Load CLI arg 1 into R2
3 : ST  2, 1(5) ;  Store the argument 1 into main frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST  6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT 1, 0, 0 ;  Hardcoded print function
11 : LD  6, 0(5) ;  Load return addess from stack frame.
12 : LDA 7, 0(6) ;  Jump to return address.
14 : LD  1, 1(5) ;  Load parameter 'n' into R1
15 : LDA 4, 5(5) ;  Base of callee frame
16 : ST  1, 1(4) ;  Store argument 0 into callee frame
17 : LDC 1, 0(0) ;  Load integer-literal into R1
18 : LDA 4, 5(5) ;  Base of callee frame
19 : ST  1, 2(4) ;  Store argument 1 into callee frame
20 : LDC 1, 0(0) ;  Load integer-literal into R1
21 : LDA 4, 5(5) ;  Base of callee frame
22 : ST  1, 3(4) ;  Store argument 2 into callee frame
23 : LDA 4, 5(5) ;  Base of callee frame
24 : LDA 6, 28(0) ;  Compute return address
25 : ST  6, 0(4) ;  Store RA in callee frame
26 : ADD 5, 4, 0 ;  Update pointer (enter callee)
27 : LDA 7, 91(0) ;  Call average_digit
28 : LD  1, 4(5) ;  Load callee return value into R1
29 : LDC 3, 5(0) ;  Load callee frame size
30 : SUB 5, 5, 3 ;  Restore pointer
31 : ST  1, 2(5) ;  Store result into current frame's return slot
32 : LD  1, 2(5) ;  Load return value into R1
33 : LD  6, 0(5) ;  Load return address for main function into R6
34 : LDA 7, 0(6) ;  Jump to return address of main function
36 : LD  1, 1(5) ;  Load parameter 'm' into R1
37 : ADD 2, 1, 0 ;  R2 = left operand
38 : LD  1, 1(5) ;  Load parameter 'm' into R1
39 : ADD 2, 1, 0 ;  R2 = left operand
40 : LD  1, 2(5) ;  Load parameter 'n' into R1
41 : DIV 3, 2, 1 ;  R3 = left / right
42 : ADD 1, 3, 0 ;  R1 = R3
43 : ADD 2, 1, 0 ;  R2 = left operand
44 : LD  1, 2(5) ;  Load parameter 'n' into R1
45 : MUL 3, 2, 1 ;  R3 = left * right
46 : ADD 1, 3, 0 ;  R1 = R3
47 : SUB 3, 2, 1 ;  R3 = left - right
48 : ADD 1, 3, 0 ;  R1 = R3
49 : ST  1, 3(5) ;  Store function result into stack frame
50 : LD  6, 0(5) ;  Load return address
51 : LDA 7, 0(6) ;  Return to caller
53 : LD  1, 1(5) ;  Load parameter 'sum' into R1
54 : ADD 2, 1, 0 ;  R2 = left operand
55 : LD  1, 2(5) ;  Load parameter 'n' into R1
56 : DIV 3, 2, 1 ;  R3 = left / right
57 : ADD 1, 3, 0 ;  R1 = R3
58 : LDA 4, 3(5) ;  Base of callee frame (print)
59 : LDA 6, 63(0) ;  Compute return address
60 : ST  6, 0(4) ;  Store RA in callee frame
61 : ADD 5, 4, 0 ;  Update pointer (enter callee)
62 : LDA 7, 10(0) ;  Call print
63 : LDC 3, 3(0) ;  Load callee frame size
64 : SUB 5, 5, 3 ;  Restore pointer
65 : LD  1, 1(5) ;  Load parameter 'sum' into R1
66 : LDA 4, 4(5) ;  Base of callee frame
67 : ST  1, 1(4) ;  Store argument 0 into callee frame
68 : LD  1, 2(5) ;  Load parameter 'n' into R1
69 : LDA 4, 4(5) ;  Base of callee frame
70 : ST  1, 2(4) ;  Store argument 1 into callee frame
71 : LDA 4, 4(5) ;  Base of callee frame
72 : LDA 6, 76(0) ;  Compute return address
73 : ST  6, 0(4) ;  Store RA in callee frame
74 : ADD 5, 4, 0 ;  Update pointer (enter callee)
75 : LDA 7, 36(0) ;  Call MOD
76 : LD  1, 3(5) ;  Load callee return value into R1
77 : LDC 3, 4(0) ;  Load callee frame size
78 : SUB 5, 5, 3 ;  Restore pointer
79 : LDA 4, 3(5) ;  Base of callee frame (print)
80 : LDA 6, 84(0) ;  Compute return address
81 : ST  6, 0(4) ;  Store RA in callee frame
82 : ADD 5, 4, 0 ;  Update pointer (enter callee)
83 : LDA 7, 10(0) ;  Call print
84 : LDC 3, 3(0) ;  Load callee frame size
85 : SUB 5, 5, 3 ;  Restore pointer
86 : LD  1, 2(5) ;  Load parameter 'n' into R1
87 : ST  1, 3(5) ;  Store function result into stack frame
88 : LD  6, 0(5) ;  Load return address
89 : LDA 7, 0(6) ;  Return to caller
92 : LD  1, 1(5) ;  Load parameter 'n' into R1
93 : ADD 2, 1, 0 ;  R2 = left operand
94 : LDC 1, 10(0) ;  Load integer-literal into R1
95 : SUB 3, 2, 1 ;  delta = left - right
96 : JLT 3, 2(7) ;  If delta < 0 jump to TRUE
97 : LDC 1, 0(0) ;  FALSE
98 : LDA 7, 1(7) ;  Skip TRUE
99 : LDC 1, 1(0) ;  TRUE
100 : JEQ 1, 126(0) ;  If condition is false, jump to ELSE
102 : LD  1, 2(5) ;  Load parameter 'sum' into R1
103 : ADD 2, 1, 0 ;  R2 = left operand
104 : LD  1, 1(5) ;  Load parameter 'n' into R1
105 : ADD 3, 2, 1 ;  R3 = left + right
106 : ADD 1, 3, 0 ;  R1 = R3
107 : LDA 4, 4(5) ;  Base of callee frame
108 : ST  1, 1(4) ;  Store argument 0 into callee frame
109 : LD  1, 3(5) ;  Load parameter 'i' into R1
110 : ADD 2, 1, 0 ;  R2 = left operand
111 : LDC 1, 1(0) ;  Load integer-literal into R1
112 : ADD 3, 2, 1 ;  R3 = left + right
113 : ADD 1, 3, 0 ;  R1 = R3
114 : LDA 4, 4(5) ;  Base of callee frame
115 : ST  1, 2(4) ;  Store argument 1 into callee frame
116 : LDA 4, 4(5) ;  Base of callee frame
117 : LDA 6, 121(0) ;  Compute return address
118 : ST  6, 0(4) ;  Store RA in callee frame
119 : ADD 5, 4, 0 ;  Update pointer (enter callee)
120 : LDA 7, 53(0) ;  Call print_and_return
121 : LD  1, 3(5) ;  Load callee return value into R1
122 : LDC 3, 4(0) ;  Load callee frame size
123 : SUB 5, 5, 3 ;  Restore pointer
124 : LDA 7, 168(0) ;  Skip ELSE block
126 : LD  1, 1(5) ;  Load parameter 'n' into R1
127 : ADD 2, 1, 0 ;  R2 = left operand
128 : LDC 1, 10(0) ;  Load integer-literal into R1
129 : DIV 3, 2, 1 ;  R3 = left / right
130 : ADD 1, 3, 0 ;  R1 = R3
131 : LDA 4, 5(5) ;  Base of callee frame
132 : ST  1, 1(4) ;  Store argument 0 into callee frame
133 : LD  1, 2(5) ;  Load parameter 'sum' into R1
134 : ADD 2, 1, 0 ;  R2 = left operand
135 : LD  1, 1(5) ;  Load parameter 'n' into R1
136 : LDA 4, 4(5) ;  Base of callee frame
137 : ST  1, 1(4) ;  Store argument 0 into callee frame
138 : LDC 1, 10(0) ;  Load integer-literal into R1
139 : LDA 4, 4(5) ;  Base of callee frame
140 : ST  1, 2(4) ;  Store argument 1 into callee frame
141 : LDA 4, 4(5) ;  Base of callee frame
142 : LDA 6, 146(0) ;  Compute return address
143 : ST  6, 0(4) ;  Store RA in callee frame
144 : ADD 5, 4, 0 ;  Update pointer (enter callee)
145 : LDA 7, 36(0) ;  Call MOD
146 : LD  1, 3(5) ;  Load callee return value into R1
147 : LDC 3, 4(0) ;  Load callee frame size
148 : SUB 5, 5, 3 ;  Restore pointer
149 : ADD 3, 2, 1 ;  R3 = left + right
150 : ADD 1, 3, 0 ;  R1 = R3
151 : LDA 4, 5(5) ;  Base of callee frame
152 : ST  1, 2(4) ;  Store argument 1 into callee frame
153 : LD  1, 3(5) ;  Load parameter 'i' into R1
154 : ADD 2, 1, 0 ;  R2 = left operand
155 : LDC 1, 1(0) ;  Load integer-literal into R1
156 : ADD 3, 2, 1 ;  R3 = left + right
157 : ADD 1, 3, 0 ;  R1 = R3
158 : LDA 4, 5(5) ;  Base of callee frame
159 : ST  1, 3(4) ;  Store argument 2 into callee frame
160 : LDA 4, 5(5) ;  Base of callee frame
161 : LDA 6, 165(0) ;  Compute return address
162 : ST  6, 0(4) ;  Store RA in callee frame
163 : ADD 5, 4, 0 ;  Update pointer (enter callee)
164 : LDA 7, 91(0) ;  Call average_digit
165 : LD  1, 4(5) ;  Load callee return value into R1
166 : LDC 3, 5(0) ;  Load callee frame size
167 : SUB 5, 5, 3 ;  Restore pointer
168 : ST  1, 4(5) ;  Store function result into stack frame
169 : LD  6, 0(5) ;  Load return address
170 : LDA 7, 0(6) ;  Return to caller
