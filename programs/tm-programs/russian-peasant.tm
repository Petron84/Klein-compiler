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
15 : LDA 4, 4(5) ; Compute callee base from caller size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return address into callee frame
18 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
19 : LDA 7, 11(0) ; Call built-in print
20 : LDC 2, 4(0) ; Caller frame size
21 : SUB 5, 5, 2 ; Pop back to caller
22 : LDA 4, 4(5) ; Compute callee base from caller size
23 : LD 1, 1(5) ; Load parameter 'm' into R1
24 : ST 1, 1(4) ; Store argument 0 in callee frame
25 : LD 1, 2(5) ; Load parameter 'n' into R1
26 : ST 1, 2(4) ; Store argument 1 in callee frame
27 : LDA 6, 31(0) ; Return address
28 : ST 6, 0(4) ; Store return address into callee frame
29 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
30 : LDA 7, 38(0) ; Call mult
31 : LD 1, 3(5) ; Load callee result into R1
32 : LDC 2, 4(0) ; Caller frame size
33 : SUB 5, 5, 2 ; Pop back to caller
34 : ST 1, 3(5) ; Store result into caller’s return slot
35 : LD 1, 3(5) ; Load main return value into R1
36 : LD 6, 0(5) ; Load main return address
37 : LDA 7, 0(6) ; Return from main
38 : LDA 4, 4(5) ; Compute callee base from caller size
39 : LD 1, 1(5) ; Load parameter 'm' into R1
40 : ST 1, 1(4) ; Store argument 0 in callee frame
41 : LD 1, 2(5) ; Load parameter 'n' into R1
42 : ST 1, 2(4) ; Store argument 1 in callee frame
43 : LDC 1, 0(0) ; Load integer-literal into R1
44 : ST 1, 3(4) ; Store argument 2 in callee frame
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return address into callee frame
47 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
48 : LDA 7, 55(0) ; Call multWithAccum
49 : LD 1, 4(5) ; Load callee result into R1
50 : LDC 2, 4(0) ; Caller frame size
51 : SUB 5, 5, 2 ; Pop back to caller
52 : ST 1, 3(5) ; Store function result into frame return slot
53 : LD 6, 0(5) ; Load return address
54 : LDA 7, 0(6) ; Return to caller
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : ST 1, 5(5) ; Spill left operand at depth 0
57 : LDC 1, 0(0) ; Load integer-literal into R1
58 : LD 2, 5(5) ; Restore left operand from depth 0
59 : SUB 1, 2, 1 ; left - right for equality check
60 : JEQ 1, 2(7) ; If R1 == 0, jump to true
61 : LDC 1, 0(0) ; false
62 : LDA 7, 1(7) ; skip setting true
63 : LDC 1, 1(0) ; true
64 : JEQ 1, 67(0) ; If condition is false, jump to ELSE
65 : LD 1, 3(5) ; Load parameter 'accum' into R1
66 : LDA 7, 137(0) ; Skip ELSE block
67 : LDA 4, 6(5) ; Compute callee base from caller size
68 : LD 1, 2(5) ; Load parameter 'n' into R1
69 : ST 1, 1(4) ; Store argument 0 in callee frame
70 : LDC 1, 2(0) ; Load integer-literal into R1
71 : ST 1, 2(4) ; Store argument 1 in callee frame
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return address into callee frame
74 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
75 : LDA 7, 140(0) ; Call MOD
76 : LD 1, 3(5) ; Load callee result into R1
77 : LDC 2, 6(0) ; Caller frame size
78 : SUB 5, 5, 2 ; Pop back to caller
79 : ST 1, 5(5) ; Spill left operand at depth 0
80 : LDC 1, 1(0) ; Load integer-literal into R1
81 : LD 2, 5(5) ; Restore left operand from depth 0
82 : SUB 1, 2, 1 ; left - right for equality check
83 : JEQ 1, 2(7) ; If R1 == 0, jump to true
84 : LDC 1, 0(0) ; false
85 : LDA 7, 1(7) ; skip setting true
86 : LDC 1, 1(0) ; true
87 : JEQ 1, 115(0) ; If condition is false, jump to ELSE
88 : LDA 4, 6(5) ; Compute callee base from caller size
89 : LD 1, 1(5) ; Load parameter 'm' into R1
90 : ST 1, 5(5) ; Spill left operand at depth 0
91 : LDC 1, 2(0) ; Load integer-literal into R1
92 : LD 2, 5(5) ; Restore left operand from depth 0
93 : MUL 1, 2, 1 ; R1 = left * right
94 : ST 1, 1(4) ; Store argument 0 in callee frame
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : ST 1, 5(5) ; Spill left operand at depth 0
97 : LDC 1, 2(0) ; Load integer-literal into R1
98 : LD 2, 5(5) ; Restore left operand from depth 0
99 : DIV 1, 2, 1 ; R1 = left / right
100 : ST 1, 2(4) ; Store argument 1 in callee frame
101 : LD 1, 3(5) ; Load parameter 'accum' into R1
102 : ST 1, 5(5) ; Spill left operand at depth 0
103 : LD 1, 1(5) ; Load parameter 'm' into R1
104 : LD 2, 5(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left + right
106 : ST 1, 3(4) ; Store argument 2 in callee frame
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return address into callee frame
109 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
110 : LDA 7, 55(0) ; Call multWithAccum
111 : LD 1, 4(5) ; Load callee result into R1
112 : LDC 2, 6(0) ; Caller frame size
113 : SUB 5, 5, 2 ; Pop back to caller
114 : LDA 7, 137(0) ; Skip ELSE block
115 : LDA 4, 6(5) ; Compute callee base from caller size
116 : LD 1, 1(5) ; Load parameter 'm' into R1
117 : ST 1, 5(5) ; Spill left operand at depth 0
118 : LDC 1, 2(0) ; Load integer-literal into R1
119 : LD 2, 5(5) ; Restore left operand from depth 0
120 : MUL 1, 2, 1 ; R1 = left * right
121 : ST 1, 1(4) ; Store argument 0 in callee frame
122 : LD 1, 2(5) ; Load parameter 'n' into R1
123 : ST 1, 5(5) ; Spill left operand at depth 0
124 : LDC 1, 2(0) ; Load integer-literal into R1
125 : LD 2, 5(5) ; Restore left operand from depth 0
126 : DIV 1, 2, 1 ; R1 = left / right
127 : ST 1, 2(4) ; Store argument 1 in callee frame
128 : LD 1, 3(5) ; Load parameter 'accum' into R1
129 : ST 1, 3(4) ; Store argument 2 in callee frame
130 : LDA 6, 134(0) ; Return address
131 : ST 6, 0(4) ; Store return address into callee frame
132 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
133 : LDA 7, 55(0) ; Call multWithAccum
134 : LD 1, 4(5) ; Load callee result into R1
135 : LDC 2, 6(0) ; Caller frame size
136 : SUB 5, 5, 2 ; Pop back to caller
137 : ST 1, 4(5) ; Store function result into frame return slot
138 : LD 6, 0(5) ; Load return address
139 : LDA 7, 0(6) ; Return to caller
140 : LD 1, 1(5) ; Load parameter 'm' into R1
141 : ST 1, 4(5) ; Spill left operand at depth 0
142 : LD 1, 1(5) ; Load parameter 'm' into R1
143 : ST 1, 5(5) ; Spill left operand at depth 1
144 : LD 1, 2(5) ; Load parameter 'n' into R1
145 : LD 2, 5(5) ; Restore left operand from depth 1
146 : DIV 1, 2, 1 ; R1 = left / right
147 : ST 1, 5(5) ; Spill left operand at depth 1
148 : LD 1, 2(5) ; Load parameter 'n' into R1
149 : LD 2, 5(5) ; Restore left operand from depth 1
150 : MUL 1, 2, 1 ; R1 = left * right
151 : LD 2, 4(5) ; Restore left operand from depth 0
152 : SUB 1, 2, 1 ; R1 = left - right
153 : ST 1, 3(5) ; Store function result into frame return slot
154 : LD 6, 0(5) ; Load return address
155 : LDA 7, 0(6) ; Return to caller
