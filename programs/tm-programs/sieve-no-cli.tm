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
12 : LDA 4, 3(5) ; Compute callee base from caller size
13 : LDC 1, 2(0) ; Load integer-literal into R1
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 40(0) ; Load integer-literal into R1
16 : ST 1, 2(4) ; Store argument 1 in callee frame
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return address into callee frame
19 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
20 : LDA 7, 185(0) ; Call sieveAt
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 3(0) ; Caller frame size
23 : SUB 5, 5, 2 ; Pop back to caller
24 : ST 1, 2(5) ; Store result into caller’s return slot
25 : LD 1, 2(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 1(5) ; Load parameter 'num' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 2(5) ; Load parameter 'den' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LD 1, 1(5) ; Load parameter 'num' into R1
39 : LDA 7, 56(0) ; Skip ELSE block
40 : LDA 4, 5(5) ; Compute callee base from caller size
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : ST 1, 4(5) ; Spill left operand at depth 0
43 : LD 1, 2(5) ; Load parameter 'den' into R1
44 : LD 2, 4(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; R1 = left - right
46 : ST 1, 1(4) ; Store argument 0 in callee frame
47 : LD 1, 2(5) ; Load parameter 'den' into R1
48 : ST 1, 2(4) ; Store argument 1 in callee frame
49 : LDA 6, 53(0) ; Return address
50 : ST 6, 0(4) ; Store return address into callee frame
51 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
52 : LDA 7, 28(0) ; Call rem
53 : LD 1, 3(5) ; Load callee result into R1
54 : LDC 2, 5(0) ; Caller frame size
55 : SUB 5, 5, 2 ; Pop back to caller
56 : ST 1, 3(5) ; Store function result into frame return slot
57 : LD 6, 0(5) ; Load return address
58 : LDA 7, 0(6) ; Return to caller
59 : LDA 4, 5(5) ; Compute callee base from caller size
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : ST 1, 1(4) ; Store argument 0 in callee frame
62 : LD 1, 1(5) ; Load parameter 'a' into R1
63 : ST 1, 2(4) ; Store argument 1 in callee frame
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return address into callee frame
66 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
67 : LDA 7, 28(0) ; Call rem
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 5(0) ; Caller frame size
70 : SUB 5, 5, 2 ; Pop back to caller
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LDC 1, 0(0) ; Load integer-literal into R1
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; left - right for equality check
75 : JEQ 1, 2(7) ; If R1 == 0, jump to true
76 : LDC 1, 0(0) ; false
77 : LDA 7, 1(7) ; skip setting true
78 : LDC 1, 1(0) ; true
79 : ST 1, 3(5) ; Store function result into frame return slot
80 : LD 6, 0(5) ; Load return address
81 : LDA 7, 0(6) ; Return to caller
82 : LD 1, 1(5) ; Load parameter 'i' into R1
83 : ST 1, 4(5) ; Spill left operand at depth 0
84 : LD 1, 2(5) ; Load parameter 'n' into R1
85 : LD 2, 4(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; left - right for less-than check
87 : JLT 1, 2(7) ; If R1 < 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : JEQ 1, 124(0) ; If condition is false, jump to ELSE
92 : LDA 4, 6(5) ; Compute callee base from caller size
93 : LD 1, 1(5) ; Load parameter 'i' into R1
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : ST 1, 2(4) ; Store argument 1 in callee frame
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(4) ; Store return address into callee frame
99 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
100 : LDA 7, 59(0) ; Call divides
101 : LD 1, 3(5) ; Load callee result into R1
102 : LDC 2, 6(0) ; Caller frame size
103 : SUB 5, 5, 2 ; Pop back to caller
104 : ST 1, 4(5) ; Spill left operand at depth 0
105 : LDA 4, 6(5) ; Compute callee base from caller size
106 : LD 1, 1(5) ; Load parameter 'i' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 1
108 : LDC 1, 1(0) ; Load integer-literal into R1
109 : LD 2, 5(5) ; Restore left operand from depth 1
110 : ADD 1, 2, 1 ; R1 = left + right
111 : ST 1, 1(4) ; Store argument 0 in callee frame
112 : LD 1, 2(5) ; Load parameter 'n' into R1
113 : ST 1, 2(4) ; Store argument 1 in callee frame
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address into callee frame
116 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
117 : LDA 7, 82(0) ; Call hasDivisorFrom
118 : LD 1, 3(5) ; Load callee result into R1
119 : LDC 2, 6(0) ; Caller frame size
120 : SUB 5, 5, 2 ; Pop back to caller
121 : LD 2, 4(5) ; Restore left operand from depth 0
122 : ADD 1, 2, 1 ; R1 = left OR right
123 : LDA 7, 125(0) ; Skip ELSE block
124 : LDC 1, 0(0) ; Load boolean-literal into R1
125 : ST 1, 3(5) ; Store function result into frame return slot
126 : LD 6, 0(5) ; Load return address
127 : LDA 7, 0(6) ; Return to caller
128 : LDA 4, 3(5) ; Compute callee base from caller size
129 : LDC 1, 2(0) ; Load integer-literal into R1
130 : ST 1, 1(4) ; Store argument 0 in callee frame
131 : LD 1, 1(5) ; Load parameter 'n' into R1
132 : ST 1, 2(4) ; Store argument 1 in callee frame
133 : LDA 6, 137(0) ; Return address
134 : ST 6, 0(4) ; Store return address into callee frame
135 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
136 : LDA 7, 82(0) ; Call hasDivisorFrom
137 : LD 1, 3(5) ; Load callee result into R1
138 : LDC 2, 3(0) ; Caller frame size
139 : SUB 5, 5, 2 ; Pop back to caller
140 : LDC 2, 1(0) ; Load 1 into R2
141 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
142 : ST 1, 2(5) ; Store function result into frame return slot
143 : LD 6, 0(5) ; Load return address
144 : LDA 7, 0(6) ; Return to caller
145 : LDA 4, 5(5) ; Compute callee base from caller size
146 : LD 1, 1(5) ; Load parameter 'current' into R1
147 : ST 1, 1(4) ; Store argument 0 in callee frame
148 : LDA 6, 152(0) ; Return address
149 : ST 6, 0(4) ; Store return address into callee frame
150 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
151 : LDA 7, 128(0) ; Call isPrime
152 : LD 1, 2(5) ; Load callee result into R1
153 : LDC 2, 5(0) ; Caller frame size
154 : SUB 5, 5, 2 ; Pop back to caller
155 : JEQ 1, 158(0) ; If condition is false, jump to ELSE
156 : LD 1, 1(5) ; Load parameter 'current' into R1
157 : LDA 7, 159(0) ; Skip ELSE block
158 : LDC 1, 0(0) ; Load integer-literal into R1
159 : LDA 4, 5(5) ; Compute callee base from caller size
160 : LDA 6, 164(0) ; Return address
161 : ST 6, 0(4) ; Store return address into callee frame
162 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
163 : LDA 7, 9(0) ; Call built-in print
164 : LDC 2, 5(0) ; Caller frame size
165 : SUB 5, 5, 2 ; Pop back to caller
166 : LDA 4, 5(5) ; Compute callee base from caller size
167 : LD 1, 1(5) ; Load parameter 'current' into R1
168 : ST 1, 4(5) ; Spill left operand at depth 0
169 : LDC 1, 1(0) ; Load integer-literal into R1
170 : LD 2, 4(5) ; Restore left operand from depth 0
171 : ADD 1, 2, 1 ; R1 = left + right
172 : ST 1, 1(4) ; Store argument 0 in callee frame
173 : LD 1, 2(5) ; Load parameter 'max' into R1
174 : ST 1, 2(4) ; Store argument 1 in callee frame
175 : LDA 6, 179(0) ; Return address
176 : ST 6, 0(4) ; Store return address into callee frame
177 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
178 : LDA 7, 185(0) ; Call sieveAt
179 : LD 1, 3(5) ; Load callee result into R1
180 : LDC 2, 5(0) ; Caller frame size
181 : SUB 5, 5, 2 ; Pop back to caller
182 : ST 1, 3(5) ; Store function result into frame return slot
183 : LD 6, 0(5) ; Load return address
184 : LDA 7, 0(6) ; Return to caller
185 : LD 1, 2(5) ; Load parameter 'max' into R1
186 : ST 1, 4(5) ; Spill left operand at depth 0
187 : LD 1, 1(5) ; Load parameter 'current' into R1
188 : LD 2, 4(5) ; Restore left operand from depth 0
189 : SUB 1, 2, 1 ; left - right for less-than check
190 : JLT 1, 2(7) ; If R1 < 0, jump to true
191 : LDC 1, 0(0) ; false
192 : LDA 7, 1(7) ; skip setting true
193 : LDC 1, 1(0) ; true
194 : JEQ 1, 197(0) ; If condition is false, jump to ELSE
195 : LDC 1, 1(0) ; Load boolean-literal into R1
196 : LDA 7, 209(0) ; Skip ELSE block
197 : LDA 4, 5(5) ; Compute callee base from caller size
198 : LD 1, 1(5) ; Load parameter 'current' into R1
199 : ST 1, 1(4) ; Store argument 0 in callee frame
200 : LD 1, 2(5) ; Load parameter 'max' into R1
201 : ST 1, 2(4) ; Store argument 1 in callee frame
202 : LDA 6, 206(0) ; Return address
203 : ST 6, 0(4) ; Store return address into callee frame
204 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
205 : LDA 7, 145(0) ; Call doSieveAt
206 : LD 1, 3(5) ; Load callee result into R1
207 : LDC 2, 5(0) ; Caller frame size
208 : SUB 5, 5, 2 ; Pop back to caller
209 : ST 1, 3(5) ; Store function result into frame return slot
210 : LD 6, 0(5) ; Load return address
211 : LDA 7, 0(6) ; Return to caller
