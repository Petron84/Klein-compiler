0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
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
15 : LD 1, 1(5) ; Load parameter 'm' into R1
16 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
17 : LDA 6, 23(0) ; Return address
18 : ST 6, 0(2) ; Store return address in callee frame
19 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
20 : LDC 3, 3(0) ; Callee frame size
21 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
22 : LDA 7, 12(0) ; Call built-in print
23 : LDC 2, 3(0) ; Callee frame size
24 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
25 : LDC 3, 4(0) ; Caller frame size
26 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
27 : LD 1, 1(5) ; Load parameter 'm' into R1
28 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
29 : ST 1, 1(2) ; Store argument 0 in callee
30 : LD 1, 2(5) ; Load parameter 'n' into R1
31 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
32 : ST 1, 2(2) ; Store argument 1 in callee
33 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
34 : LDA 6, 40(0) ; Return address
35 : ST 6, 0(2) ; Store return in callee frame
36 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
37 : LDC 3, 4(0) ; Callee frame size
38 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
39 : LDA 7, 49(0) ; Call mult
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 4(0) ; Callee frame size
42 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
43 : LDC 3, 4(0) ; Caller frame size
44 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
45 : ST 1, 3(5) ; Store result into caller’s frame
46 : LD 1, 3(5) ; Load main return value into R1
47 : LD 6, 0(5) ; Load main return address
48 : LDA 7, 0(6) ; Return from main
49 : LD 1, 1(5) ; Load parameter 'm' into R1
50 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
51 : ST 1, 1(2) ; Store argument 0 in callee
52 : LD 1, 2(5) ; Load parameter 'n' into R1
53 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
54 : ST 1, 2(2) ; Store argument 1 in callee
55 : LDC 1, 0(0) ; Load integer-literal into R1
56 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
57 : ST 1, 3(2) ; Store argument 2 in callee
58 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
59 : LDA 6, 65(0) ; Return address
60 : ST 6, 0(2) ; Store return in callee frame
61 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
62 : LDC 3, 6(0) ; Callee frame size
63 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
64 : LDA 7, 73(0) ; Call multWithAccum
65 : LD 1, 4(5) ; Load callee result into R1
66 : LDC 2, 6(0) ; Callee frame size
67 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
68 : LDC 3, 4(0) ; Caller frame size
69 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
70 : ST 1, 3(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
73 : LD 1, 2(5) ; Load parameter 'n' into R1
74 : ST 1, 5(5) ; Spill left operand at depth 0
75 : LDC 1, 0(0) ; Load integer-literal into R1
76 : LD 2, 5(5) ; Restore left operand from depth 0
77 : SUB 1, 2, 1 ; left - right for equality check
78 : JEQ 1, 2(7) ; If R1 == 0, jump to true
79 : LDC 1, 0(0) ; false
80 : LDA 7, 1(7) ; skip setting true
81 : LDC 1, 1(0) ; true
82 : JEQ 1, 85(0) ; If condition is false, jump to ELSE
83 : LD 1, 3(5) ; Load parameter 'accum' into R1
84 : LDA 7, 175(0) ; Skip ELSE block
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
87 : ST 1, 1(2) ; Store argument 0 in callee
88 : LDC 1, 2(0) ; Load integer-literal into R1
89 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
90 : ST 1, 2(2) ; Store argument 1 in callee
91 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
92 : LDA 6, 98(0) ; Return address
93 : ST 6, 0(2) ; Store return in callee frame
94 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
95 : LDC 3, 6(0) ; Callee frame size
96 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
97 : LDA 7, 178(0) ; Call MOD
98 : LD 1, 3(5) ; Load callee result into R1
99 : LDC 2, 6(0) ; Callee frame size
100 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
101 : LDC 3, 6(0) ; Caller frame size
102 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
103 : ST 1, 5(5) ; Spill left operand at depth 0
104 : LDC 1, 1(0) ; Load integer-literal into R1
105 : LD 2, 5(5) ; Restore left operand from depth 0
106 : SUB 1, 2, 1 ; left - right for equality check
107 : JEQ 1, 2(7) ; If R1 == 0, jump to true
108 : LDC 1, 0(0) ; false
109 : LDA 7, 1(7) ; skip setting true
110 : LDC 1, 1(0) ; true
111 : JEQ 1, 146(0) ; If condition is false, jump to ELSE
112 : LD 1, 1(5) ; Load parameter 'm' into R1
113 : ST 1, 5(5) ; Spill left operand at depth 0
114 : LDC 1, 2(0) ; Load integer-literal into R1
115 : LD 2, 5(5) ; Restore left operand from depth 0
116 : MUL 1, 2, 1 ; R1 = left * right
117 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
118 : ST 1, 1(2) ; Store argument 0 in callee
119 : LD 1, 2(5) ; Load parameter 'n' into R1
120 : ST 1, 5(5) ; Spill left operand at depth 0
121 : LDC 1, 2(0) ; Load integer-literal into R1
122 : LD 2, 5(5) ; Restore left operand from depth 0
123 : DIV 1, 2, 1 ; R1 = left / right
124 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
125 : ST 1, 2(2) ; Store argument 1 in callee
126 : LD 1, 3(5) ; Load parameter 'accum' into R1
127 : ST 1, 5(5) ; Spill left operand at depth 0
128 : LD 1, 1(5) ; Load parameter 'm' into R1
129 : LD 2, 5(5) ; Restore left operand from depth 0
130 : ADD 1, 2, 1 ; R1 = left + right
131 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
132 : ST 1, 3(2) ; Store argument 2 in callee
133 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
134 : LDA 6, 140(0) ; Return address
135 : ST 6, 0(2) ; Store return in callee frame
136 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
137 : LDC 3, 6(0) ; Callee frame size
138 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
139 : LDA 7, 73(0) ; Call multWithAccum
140 : LD 1, 4(5) ; Load callee result into R1
141 : LDC 2, 6(0) ; Callee frame size
142 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
143 : LDC 3, 6(0) ; Caller frame size
144 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
145 : LDA 7, 175(0) ; Skip ELSE block
146 : LD 1, 1(5) ; Load parameter 'm' into R1
147 : ST 1, 5(5) ; Spill left operand at depth 0
148 : LDC 1, 2(0) ; Load integer-literal into R1
149 : LD 2, 5(5) ; Restore left operand from depth 0
150 : MUL 1, 2, 1 ; R1 = left * right
151 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
152 : ST 1, 1(2) ; Store argument 0 in callee
153 : LD 1, 2(5) ; Load parameter 'n' into R1
154 : ST 1, 5(5) ; Spill left operand at depth 0
155 : LDC 1, 2(0) ; Load integer-literal into R1
156 : LD 2, 5(5) ; Restore left operand from depth 0
157 : DIV 1, 2, 1 ; R1 = left / right
158 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
159 : ST 1, 2(2) ; Store argument 1 in callee
160 : LD 1, 3(5) ; Load parameter 'accum' into R1
161 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
162 : ST 1, 3(2) ; Store argument 2 in callee
163 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
164 : LDA 6, 170(0) ; Return address
165 : ST 6, 0(2) ; Store return in callee frame
166 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
167 : LDC 3, 6(0) ; Callee frame size
168 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
169 : LDA 7, 73(0) ; Call multWithAccum
170 : LD 1, 4(5) ; Load callee result into R1
171 : LDC 2, 6(0) ; Callee frame size
172 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
173 : LDC 3, 6(0) ; Caller frame size
174 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
175 : ST 1, 4(5) ; Store function result into frame return slot
176 : LD 6, 0(5) ; Load return address
177 : LDA 7, 0(6) ; Return to caller
178 : LD 1, 1(5) ; Load parameter 'm' into R1
179 : ST 1, 4(5) ; Spill left operand at depth 0
180 : LD 1, 1(5) ; Load parameter 'm' into R1
181 : ST 1, 5(5) ; Spill left operand at depth 1
182 : LD 1, 2(5) ; Load parameter 'n' into R1
183 : LD 2, 5(5) ; Restore left operand from depth 1
184 : DIV 1, 2, 1 ; R1 = left / right
185 : ST 1, 5(5) ; Spill left operand at depth 1
186 : LD 1, 2(5) ; Load parameter 'n' into R1
187 : LD 2, 5(5) ; Restore left operand from depth 1
188 : MUL 1, 2, 1 ; R1 = left * right
189 : LD 2, 4(5) ; Restore left operand from depth 0
190 : SUB 1, 2, 1 ; R1 = left - right
191 : ST 1, 3(5) ; Store function result into frame return slot
192 : LD 6, 0(5) ; Load return address
193 : LDA 7, 0(6) ; Return to caller
