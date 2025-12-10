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
12 : LDA 4, 4(5) ; Compute callee base from caller size
13 : LD 1, 1(5) ; Load parameter 'n' into R1
14 : ST 1, 3(5) ; Spill left operand at depth 0
15 : LDC 1, 10(0) ; Load integer-literal into R1
16 : LD 2, 3(5) ; Restore left operand from depth 0
17 : DIV 1, 2, 1 ; R1 = left / right
18 : ST 1, 1(4) ; Store argument 0 in callee frame
19 : LDA 4, 4(5) ; Compute callee base from caller size
20 : LD 1, 1(5) ; Load parameter 'n' into R1
21 : ST 1, 1(4) ; Store argument 0 in callee frame
22 : LDC 1, 10(0) ; Load integer-literal into R1
23 : ST 1, 2(4) ; Store argument 1 in callee frame
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return address into callee frame
26 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
27 : LDA 7, 43(0) ; Call MOD
28 : LD 1, 3(5) ; Load callee result into R1
29 : LDC 2, 4(0) ; Caller frame size
30 : SUB 5, 5, 2 ; Pop back to caller
31 : ST 1, 2(4) ; Store argument 1 in callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return address into callee frame
34 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
35 : LDA 7, 134(0) ; Call divisibleByParts
36 : LD 1, 3(5) ; Load callee result into R1
37 : LDC 2, 4(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 2(5) ; Store result into caller’s return slot
40 : LD 1, 2(5) ; Load main return value into R1
41 : LD 6, 0(5) ; Load main return address
42 : LDA 7, 0(6) ; Return from main
43 : LD 1, 1(5) ; Load parameter 'm' into R1
44 : ST 1, 4(5) ; Spill left operand at depth 0
45 : LD 1, 1(5) ; Load parameter 'm' into R1
46 : ST 1, 5(5) ; Spill left operand at depth 1
47 : LD 1, 2(5) ; Load parameter 'n' into R1
48 : LD 2, 5(5) ; Restore left operand from depth 1
49 : DIV 1, 2, 1 ; R1 = left / right
50 : ST 1, 5(5) ; Spill left operand at depth 1
51 : LD 1, 2(5) ; Load parameter 'n' into R1
52 : LD 2, 5(5) ; Restore left operand from depth 1
53 : MUL 1, 2, 1 ; R1 = left * right
54 : LD 2, 4(5) ; Restore left operand from depth 0
55 : SUB 1, 2, 1 ; R1 = left - right
56 : ST 1, 3(5) ; Store function result into frame return slot
57 : LD 6, 0(5) ; Load return address
58 : LDA 7, 0(6) ; Return to caller
59 : LD 1, 1(5) ; Load parameter 'diff' into R1
60 : ST 1, 3(5) ; Spill left operand at depth 0
61 : LDC 1, 7(0) ; Load integer-literal into R1
62 : LD 2, 3(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; left - right for equality check
64 : JEQ 1, 2(7) ; If R1 == 0, jump to true
65 : LDC 1, 0(0) ; false
66 : LDA 7, 1(7) ; skip setting true
67 : LDC 1, 1(0) ; true
68 : ST 1, 3(5) ; Spill left operand at depth 0
69 : LD 1, 1(5) ; Load parameter 'diff' into R1
70 : ST 1, 4(5) ; Spill left operand at depth 1
71 : LDC 1, 0(0) ; Load integer-literal into R1
72 : LD 2, 4(5) ; Restore left operand from depth 1
73 : SUB 1, 2, 1 ; left - right for equality check
74 : JEQ 1, 2(7) ; If R1 == 0, jump to true
75 : LDC 1, 0(0) ; false
76 : LDA 7, 1(7) ; skip setting true
77 : LDC 1, 1(0) ; true
78 : LD 2, 3(5) ; Restore left operand from depth 0
79 : ADD 1, 2, 1 ; R1 = left OR right
80 : ST 1, 3(5) ; Spill left operand at depth 0
81 : LD 1, 1(5) ; Load parameter 'diff' into R1
82 : ST 1, 4(5) ; Spill left operand at depth 1
83 : LDC 1, 7(0) ; Load integer-literal into R1
84 : SUB 1, 0, 1 ; Negate value in R1
85 : LD 2, 4(5) ; Restore left operand from depth 1
86 : SUB 1, 2, 1 ; left - right for equality check
87 : JEQ 1, 2(7) ; If R1 == 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : LD 2, 3(5) ; Restore left operand from depth 0
92 : ADD 1, 2, 1 ; R1 = left OR right
93 : ST 1, 3(5) ; Spill left operand at depth 0
94 : LD 1, 1(5) ; Load parameter 'diff' into R1
95 : ST 1, 4(5) ; Spill left operand at depth 1
96 : LDC 1, 14(0) ; Load integer-literal into R1
97 : SUB 1, 0, 1 ; Negate value in R1
98 : LD 2, 4(5) ; Restore left operand from depth 1
99 : SUB 1, 2, 1 ; left - right for equality check
100 : JEQ 1, 2(7) ; If R1 == 0, jump to true
101 : LDC 1, 0(0) ; false
102 : LDA 7, 1(7) ; skip setting true
103 : LDC 1, 1(0) ; true
104 : LD 2, 3(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left OR right
106 : JEQ 1, 109(0) ; If condition is false, jump to ELSE
107 : LDC 1, 1(0) ; Load boolean-literal into R1
108 : LDA 7, 131(0) ; Skip ELSE block
109 : LD 1, 1(5) ; Load parameter 'diff' into R1
110 : ST 1, 3(5) ; Spill left operand at depth 0
111 : LDC 1, 14(0) ; Load integer-literal into R1
112 : LD 2, 3(5) ; Restore left operand from depth 0
113 : SUB 1, 2, 1 ; left - right for less-than check
114 : JLT 1, 2(7) ; If R1 < 0, jump to true
115 : LDC 1, 0(0) ; false
116 : LDA 7, 1(7) ; skip setting true
117 : LDC 1, 1(0) ; true
118 : JEQ 1, 121(0) ; If condition is false, jump to ELSE
119 : LDC 1, 0(0) ; Load boolean-literal into R1
120 : LDA 7, 131(0) ; Skip ELSE block
121 : LDA 4, 5(5) ; Compute callee base from caller size
122 : LD 1, 1(5) ; Load parameter 'diff' into R1
123 : ST 1, 1(4) ; Store argument 0 in callee frame
124 : LDA 6, 128(0) ; Return address
125 : ST 6, 0(4) ; Store return address into callee frame
126 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
127 : LDA 7, 12(0) ; Call main
128 : LD 1, 2(5) ; Load callee result into R1
129 : LDC 2, 5(0) ; Caller frame size
130 : SUB 5, 5, 2 ; Pop back to caller
131 : ST 1, 2(5) ; Store function result into frame return slot
132 : LD 6, 0(5) ; Load return address
133 : LDA 7, 0(6) ; Return to caller
134 : LDA 4, 6(5) ; Compute callee base from caller size
135 : LD 1, 1(5) ; Load parameter 'left' into R1
136 : ST 1, 4(5) ; Spill left operand at depth 0
137 : LD 1, 2(5) ; Load parameter 'right' into R1
138 : ST 1, 5(5) ; Spill left operand at depth 1
139 : LDC 1, 2(0) ; Load integer-literal into R1
140 : LD 2, 5(5) ; Restore left operand from depth 1
141 : MUL 1, 2, 1 ; R1 = left * right
142 : LD 2, 4(5) ; Restore left operand from depth 0
143 : SUB 1, 2, 1 ; R1 = left - right
144 : ST 1, 1(4) ; Store argument 0 in callee frame
145 : LDA 6, 149(0) ; Return address
146 : ST 6, 0(4) ; Store return address into callee frame
147 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
148 : LDA 7, 59(0) ; Call divisibleByDifference
149 : LD 1, 2(5) ; Load callee result into R1
150 : LDC 2, 6(0) ; Caller frame size
151 : SUB 5, 5, 2 ; Pop back to caller
152 : ST 1, 3(5) ; Store function result into frame return slot
153 : LD 6, 0(5) ; Load return address
154 : LDA 7, 0(6) ; Return to caller
