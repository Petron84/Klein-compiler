0 : LDC 5, 2(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LD 2, 1(0) ; Load CLI arg 1 into R2
4 : ST 2, 1(5) ; Store arg 1 into main frame parameter slot
5 : LDA 6, 2(7) ; Calculate return address (PC + 2)
6 : ST 6, 0(5) ; Store return address in main frame
7 : LDA 7, 13(0) ; Branch to main function
8 : OUT 1, 0, 0 ; Return/print result from main in R1
9 : HALT 0, 0, 0 ; Terminate program
10 : OUT 1, 0, 0 ; Hardcoded print: output R1
11 : LD 6, 0(5) ; Load return address from current frame
12 : LDA 7, 0(6) ; Jump back to caller
13 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
14 : ST 1, 3(5) ; Spill left operand at depth 0
15 : LDC 1, 1(0) ; Load integer-literal into R1
16 : LD 2, 3(5) ; Restore left operand from depth 0
17 : SUB 1, 2, 1 ; left - right for less-than check
18 : JLT 1, 2(7) ; If R1 < 0, jump to true
19 : LDC 1, 0(0) ; false
20 : LDA 7, 1(7) ; skip setting true
21 : LDC 1, 1(0) ; true
22 : JEQ 1, 26(0) ; If condition is false, jump to ELSE
23 : LDC 1, 0(0) ; Load integer-literal into R1
24 : ST 1, 2(5) ; Store result into current frame's return slot
25 : LDA 7, 51(0) ; Skip ELSE block
26 : LDC 1, 1(0) ; Load integer-literal into R1
27 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
28 : ST 1, 1(2) ; Store argument 0 in callee
29 : LD 1, 1(5) ; Load parameter 'elementWanted' into R1
30 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
31 : ST 1, 2(2) ; Store argument 1 in callee
32 : LDC 1, 0(0) ; Load integer-literal into R1
33 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
34 : ST 1, 3(2) ; Store argument 2 in callee
35 : LDC 1, 1(0) ; Load integer-literal into R1
36 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
37 : ST 1, 4(2) ; Store argument 3 in callee
38 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
39 : LDA 6, 45(0) ; Return address
40 : ST 6, 0(2) ; Store return in callee frame
41 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
42 : LDC 3, 7(0) ; Callee frame size
43 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
44 : LDA 7, 54(0) ; Call addNext
45 : LD 1, 5(5) ; Load callee result into R1
46 : LDC 2, 7(0) ; Callee frame size
47 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
48 : LDC 3, 4(0) ; Caller frame size
49 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
50 : ST 1, 2(5) ; Store result into caller’s frame
51 : LD 1, 2(5) ; Load main return value into R1
52 : LD 6, 0(5) ; Load main return address
53 : LDA 7, 0(6) ; Return from main
54 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
55 : ST 1, 6(5) ; Spill left operand at depth 0
56 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
57 : LD 2, 6(5) ; Restore left operand from depth 0
58 : SUB 1, 2, 1 ; left - right for equality check
59 : JEQ 1, 2(7) ; If R1 == 0, jump to true
60 : LDC 1, 0(0) ; false
61 : LDA 7, 1(7) ; skip setting true
62 : LDC 1, 1(0) ; true
63 : JEQ 1, 66(0) ; If condition is false, jump to ELSE
64 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
65 : LDA 7, 98(0) ; Skip ELSE block
66 : LD 1, 1(5) ; Load parameter 'currentElement' into R1
67 : ST 1, 6(5) ; Spill left operand at depth 0
68 : LDC 1, 1(0) ; Load integer-literal into R1
69 : LD 2, 6(5) ; Restore left operand from depth 0
70 : ADD 1, 2, 1 ; R1 = left + right
71 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
72 : ST 1, 1(2) ; Store argument 0 in callee
73 : LD 1, 2(5) ; Load parameter 'elementWanted' into R1
74 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
75 : ST 1, 2(2) ; Store argument 1 in callee
76 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
77 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
78 : ST 1, 3(2) ; Store argument 2 in callee
79 : LD 1, 3(5) ; Load parameter 'previousSum' into R1
80 : ST 1, 6(5) ; Spill left operand at depth 0
81 : LD 1, 4(5) ; Load parameter 'currentSum' into R1
82 : LD 2, 6(5) ; Restore left operand from depth 0
83 : ADD 1, 2, 1 ; R1 = left + right
84 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
85 : ST 1, 4(2) ; Store argument 3 in callee
86 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
87 : LDA 6, 93(0) ; Return address
88 : ST 6, 0(2) ; Store return in callee frame
89 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
90 : LDC 3, 7(0) ; Callee frame size
91 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
92 : LDA 7, 54(0) ; Call addNext
93 : LD 1, 5(5) ; Load callee result into R1
94 : LDC 2, 7(0) ; Callee frame size
95 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
96 : LDC 3, 7(0) ; Caller frame size
97 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
98 : ST 1, 5(5) ; Store function result into frame return slot
99 : LD 6, 0(5) ; Load return address
100 : LDA 7, 0(6) ; Return to caller
