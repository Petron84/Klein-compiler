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
47 : LDA 7, 96(0) ; Call isPrime
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
97 : ST 1, 3(5) ; Spill left operand at depth 0
98 : LDC 1, 2(0) ; Load integer-literal into R1
99 : LD 2, 3(5) ; Restore left operand from depth 0
100 : SUB 1, 2, 1 ; left - right for less-than check
101 : JLT 1, 2(7) ; If R1 < 0, jump to true
102 : LDC 1, 0(0) ; false
103 : LDA 7, 1(7) ; skip setting true
104 : LDC 1, 1(0) ; true
105 : JEQ 1, 108(0) ; If condition is false, jump to ELSE
106 : LDC 1, 0(0) ; Load boolean-literal into R1
107 : LDA 7, 172(0) ; Skip ELSE block
108 : LD 1, 1(5) ; Load parameter 'n' into R1
109 : ST 1, 3(5) ; Spill left operand at depth 0
110 : LDC 1, 2(0) ; Load integer-literal into R1
111 : LD 2, 3(5) ; Restore left operand from depth 0
112 : SUB 1, 2, 1 ; left - right for equality check
113 : JEQ 1, 2(7) ; If R1 == 0, jump to true
114 : LDC 1, 0(0) ; false
115 : LDA 7, 1(7) ; skip setting true
116 : LDC 1, 1(0) ; true
117 : JEQ 1, 120(0) ; If condition is false, jump to ELSE
118 : LDC 1, 1(0) ; Load boolean-literal into R1
119 : LDA 7, 172(0) ; Skip ELSE block
120 : LD 1, 1(5) ; Load parameter 'n' into R1
121 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
122 : ST 1, 1(4) ; Store argument 0 in callee param slot
123 : LDC 1, 2(0) ; Load integer-literal into R1
124 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
125 : ST 1, 2(4) ; Store argument 1 in callee param slot
126 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
130 : LDA 7, 175(0) ; Call divisible
131 : LD 1, 3(5) ; Load callee result into R1
132 : LDC 2, 4(0) ; Caller frame size
133 : SUB 5, 5, 2 ; Pop callee frame back to caller
134 : ST 1, 3(5) ; Spill left operand at depth 0
135 : LD 1, 1(5) ; Load parameter 'n' into R1
136 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
137 : ST 1, 1(4) ; Store argument 0 in callee param slot
138 : LDC 1, 3(0) ; Load integer-literal into R1
139 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
140 : ST 1, 2(4) ; Store argument 1 in callee param slot
141 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return in callee frame
144 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
145 : LDA 7, 175(0) ; Call divisible
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 4(0) ; Caller frame size
148 : SUB 5, 5, 2 ; Pop callee frame back to caller
149 : LD 2, 3(5) ; Restore left operand from depth 0
150 : ADD 1, 2, 1 ; R1 = left OR right
151 : ST 1, 3(5) ; Spill left operand at depth 0
152 : LD 1, 1(5) ; Load parameter 'n' into R1
153 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
154 : ST 1, 1(4) ; Store argument 0 in callee param slot
155 : LDC 1, 5(0) ; Load integer-literal into R1
156 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
157 : ST 1, 2(4) ; Store argument 1 in callee param slot
158 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return in callee frame
161 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
162 : LDA 7, 175(0) ; Call divisible
163 : LD 1, 3(5) ; Load callee result into R1
164 : LDC 2, 4(0) ; Caller frame size
165 : SUB 5, 5, 2 ; Pop callee frame back to caller
166 : LD 2, 3(5) ; Restore left operand from depth 0
167 : ADD 1, 2, 1 ; R1 = left OR right
168 : JEQ 1, 171(0) ; If condition is false, jump to ELSE
169 : LDC 1, 0(0) ; Load boolean-literal into R1
170 : LDA 7, 172(0) ; Skip ELSE block
171 : LDC 1, 1(0) ; Load boolean-literal into R1
172 : ST 1, 2(5) ; Store function result into frame return slot
173 : LD 6, 0(5) ; Load return address
174 : LDA 7, 0(6) ; Return to caller
175 : LD 1, 1(5) ; Load parameter 'x' into R1
176 : ST 1, 4(5) ; Spill left operand at depth 0
177 : LD 1, 2(5) ; Load parameter 'y' into R1
178 : LD 2, 4(5) ; Restore left operand from depth 0
179 : DIV 1, 2, 1 ; R1 = left / right
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LD 1, 2(5) ; Load parameter 'y' into R1
182 : LD 2, 4(5) ; Restore left operand from depth 0
183 : MUL 1, 2, 1 ; R1 = left * right
184 : ST 1, 4(5) ; Spill left operand at depth 0
185 : LD 1, 1(5) ; Load parameter 'x' into R1
186 : LD 2, 4(5) ; Restore left operand from depth 0
187 : SUB 1, 2, 1 ; left - right for equality check
188 : JEQ 1, 2(7) ; If R1 == 0, jump to true
189 : LDC 1, 0(0) ; false
190 : LDA 7, 1(7) ; skip setting true
191 : LDC 1, 1(0) ; true
192 : JEQ 1, 195(0) ; If condition is false, jump to ELSE
193 : LDC 1, 1(0) ; Load boolean-literal into R1
194 : LDA 7, 196(0) ; Skip ELSE block
195 : LDC 1, 0(0) ; Load boolean-literal into R1
196 : ST 1, 3(5) ; Store function result into frame return slot
197 : LD 6, 0(5) ; Load return address
198 : LDA 7, 0(6) ; Return to caller
