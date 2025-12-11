0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 5(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LD 1, 1(5) ; Load parameter 'n' into R1
18 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
19 : LDA 4, 5(5) ; Callee base for arg copy
20 : LD 1, 3(5) ; Load staged arg 1 from caller temp
21 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
22 : LDA 4, 5(5) ; Callee base for call
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
26 : LDA 7, 230(0) ; Call sieveAt
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 5(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : ST 1, 2(5) ; Store result into caller’s frame
31 : LD 1, 2(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load main return address
33 : LDA 7, 0(6) ; Return from main
34 : LD 1, 1(5) ; Load parameter 'num' into R1
35 : ST 1, 4(5) ; Spill left operand at depth 0
36 : LD 1, 2(5) ; Load parameter 'den' into R1
37 : LD 2, 4(5) ; Restore left operand from depth 0
38 : SUB 1, 2, 1 ; left - right for less-than check
39 : JLT 1, 2(7) ; If R1 < 0, jump to true
40 : LDC 1, 0(0) ; false
41 : LDA 7, 1(7) ; skip setting true
42 : LDC 1, 1(0) ; true
43 : JEQ 1, 46(0) ; If condition is false, jump to ELSE
44 : LD 1, 1(5) ; Load parameter 'num' into R1
45 : LDA 7, 68(0) ; Skip ELSE block
46 : LD 1, 1(5) ; Load parameter 'num' into R1
47 : ST 1, 4(5) ; Spill left operand at depth 0
48 : LD 1, 2(5) ; Load parameter 'den' into R1
49 : LD 2, 4(5) ; Restore left operand from depth 0
50 : SUB 1, 2, 1 ; R1 = left - right
51 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
52 : LDA 4, 5(5) ; Callee base for arg copy
53 : LD 1, 4(5) ; Load staged arg 0 from caller temp
54 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
55 : LD 1, 2(5) ; Load parameter 'den' into R1
56 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
57 : LDA 4, 5(5) ; Callee base for arg copy
58 : LD 1, 4(5) ; Load staged arg 1 from caller temp
59 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
60 : LDA 4, 5(5) ; Callee base for call
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return in callee frame
63 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
64 : LDA 7, 34(0) ; Call rem
65 : LD 1, 3(5) ; Load callee result into R1
66 : LDC 2, 5(0) ; Callee frame size
67 : SUB 5, 5, 2 ; Pop callee frame
68 : ST 1, 3(5) ; Store function result into frame return slot
69 : LD 6, 0(5) ; Load return address
70 : LDA 7, 0(6) ; Return to caller
71 : LD 1, 2(5) ; Load parameter 'b' into R1
72 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
73 : LDA 4, 5(5) ; Callee base for arg copy
74 : LD 1, 4(5) ; Load staged arg 0 from caller temp
75 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
76 : LD 1, 1(5) ; Load parameter 'a' into R1
77 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
78 : LDA 4, 5(5) ; Callee base for arg copy
79 : LD 1, 4(5) ; Load staged arg 1 from caller temp
80 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
81 : LDA 4, 5(5) ; Callee base for call
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
85 : LDA 7, 34(0) ; Call rem
86 : LD 1, 3(5) ; Load callee result into R1
87 : LDC 2, 5(0) ; Callee frame size
88 : SUB 5, 5, 2 ; Pop callee frame
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LDC 1, 0(0) ; Load integer-literal into R1
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; left - right for equality check
93 : JEQ 1, 2(7) ; If R1 == 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : ST 1, 3(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
100 : LD 1, 1(5) ; Load parameter 'i' into R1
101 : ST 1, 4(5) ; Spill left operand at depth 0
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : LD 2, 4(5) ; Restore left operand from depth 0
104 : SUB 1, 2, 1 ; left - right for less-than check
105 : JLT 1, 2(7) ; If R1 < 0, jump to true
106 : LDC 1, 0(0) ; false
107 : LDA 7, 1(7) ; skip setting true
108 : LDC 1, 1(0) ; true
109 : JEQ 1, 154(0) ; If condition is false, jump to ELSE
110 : LD 1, 1(5) ; Load parameter 'i' into R1
111 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
112 : LDA 4, 5(5) ; Callee base for arg copy
113 : LD 1, 4(5) ; Load staged arg 0 from caller temp
114 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
115 : LD 1, 2(5) ; Load parameter 'n' into R1
116 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
117 : LDA 4, 5(5) ; Callee base for arg copy
118 : LD 1, 4(5) ; Load staged arg 1 from caller temp
119 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
120 : LDA 4, 5(5) ; Callee base for call
121 : LDA 6, 125(0) ; Return address
122 : ST 6, 0(4) ; Store return in callee frame
123 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
124 : LDA 7, 71(0) ; Call divides
125 : LD 1, 3(5) ; Load callee result into R1
126 : LDC 2, 5(0) ; Callee frame size
127 : SUB 5, 5, 2 ; Pop callee frame
128 : ST 1, 4(5) ; Spill left operand at depth 0
129 : LD 1, 1(5) ; Load parameter 'i' into R1
130 : ST 1, 5(5) ; Spill left operand at depth 1
131 : LDC 1, 1(0) ; Load integer-literal into R1
132 : LD 2, 5(5) ; Restore left operand from depth 1
133 : ADD 1, 2, 1 ; R1 = left + right
134 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
135 : LDA 4, 6(5) ; Callee base for arg copy
136 : LD 1, 4(5) ; Load staged arg 0 from caller temp
137 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
138 : LD 1, 2(5) ; Load parameter 'n' into R1
139 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
140 : LDA 4, 6(5) ; Callee base for arg copy
141 : LD 1, 4(5) ; Load staged arg 1 from caller temp
142 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
143 : LDA 4, 6(5) ; Callee base for call
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return in callee frame
146 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
147 : LDA 7, 100(0) ; Call hasDivisorFrom
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 6(0) ; Callee frame size
150 : SUB 5, 5, 2 ; Pop callee frame
151 : LD 2, 4(5) ; Restore left operand from depth 0
152 : ADD 1, 2, 1 ; R1 = left OR right
153 : LDA 7, 155(0) ; Skip ELSE block
154 : LDC 1, 0(0) ; Load boolean-literal into R1
155 : ST 1, 3(5) ; Store function result into frame return slot
156 : LD 6, 0(5) ; Load return address
157 : LDA 7, 0(6) ; Return to caller
158 : LDC 1, 2(0) ; Load integer-literal into R1
159 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
160 : LDA 4, 6(5) ; Callee base for arg copy
161 : LD 1, 3(5) ; Load staged arg 0 from caller temp
162 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
163 : LD 1, 1(5) ; Load parameter 'n' into R1
164 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
165 : LDA 4, 6(5) ; Callee base for arg copy
166 : LD 1, 3(5) ; Load staged arg 1 from caller temp
167 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
168 : LDA 4, 6(5) ; Callee base for call
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return in callee frame
171 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
172 : LDA 7, 100(0) ; Call hasDivisorFrom
173 : LD 1, 3(5) ; Load callee result into R1
174 : LDC 2, 6(0) ; Callee frame size
175 : SUB 5, 5, 2 ; Pop callee frame
176 : LDC 2, 1(0) ; Load 1 into R2
177 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
178 : ST 1, 2(5) ; Store function result into frame return slot
179 : LD 6, 0(5) ; Load return address
180 : LDA 7, 0(6) ; Return to caller
181 : LD 1, 1(5) ; Load parameter 'current' into R1
182 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
183 : LDA 4, 3(5) ; Callee base for arg copy
184 : LD 1, 4(5) ; Load staged arg 0 from caller temp
185 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
186 : LDA 4, 3(5) ; Callee base for call
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
190 : LDA 7, 158(0) ; Call isPrime
191 : LD 1, 2(5) ; Load callee result into R1
192 : LDC 2, 3(0) ; Callee frame size
193 : SUB 5, 5, 2 ; Pop callee frame
194 : JEQ 1, 197(0) ; If condition is false, jump to ELSE
195 : LD 1, 1(5) ; Load parameter 'current' into R1
196 : LDA 7, 198(0) ; Skip ELSE block
197 : LDC 1, 0(0) ; Load integer-literal into R1
198 : LDA 4, 3(5) ; Callee base for built-in print
199 : LDA 6, 203(0) ; Return address
200 : ST 6, 0(4) ; Store return address in callee frame
201 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
202 : LDA 7, 9(0) ; Call built-in print
203 : LDC 2, 3(0) ; Callee frame size (print)
204 : SUB 5, 5, 2 ; Pop back to caller
205 : LD 1, 1(5) ; Load parameter 'current' into R1
206 : ST 1, 4(5) ; Spill left operand at depth 0
207 : LDC 1, 1(0) ; Load integer-literal into R1
208 : LD 2, 4(5) ; Restore left operand from depth 0
209 : ADD 1, 2, 1 ; R1 = left + right
210 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
211 : LDA 4, 5(5) ; Callee base for arg copy
212 : LD 1, 4(5) ; Load staged arg 0 from caller temp
213 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
214 : LD 1, 2(5) ; Load parameter 'max' into R1
215 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
216 : LDA 4, 5(5) ; Callee base for arg copy
217 : LD 1, 4(5) ; Load staged arg 1 from caller temp
218 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
219 : LDA 4, 5(5) ; Callee base for call
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return in callee frame
222 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
223 : LDA 7, 230(0) ; Call sieveAt
224 : LD 1, 3(5) ; Load callee result into R1
225 : LDC 2, 5(0) ; Callee frame size
226 : SUB 5, 5, 2 ; Pop callee frame
227 : ST 1, 3(5) ; Store function result into frame return slot
228 : LD 6, 0(5) ; Load return address
229 : LDA 7, 0(6) ; Return to caller
230 : LD 1, 2(5) ; Load parameter 'max' into R1
231 : ST 1, 4(5) ; Spill left operand at depth 0
232 : LD 1, 1(5) ; Load parameter 'current' into R1
233 : LD 2, 4(5) ; Restore left operand from depth 0
234 : SUB 1, 2, 1 ; left - right for less-than check
235 : JLT 1, 2(7) ; If R1 < 0, jump to true
236 : LDC 1, 0(0) ; false
237 : LDA 7, 1(7) ; skip setting true
238 : LDC 1, 1(0) ; true
239 : JEQ 1, 242(0) ; If condition is false, jump to ELSE
240 : LDC 1, 1(0) ; Load boolean-literal into R1
241 : LDA 7, 260(0) ; Skip ELSE block
242 : LD 1, 1(5) ; Load parameter 'current' into R1
243 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
244 : LDA 4, 5(5) ; Callee base for arg copy
245 : LD 1, 4(5) ; Load staged arg 0 from caller temp
246 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
247 : LD 1, 2(5) ; Load parameter 'max' into R1
248 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
249 : LDA 4, 5(5) ; Callee base for arg copy
250 : LD 1, 4(5) ; Load staged arg 1 from caller temp
251 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
252 : LDA 4, 5(5) ; Callee base for call
253 : LDA 6, 257(0) ; Return address
254 : ST 6, 0(4) ; Store return in callee frame
255 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
256 : LDA 7, 181(0) ; Call doSieveAt
257 : LD 1, 3(5) ; Load callee result into R1
258 : LDC 2, 5(0) ; Callee frame size
259 : SUB 5, 5, 2 ; Pop callee frame
260 : ST 1, 3(5) ; Store function result into frame return slot
261 : LD 6, 0(5) ; Load return address
262 : LDA 7, 0(6) ; Return to caller
