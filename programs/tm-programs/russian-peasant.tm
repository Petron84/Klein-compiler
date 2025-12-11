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
23 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
24 : LD 1, 2(5) ; Load parameter 'n' into R1
25 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
26 : LDA 4, 7(5) ; Callee base for arg copy
27 : LD 1, 4(5) ; Load staged arg 0 from caller temp
28 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
29 : LD 1, 5(5) ; Load staged arg 1 from caller temp
30 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
34 : LDA 7, 42(0) ; Call mult
35 : LD 1, 3(5) ; Load callee result into R1
36 : LDC 2, 7(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop callee frame
38 : ST 1, 3(5) ; Store result into caller’s frame
39 : LD 1, 3(5) ; Load main return value into R1
40 : LD 6, 0(5) ; Load main return address
41 : LDA 7, 0(6) ; Return from main
42 : LD 1, 1(5) ; Load parameter 'm' into R1
43 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
44 : LD 1, 2(5) ; Load parameter 'n' into R1
45 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
46 : LDC 1, 0(0) ; Load integer-literal into R1
47 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2+i)
48 : LDA 4, 8(5) ; Callee base for arg copy
49 : LD 1, 4(5) ; Load staged arg 0 from caller temp
50 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
51 : LD 1, 5(5) ; Load staged arg 1 from caller temp
52 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
53 : LD 1, 6(5) ; Load staged arg 2 from caller temp
54 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
58 : LDA 7, 65(0) ; Call multWithAccum
59 : LD 1, 4(5) ; Load callee result into R1
60 : LDC 2, 8(0) ; Callee frame size
61 : SUB 5, 5, 2 ; Pop callee frame
62 : ST 1, 3(5) ; Store function result into frame return slot
63 : LD 6, 0(5) ; Load return address
64 : LDA 7, 0(6) ; Return to caller
65 : LD 1, 2(5) ; Load parameter 'n' into R1
66 : ST 1, 5(5) ; Spill left operand at depth 0
67 : LDC 1, 0(0) ; Load integer-literal into R1
68 : LD 2, 5(5) ; Restore left operand from depth 0
69 : SUB 1, 2, 1 ; left - right for equality check
70 : JEQ 1, 2(7) ; If R1 == 0, jump to true
71 : LDC 1, 0(0) ; false
72 : LDA 7, 1(7) ; skip setting true
73 : LDC 1, 1(0) ; true
74 : JEQ 1, 77(0) ; If condition is false, jump to ELSE
75 : LD 1, 3(5) ; Load parameter 'accum' into R1
76 : LDA 7, !temp_4(0) ; Skip ELSE block
77 : LD 1, 2(5) ; Load parameter 'n' into R1
78 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
79 : LDC 1, 2(0) ; Load integer-literal into R1
80 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
81 : LDA 4, 6(5) ; Callee base for arg copy
82 : LD 1, 5(5) ; Load staged arg 0 from caller temp
83 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
84 : LD 1, 6(5) ; Load staged arg 1 from caller temp
85 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
86 : LDA 6, 90(0) ; Return address
87 : ST 6, 0(4) ; Store return in callee frame
88 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
89 : LDA 7, 166(0) ; Call MOD
90 : LD 1, 3(5) ; Load callee result into R1
91 : LDC 2, 6(0) ; Callee frame size
92 : SUB 5, 5, 2 ; Pop callee frame
93 : ST 1, 5(5) ; Spill left operand at depth 0
94 : LDC 1, 1(0) ; Load integer-literal into R1
95 : LD 2, 5(5) ; Restore left operand from depth 0
96 : SUB 1, 2, 1 ; left - right for equality check
97 : JEQ 1, 2(7) ; If R1 == 0, jump to true
98 : LDC 1, 0(0) ; false
99 : LDA 7, 1(7) ; skip setting true
100 : LDC 1, 1(0) ; true
101 : JEQ 1, 135(0) ; If condition is false, jump to ELSE
102 : LD 1, 1(5) ; Load parameter 'm' into R1
103 : ST 1, 5(5) ; Spill left operand at depth 0
104 : LDC 1, 2(0) ; Load integer-literal into R1
105 : LD 2, 5(5) ; Restore left operand from depth 0
106 : MUL 1, 2, 1 ; R1 = left * right
107 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
108 : LD 1, 2(5) ; Load parameter 'n' into R1
109 : ST 1, 5(5) ; Spill left operand at depth 0
110 : LDC 1, 2(0) ; Load integer-literal into R1
111 : LD 2, 5(5) ; Restore left operand from depth 0
112 : DIV 1, 2, 1 ; R1 = left / right
113 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
114 : LD 1, 3(5) ; Load parameter 'accum' into R1
115 : ST 1, 5(5) ; Spill left operand at depth 0
116 : LD 1, 1(5) ; Load parameter 'm' into R1
117 : LD 2, 5(5) ; Restore left operand from depth 0
118 : ADD 1, 2, 1 ; R1 = left + right
119 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
120 : LDA 4, 8(5) ; Callee base for arg copy
121 : LD 1, 5(5) ; Load staged arg 0 from caller temp
122 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
123 : LD 1, 6(5) ; Load staged arg 1 from caller temp
124 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
125 : LD 1, 7(5) ; Load staged arg 2 from caller temp
126 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
127 : LDA 6, 131(0) ; Return address
128 : ST 6, 0(4) ; Store return in callee frame
129 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
130 : LDA 7, 65(0) ; Call multWithAccum
131 : LD 1, 4(5) ; Load callee result into R1
132 : LDC 2, 8(0) ; Callee frame size
133 : SUB 5, 5, 2 ; Pop callee frame
134 : LDA 7, !temp_8(0) ; Skip ELSE block
135 : LD 1, 1(5) ; Load parameter 'm' into R1
136 : ST 1, 5(5) ; Spill left operand at depth 0
137 : LDC 1, 2(0) ; Load integer-literal into R1
138 : LD 2, 5(5) ; Restore left operand from depth 0
139 : MUL 1, 2, 1 ; R1 = left * right
140 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
141 : LD 1, 2(5) ; Load parameter 'n' into R1
142 : ST 1, 5(5) ; Spill left operand at depth 0
143 : LDC 1, 2(0) ; Load integer-literal into R1
144 : LD 2, 5(5) ; Restore left operand from depth 0
145 : DIV 1, 2, 1 ; R1 = left / right
146 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
147 : LD 1, 3(5) ; Load parameter 'accum' into R1
148 : ST 1, 7(5) ; Stage arg 2 in caller temp (P+2+i)
149 : LDA 4, 8(5) ; Callee base for arg copy
150 : LD 1, 5(5) ; Load staged arg 0 from caller temp
151 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
152 : LD 1, 6(5) ; Load staged arg 1 from caller temp
153 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
154 : LD 1, 7(5) ; Load staged arg 2 from caller temp
155 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
156 : LDA 6, 160(0) ; Return address
157 : ST 6, 0(4) ; Store return in callee frame
158 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
159 : LDA 7, 65(0) ; Call multWithAccum
160 : LD 1, 4(5) ; Load callee result into R1
161 : LDC 2, 8(0) ; Callee frame size
162 : SUB 5, 5, 2 ; Pop callee frame
163 : ST 1, 4(5) ; Store function result into frame return slot
164 : LD 6, 0(5) ; Load return address
165 : LDA 7, 0(6) ; Return to caller
166 : LD 1, 1(5) ; Load parameter 'm' into R1
167 : ST 1, 4(5) ; Spill left operand at depth 0
168 : LD 1, 1(5) ; Load parameter 'm' into R1
169 : ST 1, 5(5) ; Spill left operand at depth 1
170 : LD 1, 2(5) ; Load parameter 'n' into R1
171 : LD 2, 5(5) ; Restore left operand from depth 1
172 : DIV 1, 2, 1 ; R1 = left / right
173 : ST 1, 5(5) ; Spill left operand at depth 1
174 : LD 1, 2(5) ; Load parameter 'n' into R1
175 : LD 2, 5(5) ; Restore left operand from depth 1
176 : MUL 1, 2, 1 ; R1 = left * right
177 : LD 2, 4(5) ; Restore left operand from depth 0
178 : SUB 1, 2, 1 ; R1 = left - right
179 : ST 1, 3(5) ; Store function result into frame return slot
180 : LD 6, 0(5) ; Load return address
181 : LDA 7, 0(6) ; Return to caller
