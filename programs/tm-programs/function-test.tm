0 : LDC 5, 4(0) ; Set DMEM pointer (R5) to main stack frame base
1 : ADD 4, 5, 0 ; Set top of caller frame (R4 := R5)
2 : LD 2, 1(0) ; Load CLI arg 1 into R2
3 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
4 : LD 2, 2(0) ; Load CLI arg 2 into R2
5 : ST 2, 2(5) ; Store arg 2 into main frame parameter slot
6 : LD 2, 3(0) ; Load CLI arg 3 into R2
7 : ST 2, 3(5) ; Store arg 3 into main frame parameter slot
8 : LDA 6, 2(7) ; Calculate return address (PC + 2)
9 : ST 6, 0(5) ; Store return address in main frame
10 : LDA 7, 16(0) ; Branch to main function
11 : OUT 1, 0, 0 ; Return/print result from main in R1
12 : HALT 0, 0, 0 ; Terminate program
13 : OUT 1, 0, 0 ; Hardcoded print: output R1
14 : LD 6, 0(5) ; Load return address from current frame
15 : LDA 7, 0(6) ; Jump back to caller
16 : LD 1, 1(5) ; Load parameter 'a' into R1
17 : LDA 4, 4(5) ; Recompute callee base from callee size
18 : ST 1, 1(4) ; Store argument 0 in callee
19 : LDA 4, 4(5) ; Recompute callee base from callee size
20 : LDA 6, 24(0) ; Return address
21 : ST 6, 0(4) ; Store return in callee frame
22 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
23 : LDA 7, 94(0) ; Call isZero
24 : LD 1, 2(5) ; Load callee result into R1
25 : LDC 2, 4(0) ; Callee frame size
26 : SUB 5, 5, 2 ; Pop callee frame
27 : JEQ 1, 54(0) ; If condition is false, jump to ELSE
28 : LD 1, 2(5) ; Load parameter 'b' into R1
29 : LDA 4, 4(5) ; Recompute callee base from callee size
30 : ST 1, 1(4) ; Store argument 0 in callee
31 : LDA 4, 4(5) ; Recompute callee base from callee size
32 : LDA 6, 36(0) ; Return address
33 : ST 6, 0(4) ; Store return in callee frame
34 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
35 : LDA 7, 82(0) ; Call isPositive
36 : LD 1, 2(5) ; Load callee result into R1
37 : LDC 2, 4(0) ; Callee frame size
38 : SUB 5, 5, 2 ; Pop callee frame
39 : JEQ 1, 47(0) ; If condition is false, jump to ELSE
40 : LD 1, 2(5) ; Load parameter 'b' into R1
41 : ST 1, 5(5) ; Spill left operand at depth 0
42 : LD 1, 3(5) ; Load parameter 'c' into R1
43 : LD 2, 5(5) ; Restore left operand from depth 0
44 : ADD 1, 2, 1 ; R1 = left + right
45 : ST 1, 4(5) ; Store result into current frame's return slot
46 : LDA 7, 53(0) ; Skip ELSE block
47 : LD 1, 3(5) ; Load parameter 'c' into R1
48 : ST 1, 5(5) ; Spill left operand at depth 0
49 : LD 1, 2(5) ; Load parameter 'b' into R1
50 : LD 2, 5(5) ; Restore left operand from depth 0
51 : SUB 1, 2, 1 ; R1 = left - right
52 : ST 1, 4(5) ; Store result into current frame's return slot
53 : LDA 7, 79(0) ; Skip ELSE block
54 : LD 1, 3(5) ; Load parameter 'c' into R1
55 : LDA 4, 4(5) ; Recompute callee base from callee size
56 : ST 1, 1(4) ; Store argument 0 in callee
57 : LDA 4, 4(5) ; Recompute callee base from callee size
58 : LDA 6, 62(0) ; Return address
59 : ST 6, 0(4) ; Store return in callee frame
60 : ADD 5, 4, 0 ; Push callee frame (FP := callee base)
61 : LDA 7, 82(0) ; Call isPositive
62 : LD 1, 2(5) ; Load callee result into R1
63 : LDC 2, 4(0) ; Callee frame size
64 : SUB 5, 5, 2 ; Pop callee frame
65 : JEQ 1, 73(0) ; If condition is false, jump to ELSE
66 : LD 1, 1(5) ; Load parameter 'a' into R1
67 : ST 1, 5(5) ; Spill left operand at depth 0
68 : LD 1, 3(5) ; Load parameter 'c' into R1
69 : LD 2, 5(5) ; Restore left operand from depth 0
70 : MUL 1, 2, 1 ; R1 = left * right
71 : ST 1, 4(5) ; Store result into current frame's return slot
72 : LDA 7, 79(0) ; Skip ELSE block
73 : LD 1, 1(5) ; Load parameter 'a' into R1
74 : ST 1, 5(5) ; Spill left operand at depth 0
75 : LD 1, 2(5) ; Load parameter 'b' into R1
76 : LD 2, 5(5) ; Restore left operand from depth 0
77 : ADD 1, 2, 1 ; R1 = left + right
78 : ST 1, 4(5) ; Store result into current frame's return slot
79 : LD 1, 4(5) ; Load main return value into R1
80 : LD 6, 0(5) ; Load main return address
81 : LDA 7, 0(6) ; Return from main
82 : LDC 1, 0(0) ; Load integer-literal into R1
83 : ST 1, 3(5) ; Spill left operand at depth 0
84 : LD 1, 1(5) ; Load parameter 'x' into R1
85 : LD 2, 3(5) ; Restore left operand from depth 0
86 : SUB 1, 2, 1 ; left - right for less-than check
87 : JLT 1, 2(7) ; If R1 < 0, jump to true
88 : LDC 1, 0(0) ; false
89 : LDA 7, 1(7) ; skip setting true
90 : LDC 1, 1(0) ; true
91 : ST 1, 2(5) ; Store function result into frame return slot
92 : LD 6, 0(5) ; Load return address
93 : LDA 7, 0(6) ; Return to caller
94 : LD 1, 1(5) ; Load parameter 'x' into R1
95 : ST 1, 3(5) ; Spill left operand at depth 0
96 : LDC 1, 0(0) ; Load integer-literal into R1
97 : LD 2, 3(5) ; Restore left operand from depth 0
98 : SUB 1, 2, 1 ; left - right for equality check
99 : JEQ 1, 2(7) ; If R1 == 0, jump to true
100 : LDC 1, 0(0) ; false
101 : LDA 7, 1(7) ; skip setting true
102 : LDC 1, 1(0) ; true
103 : ST 1, 2(5) ; Store function result into frame return slot
104 : LD 6, 0(5) ; Load return address
105 : LDA 7, 0(6) ; Return to caller
