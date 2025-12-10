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
26 : LDA 7, 83(0) ; Skip ELSE block
27 : LD 1, 2(5) ; Load parameter 'n' into R1
28 : LDA 4, 5(5) ; Recompute callee base from caller size
29 : ST 1, 1(4) ; Store argument 0 in callee frame
30 : LD 1, 1(5) ; Load parameter 'm' into R1
31 : LDA 4, 5(5) ; Recompute callee base from caller size
32 : ST 1, 2(4) ; Store argument 1 in callee frame
33 : LDA 4, 5(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address into callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 89(0) ; Call MOD
38 : LD 1, 3(5) ; Load callee result into R1
39 : LDC 2, 6(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop back to caller
41 : ST 1, 4(5) ; Spill left operand at depth 0
42 : LDC 1, 0(0) ; Load integer-literal into R1
43 : LD 2, 4(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; left - right for equality check
45 : JEQ 1, 2(7) ; If R1 == 0, jump to true
46 : LDC 1, 0(0) ; false
47 : LDA 7, 1(7) ; skip setting true
48 : LDC 1, 1(0) ; true
49 : JEQ 1, 57(0) ; If condition is false, jump to ELSE
50 : LD 1, 2(5) ; Load parameter 'n' into R1
51 : ST 1, 4(5) ; Spill left operand at depth 0
52 : LD 1, 1(5) ; Load parameter 'm' into R1
53 : LD 2, 4(5) ; Restore left operand from depth 0
54 : DIV 1, 2, 1 ; R1 = left / right
55 : ST 1, 3(5) ; Store result into current frame's return slot
56 : LDA 7, 83(0) ; Skip ELSE block
57 : LD 1, 1(5) ; Load parameter 'm' into R1
58 : LDA 4, 5(5) ; Recompute callee base from caller size
59 : ST 1, 1(4) ; Store argument 0 in callee frame
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : LDA 4, 5(5) ; Recompute callee base from caller size
62 : ST 1, 2(4) ; Store argument 1 in callee frame
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'm' into R1
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : DIV 1, 2, 1 ; R1 = left / right
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LDC 1, 1(0) ; Load integer-literal into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : ADD 1, 2, 1 ; R1 = left + right
72 : LDA 4, 5(5) ; Recompute callee base from caller size
73 : ST 1, 3(4) ; Store argument 2 in callee frame
74 : LDA 4, 5(5) ; Recompute callee base from caller size
75 : LDA 6, 79(0) ; Return address
76 : ST 6, 0(4) ; Store return address into callee frame
77 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
78 : LDA 7, 105(0) ; Call print_and_continue
79 : LD 1, 4(5) ; Load callee result into R1
80 : LDC 2, 6(0) ; Callee frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : ST 1, 3(5) ; Store result into caller’s return slot
83 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
84 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
85 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
86 : LD 1, 3(5) ; Load main return value into R1
87 : LD 6, 0(5) ; Load root return address from main frame
88 : LDA 7, 0(6) ; Return from main to runtime epilogue
89 : LD 1, 1(5) ; Load parameter 'm' into R1
90 : ST 1, 4(5) ; Spill left operand at depth 0
91 : LD 1, 1(5) ; Load parameter 'm' into R1
92 : ST 1, 5(5) ; Spill left operand at depth 1
93 : LD 1, 2(5) ; Load parameter 'n' into R1
94 : LD 2, 5(5) ; Restore left operand from depth 1
95 : DIV 1, 2, 1 ; R1 = left / right
96 : ST 1, 5(5) ; Spill left operand at depth 1
97 : LD 1, 2(5) ; Load parameter 'n' into R1
98 : LD 2, 5(5) ; Restore left operand from depth 1
99 : MUL 1, 2, 1 ; R1 = left * right
100 : LD 2, 4(5) ; Restore left operand from depth 0
101 : SUB 1, 2, 1 ; R1 = left - right
102 : ST 1, 3(5) ; Store function result into frame return slot
103 : LD 6, 0(5) ; Load return address
104 : LDA 7, 0(6) ; Return to caller
105 : LD 1, 3(5) ; Load parameter 'unit' into R1
106 : LDA 4, 6(5) ; Recompute callee base from caller size
107 : LDA 6, 111(0) ; Return address
108 : ST 6, 0(4) ; Store return address in callee frame
109 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
110 : LDA 7, 11(0) ; Call built-in print
111 : LDC 2, 3(0) ; Callee frame size
112 : SUB 5, 5, 2 ; Pop back to caller
113 : LD 1, 3(5) ; Load parameter 'unit' into R1
114 : ST 1, 5(5) ; Spill left operand at depth 0
115 : LD 1, 1(5) ; Load parameter 'm' into R1
116 : LD 2, 5(5) ; Restore left operand from depth 0
117 : MUL 1, 2, 1 ; R1 = left * right
118 : ST 1, 5(5) ; Spill left operand at depth 0
119 : LD 1, 2(5) ; Load parameter 'n' into R1
120 : LD 2, 5(5) ; Restore left operand from depth 0
121 : SUB 1, 2, 1 ; R1 = left - right
122 : LDA 4, 6(5) ; Recompute callee base from caller size
123 : ST 1, 1(4) ; Store argument 0 in callee frame
124 : LD 1, 2(5) ; Load parameter 'n' into R1
125 : ST 1, 5(5) ; Spill left operand at depth 0
126 : LD 1, 3(5) ; Load parameter 'unit' into R1
127 : LD 2, 5(5) ; Restore left operand from depth 0
128 : MUL 1, 2, 1 ; R1 = left * right
129 : LDA 4, 6(5) ; Recompute callee base from caller size
130 : ST 1, 2(4) ; Store argument 1 in callee frame
131 : LDA 4, 6(5) ; Recompute callee base from caller size
132 : LDA 6, 136(0) ; Return address
133 : ST 6, 0(4) ; Store return address into callee frame
134 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
135 : LDA 7, 14(0) ; Call main
136 : LD 1, 3(5) ; Load callee result into R1
137 : LDC 2, 5(0) ; Callee frame size
138 : SUB 5, 5, 2 ; Pop back to caller
139 : ST 1, 4(5) ; Store function result into frame return slot
140 : LD 6, 0(5) ; Load return address
141 : LDA 7, 0(6) ; Return to caller
