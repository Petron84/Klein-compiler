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
24 : LDA 7, 46(0) ; Skip ELSE block
25 : LDC 1, 1(0) ; Load integer-literal into R1
26 : LDA 4, 7(5) ; Compute callee base
27 : ST 1, 1(4) ; Store argument 0 in callee frame
28 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
29 : LDA 4, 7(5) ; Compute callee base
30 : ST 1, 2(4) ; Store argument 1 in callee frame
31 : LDC 1, 0(0) ; Load integer-literal into R1
32 : LDA 4, 7(5) ; Compute callee base
33 : ST 1, 3(4) ; Store argument 2 in callee frame
34 : LDC 1, 1(0) ; Load integer-literal into R1
35 : LDA 4, 7(5) ; Compute callee base
36 : ST 1, 4(4) ; Store argument 3 in callee frame
37 : LDA 4, 7(5) ; Recompute callee base from callee size
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return address into callee frame
40 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
41 : LDA 7, 49(0) ; Call addNext
42 : LD 1, 5(5) ; Load callee result into R1
43 : LDC 2, 7(0) ; Caller frame size
44 : SUB 5, 5, 2 ; Pop back to caller
45 : ST 1, 2(5) ; Store result into caller’s return slot
46 : LD 1, 2(5) ; Load main return value into R1
47 : LD 6, 0(5) ; Load main return address
48 : LDA 7, 0(6) ; Return from main
49 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
50 : ST 1, 6(5) ; Spill left operand at depth 0
51 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
52 : LD 2, 6(5) ; Restore left operand from depth 0
53 : SUB 1, 2, 1 ; left - right for equality check
54 : JEQ 1, 2(7) ; If R1 == 0, jump to true
55 : LDC 1, 0(0) ; false
56 : LDA 7, 1(7) ; skip setting true
57 : LDC 1, 1(0) ; true
58 : JEQ 1, 61(0) ; If condition is false, jump to ELSE
59 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
60 : LDA 7, 89(0) ; Skip ELSE block
61 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
62 : ST 1, 6(5) ; Spill left operand at depth 0
63 : LDC 1, 1(0) ; Load integer-literal into R1
64 : LD 2, 6(5) ; Restore left operand from depth 0
65 : ADD 1, 2, 1 ; R1 = left + right
66 : LDA 4, 7(5) ; Compute callee base
67 : ST 1, 1(4) ; Store argument 0 in callee frame
68 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
69 : LDA 4, 7(5) ; Compute callee base
70 : ST 1, 2(4) ; Store argument 1 in callee frame
71 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
72 : LDA 4, 7(5) ; Compute callee base
73 : ST 1, 3(4) ; Store argument 2 in callee frame
74 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
75 : ST 1, 6(5) ; Spill left operand at depth 0
76 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
77 : LD 2, 6(5) ; Restore left operand from depth 0
78 : ADD 1, 2, 1 ; R1 = left + right
79 : LDA 4, 7(5) ; Compute callee base
80 : ST 1, 4(4) ; Store argument 3 in callee frame
81 : LDA 4, 7(5) ; Recompute callee base from callee size
82 : LDA 6, 86(0) ; Return address
83 : ST 6, 0(4) ; Store return address into callee frame
84 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
85 : LDA 7, 49(0) ; Call addNext
86 : LD 1, 5(5) ; Load callee result into R1
87 : LDC 2, 7(0) ; Caller frame size
88 : SUB 5, 5, 2 ; Pop back to caller
89 : ST 1, 5(5) ; Store function result into frame return slot
90 : LD 6, 0(5) ; Load return address
91 : LDA 7, 0(6) ; Return to caller
