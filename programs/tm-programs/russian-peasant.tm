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
15 : LDA 4, 4(5) ; Recompute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
19 : LDA 7, 11(0) ; Call built-in print
20 : LDC 2, 3(0) ; Callee frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LD 1, 1(5) ; Load parameter 'm' into R1
23 : LDA 4, 4(5) ; Recompute callee base from caller size
24 : ST 1, 1(4) ; Store argument 0 in callee frame
25 : LD 1, 2(5) ; Load parameter 'n' into R1
26 : LDA 4, 4(5) ; Recompute callee base from caller size
27 : ST 1, 2(4) ; Store argument 1 in callee frame
28 : LDA 4, 4(5) ; Recompute callee base from caller size
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return address into callee frame
31 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
32 : LDA 7, 40(0) ; Call mult
33 : LD 1, 3(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop back to caller
36 : ST 1, 3(5) ; Store result into caller’s return slot
37 : LD 1, 3(5) ; Load main return value into R1
38 : LD 6, 0(5) ; Load main return address
39 : LDA 7, 0(6) ; Return from main
40 : LD 1, 1(5) ; Load parameter 'm' into R1
41 : LDA 4, 4(5) ; Recompute callee base from caller size
42 : ST 1, 1(4) ; Store argument 0 in callee frame
43 : LD 1, 2(5) ; Load parameter 'n' into R1
44 : LDA 4, 4(5) ; Recompute callee base from caller size
45 : ST 1, 2(4) ; Store argument 1 in callee frame
46 : LDC 1, 0(0) ; Load integer-literal into R1
47 : LDA 4, 4(5) ; Recompute callee base from caller size
48 : ST 1, 3(4) ; Store argument 2 in callee frame
49 : LDA 4, 4(5) ; Recompute callee base from caller size
50 : LDA 6, 54(0) ; Return address
51 : ST 6, 0(4) ; Store return address into callee frame
52 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
53 : LDA 7, 60(0) ; Call multWithAccum
54 : LD 1, 4(5) ; Load callee result into R1
55 : LDC 2, 6(0) ; Callee frame size
56 : SUB 5, 5, 2 ; Pop back to caller
57 : ST 1, 3(5) ; Store function result into frame return slot
58 : LD 6, 0(5) ; Load return address
59 : LDA 7, 0(6) ; Return to caller
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : ST 1, 5(5) ; Spill left operand at depth 0
62 : LDC 1, 0(0) ; Load integer-literal into R1
63 : LD 2, 5(5) ; Restore left operand from depth 0
64 : SUB 1, 2, 1 ; left - right for equality check
65 : JEQ 1, 2(7) ; If R1 == 0, jump to true
66 : LDC 1, 0(0) ; false
67 : LDA 7, 1(7) ; skip setting true
68 : LDC 1, 1(0) ; true
69 : JEQ 1, 72(0) ; If condition is false, jump to ELSE
70 : LD 1, 3(5) ; Load parameter 'accum' into R1
71 : LDA 7, 150(0) ; Skip ELSE block
72 : LD 1, 2(5) ; Load parameter 'n' into R1
73 : LDA 4, 6(5) ; Recompute callee base from caller size
74 : ST 1, 1(4) ; Store argument 0 in callee frame
75 : LDC 1, 2(0) ; Load integer-literal into R1
76 : LDA 4, 6(5) ; Recompute callee base from caller size
77 : ST 1, 2(4) ; Store argument 1 in callee frame
78 : LDA 4, 6(5) ; Recompute callee base from caller size
79 : LDA 6, 83(0) ; Return address
80 : ST 6, 0(4) ; Store return address into callee frame
81 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
82 : LDA 7, 153(0) ; Call MOD
83 : LD 1, 3(5) ; Load callee result into R1
84 : LDC 2, 6(0) ; Callee frame size
85 : SUB 5, 5, 2 ; Pop back to caller
86 : ST 1, 5(5) ; Spill left operand at depth 0
87 : LDC 1, 1(0) ; Load integer-literal into R1
88 : LD 2, 5(5) ; Restore left operand from depth 0
89 : SUB 1, 2, 1 ; left - right for equality check
90 : JEQ 1, 2(7) ; If R1 == 0, jump to true
91 : LDC 1, 0(0) ; false
92 : LDA 7, 1(7) ; skip setting true
93 : LDC 1, 1(0) ; true
94 : JEQ 1, 125(0) ; If condition is false, jump to ELSE
95 : LD 1, 1(5) ; Load parameter 'm' into R1
96 : ST 1, 5(5) ; Spill left operand at depth 0
97 : LDC 1, 2(0) ; Load integer-literal into R1
98 : LD 2, 5(5) ; Restore left operand from depth 0
99 : MUL 1, 2, 1 ; R1 = left * right
100 : LDA 4, 6(5) ; Recompute callee base from caller size
101 : ST 1, 1(4) ; Store argument 0 in callee frame
102 : LD 1, 2(5) ; Load parameter 'n' into R1
103 : ST 1, 5(5) ; Spill left operand at depth 0
104 : LDC 1, 2(0) ; Load integer-literal into R1
105 : LD 2, 5(5) ; Restore left operand from depth 0
106 : DIV 1, 2, 1 ; R1 = left / right
107 : LDA 4, 6(5) ; Recompute callee base from caller size
108 : ST 1, 2(4) ; Store argument 1 in callee frame
109 : LD 1, 3(5) ; Load parameter 'accum' into R1
110 : ST 1, 5(5) ; Spill left operand at depth 0
111 : LD 1, 1(5) ; Load parameter 'm' into R1
112 : LD 2, 5(5) ; Restore left operand from depth 0
113 : ADD 1, 2, 1 ; R1 = left + right
114 : LDA 4, 6(5) ; Recompute callee base from caller size
115 : ST 1, 3(4) ; Store argument 2 in callee frame
116 : LDA 4, 6(5) ; Recompute callee base from caller size
117 : LDA 6, 121(0) ; Return address
118 : ST 6, 0(4) ; Store return address into callee frame
119 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
120 : LDA 7, 60(0) ; Call multWithAccum
121 : LD 1, 4(5) ; Load callee result into R1
122 : LDC 2, 6(0) ; Callee frame size
123 : SUB 5, 5, 2 ; Pop back to caller
124 : LDA 7, 150(0) ; Skip ELSE block
125 : LD 1, 1(5) ; Load parameter 'm' into R1
126 : ST 1, 5(5) ; Spill left operand at depth 0
127 : LDC 1, 2(0) ; Load integer-literal into R1
128 : LD 2, 5(5) ; Restore left operand from depth 0
129 : MUL 1, 2, 1 ; R1 = left * right
130 : LDA 4, 6(5) ; Recompute callee base from caller size
131 : ST 1, 1(4) ; Store argument 0 in callee frame
132 : LD 1, 2(5) ; Load parameter 'n' into R1
133 : ST 1, 5(5) ; Spill left operand at depth 0
134 : LDC 1, 2(0) ; Load integer-literal into R1
135 : LD 2, 5(5) ; Restore left operand from depth 0
136 : DIV 1, 2, 1 ; R1 = left / right
137 : LDA 4, 6(5) ; Recompute callee base from caller size
138 : ST 1, 2(4) ; Store argument 1 in callee frame
139 : LD 1, 3(5) ; Load parameter 'accum' into R1
140 : LDA 4, 6(5) ; Recompute callee base from caller size
141 : ST 1, 3(4) ; Store argument 2 in callee frame
142 : LDA 4, 6(5) ; Recompute callee base from caller size
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return address into callee frame
145 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
146 : LDA 7, 60(0) ; Call multWithAccum
147 : LD 1, 4(5) ; Load callee result into R1
148 : LDC 2, 6(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop back to caller
150 : ST 1, 4(5) ; Store function result into frame return slot
151 : LD 6, 0(5) ; Load return address
152 : LDA 7, 0(6) ; Return to caller
153 : LD 1, 1(5) ; Load parameter 'm' into R1
154 : ST 1, 4(5) ; Spill left operand at depth 0
155 : LD 1, 1(5) ; Load parameter 'm' into R1
156 : ST 1, 5(5) ; Spill left operand at depth 1
157 : LD 1, 2(5) ; Load parameter 'n' into R1
158 : LD 2, 5(5) ; Restore left operand from depth 1
159 : DIV 1, 2, 1 ; R1 = left / right
160 : ST 1, 5(5) ; Spill left operand at depth 1
161 : LD 1, 2(5) ; Load parameter 'n' into R1
162 : LD 2, 5(5) ; Restore left operand from depth 1
163 : MUL 1, 2, 1 ; R1 = left * right
164 : LD 2, 4(5) ; Restore left operand from depth 0
165 : SUB 1, 2, 1 ; R1 = left - right
166 : ST 1, 3(5) ; Store function result into frame return slot
167 : LD 6, 0(5) ; Load return address
168 : LDA 7, 0(6) ; Return to caller
