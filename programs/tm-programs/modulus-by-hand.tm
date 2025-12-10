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
14 : LD 1, 1(5) ; Load parameter 'm' into R1
15 : ST 1, 4(5) ; Spill left operand at depth 0
16 : LD 1, 2(5) ; Load parameter 'n' into R1
17 : LD 2, 4(5) ; Restore left operand from depth 0
18 : DIV 1, 2, 1 ; R1 = left / right
19 : LDA 4, 4(5) ; Recompute callee base from caller size
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return address in callee frame
22 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
23 : LDA 7, 11(0) ; Call built-in print
24 : LDC 2, 3(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop back to caller
26 : LD 1, 1(5) ; Load parameter 'm' into R1
27 : LDA 4, 4(5) ; Recompute callee base from caller size
28 : ST 1, 1(4) ; Store argument 0 in callee frame
29 : LD 1, 2(5) ; Load parameter 'n' into R1
30 : LDA 4, 4(5) ; Recompute callee base from caller size
31 : ST 1, 2(4) ; Store argument 1 in callee frame
32 : LDA 4, 4(5) ; Recompute callee base from caller size
33 : LDA 6, 37(0) ; Return address
34 : ST 6, 0(4) ; Store return address into callee frame
35 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
36 : LDA 7, 47(0) ; Call mod
37 : LD 1, 3(5) ; Load callee result into R1
38 : LDC 2, 5(0) ; Callee frame size
39 : SUB 5, 5, 2 ; Pop back to caller
40 : ST 1, 3(5) ; Store result into caller’s return slot
41 : LDC 5, 3(0) ; Anchor R5 to main frame base (DMEM[N+1])
42 : ST 1, 3(5) ; Store final result into MAIN frame's return slot
43 : LDC 5, 3(0) ; Reset R5 to main frame base (DMEM[N+1])
44 : LD 1, 3(5) ; Load main return value into R1
45 : LD 6, 0(5) ; Load root return address from main frame
46 : LDA 7, 0(6) ; Return from main to runtime epilogue
47 : LD 1, 1(5) ; Load parameter 'm' into R1
48 : ST 1, 4(5) ; Spill left operand at depth 0
49 : LD 1, 2(5) ; Load parameter 'n' into R1
50 : LD 2, 4(5) ; Restore left operand from depth 0
51 : SUB 1, 2, 1 ; left - right for less-than check
52 : JLT 1, 2(7) ; If R1 < 0, jump to true
53 : LDC 1, 0(0) ; false
54 : LDA 7, 1(7) ; skip setting true
55 : LDC 1, 1(0) ; true
56 : JEQ 1, 59(0) ; If condition is false, jump to ELSE
57 : LD 1, 1(5) ; Load parameter 'm' into R1
58 : LDA 7, 77(0) ; Skip ELSE block
59 : LD 1, 1(5) ; Load parameter 'm' into R1
60 : ST 1, 4(5) ; Spill left operand at depth 0
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : LD 2, 4(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; R1 = left - right
64 : LDA 4, 5(5) ; Recompute callee base from caller size
65 : ST 1, 1(4) ; Store argument 0 in callee frame
66 : LD 1, 2(5) ; Load parameter 'n' into R1
67 : LDA 4, 5(5) ; Recompute callee base from caller size
68 : ST 1, 2(4) ; Store argument 1 in callee frame
69 : LDA 4, 5(5) ; Recompute callee base from caller size
70 : LDA 6, 74(0) ; Return address
71 : ST 6, 0(4) ; Store return address into callee frame
72 : ADD 5, 4, 0 ; Push callee frame (R5 := callee base)
73 : LDA 7, 47(0) ; Call mod
74 : LD 1, 3(5) ; Load callee result into R1
75 : LDC 2, 5(0) ; Callee frame size
76 : SUB 5, 5, 2 ; Pop back to caller
77 : ST 1, 3(5) ; Store function result into frame return slot
78 : LD 6, 0(5) ; Load return address
79 : LDA 7, 0(6) ; Return to caller
