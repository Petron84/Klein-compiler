0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : LDA 4, 2(5) ; Compute callee base = FP + caller_size
12 : ST 1, 1(4) ; Store argument 0 in callee param slot
13 : LDC 1, 20(0) ; Load integer-literal into R1
14 : LDA 4, 2(5) ; Compute callee base = FP + caller_size
15 : ST 1, 2(4) ; Store argument 1 in callee param slot
16 : LDA 4, 2(5) ; Compute callee base = FP + caller_size
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 28(0) ; Call sumPrimes
21 : LD 1, 3(5) ; Load callee result into R1
22 : LDC 2, 2(0) ; Caller frame size
23 : SUB 5, 5, 2 ; Pop callee frame back to caller
24 : ST 1, 1(5) ; Store result into caller’s frame return slot
25 : LD 1, 1(5) ; Load main return value into R1
26 : LD 6, 0(5) ; Load main return address
27 : LDA 7, 0(6) ; Return from main
28 : LD 1, 2(5) ; Load parameter 'b' into R1
29 : ST 1, 4(5) ; Spill left operand at depth 0
30 : LD 1, 1(5) ; Load parameter 'a' into R1
31 : LD 2, 4(5) ; Restore left operand from depth 0
32 : SUB 1, 2, 1 ; left - right for less-than check
33 : JLT 1, 2(7) ; If R1 < 0, jump to true
34 : LDC 1, 0(0) ; false
35 : LDA 7, 1(7) ; skip setting true
36 : LDC 1, 1(0) ; true
37 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
38 : LDC 1, 0(0) ; Load integer-literal into R1
39 : LDA 7, 93(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'a' into R1
41 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
42 : ST 1, 1(4) ; Store argument 0 in callee param slot
43 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 150(0) ; Call isPrime
48 : LD 1, 2(5) ; Load callee result into R1
49 : LDC 2, 6(0) ; Caller frame size
50 : SUB 5, 5, 2 ; Pop callee frame back to caller
51 : JEQ 1, 75(0) ; If condition is false, jump to ELSE
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : ST 1, 4(5) ; Spill left operand at depth 0
54 : LD 1, 1(5) ; Load parameter 'a' into R1
55 : ST 1, 5(5) ; Spill left operand at depth 1
56 : LDC 1, 1(0) ; Load integer-literal into R1
57 : LD 2, 5(5) ; Restore left operand from depth 1
58 : ADD 1, 2, 1 ; R1 = left + right
59 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
60 : ST 1, 1(4) ; Store argument 0 in callee param slot
61 : LD 1, 2(5) ; Load parameter 'b' into R1
62 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
63 : ST 1, 2(4) ; Store argument 1 in callee param slot
64 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
65 : LDA 6, 69(0) ; Return address
66 : ST 6, 0(4) ; Store return in callee frame
67 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
68 : LDA 7, 28(0) ; Call sumPrimes
69 : LD 1, 3(5) ; Load callee result into R1
70 : LDC 2, 6(0) ; Caller frame size
71 : SUB 5, 5, 2 ; Pop callee frame back to caller
72 : LD 2, 4(5) ; Restore left operand from depth 0
73 : ADD 1, 2, 1 ; R1 = left + right
74 : LDA 7, 93(0) ; Skip ELSE block
75 : LD 1, 1(5) ; Load parameter 'a' into R1
76 : ST 1, 4(5) ; Spill left operand at depth 0
77 : LDC 1, 1(0) ; Load integer-literal into R1
78 : LD 2, 4(5) ; Restore left operand from depth 0
79 : ADD 1, 2, 1 ; R1 = left + right
80 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
81 : ST 1, 1(4) ; Store argument 0 in callee param slot
82 : LD 1, 2(5) ; Load parameter 'b' into R1
83 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
84 : ST 1, 2(4) ; Store argument 1 in callee param slot
85 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
89 : LDA 7, 28(0) ; Call sumPrimes
90 : LD 1, 3(5) ; Load callee result into R1
91 : LDC 2, 6(0) ; Caller frame size
92 : SUB 5, 5, 2 ; Pop callee frame back to caller
93 : ST 1, 3(5) ; Store function result into frame return slot
94 : LD 6, 0(5) ; Load return address
95 : LDA 7, 0(6) ; Return to caller
96 : LD 1, 1(5) ; Load parameter 'n' into R1
97 : ST 1, 4(5) ; Spill left operand at depth 0
98 : LD 1, 2(5) ; Load parameter 'd' into R1
99 : ST 1, 5(5) ; Spill left operand at depth 1
100 : LD 1, 2(5) ; Load parameter 'd' into R1
101 : LD 2, 5(5) ; Restore left operand from depth 1
102 : MUL 1, 2, 1 ; R1 = left * right
103 : LD 2, 4(5) ; Restore left operand from depth 0
104 : SUB 1, 2, 1 ; left - right for less-than check
105 : JLT 1, 2(7) ; If R1 < 0, jump to true
106 : LDC 1, 0(0) ; false
107 : LDA 7, 1(7) ; skip setting true
108 : LDC 1, 1(0) ; true
109 : JEQ 1, 112(0) ; If condition is false, jump to ELSE
110 : LDC 1, 1(0) ; Load boolean-literal into R1
111 : LDA 7, 147(0) ; Skip ELSE block
112 : LD 1, 1(5) ; Load parameter 'n' into R1
113 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
114 : ST 1, 1(4) ; Store argument 0 in callee param slot
115 : LD 1, 2(5) ; Load parameter 'd' into R1
116 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
117 : ST 1, 2(4) ; Store argument 1 in callee param slot
118 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
119 : LDA 6, 123(0) ; Return address
120 : ST 6, 0(4) ; Store return in callee frame
121 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
122 : LDA 7, 208(0) ; Call divisible
123 : LD 1, 3(5) ; Load callee result into R1
124 : LDC 2, 6(0) ; Caller frame size
125 : SUB 5, 5, 2 ; Pop callee frame back to caller
126 : JEQ 1, 129(0) ; If condition is false, jump to ELSE
127 : LDC 1, 0(0) ; Load boolean-literal into R1
128 : LDA 7, 147(0) ; Skip ELSE block
129 : LD 1, 1(5) ; Load parameter 'n' into R1
130 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
131 : ST 1, 1(4) ; Store argument 0 in callee param slot
132 : LD 1, 2(5) ; Load parameter 'd' into R1
133 : ST 1, 4(5) ; Spill left operand at depth 0
134 : LDC 1, 2(0) ; Load integer-literal into R1
135 : LD 2, 4(5) ; Restore left operand from depth 0
136 : ADD 1, 2, 1 ; R1 = left + right
137 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
138 : ST 1, 2(4) ; Store argument 1 in callee param slot
139 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return in callee frame
142 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
143 : LDA 7, 96(0) ; Call checkOdd
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 6(0) ; Caller frame size
146 : SUB 5, 5, 2 ; Pop callee frame back to caller
147 : ST 1, 3(5) ; Store function result into frame return slot
148 : LD 6, 0(5) ; Load return address
149 : LDA 7, 0(6) ; Return to caller
150 : LD 1, 1(5) ; Load parameter 'n' into R1
151 : ST 1, 3(5) ; Spill left operand at depth 0
152 : LDC 1, 2(0) ; Load integer-literal into R1
153 : LD 2, 3(5) ; Restore left operand from depth 0
154 : SUB 1, 2, 1 ; left - right for less-than check
155 : JLT 1, 2(7) ; If R1 < 0, jump to true
156 : LDC 1, 0(0) ; false
157 : LDA 7, 1(7) ; skip setting true
158 : LDC 1, 1(0) ; true
159 : JEQ 1, 162(0) ; If condition is false, jump to ELSE
160 : LDC 1, 0(0) ; Load boolean-literal into R1
161 : LDA 7, 205(0) ; Skip ELSE block
162 : LD 1, 1(5) ; Load parameter 'n' into R1
163 : ST 1, 3(5) ; Spill left operand at depth 0
164 : LDC 1, 2(0) ; Load integer-literal into R1
165 : LD 2, 3(5) ; Restore left operand from depth 0
166 : SUB 1, 2, 1 ; left - right for equality check
167 : JEQ 1, 2(7) ; If R1 == 0, jump to true
168 : LDC 1, 0(0) ; false
169 : LDA 7, 1(7) ; skip setting true
170 : LDC 1, 1(0) ; true
171 : JEQ 1, 174(0) ; If condition is false, jump to ELSE
172 : LDC 1, 1(0) ; Load boolean-literal into R1
173 : LDA 7, 205(0) ; Skip ELSE block
174 : LD 1, 1(5) ; Load parameter 'n' into R1
175 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
176 : ST 1, 1(4) ; Store argument 0 in callee param slot
177 : LDC 1, 2(0) ; Load integer-literal into R1
178 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
179 : ST 1, 2(4) ; Store argument 1 in callee param slot
180 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
181 : LDA 6, 185(0) ; Return address
182 : ST 6, 0(4) ; Store return in callee frame
183 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
184 : LDA 7, 208(0) ; Call divisible
185 : LD 1, 3(5) ; Load callee result into R1
186 : LDC 2, 4(0) ; Caller frame size
187 : SUB 5, 5, 2 ; Pop callee frame back to caller
188 : JEQ 1, 191(0) ; If condition is false, jump to ELSE
189 : LDC 1, 0(0) ; Load boolean-literal into R1
190 : LDA 7, 205(0) ; Skip ELSE block
191 : LD 1, 1(5) ; Load parameter 'n' into R1
192 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
193 : ST 1, 1(4) ; Store argument 0 in callee param slot
194 : LDC 1, 3(0) ; Load integer-literal into R1
195 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
196 : ST 1, 2(4) ; Store argument 1 in callee param slot
197 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
198 : LDA 6, 202(0) ; Return address
199 : ST 6, 0(4) ; Store return in callee frame
200 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
201 : LDA 7, 96(0) ; Call checkOdd
202 : LD 1, 3(5) ; Load callee result into R1
203 : LDC 2, 4(0) ; Caller frame size
204 : SUB 5, 5, 2 ; Pop callee frame back to caller
205 : ST 1, 2(5) ; Store function result into frame return slot
206 : LD 6, 0(5) ; Load return address
207 : LDA 7, 0(6) ; Return to caller
208 : LD 1, 2(5) ; Load parameter 'y' into R1
209 : ST 1, 4(5) ; Spill left operand at depth 0
210 : LDC 1, 0(0) ; Load integer-literal into R1
211 : LD 2, 4(5) ; Restore left operand from depth 0
212 : SUB 1, 2, 1 ; left - right for equality check
213 : JEQ 1, 2(7) ; If R1 == 0, jump to true
214 : LDC 1, 0(0) ; false
215 : LDA 7, 1(7) ; skip setting true
216 : LDC 1, 1(0) ; true
217 : JEQ 1, 220(0) ; If condition is false, jump to ELSE
218 : LDC 1, 0(0) ; Load boolean-literal into R1
219 : LDA 7, 241(0) ; Skip ELSE block
220 : LD 1, 1(5) ; Load parameter 'x' into R1
221 : ST 1, 4(5) ; Spill left operand at depth 0
222 : LD 1, 2(5) ; Load parameter 'y' into R1
223 : LD 2, 4(5) ; Restore left operand from depth 0
224 : DIV 1, 2, 1 ; R1 = left / right
225 : ST 1, 4(5) ; Spill left operand at depth 0
226 : LD 1, 2(5) ; Load parameter 'y' into R1
227 : LD 2, 4(5) ; Restore left operand from depth 0
228 : MUL 1, 2, 1 ; R1 = left * right
229 : ST 1, 4(5) ; Spill left operand at depth 0
230 : LD 1, 1(5) ; Load parameter 'x' into R1
231 : LD 2, 4(5) ; Restore left operand from depth 0
232 : SUB 1, 2, 1 ; left - right for equality check
233 : JEQ 1, 2(7) ; If R1 == 0, jump to true
234 : LDC 1, 0(0) ; false
235 : LDA 7, 1(7) ; skip setting true
236 : LDC 1, 1(0) ; true
237 : JEQ 1, 240(0) ; If condition is false, jump to ELSE
238 : LDC 1, 1(0) ; Load boolean-literal into R1
239 : LDA 7, 241(0) ; Skip ELSE block
240 : LDC 1, 0(0) ; Load boolean-literal into R1
241 : ST 1, 3(5) ; Store function result into frame return slot
242 : LD 6, 0(5) ; Load return address
243 : LDA 7, 0(6) ; Return to caller
