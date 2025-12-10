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
14 : LDC 1, 1(0) ;  Load integer-literal value into R1
15 : ADD 3, 1, 0 ;  Move right operand to R3
16 : LD 1, 1(5) ;  Load parameter 'm' into R1
17 : ADD 2, 1, 0 ;  Move left operand to R2
18 : ADD 1, 3, 0 ;  Restore right operand into R1
19 : SUB 1, 2, 1 ;  left - right for equality check
20 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 28(0) ;  If condition is false, jump to ELSE
25 : LD 1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 3(5) ;  Store result into current frame's return slot
27 : LDA 7, 79(0) ;  Skip ELSE block
28 : LDA 4, 4(5) ;  Base of callee frame
29 : LD 1, 2(5) ;  Load parameter 'n' into R1
30 : ST 1, 1(4) ;  Store argument 0 in callee
31 : LD 1, 1(5) ;  Load parameter 'm' into R1
32 : ST 1, 2(4) ;  Store argument 1 in callee
33 : LDA 6, 37(0) ;  Return address
34 : ST 6, 0(4) ;  Store return in callee frame
35 : ADD 5, 4, 0 ;  Push callee frame
36 : LDA 7, 82(0) ;  Call MOD
37 : LD 1, 3(5) ;  Load function result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop back to caller
40 : ADD 2, 1, 0 ;  Move left operand to R2
41 : LDC 1, 0(0) ;  Load integer-literal value into R1
42 : SUB 1, 2, 1 ;  left - right for equality check
43 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
44 : LDC 1, 0(0) ;  false
45 : LDA 7, 1(7) ;  skip setting true
46 : LDC 1, 1(0) ;  true
47 : JEQ 1, 56(0) ;  If condition is false, jump to ELSE
48 : LD 1, 1(5) ;  Load parameter 'm' into R1
49 : ADD 3, 1, 0 ;  Move right operand to R3
50 : LD 1, 2(5) ;  Load parameter 'n' into R1
51 : ADD 2, 1, 0 ;  Move left operand to R2
52 : ADD 1, 3, 0 ;  Restore right operand into R1
53 : DIV 1, 2, 1 ;  R1 = left / right
54 : ST 1, 3(5) ;  Store result into current frame's return slot
55 : LDA 7, 79(0) ;  Skip ELSE block
56 : LDA 4, 5(5) ;  Base of callee frame
57 : LD 1, 1(5) ;  Load parameter 'm' into R1
58 : ST 1, 1(4) ;  Store argument 0 in callee
59 : LD 1, 2(5) ;  Load parameter 'n' into R1
60 : ST 1, 2(4) ;  Store argument 1 in callee
61 : LD 1, 1(5) ;  Load parameter 'm' into R1
62 : ADD 3, 1, 0 ;  Move right operand to R3
63 : LD 1, 2(5) ;  Load parameter 'n' into R1
64 : ADD 2, 1, 0 ;  Move left operand to R2
65 : ADD 1, 3, 0 ;  Restore right operand into R1
66 : DIV 1, 2, 1 ;  R1 = left / right
67 : ADD 2, 1, 0 ;  Move left operand to R2
68 : LDC 1, 1(0) ;  Load integer-literal value into R1
69 : ADD 1, 2, 1 ;  R1 = left + right
70 : ST 1, 3(4) ;  Store argument 2 in callee
71 : LDA 6, 75(0) ;  Return address
72 : ST 6, 0(4) ;  Store return in callee frame
73 : ADD 5, 4, 0 ;  Push callee frame
74 : LDA 7, 100(0) ;  Call print_and_continue
75 : LD 1, 4(5) ;  Load function result
76 : LDC 2, 5(0) ;  Caller frame size
77 : SUB 5, 5, 2 ;  Pop back to caller
78 : ST 1, 3(5) ;  Store result into caller’s frame
79 : LD 1, 3(5) ;  Load return value into register 1
80 : LD 6, 0(5) ;  Load return address for main function into register 6
81 : LDA 7, 0(6) ;  Jump to runtime continuation
82 : LD 1, 2(5) ;  Load parameter 'n' into R1
83 : ADD 3, 1, 0 ;  Move right operand to R3
84 : LD 1, 1(5) ;  Load parameter 'm' into R1
85 : ADD 2, 1, 0 ;  Move left operand to R2
86 : ADD 1, 3, 0 ;  Restore right operand into R1
87 : DIV 1, 2, 1 ;  R1 = left / right
88 : ADD 2, 1, 0 ;  Move left operand to R2
89 : LD 1, 2(5) ;  Load parameter 'n' into R1
90 : MUL 1, 2, 1 ;  R1 = left * right
91 : ADD 3, 1, 0 ;  Move right operand to R3 (scratch)
92 : LD 1, 1(5) ;  Load parameter 'm' into R1
93 : ADD 2, 1, 0 ;  Move left operand to R2
94 : ADD 1, 3, 0 ;  Restore right operand into R1
95 : SUB 1, 2, 1 ;  R1 = left - right
96 : ST 1, 3(5) ;  Store result into current frame's return slot
97 : ST 1, 3(5) ;  Store function result into stack frame
98 : LD 6, 0(5) ;  Load return address
99 : LDA 7, 0(6) ;  Return to caller
100 : LD 1, 3(5) ;  Load parameter 'unit' into R1
101 : LDA 4, 3(5) ;  Base of callee frame
102 : LDA 6, 106(0) ;  Return address
103 : ST 6, 0(4) ;  Store return addr in callee frame
104 : ADD 5, 4, 0 ;  Push new frame
105 : LDA 7, 11(0) ;  Call print
106 : LDC 2, 3(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop frame
108 : LDA 4, 4(5) ;  Base of callee frame
109 : LD 1, 1(5) ;  Load parameter 'm' into R1
110 : ADD 3, 1, 0 ;  Move right operand to R3
111 : LD 1, 3(5) ;  Load parameter 'unit' into R1
112 : ADD 2, 1, 0 ;  Move left operand to R2
113 : ADD 1, 3, 0 ;  Restore right operand into R1
114 : MUL 1, 2, 1 ;  R1 = left * right
115 : ADD 2, 1, 0 ;  Move left operand to R2
116 : LD 1, 2(5) ;  Load parameter 'n' into R1
117 : SUB 1, 2, 1 ;  R1 = left - right
118 : ST 1, 1(4) ;  Store argument 0 in callee
119 : LD 1, 3(5) ;  Load parameter 'unit' into R1
120 : ADD 3, 1, 0 ;  Move right operand to R3
121 : LD 1, 2(5) ;  Load parameter 'n' into R1
122 : ADD 2, 1, 0 ;  Move left operand to R2
123 : ADD 1, 3, 0 ;  Restore right operand into R1
124 : MUL 1, 2, 1 ;  R1 = left * right
125 : ST 1, 2(4) ;  Store argument 1 in callee
126 : LDA 6, 130(0) ;  Return address
127 : ST 6, 0(4) ;  Store return in callee frame
128 : ADD 5, 4, 0 ;  Push callee frame
129 : LDA 7, 14(0) ;  Call main
130 : LD 1, 3(5) ;  Load function result
131 : LDC 2, 4(0) ;  Caller frame size
132 : SUB 5, 5, 2 ;  Pop back to caller
133 : ST 1, 4(5) ;  Store result into caller’s frame
134 : ST 1, 4(5) ;  Store function result into stack frame
135 : LD 6, 0(5) ;  Load return address
136 : LDA 7, 0(6) ;  Return to caller
