0 : LDC  5, 2(0) ;  Set DMEM pointer to main stack frame
1 : LD   2, 1(0) ;  Load CLI arg 1 into register
2 : ST   2, 1(5) ;  Store the argument into stack frame
3 : LDA  6, 2(7) ;  Calculate return address
4 : ST   6, 0(5) ;  Store return address in main stack frame
5 : LDA  7, 11(0) ;  Load address of main IMEM block - branch to function
6 : OUT  1, 0, 0 ;  Return result
7 : HALT 0, 0, 0 ;  Terminate program execution if no main function found.
8 : OUT  1, 0, 0 ;  Hardcoded print function
9 : LD   6, 0(5) ;  Load return addess from stack frame.
10 : LDA  7, 0(6) ;  Jump to return address.
11 : LDA 4, 3(5) ; Base of callee frame
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(4) ; Argument 0
14 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(4) ; Argument 1
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame
19 : LDA 7, 154(0) ; Call loopToN
20 : LD 1, 3(5) ; Load function result
21 : LDC 2, 3(0) ; Caller frame size
22 : SUB 5, 5, 2 ; Pop back to caller
23 : ST 1, 2(5) ; Store result into caller’s frame
24 : LD   1, 2(5) ;  Load return value into register 1
25 : LD  6, 0(5) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'num' into R1
28 : ADD  3, 1, 0 ;  Store left operand into temporary register
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : ADD  2, 3, 0 ;  Restore left operand
31 : SUB  1, 2, 1 ;  left - right for less-than check
32 : JLT  1, 2(7) ;  If R1 < 0, jump to true
33 : LDC  1, 0(0) ;  false
34 : LDA  7, 1(7) ;  skip setting true
35 : LDC  1, 1(0) ;  true
36 : JEQ  1, 39(0) ;  If condition is false, jump to ELSE
37 : LD   1, 1(5) ;  Load parameter 'num' into R1
38 : LDA  7, 55(0) ;  Skip ELSE block
39 : LDA 4, 4(5) ; Base of callee frame
40 : LD   1, 1(5) ;  Load parameter 'num' into R1
41 : ADD  3, 1, 0 ;  Store left operand into temporary register
42 : LD   1, 2(5) ;  Load parameter 'den' into R1
43 : ADD  2, 3, 0 ;  Restore left operand
44 : SUB  1, 2, 1 ;  R1 = left - right
45 : ST 1, 1(4) ; Argument 0
46 : LD   1, 2(5) ;  Load parameter 'den' into R1
47 : ST 1, 2(4) ; Argument 1
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame
51 : LDA 7, 27(0) ; Call remainder
52 : LD 1, 3(5) ; Load function result
53 : LDC 2, 4(0) ; Caller frame size
54 : SUB 5, 5, 2 ; Pop back to caller
55 : ST   1, 3(5) ;  Store function result into stack frame
56 : LD   6, 0(5) ;  Load return address
57 : LDA  7, 0(6) ;  Return to caller
58 : LDA 4, 4(5) ; Base of callee frame
59 : LD   1, 2(5) ;  Load parameter 'b' into R1
60 : ST 1, 1(4) ; Argument 0
61 : LD   1, 1(5) ;  Load parameter 'a' into R1
62 : ST 1, 2(4) ; Argument 1
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame
66 : LDA 7, 27(0) ; Call remainder
67 : LD 1, 3(5) ; Load function result
68 : LDC 2, 4(0) ; Caller frame size
69 : SUB 5, 5, 2 ; Pop back to caller
70 : ADD  3, 1, 0 ;  Store left operand into temporary register
71 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
72 : ADD  2, 3, 0 ;  Restore left operand
73 : SUB  1, 2, 1 ;  left - right for equality check
74 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
75 : LDC  1, 0(0) ;  false
76 : LDA  7, 1(7) ;  skip setting true
77 : LDC  1, 1(0) ;  true
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   6, 0(5) ;  Load return address
80 : LDA  7, 0(6) ;  Return to caller
81 : LD   1, 2(5) ;  Load parameter 'current' into R1
82 : LDA 4, 4(5) ; Base of callee frame
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(4) ; Store return addr in callee frame
85 : ADD 5, 4, 0 ; Push new frame
86 : LDA 7, 8(0) ; Call print
87 : LDC 2, 4(0) ; Caller frame size
88 : SUB 5, 5, 2 ; Pop frame
89 : ST   1, 3(5) ;  Store function result into stack frame
90 : LDA 4, 4(5) ; Base of callee frame
91 : LD   1, 1(5) ;  Load parameter 'n' into R1
92 : ST 1, 1(4) ; Argument 0
93 : LD   1, 2(5) ;  Load parameter 'current' into R1
94 : ADD  3, 1, 0 ;  Store left operand into temporary register
95 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
96 : ADD  2, 3, 0 ;  Restore left operand
97 : ADD  1, 2, 1 ;  R1 = left + right
98 : ST 1, 2(4) ; Argument 1
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame
102 : LDA 7, 154(0) ; Call loopToN
103 : LD 1, 3(5) ; Load function result
104 : LDC 2, 4(0) ; Caller frame size
105 : SUB 5, 5, 2 ; Pop back to caller
106 : ST   1, 3(5) ;  Store function result into stack frame
107 : LD   6, 0(5) ;  Load return address
108 : LDA  7, 0(6) ;  Return to caller
109 : LDA 4, 4(5) ; Base of callee frame
110 : LD   1, 2(5) ;  Load parameter 'current' into R1
111 : ST 1, 1(4) ; Argument 0
112 : LD   1, 1(5) ;  Load parameter 'n' into R1
113 : ST 1, 2(4) ; Argument 1
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return in callee frame
116 : ADD 5, 4, 0 ; Push callee frame
117 : LDA 7, 58(0) ; Call divides
118 : LD 1, 3(5) ; Load function result
119 : LDC 2, 4(0) ; Caller frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : JEQ  1, 135(0) ;  If condition is false, jump to ELSE
122 : LDA 4, 4(5) ; Base of callee frame
123 : LD   1, 1(5) ;  Load parameter 'n' into R1
124 : ST 1, 1(4) ; Argument 0
125 : LD   1, 2(5) ;  Load parameter 'current' into R1
126 : ST 1, 2(4) ; Argument 1
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame
130 : LDA 7, 81(0) ; Call printAndLoop
131 : LD 1, 3(5) ; Load function result
132 : LDC 2, 4(0) ; Caller frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : LDA  7, 151(0) ;  Skip ELSE block
135 : LDA 4, 4(5) ; Base of callee frame
136 : LD   1, 1(5) ;  Load parameter 'n' into R1
137 : ST 1, 1(4) ; Argument 0
138 : LD   1, 2(5) ;  Load parameter 'current' into R1
139 : ADD  3, 1, 0 ;  Store left operand into temporary register
140 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
141 : ADD  2, 3, 0 ;  Restore left operand
142 : ADD  1, 2, 1 ;  R1 = left + right
143 : ST 1, 2(4) ; Argument 1
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame
147 : LDA 7, 154(0) ; Call loopToN
148 : LD 1, 3(5) ; Load function result
149 : LDC 2, 4(0) ; Caller frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : ST   1, 3(5) ;  Store function result into stack frame
152 : LD   6, 0(5) ;  Load return address
153 : LDA  7, 0(6) ;  Return to caller
154 : LD   1, 1(5) ;  Load parameter 'n' into R1
155 : ADD  3, 1, 0 ;  Store left operand into temporary register
156 : LD   1, 2(5) ;  Load parameter 'current' into R1
157 : ADD  2, 3, 0 ;  Restore left operand
158 : SUB  1, 2, 1 ;  left - right for equality check
159 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
160 : LDC  1, 0(0) ;  false
161 : LDA  7, 1(7) ;  skip setting true
162 : LDC  1, 1(0) ;  true
163 : JEQ  1, 166(0) ;  If condition is false, jump to ELSE
164 : LD   1, 1(5) ;  Load parameter 'n' into R1
165 : LDA  7, 178(0) ;  Skip ELSE block
166 : LDA 4, 4(5) ; Base of callee frame
167 : LD   1, 1(5) ;  Load parameter 'n' into R1
168 : ST 1, 1(4) ; Argument 0
169 : LD   1, 2(5) ;  Load parameter 'current' into R1
170 : ST 1, 2(4) ; Argument 1
171 : LDA 6, 175(0) ; Return address
172 : ST 6, 0(4) ; Store return in callee frame
173 : ADD 5, 4, 0 ; Push callee frame
174 : LDA 7, 109(0) ; Call testAndLoop
175 : LD 1, 3(5) ; Load function result
176 : LDC 2, 4(0) ; Caller frame size
177 : SUB 5, 5, 2 ; Pop back to caller
178 : ST   1, 3(5) ;  Store function result into stack frame
179 : LD   6, 0(5) ;  Load return address
180 : LDA  7, 0(6) ;  Return to caller
