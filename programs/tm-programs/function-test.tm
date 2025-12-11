0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
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
15 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
16 : LD 1, 2(5) ; Load parameter 'y' into R1
17 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
18 : LD 1, 1(5) ; Load parameter 'x' into R1
19 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
20 : LDA 4, 6(5) ; Compute future callee base from caller size
21 : LD 2, 4(5) ; Load staged arg 0 from caller frame
22 : ST 2, 1(4) ; Store arg 0 into callee frame
23 : LD 2, 5(5) ; Load staged arg 1 from caller frame
24 : ST 2, 2(4) ; Store arg 1 into callee frame
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 49(0) ; Call mul2
29 : LD 1, 3(5) ; Load callee result into R1
30 : LDC 2, 5(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
33 : LDA 4, 6(5) ; Compute future callee base from caller size
34 : LD 2, 4(5) ; Load staged arg 0 from caller frame
35 : ST 2, 1(4) ; Store arg 0 into callee frame
36 : LD 2, 5(5) ; Load staged arg 1 from caller frame
37 : ST 2, 2(4) ; Store arg 1 into callee frame
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 49(0) ; Call mul2
42 : LD 1, 3(5) ; Load callee result into R1
43 : LDC 2, 5(0) ; Callee frame size
44 : SUB 5, 5, 2 ; Pop callee frame
45 : ST 1, 3(5) ; Store result into caller’s frame
46 : LD 1, 3(5) ; Load main return value into R1
47 : LD 6, 0(5) ; Load main return address
48 : LDA 7, 0(6) ; Return from main
49 : LDA 4, 5(5) ; Compute future callee base from caller size
50 : LD 2, 5(5) ; Load staged arg 0 from caller frame
51 : ST 2, 1(4) ; Store arg 0 into callee frame
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
55 : LDA 7, 11(0) ; Call built-in print
56 : LDC 2, 3(0) ; Callee frame size
57 : SUB 5, 5, 2 ; Pop callee frame
58 : LD 1, 2(5) ; Load parameter 'n' into R1
59 : ST 1, 4(5) ; Spill left operand at depth 0
60 : LDC 1, 2(0) ; Load integer-literal into R1
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : MUL 1, 2, 1 ; R1 = left * right
63 : ST 1, 3(5) ; Store function result into frame return slot
64 : LD 6, 0(5) ; Load return address
65 : LDA 7, 0(6) ; Return to caller
