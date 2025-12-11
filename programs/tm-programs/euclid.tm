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
14 : LD 1, 1(5) ; Load parameter 'a' into R1
15 : LDA 4, 4(4) ; Recompute callee base from callee size
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : LDA 4, 4(4) ; Recompute callee base from callee size
19 : ST 1, 2(4) ; Store argument 1 in callee
20 : LDA 4, 4(4) ; Recompute callee base from callee size
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 32(0) ; Call gcd
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 4(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 3(5) ; Store result into caller’s frame
29 : LD 1, 3(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 2(5) ; Load parameter 'b' into R1
33 : ST 1, 4(5) ; Spill left operand at depth 0
34 : LDC 1, 0(0) ; Load integer-literal into R1
35 : LD 2, 4(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for equality check
37 : JEQ 1, 2(7) ; If R1 == 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : JEQ 1, 44(0) ; If condition is false, jump to ELSE
42 : LD 1, 1(5) ; Load parameter 'a' into R1
43 : LDA 7, 71(0) ; Skip ELSE block
44 : LD 1, 2(5) ; Load parameter 'b' into R1
45 : LDA 4, 5(4) ; Recompute callee base from callee size
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LD 1, 1(5) ; Load parameter 'a' into R1
48 : LDA 4, 5(4) ; Recompute callee base from callee size
49 : ST 1, 1(4) ; Store argument 0 in callee
50 : LD 1, 2(5) ; Load parameter 'b' into R1
51 : LDA 4, 5(4) ; Recompute callee base from callee size
52 : ST 1, 2(4) ; Store argument 1 in callee
53 : LDA 4, 5(4) ; Recompute callee base from callee size
54 : LDA 6, 58(0) ; Return address
55 : ST 6, 0(4) ; Store return in callee frame
56 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
57 : LDA 7, 74(0) ; Call remainder
58 : LD 1, 3(5) ; Load callee result into R1
59 : LDC 2, 5(0) ; Callee frame size
60 : SUB 5, 5, 2 ; Pop callee frame
61 : LDA 4, 5(4) ; Recompute callee base from callee size
62 : ST 1, 2(4) ; Store argument 1 in callee
63 : LDA 4, 5(4) ; Recompute callee base from callee size
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
67 : LDA 7, 32(0) ; Call gcd
68 : LD 1, 3(5) ; Load callee result into R1
69 : LDC 2, 5(0) ; Callee frame size
70 : SUB 5, 5, 2 ; Pop callee frame
71 : ST 1, 3(5) ; Store function result into frame return slot
72 : LD 6, 0(5) ; Load return address
73 : LDA 7, 0(6) ; Return to caller
74 : LD 1, 1(5) ; Load parameter 'a' into R1
75 : ST 1, 4(5) ; Spill left operand at depth 0
76 : LD 1, 2(5) ; Load parameter 'b' into R1
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for less-than check
79 : JLT 1, 2(7) ; If R1 < 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : JEQ 1, 86(0) ; If condition is false, jump to ELSE
84 : LD 1, 1(5) ; Load parameter 'a' into R1
85 : LDA 7, 104(0) ; Skip ELSE block
86 : LD 1, 1(5) ; Load parameter 'a' into R1
87 : ST 1, 4(5) ; Spill left operand at depth 0
88 : LD 1, 2(5) ; Load parameter 'b' into R1
89 : LD 2, 4(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; R1 = left - right
91 : LDA 4, 5(4) ; Recompute callee base from callee size
92 : ST 1, 1(4) ; Store argument 0 in callee
93 : LD 1, 2(5) ; Load parameter 'b' into R1
94 : LDA 4, 5(4) ; Recompute callee base from callee size
95 : ST 1, 2(4) ; Store argument 1 in callee
96 : LDA 4, 5(4) ; Recompute callee base from callee size
97 : LDA 6, 101(0) ; Return address
98 : ST 6, 0(4) ; Store return in callee frame
99 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
100 : LDA 7, 74(0) ; Call remainder
101 : LD 1, 3(5) ; Load callee result into R1
102 : LDC 2, 5(0) ; Callee frame size
103 : SUB 5, 5, 2 ; Pop callee frame
104 : ST 1, 3(5) ; Store function result into frame return slot
105 : LD 6, 0(5) ; Load return address
106 : LDA 7, 0(6) ; Return to caller
