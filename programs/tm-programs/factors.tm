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
13 : LDA 4, 3(5) ; Recompute callee base from caller size
14 : ST 1, 1(4) ; Store argument 0 in callee frame
15 : LDC 1, 1(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Recompute callee base from caller size
17 : ST 1, 2(4) ; Store argument 1 in callee frame
18 : LDA 4, 3(5) ; Recompute callee base from caller size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return address into callee frame
21 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
22 : LDA 7, 171(0) ; Call loopToN
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
28 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
29 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
30 : LD 1, 2(5) ; Load main return value into R1
31 : LD 6, 0(5) ; Load root return address from main frame
32 : LDA 7, 0(6) ; Return from main to runtime epilogue
33 : LD 1, 1(5) ; Load parameter 'num' into R1
34 : ST 1, 4(5) ; Spill left operand at depth 0
35 : LD 1, 2(5) ; Load parameter 'den' into R1
36 : LD 2, 4(5) ; Restore left operand from depth 0
37 : SUB 1, 2, 1 ; left - right for less-than check
38 : JLT 1, 2(7) ; If R1 < 0, jump to true
39 : LDC 1, 0(0) ; false
40 : LDA 7, 1(7) ; skip setting true
41 : LDC 1, 1(0) ; true
42 : JEQ 1, 45(0) ; If condition is false, jump to ELSE
43 : LD 1, 1(5) ; Load parameter 'num' into R1
44 : LDA 7, 63(0) ; Skip ELSE block
45 : LD 1, 1(5) ; Load parameter 'num' into R1
46 : ST 1, 4(5) ; Spill left operand at depth 0
47 : LD 1, 2(5) ; Load parameter 'den' into R1
48 : LD 2, 4(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; R1 = left - right
50 : LDA 4, 5(5) ; Recompute callee base from caller size
51 : ST 1, 1(4) ; Store argument 0 in callee frame
52 : LD 1, 2(5) ; Load parameter 'den' into R1
53 : LDA 4, 5(5) ; Recompute callee base from caller size
54 : ST 1, 2(4) ; Store argument 1 in callee frame
55 : LDA 4, 5(5) ; Recompute callee base from caller size
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return address into callee frame
58 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
59 : LDA 7, 33(0) ; Call remainder
60 : LD 1, 3(5) ; Load callee result into R1
61 : LDC 2, 5(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop back to caller
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LD 1, 2(5) ; Load parameter 'b' into R1
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : ST 1, 1(4) ; Store argument 0 in callee frame
69 : LD 1, 1(5) ; Load parameter 'a' into R1
70 : LDA 4, 5(5) ; Recompute callee base from caller size
71 : ST 1, 2(4) ; Store argument 1 in callee frame
72 : LDA 4, 5(5) ; Recompute callee base from caller size
73 : LDA 6, 77(0) ; Return address
74 : ST 6, 0(4) ; Store return address into callee frame
75 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
76 : LDA 7, 33(0) ; Call remainder
77 : LD 1, 3(5) ; Load callee result into R1
78 : LDC 2, 5(0) ; Callee frame size
79 : SUB 5, 5, 2 ; Pop back to caller
80 : ST 1, 4(5) ; Spill left operand at depth 0
81 : LDC 1, 0(0) ; Load integer-literal into R1
82 : LD 2, 4(5) ; Restore left operand from depth 0
83 : SUB 1, 2, 1 ; left - right for equality check
84 : JEQ 1, 2(7) ; If R1 == 0, jump to true
85 : LDC 1, 0(0) ; false
86 : LDA 7, 1(7) ; skip setting true
87 : LDC 1, 1(0) ; true
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
91 : LD 1, 2(5) ; Load parameter 'current' into R1
92 : LDA 4, 5(5) ; Recompute callee base from caller size
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return address in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
96 : LDA 7, 9(0) ; Call built-in print
97 : LDC 2, 3(0) ; Callee frame size
98 : SUB 5, 5, 2 ; Pop back to caller
99 : LD 1, 1(5) ; Load parameter 'n' into R1
100 : LDA 4, 5(5) ; Recompute callee base from caller size
101 : ST 1, 1(4) ; Store argument 0 in callee frame
102 : LD 1, 2(5) ; Load parameter 'current' into R1
103 : ST 1, 4(5) ; Spill left operand at depth 0
104 : LDC 1, 1(0) ; Load integer-literal into R1
105 : LD 2, 4(5) ; Restore left operand from depth 0
106 : ADD 1, 2, 1 ; R1 = left + right
107 : LDA 4, 5(5) ; Recompute callee base from caller size
108 : ST 1, 2(4) ; Store argument 1 in callee frame
109 : LDA 4, 5(5) ; Recompute callee base from caller size
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(4) ; Store return address into callee frame
112 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
113 : LDA 7, 171(0) ; Call loopToN
114 : LD 1, 3(5) ; Load callee result into R1
115 : LDC 2, 5(0) ; Callee frame size
116 : SUB 5, 5, 2 ; Pop back to caller
117 : ST 1, 3(5) ; Store function result into frame return slot
118 : LD 6, 0(5) ; Load return address
119 : LDA 7, 0(6) ; Return to caller
120 : LD 1, 2(5) ; Load parameter 'current' into R1
121 : LDA 4, 5(5) ; Recompute callee base from caller size
122 : ST 1, 1(4) ; Store argument 0 in callee frame
123 : LD 1, 1(5) ; Load parameter 'n' into R1
124 : LDA 4, 5(5) ; Recompute callee base from caller size
125 : ST 1, 2(4) ; Store argument 1 in callee frame
126 : LDA 4, 5(5) ; Recompute callee base from caller size
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return address into callee frame
129 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
130 : LDA 7, 66(0) ; Call divides
131 : LD 1, 3(5) ; Load callee result into R1
132 : LDC 2, 5(0) ; Callee frame size
133 : SUB 5, 5, 2 ; Pop back to caller
134 : JEQ 1, 150(0) ; If condition is false, jump to ELSE
135 : LD 1, 1(5) ; Load parameter 'n' into R1
136 : LDA 4, 5(5) ; Recompute callee base from caller size
137 : ST 1, 1(4) ; Store argument 0 in callee frame
138 : LD 1, 2(5) ; Load parameter 'current' into R1
139 : LDA 4, 5(5) ; Recompute callee base from caller size
140 : ST 1, 2(4) ; Store argument 1 in callee frame
141 : LDA 4, 5(5) ; Recompute callee base from caller size
142 : LDA 6, 146(0) ; Return address
143 : ST 6, 0(4) ; Store return address into callee frame
144 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
145 : LDA 7, 91(0) ; Call printAndLoop
146 : LD 1, 3(5) ; Load callee result into R1
147 : LDC 2, 5(0) ; Callee frame size
148 : SUB 5, 5, 2 ; Pop back to caller
149 : LDA 7, 168(0) ; Skip ELSE block
150 : LD 1, 1(5) ; Load parameter 'n' into R1
151 : LDA 4, 5(5) ; Recompute callee base from caller size
152 : ST 1, 1(4) ; Store argument 0 in callee frame
153 : LD 1, 2(5) ; Load parameter 'current' into R1
154 : ST 1, 4(5) ; Spill left operand at depth 0
155 : LDC 1, 1(0) ; Load integer-literal into R1
156 : LD 2, 4(5) ; Restore left operand from depth 0
157 : ADD 1, 2, 1 ; R1 = left + right
158 : LDA 4, 5(5) ; Recompute callee base from caller size
159 : ST 1, 2(4) ; Store argument 1 in callee frame
160 : LDA 4, 5(5) ; Recompute callee base from caller size
161 : LDA 6, 165(0) ; Return address
162 : ST 6, 0(4) ; Store return address into callee frame
163 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
164 : LDA 7, 171(0) ; Call loopToN
165 : LD 1, 3(5) ; Load callee result into R1
166 : LDC 2, 5(0) ; Callee frame size
167 : SUB 5, 5, 2 ; Pop back to caller
168 : ST 1, 3(5) ; Store function result into frame return slot
169 : LD 6, 0(5) ; Load return address
170 : LDA 7, 0(6) ; Return to caller
171 : LD 1, 1(5) ; Load parameter 'n' into R1
172 : ST 1, 4(5) ; Spill left operand at depth 0
173 : LD 1, 2(5) ; Load parameter 'current' into R1
174 : LD 2, 4(5) ; Restore left operand from depth 0
175 : SUB 1, 2, 1 ; left - right for equality check
176 : JEQ 1, 2(7) ; If R1 == 0, jump to true
177 : LDC 1, 0(0) ; false
178 : LDA 7, 1(7) ; skip setting true
179 : LDC 1, 1(0) ; true
180 : JEQ 1, 183(0) ; If condition is false, jump to ELSE
181 : LD 1, 1(5) ; Load parameter 'n' into R1
182 : LDA 7, 197(0) ; Skip ELSE block
183 : LD 1, 1(5) ; Load parameter 'n' into R1
184 : LDA 4, 5(5) ; Recompute callee base from caller size
185 : ST 1, 1(4) ; Store argument 0 in callee frame
186 : LD 1, 2(5) ; Load parameter 'current' into R1
187 : LDA 4, 5(5) ; Recompute callee base from caller size
188 : ST 1, 2(4) ; Store argument 1 in callee frame
189 : LDA 4, 5(5) ; Recompute callee base from caller size
190 : LDA 6, 194(0) ; Return address
191 : ST 6, 0(4) ; Store return address into callee frame
192 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
193 : LDA 7, 120(0) ; Call testAndLoop
194 : LD 1, 3(5) ; Load callee result into R1
195 : LDC 2, 5(0) ; Callee frame size
196 : SUB 5, 5, 2 ; Pop back to caller
197 : ST 1, 3(5) ; Store function result into frame return slot
198 : LD 6, 0(5) ; Load return address
199 : LDA 7, 0(6) ; Return to caller
