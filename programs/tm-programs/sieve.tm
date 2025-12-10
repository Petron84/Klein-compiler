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
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LD 1, 1(5) ; Load parameter 'n' into R1
16 : LDA 4, 3(5) ; Recompute callee base from caller size
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDA 4, 3(5) ; Recompute callee base from caller size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 203(0) ; Call sieveAt
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
28 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
29 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
30 : LD 1, 2(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load root return address from main frame
32 : LDA 7, 0(6) ; Return from main to runtime epilogue
33 : LD 1, 1(5) ; Load parameter 'num' into R1
34 : ST 1, 4(5) ; Spill left operand at depth 0
35 : LD 1, 2(5) ; Load parameter 'den' into R1
36 : LD 2, 4(5) ; Restore left operand from depth 0
37 : SUB 1, 2, 1 ; left - right for less-than check
38 : JLT 1, 2(7) ; If R1 < 0, jump to true
39 : LDC 1, 0(0) ; false
40 : LDA 7, 1(7) ; skip setting true
41 : LDC 1, 1(0) ; true
42 : JEQ 1, 45(0) ; If condition is false, jump to ELSE
43 : LD 1, 1(5) ; Load parameter 'num' into R1
44 : LDA 7, 63(0) ; Skip ELSE block
45 : LD 1, 1(5) ; Load parameter 'num' into R1
46 : ST 1, 4(5) ; Spill left operand at depth 0
47 : LD 1, 2(5) ; Load parameter 'den' into R1
48 : LD 2, 4(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; R1 = left - right
50 : LDA 4, 5(5) ; Recompute callee base from caller size
51 : ST 1, 1(4) ; Store argument 0 in callee frame
52 : LD 1, 2(5) ; Load parameter 'den' into R1
53 : LDA 4, 5(5) ; Recompute callee base from caller size
54 : ST 1, 2(4) ; Store argument 1 in callee frame
55 : LDA 4, 5(5) ; Recompute callee base from caller size
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return address into callee frame
58 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
59 : LDA 7, 33(0) ; Call rem
60 : LD 1, 3(5) ; Load callee result into R1
61 : LDC 2, 5(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop back to caller
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LD 1, 2(5) ; Load parameter 'b' into R1
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : ST 1, 1(4) ; Store argument 0 in callee frame
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : LDA 4, 5(5) ; Recompute callee base from caller size
71 : ST 1, 2(4) ; Store argument 1 in callee frame
72 : LDA 4, 5(5) ; Recompute callee base from caller size
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return address into callee frame
75 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
76 : LDA 7, 33(0) ; Call rem
77 : LD 1, 3(5) ; Load callee result into R1
78 : LDC 2, 5(0) ; Callee frame size
79 : SUB 5, 5, 2 ; Pop back to caller
80 : ST 1, 4(5) ; Spill left operand at depth 0
81 : LDC 1, 0(0) ; Load integer-literal into R1
82 : LD 2, 4(5) ; Restore left operand from depth 0
83 : SUB 1, 2, 1 ; left - right for equality check
84 : JEQ 1, 2(7) ; If R1 == 0, jump to true
85 : LDC 1, 0(0) ; false
86 : LDA 7, 1(7) ; skip setting true
87 : LDC 1, 1(0) ; true
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
91 : LD 1, 1(5) ; Load parameter 'i' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : LD 2, 4(5) ; Restore left operand from depth 0
95 : SUB 1, 2, 1 ; left - right for less-than check
96 : JLT 1, 2(7) ; If R1 < 0, jump to true
97 : LDC 1, 0(0) ; false
98 : LDA 7, 1(7) ; skip setting true
99 : LDC 1, 1(0) ; true
100 : JEQ 1, 137(0) ; If condition is false, jump to ELSE
101 : LD 1, 1(5) ; Load parameter 'i' into R1
102 : LDA 4, 6(5) ; Recompute callee base from caller size
103 : ST 1, 1(4) ; Store argument 0 in callee frame
104 : LD 1, 2(5) ; Load parameter 'n' into R1
105 : LDA 4, 6(5) ; Recompute callee base from caller size
106 : ST 1, 2(4) ; Store argument 1 in callee frame
107 : LDA 4, 6(5) ; Recompute callee base from caller size
108 : LDA 6, 112(0) ; Return address
109 : ST 6, 0(4) ; Store return address into callee frame
110 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
111 : LDA 7, 66(0) ; Call divides
112 : LD 1, 3(5) ; Load callee result into R1
113 : LDC 2, 5(0) ; Callee frame size
114 : SUB 5, 5, 2 ; Pop back to caller
115 : ST 1, 4(5) ; Spill left operand at depth 0
116 : LD 1, 1(5) ; Load parameter 'i' into R1
117 : ST 1, 5(5) ; Spill left operand at depth 1
118 : LDC 1, 1(0) ; Load integer-literal into R1
119 : LD 2, 5(5) ; Restore left operand from depth 1
120 : ADD 1, 2, 1 ; R1 = left + right
121 : LDA 4, 6(5) ; Recompute callee base from caller size
122 : ST 1, 1(4) ; Store argument 0 in callee frame
123 : LD 1, 2(5) ; Load parameter 'n' into R1
124 : LDA 4, 6(5) ; Recompute callee base from caller size
125 : ST 1, 2(4) ; Store argument 1 in callee frame
126 : LDA 4, 6(5) ; Recompute callee base from caller size
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return address into callee frame
129 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
130 : LDA 7, 91(0) ; Call hasDivisorFrom
131 : LD 1, 3(5) ; Load callee result into R1
132 : LDC 2, 6(0) ; Callee frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : LD 2, 4(5) ; Restore left operand from depth 0
135 : ADD 1, 2, 1 ; R1 = left OR right
136 : LDA 7, 138(0) ; Skip ELSE block
137 : LDC 1, 0(0) ; Load boolean-literal into R1
138 : ST 1, 3(5) ; Store function result into frame return slot
139 : LD 6, 0(5) ; Load return address
140 : LDA 7, 0(6) ; Return to caller
141 : LDC 1, 2(0) ; Load integer-literal into R1
142 : LDA 4, 3(5) ; Recompute callee base from caller size
143 : ST 1, 1(4) ; Store argument 0 in callee frame
144 : LD 1, 1(5) ; Load parameter 'n' into R1
145 : LDA 4, 3(5) ; Recompute callee base from caller size
146 : ST 1, 2(4) ; Store argument 1 in callee frame
147 : LDA 4, 3(5) ; Recompute callee base from caller size
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return address into callee frame
150 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
151 : LDA 7, 91(0) ; Call hasDivisorFrom
152 : LD 1, 3(5) ; Load callee result into R1
153 : LDC 2, 6(0) ; Callee frame size
154 : SUB 5, 5, 2 ; Pop back to caller
155 : LDC 2, 1(0) ; Load 1 into R2
156 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
157 : ST 1, 2(5) ; Store function result into frame return slot
158 : LD 6, 0(5) ; Load return address
159 : LDA 7, 0(6) ; Return to caller
160 : LD 1, 1(5) ; Load parameter 'current' into R1
161 : LDA 4, 5(5) ; Recompute callee base from caller size
162 : ST 1, 1(4) ; Store argument 0 in callee frame
163 : LDA 4, 5(5) ; Recompute callee base from caller size
164 : LDA 6, 168(0) ; Return address
165 : ST 6, 0(4) ; Store return address into callee frame
166 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
167 : LDA 7, 141(0) ; Call isPrime
168 : LD 1, 2(5) ; Load callee result into R1
169 : LDC 2, 3(0) ; Callee frame size
170 : SUB 5, 5, 2 ; Pop back to caller
171 : JEQ 1, 174(0) ; If condition is false, jump to ELSE
172 : LD 1, 1(5) ; Load parameter 'current' into R1
173 : LDA 7, 175(0) ; Skip ELSE block
174 : LDC 1, 0(0) ; Load integer-literal into R1
175 : LDA 4, 5(5) ; Recompute callee base from caller size
176 : LDA 6, 180(0) ; Return address
177 : ST 6, 0(4) ; Store return address in callee frame
178 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
179 : LDA 7, 9(0) ; Call built-in print
180 : LDC 2, 3(0) ; Callee frame size
181 : SUB 5, 5, 2 ; Pop back to caller
182 : LD 1, 1(5) ; Load parameter 'current' into R1
183 : ST 1, 4(5) ; Spill left operand at depth 0
184 : LDC 1, 1(0) ; Load integer-literal into R1
185 : LD 2, 4(5) ; Restore left operand from depth 0
186 : ADD 1, 2, 1 ; R1 = left + right
187 : LDA 4, 5(5) ; Recompute callee base from caller size
188 : ST 1, 1(4) ; Store argument 0 in callee frame
189 : LD 1, 2(5) ; Load parameter 'max' into R1
190 : LDA 4, 5(5) ; Recompute callee base from caller size
191 : ST 1, 2(4) ; Store argument 1 in callee frame
192 : LDA 4, 5(5) ; Recompute callee base from caller size
193 : LDA 6, 197(0) ; Return address
194 : ST 6, 0(4) ; Store return address into callee frame
195 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
196 : LDA 7, 203(0) ; Call sieveAt
197 : LD 1, 3(5) ; Load callee result into R1
198 : LDC 2, 5(0) ; Callee frame size
199 : SUB 5, 5, 2 ; Pop back to caller
200 : ST 1, 3(5) ; Store function result into frame return slot
201 : LD 6, 0(5) ; Load return address
202 : LDA 7, 0(6) ; Return to caller
203 : LD 1, 2(5) ; Load parameter 'max' into R1
204 : ST 1, 4(5) ; Spill left operand at depth 0
205 : LD 1, 1(5) ; Load parameter 'current' into R1
206 : LD 2, 4(5) ; Restore left operand from depth 0
207 : SUB 1, 2, 1 ; left - right for less-than check
208 : JLT 1, 2(7) ; If R1 < 0, jump to true
209 : LDC 1, 0(0) ; false
210 : LDA 7, 1(7) ; skip setting true
211 : LDC 1, 1(0) ; true
212 : JEQ 1, 215(0) ; If condition is false, jump to ELSE
213 : LDC 1, 1(0) ; Load boolean-literal into R1
214 : LDA 7, 229(0) ; Skip ELSE block
215 : LD 1, 1(5) ; Load parameter 'current' into R1
216 : LDA 4, 5(5) ; Recompute callee base from caller size
217 : ST 1, 1(4) ; Store argument 0 in callee frame
218 : LD 1, 2(5) ; Load parameter 'max' into R1
219 : LDA 4, 5(5) ; Recompute callee base from caller size
220 : ST 1, 2(4) ; Store argument 1 in callee frame
221 : LDA 4, 5(5) ; Recompute callee base from caller size
222 : LDA 6, 226(0) ; Return address
223 : ST 6, 0(4) ; Store return address into callee frame
224 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
225 : LDA 7, 160(0) ; Call doSieveAt
226 : LD 1, 3(5) ; Load callee result into R1
227 : LDC 2, 5(0) ; Callee frame size
228 : SUB 5, 5, 2 ; Pop back to caller
229 : ST 1, 3(5) ; Store function result into frame return slot
230 : LD 6, 0(5) ; Load return address
231 : LDA 7, 0(6) ; Return to caller
