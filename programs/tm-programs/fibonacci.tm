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
26 : LDA 4, 4(5) ; Recompute callee base from caller size
27 : ST 1, 1(4) ; Store argument 0 in callee frame
28 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
29 : LDA 4, 4(5) ; Recompute callee base from caller size
30 : ST 1, 2(4) ; Store argument 1 in callee frame
31 : LDC 1, 0(0) ; Load integer-literal into R1
32 : LDA 4, 4(5) ; Recompute callee base from caller size
33 : ST 1, 3(4) ; Store argument 2 in callee frame
34 : LDC 1, 1(0) ; Load integer-literal into R1
35 : LDA 4, 4(5) ; Recompute callee base from caller size
36 : ST 1, 4(4) ; Store argument 3 in callee frame
37 : LDA 4, 4(5) ; Recompute callee base from caller size
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return address into callee frame
40 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
41 : LDA 7, 50(0) ; Call addNext
42 : LD 1, 5(5) ; Load callee result into R1
43 : LDC 2, 7(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop back to caller
45 : ST 1, 2(5) ; Store result into caller’s return slot
46 : LDC 5, 2(0) ; Reset R5 to main frame base (DMEM[N+1])
47 : LD 1, 2(5) ; Load main return value into R1
48 : LD 6, 0(5) ; Load root return address from main frame
49 : LDA 7, 0(6) ; Return from main to runtime epilogue
50 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
51 : ST 1, 6(5) ; Spill left operand at depth 0
52 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
53 : LD 2, 6(5) ; Restore left operand from depth 0
54 : SUB 1, 2, 1 ; left - right for equality check
55 : JEQ 1, 2(7) ; If R1 == 0, jump to true
56 : LDC 1, 0(0) ; false
57 : LDA 7, 1(7) ; skip setting true
58 : LDC 1, 1(0) ; true
59 : JEQ 1, 62(0) ; If condition is false, jump to ELSE
60 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
61 : LDA 7, 90(0) ; Skip ELSE block
62 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
63 : ST 1, 6(5) ; Spill left operand at depth 0
64 : LDC 1, 1(0) ; Load integer-literal into R1
65 : LD 2, 6(5) ; Restore left operand from depth 0
66 : ADD 1, 2, 1 ; R1 = left + right
67 : LDA 4, 7(5) ; Recompute callee base from caller size
68 : ST 1, 1(4) ; Store argument 0 in callee frame
69 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
70 : LDA 4, 7(5) ; Recompute callee base from caller size
71 : ST 1, 2(4) ; Store argument 1 in callee frame
72 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
73 : LDA 4, 7(5) ; Recompute callee base from caller size
74 : ST 1, 3(4) ; Store argument 2 in callee frame
75 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
76 : ST 1, 6(5) ; Spill left operand at depth 0
77 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
78 : LD 2, 6(5) ; Restore left operand from depth 0
79 : ADD 1, 2, 1 ; R1 = left + right
80 : LDA 4, 7(5) ; Recompute callee base from caller size
81 : ST 1, 4(4) ; Store argument 3 in callee frame
82 : LDA 4, 7(5) ; Recompute callee base from caller size
83 : LDA 6, 87(0) ; Return address
84 : ST 6, 0(4) ; Store return address into callee frame
85 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
86 : LDA 7, 50(0) ; Call addNext
87 : LD 1, 5(5) ; Load callee result into R1
88 : LDC 2, 7(0) ; Callee frame size
89 : SUB 5, 5, 2 ; Pop back to caller
90 : ST 1, 5(5) ; Store function result into frame return slot
91 : LD 6, 0(5) ; Load return address
92 : LDA 7, 0(6) ; Return to caller
