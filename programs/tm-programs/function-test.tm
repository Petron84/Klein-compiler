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
15 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
16 : LDA 4, 5(5) ; Callee base for arg copy
17 : LD 1, 4(5) ; Load staged arg 0 from caller temp
18 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
19 : LD 1, 2(5) ; Load parameter 'y' into R1
20 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
21 : LDA 4, 5(5) ; Callee base for arg copy
22 : LD 1, 4(5) ; Load staged arg 0 from caller temp
23 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
24 : LD 1, 1(5) ; Load parameter 'x' into R1
25 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
26 : LDA 4, 5(5) ; Callee base for arg copy
27 : LD 1, 4(5) ; Load staged arg 1 from caller temp
28 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
29 : LDA 4, 5(5) ; Callee base for call
30 : LDA 6, 34(0) ; Return address
31 : ST 6, 0(4) ; Store return in callee frame
32 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
33 : LDA 7, 53(0) ; Call mul2
34 : LD 1, 3(5) ; Load callee result into R1
35 : LDC 2, 5(0) ; Callee frame size
36 : SUB 5, 5, 2 ; Pop callee frame
37 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
38 : LDA 4, 5(5) ; Callee base for arg copy
39 : LD 1, 4(5) ; Load staged arg 1 from caller temp
40 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
41 : LDA 4, 5(5) ; Callee base for call
42 : LDA 6, 46(0) ; Return address
43 : ST 6, 0(4) ; Store return in callee frame
44 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
45 : LDA 7, 53(0) ; Call mul2
46 : LD 1, 3(5) ; Load callee result into R1
47 : LDC 2, 5(0) ; Callee frame size
48 : SUB 5, 5, 2 ; Pop callee frame
49 : ST 1, 3(5) ; Store result into caller’s frame
50 : LD 1, 3(5) ; Load main return value into R1
51 : LD 6, 0(5) ; Load main return address
52 : LDA 7, 0(6) ; Return from main
53 : LD 1, 1(5) ; Load parameter 'k' into R1
54 : LDA 4, 3(5) ; Callee base for built-in print
55 : LDA 6, 59(0) ; Return address
56 : ST 6, 0(4) ; Store return address in callee frame
57 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
58 : LDA 7, 11(0) ; Call built-in print
59 : LDC 2, 3(0) ; Callee frame size (print)
60 : SUB 5, 5, 2 ; Pop back to caller
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : ST 1, 4(5) ; Spill left operand at depth 0
63 : LDC 1, 2(0) ; Load integer-literal into R1
64 : LD 2, 4(5) ; Restore left operand from depth 0
65 : MUL 1, 2, 1 ; R1 = left * right
66 : ST 1, 3(5) ; Store function result into frame return slot
67 : LD 6, 0(5) ; Load return address
68 : LDA 7, 0(6) ; Return to caller
