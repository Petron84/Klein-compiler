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
12 : LD 1, 1(5) ; Load parameter 'x' into R1
13 : LDA 4, 4(5) ; Recompute callee base from callee size
14 : ST 1, 1(4) ; Store argument 0 in callee
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : LDA 6, 20(0) ; Return address
17 : ST 6, 0(4) ; Store return in callee frame
18 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
19 : LDA 7, 51(0) ; Call mul2
20 : LD 1, 2(5) ; Load callee result into R1
21 : LDC 2, 4(0) ; Callee frame size
22 : SUB 5, 5, 2 ; Pop callee frame
23 : ST 1, 3(5) ; Spill left operand at depth 0
24 : LD 1, 1(5) ; Load parameter 'x' into R1
25 : LDA 4, 4(5) ; Recompute callee base from callee size
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LDA 4, 4(5) ; Recompute callee base from callee size
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 51(0) ; Call mul2
32 : LD 1, 2(5) ; Load callee result into R1
33 : LDC 2, 4(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : LDA 4, 4(5) ; Recompute callee base from callee size
36 : ST 1, 1(4) ; Store argument 0 in callee
37 : LDA 4, 4(5) ; Recompute callee base from callee size
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 51(0) ; Call mul2
42 : LD 1, 2(5) ; Load callee result into R1
43 : LDC 2, 4(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop callee frame
45 : LD 2, 3(5) ; Restore left operand from depth 0
46 : ADD 1, 2, 1 ; R1 = left + right
47 : ST 1, 2(5) ; Store result into current frame's return slot
48 : LD 1, 2(5) ; Load main return value into R1
49 : LD 6, 0(5) ; Load main return address
50 : LDA 7, 0(6) ; Return from main
51 : LD 1, 1(5) ; Load parameter 'k' into R1
52 : ST 1, 3(5) ; Spill left operand at depth 0
53 : LDC 1, 2(0) ; Load integer-literal into R1
54 : LD 2, 3(5) ; Restore left operand from depth 0
55 : MUL 1, 2, 1 ; R1 = left * right
56 : ST 1, 2(5) ; Store function result into frame return slot
57 : LD 6, 0(5) ; Load return address
58 : LDA 7, 0(6) ; Return to caller
