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
17 : LDA 4, 6(5) ; Compute callee base
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LD 1, 1(5) ; Load parameter 'n' into R1
20 : LDA 4, 6(5) ; Compute callee base
21 : ST 1, 1(4) ; Store argument 0 in callee frame
22 : LDC 1, 10(0) ; Load integer-literal into R1
23 : LDA 4, 6(5) ; Compute callee base
24 : ST 1, 2(4) ; Store argument 1 in callee frame
25 : LDA 4, 6(5) ; Recompute callee base from callee size
26 : LDA 6, 30(0) ; Return address
27 : ST 6, 0(4) ; Store return address into callee frame
28 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
29 : LDA 7, 47(0) ; Call MOD
30 : LD 1, 3(5) ; Load callee result into R1
31 : LDC 2, 6(0) ; Caller frame size
32 : SUB 5, 5, 2 ; Pop back to caller
33 : LDA 4, 6(5) ; Compute callee base
34 : ST 1, 2(4) ; Store argument 1 in callee frame
35 : LDA 4, 6(5) ; Recompute callee base from callee size
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return address into callee frame
38 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
39 : LDA 7, 139(0) ; Call divisibleByParts
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 6(0) ; Caller frame size
42 : SUB 5, 5, 2 ; Pop back to caller
43 : ST 1, 2(5) ; Store result into caller’s return slot
44 : LD 1, 2(5) ; Load main return value into R1
45 : LD 6, 0(5) ; Load main return address
46 : LDA 7, 0(6) ; Return from main
47 : LD 1, 1(5) ; Load parameter 'm' into R1
48 : ST 1, 4(5) ; Spill left operand at depth 0
49 : LD 1, 1(5) ; Load parameter 'm' into R1
50 : ST 1, 5(5) ; Spill left operand at depth 1
51 : LD 1, 2(5) ; Load parameter 'n' into R1
52 : LD 2, 5(5) ; Restore left operand from depth 1
53 : DIV 1, 2, 1 ; R1 = left / right
54 : ST 1, 5(5) ; Spill left operand at depth 1
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 5(5) ; Restore left operand from depth 1
57 : MUL 1, 2, 1 ; R1 = left * right
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : SUB 1, 2, 1 ; R1 = left - right
60 : ST 1, 3(5) ; Store function result into frame return slot
61 : LD 6, 0(5) ; Load return address
62 : LDA 7, 0(6) ; Return to caller
63 : LD 1, 1(5) ; Load parameter 'diff' into R1
64 : ST 1, 3(5) ; Spill left operand at depth 0
65 : LDC 1, 7(0) ; Load integer-literal into R1
66 : LD 2, 3(5) ; Restore left operand from depth 0
67 : SUB 1, 2, 1 ; left - right for equality check
68 : JEQ 1, 2(7) ; If R1 == 0, jump to true
69 : LDC 1, 0(0) ; false
70 : LDA 7, 1(7) ; skip setting true
71 : LDC 1, 1(0) ; true
72 : ST 1, 3(5) ; Spill left operand at depth 0
73 : LD 1, 1(5) ; Load parameter 'diff' into R1
74 : ST 1, 4(5) ; Spill left operand at depth 1
75 : LDC 1, 0(0) ; Load integer-literal into R1
76 : LD 2, 4(5) ; Restore left operand from depth 1
77 : SUB 1, 2, 1 ; left - right for equality check
78 : JEQ 1, 2(7) ; If R1 == 0, jump to true
79 : LDC 1, 0(0) ; false
80 : LDA 7, 1(7) ; skip setting true
81 : LDC 1, 1(0) ; true
82 : LD 2, 3(5) ; Restore left operand from depth 0
83 : ADD 1, 2, 1 ; R1 = left OR right
84 : ST 1, 3(5) ; Spill left operand at depth 0
85 : LD 1, 1(5) ; Load parameter 'diff' into R1
86 : ST 1, 4(5) ; Spill left operand at depth 1
87 : LDC 1, 7(0) ; Load integer-literal into R1
88 : SUB 1, 0, 1 ; Negate value in R1
89 : LD 2, 4(5) ; Restore left operand from depth 1
90 : SUB 1, 2, 1 ; left - right for equality check
91 : JEQ 1, 2(7) ; If R1 == 0, jump to true
92 : LDC 1, 0(0) ; false
93 : LDA 7, 1(7) ; skip setting true
94 : LDC 1, 1(0) ; true
95 : LD 2, 3(5) ; Restore left operand from depth 0
96 : ADD 1, 2, 1 ; R1 = left OR right
97 : ST 1, 3(5) ; Spill left operand at depth 0
98 : LD 1, 1(5) ; Load parameter 'diff' into R1
99 : ST 1, 4(5) ; Spill left operand at depth 1
100 : LDC 1, 14(0) ; Load integer-literal into R1
101 : SUB 1, 0, 1 ; Negate value in R1
102 : LD 2, 4(5) ; Restore left operand from depth 1
103 : SUB 1, 2, 1 ; left - right for equality check
104 : JEQ 1, 2(7) ; If R1 == 0, jump to true
105 : LDC 1, 0(0) ; false
106 : LDA 7, 1(7) ; skip setting true
107 : LDC 1, 1(0) ; true
108 : LD 2, 3(5) ; Restore left operand from depth 0
109 : ADD 1, 2, 1 ; R1 = left OR right
110 : JEQ 1, 113(0) ; If condition is false, jump to ELSE
111 : LDC 1, 1(0) ; Load boolean-literal into R1
112 : LDA 7, 136(0) ; Skip ELSE block
113 : LD 1, 1(5) ; Load parameter 'diff' into R1
114 : ST 1, 3(5) ; Spill left operand at depth 0
115 : LDC 1, 14(0) ; Load integer-literal into R1
116 : LD 2, 3(5) ; Restore left operand from depth 0
117 : SUB 1, 2, 1 ; left - right for less-than check
118 : JLT 1, 2(7) ; If R1 < 0, jump to true
119 : LDC 1, 0(0) ; false
120 : LDA 7, 1(7) ; skip setting true
121 : LDC 1, 1(0) ; true
122 : JEQ 1, 125(0) ; If condition is false, jump to ELSE
123 : LDC 1, 0(0) ; Load boolean-literal into R1
124 : LDA 7, 136(0) ; Skip ELSE block
125 : LD 1, 1(5) ; Load parameter 'diff' into R1
126 : LDA 4, 4(5) ; Compute callee base
127 : ST 1, 1(4) ; Store argument 0 in callee frame
128 : LDA 4, 4(5) ; Recompute callee base from callee size
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return address into callee frame
131 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
132 : LDA 7, 12(0) ; Call main
133 : LD 1, 2(5) ; Load callee result into R1
134 : LDC 2, 4(0) ; Caller frame size
135 : SUB 5, 5, 2 ; Pop back to caller
136 : ST 1, 2(5) ; Store function result into frame return slot
137 : LD 6, 0(5) ; Load return address
138 : LDA 7, 0(6) ; Return to caller
139 : LD 1, 1(5) ; Load parameter 'left' into R1
140 : ST 1, 4(5) ; Spill left operand at depth 0
141 : LD 1, 2(5) ; Load parameter 'right' into R1
142 : ST 1, 5(5) ; Spill left operand at depth 1
143 : LDC 1, 2(0) ; Load integer-literal into R1
144 : LD 2, 5(5) ; Restore left operand from depth 1
145 : MUL 1, 2, 1 ; R1 = left * right
146 : LD 2, 4(5) ; Restore left operand from depth 0
147 : SUB 1, 2, 1 ; R1 = left - right
148 : LDA 4, 5(5) ; Compute callee base
149 : ST 1, 1(4) ; Store argument 0 in callee frame
150 : LDA 4, 5(5) ; Recompute callee base from callee size
151 : LDA 6, 155(0) ; Return address
152 : ST 6, 0(4) ; Store return address into callee frame
153 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
154 : LDA 7, 63(0) ; Call divisibleByDifference
155 : LD 1, 2(5) ; Load callee result into R1
156 : LDC 2, 5(0) ; Caller frame size
157 : SUB 5, 5, 2 ; Pop back to caller
158 : ST 1, 3(5) ; Store function result into frame return slot
159 : LD 6, 0(5) ; Load return address
160 : LDA 7, 0(6) ; Return to caller
