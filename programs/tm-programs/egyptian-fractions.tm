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
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 1(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 27(0) ; If condition is false, jump to ELSE
24 : LD 1, 2(5) ; Load parameter 'n' into R1
25 : ST 1, 3(5) ; Store result into current frame's return slot
26 : LDA 7, 93(0) ; Skip ELSE block
27 : LD 1, 2(5) ; Load parameter 'n' into R1
28 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
29 : LDA 4, 6(5) ; Callee base for arg copy
30 : LD 1, 4(5) ; Load staged arg 0 from caller temp
31 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
32 : LD 1, 1(5) ; Load parameter 'm' into R1
33 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
34 : LDA 4, 6(5) ; Callee base for arg copy
35 : LD 1, 4(5) ; Load staged arg 1 from caller temp
36 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
37 : LDA 4, 6(5) ; Callee base for call
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 96(0) ; Call MOD
42 : LD 1, 3(5) ; Load callee result into R1
43 : LDC 2, 6(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop callee frame
45 : ST 1, 4(5) ; Spill left operand at depth 0
46 : LDC 1, 0(0) ; Load integer-literal into R1
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; left - right for equality check
49 : JEQ 1, 2(7) ; If R1 == 0, jump to true
50 : LDC 1, 0(0) ; false
51 : LDA 7, 1(7) ; skip setting true
52 : LDC 1, 1(0) ; true
53 : JEQ 1, 61(0) ; If condition is false, jump to ELSE
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : ST 1, 4(5) ; Spill left operand at depth 0
56 : LD 1, 1(5) ; Load parameter 'm' into R1
57 : LD 2, 4(5) ; Restore left operand from depth 0
58 : DIV 1, 2, 1 ; R1 = left / right
59 : ST 1, 3(5) ; Store result into current frame's return slot
60 : LDA 7, 93(0) ; Skip ELSE block
61 : LD 1, 1(5) ; Load parameter 'm' into R1
62 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
63 : LDA 4, 6(5) ; Callee base for arg copy
64 : LD 1, 4(5) ; Load staged arg 0 from caller temp
65 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
66 : LD 1, 2(5) ; Load parameter 'n' into R1
67 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
68 : LDA 4, 6(5) ; Callee base for arg copy
69 : LD 1, 4(5) ; Load staged arg 1 from caller temp
70 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
71 : LD 1, 2(5) ; Load parameter 'n' into R1
72 : ST 1, 4(5) ; Spill left operand at depth 0
73 : LD 1, 1(5) ; Load parameter 'm' into R1
74 : LD 2, 4(5) ; Restore left operand from depth 0
75 : DIV 1, 2, 1 ; R1 = left / right
76 : ST 1, 4(5) ; Spill left operand at depth 0
77 : LDC 1, 1(0) ; Load integer-literal into R1
78 : LD 2, 4(5) ; Restore left operand from depth 0
79 : ADD 1, 2, 1 ; R1 = left + right
80 : ST 1, 4(5) ; Stage arg 2 in caller temp (P+2)
81 : LDA 4, 6(5) ; Callee base for arg copy
82 : LD 1, 4(5) ; Load staged arg 2 from caller temp
83 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
84 : LDA 4, 6(5) ; Callee base for call
85 : LDA 6, 89(0) ; Return address
86 : ST 6, 0(4) ; Store return in callee frame
87 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
88 : LDA 7, 112(0) ; Call print_and_continue
89 : LD 1, 4(5) ; Load callee result into R1
90 : LDC 2, 6(0) ; Callee frame size
91 : SUB 5, 5, 2 ; Pop callee frame
92 : ST 1, 3(5) ; Store result into caller’s frame
93 : LD 1, 3(5) ; Load main return value into R1
94 : LD 6, 0(5) ; Load main return address
95 : LDA 7, 0(6) ; Return from main
96 : LD 1, 1(5) ; Load parameter 'm' into R1
97 : ST 1, 4(5) ; Spill left operand at depth 0
98 : LD 1, 1(5) ; Load parameter 'm' into R1
99 : ST 1, 5(5) ; Spill left operand at depth 1
100 : LD 1, 2(5) ; Load parameter 'n' into R1
101 : LD 2, 5(5) ; Restore left operand from depth 1
102 : DIV 1, 2, 1 ; R1 = left / right
103 : ST 1, 5(5) ; Spill left operand at depth 1
104 : LD 1, 2(5) ; Load parameter 'n' into R1
105 : LD 2, 5(5) ; Restore left operand from depth 1
106 : MUL 1, 2, 1 ; R1 = left * right
107 : LD 2, 4(5) ; Restore left operand from depth 0
108 : SUB 1, 2, 1 ; R1 = left - right
109 : ST 1, 3(5) ; Store function result into frame return slot
110 : LD 6, 0(5) ; Load return address
111 : LDA 7, 0(6) ; Return to caller
112 : LD 1, 3(5) ; Load parameter 'unit' into R1
113 : LDA 4, 3(5) ; Callee base for built-in print
114 : LDA 6, 118(0) ; Return address
115 : ST 6, 0(4) ; Store return address in callee frame
116 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
117 : LDA 7, 11(0) ; Call built-in print
118 : LDC 2, 3(0) ; Callee frame size (print)
119 : SUB 5, 5, 2 ; Pop back to caller
120 : LD 1, 3(5) ; Load parameter 'unit' into R1
121 : ST 1, 5(5) ; Spill left operand at depth 0
122 : LD 1, 1(5) ; Load parameter 'm' into R1
123 : LD 2, 5(5) ; Restore left operand from depth 0
124 : MUL 1, 2, 1 ; R1 = left * right
125 : ST 1, 5(5) ; Spill left operand at depth 0
126 : LD 1, 2(5) ; Load parameter 'n' into R1
127 : LD 2, 5(5) ; Restore left operand from depth 0
128 : SUB 1, 2, 1 ; R1 = left - right
129 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
130 : LDA 4, 5(5) ; Callee base for arg copy
131 : LD 1, 5(5) ; Load staged arg 0 from caller temp
132 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
133 : LD 1, 2(5) ; Load parameter 'n' into R1
134 : ST 1, 5(5) ; Spill left operand at depth 0
135 : LD 1, 3(5) ; Load parameter 'unit' into R1
136 : LD 2, 5(5) ; Restore left operand from depth 0
137 : MUL 1, 2, 1 ; R1 = left * right
138 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
139 : LDA 4, 5(5) ; Callee base for arg copy
140 : LD 1, 5(5) ; Load staged arg 1 from caller temp
141 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
142 : LDA 4, 5(5) ; Callee base for call
143 : LDA 6, 147(0) ; Return address
144 : ST 6, 0(4) ; Store return in callee frame
145 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
146 : LDA 7, 14(0) ; Call main
147 : LD 1, 3(5) ; Load callee result into R1
148 : LDC 2, 5(0) ; Callee frame size
149 : SUB 5, 5, 2 ; Pop callee frame
150 : ST 1, 4(5) ; Store function result into frame return slot
151 : LD 6, 0(5) ; Load return address
152 : LDA 7, 0(6) ; Return to caller
