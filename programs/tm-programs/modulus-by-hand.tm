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
19 : LDA 4, 3(5) ; Callee base for built-in print
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return address in callee frame
22 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
23 : LDA 7, 11(0) ; Call built-in print
24 : LDC 2, 3(0) ; Callee frame size (print)
25 : SUB 5, 5, 2 ; Pop back to caller
26 : LD 1, 1(5) ; Load parameter 'm' into R1
27 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
28 : LD 1, 2(5) ; Load parameter 'n' into R1
29 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
30 : LDA 4, 6(5) ; Callee base for arg copy
31 : LD 1, 4(5) ; Load staged arg 0 from caller temp
32 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
33 : LD 1, 5(5) ; Load staged arg 1 from caller temp
34 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
35 : LDA 6, 39(0) ; Return address
36 : ST 6, 0(4) ; Store return in callee frame
37 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
38 : LDA 7, 46(0) ; Call mod
39 : LD 1, 3(5) ; Load callee result into R1
40 : LDC 2, 6(0) ; Callee frame size
41 : SUB 5, 5, 2 ; Pop callee frame
42 : ST 1, 3(5) ; Store result into caller’s frame
43 : LD 1, 3(5) ; Load main return value into R1
44 : LD 6, 0(5) ; Load main return address
45 : LDA 7, 0(6) ; Return from main
46 : LD 1, 1(5) ; Load parameter 'm' into R1
47 : ST 1, 4(5) ; Spill left operand at depth 0
48 : LD 1, 2(5) ; Load parameter 'n' into R1
49 : LD 2, 4(5) ; Restore left operand from depth 0
50 : SUB 1, 2, 1 ; left - right for less-than check
51 : JLT 1, 2(7) ; If R1 < 0, jump to true
52 : LDC 1, 0(0) ; false
53 : LDA 7, 1(7) ; skip setting true
54 : LDC 1, 1(0) ; true
55 : JEQ 1, 58(0) ; If condition is false, jump to ELSE
56 : LD 1, 1(5) ; Load parameter 'm' into R1
57 : LDA 7, 78(0) ; Skip ELSE block
58 : LD 1, 1(5) ; Load parameter 'm' into R1
59 : ST 1, 4(5) ; Spill left operand at depth 0
60 : LD 1, 2(5) ; Load parameter 'n' into R1
61 : LD 2, 4(5) ; Restore left operand from depth 0
62 : SUB 1, 2, 1 ; R1 = left - right
63 : ST 1, 4(5) ; Stage arg 0 in caller temp (P+2+i)
64 : LD 1, 2(5) ; Load parameter 'n' into R1
65 : ST 1, 5(5) ; Stage arg 1 in caller temp (P+2+i)
66 : LDA 4, 6(5) ; Callee base for arg copy
67 : LD 1, 4(5) ; Load staged arg 0 from caller temp
68 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
69 : LD 1, 5(5) ; Load staged arg 1 from caller temp
70 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
71 : LDA 6, 75(0) ; Return address
72 : ST 6, 0(4) ; Store return in callee frame
73 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
74 : LDA 7, 46(0) ; Call mod
75 : LD 1, 3(5) ; Load callee result into R1
76 : LDC 2, 6(0) ; Callee frame size
77 : SUB 5, 5, 2 ; Pop callee frame
78 : ST 1, 3(5) ; Store function result into frame return slot
79 : LD 6, 0(5) ; Load return address
80 : LDA 7, 0(6) ; Return to caller
