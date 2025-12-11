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
11 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
12 : LDC 1, 2(0) ; Load integer-literal into R1
13 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
14 : LDA 4, 6(5) ; Compute future callee base from caller size
15 : LD 2, 4(5) ; Load staged arg 0 from caller frame
16 : ST 2, 1(4) ; Store arg 0 into callee frame
17 : LD 2, 5(5) ; Load staged arg 1 from caller frame
18 : ST 2, 2(4) ; Store arg 1 into callee frame
19 : LDA 6, 23(0) ; Return address
20 : ST 6, 0(4) ; Store return in callee frame
21 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
22 : LDA 7, 75(0) ; Call MOD
23 : LD 1, 3(5) ; Load callee result into R1
24 : LDC 2, 6(0) ; Callee frame size
25 : SUB 5, 5, 2 ; Pop callee frame
26 : ST 1, 2(5) ; Spill left operand at depth 0
27 : LDC 1, 3(0) ; Load integer-literal into R1
28 : LD 2, 2(5) ; Restore left operand from depth 0
29 : MUL 1, 2, 1 ; R1 = left * right
30 : ST 1, 2(5) ; Spill left operand at depth 0
31 : LDC 1, 4(0) ; Load integer-literal into R1
32 : LD 2, 2(5) ; Restore left operand from depth 0
33 : SUB 1, 2, 1 ; left - right for less-than check
34 : JLT 1, 2(7) ; If R1 < 0, jump to true
35 : LDC 1, 0(0) ; false
36 : LDA 7, 1(7) ; skip setting true
37 : LDC 1, 1(0) ; true
38 : ST 1, 2(5) ; Spill left operand at depth 0
39 : LDC 1, 5(0) ; Load integer-literal into R1
40 : ST 1, 4(5) ; Stage arg 0 in caller frame outgoing area
41 : LDC 1, 3(0) ; Load integer-literal into R1
42 : ST 1, 5(5) ; Stage arg 1 in caller frame outgoing area
43 : LDA 4, 6(5) ; Compute future callee base from caller size
44 : LD 2, 4(5) ; Load staged arg 0 from caller frame
45 : ST 2, 1(4) ; Store arg 0 into callee frame
46 : LD 2, 5(5) ; Load staged arg 1 from caller frame
47 : ST 2, 2(4) ; Store arg 1 into callee frame
48 : LDA 6, 52(0) ; Return address
49 : ST 6, 0(4) ; Store return in callee frame
50 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
51 : LDA 7, 75(0) ; Call MOD
52 : LD 1, 3(5) ; Load callee result into R1
53 : LDC 2, 6(0) ; Callee frame size
54 : SUB 5, 5, 2 ; Pop callee frame
55 : ST 1, 3(5) ; Spill left operand at depth 1
56 : LDC 1, 2(0) ; Load integer-literal into R1
57 : LD 2, 3(5) ; Restore left operand from depth 1
58 : MUL 1, 2, 1 ; R1 = left * right
59 : ST 1, 3(5) ; Spill left operand at depth 1
60 : LDC 1, 5(0) ; Load integer-literal into R1
61 : LD 2, 3(5) ; Restore left operand from depth 1
62 : SUB 1, 2, 1 ; left - right for less-than check
63 : JLT 1, 2(7) ; If R1 < 0, jump to true
64 : LDC 1, 0(0) ; false
65 : LDA 7, 1(7) ; skip setting true
66 : LDC 1, 1(0) ; true
67 : LDC 2, 1(0) ; Load 1 into R2
68 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
69 : LD 2, 2(5) ; Restore left operand from depth 0
70 : ADD 1, 2, 1 ; R1 = left OR right
71 : ST 1, 1(5) ; Store result into current frame's return slot
72 : LD 1, 1(5) ; Load main return value into R1
73 : LD 6, 0(5) ; Load main return address
74 : LDA 7, 0(6) ; Return from main
75 : LD 1, 1(5) ; Load parameter 'm' into R1
76 : ST 1, 4(5) ; Spill left operand at depth 0
77 : LD 1, 1(5) ; Load parameter 'm' into R1
78 : ST 1, 5(5) ; Spill left operand at depth 1
79 : LD 1, 2(5) ; Load parameter 'n' into R1
80 : LD 2, 5(5) ; Restore left operand from depth 1
81 : DIV 1, 2, 1 ; R1 = left / right
82 : ST 1, 5(5) ; Spill left operand at depth 1
83 : LD 1, 2(5) ; Load parameter 'n' into R1
84 : LD 2, 5(5) ; Restore left operand from depth 1
85 : MUL 1, 2, 1 ; R1 = left * right
86 : LD 2, 4(5) ; Restore left operand from depth 0
87 : SUB 1, 2, 1 ; R1 = left - right
88 : ST 1, 3(5) ; Store function result into frame return slot
89 : LD 6, 0(5) ; Load return address
90 : LDA 7, 0(6) ; Return to caller
