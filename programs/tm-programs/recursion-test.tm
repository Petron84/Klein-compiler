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
15 : LDA 4, 4(5) ; Recompute callee base from caller size
16 : ST 1, 1(4) ; Store argument 0 in callee frame
17 : LD 1, 2(5) ; Load parameter 'b' into R1
18 : LDA 4, 4(5) ; Recompute callee base from caller size
19 : ST 1, 2(4) ; Store argument 1 in callee frame
20 : LDA 4, 4(5) ; Recompute callee base from caller size
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return address into callee frame
23 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
24 : LDA 7, 35(0) ; Call add_till_n
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 5(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop back to caller
28 : ST 1, 3(5) ; Store result into caller’s return slot
29 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
30 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
31 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
32 : LD 1, 3(5) ; Load main return value into R1
33 : LD 6, 0(5) ; Load root return address from main frame
34 : LDA 7, 0(6) ; Return from main to runtime epilogue
35 : LD 1, 1(5) ; Load parameter 'a' into R1
36 : LDA 4, 5(5) ; Recompute callee base from caller size
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return address in callee frame
39 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
40 : LDA 7, 11(0) ; Call built-in print
41 : LDC 2, 3(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop back to caller
43 : LD 1, 1(5) ; Load parameter 'a' into R1
44 : ST 1, 4(5) ; Spill left operand at depth 0
45 : LD 1, 2(5) ; Load parameter 'b' into R1
46 : LD 2, 4(5) ; Restore left operand from depth 0
47 : SUB 1, 2, 1 ; left - right for equality check
48 : JEQ 1, 2(7) ; If R1 == 0, jump to true
49 : LDC 1, 0(0) ; false
50 : LDA 7, 1(7) ; skip setting true
51 : LDC 1, 1(0) ; true
52 : JEQ 1, 55(0) ; If condition is false, jump to ELSE
53 : LD 1, 1(5) ; Load parameter 'a' into R1
54 : LDA 7, 73(0) ; Skip ELSE block
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LDC 1, 1(0) ; Load integer-literal into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : ADD 1, 2, 1 ; R1 = left + right
60 : LDA 4, 5(5) ; Recompute callee base from caller size
61 : ST 1, 1(4) ; Store argument 0 in callee frame
62 : LD 1, 2(5) ; Load parameter 'b' into R1
63 : LDA 4, 5(5) ; Recompute callee base from caller size
64 : ST 1, 2(4) ; Store argument 1 in callee frame
65 : LDA 4, 5(5) ; Recompute callee base from caller size
66 : LDA 6, 70(0) ; Return address
67 : ST 6, 0(4) ; Store return address into callee frame
68 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
69 : LDA 7, 35(0) ; Call add_till_n
70 : LD 1, 3(5) ; Load callee result into R1
71 : LDC 2, 5(0) ; Callee frame size
72 : SUB 5, 5, 2 ; Pop back to caller
73 : ST 1, 3(5) ; Store function result into frame return slot
74 : LD 6, 0(5) ; Load return address
75 : LDA 7, 0(6) ; Return to caller
