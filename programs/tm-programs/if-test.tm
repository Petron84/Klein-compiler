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
24 : LDA 7, 39(0) ; Skip ELSE block
25 : LD 1, 1(5) ; Load parameter 'n' into R1
26 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
27 : LDA 4, 4(5) ; Callee base for arg copy
28 : LD 1, 3(5) ; Load staged arg 0 from caller temp
29 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
30 : LDA 4, 4(5) ; Callee base for call
31 : LDA 6, 35(0) ; Return address
32 : ST 6, 0(4) ; Store return in callee frame
33 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
34 : LDA 7, 74(0) ; Call f1
35 : LD 1, 2(5) ; Load callee result into R1
36 : LDC 2, 4(0) ; Callee frame size
37 : SUB 5, 5, 2 ; Pop callee frame
38 : ST 1, 2(5) ; Store result into caller’s frame
39 : LD 1, 2(5) ; Load main return value into R1
40 : LD 6, 0(5) ; Load main return address
41 : LDA 7, 0(6) ; Return from main
42 : LD 1, 1(5) ; Load parameter 'm' into R1
43 : ST 1, 3(5) ; Spill left operand at depth 0
44 : LDC 1, 0(0) ; Load integer-literal into R1
45 : LD 2, 3(5) ; Restore left operand from depth 0
46 : SUB 1, 2, 1 ; left - right for equality check
47 : JEQ 1, 2(7) ; If R1 == 0, jump to true
48 : LDC 1, 0(0) ; false
49 : LDA 7, 1(7) ; skip setting true
50 : LDC 1, 1(0) ; true
51 : JEQ 1, 54(0) ; If condition is false, jump to ELSE
52 : LDC 1, 2(0) ; Load integer-literal into R1
53 : LDA 7, 71(0) ; Skip ELSE block
54 : LD 1, 1(5) ; Load parameter 'm' into R1
55 : ST 1, 3(5) ; Spill left operand at depth 0
56 : LDC 1, 1(0) ; Load integer-literal into R1
57 : LD 2, 3(5) ; Restore left operand from depth 0
58 : SUB 1, 2, 1 ; R1 = left - right
59 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
60 : LDA 4, 4(5) ; Callee base for arg copy
61 : LD 1, 3(5) ; Load staged arg 0 from caller temp
62 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
63 : LDA 4, 4(5) ; Callee base for call
64 : LDA 6, 68(0) ; Return address
65 : ST 6, 0(4) ; Store return in callee frame
66 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
67 : LDA 7, 12(0) ; Call main
68 : LD 1, 2(5) ; Load callee result into R1
69 : LDC 2, 4(0) ; Callee frame size
70 : SUB 5, 5, 2 ; Pop callee frame
71 : ST 1, 2(5) ; Store function result into frame return slot
72 : LD 6, 0(5) ; Load return address
73 : LDA 7, 0(6) ; Return to caller
74 : LD 1, 1(5) ; Load parameter 'k' into R1
75 : ST 1, 3(5) ; Spill left operand at depth 0
76 : LDC 1, 0(0) ; Load integer-literal into R1
77 : LD 2, 3(5) ; Restore left operand from depth 0
78 : SUB 1, 2, 1 ; left - right for equality check
79 : JEQ 1, 2(7) ; If R1 == 0, jump to true
80 : LDC 1, 0(0) ; false
81 : LDA 7, 1(7) ; skip setting true
82 : LDC 1, 1(0) ; true
83 : JEQ 1, 86(0) ; If condition is false, jump to ELSE
84 : LDC 1, 1(0) ; Load integer-literal into R1
85 : LDA 7, 103(0) ; Skip ELSE block
86 : LD 1, 1(5) ; Load parameter 'k' into R1
87 : ST 1, 3(5) ; Spill left operand at depth 0
88 : LDC 1, 1(0) ; Load integer-literal into R1
89 : LD 2, 3(5) ; Restore left operand from depth 0
90 : SUB 1, 2, 1 ; R1 = left - right
91 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
92 : LDA 4, 4(5) ; Callee base for arg copy
93 : LD 1, 3(5) ; Load staged arg 0 from caller temp
94 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
95 : LDA 4, 4(5) ; Callee base for call
96 : LDA 6, 100(0) ; Return address
97 : ST 6, 0(4) ; Store return in callee frame
98 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
99 : LDA 7, 42(0) ; Call f2
100 : LD 1, 2(5) ; Load callee result into R1
101 : LDC 2, 4(0) ; Callee frame size
102 : SUB 5, 5, 2 ; Pop callee frame
103 : ST 1, 2(5) ; Store function result into frame return slot
104 : LD 6, 0(5) ; Load return address
105 : LDA 7, 0(6) ; Return to caller
