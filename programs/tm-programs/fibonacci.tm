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
24 : LDA 7, 42(0) ; Skip ELSE block
25 : LDA 4, 4(5) ; Compute callee base from caller size
26 : LDC 1, 1(0) ; Load integer-literal into R1
27 : ST 1, 1(4) ; Store argument 0 in callee frame
28 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
29 : ST 1, 2(4) ; Store argument 1 in callee frame
30 : LDC 1, 0(0) ; Load integer-literal into R1
31 : ST 1, 3(4) ; Store argument 2 in callee frame
32 : LDC 1, 1(0) ; Load integer-literal into R1
33 : ST 1, 4(4) ; Store argument 3 in callee frame
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address into callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 45(0) ; Call addNext
38 : LD 1, 5(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Caller frame size
40 : SUB 5, 5, 2 ; Pop back to caller
41 : ST 1, 2(5) ; Store result into caller’s return slot
42 : LD 1, 2(5) ; Load main return value into R1
43 : LD 6, 0(5) ; Load main return address
44 : LDA 7, 0(6) ; Return from main
45 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
46 : ST 1, 6(5) ; Spill left operand at depth 0
47 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
48 : LD 2, 6(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; left - right for equality check
50 : JEQ 1, 2(7) ; If R1 == 0, jump to true
51 : LDC 1, 0(0) ; false
52 : LDA 7, 1(7) ; skip setting true
53 : LDC 1, 1(0) ; true
54 : JEQ 1, 57(0) ; If condition is false, jump to ELSE
55 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
56 : LDA 7, 81(0) ; Skip ELSE block
57 : LDA 4, 7(5) ; Compute callee base from caller size
58 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
59 : ST 1, 6(5) ; Spill left operand at depth 0
60 : LDC 1, 1(0) ; Load integer-literal into R1
61 : LD 2, 6(5) ; Restore left operand from depth 0
62 : ADD 1, 2, 1 ; R1 = left + right
63 : ST 1, 1(4) ; Store argument 0 in callee frame
64 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
65 : ST 1, 2(4) ; Store argument 1 in callee frame
66 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
67 : ST 1, 3(4) ; Store argument 2 in callee frame
68 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
69 : ST 1, 6(5) ; Spill left operand at depth 0
70 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
71 : LD 2, 6(5) ; Restore left operand from depth 0
72 : ADD 1, 2, 1 ; R1 = left + right
73 : ST 1, 4(4) ; Store argument 3 in callee frame
74 : LDA 6, 78(0) ; Return address
75 : ST 6, 0(4) ; Store return address into callee frame
76 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
77 : LDA 7, 45(0) ; Call addNext
78 : LD 1, 5(5) ; Load callee result into R1
79 : LDC 2, 7(0) ; Caller frame size
80 : SUB 5, 5, 2 ; Pop back to caller
81 : ST 1, 5(5) ; Store function result into frame return slot
82 : LD 6, 0(5) ; Load return address
83 : LDA 7, 0(6) ; Return to caller
