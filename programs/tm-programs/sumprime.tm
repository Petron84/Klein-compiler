0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : LDA 4, 2(5) ; Recompute callee base from caller size
12 : ST 1, 1(4) ; Store argument 0 in callee frame
13 : LDC 1, 20(0) ; Load integer-literal into R1
14 : LDA 4, 2(5) ; Recompute callee base from caller size
15 : ST 1, 2(4) ; Store argument 1 in callee frame
16 : LDA 4, 2(5) ; Recompute callee base from caller size
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return address into callee frame
19 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
20 : LDA 7, 31(0) ; Call sumPrimes
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 6(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop back to caller
24 : ST 1, 1(5) ; Store result into caller’s return slot
25 : LDC 5, 1(0) ; Anchor R5 to main frame base (DMEM[N+1])
26 : ST 1, 1(5) ; Store final result into MAIN frame's return slot
27 : LDC 5, 1(0) ; Reset R5 to main frame base (DMEM[N+1])
28 : LD 1, 1(5) ; Load main return value into R1
29 : LD 6, 0(5) ; Load root return address from main frame
30 : LDA 7, 0(6) ; Return from main to runtime epilogue
31 : LD 1, 2(5) ; Load parameter 'b' into R1
32 : ST 1, 4(5) ; Spill left operand at depth 0
33 : LD 1, 1(5) ; Load parameter 'a' into R1
34 : LD 2, 4(5) ; Restore left operand from depth 0
35 : SUB 1, 2, 1 ; left - right for less-than check
36 : JLT 1, 2(7) ; If R1 < 0, jump to true
37 : LDC 1, 0(0) ; false
38 : LDA 7, 1(7) ; skip setting true
39 : LDC 1, 1(0) ; true
40 : JEQ 1, 43(0) ; If condition is false, jump to ELSE
41 : LDC 1, 0(0) ; Load integer-literal into R1
42 : LDA 7, 96(0) ; Skip ELSE block
43 : LD 1, 1(5) ; Load parameter 'a' into R1
44 : LDA 4, 6(5) ; Recompute callee base from caller size
45 : ST 1, 1(4) ; Store argument 0 in callee frame
46 : LDA 4, 6(5) ; Recompute callee base from caller size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address into callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 99(0) ; Call isPrime
51 : LD 1, 2(5) ; Load callee result into R1
52 : LDC 2, 4(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : JEQ 1, 78(0) ; If condition is false, jump to ELSE
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 1(5) ; Load parameter 'a' into R1
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LDC 1, 1(0) ; Load integer-literal into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : ADD 1, 2, 1 ; R1 = left + right
62 : LDA 4, 6(5) ; Recompute callee base from caller size
63 : ST 1, 1(4) ; Store argument 0 in callee frame
64 : LD 1, 2(5) ; Load parameter 'b' into R1
65 : LDA 4, 6(5) ; Recompute callee base from caller size
66 : ST 1, 2(4) ; Store argument 1 in callee frame
67 : LDA 4, 6(5) ; Recompute callee base from caller size
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return address into callee frame
70 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
71 : LDA 7, 31(0) ; Call sumPrimes
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 6(0) ; Callee frame size
74 : SUB 5, 5, 2 ; Pop back to caller
75 : LD 2, 4(5) ; Restore left operand from depth 0
76 : ADD 1, 2, 1 ; R1 = left + right
77 : LDA 7, 96(0) ; Skip ELSE block
78 : LD 1, 1(5) ; Load parameter 'a' into R1
79 : ST 1, 4(5) ; Spill left operand at depth 0
80 : LDC 1, 1(0) ; Load integer-literal into R1
81 : LD 2, 4(5) ; Restore left operand from depth 0
82 : ADD 1, 2, 1 ; R1 = left + right
83 : LDA 4, 6(5) ; Recompute callee base from caller size
84 : ST 1, 1(4) ; Store argument 0 in callee frame
85 : LD 1, 2(5) ; Load parameter 'b' into R1
86 : LDA 4, 6(5) ; Recompute callee base from caller size
87 : ST 1, 2(4) ; Store argument 1 in callee frame
88 : LDA 4, 6(5) ; Recompute callee base from caller size
89 : LDA 6, 93(0) ; Return address
90 : ST 6, 0(4) ; Store return address into callee frame
91 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
92 : LDA 7, 31(0) ; Call sumPrimes
93 : LD 1, 3(5) ; Load callee result into R1
94 : LDC 2, 6(0) ; Callee frame size
95 : SUB 5, 5, 2 ; Pop back to caller
96 : ST 1, 3(5) ; Store function result into frame return slot
97 : LD 6, 0(5) ; Load return address
98 : LDA 7, 0(6) ; Return to caller
99 : LD 1, 1(5) ; Load parameter 'n' into R1
100 : ST 1, 3(5) ; Spill left operand at depth 0
101 : LDC 1, 2(0) ; Load integer-literal into R1
102 : LD 2, 3(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; left - right for less-than check
104 : JLT 1, 2(7) ; If R1 < 0, jump to true
105 : LDC 1, 0(0) ; false
106 : LDA 7, 1(7) ; skip setting true
107 : LDC 1, 1(0) ; true
108 : JEQ 1, 111(0) ; If condition is false, jump to ELSE
109 : LDC 1, 0(0) ; Load boolean-literal into R1
110 : LDA 7, 175(0) ; Skip ELSE block
111 : LD 1, 1(5) ; Load parameter 'n' into R1
112 : ST 1, 3(5) ; Spill left operand at depth 0
113 : LDC 1, 2(0) ; Load integer-literal into R1
114 : LD 2, 3(5) ; Restore left operand from depth 0
115 : SUB 1, 2, 1 ; left - right for equality check
116 : JEQ 1, 2(7) ; If R1 == 0, jump to true
117 : LDC 1, 0(0) ; false
118 : LDA 7, 1(7) ; skip setting true
119 : LDC 1, 1(0) ; true
120 : JEQ 1, 123(0) ; If condition is false, jump to ELSE
121 : LDC 1, 1(0) ; Load boolean-literal into R1
122 : LDA 7, 175(0) ; Skip ELSE block
123 : LD 1, 1(5) ; Load parameter 'n' into R1
124 : LDA 4, 4(5) ; Recompute callee base from caller size
125 : ST 1, 1(4) ; Store argument 0 in callee frame
126 : LDC 1, 2(0) ; Load integer-literal into R1
127 : LDA 4, 4(5) ; Recompute callee base from caller size
128 : ST 1, 2(4) ; Store argument 1 in callee frame
129 : LDA 4, 4(5) ; Recompute callee base from caller size
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return address into callee frame
132 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
133 : LDA 7, 178(0) ; Call divisible
134 : LD 1, 3(5) ; Load callee result into R1
135 : LDC 2, 5(0) ; Callee frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : ST 1, 3(5) ; Spill left operand at depth 0
138 : LD 1, 1(5) ; Load parameter 'n' into R1
139 : LDA 4, 4(5) ; Recompute callee base from caller size
140 : ST 1, 1(4) ; Store argument 0 in callee frame
141 : LDC 1, 3(0) ; Load integer-literal into R1
142 : LDA 4, 4(5) ; Recompute callee base from caller size
143 : ST 1, 2(4) ; Store argument 1 in callee frame
144 : LDA 4, 4(5) ; Recompute callee base from caller size
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return address into callee frame
147 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
148 : LDA 7, 178(0) ; Call divisible
149 : LD 1, 3(5) ; Load callee result into R1
150 : LDC 2, 5(0) ; Callee frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : LD 2, 3(5) ; Restore left operand from depth 0
153 : ADD 1, 2, 1 ; R1 = left OR right
154 : ST 1, 3(5) ; Spill left operand at depth 0
155 : LD 1, 1(5) ; Load parameter 'n' into R1
156 : LDA 4, 4(5) ; Recompute callee base from caller size
157 : ST 1, 1(4) ; Store argument 0 in callee frame
158 : LDC 1, 5(0) ; Load integer-literal into R1
159 : LDA 4, 4(5) ; Recompute callee base from caller size
160 : ST 1, 2(4) ; Store argument 1 in callee frame
161 : LDA 4, 4(5) ; Recompute callee base from caller size
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return address into callee frame
164 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
165 : LDA 7, 178(0) ; Call divisible
166 : LD 1, 3(5) ; Load callee result into R1
167 : LDC 2, 5(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop back to caller
169 : LD 2, 3(5) ; Restore left operand from depth 0
170 : ADD 1, 2, 1 ; R1 = left OR right
171 : JEQ 1, 174(0) ; If condition is false, jump to ELSE
172 : LDC 1, 0(0) ; Load boolean-literal into R1
173 : LDA 7, 175(0) ; Skip ELSE block
174 : LDC 1, 1(0) ; Load boolean-literal into R1
175 : ST 1, 2(5) ; Store function result into frame return slot
176 : LD 6, 0(5) ; Load return address
177 : LDA 7, 0(6) ; Return to caller
178 : LD 1, 1(5) ; Load parameter 'x' into R1
179 : ST 1, 4(5) ; Spill left operand at depth 0
180 : LD 1, 2(5) ; Load parameter 'y' into R1
181 : LD 2, 4(5) ; Restore left operand from depth 0
182 : DIV 1, 2, 1 ; R1 = left / right
183 : ST 1, 4(5) ; Spill left operand at depth 0
184 : LD 1, 2(5) ; Load parameter 'y' into R1
185 : LD 2, 4(5) ; Restore left operand from depth 0
186 : MUL 1, 2, 1 ; R1 = left * right
187 : ST 1, 4(5) ; Spill left operand at depth 0
188 : LD 1, 1(5) ; Load parameter 'x' into R1
189 : LD 2, 4(5) ; Restore left operand from depth 0
190 : SUB 1, 2, 1 ; left - right for equality check
191 : JEQ 1, 2(7) ; If R1 == 0, jump to true
192 : LDC 1, 0(0) ; false
193 : LDA 7, 1(7) ; skip setting true
194 : LDC 1, 1(0) ; true
195 : JEQ 1, 198(0) ; If condition is false, jump to ELSE
196 : LDC 1, 1(0) ; Load boolean-literal into R1
197 : LDA 7, 199(0) ; Skip ELSE block
198 : LDC 1, 0(0) ; Load boolean-literal into R1
199 : ST 1, 3(5) ; Store function result into frame return slot
200 : LD 6, 0(5) ; Load return address
201 : LDA 7, 0(6) ; Return to caller
