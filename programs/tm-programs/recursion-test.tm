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
15 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
16 : LDA 4, 5(5) ; Callee base for arg copy
17 : LD 1, 4(5) ; Load staged arg 0 from caller temp
18 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
19 : LD 1, 2(5) ; Load parameter 'b' into R1
20 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
21 : LDA 4, 5(5) ; Callee base for arg copy
22 : LD 1, 4(5) ; Load staged arg 1 from caller temp
23 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
24 : LDA 4, 5(5) ; Callee base for call
25 : LDA 6, 29(0) ; Return address
26 : ST 6, 0(4) ; Store return in callee frame
27 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
28 : LDA 7, 36(0) ; Call add_till_n
29 : LD 1, 3(5) ; Load callee result into R1
30 : LDC 2, 5(0) ; Callee frame size
31 : SUB 5, 5, 2 ; Pop callee frame
32 : ST 1, 3(5) ; Store result into caller’s frame
33 : LD 1, 3(5) ; Load main return value into R1
34 : LD 6, 0(5) ; Load main return address
35 : LDA 7, 0(6) ; Return from main
36 : LD 1, 1(5) ; Load parameter 'a' into R1
37 : LDA 4, 3(5) ; Callee base for built-in print
38 : LDA 6, 42(0) ; Return address
39 : ST 6, 0(4) ; Store return address in callee frame
40 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
41 : LDA 7, 11(0) ; Call built-in print
42 : LDC 2, 3(0) ; Callee frame size (print)
43 : SUB 5, 5, 2 ; Pop back to caller
44 : LD 1, 1(5) ; Load parameter 'a' into R1
45 : ST 1, 4(5) ; Spill left operand at depth 0
46 : LD 1, 2(5) ; Load parameter 'b' into R1
47 : LD 2, 4(5) ; Restore left operand from depth 0
48 : SUB 1, 2, 1 ; left - right for equality check
49 : JEQ 1, 2(7) ; If R1 == 0, jump to true
50 : LDC 1, 0(0) ; false
51 : LDA 7, 1(7) ; skip setting true
52 : LDC 1, 1(0) ; true
53 : JEQ 1, 56(0) ; If condition is false, jump to ELSE
54 : LD 1, 1(5) ; Load parameter 'a' into R1
55 : LDA 7, 78(0) ; Skip ELSE block
56 : LD 1, 1(5) ; Load parameter 'a' into R1
57 : ST 1, 4(5) ; Spill left operand at depth 0
58 : LDC 1, 1(0) ; Load integer-literal into R1
59 : LD 2, 4(5) ; Restore left operand from depth 0
60 : ADD 1, 2, 1 ; R1 = left + right
61 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2)
62 : LDA 4, 5(5) ; Callee base for arg copy
63 : LD 1, 4(5) ; Load staged arg 0 from caller temp
64 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
65 : LD 1, 2(5) ; Load parameter 'b' into R1
66 : ST 1, 4(5) ; Stage arg 1 in caller temp (P+2)
67 : LDA 4, 5(5) ; Callee base for arg copy
68 : LD 1, 4(5) ; Load staged arg 1 from caller temp
69 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
70 : LDA 4, 5(5) ; Callee base for call
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
74 : LDA 7, 36(0) ; Call add_till_n
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 5(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop callee frame
78 : ST 1, 3(5) ; Store function result into frame return slot
79 : LD 6, 0(5) ; Load return address
80 : LDA 7, 0(6) ; Return to caller
