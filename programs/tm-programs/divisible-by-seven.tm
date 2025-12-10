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
13 : ST 1, 3(5) ; Spill left operand at depth 0
14 : LDC 1, 10(0) ; Load integer-literal into R1
15 : LD 2, 3(5) ; Restore left operand from depth 0
16 : DIV 1, 2, 1 ; R1 = left / right
17 : LDA 4, 4(5) ; Recompute callee base from caller size
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LD 1, 1(5) ; Load parameter 'n' into R1
20 : LDA 4, 4(5) ; Recompute callee base from caller size
21 : ST 1, 1(4) ; Store argument 0 in callee frame
22 : LDC 1, 10(0) ; Load integer-literal into R1
23 : LDA 4, 4(5) ; Recompute callee base from caller size
24 : ST 1, 2(4) ; Store argument 1 in callee frame
25 : LDA 4, 4(5) ; Recompute callee base from caller size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 50(0) ; Call MOD
30 : LD 1, 3(5) ; Load callee result into R1
31 : LDC 2, 6(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 4(5) ; Recompute callee base from caller size
34 : ST 1, 2(4) ; Store argument 1 in callee frame
35 : LDA 4, 4(5) ; Recompute callee base from caller size
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return address into callee frame
38 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
39 : LDA 7, 142(0) ; Call divisibleByParts
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 6(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop back to caller
43 : ST 1, 2(5) ; Store result into caller’s return slot
44 : LDC 5, 2(0) ; Anchor R5 to main frame base (DMEM[N+1])
45 : ST 1, 2(5) ; Store final result into MAIN frame's return slot
46 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
47 : LD 1, 2(5) ; Load main return value into R1
48 : LD 6, 0(5) ; Load root return address from main frame
49 : LDA 7, 0(6) ; Return from main to runtime epilogue
50 : LD 1, 1(5) ; Load parameter 'm' into R1
51 : ST 1, 4(5) ; Spill left operand at depth 0
52 : LD 1, 1(5) ; Load parameter 'm' into R1
53 : ST 1, 5(5) ; Spill left operand at depth 1
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : LD 2, 5(5) ; Restore left operand from depth 1
56 : DIV 1, 2, 1 ; R1 = left / right
57 : ST 1, 5(5) ; Spill left operand at depth 1
58 : LD 1, 2(5) ; Load parameter 'n' into R1
59 : LD 2, 5(5) ; Restore left operand from depth 1
60 : MUL 1, 2, 1 ; R1 = left * right
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; R1 = left - right
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LD 1, 1(5) ; Load parameter 'diff' into R1
67 : ST 1, 3(5) ; Spill left operand at depth 0
68 : LDC 1, 7(0) ; Load integer-literal into R1
69 : LD 2, 3(5) ; Restore left operand from depth 0
70 : SUB 1, 2, 1 ; left - right for equality check
71 : JEQ 1, 2(7) ; If R1 == 0, jump to true
72 : LDC 1, 0(0) ; false
73 : LDA 7, 1(7) ; skip setting true
74 : LDC 1, 1(0) ; true
75 : ST 1, 3(5) ; Spill left operand at depth 0
76 : LD 1, 1(5) ; Load parameter 'diff' into R1
77 : ST 1, 4(5) ; Spill left operand at depth 1
78 : LDC 1, 0(0) ; Load integer-literal into R1
79 : LD 2, 4(5) ; Restore left operand from depth 1
80 : SUB 1, 2, 1 ; left - right for equality check
81 : JEQ 1, 2(7) ; If R1 == 0, jump to true
82 : LDC 1, 0(0) ; false
83 : LDA 7, 1(7) ; skip setting true
84 : LDC 1, 1(0) ; true
85 : LD 2, 3(5) ; Restore left operand from depth 0
86 : ADD 1, 2, 1 ; R1 = left OR right
87 : ST 1, 3(5) ; Spill left operand at depth 0
88 : LD 1, 1(5) ; Load parameter 'diff' into R1
89 : ST 1, 4(5) ; Spill left operand at depth 1
90 : LDC 1, 7(0) ; Load integer-literal into R1
91 : SUB 1, 0, 1 ; Negate value in R1
92 : LD 2, 4(5) ; Restore left operand from depth 1
93 : SUB 1, 2, 1 ; left - right for equality check
94 : JEQ 1, 2(7) ; If R1 == 0, jump to true
95 : LDC 1, 0(0) ; false
96 : LDA 7, 1(7) ; skip setting true
97 : LDC 1, 1(0) ; true
98 : LD 2, 3(5) ; Restore left operand from depth 0
99 : ADD 1, 2, 1 ; R1 = left OR right
100 : ST 1, 3(5) ; Spill left operand at depth 0
101 : LD 1, 1(5) ; Load parameter 'diff' into R1
102 : ST 1, 4(5) ; Spill left operand at depth 1
103 : LDC 1, 14(0) ; Load integer-literal into R1
104 : SUB 1, 0, 1 ; Negate value in R1
105 : LD 2, 4(5) ; Restore left operand from depth 1
106 : SUB 1, 2, 1 ; left - right for equality check
107 : JEQ 1, 2(7) ; If R1 == 0, jump to true
108 : LDC 1, 0(0) ; false
109 : LDA 7, 1(7) ; skip setting true
110 : LDC 1, 1(0) ; true
111 : LD 2, 3(5) ; Restore left operand from depth 0
112 : ADD 1, 2, 1 ; R1 = left OR right
113 : JEQ 1, 116(0) ; If condition is false, jump to ELSE
114 : LDC 1, 1(0) ; Load boolean-literal into R1
115 : LDA 7, 139(0) ; Skip ELSE block
116 : LD 1, 1(5) ; Load parameter 'diff' into R1
117 : ST 1, 3(5) ; Spill left operand at depth 0
118 : LDC 1, 14(0) ; Load integer-literal into R1
119 : LD 2, 3(5) ; Restore left operand from depth 0
120 : SUB 1, 2, 1 ; left - right for less-than check
121 : JLT 1, 2(7) ; If R1 < 0, jump to true
122 : LDC 1, 0(0) ; false
123 : LDA 7, 1(7) ; skip setting true
124 : LDC 1, 1(0) ; true
125 : JEQ 1, 128(0) ; If condition is false, jump to ELSE
126 : LDC 1, 0(0) ; Load boolean-literal into R1
127 : LDA 7, 139(0) ; Skip ELSE block
128 : LD 1, 1(5) ; Load parameter 'diff' into R1
129 : LDA 4, 5(5) ; Recompute callee base from caller size
130 : ST 1, 1(4) ; Store argument 0 in callee frame
131 : LDA 4, 5(5) ; Recompute callee base from caller size
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return address into callee frame
134 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
135 : LDA 7, 12(0) ; Call main
136 : LD 1, 2(5) ; Load callee result into R1
137 : LDC 2, 4(0) ; Callee frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : ST 1, 2(5) ; Store function result into frame return slot
140 : LD 6, 0(5) ; Load return address
141 : LDA 7, 0(6) ; Return to caller
142 : LD 1, 1(5) ; Load parameter 'left' into R1
143 : ST 1, 4(5) ; Spill left operand at depth 0
144 : LD 1, 2(5) ; Load parameter 'right' into R1
145 : ST 1, 5(5) ; Spill left operand at depth 1
146 : LDC 1, 2(0) ; Load integer-literal into R1
147 : LD 2, 5(5) ; Restore left operand from depth 1
148 : MUL 1, 2, 1 ; R1 = left * right
149 : LD 2, 4(5) ; Restore left operand from depth 0
150 : SUB 1, 2, 1 ; R1 = left - right
151 : LDA 4, 6(5) ; Recompute callee base from caller size
152 : ST 1, 1(4) ; Store argument 0 in callee frame
153 : LDA 4, 6(5) ; Recompute callee base from caller size
154 : LDA 6, 158(0) ; Return address
155 : ST 6, 0(4) ; Store return address into callee frame
156 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
157 : LDA 7, 66(0) ; Call divisibleByDifference
158 : LD 1, 2(5) ; Load callee result into R1
159 : LDC 2, 5(0) ; Callee frame size
160 : SUB 5, 5, 2 ; Pop back to caller
161 : ST 1, 3(5) ; Store function result into frame return slot
162 : LD 6, 0(5) ; Load return address
163 : LDA 7, 0(6) ; Return to caller
