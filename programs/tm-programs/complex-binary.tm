0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LDA 6, 2(7) ; Calculate return address (PC + 2)
3 : ST 6, 0(5) ; Store return address in main frame
4 : LDA 7, 10(0) ; Branch to main function
5 : OUT 1, 0, 0 ; Return/print result from main in R1
6 : HALT 0, 0, 0 ; Terminate program
7 : OUT 1, 0, 0 ; Hardcoded print: output R1
8 : LD 6, 0(5) ; Load return address from current frame
9 : LDA 7, 0(6) ; Jump back to caller
10 : LDC 1, 2(0) ; Load integer-literal into R1
11 : ST 1, 2(5) ; Stage arg 0 in caller temp (P+2)
12 : LDA 4, 6(5) ; Callee base for arg copy
13 : LD 1, 2(5) ; Load staged arg 0 from caller temp
14 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
15 : LDC 1, 2(0) ; Load integer-literal into R1
16 : ST 1, 2(5) ; Stage arg 1 in caller temp (P+2)
17 : LDA 4, 6(5) ; Callee base for arg copy
18 : LD 1, 2(5) ; Load staged arg 1 from caller temp
19 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
20 : LDA 4, 6(5) ; Callee base for call
21 : LDA 6, 25(0) ; Return address
22 : ST 6, 0(4) ; Store return in callee frame
23 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
24 : LDA 7, 79(0) ; Call MOD
25 : LD 1, 3(5) ; Load callee result into R1
26 : LDC 2, 6(0) ; Callee frame size
27 : SUB 5, 5, 2 ; Pop callee frame
28 : ST 1, 2(5) ; Spill left operand at depth 0
29 : LDC 1, 3(0) ; Load integer-literal into R1
30 : LD 2, 2(5) ; Restore left operand from depth 0
31 : MUL 1, 2, 1 ; R1 = left * right
32 : ST 1, 2(5) ; Spill left operand at depth 0
33 : LDC 1, 4(0) ; Load integer-literal into R1
34 : LD 2, 2(5) ; Restore left operand from depth 0
35 : SUB 1, 2, 1 ; left - right for less-than check
36 : JLT 1, 2(7) ; If R1 < 0, jump to true
37 : LDC 1, 0(0) ; false
38 : LDA 7, 1(7) ; skip setting true
39 : LDC 1, 1(0) ; true
40 : ST 1, 2(5) ; Spill left operand at depth 0
41 : LDC 1, 5(0) ; Load integer-literal into R1
42 : ST 1, 2(5) ; Stage arg 0 in caller temp (P+2)
43 : LDA 4, 6(5) ; Callee base for arg copy
44 : LD 1, 2(5) ; Load staged arg 0 from caller temp
45 : ST 1, 1(4) ; Copy arg 0 into callee param slot 1
46 : LDC 1, 3(0) ; Load integer-literal into R1
47 : ST 1, 2(5) ; Stage arg 1 in caller temp (P+2)
48 : LDA 4, 6(5) ; Callee base for arg copy
49 : LD 1, 2(5) ; Load staged arg 1 from caller temp
50 : ST 1, 2(4) ; Copy arg 1 into callee param slot 2
51 : LDA 4, 6(5) ; Callee base for call
52 : LDA 6, 56(0) ; Return address
53 : ST 6, 0(4) ; Store return in callee frame
54 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
55 : LDA 7, 79(0) ; Call MOD
56 : LD 1, 3(5) ; Load callee result into R1
57 : LDC 2, 6(0) ; Callee frame size
58 : SUB 5, 5, 2 ; Pop callee frame
59 : ST 1, 3(5) ; Spill left operand at depth 1
60 : LDC 1, 2(0) ; Load integer-literal into R1
61 : LD 2, 3(5) ; Restore left operand from depth 1
62 : MUL 1, 2, 1 ; R1 = left * right
63 : ST 1, 3(5) ; Spill left operand at depth 1
64 : LDC 1, 5(0) ; Load integer-literal into R1
65 : LD 2, 3(5) ; Restore left operand from depth 1
66 : SUB 1, 2, 1 ; left - right for less-than check
67 : JLT 1, 2(7) ; If R1 < 0, jump to true
68 : LDC 1, 0(0) ; false
69 : LDA 7, 1(7) ; skip setting true
70 : LDC 1, 1(0) ; true
71 : LDC 2, 1(0) ; Load 1 into R2
72 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
73 : LD 2, 2(5) ; Restore left operand from depth 0
74 : ADD 1, 2, 1 ; R1 = left OR right
75 : ST 1, 1(5) ; Store result into current frame's return slot
76 : LD 1, 1(5) ; Load main return value into R1
77 : LD 6, 0(5) ; Load main return address
78 : LDA 7, 0(6) ; Return from main
79 : LD 1, 1(5) ; Load parameter 'm' into R1
80 : ST 1, 4(5) ; Spill left operand at depth 0
81 : LD 1, 1(5) ; Load parameter 'm' into R1
82 : ST 1, 5(5) ; Spill left operand at depth 1
83 : LD 1, 2(5) ; Load parameter 'n' into R1
84 : LD 2, 5(5) ; Restore left operand from depth 1
85 : DIV 1, 2, 1 ; R1 = left / right
86 : ST 1, 5(5) ; Spill left operand at depth 1
87 : LD 1, 2(5) ; Load parameter 'n' into R1
88 : LD 2, 5(5) ; Restore left operand from depth 1
89 : MUL 1, 2, 1 ; R1 = left * right
90 : LD 2, 4(5) ; Restore left operand from depth 0
91 : SUB 1, 2, 1 ; R1 = left - right
92 : ST 1, 3(5) ; Store function result into frame return slot
93 : LD 6, 0(5) ; Load return address
94 : LDA 7, 0(6) ; Return to caller
