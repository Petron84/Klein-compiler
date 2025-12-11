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
14 : LD 1, 1(5) ; Load parameter 'n' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 10(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : LDA 4, 5(5) ; Recompute callee base from callee size
20 : ST 1, 1(4) ; Store argument 0 in callee
21 : LD 1, 1(5) ; Load parameter 'n' into R1
22 : LDA 4, 5(5) ; Recompute callee base from callee size
23 : ST 1, 1(4) ; Store argument 0 in callee
24 : LDC 1, 10(0) ; Load integer-literal into R1
25 : LDA 4, 5(5) ; Recompute callee base from callee size
26 : ST 1, 2(4) ; Store argument 1 in callee
27 : LDA 4, 5(5) ; Recompute callee base from callee size
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 49(0) ; Call MOD
32 : LD 1, 3(5) ; Load callee result into R1
33 : LDC 2, 5(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : LDA 4, 5(5) ; Recompute callee base from callee size
36 : ST 1, 2(4) ; Store argument 1 in callee
37 : LDA 4, 5(5) ; Recompute callee base from callee size
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 141(0) ; Call divisibleByParts
42 : LD 1, 3(5) ; Load callee result into R1
43 : LDC 2, 5(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop callee frame
45 : ST 1, 3(5) ; Store result into caller’s frame
46 : LD 1, 3(5) ; Load main return value into R1
47 : LD 6, 0(5) ; Load main return address
48 : LDA 7, 0(6) ; Return from main
49 : LD 1, 1(5) ; Load parameter 'm' into R1
50 : ST 1, 4(5) ; Spill left operand at depth 0
51 : LD 1, 1(5) ; Load parameter 'm' into R1
52 : ST 1, 5(5) ; Spill left operand at depth 1
53 : LD 1, 2(5) ; Load parameter 'n' into R1
54 : LD 2, 5(5) ; Restore left operand from depth 1
55 : DIV 1, 2, 1 ; R1 = left / right
56 : ST 1, 5(5) ; Spill left operand at depth 1
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : LD 2, 5(5) ; Restore left operand from depth 1
59 : MUL 1, 2, 1 ; R1 = left * right
60 : LD 2, 4(5) ; Restore left operand from depth 0
61 : SUB 1, 2, 1 ; R1 = left - right
62 : ST 1, 3(5) ; Store function result into frame return slot
63 : LD 6, 0(5) ; Load return address
64 : LDA 7, 0(6) ; Return to caller
65 : LD 1, 1(5) ; Load parameter 'diff' into R1
66 : ST 1, 4(5) ; Spill left operand at depth 0
67 : LDC 1, 7(0) ; Load integer-literal into R1
68 : LD 2, 4(5) ; Restore left operand from depth 0
69 : SUB 1, 2, 1 ; left - right for equality check
70 : JEQ 1, 2(7) ; If R1 == 0, jump to true
71 : LDC 1, 0(0) ; false
72 : LDA 7, 1(7) ; skip setting true
73 : LDC 1, 1(0) ; true
74 : ST 1, 4(5) ; Spill left operand at depth 0
75 : LD 1, 1(5) ; Load parameter 'diff' into R1
76 : ST 1, 5(5) ; Spill left operand at depth 1
77 : LDC 1, 0(0) ; Load integer-literal into R1
78 : LD 2, 5(5) ; Restore left operand from depth 1
79 : SUB 1, 2, 1 ; left - right for equality check
80 : JEQ 1, 2(7) ; If R1 == 0, jump to true
81 : LDC 1, 0(0) ; false
82 : LDA 7, 1(7) ; skip setting true
83 : LDC 1, 1(0) ; true
84 : LD 2, 4(5) ; Restore left operand from depth 0
85 : ADD 1, 2, 1 ; R1 = left OR right
86 : ST 1, 4(5) ; Spill left operand at depth 0
87 : LD 1, 1(5) ; Load parameter 'diff' into R1
88 : ST 1, 5(5) ; Spill left operand at depth 1
89 : LDC 1, 7(0) ; Load integer-literal into R1
90 : SUB 1, 0, 1 ; Negate value in R1
91 : LD 2, 5(5) ; Restore left operand from depth 1
92 : SUB 1, 2, 1 ; left - right for equality check
93 : JEQ 1, 2(7) ; If R1 == 0, jump to true
94 : LDC 1, 0(0) ; false
95 : LDA 7, 1(7) ; skip setting true
96 : LDC 1, 1(0) ; true
97 : LD 2, 4(5) ; Restore left operand from depth 0
98 : ADD 1, 2, 1 ; R1 = left OR right
99 : ST 1, 4(5) ; Spill left operand at depth 0
100 : LD 1, 1(5) ; Load parameter 'diff' into R1
101 : ST 1, 5(5) ; Spill left operand at depth 1
102 : LDC 1, 14(0) ; Load integer-literal into R1
103 : SUB 1, 0, 1 ; Negate value in R1
104 : LD 2, 5(5) ; Restore left operand from depth 1
105 : SUB 1, 2, 1 ; left - right for equality check
106 : JEQ 1, 2(7) ; If R1 == 0, jump to true
107 : LDC 1, 0(0) ; false
108 : LDA 7, 1(7) ; skip setting true
109 : LDC 1, 1(0) ; true
110 : LD 2, 4(5) ; Restore left operand from depth 0
111 : ADD 1, 2, 1 ; R1 = left OR right
112 : JEQ 1, 115(0) ; If condition is false, jump to ELSE
113 : LDC 1, 1(0) ; Load boolean-literal into R1
114 : LDA 7, 138(0) ; Skip ELSE block
115 : LD 1, 1(5) ; Load parameter 'diff' into R1
116 : ST 1, 4(5) ; Spill left operand at depth 0
117 : LDC 1, 14(0) ; Load integer-literal into R1
118 : LD 2, 4(5) ; Restore left operand from depth 0
119 : SUB 1, 2, 1 ; left - right for less-than check
120 : JLT 1, 2(7) ; If R1 < 0, jump to true
121 : LDC 1, 0(0) ; false
122 : LDA 7, 1(7) ; skip setting true
123 : LDC 1, 1(0) ; true
124 : JEQ 1, 127(0) ; If condition is false, jump to ELSE
125 : LDC 1, 0(0) ; Load boolean-literal into R1
126 : LDA 7, 138(0) ; Skip ELSE block
127 : LD 1, 1(5) ; Load parameter 'diff' into R1
128 : LDA 4, 6(5) ; Recompute callee base from callee size
129 : ST 1, 1(4) ; Store argument 0 in callee
130 : LDA 4, 6(5) ; Recompute callee base from callee size
131 : LDA 6, 135(0) ; Return address
132 : ST 6, 0(4) ; Store return in callee frame
133 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
134 : LDA 7, 14(0) ; Call main
135 : LD 1, 3(5) ; Load callee result into R1
136 : LDC 2, 6(0) ; Callee frame size
137 : SUB 5, 5, 2 ; Pop callee frame
138 : ST 1, 3(5) ; Store function result into frame return slot
139 : LD 6, 0(5) ; Load return address
140 : LDA 7, 0(6) ; Return to caller
141 : LD 1, 1(5) ; Load parameter 'left' into R1
142 : ST 1, 4(5) ; Spill left operand at depth 0
143 : LD 1, 2(5) ; Load parameter 'right' into R1
144 : ST 1, 5(5) ; Spill left operand at depth 1
145 : LDC 1, 2(0) ; Load integer-literal into R1
146 : LD 2, 5(5) ; Restore left operand from depth 1
147 : MUL 1, 2, 1 ; R1 = left * right
148 : LD 2, 4(5) ; Restore left operand from depth 0
149 : SUB 1, 2, 1 ; R1 = left - right
150 : LDA 4, 6(5) ; Recompute callee base from callee size
151 : ST 1, 1(4) ; Store argument 0 in callee
152 : LDC 1, 0(0) ; Load integer-literal into R1
153 : LDA 4, 6(5) ; Recompute callee base from callee size
154 : ST 1, 2(4) ; Store argument 1 in callee
155 : LDA 4, 6(5) ; Recompute callee base from callee size
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
159 : LDA 7, 65(0) ; Call divisibleByDifference
160 : LD 1, 3(5) ; Load callee result into R1
161 : LDC 2, 6(0) ; Callee frame size
162 : SUB 5, 5, 2 ; Pop callee frame
163 : ST 1, 3(5) ; Store function result into frame return slot
164 : LD 6, 0(5) ; Load return address
165 : LDA 7, 0(6) ; Return to caller
