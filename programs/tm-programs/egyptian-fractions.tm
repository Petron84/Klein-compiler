0 : LDC 5, 3(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 5(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LDA 6, 2(7) ; Calculate return address (PC + 2)
8 : ST 6, 0(5) ; Store return address in main frame
9 : LDA 7, 15(0) ; Branch to main function
10 : OUT 1, 0, 0 ; Return/print result from main in R1
11 : HALT 0, 0, 0 ; Terminate program
12 : OUT 1, 0, 0 ; Hardcoded print: output R1
13 : LD 6, 0(5) ; Load return address from current frame
14 : LDA 7, 0(6) ; Jump back to caller
15 : LD 1, 1(5) ; Load parameter 'm' into R1
16 : ST 1, 4(5) ; Spill left operand at depth 0
17 : LDC 1, 1(0) ; Load integer-literal into R1
18 : LD 2, 4(5) ; Restore left operand from depth 0
19 : SUB 1, 2, 1 ; left - right for equality check
20 : JEQ 1, 2(7) ; If R1 == 0, jump to true
21 : LDC 1, 0(0) ; false
22 : LDA 7, 1(7) ; skip setting true
23 : LDC 1, 1(0) ; true
24 : JEQ 1, 28(0) ; If condition is false, jump to ELSE
25 : LD 1, 2(5) ; Load parameter 'n' into R1
26 : ST 1, 3(5) ; Store result into current frame's return slot
27 : LDA 7, 92(0) ; Skip ELSE block
28 : LD 1, 2(5) ; Load parameter 'n' into R1
29 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
30 : ST 1, 1(2) ; Store argument 0 in callee
31 : LD 1, 1(5) ; Load parameter 'm' into R1
32 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
33 : ST 1, 2(2) ; Store argument 1 in callee
34 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
35 : LDA 6, 41(0) ; Return address
36 : ST 6, 0(2) ; Store return in callee frame
37 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
38 : LDC 3, 6(0) ; Callee frame size
39 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
40 : LDA 7, 95(0) ; Call MOD
41 : LD 1, 3(5) ; Load callee result into R1
42 : LDC 2, 6(0) ; Callee frame size
43 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
44 : LDC 3, 5(0) ; Caller frame size
45 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
46 : ST 1, 4(5) ; Spill left operand at depth 0
47 : LDC 1, 0(0) ; Load integer-literal into R1
48 : LD 2, 4(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; left - right for equality check
50 : JEQ 1, 2(7) ; If R1 == 0, jump to true
51 : LDC 1, 0(0) ; false
52 : LDA 7, 1(7) ; skip setting true
53 : LDC 1, 1(0) ; true
54 : JEQ 1, 62(0) ; If condition is false, jump to ELSE
55 : LD 1, 2(5) ; Load parameter 'n' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 1(5) ; Load parameter 'm' into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : DIV 1, 2, 1 ; R1 = left / right
60 : ST 1, 3(5) ; Store result into current frame's return slot
61 : LDA 7, 92(0) ; Skip ELSE block
62 : LD 1, 1(5) ; Load parameter 'm' into R1
63 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
64 : ST 1, 1(2) ; Store argument 0 in callee
65 : LD 1, 2(5) ; Load parameter 'n' into R1
66 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
67 : ST 1, 2(2) ; Store argument 1 in callee
68 : LD 1, 2(5) ; Load parameter 'n' into R1
69 : ST 1, 4(5) ; Spill left operand at depth 0
70 : LD 1, 1(5) ; Load parameter 'm' into R1
71 : LD 2, 4(5) ; Restore left operand from depth 0
72 : DIV 1, 2, 1 ; R1 = left / right
73 : ST 1, 4(5) ; Spill left operand at depth 0
74 : LDC 1, 1(0) ; Load integer-literal into R1
75 : LD 2, 4(5) ; Restore left operand from depth 0
76 : ADD 1, 2, 1 ; R1 = left + right
77 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
78 : ST 1, 3(2) ; Store argument 2 in callee
79 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
80 : LDA 6, 86(0) ; Return address
81 : ST 6, 0(2) ; Store return in callee frame
82 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
83 : LDC 3, 6(0) ; Callee frame size
84 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
85 : LDA 7, 111(0) ; Call print_and_continue
86 : LD 1, 4(5) ; Load callee result into R1
87 : LDC 2, 6(0) ; Callee frame size
88 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
89 : LDC 3, 5(0) ; Caller frame size
90 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
91 : ST 1, 3(5) ; Store result into caller’s frame
92 : LD 1, 3(5) ; Load main return value into R1
93 : LD 6, 0(5) ; Load main return address
94 : LDA 7, 0(6) ; Return from main
95 : LD 1, 1(5) ; Load parameter 'm' into R1
96 : ST 1, 4(5) ; Spill left operand at depth 0
97 : LD 1, 1(5) ; Load parameter 'm' into R1
98 : ST 1, 5(5) ; Spill left operand at depth 1
99 : LD 1, 2(5) ; Load parameter 'n' into R1
100 : LD 2, 5(5) ; Restore left operand from depth 1
101 : DIV 1, 2, 1 ; R1 = left / right
102 : ST 1, 5(5) ; Spill left operand at depth 1
103 : LD 1, 2(5) ; Load parameter 'n' into R1
104 : LD 2, 5(5) ; Restore left operand from depth 1
105 : MUL 1, 2, 1 ; R1 = left * right
106 : LD 2, 4(5) ; Restore left operand from depth 0
107 : SUB 1, 2, 1 ; R1 = left - right
108 : ST 1, 3(5) ; Store function result into frame return slot
109 : LD 6, 0(5) ; Load return address
110 : LDA 7, 0(6) ; Return to caller
111 : LD 1, 3(5) ; Load parameter 'unit' into R1
112 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
113 : LDA 6, 119(0) ; Return address
114 : ST 6, 0(2) ; Store return address in callee frame
115 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
116 : LDC 3, 3(0) ; Callee frame size
117 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
118 : LDA 7, 12(0) ; Call built-in print
119 : LDC 2, 3(0) ; Callee frame size
120 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
121 : LDC 3, 6(0) ; Caller frame size
122 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
123 : LD 1, 3(5) ; Load parameter 'unit' into R1
124 : ST 1, 5(5) ; Spill left operand at depth 0
125 : LD 1, 1(5) ; Load parameter 'm' into R1
126 : LD 2, 5(5) ; Restore left operand from depth 0
127 : MUL 1, 2, 1 ; R1 = left * right
128 : ST 1, 5(5) ; Spill left operand at depth 0
129 : LD 1, 2(5) ; Load parameter 'n' into R1
130 : LD 2, 5(5) ; Restore left operand from depth 0
131 : SUB 1, 2, 1 ; R1 = left - right
132 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
133 : ST 1, 1(2) ; Store argument 0 in callee
134 : LD 1, 2(5) ; Load parameter 'n' into R1
135 : ST 1, 5(5) ; Spill left operand at depth 0
136 : LD 1, 3(5) ; Load parameter 'unit' into R1
137 : LD 2, 5(5) ; Restore left operand from depth 0
138 : MUL 1, 2, 1 ; R1 = left * right
139 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
140 : ST 1, 2(2) ; Store argument 1 in callee
141 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
142 : LDA 6, 148(0) ; Return address
143 : ST 6, 0(2) ; Store return in callee frame
144 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
145 : LDC 3, 5(0) ; Callee frame size
146 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
147 : LDA 7, 15(0) ; Call main
148 : LD 1, 3(5) ; Load callee result into R1
149 : LDC 2, 5(0) ; Callee frame size
150 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
151 : LDC 3, 6(0) ; Caller frame size
152 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
153 : ST 1, 4(5) ; Store function result into frame return slot
154 : LD 6, 0(5) ; Load return address
155 : LDA 7, 0(6) ; Return to caller
