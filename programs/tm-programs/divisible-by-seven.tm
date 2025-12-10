0 : LDC 5, 0(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set R4 := R5 (caller base)
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
12 : ST 1, 4(5) ; Spill left operand at depth 0
13 : LDC 1, 10(0) ; Load integer-literal into R1
14 : LD 2, 4(5) ; Restore left operand from depth 0
15 : DIV 1, 2, 1 ; R1 = left / right
16 : LDA 4, 4(5) ; Compute future callee base using caller_size
17 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
18 : LD 1, 2(5) ; Load parameter 'n' into R1
19 : LDA 4, 6(5) ; Compute future callee base using caller_size
20 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
21 : LDC 1, 10(0) ; Load integer-literal into R1
22 : LDA 4, 6(5) ; Compute future callee base using caller_size
23 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
24 : LDA 4, 6(5) ; Compute future callee base (caller_size)
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 46(0) ; Call MOD
29 : LD 1, 3(5) ; Load callee result into R1
30 : LDC 2, 6(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : LDA 4, 4(5) ; Compute future callee base using caller_size
33 : ST 1, 2(4) ; Store argument 1 into callee's param slot (future frame)
34 : LDA 4, 4(5) ; Compute future callee base (caller_size)
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
38 : LDA 7, 137(0) ; Call divisibleByParts
39 : LD 1, 3(5) ; Load callee result into R1
40 : LDC 2, 6(0) ; Callee frame size
41 : SUB 5, 5, 2 ; Pop callee frame
42 : ST 1, 2(5) ; Store result into caller’s frame
43 : LD 1, 2(5) ; Load main return value into R1
44 : LD 6, 0(5) ; Load main return address
45 : LDA 7, 0(6) ; Return from main
46 : LD 1, 1(5) ; Load parameter 'm' into R1
47 : ST 1, 4(5) ; Spill left operand at depth 0
48 : LD 1, 1(5) ; Load parameter 'm' into R1
49 : ST 1, 5(5) ; Spill left operand at depth 1
50 : LD 1, 2(5) ; Load parameter 'n' into R1
51 : LD 2, 5(5) ; Restore left operand from depth 1
52 : DIV 1, 2, 1 ; R1 = left / right
53 : ST 1, 5(5) ; Spill left operand at depth 1
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : LD 2, 5(5) ; Restore left operand from depth 1
56 : MUL 1, 2, 1 ; R1 = left * right
57 : LD 2, 4(5) ; Restore left operand from depth 0
58 : SUB 1, 2, 1 ; R1 = left - right
59 : ST 1, 3(5) ; Store function result into frame return slot
60 : LD 6, 0(5) ; Load return address
61 : LDA 7, 0(6) ; Return to caller
62 : LD 1, 1(5) ; Load parameter 'diff' into R1
63 : ST 1, 3(5) ; Spill left operand at depth 0
64 : LDC 1, 7(0) ; Load integer-literal into R1
65 : LD 2, 3(5) ; Restore left operand from depth 0
66 : SUB 1, 2, 1 ; left - right for equality check
67 : JEQ 1, 2(7) ; If R1 == 0, jump to true
68 : LDC 1, 0(0) ; false
69 : LDA 7, 1(7) ; skip setting true
70 : LDC 1, 1(0) ; true
71 : ST 1, 3(5) ; Spill left operand at depth 0
72 : LD 1, 1(5) ; Load parameter 'diff' into R1
73 : ST 1, 4(5) ; Spill left operand at depth 1
74 : LDC 1, 0(0) ; Load integer-literal into R1
75 : LD 2, 4(5) ; Restore left operand from depth 1
76 : SUB 1, 2, 1 ; left - right for equality check
77 : JEQ 1, 2(7) ; If R1 == 0, jump to true
78 : LDC 1, 0(0) ; false
79 : LDA 7, 1(7) ; skip setting true
80 : LDC 1, 1(0) ; true
81 : LD 2, 3(5) ; Restore left operand from depth 0
82 : ADD 1, 2, 1 ; R1 = left OR right
83 : ST 1, 3(5) ; Spill left operand at depth 0
84 : LD 1, 1(5) ; Load parameter 'diff' into R1
85 : ST 1, 4(5) ; Spill left operand at depth 1
86 : LDC 1, 7(0) ; Load integer-literal into R1
87 : SUB 1, 0, 1 ; Negate value in R1
88 : LD 2, 4(5) ; Restore left operand from depth 1
89 : SUB 1, 2, 1 ; left - right for equality check
90 : JEQ 1, 2(7) ; If R1 == 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : LD 2, 3(5) ; Restore left operand from depth 0
95 : ADD 1, 2, 1 ; R1 = left OR right
96 : ST 1, 3(5) ; Spill left operand at depth 0
97 : LD 1, 1(5) ; Load parameter 'diff' into R1
98 : ST 1, 4(5) ; Spill left operand at depth 1
99 : LDC 1, 14(0) ; Load integer-literal into R1
100 : SUB 1, 0, 1 ; Negate value in R1
101 : LD 2, 4(5) ; Restore left operand from depth 1
102 : SUB 1, 2, 1 ; left - right for equality check
103 : JEQ 1, 2(7) ; If R1 == 0, jump to true
104 : LDC 1, 0(0) ; false
105 : LDA 7, 1(7) ; skip setting true
106 : LDC 1, 1(0) ; true
107 : LD 2, 3(5) ; Restore left operand from depth 0
108 : ADD 1, 2, 1 ; R1 = left OR right
109 : JEQ 1, 112(0) ; If condition is false, jump to ELSE
110 : LDC 1, 1(0) ; Load boolean-literal into R1
111 : LDA 7, 134(0) ; Skip ELSE block
112 : LD 1, 1(5) ; Load parameter 'diff' into R1
113 : ST 1, 3(5) ; Spill left operand at depth 0
114 : LDC 1, 14(0) ; Load integer-literal into R1
115 : LD 2, 3(5) ; Restore left operand from depth 0
116 : SUB 1, 2, 1 ; left - right for less-than check
117 : JLT 1, 2(7) ; If R1 < 0, jump to true
118 : LDC 1, 0(0) ; false
119 : LDA 7, 1(7) ; skip setting true
120 : LDC 1, 1(0) ; true
121 : JEQ 1, 124(0) ; If condition is false, jump to ELSE
122 : LDC 1, 0(0) ; Load boolean-literal into R1
123 : LDA 7, 134(0) ; Skip ELSE block
124 : LDA 4, 5(5) ; Compute future callee base using caller_size
125 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
126 : LDA 4, 5(5) ; Compute future callee base (caller_size)
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
130 : LDA 7, 12(0) ; Call main
131 : LD 1, 2(5) ; Load callee result into R1
132 : LDC 2, 4(0) ; Callee frame size
133 : SUB 5, 5, 2 ; Pop callee frame
134 : ST 1, 2(5) ; Store function result into frame return slot
135 : LD 6, 0(5) ; Load return address
136 : LDA 7, 0(6) ; Return to caller
137 : ST 1, 3(5) ; Spill left operand at depth 0
138 : ST 1, 4(5) ; Spill left operand at depth 1
139 : LDC 1, 2(0) ; Load integer-literal into R1
140 : LD 2, 4(5) ; Restore left operand from depth 1
141 : MUL 1, 2, 1 ; R1 = left * right
142 : LD 2, 3(5) ; Restore left operand from depth 0
143 : SUB 1, 2, 1 ; R1 = left - right
144 : LDA 4, 6(5) ; Compute future callee base using caller_size
145 : ST 1, 1(4) ; Store argument 0 into callee's param slot (future frame)
146 : LDA 4, 6(5) ; Compute future callee base (caller_size)
147 : LDA 6, 151(0) ; Return address
148 : ST 6, 0(4) ; Store return in callee frame
149 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
150 : LDA 7, 62(0) ; Call divisibleByDifference
151 : LD 1, 2(5) ; Load callee result into R1
152 : LDC 2, 5(0) ; Callee frame size
153 : SUB 5, 5, 2 ; Pop callee frame
154 : ST 1, 3(5) ; Store function result into frame return slot
155 : LD 6, 0(5) ; Load return address
156 : LDA 7, 0(6) ; Return to caller
