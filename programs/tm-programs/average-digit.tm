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
13 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
14 : LDA 4, 6(5) ; Callee base for arg copy
15 : LD 1, 3(5) ; Load staged arg 0 from caller temp
16 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
17 : LDC 1, 0(0) ; Load integer-literal into R1
18 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
19 : LDA 4, 6(5) ; Callee base for arg copy
20 : LD 1, 3(5) ; Load staged arg 1 from caller temp
21 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
22 : LDC 1, 0(0) ; Load integer-literal into R1
23 : ST 1, 3(5) ; Stage arg 2 in caller temp (P+2)
24 : LDA 4, 6(5) ; Callee base for arg copy
25 : LD 1, 3(5) ; Load staged arg 2 from caller temp
26 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
27 : LDA 4, 6(5) ; Callee base for call
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 96(0) ; Call average_digit
32 : LD 1, 4(5) ; Load callee result into R1
33 : LDC 2, 6(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : ST 1, 2(5) ; Store result into caller’s frame
36 : LD 1, 2(5) ; Load main return value into R1
37 : LD 6, 0(5) ; Load main return address
38 : LDA 7, 0(6) ; Return from main
39 : LD 1, 1(5) ; Load parameter 'm' into R1
40 : ST 1, 4(5) ; Spill left operand at depth 0
41 : LD 1, 1(5) ; Load parameter 'm' into R1
42 : ST 1, 5(5) ; Spill left operand at depth 1
43 : LD 1, 2(5) ; Load parameter 'n' into R1
44 : LD 2, 5(5) ; Restore left operand from depth 1
45 : DIV 1, 2, 1 ; R1 = left / right
46 : ST 1, 5(5) ; Spill left operand at depth 1
47 : LD 1, 2(5) ; Load parameter 'n' into R1
48 : LD 2, 5(5) ; Restore left operand from depth 1
49 : MUL 1, 2, 1 ; R1 = left * right
50 : LD 2, 4(5) ; Restore left operand from depth 0
51 : SUB 1, 2, 1 ; R1 = left - right
52 : ST 1, 3(5) ; Store function result into frame return slot
53 : LD 6, 0(5) ; Load return address
54 : LDA 7, 0(6) ; Return to caller
55 : LD 1, 1(5) ; Load parameter 'sum' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : DIV 1, 2, 1 ; R1 = left / right
60 : LDA 4, 3(5) ; Callee base for built-in print
61 : LDA 6, 65(0) ; Return address
62 : ST 6, 0(4) ; Store return address in callee frame
63 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
64 : LDA 7, 9(0) ; Call built-in print
65 : LDC 2, 3(0) ; Callee frame size (print)
66 : SUB 5, 5, 2 ; Pop back to caller
67 : LD 1, 1(5) ; Load parameter 'sum' into R1
68 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
69 : LDA 4, 6(5) ; Callee base for arg copy
70 : LD 1, 4(5) ; Load staged arg 0 from caller temp
71 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
72 : LD 1, 2(5) ; Load parameter 'n' into R1
73 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
74 : LDA 4, 6(5) ; Callee base for arg copy
75 : LD 1, 4(5) ; Load staged arg 1 from caller temp
76 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
77 : LDA 4, 6(5) ; Callee base for call
78 : LDA 6, 82(0) ; Return address
79 : ST 6, 0(4) ; Store return in callee frame
80 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
81 : LDA 7, 39(0) ; Call MOD
82 : LD 1, 3(5) ; Load callee result into R1
83 : LDC 2, 6(0) ; Callee frame size
84 : SUB 5, 5, 2 ; Pop callee frame
85 : LDA 4, 3(5) ; Callee base for built-in print
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return address in callee frame
88 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
89 : LDA 7, 9(0) ; Call built-in print
90 : LDC 2, 3(0) ; Callee frame size (print)
91 : SUB 5, 5, 2 ; Pop back to caller
92 : LD 1, 2(5) ; Load parameter 'n' into R1
93 : ST 1, 3(5) ; Store function result into frame return slot
94 : LD 6, 0(5) ; Load return address
95 : LDA 7, 0(6) ; Return to caller
96 : LD 1, 1(5) ; Load parameter 'n' into R1
97 : ST 1, 5(5) ; Spill left operand at depth 0
98 : LDC 1, 10(0) ; Load integer-literal into R1
99 : LD 2, 5(5) ; Restore left operand from depth 0
100 : SUB 1, 2, 1 ; left - right for less-than check
101 : JLT 1, 2(7) ; If R1 < 0, jump to true
102 : LDC 1, 0(0) ; false
103 : LDA 7, 1(7) ; skip setting true
104 : LDC 1, 1(0) ; true
105 : JEQ 1, 133(0) ; If condition is false, jump to ELSE
106 : LD 1, 2(5) ; Load parameter 'sum' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LD 1, 1(5) ; Load parameter 'n' into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : ADD 1, 2, 1 ; R1 = left + right
111 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
112 : LDA 4, 4(5) ; Callee base for arg copy
113 : LD 1, 5(5) ; Load staged arg 0 from caller temp
114 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
115 : LD 1, 3(5) ; Load parameter 'i' into R1
116 : ST 1, 5(5) ; Spill left operand at depth 0
117 : LDC 1, 1(0) ; Load integer-literal into R1
118 : LD 2, 5(5) ; Restore left operand from depth 0
119 : ADD 1, 2, 1 ; R1 = left + right
120 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
121 : LDA 4, 4(5) ; Callee base for arg copy
122 : LD 1, 5(5) ; Load staged arg 1 from caller temp
123 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
124 : LDA 4, 4(5) ; Callee base for call
125 : LDA 6, 129(0) ; Return address
126 : ST 6, 0(4) ; Store return in callee frame
127 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
128 : LDA 7, 55(0) ; Call print_and_return
129 : LD 1, 3(5) ; Load callee result into R1
130 : LDC 2, 4(0) ; Callee frame size
131 : SUB 5, 5, 2 ; Pop callee frame
132 : LDA 7, 185(0) ; Skip ELSE block
133 : LD 1, 1(5) ; Load parameter 'n' into R1
134 : ST 1, 5(5) ; Spill left operand at depth 0
135 : LDC 1, 10(0) ; Load integer-literal into R1
136 : LD 2, 5(5) ; Restore left operand from depth 0
137 : DIV 1, 2, 1 ; R1 = left / right
138 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
139 : LDA 4, 6(5) ; Callee base for arg copy
140 : LD 1, 5(5) ; Load staged arg 0 from caller temp
141 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
142 : LD 1, 2(5) ; Load parameter 'sum' into R1
143 : ST 1, 5(5) ; Spill left operand at depth 0
144 : LD 1, 1(5) ; Load parameter 'n' into R1
145 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
146 : LDA 4, 6(5) ; Callee base for arg copy
147 : LD 1, 5(5) ; Load staged arg 0 from caller temp
148 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
149 : LDC 1, 10(0) ; Load integer-literal into R1
150 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
151 : LDA 4, 6(5) ; Callee base for arg copy
152 : LD 1, 5(5) ; Load staged arg 1 from caller temp
153 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
154 : LDA 4, 6(5) ; Callee base for call
155 : LDA 6, 159(0) ; Return address
156 : ST 6, 0(4) ; Store return in callee frame
157 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
158 : LDA 7, 39(0) ; Call MOD
159 : LD 1, 3(5) ; Load callee result into R1
160 : LDC 2, 6(0) ; Callee frame size
161 : SUB 5, 5, 2 ; Pop callee frame
162 : LD 2, 5(5) ; Restore left operand from depth 0
163 : ADD 1, 2, 1 ; R1 = left + right
164 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
165 : LDA 4, 6(5) ; Callee base for arg copy
166 : LD 1, 5(5) ; Load staged arg 1 from caller temp
167 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
168 : LD 1, 3(5) ; Load parameter 'i' into R1
169 : ST 1, 5(5) ; Spill left operand at depth 0
170 : LDC 1, 1(0) ; Load integer-literal into R1
171 : LD 2, 5(5) ; Restore left operand from depth 0
172 : ADD 1, 2, 1 ; R1 = left + right
173 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
174 : LDA 4, 6(5) ; Callee base for arg copy
175 : LD 1, 5(5) ; Load staged arg 2 from caller temp
176 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
177 : LDA 4, 6(5) ; Callee base for call
178 : LDA 6, 182(0) ; Return address
179 : ST 6, 0(4) ; Store return in callee frame
180 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
181 : LDA 7, 96(0) ; Call average_digit
182 : LD 1, 4(5) ; Load callee result into R1
183 : LDC 2, 6(0) ; Callee frame size
184 : SUB 5, 5, 2 ; Pop callee frame
185 : ST 1, 4(5) ; Store function result into frame return slot
186 : LD 6, 0(5) ; Load return address
187 : LDA 7, 0(6) ; Return to caller
