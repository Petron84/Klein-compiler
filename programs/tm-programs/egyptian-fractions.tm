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
26 : LDA 7, !temp_1(0) ; Skip ELSE block
27 : LD 1, 2(5) ; Load parameter 'n' into R1
28 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
29 : LD 1, 1(5) ; Load parameter 'm' into R1
30 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
31 : LDA 4, 6(5) ; Callee base for arg copy
32 : LD 1, 4(5) ; Load staged arg 0 from caller temp
33 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
34 : LD 1, 5(5) ; Load staged arg 1 from caller temp
35 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
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
58 : LDA 7, !temp_4(0) ; Skip ELSE block
59 : LD 1, 1(5) ; Load parameter 'm' into R1
60 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : ST 1, 4(5) ; Spill left operand at depth 0
65 : LD 1, 1(5) ; Load parameter 'm' into R1
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : DIV 1, 2, 1 ; R1 = left / right
68 : ST 1, 4(5) ; Spill left operand at depth 0
69 : LDC 1, 1(0) ; Load integer-literal into R1
70 : LD 2, 4(5) ; Restore left operand from depth 0
71 : ADD 1, 2, 1 ; R1 = left + right
72 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2+i)
73 : LDA 4, 7(5) ; Callee base for arg copy
74 : LD 1, 4(5) ; Load staged arg 0 from caller temp
75 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
76 : LD 1, 5(5) ; Load staged arg 1 from caller temp
77 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
78 : LD 1, 6(5) ; Load staged arg 2 from caller temp
79 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 107(0) ; Call print_and_continue
84 : LD 1, 4(5) ; Load callee result into R1
85 : LDC 2, 7(0) ; Callee frame size
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
107 : LD 1, 3(5) ; Load parameter 'unit' into R1
108 : LDA 4, 3(5) ; Callee base for built-in print
109 : LDA 6, 113(0) ; Return address
110 : ST 6, 0(4) ; Store return address in callee frame
111 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
112 : LDA 7, 11(0) ; Call built-in print
113 : LDC 2, 3(0) ; Callee frame size (print)
114 : SUB 5, 5, 2 ; Pop back to caller
115 : LD 1, 3(5) ; Load parameter 'unit' into R1
116 : ST 1, 5(5) ; Spill left operand at depth 0
117 : LD 1, 1(5) ; Load parameter 'm' into R1
118 : LD 2, 5(5) ; Restore left operand from depth 0
119 : MUL 1, 2, 1 ; R1 = left * right
120 : ST 1, 5(5) ; Spill left operand at depth 0
121 : LD 1, 2(5) ; Load parameter 'n' into R1
122 : LD 2, 5(5) ; Restore left operand from depth 0
123 : SUB 1, 2, 1 ; R1 = left - right
124 : ST 1, 5(5) ; Stage arg 0 in caller temp (P+2+i)
125 : LD 1, 2(5) ; Load parameter 'n' into R1
126 : ST 1, 5(5) ; Spill left operand at depth 0
127 : LD 1, 3(5) ; Load parameter 'unit' into R1
128 : LD 2, 5(5) ; Restore left operand from depth 0
129 : MUL 1, 2, 1 ; R1 = left * right
130 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2+i)
131 : LDA 4, 7(5) ; Callee base for arg copy
132 : LD 1, 5(5) ; Load staged arg 0 from caller temp
133 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
134 : LD 1, 6(5) ; Load staged arg 1 from caller temp
135 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
136 : LDA 6, 140(0) ; Return address
137 : ST 6, 0(4) ; Store return in callee frame
138 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
139 : LDA 7, 14(0) ; Call main
140 : LD 1, 3(5) ; Load callee result into R1
141 : LDC 2, 7(0) ; Callee frame size
142 : SUB 5, 5, 2 ; Pop callee frame
143 : ST 1, 4(5) ; Store function result into frame return slot
144 : LD 6, 0(5) ; Load return address
145 : LDA 7, 0(6) ; Return to caller
