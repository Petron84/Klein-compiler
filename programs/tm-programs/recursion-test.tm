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
14 : LD 1, 1(5) ; Load parameter 'a' into R1
15 : LDA 4, 5(5) ; Recompute callee base from callee size
16 : ST 1, 1(4) ; Store argument 0 in callee
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : LDA 4, 5(5) ; Recompute callee base from callee size
19 : ST 1, 2(4) ; Store argument 1 in callee
20 : LDA 4, 5(5) ; Recompute callee base from callee size
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 32(0) ; Call add_till_n
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 5(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 3(5) ; Store result into caller’s frame
29 : LD 1, 3(5) ; Load main return value into R1
30 : LD 6, 0(5) ; Load main return address
31 : LDA 7, 0(6) ; Return from main
32 : LD 1, 1(5) ; Load parameter 'a' into R1
33 : LDA 4, 5(5) ; Recompute callee base from caller size
34 : LDA 6, 38(0) ; Return address
35 : ST 6, 0(4) ; Store return address in callee frame
36 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
37 : LDA 7, 11(0) ; Call built-in print
38 : LDC 2, 5(0) ; Caller frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : LD 1, 1(5) ; Load parameter 'a' into R1
41 : ST 1, 4(5) ; Spill left operand at depth 0
42 : LD 1, 2(5) ; Load parameter 'b' into R1
43 : LD 2, 4(5) ; Restore left operand from depth 0
44 : SUB 1, 2, 1 ; left - right for equality check
45 : JEQ 1, 3(7) ; If R1 == 0, jump to true
46 : LDC 1, 0(0) ; false
47 : LDA 7, 1(7) ; skip setting true
48 : LDC 1, 1(0) ; true
49 : JEQ 1, 52(0) ; If condition is false, jump to ELSE
50 : LD 1, 1(5) ; Load parameter 'a' into R1
51 : LDA 7, 70(0) ; Skip ELSE block
52 : LD 1, 1(5) ; Load parameter 'a' into R1
53 : ST 1, 4(5) ; Spill left operand at depth 0
54 : LDC 1, 1(0) ; Load integer-literal into R1
55 : LD 2, 4(5) ; Restore left operand from depth 0
56 : ADD 1, 2, 1 ; R1 = left + right
57 : LDA 4, 5(5) ; Recompute callee base from callee size
58 : ST 1, 1(4) ; Store argument 0 in callee
59 : LD 1, 2(5) ; Load parameter 'b' into R1
60 : LDA 4, 5(5) ; Recompute callee base from callee size
61 : ST 1, 2(4) ; Store argument 1 in callee
62 : LDA 4, 5(5) ; Recompute callee base from callee size
63 : LDA 6, 67(0) ; Return address
64 : ST 6, 0(4) ; Store return in callee frame
65 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
66 : LDA 7, 32(0) ; Call add_till_n
67 : LD 1, 3(5) ; Load callee result into R1
68 : LDC 2, 5(0) ; Callee frame size
69 : SUB 5, 5, 2 ; Pop callee frame
70 : ST 1, 3(5) ; Store function result into frame return slot
71 : LD 6, 0(5) ; Load return address
72 : LDA 7, 0(6) ; Return to caller
