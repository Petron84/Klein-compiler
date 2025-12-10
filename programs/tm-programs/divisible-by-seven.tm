0 : LDC 5, 2(0) ;  Set DMEM pointer to main stack frame
1 : ADD 4, 5, 0 ;  Set top of caller frame
2 : LD 2, 1(0) ;  Load CLI arg 1 into register
3 : ST 2, 1(5) ;  Store the argument into stack frame
4 : LDA 6, 2(7) ;  Calculate return address
5 : ST 6, 0(5) ;  Store return address in main stack frame
6 : LDA 7, 12(0) ;  Load address of main IMEM block - branch to function
7 : OUT 1, 0, 0 ;  Return result
8 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
9 : OUT 1, 0, 0 ;  Hardcoded print function
10 : LD 6, 0(5) ;  Load return addess from stack frame.
11 : LDA 7, 0(6) ;  Jump to return address.
12 : LDA 3, 4(5) ; Base of callee frame (stable)
13 : LDC 1, 10(0) ;  Load integer-literal value into register 1
14 : ADD 3, 1, 0 ;  Stash right operand in R3
15 : LD 1, 1(5) ;  Load parameter 'n' into R1
16 : ADD 2, 1, 0 ;  Move left operand to register 2
17 : ADD 1, 3, 0 ;  Restore right operand from R3
18 : DIV 1, 2, 1 ;  R1 = left / right
19 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
20 : LDA 3, 4(5) ; Base of callee frame (stable)
21 : LD 1, 1(5) ;  Load parameter 'n' into R1
22 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
23 : LDC 1, 10(0) ;  Load integer-literal value into register 1
24 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(3) ; Store return in callee frame (via R3)
27 : ADD 5, 3, 0 ; Push callee frame
28 : LDA 7, 44(0) ; Call MOD
29 : LD 1, 3(5) ;  Load function result
30 : LDC 2, 4(0) ;  Caller frame size
31 : SUB 5, 5, 2 ;  Pop back to caller
32 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(3) ; Store return in callee frame (via R3)
35 : ADD 5, 3, 0 ; Push callee frame
36 : LDA 7, 138(0) ; Call divisibleByParts
37 : LD 1, 3(5) ;  Load function result
38 : LDC 2, 4(0) ;  Caller frame size
39 : SUB 5, 5, 2 ;  Pop back to caller
40 : ST 1, 2(5) ; Store result into caller’s frame
41 : LD 1, 2(5) ;  Load return value into register 1
42 : LD 6, 0(5) ;  Load return address for main function into register 6
43 : LDA 7, 0(6) ;  Jump to return address of main function
44 : LD 1, 2(5) ;  Load parameter 'n' into R1
45 : ADD 3, 1, 0 ;  Stash right operand in R3
46 : LD 1, 1(5) ;  Load parameter 'm' into R1
47 : ADD 2, 1, 0 ;  Move left operand to register 2
48 : ADD 1, 3, 0 ;  Restore right operand from R3
49 : DIV 1, 2, 1 ;  R1 = left / right
50 : ADD 2, 1, 0 ;  Move left operand to register 2
51 : LD 1, 2(5) ;  Load parameter 'n' into R1
52 : MUL 1, 2, 1 ;  R1 = left * right
53 : ADD 3, 1, 0 ;  Move right operand to register 3
54 : LD 1, 1(5) ;  Load parameter 'm' into R1
55 : ADD 2, 1, 0 ;  Move left operand to register 2
56 : ADD 1, 3, 0 ;  Move right operand to register 1
57 : SUB 1, 2, 1 ;  R1 = left - right
58 : ST 1, 3(5) ;  Store function result into stack frame
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDC 1, 7(0) ;  Load integer-literal value into register 1
62 : ADD 3, 1, 0 ;  Stash right operand in R3
63 : LD 1, 1(5) ;  Load parameter 'diff' into R1
64 : ADD 2, 1, 0 ;  Move left operand to register 2
65 : ADD 1, 3, 0 ;  Restore right operand from R3
66 : SUB 1, 2, 1 ;  left - right for equality check
67 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
68 : LDC 1, 0(0) ;  false
69 : LDA 7, 1(7) ;  skip setting true
70 : LDC 1, 1(0) ;  true
71 : ADD 2, 1, 0 ;  Move left operand to register 2
72 : LDC 1, 0(0) ;  Load integer-literal value into register 1
73 : ADD 3, 1, 0 ;  Stash right operand in R3
74 : LD 1, 1(5) ;  Load parameter 'diff' into R1
75 : ADD 2, 1, 0 ;  Move left operand to register 2
76 : ADD 1, 3, 0 ;  Restore right operand from R3
77 : SUB 1, 2, 1 ;  left - right for equality check
78 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
79 : LDC 1, 0(0) ;  false
80 : LDA 7, 1(7) ;  skip setting true
81 : LDC 1, 1(0) ;  true
82 : ADD 1, 2, 1 ;  R1 = left OR right
83 : ADD 2, 1, 0 ;  Move left operand to register 2
84 : LDC 1, 7(0) ;  Load integer-literal value into register 1
85 : SUB 1, 0, 1 ;  Negate value in R1
86 : ADD 3, 1, 0 ;  Move right operand to register 3
87 : LD 1, 1(5) ;  Load parameter 'diff' into R1
88 : ADD 2, 1, 0 ;  Move left operand to register 2
89 : ADD 1, 3, 0 ;  Move right operand to register 1
90 : SUB 1, 2, 1 ;  left - right for equality check
91 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
92 : LDC 1, 0(0) ;  false
93 : LDA 7, 1(7) ;  skip setting true
94 : LDC 1, 1(0) ;  true
95 : ADD 1, 2, 1 ;  R1 = left OR right
96 : ADD 2, 1, 0 ;  Move left operand to register 2
97 : LDC 1, 14(0) ;  Load integer-literal value into register 1
98 : SUB 1, 0, 1 ;  Negate value in R1
99 : ADD 3, 1, 0 ;  Move right operand to register 3
100 : LD 1, 1(5) ;  Load parameter 'diff' into R1
101 : ADD 2, 1, 0 ;  Move left operand to register 2
102 : ADD 1, 3, 0 ;  Move right operand to register 1
103 : SUB 1, 2, 1 ;  left - right for equality check
104 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
105 : LDC 1, 0(0) ;  false
106 : LDA 7, 1(7) ;  skip setting true
107 : LDC 1, 1(0) ;  true
108 : ADD 1, 2, 1 ;  R1 = left OR right
109 : JEQ 1, 112(0) ;  If condition is false, jump to ELSE
110 : LDC 1, 1(0) ;  Load boolean-literal value into register 1
111 : LDA 7, 135(0) ;  Skip ELSE block
112 : LDC 1, 14(0) ;  Load integer-literal value into register 1
113 : ADD 3, 1, 0 ;  Stash right operand in R3
114 : LD 1, 1(5) ;  Load parameter 'diff' into R1
115 : ADD 2, 1, 0 ;  Move left operand to register 2
116 : ADD 1, 3, 0 ;  Restore right operand from R3
117 : SUB 1, 2, 1 ;  left - right for less-than check
118 : JLT 1, 2(7) ;  If R1 < 0, jump to true
119 : LDC 1, 0(0) ;  false
120 : LDA 7, 1(7) ;  skip setting true
121 : LDC 1, 1(0) ;  true
122 : JEQ 1, 125(0) ;  If condition is false, jump to ELSE
123 : LDC 1, 0(0) ;  Load boolean-literal value into register 1
124 : LDA 7, 135(0) ;  Skip ELSE block
125 : LDA 3, 3(5) ; Base of callee frame (stable)
126 : LD 1, 1(5) ;  Load parameter 'diff' into R1
127 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(3) ; Store return in callee frame (via R3)
130 : ADD 5, 3, 0 ; Push callee frame
131 : LDA 7, 12(0) ; Call main
132 : LD 1, 2(5) ;  Load function result
133 : LDC 2, 3(0) ;  Caller frame size
134 : SUB 5, 5, 2 ;  Pop back to caller
135 : ST 1, 2(5) ;  Store function result into stack frame
136 : LD 6, 0(5) ;  Load return address
137 : LDA 7, 0(6) ;  Return to caller
138 : LDA 3, 3(5) ; Base of callee frame (stable)
139 : LDC 1, 2(0) ;  Load integer-literal value into register 1
140 : ADD 3, 1, 0 ;  Stash right operand in R3
141 : LD 1, 2(5) ;  Load parameter 'right' into R1
142 : ADD 2, 1, 0 ;  Move left operand to register 2
143 : ADD 1, 3, 0 ;  Restore right operand from R3
144 : MUL 1, 2, 1 ;  R1 = left * right
145 : ADD 3, 1, 0 ;  Move right operand to register 3
146 : LD 1, 1(5) ;  Load parameter 'left' into R1
147 : ADD 2, 1, 0 ;  Move left operand to register 2
148 : ADD 1, 3, 0 ;  Move right operand to register 1
149 : SUB 1, 2, 1 ;  R1 = left - right
150 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(3) ; Store return in callee frame (via R3)
153 : ADD 5, 3, 0 ; Push callee frame
154 : LDA 7, 61(0) ; Call divisibleByDifference
155 : LD 1, 2(5) ;  Load function result
156 : LDC 2, 3(0) ;  Caller frame size
157 : SUB 5, 5, 2 ;  Pop back to caller
158 : ST 1, 3(5) ;  Store function result into stack frame
159 : LD 6, 0(5) ;  Load return address
160 : LDA 7, 0(6) ;  Return to caller
