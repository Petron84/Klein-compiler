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
13 : LDA 4, 3(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDC 1, 1(0) ; Load integer-literal into R1
16 : LDA 4, 3(5) ; Recompute callee base from callee size
17 : ST 1, 2(4) ; Store argument 1 in callee
18 : LDA 4, 3(4) ; Recompute callee base from callee size
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
22 : LDA 7, 168(0) ; Call loopToN
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 3(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop callee frame
26 : ST 1, 2(5) ; Store result into caller’s frame
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
47 : LDA 4, 5(5) ; Recompute callee base from callee size
48 : ST 1, 1(4) ; Store argument 0 in callee
49 : LD 1, 2(5) ; Load parameter 'den' into R1
50 : LDA 4, 5(5) ; Recompute callee base from callee size
51 : ST 1, 2(4) ; Store argument 1 in callee
52 : LDA 4, 5(4) ; Recompute callee base from callee size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return in callee frame
55 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
56 : LDA 7, 30(0) ; Call remainder
57 : LD 1, 3(5) ; Load callee result into R1
58 : LDC 2, 5(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop callee frame
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'b' into R1
64 : LDA 4, 5(5) ; Recompute callee base from callee size
65 : ST 1, 1(4) ; Store argument 0 in callee
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : LDA 4, 5(5) ; Recompute callee base from callee size
68 : ST 1, 2(4) ; Store argument 1 in callee
69 : LDA 4, 5(4) ; Recompute callee base from callee size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 30(0) ; Call remainder
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 5(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop callee frame
77 : ST 1, 4(5) ; Spill left operand at depth 0
78 : LDC 1, 0(0) ; Load integer-literal into R1
79 : LD 2, 4(5) ; Restore left operand from depth 0
80 : SUB 1, 2, 1 ; left - right for equality check
81 : JEQ 1, 2(7) ; If R1 == 0, jump to true
82 : LDC 1, 0(0) ; false
83 : LDA 7, 1(7) ; skip setting true
84 : LDC 1, 1(0) ; true
85 : ST 1, 3(5) ; Store function result into frame return slot
86 : LD 6, 0(5) ; Load return address
87 : LDA 7, 0(6) ; Return to caller
88 : LD 1, 2(5) ; Load parameter 'current' into R1
89 : LDA 4, 5(5) ; Recompute callee base from caller size
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return address in callee frame
92 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
93 : LDA 7, 9(0) ; Call built-in print
94 : LDC 2, 5(0) ; Caller frame size
95 : SUB 5, 5, 2 ; Pop back to caller
96 : LD 1, 1(5) ; Load parameter 'n' into R1
97 : LDA 4, 5(5) ; Recompute callee base from callee size
98 : ST 1, 1(4) ; Store argument 0 in callee
99 : LD 1, 2(5) ; Load parameter 'current' into R1
100 : ST 1, 4(5) ; Spill left operand at depth 0
101 : LDC 1, 1(0) ; Load integer-literal into R1
102 : LD 2, 4(5) ; Restore left operand from depth 0
103 : ADD 1, 2, 1 ; R1 = left + right
104 : LDA 4, 5(5) ; Recompute callee base from callee size
105 : ST 1, 2(4) ; Store argument 1 in callee
106 : LDA 4, 5(4) ; Recompute callee base from callee size
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return in callee frame
109 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
110 : LDA 7, 168(0) ; Call loopToN
111 : LD 1, 3(5) ; Load callee result into R1
112 : LDC 2, 5(0) ; Callee frame size
113 : SUB 5, 5, 2 ; Pop callee frame
114 : ST 1, 3(5) ; Store function result into frame return slot
115 : LD 6, 0(5) ; Load return address
116 : LDA 7, 0(6) ; Return to caller
117 : LD 1, 2(5) ; Load parameter 'current' into R1
118 : LDA 4, 5(5) ; Recompute callee base from callee size
119 : ST 1, 1(4) ; Store argument 0 in callee
120 : LD 1, 1(5) ; Load parameter 'n' into R1
121 : LDA 4, 5(5) ; Recompute callee base from callee size
122 : ST 1, 2(4) ; Store argument 1 in callee
123 : LDA 4, 5(4) ; Recompute callee base from callee size
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return in callee frame
126 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
127 : LDA 7, 63(0) ; Call divides
128 : LD 1, 3(5) ; Load callee result into R1
129 : LDC 2, 5(0) ; Callee frame size
130 : SUB 5, 5, 2 ; Pop callee frame
131 : JEQ 1, 147(0) ; If condition is false, jump to ELSE
132 : LD 1, 1(5) ; Load parameter 'n' into R1
133 : LDA 4, 5(5) ; Recompute callee base from callee size
134 : ST 1, 1(4) ; Store argument 0 in callee
135 : LD 1, 2(5) ; Load parameter 'current' into R1
136 : LDA 4, 5(5) ; Recompute callee base from callee size
137 : ST 1, 2(4) ; Store argument 1 in callee
138 : LDA 4, 5(4) ; Recompute callee base from callee size
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 88(0) ; Call printAndLoop
143 : LD 1, 3(5) ; Load callee result into R1
144 : LDC 2, 5(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : LDA 7, 165(0) ; Skip ELSE block
147 : LD 1, 1(5) ; Load parameter 'n' into R1
148 : LDA 4, 5(5) ; Recompute callee base from callee size
149 : ST 1, 1(4) ; Store argument 0 in callee
150 : LD 1, 2(5) ; Load parameter 'current' into R1
151 : ST 1, 4(5) ; Spill left operand at depth 0
152 : LDC 1, 1(0) ; Load integer-literal into R1
153 : LD 2, 4(5) ; Restore left operand from depth 0
154 : ADD 1, 2, 1 ; R1 = left + right
155 : LDA 4, 5(5) ; Recompute callee base from callee size
156 : ST 1, 2(4) ; Store argument 1 in callee
157 : LDA 4, 5(4) ; Recompute callee base from callee size
158 : LDA 6, 162(0) ; Return address
159 : ST 6, 0(4) ; Store return in callee frame
160 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
161 : LDA 7, 168(0) ; Call loopToN
162 : LD 1, 3(5) ; Load callee result into R1
163 : LDC 2, 5(0) ; Callee frame size
164 : SUB 5, 5, 2 ; Pop callee frame
165 : ST 1, 3(5) ; Store function result into frame return slot
166 : LD 6, 0(5) ; Load return address
167 : LDA 7, 0(6) ; Return to caller
168 : LD 1, 1(5) ; Load parameter 'n' into R1
169 : ST 1, 4(5) ; Spill left operand at depth 0
170 : LD 1, 2(5) ; Load parameter 'current' into R1
171 : LD 2, 4(5) ; Restore left operand from depth 0
172 : SUB 1, 2, 1 ; left - right for equality check
173 : JEQ 1, 2(7) ; If R1 == 0, jump to true
174 : LDC 1, 0(0) ; false
175 : LDA 7, 1(7) ; skip setting true
176 : LDC 1, 1(0) ; true
177 : JEQ 1, 180(0) ; If condition is false, jump to ELSE
178 : LD 1, 1(5) ; Load parameter 'n' into R1
179 : LDA 7, 194(0) ; Skip ELSE block
180 : LD 1, 1(5) ; Load parameter 'n' into R1
181 : LDA 4, 5(5) ; Recompute callee base from callee size
182 : ST 1, 1(4) ; Store argument 0 in callee
183 : LD 1, 2(5) ; Load parameter 'current' into R1
184 : LDA 4, 5(5) ; Recompute callee base from callee size
185 : ST 1, 2(4) ; Store argument 1 in callee
186 : LDA 4, 5(4) ; Recompute callee base from callee size
187 : LDA 6, 191(0) ; Return address
188 : ST 6, 0(4) ; Store return in callee frame
189 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
190 : LDA 7, 117(0) ; Call testAndLoop
191 : LD 1, 3(5) ; Load callee result into R1
192 : LDC 2, 5(0) ; Callee frame size
193 : SUB 5, 5, 2 ; Pop callee frame
194 : ST 1, 3(5) ; Store function result into frame return slot
195 : LD 6, 0(5) ; Load return address
196 : LDA 7, 0(6) ; Return to caller
