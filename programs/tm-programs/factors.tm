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
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : LDA 4, 5(5) ; Compute callee base
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 1(0) ; Load integer-literal into R1
16 : LDA 4, 5(5) ; Compute callee base
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDA 4, 5(5) ; Recompute callee base from callee size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 164(0) ; Call loopToN
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Caller frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LD 1, 2(5) ; Load main return value into R1
28 : LD 6, 0(5) ; Load main return address
29 : LDA 7, 0(6) ; Return from main
30 : LD 1, 1(5) ; Load parameter 'num' into R1
31 : ST 1, 4(5) ; Spill left operand at depth 0
32 : LD 1, 2(5) ; Load parameter 'den' into R1
33 : LD 2, 4(5) ; Restore left operand from depth 0
34 : SUB 1, 2, 1 ; left - right for less-than check
35 : JLT 1, 2(7) ; If R1 < 0, jump to true
36 : LDC 1, 0(0) ; false
37 : LDA 7, 1(7) ; skip setting true
38 : LDC 1, 1(0) ; true
39 : JEQ 1, 42(0) ; If condition is false, jump to ELSE
40 : LD 1, 1(5) ; Load parameter 'num' into R1
41 : LDA 7, 60(0) ; Skip ELSE block
42 : LD 1, 1(5) ; Load parameter 'num' into R1
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LD 1, 2(5) ; Load parameter 'den' into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; R1 = left - right
47 : LDA 4, 5(5) ; Compute callee base
48 : ST 1, 1(4) ; Store argument 0 in callee frame
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LDA 4, 5(5) ; Compute callee base
51 : ST 1, 2(4) ; Store argument 1 in callee frame
52 : LDA 4, 5(5) ; Recompute callee base from callee size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return address into callee frame
55 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
56 : LDA 7, 30(0) ; Call remainder
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Caller frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LDA 4, 5(5) ; Compute callee base
64 : ST 1, 1(4) ; Store argument 0 in callee frame
65 : LDA 4, 5(5) ; Compute callee base
66 : ST 1, 2(4) ; Store argument 1 in callee frame
67 : LDA 4, 5(5) ; Recompute callee base from callee size
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return address into callee frame
70 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
71 : LDA 7, 30(0) ; Call remainder
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 5(0) ; Caller frame size
74 : SUB 5, 5, 2 ; Pop back to caller
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LDC 1, 0(0) ; Load integer-literal into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : ST 1, 3(5) ; Store function result into frame return slot
84 : LD 6, 0(5) ; Load return address
85 : LDA 7, 0(6) ; Return to caller
86 : LD 1, 2(5) ; Load parameter 'current' into R1
87 : LDA 4, 5(5) ; Recompute callee base from caller size
88 : LDA 6, 92(0) ; Return address
89 : ST 6, 0(4) ; Store return address in callee frame
90 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
91 : LDA 7, 9(0) ; Call built-in print
92 : LDC 2, 5(0) ; Caller frame size
93 : SUB 5, 5, 2 ; Pop back to caller
94 : LD 1, 1(5) ; Load parameter 'n' into R1
95 : LDA 4, 5(5) ; Compute callee base
96 : ST 1, 1(4) ; Store argument 0 in callee frame
97 : LD 1, 2(5) ; Load parameter 'current' into R1
98 : ST 1, 4(5) ; Spill left operand at depth 0
99 : LDC 1, 1(0) ; Load integer-literal into R1
100 : LD 2, 4(5) ; Restore left operand from depth 0
101 : ADD 1, 2, 1 ; R1 = left + right
102 : LDA 4, 5(5) ; Compute callee base
103 : ST 1, 2(4) ; Store argument 1 in callee frame
104 : LDA 4, 5(5) ; Recompute callee base from callee size
105 : LDA 6, 109(0) ; Return address
106 : ST 6, 0(4) ; Store return address into callee frame
107 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
108 : LDA 7, 164(0) ; Call loopToN
109 : LD 1, 3(5) ; Load callee result into R1
110 : LDC 2, 5(0) ; Caller frame size
111 : SUB 5, 5, 2 ; Pop back to caller
112 : ST 1, 3(5) ; Store function result into frame return slot
113 : LD 6, 0(5) ; Load return address
114 : LDA 7, 0(6) ; Return to caller
115 : LDA 4, 5(5) ; Compute callee base
116 : ST 1, 1(4) ; Store argument 0 in callee frame
117 : LDA 4, 5(5) ; Compute callee base
118 : ST 1, 2(4) ; Store argument 1 in callee frame
119 : LDA 4, 5(5) ; Recompute callee base from callee size
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return address into callee frame
122 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
123 : LDA 7, 63(0) ; Call divides
124 : LD 1, 3(5) ; Load callee result into R1
125 : LDC 2, 5(0) ; Caller frame size
126 : SUB 5, 5, 2 ; Pop back to caller
127 : JEQ 1, 143(0) ; If condition is false, jump to ELSE
128 : LD 1, 1(5) ; Load parameter 'n' into R1
129 : LDA 4, 5(5) ; Compute callee base
130 : ST 1, 1(4) ; Store argument 0 in callee frame
131 : LD 1, 2(5) ; Load parameter 'current' into R1
132 : LDA 4, 5(5) ; Compute callee base
133 : ST 1, 2(4) ; Store argument 1 in callee frame
134 : LDA 4, 5(5) ; Recompute callee base from callee size
135 : LDA 6, 139(0) ; Return address
136 : ST 6, 0(4) ; Store return address into callee frame
137 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
138 : LDA 7, 86(0) ; Call printAndLoop
139 : LD 1, 3(5) ; Load callee result into R1
140 : LDC 2, 5(0) ; Caller frame size
141 : SUB 5, 5, 2 ; Pop back to caller
142 : LDA 7, 161(0) ; Skip ELSE block
143 : LD 1, 1(5) ; Load parameter 'n' into R1
144 : LDA 4, 5(5) ; Compute callee base
145 : ST 1, 1(4) ; Store argument 0 in callee frame
146 : LD 1, 2(5) ; Load parameter 'current' into R1
147 : ST 1, 4(5) ; Spill left operand at depth 0
148 : LDC 1, 1(0) ; Load integer-literal into R1
149 : LD 2, 4(5) ; Restore left operand from depth 0
150 : ADD 1, 2, 1 ; R1 = left + right
151 : LDA 4, 5(5) ; Compute callee base
152 : ST 1, 2(4) ; Store argument 1 in callee frame
153 : LDA 4, 5(5) ; Recompute callee base from callee size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return address into callee frame
156 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
157 : LDA 7, 164(0) ; Call loopToN
158 : LD 1, 3(5) ; Load callee result into R1
159 : LDC 2, 5(0) ; Caller frame size
160 : SUB 5, 5, 2 ; Pop back to caller
161 : ST 1, 3(5) ; Store function result into frame return slot
162 : LD 6, 0(5) ; Load return address
163 : LDA 7, 0(6) ; Return to caller
164 : LD 1, 1(5) ; Load parameter 'n' into R1
165 : ST 1, 4(5) ; Spill left operand at depth 0
166 : LD 1, 2(5) ; Load parameter 'current' into R1
167 : LD 2, 4(5) ; Restore left operand from depth 0
168 : SUB 1, 2, 1 ; left - right for equality check
169 : JEQ 1, 2(7) ; If R1 == 0, jump to true
170 : LDC 1, 0(0) ; false
171 : LDA 7, 1(7) ; skip setting true
172 : LDC 1, 1(0) ; true
173 : JEQ 1, 176(0) ; If condition is false, jump to ELSE
174 : LD 1, 1(5) ; Load parameter 'n' into R1
175 : LDA 7, 190(0) ; Skip ELSE block
176 : LD 1, 1(5) ; Load parameter 'n' into R1
177 : LDA 4, 5(5) ; Compute callee base
178 : ST 1, 1(4) ; Store argument 0 in callee frame
179 : LD 1, 2(5) ; Load parameter 'current' into R1
180 : LDA 4, 5(5) ; Compute callee base
181 : ST 1, 2(4) ; Store argument 1 in callee frame
182 : LDA 4, 5(5) ; Recompute callee base from callee size
183 : LDA 6, 187(0) ; Return address
184 : ST 6, 0(4) ; Store return address into callee frame
185 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
186 : LDA 7, 115(0) ; Call testAndLoop
187 : LD 1, 3(5) ; Load callee result into R1
188 : LDC 2, 5(0) ; Caller frame size
189 : SUB 5, 5, 2 ; Pop back to caller
190 : ST 1, 3(5) ; Store function result into frame return slot
191 : LD 6, 0(5) ; Load return address
192 : LDA 7, 0(6) ; Return to caller
