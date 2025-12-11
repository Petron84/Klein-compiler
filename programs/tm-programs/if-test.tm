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
24 : LDA 7, 38(0) ; Skip ELSE block
25 : LD 1, 1(5) ; Load parameter 'n' into R1
26 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
27 : LDA 4, 4(5) ; Callee base for arg copy
28 : LD 1, 3(5) ; Load staged arg 0 from caller temp
29 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
33 : LDA 7, 72(0) ; Call f1
34 : LD 1, 2(5) ; Load callee result into R1
35 : LDC 2, 4(0) ; Callee frame size
36 : SUB 5, 5, 2 ; Pop callee frame
37 : ST 1, 2(5) ; Store result into caller’s frame
38 : LD 1, 2(5) ; Load main return value into R1
39 : LD 6, 0(5) ; Load main return address
40 : LDA 7, 0(6) ; Return from main
41 : LD 1, 1(5) ; Load parameter 'm' into R1
42 : ST 1, 3(5) ; Spill left operand at depth 0
43 : LDC 1, 0(0) ; Load integer-literal into R1
44 : LD 2, 3(5) ; Restore left operand from depth 0
45 : SUB 1, 2, 1 ; left - right for equality check
46 : JEQ 1, 2(7) ; If R1 == 0, jump to true
47 : LDC 1, 0(0) ; false
48 : LDA 7, 1(7) ; skip setting true
49 : LDC 1, 1(0) ; true
50 : JEQ 1, 53(0) ; If condition is false, jump to ELSE
51 : LDC 1, 2(0) ; Load integer-literal into R1
52 : LDA 7, 69(0) ; Skip ELSE block
53 : LD 1, 1(5) ; Load parameter 'm' into R1
54 : ST 1, 3(5) ; Spill left operand at depth 0
55 : LDC 1, 1(0) ; Load integer-literal into R1
56 : LD 2, 3(5) ; Restore left operand from depth 0
57 : SUB 1, 2, 1 ; R1 = left - right
58 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
59 : LDA 4, 4(5) ; Callee base for arg copy
60 : LD 1, 3(5) ; Load staged arg 0 from caller temp
61 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
62 : LDA 6, 66(0) ; Return address
63 : ST 6, 0(4) ; Store return in callee frame
64 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
65 : LDA 7, 12(0) ; Call main
66 : LD 1, 2(5) ; Load callee result into R1
67 : LDC 2, 4(0) ; Callee frame size
68 : SUB 5, 5, 2 ; Pop callee frame
69 : ST 1, 2(5) ; Store function result into frame return slot
70 : LD 6, 0(5) ; Load return address
71 : LDA 7, 0(6) ; Return to caller
72 : LD 1, 1(5) ; Load parameter 'k' into R1
73 : ST 1, 3(5) ; Spill left operand at depth 0
74 : LDC 1, 0(0) ; Load integer-literal into R1
75 : LD 2, 3(5) ; Restore left operand from depth 0
76 : SUB 1, 2, 1 ; left - right for equality check
77 : JEQ 1, 2(7) ; If R1 == 0, jump to true
78 : LDC 1, 0(0) ; false
79 : LDA 7, 1(7) ; skip setting true
80 : LDC 1, 1(0) ; true
81 : JEQ 1, 84(0) ; If condition is false, jump to ELSE
82 : LDC 1, 1(0) ; Load integer-literal into R1
83 : LDA 7, 100(0) ; Skip ELSE block
84 : LD 1, 1(5) ; Load parameter 'k' into R1
85 : ST 1, 3(5) ; Spill left operand at depth 0
86 : LDC 1, 1(0) ; Load integer-literal into R1
87 : LD 2, 3(5) ; Restore left operand from depth 0
88 : SUB 1, 2, 1 ; R1 = left - right
89 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2+i)
90 : LDA 4, 4(5) ; Callee base for arg copy
91 : LD 1, 3(5) ; Load staged arg 0 from caller temp
92 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
93 : LDA 6, 97(0) ; Return address
94 : ST 6, 0(4) ; Store return in callee frame
95 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
96 : LDA 7, 41(0) ; Call f2
97 : LD 1, 2(5) ; Load callee result into R1
98 : LDC 2, 4(0) ; Callee frame size
99 : SUB 5, 5, 2 ; Pop callee frame
100 : ST 1, 2(5) ; Store function result into frame return slot
101 : LD 6, 0(5) ; Load return address
102 : LDA 7, 0(6) ; Return to caller
