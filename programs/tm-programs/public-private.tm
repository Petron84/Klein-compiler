0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
24 : LDC 1, 2147481647(0) ; Load integer-literal into R1
25 : LDA 4, 5(5) ; Recompute callee base from caller size
26 : ST 1, 1(4) ; Store argument 0 in callee frame
27 : LDC 1, 2047483747(0) ; Load integer-literal into R1
28 : LDA 4, 5(5) ; Recompute callee base from caller size
29 : ST 1, 2(4) ; Store argument 1 in callee frame
30 : LDA 4, 5(5) ; Recompute callee base from caller size
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return address into callee frame
33 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
34 : LDA 7, 162(0) ; Call factor
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 3(5) ; Store result into caller’s return slot
39 : LDA 7, 55(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
41 : LDA 4, 5(5) ; Recompute callee base from caller size
42 : ST 1, 1(4) ; Store argument 0 in callee frame
43 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
44 : LDA 4, 5(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LDA 4, 5(5) ; Recompute callee base from caller size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address into callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 162(0) ; Call factor
51 : LD 1, 3(5) ; Load callee result into R1
52 : LDC 2, 4(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : ST 1, 3(5) ; Store result into caller’s return slot
55 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
56 : LD 1, 3(5) ; Load main return value into R1
57 : LD 6, 0(5) ; Load root return address from main frame
58 : LDA 7, 0(6) ; Return from main to runtime epilogue
59 : LD 1, 1(5) ; Load parameter 'a' into R1
60 : ST 1, 4(5) ; Spill left operand at depth 0
61 : LD 1, 2(5) ; Load parameter 'b' into R1
62 : LD 2, 4(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; left - right for less-than check
64 : JLT 1, 2(7) ; If R1 < 0, jump to true
65 : LDC 1, 0(0) ; false
66 : LDA 7, 1(7) ; skip setting true
67 : LDC 1, 1(0) ; true
68 : JEQ 1, 71(0) ; If condition is false, jump to ELSE
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : LDA 7, 89(0) ; Skip ELSE block
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LD 1, 2(5) ; Load parameter 'b' into R1
74 : LD 2, 4(5) ; Restore left operand from depth 0
75 : SUB 1, 2, 1 ; R1 = left - right
76 : LDA 4, 5(5) ; Recompute callee base from caller size
77 : ST 1, 1(4) ; Store argument 0 in callee frame
78 : LD 1, 2(5) ; Load parameter 'b' into R1
79 : LDA 4, 5(5) ; Recompute callee base from caller size
80 : ST 1, 2(4) ; Store argument 1 in callee frame
81 : LDA 4, 5(5) ; Recompute callee base from caller size
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return address into callee frame
84 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
85 : LDA 7, 59(0) ; Call remainder
86 : LD 1, 3(5) ; Load callee result into R1
87 : LDC 2, 5(0) ; Callee frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : ST 1, 3(5) ; Store function result into frame return slot
90 : LD 6, 0(5) ; Load return address
91 : LDA 7, 0(6) ; Return to caller
92 : LD 1, 2(5) ; Load parameter 'b' into R1
93 : ST 1, 4(5) ; Spill left operand at depth 0
94 : LDC 1, 0(0) ; Load integer-literal into R1
95 : LD 2, 4(5) ; Restore left operand from depth 0
96 : SUB 1, 2, 1 ; left - right for equality check
97 : JEQ 1, 2(7) ; If R1 == 0, jump to true
98 : LDC 1, 0(0) ; false
99 : LDA 7, 1(7) ; skip setting true
100 : LDC 1, 1(0) ; true
101 : JEQ 1, 104(0) ; If condition is false, jump to ELSE
102 : LD 1, 1(5) ; Load parameter 'a' into R1
103 : LDA 7, 131(0) ; Skip ELSE block
104 : LD 1, 2(5) ; Load parameter 'b' into R1
105 : LDA 4, 5(5) ; Recompute callee base from caller size
106 : ST 1, 1(4) ; Store argument 0 in callee frame
107 : LD 1, 1(5) ; Load parameter 'a' into R1
108 : LDA 4, 5(5) ; Recompute callee base from caller size
109 : ST 1, 1(4) ; Store argument 0 in callee frame
110 : LD 1, 2(5) ; Load parameter 'b' into R1
111 : LDA 4, 5(5) ; Recompute callee base from caller size
112 : ST 1, 2(4) ; Store argument 1 in callee frame
113 : LDA 4, 5(5) ; Recompute callee base from caller size
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 59(0) ; Call remainder
118 : LD 1, 3(5) ; Load callee result into R1
119 : LDC 2, 5(0) ; Callee frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : LDA 4, 5(5) ; Recompute callee base from caller size
122 : ST 1, 2(4) ; Store argument 1 in callee frame
123 : LDA 4, 5(5) ; Recompute callee base from caller size
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return address into callee frame
126 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
127 : LDA 7, 92(0) ; Call gcd
128 : LD 1, 3(5) ; Load callee result into R1
129 : LDC 2, 5(0) ; Callee frame size
130 : SUB 5, 5, 2 ; Pop back to caller
131 : ST 1, 3(5) ; Store function result into frame return slot
132 : LD 6, 0(5) ; Load return address
133 : LDA 7, 0(6) ; Return to caller
134 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
135 : ST 1, 5(5) ; Spill left operand at depth 0
136 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
137 : LD 2, 5(5) ; Restore left operand from depth 0
138 : DIV 1, 2, 1 ; R1 = left / right
139 : LDA 4, 5(5) ; Recompute callee base from caller size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return address in callee frame
142 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
143 : LDA 7, 11(0) ; Call built-in print
144 : LDC 2, 3(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop back to caller
146 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
147 : ST 1, 5(5) ; Spill left operand at depth 0
148 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
149 : LD 2, 5(5) ; Restore left operand from depth 0
150 : DIV 1, 2, 1 ; R1 = left / right
151 : LDA 4, 5(5) ; Recompute callee base from caller size
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return address in callee frame
154 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
155 : LDA 7, 11(0) ; Call built-in print
156 : LDC 2, 3(0) ; Callee frame size
157 : SUB 5, 5, 2 ; Pop back to caller
158 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
159 : ST 1, 4(5) ; Store function result into frame return slot
160 : LD 6, 0(5) ; Load return address
161 : LDA 7, 0(6) ; Return to caller
162 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
163 : LDA 4, 4(5) ; Recompute callee base from caller size
164 : ST 1, 1(4) ; Store argument 0 in callee frame
165 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
166 : LDA 4, 4(5) ; Recompute callee base from caller size
167 : ST 1, 2(4) ; Store argument 1 in callee frame
168 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
169 : LDA 4, 4(5) ; Recompute callee base from caller size
170 : ST 1, 1(4) ; Store argument 0 in callee frame
171 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
172 : LDA 4, 4(5) ; Recompute callee base from caller size
173 : ST 1, 2(4) ; Store argument 1 in callee frame
174 : LDA 4, 4(5) ; Recompute callee base from caller size
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(4) ; Store return address into callee frame
177 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
178 : LDA 7, 92(0) ; Call gcd
179 : LD 1, 3(5) ; Load callee result into R1
180 : LDC 2, 5(0) ; Callee frame size
181 : SUB 5, 5, 2 ; Pop back to caller
182 : LDA 4, 4(5) ; Recompute callee base from caller size
183 : ST 1, 3(4) ; Store argument 2 in callee frame
184 : LDA 4, 4(5) ; Recompute callee base from caller size
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return address into callee frame
187 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
188 : LDA 7, 134(0) ; Call displayAndPrint
189 : LD 1, 4(5) ; Load callee result into R1
190 : LDC 2, 5(0) ; Callee frame size
191 : SUB 5, 5, 2 ; Pop back to caller
192 : ST 1, 3(5) ; Store function result into frame return slot
193 : LD 6, 0(5) ; Load return address
194 : LDA 7, 0(6) ; Return to caller
