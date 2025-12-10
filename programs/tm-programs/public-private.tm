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
14 : LDC 1, 0(0) ;  Load integer-literal value into register 1
15 : ADD 3, 1, 0 ;  Stash right operand in R3
16 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
17 : ADD 2, 1, 0 ;  Move left operand to register 2
18 : ADD 1, 3, 0 ;  Restore right operand from R3
19 : SUB 1, 2, 1 ;  left - right for equality check
20 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
21 : LDC 1, 0(0) ;  false
22 : LDA 7, 1(7) ;  skip setting true
23 : LDC 1, 1(0) ;  true
24 : JEQ 1, 39(0) ;  If condition is false, jump to ELSE
25 : LDA 3, 4(5) ; Base of callee frame (stable)
26 : LDC 1, 2147481647(0) ;  Load integer-literal value into register 1
27 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
28 : LDC 1, 2047483747(0) ;  Load integer-literal value into register 1
29 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(3) ; Store return in callee frame (via R3)
32 : ADD 5, 3, 0 ; Push callee frame
33 : LDA 7, 157(0) ; Call factor
34 : LD 1, 3(5) ;  Load function result
35 : LDC 2, 4(0) ;  Caller frame size
36 : SUB 5, 5, 2 ;  Pop back to caller
37 : ST 1, 3(5) ; Store result into caller’s frame
38 : LDA 7, 52(0) ;  Skip ELSE block
39 : LDA 3, 4(5) ; Base of callee frame (stable)
40 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
41 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
42 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
43 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(3) ; Store return in callee frame (via R3)
46 : ADD 5, 3, 0 ; Push callee frame
47 : LDA 7, 157(0) ; Call factor
48 : LD 1, 3(5) ;  Load function result
49 : LDC 2, 4(0) ;  Caller frame size
50 : SUB 5, 5, 2 ;  Pop back to caller
51 : ST 1, 3(5) ; Store result into caller’s frame
52 : LD 1, 3(5) ;  Load return value into register 1
53 : LD 6, 0(5) ;  Load return address for main function into register 6
54 : LDA 7, 0(6) ;  Jump to return address of main function
55 : LD 1, 2(5) ;  Load parameter 'b' into R1
56 : ADD 3, 1, 0 ;  Stash right operand in R3
57 : LD 1, 1(5) ;  Load parameter 'a' into R1
58 : ADD 2, 1, 0 ;  Move left operand to register 2
59 : ADD 1, 3, 0 ;  Restore right operand from R3
60 : SUB 1, 2, 1 ;  left - right for less-than check
61 : JLT 1, 2(7) ;  If R1 < 0, jump to true
62 : LDC 1, 0(0) ;  false
63 : LDA 7, 1(7) ;  skip setting true
64 : LDC 1, 1(0) ;  true
65 : JEQ 1, 68(0) ;  If condition is false, jump to ELSE
66 : LD 1, 1(5) ;  Load parameter 'a' into R1
67 : LDA 7, 85(0) ;  Skip ELSE block
68 : LDA 3, 4(5) ; Base of callee frame (stable)
69 : LD 1, 2(5) ;  Load parameter 'b' into R1
70 : ADD 3, 1, 0 ;  Stash right operand in R3
71 : LD 1, 1(5) ;  Load parameter 'a' into R1
72 : ADD 2, 1, 0 ;  Move left operand to register 2
73 : ADD 1, 3, 0 ;  Restore right operand from R3
74 : SUB 1, 2, 1 ;  R1 = left - right
75 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
76 : LD 1, 2(5) ;  Load parameter 'b' into R1
77 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(3) ; Store return in callee frame (via R3)
80 : ADD 5, 3, 0 ; Push callee frame
81 : LDA 7, 55(0) ; Call remainder
82 : LD 1, 3(5) ;  Load function result
83 : LDC 2, 4(0) ;  Caller frame size
84 : SUB 5, 5, 2 ;  Pop back to caller
85 : ST 1, 3(5) ;  Store function result into stack frame
86 : LD 6, 0(5) ;  Load return address
87 : LDA 7, 0(6) ;  Return to caller
88 : LDC 1, 0(0) ;  Load integer-literal value into register 1
89 : ADD 3, 1, 0 ;  Stash right operand in R3
90 : LD 1, 2(5) ;  Load parameter 'b' into R1
91 : ADD 2, 1, 0 ;  Move left operand to register 2
92 : ADD 1, 3, 0 ;  Restore right operand from R3
93 : SUB 1, 2, 1 ;  left - right for equality check
94 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
95 : LDC 1, 0(0) ;  false
96 : LDA 7, 1(7) ;  skip setting true
97 : LDC 1, 1(0) ;  true
98 : JEQ 1, 101(0) ;  If condition is false, jump to ELSE
99 : LD 1, 1(5) ;  Load parameter 'a' into R1
100 : LDA 7, 124(0) ;  Skip ELSE block
101 : LDA 3, 4(5) ; Base of callee frame (stable)
102 : LD 1, 2(5) ;  Load parameter 'b' into R1
103 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
104 : LDA 3, 4(5) ; Base of callee frame (stable)
105 : LD 1, 1(5) ;  Load parameter 'a' into R1
106 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
107 : LD 1, 2(5) ;  Load parameter 'b' into R1
108 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(3) ; Store return in callee frame (via R3)
111 : ADD 5, 3, 0 ; Push callee frame
112 : LDA 7, 55(0) ; Call remainder
113 : LD 1, 3(5) ;  Load function result
114 : LDC 2, 4(0) ;  Caller frame size
115 : SUB 5, 5, 2 ;  Pop back to caller
116 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(3) ; Store return in callee frame (via R3)
119 : ADD 5, 3, 0 ; Push callee frame
120 : LDA 7, 88(0) ; Call gcd
121 : LD 1, 3(5) ;  Load function result
122 : LDC 2, 4(0) ;  Caller frame size
123 : SUB 5, 5, 2 ;  Pop back to caller
124 : ST 1, 3(5) ;  Store function result into stack frame
125 : LD 6, 0(5) ;  Load return address
126 : LDA 7, 0(6) ;  Return to caller
127 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
128 : ADD 3, 1, 0 ;  Stash right operand in R3
129 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
130 : ADD 2, 1, 0 ;  Move left operand to register 2
131 : ADD 1, 3, 0 ;  Restore right operand from R3
132 : DIV 1, 2, 1 ;  R1 = left / right
133 : LDA 3, 3(5) ; Base of callee frame (stable)
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(3) ; Store return addr in callee frame
136 : ADD 5, 3, 0 ; Push new frame
137 : LDA 7, 11(0) ; Call print
138 : LDC 2, 3(0) ; Caller frame size
139 : SUB 5, 5, 2 ; Pop frame
140 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
141 : ADD 3, 1, 0 ;  Stash right operand in R3
142 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
143 : ADD 2, 1, 0 ;  Move left operand to register 2
144 : ADD 1, 3, 0 ;  Restore right operand from R3
145 : DIV 1, 2, 1 ;  R1 = left / right
146 : LDA 3, 3(5) ; Base of callee frame (stable)
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(3) ; Store return addr in callee frame
149 : ADD 5, 3, 0 ; Push new frame
150 : LDA 7, 11(0) ; Call print
151 : LDC 2, 3(0) ; Caller frame size
152 : SUB 5, 5, 2 ; Pop frame
153 : LD 1, 3(5) ;  Load parameter 'commonFactor' into R1
154 : ST 1, 4(5) ;  Store function result into stack frame
155 : LD 6, 0(5) ;  Load return address
156 : LDA 7, 0(6) ;  Return to caller
157 : LDA 3, 5(5) ; Base of callee frame (stable)
158 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
159 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
160 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
161 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
162 : LDA 3, 4(5) ; Base of callee frame (stable)
163 : LD 1, 1(5) ;  Load parameter 'publicKey' into R1
164 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
165 : LD 1, 2(5) ;  Load parameter 'privateKey' into R1
166 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(3) ; Store return in callee frame (via R3)
169 : ADD 5, 3, 0 ; Push callee frame
170 : LDA 7, 88(0) ; Call gcd
171 : LD 1, 3(5) ;  Load function result
172 : LDC 2, 4(0) ;  Caller frame size
173 : SUB 5, 5, 2 ;  Pop back to caller
174 : ST 1, 3(3) ; Store argument 2 in callee (via R3)
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(3) ; Store return in callee frame (via R3)
177 : ADD 5, 3, 0 ; Push callee frame
178 : LDA 7, 127(0) ; Call displayAndPrint
179 : LD 1, 4(5) ;  Load function result
180 : LDC 2, 5(0) ;  Caller frame size
181 : SUB 5, 5, 2 ;  Pop back to caller
182 : ST 1, 3(5) ;  Store function result into stack frame
183 : LD 6, 0(5) ;  Load return address
184 : LDA 7, 0(6) ;  Return to caller
