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
26 : LDA 4, 4(5) ; Recompute callee base from callee size
27 : ST 1, 1(4) ; Store argument 0 in callee
28 : LDA 4, 4(5) ; Recompute callee base from callee size
29 : LDA 6, 33(0) ; Return address
30 : ST 6, 0(4) ; Store return in callee frame
31 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
32 : LDA 7, 58(0) ; Call f1
33 : LD 1, 2(5) ; Load callee result into R1
34 : LDC 2, 4(0) ; Callee frame size
35 : SUB 5, 5, 2 ; Pop callee frame
36 : ST 1, 2(5) ; Store result into caller’s frame
37 : LD 1, 2(5) ; Load main return value into R1
38 : LD 6, 0(5) ; Load main return address
39 : LDA 7, 0(6) ; Return from main
40 : LD 1, 1(5) ; Load parameter 'm' into R1
41 : ST 1, 3(5) ; Spill left operand at depth 0
42 : LDC 1, 1(0) ; Load integer-literal into R1
43 : LD 2, 3(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; R1 = left - right
45 : LDA 4, 4(5) ; Recompute callee base from callee size
46 : ST 1, 1(4) ; Store argument 0 in callee
47 : LDA 4, 4(5) ; Recompute callee base from callee size
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
51 : LDA 7, 12(0) ; Call main
52 : LD 1, 2(5) ; Load callee result into R1
53 : LDC 2, 4(0) ; Callee frame size
54 : SUB 5, 5, 2 ; Pop callee frame
55 : ST 1, 2(5) ; Store function result into frame return slot
56 : LD 6, 0(5) ; Load return address
57 : LDA 7, 0(6) ; Return to caller
58 : LD 1, 1(5) ; Load parameter 'k' into R1
59 : ST 1, 3(5) ; Spill left operand at depth 0
60 : LDC 1, 1(0) ; Load integer-literal into R1
61 : LD 2, 3(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; R1 = left - right
63 : LDA 4, 4(5) ; Recompute callee base from callee size
64 : ST 1, 1(4) ; Store argument 0 in callee
65 : LDA 4, 4(5) ; Recompute callee base from callee size
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return in callee frame
68 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
69 : LDA 7, 40(0) ; Call f2
70 : LD 1, 2(5) ; Load callee result into R1
71 : LDC 2, 4(0) ; Callee frame size
72 : SUB 5, 5, 2 ; Pop callee frame
73 : ST 1, 2(5) ; Store function result into frame return slot
74 : LD 6, 0(5) ; Load return address
75 : LDA 7, 0(6) ; Return to caller
