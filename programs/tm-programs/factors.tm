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
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
15 : ST 1, 1(2) ; Store argument 0 in callee
16 : LDC 1, 1(0) ; Load integer-literal into R1
17 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
18 : ST 1, 2(2) ; Store argument 1 in callee
19 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
20 : LDA 6, 26(0) ; Return address
21 : ST 6, 0(2) ; Store return in callee frame
22 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
23 : LDC 3, 5(0) ; Callee frame size
24 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
25 : LDA 7, 201(0) ; Call loopToN
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
63 : LDA 7, 35(0) ; Call remainder
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
84 : LDA 7, 35(0) ; Call remainder
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
101 : LD 1, 2(5) ; Load parameter 'current' into R1
102 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
103 : LDA 6, 109(0) ; Return address
104 : ST 6, 0(2) ; Store return address in callee frame
105 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
106 : LDC 3, 3(0) ; Callee frame size
107 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
108 : LDA 7, 10(0) ; Call built-in print
109 : LDC 2, 3(0) ; Callee frame size
110 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
111 : LDC 3, 5(0) ; Caller frame size
112 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
113 : LD 1, 1(5) ; Load parameter 'n' into R1
114 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
115 : ST 1, 1(2) ; Store argument 0 in callee
116 : LD 1, 2(5) ; Load parameter 'current' into R1
117 : ST 1, 4(5) ; Spill left operand at depth 0
118 : LDC 1, 1(0) ; Load integer-literal into R1
119 : LD 2, 4(5) ; Restore left operand from depth 0
120 : ADD 1, 2, 1 ; R1 = left + right
121 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
122 : ST 1, 2(2) ; Store argument 1 in callee
123 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
124 : LDA 6, 130(0) ; Return address
125 : ST 6, 0(2) ; Store return in callee frame
126 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
127 : LDC 3, 5(0) ; Callee frame size
128 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
129 : LDA 7, 201(0) ; Call loopToN
130 : LD 1, 3(5) ; Load callee result into R1
131 : LDC 2, 5(0) ; Callee frame size
132 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
133 : LDC 3, 5(0) ; Caller frame size
134 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
135 : ST 1, 3(5) ; Store function result into frame return slot
136 : LD 6, 0(5) ; Load return address
137 : LDA 7, 0(6) ; Return to caller
138 : LD 1, 2(5) ; Load parameter 'current' into R1
139 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
140 : ST 1, 1(2) ; Store argument 0 in callee
141 : LD 1, 1(5) ; Load parameter 'n' into R1
142 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
143 : ST 1, 2(2) ; Store argument 1 in callee
144 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
145 : LDA 6, 151(0) ; Return address
146 : ST 6, 0(2) ; Store return in callee frame
147 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
148 : LDC 3, 5(0) ; Callee frame size
149 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
150 : LDA 7, 72(0) ; Call divides
151 : LD 1, 3(5) ; Load callee result into R1
152 : LDC 2, 5(0) ; Callee frame size
153 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
154 : LDC 3, 5(0) ; Caller frame size
155 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
156 : JEQ 1, 176(0) ; If condition is false, jump to ELSE
157 : LD 1, 1(5) ; Load parameter 'n' into R1
158 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
159 : ST 1, 1(2) ; Store argument 0 in callee
160 : LD 1, 2(5) ; Load parameter 'current' into R1
161 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
162 : ST 1, 2(2) ; Store argument 1 in callee
163 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
164 : LDA 6, 170(0) ; Return address
165 : ST 6, 0(2) ; Store return in callee frame
166 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
167 : LDC 3, 5(0) ; Callee frame size
168 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
169 : LDA 7, 101(0) ; Call printAndLoop
170 : LD 1, 3(5) ; Load callee result into R1
171 : LDC 2, 5(0) ; Callee frame size
172 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
173 : LDC 3, 5(0) ; Caller frame size
174 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
175 : LDA 7, 198(0) ; Skip ELSE block
176 : LD 1, 1(5) ; Load parameter 'n' into R1
177 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
178 : ST 1, 1(2) ; Store argument 0 in callee
179 : LD 1, 2(5) ; Load parameter 'current' into R1
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LDC 1, 1(0) ; Load integer-literal into R1
182 : LD 2, 4(5) ; Restore left operand from depth 0
183 : ADD 1, 2, 1 ; R1 = left + right
184 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
185 : ST 1, 2(2) ; Store argument 1 in callee
186 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
187 : LDA 6, 193(0) ; Return address
188 : ST 6, 0(2) ; Store return in callee frame
189 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
190 : LDC 3, 5(0) ; Callee frame size
191 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
192 : LDA 7, 201(0) ; Call loopToN
193 : LD 1, 3(5) ; Load callee result into R1
194 : LDC 2, 5(0) ; Callee frame size
195 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
196 : LDC 3, 5(0) ; Caller frame size
197 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
198 : ST 1, 3(5) ; Store function result into frame return slot
199 : LD 6, 0(5) ; Load return address
200 : LDA 7, 0(6) ; Return to caller
201 : LD 1, 1(5) ; Load parameter 'n' into R1
202 : ST 1, 4(5) ; Spill left operand at depth 0
203 : LD 1, 2(5) ; Load parameter 'current' into R1
204 : LD 2, 4(5) ; Restore left operand from depth 0
205 : SUB 1, 2, 1 ; left - right for equality check
206 : JEQ 1, 2(7) ; If R1 == 0, jump to true
207 : LDC 1, 0(0) ; false
208 : LDA 7, 1(7) ; skip setting true
209 : LDC 1, 1(0) ; true
210 : JEQ 1, 213(0) ; If condition is false, jump to ELSE
211 : LD 1, 1(5) ; Load parameter 'n' into R1
212 : LDA 7, 231(0) ; Skip ELSE block
213 : LD 1, 1(5) ; Load parameter 'n' into R1
214 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
215 : ST 1, 1(2) ; Store argument 0 in callee
216 : LD 1, 2(5) ; Load parameter 'current' into R1
217 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
218 : ST 1, 2(2) ; Store argument 1 in callee
219 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
220 : LDA 6, 226(0) ; Return address
221 : ST 6, 0(2) ; Store return in callee frame
222 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
223 : LDC 3, 5(0) ; Callee frame size
224 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
225 : LDA 7, 138(0) ; Call testAndLoop
226 : LD 1, 3(5) ; Load callee result into R1
227 : LDC 2, 5(0) ; Callee frame size
228 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
229 : LDC 3, 5(0) ; Caller frame size
230 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
231 : ST 1, 3(5) ; Store function result into frame return slot
232 : LD 6, 0(5) ; Load return address
233 : LDA 7, 0(6) ; Return to caller
