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
15 : LDA 4, 4(5) ; Recompute callee base from callee size
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LDA 4, 4(5) ; Recompute callee base from callee size
18 : LDA 6, 22(0) ; Return address
19 : ST 6, 0(4) ; Store return in callee frame
20 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
21 : LDA 7, 39(0) ; Call mul2
22 : LD 1, 2(5) ; Load callee result into R1
23 : LDC 2, 4(0) ; Callee frame size
24 : SUB 5, 5, 2 ; Pop callee frame
25 : LDA 4, 4(5) ; Recompute callee base from callee size
26 : ST 1, 1(4) ; Store argument 0 in callee
27 : LDA 4, 4(5) ; Recompute callee base from callee size
28 : LDA 6, 32(0) ; Return address
29 : ST 6, 0(4) ; Store return in callee frame
30 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
31 : LDA 7, 39(0) ; Call mul2
32 : LD 1, 2(5) ; Load callee result into R1
33 : LDC 2, 4(0) ; Callee frame size
34 : SUB 5, 5, 2 ; Pop callee frame
35 : ST 1, 3(5) ; Store result into caller’s frame
36 : LD 1, 3(5) ; Load main return value into R1
37 : LD 6, 0(5) ; Load main return address
38 : LDA 7, 0(6) ; Return from main
39 : LD 1, 1(5) ; Load parameter 'k' into R1
40 : ST 1, 3(5) ; Spill left operand at depth 0
41 : LDC 1, 2(0) ; Load integer-literal into R1
42 : LD 2, 3(5) ; Restore left operand from depth 0
43 : MUL 1, 2, 1 ; R1 = left * right
44 : ST 1, 2(5) ; Store function result into frame return slot
45 : LD 6, 0(5) ; Load return address
46 : LDA 7, 0(6) ; Return to caller
