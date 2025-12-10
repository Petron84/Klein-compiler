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
13 : LD 1, 1(5) ;  Load parameter 'n' into R1
14 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
15 : LDC 1, 1(0) ;  Load integer-literal value into register 1
16 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(3) ; Store return in callee frame (via R3)
19 : ADD 5, 3, 0 ; Push callee frame
20 : LDA 7, 157(0) ; Call loopToN
21 : LD 1, 3(5) ;  Load function result
22 : LDC 2, 4(0) ;  Caller frame size
23 : SUB 5, 5, 2 ;  Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s frame
25 : LD 1, 2(5) ;  Load return value into register 1
26 : LD 6, 0(5) ;  Load return address for main function into register 6
27 : LDA 7, 0(6) ;  Jump to return address of main function
28 : LD 1, 2(5) ;  Load parameter 'den' into R1
29 : ADD 3, 1, 0 ;  Stash right operand in R3
30 : LD 1, 1(5) ;  Load parameter 'num' into R1
31 : ADD 2, 1, 0 ;  Move left operand to register 2
32 : ADD 1, 3, 0 ;  Restore right operand from R3
33 : SUB 1, 2, 1 ;  left - right for less-than check
34 : JLT 1, 2(7) ;  If R1 < 0, jump to true
35 : LDC 1, 0(0) ;  false
36 : LDA 7, 1(7) ;  skip setting true
37 : LDC 1, 1(0) ;  true
38 : JEQ 1, 41(0) ;  If condition is false, jump to ELSE
39 : LD 1, 1(5) ;  Load parameter 'num' into R1
40 : LDA 7, 58(0) ;  Skip ELSE block
41 : LDA 3, 4(5) ; Base of callee frame (stable)
42 : LD 1, 2(5) ;  Load parameter 'den' into R1
43 : ADD 3, 1, 0 ;  Stash right operand in R3
44 : LD 1, 1(5) ;  Load parameter 'num' into R1
45 : ADD 2, 1, 0 ;  Move left operand to register 2
46 : ADD 1, 3, 0 ;  Restore right operand from R3
47 : SUB 1, 2, 1 ;  R1 = left - right
48 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
49 : LD 1, 2(5) ;  Load parameter 'den' into R1
50 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(3) ; Store return in callee frame (via R3)
53 : ADD 5, 3, 0 ; Push callee frame
54 : LDA 7, 28(0) ; Call remainder
55 : LD 1, 3(5) ;  Load function result
56 : LDC 2, 4(0) ;  Caller frame size
57 : SUB 5, 5, 2 ;  Pop back to caller
58 : ST 1, 3(5) ;  Store function result into stack frame
59 : LD 6, 0(5) ;  Load return address
60 : LDA 7, 0(6) ;  Return to caller
61 : LDA 3, 4(5) ; Base of callee frame (stable)
62 : LD 1, 2(5) ;  Load parameter 'b' into R1
63 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
64 : LD 1, 1(5) ;  Load parameter 'a' into R1
65 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(3) ; Store return in callee frame (via R3)
68 : ADD 5, 3, 0 ; Push callee frame
69 : LDA 7, 28(0) ; Call remainder
70 : LD 1, 3(5) ;  Load function result
71 : LDC 2, 4(0) ;  Caller frame size
72 : SUB 5, 5, 2 ;  Pop back to caller
73 : ADD 2, 1, 0 ;  Move left operand to register 2
74 : LDC 1, 0(0) ;  Load integer-literal value into register 1
75 : SUB 1, 2, 1 ;  left - right for equality check
76 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
77 : LDC 1, 0(0) ;  false
78 : LDA 7, 1(7) ;  skip setting true
79 : LDC 1, 1(0) ;  true
80 : ST 1, 3(5) ;  Store function result into stack frame
81 : LD 6, 0(5) ;  Load return address
82 : LDA 7, 0(6) ;  Return to caller
83 : LD 1, 2(5) ;  Load parameter 'current' into R1
84 : LDA 3, 3(5) ; Base of callee frame (stable)
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(3) ; Store return addr in callee frame
87 : ADD 5, 3, 0 ; Push new frame
88 : LDA 7, 9(0) ; Call print
89 : LDC 2, 3(0) ; Caller frame size
90 : SUB 5, 5, 2 ; Pop frame
91 : LDA 3, 4(5) ; Base of callee frame (stable)
92 : LD 1, 1(5) ;  Load parameter 'n' into R1
93 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
94 : LDC 1, 1(0) ;  Load integer-literal value into register 1
95 : ADD 3, 1, 0 ;  Stash right operand in R3
96 : LD 1, 2(5) ;  Load parameter 'current' into R1
97 : ADD 2, 1, 0 ;  Move left operand to register 2
98 : ADD 1, 3, 0 ;  Restore right operand from R3
99 : ADD 1, 2, 1 ;  R1 = left + right
100 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(3) ; Store return in callee frame (via R3)
103 : ADD 5, 3, 0 ; Push callee frame
104 : LDA 7, 157(0) ; Call loopToN
105 : LD 1, 3(5) ;  Load function result
106 : LDC 2, 4(0) ;  Caller frame size
107 : SUB 5, 5, 2 ;  Pop back to caller
108 : ST 1, 3(5) ;  Store function result into stack frame
109 : LD 6, 0(5) ;  Load return address
110 : LDA 7, 0(6) ;  Return to caller
111 : LDA 3, 4(5) ; Base of callee frame (stable)
112 : LD 1, 2(5) ;  Load parameter 'current' into R1
113 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
114 : LD 1, 1(5) ;  Load parameter 'n' into R1
115 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(3) ; Store return in callee frame (via R3)
118 : ADD 5, 3, 0 ; Push callee frame
119 : LDA 7, 61(0) ; Call divides
120 : LD 1, 3(5) ;  Load function result
121 : LDC 2, 4(0) ;  Caller frame size
122 : SUB 5, 5, 2 ;  Pop back to caller
123 : JEQ 1, 137(0) ;  If condition is false, jump to ELSE
124 : LDA 3, 4(5) ; Base of callee frame (stable)
125 : LD 1, 1(5) ;  Load parameter 'n' into R1
126 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
127 : LD 1, 2(5) ;  Load parameter 'current' into R1
128 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(3) ; Store return in callee frame (via R3)
131 : ADD 5, 3, 0 ; Push callee frame
132 : LDA 7, 83(0) ; Call printAndLoop
133 : LD 1, 3(5) ;  Load function result
134 : LDC 2, 4(0) ;  Caller frame size
135 : SUB 5, 5, 2 ;  Pop back to caller
136 : LDA 7, 154(0) ;  Skip ELSE block
137 : LDA 3, 4(5) ; Base of callee frame (stable)
138 : LD 1, 1(5) ;  Load parameter 'n' into R1
139 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
140 : LDC 1, 1(0) ;  Load integer-literal value into register 1
141 : ADD 3, 1, 0 ;  Stash right operand in R3
142 : LD 1, 2(5) ;  Load parameter 'current' into R1
143 : ADD 2, 1, 0 ;  Move left operand to register 2
144 : ADD 1, 3, 0 ;  Restore right operand from R3
145 : ADD 1, 2, 1 ;  R1 = left + right
146 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(3) ; Store return in callee frame (via R3)
149 : ADD 5, 3, 0 ; Push callee frame
150 : LDA 7, 157(0) ; Call loopToN
151 : LD 1, 3(5) ;  Load function result
152 : LDC 2, 4(0) ;  Caller frame size
153 : SUB 5, 5, 2 ;  Pop back to caller
154 : ST 1, 3(5) ;  Store function result into stack frame
155 : LD 6, 0(5) ;  Load return address
156 : LDA 7, 0(6) ;  Return to caller
157 : LD 1, 2(5) ;  Load parameter 'current' into R1
158 : ADD 3, 1, 0 ;  Stash right operand in R3
159 : LD 1, 1(5) ;  Load parameter 'n' into R1
160 : ADD 2, 1, 0 ;  Move left operand to register 2
161 : ADD 1, 3, 0 ;  Restore right operand from R3
162 : SUB 1, 2, 1 ;  left - right for equality check
163 : JEQ 1, 2(7) ;  If R1 == 0, jump to true
164 : LDC 1, 0(0) ;  false
165 : LDA 7, 1(7) ;  skip setting true
166 : LDC 1, 1(0) ;  true
167 : JEQ 1, 170(0) ;  If condition is false, jump to ELSE
168 : LD 1, 1(5) ;  Load parameter 'n' into R1
169 : LDA 7, 182(0) ;  Skip ELSE block
170 : LDA 3, 4(5) ; Base of callee frame (stable)
171 : LD 1, 1(5) ;  Load parameter 'n' into R1
172 : ST 1, 1(3) ; Store argument 0 in callee (via R3)
173 : LD 1, 2(5) ;  Load parameter 'current' into R1
174 : ST 1, 2(3) ; Store argument 1 in callee (via R3)
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(3) ; Store return in callee frame (via R3)
177 : ADD 5, 3, 0 ; Push callee frame
178 : LDA 7, 111(0) ; Call testAndLoop
179 : LD 1, 3(5) ;  Load function result
180 : LDC 2, 4(0) ;  Caller frame size
181 : SUB 5, 5, 2 ;  Pop back to caller
182 : ST 1, 3(5) ;  Store function result into stack frame
183 : LD 6, 0(5) ;  Load return address
184 : LDA 7, 0(6) ;  Return to caller
