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
22 : LDA 7, 169(0) ; Call loopToN
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 5(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : ST 1, 2(5) ; Store result into caller’s return slot
27 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
28 : LD 1, 2(5) ; Load main return value into R1
29 : LD 6, 0(5) ; Load root return address from main frame
30 : LDA 7, 0(6) ; Return from main to runtime epilogue
31 : LD 1, 1(5) ; Load parameter 'num' into R1
32 : ST 1, 4(5) ; Spill left operand at depth 0
33 : LD 1, 2(5) ; Load parameter 'den' into R1
34 : LD 2, 4(5) ; Restore left operand from depth 0
35 : SUB 1, 2, 1 ; left - right for less-than check
36 : JLT 1, 2(7) ; If R1 < 0, jump to true
37 : LDC 1, 0(0) ; false
38 : LDA 7, 1(7) ; skip setting true
39 : LDC 1, 1(0) ; true
40 : JEQ 1, 43(0) ; If condition is false, jump to ELSE
41 : LD 1, 1(5) ; Load parameter 'num' into R1
42 : LDA 7, 61(0) ; Skip ELSE block
43 : LD 1, 1(5) ; Load parameter 'num' into R1
44 : ST 1, 4(5) ; Spill left operand at depth 0
45 : LD 1, 2(5) ; Load parameter 'den' into R1
46 : LD 2, 4(5) ; Restore left operand from depth 0
47 : SUB 1, 2, 1 ; R1 = left - right
48 : LDA 4, 5(5) ; Recompute callee base from caller size
49 : ST 1, 1(4) ; Store argument 0 in callee frame
50 : LD 1, 2(5) ; Load parameter 'den' into R1
51 : LDA 4, 5(5) ; Recompute callee base from caller size
52 : ST 1, 2(4) ; Store argument 1 in callee frame
53 : LDA 4, 5(5) ; Recompute callee base from caller size
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return address into callee frame
56 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
57 : LDA 7, 31(0) ; Call remainder
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 5(0) ; Callee frame size
60 : SUB 5, 5, 2 ; Pop back to caller
61 : ST 1, 3(5) ; Store function result into frame return slot
62 : LD 6, 0(5) ; Load return address
63 : LDA 7, 0(6) ; Return to caller
64 : LD 1, 2(5) ; Load parameter 'b' into R1
65 : LDA 4, 5(5) ; Recompute callee base from caller size
66 : ST 1, 1(4) ; Store argument 0 in callee frame
67 : LD 1, 1(5) ; Load parameter 'a' into R1
68 : LDA 4, 5(5) ; Recompute callee base from caller size
69 : ST 1, 2(4) ; Store argument 1 in callee frame
70 : LDA 4, 5(5) ; Recompute callee base from caller size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return address into callee frame
73 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
74 : LDA 7, 31(0) ; Call remainder
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop back to caller
78 : ST 1, 4(5) ; Spill left operand at depth 0
79 : LDC 1, 0(0) ; Load integer-literal into R1
80 : LD 2, 4(5) ; Restore left operand from depth 0
81 : SUB 1, 2, 1 ; left - right for equality check
82 : JEQ 1, 2(7) ; If R1 == 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : ST 1, 3(5) ; Store function result into frame return slot
87 : LD 6, 0(5) ; Load return address
88 : LDA 7, 0(6) ; Return to caller
89 : LD 1, 2(5) ; Load parameter 'current' into R1
90 : LDA 4, 5(5) ; Recompute callee base from caller size
91 : LDA 6, 95(0) ; Return address
92 : ST 6, 0(4) ; Store return address in callee frame
93 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
94 : LDA 7, 9(0) ; Call built-in print
95 : LDC 2, 3(0) ; Callee frame size
96 : SUB 5, 5, 2 ; Pop back to caller
97 : LD 1, 1(5) ; Load parameter 'n' into R1
98 : LDA 4, 5(5) ; Recompute callee base from caller size
99 : ST 1, 1(4) ; Store argument 0 in callee frame
100 : LD 1, 2(5) ; Load parameter 'current' into R1
101 : ST 1, 4(5) ; Spill left operand at depth 0
102 : LDC 1, 1(0) ; Load integer-literal into R1
103 : LD 2, 4(5) ; Restore left operand from depth 0
104 : ADD 1, 2, 1 ; R1 = left + right
105 : LDA 4, 5(5) ; Recompute callee base from caller size
106 : ST 1, 2(4) ; Store argument 1 in callee frame
107 : LDA 4, 5(5) ; Recompute callee base from caller size
108 : LDA 6, 112(0) ; Return address
109 : ST 6, 0(4) ; Store return address into callee frame
110 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
111 : LDA 7, 169(0) ; Call loopToN
112 : LD 1, 3(5) ; Load callee result into R1
113 : LDC 2, 5(0) ; Callee frame size
114 : SUB 5, 5, 2 ; Pop back to caller
115 : ST 1, 3(5) ; Store function result into frame return slot
116 : LD 6, 0(5) ; Load return address
117 : LDA 7, 0(6) ; Return to caller
118 : LD 1, 2(5) ; Load parameter 'current' into R1
119 : LDA 4, 5(5) ; Recompute callee base from caller size
120 : ST 1, 1(4) ; Store argument 0 in callee frame
121 : LD 1, 1(5) ; Load parameter 'n' into R1
122 : LDA 4, 5(5) ; Recompute callee base from caller size
123 : ST 1, 2(4) ; Store argument 1 in callee frame
124 : LDA 4, 5(5) ; Recompute callee base from caller size
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return address into callee frame
127 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
128 : LDA 7, 64(0) ; Call divides
129 : LD 1, 3(5) ; Load callee result into R1
130 : LDC 2, 5(0) ; Callee frame size
131 : SUB 5, 5, 2 ; Pop back to caller
132 : JEQ 1, 148(0) ; If condition is false, jump to ELSE
133 : LD 1, 1(5) ; Load parameter 'n' into R1
134 : LDA 4, 5(5) ; Recompute callee base from caller size
135 : ST 1, 1(4) ; Store argument 0 in callee frame
136 : LD 1, 2(5) ; Load parameter 'current' into R1
137 : LDA 4, 5(5) ; Recompute callee base from caller size
138 : ST 1, 2(4) ; Store argument 1 in callee frame
139 : LDA 4, 5(5) ; Recompute callee base from caller size
140 : LDA 6, 144(0) ; Return address
141 : ST 6, 0(4) ; Store return address into callee frame
142 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
143 : LDA 7, 89(0) ; Call printAndLoop
144 : LD 1, 3(5) ; Load callee result into R1
145 : LDC 2, 5(0) ; Callee frame size
146 : SUB 5, 5, 2 ; Pop back to caller
147 : LDA 7, 166(0) ; Skip ELSE block
148 : LD 1, 1(5) ; Load parameter 'n' into R1
149 : LDA 4, 5(5) ; Recompute callee base from caller size
150 : ST 1, 1(4) ; Store argument 0 in callee frame
151 : LD 1, 2(5) ; Load parameter 'current' into R1
152 : ST 1, 4(5) ; Spill left operand at depth 0
153 : LDC 1, 1(0) ; Load integer-literal into R1
154 : LD 2, 4(5) ; Restore left operand from depth 0
155 : ADD 1, 2, 1 ; R1 = left + right
156 : LDA 4, 5(5) ; Recompute callee base from caller size
157 : ST 1, 2(4) ; Store argument 1 in callee frame
158 : LDA 4, 5(5) ; Recompute callee base from caller size
159 : LDA 6, 163(0) ; Return address
160 : ST 6, 0(4) ; Store return address into callee frame
161 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
162 : LDA 7, 169(0) ; Call loopToN
163 : LD 1, 3(5) ; Load callee result into R1
164 : LDC 2, 5(0) ; Callee frame size
165 : SUB 5, 5, 2 ; Pop back to caller
166 : ST 1, 3(5) ; Store function result into frame return slot
167 : LD 6, 0(5) ; Load return address
168 : LDA 7, 0(6) ; Return to caller
169 : LD 1, 1(5) ; Load parameter 'n' into R1
170 : ST 1, 4(5) ; Spill left operand at depth 0
171 : LD 1, 2(5) ; Load parameter 'current' into R1
172 : LD 2, 4(5) ; Restore left operand from depth 0
173 : SUB 1, 2, 1 ; left - right for equality check
174 : JEQ 1, 2(7) ; If R1 == 0, jump to true
175 : LDC 1, 0(0) ; false
176 : LDA 7, 1(7) ; skip setting true
177 : LDC 1, 1(0) ; true
178 : JEQ 1, 181(0) ; If condition is false, jump to ELSE
179 : LD 1, 1(5) ; Load parameter 'n' into R1
180 : LDA 7, 195(0) ; Skip ELSE block
181 : LD 1, 1(5) ; Load parameter 'n' into R1
182 : LDA 4, 5(5) ; Recompute callee base from caller size
183 : ST 1, 1(4) ; Store argument 0 in callee frame
184 : LD 1, 2(5) ; Load parameter 'current' into R1
185 : LDA 4, 5(5) ; Recompute callee base from caller size
186 : ST 1, 2(4) ; Store argument 1 in callee frame
187 : LDA 4, 5(5) ; Recompute callee base from caller size
188 : LDA 6, 192(0) ; Return address
189 : ST 6, 0(4) ; Store return address into callee frame
190 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
191 : LDA 7, 118(0) ; Call testAndLoop
192 : LD 1, 3(5) ; Load callee result into R1
193 : LDC 2, 5(0) ; Callee frame size
194 : SUB 5, 5, 2 ; Pop back to caller
195 : ST 1, 3(5) ; Store function result into frame return slot
196 : LD 6, 0(5) ; Load return address
197 : LDA 7, 0(6) ; Return to caller
