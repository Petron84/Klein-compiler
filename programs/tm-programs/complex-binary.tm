0 : LDC 5, 1(0) ; Set DMEM pointer (R5) to main stack frame base
1 : LDC 2, 4(0) ; Main frame size
2 : ADD 4, 5, 2 ; Initialize stack-top (R4) to end of main frame
3 : LDA 6, 2(7) ; Calculate return address (PC + 2)
4 : ST 6, 0(5) ; Store return address in main frame
5 : LDA 7, 11(0) ; Branch to main function
6 : OUT 1, 0, 0 ; Return/print result from main in R1
7 : HALT 0, 0, 0 ; Terminate program
8 : OUT 1, 0, 0 ; Hardcoded print: output R1
9 : LD 6, 0(5) ; Load return address from current frame
10 : LDA 7, 0(6) ; Jump back to caller
11 : LDC 1, 2(0) ; Load integer-literal into R1
12 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
13 : ST 1, 1(2) ; Store argument 0 in callee
14 : LDC 1, 2(0) ; Load integer-literal into R1
15 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
16 : ST 1, 2(2) ; Store argument 1 in callee
17 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
18 : LDA 6, 24(0) ; Return address
19 : ST 6, 0(2) ; Store return in callee frame
20 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
21 : LDC 3, 6(0) ; Callee frame size
22 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
23 : LDA 7, 80(0) ; Call MOD
24 : LD 1, 3(5) ; Load callee result into R1
25 : LDC 2, 6(0) ; Callee frame size
26 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
27 : LDC 3, 4(0) ; Caller frame size
28 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
29 : ST 1, 2(5) ; Spill left operand at depth 0
30 : LDC 1, 3(0) ; Load integer-literal into R1
31 : LD 2, 2(5) ; Restore left operand from depth 0
32 : MUL 1, 2, 1 ; R1 = left * right
33 : ST 1, 2(5) ; Spill left operand at depth 0
34 : LDC 1, 4(0) ; Load integer-literal into R1
35 : LD 2, 2(5) ; Restore left operand from depth 0
36 : SUB 1, 2, 1 ; left - right for less-than check
37 : JLT 1, 2(7) ; If R1 < 0, jump to true
38 : LDC 1, 0(0) ; false
39 : LDA 7, 1(7) ; skip setting true
40 : LDC 1, 1(0) ; true
41 : ST 1, 2(5) ; Spill left operand at depth 0
42 : LDC 1, 5(0) ; Load integer-literal into R1
43 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
44 : ST 1, 1(2) ; Store argument 0 in callee
45 : LDC 1, 3(0) ; Load integer-literal into R1
46 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
47 : ST 1, 2(2) ; Store argument 1 in callee
48 : ADD 2, 4, 0 ; Future callee base from stack-top (R4)
49 : LDA 6, 55(0) ; Return address
50 : ST 6, 0(2) ; Store return in callee frame
51 : ADD 5, 2, 0 ; Push callee frame (FP := callee base)
52 : LDC 3, 6(0) ; Callee frame size
53 : ADD 4, 4, 3 ; Advance stack-top to end of callee frame
54 : LDA 7, 80(0) ; Call MOD
55 : LD 1, 3(5) ; Load callee result into R1
56 : LDC 2, 6(0) ; Callee frame size
57 : SUB 4, 4, 2 ; Pop stack-top pointer (remove callee frame)
58 : LDC 3, 4(0) ; Caller frame size
59 : SUB 5, 4, 3 ; Restore FP to caller base (top - caller_size)
60 : ST 1, 3(5) ; Spill left operand at depth 1
61 : LDC 1, 2(0) ; Load integer-literal into R1
62 : LD 2, 3(5) ; Restore left operand from depth 1
63 : MUL 1, 2, 1 ; R1 = left * right
64 : ST 1, 3(5) ; Spill left operand at depth 1
65 : LDC 1, 5(0) ; Load integer-literal into R1
66 : LD 2, 3(5) ; Restore left operand from depth 1
67 : SUB 1, 2, 1 ; left - right for less-than check
68 : JLT 1, 2(7) ; If R1 < 0, jump to true
69 : LDC 1, 0(0) ; false
70 : LDA 7, 1(7) ; skip setting true
71 : LDC 1, 1(0) ; true
72 : LDC 2, 1(0) ; Load 1 into R2
73 : SUB 1, 2, 1 ; Logical NOT: 1 - R1
74 : LD 2, 2(5) ; Restore left operand from depth 0
75 : ADD 1, 2, 1 ; R1 = left OR right
76 : ST 1, 1(5) ; Store result into current frame's return slot
77 : LD 1, 1(5) ; Load main return value into R1
78 : LD 6, 0(5) ; Load main return address
79 : LDA 7, 0(6) ; Return from main
80 : LD 1, 1(5) ; Load parameter 'm' into R1
81 : ST 1, 4(5) ; Spill left operand at depth 0
82 : LD 1, 1(5) ; Load parameter 'm' into R1
83 : ST 1, 5(5) ; Spill left operand at depth 1
84 : LD 1, 2(5) ; Load parameter 'n' into R1
85 : LD 2, 5(5) ; Restore left operand from depth 1
86 : DIV 1, 2, 1 ; R1 = left / right
87 : ST 1, 5(5) ; Spill left operand at depth 1
88 : LD 1, 2(5) ; Load parameter 'n' into R1
89 : LD 2, 5(5) ; Restore left operand from depth 1
90 : MUL 1, 2, 1 ; R1 = left * right
91 : LD 2, 4(5) ; Restore left operand from depth 0
92 : SUB 1, 2, 1 ; R1 = left - right
93 : ST 1, 3(5) ; Store function result into frame return slot
94 : LD 6, 0(5) ; Load return address
95 : LDA 7, 0(6) ; Return to caller
