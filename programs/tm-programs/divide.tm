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
28 : LDA 7, 47(0) ; Skip ELSE block
29 : LD 1, 1(5) ; Load parameter 'a' into R1
30 : LDA 4, 7(5) ; Recompute callee base from callee size
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LD 1, 2(5) ; Load parameter 'b' into R1
33 : LDA 4, 7(5) ; Recompute callee base from callee size
34 : ST 1, 2(4) ; Store argument 1 in callee
35 : LD 1, 3(5) ; Load parameter 'n' into R1
36 : LDA 4, 7(5) ; Recompute callee base from callee size
37 : ST 1, 3(4) ; Store argument 2 in callee
38 : LDA 4, 6(5) ; Recompute callee base from callee size
39 : LDA 6, 43(0) ; Return address
40 : ST 6, 0(4) ; Store return in callee frame
41 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
42 : LDA 7, 66(0) ; Call printAndDivide
43 : LD 1, 4(5) ; Load callee result into R1
44 : LDC 2, 6(0) ; Callee frame size
45 : SUB 5, 5, 2 ; Pop callee frame
46 : ST 1, 4(5) ; Store result into caller’s frame
47 : LD 1, 4(5) ; Load main return value into R1
48 : LD 6, 0(5) ; Load main return address
49 : LDA 7, 0(6) ; Return from main
50 : LD 1, 1(5) ; Load parameter 'm' into R1
51 : ST 1, 4(5) ; Spill left operand at depth 0
52 : LD 1, 1(5) ; Load parameter 'm' into R1
53 : ST 1, 5(5) ; Spill left operand at depth 1
54 : LD 1, 2(5) ; Load parameter 'n' into R1
55 : LD 2, 5(5) ; Restore left operand from depth 1
56 : DIV 1, 2, 1 ; R1 = left / right
57 : ST 1, 5(5) ; Spill left operand at depth 1
58 : LD 1, 2(5) ; Load parameter 'n' into R1
59 : LD 2, 5(5) ; Restore left operand from depth 1
60 : MUL 1, 2, 1 ; R1 = left * right
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; R1 = left - right
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
66 : LDC 1, 10(0) ; Load integer-literal into R1
67 : ST 1, 5(5) ; Spill left operand at depth 0
68 : LD 1, 1(5) ; Load parameter 'a' into R1
69 : LD 2, 5(5) ; Restore left operand from depth 0
70 : MUL 1, 2, 1 ; R1 = left * right
71 : ST 1, 5(5) ; Spill left operand at depth 0
72 : LD 1, 2(5) ; Load parameter 'b' into R1
73 : LD 2, 5(5) ; Restore left operand from depth 0
74 : DIV 1, 2, 1 ; R1 = left / right
75 : LDA 4, 7(5) ; Recompute callee base from caller size
76 : LDA 6, 80(0) ; Return address
77 : ST 6, 0(4) ; Store return address in callee frame
78 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
79 : LDA 7, 13(0) ; Call built-in print
80 : LDC 2, 6(0) ; Caller frame size
81 : SUB 5, 5, 2 ; Pop back to caller
82 : LD 1, 1(5) ; Load parameter 'a' into R1
83 : ST 1, 5(5) ; Spill left operand at depth 0
84 : LDC 1, 10(0) ; Load integer-literal into R1
85 : LD 2, 5(5) ; Restore left operand from depth 0
86 : MUL 1, 2, 1 ; R1 = left * right
87 : LDA 4, 7(5) ; Recompute callee base from callee size
88 : ST 1, 1(4) ; Store argument 0 in callee
89 : LD 1, 2(5) ; Load parameter 'b' into R1
90 : LDA 4, 7(5) ; Recompute callee base from callee size
91 : ST 1, 2(4) ; Store argument 1 in callee
92 : LDA 4, 6(5) ; Recompute callee base from callee size
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 50(0) ; Call MOD
97 : LD 1, 3(5) ; Load callee result into R1
98 : LDC 2, 6(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : LDA 4, 7(5) ; Recompute callee base from callee size
101 : ST 1, 1(4) ; Store argument 0 in callee
102 : LD 1, 2(5) ; Load parameter 'b' into R1
103 : LDA 4, 7(5) ; Recompute callee base from callee size
104 : ST 1, 2(4) ; Store argument 1 in callee
105 : LD 1, 3(5) ; Load parameter 'n' into R1
106 : ST 1, 5(5) ; Spill left operand at depth 0
107 : LDC 1, 1(0) ; Load integer-literal into R1
108 : LD 2, 5(5) ; Restore left operand from depth 0
109 : SUB 1, 2, 1 ; R1 = left - right
110 : LDA 4, 7(5) ; Recompute callee base from callee size
111 : ST 1, 3(4) ; Store argument 2 in callee
112 : LDA 4, 6(5) ; Recompute callee base from callee size
113 : LDA 6, 117(0) ; Return address
114 : ST 6, 0(4) ; Store return in callee frame
115 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
116 : LDA 7, 16(0) ; Call main
117 : LD 1, 4(5) ; Load callee result into R1
118 : LDC 2, 6(0) ; Callee frame size
119 : SUB 5, 5, 2 ; Pop callee frame
120 : ST 1, 4(5) ; Store function result into frame return slot
121 : LD 6, 0(5) ; Load return address
122 : LDA 7, 0(6) ; Return to caller
