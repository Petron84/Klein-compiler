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
14 : LD 1, 1(5) ; Load parameter 'm' into R1
15 : LDA 4, 4(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 11(0) ; Call built-in print
20 : LDC 2, 3(0) ; Callee frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LD 1, 1(5) ; Load parameter 'm' into R1
23 : LDA 4, 4(5) ; Recompute callee base from caller size
24 : ST 1, 1(4) ; Store argument 0 in callee frame
25 : LD 1, 2(5) ; Load parameter 'n' into R1
26 : LDA 4, 4(5) ; Recompute callee base from caller size
27 : ST 1, 2(4) ; Store argument 1 in callee frame
28 : LDA 4, 4(5) ; Recompute callee base from caller size
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return address into callee frame
31 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
32 : LDA 7, 43(0) ; Call mult
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s return slot
37 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
38 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
39 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
40 : LD 1, 3(5) ; Load main return value into R1
41 : LD 6, 0(5) ; Load root return address from main frame
42 : LDA 7, 0(6) ; Return from main to runtime epilogue
43 : LD 1, 1(5) ; Load parameter 'm' into R1
44 : LDA 4, 4(5) ; Recompute callee base from caller size
45 : ST 1, 1(4) ; Store argument 0 in callee frame
46 : LD 1, 2(5) ; Load parameter 'n' into R1
47 : LDA 4, 4(5) ; Recompute callee base from caller size
48 : ST 1, 2(4) ; Store argument 1 in callee frame
49 : LDC 1, 0(0) ; Load integer-literal into R1
50 : LDA 4, 4(5) ; Recompute callee base from caller size
51 : ST 1, 3(4) ; Store argument 2 in callee frame
52 : LDA 4, 4(5) ; Recompute callee base from caller size
53 : LDA 6, 57(0) ; Return address
54 : ST 6, 0(4) ; Store return address into callee frame
55 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
56 : LDA 7, 63(0) ; Call multWithAccum
57 : LD 1, 4(5) ; Load callee result into R1
58 : LDC 2, 6(0) ; Callee frame size
59 : SUB 5, 5, 2 ; Pop back to caller
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : ST 1, 5(5) ; Spill left operand at depth 0
65 : LDC 1, 0(0) ; Load integer-literal into R1
66 : LD 2, 5(5) ; Restore left operand from depth 0
67 : SUB 1, 2, 1 ; left - right for equality check
68 : JEQ 1, 2(7) ; If R1 == 0, jump to true
69 : LDC 1, 0(0) ; false
70 : LDA 7, 1(7) ; skip setting true
71 : LDC 1, 1(0) ; true
72 : JEQ 1, 75(0) ; If condition is false, jump to ELSE
73 : LD 1, 3(5) ; Load parameter 'accum' into R1
74 : LDA 7, 153(0) ; Skip ELSE block
75 : LD 1, 2(5) ; Load parameter 'n' into R1
76 : LDA 4, 6(5) ; Recompute callee base from caller size
77 : ST 1, 1(4) ; Store argument 0 in callee frame
78 : LDC 1, 2(0) ; Load integer-literal into R1
79 : LDA 4, 6(5) ; Recompute callee base from caller size
80 : ST 1, 2(4) ; Store argument 1 in callee frame
81 : LDA 4, 6(5) ; Recompute callee base from caller size
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return address into callee frame
84 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
85 : LDA 7, 156(0) ; Call MOD
86 : LD 1, 3(5) ; Load callee result into R1
87 : LDC 2, 6(0) ; Callee frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : ST 1, 5(5) ; Spill left operand at depth 0
90 : LDC 1, 1(0) ; Load integer-literal into R1
91 : LD 2, 5(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; left - right for equality check
93 : JEQ 1, 2(7) ; If R1 == 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : JEQ 1, 128(0) ; If condition is false, jump to ELSE
98 : LD 1, 1(5) ; Load parameter 'm' into R1
99 : ST 1, 5(5) ; Spill left operand at depth 0
100 : LDC 1, 2(0) ; Load integer-literal into R1
101 : LD 2, 5(5) ; Restore left operand from depth 0
102 : MUL 1, 2, 1 ; R1 = left * right
103 : LDA 4, 6(5) ; Recompute callee base from caller size
104 : ST 1, 1(4) ; Store argument 0 in callee frame
105 : LD 1, 2(5) ; Load parameter 'n' into R1
106 : ST 1, 5(5) ; Spill left operand at depth 0
107 : LDC 1, 2(0) ; Load integer-literal into R1
108 : LD 2, 5(5) ; Restore left operand from depth 0
109 : DIV 1, 2, 1 ; R1 = left / right
110 : LDA 4, 6(5) ; Recompute callee base from caller size
111 : ST 1, 2(4) ; Store argument 1 in callee frame
112 : LD 1, 3(5) ; Load parameter 'accum' into R1
113 : ST 1, 5(5) ; Spill left operand at depth 0
114 : LD 1, 1(5) ; Load parameter 'm' into R1
115 : LD 2, 5(5) ; Restore left operand from depth 0
116 : ADD 1, 2, 1 ; R1 = left + right
117 : LDA 4, 6(5) ; Recompute callee base from caller size
118 : ST 1, 3(4) ; Store argument 2 in callee frame
119 : LDA 4, 6(5) ; Recompute callee base from caller size
120 : LDA 6, 124(0) ; Return address
121 : ST 6, 0(4) ; Store return address into callee frame
122 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
123 : LDA 7, 63(0) ; Call multWithAccum
124 : LD 1, 4(5) ; Load callee result into R1
125 : LDC 2, 6(0) ; Callee frame size
126 : SUB 5, 5, 2 ; Pop back to caller
127 : LDA 7, 153(0) ; Skip ELSE block
128 : LD 1, 1(5) ; Load parameter 'm' into R1
129 : ST 1, 5(5) ; Spill left operand at depth 0
130 : LDC 1, 2(0) ; Load integer-literal into R1
131 : LD 2, 5(5) ; Restore left operand from depth 0
132 : MUL 1, 2, 1 ; R1 = left * right
133 : LDA 4, 6(5) ; Recompute callee base from caller size
134 : ST 1, 1(4) ; Store argument 0 in callee frame
135 : LD 1, 2(5) ; Load parameter 'n' into R1
136 : ST 1, 5(5) ; Spill left operand at depth 0
137 : LDC 1, 2(0) ; Load integer-literal into R1
138 : LD 2, 5(5) ; Restore left operand from depth 0
139 : DIV 1, 2, 1 ; R1 = left / right
140 : LDA 4, 6(5) ; Recompute callee base from caller size
141 : ST 1, 2(4) ; Store argument 1 in callee frame
142 : LD 1, 3(5) ; Load parameter 'accum' into R1
143 : LDA 4, 6(5) ; Recompute callee base from caller size
144 : ST 1, 3(4) ; Store argument 2 in callee frame
145 : LDA 4, 6(5) ; Recompute callee base from caller size
146 : LDA 6, 150(0) ; Return address
147 : ST 6, 0(4) ; Store return address into callee frame
148 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
149 : LDA 7, 63(0) ; Call multWithAccum
150 : LD 1, 4(5) ; Load callee result into R1
151 : LDC 2, 6(0) ; Callee frame size
152 : SUB 5, 5, 2 ; Pop back to caller
153 : ST 1, 4(5) ; Store function result into frame return slot
154 : LD 6, 0(5) ; Load return address
155 : LDA 7, 0(6) ; Return to caller
156 : LD 1, 1(5) ; Load parameter 'm' into R1
157 : ST 1, 4(5) ; Spill left operand at depth 0
158 : LD 1, 1(5) ; Load parameter 'm' into R1
159 : ST 1, 5(5) ; Spill left operand at depth 1
160 : LD 1, 2(5) ; Load parameter 'n' into R1
161 : LD 2, 5(5) ; Restore left operand from depth 1
162 : DIV 1, 2, 1 ; R1 = left / right
163 : ST 1, 5(5) ; Spill left operand at depth 1
164 : LD 1, 2(5) ; Load parameter 'n' into R1
165 : LD 2, 5(5) ; Restore left operand from depth 1
166 : MUL 1, 2, 1 ; R1 = left * right
167 : LD 2, 4(5) ; Restore left operand from depth 0
168 : SUB 1, 2, 1 ; R1 = left - right
169 : ST 1, 3(5) ; Store function result into frame return slot
170 : LD 6, 0(5) ; Load return address
171 : LDA 7, 0(6) ; Return to caller
