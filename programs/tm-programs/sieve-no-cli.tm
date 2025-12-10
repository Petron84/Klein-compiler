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
15 : LDC 1, 40(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Recompute callee base from caller size
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDA 4, 3(5) ; Recompute callee base from caller size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 201(0) ; Call sieveAt
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
28 : LD 1, 2(5) ; Load main return value into R1
29 : LD 6, 0(5) ; Load root return address from main frame
30 : LDA 7, 0(6) ; Return from main to runtime epilogue
31 : LD 1, 1(5) ; Load parameter 'num' into R1
32 : ST 1, 4(5) ; Spill left operand at depth 0
33 : LD 1, 2(5) ; Load parameter 'den' into R1
34 : LD 2, 4(5) ; Restore left operand from depth 0
35 : SUB 1, 2, 1 ; left - right for less-than check
36 : JLT 1, 2(7) ; If R1 < 0, jump to true
37 : LDC 1, 0(0) ; false
38 : LDA 7, 1(7) ; skip setting true
39 : LDC 1, 1(0) ; true
40 : JEQ 1, 43(0) ; If condition is false, jump to ELSE
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : LDA 7, 61(0) ; Skip ELSE block
43 : LD 1, 1(5) ; Load parameter 'num' into R1
44 : ST 1, 4(5) ; Spill left operand at depth 0
45 : LD 1, 2(5) ; Load parameter 'den' into R1
46 : LD 2, 4(5) ; Restore left operand from depth 0
47 : SUB 1, 2, 1 ; R1 = left - right
48 : LDA 4, 5(5) ; Recompute callee base from caller size
49 : ST 1, 1(4) ; Store argument 0 in callee frame
50 : LD 1, 2(5) ; Load parameter 'den' into R1
51 : LDA 4, 5(5) ; Recompute callee base from caller size
52 : ST 1, 2(4) ; Store argument 1 in callee frame
53 : LDA 4, 5(5) ; Recompute callee base from caller size
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return address into callee frame
56 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
57 : LDA 7, 31(0) ; Call rem
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 5(0) ; Callee frame size
60 : SUB 5, 5, 2 ; Pop back to caller
61 : ST 1, 3(5) ; Store function result into frame return slot
62 : LD 6, 0(5) ; Load return address
63 : LDA 7, 0(6) ; Return to caller
64 : LD 1, 2(5) ; Load parameter 'b' into R1
65 : LDA 4, 5(5) ; Recompute callee base from caller size
66 : ST 1, 1(4) ; Store argument 0 in callee frame
67 : LD 1, 1(5) ; Load parameter 'a' into R1
68 : LDA 4, 5(5) ; Recompute callee base from caller size
69 : ST 1, 2(4) ; Store argument 1 in callee frame
70 : LDA 4, 5(5) ; Recompute callee base from caller size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return address into callee frame
73 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
74 : LDA 7, 31(0) ; Call rem
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop back to caller
78 : ST 1, 4(5) ; Spill left operand at depth 0
79 : LDC 1, 0(0) ; Load integer-literal into R1
80 : LD 2, 4(5) ; Restore left operand from depth 0
81 : SUB 1, 2, 1 ; left - right for equality check
82 : JEQ 1, 2(7) ; If R1 == 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : ST 1, 3(5) ; Store function result into frame return slot
87 : LD 6, 0(5) ; Load return address
88 : LDA 7, 0(6) ; Return to caller
89 : LD 1, 1(5) ; Load parameter 'i' into R1
90 : ST 1, 4(5) ; Spill left operand at depth 0
91 : LD 1, 2(5) ; Load parameter 'n' into R1
92 : LD 2, 4(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; left - right for less-than check
94 : JLT 1, 2(7) ; If R1 < 0, jump to true
95 : LDC 1, 0(0) ; false
96 : LDA 7, 1(7) ; skip setting true
97 : LDC 1, 1(0) ; true
98 : JEQ 1, 135(0) ; If condition is false, jump to ELSE
99 : LD 1, 1(5) ; Load parameter 'i' into R1
100 : LDA 4, 6(5) ; Recompute callee base from caller size
101 : ST 1, 1(4) ; Store argument 0 in callee frame
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : LDA 4, 6(5) ; Recompute callee base from caller size
104 : ST 1, 2(4) ; Store argument 1 in callee frame
105 : LDA 4, 6(5) ; Recompute callee base from caller size
106 : LDA 6, 110(0) ; Return address
107 : ST 6, 0(4) ; Store return address into callee frame
108 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
109 : LDA 7, 64(0) ; Call divides
110 : LD 1, 3(5) ; Load callee result into R1
111 : LDC 2, 5(0) ; Callee frame size
112 : SUB 5, 5, 2 ; Pop back to caller
113 : ST 1, 4(5) ; Spill left operand at depth 0
114 : LD 1, 1(5) ; Load parameter 'i' into R1
115 : ST 1, 5(5) ; Spill left operand at depth 1
116 : LDC 1, 1(0) ; Load integer-literal into R1
117 : LD 2, 5(5) ; Restore left operand from depth 1
118 : ADD 1, 2, 1 ; R1 = left + right
119 : LDA 4, 6(5) ; Recompute callee base from caller size
120 : ST 1, 1(4) ; Store argument 0 in callee frame
121 : LD 1, 2(5) ; Load parameter 'n' into R1
122 : LDA 4, 6(5) ; Recompute callee base from caller size
123 : ST 1, 2(4) ; Store argument 1 in callee frame
124 : LDA 4, 6(5) ; Recompute callee base from caller size
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return address into callee frame
127 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
128 : LDA 7, 89(0) ; Call hasDivisorFrom
129 : LD 1, 3(5) ; Load callee result into R1
130 : LDC 2, 6(0) ; Callee frame size
131 : SUB 5, 5, 2 ; Pop back to caller
132 : LD 2, 4(5) ; Restore left operand from depth 0
133 : ADD 1, 2, 1 ; R1 = left OR right
134 : LDA 7, 136(0) ; Skip ELSE block
135 : LDC 1, 0(0) ; Load boolean-literal into R1
136 : ST 1, 3(5) ; Store function result into frame return slot
137 : LD 6, 0(5) ; Load return address
138 : LDA 7, 0(6) ; Return to caller
139 : LDC 1, 2(0) ; Load integer-literal into R1
140 : LDA 4, 3(5) ; Recompute callee base from caller size
141 : ST 1, 1(4) ; Store argument 0 in callee frame
142 : LD 1, 1(5) ; Load parameter 'n' into R1
143 : LDA 4, 3(5) ; Recompute callee base from caller size
144 : ST 1, 2(4) ; Store argument 1 in callee frame
145 : LDA 4, 3(5) ; Recompute callee base from caller size
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return address into callee frame
148 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
149 : LDA 7, 89(0) ; Call hasDivisorFrom
150 : LD 1, 3(5) ; Load callee result into R1
151 : LDC 2, 6(0) ; Callee frame size
152 : SUB 5, 5, 2 ; Pop back to caller
153 : LDC 2, 1(0) ; Load 1 into R2
154 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
155 : ST 1, 2(5) ; Store function result into frame return slot
156 : LD 6, 0(5) ; Load return address
157 : LDA 7, 0(6) ; Return to caller
158 : LD 1, 1(5) ; Load parameter 'current' into R1
159 : LDA 4, 5(5) ; Recompute callee base from caller size
160 : ST 1, 1(4) ; Store argument 0 in callee frame
161 : LDA 4, 5(5) ; Recompute callee base from caller size
162 : LDA 6, 166(0) ; Return address
163 : ST 6, 0(4) ; Store return address into callee frame
164 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
165 : LDA 7, 139(0) ; Call isPrime
166 : LD 1, 2(5) ; Load callee result into R1
167 : LDC 2, 3(0) ; Callee frame size
168 : SUB 5, 5, 2 ; Pop back to caller
169 : JEQ 1, 172(0) ; If condition is false, jump to ELSE
170 : LD 1, 1(5) ; Load parameter 'current' into R1
171 : LDA 7, 173(0) ; Skip ELSE block
172 : LDC 1, 0(0) ; Load integer-literal into R1
173 : LDA 4, 5(5) ; Recompute callee base from caller size
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return address in callee frame
176 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
177 : LDA 7, 9(0) ; Call built-in print
178 : LDC 2, 3(0) ; Callee frame size
179 : SUB 5, 5, 2 ; Pop back to caller
180 : LD 1, 1(5) ; Load parameter 'current' into R1
181 : ST 1, 4(5) ; Spill left operand at depth 0
182 : LDC 1, 1(0) ; Load integer-literal into R1
183 : LD 2, 4(5) ; Restore left operand from depth 0
184 : ADD 1, 2, 1 ; R1 = left + right
185 : LDA 4, 5(5) ; Recompute callee base from caller size
186 : ST 1, 1(4) ; Store argument 0 in callee frame
187 : LD 1, 2(5) ; Load parameter 'max' into R1
188 : LDA 4, 5(5) ; Recompute callee base from caller size
189 : ST 1, 2(4) ; Store argument 1 in callee frame
190 : LDA 4, 5(5) ; Recompute callee base from caller size
191 : LDA 6, 195(0) ; Return address
192 : ST 6, 0(4) ; Store return address into callee frame
193 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
194 : LDA 7, 201(0) ; Call sieveAt
195 : LD 1, 3(5) ; Load callee result into R1
196 : LDC 2, 5(0) ; Callee frame size
197 : SUB 5, 5, 2 ; Pop back to caller
198 : ST 1, 3(5) ; Store function result into frame return slot
199 : LD 6, 0(5) ; Load return address
200 : LDA 7, 0(6) ; Return to caller
201 : LD 1, 2(5) ; Load parameter 'max' into R1
202 : ST 1, 4(5) ; Spill left operand at depth 0
203 : LD 1, 1(5) ; Load parameter 'current' into R1
204 : LD 2, 4(5) ; Restore left operand from depth 0
205 : SUB 1, 2, 1 ; left - right for less-than check
206 : JLT 1, 2(7) ; If R1 < 0, jump to true
207 : LDC 1, 0(0) ; false
208 : LDA 7, 1(7) ; skip setting true
209 : LDC 1, 1(0) ; true
210 : JEQ 1, 213(0) ; If condition is false, jump to ELSE
211 : LDC 1, 1(0) ; Load boolean-literal into R1
212 : LDA 7, 227(0) ; Skip ELSE block
213 : LD 1, 1(5) ; Load parameter 'current' into R1
214 : LDA 4, 5(5) ; Recompute callee base from caller size
215 : ST 1, 1(4) ; Store argument 0 in callee frame
216 : LD 1, 2(5) ; Load parameter 'max' into R1
217 : LDA 4, 5(5) ; Recompute callee base from caller size
218 : ST 1, 2(4) ; Store argument 1 in callee frame
219 : LDA 4, 5(5) ; Recompute callee base from caller size
220 : LDA 6, 224(0) ; Return address
221 : ST 6, 0(4) ; Store return address into callee frame
222 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
223 : LDA 7, 158(0) ; Call doSieveAt
224 : LD 1, 3(5) ; Load callee result into R1
225 : LDC 2, 5(0) ; Callee frame size
226 : SUB 5, 5, 2 ; Pop back to caller
227 : ST 1, 3(5) ; Store function result into frame return slot
228 : LD 6, 0(5) ; Load return address
229 : LDA 7, 0(6) ; Return to caller
