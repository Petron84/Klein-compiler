0 : LDC 5, 3(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LD 2, 2(0) ;  Load CLI arg 2 into register
5 : ST 2, 2(5) ;  Store the argument into stack frame
6 : LDA 6, 2(7) ;  Calculate return address
7 : ST 6, 0(5) ;  Store return address in main stack frame
8 : LDA 7, 14(0) ;  Load address of main IMEM block - branch to function
9 : OUT 1, 0, 0 ;  Return result
10 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
11 : OUT 1, 0, 0 ;  Hardcoded print function
12 : LD 6, 0(5) ;  Load return addess from stack frame.
13 : LDA 7, 0(6) ;  Jump to return address.
14 : LD 1, 1(5) ;  Load parameter 'm' into R1
15 : LDA 3, 3(5) ; Base of callee frame (stable)
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(3) ; Store return addr in callee frame
18 : ADD 5, 3, 0 ; Push new frame
19 : LDA 7, 11(0) ; Call print
20 : LDC 2, 3(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop frame
22 : LDA 3, 4(5) ; Base of callee frame (stable)
23 : LD 1, 1(5) ;  Load parameter 'm' into R1
24 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
25 : LD 1, 2(5) ;  Load parameter 'n' into R1
26 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(3) ; Store return in callee frame (via R3)
29 : ADD 5, 3, 0 ; Push callee frame
30 : LDA 7, 38(0) ; Call mult
31 : LD 1, 3(5) ;  Load function result
32 : LDC 2, 4(0) ;  Caller frame size
33 : SUB 5, 5, 2 ;  Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s frame
35 : LD 1, 3(5) ;  Load return value into register 1
36 : LD 6, 0(5) ;  Load return address for main function into register 6
37 : LDA 7, 0(6) ;  Jump to return address of main function
38 : LDA 3, 5(5) ; Base of callee frame (stable)
39 : LD 1, 1(5) ;  Load parameter 'm' into R1
40 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
41 : LD 1, 2(5) ;  Load parameter 'n' into R1
42 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
43 : LDC 1, 0(0) ;  Load integer-literal value into register 1
44 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(3) ; Store return in callee frame (via R3)
47 : ADD 5, 3, 0 ; Push callee frame
48 : LDA 7, 55(0) ; Call multWithAccum
49 : LD 1, 4(5) ;  Load function result
50 : LDC 2, 5(0) ;  Caller frame size
51 : SUB 5, 5, 2 ;  Pop back to caller
52 : ST 1, 3(5) ;  Store function result into stack frame
53 : LD 6, 0(5) ;  Load return address
54 : LDA 7, 0(6) ;  Return to caller
55 : LDC 1, 0(0) ;  Load integer-literal value into register 1
56 : ADD 3, 1, 0 ;  Stash right operand in R3
57 : LD 1, 2(5) ;  Load parameter 'n' into R1
58 : ADD 2, 1, 0 ;  Move left operand to register 2
59 : ADD 1, 3, 0 ;  Restore right operand from R3
60 : SUB 1, 2, 1 ;  left - right for equality check
61 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : JEQ 1, 68(0) ;  If condition is false, jump to ELSE
66 : LD 1, 3(5) ;  Load parameter 'accum' into R1
67 : LDA 7, 142(0) ;  Skip ELSE block
68 : LDA 3, 4(5) ; Base of callee frame (stable)
69 : LD 1, 2(5) ;  Load parameter 'n' into R1
70 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
71 : LDC 1, 2(0) ;  Load integer-literal value into register 1
72 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(3) ; Store return in callee frame (via R3)
75 : ADD 5, 3, 0 ; Push callee frame
76 : LDA 7, 145(0) ; Call MOD
77 : LD 1, 3(5) ;  Load function result
78 : LDC 2, 4(0) ;  Caller frame size
79 : SUB 5, 5, 2 ;  Pop back to caller
80 : ADD 2, 1, 0 ;  Move left operand to register 2
81 : LDC 1, 1(0) ;  Load integer-literal value into register 1
82 : SUB 1, 2, 1 ;  left - right for equality check
83 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
84 : LDC 1, 0(0) ;  false
85 : LDA 7, 1(7) ;  skip setting true
86 : LDC 1, 1(0) ;  true
87 : JEQ 1, 118(0) ;  If condition is false, jump to ELSE
88 : LDA 3, 5(5) ; Base of callee frame (stable)
89 : LDC 1, 2(0) ;  Load integer-literal value into register 1
90 : ADD 3, 1, 0 ;  Stash right operand in R3
91 : LD 1, 1(5) ;  Load parameter 'm' into R1
92 : ADD 2, 1, 0 ;  Move left operand to register 2
93 : ADD 1, 3, 0 ;  Restore right operand from R3
94 : MUL 1, 2, 1 ;  R1 = left * right
95 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
96 : LDC 1, 2(0) ;  Load integer-literal value into register 1
97 : ADD 3, 1, 0 ;  Stash right operand in R3
98 : LD 1, 2(5) ;  Load parameter 'n' into R1
99 : ADD 2, 1, 0 ;  Move left operand to register 2
100 : ADD 1, 3, 0 ;  Restore right operand from R3
101 : DIV 1, 2, 1 ;  R1 = left / right
102 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
103 : LD 1, 1(5) ;  Load parameter 'm' into R1
104 : ADD 3, 1, 0 ;  Stash right operand in R3
105 : LD 1, 3(5) ;  Load parameter 'accum' into R1
106 : ADD 2, 1, 0 ;  Move left operand to register 2
107 : ADD 1, 3, 0 ;  Restore right operand from R3
108 : ADD 1, 2, 1 ;  R1 = left + right
109 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(3) ; Store return in callee frame (via R3)
112 : ADD 5, 3, 0 ; Push callee frame
113 : LDA 7, 55(0) ; Call multWithAccum
114 : LD 1, 4(5) ;  Load function result
115 : LDC 2, 5(0) ;  Caller frame size
116 : SUB 5, 5, 2 ;  Pop back to caller
117 : LDA 7, 142(0) ;  Skip ELSE block
118 : LDA 3, 5(5) ; Base of callee frame (stable)
119 : LDC 1, 2(0) ;  Load integer-literal value into register 1
120 : ADD 3, 1, 0 ;  Stash right operand in R3
121 : LD 1, 1(5) ;  Load parameter 'm' into R1
122 : ADD 2, 1, 0 ;  Move left operand to register 2
123 : ADD 1, 3, 0 ;  Restore right operand from R3
124 : MUL 1, 2, 1 ;  R1 = left * right
125 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
126 : LDC 1, 2(0) ;  Load integer-literal value into register 1
127 : ADD 3, 1, 0 ;  Stash right operand in R3
128 : LD 1, 2(5) ;  Load parameter 'n' into R1
129 : ADD 2, 1, 0 ;  Move left operand to register 2
130 : ADD 1, 3, 0 ;  Restore right operand from R3
131 : DIV 1, 2, 1 ;  R1 = left / right
132 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
133 : LD 1, 3(5) ;  Load parameter 'accum' into R1
134 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(3) ; Store return in callee frame (via R3)
137 : ADD 5, 3, 0 ; Push callee frame
138 : LDA 7, 55(0) ; Call multWithAccum
139 : LD 1, 4(5) ;  Load function result
140 : LDC 2, 5(0) ;  Caller frame size
141 : SUB 5, 5, 2 ;  Pop back to caller
142 : ST 1, 4(5) ;  Store function result into stack frame
143 : LD 6, 0(5) ;  Load return address
144 : LDA 7, 0(6) ;  Return to caller
145 : LD 1, 2(5) ;  Load parameter 'n' into R1
146 : ADD 3, 1, 0 ;  Stash right operand in R3
147 : LD 1, 1(5) ;  Load parameter 'm' into R1
148 : ADD 2, 1, 0 ;  Move left operand to register 2
149 : ADD 1, 3, 0 ;  Restore right operand from R3
150 : DIV 1, 2, 1 ;  R1 = left / right
151 : ADD 2, 1, 0 ;  Move left operand to register 2
152 : LD 1, 2(5) ;  Load parameter 'n' into R1
153 : MUL 1, 2, 1 ;  R1 = left * right
154 : ADD 3, 1, 0 ;  Move right operand to register 3
155 : LD 1, 1(5) ;  Load parameter 'm' into R1
156 : ADD 2, 1, 0 ;  Move left operand to register 2
157 : ADD 1, 3, 0 ;  Move right operand to register 1
158 : SUB 1, 2, 1 ;  R1 = left - right
159 : ST 1, 3(5) ;  Store function result into stack frame
160 : LD 6, 0(5) ;  Load return address
161 : LDA 7, 0(6) ;  Return to caller
