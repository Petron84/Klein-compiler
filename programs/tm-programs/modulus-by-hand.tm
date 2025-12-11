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
14 : LD 1, 1(5) ; Load parameter 'm' into R1
15 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
16 : LD 1, 2(5) ; Load parameter 'n' into R1
17 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
18 : LDA 4, 6(5) ; Compute future callee base from caller size
19 : LD 2, 4(5) ; Load staged arg 0 from caller frame
20 : ST 2, 1(4) ; Store arg 0 into callee frame
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 11(0) ; Call built-in print
25 : LDC 2, 3(0) ; Callee frame size
26 : SUB 5, 5, 2 ; Pop callee frame
27 : LD 1, 1(5) ; Load parameter 'm' into R1
28 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
29 : LD 1, 2(5) ; Load parameter 'n' into R1
30 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
31 : LDA 4, 6(5) ; Compute future callee base from caller size
32 : LD 2, 4(5) ; Load staged arg 0 from caller frame
33 : ST 2, 1(4) ; Store arg 0 into callee frame
34 : LD 2, 5(5) ; Load staged arg 1 from caller frame
35 : ST 2, 2(4) ; Store arg 1 into callee frame
36 : LDA 6, 40(0) ; Return address
37 : ST 6, 0(4) ; Store return in callee frame
38 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
39 : LDA 7, 47(0) ; Call mod
40 : LD 1, 3(5) ; Load callee result into R1
41 : LDC 2, 5(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop callee frame
43 : ST 1, 3(5) ; Store result into caller’s frame
44 : LD 1, 3(5) ; Load main return value into R1
45 : LD 6, 0(5) ; Load main return address
46 : LDA 7, 0(6) ; Return from main
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
58 : LDA 7, 79(0) ; Skip ELSE block
59 : LD 1, 1(5) ; Load parameter 'm' into R1
60 : ST 1, 4(5) ; Spill left operand at depth 0
61 : LD 1, 2(5) ; Load parameter 'n' into R1
62 : LD 2, 4(5) ; Restore left operand from depth 0
63 : SUB 1, 2, 1 ; R1 = left - right
64 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
65 : LD 1, 2(5) ; Load parameter 'n' into R1
66 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
67 : LDA 4, 7(5) ; Compute future callee base from caller size
68 : LD 2, 5(5) ; Load staged arg 0 from caller frame
69 : ST 2, 1(4) ; Store arg 0 into callee frame
70 : LD 2, 6(5) ; Load staged arg 1 from caller frame
71 : ST 2, 2(4) ; Store arg 1 into callee frame
72 : LDA 6, 76(0) ; Return address
73 : ST 6, 0(4) ; Store return in callee frame
74 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
75 : LDA 7, 47(0) ; Call mod
76 : LD 1, 3(5) ; Load callee result into R1
77 : LDC 2, 5(0) ; Callee frame size
78 : SUB 5, 5, 2 ; Pop callee frame
79 : ST 1, 3(5) ; Store function result into frame return slot
80 : LD 6, 0(5) ; Load return address
81 : LDA 7, 0(6) ; Return to caller
