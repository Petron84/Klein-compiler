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
15 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
16 : LD 1, 2(5) ; Load parameter 'y' into R1
17 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
18 : LD 1, 1(5) ; Load parameter 'x' into R1
19 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
20 : LDA 4, 5(5) ; Callee base for arg copy
21 : LD 1, 4(5) ; Load staged arg 0 from caller temp
22 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
23 : LD 1, 5(5) ; Load staged arg 1 from caller temp
24 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 49(0) ; Call mul2
29 : LD 1, 3(5) ; Load callee result into R1
30 : LDC 2, 5(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
33 : LDA 4, 5(5) ; Callee base for arg copy
34 : LD 1, 4(5) ; Load staged arg 0 from caller temp
35 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
36 : LD 1, 5(5) ; Load staged arg 1 from caller temp
37 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
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
49 : LD 1, 1(5) ; Load parameter 'k' into R1
50 : LDA 4, 3(5) ; Callee base for built-in print
51 : LDA 6, 55(0) ; Return address
52 : ST 6, 0(4) ; Store return address in callee frame
53 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
54 : LDA 7, 11(0) ; Call built-in print
55 : LDC 2, 3(0) ; Callee frame size (print)
56 : SUB 5, 5, 2 ; Pop back to caller
57 : LD 1, 2(5) ; Load parameter 'n' into R1
58 : ST 1, 4(5) ; Spill left operand at depth 0
59 : LDC 1, 2(0) ; Load integer-literal into R1
60 : LD 2, 4(5) ; Restore left operand from depth 0
61 : MUL 1, 2, 1 ; R1 = left * right
62 : ST 1, 3(5) ; Store function result into frame return slot
63 : LD 6, 0(5) ; Load return address
64 : LDA 7, 0(6) ; Return to caller
