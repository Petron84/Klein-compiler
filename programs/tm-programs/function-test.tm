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
14 : LDC 1, 0(0) ; Load integer-literal into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LD 1, 2(5) ; Load parameter 'b' into R1
17 : LDA 4, 5(5) ; Recompute callee base from callee size
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LD 1, 1(5) ; Load parameter 'a' into R1
20 : LDA 4, 5(5) ; Recompute callee base from callee size
21 : ST 1, 2(4) ; Store argument 1 in callee
22 : LDA 4, 5(5) ; Recompute callee base from callee size
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
26 : LDA 7, 95(0) ; Call sub
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 5(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : LD 2, 4(5) ; Restore left operand from depth 0
31 : SUB 1, 2, 1 ; left - right for less-than check
32 : JLT 1, 2(7) ; If R1 < 0, jump to true
33 : LDC 1, 0(0) ; false
34 : LDA 7, 1(7) ; skip setting true
35 : LDC 1, 1(0) ; true
36 : JEQ 1, 65(0) ; If condition is false, jump to ELSE
37 : LD 1, 1(5) ; Load parameter 'a' into R1
38 : ST 1, 4(5) ; Spill left operand at depth 0
39 : LD 1, 2(5) ; Load parameter 'b' into R1
40 : LD 2, 4(5) ; Restore left operand from depth 0
41 : ADD 1, 2, 1 ; R1 = left + right
42 : ST 1, 4(5) ; Spill left operand at depth 0
43 : LD 1, 2(5) ; Load parameter 'b' into R1
44 : LDA 4, 5(5) ; Recompute callee base from callee size
45 : ST 1, 1(4) ; Store argument 0 in callee
46 : LD 1, 1(5) ; Load parameter 'a' into R1
47 : ST 1, 5(5) ; Spill left operand at depth 1
48 : LD 1, 2(5) ; Load parameter 'b' into R1
49 : LD 2, 5(5) ; Restore left operand from depth 1
50 : SUB 1, 2, 1 ; R1 = left - right
51 : LDA 4, 5(5) ; Recompute callee base from callee size
52 : ST 1, 2(4) ; Store argument 1 in callee
53 : LDA 4, 5(5) ; Recompute callee base from callee size
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return in callee frame
56 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
57 : LDA 7, 95(0) ; Call sub
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 5(0) ; Callee frame size
60 : SUB 5, 5, 2 ; Pop callee frame
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; R1 = left - right
63 : ST 1, 3(5) ; Store result into current frame's return slot
64 : LDA 7, 92(0) ; Skip ELSE block
65 : LD 1, 2(5) ; Load parameter 'b' into R1
66 : ST 1, 4(5) ; Spill left operand at depth 0
67 : LD 1, 1(5) ; Load parameter 'a' into R1
68 : LD 2, 4(5) ; Restore left operand from depth 0
69 : SUB 1, 2, 1 ; R1 = left - right
70 : ST 1, 4(5) ; Spill left operand at depth 0
71 : LD 1, 2(5) ; Load parameter 'b' into R1
72 : LDA 4, 5(5) ; Recompute callee base from callee size
73 : ST 1, 1(4) ; Store argument 0 in callee
74 : LD 1, 1(5) ; Load parameter 'a' into R1
75 : ST 1, 5(5) ; Spill left operand at depth 1
76 : LD 1, 2(5) ; Load parameter 'b' into R1
77 : LD 2, 5(5) ; Restore left operand from depth 1
78 : SUB 1, 2, 1 ; R1 = left - right
79 : LDA 4, 5(5) ; Recompute callee base from callee size
80 : ST 1, 2(4) ; Store argument 1 in callee
81 : LDA 4, 5(5) ; Recompute callee base from callee size
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return in callee frame
84 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
85 : LDA 7, 95(0) ; Call sub
86 : LD 1, 3(5) ; Load callee result into R1
87 : LDC 2, 5(0) ; Callee frame size
88 : SUB 5, 5, 2 ; Pop callee frame
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : ADD 1, 2, 1 ; R1 = left + right
91 : ST 1, 3(5) ; Store result into current frame's return slot
92 : LD 1, 3(5) ; Load main return value into R1
93 : LD 6, 0(5) ; Load main return address
94 : LDA 7, 0(6) ; Return from main
95 : LD 1, 1(5) ; Load parameter 'm' into R1
96 : ST 1, 4(5) ; Spill left operand at depth 0
97 : LD 1, 2(5) ; Load parameter 'n' into R1
98 : LD 2, 4(5) ; Restore left operand from depth 0
99 : SUB 1, 2, 1 ; R1 = left - right
100 : ST 1, 3(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
