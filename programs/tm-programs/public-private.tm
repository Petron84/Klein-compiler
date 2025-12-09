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
13 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
14 : ADD  3, 1, 0 ;  Store left operand into temporary register
15 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
16 : ADD  2, 3, 0 ;  Restore left operand
17 : SUB  1, 2, 1 ;  left - right for equality check
18 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
19 : LDC  1, 0(0) ;  false
20 : LDA  7, 1(7) ;  skip setting true
21 : LDC  1, 1(0) ;  true
22 : JEQ  1, 37(0) ;  If condition is false, jump to ELSE
23 : LDA 4, 4(5) ; Base of callee frame
24 : LDC  1, 2147481647(0) ;  Load boolean-literal value into register 1
25 : ST 1, 1(4) ; Argument 0
26 : LDC  1, 2047483747(0) ;  Load boolean-literal value into register 1
27 : ST 1, 2(4) ; Argument 1
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame
31 : LDA 7, 152(0) ; Call factor
32 : LD 1, 3(5) ; Load function result
33 : LDC 2, 4(0) ; Caller frame size
34 : SUB 5, 5, 2 ; Pop back to caller
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LDA  7, 50(0) ;  Skip ELSE block
37 : LDA 4, 4(5) ; Base of callee frame
38 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
39 : ST 1, 1(4) ; Argument 0
40 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
41 : ST 1, 2(4) ; Argument 1
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame
45 : LDA 7, 152(0) ; Call factor
46 : LD 1, 3(5) ; Load function result
47 : LDC 2, 4(0) ; Caller frame size
48 : SUB 5, 5, 2 ; Pop back to caller
49 : ST 1, 3(5) ; Store result into caller’s frame
50 : LD   1, 3(5) ;  Load return value into register 1
51 : LD  6, 0(5) ;  Load return address for main function into register 6
52 : LDA  7, 0(6) ;  Jump to return address of main function
53 : LD   1, 1(5) ;  Load parameter 'a' into R1
54 : ADD  3, 1, 0 ;  Store left operand into temporary register
55 : LD   1, 2(5) ;  Load parameter 'b' into R1
56 : ADD  2, 3, 0 ;  Restore left operand
57 : SUB  1, 2, 1 ;  left - right for less-than check
58 : JLT  1, 2(7) ;  If R1 < 0, jump to true
59 : LDC  1, 0(0) ;  false
60 : LDA  7, 1(7) ;  skip setting true
61 : LDC  1, 1(0) ;  true
62 : JEQ  1, 65(0) ;  If condition is false, jump to ELSE
63 : LD   1, 1(5) ;  Load parameter 'a' into R1
64 : LDA  7, 81(0) ;  Skip ELSE block
65 : LDA 4, 4(5) ; Base of callee frame
66 : LD   1, 1(5) ;  Load parameter 'a' into R1
67 : ADD  3, 1, 0 ;  Store left operand into temporary register
68 : LD   1, 2(5) ;  Load parameter 'b' into R1
69 : ADD  2, 3, 0 ;  Restore left operand
70 : SUB  1, 2, 1 ;  R1 = left - right
71 : ST 1, 1(4) ; Argument 0
72 : LD   1, 2(5) ;  Load parameter 'b' into R1
73 : ST 1, 2(4) ; Argument 1
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return in callee frame
76 : ADD 5, 4, 0 ; Push callee frame
77 : LDA 7, 53(0) ; Call remainder
78 : LD 1, 3(5) ; Load function result
79 : LDC 2, 4(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop back to caller
81 : ST   1, 3(5) ;  Store function result into stack frame
82 : LD   6, 0(5) ;  Load return address
83 : LDA  7, 0(6) ;  Return to caller
84 : LD   1, 2(5) ;  Load parameter 'b' into R1
85 : ADD  3, 1, 0 ;  Store left operand into temporary register
86 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
87 : ADD  2, 3, 0 ;  Restore left operand
88 : SUB  1, 2, 1 ;  left - right for equality check
89 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
90 : LDC  1, 0(0) ;  false
91 : LDA  7, 1(7) ;  skip setting true
92 : LDC  1, 1(0) ;  true
93 : JEQ  1, 96(0) ;  If condition is false, jump to ELSE
94 : LD   1, 1(5) ;  Load parameter 'a' into R1
95 : LDA  7, 119(0) ;  Skip ELSE block
96 : LDA 4, 4(5) ; Base of callee frame
97 : LD   1, 2(5) ;  Load parameter 'b' into R1
98 : ST 1, 1(4) ; Argument 0
99 : LDA 4, 4(5) ; Base of callee frame
100 : LD   1, 1(5) ;  Load parameter 'a' into R1
101 : ST 1, 1(4) ; Argument 0
102 : LD   1, 2(5) ;  Load parameter 'b' into R1
103 : ST 1, 2(4) ; Argument 1
104 : LDA 6, 108(0) ; Return address
105 : ST 6, 0(4) ; Store return in callee frame
106 : ADD 5, 4, 0 ; Push callee frame
107 : LDA 7, 53(0) ; Call remainder
108 : LD 1, 3(5) ; Load function result
109 : LDC 2, 4(0) ; Caller frame size
110 : SUB 5, 5, 2 ; Pop back to caller
111 : ST 1, 2(4) ; Argument 1
112 : LDA 6, 116(0) ; Return address
113 : ST 6, 0(4) ; Store return in callee frame
114 : ADD 5, 4, 0 ; Push callee frame
115 : LDA 7, 84(0) ; Call gcd
116 : LD 1, 3(5) ; Load function result
117 : LDC 2, 4(0) ; Caller frame size
118 : SUB 5, 5, 2 ; Pop back to caller
119 : ST   1, 3(5) ;  Store function result into stack frame
120 : LD   6, 0(5) ;  Load return address
121 : LDA  7, 0(6) ;  Return to caller
122 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
123 : ADD  3, 1, 0 ;  Store left operand into temporary register
124 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
125 : ADD  2, 3, 0 ;  Restore left operand
126 : DIV  1, 2, 1 ;  R1 = left / right
127 : LDA 4, 5(5) ; Base of callee frame
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return addr in callee frame
130 : ADD 5, 4, 0 ; Push new frame
131 : LDA 7, 10(0) ; Call print
132 : LDC 2, 5(0) ; Caller frame size
133 : SUB 5, 5, 2 ; Pop frame
134 : ST   1, 4(5) ;  Store function result into stack frame
135 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
136 : ADD  3, 1, 0 ;  Store left operand into temporary register
137 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
138 : ADD  2, 3, 0 ;  Restore left operand
139 : DIV  1, 2, 1 ;  R1 = left / right
140 : LDA 4, 5(5) ; Base of callee frame
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return addr in callee frame
143 : ADD 5, 4, 0 ; Push new frame
144 : LDA 7, 10(0) ; Call print
145 : LDC 2, 5(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop frame
147 : ST   1, 4(5) ;  Store function result into stack frame
148 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
149 : ST   1, 4(5) ;  Store function result into stack frame
150 : LD   6, 0(5) ;  Load return address
151 : LDA  7, 0(6) ;  Return to caller
152 : LDA 4, 4(5) ; Base of callee frame
153 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
154 : ST 1, 1(4) ; Argument 0
155 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
156 : ST 1, 2(4) ; Argument 1
157 : LDA 4, 4(5) ; Base of callee frame
158 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
159 : ST 1, 1(4) ; Argument 0
160 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
161 : ST 1, 2(4) ; Argument 1
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return in callee frame
164 : ADD 5, 4, 0 ; Push callee frame
165 : LDA 7, 84(0) ; Call gcd
166 : LD 1, 3(5) ; Load function result
167 : LDC 2, 4(0) ; Caller frame size
168 : SUB 5, 5, 2 ; Pop back to caller
169 : ST 1, 3(4) ; Argument 2
170 : LDA 6, 174(0) ; Return address
171 : ST 6, 0(4) ; Store return in callee frame
172 : ADD 5, 4, 0 ; Push callee frame
173 : LDA 7, 122(0) ; Call displayAndPrint
174 : LD 1, 4(5) ; Load function result
175 : LDC 2, 4(0) ; Caller frame size
176 : SUB 5, 5, 2 ; Pop back to caller
177 : ST   1, 3(5) ;  Store function result into stack frame
178 : LD   6, 0(5) ;  Load return address
179 : LDA  7, 0(6) ;  Return to caller
