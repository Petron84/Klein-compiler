0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
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
28 : LDA 7, 53(0) ; Skip ELSE block
29 : LD 1, 1(5) ; Load parameter 'a' into R1
30 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
31 : LDA 4, 6(5) ; Callee base for arg copy
32 : LD 1, 5(5) ; Load staged arg 0 from caller temp
33 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
34 : LD 1, 2(5) ; Load parameter 'b' into R1
35 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
36 : LDA 4, 6(5) ; Callee base for arg copy
37 : LD 1, 5(5) ; Load staged arg 1 from caller temp
38 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
39 : LD 1, 3(5) ; Load parameter 'n' into R1
40 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
41 : LDA 4, 6(5) ; Callee base for arg copy
42 : LD 1, 5(5) ; Load staged arg 2 from caller temp
43 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
44 : LDA 4, 6(5) ; Callee base for call
45 : LDA 6, 49(0) ; Return address
46 : ST 6, 0(4) ; Store return in callee frame
47 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
48 : LDA 7, 72(0) ; Call printAndDivide
49 : LD 1, 4(5) ; Load callee result into R1
50 : LDC 2, 6(0) ; Callee frame size
51 : SUB 5, 5, 2 ; Pop callee frame
52 : ST 1, 4(5) ; Store result into caller’s frame
53 : LD 1, 4(5) ; Load main return value into R1
54 : LD 6, 0(5) ; Load main return address
55 : LDA 7, 0(6) ; Return from main
56 : LD 1, 1(5) ; Load parameter 'm' into R1
57 : ST 1, 4(5) ; Spill left operand at depth 0
58 : LD 1, 1(5) ; Load parameter 'm' into R1
59 : ST 1, 5(5) ; Spill left operand at depth 1
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : LD 2, 5(5) ; Restore left operand from depth 1
62 : DIV 1, 2, 1 ; R1 = left / right
63 : ST 1, 5(5) ; Spill left operand at depth 1
64 : LD 1, 2(5) ; Load parameter 'n' into R1
65 : LD 2, 5(5) ; Restore left operand from depth 1
66 : MUL 1, 2, 1 ; R1 = left * right
67 : LD 2, 4(5) ; Restore left operand from depth 0
68 : SUB 1, 2, 1 ; R1 = left - right
69 : ST 1, 3(5) ; Store function result into frame return slot
70 : LD 6, 0(5) ; Load return address
71 : LDA 7, 0(6) ; Return to caller
72 : LDC 1, 10(0) ; Load integer-literal into R1
73 : ST 1, 5(5) ; Spill left operand at depth 0
74 : LD 1, 1(5) ; Load parameter 'a' into R1
75 : LD 2, 5(5) ; Restore left operand from depth 0
76 : MUL 1, 2, 1 ; R1 = left * right
77 : ST 1, 5(5) ; Spill left operand at depth 0
78 : LD 1, 2(5) ; Load parameter 'b' into R1
79 : LD 2, 5(5) ; Restore left operand from depth 0
80 : DIV 1, 2, 1 ; R1 = left / right
81 : LDA 4, 3(5) ; Callee base for built-in print
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return address in callee frame
84 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
85 : LDA 7, 13(0) ; Call built-in print
86 : LDC 2, 3(0) ; Callee frame size (print)
87 : SUB 5, 5, 2 ; Pop back to caller
88 : LD 1, 1(5) ; Load parameter 'a' into R1
89 : ST 1, 5(5) ; Spill left operand at depth 0
90 : LDC 1, 10(0) ; Load integer-literal into R1
91 : LD 2, 5(5) ; Restore left operand from depth 0
92 : MUL 1, 2, 1 ; R1 = left * right
93 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
94 : LDA 4, 6(5) ; Callee base for arg copy
95 : LD 1, 5(5) ; Load staged arg 0 from caller temp
96 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
97 : LD 1, 2(5) ; Load parameter 'b' into R1
98 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
99 : LDA 4, 6(5) ; Callee base for arg copy
100 : LD 1, 5(5) ; Load staged arg 1 from caller temp
101 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
102 : LDA 4, 6(5) ; Callee base for call
103 : LDA 6, 107(0) ; Return address
104 : ST 6, 0(4) ; Store return in callee frame
105 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
106 : LDA 7, 56(0) ; Call MOD
107 : LD 1, 3(5) ; Load callee result into R1
108 : LDC 2, 6(0) ; Callee frame size
109 : SUB 5, 5, 2 ; Pop callee frame
110 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2)
111 : LDA 4, 6(5) ; Callee base for arg copy
112 : LD 1, 5(5) ; Load staged arg 0 from caller temp
113 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
114 : LD 1, 2(5) ; Load parameter 'b' into R1
115 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2)
116 : LDA 4, 6(5) ; Callee base for arg copy
117 : LD 1, 5(5) ; Load staged arg 1 from caller temp
118 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
119 : LD 1, 3(5) ; Load parameter 'n' into R1
120 : ST 1, 5(5) ; Spill left operand at depth 0
121 : LDC 1, 1(0) ; Load integer-literal into R1
122 : LD 2, 5(5) ; Restore left operand from depth 0
123 : SUB 1, 2, 1 ; R1 = left - right
124 : ST 1, 5(5) ; Stage arg 2 in caller temp (P+2)
125 : LDA 4, 6(5) ; Callee base for arg copy
126 : LD 1, 5(5) ; Load staged arg 2 from caller temp
127 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
128 : LDA 4, 6(5) ; Callee base for call
129 : LDA 6, 133(0) ; Return address
130 : ST 6, 0(4) ; Store return in callee frame
131 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
132 : LDA 7, 16(0) ; Call main
133 : LD 1, 4(5) ; Load callee result into R1
134 : LDC 2, 6(0) ; Callee frame size
135 : SUB 5, 5, 2 ; Pop callee frame
136 : ST 1, 4(5) ; Store function result into frame return slot
137 : LD 6, 0(5) ; Load return address
138 : LDA 7, 0(6) ; Return to caller
