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
26 : LDA 7, 88(0) ; Skip ELSE block
27 : LD 1, 2(5) ; Load parameter 'n' into R1
28 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
29 : LD 1, 1(5) ; Load parameter 'm' into R1
30 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
31 : LDA 4, 8(5) ; Compute future callee base from caller size
32 : LD 2, 5(5) ; Load staged arg 0 from caller frame
33 : ST 2, 1(4) ; Store arg 0 into callee frame
34 : LD 2, 6(5) ; Load staged arg 1 from caller frame
35 : ST 2, 2(4) ; Store arg 1 into callee frame
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return in callee frame
38 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
39 : LDA 7, 91(0) ; Call MOD
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 6(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop callee frame
43 : ST 1, 4(5) ; Spill left operand at depth 0
44 : LDC 1, 0(0) ; Load integer-literal into R1
45 : LD 2, 4(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; left - right for equality check
47 : JEQ 1, 2(7) ; If R1 == 0, jump to true
48 : LDC 1, 0(0) ; false
49 : LDA 7, 1(7) ; skip setting true
50 : LDC 1, 1(0) ; true
51 : JEQ 1, 59(0) ; If condition is false, jump to ELSE
52 : LD 1, 2(5) ; Load parameter 'n' into R1
53 : ST 1, 4(5) ; Spill left operand at depth 0
54 : LD 1, 1(5) ; Load parameter 'm' into R1
55 : LD 2, 4(5) ; Restore left operand from depth 0
56 : DIV 1, 2, 1 ; R1 = left / right
57 : ST 1, 3(5) ; Store result into current frame's return slot
58 : LDA 7, 88(0) ; Skip ELSE block
59 : LD 1, 1(5) ; Load parameter 'm' into R1
60 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'm' into R1
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : DIV 1, 2, 1 ; R1 = left / right
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LDC 1, 1(0) ; Load integer-literal into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : ADD 1, 2, 1 ; R1 = left + right
72 : ST 1, 7(5) ; Stage arg 2 in caller frame outgoing area
73 : LDA 4, 8(5) ; Compute future callee base from caller size
74 : LD 2, 5(5) ; Load staged arg 0 from caller frame
75 : ST 2, 1(4) ; Store arg 0 into callee frame
76 : LD 2, 6(5) ; Load staged arg 1 from caller frame
77 : ST 2, 2(4) ; Store arg 1 into callee frame
78 : LD 2, 7(5) ; Load staged arg 2 from caller frame
79 : ST 2, 3(4) ; Store arg 2 into callee frame
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 107(0) ; Call print_and_continue
84 : LD 1, 4(5) ; Load callee result into R1
85 : LDC 2, 6(0) ; Callee frame size
86 : SUB 5, 5, 2 ; Pop callee frame
87 : ST 1, 3(5) ; Store result into caller’s frame
88 : LD 1, 3(5) ; Load main return value into R1
89 : LD 6, 0(5) ; Load main return address
90 : LDA 7, 0(6) ; Return from main
91 : LD 1, 1(5) ; Load parameter 'm' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LD 1, 1(5) ; Load parameter 'm' into R1
94 : ST 1, 5(5) ; Spill left operand at depth 1
95 : LD 1, 2(5) ; Load parameter 'n' into R1
96 : LD 2, 5(5) ; Restore left operand from depth 1
97 : DIV 1, 2, 1 ; R1 = left / right
98 : ST 1, 5(5) ; Spill left operand at depth 1
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : LD 2, 5(5) ; Restore left operand from depth 1
101 : MUL 1, 2, 1 ; R1 = left * right
102 : LD 2, 4(5) ; Restore left operand from depth 0
103 : SUB 1, 2, 1 ; R1 = left - right
104 : ST 1, 3(5) ; Store function result into frame return slot
105 : LD 6, 0(5) ; Load return address
106 : LDA 7, 0(6) ; Return to caller
107 : LDA 4, 8(5) ; Compute future callee base from caller size
108 : LD 2, 6(5) ; Load staged arg 0 from caller frame
109 : ST 2, 1(4) ; Store arg 0 into callee frame
110 : LDA 6, 114(0) ; Return address
111 : ST 6, 0(4) ; Store return in callee frame
112 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
113 : LDA 7, 11(0) ; Call built-in print
114 : LDC 2, 3(0) ; Callee frame size
115 : SUB 5, 5, 2 ; Pop callee frame
116 : LD 1, 3(5) ; Load parameter 'unit' into R1
117 : ST 1, 5(5) ; Spill left operand at depth 0
118 : LD 1, 1(5) ; Load parameter 'm' into R1
119 : LD 2, 5(5) ; Restore left operand from depth 0
120 : MUL 1, 2, 1 ; R1 = left * right
121 : ST 1, 5(5) ; Spill left operand at depth 0
122 : LD 1, 2(5) ; Load parameter 'n' into R1
123 : LD 2, 5(5) ; Restore left operand from depth 0
124 : SUB 1, 2, 1 ; R1 = left - right
125 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
126 : LD 1, 2(5) ; Load parameter 'n' into R1
127 : ST 1, 5(5) ; Spill left operand at depth 0
128 : LD 1, 3(5) ; Load parameter 'unit' into R1
129 : LD 2, 5(5) ; Restore left operand from depth 0
130 : MUL 1, 2, 1 ; R1 = left * right
131 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
132 : LDA 4, 8(5) ; Compute future callee base from caller size
133 : LD 2, 6(5) ; Load staged arg 0 from caller frame
134 : ST 2, 1(4) ; Store arg 0 into callee frame
135 : LD 2, 7(5) ; Load staged arg 1 from caller frame
136 : ST 2, 2(4) ; Store arg 1 into callee frame
137 : LDA 6, 141(0) ; Return address
138 : ST 6, 0(4) ; Store return in callee frame
139 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
140 : LDA 7, 14(0) ; Call main
141 : LD 1, 3(5) ; Load callee result into R1
142 : LDC 2, 5(0) ; Callee frame size
143 : SUB 5, 5, 2 ; Pop callee frame
144 : ST 1, 4(5) ; Store function result into frame return slot
145 : LD 6, 0(5) ; Load return address
146 : LDA 7, 0(6) ; Return to caller
