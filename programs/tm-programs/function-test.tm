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
21 : LDA 7, 87(0) ; Call double
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 4(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : LDA 4, 4(5) ; Recompute callee base from callee size
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LD 1, 2(5) ; Load parameter 'y' into R1
28 : LDA 4, 4(5) ; Recompute callee base from callee size
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LDA 4, 4(5) ; Recompute callee base from callee size
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
34 : LDA 7, 60(0) ; Call triple
35 : LD 1, 2(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop callee frame
38 : LDA 4, 4(5) ; Recompute callee base from callee size
39 : ST 1, 2(4) ; Store argument 1 in callee
40 : LDA 4, 4(5) ; Recompute callee base from callee size
41 : LDA 6, 45(0) ; Return address
42 : ST 6, 0(4) ; Store return in callee frame
43 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
44 : LDA 7, 101(0) ; Call add
45 : LD 1, 3(5) ; Load callee result into R1
46 : LDC 2, 4(0) ; Callee frame size
47 : SUB 5, 5, 2 ; Pop callee frame
48 : ST 1, 3(5) ; Store result into caller’s frame
49 : LD 1, 3(5) ; Load main return value into R1
50 : LD 6, 0(5) ; Load main return address
51 : LDA 7, 0(6) ; Return from main
52 : LD 1, 1(5) ; Load parameter 'k' into R1
53 : ST 1, 3(5) ; Spill left operand at depth 0
54 : LDC 1, 2(0) ; Load integer-literal into R1
55 : LD 2, 3(5) ; Restore left operand from depth 0
56 : MUL 1, 2, 1 ; R1 = left * right
57 : ST 1, 2(5) ; Store function result into frame return slot
58 : LD 6, 0(5) ; Load return address
59 : LDA 7, 0(6) ; Return to caller
60 : LD 1, 1(5) ; Load parameter 'n' into R1
61 : LDA 4, 3(5) ; Recompute callee base from callee size
62 : ST 1, 1(4) ; Store argument 0 in callee
63 : LD 1, 1(5) ; Load parameter 'n' into R1
64 : LDA 4, 3(5) ; Recompute callee base from callee size
65 : ST 1, 1(4) ; Store argument 0 in callee
66 : LDA 4, 3(5) ; Recompute callee base from callee size
67 : LDA 6, 71(0) ; Return address
68 : ST 6, 0(4) ; Store return in callee frame
69 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
70 : LDA 7, 52(0) ; Call mul2
71 : LD 1, 2(5) ; Load callee result into R1
72 : LDC 2, 3(0) ; Callee frame size
73 : SUB 5, 5, 2 ; Pop callee frame
74 : LDA 4, 3(5) ; Recompute callee base from callee size
75 : ST 1, 2(4) ; Store argument 1 in callee
76 : LDA 4, 3(5) ; Recompute callee base from callee size
77 : LDA 6, 81(0) ; Return address
78 : ST 6, 0(4) ; Store return in callee frame
79 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
80 : LDA 7, 101(0) ; Call add
81 : LD 1, 3(5) ; Load callee result into R1
82 : LDC 2, 3(0) ; Callee frame size
83 : SUB 5, 5, 2 ; Pop callee frame
84 : ST 1, 2(5) ; Store function result into frame return slot
85 : LD 6, 0(5) ; Load return address
86 : LDA 7, 0(6) ; Return to caller
87 : LD 1, 1(5) ; Load parameter 'n' into R1
88 : LDA 4, 3(5) ; Recompute callee base from callee size
89 : ST 1, 1(4) ; Store argument 0 in callee
90 : LDA 4, 3(5) ; Recompute callee base from callee size
91 : LDA 6, 95(0) ; Return address
92 : ST 6, 0(4) ; Store return in callee frame
93 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
94 : LDA 7, 52(0) ; Call mul2
95 : LD 1, 2(5) ; Load callee result into R1
96 : LDC 2, 3(0) ; Callee frame size
97 : SUB 5, 5, 2 ; Pop callee frame
98 : ST 1, 2(5) ; Store function result into frame return slot
99 : LD 6, 0(5) ; Load return address
100 : LDA 7, 0(6) ; Return to caller
101 : LD 1, 1(5) ; Load parameter 'a' into R1
102 : ST 1, 4(5) ; Spill left operand at depth 0
103 : LD 1, 2(5) ; Load parameter 'b' into R1
104 : LD 2, 4(5) ; Restore left operand from depth 0
105 : ADD 1, 2, 1 ; R1 = left + right
106 : ST 1, 3(5) ; Store function result into frame return slot
107 : LD 6, 0(5) ; Load return address
108 : LDA 7, 0(6) ; Return to caller
