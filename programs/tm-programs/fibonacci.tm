0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
24 : LDA 7, 50(0) ; Skip ELSE block
25 : LDC 1, 1(0) ; Load integer-literal into R1
26 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
27 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
28 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
29 : LDC 1, 0(0) ; Load integer-literal into R1
30 : ST 1, 6(5) ; Stage arg 2 in caller frame outgoing area
31 : LDC 1, 1(0) ; Load integer-literal into R1
32 : ST 1, 7(5) ; Stage arg 3 in caller frame outgoing area
33 : LDA 4, 8(5) ; Compute future callee base from caller size
34 : LD 2, 4(5) ; Load staged arg 0 from caller frame
35 : ST 2, 1(4) ; Store arg 0 into callee frame
36 : LD 2, 5(5) ; Load staged arg 1 from caller frame
37 : ST 2, 2(4) ; Store arg 1 into callee frame
38 : LD 2, 6(5) ; Load staged arg 2 from caller frame
39 : ST 2, 3(4) ; Store arg 2 into callee frame
40 : LD 2, 7(5) ; Load staged arg 3 from caller frame
41 : ST 2, 4(4) ; Store arg 3 into callee frame
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
45 : LDA 7, 53(0) ; Call addNext
46 : LD 1, 5(5) ; Load callee result into R1
47 : LDC 2, 7(0) ; Callee frame size
48 : SUB 5, 5, 2 ; Pop callee frame
49 : ST 1, 2(5) ; Store result into caller’s frame
50 : LD 1, 2(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
54 : ST 1, 6(5) ; Spill left operand at depth 0
55 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
56 : LD 2, 6(5) ; Restore left operand from depth 0
57 : SUB 1, 2, 1 ; left - right for equality check
58 : JEQ 1, 2(7) ; If R1 == 0, jump to true
59 : LDC 1, 0(0) ; false
60 : LDA 7, 1(7) ; skip setting true
61 : LDC 1, 1(0) ; true
62 : JEQ 1, 65(0) ; If condition is false, jump to ELSE
63 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
64 : LDA 7, 97(0) ; Skip ELSE block
65 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
66 : ST 1, 6(5) ; Spill left operand at depth 0
67 : LDC 1, 1(0) ; Load integer-literal into R1
68 : LD 2, 6(5) ; Restore left operand from depth 0
69 : ADD 1, 2, 1 ; R1 = left + right
70 : ST 1, 7(5) ; Stage arg 0 in caller frame outgoing area
71 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
72 : ST 1, 8(5) ; Stage arg 1 in caller frame outgoing area
73 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
74 : ST 1, 9(5) ; Stage arg 2 in caller frame outgoing area
75 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
76 : ST 1, 6(5) ; Spill left operand at depth 0
77 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
78 : LD 2, 6(5) ; Restore left operand from depth 0
79 : ADD 1, 2, 1 ; R1 = left + right
80 : ST 1, 10(5) ; Stage arg 3 in caller frame outgoing area
81 : LDA 4, 11(5) ; Compute future callee base from caller size
82 : LD 2, 7(5) ; Load staged arg 0 from caller frame
83 : ST 2, 1(4) ; Store arg 0 into callee frame
84 : LD 2, 8(5) ; Load staged arg 1 from caller frame
85 : ST 2, 2(4) ; Store arg 1 into callee frame
86 : LD 2, 9(5) ; Load staged arg 2 from caller frame
87 : ST 2, 3(4) ; Store arg 2 into callee frame
88 : LD 2, 10(5) ; Load staged arg 3 from caller frame
89 : ST 2, 4(4) ; Store arg 3 into callee frame
90 : LDA 6, 94(0) ; Return address
91 : ST 6, 0(4) ; Store return in callee frame
92 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
93 : LDA 7, 53(0) ; Call addNext
94 : LD 1, 5(5) ; Load callee result into R1
95 : LDC 2, 7(0) ; Callee frame size
96 : SUB 5, 5, 2 ; Pop callee frame
97 : ST 1, 5(5) ; Store function result into frame return slot
98 : LD 6, 0(5) ; Load return address
99 : LDA 7, 0(6) ; Return to caller
