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
12 : LDC 1, 2(0) ; Load integer-literal into R1
13 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
14 : LDC 1, 40(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
16 : LDA 4, 5(5) ; Compute future callee base from caller size
17 : LD 2, 3(5) ; Load staged arg 0 from caller frame
18 : ST 2, 1(4) ; Store arg 0 into callee frame
19 : LD 2, 4(5) ; Load staged arg 1 from caller frame
20 : ST 2, 2(4) ; Store arg 1 into callee frame
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 218(0) ; Call sieveAt
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
60 : LDA 7, 32(0) ; Call rem
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
79 : LDA 7, 32(0) ; Call rem
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
94 : LD 1, 1(5) ; Load parameter 'i' into R1
95 : ST 1, 4(5) ; Spill left operand at depth 0
96 : LD 1, 2(5) ; Load parameter 'n' into R1
97 : LD 2, 4(5) ; Restore left operand from depth 0
98 : SUB 1, 2, 1 ; left - right for less-than check
99 : JLT 1, 2(7) ; If R1 < 0, jump to true
100 : LDC 1, 0(0) ; false
101 : LDA 7, 1(7) ; skip setting true
102 : LDC 1, 1(0) ; true
103 : JEQ 1, 144(0) ; If condition is false, jump to ELSE
104 : LD 1, 1(5) ; Load parameter 'i' into R1
105 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
106 : LD 1, 2(5) ; Load parameter 'n' into R1
107 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
108 : LDA 4, 8(5) ; Compute future callee base from caller size
109 : LD 2, 6(5) ; Load staged arg 0 from caller frame
110 : ST 2, 1(4) ; Store arg 0 into callee frame
111 : LD 2, 7(5) ; Load staged arg 1 from caller frame
112 : ST 2, 2(4) ; Store arg 1 into callee frame
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 67(0) ; Call divides
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 5(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : ST 1, 4(5) ; Spill left operand at depth 0
121 : LD 1, 1(5) ; Load parameter 'i' into R1
122 : ST 1, 5(5) ; Spill left operand at depth 1
123 : LDC 1, 1(0) ; Load integer-literal into R1
124 : LD 2, 5(5) ; Restore left operand from depth 1
125 : ADD 1, 2, 1 ; R1 = left + right
126 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
127 : LD 1, 2(5) ; Load parameter 'n' into R1
128 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
129 : LDA 4, 8(5) ; Compute future callee base from caller size
130 : LD 2, 6(5) ; Load staged arg 0 from caller frame
131 : ST 2, 1(4) ; Store arg 0 into callee frame
132 : LD 2, 7(5) ; Load staged arg 1 from caller frame
133 : ST 2, 2(4) ; Store arg 1 into callee frame
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 94(0) ; Call hasDivisorFrom
138 : LD 1, 3(5) ; Load callee result into R1
139 : LDC 2, 6(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : LD 2, 4(5) ; Restore left operand from depth 0
142 : ADD 1, 2, 1 ; R1 = left OR right
143 : LDA 7, 145(0) ; Skip ELSE block
144 : LDC 1, 0(0) ; Load boolean-literal into R1
145 : ST 1, 3(5) ; Store function result into frame return slot
146 : LD 6, 0(5) ; Load return address
147 : LDA 7, 0(6) ; Return to caller
148 : LDC 1, 2(0) ; Load integer-literal into R1
149 : ST 1, 3(5) ; Stage arg 0 in caller frame outgoing area
150 : LD 1, 1(5) ; Load parameter 'n' into R1
151 : ST 1, 4(5) ; Stage arg 1 in caller frame outgoing area
152 : LDA 4, 5(5) ; Compute future callee base from caller size
153 : LD 2, 3(5) ; Load staged arg 0 from caller frame
154 : ST 2, 1(4) ; Store arg 0 into callee frame
155 : LD 2, 4(5) ; Load staged arg 1 from caller frame
156 : ST 2, 2(4) ; Store arg 1 into callee frame
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
160 : LDA 7, 94(0) ; Call hasDivisorFrom
161 : LD 1, 3(5) ; Load callee result into R1
162 : LDC 2, 6(0) ; Callee frame size
163 : SUB 5, 5, 2 ; Pop callee frame
164 : LDC 2, 1(0) ; Load 1 into R2
165 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
166 : ST 1, 2(5) ; Store function result into frame return slot
167 : LD 6, 0(5) ; Load return address
168 : LDA 7, 0(6) ; Return to caller
169 : LD 1, 1(5) ; Load parameter 'current' into R1
170 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
171 : LDA 4, 8(5) ; Compute future callee base from caller size
172 : LD 2, 5(5) ; Load staged arg 0 from caller frame
173 : ST 2, 1(4) ; Store arg 0 into callee frame
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return in callee frame
176 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
177 : LDA 7, 148(0) ; Call isPrime
178 : LD 1, 2(5) ; Load callee result into R1
179 : LDC 2, 3(0) ; Callee frame size
180 : SUB 5, 5, 2 ; Pop callee frame
181 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
182 : LD 1, 1(5) ; Load parameter 'current' into R1
183 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
184 : LDC 1, 0(0) ; Load integer-literal into R1
185 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
186 : LDA 4, 8(5) ; Compute future callee base from caller size
187 : LD 2, 5(5) ; Load staged arg 0 from caller frame
188 : ST 2, 1(4) ; Store arg 0 into callee frame
189 : LDA 6, 193(0) ; Return address
190 : ST 6, 0(4) ; Store return in callee frame
191 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
192 : LDA 7, 9(0) ; Call built-in print
193 : LDC 2, 3(0) ; Callee frame size
194 : SUB 5, 5, 2 ; Pop callee frame
195 : LD 1, 1(5) ; Load parameter 'current' into R1
196 : ST 1, 4(5) ; Spill left operand at depth 0
197 : LDC 1, 1(0) ; Load integer-literal into R1
198 : LD 2, 4(5) ; Restore left operand from depth 0
199 : ADD 1, 2, 1 ; R1 = left + right
200 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
201 : LD 1, 2(5) ; Load parameter 'max' into R1
202 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
203 : LDA 4, 8(5) ; Compute future callee base from caller size
204 : LD 2, 5(5) ; Load staged arg 0 from caller frame
205 : ST 2, 1(4) ; Store arg 0 into callee frame
206 : LD 2, 6(5) ; Load staged arg 1 from caller frame
207 : ST 2, 2(4) ; Store arg 1 into callee frame
208 : LDA 6, 212(0) ; Return address
209 : ST 6, 0(4) ; Store return in callee frame
210 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
211 : LDA 7, 218(0) ; Call sieveAt
212 : LD 1, 3(5) ; Load callee result into R1
213 : LDC 2, 5(0) ; Callee frame size
214 : SUB 5, 5, 2 ; Pop callee frame
215 : ST 1, 3(5) ; Store function result into frame return slot
216 : LD 6, 0(5) ; Load return address
217 : LDA 7, 0(6) ; Return to caller
218 : LD 1, 2(5) ; Load parameter 'max' into R1
219 : ST 1, 4(5) ; Spill left operand at depth 0
220 : LD 1, 1(5) ; Load parameter 'current' into R1
221 : LD 2, 4(5) ; Restore left operand from depth 0
222 : SUB 1, 2, 1 ; left - right for less-than check
223 : JLT 1, 2(7) ; If R1 < 0, jump to true
224 : LDC 1, 0(0) ; false
225 : LDA 7, 1(7) ; skip setting true
226 : LDC 1, 1(0) ; true
227 : JEQ 1, 230(0) ; If condition is false, jump to ELSE
228 : LDC 1, 1(0) ; Load boolean-literal into R1
229 : LDA 7, 246(0) ; Skip ELSE block
230 : LD 1, 1(5) ; Load parameter 'current' into R1
231 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
232 : LD 1, 2(5) ; Load parameter 'max' into R1
233 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
234 : LDA 4, 7(5) ; Compute future callee base from caller size
235 : LD 2, 5(5) ; Load staged arg 0 from caller frame
236 : ST 2, 1(4) ; Store arg 0 into callee frame
237 : LD 2, 6(5) ; Load staged arg 1 from caller frame
238 : ST 2, 2(4) ; Store arg 1 into callee frame
239 : LDA 6, 243(0) ; Return address
240 : ST 6, 0(4) ; Store return in callee frame
241 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
242 : LDA 7, 169(0) ; Call doSieveAt
243 : LD 1, 3(5) ; Load callee result into R1
244 : LDC 2, 5(0) ; Callee frame size
245 : SUB 5, 5, 2 ; Pop callee frame
246 : ST 1, 3(5) ; Store function result into frame return slot
247 : LD 6, 0(5) ; Load return address
248 : LDA 7, 0(6) ; Return to caller
