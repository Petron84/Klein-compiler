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
25 : LDA 4, 5(4) ; Recompute callee base from callee size
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LDC 1, 2047483747(0) ; Load integer-literal into R1
28 : LDA 4, 5(4) ; Recompute callee base from callee size
29 : ST 1, 2(4) ; Store argument 1 in callee
30 : LDA 4, 5(4) ; Recompute callee base from callee size
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
34 : LDA 7, 161(0) ; Call factor
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 5(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop callee frame
38 : ST 1, 3(5) ; Store result into caller’s frame
39 : LDA 7, 55(0) ; Skip ELSE block
40 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
41 : LDA 4, 5(4) ; Recompute callee base from callee size
42 : ST 1, 1(4) ; Store argument 0 in callee
43 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
44 : LDA 4, 5(4) ; Recompute callee base from callee size
45 : ST 1, 2(4) ; Store argument 1 in callee
46 : LDA 4, 5(4) ; Recompute callee base from callee size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return in callee frame
49 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
50 : LDA 7, 161(0) ; Call factor
51 : LD 1, 3(5) ; Load callee result into R1
52 : LDC 2, 5(0) ; Callee frame size
53 : SUB 5, 5, 2 ; Pop callee frame
54 : ST 1, 3(5) ; Store result into caller’s frame
55 : LD 1, 3(5) ; Load main return value into R1
56 : LD 6, 0(5) ; Load main return address
57 : LDA 7, 0(6) ; Return from main
58 : LD 1, 1(5) ; Load parameter 'a' into R1
59 : ST 1, 4(5) ; Spill left operand at depth 0
60 : LD 1, 2(5) ; Load parameter 'b' into R1
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; left - right for less-than check
63 : JLT 1, 2(7) ; If R1 < 0, jump to true
64 : LDC 1, 0(0) ; false
65 : LDA 7, 1(7) ; skip setting true
66 : LDC 1, 1(0) ; true
67 : JEQ 1, 70(0) ; If condition is false, jump to ELSE
68 : LD 1, 1(5) ; Load parameter 'a' into R1
69 : LDA 7, 88(0) ; Skip ELSE block
70 : LD 1, 1(5) ; Load parameter 'a' into R1
71 : ST 1, 4(5) ; Spill left operand at depth 0
72 : LD 1, 2(5) ; Load parameter 'b' into R1
73 : LD 2, 4(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; R1 = left - right
75 : LDA 4, 5(4) ; Recompute callee base from callee size
76 : ST 1, 1(4) ; Store argument 0 in callee
77 : LD 1, 2(5) ; Load parameter 'b' into R1
78 : LDA 4, 5(4) ; Recompute callee base from callee size
79 : ST 1, 2(4) ; Store argument 1 in callee
80 : LDA 4, 5(4) ; Recompute callee base from callee size
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
84 : LDA 7, 58(0) ; Call remainder
85 : LD 1, 3(5) ; Load callee result into R1
86 : LDC 2, 5(0) ; Callee frame size
87 : SUB 5, 5, 2 ; Pop callee frame
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
91 : LD 1, 2(5) ; Load parameter 'b' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LDC 1, 0(0) ; Load integer-literal into R1
94 : LD 2, 4(5) ; Restore left operand from depth 0
95 : SUB 1, 2, 1 ; left - right for equality check
96 : JEQ 1, 2(7) ; If R1 == 0, jump to true
97 : LDC 1, 0(0) ; false
98 : LDA 7, 1(7) ; skip setting true
99 : LDC 1, 1(0) ; true
100 : JEQ 1, 103(0) ; If condition is false, jump to ELSE
101 : LD 1, 1(5) ; Load parameter 'a' into R1
102 : LDA 7, 130(0) ; Skip ELSE block
103 : LD 1, 2(5) ; Load parameter 'b' into R1
104 : LDA 4, 5(4) ; Recompute callee base from callee size
105 : ST 1, 1(4) ; Store argument 0 in callee
106 : LD 1, 1(5) ; Load parameter 'a' into R1
107 : LDA 4, 5(4) ; Recompute callee base from callee size
108 : ST 1, 1(4) ; Store argument 0 in callee
109 : LD 1, 2(5) ; Load parameter 'b' into R1
110 : LDA 4, 5(4) ; Recompute callee base from callee size
111 : ST 1, 2(4) ; Store argument 1 in callee
112 : LDA 4, 5(4) ; Recompute callee base from callee size
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 58(0) ; Call remainder
117 : LD 1, 3(5) ; Load callee result into R1
118 : LDC 2, 5(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : LDA 4, 5(4) ; Recompute callee base from callee size
121 : ST 1, 2(4) ; Store argument 1 in callee
122 : LDA 4, 5(4) ; Recompute callee base from callee size
123 : LDA 6, 127(0) ; Return address
124 : ST 6, 0(4) ; Store return in callee frame
125 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
126 : LDA 7, 91(0) ; Call gcd
127 : LD 1, 3(5) ; Load callee result into R1
128 : LDC 2, 5(0) ; Callee frame size
129 : SUB 5, 5, 2 ; Pop callee frame
130 : ST 1, 3(5) ; Store function result into frame return slot
131 : LD 6, 0(5) ; Load return address
132 : LDA 7, 0(6) ; Return to caller
133 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
134 : ST 1, 5(5) ; Spill left operand at depth 0
135 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
136 : LD 2, 5(5) ; Restore left operand from depth 0
137 : DIV 1, 2, 1 ; R1 = left / right
138 : LDA 4, 5(4) ; Recompute callee base from caller size
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return address in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
142 : LDA 7, 11(0) ; Call built-in print
143 : LDC 2, 5(0) ; Caller frame size
144 : SUB 5, 5, 2 ; Pop back to caller
145 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
146 : ST 1, 5(5) ; Spill left operand at depth 0
147 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
148 : LD 2, 5(5) ; Restore left operand from depth 0
149 : DIV 1, 2, 1 ; R1 = left / right
150 : LDA 4, 5(4) ; Recompute callee base from caller size
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return address in callee frame
153 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
154 : LDA 7, 11(0) ; Call built-in print
155 : LDC 2, 5(0) ; Caller frame size
156 : SUB 5, 5, 2 ; Pop back to caller
157 : LD 1, 3(5) ; Load parameter 'commonFactor' into R1
158 : ST 1, 4(5) ; Store function result into frame return slot
159 : LD 6, 0(5) ; Load return address
160 : LDA 7, 0(6) ; Return to caller
161 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
162 : LDA 4, 4(4) ; Recompute callee base from callee size
163 : ST 1, 1(4) ; Store argument 0 in callee
164 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
165 : LDA 4, 4(4) ; Recompute callee base from callee size
166 : ST 1, 2(4) ; Store argument 1 in callee
167 : LD 1, 1(5) ; Load parameter 'publicKey' into R1
168 : LDA 4, 4(4) ; Recompute callee base from callee size
169 : ST 1, 1(4) ; Store argument 0 in callee
170 : LD 1, 2(5) ; Load parameter 'privateKey' into R1
171 : LDA 4, 4(4) ; Recompute callee base from callee size
172 : ST 1, 2(4) ; Store argument 1 in callee
173 : LDA 4, 4(4) ; Recompute callee base from callee size
174 : LDA 6, 178(0) ; Return address
175 : ST 6, 0(4) ; Store return in callee frame
176 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
177 : LDA 7, 91(0) ; Call gcd
178 : LD 1, 3(5) ; Load callee result into R1
179 : LDC 2, 4(0) ; Callee frame size
180 : SUB 5, 5, 2 ; Pop callee frame
181 : LDA 4, 4(4) ; Recompute callee base from callee size
182 : ST 1, 3(4) ; Store argument 2 in callee
183 : LDA 4, 4(4) ; Recompute callee base from callee size
184 : LDA 6, 188(0) ; Return address
185 : ST 6, 0(4) ; Store return in callee frame
186 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
187 : LDA 7, 133(0) ; Call displayAndPrint
188 : LD 1, 4(5) ; Load callee result into R1
189 : LDC 2, 4(0) ; Callee frame size
190 : SUB 5, 5, 2 ; Pop callee frame
191 : ST 1, 3(5) ; Store function result into frame return slot
192 : LD 6, 0(5) ; Load return address
193 : LDA 7, 0(6) ; Return to caller
