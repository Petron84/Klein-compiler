0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LDA 6, 2(7) ; Calculate return address (PC + 2)
5 : ST 6, 0(5) ; Store return address in main frame
6 : LDA 7, 12(0) ; Branch to main function
7 : OUT 1, 0, 0 ; Return/print result from main in R1
8 : HALT 0, 0, 0 ; Terminate program
9 : OUT 1, 0, 0 ; Hardcoded print: output R1
10 : LD 6, 0(5) ; Load return address from current frame
11 : LDA 7, 0(6) ; Jump back to caller
12 : LD 1, 1(5) ; Load parameter 'n' into R1
13 : ST 1, 3(5) ; Spill left operand at depth 0
14 : LDC 1, 0(0) ; Load integer-literal into R1
15 : LD 2, 3(5) ; Restore left operand from depth 0
16 : SUB 1, 2, 1 ; left - right for equality check
17 : JEQ 1, 2(7) ; If R1 == 0, jump to true
18 : LDC 1, 0(0) ; false
19 : LDA 7, 1(7) ; skip setting true
20 : LDC 1, 1(0) ; true
21 : JEQ 1, 25(0) ; If condition is false, jump to ELSE
22 : LDC 1, 0(0) ; Load integer-literal into R1
23 : ST 1, 2(5) ; Store result into current frame's return slot
24 : LDA 7, 37(0) ; Skip ELSE block
25 : LD 1, 1(5) ; Load parameter 'n' into R1
26 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
27 : ST 1, 1(4) ; Store argument 0 in callee param slot
28 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 70(0) ; Call f1
33 : LD 1, 2(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Caller frame size
35 : SUB 5, 5, 2 ; Pop callee frame back to caller
36 : ST 1, 2(5) ; Store result into caller’s frame return slot
37 : LD 1, 2(5) ; Load main return value into R1
38 : LD 6, 0(5) ; Load main return address
39 : LDA 7, 0(6) ; Return from main
40 : LD 1, 1(5) ; Load parameter 'm' into R1
41 : ST 1, 3(5) ; Spill left operand at depth 0
42 : LDC 1, 0(0) ; Load integer-literal into R1
43 : LD 2, 3(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; left - right for equality check
45 : JEQ 1, 2(7) ; If R1 == 0, jump to true
46 : LDC 1, 0(0) ; false
47 : LDA 7, 1(7) ; skip setting true
48 : LDC 1, 1(0) ; true
49 : JEQ 1, 52(0) ; If condition is false, jump to ELSE
50 : LDC 1, 2(0) ; Load integer-literal into R1
51 : LDA 7, 67(0) ; Skip ELSE block
52 : LD 1, 1(5) ; Load parameter 'm' into R1
53 : ST 1, 3(5) ; Spill left operand at depth 0
54 : LDC 1, 1(0) ; Load integer-literal into R1
55 : LD 2, 3(5) ; Restore left operand from depth 0
56 : SUB 1, 2, 1 ; R1 = left - right
57 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
58 : ST 1, 1(4) ; Store argument 0 in callee param slot
59 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
60 : LDA 6, 64(0) ; Return address
61 : ST 6, 0(4) ; Store return in callee frame
62 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
63 : LDA 7, 12(0) ; Call main
64 : LD 1, 2(5) ; Load callee result into R1
65 : LDC 2, 4(0) ; Caller frame size
66 : SUB 5, 5, 2 ; Pop callee frame back to caller
67 : ST 1, 2(5) ; Store function result into frame return slot
68 : LD 6, 0(5) ; Load return address
69 : LDA 7, 0(6) ; Return to caller
70 : LD 1, 1(5) ; Load parameter 'k' into R1
71 : ST 1, 3(5) ; Spill left operand at depth 0
72 : LDC 1, 0(0) ; Load integer-literal into R1
73 : LD 2, 3(5) ; Restore left operand from depth 0
74 : SUB 1, 2, 1 ; left - right for equality check
75 : JEQ 1, 2(7) ; If R1 == 0, jump to true
76 : LDC 1, 0(0) ; false
77 : LDA 7, 1(7) ; skip setting true
78 : LDC 1, 1(0) ; true
79 : JEQ 1, 82(0) ; If condition is false, jump to ELSE
80 : LDC 1, 1(0) ; Load integer-literal into R1
81 : LDA 7, 97(0) ; Skip ELSE block
82 : LD 1, 1(5) ; Load parameter 'k' into R1
83 : ST 1, 3(5) ; Spill left operand at depth 0
84 : LDC 1, 1(0) ; Load integer-literal into R1
85 : LD 2, 3(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; R1 = left - right
87 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
88 : ST 1, 1(4) ; Store argument 0 in callee param slot
89 : LDA 4, 4(5) ; Compute callee base = FP + caller_size
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
93 : LDA 7, 40(0) ; Call f2
94 : LD 1, 2(5) ; Load callee result into R1
95 : LDC 2, 4(0) ; Caller frame size
96 : SUB 5, 5, 2 ; Pop callee frame back to caller
97 : ST 1, 2(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
