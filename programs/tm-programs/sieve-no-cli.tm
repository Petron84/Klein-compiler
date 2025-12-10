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
13 : LDA 4, 6(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC 1, 40(0) ; Load integer-literal into R1
16 : LDA 4, 6(5) ; Recompute callee base from callee size
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDA 4, 5(5) ; Recompute callee base from callee size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
22 : LDA 7, 200(0) ; Call sieveAt
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop callee frame
26 : ST 1, 2(5) ; Store result into caller’s frame
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
47 : LDA 4, 6(5) ; Recompute callee base from callee size
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LDA 4, 6(5) ; Recompute callee base from callee size
51 : ST 1, 2(4) ; Store argument 1 in callee
52 : LDA 4, 5(5) ; Recompute callee base from callee size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
56 : LDA 7, 30(0) ; Call rem
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop callee frame
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : LDA 4, 6(5) ; Recompute callee base from callee size
65 : ST 1, 1(4) ; Store argument 0 in callee
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : LDA 4, 6(5) ; Recompute callee base from callee size
68 : ST 1, 2(4) ; Store argument 1 in callee
69 : LDA 4, 5(5) ; Recompute callee base from callee size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 30(0) ; Call rem
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 5(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop callee frame
77 : ST 1, 4(5) ; Spill left operand at depth 0
78 : LDC 1, 0(0) ; Load integer-literal into R1
79 : LD 2, 4(5) ; Restore left operand from depth 0
80 : SUB 1, 2, 1 ; left - right for equality check
81 : JEQ 1, 2(7) ; If R1 == 0, jump to true
82 : LDC 1, 0(0) ; false
83 : LDA 7, 1(7) ; skip setting true
84 : LDC 1, 1(0) ; true
85 : ST 1, 3(5) ; Store function result into frame return slot
86 : LD 6, 0(5) ; Load return address
87 : LDA 7, 0(6) ; Return to caller
88 : LD 1, 1(5) ; Load parameter 'i' into R1
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LD 1, 2(5) ; Load parameter 'n' into R1
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; left - right for less-than check
93 : JLT 1, 2(7) ; If R1 < 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : JEQ 1, 134(0) ; If condition is false, jump to ELSE
98 : LD 1, 1(5) ; Load parameter 'i' into R1
99 : LDA 4, 6(5) ; Recompute callee base from callee size
100 : ST 1, 1(4) ; Store argument 0 in callee
101 : LD 1, 2(5) ; Load parameter 'n' into R1
102 : LDA 4, 6(5) ; Recompute callee base from callee size
103 : ST 1, 2(4) ; Store argument 1 in callee
104 : LDA 4, 5(5) ; Recompute callee base from callee size
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return in callee frame
107 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
108 : LDA 7, 63(0) ; Call divides
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 5(0) ; Callee frame size
111 : SUB 5, 5, 2 ; Pop callee frame
112 : ST 1, 4(5) ; Spill left operand at depth 0
113 : LD 1, 1(5) ; Load parameter 'i' into R1
114 : ST 1, 5(5) ; Spill left operand at depth 1
115 : LDC 1, 1(0) ; Load integer-literal into R1
116 : LD 2, 5(5) ; Restore left operand from depth 1
117 : ADD 1, 2, 1 ; R1 = left + right
118 : LDA 4, 7(5) ; Recompute callee base from callee size
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD 1, 2(5) ; Load parameter 'n' into R1
121 : LDA 4, 7(5) ; Recompute callee base from callee size
122 : ST 1, 2(4) ; Store argument 1 in callee
123 : LDA 4, 6(5) ; Recompute callee base from callee size
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
127 : LDA 7, 88(0) ; Call hasDivisorFrom
128 : LD 1, 3(5) ; Load callee result into R1
129 : LDC 2, 6(0) ; Callee frame size
130 : SUB 5, 5, 2 ; Pop callee frame
131 : LD 2, 4(5) ; Restore left operand from depth 0
132 : ADD 1, 2, 1 ; R1 = left OR right
133 : LDA 7, 135(0) ; Skip ELSE block
134 : LDC 1, 0(0) ; Load boolean-literal into R1
135 : ST 1, 3(5) ; Store function result into frame return slot
136 : LD 6, 0(5) ; Load return address
137 : LDA 7, 0(6) ; Return to caller
138 : LDC 1, 2(0) ; Load integer-literal into R1
139 : LDA 4, 7(5) ; Recompute callee base from callee size
140 : ST 1, 1(4) ; Store argument 0 in callee
141 : LD 1, 1(5) ; Load parameter 'n' into R1
142 : LDA 4, 7(5) ; Recompute callee base from callee size
143 : ST 1, 2(4) ; Store argument 1 in callee
144 : LDA 4, 6(5) ; Recompute callee base from callee size
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return in callee frame
147 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
148 : LDA 7, 88(0) ; Call hasDivisorFrom
149 : LD 1, 3(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Callee frame size
151 : SUB 5, 5, 2 ; Pop callee frame
152 : LDC 2, 1(0) ; Load 1 into R2
153 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
154 : ST 1, 2(5) ; Store function result into frame return slot
155 : LD 6, 0(5) ; Load return address
156 : LDA 7, 0(6) ; Return to caller
157 : LD 1, 1(5) ; Load parameter 'current' into R1
158 : LDA 4, 4(5) ; Recompute callee base from callee size
159 : ST 1, 1(4) ; Store argument 0 in callee
160 : LDA 4, 3(5) ; Recompute callee base from callee size
161 : LDA 6, 165(0) ; Return address
162 : ST 6, 0(4) ; Store return in callee frame
163 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
164 : LDA 7, 138(0) ; Call isPrime
165 : LD 1, 2(5) ; Load callee result into R1
166 : LDC 2, 3(0) ; Callee frame size
167 : SUB 5, 5, 2 ; Pop callee frame
168 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
169 : LD 1, 1(5) ; Load parameter 'current' into R1
170 : LDA 7, 172(0) ; Skip ELSE block
171 : LDC 1, 0(0) ; Load integer-literal into R1
172 : LDA 4, 6(5) ; Recompute callee base from caller size
173 : LDA 6, 177(0) ; Return address
174 : ST 6, 0(4) ; Store return address in callee frame
175 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
176 : LDA 7, 9(0) ; Call built-in print
177 : LDC 2, 5(0) ; Caller frame size
178 : SUB 5, 5, 2 ; Pop back to caller
179 : LD 1, 1(5) ; Load parameter 'current' into R1
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LDC 1, 1(0) ; Load integer-literal into R1
182 : LD 2, 4(5) ; Restore left operand from depth 0
183 : ADD 1, 2, 1 ; R1 = left + right
184 : LDA 4, 6(5) ; Recompute callee base from callee size
185 : ST 1, 1(4) ; Store argument 0 in callee
186 : LD 1, 2(5) ; Load parameter 'max' into R1
187 : LDA 4, 6(5) ; Recompute callee base from callee size
188 : ST 1, 2(4) ; Store argument 1 in callee
189 : LDA 4, 5(5) ; Recompute callee base from callee size
190 : LDA 6, 194(0) ; Return address
191 : ST 6, 0(4) ; Store return in callee frame
192 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
193 : LDA 7, 200(0) ; Call sieveAt
194 : LD 1, 3(5) ; Load callee result into R1
195 : LDC 2, 5(0) ; Callee frame size
196 : SUB 5, 5, 2 ; Pop callee frame
197 : ST 1, 3(5) ; Store function result into frame return slot
198 : LD 6, 0(5) ; Load return address
199 : LDA 7, 0(6) ; Return to caller
200 : LD 1, 2(5) ; Load parameter 'max' into R1
201 : ST 1, 4(5) ; Spill left operand at depth 0
202 : LD 1, 1(5) ; Load parameter 'current' into R1
203 : LD 2, 4(5) ; Restore left operand from depth 0
204 : SUB 1, 2, 1 ; left - right for less-than check
205 : JLT 1, 2(7) ; If R1 < 0, jump to true
206 : LDC 1, 0(0) ; false
207 : LDA 7, 1(7) ; skip setting true
208 : LDC 1, 1(0) ; true
209 : JEQ 1, 212(0) ; If condition is false, jump to ELSE
210 : LDC 1, 1(0) ; Load boolean-literal into R1
211 : LDA 7, 226(0) ; Skip ELSE block
212 : LD 1, 1(5) ; Load parameter 'current' into R1
213 : LDA 4, 6(5) ; Recompute callee base from callee size
214 : ST 1, 1(4) ; Store argument 0 in callee
215 : LD 1, 2(5) ; Load parameter 'max' into R1
216 : LDA 4, 6(5) ; Recompute callee base from callee size
217 : ST 1, 2(4) ; Store argument 1 in callee
218 : LDA 4, 5(5) ; Recompute callee base from callee size
219 : LDA 6, 223(0) ; Return address
220 : ST 6, 0(4) ; Store return in callee frame
221 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
222 : LDA 7, 157(0) ; Call doSieveAt
223 : LD 1, 3(5) ; Load callee result into R1
224 : LDC 2, 5(0) ; Callee frame size
225 : SUB 5, 5, 2 ; Pop callee frame
226 : ST 1, 3(5) ; Store function result into frame return slot
227 : LD 6, 0(5) ; Load return address
228 : LDA 7, 0(6) ; Return to caller
