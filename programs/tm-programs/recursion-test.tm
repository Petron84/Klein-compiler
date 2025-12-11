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
14 : LD 1, 1(5) ; Load parameter 'a' into R1
15 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
16 : LD 1, 2(5) ; Load parameter 'b' into R1
17 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
18 : LDA 4, 6(5) ; Compute future callee base from caller size
19 : LD 2, 4(5) ; Load staged arg 0 from caller frame
20 : ST 2, 1(4) ; Store arg 0 into callee frame
21 : LD 2, 5(5) ; Load staged arg 1 from caller frame
22 : ST 2, 2(4) ; Store arg 1 into callee frame
23 : LDA 6, 27(0) ; Return address
24 : ST 6, 0(4) ; Store return in callee frame
25 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
26 : LDA 7, 34(0) ; Call add_till_n
27 : LD 1, 3(5) ; Load callee result into R1
28 : LDC 2, 5(0) ; Callee frame size
29 : SUB 5, 5, 2 ; Pop callee frame
30 : ST 1, 3(5) ; Store result into caller’s frame
31 : LD 1, 3(5) ; Load main return value into R1
32 : LD 6, 0(5) ; Load main return address
33 : LDA 7, 0(6) ; Return from main
34 : LDA 4, 7(5) ; Compute future callee base from caller size
35 : LD 2, 5(5) ; Load staged arg 0 from caller frame
36 : ST 2, 1(4) ; Store arg 0 into callee frame
37 : LDA 6, 41(0) ; Return address
38 : ST 6, 0(4) ; Store return in callee frame
39 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
40 : LDA 7, 11(0) ; Call built-in print
41 : LDC 2, 3(0) ; Callee frame size
42 : SUB 5, 5, 2 ; Pop callee frame
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
54 : LDA 7, 75(0) ; Skip ELSE block
55 : LD 1, 1(5) ; Load parameter 'a' into R1
56 : ST 1, 4(5) ; Spill left operand at depth 0
57 : LDC 1, 1(0) ; Load integer-literal into R1
58 : LD 2, 4(5) ; Restore left operand from depth 0
59 : ADD 1, 2, 1 ; R1 = left + right
60 : ST 1, 5(5) ; Stage arg 0 in caller frame outgoing area
61 : LD 1, 2(5) ; Load parameter 'b' into R1
62 : ST 1, 6(5) ; Stage arg 1 in caller frame outgoing area
63 : LDA 4, 7(5) ; Compute future callee base from caller size
64 : LD 2, 5(5) ; Load staged arg 0 from caller frame
65 : ST 2, 1(4) ; Store arg 0 into callee frame
66 : LD 2, 6(5) ; Load staged arg 1 from caller frame
67 : ST 2, 2(4) ; Store arg 1 into callee frame
68 : LDA 6, 72(0) ; Return address
69 : ST 6, 0(4) ; Store return in callee frame
70 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
71 : LDA 7, 34(0) ; Call add_till_n
72 : LD 1, 3(5) ; Load callee result into R1
73 : LDC 2, 5(0) ; Callee frame size
74 : SUB 5, 5, 2 ; Pop callee frame
75 : ST 1, 3(5) ; Store function result into frame return slot
76 : LD 6, 0(5) ; Load return address
77 : LDA 7, 0(6) ; Return to caller
