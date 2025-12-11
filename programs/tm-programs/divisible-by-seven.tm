0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
17 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
18 : LD 1, 1(5) ; Load parameter 'n' into R1
19 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
20 : LDC 1, 10(0) ; Load integer-literal into R1
21 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
22 : LDA 4, 6(5) ; Compute future callee base from caller size
23 : LD 2, 4(5) ; Load staged arg 0 from caller frame
24 : ST 2, 1(4) ; Store arg 0 into callee frame
25 : LD 2, 5(5) ; Load staged arg 1 from caller frame
26 : ST 2, 2(4) ; Store arg 1 into callee frame
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return in callee frame
29 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
30 : LDA 7, 51(0) ; Call MOD
31 : LD 1, 3(5) ; Load callee result into R1
32 : LDC 2, 6(0) ; Callee frame size
33 : SUB 5, 5, 2 ; Pop callee frame
34 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
35 : LDA 4, 6(5) ; Compute future callee base from caller size
36 : LD 2, 4(5) ; Load staged arg 0 from caller frame
37 : ST 2, 1(4) ; Store arg 0 into callee frame
38 : LD 2, 5(5) ; Load staged arg 1 from caller frame
39 : ST 2, 2(4) ; Store arg 1 into callee frame
40 : LDA 6, 44(0) ; Return address
41 : ST 6, 0(4) ; Store return in callee frame
42 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
43 : LDA 7, 144(0) ; Call divisibleByParts
44 : LD 1, 3(5) ; Load callee result into R1
45 : LDC 2, 6(0) ; Callee frame size
46 : SUB 5, 5, 2 ; Pop callee frame
47 : ST 1, 2(5) ; Store result into caller’s frame
48 : LD 1, 2(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load main return address
50 : LDA 7, 0(6) ; Return from main
51 : LD 1, 1(5) ; Load parameter 'm' into R1
52 : ST 1, 4(5) ; Spill left operand at depth 0
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 5(5) ; Spill left operand at depth 1
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : LD 2, 5(5) ; Restore left operand from depth 1
57 : DIV 1, 2, 1 ; R1 = left / right
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LD 1, 2(5) ; Load parameter 'n' into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : MUL 1, 2, 1 ; R1 = left * right
62 : LD 2, 4(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; R1 = left - right
64 : ST 1, 3(5) ; Store function result into frame return slot
65 : LD 6, 0(5) ; Load return address
66 : LDA 7, 0(6) ; Return to caller
67 : LD 1, 1(5) ; Load parameter 'diff' into R1
68 : ST 1, 3(5) ; Spill left operand at depth 0
69 : LDC 1, 7(0) ; Load integer-literal into R1
70 : LD 2, 3(5) ; Restore left operand from depth 0
71 : SUB 1, 2, 1 ; left - right for equality check
72 : JEQ 1, 2(7) ; If R1 == 0, jump to true
73 : LDC 1, 0(0) ; false
74 : LDA 7, 1(7) ; skip setting true
75 : LDC 1, 1(0) ; true
76 : ST 1, 3(5) ; Spill left operand at depth 0
77 : LD 1, 1(5) ; Load parameter 'diff' into R1
78 : ST 1, 4(5) ; Spill left operand at depth 1
79 : LDC 1, 0(0) ; Load integer-literal into R1
80 : LD 2, 4(5) ; Restore left operand from depth 1
81 : SUB 1, 2, 1 ; left - right for equality check
82 : JEQ 1, 2(7) ; If R1 == 0, jump to true
83 : LDC 1, 0(0) ; false
84 : LDA 7, 1(7) ; skip setting true
85 : LDC 1, 1(0) ; true
86 : LD 2, 3(5) ; Restore left operand from depth 0
87 : ADD 1, 2, 1 ; R1 = left OR right
88 : ST 1, 3(5) ; Spill left operand at depth 0
89 : LD 1, 1(5) ; Load parameter 'diff' into R1
90 : ST 1, 4(5) ; Spill left operand at depth 1
91 : LDC 1, 7(0) ; Load integer-literal into R1
92 : SUB 1, 0, 1 ; Negate value in R1
93 : LD 2, 4(5) ; Restore left operand from depth 1
94 : SUB 1, 2, 1 ; left - right for equality check
95 : JEQ 1, 2(7) ; If R1 == 0, jump to true
96 : LDC 1, 0(0) ; false
97 : LDA 7, 1(7) ; skip setting true
98 : LDC 1, 1(0) ; true
99 : LD 2, 3(5) ; Restore left operand from depth 0
100 : ADD 1, 2, 1 ; R1 = left OR right
101 : ST 1, 3(5) ; Spill left operand at depth 0
102 : LD 1, 1(5) ; Load parameter 'diff' into R1
103 : ST 1, 4(5) ; Spill left operand at depth 1
104 : LDC 1, 14(0) ; Load integer-literal into R1
105 : SUB 1, 0, 1 ; Negate value in R1
106 : LD 2, 4(5) ; Restore left operand from depth 1
107 : SUB 1, 2, 1 ; left - right for equality check
108 : JEQ 1, 2(7) ; If R1 == 0, jump to true
109 : LDC 1, 0(0) ; false
110 : LDA 7, 1(7) ; skip setting true
111 : LDC 1, 1(0) ; true
112 : LD 2, 3(5) ; Restore left operand from depth 0
113 : ADD 1, 2, 1 ; R1 = left OR right
114 : JEQ 1, 117(0) ; If condition is false, jump to ELSE
115 : LDC 1, 1(0) ; Load boolean-literal into R1
116 : LDA 7, 141(0) ; Skip ELSE block
117 : LD 1, 1(5) ; Load parameter 'diff' into R1
118 : ST 1, 3(5) ; Spill left operand at depth 0
119 : LDC 1, 14(0) ; Load integer-literal into R1
120 : LD 2, 3(5) ; Restore left operand from depth 0
121 : SUB 1, 2, 1 ; left - right for less-than check
122 : JLT 1, 2(7) ; If R1 < 0, jump to true
123 : LDC 1, 0(0) ; false
124 : LDA 7, 1(7) ; skip setting true
125 : LDC 1, 1(0) ; true
126 : JEQ 1, 129(0) ; If condition is false, jump to ELSE
127 : LDC 1, 0(0) ; Load boolean-literal into R1
128 : LDA 7, 141(0) ; Skip ELSE block
129 : LD 1, 1(5) ; Load parameter 'diff' into R1
130 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
131 : LDA 4, 6(5) ; Compute future callee base from caller size
132 : LD 2, 5(5) ; Load staged arg 0 from caller frame
133 : ST 2, 1(4) ; Store arg 0 into callee frame
134 : LDA 6, 138(0) ; Return address
135 : ST 6, 0(4) ; Store return in callee frame
136 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
137 : LDA 7, 12(0) ; Call main
138 : LD 1, 2(5) ; Load callee result into R1
139 : LDC 2, 4(0) ; Callee frame size
140 : SUB 5, 5, 2 ; Pop callee frame
141 : ST 1, 2(5) ; Store function result into frame return slot
142 : LD 6, 0(5) ; Load return address
143 : LDA 7, 0(6) ; Return to caller
144 : LD 1, 1(5) ; Load parameter 'left' into R1
145 : ST 1, 4(5) ; Spill left operand at depth 0
146 : LD 1, 2(5) ; Load parameter 'right' into R1
147 : ST 1, 5(5) ; Spill left operand at depth 1
148 : LDC 1, 2(0) ; Load integer-literal into R1
149 : LD 2, 5(5) ; Restore left operand from depth 1
150 : MUL 1, 2, 1 ; R1 = left * right
151 : LD 2, 4(5) ; Restore left operand from depth 0
152 : SUB 1, 2, 1 ; R1 = left - right
153 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
154 : LDA 4, 7(5) ; Compute future callee base from caller size
155 : LD 2, 6(5) ; Load staged arg 0 from caller frame
156 : ST 2, 1(4) ; Store arg 0 into callee frame
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
160 : LDA 7, 67(0) ; Call divisibleByDifference
161 : LD 1, 2(5) ; Load callee result into R1
162 : LDC 2, 5(0) ; Callee frame size
163 : SUB 5, 5, 2 ; Pop callee frame
164 : ST 1, 3(5) ; Store function result into frame return slot
165 : LD 6, 0(5) ; Load return address
166 : LDA 7, 0(6) ; Return to caller
