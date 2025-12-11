0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
23 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
24 : LDC 1, 2147481647(0) ; Load integer-literal into R1
25 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
26 : LDC 1, 2047483747(0) ; Load integer-literal into R1
27 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
28 : LDA 4, 7(5) ; Compute future callee base from caller size
29 : LD 2, 5(5) ; Load staged arg 0 from caller frame
30 : ST 2, 1(4) ; Store arg 0 into callee frame
31 : LD 2, 6(5) ; Load staged arg 1 from caller frame
32 : ST 2, 2(4) ; Store arg 1 into callee frame
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
36 : LDA 7, 173(0) ; Call factor
37 : LD 1, 3(5) ; Load callee result into R1
38 : LDC 2, 4(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop callee frame
40 : ST 1, 3(5) ; Store result into caller’s frame
41 : LDA 7, 59(0) ; Skip ELSE block
42 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
43 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
44 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
45 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
46 : LDA 4, 7(5) ; Compute future callee base from caller size
47 : LD 2, 5(5) ; Load staged arg 0 from caller frame
48 : ST 2, 1(4) ; Store arg 0 into callee frame
49 : LD 2, 6(5) ; Load staged arg 1 from caller frame
50 : ST 2, 2(4) ; Store arg 1 into callee frame
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return in callee frame
53 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
54 : LDA 7, 173(0) ; Call factor
55 : LD 1, 3(5) ; Load callee result into R1
56 : LDC 2, 4(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop callee frame
58 : ST 1, 3(5) ; Store result into caller’s frame
59 : LD 1, 3(5) ; Load main return value into R1
60 : LD 6, 0(5) ; Load main return address
61 : LDA 7, 0(6) ; Return from main
62 : LD 1, 1(5) ; Load parameter 'a' into R1
63 : ST 1, 4(5) ; Spill left operand at depth 0
64 : LD 1, 2(5) ; Load parameter 'b' into R1
65 : LD 2, 4(5) ; Restore left operand from depth 0
66 : SUB 1, 2, 1 ; left - right for less-than check
67 : JLT 1, 2(7) ; If R1 < 0, jump to true
68 : LDC 1, 0(0) ; false
69 : LDA 7, 1(7) ; skip setting true
70 : LDC 1, 1(0) ; true
71 : JEQ 1, 74(0) ; If condition is false, jump to ELSE
72 : LD 1, 1(5) ; Load parameter 'a' into R1
73 : LDA 7, 94(0) ; Skip ELSE block
74 : LD 1, 1(5) ; Load parameter 'a' into R1
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LD 1, 2(5) ; Load parameter 'b' into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; R1 = left - right
79 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
80 : LD 1, 2(5) ; Load parameter 'b' into R1
81 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
82 : LDA 4, 7(5) ; Compute future callee base from caller size
83 : LD 2, 5(5) ; Load staged arg 0 from caller frame
84 : ST 2, 1(4) ; Store arg 0 into callee frame
85 : LD 2, 6(5) ; Load staged arg 1 from caller frame
86 : ST 2, 2(4) ; Store arg 1 into callee frame
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return in callee frame
89 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
90 : LDA 7, 62(0) ; Call remainder
91 : LD 1, 3(5) ; Load callee result into R1
92 : LDC 2, 5(0) ; Callee frame size
93 : SUB 5, 5, 2 ; Pop callee frame
94 : ST 1, 3(5) ; Store function result into frame return slot
95 : LD 6, 0(5) ; Load return address
96 : LDA 7, 0(6) ; Return to caller
97 : LD 1, 2(5) ; Load parameter 'b' into R1
98 : ST 1, 4(5) ; Spill left operand at depth 0
99 : LDC 1, 0(0) ; Load integer-literal into R1
100 : LD 2, 4(5) ; Restore left operand from depth 0
101 : SUB 1, 2, 1 ; left - right for equality check
102 : JEQ 1, 2(7) ; If R1 == 0, jump to true
103 : LDC 1, 0(0) ; false
104 : LDA 7, 1(7) ; skip setting true
105 : LDC 1, 1(0) ; true
106 : JEQ 1, 109(0) ; If condition is false, jump to ELSE
107 : LD 1, 1(5) ; Load parameter 'a' into R1
108 : LDA 7, 140(0) ; Skip ELSE block
109 : LD 1, 2(5) ; Load parameter 'b' into R1
110 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
111 : LD 1, 1(5) ; Load parameter 'a' into R1
112 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
113 : LD 1, 2(5) ; Load parameter 'b' into R1
114 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
115 : LDA 4, 7(5) ; Compute future callee base from caller size
116 : LD 2, 5(5) ; Load staged arg 0 from caller frame
117 : ST 2, 1(4) ; Store arg 0 into callee frame
118 : LD 2, 6(5) ; Load staged arg 1 from caller frame
119 : ST 2, 2(4) ; Store arg 1 into callee frame
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return in callee frame
122 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
123 : LDA 7, 62(0) ; Call remainder
124 : LD 1, 3(5) ; Load callee result into R1
125 : LDC 2, 5(0) ; Callee frame size
126 : SUB 5, 5, 2 ; Pop callee frame
127 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
128 : LDA 4, 7(5) ; Compute future callee base from caller size
129 : LD 2, 5(5) ; Load staged arg 0 from caller frame
130 : ST 2, 1(4) ; Store arg 0 into callee frame
131 : LD 2, 6(5) ; Load staged arg 1 from caller frame
132 : ST 2, 2(4) ; Store arg 1 into callee frame
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return in callee frame
135 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
136 : LDA 7, 97(0) ; Call gcd
137 : LD 1, 3(5) ; Load callee result into R1
138 : LDC 2, 5(0) ; Callee frame size
139 : SUB 5, 5, 2 ; Pop callee frame
140 : ST 1, 3(5) ; Store function result into frame return slot
141 : LD 6, 0(5) ; Load return address
142 : LDA 7, 0(6) ; Return to caller
143 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
144 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
145 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
146 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
147 : LDA 4, 7(5) ; Compute future callee base from caller size
148 : LD 2, 5(5) ; Load staged arg 0 from caller frame
149 : ST 2, 1(4) ; Store arg 0 into callee frame
150 : LDA 6, 154(0) ; Return address
151 : ST 6, 0(4) ; Store return in callee frame
152 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
153 : LDA 7, 11(0) ; Call built-in print
154 : LDC 2, 3(0) ; Callee frame size
155 : SUB 5, 5, 2 ; Pop callee frame
156 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
157 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
158 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
159 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
160 : LDA 4, 7(5) ; Compute future callee base from caller size
161 : LD 2, 5(5) ; Load staged arg 0 from caller frame
162 : ST 2, 1(4) ; Store arg 0 into callee frame
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 11(0) ; Call built-in print
167 : LDC 2, 3(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop callee frame
169 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
170 : ST 1, 4(5) ; Store function result into frame return slot
171 : LD 6, 0(5) ; Load return address
172 : LDA 7, 0(6) ; Return to caller
173 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
174 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
175 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
176 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
177 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
178 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
179 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
180 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
181 : LDA 4, 7(5) ; Compute future callee base from caller size
182 : LD 2, 4(5) ; Load staged arg 0 from caller frame
183 : ST 2, 1(4) ; Store arg 0 into callee frame
184 : LD 2, 5(5) ; Load staged arg 1 from caller frame
185 : ST 2, 2(4) ; Store arg 1 into callee frame
186 : LDA 6, 190(0) ; Return address
187 : ST 6, 0(4) ; Store return in callee frame
188 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
189 : LDA 7, 97(0) ; Call gcd
190 : LD 1, 3(5) ; Load callee result into R1
191 : LDC 2, 5(0) ; Callee frame size
192 : SUB 5, 5, 2 ; Pop callee frame
193 : ST 1, 6(5) ; Stage arg 2 in caller frame outgoing area
194 : LDA 4, 7(5) ; Compute future callee base from caller size
195 : LD 2, 4(5) ; Load staged arg 0 from caller frame
196 : ST 2, 1(4) ; Store arg 0 into callee frame
197 : LD 2, 5(5) ; Load staged arg 1 from caller frame
198 : ST 2, 2(4) ; Store arg 1 into callee frame
199 : LD 2, 6(5) ; Load staged arg 2 from caller frame
200 : ST 2, 3(4) ; Store arg 2 into callee frame
201 : LDA 6, 205(0) ; Return address
202 : ST 6, 0(4) ; Store return in callee frame
203 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
204 : LDA 7, 143(0) ; Call displayAndPrint
205 : LD 1, 4(5) ; Load callee result into R1
206 : LDC 2, 5(0) ; Callee frame size
207 : SUB 5, 5, 2 ; Pop callee frame
208 : ST 1, 3(5) ; Store function result into frame return slot
209 : LD 6, 0(5) ; Load return address
210 : LDA 7, 0(6) ; Return to caller
