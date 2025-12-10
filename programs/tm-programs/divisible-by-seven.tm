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
29 : LDA 7, 48(0) ; Call MOD
30 : LD 1, 3(5) ; Load callee result into R1
31 : LDC 2, 6(0) ; Callee frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 4(5) ; Recompute callee base from caller size
34 : ST 1, 2(4) ; Store argument 1 in callee frame
35 : LDA 4, 4(5) ; Recompute callee base from caller size
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return address into callee frame
38 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
39 : LDA 7, 140(0) ; Call divisibleByParts
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 6(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop back to caller
43 : ST 1, 2(5) ; Store result into caller’s return slot
44 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
45 : LD 1, 2(5) ; Load main return value into R1
46 : LD 6, 0(5) ; Load root return address from main frame
47 : LDA 7, 0(6) ; Return from main to runtime epilogue
48 : LD 1, 1(5) ; Load parameter 'm' into R1
49 : ST 1, 4(5) ; Spill left operand at depth 0
50 : LD 1, 1(5) ; Load parameter 'm' into R1
51 : ST 1, 5(5) ; Spill left operand at depth 1
52 : LD 1, 2(5) ; Load parameter 'n' into R1
53 : LD 2, 5(5) ; Restore left operand from depth 1
54 : DIV 1, 2, 1 ; R1 = left / right
55 : ST 1, 5(5) ; Spill left operand at depth 1
56 : LD 1, 2(5) ; Load parameter 'n' into R1
57 : LD 2, 5(5) ; Restore left operand from depth 1
58 : MUL 1, 2, 1 ; R1 = left * right
59 : LD 2, 4(5) ; Restore left operand from depth 0
60 : SUB 1, 2, 1 ; R1 = left - right
61 : ST 1, 3(5) ; Store function result into frame return slot
62 : LD 6, 0(5) ; Load return address
63 : LDA 7, 0(6) ; Return to caller
64 : LD 1, 1(5) ; Load parameter 'diff' into R1
65 : ST 1, 3(5) ; Spill left operand at depth 0
66 : LDC 1, 7(0) ; Load integer-literal into R1
67 : LD 2, 3(5) ; Restore left operand from depth 0
68 : SUB 1, 2, 1 ; left - right for equality check
69 : JEQ 1, 2(7) ; If R1 == 0, jump to true
70 : LDC 1, 0(0) ; false
71 : LDA 7, 1(7) ; skip setting true
72 : LDC 1, 1(0) ; true
73 : ST 1, 3(5) ; Spill left operand at depth 0
74 : LD 1, 1(5) ; Load parameter 'diff' into R1
75 : ST 1, 4(5) ; Spill left operand at depth 1
76 : LDC 1, 0(0) ; Load integer-literal into R1
77 : LD 2, 4(5) ; Restore left operand from depth 1
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : LD 2, 3(5) ; Restore left operand from depth 0
84 : ADD 1, 2, 1 ; R1 = left OR right
85 : ST 1, 3(5) ; Spill left operand at depth 0
86 : LD 1, 1(5) ; Load parameter 'diff' into R1
87 : ST 1, 4(5) ; Spill left operand at depth 1
88 : LDC 1, 7(0) ; Load integer-literal into R1
89 : SUB 1, 0, 1 ; Negate value in R1
90 : LD 2, 4(5) ; Restore left operand from depth 1
91 : SUB 1, 2, 1 ; left - right for equality check
92 : JEQ 1, 2(7) ; If R1 == 0, jump to true
93 : LDC 1, 0(0) ; false
94 : LDA 7, 1(7) ; skip setting true
95 : LDC 1, 1(0) ; true
96 : LD 2, 3(5) ; Restore left operand from depth 0
97 : ADD 1, 2, 1 ; R1 = left OR right
98 : ST 1, 3(5) ; Spill left operand at depth 0
99 : LD 1, 1(5) ; Load parameter 'diff' into R1
100 : ST 1, 4(5) ; Spill left operand at depth 1
101 : LDC 1, 14(0) ; Load integer-literal into R1
102 : SUB 1, 0, 1 ; Negate value in R1
103 : LD 2, 4(5) ; Restore left operand from depth 1
104 : SUB 1, 2, 1 ; left - right for equality check
105 : JEQ 1, 2(7) ; If R1 == 0, jump to true
106 : LDC 1, 0(0) ; false
107 : LDA 7, 1(7) ; skip setting true
108 : LDC 1, 1(0) ; true
109 : LD 2, 3(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left OR right
111 : JEQ 1, 114(0) ; If condition is false, jump to ELSE
112 : LDC 1, 1(0) ; Load boolean-literal into R1
113 : LDA 7, 137(0) ; Skip ELSE block
114 : LD 1, 1(5) ; Load parameter 'diff' into R1
115 : ST 1, 3(5) ; Spill left operand at depth 0
116 : LDC 1, 14(0) ; Load integer-literal into R1
117 : LD 2, 3(5) ; Restore left operand from depth 0
118 : SUB 1, 2, 1 ; left - right for less-than check
119 : JLT 1, 2(7) ; If R1 < 0, jump to true
120 : LDC 1, 0(0) ; false
121 : LDA 7, 1(7) ; skip setting true
122 : LDC 1, 1(0) ; true
123 : JEQ 1, 126(0) ; If condition is false, jump to ELSE
124 : LDC 1, 0(0) ; Load boolean-literal into R1
125 : LDA 7, 137(0) ; Skip ELSE block
126 : LD 1, 1(5) ; Load parameter 'diff' into R1
127 : LDA 4, 5(5) ; Recompute callee base from caller size
128 : ST 1, 1(4) ; Store argument 0 in callee frame
129 : LDA 4, 5(5) ; Recompute callee base from caller size
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return address into callee frame
132 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
133 : LDA 7, 12(0) ; Call main
134 : LD 1, 2(5) ; Load callee result into R1
135 : LDC 2, 4(0) ; Callee frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : ST 1, 2(5) ; Store function result into frame return slot
138 : LD 6, 0(5) ; Load return address
139 : LDA 7, 0(6) ; Return to caller
140 : LD 1, 1(5) ; Load parameter 'left' into R1
141 : ST 1, 4(5) ; Spill left operand at depth 0
142 : LD 1, 2(5) ; Load parameter 'right' into R1
143 : ST 1, 5(5) ; Spill left operand at depth 1
144 : LDC 1, 2(0) ; Load integer-literal into R1
145 : LD 2, 5(5) ; Restore left operand from depth 1
146 : MUL 1, 2, 1 ; R1 = left * right
147 : LD 2, 4(5) ; Restore left operand from depth 0
148 : SUB 1, 2, 1 ; R1 = left - right
149 : LDA 4, 6(5) ; Recompute callee base from caller size
150 : ST 1, 1(4) ; Store argument 0 in callee frame
151 : LDA 4, 6(5) ; Recompute callee base from caller size
152 : LDA 6, 156(0) ; Return address
153 : ST 6, 0(4) ; Store return address into callee frame
154 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
155 : LDA 7, 64(0) ; Call divisibleByDifference
156 : LD 1, 2(5) ; Load callee result into R1
157 : LDC 2, 5(0) ; Callee frame size
158 : SUB 5, 5, 2 ; Pop back to caller
159 : ST 1, 3(5) ; Store function result into frame return slot
160 : LD 6, 0(5) ; Load return address
161 : LDA 7, 0(6) ; Return to caller
