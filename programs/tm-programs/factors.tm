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
11 : LDA 3, 3(5) ;  Advance DMEM pointer to callee frame 'loopToN'
12 : LD   1, 1(5) ;  Load parameter 'n' into R1
13 : ST 1, 1(3) ;  Store argument 0 into callee frame
14 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
15 : ST 1, 2(3) ;  Store argument 1 into callee frame
16 : LDA 6, 20(0)) ;  Compute return address
17 : ST 6, 0(3) ;  Store return address in callee frame
18 : ADD  5, 3, 0 ;  Update pointer
19 : LDA 7, 149(0) ;  Call loopToN
20 : LD 1, 3(5) ;  Load callee return value into R1
21 : LDC  4, 3(0) ;  Load frame size
22 : SUB  5, 5, 4 ;  Restore pointer
23 : ST 1, 4(0) ;  Store function-call result into caller's return slot
24 : LD   1, 4(0) ;  Load return value into register 1
25 : LD  6, 2(0) ;  Load return address for main function into register 6
26 : LDA  7, 0(6) ;  Jump to return address of main function
27 : LD   1, 1(5) ;  Load parameter 'num' into R1
28 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
29 : LD   1, 2(5) ;  Load parameter 'den' into R1
30 : SUB  1, 2, 1 ;  left - right for less-than check
31 : JLT  1, 2(7) ;  If R1 < 0, jump to true
32 : LDC  1, 0(0) ;  false
33 : LDA  7, 1(7) ;  skip setting true
34 : LDC  1, 1(0) ;  true
35 : JEQ  1, 38(0) ;  If condition is false, jump to ELSE
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : LDA  7, 53(0) ;  Skip ELSE block
38 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
39 : LD   1, 1(5) ;  Load parameter 'num' into R1
40 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : SUB  1, 2, 1 ;  R1 = left - right
43 : ST 1, 1(3) ;  Store argument 0 into callee frame
44 : LD   1, 2(5) ;  Load parameter 'den' into R1
45 : ST 1, 2(3) ;  Store argument 1 into callee frame
46 : LDA 6, 50(0)) ;  Compute return address
47 : ST 6, 0(3) ;  Store return address in callee frame
48 : ADD  5, 3, 0 ;  Update pointer
49 : LDA 7, 27(0) ;  Call remainder
50 : LD 1, 3(5) ;  Load callee return value into R1
51 : LDC  4, 4(0) ;  Load frame size
52 : SUB  5, 5, 4 ;  Restore pointer
53 : ST   1, 3(5) ;  Store function result into stack frame
54 : LD   6, 0(5) ;  Load return address
55 : LDA  7, 0(6) ;  Return to caller
56 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'remainder'
57 : LD   1, 2(5) ;  Load parameter 'b' into R1
58 : ST 1, 1(3) ;  Store argument 0 into callee frame
59 : LD   1, 1(5) ;  Load parameter 'a' into R1
60 : ST 1, 2(3) ;  Store argument 1 into callee frame
61 : LDA 6, 65(0)) ;  Compute return address
62 : ST 6, 0(3) ;  Store return address in callee frame
63 : ADD  5, 3, 0 ;  Update pointer
64 : LDA 7, 27(0) ;  Call remainder
65 : LD 1, 3(5) ;  Load callee return value into R1
66 : LDC  4, 4(0) ;  Load frame size
67 : SUB  5, 5, 4 ;  Restore pointer
68 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
69 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
70 : SUB  1, 2, 1 ;  left - right for equality check
71 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
72 : LDC  1, 0(0) ;  false
73 : LDA  7, 1(7) ;  skip setting true
74 : LDC  1, 1(0) ;  true
75 : ST   1, 3(5) ;  Store function result into stack frame
76 : LD   6, 0(5) ;  Load return address
77 : LDA  7, 0(6) ;  Return to caller
78 : LD   1, 2(5) ;  Load parameter 'current' into R1
79 : LDA  3, 4(5) ;  Update DMEM pointer
80 : LDA 6, 84(0) ;  Compute return address
81 : ST   6, 0(3) ;  Store return address
82 : ADD  5, 3, 0 ;  Updated Pointer
83 : LDA  7, 8(0) ; Call print
84 : LDC  4, 4(0) ;  Load frame size
85 : SUB  5, 5, 4 ;  Restore pointer
86 : ST   1, 3(5) ;  Store function result into stack frame
87 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'loopToN'
88 : LD   1, 1(5) ;  Load parameter 'n' into R1
89 : ST 1, 1(3) ;  Store argument 0 into callee frame
90 : LD   1, 2(5) ;  Load parameter 'current' into R1
91 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
92 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
93 : ADD  1, 2, 1 ;  R1 = left + right
94 : ST 1, 2(3) ;  Store argument 1 into callee frame
95 : LDA 6, 99(0)) ;  Compute return address
96 : ST 6, 0(3) ;  Store return address in callee frame
97 : ADD  5, 3, 0 ;  Update pointer
98 : LDA 7, 149(0) ;  Call loopToN
99 : LD 1, 3(5) ;  Load callee return value into R1
100 : LDC  4, 4(0) ;  Load frame size
101 : SUB  5, 5, 4 ;  Restore pointer
102 : ST   1, 3(5) ;  Store function result into stack frame
103 : LD   6, 0(5) ;  Load return address
104 : LDA  7, 0(6) ;  Return to caller
105 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'divides'
106 : LD   1, 2(5) ;  Load parameter 'current' into R1
107 : ST 1, 1(3) ;  Store argument 0 into callee frame
108 : LD   1, 1(5) ;  Load parameter 'n' into R1
109 : ST 1, 2(3) ;  Store argument 1 into callee frame
110 : LDA 6, 114(0)) ;  Compute return address
111 : ST 6, 0(3) ;  Store return address in callee frame
112 : ADD  5, 3, 0 ;  Update pointer
113 : LDA 7, 56(0) ;  Call divides
114 : LD 1, 3(5) ;  Load callee return value into R1
115 : LDC  4, 4(0) ;  Load frame size
116 : SUB  5, 5, 4 ;  Restore pointer
117 : JEQ  1, 131(0) ;  If condition is false, jump to ELSE
118 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'printAndLoop'
119 : LD   1, 1(5) ;  Load parameter 'n' into R1
120 : ST 1, 1(3) ;  Store argument 0 into callee frame
121 : LD   1, 2(5) ;  Load parameter 'current' into R1
122 : ST 1, 2(3) ;  Store argument 1 into callee frame
123 : LDA 6, 127(0)) ;  Compute return address
124 : ST 6, 0(3) ;  Store return address in callee frame
125 : ADD  5, 3, 0 ;  Update pointer
126 : LDA 7, 78(0) ;  Call printAndLoop
127 : LD 1, 3(5) ;  Load callee return value into R1
128 : LDC  4, 4(0) ;  Load frame size
129 : SUB  5, 5, 4 ;  Restore pointer
130 : LDA  7, 146(0) ;  Skip ELSE block
131 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'loopToN'
132 : LD   1, 1(5) ;  Load parameter 'n' into R1
133 : ST 1, 1(3) ;  Store argument 0 into callee frame
134 : LD   1, 2(5) ;  Load parameter 'current' into R1
135 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
136 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
137 : ADD  1, 2, 1 ;  R1 = left + right
138 : ST 1, 2(3) ;  Store argument 1 into callee frame
139 : LDA 6, 143(0)) ;  Compute return address
140 : ST 6, 0(3) ;  Store return address in callee frame
141 : ADD  5, 3, 0 ;  Update pointer
142 : LDA 7, 149(0) ;  Call loopToN
143 : LD 1, 3(5) ;  Load callee return value into R1
144 : LDC  4, 4(0) ;  Load frame size
145 : SUB  5, 5, 4 ;  Restore pointer
146 : ST   1, 3(5) ;  Store function result into stack frame
147 : LD   6, 0(5) ;  Load return address
148 : LDA  7, 0(6) ;  Return to caller
149 : LD   1, 1(5) ;  Load parameter 'n' into R1
150 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
151 : LD   1, 2(5) ;  Load parameter 'current' into R1
152 : SUB  1, 2, 1 ;  left - right for equality check
153 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
154 : LDC  1, 0(0) ;  false
155 : LDA  7, 1(7) ;  skip setting true
156 : LDC  1, 1(0) ;  true
157 : JEQ  1, 160(0) ;  If condition is false, jump to ELSE
158 : LD   1, 1(5) ;  Load parameter 'n' into R1
159 : LDA  7, 172(0) ;  Skip ELSE block
160 : LDA 3, 4(5) ;  Advance DMEM pointer to callee frame 'testAndLoop'
161 : LD   1, 1(5) ;  Load parameter 'n' into R1
162 : ST 1, 1(3) ;  Store argument 0 into callee frame
163 : LD   1, 2(5) ;  Load parameter 'current' into R1
164 : ST 1, 2(3) ;  Store argument 1 into callee frame
165 : LDA 6, 169(0)) ;  Compute return address
166 : ST 6, 0(3) ;  Store return address in callee frame
167 : ADD  5, 3, 0 ;  Update pointer
168 : LDA 7, 105(0) ;  Call testAndLoop
169 : LD 1, 3(5) ;  Load callee return value into R1
170 : LDC  4, 4(0) ;  Load frame size
171 : SUB  5, 5, 4 ;  Restore pointer
172 : ST   1, 3(5) ;  Store function result into stack frame
173 : LD   6, 0(5) ;  Load return address
174 : LDA  7, 0(6) ;  Return to caller
