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
20 : LDA 7, 29(0) ; Call sumPrimes
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 6(0) ; Callee frame size
23 : SUB 5, 5, 2 ; Pop back to caller
24 : ST 1, 1(5) ; Store result into caller’s return slot
25 : LDC 5, 1(0) ; Reset R5 to main frame base (DMEM[N+1])
26 : LD 1, 1(5) ; Load main return value into R1
27 : LD 6, 0(5) ; Load root return address from main frame
28 : LDA 7, 0(6) ; Return from main to runtime epilogue
29 : LD 1, 2(5) ; Load parameter 'b' into R1
30 : ST 1, 4(5) ; Spill left operand at depth 0
31 : LD 1, 1(5) ; Load parameter 'a' into R1
32 : LD 2, 4(5) ; Restore left operand from depth 0
33 : SUB 1, 2, 1 ; left - right for less-than check
34 : JLT 1, 2(7) ; If R1 < 0, jump to true
35 : LDC 1, 0(0) ; false
36 : LDA 7, 1(7) ; skip setting true
37 : LDC 1, 1(0) ; true
38 : JEQ 1, 41(0) ; If condition is false, jump to ELSE
39 : LDC 1, 0(0) ; Load integer-literal into R1
40 : LDA 7, 94(0) ; Skip ELSE block
41 : LD 1, 1(5) ; Load parameter 'a' into R1
42 : LDA 4, 6(5) ; Recompute callee base from caller size
43 : ST 1, 1(4) ; Store argument 0 in callee frame
44 : LDA 4, 6(5) ; Recompute callee base from caller size
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return address into callee frame
47 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
48 : LDA 7, 97(0) ; Call isPrime
49 : LD 1, 2(5) ; Load callee result into R1
50 : LDC 2, 4(0) ; Callee frame size
51 : SUB 5, 5, 2 ; Pop back to caller
52 : JEQ 1, 76(0) ; If condition is false, jump to ELSE
53 : LD 1, 1(5) ; Load parameter 'a' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 0
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : ST 1, 5(5) ; Spill left operand at depth 1
57 : LDC 1, 1(0) ; Load integer-literal into R1
58 : LD 2, 5(5) ; Restore left operand from depth 1
59 : ADD 1, 2, 1 ; R1 = left + right
60 : LDA 4, 6(5) ; Recompute callee base from caller size
61 : ST 1, 1(4) ; Store argument 0 in callee frame
62 : LD 1, 2(5) ; Load parameter 'b' into R1
63 : LDA 4, 6(5) ; Recompute callee base from caller size
64 : ST 1, 2(4) ; Store argument 1 in callee frame
65 : LDA 4, 6(5) ; Recompute callee base from caller size
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return address into callee frame
68 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
69 : LDA 7, 29(0) ; Call sumPrimes
70 : LD 1, 3(5) ; Load callee result into R1
71 : LDC 2, 6(0) ; Callee frame size
72 : SUB 5, 5, 2 ; Pop back to caller
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : ADD 1, 2, 1 ; R1 = left + right
75 : LDA 7, 94(0) ; Skip ELSE block
76 : LD 1, 1(5) ; Load parameter 'a' into R1
77 : ST 1, 4(5) ; Spill left operand at depth 0
78 : LDC 1, 1(0) ; Load integer-literal into R1
79 : LD 2, 4(5) ; Restore left operand from depth 0
80 : ADD 1, 2, 1 ; R1 = left + right
81 : LDA 4, 6(5) ; Recompute callee base from caller size
82 : ST 1, 1(4) ; Store argument 0 in callee frame
83 : LD 1, 2(5) ; Load parameter 'b' into R1
84 : LDA 4, 6(5) ; Recompute callee base from caller size
85 : ST 1, 2(4) ; Store argument 1 in callee frame
86 : LDA 4, 6(5) ; Recompute callee base from caller size
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return address into callee frame
89 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
90 : LDA 7, 29(0) ; Call sumPrimes
91 : LD 1, 3(5) ; Load callee result into R1
92 : LDC 2, 6(0) ; Callee frame size
93 : SUB 5, 5, 2 ; Pop back to caller
94 : ST 1, 3(5) ; Store function result into frame return slot
95 : LD 6, 0(5) ; Load return address
96 : LDA 7, 0(6) ; Return to caller
97 : LD 1, 1(5) ; Load parameter 'n' into R1
98 : ST 1, 3(5) ; Spill left operand at depth 0
99 : LDC 1, 2(0) ; Load integer-literal into R1
100 : LD 2, 3(5) ; Restore left operand from depth 0
101 : SUB 1, 2, 1 ; left - right for less-than check
102 : JLT 1, 2(7) ; If R1 < 0, jump to true
103 : LDC 1, 0(0) ; false
104 : LDA 7, 1(7) ; skip setting true
105 : LDC 1, 1(0) ; true
106 : JEQ 1, 109(0) ; If condition is false, jump to ELSE
107 : LDC 1, 0(0) ; Load boolean-literal into R1
108 : LDA 7, 173(0) ; Skip ELSE block
109 : LD 1, 1(5) ; Load parameter 'n' into R1
110 : ST 1, 3(5) ; Spill left operand at depth 0
111 : LDC 1, 2(0) ; Load integer-literal into R1
112 : LD 2, 3(5) ; Restore left operand from depth 0
113 : SUB 1, 2, 1 ; left - right for equality check
114 : JEQ 1, 2(7) ; If R1 == 0, jump to true
115 : LDC 1, 0(0) ; false
116 : LDA 7, 1(7) ; skip setting true
117 : LDC 1, 1(0) ; true
118 : JEQ 1, 121(0) ; If condition is false, jump to ELSE
119 : LDC 1, 1(0) ; Load boolean-literal into R1
120 : LDA 7, 173(0) ; Skip ELSE block
121 : LD 1, 1(5) ; Load parameter 'n' into R1
122 : LDA 4, 4(5) ; Recompute callee base from caller size
123 : ST 1, 1(4) ; Store argument 0 in callee frame
124 : LDC 1, 2(0) ; Load integer-literal into R1
125 : LDA 4, 4(5) ; Recompute callee base from caller size
126 : ST 1, 2(4) ; Store argument 1 in callee frame
127 : LDA 4, 4(5) ; Recompute callee base from caller size
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return address into callee frame
130 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
131 : LDA 7, 176(0) ; Call divisible
132 : LD 1, 3(5) ; Load callee result into R1
133 : LDC 2, 5(0) ; Callee frame size
134 : SUB 5, 5, 2 ; Pop back to caller
135 : ST 1, 3(5) ; Spill left operand at depth 0
136 : LD 1, 1(5) ; Load parameter 'n' into R1
137 : LDA 4, 4(5) ; Recompute callee base from caller size
138 : ST 1, 1(4) ; Store argument 0 in callee frame
139 : LDC 1, 3(0) ; Load integer-literal into R1
140 : LDA 4, 4(5) ; Recompute callee base from caller size
141 : ST 1, 2(4) ; Store argument 1 in callee frame
142 : LDA 4, 4(5) ; Recompute callee base from caller size
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return address into callee frame
145 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
146 : LDA 7, 176(0) ; Call divisible
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 5(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop back to caller
150 : LD 2, 3(5) ; Restore left operand from depth 0
151 : ADD 1, 2, 1 ; R1 = left OR right
152 : ST 1, 3(5) ; Spill left operand at depth 0
153 : LD 1, 1(5) ; Load parameter 'n' into R1
154 : LDA 4, 4(5) ; Recompute callee base from caller size
155 : ST 1, 1(4) ; Store argument 0 in callee frame
156 : LDC 1, 5(0) ; Load integer-literal into R1
157 : LDA 4, 4(5) ; Recompute callee base from caller size
158 : ST 1, 2(4) ; Store argument 1 in callee frame
159 : LDA 4, 4(5) ; Recompute callee base from caller size
160 : LDA 6, 164(0) ; Return address
161 : ST 6, 0(4) ; Store return address into callee frame
162 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
163 : LDA 7, 176(0) ; Call divisible
164 : LD 1, 3(5) ; Load callee result into R1
165 : LDC 2, 5(0) ; Callee frame size
166 : SUB 5, 5, 2 ; Pop back to caller
167 : LD 2, 3(5) ; Restore left operand from depth 0
168 : ADD 1, 2, 1 ; R1 = left OR right
169 : JEQ 1, 172(0) ; If condition is false, jump to ELSE
170 : LDC 1, 0(0) ; Load boolean-literal into R1
171 : LDA 7, 173(0) ; Skip ELSE block
172 : LDC 1, 1(0) ; Load boolean-literal into R1
173 : ST 1, 2(5) ; Store function result into frame return slot
174 : LD 6, 0(5) ; Load return address
175 : LDA 7, 0(6) ; Return to caller
176 : LD 1, 1(5) ; Load parameter 'x' into R1
177 : ST 1, 4(5) ; Spill left operand at depth 0
178 : LD 1, 2(5) ; Load parameter 'y' into R1
179 : LD 2, 4(5) ; Restore left operand from depth 0
180 : DIV 1, 2, 1 ; R1 = left / right
181 : ST 1, 4(5) ; Spill left operand at depth 0
182 : LD 1, 2(5) ; Load parameter 'y' into R1
183 : LD 2, 4(5) ; Restore left operand from depth 0
184 : MUL 1, 2, 1 ; R1 = left * right
185 : ST 1, 4(5) ; Spill left operand at depth 0
186 : LD 1, 1(5) ; Load parameter 'x' into R1
187 : LD 2, 4(5) ; Restore left operand from depth 0
188 : SUB 1, 2, 1 ; left - right for equality check
189 : JEQ 1, 2(7) ; If R1 == 0, jump to true
190 : LDC 1, 0(0) ; false
191 : LDA 7, 1(7) ; skip setting true
192 : LDC 1, 1(0) ; true
193 : JEQ 1, 196(0) ; If condition is false, jump to ELSE
194 : LDC 1, 1(0) ; Load boolean-literal into R1
195 : LDA 7, 197(0) ; Skip ELSE block
196 : LDC 1, 0(0) ; Load boolean-literal into R1
197 : ST 1, 3(5) ; Store function result into frame return slot
198 : LD 6, 0(5) ; Load return address
199 : LDA 7, 0(6) ; Return to caller
