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
12 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
13 : ST 1, 3(5) ; Spill left operand at depth 0
14 : LDC 1, 1(0) ; Load integer-literal into R1
15 : LD 2, 3(5) ; Restore left operand from depth 0
16 : SUB 1, 2, 1 ; left - right for less-than check
17 : JLT 1, 2(7) ; If R1 < 0, jump to true
18 : LDC 1, 0(0) ; false
19 : LDA 7, 1(7) ; skip setting true
20 : LDC 1, 1(0) ; true
21 : JEQ 1, 25(0) ; If condition is false, jump to ELSE
22 : LDC 1, 0(0) ; Load integer-literal into R1
23 : ST 1, 2(5) ; Store result into current frame's return slot
24 : LDA 7, 54(0) ; Skip ELSE block
25 : LDC 1, 1(0) ; Load integer-literal into R1
26 : ST 1, 3(5) ; Stage arg 0 in caller temp (P+2)
27 : LDA 4, 7(5) ; Callee base for arg copy
28 : LD 1, 3(5) ; Load staged arg 0 from caller temp
29 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
30 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
31 : ST 1, 3(5) ; Stage arg 1 in caller temp (P+2)
32 : LDA 4, 7(5) ; Callee base for arg copy
33 : LD 1, 3(5) ; Load staged arg 1 from caller temp
34 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
35 : LDC 1, 0(0) ; Load integer-literal into R1
36 : ST 1, 3(5) ; Stage arg 2 in caller temp (P+2)
37 : LDA 4, 7(5) ; Callee base for arg copy
38 : LD 1, 3(5) ; Load staged arg 2 from caller temp
39 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
40 : LDC 1, 1(0) ; Load integer-literal into R1
41 : ST 1, 3(5) ; Stage arg 3 in caller temp (P+2)
42 : LDA 4, 7(5) ; Callee base for arg copy
43 : LD 1, 3(5) ; Load staged arg 3 from caller temp
44 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
45 : LDA 4, 7(5) ; Callee base for call
46 : LDA 6, 50(0) ; Return address
47 : ST 6, 0(4) ; Store return in callee frame
48 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
49 : LDA 7, 57(0) ; Call addNext
50 : LD 1, 5(5) ; Load callee result into R1
51 : LDC 2, 7(0) ; Callee frame size
52 : SUB 5, 5, 2 ; Pop callee frame
53 : ST 1, 2(5) ; Store result into caller’s frame
54 : LD 1, 2(5) ; Load main return value into R1
55 : LD 6, 0(5) ; Load main return address
56 : LDA 7, 0(6) ; Return from main
57 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
58 : ST 1, 6(5) ; Spill left operand at depth 0
59 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
60 : LD 2, 6(5) ; Restore left operand from depth 0
61 : SUB 1, 2, 1 ; left - right for equality check
62 : JEQ 1, 2(7) ; If R1 == 0, jump to true
63 : LDC 1, 0(0) ; false
64 : LDA 7, 1(7) ; skip setting true
65 : LDC 1, 1(0) ; true
66 : JEQ 1, 69(0) ; If condition is false, jump to ELSE
67 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
68 : LDA 7, 105(0) ; Skip ELSE block
69 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
70 : ST 1, 6(5) ; Spill left operand at depth 0
71 : LDC 1, 1(0) ; Load integer-literal into R1
72 : LD 2, 6(5) ; Restore left operand from depth 0
73 : ADD 1, 2, 1 ; R1 = left + right
74 : ST 1, 6(5) ; Stage arg 0 in caller temp (P+2)
75 : LDA 4, 7(5) ; Callee base for arg copy
76 : LD 1, 6(5) ; Load staged arg 0 from caller temp
77 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
78 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
79 : ST 1, 6(5) ; Stage arg 1 in caller temp (P+2)
80 : LDA 4, 7(5) ; Callee base for arg copy
81 : LD 1, 6(5) ; Load staged arg 1 from caller temp
82 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
83 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
84 : ST 1, 6(5) ; Stage arg 2 in caller temp (P+2)
85 : LDA 4, 7(5) ; Callee base for arg copy
86 : LD 1, 6(5) ; Load staged arg 2 from caller temp
87 : ST 1, 3(4) ; Copy arg 2 into callee param slot 3
88 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
89 : ST 1, 6(5) ; Spill left operand at depth 0
90 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
91 : LD 2, 6(5) ; Restore left operand from depth 0
92 : ADD 1, 2, 1 ; R1 = left + right
93 : ST 1, 6(5) ; Stage arg 3 in caller temp (P+2)
94 : LDA 4, 7(5) ; Callee base for arg copy
95 : LD 1, 6(5) ; Load staged arg 3 from caller temp
96 : ST 1, 4(4) ; Copy arg 3 into callee param slot 4
97 : LDA 4, 7(5) ; Callee base for call
98 : LDA 6, 102(0) ; Return address
99 : ST 6, 0(4) ; Store return in callee frame
100 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
101 : LDA 7, 57(0) ; Call addNext
102 : LD 1, 5(5) ; Load callee result into R1
103 : LDC 2, 7(0) ; Callee frame size
104 : SUB 5, 5, 2 ; Pop callee frame
105 : ST 1, 5(5) ; Store function result into frame return slot
106 : LD 6, 0(5) ; Load return address
107 : LDA 7, 0(6) ; Return to caller
