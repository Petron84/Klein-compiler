0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 2(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LDA 6, 2(7) ; Calculate return address (PC + 2)
4 : ST 6, 0(5) ; Store return address in main frame
5 : LDA 7, 11(0) ; Branch to main function
6 : OUT 1, 0, 0 ; Return/print result from main in R1
7 : HALT 0, 0, 0 ; Terminate program
8 : OUT 1, 0, 0 ; Hardcoded print: output R1
9 : LD 6, 0(5) ; Load return address from current frame
10 : LDA 7, 0(6) ; Jump back to caller
11 : LDC 1, 2(0) ; Load integer-literal into R1
12 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
13 : ST 1, 1(2) ; Store argument 0 in callee
14 : LDC 1, 20(0) ; Load integer-literal into R1
15 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
16 : ST 1, 2(2) ; Store argument 1 in callee
17 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
18 : LDA 6, 24(0) ; Return address
19 : ST 6, 0(2) ; Store return in callee frame
20 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
21 : LDC 3, 6(0) ; Callee frame size
22 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
23 : LDA 7, 33(0) ; Call sumPrimes
24 : LD 1, 3(5) ; Load callee result into R1
25 : LDC 2, 6(0) ; Callee frame size
26 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
27 : LDC 3, 2(0) ; Caller frame size
28 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
29 : ST 1, 1(5) ; Store result into caller’s frame
30 : LD 1, 1(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load main return address
32 : LDA 7, 0(6) ; Return from main
33 : LD 1, 2(5) ; Load parameter 'b' into R1
34 : ST 1, 4(5) ; Spill left operand at depth 0
35 : LD 1, 1(5) ; Load parameter 'a' into R1
36 : LD 2, 4(5) ; Restore left operand from depth 0
37 : SUB 1, 2, 1 ; left - right for less-than check
38 : JLT 1, 2(7) ; If R1 < 0, jump to true
39 : LDC 1, 0(0) ; false
40 : LDA 7, 1(7) ; skip setting true
41 : LDC 1, 1(0) ; true
42 : JEQ 1, 45(0) ; If condition is false, jump to ELSE
43 : LDC 1, 0(0) ; Load integer-literal into R1
44 : LDA 7, 110(0) ; Skip ELSE block
45 : LD 1, 1(5) ; Load parameter 'a' into R1
46 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
47 : ST 1, 1(2) ; Store argument 0 in callee
48 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
49 : LDA 6, 55(0) ; Return address
50 : ST 6, 0(2) ; Store return in callee frame
51 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
52 : LDC 3, 4(0) ; Callee frame size
53 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
54 : LDA 7, 113(0) ; Call isPrime
55 : LD 1, 2(5) ; Load callee result into R1
56 : LDC 2, 4(0) ; Callee frame size
57 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
58 : LDC 3, 6(0) ; Caller frame size
59 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
60 : JEQ 1, 88(0) ; If condition is false, jump to ELSE
61 : LD 1, 1(5) ; Load parameter 'a' into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LD 1, 1(5) ; Load parameter 'a' into R1
64 : ST 1, 5(5) ; Spill left operand at depth 1
65 : LDC 1, 1(0) ; Load integer-literal into R1
66 : LD 2, 5(5) ; Restore left operand from depth 1
67 : ADD 1, 2, 1 ; R1 = left + right
68 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
69 : ST 1, 1(2) ; Store argument 0 in callee
70 : LD 1, 2(5) ; Load parameter 'b' into R1
71 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
72 : ST 1, 2(2) ; Store argument 1 in callee
73 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
74 : LDA 6, 80(0) ; Return address
75 : ST 6, 0(2) ; Store return in callee frame
76 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
77 : LDC 3, 6(0) ; Callee frame size
78 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
79 : LDA 7, 33(0) ; Call sumPrimes
80 : LD 1, 3(5) ; Load callee result into R1
81 : LDC 2, 6(0) ; Callee frame size
82 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
83 : LDC 3, 6(0) ; Caller frame size
84 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
85 : LD 2, 4(5) ; Restore left operand from depth 0
86 : ADD 1, 2, 1 ; R1 = left + right
87 : LDA 7, 110(0) ; Skip ELSE block
88 : LD 1, 1(5) ; Load parameter 'a' into R1
89 : ST 1, 4(5) ; Spill left operand at depth 0
90 : LDC 1, 1(0) ; Load integer-literal into R1
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : ADD 1, 2, 1 ; R1 = left + right
93 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
94 : ST 1, 1(2) ; Store argument 0 in callee
95 : LD 1, 2(5) ; Load parameter 'b' into R1
96 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
97 : ST 1, 2(2) ; Store argument 1 in callee
98 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
99 : LDA 6, 105(0) ; Return address
100 : ST 6, 0(2) ; Store return in callee frame
101 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
102 : LDC 3, 6(0) ; Callee frame size
103 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
104 : LDA 7, 33(0) ; Call sumPrimes
105 : LD 1, 3(5) ; Load callee result into R1
106 : LDC 2, 6(0) ; Callee frame size
107 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
108 : LDC 3, 6(0) ; Caller frame size
109 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
110 : ST 1, 3(5) ; Store function result into frame return slot
111 : LD 6, 0(5) ; Load return address
112 : LDA 7, 0(6) ; Return to caller
113 : LD 1, 1(5) ; Load parameter 'n' into R1
114 : ST 1, 3(5) ; Spill left operand at depth 0
115 : LDC 1, 2(0) ; Load integer-literal into R1
116 : LD 2, 3(5) ; Restore left operand from depth 0
117 : SUB 1, 2, 1 ; left - right for less-than check
118 : JLT 1, 2(7) ; If R1 < 0, jump to true
119 : LDC 1, 0(0) ; false
120 : LDA 7, 1(7) ; skip setting true
121 : LDC 1, 1(0) ; true
122 : JEQ 1, 125(0) ; If condition is false, jump to ELSE
123 : LDC 1, 0(0) ; Load boolean-literal into R1
124 : LDA 7, 201(0) ; Skip ELSE block
125 : LD 1, 1(5) ; Load parameter 'n' into R1
126 : ST 1, 3(5) ; Spill left operand at depth 0
127 : LDC 1, 2(0) ; Load integer-literal into R1
128 : LD 2, 3(5) ; Restore left operand from depth 0
129 : SUB 1, 2, 1 ; left - right for equality check
130 : JEQ 1, 2(7) ; If R1 == 0, jump to true
131 : LDC 1, 0(0) ; false
132 : LDA 7, 1(7) ; skip setting true
133 : LDC 1, 1(0) ; true
134 : JEQ 1, 137(0) ; If condition is false, jump to ELSE
135 : LDC 1, 1(0) ; Load boolean-literal into R1
136 : LDA 7, 201(0) ; Skip ELSE block
137 : LD 1, 1(5) ; Load parameter 'n' into R1
138 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
139 : ST 1, 1(2) ; Store argument 0 in callee
140 : LDC 1, 2(0) ; Load integer-literal into R1
141 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
142 : ST 1, 2(2) ; Store argument 1 in callee
143 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
144 : LDA 6, 150(0) ; Return address
145 : ST 6, 0(2) ; Store return in callee frame
146 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
147 : LDC 3, 5(0) ; Callee frame size
148 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
149 : LDA 7, 204(0) ; Call divisible
150 : LD 1, 3(5) ; Load callee result into R1
151 : LDC 2, 5(0) ; Callee frame size
152 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
153 : LDC 3, 4(0) ; Caller frame size
154 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
155 : ST 1, 3(5) ; Spill left operand at depth 0
156 : LD 1, 1(5) ; Load parameter 'n' into R1
157 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
158 : ST 1, 1(2) ; Store argument 0 in callee
159 : LDC 1, 3(0) ; Load integer-literal into R1
160 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
161 : ST 1, 2(2) ; Store argument 1 in callee
162 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
163 : LDA 6, 169(0) ; Return address
164 : ST 6, 0(2) ; Store return in callee frame
165 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
166 : LDC 3, 5(0) ; Callee frame size
167 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
168 : LDA 7, 204(0) ; Call divisible
169 : LD 1, 3(5) ; Load callee result into R1
170 : LDC 2, 5(0) ; Callee frame size
171 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
172 : LDC 3, 4(0) ; Caller frame size
173 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
174 : LD 2, 3(5) ; Restore left operand from depth 0
175 : ADD 1, 2, 1 ; R1 = left OR right
176 : ST 1, 3(5) ; Spill left operand at depth 0
177 : LD 1, 1(5) ; Load parameter 'n' into R1
178 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
179 : ST 1, 1(2) ; Store argument 0 in callee
180 : LDC 1, 5(0) ; Load integer-literal into R1
181 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
182 : ST 1, 2(2) ; Store argument 1 in callee
183 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
184 : LDA 6, 190(0) ; Return address
185 : ST 6, 0(2) ; Store return in callee frame
186 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
187 : LDC 3, 5(0) ; Callee frame size
188 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
189 : LDA 7, 204(0) ; Call divisible
190 : LD 1, 3(5) ; Load callee result into R1
191 : LDC 2, 5(0) ; Callee frame size
192 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
193 : LDC 3, 4(0) ; Caller frame size
194 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
195 : LD 2, 3(5) ; Restore left operand from depth 0
196 : ADD 1, 2, 1 ; R1 = left OR right
197 : JEQ 1, 200(0) ; If condition is false, jump to ELSE
198 : LDC 1, 0(0) ; Load boolean-literal into R1
199 : LDA 7, 201(0) ; Skip ELSE block
200 : LDC 1, 1(0) ; Load boolean-literal into R1
201 : ST 1, 2(5) ; Store function result into frame return slot
202 : LD 6, 0(5) ; Load return address
203 : LDA 7, 0(6) ; Return to caller
204 : LD 1, 1(5) ; Load parameter 'x' into R1
205 : ST 1, 4(5) ; Spill left operand at depth 0
206 : LD 1, 2(5) ; Load parameter 'y' into R1
207 : LD 2, 4(5) ; Restore left operand from depth 0
208 : DIV 1, 2, 1 ; R1 = left / right
209 : ST 1, 4(5) ; Spill left operand at depth 0
210 : LD 1, 2(5) ; Load parameter 'y' into R1
211 : LD 2, 4(5) ; Restore left operand from depth 0
212 : MUL 1, 2, 1 ; R1 = left * right
213 : ST 1, 4(5) ; Spill left operand at depth 0
214 : LD 1, 1(5) ; Load parameter 'x' into R1
215 : LD 2, 4(5) ; Restore left operand from depth 0
216 : SUB 1, 2, 1 ; left - right for equality check
217 : JEQ 1, 2(7) ; If R1 == 0, jump to true
218 : LDC 1, 0(0) ; false
219 : LDA 7, 1(7) ; skip setting true
220 : LDC 1, 1(0) ; true
221 : JEQ 1, 224(0) ; If condition is false, jump to ELSE
222 : LDC 1, 1(0) ; Load boolean-literal into R1
223 : LDA 7, 225(0) ; Skip ELSE block
224 : LDC 1, 0(0) ; Load boolean-literal into R1
225 : ST 1, 3(5) ; Store function result into frame return slot
226 : LD 6, 0(5) ; Load return address
227 : LDA 7, 0(6) ; Return to caller
