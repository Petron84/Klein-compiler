0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 3(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LDC 1, 2(0) ; Load integer-literal into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : LD 1, 1(5) ; Load parameter 'n' into R1
17 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
18 : ST 1, 2(2) ; Store argument 1 in callee
19 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
20 : LDA 6, 26(0) ; Return address
21 : ST 6, 0(2) ; Store return in callee frame
22 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
23 : LDC 3, 5(0) ; Callee frame size
24 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
25 : LDA 7, 237(0) ; Call sieveAt
26 : LD 1, 3(5) ; Load callee result into R1
27 : LDC 2, 5(0) ; Callee frame size
28 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
29 : LDC 3, 3(0) ; Caller frame size
30 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
31 : ST 1, 2(5) ; Store result into caller’s frame
32 : LD 1, 2(5) ; Load main return value into R1
33 : LD 6, 0(5) ; Load main return address
34 : LDA 7, 0(6) ; Return from main
35 : LD 1, 1(5) ; Load parameter 'num' into R1
36 : ST 1, 4(5) ; Spill left operand at depth 0
37 : LD 1, 2(5) ; Load parameter 'den' into R1
38 : LD 2, 4(5) ; Restore left operand from depth 0
39 : SUB 1, 2, 1 ; left - right for less-than check
40 : JLT 1, 2(7) ; If R1 < 0, jump to true
41 : LDC 1, 0(0) ; false
42 : LDA 7, 1(7) ; skip setting true
43 : LDC 1, 1(0) ; true
44 : JEQ 1, 47(0) ; If condition is false, jump to ELSE
45 : LD 1, 1(5) ; Load parameter 'num' into R1
46 : LDA 7, 69(0) ; Skip ELSE block
47 : LD 1, 1(5) ; Load parameter 'num' into R1
48 : ST 1, 4(5) ; Spill left operand at depth 0
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LD 2, 4(5) ; Restore left operand from depth 0
51 : SUB 1, 2, 1 ; R1 = left - right
52 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
53 : ST 1, 1(2) ; Store argument 0 in callee
54 : LD 1, 2(5) ; Load parameter 'den' into R1
55 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
56 : ST 1, 2(2) ; Store argument 1 in callee
57 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
58 : LDA 6, 64(0) ; Return address
59 : ST 6, 0(2) ; Store return in callee frame
60 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
61 : LDC 3, 5(0) ; Callee frame size
62 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
63 : LDA 7, 35(0) ; Call rem
64 : LD 1, 3(5) ; Load callee result into R1
65 : LDC 2, 5(0) ; Callee frame size
66 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
67 : LDC 3, 5(0) ; Caller frame size
68 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
69 : ST 1, 3(5) ; Store function result into frame return slot
70 : LD 6, 0(5) ; Load return address
71 : LDA 7, 0(6) ; Return to caller
72 : LD 1, 2(5) ; Load parameter 'b' into R1
73 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
74 : ST 1, 1(2) ; Store argument 0 in callee
75 : LD 1, 1(5) ; Load parameter 'a' into R1
76 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
77 : ST 1, 2(2) ; Store argument 1 in callee
78 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
79 : LDA 6, 85(0) ; Return address
80 : ST 6, 0(2) ; Store return in callee frame
81 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
82 : LDC 3, 5(0) ; Callee frame size
83 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
84 : LDA 7, 35(0) ; Call rem
85 : LD 1, 3(5) ; Load callee result into R1
86 : LDC 2, 5(0) ; Callee frame size
87 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
88 : LDC 3, 5(0) ; Caller frame size
89 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
90 : ST 1, 4(5) ; Spill left operand at depth 0
91 : LDC 1, 0(0) ; Load integer-literal into R1
92 : LD 2, 4(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; left - right for equality check
94 : JEQ 1, 2(7) ; If R1 == 0, jump to true
95 : LDC 1, 0(0) ; false
96 : LDA 7, 1(7) ; skip setting true
97 : LDC 1, 1(0) ; true
98 : ST 1, 3(5) ; Store function result into frame return slot
99 : LD 6, 0(5) ; Load return address
100 : LDA 7, 0(6) ; Return to caller
101 : LD 1, 1(5) ; Load parameter 'i' into R1
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LD 1, 2(5) ; Load parameter 'n' into R1
104 : LD 2, 4(5) ; Restore left operand from depth 0
105 : SUB 1, 2, 1 ; left - right for less-than check
106 : JLT 1, 2(7) ; If R1 < 0, jump to true
107 : LDC 1, 0(0) ; false
108 : LDA 7, 1(7) ; skip setting true
109 : LDC 1, 1(0) ; true
110 : JEQ 1, 155(0) ; If condition is false, jump to ELSE
111 : LD 1, 1(5) ; Load parameter 'i' into R1
112 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
113 : ST 1, 1(2) ; Store argument 0 in callee
114 : LD 1, 2(5) ; Load parameter 'n' into R1
115 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
116 : ST 1, 2(2) ; Store argument 1 in callee
117 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
118 : LDA 6, 124(0) ; Return address
119 : ST 6, 0(2) ; Store return in callee frame
120 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
121 : LDC 3, 5(0) ; Callee frame size
122 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
123 : LDA 7, 72(0) ; Call divides
124 : LD 1, 3(5) ; Load callee result into R1
125 : LDC 2, 5(0) ; Callee frame size
126 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
127 : LDC 3, 6(0) ; Caller frame size
128 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
129 : ST 1, 4(5) ; Spill left operand at depth 0
130 : LD 1, 1(5) ; Load parameter 'i' into R1
131 : ST 1, 5(5) ; Spill left operand at depth 1
132 : LDC 1, 1(0) ; Load integer-literal into R1
133 : LD 2, 5(5) ; Restore left operand from depth 1
134 : ADD 1, 2, 1 ; R1 = left + right
135 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
136 : ST 1, 1(2) ; Store argument 0 in callee
137 : LD 1, 2(5) ; Load parameter 'n' into R1
138 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
139 : ST 1, 2(2) ; Store argument 1 in callee
140 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
141 : LDA 6, 147(0) ; Return address
142 : ST 6, 0(2) ; Store return in callee frame
143 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
144 : LDC 3, 6(0) ; Callee frame size
145 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
146 : LDA 7, 101(0) ; Call hasDivisorFrom
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 6(0) ; Callee frame size
149 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
150 : LDC 3, 6(0) ; Caller frame size
151 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
152 : LD 2, 4(5) ; Restore left operand from depth 0
153 : ADD 1, 2, 1 ; R1 = left OR right
154 : LDA 7, 156(0) ; Skip ELSE block
155 : LDC 1, 0(0) ; Load boolean-literal into R1
156 : ST 1, 3(5) ; Store function result into frame return slot
157 : LD 6, 0(5) ; Load return address
158 : LDA 7, 0(6) ; Return to caller
159 : LDC 1, 2(0) ; Load integer-literal into R1
160 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
161 : ST 1, 1(2) ; Store argument 0 in callee
162 : LD 1, 1(5) ; Load parameter 'n' into R1
163 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
164 : ST 1, 2(2) ; Store argument 1 in callee
165 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
166 : LDA 6, 172(0) ; Return address
167 : ST 6, 0(2) ; Store return in callee frame
168 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
169 : LDC 3, 6(0) ; Callee frame size
170 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
171 : LDA 7, 101(0) ; Call hasDivisorFrom
172 : LD 1, 3(5) ; Load callee result into R1
173 : LDC 2, 6(0) ; Callee frame size
174 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
175 : LDC 3, 3(0) ; Caller frame size
176 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
177 : LDC 2, 1(0) ; Load 1 into R2
178 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
179 : ST 1, 2(5) ; Store function result into frame return slot
180 : LD 6, 0(5) ; Load return address
181 : LDA 7, 0(6) ; Return to caller
182 : LD 1, 1(5) ; Load parameter 'current' into R1
183 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
184 : ST 1, 1(2) ; Store argument 0 in callee
185 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
186 : LDA 6, 192(0) ; Return address
187 : ST 6, 0(2) ; Store return in callee frame
188 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
189 : LDC 3, 3(0) ; Callee frame size
190 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
191 : LDA 7, 159(0) ; Call isPrime
192 : LD 1, 2(5) ; Load callee result into R1
193 : LDC 2, 3(0) ; Callee frame size
194 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
195 : LDC 3, 5(0) ; Caller frame size
196 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
197 : JEQ 1, 200(0) ; If condition is false, jump to ELSE
198 : LD 1, 1(5) ; Load parameter 'current' into R1
199 : LDA 7, 201(0) ; Skip ELSE block
200 : LDC 1, 0(0) ; Load integer-literal into R1
201 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
202 : LDA 6, 208(0) ; Return address
203 : ST 6, 0(2) ; Store return address in callee frame
204 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
205 : LDC 3, 3(0) ; Callee frame size
206 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
207 : LDA 7, 10(0) ; Call built-in print
208 : LDC 2, 3(0) ; Callee frame size
209 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
210 : LDC 3, 5(0) ; Caller frame size
211 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
212 : LD 1, 1(5) ; Load parameter 'current' into R1
213 : ST 1, 4(5) ; Spill left operand at depth 0
214 : LDC 1, 1(0) ; Load integer-literal into R1
215 : LD 2, 4(5) ; Restore left operand from depth 0
216 : ADD 1, 2, 1 ; R1 = left + right
217 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
218 : ST 1, 1(2) ; Store argument 0 in callee
219 : LD 1, 2(5) ; Load parameter 'max' into R1
220 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
221 : ST 1, 2(2) ; Store argument 1 in callee
222 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
223 : LDA 6, 229(0) ; Return address
224 : ST 6, 0(2) ; Store return in callee frame
225 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
226 : LDC 3, 5(0) ; Callee frame size
227 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
228 : LDA 7, 237(0) ; Call sieveAt
229 : LD 1, 3(5) ; Load callee result into R1
230 : LDC 2, 5(0) ; Callee frame size
231 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
232 : LDC 3, 5(0) ; Caller frame size
233 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
234 : ST 1, 3(5) ; Store function result into frame return slot
235 : LD 6, 0(5) ; Load return address
236 : LDA 7, 0(6) ; Return to caller
237 : LD 1, 2(5) ; Load parameter 'max' into R1
238 : ST 1, 4(5) ; Spill left operand at depth 0
239 : LD 1, 1(5) ; Load parameter 'current' into R1
240 : LD 2, 4(5) ; Restore left operand from depth 0
241 : SUB 1, 2, 1 ; left - right for less-than check
242 : JLT 1, 2(7) ; If R1 < 0, jump to true
243 : LDC 1, 0(0) ; false
244 : LDA 7, 1(7) ; skip setting true
245 : LDC 1, 1(0) ; true
246 : JEQ 1, 249(0) ; If condition is false, jump to ELSE
247 : LDC 1, 1(0) ; Load boolean-literal into R1
248 : LDA 7, 267(0) ; Skip ELSE block
249 : LD 1, 1(5) ; Load parameter 'current' into R1
250 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
251 : ST 1, 1(2) ; Store argument 0 in callee
252 : LD 1, 2(5) ; Load parameter 'max' into R1
253 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
254 : ST 1, 2(2) ; Store argument 1 in callee
255 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
256 : LDA 6, 262(0) ; Return address
257 : ST 6, 0(2) ; Store return in callee frame
258 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
259 : LDC 3, 5(0) ; Callee frame size
260 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
261 : LDA 7, 182(0) ; Call doSieveAt
262 : LD 1, 3(5) ; Load callee result into R1
263 : LDC 2, 5(0) ; Callee frame size
264 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
265 : LDC 3, 5(0) ; Caller frame size
266 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
267 : ST 1, 3(5) ; Store function result into frame return slot
268 : LD 6, 0(5) ; Load return address
269 : LDA 7, 0(6) ; Return to caller
