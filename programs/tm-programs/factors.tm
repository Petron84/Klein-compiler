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
11 : LD   1, 1(5) ;  Load parameter 'n' into R1
12 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=4)
13 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
14 : ST   1, 2(5) ;  Store argument Tree Node('INTEGER-LITERAL', value='1',line=4)
15 : LDC  5, 5(0) ;  Set DMEM pointer to callee frame 'loopToN'
16 : LDA  6, 2(7) ;  Compute return address
17 : ST   6, 0(5) ;  Store return address in frame
18 : LDA  7, 133(0) ;  Call loopToN
19 : LD   1, 3(5) ;  Load return value into R1
20 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
21 : ST   1, 4(0) ;  Store function-call result into caller's return slot
22 : LD   1, 4(0) ;  Load return value into register 1
23 : LD  6, 2(0) ;  Load return address for main function into register 6
24 : LDA  7, 0(6) ;  Jump to return address of main function
25 : LD   1, 1(5) ;  Load parameter 'num' into R1
26 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
27 : LD   1, 2(5) ;  Load parameter 'den' into R1
28 : SUB  1, 2, 1 ;  left - right for less-than check
29 : JLT  1, 2(7) ;  If R1 < 0, jump to true
30 : LDC  1, 0(0) ;  false
31 : LDA  7, 1(7) ;  skip setting true
32 : LDC  1, 1(0) ;  true
33 : JEQ  1, 36(0) ;  If condition is false, jump to ELSE
34 : LD   1, 1(5) ;  Load parameter 'num' into R1
35 : LDA  7, 49(0) ;  Skip ELSE block
36 : LD   1, 1(5) ;  Load parameter 'num' into R1
37 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
38 : LD   1, 2(5) ;  Load parameter 'den' into R1
39 : SUB  1, 2, 1 ;  R1 = left - right
40 : ST   1, 1(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='-', children=[Tree Node('IDENTIFIER', value='num',line=29), Tree Node('IDENTIFIER', value='den',line=29)],line=29)
41 : LD   1, 2(5) ;  Load parameter 'den' into R1
42 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='den',line=29)
43 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'remainder'
44 : LDA  6, 2(7) ;  Compute return address
45 : ST   6, 0(5) ;  Store return address in frame
46 : LDA  7, 25(0) ;  Call remainder
47 : LD   1, 3(5) ;  Load return value into R1
48 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
49 : ST   1, 3(5) ;  Store function result into stack frame
50 : LD   6, 0(5) ;  Load return address
51 : LDA  7, 0(6) ;  Return to caller
52 : LD   1, 2(5) ;  Load parameter 'b' into R1
53 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='b',line=23)
54 : LD   1, 1(5) ;  Load parameter 'a' into R1
55 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='a',line=23)
56 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'remainder'
57 : LDA  6, 2(7) ;  Compute return address
58 : ST   6, 0(5) ;  Store return address in frame
59 : LDA  7, 25(0) ;  Call remainder
60 : LD   1, 3(5) ;  Load return value into R1
61 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
62 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
63 : LDC  1, 0(0) ;  Load boolean-literal value into register 1
64 : SUB  1, 2, 1 ;  left - right for equality check
65 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
66 : LDC  1, 0(0) ;  false
67 : LDA  7, 1(7) ;  skip setting true
68 : LDC  1, 1(0) ;  true
69 : ST   1, 3(5) ;  Store function result into stack frame
70 : LD   6, 0(5) ;  Load return address
71 : LDA  7, 0(6) ;  Return to caller
72 : LD   1, 2(5) ;  Load parameter 'current' into R1
73 : LDC  5, 2(0) ;  Update DMEM pointer
74 : LDA  6, 2(7) ;  Compute return address
75 : ST   6, 0(5) ;  Store return address
76 : LDA  7, 8(0) ; Call print
77 : LDC  5, 2(0) ;  Move pointer to previous stack frame
78 : ST   1, 3(5) ;  Store function result into stack frame
79 : LD   1, 1(5) ;  Load parameter 'n' into R1
80 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=20)
81 : LD   1, 2(5) ;  Load parameter 'current' into R1
82 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
83 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
84 : ADD  1, 2, 1 ;  R1 = left + right
85 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='current',line=20), Tree Node('INTEGER-LITERAL', value='1',line=20)],line=20)
86 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'loopToN'
87 : LDA  6, 2(7) ;  Compute return address
88 : ST   6, 0(5) ;  Store return address in frame
89 : LDA  7, 133(0) ;  Call loopToN
90 : LD   1, 3(5) ;  Load return value into R1
91 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
92 : ST   1, 3(5) ;  Store function result into stack frame
93 : LD   6, 0(5) ;  Load return address
94 : LDA  7, 0(6) ;  Return to caller
95 : LD   1, 2(5) ;  Load parameter 'current' into R1
96 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='current',line=13)
97 : LD   1, 1(5) ;  Load parameter 'n' into R1
98 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=13)
99 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'divides'
100 : LDA  6, 2(7) ;  Compute return address
101 : ST   6, 0(5) ;  Store return address in frame
102 : LDA  7, 52(0) ;  Call divides
103 : LD   1, 3(5) ;  Load return value into R1
104 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
105 : JEQ  1, 117(0) ;  If condition is false, jump to ELSE
106 : LD   1, 1(5) ;  Load parameter 'n' into R1
107 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=14)
108 : LD   1, 2(5) ;  Load parameter 'current' into R1
109 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='current',line=14)
110 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'printAndLoop'
111 : LDA  6, 2(7) ;  Compute return address
112 : ST   6, 0(5) ;  Store return address in frame
113 : LDA  7, 72(0) ;  Call printAndLoop
114 : LD   1, 3(5) ;  Load return value into R1
115 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
116 : LDA  7, 130(0) ;  Skip ELSE block
117 : LD   1, 1(5) ;  Load parameter 'n' into R1
118 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=16)
119 : LD   1, 2(5) ;  Load parameter 'current' into R1
120 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
121 : LDC  1, 1(0) ;  Load boolean-literal value into register 1
122 : ADD  1, 2, 1 ;  R1 = left + right
123 : ST   1, 2(5) ;  Store argument Tree Node('BINARY-EXPRESSION', value='+', children=[Tree Node('IDENTIFIER', value='current',line=16), Tree Node('INTEGER-LITERAL', value='1',line=16)],line=16)
124 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'loopToN'
125 : LDA  6, 2(7) ;  Compute return address
126 : ST   6, 0(5) ;  Store return address in frame
127 : LDA  7, 133(0) ;  Call loopToN
128 : LD   1, 3(5) ;  Load return value into R1
129 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
130 : ST   1, 3(5) ;  Store function result into stack frame
131 : LD   6, 0(5) ;  Load return address
132 : LDA  7, 0(6) ;  Return to caller
133 : LD   1, 1(5) ;  Load parameter 'n' into R1
134 : ADD  2, 1, 0 ;  Move left operand from R1 to R2
135 : LD   1, 2(5) ;  Load parameter 'current' into R1
136 : SUB  1, 2, 1 ;  left - right for equality check
137 : JEQ  1, 2(7) ;  If R1 == 0, jump to true
138 : LDC  1, 0(0) ;  false
139 : LDA  7, 1(7) ;  skip setting true
140 : LDC  1, 1(0) ;  true
141 : JEQ  1, 144(0) ;  If condition is false, jump to ELSE
142 : LD   1, 1(5) ;  Load parameter 'n' into R1
143 : LDA  7, 154(0) ;  Skip ELSE block
144 : LD   1, 1(5) ;  Load parameter 'n' into R1
145 : ST   1, 1(5) ;  Store argument Tree Node('IDENTIFIER', value='n',line=10)
146 : LD   1, 2(5) ;  Load parameter 'current' into R1
147 : ST   1, 2(5) ;  Store argument Tree Node('IDENTIFIER', value='current',line=10)
148 : LDC  5, 2(0) ;  Set DMEM pointer to callee frame 'testAndLoop'
149 : LDA  6, 2(7) ;  Compute return address
150 : ST   6, 0(5) ;  Store return address in frame
151 : LDA  7, 95(0) ;  Call testAndLoop
152 : LD   1, 3(5) ;  Load return value into R1
153 : LDC  5, 2(0) ;  Restore DMEM pointer to caller frame
154 : ST   1, 3(5) ;  Store function result into stack frame
155 : LD   6, 0(5) ;  Load return address
156 : LDA  7, 0(6) ;  Return to caller
