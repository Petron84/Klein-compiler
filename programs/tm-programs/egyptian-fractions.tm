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
26 : LDA 7, 78(0) ; Skip ELSE block
27 : LDA 4, 5(5) ; Compute callee base from caller size
28 : LD 1, 2(5) ; Load parameter 'n' into R1
29 : ST 1, 1(4) ; Store argument 0 in callee frame
30 : LD 1, 1(5) ; Load parameter 'm' into R1
31 : ST 1, 2(4) ; Store argument 1 in callee frame
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return address into callee frame
34 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
35 : LDA 7, 81(0) ; Call MOD
36 : LD 1, 3(5) ; Load callee result into R1
37 : LDC 2, 5(0) ; Caller frame size
38 : SUB 5, 5, 2 ; Pop back to caller
39 : ST 1, 4(5) ; Spill left operand at depth 0
40 : LDC 1, 0(0) ; Load integer-literal into R1
41 : LD 2, 4(5) ; Restore left operand from depth 0
42 : SUB 1, 2, 1 ; left - right for equality check
43 : JEQ 1, 2(7) ; If R1 == 0, jump to true
44 : LDC 1, 0(0) ; false
45 : LDA 7, 1(7) ; skip setting true
46 : LDC 1, 1(0) ; true
47 : JEQ 1, 55(0) ; If condition is false, jump to ELSE
48 : LD 1, 2(5) ; Load parameter 'n' into R1
49 : ST 1, 4(5) ; Spill left operand at depth 0
50 : LD 1, 1(5) ; Load parameter 'm' into R1
51 : LD 2, 4(5) ; Restore left operand from depth 0
52 : DIV 1, 2, 1 ; R1 = left / right
53 : ST 1, 3(5) ; Store result into current frame's return slot
54 : LDA 7, 78(0) ; Skip ELSE block
55 : LDA 4, 5(5) ; Compute callee base from caller size
56 : LD 1, 1(5) ; Load parameter 'm' into R1
57 : ST 1, 1(4) ; Store argument 0 in callee frame
58 : LD 1, 2(5) ; Load parameter 'n' into R1
59 : ST 1, 2(4) ; Store argument 1 in callee frame
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : ST 1, 4(5) ; Spill left operand at depth 0
62 : LD 1, 1(5) ; Load parameter 'm' into R1
63 : LD 2, 4(5) ; Restore left operand from depth 0
64 : DIV 1, 2, 1 ; R1 = left / right
65 : ST 1, 4(5) ; Spill left operand at depth 0
66 : LDC 1, 1(0) ; Load integer-literal into R1
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : ADD 1, 2, 1 ; R1 = left + right
69 : ST 1, 3(4) ; Store argument 2 in callee frame
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return address into callee frame
72 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
73 : LDA 7, 97(0) ; Call print_and_continue
74 : LD 1, 4(5) ; Load callee result into R1
75 : LDC 2, 5(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 3(5) ; Store result into caller’s return slot
78 : LD 1, 3(5) ; Load main return value into R1
79 : LD 6, 0(5) ; Load main return address
80 : LDA 7, 0(6) ; Return from main
81 : LD 1, 1(5) ; Load parameter 'm' into R1
82 : ST 1, 4(5) ; Spill left operand at depth 0
83 : LD 1, 1(5) ; Load parameter 'm' into R1
84 : ST 1, 5(5) ; Spill left operand at depth 1
85 : LD 1, 2(5) ; Load parameter 'n' into R1
86 : LD 2, 5(5) ; Restore left operand from depth 1
87 : DIV 1, 2, 1 ; R1 = left / right
88 : ST 1, 5(5) ; Spill left operand at depth 1
89 : LD 1, 2(5) ; Load parameter 'n' into R1
90 : LD 2, 5(5) ; Restore left operand from depth 1
91 : MUL 1, 2, 1 ; R1 = left * right
92 : LD 2, 4(5) ; Restore left operand from depth 0
93 : SUB 1, 2, 1 ; R1 = left - right
94 : ST 1, 3(5) ; Store function result into frame return slot
95 : LD 6, 0(5) ; Load return address
96 : LDA 7, 0(6) ; Return to caller
97 : LD 1, 3(5) ; Load parameter 'unit' into R1
98 : LDA 4, 6(5) ; Compute callee base from caller size
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return address into callee frame
101 : ADD 5, 4, 0 ; Push new frame (R5 := callee base)
102 : LDA 7, 11(0) ; Call built-in print
103 : LDC 2, 6(0) ; Caller frame size
104 : SUB 5, 5, 2 ; Pop back to caller
105 : LDA 4, 6(5) ; Compute callee base from caller size
106 : LD 1, 3(5) ; Load parameter 'unit' into R1
107 : ST 1, 5(5) ; Spill left operand at depth 0
108 : LD 1, 1(5) ; Load parameter 'm' into R1
109 : LD 2, 5(5) ; Restore left operand from depth 0
110 : MUL 1, 2, 1 ; R1 = left * right
111 : ST 1, 5(5) ; Spill left operand at depth 0
112 : LD 1, 2(5) ; Load parameter 'n' into R1
113 : LD 2, 5(5) ; Restore left operand from depth 0
114 : SUB 1, 2, 1 ; R1 = left - right
115 : ST 1, 1(4) ; Store argument 0 in callee frame
116 : LD 1, 2(5) ; Load parameter 'n' into R1
117 : ST 1, 5(5) ; Spill left operand at depth 0
118 : LD 1, 3(5) ; Load parameter 'unit' into R1
119 : LD 2, 5(5) ; Restore left operand from depth 0
120 : MUL 1, 2, 1 ; R1 = left * right
121 : ST 1, 2(4) ; Store argument 1 in callee frame
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return address into callee frame
124 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
125 : LDA 7, 14(0) ; Call main
126 : LD 1, 3(5) ; Load callee result into R1
127 : LDC 2, 6(0) ; Caller frame size
128 : SUB 5, 5, 2 ; Pop back to caller
129 : ST 1, 4(5) ; Store function result into frame return slot
130 : LD 6, 0(5) ; Load return address
131 : LDA 7, 0(6) ; Return to caller
