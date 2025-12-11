0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 6(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LD 2, 2(0) ; Load CLI arg 2 into R2
6 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
7 : LD 2, 3(0) ; Load CLI arg 3 into R2
8 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
9 : LDA 6, 2(7) ; Calculate return address (PC + 2)
10 : ST 6, 0(5) ; Store return address in main frame
11 : LDA 7, 17(0) ; Branch to main function
12 : OUT 1, 0, 0 ; Return/print result from main in R1
13 : HALT 0, 0, 0 ; Terminate program
14 : OUT 1, 0, 0 ; Hardcoded print: output R1
15 : LD 6, 0(5) ; Load return address from current frame
16 : LDA 7, 0(6) ; Jump back to caller
17 : LD 1, 3(5) ; Load parameter 'n' into R1
18 : ST 1, 5(5) ; Spill left operand at depth 0
19 : LDC 1, 0(0) ; Load integer-literal into R1
20 : LD 2, 5(5) ; Restore left operand from depth 0
21 : SUB 1, 2, 1 ; left - right for equality check
22 : JEQ 1, 2(7) ; If R1 == 0, jump to true
23 : LDC 1, 0(0) ; false
24 : LDA 7, 1(7) ; skip setting true
25 : LDC 1, 1(0) ; true
26 : JEQ 1, 30(0) ; If condition is false, jump to ELSE
27 : LD 1, 1(5) ; Load parameter 'a' into R1
28 : ST 1, 4(5) ; Store result into current frame's return slot
29 : LDA 7, 52(0) ; Skip ELSE block
30 : LD 1, 1(5) ; Load parameter 'a' into R1
31 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
32 : ST 1, 1(2) ; Store argument 0 in callee
33 : LD 1, 2(5) ; Load parameter 'b' into R1
34 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
35 : ST 1, 2(2) ; Store argument 1 in callee
36 : LD 1, 3(5) ; Load parameter 'n' into R1
37 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
38 : ST 1, 3(2) ; Store argument 2 in callee
39 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
40 : LDA 6, 46(0) ; Return address
41 : ST 6, 0(2) ; Store return in callee frame
42 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
43 : LDC 3, 6(0) ; Callee frame size
44 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
45 : LDA 7, 71(0) ; Call printAndDivide
46 : LD 1, 4(5) ; Load callee result into R1
47 : LDC 2, 6(0) ; Callee frame size
48 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
49 : LDC 3, 6(0) ; Caller frame size
50 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
51 : ST 1, 4(5) ; Store result into caller’s frame
52 : LD 1, 4(5) ; Load main return value into R1
53 : LD 6, 0(5) ; Load main return address
54 : LDA 7, 0(6) ; Return from main
55 : LD 1, 1(5) ; Load parameter 'm' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LD 1, 1(5) ; Load parameter 'm' into R1
58 : ST 1, 5(5) ; Spill left operand at depth 1
59 : LD 1, 2(5) ; Load parameter 'n' into R1
60 : LD 2, 5(5) ; Restore left operand from depth 1
61 : DIV 1, 2, 1 ; R1 = left / right
62 : ST 1, 5(5) ; Spill left operand at depth 1
63 : LD 1, 2(5) ; Load parameter 'n' into R1
64 : LD 2, 5(5) ; Restore left operand from depth 1
65 : MUL 1, 2, 1 ; R1 = left * right
66 : LD 2, 4(5) ; Restore left operand from depth 0
67 : SUB 1, 2, 1 ; R1 = left - right
68 : ST 1, 3(5) ; Store function result into frame return slot
69 : LD 6, 0(5) ; Load return address
70 : LDA 7, 0(6) ; Return to caller
71 : LDC 1, 10(0) ; Load integer-literal into R1
72 : ST 1, 5(5) ; Spill left operand at depth 0
73 : LD 1, 1(5) ; Load parameter 'a' into R1
74 : LD 2, 5(5) ; Restore left operand from depth 0
75 : MUL 1, 2, 1 ; R1 = left * right
76 : ST 1, 5(5) ; Spill left operand at depth 0
77 : LD 1, 2(5) ; Load parameter 'b' into R1
78 : LD 2, 5(5) ; Restore left operand from depth 0
79 : DIV 1, 2, 1 ; R1 = left / right
80 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
81 : LDA 6, 87(0) ; Return address
82 : ST 6, 0(2) ; Store return address in callee frame
83 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
84 : LDC 3, 3(0) ; Callee frame size
85 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
86 : LDA 7, 14(0) ; Call built-in print
87 : LDC 2, 3(0) ; Callee frame size
88 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
89 : LDC 3, 6(0) ; Caller frame size
90 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
91 : LD 1, 1(5) ; Load parameter 'a' into R1
92 : ST 1, 5(5) ; Spill left operand at depth 0
93 : LDC 1, 10(0) ; Load integer-literal into R1
94 : LD 2, 5(5) ; Restore left operand from depth 0
95 : MUL 1, 2, 1 ; R1 = left * right
96 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
97 : ST 1, 1(2) ; Store argument 0 in callee
98 : LD 1, 2(5) ; Load parameter 'b' into R1
99 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
100 : ST 1, 2(2) ; Store argument 1 in callee
101 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
102 : LDA 6, 108(0) ; Return address
103 : ST 6, 0(2) ; Store return in callee frame
104 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
105 : LDC 3, 6(0) ; Callee frame size
106 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
107 : LDA 7, 55(0) ; Call MOD
108 : LD 1, 3(5) ; Load callee result into R1
109 : LDC 2, 6(0) ; Callee frame size
110 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
111 : LDC 3, 6(0) ; Caller frame size
112 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
113 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
114 : ST 1, 1(2) ; Store argument 0 in callee
115 : LD 1, 2(5) ; Load parameter 'b' into R1
116 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
117 : ST 1, 2(2) ; Store argument 1 in callee
118 : LD 1, 3(5) ; Load parameter 'n' into R1
119 : ST 1, 5(5) ; Spill left operand at depth 0
120 : LDC 1, 1(0) ; Load integer-literal into R1
121 : LD 2, 5(5) ; Restore left operand from depth 0
122 : SUB 1, 2, 1 ; R1 = left - right
123 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
124 : ST 1, 3(2) ; Store argument 2 in callee
125 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
126 : LDA 6, 132(0) ; Return address
127 : ST 6, 0(2) ; Store return in callee frame
128 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
129 : LDC 3, 6(0) ; Callee frame size
130 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
131 : LDA 7, 17(0) ; Call main
132 : LD 1, 4(5) ; Load callee result into R1
133 : LDC 2, 6(0) ; Callee frame size
134 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
135 : LDC 3, 6(0) ; Caller frame size
136 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
137 : ST 1, 4(5) ; Store function result into frame return slot
138 : LD 6, 0(5) ; Load return address
139 : LDA 7, 0(6) ; Return to caller
