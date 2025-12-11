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
14 : LD 1, 2(5) ; Load parameter 'y' into R1
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD 1, 2(5) ; Load parameter 'y' into R1
18 : LDA 4, 4(5) ; Recompute callee base from callee size
19 : ST 1, 1(4) ; Store argument 0 in callee
20 : LD 1, 1(5) ; Load parameter 'x' into R1
21 : LDA 4, 4(5) ; Recompute callee base from callee size
22 : ST 1, 2(4) ; Store argument 1 in callee
23 : LDA 4, 4(5) ; Recompute callee base from callee size
24 : LDA 6, 28(0) ; Return address
25 : ST 6, 0(4) ; Store return in callee frame
26 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
27 : LDA 7, 45(0) ; Call mul2
28 : LD 1, 3(5) ; Load callee result into R1
29 : LDC 2, 4(0) ; Callee frame size
30 : SUB 5, 5, 2 ; Pop callee frame
31 : LDA 4, 4(5) ; Recompute callee base from callee size
32 : ST 1, 2(4) ; Store argument 1 in callee
33 : LDA 4, 4(5) ; Recompute callee base from callee size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
37 : LDA 7, 45(0) ; Call mul2
38 : LD 1, 3(5) ; Load callee result into R1
39 : LDC 2, 4(0) ; Callee frame size
40 : SUB 5, 5, 2 ; Pop callee frame
41 : ST 1, 3(5) ; Store result into caller’s frame
42 : LD 1, 3(5) ; Load main return value into R1
43 : LD 6, 0(5) ; Load main return address
44 : LDA 7, 0(6) ; Return from main
45 : LD 1, 1(5) ; Load parameter 'k' into R1
46 : LDA 4, 5(5) ; Recompute callee base from caller size
47 : LDA 6, 51(0) ; Return address
48 : ST 6, 0(4) ; Store return address in callee frame
49 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
50 : LDA 7, 11(0) ; Call built-in print
51 : LDC 2, 5(0) ; Caller frame size
52 : SUB 5, 5, 2 ; Pop back to caller
53 : LD 1, 2(5) ; Load parameter 'n' into R1
54 : ST 1, 4(5) ; Spill left operand at depth 0
55 : LDC 1, 2(0) ; Load integer-literal into R1
56 : LD 2, 4(5) ; Restore left operand from depth 0
57 : MUL 1, 2, 1 ; R1 = left * right
58 : ST 1, 3(5) ; Store function result into frame return slot
59 : LD 6, 0(5) ; Load return address
60 : LDA 7, 0(6) ; Return to caller
