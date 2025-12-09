0 : LDC  5, 3(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LD   2, 2(0) ;  Load CLI arg 2 into register
4 : ST   2, 2(5) ;  Store the argument into stack frame
5 : LDA  6, 2(7) ;  Calculate return address
6 : ST   6, 0(5) ;  Store return address in main stack frame
7 : LDA  7, 13(0) ;  Load address of main IMEM block - branch to function
8 : OUT  1, 0, 0 ;  Return result
9 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
10 : OUT  1, 0, 0 ;  Hardcoded print function
11 : LD   6, 0(5) ;  Load return addess from stack frame.
12 : LDA  7, 0(6) ;  Jump to return address.
13 : LD   1, 1(5) ;  Load parameter 'm' into R1
14 : LDA 4, 4(5) ; Base of callee frame
15 : LDA 6, 19(0) ; Return address
16 : ST 6, 0(4) ; Store return addr in callee frame
17 : ADD 5, 4, 0 ; Push new frame
18 : LDA 7, 10(0) ; Call print
19 : LDC 2, 4(0) ; Caller frame size
20 : SUB 5, 5, 2 ; Pop frame
21 : LDA 4, 4(5) ; Base of callee frame
22 : LD   1, 1(5) ;  Load parameter 'm' into R1
23 : ST 1, 1(4) ; Argument 0
24 : LD   1, 2(5) ;  Load parameter 'n' into R1
25 : ST 1, 2(4) ; Argument 1
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return in callee frame
28 : ADD 5, 4, 0 ; Push callee frame
29 : LDA 7, 37(0) ; Call mult
30 : LD 1, 3(5) ; Load function result
31 : LDC 2, 4(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : ST 1, 3(5) ; Store result into caller’s frame
34 : LD   1, 3(5) ;  Load return value into register 1
35 : LD  6, 0(5) ;  Load return address for main function into register 6
36 : LDA  7, 0(6) ;  Jump to return address of main function
37 : LDA 4, 4(5) ; Base of callee frame
38 : LD   1, 1(5) ;  Load parameter 'm' into R1
39 : ST 1, 1(4) ; Argument 0
40 : LD   1, 2(5) ;  Load parameter 'n' into R1
41 : ST 1, 2(4) ; Argument 1
42 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
43 : ST 1, 3(4) ; Argument 2
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame
47 : LDA 7, 54(0) ; Call multWithAccum
48 : LD 1, 4(5) ; Load function result
49 : LDC 2, 4(0) ; Caller frame size
50 : SUB 5, 5, 2 ; Pop back to caller
51 : ST   1, 3(5) ;  Store function result into stack frame
52 : LD   6, 0(5) ;  Load return address
53 : LDA  7, 0(6) ;  Return to caller
54 : LD   1, 2(5) ;  Load parameter 'n' into R1
55 : ADD  3, 1, 0 ;  Store left operand into temporary register
56 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
57 : ADD  2, 3, 0 ;  Restore left operand
58 : SUB  1, 2, 1 ;  left - right for equality check
59 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
60 : LDC  1, 0(0) ;  false
61 : LDA  7, 1(7) ;  skip setting true
62 : LDC  1, 1(0) ;  true
63 : JEQ  1, 66(0) ;  If condition is false, jump to ELSE
64 : LD   1, 3(5) ;  Load parameter 'accum' into R1
65 : LDA  7, 136(0) ;  Skip ELSE block
66 : LDA 4, 5(5) ; Base of callee frame
67 : LD   1, 2(5) ;  Load parameter 'n' into R1
68 : ST 1, 1(4) ; Argument 0
69 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
70 : ST 1, 2(4) ; Argument 1
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame
74 : LDA 7, 139(0) ; Call MOD
75 : LD 1, 3(5) ; Load function result
76 : LDC 2, 5(0) ; Caller frame size
77 : SUB 5, 5, 2 ; Pop back to caller
78 : ADD  3, 1, 0 ;  Store left operand into temporary register
79 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
80 : ADD  2, 3, 0 ;  Restore left operand
81 : SUB  1, 2, 1 ;  left - right for equality check
82 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
83 : LDC  1, 0(0) ;  false
84 : LDA  7, 1(7) ;  skip setting true
85 : LDC  1, 1(0) ;  true
86 : JEQ  1, 114(0) ;  If condition is false, jump to ELSE
87 : LDA 4, 5(5) ; Base of callee frame
88 : LD   1, 1(5) ;  Load parameter 'm' into R1
89 : ADD  3, 1, 0 ;  Store left operand into temporary register
90 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
91 : ADD  2, 3, 0 ;  Restore left operand
92 : MUL  1, 2, 1 ;  R1 = left * right
93 : ST 1, 1(4) ; Argument 0
94 : LD   1, 2(5) ;  Load parameter 'n' into R1
95 : ADD  3, 1, 0 ;  Store left operand into temporary register
96 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
97 : ADD  2, 3, 0 ;  Restore left operand
98 : DIV  1, 2, 1 ;  R1 = left / right
99 : ST 1, 2(4) ; Argument 1
100 : LD   1, 3(5) ;  Load parameter 'accum' into R1
101 : ADD  3, 1, 0 ;  Store left operand into temporary register
102 : LD   1, 1(5) ;  Load parameter 'm' into R1
103 : ADD  2, 3, 0 ;  Restore left operand
104 : ADD  1, 2, 1 ;  R1 = left + right
105 : ST 1, 3(4) ; Argument 2
106 : LDA 6, 110(0) ; Return address
107 : ST 6, 0(4) ; Store return in callee frame
108 : ADD 5, 4, 0 ; Push callee frame
109 : LDA 7, 54(0) ; Call multWithAccum
110 : LD 1, 4(5) ; Load function result
111 : LDC 2, 5(0) ; Caller frame size
112 : SUB 5, 5, 2 ; Pop back to caller
113 : LDA  7, 136(0) ;  Skip ELSE block
114 : LDA 4, 5(5) ; Base of callee frame
115 : LD   1, 1(5) ;  Load parameter 'm' into R1
116 : ADD  3, 1, 0 ;  Store left operand into temporary register
117 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
118 : ADD  2, 3, 0 ;  Restore left operand
119 : MUL  1, 2, 1 ;  R1 = left * right
120 : ST 1, 1(4) ; Argument 0
121 : LD   1, 2(5) ;  Load parameter 'n' into R1
122 : ADD  3, 1, 0 ;  Store left operand into temporary register
123 : LDC  1, 2(0) ;  Load boolean-literal value into register 1
124 : ADD  2, 3, 0 ;  Restore left operand
125 : DIV  1, 2, 1 ;  R1 = left / right
126 : ST 1, 2(4) ; Argument 1
127 : LD   1, 3(5) ;  Load parameter 'accum' into R1
128 : ST 1, 3(4) ; Argument 2
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return in callee frame
131 : ADD 5, 4, 0 ; Push callee frame
132 : LDA 7, 54(0) ; Call multWithAccum
133 : LD 1, 4(5) ; Load function result
134 : LDC 2, 5(0) ; Caller frame size
135 : SUB 5, 5, 2 ; Pop back to caller
136 : ST   1, 4(5) ;  Store function result into stack frame
137 : LD   6, 0(5) ;  Load return address
138 : LDA  7, 0(6) ;  Return to caller
139 : LD   1, 1(5) ;  Load parameter 'm' into R1
140 : ADD  3, 1, 0 ;  Store left operand into temporary register
141 : LD   1, 1(5) ;  Load parameter 'm' into R1
142 : ADD  3, 1, 0 ;  Store left operand into temporary register
143 : LD   1, 2(5) ;  Load parameter 'n' into R1
144 : ADD  2, 3, 0 ;  Restore left operand
145 : DIV  1, 2, 1 ;  R1 = left / right
146 : ADD  3, 1, 0 ;  Store left operand into temporary register
147 : LD   1, 2(5) ;  Load parameter 'n' into R1
148 : ADD  2, 3, 0 ;  Restore left operand
149 : MUL  1, 2, 1 ;  R1 = left * right
150 : ADD  2, 3, 0 ;  Restore left operand
151 : SUB  1, 2, 1 ;  R1 = left - right
152 : ST   1, 3(5) ;  Store function result into stack frame
153 : LD   6, 0(5) ;  Load return address
154 : LDA  7, 0(6) ;  Return to caller
