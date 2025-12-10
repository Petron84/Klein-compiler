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
32 : LDA 7, 41(0) ; Call mult
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s return slot
37 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
38 : LD 1, 3(5) ; Load main return value into R1
39 : LD 6, 0(5) ; Load root return address from main frame
40 : LDA 7, 0(6) ; Return from main to runtime epilogue
41 : LD 1, 1(5) ; Load parameter 'm' into R1
42 : LDA 4, 4(5) ; Recompute callee base from caller size
43 : ST 1, 1(4) ; Store argument 0 in callee frame
44 : LD 1, 2(5) ; Load parameter 'n' into R1
45 : LDA 4, 4(5) ; Recompute callee base from caller size
46 : ST 1, 2(4) ; Store argument 1 in callee frame
47 : LDC 1, 0(0) ; Load integer-literal into R1
48 : LDA 4, 4(5) ; Recompute callee base from caller size
49 : ST 1, 3(4) ; Store argument 2 in callee frame
50 : LDA 4, 4(5) ; Recompute callee base from caller size
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return address into callee frame
53 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
54 : LDA 7, 61(0) ; Call multWithAccum
55 : LD 1, 4(5) ; Load callee result into R1
56 : LDC 2, 6(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop back to caller
58 : ST 1, 3(5) ; Store function result into frame return slot
59 : LD 6, 0(5) ; Load return address
60 : LDA 7, 0(6) ; Return to caller
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 5(5) ; Spill left operand at depth 0
63 : LDC 1, 0(0) ; Load integer-literal into R1
64 : LD 2, 5(5) ; Restore left operand from depth 0
65 : SUB 1, 2, 1 ; left - right for equality check
66 : JEQ 1, 2(7) ; If R1 == 0, jump to true
67 : LDC 1, 0(0) ; false
68 : LDA 7, 1(7) ; skip setting true
69 : LDC 1, 1(0) ; true
70 : JEQ 1, 73(0) ; If condition is false, jump to ELSE
71 : LD 1, 3(5) ; Load parameter 'accum' into R1
72 : LDA 7, 151(0) ; Skip ELSE block
73 : LD 1, 2(5) ; Load parameter 'n' into R1
74 : LDA 4, 6(5) ; Recompute callee base from caller size
75 : ST 1, 1(4) ; Store argument 0 in callee frame
76 : LDC 1, 2(0) ; Load integer-literal into R1
77 : LDA 4, 6(5) ; Recompute callee base from caller size
78 : ST 1, 2(4) ; Store argument 1 in callee frame
79 : LDA 4, 6(5) ; Recompute callee base from caller size
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return address into callee frame
82 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
83 : LDA 7, 154(0) ; Call MOD
84 : LD 1, 3(5) ; Load callee result into R1
85 : LDC 2, 6(0) ; Callee frame size
86 : SUB 5, 5, 2 ; Pop back to caller
87 : ST 1, 5(5) ; Spill left operand at depth 0
88 : LDC 1, 1(0) ; Load integer-literal into R1
89 : LD 2, 5(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; left - right for equality check
91 : JEQ 1, 2(7) ; If R1 == 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : JEQ 1, 126(0) ; If condition is false, jump to ELSE
96 : LD 1, 1(5) ; Load parameter 'm' into R1
97 : ST 1, 5(5) ; Spill left operand at depth 0
98 : LDC 1, 2(0) ; Load integer-literal into R1
99 : LD 2, 5(5) ; Restore left operand from depth 0
100 : MUL 1, 2, 1 ; R1 = left * right
101 : LDA 4, 6(5) ; Recompute callee base from caller size
102 : ST 1, 1(4) ; Store argument 0 in callee frame
103 : LD 1, 2(5) ; Load parameter 'n' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 0
105 : LDC 1, 2(0) ; Load integer-literal into R1
106 : LD 2, 5(5) ; Restore left operand from depth 0
107 : DIV 1, 2, 1 ; R1 = left / right
108 : LDA 4, 6(5) ; Recompute callee base from caller size
109 : ST 1, 2(4) ; Store argument 1 in callee frame
110 : LD 1, 3(5) ; Load parameter 'accum' into R1
111 : ST 1, 5(5) ; Spill left operand at depth 0
112 : LD 1, 1(5) ; Load parameter 'm' into R1
113 : LD 2, 5(5) ; Restore left operand from depth 0
114 : ADD 1, 2, 1 ; R1 = left + right
115 : LDA 4, 6(5) ; Recompute callee base from caller size
116 : ST 1, 3(4) ; Store argument 2 in callee frame
117 : LDA 4, 6(5) ; Recompute callee base from caller size
118 : LDA 6, 122(0) ; Return address
119 : ST 6, 0(4) ; Store return address into callee frame
120 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
121 : LDA 7, 61(0) ; Call multWithAccum
122 : LD 1, 4(5) ; Load callee result into R1
123 : LDC 2, 6(0) ; Callee frame size
124 : SUB 5, 5, 2 ; Pop back to caller
125 : LDA 7, 151(0) ; Skip ELSE block
126 : LD 1, 1(5) ; Load parameter 'm' into R1
127 : ST 1, 5(5) ; Spill left operand at depth 0
128 : LDC 1, 2(0) ; Load integer-literal into R1
129 : LD 2, 5(5) ; Restore left operand from depth 0
130 : MUL 1, 2, 1 ; R1 = left * right
131 : LDA 4, 6(5) ; Recompute callee base from caller size
132 : ST 1, 1(4) ; Store argument 0 in callee frame
133 : LD 1, 2(5) ; Load parameter 'n' into R1
134 : ST 1, 5(5) ; Spill left operand at depth 0
135 : LDC 1, 2(0) ; Load integer-literal into R1
136 : LD 2, 5(5) ; Restore left operand from depth 0
137 : DIV 1, 2, 1 ; R1 = left / right
138 : LDA 4, 6(5) ; Recompute callee base from caller size
139 : ST 1, 2(4) ; Store argument 1 in callee frame
140 : LD 1, 3(5) ; Load parameter 'accum' into R1
141 : LDA 4, 6(5) ; Recompute callee base from caller size
142 : ST 1, 3(4) ; Store argument 2 in callee frame
143 : LDA 4, 6(5) ; Recompute callee base from caller size
144 : LDA 6, 148(0) ; Return address
145 : ST 6, 0(4) ; Store return address into callee frame
146 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
147 : LDA 7, 61(0) ; Call multWithAccum
148 : LD 1, 4(5) ; Load callee result into R1
149 : LDC 2, 6(0) ; Callee frame size
150 : SUB 5, 5, 2 ; Pop back to caller
151 : ST 1, 4(5) ; Store function result into frame return slot
152 : LD 6, 0(5) ; Load return address
153 : LDA 7, 0(6) ; Return to caller
154 : LD 1, 1(5) ; Load parameter 'm' into R1
155 : ST 1, 4(5) ; Spill left operand at depth 0
156 : LD 1, 1(5) ; Load parameter 'm' into R1
157 : ST 1, 5(5) ; Spill left operand at depth 1
158 : LD 1, 2(5) ; Load parameter 'n' into R1
159 : LD 2, 5(5) ; Restore left operand from depth 1
160 : DIV 1, 2, 1 ; R1 = left / right
161 : ST 1, 5(5) ; Spill left operand at depth 1
162 : LD 1, 2(5) ; Load parameter 'n' into R1
163 : LD 2, 5(5) ; Restore left operand from depth 1
164 : MUL 1, 2, 1 ; R1 = left * right
165 : LD 2, 4(5) ; Restore left operand from depth 0
166 : SUB 1, 2, 1 ; R1 = left - right
167 : ST 1, 3(5) ; Store function result into frame return slot
168 : LD 6, 0(5) ; Load return address
169 : LDA 7, 0(6) ; Return to caller
