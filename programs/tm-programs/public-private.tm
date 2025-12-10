0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LDA 6, 2(7) ; Calculate return address (PC + 2)
7 : ST 6, 0(5) ; Store return address in main frame
8 : LDA 7, 14(0) ; Branch to main function
9 : OUT 1, 0, 0 ; Return/print result from main in R1
10 : HALT 0, 0, 0 ; Terminate program
11 : OUT 1, 0, 0 ; Hardcoded print: output R1
12 : LD 6, 0(5) ; Load return address from current frame
13 : LDA 7, 0(6) ; Jump back to caller
14 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 40(0) ; If condition is false, jump to ELSE
24 : LDC 1, 2147481647(0) ; Load integer-literal into R1
25 : LDA 4, 5(5) ; Recompute callee base from caller size
26 : ST 1, 1(4) ; Store argument 0 in callee frame
27 : LDC 1, 2047483747(0) ; Load integer-literal into R1
28 : LDA 4, 5(5) ; Recompute callee base from caller size
29 : ST 1, 2(4) ; Store argument 1 in callee frame
30 : LDA 4, 5(5) ; Recompute callee base from caller size
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return address into callee frame
33 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
34 : LDA 7, 164(0) ; Call factor
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop back to caller
38 : ST 1, 3(5) ; Store result into caller’s return slot
39 : LDA 7, 55(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
41 : LDA 4, 5(5) ; Recompute callee base from caller size
42 : ST 1, 1(4) ; Store argument 0 in callee frame
43 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
44 : LDA 4, 5(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LDA 4, 5(5) ; Recompute callee base from caller size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address into callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 164(0) ; Call factor
51 : LD 1, 3(5) ; Load callee result into R1
52 : LDC 2, 4(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop back to caller
54 : ST 1, 3(5) ; Store result into caller’s return slot
55 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
56 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
57 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
58 : LD 1, 3(5) ; Load main return value into R1
59 : LD 6, 0(5) ; Load root return address from main frame
60 : LDA 7, 0(6) ; Return from main to runtime epilogue
61 : LD 1, 1(5) ; Load parameter 'a' into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : SUB 1, 2, 1 ; left - right for less-than check
66 : JLT 1, 2(7) ; If R1 < 0, jump to true
67 : LDC 1, 0(0) ; false
68 : LDA 7, 1(7) ; skip setting true
69 : LDC 1, 1(0) ; true
70 : JEQ 1, 73(0) ; If condition is false, jump to ELSE
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : LDA 7, 91(0) ; Skip ELSE block
73 : LD 1, 1(5) ; Load parameter 'a' into R1
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LD 1, 2(5) ; Load parameter 'b' into R1
76 : LD 2, 4(5) ; Restore left operand from depth 0
77 : SUB 1, 2, 1 ; R1 = left - right
78 : LDA 4, 5(5) ; Recompute callee base from caller size
79 : ST 1, 1(4) ; Store argument 0 in callee frame
80 : LD 1, 2(5) ; Load parameter 'b' into R1
81 : LDA 4, 5(5) ; Recompute callee base from caller size
82 : ST 1, 2(4) ; Store argument 1 in callee frame
83 : LDA 4, 5(5) ; Recompute callee base from caller size
84 : LDA 6, 88(0) ; Return address
85 : ST 6, 0(4) ; Store return address into callee frame
86 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
87 : LDA 7, 61(0) ; Call remainder
88 : LD 1, 3(5) ; Load callee result into R1
89 : LDC 2, 5(0) ; Callee frame size
90 : SUB 5, 5, 2 ; Pop back to caller
91 : ST 1, 3(5) ; Store function result into frame return slot
92 : LD 6, 0(5) ; Load return address
93 : LDA 7, 0(6) ; Return to caller
94 : LD 1, 2(5) ; Load parameter 'b' into R1
95 : ST 1, 4(5) ; Spill left operand at depth 0
96 : LDC 1, 0(0) ; Load integer-literal into R1
97 : LD 2, 4(5) ; Restore left operand from depth 0
98 : SUB 1, 2, 1 ; left - right for equality check
99 : JEQ 1, 2(7) ; If R1 == 0, jump to true
100 : LDC 1, 0(0) ; false
101 : LDA 7, 1(7) ; skip setting true
102 : LDC 1, 1(0) ; true
103 : JEQ 1, 106(0) ; If condition is false, jump to ELSE
104 : LD 1, 1(5) ; Load parameter 'a' into R1
105 : LDA 7, 133(0) ; Skip ELSE block
106 : LD 1, 2(5) ; Load parameter 'b' into R1
107 : LDA 4, 5(5) ; Recompute callee base from caller size
108 : ST 1, 1(4) ; Store argument 0 in callee frame
109 : LD 1, 1(5) ; Load parameter 'a' into R1
110 : LDA 4, 5(5) ; Recompute callee base from caller size
111 : ST 1, 1(4) ; Store argument 0 in callee frame
112 : LD 1, 2(5) ; Load parameter 'b' into R1
113 : LDA 4, 5(5) ; Recompute callee base from caller size
114 : ST 1, 2(4) ; Store argument 1 in callee frame
115 : LDA 4, 5(5) ; Recompute callee base from caller size
116 : LDA 6, 120(0) ; Return address
117 : ST 6, 0(4) ; Store return address into callee frame
118 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
119 : LDA 7, 61(0) ; Call remainder
120 : LD 1, 3(5) ; Load callee result into R1
121 : LDC 2, 5(0) ; Callee frame size
122 : SUB 5, 5, 2 ; Pop back to caller
123 : LDA 4, 5(5) ; Recompute callee base from caller size
124 : ST 1, 2(4) ; Store argument 1 in callee frame
125 : LDA 4, 5(5) ; Recompute callee base from caller size
126 : LDA 6, 130(0) ; Return address
127 : ST 6, 0(4) ; Store return address into callee frame
128 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
129 : LDA 7, 94(0) ; Call gcd
130 : LD 1, 3(5) ; Load callee result into R1
131 : LDC 2, 5(0) ; Callee frame size
132 : SUB 5, 5, 2 ; Pop back to caller
133 : ST 1, 3(5) ; Store function result into frame return slot
134 : LD 6, 0(5) ; Load return address
135 : LDA 7, 0(6) ; Return to caller
136 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
137 : ST 1, 5(5) ; Spill left operand at depth 0
138 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
139 : LD 2, 5(5) ; Restore left operand from depth 0
140 : DIV 1, 2, 1 ; R1 = left / right
141 : LDA 4, 5(5) ; Recompute callee base from caller size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address in callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 11(0) ; Call built-in print
146 : LDC 2, 3(0) ; Callee frame size
147 : SUB 5, 5, 2 ; Pop back to caller
148 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
149 : ST 1, 5(5) ; Spill left operand at depth 0
150 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
151 : LD 2, 5(5) ; Restore left operand from depth 0
152 : DIV 1, 2, 1 ; R1 = left / right
153 : LDA 4, 5(5) ; Recompute callee base from caller size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return address in callee frame
156 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
157 : LDA 7, 11(0) ; Call built-in print
158 : LDC 2, 3(0) ; Callee frame size
159 : SUB 5, 5, 2 ; Pop back to caller
160 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
161 : ST 1, 4(5) ; Store function result into frame return slot
162 : LD 6, 0(5) ; Load return address
163 : LDA 7, 0(6) ; Return to caller
164 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
165 : LDA 4, 4(5) ; Recompute callee base from caller size
166 : ST 1, 1(4) ; Store argument 0 in callee frame
167 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
168 : LDA 4, 4(5) ; Recompute callee base from caller size
169 : ST 1, 2(4) ; Store argument 1 in callee frame
170 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
171 : LDA 4, 4(5) ; Recompute callee base from caller size
172 : ST 1, 1(4) ; Store argument 0 in callee frame
173 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
174 : LDA 4, 4(5) ; Recompute callee base from caller size
175 : ST 1, 2(4) ; Store argument 1 in callee frame
176 : LDA 4, 4(5) ; Recompute callee base from caller size
177 : LDA 6, 181(0) ; Return address
178 : ST 6, 0(4) ; Store return address into callee frame
179 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
180 : LDA 7, 94(0) ; Call gcd
181 : LD 1, 3(5) ; Load callee result into R1
182 : LDC 2, 5(0) ; Callee frame size
183 : SUB 5, 5, 2 ; Pop back to caller
184 : LDA 4, 4(5) ; Recompute callee base from caller size
185 : ST 1, 3(4) ; Store argument 2 in callee frame
186 : LDA 4, 4(5) ; Recompute callee base from caller size
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return address into callee frame
189 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
190 : LDA 7, 136(0) ; Call displayAndPrint
191 : LD 1, 4(5) ; Load callee result into R1
192 : LDC 2, 5(0) ; Callee frame size
193 : SUB 5, 5, 2 ; Pop back to caller
194 : ST 1, 3(5) ; Store function result into frame return slot
195 : LD 6, 0(5) ; Load return address
196 : LDA 7, 0(6) ; Return to caller
