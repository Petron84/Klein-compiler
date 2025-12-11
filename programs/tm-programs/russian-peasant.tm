0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
14 : LDA 4, 6(5) ; Compute future callee base from caller size
15 : LD 2, 4(5) ; Load staged arg 0 from caller frame
16 : ST 2, 1(4) ; Store arg 0 into callee frame
17 : LDA 6, 21(0) ; Return address
18 : ST 6, 0(4) ; Store return in callee frame
19 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
20 : LDA 7, 11(0) ; Call built-in print
21 : LDC 2, 3(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : LD 1, 1(5) ; Load parameter 'm' into R1
24 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
25 : LD 1, 2(5) ; Load parameter 'n' into R1
26 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
27 : LDA 4, 6(5) ; Compute future callee base from caller size
28 : LD 2, 4(5) ; Load staged arg 0 from caller frame
29 : ST 2, 1(4) ; Store arg 0 into callee frame
30 : LD 2, 5(5) ; Load staged arg 1 from caller frame
31 : ST 2, 2(4) ; Store arg 1 into callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
35 : LDA 7, 43(0) ; Call mult
36 : LD 1, 3(5) ; Load callee result into R1
37 : LDC 2, 4(0) ; Callee frame size
38 : SUB 5, 5, 2 ; Pop callee frame
39 : ST 1, 3(5) ; Store result into caller’s frame
40 : LD 1, 3(5) ; Load main return value into R1
41 : LD 6, 0(5) ; Load main return address
42 : LDA 7, 0(6) ; Return from main
43 : LD 1, 1(5) ; Load parameter 'm' into R1
44 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
45 : LD 1, 2(5) ; Load parameter 'n' into R1
46 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
47 : LDC 1, 0(0) ; Load integer-literal into R1
48 : ST 1, 6(5) ; Stage arg 2 in caller frame outgoing area
49 : LDA 4, 7(5) ; Compute future callee base from caller size
50 : LD 2, 4(5) ; Load staged arg 0 from caller frame
51 : ST 2, 1(4) ; Store arg 0 into callee frame
52 : LD 2, 5(5) ; Load staged arg 1 from caller frame
53 : ST 2, 2(4) ; Store arg 1 into callee frame
54 : LD 2, 6(5) ; Load staged arg 2 from caller frame
55 : ST 2, 3(4) ; Store arg 2 into callee frame
56 : LDA 6, 60(0) ; Return address
57 : ST 6, 0(4) ; Store return in callee frame
58 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
59 : LDA 7, 66(0) ; Call multWithAccum
60 : LD 1, 4(5) ; Load callee result into R1
61 : LDC 2, 6(0) ; Callee frame size
62 : SUB 5, 5, 2 ; Pop callee frame
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LD 1, 2(5) ; Load parameter 'n' into R1
67 : ST 1, 5(5) ; Spill left operand at depth 0
68 : LDC 1, 0(0) ; Load integer-literal into R1
69 : LD 2, 5(5) ; Restore left operand from depth 0
70 : SUB 1, 2, 1 ; left - right for equality check
71 : JEQ 1, 2(7) ; If R1 == 0, jump to true
72 : LDC 1, 0(0) ; false
73 : LDA 7, 1(7) ; skip setting true
74 : LDC 1, 1(0) ; true
75 : JEQ 1, 78(0) ; If condition is false, jump to ELSE
76 : LD 1, 3(5) ; Load parameter 'accum' into R1
77 : LDA 7, 164(0) ; Skip ELSE block
78 : LD 1, 2(5) ; Load parameter 'n' into R1
79 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
80 : LDC 1, 2(0) ; Load integer-literal into R1
81 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
82 : LDA 4, 9(5) ; Compute future callee base from caller size
83 : LD 2, 6(5) ; Load staged arg 0 from caller frame
84 : ST 2, 1(4) ; Store arg 0 into callee frame
85 : LD 2, 7(5) ; Load staged arg 1 from caller frame
86 : ST 2, 2(4) ; Store arg 1 into callee frame
87 : LDA 6, 91(0) ; Return address
88 : ST 6, 0(4) ; Store return in callee frame
89 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
90 : LDA 7, 167(0) ; Call MOD
91 : LD 1, 3(5) ; Load callee result into R1
92 : LDC 2, 6(0) ; Callee frame size
93 : SUB 5, 5, 2 ; Pop callee frame
94 : ST 1, 5(5) ; Spill left operand at depth 0
95 : LDC 1, 1(0) ; Load integer-literal into R1
96 : LD 2, 5(5) ; Restore left operand from depth 0
97 : SUB 1, 2, 1 ; left - right for equality check
98 : JEQ 1, 2(7) ; If R1 == 0, jump to true
99 : LDC 1, 0(0) ; false
100 : LDA 7, 1(7) ; skip setting true
101 : LDC 1, 1(0) ; true
102 : JEQ 1, 136(0) ; If condition is false, jump to ELSE
103 : LD 1, 1(5) ; Load parameter 'm' into R1
104 : ST 1, 5(5) ; Spill left operand at depth 0
105 : LDC 1, 2(0) ; Load integer-literal into R1
106 : LD 2, 5(5) ; Restore left operand from depth 0
107 : MUL 1, 2, 1 ; R1 = left * right
108 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
109 : LD 1, 2(5) ; Load parameter 'n' into R1
110 : ST 1, 5(5) ; Spill left operand at depth 0
111 : LDC 1, 2(0) ; Load integer-literal into R1
112 : LD 2, 5(5) ; Restore left operand from depth 0
113 : DIV 1, 2, 1 ; R1 = left / right
114 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
115 : LD 1, 3(5) ; Load parameter 'accum' into R1
116 : ST 1, 5(5) ; Spill left operand at depth 0
117 : LD 1, 1(5) ; Load parameter 'm' into R1
118 : LD 2, 5(5) ; Restore left operand from depth 0
119 : ADD 1, 2, 1 ; R1 = left + right
120 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
121 : LDA 4, 9(5) ; Compute future callee base from caller size
122 : LD 2, 6(5) ; Load staged arg 0 from caller frame
123 : ST 2, 1(4) ; Store arg 0 into callee frame
124 : LD 2, 7(5) ; Load staged arg 1 from caller frame
125 : ST 2, 2(4) ; Store arg 1 into callee frame
126 : LD 2, 8(5) ; Load staged arg 2 from caller frame
127 : ST 2, 3(4) ; Store arg 2 into callee frame
128 : LDA 6, 132(0) ; Return address
129 : ST 6, 0(4) ; Store return in callee frame
130 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
131 : LDA 7, 66(0) ; Call multWithAccum
132 : LD 1, 4(5) ; Load callee result into R1
133 : LDC 2, 6(0) ; Callee frame size
134 : SUB 5, 5, 2 ; Pop callee frame
135 : LDA 7, 164(0) ; Skip ELSE block
136 : LD 1, 1(5) ; Load parameter 'm' into R1
137 : ST 1, 5(5) ; Spill left operand at depth 0
138 : LDC 1, 2(0) ; Load integer-literal into R1
139 : LD 2, 5(5) ; Restore left operand from depth 0
140 : MUL 1, 2, 1 ; R1 = left * right
141 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
142 : LD 1, 2(5) ; Load parameter 'n' into R1
143 : ST 1, 5(5) ; Spill left operand at depth 0
144 : LDC 1, 2(0) ; Load integer-literal into R1
145 : LD 2, 5(5) ; Restore left operand from depth 0
146 : DIV 1, 2, 1 ; R1 = left / right
147 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
148 : LD 1, 3(5) ; Load parameter 'accum' into R1
149 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
150 : LDA 4, 9(5) ; Compute future callee base from caller size
151 : LD 2, 6(5) ; Load staged arg 0 from caller frame
152 : ST 2, 1(4) ; Store arg 0 into callee frame
153 : LD 2, 7(5) ; Load staged arg 1 from caller frame
154 : ST 2, 2(4) ; Store arg 1 into callee frame
155 : LD 2, 8(5) ; Load staged arg 2 from caller frame
156 : ST 2, 3(4) ; Store arg 2 into callee frame
157 : LDA 6, 161(0) ; Return address
158 : ST 6, 0(4) ; Store return in callee frame
159 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
160 : LDA 7, 66(0) ; Call multWithAccum
161 : LD 1, 4(5) ; Load callee result into R1
162 : LDC 2, 6(0) ; Callee frame size
163 : SUB 5, 5, 2 ; Pop callee frame
164 : ST 1, 4(5) ; Store function result into frame return slot
165 : LD 6, 0(5) ; Load return address
166 : LDA 7, 0(6) ; Return to caller
167 : LD 1, 1(5) ; Load parameter 'm' into R1
168 : ST 1, 4(5) ; Spill left operand at depth 0
169 : LD 1, 1(5) ; Load parameter 'm' into R1
170 : ST 1, 5(5) ; Spill left operand at depth 1
171 : LD 1, 2(5) ; Load parameter 'n' into R1
172 : LD 2, 5(5) ; Restore left operand from depth 1
173 : DIV 1, 2, 1 ; R1 = left / right
174 : ST 1, 5(5) ; Spill left operand at depth 1
175 : LD 1, 2(5) ; Load parameter 'n' into R1
176 : LD 2, 5(5) ; Restore left operand from depth 1
177 : MUL 1, 2, 1 ; R1 = left * right
178 : LD 2, 4(5) ; Restore left operand from depth 0
179 : SUB 1, 2, 1 ; R1 = left - right
180 : ST 1, 3(5) ; Store function result into frame return slot
181 : LD 6, 0(5) ; Load return address
182 : LDA 7, 0(6) ; Return to caller
