0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
14 : LDC 1, 1(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
16 : LDA 4, 5(5) ; Compute future callee base from caller size
17 : LD 2, 3(5) ; Load staged arg 0 from caller frame
18 : ST 2, 1(4) ; Store arg 0 into callee frame
19 : LD 2, 4(5) ; Load staged arg 1 from caller frame
20 : ST 2, 2(4) ; Store arg 1 into callee frame
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 183(0) ; Call loopToN
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 5(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 2(5) ; Store result into caller’s frame
29 : LD 1, 2(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 1(5) ; Load parameter 'num' into R1
33 : ST 1, 4(5) ; Spill left operand at depth 0
34 : LD 1, 2(5) ; Load parameter 'den' into R1
35 : LD 2, 4(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for less-than check
37 : JLT 1, 2(7) ; If R1 < 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : LDA 7, 64(0) ; Skip ELSE block
44 : LD 1, 1(5) ; Load parameter 'num' into R1
45 : ST 1, 4(5) ; Spill left operand at depth 0
46 : LD 1, 2(5) ; Load parameter 'den' into R1
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; R1 = left - right
49 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
50 : LD 1, 2(5) ; Load parameter 'den' into R1
51 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
52 : LDA 4, 7(5) ; Compute future callee base from caller size
53 : LD 2, 5(5) ; Load staged arg 0 from caller frame
54 : ST 2, 1(4) ; Store arg 0 into callee frame
55 : LD 2, 6(5) ; Load staged arg 1 from caller frame
56 : ST 2, 2(4) ; Store arg 1 into callee frame
57 : LDA 6, 61(0) ; Return address
58 : ST 6, 0(4) ; Store return in callee frame
59 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
60 : LDA 7, 32(0) ; Call remainder
61 : LD 1, 3(5) ; Load callee result into R1
62 : LDC 2, 5(0) ; Callee frame size
63 : SUB 5, 5, 2 ; Pop callee frame
64 : ST 1, 3(5) ; Store function result into frame return slot
65 : LD 6, 0(5) ; Load return address
66 : LDA 7, 0(6) ; Return to caller
67 : LD 1, 2(5) ; Load parameter 'b' into R1
68 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
71 : LDA 4, 7(5) ; Compute future callee base from caller size
72 : LD 2, 5(5) ; Load staged arg 0 from caller frame
73 : ST 2, 1(4) ; Store arg 0 into callee frame
74 : LD 2, 6(5) ; Load staged arg 1 from caller frame
75 : ST 2, 2(4) ; Store arg 1 into callee frame
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
79 : LDA 7, 32(0) ; Call remainder
80 : LD 1, 3(5) ; Load callee result into R1
81 : LDC 2, 5(0) ; Callee frame size
82 : SUB 5, 5, 2 ; Pop callee frame
83 : ST 1, 4(5) ; Spill left operand at depth 0
84 : LDC 1, 0(0) ; Load integer-literal into R1
85 : LD 2, 4(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; left - right for equality check
87 : JEQ 1, 2(7) ; If R1 == 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : ST 1, 3(5) ; Store function result into frame return slot
92 : LD 6, 0(5) ; Load return address
93 : LDA 7, 0(6) ; Return to caller
94 : LDA 4, 7(5) ; Compute future callee base from caller size
95 : LD 2, 5(5) ; Load staged arg 0 from caller frame
96 : ST 2, 1(4) ; Store arg 0 into callee frame
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(4) ; Store return in callee frame
99 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
100 : LDA 7, 9(0) ; Call built-in print
101 : LDC 2, 3(0) ; Callee frame size
102 : SUB 5, 5, 2 ; Pop callee frame
103 : LD 1, 1(5) ; Load parameter 'n' into R1
104 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
105 : LD 1, 2(5) ; Load parameter 'current' into R1
106 : ST 1, 4(5) ; Spill left operand at depth 0
107 : LDC 1, 1(0) ; Load integer-literal into R1
108 : LD 2, 4(5) ; Restore left operand from depth 0
109 : ADD 1, 2, 1 ; R1 = left + right
110 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
111 : LDA 4, 7(5) ; Compute future callee base from caller size
112 : LD 2, 5(5) ; Load staged arg 0 from caller frame
113 : ST 2, 1(4) ; Store arg 0 into callee frame
114 : LD 2, 6(5) ; Load staged arg 1 from caller frame
115 : ST 2, 2(4) ; Store arg 1 into callee frame
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return in callee frame
118 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
119 : LDA 7, 183(0) ; Call loopToN
120 : LD 1, 3(5) ; Load callee result into R1
121 : LDC 2, 5(0) ; Callee frame size
122 : SUB 5, 5, 2 ; Pop callee frame
123 : ST 1, 3(5) ; Store function result into frame return slot
124 : LD 6, 0(5) ; Load return address
125 : LDA 7, 0(6) ; Return to caller
126 : LD 1, 2(5) ; Load parameter 'current' into R1
127 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
128 : LD 1, 1(5) ; Load parameter 'n' into R1
129 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
130 : LDA 4, 7(5) ; Compute future callee base from caller size
131 : LD 2, 5(5) ; Load staged arg 0 from caller frame
132 : ST 2, 1(4) ; Store arg 0 into callee frame
133 : LD 2, 6(5) ; Load staged arg 1 from caller frame
134 : ST 2, 2(4) ; Store arg 1 into callee frame
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return in callee frame
137 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
138 : LDA 7, 67(0) ; Call divides
139 : LD 1, 3(5) ; Load callee result into R1
140 : LDC 2, 5(0) ; Callee frame size
141 : SUB 5, 5, 2 ; Pop callee frame
142 : JEQ 1, 160(0) ; If condition is false, jump to ELSE
143 : LD 1, 1(5) ; Load parameter 'n' into R1
144 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
145 : LD 1, 2(5) ; Load parameter 'current' into R1
146 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
147 : LDA 4, 7(5) ; Compute future callee base from caller size
148 : LD 2, 5(5) ; Load staged arg 0 from caller frame
149 : ST 2, 1(4) ; Store arg 0 into callee frame
150 : LD 2, 6(5) ; Load staged arg 1 from caller frame
151 : ST 2, 2(4) ; Store arg 1 into callee frame
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return in callee frame
154 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
155 : LDA 7, 94(0) ; Call printAndLoop
156 : LD 1, 3(5) ; Load callee result into R1
157 : LDC 2, 5(0) ; Callee frame size
158 : SUB 5, 5, 2 ; Pop callee frame
159 : LDA 7, 180(0) ; Skip ELSE block
160 : LD 1, 1(5) ; Load parameter 'n' into R1
161 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
162 : LD 1, 2(5) ; Load parameter 'current' into R1
163 : ST 1, 4(5) ; Spill left operand at depth 0
164 : LDC 1, 1(0) ; Load integer-literal into R1
165 : LD 2, 4(5) ; Restore left operand from depth 0
166 : ADD 1, 2, 1 ; R1 = left + right
167 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
168 : LDA 4, 7(5) ; Compute future callee base from caller size
169 : LD 2, 5(5) ; Load staged arg 0 from caller frame
170 : ST 2, 1(4) ; Store arg 0 into callee frame
171 : LD 2, 6(5) ; Load staged arg 1 from caller frame
172 : ST 2, 2(4) ; Store arg 1 into callee frame
173 : LDA 6, 177(0) ; Return address
174 : ST 6, 0(4) ; Store return in callee frame
175 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
176 : LDA 7, 183(0) ; Call loopToN
177 : LD 1, 3(5) ; Load callee result into R1
178 : LDC 2, 5(0) ; Callee frame size
179 : SUB 5, 5, 2 ; Pop callee frame
180 : ST 1, 3(5) ; Store function result into frame return slot
181 : LD 6, 0(5) ; Load return address
182 : LDA 7, 0(6) ; Return to caller
183 : LD 1, 1(5) ; Load parameter 'n' into R1
184 : ST 1, 4(5) ; Spill left operand at depth 0
185 : LD 1, 2(5) ; Load parameter 'current' into R1
186 : LD 2, 4(5) ; Restore left operand from depth 0
187 : SUB 1, 2, 1 ; left - right for equality check
188 : JEQ 1, 2(7) ; If R1 == 0, jump to true
189 : LDC 1, 0(0) ; false
190 : LDA 7, 1(7) ; skip setting true
191 : LDC 1, 1(0) ; true
192 : JEQ 1, 195(0) ; If condition is false, jump to ELSE
193 : LD 1, 1(5) ; Load parameter 'n' into R1
194 : LDA 7, 211(0) ; Skip ELSE block
195 : LD 1, 1(5) ; Load parameter 'n' into R1
196 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
197 : LD 1, 2(5) ; Load parameter 'current' into R1
198 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
199 : LDA 4, 7(5) ; Compute future callee base from caller size
200 : LD 2, 5(5) ; Load staged arg 0 from caller frame
201 : ST 2, 1(4) ; Store arg 0 into callee frame
202 : LD 2, 6(5) ; Load staged arg 1 from caller frame
203 : ST 2, 2(4) ; Store arg 1 into callee frame
204 : LDA 6, 208(0) ; Return address
205 : ST 6, 0(4) ; Store return in callee frame
206 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
207 : LDA 7, 126(0) ; Call testAndLoop
208 : LD 1, 3(5) ; Load callee result into R1
209 : LDC 2, 5(0) ; Callee frame size
210 : SUB 5, 5, 2 ; Pop callee frame
211 : ST 1, 3(5) ; Store function result into frame return slot
212 : LD 6, 0(5) ; Load return address
213 : LDA 7, 0(6) ; Return to caller
