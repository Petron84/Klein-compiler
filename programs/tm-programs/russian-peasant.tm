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
15 : LDA 4, 3(5) ; Callee base for built-in print
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 11(0) ; Call built-in print
20 : LDC 2, 3(0) ; Callee frame size (print)
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LD 1, 1(5) ; Load parameter 'm' into R1
23 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
24 : LDA 4, 4(5) ; Callee base for arg copy
25 : LD 1, 4(5) ; Load staged arg 0 from caller temp
26 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
27 : LD 1, 2(5) ; Load parameter 'n' into R1
28 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
29 : LDA 4, 4(5) ; Callee base for arg copy
30 : LD 1, 4(5) ; Load staged arg 1 from caller temp
31 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
32 : LDA 4, 4(5) ; Callee base for call
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
36 : LDA 7, 44(0) ; Call mult
37 : LD 1, 3(5) ; Load callee result into R1
38 : LDC 2, 4(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop callee frame
40 : ST 1, 3(5) ; Store result into caller’s frame
41 : LD 1, 3(5) ; Load main return value into R1
42 : LD 6, 0(5) ; Load main return address
43 : LDA 7, 0(6) ; Return from main
44 : LD 1, 1(5) ; Load parameter 'm' into R1
45 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
46 : LDA 4, 6(5) ; Callee base for arg copy
47 : LD 1, 4(5) ; Load staged arg 0 from caller temp
48 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
49 : LD 1, 2(5) ; Load parameter 'n' into R1
50 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
51 : LDA 4, 6(5) ; Callee base for arg copy
52 : LD 1, 4(5) ; Load staged arg 1 from caller temp
53 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
54 : LDC 1, 0(0) ; Load integer-literal into R1
55 : ST 1, 4(5) ; Stage arg 2 in caller temp (P+2)
56 : LDA 4, 6(5) ; Callee base for arg copy
57 : LD 1, 4(5) ; Load staged arg 2 from caller temp
58 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
59 : LDA 4, 6(5) ; Callee base for call
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
63 : LDA 7, 70(0) ; Call multWithAccum
64 : LD 1, 4(5) ; Load callee result into R1
65 : LDC 2, 6(0) ; Callee frame size
66 : SUB 5, 5, 2 ; Pop callee frame
67 : ST 1, 3(5) ; Store function result into frame return slot
68 : LD 6, 0(5) ; Load return address
69 : LDA 7, 0(6) ; Return to caller
70 : LD 1, 2(5) ; Load parameter 'n' into R1
71 : ST 1, 5(5) ; Spill left operand at depth 0
72 : LDC 1, 0(0) ; Load integer-literal into R1
73 : LD 2, 5(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; left - right for equality check
75 : JEQ 1, 2(7) ; If R1 == 0, jump to true
76 : LDC 1, 0(0) ; false
77 : LDA 7, 1(7) ; skip setting true
78 : LDC 1, 1(0) ; true
79 : JEQ 1, 82(0) ; If condition is false, jump to ELSE
80 : LD 1, 3(5) ; Load parameter 'accum' into R1
81 : LDA 7, 176(0) ; Skip ELSE block
82 : LD 1, 2(5) ; Load parameter 'n' into R1
83 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
84 : LDA 4, 6(5) ; Callee base for arg copy
85 : LD 1, 5(5) ; Load staged arg 0 from caller temp
86 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
87 : LDC 1, 2(0) ; Load integer-literal into R1
88 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
89 : LDA 4, 6(5) ; Callee base for arg copy
90 : LD 1, 5(5) ; Load staged arg 1 from caller temp
91 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
92 : LDA 4, 6(5) ; Callee base for call
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 179(0) ; Call MOD
97 : LD 1, 3(5) ; Load callee result into R1
98 : LDC 2, 6(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : ST 1, 5(5) ; Spill left operand at depth 0
101 : LDC 1, 1(0) ; Load integer-literal into R1
102 : LD 2, 5(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; left - right for equality check
104 : JEQ 1, 2(7) ; If R1 == 0, jump to true
105 : LDC 1, 0(0) ; false
106 : LDA 7, 1(7) ; skip setting true
107 : LDC 1, 1(0) ; true
108 : JEQ 1, 145(0) ; If condition is false, jump to ELSE
109 : LD 1, 1(5) ; Load parameter 'm' into R1
110 : ST 1, 5(5) ; Spill left operand at depth 0
111 : LDC 1, 2(0) ; Load integer-literal into R1
112 : LD 2, 5(5) ; Restore left operand from depth 0
113 : MUL 1, 2, 1 ; R1 = left * right
114 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
115 : LDA 4, 6(5) ; Callee base for arg copy
116 : LD 1, 5(5) ; Load staged arg 0 from caller temp
117 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
118 : LD 1, 2(5) ; Load parameter 'n' into R1
119 : ST 1, 5(5) ; Spill left operand at depth 0
120 : LDC 1, 2(0) ; Load integer-literal into R1
121 : LD 2, 5(5) ; Restore left operand from depth 0
122 : DIV 1, 2, 1 ; R1 = left / right
123 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
124 : LDA 4, 6(5) ; Callee base for arg copy
125 : LD 1, 5(5) ; Load staged arg 1 from caller temp
126 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
127 : LD 1, 3(5) ; Load parameter 'accum' into R1
128 : ST 1, 5(5) ; Spill left operand at depth 0
129 : LD 1, 1(5) ; Load parameter 'm' into R1
130 : LD 2, 5(5) ; Restore left operand from depth 0
131 : ADD 1, 2, 1 ; R1 = left + right
132 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
133 : LDA 4, 6(5) ; Callee base for arg copy
134 : LD 1, 5(5) ; Load staged arg 2 from caller temp
135 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
136 : LDA 4, 6(5) ; Callee base for call
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
140 : LDA 7, 70(0) ; Call multWithAccum
141 : LD 1, 4(5) ; Load callee result into R1
142 : LDC 2, 6(0) ; Callee frame size
143 : SUB 5, 5, 2 ; Pop callee frame
144 : LDA 7, 176(0) ; Skip ELSE block
145 : LD 1, 1(5) ; Load parameter 'm' into R1
146 : ST 1, 5(5) ; Spill left operand at depth 0
147 : LDC 1, 2(0) ; Load integer-literal into R1
148 : LD 2, 5(5) ; Restore left operand from depth 0
149 : MUL 1, 2, 1 ; R1 = left * right
150 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
151 : LDA 4, 6(5) ; Callee base for arg copy
152 : LD 1, 5(5) ; Load staged arg 0 from caller temp
153 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
154 : LD 1, 2(5) ; Load parameter 'n' into R1
155 : ST 1, 5(5) ; Spill left operand at depth 0
156 : LDC 1, 2(0) ; Load integer-literal into R1
157 : LD 2, 5(5) ; Restore left operand from depth 0
158 : DIV 1, 2, 1 ; R1 = left / right
159 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
160 : LDA 4, 6(5) ; Callee base for arg copy
161 : LD 1, 5(5) ; Load staged arg 1 from caller temp
162 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
163 : LD 1, 3(5) ; Load parameter 'accum' into R1
164 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
165 : LDA 4, 6(5) ; Callee base for arg copy
166 : LD 1, 5(5) ; Load staged arg 2 from caller temp
167 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
168 : LDA 4, 6(5) ; Callee base for call
169 : LDA 6, 173(0) ; Return address
170 : ST 6, 0(4) ; Store return in callee frame
171 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
172 : LDA 7, 70(0) ; Call multWithAccum
173 : LD 1, 4(5) ; Load callee result into R1
174 : LDC 2, 6(0) ; Callee frame size
175 : SUB 5, 5, 2 ; Pop callee frame
176 : ST 1, 4(5) ; Store function result into frame return slot
177 : LD 6, 0(5) ; Load return address
178 : LDA 7, 0(6) ; Return to caller
179 : LD 1, 1(5) ; Load parameter 'm' into R1
180 : ST 1, 4(5) ; Spill left operand at depth 0
181 : LD 1, 1(5) ; Load parameter 'm' into R1
182 : ST 1, 5(5) ; Spill left operand at depth 1
183 : LD 1, 2(5) ; Load parameter 'n' into R1
184 : LD 2, 5(5) ; Restore left operand from depth 1
185 : DIV 1, 2, 1 ; R1 = left / right
186 : ST 1, 5(5) ; Spill left operand at depth 1
187 : LD 1, 2(5) ; Load parameter 'n' into R1
188 : LD 2, 5(5) ; Restore left operand from depth 1
189 : MUL 1, 2, 1 ; R1 = left * right
190 : LD 2, 4(5) ; Restore left operand from depth 0
191 : SUB 1, 2, 1 ; R1 = left - right
192 : ST 1, 3(5) ; Store function result into frame return slot
193 : LD 6, 0(5) ; Load return address
194 : LDA 7, 0(6) ; Return to caller
