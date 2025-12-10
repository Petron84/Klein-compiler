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
15 : LDA 4, 5(5) ; Compute callee base
16 : ST 1, 2(4) ; Store argument 1 in callee frame
17 : LDA 4, 5(5) ; Recompute callee base from callee size
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return address into callee frame
20 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
21 : LDA 7, 194(0) ; Call sieveAt
22 : LD 1, 3(5) ; Load callee result into R1
23 : LDC 2, 5(0) ; Caller frame size
24 : SUB 5, 5, 2 ; Pop back to caller
25 : ST 1, 2(5) ; Store result into caller’s return slot
26 : LD 1, 2(5) ; Load main return value into R1
27 : LD 6, 0(5) ; Load main return address
28 : LDA 7, 0(6) ; Return from main
29 : LD 1, 1(5) ; Load parameter 'num' into R1
30 : ST 1, 4(5) ; Spill left operand at depth 0
31 : LD 1, 2(5) ; Load parameter 'den' into R1
32 : LD 2, 4(5) ; Restore left operand from depth 0
33 : SUB 1, 2, 1 ; left - right for less-than check
34 : JLT 1, 2(7) ; If R1 < 0, jump to true
35 : LDC 1, 0(0) ; false
36 : LDA 7, 1(7) ; skip setting true
37 : LDC 1, 1(0) ; true
38 : JEQ 1, 41(0) ; If condition is false, jump to ELSE
39 : LD 1, 1(5) ; Load parameter 'num' into R1
40 : LDA 7, 59(0) ; Skip ELSE block
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : ST 1, 4(5) ; Spill left operand at depth 0
43 : LD 1, 2(5) ; Load parameter 'den' into R1
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : LDA 4, 5(5) ; Compute callee base
47 : ST 1, 1(4) ; Store argument 0 in callee frame
48 : LD 1, 2(5) ; Load parameter 'den' into R1
49 : LDA 4, 5(5) ; Compute callee base
50 : ST 1, 2(4) ; Store argument 1 in callee frame
51 : LDA 4, 5(5) ; Recompute callee base from callee size
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return address into callee frame
54 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
55 : LDA 7, 29(0) ; Call rem
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 5(0) ; Caller frame size
58 : SUB 5, 5, 2 ; Pop back to caller
59 : ST 1, 3(5) ; Store function result into frame return slot
60 : LD 6, 0(5) ; Load return address
61 : LDA 7, 0(6) ; Return to caller
62 : LDA 4, 5(5) ; Compute callee base
63 : ST 1, 1(4) ; Store argument 0 in callee frame
64 : LDA 4, 5(5) ; Compute callee base
65 : ST 1, 2(4) ; Store argument 1 in callee frame
66 : LDA 4, 5(5) ; Recompute callee base from callee size
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return address into callee frame
69 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
70 : LDA 7, 29(0) ; Call rem
71 : LD 1, 3(5) ; Load callee result into R1
72 : LDC 2, 5(0) ; Caller frame size
73 : SUB 5, 5, 2 ; Pop back to caller
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LDC 1, 0(0) ; Load integer-literal into R1
76 : LD 2, 4(5) ; Restore left operand from depth 0
77 : SUB 1, 2, 1 ; left - right for equality check
78 : JEQ 1, 2(7) ; If R1 == 0, jump to true
79 : LDC 1, 0(0) ; false
80 : LDA 7, 1(7) ; skip setting true
81 : LDC 1, 1(0) ; true
82 : ST 1, 3(5) ; Store function result into frame return slot
83 : LD 6, 0(5) ; Load return address
84 : LDA 7, 0(6) ; Return to caller
85 : LD 1, 1(5) ; Load parameter 'i' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LD 1, 2(5) ; Load parameter 'n' into R1
88 : LD 2, 4(5) ; Restore left operand from depth 0
89 : SUB 1, 2, 1 ; left - right for less-than check
90 : JLT 1, 2(7) ; If R1 < 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : JEQ 1, 129(0) ; If condition is false, jump to ELSE
95 : LDA 4, 5(5) ; Compute callee base
96 : ST 1, 1(4) ; Store argument 0 in callee frame
97 : LDA 4, 5(5) ; Compute callee base
98 : ST 1, 2(4) ; Store argument 1 in callee frame
99 : LDA 4, 5(5) ; Recompute callee base from callee size
100 : LDA 6, 104(0) ; Return address
101 : ST 6, 0(4) ; Store return address into callee frame
102 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
103 : LDA 7, 62(0) ; Call divides
104 : LD 1, 3(5) ; Load callee result into R1
105 : LDC 2, 5(0) ; Caller frame size
106 : SUB 5, 5, 2 ; Pop back to caller
107 : ST 1, 4(5) ; Spill left operand at depth 0
108 : LD 1, 1(5) ; Load parameter 'i' into R1
109 : ST 1, 5(5) ; Spill left operand at depth 1
110 : LDC 1, 1(0) ; Load integer-literal into R1
111 : LD 2, 5(5) ; Restore left operand from depth 1
112 : ADD 1, 2, 1 ; R1 = left + right
113 : LDA 4, 6(5) ; Compute callee base
114 : ST 1, 1(4) ; Store argument 0 in callee frame
115 : LD 1, 2(5) ; Load parameter 'n' into R1
116 : LDA 4, 6(5) ; Compute callee base
117 : ST 1, 2(4) ; Store argument 1 in callee frame
118 : LDA 4, 6(5) ; Recompute callee base from callee size
119 : LDA 6, 123(0) ; Return address
120 : ST 6, 0(4) ; Store return address into callee frame
121 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
122 : LDA 7, 85(0) ; Call hasDivisorFrom
123 : LD 1, 3(5) ; Load callee result into R1
124 : LDC 2, 6(0) ; Caller frame size
125 : SUB 5, 5, 2 ; Pop back to caller
126 : LD 2, 4(5) ; Restore left operand from depth 0
127 : ADD 1, 2, 1 ; R1 = left OR right
128 : LDA 7, 130(0) ; Skip ELSE block
129 : LDC 1, 0(0) ; Load boolean-literal into R1
130 : ST 1, 3(5) ; Store function result into frame return slot
131 : LD 6, 0(5) ; Load return address
132 : LDA 7, 0(6) ; Return to caller
133 : LDC 1, 2(0) ; Load integer-literal into R1
134 : LDA 4, 6(5) ; Compute callee base
135 : ST 1, 1(4) ; Store argument 0 in callee frame
136 : LD 1, 2(5) ; Load parameter 'n' into R1
137 : LDA 4, 6(5) ; Compute callee base
138 : ST 1, 2(4) ; Store argument 1 in callee frame
139 : LDA 4, 6(5) ; Recompute callee base from callee size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return address into callee frame
142 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
143 : LDA 7, 85(0) ; Call hasDivisorFrom
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 6(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : LDC 2, 1(0) ; Load 1 into R2
148 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
149 : ST 1, 2(5) ; Store function result into frame return slot
150 : LD 6, 0(5) ; Load return address
151 : LDA 7, 0(6) ; Return to caller
152 : LDA 4, 3(5) ; Compute callee base
153 : ST 1, 1(4) ; Store argument 0 in callee frame
154 : LDA 4, 3(5) ; Recompute callee base from callee size
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return address into callee frame
157 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
158 : LDA 7, 133(0) ; Call isPrime
159 : LD 1, 2(5) ; Load callee result into R1
160 : LDC 2, 3(0) ; Caller frame size
161 : SUB 5, 5, 2 ; Pop back to caller
162 : JEQ 1, 165(0) ; If condition is false, jump to ELSE
163 : LD 1, 1(5) ; Load parameter 'current' into R1
164 : LDA 7, 166(0) ; Skip ELSE block
165 : LDC 1, 0(0) ; Load integer-literal into R1
166 : LDA 4, 5(5) ; Recompute callee base from caller size
167 : LDA 6, 171(0) ; Return address
168 : ST 6, 0(4) ; Store return address in callee frame
169 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
170 : LDA 7, 9(0) ; Call built-in print
171 : LDC 2, 5(0) ; Caller frame size
172 : SUB 5, 5, 2 ; Pop back to caller
173 : LD 1, 1(5) ; Load parameter 'current' into R1
174 : ST 1, 4(5) ; Spill left operand at depth 0
175 : LDC 1, 1(0) ; Load integer-literal into R1
176 : LD 2, 4(5) ; Restore left operand from depth 0
177 : ADD 1, 2, 1 ; R1 = left + right
178 : LDA 4, 5(5) ; Compute callee base
179 : ST 1, 1(4) ; Store argument 0 in callee frame
180 : LD 1, 2(5) ; Load parameter 'max' into R1
181 : LDA 4, 5(5) ; Compute callee base
182 : ST 1, 2(4) ; Store argument 1 in callee frame
183 : LDA 4, 5(5) ; Recompute callee base from callee size
184 : LDA 6, 188(0) ; Return address
185 : ST 6, 0(4) ; Store return address into callee frame
186 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
187 : LDA 7, 194(0) ; Call sieveAt
188 : LD 1, 3(5) ; Load callee result into R1
189 : LDC 2, 5(0) ; Caller frame size
190 : SUB 5, 5, 2 ; Pop back to caller
191 : ST 1, 3(5) ; Store function result into frame return slot
192 : LD 6, 0(5) ; Load return address
193 : LDA 7, 0(6) ; Return to caller
194 : LD 1, 2(5) ; Load parameter 'max' into R1
195 : ST 1, 4(5) ; Spill left operand at depth 0
196 : LD 1, 1(5) ; Load parameter 'current' into R1
197 : LD 2, 4(5) ; Restore left operand from depth 0
198 : SUB 1, 2, 1 ; left - right for less-than check
199 : JLT 1, 2(7) ; If R1 < 0, jump to true
200 : LDC 1, 0(0) ; false
201 : LDA 7, 1(7) ; skip setting true
202 : LDC 1, 1(0) ; true
203 : JEQ 1, 206(0) ; If condition is false, jump to ELSE
204 : LDC 1, 1(0) ; Load boolean-literal into R1
205 : LDA 7, 220(0) ; Skip ELSE block
206 : LD 1, 1(5) ; Load parameter 'current' into R1
207 : LDA 4, 5(5) ; Compute callee base
208 : ST 1, 1(4) ; Store argument 0 in callee frame
209 : LD 1, 2(5) ; Load parameter 'max' into R1
210 : LDA 4, 5(5) ; Compute callee base
211 : ST 1, 2(4) ; Store argument 1 in callee frame
212 : LDA 4, 5(5) ; Recompute callee base from callee size
213 : LDA 6, 217(0) ; Return address
214 : ST 6, 0(4) ; Store return address into callee frame
215 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
216 : LDA 7, 152(0) ; Call doSieveAt
217 : LD 1, 3(5) ; Load callee result into R1
218 : LDC 2, 5(0) ; Caller frame size
219 : SUB 5, 5, 2 ; Pop back to caller
220 : ST 1, 3(5) ; Store function result into frame return slot
221 : LD 6, 0(5) ; Load return address
222 : LDA 7, 0(6) ; Return to caller
