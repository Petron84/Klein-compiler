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
14 : LD 1, 1(5) ; Load parameter 'x' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LDC 1, 0(0) ; Load integer-literal into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : SUB 1, 2, 1 ; left - right for equality check
19 : JEQ 1, 2(7) ; If R1 == 0, jump to true
20 : LDC 1, 0(0) ; false
21 : LDA 7, 1(7) ; skip setting true
22 : LDC 1, 1(0) ; true
23 : JEQ 1, 27(0) ; If condition is false, jump to ELSE
24 : LDC 1, 0(0) ; Load integer-literal into R1
25 : ST 1, 3(5) ; Store result into current frame's return slot
26 : LDA 7, 42(0) ; Skip ELSE block
27 : LD 1, 1(5) ; Load parameter 'x' into R1
28 : LDA 4, 5(5) ; Compute callee base = FP + caller_size
29 : ST 1, 1(4) ; Store argument 0 in callee param slot
30 : LD 1, 2(5) ; Load parameter 'y' into R1
31 : LDA 4, 5(5) ; Compute callee base = FP + caller_size
32 : ST 1, 2(4) ; Store argument 1 in callee param slot
33 : LDA 4, 5(5) ; Compute callee base = FP + caller_size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 45(0) ; Call raiseToPower
38 : LD 1, 3(5) ; Load callee result into R1
39 : LDC 2, 5(0) ; Caller frame size
40 : SUB 5, 5, 2 ; Pop callee frame back to caller
41 : ST 1, 3(5) ; Store result into caller’s frame return slot
42 : LD 1, 3(5) ; Load main return value into R1
43 : LD 6, 0(5) ; Load main return address
44 : LDA 7, 0(6) ; Return from main
45 : LD 1, 2(5) ; Load parameter 'y' into R1
46 : ST 1, 4(5) ; Spill left operand at depth 0
47 : LDC 1, 0(0) ; Load integer-literal into R1
48 : LD 2, 4(5) ; Restore left operand from depth 0
49 : SUB 1, 2, 1 ; left - right for equality check
50 : JEQ 1, 2(7) ; If R1 == 0, jump to true
51 : LDC 1, 0(0) ; false
52 : LDA 7, 1(7) ; skip setting true
53 : LDC 1, 1(0) ; true
54 : JEQ 1, 57(0) ; If condition is false, jump to ELSE
55 : LDC 1, 1(0) ; Load integer-literal into R1
56 : LDA 7, 79(0) ; Skip ELSE block
57 : LD 1, 1(5) ; Load parameter 'x' into R1
58 : ST 1, 4(5) ; Spill left operand at depth 0
59 : LD 1, 1(5) ; Load parameter 'x' into R1
60 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
61 : ST 1, 1(4) ; Store argument 0 in callee param slot
62 : LD 1, 2(5) ; Load parameter 'y' into R1
63 : ST 1, 5(5) ; Spill left operand at depth 1
64 : LDC 1, 1(0) ; Load integer-literal into R1
65 : LD 2, 5(5) ; Restore left operand from depth 1
66 : SUB 1, 2, 1 ; R1 = left - right
67 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
68 : ST 1, 2(4) ; Store argument 1 in callee param slot
69 : LDA 4, 6(5) ; Compute callee base = FP + caller_size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return in callee frame
72 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
73 : LDA 7, 45(0) ; Call raiseToPower
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 6(0) ; Caller frame size
76 : SUB 5, 5, 2 ; Pop callee frame back to caller
77 : LD 2, 4(5) ; Restore left operand from depth 0
78 : MUL 1, 2, 1 ; R1 = left * right
79 : ST 1, 3(5) ; Store function result into frame return slot
80 : LD 6, 0(5) ; Load return address
81 : LDA 7, 0(6) ; Return to caller
