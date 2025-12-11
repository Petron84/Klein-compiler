0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 5(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LDA 6, 2(7) ; Calculate return address (PC + 2)
8 : ST 6, 0(5) ; Store return address in main frame
9 : LDA 7, 15(0) ; Branch to main function
10 : OUT 1, 0, 0 ; Return/print result from main in R1
11 : HALT 0, 0, 0 ; Terminate program
12 : OUT 1, 0, 0 ; Hardcoded print: output R1
13 : LD 6, 0(5) ; Load return address from current frame
14 : LDA 7, 0(6) ; Jump back to caller
15 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
16 : ST 1, 4(5) ; Spill left operand at depth 0
17 : LDC 1, 0(0) ; Load integer-literal into R1
18 : LD 2, 4(5) ; Restore left operand from depth 0
19 : SUB 1, 2, 1 ; left - right for equality check
20 : JEQ 1, 2(7) ; If R1 == 0, jump to true
21 : LDC 1, 0(0) ; false
22 : LDA 7, 1(7) ; skip setting true
23 : LDC 1, 1(0) ; true
24 : JEQ 1, 45(0) ; If condition is false, jump to ELSE
25 : LDC 1, 2147481647(0) ; Load integer-literal into R1
26 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
27 : ST 1, 1(2) ; Store argument 0 in callee
28 : LDC 1, 2047483747(0) ; Load integer-literal into R1
29 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
30 : ST 1, 2(2) ; Store argument 1 in callee
31 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
32 : LDA 6, 38(0) ; Return address
33 : ST 6, 0(2) ; Store return in callee frame
34 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
35 : LDC 3, 4(0) ; Callee frame size
36 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
37 : LDA 7, 190(0) ; Call factor
38 : LD 1, 3(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
41 : LDC 3, 5(0) ; Caller frame size
42 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
43 : ST 1, 3(5) ; Store result into caller’s frame
44 : LDA 7, 64(0) ; Skip ELSE block
45 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
46 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
47 : ST 1, 1(2) ; Store argument 0 in callee
48 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
49 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
50 : ST 1, 2(2) ; Store argument 1 in callee
51 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
52 : LDA 6, 58(0) ; Return address
53 : ST 6, 0(2) ; Store return in callee frame
54 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
55 : LDC 3, 4(0) ; Callee frame size
56 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
57 : LDA 7, 190(0) ; Call factor
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 4(0) ; Callee frame size
60 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
61 : LDC 3, 5(0) ; Caller frame size
62 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
63 : ST 1, 3(5) ; Store result into caller’s frame
64 : LD 1, 3(5) ; Load main return value into R1
65 : LD 6, 0(5) ; Load main return address
66 : LDA 7, 0(6) ; Return from main
67 : LD 1, 1(5) ; Load parameter 'a' into R1
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LD 1, 2(5) ; Load parameter 'b' into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : SUB 1, 2, 1 ; left - right for less-than check
72 : JLT 1, 2(7) ; If R1 < 0, jump to true
73 : LDC 1, 0(0) ; false
74 : LDA 7, 1(7) ; skip setting true
75 : LDC 1, 1(0) ; true
76 : JEQ 1, 79(0) ; If condition is false, jump to ELSE
77 : LD 1, 1(5) ; Load parameter 'a' into R1
78 : LDA 7, 101(0) ; Skip ELSE block
79 : LD 1, 1(5) ; Load parameter 'a' into R1
80 : ST 1, 4(5) ; Spill left operand at depth 0
81 : LD 1, 2(5) ; Load parameter 'b' into R1
82 : LD 2, 4(5) ; Restore left operand from depth 0
83 : SUB 1, 2, 1 ; R1 = left - right
84 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
85 : ST 1, 1(2) ; Store argument 0 in callee
86 : LD 1, 2(5) ; Load parameter 'b' into R1
87 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
88 : ST 1, 2(2) ; Store argument 1 in callee
89 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
90 : LDA 6, 96(0) ; Return address
91 : ST 6, 0(2) ; Store return in callee frame
92 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
93 : LDC 3, 5(0) ; Callee frame size
94 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
95 : LDA 7, 67(0) ; Call remainder
96 : LD 1, 3(5) ; Load callee result into R1
97 : LDC 2, 5(0) ; Callee frame size
98 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
99 : LDC 3, 5(0) ; Caller frame size
100 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
101 : ST 1, 3(5) ; Store function result into frame return slot
102 : LD 6, 0(5) ; Load return address
103 : LDA 7, 0(6) ; Return to caller
104 : LD 1, 2(5) ; Load parameter 'b' into R1
105 : ST 1, 4(5) ; Spill left operand at depth 0
106 : LDC 1, 0(0) ; Load integer-literal into R1
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : SUB 1, 2, 1 ; left - right for equality check
109 : JEQ 1, 2(7) ; If R1 == 0, jump to true
110 : LDC 1, 0(0) ; false
111 : LDA 7, 1(7) ; skip setting true
112 : LDC 1, 1(0) ; true
113 : JEQ 1, 116(0) ; If condition is false, jump to ELSE
114 : LD 1, 1(5) ; Load parameter 'a' into R1
115 : LDA 7, 151(0) ; Skip ELSE block
116 : LD 1, 2(5) ; Load parameter 'b' into R1
117 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
118 : ST 1, 1(2) ; Store argument 0 in callee
119 : LD 1, 1(5) ; Load parameter 'a' into R1
120 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
121 : ST 1, 1(2) ; Store argument 0 in callee
122 : LD 1, 2(5) ; Load parameter 'b' into R1
123 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
124 : ST 1, 2(2) ; Store argument 1 in callee
125 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
126 : LDA 6, 132(0) ; Return address
127 : ST 6, 0(2) ; Store return in callee frame
128 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
129 : LDC 3, 5(0) ; Callee frame size
130 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
131 : LDA 7, 67(0) ; Call remainder
132 : LD 1, 3(5) ; Load callee result into R1
133 : LDC 2, 5(0) ; Callee frame size
134 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
135 : LDC 3, 5(0) ; Caller frame size
136 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
137 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
138 : ST 1, 2(2) ; Store argument 1 in callee
139 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
140 : LDA 6, 146(0) ; Return address
141 : ST 6, 0(2) ; Store return in callee frame
142 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
143 : LDC 3, 5(0) ; Callee frame size
144 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
145 : LDA 7, 104(0) ; Call gcd
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 5(0) ; Callee frame size
148 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
149 : LDC 3, 5(0) ; Caller frame size
150 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
151 : ST 1, 3(5) ; Store function result into frame return slot
152 : LD 6, 0(5) ; Load return address
153 : LDA 7, 0(6) ; Return to caller
154 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
155 : ST 1, 5(5) ; Spill left operand at depth 0
156 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
157 : LD 2, 5(5) ; Restore left operand from depth 0
158 : DIV 1, 2, 1 ; R1 = left / right
159 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
160 : LDA 6, 166(0) ; Return address
161 : ST 6, 0(2) ; Store return address in callee frame
162 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
163 : LDC 3, 3(0) ; Callee frame size
164 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
165 : LDA 7, 12(0) ; Call built-in print
166 : LDC 2, 3(0) ; Callee frame size
167 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
168 : LDC 3, 5(0) ; Caller frame size
169 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
170 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
171 : ST 1, 5(5) ; Spill left operand at depth 0
172 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
173 : LD 2, 5(5) ; Restore left operand from depth 0
174 : DIV 1, 2, 1 ; R1 = left / right
175 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
176 : LDA 6, 182(0) ; Return address
177 : ST 6, 0(2) ; Store return address in callee frame
178 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
179 : LDC 3, 3(0) ; Callee frame size
180 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
181 : LDA 7, 12(0) ; Call built-in print
182 : LDC 2, 3(0) ; Callee frame size
183 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
184 : LDC 3, 5(0) ; Caller frame size
185 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
186 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
187 : ST 1, 4(5) ; Store function result into frame return slot
188 : LD 6, 0(5) ; Load return address
189 : LDA 7, 0(6) ; Return to caller
190 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
191 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
192 : ST 1, 1(2) ; Store argument 0 in callee
193 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
194 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
195 : ST 1, 2(2) ; Store argument 1 in callee
196 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
197 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
198 : ST 1, 1(2) ; Store argument 0 in callee
199 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
200 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
201 : ST 1, 2(2) ; Store argument 1 in callee
202 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
203 : LDA 6, 209(0) ; Return address
204 : ST 6, 0(2) ; Store return in callee frame
205 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
206 : LDC 3, 5(0) ; Callee frame size
207 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
208 : LDA 7, 104(0) ; Call gcd
209 : LD 1, 3(5) ; Load callee result into R1
210 : LDC 2, 5(0) ; Callee frame size
211 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
212 : LDC 3, 4(0) ; Caller frame size
213 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
214 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
215 : ST 1, 3(2) ; Store argument 2 in callee
216 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
217 : LDA 6, 223(0) ; Return address
218 : ST 6, 0(2) ; Store return in callee frame
219 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
220 : LDC 3, 5(0) ; Callee frame size
221 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
222 : LDA 7, 154(0) ; Call displayAndPrint
223 : LD 1, 4(5) ; Load callee result into R1
224 : LDC 2, 5(0) ; Callee frame size
225 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
226 : LDC 3, 4(0) ; Caller frame size
227 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
228 : ST 1, 3(5) ; Store function result into frame return slot
229 : LD 6, 0(5) ; Load return address
230 : LDA 7, 0(6) ; Return to caller
