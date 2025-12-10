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
14 : LD 1, 1(5) ; Load parameter 'x' into R1
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LDA 4, 4(5) ; Recompute callee base from callee size
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
21 : LDA 7, 56(0) ; Call mul2
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 4(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : ST 1, 4(5) ; Spill left operand at depth 0
26 : LD 1, 2(5) ; Load parameter 'y' into R1
27 : LDA 4, 5(5) ; Recompute callee base from callee size
28 : ST 1, 1(4) ; Store argument 0 in callee
29 : LD 1, 2(5) ; Load parameter 'y' into R1
30 : LDA 4, 4(5) ; Recompute callee base from callee size
31 : ST 1, 1(4) ; Store argument 0 in callee
32 : LDA 4, 4(5) ; Recompute callee base from callee size
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return in callee frame
35 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
36 : LDA 7, 56(0) ; Call mul2
37 : LD 1, 2(5) ; Load callee result into R1
38 : LDC 2, 4(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop callee frame
40 : LDA 4, 5(5) ; Recompute callee base from callee size
41 : ST 1, 2(4) ; Store argument 1 in callee
42 : LDA 4, 5(5) ; Recompute callee base from callee size
43 : LDA 6, 47(0) ; Return address
44 : ST 6, 0(4) ; Store return in callee frame
45 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
46 : LDA 7, 91(0) ; Call add
47 : LD 1, 3(5) ; Load callee result into R1
48 : LDC 2, 5(0) ; Callee frame size
49 : SUB 5, 5, 2 ; Pop callee frame
50 : LD 2, 4(5) ; Restore left operand from depth 0
51 : ADD 1, 2, 1 ; R1 = left + right
52 : ST 1, 3(5) ; Store result into current frame's return slot
53 : LD 1, 3(5) ; Load main return value into R1
54 : LD 6, 0(5) ; Load main return address
55 : LDA 7, 0(6) ; Return from main
56 : LD 1, 1(5) ; Load parameter 'k' into R1
57 : ST 1, 3(5) ; Spill left operand at depth 0
58 : LDC 1, 2(0) ; Load integer-literal into R1
59 : LD 2, 3(5) ; Restore left operand from depth 0
60 : MUL 1, 2, 1 ; R1 = left * right
61 : ST 1, 2(5) ; Store function result into frame return slot
62 : LD 6, 0(5) ; Load return address
63 : LDA 7, 0(6) ; Return to caller
64 : LD 1, 1(5) ; Load parameter 'n' into R1
65 : LDA 4, 5(5) ; Recompute callee base from callee size
66 : ST 1, 1(4) ; Store argument 0 in callee
67 : LD 1, 1(5) ; Load parameter 'n' into R1
68 : LDA 4, 4(5) ; Recompute callee base from callee size
69 : ST 1, 1(4) ; Store argument 0 in callee
70 : LDA 4, 4(5) ; Recompute callee base from callee size
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
74 : LDA 7, 56(0) ; Call mul2
75 : LD 1, 2(5) ; Load callee result into R1
76 : LDC 2, 4(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop callee frame
78 : LDA 4, 5(5) ; Recompute callee base from callee size
79 : ST 1, 2(4) ; Store argument 1 in callee
80 : LDA 4, 5(5) ; Recompute callee base from callee size
81 : LDA 6, 85(0) ; Return address
82 : ST 6, 0(4) ; Store return in callee frame
83 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
84 : LDA 7, 91(0) ; Call add
85 : LD 1, 3(5) ; Load callee result into R1
86 : LDC 2, 5(0) ; Callee frame size
87 : SUB 5, 5, 2 ; Pop callee frame
88 : ST 1, 2(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
91 : LD 1, 1(5) ; Load parameter 'a' into R1
92 : ST 1, 4(5) ; Spill left operand at depth 0
93 : LD 1, 2(5) ; Load parameter 'b' into R1
94 : LD 2, 4(5) ; Restore left operand from depth 0
95 : ADD 1, 2, 1 ; R1 = left + right
96 : ST 1, 3(5) ; Store function result into frame return slot
97 : LD 6, 0(5) ; Load return address
98 : LDA 7, 0(6) ; Return to caller
