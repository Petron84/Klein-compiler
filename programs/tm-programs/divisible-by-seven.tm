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
17 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
18 : LDA 4, 6(5) ; Callee base for arg copy
19 : LD 1, 3(5) ; Load staged arg 0 from caller temp
20 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
21 : LD 1, 1(5) ; Load parameter 'n' into R1
22 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
23 : LDA 4, 6(5) ; Callee base for arg copy
24 : LD 1, 3(5) ; Load staged arg 0 from caller temp
25 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
26 : LDC 1, 10(0) ; Load integer-literal into R1
27 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
28 : LDA 4, 6(5) ; Callee base for arg copy
29 : LD 1, 3(5) ; Load staged arg 1 from caller temp
30 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
31 : LDA 4, 6(5) ; Callee base for call
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
35 : LDA 7, 55(0) ; Call MOD
36 : LD 1, 3(5) ; Load callee result into R1
37 : LDC 2, 6(0) ; Callee frame size
38 : SUB 5, 5, 2 ; Pop callee frame
39 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
40 : LDA 4, 6(5) ; Callee base for arg copy
41 : LD 1, 3(5) ; Load staged arg 1 from caller temp
42 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
43 : LDA 4, 6(5) ; Callee base for call
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 149(0) ; Call divisibleByParts
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 6(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop callee frame
51 : ST 1, 2(5) ; Store result into caller’s frame
52 : LD 1, 2(5) ; Load main return value into R1
53 : LD 6, 0(5) ; Load main return address
54 : LDA 7, 0(6) ; Return from main
55 : LD 1, 1(5) ; Load parameter 'm' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 1(5) ; Load parameter 'm' into R1
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LD 1, 2(5) ; Load parameter 'n' into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : DIV 1, 2, 1 ; R1 = left / right
62 : ST 1, 5(5) ; Spill left operand at depth 1
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : LD 2, 5(5) ; Restore left operand from depth 1
65 : MUL 1, 2, 1 ; R1 = left * right
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : SUB 1, 2, 1 ; R1 = left - right
68 : ST 1, 3(5) ; Store function result into frame return slot
69 : LD 6, 0(5) ; Load return address
70 : LDA 7, 0(6) ; Return to caller
71 : LD 1, 1(5) ; Load parameter 'diff' into R1
72 : ST 1, 3(5) ; Spill left operand at depth 0
73 : LDC 1, 7(0) ; Load integer-literal into R1
74 : LD 2, 3(5) ; Restore left operand from depth 0
75 : SUB 1, 2, 1 ; left - right for equality check
76 : JEQ 1, 2(7) ; If R1 == 0, jump to true
77 : LDC 1, 0(0) ; false
78 : LDA 7, 1(7) ; skip setting true
79 : LDC 1, 1(0) ; true
80 : ST 1, 3(5) ; Spill left operand at depth 0
81 : LD 1, 1(5) ; Load parameter 'diff' into R1
82 : ST 1, 4(5) ; Spill left operand at depth 1
83 : LDC 1, 0(0) ; Load integer-literal into R1
84 : LD 2, 4(5) ; Restore left operand from depth 1
85 : SUB 1, 2, 1 ; left - right for equality check
86 : JEQ 1, 2(7) ; If R1 == 0, jump to true
87 : LDC 1, 0(0) ; false
88 : LDA 7, 1(7) ; skip setting true
89 : LDC 1, 1(0) ; true
90 : LD 2, 3(5) ; Restore left operand from depth 0
91 : ADD 1, 2, 1 ; R1 = left OR right
92 : ST 1, 3(5) ; Spill left operand at depth 0
93 : LD 1, 1(5) ; Load parameter 'diff' into R1
94 : ST 1, 4(5) ; Spill left operand at depth 1
95 : LDC 1, 7(0) ; Load integer-literal into R1
96 : SUB 1, 0, 1 ; Negate value in R1
97 : LD 2, 4(5) ; Restore left operand from depth 1
98 : SUB 1, 2, 1 ; left - right for equality check
99 : JEQ 1, 2(7) ; If R1 == 0, jump to true
100 : LDC 1, 0(0) ; false
101 : LDA 7, 1(7) ; skip setting true
102 : LDC 1, 1(0) ; true
103 : LD 2, 3(5) ; Restore left operand from depth 0
104 : ADD 1, 2, 1 ; R1 = left OR right
105 : ST 1, 3(5) ; Spill left operand at depth 0
106 : LD 1, 1(5) ; Load parameter 'diff' into R1
107 : ST 1, 4(5) ; Spill left operand at depth 1
108 : LDC 1, 14(0) ; Load integer-literal into R1
109 : SUB 1, 0, 1 ; Negate value in R1
110 : LD 2, 4(5) ; Restore left operand from depth 1
111 : SUB 1, 2, 1 ; left - right for equality check
112 : JEQ 1, 2(7) ; If R1 == 0, jump to true
113 : LDC 1, 0(0) ; false
114 : LDA 7, 1(7) ; skip setting true
115 : LDC 1, 1(0) ; true
116 : LD 2, 3(5) ; Restore left operand from depth 0
117 : ADD 1, 2, 1 ; R1 = left OR right
118 : JEQ 1, 121(0) ; If condition is false, jump to ELSE
119 : LDC 1, 1(0) ; Load boolean-literal into R1
120 : LDA 7, 146(0) ; Skip ELSE block
121 : LD 1, 1(5) ; Load parameter 'diff' into R1
122 : ST 1, 3(5) ; Spill left operand at depth 0
123 : LDC 1, 14(0) ; Load integer-literal into R1
124 : LD 2, 3(5) ; Restore left operand from depth 0
125 : SUB 1, 2, 1 ; left - right for less-than check
126 : JLT 1, 2(7) ; If R1 < 0, jump to true
127 : LDC 1, 0(0) ; false
128 : LDA 7, 1(7) ; skip setting true
129 : LDC 1, 1(0) ; true
130 : JEQ 1, 133(0) ; If condition is false, jump to ELSE
131 : LDC 1, 0(0) ; Load boolean-literal into R1
132 : LDA 7, 146(0) ; Skip ELSE block
133 : LD 1, 1(5) ; Load parameter 'diff' into R1
134 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
135 : LDA 4, 4(5) ; Callee base for arg copy
136 : LD 1, 3(5) ; Load staged arg 0 from caller temp
137 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
138 : LDA 4, 4(5) ; Callee base for call
139 : LDA 6, 143(0) ; Return address
140 : ST 6, 0(4) ; Store return in callee frame
141 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
142 : LDA 7, 12(0) ; Call main
143 : LD 1, 2(5) ; Load callee result into R1
144 : LDC 2, 4(0) ; Callee frame size
145 : SUB 5, 5, 2 ; Pop callee frame
146 : ST 1, 2(5) ; Store function result into frame return slot
147 : LD 6, 0(5) ; Load return address
148 : LDA 7, 0(6) ; Return to caller
149 : LD 1, 1(5) ; Load parameter 'left' into R1
150 : ST 1, 4(5) ; Spill left operand at depth 0
151 : LD 1, 2(5) ; Load parameter 'right' into R1
152 : ST 1, 5(5) ; Spill left operand at depth 1
153 : LDC 1, 2(0) ; Load integer-literal into R1
154 : LD 2, 5(5) ; Restore left operand from depth 1
155 : MUL 1, 2, 1 ; R1 = left * right
156 : LD 2, 4(5) ; Restore left operand from depth 0
157 : SUB 1, 2, 1 ; R1 = left - right
158 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
159 : LDA 4, 5(5) ; Callee base for arg copy
160 : LD 1, 4(5) ; Load staged arg 0 from caller temp
161 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
162 : LDA 4, 5(5) ; Callee base for call
163 : LDA 6, 167(0) ; Return address
164 : ST 6, 0(4) ; Store return in callee frame
165 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
166 : LDA 7, 71(0) ; Call divisibleByDifference
167 : LD 1, 2(5) ; Load callee result into R1
168 : LDC 2, 5(0) ; Callee frame size
169 : SUB 5, 5, 2 ; Pop callee frame
170 : ST 1, 3(5) ; Store function result into frame return slot
171 : LD 6, 0(5) ; Load return address
172 : LDA 7, 0(6) ; Return to caller
