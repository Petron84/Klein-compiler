0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 3(5) ; Load parameter 'n' into R1
17 : ST 1, 5(5) ; Spill left operand at depth 0
18 : LDC 1, 0(0) ; Load integer-literal into R1
19 : LD 2, 5(5) ; Restore left operand from depth 0
20 : SUB 1, 2, 1 ; left - right for equality check
21 : JEQ 1, 2(7) ; If R1 == 0, jump to true
22 : LDC 1, 0(0) ; false
23 : LDA 7, 1(7) ; skip setting true
24 : LDC 1, 1(0) ; true
25 : JEQ 1, 29(0) ; If condition is false, jump to ELSE
26 : LD 1, 1(5) ; Load parameter 'a' into R1
27 : ST 1, 4(5) ; Store result into current frame's return slot
28 : LDA 7, 50(0) ; Skip ELSE block
29 : LD 1, 1(5) ; Load parameter 'a' into R1
30 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
31 : LD 1, 2(5) ; Load parameter 'b' into R1
32 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
33 : LD 1, 3(5) ; Load parameter 'n' into R1
34 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
35 : LDA 4, 9(5) ; Compute future callee base from caller size
36 : LD 2, 6(5) ; Load staged arg 0 from caller frame
37 : ST 2, 1(4) ; Store arg 0 into callee frame
38 : LD 2, 7(5) ; Load staged arg 1 from caller frame
39 : ST 2, 2(4) ; Store arg 1 into callee frame
40 : LD 2, 8(5) ; Load staged arg 2 from caller frame
41 : ST 2, 3(4) ; Store arg 2 into callee frame
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
45 : LDA 7, 69(0) ; Call printAndDivide
46 : LD 1, 4(5) ; Load callee result into R1
47 : LDC 2, 6(0) ; Callee frame size
48 : SUB 5, 5, 2 ; Pop callee frame
49 : ST 1, 4(5) ; Store result into caller’s frame
50 : LD 1, 4(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 0
55 : LD 1, 1(5) ; Load parameter 'm' into R1
56 : ST 1, 5(5) ; Spill left operand at depth 1
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : LD 2, 5(5) ; Restore left operand from depth 1
59 : DIV 1, 2, 1 ; R1 = left / right
60 : ST 1, 5(5) ; Spill left operand at depth 1
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : LD 2, 5(5) ; Restore left operand from depth 1
63 : MUL 1, 2, 1 ; R1 = left * right
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : SUB 1, 2, 1 ; R1 = left - right
66 : ST 1, 3(5) ; Store function result into frame return slot
67 : LD 6, 0(5) ; Load return address
68 : LDA 7, 0(6) ; Return to caller
69 : LDC 1, 10(0) ; Load integer-literal into R1
70 : ST 1, 5(5) ; Spill left operand at depth 0
71 : LD 1, 1(5) ; Load parameter 'a' into R1
72 : LD 2, 5(5) ; Restore left operand from depth 0
73 : MUL 1, 2, 1 ; R1 = left * right
74 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
75 : LD 1, 2(5) ; Load parameter 'b' into R1
76 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
77 : LDA 4, 9(5) ; Compute future callee base from caller size
78 : LD 2, 6(5) ; Load staged arg 0 from caller frame
79 : ST 2, 1(4) ; Store arg 0 into callee frame
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 13(0) ; Call built-in print
84 : LDC 2, 3(0) ; Callee frame size
85 : SUB 5, 5, 2 ; Pop callee frame
86 : LD 1, 1(5) ; Load parameter 'a' into R1
87 : ST 1, 5(5) ; Spill left operand at depth 0
88 : LDC 1, 10(0) ; Load integer-literal into R1
89 : LD 2, 5(5) ; Restore left operand from depth 0
90 : MUL 1, 2, 1 ; R1 = left * right
91 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
92 : LD 1, 2(5) ; Load parameter 'b' into R1
93 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
94 : LDA 4, 9(5) ; Compute future callee base from caller size
95 : LD 2, 6(5) ; Load staged arg 0 from caller frame
96 : ST 2, 1(4) ; Store arg 0 into callee frame
97 : LD 2, 7(5) ; Load staged arg 1 from caller frame
98 : ST 2, 2(4) ; Store arg 1 into callee frame
99 : LDA 6, 103(0) ; Return address
100 : ST 6, 0(4) ; Store return in callee frame
101 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
102 : LDA 7, 53(0) ; Call MOD
103 : LD 1, 3(5) ; Load callee result into R1
104 : LDC 2, 6(0) ; Callee frame size
105 : SUB 5, 5, 2 ; Pop callee frame
106 : ST 1, 6(5) ; Stage arg 0 in caller frame outgoing area
107 : LD 1, 2(5) ; Load parameter 'b' into R1
108 : ST 1, 7(5) ; Stage arg 1 in caller frame outgoing area
109 : LD 1, 3(5) ; Load parameter 'n' into R1
110 : ST 1, 5(5) ; Spill left operand at depth 0
111 : LDC 1, 1(0) ; Load integer-literal into R1
112 : LD 2, 5(5) ; Restore left operand from depth 0
113 : SUB 1, 2, 1 ; R1 = left - right
114 : ST 1, 8(5) ; Stage arg 2 in caller frame outgoing area
115 : LDA 4, 9(5) ; Compute future callee base from caller size
116 : LD 2, 6(5) ; Load staged arg 0 from caller frame
117 : ST 2, 1(4) ; Store arg 0 into callee frame
118 : LD 2, 7(5) ; Load staged arg 1 from caller frame
119 : ST 2, 2(4) ; Store arg 1 into callee frame
120 : LD 2, 8(5) ; Load staged arg 2 from caller frame
121 : ST 2, 3(4) ; Store arg 2 into callee frame
122 : LDA 6, 126(0) ; Return address
123 : ST 6, 0(4) ; Store return in callee frame
124 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
125 : LDA 7, 16(0) ; Call main
126 : LD 1, 4(5) ; Load callee result into R1
127 : LDC 2, 6(0) ; Callee frame size
128 : SUB 5, 5, 2 ; Pop callee frame
129 : ST 1, 4(5) ; Store function result into frame return slot
130 : LD 6, 0(5) ; Load return address
131 : LDA 7, 0(6) ; Return to caller
