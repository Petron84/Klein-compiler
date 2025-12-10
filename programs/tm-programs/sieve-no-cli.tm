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
13 : LDA 4, 5(5) ; Compute callee base
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 40(0) ; Load integer-literal into R1
16 : LDA 4, 5(5) ; Compute callee base
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDA 4, 5(5) ; Recompute callee base from callee size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 195(0) ; Call sieveAt
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LD 1, 2(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 1(5) ; Load parameter 'num' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LD 1, 2(5) ; Load parameter 'den' into R1
33 : LD 2, 4(5) ; Restore left operand from depth 0
34 : SUB 1, 2, 1 ; left - right for less-than check
35 : JLT 1, 2(7) ; If R1 < 0, jump to true
36 : LDC 1, 0(0) ; false
37 : LDA 7, 1(7) ; skip setting true
38 : LDC 1, 1(0) ; true
39 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : LDA 7, 60(0) ; Skip ELSE block
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 1, 2(5) ; Load parameter 'den' into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; R1 = left - right
47 : LDA 4, 5(5) ; Compute callee base
48 : ST 1, 1(4) ; Store argument 0 in callee frame
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LDA 4, 5(5) ; Compute callee base
51 : ST 1, 2(4) ; Store argument 1 in callee frame
52 : LDA 4, 5(5) ; Recompute callee base from callee size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return address into callee frame
55 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
56 : LDA 7, 30(0) ; Call rem
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LDA 4, 5(5) ; Compute callee base
64 : ST 1, 1(4) ; Store argument 0 in callee frame
65 : LDA 4, 5(5) ; Compute callee base
66 : ST 1, 2(4) ; Store argument 1 in callee frame
67 : LDA 4, 5(5) ; Recompute callee base from callee size
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return address into callee frame
70 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
71 : LDA 7, 30(0) ; Call rem
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 5(0) ; Caller frame size
74 : SUB 5, 5, 2 ; Pop back to caller
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LDC 1, 0(0) ; Load integer-literal into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 1(5) ; Load parameter 'i' into R1
87 : ST 1, 4(5) ; Spill left operand at depth 0
88 : LD 1, 2(5) ; Load parameter 'n' into R1
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for less-than check
91 : JLT 1, 2(7) ; If R1 < 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 130(0) ; If condition is false, jump to ELSE
96 : LDA 4, 5(5) ; Compute callee base
97 : ST 1, 1(4) ; Store argument 0 in callee frame
98 : LDA 4, 5(5) ; Compute callee base
99 : ST 1, 2(4) ; Store argument 1 in callee frame
100 : LDA 4, 5(5) ; Recompute callee base from callee size
101 : LDA 6, 105(0) ; Return address
102 : ST 6, 0(4) ; Store return address into callee frame
103 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
104 : LDA 7, 63(0) ; Call divides
105 : LD 1, 3(5) ; Load callee result into R1
106 : LDC 2, 5(0) ; Caller frame size
107 : SUB 5, 5, 2 ; Pop back to caller
108 : ST 1, 4(5) ; Spill left operand at depth 0
109 : LD 1, 1(5) ; Load parameter 'i' into R1
110 : ST 1, 5(5) ; Spill left operand at depth 1
111 : LDC 1, 1(0) ; Load integer-literal into R1
112 : LD 2, 5(5) ; Restore left operand from depth 1
113 : ADD 1, 2, 1 ; R1 = left + right
114 : LDA 4, 6(5) ; Compute callee base
115 : ST 1, 1(4) ; Store argument 0 in callee frame
116 : LD 1, 2(5) ; Load parameter 'n' into R1
117 : LDA 4, 6(5) ; Compute callee base
118 : ST 1, 2(4) ; Store argument 1 in callee frame
119 : LDA 4, 6(5) ; Recompute callee base from callee size
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return address into callee frame
122 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
123 : LDA 7, 86(0) ; Call hasDivisorFrom
124 : LD 1, 3(5) ; Load callee result into R1
125 : LDC 2, 6(0) ; Caller frame size
126 : SUB 5, 5, 2 ; Pop back to caller
127 : LD 2, 4(5) ; Restore left operand from depth 0
128 : ADD 1, 2, 1 ; R1 = left OR right
129 : LDA 7, 131(0) ; Skip ELSE block
130 : LDC 1, 0(0) ; Load boolean-literal into R1
131 : ST 1, 3(5) ; Store function result into frame return slot
132 : LD 6, 0(5) ; Load return address
133 : LDA 7, 0(6) ; Return to caller
134 : LDC 1, 2(0) ; Load integer-literal into R1
135 : LDA 4, 6(5) ; Compute callee base
136 : ST 1, 1(4) ; Store argument 0 in callee frame
137 : LD 1, 2(5) ; Load parameter 'n' into R1
138 : LDA 4, 6(5) ; Compute callee base
139 : ST 1, 2(4) ; Store argument 1 in callee frame
140 : LDA 4, 6(5) ; Recompute callee base from callee size
141 : LDA 6, 145(0) ; Return address
142 : ST 6, 0(4) ; Store return address into callee frame
143 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
144 : LDA 7, 86(0) ; Call hasDivisorFrom
145 : LD 1, 3(5) ; Load callee result into R1
146 : LDC 2, 6(0) ; Caller frame size
147 : SUB 5, 5, 2 ; Pop back to caller
148 : LDC 2, 1(0) ; Load 1 into R2
149 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
150 : ST 1, 2(5) ; Store function result into frame return slot
151 : LD 6, 0(5) ; Load return address
152 : LDA 7, 0(6) ; Return to caller
153 : LDA 4, 3(5) ; Compute callee base
154 : ST 1, 1(4) ; Store argument 0 in callee frame
155 : LDA 4, 3(5) ; Recompute callee base from callee size
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return address into callee frame
158 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
159 : LDA 7, 134(0) ; Call isPrime
160 : LD 1, 2(5) ; Load callee result into R1
161 : LDC 2, 3(0) ; Caller frame size
162 : SUB 5, 5, 2 ; Pop back to caller
163 : JEQ 1, 166(0) ; If condition is false, jump to ELSE
164 : LD 1, 1(5) ; Load parameter 'current' into R1
165 : LDA 7, 167(0) ; Skip ELSE block
166 : LDC 1, 0(0) ; Load integer-literal into R1
167 : LDA 4, 5(5) ; Recompute callee base from caller size
168 : LDA 6, 172(0) ; Return address
169 : ST 6, 0(4) ; Store return address in callee frame
170 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
171 : LDA 7, 9(0) ; Call built-in print
172 : LDC 2, 5(0) ; Caller frame size
173 : SUB 5, 5, 2 ; Pop back to caller
174 : LD 1, 1(5) ; Load parameter 'current' into R1
175 : ST 1, 4(5) ; Spill left operand at depth 0
176 : LDC 1, 1(0) ; Load integer-literal into R1
177 : LD 2, 4(5) ; Restore left operand from depth 0
178 : ADD 1, 2, 1 ; R1 = left + right
179 : LDA 4, 5(5) ; Compute callee base
180 : ST 1, 1(4) ; Store argument 0 in callee frame
181 : LD 1, 2(5) ; Load parameter 'max' into R1
182 : LDA 4, 5(5) ; Compute callee base
183 : ST 1, 2(4) ; Store argument 1 in callee frame
184 : LDA 4, 5(5) ; Recompute callee base from callee size
185 : LDA 6, 189(0) ; Return address
186 : ST 6, 0(4) ; Store return address into callee frame
187 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
188 : LDA 7, 195(0) ; Call sieveAt
189 : LD 1, 3(5) ; Load callee result into R1
190 : LDC 2, 5(0) ; Caller frame size
191 : SUB 5, 5, 2 ; Pop back to caller
192 : ST 1, 3(5) ; Store function result into frame return slot
193 : LD 6, 0(5) ; Load return address
194 : LDA 7, 0(6) ; Return to caller
195 : LD 1, 2(5) ; Load parameter 'max' into R1
196 : ST 1, 4(5) ; Spill left operand at depth 0
197 : LD 1, 1(5) ; Load parameter 'current' into R1
198 : LD 2, 4(5) ; Restore left operand from depth 0
199 : SUB 1, 2, 1 ; left - right for less-than check
200 : JLT 1, 2(7) ; If R1 < 0, jump to true
201 : LDC 1, 0(0) ; false
202 : LDA 7, 1(7) ; skip setting true
203 : LDC 1, 1(0) ; true
204 : JEQ 1, 207(0) ; If condition is false, jump to ELSE
205 : LDC 1, 1(0) ; Load boolean-literal into R1
206 : LDA 7, 221(0) ; Skip ELSE block
207 : LD 1, 1(5) ; Load parameter 'current' into R1
208 : LDA 4, 5(5) ; Compute callee base
209 : ST 1, 1(4) ; Store argument 0 in callee frame
210 : LD 1, 2(5) ; Load parameter 'max' into R1
211 : LDA 4, 5(5) ; Compute callee base
212 : ST 1, 2(4) ; Store argument 1 in callee frame
213 : LDA 4, 5(5) ; Recompute callee base from callee size
214 : LDA 6, 218(0) ; Return address
215 : ST 6, 0(4) ; Store return address into callee frame
216 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
217 : LDA 7, 153(0) ; Call doSieveAt
218 : LD 1, 3(5) ; Load callee result into R1
219 : LDC 2, 5(0) ; Caller frame size
220 : SUB 5, 5, 2 ; Pop back to caller
221 : ST 1, 3(5) ; Store function result into frame return slot
222 : LD 6, 0(5) ; Load return address
223 : LDA 7, 0(6) ; Return to caller
