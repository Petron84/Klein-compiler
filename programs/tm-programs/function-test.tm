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
21 : LDA 7, 65(0) ; Call mul2
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 4(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : LDA 4, 5(5) ; Recompute callee base from callee size
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LD 1, 2(5) ; Load parameter 'y' into R1
28 : LDA 4, 5(5) ; Recompute callee base from callee size
29 : ST 1, 1(4) ; Store argument 0 in callee
30 : LD 1, 2(5) ; Load parameter 'y' into R1
31 : LDA 4, 4(5) ; Recompute callee base from callee size
32 : ST 1, 1(4) ; Store argument 0 in callee
33 : LDA 4, 4(5) ; Recompute callee base from callee size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 65(0) ; Call mul2
38 : LD 1, 2(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop callee frame
41 : LDA 4, 5(5) ; Recompute callee base from callee size
42 : ST 1, 2(4) ; Store argument 1 in callee
43 : LDA 4, 5(5) ; Recompute callee base from callee size
44 : LDA 6, 48(0) ; Return address
45 : ST 6, 0(4) ; Store return in callee frame
46 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
47 : LDA 7, 100(0) ; Call add
48 : LD 1, 3(5) ; Load callee result into R1
49 : LDC 2, 5(0) ; Callee frame size
50 : SUB 5, 5, 2 ; Pop callee frame
51 : LDA 4, 5(5) ; Recompute callee base from callee size
52 : ST 1, 2(4) ; Store argument 1 in callee
53 : LDA 4, 5(5) ; Recompute callee base from callee size
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return in callee frame
56 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
57 : LDA 7, 100(0) ; Call add
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 5(0) ; Callee frame size
60 : SUB 5, 5, 2 ; Pop callee frame
61 : ST 1, 3(5) ; Store result into caller’s frame
62 : LD 1, 3(5) ; Load main return value into R1
63 : LD 6, 0(5) ; Load main return address
64 : LDA 7, 0(6) ; Return from main
65 : LD 1, 1(5) ; Load parameter 'k' into R1
66 : ST 1, 3(5) ; Spill left operand at depth 0
67 : LDC 1, 2(0) ; Load integer-literal into R1
68 : LD 2, 3(5) ; Restore left operand from depth 0
69 : MUL 1, 2, 1 ; R1 = left * right
70 : ST 1, 2(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
73 : LD 1, 1(5) ; Load parameter 'n' into R1
74 : LDA 4, 5(5) ; Recompute callee base from callee size
75 : ST 1, 1(4) ; Store argument 0 in callee
76 : LD 1, 1(5) ; Load parameter 'n' into R1
77 : LDA 4, 4(5) ; Recompute callee base from callee size
78 : ST 1, 1(4) ; Store argument 0 in callee
79 : LDA 4, 4(5) ; Recompute callee base from callee size
80 : LDA 6, 84(0) ; Return address
81 : ST 6, 0(4) ; Store return in callee frame
82 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
83 : LDA 7, 65(0) ; Call mul2
84 : LD 1, 2(5) ; Load callee result into R1
85 : LDC 2, 4(0) ; Callee frame size
86 : SUB 5, 5, 2 ; Pop callee frame
87 : LDA 4, 5(5) ; Recompute callee base from callee size
88 : ST 1, 2(4) ; Store argument 1 in callee
89 : LDA 4, 5(5) ; Recompute callee base from callee size
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
93 : LDA 7, 100(0) ; Call add
94 : LD 1, 3(5) ; Load callee result into R1
95 : LDC 2, 5(0) ; Callee frame size
96 : SUB 5, 5, 2 ; Pop callee frame
97 : ST 1, 2(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
100 : LD 1, 1(5) ; Load parameter 'a' into R1
101 : ST 1, 4(5) ; Spill left operand at depth 0
102 : LD 1, 2(5) ; Load parameter 'b' into R1
103 : LD 2, 4(5) ; Restore left operand from depth 0
104 : ADD 1, 2, 1 ; R1 = left + right
105 : ST 1, 3(5) ; Store function result into frame return slot
106 : LD 6, 0(5) ; Load return address
107 : LDA 7, 0(6) ; Return to caller
