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
12 : LDA 3, 5(5) ; Base of callee frame (stable)
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LDC 1, 0(0) ;  Load integer-literal value into register 1
16 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
17 : LDC 1, 0(0) ;  Load integer-literal value into register 1
18 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(3) ; Store return in callee frame (via R3)
21 : ADD 5, 3, 0 ; Push callee frame
22 : LDA 7, 83(0) ; Call average_digit
23 : LD 1, 4(5) ;  Load function result
24 : LDC 2, 5(0) ;  Caller frame size
25 : SUB 5, 5, 2 ;  Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s frame
27 : LD 1, 2(5) ;  Load return value into register 1
28 : LD 6, 0(5) ;  Load return address for main function into register 6
29 : LDA 7, 0(6) ;  Jump to return address of main function
30 : LD 1, 2(5) ;  Load parameter 'n' into R1
31 : ADD 3, 1, 0 ;  Stash right operand in R3
32 : LD 1, 1(5) ;  Load parameter 'm' into R1
33 : ADD 2, 1, 0 ;  Move left operand to register 2
34 : ADD 1, 3, 0 ;  Restore right operand from R3
35 : DIV 1, 2, 1 ;  R1 = left / right
36 : ADD 2, 1, 0 ;  Move left operand to register 2
37 : LD 1, 2(5) ;  Load parameter 'n' into R1
38 : MUL 1, 2, 1 ;  R1 = left * right
39 : ADD 3, 1, 0 ;  Move right operand to register 3
40 : LD 1, 1(5) ;  Load parameter 'm' into R1
41 : ADD 2, 1, 0 ;  Move left operand to register 2
42 : ADD 1, 3, 0 ;  Move right operand to register 1
43 : SUB 1, 2, 1 ;  R1 = left - right
44 : ST 1, 3(5) ;  Store function result into stack frame
45 : LD 6, 0(5) ;  Load return address
46 : LDA 7, 0(6) ;  Return to caller
47 : LD 1, 2(5) ;  Load parameter 'n' into R1
48 : ADD 3, 1, 0 ;  Stash right operand in R3
49 : LD 1, 1(5) ;  Load parameter 'sum' into R1
50 : ADD 2, 1, 0 ;  Move left operand to register 2
51 : ADD 1, 3, 0 ;  Restore right operand from R3
52 : DIV 1, 2, 1 ;  R1 = left / right
53 : LDA 3, 3(5) ; Base of callee frame (stable)
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(3) ; Store return addr in callee frame
56 : ADD 5, 3, 0 ; Push new frame
57 : LDA 7, 9(0) ; Call print
58 : LDC 2, 3(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop frame
60 : LDA 3, 4(5) ; Base of callee frame (stable)
61 : LD 1, 1(5) ;  Load parameter 'sum' into R1
62 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
63 : LD 1, 2(5) ;  Load parameter 'n' into R1
64 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(3) ; Store return in callee frame (via R3)
67 : ADD 5, 3, 0 ; Push callee frame
68 : LDA 7, 30(0) ; Call MOD
69 : LD 1, 3(5) ;  Load function result
70 : LDC 2, 4(0) ;  Caller frame size
71 : SUB 5, 5, 2 ;  Pop back to caller
72 : LDA 3, 3(5) ; Base of callee frame (stable)
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(3) ; Store return addr in callee frame
75 : ADD 5, 3, 0 ; Push new frame
76 : LDA 7, 9(0) ; Call print
77 : LDC 2, 3(0) ; Caller frame size
78 : SUB 5, 5, 2 ; Pop frame
79 : LD 1, 2(5) ;  Load parameter 'n' into R1
80 : ST 1, 3(5) ;  Store function result into stack frame
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LDC 1, 10(0) ;  Load integer-literal value into register 1
84 : ADD 3, 1, 0 ;  Stash right operand in R3
85 : LD 1, 1(5) ;  Load parameter 'n' into R1
86 : ADD 2, 1, 0 ;  Move left operand to register 2
87 : ADD 1, 3, 0 ;  Restore right operand from R3
88 : SUB 1, 2, 1 ;  left - right for less-than check
89 : JLT 1, 2(7) ;  If R1 < 0, jump to true
90 : LDC 1, 0(0) ;  false
91 : LDA 7, 1(7) ;  skip setting true
92 : LDC 1, 1(0) ;  true
93 : JEQ 1, 117(0) ;  If condition is false, jump to ELSE
94 : LDA 3, 4(5) ; Base of callee frame (stable)
95 : LD 1, 1(5) ;  Load parameter 'n' into R1
96 : ADD 3, 1, 0 ;  Stash right operand in R3
97 : LD 1, 2(5) ;  Load parameter 'sum' into R1
98 : ADD 2, 1, 0 ;  Move left operand to register 2
99 : ADD 1, 3, 0 ;  Restore right operand from R3
100 : ADD 1, 2, 1 ;  R1 = left + right
101 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
102 : LDC 1, 1(0) ;  Load integer-literal value into register 1
103 : ADD 3, 1, 0 ;  Stash right operand in R3
104 : LD 1, 3(5) ;  Load parameter 'i' into R1
105 : ADD 2, 1, 0 ;  Move left operand to register 2
106 : ADD 1, 3, 0 ;  Restore right operand from R3
107 : ADD 1, 2, 1 ;  R1 = left + right
108 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(3) ; Store return in callee frame (via R3)
111 : ADD 5, 3, 0 ; Push callee frame
112 : LDA 7, 47(0) ; Call print_and_return
113 : LD 1, 3(5) ;  Load function result
114 : LDC 2, 4(0) ;  Caller frame size
115 : SUB 5, 5, 2 ;  Pop back to caller
116 : LDA 7, 157(0) ;  Skip ELSE block
117 : LDA 3, 5(5) ; Base of callee frame (stable)
118 : LDC 1, 10(0) ;  Load integer-literal value into register 1
119 : ADD 3, 1, 0 ;  Stash right operand in R3
120 : LD 1, 1(5) ;  Load parameter 'n' into R1
121 : ADD 2, 1, 0 ;  Move left operand to register 2
122 : ADD 1, 3, 0 ;  Restore right operand from R3
123 : DIV 1, 2, 1 ;  R1 = left / right
124 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
125 : LDA 3, 4(5) ; Base of callee frame (stable)
126 : LD 1, 1(5) ;  Load parameter 'n' into R1
127 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
128 : LDC 1, 10(0) ;  Load integer-literal value into register 1
129 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(3) ; Store return in callee frame (via R3)
132 : ADD 5, 3, 0 ; Push callee frame
133 : LDA 7, 30(0) ; Call MOD
134 : LD 1, 3(5) ;  Load function result
135 : LDC 2, 4(0) ;  Caller frame size
136 : SUB 5, 5, 2 ;  Pop back to caller
137 : ADD 3, 1, 0 ;  Move right operand to register 3
138 : LD 1, 2(5) ;  Load parameter 'sum' into R1
139 : ADD 2, 1, 0 ;  Move left operand to register 2
140 : ADD 1, 3, 0 ;  Move right operand to register 1
141 : ADD 1, 2, 1 ;  R1 = left + right
142 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
143 : LDC 1, 1(0) ;  Load integer-literal value into register 1
144 : ADD 3, 1, 0 ;  Stash right operand in R3
145 : LD 1, 3(5) ;  Load parameter 'i' into R1
146 : ADD 2, 1, 0 ;  Move left operand to register 2
147 : ADD 1, 3, 0 ;  Restore right operand from R3
148 : ADD 1, 2, 1 ;  R1 = left + right
149 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(3) ; Store return in callee frame (via R3)
152 : ADD 5, 3, 0 ; Push callee frame
153 : LDA 7, 83(0) ; Call average_digit
154 : LD 1, 4(5) ;  Load function result
155 : LDC 2, 5(0) ;  Caller frame size
156 : SUB 5, 5, 2 ;  Pop back to caller
157 : ST 1, 4(5) ;  Store function result into stack frame
158 : LD 6, 0(5) ;  Load return address
159 : LDA 7, 0(6) ;  Return to caller
