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
31 : LDA 7, 153(0) ; Call factor
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
45 : LDA 7, 153(0) ; Call factor
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
95 : LDA  7, 120(0) ;  Skip ELSE block
96 : LDA 4, 4(5) ; Base of callee frame
97 : LD   1, 2(5) ;  Load parameter 'b' into R1
98 : ST 1, 1(4) ; Argument 0
99 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
100 : LDA 4, 4(5) ; Base of callee frame
101 : LD   1, 1(5) ;  Load parameter 'a' into R1
102 : ST 1, 1(4) ; Argument 0
103 : LD   1, 2(5) ;  Load parameter 'b' into R1
104 : ST 1, 2(4) ; Argument 1
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame
108 : LDA 7, 53(0) ; Call remainder
109 : LD 1, 3(5) ; Load function result
110 : LDC 2, 4(0) ; Caller frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 2(4) ; Argument 1
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame
116 : LDA 7, 84(0) ; Call gcd
117 : LD 1, 3(5) ; Load function result
118 : LDC 2, 4(0) ; Caller frame size
119 : SUB 5, 5, 2 ; Pop back to caller
120 : ST   1, 3(5) ;  Store function result into stack frame
121 : LD   6, 0(5) ;  Load return address
122 : LDA  7, 0(6) ;  Return to caller
123 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
124 : ADD  3, 1, 0 ;  Store left operand into temporary register
125 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
126 : ADD  2, 3, 0 ;  Restore left operand
127 : DIV  1, 2, 1 ;  R1 = left / right
128 : LDA 4, 5(5) ; Base of callee frame
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return addr in callee frame
131 : ADD 5, 4, 0 ; Push new frame
132 : LDA 7, 10(0) ; Call print
133 : LDC 2, 5(0) ; Caller frame size
134 : SUB 5, 5, 2 ; Pop frame
135 : ST   1, 4(5) ;  Store function result into stack frame
136 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
137 : ADD  3, 1, 0 ;  Store left operand into temporary register
138 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
139 : ADD  2, 3, 0 ;  Restore left operand
140 : DIV  1, 2, 1 ;  R1 = left / right
141 : LDA 4, 5(5) ; Base of callee frame
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return addr in callee frame
144 : ADD 5, 4, 0 ; Push new frame
145 : LDA 7, 10(0) ; Call print
146 : LDC 2, 5(0) ; Caller frame size
147 : SUB 5, 5, 2 ; Pop frame
148 : ST   1, 4(5) ;  Store function result into stack frame
149 : LD   1, 3(5) ;  Load parameter 'commonFactor' into R1
150 : ST   1, 4(5) ;  Store function result into stack frame
151 : LD   6, 0(5) ;  Load return address
152 : LDA  7, 0(6) ;  Return to caller
153 : LDA 4, 4(5) ; Base of callee frame
154 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
155 : ST 1, 1(4) ; Argument 0
156 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
157 : ST 1, 2(4) ; Argument 1
158 : LDA  4, 4(4) ;  Push additional call frame for nested function calls
159 : LDA 4, 4(5) ; Base of callee frame
160 : LD   1, 1(5) ;  Load parameter 'publicKey' into R1
161 : ST 1, 1(4) ; Argument 0
162 : LD   1, 2(5) ;  Load parameter 'privateKey' into R1
163 : ST 1, 2(4) ; Argument 1
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return in callee frame
166 : ADD 5, 4, 0 ; Push callee frame
167 : LDA 7, 84(0) ; Call gcd
168 : LD 1, 3(5) ; Load function result
169 : LDC 2, 4(0) ; Caller frame size
170 : SUB 5, 5, 2 ; Pop back to caller
171 : ST 1, 3(4) ; Argument 2
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return in callee frame
174 : ADD 5, 4, 0 ; Push callee frame
175 : LDA 7, 123(0) ; Call displayAndPrint
176 : LD 1, 4(5) ; Load function result
177 : LDC 2, 4(0) ; Caller frame size
178 : SUB 5, 5, 2 ; Pop back to caller
179 : ST   1, 3(5) ;  Store function result into stack frame
180 : LD   6, 0(5) ;  Load return address
181 : LDA  7, 0(6) ;  Return to caller
