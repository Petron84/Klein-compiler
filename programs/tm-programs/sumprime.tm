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
11 : ST 1, 2(5) ; Stage arg 0 in caller frame outgoing area
12 : LDC 1, 20(0) ; Load integer-literal into R1
13 : ST 1, 3(5) ; Stage arg 1 in caller frame outgoing area
14 : LDA 4, 4(5) ; Compute future callee base from caller size
15 : LD 2, 2(5) ; Load staged arg 0 from caller frame
16 : ST 2, 1(4) ; Store arg 0 into callee frame
17 : LD 2, 3(5) ; Load staged arg 1 from caller frame
18 : ST 2, 2(4) ; Store arg 1 into callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
22 : LDA 7, 30(0) ; Call sumPrimes
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 6(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop callee frame
26 : ST 1, 1(5) ; Store result into caller’s frame
27 : LD 1, 1(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 2(5) ; Load parameter 'b' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LD 1, 1(5) ; Load parameter 'a' into R1
33 : LD 2, 4(5) ; Restore left operand from depth 0
34 : SUB 1, 2, 1 ; left - right for less-than check
35 : JLT 1, 2(7) ; If R1 < 0, jump to true
36 : LDC 1, 0(0) ; false
37 : LDA 7, 1(7) ; skip setting true
38 : LDC 1, 1(0) ; true
39 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
40 : LDC 1, 0(0) ; Load integer-literal into R1
41 : LDA 7, 100(0) ; Skip ELSE block
42 : LD 1, 1(5) ; Load parameter 'a' into R1
43 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
44 : LDA 4, 8(5) ; Compute future callee base from caller size
45 : LD 2, 6(5) ; Load staged arg 0 from caller frame
46 : ST 2, 1(4) ; Store arg 0 into callee frame
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return in callee frame
49 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
50 : LDA 7, 103(0) ; Call isPrime
51 : LD 1, 2(5) ; Load callee result into R1
52 : LDC 2, 4(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop callee frame
54 : JEQ 1, 80(0) ; If condition is false, jump to ELSE
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 1(5) ; Load parameter 'a' into R1
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LDC 1, 1(0) ; Load integer-literal into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : ADD 1, 2, 1 ; R1 = left + right
62 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
65 : LDA 4, 8(5) ; Compute future callee base from caller size
66 : LD 2, 6(5) ; Load staged arg 0 from caller frame
67 : ST 2, 1(4) ; Store arg 0 into callee frame
68 : LD 2, 7(5) ; Load staged arg 1 from caller frame
69 : ST 2, 2(4) ; Store arg 1 into callee frame
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 30(0) ; Call sumPrimes
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 6(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop callee frame
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : ADD 1, 2, 1 ; R1 = left + right
79 : LDA 7, 100(0) ; Skip ELSE block
80 : LD 1, 1(5) ; Load parameter 'a' into R1
81 : ST 1, 4(5) ; Spill left operand at depth 0
82 : LDC 1, 1(0) ; Load integer-literal into R1
83 : LD 2, 4(5) ; Restore left operand from depth 0
84 : ADD 1, 2, 1 ; R1 = left + right
85 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
86 : LD 1, 2(5) ; Load parameter 'b' into R1
87 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
88 : LDA 4, 8(5) ; Compute future callee base from caller size
89 : LD 2, 6(5) ; Load staged arg 0 from caller frame
90 : ST 2, 1(4) ; Store arg 0 into callee frame
91 : LD 2, 7(5) ; Load staged arg 1 from caller frame
92 : ST 2, 2(4) ; Store arg 1 into callee frame
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 30(0) ; Call sumPrimes
97 : LD 1, 3(5) ; Load callee result into R1
98 : LDC 2, 6(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : ST 1, 3(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
103 : LD 1, 1(5) ; Load parameter 'n' into R1
104 : ST 1, 3(5) ; Spill left operand at depth 0
105 : LDC 1, 2(0) ; Load integer-literal into R1
106 : LD 2, 3(5) ; Restore left operand from depth 0
107 : SUB 1, 2, 1 ; left - right for less-than check
108 : JLT 1, 2(7) ; If R1 < 0, jump to true
109 : LDC 1, 0(0) ; false
110 : LDA 7, 1(7) ; skip setting true
111 : LDC 1, 1(0) ; true
112 : JEQ 1, 115(0) ; If condition is false, jump to ELSE
113 : LDC 1, 0(0) ; Load boolean-literal into R1
114 : LDA 7, 185(0) ; Skip ELSE block
115 : LD 1, 1(5) ; Load parameter 'n' into R1
116 : ST 1, 3(5) ; Spill left operand at depth 0
117 : LDC 1, 2(0) ; Load integer-literal into R1
118 : LD 2, 3(5) ; Restore left operand from depth 0
119 : SUB 1, 2, 1 ; left - right for equality check
120 : JEQ 1, 2(7) ; If R1 == 0, jump to true
121 : LDC 1, 0(0) ; false
122 : LDA 7, 1(7) ; skip setting true
123 : LDC 1, 1(0) ; true
124 : JEQ 1, 127(0) ; If condition is false, jump to ELSE
125 : LDC 1, 1(0) ; Load boolean-literal into R1
126 : LDA 7, 185(0) ; Skip ELSE block
127 : LD 1, 1(5) ; Load parameter 'n' into R1
128 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
129 : LDC 1, 2(0) ; Load integer-literal into R1
130 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
131 : LDA 4, 6(5) ; Compute future callee base from caller size
132 : LD 2, 4(5) ; Load staged arg 0 from caller frame
133 : ST 2, 1(4) ; Store arg 0 into callee frame
134 : LD 2, 5(5) ; Load staged arg 1 from caller frame
135 : ST 2, 2(4) ; Store arg 1 into callee frame
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return in callee frame
138 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
139 : LDA 7, 188(0) ; Call divisible
140 : LD 1, 3(5) ; Load callee result into R1
141 : LDC 2, 5(0) ; Callee frame size
142 : SUB 5, 5, 2 ; Pop callee frame
143 : ST 1, 3(5) ; Spill left operand at depth 0
144 : LD 1, 1(5) ; Load parameter 'n' into R1
145 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
146 : LDC 1, 3(0) ; Load integer-literal into R1
147 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
148 : LDA 4, 6(5) ; Compute future callee base from caller size
149 : LD 2, 4(5) ; Load staged arg 0 from caller frame
150 : ST 2, 1(4) ; Store arg 0 into callee frame
151 : LD 2, 5(5) ; Load staged arg 1 from caller frame
152 : ST 2, 2(4) ; Store arg 1 into callee frame
153 : LDA 6, 157(0) ; Return address
154 : ST 6, 0(4) ; Store return in callee frame
155 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
156 : LDA 7, 188(0) ; Call divisible
157 : LD 1, 3(5) ; Load callee result into R1
158 : LDC 2, 5(0) ; Callee frame size
159 : SUB 5, 5, 2 ; Pop callee frame
160 : LD 2, 3(5) ; Restore left operand from depth 0
161 : ADD 1, 2, 1 ; R1 = left OR right
162 : ST 1, 3(5) ; Spill left operand at depth 0
163 : LD 1, 1(5) ; Load parameter 'n' into R1
164 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
165 : LDC 1, 5(0) ; Load integer-literal into R1
166 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
167 : LDA 4, 6(5) ; Compute future callee base from caller size
168 : LD 2, 4(5) ; Load staged arg 0 from caller frame
169 : ST 2, 1(4) ; Store arg 0 into callee frame
170 : LD 2, 5(5) ; Load staged arg 1 from caller frame
171 : ST 2, 2(4) ; Store arg 1 into callee frame
172 : LDA 6, 176(0) ; Return address
173 : ST 6, 0(4) ; Store return in callee frame
174 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
175 : LDA 7, 188(0) ; Call divisible
176 : LD 1, 3(5) ; Load callee result into R1
177 : LDC 2, 5(0) ; Callee frame size
178 : SUB 5, 5, 2 ; Pop callee frame
179 : LD 2, 3(5) ; Restore left operand from depth 0
180 : ADD 1, 2, 1 ; R1 = left OR right
181 : JEQ 1, 184(0) ; If condition is false, jump to ELSE
182 : LDC 1, 0(0) ; Load boolean-literal into R1
183 : LDA 7, 185(0) ; Skip ELSE block
184 : LDC 1, 1(0) ; Load boolean-literal into R1
185 : ST 1, 2(5) ; Store function result into frame return slot
186 : LD 6, 0(5) ; Load return address
187 : LDA 7, 0(6) ; Return to caller
188 : LD 1, 1(5) ; Load parameter 'x' into R1
189 : ST 1, 4(5) ; Spill left operand at depth 0
190 : LD 1, 2(5) ; Load parameter 'y' into R1
191 : LD 2, 4(5) ; Restore left operand from depth 0
192 : DIV 1, 2, 1 ; R1 = left / right
193 : ST 1, 4(5) ; Spill left operand at depth 0
194 : LD 1, 2(5) ; Load parameter 'y' into R1
195 : LD 2, 4(5) ; Restore left operand from depth 0
196 : MUL 1, 2, 1 ; R1 = left * right
197 : ST 1, 4(5) ; Spill left operand at depth 0
198 : LD 1, 1(5) ; Load parameter 'x' into R1
199 : LD 2, 4(5) ; Restore left operand from depth 0
200 : SUB 1, 2, 1 ; left - right for equality check
201 : JEQ 1, 2(7) ; If R1 == 0, jump to true
202 : LDC 1, 0(0) ; false
203 : LDA 7, 1(7) ; skip setting true
204 : LDC 1, 1(0) ; true
205 : JEQ 1, 208(0) ; If condition is false, jump to ELSE
206 : LDC 1, 1(0) ; Load boolean-literal into R1
207 : LDA 7, 209(0) ; Skip ELSE block
208 : LDC 1, 0(0) ; Load boolean-literal into R1
209 : ST 1, 3(5) ; Store function result into frame return slot
210 : LD 6, 0(5) ; Load return address
211 : LDA 7, 0(6) ; Return to caller
